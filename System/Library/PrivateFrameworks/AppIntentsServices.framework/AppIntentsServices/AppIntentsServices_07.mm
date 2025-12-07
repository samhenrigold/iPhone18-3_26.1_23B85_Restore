id sub_221A20B98(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPropertyIndex:a1 value:a2 type:a3];

  return v5;
}

unint64_t sub_221A20BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_221A20C24(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221A20C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8918;
  if (!qword_27CFB8918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8918);
  }

  return result;
}

unint64_t sub_221A20C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8920;
  if (!qword_27CFB8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8920);
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

uint64_t sub_221A20D20(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[25])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221A20D5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PropertyQuery.SortOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221A20EA0(uint64_t a1, unsigned int a2)
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

uint64_t sub_221A20EE0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221A20FA8(void *a1)
{
  v1 = [a1 propertyIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCD388();

  return v3;
}

id OUTLINED_FUNCTION_4_12()
{
  v4 = *(v2 - 208);

  return sub_221A20B98(v1, v0, v4);
}

uint64_t OUTLINED_FUNCTION_8_9(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 3;

  return swift_willThrow();
}

uint64_t IntentValueQueryRepresentation.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IntentValueQueryRepresentation.queryIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IntentValueQueryRepresentation.init(bundleIdentifier:queryIdentifier:accepting:producing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_221A21150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_221A211A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  MEMORY[0x28223BE20](a1);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[3];
  v19[0] = v9;
  v19[1] = v10;
  v20 = xmmword_221BD0800;
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = 0;
  v17[3] = 0;
  v18 = 2;
  (*(v13 + 16))(v8);
  v14 = *(a2 + 32);

  *&result = IntentValueQuerySpecification.init<A>(app:queryTarget:input:)(v19, v17, v8, v6, v14, a3).n128_u64[0];
  return result;
}

__n128 IntentValueQuerySpecification.init<A>(app:queryTarget:input:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v17 = *(a2 + 16);
  v18 = *a2;
  v13 = *(a2 + 32);
  v14 = (*(a5 + 16))(a4, a5);
  if (!v14)
  {
    if (qword_27CFB7350 != -1)
    {
      swift_once();
    }

    v14 = qword_27CFDED40;
  }

  v15 = v14;
  (*(*(a4 - 8) + 8))(a3, a4);
  *a6 = v9;
  *(a6 + 8) = v10;
  *(a6 + 16) = v11;
  *(a6 + 24) = v12;
  *(a6 + 32) = v15;
  result = v18;
  *(a6 + 56) = v17;
  *(a6 + 40) = v18;
  *(a6 + 72) = v13;
  *(a6 + 161) = 2;
  return result;
}

id sub_221A213EC()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = [objc_allocWithZone(MEMORY[0x277D23C68]) init];
  [v3 setConvertArrayResultToAsyncSequence_];
  if (v2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D237C8]);
    v5 = sub_221BCD358();
    v6 = [v4 initWithContentType_];

    v7 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v6 preferredExtractionType:1];
  }

  else
  {
    v7 = 0;
  }

  [v3 setExportConfiguration_];

  return v3;
}

uint64_t QueryRequestOptions.exportedContentTypeIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t QueryRequestOptions.init(exportedContentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_221BCCC98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v17 = 0;
  sub_2219B1FB0(a1, &v16 - v9);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    result = sub_2219B2020(a1);
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v13 = sub_221BCCC88();
    v14 = v15;
    sub_2219B2020(a1);
    result = (*(v5 + 8))(v7, v4);
    v12 = v17;
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  return result;
}

uint64_t QueryRequestOptions.description.getter()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);

  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000037, 0x8000000221BED6C0);
  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v4, v5);

  MEMORY[0x223DA31F0](0xD00000000000001FLL, 0x8000000221BED700);
  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 7104878;
  }

  if (!v2)
  {
    v2 = 0xE300000000000000;
  }

  MEMORY[0x223DA31F0](v6, v2);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_221A217CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_221A21820(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_221A21890(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *v2;

  sub_221BCDE68();

  v12 = 0xD000000000000015;
  v13 = 0x8000000221BED720;
  v11 = v3;
  v10 = v4;
  v5 = sub_221BCD748();
  v6 = sub_221A1DE50(&v10, v5);
  v8 = v7;

  MEMORY[0x223DA31F0](v6, v8);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v12;
}

uint64_t sub_221A21968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_221A1E060(a1, WitnessTable);
}

uint64_t sub_221A219C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221A21A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A21A64@<X0>(uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  (*(a5 + 24))(a3, a5);
  swift_getAssociatedTypeWitness();
  sub_221BCD748();
  swift_getWitnessTable();
  v8 = sub_221BCD5B8();

  if (!v6)
  {
    *a6 = v8;
  }

  return result;
}

uint64_t sub_221A21B68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_221A21BA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_221A21C10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 130))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 129);
  if (v3 >= 8)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_221A21C4C(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    v5 = a2 - 249;
    bzero(a1, 0x82uLL);
    *a1 = v5;
    if (a3 >= 0xF9)
    {
      *(a1 + 130) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(a1 + 130) = 0;
    }

    if (a2)
    {
      *(a1 + 129) = -a2;
    }
  }
}

void sub_221A21CC0(unsigned int *a1, unsigned int a2)
{
  if (a2 > 7)
  {
    v3 = a2 - 8;
    bzero(a1, 0x81uLL);
    *a1 = v3;
    LOBYTE(a2) = 8;
  }

  *(a1 + 129) = a2;
}

uint64_t sub_221A21D14(uint64_t a1, uint64_t a2)
{
  sub_2219AC930(a1, &v98);
  v6 = sub_2219AC930(a2, v115);
  switch(BYTE1(v114))
  {
    case 1:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97);
      v125 = *&__src[8];
      v126 = *&__src[24];
      v127 = __src[40];
      if (v122 != 1)
      {
        sub_2219ACA1C(&v125);
        goto LABEL_47;
      }

      v49 = *v115;
      v88[32] = v115[40];
      *v88 = *&v115[8];
      *&v88[16] = *&v115[24];
      v50 = *(*__src + 16);
      v51 = MEMORY[0x277D84F90];
      if (v50)
      {
        *&v123[0] = MEMORY[0x277D84F90];
        sub_221BCDF28();
        v52 = *__src + 32;
        do
        {
          sub_2219A1B08(v52, __dst);
          __swift_project_boxed_opaque_existential_0(__dst, *&__dst[24]);
          OUTLINED_FUNCTION_16_8();
          __swift_destroy_boxed_opaque_existential_0(__dst);
          sub_221BCDEF8();
          sub_221BCDF38();
          sub_221BCDF48();
          sub_221BCDF08();
          v52 += 40;
          --v50;
        }

        while (v50);

        v53 = *&v123[0];
      }

      else
      {

        v53 = MEMORY[0x277D84F90];
      }

      v77 = *(v49 + 16);
      if (v77)
      {
        *&v123[0] = v51;
        sub_221BCDF28();
        v78 = v49 + 32;
        do
        {
          sub_2219A1B08(v78, __dst);
          __swift_project_boxed_opaque_existential_0(__dst, *&__dst[24]);
          OUTLINED_FUNCTION_16_8();
          __swift_destroy_boxed_opaque_existential_0(__dst);
          sub_221BCDEF8();
          sub_221BCDF38();
          sub_221BCDF48();
          sub_221BCDF08();
          v78 += 40;
          --v77;
        }

        while (v77);

        v79 = *&v123[0];
      }

      else
      {

        v79 = MEMORY[0x277D84F90];
      }

      v80 = sub_221A199C0(v53, v79);

      if (v80)
      {
        v34 = sub_221A22428(&v125, v88);
      }

      else
      {
        v34 = 0;
      }

      sub_2219ACA1C(&v125);
      v76 = v88;
      goto LABEL_78;
    case 2:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97);
      v23 = *__src;
      OUTLINED_FUNCTION_7_10();
      if (v32 != 2)
      {
        sub_2219ACA1C(v88);

        goto LABEL_48;
      }

      v33 = *v115;
      OUTLINED_FUNCTION_14_9(v24, v25, v26, v27, v28, v29, v30, v31, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *v115, *&v115[8]);
      sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
      OUTLINED_FUNCTION_1_0();
      if (sub_221BCDC58())
      {
        v34 = sub_221A22428(v88, __dst);
      }

      else
      {
        v34 = 0;
      }

      sub_2219ACA1C(v88);
      sub_2219ACA1C(__dst);

      goto LABEL_96;
    case 3:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97);
      *v88 = *&__src[16];
      *&v88[16] = *&__src[32];
      v88[32] = __src[48];
      if (v122 != 3)
      {
        goto LABEL_41;
      }

      *__dst = *&v115[16];
      *&__dst[16] = *&v115[32];
      __dst[32] = v115[48];
      if (*__src == *v115 && *&__src[8] == *&v115[8])
      {

        goto LABEL_66;
      }

      v36 = sub_221BCE1B8();

      v34 = 0;
      if (v36)
      {
        goto LABEL_66;
      }

      goto LABEL_67;
    case 4:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97);
      v17 = v92;
      v18 = v93;
      v19 = v94;
      v123[0] = v95;
      v123[1] = v96;
      v124 = v97;
      if (v122 != 4)
      {
        sub_2219ACA1C(v123);

        sub_2219ACB30(__src);
        goto LABEL_48;
      }

      v20 = v116;
      v21 = v117;
      v22 = v118;
      v125 = v119;
      v126 = v120;
      v127 = v121;
      memcpy(__dst, __src, 0x41uLL);
      memcpy(v88, v115, 0x41uLL);
      if ((_s18AppIntentsServices13PropertyQueryV2eeoiySbAC_ACtFZ_0(__dst, v88) & 1) == 0)
      {
        goto LABEL_85;
      }

      if (v18)
      {
        if ((v21 & 1) == 0)
        {
LABEL_85:
          sub_2219ACA1C(v123);
          sub_2219ACA1C(&v125);

LABEL_86:

          goto LABEL_87;
        }
      }

      else if ((v21 & 1) != 0 || v17 != v20)
      {
        goto LABEL_85;
      }

      if (v19)
      {
        if (!v22)
        {

          sub_2219ACA1C(v123);
          sub_2219ACA1C(&v125);
          swift_bridgeObjectRelease_n();
          goto LABEL_87;
        }

        v81 = sub_221A199D4(v19, v22);

        if ((v81 & 1) == 0)
        {
          sub_2219ACA1C(v123);
          sub_2219ACA1C(&v125);
LABEL_87:
          v34 = 0;
          goto LABEL_88;
        }
      }

      else if (v22)
      {
        sub_2219ACA1C(v123);
        sub_2219ACA1C(&v125);
        goto LABEL_86;
      }

      v34 = sub_221A22428(v123, &v125);
      sub_2219ACA1C(v123);
      sub_2219ACA1C(&v125);
LABEL_88:
      sub_2219ACB30(v88);
      sub_2219ACB30(__dst);
LABEL_96:
      sub_2219AC98C(&v98);
      return v34 & 1;
    case 5:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97);
      v54 = *__src;
      OUTLINED_FUNCTION_7_10();
      if (v63 != 5)
      {
LABEL_41:
        sub_2219ACA1C(v88);
LABEL_47:

        goto LABEL_48;
      }

      v64 = *v115;
      OUTLINED_FUNCTION_14_9(v55, v56, v57, v58, v59, v60, v61, v62, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, *v115, *&v115[8]);
      v65 = sub_221A19A98(v54, v64);

      if (v65)
      {
LABEL_66:
        v34 = sub_221A22428(v88, __dst);
      }

      else
      {
        v34 = 0;
      }

LABEL_67:
      sub_2219ACA1C(v88);
      v76 = __dst;
LABEL_78:
      sub_2219ACA1C(v76);
      goto LABEL_96;
    case 6:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97);
      OUTLINED_FUNCTION_5_13();
      if (v66 != 6)
      {
        goto LABEL_3;
      }

      goto LABEL_20;
    case 7:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97);
      OUTLINED_FUNCTION_5_13();
      if (v37 == 7)
      {
        goto LABEL_20;
      }

      goto LABEL_3;
    default:
      OUTLINED_FUNCTION_9_9(v6, v7, v8, v9, v10, v11, v12, v13, *v88, *&v88[8], *&v88[16], *&v88[24], *&v88[32], *&v88[40], *&v88[48], *&v88[56], *&v88[64], v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *__src, *&__src[8], *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], v92, v93, v94, v95, *(&v95 + 1), v96, *(&v96 + 1), v97);
      OUTLINED_FUNCTION_5_13();
      if (!v14)
      {
LABEL_20:
        v38 = *v115;
        v40 = *&v115[8];
        v39 = *&v115[24];
        if (__src)
        {
          if (__src == 1)
          {
            if (v115[32] == 1)
            {
              v41 = &v98 == *v115 && v2 == *&v115[8];
              if (v41 || (v42 = OUTLINED_FUNCTION_1_0(), (OUTLINED_FUNCTION_13_7(v42, v43) & 1) != 0))
              {
                if (v3 == *(&v40 + 1) && v4 == v39)
                {
                  v34 = 1;
                  v45 = v38;
                  v46 = v40;
                  v47 = v3;
                  v48 = v4;
                }

                else
                {
                  v34 = sub_221BCE1B8();
                  v45 = OUTLINED_FUNCTION_2_23();
                }

                v69 = 1;
                goto LABEL_92;
              }

              v71 = OUTLINED_FUNCTION_2_23();
              v75 = 1;
LABEL_62:
              sub_2219EB374(v71, v72, v73, v74, v75);
              v34 = 0;
LABEL_95:
              v85 = OUTLINED_FUNCTION_1_0();
              sub_2219EB374(v85, v86, v3, v4, __src);
              goto LABEL_96;
            }

LABEL_61:
            v71 = OUTLINED_FUNCTION_2_23();
            goto LABEL_62;
          }

          if (v115[32] != 2)
          {
            goto LABEL_61;
          }

          v67 = v2;
          if (&v98 != *v115 || v2 != *&v115[8])
          {
            v34 = OUTLINED_FUNCTION_13_7(&v98, v2);
            v45 = OUTLINED_FUNCTION_2_23();
            v69 = 2;
            goto LABEL_92;
          }

          v82 = *&v115[16];
          v83 = *&v115[24];
          v84 = 2;
        }

        else
        {
          if (v115[32])
          {
            goto LABEL_61;
          }

          v67 = v2;
          if (&v98 != *v115 || v2 != *&v115[8])
          {
            v34 = OUTLINED_FUNCTION_13_7(&v98, v2);
            v45 = OUTLINED_FUNCTION_2_23();
            v69 = 0;
LABEL_92:
            sub_2219EB374(v45, v46, v47, v48, v69);
            goto LABEL_95;
          }

          v82 = *&v115[16];
          v83 = *&v115[24];
          v84 = 0;
        }

        sub_2219EB374(&v98, v67, v82, v83, v84);
        v34 = 1;
        goto LABEL_95;
      }

LABEL_3:
      v15 = OUTLINED_FUNCTION_1_0();
      sub_2219EB374(v15, v16, v3, v4, __src);
LABEL_48:
      sub_221A22C7C(&v98);
      v34 = 0;
      return v34 & 1;
  }
}

uint64_t sub_221A22428(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (*(a1 + 32) != 1)
  {
    if (*(a2 + 32) == 2)
    {
LABEL_17:
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_21;
      }

      return 1;
    }

    return 0;
  }

  if (*(a2 + 32) != 1)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a1[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = v4 == v6 && v5 == v7;
  if (!v12 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  if (v8 == v10 && v9 == v11)
  {
    return 1;
  }

LABEL_21:

  return sub_221BCE1B8();
}

uint64_t sub_221A22514(char *a1)
{
  v3 = *a1;
  sub_2219AC930(v1, __src);
  switch(v91)
  {
    case 1:
      OUTLINED_FUNCTION_15_6();
      if (v3)
      {
        v39 = OUTLINED_FUNCTION_1_28();
        sub_2219EB374(v39, v40, v41, v42, v43);
        OUTLINED_FUNCTION_3_15();
        sub_221BCDE68();

        strcpy(__dst, ".byIdentifier(");
        __dst[15] = -18;

        v44 = sub_221BCE168();
        MEMORY[0x223DA31F0](v44);

        MEMORY[0x223DA31F0](0x2973444920, 0xE500000000000000);
        return *__dst;
      }

      OUTLINED_FUNCTION_3_15();
      sub_221BCDE68();
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_1_18();
      MEMORY[0x223DA31F0]();
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7918, &qword_221BD0E28);
      v76 = MEMORY[0x223DA33D0](v2, v75);
      v78 = v77;

      MEMORY[0x223DA31F0](v76, v78);

      v79 = OUTLINED_FUNCTION_0_30();
      MEMORY[0x223DA31F0](v79);
      OUTLINED_FUNCTION_8_10();
      OUTLINED_FUNCTION_17_7(v80, v81, &type metadata for QuerySpecification.Target, MEMORY[0x277D84698], MEMORY[0x277D846A8], v82, v83, v84, v85);
      v53 = OUTLINED_FUNCTION_1_28();
      goto LABEL_15;
    case 2:
      OUTLINED_FUNCTION_15_6();
      *__dst = 0;
      *&__dst[8] = 0xE000000000000000;
      sub_221BCDE68();
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_1_18();
      MEMORY[0x223DA31F0]();
      if (v3)
      {
        OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_17_7(v16, v17, &type metadata for QuerySpecification.Target, MEMORY[0x277D84698], MEMORY[0x277D846A8], v18, v19, v20, v85);
        v21 = OUTLINED_FUNCTION_1_28();
        sub_2219EB374(v21, v22, v23, v24, v25);
        MEMORY[0x223DA31F0](41, 0xE100000000000000);
      }

      else
      {
        v59 = v2;
        v60 = [v59 description];
        v61 = sub_221BCD388();
        v63 = v62;

        MEMORY[0x223DA31F0](v61, v63);

        v64 = OUTLINED_FUNCTION_0_30();
        MEMORY[0x223DA31F0](v64);
        OUTLINED_FUNCTION_8_10();
        OUTLINED_FUNCTION_17_7(v65, v66, &type metadata for QuerySpecification.Target, MEMORY[0x277D84698], MEMORY[0x277D846A8], v67, v68, v69, v85);
        v70 = OUTLINED_FUNCTION_1_28();
        sub_2219EB374(v70, v71, v72, v73, v74);
        MEMORY[0x223DA31F0](10506, 0xE200000000000000);
      }

      return v88;
    case 3:
      v26 = *__src;
      v28 = *&__src[24];
      v27 = *&__src[16];
      v29 = *&__src[32];
      v30 = *&__src[40];
      v31 = __src[48];
      OUTLINED_FUNCTION_3_15();
      sub_221BCDE68();
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_4_13();
      OUTLINED_FUNCTION_1_18();
      MEMORY[0x223DA31F0]();
      v32 = sub_2219C0D58(v26, *(&v26 + 1), v3);
      v34 = v33;

      MEMORY[0x223DA31F0](v32, v34);

      v35 = OUTLINED_FUNCTION_0_30();
      goto LABEL_14;
    case 4:
      memcpy(__dst, __src, sizeof(__dst));
      sub_221BCDE68();
      MEMORY[0x223DA31F0](0xD00000000000001DLL, 0x8000000221BED7C0);
      v6 = sub_2219C0DF4(__dst, v3);
      MEMORY[0x223DA31F0](v6);

      MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BED7E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8A50, &qword_221BD6488);
      v7 = sub_221BCD3D8();
      MEMORY[0x223DA31F0](v7);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BED800);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8A58, &unk_221BD6490);
      v8 = sub_221BCD3D8();
      MEMORY[0x223DA31F0](v8);

      v9 = OUTLINED_FUNCTION_0_30();
      MEMORY[0x223DA31F0](v9);
      sub_221BCE018();
      v10 = OUTLINED_FUNCTION_12_5();
      sub_2219EB374(v10, v11, v12, v13, v14);
      MEMORY[0x223DA31F0](2695209, 0xE300000000000000);
      v15 = 0;
      sub_2219ACB30(__dst);
      return v15;
    case 5:
      v45 = *__src;
      sub_2219EB374(*&__src[8], *&__src[16], *&__src[24], *&__src[32], __src[40]);
      OUTLINED_FUNCTION_3_15();
      sub_221BCDE68();

      *__dst = 0xD000000000000020;
      *&__dst[8] = 0x8000000221BED790;
      v46 = sub_2219A1D20(0, &qword_27CFB8600, 0x277CC34B0);
      MEMORY[0x223DA33D0](v45, v46);

      v47 = OUTLINED_FUNCTION_1_0();
      MEMORY[0x223DA31F0](v47);

      return *__dst;
    case 6:
      v28 = *&__src[8];
      v27 = *__src;
      v30 = *&__src[24];
      v29 = *&__src[16];
      v31 = __src[32];
      OUTLINED_FUNCTION_3_15();
      sub_221BCDE68();
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_1_18();
      v35 = 0xD000000000000020;
      goto LABEL_14;
    case 7:
      v28 = *&__src[8];
      v27 = *__src;
      v30 = *&__src[24];
      v29 = *&__src[16];
      v31 = __src[32];
      OUTLINED_FUNCTION_3_15();
      sub_221BCDE68();
      OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_4_13();
      v35 = v37 - 5;
      v36 = v38 | 0x8000000000000000;
LABEL_14:
      v48 = MEMORY[0x223DA31F0](v35, v36);
      *__dst = v27;
      *&__dst[8] = v28;
      *&__dst[16] = v29;
      *&__dst[24] = v30;
      __dst[32] = v31;
      OUTLINED_FUNCTION_17_7(v48, v49, &type metadata for QuerySpecification.Target, MEMORY[0x277D84698], MEMORY[0x277D846A8], v50, v51, v52, v85);
      v53 = OUTLINED_FUNCTION_12_5();
LABEL_15:
      sub_2219EB374(v53, v54, v55, v56, v57);
      break;
    default:
      v4 = __src[32];
      v86 = *&__src[16];
      v87 = *__src;
      sub_221BCDE68();

      v88 = 0xD00000000000001ALL;
      *&__dst[16] = v86;
      *__dst = v87;
      __dst[32] = v4;
      v5 = sub_221BCD3D8();
      MEMORY[0x223DA31F0](v5);

      break;
  }

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return v88;
}

unint64_t sub_221A22C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_221A22C28(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221A22C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8A48;
  if (!qword_27CFB8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8A48);
  }

  return result;
}

uint64_t sub_221A22C7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8A60, &unk_221BD64A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_9_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);

  return sub_2219AC930(va, &a28);
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1, uint64_t a2)
{

  return sub_221BCE1B8();
}

id OUTLINED_FUNCTION_16_8()
{

  return sub_22199B82C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_221BCE018();
}

uint64_t static QueryTarget.defaultForEntityType(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return OUTLINED_FUNCTION_0_31(a1, a2);
}

uint64_t static QueryTarget.queryType(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  return OUTLINED_FUNCTION_0_31(a1, a2);
}

uint64_t static QueryTarget.intentParameter(actionIdentifier:parameterName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
}

BOOL static QueryTarget.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) == 1)
    {
      if (v8 != 1)
      {
        return 0;
      }

      v9 = a1[2];
      v10 = a1[3];
      v11 = a2[2];
      v12 = a2[3];
      v13 = v4 == v6 && v5 == v7;
      if (!v13 && (sub_221BCE1B8() & 1) == 0)
      {
        return 0;
      }

      if (v9 == v11 && v10 == v12)
      {
        return 1;
      }

      return (sub_221BCE1B8() & 1) != 0;
    }

    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return (sub_221BCE1B8() & 1) != 0;
}

void *sub_221A22FA0()
{
  type metadata accessor for AppNotificationEventRegistry();
  v0 = swift_allocObject();
  _s20LinkServicesListenerCMa();
  v1 = swift_allocObject();
  result = sub_221A28668();
  *(v0 + 16) = v1;
  off_27CFB8A68 = v0;
  return result;
}

uint64_t static AppNotificationEventRegistry.shared.getter()
{
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }
}

void sub_221A23048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  v21 = OUTLINED_FUNCTION_40_3();
  v22 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(v21);
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_4_0();
  v25 = v24 - v23;
  v26 = v20[1];
  v58 = *v20;
  v28 = v20[2];
  v27 = v20[3];
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v29 = sub_221BCCD88();
  __swift_project_value_buffer(v29, qword_27CFDEE58);
  v30 = OUTLINED_FUNCTION_14_10();
  sub_221A2AADC(v30, v25);

  v31 = sub_221BCCD68();
  v32 = sub_221BCDA58();

  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    OUTLINED_FUNCTION_11_7();
    v59 = swift_slowAlloc();
    *v28 = 136315394;
    sub_221BCC558();
    OUTLINED_FUNCTION_2_24();
    sub_221A2A71C(v33, v34);
    sub_221BCE168();
    OUTLINED_FUNCTION_1_29();
    sub_221A2AB34(v25);
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_144();

    OUTLINED_FUNCTION_23_6();
    if (v27)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_221BCF7F0;
      *(v35 + 32) = v58;
      *(v35 + 40) = v26;
      *(v35 + 48) = v28;
      *(v35 + 56) = v27;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_6_11();
      v36 = sub_221BCD328();
      v38 = v37;
    }

    else
    {

      v36 = v58;
      v38 = v26;
    }

    v39 = sub_2219A6360(v36, v38, &v59);

    *(v28 + 14) = v39;
    _os_log_impl(&dword_221989000, v31, v32, "Starting observer %s for %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v40 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v40);
  }

  else
  {

    OUTLINED_FUNCTION_1_29();
    sub_221A2AB34(v25);
  }

  v41 = v58;
  v59 = v58;
  v60 = v26;
  v61 = v28;
  v62 = v27;
  sub_221A25544();
  if (v43 == 1)
  {
    if (v42 == 1)
    {
      OUTLINED_FUNCTION_10();
      swift_allocObject();
      swift_weakInit();

      sub_221BA1AC8();
    }

    OUTLINED_FUNCTION_10();
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = v58;
    v45[4] = v26;
    v45[5] = v28;
    v45[6] = v27;

    sub_221BA1AC8();
  }

  v59 = v58;
  v60 = v26;
  v61 = v28;
  v62 = v27;
  sub_221A24864();

  v46 = sub_221BCCD68();
  v47 = sub_221BCDA68();

  if (os_log_type_enabled(v46, v47))
  {
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    OUTLINED_FUNCTION_11_7();
    v59 = swift_slowAlloc();
    *v28 = 136315394;
    if (v27)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_221BCF7F0;
      *(v48 + 32) = v58;
      *(v48 + 40) = v26;
      *(v48 + 48) = v28;
      *(v48 + 56) = v27;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_6_11();
      sub_221BCD328();
      OUTLINED_FUNCTION_38_2();

      v26 = v28;
    }

    else
    {
    }

    sub_2219A6360(v41, v26, &v59);

    OUTLINED_FUNCTION_23_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B00, &qword_221BD66D8);
    v49 = sub_221BCD3D8();
    sub_2219A6360(v49, v50, &v59);
    OUTLINED_FUNCTION_47_2();

    *(v28 + 14) = v26;
    OUTLINED_FUNCTION_37_1();
    _os_log_impl(v51, v52, v53, v54, v55, v56);
    OUTLINED_FUNCTION_39_5();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v57 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v57);
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221A23658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_221A23680, 0, 0);
}

uint64_t sub_221A23680()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_42_3();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_28_4();
    v7 = (*(v2 + 208) + **(v2 + 208));
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_21_4(v3);

    return v7(v4);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v6();
  }
}

uint64_t sub_221A237D4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

void sub_221A23A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_55_4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v59 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v60 = v13 - v12;
  v14 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v20 = v19 - v18;
  v21 = *v10;
  v22 = v10[1];
  v23 = v10[2];
  v24 = v10[3];
  v25 = v21;
  v62 = v22;
  v63 = v21;
  v64 = v22;
  v65 = v23;
  v58 = v23;
  v66 = v24;
  v61 = v8;
  sub_221A26074();
  if ((v26 & 1) == 0)
  {
    v56 = v6;
    v57 = v3;
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_32_4();
      swift_once();
    }

    v27 = sub_221BCCD88();
    __swift_project_value_buffer(v27, qword_27CFDEE58);
    v54 = v16 + 16;
    v55 = *(v16 + 16);
    v55(v20, v8, v14);

    v28 = sub_221BCCD68();
    v29 = sub_221BCDA58();

    HIDWORD(v53) = v29;
    v30 = v25;
    if (os_log_type_enabled(v28, v29))
    {
      v51 = v28;
      v52 = v4;
      OUTLINED_FUNCTION_20_6();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_6();
      v63 = swift_slowAlloc();
      *v31 = 136315394;
      OUTLINED_FUNCTION_2_24();
      sub_221A2A71C(v32, v33);
      v34 = sub_221BCE168();
      (*(v16 + 8))(v20, v14);
      OUTLINED_FUNCTION_43_4();
      OUTLINED_FUNCTION_144();

      *(v31 + 4) = v34;
      v50 = v31;
      *(v31 + 12) = 2080;
      v35 = v58;
      if (v24)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
        OUTLINED_FUNCTION_49();
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_221BCF7F0;
        *(v36 + 32) = v30;
        *(v36 + 40) = v62;
        *(v36 + 48) = v58;
        *(v36 + 56) = v24;
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_30_4();
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
        sub_2219998AC();
        OUTLINED_FUNCTION_6_11();
        v37 = sub_221BCD328();
        v39 = v38;
      }

      else
      {
        v39 = v62;

        v37 = v30;
      }

      v40 = sub_2219A6360(v37, v39, &v63);

      *(v50 + 14) = v40;
      _os_log_impl(&dword_221989000, v51, v29, "No observer with %s for %s", v50, 0x16u);
      swift_arrayDestroy();
      v41 = OUTLINED_FUNCTION_9_10();
      MEMORY[0x223DA4C00](v41);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      (*(v16 + 8))(v20, v14);
      v35 = v58;
    }

    v42 = v60;
    v55(v60, v61, v14);
    *(v60 + *(v59 + 20)) = v56;
    v63 = v30;
    v64 = v62;
    v65 = v35;
    v66 = v24;

    sub_221A23048(&v63, v60, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    OUTLINED_FUNCTION_1_29();
    sub_221A2AB34(v42);
  }

  OUTLINED_FUNCTION_53_5();
}

void sub_221A23E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  v22 = v21;
  OUTLINED_FUNCTION_40_3();
  v23 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_0();
  v29 = v28 - v27;
  v30 = v20[1];
  v64 = *v20;
  v31 = v20[3];
  v65 = v20[2];
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v32 = sub_221BCCD88();
  v33 = __swift_project_value_buffer(v32, qword_27CFDEE58);
  (*(v25 + 16))(v29, v22, v23);

  v34 = sub_221BCCD68();
  v35 = sub_221BCDA58();

  v63 = v35;
  if (os_log_type_enabled(v34, v35))
  {
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    OUTLINED_FUNCTION_11_7();
    v66 = swift_slowAlloc();
    *v33 = 136315394;
    OUTLINED_FUNCTION_2_24();
    sub_221A2A71C(v36, v37);
    sub_221BCE168();
    (*(v25 + 8))(v29, v23);
    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_144();

    OUTLINED_FUNCTION_23_6();
    if (v31)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_221BCF7F0;
      v39 = v64;
      *(v38 + 32) = v64;
      *(v38 + 40) = v30;
      v40 = v65;
      *(v38 + 48) = v65;
      *(v38 + 56) = v31;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_6_11();
      v41 = sub_221BCD328();
      v43 = v42;
    }

    else
    {

      v39 = v64;
      v41 = v64;
      v43 = v30;
      v40 = v65;
    }

    v44 = sub_2219A6360(v41, v43, &v66);

    *(v33 + 14) = v44;
    _os_log_impl(&dword_221989000, v34, v63, "Stopping observer %s for %s", v33, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v45 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v45);
  }

  else
  {

    (*(v25 + 8))(v29, v23);
    v39 = v64;
    v40 = v65;
  }

  v66 = v39;
  v67 = v30;
  v68 = v40;
  v69 = v31;
  sub_221A25B08();
  if (!v47)
  {
    v48 = v46;
    OUTLINED_FUNCTION_10();
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    v50[2] = v49;
    v50[3] = v39;
    v50[4] = v30;
    v50[5] = v40;
    v50[6] = v31;

    sub_221BA1AC8();

    if (!v48)
    {
      OUTLINED_FUNCTION_10();
      swift_allocObject();
      swift_weakInit();

      sub_221BA1AC8();
    }
  }

  v66 = v39;
  v67 = v30;
  v68 = v40;
  v69 = v31;
  sub_221A24864();

  v51 = sub_221BCCD68();
  v52 = sub_221BCDA68();

  if (os_log_type_enabled(v51, v52))
  {
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    OUTLINED_FUNCTION_11_7();
    v66 = swift_slowAlloc();
    *v33 = 136315394;
    if (v31)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_221BCF7F0;
      *(v53 + 32) = v39;
      *(v53 + 40) = v30;
      *(v53 + 48) = v65;
      *(v53 + 56) = v31;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_6_11();
      sub_221BCD328();
      OUTLINED_FUNCTION_38_2();

      v30 = v33;
    }

    else
    {
    }

    sub_2219A6360(v39, v30, &v66);

    OUTLINED_FUNCTION_23_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B00, &qword_221BD66D8);
    v54 = sub_221BCD3D8();
    sub_2219A6360(v54, v55, &v66);
    OUTLINED_FUNCTION_47_2();

    *(v33 + 14) = v30;
    OUTLINED_FUNCTION_37_1();
    _os_log_impl(v56, v57, v58, v59, v60, v61);
    OUTLINED_FUNCTION_39_5();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v62 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v62);
  }

  else
  {
  }

  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221A244D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_221A244FC, 0, 0);
}

uint64_t sub_221A244FC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_42_3();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_28_4();
    v7 = (*(v2 + 216) + **(v2 + 216));
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_21_4(v3);

    return v7(v4);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v6();
  }
}

uint64_t sub_221A24650()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221A247C8()
{
  OUTLINED_FUNCTION_1_5();
  swift_beginAccess();
  swift_weakLoadStrong();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221A24864()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_221A2A7DC(&v4, v2);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

void sub_221A248E4(int64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  v81 = a4;
  v80 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AE8, &qword_221BD66C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v66 - v11;
  v77 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(0);
  v13 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v74 = &v66 - v16;
  v17 = sub_221BCC558();
  v18 = *(v17 - 8);
  v78 = v17;
  v79 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v21 = *(a1 + 24);
  if (*(v21 + 16))
  {
    v69 = v13;

    v22 = sub_221B9EADC(v80, a3, v81, a5);
    if (v23)
    {
      v76 = a3;
      v24 = *(*(v21 + 56) + 8 * v22);

      v25 = v24;
      if (*(v24 + 16))
      {
        v72 = v12;
        v73 = a1;
        v67 = a6;
        v26 = v24 + 56;
        v27 = 1 << *(v25 + 32);
        v28 = -1;
        if (v27 < 64)
        {
          v28 = ~(-1 << v27);
        }

        a6 = v28 & *(v25 + 56);
        v29 = (v27 + 63) >> 6;
        v70 = v79 + 16;
        v71 = (v79 + 8);

        v31 = 0;
        v68 = MEMORY[0x277D84F90];
LABEL_7:
        v32 = v31;
        while (1)
        {
          v33 = v78;
          if (!a6)
          {
            break;
          }

          v34 = a5;
          v31 = v32;
LABEL_14:
          v35 = v30;
          (*(v79 + 16))(v20, *(v30 + 48) + *(v79 + 72) * (__clz(__rbit64(a6)) | (v31 << 6)), v78);
          a3 = v72;
          v36 = v82;
          sub_221A2505C(v20, v73, v80, v76, v81, v34, v72);
          v82 = v36;
          if (v36)
          {

            (*v71)(v20, v33);

            __break(1u);
            return;
          }

          a6 &= a6 - 1;
          (*v71)(v20, v33);
          if (__swift_getEnumTagSinglePayload(a3, 1, v77) != 1)
          {
            v37 = v74;
            sub_221A2AB88(a3, v74);
            sub_221A2AB88(v37, v75);
            a3 = v68;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2219B3FD0();
              a3 = v42;
            }

            v39 = *(a3 + 2);
            v40 = v39 + 1;
            if (v39 >= *(a3 + 3) >> 1)
            {
              v68 = v39 + 1;
              sub_2219B3FD0();
              v40 = v68;
              a3 = v43;
            }

            *(a3 + 2) = v40;
            v41 = (*(v69 + 80) + 32) & ~*(v69 + 80);
            v68 = a3;
            sub_221A2AB88(v75, &a3[v41 + *(v69 + 72) * v39]);
            v30 = v35;
            a5 = v34;
            goto LABEL_7;
          }

          sub_2219A1CC8(a3, &qword_27CFB8AE8, &qword_221BD66C8);
          v32 = v31;
          v30 = v35;
          a5 = v34;
        }

        while (1)
        {
          v31 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v31 >= v29)
          {

            a6 = v67;
            v44 = v68;
            goto LABEL_32;
          }

          a6 = *(v26 + 8 * v31);
          ++v32;
          if (a6)
          {
            v34 = a5;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_34:
        swift_once();
        goto LABEL_28;
      }

      a3 = v76;
    }
  }

  if (!a5)
  {
    goto LABEL_31;
  }

  v45 = qword_27CFB73B0;

  if (v45 != -1)
  {
    goto LABEL_34;
  }

LABEL_28:
  v46 = sub_221BCCD88();
  __swift_project_value_buffer(v46, qword_27CFDEE58);

  v47 = sub_221BCCD68();
  v48 = sub_221BCDA78();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v84 = v79;
    *v49 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_221BCF7F0;
    v51 = v81;
    *(v50 + 32) = v80;
    *(v50 + 40) = a3;
    *(v50 + 48) = v51;
    *(v50 + 56) = a5;
    v83 = v50;
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_2219998AC();
    LODWORD(v81) = v48;
    v52 = sub_221BCD328();
    v54 = v53;

    v55 = sub_2219A6360(v52, v54, &v84);

    *(v49 + 4) = v55;
    *(v49 + 12) = 2080;

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AF0, &qword_221BD66D0);
    v57 = a6;
    sub_221A2A7F8(v56, v58, v59);
    v60 = sub_221BCD2A8();
    v62 = v61;

    v63 = v60;
    a6 = v57;
    v64 = sub_2219A6360(v63, v62, &v84);

    *(v49 + 14) = v64;
    _os_log_impl(&dword_221989000, v47, v81, "No observer identifiers for topic %s: %s", v49, 0x16u);
    v65 = v79;
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v65, -1, -1);
    MEMORY[0x223DA4C00](v49, -1, -1);
  }

  else
  {
  }

LABEL_31:
  v44 = 0;
LABEL_32:
  *a6 = v44;
}

uint64_t sub_221A2505C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a5;
  v49 = a3;
  v50 = a7;
  v12 = sub_221BCC558();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(a2 + 32);
  if (*(v16 + 16))
  {

    v17 = sub_221B9EA30(a1);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      v20 = v50;
      (*(v13 + 16))(v50, a1, v12);
      v21 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(0);
      *(v20 + *(v21 + 20)) = v19;
      v22 = v20;
      v23 = 0;
      return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
    }
  }

  if (qword_27CFB73B0 != -1)
  {
    swift_once();
  }

  v24 = sub_221BCCD88();
  __swift_project_value_buffer(v24, qword_27CFDEE58);
  (*(v13 + 16))(v15, a1, v12);

  v25 = sub_221BCCD68();
  v26 = sub_221BCDA78();

  if (os_log_type_enabled(v25, v26))
  {
    v46 = v26;
    v47 = v25;
    v27 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52 = v45;
    *v27 = 136315650;
    if (a6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      v28 = swift_allocObject();
      v44[1] = v7;
      *(v28 + 16) = xmmword_221BCF7F0;
      v29 = v48;
      *(v28 + 32) = v49;
      *(v28 + 40) = a4;
      *(v28 + 48) = v29;
      *(v28 + 56) = a6;
      v51 = v28;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      v49 = sub_221BCD328();
      v31 = v30;

      a4 = v31;
    }

    else
    {
    }

    v32 = sub_2219A6360(v49, a4, &v52);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    sub_221A2A71C(&qword_27CFB7A60, MEMORY[0x277CC9628]);
    v33 = sub_221BCE168();
    v35 = v34;
    (*(v13 + 8))(v15, v12);
    v36 = sub_2219A6360(v33, v35, &v52);

    *(v27 + 14) = v36;
    *(v27 + 22) = 2080;
    type metadata accessor for RemoteAppNotificationSink(0);
    sub_221A2A71C(&qword_27CFB9420, MEMORY[0x277CC9600]);

    v37 = sub_221BCD2A8();
    v39 = v38;

    v40 = sub_2219A6360(v37, v39, &v52);

    *(v27 + 24) = v40;
    v41 = v47;
    _os_log_impl(&dword_221989000, v47, v46, "No observer for topic %s observerUUID %s: %s", v27, 0x20u);
    v42 = v45;
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v42, -1, -1);
    MEMORY[0x223DA4C00](v27, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v21 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(0);
  v22 = v50;
  v23 = 1;
  return __swift_storeEnumTagSinglePayload(v22, v23, 1, v21);
}

void sub_221A25544()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v4 = OUTLINED_FUNCTION_32_5();
  v5 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(v4);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4_0();
  v8 = v7 - v6;
  v10 = *v0;
  v9 = v0[1];
  v11 = v0[3];
  v40 = v0[2];
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v12 = sub_221BCCD88();
  __swift_project_value_buffer(v12, qword_27CFDEE58);
  v13 = OUTLINED_FUNCTION_14_10();
  sub_221A2AADC(v13, v8);

  v14 = sub_221BCCD68();
  v15 = sub_221BCDA58();

  if (os_log_type_enabled(v14, v15))
  {
    v38 = v3;
    v39 = v10;
    OUTLINED_FUNCTION_20_6();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_6();
    v42[0] = swift_slowAlloc();
    *v16 = 136315394;
    sub_221BCC558();
    OUTLINED_FUNCTION_2_24();
    sub_221A2A71C(v17, v18);
    sub_221BCE168();
    OUTLINED_FUNCTION_1_29();
    sub_221A2AB34(v8);
    v19 = OUTLINED_FUNCTION_0_0();
    v22 = sub_2219A6360(v19, v20, v21);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_221BCF7F0;
      v24 = v40;
      *(v23 + 32) = v39;
      *(v23 + 40) = v9;
      *(v23 + 48) = v24;
      *(v23 + 56) = v11;
      v41 = v23;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      v26 = &v41;
      OUTLINED_FUNCTION_17_8();
      sub_221BCD328();
      OUTLINED_FUNCTION_38_2();
    }

    else
    {

      v25 = v39;
      v26 = v9;
    }

    v28 = sub_2219A6360(v25, v26, v42);

    *(v16 + 14) = v28;
    OUTLINED_FUNCTION_52_4(&dword_221989000, v29, v30, "Adding observer with %s for %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();

    v3 = v38;
    v10 = v39;
  }

  else
  {

    OUTLINED_FUNCTION_1_29();
    v27 = sub_221A2AB34(v8);
  }

  v31 = v1[2];
  MEMORY[0x28223BE20](v27);
  *(&v37 - 6) = v1;
  *(&v37 - 5) = v10;
  v32 = v40;
  *(&v37 - 4) = v9;
  *(&v37 - 3) = v32;
  *(&v37 - 2) = v11;
  *(&v37 - 1) = v3;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_36_5();
  *(v34 - 16) = sub_221A2A760;
  *(v34 - 8) = v35;
  os_unfair_lock_lock(v31 + 4);
  sub_221A2ACB4(v42, v36);
  os_unfair_lock_unlock(v31 + 4);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A25890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v33 = a5;
  v30 = a6;
  v31 = a2;
  v32 = a7;
  v11 = sub_221BCC558();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  swift_beginAccess();
  v18 = *(a1 + 24);

  v19 = a2;
  v20 = a4;
  sub_221B9C500(v19, a3, a4, v33, v18);
  v22 = v21;

  v23 = MEMORY[0x277D84FA0];
  if (v22)
  {
    v23 = v22;
  }

  v35 = v23;
  (*(v12 + 16))(v14, v30, v11);
  sub_221BBA80C();
  (*(v12 + 8))(v17, v11);
  v24 = v35;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(a1 + 24);
  sub_221B9FC60(v24, v31, a3, v20, v33, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v34;
  swift_endAccess();
  type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(0);
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v34 = *(a1 + 32);
  sub_221B9FB24();
  *(a1 + 32) = v34;
  swift_endAccess();
  v26 = *(v24 + 16);

  v28 = *(*(a1 + 24) + 16);
  v29 = v32;
  *v32 = v26;
  v29[1] = v28;
  return result;
}

void sub_221A25B08()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_32_5();
  v4 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[3];
  v45 = v0[2];
  v46 = v11;
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v14 = sub_221BCCD88();
  __swift_project_value_buffer(v14, qword_27CFDEE58);
  (*(v6 + 16))(v10, v3, v4);

  v15 = sub_221BCCD68();
  v16 = sub_221BCDA58();

  if (os_log_type_enabled(v15, v16))
  {
    v43 = v0;
    v44 = v3;
    OUTLINED_FUNCTION_20_6();
    v17 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_6();
    v42 = swift_slowAlloc();
    v48 = v42;
    *v17 = 136315394;
    OUTLINED_FUNCTION_2_24();
    sub_221A2A71C(v18, v19);
    sub_221BCE168();
    v21 = v20;
    (*(v6 + 8))(v10, v4);
    v22 = OUTLINED_FUNCTION_46_3();
    v24 = sub_2219A6360(v22, v21, v23);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_221BCF7F0;
      v27 = v45;
      v26 = v46;
      *(v25 + 32) = v46;
      *(v25 + 40) = v12;
      *(v25 + 48) = v27;
      *(v25 + 56) = v13;
      v47 = v25;
      OUTLINED_FUNCTION_30_4();
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_17_8();
      sub_221BCD328();
      v29 = v28;
    }

    else
    {

      v27 = v45;
      v26 = v46;
      v29 = v12;
    }

    v31 = OUTLINED_FUNCTION_46_3();
    v33 = sub_2219A6360(v31, v29, v32);

    *(v17 + 14) = v33;
    OUTLINED_FUNCTION_52_4(&dword_221989000, v34, v35, "Removing observer with %s for %s");
    OUTLINED_FUNCTION_56_4();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();

    v1 = v43;
    v3 = v44;
  }

  else
  {

    v30 = (*(v6 + 8))(v10, v4);
    v27 = v45;
    v26 = v46;
  }

  v36 = v1[2];
  MEMORY[0x28223BE20](v30);
  *(&v41 - 6) = v1;
  *(&v41 - 5) = v26;
  *(&v41 - 4) = v12;
  *(&v41 - 3) = v27;
  *(&v41 - 2) = v13;
  *(&v41 - 1) = v3;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36_5();
  *(v38 - 16) = sub_221A2A6D4;
  *(v38 - 8) = v39;
  os_unfair_lock_lock(v36 + 4);
  sub_221A2A700(&v48, v40);
  os_unfair_lock_unlock(v36 + 4);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A25E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v25 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  swift_beginAccess();
  v16 = *(a1 + 24);

  sub_221B9C500(a2, a3, a4, a5, v16);
  v18 = v17;

  if (v18)
  {
    v27 = v18;
    sub_221A297B4(a6, v15);
    sub_2219A1CC8(v15, &qword_27CFB82B0, &unk_221BD2990);
    v20 = v27;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a1 + 24);
    sub_221B9FC60(v20, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    *(a1 + 24) = v26;
    swift_endAccess();
    swift_beginAccess();
    sub_2219A06F4();
    swift_endAccess();

    v18 = *(v20 + 16);
  }

  v22 = *(*(a1 + 24) + 16);
  v23 = v25;
  *v25 = v18;
  v23[1] = v22;
  return result;
}

void sub_221A26074()
{
  OUTLINED_FUNCTION_21();
  v52 = v0;
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_32_5();
  v5 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v11 = v10 - v9;
  v12 = v0[1];
  v50 = *v0;
  v13 = v0[3];
  v53 = v0[2];
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  v14 = sub_221BCCD88();
  __swift_project_value_buffer(v14, qword_27CFDEE58);
  v15 = *(v7 + 16);
  v51 = v4;
  v15(v11, v4, v5);

  v16 = sub_221BCCD68();
  v17 = sub_221BCDA58();

  if (os_log_type_enabled(v16, v17))
  {
    v49 = v2;
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    OUTLINED_FUNCTION_11_7();
    v48 = swift_slowAlloc();
    v55 = v48;
    *v2 = 136315394;
    OUTLINED_FUNCTION_2_24();
    sub_221A2A71C(v18, v19);
    sub_221BCE168();
    v21 = v20;
    (*(v7 + 8))(v11, v5);
    v22 = OUTLINED_FUNCTION_46_3();
    v24 = sub_2219A6360(v22, v21, v23);

    *(v2 + 4) = v24;
    *(v2 + 12) = 2080;
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      OUTLINED_FUNCTION_49();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_221BCF7F0;
      v26 = v50;
      *(v25 + 32) = v50;
      *(v25 + 40) = v12;
      *(v25 + 48) = v53;
      *(v25 + 56) = v13;
      v54 = v25;
      OUTLINED_FUNCTION_31_5();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      OUTLINED_FUNCTION_17_8();
      sub_221BCD328();
      v28 = v27;
    }

    else
    {

      v26 = v50;
      v28 = v12;
    }

    v30 = OUTLINED_FUNCTION_46_3();
    v32 = sub_2219A6360(v30, v28, v31);

    *(v2 + 14) = v32;
    OUTLINED_FUNCTION_37_1();
    _os_log_impl(v33, v34, v35, v36, v37, v38);
    OUTLINED_FUNCTION_56_4();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v39 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v39);

    v2 = v49;
  }

  else
  {

    v29 = (*(v7 + 8))(v11, v5);
    v26 = v50;
  }

  v40 = v52[2];
  MEMORY[0x28223BE20](v29);
  v41 = v51;
  *(&v47 - 8) = v42;
  *(&v47 - 7) = v41;
  *(&v47 - 6) = v26;
  *(&v47 - 5) = v12;
  *(&v47 - 4) = v53;
  *(&v47 - 3) = v13;
  *(&v47 - 2) = v2;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_36_5();
  *(v44 - 16) = sub_221A2961C;
  *(v44 - 8) = v45;
  os_unfair_lock_lock(v40 + 4);
  sub_221A2A6B8(&v55, v46);
  os_unfair_lock_unlock(v40 + 4);
  OUTLINED_FUNCTION_22();
}

void sub_221A2642C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a8@<X8>)
{
  v46 = a8;
  v44 = a4;
  v45 = a6;
  v43 = a5;
  v11 = sub_221BCC558();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(a1 + 32);

  v16 = sub_221B9C54C(a2, v15);

  if (v16)
  {

    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v48 = *(a1 + 32);
    sub_221B9FB24();
    *(a1 + 32) = v48;
    swift_endAccess();
    v17 = 1;
  }

  else
  {
    v18 = v14;
    v42 = a3;
    v19 = v44;
    v20 = v45;
    if (qword_27CFB73B0 != -1)
    {
      swift_once();
    }

    v21 = sub_221BCCD88();
    __swift_project_value_buffer(v21, qword_27CFDEE58);
    v22 = v12;
    v23 = v11;
    (*(v12 + 16))(v18, a2, v11);

    v24 = v19;

    v25 = sub_221BCCD68();
    v26 = sub_221BCDA78();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47[0] = v41;
      *v27 = 136315394;
      sub_221A2A71C(&qword_27CFB7A60, MEMORY[0x277CC9628]);
      v28 = sub_221BCE168();
      v29 = v22;
      v31 = v30;
      (*(v29 + 8))(v18, v23);
      v32 = sub_2219A6360(v28, v31, v47);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      if (v20)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_221BCF7F0;
        v34 = v43;
        *(v33 + 32) = v42;
        *(v33 + 40) = v24;
        *(v33 + 48) = v34;
        *(v33 + 56) = v20;
        v48 = v33;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
        sub_2219998AC();
        v35 = sub_221BCD328();
        v37 = v36;

        v24 = v37;
      }

      else
      {

        v35 = v42;
      }

      v38 = sub_2219A6360(v35, v24, v47);

      *(v27 + 14) = v38;
      _os_log_impl(&dword_221989000, v25, v26, "No observer %s for %s", v27, 0x16u);
      v39 = v41;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v39, -1, -1);
      MEMORY[0x223DA4C00](v27, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v23);
    }

    v17 = 0;
  }

  *v46 = v17;
}

void sub_221A26880()
{
  OUTLINED_FUNCTION_21();
  v66 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = (&v54 - v7);
  v8 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(0);
  v9 = OUTLINED_FUNCTION_18_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v64 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v17 = *v2;
  v18 = v2[1];
  v19 = v2[2];
  v20 = v2[3];
  v75[0] = *v2;
  v75[1] = v18;
  v65 = v19;
  v75[2] = v19;
  v75[3] = v20;
  v21 = sub_221A24864();
  if (v21)
  {
    v63 = v20;
    v22 = *(v21 + 16);
    if (v22)
    {
      v62 = v18;
      v59 = *(v11 + 80);
      v23 = (v59 + 32) & ~v59;
      v54 = v21;
      v24 = v21 + v23;
      v57 = *(v11 + 72);
      v58 = v23;
      v56 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v56 + 39) & 0xFFFFFFFFFFFFFFF8;
      v60 = v16;
      v61 = v17;
      v25 = v55;
      do
      {
        v67 = v24;
        v68 = v22;
        sub_221A2AADC(v24, v16);
        v26 = sub_221BCD7F8();
        v27 = v5;
        v28 = v69;
        __swift_storeEnumTagSinglePayload(v69, 1, 1, v26);
        v29 = v64;
        sub_221A2AADC(v16, v64);
        v30 = swift_allocObject();
        *(v30 + 16) = 0;
        *(v30 + 24) = 0;
        sub_221A2AB88(v29, v30 + v58);
        v31 = (v30 + v56);
        v32 = v62;
        *v31 = v17;
        v31[1] = v32;
        v33 = v66;
        v34 = v63;
        v31[2] = v65;
        v31[3] = v34;
        *(v30 + v25) = v33;
        v35 = v28;
        v5 = v27;
        sub_2219BAF0C(v35, v27, &unk_27CFB82F0, &qword_221BD2C40);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v26);

        if (EnumTagSinglePayload == 1)
        {
          sub_2219A1CC8(v27, &unk_27CFB82F0, &qword_221BD2C40);
        }

        else
        {
          sub_221BCD7E8();
          (*(*(v26 - 8) + 8))(v27, v26);
        }

        v37 = *(v30 + 16);
        swift_unknownObjectRetain();

        v17 = v61;
        if (v37)
        {
          swift_getObjectType();
          v38 = sub_221BCD778();
          v40 = v39;
          swift_unknownObjectRelease();
        }

        else
        {
          v38 = 0;
          v40 = 0;
        }

        sub_2219A1CC8(v69, &unk_27CFB82F0, &qword_221BD2C40);
        if (v40 | v38)
        {
          v70 = 0;
          v71 = 0;
          v72 = v38;
          v73 = v40;
        }

        swift_task_create();

        OUTLINED_FUNCTION_1_29();
        v16 = v60;
        sub_221A2AB34(v60);
        v24 = v67 + v57;
        v22 = v68 - 1;
      }

      while (v68 != 1);

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_22();
  }

  else
  {
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_32_4();
      swift_once();
    }

    v41 = sub_221BCCD88();
    __swift_project_value_buffer(v41, qword_27CFDEE58);

    v69 = sub_221BCCD68();
    v42 = sub_221BCDA78();

    if (os_log_type_enabled(v69, v42))
    {
      OUTLINED_FUNCTION_20_6();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_6();
      v75[0] = swift_slowAlloc();
      *v43 = 136315394;
      if (v20)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
        OUTLINED_FUNCTION_49();
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_221BCF7F0;
        *(v44 + 32) = v17;
        *(v44 + 40) = v18;
        *(v44 + 48) = v65;
        *(v44 + 56) = v20;
        v74 = v44;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
        sub_2219998AC();
        OUTLINED_FUNCTION_17_8();
        v17 = sub_221BCD328();
        v46 = v45;

        v18 = v46;
      }

      else
      {
      }

      v50 = sub_2219A6360(v17, v18, v75);

      *(v43 + 4) = v50;
      *(v43 + 12) = 2080;
      v51 = MEMORY[0x223DA33D0](v66, &type metadata for AppNotificationEvent);
      v53 = sub_2219A6360(v51, v52, v75);

      *(v43 + 14) = v53;
      _os_log_impl(&dword_221989000, v69, v42, "Topic %s no observers for %s", v43, 0x16u);
      OUTLINED_FUNCTION_39_5();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();

LABEL_27:
      OUTLINED_FUNCTION_22();
      return;
    }

    OUTLINED_FUNCTION_22();
  }
}

uint64_t sub_221A26F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a8;
  v8[35] = v13;
  v8[32] = a6;
  v8[33] = a7;
  v8[30] = a4;
  v8[31] = a5;
  v8[29] = a1;
  v9 = sub_221BCCD88();
  v8[36] = v9;
  v8[37] = *(v9 - 8);
  v8[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v10 = *(type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(0) - 8);
  v8[43] = v10;
  v8[44] = *(v10 + 64);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A270D0, 0, 0);
}

uint64_t sub_221A270D0()
{
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_32_4();
    swift_once();
  }

  *(v0 + 376) = __swift_project_value_buffer(*(v0 + 288), qword_27CFDEE58);
  if (qword_27CFB6CE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v22 = *(v0 + 360);
  v23 = *(v0 + 336);
  v26 = *(v0 + 280);
  v4 = *(v0 + 264);
  v20 = *(v0 + 256);
  v21 = *(v0 + 272);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v24 = *(v0 + 320);
  v25 = v5;
  memcpy((v0 + 16), &qword_27CFDD210, 0x59uLL);
  sub_221A2AADC(v5, v1);
  v7 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 384) = v9;
  sub_221A2AB88(v1, v9 + v7);
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v20;
  v10[2] = v4;
  v10[3] = v21;
  *(v9 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8)) = v26;
  sub_221A2AADC(v25, v22);
  v11 = swift_allocObject();
  *(v0 + 392) = v11;
  sub_221A2AB88(v22, v11 + v7);
  v12 = (v11 + v8);
  *v12 = v6;
  v12[1] = v20;
  v12[2] = v4;
  v12[3] = v21;
  v13 = sub_221BCCD08();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v13);
  v14 = sub_221BCCCD8();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v14);
  v15 = swift_task_alloc();
  *(v0 + 400) = v15;
  *(v15 + 16) = v25;
  *(v15 + 24) = v26;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221A2734C()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  (*(v0[37] + 16))(v0[38], v0[47], v0[36]);
  sub_2219BAF0C((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  sub_2219BAF0C(v1, v2, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219BAF0C(v4, v3, &qword_27CFB7F58, &unk_221BD27E0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AD8, &unk_221BD66A0);
  swift_allocObject();

  v6 = sub_2219CBEFC();
  v0[51] = v6;
  if (qword_27CFB7338 != -1)
  {
    swift_once();
  }

  v7 = v0[50];
  v0[27] = v5;
  v0[28] = &off_28351D968;
  v0[24] = v6;
  v8 = swift_task_alloc();
  v0[52] = v8;
  v8[2] = v6;
  v8[3] = &unk_221BD6690;
  v8[4] = v7;

  v9 = swift_task_alloc();
  v0[53] = v9;
  *v9 = v0;
  v9[1] = sub_221A27600;
  v10 = v0[29];

  return MEMORY[0x282200908](v10);
}

uint64_t sub_221A27600()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
    sub_2219A1CC8(v3 + 192, qword_27CFB7A80, &unk_221BD2800);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A27738()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v1, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8(v0 + 112, qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221A27868()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v1, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8(v0 + 112, qword_27CFB7A80, &unk_221BD2800);
  sub_2219A1CC8(v0 + 192, qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A2795C()
{
  OUTLINED_FUNCTION_14_3();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221A27A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEDA30);
  sub_221BCC558();
  sub_221A2A71C(&qword_27CFB7A60, MEMORY[0x277CC9628]);
  v11 = sub_221BCE168();
  MEMORY[0x223DA31F0](v11);

  MEMORY[0x223DA31F0](47, 0xE100000000000000);
  sub_221B93ED0(a2, a3, a4, a5);
  MEMORY[0x223DA31F0](8250, 0xE200000000000000);
  v12 = MEMORY[0x223DA33D0](a6, &type metadata for AppNotificationEvent);
  MEMORY[0x223DA31F0](v12);

  return 0;
}

uint64_t sub_221A27B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEDA30);
  sub_221BCC558();
  sub_221A2A71C(&qword_27CFB7A60, MEMORY[0x277CC9628]);
  v10 = sub_221BCE168();
  MEMORY[0x223DA31F0](v10);

  MEMORY[0x223DA31F0](47, 0xE100000000000000);
  sub_221B93ED0(a3, a4, a5, a6);
  MEMORY[0x223DA31F0](0x3A64656C69616620, 0xE900000000000020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  sub_221BCE018();
  return 0;
}

uint64_t sub_221A27CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_221A27CCC, 0, 0);
}

uint64_t sub_221A27CCC()
{
  OUTLINED_FUNCTION_14_3();
  sub_221BCCFE8();
  v5 = *(v0 + 32);
  *(v0 + 48) = sub_221BCCFA8();
  v1 = sub_221B62F00();
  *(v0 + 56) = v1;
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = v5;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_221A27E10;

  return MEMORY[0x282200908](v3);
}

uint64_t sub_221A27E10()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A27F68()
{
  OUTLINED_FUNCTION_1_5();
  sub_221A28FF0();
  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221A27FC4()
{
  OUTLINED_FUNCTION_1_5();
  sub_221A28FF0();
  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221A28020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_221A28040, 0, 0);
}

uint64_t sub_221A28040()
{
  OUTLINED_FUNCTION_1_5();
  type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(0);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_221A280E4;
  v2 = *(v0 + 24);

  return sub_221B72E68(v2);
}

uint64_t sub_221A280E4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

void sub_221A281C4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_221A2A7DC(v34, v2);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v34[0];
  v4 = v34[0] + 64;
  v5 = 1 << *(v34[0] + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v34[0] + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v28 = v3;
  while (v7)
  {
LABEL_9:
    v11 = (*(v3 + 48) + 32 * (__clz(__rbit64(v7)) | (v9 << 6)));
    v12 = v11[1];
    v33 = *v11;
    v13 = v11[3];
    v32 = v11[2];
    v14 = qword_27CFB73B0;

    if (v14 != -1)
    {
      OUTLINED_FUNCTION_32_4();
      swift_once();
    }

    v7 &= v7 - 1;
    v15 = sub_221BCCD88();
    __swift_project_value_buffer(v15, qword_27CFDEE58);
    OUTLINED_FUNCTION_144();

    v16 = sub_221BCCD68();
    v17 = sub_221BCDA58();

    if (os_log_type_enabled(v16, v17))
    {
      v30 = v17;
      log = v16;
      OUTLINED_FUNCTION_20_6();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_6();
      v29 = v18;
      v34[0] = swift_slowAlloc();
      *v18 = 136315394;
      if (v13)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
        OUTLINED_FUNCTION_49();
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_221BCF7F0;
        *(v19 + 32) = v33;
        *(v19 + 40) = v12;
        *(v19 + 48) = v32;
        *(v19 + 56) = v13;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
        sub_2219998AC();
        OUTLINED_FUNCTION_17_8();
        v20 = sub_221BCD328();
        v22 = v21;
      }

      else
      {

        v22 = v12;
        v20 = v33;
      }

      v23 = sub_2219A6360(v20, v22, v34);

      *(v29 + 1) = v23;
      *(v29 + 6) = 2080;
      sub_221BCC558();
      OUTLINED_FUNCTION_16_9();
      sub_221A2A71C(&qword_27CFB9420, v24);
      v25 = sub_221BCD988();
      v27 = sub_2219A6360(v25, v26, v34);

      *(v29 + 14) = v27;
      _os_log_impl(&dword_221989000, log, v30, "%s: %s)", v29, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();

      v3 = v28;
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_221A285A0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 24);

  return result;
}

uint64_t AppNotificationEventRegistry.AppNotificationEventListener.deinit()
{

  return v0;
}

uint64_t AppNotificationEventRegistry.AppNotificationEventListener.__deallocating_deinit()
{
  AppNotificationEventRegistry.AppNotificationEventListener.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void *sub_221A28668()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B10, &qword_221BE8E90);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x277D84F98];
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v2;
  type metadata accessor for AsyncSerialExecutor(0);
  swift_allocObject();
  v0[5] = sub_221BA2984();
  return v0;
}

uint64_t AppNotificationEventRegistry.__deallocating_deinit()
{

  OUTLINED_FUNCTION_10();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_221A28734(uint64_t a1, uint64_t a2)
{
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }

  OUTLINED_FUNCTION_54_4();
  sub_221A23908(v4, a2);
}

uint64_t sub_221A287DC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    v14 = v13;
    swift_once();
    v5 = v14;
  }

  v16 = v5;

  sub_221A23E70(&v15, a2, v6, v7, v8, v9, v10, v11, v14, *(&v14 + 1), v3, v4, v16, *(&v16 + 1), v17, v18, v19, v20, v21, v22);
}

uint64_t sub_221A28890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }

  OUTLINED_FUNCTION_54_4();
  sub_221A23A60(v6, a2, a3);
}

uint64_t static AppNotificationEventRegistry.dumpState()()
{
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }

  sub_221A281C4();
}

uint64_t AppNotificationEventRegistry.send(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_27_0();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_221A289D0()
{
  OUTLINED_FUNCTION_8_0();
  if (qword_27CFB6CD8 != -1)
  {
    OUTLINED_FUNCTION_3_16();
    swift_once();
  }

  v0[3] = *(off_27CFB8A68 + 2);
  _s20LinkServicesListenerCMa();
  if (swift_dynamicCastClass())
  {

    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_221A28B40;
    v4 = v0[2];

    return sub_221A2B000(v4);
  }

  else
  {
    sub_2219ACB94(0, v1, v2);
    swift_allocError();
    *v6 = 0xD000000000000012;
    *(v6 + 8) = 0x8000000221BED8C0;
    *(v6 + 16) = 6;
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v7();
  }
}

uint64_t sub_221A28B40()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A28C3C()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221A28C98()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221A28D80(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_221A291CC();
  v4 = sub_221BCD668();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_221A28E58;

  return AppNotificationEventRegistry.send(_:)(v4);
}

uint64_t sub_221A28E58()
{
  OUTLINED_FUNCTION_14_3();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_221BCC328();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_221A28FF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 1684632949;
  *(inited + 40) = 0xE400000000000000;
  v1 = MEMORY[0x223DA2240]();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  sub_221BCD2C8();
  sub_221B62F44();
}

uint64_t sub_221A29120()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_3(v4);
  *v5 = v6;
  v5[1] = sub_2219CA70C;

  return sub_221A28D80(v1, v2, v3);
}

unint64_t sub_221A291CC()
{
  result = qword_27CFB8AD0;
  if (!qword_27CFB8AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFB8AD0);
  }

  return result;
}

uint64_t type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(uint64_t a1)
{
  result = qword_27CFB8B18;
  if (!qword_27CFB8B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221A2925C(uint64_t a1)
{
  v3 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(0);
  OUTLINED_FUNCTION_18_4(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_2219CA70C;

  return sub_221A26F08(a1, v7, v8, v1 + v5, v10, v11, v12, v13);
}

uint64_t sub_221A293B0()
{
  v1 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(0);
  OUTLINED_FUNCTION_18_4(v1);
  OUTLINED_FUNCTION_48_5();
  v3 &= 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 39) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = *(v0 + v4);

  return sub_221A27A04(v0 + v2, v6, v7, v8, v9, v10);
}

uint64_t sub_221A29444(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_40_3();
  v4 = type metadata accessor for AppNotificationEventRegistry.AppNotificationEventListener.TopicObserver(v3);
  OUTLINED_FUNCTION_18_4(v4);
  OUTLINED_FUNCTION_48_5();
  v7 = (v2 + (v6 & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  return sub_221A27B44(v1, v2 + v5, v8, v9, v10, v11);
}

uint64_t sub_221A294D8()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7_3(v7);
  *v8 = v9;
  v8[1] = sub_2219EC5F0;

  return sub_221A27CA8(v4, v2, v6, v5);
}

uint64_t sub_221A29584()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_7_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_45_4(v3);

  return sub_221A28020(v5, v6, v1);
}

uint64_t sub_221A29644(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    _s14descr283510D89C29PerformActionExecutorDelegateCMa(0);
    v9 = sub_221BCDC48();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = sub_221BCDC58();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v2;
        v17 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_221BBD3E8();
          v15 = v17;
        }

        v8 = *(*(v15 + 48) + 8 * v11);
        sub_221A29E4C(v11);
        *v2 = v17;
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_221BCDDE8();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_221A29D08(v5, v6);

  return v8;
}

uint64_t sub_221A297B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_221BCC558();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v8 = *v2;
  sub_221A2A71C(&qword_27CFB9420, MEMORY[0x277CC9600]);
  v26 = a1;
  v9 = sub_221BCD308();
  v25 = v8;
  v10 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v11 = v9 & v10;
    if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
    {
      v14 = 1;
      v15 = v24;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
    }

    v12 = *(v5 + 72) * v11;
    (*(v5 + 16))(v7, *(v25 + 48) + v12, v4);
    sub_221A2A71C(&qword_27CFB8AE0, MEMORY[0x277CC9610]);
    v13 = sub_221BCD338();
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v16;
  v27 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_221BBD50C(v18);
    v19 = v27;
  }

  v20 = *(v19 + 48) + v12;
  v15 = v24;
  (*(v5 + 32))(v24, v20, v4);
  sub_221A29FE0(v11);
  v14 = 0;
  *v16 = v27;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v4);
}

void sub_221A29A00()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v38 = v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B08, &unk_221BD6720);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v37 = _s17LNConnectionStoreC9AssertionOMa(0);
  OUTLINED_FUNCTION_0_2();
  v40 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v36 = v0;
  v14 = *v0;
  sub_221BCE308();
  OUTLINED_FUNCTION_15_7();
  v42 = v2;
  sub_221A2AADC(v2, v13);
  MEMORY[0x223DA4060](0);
  v15 = sub_221BCC558();
  OUTLINED_FUNCTION_16_9();
  sub_221A2A71C(v16, v17);
  sub_221BCD318();
  v18 = *(*(v15 - 8) + 8);
  v18(v13, v15);
  v19 = sub_221BCE358();
  v39 = v14;
  v43 = ~(-1 << *(v14 + 32));
  v44 = v14 + 56;
  while (1)
  {
    v20 = v19 & v43;
    if (((*(v44 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      v24 = 1;
      v25 = v38;
      goto LABEL_9;
    }

    v21 = *(v40 + 72) * v20;
    sub_221A2AADC(*(v39 + 48) + v21, v10);
    v22 = *(v41 + 48);
    sub_221A2AADC(v10, v6);
    sub_221A2AADC(v42, &v6[v22]);
    v23 = sub_221BCC518();
    sub_221A2AB34(v10);
    v18(&v6[v22], v15);
    v18(v6, v15);
    if (v23)
    {
      break;
    }

    v19 = v20 + 1;
  }

  v26 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_221BBD534(isUniquelyReferenced_nonNull_native, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  }

  OUTLINED_FUNCTION_15_7();
  v25 = v38;
  sub_221A2AB88(v35 + v21, v38);
  sub_221A2A2D8(v20);
  v24 = 0;
  *v26 = v45;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v25, v24, 1, v37);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A29D08(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_221BCDDA8();
  v5 = swift_unknownObjectRetain();
  v6 = sub_221BBB010(v5, v4);
  v14 = v6;

  v7 = sub_221BCDC48();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    _s14descr283510D89C29PerformActionExecutorDelegateCMa(0);
    v10 = *(*(v6 + 48) + 8 * v9);
    v11 = sub_221BCDC58();

    if (v11)
    {

      v12 = *(*(v6 + 48) + 8 * v9);
      sub_221A29E4C(v9);
      if (sub_221BCDC58())
      {
        *v3 = v14;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_221A29E4C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_221BCDD38();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_221BCDC48();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_221A29FE0(int64_t a1)
{
  v3 = sub_221BCC558();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_221BCDD38();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v36 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v35 = v14;
      v15 = *(v13 + 56);
      v37 = v13;
      v38 = v15;
      v16 = v11;
      v17 = (v13 - 8);
      v18 = v7;
      while (1)
      {
        v19 = v8;
        v20 = v38 * v10;
        v21 = v16;
        v35(v6, *(v18 + 48) + v38 * v10, v3);
        v22 = v18;
        sub_221A2A71C(&qword_27CFB9420, MEMORY[0x277CC9600]);
        v23 = sub_221BCD308();
        (*v17)(v6, v3);
        v16 = v21;
        v24 = v23 & v21;
        if (a1 >= v36)
        {
          if (v24 < v36 || a1 < v24)
          {
LABEL_20:
            v18 = v22;
            goto LABEL_24;
          }
        }

        else if (v24 < v36 && a1 < v24)
        {
          goto LABEL_20;
        }

        v18 = v22;
        v26 = *(v22 + 48);
        v27 = v38 * a1;
        v28 = v26 + v38 * a1;
        v29 = v26 + v20 + v38;
        if (v38 * a1 < v20 || v28 >= v29)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v16 = v21;
          a1 = v10;
          goto LABEL_24;
        }

        a1 = v10;
        if (v27 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v16;
        v8 = v19;
        if (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v7;
LABEL_28:
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v7;
  }

  v32 = *(v18 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v34;
    ++*(v18 + 36);
  }
}

void sub_221A2A2D8(unint64_t a1)
{
  v34 = _s17LNConnectionStoreC9AssertionOMa(0);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v33 - v6;
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_221BCDD38();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = (v12 + 1) & v11;
      v39 = *(v3 + 72);
      v14 = v11;
      v35 = v7;
      v36 = v8;
      do
      {
        v15 = v39 * v10;
        v16 = v37;
        sub_221A2AADC(*(v7 + 48) + v39 * v10, v37);
        sub_221BCE308();
        v17 = a1;
        v18 = v38;
        sub_221A2AADC(v16, v38);
        v19 = v14;
        MEMORY[0x223DA4060](0);
        v20 = sub_221BCC558();
        sub_221A2A71C(&qword_27CFB9420, MEMORY[0x277CC9600]);
        sub_221BCD318();
        v21 = v18;
        a1 = v17;
        (*(*(v20 - 8) + 8))(v21, v20);
        v22 = sub_221BCE358();
        sub_221A2AB34(v16);
        v23 = v22 & v19;
        v14 = v19;
        if (v17 >= v13)
        {
          if (v23 < v13 || v17 < v23)
          {
LABEL_20:
            v7 = v35;
            v8 = v36;
            goto LABEL_24;
          }
        }

        else if (v23 < v13 && v17 < v23)
        {
          goto LABEL_20;
        }

        v7 = v35;
        v8 = v36;
        v25 = *(v35 + 48);
        v26 = v25 + v39 * v17;
        v27 = v25 + v15 + v39;
        if (v39 * v17 < v15 || v26 >= v27)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          a1 = v10;
          goto LABEL_24;
        }

        a1 = v10;
        if (v39 * v17 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v10 = (v10 + 1) & v14;
      }

      while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v7 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v32;
    ++*(v7 + 36);
  }
}

void *sub_221A2A630@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, void *(*a3)(uint64_t *__return_ptr)@<X1>)
{
  result = sub_221BA2BD8(a2, a3);
  if (!v3)
  {
    *a1 = result;
    a1[1] = v6;
  }

  return result;
}

void *sub_221A2A65C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, void *(*a3)(uint64_t *__return_ptr)@<X1>)
{
  result = sub_221BA2C18(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_221A2A688@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, void (*a3)(uint64_t *__return_ptr, uint64_t)@<X1>)
{
  result = sub_221BA2C50(a2, a3);
  if (!v3)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_221A2A71C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_221BCC558();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221A2A7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8AF8;
  if (!qword_27CFB8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8AF8);
  }

  return result;
}

uint64_t sub_221A2A84C()
{
  OUTLINED_FUNCTION_14_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_21_4(v1);
  OUTLINED_FUNCTION_51_2();

  return sub_221A244D4(v3, v4, v5, v6, v7);
}

uint64_t sub_221A2A8EC()
{
  OUTLINED_FUNCTION_1_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  v3 = OUTLINED_FUNCTION_47_2();

  return sub_221A247A8(v3);
}

uint64_t objectdestroy_44Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_221A2A9B8()
{
  OUTLINED_FUNCTION_14_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_21_4(v1);
  OUTLINED_FUNCTION_51_2();

  return sub_221A23658(v3, v4, v5, v6, v7);
}

uint64_t sub_221A2AA58()
{
  OUTLINED_FUNCTION_1_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_3(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  v3 = OUTLINED_FUNCTION_47_2();

  return sub_221A23638(v3);
}

uint64_t sub_221A2AADC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_32_5();
  v4(v3);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return a2;
}

uint64_t sub_221A2AB34(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_40_3();
  v3(v2);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t sub_221A2AB88(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_32_5();
  v4(v3);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_0_0();
  v6(v5);
  return a2;
}

uint64_t sub_221A2AC24(uint64_t a1)
{
  result = sub_221BCC558();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RemoteAppNotificationSink(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 OUTLINED_FUNCTION_28_4()
{
  v1 = v0[5].n128_u64[1];
  v0[1].n128_u64[0] = v0[5].n128_u64[0];
  v0[1].n128_u64[1] = v1;
  result = v0[6];
  v0[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_43_4()
{

  return sub_2219A6360(v0, v1, (v2 - 112));
}

void OUTLINED_FUNCTION_52_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_54_4()
{
}

uint64_t OUTLINED_FUNCTION_56_4()
{

  return swift_arrayDestroy();
}

void sub_221A2AF9C()
{
  qword_27CFDD210 = 0;
  *algn_27CFDD218 = 0;
  byte_27CFDD220 = 1;
  qword_27CFDD228 = "sendEvents";
  unk_27CFDD230 = 10;
  byte_27CFDD238 = 2;
  qword_27CFDD240 = 1;
  byte_27CFDD248 = 0;
  qword_27CFDD250 = 17;
  byte_27CFDD258 = 0;
  qword_27CFDD260 = 0;
  byte_27CFDD268 = 1;
}

uint64_t sub_221A2B000(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6_1();
}

void sub_221A2B014()
{
  v74 = v0;
  v1 = sub_2219A69A0();
  if (v1)
  {
    v2 = v1;
    if (v1 < 1)
    {
LABEL_44:
      __break(1u);
      return;
    }

    v3 = 0;
    v4 = *(v57 + 16);
    v59 = v4 & 0xC000000000000001;
    v53 = v4 + 32;
    v5 = MEMORY[0x277D84F98];
    v55 = v1;
    do
    {
      if (v59)
      {
        v6 = MEMORY[0x223DA3BF0](v3, *(v57 + 16));
      }

      else
      {
        v6 = *(v53 + 8 * v3);
      }

      v7 = v6;
      v8 = sub_221A1B38C(v6, &v70);
      if (v71)
      {
        v66 = v70;
        v9 = v73;
        v65 = v72;
        v10 = [v7 bundleIdentifier];
        v11 = sub_221BCD388();
        v13 = v12;

        v14 = [v7 entityType];
        v15 = sub_221BCD388();
        v17 = v16;

        v61 = v11;
        if (*(v5 + 16) && (v18 = sub_221B9EADC(v11, v13, v15, v17), (v19 & 1) != 0))
        {
          v20 = *(*(v5 + 56) + 8 * v18);
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v68 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2219B40A4(0, *(v20 + 16) + 1, 1, v20);
          v20 = v35;
        }

        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_2219B40A4(v21 > 1, v22 + 1, 1, v20);
          v20 = v36;
        }

        *(v20 + 16) = v22 + 1;
        OUTLINED_FUNCTION_4_14(v20 + 32 * v22, v51, v53, v55, v57, v59, v61, v63, v65, v66, v68);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v5;
        sub_221B9FC74(v20, v62, v13, v15, v17, isUniquelyReferenced_nonNull_native);

        v24 = v70;
        v25 = [v7 bundleIdentifier];
        v26 = sub_221BCD388();
        v28 = v27;

        if (*(v24 + 16))
        {
          v29 = sub_221B9EADC(v26, v28, 0, 0);
          v2 = v56;
          if (v30)
          {
            v31 = *(*(v24 + 56) + 8 * v29);
          }

          else
          {
            v31 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v31 = MEMORY[0x277D84F90];
          v2 = v56;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2219B40A4(0, *(v31 + 16) + 1, 1, v31);
          v31 = v37;
        }

        v33 = *(v31 + 16);
        v32 = *(v31 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_2219B40A4(v32 > 1, v33 + 1, 1, v31);
          v31 = v38;
        }

        *(v31 + 16) = v33 + 1;
        OUTLINED_FUNCTION_4_14(v31 + 32 * v33, v52, v54, v56, v58, v60, v62, *v64, v64[4], v67, v69);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v70 = v24;
        sub_221B9FC74(v31, v26, v28, 0, 0, v34);

        v5 = v70;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v39 = -1;
  v40 = -1 << *(v5 + 32);
  if (-v40 < 64)
  {
    v39 = ~(-1 << -v40);
  }

  v41 = v39 & *(v5 + 64);
  v42 = (63 - v40) >> 6;

  v43 = 0;
  if (v41)
  {
    while (1)
    {
      v44 = v43;
LABEL_38:
      v45 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v46 = (*(v5 + 48) + 32 * (v45 | (v44 << 6)));
      v47 = v46[1];
      v48 = v46[2];
      v49 = v46[3];
      v70 = *v46;
      v71 = v47;
      v72 = v48;
      v73 = v49;

      sub_221A26880();

      if (!v41)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
LABEL_34:
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v44 >= v42)
    {
      break;
    }

    v41 = *(v5 + 64 + 8 * v44);
    ++v43;
    if (v41)
    {
      v43 = v44;
      goto LABEL_38;
    }
  }

  OUTLINED_FUNCTION_25();

  v50();
}

uint64_t sub_221A2B550(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_221A291CC();
  v4 = sub_221BCD668();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_221A2B628;

  return sub_221A2B000(v4);
}

uint64_t sub_221A2B628()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_221BCC328();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_221A2B7C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 144) = *a1;
  *(v1 + 152) = v2;
  *(v1 + 160) = *(a1 + 16);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221A2B7E8()
{
  v17 = v0;
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_3_17(&qword_27CFB73B0);
  }

  v1 = sub_221BCCD88();
  __swift_project_value_buffer(v1, qword_27CFDEE58);

  v2 = sub_221BCCD68();
  v3 = sub_221BCDA98();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_10_7();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;

    v6 = OUTLINED_FUNCTION_9_11();
    v8 = sub_2219A6360(v6, v7, &v16);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_49_1(&dword_221989000, v9, v10, "First observer added - listening for topic: %s");
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  v11 = v0[21];
  v0[23] = OUTLINED_FUNCTION_12_6([objc_allocWithZone(MEMORY[0x277D23B20]) init]);
  if (v11)
  {
    v12 = sub_221BCD358();
  }

  else
  {
    v12 = 0;
  }

  v0[24] = v12;
  v0[2] = v0;
  v0[3] = sub_221A2BA30;
  swift_continuation_init();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80B8, &qword_221BD29A0);
  OUTLINED_FUNCTION_2_25(v13);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_30();
  OUTLINED_FUNCTION_11_8(v14, sel_registerForAppNotificationEventsOfBundleIdentifier_entityType_completion_);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221A2BA30()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_221A2BBA0;
  }

  else
  {
    v5 = sub_221A2BB38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221A2BB38()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221A2BBA0(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[22];
  v3 = v1[23];
  swift_willThrow();

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_221A2BC20(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 144) = *a1;
  *(v1 + 152) = v2;
  *(v1 + 160) = *(a1 + 16);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221A2BC40()
{
  v17 = v0;
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_3_17(&qword_27CFB73B0);
  }

  v1 = sub_221BCCD88();
  __swift_project_value_buffer(v1, qword_27CFDEE58);

  v2 = sub_221BCCD68();
  v3 = sub_221BCDA98();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_10_7();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;

    v6 = OUTLINED_FUNCTION_9_11();
    v8 = sub_2219A6360(v6, v7, &v16);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_49_1(&dword_221989000, v9, v10, "Last observer removed - stop listening for topic: %s");
    __swift_destroy_boxed_opaque_existential_0(v5);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  v11 = v0[21];
  v0[23] = OUTLINED_FUNCTION_12_6([objc_allocWithZone(MEMORY[0x277D23B20]) init]);
  if (v11)
  {
    v12 = sub_221BCD358();
  }

  else
  {
    v12 = 0;
  }

  v0[24] = v12;
  v0[2] = v0;
  v0[3] = sub_221A2BE88;
  swift_continuation_init();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80B8, &qword_221BD29A0);
  OUTLINED_FUNCTION_2_25(v13);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_1_30();
  OUTLINED_FUNCTION_11_8(v14, sel_unregisterForAppNotificationEventsOfBundleIdentifier_entityType_completion_);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221A2BE88()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_221A2C1A4;
  }

  else
  {
    v5 = sub_221A2C1A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221A2BF90()
{
  v0 = AppNotificationEventRegistry.AppNotificationEventListener.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_221A2BFFC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_221A2C0B0;

  return sub_221A2B550(v2, v3, v4);
}

uint64_t sub_221A2C0B0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

void OUTLINED_FUNCTION_1_30()
{
  v1[12] = sub_2219C5280;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_2_25(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_14(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 32) = a10;
  *(a1 + 40) = v11;
  *(a1 + 48) = a9;
  *(a1 + 56) = a11;
}

uint64_t OUTLINED_FUNCTION_9_11()
{

  return sub_221998A0C(v3, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_10_7()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_11_8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1)
{
  *(v1 + 176) = a1;

  return sub_221BCD358();
}

uint64_t sub_221A2C29C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  result = sub_221BCD7A8();
  if (v2 <= 0x3F)
  {
    result = sub_221BCC558();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_221A2C3C4@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  *a2 = sub_221A2C4B8(a1);
  *(a2 + 1) = v5;
  *(a2 + 2) = sub_221A2C52C(a1);
  *(a2 + 3) = v6;
  OUTLINED_FUNCTION_1_6();
  v8 = *(v7 + 120);
  v11 = _s12AnyActorCallVMa(0, *(v4 + 80), v9, v10);
  v12 = v11[8];
  v13 = sub_221BCC558();
  (*(*(v13 - 8) + 16))(&a2[v12], &a1[v8], v13);
  v14 = sub_221A2C748(a1);
  v15 = &a2[v11[9]];
  *v15 = v14;
  *(v15 + 1) = v16;
  v17 = sub_221A2CAC0(a1);
  v19 = v18;

  v21 = &a2[v11[10]];
  *v21 = v17;
  *(v21 + 1) = v19;
  return result;
}

uint64_t sub_221A2C56C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  OUTLINED_FUNCTION_0_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  (*(v6 + 16))(v9, a1, v4);
  v14 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v4;
  *(v15 + 5) = *(v3 + 88);
  *(v15 + 6) = v1;
  (*(v6 + 32))(&v15[v14], v9, v4);

  sub_2219F7E3C();
}

uint64_t sub_221A2C788(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v32 = sub_221BCE398();
  OUTLINED_FUNCTION_0_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = (&v29 - v9);
  if (qword_27CFB7378 != -1)
  {
    OUTLINED_FUNCTION_0_32(&qword_27CFB7378);
  }

  v11 = sub_221BCCD88();
  OUTLINED_FUNCTION_39_6(v11, qword_27CFDEDC8);
  v12 = sub_221BCCD68();
  v13 = sub_221BCDA68();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = a1;
    v15 = v14;
    v16 = OUTLINED_FUNCTION_105();
    v30 = v4;
    v33[0] = v16;
    *v15 = 136315394;
    OUTLINED_FUNCTION_5_14();
    *(v15 + 4) = sub_2219A6360(*(v1 + *(v17 + 112)), *(v1 + *(v17 + 112) + 8), v33);
    *(v15 + 12) = 2080;
    OUTLINED_FUNCTION_5_14();
    sub_221BCC558();
    sub_2219AC8D8();
    OUTLINED_FUNCTION_25_6();
    v18 = sub_221BCE168();
    v20 = v19;

    v21 = sub_2219A6360(v18, v20, v33);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_221989000, v12, v13, "[%s] <%s> fail invoked", v15, 0x16u);
    swift_arrayDestroy();
    v4 = v30;
    OUTLINED_FUNCTION_23();
    a1 = v31;
    OUTLINED_FUNCTION_23();
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_14();
  v23 = (v2 + *(v22 + 128));
  os_unfair_lock_lock(v23);
  v24 = *(v4 + 80);
  sub_221A2EB6C(&v23[2]);
  _s9ActorCallC10InvocationVMa(0, v24, v5, v25);
  j__os_unfair_lock_unlock(v23);
  *v10 = a1;
  v26 = v32;
  swift_storeEnumTagMultiPayload();
  v27 = a1;
  sub_221A2E4CC();
  return (*(v7 + 8))(v10, v26);
}

void sub_221A2CB00(void *a1)
{
  v3 = v1;
  if (*(v1 + *(*v1 + 144)))
  {
    v5 = qword_27CFB7378;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_0_32(&qword_27CFB7378);
    }

    v6 = sub_221BCCD88();
    __swift_project_value_buffer(v6, qword_27CFDEDC8);

    v7 = sub_221BCCD68();
    v8 = sub_221BCDA98();
    if (os_log_type_enabled(v7, v8))
    {
      swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_19_7();
      *v2 = 136315394;
      OUTLINED_FUNCTION_37_2();
      *(v2 + 4) = sub_2219A6360(*(v3 + *(v9 + 112)), *(v3 + *(v9 + 112) + 8), &v24);
      *(v2 + 12) = 2080;
      OUTLINED_FUNCTION_37_2();
      v11 = *(v10 + 120);
      v12 = sub_221BCC558();
      sub_2219AC8D8();
      v13 = v3 + v11;
      sub_221BCE168();
      OUTLINED_FUNCTION_40_4();

      sub_2219A6360(v13, v12, &v24);
      OUTLINED_FUNCTION_45_5();
      *(v2 + 14) = v13;
      _os_log_impl(&dword_221989000, v7, v8, "[%s] <%s> yielding progress", v2, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_21_3();
    }

    else
    {
    }

    v24 = a1;
    v23 = a1;
    sub_221BA6540();
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_0_32(&qword_27CFB7378);
    }

    v14 = sub_221BCCD88();
    __swift_project_value_buffer(v14, qword_27CFDEDC8);

    v15 = sub_221BCCD68();
    v16 = sub_221BCDA98();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_105();
      *v17 = 136315394;
      OUTLINED_FUNCTION_37_2();
      v19 = sub_2219A6360(*(v1 + *(v18 + 112)), *(v1 + *(v18 + 112) + 8), &v24);
      OUTLINED_FUNCTION_30_5(v19);
      OUTLINED_FUNCTION_37_2();
      sub_221BCC558();
      sub_2219AC8D8();
      v20 = sub_221BCE168();

      OUTLINED_FUNCTION_17_9(v21, v22);
      OUTLINED_FUNCTION_215();
      *(v17 + 14) = v20;
      _os_log_impl(&dword_221989000, v15, v16, "[%s] <%s> cannot yield progress", v17, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }

    sub_221A2C788(a1);
  }
}

void sub_221A2CEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);

    sub_221BCD878();
  }
}

uint64_t sub_221A2CF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  sub_221A2CFD0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v19;
}

uint64_t *sub_221A2CFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *v11;
  v16 = *(*v11 + 96);
  v17 = *(*v11 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v18 = sub_221BCD7A8();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11 + v16, a1, v18);
  OUTLINED_FUNCTION_1_6();
  v21 = (v11 + *(v20 + 104));
  *v21 = a8;
  v21[1] = a9;
  OUTLINED_FUNCTION_1_6();
  v23 = (v11 + *(v22 + 112));
  *v23 = a2;
  v23[1] = a3;
  OUTLINED_FUNCTION_1_6();
  v25 = *(v24 + 120);
  v26 = sub_221BCC558();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v11 + v25, a4, v26);
  v28 = *(v15 + 80);
  v46 = 1;
  v47 = 0;
  v48 = 0;
  LODWORD(v49) = 0;
  v50 = 0uLL;
  *(&v49 + 1) = 0;
  v30 = _s9ActorCallC10InvocationVMa(0, v28, v17, v29);

  sub_221BA47A4(&v46, &v49 + 8, v30);
  OUTLINED_FUNCTION_1_6();
  v32 = (v11 + *(v31 + 128));
  v33 = v50;
  *v32 = v49;
  v32[1] = v33;
  OUTLINED_FUNCTION_1_6();
  *(v11 + *(v34 + 144)) = a5;

  (*(v27 + 8))(a4, v26);
  (*(v19 + 8))(a1, v18);
  OUTLINED_FUNCTION_1_6();
  v36 = v11 + *(v35 + 152);
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = a6;
  *(v36 + 24) = a7;
  OUTLINED_FUNCTION_1_6();
  v38 = (v11 + *(v37 + 136));
  *v38 = a10;
  v38[1] = a11;
  return v11;
}

void sub_221A2D298()
{
  os_unfair_lock_lock(v0);
  if (*(v0 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD878();
  }

  *(v0 + 8) = 0;

  os_unfair_lock_unlock(v0);
}

uint64_t sub_221A2D320(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = *a4;
  return MEMORY[0x2822009F8](sub_221A2D36C, 0, 0);
}

uint64_t sub_221A2D36C()
{
  v1 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_5_14();
  v4 = (v1 + *(v3 + 128));
  os_unfair_lock_lock(v4);
  sub_221A2D464(&v4[2], v1, v2);
  _s9ActorCallC10InvocationVMa(0, *(v0[5] + 80), *(v0[5] + 88), v5);
  j__os_unfair_lock_unlock(v4);
  v6 = v0[1];

  return v6();
}

void sub_221A2D464(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v29 = a3;
  v5 = *a2;
  v6 = *(*a2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v27 - v11;
  if (*(a1 + 8))
  {
    if (qword_27CFB7378 != -1)
    {
      swift_once();
    }

    v13 = sub_221BCCD88();
    __swift_project_value_buffer(v13, qword_27CFDEDC8);

    v14 = sub_221BCCD68();
    v15 = sub_221BCDA78();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2219A6360(*(a2 + *(*a2 + 112)), *(a2 + *(*a2 + 112) + 8), &v30);
      *(v16 + 12) = 2080;
      sub_221BCC558();
      sub_2219AC8D8();
      v18 = sub_221BCE168();
      v20 = v19;

      v21 = sub_2219A6360(v18, v20, &v30);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_221989000, v14, v15, "[%s] USAGE ERROR: ActorCall executeOn called after completion for <%s>", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v17, -1, -1);
      MEMORY[0x223DA4C00](v16, -1, -1);
    }

    else
    {
    }
  }

  else if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v27 = *a1 + 1;
    v28 = v5;
    if (*(a1 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCD878();
    }

    v22 = sub_221BCD7F8();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v22);
    (*(v7 + 16))(v9, v29, v6);
    v23 = (*(v7 + 80) + 64) & ~*(v7 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    *(v24 + 4) = v6;
    v25 = v27;
    *(v24 + 5) = *(v28 + 88);
    *(v24 + 6) = a2;
    *(v24 + 7) = v25;
    (*(v7 + 32))(&v24[v23], v9, v6);

    sub_2219F8C64();
    *a1 = v25;
    *(a1 + 8) = 0;
    *(a1 + 16) = v26;
  }
}

uint64_t sub_221A2D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = *a4;
  v8 = sub_221BCD7B8();
  v6[6] = v8;
  v6[7] = *(v8 - 8);
  v6[8] = swift_task_alloc();
  v9 = *(v7 + 88);
  v6[9] = v9;
  v6[10] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v10 = sub_221BCE398();
  v6[11] = v10;
  v6[12] = *(v10 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();
  v11 = *(v7 + 80);
  v6[16] = v11;
  v6[17] = *(v11 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A2DACC, 0, 0);
}

uint64_t sub_221A2DACC()
{
  v37 = v0;
  *(v0 + 160) = *(**(v0 + 24) + 152);
  sub_221A2D298();
  if (qword_27CFB7378 != -1)
  {
    OUTLINED_FUNCTION_0_32(&qword_27CFB7378);
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 40);
  v5 = sub_221BCCD88();
  *(v0 + 168) = __swift_project_value_buffer(v5, qword_27CFDEDC8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);

  v7 = sub_221BCCD68();
  v8 = sub_221BCDA68();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 152);
  if (v9)
  {
    v33 = *(v0 + 144);
    v34 = *(v0 + 136);
    v11 = *(v0 + 128);
    v12 = *(v0 + 24);
    v32 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v13 = 136315906;
    v14 = sub_2219A6360(*(v12 + *(*v12 + 112)), *(v12 + *(*v12 + 112) + 8), &v36);
    OUTLINED_FUNCTION_30_5(v14);
    v31 = v8;
    sub_221BCC558();
    v15 = v6;
    sub_2219AC8D8();
    v16 = sub_221BCE168();
    v18 = v17;

    v19 = sub_2219A6360(v16, v18, &v36);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v32;
    *(v13 + 32) = 2080;
    v15(v33, v10, v11);
    v20 = sub_221BCD3D8();
    v22 = v21;
    (*(v34 + 8))(v10, v11);
    v23 = sub_2219A6360(v20, v22, &v36);

    *(v13 + 34) = v23;
    _os_log_impl(&dword_221989000, v7, v31, "[%s] <%s#%ld> executing closure on %s", v13, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  else
  {
    v24 = *(v0 + 128);
    v25 = *(v0 + 136);

    (*(v25 + 8))(v10, v24);
  }

  v26 = (*(v0 + 24) + *(**(v0 + 24) + 104));
  v35 = (*v26 + **v26);
  v27 = swift_task_alloc();
  *(v0 + 176) = v27;
  *v27 = v0;
  v27[1] = sub_221A2DE90;
  v28 = *(v0 + 120);
  v29 = *(v0 + 40);

  return v35(v28, v29);
}

uint64_t sub_221A2DE90()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;
  *(v4 + 184) = v0;

  if (v0)
  {
    v5 = sub_221A2E178;
  }

  else
  {
    v5 = sub_221A2DF94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221A2DF94()
{

  v2 = sub_221BCCD68();
  v3 = sub_221BCDA68();
  if (OUTLINED_FUNCTION_83_2(v3))
  {
    v4 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_10_8(4.8152e-34);
    v6 = OUTLINED_FUNCTION_35_5(*(v5 + 112), v23);
    OUTLINED_FUNCTION_1_31(v6);
    sub_221BCC558();
    v7 = sub_2219AC8D8();
    OUTLINED_FUNCTION_18_8(v7);
    v8 = OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_17_9(v8, v9);
    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_4_15();
    *(v4 + 24) = v1;
    OUTLINED_FUNCTION_3_18();
    _os_log_impl(v10, v11, v12, v13, v14, 0x20u);
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_20_1();
  }

  else
  {
  }

  v16 = v0[14];
  v15 = v0[15];
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[11];
  v20 = v0[9];
  (*(v16 + 16))(v17, v15, v20);
  swift_storeEnumTagMultiPayload();
  sub_221A2E4CC();
  (*(v18 + 8))(v17, v19);
  (*(v16 + 8))(v15, v20);
  OUTLINED_FUNCTION_43_5();

  OUTLINED_FUNCTION_4_3();

  return v21();
}

uint64_t sub_221A2E178()
{
  v3 = *(v0 + 184);
  *(v0 + 16) = v3;
  v4 = v3;
  v5 = swift_dynamicCast();
  v6 = *(v0 + 184);
  if (v5)
  {

    v7 = sub_221BCCD68();
    v8 = sub_221BCDA68();
    if (OUTLINED_FUNCTION_83_2(v8))
    {
      v9 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_10_8(4.8152e-34);
      v11 = OUTLINED_FUNCTION_33_3((v1 + *(v10 + 112)), v47, v49);
      OUTLINED_FUNCTION_1_31(v11);
      v12 = sub_221BCC558();
      v13 = sub_2219AC8D8();
      OUTLINED_FUNCTION_18_8(v13);
      OUTLINED_FUNCTION_24_6();
      v14 = OUTLINED_FUNCTION_23_7();
      sub_2219A6360(v14, v12, v15);
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_4_15();
      *(v9 + 24) = v2;
      OUTLINED_FUNCTION_3_18();
      _os_log_impl(v16, v17, v18, v19, v20, 0x20u);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {
    }

    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    v43 = *(v0 + 16);
  }

  else
  {

    v21 = v6;
    v22 = sub_221BCCD68();
    v23 = sub_221BCDA68();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_44_2();
      swift_slowAlloc();
      OUTLINED_FUNCTION_19_7();
      *v24 = 136315906;
      v25 = OUTLINED_FUNCTION_33_3((v2 + *(*v2 + 112)), v47, v49);
      OUTLINED_FUNCTION_31_6(v25);
      v26 = sub_221BCC558();
      sub_2219AC8D8();
      sub_221BCE168();
      OUTLINED_FUNCTION_40_4();

      v27 = OUTLINED_FUNCTION_23_7();
      sub_2219A6360(v27, v26, v28);
      OUTLINED_FUNCTION_45_5();
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_34_4(v29, v30, v31, v32, v33, v34, v35, v36, v48, v50);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 34) = v37;
      *v1 = v37;
      OUTLINED_FUNCTION_3_18();
      _os_log_impl(v38, v39, v40, v41, v42, 0x2Au);
      sub_221A01F0C(v1, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {
    }

    v44 = *(v0 + 184);
    sub_221A2E630(v44, *(v0 + 32), *(v0 + 24), *(v0 + 40));
    v43 = v44;
  }

  OUTLINED_FUNCTION_43_5();

  OUTLINED_FUNCTION_4_3();

  return v45();
}

void sub_221A2E4CC()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1 + v2[16];
  os_unfair_lock_lock(v3);
  v4 = v2[10];
  v5 = v2[11];
  sub_221A2EBAC(v3 + 1, &v10);
  _s9ActorCallC10InvocationVMa(0, v4, v5, v6);
  j__os_unfair_lock_unlock(v3);
  if (v10 == 1)
  {
    OUTLINED_FUNCTION_5_14();
    sub_221A2D298();
    OUTLINED_FUNCTION_5_14();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD7A8();
    v7 = OUTLINED_FUNCTION_25_6();
    sub_221A2EC10(v7, v8);
    OUTLINED_FUNCTION_5_14();
    (*(v1 + *(v9 + 136)))();
  }
}

void sub_221A2E630(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v10 = (*(v4 + 16))(a1);
  v11 = v9;
  if (v9 >> 62)
  {
    if (v9 >> 62 == 1)
    {
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_0_32(&qword_27CFB7378);
      }

      v12 = sub_221BCCD88();
      OUTLINED_FUNCTION_39_6(v12, qword_27CFDEDC8);
      v13 = sub_221BCCD68();
      v14 = sub_221BCDA68();
      if (os_log_type_enabled(v13, v14))
      {
        v51 = a4;
        v15 = swift_slowAlloc();
        v53 = OUTLINED_FUNCTION_105();
        *v15 = 136315650;
        OUTLINED_FUNCTION_5_14();
        *(v15 + 4) = OUTLINED_FUNCTION_33_3((a3 + *(v16 + 112)), v53, v51);
        *(v15 + 12) = 2080;
        OUTLINED_FUNCTION_5_14();
        sub_221BCC558();
        v17 = a2;
        v18 = v10;
        sub_2219AC8D8();
        OUTLINED_FUNCTION_25_6();
        sub_221BCE168();
        v20 = v19;

        v21 = OUTLINED_FUNCTION_23_7();
        v23 = sub_2219A6360(v21, v20, v22);
        v10 = v18;
        a2 = v17;

        *(v15 + 14) = v23;
        *(v15 + 22) = 2048;
        *(v15 + 24) = v17;
        _os_log_impl(&dword_221989000, v13, v14, "[%s] <%s#%ld> Error is transient, retrying when ready", v15, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_23();
        a4 = v52;
        OUTLINED_FUNCTION_23();
      }

      else
      {
      }

      os_unfair_lock_lock(v5);
      sub_221A2F104((v5 + 8), a3, v11 & 0x3FFFFFFFFFFFFFFFLL, a2, a4);
      os_unfair_lock_unlock(v5);
      sub_221A2CB00(v10);

      OUTLINED_FUNCTION_42_4();
    }

    else
    {
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_0_32(&qword_27CFB7378);
      }

      v33 = sub_221BCCD88();
      OUTLINED_FUNCTION_39_6(v33, qword_27CFDEDC8);
      v34 = sub_221BCCD68();
      v35 = sub_221BCDA68();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        OUTLINED_FUNCTION_105();
        *v36 = 136315650;
        OUTLINED_FUNCTION_5_14();
        v38 = OUTLINED_FUNCTION_33_3((a3 + *(v37 + 112)), v49, v50);
        OUTLINED_FUNCTION_30_5(v38);
        OUTLINED_FUNCTION_5_14();
        sub_221BCC558();
        sub_2219AC8D8();
        sub_221BCE168();
        v40 = v39;

        v41 = OUTLINED_FUNCTION_23_7();
        v43 = sub_2219A6360(v41, v40, v42);

        *(v36 + 14) = v43;
        *(v36 + 22) = 2048;
        *(v36 + 24) = a2;
        _os_log_impl(&dword_221989000, v34, v35, "[%s] <%s#%ld> Error is immediately retryable", v36, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_23();
      }

      else
      {
      }

      sub_221A2C56C(a4);
      OUTLINED_FUNCTION_42_4();
    }
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_0_32(&qword_27CFB7378);
    }

    v24 = sub_221BCCD88();
    OUTLINED_FUNCTION_39_6(v24, qword_27CFDEDC8);
    v25 = sub_221BCCD68();
    v26 = sub_221BCDA68();
    if (os_log_type_enabled(v25, v26))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_19_7();
      *v4 = 136315650;
      OUTLINED_FUNCTION_5_14();
      *(v4 + 4) = OUTLINED_FUNCTION_33_3((a3 + *(v27 + 112)), v49, v50);
      *(v4 + 12) = 2080;
      OUTLINED_FUNCTION_5_14();
      v29 = *(v28 + 120);
      v30 = sub_221BCC558();
      sub_2219AC8D8();
      sub_221BCE168();
      OUTLINED_FUNCTION_40_4();

      v31 = OUTLINED_FUNCTION_23_7();
      sub_2219A6360(v31, v30, v32);
      OUTLINED_FUNCTION_45_5();
      *(v5 + 14) = a3 + v29;
      *(v5 + 22) = 2048;
      *(v5 + 24) = a2;
      _os_log_impl(&dword_221989000, v25, v26, "[%s] <%s#%ld> Error is not retryable", v5, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_21_3();
    }

    else
    {
    }

    sub_221A2C788(v10);
    OUTLINED_FUNCTION_42_4();

    sub_221A2FEE4(v46, v47);
  }
}

uint64_t *sub_221A2EBAC@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  if (result[1])
  {
    v3 = 0;
  }

  else
  {
    v4 = result;
    v5 = *result;

    *v4 = v5;
    v3 = 1;
    *(v4 + 8) = 1;
    *(v4 + 16) = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_221A2EC10(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_0_7();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  OUTLINED_FUNCTION_0_7();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_221BCE398();
  OUTLINED_FUNCTION_0_7();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v16, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v20, v10);
    return sub_221BCD788();
  }

  else
  {
    (*(v5 + 32))(v8, v20, v3);
    return sub_221BCD798();
  }
}

uint64_t *sub_221A2EE34()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  sub_221BCD7A8();
  OUTLINED_FUNCTION_11_4();
  (*(v5 + 8))(v1 + v3);
  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_5_14();
  v7 = *(v6 + 120);
  sub_221BCC558();
  OUTLINED_FUNCTION_11_4();
  (*(v8 + 8))(v1 + v7);
  OUTLINED_FUNCTION_5_14();
  _s9ActorCallC10InvocationVMa(255, *(v2 + 80), v4, v9);
  v10 = sub_221BCC898();
  sub_221BB7E98(v10);
  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_5_14();

  OUTLINED_FUNCTION_5_14();
  sub_221A01F0C(v1 + *(v11 + 152) + 8, qword_27CFB8C40, &qword_221BD6938);

  return v1;
}

uint64_t sub_221A2F000()
{
  sub_221A2EE34();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_221A2F098()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8BA8, &qword_221BD6868);
  sub_221BB7E98(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB8BB0, qword_221BD6870);
  sub_221BB7E98(v1);
}

void sub_221A2F104(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v27 = *a2;
  v9 = *(v27 + 80);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  if (*a1)
  {
    if (qword_27CFB7378 != -1)
    {
      swift_once();
    }

    v16 = sub_221BCCD88();
    __swift_project_value_buffer(v16, qword_27CFDEDC8);

    v17 = sub_221BCCD68();
    v18 = sub_221BCDA78();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2219A6360(*(a2 + *(*a2 + 112)), *(a2 + *(*a2 + 112) + 8), &v29);
      _os_log_impl(&dword_221989000, v17, v18, "[%s] ERROR: evaluateRetries called while retry task already pending", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223DA4C00](v20, -1, -1);
      MEMORY[0x223DA4C00](v19, -1, -1);
    }
  }

  else
  {
    v21 = sub_221BCD7F8();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
    (*(v10 + 16))(v12, a5, v9);
    v22 = (*(v10 + 80) + 72) & ~*(v10 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v9;
    *(v23 + 5) = *(v27 + 88);
    *(v23 + 6) = a3;
    v24 = v28;
    *(v23 + 7) = a2;
    *(v23 + 8) = v24;
    (*(v10 + 32))(&v23[v22], v12, v9);

    sub_2219F8C64();
    *a1 = v25;
  }
}

uint64_t sub_221A2F458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = sub_221BCD7B8();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[9] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v7[10] = v10;
  *v9 = v7;
  v9[1] = sub_221A2F588;

  return MEMORY[0x282200430](v10);
}

uint64_t sub_221A2F588()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;
  *(v4 + 88) = v0;

  if (v0)
  {
    v5 = sub_221A2F92C;
  }

  else
  {
    v5 = sub_221A2F68C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221A2F68C()
{
  if (sub_221BCD8A8())
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_0_32(&qword_27CFB7378);
    }

    v2 = sub_221BCCD88();
    __swift_project_value_buffer(v2, qword_27CFDEDC8);

    v3 = sub_221BCCD68();
    v4 = sub_221BCDA68();
    if (OUTLINED_FUNCTION_83_2(v4))
    {
      v5 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_10_8(4.8152e-34);
      v7 = OUTLINED_FUNCTION_35_5(*(v6 + 112), v32);
      OUTLINED_FUNCTION_1_31(v7);
      sub_221BCC558();
      v8 = sub_2219AC8D8();
      OUTLINED_FUNCTION_18_8(v8);
      v9 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_17_9(v9, v10);
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_4_15();
      *(v5 + 24) = v1;
      OUTLINED_FUNCTION_3_18();
      _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {
    }
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_0_32(&qword_27CFB7378);
    }

    v16 = sub_221BCCD88();
    __swift_project_value_buffer(v16, qword_27CFDEDC8);

    v17 = sub_221BCCD68();
    v18 = sub_221BCDA68();
    if (OUTLINED_FUNCTION_83_2(v18))
    {
      v19 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_10_8(4.8152e-34);
      v21 = OUTLINED_FUNCTION_35_5(*(v20 + 112), v32);
      OUTLINED_FUNCTION_1_31(v21);
      sub_221BCC558();
      v22 = sub_2219AC8D8();
      OUTLINED_FUNCTION_18_8(v22);
      v23 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_17_9(v23, v24);
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_4_15();
      *(v19 + 24) = v1;
      OUTLINED_FUNCTION_3_18();
      _os_log_impl(v25, v26, v27, v28, v29, 0x20u);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {
    }

    sub_221A2C56C(*(v0 + 40));
  }

  OUTLINED_FUNCTION_4_3();

  return v30();
}

uint64_t sub_221A2F92C()
{
  v3 = *(v0 + 88);
  *(v0 + 16) = v3;
  v4 = v3;
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = *(v0 + 48);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_0_32(&qword_27CFB7378);
    }

    v8 = *(v0 + 88);
    v9 = sub_221BCCD88();
    __swift_project_value_buffer(v9, qword_27CFDEDC8);

    v10 = v8;
    v11 = sub_221BCCD68();
    v12 = sub_221BCDA78();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_44_2();
      swift_slowAlloc();
      OUTLINED_FUNCTION_19_7();
      *v13 = 136315906;
      v14 = OUTLINED_FUNCTION_33_3((v2 + *(*v2 + 112)), v35, v37);
      OUTLINED_FUNCTION_31_6(v14);
      v15 = sub_221BCC558();
      sub_2219AC8D8();
      sub_221BCE168();
      OUTLINED_FUNCTION_40_4();

      v16 = OUTLINED_FUNCTION_23_7();
      sub_2219A6360(v16, v15, v17);
      OUTLINED_FUNCTION_45_5();
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_34_4(v18, v19, v20, v21, v22, v23, v24, v25, v36, v38);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 34) = v26;
      *v1 = v26;
      OUTLINED_FUNCTION_3_18();
      _os_log_impl(v27, v28, v29, v30, v31, 0x2Au);
      sub_221A01F0C(v1, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {
    }

    v32 = *(v0 + 88);
    sub_221A2C788(v32);
  }

  OUTLINED_FUNCTION_4_3();

  return v33();
}

uint64_t sub_221A2FBB4(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_221A2FBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A2FC54()
{
  OUTLINED_FUNCTION_27_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_221A2FD24;
  v3 = OUTLINED_FUNCTION_6_12();

  return sub_221A2D320(v3, v4, v5, v6, v7);
}

uint64_t sub_221A2FD24()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_221A2FE08()
{
  OUTLINED_FUNCTION_27_7();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v3[1] = sub_221A30280;
  v5 = OUTLINED_FUNCTION_6_12();

  return sub_221A2D898(v5, v6, v7, v8, v1, v9);
}

void sub_221A2FEE4(void *a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  else if (!(a2 >> 62))
  {
  }
}

uint64_t sub_221A2FF40()
{
  OUTLINED_FUNCTION_27_7();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_15(v3);
  *v4 = v5;
  v4[1] = sub_221A2FD24;
  v6 = OUTLINED_FUNCTION_6_12();

  return sub_221A2F458(v6, v7, v8, v9, v1, v2, v10);
}

unint64_t sub_221A30030(uint64_t a1)
{
  v1 = sub_221A300F8();
  if (v2 <= 0x3F)
  {
    v3 = sub_221BCC558();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

unint64_t sub_221A300F8()
{
  result = qword_27CFB8CC8;
  if (!qword_27CFB8CC8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CFB8CC8);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_18AppIntentsServices06RemoteaB10DispatcherC22ActorCallRetryStrategyV7OutcomeO(void *a1)
{
  v1 = a1[1];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_221A3015C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 16))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_221A301CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t *sub_221A30248(uint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8;
    v3 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = 8 * (a2 - 2);
    v3 = 0x8000000000000000;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_32(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_31(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

unint64_t OUTLINED_FUNCTION_17_9(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2219A6360(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_18_8(uint64_t a1)
{

  return sub_221BCE168();
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_6()
{
}

uint64_t OUTLINED_FUNCTION_30_5(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

unint64_t OUTLINED_FUNCTION_33_3@<X0>(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v4 = *a1;
  v5 = a1[1];

  return sub_2219A6360(v4, v5, va);
}

id OUTLINED_FUNCTION_34_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 24) = a10;
  *(v10 + 32) = 2112;

  return v11;
}

unint64_t OUTLINED_FUNCTION_35_5@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = (v2 + a1);
  v5 = *v4;
  v6 = v4[1];

  return sub_2219A6360(v5, v6, va);
}

uint64_t OUTLINED_FUNCTION_39_6(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_43_5()
{
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_5()
{
}

uint64_t sub_221A30520(uint64_t a1)
{
  result = sub_221BCCD88();
  if (v5 <= 0x3F)
  {
    result = _s23DistributedActorManagerC5StateVMa(319, *(a1 + 80), v3, v4);
    if (v6 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_221A30634(uint64_t a1, char a2)
{
  result = 0x6C616974696E69;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_11_9();
      v3 = "invalidated(error: ";
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_11_9();
      v3 = "unavailable(error: ";
LABEL_5:
      MEMORY[0x223DA31F0](0xD000000000000013, (v3 - 32) | 0x8000000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCE018();
      MEMORY[0x223DA31F0](41, 0xE100000000000000);
      result = v4;
      break;
    case 3:
      return result;
    default:
      result = 0x6C62616C69617661;
      break;
  }

  return result;
}

uint64_t sub_221A30750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_221BCCEE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v2, a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v11;
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_221BCDE68();
      MEMORY[0x223DA31F0](0xD000000000000013, 0x8000000221BEDC10);
      v17[1] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCE018();
      MEMORY[0x223DA31F0](41, 0xE100000000000000);

      return v18;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_221BCDE68();
    MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEDC50);
    sub_221BCE018();
    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    v15 = v18;
    (*(v5 + 8))(v7, v4);
  }

  return v15;
}

uint64_t sub_221A309FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  OUTLINED_FUNCTION_27_0();
  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A30A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3[7] + 40);
  v3[8] = v4;
  if (v4)
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v3[9] = v5;
    *v5 = v6;
    v5[1] = sub_221A30B68;

    return sub_221A30D20();
  }

  else
  {
    sub_2219ACB94(a1, a2, a3);
    swift_allocError();
    *v8 = 0xD00000000000001BLL;
    *(v8 + 8) = 0x8000000221BEDBD0;
    *(v8 + 16) = 3;
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v9();
  }
}

uint64_t sub_221A30B68()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;
  *(v4 + 80) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A30C68()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221A30CC4()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221A30D20()
{
  OUTLINED_FUNCTION_1_5();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = *v0;
  v7 = sub_221BCC558();
  v1[9] = v7;
  v1[10] = *(v7 - 8);
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221A30E08(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 48);
  v6 = *(v1 + 24);
  v15 = *(v1 + 32);
  sub_221BCC548();
  v7 = swift_task_alloc();
  *(v1 + 96) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v3;
  *(v7 + 32) = v2;
  *(v7 + 40) = v6;
  *(v7 + 48) = v15;
  v8 = swift_allocObject();
  *(v1 + 104) = v8;
  swift_weakInit();
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  v9[2] = *(v4 + 80);
  v9[3] = v5;
  v9[4] = v8;
  v9[5] = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v1 + 120) = v10;
  *v10 = v11;
  v10[1] = sub_221A30F74;
  v12 = *(v1 + 48);
  v13 = *(v1 + 16);

  return MEMORY[0x282200830](v13, &unk_221BD6D60, v7, sub_221A34090, v9, 0, 0, v12);
}

uint64_t sub_221A30F74()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v3 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221A31090()
{
  OUTLINED_FUNCTION_1_5();
  (*(v0[10] + 8))(v0[11], v0[9]);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221A31108()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_25();

  return v4();
}

void sub_221A311B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v95 = a3;
  v96 = a2;
  v93 = a1;
  v8 = *(*v5 + 80);
  v9 = _s12AnyActorCallVMa(0, v8, a3, a4);
  OUTLINED_FUNCTION_0_7();
  v91 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = (&v77 - v12);
  v14 = sub_221BCDC98();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v77 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - v21;
  OUTLINED_FUNCTION_0_7();
  v87 = v23;
  MEMORY[0x28223BE20](v24);
  v88 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v92 = v27;
  MEMORY[0x28223BE20](v28);
  v81 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v80 = &v77 - v31;
  MEMORY[0x28223BE20](v32);
  v79 = &v77 - v33;
  v86 = v8;
  v101 = v8;
  v102 = a4;
  v103 = a5;
  KeyPath = swift_getKeyPath();
  v98 = a4;
  v99 = a5;
  v100 = KeyPath;
  v35 = sub_221BCC558();
  v90 = a4;
  v85 = v35;
  v89 = a5;
  v37 = sub_221A3318C(sub_221A34250, v97, a4, v35, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], v36);

  if (*(v37 + 16))
  {
    v82 = v16;
    v83 = AssociatedTypeWitness;
    v38 = v37;
    if (qword_27CFB7378 != -1)
    {
      swift_once();
    }

    v39 = sub_221BCCD88();
    __swift_project_value_buffer(v39, qword_27CFDEDC8);

    v40 = v93;
    v41 = v96;
    sub_221A342A0(v93, v96);

    v42 = sub_221BCCD68();
    v43 = sub_221BCDA58();

    sub_221A3427C(v40, v41);
    v84 = v38;

    v78 = v43;
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v106 = v77;
      *v44 = 136315650;
      *(v44 + 4) = sub_2219A6360(v94[2].isa, v94[3].isa, &v106);
      *(v44 + 12) = 2080;
      v104 = v40;
      v105 = v96;
      sub_221A342A0(v40, v96);
      _s23DistributedActorManagerC17ActorAvailabilityOMa(0, v86, v45, v46);
      v94 = v42;
      swift_getWitnessTable();
      v47 = sub_221BCD3E8();
      v49 = sub_2219A6360(v47, v48, &v106);

      *(v44 + 14) = v49;
      *(v44 + 22) = 2080;
      v50 = v44;
      v51 = MEMORY[0x223DA33D0](v84, v85);
      v53 = v52;

      v54 = sub_2219A6360(v51, v53, &v106);

      *(v44 + 24) = v54;
      v55 = v94;
      _os_log_impl(&dword_221989000, v94, v78, "[%s] Applying state %s to %s", v50, 0x20u);
      v56 = v77;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v56, -1, -1);
      MEMORY[0x223DA4C00](v50, -1, -1);
    }

    else
    {
    }

    v57 = v83;
    v58 = v82;
    switch(v96)
    {
      case 1:
        v66 = OUTLINED_FUNCTION_0_33();
        v67(v66);
        v68 = v81;
        sub_221BCD598();
        swift_getAssociatedConformanceWitness();
        v69 = (v91 + 32);
        for (i = (v91 + 8); ; (*i)(v13, v9))
        {
          sub_221BCDCB8();
          OUTLINED_FUNCTION_13_8(v58);
          if (v63)
          {
            break;
          }

          v71 = (*v69)(v13, v58, v9);
          (*v13)(v71);
          (*(v13 + *(v9 + 36)))(v40);
        }

        (*(v92 + 8))(v68, v57);
        break;
      case 2:
        v72 = OUTLINED_FUNCTION_0_33();
        v73(v72);
        v61 = v80;
        sub_221BCD598();
        swift_getAssociatedConformanceWitness();
        v74 = (v91 + 32);
        for (j = (v91 + 8); ; (*j)(v13, v9))
        {
          sub_221BCDCB8();
          OUTLINED_FUNCTION_13_8(v19);
          if (v63)
          {
            break;
          }

          v76 = (*v74)(v13, v19, v9);
          (*v13)(v76);
          (*(v13 + *(v9 + 40)))(v40);
        }

        goto LABEL_19;
      case 3:
        return;
      default:
        v59 = OUTLINED_FUNCTION_0_33();
        v60(v59);
        v61 = v79;
        sub_221BCD598();
        swift_getAssociatedConformanceWitness();
        v62 = (v91 + 8);
        while (1)
        {
          sub_221BCDCB8();
          OUTLINED_FUNCTION_13_8(v22);
          if (v63)
          {
            break;
          }

          v64 = *(v22 + 2);
          v65 = *v62;

          v65(v22, v9);
          v104 = v40;
          v64(&v104);
        }

LABEL_19:
        (*(v92 + 8))(v61, v57);
        break;
    }
  }

  else
  {
  }
}

uint64_t sub_221A31A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_221A31A6C, 0, 0);
}

uint64_t sub_221A31A6C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  v5 = *(v0 + 48);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  *(v3 + 48) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v6;
  *v6 = v7;
  v6[1] = sub_221A31B70;
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822008A0](v8);
}

uint64_t sub_221A31B70()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v9();
  }
}

uint64_t sub_221A31C94()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_221A31CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v69 = a6;
  v70 = a3;
  v61 = a5;
  v62 = a4;
  v59 = a1;
  v9 = *(*a2 + 80);
  v66 = _s12AnyActorCallVMa(0, v9, a3, a4);
  v64 = *(v66 - 8);
  v65 = v66 - 8;
  v67 = v64;
  MEMORY[0x28223BE20](v66 - 8);
  v63 = &v51 - v10;
  v68 = sub_221BCC558();
  v11 = *(v68 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v68);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v56 = &v51 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v16 = sub_221BCD7A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - v18;
  v58 = &v51 - v18;
  v52 = v9;
  v60 = _s9ActorCallCMa(0, v9, a7, v20);
  (*(v17 + 16))(v19, v59, v16);
  v21 = *(a2 + 24);
  v59 = *(a2 + 16);
  v54 = v21;
  v22 = *(v11 + 16);
  v23 = v15;
  v24 = v70;
  v22(v23, v70, v68);
  v25 = *(a2 + 40);
  v55 = *(a2 + 32);
  v53 = v25;
  v26 = swift_allocObject();
  v26[2] = v9;
  v26[3] = a7;
  v27 = a7;
  v28 = v69;
  v26[4] = v61;
  v26[5] = v28;
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = v57;
  v31 = v24;
  v32 = v68;
  v22(v57, v31, v68);
  v33 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = v52;
  *(v34 + 3) = v27;
  *(v34 + 4) = v29;
  (*(v11 + 32))(&v34[v33], v30, v32);
  v35 = v62;

  v36 = v53;

  v37 = v54;

  sub_221A2CF18(v58, v59, v37, v56, v35, v55, v36, &unk_221BD6D78, v26, sub_221A341D0, v34);

  v39 = v63;
  sub_221A2C3C4(v38, v63);
  os_unfair_lock_lock((a2 + 48));
  sub_221A32770(a2 + 56, a2, v70, v39, &v71);
  os_unfair_lock_unlock((a2 + 48));
  v40 = v71;
  v41 = v72;
  v42 = v66;
  sub_221BCE178();
  v43 = v67;
  swift_allocObject();
  v44 = sub_221BCD698();
  v45 = v43;
  (*(v43 + 16))(v46, v39, v42);
  v47 = v42;
  v48 = sub_221BCD748();
  v71 = v44;
  WitnessTable = swift_getWitnessTable();
  sub_221A311B0(v40, v41, &v71, v48, WitnessTable);
  sub_221A3427C(v40, v41);

  return (*(v45 + 8))(v39, v47);
}

uint64_t sub_221A32208(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2219CA70C;

  return v8(a1, v5);
}

os_unfair_lock_s *sub_221A3230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    os_unfair_lock_lock(result + 12);
    sub_221A32398(&v7[14], v7, a2, a4);
    os_unfair_lock_unlock(v7 + 12);
  }

  return result;
}

uint64_t sub_221A32398(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v30 = _s12AnyActorCallVMa(255, *(*a2 + 80), a3, a4);
  v8 = sub_221BCDC98();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v29 = v28 - v9;
  v10 = sub_221BCC558();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CFB7378 != -1)
  {
    swift_once();
  }

  v14 = sub_221BCCD88();
  __swift_project_value_buffer(v14, qword_27CFDEDC8);
  v15 = *(v11 + 16);
  v33 = a3;
  v15(v13, a3, v10);

  v16 = sub_221BCCD68();
  v17 = sub_221BCDA58();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[2] = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[1] = a1;
    v21 = v20;
    v34 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_2219A6360(a2[2], a2[3], &v34);
    *(v19 + 12) = 2080;
    sub_221A340A0(&qword_27CFB7A60, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_221BCE168();
    v24 = v23;
    (*(v11 + 8))(v13, v10);
    v25 = sub_2219A6360(v22, v24, &v34);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_221989000, v16, v17, "[%s] Removing <%s> from active calls", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v21, -1, -1);
    MEMORY[0x223DA4C00](v19, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  sub_221A340A0(&qword_27CFB9420, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_221BCD2D8();
  v26 = v29;
  sub_221BCD2B8();
  return (*(v31 + 8))(v26, v32);
}

id sub_221A32770@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v38 = a4;
  v41 = a1;
  v42 = a5;
  v40 = _s12AnyActorCallVMa(255, *(*a2 + 80), a3, a4);
  v8 = sub_221BCDC98();
  MEMORY[0x28223BE20](v8 - 8);
  v39 = v34 - v9;
  v10 = sub_221BCC558();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v36 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v34 - v14;
  if (qword_27CFB7378 != -1)
  {
    swift_once();
  }

  v16 = sub_221BCCD88();
  __swift_project_value_buffer(v16, qword_27CFDEDC8);
  v17 = *(v11 + 16);
  v37 = a3;
  v35 = v17;
  v17(v15, a3, v10);

  v18 = sub_221BCCD68();
  v19 = sub_221BCDA58();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34[1] = v5;
    v21 = v20;
    v34[0] = swift_slowAlloc();
    v43 = v34[0];
    *v21 = 136315394;
    *(v21 + 4) = sub_2219A6360(a2[2], a2[3], &v43);
    *(v21 + 12) = 2080;
    sub_221A340A0(&qword_27CFB7A60, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v22 = sub_221BCE168();
    v24 = v23;
    (*(v11 + 8))(v15, v10);
    v25 = sub_2219A6360(v22, v24, &v43);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_221989000, v18, v19, "[%s] Enqueuing call <%s> to active calls", v21, 0x16u);
    v26 = v34[0];
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v26, -1, -1);
    MEMORY[0x223DA4C00](v21, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  v35(v36, v37, v10);
  v28 = v39;
  v27 = v40;
  (*(*(v40 - 8) + 16))(v39, v38, v40);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v27);
  sub_221A340A0(&qword_27CFB9420, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_221BCD2D8();
  v29 = v41;
  sub_221BCD2F8();
  v30 = *(v29 + 8);
  v31 = v42;
  *v42 = v30;
  v32 = *(v29 + 16);
  *(v31 + 8) = v32;
  return sub_221A342A0(v30, v32);
}

void sub_221A32BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v44 = a3;
  v45 = _s12AnyActorCallVMa(255, a3, a3, a4);
  v5 = sub_221BCDC98();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v12 = sub_221BCC558();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v42 = a4;
    v43 = v11;
    if (qword_27CFB7378 != -1)
    {
      swift_once();
    }

    v18 = sub_221BCCD88();
    __swift_project_value_buffer(v18, qword_27CFDEDC8);
    (*(v13 + 16))(v15, v46, v12);

    v19 = sub_221BCCD68();
    v20 = sub_221BCDA58();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = v5;
      v22 = v21;
      v39 = swift_slowAlloc();
      v47[0] = v39;
      *v22 = 136315394;
      v40 = v6;
      v23 = *(v17 + 16);
      v24 = *(v17 + 24);

      v25 = sub_2219A6360(v23, v24, v47);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      sub_221A340A0(&qword_27CFB7A60, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_221BCE168();
      v28 = v27;
      (*(v13 + 8))(v15, v12);
      v29 = sub_2219A6360(v26, v28, v47);
      v6 = v40;

      *(v22 + 14) = v29;
      _os_log_impl(&dword_221989000, v19, v20, "[%s] Cancelling <%s> (parent cancelled)", v22, 0x16u);
      v30 = v39;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v30, -1, -1);
      v31 = v22;
      v5 = v41;
      MEMORY[0x223DA4C00](v31, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    os_unfair_lock_lock((v17 + 48));
    v32 = v43;
    sub_221A330DC((v17 + 56), v46, v44);
    os_unfair_lock_unlock((v17 + 48));
    (*(v6 + 16))(v8, v32, v5);
    v33 = v45;
    if (__swift_getEnumTagSinglePayload(v8, 1, v45) == 1)
    {
      v34 = *(v6 + 8);
      v34(v32, v5);

      v34(v8, v5);
    }

    else
    {
      v35 = *&v8[*(v33 + 36)];
      v36 = *(*(v33 - 8) + 8);

      v36(v8, v33);
      sub_221BCD7B8();
      sub_221A340A0(&qword_27CFB9070, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      v37 = swift_allocError();
      sub_221BCD268();
      v35(v37);

      (*(v6 + 8))(v32, v5);
    }
  }
}

uint64_t sub_221A330DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_221BCC558();
  _s12AnyActorCallVMa(0, a3, v4, v5);
  sub_221A340A0(&qword_27CFB9420, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_221BCD2E8();
}

uint64_t sub_221A3318C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v9 = v8;
  v56 = a2;
  v57 = a4;
  v55 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = a5;
  v44 = &v38 - v14;
  v41 = *(a5 - 8);
  MEMORY[0x28223BE20](v15);
  v53 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v51 = &v38 - v18;
  v19 = sub_221BCDC98();
  v39 = *(v19 - 8);
  v40 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v38 - v23;
  MEMORY[0x28223BE20](v25);
  v52 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v49 = *(a3 - 8);
  MEMORY[0x28223BE20](v28);
  v48 = &v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a6;
  v58 = swift_getAssociatedTypeWitness();
  v45 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v31 = &v38 - v30;
  v32 = sub_221BCD5A8();
  v59 = sub_221BCDF68();
  v54 = sub_221BCDF78();
  sub_221BCDF18();
  (*(v49 + 16))(v48, v46, a3);
  v57 = v31;
  v49 = a3;
  result = sub_221BCD598();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v50 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_221BCDCB8();
      result = __swift_getEnumTagSinglePayload(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v55(v24, v51);
      if (v9)
      {
        (*(v45 + 8))(v57, v58);

        (*(v41 + 32))(v42, v51, v43);
        return (*v34)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v34)(v24, AssociatedTypeWitness);
      sub_221BCDF58();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v35 = (v50 + 32);
  v36 = (v50 + 8);
  v37 = v44;
  while (1)
  {
    sub_221BCDCB8();
    if (__swift_getEnumTagSinglePayload(v21, 1, AssociatedTypeWitness) == 1)
    {
      (*(v45 + 8))(v57, v58);
      (*(v39 + 8))(v21, v40);
      return v59;
    }

    (*v35)(v37, v21, AssociatedTypeWitness);
    v55(v37, v53);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v36)(v37, AssociatedTypeWitness);
    sub_221BCDF58();
  }

  (*v36)(v37, AssociatedTypeWitness);
  (*(v45 + 8))(v57, v58);

  return (*(v41 + 32))(v42, v53, v43);
}

void *sub_221A337F8()
{
  v1 = v0;
  v2 = *v0;

  _s23DistributedActorManagerC11CallManagerC6_StateVMa(255, *(v2 + 80), v3, v4);
  OUTLINED_FUNCTION_6_13();
  v5 = sub_221BCC898();
  sub_221BB7E98(v5);
  return v1;
}

uint64_t sub_221A3385C()
{
  sub_221A337F8();

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

id *sub_221A33890()
{
  v1 = v0;
  v2 = *v0;

  v3 = qword_27CFB8CD0;
  sub_221BCCD88();
  OUTLINED_FUNCTION_11_4();
  (*(v4 + 8))(v1 + v3);
  sub_221BCC558();
  v5 = v2[10];
  _s23DistributedActorManagerC11NamedStreamVMa(255, v5, v6, v7);
  OUTLINED_FUNCTION_2_26();
  sub_221A340A0(v8, v9, MEMORY[0x277CC9600]);
  sub_221BCD2D8();
  OUTLINED_FUNCTION_6_13();
  v10 = sub_221BCC898();
  sub_221BB7E98(v10);
  v11 = *(*v1 + 18);
  _s23DistributedActorManagerC5StateVMa(0, v5, v12, v13);
  OUTLINED_FUNCTION_11_4();
  (*(v14 + 8))(v1 + v11);
  return v1;
}

uint64_t sub_221A339EC()
{
  sub_221A33890();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_221A33B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices06RemoteaB10DispatcherC23DistributedActorManagerC0G12AvailabilityOy_x_G(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_221A33B70(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_221A33BB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221A33BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s23DistributedActorManagerC17ActorAvailabilityOMa(255, *(a1 + 16), a3, a4);
  result = sub_221BCD828();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221A33CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_221A33D0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_221A33D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_221A33D90(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

void sub_221A33DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  _s23DistributedActorManagerC17ActorAvailabilityOMa(319, v4, a3, a4);
  if (v5 <= 0x3F)
  {
    sub_221A33E90(319);
    if (v8 <= 0x3F)
    {
      _s23DistributedActorManagerC20EndpointAvailabilityOMa(319, v4, v6, v7);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_221A33E90(uint64_t a1)
{
  if (!qword_27CFB8FE0[0])
  {
    sub_221BCC558();
    v1 = sub_221BCDC98();
    if (!v2)
    {
      atomic_store(v1, qword_27CFB8FE0);
    }
  }
}

uint64_t sub_221A33EE8(uint64_t a1)
{
  result = sub_221BCCEE8();
  if (v2 <= 0x3F)
  {
    result = sub_221A33F64();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_221A33F64()
{
  result = qword_27CFB9068;
  if (!qword_27CFB9068)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CFB9068);
  }

  return result;
}

uint64_t sub_221A33FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_2219CA70C;

  return sub_221A31A40(a1, v5, v6, v7, v9, v8, v4);
}

uint64_t sub_221A340A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221A340F8(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v3 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2219EC5F0;

  return sub_221A32208(a1, a2, v6);
}

os_unfair_lock_s *sub_221A341D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_221BCC558() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_221A3230C(v4, v5, v1, v2);
}

void sub_221A3427C(void *a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
    swift_unknownObjectRelease();
  }
}

id sub_221A342A0(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return sub_221BCDE68();
}

void sub_221A34364()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);

    v1(v3);

    sub_22198B60C(v1, v2);
  }
}

void sub_221A343C0(void *a1)
{
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  v4 = a1;

  sub_221A34364();
}

uint64_t sub_221A34414()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9078, &qword_221BD6DD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  if (qword_27CFB7320 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_27CFB7320);
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9080, &qword_221BE95A0);
  sub_221BCCDC8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_221A34948();
  v6 = sub_221BCCE08();

  (*(v3 + 8))(v5, v2);
  *(v1 + 32) = v6;

  return v1;
}

uint64_t sub_221A345C4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221A34624(v2, v4, v5);
  }

  return result;
}

void sub_221A34624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a1;
  if (qword_27CFB7320 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_34(&qword_27CFB7320);
  }

  if (*(qword_27CFDED00 + OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_isAvailable) == 1)
  {
    v6 = *(v4 + 40);
    if ((v5 & 1) == 0)
    {
      if (v6)
      {
        return;
      }

      sub_221A0E704(a1, a2, a3);
      v15 = swift_allocError();
      *v16 = 0xD000000000000016;
      *(v16 + 8) = 0x8000000221BEDCF0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = 5;
      goto LABEL_13;
    }

    if (!v6)
    {
      return;
    }

LABEL_12:
    v15 = 0;
LABEL_13:

    sub_221A343C0(v15);
    return;
  }

  if (qword_27CFB73C0 != -1)
  {
    swift_once();
  }

  v7 = sub_221BCCD88();
  __swift_project_value_buffer(v7, qword_27CFDEE88);
  v8 = sub_221BCCD68();
  v9 = sub_221BCDA78();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_221BCE478();
    v14 = sub_2219A6360(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_221989000, v8, v9, "%s: Unable to monitor Wi-Fi availability", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DA4C00](v11, -1, -1);
    MEMORY[0x223DA4C00](v10, -1, -1);
  }

  if (*(v4 + 40))
  {
    goto LABEL_12;
  }
}

uint64_t sub_221A34874(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_22198B60C(v5, v4);
}

uint64_t sub_221A348B8()
{
  sub_22198B60C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_221A348E8()
{
  sub_221A348B8();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t sub_221A34948()
{
  result = qword_27CFB9088;
  if (!qword_27CFB9088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB9078, &qword_221BD6DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9088);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_34(uint64_t a1)
{

  return swift_once();
}

void sub_221A349E4(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_69_1();
  os_unfair_lock_lock((v4 + 16));
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v4 + 24);
  a3(v6, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 24) = v9;
  os_unfair_lock_unlock((v4 + 16));
  v8 = *(v4 + 32);
  if (v8)
  {
    v8(v6, v3);
  }
}

void *sub_221A34A8C(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  v3 = sub_221A34AE4((v1 + 24), a1);
  os_unfair_lock_unlock((v1 + 16));
  return v3;
}

void *sub_221A34AE4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v3 = sub_221B9EA30(a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_221A34B38(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    OUTLINED_FUNCTION_170_0();

    return sub_2219B1AB0();
  }

  else
  {
    v7 = a2;

    return sub_22198B620();
  }
}

uint64_t RemoteAppIntentsActor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_id;
  sub_221BCD0B8();
  OUTLINED_FUNCTION_2_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t RemoteAppIntentsActor.__allocating_init(actorSystem:transactionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  RemoteAppIntentsActor.init(actorSystem:transactionDelegate:)(a1, a2, a3);
  return v6;
}

uint64_t RemoteAppIntentsActor.init(actorSystem:transactionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = sub_221BCD0B8();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v11 = v10 - v9;
  v12 = sub_221BCCD88();
  OUTLINED_FUNCTION_0_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  swift_defaultActor_initialize();
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
  }

  v19 = __swift_project_value_buffer(v12, qword_27CFDEDB0);
  (*(v14 + 16))(v18, v19, v12);
  sub_221BCCCE8();
  v20 = v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_transactionDelegate;
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_transactionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem) = a1;
  type metadata accessor for RemoteAppIntentsActor(0);
  sub_221BCCFE8();
  OUTLINED_FUNCTION_67_3();
  sub_221A58E78(v21, v22, MEMORY[0x277CD8E38]);
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v23, v24, &protocol conformance descriptor for RemoteAppIntentsActor);

  sub_221BCC618();
  (*(v7 + 32))(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_id, v11, v29);
  type metadata accessor for DeviceStateHelper();
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_deviceState) = sub_221BAD888();
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB90B8, &qword_221BD6E00);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_inFlightPerformStore) = sub_221A02CA8(sub_221A52AFC, v25, sub_221A52B04, v26);
  type metadata accessor for RemoteFileStore();
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_intentFileStore) = swift_allocObject();
  _s17LNConnectionStoreCMa();
  swift_allocObject();
  v27 = swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_lnConnectionStore) = sub_221A5B430(v27, a3);
  *(v20 + 8) = a3;
  swift_unknownObjectWeakAssign();

  sub_221BCC5F8();

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_221A350D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ActorTransactionOperation(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v11 = sub_221BCC558();
  (*(*(v11 - 8) + 16))(v9, a2, v11);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_221BCDE68();

  v16 = 0xD000000000000016;
  v17 = 0x8000000221BEE170;
  v12 = sub_221A660C4();
  MEMORY[0x223DA31F0](v12);

  v13 = v17;
  v14 = &v9[*(v7 + 28)];
  *v14 = v16;
  v14[1] = v13;
  (*(a4 + 8))(v9, ObjectType, a4);
  return sub_221A58CC0();
}

uint64_t sub_221A352B0()
{
  OUTLINED_FUNCTION_1_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_221BCC6C8();
  v1[4] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_210();
  v5 = sub_221BCD088();
  v1[7] = v5;
  OUTLINED_FUNCTION_18_4(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_210();
  v7 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A353A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_67();
  if (swift_distributed_actor_is_remote())
  {
    v16 = OUTLINED_FUNCTION_98_2();
    v19 = sub_221A52BAC(v16, v17, v18);
    sub_221A52C00(v19, v20, v21);
    OUTLINED_FUNCTION_23_8();
    sub_221BCD078();
    sub_221BCD048();
    OUTLINED_FUNCTION_99_1();
    sub_221BCC6D8();
    v26 = swift_task_alloc();
    *(v15 + 80) = v26;
    type metadata accessor for RemoteAppIntentsActor(0);
    OUTLINED_FUNCTION_0_35();
    sub_221A58E78(v27, v28, &protocol conformance descriptor for RemoteAppIntentsActor);
    OUTLINED_FUNCTION_58_2();
    *v26 = v29;
    v26[1] = sub_221A35594;
    OUTLINED_FUNCTION_74_1(v30);
    OUTLINED_FUNCTION_6_8(v31);
    OUTLINED_FUNCTION_123_0();

    return MEMORY[0x282125BC0](v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {
    OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_124_0();

    return MEMORY[0x2822009F8](v22, v23, v24);
  }
}

uint64_t sub_221A35594()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A3568C()
{
  OUTLINED_FUNCTION_8_0();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = OUTLINED_FUNCTION_70();
  v2(v1);

  OUTLINED_FUNCTION_4_3();

  return v3();
}

uint64_t sub_221A35728()
{
  OUTLINED_FUNCTION_1_5();
  sub_221A3582C(*(v0 + 16));

  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221A35794()
{
  OUTLINED_FUNCTION_8_0();
  v1 = OUTLINED_FUNCTION_219_0();
  v2(v1);
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_25();

  return v3();
}

int64x2_t sub_221A3582C@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(1uLL);
  *a1 = result;
  return result;
}

uint64_t sub_221A3583C()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_126_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v5 = OUTLINED_FUNCTION_210();
  v6 = OUTLINED_FUNCTION_169_0(v5);
  v7 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(v6);
  OUTLINED_FUNCTION_72_2(v7);
  v0[9] = OUTLINED_FUNCTION_210();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8398, &qword_221BD3098);
  v0[10] = v8;
  OUTLINED_FUNCTION_18_4(v8);
  v0[11] = v9;
  v10 = OUTLINED_FUNCTION_210();
  v11 = OUTLINED_FUNCTION_235_0(v10);
  v0[13] = v11;
  OUTLINED_FUNCTION_18_4(v11);
  v0[14] = v12;
  v0[15] = OUTLINED_FUNCTION_210();
  v13 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_221A35990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_67();
  if (swift_distributed_actor_is_remote())
  {
    v16 = *(v15 + 120);
    OUTLINED_FUNCTION_98_2();
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_26_4();
    v17 = OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_211_0(v17);
    v18 = sub_221A58E78(&unk_27CFBB300, type metadata accessor for AppIntentsProtocol.PerformAction.Request, &unk_221BE4348);
    OUTLINED_FUNCTION_212(&qword_27CFB83A0);
    OUTLINED_FUNCTION_36_6();
    if (v16)
    {
      v21 = OUTLINED_FUNCTION_49_5();
      v22(v21);
      v23 = OUTLINED_FUNCTION_18_9();
      v24(v23);

      OUTLINED_FUNCTION_20_3();

      return v25();
    }

    else
    {
      OUTLINED_FUNCTION_234_0();
      OUTLINED_FUNCTION_3_19();
      sub_221A58E78(v19, v18, &unk_221BE42F8);
      OUTLINED_FUNCTION_11_10(&qword_27CFB83A8);
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v20 = *(v15 + 120);
      sub_221BCD048();
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v30 = swift_task_alloc();
      OUTLINED_FUNCTION_127_2(v30);
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v31, v32, &protocol conformance descriptor for RemoteAppIntentsActor);
      OUTLINED_FUNCTION_58_2();
      *v20 = v33;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_74_1(v34);
      OUTLINED_FUNCTION_6_8(v35);
      OUTLINED_FUNCTION_152();

      return MEMORY[0x282125BC0](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v27 = swift_task_alloc();
    v28 = OUTLINED_FUNCTION_75_3(v27);
    *v28 = v29;
    OUTLINED_FUNCTION_15_4(v28);

    return sub_221A36054();
  }
}

uint64_t sub_221A35C68()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A35D60()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = OUTLINED_FUNCTION_48_3();
  v2(v1);
  v3 = OUTLINED_FUNCTION_53_6();
  v4(v3);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_125_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_221A35E28()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_81_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_166();

  return v3();
}

uint64_t sub_221A35F80()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = OUTLINED_FUNCTION_70();
  v2(v1);
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221A36054()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_149_0(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v3);
  v0[22] = OUTLINED_FUNCTION_210();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v4);
  v5 = OUTLINED_FUNCTION_210();
  v6 = OUTLINED_FUNCTION_168_0(v5);
  v7 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(v6);
  v0[24] = v7;
  OUTLINED_FUNCTION_18_4(v7);
  v0[25] = v8;
  v0[26] = *(v9 + 64);
  v0[27] = OUTLINED_FUNCTION_210();
  v10 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_221A36154(uint64_t a1)
{
  v2 = *(*(v1 + 160) + *(*(v1 + 192) + 32) + 17);
  if (qword_27CFB6CE8 != -1)
  {
    a1 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(a1, &unk_27CFDD280);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v6 = *(v1 + 160);
  v5 = *(v1 + 168);
  v7 = sub_221BCCD88();
  __swift_project_value_buffer(v7, qword_27CFDEE88);
  sub_221A56250();
  v8 = swift_allocObject();
  *(v1 + 224) = v8;
  *(v8 + 16) = v2;
  sub_221A58D34();
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *(v1 + 112) = 0u;
  v9 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v4, v10, v11, v9);
  v12 = sub_221BCCCD8();
  v15 = OUTLINED_FUNCTION_21_6(v3, v13, v14, v12);
  type metadata accessor for RemoteAppIntentsActor(v15);
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v16, v17, &protocol conformance descriptor for RemoteAppIntentsActor);
  OUTLINED_FUNCTION_284();
  *(v1 + 232) = sub_221BCC668();
  v18 = swift_task_alloc();
  *(v1 + 240) = v18;
  *(v18 + 16) = v6;
  *(v18 + 24) = v5;
  OUTLINED_FUNCTION_58_4(&qword_221BD8148);
  v22 = v19;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v1 + 248) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_55_5(v20);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_69_2();

  __asm { BR              X8 }
}

void sub_221A36400()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_125_1();
  }

  else
  {
    v10 = *(v3 + 176);
    v9 = *(v3 + 184);
    swift_unknownObjectRelease();

    sub_221A01F0C(v10, &qword_27CFB7F58, &unk_221BD27E0);
    sub_221A01F0C(v9, &qword_27CFB7F60, &qword_221BD6680);
    sub_221A01F0C(v3 + 112, qword_27CFB7A80, &unk_221BD2800);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_125_1();

    v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_221A3658C(char a1, uint64_t a2)
{
  strcpy(v11, "Performing: ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
  v10 = sub_221A58E78(&qword_27CFB92C0, type metadata accessor for AppIntentsProtocol.PerformAction.Request, &unk_221BE29AC);
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_221A56250();
  __swift_project_boxed_opaque_existential_0(v8, v9);
  v7 = a1 & 1;
  v3 = sub_221AE77A0(&v7);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x223DA31F0](v3, v5);

  return v11[0];
}

uint64_t sub_221A3669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[183] = a4;
  v4[182] = a3;
  v4[181] = a2;
  v4[180] = a1;
  return MEMORY[0x2822009F8](sub_221A366C8, a4, 0);
}

uint64_t sub_221A366C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  v11 = *(v10 + 1448);
  sub_221B707F8();
  sub_221B62F44();

  OUTLINED_FUNCTION_174_0();
  sub_221A4F364();
  if (v11)
  {
    sub_221BCC328();
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_250_0();
    OUTLINED_FUNCTION_52_2();
LABEL_3:
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_123_0();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
  }

  sub_2219EB748(*(v10 + 1456), v10 + 1304);
  sub_22198B358((v10 + 1304), v10 + 1344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8098, qword_221BD38F0);
  if (swift_dynamicCast())
  {
    v21 = *(v10 + 1456);
    v22 = *(v10 + 1192);
    v23 = *(v10 + 1200);
    *(v10 + 1472) = v23;
    v24 = *(v10 + 1208);
    *(v10 + 1480) = v24;
    v25 = *(v10 + 1232);
    *(v10 + 1496) = v25;
    v26 = *(v10 + 1240);
    *(v10 + 1504) = v26;
    *(v10 + 1248) = v22;
    *(v10 + 1256) = v23;
    *(v10 + 1264) = v24;
    v27 = *(v10 + 1216);
    *(v10 + 1488) = v27;
    *(v10 + 1272) = v27;
    *(v10 + 1288) = v25;
    *(v10 + 1296) = v26;
    v28 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
    v29 = v28[7];
    memcpy((v10 + 232), (v21 + v29), 0xD7uLL);
    memcpy((v10 + 448), (v21 + v29), 0xD7uLL);
    v30 = (v21 + v28[8]);
    v31 = *v30;
    v32 = v30[1];
    v33 = *(v30 + 16);
    LOBYTE(v30) = *(v30 + 17);
    *(v10 + 1416) = v31;
    *(v10 + 1424) = v32;
    *(v10 + 1432) = v33;
    *(v10 + 1433) = v30;
    *(v10 + 231) = *(v21 + v28[9]);
    sub_221A0E888(v10 + 232, v10 + 664);

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v10 + 1512) = v34;
    *v34 = v35;
    v34[1] = sub_221A36A58;
    OUTLINED_FUNCTION_123_0();

    return sub_221A398A4();
  }

  else
  {
    v37 = swift_dynamicCast();
    if (!v37)
    {
      sub_2219A1218(v37, v38, v39);
      OUTLINED_FUNCTION_15_0();
      v47 = swift_allocError();
      OUTLINED_FUNCTION_118_1(v48, 8);
      v49 = sub_221BCC328();
      OUTLINED_FUNCTION_103_1(v49);
      OUTLINED_FUNCTION_52_2();

      __swift_destroy_boxed_opaque_existential_0((v10 + 1344));
      goto LABEL_3;
    }

    memcpy((v10 + 984), (v10 + 880), 0x68uLL);
    memcpy((v10 + 1088), (v10 + 880), 0x68uLL);
    v40 = OUTLINED_FUNCTION_70();
    __swift_project_boxed_opaque_existential_0(v40, v41);
    v42 = OUTLINED_FUNCTION_4();
    v43(v42);
    *(v10 + 1520) = *(v10 + 1392);
    sub_2219982C4(*(v10 + 1400), *(v10 + 1408));
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v10 + 1528) = v44;
    *v44 = v45;
    v44[1] = sub_221A36C70;
    OUTLINED_FUNCTION_123_0();

    return sub_221A3930C();
  }
}

uint64_t sub_221A36A58()
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;
  *v2 = *v0;

  memcpy((v1 + 16), (v1 + 448), 0xD7uLL);
  sub_221A0E8E4(v1 + 16);

  v3 = OUTLINED_FUNCTION_221();
  sub_2219982C4(v3, v4);

  OUTLINED_FUNCTION_95_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A36C18()
{
  OUTLINED_FUNCTION_1_5();
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221A36C70()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 1464);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_221A36D8C, v2, 0);
}

uint64_t sub_221A36D8C()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219EB9FC(v0 + 984);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221A36DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 240) = v23;
  *(v8 + 248) = v24;
  *(v8 + 224) = v21;
  *(v8 + 232) = v22;
  *(v8 + 208) = v19;
  *(v8 + 216) = v20;
  *(v8 + 353) = v18;
  *(v8 + 200) = v17;
  *(v8 + 184) = v16;
  *(v8 + 168) = v15;
  *(v8 + 152) = v14;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 352) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 264) = swift_task_alloc();
  v9 = sub_221BCCD88();
  *(v8 + 272) = v9;
  *(v8 + 280) = *(v9 - 8);
  *(v8 + 288) = swift_task_alloc();
  swift_getObjectType();
  v11 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A36F84, v11, v10);
}

uint64_t sub_221A36F84()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[28];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_221_0(v2);
  if (v1)
  {
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  v0[38] = v4;
  v0[39] = v3;
  v5 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A371DC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v3[43] = v0;

  if (v0)
  {
    v7 = v3[38];
    v8 = v3[39];
    v9 = sub_221A3739C;
  }

  else
  {
    sub_221A01F0C((v3 + 7), qword_27CFB7A80, &unk_221BD2800);
    v7 = v3[38];
    v8 = v3[39];
    v9 = sub_221A37314;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_221A37314()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_4_3();

  return v0();
}

uint64_t sub_221A3739C()
{
  OUTLINED_FUNCTION_8_0();

  sub_221A01F0C(v0 + 56, qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221A37440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 280) = v23;
  *(v8 + 288) = v24;
  *(v8 + 264) = v21;
  *(v8 + 272) = v22;
  *(v8 + 248) = v19;
  *(v8 + 256) = v20;
  *(v8 + 130) = v18;
  *(v8 + 240) = v17;
  *(v8 + 208) = v15;
  *(v8 + 224) = v16;
  *(v8 + 192) = v14;
  *(v8 + 176) = a6;
  *(v8 + 184) = a8;
  *(v8 + 129) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  *(v8 + 144) = a2;
  *(v8 + 152) = a3;
  *(v8 + 136) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 304) = swift_task_alloc();
  v9 = sub_221BCCD88();
  *(v8 + 312) = v9;
  *(v8 + 320) = *(v9 - 8);
  *(v8 + 328) = swift_task_alloc();
  swift_getObjectType();
  v11 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A375D4, v11, v10);
}

uint64_t sub_221A375D4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 264);
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *(v2 + 16) = *(v0 + 280);
  if (v1)
  {
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  *(v0 + 344) = v4;
  *(v0 + 352) = v3;
  v5 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A3787C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v3[48] = v0;

  if (v0)
  {
    v7 = v3[43];
    v8 = v3[44];
    v9 = sub_221A37A68;
  }

  else
  {
    sub_221A01F0C((v3 + 7), qword_27CFB7A80, &unk_221BD2800);
    v7 = v3[43];
    v8 = v3[44];
    v9 = sub_221A379B4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_221A379B4()
{
  OUTLINED_FUNCTION_104();
  v1 = *(v0 + 136);

  v2 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);

  *v1 = v6;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  OUTLINED_FUNCTION_4_3();

  return v3();
}

uint64_t sub_221A37A68()
{
  OUTLINED_FUNCTION_8_0();

  sub_221A01F0C(v0 + 56, qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221A37B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v22;
  *(v8 + 256) = v23;
  *(v8 + 232) = v20;
  *(v8 + 240) = v21;
  *(v8 + 216) = v18;
  *(v8 + 224) = v19;
  *(v8 + 106) = v17;
  *(v8 + 200) = v16;
  *(v8 + 184) = v15;
  *(v8 + 168) = v14;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 105) = a6;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 272) = swift_task_alloc();
  v9 = sub_221BCCD88();
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  swift_getObjectType();
  v11 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A37C9C, v11, v10);
}

uint64_t sub_221A37C9C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[29];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_218_0(v2);
  if (v1)
  {
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  v0[39] = v4;
  v0[40] = v3;
  v5 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A37ECC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v3[44] = v0;

  if (v0)
  {
    v7 = v3[39];
    v8 = v3[40];
    v9 = sub_221A58F34;
  }

  else
  {
    sub_221A01F0C((v3 + 7), qword_27CFB7A80, &unk_221BD2800);
    v7 = v3[39];
    v8 = v3[40];
    v9 = sub_221A58F1C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_221A38004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 240) = v23;
  *(v8 + 248) = v24;
  *(v8 + 224) = v21;
  *(v8 + 232) = v22;
  *(v8 + 208) = v19;
  *(v8 + 216) = v20;
  *(v8 + 353) = v18;
  *(v8 + 200) = v17;
  *(v8 + 184) = v16;
  *(v8 + 168) = v15;
  *(v8 + 152) = v14;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 352) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 264) = swift_task_alloc();
  v9 = sub_221BCCD88();
  *(v8 + 272) = v9;
  *(v8 + 280) = *(v9 - 8);
  *(v8 + 288) = swift_task_alloc();
  swift_getObjectType();
  v11 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A3819C, v11, v10);
}

uint64_t sub_221A3819C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[28];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_221_0(v2);
  if (v1)
  {
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  v0[38] = v4;
  v0[39] = v3;
  v5 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A383EC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v3[43] = v0;

  if (v0)
  {
    v7 = v3[38];
    v8 = v3[39];
    v9 = sub_221A58F04;
  }

  else
  {
    sub_221A01F0C((v3 + 7), qword_27CFB7A80, &unk_221BD2800);
    v7 = v3[38];
    v8 = v3[39];
    v9 = sub_221A58F14;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_221A38524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v22;
  *(v8 + 256) = v23;
  *(v8 + 232) = v20;
  *(v8 + 240) = v21;
  *(v8 + 216) = v18;
  *(v8 + 224) = v19;
  *(v8 + 106) = v17;
  *(v8 + 200) = v16;
  *(v8 + 184) = v15;
  *(v8 + 168) = v14;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 105) = a6;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v8 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v8 + 272) = swift_task_alloc();
  v9 = sub_221BCCD88();
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  swift_getObjectType();
  v11 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A386B4, v11, v10);
}

uint64_t sub_221A386B4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[29];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_218_0(v2);
  if (v1)
  {
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  v0[39] = v4;
  v0[40] = v3;
  v5 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A388E4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v3[44] = v0;

  if (v0)
  {
    v7 = v3[39];
    v8 = v3[40];
    v9 = sub_221A38ABC;
  }

  else
  {
    sub_221A01F0C((v3 + 7), qword_27CFB7A80, &unk_221BD2800);
    v7 = v3[39];
    v8 = v3[40];
    v9 = sub_221A38A1C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_221A38A1C()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();

  OUTLINED_FUNCTION_125_1();

  return v3(v0, v1, v2, v3, v4, v5, v6, v7);
}