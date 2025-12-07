unint64_t MAGAdvancedEvent.AdvancedEventType.description.getter()
{
  if (!*(v0 + 16))
  {
    return 0xD000000000000022;
  }

  if (*(v0 + 16) == 1)
  {
    return 0xD000000000000021;
  }

  if (*v0 == 0)
  {
    return 0xD00000000000001DLL;
  }

  return 0xD000000000000027;
}

unint64_t sub_257BE68CC()
{
  if (!*(v0 + 16))
  {
    return 0xD000000000000022;
  }

  if (*(v0 + 16) == 1)
  {
    return 0xD000000000000021;
  }

  if (*v0 == 0)
  {
    return 0xD00000000000001DLL;
  }

  return 0xD000000000000027;
}

uint64_t get_enum_tag_for_layout_string_16MagnifierSupport16MAGAdvancedEventV08AdvancedD4TypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_257BE698C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_257BE69D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_257BE6A18(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t MFReaderFormatterTheme.id.getter()
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

uint64_t sub_257BE6B24()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.878431373 green:0.847058824 blue:0.784313725 alpha:1.0];
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.901960784 green:0.901960784 blue:0.901960784 alpha:1.0];
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = [objc_opt_self() darkGrayColor];
    }

    else
    {
      if (v1 != 3)
      {
        return 0;
      }

      v2 = [objc_opt_self() blackColor];
    }

    v3 = v2;
  }

  return sub_257ECED30();
}

uint64_t sub_257BE6C10()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257BE6D7C()
{
  if (*v0 != 4)
  {
    return 0;
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  v6 = sub_257ECF500();
  return v6;
}

MagnifierSupport::MFReaderFormatterTheme_optional __swiftcall MFReaderFormatterTheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED04B0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MFReaderFormatterTheme.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574696877;
  v3 = 2036429415;
  v4 = 0x6B63616C62;
  if (v1 != 3)
  {
    v4 = 0x6D6F74737563;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6169706573;
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

unint64_t sub_257BE6F80()
{
  result = qword_27F8F5580;
  if (!qword_27F8F5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5580);
  }

  return result;
}

uint64_t sub_257BE6FD4()
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257BE70A0(uint64_t a1)
{
  sub_257ECF5D0();
}

uint64_t sub_257BE7158(uint64_t a1)
{
  sub_257ED07B0();
  sub_257ECF5D0();

  return sub_257ED0800();
}

void sub_257BE722C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6574696877;
  v5 = 0xE400000000000000;
  v6 = 2036429415;
  v7 = 0xE500000000000000;
  v8 = 0x6B63616C62;
  if (v2 != 3)
  {
    v8 = 0x6D6F74737563;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6169706573;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_257BE72B8()
{
  result = qword_27F8F5588;
  if (!qword_27F8F5588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5590, &qword_257EDA370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5588);
  }

  return result;
}

uint64_t sub_257BE7338@<X0>(uint64_t *a1@<X8>)
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

uint64_t getEnumTagSinglePayload for MFReaderFormatterTheme(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MFReaderFormatterTheme(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_257BE7614()
{
  result = qword_27F8F5598;
  if (!qword_27F8F5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5598);
  }

  return result;
}

id sub_257BE7668()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = objc_allocWithZone(MEMORY[0x277CE4A08]);
    swift_unownedRetain();
    v4 = [v3 initWithVersion_];
    [v4 setEnableObjectTracking_];
    [v4 setEnableSegmentation_];
    [v4 setNetworkResolution_];
    [v4 setRunningFrameRate_];
    swift_unownedRelease();
    v5 = *(v0 + 64);
    *(v0 + 64) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t ANSTPersonDetectionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  ANSTPersonDetectionManager.init()();
  return v0;
}

void *ANSTPersonDetectionManager.init()()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  MEMORY[0x28223BE20](v2, v3, v4, v5, v6);
  v0[2] = 0;
  v0[3] = sub_257BE89DC(MEMORY[0x277D84F90]);
  v0[7] = [objc_allocWithZone(MEMORY[0x277CE6AE0]) init];
  v0[8] = 0;
  v7 = objc_allocWithZone(MEMORY[0x277CE6AE8]);
  v8 = sub_257ECF4C0();
  v9 = [v7 initWithIdentifier_];

  v1[4] = v9;
  v10 = objc_allocWithZone(MEMORY[0x277CE6AC0]);
  v11 = sub_257ECF4C0();
  v12 = [v10 initWithIdentifier_];

  v1[5] = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CE6AB0]);
  v14 = sub_257ECF4C0();
  v15 = [v13 initWithIdentifier_];

  v1[6] = v15;
  [v1[4] addSourceNode_];
  [v1[4] addEvaluationNode_];
  [v1[7] setDetectFaceNames_];
  sub_257BE7A18();
  return v1;
}

void sub_257BE7A18()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = sub_257BE7668();
  v2 = [objc_allocWithZone(MEMORY[0x277CE4A00]) initWithConfiguration_];

  v3 = *(v0 + 16);
  *(v0 + 16) = v2;
  v4 = v2;

  if (v4)
  {
    v10[0] = 0;
    v5 = [v4 prepareWithError_];

    if (v5)
    {
      v6 = v10[0];
    }

    else
    {
      v7 = v10[0];
      v8 = sub_257ECC9F0();

      swift_willThrow();
      sub_257BEBEF0();
      swift_allocError();
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 12;
      *(v9 + 24) = 4;
      swift_willThrow();
    }
  }
}

void sub_257BE7B68(void *a1, __CVBuffer *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  v11 = v10;
  imageOut[1] = *MEMORY[0x277D85DE8];
  v22 = sub_257ECCB70();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24, v25, v26, v27);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_opt_self() valueWithCGRect_];
  [a1 setFace_];

  CVPixelBufferLockBaseAddress(a2, 1uLL);
  imageOut[0] = 0;
  VTCreateCGImageFromCVPixelBuffer(a2, 0, imageOut);
  if (imageOut[0])
  {
    v31 = imageOut[0];
    v48.origin.x = a3;
    v48.origin.y = a4;
    v48.size.width = a5;
    v48.size.height = a6;
    v32 = CGImageCreateWithImageInRect(v31, v48);
    if (v32)
    {
      v33 = v32;
      CVPixelBufferUnlockBaseAddress(a2, 1uLL);
      v45 = objc_autoreleasePoolPush();
      v34 = [objc_opt_self() systemPhotoLibraryURL];
      v44 = v22;
      v35 = v23;
      v36 = v34;
      sub_257ECCB20();

      v43 = *(v11 + 40);
      v37 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
      v38 = sub_257ECCAE0();
      v39 = *(v11 + 56);
      v40 = swift_allocObject();
      *(v40 + 16) = a1;
      aBlock[4] = sub_257BEAF5C;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257BE8054;
      aBlock[3] = &block_descriptor_3;
      v41 = _Block_copy(aBlock);
      v42 = a1;

      [v43 triggerWithImage:v37 photoLibraryURL:v38 options:v39 cacheKey:0 resultHandler:v41];
      _Block_release(v41);

      (*(v35 + 8))(v29, v44);
      objc_autoreleasePoolPop(v45);
    }
  }
}

void sub_257BE7EA4(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    return;
  }

  if (!a1)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v3 = a3;
  v4 = [a1 faceFeatures];
  sub_257BD2C2C(0, &qword_27F8F5730, 0x277CE6AF0);
  v5 = sub_257ECF810();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (!sub_257ED0210())
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x259C72E20](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = [v7 faceDetectionResult];

  if (v8)
  {
    v10 = [v8 name];

    v9 = v10;
    a3 = v3;
    if (!v10)
    {
      sub_257ECF500();
      v11 = sub_257ECF4C0();
LABEL_15:

      a3 = v3;
      v9 = v11;
    }
  }

  else
  {
    v9 = 0;
    a3 = v3;
  }

LABEL_16:
  v12 = v9;
  [a3 setFaceName_];
}

void sub_257BE8054(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_257ECC3F0();
  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id *ANSTPersonDetectionManager.deinit()
{

  return v0;
}

uint64_t ANSTPersonDetectionManager.__deallocating_deinit()
{
  ANSTPersonDetectionManager.deinit();

  return swift_deallocClassInstance();
}

void *sub_257BE816C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55A0, &qword_257EDA4E0);
  v3 = sub_257ED0480();
  sub_257ECC3F0();
  memcpy(__dst, a1 + 4, 0x138uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_257BE401C(__dst, v15, &qword_27F8F55A8, &qword_257EDA4E8);
  v6 = sub_257C03F6C(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = a1 + 43;
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 296 * v6), &__dst[2], 0x128uLL);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v8, 0x138uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_257BE401C(__dst, v15, &qword_27F8F55A8, &qword_257EDA4E8);
    v6 = sub_257C03F6C(v4, v5);
    v8 += 39;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_257BE82F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55D8, &qword_257EDA530);
  v3 = sub_257ED0480();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_257C09E78();
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 8);
    v13 = *v8;
    v14 = v5;
    result = sub_257C09E78();
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_257BE8424(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5628, &qword_257EDA580);
    v3 = sub_257ED0480();
    for (i = a1 + 32; ; i += 40)
    {
      sub_257BE401C(i, v11, &qword_27F8F5630, &qword_257EDA588);
      v5 = v11[0];
      result = sub_257C09E78();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_257BE8540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55D0, &unk_257EDA520);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &unk_27F8F5440, &qword_257ED9D28);
      v5 = v11;
      result = sub_257C09E74();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_257BE8668(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9A50, &qword_257EEAE30);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F9420, &qword_257EDA500);
      v5 = v11;
      result = sub_257C09E74();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_257BE87A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5608, &unk_257EDA560);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_257C03F6C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_257BE88A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56B8, &unk_257EDA610);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, v13, &unk_27F8F54A0, &qword_257EE0A60);
      result = sub_257C03F28(v13);
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
      result = sub_257BEBE08(&v15, (v3[7] + 32 * result));
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

unint64_t sub_257BE89DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5760, &qword_257EDA6A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = (&v24 - v8);
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5768, &unk_257EDB750);
    v11 = sub_257ED0480();
    v12 = *(v2 + 48);
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    while (1)
    {
      sub_257BE401C(v13, v9, &qword_27F8F5760, &qword_257EDA6A0);
      v15 = *v9;
      result = sub_257C040A0(*v9);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v11[6] + 8 * result) = v15;
      v19 = v11[7];
      v20 = sub_257ECCCF0();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v9 + v12, v20);
      v21 = v11[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v11[2] = v23;
      v13 += v14;
      if (!--v10)
      {
        return v11;
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

unint64_t sub_257BE8BB8(uint64_t a1)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5758, &qword_257EDA698);
  v6 = sub_257ED0480();
  v7 = *(a1 + 32);
  v28 = *(a1 + 40);
  v29 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  result = sub_257C040A0(v7);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v25 = v3;

    v26 = v2;
    v27 = v1;
    return v6;
  }

  v13 = (a1 + 152);
  while (1)
  {
    *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v6[6] + 8 * result) = v7;
    v14 = v6[7] + 56 * result;
    v15 = *(&v28 + 1);
    *v14 = v28;
    *(v14 + 16) = v29;
    *(v14 + 32) = v8;
    *(v14 + 40) = v9;
    *(v14 + 48) = v10;
    v16 = v6[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v6[2] = v18;
    v2 = *(&v28 + 1);
    v3 = *(&v29 + 1);
    v1 = v29;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v19 = v13 + 8;
    v7 = *(v13 - 7);
    v28 = *(v13 - 3);
    v29 = *(v13 - 2);
    v20 = *(v13 - 2);
    v9 = *(v13 - 1);
    v10 = *v13;
    v21 = v15;
    v22 = v1;
    v23 = v3;

    result = sub_257C040A0(v7);
    v13 = v19;
    v8 = v20;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_257BE8D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5620, &qword_257EDA578);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_257C09E74();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_257BE8E28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55B0, &unk_257EDA4F0);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_257C09E74();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_257BE8F18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55B8, &qword_257EDA508);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F55C0, &qword_257EDA510);
      v5 = v11;
      result = sub_257C04110(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_257BE9040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55E0, &qword_257EDA538);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v13, &qword_27F8F55E8, &qword_257EDA540);
      v5 = v13;
      v6 = v14;
      result = sub_257C03F6C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_257BEBE08(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_257BE9198(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_257ED0480();
    for (i = (a1 + 36); ; i += 2)
    {
      v9 = *(i - 4);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 4 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
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

unint64_t sub_257BE9280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5610, &qword_257EDB700);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_257C03F6C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_257BE9394(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5708, &qword_257EDA668);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F5710, &qword_257EDA670);
      v5 = v11;
      result = sub_257C09E74();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_257BE94BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F63F0, &qword_257EDA678);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F5718, &qword_257EDA680);
      v5 = v11;
      result = sub_257C09E74();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_257BE95E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5660, &qword_257EDA5B8);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_257C04110(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_257BE96FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56F0, &qword_257EDA650);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v23 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56F8, &qword_257EDA658);
    v11 = sub_257ED0480();
    v12 = *(v2 + 48);
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v13, v9, &qword_27F8F56F0, &qword_257EDA650);
      result = sub_257C04390(*v9);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v11[6] + result) = *v9;
      v18 = v11[7];
      v19 = sub_257ECC590();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v17, &v9[v12], v19);
      v20 = v11[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v11[2] = v22;
      v13 += v14;
      if (!--v10)
      {

        return v11;
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

unint64_t sub_257BE98E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5658, &qword_257EDA5B0);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 8);
      v12 = *i;
      v6 = *i;
      result = sub_257C040E4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_257BE99E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5600, &qword_257EDA558);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_257C09E74();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_257BE9ACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55F0, &qword_257EDA548);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F55F8, &qword_257EDA550);
      v5 = v11;
      result = sub_257C09E74();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_257BE9C08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56D8, &unk_257EF2930);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_257C04470(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_257BE9CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56D0, &unk_257EDA630);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_257C03FE4(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_257BE9DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56C0, &qword_257EDA620);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F56C8, &qword_257EDA628);
      v5 = v11;
      result = sub_257C09E74();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_257BE9F1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56B0, &qword_257EDA608);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_257C09E74();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_257BEA014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55C8, &qword_257EDA518);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_257C03F6C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_257BEA118(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56A0, &qword_257EDA5F8);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F56A8, &qword_257EDA600);
      v5 = v11;
      result = sub_257C09E74();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_257BEA240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5638, &qword_257EDA590);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, v15, &qword_27F8F5640, &qword_257EDA598);
      result = sub_257C03F28(v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v15[0];
      v9 = v15[1];
      *(v7 + 32) = v16;
      *v7 = v8;
      *(v7 + 16) = v9;
      v10 = (v3[7] + 16 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 56;
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

unint64_t sub_257BEA370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5648, &qword_257EDA5A0);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 56); ; i += 8)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_257C03F6C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_257BEA484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5650, &qword_257EDA5A8);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_257C0453C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_257BEA590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5618, &qword_257EDA570);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_257C040E4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_257BEA698(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      sub_257ECC3F0();
      result = sub_257C03F6C(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_257BEA7AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5668, &unk_257EDA5C0);
    v3 = sub_257ED0480();
    sub_257ECC3F0();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_257C04664(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_257BEA8A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5690, &qword_257EDA5E8);
    v3 = sub_257ED0480();
    v4 = a1 + 32;
    sub_257ECC3F0();
    while (1)
    {
      sub_257BE401C(v4, &v11, &qword_27F8F5698, &qword_257EDA5F0);
      v5 = v11;
      result = sub_257C09E74();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_257BEBE08(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void *sub_257BEA9CC(__CVBuffer *a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = v1[2];
  if (!v2)
  {
    sub_257BEBEF0();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 13;
    *(v14 + 24) = 4;
    swift_willThrow();
    return v1;
  }

  v38[0] = 0;
  v4 = v2;
  v5 = [v4 resultForPixelBuffer:a1 orientation:4 error:v38];
  if (!v5)
  {
    v15 = v38[0];
    v1 = sub_257ECC9F0();

    swift_willThrow();
    sub_257BEBEF0();
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = 13;
    *(v16 + 24) = 4;
    swift_willThrow();

    return v1;
  }

  v6 = v5;
  v7 = v38[0];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v10 = [v6 detectedObjectsForCategory_];
  if (v10)
  {
    v11 = v10;
    sub_257BD2C2C(0, &qword_27F8F5750, 0x277CE4A10);
    v12 = sub_257ECF810();

    if (!(v12 >> 62))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_5:
      v13 = v12 & 0xFFFFFFFFFFFFFF8;

      sub_257ED0660();
      sub_257BD2C2C(0, &qword_27F8F5740, 0x277CE49F0);
      if (swift_dynamicCastMetatype())
      {
      }

      else
      {
        v18 = Height;
        v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
          v36 = Width;
          v20 = v13 + 32;
          while (1)
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              break;
            }

            v20 += 8;
            if (!--v19)
            {

              goto LABEL_18;
            }
          }

          v12 = v13 | 1;
LABEL_18:
          Width = v36;
        }

        else
        {
        }

        Height = v18;
      }

      goto LABEL_20;
    }
  }

  sub_257BD2C2C(0, &qword_27F8F5740, 0x277CE49F0);

  v17 = sub_257ED0420();
  swift_bridgeObjectRelease_n();
  v12 = v17;
LABEL_20:
  v21 = [v6 detectedObjectsForCategory_];
  if (v21)
  {
    v22 = v21;
    sub_257BD2C2C(0, &qword_27F8F5750, 0x277CE4A10);
    v37 = sub_257ECF810();
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v23 = [v6 detectedObjectsForCategory_];
  if (v23)
  {
    v24 = v23;
    sub_257BD2C2C(0, &qword_27F8F5750, 0x277CE4A10);
    v35 = sub_257ECF810();
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v25 = [v6 detectedObjectsForCategory_];
  if (v25)
  {
    v26 = v25;
    sub_257BD2C2C(0, &qword_27F8F5750, 0x277CE4A10);
    v27 = sub_257ECF810();
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  v28 = Width;
  v29 = Height;
  if (v27 >> 62)
  {
    sub_257BD2C2C(0, &qword_27F8F5748, 0x277CE49F8);

    v34 = sub_257ED0420();
    swift_bridgeObjectRelease_n();
    v27 = v34;
  }

  else
  {
    v30 = v27 & 0xFFFFFFFFFFFFFF8;

    sub_257ED0660();
    sub_257BD2C2C(0, &qword_27F8F5748, 0x277CE49F8);
    if (swift_dynamicCastMetatype() || (v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_31:
    }

    else
    {
      v33 = v30 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v33 += 8;
        if (!--v32)
        {
          goto LABEL_31;
        }
      }

      v27 = v30 | 1;
    }
  }

  v1 = sub_257D2F07C(v12, v37, v35, v27, v28, v29);

  return v1;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257BEAF7C(void *a1, uint64_t a2, __CVBuffer *a3)
{
  v4 = v3;
  imageOut[1] = *MEMORY[0x277D85DE8];
  v8 = sub_257ECCB70();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 8);
  if (!v17)
  {
    return;
  }

  v75 = v14;
  v19 = *(a2 + 40);
  v18 = *(a2 + 48);
  v20 = v17;
  [a1 screenRect];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  CGAffineTransformMakeScale(&aBlock, v19, v18);
  v78.origin.x = v22;
  v78.origin.y = v24;
  v78.size.width = v26;
  v78.size.height = v28;
  v79 = CGRectApplyAffineTransform(v78, &aBlock);
  x = v79.origin.x;
  y = v79.origin.y;
  width = v79.size.width;
  height = v79.size.height;
  v33 = v20;
  [v33 boundingBox];
  v89.origin.x = x;
  v89.origin.y = y;
  v89.size.width = width;
  v89.size.height = height;
  v81 = CGRectIntersection(v80, v89);
  v34 = v81.origin.x;
  v35 = v81.origin.y;
  v36 = v81.size.width;
  v37 = v81.size.height;
  v82 = CGRectStandardize(v81);
  v38 = v82.size.height;
  v82.origin.x = v34;
  v82.origin.y = v35;
  v82.size.width = v36;
  v82.size.height = v37;
  v83 = CGRectStandardize(v82);
  v39 = v38 * v83.size.width;
  [v33 boundingBox];
  v40 = v84.origin.x;
  v41 = v84.origin.y;
  v42 = v84.size.width;
  v43 = v84.size.height;
  v85 = CGRectStandardize(v84);
  v44 = v85.size.height;
  v85.origin.x = v40;
  v85.origin.y = v41;
  v85.size.width = v42;
  v85.size.height = v43;
  v86 = CGRectStandardize(v85);
  if (v39 / (v44 * v86.size.width) <= 0.75)
  {

    return;
  }

  [v33 boundingBox];
  if (v19 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (v18 >= 9.22337204e18)
  {
    goto LABEL_20;
  }

  v87 = VNNormalizedRectForImageRect(*&v45, v19, v18);
  v49 = v87.origin.x;
  v50 = v87.origin.y;
  v51 = v87.size.width;
  v52 = v87.size.height;
  [v33 boundingBox];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  v61 = [objc_opt_self() valueWithCGRect_];
  [a1 setFace_];

  CVPixelBufferLockBaseAddress(a3, 1uLL);
  imageOut[0] = 0;
  VTCreateCGImageFromCVPixelBuffer(a3, 0, imageOut);
  if (imageOut[0])
  {
    v62 = imageOut[0];
    v88.origin.x = v54;
    v88.origin.y = v56;
    v88.size.width = v58;
    v88.size.height = v60;
    v63 = CGImageCreateWithImageInRect(v62, v88);
    if (v63)
    {
      v64 = v63;
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
      v74 = objc_autoreleasePoolPush();
      v65 = [objc_opt_self() systemPhotoLibraryURL];
      sub_257ECCB20();

      v73 = *(v4 + 40);
      v66 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCGImage_];
      v67 = sub_257ECCAE0();
      v72 = *(v4 + 56);
      v68 = swift_allocObject();
      *(v68 + 16) = a1;
      *&aBlock.tx = sub_257BEBF48;
      *&aBlock.ty = v68;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_257BE8054;
      *&aBlock.d = &block_descriptor_17;
      v69 = v62;
      v70 = _Block_copy(&aBlock);
      v71 = a1;

      [v73 triggerWithImage:v66 photoLibraryURL:v67 options:v72 cacheKey:0 resultHandler:v70];
      _Block_release(v70);

      (*(v9 + 8))(v16, v75);
      objc_autoreleasePoolPop(v74);
    }

    else
    {
    }
  }
}

void sub_257BEB4A0(unint64_t a1, unint64_t a2, __CVBuffer *a3)
{
  v118 = a3;
  v5 = sub_257ECCCF0();
  v113 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  v110 = v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728, &qword_257EDA690);
  MEMORY[0x28223BE20](v11 - 8, v12, v13, v14, v15);
  v17 = v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v120 = v109 - v23;
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = v109 - v29;
  v119 = sub_257BE89DC(MEMORY[0x277D84F90]);
  v139 = a2;
  v140 = v119;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v127 = a1 & 0xC000000000000001;
    v115 = a1 & 0xFFFFFFFFFFFFFF8;
    v114 = a1 + 32;
    v124 = (v113 + 56);
    v112 = v113 + 16;
    v116 = (v113 + 48);
    v111 = (v113 + 32);
    v109[1] = v113 + 8;

    v32 = 0;
    v123 = v17;
    v117 = v30;
    v30 = MEMORY[0x277D84F90];
    v122 = a1;
    v121 = v5;
    v126 = i;
    while (1)
    {
      if (v127)
      {
        v33 = MEMORY[0x259C72E20](v32, a1);
      }

      else
      {
        if (v32 >= *(v115 + 16))
        {
          goto LABEL_47;
        }

        v33 = *(v114 + 8 * v32);
      }

      v129 = v33;
      v34 = __OFADD__(v32, 1);
      v35 = v32 + 1;
      if (v34)
      {
        break;
      }

      v128 = v35;
      v36 = v139;
      v37 = *(v139 + 16);
      if (v37)
      {
        v138 = v30;
        sub_257BF2724(0, v37, 0);
        v30 = v138;
        v38 = (v36 + 80);
        do
        {
          v40 = *(v38 - 5);
          v39 = *(v38 - 4);
          v41 = *(v38 - 3);
          v42 = *(v38 - 1);
          v43 = *v38;
          v44 = v41;

          v45 = v40;
          v46 = v39;
          [v129 screenRect];
          v48 = v47;
          v50 = v49;
          v52 = v51;
          v54 = v53;
          CGAffineTransformMakeScale(&v136, v42, v43);
          v141.origin.x = v48;
          v141.origin.y = v50;
          v141.size.width = v52;
          v141.size.height = v54;
          v142 = CGRectApplyAffineTransform(v141, &v136);
          x = v142.origin.x;
          y = v142.origin.y;
          width = v142.size.width;
          height = v142.size.height;
          v59 = v46;
          if (v39 || (v59 = v44, v41))
          {
            [v59 boundingBox];
            v61 = v60;
            v63 = v62;
            v65 = v64;
            v67 = v66;
          }

          else
          {
            v61 = 0.0;
            v63 = 0.0;
            v65 = 0.0;
            v67 = 0.0;
          }

          v143.origin.x = x;
          v143.origin.y = y;
          v143.size.width = width;
          v143.size.height = height;
          v150.origin.x = v61;
          v150.origin.y = v63;
          v150.size.width = v65;
          v150.size.height = v67;
          v144 = CGRectIntersection(v143, v150);
          v132 = x;
          v68 = v144.origin.x;
          v131 = y;
          v69 = v144.origin.y;
          v133 = height;
          v130 = width;
          v70 = v144.size.width;
          v71 = v144.size.height;
          v145 = CGRectStandardize(v144);
          v135 = v145.size.height;
          v145.origin.x = v68;
          v145.origin.y = v69;
          v145.size.width = v70;
          v145.size.height = v71;
          v146 = CGRectStandardize(v145);
          v134 = v146.size.width;
          v146.origin.x = v132;
          v146.origin.y = v131;
          v146.size.width = v130;
          v146.size.height = v133;
          v151.origin.x = v61;
          v151.origin.y = v63;
          v151.size.width = v65;
          v151.size.height = v67;
          v147 = CGRectUnion(v146, v151);
          v72 = v147.origin.x;
          v73 = v147.origin.y;
          v74 = v147.size.width;
          v75 = v147.size.height;
          v148 = CGRectStandardize(v147);
          v76 = v148.size.height;
          v148.origin.x = v72;
          v148.origin.y = v73;
          v148.size.width = v74;
          v148.size.height = v75;
          v149 = CGRectStandardize(v148);
          v77 = v149.size.width;

          v138 = v30;
          v79 = *(v30 + 2);
          v78 = *(v30 + 3);
          v80 = v79 + 1;
          if (v79 >= v78 >> 1)
          {
            sub_257BF2724((v78 > 1), v79 + 1, 1);
            v30 = v138;
          }

          v81 = v135 * v134 / (v76 * v77);
          *(v30 + 2) = v80;
          *&v30[8 * v79 + 32] = v81;
          v38 += 7;
          --v37;
        }

        while (v37);
        a1 = v122;
        v5 = v121;
        v17 = v123;
LABEL_23:
        v82 = 0;
        v83 = 0;
        v84 = v30 + 32;
        do
        {
          if (v82 >= v80)
          {
            __break(1u);
            goto LABEL_45;
          }

          if (*&v84[8 * v82] < *&v30[8 * v83 + 32])
          {
            v82 = v83;
          }

          ++v83;
        }

        while (v80 != v83);
        if (v82 >= v80)
        {
          goto LABEL_46;
        }

        v85 = *&v84[8 * v82];

        if (v85 <= 0.5)
        {
        }

        else
        {
          sub_257C1C904(v82, &v136);
          a = v136.a;
          b = v136.b;
          c = v136.c;
          d = v136.d;
          tx = v136.tx;
          ty = v136.ty;
          v92 = v137;
          v93 = *(v125 + 24);
          if (*(v93 + 16) && (v94 = sub_257C040A0(*&v136.a), (v95 & 1) != 0))
          {
            (*(v113 + 16))(v120, *(v93 + 56) + *(v113 + 72) * v94, v5);
            v96 = 0;
          }

          else
          {
            v96 = 1;
          }

          v97 = *v124;
          v98 = v120;
          (*v124)(v120, v96, 1, v5);
          sub_257BEBE18(v98, v17);
          if ((*v116)(v17, 1, v5) == 1)
          {
            v99 = v117;
            sub_257ECCCE0();
            sub_257BEBE88(v17);
          }

          else
          {
            v99 = v117;
            (*v111)(v117, v17, v5);
          }

          v97(v99, 0, 1, v5);
          sub_257CB9E30(v99, *&a);
          v100 = v140;
          v101 = *(v140 + 16);
          v119 = v140;
          if (v101 && (v102 = sub_257C040A0(*&a), (v103 & 1) != 0))
          {
            v104 = v113;
            v105 = v110;
            (*(v113 + 16))(v110, *(v100 + 56) + *(v113 + 72) * v102, v5);
            v106 = sub_257ECCCB0();
            v107 = *(v104 + 8);
            v17 = v123;
            v107(v105, v5);
          }

          else
          {
            v106 = 0;
          }

          v108 = v129;
          [v129 setUuid_];

          v136.a = a;
          v136.b = b;
          v136.c = c;
          v136.d = d;
          v136.tx = tx;
          v136.ty = ty;
          v137 = v92;
          sub_257BEAF7C(v108, &v136, v118);
        }

        v30 = MEMORY[0x277D84F90];
        goto LABEL_6;
      }

      v80 = *(v30 + 2);
      if (v80)
      {
        goto LABEL_23;
      }

LABEL_6:
      v32 = v128;
      if (v128 == v126)
      {
        goto LABEL_50;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

LABEL_50:

  *(v125 + 24) = v119;
}

_OWORD *sub_257BEBE08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_257BEBE18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728, &qword_257EDA690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BEBE88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728, &qword_257EDA690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_257BEBEF0()
{
  result = qword_27F8F5738;
  if (!qword_27F8F5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5738);
  }

  return result;
}

uint64_t sub_257BEBF50(_OWORD *a1, uint64_t a2)
{
  *(v2 + 360) = a2;
  v4 = sub_257ECDA30();
  *(v2 + 368) = v4;
  *(v2 + 376) = *(v4 - 8);
  *(v2 + 384) = swift_task_alloc();
  *(v2 + 392) = swift_task_alloc();
  v5 = sub_257ECF120();
  *(v2 + 400) = v5;
  *(v2 + 408) = *(v5 - 8);
  *(v2 + 416) = swift_task_alloc();
  v6 = sub_257ECF190();
  *(v2 + 424) = v6;
  *(v2 + 432) = *(v6 - 8);
  *(v2 + 440) = swift_task_alloc();
  *(v2 + 448) = *a1;
  sub_257ECF900();
  *(v2 + 464) = sub_257ECF8F0();
  v8 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257BEC114, v8, v7);
}

uint64_t sub_257BEC114()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_73;
  }

  v2 = Strong;
  v3 = *(v0 + 448);
  if (!(v3 >> 62))
  {
    v6 = *(v0 + 456);
    if (v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 320) = v6;
      sub_257BEE3F8(v3, v6);
      v7 = v2;
      sub_257BEE3F8(v3, v6);
      sub_257ECDD70();
      v7[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed] = 1;
      sub_257DFF708();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;
      v13 = v6;
      sub_257DFF708();
      sub_257DFF9F8(0);
    }

    sub_257BEE3D0(*(v0 + 448), *(v0 + 456));
    v14 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService];

    v14[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_isCapturingPhoto] = 0;
    goto LABEL_73;
  }

  if (v3 >> 62 == 1)
  {
    v4 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = qword_281544FE0;
    sub_257ECC3F0();
    if (v5 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v0 + 472) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (*(v0 + 473)))
    {
      sub_257BEE3D0(*(v0 + 448), *(v0 + 456));

      goto LABEL_73;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (*(v0 + 474) == 1)
    {
      v24 = *(v0 + 448);
      v77 = *(v0 + 456);
      v25 = *(v0 + 440);
      v26 = *(v0 + 416);
      v79 = *(v0 + 432);
      v81 = *(v0 + 424);
      v27 = *(v0 + 400);
      v28 = *(v0 + 408);
      sub_257BD52CC();
      v78 = sub_257ECFD30();
      v29 = swift_allocObject();
      *(v29 + 16) = v2;
      *(v29 + 24) = v4;
      *(v0 + 144) = sub_257BEE3F0;
      *(v0 + 152) = v29;
      *(v0 + 112) = MEMORY[0x277D85DD0];
      *(v0 + 120) = 1107296256;
      *(v0 + 128) = sub_257D231C0;
      *(v0 + 136) = &block_descriptor_35;
      v30 = _Block_copy((v0 + 112));
      v31 = v2;
      sub_257BEE3F8(v24, v77);

      sub_257ECF150();
      *(v0 + 312) = MEMORY[0x277D84F90];
      sub_257BD5668();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
      sub_257BD56C0();
      sub_257ED0180();
      MEMORY[0x259C72880](0, v25, v26, v30);
      _Block_release(v30);

      (*(v28 + 8))(v26, v27);
      (*(v79 + 8))(v25, v81);
    }

    v33 = *(v0 + 448);
    v32 = *(v0 + 456);
    v34 = CMSampleBufferGetImageBuffer(*(v4 + 16));
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 304) = v34;
    sub_257ECC3F0();
    v35 = v34;
    sub_257ECDD70();
    sub_257BEE3D0(v33, v32);
    goto LABEL_66;
  }

  v8 = *(v0 + 456);
  if (v3 > 0x800000000000000FLL)
  {
    if (v3 > 0x8000000000000017)
    {
      if (v3 ^ 0x8000000000000018 | v8)
      {
        if (!(v3 ^ 0x8000000000000019 | v8))
        {
          v9 = objc_opt_self();
          v10 = swift_allocObject();
          *(v10 + 16) = v2;
          *(v0 + 96) = sub_257BEE3C0;
          *(v0 + 104) = v10;
          *(v0 + 64) = MEMORY[0x277D85DD0];
          *(v0 + 72) = 1107296256;
          *(v0 + 80) = sub_257D231C0;
          *(v0 + 88) = &block_descriptor_6_1;
          v11 = _Block_copy((v0 + 64));
          v12 = v2;

          [v9 animateWithDuration:v11 animations:0 completion:0.2];

          _Block_release(v11);
          goto LABEL_73;
        }

        v62 = objc_opt_self();
        v63 = swift_allocObject();
        *(v63 + 16) = v2;
        *(v0 + 48) = sub_257BEE3A0;
        *(v0 + 56) = v63;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_257D231C0;
        *(v0 + 40) = &block_descriptor_4;
        v64 = _Block_copy((v0 + 16));
        v2 = v2;

        [v62 animateWithDuration:v64 animations:0 completion:0.2];
        _Block_release(v64);
        v65 = sub_257DFF3FC();
        v66 = *&v65[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction];
        v67 = v66;

        if (v66)
        {
          v68 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController];
          v69 = sub_257D832B0();

          [v69 addInteraction_];
        }

        sub_257E071A8();
        v70 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton];
        if (sub_257E08680())
        {
          v71 = 1.0;
        }

        else
        {
          v71 = 0.0;
        }

        [v70 setAlpha_];

        v72 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
        if (v72)
        {
          v35 = v72;
          if (sub_257E08680())
          {
            v73 = 1.0;
          }

          else
          {
            v73 = 0.0;
          }

          [(__CVBuffer *)v35 setAlpha:v73];
LABEL_66:

          goto LABEL_73;
        }

        goto LABEL_67;
      }

      sub_257ECD410();
      v46 = sub_257ECDA20();
      v47 = sub_257ECFBD0();
      v48 = os_log_type_enabled(v46, v47);
      v50 = *(v0 + 376);
      v49 = *(v0 + 384);
      v51 = *(v0 + 368);
      if (v48)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "Capture Session Controls Became Inactive";
LABEL_70:
        _os_log_impl(&dword_257BAC000, v46, v47, v53, v52, 2u);
        MEMORY[0x259C74820](v52, -1, -1);

LABEL_72:
        (*(v50 + 8))(v49, v51);
        goto LABEL_73;
      }

      goto LABEL_71;
    }

    if (v3 ^ 0x8000000000000010 | v8)
    {
      sub_257ECD410();
      v46 = sub_257ECDA20();
      v47 = sub_257ECFBD0();
      v74 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 392);
      v51 = *(v0 + 368);
      v50 = *(v0 + 376);
      if (v74)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "Capture Session Controls Became Active";
        goto LABEL_70;
      }

LABEL_71:

      goto LABEL_72;
    }

    if (![*(*(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService) + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isInterrupted])
    {
      v36 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService];
      v37 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
      swift_beginAccess();
      if (!*(v36 + v37) || *(v36 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted) != 1)
      {
        v38 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator];
        if (!v38 || ![v38 isRunning])
        {
          v39 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton];
          if (sub_257E08680())
          {
            v40 = 1.0;
          }

          else
          {
            v40 = 0.0;
          }

          [v39 setAlpha_];

          v41 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
          if (v41)
          {
            v42 = v41;
            if (sub_257E08680())
            {
              v43 = 1.0;
            }

            else
            {
              v43 = 0.0;
            }

            [v42 setAlpha_];
          }

          v44 = swift_allocObject();
          *(v44 + 16) = v2;
          v45 = v2;
          sub_257E10748(1, sub_257BEE3C8, v44, 0.0);

          goto LABEL_73;
        }
      }
    }

LABEL_67:

    goto LABEL_73;
  }

  if (v3 > 0x8000000000000007)
  {
    if (!(v3 ^ 0x8000000000000008 | v8))
    {
      sub_257D43868();

      goto LABEL_73;
    }

    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D88 == 1)
    {
      sub_257E10374(0, 0, 0);
    }

    goto LABEL_67;
  }

  if (v3 ^ 0x8000000000000000 | v8)
  {
    v55 = *(v0 + 432);
    v54 = *(v0 + 440);
    v56 = *(v0 + 416);
    v82 = *(v0 + 424);
    v57 = *(v0 + 400);
    v58 = *(v0 + 408);
    sub_257BD52CC();
    v80 = sub_257ECFD30();
    v59 = swift_allocObject();
    *(v59 + 16) = v2;
    *(v0 + 192) = sub_257BEE418;
    *(v0 + 200) = v59;
    *(v0 + 160) = MEMORY[0x277D85DD0];
    *(v0 + 168) = 1107296256;
    *(v0 + 176) = sub_257D231C0;
    *(v0 + 184) = &block_descriptor_47;
    v60 = _Block_copy((v0 + 160));
    v61 = v2;

    sub_257ECF150();
    *(v0 + 328) = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v54, v56, v60);
    _Block_release(v60);

    (*(v58 + 8))(v56, v57);
    (*(v55 + 8))(v54, v82);
    goto LABEL_73;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  v15 = *(v0 + 336);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 344) = v15;
  sub_257ECDD70();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v16 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v17 = *(v0 + 475);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v18 = *(v0 + 476);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v17 != 1)
  {
    goto LABEL_67;
  }

  if (v18)
  {
    goto LABEL_67;
  }

  if (*(v0 + 477))
  {
    goto LABEL_67;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v19 = *(v0 + 352);
  if (!v19)
  {
    goto LABEL_67;
  }

  v20 = v16 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__flashlightPercentage;
  swift_beginAccess();
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  *(v0 + 280) = *v20;
  *(v0 + 288) = v21;
  *(v0 + 296) = v22;
  v23 = qword_2815447E0;

  if (v23 != -1)
  {
    swift_once();
  }

  *(swift_task_alloc() + 16) = v0 + 280;
  sub_257ECFD50();

  sub_257D32D68(*(v0 + 300));

LABEL_73:

  v75 = *(v0 + 8);

  return v75();
}

void sub_257BED090(void *a1)
{
  v2 = sub_257DFF59C();
  v3 = [v2 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    [v4 setAutomaticallyDimsOverCaptureRegion_];

    [v5 setOpacity_];
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    aBlock[4] = sub_257BEE43C;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_77;
    v8 = _Block_copy(aBlock);
    v9 = a1;

    [v6 animateWithDuration:v8 animations:0.2];
    _Block_release(v8);
  }

  else
  {

    sub_257ED0410();
    __break(1u);
  }
}

void sub_257BED23C()
{
  v0 = sub_257DFF59C();
  v4 = [v0 layer];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    [v1 setAutomaticallyDimsOverCaptureRegion_];

    LODWORD(v3) = 1.0;
    [v2 setOpacity_];
  }

  else
  {

    sub_257ED0410();
    __break(1u);
  }
}

uint64_t sub_257BED334(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5, v6, v7, v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = sub_257E2960C(v11);

  if (v12)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v17[1] = v12;
    sub_257ECC3F0();
    return sub_257ECDD70();
  }

  else
  {
    sub_257ECD410();
    v14 = sub_257ECDA20();
    v15 = sub_257ECFBD0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = 55;
      _os_log_impl(&dword_257BAC000, v14, v15, "%ld NO SAMPLE IMAGE", v16, 0xCu);
      MEMORY[0x259C74820](v16, -1, -1);
    }

    return (*(v4 + 8))(v10, v3);
  }
}

void sub_257BED518(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12, v13, v14, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_257ECF1B0();
  MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26, v27, v28, v29);
  v33 = &v53 - v31;
  if (qword_281544FE0 != -1)
  {
    v60 = a1;
    v50 = v30;
    v51 = &v53 - v31;
    v52 = v32;
    swift_once();
    v32 = v52;
    v33 = v51;
    v30 = v50;
    a1 = v60;
  }

  if (*(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedReaderFromShortcut) == 1)
  {
    v54 = v9;
    v55 = v2;
    v56 = v32;
    v57 = v30;
    v58 = v11;
    v59 = v10;
    v60 = v3;
    v34 = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(aBlock) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    v35 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController;
    v36 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController);
    if (v36)
    {
      v37 = v36;
      [v37 willMoveToParentViewController_];
      v53 = objc_opt_self();
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      v65 = sub_257BEE444;
      v66 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v62 = 1107296256;
      v63 = sub_257D231C0;
      v64 = &block_descriptor_98;
      v39 = _Block_copy(&aBlock);
      v40 = v37;

      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      v65 = sub_257BEE44C;
      v66 = v41;
      aBlock = MEMORY[0x277D85DD0];
      v62 = 1107296256;
      v63 = sub_257DFE438;
      v64 = &block_descriptor_104;
      v42 = _Block_copy(&aBlock);
      v43 = v40;

      [v53 animateWithDuration:0x20000 delay:v39 options:v42 animations:0.25 completion:0.0];
      _Block_release(v42);
      _Block_release(v39);

      v44 = *(v34 + v35);
      *(v34 + v35) = 0;
    }

    sub_257BD52CC();
    v45 = sub_257ECFD30();
    sub_257ECF1A0();
    sub_257ECF220();
    v46 = v57;
    v56 = *(v56 + 8);
    (v56)(v24, v57);
    v65 = sub_257BEDAC8;
    v66 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_257D231C0;
    v64 = &block_descriptor_92;
    v47 = _Block_copy(&aBlock);
    sub_257ECF150();
    aBlock = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480, &qword_257EDBFF0);
    sub_257BD56C0();
    v49 = v54;
    v48 = v55;
    sub_257ED0180();
    MEMORY[0x259C727E0](v33, v17, v49, v47);
    _Block_release(v47);

    (*(v60 + 8))(v49, v48);
    (*(v58 + 8))(v17, v59);
    (v56)(v33, v46);
  }
}

uint64_t sub_257BEDAC8()
{
  if (qword_281544FE0 != -1)
  {
    result = swift_once();
  }

  *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedReaderFromShortcut) = 0;
  return result;
}

void sub_257BEDB24(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v49 = 0;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v11 = sub_257ECF110();
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  *&v48[-16] = &v49;
  *&v48[-8] = v10;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  swift_endAccess();
  v16 = sub_257DFF054();
  v17 = [v16 view];
  if (v17)
  {
    v18 = v17;
    [v17 setAlpha_];

    v19 = [v16 view];
    if (v19)
    {
      type metadata accessor for MFPassthroughView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        *(v20 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 0;
      }
    }

    v21 = *(*(*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView);
    sub_257C8105C();

    sub_257DFD6C4();
    v22 = sub_257DFF3FC();
    v23 = sub_257D83270();

    v24 = [v23 contextMenuInteraction];
    [v24 dismissMenu];

    v25 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController;
    v26 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
    v27 = sub_257D83290();

    v28 = [v27 contextMenuInteraction];
    [v28 dismissMenu];

    v29 = *(a1 + v25);
    v30 = *&v29[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction];
    if (v30)
    {
      v31 = v30;
      v32 = v29;
      v33 = sub_257D832B0();

      [v33 removeInteraction_];
      v34 = *(a1 + v25);
      v35 = sub_257D832B0();

      [v35 setAccessibilityCustomActions_];
    }

    v36 = sub_257DFEF64();
    v37 = OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_buttonMap;
    swift_beginAccess();
    v38 = *&v36[v37];
    if (*(v38 + 16) && (v39 = sub_257C040E4(7), (v40 & 1) != 0))
    {
      v41 = *(*(v38 + 56) + 16 * v39);
      swift_endAccess();
      v42 = v41;

      type metadata accessor for MenuButton();
      v43 = swift_dynamicCastClass();
      if (v43)
      {
        v44 = v42;
        v45 = sub_257CF98BC();

        v36 = [v45 contextMenuInteraction];
        [v36 dismissMenu];
      }

      else
      {
        v36 = v42;
      }
    }

    else
    {
      swift_endAccess();
      v43 = 0;
    }

    sub_257E071A8();
    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton) setAlpha_];
    v46 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
    if (v46)
    {
      v47 = v46;
      [v47 setAlpha_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_257BEE008(uint64_t a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
  swift_beginAccess();
  v23 = 0;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v11 = sub_257ECF110();
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  *&v22[-16] = &v23;
  *&v22[-8] = v10;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  swift_endAccess();
  v16 = sub_257DFF054();
  v17 = [v16 view];
  if (v17)
  {
    v18 = v17;
    [v17 setAlpha_];

    v19 = [v16 view];
    if (v19)
    {
      type metadata accessor for MFPassthroughView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        *(v20 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 1;
      }
    }

    v21 = *(*(*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView);
    sub_257C8105C();

    sub_257DFD6C4();
  }

  else
  {
    __break(1u);
  }
}

void sub_257BEE2AC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257BEE32C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

double sub_257BEE3D0(unint64_t a1, void *a2)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }

  return result;
}

unint64_t sub_257BEE3F8(unint64_t result, void *a2)
{
  if (result >> 62 == 1)
  {
    return sub_257ECC3F0();
  }

  if (!(result >> 62))
  {
    return a2;
  }

  return result;
}

uint64_t sub_257BEE4C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F57D0, qword_257EDAB70);
  MEMORY[0x28223BE20](v0 - 8, v1, v2, v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8, v9, v10, v11);
  v13 = &v21 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5788, &unk_257EDE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED6D30;
  v15 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v16 = v15;
  sub_257BF2B04(inited);
  swift_setDeallocating();
  sub_257BF32AC(inited + 32);
  sub_257ECCAA0();

  v17 = sub_257ECC930();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v13, 0, 1, v17);
  sub_257BF3B00(v13, v6);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    sub_257BE4084(v13, &unk_27F8F57D0, qword_257EDAB70);
    sub_257BE4084(v6, &unk_27F8F57D0, qword_257EDAB70);
    return 0;
  }

  else
  {
    v20 = sub_257ECC920();
    sub_257BE4084(v13, &unk_27F8F57D0, qword_257EDAB70);
    (*(v18 + 8))(v6, v17);
    return v20;
  }
}

uint64_t sub_257BEE7A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = sub_257ECCB70();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t sub_257BEE82C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_257ECCB70();
  v9 = *(v8 - 8);
  v14 = MEMORY[0x28223BE20](v8, v10, v11, v12, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v16, a1, v8, v14);
  v17 = *a2;
  v18 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v17 + v18, v16, v8);
  return swift_endAccess();
}

uint64_t sub_257BEE950@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = sub_257ECCB70();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_257BEE9E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_257ECCB70();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t MagnifierStillImageStore.__allocating_init(captureService:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MagnifierStillImageStore.init(captureService:)(a1);
  return v2;
}

uint64_t MagnifierStillImageStore.init(captureService:)(uint64_t a1)
{
  v2 = v1;
  v57[3] = *MEMORY[0x277D85DE8];
  v4 = sub_257ECCB70();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6, v7, v8, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13, v14, v15, v16);
  v18 = &v44 - v17;
  v19 = [objc_opt_self() defaultManager];
  v57[0] = 0;
  v20 = [v19 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v57];
  v21 = v57[0];
  if (v20)
  {
    v22 = v20;
    v50 = a1;
    v51 = v19;
    sub_257ECCB20();
    v23 = v21;

    swift_beginAccess();
    if (qword_27F8FA070)
    {
      sub_257ECC3F0();
      sub_257ECD710();

      (*(v5 + 8))(v18, v4);
      (*(v5 + 32))(v18, v11, v4);
    }

    v53 = v18;
    sub_257ECCB00();
    v24 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
    v25 = *(v5 + 32);
    v49 = v5 + 32;
    v48 = v25;
    v25(v2 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory, v11, v4);
    swift_beginAccess();
    v52 = *(v5 + 16);
    v52(v11, v2 + v24, v4);
    sub_257ECCB50();
    v26 = *(v5 + 8);
    v26(v11, v4);
    v27 = sub_257ECF4C0();

    v28 = v51;
    v29 = [v51 fileExistsAtPath_];

    if ((v29 & 1) == 0)
    {
      v46 = v2;
      v52(v11, v2 + v24, v4);
      v30 = sub_257ECCAE0();
      v45 = v4;
      v47 = v5 + 8;
      v26(v11, v4);
      v56[0] = 0;
      v31 = [v28 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:v56];

      if (!v31)
      {
        v41 = v56[0];
        sub_257ECC9F0();

        swift_willThrow();
        v26(v53, v45);
        goto LABEL_14;
      }

      v32 = v56[0];
      v28 = v51;
      v2 = v46;
      v4 = v45;
    }

    sub_257ECCB00();
    v33 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_thumbnailDirectory;
    v48(v2 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_thumbnailDirectory, v11, v4);
    swift_beginAccess();
    v52(v11, v2 + v33, v4);
    sub_257ECCB50();
    v26(v11, v4);
    v34 = sub_257ECF4C0();

    v35 = [v28 fileExistsAtPath_];

    if (v35)
    {
LABEL_10:
      v26(v53, v4);

      *(v2 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_captureService) = v50;
      return v2;
    }

    v52(v11, v2 + v33, v4);
    v36 = sub_257ECCAE0();
    v26(v11, v4);
    v54 = 0;
    v37 = [v28 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:&v54];

    if (v37)
    {
      v38 = v54;
      goto LABEL_10;
    }

    v42 = v54;
    sub_257ECC9F0();

    swift_willThrow();
    v26(v53, v4);
  }

  else
  {
    v40 = v57[0];
    sub_257ECC9F0();

    swift_willThrow();
  }

LABEL_14:
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_257ED02D0();

  v54 = 0xD000000000000017;
  v55 = 0x8000000257EF9190;
  swift_getErrorValue();
  v43 = sub_257ED0720();
  MEMORY[0x259C72150](v43);

  result = sub_257ED0410();
  __break(1u);
  return result;
}

void sub_257BEF19C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v133 = sub_257ECDA30();
  v4 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v5, v6, v7, v8);
  v10 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v129 = &v120 - v16;
  v17 = sub_257ECCC80();
  v132 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_257ECCB70();
  v137 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v127 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
  v36 = &v120 - v35;
  MEMORY[0x28223BE20](v37, v38, v39, v40, v41);
  v135 = &v120 - v42;
  MEMORY[0x28223BE20](v43, v44, v45, v46, v47);
  v49 = &v120 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  *&v55 = MEMORY[0x28223BE20](v50 - 8, v51, v52, v53, v54).n128_u64[0];
  v131 = &v120 - v56;
  v57 = [a1 fileDataRepresentation];
  if (!v57)
  {
    sub_257BF24FC();
    swift_allocError();
    *v65 = 0;
    swift_willThrow();
    return;
  }

  v125 = v10;
  v58 = v57;
  v138 = sub_257ECCBA0();
  v136 = v59;

  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v126 = v4;
  if (byte_27F8F8D88 != 1)
  {
    goto LABEL_31;
  }

  v124 = v49;
  v60 = v138;
  v61 = v136;
  v62 = sub_257E9C070(v138, v136);
  if (v2)
  {
    v63 = v60;
    v64 = v61;
LABEL_45:
    sub_257BF2550(v63, v64);
    return;
  }

  v130 = v62;
  v66 = *(*&v134[OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
  v123 = v66;
  if (v66)
  {
    [(UIImage *)v66 videoRotationAngleForHorizonLevelCapture];
    v68 = v67;
  }

  else
  {
    v68 = 0.0;
  }

  if (qword_281544FE0 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v140 == 4)
    {
      if (!v123)
      {
        goto LABEL_25;
      }

      if (v68 == 90.0)
      {
        v69 = 6;
        goto LABEL_29;
      }

      if (v68 == 180.0)
      {
        v69 = 5;
        goto LABEL_29;
      }

      if (v68 == 270.0)
      {
        v69 = 7;
      }

      else
      {
LABEL_25:
        v69 = 4;
      }
    }

    else
    {
      if (!v123)
      {
        goto LABEL_28;
      }

      if (v68 == 90.0)
      {
        v69 = 3;
        goto LABEL_29;
      }

      if (v68 == 180.0)
      {
        v69 = 1;
        goto LABEL_29;
      }

      if (v68 == 270.0)
      {
        v69 = 2;
      }

      else
      {
LABEL_28:
        v69 = 0;
      }
    }

LABEL_29:
    v70 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v71 = v130;
    v72 = [v70 initWithCGImage:v130 scale:v69 orientation:1.0];
    v73 = UIImageJPEGRepresentation(v72, 1.0);
    if (!v73)
    {
      sub_257BEBEF0();
      swift_allocError();
      *v119 = 0xD000000000000038;
      *(v119 + 8) = 0x8000000257EF91B0;
      *(v119 + 16) = 0;
      *(v119 + 24) = 2;
      swift_willThrow();

      sub_257BF2550(v138, v136);
      return;
    }

    v123 = v72;
    v74 = v73;
    v122 = sub_257ECCBA0();
    v76 = v75;

    sub_257BF2550(v138, v136);
    v138 = v122;
    v136 = v76;
    v49 = v124;
LABEL_31:
    v77 = [a1 processedFileType];
    if (!v77 || (v78 = v77, a1 = sub_257E865A8(v77), v80 = v79, v78, (v130 = v80) == 0))
    {

      v130 = 0xE300000000000000;
      a1 = 6778986;
    }

    v81 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
    v82 = v134;
    swift_beginAccess();
    isa = v137[2].super.isa;
    v123 = v137 + 2;
    v122 = isa;
    isa(v49, &v82[v81], v24);
    sub_257ECCC70();
    sub_257ECCC30();
    v68 = v84;
    (*(v132 + 8))(v23, v17);
    v85 = round(v68 * 1000.0);
    if ((*&v85 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v85 <= -9.22337204e18)
    {
      goto LABEL_54;
    }

    if (v85 < 9.22337204e18)
    {
      break;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v139 = v85;
  sub_257ED0600();
  v132 = v86;
  sub_257ECCB00();
  v87 = v135;
  sub_257ECCB10();
  v88 = v87;
  v89 = v137;
  v134 = v137[1].super.isa;
  (v134)(v36, v24);
  v90 = v138;
  v91 = v136;
  sub_257ECCBB0();
  if (v2)
  {
    v124 = v49;
    v92 = v129;
    sub_257ECD360();
    v93 = v2;
    v94 = sub_257ECDA20();
    v95 = sub_257ECFBD0();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v139 = v121;
      *v96 = 136315138;
      swift_getErrorValue();
      v97 = sub_257ED0720();
      v99 = sub_257BF1FC8(v97, v98, &v139);

      *(v96 + 4) = v99;
      _os_log_impl(&dword_257BAC000, v94, v95, "Error writing image data: %s", v96, 0xCu);
      v100 = v121;
      v101 = __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x259C74820](v100, -1, -1, v101);
      v102 = v96;
      v91 = v136;
      MEMORY[0x259C74820](v102, -1, -1);
    }

    else
    {
      v138 = v90;
    }

    (*(v126 + 8))(v92, v133);
    v105 = v134;
    (v134)(v135, v24);
    v104 = 1;
    v89 = v137;
    v103 = v131;
    v49 = v124;
  }

  else
  {
    v138 = v90;
    v103 = v131;
    (v89[4].super.isa)(v131, v88, v24);
    v104 = 0;
    v105 = v134;
  }

  (v89[7].super.isa)(v103, v104, 1, v24);

  v105(v49, v24);
  if ((v89[6].super.isa)(v103, 1, v24) == 1)
  {
    sub_257BE4084(v103, &qword_27F8F5F30, &qword_257EDA9E0);
    sub_257BF24FC();
    swift_allocError();
    *v106 = 0;
    swift_willThrow();
    v63 = v138;
    v64 = v91;
    goto LABEL_45;
  }

  v107 = v128;
  (v89[4].super.isa)(v128, v103, v24);
  sub_257ECD360();
  v108 = v127;
  v122(v127, v107, v24);
  v109 = sub_257ECDA20();
  v110 = sub_257ECFBD0();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v136 = v91;
    v112 = v108;
    v113 = v111;
    *v111 = 134217984;
    v114 = sub_257BEE4C0();
    v116 = v115;
    (v134)(v112, v24);
    v117 = vcvtd_n_f64_s64(v114, 0x14uLL);
    if (v116)
    {
      v117 = -0.000000953674316;
    }

    *(v113 + 1) = v117;
    _os_log_impl(&dword_257BAC000, v109, v110, "Saved file with size: %f MB", v113, 0xCu);
    v118 = v133;
    MEMORY[0x259C74820](v113, -1, -1);
    sub_257BF2550(v138, v136);
  }

  else
  {
    sub_257BF2550(v138, v91);

    (v134)(v108, v24);
    v118 = v133;
  }

  (*(v126 + 8))(v125, v118);
}

void sub_257BEFD44(UIImage *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v120 = sub_257ECDA30();
  v4 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v5, v6, v7, v8);
  v10 = &v111[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  v121 = &v111[-v16];
  v17 = sub_257ECCC80();
  v119 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = &v111[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_257ECCB70();
  v125 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v30 = &v111[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31, v32, v33, v34, v35);
  v37 = &v111[-v36];
  MEMORY[0x28223BE20](v38, v39, v40, v41, v42);
  v123 = &v111[-v43];
  MEMORY[0x28223BE20](v44, v45, v46, v47, v48);
  v126 = &v111[-v49];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v50 - 8, v51, v52, v53, v54);
  v118 = &v111[-v55];
  v56 = UIImageJPEGRepresentation(a1, 0.8);
  if (!v56)
  {
    sub_257BF24FC();
    swift_allocError();
    *v63 = 0;
    swift_willThrow();
    return;
  }

  v57 = v56;
  v127 = sub_257ECCBA0();
  v124 = v58;

  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v117 = v10;
  if (byte_27F8F8D88 != 1)
  {
    goto LABEL_31;
  }

  v114 = v30;
  v59 = v127;
  v60 = v124;
  v61 = sub_257E9C070(v127, v124);
  if (v2)
  {
    v62 = v59;
LABEL_42:
    sub_257BF2550(v62, v60);
    return;
  }

  v64 = v61;
  v65 = *(*&v122[OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
  v113 = v65;
  if (v65)
  {
    [v65 videoRotationAngleForHorizonLevelCapture];
    v67 = v66;
  }

  else
  {
    v67 = 0.0;
  }

  v115 = v4;
  v68 = v64;
  if (qword_281544FE0 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v129 == 4)
    {
      if (!v113)
      {
        goto LABEL_25;
      }

      if (v67 == 90.0)
      {
        v69 = 6;
        goto LABEL_29;
      }

      if (v67 == 180.0)
      {
        v69 = 5;
        goto LABEL_29;
      }

      if (v67 == 270.0)
      {
        v69 = 7;
      }

      else
      {
LABEL_25:
        v69 = 4;
      }
    }

    else
    {
      if (!v113)
      {
        goto LABEL_28;
      }

      if (v67 == 90.0)
      {
        v69 = 3;
        goto LABEL_29;
      }

      if (v67 == 180.0)
      {
        v69 = 1;
        goto LABEL_29;
      }

      if (v67 == 270.0)
      {
        v69 = 2;
      }

      else
      {
LABEL_28:
        v69 = 0;
      }
    }

LABEL_29:
    v70 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v68 scale:v69 orientation:1.0];
    v71 = UIImageJPEGRepresentation(v70, 1.0);
    if (!v71)
    {
      sub_257BEBEF0();
      swift_allocError();
      *v110 = 0xD000000000000038;
      *(v110 + 8) = 0x8000000257EF91B0;
      *(v110 + 16) = 0;
      *(v110 + 24) = 2;
      swift_willThrow();

      sub_257BF2550(v127, v124);
      return;
    }

    v72 = v71;
    v73 = sub_257ECCBA0();
    v113 = v74;

    sub_257BF2550(v127, v124);
    v127 = v73;
    v124 = v113;
    v4 = v115;
    v30 = v114;
LABEL_31:
    v68 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
    v75 = v122;
    swift_beginAccess();
    v76 = *(v125 + 16);
    v114 = (v125 + 16);
    v113 = v76;
    v76(v126, &v68[v75], v24);
    sub_257ECCC70();
    sub_257ECCC30();
    v67 = v77;
    (*(v119 + 8))(v23, v17);
    v78 = round(v67 * 1000.0);
    if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v78 <= -9.22337204e18)
    {
      goto LABEL_51;
    }

    if (v78 < 9.22337204e18)
    {
      break;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v115 = v4;
  v128 = v78;
  sub_257ED0600();
  v119 = v79;
  sub_257ECCB00();
  v80 = v123;
  sub_257ECCB10();
  v81 = v80;
  v82 = v125;
  v122 = *(v125 + 8);
  (v122)(v37, v24);
  v83 = v127;
  v60 = v124;
  sub_257ECCBB0();
  if (v2)
  {
    sub_257ECD360();
    v84 = v2;
    v85 = sub_257ECDA20();
    v86 = sub_257ECFBD0();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v128 = v88;
      *v87 = 136315138;
      swift_getErrorValue();
      v112 = v86;
      v89 = sub_257ED0720();
      v91 = v30;
      v92 = sub_257BF1FC8(v89, v90, &v128);

      *(v87 + 4) = v92;
      v30 = v91;
      v82 = v125;
      v93 = v120;
      _os_log_impl(&dword_257BAC000, v85, v112, "Error writing image data: %s", v87, 0xCu);
      v94 = __swift_destroy_boxed_opaque_existential_0(v88);
      MEMORY[0x259C74820](v88, -1, -1, v94);
      v95 = v87;
      v60 = v124;
      MEMORY[0x259C74820](v95, -1, -1);

      (*(v115 + 8))(v121, v93);
    }

    else
    {
      v127 = v83;

      (*(v115 + 8))(v121, v120);
    }

    v98 = v122;
    (v122)(v123, v24);
    v97 = 1;
    v96 = v118;
  }

  else
  {
    v127 = v83;
    v96 = v118;
    (*(v82 + 32))(v118, v81, v24);
    v97 = 0;
    v98 = v122;
  }

  (*(v82 + 56))(v96, v97, 1, v24);

  v98(v126, v24);
  if ((*(v82 + 48))(v96, 1, v24) == 1)
  {
    sub_257BE4084(v96, &qword_27F8F5F30, &qword_257EDA9E0);
    sub_257BF24FC();
    swift_allocError();
    *v99 = 0;
    swift_willThrow();
    v62 = v127;
    goto LABEL_42;
  }

  v100 = v116;
  (*(v82 + 32))(v116, v96, v24);
  sub_257ECD360();
  v113(v30, v100, v24);
  v101 = sub_257ECDA20();
  v102 = sub_257ECFBD0();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = v30;
    v104 = swift_slowAlloc();
    *v104 = 134217984;
    v105 = sub_257BEE4C0();
    v124 = v60;
    v107 = v106;
    (v122)(v103, v24);
    v108 = vcvtd_n_f64_s64(v105, 0x14uLL);
    if (v107)
    {
      v108 = -0.000000953674316;
    }

    *(v104 + 4) = v108;
    _os_log_impl(&dword_257BAC000, v101, v102, "Saved file with size: %f MB", v104, 0xCu);
    v109 = v120;
    MEMORY[0x259C74820](v104, -1, -1);
    sub_257BF2550(v127, v124);
  }

  else
  {
    sub_257BF2550(v127, v60);

    (v122)(v30, v24);
    v109 = v120;
  }

  (*(v115 + 8))(v117, v109);
}

void sub_257BF088C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v119 = a2;
  v125 = sub_257ECDA30();
  v127 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v5, v6, v7, v8);
  v123 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v120 = &v116 - v15;
  v126 = sub_257ECCC80();
  v16 = *(v126 - 1);
  MEMORY[0x28223BE20](v126, v17, v18, v19, v20);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_257ECCB70();
  v132 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
  v118 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
  v35 = &v116 - v34;
  MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
  v128 = &v116 - v41;
  MEMORY[0x28223BE20](v42, v43, v44, v45, v46);
  v129 = &v116 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30, &qword_257EDA9E0);
  MEMORY[0x28223BE20](v48 - 8, v49, v50, v51, v52);
  v124 = &v116 - v53;
  v54 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v55 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];
  v56 = UIImageJPEGRepresentation(v55, 1.0);
  if (!v56)
  {
    sub_257BEBEF0();
    swift_allocError();
    *v67 = 0xD000000000000038;
    *(v67 + 8) = 0x8000000257EF91B0;
    *(v67 + 16) = 0;
    *(v67 + 24) = 2;
    swift_willThrow();

    return;
  }

  v121 = v23;
  v57 = v56;
  v130 = sub_257ECCBA0();
  v131 = v58;

  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v59 = v132;
  if ((byte_27F8F8D88 & 1) == 0)
  {
    v63 = v121;
LABEL_11:
    v64 = v3;
    goto LABEL_33;
  }

  v60 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v61 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVImageBuffer_];
  [v61 extent];
  v62 = [v60 createCGImage:v61 fromRect:?];
  v63 = v121;
  v117 = v62;
  if (!v62)
  {

    goto LABEL_11;
  }

  v64 = v3;
  v59 = *(*(v3 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_captureService) + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
  if (v59)
  {
    [v59 videoRotationAngleForHorizonLevelCapture];
    v66 = v65;
  }

  else
  {
    v66 = 0.0;
  }

  v68 = v60;
  v116 = v61;
  if (qword_281544FE0 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v134 == 4)
    {
      v69 = v117;
      if (!v59)
      {
        goto LABEL_27;
      }

      if (v66 == 90.0)
      {
        v70 = 6;
        goto LABEL_31;
      }

      if (v66 == 180.0)
      {
        v70 = 5;
        goto LABEL_31;
      }

      if (v66 == 270.0)
      {
        v70 = 7;
      }

      else
      {
LABEL_27:
        v70 = 4;
      }
    }

    else
    {
      v69 = v117;
      if (!v59)
      {
        goto LABEL_30;
      }

      if (v66 == 90.0)
      {
        v70 = 3;
        goto LABEL_31;
      }

      if (v66 == 180.0)
      {
        v70 = 1;
        goto LABEL_31;
      }

      if (v66 == 270.0)
      {
        v70 = 2;
      }

      else
      {
LABEL_30:
        v70 = 0;
      }
    }

LABEL_31:
    v71 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v69 scale:v70 orientation:1.0];
    v72 = UIImageJPEGRepresentation(v71, 1.0);
    if (!v72)
    {
      sub_257BEBEF0();
      swift_allocError();
      *v115 = 0xD000000000000038;
      *(v115 + 8) = 0x8000000257EF91B0;
      *(v115 + 16) = 0;
      *(v115 + 24) = 2;
      swift_willThrow();

      sub_257BF2550(v130, v131);
      return;
    }

    v73 = v68;
    v74 = v72;
    v117 = sub_257ECCBA0();
    v76 = v75;

    sub_257BF2550(v130, v131);
    v130 = v117;
    v131 = v76;
    v63 = v121;
    v59 = v132;
LABEL_33:
    v77 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
    swift_beginAccess();
    v68 = (v59 + 16);
    v78 = v64 + v77;
    v79 = v129;
    v116 = *(v59 + 16);
    (v116)(v129, v78, v63);
    sub_257ECCC70();
    sub_257ECCC30();
    v66 = v80;
    v81 = *(v16 + 8);
    v16 += 8;
    v81(v22, v126);
    v82 = round(v66 * 1000.0);
    if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v82 <= -9.22337204e18)
    {
      goto LABEL_52;
    }

    if (v82 < 9.22337204e18)
    {
      break;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v133 = v82;
  sub_257ED0600();
  v84 = v83;
  sub_257ECCB00();
  v85 = v128;
  sub_257ECCB10();
  v126 = *(v59 + 8);
  v126(v35, v63);
  v86 = v122;
  sub_257ECCBB0();
  v117 = v84;
  if (v86)
  {
    v87 = v120;
    sub_257ECD360();
    v88 = v86;
    v89 = sub_257ECDA20();
    v90 = sub_257ECFBD0();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v133 = v92;
      *v91 = 136315138;
      swift_getErrorValue();
      v93 = sub_257ED0720();
      v95 = sub_257BF1FC8(v93, v94, &v133);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_257BAC000, v89, v90, "Error writing image data: %s", v91, 0xCu);
      v96 = __swift_destroy_boxed_opaque_existential_0(v92);
      v97 = v92;
      v63 = v121;
      MEMORY[0x259C74820](v97, -1, -1, v96);
      MEMORY[0x259C74820](v91, -1, -1);

      v98 = *(v127 + 8);
      v99 = v120;
    }

    else
    {

      v98 = *(v127 + 8);
      v99 = v87;
    }

    v103 = v125;
    v98(v99, v125);
    v102 = v126;
    v126(v128, v63);
    v101 = 1;
    v59 = v132;
    v100 = v124;
    v79 = v129;
  }

  else
  {
    v100 = v124;
    (*(v59 + 32))(v124, v85, v63);
    v101 = 0;
    v103 = v125;
    v102 = v126;
  }

  (*(v59 + 56))(v100, v101, 1, v63);

  v102(v79, v63);
  if ((*(v59 + 48))(v100, 1, v63) == 1)
  {
    sub_257BE4084(v100, &qword_27F8F5F30, &qword_257EDA9E0);
    sub_257BF24FC();
    swift_allocError();
    *v104 = 0;
    swift_willThrow();
    sub_257BF2550(v130, v131);
  }

  else
  {
    v105 = v119;
    (*(v59 + 32))(v119, v100, v63);
    sub_257ECD360();
    v106 = v118;
    (v116)(v118, v105, v63);
    v107 = sub_257ECDA20();
    v108 = sub_257ECFBD0();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 134217984;
      v110 = sub_257BEE4C0();
      v111 = v106;
      v113 = v112;
      v126(v111, v63);
      v114 = vcvtd_n_f64_s64(v110, 0x14uLL);
      if (v113)
      {
        v114 = -0.000000953674316;
      }

      *(v109 + 4) = v114;
      _os_log_impl(&dword_257BAC000, v107, v108, "Saved file with size: %f MB", v109, 0xCu);
      MEMORY[0x259C74820](v109, -1, -1);
      sub_257BF2550(v130, v131);
    }

    else
    {
      sub_257BF2550(v130, v131);

      v126(v106, v63);
    }

    (*(v127 + 8))(v123, v103);
  }
}

void *sub_257BF1470()
{
  v99 = *MEMORY[0x277D85DE8];
  v1 = sub_257ECD8B0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3, v4, v5, v6);
  v76 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_257ECC930();
  v8 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v9, v10, v11, v12);
  v79 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5780, &unk_257EDAA30);
  MEMORY[0x28223BE20](v14 - 8, v15, v16, v17, v18);
  v83 = &v74 - v19;
  v20 = sub_257ECCB70();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22, v23, v24, v25);
  v77 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28, v29, v30, v31);
  v97 = &v74 - v32;
  MEMORY[0x28223BE20](v33, v34, v35, v36, v37);
  v39 = &v74 - v38;
  v40 = [objc_opt_self() defaultManager];
  v41 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
  swift_beginAccess();
  v94 = *(v21 + 16);
  v95 = v21 + 16;
  v94(v39, v0 + v41, v20);
  v42 = sub_257ECCAE0();
  v96 = v21;
  v43 = *(v21 + 8);
  v88 = v21 + 8;
  v87 = v43;
  v43(v39, v20);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5788, &unk_257EDE750);
  v44 = swift_allocObject();
  v92 = xmmword_257ED6D30;
  *(v44 + 16) = xmmword_257ED6D30;
  v45 = *MEMORY[0x277CBE7B8];
  *(v44 + 32) = *MEMORY[0x277CBE7B8];
  type metadata accessor for URLResourceKey(0);
  v91 = v45;
  v46 = sub_257ECF7F0();

  v98 = 0;
  v47 = [v40 contentsOfDirectoryAtURL:v42 includingPropertiesForKeys:v46 options:7 error:&v98];

  v48 = v98;
  if (v47)
  {
    v49 = sub_257ECF810();
    v50 = v48;

    v90 = *(v49 + 16);
    if (v90)
    {
      v82 = v1;
      v51 = 0;
      v81 = (v8 + 8);
      v80 = (v2 + 48);
      v75 = (v2 + 8);
      v74 = (v96 + 32);
      v78 = MEMORY[0x277D84F90];
      v52 = v79;
      v89 = v49;
      v86 = v20;
      while (1)
      {
        if (v51 >= *(v49 + 16))
        {
          __break(1u);
        }

        v53 = (*(v96 + 80) + 32) & ~*(v96 + 80);
        v54 = *(v96 + 72);
        v94(v97, v49 + v53 + v54 * v51, v20);
        inited = swift_initStackObject();
        *(inited + 16) = v92;
        v56 = v91;
        *(inited + 32) = v91;
        v57 = v56;
        sub_257BF2B04(inited);
        swift_setDeallocating();
        sub_257BF32AC(inited + 32);
        sub_257ECCAA0();
        v85 = v54;
        v58 = v53;

        v59 = v83;
        sub_257ECC910();
        (*v81)(v52, v84);
        v60 = v82;
        if ((*v80)(v59, 1, v82) == 1)
        {
          sub_257BE4084(v59, &qword_27F8F5780, &unk_257EDAA30);
        }

        else
        {
          v61 = v76;
          sub_257ECD880();
          v62 = sub_257ECD8A0();
          v63 = *v75;
          (*v75)(v61, v60);
          v63(v59, v60);
          if (v62)
          {
            v64 = *v74;
            (*v74)(v77, v97, v86);
            v65 = v78;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v98 = v65;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_257BF26C4(0, v65[2] + 1, 1);
              v65 = v98;
            }

            v67 = v79;
            v68 = v85;
            v70 = v65[2];
            v69 = v65[3];
            v49 = v89;
            if (v70 >= v69 >> 1)
            {
              sub_257BF26C4((v69 > 1), v70 + 1, 1);
              v65 = v98;
            }

            v65[2] = v70 + 1;
            v78 = v65;
            v20 = v86;
            v64(v65 + v58 + v70 * v68, v77, v86);
            v52 = v67;
            goto LABEL_15;
          }

          v52 = v79;
        }

        v20 = v86;
        v87(v97, v86);
        v49 = v89;
LABEL_15:
        if (v90 == ++v51)
        {
          goto LABEL_19;
        }
      }
    }

    v78 = MEMORY[0x277D84F90];
LABEL_19:

    return v78;
  }

  else
  {
    v71 = v98;
    v72 = sub_257ECC9F0();

    swift_willThrow();
    return MEMORY[0x277D84F90];
  }
}

uint64_t MagnifierStillImageStore.deinit()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
  v2 = sub_257ECCB70();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_thumbnailDirectory, v2);

  return v0;
}

uint64_t MagnifierStillImageStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_imageDirectory;
  v2 = sub_257ECCB70();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MagnifierSupport24MagnifierStillImageStore_thumbnailDirectory, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_257BF1E4C@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = sub_257ECCB70();
  return (*(*(v6 - 8) + 16))(a2, v4 + v5, v6);
}

void sub_257BF1ED4(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a2 = v3;
}

uint64_t sub_257BF1F54(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

unint64_t sub_257BF1FC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_257BF2094(v11, 0, 0, 1, a1, a2);
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
    sub_257BE41F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_257BF2094(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_257BF21A0(a5, a6);
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
    result = sub_257ED0320();
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

void *sub_257BF21A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_257BF21EC(a1, a2);
  sub_257BF231C(&unk_286903B58);
  return v3;
}

void *sub_257BF21EC(uint64_t a1, unint64_t a2)
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

  v6 = sub_257C74AF8(v5, 0);
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

  result = sub_257ED0320();
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
        v10 = sub_257ECF670();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_257C74AF8(v10, 0);
        result = sub_257ED02C0();
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

void sub_257BF231C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
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

  v3 = sub_257BF2408(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_257BF2408(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F57C8, &qword_257EDAB68);
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

unint64_t sub_257BF24FC()
{
  result = qword_27F8F5778;
  if (!qword_27F8F5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5778);
  }

  return result;
}

double sub_257BF2550(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

char *sub_257BF25A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C640FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF25C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64218(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF25E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C6422C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2604(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64360(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2624(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64494(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2644(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C645BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2664(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C646BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2684(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C647C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF26A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C648D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF26C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C649F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF26E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64A20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2704(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64B30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2724(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64B44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2744(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64C48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2764(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2784(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64DA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF27A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64E98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF27C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF27E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64FC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2804(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C650EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2824(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C651F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2844(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65454(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2864(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C649DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2884(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF28A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C656AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF28C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C658B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF28E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C658DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2904(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2924(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2944(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C64204(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2964(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C658F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2984(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF29A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65A04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF29C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65904(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF29E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65B68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2A04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65DA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2A24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65ED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2A44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2A64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65F20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2A84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2AA4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C65F44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_257BF2AC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C6609C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_257BF2AE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_257C662A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_257BF2B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F57C0, &qword_257EDAB60);
    v3 = sub_257ED02B0();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      sub_257ECF500();
      sub_257ED07B0();
      v26 = v7;
      sub_257ECF5D0();
      v8 = sub_257ED0800();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = sub_257ECF500();
        v17 = v16;
        if (v15 == sub_257ECF500() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = sub_257ED0640();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

void sub_257BF2CF8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_257ED0210())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5798, &qword_257EDAB40);
      v3 = sub_257ED02B0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_257ED0210();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    v8 = MEMORY[0x259C72E20](v6, v1);
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_257ECDCD0();
    sub_257BF3AB4(&unk_27F8F9E20, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    v10 = sub_257ECF3F0();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_257BF3AB4(&qword_27F8F57A0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        if (sub_257ECF450())
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);
  sub_257ECC3F0();
  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_257BF2F8C(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v45 = &v38 - v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F65C0, &qword_257EDCD30);
    v17 = sub_257ED02B0();
    v18 = 0;
    v20 = *(v3 + 16);
    v19 = v3 + 16;
    v43 = v20;
    v44 = v17 + 56;
    v21 = *(v19 + 64);
    v40 = v16;
    v41 = a1 + ((v21 + 32) & ~v21);
    v22 = *(v19 + 56);
    v23 = (v19 - 8);
    v39 = (v19 + 16);
    while (1)
    {
      v42 = v18;
      v43(v45, v41 + v22 * v18, v2);
      sub_257BF3AB4(&qword_27F8F57B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v24 = sub_257ECF3F0();
      v25 = ~(-1 << *(v17 + 32));
      v26 = v24 & v25;
      v27 = (v24 & v25) >> 6;
      v28 = *(v44 + 8 * v27);
      v29 = 1 << (v24 & v25);
      if ((v29 & v28) != 0)
      {
        while (1)
        {
          v30 = v19;
          v43(v9, *(v17 + 48) + v26 * v22, v2);
          sub_257BF3AB4(&qword_27F8F57B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v31 = sub_257ECF450();
          v32 = *v23;
          (*v23)(v9, v2);
          if (v31)
          {
            break;
          }

          v26 = (v26 + 1) & v25;
          v27 = v26 >> 6;
          v28 = *(v44 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          v19 = v30;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_8;
          }
        }

        v32(v45, v2);
        v19 = v30;
      }

      else
      {
LABEL_8:
        v33 = v45;
        *(v44 + 8 * v27) = v29 | v28;
        result = (*v39)(*(v17 + 48) + v26 * v22, v33, v2);
        v35 = *(v17 + 16);
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          __break(1u);
          return result;
        }

        *(v17 + 16) = v37;
      }

      v18 = v42 + 1;
      if (v42 + 1 == v40)
      {
        return v17;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_257BF32AC(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MagnifierStillImageStore(uint64_t a1)
{
  result = qword_281545BF8;
  if (!qword_281545BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257BF335C(uint64_t a1)
{
  result = sub_257ECCB70();
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

unint64_t sub_257BF35E0()
{
  result = qword_27F8F5790;
  if (!qword_27F8F5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5790);
  }

  return result;
}

uint64_t sub_257BF3634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6640, &unk_257EDAB50);
    v3 = sub_257ED02B0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_257ED07B0();

      sub_257ECF5D0();
      result = sub_257ED0800();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_257ED0640();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_257BF379C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_257ED0210())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F57A8, &qword_257EDAB48);
      v3 = sub_257ED02B0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_257ED0210();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x259C72E20](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_257ECFF40();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_257BF3A68();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_257ECFF50();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_257ECFF40();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_257BF3A68();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_257ECFF50();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_257BF3A68()
{
  result = qword_27F8F9CC0;
  if (!qword_27F8F9CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F9CC0);
  }

  return result;
}

uint64_t sub_257BF3AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257BF3B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F57D0, qword_257EDAB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BF3B74(unsigned __int8 a1)
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

uint64_t sub_257BF3D80()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_257BF3DC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_257BF9280(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_257BF3E08(uint64_t a1)
{
  v2 = sub_257BF95FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257BF3E44(uint64_t a1)
{
  v2 = sub_257BF95FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257BF3E80(void *a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5898, &qword_257EDAE18);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11, v12, v13, v14);
  v16 = &v18 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257BF95FC();
  sub_257ED0850();
  v19 = a2;
  HIBYTE(v18) = 0;
  sub_257BF96A4();
  sub_257ED05D0();
  if (!v4)
  {
    v19 = a3;
    HIBYTE(v18) = 1;
    sub_257ED05D0();
    v19 = a4;
    HIBYTE(v18) = 2;
    sub_257ED05D0();
  }

  return (*(v10 + 8))(v16, v9);
}

void sub_257BF4070(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_257BF9394(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
  }
}

uint64_t sub_257BF40F0(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 2u || (result = 0, (v1 - 3) >= 2) && v1 == 5)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_257ECF4C0();
    v6 = sub_257ECF4C0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v8 = sub_257ECF500();
    return v8;
  }

  return result;
}

void sub_257BF4250(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
LABEL_13:
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v5 = [objc_opt_self() bundleForClass_];
        v6 = sub_257ECF4C0();
        v7 = sub_257ECF4C0();
        v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

        sub_257ECF500();
        return;
      }

      v1 = sub_257ECF4C0();
      v9[4] = sub_257E5BD88;
      v9[5] = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_257E5BE70;
      v9[3] = &block_descriptor_5;
      v2 = _Block_copy(v9);
      v3 = AXLocStringForDeviceVariant();
      _Block_release(v2);

      if (v3)
      {
        sub_257ECF500();
      }

      else
      {
        __break(1u);
      }
    }
  }

  else if (a1 > 4u || a1 == 3 || AXDeviceSupportsBackTap())
  {
    goto LABEL_13;
  }
}

void sub_257BF46F4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0, &unk_257ED8210);
  MEMORY[0x28223BE20](v3 - 8, v4, v5, v6, v7);
  v9 = &v54 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0, &unk_257ED9E90);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v10, v11, v12, v13);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0, &unk_257ED8220);
  v60 = *(v16 - 8);
  *&v21 = MEMORY[0x28223BE20](v16, v17, v18, v19, v20).n128_u64[0];
  v59 = &v54 - v22;
  v67.receiver = v0;
  v67.super_class = ObjectType;
  v56 = ObjectType;
  objc_msgSendSuper2(&v67, sel_viewDidLoad, v21);
  v23 = *&v0[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_tableView];
  [v23 setDataSource_];
  [v23 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = sub_257ECF4C0();
  [v23 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v25];

  type metadata accessor for UIStepperLengthCell(0);
  v26 = swift_getObjCClassFromMetadata();
  v27 = sub_257ECF4C0();
  [v23 registerClass:v26 forCellReuseIdentifier:v27];

  v28 = sub_257ECF4C0();
  [v23 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v28];

  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = [v1 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_9;
  }

  v30 = v29;
  [v29 addSubview_];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v32 = v31;
  sub_257EB6FD8(v31, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  v33 = *&v1[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_colorPickerController];
  [v33 setSupportsAlpha_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v55 = v16;
  v34 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
  swift_beginAccess();
  v35 = *(v34 + 8);
  v36 = *(v34 + 32);
  v37 = *(v34 + 16);
  v61[0] = *v34;
  v61[1] = v35;
  v62 = v37;
  v63 = v36;
  v38 = qword_2815447E0;

  if (v38 != -1)
  {
    v39 = swift_once();
  }

  MEMORY[0x28223BE20](v39, v40, v41, v42, v43);
  *(&v54 - 2) = v61;
  sub_257ECFD50();

  v44 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v64 green:v65 blue:v66 alpha:1.0];
  [v33 setSelectedColor_];

  [v33 setDelegate_];
  v45 = *&v1[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_doorAttributesController];
  *(&v62 + 1) = v56;
  v63 = &off_2869081C8;
  v61[0] = v1;
  v46 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_delegate;
  swift_beginAccess();
  v47 = v1;
  sub_257BFB190(v61, v45 + v46);
  swift_endAccess();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0, &qword_257EDA0C0);
  sub_257ECDD30();
  swift_endAccess();
  v48 = [objc_opt_self() mainRunLoop];
  v61[0] = v48;
  v49 = sub_257ED0080();
  (*(*(v49 - 8) + 56))(v9, 1, 1, v49);
  sub_257BD2C2C(0, &unk_281543D40, 0x277CBEB88);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0, &unk_257ED9E90, MEMORY[0x277CBCEC8]);
  sub_257BD2C74();
  v50 = v58;
  v51 = v59;
  sub_257ECDDF0();
  sub_257BE4084(v9, &unk_27F8F4DB0, &unk_257ED8210);

  (*(v57 + 8))(v15, v50);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0, &unk_257ED8220, MEMORY[0x277CBCD60]);
  v52 = v55;
  v53 = sub_257ECDE50();

  (*(v60 + 8))(v51, v52);
  *&v47[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_speechFeedbackSubscription] = v53;
}

void sub_257BF4E84(uint64_t a1, uint64_t a2)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v15[7] == 1)
    {
      [v11 beginUpdates];
      MEMORY[0x259C6F970](1, 2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
      v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_257ED6D30;
      (*(v3 + 16))(v13 + v12, v9, v2);
      v14 = sub_257ECF7F0();

      [v11 reloadRowsAtIndexPaths:v14 withRowAnimation:100];

      [v11 endUpdates];
      (*(v3 + 8))(v9, v2);
    }

    else
    {
    }
  }
}

void sub_257BF5118(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257BF52D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v10 = byte_286903D40[v6 + 32];
    if (v10 != 3)
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
      v25 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2744(0, *(v7 + 16) + 1, 1);
        v7 = v25;
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257BF2744((v8 > 1), v9 + 1, 1);
        v7 = v25;
      }

      *(v7 + 16) = v9 + 1;
      *(v7 + v9 + 32) = v10;
    }

    ++v6;
  }

  while (v6 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_availableDoorDetectionFeedbacks] = v7;
  v11 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_tableView;
  v12 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 systemYellowColor];
  [v14 setTintColor_];

  [v14 setClipsToBounds_];
  *&v4[v11] = v14;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  v16 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_colorPickerController;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v17 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_doorAttributesController;
  type metadata accessor for DoorAttributeCustomizationViewController();
  *&v4[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
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

id sub_257BF55C8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v8 = byte_286903D68[v4 + 32];
    if (v8 != 3)
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
      v20 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2744(0, *(v5 + 16) + 1, 1);
        v5 = v20;
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_257BF2744((v6 > 1), v7 + 1, 1);
        v5 = v20;
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + v7 + 32) = v8;
    }

    ++v4;
  }

  while (v4 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_availableDoorDetectionFeedbacks] = v5;
  v9 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_tableView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemYellowColor];
  [v12 setTintColor_];

  [v12 setClipsToBounds_];
  *&v2[v9] = v12;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_speechFeedbackSubscription] = 0;
  v14 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_colorPickerController;
  *&v2[v14] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v15 = OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_doorAttributesController;
  type metadata accessor for DoorAttributeCustomizationViewController();
  *&v2[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_initWithCoder_, a1);

  if (v16)
  {
  }

  return v16;
}

void sub_257BF5900()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_tableView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570, &unk_257EDA110);
  sub_257ECCEB0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  MEMORY[0x259C6F990](0, 5);
  v2 = sub_257ECF7F0();

  [v1 reloadRowsAtIndexPaths:v2 withRowAnimation:5];
}

char *sub_257BF5A80(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0, &unk_257EDAE70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v247 - v8;
  v10 = sub_257ECCEA0();
  v11 = sub_257BF9768(v10);
  if (v11 != 7)
  {
    if (v11 - 5 < 2)
    {
      if (sub_257ECCE60() == 1)
      {
        v15 = sub_257ECF4C0();
        v16 = sub_257ECCE30();
        v14 = [a1 dequeueReusableCellWithIdentifier:v15 forIndexPath:v16];
      }

      else
      {
        v19 = objc_allocWithZone(MEMORY[0x277D75B48]);
        v16 = sub_257ECF4C0();
        v14 = [v19 initWithStyle:1 reuseIdentifier:v16];
      }

      goto LABEL_11;
    }

    if (v11 == 1)
    {
      v17 = sub_257ECF4C0();
      v18 = sub_257ECCE30();
      v14 = [a1 dequeueReusableCellWithIdentifier:v17 forIndexPath:v18];

      goto LABEL_30;
    }
  }

  v12 = sub_257ECF4C0();
  v13 = sub_257ECCE30();
  v14 = [a1 dequeueReusableCellWithIdentifier:v12 forIndexPath:v13];

  if (v11 == 7)
  {
    return v14;
  }

LABEL_11:
  if (v11 <= 2u)
  {
    if (!v11)
    {
      v112 = sub_257ECCE60();
      if (v112)
      {
        if (v112 != 1)
        {
          return v14;
        }

        v113 = 1;
      }

      else
      {
        v113 = 0;
      }

      v204 = [v14 textLabel];
      if (v204)
      {
        v205 = v204;
        sub_257C69A6C(v113);
        v206 = sub_257ECF4C0();

        [v205 setText_];
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v207 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
      swift_beginAccess();
      v208 = *(v207 + 8);
      v209 = *(v207 + 16);
      v261 = *v207;
      v262 = v208;
      LOBYTE(v263) = v209;
      v210 = qword_2815447E0;

      if (v210 != -1)
      {
        v211 = swift_once();
      }

      MEMORY[0x28223BE20](v211, v212, v213, v214, v215);
      *(&v247 - 2) = &v261;
      sub_257ECFD50();

      if ((v113 ^ v258))
      {
        v216 = 0;
      }

      else
      {
        v216 = 3;
      }

      [v14 setAccessoryType_];
      [v14 setAccessoryView_];
      return v14;
    }

    if (v11 == 1)
    {
LABEL_30:
      type metadata accessor for UIStepperLengthCell(0);
      if (swift_dynamicCastClass())
      {
        v62 = qword_281544FE0;
        v63 = v14;
        if (v62 != -1)
        {
          v246 = v63;
          swift_once();
          v63 = v246;
        }

        v252 = v63;
        v64 = qword_281548348;
        v65 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold);
        swift_beginAccess();
        v66 = v65[1];
        v67 = v65[2];
        v261 = *v65;
        v262 = v66;
        v263 = v67;
        v68 = qword_2815447E0;

        if (v68 != -1)
        {
          v69 = swift_once();
        }

        MEMORY[0x28223BE20](v69, v70, v71, v72, v73);
        *(&v247 - 2) = &v261;
        sub_257ECFD50();

        v74 = v64 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
        v75 = swift_beginAccess();
        v76 = *(v74 + 8);
        v77 = *(v74 + 16);
        v258 = *v74;
        v259 = v76;
        LOBYTE(v260) = v77;
        MEMORY[0x28223BE20](v75, v78, v79, v80, v81);
        *(&v247 - 2) = &v258;

        sub_257ECFD50();

        v82 = v253;
        v83 = objc_opt_self();
        v84 = &selRef_feet;
        if (!v82)
        {
          v84 = &selRef_meters;
        }

        v85 = [v83 *v84];
        sub_257BD2C2C(0, &qword_27F8F58F0, 0x277CCAE20);
        sub_257ECC740();
        sub_257D3DB54(v9, sub_257BF79F0, 0);
        v14 = v252;

        (*(v3 + 8))(v9, v2);
      }

      return v14;
    }

    v114 = *&v252[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_availableDoorDetectionFeedbacks];
    v115 = sub_257ECCE60();
    if ((v115 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_131:
      swift_once();
LABEL_73:
      v137 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled;
      swift_beginAccess();
      v138 = *(v137 + 8);
      v139 = *(v137 + 16);
      v261 = *v137;
      v262 = v138;
      LOBYTE(v263) = v139;
      v140 = qword_2815447E0;

      if (v140 != -1)
      {
        v141 = swift_once();
      }

      MEMORY[0x28223BE20](v141, v142, v143, v144, v145);
      *(&v247 - 2) = &v261;
      sub_257ECFD50();

      [v2 setOn_];
      [v2 addTarget:v252 action:sel_didToggleBackTapSwitch_ forControlEvents:4096];
      v14 = v114;
      [v114 setAccessoryView_];
      [v114 setAccessoryType_];

      return v14;
    }

    if (v115 >= *(v114 + 2))
    {
      __break(1u);
    }

    else
    {
      v2 = v114[v115 + 32];
      v116 = [v14 textLabel];
      if (v116)
      {
        v117 = v116;
        sub_257BF3B74(v2);
        v118 = sub_257ECF4C0();

        [v117 setText_];
      }

      v114 = v14;
      v9 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      if (qword_281544FE0 == -1)
      {
        goto LABEL_65;
      }
    }

    swift_once();
LABEL_65:
    v119 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedDoorDetectionFeedbacks);
    swift_beginAccess();
    v120 = v119[1];
    v121 = v119[2];
    v261 = *v119;
    v262 = v120;
    v263 = v121;
    v122 = qword_2815447E0;

    if (v122 != -1)
    {
      v123 = swift_once();
    }

    MEMORY[0x28223BE20](v123, v124, v125, v126, v127);
    *(&v247 - 2) = &v261;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880, qword_257EDACA0);
    sub_257ECFD50();

    v128 = sub_257C592D0(v2, v258);

    [v9 setOn_];
    v129 = v9;
    [v129 setTag_];
    [v129 addTarget:v252 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
    v14 = v114;
    [v114 setAccessoryView_];

    [v114 setAccessoryType_];
    return v14;
  }

  if (v11 <= 4u)
  {
    if (v11 == 3)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v249 = objc_opt_self();
      v250 = ObjCClassFromMetadata;
      v21 = [v249 bundleForClass_];
      v251 = "detectionSection.name.backTap";
      v22 = sub_257ECF4C0();
      v23 = sub_257ECF4C0();
      v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

      v25 = v24;
      v26 = v24;
      if (!v24)
      {
        sub_257ECF500();
        v26 = sub_257ECF4C0();

        sub_257ECF500();
        v25 = sub_257ECF4C0();
      }

      v27 = v24;
      v28 = [v14 textLabel];
      if (v28)
      {
        v29 = v28;
        [v28 setText_];
      }

      v30 = [v14 textLabel];
      if (v30)
      {
        v31 = v30;
        [v30 setNumberOfLines_];
      }

      v32 = [v14 textLabel];
      if (v32)
      {
        v33 = v32;
        [v32 setLineBreakMode_];
      }

      [v14 setAccessoryType_];
      [v14 setShowsReorderControl_];
      v34 = objc_opt_self();
      v35 = *MEMORY[0x277D76918];
      v36 = [v34 preferredFontForTextStyle_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F82F0, &qword_257EE4000);
      inited = swift_initStackObject();
      v38 = MEMORY[0x277D740A8];
      *(inited + 16) = xmmword_257ED6D30;
      v39 = *v38;
      *(inited + 32) = v39;
      *(inited + 40) = v36;
      v40 = v39;
      v248 = v36;
      v41 = sub_257BE8D30(inited);
      swift_setDeallocating();
      sub_257BE4084(inited + 32, &unk_27F8F58D0, &qword_257EDAE80);
      sub_257DF2814(v41);

      _s3__C3KeyVMa_0(0);
      sub_257BFB0F4(&qword_27F8F8300, _s3__C3KeyVMa_0, &unk_257ED9A34);
      v42 = sub_257ECF3C0();

      [v25 sizeWithAttributes_];

      v43 = [v34 preferredFontForTextStyle_];
      [v43 lineHeight];
      v45 = v44;

      v46 = sub_257ECF4C0();
      v47 = objc_opt_self();
      v48 = [v47 systemImageNamed_];

      if (v48)
      {
        v49 = v14;
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v50 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
        swift_beginAccess();
        v51 = *(v50 + 8);
        v52 = *(v50 + 32);
        v53 = *(v50 + 16);
        v254 = *v50;
        v255 = v51;
        v256 = v53;
        v257 = v52;
        v54 = qword_2815447E0;

        if (v54 != -1)
        {
          v55 = swift_once();
        }

        MEMORY[0x28223BE20](v55, v56, v57, v58, v59);
        *(&v247 - 2) = &v254;
        sub_257ECFD50();

        v60 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v261 green:v262 blue:v263 alpha:1.0];
        v61 = [v48 imageWithTintColor_];

        v14 = v49;
      }

      else
      {
        v61 = 0;
      }

      v179 = sub_257ECF4C0();
      v180 = [v47 systemImageNamed_];

      v181 = 0.0;
      if (v180)
      {
        v182 = [objc_opt_self() systemGrayColor];
        v183 = [v180 imageWithTintColor_];

        v184 = [v34 preferredFontForTextStyle_];
        v185 = [objc_opt_self() configurationWithFont_];

        v186 = [v183 imageWithSymbolConfiguration_];
        if (v186)
        {
          [v186 size];
          v181 = v187;
        }
      }

      else
      {
        v186 = 0;
      }

      v264.width = v45 + v181 + 5.0;
      v264.height = v45;
      UIGraphicsBeginImageContextWithOptions(v264, 0, 0.0);
      v188 = [objc_opt_self() sharedApplication];
      v189 = [v188 userInterfaceLayoutDirection];

      if (!v189)
      {
        if (v61)
        {
          [v61 drawInRect_];
        }

        if (!v186)
        {
          goto LABEL_124;
        }

        v199 = v45 + 5.0;
        v197 = v186;
        [v197 size];
        v195 = (v45 - v200) * 0.5;
        [v197 size];
        v45 = v201;
        [v197 size];
        v203 = v202;
        goto LABEL_123;
      }

      if (v186)
      {
        v190 = v186;
        [v190 size];
        v192 = (v45 - v191) * 0.5;
        [v190 size];
        v194 = v193;
        [v190 size];
        v195 = 0.0;
        [v190 drawInRect_];

        if (v61)
        {
          v197 = v61;
          [v190 size];
          v199 = v198 + 5.0;
LABEL_122:
          v203 = v45;
LABEL_123:
          [v197 drawInRect_];
        }
      }

      else if (v61)
      {
        v197 = v61;
        v195 = 0.0;
        v199 = 5.0;
        goto LABEL_122;
      }

LABEL_124:
      v247 = v61;
      v217 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      v218 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
      v252 = v14;
      [v14 setAccessoryView_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0, &unk_257ED9D90);
      v219 = swift_allocObject();
      *(v219 + 16) = xmmword_257ED9BD0;
      v220 = [v249 bundleForClass_];
      v221 = sub_257ECF4C0();
      v222 = sub_257ECF4C0();
      v223 = [v220 localizedStringForKey:v221 value:0 table:v222];

      v224 = sub_257ECF500();
      v226 = v225;

      v227 = MEMORY[0x277D837D0];
      *(v219 + 56) = MEMORY[0x277D837D0];
      v228 = sub_257BFB13C();
      *(v219 + 64) = v228;
      *(v219 + 32) = v224;
      *(v219 + 40) = v226;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v229 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
      swift_beginAccess();
      v230 = *(v229 + 8);
      v231 = *(v229 + 32);
      v232 = *(v229 + 16);
      v254 = *v229;
      v255 = v230;
      v256 = v232;
      v257 = v231;
      v233 = qword_2815447E0;

      if (v233 != -1)
      {
        v234 = swift_once();
      }

      MEMORY[0x28223BE20](v234, v235, v236, v237, v238);
      *(&v247 - 2) = &v254;
      sub_257ECFD50();

      v239 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*&v258 green:v259 blue:v260 alpha:1.0];
      v240 = [v239 _accessibilityNameWithLuma];

      v241 = sub_257ECF500();
      v243 = v242;

      *(v219 + 96) = v227;
      *(v219 + 104) = v228;
      *(v219 + 72) = v241;
      *(v219 + 80) = v243;
      sub_257ECF540();
      v244 = sub_257ECF4C0();

      v14 = v252;
      [v252 setAccessibilityLabel_];

      return v14;
    }

    v130 = [v14 textLabel];
    if (v130)
    {
      v131 = v130;
      type metadata accessor for MAGUtilities();
      v132 = swift_getObjCClassFromMetadata();
      v133 = [objc_opt_self() bundleForClass_];
      v134 = sub_257ECF4C0();
      v135 = sub_257ECF4C0();
      v136 = [v133 localizedStringForKey:v134 value:0 table:v135];

      if (!v136)
      {
        sub_257ECF500();
        v136 = sub_257ECF4C0();
      }

      [v131 setText_];
    }

    v114 = v14;
    v2 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    if (qword_281544FE0 == -1)
    {
      goto LABEL_73;
    }

    goto LABEL_131;
  }

  if (v11 == 5)
  {
    sub_257BF9814();
    v86 = sub_257BF9BD0();
    v87 = [v14 textLabel];
    if (v87)
    {
      v88 = v87;
      [v87 setNumberOfLines_];
    }

    v89 = [v14 textLabel];
    if (v89)
    {
      v90 = v89;
      [v89 setLineBreakMode_];
    }

    [v14 setAccessoryType_];
    [v14 setShowsReorderControl_];
    v91 = [v14 textLabel];
    if (v91)
    {
      v92 = v91;
      type metadata accessor for MAGUtilities();
      v93 = swift_getObjCClassFromMetadata();
      v94 = [objc_opt_self() bundleForClass_];
      v95 = sub_257ECF4C0();
      v96 = sub_257ECF4C0();
      v97 = [v94 localizedStringForKey:v95 value:0 table:v96];

      if (!v97)
      {
        sub_257ECF500();
        v97 = sub_257ECF4C0();
      }

      [v92 setText_];
    }

    v98 = [v14 textLabel];
    if (v98)
    {
      v99 = 0.5;
      if (v86)
      {
        v99 = 1.0;
      }

      v100 = v98;
      [v98 setAlpha_];
    }

    v101 = [v14 detailTextLabel];
    if (v101)
    {
      v102 = v101;
      type metadata accessor for MAGUtilities();
      v103 = swift_getObjCClassFromMetadata();
      v104 = [objc_opt_self() bundleForClass_];
      v105 = sub_257ECF4C0();
      v106 = sub_257ECF4C0();
      v107 = [v104 localizedStringForKey:v105 value:0 table:v106];

      sub_257ECF500();
      v108 = sub_257ECF4C0();

      [v102 setText_];
    }

    v109 = [v14 detailTextLabel];
    if (v109)
    {
      v110 = 0.5;
      if (v86)
      {
        v110 = 1.0;
      }

      v111 = v109;
      [v109 setAlpha_];
    }
  }

  else
  {
    sub_257BF9E68();
    v146 = [v14 textLabel];
    if (v146)
    {
      v147 = v146;
      type metadata accessor for MAGUtilities();
      v148 = swift_getObjCClassFromMetadata();
      v149 = [objc_opt_self() bundleForClass_];
      v150 = sub_257ECF4C0();
      v151 = sub_257ECF4C0();
      v152 = [v149 localizedStringForKey:v150 value:0 table:v151];

      if (!v152)
      {
        sub_257ECF500();
        v152 = sub_257ECF4C0();
      }

      [v147 setText_];
    }

    v153 = v14;
    v154 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v155 = sub_257BFA338();
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v156 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    swift_beginAccess();
    v157 = *(v156 + 8);
    v158 = *(v156 + 16);
    v261 = *v156;
    v262 = v157;
    LOBYTE(v263) = v158;
    v159 = qword_2815447E0;

    if (v159 != -1)
    {
      v160 = swift_once();
    }

    MEMORY[0x28223BE20](v160, v161, v162, v163, v164);
    *(&v247 - 2) = &v261;
    sub_257ECFD50();

    [v154 setOn_];
    v165 = v154;
    [v165 setUserInteractionEnabled_];
    [v165 addTarget:v252 action:sel_didToggleDecorationsSwitch_ forControlEvents:4096];
    [v153 setUserInteractionEnabled_];
    [v153 setAccessoryView_];
    [v153 setAccessoryType_];
    v166 = [v153 imageView];
    if (v166)
    {
      v167 = v166;
      [v166 setImage_];
    }

    v168 = [v153 textLabel];
    if (v168)
    {
      v169 = v168;
      v170 = [objc_opt_self() labelColor];
      [v169 setTextColor_];
    }

    v171 = [v153 textLabel];
    if (v155)
    {
      v172 = 1.0;
    }

    else
    {
      v172 = 0.5;
    }

    if (v171)
    {
      v173 = v171;
      [v171 setAlpha_];
    }

    [v165 setAlpha_];

    type metadata accessor for MAGUtilities();
    v174 = swift_getObjCClassFromMetadata();
    v175 = [objc_opt_self() bundleForClass_];
    v176 = sub_257ECF4C0();
    v177 = sub_257ECF4C0();
    v178 = [v175 localizedStringForKey:v176 value:0 table:v177];

    if (!v178)
    {
      sub_257ECF500();
      v178 = sub_257ECF4C0();
    }

    v14 = v153;
    [v153 setAccessibilityLabel_];
  }

  return v14;
}

uint64_t sub_257BF79F0(double a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold;
  swift_beginAccess();
  v18 = a1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v11 = sub_257ECF110();
  MEMORY[0x28223BE20](v11, v12, v13, v14, v15);
  *&v17[-16] = &v18;
  *&v17[-8] = v10;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  return swift_endAccess();
}

id sub_257BF7E0C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(unint64_t, void))
{
  sub_257BFB060(a4, a5);
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

void sub_257BF7F40(void *a1)
{
  v2 = v1;
  v4 = sub_257ECCDF0();
  v100 = *(v4 - 8);
  v101 = v4;
  MEMORY[0x28223BE20](v4, v5, v6, v7, v8);
  v99 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECDA30();
  v98 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11, v12, v13, v14);
  v16 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_257ECCEB0();
  v97 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18, v19, v20, v21);
  v23 = v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_257ECF120();
  v24 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v25, v26, v27, v28);
  v30 = v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_257ECCE30();
  v103 = [a1 cellForRowAtIndexPath_];

  if (!v103)
  {
    return;
  }

  v32 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v32 animated:1];

  v33 = sub_257ECCEA0();
  v34 = sub_257BF9768(v33);
  if (v34 <= 3)
  {
    if (v34 > 1)
    {
      if (v34 != 2)
      {
        [v1 presentViewController:*&v1[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_colorPickerController] animated:1 completion:0];
      }
    }

    else if (!v34)
    {
      v35 = sub_257ECCE60();
      if (!v35)
      {
        v96 = 0;
        goto LABEL_19;
      }

      if (v35 == 1)
      {
        v96 = 1;
LABEL_19:
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v94 = qword_281548348;
        v40 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionUnit;
        swift_beginAccess();
        v41 = *v40;
        v42 = *(v40 + 8);
        v93 = v40;
        v43 = *(v40 + 16);
        *&v104 = v41;
        *(&v104 + 1) = v42;
        LOBYTE(v105) = v43;
        v44 = qword_2815447E0;

        if (v44 != -1)
        {
          v45 = swift_once();
        }

        v95 = v91;
        v50 = qword_2815447E8;
        MEMORY[0x28223BE20](v45, v46, v47, v48, v49);
        v91[-2] = &v104;
        sub_257ECFD50();

        if (v96 != LOBYTE(v107[0]))
        {
          v51 = v93;
          v95 = 0;
          v52 = v96;
          swift_beginAccess();
          LOBYTE(v107[0]) = v52;
          v53 = sub_257ECF110();
          v92 = v91;
          MEMORY[0x28223BE20](v53, v54, v55, v56, v57);
          v91[-2] = v107;
          v91[-1] = v51;
          v93 = v50;
          v58 = v95;
          sub_257ECFD40();
          v91[1] = v58;
          v59 = *(v24 + 8);
          v95 = (v24 + 8);
          v92 = v59;
          v59(v30, v102);
          swift_endAccess();
          ++v97;
          MEMORY[0x259C6F970](byte_286903DB0, 0);
          v60 = sub_257ECCE30();
          v61 = [a1 cellForRowAtIndexPath_];

          if (v61)
          {
            [v61 setAccessoryType_];
          }

          v62 = *v97;
          (*v97)(v23, v17);
          MEMORY[0x259C6F970](byte_286903DB1, 0);
          v63 = sub_257ECCE30();
          v64 = [a1 cellForRowAtIndexPath_];

          if (v64)
          {
            [v64 setAccessoryType_];
          }

          v62(v23, v17);
          [v103 setAccessoryType_];
          sub_257ECD420();
          v65 = sub_257ECDA20();
          v66 = sub_257ECFBD0();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = v96;
            v68 = swift_slowAlloc();
            *v68 = 134217984;
            *(v68 + 4) = v67;
            _os_log_impl(&dword_257BAC000, v65, v66, "New door detection unit: %ld", v68, 0xCu);
            MEMORY[0x259C74820](v68, -1, -1);
          }

          (*(v98 + 8))(v16, v10);
          if (v96)
          {
            v69 = 6.0;
          }

          else
          {
            v69 = 2.0;
          }

          v70 = v94;
          v71 = v94 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionPitchThreshold;
          swift_beginAccess();
          v107[0] = *&v69;
          v72 = sub_257ECF110();
          MEMORY[0x28223BE20](v72, v73, v74, v75, v76);
          v91[-2] = v107;
          v91[-1] = v71;
          sub_257ECFD40();
          v77 = v102;
          v78 = v92;
          v92(v30, v102);
          swift_endAccess();
          v79 = v70 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionPitchThreshold;
          swift_beginAccess();
          v107[0] = *&v69;
          v80 = sub_257ECF110();
          MEMORY[0x28223BE20](v80, v81, v82, v83, v84);
          v91[-2] = v107;
          v91[-1] = v79;
          sub_257ECFD40();
          v78(v30, v77);
          swift_endAccess();
          [a1 beginUpdates];
          *&v104 = &unk_286903DB8;
          sub_257BFB0F4(&qword_27F8F58A0, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80, &qword_257EDD430);
          sub_257BD2D4C(&qword_27F8F58B0, &unk_27F8F4D80, &qword_257EDD430, MEMORY[0x277D83970]);
          v85 = v99;
          v86 = v101;
          sub_257ED0180();
          v87 = sub_257ECCDE0();
          (*(v100 + 8))(v85, v86);
          [a1 reloadSections:v87 withRowAnimation:100];

          [a1 endUpdates];
        }

        goto LABEL_43;
      }
    }

    goto LABEL_15;
  }

  if (v34 > 5 || v34 == 4 || (v36 = [objc_opt_self() shared], v37 = objc_msgSend(v36, sel_doorAttributesClassifierProperties), v36, !v37))
  {
LABEL_15:
    v39 = v103;

    return;
  }

  *&v104 = 0xD000000000000017;
  *(&v104 + 1) = 0x8000000257EF93E0;
  v38 = [v37 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v38)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v104 = 0u;
    v105 = 0u;
  }

  v106[0] = v104;
  v106[1] = v105;
  if (!*(&v105 + 1))
  {

    sub_257BE4084(v106, &unk_27F8F62F0, &unk_257ED9D30);
    return;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_43:
    return;
  }

  v88 = v107[0];
  if ([v107[0] count] >= 1)
  {
    v89 = [v2 navigationController];
    if (v89)
    {
      v90 = v89;
      [v89 pushViewController:*&v2[OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_doorAttributesController] animated:1];
    }
  }
}

void sub_257BF8BA4(void *a1)
{
  v3 = v1;
  v5 = sub_257ECF120();
  v6 = *(v5 - 8);
  *&v11 = MEMORY[0x28223BE20](v5, v7, v8, v9, v10).n128_u64[0];
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 selectedColor];
  v15 = [v14 CGColor];

  v16 = sub_257ECFB30();
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &unk_286903DE0;
  }

  if (qword_281544FE0 == -1)
  {
    v18 = v17[2];
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v17;
  swift_once();
  v17 = v16;
  v18 = v16[2];
  if (!v18)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (v18 == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v18 >= 3)
  {
    v16 = qword_281548348;
    v19 = v17[4];
    v20 = v17[5];
    v21 = v17[6];

    v2 = v16 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
    swift_beginAccess();
    v70[0] = v19;
    v70[1] = v20;
    v70[2] = v21;
    if (qword_2815447E0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  swift_once();
LABEL_9:
  v22 = sub_257ECF110();
  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  *(&v61 - 2) = v70;
  *(&v61 - 1) = v2;
  sub_257ECFD40();
  (*(v6 + 8))(v13, v5);
  swift_endAccess();
  [*(v3 + OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_tableView) reloadData];
  v27 = swift_beginAccess();
  v28 = v16[16];
  v29 = v16[17];
  v30 = v16[18];
  v61 = v16[15];
  v62 = v28;
  *&v63 = v29;
  *(&v63 + 1) = v30;
  MEMORY[0x28223BE20](v27, v31, v32, v33, v34);
  *(&v61 - 2) = &v61;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v35 = v69;
  if (!v69)
  {
    return;
  }

  v36 = v68;
  v37 = swift_beginAccess();
  v38 = v16[12];
  v39 = v16[13];
  v61 = v16[11];
  v62 = v38;
  *&v63 = v39;
  MEMORY[0x28223BE20](v37, v40, v41, v42, v43);
  *(&v61 - 2) = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
  sub_257ECFD50();

  v45 = v65;
  if (!*(*&v65 + 16))
  {

    goto LABEL_17;
  }

  v46 = sub_257C03F6C(v36, v35);
  v48 = v47;

  if ((v48 & 1) == 0)
  {
LABEL_17:

    return;
  }

  v49 = (*(*&v45 + 56) + 296 * v46);
  v51 = v49[17];
  v50 = v49[18];
  v52 = v49[19];

  v54 = *(v2 + 1);
  v55 = *(v2 + 4);
  v56 = *(v2 + 1);
  v61 = *v2;
  v62 = v54;
  v63 = v56;
  v64 = v55;
  MEMORY[0x28223BE20](v53, v57, v58, v59, v60);
  *(&v61 - 2) = &v61;

  sub_257ECFD50();

  if (v51 != v65 || v50 != v66 || v52 != v67)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v61) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MagnifierColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MagnifierColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_257BF91E8()
{
  result = qword_27F8F5870;
  if (!qword_27F8F5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5870);
  }

  return result;
}

uint64_t sub_257BF9280(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_257ED0640() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_257ED0640() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_257ED0640();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_257BF9394(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5890, &qword_257EDAE10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257BF95FC();
  sub_257ED0840();
  v13 = 0;
  sub_257BF9650();
  sub_257ED0540();
  v10 = v14;
  v13 = 1;
  sub_257ED0540();
  v13 = 2;
  sub_257ED0540();
  (*(v3 + 8))(v9, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_257BF95FC()
{
  result = qword_281545AC8[0];
  if (!qword_281545AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281545AC8);
  }

  return result;
}

unint64_t sub_257BF9650()
{
  result = qword_281545C10;
  if (!qword_281545C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545C10);
  }

  return result;
}

unint64_t sub_257BF96A4()
{
  result = qword_281545C30;
  if (!qword_281545C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545C30);
  }

  return result;
}

unint64_t sub_257BF96F8()
{
  result = qword_2815446C8;
  if (!qword_2815446C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815446C8);
  }

  return result;
}

unint64_t sub_257BF9768(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_257BF9778(uint64_t result)
{
  if (result <= 2)
  {
    switch(result)
    {
      case 0:
        return 2;
      case 1:
        return result;
      case 2:
        return *(*(v1 + OBJC_IVAR____TtC16MagnifierSupport35DoorDetectionSettingsViewController_availableDoorDetectionFeedbacks) + 16);
    }
  }

  else
  {
    if (result <= 4)
    {
      if (result != 3)
      {
        return AXDeviceSupportsBackTap();
      }

      return 1;
    }

    if (result == 5 || result == 6)
    {
      return 1;
    }
  }

  return 0;
}

void sub_257BF9814()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() shared];
  v9 = [v8 downloadManager];

  v10 = sub_257ECF4C0();
  [v9 totalDownloadedWithName_];
  v12 = v11;

  if (v12 >= 100.0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v13 = qword_281548348;
    *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloaded) = 1;
    *(v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloading) = 0;
    v14 = v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorAttributesToggledOnAfterSuccessfulDownload;
    swift_beginAccess();
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v35[0] = *v14;
    v35[1] = v15;
    v36 = v16;
    v17 = qword_2815447E0;

    if (v17 != -1)
    {
      v18 = swift_once();
    }

    MEMORY[0x28223BE20](v18, v19, v20, v21, v22);
    v35[-2] = v35;
    sub_257ECFD50();

    if ((v37 & 1) == 0)
    {
      swift_beginAccess();
      v37 = 1;
      v23 = sub_257ECF110();
      MEMORY[0x28223BE20](v23, v24, v25, v26, v27);
      v35[-2] = &v37;
      v35[-1] = v14;
      sub_257ECFD40();
      v28 = *(v1 + 8);
      v28(v7, v0);
      swift_endAccess();
      v29 = v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
      swift_beginAccess();
      v37 = 1;
      v30 = sub_257ECF110();
      MEMORY[0x28223BE20](v30, v31, v32, v33, v34);
      v35[-2] = &v37;
      v35[-1] = v29;
      sub_257ECFD40();
      v28(v7, v0);
      swift_endAccess();
    }
  }
}

uint64_t sub_257BF9BD0()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 doorAttributesClassifierProperties];

  if (!v1)
  {
    return 0;
  }

  *&v12 = 0xD000000000000017;
  *(&v12 + 1) = 0x8000000257EF93E0;
  v2 = [v1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {

    sub_257BE4084(v14, &unk_27F8F62F0, &unk_257ED9D30);
    return 0;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v3 = [v11 count];

  if (v3 <= 0)
  {
    return 0;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_2815447E0;

  if (v4 != -1)
  {
    v5 = swift_once();
  }

  MEMORY[0x28223BE20](v5, v6, v7, v8, v9);
  sub_257ECFD50();

  return v11;
}

void sub_257BF9E68()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2, v3, v4, v5);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() shared];
  v9 = [v8 downloadManager];

  v10 = sub_257ECF4C0();
  [v9 totalDownloadedWithName_];
  v12 = v11;

  if (v12 < 100.0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v13 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    swift_beginAccess();
    LOBYTE(v41[0]) = 0;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v14 = sub_257ECF110();
    MEMORY[0x28223BE20](v14, v15, v16, v17, v18);
    v41[-2] = v41;
    v41[-1] = v13;
    sub_257ECFD40();
    (*(v1 + 8))(v7, v0);
    goto LABEL_13;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v19 = qword_281548348;
  *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloaded) = 1;
  *(v19 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloading) = 0;
  v20 = v19 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorSignsToggledOnAfterSuccessfulDownload;
  swift_beginAccess();
  v21 = *(v20 + 8);
  v22 = *(v20 + 16);
  v41[0] = *v20;
  v41[1] = v21;
  v42 = v22;
  v23 = qword_2815447E0;

  if (v23 != -1)
  {
    v24 = swift_once();
  }

  MEMORY[0x28223BE20](v24, v25, v26, v27, v28);
  v41[-2] = v41;
  sub_257ECFD50();

  if ((v43 & 1) == 0)
  {
    swift_beginAccess();
    LOBYTE(v43) = 1;
    v29 = sub_257ECF110();
    MEMORY[0x28223BE20](v29, v30, v31, v32, v33);
    v41[-2] = &v43;
    v41[-1] = v20;
    sub_257ECFD40();
    v34 = *(v1 + 8);
    v34(v7, v0);
    swift_endAccess();
    v35 = v19 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    swift_beginAccess();
    LOBYTE(v43) = 1;
    v36 = sub_257ECF110();
    MEMORY[0x28223BE20](v36, v37, v38, v39, v40);
    v41[-2] = &v43;
    v41[-1] = v35;
    sub_257ECFD40();
    v34(v7, v0);
LABEL_13:
    swift_endAccess();
  }
}

BOOL sub_257BFA338()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 signDetectorProperties];

  if (v1)
  {
    *&v6 = 0xD000000000000013;
    *(&v6 + 1) = 0x8000000257EF9700;
    v2 = [v1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v2)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      sub_257BD2C2C(0, &unk_27F8F58C0, 0x277CBEAC0);
      if (swift_dynamicCast())
      {
        v3 = [v5 count];

        return v3 > 0;
      }
    }

    else
    {

      sub_257BE4084(v8, &unk_27F8F62F0, &unk_257ED9D30);
    }
  }

  return 0;
}

double sub_257BFA4C4(void *a1)
{
  v2 = [a1 tag];
  if (v2 <= 3)
  {
    v4 = v2;
    if ([a1 isOn])
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v5 = qword_2815447E0;

      if (v5 != -1)
      {
        v6 = swift_once();
      }

      MEMORY[0x28223BE20](v6, v7, v8, v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880, qword_257EDACA0);
      sub_257ECFD50();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9600, &unk_257EDB1D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED6D30;
      *(inited + 32) = v4;
      sub_257EB0610(inited);
      sub_257D523FC(v25, 1);
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_2815447E0;

      if (v12 != -1)
      {
        v13 = swift_once();
      }

      MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5880, qword_257EDACA0);
      sub_257ECFD50();

      v18 = *(v25 + 16);
      if (v18)
      {
        v19 = (v25 + 32);
        v20 = MEMORY[0x277D84F90];
        do
        {
          v24 = *v19++;
          v23 = v24;
          if (v24 != v4)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_257BF2744(0, *(v20 + 16) + 1, 1);
            }

            v22 = *(v20 + 16);
            v21 = *(v20 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_257BF2744((v21 > 1), v22 + 1, 1);
            }

            *(v20 + 16) = v22 + 1;
            *(v20 + v22 + 32) = v23;
          }

          --v18;
        }

        while (v18);
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
      }

      sub_257D523FC(v20, 1);
    }
  }

  return result;
}

uint64_t sub_257BFA8A4(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4, v5, v6, v7);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v10 = qword_281548348;
  v11 = [a1 isOn];
  v12 = v10 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__backTapEnabled;
  swift_beginAccess();
  v20 = v11;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v13 = sub_257ECF110();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  *&v19[-16] = &v20;
  *&v19[-8] = v12;
  sub_257ECFD40();
  (*(v3 + 8))(v9, v2);
  return swift_endAccess();
}

double sub_257BFAA88(void *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  *&v8 = MEMORY[0x28223BE20](v2, v4, v5, v6, v7).n128_u64[0];
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isOn])
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    v12 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    swift_beginAccess();
    v57 = 1;
    if (qword_2815447E0 == -1)
    {
      goto LABEL_9;
    }

LABEL_21:
    swift_once();
    goto LABEL_9;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v11 = qword_281548348;
  v12 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
  swift_beginAccess();
  v57 = 0;
  if (qword_2815447E0 != -1)
  {
    goto LABEL_21;
  }

LABEL_9:
  v13 = sub_257ECF110();
  MEMORY[0x28223BE20](v13, v14, v15, v16, v17);
  v50[-2] = &v57;
  v50[-1] = v12;
  sub_257ECFD40();
  (*(v3 + 8))(v10, v2);
  swift_endAccess();
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = v11[16];
  v19 = v11[17];
  v20 = v11[18];
  v56[0] = v11[15];
  v56[1] = v18;
  v56[2] = v19;
  v56[3] = v20;
  v21 = qword_2815447E0;

  if (v21 != -1)
  {
    v22 = swift_once();
  }

  MEMORY[0x28223BE20](v22, v23, v24, v25, v26);
  v50[-2] = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70, &unk_257ED81A0);
  sub_257ECFD50();

  v28 = v54;
  if (v54)
  {
    v29 = v53;
    v30 = swift_beginAccess();
    v31 = v11[12];
    v32 = v11[13];
    v53 = v11[11];
    v54 = v31;
    v55 = v32;
    MEMORY[0x28223BE20](v30, v33, v34, v35, v36);
    v50[-2] = &v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90, &qword_257ED81B0);
    sub_257ECFD50();

    v37 = v50[0];
    if (*(v50[0] + 16))
    {
      v38 = sub_257C03F6C(v29, v28);
      v40 = v39;

      if (v40)
      {
        v41 = *(*(v37 + 56) + 296 * v38 + 176);

        v42 = v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
        v43 = swift_beginAccess();
        v44 = *(v42 + 1);
        v45 = v42[16];
        v50[0] = *v42;
        v50[1] = v44;
        v51 = v45;
        MEMORY[0x28223BE20](v43, v46, v47, v48, v49);
        v50[-2] = v50;

        sub_257ECFD50();

        if (v41 != v52)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v50[0]) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        return result;
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_257BFB060(unint64_t a1, uint64_t (*a2)(unint64_t, void))
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return a2(a1, a2);
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257BFB0F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_257BFB13C()
{
  result = qword_281544070;
  if (!qword_281544070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281544070);
  }

  return result;
}

uint64_t sub_257BFB190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5AB0, &unk_257EDB570);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MFEnvironment.FreezeFrame.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MFEnvironment.FreezeFrame.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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