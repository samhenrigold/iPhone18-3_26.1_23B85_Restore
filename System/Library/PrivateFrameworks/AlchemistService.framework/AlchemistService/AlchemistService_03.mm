unint64_t sub_23EDA8B50()
{
  result = qword_27E388DF0;
  if (!qword_27E388DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388DF0);
  }

  return result;
}

unint64_t sub_23EDA8BB4()
{
  result = qword_27E388DF8;
  if (!qword_27E388DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388DF8);
  }

  return result;
}

uint64_t sub_23EDA8C08(task_info_t task_info_out, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  task_info_outCnt = 93;
  result = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (result)
  {
    sub_23EDC1EC0();

    v4 = sub_23EDC21E0();
    MEMORY[0x23EF237D0](v4);

    sub_23EDA8E2C();
    v5 = swift_allocError();
    *v6 = 0xD000000000000024;
    v6[1] = 0x800000023EDCB630;
    result = swift_willThrow();
    *a2 = v5;
  }

  return result;
}

unint64_t sub_23EDA8D70()
{
  v27 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *task_info_out = 0u;
  v4 = 0u;
  result = sub_23EDA8C08(task_info_out, &v2);
  if (!v0)
  {
    if ((*(&v13 + 1) & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    return v12 >> 20;
  }

  return result;
}

unint64_t sub_23EDA8E2C()
{
  result = qword_27E388E00;
  if (!qword_27E388E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E00);
  }

  return result;
}

uint64_t sub_23EDA8E80(uint64_t a1, int a2)
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

uint64_t sub_23EDA8EC8(uint64_t result, int a2, int a3)
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

id Image.size.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    Width = CGImageGetWidth(*v0);
    CGImageGetHeight(v1);
    return Width;
  }

  if (*(v0 + 8) != 1)
  {
    Width = CVPixelBufferGetWidth(*v0);
    CVPixelBufferGetHeight(v1);
    return Width;
  }

  result = [(CGImage *)v1 extent];
  v4 = v3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = [(CGImage *)v1 extent];
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 < 9.22337204e18)
  {
    return v4;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23EDA9034()
{
  sub_23EDC22F0();
  sub_23EDC1A50();
  return sub_23EDC2320();
}

uint64_t sub_23EDA90A0()
{
  sub_23EDC22F0();
  sub_23EDC1A50();
  return sub_23EDC2320();
}

void sub_23EDA90F0(BOOL *a2@<X8>)
{
  v3 = sub_23EDC2070();

  *a2 = v3 != 0;
}

void sub_23EDA9178(BOOL *a3@<X8>)
{
  v4 = sub_23EDC2070();

  *a3 = v4 != 0;
}

uint64_t sub_23EDA91D0(uint64_t a1)
{
  v2 = sub_23EDAA2B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDA920C(uint64_t a1)
{
  v2 = sub_23EDAA2B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Image.CodingError.errorDescription.getter()
{
  v0 = sub_23EDC0F10();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_23EDC1990();
  MEMORY[0x28223BE20](v1 - 8);
  sub_23EDC1930();
  sub_23EDC0F00();
  return sub_23EDC19F0();
}

unint64_t sub_23EDA93B4()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_23EDA9410@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23EDAAFB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23EDA9438(uint64_t a1)
{
  v2 = sub_23EDA9984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDA9474(uint64_t a1)
{
  v2 = sub_23EDA9984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDA94B0(uint64_t a1)
{
  v2 = sub_23EDA9A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDA94EC(uint64_t a1)
{
  v2 = sub_23EDA9A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDA9528(uint64_t a1)
{
  v2 = sub_23EDA9A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDA9564(uint64_t a1)
{
  v2 = sub_23EDA9A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDA95A0(uint64_t a1)
{
  v2 = sub_23EDA99D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDA95DC(uint64_t a1)
{
  v2 = sub_23EDA99D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Image.CodingError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E08, &qword_23EDC6F40);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E10, &qword_23EDC6F48);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E18, &qword_23EDC6F50);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E20, &qword_23EDC6F58);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDA9984();
  sub_23EDC23A0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_23EDA9A2C();
      v9 = v21;
      sub_23EDC2140();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_23EDA99D8();
      v9 = v24;
      sub_23EDC2140();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_23EDA9A80();
    sub_23EDC2140();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_23EDA9984()
{
  result = qword_27E388E28;
  if (!qword_27E388E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E28);
  }

  return result;
}

unint64_t sub_23EDA99D8()
{
  result = qword_27E388E30;
  if (!qword_27E388E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E30);
  }

  return result;
}

unint64_t sub_23EDA9A2C()
{
  result = qword_27E388E38;
  if (!qword_27E388E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E38);
  }

  return result;
}

unint64_t sub_23EDA9A80()
{
  result = qword_27E388E40;
  if (!qword_27E388E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E40);
  }

  return result;
}

uint64_t Image.CodingError.hashValue.getter()
{
  v1 = *v0;
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  return sub_23EDC2320();
}

uint64_t Image.CodingError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E48, &qword_23EDC6F60);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E50, &qword_23EDC6F68);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E58, &qword_23EDC6F70);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E60, &unk_23EDC6F78);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_23EDA9984();
  v15 = v36;
  sub_23EDC2360();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_23EDC2120();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_23ED928EC();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_23EDC1F30();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389020, &qword_23EDC5600);
      *v24 = &type metadata for Image.CodingError;
      sub_23EDC20A0();
      sub_23EDC1F10();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_23EDA9A2C();
          sub_23EDC2090();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_23EDA99D8();
          v26 = v17;
          sub_23EDC2090();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_23EDA9A80();
        sub_23EDC2090();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t Image.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E68, &qword_23EDC6F88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDAA2B8();
  sub_23EDC23A0();
  v15 = v7;
  LOBYTE(v16) = v8;
  v9 = sub_23EDAA30C();
  if (v10 >> 60 == 15)
  {
    sub_23EDAA57C();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v15 = v9;
    v16 = v10;
    v13 = v9;
    v14 = v10;
    sub_23EDAA5D0();
    sub_23EDC2190();
    (*(v4 + 8))(v6, v3);
    return sub_23ED6F900(v13, v14);
  }
}

unint64_t sub_23EDAA2B8()
{
  result = qword_27E388E70;
  if (!qword_27E388E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E70);
  }

  return result;
}

uint64_t sub_23EDAA30C()
{
  v1 = sub_23EDC16A0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v6 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      [v5 extent];
      v7 = [v6 createCGImage:v5 fromRect:?];
    }

    else
    {
      v8 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
      v6 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      [v8 extent];
      v7 = [v6 createCGImage:v8 fromRect:?];
    }

    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v5;
  }

  Mutable = CFDataCreateMutable(0, 0);
  if (Mutable)
  {
    v10 = Mutable;
    sub_23EDC1680();
    sub_23EDC1670();
    (*(v2 + 8))(v4, v1);
    v11 = sub_23EDC19A0();

    v12 = CGImageDestinationCreateWithData(v10, v11, 1uLL, 0);

    if (v12)
    {
      CGImageDestinationAddImage(v12, v7, 0);
      if (CGImageDestinationFinalize(v12))
      {
        v13 = v10;
        v14 = sub_23EDC0EC0();

        return v14;
      }
    }

    else
    {
    }
  }

  return 0;
}

unint64_t sub_23EDAA57C()
{
  result = qword_27E388E78;
  if (!qword_27E388E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E78);
  }

  return result;
}

unint64_t sub_23EDAA5D0()
{
  result = qword_27E388E80;
  if (!qword_27E388E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E80);
  }

  return result;
}

uint64_t Image.init(from:)@<X0>(void *a1@<X0>, CGImageRef *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388E88, &qword_23EDC6F90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDAA2B8();
  sub_23EDC2360();
  if (!v2)
  {
    sub_23EDAA8A8();
    sub_23EDC20B0();
    v9 = v24;
    if (v24 >> 60 == 15)
    {
      sub_23EDAA57C();
      swift_allocError();
      *v10 = 2;
      swift_willThrow();
LABEL_11:
      (*(v6 + 8))(v8, v5);
      return __swift_destroy_boxed_opaque_existential_0Tm(a1);
    }

    v25 = a2;
    v11 = v23;
    v12 = sub_23EDC0EA0();
    v13 = CGDataProviderCreateWithCFData(v12);

    if (v13)
    {
      v14 = CGImageSourceCreateWithDataProvider(v13, 0);
      if (v14)
      {
        v15 = v14;
        PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v14);
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, PrimaryImageIndex, 0);

        v17 = ImageAtIndex;
        if (ImageAtIndex)
        {
          sub_23ED6F900(v11, v9);
          (*(v6 + 8))(v8, v5);
          v18 = v25;
          *v25 = v17;
          *(v18 + 8) = 0;
          return __swift_destroy_boxed_opaque_existential_0Tm(a1);
        }
      }

      else
      {
      }
    }

    sub_23EDAA57C();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    sub_23ED6F900(v11, v9);
    goto LABEL_11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_23EDAA8A8()
{
  result = qword_27E388E90;
  if (!qword_27E388E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E90);
  }

  return result;
}

CGImageRef_optional __swiftcall Image.asCGImage()()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      [v1 extent];
      v1 = [v2 createCGImage:v1 fromRect:?];
    }

    else
    {
      v4 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
      v5 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
      [v4 extent];
      v1 = [v5 createCGImage:v4 fromRect:?];
    }
  }

  else
  {
    v3 = v1;
  }

  return v1;
}

unint64_t sub_23EDAAA2C()
{
  result = qword_27E388E98;
  if (!qword_27E388E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388E98);
  }

  return result;
}

uint64_t sub_23EDAAA90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_23EDAAAD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_23EDAAB98()
{
  result = qword_27E388EA0;
  if (!qword_27E388EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EA0);
  }

  return result;
}

unint64_t sub_23EDAABF0()
{
  result = qword_27E388EA8;
  if (!qword_27E388EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EA8);
  }

  return result;
}

unint64_t sub_23EDAAC48()
{
  result = qword_27E388EB0;
  if (!qword_27E388EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EB0);
  }

  return result;
}

unint64_t sub_23EDAACA0()
{
  result = qword_27E388EB8;
  if (!qword_27E388EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EB8);
  }

  return result;
}

unint64_t sub_23EDAACF8()
{
  result = qword_27E388EC0;
  if (!qword_27E388EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EC0);
  }

  return result;
}

unint64_t sub_23EDAAD50()
{
  result = qword_27E388EC8;
  if (!qword_27E388EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EC8);
  }

  return result;
}

unint64_t sub_23EDAADA8()
{
  result = qword_27E388ED0;
  if (!qword_27E388ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388ED0);
  }

  return result;
}

unint64_t sub_23EDAAE00()
{
  result = qword_27E388ED8;
  if (!qword_27E388ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388ED8);
  }

  return result;
}

unint64_t sub_23EDAAE58()
{
  result = qword_27E388EE0;
  if (!qword_27E388EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EE0);
  }

  return result;
}

unint64_t sub_23EDAAEB0()
{
  result = qword_27E388EE8;
  if (!qword_27E388EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EE8);
  }

  return result;
}

unint64_t sub_23EDAAF08()
{
  result = qword_27E388EF0;
  if (!qword_27E388EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EF0);
  }

  return result;
}

unint64_t sub_23EDAAF60()
{
  result = qword_27E388EF8;
  if (!qword_27E388EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E388EF8);
  }

  return result;
}

uint64_t sub_23EDAAFB4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000023EDCB6C0 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023EDCB6E0 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023EDCB700 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_23EDC2240();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_23EDAB140(uint64_t a1@<X8>)
{
  if (*(v1 + 8) != 2)
  {
    goto LABEL_5;
  }

  v3 = *v1;
  IOSurface = CVPixelBufferGetIOSurface(v3);
  if (!IOSurface)
  {

LABEL_5:
    v8 = 0;
    v7 = 1;
    goto LABEL_6;
  }

  v5 = IOSurface;

  ID = IOSurfaceGetID(v5);
  v7 = 0;
  v8 = ID;
LABEL_6:
  *(a1 + 4) = 0;
  *a1 = v8;
  *(a1 + 5) = v7;
}

void sub_23EDAB1FC(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389028, &unk_23EDC78F0);
  sub_23EDC17B0();
  if (v7)
  {
    v2 = swift_unknownObjectRetain();
    v3 = IOSurfaceLookupFromXPCObject(v2);
    if (v3)
    {
      v4 = v3;
      sub_23ED86F84(v3, a1);
      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_23ED87720();
      swift_allocError();
      *v6 = 1;
      *(v6 + 4) = 1;
      swift_willThrow();
      swift_unknownObjectRelease_n();
    }
  }

  else
  {
    sub_23ED87720();
    swift_allocError();
    *v5 = 0;
    *(v5 + 4) = 1;
    swift_willThrow();
  }
}

void sub_23EDAB35C(uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389028, &unk_23EDC78F0);
  sub_23EDC17B0();
  if (v8)
  {
    v3 = swift_unknownObjectRetain();
    v4 = IOSurfaceLookupFromXPCObject(v3);
    if (v4)
    {
      v5 = v4;
      sub_23EDB9B7C(v4, x8_0);
      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_23ED87720();
      swift_allocError();
      *v7 = 1;
      *(v7 + 4) = 1;
      swift_willThrow();
      swift_unknownObjectRelease_n();
    }
  }

  else
  {
    sub_23ED87720();
    swift_allocError();
    *v6 = 0;
    *(v6 + 4) = 1;
    swift_willThrow();
  }
}

void sub_23EDAB4DC(uint64_t a1, void *a2, char a3)
{
  if (a3 == 2)
  {
    v3 = a2;
    IOSurface = CVPixelBufferGetIOSurface(v3);
    if (IOSurface)
    {
      v5 = IOSurface;

      IOSurfaceGetID(v5);
      XPCObject = IOSurfaceCreateXPCObject(v5);
      MEMORY[0x28223BE20](XPCObject);
      sub_23EDC17B0();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_23EDAB5CC(uint64_t a1)
{
  v2 = sub_23EDC1970();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_23EDC0F10();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_23EDC1990();
  MEMORY[0x28223BE20](v4 - 8);
  if ((a1 & 0x100000000) != 0)
  {
    sub_23EDC1930();
  }

  else
  {
    sub_23EDC1960();
    sub_23EDC1950();
    sub_23EDC1940();
    sub_23EDC1950();
    sub_23EDC1980();
  }

  sub_23EDC0F00();
  return sub_23EDC19F0();
}

uint64_t sub_23EDAB7C0(void *a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389180, &qword_23EDC7BC0);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389188, &qword_23EDC7BC8);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389190, &qword_23EDC7BD0);
  v20 = *(v9 - 8);
  v21 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389198, &qword_23EDC7BD8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB1200();
  v16 = v26;
  sub_23EDC23A0();
  if ((v16 & 0x100000000) != 0)
  {
    v19 = (v13 + 8);
    if (v16)
    {
      v28 = 1;
      sub_23EDB12A8();
      sub_23EDC2140();
      (*(v22 + 8))(v8, v23);
    }

    else
    {
      v27 = 0;
      sub_23EDB12FC();
      sub_23EDC2140();
      (*(v20 + 8))(v11, v21);
    }

    return (*v19)(v15, v12);
  }

  else
  {
    v29 = 2;
    sub_23EDB1254();
    sub_23EDC2140();
    v17 = v25;
    sub_23EDC21A0();
    (*(v24 + 8))(v5, v17);
    return (*(v13 + 8))(v15, v12);
  }
}

unint64_t sub_23EDABB74()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_23EDABBCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23EDB0AEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23EDABBF4(uint64_t a1)
{
  v2 = sub_23EDB1200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDABC30(uint64_t a1)
{
  v2 = sub_23EDB1200();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23EDABC84(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E72757465527663 && a2 == 0xE800000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_23EDC2240();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_23EDABD0C(uint64_t a1)
{
  v2 = sub_23EDB1254();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDABD48(uint64_t a1)
{
  v2 = sub_23EDB1254();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDABD84(uint64_t a1)
{
  v2 = sub_23EDB12A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDABDC0(uint64_t a1)
{
  v2 = sub_23EDB12A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDABDFC(uint64_t a1)
{
  v2 = sub_23EDB12FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDABE38(uint64_t a1)
{
  v2 = sub_23EDB12FC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23EDABE94@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_23EDB0C0C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_23EDABEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a1);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(a2 + 56))(v10, a2);
    return (*(v11 + 8))(v8, v10);
  }
}

uint64_t sub_23EDAC0D4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = (*(a2 + 64))();
  if (!v3)
  {
    return (*(*(a1 - 8) + 56))(a3, 0, 1, a1);
  }

  return result;
}

uint64_t sub_23EDAC150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a2);
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    return (*(v6 + 8))(v8, a2);
  }

  (*(a3 + 72))(a1, v10, a3);
  return (*(v11 + 8))(v8, v10);
}

uint64_t sub_23EDAC320(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23EDAC468(uint64_t a1)
{
  result = sub_23EDC1E40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23EDAC4E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + 4) & ~v7);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))((a1 + v7 + 4) & ~v7);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_23EDAC680(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 4) & ~v10);
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v17 = ~v9 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_46:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = *(v7 + 56);
    v21 = &a1[v10 + 4] & ~v10;
    v22 = a2 + 1;

    v20(v21, v22);
  }
}

uint64_t sub_23EDAC8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23EDAC940@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a4;
  v73 = sub_23EDC1F30();
  v65 = *(v73 - 8);
  v7 = MEMORY[0x28223BE20](v73);
  v70 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v69 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v54 - v13;
  v62 = sub_23EDC17D0();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23EDC1FC0();
  v67 = *(v15 - 8);
  v68 = v15;
  MEMORY[0x28223BE20](v15);
  v64 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v76 = &v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v77 = a2;
  v74 = a3;
  v25 = type metadata accessor for XPCReferenceShareableWrapper(0, a2, a3, v24);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v54 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = v81;
  sub_23EDC2340();
  if (v29)
  {
    v50 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  v56 = v28;
  v57 = v26;
  v58 = v25;
  v81 = a1;
  sub_23EDC1FB0();
  __swift_project_boxed_opaque_existential_1(v79, v80);
  v30 = v74;
  v31 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v32 = v76;
  sub_23EDC2260();
  v33 = v30;
  sub_23EDB04B8(v23, v21);
  v35 = v67;
  v34 = v68;
  if ((*(v67 + 48))(v21, 1, v68) == 1)
  {
    (*(v66 + 8))(v32, v31);
    sub_23ED6FA68(v23, &qword_27E388470, &qword_23EDC5ED0);
    sub_23ED6FA68(v21, &qword_27E388470, &qword_23EDC5ED0);
    v37 = v71;
    v36 = v72;
    v38 = v77;
    v39 = v69;
  }

  else
  {
    v40 = v64;
    (*(v35 + 32))(v64, v21, v34);
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v41 = sub_23EDC2350();
    if (*(v41 + 16) && (v42 = sub_23ED9C7E0(v40), (v43 & 1) != 0))
    {
      v55 = v23;
      sub_23ED71DA8(*(v41 + 56) + 32 * v42, v78);

      v44 = v63;
      v45 = v62;
      v46 = swift_dynamicCast();
      v47 = v61;
      (*(v61 + 56))(v44, v46 ^ 1u, 1, v45);
      v48 = (*(v47 + 48))(v44, 1, v45);
      v39 = v69;
      if (v48 != 1)
      {
        v52 = v59;
        (*(v47 + 32))(v59, v44, v45);
        v53 = v76;
        (*(v33 + 64))(v76, v52);
        (*(v47 + 8))(v52, v45);
        (*(v67 + 8))(v64, v68);
        (*(v66 + 8))(v53, AssociatedTypeWitness);
        sub_23ED6FA68(v55, &qword_27E388470, &qword_23EDC5ED0);
        v37 = v71;
        v36 = v72;
        v38 = v77;
        v39 = v60;
        goto LABEL_11;
      }

      (*(v67 + 8))(v64, v68);
      (*(v66 + 8))(v76, AssociatedTypeWitness);
      sub_23ED6FA68(v55, &qword_27E388470, &qword_23EDC5ED0);
    }

    else
    {

      (*(v67 + 8))(v40, v68);
      (*(v66 + 8))(v76, v31);
      sub_23ED6FA68(v23, &qword_27E388470, &qword_23EDC5ED0);
      v44 = v63;
      (*(v61 + 56))(v63, 1, 1, v62);
      v39 = v69;
    }

    sub_23ED6FA68(v44, &unk_27E389000, &qword_23EDC78D0);
    v37 = v71;
    v36 = v72;
    v38 = v77;
  }

  __swift_project_boxed_opaque_existential_1(v79, v80);
  sub_23EDC2260();
LABEL_11:
  v49 = v56;
  (*(v37 + 32))(v56, v39, v38);
  __swift_destroy_boxed_opaque_existential_0Tm(v79);
  (*(v57 + 32))(v36, v49, v58);
  v50 = v81;
  return __swift_destroy_boxed_opaque_existential_0Tm(v50);
}

uint64_t sub_23EDAD4F4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v61 = *(a2 + 24);
  v60 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = sub_23EDC1E40();
  v49 = *(v50 - 8);
  v5 = MEMORY[0x28223BE20](v50);
  v51 = &v46 - v6;
  v54 = AssociatedTypeWitness;
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v5);
  v52 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v46 - v9;
  v10 = sub_23EDC17D0();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23EDC1FC0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  sub_23EDC1FB0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v12;
  v23 = v13;
  sub_23EDC2380();
  sub_23EDB04B8(v21, v19);
  if ((*(v13 + 48))(v19, 1, v22) == 1)
  {
    sub_23ED6FA68(v19, &qword_27E388470, &qword_23EDC5ED0);
LABEL_9:
    __swift_mutable_project_boxed_opaque_existential_0(v63, v64);
    sub_23EDC2270();
    goto LABEL_10;
  }

  (*(v13 + 32))(v15, v19, v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_23EDC2390();
  if (!*(v24 + 16) || (v25 = sub_23ED9C7E0(v15), (v26 & 1) == 0))
  {

    (*(v13 + 8))(v15, v22);
    v27 = v56;
    (*(v57 + 56))(v56, 1, 1, v58);
    goto LABEL_8;
  }

  v47 = v22;
  v48 = v15;
  sub_23ED71DA8(*(v24 + 56) + 32 * v25, v62);

  v27 = v56;
  v28 = v58;
  v29 = swift_dynamicCast();
  v30 = v57;
  (*(v57 + 56))(v27, v29 ^ 1u, 1, v28);
  v31 = (*(v30 + 48))(v27, 1, v28);
  v33 = v60;
  v32 = v61;
  if (v31 == 1)
  {
    (*(v23 + 8))(v48, v47);
LABEL_8:
    sub_23ED6FA68(v27, &unk_27E389000, &qword_23EDC78D0);
    goto LABEL_9;
  }

  (*(v30 + 32))(v55, v27, v28);
  v35 = v51;
  (*(v32 + 56))(v33, v32);
  v36 = v30;
  v38 = v53;
  v37 = v54;
  if ((*(v53 + 48))(v35, 1, v54) == 1)
  {
    (*(v36 + 8))(v55, v58);
    (*(v23 + 8))(v48, v47);
    (*(v49 + 8))(v35, v50);
    goto LABEL_9;
  }

  (*(v38 + 32))(v52, v35, v37);
  v56 = __swift_mutable_project_boxed_opaque_existential_0(v63, v64);
  swift_getAssociatedConformanceWitness();
  v39 = v59;
  sub_23EDC2270();
  if (v39)
  {
    v40 = v23;
    v41 = v55;
    v43 = v58;
    v44 = v48;
    v45 = v47;
    (*(v53 + 8))(v52, v54);
    (*(v57 + 8))(v41, v43);
    (*(v40 + 8))(v44, v45);
  }

  else
  {
    v42 = v55;
    (*(v32 + 72))(v55, v33, v32);
    (*(v53 + 8))(v52, v54);
    (*(v57 + 8))(v42, v58);
    (*(v23 + 8))(v48, v47);
  }

LABEL_10:
  sub_23ED6FA68(v21, &qword_27E388470, &qword_23EDC5ED0);
  return __swift_destroy_boxed_opaque_existential_0Tm(v63);
}

uint64_t sub_23EDADD10(void *a1, uint64_t a2, uint64_t a3)
{
  v86 = sub_23EDC1F30();
  v81 = *(v86 - 8);
  v6 = MEMORY[0x28223BE20](v86);
  v68 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v77 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v78 = &v53 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v53 - v13;
  MEMORY[0x28223BE20](v12);
  v80 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  MEMORY[0x28223BE20](v15 - 8);
  v72 = &v53 - v16;
  v71 = sub_23EDC17D0();
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_23EDC1FC0();
  v74 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a3;
  v85 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v53 - v27;
  v29 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v30 = v83;
  sub_23EDC2330();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v29;
  }

  v83 = v28;
  v70 = v26;
  v82 = v22;
  v76 = AssociatedTypeWitness;
  v61 = v19;
  v69 = a1;
  v29 = sub_23EDC1870();
  v90 = v29;
  __swift_project_boxed_opaque_existential_1(&v88, v89);
  if (sub_23EDC2210())
  {
    goto LABEL_16;
  }

  v66 = (v74 + 48);
  v60 = (v74 + 32);
  v58 = (v75 + 56);
  v57 = (v75 + 48);
  v56 = (v75 + 32);
  v55 = v84 + 64;
  v54 = (v75 + 8);
  v59 = (v74 + 8);
  v65 = (v73 + 8);
  v75 = v81 + 88;
  LODWORD(v74) = *MEMORY[0x277D84160];
  v62 = *MEMORY[0x277D84158];
  v73 = v81 + 96;
  v53 = (v67 + 2);
  ++v67;
  v31 = v80;
  v32 = v76;
  do
  {
    v36 = v83;
    sub_23EDC1FB0();
    __swift_mutable_project_boxed_opaque_existential_0(&v88, v89);
    swift_getAssociatedConformanceWitness();
    sub_23EDC2200();
    v37 = v70;
    sub_23EDB04B8(v36, v70);
    v38 = v79;
    if ((*v66)(v37, 1, v79) == 1)
    {
      (*v65)(v82, v32);
      sub_23ED6FA68(v36, &qword_27E388470, &qword_23EDC5ED0);
      v33 = v37;
      v34 = &qword_27E388470;
      v35 = &qword_23EDC5ED0;
      goto LABEL_6;
    }

    v39 = v61;
    (*v60)(v61, v37, v38);
    __swift_project_boxed_opaque_existential_1(v69, v69[3]);
    v40 = v39;
    v41 = sub_23EDC2350();
    if (!*(v41 + 16) || (v42 = sub_23ED9C7E0(v39), (v43 & 1) == 0))
    {

      (*v59)(v39, v79);
      v32 = v76;
      (*v65)(v82, v76);
      sub_23ED6FA68(v83, &qword_27E388470, &qword_23EDC5ED0);
      v44 = v72;
      (*v58)(v72, 1, 1, v71);
      goto LABEL_13;
    }

    sub_23ED71DA8(*(v41 + 56) + 32 * v42, &v87);

    v44 = v72;
    v45 = v71;
    v46 = swift_dynamicCast();
    (*v58)(v44, v46 ^ 1u, 1, v45);
    v47 = (*v57)(v44, 1, v45);
    v32 = v76;
    if (v47 == 1)
    {
      (*v59)(v40, v79);
      (*v65)(v82, v32);
      sub_23ED6FA68(v83, &qword_27E388470, &qword_23EDC5ED0);
LABEL_13:
      v33 = v44;
      v34 = &unk_27E389000;
      v35 = &qword_23EDC78D0;
      goto LABEL_6;
    }

    v48 = v64;
    (*v56)(v64, v44, v45);
    v49 = v85;
    (*(v84 + 64))(v82, v48, v85);
    (*v53)(v63, v31, v49);
    sub_23EDC1B80();
    sub_23EDC1B60();
    (*v67)(v31, v49);
    (*v54)(v48, v45);
    (*v59)(v61, v79);
    (*v65)(v82, v32);
    v33 = v83;
    v34 = &qword_27E388470;
    v35 = &qword_23EDC5ED0;
LABEL_6:
    sub_23ED6FA68(v33, v34, v35);
    __swift_project_boxed_opaque_existential_1(&v88, v89);
  }

  while ((sub_23EDC2210() & 1) == 0);
  v29 = v90;
LABEL_16:
  v87 = v29;
  sub_23EDC1B80();
  swift_getWitnessTable();
  v50 = sub_23EDC1D20();
  v51 = v69;
  if (v50)
  {

    v29 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v88);
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  return v29;
}

uint64_t sub_23EDAEB78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = sub_23EDC1E40();
  v73 = *(v60 - 8);
  v11 = MEMORY[0x28223BE20](v60);
  v63 = v51 - v12;
  v64 = AssociatedTypeWitness;
  v76 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v62 = v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E389000, &qword_23EDC78D0);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = v51 - v15;
  v71 = sub_23EDC17D0();
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v65 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_23EDC1FC0();
  v17 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v72 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v78 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v81 = v51 - v23;
  v79 = *(a3 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v87 = v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v25;
  MEMORY[0x28223BE20](v24);
  v82 = v51 - v26;
  v27 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_23EDC2370();
  if (!a2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(&v84);
  }

  if (!sub_23EDC1B70())
  {
LABEL_27:

    return __swift_destroy_boxed_opaque_existential_0Tm(&v84);
  }

  v28 = 0;
  v77 = (v79 + 16);
  v74 = (v17 + 48);
  v75 = (v79 + 32);
  v67 = (v17 + 32);
  v66 = (v68 + 7);
  v61 = (v68 + 6);
  v57 = (v68 + 4);
  v56 = a4 + 56;
  v55 = (v76 + 6);
  v53 = (v76 + 4);
  v51[2] = a4 + 72;
  v54 = v76 + 1;
  v58 = (v68 + 1);
  v68 = (v17 + 8);
  v76 = (v79 + 8);
  v52 = (v73 + 8);
  v29 = v80;
  while (1)
  {
    v30 = sub_23EDC1B40();
    sub_23EDC1B10();
    if (v30)
    {
      (*(v79 + 16))(v82, a2 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v28, a3);
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    result = sub_23EDC1EE0();
    if (v59 != 8)
    {
      break;
    }

    v83 = result;
    (*v77)(v82, &v83, a3);
    swift_unknownObjectRelease();
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_6:
    v32 = a4;
    (*v75)(v87, v82, a3);
    v33 = v81;
    sub_23EDC1FB0();
    v34 = v33;
    v35 = v78;
    sub_23EDB04B8(v34, v78);
    if ((*v74)(v35, 1, v29) == 1)
    {
      v36 = v35;
      v37 = &qword_27E388470;
      v38 = &qword_23EDC5ED0;
      goto LABEL_14;
    }

    v73 = v5;
    v39 = v72;
    (*v67)(v72, v35, v29);
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v40 = sub_23EDC2390();
    if (!*(v40 + 16) || (v41 = sub_23ED9C7E0(v39), (v42 & 1) == 0))
    {

      (*v68)(v39, v80);
      v43 = v69;
      (*v66)(v69, 1, 1, v71);
LABEL_13:
      v5 = v73;
      v36 = v43;
      v37 = &unk_27E389000;
      v38 = &qword_23EDC78D0;
LABEL_14:
      sub_23ED6FA68(v36, v37, v38);
      goto LABEL_15;
    }

    sub_23ED71DA8(*(v40 + 56) + 32 * v41, &v83);

    v43 = v69;
    v44 = v71;
    v45 = swift_dynamicCast();
    (*v66)(v43, v45 ^ 1u, 1, v44);
    if ((*v61)(v43, 1, v44) == 1)
    {
      (*v68)(v72, v80);
      goto LABEL_13;
    }

    (*v57)(v65, v43, v44);
    a4 = v32;
    v46 = v63;
    (*(v32 + 56))(a3, v32);
    v47 = v64;
    v48 = (*v55)(v46, 1, v64);
    v5 = v73;
    if (v48 != 1)
    {
      (*v53)(v62, v46, v47);
      v51[1] = v86;
      v51[0] = __swift_mutable_project_boxed_opaque_existential_0(&v84, v85);
      swift_getAssociatedConformanceWitness();
      sub_23EDC2220();
      if (!v5)
      {
        v49 = v65;
        (*(a4 + 72))(v65, a3, a4);
        v5 = 0;
        v29 = v80;
        (*v54)(v62, v64);
        (*v58)(v49, v71);
        (*v68)(v72, v29);
        goto LABEL_17;
      }

      (*v54)(v62, v64);
      (*v58)(v65, v71);
      (*v68)(v72, v80);
LABEL_29:
      sub_23ED6FA68(v81, &qword_27E388470, &qword_23EDC5ED0);
      (*v76)(v87, a3);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v84);
    }

    (*v58)(v65, v71);
    (*v68)(v72, v80);
    (*v52)(v46, v60);
LABEL_15:
    __swift_mutable_project_boxed_opaque_existential_0(&v84, v85);
    sub_23EDC2220();
    if (v5)
    {

      goto LABEL_29;
    }

    a4 = v32;
    v29 = v80;
LABEL_17:
    sub_23ED6FA68(v81, &qword_27E388470, &qword_23EDC5ED0);
    (*v76)(v87, a3);
    ++v28;
    if (v31 == sub_23EDC1B70())
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23EDAF77C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965636166727573 && a2 == 0xE900000000000044;
  if (v4 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7250746E65696C63 && a2 == 0xEF6174614479786FLL)
  {

    return 1;
  }

  else
  {
    v6 = sub_23EDC2240();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_23EDAF890(char a1)
{
  sub_23EDC22F0();
  MEMORY[0x23EF24060](a1 & 1);
  return sub_23EDC2320();
}

uint64_t sub_23EDAF8D8(char a1)
{
  if (a1)
  {
    return 0x7250746E65696C63;
  }

  else
  {
    return 0x4965636166727573;
  }
}

uint64_t sub_23EDAF920(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v11 = *(a2 + 16);
  v13 = v11;
  v14 = v3;
  v15 = v4;
  v12 = v4;
  type metadata accessor for ProxyWithAnIOSurface.CodingKeys(255, &v13);
  swift_getWitnessTable();
  v5 = sub_23EDC21C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDC23A0();
  LOBYTE(v13) = 0;
  v9 = v16;
  sub_23EDC21B0();
  if (!v9)
  {
    LOBYTE(v13) = 1;
    sub_23EDC2150();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23EDAFAD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a6;
  v11 = sub_23EDC1E40();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x28223BE20](v11);
  v29 = &v23 - v12;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  type metadata accessor for ProxyWithAnIOSurface.CodingKeys(255, &v33);
  swift_getWitnessTable();
  v32 = sub_23EDC2130();
  v27 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v14 = &v23 - v13;
  v28 = a2;
  v33 = a2;
  v34 = a3;
  v30 = a4;
  v35 = a4;
  v36 = a5;
  v15 = type metadata accessor for ProxyWithAnIOSurface(0, &v33);
  v23 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v14;
  v18 = v37;
  sub_23EDC2360();
  if (v18)
  {
    v22 = a1;
  }

  else
  {
    v19 = v27;
    v37 = a1;
    v20 = v29;
    LOBYTE(v33) = 0;
    *v17 = sub_23EDC2110();
    LOBYTE(v33) = 1;
    sub_23EDC20B0();
    (*(v19 + 8))(v31, v32);
    (*(v24 + 32))(&v17[*(v15 + 52)], v20, v25);
    (*(v23 + 32))(v26, v17, v15);
    v22 = v37;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v22);
}

uint64_t sub_23EDAFE0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_23EDADD10(a1, *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_23EDAFEA4()
{
  sub_23EDC22F0();
  sub_23EDAF868(v2, *v0);
  return sub_23EDC2320();
}

uint64_t sub_23EDAFF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23EDAF77C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23EDAFF38@<X0>(_BYTE *a2@<X8>)
{
  result = sub_23EDB11F8();
  *a2 = result;
  return result;
}

uint64_t sub_23EDAFF6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_23EDAFFC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_23EDB0050(void *a1, uint64_t a2, void *a3)
{
  sub_23EDC21E0();
  v5 = sub_23EDC1A20();

  xpc_dictionary_set_value(a1, (v5 + 32), a3);
}

uint64_t sub_23EDB0104(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_23EDC1FC0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23EDC1FB0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = &qword_27E388470;
    v14 = &qword_23EDC5ED0;
    v15 = v8;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16 = a3(a1, a2);
    if (*(v16 + 16))
    {
      v17 = sub_23ED9C7E0(v12);
      if (v18)
      {
        sub_23ED71DA8(*(v16 + 56) + 32 * v17, v20);
        (*(v10 + 8))(v12, v9);

        sub_23ED6FA68(v20, &qword_27E3885E8, &qword_23EDC4840);
        return 1;
      }
    }

    (*(v10 + 8))(v12, v9);
    memset(v20, 0, sizeof(v20));
    v13 = &qword_27E3885E8;
    v14 = &qword_23EDC4840;
    v15 = v20;
  }

  sub_23ED6FA68(v15, v13, v14);
  return 0;
}

void sub_23EDB0348(uint64_t a1@<X8>)
{
  IOSurface = CVPixelBufferGetIOSurface(*(v1 + 24));
  v4 = IOSurface;
  if (IOSurface)
  {
    v5 = IOSurface;
    ID = IOSurfaceGetID(v5);

    v7 = ID;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 4) = 0;
  *a1 = v7;
  *(a1 + 5) = v4 == 0;
}

void sub_23EDB03E8()
{
  IOSurface = CVPixelBufferGetIOSurface(*(v0 + 24));
  if (IOSurface)
  {
    v2 = IOSurface;
    IOSurfaceGetID(v2);
    XPCObject = IOSurfaceCreateXPCObject(v2);
    MEMORY[0x28223BE20](XPCObject);
    sub_23EDC17B0();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_23EDB04B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388470, &qword_23EDC5ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23EDB0560@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_23EDC21E0();
  v4 = sub_23EDC1A20();

  v5 = xpc_dictionary_get_value(a1, (v4 + 32));

  *a2 = v5;
  return result;
}

uint64_t sub_23EDB0610(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23EDB0680(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_23EDB07C0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCReferenceShareableDecodingError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCReferenceShareableDecodingError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_23EDB0A40(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EDB0A5C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_23EDB0AEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x800000023EDCB780 == a2;
  if (v4 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023EDCB7A0 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000024 && 0x800000023EDCB7C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23EDC2240();

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

unint64_t sub_23EDB0C0C(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389140, &qword_23EDC7BA0);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v38 = &v31 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389148, &qword_23EDC7BA8);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389150, &qword_23EDC7BB0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389158, &qword_23EDC7BB8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v12 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_23EDB1200();
  v13 = v39;
  sub_23EDC2360();
  if (!v13)
  {
    v32 = v5;
    v39 = 0;
    v14 = v37;
    v15 = v38;
    v16 = v9;
    v17 = sub_23EDC2120();
    v18 = (2 * *(v17 + 16)) | 1;
    v41 = v17;
    v42 = v17 + 32;
    v43 = 0;
    v44 = v18;
    v19 = sub_23ED928EC();
    if (v19 == 3 || v43 != v44 >> 1)
    {
      v23 = sub_23EDC1F30();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389020, &qword_23EDC5600);
      *v25 = &type metadata for XPCReferenceShareableDecodingError;
      sub_23EDC20A0();
      sub_23EDC1F10();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
      swift_willThrow();
    }

    else if (v19)
    {
      if (v19 == 1)
      {
        v45 = 1;
        sub_23EDB12A8();
        v20 = v39;
        sub_23EDC2090();
        if (!v20)
        {
          (*(v33 + 8))(v4, v35);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          v21 = 1;
          v22 = 1;
LABEL_16:
          __swift_destroy_boxed_opaque_existential_0Tm(v40);
          return v21 | (v22 << 32);
        }
      }

      else
      {
        v45 = 2;
        sub_23EDB1254();
        v28 = v39;
        sub_23EDC2090();
        if (!v28)
        {
          v29 = v34;
          v30 = sub_23EDC2100();
          (*(v36 + 8))(v15, v29);
          (*(v9 + 8))(v11, v8);
          swift_unknownObjectRelease();
          v22 = 0;
          v21 = v30;
          goto LABEL_16;
        }
      }
    }

    else
    {
      v45 = 0;
      sub_23EDB12FC();
      v27 = v39;
      sub_23EDC2090();
      if (!v27)
      {
        (*(v14 + 8))(v7, v32);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v21 = 0;
        v22 = 1;
        goto LABEL_16;
      }
    }

    (*(v16 + 8))(v11, v8);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v40);
}

unint64_t sub_23EDB1200()
{
  result = qword_27E389160;
  if (!qword_27E389160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389160);
  }

  return result;
}

unint64_t sub_23EDB1254()
{
  result = qword_27E389168;
  if (!qword_27E389168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389168);
  }

  return result;
}

unint64_t sub_23EDB12A8()
{
  result = qword_27E389170;
  if (!qword_27E389170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389170);
  }

  return result;
}

unint64_t sub_23EDB12FC()
{
  result = qword_27E389178;
  if (!qword_27E389178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389178);
  }

  return result;
}

unint64_t sub_23EDB1394()
{
  result = qword_27E3891A0;
  if (!qword_27E3891A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891A0);
  }

  return result;
}

unint64_t sub_23EDB13EC()
{
  result = qword_27E3891A8;
  if (!qword_27E3891A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891A8);
  }

  return result;
}

unint64_t sub_23EDB1444()
{
  result = qword_27E3891B0;
  if (!qword_27E3891B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891B0);
  }

  return result;
}

unint64_t sub_23EDB149C()
{
  result = qword_27E3891B8;
  if (!qword_27E3891B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891B8);
  }

  return result;
}

unint64_t sub_23EDB14F4()
{
  result = qword_27E3891C0;
  if (!qword_27E3891C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891C0);
  }

  return result;
}

unint64_t sub_23EDB154C()
{
  result = qword_27E3891C8;
  if (!qword_27E3891C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891C8);
  }

  return result;
}

unint64_t sub_23EDB15A4()
{
  result = qword_27E3891D0;
  if (!qword_27E3891D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891D0);
  }

  return result;
}

unint64_t sub_23EDB15FC()
{
  result = qword_27E3891D8;
  if (!qword_27E3891D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891D8);
  }

  return result;
}

unint64_t sub_23EDB1654()
{
  result = qword_27E3891E0;
  if (!qword_27E3891E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891E0);
  }

  return result;
}

unint64_t sub_23EDB16AC()
{
  result = qword_27E3891E8;
  if (!qword_27E3891E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891E8);
  }

  return result;
}

void ClientInfo.init()(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 processInfo];
  v4 = [v2 processInfo];

  v5 = [v2 processInfo];
  [v5 processIdentifier];

  v6 = [v3 processName];
  v7 = sub_23EDC19D0();
  v9 = v8;

  LODWORD(v6) = [v3 processIdentifier];
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6;
}

uint64_t ClientInfo.name.getter()
{
  v1 = *v0;

  return v1;
}

void ClientInfo.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void ClientInfo.init(processInfo:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 processInfo];

  v6 = [v4 processInfo];
  [v6 processIdentifier];

  v7 = [a1 processName];
  v8 = sub_23EDC19D0();
  v10 = v9;

  *a2 = v8;
  *(a2 + 8) = v10;
  LODWORD(v7) = [a1 processIdentifier];

  *(a2 + 16) = v7;
}

void ClientInfo.init(pid:)(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 processInfo];

  v6 = [v4 processInfo];
  [v6 processIdentifier];

  v7 = [v4 processInfo];
  v8 = [v7 processName];

  v9 = sub_23EDC19D0();
  v11 = v10;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = a1;
}

void ClientInfo.init(pid:name:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  v9 = [v8 processInfo];

  v10 = [v8 processInfo];
  [v10 processIdentifier];

  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = a1;
}

uint64_t ClientInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23EDC1EC0();

  strcpy(v5, "Process Name:");
  MEMORY[0x23EF237D0](v1, v2);
  MEMORY[0x23EF237D0](977553696, 0xE400000000000000);
  v3 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v3);

  return v5[0];
}

BOOL static ClientInfo.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_23EDC2240();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_23EDB1CA4()
{
  if (*v0)
  {
    return 6580592;
  }

  else
  {
    return 1701667182;
  }
}

void sub_23EDB1CD0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_23EDC2240() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23EDC2240();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_23EDB1DAC(uint64_t a1)
{
  v2 = sub_23EDB1FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDB1DE8(uint64_t a1)
{
  v2 = sub_23EDB1FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClientInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3891F0, &qword_23EDC7FB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB1FB8();
  sub_23EDC23A0();
  v12 = 0;
  v7 = v9[1];
  sub_23EDC2160();
  if (!v7)
  {
    v11 = 1;
    sub_23EDC21A0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23EDB1FB8()
{
  result = qword_27E3891F8;
  if (!qword_27E3891F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3891F8);
  }

  return result;
}

uint64_t ClientInfo.hashValue.getter()
{
  sub_23EDC22F0();
  sub_23EDC1A50();
  sub_23EDC2310();
  return sub_23EDC2320();
}

void ClientInfo.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389200, &qword_23EDC7FB8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = objc_opt_self();
  v9 = [v8 processInfo];
  v10 = [v9 processName];

  sub_23EDC19D0();
  v11 = [v8 processInfo];
  [v11 processIdentifier];

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB1FB8();
  sub_23EDC2360();
  if (!v2)
  {
    v12 = v18;
    v20 = 0;
    v13 = sub_23EDC20C0();
    v15 = v14;
    v17 = v13;

    v19 = 1;
    v16 = sub_23EDC2100();
    (*(v5 + 8))(v7, v4);
    *v12 = v17;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_23EDB234C()
{
  sub_23EDC22F0();
  sub_23EDC1A50();
  sub_23EDC2310();
  return sub_23EDC2320();
}

uint64_t sub_23EDB23E8()
{
  sub_23EDC22F0();
  sub_23EDC1A50();
  sub_23EDC2310();
  return sub_23EDC2320();
}

unint64_t sub_23EDB244C()
{
  result = qword_27E389208;
  if (!qword_27E389208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389208);
  }

  return result;
}

BOOL sub_23EDB24A4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_23EDC2240();
  result = 0;
  if (v5)
  {
    return v2 == v3;
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

uint64_t sub_23EDB2518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_23EDB2560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23EDB25C4()
{
  result = qword_27E389210;
  if (!qword_27E389210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389210);
  }

  return result;
}

unint64_t sub_23EDB261C()
{
  result = qword_27E389218;
  if (!qword_27E389218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389218);
  }

  return result;
}

unint64_t sub_23EDB2674()
{
  result = qword_27E389220;
  if (!qword_27E389220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389220);
  }

  return result;
}

uint64_t sub_23EDB276C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23EDC1790();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_23EDC1780();
}

uint64_t InferenceRequest.outputStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_outputStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389228, &qword_23EDC8220);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InferenceRequest.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_requestID;
  v4 = sub_23EDC0EF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InferenceRequest.isCancelled.getter()
{
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v1 = sub_23EDC1790();
  __swift_project_value_buffer(v1, qword_27E3897E8);

  v2 = sub_23EDC1770();
  v3 = sub_23EDC1D70();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v12 = sub_23EDC23E0();
    v13 = v6;
    MEMORY[0x23EF237D0](32, 0xE100000000000000);
    sub_23EDC0EF0();
    sub_23EDB33D4(&qword_27E388AE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v7 = sub_23EDC21E0();
    MEMORY[0x23EF237D0](v7);

    v8 = sub_23ED713FC(v12, v13, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23ED67000, v2, v3, "%s checking cancellation", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x23EF24B30](v5, -1, -1);
    MEMORY[0x23EF24B30](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller + 24);
  v10 = *(v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller), v9);
  return (*(v10 + 8))(v9, v10) & 1;
}

Swift::Void __swiftcall InferenceRequest.cancel()()
{
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v1 = sub_23EDC1790();
  __swift_project_value_buffer(v1, qword_27E3897E8);

  v2 = sub_23EDC1770();
  v3 = sub_23EDC1D70();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    v11 = sub_23EDC23E0();
    v12 = v6;
    MEMORY[0x23EF237D0](32, 0xE100000000000000);
    sub_23EDC0EF0();
    sub_23EDB33D4(&qword_27E388AE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v7 = sub_23EDC21E0();
    MEMORY[0x23EF237D0](v7);

    v8 = sub_23ED713FC(v11, v12, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_23ED67000, v2, v3, "cancelling %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x23EF24B30](v5, -1, -1);
    MEMORY[0x23EF24B30](v4, -1, -1);
  }

  v9 = *(v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller + 24);
  v10 = *(v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller), v9);
  (*(v10 + 16))(v9, v10);
}

uint64_t InferenceRequest.description.getter()
{
  v2 = sub_23EDC23E0();
  MEMORY[0x23EF237D0](32, 0xE100000000000000);
  sub_23EDC0EF0();
  sub_23EDB33D4(&qword_27E388AE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v0);

  return v2;
}

uint64_t sub_23EDB2E6C()
{
  v1 = OBJC_IVAR____TtCC16AlchemistService16InferenceRequest14OutputDelegate_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389280, &unk_23EDC8380);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23EDB2EF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389278, &qword_23EDC8378);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389280, &unk_23EDC8380);
  sub_23EDC1C90();
  return (*(v5 + 8))(v7, v4);
}

uint64_t InferenceRequest.deinit()
{
  v1 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_outputStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389228, &qword_23EDC8220);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller));
  v3 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_requestID;
  v4 = sub_23EDC0EF0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t InferenceRequest.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_outputStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389228, &qword_23EDC8220);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC16AlchemistService16InferenceRequest_sendableCanceller));
  v3 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_requestID;
  v4 = sub_23EDC0EF0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_23EDB31E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16AlchemistService16InferenceRequest_requestID;
  v5 = sub_23EDC0EF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23EDB32A8()
{
  v2 = sub_23EDC23E0();
  MEMORY[0x23EF237D0](32, 0xE100000000000000);
  sub_23EDC0EF0();
  sub_23EDB33D4(&qword_27E388AE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v0 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v0);

  return v2;
}

uint64_t sub_23EDB33D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23EDB3444(uint64_t a1)
{
  sub_23EDB362C(319, &qword_27E389250, MEMORY[0x277D858D8]);
  if (v1 <= 0x3F)
  {
    sub_23EDC0EF0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23EDB3574(uint64_t a1)
{
  sub_23EDB362C(319, &qword_27E389268, MEMORY[0x277D858B0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23EDB362C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E389010, &qword_23EDC58B0);
    v7 = a3(a1, &type metadata for ALCInferenceOutput, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_23EDB36A8(uint64_t a1)
{
  result = sub_23EDB33D4(&qword_27E389270, type metadata accessor for InferenceRequest.OutputDelegate, &unk_23EDC834C);
  *(a1 + 8) = result;
  return result;
}

void sub_23EDB3700()
{
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v0 = sub_23EDC1790();
  __swift_project_value_buffer(v0, qword_27E3897E8);
  oslog = sub_23EDC1770();
  v1 = sub_23EDC1D60();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_23ED67000, oslog, v1, "InferenceRequest finished with summary", v2, 2u);
    MEMORY[0x23EF24B30](v2, -1, -1);
  }
}

uint64_t InferenceSessionDefinition.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23EDC0EF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InferenceSessionDefinition.id.setter(uint64_t a1)
{
  v3 = sub_23EDC0EF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_23EDB38D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E65696C63;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E65696C63;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23EDC2240();
  }

  return v8 & 1;
}

uint64_t sub_23EDB3970()
{
  sub_23EDC22F0();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

double sub_23EDB39E4(uint64_t a1)
{
  sub_23EDC1A50();

  return result;
}

uint64_t sub_23EDB3A44()
{
  sub_23EDC22F0();
  sub_23EDC1A50();

  return sub_23EDC2320();
}

void sub_23EDB3AB4(char *a2@<X8>)
{
  v3 = sub_23EDC2070();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_23EDB3B14(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x746E65696C63;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23EDB3B44()
{
  if (*v0)
  {
    return 0x746E65696C63;
  }

  else
  {
    return 25705;
  }
}

void sub_23EDB3B70(char *a3@<X8>)
{
  v4 = sub_23EDC2070();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_23EDB3BD4(uint64_t a1)
{
  v2 = sub_23EDB3E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDB3C10(uint64_t a1)
{
  v2 = sub_23EDB3E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceSessionDefinition.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389288, &qword_23EDC8390);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB3E28();
  sub_23EDC23A0();
  LOBYTE(v14) = 0;
  sub_23EDC0EF0();
  sub_23EDB45BC(&qword_27E388960, MEMORY[0x277CC95F8]);
  sub_23EDC2190();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for InferenceSessionDefinition(0) + 20));
    v10 = *v9;
    v11 = v9[1];
    LODWORD(v9) = *(v9 + 4);
    v14 = v10;
    v15 = v11;
    v16 = v9;
    v13[7] = 1;
    sub_23EDB3EC8();

    sub_23EDC2190();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23EDB3E28()
{
  result = qword_27E389290;
  if (!qword_27E389290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389290);
  }

  return result;
}

uint64_t type metadata accessor for InferenceSessionDefinition(uint64_t a1)
{
  result = qword_27E3892B0;
  if (!qword_27E3892B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23EDB3EC8()
{
  result = qword_27E389298;
  if (!qword_27E389298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389298);
  }

  return result;
}

uint64_t InferenceSessionDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v21 = sub_23EDC0EF0();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3892A0, &qword_23EDC8398);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v18 - v6;
  v8 = type metadata accessor for InferenceSessionDefinition(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11[*(v9 + 24)] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB3E28();
  sub_23EDC2360();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v12 = v19;
  LOBYTE(v23) = 0;
  sub_23EDB45BC(&qword_27E388978, MEMORY[0x277CC9618]);
  v13 = v21;
  sub_23EDC20F0();
  (*(v12 + 32))(v11, v5, v13);
  v26 = 1;
  sub_23EDB4270();
  sub_23EDC20F0();
  v14 = v24;
  v15 = v25;
  v16 = &v11[*(v8 + 20)];
  *v16 = v23;
  *(v16 + 1) = v14;
  *(v16 + 4) = v15;
  sub_23EDB42C4();
  (*(v20 + 8))(v7, v22);
  sub_23ED71264(v11, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_23EDB452C(v11);
}

unint64_t sub_23EDB4270()
{
  result = qword_27E3892A8;
  if (!qword_27E3892A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3892A8);
  }

  return result;
}

uint64_t sub_23EDB42C4()
{
  v1 = v0;
  v2 = sub_23EDC1050();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3892E0, &qword_23EDC85B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v10 = type metadata accessor for InferenceSessionDefinition(0);
  v18[0] = *(v1 + *(v10 + 20) + 16);
  sub_23EDC0F30();
  v11 = sub_23EDC1140();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  sub_23EDC1030();
  sub_23EDC1040();
  (*(v3 + 8))(v5, v2);
  type metadata accessor for ModelManagerInterface();
  v14 = swift_allocObject();
  sub_23EDC1650();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388DA8, &qword_23EDC85C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23EDC4860;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  *(v14 + 16) = sub_23EDC1640();
  v16 = *(v10 + 24);

  *(v1 + v16) = v14;
  return sub_23EDC1630();
}

uint64_t sub_23EDB452C(uint64_t a1)
{
  v2 = type metadata accessor for InferenceSessionDefinition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23EDB45BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23EDC0EF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23EDB4600@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23EDC0EF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_23EDB46AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23EDC0EF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23EDB4780(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23EDC0EF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_23EDB483C(uint64_t a1)
{
  sub_23EDC0EF0();
  if (v1 <= 0x3F)
  {
    sub_23EDB48C8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23EDB48C8(uint64_t a1)
{
  if (!qword_27E3892C0)
  {
    type metadata accessor for ModelManagerInterface();
    v1 = sub_23EDC1E40();
    if (!v2)
    {
      atomic_store(v1, &qword_27E3892C0);
    }
  }
}

unint64_t sub_23EDB4934()
{
  result = qword_27E3892C8;
  if (!qword_27E3892C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3892C8);
  }

  return result;
}

unint64_t sub_23EDB498C()
{
  result = qword_27E3892D0;
  if (!qword_27E3892D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3892D0);
  }

  return result;
}

unint64_t sub_23EDB49E4()
{
  result = qword_27E3892D8;
  if (!qword_27E3892D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3892D8);
  }

  return result;
}

__n128 sub_23EDB4A38@<Q0>(uint64_t a1@<X8>)
{
  v2 = vcvt_f32_u32(*v1);
  LODWORD(v3) = 0;
  *(&v3 + 1) = *(v1 + 100) / v2.f32[1];
  result.n128_u64[0] = vdiv_f32(*(v1 + 112), v2);
  result.n128_u64[1] = 1065353216;
  *a1 = COERCE_UNSIGNED_INT(*(v1 + 80) / v2.f32[0]);
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

__n128 sub_23EDB4ACC@<Q0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v6 = *(v2 + 80);
  v5 = *(v2 + 96);
  if (fabsf(a2 + -1.0) > 0.00001)
  {
    v7 = vcvt_f32_u32(*v2);
    v8 = sqrtf(vaddv_f32(vmul_f32(v7, v7))) * 0.5;
    v14 = *(v2 + 80);
    v15 = *(v2 + 96);
    v9 = atanf(v8 / *(&v5 + 1));
    v10 = tanf(v9 * a2);
    v6 = v14;
    v5 = v15;
    *&v6 = v8 / v10;
    *(&v5 + 1) = v8 / v10;
  }

  v11 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v11;
  v12 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v12;
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v6;
  result = *(v2 + 112);
  *(a1 + 96) = v5;
  *(a1 + 112) = result;
  *(a1 + 128) = *(v2 + 128);
  return result;
}

void sub_23EDB4BF0(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>, unsigned int a4@<S2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>, __n128 a8@<Q6>)
{
  if ((*&a2.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a2.f64[0] <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a2.f64[0] >= 4294967300.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a3 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a3 < 4294967300.0)
  {
    v8 = a2.f64[0];
    LODWORD(v9) = 0;
    HIDWORD(v9) = a4;
    a2.f64[1] = a3;
    *&v10 = vmul_f32(vcvt_f32_f64(a2), 0x3F0000003F000000);
    *(&v10 + 1) = 1065353216;
    *a1 = v8;
    *(a1 + 4) = a3;
    *(a1 + 8) = 0x497424003C23D70ALL;
    *(a1 + 16) = a5;
    *(a1 + 32) = a6;
    *(a1 + 48) = a7;
    *(a1 + 64) = a8;
    *(a1 + 80) = a4;
    *(a1 + 96) = v9;
    *(a1 + 112) = v10;
    *(a1 + 128) = 1108344832;
    return;
  }

LABEL_13:
  __break(1u);
}

__n128 __swift_memcpy132_16(uint64_t a1, uint64_t a2)
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

uint64_t sub_23EDB4CF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 132))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23EDB4D18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
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

  *(result + 132) = v3;
  return result;
}

void sub_23EDB4D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23EDC13D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D18, &unk_23EDC6740);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = *(v6 + 16);
  v12(&v20 - v10, a3, v5);
  (*(v6 + 56))(v11, 0, 1, v5);
  v13 = OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_auxiliaryOutput;
  swift_beginAccess();
  sub_23EDB5EEC(v11, v3 + v13);
  swift_endAccess();
  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v14 = sub_23EDC1790();
  __swift_project_value_buffer(v14, qword_27E3897E8);
  v12(v8, a3, v5);
  v15 = sub_23EDC1770();
  v16 = sub_23EDC1D60();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    sub_23EDC1340();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    *(v17 + 4) = v19;
    _os_log_impl(&dword_23ED67000, v15, v16, "ServiceOutputDelegate got outputFocalLength: %{public}f", v17, 0xCu);
    MEMORY[0x23EF24B30](v17, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

void sub_23EDB5028(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = v4;
  v6 = *a3;
  v7 = *(v3 + OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_inferenceOutput);
  *(v3 + OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_inferenceOutput) = *a3;

  sub_23EDB5EDC(v7);
  if (v6)
  {
    v8 = *(v6 + 16);
    if (v8)
    {
      if (v8 != 1)
      {
        if (v8 >= 3)
        {
          if (v8 != 3)
          {
            if (v8 >= 5)
            {
              if (v8 != 5)
              {
                v9 = *(v6 + 40);
                v10 = *(v6 + 48);
                v44 = *(v6 + 56);
                v11 = *(v6 + 64);
                v46 = v5;
                v12 = *(v6 + 80);
                v41 = *(v6 + 88);
                v42 = *(v6 + 72);
                v13 = *(v6 + 96);
                v14 = *(v6 + 112);
                v39 = *(v6 + 120);
                v40 = *(v6 + 104);
                v45 = *(v3 + 120);
                v50 = *(v6 + 32);
                v51 = v9;
                v49 = v14;
                v15 = v50;
                v43 = v10;
                v52 = v10;
                v16 = v11;
                v17 = v11;
                v18 = v12;
                v19 = v13;
                v20 = sub_23EDB575C(&v50);
                if (v46)
                {

                  return;
                }

                v47 = v16;
                v26 = v52;
                [v45 setCoords:v20 withFormat:30 stride:12 offset:0];
                swift_unknownObjectRelease();
                v50 = v43;
                v51 = v44;
                [v45 setRots:sub_23EDB575C(&v50) withFormat:27 stride:8 offset:0];
                swift_unknownObjectRelease();
                v50 = v47;
                v51 = v42;
                [v45 setScales:sub_23EDB575C(&v50) withFormat:26 stride:6 offset:0];
                swift_unknownObjectRelease();
                v50 = v12;
                v51 = v41;
                [v45 setFeatures:sub_23EDB575C(&v50) withFormat:26 stride:6 offset:0];
                swift_unknownObjectRelease();
                v50 = v13;
                v51 = v40;
                [v45 setAlphas:sub_23EDB575C(&v50) withFormat:53 stride:2 offset:0];
                swift_unknownObjectRelease();
                v50 = v13;
                v51 = v40;
                v48 = Image.size.getter();
                Image.size.getter();
                v28 = v48 * v27;
                if ((v48 * v27) >> 64 == (v48 * v27) >> 63)
                {
                  if ((v28 & 0x8000000000000000) == 0)
                  {
                    if (!HIDWORD(v28))
                    {
                      [v45 setNumGaussians_];
                      [v45 setActivationOpacity_];
                      [v45 setActivationScale_];
                      if ([v45 computeCovariancesWith:0 error:0] && objc_msgSend(v45, sel_computeCentroids))
                      {
                        if (v39 == 2)
                        {

                          v29 = *(v3 + 128);
                          *(v3 + 128) = v14;
                        }

                        else
                        {
                          if (qword_27E388190 != -1)
                          {
                            swift_once();
                          }

                          v35 = sub_23EDC1790();
                          __swift_project_value_buffer(v35, qword_27E3897E8);
                          v36 = sub_23EDC1770();
                          v37 = sub_23EDC1D80();
                          if (os_log_type_enabled(v36, v37))
                          {
                            v38 = swift_slowAlloc();
                            *v38 = 0;
                            _os_log_impl(&dword_23ED67000, v36, v37, "The inference depth output is not backed by a pixel buffer.", v38, 2u);
                            MEMORY[0x23EF24B30](v38, -1, -1);
                          }
                        }

                        return;
                      }

                      if (qword_27E388190 == -1)
                      {
                        goto LABEL_22;
                      }

                      goto LABEL_40;
                    }

LABEL_39:
                    __break(1u);
LABEL_40:
                    swift_once();
LABEL_22:
                    v30 = sub_23EDC1790();
                    __swift_project_value_buffer(v30, qword_27E3897E8);
                    v31 = sub_23EDC1770();
                    v32 = sub_23EDC1D80();
                    if (os_log_type_enabled(v31, v32))
                    {
                      v33 = swift_slowAlloc();
                      *v33 = 0;
                      _os_log_impl(&dword_23ED67000, v31, v32, "Failed to compute GSAsset covariances and centroids", v33, 2u);
                      MEMORY[0x23EF24B30](v33, -1, -1);
                    }

                    sub_23ED721D8();
                    swift_allocError();
                    *v34 = 10;
                    swift_willThrow();

                    return;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
                goto LABEL_39;
              }

              goto LABEL_35;
            }

LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_32;
  }

  if (qword_27E388190 != -1)
  {
LABEL_36:
    swift_once();
  }

  v21 = sub_23EDC1790();
  __swift_project_value_buffer(v21, qword_27E3897E8);
  v22 = sub_23EDC1770();
  v23 = sub_23EDC1D80();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_23ED67000, v22, v23, "Failed to retrieve image buffers from inference output", v24, 2u);
    MEMORY[0x23EF24B30](v24, -1, -1);
  }

  sub_23ED721D8();
  swift_allocError();
  *v25 = 2;
  swift_willThrow();
}

uint8_t *sub_23EDB575C(uint64_t a1)
{
  if (*(a1 + 8) == 2)
  {
    v2 = v1;
    v3 = *a1;
    PixelFormatType = CVPixelBufferGetPixelFormatType(v3);
    if (PixelFormatType == 1278226534 || PixelFormatType == 1278226536)
    {
      v22 = 0;
      MEMORY[0x28223BE20](PixelFormatType);
      sub_23EDC1D30();
      if (v1)
      {

        swift_unknownObjectRelease();
        return v2;
      }

      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v18 = sub_23EDC1790();
      __swift_project_value_buffer(v18, qword_27E3897E8);
      v10 = sub_23EDC1770();
      v2 = sub_23EDC1D80();
      if (!os_log_type_enabled(v10, v2))
      {
LABEL_21:

        sub_23ED721D8();
        swift_allocError();
        *v20 = 5;
        swift_willThrow();

        return v2;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23ED67000, v10, v2, "Unable to create MTLBuffer from output image", v19, 2u);
      v17 = v19;
    }

    else
    {
      v2 = PixelFormatType;
      if (qword_27E388190 != -1)
      {
        swift_once();
      }

      v9 = sub_23EDC1790();
      __swift_project_value_buffer(v9, qword_27E3897E8);
      v10 = sub_23EDC1770();
      v11 = sub_23EDC1D80();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_21;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      v14 = sub_23EDBA72C(v2);
      v2 = v15;
      v16 = sub_23ED713FC(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_23ED67000, v10, v11, "Unsupported pixel format type in output image: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x23EF24B30](v13, -1, -1);
      v17 = v12;
    }

    MEMORY[0x23EF24B30](v17, -1, -1);
    goto LABEL_21;
  }

  if (qword_27E388190 != -1)
  {
    swift_once();
  }

  v5 = sub_23EDC1790();
  __swift_project_value_buffer(v5, qword_27E3897E8);
  v6 = sub_23EDC1770();
  v7 = sub_23EDC1D80();
  if (os_log_type_enabled(v6, v7))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_23ED67000, v6, v7, "Unable to get the pixel buffer from output image", v2, 2u);
    MEMORY[0x23EF24B30](v2, -1, -1);
  }

  sub_23ED721D8();
  swift_allocError();
  *v8 = 2;
  swift_willThrow();
  return v2;
}

id sub_23EDB5B50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  LOBYTE(v17) = a3;
  v12 = Image.size.getter();
  LOBYTE(v15) = a3;
  result = Image.size.getter();
  if ((v12 * v14) >> 64 == (v12 * v14) >> 63)
  {
    if ((v12 * v14 * a4) >> 64 == (v12 * v14 * a4) >> 63)
    {
      *a5 = [*(a6 + 112) newBufferWithBytesNoCopy:a1 length:a2 options:v15 deallocator:{a2, v17}];
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23EDB5C2C()
{
  swift_unknownObjectRelease();

  sub_23EDB5FE8(v0 + OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_auxiliaryOutput);
  sub_23EDB5EDC(*(v0 + OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_inferenceOutput));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ServiceOutputDelegate(uint64_t a1)
{
  result = qword_27E389300;
  if (!qword_27E389300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23EDB5CE8(uint64_t a1)
{
  sub_23EDB5DAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23EDB5DAC(uint64_t a1)
{
  if (!qword_27E389310)
  {
    sub_23EDC13D0();
    v1 = sub_23EDC1E40();
    if (!v2)
    {
      atomic_store(v1, &qword_27E389310);
    }
  }
}

unint64_t sub_23EDB5E34(uint64_t a1)
{
  result = sub_23EDB5E5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23EDB5E5C()
{
  result = qword_27E389318;
  if (!qword_27E389318)
  {
    type metadata accessor for ServiceOutputDelegate(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389318);
  }

  return result;
}

double sub_23EDB5EDC(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_23EDB5EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D18, &unk_23EDC6740);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_23EDB5FB0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_23EDB5FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388D18, &unk_23EDC6740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23EDB6050(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 128) = 0;
  v5 = OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_auxiliaryOutput;
  v6 = sub_23EDC13D0();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC16AlchemistService21ServiceOutputDelegate_inferenceOutput) = 1;
  *(v2 + 112) = a1;
  v7 = objc_allocWithZone(MEMORY[0x277D00868]);
  swift_unknownObjectRetain();
  v8 = [v7 init];
  *(v2 + 120) = v8;
  [v8 setCgColorSpace_];
  [*(v2 + 120) setNumGaussians_];
  [*(v2 + 120) setNumFeatures_];
  [*(v2 + 120) setMaxCoeff_];
  return v2;
}

uint64_t sub_23EDB61B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = sub_23EDC13D0();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v9 = sub_23EDC1220();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v10 = sub_23EDC0EF0();
  v7[17] = v10;
  v7[18] = *(v10 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23EDB636C, v6, 0);
}

uint64_t sub_23EDB636C()
{
  v44 = v0;
  v1 = v0[6];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  sub_23ED83F54(v3, v2);
  v6 = *(v0[9] + 112);
  v0[23] = v6;
  if (v6)
  {
    v7 = qword_27E388190;

    if (v7 != -1)
    {
      swift_once();
    }

    v9 = v0[21];
    v8 = v0[22];
    v10 = v0[17];
    v11 = v0[18];
    v13 = v0[4];
    v12 = v0[5];
    v14 = sub_23EDC1790();
    v0[24] = __swift_project_value_buffer(v14, qword_27E3897E8);
    v15 = *(v11 + 16);
    v0[25] = v15;
    v0[26] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v8, v13, v10);
    v15(v9, v12, v10);
    v16 = sub_23EDC1770();
    v17 = sub_23EDC1D90();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[21];
    v19 = v0[22];
    v21 = v0[17];
    v22 = v0[18];
    if (v18)
    {
      v41 = v0[21];
      v23 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43[0] = v42;
      *v23 = 136446466;
      sub_23EDB7B7C(&qword_27E388AE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_23EDC21E0();
      v40 = v17;
      v26 = v25;
      log = v16;
      v27 = *(v22 + 8);
      v27(v19, v21);
      v28 = sub_23ED713FC(v24, v26, v43);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2082;
      v29 = sub_23EDC21E0();
      v31 = v30;
      v27(v41, v21);
      v32 = sub_23ED713FC(v29, v31, v43);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_23ED67000, log, v40, "Running inference pipeline for <operation: %{public}s, provider: %{public}s>", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF24B30](v42, -1, -1);
      MEMORY[0x23EF24B30](v23, -1, -1);
    }

    else
    {

      v27 = *(v22 + 8);
      v27(v20, v21);
      v27(v19, v21);
    }

    v0[27] = v27;
    LOBYTE(v43[0]) = 0;
    sub_23EDC1260();
    v0[28] = 0;
    v36 = v0[8];
    v0[29] = swift_getObjectType();
    v0[30] = *(v36 + 24);
    v0[31] = (v36 + 24) & 0xFFFFFFFFFFFFLL | 0xE148000000000000;
    v38 = sub_23EDC1B90();
    v0[32] = v38;
    v0[33] = v37;

    return MEMORY[0x2822009F8](sub_23EDB688C, v38, v37);
  }

  else
  {
    v33 = sub_23EDC1530();
    sub_23EDB7B7C(&qword_27E388768, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    v35 = v34;
    sub_23ED90B6C(MEMORY[0x277D84F90]);
    sub_23EDC1520();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D29DD8], v33);
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_23EDB688C()
{
  v1 = *(v0 + 224);
  (*(v0 + 240))(*(v0 + 32), *(v0 + 40), *(v0 + 96), *(v0 + 232), *(v0 + 64));
  *(v0 + 272) = v1;
  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = sub_23EDB6DB0;
  }

  else
  {
    v3 = sub_23EDB6924;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_23EDB6924()
{
  v1 = v0[15];
  v2 = v0[8];
  (*(v0[14] + 16))(v1, v0[16], v0[13]);
  sub_23ED8636C(v1, v0 + 2);
  v0[35] = *(v2 + 16);
  v0[36] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xD17D000000000000;
  v3 = v0[32];
  v4 = v0[33];

  return MEMORY[0x2822009F8](sub_23EDB69B8, v3, v4);
}

uint64_t sub_23EDB69B8()
{
  v1 = *(v0 + 272);
  (*(v0 + 280))(*(v0 + 32), *(v0 + 40), v0 + 16, *(v0 + 232), *(v0 + 64));
  *(v0 + 296) = v1;

  v2 = *(v0 + 72);
  if (v1)
  {
    v3 = sub_23EDB6EB0;
  }

  else
  {
    v3 = sub_23EDB6A5C;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_23EDB6A5C()
{
  v34 = v0;
  v1 = v0[25];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[5];
  v1(v0[20], v0[4], v3);
  v1(v2, v4, v3);
  v5 = sub_23EDC1770();
  v29 = sub_23EDC1D90();
  v6 = os_log_type_enabled(v5, v29);
  v7 = v0[27];
  v8 = v0[20];
  v30 = v0[19];
  v9 = v0[17];
  v10 = v0[16];
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[11];
  v31 = v0[10];
  v32 = v0[12];
  if (v6)
  {
    log = v5;
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v14 = 136446466;
    sub_23EDB7B7C(&qword_27E388AE0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = v11;
    v28 = v12;
    v15 = sub_23EDC21E0();
    v17 = v16;
    v7(v8, v9);
    v18 = sub_23ED713FC(v15, v17, &v33);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_23EDC21E0();
    v21 = v20;
    v7(v30, v9);
    v22 = sub_23ED713FC(v19, v21, &v33);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_23ED67000, log, v29, "Completed inference pipeline for <operation: %{public}s, provider: %{public}s>", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF24B30](v26, -1, -1);
    MEMORY[0x23EF24B30](v14, -1, -1);

    (*(v13 + 8))(v32, v31);
    (*(v27 + 8))(v10, v28);
  }

  else
  {

    v7(v30, v9);
    v7(v8, v9);
    (*(v13 + 8))(v32, v31);
    (*(v11 + 8))(v10, v12);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_23EDB6DB0()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23EDB6EB0()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23EDB6FB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23EDC0E80();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23EDB7080, v2, 0);
}

uint64_t sub_23EDB7080()
{
  v27 = v0;
  v1 = v0[4];
  if (*(v1 + 112))
  {
    v2 = *(v1 + 112);
  }

  else
  {
    sub_23EDC1330();
    swift_allocObject();
    v2 = sub_23EDC1320();
  }

  v3 = qword_27E3881A0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = sub_23EDC1790();
  __swift_project_value_buffer(v4, qword_27E389818);

  v5 = sub_23EDC1770();
  v6 = sub_23EDC1D90();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_23ED713FC(v8, v7, v26);
    _os_log_impl(&dword_23ED67000, v5, v6, "Received transition to loaded for %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x23EF24B30](v10, -1, -1);
    MEMORY[0x23EF24B30](v9, -1, -1);
  }

  v11 = sub_23ED7CCEC(v0[2], v0[3]);
  if (v11)
  {
    if (v11 == 1)
    {
      if ((sub_23EDC1290() & 1) == 0)
      {
        sub_23ED7D270(v0[2], v0[3], v0[7]);
        v20 = v0[6];
        v19 = v0[7];
        v21 = v0[5];
        sub_23EDC12C0();
        (*(v20 + 8))(v19, v21);
      }

      sub_23EDC12F0();
    }
  }

  else
  {
    if ((sub_23EDC12B0() & 1) == 0)
    {
      sub_23ED7CEF4(v0[2], v0[3], v0[8]);
      v22 = v0[8];
      v23 = v0[5];
      v24 = v0[6];
      sub_23EDC12D0();
      (*(v24 + 8))(v22, v23);
    }

    sub_23EDC1310();
  }

  v12 = sub_23EDC1770();
  v13 = sub_23EDC1D90();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = v0[2];
    v14 = v0[3];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_23ED713FC(v15, v14, v26);
    _os_log_impl(&dword_23ED67000, v12, v13, "Successfully transitioned to loaded for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x23EF24B30](v17, -1, -1);
    MEMORY[0x23EF24B30](v16, -1, -1);
  }

  *(v1 + 112) = v2;

  v18 = v0[1];

  return v18();
}

uint64_t sub_23EDB7448(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23EDB746C, v2, 0);
}

uint64_t sub_23EDB746C()
{
  v20 = v0;
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v1 = sub_23EDC1790();
  __swift_project_value_buffer(v1, qword_27E389818);

  v2 = sub_23EDC1770();
  v3 = sub_23EDC1D90();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_23ED713FC(v5, v4, v19);
    _os_log_impl(&dword_23ED67000, v2, v3, "Received transition to unloaded for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x23EF24B30](v7, -1, -1);
    MEMORY[0x23EF24B30](v6, -1, -1);
  }

  if (*(v0[4] + 112))
  {
    v9 = v0[2];
    v8 = v0[3];

    v10 = sub_23ED7CCEC(v9, v8);
    if (v10)
    {
      if (v10 == 1)
      {
        sub_23EDC12E0();
        sub_23EDC1280();
      }
    }

    else
    {
      sub_23EDC1300();
      sub_23EDC12A0();
    }

    v11 = sub_23EDC1770();
    v12 = sub_23EDC1D90();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[2];
      v13 = v0[3];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_23ED713FC(v14, v13, v19);
      _os_log_impl(&dword_23ED67000, v11, v12, "Successfully transitioned to unloaded for %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x23EF24B30](v16, -1, -1);
      MEMORY[0x23EF24B30](v15, -1, -1);
    }
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_23EDB7758(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23EDB777C, v2, 0);
}

uint64_t sub_23EDB777C()
{
  v24 = v0;
  if (qword_27E3881A0 != -1)
  {
    swift_once();
  }

  v1 = sub_23EDC1790();
  __swift_project_value_buffer(v1, qword_27E389818);

  v2 = sub_23EDC1770();
  v3 = sub_23EDC1D90();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_23ED713FC(v5, v4, v23);
    _os_log_impl(&dword_23ED67000, v2, v3, "Received transition to dynamic mode for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x23EF24B30](v7, -1, -1);
    MEMORY[0x23EF24B30](v6, -1, -1);
  }

  if (*(v0[4] + 112))
  {
    v8 = objc_opt_self();

    v9 = [v8 aneArchitectureType];
    v10 = sub_23EDC19D0();
    v12 = v11;

    if (v10 == 3354984 && v12 == 0xE300000000000000 || (sub_23EDC2240() & 1) != 0 || v10 == 1731408232 && v12 == 0xE400000000000000)
    {
    }

    else
    {
      v13 = sub_23EDC2240();

      if ((v13 & 1) == 0)
      {
        v14 = sub_23ED7CCEC(v0[2], v0[3]);
        if (v14)
        {
          if (v14 == 1)
          {
            sub_23EDC12E0();
          }
        }

        else
        {
          sub_23EDC1300();
        }

        goto LABEL_18;
      }
    }

    sub_23EDC1270();
LABEL_18:

    v15 = sub_23EDC1770();
    v16 = sub_23EDC1D90();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v0[2];
      v17 = v0[3];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_23ED713FC(v18, v17, v23);
      _os_log_impl(&dword_23ED67000, v15, v16, "Successfully transitioned to dynamic mode for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x23EF24B30](v20, -1, -1);
      MEMORY[0x23EF24B30](v19, -1, -1);
    }
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_23EDB7B20()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23EDB7B7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23EDB7BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_23EDC13F0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23EDB7C98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_23EDC13F0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for InferenceRecipe(uint64_t a1)
{
  result = qword_27E389320;
  if (!qword_27E389320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23EDB7D88(uint64_t a1)
{
  result = sub_23EDC13F0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23EDB7E0C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389330, &qword_23EDC8898);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB84C0();
  sub_23EDC23A0();
  v9 = *(v3 + 4);
  v11 = *(v3 + 3);
  v10 = *(v3 + 4);
  v16 = *v3;
  v17 = v9;
  v18 = v11;
  v19 = v10;
  v15[15] = 0;
  sub_23EDB8514();
  v12 = v11;

  sub_23EDC2190();
  v13 = v18;

  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_23EDC2170();
    type metadata accessor for InferenceRecipe(0);
    LOBYTE(v16) = 2;
    sub_23EDC13F0();
    sub_23EDB85BC(&qword_27E389348, MEMORY[0x277CEA5B8]);
    sub_23EDC2190();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_23EDB801C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = sub_23EDC13F0();
  v18 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389350, &qword_23EDC88A0);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v17 - v6;
  v8 = type metadata accessor for InferenceRecipe(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB84C0();
  sub_23EDC2360();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v17 = a1;
    v12 = v20;
    v11 = v21;
    v13 = v10;
    v26 = 0;
    sub_23EDB8568();
    v14 = v22;
    sub_23EDC20F0();
    v15 = v24;
    *v13 = v23;
    *(v13 + 16) = v15;
    *(v13 + 24) = v25;
    LOBYTE(v23) = 1;
    sub_23EDC20D0();
    *(v13 + 40) = v16;
    LOBYTE(v23) = 2;
    sub_23EDB85BC(&qword_27E389360, MEMORY[0x277CEA5C0]);
    sub_23EDC20F0();
    (*(v12 + 8))(v7, v14);
    (*(v18 + 32))(v13 + *(v8 + 24), v5, v11);
    sub_23ED6FAC8(v13, v19);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    sub_23EDB8600(v13);
  }
}

unint64_t sub_23EDB8388()
{
  v1 = 0x6E654C6C61636F66;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_23EDB83F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23EDB8774(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23EDB8418(uint64_t a1)
{
  v2 = sub_23EDB84C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDB8454(uint64_t a1)
{
  v2 = sub_23EDB84C0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23EDB84C0()
{
  result = qword_27E389338;
  if (!qword_27E389338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389338);
  }

  return result;
}

unint64_t sub_23EDB8514()
{
  result = qword_27E389340;
  if (!qword_27E389340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389340);
  }

  return result;
}

unint64_t sub_23EDB8568()
{
  result = qword_27E389358;
  if (!qword_27E389358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389358);
  }

  return result;
}

uint64_t sub_23EDB85BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_23EDC13F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23EDB8600(uint64_t a1)
{
  v2 = type metadata accessor for InferenceRecipe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23EDB8670()
{
  result = qword_27E389368;
  if (!qword_27E389368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389368);
  }

  return result;
}

unint64_t sub_23EDB86C8()
{
  result = qword_27E389370;
  if (!qword_27E389370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389370);
  }

  return result;
}

unint64_t sub_23EDB8720()
{
  result = qword_27E389378;
  if (!qword_27E389378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389378);
  }

  return result;
}

uint64_t sub_23EDB8774(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E654C6C61636F66 && a2 == 0xED00007850687467 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023EDCB9A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23EDC2240();

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

void sub_23EDB88A0(uint64_t a1)
{
  sub_23EDB8DEC();
  if (v1 <= 0x3F)
  {
    sub_23EDC1E40();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23EDB8928(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 8) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 8) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_23EDB8AE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 8) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = (&a1[v11 + 8] & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;
      v28 = &a1[v11 + 8] & ~v11;

      v26(v28, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v21 = a2 - 1;
    }

    *a1 = v21;
  }
}

void sub_23EDB8DEC()
{
  if (!qword_27E389400)
  {
    v0 = sub_23EDC1720();
    if (!v1)
    {
      atomic_store(v0, &qword_27E389400);
    }
  }
}

void sub_23EDB8E40(uint64_t a1)
{
  v2 = *v1;
  v4[2] = *(a1 + 16);
  v4[8] = sub_23EDC1E40();
  v4[9] = sub_23EDB8F9C;
  v4[10] = v4;
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v3));
  sub_23EDB8FB8();
  os_unfair_lock_unlock((v2 + v3));
}

uint64_t sub_23EDB8F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(type metadata accessor for WriteOnceReadMany(0, a2, a3, a4) + 28);
  v8 = sub_23EDC1E40();
  return (*(*(v8 - 8) + 16))(a5, a1 + v7, v8);
}

double sub_23EDB8FE0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  Width = CVPixelBufferGetWidth(v3);
  Height = CVPixelBufferGetHeight(v3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(v3);

  *a2 = Width;
  *(a2 + 8) = Height;
  *(a2 + 16) = PixelFormatType;
  *(a2 + 24) = v3;
  type metadata accessor for PixelBufferArchive.HiddenBufferData();
  v7 = swift_allocObject();
  result = 0.0;
  *(v7 + 16) = xmmword_23EDC45C0;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_23EDB9068()
{
  sub_23ED6F900(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_23EDB90C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23EDB910C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_23EDB9164()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v2;
  if (v3 >> 60 != 15)
  {
    goto LABEL_5;
  }

  v5 = *(v0 + 24);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v5);
  result = CVPixelBufferGetHeight(v5);
  v8 = BytesPerRow * result;
  if ((BytesPerRow * result) >> 64 == (BytesPerRow * result) >> 63)
  {
    CVPixelBufferLockBaseAddress(v5, 1uLL);
    result = CVPixelBufferGetBaseAddress(v5);
    if (result)
    {
      v4 = sub_23EDB9FB8(result, v8);
      v9 = *(v1 + 16);
      v10 = *(v1 + 24);
      *(v1 + 16) = v4;
      *(v1 + 24) = v11;
      sub_23ED922EC(v4, v11);
      sub_23ED6F900(v9, v10);
      CVPixelBufferUnlockBaseAddress(v5, 1uLL);
LABEL_5:
      sub_23EDBA068(v2, v3);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23EDB9244()
{
  v1 = 0x6144726566667562;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265666552637078;
  }
}

uint64_t sub_23EDB92B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23EDBA264(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23EDB92D8(uint64_t a1)
{
  v2 = sub_23EDB9E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDB9314(uint64_t a1)
{
  v2 = sub_23EDB9E04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDB9350(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389470, &qword_23EDC8BB0);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v4 = &v23 - v3;
  v5 = *v1;
  v6 = v1[1];
  v35 = *(v1 + 4);
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB9E04();
  v25 = v4;
  sub_23EDC23A0();
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (sub_23EDB00D4(v9, v10))
  {
    v30 = v5;
    v31 = v6;
    v32 = v35;
    v33 = v7;
    v34 = v8;
    LOBYTE(v28) = 0;
    v11 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389460, &qword_23EDC8BA8);
    sub_23ED86D4C(&qword_27E389480, &qword_27E389460, &qword_23EDC8BA8, &unk_23EDC7AC0);
    v12 = v27;
    v13 = v25;
    sub_23EDC2190();
    v14 = v33;

    return (*(v24 + 8))(v13, v12);
  }

  else
  {
    v16 = v24;
    v17 = v5;
    v30 = v5;
    v31 = v6;
    v18 = v35;
    v32 = v35;
    v33 = v7;
    v34 = v8;
    v28 = sub_23EDB9164();
    v29 = v19;
    v36 = 1;
    sub_23EDAA5D0();
    v20 = v26;
    v21 = v27;
    v22 = v25;
    sub_23EDC2190();
    sub_23ED6F8AC(v28, v29);
    if (!v20)
    {
      v30 = v17;
      v31 = v6;
      v32 = v18;
      LOBYTE(v28) = 2;
      sub_23EDB9EAC();
      sub_23EDC2190();
    }

    return (*(v16 + 8))(v22, v21);
  }
}

uint64_t sub_23EDB9604@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389448, &qword_23EDC8BA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB9E04();
  sub_23EDC2360();
  if (!v2)
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    if (sub_23EDB00EC(v10, v11))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389460, &qword_23EDC8BA8);
      v25 = 0;
      sub_23ED86D4C(&qword_27E389468, &qword_27E389460, &qword_23EDC8BA8, &unk_23EDC7AE8);
      sub_23EDC20F0();
      (*(v6 + 8))(v8, v5);
      v12 = v21;
      v13 = v22;
      v15 = v23;
      v14 = v24;
    }

    else
    {
      v25 = 1;
      sub_23EDAA8A8();
      sub_23EDC20F0();
      v17 = *(&v21 + 1);
      v16 = v21;
      v25 = 2;
      sub_23EDB9E58();
      sub_23EDC20F0();
      v18 = v16;
      v20 = v16;
      v13 = v22;
      v19 = v21;
      v15 = sub_23EDBA390(v18, v17, &v21);
      (*(v6 + 8))(v8, v5);
      sub_23ED6F8AC(v20, v17);
      type metadata accessor for PixelBufferArchive.HiddenBufferData();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_23EDC45C0;
      v12 = v19;
    }

    *a2 = v12;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_23EDB99F0(uint64_t a1)
{
  v2 = sub_23EDB9DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDB9A2C(uint64_t a1)
{
  v2 = sub_23EDB9DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDB9A68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389438, &qword_23EDC8B98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDB9DB0();
  sub_23EDC23A0();
  return (*(v3 + 8))(v5, v2);
}

void sub_23EDB9B7C(__IOSurface *a1@<X1>, uint64_t a2@<X8>)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v3 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], a1, 0, v5);
  if (v3 || !v5[0])
  {
    sub_23ED87720();
    swift_allocError();
    *v4 = v3;
    *(v4 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    sub_23EDB8FE0(v5[0], a2);
  }
}

unint64_t sub_23EDB9C48(uint64_t a1)
{
  *(a1 + 8) = sub_23EDB8568();
  result = sub_23EDB8514();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23EDB9C88()
{
  result = qword_27E389420;
  if (!qword_27E389420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389420);
  }

  return result;
}

unint64_t sub_23EDB9CE0()
{
  result = qword_27E389428;
  if (!qword_27E389428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389428);
  }

  return result;
}

unint64_t sub_23EDB9D34(uint64_t a1)
{
  result = sub_23EDB9D5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23EDB9D5C()
{
  result = qword_27E389430;
  if (!qword_27E389430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389430);
  }

  return result;
}

unint64_t sub_23EDB9DB0()
{
  result = qword_27E389440;
  if (!qword_27E389440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389440);
  }

  return result;
}

unint64_t sub_23EDB9E04()
{
  result = qword_27E389450;
  if (!qword_27E389450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389450);
  }

  return result;
}

unint64_t sub_23EDB9E58()
{
  result = qword_27E389458;
  if (!qword_27E389458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389458);
  }

  return result;
}

unint64_t sub_23EDB9EAC()
{
  result = qword_27E389478;
  if (!qword_27E389478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389478);
  }

  return result;
}

uint64_t sub_23EDB9F00(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_23EDB9FB8(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_23EDB9F00(a1, &a1[a2]);
  }

  sub_23EDC0DF0();
  swift_allocObject();
  sub_23EDC0DB0();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23EDC0E90();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_23EDBA068(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23ED922EC(result, a2);
  }

  return result;
}

unint64_t sub_23EDBA0B0()
{
  result = qword_27E389488;
  if (!qword_27E389488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389488);
  }

  return result;
}

unint64_t sub_23EDBA108()
{
  result = qword_27E389490;
  if (!qword_27E389490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389490);
  }

  return result;
}

unint64_t sub_23EDBA160()
{
  result = qword_27E389498;
  if (!qword_27E389498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389498);
  }

  return result;
}

unint64_t sub_23EDBA1B8()
{
  result = qword_27E3894A0;
  if (!qword_27E3894A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894A0);
  }

  return result;
}

unint64_t sub_23EDBA210()
{
  result = qword_27E3894A8;
  if (!qword_27E3894A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894A8);
  }

  return result;
}

uint64_t sub_23EDBA264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265666552637078 && a2 == 0xEC00000065636E65;
  if (v4 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726566667562 && a2 == 0xEA00000000006174 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023EDCBA10 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23EDC2240();

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

size_t sub_23EDBA390(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_23EDC1420();
  v7 = v6;
  if (v3)
  {
    return v7;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(v6);
  result = CVPixelBufferGetHeight(v7);
  v10 = result * BytesPerRow;
  if ((result * BytesPerRow) >> 64 != (result * BytesPerRow) >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v14 = __OFSUB__(v12, v13);
    v15 = v12 - v13;
    if (!v14)
    {
      if (v15 == v10)
      {
        goto LABEL_10;
      }

LABEL_15:
      sub_23EDBA510();
      swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 5;
      swift_willThrow();

      return v7;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v11)
  {
    if (BYTE6(a2) != v10)
    {
      goto LABEL_15;
    }

LABEL_10:
    MEMORY[0x28223BE20](result);
    sub_23EDC1D30();
    return v7;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    if (HIDWORD(a1) - a1 != v10)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_23EDBA510()
{
  result = qword_27E3894B0;
  if (!qword_27E3894B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894B0);
  }

  return result;
}

void *sub_23EDBA564(void *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v3)
    {
      __src = a2;
      v17 = a3;
      v18 = BYTE2(a3);
      v19 = BYTE3(a3);
      v20 = BYTE4(a3);
      v21 = BYTE5(a3);
      return memcpy(result, &__src, BYTE6(a3));
    }

    v11 = a2;
    v10 = (a2 >> 32) - a2;
    if (a2 >> 32 >= a2)
    {
      v4 = result;
      v12 = sub_23EDC0DC0();
      if (!v12)
      {
LABEL_26:
        result = sub_23EDC0DD0();
        goto LABEL_27;
      }

      v13 = v12;
      v14 = sub_23EDC0DE0();
      if (!__OFSUB__(v11, v14))
      {
        v7 = (v11 - v14 + v13);
        result = sub_23EDC0DD0();
        if (v7)
        {
          goto LABEL_16;
        }

LABEL_27:
        __break(1u);
        return result;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v3 != 2)
  {
    return result;
  }

  v4 = result;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_23EDC0DC0();
  if (v7)
  {
    v8 = sub_23EDC0DE0();
    if (__OFSUB__(v5, v8))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v7 += v5 - v8;
  }

  v9 = __OFSUB__(v6, v5);
  v10 = v6 - v5;
  if (v9)
  {
    goto LABEL_23;
  }

  result = sub_23EDC0DD0();
  if (!v7)
  {
    __break(1u);
    return result;
  }

LABEL_16:
  if (result >= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = result;
  }

  return memmove(v4, v7, v15);
}

uint64_t sub_23EDBA72C(unsigned int a1)
{
  v2 = sub_23EDC1A40();
  v4 = v3;
  v5 = sub_23EDC1A40();
  v7 = v6;
  v8 = sub_23EDC1A40();
  v10 = v9;
  v11 = sub_23EDC1A40();
  v13 = v12;
  if (sub_23EDBAA58(v2, v4) & 1) != 0 && (sub_23EDBAA58(v5, v7) & 1) != 0 && (sub_23EDBAA58(v8, v10) & 1) != 0 && (sub_23EDBAA58(v11, v13))
  {
    MEMORY[0x23EF237D0](39, 0xE100000000000000);
    sub_23EDC18F0();

    sub_23EDC18F0();

    sub_23EDC18F0();

    sub_23EDC18F0();

    MEMORY[0x23EF237D0](39, 0xE100000000000000);
    return 0;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3894F0, &qword_23EDC9018);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_23EDC4860;
    v16 = MEMORY[0x277D83C10];
    *(v15 + 56) = MEMORY[0x277D83B88];
    *(v15 + 64) = v16;
    *(v15 + 32) = a1;
    return sub_23EDC19E0();
  }
}

unint64_t sub_23EDBAA58(unint64_t a1, unint64_t a2)
{
  if (sub_23EDC1900() & 1) != 0 || (sub_23EDC1910() & 1) != 0 || (sub_23EDC18E0())
  {
    return 1;
  }

  if ((sub_23EDC18D0() & 1) == 0)
  {
    return 0;
  }

  result = sub_23EDBB984(a1, a2);
  if ((result & 0x100000000) == 0)
  {
    return (result - 14) <= 0xFFFFFFFB && (result - 8232) >= 2 && result != 133;
  }

  __break(1u);
  return result;
}

uint64_t PixelDimensions.description.getter()
{
  v2 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](2127904, 0xE300000000000000);
  v0 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v0);

  return v2;
}

uint64_t sub_23EDBABC0()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

void sub_23EDBABF4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_23EDC2240() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23EDC2240();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_23EDBACC8(uint64_t a1)
{
  v2 = sub_23EDBBDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBAD04(uint64_t a1)
{
  v2 = sub_23EDBBDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PixelDimensions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3894B8, &qword_23EDC8D80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDBBDCC();
  sub_23EDC23A0();
  v11 = 0;
  sub_23EDC2180();
  if (!v2)
  {
    v10 = 1;
    sub_23EDC2180();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PixelDimensions.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x23EF24060](*v0);
  return MEMORY[0x23EF24060](v1);
}

uint64_t PixelDimensions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  MEMORY[0x23EF24060](v2);
  return sub_23EDC2320();
}

uint64_t PixelDimensions.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3894C8, &qword_23EDC8D88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDBBDCC();
  sub_23EDC2360();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_23EDC20E0();
    v13 = 1;
    v10 = sub_23EDC20E0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_23EDBB130()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  MEMORY[0x23EF24060](v2);
  return sub_23EDC2320();
}

uint64_t sub_23EDBB18C()
{
  v1 = v0[1];
  MEMORY[0x23EF24060](*v0);
  return MEMORY[0x23EF24060](v1);
}

uint64_t sub_23EDBB1C8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23EDC22F0();
  MEMORY[0x23EF24060](v1);
  MEMORY[0x23EF24060](v2);
  return sub_23EDC2320();
}

uint64_t sub_23EDBB268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (a2 >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (a4 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  if (a2 <= a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  v8 = v6 >= v7;
  v9 = v5 < v4 || v8;
  if (v4 >= v5)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

BOOL sub_23EDBB2A8(__int128 *a1, __int128 *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;
  return !_s16AlchemistService15PixelDimensionsV1loiySbAC_ACtFZ_0(&v5, &v4);
}

BOOL sub_23EDBB2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (a2 >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (a4 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  if (a2 <= a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  v8 = v6 < v7;
  if (v5 < v4)
  {
    v8 = 0;
  }

  return v4 < v5 || v8;
}

uint64_t sub_23EDBB33C()
{
  v1 = *(v0 + 16);
  v5 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](2127904, 0xE300000000000000);
  v2 = sub_23EDC21E0();
  MEMORY[0x23EF237D0](v2);

  MEMORY[0x23EF237D0](32, 0xE100000000000000);
  v3 = sub_23EDBA72C(v1);
  MEMORY[0x23EF237D0](v3);

  return v5;
}

uint64_t sub_23EDBB40C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389510, &qword_23EDC9100);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v8 = *v1;
  v7 = v1[1];
  v14 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDBC004();
  sub_23EDC23A0();
  v12 = v8;
  v13 = v7;
  v15 = 0;
  sub_23EDBC0AC();
  v9 = v11[1];
  sub_23EDC2190();
  if (!v9)
  {
    LOBYTE(v12) = 1;
    sub_23EDC21B0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23EDBB5B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3894F8, &qword_23EDC90F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDBC004();
  sub_23EDC2360();
  if (!v2)
  {
    v14 = 0;
    sub_23EDBC058();
    sub_23EDC20F0();
    v9 = v13[0];
    v10 = v13[1];
    LOBYTE(v13[0]) = 1;
    v11 = sub_23EDC2110();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_23EDBB770()
{
  if (*v0)
  {
    return 0x726F466C65786970;
  }

  else
  {
    return 0x6F69736E656D6964;
  }
}

void sub_23EDBB7BC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL;
  if (v6 || (sub_23EDC2240() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23EDC2240();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_23EDBB8A8(uint64_t a1)
{
  v2 = sub_23EDBC004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBB8E4(uint64_t a1)
{
  v2 = sub_23EDBC004();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23EDBB984(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_23EDBBAD4(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_23EDC1EB0();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_23EDC1F40() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_23EDBBAD4(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_23EDBBB6C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_23EDBBBE0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_23EDBBB6C(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_23EDBBD04(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23EDBBBE0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_23EDC1F40();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

unint64_t sub_23EDBBD04(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23EDC1AB0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23EF23800](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL _s16AlchemistService15PixelDimensionsV1loiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 >= *a1)
  {
    v6 = *a1;
  }

  else
  {
    v6 = a1[1];
  }

  if (v5 >= v4)
  {
    v7 = *a2;
  }

  else
  {
    v7 = a2[1];
  }

  if (v6 < v7)
  {
    return 1;
  }

  if (v3 > v2)
  {
    v2 = a1[1];
  }

  if (v5 > v4)
  {
    v4 = a2[1];
  }

  v9 = v2 < v4;
  return v7 >= v6 && v9;
}

unint64_t sub_23EDBBDCC()
{
  result = qword_27E3894C0;
  if (!qword_27E3894C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894C0);
  }

  return result;
}

unint64_t sub_23EDBBE24()
{
  result = qword_27E3894D0;
  if (!qword_27E3894D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894D0);
  }

  return result;
}

unint64_t sub_23EDBBEA4()
{
  result = qword_27E3894D8;
  if (!qword_27E3894D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894D8);
  }

  return result;
}

unint64_t sub_23EDBBEFC()
{
  result = qword_27E3894E0;
  if (!qword_27E3894E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894E0);
  }

  return result;
}

unint64_t sub_23EDBBF54()
{
  result = qword_27E3894E8;
  if (!qword_27E3894E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3894E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PixelBufferDescriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PixelBufferDescriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

unint64_t sub_23EDBC004()
{
  result = qword_27E389500;
  if (!qword_27E389500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389500);
  }

  return result;
}

unint64_t sub_23EDBC058()
{
  result = qword_27E389508;
  if (!qword_27E389508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389508);
  }

  return result;
}

unint64_t sub_23EDBC0AC()
{
  result = qword_27E389518;
  if (!qword_27E389518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389518);
  }

  return result;
}

unint64_t sub_23EDBC114()
{
  result = qword_27E389520;
  if (!qword_27E389520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389520);
  }

  return result;
}

unint64_t sub_23EDBC16C()
{
  result = qword_27E389528;
  if (!qword_27E389528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389528);
  }

  return result;
}

unint64_t sub_23EDBC1C4()
{
  result = qword_27E389530;
  if (!qword_27E389530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389530);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16AlchemistService16PixelBufferErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_23EDBC24C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23EDBC294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_23EDBC2D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_23EDBC300(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v55 = a2;
  v56 = a4;
  v52 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895B8, &qword_23EDC93C0);
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895C0, &qword_23EDC93C8);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895C8, &qword_23EDC93D0);
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v36 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895D0, &qword_23EDC93D8);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  v46 = &v35 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895D8, &qword_23EDC93E0);
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895E0, &qword_23EDC93E8);
  v43 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895E8, &qword_23EDC93F0);
  v42 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3895F0, &qword_23EDC93F8);
  v53 = *(v22 - 8);
  v54 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v35 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23EDBDF9C();
  sub_23EDC23A0();
  if (v56 <= 2u)
  {
    if (v56)
    {
      if (v56 != 1)
      {
        v59 = 2;
        sub_23EDBE140();
        v28 = v54;
        sub_23EDC2140();
        v29 = v45;
        sub_23EDC21A0();
        (*(v44 + 8))(v15, v29);
        return (*(v53 + 8))(v24, v28);
      }

      v58 = 1;
      sub_23EDBE194();
      v25 = v54;
      sub_23EDC2140();
      sub_23EDC21A0();
      (*(v43 + 8))(v18, v16);
      return (*(v53 + 8))(v24, v25);
    }

    v57 = 0;
    sub_23EDBE1E8();
    v25 = v54;
    sub_23EDC2140();
    sub_23EDC21B0();
    v26 = v42;
LABEL_10:
    (*(v26 + 8))(v21, v19);
    return (*(v53 + 8))(v24, v25);
  }

  if (v56 == 3)
  {
    v60 = 3;
    sub_23EDBE0EC();
    v21 = v46;
    v25 = v54;
    sub_23EDC2140();
    v19 = v48;
    sub_23EDC21A0();
    v26 = v47;
    goto LABEL_10;
  }

  if (v56 == 4)
  {
    v63 = 6;
    sub_23EDBDFF0();
    v21 = v49;
    v25 = v54;
    sub_23EDC2140();
    v19 = v51;
    sub_23EDC2160();
    v26 = v50;
    goto LABEL_10;
  }

  v30 = (v53 + 8);
  if (v55 | v52)
  {
    v62 = 5;
    sub_23EDBE044();
    v31 = v39;
    v32 = v54;
    sub_23EDC2140();
    v34 = v40;
    v33 = v41;
  }

  else
  {
    v61 = 4;
    sub_23EDBE098();
    v31 = v36;
    v32 = v54;
    sub_23EDC2140();
    v34 = v37;
    v33 = v38;
  }

  (*(v34 + 8))(v31, v33);
  return (*v30)(v24, v32);
}

uint64_t sub_23EDBCA7C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0xD000000000000011;
    if (v1 != 1)
    {
      v4 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x7865746E6F436F6ELL;
    }
  }

  else
  {
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23EDBCB6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23EDBD260(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23EDBCBA0(uint64_t a1)
{
  v2 = sub_23EDBDF9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCBDC(uint64_t a1)
{
  v2 = sub_23EDBDF9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBCC38(uint64_t a1)
{
  v2 = sub_23EDBE0EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCC74(uint64_t a1)
{
  v2 = sub_23EDBE0EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBCCB0(uint64_t a1)
{
  v2 = sub_23EDBE044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCCEC(uint64_t a1)
{
  v2 = sub_23EDBE044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBCD28(uint64_t a1)
{
  v2 = sub_23EDBE098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCD64(uint64_t a1)
{
  v2 = sub_23EDBE098();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23EDBCDBC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F436E7275746572 && a2 == 0xEA00000000006564)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_23EDC2240();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_23EDBCE4C(uint64_t a1)
{
  v2 = sub_23EDBE194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCE88(uint64_t a1)
{
  v2 = sub_23EDBE194();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23EDBCEE8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_23EDC2240();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_23EDBCF78(uint64_t a1)
{
  v2 = sub_23EDBE1E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBCFB4(uint64_t a1)
{
  v2 = sub_23EDBE1E8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23EDBCFF0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_23EDC2240();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_23EDBD074(uint64_t a1)
{
  v2 = sub_23EDBE140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBD0B0(uint64_t a1)
{
  v2 = sub_23EDBE140();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23EDBD10C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_23EDC2240();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_23EDBD198(uint64_t a1)
{
  v2 = sub_23EDBDFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23EDBD1D4(uint64_t a1)
{
  v2 = sub_23EDBDFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23EDBD210@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_23EDBD4B4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_23EDBD260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865746E6F436F6ELL && a2 == 0xE900000000000074;
  if (v4 || (sub_23EDC2240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023EDCBA30 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023EDCBA50 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023EDCBA70 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023EDCBA90 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023EDCBAB0 == a2 || (sub_23EDC2240() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023EDCBAD0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_23EDC2240();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_23EDBD4B4(void *a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389538, &qword_23EDC9378);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v55 = &v41 - v2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389540, &qword_23EDC9380);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v59 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389548, &qword_23EDC9388);
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  MEMORY[0x28223BE20](v4);
  v56 = &v41 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389550, &qword_23EDC9390);
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v58 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389558, &qword_23EDC9398);
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v41 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389560, &qword_23EDC93A0);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389568, &qword_23EDC93A8);
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389570, &unk_23EDC93B0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - v17;
  v19 = a1[3];
  v60 = a1;
  v20 = __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_23EDBDF9C();
  v21 = v61;
  sub_23EDC2360();
  if (!v21)
  {
    v22 = v14;
    v41 = v12;
    v61 = v11;
    v23 = v57;
    v24 = v58;
    v25 = v59;
    v26 = sub_23EDC2120();
    v27 = (2 * *(v26 + 16)) | 1;
    v62 = v26;
    v63 = v26 + 32;
    v64 = 0;
    v65 = v27;
    v28 = sub_23ED89DB0();
    if (v28 == 7 || v64 != v65 >> 1)
    {
      v30 = sub_23EDC1F30();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389020, &qword_23EDC5600);
      *v32 = &type metadata for PixelBufferError;
      v20 = v18;
      sub_23EDC20A0();
      sub_23EDC1F10();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v16 + 8))(v18, v15);
      swift_unknownObjectRelease();
    }

    else if (v28 <= 2u)
    {
      if (v28)
      {
        if (v28 == 1)
        {
          v66 = 1;
          sub_23EDBE194();
          v34 = v61;
          sub_23EDC2090();
          v35 = v44;
          LODWORD(v20) = sub_23EDC2100();
          (*(v43 + 8))(v34, v35);
        }

        else
        {
          v66 = 2;
          sub_23EDBE140();
          sub_23EDC2090();
          v37 = v47;
          LODWORD(v20) = sub_23EDC2100();
          (*(v46 + 8))(v23, v37);
        }

        (*(v16 + 8))(v18, v15);
        swift_unknownObjectRelease();
        v20 = v20;
      }

      else
      {
        v66 = 0;
        sub_23EDBE1E8();
        sub_23EDC2090();
        v36 = v41;
        LODWORD(v20) = sub_23EDC2110();
        (*(v42 + 8))(v22, v36);
        (*(v16 + 8))(v18, v15);
        swift_unknownObjectRelease();
        v20 = v20;
      }
    }

    else if (v28 > 4u)
    {
      if (v28 == 5)
      {
        v66 = 5;
        sub_23EDBE044();
        sub_23EDC2090();
        (*(v51 + 8))(v25, v53);
        (*(v16 + 8))(v18, v15);
        swift_unknownObjectRelease();
        v20 = 1;
      }

      else
      {
        v66 = 6;
        sub_23EDBDFF0();
        v39 = v55;
        sub_23EDC2090();
        v40 = v52;
        v20 = sub_23EDC20C0();
        (*(v54 + 8))(v39, v40);
        (*(v16 + 8))(v18, v15);
        swift_unknownObjectRelease();
      }
    }

    else if (v28 == 3)
    {
      v66 = 3;
      sub_23EDBE0EC();
      sub_23EDC2090();
      v29 = v45;
      LODWORD(v20) = sub_23EDC2100();
      (*(v48 + 8))(v24, v29);
      (*(v16 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v20 = v20;
    }

    else
    {
      v66 = 4;
      sub_23EDBE098();
      v38 = v56;
      sub_23EDC2090();
      (*(v50 + 8))(v38, v49);
      (*(v16 + 8))(v18, v15);
      swift_unknownObjectRelease();
      v20 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  return v20;
}

unint64_t sub_23EDBDF9C()
{
  result = qword_27E389578;
  if (!qword_27E389578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389578);
  }

  return result;
}

unint64_t sub_23EDBDFF0()
{
  result = qword_27E389580;
  if (!qword_27E389580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389580);
  }

  return result;
}

unint64_t sub_23EDBE044()
{
  result = qword_27E389588;
  if (!qword_27E389588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389588);
  }

  return result;
}

unint64_t sub_23EDBE098()
{
  result = qword_27E389590;
  if (!qword_27E389590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389590);
  }

  return result;
}

unint64_t sub_23EDBE0EC()
{
  result = qword_27E389598;
  if (!qword_27E389598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389598);
  }

  return result;
}

unint64_t sub_23EDBE140()
{
  result = qword_27E3895A0;
  if (!qword_27E3895A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3895A0);
  }

  return result;
}

unint64_t sub_23EDBE194()
{
  result = qword_27E3895A8;
  if (!qword_27E3895A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3895A8);
  }

  return result;
}

unint64_t sub_23EDBE1E8()
{
  result = qword_27E3895B0;
  if (!qword_27E3895B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3895B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PixelBufferError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PixelBufferError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23EDBE408()
{
  result = qword_27E3895F8;
  if (!qword_27E3895F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3895F8);
  }

  return result;
}

unint64_t sub_23EDBE460()
{
  result = qword_27E389600;
  if (!qword_27E389600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389600);
  }

  return result;
}

unint64_t sub_23EDBE4B8()
{
  result = qword_27E389608;
  if (!qword_27E389608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389608);
  }

  return result;
}

unint64_t sub_23EDBE510()
{
  result = qword_27E389610;
  if (!qword_27E389610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389610);
  }

  return result;
}

unint64_t sub_23EDBE568()
{
  result = qword_27E389618;
  if (!qword_27E389618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389618);
  }

  return result;
}

unint64_t sub_23EDBE5C0()
{
  result = qword_27E389620;
  if (!qword_27E389620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389620);
  }

  return result;
}

unint64_t sub_23EDBE618()
{
  result = qword_27E389628;
  if (!qword_27E389628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389628);
  }

  return result;
}

unint64_t sub_23EDBE670()
{
  result = qword_27E389630;
  if (!qword_27E389630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389630);
  }

  return result;
}

unint64_t sub_23EDBE6C8()
{
  result = qword_27E389638;
  if (!qword_27E389638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389638);
  }

  return result;
}

unint64_t sub_23EDBE720()
{
  result = qword_27E389640;
  if (!qword_27E389640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389640);
  }

  return result;
}

unint64_t sub_23EDBE778()
{
  result = qword_27E389648;
  if (!qword_27E389648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389648);
  }

  return result;
}

unint64_t sub_23EDBE7D0()
{
  result = qword_27E389650;
  if (!qword_27E389650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389650);
  }

  return result;
}

unint64_t sub_23EDBE828()
{
  result = qword_27E389658;
  if (!qword_27E389658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389658);
  }

  return result;
}

unint64_t sub_23EDBE880()
{
  result = qword_27E389660;
  if (!qword_27E389660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389660);
  }

  return result;
}

unint64_t sub_23EDBE8D8()
{
  result = qword_27E389668;
  if (!qword_27E389668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389668);
  }

  return result;
}

unint64_t sub_23EDBE930()
{
  result = qword_27E389670;
  if (!qword_27E389670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389670);
  }

  return result;
}

unint64_t sub_23EDBE988()
{
  result = qword_27E389678;
  if (!qword_27E389678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389678);
  }

  return result;
}

unint64_t sub_23EDBE9E0()
{
  result = qword_27E389680;
  if (!qword_27E389680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389680);
  }

  return result;
}

unint64_t sub_23EDBEA38()
{
  result = qword_27E389688;
  if (!qword_27E389688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389688);
  }

  return result;
}

unint64_t sub_23EDBEA90()
{
  result = qword_27E389690;
  if (!qword_27E389690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389690);
  }

  return result;
}

unint64_t sub_23EDBEAE8()
{
  result = qword_27E389698;
  if (!qword_27E389698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389698);
  }

  return result;
}

unint64_t sub_23EDBEB40()
{
  result = qword_27E3896A0;
  if (!qword_27E3896A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3896A0);
  }

  return result;
}

uint64_t sub_23EDBEBAC()
{
  sub_23EDB452C(v0 + OBJC_IVAR____TtC16AlchemistService34InferenceSessionDefinitionAccessor__session);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for InferenceSessionDefinitionAccessor(uint64_t a1)
{
  result = qword_27E3896B0;
  if (!qword_27E3896B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23EDBEC40(uint64_t a1)
{
  result = type metadata accessor for InferenceSessionDefinition(319);
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

uint64_t sub_23EDBECDC(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v23 = sub_23EDC1790();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v19 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23EDC1700();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v18 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23EDC1DD0();
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23EDC1DC0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_23EDC1860();
  MEMORY[0x28223BE20](v9 - 8);
  type metadata accessor for VirtualMemoryStatistics();
  *(v1 + 16) = swift_allocObject();
  sub_23EDC1F80();
  v10 = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC16AlchemistService10Signposter_signpostIDMap) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC16AlchemistService10Signposter_signpostStateMap) = v10;
  v16 = OBJC_IVAR____TtC16AlchemistService10Signposter_queue;
  sub_23EDC0AB8();
  sub_23EDC1850();
  v25 = MEMORY[0x277D84F90];
  sub_23EDC0B04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E389700, &qword_23EDC9D38);
  sub_23EDC0B5C();
  sub_23EDC1E70();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v17);
  *(v1 + v16) = sub_23EDC1DF0();
  v11 = v21;
  v13 = v23;
  v12 = v24;
  (*(v21 + 16))(v19, v24, v23);
  v14 = v18;
  sub_23EDC16E0();
  (*(v11 + 8))(v12, v13);
  (*(v20 + 32))(v2 + OBJC_IVAR____TtC16AlchemistService10Signposter_signposter, v14, v22);
  return v2;
}

uint64_t sub_23EDBF0BC(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C40, &qword_23EDC5ED8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v79 - v8);
  v92 = sub_23EDC16D0();
  v10 = *(v92 - 8);
  v11 = MEMORY[0x28223BE20](v92);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v87 = &v79 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v79 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C48, &qword_23EDC9D30);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  MEMORY[0x28223BE20](v19);
  v20 = &v79;
  v22 = &v79 - v21;
  v89 = v17;
  v86 = v13;
  v83 = a3;
  v91 = v23;
  if (a3)
  {
    v20 = (a1 >> 32);
    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
LABEL_55:
        swift_once();
LABEL_19:
        v52 = sub_23EDC1790();
        __swift_project_value_buffer(v52, qword_27E389830);
        v53 = sub_23EDC1770();
        v54 = sub_23EDC1D80();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_23ED67000, v53, v54, "Error getting system virtual memory", v55, 2u);
          MEMORY[0x23EF24B30](v55, -1, -1);
        }

        v56 = sub_23EDC16F0();
        v57 = sub_23EDC1E10();
        result = sub_23EDC1E30();
        if (result)
        {
          if (v83)
          {
            if (!(v84 >> 32))
            {
              if ((v84 & 0xFFFFF800) == 0xD800)
              {
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              if (v84 >> 16 <= 0x10)
              {
                v59 = &v97;
                goto LABEL_37;
              }

              goto LABEL_58;
            }
          }

          else
          {
            if (v84)
            {
              v59 = v84;
LABEL_37:
              v66 = swift_slowAlloc();
              *v66 = 0;
              v65 = a3;
              v67 = sub_23EDC16C0();
              _os_signpost_emit_with_name_impl(&dword_23ED67000, v56, v57, v67, v59, "process-unwired-current -1 MB process-unwired-peak -1 MB", v66, 2u);
LABEL_43:
              MEMORY[0x23EF24B30](v66, -1, -1);
              goto LABEL_44;
            }

            __break(1u);
          }

          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        goto LABEL_31;
      }

      v20 = (a1 >> 16);
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v24 = a1 + 1;
LABEL_9:
          v96 = (v24 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v24) >> 3))));
          goto LABEL_10;
        }

LABEL_48:
        v74 = (a1 & 0x3F) << 8;
        v75 = (a1 >> 6) + v74 + 33217;
        v76 = (v74 | (a1 >> 6) & 0x3F) << 8;
        v77 = (a1 >> 18) + ((v76 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v78 = (a1 >> 12) + v76 + 8487393;
        if (v20)
        {
          v24 = v77;
        }

        else
        {
          v24 = v78;
        }

        if (a1 < 0x800)
        {
          v24 = v75;
        }

        goto LABEL_9;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_46;
  }

LABEL_10:
  v25 = sub_23EDC1A30();
  v27 = v26;
  v28 = OBJC_IVAR____TtC16AlchemistService10Signposter_signpostIDMap;
  swift_beginAccess();
  v29 = *(a4 + v28);
  v30 = *(v29 + 16);
  v84 = a1;
  v85 = v9;
  v90 = v10;
  if (v30)
  {

    v31 = sub_23ED906A8(v25, v27);
    if (v32)
    {
      v33 = v92;
      (*(v10 + 16))(v22, *(v29 + 56) + *(v10 + 72) * v31, v92);

      (*(v10 + 56))(v22, 0, 1, v33);
      sub_23EDC0A50(v22);
      goto LABEL_15;
    }
  }

  v34 = *(v10 + 56);
  v35 = v25;
  v36 = a4;
  v37 = v27;
  v38 = v92;
  v34(v22, 1, 1, v92);
  sub_23EDC0A50(v22);

  sub_23EDC16F0();
  v39 = v91;
  sub_23EDC16B0();
  v40 = v38;
  v27 = v37;
  a4 = v36;
  v25 = v35;
  v34(v39, 0, 1, v40);
  swift_beginAccess();
  sub_23ED88C4C(v39, v35, v27);
  swift_endAccess();
LABEL_15:
  v41 = *(a4 + v28);
  if (!*(v41 + 16))
  {
LABEL_26:
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_23EDC1EC0();

    v94 = 0xD00000000000001ALL;
    v95 = 0x800000023EDCBC00;
    MEMORY[0x23EF237D0](v25, v27);

    v60 = v94;
    v61 = v95;
    sub_23EDC098C();
    swift_allocError();
    *v62 = v60;
    *(v62 + 8) = v61;
    *(v62 + 16) = 0;
    return swift_willThrow();
  }

  v42 = sub_23ED906A8(v25, v27);
  if ((v43 & 1) == 0)
  {

    goto LABEL_26;
  }

  v91 = v27;
  v44 = v90;
  v45 = *(v41 + 56) + *(v90 + 72) * v42;
  v46 = v90 + 16;
  v47 = v87;
  v48 = v92;
  v80 = *(v90 + 16);
  v80(v87, v45, v92);

  a3 = v89;
  (*(v44 + 32))(v89, v47, v48);
  v49 = v88;
  v50 = sub_23EDA8D70();
  v81 = v46;
  v82 = v25;
  if (v49)
  {

    if (qword_27E3881A8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

  v63 = a3;
  v64 = v50;
  v88 = v51;
  v56 = sub_23EDC16F0();
  a3 = sub_23EDC1E10();
  result = sub_23EDC1E30();
  if ((result & 1) == 0)
  {
    v65 = v63;
    goto LABEL_44;
  }

  if ((v83 & 1) == 0)
  {
    if (!v84)
    {
      __break(1u);
LABEL_31:
      v65 = a3;
LABEL_44:
      v69 = v80;

      v70 = v92;
      v69(v86, v65, v92);
      sub_23EDC1750();
      swift_allocObject();
      v71 = sub_23EDC1740();
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
      v73 = v85;
      *v85 = v71;

      sub_23EDC1F50();
      (*(*(v72 - 8) + 56))(v73, 0, 1, v72);
      swift_beginAccess();
      sub_23ED88E24(v73, v82, v91);
      swift_endAccess();

      return (*(v90 + 8))(v65, v70);
    }

LABEL_42:
    v66 = swift_slowAlloc();
    *v66 = 134218240;
    *(v66 + 4) = v64;
    *(v66 + 12) = 2048;
    *(v66 + 14) = v88;
    v65 = v63;
    v68 = sub_23EDC16C0();
    _os_signpost_emit_with_name_impl(&dword_23ED67000, v56, a3, v68, v84, "process-unwired-current %llu MB process-unwired-peak %llu MB", v66, 0x16u);
    goto LABEL_43;
  }

  if (v84 >> 32)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if ((v84 & 0xFFFFF800) != 0xD800)
  {
    if (v84 >> 16 > 0x10)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v84 = &v93;
    goto LABEL_42;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_23EDBF9EC(const char *a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void, void, uint64_t), uint64_t a6)
{
  v102 = a6;
  v116 = a4;
  v100 = sub_23EDC1710();
  v108 = *(v100 - 8);
  v9 = MEMORY[0x28223BE20](v100);
  v98 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v97 = v96 - v11;
  v12 = sub_23EDC16D0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v104 = (v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v103 = v96 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (v96 - v19);
  v110 = sub_23EDC1F70();
  v112 = *(v110 - 8);
  v21 = MEMORY[0x28223BE20](v110);
  v101 = v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v96 - v23;
  v111 = v96 - v23;
  v99 = a3;
  v109 = a5;
  v105 = v13;
  v106 = v12;
  if (a3)
  {
    v24 = (a1 >> 32);
    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
LABEL_64:
        swift_once();
LABEL_14:
        v38 = sub_23EDC1790();
        __swift_project_value_buffer(v38, qword_27E389830);
        v39 = sub_23EDC1770();
        v40 = sub_23EDC1D80();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_23ED67000, v39, v40, "Error getting system virtual memory", v41, 2u);
          MEMORY[0x23EF24B30](v41, -1, -1);
        }

        v26 = sub_23EDC16F0();
        v42 = v104;
        sub_23EDC1730();
        v43 = sub_23EDC1E00();
        if (sub_23EDC1E30())
        {
          LODWORD(v107) = v43;
          if ((v99 & 1) == 0)
          {

            v44 = v100;
            v45 = v98;
            if (!a1)
            {
              __break(1u);
              goto LABEL_20;
            }

            goto LABEL_34;
          }

          v57 = a1 >> 32;
          v44 = v100;
          v45 = v98;
          if (a1 >> 32)
          {
            __break(1u);
            goto LABEL_66;
          }

          v57 = a1 & 0xFFFFF800;
          v58 = 55296;
          if (v57 != 55296)
          {
            v57 = a1 >> 16;
            if (a1 >> 16 <= 0x10)
            {
              if (a1 <= 0x7F)
              {
                v59 = a1 + 1;
LABEL_33:
                v113 = (v59 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v59) & 0x18)));

                a1 = &v113;
LABEL_34:
                v53 = v109;
                v54 = v106;

                sub_23EDC1760();

                if ((*(v17 + 88))(v45, v44) == *MEMORY[0x277D85B00])
                {
                  v60 = "[Error] Interval already ended";
                }

                else
                {
                  (*(v17 + 8))(v45, v44);
                  v60 = "process-unwired-current -1 MB process-unwired-peak -1 MB";
                }

                v61 = swift_slowAlloc();
                *v61 = 0;
                v62 = v104;
                v63 = sub_23EDC16C0();
                _os_signpost_emit_with_name_impl(&dword_23ED67000, v26, v107, v63, a1, v60, v61, 2u);
                MEMORY[0x23EF24B30](v61, -1, -1);

                v42 = v62;
                goto LABEL_38;
              }

LABEL_67:
              v58 = (a1 & 0x3F) << 8;
              if (a1 < 0x800)
              {
                v89 = (a1 >> 6) + v58;
                v90 = 33217;
                goto LABEL_69;
              }

LABEL_79:
              v94 = (v58 | (a1 >> 6) & 0x3F) << 8;
              if (!v57)
              {
                v59 = (a1 >> 12) + v94 + 8487393;
                goto LABEL_70;
              }

              v89 = (a1 >> 18) + ((v94 | (a1 >> 12) & 0x3F) << 8);
              v90 = -2122219023;
LABEL_69:
              v59 = v89 + v90;
LABEL_70:
              v20 = v110;
              v44 = v100;
              v17 = v108;
              v45 = v98;
              goto LABEL_33;
            }

LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_26:

        v53 = v109;
        v54 = v106;
LABEL_38:
        (*(v105 + 8))(v42, v54);
        if (v53)
        {
          v64 = v101;
          sub_23EDC1F50();
          v65 = v111;
          v66 = sub_23EDC1F60();
          v68 = v67;
          v69 = *(v112 + 8);
          v69(v64, v20);
          v53(v66, v68, 0, 0, 1);

          return (v69)(v65, v20);
        }

        else
        {
          (*(v112 + 8))(v111, v20);
        }
      }

      v24 = (a1 >> 16);
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v25 = a1 + 1;
LABEL_9:
          v115 = (v25 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v25) >> 3))));
          goto LABEL_10;
        }

LABEL_57:
        v84 = (a1 & 0x3F) << 8;
        v85 = (a1 >> 6) + v84 + 33217;
        v86 = (v84 | (a1 >> 6) & 0x3F) << 8;
        v87 = (a1 >> 18) + ((v86 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v88 = (a1 >> 12) + v86 + 8487393;
        if (v24)
        {
          v25 = v87;
        }

        else
        {
          v25 = v88;
        }

        if (a1 < 0x800)
        {
          v25 = v85;
        }

        goto LABEL_9;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_55;
  }

LABEL_10:
  v26 = sub_23EDC1A30();
  v13 = v27;
  v28 = OBJC_IVAR____TtC16AlchemistService10Signposter_signpostStateMap;
  v29 = v116;
  swift_beginAccess();
  v30 = *(v29 + v28);
  if (!*(v30 + 16))
  {
LABEL_21:
    v113 = 0;
    v114 = 0xE000000000000000;
    sub_23EDC1EC0();

    v113 = 0xD00000000000001DLL;
    v114 = 0x800000023EDCBBC0;
    MEMORY[0x23EF237D0](v26, v13);

    v46 = v113;
    v47 = v114;
    sub_23EDC098C();
    swift_allocError();
    *v48 = v46;
    *(v48 + 8) = v47;
    *(v48 + 16) = 1;
    return swift_willThrow();
  }

  v31 = sub_23ED906A8(v26, v13);
  if ((v32 & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_23EDC09E0(*(v30 + 56) + *(v18 + 72) * v31, v20);

  v33 = *v20;
  v34 = v20 + *(v17 + 48);
  v20 = v110;
  (*(v112 + 32))(v111, v34, v110);
  v35 = v107;
  v36 = sub_23EDA8D70();
  if (v35)
  {

    v17 = v108;
    if (qword_27E3881A8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

  v50 = v36;
  v107 = v37;
  v42 = sub_23EDC16F0();
  sub_23EDC1730();
  v20 = sub_23EDC1E00();
  v51 = sub_23EDC1E30();
  v26 = v108;
  v96[1] = v33;
  if (v51)
  {
    v96[0] = v50;
    if ((v99 & 1) == 0)
    {

      v52 = v100;
      if (!a1)
      {
        __break(1u);
        goto LABEL_26;
      }

      goto LABEL_47;
    }

    v70 = a1 >> 32;
    v52 = v100;
    if (a1 >> 32)
    {
      __break(1u);
    }

    else
    {
      v57 = a1 & 0xFFFFF800;
      v58 = 55296;
      if (v57 == 55296)
      {
        goto LABEL_78;
      }

      v70 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v71 = a1 + 1;
LABEL_46:
          v113 = (v71 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v71) & 0x18)));

          a1 = &v113;
LABEL_47:
          v55 = v109;
          v72 = v97;

          sub_23EDC1760();

          if ((*(v26 + 88))(v72, v52) == *MEMORY[0x277D85B00])
          {
            v73 = 0;
            v74 = "[Error] Interval already ended";
          }

          else
          {
            (*(v26 + 8))(v72, v52);
            v74 = "process-unwired-current %llu MB process-unwired-peak %llu MB";
            v73 = 2;
          }

          v75 = swift_slowAlloc();
          *v75 = 0;
          *(v75 + 1) = v73;
          *(v75 + 2) = 2048;
          v50 = v96[0];
          *(v75 + 4) = v96[0];
          *(v75 + 12) = 2048;
          *(v75 + 14) = v107;
          v56 = v103;
          v76 = sub_23EDC16C0();
          _os_signpost_emit_with_name_impl(&dword_23ED67000, v42, v20, v76, a1, v74, v75, 0x16u);
          MEMORY[0x23EF24B30](v75, -1, -1);

          goto LABEL_51;
        }

LABEL_73:
        v91 = (a1 & 0x3F) << 8;
        if (a1 >= 0x800)
        {
          v95 = (v91 | (a1 >> 6) & 0x3F) << 8;
          if (!v70)
          {
            v71 = (a1 >> 12) + v95 + 8487393;
            goto LABEL_76;
          }

          v92 = (a1 >> 18) + ((v95 | (a1 >> 12) & 0x3F) << 8);
          v93 = -2122219023;
        }

        else
        {
          v92 = (a1 >> 6) + v91;
          v93 = 33217;
        }

        v71 = v92 + v93;
LABEL_76:
        v52 = v100;
        v26 = v108;
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_73;
  }

  v55 = v109;
  v56 = v103;
LABEL_51:
  (*(v105 + 8))(v56, v106);
  v77 = v110;
  if (v55)
  {
    v78 = v101;
    sub_23EDC1F50();
    v79 = v111;
    v80 = sub_23EDC1F60();
    v82 = v81;
    v83 = *(v112 + 8);
    v83(v78, v77);
    v109(v80, v82, v50, v107, 0);

    return (v83)(v79, v77);
  }

  else
  {
    (*(v112 + 8))(v111, v110);
  }
}

uint64_t sub_23EDC0608()
{

  v1 = OBJC_IVAR____TtC16AlchemistService10Signposter_signposter;
  v2 = sub_23EDC1700();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16AlchemistService10Signposter_clock;
  v4 = sub_23EDC1F90();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Signposter(uint64_t a1)
{
  result = qword_27E3896D8;
  if (!qword_27E3896D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23EDC0770(uint64_t a1)
{
  result = sub_23EDC1700();
  if (v2 <= 0x3F)
  {
    result = sub_23EDC1F90();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23EDC0868()
{
  v0 = sub_23EDC1790();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E3881A8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27E389830);
  (*(v1 + 16))(v3, v4, v0);
  type metadata accessor for Signposter(0);
  v5 = swift_allocObject();
  result = sub_23EDBECDC(v3);
  qword_27E389878 = v5;
  return result;
}

unint64_t sub_23EDC098C()
{
  result = qword_27E3896E8;
  if (!qword_27E3896E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3896E8);
  }

  return result;
}

uint64_t sub_23EDC09E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388670, &qword_23EDC4C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23EDC0A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E388C48, &qword_23EDC9D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23EDC0AB8()
{
  result = qword_27E3896F0;
  if (!qword_27E3896F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3896F0);
  }

  return result;
}

unint64_t sub_23EDC0B04()
{
  result = qword_27E3896F8;
  if (!qword_27E3896F8)
  {
    sub_23EDC1DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3896F8);
  }

  return result;
}

unint64_t sub_23EDC0B5C()
{
  result = qword_27E389708;
  if (!qword_27E389708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E389700, &qword_23EDC9D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E389708);
  }

  return result;
}

uint64_t sub_23EDC0BCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23EDC0C14(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23EDC0C74()
{

  return swift_deallocClassInstance();
}