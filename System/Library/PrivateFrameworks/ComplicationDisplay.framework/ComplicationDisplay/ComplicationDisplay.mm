uint64_t sub_243D75CB4(uint64_t a1, int a2)
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

uint64_t sub_243D75CD4(uint64_t result, int a2, int a3)
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

void *sub_243D75CFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_243D75D28()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D75D70(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  sub_243DAD9E0();
  sub_243DAD9E0();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  sub_243DAE070();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  sub_243DAD9E0();
  swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_243D75F50(void *a1)
{
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  sub_243DAD9E0();
  swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBABB8, &qword_27EDBAB88, &unk_243DB16C0, MEMORY[0x277CDF4F0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

id sub_243D761C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (*(v3 + 16))
  {
    result = [*(v3 + 32) textProvider];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_243D76210(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return ComplicationCurvedLabelViewConfiguration.textProvider.setter(v1);
}

uint64_t sub_243D76240@<X0>(uint64_t *a1@<X8>)
{
  result = ComplicationCurvedLabelViewConfiguration.contentProviders.getter();
  *a1 = result;
  return result;
}

uint64_t sub_243D7629C()
{

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_243D762F0(void *a1)
{
  sub_243DAD9E0();
  sub_243D940EC();
  return swift_getWitnessTable();
}

uint64_t sub_243D76354()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE68, &qword_243DB2060);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 32);
  if (v7 != 255)
  {
    sub_243D942A8(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), v7);
  }

  v8 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  sub_243D942A8(*(v0 + v8), *(v0 + v8 + 8), *(v0 + v8 + 16), *(v0 + v8 + 24), *(v0 + v8 + 32));

  return MEMORY[0x2821FE8E8](v0, v8 + 33, v3 | 7);
}

uint64_t sub_243D76440()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D76488(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  sub_243DAD9E0();
  sub_243DAD9E0();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  sub_243DAE070();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  sub_243DAD9E0();
  swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_243D76648()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D767A8(uint64_t *a1, double a2, double a3, double a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v9 = *(a1 + 3);
  v10 = *(a1 + 32);
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = v9;
  v15 = v10;
  return sub_243D9A4DC(&v12, v9, *&v13, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_243D76800()
{

  sub_243D9ACF4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_243D7685C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return ComplicationCornerViewConfiguration.outerLabel.setter(v1);
}

uint64_t get_enum_tag_for_layout_string_19ComplicationDisplay0A23CornerViewConfigurationV5LabelO_0(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_243D768B8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_243D768D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for ComplicationCornerCircularView(255, *a1, v5, a4);
  type metadata accessor for ComplicationCornerTextView(255, v4, v5, v6);
  sub_243DADC40();
  sub_243DADC40();
  type metadata accessor for ComplicationCornerGaugeView(255, v4, v5, v7);
  sub_243DADC40();
  sub_243DADC40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getWitnessTable();
  sub_243D9B860();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_243D9B8B4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_243D9B908();
  swift_getWitnessTable();
  sub_243D940EC();
  swift_getWitnessTable();
  sub_243DAD990();
  return swift_getWitnessTable();
}

uint64_t sub_243D76B40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D76BF4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_243D76C24@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_243D76D34()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_243D76D6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D76DA4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_243D76DDC()
{
  MEMORY[0x245D52770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D76E20(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB2B8, &unk_243DB3390);
  v5 = v2;
  v6 = *(a1 + 1);
  v7 = v3;
  type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier(255, &v5);
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EDBB2C0, &qword_243DB33A0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  sub_243DAE070();
  return swift_getWitnessTable();
}

uint64_t sub_243D76F7C(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  type metadata accessor for ComplicationCircularBezelView.ContainerShapeModifier(255, v3);
  swift_getWitnessTable();
  sub_243DADC70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAE20, &unk_243DB35A0);
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
  sub_243DAD9E0();
  sub_243DAD9E0();
  sub_243DADC40();
  swift_getWitnessTable();
  sub_243D90C40(&qword_27EDBAE18, &qword_27EDBAE20, &unk_243DB35A0, MEMORY[0x277CE07C8]);
  swift_getWitnessTable();
  sub_243D90C40(qword_27EDBB0E0, &qword_27EDBB0C8, &unk_243DB2A00, MEMORY[0x277CE07A8]);
  swift_getWitnessTable();
  sub_243D940EC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_243D77188@<X0>(_BYTE *a1@<X8>)
{
  sub_243DA5D24();
  result = sub_243DADAD0();
  *a1 = v3;
  return result;
}

uint64_t sub_243D77224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDBB418, "*$");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_243D772E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDBB418, "*$");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_243D773A8()
{
  MEMORY[0x245D52770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_243D773E0()
{
  v1 = (type metadata accessor for ComplicationCurvedTextViewRepresentable(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3;

  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAD00, &qword_243DB1B28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_243DAD9F0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_243D7757C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_243D775CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_font;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_243D77638@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_243D77690(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_scale;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_243D7770C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243DADAB0();
  *a1 = result;
  return result;
}

uint64_t sub_243D77768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243DADA50();
  *a1 = result;
  return result;
}

BOOL CDTemplicateComplicationShouldPerformFullFade(void *a1)
{
  v1 = a1;
  v2 = [v1 conformsToProtocol:&unk_28570E750] && (objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend(v1, "timelineAnimationFadeTypeOverride") == 1;

  return v2;
}

void sub_243D791A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id CDGenerateMeterLayersOnLayer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:18];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  for (i = 0; i != 18; ++i)
  {
    v7 = objc_opt_new();
    if (_CDMeterDisabledLayerActions_onceToken != -1)
    {
      CDGenerateMeterLayersOnLayer_cold_1();
    }

    [v7 setActions:_CDMeterDisabledLayerActions__dictionary];
    v8 = [MEMORY[0x277D75348] systemGrayColor];
    [v7 setFillColor:{objc_msgSend(v8, "CGColor")}];

    [v3 addSublayer:v7];
    [v5 addObject:v7];
    if (v4)
    {
      v4[2](v4, v7, i, i == 10, i / 18.0);
    }
  }

  [MEMORY[0x277CD9FF0] commit];

  return v5;
}

void CDColorizeMeterProgress(void *a1, void *a2, void *a3, double a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if ([v7 count])
  {
    for (i = 0; i < [v7 count]; ++i)
    {
      v11 = [v7 objectAtIndexedSubscript:i];
      v12 = v11;
      if (i / 18.0 >= a4)
      {
        [v11 setFillColor:0];
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = ([v8 count] * a4);
        if ([v8 count] <= v13)
        {
          [v8 lastObject];
        }

        else
        {
          [v8 objectAtIndexedSubscript:v13];
        }
        v14 = ;
        [v12 setFillColor:{objc_msgSend(v14, "CGColor")}];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      v16[0] = v9;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      [v12 setFilters:v15];

LABEL_11:
    }
  }
}

id CDGenerateMeterBackgroundGradientColors(uint64_t a1)
{
  v1 = a1;
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:a1];
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
    [i addObject:v3];
  }

  return i;
}

uint64_t CLKUpdateReasonFromCDReason(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return 0;
  }

  return result;
}

__n64 perpendicularClockwise(double a1)
{
  v1 = -*&a1;
  result.n64_u32[0] = vdup_lane_s32(*&a1, 1).u32[0];
  result.n64_f32[1] = v1;
  return result;
}

void sub_243D7E9D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_243D7EC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{

  return objc_opt_class();
}

uint64_t __CDShowGossamerUI_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_7);
  if (_block_invoke___cachedDevice_7)
  {
    v3 = _block_invoke___cachedDevice_7 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_7))
  {
    v5 = _block_invoke_value_3;
  }

  else
  {
    _block_invoke___cachedDevice_7 = v2;
    _block_invoke___previousCLKDeviceVersion_7 = [v2 version];
    v5 = __CDShowGossamerUI_block_invoke_2(_block_invoke___previousCLKDeviceVersion_7, v2);
    _block_invoke_value_3 = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_7);

  return v5 & 1;
}

uint64_t __CDShowGossamerUI_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 supportsPDRCapability:4263234939])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isPaired] ^ 1;
  }

  v4 = _os_feature_enabled_impl();

  return v3 & v4;
}

id CDRichComplicationMonoFontDescriptor(uint64_t a1)
{
  if (CDRichComplicationMonoFontDescriptor_onceToken != -1)
  {
    CDRichComplicationMonoFontDescriptor_cold_1();
  }

  v2 = CDRichComplicationMonoFontDescriptor_fontDescriptor;

  return v2;
}

void __CDRichComplicationMonoFontDescriptor_block_invoke()
{
  v11[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D74310];
  v10[0] = *MEMORY[0x277D74380];
  v8[0] = *MEMORY[0x277D74430];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v8[1] = *MEMORY[0x277D743D8];
  v9[0] = v1;
  v9[1] = *MEMORY[0x277D743C0];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v3 = *MEMORY[0x277D74338];
  v11[0] = v2;
  v11[1] = &unk_285703638;
  v4 = *MEMORY[0x277D74348];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = *MEMORY[0x277CC4988];
  v11[2] = &unk_285703288;
  v11[3] = &unk_285702E78;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v6 = [v0 fontDescriptorWithFontAttributes:v5];
  v7 = CDRichComplicationMonoFontDescriptor_fontDescriptor;
  CDRichComplicationMonoFontDescriptor_fontDescriptor = v6;
}

id CDRichComplicationSemiboldFontDescriptor(uint64_t a1)
{
  if (CDRichComplicationSemiboldFontDescriptor_onceToken != -1)
  {
    CDRichComplicationSemiboldFontDescriptor_cold_1();
  }

  v2 = CDRichComplicationSemiboldFontDescriptor_fontDescriptor;

  return v2;
}

void __CDRichComplicationSemiboldFontDescriptor_block_invoke()
{
  v11[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D74310];
  v10[0] = *MEMORY[0x277D74380];
  v8[0] = *MEMORY[0x277D74430];
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v8[1] = *MEMORY[0x277D743D8];
  v9[0] = v1;
  v9[1] = *MEMORY[0x277D743C0];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v3 = *MEMORY[0x277D74338];
  v11[0] = v2;
  v11[1] = MEMORY[0x277CBEBF8];
  v4 = *MEMORY[0x277D74348];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = *MEMORY[0x277CC4988];
  v11[2] = &unk_285703288;
  v11[3] = &unk_285702E78;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v6 = [v0 fontDescriptorWithFontAttributes:v5];
  v7 = CDRichComplicationSemiboldFontDescriptor_fontDescriptor;
  CDRichComplicationSemiboldFontDescriptor_fontDescriptor = v6;
}

id CDRichComplicationOpenFontDescriptor(uint64_t a1)
{
  if (CDRichComplicationOpenFontDescriptor_onceToken != -1)
  {
    CDRichComplicationOpenFontDescriptor_cold_1();
  }

  v2 = CDRichComplicationOpenFontDescriptor_fontDescriptor;

  return v2;
}

void __CDRichComplicationOpenFontDescriptor_block_invoke()
{
  v10[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D74310];
  v9[0] = *MEMORY[0x277D74380];
  v7 = *MEMORY[0x277D743D8];
  v8 = *MEMORY[0x277D743C0];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v2 = *MEMORY[0x277D74338];
  v10[0] = v1;
  v10[1] = &unk_285703650;
  v3 = *MEMORY[0x277D74348];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = *MEMORY[0x277CC4988];
  v10[2] = &unk_285703288;
  v10[3] = &unk_285702E78;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v5 = [v0 fontDescriptorWithFontAttributes:v4];
  v6 = CDRichComplicationOpenFontDescriptor_fontDescriptor;
  CDRichComplicationOpenFontDescriptor_fontDescriptor = v5;
}

void sub_243D86A54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id _CDLoggingObjectForDomain(uint64_t a1, uint64_t a2)
{
  v3 = (&_CDLoggingObjectForDomain_onceTokens + 8 * a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___CDLoggingObjectForDomain_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a1;
  v6[5] = a2;
  if (*v3 != -1)
  {
    dispatch_once(v3, v6);
  }

  v4 = _CDLoggingObjectForDomain___logObjects[a1];

  return v4;
}

double __CDCircularSmallComplicationDiameter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_10);
  if (_block_invoke___cachedDevice_10)
  {
    v3 = _block_invoke___cachedDevice_10 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_10))
  {
    v5 = _block_invoke_value_5;
  }

  else
  {
    _block_invoke___cachedDevice_10 = v2;
    _block_invoke___previousCLKDeviceVersion_10 = [v2 version];
    v5 = __CDCircularSmallComplicationDiameter_block_invoke_2(_block_invoke___previousCLKDeviceVersion_10, v2);
    _block_invoke_value_5 = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_10);

  return *&v5;
}

double __CDCircularSmallComplicationDiameter_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:2];
  v7[0] = &unk_285702FE0;
  v7[1] = &unk_285702FF8;
  v8[0] = &unk_285703348;
  v8[1] = &unk_285703358;
  v7[2] = &unk_285703010;
  v7[3] = &unk_285703028;
  v8[2] = &unk_285703368;
  v8[3] = &unk_285703378;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  [v2 scaledValue:v3 withOverrides:32.0];
  v5 = v4;

  return v5;
}

double __CDCircularMediumComplicationDiameter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock);
  if (_block_invoke_2___cachedDevice)
  {
    v3 = _block_invoke_2___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_2___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_2_value;
  }

  else
  {
    _block_invoke_2___cachedDevice = v2;
    _block_invoke_2___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCircularMediumComplicationDiameter_block_invoke_2(_block_invoke_2___previousCLKDeviceVersion, v2);
    _block_invoke_2_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_2_lock);

  return *&v5;
}

double __CDCircularMediumComplicationDiameter_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[8] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:2];
  v7[0] = &unk_285702FE0;
  v7[1] = &unk_285702FF8;
  v8[0] = &unk_285703358;
  v8[1] = &unk_285703388;
  v7[2] = &unk_285703040;
  v7[3] = &unk_285703058;
  v8[2] = &unk_285703398;
  v8[3] = &unk_2857033A8;
  v7[4] = &unk_285703070;
  v7[5] = &unk_285703010;
  v8[4] = &unk_2857033A8;
  v8[5] = &unk_285703388;
  v7[6] = &unk_285703028;
  v7[7] = &unk_285703088;
  v8[6] = &unk_2857033B8;
  v8[7] = &unk_2857033B8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:8];
  [v2 scaledValue:v3 withOverrides:42.0];
  v5 = v4;

  return v5;
}

double __CDGraphicSubdialComplicationDistanceFromCenter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_3_lock);
  if (_block_invoke_3___cachedDevice)
  {
    v3 = _block_invoke_3___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_3___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_3_value;
  }

  else
  {
    _block_invoke_3___cachedDevice = v2;
    _block_invoke_3___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicSubdialComplicationDistanceFromCenter_block_invoke_2(_block_invoke_3___previousCLKDeviceVersion, v2);
    _block_invoke_3_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_3_lock);

  return *&v5;
}

double __CDGraphicSubdialComplicationDistanceFromCenter_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  v5 = [v4 scaledValue:3 withOverride:16.0 forSizeClass:19.0];
  v7 = v6;
  v8 = __CDCircularMediumComplicationDiameter_block_invoke(v5, v3);

  return v7 + (v8 + 4.0) * 0.5;
}

double __CDGraphicExtraLargeComplicationContentDiameter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_4_lock);
  if (_block_invoke_4___cachedDevice)
  {
    v3 = _block_invoke_4___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_4___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_4_value;
  }

  else
  {
    _block_invoke_4___cachedDevice = v2;
    _block_invoke_4___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicExtraLargeComplicationContentDiameter_block_invoke_2(_block_invoke_4___previousCLKDeviceVersion, v2);
    _block_invoke_4_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_4_lock);

  return *&v5;
}

double __CDGraphicExtraLargeComplicationContentDiameter_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:2];
  v7[0] = &unk_285702FE0;
  v7[1] = &unk_2857030A0;
  v8[0] = &unk_2857033C8;
  v8[1] = &unk_2857033C8;
  v7[2] = &unk_285702FF8;
  v7[3] = &unk_285703058;
  v8[2] = &unk_2857033D8;
  v8[3] = &unk_2857033E8;
  v7[4] = &unk_285703070;
  v8[4] = &unk_2857033E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:5];
  [v2 scaledValue:v3 withOverrides:120.0];
  v5 = v4;

  return v5;
}

double __CDGraphicLargeRectangularComplicationSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_5_lock);
  if (_block_invoke_5___cachedDevice)
  {
    v3 = _block_invoke_5___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_5___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_5_value_0;
  }

  else
  {
    _block_invoke_5___cachedDevice = v2;
    _block_invoke_5___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicLargeRectangularComplicationSize_block_invoke_2(_block_invoke_5___previousCLKDeviceVersion, v2);
    _block_invoke_5_value_0 = v5;
    _block_invoke_5_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_5_lock);

  return *&v5;
}

double __CDGraphicLargeRectangularComplicationSize_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v10[0] = &unk_285702FF8;
  v10[1] = &unk_285703058;
  v11[0] = &unk_2857033F8;
  v11[1] = &unk_285703408;
  v10[2] = &unk_285703070;
  v10[3] = &unk_285703010;
  v11[2] = &unk_285703408;
  v11[3] = &unk_285703418;
  v10[4] = &unk_285703028;
  v11[4] = &unk_285703428;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];
  [v2 scaledValue:v3 withOverrides:162.0];
  v5 = v4;

  v8[0] = &unk_285702FF8;
  v8[1] = &unk_285703040;
  v9[0] = &unk_285703438;
  v9[1] = &unk_285703448;
  v8[2] = &unk_285703058;
  v8[3] = &unk_285703070;
  v9[2] = &unk_285703458;
  v9[3] = &unk_285703458;
  v8[4] = &unk_285703010;
  v8[5] = &unk_285703028;
  v9[4] = &unk_285703468;
  v9[5] = &unk_285703478;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:6];
  [v2 scaledValue:v6 withOverrides:69.0];

  return v5;
}

double __CDGraphicLargeRectangularComplicationInset_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_6_lock);
  if (_block_invoke_6___cachedDevice)
  {
    v3 = _block_invoke_6___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_6___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_6_value;
  }

  else
  {
    _block_invoke_6___cachedDevice = v2;
    _block_invoke_6___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicLargeRectangularComplicationInset_block_invoke_2(_block_invoke_6___previousCLKDeviceVersion, v2);
    _block_invoke_6_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_6_lock);

  return *&v5;
}

double __CDGraphicLargeRectangularComplicationInset_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:*MEMORY[0x277CBB6B0]];
  v4 = v3;

  return v4;
}

double __CDGraphicLargeRectangularComplicationLargeImageHeight_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_7_lock);
  if (_block_invoke_7___cachedDevice)
  {
    v3 = _block_invoke_7___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_7___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_7_value;
  }

  else
  {
    _block_invoke_7___cachedDevice = v2;
    _block_invoke_7___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicLargeRectangularComplicationLargeImageHeight_block_invoke_2(_block_invoke_7___previousCLKDeviceVersion, v2);
    _block_invoke_7_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_7_lock);

  return *&v5;
}

double __CDGraphicLargeRectangularComplicationLargeImageHeight_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3 withOverride:47.0 forSizeClass:54.0];
  v4 = v3;

  return v4;
}

double __CDGraphicLargeRectangularComplicationCornerRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_8_lock);
  if (_block_invoke_8___cachedDevice)
  {
    v3 = _block_invoke_8___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_8___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_8_value;
  }

  else
  {
    _block_invoke_8___cachedDevice = v2;
    _block_invoke_8___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicLargeRectangularComplicationCornerRadius_block_invoke_2(_block_invoke_8___previousCLKDeviceVersion, v2);
    _block_invoke_8_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_8_lock);

  return *&v5;
}

double __CDGraphicLargeRectangularComplicationCornerRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:*MEMORY[0x277CBB6B8]];
  v4 = v3;

  return v4;
}

double __CDGraphicCircularScaledComplicationDiameter_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_9_lock);
  if (_block_invoke_9___cachedDevice)
  {
    v3 = _block_invoke_9___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_9___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_9_value;
  }

  else
  {
    _block_invoke_9___cachedDevice = v2;
    _block_invoke_9___previousCLKDeviceVersion = [v2 version];
    v5 = __CDGraphicCircularScaledComplicationDiameter_block_invoke_2(_block_invoke_9___previousCLKDeviceVersion, v2);
    _block_invoke_9_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_9_lock);

  return *&v5;
}

double __CDGraphicCircularScaledComplicationDiameter_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_285702FF8;
  v7[1] = &unk_285703040;
  v8[0] = &unk_285703488;
  v8[1] = &unk_285703358;
  v7[2] = &unk_285703058;
  v7[3] = &unk_285703070;
  v8[2] = &unk_285703498;
  v8[3] = &unk_285703498;
  v7[4] = &unk_285703010;
  v7[5] = &unk_285703028;
  v8[4] = &unk_285703488;
  v8[5] = &unk_2857034A8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];
  [v2 scaledValue:v3 withOverrides:34.0];
  v5 = v4;

  return v5;
}

double __CDCornerComplicationSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_10_lock);
  if (_block_invoke_10___cachedDevice)
  {
    v3 = _block_invoke_10___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_10___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_10_value_0;
  }

  else
  {
    _block_invoke_10___cachedDevice = v2;
    _block_invoke_10___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationSize_block_invoke_2(_block_invoke_10___previousCLKDeviceVersion, v2);
    _block_invoke_10_value_0 = v5;
    _block_invoke_10_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_10_lock);

  return *&v5;
}

double __CDCornerComplicationSize_block_invoke_2(uint64_t a1, void *a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v2 = a2;
  [v2 sizeClass];
  v3 = CLKDeviceCategoryForSizeClass();
  if (v3 < 5)
  {
    v5 = [MEMORY[0x277CBBAF8] metricsWithDevice:v2 identitySizeClass:2];

    v17[0] = &unk_285702FF8;
    v16 = xmmword_243DB12B0;
    v6 = [MEMORY[0x277CCAE60] valueWithBytes:&v16 objCType:"{CGSize=dd}"];
    v18[0] = v6;
    v17[1] = &unk_285703040;
    v15 = xmmword_243DB12C0;
    v7 = [MEMORY[0x277CCAE60] valueWithBytes:&v15 objCType:"{CGSize=dd}"];
    v18[1] = v7;
    v17[2] = &unk_285703058;
    v14 = xmmword_243DB12D0;
    v8 = [MEMORY[0x277CCAE60] valueWithBytes:&v14 objCType:"{CGSize=dd}"];
    v18[2] = v8;
    v17[3] = &unk_285703070;
    v13 = xmmword_243DB12E0;
    v9 = [MEMORY[0x277CCAE60] valueWithBytes:&v13 objCType:"{CGSize=dd}"];
    v18[3] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    [v5 scaledSize:v10 withOverrides:{77.5, 61.5}];
    v4 = v11;

    v2 = v5;
  }

  else
  {
    v4 = ___cornerComplicationSize_block_invoke(v3, v2);
  }

  return v4;
}

double __CDCornerComplicationKeylineSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_11_lock);
  if (_block_invoke_11___cachedDevice)
  {
    v3 = _block_invoke_11___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_11___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_11_value_0;
  }

  else
  {
    _block_invoke_11___cachedDevice = v2;
    _block_invoke_11___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationKeylineSize_block_invoke_2(_block_invoke_11___previousCLKDeviceVersion, v2);
    _block_invoke_11_value_0 = v5;
    _block_invoke_11_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_11_lock);

  return *&v5;
}

double __CDCornerComplicationKeylineSize_block_invoke_2(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  [v2 sizeClass];
  if (CLKDeviceCategoryForSizeClass() == 5)
  {
    v3 = ___cornerComplicationSize_block_invoke(5, v2);
  }

  else
  {
    v4 = [MEMORY[0x277CBBAF8] metricsWithDevice:v2 identitySizeClass:2];
    [v2 screenBounds];
    [v4 setScale:objc_msgSend(v2 forSizeClass:{"sizeClass"), v5 / 162.0}];
    v11 = &unk_285702FF8;
    v10 = xmmword_243DB12F0;
    v6 = [MEMORY[0x277CCAE60] valueWithBytes:&v10 objCType:"{CGSize=dd}"];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v4 scaledSize:v7 withOverrides:{77.5, 58.5}];
    v3 = v8;
  }

  return v3;
}

double __CDCornerComplicationKeylineInnerRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_12_lock);
  if (_block_invoke_12___cachedDevice)
  {
    v3 = _block_invoke_12___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_12___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_12_value;
  }

  else
  {
    _block_invoke_12___cachedDevice = v2;
    _block_invoke_12___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationKeylineInnerRadius_block_invoke_2(_block_invoke_12___previousCLKDeviceVersion, v2);
    _block_invoke_12_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_12_lock);

  return *&v5;
}

double __CDCornerComplicationKeylineInnerRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_285702FF8;
  v7[1] = &unk_285703010;
  v8[0] = &unk_2857034B8;
  v8[1] = &unk_2857034C8;
  v7[2] = &unk_285703028;
  v8[2] = &unk_2857034D8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v2 scaledValue:v3 withOverrides:84.0];
  v5 = v4;

  return v5;
}

double __CDCornerComplicationCenterPointRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_13_lock);
  if (_block_invoke_13___cachedDevice)
  {
    v3 = _block_invoke_13___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_13___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_13_value;
  }

  else
  {
    _block_invoke_13___cachedDevice = v2;
    _block_invoke_13___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationCenterPointRadius_block_invoke_2(_block_invoke_13___previousCLKDeviceVersion, v2);
    _block_invoke_13_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_13_lock);

  return *&v5;
}

double __CDCornerComplicationCenterPointRadius_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __CDCornerComplicationKeylineInnerRadius_block_invoke(v2, v2);
  v5 = ___cornerComplicationOuterRadius_block_invoke(v4, v2);
  [v2 screenCornerRadius];
  v7 = v6;

  return (v3 + v5 + v7 * -0.414213562) * 0.5;
}

double CDCornerComplicationClippingSliceAngle(void *a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  [v1 sizeClass];
  if (CLKDeviceCategoryForSizeClass() < 5)
  {
    v4 = [MEMORY[0x277CBBAF8] metricsWithDevice:v1 identitySizeClass:2];
    v8[0] = &unk_285703010;
    v8[1] = &unk_285703028;
    v9[0] = &unk_2857034E8;
    v9[1] = &unk_2857034E8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
    [v4 constantValue:v5 withOverrides:56.0];
    v3 = v6;
  }

  else
  {
    v2 = 90.0 - CDCornerComplicationTopExclusionSliceAngle(v1) * 0.5;
    v3 = v2 - CDCornerComplicationSideExclusionSliceAngle(v1) * 0.5;
  }

  return v3;
}

double CDCornerComplicationTopExclusionSliceAngle(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v6[0] = &unk_285703010;
  v6[1] = &unk_285703028;
  v7[0] = &unk_2857034F8;
  v7[1] = &unk_2857034F8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v1 constantValue:v2 withOverrides:4.5];
  v4 = v3;

  return v4;
}

double CDCornerComplicationSideExclusionSliceAngle(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v6[0] = &unk_285703010;
  v6[1] = &unk_285703028;
  v7[0] = &unk_285703508;
  v7[1] = &unk_285703508;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v1 constantValue:v2 withOverrides:48.5];
  v4 = v3;

  return v4;
}

double __CDCornerComplicationInnerUpperCircleRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_14_lock);
  if (_block_invoke_14___cachedDevice)
  {
    v3 = _block_invoke_14___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_14___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_14_value;
  }

  else
  {
    _block_invoke_14___cachedDevice = v2;
    _block_invoke_14___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationInnerUpperCircleRadius_block_invoke_2(_block_invoke_14___previousCLKDeviceVersion, v2);
    _block_invoke_14_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_14_lock);

  return *&v5;
}

double __CDCornerComplicationInnerUpperCircleRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_285702FF8;
  v7[1] = &unk_285703010;
  v8[0] = &unk_2857034B8;
  v8[1] = &unk_2857034C8;
  v7[2] = &unk_285703028;
  v8[2] = &unk_2857034D8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v2 scaledValue:v3 withOverrides:83.5];
  v5 = v4;

  return v5;
}

double __CDCornerComplicationInnerUpperTextBaselineRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_15_lock);
  if (_block_invoke_15___cachedDevice)
  {
    v3 = _block_invoke_15___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_15___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_15_value;
  }

  else
  {
    _block_invoke_15___cachedDevice = v2;
    _block_invoke_15___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationInnerUpperTextBaselineRadius_block_invoke_2(_block_invoke_15___previousCLKDeviceVersion, v2);
    _block_invoke_15_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_15_lock);

  return *&v5;
}

double __CDCornerComplicationInnerUpperTextBaselineRadius_block_invoke_2(uint64_t a1, void *a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = a2;
  [v2 sizeClass];
  if (CLKDeviceCategoryForSizeClass() == 5)
  {
    v3 = __CDCornerComplicationInnerUpperCircleRadius_block_invoke(5, v2);
  }

  else
  {
    v4 = [MEMORY[0x277CBBAF8] metricsWithDevice:v2 identitySizeClass:2];

    v8[0] = &unk_285702FF8;
    v8[1] = &unk_285703058;
    v9[0] = &unk_285703518;
    v9[1] = &unk_285703528;
    v8[2] = &unk_285703070;
    v9[2] = &unk_285703528;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
    [v4 scaledValue:v5 withOverrides:80.5];
    v3 = v6;

    v2 = v4;
  }

  return v3;
}

double __CDCornerComplicationInnerLowerTextBaselineRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_16_lock);
  if (_block_invoke_16___cachedDevice)
  {
    v3 = _block_invoke_16___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_16___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_16_value;
  }

  else
  {
    _block_invoke_16___cachedDevice = v2;
    _block_invoke_16___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationInnerLowerTextBaselineRadius_block_invoke_2(_block_invoke_16___previousCLKDeviceVersion, v2);
    _block_invoke_16_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_16_lock);

  return *&v5;
}

double __CDCornerComplicationInnerLowerTextBaselineRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_285702FF8;
  v7[1] = &unk_285703010;
  v8[0] = &unk_285703538;
  v8[1] = &unk_285703548;
  v7[2] = &unk_285703028;
  v8[2] = &unk_285703558;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v2 scaledValue:v3 withOverrides:90.0];
  v5 = v4;

  return v5;
}

double __CDCornerComplicationOuterUpperTextBaselineRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_17_lock);
  if (_block_invoke_17___cachedDevice)
  {
    v3 = _block_invoke_17___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_17___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_17_value;
  }

  else
  {
    _block_invoke_17___cachedDevice = v2;
    _block_invoke_17___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationOuterUpperTextBaselineRadius_block_invoke_2(_block_invoke_17___previousCLKDeviceVersion, v2);
    _block_invoke_17_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_17_lock);

  return *&v5;
}

double __CDCornerComplicationOuterUpperTextBaselineRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_285702FF8;
  v7[1] = &unk_285703010;
  v8[0] = &unk_285703568;
  v8[1] = &unk_285703578;
  v7[2] = &unk_285703028;
  v8[2] = &unk_285703588;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v2 scaledValue:v3 withOverrides:94.0];
  v5 = v4;

  return v5;
}

double __CDCornerComplicationOuterLowerTextBaselineRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_18_lock);
  if (_block_invoke_18___cachedDevice)
  {
    v3 = _block_invoke_18___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_18___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_18_value;
  }

  else
  {
    _block_invoke_18___cachedDevice = v2;
    _block_invoke_18___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationOuterLowerTextBaselineRadius_block_invoke_2(_block_invoke_18___previousCLKDeviceVersion, v2);
    _block_invoke_18_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_18_lock);

  return *&v5;
}

double __CDCornerComplicationOuterLowerTextBaselineRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_285702FF8;
  v7[1] = &unk_285703010;
  v8[0] = &unk_285703598;
  v8[1] = &unk_2857035A8;
  v7[2] = &unk_285703028;
  v8[2] = &unk_2857035B8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v2 scaledValue:v3 withOverrides:105.5];
  v5 = v4;

  return v5;
}

double __CDCornerComplicationTopLeftCenterAngle_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_19_lock);
  if (_block_invoke_19___cachedDevice)
  {
    v3 = _block_invoke_19___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_19___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_19_value;
  }

  else
  {
    _block_invoke_19___cachedDevice = v2;
    _block_invoke_19___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationTopLeftCenterAngle_block_invoke_2(_block_invoke_19___previousCLKDeviceVersion, v2);
    _block_invoke_19_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_19_lock);

  return *&v5;
}

double __CDCornerComplicationTopLeftCenterAngle_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = CDCornerComplicationClippingSliceAngle(v2);
  v4 = CDCornerComplicationTopExclusionSliceAngle(v2);

  return (v3 + v4) * 0.5;
}

double __CDCornerComplicationOuterImageCenterRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_20_lock);
  if (_block_invoke_20___cachedDevice)
  {
    v3 = _block_invoke_20___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_20___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_20_value;
  }

  else
  {
    _block_invoke_20___cachedDevice = v2;
    _block_invoke_20___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationOuterImageCenterRadius_block_invoke_2(_block_invoke_20___previousCLKDeviceVersion, v2);
    _block_invoke_20_value = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_20_lock);

  return *&v5;
}

double __CDCornerComplicationOuterImageCenterRadius_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_285703070;
  v7[1] = &unk_285703010;
  v8[0] = &unk_2857035C8;
  v8[1] = &unk_2857035D8;
  v7[2] = &unk_285703028;
  v8[2] = &unk_2857035E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v2 scaledValue:v3 withOverrides:109.5];
  v5 = v4;

  return v5;
}

double __CDCornerComplicationOuterImageCenterPoint_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_21_lock);
  if (_block_invoke_21___cachedDevice)
  {
    v3 = _block_invoke_21___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_21___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_21_value_0;
  }

  else
  {
    _block_invoke_21___cachedDevice = v2;
    _block_invoke_21___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationOuterImageCenterPoint_block_invoke_2(_block_invoke_21___previousCLKDeviceVersion, v2);
    _block_invoke_21_value_0 = v5;
    _block_invoke_21_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_21_lock);

  return *&v5;
}

double __CDCornerComplicationOuterImageCenterPoint_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x245D51E10]([v2 screenBounds]);
  v5 = v4;
  __CDCornerComplicationTopLeftCenterAngle_block_invoke(v3, v2);
  v7 = __CDCornerComplicationOuterImageCenterRadius_block_invoke(v6, v2);

  CLKDegreesToRadians();
  *&v8 = v8;
  sinf(*&v8);
  CLKDegreesToRadians();
  *&v9 = v9;
  return v5 - v7 * cosf(*&v9);
}

double __CDCornerComplicationCenterPoint_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_22_lock);
  if (_block_invoke_22___cachedDevice)
  {
    v3 = _block_invoke_22___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_22___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_22_value_0;
  }

  else
  {
    _block_invoke_22___cachedDevice = v2;
    _block_invoke_22___previousCLKDeviceVersion = [v2 version];
    v5 = __CDCornerComplicationCenterPoint_block_invoke_2(_block_invoke_22___previousCLKDeviceVersion, v2);
    _block_invoke_22_value_0 = v5;
    _block_invoke_22_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_22_lock);

  return *&v5;
}

double __CDCornerComplicationCenterPoint_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 sizeClass];
  if (CLKDeviceCategoryForSizeClass() < 5)
  {
    v10 = *MEMORY[0x277CBF348];
  }

  else
  {
    v3 = MEMORY[0x245D51E10]([v2 screenBounds]);
    v5 = v4;
    __CDCornerComplicationTopLeftCenterAngle_block_invoke(v3, v2);
    v7 = __CDCornerComplicationCenterPointRadius_block_invoke(v6, v2);
    CLKDegreesToRadians();
    *&v8 = v8;
    sinf(*&v8);
    CLKDegreesToRadians();
    *&v9 = v9;
    v10 = v5 - v7 * cosf(*&v9);
  }

  return v10;
}

double ___cornerComplicationSize_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_23_lock);
  if (_block_invoke_23___cachedDevice)
  {
    v3 = _block_invoke_23___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_23___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_23_value_0;
  }

  else
  {
    _block_invoke_23___cachedDevice = v2;
    _block_invoke_23___previousCLKDeviceVersion = [v2 version];
    v5 = ___cornerComplicationSize_block_invoke_2(_block_invoke_23___previousCLKDeviceVersion, v2);
    _block_invoke_23_value_0 = v5;
    _block_invoke_23_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_23_lock);

  return *&v5;
}

double ___cornerComplicationSize_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __CDCornerComplicationKeylineInnerRadius_block_invoke(v2, v2);
  v4 = MEMORY[0x245D51E10]([v2 screenBounds]);
  v6 = v5;
  v7 = ___cornerComplicationOuterRadius_block_invoke(v4, v2);
  CDCornerComplicationClippingSliceAngle(v2);
  CLKDegreesToRadians();
  *&v8 = v8;
  v9 = v7 * sinf(*&v8);
  CLKDegreesToRadians();
  *&v10 = v10;
  v11 = v3 + v9 / sinf(*&v10);
  CDCornerComplicationTopExclusionSliceAngle(v2);
  CLKDegreesToRadians();
  *&v12 = v12;
  v13 = v6 + v11 * -0.5 * sinf(*&v12);
  CDCornerComplicationSideExclusionSliceAngle(v2);

  CLKDegreesToRadians();
  *&v14 = v14;
  sinf(*&v14);
  return v13;
}

double ___cornerComplicationOuterRadius_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_24_lock);
  if (_block_invoke_24___cachedDevice)
  {
    v3 = _block_invoke_24___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_24___previousCLKDeviceVersion))
  {
    v5 = *&_block_invoke_24_value;
  }

  else
  {
    _block_invoke_24___cachedDevice = v2;
    _block_invoke_24___previousCLKDeviceVersion = [v2 version];
    ___cornerComplicationOuterRadius_block_invoke_2(_block_invoke_24___previousCLKDeviceVersion, v2);
    v5 = *&v6;
    _block_invoke_24_value = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_24_lock);

  return v5;
}

void ___cornerComplicationOuterRadius_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x245D51E10]([v2 screenBounds]);
  CDCornerComplicationClippingSliceAngle(v2);
  CDCornerComplicationSideExclusionSliceAngle(v2);

  CLKDegreesToRadians();
  *&v3 = v3;
  tanf(*&v3);
  CLKDegreesToRadians();
  *&v4 = v4;
  atanf(*&v4);
  __asm { FMOV            V1.2D, #1.0 }
}

id _CDLayerMaskColorizationFilter(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  *v33 = 0u;
  v3 = a2;
  [a1 getRed:&v32 green:&v32 + 8 blue:v33 alpha:&v33[1]];
  v30 = 0u;
  v31 = 0u;
  [v3 getRed:&v30 green:&v30 + 8 blue:&v31 alpha:&v31 + 8];

  v4 = MEMORY[0x277CD9DA0];
  v5 = *(MEMORY[0x277CD9DA0] + 76);
  v6 = *&v32;
  v7 = *(&v32 + 1);
  v8 = v33[0];
  v9 = *&v30;
  v10 = *(&v30 + 1);
  v11 = *&v31;
  v12 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA2C0]];
  *v16 = v6;
  *&v16[1] = v9;
  v17 = *(v4 + 8);
  v18 = *(v4 + 16);
  v19 = v7;
  v20 = v10;
  v21 = *(v4 + 28);
  v22 = *(v4 + 36);
  v23 = v8;
  v24 = v11;
  v25 = 0;
  v13 = *(v4 + 68);
  v26 = *(v4 + 52);
  v27 = v13;
  v28 = 1065353216;
  v29 = v5;
  v14 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:v16];
  [v12 setValue:v14 forKey:@"inputColorMatrix"];

  return v12;
}

void sub_243D8BC0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243D8BE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_243D8C5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

double CDRichComplicationCornerBaseCircularViewRect(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = ___LayoutConstants_block_invoke_11(v3, v3);
  v6 = v5;
  v7 = CDCornerComplicationSize(v3);
  if (CDUsingRadialCornerComplicationLayout(v3))
  {
    v8 = CDCornerComplicationCenterPoint(v3) - v4 * 0.5;
  }

  else
  {
    v8 = v6;
  }

  v9 = *MEMORY[0x277CBF348];
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v9 = v8;
    }

    else if (a2 == 3)
    {
      v9 = v7 - v8 - v4;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = v7 - v8 - v4;
    }
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

void sub_243D8EBB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v15 = [objc_opt_self() sharedRenderingContext];
  v16 = [v15 device];

  v49 = v16;
  v17 = CDRichComplicationCornerInnerImageMaxSize(v16);
  v19 = v18;
  v20 = MEMORY[0x277D84F90];
  v21 = *(a5 + 16);
  if (v21)
  {
    v58 = MEMORY[0x277D84F90];
    sub_243D93638(0, v21, 0);
    v22 = v58;
    v23 = 32;
    do
    {
      v24 = *(a5 + v23);
      v25 = [v24 textProvider];
      [v25 finalize];
      v26 = [v24 imageProvider];
      if (v26 && (v27 = v26, [v26 copy], v27, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D90EF4(), (swift_dynamicCast() & 1) != 0))
      {
        v28 = v57;
        type metadata accessor for WidgetNamedImageProvider(0);
        v29 = swift_dynamicCastClass();
        if (v29)
        {
          v30 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
          if ((*(v29 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
          {
            v31 = (v29 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
            *v31 = v17;
            v31[1] = v19;
            *(v29 + v30) = 1;
          }
        }

        else
        {
          [v57 finalizeWithMaxSDKSize:0 maxDeviceSize:v17 maskToCircle:{v19, v17, v19}];
        }
      }

      else
      {
        v28 = 0;
      }

      v32 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v25 imageProvider:v28];

      v34 = *(v58 + 16);
      v33 = *(v58 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_243D93638((v33 > 1), v34 + 1, 1);
      }

      *(v58 + 16) = v34 + 1;
      *(v58 + 8 * v34 + 32) = v32;
      v23 += 8;
      --v21;
    }

    while (v21);

    v20 = MEMORY[0x277D84F90];
    v35 = *(a6 + 16);
    if (v35)
    {
      goto LABEL_15;
    }

LABEL_28:

    v36 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v22 = MEMORY[0x277D84F90];
  v35 = *(a6 + 16);
  if (!v35)
  {
    goto LABEL_28;
  }

LABEL_15:
  sub_243D93638(0, v35, 0);
  v36 = v20;
  v37 = 32;
  do
  {
    v38 = *(a6 + v37);
    v39 = [v38 textProvider];
    [v39 finalize];
    v40 = [v38 imageProvider];
    if (v40 && (v41 = v40, [v40 copy], v41, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D90EF4(), (swift_dynamicCast() & 1) != 0))
    {
      v42 = v57;
      type metadata accessor for WidgetNamedImageProvider(0);
      v43 = swift_dynamicCastClass();
      if (v43)
      {
        v44 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
        if ((*(v43 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
        {
          v45 = (v43 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
          *v45 = v17;
          v45[1] = v19;
          *(v43 + v44) = 1;
        }
      }

      else
      {
        [v57 finalizeWithMaxSDKSize:0 maxDeviceSize:v17 maskToCircle:{v19, v17, v19}];
      }
    }

    else
    {
      v42 = 0;
    }

    v46 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v39 imageProvider:v42];

    v48 = *(v36 + 16);
    v47 = *(v36 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_243D93638((v47 > 1), v48 + 1, 1);
    }

    *(v36 + 16) = v48 + 1;
    *(v36 + 8 * v48 + 32) = v46;
    v37 += 8;
    --v35;
  }

  while (v35);

LABEL_29:
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = v22;
  *(a9 + 56) = v36;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
}

double sub_243D8F084()
{
  v6.origin.x = sub_243D8F0E8();
  x = v6.origin.x;
  y = v6.origin.y;
  width = v6.size.width;
  height = v6.size.height;
  MidX = CGRectGetMidX(v6);
  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  CGRectGetMidY(v7);
  return MidX;
}

double sub_243D8F0E8()
{
  v1 = [objc_opt_self() sharedRenderingContext];
  v2 = [v1 device];

  CDRichComplicationCornerGaugeCustomViewRect(v2, *(v0 + 16));
  v4 = v3;

  return v4;
}

uint64_t sub_243D8F18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v25 = sub_243DAD9D0();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  sub_243DAD9E0();
  sub_243DAD9E0();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  v6 = sub_243DAE070();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  v9 = sub_243DAD9E0();
  v23 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *(a1 + 24);
  v28 = v5;
  v29 = v15;
  v30 = v26;
  sub_243DAE090();
  sub_243DAE060();
  swift_getKeyPath();
  v16 = v24;
  v17 = v25;
  (*(v3 + 104))(v24, *MEMORY[0x277CDFA88], v25);
  WitnessTable = swift_getWitnessTable();
  sub_243DADE60();

  (*(v3 + 8))(v16, v17);
  (*(v22 + 8))(v8, v6);
  v19 = sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0, MEMORY[0x277CE0868]);
  v31 = WitnessTable;
  v32 = v19;
  swift_getWitnessTable();
  sub_243D9EE08();
  v20 = *(v23 + 8);
  v20(v12, v9);
  sub_243D9EE08();
  return (v20)(v14, v9);
}

void sub_243D8F5F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a4;
  v69 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  v8 = sub_243DAD9E0();
  v72 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = &v56 - v9;
  v67 = sub_243DAD9E0();
  v76 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v59 = &v56 - v10;
  v68 = sub_243DAD9E0();
  v78 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v62 = &v56 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  v75 = sub_243DAD9E0();
  v79 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v63 = &v56 - v12;
  v70 = sub_243DAD9E0();
  v80 = *(v70 - 8);
  v13 = MEMORY[0x28223BE20](v70);
  v71 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v77 = &v56 - v15;
  v58 = type metadata accessor for ComplicationCornerGaugeView(0, a2, a3, v16);
  sub_243D8F0E8();
  v18 = v17 / *a1;
  v20 = v19 / *(a1 + 8);
  sub_243D8F0E8();
  v21 = *(a1 + 24);
  v74 = *(a1 + 16);
  v73 = v21;
  v22 = *(a1 + 56);
  v65 = *(a1 + 48);
  v64 = v22;
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  type metadata accessor for MonochromeModel(0);
  sub_243D910DC(&qword_27EDBABA0, type metadata accessor for MonochromeModel, &protocol conformance descriptor for MonochromeModel);
  v66 = v24;

  v25 = v23;
  v61 = sub_243DAD9C0();
  v60 = v26;
  v27 = v57;
  (*(a1 + 64))();
  swift_getKeyPath();
  LOBYTE(v85[0]) = 1;
  v28 = v56;
  sub_243DADE60();

  (*(v69 + 8))(v27, a2);
  sub_243DAE0D0();
  v30 = v29;
  v32 = v31;
  v33 = sub_243D90C40(&qword_27EDBABA8, &qword_27EDBAB80, &qword_243DB16B8, MEMORY[0x277CE0868]);
  v91[10] = a3;
  v91[11] = v33;
  WitnessTable = swift_getWitnessTable();
  v35 = v59;
  MEMORY[0x245D51680](v8, WitnessTable, v18, v20, v30, v32);
  (*(v72 + 8))(v28, v8);
  sub_243DAE090();
  v91[8] = WitnessTable;
  v91[9] = MEMORY[0x277CDF690];
  v36 = v67;
  v37 = swift_getWitnessTable();
  v38 = v62;
  sub_243DADEB0();
  (*(v76 + 8))(v35, v36);
  v91[6] = v37;
  v91[7] = MEMORY[0x277CDF678];
  v39 = v68;
  v40 = swift_getWitnessTable();
  sub_243D90BEC();
  v41 = v63;
  sub_243DADEF0();
  (*(v78 + 8))(v38, v39);
  sub_243D8F084();
  v42 = sub_243D90C40(&qword_27EDBABB8, &qword_27EDBAB88, &unk_243DB16C0, MEMORY[0x277CDF4F0]);
  v91[4] = v40;
  v91[5] = v42;
  v43 = v75;
  v44 = swift_getWitnessTable();
  v45 = v71;
  sub_243DADEE0();
  (*(v79 + 8))(v41, v43);
  v91[2] = v44;
  v91[3] = MEMORY[0x277CDFB28];
  v46 = v70;
  v47 = swift_getWitnessTable();
  v48 = v77;
  sub_243D9EE08();
  v49 = v80;
  v79 = *(v80 + 8);
  (v79)(v45, v46);
  v85[0] = v74;
  v85[1] = v73;
  v50 = v66;
  v86 = v66;
  v87 = v65;
  v88 = v64;
  v89 = v61;
  v51 = v60;
  v90 = v60;
  v91[0] = v85;
  (*(v49 + 16))(v45, v48, v46);
  v91[1] = v45;
  v52 = v50;

  v53 = v51;
  v84[0] = &type metadata for ComplicationCornerGaugeViewRepresentable;
  v84[1] = v46;
  v82 = sub_243D90C88();
  v83 = v47;
  sub_243D94ED4(v91, 2uLL, v84);

  v54 = v79;
  (v79)(v48, v46);
  v54(v45, v46);
  v55 = v86;
}

void sub_243D8FFE4(void *a1)
{
  v3 = sub_243D96AC0(v1[3]);
  v4 = sub_243D96AC0(v1[4]);
  [a1 handleGaugeProvider:v1[2] leftLabelProvider:v3 rightLabelProvider:v4];
  [a1 setFilterProvider_];
  [a1 setCornerComplicationPosition_];
  [a1 setFontStyle_];
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  if (v5 >= 1.0)
  {
    [a1 updateMonochromeColor];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243DAD860();

    [a1 transitionToMonochromeWithFraction_];
  }
}

id sub_243D9036C()
{
  v1 = [objc_allocWithZone(type metadata accessor for ComplicationCornerGaugeViewRepresentable._CornerView()) initWithFontFallback_];
  sub_243D8FFE4(v1);
  return v1;
}

uint64_t sub_243D90428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D911C0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243D9048C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D911C0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243D904F0(uint64_t a1)
{
  sub_243D911C0();
  sub_243DADBF0();
  __break(1u);
}

id sub_243D90518(id a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = [a1 style];
    v8 = *&v3[OBJC_IVAR____TtC19ComplicationDisplay35_ComplicationCornerDynamicGaugeView_fillStyle];
    if (v7 == *MEMORY[0x277CBB698])
    {
      if (v8 != 7)
      {
        v9 = 7;
LABEL_7:
        *&v3[OBJC_IVAR____TtC19ComplicationDisplay35_ComplicationCornerDynamicGaugeView_fillStyle] = v9;
        [v3 _replaceProgressView_];
      }
    }

    else if (v8 == 7)
    {
      v9 = 0;
      goto LABEL_7;
    }
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for _ComplicationCornerDynamicGaugeView();
  return objc_msgSendSuper2(&v11, sel_handleGaugeProvider_leftLabelProvider_rightLabelProvider_, a1, a2, a3);
}

id sub_243D906E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_243D907CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_243D90830(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D90878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243D9090C()
{
  v0 = sub_243DAE160();
  v1 = MEMORY[0x245D51990](v0);

  return v1;
}

uint64_t sub_243D90948(uint64_t a1)
{
  sub_243DAE160();
  sub_243DAE170();
}

uint64_t sub_243D9099C(uint64_t a1)
{
  sub_243DAE160();
  sub_243DAE320();
  sub_243DAE170();
  v1 = sub_243DAE340();

  return v1;
}

uint64_t sub_243D90A18(uint64_t a1, id *a2)
{
  result = sub_243DAE140();
  *a2 = 0;
  return result;
}

uint64_t sub_243D90A90(uint64_t a1, id *a2)
{
  v3 = sub_243DAE150();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_243D90B10@<X0>(uint64_t *a2@<X8>)
{
  sub_243DAE160();
  v3 = sub_243DAE130();

  *a2 = v3;
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

unint64_t sub_243D90BEC()
{
  result = qword_27EDBABB0;
  if (!qword_27EDBABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBABB0);
  }

  return result;
}

uint64_t sub_243D90C40(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_243D90C88()
{
  result = qword_27EDBABC0;
  if (!qword_27EDBABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBABC0);
  }

  return result;
}

id sub_243D90CDC()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for ComplicationCornerGaugeViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243D90D3C(void *a1, uint64_t *a2)
{
  v2 = sub_243DAE160();
  v4 = v3;
  if (v2 == sub_243DAE160() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_243DAE310();
  }

  return v7 & 1;
}

uint64_t sub_243D90DC4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_243DAE130();

  *a2 = v3;
  return result;
}

uint64_t sub_243D90E0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_243DAE160();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_243D90E38(uint64_t a1)
{
  v2 = sub_243D910DC(&qword_27EDBABF8, type metadata accessor for RBDrawableStatisticsKey, &unk_243DB18FC);
  v3 = sub_243D910DC(&unk_27EDBAC00, type metadata accessor for RBDrawableStatisticsKey, &unk_243DB185C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_243D90EF4()
{
  result = qword_27EDBABC8;
  if (!qword_27EDBABC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDBABC8);
  }

  return result;
}

void sub_243D90F84(uint64_t a1, unint64_t *a2, uint64_t a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_243D90FEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D91034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243D910DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_243D911C0()
{
  result = qword_27EDBABF0;
  if (!qword_27EDBABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBABF0);
  }

  return result;
}

uint64_t sub_243D91228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_243D91278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_243D912C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243D91380(uint64_t a1)
{
  v2 = sub_243DAD9D0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_243DADA80();
}

double sub_243D9144C(uint64_t a1)
{
  v7.origin.x = sub_243D914B0(a1);
  x = v7.origin.x;
  y = v7.origin.y;
  width = v7.size.width;
  height = v7.size.height;
  MidX = CGRectGetMidX(v7);
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  CGRectGetMidY(v8);
  return MidX;
}

double sub_243D914B0(uint64_t a1)
{
  v2 = [objc_opt_self() sharedRenderingContext];
  v3 = [v2 device];

  v4 = CDRichComplicationCornerBaseCircularViewRect(v3, a1);
  return v4;
}

uint64_t sub_243D91558@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a5;
  v42[1] = a3;
  v42[0] = a2;
  v43 = a1;
  v57 = a6;
  v9 = sub_243DAD9D0();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v54 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a4 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_243DAD9E0();
  v47 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v42 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  v17 = sub_243DAD9E0();
  v48 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v42 - v18;
  v20 = sub_243DAD9E0();
  v52 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v44 = v42 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  v51 = sub_243DAD9E0();
  v53 = *(v51 - 8);
  v22 = MEMORY[0x28223BE20](v51);
  v45 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v50 = v42 - v24;
  v25 = sub_243D914B0(a1);
  a2(v25);
  sub_243DAE090();
  v26 = v49;
  sub_243DADEB0();
  (*(v46 + 8))(v13, a4);
  v64 = v26;
  v65 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  sub_243D90BEC();
  sub_243DADEF0();
  (*(v47 + 8))(v16, v14);
  sub_243D9144C(v43);
  v28 = sub_243D90C40(&qword_27EDBABB8, &qword_27EDBAB88, &unk_243DB16C0, MEMORY[0x277CDF4F0]);
  v62 = WitnessTable;
  v63 = v28;
  v29 = swift_getWitnessTable();
  v30 = v44;
  sub_243DADEE0();
  (*(v48 + 8))(v19, v17);
  swift_getKeyPath();
  v31 = v54;
  v32 = v55;
  v33 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x277CDFA88], v56);
  v60 = v29;
  v61 = MEMORY[0x277CDFB28];
  v34 = v20;
  v35 = swift_getWitnessTable();
  v36 = v45;
  sub_243DADE60();

  (*(v32 + 8))(v31, v33);
  (*(v52 + 8))(v30, v34);
  v37 = sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0, MEMORY[0x277CE0868]);
  v58 = v35;
  v59 = v37;
  v38 = v51;
  swift_getWitnessTable();
  v39 = v50;
  sub_243D9EE08();
  v40 = *(v53 + 8);
  v40(v36, v38);
  sub_243D9EE08();
  return (v40)(v39, v38);
}

uint64_t ComplicationCurvedLabelViewConfiguration.curvedTextConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_243D91C88(v9, &v8);
}

__n128 ComplicationCurvedLabelViewConfiguration.curvedTextConfiguration.setter(uint64_t a1)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v4 = v1[5];
  v10[4] = v1[4];
  v10[5] = v4;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  sub_243D91D44(v10);
  v6 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v6;
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  return result;
}

uint64_t ComplicationCurvedLabelViewConfiguration.labelProviders.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

void *ComplicationCurvedLabelViewConfiguration.monochromeModel.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

__n128 ComplicationCurvedLabelViewConfiguration.init(curvedTextConfiguration:monochromeModel:labelProviders:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v4;
  v5 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  *(a4 + 96) = a3;
  *(a4 + 104) = a2;
  return result;
}

uint64_t ComplicationCurvedLabelView.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_243D91EF8(v10, &v9);
}

double ComplicationCurvedLabelView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ComplicationCurvedTextViewRepresentable(0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBACF8, &qword_243DB1AF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - v11;
  v13 = v1[7];
  v65 = v1[6];
  v66 = v13;
  v67 = *(v1 + 16);
  v14 = v67;
  v15 = v1[3];
  v61 = v1[2];
  v62 = v15;
  v16 = v1[5];
  v63 = v1[4];
  v64 = v16;
  v17 = v1[1];
  v59 = *v1;
  v60 = v17;
  v18 = *(&v66 + 1);
  sub_243D91C88(&v59, &v53);
  sub_243D91C88(&v59, &v53);
  *&v53 = v18;
  *(&v53 + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADF8, &unk_243DB1E70);
  sub_243DADFF0();
  v19 = v49;
  v21 = *(&v65 + 1);
  v20 = v66;
  v22 = *(v4 + 40);
  *&v7[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAD00, &qword_243DB1B28);
  swift_storeEnumTagMultiPayload();
  v23 = v62;
  *(v7 + 2) = v61;
  *(v7 + 3) = v23;
  v24 = v64;
  *(v7 + 4) = v63;
  *(v7 + 5) = v24;
  v25 = v60;
  *v7 = v59;
  *(v7 + 1) = v25;
  *(v7 + 14) = v19;
  *(v7 + 12) = v20;
  if (v21)
  {

    v26 = v21;
  }

  else
  {
    v27 = objc_allocWithZone(type metadata accessor for MonochromeModel(0));

    v28 = [v27 init];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v53 = 0x3FF0000000000000;
    v29 = v28;
    sub_243DAD870();
    v30 = sub_243DADF40();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v53 = v30;
    v31 = v29;
    sub_243DAD870();
    v32 = sub_243DADF40();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v53 = v32;
    v26 = v31;
    sub_243DAD870();
    v21 = 0;
  }

  *(v7 + 13) = v26;
  sub_243D93564(v7, v9);
  v33 = *(&v66 + 1);
  v34 = v67;
  v35 = v21;
  *&v53 = v33;
  *(&v53 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADF8, &unk_243DB1E70);
  sub_243DADFF0();
  v36 = v49;
  sub_243D93564(v9, v12);
  *&v12[*(v10 + 36)] = v36;
  v55 = v61;
  v56 = v62;
  v57 = v63;
  v58 = v64;
  v53 = v59;
  v54 = v60;
  v46 = 0u;
  v47 = 0u;
  v48 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAD08, &unk_243DB35C0);
  sub_243DADFE0();
  LOBYTE(v36) = v51;
  v37 = v52;
  v44 = v50;
  v45 = v49;
  sub_243D935C8(v12, a1);
  v38 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAD10, &qword_243DB1C10) + 36);
  v39 = v56;
  *(v38 + 32) = v55;
  *(v38 + 48) = v39;
  v40 = v58;
  *(v38 + 64) = v57;
  *(v38 + 80) = v40;
  v41 = v54;
  *v38 = v53;
  *(v38 + 16) = v41;
  v43 = v44;
  result = *&v45;
  *(v38 + 96) = v45;
  *(v38 + 112) = v43;
  *(v38 + 128) = v36;
  *(v38 + 136) = v37;
  return result;
}

void sub_243D9231C()
{
  v0 = [objc_opt_self() currentDevice];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(MEMORY[0x277CBBAF8]) initWithDevice:v0 identitySizeClass:2];

    [v2 scaledValue_];
    v4 = v3;

    qword_27EDBACF0 = v4;
  }

  else
  {
    __break(1u);
  }
}

void *sub_243D923B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 112);
  v22 = *(v1 + 96);
  v23 = v5;
  LOBYTE(v24) = v3;
  v25 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADE0, &qword_243DB35B0);
  result = sub_243DADFF0();
  if (v16 == 2)
  {
    v7 = 0uLL;
    v8 = -1;
    v9 = 0uLL;
  }

  else
  {
    sub_243DADE20();
    v22 = 0x3FF0000000000000uLL;
    *&v23 = 0;
    *(&v23 + 1) = 0x3FF0000000000000;
    v24 = 0;
    v25 = 0;
    sub_243DADDF0();
    v20[0] = v12;
    v20[1] = v13;
    v21 = v14;
    if (qword_27EDBAAA0 != -1)
    {
      swift_once();
    }

    sub_243DAD8C0();
    sub_243DADDB0();
    v10 = v18;
    v11 = v17;
    v8 = v19;
    sub_243D93C50(&v15);
    result = sub_243D93CA4(v20);
    v9 = v10;
    v7 = v11;
  }

  *a1 = v7;
  *(a1 + 16) = v9;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_243D92564(unsigned int *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = a2[7];
  v29 = a2[6];
  v30 = v6;
  v8 = a2[6];
  v7 = a2[7];
  v31 = a2[8];
  v9 = *(a1 + 3);
  v10 = *(a1 + 32);
  v26 = v8;
  v27 = v7;
  v28 = a2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADE0, &qword_243DB35B0);
  sub_243DADFF0();
  if (v20 == 2 || (v26 = v18, v27 = v19, LOBYTE(v28) = v20, v21 = __PAIR64__(v3, v2), v22 = v4, v23 = v5, v24 = v9, v25 = v10, result = _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(&v26, &v21, *&v18, *&v19, v11, v12, v13, v14, v15, v16), (result & 1) == 0))
  {
    v26 = v29;
    v27 = v30;
    v28 = v31;
    v21 = v2 | (v3 << 32);
    v22 = v4;
    v23 = v5;
    v24 = v9;
    v25 = v10;
    sub_243D93F14(&v29, &v18, &qword_27EDBADE0, &qword_243DB35B0);
    sub_243DAE000();
  }

  return result;
}

double sub_243D9268C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v35[6] = v2[6];
  v35[7] = v5;
  v35[8] = v2[8];
  v6 = v2[3];
  v35[2] = v2[2];
  v35[3] = v6;
  v7 = v2[5];
  v35[4] = v2[4];
  v35[5] = v7;
  v8 = v2[1];
  v35[0] = *v2;
  v35[1] = v8;
  v9 = swift_allocObject();
  v10 = v2[7];
  *(v9 + 7) = v2[6];
  *(v9 + 8) = v10;
  *(v9 + 9) = v2[8];
  v11 = v2[3];
  *(v9 + 3) = v2[2];
  *(v9 + 4) = v11;
  v12 = v2[5];
  *(v9 + 5) = v2[4];
  *(v9 + 6) = v12;
  v13 = v2[1];
  *(v9 + 1) = *v2;
  *(v9 + 2) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADC8, &qword_243DB1E40);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADD0, &qword_243DB1E48) + 36));
  *v15 = sub_243D93C10;
  v15[1] = v9;
  v16 = v2[7];
  v32 = v2[6];
  v33 = v16;
  v34 = v2[8];
  v17 = v2[3];
  v28 = v2[2];
  v29 = v17;
  v18 = v2[5];
  v30 = v2[4];
  v31 = v18;
  v19 = v2[1];
  v26 = *v2;
  v27 = v19;
  sub_243D93C18(v35, v24);
  sub_243D923B8(v24);
  v20 = v25;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADD8, &unk_243DB1E50) + 36);
  result = *v24;
  v23 = v24[1];
  *v21 = v24[0];
  *(v21 + 16) = v23;
  *(v21 + 32) = v20;
  return result;
}

__n128 ComplicationCurvedLabelView<>.init(configuration:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  v47 = a1[4];
  v48 = v3;
  v49 = a1[6];
  v4 = a1[1];
  v43 = *a1;
  v44 = v4;
  v5 = a1[3];
  v45 = a1[2];
  v46 = v5;
  type metadata accessor for ComplicationCurvedTextMetricsObservable(0);
  v6 = swift_allocObject();
  if (qword_27EDBAAA8 != -1)
  {
    swift_once();
  }

  v7 = qword_27EDBD7A8;
  v8 = byte_27EDBD7B0;
  *(v6 + 16) = xmmword_27EDBD790;
  *(v6 + 24) = *(&xmmword_27EDBD790 + 8);
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  sub_243DAD7F0();
  v35 = v6;
  sub_243DADFE0();
  v9 = v33;
  v10 = v34;
  v40 = v47;
  v41 = v48;
  v42 = v49;
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v11 = v49.n128_u64[0];
  v12 = *(v49.n128_u64[0] + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v29 = v34;
    v30 = v33;
    v31 = a2;
    v14 = v48;
    sub_243D91EF8(&v43, &v33);
    v35 = v13;
    sub_243D93638(0, v12, 0);
    v13 = v35;
    v15 = (v11 + 32);
    do
    {
      v16 = *v15;
      v17 = [v16 textProvider];
      [v17 finalize];
      v18 = [v16 imageProvider];
      if (v18 && (v19 = v18, [v18 copy], v19, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D90EF4(), (swift_dynamicCast() & 1) != 0))
      {
        v20 = v32;
        type metadata accessor for WidgetNamedImageProvider(0);
        v21 = swift_dynamicCastClass();
        if (v21)
        {
          v22 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
          if ((*(v21 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
          {
            *(v21 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize) = v14;
            *(v21 + v22) = 1;
          }
        }

        else
        {
          [v32 finalizeWithMaxSDKSize:0 maxDeviceSize:*&v14 maskToCircle:*&v14];
        }
      }

      else
      {
        v20 = 0;
      }

      v23 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v17 imageProvider:v20];

      v35 = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_243D93638((v24 > 1), v25 + 1, 1);
        v13 = v35;
      }

      *(v13 + 16) = v25 + 1;
      *(v13 + 8 * v25 + 32) = v23;
      ++v15;
      --v12;
    }

    while (v12);
    sub_243D93658(&v43);
    v9 = v30;
    a2 = v31;
    v10 = v29;
  }

  v26 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v26;
  *(a2 + 96) = v42;
  v27 = v37;
  *a2 = v36;
  *(a2 + 16) = v27;
  result = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = result;
  *(a2 + 112) = v13;
  *(a2 + 120) = v9;
  *(a2 + 128) = v10;
  return result;
}

id ComplicationCurvedLabelViewConfiguration.textProvider.getter()
{
  v1 = *(v0 + 96);
  if (*(v1 + 16))
  {
    return [*(v1 + 32) textProvider];
  }

  else
  {
    return 0;
  }
}

uint64_t ComplicationCurvedLabelViewConfiguration.textProvider.setter(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_243DB1AE0;
    *(v3 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:a1 imageProvider:0];
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *(v1 + 96) = v3;
  return result;
}

void (*ComplicationCurvedLabelViewConfiguration.textProvider.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  if (*(v3 + 16))
  {
    v4 = [*(v3 + 32) textProvider];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return sub_243D92CAC;
}

void sub_243D92CAC(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_243DB1AE0;
      v5 = objc_allocWithZone(CDLabelProvider);
      v7 = v3;
      *(v4 + 32) = [v5 initWithTextProvider:v7 imageProvider:0];
    }

    else
    {
      v7 = 0;
      v4 = MEMORY[0x277D84F90];
    }

    *(*(a1 + 8) + 96) = v4;
  }

  else
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_243DB1AE0;
      *(v6 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v3 imageProvider:0];
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    *(*(a1 + 8) + 96) = v6;
  }
}

uint64_t ComplicationCurvedLabelViewConfiguration.contentProviders.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_243D93688(0, v2, 0);
    v3 = v12;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4;
      v6 = [v5 textProvider];
      v7 = [v5 imageProvider];

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_243D93688((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      v10 = v12 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t ComplicationCurvedLabelViewConfiguration.contentProviders.setter(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];
    sub_243D93638(0, v3, 0);
    v4 = v11;
    v5 = (a1 + 40);
    do
    {
      v6 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:*(v5 - 1) imageProvider:*v5];
      v12 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v9 = v6;
        sub_243D93638((v7 > 1), v8 + 1, 1);
        v6 = v9;
        v4 = v12;
      }

      v5 += 2;
      *(v4 + 16) = v8 + 1;
      *(v4 + 8 * v8 + 32) = v6;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  *(v1 + 96) = v4;
  return result;
}

uint64_t (*ComplicationCurvedLabelViewConfiguration.contentProviders.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ComplicationCurvedLabelViewConfiguration.contentProviders.getter();
  return sub_243D930CC;
}

uint64_t sub_243D930CC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return ComplicationCurvedLabelViewConfiguration.contentProviders.setter(*a1);
  }

  ComplicationCurvedLabelViewConfiguration.contentProviders.setter(v2);
}

__n128 ComplicationCurvedLabelViewConfiguration.init(contentSize:curvedTextConfiguration:textProvider:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_243DB1AE0;
    *(v6 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:a2 imageProvider:0];
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v7;
  v8 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v10;
  *(a3 + 96) = v6;
  *(a3 + 104) = 0;
  return result;
}

double ComplicationCurvedLabelViewConfiguration.init(curvedTextConfiguration:monochromeModel:contentProviders:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v20 = a1[2];
  v21 = a1[3];
  v22 = a1[4];
  v23 = a1[5];
  v18 = *a1;
  v19 = a1[1];
  v7 = *(a3 + 16);
  if (v7)
  {
    v16 = MEMORY[0x277D84F90];
    sub_243D93638(0, v7, 0);
    v8 = v16;
    v9 = (a3 + 40);
    do
    {
      v10 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:*(v9 - 1) imageProvider:*v9];
      v17 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        v13 = v10;
        sub_243D93638((v11 > 1), v12 + 1, 1);
        v10 = v13;
        v8 = v17;
      }

      v9 += 2;
      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
      --v7;
    }

    while (v7);

    v5 = a2;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  *(a4 + 32) = v20;
  *(a4 + 48) = v21;
  *(a4 + 64) = v22;
  *(a4 + 80) = v23;
  result = *&v18;
  *a4 = v18;
  *(a4 + 16) = v19;
  *(a4 + 96) = v8;
  *(a4 + 104) = v5;
  return result;
}

uint64_t sub_243D9336C@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  *a4 = v6;
  return result;
}

uint64_t sub_243D933FC(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return sub_243DAD870();
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

uint64_t sub_243D934BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADF0, &qword_243DB1E68);
  MEMORY[0x28223BE20](v2 - 8);
  sub_243D93F14(a1, &v5 - v3, &qword_27EDBADF0, &qword_243DB1E68);
  return sub_243DADAA0();
}

uint64_t sub_243D93564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComplicationCurvedTextViewRepresentable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_243D935C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBACF8, &qword_243DB1AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_243D93638(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243D93CF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_243D93688(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_243D93E04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_243D93710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_243D93758(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243D937C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_243D93834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_243D9387C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243D938F4()
{
  result = qword_27EDBADA0;
  if (!qword_27EDBADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAD10, &qword_243DB1C10);
    sub_243D93980();
    sub_243D93AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBADA0);
  }

  return result;
}

unint64_t sub_243D93980()
{
  result = qword_27EDBADA8;
  if (!qword_27EDBADA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBACF8, &qword_243DB1AF0);
    sub_243D93A0C();
    sub_243D93A64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBADA8);
  }

  return result;
}

unint64_t sub_243D93A0C()
{
  result = qword_27EDBADB0;
  if (!qword_27EDBADB0)
  {
    type metadata accessor for ComplicationCurvedTextViewRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBADB0);
  }

  return result;
}

unint64_t sub_243D93A64()
{
  result = qword_27EDBADB8;
  if (!qword_27EDBADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBADB8);
  }

  return result;
}

unint64_t sub_243D93AB8()
{
  result = qword_27EDBADC0;
  if (!qword_27EDBADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBADC0);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_243D93B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_243D93B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_243D93CF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_243D93E04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBADE8, &qword_243DB1E60);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_243D93F14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_243D93F7C()
{
  result = qword_27EDBAE00;
  if (!qword_27EDBAE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBADD8, &unk_243DB1E50);
    sub_243D94008();
    sub_243D940EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAE00);
  }

  return result;
}

unint64_t sub_243D94008()
{
  result = qword_27EDBAE08;
  if (!qword_27EDBAE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBADD0, &qword_243DB1E48);
    sub_243D90C40(&qword_27EDBAE10, &qword_27EDBADC8, &qword_243DB1E40, MEMORY[0x277CE04B0]);
    sub_243D90C40(&qword_27EDBAE18, &qword_27EDBAE20, &unk_243DB35A0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAE08);
  }

  return result;
}

unint64_t sub_243D940EC()
{
  result = qword_27EDBAE28;
  if (!qword_27EDBAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAE28);
  }

  return result;
}

uint64_t View.complicationContainerPath(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v3;
  return MEMORY[0x245D516E0](v6, a2, &type metadata for ComplicationContainerPathModifier, a3);
}

uint64_t static ComplicationContainerPathKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = xmmword_27EDBAE30;
  v3 = qword_27EDBAE40;
  v4 = qword_27EDBAE48;
  v5 = byte_27EDBAE50;
  result = sub_243D94204(xmmword_27EDBAE30, *(&xmmword_27EDBAE30 + 1), qword_27EDBAE40, qword_27EDBAE48, byte_27EDBAE50);
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_243D94204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_243D94218(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_243D94218(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return v5;
}

uint64_t static ComplicationContainerPathKey.defaultValue.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = xmmword_27EDBAE30;
  v3 = qword_27EDBAE40;
  v4 = qword_27EDBAE48;
  v5 = *(a1 + 16);
  xmmword_27EDBAE30 = *a1;
  *&qword_27EDBAE40 = v5;
  v6 = byte_27EDBAE50;
  byte_27EDBAE50 = *(a1 + 32);
  return sub_243D94294(v2, *(&v2 + 1), v3, v4, v6);
}

uint64_t sub_243D94294(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_243D942A8(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_243D942A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return v5;
}

uint64_t sub_243D9431C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = xmmword_27EDBAE30;
  v3 = qword_27EDBAE40;
  v4 = qword_27EDBAE48;
  *a1 = xmmword_27EDBAE30;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = byte_27EDBAE50;
  *(a1 + 32) = byte_27EDBAE50;
  return sub_243D94204(v2, *(&v2 + 1), v3, v4, v5);
}

uint64_t sub_243D9437C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_beginAccess();
  v6 = *(&xmmword_27EDBAE30 + 1);
  v11 = xmmword_27EDBAE30;
  v7 = qword_27EDBAE40;
  v8 = qword_27EDBAE48;
  *&xmmword_27EDBAE30 = v1;
  *(&xmmword_27EDBAE30 + 1) = v2;
  qword_27EDBAE40 = v3;
  qword_27EDBAE48 = v4;
  v9 = byte_27EDBAE50;
  byte_27EDBAE50 = v5;
  sub_243D94204(v1, v2, v3, v4, v5);
  return sub_243D94294(v11, v6, v7, v8, v9);
}

double static ComplicationContainerPathKey.reduce(value:nextValue:)(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  if (*(a1 + 32) == 255)
  {
    a2(&v10);
    result = *&v10;
    v4 = v11;
    *a1 = v10;
    *(a1 + 16) = v4;
    *(a1 + 32) = v12;
  }

  else
  {
    a2(v5);
    if (v6 != 255)
    {
      v7 = v5[0];
      v8 = v5[1];
      v9 = v6;
      v10 = 0x3FF0000000000000uLL;
      *&v11 = 0;
      *(&v11 + 1) = 0x3FF0000000000000;
      v12 = 0;
      v13 = 0;
      sub_243DADDA0();
      sub_243D944E0(v5);
    }
  }

  return result;
}

uint64_t sub_243D944E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE58, &qword_243DB1E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_243D94548(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  if (*(a1 + 32) == 255)
  {
    a2(&v9);
    v7 = v11;
    result = *&v9;
    v8 = v10;
    *a1 = v9;
    *(a1 + 16) = v8;
    *(a1 + 32) = v7;
  }

  else
  {
    a2(&v9);
    v4 = v11;
    if (v11 != 255)
    {
      v5 = v9;
      v6 = v10;
      v9 = 0x3FF0000000000000uLL;
      *&v10 = 0;
      *(&v10 + 1) = 0x3FF0000000000000;
      v11 = 0;
      v12 = 0;
      sub_243DADDA0();

      sub_243D94294(v5, *(&v5 + 1), v6, *(&v6 + 1), v4);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComplicationContainerPathKey(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ComplicationContainerPathKey(_WORD *result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathV7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 6)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_243D94770(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_243D947BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t sub_243D94830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE60, &qword_243DB2058);
  MEMORY[0x28223BE20](v4);
  v6 = (&v26 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE68, &qword_243DB2060);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = *(v2 + 32);
  if (v12 == 255)
  {
    (*(v8 + 16))(v6, a1, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v13 = *(v2 + 24);
    v30 = *(v2 + 16);
    v31 = v13;
    v14 = *(v2 + 8);
    v27 = *v2;
    v28 = v14;
    (*(v8 + 16))(v11, a1, v7);
    v15 = *(v8 + 80);
    v29 = v4;
    v16 = (v15 + 16) & ~v15;
    v17 = swift_allocObject();
    (*(v8 + 32))(v17 + v16, v11, v7);
    v18 = v17 + ((v16 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19 = *(v2 + 16);
    *v18 = *v2;
    *(v18 + 16) = v19;
    *(v18 + 32) = *(v2 + 32);
    v20 = v17 + ((v16 + v9 + 47) & 0xFFFFFFFFFFFFFFF8);
    v22 = v27;
    v21 = v28;
    *v20 = v27;
    *(v20 + 8) = v21;
    v24 = v30;
    v23 = v31;
    *(v20 + 16) = v30;
    *(v20 + 24) = v23;
    *(v20 + 32) = v12;
    *v6 = sub_243D94CF4;
    v6[1] = v17;
    swift_storeEnumTagMultiPayload();
    sub_243D94DB8(v2, v33);
    sub_243D94218(v22, v21, v24, v23, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE70, &qword_243DB2068);
  sub_243D90C40(&qword_27EDBAE78, &qword_27EDBAE70, &qword_243DB2068, MEMORY[0x277CDF7D8]);
  sub_243D90C40(&qword_27EDBAE80, &qword_27EDBAE68, &qword_243DB2060, MEMORY[0x277CE04B0]);
  return sub_243DADC30();
}

double sub_243D94B24@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_243DADC60();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_243DADD00();
  sub_243DAD910();
  (*(v5 + 8))(v7, v4);
  sub_243DADE00();
  v8 = v16;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE68, &qword_243DB2060);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE88, &qword_243DB2070) + 36);
  result = *&v14;
  v12 = v15;
  *v10 = v14;
  *(v10 + 16) = v12;
  *(v10 + 32) = v8;
  return result;
}

double sub_243D94CF4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAE68, &qword_243DB2060) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_243D94B24(v4, a1);
}

unint64_t sub_243D94DF0()
{
  result = qword_27EDBAE90;
  if (!qword_27EDBAE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27EDBAE98, &qword_243DB2078);
    sub_243D90C40(&qword_27EDBAE78, &qword_27EDBAE70, &qword_243DB2068, MEMORY[0x277CDF7D8]);
    sub_243D90C40(&qword_27EDBAE80, &qword_27EDBAE68, &qword_243DB2060, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAE90);
  }

  return result;
}

uint64_t sub_243D94ED4(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_243DAE0B0();
}

void sub_243D950A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v18 = [objc_opt_self() sharedRenderingContext];
  v19 = [v18 device];

  v20 = CDRichComplicationCornerInnerImageMaxSize(v19);
  v22 = *(a4 + 16);
  if (v22)
  {
    v23 = v20;
    v24 = v21;
    v38 = v19;
    v39 = a1;
    v40 = a2;
    v41 = a7;
    v42 = a3;
    v43 = a6;
    v45 = MEMORY[0x277D84F90];
    sub_243D93638(0, v22, 0);
    v25 = v45;
    v26 = 32;
    do
    {
      v27 = *(a4 + v26);
      v28 = [v27 textProvider];
      [v28 finalize];
      v29 = [v27 imageProvider];
      if (v29 && (v30 = v29, [v29 copy], v30, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
      {
        v31 = v44;
        type metadata accessor for WidgetNamedImageProvider(0);
        v32 = swift_dynamicCastClass();
        if (v32)
        {
          v33 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
          if ((*(v32 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
          {
            v34 = (v32 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
            *v34 = v23;
            v34[1] = v24;
            *(v32 + v33) = 1;
          }
        }

        else
        {
          [v44 finalizeWithMaxSDKSize:0 maxDeviceSize:v23 maskToCircle:{v24, v23, v24}];
        }
      }

      else
      {
        v31 = 0;
      }

      v35 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v28 imageProvider:v31];

      v37 = *(v45 + 16);
      v36 = *(v45 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_243D93638((v36 > 1), v37 + 1, 1);
      }

      *(v45 + 16) = v37 + 1;
      *(v45 + 8 * v37 + 32) = v35;
      v26 += 8;
      --v22;
    }

    while (v22);

    a6 = v43;
    a7 = v41;
    a3 = v42;
    a1 = v39;
    a2 = v40;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  *a7 = a8;
  *(a7 + 8) = a9;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = v25;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
}

double sub_243D95398()
{
  v6.origin.x = sub_243D953FC();
  x = v6.origin.x;
  y = v6.origin.y;
  width = v6.size.width;
  height = v6.size.height;
  MidX = CGRectGetMidX(v6);
  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  CGRectGetMidY(v7);
  return MidX;
}

double sub_243D953FC()
{
  v1 = [objc_opt_self() sharedRenderingContext];
  v2 = [v1 device];

  CDRichComplicationCornerTextCustomViewRect(v2, *(v0 + 16));
  v4 = v3;

  return v4;
}

uint64_t sub_243D954A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v25 = sub_243DAD9D0();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  sub_243DAD9E0();
  sub_243DAD9E0();
  sub_243DAD9E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  sub_243DAD9E0();
  sub_243DAD9E0();
  swift_getTupleTypeMetadata2();
  sub_243DAE0A0();
  swift_getWitnessTable();
  v6 = sub_243DAE070();
  v22 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
  v9 = sub_243DAD9E0();
  v23 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *(a1 + 24);
  v28 = v5;
  v29 = v15;
  v30 = v26;
  sub_243DAE090();
  sub_243DAE060();
  swift_getKeyPath();
  v16 = v24;
  v17 = v25;
  (*(v3 + 104))(v24, *MEMORY[0x277CDFA88], v25);
  WitnessTable = swift_getWitnessTable();
  sub_243DADE60();

  (*(v3 + 8))(v16, v17);
  (*(v22 + 8))(v8, v6);
  v19 = sub_243D90C40(&qword_27EDBAB98, &qword_27EDBAB90, &qword_243DB1AA0, MEMORY[0x277CE0868]);
  v31 = WitnessTable;
  v32 = v19;
  swift_getWitnessTable();
  sub_243D9EE08();
  v20 = *(v23 + 8);
  v20(v12, v9);
  sub_243D9EE08();
  return (v20)(v14, v9);
}

uint64_t sub_243D9590C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v63 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v55[0] = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB80, &qword_243DB16B8);
  v8 = sub_243DAD9E0();
  v66 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v55 - v9;
  v59 = sub_243DAD9E0();
  v70 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = v55 - v11;
  v62 = sub_243DAD9E0();
  v72 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = v55 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB88, &unk_243DB16C0);
  v69 = sub_243DAD9E0();
  v73 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v58 = v55 - v13;
  v14 = sub_243DAD9E0();
  v74 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v64 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v71 = v55 - v17;
  v55[1] = type metadata accessor for ComplicationCornerTextView(0, a2, a3, v18);
  sub_243D953FC();
  v20 = v19 / *a1;
  v22 = v21 / *(a1 + 8);
  sub_243D953FC();
  v23 = *(a1 + 24);
  v68 = *(a1 + 16);
  v67 = v23;
  v24 = *(a1 + 32);
  v65 = *(a1 + 40);
  type metadata accessor for MonochromeModel(0);
  sub_243D96718(v25);

  v26 = v24;
  v61 = sub_243DAD9C0();
  v60 = v27;
  v28 = v55[0];
  (*(a1 + 48))();
  swift_getKeyPath();
  LOBYTE(v79[0]) = 1;
  sub_243DADE60();

  (*(v63 + 8))(v28, a2);
  sub_243DAE0D0();
  v30 = v29;
  v32 = v31;
  v33 = sub_243D90C40(&qword_27EDBABA8, &qword_27EDBAB80, &qword_243DB16B8, MEMORY[0x277CE0868]);
  v81[10] = a3;
  v81[11] = v33;
  WitnessTable = swift_getWitnessTable();
  v35 = v56;
  MEMORY[0x245D51680](v8, WitnessTable, v20, v22, v30, v32);
  (*(v66 + 8))(v10, v8);
  sub_243DAE090();
  v81[8] = WitnessTable;
  v81[9] = MEMORY[0x277CDF690];
  v36 = v59;
  v37 = swift_getWitnessTable();
  v38 = v57;
  sub_243DADEB0();
  (*(v70 + 8))(v35, v36);
  v81[6] = v37;
  v81[7] = MEMORY[0x277CDF678];
  v39 = v62;
  v40 = swift_getWitnessTable();
  sub_243D90BEC();
  v41 = v58;
  sub_243DADEF0();
  (*(v72 + 8))(v38, v39);
  sub_243D95398();
  v42 = sub_243D90C40(&qword_27EDBABB8, &qword_27EDBAB88, &unk_243DB16C0, MEMORY[0x277CDF4F0]);
  v81[4] = v40;
  v81[5] = v42;
  v43 = v69;
  v44 = swift_getWitnessTable();
  v45 = v64;
  sub_243DADEE0();
  (*(v73 + 8))(v41, v43);
  v81[2] = v44;
  v81[3] = MEMORY[0x277CDFB28];
  v46 = swift_getWitnessTable();
  v47 = v71;
  sub_243D9EE08();
  v48 = v74;
  v49 = *(v74 + 8);
  v49(v45, v14);
  v79[0] = v68;
  v79[1] = v67;
  v79[2] = v65;
  v79[3] = v61;
  v50 = v60;
  v80 = v60;
  v81[0] = v79;
  v51 = *(v48 + 16);
  v52 = v47;
  v51(v45, v47, v14);
  v81[1] = v45;

  v53 = v50;
  v78[0] = &type metadata for ComplicationCornerTextViewRepresentable;
  v78[1] = v14;
  v76 = sub_243D96770();
  v77 = v46;
  sub_243D94ED4(v81, 2uLL, v78);

  v49(v52, v14);
  v49(v45, v14);
}

id sub_243D96214(void *a1)
{
  [a1 setFilterProvider_];
  [a1 setCornerComplicationPosition_];
  [a1 setFontStyle_];
  sub_243D9F494(v1[2]);
  sub_243D96A78(0, &qword_27EDBAF30, off_278DF2F10);
  v3 = sub_243DAE1A0();

  [a1 setInnerLabelProviders_];

  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  if (v5 >= 1.0)
  {
    return [a1 updateMonochromeColor];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return [a1 transitionToMonochromeWithFraction_];
}

id sub_243D96570(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ComplicationCornerTextViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_243D965C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243D96618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D96660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243D96718(double a1)
{
  result = qword_27EDBABA0;
  if (!qword_27EDBABA0)
  {
    type metadata accessor for MonochromeModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBABA0);
  }

  return result;
}

unint64_t sub_243D96770()
{
  result = qword_27EDBAF20;
  if (!qword_27EDBAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAF20);
  }

  return result;
}

id sub_243D967C4()
{
  v1 = [objc_allocWithZone(type metadata accessor for ComplicationCornerTextViewRepresentable._CornerView()) initWithFontFallback_];
  sub_243D96214(v1);
  return v1;
}

uint64_t sub_243D96824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D96A24();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243D96888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D96A24();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243D968EC(uint64_t a1)
{
  sub_243D96A24();
  sub_243DADBF0();
  __break(1u);
}

id sub_243D96914()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for ComplicationCornerTextViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_243D96980(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D969C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243D96A24()
{
  result = qword_27EDBAF28;
  if (!qword_27EDBAF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAF28);
  }

  return result;
}

uint64_t sub_243D96A78(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_243D96AC0(uint64_t a1)
{
  v2 = sub_243D9E690(a1);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_6:

    goto LABEL_7;
  }

  if (!sub_243DAE2E0())
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
  v3 = sub_243DAE1A0();

  v4 = [objc_opt_self() providerWithProviders_];

  if (v4)
  {
    v5 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v4 imageProvider:0];
    goto LABEL_9;
  }

LABEL_7:
  v6 = sub_243D97514(a1);
  if (!v6)
  {
    return 0;
  }

  v4 = v6;
  v5 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:0 imageProvider:v6];
LABEL_9:
  v7 = v5;

  return v7;
}

uint64_t sub_243D96BFC@<X0>(void *a1@<X8>)
{
  v21 = v2[1];
  v22 = *v2;
  v4 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  v8 = v2[6];
  type metadata accessor for MonochromeModel(0);
  sub_243D96718(v9);
  v10 = v4;

  v20 = v7;

  v11 = sub_243DAD9C0();
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF38, &unk_243DB24B0) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAB90, &qword_243DB1AA0) + 28);
  v17 = *MEMORY[0x277CDFA88];
  v18 = sub_243DAD9D0();
  result = (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = KeyPath;
  *a1 = v22;
  a1[1] = v21;
  a1[2] = v11;
  a1[3] = v13;
  a1[4] = v5;
  a1[5] = v20;
  a1[6] = v6;
  a1[7] = v8;
  return result;
}

void sub_243D96D54(void *a1)
{
  v3 = sub_243D96AC0(v1[6]);
  v4 = sub_243D96AC0(v1[7]);
  [a1 handleGaugeProvider:v1[5] leftLabelProvider:v3 rightLabelProvider:v4];
  sub_243D9F494(v1[4]);
  sub_243D96A78(0, &qword_27EDBAF30, off_278DF2F10);
  v5 = sub_243DAE1A0();

  [a1 setOuterLabelProviders_];

  [a1 setFilterProvider_];
  [a1 setCornerComplicationPosition_];
  [a1 setFontStyle_];
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  if (v6 >= 1.0)
  {
    [a1 updateMonochromeColor];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_243DAD860();

    [a1 transitionToMonochromeWithFraction_];
  }
}

id sub_243D970F8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ComplicationCornerStackedGaugeViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_243D9717C()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for ComplicationCornerStackedGaugeViewRepresentable._CornerView();
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_243D971D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D9721C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_243D9727C()
{
  result = qword_27EDBAF40;
  if (!qword_27EDBAF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAF38, &unk_243DB24B0);
    sub_243D97308();
    sub_243D9735C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAF40);
  }

  return result;
}

unint64_t sub_243D97308()
{
  result = qword_27EDBAF48;
  if (!qword_27EDBAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAF48);
  }

  return result;
}

unint64_t sub_243D9735C()
{
  result = qword_27EDBAB98;
  if (!qword_27EDBAB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBAB90, &qword_243DB1AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAB98);
  }

  return result;
}

id sub_243D973C0()
{
  v1 = [objc_allocWithZone(type metadata accessor for ComplicationCornerStackedGaugeViewRepresentable._CornerView()) initWithFontFallback_];
  sub_243D96D54(v1);
  return v1;
}

uint64_t sub_243D97420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D975A4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_243D97484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_243D975A4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_243D974E8(uint64_t a1)
{
  sub_243D975A4();
  sub_243DADBF0();
  __break(1u);
}

id sub_243D97514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v3 = *i;
    v4 = [v3 imageProvider];
    if (v4)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  v6 = [v3 imageProvider];
  return v6;
}

unint64_t sub_243D975A4()
{
  result = qword_27EDBAF58;
  if (!qword_27EDBAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBAF58);
  }

  return result;
}

double MonochromeModel.fraction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return v1;
}

double sub_243D9766C@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_243D976EC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_243DAD870();
}

uint64_t MonochromeModel.fraction.setter(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_243DAD870();
}

uint64_t (*MonochromeModel.fraction.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_243DAD850();
  return sub_243D99DE0;
}

uint64_t sub_243D97898(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF70, &qword_243DB2640);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF68, &qword_243DB2638);
  sub_243DAD840();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t MonochromeModel.$fraction.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF70, &qword_243DB2640);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF68, &qword_243DB2638);
  sub_243DAD840();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MonochromeModel.$fraction.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF70, &qword_243DB2640);
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

  v10 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__fraction;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF68, &qword_243DB2638);
  sub_243DAD830();
  swift_endAccess();
  return sub_243D99DE4;
}

uint64_t (*MonochromeModel.accent.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_243DAD850();
  return sub_243D99DE0;
}

uint64_t sub_243D97DAC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD840();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t MonochromeModel.$accent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD840();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MonochromeModel.$accent.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
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

  v10 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__accent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD830();
  swift_endAccess();
  return sub_243D99DE4;
}

uint64_t sub_243D981EC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return v3;
}

uint64_t sub_243D9826C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_243DAD870();
}

uint64_t (*MonochromeModel.background.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_243DAD850();
  return sub_243D98378;
}

uint64_t sub_243D98398(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD840();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t MonochromeModel.$background.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD840();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MonochromeModel.$background.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF88, &qword_243DB2698);
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

  v10 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__background;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  sub_243DAD830();
  swift_endAccess();
  return sub_243D987C4;
}

uint64_t MonochromeModel.style.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return v1;
}

uint64_t sub_243D9883C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  *a2 = v4;
  return result;
}

uint64_t sub_243D988BC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_243DAD870();
}

uint64_t MonochromeModel.style.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_243DAD870();
}

uint64_t (*MonochromeModel.style.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_243DAD850();
  return sub_243D99DE0;
}

void sub_243D98A3C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_243D98AC0(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_243DAD830();
  return swift_endAccess();
}

uint64_t sub_243D98B38(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_243DAD830();
  return swift_endAccess();
}

uint64_t sub_243D98BB4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDBAFA8, &qword_243DB2738);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAFA0, &qword_243DB2730);
  sub_243DAD840();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t MonochromeModel.$style.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDBAFA8, &qword_243DB2738);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAFA0, &qword_243DB2730);
  sub_243DAD840();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MonochromeModel.$style.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDBAFA8, &qword_243DB2738);
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

  v10 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__style;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAFA0, &qword_243DB2730);
  sub_243DAD830();
  swift_endAccess();
  return sub_243D99DE4;
}

void sub_243D98FE0(uint64_t a1, char a2)
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
    sub_243DAD840();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_243DAD840();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id MonochromeModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MonochromeModel.init()()
{
  ObjectType = swift_getObjectType();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAFA0, &qword_243DB2730);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF80, &qword_243DB2690);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAF68, &qword_243DB2638);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__fraction;
  v22 = 0;
  sub_243DAD820();
  (*(v9 + 32))(&v0[v12], v11, v8);
  v13 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__accent;
  v22 = sub_243DADF30();
  sub_243DAD820();
  v14 = *(v5 + 32);
  v14(&v0[v13], v7, v4);
  v15 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__background;
  v22 = sub_243DADF30();
  sub_243DAD820();
  v14(&v0[v15], v7, v4);
  v16 = OBJC_IVAR____TtC19ComplicationDisplay15MonochromeModel__style;
  v22 = 1;
  type metadata accessor for CLKMonochromeFilterStyle(0);
  sub_243DAD820();
  (*(v1 + 32))(&v0[v16], v3, v19);
  v21.receiver = v0;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

id MonochromeModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_243D995FC@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_243DAD810();
  *a2 = result;
  return result;
}

UIColor_optional __swiftcall MonochromeModel.color(for:accented:)(UIView *a1, Swift::Bool accented)
{
  v2 = sub_243D99AFC(accented);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

UIColor_optional __swiftcall MonochromeModel.backgroundColor(for:)(UIView *a1)
{
  v1 = 0;
  result.value.super.isa = v1;
  return result;
}

uint64_t sub_243D99838(uint64_t a1)
{
  sub_243D96A78(0, &qword_27EDBB048, 0x277D75348);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  v1 = sub_243DAE220();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  v2 = sub_243DAE220();
  v3 = CLKUIMonochromeFiltersForStyle();

  if (!v3)
  {
    return 0;
  }

  sub_243D96A78(0, &qword_27EDBB040, 0x277CD9EA0);
  v4 = sub_243DAE1B0();

  return v4;
}

uint64_t sub_243D99994(uint64_t a1, double a2)
{
  sub_243D96A78(0, &qword_27EDBB048, 0x277D75348);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  v2 = sub_243DAE220();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  v3 = sub_243DAE220();
  v4 = CLKUIMonochromeFiltersForStyle();

  if (!v4)
  {
    return 0;
  }

  sub_243D96A78(0, &qword_27EDBB040, 0x277CD9EA0);
  v5 = sub_243DAE1B0();

  return v5;
}

uint64_t sub_243D99AFC(char a1)
{
  sub_243D96A78(0, &qword_27EDBB048, 0x277D75348);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return sub_243DAE220();
}

uint64_t type metadata accessor for MonochromeModel(uint64_t a1)
{
  result = qword_27EDBAFB8;
  if (!qword_27EDBAFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_243D99C18(uint64_t a1)
{
  sub_243D99D3C(319, &qword_27EDBAFC8, MEMORY[0x277D839F8]);
  if (v1 <= 0x3F)
  {
    sub_243D99D3C(319, &qword_27EDBAFD0, MEMORY[0x277CE0F78]);
    if (v2 <= 0x3F)
    {
      sub_243D99D88(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_243D99D3C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_243DAD880();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_243D99D88(uint64_t a1)
{
  if (!qword_27EDBAFD8)
  {
    type metadata accessor for CLKMonochromeFilterStyle(255);
    v1 = sub_243DAD880();
    if (!v2)
    {
      atomic_store(v1, &qword_27EDBAFD8);
    }
  }
}

void ComplicationCurvedTextMetrics.init(angularRange:accessoryCenter:accessoryRotation:)(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 32) = 0;
}

double sub_243D99E8C()
{
  byte_27EDBD7B0 = 0;
  result = 0.0;
  xmmword_27EDBD790 = 0u;
  unk_27EDBD7A0 = 0u;
  return result;
}

double sub_243D99EA4()
{
  if (qword_27EDBAAA8 != -1)
  {
    swift_once();
  }

  result = *&qword_27EDBD7A8;
  qword_27EDBD7B8 = xmmword_27EDBD790;
  unk_27EDBD7C0 = *(&xmmword_27EDBD790 + 8);
  qword_27EDBD7D0 = qword_27EDBD7A8;
  byte_27EDBD7D8 = 1;
  return result;
}

double sub_243D99F24()
{
  if (qword_27EDBAAB0 != -1)
  {
    swift_once();
  }

  result = *&qword_27EDBD7D0;
  qword_27EDBB050 = qword_27EDBD7B8;
  *algn_27EDBB058 = unk_27EDBD7C0;
  qword_27EDBB068 = qword_27EDBD7D0;
  byte_27EDBB070 = byte_27EDBD7D8;
  return result;
}

double static ComplicationCurvedTextMetricsKey.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EDBAAB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *&qword_27EDBB068;
  v3 = byte_27EDBB070;
  *a1 = qword_27EDBB050;
  *(a1 + 8) = *algn_27EDBB058;
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t static ComplicationCurvedTextMetricsKey.defaultValue.setter(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (qword_27EDBAAB8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  qword_27EDBB050 = v1;
  *algn_27EDBB058 = v2;
  qword_27EDBB060 = v3;
  qword_27EDBB068 = v4;
  byte_27EDBB070 = v5;
  return result;
}

uint64_t (*static ComplicationCurvedTextMetricsKey.defaultValue.modify(uint64_t a1))()
{
  if (qword_27EDBAAB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_243D9A150@<D0>(uint64_t a1@<X8>)
{
  if (qword_27EDBAAB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *&qword_27EDBB068;
  v3 = byte_27EDBB070;
  *a1 = qword_27EDBB050;
  *(a1 + 8) = *algn_27EDBB058;
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_243D9A1E4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (qword_27EDBAAB8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  qword_27EDBB050 = v1;
  *algn_27EDBB058 = v2;
  qword_27EDBB060 = v3;
  qword_27EDBB068 = v4;
  byte_27EDBB070 = v5;
  return result;
}

void *static ComplicationCurvedTextMetricsKey.reduce(value:nextValue:)(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*(result + 32) == 1)
  {
    result = a2(&v7);
    v3 = v7;
    v4 = v8;
    v5 = v9;
    v6 = v10;
  }

  else
  {
    v6 = 0;
    v3 = *result;
    v4 = *(result + 1);
    v5 = result[3];
  }

  *v2 = v3;
  *(v2 + 1) = v4;
  v2[3] = v5;
  *(v2 + 32) = v6;
  return result;
}

void *sub_243D9A2F4(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*(result + 32) == 1)
  {
    result = a2(&v7);
    v3 = v7;
    v4 = v8;
    v5 = v9;
    v6 = v10;
  }

  else
  {
    v6 = 0;
    v3 = *result;
    v4 = *(result + 1);
    v5 = result[3];
  }

  *v2 = v3;
  *(v2 + 1) = v4;
  v2[3] = v5;
  *(v2 + 32) = v6;
  return result;
}

double sub_243D9A36C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_243D9AA14();
  sub_243DAD7C0();

  result = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  return result;
}

double sub_243D9A3FC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_243D9AA14();
  sub_243DAD7C0();

  result = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = *(v3 + 16);
  *(a2 + 8) = *(v3 + 24);
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_243D9A48C(uint64_t *a1, double a2, double a3, double a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v9 = *(a1 + 3);
  v10 = *(a1 + 32);
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = v9;
  v15 = v10;
  return sub_243D9A4DC(&v12, v9, *&v13, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_243D9A4DC(__int128 *a1, double a2, double a3, double a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  v10 = a1[1];
  v22 = *a1;
  v23 = v10;
  v24 = *(a1 + 32);
  v18 = *(v9 + 16);
  v19 = *(v9 + 24);
  v11 = *(v9 + 48);
  v20 = *(v9 + 40);
  v21 = v11;
  v12 = a1[1];
  v16[0] = *a1;
  v16[1] = v12;
  v17 = *(a1 + 32);
  result = _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(&v18, v16, *&v12, *&v10, v16[0], a5, a6, a7, a8, a9);
  if (result)
  {
    v14 = v23;
    *(v9 + 16) = v22;
    *(v9 + 32) = v14;
    *(v9 + 48) = v24;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v18 = v9;
    sub_243D9AA14();
    sub_243DAD7B0();
  }

  return result;
}

__n128 sub_243D9A60C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(a2 + 32);
  return result;
}

uint64_t sub_243D9A620()
{
  v1 = OBJC_IVAR____TtC19ComplicationDisplay39ComplicationCurvedTextMetricsObservable___observationRegistrar;
  v2 = sub_243DAD800();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

__n128 sub_243D9A6BC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  swift_getKeyPath();
  sub_243D9AA14();
  sub_243DAD7C0();

  v12 = *(v5 + 24);
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB098, &qword_243DB29D8);
  v9 = *(v5 + 16);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB0A0, &qword_243DB29E0) + 36);
  *v10 = v9;
  result = v12;
  *(v10 + 8) = v12;
  *(v10 + 24) = v6;
  *(v10 + 32) = v7;
  return result;
}

uint64_t _s19ComplicationDisplay0A17CurvedTextMetricsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, double a3, double a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  if (sub_243DADF00())
  {
    return v14 ^ v15 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_243D9A83C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_243D9A890(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for ComplicationCurvedTextMetricsObservable(uint64_t a1)
{
  result = qword_27EDBB080;
  if (!qword_27EDBB080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_243D9A94C(uint64_t a1)
{
  result = sub_243DAD800();
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

unint64_t sub_243D9AA14()
{
  result = qword_27EDBB090;
  if (!qword_27EDBB090)
  {
    type metadata accessor for ComplicationCurvedTextMetricsObservable(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB090);
  }

  return result;
}

__n128 sub_243D9AA6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *v2;
  v4 = *(v2 + 16);
  *(v1 + 48) = *(v2 + 32);
  *(v1 + 16) = result;
  *(v1 + 32) = v4;
  return result;
}

unint64_t sub_243D9AA84()
{
  result = qword_27EDBB0A8;
  if (!qword_27EDBB0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0A0, &qword_243DB29E0);
    sub_243D90C40(&qword_27EDBB0B0, &qword_27EDBB098, &qword_243DB29D8, MEMORY[0x277CE04B0]);
    sub_243D90C40(&qword_27EDBB0B8, &qword_27EDBB0C0, &qword_243DB29E8, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB0A8);
  }

  return result;
}

uint64_t ComplicationCornerViewConfiguration.outerLabelProviders.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void *ComplicationCornerViewConfiguration.innerContent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 48);
  *(a1 + 24) = v5;
  return sub_243D9AC40(v2, v3, v4, v5);
}

void *sub_243D9AC40(void *result, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    v5 = result;
  }
}

__n128 ComplicationCornerViewConfiguration.innerContent.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  sub_243D9ACF4(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

void *sub_243D9ACF4(void *result, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }
  }
}

__n128 ComplicationCornerViewConfiguration.init(contentSize:outerLabelProviders:innerContent:position:fontStyle:monochromeModel:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v8 = a2[1].n128_u64[0];
  v9 = a2[1].n128_u8[8];
  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = a1;
  result = *a2;
  *(a6 + 24) = *a2;
  *(a6 + 40) = v8;
  *(a6 + 48) = v9;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = a5;
  return result;
}

__n128 CornerComplicationView.init(configuration:content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v4;
  *(a4 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  return result;
}

void sub_243D9AE20(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(v3 + 56);
  v8 = [objc_opt_self() currentDevice];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() hitTestPathWithViewBounds:v7 position:v8 forDevice:{0.0, 0.0, a2, a3}];

    v11 = [v10 CGPath];
    sub_243DADE30();

    *a1 = v12;
    *(a1 + 16) = v13;
    *(a1 + 32) = v14;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CornerComplicationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[3];
  v38[2] = v2[2];
  v38[3] = v4;
  v5 = v2[5];
  v38[4] = v2[4];
  v38[5] = v5;
  v6 = v2[1];
  v38[0] = *v2;
  v38[1] = v6;
  v7 = swift_allocObject();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  v10 = v2[3];
  *(v7 + 64) = v2[2];
  *(v7 + 80) = v10;
  v11 = v2[5];
  *(v7 + 96) = v2[4];
  *(v7 + 112) = v11;
  v12 = v2[1];
  *(v7 + 32) = *v2;
  *(v7 + 48) = v12;
  (*(*(a1 - 8) + 16))(v37, v38, a1);
  type metadata accessor for ComplicationCornerCircularView(255, v8, v9, v13);
  type metadata accessor for ComplicationCornerTextView(255, v8, v9, v14);
  sub_243DADC40();
  sub_243DADC40();
  type metadata accessor for ComplicationCornerGaugeView(255, v8, v9, v15);
  sub_243DADC40();
  sub_243DADC40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
  sub_243DAD9E0();
  sub_243DAD9E0();
  WitnessTable = swift_getWitnessTable();
  v35 = sub_243D9B860();
  v36 = swift_getWitnessTable();
  v33 = WitnessTable;
  v34 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v31 = sub_243D9B8B4();
  v32 = swift_getWitnessTable();
  v29 = v17;
  v30 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = sub_243D9B908();
  v25 = swift_getWitnessTable();
  v26 = sub_243D940EC();
  swift_getWitnessTable();
  v23 = sub_243DAD980();
  v24 = v18;
  v19 = sub_243DAD990();
  swift_getWitnessTable();
  v20 = *(*(v19 - 8) + 16);
  v20(v37, &v23, v19);

  v23 = v37[0];
  v24 = v37[1];
  v20(a2, &v23, v19);
}

uint64_t sub_243D9B28C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v48[1] = a1;
  v56 = a5;
  v55 = sub_243DADA20();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[0] = type metadata accessor for ComplicationCornerCircularView(255, a3, a4, v10);
  v48[2] = type metadata accessor for ComplicationCornerTextView(255, a3, a4, v11);
  v48[4] = sub_243DADC40();
  v48[3] = sub_243DADC40();
  v48[5] = type metadata accessor for ComplicationCornerGaugeView(255, a3, a4, v12);
  v50 = sub_243DADC40();
  v13 = sub_243DADC40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
  v14 = sub_243DAD9E0();
  v54 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v49 = v48 - v15;
  v16 = sub_243DAD9E0();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v51 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v52 = v48 - v20;
  v21 = a2[3];
  v86 = a2[2];
  v87 = v21;
  v22 = a2[5];
  v88 = a2[4];
  v89 = v22;
  v23 = a2[1];
  v84 = *a2;
  v85 = v23;
  v25 = type metadata accessor for CornerComplicationView(0, a3, a4, v24);
  sub_243D9B96C(v25, &v78);
  v74 = v80;
  v75 = v81;
  v76 = v82;
  v77 = v83;
  v72 = v78;
  v73 = v79;
  sub_243DADA10();
  sub_243DAD900();
  sub_243D9AE20(v90, v26, v27);
  v69 = v90[0];
  v70 = v90[1];
  v71 = v91;
  WitnessTable = swift_getWitnessTable();
  v29 = sub_243D9B860();
  v30 = swift_getWitnessTable();
  v67 = v29;
  v68 = v30;
  v31 = swift_getWitnessTable();
  v65 = WitnessTable;
  v66 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_243D9B8B4();
  v34 = swift_getWitnessTable();
  v63 = v33;
  v64 = v34;
  v35 = swift_getWitnessTable();
  v61 = v32;
  v62 = v35;
  v36 = swift_getWitnessTable();
  sub_243D9EDB4();
  v37 = v49;
  sub_243DADE80();
  sub_243D93CA4(v90);
  (*(v53 + 8))(v9, v55);
  v92[2] = v74;
  v92[3] = v75;
  v92[4] = v76;
  v93 = v77;
  v92[0] = v72;
  v92[1] = v73;
  (*(*(v13 - 8) + 8))(v92, v13);
  sub_243DAD900();
  sub_243D9AE20(&v78, v38, v39);
  v84 = v78;
  v85 = v79;
  LOBYTE(v86) = v80;
  v40 = sub_243D9B908();
  v59 = v36;
  v60 = v40;
  v41 = swift_getWitnessTable();
  v42 = v51;
  View.complicationContainerPath(_:)(&v84, v14, v41);
  sub_243D93CA4(&v78);
  (*(v54 + 8))(v37, v14);
  v43 = sub_243D940EC();
  v57 = v41;
  v58 = v43;
  swift_getWitnessTable();
  v44 = *(v17 + 16);
  v45 = v52;
  v44(v52, v42, v16);
  v46 = *(v17 + 8);
  v46(v42, v16);
  v44(v56, v45, v16);
  return (v46)(v45, v16);
}

unint64_t sub_243D9B860()
{
  result = qword_27EDBB0D0;
  if (!qword_27EDBB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB0D0);
  }

  return result;
}

unint64_t sub_243D9B8B4()
{
  result = qword_27EDBB0D8;
  if (!qword_27EDBB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB0D8);
  }

  return result;
}

unint64_t sub_243D9B908()
{
  result = qword_27EDBB0E0[0];
  if (!qword_27EDBB0E0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB0C8, &unk_243DB2A00);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDBB0E0);
  }

  return result;
}

uint64_t sub_243D9B96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = a2;
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 40);
  v222 = *(v2 + 32);
  v10 = *(v2 + 56);
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);
  v13 = *(v2 + 88);
  if (!*(v2 + 48))
  {
    v218 = *(v2 + 64);
    if (*(v7 + 16))
    {
      v39 = objc_opt_self();
      v40 = v9;
      v41 = v39;
      v221 = v40;
      sub_243D9AC40(v8, v222, v40, 0);
      v209 = v11;
      v42 = [v41 sharedRenderingContext];
      v43 = [v42 device];

      v44 = CDRichComplicationCornerTextOuterImageMaxSize(v43);
      v46 = *(v7 + 16);
      v47 = MEMORY[0x277D84F90];
      v216 = v8;
      v211 = v43;
      v213 = v10;
      if (v46)
      {
        v48 = v44;
        v49 = v45;
        *&v256 = MEMORY[0x277D84F90];
        sub_243D93638(0, v46, 0);
        v50 = v256;
        v51 = (v7 + 32);
        do
        {
          v52 = *v51;
          v53 = [v52 textProvider];
          [v53 finalize];
          v54 = [v52 imageProvider];
          if (v54 && (v55 = v54, [v54 copy], v55, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
          {
            v56 = v246;
            type metadata accessor for WidgetNamedImageProvider(0);
            v57 = swift_dynamicCastClass();
            if (v57)
            {
              v58 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
              if ((*(v57 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
              {
                v59 = (v57 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
                *v59 = v48;
                v59[1] = v49;
                *(v57 + v58) = 1;
              }
            }

            else
            {
              [v246 finalizeWithMaxSDKSize:0 maxDeviceSize:v48 maskToCircle:{v49, v48, v49}];
            }
          }

          else
          {
            v56 = 0;
          }

          v60 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v53 imageProvider:v56];

          *&v256 = v50;
          v62 = *(v50 + 16);
          v61 = *(v50 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_243D93638((v61 > 1), v62 + 1, 1);
            v50 = v256;
          }

          *(v50 + 16) = v62 + 1;
          *(v50 + 8 * v62 + 32) = v60;
          ++v51;
          --v46;
        }

        while (v46);
        v3 = a1;
        v43 = v211;
        v10 = v213;
        v47 = MEMORY[0x277D84F90];
      }

      else
      {
        v50 = MEMORY[0x277D84F90];
      }

      v157 = CDRichComplicationCornerInnerImageMaxSize(v43);
      v159 = v8[2];
      if (v159)
      {
        v160 = v157;
        v161 = v158;
        *&v256 = v47;
        sub_243D93638(0, v159, 0);
        v162 = v47;
        v163 = v8 + 4;
        do
        {
          v164 = *v163;
          v165 = [v164 textProvider];
          [v165 finalize];
          v166 = [v164 imageProvider];
          if (v166 && (v167 = v166, [v166 copy], v167, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
          {
            v168 = v246;
            type metadata accessor for WidgetNamedImageProvider(0);
            v169 = swift_dynamicCastClass();
            if (v169)
            {
              v170 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
              if ((*(v169 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
              {
                v171 = (v169 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
                *v171 = v160;
                v171[1] = v161;
                *(v169 + v170) = 1;
              }
            }

            else
            {
              [v246 finalizeWithMaxSDKSize:0 maxDeviceSize:v160 maskToCircle:{v161, v160, v161}];
            }
          }

          else
          {
            v168 = 0;
          }

          v172 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v165 imageProvider:v168];

          *&v256 = v162;
          v174 = *(v162 + 16);
          v173 = *(v162 + 24);
          if (v174 >= v173 >> 1)
          {
            sub_243D93638((v173 > 1), v174 + 1, 1);
            v162 = v256;
          }

          *(v162 + 16) = v174 + 1;
          *(v162 + 8 * v174 + 32) = v172;
          ++v163;
          --v159;
        }

        while (v159);
        sub_243D9ACF4(v216, v222, v221, 0);

        v3 = a1;
        v10 = v213;
      }

      else
      {
        sub_243D9ACF4(v8, v222, v221, 0);

        v162 = MEMORY[0x277D84F90];
      }

      *&v256 = v10;
      *(&v256 + 1) = v218;
      *&v257 = v209;
      *(&v257 + 1) = v50;
      *&v258 = v162;
      v95 = *(v3 + 16);
      v96 = *(v3 + 24);
      v176 = type metadata accessor for ComplicationCornerTextView(0, v95, v96, v175);
      v177 = sub_243D9B860();
      WitnessTable = swift_getWitnessTable();
      sub_243DA3554(&v256, &type metadata for ComplicationCornerStackedTextView, v176, v177, WitnessTable);

      v284 = v296;
      v285 = v297;
      LOBYTE(v286) = v298;
      v283 = v295;
      v282 = v294;
      v4 = a2;
    }

    else
    {

      sub_243D9AC40(v8, v222, v9, 0);
      v95 = *(v3 + 16);
      v96 = *(v3 + 24);
      sub_243D950A4(v10, v218, v11, v8, v12, v13, &v294, v6, v5);
      v98 = type metadata accessor for ComplicationCornerTextView(0, v95, v96, v97);
      v99 = swift_getWitnessTable();
      v100 = *(v98 - 8);
      v101 = *(v100 + 16);
      v101(&v228, &v294, v98);
      v233 = v294;
      v234 = v295;
      v235 = v296;
      v236 = v297;
      v102 = *(v100 + 8);
      v102(&v233, v98);
      v264 = v228;
      v265 = v229;
      v266 = v230;
      v267 = v231;
      v294 = v228;
      v295 = v229;
      v296 = v230;
      v297 = v231;
      v101(&v223, &v294, v98);
      v270 = v294;
      v271 = v295;
      v272 = v296;
      v273 = v297;
      v101(&v256, &v264, v98);
      v102(&v270, v98);
      v276 = v223;
      v277 = v224;
      v278 = v225;
      v279 = v226;
      v282 = v223;
      v283 = v224;
      v284 = v225;
      v285 = v226;
      v101(&v294, &v276, v98);
      v103 = sub_243D9B860();
      sub_243DA364C(&v282, &type metadata for ComplicationCornerStackedTextView, v98, v103, v99);
      v288 = v282;
      v289 = v283;
      v290 = v284;
      v291 = v285;
      v102(&v288, v98);
      v246 = v223;
      v247 = v224;
      v248 = v225;
      v249 = v226;
      v102(&v246, v98);
      v256 = v228;
      v257 = v229;
      v258 = v230;
      v259 = v231;
      v102(&v256, v98);
      v284 = v296;
      v285 = v297;
      LOBYTE(v286) = v298;
      v283 = v295;
      v282 = v294;
    }

    v296 = v284;
    v297 = v285;
    LOBYTE(v298) = v286;
    v294 = v282;
    v295 = v283;
    type metadata accessor for ComplicationCornerTextView(255, v95, v96, v104);
    v179 = sub_243DADC40();
    sub_243D9B860();
    swift_getWitnessTable();
    v180 = swift_getWitnessTable();
    v181 = *(v179 - 8);
    v182 = *(v181 + 16);
    v182(&v228, &v294, v179);
    v235 = v296;
    v236 = v297;
    LOBYTE(v237) = v298;
    v233 = v294;
    v234 = v295;
    v182(&v256, &v282, v179);
    v183 = *(v181 + 8);
    v183(&v233, v179);
    v266 = v230;
    v267 = v231;
    LOBYTE(v268) = v232;
    v264 = v228;
    v265 = v229;
    v258 = v230;
    v259 = v231;
    LOBYTE(v260) = v232;
    v256 = v228;
    v257 = v229;
    v182(&v294, &v264, v179);
    v185 = type metadata accessor for ComplicationCornerCircularView(0, v95, v96, v184);
    v186 = swift_getWitnessTable();
    sub_243DA364C(&v256, v185, v179, v186, v180);
    v272 = v258;
    v273 = v259;
    LOBYTE(v274) = v260;
    v270 = v256;
    v271 = v257;
    v183(&v270, v179);
    v290 = v296;
    v291 = v297;
    LOWORD(v292) = v298;
    v289 = v295;
    v288 = v294;
    v187 = sub_243DADC40();
    type metadata accessor for ComplicationCornerGaugeView(255, v95, v96, v188);
    v189 = sub_243DADC40();
    v190 = swift_getWitnessTable();
    sub_243D9B8B4();
    swift_getWitnessTable();
    v191 = swift_getWitnessTable();
    sub_243DA3554(&v288, v187, v189, v190, v191);
    v183(&v282, v179);
    v248 = v290;
    v249 = v291;
    LOWORD(v250) = v292;
    v246 = v288;
    v247 = v289;
    (*(*(v187 - 8) + 8))(&v246, v187);
    v278 = v230;
    v279 = v231;
    LOBYTE(v280) = v232;
    v276 = v228;
    v277 = v229;
    v183(&v276, v179);
    goto LABEL_82;
  }

  if (*(v2 + 48) != 1)
  {
    v63 = *(a1 + 16);
    v64 = *(a1 + 24);
    nullsub_1();
    *&v294 = v65;
    *(&v294 + 1) = v66;
    *&v295 = v67;
    v69 = type metadata accessor for ComplicationCornerCircularView(0, v63, v64, v68);
    v70 = swift_getWitnessTable();
    v71 = *(*(v69 - 8) + 16);
    v71(&v282, &v294, v69);

    v294 = v282;
    *&v295 = v283;
    v71(&v276, &v294, v69);
    v256 = v276;
    *&v257 = v277;
    type metadata accessor for ComplicationCornerTextView(255, v63, v64, v72);
    v73 = sub_243DADC40();
    sub_243D9B860();
    swift_getWitnessTable();
    v74 = swift_getWitnessTable();
    sub_243DA3554(&v256, v69, v73, v70, v74);
    v290 = v296;
    v291 = v297;
    LOWORD(v292) = v298;
    v289 = v295;
    v288 = v294;
    v75 = sub_243DADC40();
    type metadata accessor for ComplicationCornerGaugeView(255, v63, v64, v76);
    v77 = sub_243DADC40();
    v78 = swift_getWitnessTable();
    sub_243D9B8B4();
    swift_getWitnessTable();
    v79 = swift_getWitnessTable();
    sub_243DA3554(&v288, v75, v77, v78, v79);
    v248 = v290;
    v249 = v291;
    LOWORD(v250) = v292;
    v246 = v288;
    v247 = v289;
    (*(*(v75 - 8) + 8))(&v246, v75);

LABEL_82:
    v296 = v258;
    v297 = v259;
    v298 = v260;
    v299 = v261;
    v294 = v256;
    v295 = v257;
    goto LABEL_83;
  }

  v217 = *(v2 + 64);
  if (*(v7 + 16))
  {
    v14 = objc_opt_self();
    v15 = v9;
    v16 = v14;
    v17 = v222;
    v220 = v15;
    sub_243D9AC40(v8, v222, v15, 1);
    v208 = v11;
    v207 = v8;
    v18 = [v16 sharedRenderingContext];
    v19 = [v18 device];

    v210 = v19;
    v20 = CDRichComplicationCornerGaugeOuterImageMaxSize(v19);
    v22 = MEMORY[0x277D84F90];
    v23 = *(v7 + 16);
    v212 = v10;
    if (v23)
    {
      v24 = v20;
      v25 = v21;
      *&v256 = MEMORY[0x277D84F90];
      sub_243D93638(0, v23, 0);
      v26 = v256;
      v27 = (v7 + 32);
      do
      {
        v28 = *v27;
        v29 = [v28 textProvider];
        [v29 finalize];
        v30 = [v28 imageProvider];
        if (v30 && (v31 = v30, [v30 copy], v31, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
        {
          v32 = v246;
          type metadata accessor for WidgetNamedImageProvider(0);
          v33 = swift_dynamicCastClass();
          if (v33)
          {
            v34 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
            if ((*(v33 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
            {
              v35 = (v33 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
              *v35 = v24;
              v35[1] = v25;
              *(v33 + v34) = 1;
            }
          }

          else
          {
            [v246 finalizeWithMaxSDKSize:0 maxDeviceSize:v24 maskToCircle:{v25, v24, v25}];
          }
        }

        else
        {
          v32 = 0;
        }

        v36 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v29 imageProvider:v32];

        *&v256 = v26;
        v38 = *(v26 + 16);
        v37 = *(v26 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_243D93638((v37 > 1), v38 + 1, 1);
          v26 = v256;
        }

        *(v26 + 16) = v38 + 1;
        *(v26 + 8 * v38 + 32) = v36;
        ++v27;
        --v23;
      }

      while (v23);
      v17 = v222;
      v22 = MEMORY[0x277D84F90];
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    v105 = CDRichComplicationCornerInnerImageMaxSize(v210);
    v107 = v106;
    v108 = *(v17 + 16);
    if (v108)
    {
      *&v256 = v22;
      sub_243D93638(0, v108, 0);
      v109 = v22;
      v110 = 32;
      do
      {
        v111 = *(v17 + v110);
        v112 = [v111 textProvider];
        [v112 finalize];
        v113 = [v111 imageProvider];
        if (v113 && (v114 = v113, [v113 copy], v114, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
        {
          v115 = v246;
          type metadata accessor for WidgetNamedImageProvider(0);
          v116 = swift_dynamicCastClass();
          if (v116)
          {
            v117 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
            if ((*(v116 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
            {
              v118 = (v116 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
              *v118 = v105;
              v118[1] = v107;
              *(v116 + v117) = 1;
            }
          }

          else
          {
            [v246 finalizeWithMaxSDKSize:0 maxDeviceSize:v105 maskToCircle:{v107, v105, v107}];
          }
        }

        else
        {
          v115 = 0;
        }

        v119 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v112 imageProvider:v115];

        *&v256 = v109;
        v121 = *(v109 + 16);
        v120 = *(v109 + 24);
        if (v121 >= v120 >> 1)
        {
          sub_243D93638((v120 > 1), v121 + 1, 1);
          v109 = v256;
        }

        *(v109 + 16) = v121 + 1;
        *(v109 + 8 * v121 + 32) = v119;
        v110 += 8;
        --v108;
        v17 = v222;
      }

      while (v108);

      v22 = MEMORY[0x277D84F90];
    }

    else
    {

      v109 = MEMORY[0x277D84F90];
    }

    v122 = v220[2];
    if (v122)
    {
      *&v256 = v22;
      sub_243D93638(0, v122, 0);
      v123 = v22;
      v124 = 4;
      do
      {
        v125 = v220[v124];
        v126 = [v125 textProvider];
        [v126 finalize];
        v127 = [v125 imageProvider];
        if (v127 && (v128 = v127, [v127 copy], v128, sub_243DAE240(), swift_unknownObjectRelease(), sub_243D96A78(0, &qword_27EDBABC8, 0x277CBBB40), (swift_dynamicCast() & 1) != 0))
        {
          v129 = v246;
          type metadata accessor for WidgetNamedImageProvider(0);
          v130 = swift_dynamicCastClass();
          if (v130)
          {
            v131 = OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized;
            if ((*(v130 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider_finalized) & 1) == 0)
            {
              v132 = (v130 + OBJC_IVAR____TtC19ComplicationDisplay24WidgetNamedImageProvider__maxSize);
              *v132 = v105;
              v132[1] = v107;
              *(v130 + v131) = 1;
            }
          }

          else
          {
            [v246 finalizeWithMaxSDKSize:0 maxDeviceSize:v105 maskToCircle:{v107, v105, v107}];
          }
        }

        else
        {
          v129 = 0;
        }

        v133 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v126 imageProvider:v129];

        *&v256 = v123;
        v135 = *(v123 + 16);
        v134 = *(v123 + 24);
        if (v135 >= v134 >> 1)
        {
          sub_243D93638((v134 > 1), v135 + 1, 1);
          v123 = v256;
        }

        *(v123 + 16) = v135 + 1;
        *(v123 + 8 * v135 + 32) = v133;
        ++v124;
        --v122;
      }

      while (v122);

      v10 = v212;
    }

    else
    {

      v123 = MEMORY[0x277D84F90];
    }

    *&v256 = v10;
    *(&v256 + 1) = v217;
    *&v257 = v208;
    *(&v257 + 1) = v26;
    *&v258 = v207;
    *(&v258 + 1) = v109;
    *&v259 = v123;
    v81 = *(a1 + 16);
    v86 = *(a1 + 24);
    v137 = type metadata accessor for ComplicationCornerGaugeView(0, v81, v86, v136);
    v138 = sub_243D9B8B4();
    v139 = swift_getWitnessTable();
    sub_243DA3554(&v256, &type metadata for ComplicationCornerStackedGaugeView, v137, v138, v139);
    v140 = v257;
    v141 = v258;
  }

  else
  {

    sub_243D9AC40(v8, v222, v9, 1);
    v81 = *(v3 + 16);
    v82 = *(v3 + 24);
    v83 = v11;
    v84 = v8;
    v85 = v9;
    v86 = v82;
    sub_243D8EBB8(v10, v217, v83, v84, v222, v85, v12, v13, &v294, v6, v5);
    v88 = type metadata accessor for ComplicationCornerGaugeView(0, v81, v82, v87);
    v89 = swift_getWitnessTable();
    v90 = *(v88 - 8);
    v91 = *(v90 + 16);
    v91(&v228, &v294, v88);
    v235 = v296;
    v236 = v297;
    v237 = v298;
    v233 = v294;
    v234 = v295;
    v92 = *(v90 + 8);
    v92(&v233, v88);
    v266 = v230;
    v267 = v231;
    v268 = v232;
    v264 = v228;
    v265 = v229;
    v296 = v230;
    v297 = v231;
    v298 = v232;
    v294 = v228;
    v295 = v229;
    v91(&v223, &v294, v88);
    v272 = v296;
    v273 = v297;
    v274 = v298;
    v270 = v294;
    v271 = v295;
    v91(&v256, &v264, v88);
    v92(&v270, v88);
    v278 = v225;
    v279 = v226;
    v280 = v227;
    v276 = v223;
    v277 = v224;
    v248 = v225;
    v249 = v226;
    v250 = v227;
    v246 = v223;
    v247 = v224;
    v91(&v294, &v276, v88);
    v93 = sub_243D9B8B4();
    sub_243DA364C(&v246, &type metadata for ComplicationCornerStackedGaugeView, v88, v93, v89);
    v284 = v248;
    v285 = v249;
    v286 = v250;
    v283 = v247;
    v282 = v246;
    v92(&v282, v88);
    v290 = v225;
    v291 = v226;
    v292 = v227;
    v289 = v224;
    v288 = v223;
    v92(&v288, v88);
    v258 = v230;
    v259 = v231;
    v260 = v232;
    v256 = v228;
    v257 = v229;
    v92(&v256, v88);
  }

  v248 = v296;
  v249 = v297;
  v250 = v298;
  LOBYTE(v251) = v299;
  v246 = v294;
  v247 = v295;
  type metadata accessor for ComplicationCornerGaugeView(255, v81, v86, v94);
  v142 = sub_243DADC40();
  v143 = sub_243D9B8B4();
  v144 = swift_getWitnessTable();
  v262 = v143;
  v263 = v144;
  v145 = swift_getWitnessTable();
  v146 = *(v142 - 8);
  v147 = *(v146 + 16);
  v147(&v264, &v294, v142);
  v272 = v296;
  v273 = v297;
  v274 = v298;
  v275 = v299;
  v270 = v294;
  v271 = v295;
  v147(&v256, &v246, v142);
  v148 = *(v146 + 8);
  v148(&v270, v142);
  v278 = v266;
  v279 = v267;
  v280 = v268;
  v281 = v269;
  v276 = v264;
  v277 = v265;
  v296 = v266;
  v297 = v267;
  v298 = v268;
  LOBYTE(v299) = v269;
  v294 = v264;
  v295 = v265;
  v147(&v256, &v276, v142);
  type metadata accessor for ComplicationCornerCircularView(255, v81, v86, v149);
  type metadata accessor for ComplicationCornerTextView(255, v81, v86, v150);
  sub_243DADC40();
  v151 = sub_243DADC40();
  v152 = swift_getWitnessTable();
  v153 = sub_243D9B860();
  v154 = swift_getWitnessTable();
  v254 = v153;
  v255 = v154;
  v155 = swift_getWitnessTable();
  v252 = v152;
  v253 = v155;
  v156 = swift_getWitnessTable();
  sub_243DA364C(&v294, v151, v142, v156, v145);
  v148(&v246, v142);

  v284 = v296;
  v285 = v297;
  v286 = v298;
  v287 = v299;
  v282 = v294;
  v283 = v295;
  v148(&v282, v142);
  v290 = v266;
  v291 = v267;
  v292 = v268;
  v293 = v269;
  v288 = v264;
  v289 = v265;
  v148(&v288, v142);
  v296 = v258;
  v297 = v259;
  v298 = v260;
  v299 = v261;
  v294 = v256;
  v295 = v257;
  v4 = a2;
LABEL_83:
  v248 = v296;
  v249 = v297;
  v250 = v298;
  v251 = v299;
  v246 = v294;
  v247 = v295;
  v192 = *(a1 + 16);
  v193 = *(a1 + 24);
  type metadata accessor for ComplicationCornerCircularView(255, v192, v193, v80);
  type metadata accessor for ComplicationCornerTextView(255, v192, v193, v194);
  sub_243DADC40();
  sub_243DADC40();
  type metadata accessor for ComplicationCornerGaugeView(255, v192, v193, v195);
  sub_243DADC40();
  v196 = sub_243DADC40();
  v197 = swift_getWitnessTable();
  v198 = sub_243D9B860();
  v199 = swift_getWitnessTable();
  v244 = v198;
  v245 = v199;
  v200 = swift_getWitnessTable();
  v242 = v197;
  v243 = v200;
  v201 = swift_getWitnessTable();
  v202 = sub_243D9B8B4();
  v203 = swift_getWitnessTable();
  v240 = v202;
  v241 = v203;
  v204 = swift_getWitnessTable();
  v238 = v201;
  v239 = v204;
  swift_getWitnessTable();
  v205 = *(v196 - 8);
  (*(v205 + 16))(v4, &v246, v196);
  v258 = v248;
  v259 = v249;
  v260 = v250;
  v261 = v251;
  v256 = v246;
  v257 = v247;
  return (*(v205 + 8))(&v256, v196);
}

void sub_243D9D6E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (!*(a1 + 24))
  {
    v12 = sub_243D9E690(*a1);
    if (v12 >> 62)
    {
      if (sub_243DAE2E0())
      {
        goto LABEL_9;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
      v13 = sub_243DAE1A0();

      v14 = [objc_opt_self() providerWithProviders_];
      sub_243D9ACF4(v3, v4, v5, 0);

      v11 = 0;
      v15 = 0;
      LOBYTE(v6) = 2 * (v14 == 0);
      v3 = v14;
      goto LABEL_20;
    }

    sub_243D9ACF4(v3, v4, v5, 0);
    v3 = 0;
    v11 = 0;
    v15 = 0;
    LOBYTE(v6) = 2;
    goto LABEL_20;
  }

  if (v6 == 1)
  {
    v7 = v3;
    v8 = sub_243D9E690(v4);
    if (v8 >> 62)
    {
      v9 = sub_243DAE2E0();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
      v10 = sub_243DAE1A0();

      v11 = [objc_opt_self() providerWithProviders_];
    }

    else
    {

      v11 = 0;
    }

    v16 = sub_243D9E690(v5);
    if (v16 >> 62)
    {
      if (sub_243DAE2E0())
      {
        goto LABEL_14;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
      v17 = sub_243DAE1A0();

      v15 = [objc_opt_self() providerWithProviders_];
      LOBYTE(v6) = 1;
      sub_243D9ACF4(v3, v4, v5, 1);

      goto LABEL_20;
    }

    LOBYTE(v6) = 1;
    sub_243D9ACF4(v3, v4, v5, 1);
    v15 = 0;
    goto LABEL_20;
  }

  v3 = 0;
  v11 = 0;
  v15 = 0;
LABEL_20:
  *a2 = v3;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 24) = v6;
}

id ComplicationCornerViewConfiguration.outerLabel.getter()
{
  v1 = sub_243D9E690(*(v0 + 16));
  if (v1 >> 62)
  {
    if (sub_243DAE2E0())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
  v2 = sub_243DAE1A0();

  v3 = [objc_opt_self() providerWithProviders_];

  return v3;
}

void sub_243D9DAC4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_243D9E690(*(a1 + 16));
  if (v3 >> 62)
  {
    if (sub_243DAE2E0())
    {
      goto LABEL_3;
    }

LABEL_5:

    v5 = 0;
    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
  v4 = sub_243DAE1A0();

  v5 = [objc_opt_self() providerWithProviders_];

LABEL_6:
  *a2 = v5;
}

uint64_t ComplicationCornerViewConfiguration.outerLabel.setter(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_243DB1AE0;
    *(v3 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:a1 imageProvider:0];
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  *(v1 + 16) = v3;
  return result;
}

void (*ComplicationCornerViewConfiguration.outerLabel.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  v4 = sub_243D9E690(v3);
  if (v4 >> 62)
  {
    if (sub_243DAE2E0())
    {
      goto LABEL_3;
    }

LABEL_5:

    v6 = 0;
    goto LABEL_6;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
  v5 = sub_243DAE1A0();

  v6 = [objc_opt_self() providerWithProviders_];

LABEL_6:
  *a1 = v6;
  return sub_243D9DD48;
}

void sub_243D9DD48(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_243DB1AE0;
      v5 = objc_allocWithZone(CDLabelProvider);
      v7 = v3;
      *(v4 + 32) = [v5 initWithTextProvider:v7 imageProvider:0];
    }

    else
    {
      v7 = 0;
      v4 = MEMORY[0x277D84F90];
    }

    *(*(a1 + 8) + 16) = v4;
  }

  else
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_243DB1AE0;
      *(v6 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v3 imageProvider:0];
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    *(*(a1 + 8) + 16) = v6;
  }
}

void ComplicationCornerViewConfiguration.label.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6[0] = *(v1 + 24);
  v6[1] = v3;
  v6[2] = v4;
  v7 = v5;
  sub_243D9AC40(v6[0], v3, v4, v5);
  sub_243D9D6E0(v6, a1);
}

double sub_243D9DF10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9[0] = *(a1 + 24);
  v9[1] = v3;
  v9[2] = v4;
  v10 = v5;
  sub_243D9AC40(v9[0], v3, v4, v5);
  sub_243D9D6E0(v9, &v11);
  v6 = v12;
  v7 = v13;
  result = *&v11;
  *a2 = v11;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

void *sub_243D9DF7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v6 = v3;
  sub_243D9EA94(v5[0], v1, v2, v3);
  return ComplicationCornerViewConfiguration.label.setter(v5);
}

void *ComplicationCornerViewConfiguration.label.setter(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (*(a1 + 24))
  {
    if (v5 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_243DB1AE0;
      v7 = objc_allocWithZone(CDLabelProvider);
      v8 = v2;
      *(v6 + 32) = [v7 initWithTextProvider:v3 imageProvider:0];
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_243DB1AE0;
      *(v9 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v4 imageProvider:0];
      sub_243D9EA38(v2, v3, v4, 1);
    }

    else
    {
      v2 = 0;
      v6 = 0;
      v9 = 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_243DB1AE0;
    *(v10 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v2 imageProvider:0];
    sub_243D9EA38(v2, v3, v4, 0);
    v6 = 0;
    v9 = 0;
    v2 = v10;
  }

  result = sub_243D9ACF4(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  *(v1 + 24) = v2;
  *(v1 + 32) = v6;
  *(v1 + 40) = v9;
  *(v1 + 48) = v5;
  return result;
}

void sub_243D9E188(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  if (*(result + 24))
  {
    if (v6 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_243DB1AE0;
      v8 = objc_allocWithZone(CDLabelProvider);
      v9 = v3;
      *(v7 + 32) = [v8 initWithTextProvider:v4 imageProvider:0];
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_243DB1AE0;
      *(v10 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v5 imageProvider:0];
      sub_243D9EA38(v3, v4, v5, 1);
    }

    else
    {
      v3 = 0;
      v7 = 0;
      v10 = 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_243DB1AE0;
    *(v11 + 32) = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v3 imageProvider:0];
    sub_243D9EA38(v3, v4, v5, 0);
    v7 = 0;
    v10 = 0;
    v3 = v11;
  }

  *a2 = v3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v6;
}

void (*ComplicationCornerViewConfiguration.label.modify(uint64_t *a1))(void ***a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9[0] = *(v1 + 24);
  v9[1] = v5;
  v9[2] = v6;
  v10 = v7;
  sub_243D9AC40(v9[0], v5, v6, v7);
  sub_243D9D6E0(v9, v4);
  return sub_243D9E3D8;
}

void sub_243D9E3D8(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = *(v3 + 24);
  v8[0] = v4;
  v8[1] = v5;
  v8[2] = v6;
  v9 = v7;
  if (a2)
  {
    sub_243D9EA94(v4, v5, v6, v7);
    ComplicationCornerViewConfiguration.label.setter(v8);
    sub_243D9EA38(*v3, v3[1], v3[2], *(v3 + 24));
  }

  else
  {
    ComplicationCornerViewConfiguration.label.setter(v8);
  }

  free(v3);
}

__n128 ComplicationCornerViewConfiguration.init(contentSize:label:position:fontStyle:monochromeModel:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v13 = *(a1 + 2);
  v14 = *(a1 + 24);
  v20 = *a1;
  v21 = v13;
  v22 = v14;
  sub_243D9E188(&v20, &v23);
  v19 = v23;
  v15 = v24;
  v16 = v25;
  v17 = [objc_allocWithZone(type metadata accessor for MonochromeModel(0)) init];

  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = MEMORY[0x277D84F90];
  result = v19;
  *(a5 + 24) = v19;
  *(a5 + 40) = v15;
  *(a5 + 48) = v16;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;
  *(a5 + 72) = v17;
  return result;
}

__n128 ComplicationCornerViewConfiguration.init(contentSize:outerLabel:label:position:fontStyle:monochromeModel:)@<Q0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v15 = *a2;
  v16 = *(a2 + 2);
  v17 = *(a2 + 24);
  if (a1)
  {
    v24 = *a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EDBAD18, &qword_243DB1C18);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_243DB1AE0;
    v19 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:a1 imageProvider:0];
    v15 = v24;
    *(v18 + 32) = v19;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v26 = v15;
  v27 = v16;
  v28 = v17;
  sub_243D9E188(&v26, &v29);
  v25 = v29;
  v20 = v30;
  v21 = v31;
  v22 = [objc_allocWithZone(type metadata accessor for MonochromeModel(0)) init];

  *a6 = a7;
  *(a6 + 8) = a8;
  *(a6 + 16) = v18;
  result = v25;
  *(a6 + 24) = v25;
  *(a6 + 40) = v20;
  *(a6 + 48) = v21;
  *(a6 + 56) = a3;
  *(a6 + 64) = a4;
  *(a6 + 72) = v22;
  return result;
}

uint64_t sub_243D9E690(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v27 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  v26 = *(a1 + 16);
  while (1)
  {
    v5 = *(v27 + 8 * v2);
    v6 = [v5 textProvider];
    if (!v6)
    {
      v10 = MEMORY[0x277D84F90];

      if (v10 < 0)
      {
        goto LABEL_45;
      }

      goto LABEL_12;
    }

    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB168, &unk_243DB2DA0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_243DB29F0;
    *(v10 + 32) = v7;

    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_45:
    v12 = sub_243DAE2E0();
    v11 = 1;
    if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
    {
      goto LABEL_47;
    }

LABEL_15:
    v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      goto LABEL_49;
    }

LABEL_16:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v28 = v2;
    if (result)
    {
      if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
      {
        v15 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_24;
    }

    sub_243DAE2E0();
LABEL_24:
    result = sub_243DAE270();
    v3 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v11)
    {
      result = sub_243DAE2E0();
      v18 = result;
      if (!result)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
LABEL_3:

        if (v12 > 0)
        {
          goto LABEL_54;
        }

        goto LABEL_4;
      }
    }

    if (((v17 >> 1) - v16) < v12)
    {
      goto LABEL_55;
    }

    v19 = (v15 + 8 * v16 + 32);
    if (v11)
    {
      if (v18 < 1)
      {
        goto LABEL_57;
      }

      v20 = 0;
      if ((v10 & 0xC000000000000001) == 0)
      {
        goto LABEL_35;
      }

      while (1)
      {
        result = MEMORY[0x245D51A70](v20++, v10);
        *v19 = result;
        if (v20 == v18)
        {
          break;
        }

        while (1)
        {
          ++v19;
          if ((v10 & 0xC000000000000001) != 0)
          {
            break;
          }

LABEL_35:
          if ((v20 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            return result;
          }

          if (v20 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v21 = *(v10 + 32 + 8 * v20++);
          *v19 = v21;
          result = v21;
          if (v20 == v18)
          {
            goto LABEL_42;
          }
        }
      }

LABEL_42:

      v1 = v26;
      if (v12 < 1)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }

    sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
    swift_arrayInitWithCopy();

    if (v12 < 1)
    {
      goto LABEL_4;
    }

LABEL_43:
    v22 = *(v15 + 16);
    v23 = __OFADD__(v22, v12);
    v24 = v22 + v12;
    if (v23)
    {
      goto LABEL_56;
    }

    *(v15 + 16) = v24;
LABEL_4:
    v2 = v28 + 1;
    if (v28 + 1 == v1)
    {
      return v3;
    }
  }

  v9 = [v8 textProviders];
  sub_243D96A78(0, &qword_27EDBAF50, 0x277CBBBA0);
  v10 = sub_243DAE1B0();

  if (v10 < 0)
  {
    goto LABEL_45;
  }

LABEL_12:
  if ((v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_45;
  }

  v11 = 0;
  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_47:
  v25 = sub_243DAE2E0();
  v14 = v25 + v12;
  if (!__OFADD__(v25, v12))
  {
    goto LABEL_16;
  }

LABEL_49:
  __break(1u);
  return MEMORY[0x277D84F90];
}

void sub_243D9EA38(void *a1, void *a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    a1 = a3;
  }
}

id sub_243D9EA94(id result, void *a2, void *a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    v5 = result;
    v6 = a3;
    v7 = v5;
    result = a2;
  }

  return result;
}

uint64_t sub_243D9EB34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D9EB7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_243D9EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_243D9EC5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_243D9ECA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243D9ED14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_243D9ED5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_243D9EDB4()
{
  result = qword_27EDBB170;
  if (!qword_27EDBB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB170);
  }

  return result;
}

id ComplicationLabelProvider.textProvider.getter()
{
  v1 = [*v0 textProvider];

  return v1;
}

ComplicationDisplay::ComplicationLabelProvider __swiftcall ComplicationLabelProvider.init(textProvider:imageProvider:)(CLKTextProvider_optional textProvider, CLKImageProvider_optional *imageProvider)
{
  v3 = *&textProvider.is_nil;
  isa = textProvider.value.super.isa;
  v5 = v2;
  v6 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:textProvider.value.super.isa imageProvider:*&textProvider.is_nil];

  *v5 = v6;
  result._labelProvider._imageProvider = v9;
  result._labelProvider._textProvider = v8;
  result._labelProvider.super.isa = v7;
  return result;
}

id Sequence<>.fallbackTextProvider.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB178, &qword_243DB2D50);
  sub_243D9F344();
  v2 = sub_243DAE190();
  if (v2 >> 62)
  {
    if (sub_243DAE2E0())
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_243D9F3A8();
  v3 = sub_243DAE1A0();

  v4 = [objc_opt_self() providerWithProviders_];

  return v4;
}

id ComplicationLabelProvider.imageProvider.getter()
{
  v1 = [*v0 imageProvider];

  return v1;
}

uint64_t ComplicationLabelProvider.snapshotMetadata.getter()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = [*v0 imageProvider];
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  type metadata accessor for WidgetNamedImageProvider(0);
  if (!swift_dynamicCastClass())
  {

LABEL_8:
    v18[0] = 0;
    v11 = [objc_opt_self() archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v18];
    v12 = v18[0];
    if (v11)
    {
      v10 = sub_243DAD7A0();

      return v10;
    }

    v13 = v12;
    v14 = sub_243DAD760();

    swift_willThrow();
    return 0;
  }

  v4 = sub_243DA83D8();
  if (v4)
  {
    v5 = [objc_opt_self() imageProviderWithOnePieceImage_];

    v4 = v5;
  }

  v6 = [v1 textProvider];
  v7 = [objc_allocWithZone(CDLabelProvider) initWithTextProvider:v6 imageProvider:v4];

  v18[0] = 0;
  v8 = [objc_opt_self() archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v18];
  v9 = v18[0];
  if (!v8)
  {
    v15 = v9;
    v16 = sub_243DAD760();

    swift_willThrow();
    return 0;
  }

  v10 = sub_243DAD7A0();

  return v10;
}

void sub_243D9F250(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 textProvider];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 textProviders];
      sub_243D9F3A8();
      v7 = sub_243DAE1B0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB168, &unk_243DB2DA0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_243DB29F0;
      *(v7 + 32) = v4;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *a2 = v7;
}

unint64_t sub_243D9F344()
{
  result = qword_27EDBB180;
  if (!qword_27EDBB180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDBB178, &qword_243DB2D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDBB180);
  }

  return result;
}

unint64_t sub_243D9F3A8()
{
  result = qword_27EDBAF50;
  if (!qword_27EDBAF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDBAF50);
  }

  return result;
}

uint64_t sub_243D9F400(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_243D9F448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_243D9F494(uint64_t a1)
{
  v2 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  sub_243DAE2A0();
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      v5 = v4;
      sub_243DAE280();
      sub_243DAE2B0();
      sub_243DAE2C0();
      sub_243DAE290();
      --v2;
    }

    while (v2);
  }

  return v7;
}

uint64_t sub_243D9F544@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v18 = *v1;
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  type metadata accessor for MonochromeModel(0);
  sub_243D96718(v7);
  v8 = v5;

  v9 = sub_243DAD9C0();
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBB188, &unk_243DB2F00) + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDBAB90, &qword_243DB1AA0) + 28);
  v15 = *MEMORY[0x277CDFA88];
  v16 = sub_243DAD9D0();
  result = (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = KeyPath;
  *a1 = v18;
  a1[1] = v3;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v4;
  a1[5] = v6;
  return result;
}

id sub_243D9F680(void *a1)
{
  [a1 setFilterProvider_];
  [a1 setCornerComplicationPosition_];
  [a1 setFontStyle_];
  sub_243D9F494(v1[4]);
  sub_243D9FDE0();
  v3 = sub_243DAE1A0();

  [a1 setOuterLabelProviders_];

  sub_243D9F494(v1[5]);
  v4 = sub_243DAE1A0();

  [a1 setInnerLabelProviders_];

  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  if (v6 >= 1.0)
  {
    return [a1 updateMonochromeColor];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_243DAD860();

  return [a1 transitionToMonochromeWithFraction_];
}