uint64_t sub_237D20464(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_237C75918(0, &qword_27DEB0A08, 0x277CE2D28);
  v3 = sub_237EF8910();

  return v3;
}

id ImageBlur.applied(to:eventHandler:)(void *a1)
{
  sub_237D2063C();
  result = sub_237D20680(0x6C42637369444943, 0xEA00000000007275);
  if (result)
  {
    v3 = result;
    v4 = [a1 imageByClampingToExtent];
    [v3 setValue:v4 forKey:*MEMORY[0x277CBFAF0]];

    v5 = sub_237EF8BE0();
    [v3 setValue:v5 forKey:*MEMORY[0x277CBFB08]];

    result = [v3 outputImage];
    if (result)
    {
      v6 = result;
      [a1 extent];
      v7 = [v6 imageByCroppingToRect_];

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_237D2063C()
{
  result = qword_27DEB0A10;
  if (!qword_27DEB0A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEB0A10);
  }

  return result;
}

id sub_237D20680(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF8560();

  v3 = [swift_getObjCClassFromMetadata() filterWithName_];

  return v3;
}

uint64_t sub_237D206E4(id *a1, void **a2)
{
  *a1 = ImageBlur.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t ImageColorTransformer.brightness.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t ImageColorTransformer.contrast.setter(uint64_t result)
{
  *(v1 + 8) = result;
  *(v1 + 12) = BYTE4(result) & 1;
  return result;
}

uint64_t ImageColorTransformer.hue.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t ImageColorTransformer.saturation.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

void __swiftcall ImageColorTransformer.init(brightness:contrast:hue:saturation:)(CreateMLComponents::ImageColorTransformer *__return_ptr retstr, Swift::Float_optional *brightness, Swift::Float_optional *contrast, Swift::Float_optional *hue, Swift::Float_optional *saturation)
{
  LODWORD(retstr->brightness.value) = brightness;
  retstr->brightness.is_nil = BYTE4(brightness) & 1;
  *(&retstr->contrast.value + 3) = contrast;
  BYTE2(retstr->hue.value) = BYTE4(contrast) & 1;
  *(&retstr->saturation.value + 1) = hue;
  LOBYTE(retstr[1].brightness.value) = BYTE4(hue) & 1;
  *&retstr[1].brightness.is_nil = saturation;
  HIBYTE(retstr[1].contrast.value) = BYTE4(saturation) & 1;
}

id ImageColorTransformer.applied(to:eventHandler:)(void *a1)
{
  v5 = v1[2];
  v6 = *(v1 + 12);
  v7 = v1[4];
  v8 = *(v1 + 20);
  v9 = v1[6];
  v10 = *(v1 + 28);
  if (v1[1])
  {
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    v36 = *v1;
    sub_237EF8590();
    OUTLINED_FUNCTION_2_38();
    LODWORD(v62) = v36;
    OUTLINED_FUNCTION_3_40(v37, v38, v39, v40, v41, v42, v43, v44, v57, v58, v59, v60, v61, v62);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_37(isUniquelyReferenced_nonNull_native, v46);

    if (v6)
    {
LABEL_3:
      if (v10)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  sub_237EF8590();
  OUTLINED_FUNCTION_2_38();
  LODWORD(v62) = v5;
  OUTLINED_FUNCTION_3_40(v47, v48, v49, v50, v51, v52, v53, v54, v57, v58, v59, v60, v61, v62);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_37(v55, v56);

  if ((v10 & 1) == 0)
  {
LABEL_4:
    sub_237EF8590();
    OUTLINED_FUNCTION_2_38();
    LODWORD(v62) = v9;
    OUTLINED_FUNCTION_3_40(v11, v12, v13, v14, v15, v16, v17, v18, v57, v58, v59, v60, v61, v62);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_37(v19, v20);
  }

LABEL_5:
  if ((v8 & 1) == 0)
  {
    sub_237EF8590();
    OUTLINED_FUNCTION_2_38();
    LODWORD(v62) = v7;
    OUTLINED_FUNCTION_3_40(v21, v22, v23, v24, v25, v26, v27, v28, v57, v58, v59, v60, v61, v62);
    swift_isUniquelyReferenced_nonNull_native();
    sub_237C90D00(&v59, v2, v3);
  }

  v29 = sub_237EF8560();
  v30 = sub_237EF8200();

  v31 = [a1 imageByApplyingFilter:v29 withInputParameters:v30];

  v32 = sub_237EF8560();
  v33 = sub_237EF8200();

  v34 = [v31 imageByApplyingFilter:v32 withInputParameters:v33];

  return v34;
}

uint64_t sub_237D20B50(id *a1, void **a2)
{
  *a1 = ImageColorTransformer.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

__n128 __swift_memcpy29_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_237D20BD0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D20BF0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
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

  *(result + 29) = v3;
  return result;
}

_OWORD *OUTLINED_FUNCTION_1_37(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_237C90D00(va, v2, v3);
}

_OWORD *OUTLINED_FUNCTION_3_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_237C91804(&a14, &a11);
}

id ImageCropper.applied(to:eventHandler:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  [a1 extent];
  v16.origin.x = v3;
  v16.origin.y = v4;
  v16.size.width = v5;
  v16.size.height = v6;
  if (CGRectContainsRect(v15, v16))
  {
    v7 = [a1 imageByCroppingToRect_];
    [a1 extent];
    v9 = -v8;
    [a1 extent];
    CGAffineTransformMakeTranslation(&v14, v9, -v10);
    v11 = [v7 imageByApplyingTransform_];

    return v11;
  }

  else
  {
    sub_237C84150();
    swift_allocError();
    *v13 = xmmword_237F054E0;
    *(v13 + 16) = 0xD000000000000032;
    *(v13 + 24) = 0x8000000237EFB820;
    *(v13 + 32) = 5;
    return swift_willThrow();
  }
}

void ImageCropper.cropRectangle.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t sub_237D20E38(id *a1, void **a2)
{
  *a1 = ImageCropper.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t ImageCropper.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001CLL, 0x8000000237EFD8A0);
  type metadata accessor for CGRect(0);
  sub_237EF9670();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

BOOL sub_237D20F6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  return v2 != 0;
}

BOOL sub_237D20FC4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237D20F6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_237D21044@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D20F6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D21070(uint64_t a1)
{
  v2 = sub_237D21270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D210AC(uint64_t a1)
{
  v2 = sub_237D21270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageCropper.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0A18, &qword_237F0BB70);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D21270();
  sub_237EFA190();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    sub_237C7AC1C(qword_27DEAD990, MEMORY[0x277CBF280]);
    sub_237EF9970();
    (*(v7 + 8))(v10, v5);
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_237D21270()
{
  result = qword_27DEB0A20;
  if (!qword_27DEB0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A20);
  }

  return result;
}

uint64_t ImageCropper.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0A28, &qword_237F0BB78);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D21270();
  sub_237EFA1B0();
  v10 = v2[1];
  v12[0] = *v2;
  v12[1] = v10;
  type metadata accessor for CGRect(0);
  sub_237C7AC1C(&qword_27DEAD988, MEMORY[0x277CBF268]);
  sub_237EF9A70();
  return (*(v6 + 8))(v9, v4);
}

_BYTE *storeEnumTagSinglePayload for ImageCropper.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_237D21518()
{
  result = qword_27DEB0A30;
  if (!qword_27DEB0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A30);
  }

  return result;
}

unint64_t sub_237D21570()
{
  result = qword_27DEB0A38;
  if (!qword_27DEB0A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A38);
  }

  return result;
}

unint64_t sub_237D215C8()
{
  result = qword_27DEB0A40;
  if (!qword_27DEB0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A40);
  }

  return result;
}

id ImageExposureAdjuster.applied(to:eventHandler:)(uint64_t a1)
{
  sub_237D2063C();
  result = sub_237D20680(0xD000000000000010, 0x8000000237EFD8C0);
  if (result)
  {
    v3 = result;
    [result setValue:a1 forKey:*MEMORY[0x277CBFAF0]];
    v4 = sub_237EF8BE0();
    [v3 setValue:v4 forKey:*MEMORY[0x277CBFAE0]];

    result = [v3 outputImage];
    if (result)
    {
      v5 = result;

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237D21730(id *a1, uint64_t *a2)
{
  *a1 = ImageExposureAdjuster.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_237D217C4@<X0>(uint64_t *a1@<X8>)
{
  result = ImageFeaturePrint.revision.getter();
  *a1 = result;
  return result;
}

uint64_t (*ImageFeaturePrint.revision.modify(void *a1))()
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return sub_237D21838;
}

uint64_t ImageFeaturePrint.init(cropAndScale:context:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a2;
  a3[1] = result;
  a3[2] = 1;
  return result;
}

uint64_t ImageFeaturePrint.init(revision:cropAndScale:context:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a3;
  a4[1] = a2;
  a4[2] = result;
  return result;
}

uint64_t ImageFeaturePrint.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = _s8SceneNetVMa(0);
  v1[5] = swift_task_alloc();
  v4 = sub_237EF8060();
  v1[6] = v4;
  v1[7] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *(v0 + 16);
  v1[8] = v5;
  v1[9] = v6;

  return MEMORY[0x2822009F8](sub_237D21950, 0, 0);
}

uint64_t sub_237D21950()
{
  v1 = v0[9];
  if (v1 == 1)
  {
    v2 = MEMORY[0x277CE2BE0];
    goto LABEL_5;
  }

  if (v1 == 2)
  {
    v2 = MEMORY[0x277CE2BE8];
LABEL_5:
    v4 = v0[7];
    v3 = v0[8];
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    (*(v4 + 104))(v3, *v2, v5);
    (*(v4 + 16))(v6, v3, v5);
    v8 = *(v7 + 20);
    v9 = *MEMORY[0x277CE2BD8];
    v10 = sub_237EF8040();
    (*(*(v10 - 8) + 104))(v6 + v8, v9, v10);
    v11 = swift_task_alloc();
    v0[10] = v11;
    *v11 = v0;
    v11[1] = sub_237D21B2C;
    v12 = v0[2];
    v13 = v0[3];

    return sub_237D231F4(v12, v13);
  }

  sub_237D21D58();
  OUTLINED_FUNCTION_3_23();
  swift_allocError();
  *v15 = v1;
  swift_willThrow();

  OUTLINED_FUNCTION_3_0();

  return v16();
}

uint64_t sub_237D21B2C()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  sub_237D21DAC(v2);
  if (v0)
  {
    v3 = sub_237D21CD8;
  }

  else
  {
    v3 = sub_237D21C58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237D21C58()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[7] + 8))(v0[8], v0[6]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237D21CD8()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[7] + 8))(v0[8], v0[6]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

unint64_t sub_237D21D58()
{
  result = qword_27DEB0A48;
  if (!qword_27DEB0A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A48);
  }

  return result;
}

uint64_t sub_237D21DAC(uint64_t a1)
{
  v2 = _s8SceneNetVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D21E08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C66428;

  return ImageFeaturePrint.applied(to:eventHandler:)();
}

uint64_t sub_237D21ECC(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D21F20(char a1)
{
  if (a1)
  {
    return 0x6E6F697369766572;
  }

  else
  {
    return 0x53646E41706F7263;
  }
}

uint64_t sub_237D21FA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237D21ECC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_237D21FD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237D21F20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237D22008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D21ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D2203C(uint64_t a1)
{
  v2 = sub_237D222D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D22078(uint64_t a1)
{
  v2 = sub_237D222D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void ImageFeaturePrint.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0A50, &qword_237F0BE38);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D222D0();
  sub_237EFA190();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v6 = sub_237EF9960();
    v7 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
    v8 = sub_237EF98F0();
    if (v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = v8;
    }

    if (sub_237D22324(v10, &unk_284ACD980))
    {
      v11 = OUTLINED_FUNCTION_2_39();
      v12(v11);
      *a2 = v7;
      a2[1] = v6;
      a2[2] = v10;
      v13 = v7;
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    else
    {
      sub_237D21D58();
      OUTLINED_FUNCTION_3_23();
      swift_allocError();
      *v14 = v10;
      swift_willThrow();
      v15 = OUTLINED_FUNCTION_2_39();
      v16(v15);
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }
}

unint64_t sub_237D222D0()
{
  result = qword_27DEB0A58;
  if (!qword_27DEB0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A58);
  }

  return result;
}

BOOL sub_237D22324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t ImageFeaturePrint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0A60, &qword_237F0BE40);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  v11[1] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D222D0();
  sub_237EFA1B0();
  v13 = 0;
  sub_237EF9A60();
  if (!v2)
  {
    v12 = 1;
    sub_237EF9A50();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_237D224E4@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 == 2)
  {
    v3 = 360;
    v4 = 768;
    return sub_237D2258C(v3, v4, a1);
  }

  if (v2 == 1)
  {
    v3 = 299;
    v4 = 2048;
    return sub_237D2258C(v3, v4, a1);
  }

  sub_237D21D58();
  OUTLINED_FUNCTION_3_23();
  swift_allocError();
  *v6 = v2;
  return swift_willThrow();
}

uint64_t sub_237D2258C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v95 = a2;
  *&v90 = a1;
  v86 = a3;
  v88 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v87 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v8 - v7);
  v85 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v84 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v12 - v11);
  v82 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v81 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_2(v16 - v15);
  v98 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v89 = v17;
  MEMORY[0x28223BE20](v18);
  v91 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v99 = v80 - v21;
  v22 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  sub_237EF6E30();
  OUTLINED_FUNCTION_1();
  v96 = v30;
  v97 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v34 = sub_237EF6D20();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  v94 = sub_237EF6D90();
  OUTLINED_FUNCTION_1();
  v93 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5();
  v45 = v44 - v43;
  v46 = *(v4 + 16);
  (*(v36 + 104))(v40, *MEMORY[0x277D250B0], v34);
  sub_237EF6D70();
  v47 = v22;
  v48 = v99;
  (*(v24 + 104))(v28, *MEMORY[0x277D25100], v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v49 = swift_allocObject();
  v90 = xmmword_237F03530;
  *(v49 + 16) = xmmword_237F03530;
  *(v49 + 32) = v95;
  v95 = v33;
  sub_237EF6DD0();
  sub_237EF7720();
  if (v46 == 1 || v46 == 2)
  {
    v50 = v80[1];
    sub_237EF7200();
    (*(v81 + 104))(v50, *MEMORY[0x277D25370], v82);
    sub_237EF7660();
    sub_237EF7620();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    sub_237EF70E0();
    v51 = swift_allocObject();
    v52 = OUTLINED_FUNCTION_6_26(v51);
    v53 = v83;
    (*(v93 + 16))(v83, v45, v94, v52);
    v54 = *MEMORY[0x277D25120];
    v82 = v45;
    v55 = *(v84 + 104);
    v56 = v85;
    v55(v53, v54, v85);
    sub_237EF7090();
    v57 = v99;
    sub_237EF76B0();
    v58 = swift_allocObject();
    v59 = OUTLINED_FUNCTION_6_26(v58);
    (*(v96 + 16))(v53, v95, v97, v59);
    v55(v53, *MEMORY[0x277D250A0], v56);
    sub_237EF7090();
    sub_237EF7700();
    v60 = v89;
    v61 = *(v89 + 16);
    v62 = v91;
    v63 = v98;
    v61(v91, v57, v98);
    sub_237EF7810();
    v64 = type metadata accessor for CoreMLPackage(0);
    v65 = v86;
    v66 = &v86[*(v64 + 24)];
    *(v66 + 10) = 0;
    *(v66 + 3) = 0u;
    *(v66 + 4) = 0u;
    *(v66 + 1) = 0u;
    *(v66 + 2) = 0u;
    *v66 = 0u;
    v61(v65, v62, v63);
    memcpy(__dst, v66, sizeof(__dst));
    sub_237C9BD20(__dst);
    *v66 = 0u;
    *(v66 + 1) = 0u;
    *(v66 + 2) = 0u;
    *(v66 + 3) = 0u;
    *(v66 + 4) = 0u;
    *(v66 + 10) = 0;
    v67 = v87;
    v68 = v92;
    v69 = v88;
    (*(v87 + 16))(&v65[*(v64 + 20)], v92, v88);
    v70 = sub_237E34060();
    v72 = v71;
    *&v90 = sub_237EF7780();
    v74 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = *v74;
    sub_237C91098(v70, v72, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
    *v74 = v102;
    (v90)(v100, 0);
    (*(v67 + 8))(v68, v69);
    v76 = *(v60 + 8);
    v77 = v98;
    v76(v91, v98);
    v76(v99, v77);
    (*(v96 + 8))(v95, v97);
    return (*(v93 + 8))(v82, v94);
  }

  else
  {
    sub_237D21D58();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v79 = v46;
    swift_willThrow();
    (*(v89 + 8))(v48, v98);
    (*(v96 + 8))(v95, v97);
    return (*(v93 + 8))(v45, v94);
  }
}

_BYTE *storeEnumTagSinglePayload for ImageFeaturePrint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D22FD4()
{
  result = qword_27DEB0A68;
  if (!qword_27DEB0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A68);
  }

  return result;
}

unint64_t sub_237D2302C()
{
  result = qword_27DEB0A70;
  if (!qword_27DEB0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A70);
  }

  return result;
}

unint64_t sub_237D23084()
{
  result = qword_27DEB0A78;
  if (!qword_27DEB0A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A78);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_6_26(__n128 *a1)
{
  result = *(v1 - 304);
  a1[1] = result;
  return result;
}

uint64_t _s8SceneNetVMa(uint64_t a1)
{
  result = qword_27DEB0A80;
  if (!qword_27DEB0A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237D23170(uint64_t a1)
{
  result = sub_237EF8060();
  if (v2 <= 0x3F)
  {
    result = sub_237EF8040();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237D231F4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_237EF7FE0();
  v3[7] = v4;
  OUTLINED_FUNCTION_6_1(v4);
  v3[8] = v5;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = sub_237EF8030();
  v3[11] = v6;
  OUTLINED_FUNCTION_6_1(v6);
  v3[12] = v7;
  v3[13] = OUTLINED_FUNCTION_27_0();
  v8 = sub_237EF8040();
  v3[14] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v3[15] = v9;
  v3[16] = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0A90, &unk_237F0C0B0);
  v3[17] = OUTLINED_FUNCTION_27_0();
  v10 = sub_237EF8070();
  v3[18] = v10;
  OUTLINED_FUNCTION_6_1(v10);
  v3[19] = v11;
  v3[20] = OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](sub_237D233D0, 0, 0);
}

uint64_t sub_237D233D0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[6];
  v6 = sub_237EF8060();
  (*(*(v6 - 8) + 16))(v1, v5, v6);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v6);
  sub_237EF8080();
  v7 = _s8SceneNetVMa(0);
  (*(v4 + 16))(v2, v5 + *(v7 + 20), v3);
  sub_237EF8050();
  v8 = swift_task_alloc();
  v0[21] = v8;
  v9 = sub_237D23AB4();
  *v8 = v0;
  v8[1] = sub_237D2354C;
  v10 = v0[18];
  v11 = v0[13];
  v12 = v0[5];

  return MEMORY[0x282135048](v11, v12, 0x100000000, v10, v9);
}

uint64_t sub_237D2354C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_237D23948;
  }

  else
  {
    v2 = sub_237D23660;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_237D23660()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  sub_237EF8000();
  (*(v4 + 104))(v2, *MEMORY[0x277CE2BC8], v3);
  v5 = sub_237EF7FD0();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[19];
    v8 = v0[20];
    v17 = v0[18];
    v10 = v0[12];
    v9 = v0[13];
    v11 = v0[11];
    sub_237EF8020();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_237F03530;
    *(v12 + 32) = sub_237EF8010();
    sub_237EF7E10();
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v8, v17);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[10];
    v16 = v0[7];
    sub_237EF9330();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x2383E0710](0xD000000000000036, 0x8000000237EFD920);
    sub_237EF8000();
    sub_237EF9670();
    v6(v15, v16);
    MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFD960);
    return sub_237EF9740("Fatal error", 11, 2, v0[2], v0[3], "CreateMLComponents/ImageFeaturePrint+SceneNet.swift", 51, 2, 39);
  }
}

uint64_t sub_237D23948()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_237D23A0C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237C5FFA4;

  return sub_237D231F4(a1, v4);
}

unint64_t sub_237D23AB4()
{
  result = qword_27DEB0A98;
  if (!qword_27DEB0A98)
  {
    sub_237EF8070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0A98);
  }

  return result;
}

id ImageFlipper.applied(to:eventHandler:)(void *a1)
{
  if (*v1)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  v3 = [a1 imageByApplyingCGOrientation_];

  return v3;
}

uint64_t sub_237D23B98(id *a1, void **a2)
{
  *a1 = ImageFlipper.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t ImageFlipper.Orientation.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

unint64_t sub_237D23CA0()
{
  result = qword_27DEB0AA0;
  if (!qword_27DEB0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AA0);
  }

  return result;
}

_BYTE *sub_237D23D04(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

id static ImageReader.read(url:)(uint64_t a1)
{
  v2 = sub_237EF5EF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  sub_237EF5EC0();
  v7 = sub_237EF8560();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {
    sub_237D24070();
    v9 = *(v3 + 16);
    v9(v5, a1, v2);
    result = sub_237D240B4(v5);
    if (result)
    {
      return result;
    }

    type metadata accessor for DatasetError(0);
    v11 = sub_237D24018();
    OUTLINED_FUNCTION_0_31(v11);
    v13 = v12;
    v14 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFA08, &qword_237F0AB40) + 48)];
    v9(v13, a1, v2);
    *v14 = 0xD000000000000020;
    *(v14 + 1) = 0x8000000237EFD980;
  }

  else
  {
    type metadata accessor for DatasetError(0);
    v15 = sub_237D24018();
    OUTLINED_FUNCTION_0_31(v15);
    (*(v3 + 16))(v16, a1, v2);
  }

  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

unint64_t sub_237D24018()
{
  result = qword_27DEAFA00;
  if (!qword_27DEAFA00)
  {
    type metadata accessor for DatasetError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAFA00);
  }

  return result;
}

unint64_t sub_237D24070()
{
  result = qword_27DEB0AA8;
  if (!qword_27DEB0AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEB0AA8);
  }

  return result;
}

id sub_237D240B4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_237EF5E50();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_237EF5EF0();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_237D24150(id *a1, uint64_t a2)
{
  *a1 = ImageReader.applied(to:eventHandler:)(a2);
  v3 = *(v2 + 8);

  return v3();
}

_BYTE *storeEnumTagSinglePayload for ImageReader(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_31(uint64_t a1)
{

  return swift_allocError();
}

id ImageRotator.applied(to:eventHandler:)(uint64_t a1)
{
  sub_237D2063C();
  result = sub_237D20680(0xD000000000000012, 0x8000000237EFD9B0);
  if (result)
  {
    v3 = result;
    [result setValue:a1 forKey:*MEMORY[0x277CBFAF0]];
    v4 = sub_237EF8BE0();
    [v3 setValue:v4 forKey:*MEMORY[0x277CBFAA8]];

    result = [v3 outputImage];
    if (result)
    {
      v5 = result;

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237D243FC(id *a1, uint64_t *a2)
{
  *a1 = ImageRotator.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

double ImageScaler.targetSize.getter()
{
  if (!v0[16])
  {
    return *v0;
  }

  if (v0[16] == 1)
  {
    return 0.0;
  }

  return *v0;
}

void ImageScaler.targetSize.setter(double a1, double a2)
{
  if (a2 == 0.0)
  {
    *v2 = a1;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
  }

  else
  {
    if (a1 == 0.0)
    {
      *v2 = a2;
      *(v2 + 8) = 0;
      v3 = 1;
    }

    else
    {
      *v2 = a1;
      *(v2 + 8) = a2;
      v3 = 2;
    }

    *(v2 + 16) = v3;
  }
}

void (*ImageScaler.targetSize.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v2 = *v1;
      v3 = 0;
    }

    else
    {
      v2 = v1[1];
      v3 = *v1;
    }
  }

  else
  {
    v3 = *v1;
    v2 = 0;
  }

  *a1 = v3;
  a1[1] = v2;
  return sub_237D245B8;
}

void sub_237D245B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    ImageScaler.targetSize.setter(v2, v3);
  }

  else
  {
    if (v3 == 0.0)
    {
      v4 = 0;
      v5 = *(a1 + 16);
      *v5 = v2;
      *(v5 + 8) = 0;
    }

    else
    {
      v5 = *(a1 + 16);
      if (v2 == 0.0)
      {
        *v5 = v3;
        *(v5 + 8) = 0;
        v4 = 1;
      }

      else
      {
        *v5 = v2;
        *(v5 + 8) = v3;
        v4 = 2;
      }
    }

    *(v5 + 16) = v4;
  }
}

uint64_t sub_237D2462C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1702521203 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_237D24734(char a1)
{
  if (!a1)
  {
    return 0x6874646977;
  }

  if (a1 == 1)
  {
    return 0x746867696568;
  }

  return 1702521203;
}

uint64_t sub_237D24790(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237D24850(char a1)
{
  if (a1)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_237D24880(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D248FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D2462C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D24924(uint64_t a1)
{
  v2 = sub_237D26134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D24960(uint64_t a1)
{
  v2 = sub_237D26134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D249A0(uint64_t a1)
{
  v2 = sub_237D261DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D249DC(uint64_t a1)
{
  v2 = sub_237D261DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D24A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D24790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D24A48(uint64_t a1)
{
  v2 = sub_237D26188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D24A84(uint64_t a1)
{
  v2 = sub_237D26188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D24AC0(uint64_t a1)
{
  v2 = sub_237D26230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D24AFC(uint64_t a1)
{
  v2 = sub_237D26230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageScaler.init(targetSize:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000030, 0x8000000237EFDA00, "CreateMLComponents/ImageScaler.swift", 36, 2, 45);
    __break(1u);
  }

  else
  {
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = 2;
  }

  return result;
}

void ImageScaler.init(targetWidth:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void ImageScaler.init(targetHeight:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

id ImageScaler.applied(to:eventHandler:)(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  [a1 extent];
  v8 = v3 / v6;
  v9 = v3 / v7;
  if (v5 == 1)
  {
    v10 = v3 / v7;
  }

  else
  {
    v10 = v3 / v6;
  }

  v11 = v4 / v7;
  if (v5 == 1)
  {
    v11 = v9;
  }

  if (v5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v5)
  {
    v8 = v11;
  }

  CGAffineTransformMakeScale(&v21, v12, v8);
  OUTLINED_FUNCTION_10_28();
  v14 = [a1 v13];
  [v14 extent];
  v16 = -v15;
  [v14 extent];
  CGAffineTransformMakeTranslation(&v21, v16, -v17);
  OUTLINED_FUNCTION_10_28();
  v19 = [v14 v18];

  return v19;
}

uint64_t sub_237D24CD4(id *a1, void **a2)
{
  *a1 = ImageScaler.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t ImageScaler.debugDescription.getter()
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000018, 0x8000000237EFDA40);
  type metadata accessor for CGSize(0);
  sub_237EF9670();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_237D24E14(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D24E68(char a1)
{
  if (a1)
  {
    return 0x746567726174;
  }

  else
  {
    return 0x6953746567726174;
  }
}

uint64_t sub_237D24EC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237D24E14(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_237D24EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237D24E68(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237D24F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D24E14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D24F54(uint64_t a1)
{
  v2 = sub_237D251A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D24F90(uint64_t a1)
{
  v2 = sub_237D251A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageScaler.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0AB0, &qword_237F0C230);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D251A8();
  sub_237EFA190();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    if (sub_237EF9990())
    {
      sub_237D25254();
      sub_237EF9970();
      v7 = OUTLINED_FUNCTION_9_20();
      v8(v7);
      v9 = v13;
      v10 = v14;
    }

    else
    {
      type metadata accessor for CGSize(0);
      sub_237D251FC();
      sub_237EF9970();
      v11 = OUTLINED_FUNCTION_9_20();
      v12(v11);
      v9 = v13;
      v10 = 2;
    }

    *a2 = v9;
    *(a2 + 16) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_237D251A8()
{
  result = qword_27DEB0AB8;
  if (!qword_27DEB0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AB8);
  }

  return result;
}

unint64_t sub_237D251FC()
{
  result = qword_27DEB0AC0;
  if (!qword_27DEB0AC0)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AC0);
  }

  return result;
}

unint64_t sub_237D25254()
{
  result = qword_27DEB0AC8;
  if (!qword_27DEB0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AC8);
  }

  return result;
}

uint64_t ImageScaler.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0AD0, &qword_237F0C238);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  v10 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D251A8();
  sub_237EFA1B0();
  v12[1] = v10;
  v12[2] = v9;
  v13 = v14;
  v15 = 1;
  sub_237D25404();
  sub_237EF9A70();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_237D25404()
{
  result = qword_27DEB0AD8;
  if (!qword_27DEB0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AD8);
  }

  return result;
}

uint64_t sub_237D25458(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v40 = a4;
  v32[1] = a3;
  v39 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B38, &qword_237F0C4D0);
  OUTLINED_FUNCTION_1();
  v37 = v6;
  v38 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v36 = v32 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B40, &qword_237F0C4D8);
  OUTLINED_FUNCTION_1();
  v34 = v10;
  v35 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B48, &qword_237F0C4E0);
  OUTLINED_FUNCTION_1();
  v33 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B50, &qword_237F0C4E8);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = v32 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D26134();
  sub_237EFA1B0();
  if (!v40)
  {
    v42 = 0;
    sub_237D26230();
    OUTLINED_FUNCTION_4_33(&type metadata for ImageScaler.Target.WidthCodingKeys, &v42);
    sub_237EF9A30();
    v25 = *(v33 + 8);
    v26 = v18;
    goto LABEL_5;
  }

  if (v40 == 1)
  {
    v43[0] = 1;
    sub_237D261DC();
    OUTLINED_FUNCTION_4_33(&type metadata for ImageScaler.Target.HeightCodingKeys, v43);
    v14 = v35;
    sub_237EF9A30();
    v25 = *(v34 + 8);
    v26 = v13;
LABEL_5:
    v27 = v14;
    goto LABEL_9;
  }

  v44 = 2;
  sub_237D26188();
  v28 = v36;
  OUTLINED_FUNCTION_4_33(&type metadata for ImageScaler.Target.SizeCodingKeys, &v44);
  v43[2] = 0;
  v29 = v38;
  v30 = v41;
  sub_237EF9A30();
  if (!v30)
  {
    v43[1] = 1;
    sub_237EF9A30();
  }

  v25 = *(v37 + 8);
  v26 = v28;
  v27 = v29;
LABEL_9:
  v25(v26, v27);
  return (*(v21 + 8))(v24, v19);
}

void *sub_237D25808(void *a1)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0AF8, &qword_237F0C4A8);
  OUTLINED_FUNCTION_1();
  v58 = v2;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v3);
  v63 = v55 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B00, &qword_237F0C4B0);
  OUTLINED_FUNCTION_1();
  v62 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = (v55 - v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B08, &qword_237F0C4B8);
  OUTLINED_FUNCTION_1();
  v59 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0B10, &unk_237F0C4C0);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  v18 = v55 - v17;
  v19 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_237D26134();
  v20 = v65;
  sub_237EFA190();
  if (v20)
  {
    goto LABEL_11;
  }

  v55[1] = v12;
  v56 = 0;
  v65 = v15;
  v57 = v18;
  sub_237EF9980();
  result = sub_237CADBA0();
  if (v23 == v24 >> 1)
  {
LABEL_10:
    v31 = sub_237EF93E0();
    swift_allocError();
    v8 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v8 = &unk_284AD3E58;
    v33 = v57;
    sub_237EF98C0();
    sub_237EF93D0();
    (*(*(v31 - 8) + 104))(v8, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v65 + 8))(v33, v13);
LABEL_11:
    v34 = v64;
    goto LABEL_12;
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v13;
    v26 = *(v22 + v23);
    sub_237CADB98();
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      if (v26)
      {
        if (v26 == 1)
        {
          v67[0] = 1;
          sub_237D261DC();
          OUTLINED_FUNCTION_11_24(&type metadata for ImageScaler.Target.HeightCodingKeys, v67);
          sub_237EF9930();
          v40 = v41;
          swift_unknownObjectRelease();
          v42 = OUTLINED_FUNCTION_6_27();
          v43(v42);
          v44 = OUTLINED_FUNCTION_1_38();
          v45(v44);
          v38 = v64;
        }

        else
        {
          v68 = 2;
          sub_237D26188();
          OUTLINED_FUNCTION_11_24(&type metadata for ImageScaler.Target.SizeCodingKeys, &v68);
          v38 = v64;
          v67[2] = 0;
          sub_237EF9930();
          v40 = v39;
          v67[1] = 1;
          sub_237EF9930();
          swift_unknownObjectRelease();
          v51 = OUTLINED_FUNCTION_7_27();
          v52(v51);
          v53 = OUTLINED_FUNCTION_55_1();
          v54(v53);
        }

        goto LABEL_17;
      }

      v66 = 0;
      sub_237D26230();
      v35 = v56;
      sub_237EF98B0();
      if (!v35)
      {
        sub_237EF9930();
        v38 = v64;
        v40 = v46;
        swift_unknownObjectRelease();
        v47 = OUTLINED_FUNCTION_8_31();
        v48(v47);
        v49 = OUTLINED_FUNCTION_55_1();
        v50(v49);
LABEL_17:
        v8 = v40;
        __swift_destroy_boxed_opaque_existential_1(v38);
        return v8;
      }

      v36 = OUTLINED_FUNCTION_1_38();
      v37(v36);
      swift_unknownObjectRelease();
      v34 = v64;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v34);
      return v8;
    }

    v13 = v25;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_237D25F30(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237D25F70(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D25FE0()
{
  result = qword_27DEB0AE0;
  if (!qword_27DEB0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AE0);
  }

  return result;
}

void *sub_237D26034@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237D25808(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_237D26088()
{
  result = qword_27DEB0AE8;
  if (!qword_27DEB0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AE8);
  }

  return result;
}

unint64_t sub_237D260E0()
{
  result = qword_27DEB0AF0;
  if (!qword_27DEB0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0AF0);
  }

  return result;
}

unint64_t sub_237D26134()
{
  result = qword_27DEB0B18;
  if (!qword_27DEB0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B18);
  }

  return result;
}

unint64_t sub_237D26188()
{
  result = qword_27DEB0B20;
  if (!qword_27DEB0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B20);
  }

  return result;
}

unint64_t sub_237D261DC()
{
  result = qword_27DEB0B28;
  if (!qword_27DEB0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B28);
  }

  return result;
}

unint64_t sub_237D26230()
{
  result = qword_27DEB0B30;
  if (!qword_27DEB0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ImageScaler.Target.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_237D26370(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_237D2641C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D264FC()
{
  result = qword_27DEB0B58;
  if (!qword_27DEB0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B58);
  }

  return result;
}

unint64_t sub_237D26554()
{
  result = qword_27DEB0B60;
  if (!qword_27DEB0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B60);
  }

  return result;
}

unint64_t sub_237D265AC()
{
  result = qword_27DEB0B68;
  if (!qword_27DEB0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B68);
  }

  return result;
}

unint64_t sub_237D26604()
{
  result = qword_27DEB0B70;
  if (!qword_27DEB0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B70);
  }

  return result;
}

unint64_t sub_237D2665C()
{
  result = qword_27DEB0B78;
  if (!qword_27DEB0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B78);
  }

  return result;
}

unint64_t sub_237D266B4()
{
  result = qword_27DEB0B80;
  if (!qword_27DEB0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B80);
  }

  return result;
}

unint64_t sub_237D2670C()
{
  result = qword_27DEB0B88;
  if (!qword_27DEB0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B88);
  }

  return result;
}

unint64_t sub_237D26764()
{
  result = qword_27DEB0B90;
  if (!qword_27DEB0B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B90);
  }

  return result;
}

unint64_t sub_237D267BC()
{
  result = qword_27DEB0B98;
  if (!qword_27DEB0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0B98);
  }

  return result;
}

unint64_t sub_237D26814()
{
  result = qword_27DEB0BA0;
  if (!qword_27DEB0BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0BA0);
  }

  return result;
}

unint64_t sub_237D2686C()
{
  result = qword_27DEB0BA8;
  if (!qword_27DEB0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0BA8);
  }

  return result;
}

unint64_t sub_237D268C4()
{
  result = qword_27DEB0BB0;
  if (!qword_27DEB0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0BB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_33(uint64_t a1, uint64_t a2)
{

  return sub_237EF99C0();
}

uint64_t OUTLINED_FUNCTION_11_24(uint64_t a1, uint64_t a2)
{

  return sub_237EF98B0();
}

uint64_t sub_237D269E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v37 = MEMORY[0x277D84F90];
  sub_237C62D70(0, v1, 0);
  v2 = v37;
  result = sub_237D2999C(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 64;
  v31 = v5;
  v32 = v1;
  v30 = v3 + 72;
  v33 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_23;
    }

    v35 = v8;
    v36 = v5;
    v34 = v6;
    v11 = *(v3 + 56) + 40 * v7;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    v17 = v3;
    v19 = *(v37 + 16);
    v18 = *(v37 + 24);
    result = sub_237EF8260();
    if (v19 >= v18 >> 1)
    {
      result = sub_237C62D70((v18 > 1), v19 + 1, 1);
    }

    *(v37 + 16) = v19 + 1;
    v20 = v37 + 40 * v19;
    *(v20 + 32) = v12;
    *(v20 + 40) = v13;
    *(v20 + 48) = v14;
    *(v20 + 56) = v15;
    *(v20 + 64) = v16;
    v21 = 1 << *(v17 + 32);
    if (v7 >= v21)
    {
      goto LABEL_24;
    }

    v9 = v33;
    v22 = *(v33 + 8 * v10);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v17;
    if (*(v17 + 36) != v36)
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v21 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v24 = v32;
    }

    else
    {
      v25 = v10 << 6;
      v26 = v10 + 1;
      v27 = (v30 + 8 * v10);
      v24 = v32;
      while (v26 < (v21 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_237CB231C(v7, v36, v34 & 1);
          v21 = __clz(__rbit64(v28)) + v25;
          goto LABEL_19;
        }
      }

      result = sub_237CB231C(v7, v36, v34 & 1);
    }

LABEL_19:
    v6 = 0;
    v8 = v35 + 1;
    v7 = v21;
    v5 = v31;
    if (v35 + 1 == v24)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

CreateMLComponents::Pose __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Pose.init(_:)(VNRecognizedPointsObservation a1)
{
  v4 = v1;
  v60[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_10_29();
  v5 = sub_237EF8560();
  v60[0] = 0;
  v6 = [(objc_class *)a1.super.super.isa recognizedPointsForGroupKey:v5 error:v60];

  v7 = v60[0];
  if (v6)
  {
    type metadata accessor for VNRecognizedPointKey(0);
    sub_237D27038();
    sub_237D2707C();
    v8 = sub_237EF8210();
    v9 = v7;

    v10 = *(v8 + 16);
    if (v10)
    {
      v50 = v4;
      isa = a1.super.super.isa;
      v60[0] = MEMORY[0x277D84F90];
      sub_237C63748(0, v10, 0);
      v11 = v60[0];
      v13 = sub_237D2999C(v8);
      v14 = 0;
      v15 = v8 + 64;
      v16 = *(v8 + 32);
      v52 = v8 + 72;
      v53 = v10;
      v54 = v12;
      v55 = v8 + 64;
      v56 = v8;
      do
      {
        if (v13 < 0 || v13 >= 1 << v16)
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
        }

        v17 = v13 >> 6;
        if ((*(v15 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v8 + 36) != v12)
        {
          goto LABEL_26;
        }

        v18 = *(v8 + 56);
        v19 = *(*(v8 + 48) + 8 * v13);
        v20 = *(v18 + 8 * v13);
        v21 = sub_237EF8590();
        v58 = v22;
        v59 = v21;
        v23 = v19;
        v2 = v20;
        v24 = [v2 identifier];
        v57 = sub_237EF8590();
        v26 = v25;

        [v2 location];
        v28 = v27;
        v30 = v29;
        [v2 confidence];
        v32 = v31;

        v60[0] = v11;
        v34 = v11[2];
        v33 = v11[3];
        if (v34 >= v33 >> 1)
        {
          sub_237C63748((v33 > 1), v34 + 1, 1);
          v11 = v60[0];
        }

        v11[2] = v34 + 1;
        v35 = &v11[7 * v34];
        v35[4] = v59;
        v35[5] = v58;
        v35[6] = v57;
        v35[7] = v26;
        v35[8] = v28;
        v35[9] = v30;
        *(v35 + 20) = v32;
        v8 = v56;
        v16 = *(v56 + 32);
        v36 = 1 << v16;
        if (v13 >= 1 << v16)
        {
          goto LABEL_27;
        }

        v15 = v55;
        v37 = *(v55 + 8 * v17);
        if ((v37 & (1 << v13)) == 0)
        {
          goto LABEL_28;
        }

        v12 = v54;
        if (*(v56 + 36) != v54)
        {
          goto LABEL_29;
        }

        v38 = v37 & (-2 << (v13 & 0x3F));
        if (v38)
        {
          v36 = __clz(__rbit64(v38)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v39 = v53;
        }

        else
        {
          v40 = v17 << 6;
          v41 = v17 + 1;
          v39 = v53;
          v42 = (v52 + 8 * v17);
          while (v41 < (v36 + 63) >> 6)
          {
            v44 = *v42++;
            v43 = v44;
            v40 += 64;
            ++v41;
            if (v44)
            {
              v36 = __clz(__rbit64(v43)) + v40;
              break;
            }
          }
        }

        ++v14;
        v13 = v36;
      }

      while (v14 != v39);

      a1.super.super.isa = isa;
      v4 = v50;
      OUTLINED_FUNCTION_10_29();
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v49 = sub_237D27C60(v11, &qword_27DEB0E58, &unk_237F0CB10, sub_237D29294);

    *v4 = v49;
    v4[1] = v2;
    v4[2] = 0xE800000000000000;
  }

  else
  {
    v45 = v60[0];
    sub_237EF5DC0();

    swift_willThrow();
  }

  result.allKeypointsKey._object = v48;
  result.allKeypointsKey._countAndFlagsBits = v47;
  result.keypoints._rawValue = v46;
  return result;
}

unint64_t sub_237D27038()
{
  result = qword_27DEB0E38;
  if (!qword_27DEB0E38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEB0E38);
  }

  return result;
}

unint64_t sub_237D2707C()
{
  result = qword_27DEAD158;
  if (!qword_27DEAD158)
  {
    type metadata accessor for VNRecognizedPointKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD158);
  }

  return result;
}

uint64_t JointKey.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_237D27938(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  sub_237EF8590();
  v6 = sub_237EF8560();

  v7 = sub_237EF8590();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

uint64_t sub_237D279C4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = *a3;
  *a5 = *a2;
  a5[1] = v8;

  return sub_237EF8260();
}

uint64_t sub_237D27A40@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = JointKey.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_237D27A80@<X0>(uint64_t *a1@<X8>)
{
  result = JointKey.debugDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t JointKey.debugDescription.getter()
{
  v1 = *v0;
  sub_237EF8260();
  return v1;
}

uint64_t JointPoint.key.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_237EF8260();
}

void __swiftcall JointPoint.init(_:location:confidence:)(CreateMLComponents::JointPoint *__return_ptr retstr, CreateMLComponents::JointKey _, CGPoint location, Swift::Float confidence)
{
  v4 = *(_.rawValue._countAndFlagsBits + 8);
  retstr->key.rawValue._countAndFlagsBits = *_.rawValue._countAndFlagsBits;
  retstr->key.rawValue._object = v4;
  retstr->location.x = location.x;
  retstr->location.y = location.y;
  retstr->confidence = confidence;
}

uint64_t sub_237D27B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    result = OUTLINED_FUNCTION_16_19(a1, "Swift/Dictionary.swift");
    __break(1u);
  }

  else
  {
    if (a3 - a2 >= *(a1 + 16))
    {
      v5 = *(a1 + 16);
    }

    else
    {
      v5 = a3 - a2;
    }

    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E68, &qword_237F0CB20);
      v6 = sub_237EF9830();
    }

    else
    {
      v6 = MEMORY[0x277D84F98];
    }

    v9 = v6;
    v7 = sub_237EF8260();
    sub_237D28F6C(v7, a2, a3, 1, &v9);

    return v9;
  }

  return result;
}

uint64_t sub_237D27C60(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_237EF9830();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;
  v6 = sub_237EF8260();
  a4(v6, 1, &v8);

  return v8;
}

CreateMLComponents::Pose __swiftcall Pose.init(from:)(Swift::OpaquePointer from)
{
  v1[1]._rawValue = 0x6C6C414F50494E56;
  v1[2]._rawValue = 0xE800000000000000;
  v1->_rawValue = from._rawValue;
  result.keypoints = from;
  return result;
}

uint64_t Pose.keypoints.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

Swift::Float __swiftcall Pose.boundingBoxArea(confidenceThreshold:)(Swift::Float confidenceThreshold)
{
  v2 = sub_237D269E0(*v1);
  sub_237D27DD8(v2);
  v4 = v3;

  return v4;
}

void sub_237D27DD8(uint64_t result)
{
  v2 = 0;
  v3 = *(result + 16);
  v4 = result - 8;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v2)
    {
      v21 = v6[2];
      if (v21)
      {
        OUTLINED_FUNCTION_7_28();
        v22 = v55;
        v23 = *(v55 + 16);
        v24 = 6;
        do
        {
          v1 = v6[v24];
          v55 = v22;
          v25 = *(v22 + 24);
          if (v23 >= v25 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v25);
            OUTLINED_FUNCTION_3_41();
            sub_237C63768(v26);
            v22 = v55;
          }

          *(v22 + 16) = v23 + 1;
          *(v22 + 8 * v23 + 32) = v1;
          v24 += 5;
          ++v23;
          --v21;
        }

        while (v21);
      }

      else
      {

        v22 = MEMORY[0x277D84F90];
      }

      v27 = 0;
      v28 = MEMORY[0x277D84F90];
      v29 = MEMORY[0x277D84F90];
      while (v3 != v27)
      {
        if (v27 >= v3)
        {
          goto LABEL_43;
        }

        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_44;
        }

        OUTLINED_FUNCTION_9_21();
        if (!(v10 ^ v11 | v9))
        {
          v33 = *v31;
          v32 = v31[1];
          v34 = v31[2];
          v35 = v31[3];
          sub_237EF8260();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v29;
          v37 = v4;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_4_34();
            OUTLINED_FUNCTION_13_18();
          }

          v39 = *(v29 + 16);
          v38 = *(v29 + 24);
          if (v39 >= v38 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v38);
            v29 = v28;
            OUTLINED_FUNCTION_3_41();
            sub_237C62D70(v41, v42, v43);
            OUTLINED_FUNCTION_13_18();
          }

          *(v29 + 16) = v39 + 1;
          v40 = v29 + 40 * v39;
          *(v40 + 32) = v33;
          *(v40 + 40) = v32;
          *(v40 + 48) = v34;
          *(v40 + 56) = v35;
          *(v40 + 64) = v1;
          v27 = v30;
          v4 = v37;
        }
      }

      v44 = *(v29 + 16);
      if (v44)
      {
        OUTLINED_FUNCTION_7_28();
        v45 = v55;
        v46 = *(v55 + 16);
        v47 = 56;
        do
        {
          v48 = *(v29 + v47);
          v55 = v45;
          v49 = *(v45 + 24);
          if (v46 >= v49 >> 1)
          {
            OUTLINED_FUNCTION_17_0(v49);
            OUTLINED_FUNCTION_3_41();
            sub_237C63768(v50);
            v45 = v55;
          }

          *(v45 + 16) = v46 + 1;
          *(v45 + 8 * v46 + 32) = v48;
          v47 += 40;
          ++v46;
          --v44;
        }

        while (v44);
      }

      else
      {

        v45 = MEMORY[0x277D84F90];
      }

      sub_237D60F3C(v22);
      if (v51 & 1) != 0 || (sub_237D60F3C(v45), (v52))
      {
      }

      else
      {
        sub_237CB8680(v22);
        v54 = v53;

        if ((v54 & 1) == 0)
        {
          sub_237CB8680(v45);

          return;
        }
      }

      return;
    }

    if (v2 >= v3)
    {
      break;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_9_21();
    if (!(v10 ^ v11 | v9))
    {
      v13 = *v8;
      v12 = v8[1];
      v14 = v8[2];
      v15 = v8[3];
      sub_237EF8260();
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v6;
      if ((v16 & 1) == 0)
      {
        OUTLINED_FUNCTION_4_34();
        OUTLINED_FUNCTION_13_18();
      }

      v18 = v6[2];
      v17 = v6[3];
      if (v18 >= v17 >> 1)
      {
        v20 = OUTLINED_FUNCTION_17_0(v17);
        v6 = v5;
        v5 = &v55;
        sub_237C62D70(v20, v18 + 1, 1);
        OUTLINED_FUNCTION_13_18();
      }

      v6[2] = v18 + 1;
      v19 = &v6[5 * v18];
      v19[4] = v13;
      v19[5] = v12;
      v19[6] = v14;
      v19[7] = v15;
      *(v19 + 16) = v1;
      v2 = v7;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

BOOL static JointPoint.== infix(_:_:)(double *a1, uint64_t a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *(a1 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v3 != v6 || v2 != v5)
    {
      return 0;
    }

    return v4 == v7;
  }

  v9 = sub_237EF9D40();
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6 && v2 == v5)
  {
    return v4 == v7;
  }

  return result;
}

uint64_t static Pose.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (!sub_237D0EE18(*a1, *a2))
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_237EF9D40();
}

void sub_237D2829C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = sub_237EF9810();
  if (!*(v7 + 16))
  {

LABEL_29:
    *v5 = v8;
    return;
  }

  v35 = v4;
  v9 = 0;
  OUTLINED_FUNCTION_2_40();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v8 + 8;
  if ((v11 & v10) == 0)
  {
LABEL_4:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = *(v7 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_9;
      }
    }

    if (v6)
    {
      v34 = 1 << *(v7 + 32);
      if (v34 >= 64)
      {
        OUTLINED_FUNCTION_17_20(v34);
      }

      else
      {
        *v7 = -1 << v34;
      }

      *(v7 + 16) = 0;
    }

    v5 = v35;
    goto LABEL_29;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_9:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v7 + 48) + 8 * v19);
    v21 = *(*(v7 + 56) + 8 * v19);
    if ((v6 & 1) == 0)
    {
      v22 = v20;
      v23 = v21;
    }

    sub_237EF9040();
    OUTLINED_FUNCTION_5_30();
    if (((v26 << v25) & ~v15[v24]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_32();
LABEL_20:
    OUTLINED_FUNCTION_12_24();
    *(v15 + v31) |= v32;
    *(v8[6] + 8 * v33) = v20;
    *(v8[7] + 8 * v33) = v21;
    ++v8[2];
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_22();
  while (++v27 != v29 || (v28 & 1) == 0)
  {
    v30 = v27 == v29;
    if (v27 == v29)
    {
      v27 = 0;
    }

    v28 |= v30;
    if (v15[v27] != -1)
    {
      OUTLINED_FUNCTION_14_24();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_237D2848C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E50, &qword_237F0CB08);
  v38 = v4;
  v6 = sub_237EF9810();
  if (!*(v5 + 16))
  {
LABEL_28:

LABEL_29:
    *v3 = v6;
    return;
  }

  v37 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_2_40();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v13)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_9;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_29;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      OUTLINED_FUNCTION_17_20(v36);
    }

    else
    {
      *v8 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v18 = v15 | (v7 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v39 = *v22;
    if ((v38 & 1) == 0)
    {
      sub_237EF8260();
      sub_237EF8260();
    }

    sub_237EFA120();
    sub_237EF8610();
    sub_237EFA170();
    OUTLINED_FUNCTION_5_30();
    if (((v26 << v25) & ~v14[v24]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_32();
LABEL_20:
    OUTLINED_FUNCTION_12_24();
    *(v14 + v31) |= v32;
    v34 = (v6[6] + 16 * v33);
    *v34 = v20;
    v34[1] = v21;
    v35 = (v6[7] + 16 * v33);
    *v35 = v39;
    v35[1] = v23;
    ++v6[2];
    v5 = v37;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_22();
  while (++v27 != v29 || (v28 & 1) == 0)
  {
    v30 = v27 == v29;
    if (v27 == v29)
    {
      v27 = 0;
    }

    v28 |= v30;
    if (v14[v27] != -1)
    {
      OUTLINED_FUNCTION_14_24();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_237D286D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E68, &qword_237F0CB20);
  v30 = v4;
  result = sub_237EF9810();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      sub_237D28F08(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 56) + 8 * v18);
    v31 = *(*(v5 + 48) + 16 * v18);
    v20 = *(*(v5 + 48) + 16 * v18 + 8);
    if ((v30 & 1) == 0)
    {
      sub_237EF8260();
    }

    sub_237EFA120();
    sub_237EFA140();
    if (v20)
    {
      sub_237EF8610();
    }

    result = sub_237EFA170();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 16 * v24) = v31;
    *(*(v7 + 56) + 8 * v24) = v19;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_237D28990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E58, &unk_237F0CB10);
  v37 = v4;
  result = sub_237EF9810();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v36 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      sub_237D28F08(0, (v35 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5 + 56) + 40 * v18;
    v23 = *(v22 + 8);
    v38 = *v22;
    v39 = *(v22 + 16);
    v24 = *(v22 + 32);
    if ((v37 & 1) == 0)
    {
      sub_237EF8260();
      sub_237EF8260();
    }

    sub_237EFA120();
    sub_237EF8610();
    result = sub_237EFA170();
    v25 = -1 << *(v7 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v7 + 48) + 16 * v28);
    *v33 = v20;
    v33[1] = v21;
    v34 = *(v7 + 56) + 40 * v28;
    *v34 = v38;
    *(v34 + 8) = v23;
    *(v34 + 16) = v39;
    *(v34 + 32) = v24;
    ++*(v7 + 16);
    v5 = v36;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_237D28C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E48, &qword_237F0CB00);
  v34 = v4;
  result = sub_237EF9810();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_237D28F08(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
      sub_237EF8260();
    }

    sub_237EFA120();
    sub_237EF8610();
    result = sub_237EFA170();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

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
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_237D28F08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_237F07A60;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_237D28F6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v8 = sub_237EF8260();
  v9 = 0;
  v26 = v8;
  v27 = a2;
  while (1)
  {
    v10 = *(v8 + 16);
    if (v9 == v10)
    {
LABEL_19:
      swift_bridgeObjectRelease_n();
      return;
    }

    if (v9 >= v10)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490, &qword_237F07150);
      sub_237EFA020();
      __break(1u);
      goto LABEL_27;
    }

    if (a3 == a2)
    {
      goto LABEL_19;
    }

    if (a3 < v27)
    {
      goto LABEL_22;
    }

    if (a2 >= a3)
    {
      goto LABEL_23;
    }

    v29 = *(v8 + 16 * v9 + 32);
    v11 = *a5;
    sub_237EF8260();
    v13 = sub_237D2FD00(v29);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_24;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a4)
    {
      if (v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E70, &qword_237F0CB28);
      sub_237EF96C0();
      if (v17)
      {
        goto LABEL_17;
      }
    }

LABEL_14:
    v20 = *a5;
    *(*a5 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    *(v20[6] + 16 * v13) = v29;
    *(v20[7] + 8 * v13) = a2;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_25;
    }

    v20[2] = v23;
    ++a2;
    ++v9;
    a4 = 1;
    v8 = v26;
  }

  sub_237D286D4(v16, a4 & 1);
  v18 = sub_237D2FD00(v29);
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_26;
  }

  v13 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_27:
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237EFDAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD490, &qword_237F07150);
  sub_237EF9670();
  MEMORY[0x2383E0710](39, 0xE100000000000000);
  sub_237EF9740("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_237D29294(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v6 = 0;
  v32 = *(a1 + 16);
  while (1)
  {
    if (v32 == v6)
    {
LABEL_17:

      return;
    }

    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_237EFA020();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(a1 + v5 + 80);
    v9 = *(a1 + v5 + 64);
    v8 = *(a1 + v5 + 72);
    v10 = *(a1 + v5 + 48);
    v11 = *(a1 + v5 + 56);
    v13 = *(a1 + v5 + 32);
    v12 = *(a1 + v5 + 40);
    sub_237EF8260();
    sub_237EF8260();
    if (!v12)
    {
      goto LABEL_17;
    }

    v33 = v10;
    v14 = a2;
    v15 = *a3;
    v17 = sub_237D30F88();
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      break;
    }

    if (v14)
    {
      if (v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E60, &unk_237F11EA0);
      sub_237EF96C0();
      if (v21)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v24 = *a3;
    *(*a3 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v24[6] + 16 * v17);
    *v25 = v13;
    v25[1] = v12;
    v26 = v24[7] + 40 * v17;
    *v26 = v33;
    *(v26 + 8) = v11;
    *(v26 + 16) = v9;
    *(v26 + 24) = v8;
    *(v26 + 32) = v7;
    v27 = v24[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_20;
    }

    v24[2] = v29;
    v5 += 56;
    ++v6;
    a2 = 1;
  }

  sub_237D28990(v20, v14 & 1);
  v22 = sub_237D30F88();
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_21;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237EFDAA0);
  sub_237EF9670();
  MEMORY[0x2383E0710](39, 0xE100000000000000);
  sub_237EF9740("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

void sub_237D295B4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_237EFA020();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    sub_237EF8260();
    v11 = sub_237D2FC30(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D8, &unk_237F066B0);
      sub_237EF96C0();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_237D28C6C(v14, a2 & 1);
  v16 = sub_237D2FC30(v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001BLL, 0x8000000237EFDAA0);
  sub_237EF9670();
  MEMORY[0x2383E0710](39, 0xE100000000000000);
  sub_237EF9740("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
}

unint64_t sub_237D2988C()
{
  result = qword_27DEB0E40;
  if (!qword_27DEB0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0E40);
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237D29900(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 36))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237D29940(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *OUTLINED_FUNCTION_4_34()
{
  v2 = *(v0 + 16) + 1;

  return sub_237C62D70(0, v2, 1);
}

void OUTLINED_FUNCTION_7_28()
{

  sub_237C63768(0);
}

uint64_t OUTLINED_FUNCTION_16_19(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

uint64_t OUTLINED_FUNCTION_17_20@<X0>(uint64_t a1@<X8>)
{

  return sub_237D28F08(0, (a1 + 63) >> 6, v1);
}

uint64_t MLModelImageFeatureExtractor.inputName.getter()
{
  v1 = *(v0 + 8);
  sub_237EF8260();
  return v1;
}

uint64_t MLModelImageFeatureExtractor.outputName.getter()
{
  v1 = *(v0 + 24);
  sub_237EF8260();
  return v1;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLModelImageFeatureExtractor.init(model:inputName:outputName:context:)(CreateMLComponents::MLModelImageFeatureExtractor *__return_ptr retstr, MLModel model, Swift::String inputName, Swift::String outputName, CIContext context)
{
  isa = context.super.isa;
  object = outputName._object;
  countAndFlagsBits = outputName._countAndFlagsBits;
  v9 = inputName._object;
  v10 = inputName._countAndFlagsBits;
  sub_237D29C44(model.super.isa, inputName._countAndFlagsBits, inputName._object, outputName._countAndFlagsBits, outputName._object);
  if (v5)
  {
  }

  else
  {
    retstr->model = model;
    retstr->inputName._countAndFlagsBits = v10;
    retstr->inputName._object = v9;
    retstr->outputName._countAndFlagsBits = countAndFlagsBits;
    retstr->outputName._object = object;
    retstr->context.super.isa = isa;
  }
}

void sub_237D29C44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [a1 modelDescription];
  v12 = sub_237D2AC00(a1);
  if (v5)
  {
  }

  else
  {
    v13 = v12;
    if ([v12 type] == 4)
    {
      v44 = a4;
      v45 = a5;
      v46 = v11;
      v47 = v13;
      v14 = [v11 inputDescriptionsByName];
      sub_237C75918(0, qword_27DEAF298, 0x277CBFEE0);
      v15 = sub_237EF8210();

      v16 = v15;
      v17 = 0;
      v18 = v15 + 64;
      v19 = 1 << *(v15 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v15 + 64);
      v22 = (v19 + 63) >> 6;
      v48 = v16;
      while (v21)
      {
LABEL_12:
        v24 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v25 = v24 | (v17 << 6);
        v26 = (*(v16 + 48) + 16 * v25);
        if (*v26 != a2 || v26[1] != a3)
        {
          v28 = *(*(v16 + 56) + 8 * v25);
          v29 = sub_237EF9D40();
          v16 = v48;
          if ((v29 & 1) == 0)
          {
            v30 = v28;
            if (![v30 isOptional])
            {
              v41 = sub_237D2CDA0();
              v42 = OUTLINED_FUNCTION_45_0(&type metadata for MLModelImageFeatureExtractor.Error, v41);
              *v43 = 0xD000000000000031;
              v43[1] = 0x8000000237EFDCD0;
              OUTLINED_FUNCTION_30_13(v42, v43);

              return;
            }

            v16 = v48;
          }
        }
      }

      while (1)
      {
        v23 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          return;
        }

        if (v23 >= v22)
        {
          break;
        }

        v21 = *(v18 + 8 * v23);
        ++v17;
        if (v21)
        {
          v17 = v23;
          goto LABEL_12;
        }
      }

      v36 = sub_237D2AD34(a1);
      if ([v36 type] != 5)
      {
        sub_237EF9330();
        MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237EFDD10);
        MEMORY[0x2383E0710](v44, v45);
        OUTLINED_FUNCTION_19_19();
        [v36 type];
        type metadata accessor for MLFeatureType(0);
        sub_237EF9670();
        OUTLINED_FUNCTION_18_19();
        v37 = sub_237D2CDA0();
        v38 = OUTLINED_FUNCTION_45_0(&type metadata for MLModelImageFeatureExtractor.Error, v37);
        OUTLINED_FUNCTION_23_15(v38, v39);
        OUTLINED_FUNCTION_17_21(v40, 1);
      }
    }

    else
    {
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000019, 0x8000000237EFDC90);
      MEMORY[0x2383E0710](a2, a3);
      OUTLINED_FUNCTION_19_19();
      [v13 type];
      type metadata accessor for MLFeatureType(0);
      sub_237EF9670();
      OUTLINED_FUNCTION_18_19();
      v31 = sub_237D2CDA0();
      v32 = OUTLINED_FUNCTION_45_0(&type metadata for MLModelImageFeatureExtractor.Error, v31);
      OUTLINED_FUNCTION_23_15(v32, v33);
      OUTLINED_FUNCTION_30_13(v34, v35);
    }
  }
}

uint64_t MLModelImageFeatureExtractor.init(contentsOf:configuration:inputName:outputName:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237D2A094()
{
  OUTLINED_FUNCTION_12_2();
  sub_237C75918(0, &qword_27DEAF200, 0x277CBFF20);
  sub_237EF8260();
  sub_237EF8260();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_237D2A16C;
  v3 = v0[3];
  v2 = v0[4];

  return MEMORY[0x2821119B0](v3, v2);
}

uint64_t sub_237D2A16C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v4;
  *(v2 + 96) = v0;

  if (v0)
  {

    v5 = sub_237D2A3CC;
  }

  else
  {
    v5 = sub_237D2A290;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237D2A290()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 88);
  sub_237D29C44(v8, v5, v4, v2, v3);

  sub_237EF5EF0();
  OUTLINED_FUNCTION_3_11();
  (*(v9 + 8))(v6);
  if (v1)
  {
    v10 = *(v0 + 72);
  }

  else
  {
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = *(v0 + 40);
    v15 = *(v0 + 16);
    v16 = *(v0 + 64);
    *v15 = *(v0 + 88);
    *(v15 + 8) = v14;
    *(v15 + 16) = v13;
    *(v15 + 24) = v12;
    *(v15 + 32) = v16;
  }

  OUTLINED_FUNCTION_3_0();

  return v11();
}

uint64_t sub_237D2A3CC()
{
  OUTLINED_FUNCTION_12_2();
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  sub_237EF5EF0();
  OUTLINED_FUNCTION_3_11();
  (*(v3 + 8))(v2);

  OUTLINED_FUNCTION_3_0();

  return v4();
}

uint64_t MLModelImageFeatureExtractor.applied(to:eventHandler:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *v2;
  *(v3 + 40) = *(v2 + 8);
  *(v3 + 56) = *(v2 + 24);
  *(v3 + 64) = *(v2 + 32);
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237D2A4AC()
{
  v1 = sub_237D2A800(*(v0 + 24));
  *(v0 + 80) = v1;
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
  *(v0 + 88) = v3;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_237D2A5E4;

  return MEMORY[0x282111978](v2, v3);
}

uint64_t sub_237D2A5E4()
{
  OUTLINED_FUNCTION_12_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v7 = v6;
  v4[13] = v0;

  if (v0)
  {
    v8 = sub_237D2A798;
  }

  else
  {
    v9 = v4[11];
    v4[14] = v3;

    v8 = sub_237D2A708;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237D2A798()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  return v1();
}

id sub_237D2A800(void *a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = [*v1 modelDescription];
  v7 = [v6 inputDescriptionsByName];

  sub_237C75918(0, qword_27DEAF298, 0x277CBFEE0);
  v8 = sub_237EF8210();

  v9 = OUTLINED_FUNCTION_49_2();
  v11 = sub_237DD7100(v9, v10, v8);

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [v11 imageConstraint];
  if (!v12)
  {

LABEL_6:
    v16 = sub_237CCD12C();
    OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v16);
    *v17 = v4;
    v17[1] = v5;
    OUTLINED_FUNCTION_17_21(v17, 5);
    sub_237EF8260();
    return v5;
  }

  v13 = v12;
  v14 = [v12 pixelFormatType];

  sub_237D1E82C(a1, v14, 0xD00000000000001CLL, 0x8000000237F0CC30);
  if (v2)
  {
  }

  else
  {
    v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF150, &unk_237F07D60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F03530;
    *(inited + 32) = v4;
    *(inited + 40) = v5;
    type metadata accessor for CVBuffer(0);
    *(inited + 72) = v21;
    *(inited + 48) = v19;
    sub_237EF8260();
    v22 = v19;
    sub_237EF8230();
    v23 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v5 = sub_237CCD044();
  }

  return v5;
}

void sub_237D2AA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = sub_237EF8560();
  v35 = [v27 featureValueForName_];

  if (v35)
  {
    v36 = [v35 multiArrayValue];
    if (v36)
    {
      v37 = v36;
      sub_237EF7EB0();
      sub_237EF7DD0();

      (*(v30 + 8))(v33, v28);
    }

    else
    {
      v40 = [v35 type];
      v41 = sub_237CCD12C();
      OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v41);
      *v42 = 5;
      v42[1] = v40;
      OUTLINED_FUNCTION_17_21(v42, 2);
    }
  }

  else
  {
    v38 = sub_237CCD12C();
    OUTLINED_FUNCTION_45_0(&type metadata for ModelCompatibilityError, v38);
    *v39 = v25;
    v39[1] = v23;
    OUTLINED_FUNCTION_17_21(v39, 6);
    sub_237EF8260();
  }

  OUTLINED_FUNCTION_12_6();
}

void *sub_237D2AC00(void *a1)
{
  v1 = [a1 modelDescription];
  v2 = [v1 inputDescriptionsByName];

  sub_237C75918(0, qword_27DEAF298, 0x277CBFEE0);
  v3 = sub_237EF8210();

  v4 = OUTLINED_FUNCTION_49_2();
  v6 = sub_237DD7100(v4, v5, v3);

  if (!v6)
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v7 = OUTLINED_FUNCTION_49_2();
    MEMORY[0x2383E0710](v7);
    OUTLINED_FUNCTION_18_19();
    v8 = sub_237D2CDA0();
    v9 = OUTLINED_FUNCTION_45_0(&type metadata for MLModelImageFeatureExtractor.Error, v8);
    OUTLINED_FUNCTION_23_15(v9, v10);
    OUTLINED_FUNCTION_30_13(v11, v12);
  }

  return v6;
}

void *sub_237D2AD34(void *a1)
{
  v1 = [a1 modelDescription];
  v2 = [v1 outputDescriptionsByName];

  sub_237C75918(0, qword_27DEAF298, 0x277CBFEE0);
  v3 = sub_237EF8210();

  v4 = OUTLINED_FUNCTION_49_2();
  v6 = sub_237DD7100(v4, v5, v3);

  if (!v6)
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v7 = OUTLINED_FUNCTION_49_2();
    MEMORY[0x2383E0710](v7);
    OUTLINED_FUNCTION_18_19();
    v8 = sub_237D2CDA0();
    v9 = OUTLINED_FUNCTION_45_0(&type metadata for MLModelImageFeatureExtractor.Error, v8);
    OUTLINED_FUNCTION_23_15(v9, v10);
    OUTLINED_FUNCTION_17_21(v11, 1);
  }

  return v6;
}

uint64_t sub_237D2AE6C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237D2AF14;

  return MLModelImageFeatureExtractor.applied(to:eventHandler:)(a1, v4);
}

uint64_t sub_237D2AF14()
{
  v1 = *v0;
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t MLModelImageFeatureExtractor.Error.debugDescription.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  if (v1[2])
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();
    v4 = 0xD000000000000057;
    v5 = 0x8000000237EFDAC0;
  }

  else
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();
    v5 = 0x8000000237EFDB20;
    v4 = 0xD000000000000053;
  }

  MEMORY[0x2383E0710](v4, v5);
  MEMORY[0x2383E0710](v2, v3);
  return v7;
}

uint64_t static MLModelImageFeatureExtractor.Error.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v18 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_237EF9D40();
        v20 = OUTLINED_FUNCTION_20_10();
        v22 = OUTLINED_FUNCTION_5_31(v20, v21);
        OUTLINED_FUNCTION_5_31(v22, v23);
        sub_237D2B238();
        OUTLINED_FUNCTION_20_10();
        goto LABEL_16;
      }

      v28 = OUTLINED_FUNCTION_5_31(v18, v2);
      OUTLINED_FUNCTION_5_31(v28, v29);
      sub_237D2B238();
      sub_237D2B238();
      return 1;
    }

LABEL_9:
    v12 = OUTLINED_FUNCTION_20_10();
    v14 = OUTLINED_FUNCTION_5_31(v12, v13);
    OUTLINED_FUNCTION_5_31(v14, v15);
    sub_237D2B238();
    OUTLINED_FUNCTION_20_10();
    sub_237D2B238();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v16 = 1;
    v24 = OUTLINED_FUNCTION_4_35();
    sub_237D2B230(v24, v25);
    v26 = OUTLINED_FUNCTION_4_35();
    sub_237D2B230(v26, v27);
    OUTLINED_FUNCTION_4_35();
    sub_237D2B238();
    OUTLINED_FUNCTION_4_35();
    sub_237D2B238();
    return v16;
  }

  v7 = sub_237EF9D40();
  v8 = OUTLINED_FUNCTION_20_10();
  sub_237D2B230(v8, v9);
  v10 = OUTLINED_FUNCTION_4_35();
  sub_237D2B230(v10, v11);
  OUTLINED_FUNCTION_4_35();
  sub_237D2B238();
  OUTLINED_FUNCTION_20_10();
LABEL_16:
  sub_237D2B238();
  return v7 & 1;
}

void sub_237D2B248()
{
  OUTLINED_FUNCTION_13_4();
  v74 = v2;
  v75 = v1;
  v4 = v3;
  v78 = sub_237EF6D60();
  OUTLINED_FUNCTION_1();
  v81 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E88, &qword_237F0CD00);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v71 = (&v69 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E90, &qword_237F0CD08);
  OUTLINED_FUNCTION_18(v12);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  v16 = sub_237EF6D20();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EF6D90();
  OUTLINED_FUNCTION_1();
  v72 = v23;
  v73 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_3();
  v76 = v24;
  v26 = *(v0 + 8);
  v25 = *(v0 + 16);
  v27 = [v4 imageConstraint];
  if (!v27)
  {
    OUTLINED_FUNCTION_8_33();
    sub_237EF9330();

    OUTLINED_FUNCTION_20_5();
    v79 = 0xD000000000000013;
    v80 = v29;
    MEMORY[0x2383E0710](v26, v25);
    MEMORY[0x2383E0710](0xD00000000000001DLL, 0x8000000237EFDC10);
    v30 = v79;
    v31 = v80;
    v32 = sub_237D2CDA0();
    v33 = OUTLINED_FUNCTION_45_0(&type metadata for MLModelImageFeatureExtractor.Error, v32);
    *v34 = v30;
    v34[1] = v31;
    OUTLINED_FUNCTION_30_13(v33, v34);
LABEL_28:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  v28 = v27;
  [v27 pixelsWide];
  [v28 pixelsHigh];
  [v28 pixelFormatType];
  sub_237EF6D10();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    (*(v18 + 104))(v21, *MEMORY[0x277D250B0], v16);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_237C9A114(v15, &qword_27DEB0E90, &qword_237F0CD08);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v15, v16);
  }

  v35 = v76;
  sub_237EF6D70();
  v36 = [v28 sizeConstraint];
  v37 = [v36 type];

  if (v37 != 2)
  {
    if (v37 != 3)
    {
LABEL_27:

      v66 = v74;
      (*(v72 + 32))(v74, v35, v73);
      v67 = *MEMORY[0x277D25120];
      v68 = sub_237EF6E60();
      (*(*(v68 - 8) + 104))(v66, v67, v68);
      goto LABEL_28;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E98, &qword_237F0CD10);
    v70 = v28;
    v38 = [v28 sizeConstraint];
    v39 = [v38 pixelsWideRange];
    v41 = v40;

    if (__OFADD__(v39, v41))
    {
      __break(1u);
    }

    else
    {
      v42 = v71;
      if (&v39[v41] >= v39)
      {
        sub_237EF7D40();
        v43 = [v70 sizeConstraint];
        v44 = [v43 pixelsHighRange];
        v46 = v45;

        if (!__OFADD__(v44, v46))
        {
          if (&v44[v46] >= v44)
          {
            sub_237EF7D40();
            v47 = MEMORY[0x277D250D0];
LABEL_26:
            v64 = *v47;
            v65 = sub_237EF6D30();
            (*(*(v65 - 8) + 104))(v42, v64, v65);
            __swift_storeEnumTagSinglePayload(v42, 0, 1, v65);
            sub_237EF6D40();
            v28 = v70;
            goto LABEL_27;
          }

          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v48 = [v28 sizeConstraint];
  v49 = [v48 enumeratedImageSizes];

  sub_237C75918(0, &qword_27DEB0EA0, 0x277CBFF10);
  v50 = sub_237EF8910();

  v51 = sub_237D6DA5C();
  v70 = v28;
  if (!v51)
  {

    v57 = MEMORY[0x277D84F90];
LABEL_25:
    v42 = v71;
    *v71 = v57;
    v47 = MEMORY[0x277D250C8];
    v35 = v76;
    goto LABEL_26;
  }

  v52 = v51;
  v53 = OUTLINED_FUNCTION_15_23(MEMORY[0x277D84F90]);
  sub_237C63528(v53, v54, v55);
  v77 = v52;
  if ((v52 & 0x8000000000000000) == 0)
  {
    v56 = 0;
    v57 = v79;
    v58 = v50;
    v59 = v50 & 0xC000000000000001;
    do
    {
      if (v59)
      {
        v60 = MEMORY[0x2383E1490](v56, v58);
      }

      else
      {
        v60 = *(v58 + 8 * v56 + 32);
      }

      v61 = v60;
      [v60 pixelsWide];
      [v61 pixelsHigh];
      sub_237EF6D50();

      v79 = v57;
      v63 = *(v57 + 16);
      v62 = *(v57 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_237C63528(v62 > 1, v63 + 1, 1);
        v57 = v79;
      }

      ++v56;
      *(v57 + 16) = v63 + 1;
      (*(v81 + 32))(v57 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v63, v8, v78);
    }

    while (v77 != v56);

    goto LABEL_25;
  }

LABEL_33:
  __break(1u);
}

void sub_237D2B96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v111 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7A8, &qword_237F0CCF0);
  v27 = OUTLINED_FUNCTION_18(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_26();
  v108 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_22_1();
  v109 = v31;
  v110 = sub_237EF6DF0();
  OUTLINED_FUNCTION_1();
  v107 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_3();
  v106 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78, &qword_237F0CCF8);
  OUTLINED_FUNCTION_18(v35);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v36);
  v38 = &v102 - v37;
  v39 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v113 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_26();
  v44 = v42 - v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_22_1();
  v112 = v46;
  v48 = *(v20 + 24);
  v47 = *(v20 + 32);
  v49 = [v23 multiArrayConstraint];
  if (!v49)
  {
    OUTLINED_FUNCTION_8_33();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000013, 0x8000000237EFDB80);
    MEMORY[0x2383E0710](v48, v47);
    MEMORY[0x2383E0710](0xD000000000000023, 0x8000000237EFDBA0);
    v60 = v114;
    v61 = v115;
    v62 = sub_237D2CDA0();
    OUTLINED_FUNCTION_45_0(&type metadata for MLModelImageFeatureExtractor.Error, v62);
    *v63 = v60;
    v63[1] = v61;
    OUTLINED_FUNCTION_17_21(v63, 1);
    goto LABEL_21;
  }

  v50 = v49;
  sub_237EF6E20();
  sub_237E5E9F0([v50 dataType], v38);
  v51 = v25;
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    sub_237C9A114(v38, &qword_27DEB0E78, &qword_237F0CCF8);
    v52 = type metadata accessor for SerializationError(0);
    v53 = sub_237CA2D6C();
    OUTLINED_FUNCTION_45_0(v52, v53);
    v54 = v50;
    v56 = v55;
    OUTLINED_FUNCTION_8_33();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000018, 0x8000000237EFDBD0);
    [v54 dataType];
    type metadata accessor for MLMultiArrayDataType(0);
    sub_237EF9670();
    OUTLINED_FUNCTION_18_19();
    v57 = v115;
    *v56 = v114;
    v56[1] = v57;
    OUTLINED_FUNCTION_49_2();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_237EF6E30();
    OUTLINED_FUNCTION_3_11();
    (*(v58 + 8))(v25, v59);
LABEL_21:
    OUTLINED_FUNCTION_12_6();
    return;
  }

  v65 = v112;
  v64 = v113;
  (*(v113 + 32))(v112, v38, v39);
  v66 = *(v64 + 16);
  v105 = v39;
  v66(v44, v65, v39);
  sub_237EF6DE0();
  v67 = [v50 shape];
  sub_237C75918(0, &qword_280C8CCF8, 0x277CCABB0);
  v68 = sub_237EF8910();

  v69 = sub_237D6DA5C();
  if (!v69)
  {

LABEL_18:
    sub_237EF6E10();
    v81 = [v50 shapeConstraint];
    v82 = v109;
    sub_237E5EBC8(v81, v109);
    v83 = v110;
    if (__swift_getEnumTagSinglePayload(v82, 1, v110) == 1)
    {
      sub_237C9A114(v82, &qword_27DEAD7A8, &qword_237F0CCF0);
      v84 = type metadata accessor for SerializationError(0);
      v85 = sub_237CA2D6C();
      OUTLINED_FUNCTION_45_0(v84, v85);
      v86 = v51;
      v87 = v50;
      v89 = v88;
      OUTLINED_FUNCTION_8_33();
      sub_237EF9330();

      OUTLINED_FUNCTION_20_5();
      v114 = 0xD00000000000001ELL;
      v115 = v90;
      v91 = [v87 shapeConstraint];
      v92 = [v91 description];
      v93 = sub_237EF8590();
      v95 = v94;

      MEMORY[0x2383E0710](v93, v95);

      OUTLINED_FUNCTION_18_19();
      v96 = v115;
      *v89 = v114;
      v89[1] = v96;
      OUTLINED_FUNCTION_49_2();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v113 + 8))(v112, v105);
      sub_237EF6E30();
      OUTLINED_FUNCTION_3_11();
      (*(v97 + 8))(v86, v98);
    }

    else
    {
      v100 = v106;
      v99 = v107;
      (*(v107 + 32))(v106, v82, v83);
      v101 = v108;
      (*(v99 + 16))(v108, v100, v83);
      __swift_storeEnumTagSinglePayload(v101, 0, 1, v83);
      sub_237EF6E00();

      (*(v99 + 8))(v100, v83);
      (*(v113 + 8))(v112, v105);
    }

    goto LABEL_21;
  }

  v70 = v69;
  v103 = v50;
  v104 = v25;
  v71 = OUTLINED_FUNCTION_15_23(MEMORY[0x277D84F90]);
  sub_237C62DB0(v71, v72, v73);
  if (v70 < 0)
  {
    goto LABEL_24;
  }

  v74 = 0;
  v75 = v114;
  while (1)
  {
    if ((v68 & 0xC000000000000001) != 0)
    {
      v76 = MEMORY[0x2383E1490](v74, v68);
      goto LABEL_13;
    }

    if ((v74 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v74 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v76 = *(v68 + 8 * v74 + 32);
LABEL_13:
    v77 = v76;
    v78 = sub_237EF8D10();

    v114 = v75;
    v80 = *(v75 + 16);
    v79 = *(v75 + 24);
    if (v80 >= v79 >> 1)
    {
      sub_237C62DB0(v79 > 1, v80 + 1, 1);
      v75 = v114;
    }

    ++v74;
    *(v75 + 16) = v80 + 1;
    *(v75 + 8 * v80 + 32) = v78;
    if (v70 == v74)
    {

      v50 = v103;
      v51 = v104;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_237D2C0D0()
{
  OUTLINED_FUNCTION_13_4();
  v119 = v1;
  v120 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v122 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v4);
  v118 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v117 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v7);
  v123 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v131 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v12);
  v125 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v129 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v16);
  v124 = sub_237EF6E30();
  OUTLINED_FUNCTION_1();
  v128 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v19);
  v20 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v132 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_26();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v104 - v27;
  v29 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v133 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_26();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v104 - v36;
  v39 = *v0;
  v38 = *(v0 + 8);
  v40 = *(v0 + 16);
  *&v134 = *(v0 + 24);
  v41 = *(v0 + 32);
  v42 = *(v0 + 40);
  v136 = v41;
  sub_237EF8260();
  v137 = v39;
  v43 = v39;
  v44 = v138;
  sub_237D2AC00(v43);
  OUTLINED_FUNCTION_21_17();
  if (v44)
  {
    goto LABEL_6;
  }

  v110 = v42;
  v111 = v38;
  v106 = v34;
  v113 = v45;
  v107 = v25;
  v112 = v37;
  v109 = v28;
  v46 = v135;
  v108 = v20;
  v47 = v136;
  sub_237EF8260();
  v48 = v134;
  v49 = v138;
  sub_237D2AD34(v137);
  OUTLINED_FUNCTION_21_17();
  if (v49)
  {

LABEL_6:

    goto LABEL_7;
  }

  v105 = v50;
  v51 = v111;
  v140[0] = v137;
  v140[1] = v111;
  v140[2] = v40;
  v140[3] = v48;
  v52 = v110;
  v140[4] = v47;
  v140[5] = v110;
  v53 = v112;
  v54 = v113;
  v55 = v138;
  sub_237D2B248();
  OUTLINED_FUNCTION_21_17();
  if (v55)
  {

    goto LABEL_6;
  }

  v56 = v106;
  (*(v133 + 16))(v106, v53, v29);
  sub_237EF7090();
  v140[11] = v137;
  v140[12] = v51;
  v140[13] = v40;
  v140[14] = v48;
  v140[15] = v136;
  v140[16] = v52;
  v57 = v138;
  sub_237D2B96C(v105, v58, v59, v60, v61, v62, v63, v64, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  OUTLINED_FUNCTION_21_17();
  if (v57)
  {

    (*(v132 + 8))(v109, v108);
    v65 = OUTLINED_FUNCTION_16_20();
    v67 = v29;
  }

  else
  {
    (*(v128 + 16))(v56, v46, v124);
    (*(v133 + 104))(v56, *MEMORY[0x277D250A0], v29);
    sub_237EF7090();
    v68 = v127;
    sub_237EF7720();
    sub_237EF7620();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    v136 = v29;
    v69 = v132;
    v70 = (*(v132 + 80) + 32) & ~*(v132 + 80);
    v71 = swift_allocObject();
    v134 = xmmword_237F03530;
    *(v71 + 16) = xmmword_237F03530;
    v72 = *(v69 + 16);
    v73 = v108;
    v72(v71 + v70, v109, v108);
    sub_237EF76B0();
    v74 = swift_allocObject();
    *(v74 + 16) = v134;
    v72(v74 + v70, v107, v73);
    v75 = v68;
    sub_237EF7700();
    v76 = [v137 modelDescription];
    v77 = [v76 modelURL];

    sub_237EF5EB0();
    sub_237EF5E40();
    v78 = v114;
    sub_237EF5DE0();
    v79 = v115;
    sub_237EF5E90();
    v80 = v131 + 8;
    v81 = *(v131 + 8);
    v82 = v123;
    v81(v78, v123);
    v137 = v81;
    v131 = v80;
    sub_237EF5EC0();
    v81(v79, v82);
    v83 = v116;
    sub_237EF7270();
    (*(v117 + 104))(v83, *MEMORY[0x277D253B0], v118);
    sub_237EF7660();
    v84 = *(v129 + 16);
    v85 = v126;
    v86 = v125;
    v84(v126, v75, v125);
    v87 = v121;
    sub_237EF7810();
    v88 = type metadata accessor for CoreMLPackage(0);
    v89 = v119;
    v90 = v119 + *(v88 + 24);
    *(v90 + 80) = 0;
    *(v90 + 48) = 0u;
    *(v90 + 64) = 0u;
    *(v90 + 16) = 0u;
    *(v90 + 32) = 0u;
    *v90 = 0u;
    v84(v89, v85, v86);
    memcpy(v140, v90, 0x58uLL);
    sub_237C9A114(v140, &unk_27DEAD7B0, &unk_237F03CA0);
    *v90 = 0u;
    *(v90 + 16) = 0u;
    *(v90 + 32) = 0u;
    *(v90 + 48) = 0u;
    *(v90 + 64) = 0u;
    *(v90 + 80) = 0;
    v91 = v122;
    v92 = v120;
    (*(v122 + 16))(v89 + *(v88 + 20), v87, v120);
    v93 = sub_237E34060();
    v95 = v94;
    v96 = sub_237EF7780();
    v98 = v97;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = *v98;
    sub_237C91098(v93, v95, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
    *v98 = v141;
    v96(&v139, 0);

    (*(v91 + 8))(v87, v92);
    v100 = *(v129 + 8);
    v101 = v125;
    v100(v126, v125);
    v137(v130, v123);
    v100(v127, v101);
    v102 = *(v132 + 8);
    v103 = v108;
    v102(v107, v108);
    (*(v128 + 8))(v135, v124);
    v102(v109, v103);
    v65 = OUTLINED_FUNCTION_16_20();
    v67 = v136;
  }

  v66(v65, v67);
LABEL_7:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D2CC58(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237D2CC98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D2CD00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237D2CD40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
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

unint64_t sub_237D2CDA0()
{
  result = qword_27DEB0E80;
  if (!qword_27DEB0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0E80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_21@<X0>(uint64_t a2@<X1>, char a3@<W8>)
{
  *(a2 + 16) = a3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_18_19()
{

  JUMPOUT(0x2383E0710);
}

void OUTLINED_FUNCTION_19_19()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_30_13(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t Pose.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0EA8, &qword_237F0CD18);
  OUTLINED_FUNCTION_1();
  v24 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D2D11C();
  sub_237EFA1B0();
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  result = sub_237EF8260();
  v15 = 0;
  while (v12)
  {
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(v9 + 56) + 40 * (v17 | (v15 << 6));
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = *(v18 + 32);
    v26 = *v18;
    v27 = v19;
    sub_237EF8260();
    result = sub_237D2D170(&v26);
    if (result != 40)
    {
      v26 = v20;
      v27 = v21;
      v28 = v22;
      v25 = result;
      sub_237D2DD84();
      result = sub_237EF9A70();
      if (v2)
      {
LABEL_11:

        return (*(v24 + 8))(v8, v4);
      }
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_11;
    }

    v12 = *(v9 + 64 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_237D2D11C()
{
  result = qword_27DEB0EB0;
  if (!qword_27DEB0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0EB0);
  }

  return result;
}

uint64_t sub_237D2D170(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_27DEACF70 != -1)
  {
    OUTLINED_FUNCTION_51_4(&qword_27DEACF70);
  }

  v2 = OUTLINED_FUNCTION_5_32(&qword_27DEB0BB8);
  v4 = v4 && v3 == v1;
  if (v4 || (OUTLINED_FUNCTION_4_36(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    if (qword_27DEACF78 != -1)
    {
      OUTLINED_FUNCTION_50_5(&qword_27DEACF78);
    }

    v6 = OUTLINED_FUNCTION_5_32(&qword_27DEB0BC8);
    v8 = v4 && v7 == v1;
    if (v8 || (OUTLINED_FUNCTION_4_36(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      if (qword_27DEACF80 != -1)
      {
        OUTLINED_FUNCTION_49_6(&qword_27DEACF80);
      }

      v9 = OUTLINED_FUNCTION_5_32(&qword_27DEB0BD8);
      v11 = v4 && v10 == v1;
      if (v11 || (OUTLINED_FUNCTION_4_36(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else
      {
        if (qword_27DEACF88 != -1)
        {
          OUTLINED_FUNCTION_48_5(&qword_27DEACF88);
        }

        v12 = OUTLINED_FUNCTION_5_32(&qword_27DEB0BE8);
        v14 = v4 && v13 == v1;
        if (v14 || (OUTLINED_FUNCTION_4_36(v12, v13) & 1) != 0)
        {

          return 3;
        }

        else
        {
          if (qword_27DEACF90 != -1)
          {
            OUTLINED_FUNCTION_47_3(&qword_27DEACF90);
          }

          v15 = OUTLINED_FUNCTION_5_32(&qword_27DEB0BF8);
          v17 = v4 && v16 == v1;
          if (v17 || (OUTLINED_FUNCTION_4_36(v15, v16) & 1) != 0)
          {

            return 4;
          }

          else
          {
            if (qword_27DEACF98 != -1)
            {
              OUTLINED_FUNCTION_46_4(&qword_27DEACF98);
            }

            v18 = OUTLINED_FUNCTION_5_32(&qword_27DEB0C08);
            v20 = v4 && v19 == v1;
            if (v20 || (OUTLINED_FUNCTION_4_36(v18, v19) & 1) != 0)
            {

              return 5;
            }

            else
            {
              if (qword_27DEACFA0 != -1)
              {
                OUTLINED_FUNCTION_45_3(&qword_27DEACFA0);
              }

              v21 = OUTLINED_FUNCTION_5_32(&qword_27DEB0C18);
              v23 = v4 && v22 == v1;
              if (v23 || (OUTLINED_FUNCTION_4_36(v21, v22) & 1) != 0)
              {

                return 6;
              }

              else
              {
                if (qword_27DEACFA8 != -1)
                {
                  OUTLINED_FUNCTION_44_4(&qword_27DEACFA8);
                }

                v24 = OUTLINED_FUNCTION_5_32(&qword_27DEB0C28);
                v26 = v4 && v25 == v1;
                if (v26 || (OUTLINED_FUNCTION_4_36(v24, v25) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  if (qword_27DEACFB0 != -1)
                  {
                    OUTLINED_FUNCTION_43_6(&qword_27DEACFB0);
                  }

                  v27 = OUTLINED_FUNCTION_5_32(&qword_27DEB0C38);
                  v29 = v4 && v28 == v1;
                  if (v29 || (OUTLINED_FUNCTION_4_36(v27, v28) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    if (qword_27DEACFB8 != -1)
                    {
                      OUTLINED_FUNCTION_42_5(&qword_27DEACFB8);
                    }

                    v30 = OUTLINED_FUNCTION_5_32(&qword_27DEB0C48);
                    v32 = v4 && v31 == v1;
                    if (v32 || (OUTLINED_FUNCTION_4_36(v30, v31) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      if (qword_27DEACFC0 != -1)
                      {
                        OUTLINED_FUNCTION_41_4(&qword_27DEACFC0);
                      }

                      v33 = OUTLINED_FUNCTION_5_32(&qword_27DEB0C58);
                      v35 = v4 && v34 == v1;
                      if (v35 || (OUTLINED_FUNCTION_4_36(v33, v34) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        if (qword_27DEACFC8 != -1)
                        {
                          OUTLINED_FUNCTION_40_6(&qword_27DEACFC8);
                        }

                        v36 = OUTLINED_FUNCTION_5_32(&qword_27DEB0C68);
                        v38 = v4 && v37 == v1;
                        if (v38 || (OUTLINED_FUNCTION_4_36(v36, v37) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          if (qword_27DEACFD0 != -1)
                          {
                            OUTLINED_FUNCTION_39_6(&qword_27DEACFD0);
                          }

                          v39 = OUTLINED_FUNCTION_5_32(&qword_27DEB0C78);
                          v41 = v4 && v40 == v1;
                          if (v41 || (OUTLINED_FUNCTION_4_36(v39, v40) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            if (qword_27DEACFD8 != -1)
                            {
                              OUTLINED_FUNCTION_37_7(&qword_27DEACFD8);
                            }

                            v42 = OUTLINED_FUNCTION_5_32(&qword_27DEB0C88);
                            v44 = v4 && v43 == v1;
                            if (v44 || (OUTLINED_FUNCTION_4_36(v42, v43) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              if (qword_27DEACFE0 != -1)
                              {
                                OUTLINED_FUNCTION_36_8(&qword_27DEACFE0);
                              }

                              v45 = OUTLINED_FUNCTION_5_32(&qword_27DEB0C98);
                              v47 = v4 && v46 == v1;
                              if (v47 || (OUTLINED_FUNCTION_4_36(v45, v46) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                if (qword_27DEACFE8 != -1)
                                {
                                  OUTLINED_FUNCTION_35_6(&qword_27DEACFE8);
                                }

                                v48 = OUTLINED_FUNCTION_5_32(&qword_27DEB0CA8);
                                v50 = v4 && v49 == v1;
                                if (v50 || (OUTLINED_FUNCTION_4_36(v48, v49) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  if (qword_27DEACFF0 != -1)
                                  {
                                    OUTLINED_FUNCTION_34_4(&qword_27DEACFF0);
                                  }

                                  v51 = OUTLINED_FUNCTION_5_32(&qword_27DEB0CB8);
                                  v53 = v4 && v52 == v1;
                                  if (v53 || (OUTLINED_FUNCTION_4_36(v51, v52) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    if (qword_27DEACFF8 != -1)
                                    {
                                      OUTLINED_FUNCTION_33_7(&qword_27DEACFF8);
                                    }

                                    v54 = OUTLINED_FUNCTION_5_32(&qword_27DEB0CC8);
                                    v56 = v4 && v55 == v1;
                                    if (v56 || (OUTLINED_FUNCTION_4_36(v54, v55) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      if (qword_27DEAD000 != -1)
                                      {
                                        OUTLINED_FUNCTION_32_8(&qword_27DEAD000);
                                      }

                                      v57 = OUTLINED_FUNCTION_5_32(&qword_27DEB0CD8);
                                      v59 = v4 && v58 == v1;
                                      if (v59 || (OUTLINED_FUNCTION_4_36(v57, v58) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        if (qword_27DEAD008 != -1)
                                        {
                                          OUTLINED_FUNCTION_31_7(&qword_27DEAD008);
                                        }

                                        v60 = OUTLINED_FUNCTION_5_32(&qword_27DEB0CE8);
                                        v62 = v4 && v61 == v1;
                                        if (v62 || (OUTLINED_FUNCTION_4_36(v60, v61) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          if (qword_27DEAD010 != -1)
                                          {
                                            OUTLINED_FUNCTION_30_14(&qword_27DEAD010);
                                          }

                                          v63 = OUTLINED_FUNCTION_5_32(&qword_27DEB0CF8);
                                          v65 = v4 && v64 == v1;
                                          if (v65 || (OUTLINED_FUNCTION_4_36(v63, v64) & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            if (qword_27DEAD018 != -1)
                                            {
                                              OUTLINED_FUNCTION_29_12(&qword_27DEAD018);
                                            }

                                            v66 = OUTLINED_FUNCTION_5_32(&qword_27DEB0D08);
                                            v68 = v4 && v67 == v1;
                                            if (v68 || (OUTLINED_FUNCTION_4_36(v66, v67) & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              if (qword_27DEAD020 != -1)
                                              {
                                                OUTLINED_FUNCTION_28_12(&qword_27DEAD020);
                                              }

                                              v69 = OUTLINED_FUNCTION_5_32(&qword_27DEB0D18);
                                              v71 = v4 && v70 == v1;
                                              if (v71 || (OUTLINED_FUNCTION_4_36(v69, v70) & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                if (qword_27DEAD028 != -1)
                                                {
                                                  OUTLINED_FUNCTION_27_13(&qword_27DEAD028);
                                                }

                                                v72 = OUTLINED_FUNCTION_5_32(&qword_27DEB0D28);
                                                v74 = v4 && v73 == v1;
                                                if (v74 || (OUTLINED_FUNCTION_4_36(v72, v73) & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  if (qword_27DEAD030 != -1)
                                                  {
                                                    OUTLINED_FUNCTION_26_11(&qword_27DEAD030);
                                                  }

                                                  v75 = OUTLINED_FUNCTION_5_32(&qword_27DEB0D38);
                                                  v77 = v4 && v76 == v1;
                                                  if (v77 || (OUTLINED_FUNCTION_4_36(v75, v76) & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    if (qword_27DEAD038 != -1)
                                                    {
                                                      OUTLINED_FUNCTION_25_12(&qword_27DEAD038);
                                                    }

                                                    v78 = OUTLINED_FUNCTION_5_32(&qword_27DEB0D48);
                                                    v80 = v4 && v79 == v1;
                                                    if (v80 || (OUTLINED_FUNCTION_4_36(v78, v79) & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      if (qword_27DEAD040 != -1)
                                                      {
                                                        OUTLINED_FUNCTION_22_16();
                                                        swift_once();
                                                      }

                                                      v81 = OUTLINED_FUNCTION_5_32(&qword_27DEB0D58);
                                                      v83 = v4 && v82 == v1;
                                                      if (v83 || (OUTLINED_FUNCTION_4_36(v81, v82) & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        if (qword_27DEAD048 != -1)
                                                        {
                                                          OUTLINED_FUNCTION_21_18();
                                                          swift_once();
                                                        }

                                                        v84 = OUTLINED_FUNCTION_5_32(&qword_27DEB0D68);
                                                        v86 = v4 && v85 == v1;
                                                        if (v86 || (OUTLINED_FUNCTION_4_36(v84, v85) & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          if (qword_27DEAD050 != -1)
                                                          {
                                                            OUTLINED_FUNCTION_20_15();
                                                            swift_once();
                                                          }

                                                          v87 = OUTLINED_FUNCTION_5_32(&qword_27DEB0D78);
                                                          v89 = v4 && v88 == v1;
                                                          if (v89 || (OUTLINED_FUNCTION_4_36(v87, v88) & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            if (qword_27DEAD058 != -1)
                                                            {
                                                              OUTLINED_FUNCTION_19_20();
                                                              swift_once();
                                                            }

                                                            v90 = OUTLINED_FUNCTION_5_32(&qword_27DEB0D88);
                                                            v92 = v4 && v91 == v1;
                                                            if (v92 || (OUTLINED_FUNCTION_4_36(v90, v91) & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              if (qword_27DEAD060 != -1)
                                                              {
                                                                OUTLINED_FUNCTION_18_20();
                                                                swift_once();
                                                              }

                                                              v93 = OUTLINED_FUNCTION_5_32(&qword_27DEB0D98);
                                                              v95 = v4 && v94 == v1;
                                                              if (v95 || (OUTLINED_FUNCTION_4_36(v93, v94) & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                if (qword_27DEAD068 != -1)
                                                                {
                                                                  OUTLINED_FUNCTION_17_22();
                                                                  swift_once();
                                                                }

                                                                v96 = OUTLINED_FUNCTION_5_32(&qword_27DEB0DA8);
                                                                v98 = v4 && v97 == v1;
                                                                if (v98 || (OUTLINED_FUNCTION_4_36(v96, v97) & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  if (qword_27DEAD070 != -1)
                                                                  {
                                                                    OUTLINED_FUNCTION_16_21();
                                                                    swift_once();
                                                                  }

                                                                  v99 = OUTLINED_FUNCTION_5_32(&qword_27DEB0DB8);
                                                                  v101 = v4 && v100 == v1;
                                                                  if (v101 || (OUTLINED_FUNCTION_4_36(v99, v100) & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    if (qword_27DEAD078 != -1)
                                                                    {
                                                                      OUTLINED_FUNCTION_15_24();
                                                                      swift_once();
                                                                    }

                                                                    v102 = OUTLINED_FUNCTION_5_32(&qword_27DEB0DC8);
                                                                    v104 = v4 && v103 == v1;
                                                                    if (v104 || (OUTLINED_FUNCTION_4_36(v102, v103) & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      if (qword_27DEAD080 != -1)
                                                                      {
                                                                        OUTLINED_FUNCTION_14_25();
                                                                        swift_once();
                                                                      }

                                                                      v105 = OUTLINED_FUNCTION_5_32(&qword_27DEB0DD8);
                                                                      v107 = v4 && v106 == v1;
                                                                      if (v107 || (OUTLINED_FUNCTION_4_36(v105, v106) & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        if (qword_27DEAD088 != -1)
                                                                        {
                                                                          OUTLINED_FUNCTION_13_19();
                                                                          swift_once();
                                                                        }

                                                                        v108 = OUTLINED_FUNCTION_5_32(&qword_27DEB0DE8);
                                                                        v110 = v4 && v109 == v1;
                                                                        if (v110 || (OUTLINED_FUNCTION_4_36(v108, v109) & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          if (qword_27DEAD090 != -1)
                                                                          {
                                                                            OUTLINED_FUNCTION_12_25();
                                                                            swift_once();
                                                                          }

                                                                          v111 = OUTLINED_FUNCTION_5_32(&qword_27DEB0DF8);
                                                                          v113 = v4 && v112 == v1;
                                                                          if (v113 || (OUTLINED_FUNCTION_4_36(v111, v112) & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            if (qword_27DEAD098 != -1)
                                                                            {
                                                                              OUTLINED_FUNCTION_11_25();
                                                                              swift_once();
                                                                            }

                                                                            v114 = OUTLINED_FUNCTION_5_32(&qword_27DEB0E08);
                                                                            v116 = v4 && v115 == v1;
                                                                            if (v116 || (OUTLINED_FUNCTION_4_36(v114, v115) & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              if (qword_27DEAD0A0 != -1)
                                                                              {
                                                                                OUTLINED_FUNCTION_10_30();
                                                                                swift_once();
                                                                              }

                                                                              v117 = OUTLINED_FUNCTION_5_32(&qword_27DEB0E18);
                                                                              v119 = v4 && v118 == v1;
                                                                              if (v119 || (OUTLINED_FUNCTION_4_36(v117, v118) & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                if (qword_27DEAD0A8 != -1)
                                                                                {
                                                                                  OUTLINED_FUNCTION_9_23();
                                                                                  swift_once();
                                                                                }

                                                                                v120 = OUTLINED_FUNCTION_5_32(&qword_27DEB0E28);
                                                                                if (v4 && v121 == v1)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v123 = OUTLINED_FUNCTION_4_36(v120, v121);

                                                                                  if (v123)
                                                                                  {
                                                                                    return 39;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    return 40;
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
  }
}

unint64_t sub_237D2DD84()
{
  result = qword_27DEB0EB8;
  if (!qword_27DEB0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0EB8);
  }

  return result;
}

uint64_t Pose.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0EC0, &qword_237F0CD20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D2D11C();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v30 = a2;
  sub_237CC6D04();
  v33 = sub_237EF8230();
  v7 = sub_237EF9980();
  v8 = 0;
  v9 = *(v7 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      v26 = OUTLINED_FUNCTION_58_3();
      v27(v26);

      *v30 = v33;
      v30[1] = 0x6C6C414F50494E56;
      v30[2] = 0xE800000000000000;
      sub_237EF8260();
      sub_237EF8260();
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = *(v7 + v8 + 32);
    sub_237D2E1CC();
    sub_237EF9970();
    v12 = v34;
    v11 = v35;
    v13 = v36;
    sub_237D2E220(v10, &v34);
    v14 = v35;
    if (!v35)
    {
      goto LABEL_7;
    }

    v31 = v34;
    sub_237EF8260();
    swift_isUniquelyReferenced_nonNull_native();
    v34 = v33;
    v28 = sub_237D2FD6C(v31);
    v29 = v15;
    if (__OFADD__(*(v33 + 16), (v15 & 1) == 0))
    {
      goto LABEL_18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E60, &unk_237F11EA0);
    if (sub_237EF96B0())
    {
      v16 = sub_237D2FD6C(v31);
      if ((v29 & 1) != (v17 & 1))
      {
        goto LABEL_20;
      }

      v18 = v16;
      if (v29)
      {
LABEL_15:

        v33 = v34;
        v25 = v34[7] + 40 * v18;
        *v25 = v31;
        *(v25 + 8) = v14;
        *(v25 + 16) = v12;
        *(v25 + 24) = v11;
        *(v25 + 32) = v13;

        goto LABEL_7;
      }
    }

    else
    {
      v18 = v28;
      if (v29)
      {
        goto LABEL_15;
      }
    }

    v19 = v34;
    v34[(v18 >> 6) + 8] |= 1 << v18;
    v20 = (v19[6] + 16 * v18);
    *v20 = v31;
    v20[1] = v14;
    v21 = v19[7] + 40 * v18;
    *v21 = v31;
    *(v21 + 8) = v14;
    *(v21 + 16) = v12;
    *(v21 + 24) = v11;
    *(v21 + 32) = v13;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_19;
    }

    v33 = v19;
    v19[2] = v24;
LABEL_7:
    ++v8;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

unint64_t sub_237D2E1CC()
{
  result = qword_27DEB0EC8;
  if (!qword_27DEB0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0EC8);
  }

  return result;
}

uint64_t sub_237D2E220@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  switch(a1)
  {
    case 1:
      if (qword_27DEACF78 != -1)
      {
        OUTLINED_FUNCTION_50_5(&qword_27DEACF78);
      }

      v3 = &qword_27DEB0BC8;
      break;
    case 2:
      if (qword_27DEACF80 != -1)
      {
        OUTLINED_FUNCTION_49_6(&qword_27DEACF80);
      }

      v3 = &qword_27DEB0BD8;
      break;
    case 3:
      if (qword_27DEACF88 != -1)
      {
        OUTLINED_FUNCTION_48_5(&qword_27DEACF88);
      }

      v3 = &qword_27DEB0BE8;
      break;
    case 4:
      if (qword_27DEACF90 != -1)
      {
        OUTLINED_FUNCTION_47_3(&qword_27DEACF90);
      }

      v3 = &qword_27DEB0BF8;
      break;
    case 5:
      if (qword_27DEACF98 != -1)
      {
        OUTLINED_FUNCTION_46_4(&qword_27DEACF98);
      }

      v3 = &qword_27DEB0C08;
      break;
    case 6:
      if (qword_27DEACFA0 != -1)
      {
        OUTLINED_FUNCTION_45_3(&qword_27DEACFA0);
      }

      v3 = &qword_27DEB0C18;
      break;
    case 7:
      if (qword_27DEACFA8 != -1)
      {
        OUTLINED_FUNCTION_44_4(&qword_27DEACFA8);
      }

      v3 = &qword_27DEB0C28;
      break;
    case 8:
      if (qword_27DEACFB0 != -1)
      {
        OUTLINED_FUNCTION_43_6(&qword_27DEACFB0);
      }

      v3 = &qword_27DEB0C38;
      break;
    case 9:
      if (qword_27DEACFB8 != -1)
      {
        OUTLINED_FUNCTION_42_5(&qword_27DEACFB8);
      }

      v3 = &qword_27DEB0C48;
      break;
    case 10:
      if (qword_27DEACFC0 != -1)
      {
        OUTLINED_FUNCTION_41_4(&qword_27DEACFC0);
      }

      v3 = &qword_27DEB0C58;
      break;
    case 11:
      if (qword_27DEACFC8 != -1)
      {
        OUTLINED_FUNCTION_40_6(&qword_27DEACFC8);
      }

      v3 = &qword_27DEB0C68;
      break;
    case 12:
      if (qword_27DEACFD0 != -1)
      {
        OUTLINED_FUNCTION_39_6(&qword_27DEACFD0);
      }

      v3 = &qword_27DEB0C78;
      break;
    case 13:
      if (qword_27DEACFD8 != -1)
      {
        OUTLINED_FUNCTION_37_7(&qword_27DEACFD8);
      }

      v3 = &qword_27DEB0C88;
      break;
    case 14:
      if (qword_27DEACFE0 != -1)
      {
        OUTLINED_FUNCTION_36_8(&qword_27DEACFE0);
      }

      v3 = &qword_27DEB0C98;
      break;
    case 15:
      if (qword_27DEACFE8 != -1)
      {
        OUTLINED_FUNCTION_35_6(&qword_27DEACFE8);
      }

      v3 = &qword_27DEB0CA8;
      break;
    case 16:
      if (qword_27DEACFF0 != -1)
      {
        OUTLINED_FUNCTION_34_4(&qword_27DEACFF0);
      }

      v3 = &qword_27DEB0CB8;
      break;
    case 17:
      if (qword_27DEACFF8 != -1)
      {
        OUTLINED_FUNCTION_33_7(&qword_27DEACFF8);
      }

      v3 = &qword_27DEB0CC8;
      break;
    case 18:
      if (qword_27DEAD000 != -1)
      {
        OUTLINED_FUNCTION_32_8(&qword_27DEAD000);
      }

      v3 = &qword_27DEB0CD8;
      break;
    case 19:
      if (qword_27DEAD008 != -1)
      {
        OUTLINED_FUNCTION_31_7(&qword_27DEAD008);
      }

      v3 = &qword_27DEB0CE8;
      break;
    case 20:
      if (qword_27DEAD010 != -1)
      {
        OUTLINED_FUNCTION_30_14(&qword_27DEAD010);
      }

      v3 = &qword_27DEB0CF8;
      break;
    case 21:
      if (qword_27DEAD018 != -1)
      {
        OUTLINED_FUNCTION_29_12(&qword_27DEAD018);
      }

      v3 = &qword_27DEB0D08;
      break;
    case 22:
      if (qword_27DEAD020 != -1)
      {
        OUTLINED_FUNCTION_28_12(&qword_27DEAD020);
      }

      v3 = &qword_27DEB0D18;
      break;
    case 23:
      if (qword_27DEAD028 != -1)
      {
        OUTLINED_FUNCTION_27_13(&qword_27DEAD028);
      }

      v3 = &qword_27DEB0D28;
      break;
    case 24:
      if (qword_27DEAD030 != -1)
      {
        OUTLINED_FUNCTION_26_11(&qword_27DEAD030);
      }

      v3 = &qword_27DEB0D38;
      break;
    case 25:
      if (qword_27DEAD038 != -1)
      {
        OUTLINED_FUNCTION_25_12(&qword_27DEAD038);
      }

      v3 = &qword_27DEB0D48;
      break;
    case 26:
      if (qword_27DEAD040 != -1)
      {
        OUTLINED_FUNCTION_22_16();
        swift_once();
      }

      v3 = &qword_27DEB0D58;
      break;
    case 27:
      if (qword_27DEAD048 != -1)
      {
        OUTLINED_FUNCTION_21_18();
        swift_once();
      }

      v3 = &qword_27DEB0D68;
      break;
    case 28:
      if (qword_27DEAD050 != -1)
      {
        OUTLINED_FUNCTION_20_15();
        swift_once();
      }

      v3 = &qword_27DEB0D78;
      break;
    case 29:
      if (qword_27DEAD058 != -1)
      {
        OUTLINED_FUNCTION_19_20();
        swift_once();
      }

      v3 = &qword_27DEB0D88;
      break;
    case 30:
      if (qword_27DEAD060 != -1)
      {
        OUTLINED_FUNCTION_18_20();
        swift_once();
      }

      v3 = &qword_27DEB0D98;
      break;
    case 31:
      if (qword_27DEAD068 != -1)
      {
        OUTLINED_FUNCTION_17_22();
        swift_once();
      }

      v3 = &qword_27DEB0DA8;
      break;
    case 32:
      if (qword_27DEAD070 != -1)
      {
        OUTLINED_FUNCTION_16_21();
        swift_once();
      }

      v3 = &qword_27DEB0DB8;
      break;
    case 33:
      if (qword_27DEAD078 != -1)
      {
        OUTLINED_FUNCTION_15_24();
        swift_once();
      }

      v3 = &qword_27DEB0DC8;
      break;
    case 34:
      if (qword_27DEAD080 != -1)
      {
        OUTLINED_FUNCTION_14_25();
        swift_once();
      }

      v3 = &qword_27DEB0DD8;
      break;
    case 35:
      if (qword_27DEAD088 != -1)
      {
        OUTLINED_FUNCTION_13_19();
        swift_once();
      }

      v3 = &qword_27DEB0DE8;
      break;
    case 36:
      if (qword_27DEAD090 != -1)
      {
        OUTLINED_FUNCTION_12_25();
        swift_once();
      }

      v3 = &qword_27DEB0DF8;
      break;
    case 37:
      if (qword_27DEAD098 != -1)
      {
        OUTLINED_FUNCTION_11_25();
        swift_once();
      }

      v3 = &qword_27DEB0E08;
      break;
    case 38:
      if (qword_27DEAD0A0 != -1)
      {
        OUTLINED_FUNCTION_10_30();
        swift_once();
      }

      v3 = &qword_27DEB0E18;
      break;
    case 39:
      if (qword_27DEAD0A8 != -1)
      {
        OUTLINED_FUNCTION_9_23();
        swift_once();
      }

      v3 = &qword_27DEB0E28;
      break;
    default:
      if (qword_27DEACF70 != -1)
      {
        OUTLINED_FUNCTION_51_4(&qword_27DEACF70);
      }

      v3 = &qword_27DEB0BB8;
      break;
  }

  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return sub_237EF8260();
}

uint64_t sub_237D2E990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261457466656CLL && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_3_42(0x7261457466656CLL) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6579457466656CLL && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_3_42(0x6579457466656CLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
      v8 = a1 == v7 && a2 == 0xE800000000000000;
      if (v8 || (OUTLINED_FUNCTION_2_41(v7) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x6579000000000000;
        v10 = a1 == v9 && a2 == 0xE800000000000000;
        if (v10 || (OUTLINED_FUNCTION_2_41(v9) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 1801676142 && a2 == 0xE400000000000000;
          if (v11 || (OUTLINED_FUNCTION_4_36(1801676142, 0xE400000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 1702063982 && a2 == 0xE400000000000000;
            if (v12 || (OUTLINED_FUNCTION_4_36(1702063982, 0xE400000000000000) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = OUTLINED_FUNCTION_57_5();
              v15 = a1 == v13 && a2 == v14;
              if (v15 || (OUTLINED_FUNCTION_4_36(v13, v14) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v16 = a1 == 0x6F626C457466656CLL && a2 == 0xE900000000000077;
                if (v16 || (OUTLINED_FUNCTION_4_36(0x6F626C457466656CLL, 0xE900000000000077) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v17 = a1 == 0x736972577466656CLL && a2 == 0xE900000000000074;
                  if (v17 || (OUTLINED_FUNCTION_4_36(0x736972577466656CLL, 0xE900000000000074) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v18 = OUTLINED_FUNCTION_55_3();
                    v20 = a1 == v18 && a2 == v19;
                    if (v20 || (OUTLINED_FUNCTION_4_36(v18, v19) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v21 = OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x626C000000000000;
                      v23 = a1 == v21 && a2 == v22;
                      if (v23 || (OUTLINED_FUNCTION_4_36(v21, 0xEA0000000000776FLL) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v24 = a1 == 0x6972577468676972 && a2 == 0xEA00000000007473;
                        if (v24 || (OUTLINED_FUNCTION_4_36(0x6972577468676972, 0xEA00000000007473) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v25 = a1 == 1953460082 && a2 == 0xE400000000000000;
                          if (v25 || (OUTLINED_FUNCTION_4_36(1953460082, 0xE400000000000000) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v26 = a1 == 0x7069487466656CLL && a2 == 0xE700000000000000;
                            if (v26 || (OUTLINED_FUNCTION_3_42(0x7069487466656CLL) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v27 = a1 == 0x65656E4B7466656CLL && a2 == 0xE800000000000000;
                              if (v27 || (OUTLINED_FUNCTION_2_41(0x65656E4B7466656CLL) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v28 = a1 == 0x6C6B6E417466656CLL && a2 == 0xE900000000000065;
                                if (v28 || (OUTLINED_FUNCTION_4_36(0x6C6B6E417466656CLL, 0xE900000000000065) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v29 = a1 == 0x7069487468676972 && a2 == 0xE800000000000000;
                                  if (v29 || (OUTLINED_FUNCTION_2_41(0x7069487468676972) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v30 = a1 == 0x656E4B7468676972 && a2 == 0xE900000000000065;
                                    if (v30 || (OUTLINED_FUNCTION_4_36(0x656E4B7468676972, 0xE900000000000065) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v31 = a1 == 0x6B6E417468676972 && a2 == 0xEA0000000000656CLL;
                                      if (v31 || (OUTLINED_FUNCTION_4_36(0x6B6E417468676972, 0xEA0000000000656CLL) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v32 = a1 == 0x706954626D756874 && a2 == 0xE800000000000000;
                                        if (v32 || (OUTLINED_FUNCTION_2_41(0x706954626D756874) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v33 = OUTLINED_FUNCTION_54_2(0x49626D756874);
                                          v34 = v4 && a2 == 0xE700000000000000;
                                          if (v34 || (OUTLINED_FUNCTION_3_42(v33) & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v35 = OUTLINED_FUNCTION_54_2(0x4D626D756874);
                                            v36 = v4 && a2 == 0xE700000000000000;
                                            if (v36 || (OUTLINED_FUNCTION_3_42(v35) & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v37 = a1 == 0x434D43626D756874 && a2 == 0xE800000000000000;
                                              if (v37 || (OUTLINED_FUNCTION_2_41(0x434D43626D756874) & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v38 = a1 == 0x7069547865646E69 && a2 == 0xE800000000000000;
                                                if (v38 || (OUTLINED_FUNCTION_2_41(0x7069547865646E69) & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v39 = a1 == 0x5049447865646E69 && a2 == 0xE800000000000000;
                                                  if (v39 || (OUTLINED_FUNCTION_2_41(0x5049447865646E69) & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v40 = a1 == 0x5049507865646E69 && a2 == 0xE800000000000000;
                                                    if (v40 || (OUTLINED_FUNCTION_2_41(0x5049507865646E69) & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v41 = a1 == 0x50434D7865646E69 && a2 == 0xE800000000000000;
                                                      if (v41 || (OUTLINED_FUNCTION_2_41(0x50434D7865646E69) & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v42 = OUTLINED_FUNCTION_24_10() & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
                                                        v43 = a1 == v42 && a2 == 0xE900000000000070;
                                                        if (v43 || (OUTLINED_FUNCTION_4_36(v42, 0xE900000000000070) & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v44 = OUTLINED_FUNCTION_24_10() & 0xFFFFFFFFFFFFLL | 0x4944000000000000;
                                                          v45 = a1 == v44 && a2 == 0xE900000000000050;
                                                          if (v45 || (OUTLINED_FUNCTION_1_40(v44) & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v46 = OUTLINED_FUNCTION_24_10() & 0xFFFFFFFFFFFFLL | 0x4950000000000000;
                                                            v47 = a1 == v46 && a2 == 0xE900000000000050;
                                                            if (v47 || (OUTLINED_FUNCTION_1_40(v46) & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v48 = OUTLINED_FUNCTION_24_10() & 0xFFFFFFFFFFFFLL | 0x434D000000000000;
                                                              v49 = a1 == v48 && a2 == 0xE900000000000050;
                                                              if (v49 || (OUTLINED_FUNCTION_1_40(v48) & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v50 = a1 == 0x706954676E6972 && a2 == 0xE700000000000000;
                                                                if (v50 || (OUTLINED_FUNCTION_3_42(0x706954676E6972) & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v51 = OUTLINED_FUNCTION_54_2(0x4944676E6972);
                                                                  v52 = v4 && a2 == 0xE700000000000000;
                                                                  if (v52 || (OUTLINED_FUNCTION_3_42(v51) & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v53 = OUTLINED_FUNCTION_54_2(0x4950676E6972);
                                                                    v54 = v4 && a2 == 0xE700000000000000;
                                                                    if (v54 || (OUTLINED_FUNCTION_3_42(v53) & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v55 = OUTLINED_FUNCTION_54_2(0x434D676E6972);
                                                                      v56 = v4 && a2 == 0xE700000000000000;
                                                                      if (v56 || (OUTLINED_FUNCTION_3_42(v55) & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v57 = OUTLINED_FUNCTION_23_16() & 0xFFFFFFFFFFFFLL | 0x6954000000000000;
                                                                        v58 = a1 == v57 && a2 == 0xE900000000000070;
                                                                        if (v58 || (OUTLINED_FUNCTION_4_36(v57, 0xE900000000000070) & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v59 = OUTLINED_FUNCTION_23_16() & 0xFFFFFFFFFFFFLL | 0x4944000000000000;
                                                                          v60 = a1 == v59 && a2 == 0xE900000000000050;
                                                                          if (v60 || (OUTLINED_FUNCTION_1_40(v59) & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v61 = OUTLINED_FUNCTION_23_16() & 0xFFFFFFFFFFFFLL | 0x4950000000000000;
                                                                            v62 = a1 == v61 && a2 == 0xE900000000000050;
                                                                            if (v62 || (OUTLINED_FUNCTION_1_40(v61) & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v63 = OUTLINED_FUNCTION_23_16() & 0xFFFFFFFFFFFFLL | 0x434D000000000000;
                                                                              v64 = a1 == v63 && a2 == 0xE900000000000050;
                                                                              if (v64 || (OUTLINED_FUNCTION_1_40(v63) & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else if (a1 == 0x7473697277 && a2 == 0xE500000000000000)
                                                                              {

                                                                                return 39;
                                                                              }

                                                                              else
                                                                              {
                                                                                v66 = OUTLINED_FUNCTION_4_36(0x7473697277, 0xE500000000000000);

                                                                                if (v66)
                                                                                {
                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  return 40;
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
}

uint64_t sub_237D2F21C(char a1)
{
  result = 0x7261457466656CLL;
  switch(a1)
  {
    case 1:
      return 0x6579457466656CLL;
    case 2:
      return OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
    case 3:
      return OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x6579000000000000;
    case 4:
      return 1801676142;
    case 5:
      return 1702063982;
    case 6:
      return OUTLINED_FUNCTION_57_5();
    case 7:
      return 0x6F626C457466656CLL;
    case 8:
      return 0x736972577466656CLL;
    case 9:
      return OUTLINED_FUNCTION_55_3();
    case 10:
      return OUTLINED_FUNCTION_60_4() & 0xFFFFFFFFFFFFLL | 0x626C000000000000;
    case 11:
      return 0x6972577468676972;
    case 12:
      return 1953460082;
    case 13:
      v9 = 0x69487466656CLL;
      return v9 & 0xFFFFFFFFFFFFLL | 0x70000000000000;
    case 14:
      return 0x65656E4B7466656CLL;
    case 15:
      return 0x6C6B6E417466656CLL;
    case 16:
      v7 = 0x487468676972;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7069000000000000;
    case 17:
      return 0x656E4B7468676972;
    case 18:
      return 0x6B6E417468676972;
    case 19:
      v7 = 0x54626D756874;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7069000000000000;
    case 20:
      v6 = 0x49626D756874;
      goto LABEL_36;
    case 21:
      v6 = 0x4D626D756874;
      goto LABEL_36;
    case 22:
      return 0x434D43626D756874;
    case 23:
      v7 = 0x547865646E69;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7069000000000000;
    case 24:
      v8 = 0x447865646E69;
      return v8 & 0xFFFFFFFFFFFFLL | 0x5049000000000000;
    case 25:
      v8 = 0x507865646E69;
      return v8 & 0xFFFFFFFFFFFFLL | 0x5049000000000000;
    case 26:
      return 0x50434D7865646E69;
    case 27:
      v4 = 1684302189;
      goto LABEL_7;
    case 28:
      v5 = 1684302189;
      goto LABEL_43;
    case 29:
      v3 = 1684302189;
      goto LABEL_45;
    case 30:
      v10 = 1684302189;
      goto LABEL_47;
    case 31:
      v9 = 0x6954676E6972;
      return v9 & 0xFFFFFFFFFFFFLL | 0x70000000000000;
    case 32:
      v6 = 0x4944676E6972;
      goto LABEL_36;
    case 33:
      v6 = 0x4950676E6972;
      goto LABEL_36;
    case 34:
      v6 = 0x434D676E6972;
LABEL_36:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x50000000000000;
      break;
    case 35:
      v4 = 1953786220;
LABEL_7:
      result = v4 | 0x6954656C00000000;
      break;
    case 36:
      v5 = 1953786220;
LABEL_43:
      result = v5 | 0x4944656C00000000;
      break;
    case 37:
      v3 = 1953786220;
LABEL_45:
      result = v3 | 0x4950656C00000000;
      break;
    case 38:
      v10 = 1953786220;
LABEL_47:
      result = v10 | 0x434D656C00000000;
      break;
    case 39:
      result = 0x7473697277;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237D2F5D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237D2F6A4(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_237D2F6E0(void *a1, double a2, double a3, float a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0EE8, &qword_237F0CF00);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v15[-v12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D30A08();
  sub_237EFA1B0();
  v16 = a2;
  v17 = a3;
  v15[15] = 0;
  type metadata accessor for CGPoint(0);
  sub_237D30A5C(&qword_27DEB0EF8, MEMORY[0x277CBF2A8]);
  sub_237EF9A70();
  if (!v4)
  {
    LOBYTE(v16) = 1;
    sub_237EF9A40();
  }

  return (*(v10 + 8))(v13, v8);
}

double sub_237D2F884(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0F00, &qword_237F0CF08);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D30A08();
  sub_237EFA190();
  type metadata accessor for CGPoint(0);
  v11 = 0;
  sub_237D30A5C(&qword_27DEB0F08, MEMORY[0x277CBF2B8]);
  sub_237EF9970();
  v8 = v10;
  LOBYTE(v10) = 1;
  sub_237EF9940();
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_237D2FA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D2E990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D2FAC0(uint64_t a1)
{
  v2 = sub_237D2D11C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D2FAFC(uint64_t a1)
{
  v2 = sub_237D2D11C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D2FB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D2F5D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D2FB68(uint64_t a1)
{
  v2 = sub_237D30A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D2FBA4(uint64_t a1)
{
  v2 = sub_237D30A08();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237D2FBE0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_237D2F884(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

unint64_t sub_237D2FC30(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_7_30(a1);
  OUTLINED_FUNCTION_56_5(v1);
  sub_237EFA170();
  v2 = OUTLINED_FUNCTION_38_5();

  return sub_237D300E8(v2, v3, v4);
}

unint64_t sub_237D2FC80(uint64_t a1)
{
  v2 = sub_237EF9040();

  return sub_237D3019C(a1, v2);
}

unint64_t sub_237D2FD00(uint64_t a1)
{
  OUTLINED_FUNCTION_7_30(a1);
  if (v1)
  {
    v2 = sub_237EFA140();
    OUTLINED_FUNCTION_56_5(v2);
  }

  else
  {
    sub_237EFA140();
  }

  sub_237EFA170();
  v3 = OUTLINED_FUNCTION_38_5();

  return sub_237D3025C(v3, v4, v5);
}

unint64_t sub_237D2FD6C(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_7_30(a1);
  OUTLINED_FUNCTION_56_5(v1);
  sub_237EFA170();
  v2 = OUTLINED_FUNCTION_38_5();
  return sub_237D300E8(v2, v3, v4);
}

unint64_t sub_237D2FDB8(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x2383E21E0](*(v1 + 40), a1, 4);

  return sub_237D303A0(v2, v3);
}

unint64_t sub_237D2FE00(uint64_t a1)
{
  OUTLINED_FUNCTION_53_4(a1);
  sub_237EFA150();
  sub_237EFA150();
  v2 = sub_237EFA170();

  return sub_237D30328(a1, v2);
}

unint64_t sub_237D2FE74(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_53_4(a1);
  sub_237EFA140();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2383E2210](a1);
  }

  v4 = sub_237EFA170();

  return sub_237D304A4(a1, a2 & 1, v4);
}

unint64_t sub_237D2FEFC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_237EFA120();
  v8 = a2 & 1;
  sub_237CB14F4(v11, a1, v8, a3, a4 & 1);
  v9 = sub_237EFA170();
  LOBYTE(v11[0]) = v8;

  return sub_237D30400(a1, v8, a3, a4 & 1, v9);
}

unint64_t sub_237D2FFAC(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_53_4(a1);
  sub_237EFA140();
  sub_237EFA140();
  v2 = sub_237EFA170();

  return sub_237D30528(v1 & 0x101, v2);
}

unint64_t sub_237D30020(uint64_t a1)
{
  OUTLINED_FUNCTION_7_30(a1);
  MEMORY[0x2383E2210](v2);
  MEMORY[0x2383E2210](v1);
  sub_237EFA170();
  v3 = OUTLINED_FUNCTION_38_5();

  return sub_237D305AC(v3, v4, v5);
}

unint64_t sub_237D30084(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_53_4(a1);
  sub_237EFA140();
  v2 = sub_237EFA170();

  return sub_237D30684(v1, v2);
}

unint64_t sub_237D300E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_237EF9D40() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_237D3019C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_237C917C0();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_237EF9050();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_237D3025C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_237EF9D40() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_237D30328(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v9 = *v7;
      v8 = v7[1];
      if (v9 == a1 && v8 == HIDWORD(a1))
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237D303A0(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_237D30400(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = *(v5 + 48) + 32 * result;
      if (*(v10 + 8))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((a2 & 1) != 0 || *v10 != a1)
      {
        goto LABEL_13;
      }

      if (*(v10 + 24))
      {
        if (a4)
        {
          return result;
        }
      }

      else if ((a4 & 1) == 0 && *(v10 + 16) == a3)
      {
        return result;
      }

LABEL_13:
      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237D304A4(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237D30528(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + 2 * result) ^ a1 | *(*(v2 + 48) + 2 * result + 1) ^ ((a1 & 0x100) >> 8)) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237D305AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_237D30624(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_237D30684(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

unint64_t sub_237D306E8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_0_33(a1, a2, a3, a4, a5);
  v7 = *(v6 + 56) + 40 * result;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  v10 = *(v6 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v12;
  }

  return result;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD9)
  {
    if (a2 + 39 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 39) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 40;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v5 = v6 - 40;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD8)
  {
    v6 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 39;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D308BC()
{
  result = qword_27DEB0ED0;
  if (!qword_27DEB0ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0ED0);
  }

  return result;
}

unint64_t sub_237D30914()
{
  result = qword_27DEB0ED8;
  if (!qword_27DEB0ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0ED8);
  }

  return result;
}

unint64_t sub_237D3096C()
{
  result = qword_27DEB0EE0;
  if (!qword_27DEB0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0EE0);
  }

  return result;
}

_OWORD *sub_237D309C0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = OUTLINED_FUNCTION_0_33(a1, a2, a3, a4, a5);
  result = sub_237C91804(v9, (*(v8 + 56) + 32 * v7));
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

unint64_t sub_237D30A08()
{
  result = qword_27DEB0EF0;
  if (!qword_27DEB0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0EF0);
  }

  return result;
}

uint64_t sub_237D30A5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237D30AA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

void sub_237D30AF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4);
  *(v7 + 8 * v4) = v6;
  *(*(v5 + 56) + 8 * v4) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_52_5(v5, v11);
  }
}

unint64_t sub_237D30B24(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_237D30B70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_0_33(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_237D30BA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_33(a1, a2, a3, a4, a5);
  v10 = *(v9 + 56);
  v11 = type metadata accessor for TensorDescription(0);
  result = sub_237CF231C(a4, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

uint64_t sub_237D30C60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_33(a1, a2, a3, a4, a5);
  v10 = *(v9 + 56);
  v12 = v11(0);
  result = (*(*(v12 - 8) + 32))(v10 + *(*(v12 - 8) + 72) * a1, a4, v12);
  v14 = *(a5 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }

  return result;
}

void sub_237D30CF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4);
  v7 = (v6 + 16 * v4);
  *v7 = v8;
  v7[1] = v9;
  *(*(v5 + 56) + 8 * v4) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_52_5(v5, v13);
  }
}

void sub_237D30D28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4);
  *(v7 + v4) = v6;
  *(*(v5 + 56) + 8 * v4) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_52_5(v5, v11);
  }
}

void sub_237D30D5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_8_34(a1, a2, a3, a4);
  v7 = (v6 + 2 * v4);
  *v7 = v8 & 1;
  v7[1] = v9 & 1;
  *(*(v5 + 56) + 8 * v4) = v10;
  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_52_5(v5, v13);
  }
}

_BYTE *_s5PointV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D30E80()
{
  result = qword_27DEB0F10;
  if (!qword_27DEB0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F10);
  }

  return result;
}

unint64_t sub_237D30ED8()
{
  result = qword_27DEB0F18;
  if (!qword_27DEB0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F18);
  }

  return result;
}

unint64_t sub_237D30F30()
{
  result = qword_27DEB0F20;
  if (!qword_27DEB0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB0F20);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_0_33(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_40(uint64_t a1)
{

  return sub_237EF9D40();
}

uint64_t OUTLINED_FUNCTION_2_41(uint64_t a1)
{

  return sub_237EF9D40();
}

uint64_t OUTLINED_FUNCTION_3_42(uint64_t a1)
{

  return sub_237EF9D40();
}

uint64_t OUTLINED_FUNCTION_4_36(uint64_t a1, uint64_t a2)
{

  return sub_237EF9D40();
}

void *OUTLINED_FUNCTION_7_30(uint64_t a1, ...)
{

  return sub_237EFA120();
}

uint64_t OUTLINED_FUNCTION_25_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_14(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_36_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_39_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_40_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_5(uint64_t a1)
{

  return swift_once();
}