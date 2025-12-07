void ImageElement.PNGData.fixedHeight.getter()
{
  OUTLINED_FUNCTION_76();
  type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v4 = (v3 - v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_20_2();
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_10_2();
    if (v11)
    {
      *v4 = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_10_2();
      if (!v11)
      {
        sub_26A0E48F0(v9, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A11C1EC();
    }

    OUTLINED_FUNCTION_9_2();
  }

  OUTLINED_FUNCTION_75();
}

void ImageElement.PNGData.aspectRatio.getter()
{
  OUTLINED_FUNCTION_76();
  v19 = v0;
  v1 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1A0, &qword_26A427150);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v19;
  sub_26A0E48F0(v13, &qword_28036D1A0, &qword_26A427150);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v10, 1, v1) == 1)
    {
      *v5 = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v10, 1, v1) != 1)
      {
        sub_26A0E48F0(v10, &qword_28036D1A0, &qword_26A427150);
      }
    }

    else
    {
      sub_26A11C1EC();
    }

    sub_26A11C1EC();
    v14 = 0;
  }

  v17 = type metadata accessor for ImageElement.AspectRatio(0);
  __swift_storeEnumTagSinglePayload(v16, v14, 1, v17);
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.PNGData.init(_:darkModeData:imageStyle:aspectRatio:fixedWidth:fixedHeight:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6, char a7, char a8)
{
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v13, v14, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
  sub_26A4249C4();
  sub_26A0E4784(a1, a2);
  sub_26A10E794(a3, a4);
  return sub_26A0E48F0(a6, &qword_28036CBB8, &qword_26A4265C8);
}

uint64_t sub_26A11AEE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7, int a8)
{
  v72 = a8;
  v66 = a6;
  v67 = a7;
  v60 = a4;
  v65 = type metadata accessor for _ProtoImageElement.AspectRatio(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v64 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v15);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v69 = &v60 - v17;
  v68 = type metadata accessor for ImageElement.AspectRatio(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v63 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v61 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  v28 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_17();
  v62 = (v30 - v31);
  MEMORY[0x28223BE20](v32);
  v34 = &v60 - v33;
  v35 = *a1;
  v36 = *(a1 + 8);
  *a1 = a2;
  *(a1 + 8) = a3;
  sub_26A0E45C0(a2, a3);
  sub_26A0E4784(v35, v36);
  if (a5 >> 60 != 15)
  {
    v37 = *(a1 + 32);
    v38 = *(a1 + 40);
    v39 = v60;
    sub_26A0E45C0(v60, a5);
    sub_26A0E4784(v37, v38);
    *(a1 + 32) = v39;
    *(a1 + 40) = a5;
  }

  v73 = v66;
  sub_26A217AB0(&v70);
  v40 = v71;
  *(a1 + 16) = v70;
  *(a1 + 24) = v40;
  v41 = v67;
  v42 = v72;
  if (v67 != 2)
  {
    v43 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 44);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_12_1(v27);
    if (v44)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_12_1(v27);
      if (!v44)
      {
        sub_26A0E48F0(v27, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A11C1EC();
    }

    *v34 = v41 & 1;
    sub_26A0E48F0(a1 + v43, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_8_2();
    v45 = OUTLINED_FUNCTION_16_1();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v28);
  }

  if (v42 != 2)
  {
    v48 = *(type metadata accessor for _ProtoImageElement.DataMessage(0) + 40);
    v49 = v61;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_12_1(v49);
    if (v44)
    {
      v50 = v62;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_12_1(v49);
      if (!v44)
      {
        sub_26A0E48F0(v49, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      v50 = v62;
      sub_26A11C1EC();
    }

    *v50 = v42 & 1;
    sub_26A0E48F0(a1 + v48, &qword_28036D198, &qword_26A432940);
    OUTLINED_FUNCTION_8_2();
    v51 = OUTLINED_FUNCTION_16_1();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v28);
  }

  v54 = v69;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v54, 1, v68) == 1)
  {
    return sub_26A0E48F0(v54, &qword_28036CBB8, &qword_26A4265C8);
  }

  sub_26A11C1EC();
  sub_26A11C1EC();
  v56 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  sub_26A0E48F0(a1 + *(v56 + 36), &qword_28036D1A0, &qword_26A427150);
  sub_26A11C1EC();
  v57 = OUTLINED_FUNCTION_16_1();
  return __swift_storeEnumTagSinglePayload(v57, v58, v59, v65);
}

void ImageElement.PNGData.init(_:imageStyle:aspectRatio:fixedWidth:fixedHeight:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_25_2();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v9, v10, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
  OUTLINED_FUNCTION_22_3();
  sub_26A4249C4();
  sub_26A0E4784(v6, v4);
  OUTLINED_FUNCTION_27_2(v2);
  OUTLINED_FUNCTION_27_2(v0);
  OUTLINED_FUNCTION_75();
}

void ImageElement.PNGData.init(_:imageStyle:aspectRatio:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_25_2();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_19_1(xmmword_26A427140);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v9, v10, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
  OUTLINED_FUNCTION_22_3();
  sub_26A4249C4();
  sub_26A0E4784(v6, v4);
  OUTLINED_FUNCTION_27_2(v2);
  OUTLINED_FUNCTION_27_2(v0);
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.PNGData.hash(into:)(uint64_t a1)
{
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v1, v2, &protocol conformance descriptor for _ProtoImageElement.DataMessage);

  return sub_26A424B44();
}

uint64_t ImageElement.PNGData.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v0, v1, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A11B734(uint64_t a1)
{
  sub_26A425504();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  sub_26A11C064(&qword_28036D1B0, type metadata accessor for _ProtoImageElement.DataMessage, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
  sub_26A424B44();
  return sub_26A425554();
}

void static ImageElement.pngData(_:darkModeData:imageStyle:aspectRatio:fixedWidth:fixedHeight:idioms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_76();
  v50 = v21;
  v51 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v53 = v33;
  v52 = a21;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v34);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v35);
  v37 = &v49 - v36;
  v38 = type metadata accessor for ImageElement.PNGData(0);
  v39 = OUTLINED_FUNCTION_41(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  v42 = v41 - v40;
  LOBYTE(v24) = *v24;
  sub_26A10FD9C();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  v56 = v32;
  v57 = v30;
  v58 = v28;
  v59 = v26;
  v60 = v24;
  v61 = v50;
  v62 = v51;
  v63 = v37;
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v43, v44, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
  OUTLINED_FUNCTION_22_3();
  sub_26A4249C4();
  sub_26A0E48F0(v37, &qword_28036CBB8, &qword_26A4265C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  type metadata accessor for ImageElement.SourceType(0);
  OUTLINED_FUNCTION_21_2();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_4_4(v45, xmmword_26A426410);
  sub_26A11C140();
  swift_storeEnumTagMultiPayload();
  v64 = v45;
  type metadata accessor for _ProtoImageElement(0);
  v54 = &v64;
  v55 = v52;
  OUTLINED_FUNCTION_7_2();
  sub_26A11C064(v46, v47, &protocol conformance descriptor for _ProtoImageElement);
  sub_26A4249C4();
  OUTLINED_FUNCTION_6_4();
  sub_26A11C194(v42, v48);
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

uint64_t type metadata accessor for ImageElement.PNGData(uint64_t a1)
{
  result = qword_28157AFA0;
  if (!qword_28157AFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static ImageElement.pngData(_:imageStyle:aspectRatio:idioms:)()
{
  OUTLINED_FUNCTION_76();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15_2();
  v3 = type metadata accessor for ImageElement.PNGData(0);
  v4 = OUTLINED_FUNCTION_41(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v7 = v6 - v5;
  sub_26A10FD9C();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_19_1(xmmword_26A427140);
  OUTLINED_FUNCTION_0_4();
  sub_26A11C064(v8, v9, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
  OUTLINED_FUNCTION_22_3();
  sub_26A4249C4();
  sub_26A0E48F0(v0, &qword_28036CBB8, &qword_26A4265C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFB8, &qword_26A426BE0);
  type metadata accessor for ImageElement.SourceType(0);
  OUTLINED_FUNCTION_21_2();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_4_4(v10, xmmword_26A426410);
  sub_26A11C140();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_7_2();
  sub_26A11C064(v11, v12, &protocol conformance descriptor for _ProtoImageElement);
  sub_26A4249C4();
  OUTLINED_FUNCTION_6_4();
  sub_26A11C194(v7, v13);
  swift_setDeallocating();
  sub_26A10C318();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A11BD3C(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v18 = a3;
  v4 = type metadata accessor for _ProtoImageElement.Source(0) - 8;
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for ImageElement.SourceType(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v21 = MEMORY[0x277D84F90];
  sub_26A10D200(0, v9, 0);
  v10 = v21;
  if (v9)
  {
    v11 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    do
    {
      sub_26A11C140();
      sub_26A3E31B8();
      sub_26A11C194(v8, type metadata accessor for ImageElement.SourceType);
      v21 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_26A10D200(v12 > 1, v13 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v13 + 1;
      sub_26A11C1EC();
      v11 += v20;
      --v9;
    }

    while (v9);
  }

  v14 = v19;

  *v14 = v10;

  v16 = sub_26A419264(v15);

  v14[1] = v16;
  return result;
}

uint64_t sub_26A11C064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A11C0D4(uint64_t a1)
{
  result = type metadata accessor for _ProtoImageElement.DataMessage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A11C140()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A11C194(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A11C1EC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_26A11C1EC();
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return sub_26A11C194(v0, type metadata accessor for _ProtoOptionalBool);
}

void OUTLINED_FUNCTION_19_1(__n128 a1)
{
  *(v3 - 128) = a1;
  *(v3 - 112) = v2;
  *(v3 - 111) = 514;
  *(v3 - 104) = v1;
}

uint64_t OUTLINED_FUNCTION_20_2()
{
  __swift_getEnumTagSinglePayload(v3, 1, v0);

  return sub_26A0E48F0(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return type metadata accessor for _ProtoImageElement.DataMessage(0);
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_26_2()
{

  return type metadata accessor for _ProtoImageElement.DataMessage(0);
}

uint64_t OUTLINED_FUNCTION_27_2(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t sub_26A11C4D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoPlayer.playerButton.getter()
{
  v1 = OUTLINED_FUNCTION_12_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_5(v5, v16);
  OUTLINED_FUNCTION_6_5();
  if (v6)
  {
    sub_26A0E48F0(v0, &qword_28036C8F8, &unk_26A426440);
LABEL_6:
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    type metadata accessor for _ProtoPlayerButton(0);
    v8 = type metadata accessor for _ProtoButton(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    OUTLINED_FUNCTION_92();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  }

  OUTLINED_FUNCTION_21_3();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26A11C870();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_246();
  return sub_26A11C9E0();
}

void (*_ProtoPlayer.playerButton.modify())(uint64_t **a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_2(v3);
  v4 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  type metadata accessor for _ProtoPlayerButton(v7);
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_5_4(v10);
  OUTLINED_FUNCTION_2_2();
  if (v11)
  {
    sub_26A0E48F0(v0, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_157();
      sub_26A11C9E0();
      return sub_26A11C840;
    }

    sub_26A11C870();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v13 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
  return sub_26A11C840;
}

uint64_t sub_26A11C870()
{
  v1 = OUTLINED_FUNCTION_11_3();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _ProtoPlayer.customCanvas.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_5(v8, v12);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    sub_26A0E48F0(v2, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A11C9E0();
    }

    sub_26A11C870();
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = xmmword_26A426400;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 66) = 0;
  type metadata accessor for _ProtoCustomCanvas(0);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A11C9E0()
{
  v1 = OUTLINED_FUNCTION_53();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t sub_26A11CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  OUTLINED_FUNCTION_12_2();
  sub_26A11CC80();
  return a7(v11);
}

void (*_ProtoPlayer.customCanvas.modify())(uint64_t **a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_2(v3);
  v4 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  type metadata accessor for _ProtoCustomCanvas(v7);
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_5_4(v10);
  OUTLINED_FUNCTION_2_2();
  if (v11)
  {
    sub_26A0E48F0(v0, &qword_28036C8F8, &unk_26A426440);
LABEL_7:
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0xE000000000000000;
    *(v9 + 32) = xmmword_26A426400;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0xE000000000000000;
    *(v9 + 64) = 0;
    *(v9 + 66) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    return sub_26A11CC50;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A11C870();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A11C9E0();
  return sub_26A11CC50;
}

uint64_t sub_26A11CC80()
{
  v1 = OUTLINED_FUNCTION_53();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_175();
  v4(v3);
  return v0;
}

uint64_t _ProtoPlayer.standardPlayerButton.getter@<X0>(void *a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_12_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_5(v8, v19);
  OUTLINED_FUNCTION_6_5();
  if (v9)
  {
    sub_26A0E48F0(v2, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A11C9E0();
    }

    sub_26A11C870();
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  type metadata accessor for _ProtoStandardPlayerButton(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_92();
  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
}

uint64_t sub_26A11CE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26A0E48F0(v3, &qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_157();
  sub_26A11C9E0();
  v4 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

void (*_ProtoPlayer.standardPlayerButton.modify())(uint64_t **a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_16_2(v3);
  v4 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_15_3(v6);
  type metadata accessor for _ProtoStandardPlayerButton(v7);
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  OUTLINED_FUNCTION_5_4(v10);
  OUTLINED_FUNCTION_2_2();
  if (v11)
  {
    sub_26A0E48F0(v0, &qword_28036C8F8, &unk_26A426440);
LABEL_7:
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0;
    v9[3] = 0xE000000000000000;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    return sub_26A11D040;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_26A11C870();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A11C9E0();
  return sub_26A11D040;
}

void sub_26A11D070(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[3];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_26A11CC80();
    sub_26A0E48F0(v8, &qword_28036C8F8, &unk_26A426440);
    sub_26A11C9E0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_4();
    sub_26A11C870();
  }

  else
  {
    sub_26A0E48F0(**a1, &qword_28036C8F8, &unk_26A426440);
    sub_26A11C9E0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_4();
  }

  free(v5);
  free(v7);
  free(v6);

  free(v4);
}

uint64_t _ProtoPlayer.idioms.getter()
{
  type metadata accessor for _ProtoPlayer(0);
}

uint64_t _ProtoPlayer.idioms.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoPlayer(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

void (*_ProtoPlayer.idioms.modify())()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoPlayer(v0);
  return nullsub_1;
}

uint64_t _ProtoPlayer.identifier.getter()
{
  type metadata accessor for _ProtoPlayer(0);

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoPlayer.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for _ProtoPlayer(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*_ProtoPlayer.identifier.modify())()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoPlayer(v0);
  return nullsub_1;
}

uint64_t _ProtoPlayer.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoPlayer(0) + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoPlayer.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoPlayer(0) + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

void (*_ProtoPlayer.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_11_3();
  type metadata accessor for _ProtoPlayer(v0);
  return nullsub_1;
}

uint64_t static _ProtoPlayer.OneOf_Control.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v27[1] = a2;
  v2 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v27[0] = v5 - v4;
  v6 = type metadata accessor for _ProtoCustomCanvas(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = type metadata accessor for _ProtoPlayerButton(0);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v16 = (v27 - v15);
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D1D8, &qword_26A4271E0);
  OUTLINED_FUNCTION_41(v18);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = v27 - v20;
  sub_26A11CC80();
  sub_26A11CC80();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26A11CC80();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26A11C9E0();
        v23 = static _ProtoCustomCanvas.== infix(_:_:)(v16, v10);
        sub_26A11C870();
LABEL_11:
        sub_26A11C870();
        OUTLINED_FUNCTION_7_3();
        sub_26A11C870();
        return v23 & 1;
      }
    }

    else
    {
      sub_26A11CC80();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_26A11C9E0();
        static _ProtoStandardPlayerButton.== infix(_:_:)();
        v23 = v24;
        sub_26A11C870();
        goto LABEL_11;
      }
    }
  }

  else
  {
    sub_26A11CC80();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A11C9E0();
      static _ProtoPlayerButton.== infix(_:_:)();
      v23 = v25;
      sub_26A11C870();
      goto LABEL_11;
    }
  }

  sub_26A11C870();
  sub_26A0E48F0(v21, &qword_28036D1D8, &qword_26A4271E0);
  v23 = 0;
  return v23 & 1;
}

uint64_t _ProtoPlayer.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = type metadata accessor for _ProtoPlayer(0);
  *(a1 + *(v6 + 20)) = MEMORY[0x277D84F90];
  v7 = (a1 + *(v6 + 24));
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A11D918()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036D1C0);
  __swift_project_value_buffer(v0, qword_28036D1C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "player_button";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "custom_canvas";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "standard_player_button";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "idioms";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "identifier";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoPlayer._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C008 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_28036D1C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoPlayer.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_26A424834();
    if (v3 || (v7 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v8 = OUTLINED_FUNCTION_10_3();
        sub_26A11DD20(v8, v9, v10, v11);
        break;
      case 2:
        v20 = OUTLINED_FUNCTION_10_3();
        sub_26A11E218(v20, v21, v22, v23);
        break;
      case 3:
        v16 = OUTLINED_FUNCTION_246();
        sub_26A11E710(v16, v17, a2, a3);
        break;
      case 4:
        v18 = OUTLINED_FUNCTION_246();
        sub_26A11E784(v18, v19);
        break;
      case 5:
        v12 = OUTLINED_FUNCTION_10_3();
        sub_26A11E7E8(v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A11DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for _ProtoPlayerButton(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D248, &qword_26A4273C8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_26A0E4894(a1, v10, &qword_28036C8F8, &unk_26A426440);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A0E48F0(v10, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    sub_26A11C9E0();
    sub_26A11C9E0();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A11C870();
    }

    else
    {
      sub_26A0E48F0(v18, &qword_28036D248, &qword_26A4273C8);
      sub_26A11C9E0();
      sub_26A11C9E0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_26A11FB3C(&qword_28036D238, type metadata accessor for _ProtoPlayerButton, &protocol conformance descriptor for _ProtoPlayerButton);
  v19 = v29;
  sub_26A424944();
  if (v19)
  {
    v20 = v18;
    return sub_26A0E48F0(v20, &qword_28036D248, &qword_26A4273C8);
  }

  sub_26A0E4894(v18, v15, &qword_28036D248, &qword_26A4273C8);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A0E48F0(v18, &qword_28036D248, &qword_26A4273C8);
    v20 = v15;
    return sub_26A0E48F0(v20, &qword_28036D248, &qword_26A4273C8);
  }

  sub_26A11C9E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v22 = v27;
  sub_26A0E48F0(v18, &qword_28036D248, &qword_26A4273C8);
  v23 = v25;
  sub_26A0E48F0(v25, &qword_28036C8F8, &unk_26A426440);
  sub_26A11C9E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_26A11E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCC0, &qword_26A426750);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_26A0E4894(a1, v10, &qword_28036C8F8, &unk_26A426440);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A0E48F0(v10, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    sub_26A11C9E0();
    sub_26A11C9E0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A0E48F0(v18, &qword_28036CCC0, &qword_26A426750);
      sub_26A11C9E0();
      sub_26A11C9E0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A11C870();
    }
  }

  sub_26A11FB3C(&qword_28036C950, type metadata accessor for _ProtoCustomCanvas, &protocol conformance descriptor for _ProtoCustomCanvas);
  v19 = v29;
  sub_26A424944();
  if (v19)
  {
    v20 = v18;
    return sub_26A0E48F0(v20, &qword_28036CCC0, &qword_26A426750);
  }

  sub_26A0E4894(v18, v15, &qword_28036CCC0, &qword_26A426750);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A0E48F0(v18, &qword_28036CCC0, &qword_26A426750);
    v20 = v15;
    return sub_26A0E48F0(v20, &qword_28036CCC0, &qword_26A426750);
  }

  sub_26A11C9E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v22 = v27;
  sub_26A0E48F0(v18, &qword_28036CCC0, &qword_26A426750);
  v23 = v25;
  sub_26A0E48F0(v25, &qword_28036C8F8, &unk_26A426440);
  sub_26A11C9E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_26A11E710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoPlayer(0);
  sub_26A11EF50();
  return sub_26A424854();
}

uint64_t sub_26A11E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for _ProtoStandardPlayerButton(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D250, &unk_26A4273D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_26A0E4894(a1, v10, &qword_28036C8F8, &unk_26A426440);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A0E48F0(v10, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    sub_26A11C9E0();
    sub_26A11C9E0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A0E48F0(v18, &qword_28036D250, &unk_26A4273D0);
      sub_26A11C9E0();
      sub_26A11C9E0();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_26A11C870();
    }
  }

  sub_26A11FB3C(&qword_28036D240, type metadata accessor for _ProtoStandardPlayerButton, &protocol conformance descriptor for _ProtoStandardPlayerButton);
  v19 = v29;
  sub_26A424944();
  if (v19)
  {
    v20 = v18;
    return sub_26A0E48F0(v20, &qword_28036D250, &unk_26A4273D0);
  }

  sub_26A0E4894(v18, v15, &qword_28036D250, &unk_26A4273D0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_26A0E48F0(v18, &qword_28036D250, &unk_26A4273D0);
    v20 = v15;
    return sub_26A0E48F0(v20, &qword_28036D250, &unk_26A4273D0);
  }

  sub_26A11C9E0();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v22 = v27;
  sub_26A0E48F0(v18, &qword_28036D250, &unk_26A4273D0);
  v23 = v25;
  sub_26A0E48F0(v25, &qword_28036C8F8, &unk_26A426440);
  sub_26A11C9E0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t _ProtoPlayer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v34 - v12;
  sub_26A0E4894(v6, v34 - v12, &qword_28036C8F8, &unk_26A426440);
  v14 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    sub_26A0E4894(v13, v10, &qword_28036C8F8, &unk_26A426440);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_26A11C870();
        goto LABEL_9;
      }

      v16 = OUTLINED_FUNCTION_3_5();
      sub_26A11F1B4(v16, v17, v18, v19);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_3_5();
      sub_26A11EFA4(v20, v21, v22, v23);
    }

    v5 = v4;
    OUTLINED_FUNCTION_7_3();
    sub_26A11C870();
    if (v4)
    {
      return sub_26A0E48F0(v13, &qword_28036C8F8, &unk_26A426440);
    }
  }

LABEL_9:
  sub_26A0E48F0(v13, &qword_28036C8F8, &unk_26A426440);
  v25 = type metadata accessor for _ProtoPlayer(0);
  if (!*(*(v6 + *(v25 + 20)) + 16) || (sub_26A11EF50(), v4 = v5, result = sub_26A4249D4(), !v5))
  {
    v26 = (v6 + *(v25 + 24));
    v27 = *v26;
    v28 = v26[1];
    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29 || (v4 = v5, result = sub_26A424A64(), !v5))
    {
      v30 = OUTLINED_FUNCTION_3_5();
      result = sub_26A11F3C8(v30, v31, v32, v33);
      if (!v4)
      {
        return sub_26A424774();
      }
    }
  }

  return result;
}

unint64_t sub_26A11EF50()
{
  result = qword_28157B558[0];
  if (!qword_28157B558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157B558);
  }

  return result;
}

uint64_t sub_26A11EFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoPlayerButton(0);
  MEMORY[0x28223BE20](v8);
  sub_26A0E4894(a1, v7, &qword_28036C8F8, &unk_26A426440);
  v9 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A0E48F0(v7, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A11C9E0();
      sub_26A11FB3C(&qword_28036D238, type metadata accessor for _ProtoPlayerButton, &protocol conformance descriptor for _ProtoPlayerButton);
      sub_26A424A84();
      return sub_26A11C870();
    }

    result = sub_26A11C870();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A11F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v8);
  sub_26A0E4894(a1, v7, &qword_28036C8F8, &unk_26A426440);
  v9 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    result = sub_26A0E48F0(v7, &qword_28036C8F8, &unk_26A426440);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A11C9E0();
      sub_26A11FB3C(&qword_28036C950, type metadata accessor for _ProtoCustomCanvas, &protocol conformance descriptor for _ProtoCustomCanvas);
      sub_26A424A84();
      return sub_26A11C870();
    }

    result = sub_26A11C870();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A11F3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F8, &unk_26A426440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for _ProtoStandardPlayerButton(0);
  MEMORY[0x28223BE20](v8);
  sub_26A0E4894(a1, v7, &qword_28036C8F8, &unk_26A426440);
  v9 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    return sub_26A0E48F0(v7, &qword_28036C8F8, &unk_26A426440);
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_26A11C9E0();
    sub_26A11FB3C(&qword_28036D240, type metadata accessor for _ProtoStandardPlayerButton, &protocol conformance descriptor for _ProtoStandardPlayerButton);
    sub_26A424A84();
  }

  return sub_26A11C870();
}

uint64_t static _ProtoPlayer.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_53();
  type metadata accessor for _ProtoPlayer.OneOf_Control(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C900, &unk_26A425EB0);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v16 = *(v15 + 56);
  sub_26A0E4894(v1, &v31 - v13, &qword_28036C8F8, &unk_26A426440);
  sub_26A0E4894(v0, &v14[v16], &qword_28036C8F8, &unk_26A426440);
  OUTLINED_FUNCTION_28(v14);
  if (!v21)
  {
    v17 = OUTLINED_FUNCTION_12_2();
    sub_26A0E4894(v17, v18, v19, v20);
    OUTLINED_FUNCTION_28(&v14[v16]);
    if (!v21)
    {
      sub_26A11C9E0();
      v22 = static _ProtoPlayer.OneOf_Control.== infix(_:_:)(v10, v6);
      sub_26A11C870();
      sub_26A11C870();
      sub_26A0E48F0(v14, &qword_28036C8F8, &unk_26A426440);
      if (v22)
      {
        goto LABEL_11;
      }

LABEL_18:
      v29 = 0;
      return v29 & 1;
    }

    sub_26A11C870();
LABEL_9:
    sub_26A0E48F0(v14, &qword_28036C900, &unk_26A425EB0);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_28(&v14[v16]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_26A0E48F0(v14, &qword_28036C8F8, &unk_26A426440);
LABEL_11:
  v23 = type metadata accessor for _ProtoPlayer(0);
  if ((sub_26A0DB6A0(*(v1 + *(v23 + 20)), *(v0 + *(v23 + 20))) & 1) == 0)
  {
    goto LABEL_18;
  }

  v24 = *(v23 + 24);
  v25 = *(v1 + v24);
  v26 = *(v1 + v24 + 8);
  v27 = (v0 + v24);
  v28 = v25 == *v27 && v26 == v27[1];
  if (!v28 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_26A424794();
  sub_26A11FB3C(qword_2815792E0, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v29 = sub_26A424B64();
  return v29 & 1;
}

uint64_t _ProtoPlayer.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoPlayer(0);
  sub_26A11FB3C(&qword_28036D1E0, type metadata accessor for _ProtoPlayer, &protocol conformance descriptor for _ProtoPlayer);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A11F9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A11FB3C(&qword_28036D230, type metadata accessor for _ProtoPlayer, &protocol conformance descriptor for _ProtoPlayer);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A11FA4C(uint64_t a1)
{
  v2 = sub_26A11FB3C(&qword_28036D1F0, type metadata accessor for _ProtoPlayer, &protocol conformance descriptor for _ProtoPlayer);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A11FABC(uint64_t a1, uint64_t a2)
{
  sub_26A11FB3C(&qword_28036D1F0, type metadata accessor for _ProtoPlayer, &protocol conformance descriptor for _ProtoPlayer);

  return sub_26A4249B4();
}

uint64_t sub_26A11FB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26A11FCCC(uint64_t a1)
{
  sub_26A11FD70(319);
  if (v1 <= 0x3F)
  {
    sub_26A11FDC8();
    if (v2 <= 0x3F)
    {
      sub_26A424794();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A11FD70(uint64_t a1)
{
  if (!qword_28036D210)
  {
    type metadata accessor for _ProtoPlayer.OneOf_Control(255);
    v1 = sub_26A424E44();
    if (!v2)
    {
      atomic_store(v1, &qword_28036D210);
    }
  }
}

void sub_26A11FDC8()
{
  if (!qword_28036D218)
  {
    v0 = sub_26A424D94();
    if (!v1)
    {
      atomic_store(v0, &qword_28036D218);
    }
  }
}

uint64_t sub_26A11FE20(uint64_t a1)
{
  result = type metadata accessor for _ProtoPlayerButton(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoCustomCanvas(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for _ProtoStandardPlayerButton(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_26A0E4894(v2, &a2 - a1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_2_2()
{
  v2 = type metadata accessor for _ProtoPlayer.OneOf_Control(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1)
{
  *(v3 + 24) = a1;

  return sub_26A0E4894(v2, v1, v4, v5);
}

void *OUTLINED_FUNCTION_16_2(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t SummaryItemSwitch.switch.getter()
{
  v4 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoSwitch(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_36_2();
  v10 = type metadata accessor for _ProtoSummaryItem_Switch(v9);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch, v20);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37(v3, 1, v7);
  if (v11)
  {
    *v2 = 0;
    *(v2 + 8) = 0xE000000000000000;
    *(v2 + 16) = 0;
    *(v2 + 24) = xmmword_26A426400;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    OUTLINED_FUNCTION_37(v3, 1, v7);
    if (!v11)
    {
      sub_26A0E48F0(v3, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A1243E0();
  }

  return sub_26A1243E0();
}

uint64_t SummaryItemSwitch.text1.getter()
{
  v4 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_36_2();
  v10 = type metadata accessor for _ProtoSummaryItem_Switch(v9);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v20);
  OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_37(v3, 1, v7);
  if (v11)
  {
    *v2 = MEMORY[0x277D84F90];
    *(v2 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v12 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
    OUTLINED_FUNCTION_37(v3, 1, v7);
    if (!v11)
    {
      sub_26A0E48F0(v3, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1243E0();
  }

  return sub_26A1243E0();
}

void SummaryItemSwitch.text3.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoMultilineTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &unk_26A4273F0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
      OUTLINED_FUNCTION_38_0();
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_1();
    }

    sub_26A1243E0();
    v2 = 0;
  }

  v19 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void sub_26A12058C()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &unk_26A425BF0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v13 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_1();
    }

    sub_26A1243E0();
    v3 = 0;
  }

  v20 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v21, v3, 1, v20);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitch.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoVisualProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &unk_26A426430);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v12);
      OUTLINED_FUNCTION_38_0();
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_1();
    }

    sub_26A1243E0();
    v2 = 0;
  }

  v19 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitch.action.getter()
{
  OUTLINED_FUNCTION_76();
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_20_3();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_1();
    }

    sub_26A1243E0();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemSwitch.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Switch(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SummaryItemSwitch.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Switch(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSummaryItem_Switch.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v176 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v9);
  v174 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v14 = OUTLINED_FUNCTION_41(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v17);
  v172 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v25);
  v26 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  v34 = &v162[-v33];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v36 = OUTLINED_FUNCTION_41(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  v41 = &v162[-v40];
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  v45 = &v162[-v44];
  MEMORY[0x28223BE20](v46);
  v48 = &v162[-v47];
  OUTLINED_FUNCTION_9_3();
  sub_26A1245E8();
  v49 = *(type metadata accessor for _ProtoSummaryItem_Switch(0) + 20);
  v177 = v1;
  v178 = v49;
  v50 = *(v1 + v49);
  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v185);
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v48, 1, v26);
  sub_26A0E48F0(v48, &qword_28036C7B8, &unk_26A425BF0);
  if (v1 != 1)
  {
    sub_26A10FD9C();
    v51 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v51, v52, v26);
    if (v53)
    {
      *v34 = MEMORY[0x277D84F90];
      *(v34 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v54 = v176;
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v176);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v58, v59, v60, v54);
      v61 = OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_37(v61, v62, v26);
      v63 = v178;
      if (!v53)
      {
        sub_26A0E48F0(v45, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1243E0();
      v63 = v178;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_8_3();
    sub_26A124434(v34, v64);
    v65 = v177;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v65 + v63);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v67 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v67);
      OUTLINED_FUNCTION_27_3();
      v50 = v68;
      *(v65 + v63) = v68;
    }

    OUTLINED_FUNCTION_30_0();
    v69 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v26);
    OUTLINED_FUNCTION_211(v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v184);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v184);
  OUTLINED_FUNCTION_209();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v26);
  OUTLINED_FUNCTION_162_0(v41);
  if (EnumTagSinglePayload == 1)
  {
    v73 = v176;
    v74 = v177;
    v75 = v172;
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v76 = OUTLINED_FUNCTION_11_4();
    v74 = v177;
    v77 = v178;
    v75 = v172;
    if (v53)
    {
      v50 = v163;
      *v163 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_39_0(v76);
      v78 = OUTLINED_FUNCTION_44_0(*(v26 + 32));
      v73 = v176;
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v176);
      v81 = OUTLINED_FUNCTION_44_0(*(v26 + 36));
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v73);
      OUTLINED_FUNCTION_11_4();
      if (!v53)
      {
        sub_26A0E48F0(EnumTagSinglePayload, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_2();
      v73 = v176;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_8_3();
    sub_26A124434(v50, v84);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v74 + v77);
    if ((v85 & 1) == 0)
    {
      v86 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v86);
      OUTLINED_FUNCTION_27_3();
      v50 = v87;
      *(v74 + v77) = v87;
    }

    OUTLINED_FUNCTION_30_0();
    v88 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v26);
    OUTLINED_FUNCTION_211(v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v183);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v183);
  v91 = v170;
  OUTLINED_FUNCTION_209();
  v92 = __swift_getEnumTagSinglePayload(v91, 1, v75);
  OUTLINED_FUNCTION_162_0(v91);
  if (v92 != 1)
  {
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_37(v92, 1, v75);
    v93 = v178;
    if (v53)
    {
      v94 = v164;
      *v164 = MEMORY[0x277D84F90];
      *(v94 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v95 = OUTLINED_FUNCTION_44_0(*(v75 + 32));
      __swift_storeEnumTagSinglePayload(v95, v96, v97, v73);
      v98 = OUTLINED_FUNCTION_44_0(*(v75 + 36));
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v73);
      OUTLINED_FUNCTION_37(v92, 1, v75);
      if (!v53)
      {
        sub_26A0E48F0(v92, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_2();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_43_2();
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v74 + v93);
    if ((v101 & 1) == 0)
    {
      v102 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v102);
      OUTLINED_FUNCTION_27_3();
      v50 = v103;
      *(v74 + v93) = v103;
    }

    sub_26A1243E0();
    v104 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v75);
    OUTLINED_FUNCTION_211(v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v182);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v182);
  v107 = v171;
  OUTLINED_FUNCTION_209();
  v108 = __swift_getEnumTagSinglePayload(v107, 1, v26);
  OUTLINED_FUNCTION_162_0(v107);
  if (v108 == 1)
  {
    v109 = v73;
    v110 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v111 = OUTLINED_FUNCTION_11_4();
    v112 = v178;
    if (v53)
    {
      v50 = v165;
      *v165 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_39_0(v111);
      v113 = OUTLINED_FUNCTION_44_0(*(v26 + 32));
      __swift_storeEnumTagSinglePayload(v113, v114, v115, v73);
      v116 = OUTLINED_FUNCTION_44_0(*(v26 + 36));
      __swift_storeEnumTagSinglePayload(v116, v117, v118, v73);
      OUTLINED_FUNCTION_11_4();
      if (!v53)
      {
        sub_26A0E48F0(v108, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_2();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_8_3();
    sub_26A124434(v50, v119);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v74 + v112);
    v109 = v73;
    if ((v120 & 1) == 0)
    {
      v121 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v121);
      OUTLINED_FUNCTION_27_3();
      v50 = v122;
      *(v74 + v112) = v122;
    }

    v110 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_30_0();
    v123 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v26);
    OUTLINED_FUNCTION_211(v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v181);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v181);
  v126 = v173;
  OUTLINED_FUNCTION_209();
  v127 = v174;
  v128 = __swift_getEnumTagSinglePayload(v126, 1, v174);
  OUTLINED_FUNCTION_162_0(v126);
  if (v128 == 1)
  {
    v129 = v110;
    v130 = v109;
  }

  else
  {
    OUTLINED_FUNCTION_58_1();
    v131 = OUTLINED_FUNCTION_11_4();
    v132 = v178;
    if (v53)
    {
      v129 = v110;
      *v166 = v110;
      OUTLINED_FUNCTION_39_0(v131);
      v133 = OUTLINED_FUNCTION_44_0(*(v127 + 32));
      v130 = v109;
      __swift_storeEnumTagSinglePayload(v133, v134, v135, v109);
      v136 = OUTLINED_FUNCTION_44_0(*(v127 + 36));
      __swift_storeEnumTagSinglePayload(v136, v137, v138, v109);
      OUTLINED_FUNCTION_11_4();
      if (!v53)
      {
        sub_26A0E48F0(v128, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_2();
      v129 = v110;
      v130 = v109;
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_43_2();
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v74 + v132);
    if ((v139 & 1) == 0)
    {
      v140 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v140);
      OUTLINED_FUNCTION_27_3();
      v50 = v141;
      *(v74 + v132) = v141;
    }

    sub_26A1243E0();
    v142 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v142, v143, v144, v127);
    OUTLINED_FUNCTION_211(v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail, v180);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v50 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, v180);
  v145 = v175;
  OUTLINED_FUNCTION_209();
  v146 = __swift_getEnumTagSinglePayload(v145, 1, v130);
  OUTLINED_FUNCTION_162_0(v145);
  if (v146 != 1)
  {
    v147 = v167;
    sub_26A10FD9C();
    v148 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v148, v149, v130);
    v150 = v178;
    if (v53)
    {
      v151 = v168;
      *v168 = v129;
      v151[1] = 0;
      v151[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v152 = OUTLINED_FUNCTION_38_1();
      OUTLINED_FUNCTION_37(v152, v153, v130);
      v154 = v169;
      if (!v53)
      {
        sub_26A0E48F0(v147, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_44_2();
      v154 = v169;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v154);
    OUTLINED_FUNCTION_43_2();
    v155 = swift_isUniquelyReferenced_nonNull_native();
    v156 = *(v74 + v150);
    if ((v155 & 1) == 0)
    {
      v157 = type metadata accessor for _ProtoSummaryItem_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v157);
      sub_26A1BAEFC();
      v156 = v158;
      *(v74 + v150) = v158;
    }

    sub_26A1243E0();
    v159 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v159, v160, v161, v130);
    OUTLINED_FUNCTION_211(v156 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v179);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemSwitch.init(switch:text1:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for _ProtoSummaryItem_Switch(0);
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a9;
  v37 = a10;
  v38 = a11;
  OUTLINED_FUNCTION_0_5();
  v19 = sub_26A1245A0(v17, v18, &protocol conformance descriptor for _ProtoSummaryItem_Switch);
  OUTLINED_FUNCTION_56_1(sub_26A124304, v27, v20, v19);

  sub_26A0E48F0(a7, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a6, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a5, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a4, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_6_6(a2);
  return sub_26A124434(a1, v21);
}

uint64_t sub_26A121CB8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v99 = a7;
  v100 = a8;
  v95 = a5;
  v96 = a6;
  v92 = a4;
  v13 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v13 - 8);
  v90 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v15 - 8);
  v102 = v80 - v16;
  v101 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v101);
  v85 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v86 = v80 - v19;
  v20 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v20 - 8);
  v89 = v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v22 - 8);
  v98 = v80 - v23;
  v97 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v97);
  v83 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v84 = v80 - v26;
  v27 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v27 - 8);
  v87 = v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v29 - 8);
  v91 = v80 - v30;
  v93 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v93);
  v80[1] = v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v81 = v80 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v34 - 8);
  v94 = v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = v80 - v37;
  v39 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v39);
  v82 = v80 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = v80 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v80 - v45;
  v47 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v47 - 8);
  v48 = type metadata accessor for _ProtoSwitch(0);
  MEMORY[0x28223BE20](v48 - 8);
  sub_26A1245E8();
  _ProtoSummaryItem_Switch.switch.setter();
  v49 = a3;
  v50 = a3[3];
  v51 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v51 + 8))(v50, v51);
  sub_26A1243E0();
  v88 = v46;
  _ProtoSummaryItem_Switch.text1.setter();
  sub_26A10FD9C();
  v52 = v104;
  if (v104)
  {
    v53 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v53 + 8))(v52, v53);
    sub_26A1243E0();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
    __swift_destroy_boxed_opaque_existential_1(v103);
    if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
    {
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.text2.setter();
      sub_26A124434(v43, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v103, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  }

  sub_26A0E48F0(v38, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v54 = v104;
  if (v104)
  {
    v55 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v55 + 8))(v54, v55);
    v56 = v91;
    sub_26A1243E0();
    v57 = v93;
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v93);
    __swift_destroy_boxed_opaque_existential_1(v103);
    if (__swift_getEnumTagSinglePayload(v56, 1, v57) != 1)
    {
      v58 = v81;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.text3.setter();
      sub_26A124434(v58, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v103, &qword_28036CB10, &unk_26A426460);
    v56 = v91;
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v93);
  }

  sub_26A0E48F0(v56, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v59 = v104;
  if (v104)
  {
    v60 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v60 + 8))(v59, v60);
    v61 = v94;
    sub_26A1243E0();
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v39);
    __swift_destroy_boxed_opaque_existential_1(v103);
    if (__swift_getEnumTagSinglePayload(v61, 1, v39) != 1)
    {
      v62 = v82;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.text4.setter();
      sub_26A124434(v62, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v103, &qword_28036CB08, &unk_26A428720);
    v61 = v94;
    __swift_storeEnumTagSinglePayload(v94, 1, 1, v39);
  }

  sub_26A0E48F0(v61, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v63 = v104;
  if (v104)
  {
    v64 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v64 + 8))(v63, v64);
    v65 = v98;
    sub_26A1243E0();
    v66 = v97;
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v97);
    __swift_destroy_boxed_opaque_existential_1(v103);
    if (__swift_getEnumTagSinglePayload(v65, 1, v66) != 1)
    {
      v67 = v84;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.thumbnail.setter();
      sub_26A124434(v67, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v103, &qword_28036CB00, &unk_26A426450);
    v65 = v98;
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v97);
  }

  sub_26A0E48F0(v65, &qword_28036CAE8, &unk_26A426430);
LABEL_21:
  sub_26A10FD9C();
  v68 = v104;
  if (v104)
  {
    v69 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v69 + 8))(v68, v69);
    v70 = v102;
    sub_26A1243E0();
    v71 = v101;
    __swift_storeEnumTagSinglePayload(v70, 0, 1, v101);
    __swift_destroy_boxed_opaque_existential_1(v103);
    if (__swift_getEnumTagSinglePayload(v70, 1, v71) != 1)
    {
      v72 = v86;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.action.setter();
      sub_26A124434(v72, type metadata accessor for _ProtoActionProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v103, &qword_28036CAF8, &unk_26A426D30);
    v70 = v102;
    __swift_storeEnumTagSinglePayload(v102, 1, 1, v101);
  }

  sub_26A0E48F0(v70, &off_28036C7C0, &off_26A427400);
LABEL_26:

  result = _ProtoSummaryItem_Switch.componentName.setter(a9, a10, v73, v74, v75);
  if (a12)
  {

    return _ProtoSummaryItem_Switch.linkIdentifier.setter(a11, a12, v77, v78, v79);
  }

  return result;
}

uint64_t SummaryItemSwitch.init(switch:text1:text2:text3:action:componentName:linkIdentifier:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for _ProtoSummaryItem_Switch(0);
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v33 = a9;
  OUTLINED_FUNCTION_0_5();
  v19 = sub_26A1245A0(v17, v18, &protocol conformance descriptor for _ProtoSummaryItem_Switch);
  OUTLINED_FUNCTION_56_1(sub_26A124344, v24, v20, v19);

  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a4, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_6_6(a2);
  return sub_26A124434(a1, v21);
}

uint64_t sub_26A122B48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v69 = a7;
  v70 = a8;
  v65 = a5;
  v66 = a6;
  v62 = a4;
  v11 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = v56 - v14;
  v67 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v67);
  v58 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = v56 - v17;
  v18 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v18 - 8);
  v60 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v20 - 8);
  v64 = v56 - v21;
  v63 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v63);
  v56[1] = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v57 = v56 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v56 - v26;
  v28 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v28);
  v56[0] = v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v31 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v31 - 8);
  v32 = type metadata accessor for _ProtoSwitch(0);
  MEMORY[0x28223BE20](v32 - 8);
  sub_26A1245E8();
  _ProtoSummaryItem_Switch.switch.setter();
  v34 = a3[3];
  v33 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v34);
  (*(v33 + 8))(v34, v33);
  sub_26A1243E0();
  _ProtoSummaryItem_Switch.text1.setter();
  sub_26A10FD9C();
  v35 = v72;
  if (v72)
  {
    v36 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v36 + 8))(v35, v36);
    sub_26A1243E0();
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
    __swift_destroy_boxed_opaque_existential_1(v71);
    if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
    {
      v37 = v56[0];
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.text2.setter();
      sub_26A124434(v37, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v71, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
  }

  sub_26A0E48F0(v27, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v38 = v72;
  if (v72)
  {
    v39 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v39 + 8))(v38, v39);
    v40 = v64;
    sub_26A1243E0();
    v41 = v63;
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v63);
    __swift_destroy_boxed_opaque_existential_1(v71);
    if (__swift_getEnumTagSinglePayload(v40, 1, v41) != 1)
    {
      v42 = v57;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.text3.setter();
      sub_26A124434(v42, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v71, &qword_28036CB10, &unk_26A426460);
    v40 = v64;
    __swift_storeEnumTagSinglePayload(v64, 1, 1, v63);
  }

  sub_26A0E48F0(v40, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v43 = v72;
  if (v72)
  {
    v44 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v44 + 8))(v43, v44);
    v45 = v68;
    sub_26A1243E0();
    v46 = v67;
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v67);
    __swift_destroy_boxed_opaque_existential_1(v71);
    if (__swift_getEnumTagSinglePayload(v45, 1, v46) != 1)
    {
      v47 = v59;
      sub_26A1243E0();
      sub_26A1245E8();
      _ProtoSummaryItem_Switch.action.setter();
      sub_26A124434(v47, type metadata accessor for _ProtoActionProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v71, &qword_28036CAF8, &unk_26A426D30);
    v45 = v68;
    __swift_storeEnumTagSinglePayload(v68, 1, 1, v67);
  }

  sub_26A0E48F0(v45, &off_28036C7C0, &off_26A427400);
LABEL_16:
  v48 = v70;

  result = _ProtoSummaryItem_Switch.componentName.setter(v69, v48, v49, v50, v51);
  if (a10)
  {

    return _ProtoSummaryItem_Switch.linkIdentifier.setter(a9, a10, v53, v54, v55);
  }

  return result;
}

void SummaryItemSwitch.init(switch:text1:text2:text3:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v21 = v3;
  v22 = v4;
  v6 = v5;
  v8 = v7;
  v20 = v9;
  v10 = v3;
  v23 = v11;
  v12 = type metadata accessor for Switch(0);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_17_2();
  sub_26A0E5D68(v10, v37);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Switch(0);
  v25 = v0;
  v26 = v37;
  v27 = v36;
  v28 = v35;
  v29 = v34;
  v30 = v22;
  v31 = v2;
  OUTLINED_FUNCTION_0_5();
  v16 = sub_26A1245A0(v14, v15, &protocol conformance descriptor for _ProtoSummaryItem_Switch);
  v32 = 0;
  v33 = 0;
  OUTLINED_FUNCTION_56_1(sub_26A12463C, &v24, v17, v16);

  sub_26A0E48F0(v6, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v8, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v20, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_6_6(v21);
  v19 = v18;
  sub_26A124434(v23, v18);
  sub_26A0E48F0(v34, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v35, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v36, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_26A124434(v0, v19);
  OUTLINED_FUNCTION_75();
}

void SummaryItemSwitch.init(switch:text1:text2:text3:action:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v16 = v7;
  v17 = v9;
  v10 = type metadata accessor for Switch(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_17_2();
  sub_26A0E5D68(v8, v21);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Switch(0);
  OUTLINED_FUNCTION_0_5();
  sub_26A1245A0(v12, v13, &protocol conformance descriptor for _ProtoSummaryItem_Switch);
  sub_26A4249C4();
  sub_26A0E48F0(v2, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v4, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v6, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_6_6(v16);
  v15 = v14;
  sub_26A124434(v17, v14);
  sub_26A0E48F0(&v18, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(&v19, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(&v20, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_26A124434(v0, v15);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SummaryItemSwitch.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v107 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_42();
  v114 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_42();
  v113 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v112 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v14);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_42();
  v111 = v16;
  v109 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v108 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v21 = OUTLINED_FUNCTION_41(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_48();
  v110 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v27);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v28);
  v30 = &v107 - v29;
  v31 = type metadata accessor for _ProtoSwitch(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_41(v36);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v37);
  v38 = OUTLINED_FUNCTION_36_2();
  v39 = type metadata accessor for SummaryItemSwitch(v38);
  v40 = OUTLINED_FUNCTION_41(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D030, &qword_26A427410);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v43);
  v45 = &v107 - v44;
  OUTLINED_FUNCTION_19_2();
  sub_26A1245E8();
  if (v4)
  {
    _ProtoSummaryItem_Switch.redactedProto.getter();
  }

  else
  {
    sub_26A1245E8();
  }

  sub_26A1243E0();
  v45[*(v42 + 32)] = v4 & 1;
  OUTLINED_FUNCTION_43_2();
  v46 = MEMORY[0x277D84F90];
  *&v45[*(v42 + 28)] = MEMORY[0x277D84F90];
  v47 = *&v45[*(type metadata accessor for _ProtoSummaryItem_Switch(0) + 20)];
  OUTLINED_FUNCTION_142(v47 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__switch, &v116);
  sub_26A10FD9C();
  v48 = OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_37(v48, v49, v31);
  if (v50)
  {
    *v35 = 0;
    *(v35 + 8) = 0xE000000000000000;
    *(v35 + 16) = 0;
    *(v35 + 24) = xmmword_26A426400;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v51 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v51);
    v58 = OUTLINED_FUNCTION_38_1();
    OUTLINED_FUNCTION_37(v58, v59, v31);
    v60 = v108;
    if (!v50)
    {
      sub_26A0E48F0(v30, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A1243E0();
    v60 = v108;
  }

  sub_26A1243E0();
  type metadata accessor for Switch(0);
  v61 = OUTLINED_FUNCTION_95_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  sub_26A104564(v2, 0x686374697773, 0xE600000000000000);
  sub_26A0E48F0(v2, &qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_142(v47 + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_SwitchP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v115);
  v65 = v111;
  sub_26A10FD9C();
  v66 = OUTLINED_FUNCTION_116();
  v67 = v109;
  OUTLINED_FUNCTION_37(v66, v68, v109);
  if (v50)
  {
    *v60 = v46;
    *(v60 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v69 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v69);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v69);
    v76 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v76, v77, v67);
    if (!v50)
    {
      sub_26A0E48F0(v65, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1243E0();
  }

  v78 = v110;
  sub_26A1243E0();
  v79 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v79);
  OUTLINED_FUNCTION_222();
  sub_26A10453C(v78, v80 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v78);
  SummaryItemSwitch.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10453C(v24, v81 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v24);
  v82 = v112;
  SummaryItemSwitch.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A104514(v82, v83 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  sub_26A0E48F0(v82, &qword_28036CB28, &qword_26A427980);
  SummaryItemSwitch.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10453C(v24, v84 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v24);
  v85 = v113;
  SummaryItemSwitch.thumbnail.getter();
  sub_26A1044EC(v85, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v85, &qword_28036CB20, &unk_26A426470);
  v86 = v114;
  SummaryItemSwitch.action.getter();
  sub_26A1043E8();
  sub_26A0E48F0(v86, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F76D8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v88, v89, v90, v91, v107, v108);

  v92 = swift_getKeyPath();
  sub_26A0F8364(v92, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v93, v94, v95, v96, v107, v108);

  sub_26A0F9F28(v97, v98, v99, v100, v101, v102, v103);
  sub_26A0E48F0(v45, &qword_28036D030, &qword_26A427410);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v105;
  result._countAndFlagsBits = v104;
  return result;
}

uint64_t SummaryItemSwitch.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_Switch(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_9_3();
  sub_26A1245E8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_18_1();
  sub_26A1243E0();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t SummaryItemSwitch.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemSwitch(0);
  *(inited + 64) = &protocol witness table for SummaryItemSwitch;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_19_2();
  sub_26A1245E8();
  OUTLINED_FUNCTION_142(&off_280372D50, v8);

  v2 = sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  v6[2] = inited;
  v6[3] = v2;
  v6[4] = 0;
  v7 = -1;
  v3 = sub_26A1245A0(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  OUTLINED_FUNCTION_56_1(sub_26A10D098, v6, v4, v3);

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SummaryItemSwitch(uint64_t a1)
{
  result = qword_28036D268;
  if (!qword_28036D268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A1243E0()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A124434(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A124534(uint64_t a1)
{
  result = type metadata accessor for _ProtoSummaryItem_Switch(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A1245A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A1245E8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_17_2()
{

  return sub_26A1245E8();
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return type metadata accessor for _ProtoSummaryItem_Switch(0);
}

uint64_t OUTLINED_FUNCTION_23_4()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_27_3()
{

  sub_26A1BAEFC();
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_26A1243E0();
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t a1)
{
  *(v1 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_41_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return sub_26A124434(v1, v0);
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return sub_26A1243E0();
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_55_1()
{

  return type metadata accessor for _ProtoSummaryItem_Switch(0);
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_26A1243E0();
}

uint64_t OUTLINED_FUNCTION_58_1()
{

  return sub_26A10FD9C();
}

uint64_t sub_26A12491C(void *a1)
{
  v5 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_152_0();
  v7 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = type metadata accessor for _ProtoSummaryItem_Pair(0);
  OUTLINED_FUNCTION_142(*(v2 + *(v12 + 20)) + *a1, v21);
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    *v11 = MEMORY[0x277D84F90];
    *(v11 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    if (__swift_getEnumTagSinglePayload(v3, 1, v7) != 1)
    {
      sub_26A0E48F0(v3, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1295FC();
  }

  return sub_26A1295FC();
}

void sub_26A124B04()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v21 = v4;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_142(*(v0 + *(v9 + 20)) + *v3, &v22);
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v13 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    sub_26A1295FC();
    v3 = 0;
  }

  v20 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v21, v3, 1, v20);
  OUTLINED_FUNCTION_75();
}

void sub_26A124D48()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v21 = v4;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_142(*(v0 + *(v9 + 20)) + *v3, &v22);
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v13 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    sub_26A1295FC();
    v3 = 0;
  }

  v20 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v21, v3, 1, v20);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPair.action.getter()
{
  OUTLINED_FUNCTION_76();
  v14 = v4;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_142(*(v0 + *(v9 + 20)) + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v15);
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    sub_26A1295FC();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPair.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Pair(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

uint64_t SummaryItemPair.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Pair(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoSummaryItem_Pair.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v306 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v289 = v3;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_48();
  v288 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  v290 = v8;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47();
  v287 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_48();
  v303 = v12;
  v302 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v286 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  v285 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47();
  v283 = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_48();
  v282 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8();
  v284 = v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47();
  v300 = v25;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_47();
  v301 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  v281 = v29;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v299 = v31;
  v32 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8();
  v280 = v34;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_47();
  v279 = v36;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_47();
  v277 = v38;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  v276 = v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  v274 = v42;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47();
  v273 = v44;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_47();
  v271 = v46;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47();
  v270 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  v268 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  v267 = v52;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_47();
  v265 = v54;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_47();
  v264 = v56;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47();
  v262 = v58;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47();
  v261 = v60;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_47();
  v259 = v62;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_47();
  v258 = v64;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_47();
  v256 = v66;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47();
  v255 = v68;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_47();
  v254 = v70;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_48();
  v252[1] = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v74 = OUTLINED_FUNCTION_41(v73);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_8();
  v278 = v75;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_47();
  v298 = v77;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_47();
  v275 = v79;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_47();
  v297 = v81;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_47();
  v272 = v83;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_47();
  v296 = v85;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_47();
  v269 = v87;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_47();
  v295 = v89;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_47();
  v266 = v91;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_47();
  v294 = v93;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_47();
  v263 = v95;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_47();
  v293 = v97;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_47();
  v260 = v99;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_47();
  v292 = v101;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_47();
  v257 = v103;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_47();
  v291 = v105;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_47();
  v253 = v107;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v108);
  v110 = v252 - v109;
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_47();
  v307 = v112;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v113);
  v115 = v252 - v114;
  MEMORY[0x28223BE20](v116);
  v118 = v252 - v117;
  OUTLINED_FUNCTION_10_4();
  sub_26A129804();
  v119 = *(type metadata accessor for _ProtoSummaryItem_Pair(0) + 20);
  v304 = v1;
  v305 = v119;
  v120 = *(v1 + v119);
  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, &v321);
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v118, 1, v32);
  sub_26A0E48F0(v118, &qword_28036C7B8, &unk_26A425BF0);
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v115);
    if (v121)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_92();
      v122 = v306;
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v306);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v126, v127, v128, v122);
      OUTLINED_FUNCTION_3_6(v115);
      v129 = v305;
      if (!v121)
      {
        sub_26A0E48F0(v115, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A1295FC();
      v129 = v305;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_1_6();
    v130 = v304;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v130 + v129);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v132 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v132);
      OUTLINED_FUNCTION_16_3();
      v120 = v133;
      *(v130 + v129) = v133;
    }

    sub_26A1295FC();
    v134 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v134, v135, v136, v32);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text1, v320);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v320);
  sub_26A10FD9C();
  LODWORD(v137) = __swift_getEnumTagSinglePayload(v110, 1, v32);
  OUTLINED_FUNCTION_38_2(v110);
  if (v137 == 1)
  {
    v139 = v304;
    v138 = v305;
  }

  else
  {
    v137 = v253;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v121)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v140 = OUTLINED_FUNCTION_0_6();
      v138 = v305;
      if (!v121)
      {
        v140 = sub_26A0E48F0(v137, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v140 = sub_26A1295FC();
      v138 = v305;
    }

    OUTLINED_FUNCTION_44_3(v140);
    OUTLINED_FUNCTION_1_6();
    v139 = v304;
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v139 + v138);
    if ((v141 & 1) == 0)
    {
      v142 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v142);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v143);
    }

    OUTLINED_FUNCTION_18_2();
    v144 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v144, v145, v146, v32);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text2, v319);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v319);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v137 != 1)
  {
    v137 = v257;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v121)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v147 = OUTLINED_FUNCTION_0_6();
      if (!v121)
      {
        v147 = sub_26A0E48F0(v137, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v147 = sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3(v147);
    OUTLINED_FUNCTION_1_6();
    v148 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v139 + v138);
    if ((v148 & 1) == 0)
    {
      v149 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v149);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v150);
    }

    OUTLINED_FUNCTION_18_2();
    v151 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v151, v152, v153, v32);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text3, v318);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v318);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v137 != 1)
  {
    v137 = v260;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v121)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v154 = OUTLINED_FUNCTION_0_6();
      if (!v121)
      {
        v154 = sub_26A0E48F0(v137, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v154 = sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3(v154);
    OUTLINED_FUNCTION_1_6();
    v155 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v139 + v138);
    if ((v155 & 1) == 0)
    {
      v156 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v156);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v157);
    }

    OUTLINED_FUNCTION_18_2();
    v158 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v158, v159, v160, v32);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, v317);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, v317);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v137 != 1)
  {
    v137 = v263;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v121)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v161 = OUTLINED_FUNCTION_0_6();
      if (!v121)
      {
        v161 = sub_26A0E48F0(v137, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v161 = sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3(v161);
    OUTLINED_FUNCTION_1_6();
    v162 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v139 + v138);
    if ((v162 & 1) == 0)
    {
      v163 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v163);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v164);
    }

    OUTLINED_FUNCTION_18_2();
    v165 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v165, v166, v167, v32);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text5, v316);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, v316);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v137 != 1)
  {
    v137 = v266;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v121)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v168 = OUTLINED_FUNCTION_0_6();
      if (!v121)
      {
        v168 = sub_26A0E48F0(v137, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v168 = sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3(v168);
    OUTLINED_FUNCTION_1_6();
    v169 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v139 + v138);
    if ((v169 & 1) == 0)
    {
      v170 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v170);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v171);
    }

    OUTLINED_FUNCTION_18_2();
    v172 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v172, v173, v174, v32);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, v315);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7, v315);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v137 != 1)
  {
    v137 = v269;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v121)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v175 = OUTLINED_FUNCTION_0_6();
      if (!v121)
      {
        v175 = sub_26A0E48F0(v137, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v175 = sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3(v175);
    OUTLINED_FUNCTION_1_6();
    v176 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v139 + v138);
    if ((v176 & 1) == 0)
    {
      v177 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v177);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v178);
    }

    OUTLINED_FUNCTION_18_2();
    v179 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v179, v180, v181, v32);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text7, v314);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8, v314);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v137 != 1)
  {
    v137 = v272;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v121)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v182 = OUTLINED_FUNCTION_0_6();
      if (!v121)
      {
        v182 = sub_26A0E48F0(v137, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v182 = sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3(v182);
    OUTLINED_FUNCTION_1_6();
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v139 + v138);
    if ((v183 & 1) == 0)
    {
      v184 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v184);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v185);
    }

    OUTLINED_FUNCTION_18_2();
    v186 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v186, v187, v188, v32);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text8, v313);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9, v313);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v137 != 1)
  {
    v137 = v275;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v121)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v189 = OUTLINED_FUNCTION_0_6();
      if (!v121)
      {
        v189 = sub_26A0E48F0(v137, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v189 = sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3(v189);
    OUTLINED_FUNCTION_1_6();
    v190 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v139 + v138);
    if ((v190 & 1) == 0)
    {
      v191 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v191);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v192);
    }

    OUTLINED_FUNCTION_18_2();
    v193 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v193, v194, v195, v32);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text9, v312);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text10, v312);
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_4_5();
  if (v137 != 1)
  {
    v196 = v278;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_3();
    if (v121)
    {
      OUTLINED_FUNCTION_11_5(MEMORY[0x277D84F90]);
      v197 = OUTLINED_FUNCTION_0_6();
      if (!v121)
      {
        v197 = sub_26A0E48F0(v196, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v197 = sub_26A1295FC();
    }

    OUTLINED_FUNCTION_44_3(v197);
    OUTLINED_FUNCTION_1_6();
    v198 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v139 + v138);
    if ((v198 & 1) == 0)
    {
      v199 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v199);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v200);
    }

    OUTLINED_FUNCTION_18_2();
    v201 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v201, v202, v203, v32);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text10, v311);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, v311);
  v204 = v299;
  OUTLINED_FUNCTION_19_3();
  v205 = v302;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v204, 1, v302);
  OUTLINED_FUNCTION_38_2(v204);
  if (EnumTagSinglePayload != 1)
  {
    v207 = v281;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v207);
    if (v121)
    {
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_92();
      v208 = v306;
      __swift_storeEnumTagSinglePayload(v209, v210, v211, v306);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v212, v213, v214, v208);
      OUTLINED_FUNCTION_3_6(v207);
      if (!v121)
      {
        sub_26A0E48F0(v207, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_26_3();
    v215 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v139 + v138);
    if ((v215 & 1) == 0)
    {
      v216 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v216);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v217);
    }

    sub_26A1295FC();
    v218 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v218, v219, v220, v205);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail1, v310);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, v310);
  v221 = v300;
  sub_26A10FD9C();
  v222 = __swift_getEnumTagSinglePayload(v221, 1, v205);
  OUTLINED_FUNCTION_38_2(v221);
  if (v222 == 1)
  {
    v223 = v305;
  }

  else
  {
    v224 = v284;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v224);
    v223 = v305;
    if (v121)
    {
      OUTLINED_FUNCTION_50_1(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_92();
      v225 = v306;
      __swift_storeEnumTagSinglePayload(v226, v227, v228, v306);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v229, v230, v231, v225);
      OUTLINED_FUNCTION_3_6(v224);
      if (!v121)
      {
        sub_26A0E48F0(v224, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A1295FC();
    }

    _ProtoVisualProperty.redactedProto.getter();
    OUTLINED_FUNCTION_26_3();
    v232 = swift_isUniquelyReferenced_nonNull_native();
    v120 = *(v139 + v223);
    if ((v232 & 1) == 0)
    {
      v233 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v233);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v234);
    }

    sub_26A1295FC();
    v235 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v235, v236, v237, v205);
    OUTLINED_FUNCTION_211(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__thumbnail2, v309);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v120 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, v309);
  v238 = v303;
  sub_26A10FD9C();
  v239 = v306;
  v240 = __swift_getEnumTagSinglePayload(v238, 1, v306);
  OUTLINED_FUNCTION_38_2(v238);
  if (v240 != 1)
  {
    v241 = v287;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v241, 1, v239) == 1)
    {
      v242 = v288;
      *v288 = MEMORY[0x277D84F90];
      *(v242 + 8) = 0;
      *(v242 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v243 = __swift_getEnumTagSinglePayload(v241, 1, v239);
      v244 = v289;
      if (v243 != 1)
      {
        sub_26A0E48F0(v241, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v242 = v288;
      sub_26A1295FC();
      v244 = v289;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v244);
    sub_26A129650(v242, type metadata accessor for _ProtoActionProperty);
    v245 = swift_isUniquelyReferenced_nonNull_native();
    v246 = *(v139 + v223);
    if ((v245 & 1) == 0)
    {
      v247 = type metadata accessor for _ProtoSummaryItem_Pair._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v247);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_21_4(v248);
    }

    sub_26A1295FC();
    v249 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v249, v250, v251, v239);
    OUTLINED_FUNCTION_211(v246 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__action, &v308);
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPair.init(text4:text6:text1:text2:text3:text5:text7:text8:text9:text10:thumbnail1:thumbnail2:action:componentName:linkIdentifier:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  type metadata accessor for _ProtoSummaryItem_Pair(0);
  OUTLINED_FUNCTION_9_4();
  sub_26A1297BC(v17, v18, &protocol conformance descriptor for _ProtoSummaryItem_Pair);
  sub_26A4249C4();

  sub_26A0E48F0(a13, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_40_1(a12);
  OUTLINED_FUNCTION_40_1(a11);
  v19 = OUTLINED_FUNCTION_175();
  sub_26A0E48F0(v19, v20, &unk_26A428720);
  OUTLINED_FUNCTION_40_1(a9);
  OUTLINED_FUNCTION_40_1(a8);
  OUTLINED_FUNCTION_40_1(a7);
  OUTLINED_FUNCTION_40_1(a6);
  OUTLINED_FUNCTION_40_1(a5);
  OUTLINED_FUNCTION_40_1(a4);
  OUTLINED_FUNCTION_40_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A126D78(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v155 = a8;
  v153 = a7;
  v151 = a6;
  v149 = a5;
  v147 = a4;
  v168 = a3;
  v19 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v19 - 8);
  v146 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v21 - 8);
  v164 = &v132 - v22;
  v163 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v163);
  v143 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v144 = &v132 - v25;
  v26 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v26 - 8);
  v161 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v28 - 8);
  v162 = &v132 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v159 = &v132 - v31;
  v160 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v160);
  v142 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v145 = &v132 - v34;
  MEMORY[0x28223BE20](v35);
  v141 = &v132 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v37 - 8);
  v158 = &v132 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v157 = &v132 - v40;
  MEMORY[0x28223BE20](v41);
  v156 = &v132 - v42;
  MEMORY[0x28223BE20](v43);
  v154 = &v132 - v44;
  MEMORY[0x28223BE20](v45);
  v152 = &v132 - v46;
  MEMORY[0x28223BE20](v47);
  v150 = &v132 - v48;
  MEMORY[0x28223BE20](v49);
  v148 = &v132 - v50;
  MEMORY[0x28223BE20](v51);
  v53 = &v132 - v52;
  v54 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v54);
  v140 = &v132 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v139 = &v132 - v57;
  MEMORY[0x28223BE20](v58);
  v138 = &v132 - v59;
  MEMORY[0x28223BE20](v60);
  v137 = &v132 - v61;
  MEMORY[0x28223BE20](v62);
  v136 = &v132 - v63;
  MEMORY[0x28223BE20](v64);
  v135 = &v132 - v65;
  MEMORY[0x28223BE20](v66);
  v134 = &v132 - v67;
  MEMORY[0x28223BE20](v68);
  v133 = &v132 - v69;
  MEMORY[0x28223BE20](v70);
  v72 = (&v132 - v71);
  v73 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v73 - 8);
  v74 = a2[3];
  v75 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v74);
  (*(v75 + 8))(v74, v75);
  sub_26A1295FC();
  _ProtoSummaryItem_Pair.text4.setter();
  v77 = v168[3];
  v76 = v168[4];
  __swift_project_boxed_opaque_existential_1(v168, v77);
  (*(v76 + 8))(v77, v76);
  sub_26A1295FC();
  v168 = v72;
  _ProtoSummaryItem_Pair.text6.setter();
  sub_26A10FD9C();
  v78 = v166;
  if (v166)
  {
    v79 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v79 + 8))(v78, v79);
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    v80 = v54;
    if (__swift_getEnumTagSinglePayload(v53, 1, v54) != 1)
    {
      v81 = v133;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text1.setter();
      sub_26A129650(v81, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(&v165, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v54);
    v80 = v54;
  }

  sub_26A0E48F0(v53, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v82 = v166;
  if (v166)
  {
    v83 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v83 + 8))(v82, v83);
    v84 = v148;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v80);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    if (__swift_getEnumTagSinglePayload(v84, 1, v80) != 1)
    {
      v85 = v134;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text2.setter();
      sub_26A129650(v85, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(&v165, &qword_28036CB08, &unk_26A428720);
    v84 = v148;
    __swift_storeEnumTagSinglePayload(v148, 1, 1, v80);
  }

  sub_26A0E48F0(v84, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v86 = v166;
  if (v166)
  {
    v87 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v87 + 8))(v86, v87);
    v88 = v150;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v88, 0, 1, v80);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    if (__swift_getEnumTagSinglePayload(v88, 1, v80) != 1)
    {
      v89 = v135;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text3.setter();
      sub_26A129650(v89, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(&v165, &qword_28036CB08, &unk_26A428720);
    v88 = v150;
    __swift_storeEnumTagSinglePayload(v150, 1, 1, v80);
  }

  sub_26A0E48F0(v88, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v90 = v166;
  if (v166)
  {
    v91 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v91 + 8))(v90, v91);
    v92 = v152;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v92, 0, 1, v80);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    if (__swift_getEnumTagSinglePayload(v92, 1, v80) != 1)
    {
      v93 = v136;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text5.setter();
      sub_26A129650(v93, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(&v165, &qword_28036CB08, &unk_26A428720);
    v92 = v152;
    __swift_storeEnumTagSinglePayload(v152, 1, 1, v80);
  }

  sub_26A0E48F0(v92, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v94 = v166;
  if (v166)
  {
    v95 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v95 + 8))(v94, v95);
    v96 = v154;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v96, 0, 1, v80);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    if (__swift_getEnumTagSinglePayload(v96, 1, v80) != 1)
    {
      v97 = v137;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text7.setter();
      sub_26A129650(v97, type metadata accessor for _ProtoTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(&v165, &qword_28036CB08, &unk_26A428720);
    v96 = v154;
    __swift_storeEnumTagSinglePayload(v154, 1, 1, v80);
  }

  sub_26A0E48F0(v96, &qword_28036C7B8, &unk_26A425BF0);
LABEL_26:
  sub_26A10FD9C();
  v98 = v166;
  if (v166)
  {
    v99 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v99 + 8))(v98, v99);
    v100 = v156;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v80);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    if (__swift_getEnumTagSinglePayload(v100, 1, v80) != 1)
    {
      v101 = v138;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text8.setter();
      sub_26A129650(v101, type metadata accessor for _ProtoTextProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(&v165, &qword_28036CB08, &unk_26A428720);
    v100 = v156;
    __swift_storeEnumTagSinglePayload(v156, 1, 1, v80);
  }

  sub_26A0E48F0(v100, &qword_28036C7B8, &unk_26A425BF0);
LABEL_31:
  sub_26A10FD9C();
  v102 = v166;
  if (v166)
  {
    v103 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v103 + 8))(v102, v103);
    v104 = v157;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v104, 0, 1, v80);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    if (__swift_getEnumTagSinglePayload(v104, 1, v80) != 1)
    {
      v105 = v139;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text9.setter();
      sub_26A129650(v105, type metadata accessor for _ProtoTextProperty);
      goto LABEL_36;
    }
  }

  else
  {
    sub_26A0E48F0(&v165, &qword_28036CB08, &unk_26A428720);
    v104 = v157;
    __swift_storeEnumTagSinglePayload(v157, 1, 1, v80);
  }

  sub_26A0E48F0(v104, &qword_28036C7B8, &unk_26A425BF0);
LABEL_36:
  sub_26A10FD9C();
  v106 = v166;
  if (v166)
  {
    v107 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v107 + 8))(v106, v107);
    v108 = v158;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v108, 0, 1, v80);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v108, 1, v80);
    v110 = v160;
    if (EnumTagSinglePayload != 1)
    {
      v111 = v140;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.text10.setter();
      sub_26A129650(v111, type metadata accessor for _ProtoTextProperty);
      goto LABEL_41;
    }
  }

  else
  {
    sub_26A0E48F0(&v165, &qword_28036CB08, &unk_26A428720);
    v108 = v158;
    __swift_storeEnumTagSinglePayload(v158, 1, 1, v80);
    v110 = v160;
  }

  sub_26A0E48F0(v108, &qword_28036C7B8, &unk_26A425BF0);
LABEL_41:
  sub_26A10FD9C();
  v112 = v166;
  if (v166)
  {
    v113 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v113 + 8))(v112, v113);
    v114 = v159;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v114, 0, 1, v110);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    if (__swift_getEnumTagSinglePayload(v114, 1, v110) != 1)
    {
      v115 = v141;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.thumbnail1.setter();
      sub_26A129650(v115, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_46;
    }
  }

  else
  {
    sub_26A0E48F0(&v165, &qword_28036CB00, &unk_26A426450);
    v114 = v159;
    __swift_storeEnumTagSinglePayload(v159, 1, 1, v110);
  }

  sub_26A0E48F0(v114, &qword_28036CAE8, &unk_26A426430);
LABEL_46:
  sub_26A10FD9C();
  v116 = v166;
  if (v166)
  {
    v117 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v117 + 8))(v116, v117);
    v118 = v162;
    sub_26A1295FC();
    __swift_storeEnumTagSinglePayload(v118, 0, 1, v110);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    if (__swift_getEnumTagSinglePayload(v118, 1, v110) != 1)
    {
      v119 = v142;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.thumbnail2.setter();
      sub_26A129650(v119, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_51;
    }
  }

  else
  {
    sub_26A0E48F0(&v165, &qword_28036CB00, &unk_26A426450);
    v118 = v162;
    __swift_storeEnumTagSinglePayload(v162, 1, 1, v110);
  }

  sub_26A0E48F0(v118, &qword_28036CAE8, &unk_26A426430);
LABEL_51:
  sub_26A10FD9C();
  v120 = v166;
  if (v166)
  {
    v121 = v167;
    __swift_project_boxed_opaque_existential_1(&v165, v166);
    (*(v121 + 8))(v120, v121);
    v122 = v164;
    sub_26A1295FC();
    v123 = v163;
    __swift_storeEnumTagSinglePayload(v122, 0, 1, v163);
    __swift_destroy_boxed_opaque_existential_1(&v165);
    if (__swift_getEnumTagSinglePayload(v122, 1, v123) != 1)
    {
      v124 = v144;
      sub_26A1295FC();
      sub_26A129804();
      _ProtoSummaryItem_Pair.action.setter();
      sub_26A129650(v124, type metadata accessor for _ProtoActionProperty);
      goto LABEL_56;
    }
  }

  else
  {
    sub_26A0E48F0(&v165, &qword_28036CAF8, &unk_26A426D30);
    v122 = v164;
    __swift_storeEnumTagSinglePayload(v164, 1, 1, v163);
  }

  sub_26A0E48F0(v122, &off_28036C7C0, &off_26A427400);
LABEL_56:

  result = _ProtoSummaryItem_Pair.componentName.setter(a15, a16, v125, v126, v127);
  if (a18)
  {

    return _ProtoSummaryItem_Pair.linkIdentifier.setter(a17, a18, v129, v130, v131);
  }

  return result;
}

void SummaryItemPair.init(text4:text6:text1:text2:text3:text5:text7:text8:text9:text10:thumbnail1:thumbnail2:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_76();
  v42 = v27;
  v43 = v29;
  v44 = v28;
  v45 = v31;
  v46 = v30;
  v47 = v33;
  v48 = v32;
  v34 = v32;
  v49 = v35;
  OUTLINED_FUNCTION_39_1();
  sub_26A0E5D68(v36, v62);
  sub_26A0E5D68(v34, v61);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Pair(0);
  OUTLINED_FUNCTION_9_4();
  sub_26A1297BC(v37, v38, &protocol conformance descriptor for _ProtoSummaryItem_Pair);
  sub_26A4249C4();

  sub_26A0E48F0(v41, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_52_1(v40);
  OUTLINED_FUNCTION_52_1(v39);
  OUTLINED_FUNCTION_164_0(a22);
  OUTLINED_FUNCTION_164_0(a21);
  OUTLINED_FUNCTION_164_0(v42);
  OUTLINED_FUNCTION_164_0(v43);
  OUTLINED_FUNCTION_164_0(v44);
  OUTLINED_FUNCTION_164_0(v45);
  OUTLINED_FUNCTION_164_0(v46);
  OUTLINED_FUNCTION_164_0(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v49);
  sub_26A0E48F0(v50, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_52_1(v51);
  OUTLINED_FUNCTION_52_1(v52);
  OUTLINED_FUNCTION_164_0(v53);
  OUTLINED_FUNCTION_164_0(v54);
  OUTLINED_FUNCTION_164_0(v55);
  OUTLINED_FUNCTION_164_0(v56);
  OUTLINED_FUNCTION_164_0(v57);
  OUTLINED_FUNCTION_164_0(v58);
  OUTLINED_FUNCTION_164_0(&v59);
  OUTLINED_FUNCTION_164_0(&v60);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v62);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPair.init(text4:text6:text1:text2:text3:text5:text7:text8:text9:text10:thumbnail1:thumbnail2:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_76();
  v37 = v23;
  v38 = v22;
  v39 = v24;
  v40 = v26;
  v41 = v25;
  v42 = v28;
  v43 = v27;
  v29 = v27;
  v44 = v30;
  OUTLINED_FUNCTION_39_1();
  sub_26A0E5D68(v31, v57);
  sub_26A0E5D68(v29, v56);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Pair(0);
  OUTLINED_FUNCTION_9_4();
  sub_26A1297BC(v32, v33, &protocol conformance descriptor for _ProtoSummaryItem_Pair);
  sub_26A4249C4();
  sub_26A0E48F0(v36, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_53_1(v35);
  OUTLINED_FUNCTION_53_1(v34);
  OUTLINED_FUNCTION_164_0(a22);
  OUTLINED_FUNCTION_164_0(a21);
  OUTLINED_FUNCTION_164_0(v37);
  OUTLINED_FUNCTION_164_0(v38);
  OUTLINED_FUNCTION_164_0(v39);
  OUTLINED_FUNCTION_164_0(v40);
  OUTLINED_FUNCTION_164_0(v41);
  OUTLINED_FUNCTION_164_0(v42);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_26A0E48F0(v45, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_53_1(v46);
  OUTLINED_FUNCTION_53_1(v47);
  OUTLINED_FUNCTION_164_0(v48);
  OUTLINED_FUNCTION_164_0(v49);
  OUTLINED_FUNCTION_164_0(v50);
  OUTLINED_FUNCTION_164_0(v51);
  OUTLINED_FUNCTION_164_0(v52);
  OUTLINED_FUNCTION_164_0(v53);
  OUTLINED_FUNCTION_164_0(&v54);
  OUTLINED_FUNCTION_164_0(&v55);
  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v57);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SummaryItemPair.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v96 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v101 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v100 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v99 = v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  v15 = &v96 - v14;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8();
  v98 = v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  v20 = &v96 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  v97 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  v27 = &v96 - v26;
  v28 = type metadata accessor for SummaryItemPair(0);
  v29 = OUTLINED_FUNCTION_41(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v30);
  v32 = &v96 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D028, &unk_26A426C50);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  v36 = &v96 - v35;
  OUTLINED_FUNCTION_23_5();
  sub_26A129804();
  if (v3)
  {
    _ProtoSummaryItem_Pair.redactedProto.getter();
  }

  else
  {
    sub_26A129804();
  }

  sub_26A1295FC();
  v36[*(v33 + 32)] = v3 & 1;
  sub_26A129650(v32, type metadata accessor for SummaryItemPair);
  v37 = MEMORY[0x277D84F90];
  *&v36[*(v33 + 28)] = MEMORY[0x277D84F90];
  v38 = *&v36[*(type metadata accessor for _ProtoSummaryItem_Pair(0) + 20)];
  OUTLINED_FUNCTION_142(v38 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text4, &v103);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v15);
  if (v39)
  {
    *v20 = v37;
    *(v20 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v40 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
    OUTLINED_FUNCTION_3_6(v15);
    v47 = v99;
    if (!v39)
    {
      sub_26A0E48F0(v15, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1295FC();
    v47 = v99;
  }

  sub_26A1295FC();
  v48 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v48);
  OUTLINED_FUNCTION_222();
  sub_26A108150(v27, v49 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  sub_26A0E48F0(v27, &qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_142(v38 + OBJC_IVAR____TtCV10SnippetKit22_ProtoSummaryItem_PairP33_517B9946414782DAF24306F75BD7687D13_StorageClass__text6, &v102);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_3_6(v47);
  if (v39)
  {
    v50 = v98;
    *v98 = v37;
    *(v50 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v51 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v51);
    OUTLINED_FUNCTION_3_6(v47);
    if (!v39)
    {
      sub_26A0E48F0(v47, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1295FC();
  }

  v58 = v97;
  sub_26A1295FC();
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v48);
  OUTLINED_FUNCTION_222();
  sub_26A108150(v58, v59 & 0xFFFF0000FFFFFFFFLL | 0x3600000000, 0xE500000000000000);
  sub_26A0E48F0(v58, &qword_28036CB30, &qword_26A426480);
  SummaryItemPair.text1.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1(v61, v60 & 0xFFFF0000FFFFFFFFLL | 0x3100000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text2.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1(v63, v62 & 0xFFFF0000FFFFFFFFLL | 0x3200000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text3.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1(v65, v64 & 0xFFFF0000FFFFFFFFLL | 0x3300000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text5.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1(v67, v66 & 0xFFFF0000FFFFFFFFLL | 0x3500000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text7.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1(v69, v68 & 0xFFFF0000FFFFFFFFLL | 0x3700000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text8.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1(v71, v70 & 0xFFFF0000FFFFFFFFLL | 0x3800000000);
  OUTLINED_FUNCTION_25_3();
  SummaryItemPair.text9.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_46_1(v73, v72 & 0xFFFF0000FFFFFFFFLL | 0x3900000000);
  OUTLINED_FUNCTION_25_3();
  v74 = v100;
  SummaryItemPair.thumbnail1.getter();
  sub_26A108128(v74, 0x69616E626D756874, 0xEA0000000000316CLL);
  sub_26A0E48F0(v74, &qword_28036CB20, &unk_26A426470);
  SummaryItemPair.thumbnail2.getter();
  sub_26A108128(v74, 0x69616E626D756874, 0xEA0000000000326CLL);
  sub_26A0E48F0(v74, &qword_28036CB20, &unk_26A426470);
  v75 = v101;
  SummaryItemPair.action.getter();
  sub_26A108024();
  sub_26A0E48F0(v75, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7D68(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v77, v78, v79, v80, v96, v97);

  v81 = swift_getKeyPath();
  sub_26A0F86FC(v81, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v82, v83, v84, v85, v96, v97);

  sub_26A0FF2C0(v86, v87, v88, v89, v90, v91, v92);
  sub_26A0E48F0(v36, &qword_28036D028, &unk_26A426C50);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v94;
  result._countAndFlagsBits = v93;
  return result;
}

uint64_t SummaryItemPair.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_Pair(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_10_4();
  sub_26A129804();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_24_5();
  sub_26A1295FC();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t SummaryItemPair.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemPair(0);
  *(inited + 64) = &protocol witness table for SummaryItemPair;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_23_5();
  sub_26A129804();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A1297BC(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for SummaryItemPair(uint64_t a1)
{
  result = qword_28036D288;
  if (!qword_28036D288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A1295FC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A129650(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A129750(uint64_t a1)
{
  result = type metadata accessor for _ProtoSummaryItem_Pair(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A1297BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A129804()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_6()
{
  v4 = *(v0 + 440);
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 32), 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v1 + *(v3 + 36), 1, 1, v4);
  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_1_6()
{

  return sub_26A129650(v0, type metadata accessor for _ProtoTextProperty);
}

uint64_t OUTLINED_FUNCTION_4_5()
{
  __swift_getEnumTagSinglePayload(v2, 1, v3);

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_5@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void OUTLINED_FUNCTION_16_3()
{

  sub_26A19E384();
}

uint64_t OUTLINED_FUNCTION_18_2()
{

  return sub_26A1295FC();
}

uint64_t OUTLINED_FUNCTION_19_3()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_25_3()
{

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return sub_26A129650(v0, type metadata accessor for _ProtoVisualProperty);
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return type metadata accessor for _ProtoSummaryItem_Pair(0);
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return sub_26A10CF40();
}

uint64_t OUTLINED_FUNCTION_38_2(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

void OUTLINED_FUNCTION_44_3(uint64_t a1)
{

  _ProtoTextProperty.redactedProto.getter();
}

void OUTLINED_FUNCTION_46_1(uint64_t a1, uint64_t a2)
{

  sub_26A108150(v2, a2, 0xE500000000000000);
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return type metadata accessor for _ProtoSummaryItem_Pair(0);
}

uint64_t OUTLINED_FUNCTION_50_1@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_52_1(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t ControlSwitch.switch.getter()
{
  v4 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoSwitch(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_36_2();
  v10 = type metadata accessor for _ProtoControl_Switch(v9);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__switch, v24);
  OUTLINED_FUNCTION_54_1();
  v11 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v11, v12, v7);
  if (v13)
  {
    *v2 = 0;
    *(v2 + 8) = 0xE000000000000000;
    *(v2 + 16) = 0;
    *(v2 + 24) = xmmword_26A426400;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v21, v22, v7);
    if (!v13)
    {
      sub_26A0E48F0(v3, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A12C714();
  }

  return sub_26A12C714();
}

uint64_t ControlSwitch.text1.getter()
{
  v4 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_36_2();
  v10 = type metadata accessor for _ProtoControl_Switch(v9);
  OUTLINED_FUNCTION_142(*(v1 + *(v10 + 20)) + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text1, v24);
  OUTLINED_FUNCTION_54_1();
  v11 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v11, v12, v7);
  if (v13)
  {
    *v2 = MEMORY[0x277D84F90];
    *(v2 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v21, v22, v7);
    if (!v13)
    {
      sub_26A0E48F0(v3, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A12C714();
  }

  return sub_26A12C714();
}

void ControlSwitch.text2.getter()
{
  OUTLINED_FUNCTION_76();
  v19 = v3;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v5 = OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoControl_Switch(0);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v8 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v8, v9, &unk_26A425BF0);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v10)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v11 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
      OUTLINED_FUNCTION_38_0();
      if (!v10)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A12C714();
    }

    sub_26A12C714();
    v2 = 0;
  }

  v18 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v19, v2, 1, v18);
  OUTLINED_FUNCTION_75();
}

void ControlSwitch.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  v19 = v3;
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v5 = OUTLINED_FUNCTION_41_2();
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoControl_Switch(0);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v8 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v8, v9, &unk_26A426430);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v10)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v11 = type metadata accessor for _ProtoActionProperty(0);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
      OUTLINED_FUNCTION_38_0();
      if (!v10)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A12C714();
    }

    sub_26A12C714();
    v2 = 0;
  }

  v18 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(v19, v2, 1, v18);
  OUTLINED_FUNCTION_75();
}

void ControlSwitch.action.getter()
{
  OUTLINED_FUNCTION_76();
  v13 = v4;
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_93_0();
  type metadata accessor for _ProtoControl_Switch(0);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v9, v10, &off_26A427400);
  if (v0 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v11)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A12C714();
    }

    sub_26A12C714();
    v2 = 0;
  }

  v12 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v13, v2, 1, v12);
  OUTLINED_FUNCTION_75();
}

uint64_t ControlSwitch.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoControl_Switch(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}

void _ProtoControl_Switch.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v130 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_48();
  v125 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48();
  v129 = v10;
  v128 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  v123 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48();
  v127 = v18;
  v19 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_93_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v25 = OUTLINED_FUNCTION_41(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v26);
  v28 = v120 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  v32 = v120 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v120 - v34;
  OUTLINED_FUNCTION_4_6();
  sub_26A12C8E4();
  v36 = *(type metadata accessor for _ProtoControl_Switch(0) + 20);
  v131 = v2;
  v132 = v36;
  v37 = *(v2 + v36);
  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text1, &v137);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v19);
  sub_26A0E48F0(v35, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v39 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v39, v40, v19);
    if (v41)
    {
      *v0 = MEMORY[0x277D84F90];
      *(v0 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v42 = v130;
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v130);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
      v49 = OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_37(v49, v50, v19);
      v51 = v132;
      if (!v41)
      {
        sub_26A0E48F0(v32, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A12C714();
      v51 = v132;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_10_5();
    sub_26A12C768(v0, v52);
    v53 = v131;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v53 + v51);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = type metadata accessor for _ProtoControl_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v55);
      OUTLINED_FUNCTION_33_1();
      v37 = v56;
      *(v53 + v51) = v56;
    }

    OUTLINED_FUNCTION_39_2();
    v57 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v19);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text1, v136);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text2, v136);
  sub_26A10FD9C();
  v60 = __swift_getEnumTagSinglePayload(v28, 1, v19);
  OUTLINED_FUNCTION_162_0(v28);
  if (v60 == 1)
  {
    v61 = v130;
    v62 = v131;
    v63 = v128;
  }

  else
  {
    v64 = v120[2];
    sub_26A10FD9C();
    v65 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v65, v66, v19);
    v62 = v131;
    v63 = v128;
    if (v41)
    {
      v75 = v121;
      *v121 = MEMORY[0x277D84F90];
      *(v75 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      v61 = v130;
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v130);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v61);
      v73 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v73, v74, v19);
      v76 = v132;
      if (!v41)
      {
        sub_26A0E48F0(v64, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v75 = v121;
      sub_26A12C714();
      v61 = v130;
      v76 = v132;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_10_5();
    sub_26A12C768(v75, v77);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v62 + v76);
    if ((v78 & 1) == 0)
    {
      v79 = type metadata accessor for _ProtoControl_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v79);
      OUTLINED_FUNCTION_33_1();
      v37 = v80;
      *(v62 + v76) = v80;
    }

    OUTLINED_FUNCTION_39_2();
    v81 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v19);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text2, v135);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__thumbnail, v135);
  v84 = v127;
  sub_26A10FD9C();
  v85 = OUTLINED_FUNCTION_107();
  v87 = __swift_getEnumTagSinglePayload(v85, v86, v63);
  OUTLINED_FUNCTION_162_0(v84);
  if (v87 != 1)
  {
    v88 = v122;
    sub_26A10FD9C();
    v89 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v89, v90, v63);
    v91 = v132;
    if (v41)
    {
      v100 = v123;
      *v123 = MEMORY[0x277D84F90];
      *(v100 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v61);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v95, v96, v97, v61);
      v98 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v98, v99, v63);
      if (!v41)
      {
        sub_26A0E48F0(v88, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v100 = v123;
      sub_26A12C714();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A12C768(v100, type metadata accessor for _ProtoVisualProperty);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v62 + v91);
    if ((v101 & 1) == 0)
    {
      v102 = type metadata accessor for _ProtoControl_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v102);
      OUTLINED_FUNCTION_33_1();
      v37 = v103;
      *(v62 + v91) = v103;
    }

    sub_26A12C714();
    v104 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v63);
    OUTLINED_FUNCTION_211(v37 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__thumbnail, v134);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v37 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__action, v134);
  v107 = v129;
  sub_26A10FD9C();
  v108 = __swift_getEnumTagSinglePayload(v107, 1, v61);
  OUTLINED_FUNCTION_162_0(v107);
  if (v108 != 1)
  {
    v109 = v124;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v109, 1, v61);
    v110 = v132;
    if (v41)
    {
      v111 = v125;
      *v125 = MEMORY[0x277D84F90];
      *(v111 + 8) = 0;
      *(v111 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v109, 1, v61);
      v112 = v126;
      if (!v41)
      {
        sub_26A0E48F0(v109, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v111 = v125;
      sub_26A12C714();
      v112 = v126;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v112);
    sub_26A12C768(v111, type metadata accessor for _ProtoActionProperty);
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v114 = *(v62 + v110);
    if ((v113 & 1) == 0)
    {
      v115 = type metadata accessor for _ProtoControl_Switch._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v115);
      sub_26A1CD104();
      v114 = v116;
      *(v62 + v110) = v116;
    }

    sub_26A12C714();
    v117 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v61);
    OUTLINED_FUNCTION_211(v114 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__action, &v133);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

void ControlSwitch.init(switch:text1:text2:thumbnail:action:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v16 = v8;
  v9 = type metadata accessor for Switch(0);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  sub_26A12C8E4();
  sub_26A0E5D68(v7, v20);
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoControl_Switch(0);
  OUTLINED_FUNCTION_13_3();
  sub_26A12C7C0(v11, v12, &protocol conformance descriptor for _ProtoControl_Switch);
  sub_26A4249C4();
  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v3, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v5, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_25_4(v7);
  sub_26A12C768(v16, v13);
  sub_26A0E48F0(&v17, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(&v18, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(&v19, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v20);
  v14 = OUTLINED_FUNCTION_175();
  sub_26A12C768(v14, v15);
  OUTLINED_FUNCTION_75();
}

uint64_t ControlSwitch.init(switch:text1:text2:thumbnail:action:componentName:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for _ProtoControl_Switch(0);
  OUTLINED_FUNCTION_13_3();
  sub_26A12C7C0(v12, v13, &protocol conformance descriptor for _ProtoControl_Switch);
  sub_26A4249C4();

  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a4, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_25_4(a2);
  return sub_26A12C768(a1, v14);
}

uint64_t sub_26A12B400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a7;
  v62 = a8;
  v57 = a2;
  v58 = a6;
  v11 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v49 - v14;
  v63 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v63);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v49 - v17;
  v18 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v18 - 8);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v20 - 8);
  v60 = &v49 - v21;
  v59 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v59);
  v51 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v52 = &v49 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v49 - v26;
  v28 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v28);
  v50 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v31 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v31 - 8);
  v32 = type metadata accessor for _ProtoSwitch(0);
  MEMORY[0x28223BE20](v32 - 8);
  sub_26A12C8E4();
  _ProtoControl_Switch.switch.setter();

  _ProtoControl_Switch.componentName.setter(a3, a4);
  v33 = a5[3];
  v34 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v33);
  (*(v34 + 8))(v33, v34);
  sub_26A12C714();
  _ProtoControl_Switch.text1.setter();
  sub_26A10FD9C();
  v35 = v66;
  if (v66)
  {
    v36 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    (*(v36 + 8))(v35, v36);
    sub_26A12C714();
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
    __swift_destroy_boxed_opaque_existential_1(v65);
    if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
    {
      v37 = v50;
      sub_26A12C714();
      sub_26A12C8E4();
      _ProtoControl_Switch.text2.setter();
      sub_26A12C768(v37, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v65, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
  }

  sub_26A0E48F0(v27, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v38 = v66;
  if (v66)
  {
    v39 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    (*(v39 + 8))(v38, v39);
    v40 = v60;
    sub_26A12C714();
    v41 = v59;
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v59);
    __swift_destroy_boxed_opaque_existential_1(v65);
    if (__swift_getEnumTagSinglePayload(v40, 1, v41) != 1)
    {
      v42 = v52;
      sub_26A12C714();
      sub_26A12C8E4();
      _ProtoControl_Switch.thumbnail.setter();
      sub_26A12C768(v42, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v65, &qword_28036CB00, &unk_26A426450);
    v40 = v60;
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v59);
  }

  sub_26A0E48F0(v40, &qword_28036CAE8, &unk_26A426430);
LABEL_11:
  sub_26A10FD9C();
  v43 = v66;
  if (v66)
  {
    v44 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    (*(v44 + 8))(v43, v44);
    v45 = v64;
    sub_26A12C714();
    v46 = v63;
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v63);
    __swift_destroy_boxed_opaque_existential_1(v65);
    if (__swift_getEnumTagSinglePayload(v45, 1, v46) != 1)
    {
      v47 = v54;
      sub_26A12C714();
      sub_26A12C8E4();
      _ProtoControl_Switch.action.setter();
      return sub_26A12C768(v47, type metadata accessor for _ProtoActionProperty);
    }
  }

  else
  {
    sub_26A0E48F0(v65, &qword_28036CAF8, &unk_26A426D30);
    v45 = v64;
    __swift_storeEnumTagSinglePayload(v64, 1, 1, v63);
  }

  return sub_26A0E48F0(v45, &off_28036C7C0, &off_26A427400);
}

Swift::String __swiftcall ControlSwitch.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v92 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v98 = &v91 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v97 = &v91 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v12);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v95 = &v91 - v14;
  v94 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v20 = OUTLINED_FUNCTION_41(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v96 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_48();
  v93 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D258, &unk_26A4273E0);
  OUTLINED_FUNCTION_41(v24);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_36_2();
  v27 = type metadata accessor for _ProtoSwitch(v26);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_41(v32);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v33);
  v35 = &v91 - v34;
  v36 = type metadata accessor for ControlSwitch(0);
  v37 = OUTLINED_FUNCTION_41(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v38);
  v40 = &v91 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D020, &qword_26A426C48);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_12_3();
  sub_26A12C8E4();
  if (v5)
  {
    _ProtoControl_Switch.redactedProto.getter();
  }

  else
  {
    sub_26A12C8E4();
  }

  sub_26A12C714();
  *(v3 + *(v41 + 32)) = v5 & 1;
  sub_26A12C768(v40, type metadata accessor for ControlSwitch);
  v43 = MEMORY[0x277D84F90];
  *(v3 + *(v41 + 28)) = MEMORY[0x277D84F90];
  v44 = *(v3 + *(type metadata accessor for _ProtoControl_Switch(0) + 20));
  OUTLINED_FUNCTION_142(v44 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__switch, &v100);
  sub_26A10FD9C();
  v45 = OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_37(v45, v46, v27);
  if (v47)
  {
    *v31 = 0;
    *(v31 + 8) = 0xE000000000000000;
    *(v31 + 16) = 0;
    *(v31 + 24) = xmmword_26A426400;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v48 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v48);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v48);
    v55 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v55, v56, v27);
    if (!v47)
    {
      sub_26A0E48F0(v2, &qword_28036D258, &unk_26A4273E0);
    }
  }

  else
  {
    sub_26A12C714();
  }

  sub_26A12C714();
  v57 = type metadata accessor for Switch(0);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v57);
  sub_26A108FF8(v35, 0x686374697773, 0xE600000000000000);
  sub_26A0E48F0(v35, &qword_28036CF48, &qword_26A426AD0);
  OUTLINED_FUNCTION_142(v44 + OBJC_IVAR____TtCV10SnippetKit20_ProtoControl_SwitchP33_2A1D2BC08E8B8B2F692016EA540BDAD513_StorageClass__text1, &v99);
  v58 = v95;
  sub_26A10FD9C();
  v59 = OUTLINED_FUNCTION_116();
  v60 = v94;
  OUTLINED_FUNCTION_37(v59, v61, v94);
  if (v47)
  {
    *v18 = v43;
    *(v18 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v62 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v62);
    v69 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v69, v70, v60);
    if (!v47)
    {
      sub_26A0E48F0(v58, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A12C714();
  }

  v71 = v93;
  sub_26A12C714();
  v72 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v71, 0, 1, v72);
  sub_26A108FD0(v71, 0x3174786574, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v71);
  v73 = v96;
  ControlSwitch.text2.getter();
  sub_26A108FD0(v73, 0x3274786574, 0xE500000000000000);
  OUTLINED_FUNCTION_162_0(v73);
  v74 = v97;
  ControlSwitch.thumbnail.getter();
  sub_26A108FA8(v74, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v74, &qword_28036CB20, &unk_26A426470);
  v75 = v98;
  ControlSwitch.action.getter();
  sub_26A108EA4();
  sub_26A0E48F0(v75, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7EA8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v77, v78, v79, v80, v91, v92);

  sub_26A1006A8(v81, v82, v83, v84, v85, v86, v87);
  sub_26A0E48F0(v3, &qword_28036D020, &qword_26A426C48);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v89;
  result._countAndFlagsBits = v88;
  return result;
}

uint64_t ControlSwitch.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoControl_Switch(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_4_6();
  sub_26A12C8E4();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_11_6();
  sub_26A12C714();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t ControlSwitch.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ControlSwitch(0);
  *(inited + 64) = &protocol witness table for ControlSwitch;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_12_3();
  sub_26A12C8E4();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A12C7C0(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for ControlSwitch(uint64_t a1)
{
  result = qword_28036D2A8;
  if (!qword_28036D2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A12C714()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A12C768(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A12C7C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A12C878(uint64_t a1)
{
  result = type metadata accessor for _ProtoControl_Switch(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A12C8E4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_33_1()
{

  sub_26A1CD104();
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return sub_26A12C714();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return type metadata accessor for _ProtoControl_Switch(0);
}

unint64_t _ProtoIdiom.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    result = 1918985006;
    switch(*v0)
    {
      case 1:
        result = 0x656E6F68702ELL;
        break;
      case 2:
        result = 1684107310;
        break;
      case 3:
        result = 1685024814;
        break;
      case 4:
        return result;
      case 5:
        result = 7762990;
        break;
      case 6:
        result = 0x68637461772ELL;
        break;
      case 7:
        result = 1667329326;
        break;
      case 8:
        result = 0xD000000000000011;
        break;
      default:
        result = 0x746C75616665642ELL;
        break;
    }
  }

  else
  {
    sub_26A424EF4();

    OUTLINED_FUNCTION_0_7();
    v4 = v2;
    v3 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v3);

    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    return v4;
  }

  return result;
}

uint64_t sub_26A12CBBC(uint64_t a1)
{
  if (sub_26A0DB6A0(a1, &unk_287B01538))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v24 = MEMORY[0x277D84F90];
    sub_26A10D50C(0, v7, 0, v2, v3, v4, v5);
    v12 = (a1 + 40);
    do
    {
      if (*v12 == 1)
      {
        v13 = 0xE400000000000000;
        v14 = 1918985006;
        switch(*(v12 - 1))
        {
          case 1:
            v13 = 0xE600000000000000;
            v14 = 0x656E6F68702ELL;
            break;
          case 2:
            v14 = 1684107310;
            break;
          case 3:
            v14 = 1685024814;
            break;
          case 4:
            break;
          case 5:
            v13 = 0xE300000000000000;
            v14 = 7762990;
            break;
          case 6:
            v13 = 0xE600000000000000;
            v14 = 0x68637461772ELL;
            break;
          case 7:
            v14 = 1667329326;
            break;
          case 8:
            v14 = 0xD000000000000011;
            v13 = 0x800000026A447550;
            break;
          default:
            v13 = 0xE800000000000000;
            v14 = 0x746C75616665642ELL;
            break;
        }
      }

      else
      {
        sub_26A424EF4();

        OUTLINED_FUNCTION_0_7();
        v23 = v15;
        v16 = sub_26A4251B4();
        MEMORY[0x26D65BA70](v16);

        MEMORY[0x26D65BA70](41, 0xE100000000000000);
        v14 = v23;
        v13 = 0xED00002864657A69;
      }

      v18 = *(v24 + 16);
      v17 = *(v24 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_26A10D50C(v17 > 1, v18 + 1, 1, v8, v9, v10, v11);
      }

      *(v24 + 16) = v18 + 1;
      v19 = v24 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v13;
      v12 += 16;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
  sub_26A10D548();
  v20 = sub_26A424B54();
  v22 = v21;

  MEMORY[0x26D65BA70](v20, v22);

  MEMORY[0x26D65BA70](93, 0xE100000000000000);

  return 91;
}

uint64_t FactItemHeroNumber.number.getter()
{
  v2 = OUTLINED_FUNCTION_104();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v22[-v6 - 8];
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = type metadata accessor for _ProtoFactItem_HeroNumber(0);
  OUTLINED_FUNCTION_142(*(v1 + *(v12 + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number, v22);
  OUTLINED_FUNCTION_32_2();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    *v11 = MEMORY[0x277D84F90];
    *(v11 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A130A5C();
  }

  return sub_26A130A5C();
}

void FactItemHeroNumber.text2.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoMultilineTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_104();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v11 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v11, v12);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v13)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v14 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v14);
      if (!v13)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_52_2();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A130A5C();
    v2 = 0;
  }

  v15 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v15);
  OUTLINED_FUNCTION_75();
}

void FactItemHeroNumber.text3.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoMultilineTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_104();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v11 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v11, v12);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v13)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v14 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v14);
      if (!v13)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_52_2();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A130A5C();
    v2 = 0;
  }

  v15 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v15);
  OUTLINED_FUNCTION_75();
}

void sub_26A12D3C4()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_104();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v12 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v12, v13);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v15 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v15);
      if (!v14)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_52_2();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A130A5C();
    v3 = 0;
  }

  v16 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v3, 1, v16);
  OUTLINED_FUNCTION_75();
}

void FactItemHeroNumber.text5.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoMultilineTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_104();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v11 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v11, v12);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v13)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v14 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v14);
      if (!v13)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_52_2();
    }

    OUTLINED_FUNCTION_146_0();
    sub_26A130A5C();
    v2 = 0;
  }

  v15 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v15);
  OUTLINED_FUNCTION_75();
}

void FactItemHeroNumber.action.getter()
{
  OUTLINED_FUNCTION_76();
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_104();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_41(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v12 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v12, v13, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v14)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v14)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_52_2();
    }

    sub_26A130A5C();
    v2 = 0;
  }

  v15 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v16, v2, 1, v15);
  OUTLINED_FUNCTION_75();
}

uint64_t FactItemHeroNumber.componentName.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoFactItem_HeroNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__componentName;
  OUTLINED_FUNCTION_142(v1, v3);

  return OUTLINED_FUNCTION_246();
}

uint64_t FactItemHeroNumber.linkIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for _ProtoFactItem_HeroNumber(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__linkIdentifier;
  OUTLINED_FUNCTION_142(v1, v3);

  return OUTLINED_FUNCTION_246();
}

void _ProtoFactItem_HeroNumber.redactedProto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  v21 = v20;
  v201 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v26 = OUTLINED_FUNCTION_41(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v29);
  v198 = type metadata accessor for _ProtoMultilineTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v38 = OUTLINED_FUNCTION_41(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v45);
  v46 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v52);
  v54 = &v187[-v53];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v56 = OUTLINED_FUNCTION_41(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v59);
  v61 = &v187[-v60];
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v63);
  v65 = &v187[-v64];
  MEMORY[0x28223BE20](v66);
  v68 = &v187[-v67];
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_246();
  sub_26A130C2C();
  v69 = *(type metadata accessor for _ProtoFactItem_HeroNumber(0) + 20);
  v200 = v21;
  v202 = v69;
  v70 = *(v21 + v69);
  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number, &v210);
  sub_26A10FD9C();
  LODWORD(v21) = OUTLINED_FUNCTION_63_0(v68);
  sub_26A0E48F0(v68, &qword_28036C7B8, &unk_26A425BF0);
  if (v21 != 1)
  {
    sub_26A10FD9C();
    if (OUTLINED_FUNCTION_63_0(v65) == 1)
    {
      *v54 = MEMORY[0x277D84F90];
      *(v54 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v71 = OUTLINED_FUNCTION_12_4(*(v46 + 32));
      v72 = v201;
      __swift_storeEnumTagSinglePayload(v71, v73, v74, v201);
      v75 = OUTLINED_FUNCTION_12_4(*(v46 + 36));
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v72);
      v78 = OUTLINED_FUNCTION_63_0(v65);
      v79 = v200;
      if (v78 != 1)
      {
        sub_26A0E48F0(v65, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A130A5C();
      v79 = v200;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_10_6();
    sub_26A130AB0(v54, v80);
    v81 = v202;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v79 + v81);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v83 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v83);
      OUTLINED_FUNCTION_29_0();
      v70 = v84;
      *(v79 + v81) = v84;
    }

    OUTLINED_FUNCTION_46_2();
    v85 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v46);
    OUTLINED_FUNCTION_211(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__number, v209);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, v209);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_63_0(v61);
  OUTLINED_FUNCTION_59_1();
  v88 = v46;
  if (v54 == 1)
  {
    v89 = v200;
    v90 = v198;
  }

  else
  {
    OUTLINED_FUNCTION_128();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v54);
    v89 = v200;
    v90 = v198;
    if (v91)
    {
      v100 = v188;
      *v188 = MEMORY[0x277D84F90];
      *(v100 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_14_3();
      v93 = *(v92 - 256);
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v93);
      OUTLINED_FUNCTION_17_3(v54);
      v101 = v202;
      if (!v91)
      {
        sub_26A0E48F0(v54, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v100 = v188;
      sub_26A130A5C();
      v101 = v202;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_10_6();
    sub_26A130AB0(v100, v102);
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v89 + v101);
    if ((v103 & 1) == 0)
    {
      v104 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v104);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_244(v105);
    }

    OUTLINED_FUNCTION_46_2();
    v106 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v46);
    OUTLINED_FUNCTION_211(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, v208);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, v208);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_23_6();
  if (v54 != 1)
  {
    v46 = v189;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v46);
    v109 = v202;
    if (v91)
    {
      OUTLINED_FUNCTION_49_3(MEMORY[0x277D84F90]);
      v110 = OUTLINED_FUNCTION_12_4(*(v90 + 32));
      v111 = v201;
      __swift_storeEnumTagSinglePayload(v110, v112, v113, v201);
      v114 = OUTLINED_FUNCTION_12_4(*(v90 + 36));
      __swift_storeEnumTagSinglePayload(v114, v115, v116, v111);
      OUTLINED_FUNCTION_48_0(v46);
      if (!v91)
      {
        sub_26A0E48F0(v46, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128();
      sub_26A130A5C();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_5();
    sub_26A130AB0(v54, v117);
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v89 + v109);
    if ((v118 & 1) == 0)
    {
      v119 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v119);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_244(v120);
    }

    OUTLINED_FUNCTION_46_2();
    v121 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v90);
    OUTLINED_FUNCTION_211(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text2, v207);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, v207);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_23_6();
  if (v54 != 1)
  {
    v46 = v190;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(v46);
    v124 = v202;
    if (v91)
    {
      OUTLINED_FUNCTION_49_3(MEMORY[0x277D84F90]);
      v125 = OUTLINED_FUNCTION_12_4(*(v90 + 32));
      v126 = v201;
      __swift_storeEnumTagSinglePayload(v125, v127, v128, v201);
      v129 = OUTLINED_FUNCTION_12_4(*(v90 + 36));
      __swift_storeEnumTagSinglePayload(v129, v130, v131, v126);
      OUTLINED_FUNCTION_48_0(v46);
      if (!v91)
      {
        sub_26A0E48F0(v46, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_128();
      sub_26A130A5C();
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_5();
    sub_26A130AB0(v54, v132);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v89 + v124);
    if ((v133 & 1) == 0)
    {
      v134 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v134);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_244(v135);
    }

    OUTLINED_FUNCTION_46_2();
    v136 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v90);
    OUTLINED_FUNCTION_211(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text3, v206);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, v206);
  v139 = &unk_26A425BF0;
  OUTLINED_FUNCTION_26_4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v88);
  sub_26A0E48F0(v46, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload == 1)
  {
    v141 = MEMORY[0x277D84F90];
  }

  else
  {
    v142 = v191;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v142);
    v143 = v202;
    if (v91)
    {
      v139 = v192;
      *v192 = MEMORY[0x277D84F90];
      v139[4] = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_14_3();
      v145 = *(v144 - 256);
      __swift_storeEnumTagSinglePayload(v146, v147, v148, v145);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v149, v150, v151, v145);
      OUTLINED_FUNCTION_17_3(v142);
      EnumTagSinglePayload = v193;
      if (!v91)
      {
        sub_26A0E48F0(v142, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_46_2();
      EnumTagSinglePayload = v193;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_10_6();
    sub_26A130AB0(v139, v152);
    v153 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v89 + v143);
    v154 = v88;
    if ((v153 & 1) == 0)
    {
      v155 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v155);
      OUTLINED_FUNCTION_29_0();
      OUTLINED_FUNCTION_244(v156);
    }

    v141 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_128();
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(EnumTagSinglePayload, 0, 1, v154);
    OUTLINED_FUNCTION_211(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text4, v205);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, v205);
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_23_6();
  if (EnumTagSinglePayload == 1)
  {
    v157 = v141;
    v158 = v201;
  }

  else
  {
    OUTLINED_FUNCTION_128();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_48_0(EnumTagSinglePayload);
    v159 = v202;
    if (v91)
    {
      v167 = v194;
      v157 = v141;
      *v194 = v141;
      *(v167 + 8) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_14_3();
      v158 = *(v160 - 256);
      __swift_storeEnumTagSinglePayload(v161, v162, v163, v158);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v164, v165, v166, v158);
      OUTLINED_FUNCTION_48_0(EnumTagSinglePayload);
      if (!v91)
      {
        sub_26A0E48F0(EnumTagSinglePayload, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      v167 = v194;
      sub_26A130A5C();
      v157 = v141;
      v158 = v201;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_5();
    sub_26A130AB0(v167, v168);
    v169 = swift_isUniquelyReferenced_nonNull_native();
    v70 = *(v89 + v159);
    if ((v169 & 1) == 0)
    {
      v170 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v170);
      OUTLINED_FUNCTION_29_0();
      v70 = v171;
      *(v89 + v159) = v171;
    }

    OUTLINED_FUNCTION_46_2();
    v172 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v172, v173, v174, v90);
    OUTLINED_FUNCTION_211(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text5, v204);
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142(v70 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, v204);
  v175 = v199;
  sub_26A10FD9C();
  __swift_getEnumTagSinglePayload(v175, 1, v158);
  OUTLINED_FUNCTION_59_1();
  if (EnumTagSinglePayload != 1)
  {
    v176 = v195;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v176);
    v177 = v202;
    if (v91)
    {
      v178 = v196;
      *v196 = v157;
      *(v178 + 8) = 0;
      *(v178 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_17_3(v176);
      v179 = v197;
      if (!v91)
      {
        sub_26A0E48F0(v176, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v178 = v196;
      sub_26A130A5C();
      v179 = v197;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v179);
    sub_26A130AB0(v178, type metadata accessor for _ProtoActionProperty);
    v180 = swift_isUniquelyReferenced_nonNull_native();
    v181 = *(v89 + v177);
    if ((v180 & 1) == 0)
    {
      v182 = type metadata accessor for _ProtoFactItem_HeroNumber._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v182);
      sub_26A2CD7C0();
      v181 = v183;
      *(v89 + v177) = v183;
    }

    OUTLINED_FUNCTION_46_2();
    v184 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v184, v185, v186, v158);
    OUTLINED_FUNCTION_211(v181 + OBJC_IVAR____TtCV10SnippetKit25_ProtoFactItem_HeroNumberP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__action, &v203);
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t FactItemHeroNumber.init(number:text1:text2:text3:text4:text5:action:componentName:linkIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for _ProtoFactItem_HeroNumber(0);
  v27 = a1;
  v28 = a8;
  v29 = a9;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a10;
  v37 = a11;
  OUTLINED_FUNCTION_0_8();
  v19 = sub_26A130B08(v17, v18, &protocol conformance descriptor for _ProtoFactItem_HeroNumber);
  OUTLINED_FUNCTION_56_1(sub_26A1309B8, v26, v20, v19);

  sub_26A0E48F0(a7, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_187_0(a6);
  sub_26A0E48F0(a5, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_187_0(a3);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A12EC0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v102 = a8;
  v100 = a7;
  v98 = a6;
  v95 = a3;
  v96 = a5;
  v94 = a4;
  v14 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v14 - 8);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v16 - 8);
  v107 = &v85 - v17;
  v106 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v106);
  v89 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v90 = &v85 - v20;
  v21 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v21 - 8);
  v104 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v23 - 8);
  v105 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v99 = &v85 - v26;
  MEMORY[0x28223BE20](v27);
  v97 = &v85 - v28;
  v103 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v103);
  v88 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v86 = &v85 - v31;
  MEMORY[0x28223BE20](v32);
  v93 = &v85 - v33;
  MEMORY[0x28223BE20](v34);
  v85 = &v85 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v36 - 8);
  v101 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v85 - v39;
  v41 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v41);
  v87 = &v85 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v85 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v85 - v47;
  v49 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v49 - 8);
  v50 = a2[3];
  v51 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v50);
  (*(v51 + 8))(v50, v51);
  sub_26A130A5C();
  v91 = v48;
  _ProtoFactItem_HeroNumber.number.setter();
  v52 = v94;

  _ProtoFactItem_HeroNumber.componentName.setter(v95, v52, v53, v54, v55);
  sub_26A10FD9C();
  v56 = v109;
  v111 = a1;
  if (v109)
  {
    v57 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    (*(v57 + 8))(v56, v57);
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v41);
    __swift_destroy_boxed_opaque_existential_1(v108);
    if (__swift_getEnumTagSinglePayload(v40, 1, v41) != 1)
    {
      sub_26A130A5C();
      sub_26A130C2C();
      _ProtoFactItem_HeroNumber.text1.setter();
      sub_26A130AB0(v45, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v108, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v41);
  }

  sub_26A0E48F0(v40, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v58 = v109;
  v59 = v103;
  if (v109)
  {
    v60 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    (*(v60 + 8))(v58, v60);
    v61 = v97;
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v59);
    __swift_destroy_boxed_opaque_existential_1(v108);
    if (__swift_getEnumTagSinglePayload(v61, 1, v59) != 1)
    {
      v62 = v85;
      sub_26A130A5C();
      sub_26A130C2C();
      _ProtoFactItem_HeroNumber.text2.setter();
      sub_26A130AB0(v62, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v108, &qword_28036CB10, &unk_26A426460);
    v61 = v97;
    __swift_storeEnumTagSinglePayload(v97, 1, 1, v59);
  }

  sub_26A0E48F0(v61, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v63 = v109;
  if (v109)
  {
    v64 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    (*(v64 + 8))(v63, v64);
    v65 = v99;
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v59);
    __swift_destroy_boxed_opaque_existential_1(v108);
    if (__swift_getEnumTagSinglePayload(v65, 1, v59) != 1)
    {
      v66 = v86;
      sub_26A130A5C();
      sub_26A130C2C();
      _ProtoFactItem_HeroNumber.text3.setter();
      sub_26A130AB0(v66, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v108, &qword_28036CB10, &unk_26A426460);
    v65 = v99;
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v59);
  }

  sub_26A0E48F0(v65, &qword_28036CAE0, &unk_26A4273F0);
LABEL_16:
  sub_26A10FD9C();
  v67 = v109;
  if (v109)
  {
    v68 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    (*(v68 + 8))(v67, v68);
    v69 = v101;
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v41);
    __swift_destroy_boxed_opaque_existential_1(v108);
    if (__swift_getEnumTagSinglePayload(v69, 1, v41) != 1)
    {
      v70 = v87;
      sub_26A130A5C();
      sub_26A130C2C();
      _ProtoFactItem_HeroNumber.text4.setter();
      sub_26A130AB0(v70, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v108, &qword_28036CB08, &unk_26A428720);
    v69 = v101;
    __swift_storeEnumTagSinglePayload(v101, 1, 1, v41);
  }

  sub_26A0E48F0(v69, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v71 = v109;
  if (v109)
  {
    v72 = v59;
    v73 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    (*(v73 + 8))(v71, v73);
    v74 = v105;
    sub_26A130A5C();
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v72);
    __swift_destroy_boxed_opaque_existential_1(v108);
    if (__swift_getEnumTagSinglePayload(v74, 1, v72) != 1)
    {
      v75 = v88;
      sub_26A130A5C();
      sub_26A130C2C();
      _ProtoFactItem_HeroNumber.text5.setter();
      sub_26A130AB0(v75, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v108, &qword_28036CB10, &unk_26A426460);
    v74 = v105;
    __swift_storeEnumTagSinglePayload(v105, 1, 1, v59);
  }

  sub_26A0E48F0(v74, &qword_28036CAE0, &unk_26A4273F0);
LABEL_26:
  sub_26A10FD9C();
  v76 = v109;
  if (!v109)
  {
    sub_26A0E48F0(v108, &qword_28036CAF8, &unk_26A426D30);
    v78 = v107;
    __swift_storeEnumTagSinglePayload(v107, 1, 1, v106);
LABEL_31:
    result = sub_26A0E48F0(v78, &off_28036C7C0, &off_26A427400);
    if (!a12)
    {
      return result;
    }

    goto LABEL_32;
  }

  v77 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  (*(v77 + 8))(v76, v77);
  v78 = v107;
  sub_26A130A5C();
  v79 = v106;
  __swift_storeEnumTagSinglePayload(v78, 0, 1, v106);
  __swift_destroy_boxed_opaque_existential_1(v108);
  if (__swift_getEnumTagSinglePayload(v78, 1, v79) == 1)
  {
    goto LABEL_31;
  }

  v80 = v90;
  sub_26A130A5C();
  sub_26A130C2C();
  _ProtoFactItem_HeroNumber.action.setter();
  result = sub_26A130AB0(v80, type metadata accessor for _ProtoActionProperty);
  if (a12)
  {
LABEL_32:

    return _ProtoFactItem_HeroNumber.linkIdentifier.setter(a11, a12, v82, v83, v84);
  }

  return result;
}

void FactItemHeroNumber.init(number:text1:text2:text3:text4:text5:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_76();
  v36 = v22;
  v37 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v38 = v30;
  v39 = v29;
  v40 = v31;
  sub_26A0E5D68(v31, v59);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_HeroNumber(0);
  v42 = v59;
  v43 = v36;
  v44 = a21;
  v45 = v58;
  v46 = v57;
  v47 = v56;
  v48 = v55;
  v49 = v54;
  v50 = v53;
  OUTLINED_FUNCTION_0_8();
  v34 = sub_26A130B08(v32, v33, &protocol conformance descriptor for _ProtoFactItem_HeroNumber);
  v51 = 0;
  v52 = 0;
  OUTLINED_FUNCTION_56_1(sub_26A130C80, v41, v35, v34);

  sub_26A0E48F0(v24, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v26);
  sub_26A0E48F0(v28, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_31_2(v37);
  OUTLINED_FUNCTION_31_2(v38);
  OUTLINED_FUNCTION_187_0(v39);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_26A0E48F0(v53, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v54);
  OUTLINED_FUNCTION_187_0(v55);
  OUTLINED_FUNCTION_31_2(v56);
  OUTLINED_FUNCTION_31_2(v57);
  OUTLINED_FUNCTION_187_0(v58);
  __swift_destroy_boxed_opaque_existential_1(v59);
  OUTLINED_FUNCTION_75();
}

void FactItemHeroNumber.init(number:text1:text2:text3:text4:action:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v9 = v3;
  v10 = v2;
  v11 = v4;
  v12 = v6;
  v13 = v5;
  sub_26A0E5D68(v5, v28);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_1();
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_26A10FD9C();
  sub_26A0E5D68(v28, v20);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_HeroNumber(0);
  OUTLINED_FUNCTION_0_8();
  sub_26A130B08(v7, v8, &protocol conformance descriptor for _ProtoFactItem_HeroNumber);
  sub_26A4249C4();
  sub_26A0E48F0(v1, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v9);
  OUTLINED_FUNCTION_31_2(v10);
  OUTLINED_FUNCTION_31_2(v11);
  OUTLINED_FUNCTION_164_0(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_26A0E48F0(v21, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v22);
  OUTLINED_FUNCTION_164_0(v24);
  OUTLINED_FUNCTION_31_2(&v25);
  OUTLINED_FUNCTION_31_2(&v26);
  OUTLINED_FUNCTION_164_0(&v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  sub_26A0E48F0(v14, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v15);
  OUTLINED_FUNCTION_164_0(v16);
  OUTLINED_FUNCTION_31_2(v17);
  OUTLINED_FUNCTION_31_2(v18);
  OUTLINED_FUNCTION_164_0(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_75();
}

void FactItemHeroNumber.init(number:text1:text2:text3:text4:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v14 = v2;
  v15 = v3;
  v13 = v4;
  v16 = v5;
  v17 = v7;
  v18 = v6;
  v19 = v8;
  sub_26A0E5D68(v8, v46);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_1();
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_26A10FD9C();
  sub_26A0E5D68(v46, v38);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_2();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_HeroNumber(0);
  v21 = v38;
  v22 = v15;
  v23 = v1;
  v24 = v37;
  v25 = v36;
  v26 = v35;
  v27 = v34;
  v28 = v33;
  v29 = v32;
  OUTLINED_FUNCTION_0_8();
  v11 = sub_26A130B08(v9, v10, &protocol conformance descriptor for _ProtoFactItem_HeroNumber);
  v30 = 0;
  v31 = 0;
  OUTLINED_FUNCTION_56_1(sub_26A130C80, v20, v12, v11);

  sub_26A0E48F0(v13, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_164_0(v14);
  OUTLINED_FUNCTION_31_2(v16);
  OUTLINED_FUNCTION_31_2(v17);
  OUTLINED_FUNCTION_164_0(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  sub_26A0E48F0(v39, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v40);
  OUTLINED_FUNCTION_164_0(v42);
  OUTLINED_FUNCTION_31_2(&v43);
  OUTLINED_FUNCTION_31_2(&v44);
  OUTLINED_FUNCTION_164_0(&v45);
  __swift_destroy_boxed_opaque_existential_1(v46);
  sub_26A0E48F0(v32, &qword_28036CAF8, &unk_26A426D30);
  OUTLINED_FUNCTION_31_2(v33);
  OUTLINED_FUNCTION_164_0(v34);
  OUTLINED_FUNCTION_31_2(v35);
  OUTLINED_FUNCTION_31_2(v36);
  OUTLINED_FUNCTION_164_0(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  OUTLINED_FUNCTION_75();
}

uint64_t FactItemHeroNumber.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoFactItem_HeroNumber(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_11_7();
  sub_26A130C2C();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_24_6();
  sub_26A130A5C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t FactItemHeroNumber.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for FactItemHeroNumber(0);
  *(inited + 64) = &protocol witness table for FactItemHeroNumber;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_25_5();
  sub_26A130C2C();
  OUTLINED_FUNCTION_142(&off_280372D50, v8);

  v2 = sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  v6[2] = inited;
  v6[3] = v2;
  v6[4] = 0;
  v7 = -1;
  v3 = sub_26A130B08(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  OUTLINED_FUNCTION_56_1(sub_26A10D098, v6, v4, v3);

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for FactItemHeroNumber(uint64_t a1)
{
  result = qword_28036D2C0;
  if (!qword_28036D2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A130A5C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A130AB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A130B08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A130BC0(uint64_t a1)
{
  result = type metadata accessor for _ProtoFactItem_HeroNumber(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A130C2C()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v4 + v1, 1, 1, a1);
  __swift_storeEnumTagSinglePayload(v4 + *(v2 + 36), 1, 1, a1);
  return __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return type metadata accessor for _ProtoFactItem_HeroNumber(0);
}

uint64_t OUTLINED_FUNCTION_23_6()
{
  __swift_getEnumTagSinglePayload(v2, 1, v3);

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return sub_26A10FD9C();
}

void OUTLINED_FUNCTION_29_0()
{

  sub_26A2CD7C0();
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t a1)
{

  return sub_26A0E48F0(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return sub_26A130A5C();
}

uint64_t OUTLINED_FUNCTION_48_2()
{

  return sub_26A0E48F0(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_49_3@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 - 256);
  *v4 = a2;
  *(v4 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return sub_26A130A5C();
}

uint64_t OUTLINED_FUNCTION_58_2()
{

  return type metadata accessor for _ProtoFactItem_HeroNumber(0);
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return sub_26A0E48F0(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_61_1()
{

  return type metadata accessor for _ProtoActionProperty(0);
}

uint64_t OUTLINED_FUNCTION_62_1(uint64_t a1, uint64_t *a2)
{

  return sub_26A0E48F0(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_63_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t TertiaryHeaderStandard.text1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  type metadata accessor for _ProtoTertiaryHeader_Standard(0);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v4, 1, v5);
  if (v10)
  {
    *v9 = MEMORY[0x277D84F90];
    *(v9 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v11 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    OUTLINED_FUNCTION_37(v4, 1, v5);
    if (!v10)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A132288();
  }

  return sub_26A132288();
}

uint64_t TertiaryHeaderStandard.action.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  type metadata accessor for _ProtoTertiaryHeader_Standard(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v25;
  sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v17 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v17, v18, v1);
    if (v19)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v20 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v20, v21, v1);
      if (!v19)
      {
        sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A132288();
    }

    sub_26A132288();
    v14 = 0;
  }

  v22 = type metadata accessor for ActionProperty(0);
  return __swift_storeEnumTagSinglePayload(v16, v14, 1, v22);
}

uint64_t _ProtoTertiaryHeader_Standard.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v58 = (v3 - v4);
  MEMORY[0x28223BE20](v5);
  v57 = (&v55 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v56 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v55 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  OUTLINED_FUNCTION_0_9();
  sub_26A132234();
  v60 = type metadata accessor for _ProtoTertiaryHeader_Standard(0);
  v29 = *(v60 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v14);
  sub_26A0E48F0(v28, &qword_28036C7B8, &unk_26A425BF0);
  v31 = MEMORY[0x277D84F90];
  v32 = EnumTagSinglePayload == 1;
  v33 = v59;
  if (!v32)
  {
    sub_26A10FD9C();
    v34 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v34, v35, v14);
    if (v32)
    {
      *v20 = v31;
      *(v20 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v33);
      v42 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v42, v43, v14);
      if (!v32)
      {
        sub_26A0E48F0(v25, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A132288();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A1322DC(v20, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v29, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A132288();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v14);
  }

  v47 = *(v60 + 28);
  sub_26A10FD9C();
  v48 = __swift_getEnumTagSinglePayload(v13, 1, v33);
  result = sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (v48 != 1)
  {
    v50 = v56;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v50, 1, v33);
    if (v32)
    {
      v51 = v57;
      *v57 = v31;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v50, 1, v33);
      if (!v32)
      {
        sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v51 = v57;
      sub_26A132288();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v58);
    sub_26A1322DC(v51, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v47, &off_28036C7C0, &off_26A427400);
    sub_26A132288();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v52, v53, v54, v33);
  }

  return result;
}

uint64_t TertiaryHeaderStandard.init(text1:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoTertiaryHeader_Standard(0);
  OUTLINED_FUNCTION_4_8();
  sub_26A1325AC(v6, v7, &protocol conformance descriptor for _ProtoTertiaryHeader_Standard);
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A131998(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v26[3] = a3;
  v7 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - v9;
  v27 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v27);
  v26[2] = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v26[1] = v26 - v13;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v15 - 8);
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  (*(v17 + 8))(v16, v17);
  sub_26A132288();
  v18 = type metadata accessor for _ProtoTertiaryHeader_Standard(0);
  v19 = *(v18 + 24);
  sub_26A0E48F0(a1 + v19, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A132288();
  __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v14);
  sub_26A10FD9C();
  v20 = v31;
  if (!v31)
  {
    sub_26A0E48F0(v30, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v27);
    goto LABEL_5;
  }

  v21 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v21 + 8))(v20, v21);
  sub_26A132288();
  v22 = v27;
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (__swift_getEnumTagSinglePayload(v10, 1, v22) == 1)
  {
LABEL_5:
    sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
    goto LABEL_6;
  }

  sub_26A132288();
  sub_26A132288();
  v23 = *(v18 + 28);
  sub_26A0E48F0(a1 + v23, &off_28036C7C0, &off_26A427400);
  sub_26A132288();
  __swift_storeEnumTagSinglePayload(a1 + v23, 0, 1, v22);
LABEL_6:
  v24 = v29;

  *a1 = v28;
  a1[1] = v24;
  return result;
}

uint64_t TertiaryHeaderStandard.init(text1:action:)(void *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoTertiaryHeader_Standard(0);
  OUTLINED_FUNCTION_4_8();
  sub_26A1325AC(v4, v5, &protocol conformance descriptor for _ProtoTertiaryHeader_Standard);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

Swift::String __swiftcall TertiaryHeaderStandard.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8;
  v10 = type metadata accessor for TertiaryHeaderStandard(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D010, &qword_26A426C38);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = v41 - v20;
  OUTLINED_FUNCTION_3_7();
  sub_26A132234();
  if (redacted)
  {
    _ProtoTertiaryHeader_Standard.redactedProto.getter(v14);
  }

  else
  {
    sub_26A132234();
  }

  sub_26A132288();
  v21[*(v18 + 32)] = redacted;
  sub_26A1322DC(v17, type metadata accessor for TertiaryHeaderStandard);
  *&v21[*(v18 + 28)] = MEMORY[0x277D84F90];
  TertiaryHeaderStandard.text1.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_26A1047AC(v9);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  TertiaryHeaderStandard.action.getter(v5);
  sub_26A1046A8();
  sub_26A0E48F0(v5, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7700(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v27, v28, v29, v30, v41[0], v41[1]);

  sub_26A0FA494(v31, v32, v33, v34, v35, v36, v37);
  sub_26A0E48F0(v21, &qword_28036D010, &qword_26A426C38);
  v38 = OUTLINED_FUNCTION_175();
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t type metadata accessor for TertiaryHeaderStandard(uint64_t a1)
{
  result = qword_28036D2D8;
  if (!qword_28036D2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A132234()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A132288()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A1322DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t TertiaryHeaderStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoTertiaryHeader_Standard(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_0_9();
  sub_26A132234();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_5();
  sub_26A132288();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t TertiaryHeaderStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for TertiaryHeaderStandard(0);
  *(inited + 64) = &protocol witness table for TertiaryHeaderStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_3_7();
  sub_26A132234();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A1325AC(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A1325AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A132664(uint64_t a1)
{
  result = type metadata accessor for _ProtoTertiaryHeader_Standard(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return type metadata accessor for _ProtoTertiaryHeader_Standard(0);
}

uint64_t _ProtoVisualProperty.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  type metadata accessor for _ProtoVisualProperty(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v1 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
}

uint64_t type metadata accessor for _ProtoVisualProperty(uint64_t a1)
{
  result = qword_2815796A0;
  if (!qword_2815796A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _ProtoVisualProperty.visuals.setter()
{
  OUTLINED_FUNCTION_14_4();

  *v1 = v0;
  return result;
}

uint64_t _ProtoVisualProperty.focusAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_5(*(v2 + 32));
  v3 = type metadata accessor for _ProtoActionProperty(0);
  v4 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v4, v5, v3);
  if (v6)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    v7 = OUTLINED_FUNCTION_71();
    result = OUTLINED_FUNCTION_37(v7, v8, v3);
    if (!v6)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44();
    return sub_26A132A04(v9, v10);
  }

  return result;
}

uint64_t sub_26A132994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A132A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoActionProperty(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoVisualProperty.focusAction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoVisualProperty(0) + 32);
  sub_26A13440C();
  sub_26A132A04(a1, v1 + v3);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*_ProtoVisualProperty.focusAction.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoVisualProperty(0) + 32);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_12_5(v11);
  v12 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v12, v13, v7);
  if (v14)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v15, v16, v7);
    if (!v14)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A132A04(v6, v10);
  }

  return sub_26A132C28;
}

uint64_t sub_26A132C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoActionProperty(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A132C90(uint64_t a1)
{
  v2 = type metadata accessor for _ProtoActionProperty(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _ProtoVisualProperty.hasFocusAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_5(*(v2 + 32));
  type metadata accessor for _ProtoActionProperty(0);
  v3 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v3, v4, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  OUTLINED_FUNCTION_44();
  sub_26A13440C();
  return v7;
}

Swift::Void __swiftcall _ProtoVisualProperty.clearFocusAction()()
{
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A13440C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoVisualProperty.selectedAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_5(*(v2 + 36));
  v3 = type metadata accessor for _ProtoActionProperty(0);
  v4 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v4, v5, v3);
  if (v6)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    v7 = OUTLINED_FUNCTION_71();
    result = OUTLINED_FUNCTION_37(v7, v8, v3);
    if (!v6)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_44();
    return sub_26A132A04(v9, v10);
  }

  return result;
}

uint64_t sub_26A132EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for _ProtoActionProperty(0);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A132C2C(a1, v10);
  return a5(v10);
}

uint64_t _ProtoVisualProperty.selectedAction.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoVisualProperty(0) + 36);
  sub_26A13440C();
  sub_26A132A04(a1, v1 + v3);
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_126_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*_ProtoVisualProperty.selectedAction.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for _ProtoActionProperty(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for _ProtoVisualProperty(0) + 36);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_12_5(v11);
  v12 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v12, v13, v7);
  if (v14)
  {
    OUTLINED_FUNCTION_10_7(MEMORY[0x277D84F90]);
    v15 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v15, v16, v7);
    if (!v14)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A132A04(v6, v10);
  }

  return sub_26A1349B0;
}

void sub_26A133104(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_26A132C2C((*a1)[4], v4);
    sub_26A13440C();
    sub_26A132A04(v4, v8 + v3);
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    sub_26A132C90(v5);
  }

  else
  {
    sub_26A13440C();
    sub_26A132A04(v5, v8 + v3);
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t _ProtoVisualProperty.hasSelectedAction.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v0);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_12_5(*(v2 + 36));
  type metadata accessor for _ProtoActionProperty(0);
  v3 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v3, v4, v5);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  OUTLINED_FUNCTION_44();
  sub_26A13440C();
  return v7;
}

Swift::Void __swiftcall _ProtoVisualProperty.clearSelectedAction()()
{
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A13440C();
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();

  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _ProtoVisualProperty.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _ProtoVisualProperty(0) + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t _ProtoVisualProperty.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _ProtoVisualProperty(0) + 28);
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

void (*_ProtoVisualProperty.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  type metadata accessor for _ProtoVisualProperty(0);
  return nullsub_1;
}

uint64_t sub_26A133474()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036D2E8);
  __swift_project_value_buffer(v0, qword_28036D2E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A4271D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "visuals";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "redacted";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "focus_action";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "selected_action";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "safe_for_logging";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t static _ProtoVisualProperty._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C010 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_28036D2E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _ProtoVisualProperty.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_26A424834();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_5_6();
        sub_26A13386C(v6, v7, v8, v9);
        break;
      case 2:
      case 5:
        sub_26A424874();
        break;
      case 3:
        v10 = OUTLINED_FUNCTION_5_6();
        sub_26A13390C(v10, v11, v12, v13);
        break;
      case 4:
        v14 = OUTLINED_FUNCTION_5_6();
        sub_26A1339C0(v14, v15, v16, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A13386C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoVisualElement(0);
  sub_26A13496C();
  return sub_26A424934();
}

uint64_t sub_26A13390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoVisualProperty(0);
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A13496C();
  return sub_26A424944();
}

uint64_t sub_26A1339C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoVisualProperty(0);
  type metadata accessor for _ProtoActionProperty(0);
  sub_26A13496C();
  return sub_26A424944();
}

uint64_t _ProtoVisualProperty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for _ProtoVisualElement(0), sub_26A13496C(), result = sub_26A424A74(), !v4))
  {
    if (v3[8] != 1 || (OUTLINED_FUNCTION_87(), result = sub_26A4249E4(), !v4))
    {
      OUTLINED_FUNCTION_87();
      result = sub_26A133BF0(v6, v7, v8, v9);
      if (!v4)
      {
        OUTLINED_FUNCTION_87();
        sub_26A133D90(v10, v11, v12, v13);
        if (v3[9] == 1)
        {
          OUTLINED_FUNCTION_87();
          sub_26A4249E4();
        }

        type metadata accessor for _ProtoVisualProperty(0);
        return sub_26A424774();
      }
    }
  }

  return result;
}

uint64_t sub_26A133BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ProtoVisualProperty(0);
  sub_26A132994(a1 + *(v11 + 32), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A132A04(v7, v10);
  sub_26A13496C();
  sub_26A424A84();
  return sub_26A132C90(v10);
}

uint64_t sub_26A133D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ProtoVisualProperty(0);
  sub_26A132994(a1 + *(v11 + 36), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_26A13440C();
  }

  sub_26A132A04(v7, v10);
  sub_26A13496C();
  sub_26A424A84();
  return sub_26A132C90(v10);
}

uint64_t static _ProtoVisualProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = (&v50 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v12 = OUTLINED_FUNCTION_41(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = (&v50 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  sub_26A0DF264(*a1, *a2, v27, v28, v29, v30, v31, v32, v50, v51, v52, v53, v54, v55);
  if ((v33 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_43;
  }

  v51 = v7;
  v52 = v15;
  v53 = type metadata accessor for _ProtoVisualProperty(0);
  v34 = *(v53 + 32);
  v35 = *(v19 + 48);
  sub_26A132994(a1 + v34, v26);
  sub_26A132994(a2 + v34, &v26[v35]);
  OUTLINED_FUNCTION_2_4(v26);
  if (v39)
  {
    OUTLINED_FUNCTION_2_4(&v26[v35]);
    if (!v39)
    {
      goto LABEL_42;
    }

    sub_26A13440C();
  }

  else
  {
    sub_26A132994(v26, v18);
    OUTLINED_FUNCTION_2_4(&v26[v35]);
    if (v39)
    {
      sub_26A132C90(v18);
      goto LABEL_42;
    }

    sub_26A132A04(&v26[v35], v10);
    sub_26A0E36D8(*v18, *v10);
    if ((v40 & 1) == 0 || (v18[1] == v10[1] ? (v41 = v18[2] == v10[2]) : (v41 = 0), !v41 && (sub_26A425354() & 1) == 0))
    {
      sub_26A132C90(v10);
      sub_26A132C90(v18);
      goto LABEL_42;
    }

    sub_26A424794();
    OUTLINED_FUNCTION_0_10();
    sub_26A13496C();
    v42 = sub_26A424B64();
    sub_26A132C90(v10);
    sub_26A132C90(v18);
    sub_26A13440C();
    if ((v42 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v36 = *(v53 + 36);
  v37 = *(v19 + 48);
  sub_26A132994(a1 + v36, v23);
  sub_26A132994(a2 + v36, v23 + v37);
  OUTLINED_FUNCTION_2_4(v23);
  if (v39)
  {
    OUTLINED_FUNCTION_2_4(v23 + v37);
    if (v39)
    {
      sub_26A13440C();
      goto LABEL_13;
    }

LABEL_42:
    sub_26A13440C();
    goto LABEL_43;
  }

  v43 = v52;
  sub_26A132994(v23, v52);
  OUTLINED_FUNCTION_2_4(v23 + v37);
  if (v44)
  {
    sub_26A132C90(v43);
    goto LABEL_42;
  }

  v45 = v51;
  sub_26A132A04(v23 + v37, v51);
  sub_26A0E36D8(*v43, *v45);
  if ((v46 & 1) == 0 || (v43[1] == v45[1] ? (v47 = v43[2] == v45[2]) : (v47 = 0), !v47 && (sub_26A425354() & 1) == 0))
  {
    sub_26A132C90(v45);
    sub_26A132C90(v43);
    goto LABEL_42;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_10();
  sub_26A13496C();
  v48 = sub_26A424B64();
  sub_26A132C90(v45);
  sub_26A132C90(v43);
  sub_26A13440C();
  if ((v48 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_13:
  if (*(a1 + 9) != *(a2 + 9))
  {
LABEL_43:
    v38 = 0;
    return v38 & 1;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_10();
  sub_26A13496C();
  v38 = sub_26A424B64();
  return v38 & 1;
}

uint64_t sub_26A13440C()
{
  OUTLINED_FUNCTION_14_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _ProtoVisualProperty.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoVisualProperty(0);
  sub_26A13496C();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A13458C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A13496C();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A13469C(uint64_t a1)
{
  v2 = sub_26A13496C();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A134754(uint64_t a1, uint64_t a2)
{
  sub_26A13496C();

  return sub_26A4249B4();
}

void sub_26A1347FC(uint64_t a1)
{
  sub_26A134908(319, &qword_28036D310, type metadata accessor for _ProtoVisualElement, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26A424794();
    if (v2 <= 0x3F)
    {
      sub_26A134908(319, qword_281579718, type metadata accessor for _ProtoActionProperty, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A134908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26A13496C()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_9()
{

  return type metadata accessor for _ProtoVisualProperty(0);
}

uint64_t OUTLINED_FUNCTION_10_7@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  v2[1] = 0;
  v2[2] = 0xE000000000000000;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_12_5@<X0>(uint64_t a1@<X8>)
{

  return sub_26A132994(v1 + a1, v2);
}

uint64_t sub_26A134AA4(void *a1)
{
  v4 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-v6 - 8];
  v8 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(0);
  OUTLINED_FUNCTION_142(*(v2 + *(v12 + 20)) + *a1, v23);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v7, 1, v8);
  if (v13)
  {
    *v11 = MEMORY[0x277D84F90];
    *(v11 + 4) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    OUTLINED_FUNCTION_37(v7, 1, v8);
    if (!v13)
    {
      sub_26A0E48F0(v7, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A138BEC();
  }

  return sub_26A138BEC();
}

void sub_26A134C90()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoTextProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v10, v11);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v13 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v13);
      if (!v12)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_2();
    }

    OUTLINED_FUNCTION_58_3();
    v3 = 0;
  }

  v14 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v3, 1, v14);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumberV2.text5.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoMultilineTextProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_2();
    }

    OUTLINED_FUNCTION_58_3();
    v2 = 0;
  }

  v13 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumberV2.thumbnail1.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoVisualProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_2();
    }

    OUTLINED_FUNCTION_58_3();
    v2 = 0;
  }

  v13 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE8, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumberV2.thumbnail2.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  type metadata accessor for _ProtoVisualProperty(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v6 = OUTLINED_FUNCTION_41_2();
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v9 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v9, v10);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v11)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v12 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v12);
      if (!v11)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_2();
    }

    OUTLINED_FUNCTION_58_3();
    v2 = 0;
  }

  v13 = type metadata accessor for VisualProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE8, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

void SummaryItemPairNumberV2.action.getter()
{
  OUTLINED_FUNCTION_76();
  v5 = OUTLINED_FUNCTION_239(v4);
  type metadata accessor for _ProtoActionProperty(v5);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v7 = OUTLINED_FUNCTION_41_2();
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_241();
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v10 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v10, v11, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v12)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v12)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_50_2();
    }

    sub_26A138BEC();
    v2 = 0;
  }

  v13 = type metadata accessor for ActionProperty(0);
  __swift_storeEnumTagSinglePayload(v14, v2, 1, v13);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemPairNumberV2.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_PairNumberV2(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit30_ProtoSummaryItem_PairNumberV2P33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142(v1, v4);
  v2 = *v1;

  return v2;
}