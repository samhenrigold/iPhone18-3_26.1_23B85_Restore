id sub_257DE3694(double a1)
{
  v2 = v1;
  v4 = sub_257ECCB70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (a1 >= 0.0)
  {
    [v13 setPulseFrequency_];
    LODWORD(v14) = 1.0;
    if (a1 >= 0.08)
    {
      v14 = 0.0;
      if (a1 <= 0.95)
      {
        v14 = a1 + -0.95;
        *&v14 = a1 + -0.95;
        *&v14 = *&v14 / -0.87;
      }
    }
  }

  else
  {
    [v13 setPulseFrequency_];
    v14 = 0.0;
  }

  [*(v1 + v12) setVolume_];
  v15 = *(v1 + v12);
  sub_257E58CF0(v11, a1);
  v16 = sub_257ECCAE0();
  (*(v5 + 8))(v11, v4);
  [v15 setAudioFileURL_];

  LODWORD(v17) = 1.0;
  [*(v2 + v12) setPitchFactor_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v18 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPointSpeakFeedbacks);
  swift_beginAccess();
  v19 = v18[1];
  v20 = v18[2];
  v41 = *v18;
  v42 = v19;
  v43 = v20;
  v21 = qword_2815447E0;

  if (v21 != -1)
  {
    v22 = swift_once();
  }

  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  *&v40[-16] = &v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F90, &unk_257EDC2B0);
  sub_257ECFD50();

  v27 = sub_257C592D0(2u, v44);

  v33 = &selRef_startPulse;
  if (!v27)
  {
    v34 = *v18;
    v35 = v18[1];
    v36 = v18[2];
    v41 = v34;
    v42 = v35;
    v43 = v36;
    MEMORY[0x28223BE20](v28, v29, v30, v31, v32);
    *&v40[-16] = v37;

    sub_257ECFD50();

    v38 = sub_257C592D0(3u, v44);

    if (!v38)
    {
      v33 = &selRef_stopPulse;
    }
  }

  return [*(v2 + v12) *v33];
}

id MAGPulseFeedbackProcessor.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MAGPulseFeedbackProcessor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_257DE3B80(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = sub_257D12B14(*a1, *(a1 + 8), *(a1 + 16));
  if (!v2)
  {
    *a2 = v4;
  }
}

unint64_t sub_257DE3BF4()
{
  result = qword_27F8F58F0;
  if (!qword_27F8F58F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F58F0);
  }

  return result;
}

void sub_257DE3C40(double *a1@<X8>)
{
  v4 = sub_257D12B14(**(v1 + 16), *(*(v1 + 16) + 8), *(*(v1 + 16) + 16));
  if (!v2)
  {
    *a1 = v4;
  }
}

void sub_257DE3FF0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7618, &unk_257EE1A90);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = v34 - v7;
  v9 = sub_257ECCD90();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_languageTranslator);
  sub_257ECCD80();
  v18 = sub_257ECCD60();
  (*(v10 + 8))(v16, v9);
  v19 = [v17 _proposedTranslationLocaleForLocale_];

  if (v19)
  {
    sub_257ECCD70();

    (*(v10 + 56))(v8, 0, 1, v9);
    sub_257DE4474(v8);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v34[0]) == 1)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass_];
      v22 = sub_257ECF4C0();
      v23 = sub_257ECF4C0();
      v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

      v25 = v24;
      if (!v24)
      {
        sub_257ECF500();
        v25 = sub_257ECF4C0();
      }

      v34[0] = sub_257ECF500();
      v34[1] = v26;
      sub_257BDAB08();
      v27 = sub_257ED0100();
      v29 = v28;

      v30 = sub_257E003E8();
      v31 = sub_257E00504();
      sub_257DFD370(v27, v29, v30, v31);

      UIAccessibilitySpeakAndDoNotBeInterrupted();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v34[0]) = 1;
      sub_257ECC3F0();
      sub_257ECDD70();
    }

    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiConnected) == 1)
    {
      v32 = [objc_opt_self() shared];
      v33 = [v32 downloadManager];

      [v33 downloadImageCaptionAssets];
    }

    if (_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0())
    {
      sub_257D1A130();
    }
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_257DE4474(v8);
  }
}

uint64_t sub_257DE4474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7618, &unk_257EE1A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_257DE44DC()
{
  v0 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v0, v1, v2, v3, v4);
  v6 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  if (byte_27F8F78A0 != 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v33 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v14 = sub_257DFF054();
  result = [v14 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  [result alpha];
  v18 = v17;

  if (v18 == 0.0)
  {
LABEL_10:
    v32[1] = v0;
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v21 = sub_257ECF4C0();
    v22 = sub_257ECF4C0();
    v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

    v24 = v23;
    if (!v23)
    {
      sub_257ECF500();
      v24 = sub_257ECF4C0();
    }

    v33 = sub_257ECF500();
    v34 = v25;
    sub_257BDAB08();
    v26 = sub_257ED0100();
    v28 = v27;

    v29 = sub_257E003E8();
    v30 = sub_257E00504();
    sub_257DFD370(v26, v28, v29, v30);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }

LABEL_13:
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v33) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v6, &v13[v7[5]]);
  v13[v7[6]] = 1;
  v13[v7[7]] = 0;
  v31 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v6, type metadata accessor for MAGOutputEvent.EventType);
  *&v13[v7[8]] = v31;
  sub_257CBBC80(v13);
  return sub_257C15F24(v13, type metadata accessor for MAGOutputEvent);
}

uint64_t sub_257DE4958(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_257ECF900();
  v2[10] = sub_257ECF8F0();
  v4 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257DE49F0, v4, v3);
}

id sub_257DE49F0()
{
  v1 = v0[9];
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_engine);
  v4 = [v3 imageNode];
  if (v4)
  {

    result = [v3 imageNode];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = v0[9];
    v8 = v0[8];

    v9 = sub_257DE4CD8();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    *(v10 + 24) = v7;
    v0[6] = sub_257DE4EEC;
    v0[7] = v10;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_257BE8054;
    v0[5] = &block_descriptor_53;
    v11 = _Block_copy(v0 + 2);
    sub_257ECC3F0();
    v12 = v7;

    [v6 triggerWithPixelBuffer:v8 exifOrientation:6 options:v9 cacheKey:0 resultHandler:v11];
    _Block_release(v11);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

void sub_257DE4BC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  *(a3 + 16) = a1;
  v8 = a1;

  v9 = [objc_allocWithZone(MEMORY[0x277CE7E08]) init];
  v10 = [objc_opt_self() mainBundle];
  v11 = [v10 bundleIdentifier];

  [v9 setHostAppBundleID_];
  v12 = *(a4 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_springBoardServer);
  swift_beginAccess();
  [v12 launchVoiceOverImageExplorerViewServiceForResult:*(a3 + 16) withData:v9];
}

id sub_257DE4CD8()
{
  v0 = sub_257ECCD90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277CE6AE0]) init];
  v9 = AXRuntimeCheck_MediaAnalysisSupport();
  [v8 setDetectMADCaptions_];
  [v8 setDetectMADScenes_];
  [v8 setDetectScenes_];
  [v8 setDetectObjects_];
  [v8 setDetectProminentObjects_];
  [v8 setDetectCaptions_];
  [v8 setDetectText_];
  v10 = [objc_opt_self() defaultOptions];
  [v8 setTextDetectionOptions_];

  [v8 setDetectTraits_];
  [v8 setDetectModelClassifications_];
  [v8 setIncludeImageInResult_];
  sub_257ECCD80();
  v11 = sub_257ECCD60();
  (*(v1 + 8))(v7, v0);
  [v8 setPreferredOutputLocale_];

  return v8;
}

double block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

unint64_t MFReaderFont.rawValue.getter()
{
  result = 0x73616C65687441;
  switch(*v0)
  {
    case 1:
      result = 0x72657472616843;
      break;
    case 2:
      result = 0x616967726F6547;
      break;
    case 3:
      result = 0x6C4F206E61776F49;
      break;
    case 4:
      result = 0x6F6E6974616C6150;
      break;
    case 5:
      result = 0x6D6574737953;
      break;
    case 6:
      result = 0x6B657661726553;
      break;
    case 7:
      result = 0x654E2073656D6954;
      break;
    case 8:
      result = 0x63697465766C6548;
      break;
    case 9:
      result = 0x72656972756F43;
      break;
    case 0xA:
      result = 0x6F6C6E654DLL;
      break;
    case 0xB:
      result = 0x6568637562657254;
      break;
    case 0xC:
      result = 0x654E72696E657641;
      break;
    case 0xD:
      result = 0xD000000000000011;
      break;
    case 0xE:
      result = 0x6C70726570706F43;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_257DE50BC()
{
  result = 0x73616C65687441;
  switch(*v0)
  {
    case 1:
      result = 0x72657472616843;
      break;
    case 2:
      result = 0x616967726F6547;
      break;
    case 3:
      result = 0x6E61776F49;
      break;
    case 4:
      result = 0x6F6E6974616C6150;
      break;
    case 5:
      result = 0x6E617246206E6153;
      break;
    case 6:
      result = 0x6B657661726553;
      break;
    case 7:
      result = 0x654E2073656D6954;
      break;
    case 8:
      result = 0x63697465766C6548;
      break;
    case 9:
      result = 0x72656972756F43;
      break;
    case 0xA:
      result = 0x6F6C6E654DLL;
      break;
    case 0xB:
      result = 0x6568637562657254;
      break;
    case 0xC:
      result = 0x72696E657641;
      break;
    case 0xD:
      result = 0x65796F766153;
      break;
    case 0xE:
      result = 0x6C70726570706F43;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MFReaderFont.id.getter()
{
  v0 = sub_257ECCCF0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCCE0();
  v8 = sub_257ECCCA0();
  (*(v1 + 8))(v7, v0);
  return v8;
}

MagnifierSupport::MFReaderFont_optional __swiftcall MFReaderFont.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_257DE5388()
{
  v0 = MFReaderFont.rawValue.getter();
  v2 = v1;
  if (v0 == MFReaderFont.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_257ED0640();
  }

  return v5 & 1;
}

unint64_t sub_257DE5428()
{
  result = qword_27F8F9868;
  if (!qword_27F8F9868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9868);
  }

  return result;
}

uint64_t sub_257DE547C()
{
  sub_257ED07B0();
  MFReaderFont.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

double sub_257DE54E4(uint64_t a1)
{
  MFReaderFont.rawValue.getter();
  sub_257ECF5D0();

  return result;
}

uint64_t sub_257DE5548(uint64_t a1)
{
  sub_257ED07B0();
  MFReaderFont.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

unint64_t sub_257DE55B8@<X0>(unint64_t *a1@<X8>)
{
  result = MFReaderFont.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_257DE55E4()
{
  result = qword_27F8F9870;
  if (!qword_27F8F9870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F8400, &qword_257EEA540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9870);
  }

  return result;
}

uint64_t sub_257DE5658@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCCE0();
  v10 = sub_257ECCCA0();
  v12 = v11;
  result = (*(v3 + 8))(v9, v2);
  *a1 = v10;
  a1[1] = v12;
  return result;
}

uint64_t getEnumTagSinglePayload for MFReaderFont(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MFReaderFont(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257DE5934()
{
  result = qword_27F8F9878;
  if (!qword_27F8F9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9878);
  }

  return result;
}

void sub_257DE5988(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

double sub_257DE5A08(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

double sub_257DE5A7C(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_257ECF4C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8F90, &unk_257EED9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_257DE8508();
  *(inited + 40) = a1;
  v9 = v8;
  v10 = a1;
  sub_257BE8668(inited);
  swift_setDeallocating();
  sub_257DE8554(inited + 32);
  _s3__C3KeyVMa_0(0);
  sub_257D3FC9C();
  v11 = sub_257ECF3C0();

  [v6 boundingRectWithSize:1 options:v11 attributes:0 context:{1.79769313e308, a4}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v21.origin.x = v13;
  v21.origin.y = v15;
  v21.size.width = v17;
  v21.size.height = v19;
  return ceil(CGRectGetWidth(v21));
}

id sub_257DE5D00(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
  swift_beginAccess();
  *(v3 + v4) = v2;
  result = [*(v3 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel) setHidden_];
  if (*(v3 + v4) == 1)
  {
    return [*(v3 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel) setHidden_];
  }

  return result;
}

uint64_t sub_257DE5D94()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_257DE5DD8(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = [*(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel) setHidden_];
  if (*(v1 + v3) == 1)
  {
    return [*(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel) setHidden_];
  }

  return result;
}

uint64_t (*sub_257DE5E68(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_257DE5EF0;
}

void sub_257DE5EF0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    [*(v5 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel) setHidden_];
    if (*(v5 + v4) == 1)
    {
      [*(v3[3] + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel) setHidden_];
    }
  }

  free(v3);
}

double sub_257DE5F84()
{
  v1 = v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_257DE5FD0(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_257DE609C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_257DE60E0(char a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_257DE6190()
{
  result = [v0 superview];
  v2 = result;
  if (*&result != 0.0)
  {
    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 != 1)
    {
      [v2 bounds];
      v9 = CGRectGetWidth(v11) * 0.5;
      [v2 bounds];
      CGRectGetHeight(v12);

LABEL_11:
      *&result = v9;
      return result;
    }

    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 orientation];

    [v2 bounds];
    if (v4 != 2)
    {
      if (v4 == 4)
      {
        v9 = CGRectGetWidth(*&v5) + -34.0;
        [v2 bounds];
        CGRectGetHeight(v13);
      }

      else
      {
        if (v4 == 3)
        {
          CGRectGetHeight(*&v5);

          *&result = 34.0;
          return result;
        }

        v9 = CGRectGetWidth(*&v5) * 0.5;
        [v2 bounds];
        CGRectGetHeight(v14);
      }

      goto LABEL_11;
    }

    Width = CGRectGetWidth(*&v5);

    *&result = Width * 0.5;
  }

  return result;
}

id DetectedView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t DetectedView.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden) = 1;
  v3 = (v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets);
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kTargetPositionArrayMaxSize) = 40;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kFirstPointDepth) = 1048576000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kDepthLabelViewOpacity) = 0x3FE999999999999ALL;
  v5 = objc_opt_self();
  v6 = [v5 sharedApplication];
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  v9 = [v6 _keyWindowForScreen_];

  if (v9)
  {
    [v9 safeAreaInsets];
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaBottom) = v11;
  v12 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  v13 = [v12 navigationBar];

  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v33.origin.x = v15;
  v33.origin.y = v17;
  v33.size.width = v19;
  v33.size.height = v21;
  Height = CGRectGetHeight(v33);
  v23 = [v5 sharedApplication];
  v24 = [v7 mainScreen];
  v25 = [v23 _keyWindowForScreen_];

  if (v25)
  {
    [v25 safeAreaInsets];
    v27 = v26;
  }

  else
  {

    v27 = 0.0;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaTop) = Height + v27 + 20.0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaLeft) = 0x4041000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaRight) = 0x4041000000000000;
  v28 = v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  v29 = v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint;
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v30 = v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint;
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink) = 0;
  v31 = v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime;
  *v31 = 0;
  *(v31 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kTargetAnimationDuration) = 0x3FE0000000000000;
  type metadata accessor for DetectedView();
  swift_deallocPartialClassInstance();
  return 0;
}

char *sub_257DE673C(void *a1)
{
  v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden] = 1;
  v3 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets];
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled] = 0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kTargetPositionArrayMaxSize] = 40;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kFirstPointDepth] = 1048576000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kDepthLabelViewOpacity] = 0x3FE999999999999ALL;
  v5 = objc_opt_self();
  v6 = [v5 sharedApplication];
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  v9 = [v6 _keyWindowForScreen_];

  v10 = 0.0;
  v11 = 0;
  if (v9)
  {
    [v9 safeAreaInsets];
    v11 = v12;
  }

  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaBottom] = v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  v14 = [v13 navigationBar];

  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v64.origin.x = v16;
  v64.origin.y = v18;
  v64.size.width = v20;
  v64.size.height = v22;
  Height = CGRectGetHeight(v64);
  v24 = [v5 sharedApplication];
  v25 = [v7 mainScreen];
  v26 = [v24 _keyWindowForScreen_];

  if (v26)
  {
    [v26 safeAreaInsets];
    v10 = v27;
  }

  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaTop] = Height + v10 + 20.0;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaLeft] = 0x4041000000000000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kSafeAreaRight] = 0x4041000000000000;
  v28 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint];
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = 1;
  v29 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v30 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink] = 0;
  v31 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime];
  *v31 = 0;
  v31[8] = 1;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_kTargetAnimationDuration] = 0x3FE0000000000000;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v33 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel] = v32;
  v34 = [v32 layer];
  [v34 setMasksToBounds_];

  v35 = [*&v1[v33] layer];
  v65.origin.x = 0.0;
  v65.origin.y = 0.0;
  v65.size.width = 11.0;
  v65.size.height = 11.0;
  [v35 setCornerRadius_];

  v36 = *&v1[v33];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 whiteColor];
  [v38 setBackgroundColor_];

  [*&v1[v33] setIsAccessibilityElement_];
  [*&v1[v33] setHidden_];
  v40 = [objc_allocWithZone(type metadata accessor for DottedLineLabel()) initWithFrame_];
  v41 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel] = v40;
  [v40 setTextAlignment_];
  v42 = *&v1[v41];
  result = [v42 font];
  if (result)
  {
    v44 = result;
    v45 = [result fontWithSize_];

    [v42 setFont_];
    [*&v1[v41] setNumberOfLines_];
    [*&v1[v41] setLineBreakMode_];
    [*&v1[v41] setIsAccessibilityElement_];
    [a1 bounds];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v63.receiver = v1;
    v63.super_class = type metadata accessor for DetectedView();
    v54 = objc_msgSendSuper2(&v63, sel_initWithFrame_, v47, v49, v51, v53);
    v55 = [v54 layer];
    [v55 setMasksToBounds_];

    [v54 setIsAccessibilityElement_];
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v57 = [objc_opt_self() bundleForClass_];
    v58 = sub_257ECF4C0();
    v59 = sub_257ECF4C0();
    v60 = [v57 localizedStringForKey:v58 value:0 table:v59];

    if (!v60)
    {
      sub_257ECF500();
      v60 = sub_257ECF4C0();
    }

    [v54 setAccessibilityLabel_];

    [a1 addSubview_];
    [v54 addSubview_];
    v61 = *&v54[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel];
    [v54 addSubview_];

    v62 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
    swift_beginAccess();
    v54[v62] = 1;

    return v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257DE6E3C(__CVBuffer *a1)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  *&v9 = MEMORY[0x28223BE20](v3, v5, v6, v7, v8).n128_u64[0];
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 superview];
  if (v12)
  {
    v13 = v12;
    Height = CVPixelBufferGetHeight(a1);
    v15 = Height / CVPixelBufferGetWidth(a1);
    [v13 frame];
    Width = CGRectGetWidth(v30);
    [v13 frame];
    v17 = Width / CGRectGetHeight(v31);
    if (v17 >= v15)
    {
      if (v15 < v17)
      {
        [v13 frame];
        v25 = CGRectGetWidth(v34) / v15;
        [v13 frame];
        v26 = CGRectGetWidth(v35);

        v27 = (v25 - v26) * 0.5;
        v20 = 0.0;
LABEL_11:
        v28 = &v1[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets];
        result = swift_beginAccess();
        *v28 = v27;
        v28[1] = v20;
        v28[2] = v27;
        v28[3] = v20;
        return result;
      }

      v20 = 0.0;
    }

    else
    {
      [v13 frame];
      v18 = v15 * CGRectGetHeight(v32);
      [v13 frame];
      v19 = CGRectGetWidth(v33);

      v20 = (v18 - v19) * 0.5;
    }

    v27 = 0.0;
    goto LABEL_11;
  }

  sub_257ECD440();
  v21 = sub_257ECDA20();
  v22 = sub_257ECFBE0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_257BAC000, v21, v22, "Unable to update edge insets without superview", v23, 2u);
    MEMORY[0x259C74820](v23, -1, -1);
  }

  return (*(v4 + 8))(v11, v3);
}

void sub_257DE70B4(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = (a2 & 1) == 0;
    v5 = Strong;
    [Strong setHidden_];
  }
}

uint64_t sub_257DE711C(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink;
  v14 = *&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink];
  if (v14)
  {
    [v14 setPaused_];
    v14 = *&v6[v13];
  }

  [v14 invalidate];
  v15 = *&v6[v13];
  *&v6[v13] = 0;

  if (a2 < 0 || (v61.origin.x = a3, v61.origin.y = a4, v61.size.width = a5, v61.size.height = a6, CGRectIsNull(v61)))
  {
    v16 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
    swift_beginAccess();
    v6[v16] = 1;
    [*&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel] setHidden_];
    if (v6[v16] == 1)
    {
      [*&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel] setHidden_];
    }

    v17 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint];
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = 1;
    v18 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint];
    *v18 = 0;
    *(v18 + 1) = 0;
    v18[16] = 1;
    v19 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint];
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = 1;
    v20 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime];
    *v20 = 0;
    v20[8] = 1;
    if (a2 < 0)
    {
      return 0;
    }
  }

  else
  {
    v21 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
    swift_beginAccess();
    v6[v21] = 0;
    [*&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel] setHidden_];
    if (v6[v21] == 1)
    {
      [*&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel] setHidden_];
    }
  }

  v62.origin.x = a3;
  v62.origin.y = a4;
  v62.size.width = a5;
  v62.size.height = a6;
  if (CGRectIsNull(v62))
  {
    return 0;
  }

  result = [v6 superview];
  if (result)
  {
    v23 = result;
    v24 = v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint + 16];
    v25 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint];
    *v25 = *&v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint];
    v25[16] = v24;
    [result bounds];
    switch(a1)
    {
      case 1:
        c = -tx;
        a = 0.0;
        b = ty;
        d = 0.0;
        ty = 0.0;
        break;
      case 2:
        b = -ty;
        a = 0.0;
        c = tx;
        d = 0.0;
        tx = 0.0;
        break;
      case 4:
        a = -tx;
        d = -ty;
        b = 0.0;
        c = 0.0;
        break;
      default:
        CGAffineTransformMakeScale(&v60, tx, ty);
        a = v60.a;
        b = v60.b;
        c = v60.c;
        d = v60.d;
        tx = v60.tx;
        ty = v60.ty;
        break;
    }

    v60.a = a;
    v60.b = b;
    v60.c = c;
    v60.d = d;
    v60.tx = tx;
    v60.ty = ty;
    v63.origin.x = a3;
    v63.origin.y = a4;
    v63.size.width = a5;
    v63.size.height = a6;
    v64 = CGRectApplyAffineTransform(v63, &v60);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    v36 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView_edgeInsets];
    swift_beginAccess();
    v58 = v36[3];
    v59 = v36[1];
    [v23 frame];
    v56 = CGRectGetWidth(v65);
    v57 = v36[1];
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    MidX = CGRectGetMidX(v66);
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    MidY = CGRectGetMidY(v67);
    v38 = *v36;
    v39 = v36[2];
    [v23 frame];
    v40 = CGRectGetHeight(v68);
    v41 = *v36;
    v69.origin.x = x;
    v69.origin.y = y;
    v69.size.width = width;
    v69.size.height = height;
    CGRectGetMidX(v69);
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = width;
    v70.size.height = height;
    v42 = CGRectGetMidY(v70);
    v43 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled;
    swift_beginAccess();
    if (v6[v43] == 1)
    {
      [v23 bounds];
      v45 = v44 * 0.5;
      [v23 bounds];
      v47 = v46 * 0.5;
    }

    else
    {
      v45 = MidX * ((v59 + v58) / v56 + 1.0) - v57;
      v47 = ((v38 + v39) / v40 + 1.0) * v42 - v41;
    }

    v48 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint];
    *v48 = v45;
    v48[1] = v47;
    *(v48 + 16) = 0;
    v49 = CACurrentMediaTime();
    v50 = &v6[OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime];
    *v50 = v49;
    *(v50 + 8) = 0;
    v51 = [objc_opt_self() displayLinkWithTarget:v6 selector:sel_updateTargetAnimation];
    v52 = *&v6[v13];
    *&v6[v13] = v51;
    v53 = v51;

    if (v53)
    {
      v54 = [objc_opt_self() mainRunLoop];
      [v53 addToRunLoop:v54 forMode:*MEMORY[0x277CBE738]];
    }

    return 1;
  }

  return result;
}

void sub_257DE7638()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint);
  if ((*(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__nextTargetPoint + 16) & 1) == 0)
  {
    v3 = *v1;
    v2 = v1[1];
    v4 = COERCE_DOUBLE(sub_257DE6190());
    if ((v6 & 1) == 0)
    {
      v7 = v4;
      v8 = v5;
      v9 = (v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint);
      if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__previousTargetPoint + 16) & 1) != 0 || (*(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime + 8))
      {
        v10 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink;
        v11 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink);
        if (v11)
        {
          [v11 setPaused_];
          v11 = *(v0 + v10);
        }

        [v11 invalidate];
        v12 = *(v0 + v10);
        *(v0 + v10) = 0;
      }

      else
      {
        v14 = *v9;
        v13 = v9[1];
        v15 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__startTargetTime);
        v16 = CACurrentMediaTime();
        v17 = v16 - v15 + v16 - v15;
        if (v17 >= 1.0)
        {
          v18 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink;
          v19 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__targetAnimationDisplayLink);
          if (v19)
          {
            [v19 setPaused_];
            v19 = *(v0 + v18);
          }

          [v19 invalidate];
          v20 = *(v0 + v18);
          *(v0 + v18) = 0;

          v17 = 1.0;
        }

        v3 = v14 + (v3 - v14) * v17;
        v2 = v13 + (v2 - v13) * v17;
      }

      v21 = v7;
      v22 = v8;
      v23 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__positionLabel);
      [v23 frame];
      [v23 setFrame_];
      if (qword_27F8F4670 != -1)
      {
        swift_once();
      }

      v26 = v2 - v8;
      v27 = -1.0;
      v28 = 0.0;
      if (byte_27F8F8D89 == 1)
      {
        v29 = [objc_opt_self() currentDevice];
        v30 = [v29 orientation];

        v31 = v30 - 2;
        if ((v30 - 2) <= 2)
        {
          v28 = dbl_257EEA740[v31];
          v27 = dbl_257EEA758[v31];
        }
      }

      if ((v3 - v21) * v28 + v26 * v27 <= 0.0)
      {
        [*(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel) setHidden_];
      }

      else
      {
        sub_257DE796C(v21, v22, v3, v2);
        v32 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel);
        v33 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isDepthHidden;
        swift_beginAccess();
        [v32 setHidden_];
      }

      v34 = v0 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__currentTargetPoint;
      *v34 = v3;
      *(v34 + 8) = v2;
      *(v34 + 16) = 0;
    }
  }
}

void sub_257DE796C(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport12DetectedView__dottedLineLabel);
  CGAffineTransformMakeRotation(&v34, 0.0);
  [v9 setTransform_];
  v10 = (a2 + a4) * 0.5;
  v31 = a4;
  v11 = sqrt((a3 - a1) * (a3 - a1) + (a4 - a2) * (a4 - a2));
  [v9 frame];
  v13 = v12;
  [v9 setFrame_];
  v14 = [v9 font];
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = v14;
  v16 = sub_257DE5A7C(v14, 10649826, 0xA300000000000000, v13);

  v17 = floor(v11 / v16) * 1.2;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v17 < 9.22337204e18)
  {
    v30 = v9;
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    sub_257ECF6F0();
    v19 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v20 = sub_257ECF4C0();

    v21 = [v19 initWithString_];

    v22 = v18 >> 1;
    v23 = (v18 - 1);
    v33 = *MEMORY[0x277D740C0];
    v32 = *MEMORY[0x277D74158];
    v24 = (v18 >> 1) | 0x4000000000000000;
    v25 = 2 * (v18 >> 1);
    while ((v24 & 0x8000000000000000) == 0)
    {
      v26 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:1.0 blue:1.0 alpha:2.0 - v25 / v23];
      [v21 addAttribute:v33 value:v26 range:{v22, 1}];
      v27 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.0 blue:0.0 alpha:2.0 - v25 / v23];
      [v21 addAttribute:v32 value:v27 range:{v22, 1}];

      ++v24;
      v25 += 2;
      if (v18 == ++v22)
      {
        [v30 setAttributedText_];
        v28 = sqrt((a1 - a3) * (a1 - a3) + (a2 - v31) * (a2 - v31));
        v29 = atan2((a2 - v31) / v28, (a1 - a3) / v28);
        CGAffineTransformMakeRotation(&v34, v29);
        [v30 setTransform_];

        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_257DE7DE0()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_257ECF500();
    v5 = sub_257ECF4C0();
  }

  [v0 setAccessibilityLabel_];
}

id DetectedView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_257DE80E4(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_257DE8168(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v8.receiver = a1;
  v8.super_class = a4(a1, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_257DE81FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t keypath_get_4Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

unint64_t sub_257DE8508()
{
  result = qword_27F8F8FA0;
  if (!qword_27F8F8FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F8FA0);
  }

  return result;
}

uint64_t sub_257DE8554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9420, &qword_257EDA500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257DE85DC(char a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257DE86E0(unsigned __int8 a1)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

uint64_t sub_257DE8828(uint64_t **a1, unint64_t a2)
{
  *a1 = v2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    a1[1] = v5;
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_257C7DEC4(v5);
  v5 = result;
  a1[1] = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    type metadata accessor for DetectedDoor(0);
    return sub_257DE890C;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_257DE891C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C67118(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_257ED05F0();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_257DEC024(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_257DE8A50(void *a1)
{
  v2 = *(type metadata accessor for DetectedDoor(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_257C6712C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_257DEBCC8(v5);
  *a1 = v3;
}

uint64_t DetectedDoor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DetectedDoor.id.setter(uint64_t a1)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DetectedDoor.bbox.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for DetectedDoor(0);
  v10 = (v4 + *(result + 20));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t DetectedDoor.normalizedBbox.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for DetectedDoor(0);
  v10 = (v4 + *(result + 24));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t DetectedDoor.depth.setter(uint64_t a1)
{
  result = type metadata accessor for DetectedDoor(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t DetectedDoor.hash(into:)(uint64_t a1)
{
  sub_257ECCCF0();
  sub_257DEDA74(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_257ECF400();
}

uint64_t DetectedDoor.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257DEDA74(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257DE8F3C()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257DEDA74(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257DE8FC4(uint64_t a1)
{
  sub_257ECCCF0();
  sub_257DEDA74(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_257ECF400();
}

uint64_t sub_257DE9048(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257DEDA74(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_257ECF400();
  return sub_257ED0800();
}

void sub_257DE914C(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

void *sub_257DE91D8()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t sub_257DE924C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_257DEDFE8(v7, v9) & 1;
}

uint64_t sub_257DE92A8(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 1056964608;
  *(v1 + 24) = 0x4081300000000000;
  *(v1 + 32) = 2;
  *(v1 + 40) = 1057803469;
  *(v1 + 48) = xmmword_257EEA770;
  *(v1 + 64) = a1;
  type metadata accessor for DoorAttributesModel();
  swift_allocObject();
  v3 = swift_retain_n();
  *(v1 + 72) = sub_257D78084(v3);
  v4 = [objc_opt_self() shared];
  v5 = [v4 doorAttributesClassifierProperties];

  if (!v5)
  {

    return v2;
  }

  *&v10 = 0xD000000000000017;
  *(&v10 + 1) = 0x8000000257F06580;
  v6 = [v5 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {

    sub_257BE4084(v12, &unk_27F8F62F0, &unk_257ED9D30);
    return v2;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return v2;
  }

  *&v12[0] = 0xD000000000000010;
  *(&v12[0] + 1) = 0x8000000257F065A0;
  v7 = [v9 __swift_objectForKeyedSubscript_];
  result = swift_unknownObjectRelease();
  if (v7)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();

    sub_257BEBE08(&v10, v12);
    swift_dynamicCast();
    *(v2 + 24) = v9;
    return v2;
  }

  __break(1u);
  return result;
}

void sub_257DE9550(int64_t a1, __CVBuffer *a2, __CVBuffer *a3)
{
  v153 = a3;
  v152 = a2;
  v148 = type metadata accessor for DetectedDoor(0);
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v6, v7, v8, v9);
  v11 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v141 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v4 = a1 + 32;
    v169 = *(a1 + 32);
    v20 = *(v169 + 16);
    v163 = v19;
    if (v20)
    {
      v21 = sub_257ECF850();
      *(v21 + 16) = v20;
      bzero((v21 + 32), v20);
      v19 = v163;
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v3 = sub_257DEE30C(v21, v19, &qword_27F8F59B0, &qword_257EEA990);

    v22 = *(v169 + 16);
    if (v22)
    {
      v23 = sub_257ECF850();
      *(v23 + 16) = v22;
      bzero((v23 + 32), 8 * v22);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v168 = sub_257DEE30C(v23, v163, &unk_27F8F4D80, &qword_257EDD430);

    v24 = *(v169 + 16);
    if (v24)
    {
      v25 = sub_257ECF850();
      *(v25 + 16) = v24;
      bzero((v25 + 32), v24);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v171 = sub_257DEE30C(v25, v163, &qword_27F8F5990, &qword_257EDB1A8);

    v26 = v152;
    CVPixelBufferLockBaseAddress(v152, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v26);
    v27 = v153;
    CVPixelBufferLockBaseAddress(v153, 0);
    v159 = CVPixelBufferGetBaseAddress(v27);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v28 = v3;
      goto LABEL_13;
    }
  }

  else
  {
LABEL_164:
    __break(1u);
  }

  v28 = sub_257C7DEB0(v3);
LABEL_13:
  v29 = 0;
  v143 = 0;
  v161 = v28 + 4;
  v30 = v163;
  v31 = 1.0;
  v32 = 1.0 / v163;
  v158 = (a1 + 24);
  v157 = v28 + 3;
  v33 = MEMORY[0x277D84F90];
  v162 = 1;
  v154 = MEMORY[0x277D84F90];
  v146 = v11;
  v145 = v18;
  v144 = v4;
  v34 = v169;
  v164 = v28;
  while (1)
  {
    if (v29 == v30)
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v18 = *(v34 + 16);
    if (v18)
    {
      break;
    }

LABEL_142:
    if (++v29 == v30)
    {

      CVPixelBufferUnlockBaseAddress(v152, 0);
      CVPixelBufferUnlockBaseAddress(v153, 0);

      return;
    }
  }

  v3 = 0;
  v11 = v161;
  v150 = *(v34 + 16);
  v151 = v29;
  while (1)
  {
    if (v29 >= v28[2])
    {
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    a1 = *(v11 + 8 * v29);
    if (v3 >= *(a1 + 16))
    {
      goto LABEL_161;
    }

    if (*(a1 + v3 + 32) != 1)
    {
      break;
    }

LABEL_17:
    if (++v3 == v18)
    {
      goto LABEL_142;
    }
  }

  v35 = *(v4 + 8 * v29);
  if (v3 >= *(v35 + 16))
  {
    goto LABEL_162;
  }

  v36 = *(v35 + 8 * v3 + 32);
  if (v36 != 6 && v36 != 31)
  {
    v99 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 8 * v29) = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a1 = sub_257C7DE9C(a1);
      *(v11 + 8 * v29) = a1;
    }

    v30 = v163;
    v34 = v169;
    v101 = &v175;
    v28 = v164;
    if (v3 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_167;
    }

    v33 = v99;
    *(a1 + v3 + 32) = 1;
    goto LABEL_17;
  }

  v38 = v33;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v155 = v3;
  if (v39)
  {
    v40 = v164;
    v41 = v38;
  }

  else
  {
    v41 = sub_257BFD1A8(0, *(v38 + 2) + 1, 1, v38);
    v40 = v164;
  }

  v43 = *(v41 + 2);
  v42 = *(v41 + 3);
  v4 = v43 + 1;
  v44 = v163;
  v45 = v169;
  if (v43 >= v42 >> 1)
  {
    v140 = sub_257BFD1A8((v42 > 1), v43 + 1, 1, v41);
    v45 = v169;
    v44 = v163;
    v41 = v140;
    v40 = v164;
  }

  *&v170 = 0.0;
  *(v41 + 2) = v4;
  v46 = &v41[16 * v43];
  v47 = v155;
  *(v46 + 4) = v29;
  *(v46 + 5) = v47;
  v48 = *(v45 + 16);
  v49 = -1;
  v50 = NAN;
  v51 = *&v44;
  v52 = MEMORY[0x277D84F90];
  v53 = v171;
  while (2)
  {
    --v4;
    v54 = &v41[16 * v4];
    v18 = *(v54 + 4);
    a1 = *(v54 + 5);
    *(v41 + 2) = v4;
    if (v18 < 0)
    {
      goto LABEL_149;
    }

    if (v18 >= v40[2])
    {
      goto LABEL_150;
    }

    if (a1 < 0)
    {
      goto LABEL_151;
    }

    v3 = *(v11 + 8 * v18);
    if (a1 >= *(v3 + 16))
    {
      goto LABEL_152;
    }

    if ((*(v3 + a1 + 32) & 1) == 0)
    {
      v55 = v52;
      v166 = v51;
      v167 = v50;
      v4 = v49;
      v56 = v41;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      *(v11 + 8 * v18) = v3;
      if ((v57 & 1) == 0)
      {
        v3 = sub_257C7DE9C(v3);
        *(v11 + 8 * v18) = v3;
      }

      v11 = v168;
      if (a1 >= *(v3 + 16))
      {
        goto LABEL_153;
      }

      *(v3 + a1 + 32) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_257C7DE60(v11);
      }

      if (v18 >= *(v11 + 16))
      {
LABEL_154:
        __break(1u);
      }

      else
      {
        v3 = *(v11 + 32 + 8 * v18);
        v58 = swift_isUniquelyReferenced_nonNull_native();
        *(v11 + 32 + 8 * v18) = v3;
        if ((v58 & 1) == 0)
        {
          v3 = sub_257C7DE4C(v3);
          *(v11 + 32 + 8 * v18) = v3;
        }

        if (a1 < *(v3 + 16))
        {
          *(v3 + 8 * a1 + 32) = v162;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_257C7DE88(v53);
          }

          if (v18 < v53[2])
          {
            v59 = v53;
            v60 = v53 + 4;
            v3 = v60[v18];
            v61 = swift_isUniquelyReferenced_nonNull_native();
            v60[v18] = v3;
            if ((v61 & 1) == 0)
            {
              v3 = sub_257C7DE74(v3);
              v60[v18] = v3;
            }

            v62 = v169;
            v40 = v164;
            if (a1 < *(v3 + 16))
            {
              *(v3 + a1 + 32) = -1;
              if (!__OFADD__(v170, 1))
              {
                ++v170;
                v63 = v18 * a1;
                if ((v18 * a1) >> 64 == (v18 * a1) >> 63)
                {
                  v52 = v55;
                  v64 = v159[v63];
                  v65 = *(v160 + 32);
                  v168 = v11;
                  v171 = v59;
                  if (v65 <= v64)
                  {
                    v67 = BaseAddress[v63];
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v52 = v55;
                    }

                    else
                    {
                      v52 = sub_257BFD06C(0, *(v55 + 2) + 1, 1, v55);
                    }

                    v69 = *(v52 + 2);
                    v68 = *(v52 + 3);
                    v3 = v69 + 1;
                    v66 = v163;
                    v62 = v169;
                    v40 = v164;
                    v50 = v167;
                    v51 = v166;
                    if (v69 >= v68 >> 1)
                    {
                      v52 = sub_257BFD06C((v68 > 1), v69 + 1, 1, v52);
                      v51 = v166;
                      v50 = v167;
                      v49 = v4;
                      v41 = v56;
                      v62 = v169;
                      v66 = v163;
                      v40 = v164;
                    }

                    else
                    {
                      v41 = v56;
                      v49 = v4;
                    }

                    *(v52 + 2) = v3;
                    *&v52[4 * v69 + 32] = v67;
                  }

                  else
                  {
                    v41 = v56;
                    v66 = v163;
                    v49 = v4;
                    v50 = v167;
                    v51 = v166;
                  }

                  v4 = 0;
                  if (v48 >= a1)
                  {
                    v48 = a1;
                  }

                  *&v165 = v48;
                  if (v49 <= a1)
                  {
                    v49 = a1;
                  }

                  if (*&v51 >= v18)
                  {
                    v51 = *&v18;
                  }

                  if (*&v50 <= v18)
                  {
                    v50 = *&v18;
                  }

                  v70 = (v18 - 1);
                  v71 = a1 - 1;
                  v11 = a1 + 1;
                  v72 = __OFADD__(a1, 1);
                  v73 = &v158[v18];
                  v74 = &v157[v18];
                  while (1)
                  {
                    v18 = &v70[v4];
                    v75 = &v70[v4] >= v66 || a1 == 0;
                    if (!v75 && v71 < *(v62 + 16))
                    {
                      if (v18 >= v40[2])
                      {
                        goto LABEL_146;
                      }

                      v76 = v74[v4];
                      if (v71 >= *(v76 + 16))
                      {
                        goto LABEL_147;
                      }

                      if ((*(v76 + v71 + 32) & 1) == 0)
                      {
                        v77 = v73[v4];
                        if (v71 >= *(v77 + 16))
                        {
                          goto LABEL_148;
                        }

                        v78 = *(v77 + 8 * v71 + 32);
                        if (v78 == 31 || v78 == 6)
                        {
                          v81 = *(v41 + 2);
                          v80 = *(v41 + 3);
                          v3 = v81 + 1;
                          if (v81 >= v80 >> 1)
                          {
                            v142 = v52;
                            *&v149 = v49;
                            v167 = v50;
                            v166 = v51;
                            v141 = v73;
                            v96 = sub_257BFD1A8((v80 > 1), v81 + 1, 1, v41);
                            v73 = v141;
                            v51 = v166;
                            v50 = v167;
                            v49 = v149;
                            v62 = v169;
                            v66 = v163;
                            v41 = v96;
                            v52 = v142;
                            v40 = v164;
                          }

                          *(v41 + 2) = v3;
                          v82 = &v41[16 * v81];
                          *(v82 + 4) = v18;
                          *(v82 + 5) = v71;
                        }
                      }
                    }

                    if (v18 < v66 && a1 < *(v62 + 16))
                    {
                      if (v18 >= v40[2])
                      {
                        goto LABEL_146;
                      }

                      v83 = v74[v4];
                      if (a1 >= *(v83 + 16))
                      {
                        goto LABEL_147;
                      }

                      if ((*(v83 + a1 + 32) & 1) == 0 && v4 != 1)
                      {
                        v84 = v73[v4];
                        if (a1 >= *(v84 + 16))
                        {
                          goto LABEL_148;
                        }

                        v85 = *(v84 + 8 * a1 + 32);
                        if (v85 == 31 || v85 == 6)
                        {
                          v88 = *(v41 + 2);
                          v87 = *(v41 + 3);
                          v3 = v88 + 1;
                          if (v88 >= v87 >> 1)
                          {
                            v142 = v52;
                            *&v149 = v49;
                            v167 = v50;
                            v166 = v51;
                            v141 = v73;
                            v97 = sub_257BFD1A8((v87 > 1), v88 + 1, 1, v41);
                            v73 = v141;
                            v51 = v166;
                            v50 = v167;
                            v49 = v149;
                            v62 = v169;
                            v66 = v163;
                            v41 = v97;
                            v52 = v142;
                            v40 = v164;
                          }

                          *(v41 + 2) = v3;
                          v89 = &v41[16 * v88];
                          *(v89 + 4) = v18;
                          *(v89 + 5) = a1;
                        }
                      }
                    }

                    if (v72)
                    {
                      break;
                    }

                    if (v18 < v66 && (v11 & 0x8000000000000000) == 0 && v11 < *(v62 + 16))
                    {
                      if (v18 >= v40[2])
                      {
                        goto LABEL_146;
                      }

                      v90 = v74[v4];
                      if (v11 >= *(v90 + 16))
                      {
                        goto LABEL_147;
                      }

                      if ((*(v90 + v11 + 32) & 1) == 0)
                      {
                        v91 = v73[v4];
                        if (v11 >= *(v91 + 16))
                        {
                          goto LABEL_148;
                        }

                        v92 = *(v91 + 8 * v11 + 32);
                        if (v92 == 31 || v92 == 6)
                        {
                          v94 = *(v41 + 2);
                          v93 = *(v41 + 3);
                          v3 = v94 + 1;
                          if (v94 >= v93 >> 1)
                          {
                            v142 = v52;
                            *&v149 = v49;
                            v167 = v50;
                            v166 = v51;
                            v141 = v73;
                            v98 = sub_257BFD1A8((v93 > 1), v94 + 1, 1, v41);
                            v73 = v141;
                            v51 = v166;
                            v50 = v167;
                            v49 = v149;
                            v62 = v169;
                            v66 = v163;
                            v41 = v98;
                            v52 = v142;
                            v40 = v164;
                          }

                          *(v41 + 2) = v3;
                          v95 = &v41[16 * v94];
                          *(v95 + 4) = v18;
                          *(v95 + 5) = v11;
                        }
                      }
                    }

                    if (v4 == 2)
                    {
                      v4 = *(v41 + 2);
                      v53 = v171;
                      v11 = v161;
                      v48 = v165;
                      goto LABEL_33;
                    }

                    ++v4;
                    if (__OFADD__(v18, 1))
                    {
                      goto LABEL_145;
                    }
                  }

                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);
LABEL_147:
                  __break(1u);
LABEL_148:
                  __break(1u);
LABEL_149:
                  __break(1u);
LABEL_150:
                  __break(1u);
LABEL_151:
                  __break(1u);
LABEL_152:
                  __break(1u);
LABEL_153:
                  __break(1u);
                  goto LABEL_154;
                }

LABEL_159:
                __break(1u);
                goto LABEL_160;
              }

LABEL_158:
              __break(1u);
              goto LABEL_159;
            }

LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

LABEL_156:
          __break(1u);
          goto LABEL_157;
        }
      }

      __break(1u);
      goto LABEL_156;
    }

LABEL_33:
    if (v4)
    {
      continue;
    }

    break;
  }

  v102 = *&v51;
  v103 = *&v50;
  *&v149 = v49;
  v104 = v48;
  v142 = v41;
  v105 = *(v52 + 2) / v170;
  v171 = v53;
  if (v105 > 0.55)
  {
    *&t1.a = v52;
    v109 = v52;
    swift_bridgeObjectRetain_n();
    v110 = v143;
    sub_257DE891C(&t1);
    v111 = v146;
    v108 = v145;
    v4 = v144;
    v101 = &v171;
    v143 = v110;
    if (v110)
    {
      goto LABEL_169;
    }

    a = t1.a;
    v113 = *(v109 + 2);

    v101 = v113 >> 1;
    if (v113 >> 1 < *(*&a + 16))
    {
      v106 = *(*&a + 4 * v101 + 32);

      v107 = v111;
      goto LABEL_135;
    }
  }

  else
  {

    v106 = 0;
    v107 = v146;
    v108 = v145;
    v4 = v144;
LABEL_135:
    v114 = v104;
    v115 = v104;
    v167 = v103;
    v166 = v149;
    v116 = v105 <= 0.55;
    v117 = (v149 - v114);
    v118 = v31 / *(v169 + 16);
    *&v170 = v32;
    CGAffineTransformMakeScale(&t1, v32, v118);
    tx = t1.tx;
    ty = t1.ty;
    v165 = *&t1.a;
    v149 = *&t1.c;
    CGAffineTransformMakeScale(&t1, 1.0, 1.0);
    v121 = *&t1.a;
    v122 = *&t1.c;
    v123 = *&t1.tx;
    *&t1.a = v165;
    *&t1.c = v149;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v121;
    *&t2.c = v122;
    *&t2.tx = v123;
    CGAffineTransformConcat(&v172, &t1, &t2);
    t1 = v172;
    v176.origin.x = v102;
    v176.origin.y = v115;
    v176.size.width = (v103 - v102);
    v176.size.height = v117;
    v177 = CGRectApplyAffineTransform(v176, &t1);
    x = v177.origin.x;
    y = v177.origin.y;
    width = v177.size.width;
    height = v177.size.height;
    sub_257ECCCE0();
    v128 = v148;
    v129 = (v108 + *(v148 + 20));
    *v129 = v102;
    v129[1] = v115;
    v129[2] = (v103 - v102);
    v129[3] = v117;
    v130 = (v108 + v128[6]);
    *v130 = x;
    v130[1] = y;
    v130[2] = width;
    v130[3] = height;
    v131 = (v108 + v128[7]);
    *v131 = v102;
    v131[1] = v115;
    v132 = (v108 + v128[8]);
    v133 = v166;
    *v132 = v167;
    v132[1] = v133;
    *(v108 + v128[9]) = v162;
    v134 = v108 + v128[10];
    *v134 = v106;
    *(v134 + 4) = v116;
    v135 = v108 + v128[11];
    *(v135 + 96) = 0;
    *(v135 + 64) = 0u;
    *(v135 + 80) = 0u;
    *(v135 + 32) = 0u;
    *(v135 + 48) = 0u;
    *v135 = 0u;
    *(v135 + 16) = 0u;
    *(v108 + v128[12]) = 0;
    sub_257DEED6C(v108, v107);
    v136 = v154;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_257BFD044(0, v136[2] + 1, 1, v136);
    }

    v138 = v136[2];
    v137 = v136[3];
    a1 = v138 + 1;
    v11 = v161;
    v31 = 1.0;
    v32 = *&v170;
    if (v138 >= v137 >> 1)
    {
      v136 = sub_257BFD044((v137 > 1), v138 + 1, 1, v136);
    }

    sub_257DEEDD0(v108);
    v136[2] = a1;
    sub_257DEFC48(v107, v136 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v138);
    v139 = __OFADD__(v162, 1);
    v101 = ++v162;
    if (!v139)
    {
      v154 = v136;
      v30 = v163;
      v34 = v169;
      v28 = v164;
      v29 = v151;
      v33 = v142;
      v18 = v150;
      v3 = v155;
      goto LABEL_17;
    }

LABEL_167:
    __break(1u);
  }

  __break(1u);
LABEL_169:

  __break(1u);
}

void sub_257DEA5C0(void *a1, int a2, void *a3, unint64_t a4, void (*a5)(void, void, void, uint64_t), uint64_t a6, double a7, double a8)
{
  v235 = a6;
  v236 = a5;
  v228 = a3;
  v229 = a2;
  imageOut[1] = *MEMORY[0x277D85DE8];
  v234 = sub_257ECDA30();
  *&v239 = *(v234 - 8);
  MEMORY[0x28223BE20](v234, v12, v13, v14, v15);
  v17 = &v202 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v24 = &v202 - v23;
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v31 = &v202 - v30;
  MEMORY[0x28223BE20](v32, v33, v34, v35, v36);
  v38 = &v202 - v37;
  MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
  v45 = &v202 - v44;
  MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
  v225 = &v202 - v51;
  v52 = type metadata accessor for DetectedDoor(0);
  v237 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v53, v54, v55, v56);
  v230 = &v202 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58, v59, v60, v61, v62);
  v64 = &v202 - v63;
  *&v70 = MEMORY[0x28223BE20](v65, v66, v67, v68, v69).n128_u64[0];
  v72 = &v202 - v71;
  v233 = a1;
  v73 = [a1 rawSceneUnderstandingData];
  if (!v73)
  {
    sub_257ECD450();
    v100 = sub_257ECDA20();
    v101 = sub_257ECFBD0();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_257BAC000, v100, v101, "No scene understanding data", v102, 2u);
      MEMORY[0x259C74820](v102, -1, -1);
    }

    (*(v239 + 8))(v17, v234);
    v236(0, 0, 0, 1);
    return;
  }

  v74 = v73;
  v226 = [v73 semanticSegmentationBufferSampledForDepth];
  if (!v226)
  {
    v103 = v74;
    sub_257ECD450();
    v104 = sub_257ECDA20();
    v105 = sub_257ECFBD0();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_257BAC000, v104, v105, "No semantic buffer", v106, 2u);
      MEMORY[0x259C74820](v106, -1, -1);
    }

    (*(v239 + 8))(v24, v234);
    v236(0, 0, 0, 1);

    return;
  }

  v217 = v74;
  v75 = [v74 semanticSegmentationConfidenceBufferSampledForDepth];
  if (!v75)
  {
    sub_257ECD450();
    v107 = sub_257ECDA20();
    v108 = sub_257ECFBD0();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&dword_257BAC000, v107, v108, "No semantic confidence buffer", v109, 2u);
      MEMORY[0x259C74820](v109, -1, -1);
    }

    (*(v239 + 8))(v31, v234);
    v236(0, 0, 0, 1);

    v110 = &v244;
    goto LABEL_28;
  }

  v216 = v75;
  v76 = v226;
  Width = CVPixelBufferGetWidth(v226);
  Height = CVPixelBufferGetHeight(v76);
  v212 = Width;
  v213 = Height;
  v79 = v233;
  v80 = [v233 capturedImage];
  *&v238 = CVPixelBufferGetWidth(v80);

  v81 = [v79 capturedImage];
  v232 = COERCE_DOUBLE(CVPixelBufferGetHeight(v81));

  v82 = [v79 sceneDepth];
  if (!v82)
  {
    sub_257ECD450();
    v111 = sub_257ECDA20();
    v112 = sub_257ECFBD0();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&dword_257BAC000, v111, v112, "No scene depth", v113, 2u);
      MEMORY[0x259C74820](v113, -1, -1);
    }

    (*(v239 + 8))(v38, v234);
    v236(0, *&v212, *&v213, 0);

    v110 = &v240;
LABEL_28:

    return;
  }

  v83 = v82;
  v84 = [v82 confidenceMap];
  if (v84)
  {
    v214 = a4;
    v85 = v84;
    v86 = sub_257DEE0D0(v76, v216);
    v205 = v83;
    v87 = [v83 depthMap];
    v204 = v85;
    sub_257DE9550(v86, v87, v85);
    v89 = v88;

    sub_257DEE670(v89);
    v91 = v90;

    v92 = *(*&v91 + 16);
    v93 = MEMORY[0x277D84F90];
    if (v92)
    {
      v94 = (*(v237 + 80) + 32) & ~*(v237 + 80);
      v95 = *&v91 + v94;
      v96 = v91;
      v97 = *(v237 + 72);
      v231 = v96;

      do
      {
        sub_257DEED6C(v95, v72);
        if (*(v241 + 24) >= *&v72[*(v52 + 20) + 16] * *&v72[*(v52 + 20) + 24])
        {
          sub_257DEEDD0(v72);
        }

        else
        {
          sub_257DEED6C(v72, v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v93 = sub_257BFD044(0, v93[2] + 1, 1, v93);
          }

          v99 = v93[2];
          v98 = v93[3];
          if (v99 >= v98 >> 1)
          {
            v93 = sub_257BFD044((v98 > 1), v99 + 1, 1, v93);
          }

          sub_257DEEDD0(v72);
          v93[2] = v99 + 1;
          sub_257DEFC48(v64, v93 + v94 + v99 * v97);
        }

        v95 += v97;
        --v92;
      }

      while (v92);
    }

    *&t1.a = v93;

    sub_257DE8A50(&t1);
    v114 = v226;
    swift_bridgeObjectRelease_n();
    a = t1.a;
    v244 = t1.a;
    imageOut[0] = 0;
    v116 = [v233 capturedImage];
    VTCreateCGImageFromCVPixelBuffer(v116, 0, imageOut);

    if (!imageOut[0])
    {

      v201 = imageOut[0];

      return;
    }

    v118 = *(*&a + 16);
    v119 = 3;
    if (v118 < 3)
    {
      v119 = *(*&a + 16);
    }

    v227 = v119;
    if (!v118)
    {
LABEL_79:
      v236(*&a, *&v212, *&v213, 0);

      v200 = imageOut[0];

      return;
    }

    v215 = 0;
    v120 = 0;
    v121 = v238;
    v122 = *&v232;
    v232 = 1.0 / v212;
    v231 = 1.0 / v213;
    v210 = a7;
    v207 = 1.0 / a7;
    v203 = (v239 + 8);
    *&v117 = 138412290;
    v202 = v117;
    v211 = a8;
    v206 = 1.0 / a8;
    v123 = v230;
    v209 = v238;
    v208 = v122;
    while (1)
    {
      v124 = objc_autoreleasePoolPush();
      if (v120 >= *(*&v244 + 16))
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
      }

      v125 = v124;
      v126 = (*(v237 + 80) + 32) & ~*(v237 + 80);
      v127 = *(v237 + 72) * v120;
      sub_257DEED6C(*&v244 + v126 + v127, v123);
      v128 = (v123 + *(v52 + 20));
      v129 = *v128;
      v130 = v128[1];
      v131 = v128[2];
      v132 = v128[3];
      CGAffineTransformMakeScale(&t1, v232, v231);
      tx = t1.tx;
      ty = t1.ty;
      v239 = *&t1.a;
      v238 = *&t1.c;
      CGAffineTransformMakeScale(&t1, v121, v122);
      v135 = *&t1.a;
      v136 = *&t1.c;
      v137 = *&t1.tx;
      *&t1.a = v239;
      *&t1.c = v238;
      t1.tx = tx;
      t1.ty = ty;
      *&t2.a = v135;
      *&t2.c = v136;
      *&t2.tx = v137;
      CGAffineTransformConcat(&v242, &t1, &t2);
      t1 = v242;
      v247.origin.x = v129;
      v247.origin.y = v130;
      *&v239 = v131;
      v247.size.width = v131;
      *&v238 = v132;
      v247.size.height = v132;
      v248 = CGRectApplyAffineTransform(v247, &t1);
      if (!imageOut[0])
      {
        goto LABEL_83;
      }

      v138 = CGImageCreateWithImageInRect(imageOut[0], v248);
      if (v138)
      {
        v139 = v138;
        sub_257DEBB04(256.0, 256.0);
        if (!v140)
        {
          sub_257DEEDD0(v123);

          goto LABEL_38;
        }

        v224 = v140;
        if ((v229 & 1) == 0)
        {
          goto LABEL_52;
        }

        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v141 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
        swift_beginAccess();
        v142 = *(v141 + 8);
        v143 = *(v141 + 16);
        t1.a = *v141;
        t1.b = v142;
        LOBYTE(t1.c) = v143;
        v144 = qword_2815447E0;

        if (v144 != -1)
        {
          v145 = swift_once();
        }

        MEMORY[0x28223BE20](v145, v146, v147, v148, v149);
        v150 = v215;
        sub_257ECFD50();
        v215 = v150;

        if (LOBYTE(t2.a) == 1)
        {
          v151 = objc_opt_self();
          t1.a = 0.0;
          v152 = v224;
          v153 = [v151 featureValueWithCGImage:v152 orientation:6 pixelsWide:256 pixelsHigh:256 pixelFormatType:32 options:0 error:&t1];
          if (!v153)
          {
            v185 = *&t1.a;
            v186 = sub_257ECC9F0();

            swift_willThrow();
            sub_257ECD450();
            v187 = v186;
            v188 = sub_257ECDA20();
            v189 = sub_257ECFBD0();

            if (os_log_type_enabled(v188, v189))
            {
              v190 = swift_slowAlloc();
              v191 = v152;
              v192 = swift_slowAlloc();
              *v190 = v202;
              v193 = v186;
              v194 = _swift_stdlib_bridgeErrorToNSError();
              *(v190 + 4) = v194;
              *v192 = v194;
              _os_log_impl(&dword_257BAC000, v188, v189, "%@", v190, 0xCu);
              sub_257BE4084(v192, &unk_27F8F5490, &unk_257EDC470);
              v195 = v192;
              v152 = v191;
              MEMORY[0x259C74820](v195, -1, -1);
              MEMORY[0x259C74820](v190, -1, -1);
            }

            (*v203)(v225, v234);
            v123 = v230;
            sub_257DEEDD0(v230);
            v215 = 0;
            goto LABEL_38;
          }

          v154 = v153;
          v155 = *&t1.a;

          v156 = [v154 imageBufferValue];
          v157 = v211;
          v158 = v210;
          if (!v156)
          {
            __break(1u);

            __break(1u);
            return;
          }

          sub_257D79228(v156, *(v241 + 72), &v244, v120);
        }

        else
        {
LABEL_52:
          v157 = v211;
          v158 = v210;
        }

        CGAffineTransformMakeScale(&t1, v232, v231);
        v159 = t1.tx;
        v160 = t1.ty;
        v223 = *&t1.a;
        v222 = *&t1.c;
        [v233 displayTransformForOrientation:1 viewportSize:{v158, v157}];
        v161 = t1.tx;
        v162 = t1.ty;
        v219 = *&t1.a;
        v218 = *&t1.c;
        CGAffineTransformMakeScale(&t1, v158, v157);
        v163 = t1.tx;
        v164 = t1.ty;
        v221 = *&t1.a;
        v220 = *&t1.c;
        *&t1.a = v223;
        *&t1.c = v222;
        t1.tx = v159;
        t1.ty = v160;
        *&t2.c = v218;
        *&t2.a = v219;
        t2.tx = v161;
        t2.ty = v162;
        CGAffineTransformConcat(&v242, &t1, &t2);
        t1 = v242;
        *&t2.c = v220;
        *&t2.a = v221;
        t2.tx = v163;
        t2.ty = v164;
        CGAffineTransformConcat(&v242, &t1, &t2);
        t1 = v242;
        v249.origin.x = v129;
        v249.origin.y = v130;
        *&v249.size.width = v239;
        *&v249.size.height = v238;
        v250 = CGRectApplyAffineTransform(v249, &t1);
        x = v250.origin.x;
        y = v250.origin.y;
        v167 = v250.size.width;
        v168 = v250.size.height;
        CGAffineTransformMakeScale(&t1, v207, v206);
        v169 = *&t1.tx;
        v239 = *&t1.a;
        v238 = *&t1.c;
        CGAffineTransformMakeScale(&t1, 1.0, 1.0);
        v170 = *&t1.a;
        v171 = *&t1.c;
        v172 = *&t1.tx;
        *&t1.a = v239;
        *&t1.c = v238;
        *&t1.tx = v169;
        *&t2.a = v170;
        *&t2.c = v171;
        *&t2.tx = v172;
        CGAffineTransformConcat(&v242, &t1, &t2);
        t1 = v242;
        v251.origin.x = x;
        v251.origin.y = y;
        v251.size.width = v167;
        v251.size.height = v168;
        v252 = CGRectApplyAffineTransform(v251, &t1);
        v173 = v252.origin.x;
        v174 = v252.origin.y;
        v175 = v252.size.width;
        v176 = v252.size.height;
        if (v228)
        {
          v177 = v228;
          v178 = sub_257DEEE2C(v177, v173, v174, v175, v176);
        }

        else
        {
          v178 = 0;
        }

        v121 = v209;
        v122 = v208;
        if (v214)
        {
          v179 = sub_257DEF500(v214, v173, v174, v175, v176);
        }

        else
        {
          v179 = 0;
        }

        v180 = v244;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v180 = COERCE_DOUBLE(sub_257C7DEC4(*&v180));
        }

        if (v120 >= *(*&v180 + 16))
        {
          goto LABEL_82;
        }

        *(*&v180 + v126 + v127 + *(v52 + 48)) = MEMORY[0x277D84F90];

        v244 = v180;
        if (v178)
        {
          v181 = sub_257DE8828(&t1, v120);
          if (*(v182 + *(v52 + 48)))
          {
            sub_257EB0640(v178);
          }

          else
          {
          }

          v181(&t1, 0);
        }

        if (!v179)
        {
          v123 = v230;
          sub_257DEEDD0(v230);

          goto LABEL_38;
        }

        v183 = sub_257DE8828(&t1, v120);
        if (*(v184 + *(v52 + 48)))
        {
          sub_257EB0640(v179);
        }

        else
        {
        }

        v183(&t1, 0);

        v123 = v230;
      }

      sub_257DEEDD0(v123);
LABEL_38:
      ++v120;
      objc_autoreleasePoolPop(v125);
      if (v227 == v120)
      {
        a = v244;
        v114 = v226;
        goto LABEL_79;
      }
    }
  }

  v196 = v83;
  sub_257ECD450();
  v197 = sub_257ECDA20();
  v198 = sub_257ECFBD0();
  if (os_log_type_enabled(v197, v198))
  {
    v199 = swift_slowAlloc();
    *v199 = 0;
    _os_log_impl(&dword_257BAC000, v197, v198, "No scene depth confidence", v199, 2u);
    MEMORY[0x259C74820](v199, -1, -1);
  }

  (*(v239 + 8))(v45, v234);
  v236(0, *&v212, *&v213, 0);
}

void sub_257DEBB04(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(v2);
  v6 = CGImageGetColorSpace(v2);
  if (!v6)
  {
    v6 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  v7 = v6;
  BitmapInfo = CGImageGetBitmapInfo(v2);
  v9 = __CGBitmapContextCreate(a1, a2, BitsPerComponent, v7, BitmapInfo);

  if (v9)
  {
    CGContextSetInterpolationQuality(v9, kCGInterpolationLow);
    v10 = v9;
    sub_257ECFB70();

    CGBitmapContextCreateImage(v10);
  }
}

uint64_t sub_257DEBC88()
{

  return swift_deallocClassInstance();
}

void sub_257DEBCC8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_257ED05F0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DetectedDoor(0);
        v6 = sub_257ECF850();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for DetectedDoor(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_257DEC580(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_257DEBDF4(0, v2, 1, a1);
  }
}

void sub_257DEBDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v42 - v20;
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v29 = &v42 - v28;
  v44 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v31 = *(v27 + 72);
    v32 = *a4 + v31 * (a3 - 1);
    v33 = -v31;
    v34 = a1 - a3;
    v43 = v31;
    v35 = v30 + v31 * a3;
LABEL_5:
    v47 = v32;
    v48 = a3;
    v45 = v35;
    v46 = v34;
    v36 = v34;
    while (1)
    {
      sub_257DEED6C(v35, v29);
      sub_257DEED6C(v32, v21);
      v37 = *(v8 + 40);
      if (v29[v37 + 4])
      {
        v38 = 3.4028e38;
      }

      else
      {
        v38 = *&v29[v37];
      }

      v39 = &v21[v37];
      if (v39[4])
      {
        v40 = 3.4028e38;
      }

      else
      {
        v40 = *v39;
      }

      sub_257DEEDD0(v21);
      sub_257DEEDD0(v29);
      if (v38 >= v40)
      {
LABEL_4:
        a3 = v48 + 1;
        v32 = v47 + v43;
        v34 = v46 - 1;
        v35 = v45 + v43;
        if (v48 + 1 == v44)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v30)
      {
        break;
      }

      sub_257DEFC48(v35, v14);
      swift_arrayInitWithTakeFrontToBack();
      sub_257DEFC48(v14, v32);
      v32 += v33;
      v35 += v33;
      if (__CFADD__(v36++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_257DEC024(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_257C66E20(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_257DECF48((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_257BFCB00(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_257BFCB00((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_257DECF48((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

void sub_257DEC580(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v158 = a1;
  v8 = type metadata accessor for DetectedDoor(0);
  v168 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9, v10, v11, v12);
  v161 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v172 = &v153 - v19;
  MEMORY[0x28223BE20](v20, v21, v22, v23, v24);
  v26 = &v153 - v25;
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  v33 = &v153 - v32;
  MEMORY[0x28223BE20](v34, v35, v36, v37, v38);
  v167 = &v153 - v39;
  MEMORY[0x28223BE20](v40, v41, v42, v43, v44);
  v166 = &v153 - v45;
  MEMORY[0x28223BE20](v46, v47, v48, v49, v50);
  v155 = &v153 - v51;
  MEMORY[0x28223BE20](v52, v53, v54, v55, v56);
  v154 = &v153 - v57;
  v170 = a3;
  v58 = *(a3 + 8);
  if (v58 < 1)
  {
    v60 = MEMORY[0x277D84F90];
LABEL_116:
    a4 = *v158;
    if (!*v158)
    {
      goto LABEL_155;
    }

    a3 = v60;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v148 = a3;
    }

    else
    {
LABEL_149:
      v148 = sub_257C66E20(a3);
    }

    v174 = v148;
    a3 = *(v148 + 2);
    if (a3 >= 2)
    {
      while (*v170)
      {
        v149 = *&v148[16 * a3];
        v150 = v148;
        v151 = *&v148[16 * a3 + 24];
        sub_257DED13C(*v170 + *(v168 + 72) * v149, *v170 + *(v168 + 72) * *&v148[16 * a3 + 16], *v170 + *(v168 + 72) * v151, a4);
        if (v5)
        {
          goto LABEL_127;
        }

        if (v151 < v149)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = sub_257C66E20(v150);
        }

        if (a3 - 2 >= *(v150 + 2))
        {
          goto LABEL_143;
        }

        v152 = &v150[16 * a3];
        *v152 = v149;
        *(v152 + 1) = v151;
        v174 = v150;
        sub_257C66D94(a3 - 1);
        v148 = v174;
        a3 = *(v174 + 2);
        if (a3 <= 1)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_153;
    }

LABEL_127:

    return;
  }

  v59 = 0;
  v60 = MEMORY[0x277D84F90];
  v157 = a4;
  v173 = v8;
  while (1)
  {
    v61 = v59;
    v62 = v59 + 1;
    v162 = v60;
    if (v62 >= v58)
    {
      v81 = v62;
    }

    else
    {
      v171 = v58;
      v156 = v5;
      a3 = *v170;
      v63 = *(v168 + 72);
      v64 = *v170 + v63 * v62;
      v65 = v154;
      sub_257DEED6C(v64, v154);
      v66 = a3 + v63 * v61;
      v159 = v61;
      v67 = v155;
      sub_257DEED6C(v66, v155);
      v68 = v8;
      v69 = *(v8 + 40);
      v70 = *(v65 + v69 + 4) ? 3.4028e38 : *(v65 + v69);
      v71 = v67 + v69;
      v72 = *(v71 + 4) ? 3.4028e38 : *v71;
      sub_257DEEDD0(v67);
      sub_257DEEDD0(v65);
      v73 = v159 + 2;
      v169 = v63;
      v74 = a3 + v63 * (v159 + 2);
      while (v171 != v73)
      {
        a3 = v70 < v72;
        v75 = v166;
        sub_257DEED6C(v74, v166);
        v76 = v167;
        sub_257DEED6C(v64, v167);
        v77 = *(v68 + 40);
        if (*(v75 + v77 + 4))
        {
          v78 = 3.4028e38;
        }

        else
        {
          v78 = *(v75 + v77);
        }

        v79 = v76 + v77;
        if (*(v79 + 4))
        {
          v80 = 3.4028e38;
        }

        else
        {
          v80 = *v79;
        }

        sub_257DEEDD0(v76);
        sub_257DEEDD0(v75);
        ++v73;
        v74 += v169;
        v64 += v169;
        if (v70 < v72 == v78 >= v80)
        {
          v81 = v73 - 1;
          goto LABEL_23;
        }
      }

      v81 = v171;
LABEL_23:
      v8 = v68;
      v61 = v159;
      a4 = v157;
      if (v70 >= v72)
      {
        v5 = v156;
      }

      else
      {
        v5 = v156;
        if (v81 < v159)
        {
          goto LABEL_146;
        }

        if (v159 < v81)
        {
          v82 = v169 * (v81 - 1);
          v83 = v81;
          v84 = v81 * v169;
          v171 = v81;
          v85 = v159;
          v86 = v159 * v169;
          do
          {
            if (v85 != --v83)
            {
              a3 = *v170;
              if (!*v170)
              {
                goto LABEL_152;
              }

              sub_257DEFC48(a3 + v86, v161);
              if (v86 < v82 || a3 + v86 >= a3 + v84)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v86 != v82)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_257DEFC48(v161, a3 + v82);
            }

            ++v85;
            v82 -= v169;
            v84 -= v169;
            v86 += v169;
          }

          while (v85 < v83);
          v5 = v156;
          a4 = v157;
          v8 = v173;
          v61 = v159;
          v81 = v171;
        }
      }
    }

    v87 = v170[1];
    if (v81 < v87)
    {
      if (__OFSUB__(v81, v61))
      {
        goto LABEL_145;
      }

      if (v81 - v61 < a4)
      {
        if (__OFADD__(v61, a4))
        {
          goto LABEL_147;
        }

        if (v61 + a4 >= v87)
        {
          v88 = v170[1];
        }

        else
        {
          v88 = v61 + a4;
        }

        if (v88 < v61)
        {
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (v81 != v88)
        {
          break;
        }
      }
    }

    v89 = v81;
    if (v81 < v61)
    {
      goto LABEL_144;
    }

LABEL_48:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v60 = v162;
    }

    else
    {
      v60 = sub_257BFCB00(0, *(v162 + 2) + 1, 1, v162);
    }

    a3 = *(v60 + 2);
    v90 = *(v60 + 3);
    v91 = a3 + 1;
    if (a3 >= v90 >> 1)
    {
      v60 = sub_257BFCB00((v90 > 1), a3 + 1, 1, v60);
    }

    *(v60 + 2) = v91;
    v92 = &v60[16 * a3];
    *(v92 + 4) = v61;
    *(v92 + 5) = v89;
    a4 = *v158;
    if (!*v158)
    {
      goto LABEL_154;
    }

    v163 = v89;
    if (a3)
    {
      while (1)
      {
        v93 = v91 - 1;
        if (v91 >= 4)
        {
          break;
        }

        if (v91 == 3)
        {
          v94 = *(v60 + 4);
          v95 = *(v60 + 5);
          v104 = __OFSUB__(v95, v94);
          v96 = v95 - v94;
          v97 = v104;
LABEL_67:
          if (v97)
          {
            goto LABEL_133;
          }

          v110 = &v60[16 * v91];
          v112 = *v110;
          v111 = *(v110 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_136;
          }

          v116 = &v60[16 * v93 + 32];
          v118 = *v116;
          v117 = *(v116 + 1);
          v104 = __OFSUB__(v117, v118);
          v119 = v117 - v118;
          if (v104)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v114, v119))
          {
            goto LABEL_140;
          }

          if (v114 + v119 >= v96)
          {
            if (v96 < v119)
            {
              v93 = v91 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v120 = &v60[16 * v91];
        v122 = *v120;
        v121 = *(v120 + 1);
        v104 = __OFSUB__(v121, v122);
        v114 = v121 - v122;
        v115 = v104;
LABEL_81:
        if (v115)
        {
          goto LABEL_135;
        }

        v123 = &v60[16 * v93];
        v125 = *(v123 + 4);
        v124 = *(v123 + 5);
        v104 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v104)
        {
          goto LABEL_138;
        }

        if (v126 < v114)
        {
          goto LABEL_3;
        }

LABEL_88:
        a3 = v93 - 1;
        if (v93 - 1 >= v91)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v170)
        {
          goto LABEL_151;
        }

        v131 = v60;
        v132 = *&v60[16 * a3 + 32];
        v133 = *&v60[16 * v93 + 40];
        sub_257DED13C(*v170 + *(v168 + 72) * v132, *v170 + *(v168 + 72) * *&v60[16 * v93 + 32], *v170 + *(v168 + 72) * v133, a4);
        if (v5)
        {
          goto LABEL_127;
        }

        if (v133 < v132)
        {
          goto LABEL_129;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v134 = v131;
        }

        else
        {
          v134 = sub_257C66E20(v131);
        }

        v8 = v173;
        if (a3 >= *(v134 + 2))
        {
          goto LABEL_130;
        }

        v135 = &v134[16 * a3];
        *(v135 + 4) = v132;
        *(v135 + 5) = v133;
        v174 = v134;
        sub_257C66D94(v93);
        v60 = v174;
        v91 = *(v174 + 2);
        if (v91 <= 1)
        {
          goto LABEL_3;
        }
      }

      v98 = &v60[16 * v91 + 32];
      v99 = *(v98 - 64);
      v100 = *(v98 - 56);
      v104 = __OFSUB__(v100, v99);
      v101 = v100 - v99;
      if (v104)
      {
        goto LABEL_131;
      }

      v103 = *(v98 - 48);
      v102 = *(v98 - 40);
      v104 = __OFSUB__(v102, v103);
      v96 = v102 - v103;
      v97 = v104;
      if (v104)
      {
        goto LABEL_132;
      }

      v105 = &v60[16 * v91];
      v107 = *v105;
      v106 = *(v105 + 1);
      v104 = __OFSUB__(v106, v107);
      v108 = v106 - v107;
      if (v104)
      {
        goto LABEL_134;
      }

      v104 = __OFADD__(v96, v108);
      v109 = v96 + v108;
      if (v104)
      {
        goto LABEL_137;
      }

      if (v109 >= v101)
      {
        v127 = &v60[16 * v93 + 32];
        v129 = *v127;
        v128 = *(v127 + 1);
        v104 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v104)
        {
          goto LABEL_141;
        }

        if (v96 < v130)
        {
          v93 = v91 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

LABEL_3:
    v58 = v170[1];
    v59 = v163;
    a4 = v157;
    if (v163 >= v58)
    {
      goto LABEL_116;
    }
  }

  v156 = v5;
  a3 = *v170;
  v136 = *(v168 + 72);
  v137 = *v170 + v136 * (v81 - 1);
  v138 = v61;
  v139 = -v136;
  v159 = v138;
  v160 = v136;
  v140 = v138 - v81;
  a4 = a3 + v81 * v136;
  v163 = v88;
LABEL_100:
  v171 = v81;
  v164 = a4;
  v165 = v140;
  v169 = v137;
  v141 = v173;
  while (1)
  {
    sub_257DEED6C(a4, v33);
    sub_257DEED6C(v137, v26);
    v142 = *(v141 + 40);
    if (v33[v142 + 4])
    {
      v143 = 3.4028e38;
    }

    else
    {
      v143 = *&v33[v142];
    }

    v144 = &v26[v142];
    if (v144[4])
    {
      v145 = 3.4028e38;
    }

    else
    {
      v145 = *v144;
    }

    sub_257DEEDD0(v26);
    sub_257DEEDD0(v33);
    if (v143 >= v145)
    {
LABEL_99:
      v81 = v171 + 1;
      v137 = v169 + v160;
      v140 = v165 - 1;
      a4 = v164 + v160;
      v89 = v163;
      if (v171 + 1 != v163)
      {
        goto LABEL_100;
      }

      v5 = v156;
      v8 = v173;
      v61 = v159;
      if (v163 < v159)
      {
        goto LABEL_144;
      }

      goto LABEL_48;
    }

    if (!a3)
    {
      break;
    }

    v146 = v172;
    sub_257DEFC48(a4, v172);
    v141 = v173;
    swift_arrayInitWithTakeFrontToBack();
    sub_257DEFC48(v146, v137);
    v137 += v139;
    a4 += v139;
    if (__CFADD__(v140++, 1))
    {
      goto LABEL_99;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_257DECF48(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

void sub_257DED13C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = type metadata accessor for DetectedDoor(0);
  MEMORY[0x28223BE20](v66, v8, v9, v10, v11);
  v65 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v64 = &v59 - v18;
  MEMORY[0x28223BE20](v19, v20, v21, v22, v23);
  v25 = &v59 - v24;
  MEMORY[0x28223BE20](v26, v27, v28, v29, v30);
  v32 = &v59 - v31;
  v34 = *(v33 + 72);
  if (!v34)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v34 == -1)
  {
    goto LABEL_71;
  }

  v35 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v34 == -1)
  {
    goto LABEL_72;
  }

  v36 = (a2 - a1) / v34;
  v68 = a4;
  v69 = a1;
  if (v36 >= v35 / v34)
  {
    v38 = v35 / v34 * v34;
    if (a4 < a2 || a2 + v38 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v38;
    if (v38 >= 1)
    {
      v46 = -v34;
      v47 = a4 + v38;
      v63 = v46;
      while (2)
      {
        while (1)
        {
          v60 = v45;
          v48 = a2 + v46;
          v62 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v69 = a2;
              v67 = v60;
              goto LABEL_69;
            }

            v49 = a3;
            v61 = v45;
            v51 = v63;
            v50 = v64;
            v52 = v47 + v63;
            sub_257DEED6C(v47 + v63, v64);
            a2 = v48;
            v53 = v48;
            v54 = v65;
            sub_257DEED6C(v53, v65);
            v55 = *(v66 + 40);
            v56 = *(v50 + v55 + 4) ? 3.4028e38 : *(v50 + v55);
            v57 = v54 + v55;
            v58 = *(v57 + 4) ? 3.4028e38 : *v57;
            a3 = v49 + v51;
            sub_257DEEDD0(v54);
            sub_257DEEDD0(v50);
            if (v56 < v58)
            {
              break;
            }

            v45 = v52;
            if (v49 < v47 || a3 >= v47)
            {
              swift_arrayInitWithTakeFrontToBack();
              v48 = a2;
            }

            else
            {
              v48 = a2;
              if (v49 != v47)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v47 = v52;
            a2 = v62;
            if (v52 <= a4)
            {
              goto LABEL_67;
            }
          }

          if (v49 < v62 || a3 >= v62)
          {
            break;
          }

          v45 = v61;
          v46 = v63;
          if (v49 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v47 <= a4)
          {
            goto LABEL_67;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v45 = v61;
        v46 = v63;
        if (v47 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_67:
    v69 = a2;
    v67 = v45;
  }

  else
  {
    v37 = v36 * v34;
    if (a4 < a1 || a1 + v37 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v37;
    v67 = a4 + v37;
    if (v37 >= 1 && a2 < a3)
    {
      do
      {
        sub_257DEED6C(a2, v32);
        sub_257DEED6C(a4, v25);
        v41 = *(v66 + 40);
        if (v32[v41 + 4])
        {
          v42 = 3.4028e38;
        }

        else
        {
          v42 = *&v32[v41];
        }

        v43 = &v25[v41];
        if (v43[4])
        {
          v44 = 3.4028e38;
        }

        else
        {
          v44 = *v43;
        }

        sub_257DEEDD0(v25);
        sub_257DEEDD0(v32);
        if (v42 >= v44)
        {
          if (a1 < a4 || a1 >= a4 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v68 = a4 + v34;
          a4 += v34;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v34;
        }

        a1 += v34;
        v69 = a1;
      }

      while (a4 < v39 && a2 < a3);
    }
  }

LABEL_69:
  sub_257C761B4(&v69, &v68, &v67);
}

uint64_t _s16MagnifierSupport12DetectedDoorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedDoor(0);
  if (!CGRectEqualToRect(*(a1 + v4[5]), *(a2 + v4[5])) || !CGRectEqualToRect(*(a1 + v4[6]), *(a2 + v4[6])))
  {
    goto LABEL_26;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 != *v8 || v7 != v8[1])
  {
    goto LABEL_26;
  }

  v10 = v4[8];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    goto LABEL_26;
  }

  v15 = v4[10];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_26;
    }
  }

  v20 = a1 + v4[11];
  v21 = *(v20 + 80);
  v67[4] = *(v20 + 64);
  v68 = v21;
  v69 = *(v20 + 96);
  v22 = *(v20 + 48);
  v67[2] = *(v20 + 32);
  v67[3] = v22;
  v23 = *(v20 + 16);
  v67[0] = *v20;
  v67[1] = v23;
  v24 = a2 + v4[11];
  v25 = *(v24 + 80);
  v70[4] = *(v24 + 64);
  v70[5] = v25;
  v71 = *(v24 + 96);
  v26 = *(v24 + 48);
  v70[2] = *(v24 + 32);
  v70[3] = v26;
  v27 = *(v24 + 16);
  v70[0] = *v24;
  v70[1] = v27;
  v28 = *&v67[0];
  v29 = *(&v68 + 1);
  if (*&v67[0])
  {
    if (*&v70[0])
    {
      v45 = *&v70[0];
      v30 = *(v24 + 88);
      v31 = *(v24 + 56);
      v48 = *(v24 + 40);
      v49 = v31;
      v50 = *(v24 + 72);
      v51 = v30;
      v32 = *(v24 + 24);
      v46 = *(v24 + 8);
      v47 = v32;
      v33 = v30;
      v44 = v69;
      sub_257BE401C(v67, &v52, &qword_27F8F8B60, &unk_257EE73C0);
      sub_257BE401C(v70, &v52, &qword_27F8F8B60, &unk_257EE73C0);
      sub_257D77B94(v29, v33);
      LOBYTE(v33) = v34;
      sub_257BE4084(&v45, &qword_27F8F8B60, &unk_257EE73C0);
      v52 = v28;
      v54 = *(v20 + 24);
      v55 = *(v20 + 40);
      v56 = *(v20 + 56);
      v57 = *(v20 + 72);
      v53 = *(v20 + 8);
      v58 = v29;
      v59 = v44;
      sub_257BE4084(&v52, &qword_27F8F8B60, &unk_257EE73C0);
      if ((v33 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

LABEL_25:
    v52 = *&v67[0];
    v54 = *(v20 + 24);
    v55 = *(v20 + 40);
    v56 = *(v20 + 56);
    v57 = *(v20 + 72);
    v53 = *(v20 + 8);
    v58 = *(&v68 + 1);
    v59 = v69;
    v60 = *&v70[0];
    v35 = *(v24 + 24);
    v61 = *(v24 + 8);
    v62 = v35;
    v36 = *(v24 + 40);
    v37 = *(v24 + 56);
    v38 = *(v24 + 88);
    v65 = *(v24 + 72);
    v66 = v38;
    v63 = v36;
    v64 = v37;
    sub_257BE401C(v67, &v45, &qword_27F8F8B60, &unk_257EE73C0);
    sub_257BE401C(v70, &v45, &qword_27F8F8B60, &unk_257EE73C0);
    sub_257BE4084(&v52, &qword_27F8F9968, &qword_257EEA998);
    goto LABEL_26;
  }

  if (*&v70[0])
  {
    goto LABEL_25;
  }

  v52 = 0;
  v54 = *(v20 + 24);
  v55 = *(v20 + 40);
  v56 = *(v20 + 56);
  v57 = *(v20 + 72);
  v53 = *(v20 + 8);
  v58 = *(&v68 + 1);
  v59 = v69;
  sub_257BE401C(v67, &v45, &qword_27F8F8B60, &unk_257EE73C0);
  sub_257BE401C(v70, &v45, &qword_27F8F8B60, &unk_257EE73C0);
  sub_257BE4084(&v52, &qword_27F8F8B60, &unk_257EE73C0);
LABEL_29:
  v41 = v4[12];
  v42 = *(a1 + v41);
  v43 = *(a2 + v41);
  if (v42)
  {
    if (v43)
    {

      v39 = sub_257D564BC(v42, v43);

      return v39 & 1;
    }
  }

  else if (!v43)
  {
    v39 = 1;
    return v39 & 1;
  }

LABEL_26:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_257DEDA74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_257DEDB2C(uint64_t a1)
{
  sub_257ECCCF0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v3 <= 0x3F)
      {
        sub_257DEDC6C(319, &qword_27F8F9928, MEMORY[0x277D83A90]);
        if (v4 <= 0x3F)
        {
          sub_257DEDC6C(319, &qword_27F8F9930, &type metadata for DoorAttributeModelPrediction);
          if (v5 <= 0x3F)
          {
            sub_257DEDE14(319, &qword_27F8F9938, &qword_27F8F9940, &qword_257EEA860, MEMORY[0x277D83D88]);
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

void sub_257DEDC6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_257ED00C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_257DEDD24(uint64_t a1)
{
  sub_257BFEB74(319);
  if (v1 <= 0x3F)
  {
    sub_257DEDE14(319, &qword_27F8F9958, &qword_27F8F6E08, &qword_257EDF418, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_257ECCC80();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGRect(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_257DEDE14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
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

uint64_t sub_257DEDE9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
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

uint64_t sub_257DEDEF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_257DEDF6C(uint64_t a1)
{
  result = sub_257DEDF94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_257DEDF94()
{
  result = qword_27F8F9960;
  if (!qword_27F8F9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9960);
  }

  return result;
}

uint64_t sub_257DEDFE8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 49) != *(a2 + 49))
  {
    goto LABEL_2;
  }

  v2 = *a2;
  if (*a1)
  {
    if (!v2)
    {
      return v2 & 1;
    }

    v4 = a1;
    v5 = a2;
    v6 = sub_257D55200(*a1, *a2);
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  else if (v2)
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 50);
  v9 = *(a2 + 50);
  if (v8 == 4)
  {
    if (v9 == 4)
    {
      goto LABEL_13;
    }
  }

  else if (v8 == v9)
  {
LABEL_13:
    v10 = a1;
    v11 = a2;
    if (CGRectEqualToRect(*(a1 + 8), *(a2 + 8)) && *(v10 + 56) == *(v11 + 56) && *(v10 + 40) == *(v11 + 40))
    {
      LOBYTE(v2) = *(v10 + 48) ^ *(v11 + 48) ^ 1;
      return v2 & 1;
    }
  }

LABEL_2:
  LOBYTE(v2) = 0;
  return v2 & 1;
}

uint64_t sub_257DEE0D0(__CVBuffer *a1, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetHeight(a1);
  if (result < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = result;
  if (result)
  {
    v7 = sub_257ECF850();
    *(v7 + 16) = v6;
    memset((v7 + 32), 255, 8 * v6);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_257DEE30C(v7, Width, &unk_27F8F4D80, &qword_257EDD430);

  if (CVPixelBufferGetPixelFormatType(a2) != 1278226534)
  {
    return v8;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (!BaseAddressOfPlane)
  {
    return v8;
  }

  v10 = BaseAddressOfPlane;
  pixelBuffer = a1;
  CVPixelBufferLockBaseAddress(a2, 0);
  v20 = a2;
  result = CVPixelBufferGetBaseAddress(a2);
  if (!v6)
  {
LABEL_26:
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    CVPixelBufferUnlockBaseAddress(v20, 1uLL);
    return v8;
  }

  v21 = v6;
  if ((Width & 0x8000000000000000) == 0)
  {
    v11 = result;
    v12 = 0;
    while (!__OFADD__(v12, 1))
    {
      v22 = v12 + 1;
      if (Width)
      {
        v13 = v12 * Width;
        if ((v12 * Width) >> 64 != (v12 * Width) >> 63)
        {
          goto LABEL_32;
        }

        v14 = 0;
        while (1)
        {
          v15 = v13 + v14;
          if (__OFADD__(v13, v14))
          {
            break;
          }

          if (*(v11 + 4 * v15) >= 0.5)
          {
            v16 = v10[v15];
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_257C7DE60(v8);
              v8 = result;
            }

            if (v14 >= v8[2])
            {
              goto LABEL_29;
            }

            v17 = &v8[v14];
            v18 = v17[4];
            result = swift_isUniquelyReferenced_nonNull_native();
            v17[4] = v18;
            if ((result & 1) == 0)
            {
              result = sub_257C7DE4C(v18);
              v18 = result;
              v17[4] = result;
            }

            if (v12 >= *(v18 + 16))
            {
              goto LABEL_30;
            }

            *(v18 + 8 * v12 + 32) = v16;
          }

          if (Width == ++v14)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        break;
      }

LABEL_10:
      ++v12;
      if (v22 == v21)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_257DEE30C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v6 = sub_257ECF850();
    v7 = v6;
    *(v6 + 16) = a2;
    *(v6 + 32) = v5;
    v8 = a2 - 1;
    if (v8)
    {
      v9 = (v6 + 40);
      do
      {
        *v9++ = v5;

        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_257DEE3A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F50, &unk_257EEA980);
  v39 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = (&v36 - v15);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = (&v36 - v22);
  v41 = *(a1 + 16);
  if (!v41)
  {
    return MEMORY[0x277D84F90];
  }

  v24 = 0;
  v25 = *(type metadata accessor for DetectedDoor(0) - 8);
  v40 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v26 = *(v25 + 72);
  v27 = MEMORY[0x277D84F90];
  v37 = v4;
  v38 = a2;
  do
  {
    v30 = v40 + v26 * v24;
    *v16 = v24++;
    sub_257DEED6C(v30, v16 + *(v4 + 48));
    sub_257C0DD14(v16, v23, &qword_27F8F5F50, &unk_257EEA980);
    v31 = *(*a2 + 16);
    v32 = (*a2 + 32);
    while (v31)
    {
      v33 = *v32++;
      --v31;
      if (v33 == *v23)
      {
        sub_257BE4084(v23, &qword_27F8F5F50, &unk_257EEA980);
        goto LABEL_6;
      }
    }

    sub_257C0DD14(v23, v42, &qword_27F8F5F50, &unk_257EEA980);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_257BF27E4(0, *(v27 + 16) + 1, 1);
      v27 = v43;
    }

    v29 = *(v27 + 16);
    v28 = *(v27 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_257BF27E4((v28 > 1), v29 + 1, 1);
      v27 = v43;
    }

    *(v27 + 16) = v29 + 1;
    sub_257C0DD14(v42, v27 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29, &qword_27F8F5F50, &unk_257EEA980);
    v4 = v37;
    a2 = v38;
LABEL_6:
    ;
  }

  while (v24 != v41);
  return v27;
}

void sub_257DEE670(uint64_t a1)
{
  v106 = type metadata accessor for DetectedDoor(0);
  v109 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v2, v3, v4, v5);
  v99 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = &v98 - v12;
  MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
  v110 = &v98 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F50, &unk_257EEA980);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22, v23, v24, v25);
  v100 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  v108 = (&v98 - v32);
  v33 = &qword_27F8F5F40;
  v34 = &qword_257EDC140;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F40, &qword_257EDC140);
  MEMORY[0x28223BE20](v35 - 8, v36, v37, v38, v39);
  v41 = &v98 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
  v48 = (&v98 - v47);
  MEMORY[0x28223BE20](v49, v50, v51, v52, v53);
  v103 = &v98 - v54;
  MEMORY[0x28223BE20](v55, v56, v57, v58, v59);
  v102 = (&v98 - v60);
  v61 = MEMORY[0x277D84F90];
  v117 = MEMORY[0x277D84F90];
  v62 = *(a1 + 16);
  v98 = v21;
  v114 = (v21 + 48);
  v115 = (v21 + 56);
  v107 = a1;

  v63 = 0;
  v104 = v61;
LABEL_3:
  if (v63 == v62)
  {
    v64 = 1;
    v105 = v62;
    v65 = v103;
  }

  else
  {
    if (v63 >= v62)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v66 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
LABEL_35:
      __break(1u);
      return;
    }

    v67 = v108;
    v68 = v107 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v63;
    v69 = *(v20 + 48);
    *v108 = v63;
    sub_257DEED6C(v68, v67 + v69);
    v70 = v67;
    v65 = v103;
    sub_257C0DD14(v70, v103, &qword_27F8F5F50, &unk_257EEA980);
    v64 = 0;
    v105 = v66;
  }

  v113 = *v115;
  v113(v65, v64, 1, v20);
  v71 = v102;
  sub_257C0DD14(v65, v102, v33, v34);
  v112 = *v114;
  if (v112(v71, 1, v20) != 1)
  {
    v111 = *v71;
    sub_257DEFC48(v71 + *(v20 + 48), v110);
    v72 = 0;
    v73 = v62 == 0;
    if (!v62)
    {
LABEL_12:
      v74 = 1;
      v72 = v62;
      goto LABEL_16;
    }

    while (!v73)
    {
      if (__OFADD__(v72, 1))
      {
        goto LABEL_33;
      }

      v75 = v107 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v72;
      v76 = *(v20 + 48);
      v77 = v34;
      v78 = v33;
      v79 = v108;
      *v108 = v72;
      sub_257DEED6C(v75, v79 + v76);
      v80 = v79;
      v33 = v78;
      v34 = v77;
      sub_257C0DD14(v80, v41, &qword_27F8F5F50, &unk_257EEA980);
      v74 = 0;
      ++v72;
LABEL_16:
      v113(v41, v74, 1, v20);
      sub_257C0DD14(v41, v48, v33, v34);
      if (v112(v48, 1, v20) == 1)
      {
        sub_257DEEDD0(v110);
        v63 = v105;
        goto LABEL_3;
      }

      v81 = *v48;
      sub_257DEFC48(v48 + *(v20 + 48), v13);
      if (v111 == v81 || !CGRectContainsRect(*(v110 + *(v106 + 20)), *&v13[*(v106 + 20)]))
      {
        sub_257DEEDD0(v13);
        v73 = v72 >= v62;
        if (v72 == v62)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_257BFCF1C(0, *(v104 + 2) + 1, 1, v104);
        }

        v83 = *(v104 + 2);
        v82 = *(v104 + 3);
        v101 = v83 + 1;
        if (v83 >= v82 >> 1)
        {
          v104 = sub_257BFCF1C((v82 > 1), v83 + 1, 1, v104);
        }

        sub_257DEEDD0(v13);
        v84 = v104;
        *(v104 + 2) = v101;
        *&v84[8 * v83 + 32] = v81;
        v117 = v84;
        v73 = v72 >= v62;
        if (v72 == v62)
        {
          goto LABEL_12;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v86 = sub_257DEE3A0(v85, &v117);

  v87 = *(v86 + 16);
  if (v87)
  {
    v116 = MEMORY[0x277D84F90];
    sub_257BF27C4(0, v87, 0);
    v88 = v116;
    v89 = *(v98 + 80);
    v115 = v86;
    v90 = v86 + ((v89 + 32) & ~v89);
    v91 = *(v98 + 72);
    v92 = v99;
    do
    {
      v93 = v108;
      sub_257BE401C(v90, v108, &qword_27F8F5F50, &unk_257EEA980);
      v94 = v93;
      v95 = v100;
      sub_257C0DD14(v94, v100, &qword_27F8F5F50, &unk_257EEA980);
      sub_257DEFC48(v95 + *(v20 + 48), v92);
      v116 = v88;
      v97 = *(v88 + 16);
      v96 = *(v88 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_257BF27C4((v96 > 1), v97 + 1, 1);
        v88 = v116;
      }

      *(v88 + 16) = v97 + 1;
      sub_257DEFC48(v92, v88 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v97);
      v90 += v91;
      --v87;
    }

    while (v87);
  }
}

uint64_t sub_257DEED6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedDoor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257DEEDD0(uint64_t a1)
{
  v2 = type metadata accessor for DetectedDoor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_257DEEE2C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = [a1 blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
  sub_257BD2C2C(0, &qword_27F8F5FA8, 0x277CE2D70);
  v10 = sub_257ECF810();

  v11 = sub_257CCB040(v10);

  if (!v11)
  {
    return 0;
  }

  v85.origin.x = a2;
  v85.origin.y = a3;
  v85.size.width = a4;
  v85.size.height = a5;
  MidX = CGRectGetMidX(v85);
  v86.origin.x = a2;
  v86.origin.y = a3;
  v86.size.width = a4;
  v86.size.height = a5;
  MidY = CGRectGetMidY(v86);
  v87.origin.x = a2;
  v87.origin.y = a3;
  v87.size.width = a4;
  v87.size.height = a5;
  v79 = MidX - CGRectGetWidth(v87) * 0.5;
  v88.origin.x = a2;
  v88.origin.y = a3;
  v88.size.width = a4;
  v88.size.height = a5;
  v77 = MidX + CGRectGetWidth(v88) * 0.5;
  v89.origin.x = a2;
  v89.origin.y = a3;
  v89.size.width = a4;
  v89.size.height = a5;
  v14 = MidY - CGRectGetHeight(v89) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69F0, &qword_257EDB1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBE50;
  *(inited + 32) = MidX;
  *(inited + 40) = MidY;
  *(inited + 48) = v79;
  *(inited + 56) = MidY + 0.0;
  *(inited + 64) = v77;
  *(inited + 72) = MidY + 0.0;
  *(inited + 80) = MidX + 0.0;
  *(inited + 88) = v14;
  v16 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {
    v73 = v11;
    if (!i)
    {
      break;
    }

    v18 = 0;
    v78 = v11 & 0xC000000000000001;
    v76 = v11 + 32;
    v11 = &selRef_imageByApplyingSymbolConfiguration_;
    v80 = MEMORY[0x277D84F90];
    v75 = v16;
    v74 = i;
    while (1)
    {
      if (v78)
      {
        v19 = MEMORY[0x259C72E20](v18, v73);
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_54;
        }

        v19 = *(v76 + 8 * v18);
      }

      v20 = v19;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      v81 = MEMORY[0x277D84F90];

      sub_257BF2724(0, 4, 0);
      v22 = 0;
      v16 = v81;
      v23 = *(inited + 16);
      do
      {
        if (!v23)
        {
          __break(1u);
          goto LABEL_53;
        }

        v25 = *(inited + v22 + 32);
        v24 = *(inited + v22 + 40);
        [v20 boundingBox];
        x = v90.origin.x;
        y = v90.origin.y;
        width = v90.size.width;
        height = v90.size.height;
        v84.x = v25;
        v84.y = v24;
        v30 = 0.0;
        if (!CGRectContainsPoint(v90, v84))
        {
          v31 = x;
          v32 = y;
          v33 = v25;
          v34 = width;
          v35 = height;
          v36 = v31 + v34;
          if (v31 < v33)
          {
            v31 = v25;
          }

          if (v36 < v33)
          {
            v31 = v36;
          }

          v37 = v24;
          v38 = 1.0 - v32;
          v39 = v32 + v35;
          if (((1.0 - v32) - v35) < v37)
          {
            v32 = v24;
          }

          if (v38 < v37)
          {
            v32 = v39;
          }

          v30 = sqrtf(((v31 - v33) * (v31 - v33)) + ((v32 - v37) * (v32 - v37)));
        }

        v41 = *(v81 + 16);
        v40 = *(v81 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_257BF2724((v40 > 1), v41 + 1, 1);
        }

        *(v81 + 16) = v41 + 1;
        *(v81 + 32 + 8 * v41) = v30;
        --v23;
        v22 += 16;
      }

      while (v22 != 64);

      v42 = *(v81 + 16);
      if (v42)
      {
        v43 = *(v81 + 32);
        v44 = v42 - 1;
        if (v42 != 1)
        {
          v45 = (v81 + 40);
          do
          {
            v46 = *v45++;
            v47 = v46;
            if (v46 < v43)
            {
              v43 = v47;
            }

            --v44;
          }

          while (v44);
        }

        v48 = 0;
        while (*(v81 + 8 * v48 + 32) != v43)
        {
          if (v42 == ++v48)
          {

            goto LABEL_7;
          }
        }

        v49 = sub_257D11120();
        [v20 boundingBox];
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v57 = v56;
        [v20 confidence];
        v59 = v58;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v60 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages);
        swift_beginAccess();
        v82 = *v60;
        v61 = qword_2815447E0;

        if (v61 != -1)
        {
          v62 = swift_once();
        }

        MEMORY[0x28223BE20](v62, v63, v64, v65, v66);
        sub_257ECFD50();

        if (v48 >= 4)
        {
          LOBYTE(v48) = 4;
        }

        v67 = v80;
        v68 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_257BFD2F0(0, *(v80 + 2) + 1, 1, v80);
        }

        v80 = v67;
        v70 = *(v67 + 2);
        v69 = *(v67 + 3);
        if (v70 >= v69 >> 1)
        {
          v80 = sub_257BFD2F0((v69 > 1), v70 + 1, 1, v67);
        }

        *(v80 + 2) = v70 + 1;
        v71 = &v80[72 * v70];
        *(v71 + 4) = v68;
        *(v71 + 5) = v51;
        *(v71 + 6) = v53;
        *(v71 + 7) = v55;
        *(v71 + 8) = v57;
        *(v71 + 9) = v59;
        v71[80] = v83;
        v71[81] = 0;
        v71[82] = v48;
        *(v71 + 83) = v82;
        v71[87] = BYTE4(v82);
        *(v71 + 11) = v43;
        *(v71 + 12) = 0;
      }

      else
      {
      }

LABEL_7:
      v16 = v75;
      if (v18 == v74)
      {
        goto LABEL_51;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  v80 = MEMORY[0x277D84F90];
LABEL_51:

  swift_setDeallocating();
  return v80;
}

char *sub_257DEF500(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MidX = CGRectGetMidX(*&a2);
  v85.origin.x = a2;
  v85.origin.y = a3;
  v85.size.width = a4;
  v85.size.height = a5;
  MidY = CGRectGetMidY(v85);
  v86.origin.x = a2;
  v86.origin.y = a3;
  v86.size.width = a4;
  v86.size.height = a5;
  v79 = MidX - CGRectGetWidth(v86) * 0.5;
  v87.origin.x = a2;
  v87.origin.y = a3;
  v87.size.width = a4;
  v87.size.height = a5;
  v77 = MidX + CGRectGetWidth(v87) * 0.5;
  v88.origin.x = a2;
  v88.origin.y = a3;
  v88.size.width = a4;
  v88.size.height = a5;
  v12 = MidY - CGRectGetHeight(v88) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69F0, &qword_257EDB1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257EDBE50;
  *(inited + 32) = MidX;
  *(inited + 40) = MidY;
  *(inited + 48) = v79;
  *(inited + 56) = MidY + 0.0;
  *(inited + 64) = v77;
  *(inited + 72) = MidY + 0.0;
  *(inited + 80) = MidX + 0.0;
  *(inited + 88) = v12;
  if (a1)
  {
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_54;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
    {
      v72 = v14;
      v16 = 0;
      v80 = a1 & 0xC000000000000001;
      v71 = a1 + 32;
      v76 = MEMORY[0x277D84F90];
      v70 = a1;
      v78 = i;
      while (1)
      {
        if (v80)
        {
          v17 = MEMORY[0x259C72E20](v16, a1);
        }

        else
        {
          if (v16 >= *(v72 + 16))
          {
            goto LABEL_53;
          }

          v17 = *(v71 + 8 * v16);
        }

        v18 = v17;
        if (__OFADD__(v16++, 1))
        {
          break;
        }

        v81 = MEMORY[0x277D84F90];

        sub_257BF2724(0, 4, 0);
        v14 = 0;
        v20 = *(inited + 16);
        v21 = v18;
        v22 = &v18[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_box];
        do
        {
          if (!v20)
          {
            __break(1u);
            goto LABEL_52;
          }

          v24 = *(inited + v14 + 32);
          v23 = *(inited + v14 + 40);
          v25 = *v22;
          v26 = v22[1];
          v27 = v22[2];
          v28 = v22[3];
          v89.origin.x = *v22;
          v89.origin.y = v26;
          v89.size.width = v27;
          v89.size.height = v28;
          v84.x = v24;
          v84.y = v23;
          v29 = 0.0;
          if (!CGRectContainsPoint(v89, v84))
          {
            v30 = v25;
            v31 = v26;
            v32 = v24;
            v33 = v27;
            v34 = v28;
            v35 = v30 + v33;
            if (v30 < v32)
            {
              v30 = v24;
            }

            if (v35 < v32)
            {
              v30 = v35;
            }

            v36 = v23;
            v37 = 1.0 - v31;
            v38 = v31 + v34;
            if (((1.0 - v31) - v34) < v36)
            {
              v31 = v23;
            }

            if (v37 < v36)
            {
              v31 = v38;
            }

            v29 = sqrtf(((v30 - v32) * (v30 - v32)) + ((v31 - v36) * (v31 - v36)));
          }

          v40 = *(v81 + 16);
          v39 = *(v81 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_257BF2724((v39 > 1), v40 + 1, 1);
          }

          *(v81 + 16) = v40 + 1;
          *(v81 + 32 + 8 * v40) = v29;
          --v20;
          v14 += 16;
        }

        while (v14 != 64);

        v41 = *(v81 + 16);
        if (!v41)
        {
LABEL_5:

          if (v16 != v78)
          {
            continue;
          }

          goto LABEL_50;
        }

        v42 = *(v81 + 32);
        v43 = v41 - 1;
        if (v41 != 1)
        {
          v44 = (v81 + 40);
          do
          {
            v45 = *v44++;
            v46 = v45;
            if (v45 < v42)
            {
              v42 = v46;
            }

            --v43;
          }

          while (v43);
        }

        v47 = 0;
        while (*(v81 + 8 * v47 + 32) != v42)
        {
          if (v41 == ++v47)
          {
            goto LABEL_5;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5258, &qword_257ED9A98);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_257ED6D30;
        v49 = v21;
        v50 = *&v21[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_labelName + 8];
        v75 = *&v21[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_labelName];
        v51 = objc_opt_self();

        v52 = [v51 currentLanguageCode];
        v53 = sub_257ECF500();
        v55 = v54;

        *(v48 + 32) = v75;
        *(v48 + 40) = v50;
        *(v48 + 48) = v53;
        *(v48 + 56) = v55;
        v74 = *v22;
        v73 = *(v22 + 1);
        v56 = v49;
        v57 = *&v49[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_confidence];
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v58 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectLanguages);
        swift_beginAccess();
        v82 = *v58;
        v59 = qword_2815447E0;

        if (v59 != -1)
        {
          v60 = swift_once();
        }

        MEMORY[0x28223BE20](v60, v61, v62, v63, v64);
        sub_257ECFD50();

        v14 = v83;
        if (v47 >= 4)
        {
          v65 = 4;
        }

        else
        {
          v65 = v47;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_257BFD2F0(0, *(v76 + 2) + 1, 1, v76);
        }

        a1 = v70;
        v67 = *(v76 + 2);
        v66 = *(v76 + 3);
        if (v67 >= v66 >> 1)
        {
          v76 = sub_257BFD2F0((v66 > 1), v67 + 1, 1, v76);
        }

        *(v76 + 2) = v67 + 1;
        v68 = &v76[72 * v67];
        *(v68 + 4) = v48;
        *(v68 + 40) = v74;
        *(v68 + 56) = v73;
        *(v68 + 9) = v57;
        v68[80] = v83;
        v68[81] = 1;
        v68[82] = v65;
        *(v68 + 83) = v82;
        v68[87] = BYTE4(v82);
        *(v68 + 11) = 0;
        *(v68 + 12) = 0;
        if (v16 == v78)
        {
LABEL_50:
          swift_setDeallocating();
          return v76;
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      ;
    }

    swift_setDeallocating();
    return MEMORY[0x277D84F90];
  }

  else
  {
    swift_setDeallocating();
    return 0;
  }
}

uint64_t sub_257DEFC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectedDoor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257DEFD20()
{
  result = qword_27F8F9980;
  if (!qword_27F8F9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9980);
  }

  return result;
}

unint64_t sub_257DEFDA8()
{
  result = qword_27F8F9998;
  if (!qword_27F8F9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9998);
  }

  return result;
}

uint64_t type metadata accessor for MFReaderLoadingViewHostingController(uint64_t a1)
{
  result = qword_27F8F99A0;
  if (!qword_27F8F99A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257DEFE88()
{
  v1[45] = v0;
  v2 = sub_257ECD900();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v3 = sub_257ECF120();
  v1[50] = v3;
  v1[51] = *(v3 - 8);
  v1[52] = swift_task_alloc();
  v4 = sub_257ECDA30();
  v1[53] = v4;
  v1[54] = *(v4 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  sub_257ECF900();
  v1[57] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v1[58] = v6;
  v1[59] = v5;

  return MEMORY[0x2822009F8](sub_257DF004C, v6, v5);
}

uint64_t sub_257DF004C()
{
  v30 = v0;
  v1 = *(v0 + 360);
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
  *(v0 + 480) = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
  if (*(v1 + v2) || (v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument), (*(v0 + 488) = v5) == 0))
  {

LABEL_3:

    v3 = *(v0 + 8);

    return v3();
  }

  v6 = v5;
  v7 = sub_257EB69B8();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    sub_257E1BA40();

    goto LABEL_3;
  }

  if (!AXDeviceSupportsAccessibilityReader())
  {

    type metadata accessor for MFReaderSpeechFormatterModel(0);
    v13 = swift_allocObject();
    sub_257C353E4(1, 0xD000000000000022, 0x8000000257EFA770, 0, 0, v13 + OBJC_IVAR____TtC16MagnifierSupport28MFReaderSpeechFormatterModel__playbackSpeed);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v29[0] = *(v0 + 241);
    v14 = objc_allocWithZone(type metadata accessor for MFReaderBlockManager(0));
    v15 = v6;
    v27 = sub_257CD4C68(v5, v29);
    v28 = v15;

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548350 + 184;
    swift_beginAccess();
    *(v0 + 242) = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 408);
    v18 = *(v0 + 416);
    v19 = *(v0 + 400);
    v26 = *(v0 + 360);
    sub_257ECF110();
    v20 = swift_task_alloc();
    *(v20 + 16) = v0 + 242;
    *(v20 + 24) = v16;
    sub_257ECFD40();

    (*(v17 + 8))(v18, v19);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 243) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    v21 = swift_allocObject();
    *(v21 + 16) = v26;
    v22 = objc_allocWithZone(type metadata accessor for MFReaderModeHostingController(0));
    v26;
    v23 = v27;
    sub_257ECC3F0();
    sub_257CCAC60(v23, sub_257DF2250, v21, (v0 + 80));
    v24 = sub_257ECE620();

    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 1;
    sub_257ECA76C(v24, v0 + 208, 0x3FD0000000000000, 1u);

    v25 = *(v1 + v2);
    *(v1 + v2) = v24;

    goto LABEL_3;
  }

  v11 = v6;
  v12 = swift_task_alloc();
  *(v0 + 496) = v12;
  *v12 = v0;
  v12[1] = sub_257DF0514;

  return sub_257DFCB40(v5);
}

uint64_t sub_257DF0514(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  *(*v1 + 247) = a1;

  v4 = *(v2 + 472);
  v5 = *(v2 + 464);

  return MEMORY[0x2822009F8](sub_257DF065C, v5, v4);
}

uint64_t sub_257DF065C()
{
  v1 = *(v0 + 247);

  if (v1 == 1)
  {
    v2 = (v0 + 246);
    sub_257ECD8C0();
    v3 = sub_257ECDA20();
    v4 = sub_257ECFBD0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_257BAC000, v3, v4, "Successfully opened Accessibility Reader from Magnifier", v5, 2u);
      MEMORY[0x259C74820](v5, -1, -1);
    }

    v6 = *(v0 + 448);
    v7 = *(v0 + 424);
    v8 = *(v0 + 432);

    (*(v8 + 8))(v6, v7);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v9 = qword_281548350 + 184;
    swift_beginAccess();
    *v2 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 488);
    v12 = *(v0 + 408);
    v11 = *(v0 + 416);
    v13 = *(v0 + 400);
    sub_257ECF110();
    v14 = swift_task_alloc();
    *(v14 + 16) = v2;
    *(v14 + 24) = v9;
    sub_257ECFD40();

    (*(v12 + 8))(v11, v13);
    swift_endAccess();
  }

  else
  {
    v49 = (v0 + 244);
    sub_257ECD8C0();
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBD0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_257BAC000, v15, v16, "Failed to open Accessibility Reader from Magnifier - Falling back to in-app mode.", v17, 2u);
      MEMORY[0x259C74820](v17, -1, -1);
    }

    v18 = *(v0 + 488);
    v20 = *(v0 + 432);
    v19 = *(v0 + 440);
    v21 = *(v0 + 424);
    v22 = *(v0 + 384);
    v23 = *(v0 + 392);
    v24 = *(v0 + 368);
    v25 = *(v0 + 376);

    (*(v20 + 8))(v19, v21);
    sub_257ECD930();
    swift_allocObject();
    sub_257ECD920();
    sub_257ECD910();

    (*(v25 + 16))(v22, v23, v24);
    v26 = objc_allocWithZone(sub_257ECD8F0());
    v27 = v18;
    v43 = sub_257ECD8E0();
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v48 = (v0 + 248);
    v28 = qword_281548350 + 184;
    swift_beginAccess();
    *v49 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 488);
    v47 = *(v0 + 480);
    v29 = *(v0 + 408);
    v30 = *(v0 + 416);
    v31 = *(v0 + 400);
    v32 = *(v0 + 376);
    v44 = *(v0 + 368);
    v45 = *(v0 + 392);
    v33 = *(v0 + 360);
    sub_257ECF110();
    v34 = swift_task_alloc();
    *(v34 + 16) = v49;
    *(v34 + 24) = v28;
    sub_257ECFD40();

    (*(v29 + 8))(v30, v31);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 245) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    v36 = objc_allocWithZone(type metadata accessor for MFReaderModeHostingController(0));
    v37 = v43;
    v33;
    sub_257ECC3F0();
    sub_257CCAAAC(v37, sub_257DF2258, v35, (v0 + 16));

    v38 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v38;
    v39 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v39;
    v40 = sub_257ECE620();

    *v48 = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 1;
    sub_257ECA76C(v40, v48, 0x3FD0000000000000, 1u);

    (*(v32 + 8))(v45, v44);
    v10 = *&v33[v47];
    *&v33[v47] = v40;
  }

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_257DF0C70()
{
  v1[9] = v0;
  v2 = sub_257ECDA30();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_257ECF120();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = sub_257ECF190();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  sub_257ECF900();
  v1[19] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v1[20] = v6;
  v1[21] = v5;

  return MEMORY[0x2822009F8](sub_257DF0E1C, v6, v5);
}

uint64_t sub_257DF0E1C()
{
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_257DF0EC0;

  return MAGFrameProviderService.currentFrame.getter();
}

uint64_t sub_257DF0EC0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_257DF122C;
  }

  else
  {
    v4[24] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_257DF0FE8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_257DF0FE8()
{
  v1 = v0[24];
  v2 = v0[18];
  v13 = v0[17];
  v14 = v0[16];
  v3 = v0[15];
  v12 = v0[14];
  v4 = v0[13];
  v5 = v0[9];

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v1;
  v0[6] = sub_257DF2230;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_257D231C0;
  v0[5] = &block_descriptor_54;
  v7 = _Block_copy(v0 + 2);
  v8 = v5;
  v11 = v1;
  sub_257ECF150();
  v0[8] = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480, &qword_257EDBFF0, MEMORY[0x277D83970]);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v2, v3, v7);
  _Block_release(v7);

  (*(v12 + 8))(v3, v4);
  (*(v13 + 8))(v2, v14);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257DF122C()
{
  v1 = v0[23];

  sub_257ECD400();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[23];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not handle Text Detection Request. Error : %@", v7, 0xCu);
    sub_257C11B14(v8);
    MEMORY[0x259C74820](v8, -1, -1);
    MEMORY[0x259C74820](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v11 = v0[1];

  return v11();
}

void sub_257DF13C4(uint64_t a1, uint64_t a2)
{
  sub_257CB7AE4(a2, 1);
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument) = v4;
  v5 = v4;

  sub_257DF1478();
}

void sub_257DF1478()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 getBlocks];
    if (v3)
    {
      v4 = v3;
      sub_257DF21E4();
      v5 = sub_257ECF810();

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      if (v5 >> 62)
      {
        sub_257ED0210();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
    }

    sub_257ECDD70();
  }
}

void sub_257DF1620(uint64_t a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v13) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController);
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_257BEE444;
    v18 = v6;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257D231C0;
    v16 = &block_descriptor_38;
    v7 = _Block_copy(&v13);
    v8 = v4;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v17 = sub_257BEE44C;
    v18 = v9;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257DFE438;
    v16 = &block_descriptor_44_0;
    v10 = _Block_copy(&v13);
    v11 = v8;

    [v5 animateWithDuration:0x20000 delay:v7 options:v10 animations:0.25 completion:0.0];
    _Block_release(v10);
    _Block_release(v7);

    v12 = *(a1 + v2);
    *(a1 + v2) = 0;
  }
}

void sub_257DF1870(uint64_t a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v13) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController);
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_257DA0018;
    v18 = v6;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257D231C0;
    v16 = &block_descriptor_51_0;
    v7 = _Block_copy(&v13);
    v8 = v4;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v17 = sub_257DA0038;
    v18 = v9;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257DFE438;
    v16 = &block_descriptor_58_0;
    v10 = _Block_copy(&v13);
    v11 = v8;

    [v5 animateWithDuration:0x20000 delay:v7 options:v10 animations:0.25 completion:0.0];
    _Block_release(v10);
    _Block_release(v7);

    v12 = *(a1 + v2);
    *(a1 + v2) = 0;
  }
}

uint64_t sub_257DF1AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99B0, &qword_257EEAC48);
  MEMORY[0x28223BE20](v2 - 8, v3, v4, v5, v6);
  v8 = (v41 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99B8, &qword_257EEAC50);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = v41 - v15;
  *v8 = sub_257ECF060();
  v8[1] = v17;
  v18 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99C0, &qword_257EEAC58) + 44);
  sub_257ECE030();
  v19 = sub_257ECEDC0();
  KeyPath = swift_getKeyPath();
  v21 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99C8, &qword_257EEAC90) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  LOBYTE(KeyPath) = sub_257ECE930();
  v22 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99D0, &qword_257EEAC98) + 36)];
  *v22 = KeyPath;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  v23 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99D8, &qword_257EEACA0) + 36)];
  sub_257ECF000();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99E0, &qword_257EEACA8);
  v25 = &v23[*(v24 + 52)];
  v26 = *(sub_257ECE2D0() + 20);
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_257ECE570();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #10.0 }

  *v25 = _Q0;
  *&v23[*(v24 + 56)] = 256;
  sub_257ECF060();
  sub_257ECE2F0();
  sub_257C0DD14(v8, v16, &qword_27F8F99B0, &qword_257EEAC48);
  v34 = &v16[*(v10 + 44)];
  v35 = v41[5];
  *(v34 + 4) = v41[4];
  *(v34 + 5) = v35;
  *(v34 + 6) = v41[6];
  v36 = v41[1];
  *v34 = v41[0];
  *(v34 + 1) = v36;
  v37 = v41[3];
  *(v34 + 2) = v41[2];
  *(v34 + 3) = v37;
  sub_257ECED90();
  v38 = sub_257ECEDA0();

  LOBYTE(v23) = sub_257ECE930();
  sub_257C0DD14(v16, a1, &qword_27F8F99B8, &qword_257EEAC50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F99E8, &qword_257EEACB0);
  v40 = a1 + *(result + 36);
  *v40 = v38;
  *(v40 + 8) = v23;
  return result;
}

uint64_t sub_257DF1E10@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  sub_257ECF500();
  sub_257BDAB08();
  result = sub_257ECEAF0();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

void sub_257DF1F98(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_257DF20F0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

double sub_257DF2170(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  return result;
}

unint64_t sub_257DF21E4()
{
  result = qword_27F8F5FA8;
  if (!qword_27F8F5FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F5FA8);
  }

  return result;
}

double block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  sub_257ECC3F0();
  return result;
}

unint64_t sub_257DF2260()
{
  result = qword_27F8F99F0;
  if (!qword_27F8F99F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F99E8, &qword_257EEACB0);
    sub_257DF2318();
    sub_257BD2D4C(&qword_27F8F6188, &qword_27F8F6190, &unk_257EDC790, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F99F0);
  }

  return result;
}

unint64_t sub_257DF2318()
{
  result = qword_27F8F99F8;
  if (!qword_27F8F99F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F99B8, &qword_257EEAC50);
    sub_257BD2D4C(&unk_27F8F9A00, &qword_27F8F99B0, &qword_257EEAC48, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F99F8);
  }

  return result;
}

id MagnifierExtensionViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id MagnifierExtensionViewController.init(rootViewController:)(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for MagnifierExtensionViewController();
  v3 = objc_msgSendSuper2(&v9, sel_initWithRootViewController_, a1);
  [v3 setNavigationBarHidden:1 animated:0];
  v4 = [v3 navigationBar];
  v5 = [objc_opt_self() systemYellowColor];
  [v4 setTintColor_];

  v6 = [v3 navigationBar];
  v7 = [objc_opt_self() visualEffectViewAllowingBlur_];
  [v6 _setBackgroundView_];

  [v3 setModalPresentationStyle_];
  return v3;
}

id MagnifierExtensionViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id MagnifierExtensionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MagnifierExtensionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MagnifierExtensionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_257DF2814(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A50, &qword_257EEAE30);
    v1 = sub_257ED0480();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;
  sub_257ECC3F0();

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v25 = *(*(a1 + 56) + v10);
    v12 = v25;
    sub_257BD2C2C(0, &qword_27F8F8FA0, 0x277D74300);
    v13 = v11;
    v14 = v12;
    swift_dynamicCast();
    sub_257BEBE08((v26 + 8), v24);
    sub_257BEBE08(v24, v26);
    sub_257ECF500();
    sub_257ED07B0();
    sub_257ECF5D0();
    v15 = sub_257ED0800();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v8 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v8) = v13;
    sub_257BEBE08(v26, (*(v1 + 56) + 32 * v8));
    ++*(v1 + 16);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_257DF2ACC(unsigned __int8 a1)
{
  if (a1 > 2u || a1 == 0)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v7 = sub_257ECF500();
  return v7;
}

uint64_t sub_257DF2BF0(unsigned __int8 a1)
{
  if (!a1)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  v1 = sub_257ECF500();
  return v1;
}

void sub_257DF2D44()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  [v1 setTitle_];
}

void sub_257DF2EE4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v20[0] = v5[11];
        v20[1] = v6;
        v20[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9, v10, v11, v12, v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
        sub_257ECFD50();

        if (*(v19[0] + 16))
        {
          v14 = sub_257C03F6C(v3, v2);
          v16 = v15;

          if (v16)
          {
            v17 = (*(v19[0] + 56) + 296 * v14);
            memcpy(v18, v17, sizeof(v18));
            memmove(v19, v17, 0x128uLL);
            CGSizeMake();
            sub_257C09C58(v18, v20);

            memcpy(v20, v19, sizeof(v20));
LABEL_16:
            memcpy(v19, (v4 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), v20, 0x128uLL);
            sub_257BE4084(v19, &unk_27F8F68B0, &unk_257EE22E0);
            return;
          }
        }

        else
        {
        }

        sub_257C10998(v20);
        goto LABEL_16;
      }
    }
  }
}

id sub_257DF31C0()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_tableView];
  [v2 setDataSource_];
  [v2 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = sub_257ECF4C0();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = result;
  sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  sub_257DF2EE4();
  v9 = *&v1[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_colorPickerController];
  [v9 setSupportsAlpha_];
  v10 = &v1[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity];
  memcpy(__dst, &v1[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity], sizeof(__dst));
  if (sub_257C108C4(__dst) != 1)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v10[27] green:v10[28] blue:v10[29] alpha:1.0];
    [v9 setSelectedColor_];
  }

  return [v9 setDelegate_];
}

id sub_257DF3484(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v6], __src, 0x128uLL);
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v11 = byte_286906070[v7 + 32];
    if (v11 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v25 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF29A4(0, *(v8 + 16) + 1, 1);
        v8 = v25;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257BF29A4((v9 > 1), v10 + 1, 1);
        v8 = v25;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v11;
    }

    ++v7;
  }

  while (v7 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_availablePointSpeakFeedbacks] = v8;
  v12 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_tableView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemYellowColor];
  [v15 setTintColor_];

  [v15 setClipsToBounds_];
  *&v4[v12] = v15;
  v17 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_colorPickerController;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  if (a2)
  {
    v18 = sub_257ECF4C0();
  }

  else
  {
    v18 = 0;
  }

  v24.receiver = v4;
  v24.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, v18, a3, a1);

  return v19;
}

id sub_257DF3780(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v2[v4], __src, 0x128uLL);
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v9 = byte_286906098[v5 + 32];
    if (v9 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v20 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF29A4(0, *(v6 + 16) + 1, 1);
        v6 = v20;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257BF29A4((v7 > 1), v8 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + v8 + 32) = v9;
    }

    ++v5;
  }

  while (v5 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_availablePointSpeakFeedbacks] = v6;
  v10 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_tableView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemYellowColor];
  [v13 setTintColor_];

  [v13 setClipsToBounds_];
  *&v2[v10] = v13;
  v15 = OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_colorPickerController;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);

  if (v16)
  {
  }

  return v16;
}

unint64_t sub_257DF3BEC(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCEA0();
  if (v4 <= 1)
  {
    if (!v4)
    {
      v6 = sub_257ECF4C0();
      v7 = sub_257ECCE30();
      v8 = [a1 dequeueReusableCellWithIdentifier:v6 forIndexPath:v7];

      sub_257DF2EE4();
      v9 = [v8 textLabel];
      if (v9)
      {
        v10 = v9;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v12 = [objc_opt_self() bundleForClass_];
        v13 = sub_257ECF4C0();
        v14 = sub_257ECF4C0();
        v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

        if (!v15)
        {
          sub_257ECF500();
          v15 = sub_257ECF4C0();
        }

        [v10 setText_];
      }

      v16 = [v8 textLabel];
      if (v16)
      {
        v17 = v16;
        [v16 setNumberOfLines_];
      }

      v18 = [v8 textLabel];
      if (v18)
      {
        v19 = v18;
        [v18 setLineBreakMode_];
      }

      v20 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      v21 = v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
      memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
      if (sub_257C108C4(__dst) == 1)
      {
      }

      else
      {
        [v20 setOn_];
        v79 = v20;
        [v79 setTag_];
        [v79 addTarget:v2 action:sel_togglePointSpeakSwitchChanged_ forControlEvents:4096];
        [v8 setAccessoryView_];
      }

      return v8;
    }

    if (v4 == 1)
    {
      v5 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    switch(v4)
    {
      case 4:
        v5 = 4;
        goto LABEL_22;
      case 3:
        v5 = 3;
        goto LABEL_22;
      case 2:
        v5 = 2;
        goto LABEL_22;
    }
  }

  v5 = 5;
LABEL_22:
  v22 = sub_257ECF4C0();
  v23 = sub_257ECCE30();
  v8 = [a1 dequeueReusableCellWithIdentifier:v22 forIndexPath:v23];

  sub_257DF2EE4();
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v63 = [v8 textLabel];
      if (v63)
      {
        v64 = v63;
        type metadata accessor for MAGUtilities();
        v65 = swift_getObjCClassFromMetadata();
        v66 = [objc_opt_self() bundleForClass_];
        v67 = sub_257ECF4C0();
        v68 = sub_257ECF4C0();
        v69 = [v66 localizedStringForKey:v67 value:0 table:v68];

        if (!v69)
        {
          sub_257ECF500();
          v69 = sub_257ECF4C0();
        }

        [v64 setText_];
      }

      v70 = [v8 textLabel];
      if (v70)
      {
        v71 = v70;
        [v70 setNumberOfLines_];
      }

      v72 = [v8 textLabel];
      if (v72)
      {
        v73 = v72;
        [v72 setLineBreakMode_];
      }

      v74 = v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
      memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
      if (sub_257C108C4(__dst) == 1)
      {
        return v8;
      }

      v75 = *(v74 + 241);
      v61 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      [v61 setOn_];
      v76 = sel_didToggleFlashlightSwitch_;
    }

    else
    {
      if (v5 != 4)
      {
        return v8;
      }

      if (sub_257ECCE60())
      {
        v24 = (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity);
        memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
        if (sub_257C108C4(__dst) != 1)
        {
          v142 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v24[27] green:v24[28] blue:v24[29] alpha:1.0];
          type metadata accessor for MAGUtilities();
          v25 = swift_getObjCClassFromMetadata();
          v139 = objc_opt_self();
          v26 = [v139 bundleForClass_];
          v27 = sub_257ECF4C0();
          v28 = sub_257ECF4C0();
          v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

          v30 = v29;
          v31 = v29;
          if (!v29)
          {
            sub_257ECF500();
            v31 = sub_257ECF4C0();

            sub_257ECF500();
            v30 = sub_257ECF4C0();
          }

          v32 = v29;
          v33 = [v8 textLabel];
          if (v33)
          {
            v34 = v33;
            [v33 setText_];
          }

          v35 = [v8 textLabel];
          if (v35)
          {
            v36 = v35;
            [v35 setNumberOfLines_];
          }

          v140 = v25;
          v37 = [v8 textLabel];
          if (v37)
          {
            v38 = v37;
            [v37 setLineBreakMode_];
          }

          [v8 setAccessoryType_];
          [v8 setShowsReorderControl_];
          v39 = objc_opt_self();
          v40 = *MEMORY[0x277D76918];
          v41 = [v39 preferredFontForTextStyle_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F82F0, &qword_257EE4000);
          v42 = swift_allocObject();
          v43 = MEMORY[0x277D740A8];
          *(v42 + 16) = xmmword_257ED6D30;
          v44 = *v43;
          *(v42 + 32) = v44;
          *(v42 + 40) = v41;
          v45 = v44;
          v138 = v41;
          v46 = sub_257BE8D30(v42);
          swift_setDeallocating();
          sub_257BE4084(v42 + 32, &unk_27F8F58D0, &qword_257EDAE80);
          swift_deallocClassInstance();
          sub_257DF2814(v46);

          _s3__C3KeyVMa_0(0);
          sub_257BFB0F4(&qword_27F8F8300, _s3__C3KeyVMa_0, &unk_257ED9A34);
          v47 = sub_257ECF3C0();

          [v30 sizeWithAttributes_];

          v48 = [v39 preferredFontForTextStyle_];
          [v48 lineHeight];
          v50 = v49;

          v51 = sub_257ECF4C0();
          v52 = objc_opt_self();
          v53 = [v52 systemImageNamed_];

          if (v53)
          {
            v54 = [v53 imageWithTintColor_];
          }

          else
          {
            v54 = 0;
          }

          v94 = sub_257ECF4C0();
          v95 = [v52 systemImageNamed_];

          v96 = 0.0;
          if (v95)
          {
            v97 = [objc_opt_self() systemGrayColor];
            v98 = [v95 imageWithTintColor_];

            v99 = [v39 preferredFontForTextStyle_];
            v100 = [objc_opt_self() configurationWithFont_];

            v101 = [v98 imageWithSymbolConfiguration_];
            if (v101)
            {
              [v101 size];
              v96 = v102;
            }
          }

          else
          {
            v101 = 0;
          }

          v103 = v140;
          v144.width = v50 + v96 + 5.0;
          v144.height = v50;
          UIGraphicsBeginImageContextWithOptions(v144, 0, 0.0);
          v104 = [objc_opt_self() sharedApplication];
          v105 = [v104 userInterfaceLayoutDirection];

          v141 = v101;
          if (!v105)
          {
            if (v54)
            {
              [v54 drawInRect_];
            }

            if (!v101)
            {
              goto LABEL_92;
            }

            v115 = v50 + 5.0;
            v113 = v101;
            [v113 size];
            v111 = (v50 - v116) * 0.5;
            [v113 size];
            v50 = v117;
            [v113 size];
            v119 = v118;
            goto LABEL_91;
          }

          if (v101)
          {
            v106 = v101;
            [v106 size];
            v108 = (v50 - v107) * 0.5;
            [v106 size];
            v110 = v109;
            [v106 size];
            v111 = 0.0;
            [v106 drawInRect_];

            if (v54)
            {
              v113 = v54;
              [v106 size];
              v115 = v114 + 5.0;
LABEL_90:
              v119 = v50;
LABEL_91:
              [v113 drawInRect_];
            }
          }

          else if (v54)
          {
            v113 = v54;
            v111 = 0.0;
            v115 = 5.0;
            goto LABEL_90;
          }

LABEL_92:
          v137 = v54;
          v120 = UIGraphicsGetImageFromCurrentImageContext();
          UIGraphicsEndImageContext();
          v121 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
          [v8 setAccessoryView_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
          v122 = swift_allocObject();
          *(v122 + 16) = xmmword_257ED9BD0;
          v123 = [v139 bundleForClass_];
          v124 = sub_257ECF4C0();
          v125 = sub_257ECF4C0();
          v126 = [v123 localizedStringForKey:v124 value:0 table:v125];

          v127 = sub_257ECF500();
          v129 = v128;

          v130 = MEMORY[0x277D837D0];
          *(v122 + 56) = MEMORY[0x277D837D0];
          v131 = sub_257BFB13C();
          *(v122 + 64) = v131;
          *(v122 + 32) = v127;
          *(v122 + 40) = v129;
          v132 = [v142 _accessibilityNameWithLuma];
          v133 = sub_257ECF500();
          v135 = v134;

          *(v122 + 96) = v130;
          *(v122 + 104) = v131;
          *(v122 + 72) = v133;
          *(v122 + 80) = v135;
          sub_257ECF540();
          v136 = sub_257ECF4C0();

          [v8 setAccessibilityLabel_];
        }

        return v8;
      }

      v80 = v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
      memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
      if (sub_257C108C4(__dst) == 1)
      {
        return v8;
      }

      v81 = *(v80 + 240);
      v82 = [v8 textLabel];
      if (v82)
      {
        v83 = v82;
        type metadata accessor for MAGUtilities();
        v84 = swift_getObjCClassFromMetadata();
        v85 = [objc_opt_self() bundleForClass_];
        v86 = sub_257ECF4C0();
        v87 = sub_257ECF4C0();
        v88 = [v85 localizedStringForKey:v86 value:0 table:v87];

        if (!v88)
        {
          sub_257ECF500();
          v88 = sub_257ECF4C0();
        }

        [v83 setText_];
      }

      v61 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      [v61 setOn_];
      v76 = sel_didToggleOutlineSwitch_;
    }

    [v61 addTarget:v2 action:v76 forControlEvents:4096];
    [v8 setAccessoryView_];
    goto LABEL_65;
  }

  if (v5 != 1)
  {
    v77 = sub_257ECCE60();
    if (v77)
    {
      if (v77 != 1)
      {
        return v8;
      }

      v78 = 1;
    }

    else
    {
      v78 = 0;
    }

    v89 = [v8 textLabel];
    if (v89)
    {
      v90 = v89;
      sub_257CED550(v78);
      v91 = sub_257ECF4C0();

      [v90 setText_];
    }

    v92 = (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity);
    memcpy(__dst, v92, 0x128uLL);
    if (sub_257C108C4(__dst) != 1 && v78 == v92[242])
    {
      v93 = 3;
    }

    else
    {
      v93 = 0;
    }

    [v8 setAccessoryType_];
    [v8 setAccessoryView_];
    return v8;
  }

  v55 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_availablePointSpeakFeedbacks);
  result = sub_257ECCE60();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v55 + 16))
  {
    v57 = *(v55 + result + 32);
    v58 = [v8 textLabel];
    if (v58)
    {
      v59 = v58;
      sub_257D238F4(v57);
      v60 = sub_257ECF4C0();

      [v59 setText_];
    }

    v61 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v62 = v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
    if (sub_257C108C4(__dst) == 1)
    {
      goto LABEL_66;
    }

    [v61 setOn_];
    v61 = v61;
    [v61 setTag_];
    [v61 addTarget:v2 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
    [v8 setAccessoryView_];

LABEL_65:
    [v8 setAccessoryType_];
LABEL_66:

    return v8;
  }

  __break(1u);
  return result;
}

double sub_257DF4F88(void *a1)
{
  v2 = v1;
  v4 = [a1 tag];
  if (v4 <= 3)
  {
    v6 = v4;
    v7 = v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
    if (sub_257C108C4(__dst) != 1)
    {
      v8 = v6;
      v9 = *(v7 + 192);

      if ([a1 isOn])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9A40, &qword_257EDB180);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED6D30;
        *(inited + 32) = v8;
        sub_257EB110C(inited);
        sub_257DF514C(v9);
      }

      else
      {
        v11 = *(v9 + 16);
        if (v11)
        {
          v12 = (v9 + 32);
          v13 = MEMORY[0x277D84F90];
          do
          {
            v17 = *v12++;
            v16 = v17;
            if (v17 != v8)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_257BF29A4(0, *(v13 + 16) + 1, 1);
              }

              v15 = *(v13 + 16);
              v14 = *(v13 + 24);
              if (v15 >= v14 >> 1)
              {
                sub_257BF29A4((v14 > 1), v15 + 1, 1);
              }

              *(v13 + 16) = v15 + 1;
              *(v13 + v15 + 32) = v16;
            }

            --v11;
          }

          while (v11);
        }

        else
        {
          v13 = MEMORY[0x277D84F90];
        }

        sub_257DF514C(v13);
      }
    }
  }

  return result;
}

double sub_257DF514C(uint64_t a1)
{
  sub_257DF2EE4();
  v7 = a1;

  sub_257D6D3A8(&v7);
  v3 = v7;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D7430C() & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  else
  {
    sub_257CE3CB8(v3, v4);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_257DF52C4(char *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = a3;
    v8 = a1;
    a4([v7 isOn]);
    swift_unknownObjectRelease();
  }
}

id sub_257DF53A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257DF5CA4(a4, a5);
  if (v5)
  {
    v6 = sub_257ECF4C0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_257DF54D4(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCDF0();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECCEB0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13, v14, v15, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257DF2EE4();
  v19 = sub_257ECCE30();
  v34 = [a1 cellForRowAtIndexPath_];

  if (!v34)
  {
    return;
  }

  v20 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v20 animated:1];

  v21 = sub_257ECCEA0();
  if (v21 <= 1)
  {
    goto LABEL_7;
  }

  if (v21 != 2)
  {
    if (v21 == 4 && sub_257ECCE60())
    {
      [v2 presentViewController:*&v2[OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_colorPickerController] animated:1 completion:0];
    }

LABEL_7:
    v22 = v34;

    return;
  }

  v23 = sub_257ECCE60();
  if (!v23)
  {
    v24 = 0;
LABEL_14:
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_257CE37D0(v24);
      swift_unknownObjectRelease();
    }

    goto LABEL_16;
  }

  if (v23 == 1)
  {
    v24 = 1;
    goto LABEL_14;
  }

LABEL_16:
  v25 = (v12 + 8);
  MEMORY[0x259C6F970](byte_2869060E0, 2);
  v26 = sub_257ECCE30();
  v27 = [a1 cellForRowAtIndexPath_];

  if (v27)
  {
    [v27 setAccessoryType_];
  }

  v28 = *v25;
  (*v25)(v18, v11);
  MEMORY[0x259C6F970](byte_2869060E1, 2);
  v29 = sub_257ECCE30();
  v30 = [a1 cellForRowAtIndexPath_];

  if (v30)
  {
    [v30 setAccessoryType_];
  }

  v28(v18, v11);
  [v34 setAccessoryType_];
  [a1 beginUpdates];
  v35 = &unk_2869060E8;
  sub_257BFB0F4(&qword_27F8F58A0, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80, &qword_257EDD430);
  sub_257C10934();
  sub_257ED0180();
  v31 = sub_257ECCDE0();
  (*(v33 + 8))(v10, v4);
  [a1 reloadSections:v31 withRowAnimation:100];

  [a1 endUpdates];
}

void sub_257DF5A3C(void *a1)
{
  v2 = v1;
  v3 = [a1 selectedColor];
  v4 = [v3 CGColor];

  v5 = sub_257ECFB30();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_286906110;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_10;
  }

  v7 = *(v6 + 2);
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 3)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = v6[4];
  v9 = v6[5];
  v10 = v6[6];

  sub_257CE3A34(v8, v9, v10);
  swift_unknownObjectRelease();
LABEL_10:
  sub_257DF2EE4();
  v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport45ActivityPointSpeakCustomizationViewController_tableView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
  sub_257ECCEB0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  MEMORY[0x259C6F990](1, 4);
  v12 = sub_257ECF7F0();

  [v11 reloadRowsAtIndexPaths:v12 withRowAnimation:5];
}

uint64_t sub_257DF5CA4(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

uint64_t sub_257DF5CD8(char *a1, unint64_t a2)
{
  v5 = sub_257ECDA30();
  v6 = *(v5 - 8);
  *&v11 = MEMORY[0x28223BE20](v5, v7, v8, v9, v10).n128_u64[0];
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v2 modalTransitionStyle];
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      if (v14 == 3)
      {
        v15 = 0xEB000000006C7275;
        v16 = 0x436C616974726170;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v15 = 0xED000065766C6F73;
    v16 = 0x73694473736F7263;
  }

  else
  {
    if (v14)
    {
      if (v14 == 1)
      {
        v15 = 0xEE006C61746E6F7ALL;
        v16 = 0x69726F4870696C66;
        goto LABEL_11;
      }

LABEL_8:
      v37 = 0x65756C6156776172;
      v38 = 0xE90000000000003DLL;
      v36 = [v2 modalTransitionStyle];
      v17 = sub_257ED0600();
      MEMORY[0x259C72150](v17);

      v16 = v37;
      v15 = v38;
      goto LABEL_11;
    }

    v15 = 0xED00006C61636974;
    v16 = 0x7265567265766F63;
  }

LABEL_11:
  v34 = v16;
  v18 = [v2 modalPresentationStyle];
  v35 = a1;
  if (v18 > 3)
  {
    if (v18 != 4)
    {
      if (v18 == 7)
      {
        v19 = 0xE700000000000000;
        v20 = 0x7265766F706F70;
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    v19 = 0xE600000000000000;
    v20 = 0x6D6F74737563;
  }

  else
  {
    if (v18)
    {
      if (v18 == 1)
      {
        v19 = 0xE900000000000074;
        v20 = 0x6565685365676170;
        goto LABEL_21;
      }

LABEL_18:
      v37 = 0x65756C6156776172;
      v38 = 0xE90000000000003DLL;
      v36 = [v2 modalPresentationStyle];
      v21 = sub_257ED0600();
      MEMORY[0x259C72150](v21);

      v20 = v37;
      v19 = v38;
      goto LABEL_21;
    }

    v19 = 0xEA00000000006E65;
    v20 = 0x657263536C6C7566;
  }

LABEL_21:
  sub_257ECD3D0();
  v22 = v2;

  v23 = sub_257ECDA20();
  v24 = sub_257ECFBD0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v33 = v5;
    v26 = v25;
    v32 = swift_slowAlloc();
    v37 = v32;
    *v26 = 136316674;
    *(v26 + 4) = sub_257BF1FC8(v35, a2, &v37);
    v35 = v13;
    *(v26 + 12) = 2080;
    v27 = sub_257BF1FC8(v34, v15, &v37);

    *(v26 + 14) = v27;
    *(v26 + 22) = 2080;
    v28 = sub_257BF1FC8(v20, v19, &v37);

    *(v26 + 24) = v28;
    *(v26 + 32) = 1024;
    *(v26 + 34) = [v22 isBeingPresented];

    *(v26 + 38) = 1024;
    *(v26 + 40) = [v22 isBeingDismissed];

    *(v26 + 44) = 1024;
    *(v26 + 46) = [v22 isMovingToParentViewController];

    *(v26 + 50) = 1024;
    *(v26 + 52) = [v22 isMovingFromParentViewController];

    _os_log_impl(&dword_257BAC000, v23, v24, "    * * * %s\n    transition:     %s\n    presentation:   %s\n    beingPresented: %{BOOL}d\tbeingDismissed:   %{BOOL}d\n    movingToParent: %{BOOL}d\tmovingFromParent: %{BOOL}d", v26, 0x38u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x259C74820](v29, -1, -1);
    MEMORY[0x259C74820](v26, -1, -1);

    return (*(v6 + 8))(v35, v33);
  }

  else
  {

    return (*(v6 + 8))(v13, v5);
  }
}

void sub_257DF61F8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = [v3 rootViewController];

      if (v4)
      {
        v10 = v4;
        v5 = [v10 presentedViewController];
        v6 = v10;
        if (v5)
        {
          v7 = v5;
          type metadata accessor for MFNavigationController();
          v8 = v7;
          v9 = v10;
          while (1)
          {
            v6 = v8;
            if (swift_dynamicCastClass())
            {
              break;
            }

            v8 = [v6 presentedViewController];
            v9 = v6;
            if (!v8)
            {
              goto LABEL_11;
            }
          }

          [v9 dismissViewControllerAnimated:1 completion:0];
        }

LABEL_11:
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_257DF6348()
{
  v1 = sub_257ECF120();
  v65 = *(v1 - 8);
  v66 = v1;
  MEMORY[0x28223BE20](v1, v2, v3, v4, v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10, &unk_257EDC4E0);
  MEMORY[0x28223BE20](v8 - 8, v9, v10, v11, v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16, v17, v18, v19);
  v21 = &v61 - v20;
  v22 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activitiesNameController];
  *&v22[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_createActivityDelegate + 8] = &off_286911DF8;
  swift_unknownObjectWeakAssign();
  v62 = v22;
  *&v22[OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_delegate + 8] = &off_286911E18;
  swift_unknownObjectWeakAssign();
  v23 = swift_allocObject();
  *(v23 + 16) = v0;
  v73 = 0xD000000000000017;
  v74 = 0x8000000257EFA680;
  v24 = v0;
  sub_257ECEE50();
  v64 = v67;
  v25 = v68;
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_257ECEE50();
  v63 = v67;
  v26 = v68;
  v27 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5FF0, &qword_257EDC4D8));
  *&v67 = sub_257C7E2D8;
  *(&v67 + 1) = v23;
  v68 = v64;
  v69 = v25;
  v70 = v63;
  v71 = v26;
  v72 = 40;
  v28 = sub_257ECE620();
  v29 = [objc_allocWithZone(type metadata accessor for MFNavigationController()) initWithRootViewController_];

  v30 = v29;
  [v30 setModalPresentationStyle_];
  v31 = [v30 navigationBar];
  v32 = objc_opt_self();
  v33 = [v32 systemYellowColor];
  [v31 setTintColor_];

  v34 = v24;
  v35 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton;
  if (!*&v34[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton])
  {
    *&v63 = v21;
    v36 = [objc_opt_self() boldButton];
    v37 = *&v34[v35];
    *&v64 = v34;
    *&v34[v35] = v36;
    v38 = v36;

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v40 = [objc_opt_self() bundleForClass_];
    v41 = sub_257ECF4C0();
    v42 = sub_257ECF4C0();
    v43 = [v40 localizedStringForKey:v41 value:0 table:v42];

    if (v43)
    {
      if (v38)
      {
LABEL_4:
        v44 = v14;
        [v38 setTitle:v43 forState:0];

        v45 = v63;
        sub_257ED0040();
        v46 = sub_257ED0030();
        if ((*(*(v46 - 8) + 48))(v45, 1, v46))
        {
          sub_257C3366C(v45, v44);
          sub_257ED0050();
          sub_257C336DC(v45);
        }

        else
        {
          v47 = [v32 blackColor];
          sub_257ED0000();
          sub_257ED0050();
        }

        v48 = v64;
        [v38 addTarget:v64 action:sel__dismissActivityCustomizationPaneWithText forControlEvents:64];
        v49 = [v32 systemYellowColor];
        [v38 setTintColor_];

        v50 = v38;
        v34 = v48;
        v43 = v50;
        v51 = [v62 buttonTray];
        [v51 addButton_];

        v52 = *&v34[v35];
        if (v52)
        {
          v53 = v52;
          [v53 setEnabled_];
        }

        goto LABEL_12;
      }
    }

    else
    {
      sub_257ECF500();
      v43 = sub_257ECF4C0();

      if (v38)
      {
        goto LABEL_4;
      }
    }

    v34 = v64;
LABEL_12:
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v54 = qword_281548350 + 136;
  swift_beginAccess();
  LOBYTE(v73) = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v55 = sub_257ECF110();
  MEMORY[0x28223BE20](v55, v56, v57, v58, v59);
  *(&v61 - 2) = &v73;
  *(&v61 - 1) = v54;
  sub_257ECFD40();
  (*(v65 + 8))(v7, v66);
  swift_endAccess();
  v60 = [v30 presentationController];

  if (v60)
  {
    [v60 setDelegate_];
  }

  [v34 presentViewController:v30 animated:1 completion:0];
}

void sub_257DF6A74(uint64_t a1, uint64_t a2)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  sub_257D665C4(a1, a2);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257ED6D30;
  v11 = [v5 bundleForClass_];
  v12 = sub_257ECF4C0();
  v13 = sub_257ECF4C0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  v15 = sub_257ECF500();
  v17 = v16;

  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_257BFB13C();
  *(v10 + 32) = v15;
  *(v10 + 40) = v17;
  sub_257ECF540();

  sub_257BDAB08();
  v18 = sub_257ED0100();
  v20 = v19;

  v21 = sub_257E003E8();
  v22 = sub_257E00504();
  sub_257DFD370(v18, v20, v21, v22);
}

id sub_257DF6D30()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activitiesNameController];
  v3 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField) resignFirstResponder];
  v4 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentQuickActivityName + 8];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentQuickActivityName];
    v6 = qword_281544FE0;

    if (v6 != -1)
    {
      swift_once();
    }

    sub_257D53434(v5, v4);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v5;
    v8[4] = v4;

    sub_257ECC3F0();
    sub_257D61CE8(v5, v4, 1, sub_257DF7AAC, v8);
  }

  v9 = *(v2 + v3);
  v10 = sub_257ECF4C0();
  [v9 setText_];

  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
  v11 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton];
  if (v11)
  {
    [v11 setEnabled_];
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_257DF6F30(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      sub_257E0EF78(1);
    }

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_257BDAB08();
      v8 = sub_257ED0100();
      v10 = v9;
      swift_beginAccess();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;
      v13 = sub_257E003E8();

      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v16 = sub_257E00504();
      }

      else
      {
        v16 = 0;
      }

      sub_257DFD370(v8, v10, v13, v16);
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

id sub_257DF7144()
{
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activitiesNameController];
  v2 = OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField;
  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTextField) resignFirstResponder];
  v3 = *(v1 + v2);
  v4 = sub_257ECF4C0();
  [v3 setText_];

  [*(v1 + OBJC_IVAR____TtC16MagnifierSupport32ActivityNameOnBoardingController_activityNameTakenLabel) setHidden_];
  v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton];
  if (v5)
  {
    [v5 setEnabled_];
  }

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

void sub_257DF727C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9, v10, v11, v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a2 == 0xD000000000000010 && 0x8000000257EFBEB0 == a3 || (sub_257ED0640() & 1) != 0)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v16 = [objc_opt_self() bundleForClass_];
      v17 = sub_257ECF4C0();
      v18 = sub_257ECF4C0();
      v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

      a2 = sub_257ECF500();
      a3 = v20;
    }

    else
    {
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      sub_257E0EF78(1);
    }

    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v41[0] = v7;
      v43 = a2;
      v44 = a3;
      sub_257BDAB08();
      v25 = sub_257ED0100();
      v27 = v26;
      swift_beginAccess();
      v28 = swift_unknownObjectWeakLoadStrong();
      if (!v28)
      {
        __break(1u);
        return;
      }

      v29 = v28;
      v30 = sub_257E003E8();

      swift_beginAccess();
      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31)
      {
        v32 = v31;
        v33 = sub_257E00504();
      }

      else
      {
        v33 = 0;
      }

      sub_257DFD370(v25, v27, v30, v33);

      v7 = v41[0];
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v43) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    v34 = qword_281548350 + 160;
    swift_beginAccess();
    v42 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v35 = sub_257ECF110();
    MEMORY[0x28223BE20](v35, v36, v37, v38, v39);
    v41[-2] = &v42;
    v41[-1] = v34;
    sub_257ECFD40();
    (*(v8 + 8))(v14, v7);
    swift_endAccess();
    v40 = sub_257ECF4C0();

    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

void sub_257DF7708(uint64_t a1)
{
  v1 = sub_257DFF3FC();
  sub_257C7C61C();

  sub_257E0EF78(1);
}

id sub_257DF774C()
{
  result = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

id sub_257DF7774()
{
  result = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

void sub_257DF779C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentQuickActivityName);
  *v5 = a1;
  v5[1] = a2;

  v6 = qword_281544FE0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_257D64370(a1, a2, 0, 0);
}

void sub_257DF7874()
{
  v1 = v0;
  type metadata accessor for EditControlsViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport26EditControlsViewController_delegate + 8] = &off_286912038;
  swift_unknownObjectWeakAssign();
  [v2 setOverrideUserInterfaceStyle_];
  v3 = [objc_allocWithZone(type metadata accessor for MFNavigationController()) initWithRootViewController_];
  [v3 setModalPresentationStyle_];
  v4 = [v3 navigationBar];
  v5 = [objc_opt_self() systemYellowColor];
  [v4 setTintColor_];

  [v3 setOverrideUserInterfaceStyle_];
  v6 = [v3 presentationController];

  if (v6)
  {
    [v6 setDelegate_];
  }

  [v1 presentViewController:v3 animated:1 completion:0];
  sub_257DB1748();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v7 == 1)
  {
    sub_257D3AA58();
  }
}

uint64_t MAGOUEventHandler.send(_:)(_OWORD *a1)
{
  *(v2 + 448) = v1;
  v4 = sub_257ECDA30();
  *(v2 + 456) = v4;
  *(v2 + 464) = *(v4 - 8);
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 480) = swift_task_alloc();
  v5 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v5;
  *(v2 + 80) = a1[4];
  *(v2 + 89) = *(a1 + 73);
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  sub_257ECF900();
  *(v2 + 488) = sub_257ECF8F0();
  v8 = sub_257ECF8B0();
  *(v2 + 496) = v8;
  *(v2 + 504) = v7;

  return MEMORY[0x2822009F8](sub_257DF7BF4, v8, v7);
}

uint64_t sub_257DF7BF4()
{
  v1 = *(v0 + 448);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 512) = v2;
  v3 = *(v2 + 32);
  *(v0 + 105) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 528) = v7;
    *(v0 + 520) = v6;
    v9 = *(v2 + 48);
    v10 = (v7 << 10) | (16 * __clz(__rbit64(v6)));
    v11 = *(v9 + v10);
    *(v0 + 536) = v11;
    v12 = *(v9 + v10 + 8);
    *(v0 + 544) = v12;
    v13 = (*(v2 + 56) + v10);
    v14 = *v13;
    *(v0 + 552) = v13[1];

    sub_257ECC3F0();
    sub_257ECD4A0();

    sub_257C58BFC(v0 + 16, v0 + 112);
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBD0();
    sub_257C58D88(v0 + 16);

    if (os_log_type_enabled(v15, v16))
    {
      v37 = v14;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 136315394;
      v19 = *(v0 + 104);
      *(v0 + 424) = 0x746E65766520554FLL;
      *(v0 + 432) = 0xE900000000000020;
      *(v0 + 440) = v18;
      v20 = 0xD00000000000001DLL;
      v21 = "rContactWithObject";
      if (v19 == 2)
      {
        v20 = 0xD000000000000022;
        v21 = "activity.updated";
      }

      if (v19 <= 1)
      {
        v22 = 0xD000000000000022;
      }

      else
      {
        v22 = v20;
      }

      if (v19 <= 1)
      {
        v23 = "activity.updated";
      }

      else
      {
        v23 = v21;
      }

      v24 = *(v0 + 464);
      v35 = *(v0 + 456);
      v36 = *(v0 + 480);
      MEMORY[0x259C72150](v22, v23 | 0x8000000000000000);

      v25 = sub_257BF1FC8(*(v0 + 424), *(v0 + 432), (v0 + 440));

      *(v17 + 4) = v25;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_257BF1FC8(v11, v12, (v0 + 440));
      _os_log_impl(&dword_257BAC000, v15, v16, "Dispatching %s to %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v18, -1, -1);
      MEMORY[0x259C74820](v17, -1, -1);

      v26 = *(v24 + 8);
      v26(v36, v35);
      v14 = v37;
    }

    else
    {
      v27 = *(v0 + 480);
      v29 = *(v0 + 456);
      v28 = *(v0 + 464);

      v26 = *(v28 + 8);
      v26(v27, v29);
    }

    *(v0 + 560) = v26;
    v30 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v30;
    *(v0 + 281) = *(v0 + 89);
    v31 = *(v0 + 80);
    *(v0 + 256) = *(v0 + 64);
    *(v0 + 272) = v31;
    *(v0 + 240) = *(v0 + 48);
    v38 = (v14 + *v14);
    v32 = swift_task_alloc();
    *(v0 + 568) = v32;
    *v32 = v0;
    v32[1] = sub_257DF8054;

    return v38();
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v34 = *(v0 + 8);

    return v34();
  }
}