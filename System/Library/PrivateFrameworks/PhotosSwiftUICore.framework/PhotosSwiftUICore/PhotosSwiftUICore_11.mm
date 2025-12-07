uint64_t sub_1C10B1BC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92990, &qword_1C12B1390);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10B1C94()
{
  result = qword_1EBE92E18;
  if (!qword_1EBE92E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92E18);
  }

  return result;
}

uint64_t sub_1C10B1CE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t View.photosContainerRelativeFrame(_:count:span:spacing:alignment:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v13 = 0;
  v12 = 0;
  __src[0] = a1;
  *&__src[8] = a2;
  *&__src[16] = a3;
  *&__src[24] = a8;
  *&__src[32] = a4;
  *&__src[40] = a5;
  *&__src[48] = swift_getKeyPath();
  __src[56] = 0;
  *&__src[64] = swift_getKeyPath();
  *&__src[72] = 0;
  *&__src[80] = swift_getKeyPath();
  *&__src[88] = 0;
  MEMORY[0x1C68EE920](__src, a6, &type metadata for PhotosContainerRelativeFrameModifier, a7);
  memcpy(__dst, __src, 0x5AuLL);
  return sub_1C10B2030(__dst);
}

uint64_t sub_1C10B1E80()
{
  OUTLINED_FUNCTION_35();
  v0 = EnvironmentValues.photosHorizontalContainerLength.getter();
  return OUTLINED_FUNCTION_32(v0, v1);
}

uint64_t (*EnvironmentValues.photosHorizontalContainerLength.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1C10B2060();
  sub_1C12637F0();
  OUTLINED_FUNCTION_4_27();
  return sub_1C10B1F6C;
}

uint64_t sub_1C10B1F98(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C12637F0();
  return v3;
}

uint64_t sub_1C10B1FE4()
{
  OUTLINED_FUNCTION_35();
  v0 = EnvironmentValues.photosVerticalContainerLength.getter();
  return OUTLINED_FUNCTION_32(v0, v1);
}

unint64_t sub_1C10B2060()
{
  result = qword_1EDE7FEC0;
  if (!qword_1EDE7FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7FEC0);
  }

  return result;
}

unint64_t sub_1C10B20B4()
{
  result = qword_1EDE7FF90[0];
  if (!qword_1EDE7FF90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7FF90);
  }

  return result;
}

uint64_t (*EnvironmentValues.photosVerticalContainerLength.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1C10B20B4();
  sub_1C12637F0();
  OUTLINED_FUNCTION_4_27();
  return sub_1C10B21F8;
}

void sub_1C10B2204(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + 8);
  v3 = *a1;
  *(v3 + 2) = **a1;
  v3[24] = v4;
  sub_1C1263800();

  free(v3);
}

double sub_1C10B2270(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_1C1264A30();

  return result;
}

uint64_t sub_1C10B2334(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 90))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 56);
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

uint64_t sub_1C10B2374(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

double sub_1C10B23E0()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 56);
  v5 = *(v0 + 48);
  v9 = v5;
  if (v10 == 1)
  {
    return v5;
  }

  sub_1C1266420();
  v7 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  sub_1C0F9E21C(&v9, &qword_1EBE92E30, &qword_1C12B16A0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_1C10B2560(char a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE7F650 != -1)
  {
    swift_once();
  }

  if (byte_1EDE9B668 != 1)
  {
    return 0;
  }

  if (a1)
  {
    v12 = *(v1 + 88);
    v7 = *(v1 + 80);
  }

  else
  {
    v12 = *(v1 + 72);
    v7 = *(v1 + 64);
  }

  v11 = v7;
  if (HIBYTE(v12) != 1)
  {

    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(&v11, &qword_1EBE92E38, &qword_1C12B16A8);
    (*(v4 + 8))(v6, v3);
    return v10;
  }

  return v7;
}

double sub_1C10B2734()
{
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x5AuLL);
  sub_1C10B293C(v0, &v3);
  sub_1C12659A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E28, &qword_1C12B1698);
  sub_1C0FDB6D4(&qword_1EDE7BB00, &qword_1EBE92E28, &qword_1C12B1698, MEMORY[0x1E697FDF8]);
  sub_1C1264DC0();

  return result;
}

double sub_1C10B284C(char a1, uint64_t a2, double a3)
{
  v5 = COERCE_DOUBLE(sub_1C10B2560(a1 & 1));
  if (v6)
  {
    v5 = a3;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  v9 = v5 - v8 * (v7 + -1.0);
  if (v9 <= 0.0)
  {
    v9 = 0.0;
  }

  v10 = v8 * (*(a2 + 16) + -1.0) + v9 / v7 * *(a2 + 16);
  v11 = sub_1C10B23E0();
  return round(v11 * v10) / v11;
}

uint64_t sub_1C10B2974()
{
  result = sub_1C10B2998();
  byte_1EDE9B668 = result & 1;
  return result;
}

uint64_t sub_1C10B2998()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C1265E70();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1C12667F0();
    swift_unknownObjectRelease();
    sub_1C0F9E21C(v11, &qword_1EBE90620, &qword_1C12A8B00);
    v3 = sub_1C1265E70();
    v4 = [v0 BOOLForKey_];

    if (!v4)
    {
      v5 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    sub_1C0F9E21C(v11, &qword_1EBE90620, &qword_1C12A8B00);
  }

  if (qword_1EDE7C188 != -1)
  {
    swift_once();
  }

  v6 = sub_1C1262720();
  __swift_project_value_buffer(v6, qword_1EDE7C190);
  v7 = sub_1C12626F0();
  v8 = sub_1C1266430();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C0F96000, v7, v8, "PhotosContainerRelativeFrameWorkaround enabled", v9, 2u);
    MEMORY[0x1C68F1630](v9, -1, -1);
  }

  v5 = 1;
LABEL_10:

  return v5;
}

uint64_t sub_1C10B2B78()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EDE7C190);
  __swift_project_value_buffer(v0, qword_1EDE7C190);
  return sub_1C12626E0();
}

uint64_t sub_1C10B2BE4()
{
  sub_1C1263840();
  OUTLINED_FUNCTION_1_22();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E58, &qword_1C12B16D0);
  __swift_allocate_value_buffer(v6, qword_1EBEA4848);
  __swift_project_value_buffer(v6, qword_1EBEA4848);
  sub_1C1263830();
  if (qword_1EBE8FC78 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_31();
  sub_1C10B352C(v7, v8, MEMORY[0x1E697F258]);

  sub_1C1262990();

  return (*(v2 + 8))(v5, v0);
}

void sub_1C10B2D54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E60, &qword_1C12B16D8);
  OUTLINED_FUNCTION_1_22();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E68, &qword_1C12B16E0);
  MEMORY[0x1EEE9AC00](v6);
  if (qword_1EBE8FC70 != -1)
  {
    swift_once();
  }

  v23 = v6;
  v7 = __swift_project_value_buffer(v0, qword_1EBE92E40);
  v21 = *(v2 + 16);
  v22 = v7;
  v21(v5);
  if (qword_1EBE8FC88 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92E70, &qword_1C12B16E8);
  v9 = sub_1C1263210();
  v10 = sub_1C1263840();
  v11 = sub_1C10B34D8();
  OUTLINED_FUNCTION_0_31();
  v14 = sub_1C10B352C(v12, v13, MEMORY[0x1E697F258]);
  v24 = &type metadata for ZIndexTransition;
  v25 = v10;
  v26 = v11;
  v27 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = sub_1C10B352C(&qword_1EBE92E80, MEMORY[0x1E697E898], MEMORY[0x1E697E890]);
  v24 = v8;
  v25 = v9;
  v26 = OpaqueTypeConformance2;
  v27 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  sub_1C1262990();

  v18 = *(v2 + 8);
  v18(v5, v0);
  v24 = v0;
  v25 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1C1262CE0();
  (v21)(v5, v22, v0);
  if (qword_1EBE8FC90 != -1)
  {
    swift_once();
  }

  sub_1C1262990();

  v18(v5, v0);
  sub_1C1262CE0();
  v19 = sub_1C1262CA0();

  qword_1EBEA4860 = v19;
}

uint64_t sub_1C10B3120()
{
  v0 = sub_1C1263210();
  v1 = *(v0 - 8);
  v19 = v0;
  v20 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1263840();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E70, &qword_1C12B16E8);
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v17 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E60, &qword_1C12B16D8);
  __swift_allocate_value_buffer(v11, qword_1EBE92E40);
  v17 = __swift_project_value_buffer(v11, qword_1EBE92E40);
  v21 = 0x4024000000000000;
  sub_1C1263830();
  v12 = sub_1C10B34D8();
  v13 = sub_1C10B352C(&qword_1EDE7BC98, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
  sub_1C1262980();
  (*(v5 + 8))(v7, v4);
  sub_1C1265B80();
  sub_1C1263220();
  v21 = &type metadata for ZIndexTransition;
  v22 = v4;
  v23 = v12;
  v24 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1C10B352C(&qword_1EBE92E80, MEMORY[0x1E697E898], MEMORY[0x1E697E890]);
  v14 = v18;
  v15 = v19;
  sub_1C1262980();
  (*(v20 + 8))(v3, v15);
  return (*(v8 + 8))(v10, v14);
}

uint64_t sub_1C10B3474(uint64_t a1)
{
  result = sub_1C1265A50();
  qword_1EBEA4868 = result;
  return result;
}

uint64_t sub_1C10B3494()
{
  result = sub_1C1265A40();
  qword_1EBEA4870 = result;
  return result;
}

unint64_t sub_1C10B34D8()
{
  result = qword_1EBE92E78;
  if (!qword_1EBE92E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92E78);
  }

  return result;
}

uint64_t sub_1C10B352C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C10B3590(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  sub_1C12659D0();
  v5 = sub_1C12659F0();

  *a4 = v5;
}

uint64_t sub_1C10B3624@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (sub_1C1263250())
  {
    a4 = 0.0;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E88, &qword_1C12B1770);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E90, &qword_1C12B1778);
  *(a3 + *(result + 36)) = a4;
  return result;
}

unint64_t sub_1C10B36DC()
{
  result = qword_1EBE92E98;
  if (!qword_1EBE92E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92E90, &qword_1C12B1778);
    sub_1C0FDB6D4(&unk_1EBE92EA0, &qword_1EBE92E88, &qword_1C12B1770, MEMORY[0x1E697FEC8]);
    sub_1C0FDB6D4(&unk_1EDE76DF8, &qword_1EBE91538, &unk_1C12A9380, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92E98);
  }

  return result;
}

double sub_1C10B37C0()
{
  v0.n128_f64[0] = OUTLINED_FUNCTION_2_25(&v12);
  *&result = OUTLINED_FUNCTION_0_32(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11, v9, v12, v13).n128_u64[0];
  return result;
}

uint64_t areEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C10B39E4(a1, &v20);
  if (v21)
  {
    sub_1C0F9DDE4(&v20, v26);
    sub_1C10B39E4(a2, &v20);
    if (v21)
    {
      sub_1C0F9DDE4(&v20, v23);
      v5 = v27;
      v6 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x1EEE9AC00](v7);
      v9 = OUTLINED_FUNCTION_1_23(v8, v19[0]);
      v10(v9);
      PhotosDisplayableMediaWrapper.init<A>(_:)(v2, v5, v6, &v20);
      v11 = v24;
      v12 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      OUTLINED_FUNCTION_3_26();
      MEMORY[0x1EEE9AC00](v13);
      v15 = OUTLINED_FUNCTION_1_23(v14, v19[0]);
      v16(v15);
      PhotosDisplayableMediaWrapper.init<A>(_:)(v2, v11, v12, v19);
      v17 = v22(v19);
      sub_1C1094DD8(v19);
      sub_1C1094DD8(&v20);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      return v17 & 1;
    }

    sub_1C10B3A54(&v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    sub_1C10B3A54(&v20);
  }

  if (*(a1 + 24))
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a2 + 24) == 0;
  }

  return v17 & 1;
}

uint64_t sub_1C10B39E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE8FE18, &qword_1C12B1780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10B3A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE8FE18, &qword_1C12B1780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosDisplayableMediaWrapper.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  a4[3] = v10;
  a4[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  (*(v8 + 16))(boxed_opaque_existential_1, a1, a2);
  v13 = *(v8 + 32);
  v13(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  result = (v13)(v15 + v14, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[5] = sub_1C10B420C;
  a4[6] = v15;
  return result;
}

double sub_1C10B3C14@<D0>(uint64_t a1@<X8>)
{
  PhotosDisplayableMedia.imageContentsRect(item:targetPixelSize:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_1C10B3C58@<D0>(uint64_t a1@<X8>)
{
  PhotosDisplayableMedia.preferredContentBoundsWhenDisplayed(in:options:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t PhotosDisplayableMedia.contentBoundsWhenDisplayed(in:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a3, a4);
  if ((v6 & 1) == 0)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    (*(v8 + 8))(v7, v8);
    sub_1C12665B0();
    return PXRectWithAspectRatioFittingRect();
  }

  return result;
}

uint64_t sub_1C10B3D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a4;
  v34 = a2;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v30[0] = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v30 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v35 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v30 - v19;
  sub_1C0FDB0A8(a1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE97AC0, &unk_1C12B1870);
  v21 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v20, v21 ^ 1u, 1, a3);
  v32 = v6;
  (*(v6 + 16))(v17, v34, a3);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, a3);
  v33 = TupleTypeMetadata2;
  v34 = v12;
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = *(v12 + 16);
  v23(v11, v20, v8);
  v23(&v11[v22], v17, v8);
  if (__swift_getEnumTagSinglePayload(v11, 1, a3) != 1)
  {
    v23(v35, v11, v8);
    if (__swift_getEnumTagSinglePayload(&v11[v22], 1, a3) != 1)
    {
      v26 = v32;
      v27 = v30[0];
      (*(v32 + 32))(v30[0], &v11[v22], a3);
      v25 = sub_1C1265DE0();
      v28 = *(v26 + 8);
      v28(v27, a3);
      v24 = *(v12 + 8);
      v24(v17, v8);
      v28(v35, a3);
      v24(v11, v8);
      goto LABEL_8;
    }

    v24 = *(v12 + 8);
    v24(v17, v8);
    (*(v32 + 8))(v35, a3);
    goto LABEL_6;
  }

  v24 = *(v12 + 8);
  v24(v17, v8);
  if (__swift_getEnumTagSinglePayload(&v11[v22], 1, a3) != 1)
  {
LABEL_6:
    (*(v31 + 8))(v11, v33);
    v25 = 0;
    goto LABEL_8;
  }

  v24(v11, v8);
  v25 = 1;
LABEL_8:
  v24(v20, v8);
  return v25 & 1;
}

_BYTE *storeEnumTagSinglePayload for PhotosMediaDisplayOptions(_BYTE *result, int a2, int a3)
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

double sub_1C10B4364()
{
  v0.n128_f64[0] = PhotosDisplayableMedia.imageContentsRect(item:targetPixelSize:)(&v12);
  *&result = OUTLINED_FUNCTION_0_32(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11, v9, v12, v13).n128_u64[0];
  return result;
}

double sub_1C10B4398()
{
  v0.n128_f64[0] = PhotosDisplayableMedia.preferredContentBoundsWhenDisplayed(in:options:)(&v12);
  *&result = OUTLINED_FUNCTION_0_32(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11, v9, v12, v13).n128_u64[0];
  return result;
}

uint64_t EnvironmentValues.photosSnapshotProvider.getter()
{
  sub_1C10B4408();
  sub_1C12637F0();
  return v1;
}

unint64_t sub_1C10B4408()
{
  result = qword_1EDE81198;
  if (!qword_1EDE81198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE81198);
  }

  return result;
}

uint64_t sub_1C10B445C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosSnapshotProvider.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C10B44F0(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1C10B4558(v3, v2);
}

uint64_t sub_1C10B4558(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C10B45B8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1C10B4638;
}

void sub_1C10B4638(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

uint64_t PhotosSnapshotProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t PhotosSnapshotProvider.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_1C10B4728(uint64_t a1)
{
  OUTLINED_FUNCTION_0_2(a1);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_1C12652F0();
  }

  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t PhotosSnapshotProvider.__deallocating_deinit()
{
  sub_1C0FF4BE4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void (*EnvironmentValues.photosSnapshotProvider.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C10B4408();
  sub_1C12637F0();
  return sub_1C10B487C;
}

void sub_1C10B487C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_1C1263800();
  }

  else
  {
    sub_1C1263800();
  }
}

int *PhotosMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:specs:background:affordances:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  v20 = *a6;
  OUTLINED_FUNCTION_15_1();
  (*(v21 + 32))(a8);
  v28 = a12;
  v29 = a13;
  v30 = a14;
  result = type metadata accessor for PhotosMaterialTitleCell(0, &v28);
  v23 = (a8 + result[13]);
  *v23 = a1;
  v23[1] = a2;
  v24 = (a8 + result[14]);
  *v24 = a3;
  v24[1] = a4;
  *(a8 + result[15]) = a5;
  *(a8 + result[16]) = a9;
  *(a8 + result[17]) = v20;
  v25 = (a8 + result[18]);
  *v25 = a7;
  v25[1] = a10;
  *(a8 + result[19]) = a11;
  return result;
}

uint64_t PhotosMaterialTitleCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v107 = a2;
  v5 = *(a1 + 40);
  v96 = *(a1 + 24);
  v95 = v5;
  type metadata accessor for PhotosMaterialTitleCellContentView(0, v96, v5, a3);
  OUTLINED_FUNCTION_0();
  v100 = v6;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  v97 = v8;
  v102 = v9;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v103 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34();
  v98 = v12;
  v104 = v13;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v105 = v15;
  v106 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v99 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v86 - v19;
  v20 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v24 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_30();
  v28 = (v26 - v27);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v86 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v86 - v33;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22_8();
  View.photosTrace.getter();
  v94 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v34, 1, v94) == 1)
  {
    sub_1C0F9E27C(v34, &qword_1EBE919B0);
  }

  else
  {
    v91 = v22;
    v92 = v20;
    v35 = *(v24 + 16);
    v35(v31, v3, a1);
    v93 = v3;
    v35(v28, v3, a1);
    sub_1C1262640();
    v36 = sub_1C1262670();
    v37 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v89 = v37;
      v90 = v36;
      v38 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v112[0] = v88;
      v39 = v38;
      *v38 = 136446466;
      v40 = &v31[*(a1 + 56)];
      v41 = v40[1];
      if (v41)
      {
        v87 = *v40;
        v42 = v41;
      }

      else
      {
        v42 = 0xE300000000000000;
        v87 = 7104878;
      }

      v46 = *(v24 + 8);

      v46(v31, a1);
      v47 = sub_1C0FA0E80(v87, v42, v112);

      *(v39 + 1) = v47;
      *(v39 + 6) = 2082;
      v48 = OUTLINED_FUNCTION_22_8();
      v50 = View.photosChangedProperties.getter(v48, v49);
      v52 = v51;
      v46(v28, a1);
      v53 = sub_1C0FA0E80(v50, v52, v112);

      *(v39 + 14) = v53;
      v54 = sub_1C1262630();
      v55 = v90;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v90, v89, v54, "PhotosMaterialTitleCell", "PhotosMaterialTitleCell title:%{public}s %{public}s", v39, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_4_8();

      v56 = OUTLINED_FUNCTION_18_15();
      v57(v56);
    }

    else
    {

      v43 = OUTLINED_FUNCTION_18_15();
      v44(v43);
      v45 = *(v24 + 8);
      v45(v28, a1);
      v45(v31, a1);
    }

    OUTLINED_FUNCTION_15_1();
    (*(v58 + 8))(v34);
    v3 = v93;
  }

  v59 = *(a1 + 56);
  v60 = (v3 + *(a1 + 52));
  v61 = v60[1];
  v94 = *v60;
  v62 = v3 + v59;
  v63 = *(v3 + *(a1 + 60));
  v64 = *(v3 + *(a1 + 64));
  v65 = v3;
  v66 = *(v3 + v59);
  v67 = *(v62 + 8);
  v68 = *(a1 + 72);
  LOBYTE(v112[0]) = *(v65 + *(a1 + 68));
  v69 = *(v65 + v68);
  v70 = *(v65 + *(a1 + 76));
  swift_unknownObjectRetain();

  v71 = v97;
  PhotosMaterialTitleCellContentView.init(glyphName:title:keyAsset:aspectRatio:specs:background:affordances:)(v94, v61, v66, v67, v63, v112, v69, v97, v64, v70, v96, v95);
  v72 = *(a1 + 32);
  v112[3] = *(a1 + 16);
  v112[4] = v72;
  __swift_allocate_boxed_opaque_existential_1(v112);
  OUTLINED_FUNCTION_15_1();
  (*(v73 + 16))();
  OUTLINED_FUNCTION_1_24();
  v74 = v102;
  WitnessTable = swift_getWitnessTable();
  v76 = v98;
  View.selectionStyle(for:)(v112, v74, WitnessTable);
  (*(v100 + 8))(v71, v74);
  __swift_destroy_boxed_opaque_existential_0Tm(v112);
  v77 = sub_1C100D614();
  v110 = WitnessTable;
  v111 = v77;
  OUTLINED_FUNCTION_2_26();
  v78 = v104;
  v79 = swift_getWitnessTable();
  v80 = v99;
  View.dropTargetStyle()(v78, v79);
  (*(v103 + 8))(v76, v78);
  v81 = sub_1C10A04F0();
  v108 = v79;
  v109 = v81;
  v82 = v106;
  swift_getWitnessTable();
  v83 = v101;
  sub_1C0FDBA4C();
  v84 = *(v105 + 8);
  v84(v80, v82);
  sub_1C0FDBA4C();
  return (v84)(v83, v82);
}

uint64_t PhotosMaterialTitleCellContentView.init(glyphName:title:keyAsset:aspectRatio:specs:background:affordances:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X8>, double a9@<D0>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = *a6;
  v20 = type metadata accessor for PhotosMaterialTitleCellContentView(0, a11, a12, a4);
  v21 = a8 + v20[15];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = v20[16];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a8 + v22), __src, 0xD1uLL);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a9;
  *(a8 + 48) = v19;
  v23 = swift_unknownObjectRetain();
  a7(v23);
  result = swift_unknownObjectRelease();
  *(a8 + v20[14]) = a10;
  return result;
}

uint64_t PhotosMaterialTitleCellAffordanceLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C10B5570@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 64);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E27C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosMaterialTitleCellContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v160 = a2;
  type metadata accessor for PhotosAssetView(255);
  v151 = *(a1 + 16);
  v3 = sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v147 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  v145 = v6;
  v7 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v152 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  v150 = v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92EB8, &qword_1C12B19D8);
  OUTLINED_FUNCTION_19_1();
  v11 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v158 = v12;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34();
  v155 = v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  OUTLINED_FUNCTION_19_1();
  v15 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v156 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34();
  v154 = v18;
  OUTLINED_FUNCTION_10_17();
  v21 = sub_1C10B9338(v19, v20, &protocol conformance descriptor for PhotosAssetView);
  v22 = *(a1 + 24);
  v186 = v21;
  v187 = v22;
  v133 = v22;
  OUTLINED_FUNCTION_19_0();
  v149 = v3;
  WitnessTable = swift_getWitnessTable();
  v184 = WitnessTable;
  v185 = MEMORY[0x1E697F568];
  OUTLINED_FUNCTION_3_3();
  *&v153 = v7;
  v23 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  v134 = v23;
  v182 = v23;
  v183 = sub_1C10239B0(v24, &qword_1EBE92EB8, &qword_1C12B19D8, v25);
  *&v159 = v11;
  v26 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  v136 = v26;
  v180 = v26;
  v181 = sub_1C10239B0(v27, &unk_1EBE92EC0, &qword_1C12A8E00, v28);
  v29 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v178 = v29;
  v179 = sub_1C10239B0(v30, &qword_1EBE91C40, &unk_1C12A7010, v31);
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v176 = v32;
  v177 = sub_1C10239B0(v33, &unk_1EBE92ED0, &unk_1C12A8E80, v34);
  swift_getWitnessTable();
  v35 = OUTLINED_FUNCTION_19_1();
  v157 = v15;
  v135 = v36;
  v38 = type metadata accessor for PhotosDetailsPresentationSourceView(v35, v15, v36, v37);
  OUTLINED_FUNCTION_0();
  v138 = v39;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_34();
  v137 = v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  OUTLINED_FUNCTION_19_1();
  v139 = v38;
  v42 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v143 = v43;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_34();
  v140 = v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92EE8, &qword_1C12B19E0);
  OUTLINED_FUNCTION_19_1();
  v144 = v42;
  v148 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v146 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_30();
  v141 = v48 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v142 = &v123 - v51;
  v52 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v131 = v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v123 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_30();
  v61 = (v59 - v60);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v123 - v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v123 - v66;
  OUTLINED_FUNCTION_1_24();
  v130 = swift_getWitnessTable();
  v68 = v161;
  View.photosTrace.getter();
  v69 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v67, 1, v69) == 1)
  {
    sub_1C0F9E27C(v67, &qword_1EBE919B0);
    v70 = a1;
    v71 = v68;
  }

  else
  {
    v128 = v69;
    v129 = v52;
    v72 = *(v57 + 16);
    v72(v64, v68, a1);
    v73 = OUTLINED_FUNCTION_20_2();
    (v72)(v73);
    sub_1C1262640();
    v74 = sub_1C1262670();
    v75 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v126 = a1;
      v127 = v56;
      v76 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *&v175[0] = v123;
      *v76 = 136446466;
      v77 = *(v64 + 3);
      v125 = v74;
      v124 = v75;
      if (v77)
      {
        v78 = *(v64 + 2);
        v79 = v77;
      }

      else
      {
        v79 = 0xE300000000000000;
        v78 = 7104878;
      }

      v81 = *(v57 + 8);

      v70 = v126;
      v81(v64, v126);
      v82 = sub_1C0FA0E80(v78, v79, v175);

      *(v76 + 4) = v82;
      *(v76 + 12) = 2082;
      v83 = View.photosChangedProperties.getter(v70, v130);
      v85 = v84;
      v81(v61, v70);
      v86 = sub_1C0FA0E80(v83, v85, v175);

      *(v76 + 14) = v86;
      v87 = v127;
      v88 = sub_1C1262630();
      v89 = v125;
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v125, v124, v88, "PhotosMaterialTitleCellContentView", "PhotosMaterialTitleCellContentView title:%{public}s %{public}s", v76, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_4_8();

      (*(v131 + 8))(v87, v129);
    }

    else
    {

      (*(v131 + 8))(v56, v129);
      v80 = *(v57 + 8);
      v80(v61, a1);
      v80(v64, a1);
      v70 = a1;
    }

    v71 = v161;
    OUTLINED_FUNCTION_15_1();
    (*(v90 + 8))(v67);
  }

  v91 = v151;
  if (*(v71 + 32))
  {
    v92 = 0;
  }

  else
  {
    v92 = v151 == MEMORY[0x1E6981E70];
  }

  v93 = v92;
  v94 = v145;
  sub_1C10B65C0(v70, v145);
  v95 = v149;
  v161 = *(v71 + 40);
  sub_1C12649E0();
  v96 = (*(v147 + 8))(v94, v95);
  MEMORY[0x1EEE9AC00](v96);
  v97 = v133;
  *(&v123 - 4) = v91;
  *(&v123 - 3) = v97;
  *(&v123 - 16) = v93;
  *(&v123 - 1) = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92EF0, &qword_1C12B19E8);
  sub_1C10239B0(&qword_1EBE92EF8, &qword_1EBE92EF0, &qword_1C12B19E8, MEMORY[0x1E6981880]);
  sub_1C12659A0();
  v98 = v155;
  sub_1C1264F60();
  v99 = OUTLINED_FUNCTION_20_2();
  v100(v99);
  sub_1C10B5570(v70, v172);
  memcpy(v171, v173, sizeof(v171));
  sub_1C100D690(v172, v175);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v101 = qword_1EDE82B08;
  v102 = qword_1EDE82B10;
  v153 = xmmword_1EDE82B18;
  v103 = qword_1EDE82B28;

  sub_1C100C7D0(v172);

  *&v175[0] = v101;
  *(&v175[0] + 1) = v102;
  v175[1] = v153;
  *&v175[2] = v103;
  memcpy(&v175[2] + 8, v171, 0xA8uLL);
  v104 = v154;
  v105 = v159;
  View.cellStyle(for:)(v175, v136, v154);
  memcpy(v174, v175, sizeof(v174));
  sub_1C100C7D0(v174);
  (*(v158 + 8))(v98, v105);
  v170 = 2;
  v169 = 0;
  sub_1C10B5570(v70, v175);
  v106 = v175[0];
  v159 = v175[1];
  v107 = *&v175[2];

  sub_1C100C7D0(v175);
  v166 = v106;
  v167 = v159;
  v168 = v107;
  v108 = v137;
  v109 = v157;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v170, 0, 0, v157, v135, v137);

  (*(v156 + 8))(v104, v109);
  LOBYTE(v166) = 1;
  OUTLINED_FUNCTION_4_3();
  v110 = v139;
  v111 = swift_getWitnessTable();
  sub_1C1061D74();
  v112 = v140;
  sub_1C12649C0();
  (*(v138 + 8))(v108, v110);
  *&v166 = v161;
  BYTE8(v166) = 0;
  v113 = MEMORY[0x1E6980758];
  v114 = sub_1C10239B0(&qword_1EDE7B9E0, &unk_1EBE91C30, &qword_1C12B2020, MEMORY[0x1E6980758]);
  v164 = v111;
  v165 = v114;
  OUTLINED_FUNCTION_3_3();
  v115 = v144;
  v116 = swift_getWitnessTable();
  sub_1C10B8244();
  sub_1C12649C0();
  (*(v143 + 8))(v112, v115);
  v117 = sub_1C10239B0(&qword_1EDE7B9C8, &qword_1EBE92EE8, &qword_1C12B19E0, v113);
  v162 = v116;
  v163 = v117;
  v118 = v148;
  swift_getWitnessTable();
  v119 = v142;
  OUTLINED_FUNCTION_20_2();
  sub_1C0FDBA4C();
  v120 = *(v146 + 8);
  v121 = OUTLINED_FUNCTION_20_2();
  v120(v121);
  sub_1C0FDBA4C();
  return (v120)(v119, v118);
}

uint64_t sub_1C10B65C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for PhotosAssetView(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v30 = &v29 - v15;
  v16 = sub_1C1263C30();
  v31 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  if (v4 == MEMORY[0x1E6981E70])
  {
    v21 = *(v2 + 32);
    v22 = qword_1C12B1DF0[*(v2 + 48)];
    swift_unknownObjectRetain();
    v23 = sub_1C1200D04();
    [v23 setNetworkAccessAllowed_];
    *(v13 + 19) = swift_getKeyPath();
    v13[160] = 0;
    v24 = v11[12];
    *&v13[v24] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v25 = &v13[v11[13]];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    v26 = &v13[v11[14]];
    *v26 = swift_getKeyPath();
    v26[8] = 0;
    *v13 = 0;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    v13[48] = 1;
    v13[8] = 1;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 34) = 256;
    *(v13 + 52) = 0;
    *(v13 + 60) = 0;
    *(v13 + 9) = v22;
    v13[80] = 0;
    *(v13 + 11) = v21;
    *(v13 + 12) = 0;
    *(v13 + 13) = v23;
    *(v13 + 7) = 0u;
    *(v13 + 8) = 0u;
    v13[144] = 2;
    v27 = v30;
    sub_1C0FF7598(v13, v30);
    sub_1C10B9338(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView, &protocol conformance descriptor for PhotosAssetView);
    v19 = *(a1 + 24);
    sub_1C1112D68();
    sub_1C0FF753C(v27);
  }

  else
  {
    v19 = *(a1 + 24);
    sub_1C0FDBA4C();
    sub_1C0FDBA4C();
    sub_1C10B9338(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView, &protocol conformance descriptor for PhotosAssetView);
    sub_1C1112E18();
    v20 = *(v5 + 8);
    v20(v7, v4);
    v20(v10, v4);
  }

  v33 = sub_1C10B9338(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView, &protocol conformance descriptor for PhotosAssetView);
  v34 = v19;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  return (*(v31 + 8))(v18, v16);
}

uint64_t sub_1C10B6A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a7@<X8>)
{
  v10 = a1;
  *a7 = sub_1C12659A0();
  a7[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F08, &qword_1C12B1B98);
  return sub_1C10B6AB8(v10, a2, a3, a4, a7 + *(v13 + 44));
}

uint64_t sub_1C10B6AB8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F10, &qword_1C12B1BA0);
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F18, &qword_1C12B1BA8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F20, &qword_1C12B1BB0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - v22;
  v50 = a3;
  if (a1)
  {
    static PhotosLegibilityGradient.strong(abovePlaceholder:)(1, v53);
    v24 = v54;
    v25 = v55;
    v26 = v53[1];
    *v16 = v53[0];
    *(v16 + 1) = v26;
    *(v16 + 4) = v24;
    v16[40] = v25;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0, &qword_1C12B6EB0);
    sub_1C10B8F84();
    sub_1C10B8FD8();
    sub_1C1263C20();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F28, &qword_1C12B1BB8);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v27);
    v28 = a3;
    v29 = a4;
    v31 = type metadata accessor for PhotosMaterialTitleCellContentView(0, v28, a4, v30);
  }

  else
  {
    v32 = a3;
    v29 = a4;
    v31 = type metadata accessor for PhotosMaterialTitleCellContentView(0, v32, a4, v21);
    if (sub_1C10B6FCC(v31))
    {
      if (qword_1EBE8FCA8 != -1)
      {
        swift_once();
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91CC0, &qword_1C12B6EB0);
      v34 = __swift_project_value_buffer(v33, qword_1EBE93F58);
      sub_1C0FE5654(v34, v16, &qword_1EBE91CC0, &qword_1C12B6EB0);
      swift_storeEnumTagMultiPayload();
      sub_1C10B8F84();
      sub_1C10B8FD8();
      sub_1C1263C20();
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F28, &qword_1C12B1BB8);
      v36 = v23;
      v37 = 0;
    }

    else
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F28, &qword_1C12B1BB8);
      v36 = v23;
      v37 = 1;
    }

    __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  }

  v38 = sub_1C10401F0(2, *(a2 + *(v31 + 56)));
  if (v38)
  {
    v40 = v38;
    v41 = v39;
    v38(v53);
    sub_1C0FCF004(v40, v41);
    v42 = *&v53[0];
  }

  else
  {
    v42 = 0;
  }

  *v13 = sub_1C1263AA0();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F30, &qword_1C12B1BC0);
  sub_1C10B7018(a2, v50, v29, &v13[*(v43 + 44)]);
  KeyPath = swift_getKeyPath();
  v45 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F38, &qword_1C12B1BF8) + 36)];
  *v45 = KeyPath;
  v45[8] = 0;
  *&v13[*(v52 + 36)] = sub_1C1265190();
  sub_1C0FE5654(v23, v19, &qword_1EBE92F20, &qword_1C12B1BB0);
  sub_1C0FE5654(v13, v10, &qword_1EBE92F10, &qword_1C12B1BA0);
  v46 = v51;
  sub_1C0FE5654(v19, v51, &qword_1EBE92F20, &qword_1C12B1BB0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F40, &unk_1C12B1C00);
  *(v46 + *(v47 + 48)) = v42;
  sub_1C0FE5654(v10, v46 + *(v47 + 64), &qword_1EBE92F10, &qword_1C12B1BA0);
  sub_1C0F9E27C(v13, &qword_1EBE92F10);
  sub_1C0F9E27C(v23, &qword_1EBE92F20);
  sub_1C0F9E27C(v10, &qword_1EBE92F10);

  return sub_1C0F9E27C(v19, &qword_1EBE92F20);
}

BOOL sub_1C10B6FCC(uint64_t a1)
{
  if (sub_1C10B81B8())
  {
    return 1;
  }

  return sub_1C10B81E8();
}

double sub_1C10B7018@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F88, &qword_1C12B1C28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21[-v12];
  v23 = sub_1C12638E0();
  sub_1C10B71F4(a1, a2, a3, v24, v14);
  v16 = v24[0];
  v15 = v24[1];
  v22 = v25;
  v17 = v26;
  *v13 = sub_1C12638D0();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F90, &qword_1C12B1C30);
  sub_1C10B72EC(a1, a2, a3, &v13[*(v18 + 44)]);
  sub_1C0FE5654(v13, v10, &qword_1EBE92F88, &qword_1C12B1C28);
  *a4 = v23;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = v16;
  *(a4 + 32) = v15;
  *(a4 + 40) = v22;
  *(a4 + 48) = v17;
  *(a4 + 56) = 0;
  *(a4 + 64) = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92F98, &qword_1C12B1C38);
  sub_1C0FE5654(v10, a4 + *(v19 + 64), &qword_1EBE92F88, &qword_1C12B1C28);

  sub_1C0F9E27C(v13, &qword_1EBE92F88);
  sub_1C0F9E27C(v10, &qword_1EBE92F88);

  return result;
}

double sub_1C10B71F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v6 = *(a1 + *(type metadata accessor for PhotosMaterialTitleCellContentView(0, a2, a3, a5) + 56));
  v7 = sub_1C10401F0(0, v6);
  v9 = v7;
  if (v7)
  {
    v10 = v8;
    v7(&v17);
    sub_1C0FCF004(v9, v10);
    v9 = v17;
  }

  v11 = sub_1C10401F0(1, v6);
  if (v11)
  {
    v13 = v11;
    v14 = v12;
    v11(&v17);
    sub_1C0FCF004(v13, v14);
    v15 = v17;
  }

  else
  {
    v15 = 0;
  }

  *a4 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = v15;

  return result;
}

uint64_t sub_1C10B72EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FA0, &qword_1C12B1C40);
  MEMORY[0x1EEE9AC00](v69);
  v66 = (&v61 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FA8, &qword_1C12B1C48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FB0, &qword_1C12B1C50);
  MEMORY[0x1EEE9AC00](v62);
  v12 = &v61 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FB8, &qword_1C12B1C58);
  MEMORY[0x1EEE9AC00](v63);
  v14 = &v61 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FC0, &qword_1C12B1C60);
  MEMORY[0x1EEE9AC00](v68);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FC8, &qword_1C12B1C68);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v67 = *(a1 + *(type metadata accessor for PhotosMaterialTitleCellContentView(0, a2, a3, v24) + 56));
  v25 = sub_1C10401F0(3, v67);
  if (v25)
  {
    v27 = v25;
    v28 = v26;
    v25(__src);
    sub_1C0FCF004(v27, v28);
    *v66 = __src[0];
    swift_storeEnumTagMultiPayload();
    sub_1C10B9200(&qword_1EDE770D8, &qword_1EBE92FC0, &qword_1C12B1C60, sub_1C10B91D0);
    sub_1C1263C20();
  }

  else
  {
    *v10 = sub_1C12638B0();
    *(v10 + 1) = 0x4008000000000000;
    v10[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FD0, &qword_1C12B1C70);
    sub_1C10B7998(a1, &v10[*(v29 + 44)]);
    sub_1C1265960();
    sub_1C1263390();
    sub_1C0FE4040(v10, v12, &qword_1EBE92FA8, &qword_1C12B1C48);
    memcpy(&v12[*(v62 + 36)], __src, 0x70uLL);
    v30 = sub_1C12644D0();
    sub_1C12628A0();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_1C0FE4040(v12, v14, &qword_1EBE92FB0, &qword_1C12B1C50);
    v39 = &v14[*(v63 + 36)];
    *v39 = v30;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = sub_1C1264460();
    sub_1C12628A0();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_1C0FE4040(v14, v16, &qword_1EBE92FB8, &qword_1C12B1C58);
    v49 = &v16[*(v68 + 36)];
    *v49 = v40;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    v50 = v16;
    v51 = v64;
    sub_1C0FE4040(v50, v64, &qword_1EBE92FC0, &qword_1C12B1C60);
    sub_1C0FE5654(v51, v66, &qword_1EBE92FC0, &qword_1C12B1C60);
    swift_storeEnumTagMultiPayload();
    sub_1C10B9200(&qword_1EDE770D8, &qword_1EBE92FC0, &qword_1C12B1C60, sub_1C10B91D0);
    sub_1C1263C20();
    sub_1C0F9E27C(v51, &qword_1EBE92FC0);
  }

  v52 = sub_1C10401F0(4, v67);
  v54 = v52;
  if (v52)
  {
    v55 = v53;
    v52(&v71);
    sub_1C0FCF004(v54, v55);
    v54 = v71;
  }

  v56 = v65;
  sub_1C0FE5654(v23, v65, &qword_1EBE92FC8, &qword_1C12B1C68);
  v57 = v70;
  sub_1C0FE5654(v56, v70, &qword_1EBE92FC8, &qword_1C12B1C68);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FD8, &unk_1C12B1C78);
  v59 = v57 + *(v58 + 48);
  *v59 = 0;
  *(v59 + 8) = 1;
  *(v57 + *(v58 + 64)) = v54;
  sub_1C0F9E27C(v23, &qword_1EBE92FC8);

  return sub_1C0F9E27C(v56, &qword_1EBE92FC8);
}

uint64_t sub_1C10B7998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE0, &qword_1C12A7730);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v62 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92FE8, &qword_1C12B1C88);
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v63 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE92FF0, &unk_1C12B1C90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v69 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_1C1264700();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93000, &qword_1C12B1CA0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93008, &qword_1C12B1CA8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v67 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v24 = *(a1 + 8);
  v25 = 1;
  if (v24)
  {
    v72 = *a1;
    v73 = v24;
    v74 = 1;
    v26 = qword_1EDE7AF08;

    if (v26 != -1)
    {
      swift_once();
    }

    *v82 = word_1EDE7AF16;
    v83[0] = 0;
    PhotosPrefetchableImage(_:symbolVariant:imageScale:)();
    sub_1C100DC0C(v72, v73);
    (*(v13 + 104))(v15, *MEMORY[0x1E6980EF0], v12);
    v27 = *MEMORY[0x1E6980E20];
    v28 = sub_1C1264590();
    (*(*(v28 - 8) + 104))(v11, v27, v28);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v28);
    sub_1C1264620();
    v29 = sub_1C1264640();
    sub_1C0F9E27C(v11, &qword_1EBE96550);
    (*(v13 + 8))(v15, v12);
    KeyPath = swift_getKeyPath();
    v31 = &v18[*(v16 + 36)];
    *v31 = KeyPath;
    v31[1] = v29;
    sub_1C0FE4040(v18, v23, &qword_1EBE93000, &qword_1C12B1CA0);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v23, v25, 1, v16);
  v32 = *(a1 + 24);
  if (!v32)
  {
    v57 = v68;
    v54 = v69;
    v55 = v69;
    v56 = 1;
    goto LABEL_9;
  }

  v72 = *(a1 + 16);
  v73 = v32;
  sub_1C0FDB9AC();

  v33 = sub_1C12648F0();
  v35 = v34;
  v37 = v36;
  LOBYTE(v72) = *(a1 + 48);
  PhotosMaterialTitleCellSpecs.font.getter();
  v38 = sub_1C1264870();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_1C0FDB8E8(v33, v35, v37 & 1);

  v45 = swift_getKeyPath();
  v46 = v42 & 1;
  v83[0] = v46;
  v81 = 0;
  v72 = v38;
  v73 = v40;
  v62 = v40;
  v74 = v46;
  *v75 = *v82;
  *&v75[3] = *&v82[3];
  v76 = v44;
  v77 = 0xBFF0000000000000;
  v78 = v45;
  v79 = 2;
  v80 = 0;
  v47 = *MEMORY[0x1E697E6D0];
  v48 = sub_1C1263130();
  v49 = v66;
  (*(*(v48 - 8) + 104))(v66, v47, v48);
  sub_1C10B9338(&qword_1EDE7BF90, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C1265DE0();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93018, &qword_1C12B1CE8);
    sub_1C10B9380();
    sub_1C10239B0(&unk_1EDE7B598, &qword_1EBE92FE0, &qword_1C12A7730, MEMORY[0x1E69E6ED8]);
    v51 = v38;
    v52 = v63;
    sub_1C1264BC0();
    sub_1C0F9E27C(v49, &qword_1EBE92FE0);
    sub_1C0FDB8E8(v51, v62, v46);

    v53 = v68;
    v54 = v69;
    (*(v65 + 32))(v69, v52, v68);
    v55 = v54;
    v56 = 0;
    v57 = v53;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v55, v56, 1, v57);
    v58 = v67;
    sub_1C0FE5654(v23, v67, &qword_1EBE93008, &qword_1C12B1CA8);
    v59 = v70;
    sub_1C0FE5654(v54, v70, &unk_1EBE92FF0, &unk_1C12B1C90);
    v60 = v71;
    sub_1C0FE5654(v58, v71, &qword_1EBE93008, &qword_1C12B1CA8);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93010, &qword_1C12B1CB0);
    sub_1C0FE5654(v59, v60 + *(v61 + 48), &unk_1EBE92FF0, &unk_1C12B1C90);
    sub_1C0F9E27C(v54, &unk_1EBE92FF0);
    sub_1C0F9E27C(v23, &qword_1EBE93008);
    sub_1C0F9E27C(v59, &unk_1EBE92FF0);
    return sub_1C0F9E27C(v58, &qword_1EBE93008);
  }

  __break(1u);
  return result;
}

BOOL sub_1C10B81B8()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

BOOL sub_1C10B81E8()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

unint64_t sub_1C10B8244()
{
  result = qword_1EDE7F220;
  if (!qword_1EDE7F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F220);
  }

  return result;
}

unint64_t sub_1C10B82E0()
{
  result = qword_1EDE78DF0;
  if (!qword_1EDE78DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78DF0);
  }

  return result;
}

void sub_1C10B8378(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C10B8F34(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C10B8808(319);
      if (v3 <= 0x3F)
      {
        sub_1C1007F88();
        if (v4 <= 0x3F)
        {
          sub_1C10B886C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C10B8484(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C10B85F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((((((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1C10B8808(uint64_t a1)
{
  if (!qword_1EDE76A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92300, &unk_1C12A3A90);
    v1 = sub_1C1266790();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE76A60);
    }
  }
}

void sub_1C10B886C(uint64_t a1)
{
  if (!qword_1EDE76AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92F00, qword_1C12B1B28);
    sub_1C10B88E4();
    v1 = sub_1C1265CF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE76AF8);
    }
  }
}

unint64_t sub_1C10B88E4()
{
  result = qword_1EDE78DF8;
  if (!qword_1EDE78DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78DF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosMaterialTitleCellAffordanceLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void sub_1C10B8A14(uint64_t a1)
{
  sub_1C10B8F34(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C10B8808(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1C10B886C(319);
        if (v4 <= 0x3F)
        {
          sub_1C10B8F34(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1C10B8F34(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
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

uint64_t sub_1C10B8B80(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (((((((result + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 9) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((v9 + v18) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((((v9 + ((v7 + 49) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 209;
    v11 = (a2 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v10);
        if (!*(result + v10))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v10);
        if (!*(result + v10))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v10);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = (v15 - 1) << (8 * (((((v9 + ((v7 + 49) & ~v7)) & 0xF8) + 31) & 0xF8) - 47));
        if (v10 <= 3)
        {
          v17 = *result;
        }

        else
        {
          v16 = 0;
          v17 = *result;
        }

        result = v8 + (v17 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C10B8D10(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = (a3 - v9 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          v19 = (((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 9) & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = ((v11 + v19) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v9 + a2;
    bzero(a1, ((((v11 + ((v10 + 49) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 209);
    if (v12 <= 3)
    {
      v18 = (v17 >> 8) + 1;
    }

    else
    {
      v18 = 1;
    }

    if (v12 > 3)
    {
      *a1 = v17;
    }

    else
    {
      *a1 = v17;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v18;
        break;
      case 2:
        *&a1[v12] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v12] = v18;
        break;
      default:
        return;
    }
  }
}

void sub_1C10B8F34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C10B8F84()
{
  result = qword_1EDE7A470;
  if (!qword_1EDE7A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7A470);
  }

  return result;
}

unint64_t sub_1C10B8FD8()
{
  result = qword_1EBE92F48;
  if (!qword_1EBE92F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CC0, &qword_1C12B6EB0);
    sub_1C10B9064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92F48);
  }

  return result;
}

unint64_t sub_1C10B9064()
{
  result = qword_1EBE92F50;
  if (!qword_1EBE92F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92F58, &unk_1C12B1C10);
    sub_1C10B9120();
    sub_1C10B9338(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92F50);
  }

  return result;
}

unint64_t sub_1C10B9120()
{
  result = qword_1EBE92F60;
  if (!qword_1EBE92F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92F68, &unk_1C12B7CF0);
    sub_1C10239B0(&qword_1EBE92F70, &unk_1EBE92F78, &unk_1C12B1C20, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92F60);
  }

  return result;
}

uint64_t sub_1C10B9200(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10B9280()
{
  result = qword_1EDE77318;
  if (!qword_1EDE77318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92FB0, &qword_1C12B1C50);
    sub_1C10239B0(&qword_1EDE76C40, &qword_1EBE92FA8, &qword_1C12B1C48, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77318);
  }

  return result;
}

uint64_t sub_1C10B9338(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C10B9380()
{
  result = qword_1EDE77210;
  if (!qword_1EDE77210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93018, &qword_1C12B1CE8);
    sub_1C10B9438();
    sub_1C10239B0(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77210);
  }

  return result;
}

unint64_t sub_1C10B9438()
{
  result = qword_1EDE773C8;
  if (!qword_1EDE773C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93020, &qword_1C12B1CF0);
    sub_1C10239B0(&qword_1EDE7BB68, &unk_1EBE93030, &qword_1C12BBF40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773C8);
  }

  return result;
}

uint64_t sub_1C10B94F0()
{
  sub_1C10BA468();
  sub_1C12637F0();
  return v1;
}

uint64_t View.photosLegibilityBlur(enabled:height:radius:edge:)(char a1, uint64_t a2, char a3, uint64_t a4, char a5, int a6, uint64_t a7, uint64_t a8)
{
  v20 = a8;
  v15 = type metadata accessor for PhotosLegibilityBlurModifier(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_1EBE8FC98 != -1)
    {
      swift_once();
    }

    a2 = qword_1EBE930A0;
  }

  if (a5)
  {
    if (qword_1EDE78BD0 != -1)
    {
      swift_once();
    }

    a4 = qword_1EDE78BD8;
  }

  *v17 = a1 & 1;
  *(v17 + 1) = a2;
  *(v17 + 2) = a4;
  *(v17 + 6) = a6;
  v21 = a2;
  sub_1C100D418();
  sub_1C1262BE0();
  MEMORY[0x1C68EE920](v17, a7, v15, v20);
  return sub_1C10BA148(v17);
}

uint64_t type metadata accessor for PhotosLegibilityBlurModifier(uint64_t a1)
{
  result = qword_1EDE79E70;
  if (!qword_1EDE79E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C10B9770@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C10B974C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 20) = v5 & 1;
  return result;
}

uint64_t sub_1C10B97A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  KeyPath = swift_getKeyPath();
  v7 = *v2;
  if (v7 == 1)
  {
    type metadata accessor for PhotosLegibilityBlurModifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30, &unk_1C12B0E70);
    sub_1C1262BF0();
    v8 = v14;
    v9 = *(v3 + 2);
    v10 = *(v3 + 6);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930A8, &qword_1C12B1F60);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930B0, &qword_1C12B1F68);
  v13 = a2 + *(result + 36);
  *v13 = KeyPath;
  *(v13 + 8) = v8;
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v13 + 28) = v7 ^ 1;
  return result;
}

uint64_t sub_1C10B98CC()
{
  type metadata accessor for PhotosLegibilityBlurRenderer();
  swift_allocObject();
  result = sub_1C10B9ADC();
  qword_1EDE9B5D0 = result;
  return result;
}

id sub_1C10B9908(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, int a10, double a11)
{
  v15 = PXImageGetCGImage();
  if (v15)
  {
    v16 = v15;
    if ((sub_1C12665E0() & 1) != 0 || a7 <= 0.0 || (v40.origin.x = OUTLINED_FUNCTION_0_33(), CGRectIsEmpty(v40)))
    {
    }

    else
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
      [v19 extent];
      OUTLINED_FUNCTION_2_27();
      OUTLINED_FUNCTION_0_33();
      v38 = v21;
      v39 = v20;
      v36 = v23;
      v37 = v22;
      PXRectDenormalize();
      OUTLINED_FUNCTION_1_25();
      PXSizeGetAspectRatio();
      PXRectWithAspectRatioFittingRect();
      OUTLINED_FUNCTION_1_25();
      PXClamp();
      v25 = a1 * v24;
      v26 = OUTLINED_FUNCTION_4_28();
      if (a10 == 1)
      {
        MinY = CGRectGetMinY(*&v26);
      }

      else
      {
        MinY = CGRectGetMaxY(*&v26) - v25;
      }

      v35 = MinY;
      v41.origin.y = v38;
      v41.origin.x = v39;
      v41.size.height = v36;
      v41.size.width = v37;
      Width = CGRectGetWidth(v41);
      v42.origin.x = OUTLINED_FUNCTION_4_28();
      v32 = CGRectGetWidth(v42);
      v33 = sub_1C10B9C58(v19, 0.0, v35, Width, v25, v32 / (a5 * a7) * a11);
      if (v33)
      {
        v34 = v33;
        v17 = PXImageFromCGImage();

        return v17;
      }
    }
  }

  return 0;
}

uint64_t sub_1C10B9ADC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930B8, &unk_1C12B1F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12B1E40;
  v3 = *MEMORY[0x1E695F7F0];
  *(inited + 32) = *MEMORY[0x1E695F7F0];
  v4 = MEMORY[0x1E69E6370];
  *(inited + 40) = 0;
  v5 = *MEMORY[0x1E695F870];
  *(inited + 64) = v4;
  *(inited + 72) = v5;
  v6 = *MEMORY[0x1E695F8A8];
  type metadata accessor for CIFormat(0);
  v7 = MEMORY[0x1E695F868];
  *(inited + 80) = v6;
  v8 = *v7;
  *(inited + 104) = v9;
  *(inited + 112) = v8;
  v10 = objc_allocWithZone(MEMORY[0x1E695DFB0]);
  v11 = v3;
  v12 = v5;
  v13 = v8;
  v14 = [v10 init];
  *(inited + 144) = sub_1C10BA3DC();
  *(inited + 120) = v14;
  type metadata accessor for CIContextOption(0);
  sub_1C10BA420(&unk_1EDE76A50, type metadata accessor for CIContextOption, &unk_1C12A2AD8);
  v15 = sub_1C1265CE0();
  v16 = objc_allocWithZone(MEMORY[0x1E695F620]);
  *(v1 + 16) = sub_1C10BA320(v15, v17);
  return v1;
}

id sub_1C10B9C58(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v11 = [objc_opt_self() maskedVariableBlurFilter];
  v12 = [a1 imageByClampingToExtent];
  [v11 setInputImage_];

  *&v13 = a6;
  [v11 setRadius_];
  [a1 extent];
  OUTLINED_FUNCTION_2_27();
  PXRectFlippedVertically();
  OUTLINED_FUNCTION_5_1();
  if (qword_1EDE79DD0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EDE79DD8;
  [qword_1EDE79DD8 extent];
  PXAffineTransformMakeFromRects();
  v15 = v27;
  v16 = v28;
  v17 = [v14 imageByClampingToExtent];
  v18 = [v17 imageByApplyingTransform:&v26 highQualityDownsample:0];

  [v11 setMask_];
  result = [v11 outputImage];
  if (result)
  {
    v20 = result;
    [a1 extent];
    v21 = [v20 imageByCroppingToRect_];

    v22 = *(v6 + 16);
    [a1 extent];
    OUTLINED_FUNCTION_5_1();
    v23 = *MEMORY[0x1E695F8A8];
    v24 = [a1 colorSpace];
    v25 = [v22 createCGImage:v21 fromRect:v23 format:v24 colorSpace:0 deferred:{v15, v16, a3, a2}];

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C10B9F00()
{
  v0 = objc_opt_self();
  v1 = sub_1C1265E70();
  if (qword_1EDE7E628 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE7E630;
  v3 = [v0 px:v1 imageNamed:v2 bundle:?];

  if (v3)
  {
    v4 = PXImageGetCGImage();

    if (v4)
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];

      qword_1EDE79DD8 = v5;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C10BA014()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

double sub_1C10BA04C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EBE930A0 = v2;
  return result;
}

double sub_1C10BA0CC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_1C1266440();
  v2 = v1;

  result = v2;
  *&qword_1EDE78BD8 = v2;
  return result;
}

uint64_t sub_1C10BA148(uint64_t a1)
{
  v2 = type metadata accessor for PhotosLegibilityBlurModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C10BA1F0(uint64_t a1)
{
  type metadata accessor for CGRectEdge(319);
  if (v1 <= 0x3F)
  {
    sub_1C100D3BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosLegibilityBlurConfiguration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PhotosLegibilityBlurConfiguration(uint64_t result, int a2, int a3)
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

id sub_1C10BA320(uint64_t a1, double a2)
{
  if (a1)
  {
    type metadata accessor for CIContextOption(0);
    sub_1C10BA420(&unk_1EDE76A50, type metadata accessor for CIContextOption, &unk_1C12A2AD8);
    v3 = sub_1C1265CC0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithOptions_];

  return v4;
}

unint64_t sub_1C10BA3DC()
{
  result = qword_1EDE76988;
  if (!qword_1EDE76988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE76988);
  }

  return result;
}

uint64_t sub_1C10BA420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C10BA468()
{
  result = qword_1EDE76F70;
  if (!qword_1EDE76F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F70);
  }

  return result;
}

unint64_t sub_1C10BA4CC()
{
  result = qword_1EDE77420;
  if (!qword_1EDE77420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE930B0, &qword_1C12B1F68);
    sub_1C0FDB6D4(&qword_1EDE76DE0, &qword_1EBE930A8, &qword_1C12B1F60, MEMORY[0x1E697FDF8]);
    sub_1C0FDB6D4(&qword_1EDE76D50, &unk_1EBE930C0, &qword_1C12B1FA8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77420);
  }

  return result;
}

uint64_t PhotosMemoryCell.init(_:canToggleFavorite:content:titleAndSubtitleView:bottomTrailingAccessoryView:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, __int128 a7, __int128 a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v26[0] = 0;
  sub_1C1265410();
  v17 = *&__src[8];
  *a6 = __src[0];
  *(a6 + 8) = v17;
  *__src = a7;
  *&__src[16] = a8;
  *&__src[32] = a9;
  *&__src[48] = a10;
  *&__src[64] = a11;
  *&__src[72] = a12;
  v18 = type metadata accessor for PhotosMemoryCell(0, __src);
  v19 = *(v18 + 120);
  *__src = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a6 + v19), __src, 0xD1uLL);
  *(a6 + 16) = a1;
  v20 = swift_unknownObjectRetain();
  v21 = a3(v20);
  v22 = a4(v21);
  a5(v22);
  result = swift_unknownObjectRelease();
  *(a6 + *(v18 + 116)) = a2;
  return result;
}

uint64_t PhotosMemoryCell.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  OUTLINED_FUNCTION_0();
  v126 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v124 = v5;
  v125 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE930D0, &qword_1C12B2018);
  v130 = a1[2];
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_8_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12633A0();
  sub_1C1263190();
  v6 = sub_1C10BB310();
  OUTLINED_FUNCTION_5_3();
  WitnessTable = swift_getWitnessTable();
  v160 = v6;
  v161 = WitnessTable;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v122 = a1;
  v8 = a1[1];
  v128 = a1[3];
  v129 = v8;
  v9 = v8;
  type metadata accessor for PhotosInteractiveFavoriteBadge(255, v8, v128, *(*(&v128 + 1) + 16));
  sub_1C1264360();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  v10 = OUTLINED_FUNCTION_16_13();
  type metadata accessor for PhotosFavoriteBadge(v10, v9, v11, v12);
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_10_18();
  v158 = swift_getWitnessTable();
  v159 = MEMORY[0x1E697E5C0];
  v156 = swift_getWitnessTable();
  v157 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12633A0();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  v13 = sub_1C1265B00();
  *&v105 = swift_getWitnessTable();
  v14 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v120 = v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v103 = v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v18 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v117 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  v114 = v21;
  *&v121 = v14;
  v22 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  v25 = sub_1C0FDB6D4(v23, &unk_1EBE92EC0, &qword_1C12A8E00, v24);
  v106 = v22;
  v154 = v22;
  v155 = v25;
  v26 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v29 = sub_1C0FDB6D4(v27, &qword_1EBE91C40, &unk_1C12A7010, v28);
  v152 = v26;
  v153 = v29;
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v33 = sub_1C0FDB6D4(v31, &unk_1EBE92ED0, &unk_1C12A8E80, v32);
  v150 = v30;
  v151 = v33;
  v34 = swift_getWitnessTable();
  v119 = v18;
  v104 = v34;
  v36 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v18, v34, v35);
  OUTLINED_FUNCTION_0();
  v107 = v37;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v100 - v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  v41 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v110 = v42;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_34();
  v108 = v44;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v115 = v45;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_34();
  v109 = v47;
  v116 = v48;
  v111 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v118 = v49;
  MEMORY[0x1EEE9AC00](v50);
  v112 = &v100 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v113 = &v100 - v53;
  v131 = v129;
  v132 = v130;
  v55 = v122;
  v54 = v123;
  v56 = v122[4];
  v133 = v128;
  v134 = v56;
  v102 = v56;
  v57 = *(v122 + 10);
  v100 = *(v122 + 11);
  v101 = v57;
  v135 = v57;
  v136 = v100;
  v137 = v123;
  sub_1C1009330(v13, v105, v58, v59, v60, v61);
  v62 = v103;
  sub_1C12655B0();
  sub_1C10BD784(v55, v162);
  memcpy(v149, v163, sizeof(v149));
  sub_1C100D690(v162, v165);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v63 = qword_1EDE82B08;
  v64 = qword_1EDE82B10;
  v105 = xmmword_1EDE82B18;
  v65 = qword_1EDE82B28;

  sub_1C100C7D0(v162);

  *&v165[0] = v63;
  *(&v165[0] + 1) = v64;
  v165[1] = v105;
  *&v165[2] = v65;
  memcpy(&v165[2] + 8, v149, 0xA8uLL);
  v66 = v114;
  v67 = v121;
  View.cellStyle(for:)(v165, v106, v114);
  memcpy(v164, v165, sizeof(v164));
  sub_1C100C7D0(v164);
  (*(v120 + 8))(v62, v67);
  v148 = 2;
  v147 = 0;
  sub_1C10BD784(v55, v165);
  v68 = v165[0];
  v121 = v165[1];
  v69 = *&v165[2];

  sub_1C100C7D0(v165);
  v144 = v68;
  v145 = v121;
  v146 = v69;
  OUTLINED_FUNCTION_28();
  v70 = v119;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(v71, v72, v73, v119, v104, v74);

  (*(v117 + 8))(v66, v70);
  LOBYTE(v144) = 1;
  v75 = OUTLINED_FUNCTION_12_13();
  sub_1C1061D74();
  v76 = v108;
  sub_1C12649C0();
  (*(v107 + 8))(v40, v36);
  OUTLINED_FUNCTION_10_5();
  v81 = sub_1C0FDB6D4(v77, v78, v79, v80);
  v142 = v75;
  v143 = v81;
  v82 = swift_getWitnessTable();
  OUTLINED_FUNCTION_15_6();
  v83 = v109;
  sub_1C1264E50();
  (*(v110 + 8))(v76, v41);
  v85 = v125;
  v84 = v126;
  (*(v126 + 16))(v125, v54, v55);
  v86 = (*(v84 + 80) + 96) & ~*(v84 + 80);
  v87 = swift_allocObject();
  v88 = v130;
  *(v87 + 16) = v129;
  *(v87 + 32) = v88;
  v89 = v102;
  *(v87 + 48) = v128;
  *(v87 + 64) = v89;
  v90 = v100;
  *(v87 + 80) = v101;
  *(v87 + 88) = v90;
  (*(v84 + 32))(v87 + v86, v85, v55);
  v91 = sub_1C1025E04();
  v140 = v82;
  v141 = v91;
  v92 = v116;
  v93 = swift_getWitnessTable();
  v94 = v112;
  sub_1C1264F40();

  (*(v115 + 8))(v83, v92);
  v95 = sub_1C10136B0();
  v138 = v93;
  v139 = v95;
  v96 = v111;
  swift_getWitnessTable();
  v97 = v113;
  sub_1C0FDBA4C();
  v98 = *(v118 + 8);
  v98(v94, v96);
  sub_1C0FDBA4C();
  return (v98)(v97, v96);
}

unint64_t sub_1C10BB310()
{
  result = qword_1EDE7BF78;
  if (!qword_1EDE7BF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE930D0, &qword_1C12B2018);
    sub_1C10BB39C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF78);
  }

  return result;
}

unint64_t sub_1C10BB39C()
{
  result = qword_1EDE816B0;
  if (!qword_1EDE816B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE816B0);
  }

  return result;
}

uint64_t sub_1C10BB3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v108 = a8;
  v109 = a4;
  v114 = a6;
  v115 = a3;
  v111 = a5;
  v97 = a1;
  v106 = a9;
  v110 = a12;
  v113 = a11;
  v116 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE930D0, &qword_1C12B2018);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getWitnessTable();
  sub_1C12633A0();
  v15 = sub_1C1263190();
  v147 = sub_1C10BB310();
  WitnessTable = swift_getWitnessTable();
  v88 = v15;
  v87 = swift_getWitnessTable();
  v16 = sub_1C12655C0();
  v100 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v81[-v17];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  v101 = v16;
  v18 = sub_1C1263190();
  v104 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v81[-v19];
  v20 = a7;
  type metadata accessor for PhotosInteractiveFavoriteBadge(255, a2, a6, *(a7 + 16));
  sub_1C1264360();
  sub_1C1263190();
  sub_1C1263190();
  v21 = *(a7 + 8);
  v112 = a7;
  v22 = *(v21 + 8);
  v83 = v21;
  type metadata accessor for PhotosFavoriteBadge(255, a2, v22, v23);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655C0();
  sub_1C1263190();
  v24 = sub_1C1263190();
  v145 = swift_getWitnessTable();
  v146 = MEMORY[0x1E697E5C0];
  v143 = swift_getWitnessTable();
  v144 = MEMORY[0x1E697E5D8];
  v25 = swift_getWitnessTable();
  v94 = v24;
  v89 = v25;
  v26 = sub_1C12633A0();
  v102 = v18;
  v92 = v26;
  v99 = sub_1C1263190();
  v96 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v81[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v28);
  v91 = &v81[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v95 = &v81[-v31];
  v32 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = sub_1C1266790();
  v84 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v34 = &v81[-v33];
  v35 = v115;
  v93 = *(v115 - 1);
  MEMORY[0x1EEE9AC00](v36);
  v90 = &v81[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v81[-v39];
  v133 = v32;
  v134 = v35;
  v41 = v109;
  v42 = v111;
  v135 = v109;
  v136 = v111;
  v137 = v114;
  v138 = v20;
  v139 = v108;
  v140 = v116;
  v43 = v110;
  v141 = v113;
  v142 = v110;
  type metadata accessor for PhotosMemoryCell(0, &v133);
  v44 = v97;
  v107 = v40;
  sub_1C0FDBA4C();
  v82 = v42 != MEMORY[0x1E6981E70];
  v133 = *(v44 + 16);
  (*(v83 + 72))(v32);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, AssociatedTypeWitness);
  (*(v84 + 8))(v34, v105);
  v105 = v32;
  v117 = v32;
  v118 = v35;
  v119 = v41;
  v120 = v42;
  v121 = v114;
  v122 = v112;
  v46 = v108;
  v123 = v108;
  v124 = v116;
  v125 = v113;
  v126 = v43;
  v127 = EnumTagSinglePayload != 1;
  v47 = v44;
  v48 = v86;
  v49 = v47;
  v128 = v47;
  v129 = v82;
  sub_1C1009330(v88, v87, v50, v51, v52, v53);
  sub_1C12655B0();
  if (EnumTagSinglePayload == 1)
  {
    if (qword_1EDE7B868 != -1)
    {
      swift_once();
    }

    v54 = qword_1EDE7B870;
  }

  else
  {
    v54 = sub_1C1265190();
  }

  v133 = v54;
  v55 = v101;
  v56 = swift_getWitnessTable();
  v57 = v103;
  sub_1C1264BE0();

  (*(v100 + 8))(v48, v55);
  v58 = sub_1C1265950();
  v101 = v81;
  MEMORY[0x1EEE9AC00](v58);
  v59 = v115;
  *&v81[-96] = v105;
  *&v81[-88] = v59;
  v60 = v111;
  *&v81[-80] = v109;
  *&v81[-72] = v60;
  v61 = v112;
  *&v81[-64] = v114;
  *&v81[-56] = v61;
  v62 = v116;
  *&v81[-48] = v46;
  *&v81[-40] = v62;
  v63 = v110;
  *&v81[-32] = v113;
  *&v81[-24] = v63;
  *&v81[-16] = v49;
  v64 = sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
  v132[4] = v56;
  v132[5] = v64;
  v65 = v102;
  v66 = swift_getWitnessTable();
  v67 = v91;
  sub_1C1264F60();
  (*(v104 + 8))(v57, v65);
  v68 = swift_getWitnessTable();
  v132[2] = v66;
  v132[3] = v68;
  v69 = v99;
  v70 = swift_getWitnessTable();
  v71 = v95;
  sub_1C0FDBA4C();
  v72 = v96;
  v114 = *(v96 + 8);
  v114(v67, v69);
  v73 = v93;
  v74 = v90;
  v75 = v115;
  (*(v93 + 16))(v90, v107, v115);
  v133 = v74;
  v76 = v98;
  (*(v72 + 16))(v98, v71, v69);
  v134 = v76;
  v77 = v75;
  v132[0] = v75;
  v132[1] = v69;
  v130 = v116;
  v131 = v70;
  sub_1C119EE80(&v133, 2, v132);
  v78 = v114;
  v114(v71, v69);
  v79 = *(v73 + 8);
  v79(v107, v77);
  v78(v76, v69);
  return v79(v74, v77);
}

uint64_t sub_1C10BBEF0@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  v34 = a8;
  v32 = a5;
  v30 = a4;
  v35 = a3;
  v33 = a2;
  v36 = a9;
  v31 = a12;
  v29 = a11;
  v28 = a10;
  v27[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE930D0, &qword_1C12B2018);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  v27[2] = swift_getWitnessTable();
  v27[3] = sub_1C12633A0();
  v15 = sub_1C1263190();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v27 - v20;
  v22 = 0.0;
  if (a1)
  {
    v22 = 1.0;
  }

  v49 = 0x3FDCCCCCCCCCCCCDLL;
  v50 = v22;
  sub_1C1265990();
  v37 = v30;
  v38 = v32;
  v39 = a6;
  v40 = a7;
  v41 = v34;
  v42 = v28;
  v43 = v29;
  v44 = v31;
  v45 = v33;
  v46 = v35;
  v23 = sub_1C10BB310();
  sub_1C1264F60();
  WitnessTable = swift_getWitnessTable();
  v47 = v23;
  v48 = WitnessTable;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v25 = *(v16 + 8);
  v25(v18, v15);
  sub_1C0FDBA4C();
  return (v25)(v21, v15);
}

uint64_t sub_1C10BC28C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v31 = a8;
  v32 = a9;
  v28 = a1;
  v29 = a7;
  v30 = a2;
  v27 = a12;
  v26 = a11;
  v25 = a10;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v16 = sub_1C12654C0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v25 - v21;
  sub_1C12638D0();
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = v29;
  v38 = v31;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v43 = v30;
  sub_1C12654B0();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v23 = *(v17 + 8);
  v23(v19, v16);
  sub_1C0FDBA4C();
  return (v23)(v22, v16);
}

uint64_t sub_1C10BC508@<X0>(int a1@<W1>, uint64_t *a2@<X2>, char *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v59 = a6;
  v56 = a3;
  v55 = a2;
  v53 = a1;
  v60 = a8;
  v52 = a10;
  v51 = a9;
  swift_getTupleTypeMetadata2();
  v15 = sub_1C1265B00();
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v46 - v16;
  v48 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v46 = &v46 - v20;
  v21 = sub_1C1266790();
  v61 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v58 = &v46 - v25;
  v54 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](v26);
  v57 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v46 - v29;
  v69 = v55;
  v70 = v56;
  v71 = a4;
  v72 = a5;
  v73 = v59;
  v74 = a7;
  v75 = v51;
  v76 = v52;
  v77 = a11;
  v78 = a12;
  type metadata accessor for PhotosMemoryCell(0, &v69);
  v56 = v30;
  v55 = a4;
  v59 = a11;
  sub_1C0FDBA4C();
  if (v53)
  {
    v31 = v46;
    sub_1C0FDBA4C();
    v62 = 0x4028000000000000;
    v63 = 0;
    v69 = &v62;
    v32 = v48;
    v33 = v47;
    (*(v48 + 16))(v47, v31, a5);
    v70 = v33;
    v67 = MEMORY[0x1E6981840];
    v68 = a5;
    v65 = MEMORY[0x1E6981838];
    v66 = a12;
    v34 = v49;
    sub_1C119EE80(&v69, 2, &v67);
    v35 = *(v32 + 8);
    v35(v31, a5);
    v35(v33, a5);
    (*(v50 + 32))(v23, v34, v15);
    v36 = v23;
    v37 = 0;
  }

  else
  {
    v36 = v23;
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v36, v37, 1, v15);
  swift_getWitnessTable();
  v38 = v58;
  sub_1C1170030(v23, v58);
  v39 = *(v61 + 8);
  v39(v23, v21);
  v40 = v54;
  v41 = v57;
  v42 = v56;
  v43 = v55;
  (*(v54 + 16))(v57, v56, v55);
  v69 = v41;
  (*(v61 + 16))(v23, v38, v21);
  v70 = v23;
  v67 = v43;
  v68 = v21;
  v65 = v59;
  WitnessTable = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  sub_1C119EE80(&v69, 2, &v67);
  v39(v38, v21);
  v44 = *(v40 + 8);
  v44(v42, v43);
  v39(v23, v21);
  return (v44)(v41, v43);
}

uint64_t sub_1C10BCB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10, double a11, uint64_t a12)
{
  v55 = a6;
  v56 = a8;
  v54 = a5;
  v52 = a4;
  v50 = a3;
  v41 = a1;
  v47 = a9;
  v53 = a12;
  v51 = a11;
  v49 = a10;
  type metadata accessor for PhotosInteractiveFavoriteBadge(255, a2, a6, *(a7 + 16));
  sub_1C1264360();
  sub_1C1263190();
  sub_1C1263190();
  v40 = *(*(a7 + 8) + 8);
  type metadata accessor for PhotosFavoriteBadge(255, a2, v40, v14);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  v15 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1C12655C0();
  v42 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v20 = sub_1C1263190();
  v45 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v23 = sub_1C1263190();
  v46 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v43 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v44 = &v39 - v26;
  v57 = a2;
  v58 = v50;
  v59 = v52;
  v60 = v54;
  v61 = v55;
  v62 = a7;
  v48 = a7;
  v63 = v56;
  v64 = v49;
  v65 = v51;
  v66 = v53;
  v27 = v41;
  v67 = v41;
  sub_1C1009330(v15, WitnessTable, v28, v29, v30, v31);
  sub_1C12655B0();
  v82 = *(v27 + 16);
  if (((*(v40 + 8))(a2) & 1) == 0)
  {
    v72 = a2;
    v73 = v50;
    v74 = v52;
    v75 = v54;
    v76 = v55;
    v77 = v48;
    v78 = v56;
    v79 = v49;
    v80 = v51;
    v81 = v53;
    type metadata accessor for PhotosMemoryCell(0, &v72);
    sub_1C106C83C();
  }

  v32 = swift_getWitnessTable();
  sub_1C1264F50();
  (*(v42 + 8))(v19, v17);
  v72 = a2;
  v73 = v50;
  v74 = v52;
  v75 = v54;
  v76 = v55;
  v77 = v48;
  v78 = v56;
  v79 = v49;
  v80 = v51;
  v81 = v53;
  v33 = type metadata accessor for PhotosMemoryCell(0, &v72);
  sub_1C10BD784(v33, &v72);
  sub_1C100C7D0(&v72);
  v70 = v32;
  v71 = MEMORY[0x1E697E5C0];
  v34 = swift_getWitnessTable();
  v35 = v43;
  sub_1C1264FA0();
  (*(v45 + 8))(v22, v20);
  v68 = v34;
  v69 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v36 = v44;
  sub_1C0FDBA4C();
  v37 = *(v46 + 8);
  v37(v35, v23);
  sub_1C0FDBA4C();
  return (v37)(v36, v23);
}

uint64_t sub_1C10BD0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v64 = a5;
  v65 = a8;
  v62 = a3;
  v63 = a4;
  v67 = a9;
  v68 = a1;
  v61 = a11;
  v58 = a10;
  v14 = sub_1C1265E50();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a7 + 16);
  v51 = a7;
  v52 = a6;
  v18 = type metadata accessor for PhotosInteractiveFavoriteBadge(255, a2, a6, v17);
  sub_1C1264360();
  v19 = sub_1C1263190();
  v59 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v53 = &v50 - v20;
  v57 = sub_1C1263190();
  v60 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v66 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v56 = &v50 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v69 = &v50 - v25;
  v26 = *(v68 + 16);
  swift_unknownObjectRetain();
  v27 = sub_1C110DB44(a2);
  PhotosInteractiveFavoriteBadge.init(_:tint:)(v26, v27, v91);
  *&v81 = v26;
  v28 = *(*(a7 + 8) + 8);
  v29 = *(v28 + 8);
  swift_unknownObjectRetain();
  v29(a2, v28);
  sub_1C1265DF0();
  v30 = static String.photosSwiftUICoreLocalized(_:)(v16);
  v32 = v31;
  (*(v54 + 8))(v16, v55);
  *&v81 = v30;
  *(&v81 + 1) = v32;
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDB9AC();
  v34 = v53;
  sub_1C1264C80();

  v89[0] = v91[0];
  v89[1] = v91[1];
  v90[0] = v92[0];
  *(v90 + 9) = *(v92 + 9);
  (*(*(v18 - 8) + 8))(v89, v18);
  *&v81 = a2;
  *(&v81 + 1) = v62;
  v82 = v63;
  v83 = v64;
  v84 = v52;
  v85 = v51;
  v87 = v58;
  v86 = v65;
  v88 = v61;
  type metadata accessor for PhotosMemoryCell(0, &v81);
  v35 = sub_1C10BEA98(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v79 = WitnessTable;
  v80 = v35;
  v36 = swift_getWitnessTable();
  v37 = v56;
  sub_1C1264F50();
  (*(v59 + 8))(v34, v19);
  v77 = v36;
  v78 = MEMORY[0x1E697E5C0];
  v38 = v57;
  v65 = swift_getWitnessTable();
  v39 = v37;
  sub_1C0FDBA4C();
  v40 = v60;
  v68 = *(v60 + 8);
  (v68)(v39, v38);
  *&v75 = v26;
  v41 = sub_1C110DB44(a2);
  PhotosFavoriteBadge.init(_:tint:)(v41, &v81, a2, v28);
  v73 = v81;
  type metadata accessor for PhotosFavoriteBadge(0, a2, v28, v42);
  v43 = swift_getWitnessTable();
  sub_1C1264F50();

  swift_unknownObjectRelease();
  v73 = v75;
  v74 = v76;
  v44 = sub_1C1263190();
  v72[2] = v43;
  v72[3] = MEMORY[0x1E697E5C0];
  v45 = swift_getWitnessTable();
  sub_1C0FDBA4C();

  swift_unknownObjectRelease();
  v46 = v66;
  v47 = v69;
  (*(v40 + 16))(v66, v69, v38);
  v75 = v81;
  v76 = v82;
  *&v73 = v46;
  *(&v73 + 1) = &v75;
  swift_unknownObjectRetain();

  v72[0] = v38;
  v72[1] = v44;
  v70 = v65;
  v71 = v45;
  sub_1C119EE80(&v73, 2, v72);

  swift_unknownObjectRelease();
  v48 = v68;
  (v68)(v47, v38);

  swift_unknownObjectRelease();
  return v48(v46, v38);
}

uint64_t sub_1C10BD784@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 120);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C10AFFB4(v17);
    return (*(v6 + 8))(v8, v5);
  }
}

double sub_1C10BD990(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v13[0] = a3;
  v13[1] = a4;
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a8;
  v14 = a9;
  v15 = a10;
  v16 = a11;
  type metadata accessor for PhotosMemoryCell(0, v13);
  return sub_1C106C894(a1);
}

double sub_1C10BD9F0(char a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = v1[11];
  v16[0] = v1[2];
  v14 = v16[0];
  v16[1] = v2;
  v16[2] = v3;
  v16[3] = v4;
  v16[4] = v5;
  v16[5] = v6;
  v16[6] = v7;
  v16[7] = v8;
  v16[8] = v9;
  v16[9] = v10;
  v11 = *(type metadata accessor for PhotosMemoryCell(0, v16) - 8);
  *&v13 = v7;
  *(&v13 + 1) = v8;
  return sub_1C10BD990(a1, v1 + ((*(v11 + 80) + 96) & ~*(v11 + 80)), v14, v2, v3, v4, v5, v6, v13, v9, v10);
}

uint64_t PhotosMemoryCell<>.init(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for PhotosAssetView(0);
  v13 = type metadata accessor for PhotosMemoryCellTextOverlayView(0, a2, *(a4 + 8), v12);
  v14 = sub_1C10BEA98(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView, &protocol conformance descriptor for PhotosAssetView);
  OUTLINED_FUNCTION_9_18();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_unknownObjectRetain();
  *&v21 = a5;
  *(&v21 + 1) = v14;
  *&v20 = a3;
  *(&v20 + 1) = a4;
  *&v19 = v13;
  *(&v19 + 1) = MEMORY[0x1E6981E70];
  *&v18 = a2;
  *(&v18 + 1) = v11;
  PhotosMemoryCell.init(_:canToggleFavorite:content:titleAndSubtitleView:bottomTrailingAccessoryView:)(v16, 1, sub_1C10BDDA0, sub_1C10BDF3C, sub_1C10BDF6C, a6, v18, v19, v20, v21, WitnessTable, MEMORY[0x1E6981E60]);
  return swift_unknownObjectRelease();
}

double sub_1C10BDC48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v12[1] = a1;
  (*(*(a3 + 8) + 72))(v12, a2);
  v5 = v12[0];
  v6 = sub_1C1200D04();
  [v6 setNetworkAccessAllowed_];
  *(a4 + 152) = swift_getKeyPath();
  *(a4 + 160) = 0;
  v7 = type metadata accessor for PhotosAssetView(0);
  v8 = v7[12];
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v9 = a4 + v7[13];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a4 + v7[14];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *a4 = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 68) = 256;
  *(a4 + 52) = 0;
  *(a4 + 60) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 1;
  *(a4 + 88) = v5;
  *(a4 + 96) = 0;
  *(a4 + 104) = v6;
  result = 0.0;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 2;
  return result;
}

uint64_t sub_1C10BDDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PhotosMemoryCellTextOverlayView(0, a2, *(a4 + 8), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v15 = a1;
  swift_unknownObjectRetain();
  PhotosMemoryCellTextOverlayView.init(collection:titleLookProducer:)(&v15, 0, 0, v8);
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_1C0FDBA4C();
  return (v12)(v11, v5);
}

uint64_t PhotosMemoryCell<>.init(_:canToggleFavorite:content:)@<X0>(char a2@<W1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t x3_0@<X3>, __int128 a9)
{
  v15 = type metadata accessor for PhotosMemoryCellTextOverlayView(0, a4, *(a7 + 8), x3_0);
  OUTLINED_FUNCTION_9_18();
  WitnessTable = swift_getWitnessTable();
  v17 = swift_unknownObjectRetain();
  *&v21 = a6;
  *(&v21 + 1) = a7;
  *&v20 = v15;
  *(&v20 + 1) = MEMORY[0x1E6981E70];
  *&v19 = a4;
  *(&v19 + 1) = a5;
  PhotosMemoryCell.init(_:canToggleFavorite:content:titleAndSubtitleView:bottomTrailingAccessoryView:)(v17, a2, a3, sub_1C10BE23C, sub_1C10BEB5C, a8, v19, v20, v21, a9, WitnessTable, MEMORY[0x1E6981E60]);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C10BE0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for PhotosMemoryCellTextOverlayView(0, a2, *(a5 + 8), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v16 = a1;
  swift_unknownObjectRetain();
  PhotosMemoryCellTextOverlayView.init(collection:titleLookProducer:)(&v16, 0, 0, v9);
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_1C0FDBA4C();
  return (v13)(v12, v6);
}

void sub_1C10BE2AC(void *a1)
{
  sub_1C10BE984(319, &qword_1EDE76CA0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            sub_1C10BE984(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
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

uint64_t sub_1C10BE3EC(uint64_t result, unsigned int a2, void *a3)
{
  v6 = a3[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = a3[4];
  v10 = a3[5];
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  if (v8 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v7 + 84);
  }

  v14 = *(v10 - 8);
  v15 = *(v14 + 84);
  if (v13 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v13;
  }

  v17 = *(v7 + 80);
  v18 = *(*(v6 - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(v14 + 80);
  if (v16 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(*(v9 - 8) + 64) + v20;
  if (v21 >= a2)
  {
LABEL_32:
    v30 = ((result + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v16 & 0x80000000) != 0)
    {
      v32 = (v30 + v17 + 8) & ~v17;
      if (v8 != v21)
      {
        v32 = (v32 + v18 + v19) & ~v19;
        if (v12 == v21)
        {
          v8 = v12;
          v6 = v9;
        }

        else
        {
          v32 = (v22 + v32) & ~v20;
          v8 = v15;
          v6 = v10;
        }
      }

      return __swift_getEnumTagSinglePayload(v32, v8, v6);
    }

    else
    {
      v31 = *v30;
      if (*v30 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }
  }

  else
  {
    v23 = ((((v22 + ((v18 + v19 + ((v17 + 24) & ~v17)) & ~v19)) & ~v20) + *(*(v10 - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 217;
    v24 = (a2 - v21 + 255) >> 8;
    if (v23 <= 3)
    {
      v25 = v24 + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      LODWORD(v26) = 4;
    }

    else
    {
      LODWORD(v26) = 2;
    }

    if (v25 < 0x100)
    {
      LODWORD(v26) = 1;
    }

    if (v25 >= 2)
    {
      v26 = v26;
    }

    else
    {
      v26 = 0;
    }

    switch(v26)
    {
      case 1:
        v27 = *(result + v23);
        if (!*(result + v23))
        {
          goto LABEL_32;
        }

        goto LABEL_28;
      case 2:
        v27 = *(result + v23);
        if (!*(result + v23))
        {
          goto LABEL_32;
        }

        goto LABEL_28;
      case 3:
        __break(1u);
        return result;
      case 4:
        v27 = *(result + v23);
        if (!v27)
        {
          goto LABEL_32;
        }

LABEL_28:
        v28 = (v27 - 1) << (8 * (((((v22 + ((v18 + v19 + ((v17 + 24) & ~v17)) & ~v19)) & ~v20) + *(*(v10 - 8) + 64)) & 0xF8) - 39));
        if (v23 <= 3)
        {
          v29 = *result;
        }

        else
        {
          v28 = 0;
          v29 = *result;
        }

        result = v21 + (v29 | v28) + 1;
        break;
      default:
        goto LABEL_32;
    }
  }

  return result;
}

void sub_1C10BE680(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = a4[4];
  v11 = a4[5];
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v9 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  v15 = *(v11 - 8);
  v16 = *(v15 + 84);
  if (v14 <= v16)
  {
    v17 = *(v15 + 84);
  }

  else
  {
    v17 = v14;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v8 + 80);
  v20 = *(*(v7 - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  v23 = *(*(v10 - 8) + 64) + v22;
  v24 = (v23 + ((v20 + v21 + ((v19 + 24) & ~v19)) & ~v21)) & ~v22;
  v25 = *(*(v11 - 8) + 64);
  v26 = ((v24 + v25) & 0xFFFFFFFFFFFFFFF8) + 217;
  if (v18 >= a3)
  {
    v30 = 0;
  }

  else
  {
    v27 = (a3 - v18 + 255) >> 8;
    if (v26 <= 3)
    {
      v28 = v27 + 1;
    }

    else
    {
      v28 = 2;
    }

    if (v28 >= 0x10000)
    {
      v29 = 4;
    }

    else
    {
      v29 = 2;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    if (v28 >= 2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  if (v18 >= a2)
  {
    v33 = ~v22;
    switch(v30)
    {
      case 1:
        a1[v26] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 2:
        *&a1[v26] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 3:
LABEL_54:
        __break(1u);
        break;
      case 4:
        *&a1[v26] = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (a2)
        {
LABEL_37:
          v34 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
          if ((v17 & 0x80000000) != 0)
          {
            v36 = (v34 + v19 + 8) & ~v19;
            if (v9 != v18)
            {
              v36 = (v36 + v20 + v21) & ~v21;
              if (v13 == v18)
              {
                v9 = v13;
                v7 = v10;
              }

              else
              {
                v36 = (v23 + v36) & v33;
                v9 = v16;
                v7 = v11;
              }
            }

            __swift_storeEnumTagSinglePayload(v36, a2, v9, v7);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v35 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v35 = (a2 - 1);
            }

            *v34 = v35;
          }
        }

        break;
    }
  }

  else
  {
    v31 = ~v18 + a2;
    bzero(a1, ((v24 + v25) & 0xFFFFFFFFFFFFFFF8) + 217);
    if (v26 <= 3)
    {
      v32 = (v31 >> 8) + 1;
    }

    else
    {
      v32 = 1;
    }

    if (v26 > 3)
    {
      *a1 = v31;
    }

    else
    {
      *a1 = v31;
    }

    switch(v30)
    {
      case 1:
        a1[v26] = v32;
        break;
      case 2:
        *&a1[v26] = v32;
        break;
      case 3:
        goto LABEL_54;
      case 4:
        *&a1[v26] = v32;
        break;
      default:
        return;
    }
  }
}

void sub_1C10BE984(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C10BEA98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PhotosFeaturedCollectionCell.init(_:keyAssets:maxItems:aspectRatio:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(a5, __src, 0xD1uLL);
  sub_1C1265410();
  *(a5 + 256) = v14;
  *(a5 + 264) = v15;
  sub_1C1265410();
  *(a5 + 272) = v14;
  *(a5 + 280) = v15;
  *(a5 + 288) = xmmword_1C12B2170;
  *(a5 + 304) = 0x4020000000000000;
  *(a5 + 216) = a1;
  *(a5 + 224) = a2;
  *(a5 + 232) = a3;
  *(a5 + 248) = a4;

  v13 = sub_1C10BEC78(v12, a4);

  *(a5 + 240) = v13;
  *(a5 + 312) = a6;
}

unint64_t sub_1C10BEC78(unint64_t result, uint64_t a2)
{
  v3 = result;
  v7 = MEMORY[0x1E69E7CC0];
  if (!result)
  {
    v4 = 0;
    if (a2 < 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
LABEL_6:
      if (!a2)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v5 = 0;
      while (!v3 || v5 >= v4)
      {
LABEL_13:
        v6 = swift_unknownObjectRetain();
        MEMORY[0x1C68EF9D0](v6);
        if (*(v7 + 16) >= *(v7 + 24) >> 1)
        {
          sub_1C12660F0();
        }

        ++v5;
        sub_1C1266160();
        swift_unknownObjectRelease();
        if (a2 == v5)
        {
          return v7;
        }
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68F02D0](v5, v3);
        goto LABEL_13;
      }

      if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_20:
      result = sub_1C1266BB0();
      v4 = result;
      if (a2 < 0)
      {
        goto LABEL_21;
      }
    }

    swift_unknownObjectRetain();
    goto LABEL_13;
  }

  if (result >> 62)
  {
    goto LABEL_20;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1C10BEDD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE931E0, &unk_1C12B2538);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - v3;
  v5 = type metadata accessor for PhotosAssetView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_unknownObjectRetain();
    v8 = sub_1C1200D04();
    [v8 setNetworkAccessAllowed_];
    *(v7 + 19) = swift_getKeyPath();
    v7[160] = 0;
    v9 = v5[12];
    *&v7[v9] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v10 = &v7[v5[13]];
    *v10 = swift_getKeyPath();
    v10[8] = 0;
    v11 = &v7[v5[14]];
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    *v7 = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    v7[48] = 1;
    v7[8] = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 34) = 256;
    *(v7 + 52) = 0;
    *(v7 + 60) = 0;
    *(v7 + 9) = 0;
    v7[80] = 1;
    *(v7 + 11) = a1;
    *(v7 + 12) = 0;
    *(v7 + 13) = v8;
    *(v7 + 7) = 0u;
    *(v7 + 8) = 0u;
    v7[144] = 2;
    sub_1C10C1254(v7, v4, type metadata accessor for PhotosAssetView);
    swift_storeEnumTagMultiPayload();
    sub_1C0FF746C();
    sub_1C1263C20();
    return sub_1C10C12B4(v7, type metadata accessor for PhotosAssetView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1C0FF746C();
    return sub_1C1263C20();
  }
}

uint64_t PhotosFeaturedCollectionCell.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v32 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v30 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1C12641D0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930E0, &qword_1C12B21A8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930E8, &qword_1C12B21B0);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  memcpy(v35, v2, 0x140uLL);
  *v14 = sub_1C1263AA0();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE930F0, &qword_1C12B21B8);
  sub_1C10BF48C(v35, &v14[*(v20 + 44)]);
  sub_1C12641B0();
  v21 = sub_1C0FDB6D4(&qword_1EBE930F8, &qword_1EBE930E0, &qword_1C12B21A8, MEMORY[0x1E6981870]);
  sub_1C1264D50();
  (*(v7 + 8))(v10, v29);
  sub_1C0FD1A5C(v14, &qword_1EBE930E0, &qword_1C12B21A8);
  v22 = v28;
  sub_1C1262FF0();
  v33 = v11;
  v34 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v31;
  v24 = v27;
  sub_1C1264B20();
  (*(v30 + 8))(v22, v32);
  (*(v16 + 8))(v19, v24);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93100, &qword_1C12B21C0);
  *(v23 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1C10BF48C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93110, &unk_1C12A6B00);
  MEMORY[0x1EEE9AC00](v49);
  v4 = &v47 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93118, &qword_1C12B2358);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v47 - v9;
  v10 = sub_1C1265960();
  v53 = v11;
  v54 = v10;
  sub_1C10BF924(a1, v58);
  memcpy(v59, v58, sizeof(v59));
  memcpy(v60, v58, sizeof(v60));
  sub_1C0FDB800(v59, v57, &unk_1EBE93120, &qword_1C12B2360);
  sub_1C0FD1A5C(v60, &unk_1EBE93120, &qword_1C12B2360);
  memcpy(v61, v59, sizeof(v61));
  if (a1[28])
  {
    v12 = a1[27];
    v13 = a1[28];
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v58[0] = v12;
  v58[1] = v13;
  sub_1C0FDB9AC();

  v14 = sub_1C12648F0();
  v16 = v15;
  v18 = v17;
  sub_1C1264510();
  v19 = sub_1C1264870();
  v21 = v20;
  v23 = v22;
  v48 = v24;

  sub_1C0FDB8E8(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  v26 = &v4[*(v49 + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93130, &qword_1C12AEDC0) + 28);
  v28 = *MEMORY[0x1E6980FA8];
  v29 = sub_1C1264830();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  *v4 = v19;
  *(v4 + 1) = v21;
  v4[16] = v23 & 1;
  *(v4 + 3) = v48;
  *(v4 + 4) = KeyPath;
  *(v4 + 5) = 2;
  v4[48] = 0;
  LOBYTE(KeyPath) = sub_1C1264470();
  sub_1C12628A0();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v50;
  sub_1C0FDB71C(v4, v50, &qword_1EBE93110, &unk_1C12A6B00);
  v39 = v52;
  v40 = v38 + *(v51 + 36);
  *v40 = KeyPath;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  sub_1C0FDB71C(v38, v39, &qword_1EBE93118, &qword_1C12B2358);
  v41 = v55;
  sub_1C0FDB800(v39, v55, &qword_1EBE93118, &qword_1C12B2358);
  v43 = v53;
  v42 = v54;
  v57[0] = v54;
  v57[1] = v53;
  memcpy(&v57[2], v61, 0xA0uLL);
  v44 = v56;
  memcpy(v56, v57, 0xB0uLL);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93138, &qword_1C12B23D0);
  sub_1C0FDB800(v41, v44 + *(v45 + 48), &qword_1EBE93118, &qword_1C12B2358);
  sub_1C0FDB800(v57, v58, &qword_1EBE93140, &qword_1C12B23D8);
  sub_1C0FD1A5C(v39, &qword_1EBE93118, &qword_1C12B2358);
  sub_1C0FD1A5C(v41, &qword_1EBE93118, &qword_1C12B2358);
  v58[0] = v42;
  v58[1] = v43;
  memcpy(&v58[2], v61, 0xA0uLL);
  return sub_1C0FD1A5C(v58, &qword_1EBE93140, &qword_1C12B23D8);
}

double sub_1C10BF924@<D0>(void *a1@<X0>, uint64_t a7@<X8>)
{
  v9 = sub_1C12659A0();
  v11 = v10;
  v12 = swift_allocObject();
  memcpy((v12 + 16), a1, 0x140uLL);
  v13 = a1[39];
  sub_1C10C0E7C(a1, __src);
  v14 = sub_1C1263AA0();
  v16[0] = 1;
  sub_1C10C0A80(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v21, __src, sizeof(v21));
  sub_1C0FDB800(__dst, v22, &qword_1EBE93148, &qword_1C12B23E0);
  sub_1C0FD1A5C(v21, &qword_1EBE93148, &qword_1C12B23E0);
  memcpy(&v19[7], __dst, 0x58uLL);
  v17[118] = 0;
  v22[0] = v14;
  v22[1] = 0;
  LOBYTE(v22[2]) = 1;
  memcpy(&v22[2] + 1, v19, 0x5FuLL);
  memcpy(&v17[6], v22, 0x70uLL);
  *a7 = v9;
  *(a7 + 8) = v11;
  *(a7 + 16) = sub_1C10C0E74;
  *(a7 + 24) = v12;
  *(a7 + 32) = v13;
  *(a7 + 40) = 0;
  *(a7 + 41) = 1;
  memcpy((a7 + 42), v17, 0x76uLL);
  __src[0] = v14;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v19, 0x5FuLL);

  sub_1C0FDB800(v22, v16, &unk_1EBE93150, &qword_1C12B23E8);
  sub_1C0FD1A5C(__src, &unk_1EBE93150, &qword_1C12B23E8);

  return result;
}

void sub_1C10BFB08(uint64_t a1, void *a2)
{
  v4 = sub_1C1262D60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = *(a2[30] + 16);
  if (v7)
  {
    v11[40] = 0;
    v11[41] = v7 - 1;
    swift_getKeyPath();
    (*(v5 + 16))(&v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v8 = (*(v5 + 80) + 336) & ~*(v5 + 80);
    v9 = swift_allocObject();
    memcpy((v9 + 16), a2, 0x140uLL);
    (*(v5 + 32))(v9 + v8, &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    sub_1C10C0E7C(a2, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91428, &qword_1C12B2440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93160, &qword_1C12B2448);
    sub_1C10C0F38();
    sub_1C10C0FC4();
    sub_1C1265680();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C10BFCF8@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a3;
  v9 = sub_1C1262D60();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v100 = v11;
  v102 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v12);
  v90 = (&v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931A0, &qword_1C12B2460);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v83 - v14;
  v15 = sub_1C12637E0();
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931A8, &qword_1C12B2468);
  MEMORY[0x1EEE9AC00](v17);
  *&v103 = &v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B0, &unk_1C12B2470);
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v83 - v20;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93198, &qword_1C12B2458);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v83 - v21;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93188, &qword_1C12B2450);
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v83 - v22;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93160, &qword_1C12B2448);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v83 - v23;
  v24 = *a1;
  memcpy(v115, a2, 0x140uLL);
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v86 = v10;
  v87 = v9;
  v25 = *(a2[30] + 16);
  if (v25 <= v24)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  v84 = v19;
  v85 = a4;
  v26 = v12;
  v105 = a2;
  v27 = swift_unknownObjectRetain();
  v28 = v103;
  sub_1C10BEDD8(v27);
  swift_unknownObjectRelease();
  *v115 = *(v105 + 16);
  v4 = v105[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265420();
  v5 = v24 / (v25 - 1);
  memcpy(v115, v105, 0x140uLL);
  sub_1C10BF054();
  sub_1C12659A0();
  v29 = v105;
  sub_1C1262C80();
  v30 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931C0, &qword_1C12B2480) + 36));
  v31 = *&v115[43];
  *v30 = *&v115[41];
  v30[1] = v31;
  v30[2] = *&v115[45];
  *(v28 + *(v17 + 36)) = (v25 - v24);
  memcpy(v116, v29, 0xD1uLL);
  memcpy(v117, v29, sizeof(v117));
  memcpy(v118, v29, 0xD1uLL);
  if (sub_1C100D688(v118) == 1)
  {
    nullsub_1();
    memcpy(v115, v117, 0xD1uLL);
    nullsub_1();
    memcpy(v114, v32, sizeof(v114));
    sub_1C0FDB800(v116, v113, &qword_1EBE92A28, &qword_1C12B0238);
  }

  else
  {
    nullsub_1();
    memcpy(v115, v117, 0xD1uLL);
    nullsub_1();
    sub_1C0FDB800(v116, v113, &qword_1EBE92A28, &qword_1C12B0238);
    sub_1C1266420();
    v33 = sub_1C1264410();
    sub_1C1262620();

    v34 = v93;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v116, &qword_1EBE92A28, &qword_1C12B0238);
    (*(v94 + 8))(v34, v95);
  }

  v12 = v26;
  memcpy(v108, v114, sizeof(v108));
  memcpy(v113, &v114[40], 0xA8uLL);
  sub_1C100D690(v108, v115);
  if (qword_1EDE82B00 != -1)
  {
    goto LABEL_13;
  }

LABEL_7:
  v35 = qword_1EDE82B08;
  v36 = qword_1EDE82B10;
  v37 = xmmword_1EDE82B18;
  v38 = qword_1EDE82B28;

  sub_1C100C7D0(v108);

  v109[0] = v35;
  v109[1] = v36;
  v110 = v37;
  v111 = v38;
  memcpy(v112, v113, sizeof(v112));
  v39 = v89;
  v40 = &v89[*(v88 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C12633B0();
  *v40 = swift_getKeyPath();
  v41 = v103;
  sub_1C0FDB800(v103, v39, &qword_1EBE931A8, &qword_1C12B2468);
  v42 = *(v12 + 20);
  v43 = *MEMORY[0x1E697F468];
  v44 = sub_1C12639D0();
  v45 = v90;
  (*(*(v44 - 8) + 104))(v90 + v42, v43, v44);
  *v45 = v35;
  v45[1] = v35;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931C8, &qword_1C12B24B8);
  v47 = v104;
  v48 = v104 + *(v46 + 36);
  v49 = MEMORY[0x1E697EAF0];
  sub_1C10C1254(v45, v48, MEMORY[0x1E697EAF0]);
  *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91C40, &unk_1C12A7010) + 36)) = 256;
  sub_1C0FDB800(v39, v47, &qword_1EBE931A0, &qword_1C12B2460);
  v50 = sub_1C12659A0();
  v52 = v51;
  v53 = v47 + *(v84 + 36);
  sub_1C10C1254(v45, v53, v49);

  sub_1C100C7D0(v109);
  v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91748, &qword_1C12AA0A8) + 36));
  *v54 = v36;
  v54[1] = v37;
  v54[2] = 0;
  v54[3] = 0;
  v55 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE931D0, &unk_1C12AA0B0) + 36));
  *v55 = *(&v37 + 1);
  v55[1] = v38;
  sub_1C0FD1A5C(v39, &qword_1EBE931A0, &qword_1C12B2460);
  sub_1C0FD1A5C(v41, &qword_1EBE931A8, &qword_1C12B2468);
  v56 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE92ED0, &unk_1C12A8E80) + 36));
  *v56 = v50;
  v56[1] = v52;
  sub_1C10C12B4(v45, v49);
  memcpy(v113, v117, 0xD1uLL);
  if (sub_1C100D688(v113) == 1)
  {
    nullsub_1();
    memcpy(v115, v117, 0xD1uLL);
    nullsub_1();
    memcpy(v107, v57, sizeof(v107));
    sub_1C0FDB800(v116, v106, &qword_1EBE92A28, &qword_1C12B0238);
  }

  else
  {
    nullsub_1();
    memcpy(v115, v117, 0xD1uLL);
    nullsub_1();
    sub_1C0FDB800(v116, v106, &qword_1EBE92A28, &qword_1C12B0238);
    sub_1C1266420();
    v58 = sub_1C1264410();
    sub_1C1262620();

    v59 = v93;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v116, &qword_1EBE92A28, &qword_1C12B0238);
    (*(v94 + 8))(v59, v95);
  }

  v60 = v85;
  v61 = v86;
  v62 = v87;
  memcpy(v106, v107, sizeof(v106));
  v63 = v106[0];
  v103 = v106[1];
  v64 = *&v106[2];

  sub_1C100C7D0(v106);
  v65 = v104;
  v66 = v91;
  sub_1C0FDB800(v104, v91, &qword_1EBE931B0, &unk_1C12B2470);
  v67 = v92;
  *(v66 + *(v92 + 36)) = 2;
  *(v66 + v67[10]) = 2;
  v68 = v66 + v67[11];
  *v68 = v63;
  *(v68 + 16) = v103;
  *(v68 + 32) = v64;
  *(v66 + v67[12]) = 0;
  *(v66 + v67[13]) = 0;
  v69 = v66 + v67[14];
  *v69 = swift_getKeyPath();
  *(v69 + 32) = 0;
  v70 = v66 + v67[15];
  *v70 = swift_getKeyPath();
  *(v70 + 8) = 0u;
  *(v70 + 24) = 0u;
  *(v70 + 33) = 0u;
  v71 = v66 + v67[16];
  *v71 = swift_getKeyPath();
  *(v71 + 8) = 0;
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();
  sub_1C12628D0();
  sub_1C0FD1A5C(v65, &qword_1EBE931B0, &unk_1C12B2470);
  v72 = v5 * v4;
  v73 = v105;
  v74 = (1.0 - v5) * v105[36];
  v75 = v99;
  sub_1C0FDB71C(v66, v99, &qword_1EBE93198, &qword_1C12B2458);
  v76 = (v75 + *(v96 + 36));
  *v76 = v72;
  v76[1] = v74;
  v77 = v102;
  (*(v61 + 16))(v102, v101, v62);
  v78 = (*(v61 + 80) + 336) & ~*(v61 + 80);
  v79 = swift_allocObject();
  memcpy((v79 + 16), v73, 0x140uLL);
  (*(v61 + 32))(v79 + v78, v77, v62);
  v80 = v98;
  sub_1C0FDB71C(v75, v98, &qword_1EBE93188, &qword_1C12B2450);
  v81 = (v80 + *(v97 + 36));
  *v81 = sub_1C10C11F0;
  v81[1] = v79;
  v81[2] = 0;
  v81[3] = 0;
  sub_1C0FDB71C(v80, v60, &qword_1EBE93160, &qword_1C12B2448);
  return sub_1C10C0E7C(v73, v115);
}

double sub_1C10C09EC(uint64_t a1)
{
  sub_1C1262D40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8, &qword_1C12BC0A0);
  sub_1C1265430();
  sub_1C1262D40();
  sub_1C1265430();
  return result;
}

double sub_1C10C0A80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDE833C0 != -1)
  {
    swift_once();
  }

  v15 = xmmword_1C12A4AC0;
  v16 = 262912;
  v17 = 0;
  v18 = 65280;

  sub_1C12192C4(&v15);

  v4 = sub_1C12652F0();
  v5 = sub_1C1265190();
  KeyPath = swift_getKeyPath();
  v7 = sub_1C1264470();
  sub_1C12628A0();
  LOBYTE(v15) = 0;
  v8 = *(a1 + 288);
  v9 = -0.0 / (*(*(a1 + 240) + 16) - 1) + 1.0;
  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
  *(a2 + 64) = 0;
  result = -(v8 * v9);
  *(a2 + 72) = 0;
  *(a2 + 80) = result;
  return result;
}

uint64_t sub_1C10C0BD4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 240);
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

uint64_t sub_1C10C0C14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 240) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C10C0CB8()
{
  result = qword_1EBE93108;
  if (!qword_1EBE93108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93100, &qword_1C12B21C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE930E8, &qword_1C12B21B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE930E0, &qword_1C12B21A8);
    sub_1C0FDB6D4(&qword_1EBE930F8, &qword_1EBE930E0, &qword_1C12B21A8, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&unk_1EDE7BB80, &qword_1EBE90C08, &unk_1C12B0EB0, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93108);
  }

  return result;
}

double sub_1C10C0E24@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosDetailsNavigationDisplayedMediaTracker();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 57) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  *a1 = v2;
  return result;
}

uint64_t sub_1C10C0EB4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1C1262D60() - 8);
  v6 = v2 + ((*(v5 + 80) + 336) & ~*(v5 + 80));

  return sub_1C10BFCF8(a1, (v2 + 16), v6, a2);
}

unint64_t sub_1C10C0F38()
{
  result = qword_1EBE93168;
  if (!qword_1EBE93168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91428, &qword_1C12B2440);
    sub_1C100F024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93168);
  }

  return result;
}

unint64_t sub_1C10C0FC4()
{
  result = qword_1EBE93178;
  if (!qword_1EBE93178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93160, &qword_1C12B2448);
    sub_1C10C1050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93178);
  }

  return result;
}

unint64_t sub_1C10C1050()
{
  result = qword_1EBE93180;
  if (!qword_1EBE93180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93188, &qword_1C12B2450);
    sub_1C0FDB6D4(&qword_1EBE93190, &qword_1EBE93198, &qword_1C12B2458, &unk_1C12AF200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93180);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = sub_1C1262D60();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 336) & ~*(v2 + 80);
  OUTLINED_FUNCTION_2_28(*(v0 + 16), *(v0 + 24));

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

double sub_1C10C11F0()
{
  sub_1C1262D60();

  return sub_1C10C09EC(v0 + 16);
}

uint64_t sub_1C10C1254(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C10C12B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t PhotosReadableWidthView.init(readableWidthEnabled:maxWidth:content:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *a7 = a1;
  if ((a1 & 1) == 0)
  {
    a2 = 0;
  }

  v9 = 104.0;
  if ((a1 & 1 & a3) == 0)
  {
    v9 = 0.0;
  }

  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1 | ((a1 & 1) == 0);
  *(a7 + 24) = v9;
  type metadata accessor for PhotosReadableWidthView(0, a5, a6, a4);
  return a4();
}

uint64_t PhotosReadableWidthView.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_1C1263190();
  OUTLINED_FUNCTION_2_29(v4, MEMORY[0x1E6981840], v4);
  v5 = sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  v6 = sub_1C12654C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-v11];
  v13 = *(a1 + 24);
  v17 = v3;
  v18 = v13;
  v19 = v1;
  sub_1C1012734(v5);
  sub_1C12654B0();
  OUTLINED_FUNCTION_1_11();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_1C0FDBA4C();
  return (v14)(v12, v6);
}

uint64_t sub_1C10C1588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = sub_1C1263190();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v24 = *(a1 + 24);
  type metadata accessor for PhotosReadableWidthView(0, a2, a3, v14);
  sub_1C10A0734(a2, a3, v15, v16, v17, v18);
  sub_1C1264EA0();
  v34[3] = a3;
  v34[4] = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v20 = *(v8 + 8);
  v20(v10, v7);
  v21 = v24;
  v32 = v24;
  v33 = 0;
  v34[0] = &v32;
  (*(v8 + 16))(v10, v13, v7);
  v30 = v21;
  v31 = 0;
  v34[1] = v10;
  v34[2] = &v30;
  v29[0] = MEMORY[0x1E6981840];
  v29[1] = v7;
  v29[2] = MEMORY[0x1E6981840];
  v26 = MEMORY[0x1E6981838];
  v27 = WitnessTable;
  v28 = MEMORY[0x1E6981838];
  sub_1C119EE80(v34, 3, v29);
  v20(v13, v7);
  return (v20)(v10, v7);
}

void sub_1C10C1850(uint64_t a1)
{
  sub_1C10C1CC4();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C10C18F0(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 32) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xFE)
      {
        return __swift_getEnumTagSinglePayload(((a1 & 0xFFFFFFFFFFFFFFF8) + v7 + 32) & ~v7, v6, v4);
      }

      v16 = *a1;
      v17 = v16 >= 2;
      v18 = (v16 + 2147483646) & 0x7FFFFFFF;
      if (v17)
      {
        return (v18 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1C10C1A7C(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 32) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v8 > 0xFE)
          {
            v21 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v10 + 32) & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else
          {
            *a1 = a2 + 1;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          *(a1 + 2) = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v17;
        break;
      case 2:
        *(a1 + v11) = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1C10C1CC4()
{
  if (!qword_1EDE7B4C0)
  {
    v0 = sub_1C1266790();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE7B4C0);
    }
  }
}

uint64_t PhotosCellShape.init(inset:cornerRadius:fittingAspectRatio:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = result;
  *(a3 + 24) = a2 & 1;
  return result;
}

uint64_t View.photosContentShape(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1263420();
  OUTLINED_FUNCTION_3();
  (*(v14 + 16))(v13, a1);
  v15 = v10[6];
  v26[0] = swift_getKeyPath();
  sub_1C0FFCFE4(v26);
  memcpy(&v13[v15], v26, 0xD1uLL);
  v16 = &v13[v10[7]];
  v21[1] = 0;
  v22 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B58, qword_1C12A6D00);
  sub_1C1265410();
  v17 = v24;
  v18 = v25;
  *v16 = v23;
  v16[8] = v17;
  *(v16 + 2) = v18;
  v19 = &v13[v10[5]];
  *v19 = a2;
  *(v19 + 1) = a3;

  MEMORY[0x1C68EE920](v13, a4, v10, a5);
  return sub_1C10C1FA8(v13);
}

uint64_t type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(uint64_t a1)
{
  result = qword_1EDE78E88;
  if (!qword_1EDE78E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C10C1F40(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  sub_1C100D690(__dst, &v3);
  return EnvironmentValues.photosCellSpecs.setter(__srca);
}

uint64_t sub_1C10C1FA8(uint64_t a1)
{
  v2 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhotosCellShape.fittingAspectRatio.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

double PhotosCellShape.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_1C12639D0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v16 = *(v5 + 16);
  v17 = *(v5 + 24);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  v25 = CGRectInset(v24, v15, v15);
  if ((v17 & 1) == 0)
  {
    v25.origin.x = MEMORY[0x1C68F0CD0](v16, a4, a5, *&v25.size.height);
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E697F468], v11, v25.origin, *&v25.origin.y, v25.size, *&v25.size.height);
  sub_1C1264770();
  result = *&v21;
  v19 = v22;
  *a1 = v21;
  *(a1 + 16) = v19;
  *(a1 + 32) = v23;
  return result;
}

uint64_t PhotosCellShape.layoutDirectionBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6980210];
  sub_1C1263F90();
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

double PhotosCellShape.animatableData.getter()
{
  sub_1C10C22F4();
  sub_1C10C2348();
  sub_1C1262810();
  return v1;
}

unint64_t sub_1C10C22F4()
{
  result = qword_1EBE93278;
  if (!qword_1EBE93278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93278);
  }

  return result;
}

unint64_t sub_1C10C2348()
{
  result = qword_1EBE93280;
  if (!qword_1EBE93280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93280);
  }

  return result;
}

uint64_t PhotosCellShape.animatableData.setter()
{
  sub_1C10C22F4();
  sub_1C10C2348();
  return sub_1C1262820();
}

uint64_t (*PhotosCellShape.animatableData.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v3[1] = *(v1 + 8);
  v3[3] = sub_1C10C22F4();
  v3[4] = sub_1C10C2348();
  sub_1C1262810();
  return sub_1C10C24CC;
}

void sub_1C10C24CC(void **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  sub_1C1262820();

  free(v1);
}

double sub_1C10C2524@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  PhotosCellShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_1C10C25CC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PhotosCellShape.animatableData.modify(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C10C262C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10C3468();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1C10C2690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10C3468();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1C10C26F4(uint64_t a1)
{
  v2 = sub_1C10C3468();

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t static PhotosCellPreviewShapeAspectRatioPreferenceKey.defaultValue.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  qword_1EBE93268 = a1;
  byte_1EBE93270 = a2 & 1;
  return result;
}

uint64_t sub_1C10C283C@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v3 = byte_1EBE93270;
  *a1 = qword_1EBE93268;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1C10C2890(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = swift_beginAccess();
  qword_1EBE93268 = v1;
  byte_1EBE93270 = v2;
  return result;
}

void *sub_1C10C28E8(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*(result + 8) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t static PhotosCellPreviewShapeAspectRatioPreferenceKey.reduce(value:nextValue:)(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(a1 + 8) == 1)
  {
    result = a2();
  }

  else
  {
    v4 = 0;
    result = *a1;
  }

  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C10C299C()
{
  result = qword_1EDE7E948[0];
  if (!qword_1EDE7E948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7E948);
  }

  return result;
}

unint64_t sub_1C10C29F4()
{
  result = qword_1EDE7E940;
  if (!qword_1EDE7E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7E940);
  }

  return result;
}

uint64_t sub_1C10C2A90@<X0>(uint64_t a1@<X8>)
{
  result = static PhotosCellPreviewShapeAspectRatioPreferenceKey.defaultValue.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C10C2AC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C10C2AE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 25) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCellPreviewShapeAspectRatioPreferenceKey(_BYTE *result, int a2, int a3)
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

void sub_1C10C2BF8(uint64_t a1)
{
  sub_1C1263420();
  if (v1 <= 0x3F)
  {
    sub_1C1007F88();
    if (v2 <= 0x3F)
    {
      sub_1C107032C();
      if (v3 <= 0x3F)
      {
        sub_1C10C2CAC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C10C2CAC(uint64_t a1)
{
  if (!qword_1EDE76C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B58, qword_1C12A6D00);
    v1 = sub_1C1265450();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE76C90);
    }
  }
}

uint64_t sub_1C10C2D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a1;
  v5 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(0);
  v43 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v44 = v6;
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C12637E0();
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93298, &unk_1C12B2900);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = v5[6];
  v13 = *(v3 + v5[5]);
  memcpy(v54, (v3 + v12), 0xD1uLL);
  memcpy(v55, (v3 + v12), 0xD1uLL);
  if (sub_1C100D688(v55) == 1)
  {
    nullsub_1();
    memcpy(v51, v54, 0xD1uLL);
    nullsub_1();
    memcpy(v53, v14, sizeof(v53));
    memcpy(v52, v54, 0xD1uLL);
    nullsub_1();
    sub_1C100D690(v15, &v47);
  }

  else
  {
    nullsub_1();
    memcpy(v51, v54, 0xD1uLL);
    nullsub_1();
    v40 = *v16;
    memcpy(v52, v54, 0xD1uLL);
    nullsub_1();

    sub_1C1266420();
    v39 = v7;
    v17 = a2;
    v18 = sub_1C1264410();
    sub_1C1262620();

    a2 = v17;
    v19 = v41;
    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C10AFFB4(v54);
    (*(v42 + 8))(v19, v39);
  }

  memcpy(v51, v53, 0xD0uLL);
  v20 = v3 + v5[7];
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v52[0] = v21;
  LOBYTE(v52[1]) = v22;
  v52[2] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B78, &qword_1C12B2910);
  sub_1C1265420();
  v13(&v47, v51, v47, v48);
  memcpy(v52, v51, 0xD0uLL);
  sub_1C100C7D0(v52);
  v24 = v47;
  v25 = v48;
  v26 = v49;
  v27 = v50;
  v28 = &v11[*(v9 + 36)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932A0, &qword_1C12B2918) + 40);
  v30 = sub_1C1263420();
  (*(*(v30 - 8) + 16))(&v28[v29], v3, v30);
  *v28 = v24;
  *(v28 + 1) = v25;
  *(v28 + 2) = v26;
  v28[24] = v27;
  v28[25] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932A8, &qword_1C12B2920);
  (*(*(v31 - 8) + 16))(v11, v46, v31);
  v32 = v3;
  v33 = v45;
  sub_1C10C32C0(v32, v45);
  v34 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v35 = swift_allocObject();
  sub_1C10C3324(v33, v35 + v34);
  sub_1C10C33F8(v11, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932B0, &qword_1C12B2928);
  v37 = (a2 + *(result + 36));
  *v37 = sub_1C10C3388;
  v37[1] = v35;
  return result;
}

double sub_1C10C3230(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90B78, &qword_1C12B2910);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C10C32C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10C3324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1C10C3388(uint64_t *a1)
{
  v3 = *(type metadata accessor for PhotosCellPreviewShapeAspectRatioModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C10C3230(a1, v4);
}

uint64_t sub_1C10C33F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93298, &unk_1C12B2900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10C3468()
{
  result = qword_1EBE932B8;
  if (!qword_1EBE932B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE932B8);
  }

  return result;
}

unint64_t sub_1C10C34BC()
{
  result = qword_1EDE77248;
  if (!qword_1EDE77248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE932B0, &qword_1C12B2928);
    sub_1C10C3574();
    sub_1C0FDB6D4(&qword_1EDE7BA08, &qword_1EBE932C0, &qword_1C12B2930, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77248);
  }

  return result;
}

unint64_t sub_1C10C3574()
{
  result = qword_1EDE77410;
  if (!qword_1EDE77410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93298, &unk_1C12B2900);
    sub_1C0FDB6D4(&qword_1EDE76DD0, &qword_1EBE932A8, &qword_1C12B2920, MEMORY[0x1E697FDF8]);
    sub_1C0FDB6D4(&unk_1EDE7BA40, &qword_1EBE932A0, &qword_1C12B2918, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77410);
  }

  return result;
}

unint64_t sub_1C10C3678()
{
  result = qword_1EDE81300[0];
  if (!qword_1EDE81300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE81300);
  }

  return result;
}

uint64_t EnvironmentValues.photosCellSpecs.getter()
{
  sub_1C10C373C();

  return sub_1C12637F0();
}

unint64_t sub_1C10C373C()
{
  result = qword_1EDE82A10;
  if (!qword_1EDE82A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82A10);
  }

  return result;
}

uint64_t EnvironmentValues.photosCellSpecs.setter(void *__src)
{
  memcpy(v2, __src, sizeof(v2));
  sub_1C10C373C();
  return sub_1C1263800();
}

void sub_1C10C37D8(uint64_t a1, char a2)
{
  v3 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  v10 = *(v2 + 24) >> 62;
  if (!v10)
  {

    goto LABEL_8;
  }

  if (v10 == 1)
  {
    (*(v5 + 104))(v9, *MEMORY[0x1E697DBB8], v3);

    sub_1C12629D0();
    v11 = OUTLINED_FUNCTION_16_14();
    v12(v11);

LABEL_8:
    OUTLINED_FUNCTION_22_0();
    return;
  }

  OUTLINED_FUNCTION_22_0();

  sub_1C1265170();
}

unint64_t sub_1C10C39B0()
{
  result = qword_1EDE822B8;
  if (!qword_1EDE822B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE822B8);
  }

  return result;
}

void PhotosCellSpecs.backgroundFillColor(for:isTargeted:)(uint64_t a1, char a2)
{
  v4 = sub_1C12629F0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = *(v2 + 152);
  if (*(v2 + 160) & 1) != 0 || (a2)
  {
    if (!(v10 >> 62))
    {

      goto LABEL_10;
    }

    if (v10 >> 62 == 1)
    {
      (*(v6 + 104))(v9 - v8, *MEMORY[0x1E697DBB8], v4);
      v11 = OUTLINED_FUNCTION_2_30();
      sub_1C1012620(v11, v12, v13, v14);

      sub_1C12629D0();
      v15 = OUTLINED_FUNCTION_15_18();
      v16(v15);

      v17 = OUTLINED_FUNCTION_2_30();
      sub_1C1001C84(v17, v18, v19, v20);
LABEL_10:
      OUTLINED_FUNCTION_22_0();
      return;
    }
  }

  OUTLINED_FUNCTION_22_0();

  sub_1C1265170();
}

__n128 PhotosCellSpecs.withoutBorders.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_18_16(a1, a2, a3, a4, a5, a6, a7, a8, v13, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v16[18], v16[19], v16[20], v16[21], v16[22], v16[23], v16[24], v16[25]);
  OUTLINED_FUNCTION_11_15();
  sub_1C100D690(v17, v16);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDE82B08;
  v10 = qword_1EDE82B10;
  v14 = xmmword_1EDE82B18;
  v11 = qword_1EDE82B28;

  *v8 = v9;
  *(v8 + 8) = v10;
  result = v14;
  *(v8 + 16) = v14;
  *(v8 + 32) = v11;
  return result;
}

double View.cellStyle(for:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 32);
  v9[0] = *a1;
  v9[1] = v6;
  v10 = *(a1 + 16);
  v11 = v7;

  View.photosBorders(_:)(v9, a3, a4);

  return result;
}

__n128 PhotosCellSpecs.init(borders:padding:thumbnailPadding:height:interItemSpacing:dividerPadding:cornerRadiusForGroup:shadowForGroup:backgroundColor:shouldFillBackground:shouldUseAXLayout:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, double a14@<D7>, __int128 a15, uint64_t a16, uint64_t a17)
{
  v17 = *(a1 + 8);
  v18 = *(a1 + 32);
  v19 = *a2;
  v20 = a2[3];
  *a6 = *a1;
  *(a6 + 8) = v17;
  *(a6 + 16) = *(a1 + 16);
  *(a6 + 32) = v18;
  *(a6 + 40) = a7;
  *(a6 + 48) = a8;
  *(a6 + 56) = a9;
  *(a6 + 64) = a10;
  *(a6 + 72) = a11;
  *(a6 + 80) = a12;
  *(a6 + 88) = a13;
  *(a6 + 96) = a14;
  *(a6 + 104) = a15;
  *(a6 + 120) = a16;
  *(a6 + 168) = a17;
  *(a6 + 176) = v19;
  *(a6 + 184) = *(a2 + 1);
  *(a6 + 200) = v20;
  result = *a3;
  v22 = *(a3 + 16);
  *(a6 + 128) = *a3;
  *(a6 + 144) = v22;
  *(a6 + 160) = a4;
  *(a6 + 161) = a5;
  return result;
}

double PhotosCellSpecs.borders.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;

  return result;
}

__n128 PhotosCellSpecs.borders.setter(__n128 *a1)
{
  v2 = a1->n128_u64[0];
  v3 = a1->n128_u64[1];
  v6 = a1[1];
  v4 = a1[2].n128_u64[0];

  v1->n128_u64[0] = v2;
  v1->n128_u64[1] = v3;
  result = v6;
  v1[1] = v6;
  v1[2].n128_u64[0] = v4;
  return result;
}

void PhotosCellSpecs.padding.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

void PhotosCellSpecs.thumbnailPadding.setter(double a1, double a2, double a3, double a4)
{
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = a3;
  v4[12] = a4;
}

uint64_t PhotosCellSpecs.backgroundColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1C1012620(v2, v3, v4, v5);
}

__n128 PhotosCellSpecs.backgroundColor.setter(uint64_t a1)
{
  sub_1C1001C84(*(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v4;
  return result;
}

uint64_t PhotosCellSpecs.shadowForGroup.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 200);
  *a1 = *(v1 + 176);
  return OUTLINED_FUNCTION_5_21(a1, v2, *(v1 + 184));
}

__n128 PhotosCellSpecs.shadowForGroup.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_13_15(a1);

  *(v2 + 176) = v1;
  result = v5;
  *(v2 + 184) = v5;
  *(v2 + 200) = v3;
  return result;
}

void static PhotosCellSpecs.BackgroundColor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a2[3];
  v3 = a1[3] >> 62;
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 >> 62 == 1)
      {
        v4 = OUTLINED_FUNCTION_3_27();
        sub_1C1012620(v4, v5, v6, v7);
        v8 = OUTLINED_FUNCTION_0_34();
        sub_1C1012620(v8, v9, v10, v11);
        if (sub_1C1265100() & 1) != 0 && (sub_1C1265100() & 1) != 0 && (sub_1C1265100())
        {
          goto LABEL_10;
        }

LABEL_19:
        v38 = OUTLINED_FUNCTION_0_34();
        sub_1C1001C84(v38, v39, v40, v41);
        v42 = OUTLINED_FUNCTION_3_27();
        sub_1C1001C84(v42, v43, v44, v45);
        goto LABEL_20;
      }
    }

    else if (v2 >> 62 == 2 && (a2[1] | *a2 | a2[2]) == 0 && v2 == 0x8000000000000000)
    {
      v46 = OUTLINED_FUNCTION_0_34();
      sub_1C1001C84(v46, v47, v48, v49);
      sub_1C1001C84(0, 0, 0, 0x8000000000000000);
      goto LABEL_20;
    }

LABEL_18:
    v30 = OUTLINED_FUNCTION_3_27();
    sub_1C1012620(v30, v31, v32, v33);
    v34 = OUTLINED_FUNCTION_0_34();
    sub_1C1012620(v34, v35, v36, v37);
    goto LABEL_19;
  }

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  v12 = OUTLINED_FUNCTION_3_27();
  sub_1C1012620(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_0_34();
  sub_1C1012620(v16, v17, v18, v19);
LABEL_10:
  sub_1C1265100();
  v20 = OUTLINED_FUNCTION_0_34();
  sub_1C1001C84(v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_3_27();
  sub_1C1001C84(v24, v25, v26, v27);
LABEL_20:
  OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosCellSpecs.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v72[5] = v11;
  v72[6] = v10;
  v72[7] = v9;
  v72[8] = v8;
  v72[9] = v7;
  v72[10] = v6;
  v72[11] = v5;
  v72[12] = v4;
  v72[23] = v2;
  v72[24] = v3;
  v69 = *(a1 + 112);
  v70 = *(a1 + 104);
  v68 = *(a1 + 120);
  v12 = *(a1 + 128);
  v13 = *(a1 + 136);
  v14 = *(a1 + 144);
  v64 = *(a1 + 152);
  v63 = *(a1 + 160);
  v61 = *(a1 + 161);
  v59 = *(a1 + 168);
  v55 = *(a1 + 184);
  v56 = *(a1 + 192);
  v57 = *(a1 + 200);
  v66 = *(a2 + 112);
  v67 = *(a2 + 104);
  v65 = *(a2 + 120);
  v15 = *(a2 + 128);
  v16 = *(a2 + 136);
  v17 = *(a2 + 144);
  v18 = *(a2 + 152);
  v62 = *(a2 + 160);
  v60 = *(a2 + 161);
  v58 = *(a2 + 168);
  v52 = *(a2 + 184);
  v53 = *(a2 + 192);
  v54 = *(a2 + 200);
  v19 = *(a2 + 32);
  v21 = *(a2 + 16);
  v20 = *(a2 + 24);
  v22 = *(a1 + 32);
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);

  v25 = sub_1C1265100();

  result = 0;
  if (v25)
  {
    v27 = v24 == v21 && v23 == v20;
    if (v27 && v22 == v19)
    {
      if (sub_1C1262890())
      {
        v29 = sub_1C1262890();
        result = 0;
        if (v29)
        {
          v30 = v70 == v67 && v69 == v66;
          if (v30 && v68 == v65)
          {
            v72[0] = v12;
            v72[1] = v13;
            v72[2] = v14;
            v72[3] = v64;
            v71[0] = v15;
            v71[1] = v16;
            v71[2] = v17;
            v71[3] = v18;
            v32 = OUTLINED_FUNCTION_17_16();
            sub_1C1012620(v32, v33, v34, v35);
            v36 = OUTLINED_FUNCTION_14_15();
            sub_1C1012620(v36, v37, v38, v39);
            static PhotosCellSpecs.BackgroundColor.== infix(_:_:)(v72, v71);
            v41 = v40;
            v42 = OUTLINED_FUNCTION_14_15();
            sub_1C1001C84(v42, v43, v44, v45);
            v46 = OUTLINED_FUNCTION_17_16();
            sub_1C1001C84(v46, v47, v48, v49);
            result = 0;
            if ((v41 & 1) != 0 && v63 == v62 && v61 == v60 && v59 == v58)
            {

              v50 = sub_1C1265100();

              v51 = v50 & (v55 == v52);
              if (v56 != v53)
              {
                v51 = 0;
              }

              if (v57 == v54)
              {
                return v51;
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

double sub_1C10C4520()
{
  if (qword_1EDE82B50 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDE82B58;
  v1 = qword_1EDE82B60;
  v2 = unk_1EDE82B68;
  v3 = qword_1EDE82B70;
  v4 = qword_1EDE82B78;

  if (v4 != -1)
  {
    swift_once();
  }

  qword_1EDE82A20 = 0x402E000000000000;
  *algn_1EDE82A28 = v0;
  qword_1EDE82A30 = v1;
  unk_1EDE82A38 = v2;
  qword_1EDE82A40 = v3;
  __asm { FMOV            V1.2D, #12.0 }

  unk_1EDE82A48 = _Q1;
  unk_1EDE82A58 = _Q1;
  __asm { FMOV            V1.2D, #10.0 }

  unk_1EDE82A68 = _Q1;
  unk_1EDE82A78 = _Q1;
  qword_1EDE82A88 = 0x4052000000000000;
  unk_1EDE82A90 = 0;
  qword_1EDE82AC8 = 0;
  unk_1EDE82AD0 = qword_1EDE82B80;
  unk_1EDE82AD8 = *&qword_1EDE82B88;
  qword_1EDE82AE8 = qword_1EDE82B98;
  qword_1EDE82A98 = 0;
  unk_1EDE82AA0 = 0;
  qword_1EDE82AA8 = 0;
  unk_1EDE82AB0 = 0;
  qword_1EDE82AB8 = 0x8000000000000000;
  word_1EDE82AC0 = 1;

  return result;
}

uint64_t sub_1C10C4648@<X0>(void *a1@<X8>)
{
  if (qword_1EDE82A18 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1EDE82A20, sizeof(__dst));
  memcpy(a1, &qword_1EDE82A20, 0xD0uLL);
  return sub_1C100D690(__dst, &v3);
}

uint64_t sub_1C10C46DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C10C56F8();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.photosCellSpecs.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x420uLL);
  *a1 = v3;
  v3[130] = v1;
  v3[131] = sub_1C10C373C();
  sub_1C12637F0();
  return sub_1C10C47BC;
}

void sub_1C10C47BC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_19_10((v2 + 416));
    OUTLINED_FUNCTION_19_10((v2 + 624));
    sub_1C100D690(v2 + 416, v2 + 832);
    sub_1C1263800();
    OUTLINED_FUNCTION_19_10((v2 + 208));
    sub_1C100C7D0(v2 + 208);
  }

  else
  {
    OUTLINED_FUNCTION_19_10((v2 + 208));
    sub_1C1263800();
  }

  free(v2);
}

uint64_t PhotosCellUIContext.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

double (*PhotosCellSpecs.cornerRadius.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1C10C4940;
}

double sub_1C10C4940(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t PhotosCellSpecs.shadow.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2].n128_f64[0];
  *a1 = v1->n128_i64[1];
  return OUTLINED_FUNCTION_5_21(a1, v2, v1[1]);
}

double sub_1C10C49C0@<D0>(uint64_t a1@<X8>)
{
  PhotosCellSpecs.shadow.getter(&v3);
  result = v5;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = result;
  return result;
}

double sub_1C10C4A0C(uint64_t *a1)
{
  v1 = a1[3];
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = v1;

  *&result = PhotosCellSpecs.shadow.setter(&v3).n128_u64[0];
  return result;
}

__n128 PhotosCellSpecs.shadow.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_13_15(a1);

  v2->n128_u64[1] = v1;
  result = v5;
  v2[1] = v5;
  v2[2].n128_u64[0] = v3;
  return result;
}

void (*PhotosCellSpecs.shadow.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *(v3 + 4) = v1;
  v4 = *(v1 + 32);
  v5 = *(v1 + 16);
  *v3 = *(v1 + 8);
  *(v3 + 8) = v5;
  *(v3 + 3) = v4;

  return sub_1C10C4B20;
}

void sub_1C10C4B20(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = **a1;
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {

    v3[1] = v4;
    v3[2] = v6;
    v3[3] = v5;
    v3[4] = v7;
  }

  else
  {

    v3[1] = v4;
    v3[2] = v6;
    v3[3] = v5;
    v3[4] = v7;
  }

  free(v2);
}

uint64_t PhotosCellSpecs.with(cornerRadius:)@<X0>(double *a1@<X8>, double a2@<D0>)
{
  memcpy(__dst, v2, 0xD0uLL);
  OUTLINED_FUNCTION_11_15();
  *a1 = a2;
  return sub_1C100D690(__dst, v6);
}

__n128 PhotosCellSpecs.withoutShadow.getter(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_18_16(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], v15[17], v15[18], v15[19], v15[20], v15[21], v15[22], v15[23], v15[24], v15[25]);
  OUTLINED_FUNCTION_11_15();
  sub_1C100D690(v16, v15);
  if (qword_1EDE82B78 != -1)
  {
    OUTLINED_FUNCTION_1_26(&qword_1EDE82B78);
  }

  v9 = qword_1EDE82B80;
  v13 = *&qword_1EDE82B88;
  v10 = qword_1EDE82B98;

  v8->n128_u64[1] = v9;
  result = v13;
  v8[1] = v13;
  v8[2].n128_u64[0] = v10;
  return result;
}

double PhotosCellSpecs.includingShadow(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, sizeof(__dst));
  if (a1)
  {
    v7 = *(&__dst[11] + 1);
    v6 = *&__dst[11];
    v9 = *(&__dst[12] + 1);
    v8 = *&__dst[12];
    v19 = __dst[8];
    v20 = __dst[9];
    v10 = *(&__dst[0] + 1);
    v11 = *&__dst[0];
    v13 = *(&__dst[1] + 1);
    v12 = *&__dst[1];
    v14 = *&__dst[2];
    sub_1C100D690(__dst, v21);
  }

  else
  {
    v11 = *&__dst[0];
    v19 = __dst[8];
    v20 = __dst[9];
    v7 = *(&__dst[11] + 1);
    v6 = *&__dst[11];
    v9 = *(&__dst[12] + 1);
    v8 = *&__dst[12];
    sub_1C100D690(__dst, v21);
    if (qword_1EDE82B78 != -1)
    {
      OUTLINED_FUNCTION_1_26(&qword_1EDE82B78);
    }

    v10 = qword_1EDE82B80;
    v12 = qword_1EDE82B88;
    v13 = qword_1EDE82B90;
    v14 = qword_1EDE82B98;
  }

  result = *(&__dst[10] + 1);
  v16 = BYTE1(__dst[10]);
  v17 = __dst[10];
  v18 = *(&__dst[7] + 1);
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = *(&__dst[2] + 8);
  *(a2 + 56) = *(&__dst[3] + 8);
  *(a2 + 72) = *(&__dst[4] + 8);
  *(a2 + 88) = *(&__dst[5] + 8);
  *(a2 + 104) = *(&__dst[6] + 8);
  *(a2 + 120) = v18;
  *(a2 + 128) = v19;
  *(a2 + 144) = v20;
  *(a2 + 160) = v17;
  *(a2 + 161) = v16;
  *(a2 + 168) = result;
  *(a2 + 176) = v6;
  *(a2 + 184) = v7;
  *(a2 + 192) = v8;
  *(a2 + 200) = v9;
  return result;
}

uint64_t PhotosCellSpecs.clipShape.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(sub_1C1263320() + 20);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1C12639D0();
  result = (*(*(v6 - 8) + 104))(&a1[v4], v5, v6);
  *a1 = v3;
  *(a1 + 1) = v3;
  return result;
}

__n128 static PhotosCellSpecs.defaultSpecs(forPicker:)@<Q0>(uint64_t a1@<X8>)
{
  sub_1C12650F0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v5 = *(v3 + 104);
  v6 = OUTLINED_FUNCTION_8_22();
  v5(v6);
  OUTLINED_FUNCTION_7_21();
  v7 = sub_1C1265240();
  v8 = OUTLINED_FUNCTION_8_22();
  v5(v8);
  OUTLINED_FUNCTION_7_21();
  v9 = sub_1C1265240();
  v10 = OUTLINED_FUNCTION_8_22();
  v5(v10);
  OUTLINED_FUNCTION_7_21();
  v11 = sub_1C1265240();
  if (qword_1EDE82B50 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDE82B58;
  v13 = qword_1EDE82B60;
  v14 = unk_1EDE82B68;
  v15 = qword_1EDE82B70;
  v16 = qword_1EDE7B858;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDE7B860;
  v18 = qword_1EDE82B78;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_1_26(&qword_1EDE82B78);
  }

  v19 = qword_1EDE82B80;
  v28 = *&qword_1EDE82B88;
  v20 = qword_1EDE82B98;

  *a1 = 0x402E000000000000;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  __asm { FMOV            V0.2D, #12.0 }

  *(a1 + 40) = _Q0;
  *(a1 + 56) = _Q0;
  __asm { FMOV            V0.2D, #10.0 }

  *(a1 + 72) = _Q0;
  *(a1 + 88) = _Q0;
  *(a1 + 104) = 0x4052000000000000;
  *(a1 + 112) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = v19;
  result = v28;
  *(a1 + 184) = v28;
  *(a1 + 200) = v20;
  *(a1 + 120) = 0;
  *(a1 + 128) = v17;
  *(a1 + 136) = v11;
  *(a1 + 144) = v7;
  *(a1 + 152) = v9 | 0x4000000000000000;
  *(a1 + 160) = 1;
  return result;
}

uint64_t (*EnvironmentValues.photosIsDragTarget.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  a1[1] = sub_1C10C39B0();
  sub_1C12637F0();
  OUTLINED_FUNCTION_9_19();
  return sub_1C10C51C8;
}

uint64_t sub_1C10C51F4(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_1C12637F0();
  return v3;
}

uint64_t (*EnvironmentValues.photosIsDragPreview.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  a1[1] = sub_1C10C537C();
  sub_1C12637F0();
  OUTLINED_FUNCTION_9_19();
  return sub_1C10C5304;
}

uint64_t (*EnvironmentValues.photosIsFocusableItem.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  a1[1] = sub_1C10C3678();
  sub_1C12637F0();
  OUTLINED_FUNCTION_9_19();
  return sub_1C10C5370;
}

unint64_t sub_1C10C537C()
{
  result = qword_1EDE81DB0[0];
  if (!qword_1EDE81DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE81DB0);
  }

  return result;
}

unint64_t sub_1C10C53D4()
{
  result = qword_1EBE932C8;
  if (!qword_1EBE932C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE932C8);
  }

  return result;
}

uint64_t sub_1C10C5430(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFFFFFFD && *(a1 + 32))
    {
      v2 = *a1 + 268435453;
    }

    else
    {
      v3 = *(a1 + 24);
      if (((((v3 >> 36) >> 26) & 0xF0000003 | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) & 0x3FFFFFF | (v3 >> 36) & 0x3000000 | ((v3 & 7) << 21) & 0x3FFFFFF))) ^ 0xFFFFFFF) >= 0xFFFFFFD)
      {
        v2 = -1;
      }

      else
      {
        v2 = (((v3 >> 36) >> 26) & 0xF0000003 | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) & 0x3FFFFFF | (v3 >> 36) & 0x3000000 | ((v3 & 7) << 21) & 0x3FFFFFF))) ^ 0xFFFFFFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C10C54C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFFFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 268435454;
    *(result + 8) = 0;
    if (a3 >= 0xFFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x3FFFFFF) - (a2 << 26);
      v4 = vdupq_n_s64(v3);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = vorrq_s8(vandq_s8(vshlq_u64(v4, xmmword_1C12B2960), vdupq_n_s64(7uLL)), vandq_s8(vshlq_u64(v4, xmmword_1C12B2970), vdupq_n_s64(0xF000000000000000)));
      *(result + 24) = ((v3 >> 21) | (v3 << 36)) & 0xF000000000000007;
    }
  }

  return result;
}

int8x16_t *sub_1C10C5588(int8x16_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v3 = result[1].i64[0] & 0xFFFFFFFFFFFFFF8;
    v2 = result[1].i64[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result = vandq_s8(*result, vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    result[1].i64[0] = v3;
  }

  else
  {
    *(result + 8) = 0uLL;
    result->i64[0] = 8 * (a2 - 2);
    v2 = 0x8000000000000000;
  }

  result[1].i64[1] = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosCellUIContext(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C10C56F8()
{
  result = qword_1EDE7E938;
  if (!qword_1EDE7E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7E938);
  }

  return result;
}

void *OUTLINED_FUNCTION_11_15()
{

  return memcpy(v0, v1, 0xD0uLL);
}

__n128 PhotosSelectionStatusView.init(title:titleSystemImage:subtitle:subtitleSystemImage:asset:action:centerAlignment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11, char a12)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D0, &qword_1C12A2EA0);
  sub_1C1265410();
  *(a9 + 96) = v22;
  *(a9 + 112) = v23;
  *(a9 + 120) = v24;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = a10;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  return result;
}

uint64_t PhotosSelectionStatusView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D8, &qword_1C12B2D68);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932E0, &qword_1C12B2D70);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932E8, &qword_1C12B2D78);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932F0, &qword_1C12B2D80);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v40 - v13;
  v45 = sub_1C12632E0();
  OUTLINED_FUNCTION_0();
  v43 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932F8, &qword_1C12B2D88);
  OUTLINED_FUNCTION_0();
  v42 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93300, &qword_1C12B2D90);
  OUTLINED_FUNCTION_0();
  v44 = v23;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - v25;
  v27 = memcpy(__dst, v2, 0x80uLL);
  v28 = __dst[9];
  if (__dst[9])
  {
    v29 = __dst[10];
    v41 = __dst[10];
    MEMORY[0x1EEE9AC00](v27);
    sub_1C0FCF1B4(v28, v29);
    v40 = sub_1C10C68E0();

    sub_1C1265480();
    sub_1C12632D0();
    v30 = OUTLINED_FUNCTION_3_28(&unk_1EBE93310, &qword_1EBE932F8, &qword_1C12B2D88);
    v31 = sub_1C10C6888();
    v32 = v45;
    sub_1C12649F0();
    (*(v43 + 8))(v17, v32);
    (*(v42 + 8))(v22, v18);
    v33 = v44;
    v34 = v48;
    (*(v44 + 16))(v49, v26, v48);
    swift_storeEnumTagMultiPayload();
    v55[0] = v18;
    v55[1] = v32;
    v55[2] = v30;
    v55[3] = v31;
    OUTLINED_FUNCTION_1_27();
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    sub_1C0FCF004(v28, v41);
    return (*(v33 + 8))(v26, v34);
  }

  else
  {
    *v5 = sub_1C12638E0();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93308, &qword_1C12B2D98);
    sub_1C10C603C(__dst, &v5[*(v36 + 44)]);
    sub_1C12659A0();
    sub_1C1263390();
    sub_1C0FDB71C(v5, v8, &qword_1EBE932D8, &qword_1C12B2D68);
    memcpy(&v8[*(v41 + 36)], v55, 0x70uLL);
    sub_1C0FDB71C(v8, v11, &qword_1EBE932E0, &qword_1C12B2D70);
    v37 = v49;
    *&v11[*(v50 + 36)] = 257;
    sub_1C0FDB800(v11, v37, &qword_1EBE932E8, &qword_1C12B2D78);
    swift_storeEnumTagMultiPayload();
    v38 = OUTLINED_FUNCTION_3_28(&unk_1EBE93310, &qword_1EBE932F8, &qword_1C12B2D88);
    v39 = sub_1C10C6888();
    v51 = v18;
    v52 = v45;
    v53 = v38;
    v54 = v39;
    OUTLINED_FUNCTION_1_27();
    swift_getOpaqueTypeConformance2();
    sub_1C10C68E0();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v11, &qword_1EBE932E8, &qword_1C12B2D78);
  }
}

uint64_t sub_1C10C5E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D8, &qword_1C12B2D68);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &__src[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932E0, &qword_1C12B2D70);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &__src[-v9];
  *v6 = sub_1C12638E0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93308, &qword_1C12B2D98);
  sub_1C10C603C(a1, &v6[*(v11 + 44)]);
  sub_1C12659A0();
  sub_1C1263390();
  sub_1C0FDB71C(v6, v10, &qword_1EBE932D8, &qword_1C12B2D68);
  memcpy(&v10[*(v8 + 44)], __src, 0x70uLL);
  sub_1C0FDB71C(v10, a2, &qword_1EBE932E0, &qword_1C12B2D70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932E8, &qword_1C12B2D78);
  *(a2 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1C10C603C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93360, &qword_1C12B2F50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93368, &qword_1C12B2F58);
  MEMORY[0x1EEE9AC00](v7);
  v69 = v65 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93370, &qword_1C12B2F60);
  MEMORY[0x1EEE9AC00](v68);
  v71 = v65 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93378, &qword_1C12B2F68);
  MEMORY[0x1EEE9AC00](v70);
  v74 = v65 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93380, &qword_1C12B2F70);
  MEMORY[0x1EEE9AC00](v73);
  v12 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = v65 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93388, &qword_1C12B2F78);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93390, &qword_1C12B2F80);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v75 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v65 - v24;
  v26 = *(a1 + 64);
  if (v26)
  {
    v67 = v7;
    v27 = *(a1 + 112);
    v76[0] = *(a1 + 96);
    v76[1] = v27;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE933B0, &unk_1C12B3000);
    sub_1C1265420();
    if (v78 == 1)
    {
      swift_unknownObjectRelease();
      v28 = 1;
    }

    else
    {
      v65[1] = *(&v77 + 1);
      swift_unknownObjectRetain();
      v65[0] = sub_1C1200D04();
      [v65[0] setNetworkAccessAllowed_];
      *(v20 + 19) = swift_getKeyPath();
      v20[160] = 0;
      v30 = type metadata accessor for PhotosAssetView(0);
      v66 = v17;
      v31 = v12;
      v32 = a2;
      v33 = a1;
      v34 = v30[12];
      *&v20[v34] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
      swift_storeEnumTagMultiPayload();
      v35 = &v20[v30[13]];
      *v35 = swift_getKeyPath();
      v35[8] = 0;
      a1 = v33;
      a2 = v32;
      v12 = v31;
      v17 = v66;
      v36 = &v20[v30[14]];
      *v36 = swift_getKeyPath();
      v36[8] = 0;
      *v20 = 0;
      *(v20 + 4) = 0;
      *(v20 + 5) = 0;
      v20[48] = 1;
      v20[8] = 0;
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 34) = 256;
      *(v20 + 52) = 0;
      *(v20 + 60) = 0;
      *(v20 + 9) = 0;
      v20[80] = 1;
      *(v20 + 11) = v26;
      *(v20 + 12) = 0;
      *(v20 + 13) = v65[0];
      *(v20 + 7) = 0u;
      *(v20 + 8) = 0u;
      v20[144] = 2;
      sub_1C12659A0();
      sub_1C1262C80();
      swift_unknownObjectRelease();
      v37 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933C0, &qword_1C12B30C8) + 36)];
      v38 = v78;
      *v37 = v77;
      *(v37 + 1) = v38;
      *(v37 + 2) = v79;
      *&v20[*(v18 + 36)] = 256;
      sub_1C10C747C(v20, v25);
      v28 = 0;
    }

    __swift_storeEnumTagSinglePayload(v25, v28, 1, v18);
    v29 = sub_1C1263AB0();
    v7 = v67;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v65 - v24, 1, 1, v18);
    v29 = sub_1C1263AA0();
  }

  *v6 = v29;
  *(v6 + 1) = 0;
  v6[16] = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93398, &unk_1C12B2F88);
  sub_1C10C6A48(a1, &v6[*(v39 + 44)]);
  v40 = v69;
  v41 = &v69[*(v7 + 36)];
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760) + 28);
  v43 = *MEMORY[0x1E69816C8];
  v44 = sub_1C1265340();
  (*(*(v44 - 8) + 104))(v41 + v42, v43, v44);
  *v41 = swift_getKeyPath();
  sub_1C0FDB71C(v6, v40, &qword_1EBE93360, &qword_1C12B2F50);
  KeyPath = swift_getKeyPath();
  v46 = v71;
  sub_1C0FDB71C(v40, v71, &qword_1EBE93368, &qword_1C12B2F58);
  v47 = v46 + *(v68 + 36);
  *v47 = KeyPath;
  *(v47 + 8) = 1;
  *(v47 + 16) = 0;
  LOBYTE(KeyPath) = sub_1C12644C0();
  sub_1C12628A0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v46;
  v57 = v74;
  sub_1C0FDB71C(v56, v74, &qword_1EBE93370, &qword_1C12B2F60);
  v58 = v57 + *(v70 + 36);
  *v58 = KeyPath;
  *(v58 + 8) = v49;
  *(v58 + 16) = v51;
  *(v58 + 24) = v53;
  *(v58 + 32) = v55;
  *(v58 + 40) = 0;
  v59 = swift_allocObject();
  memcpy((v59 + 16), a1, 0x80uLL);
  v60 = v72;
  sub_1C0FDB71C(v57, v72, &qword_1EBE93378, &qword_1C12B2F68);
  v61 = (v60 + *(v73 + 36));
  *v61 = sub_1C0FA84D0;
  v61[1] = 0;
  v61[2] = sub_1C10C7364;
  v61[3] = v59;
  sub_1C0FDB71C(v60, v17, &qword_1EBE93380, &qword_1C12B2F70);
  v62 = v75;
  sub_1C10C736C(v25, v75);
  sub_1C0FDB800(v17, v12, &qword_1EBE93380, &qword_1C12B2F70);
  sub_1C10C736C(v62, a2);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A8, &qword_1C12B2FF8);
  sub_1C0FDB800(v12, a2 + *(v63 + 48), &qword_1EBE93380, &qword_1C12B2F70);
  sub_1C10C73DC(a1, v76);
  sub_1C0FD1A5C(v17, &qword_1EBE93380, &qword_1C12B2F70);
  sub_1C10C7414(v25);
  sub_1C0FD1A5C(v12, &qword_1EBE93380, &qword_1C12B2F70);
  return sub_1C10C7414(v62);
}

unint64_t sub_1C10C6888()
{
  result = qword_1EDE7BCF0;
  if (!qword_1EDE7BCF0)
  {
    sub_1C12632E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BCF0);
  }

  return result;
}

unint64_t sub_1C10C68E0()
{
  result = qword_1EBE93320;
  if (!qword_1EBE93320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE932E8, &qword_1C12B2D78);
    sub_1C10C696C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93320);
  }

  return result;
}

unint64_t sub_1C10C696C()
{
  result = qword_1EBE93328;
  if (!qword_1EBE93328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE932E0, &qword_1C12B2D70);
    sub_1C0FDB6D4(&qword_1EBE93330, &qword_1EBE932D8, &qword_1C12B2D68, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93328);
  }

  return result;
}

uint64_t sub_1C10C6A48@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933C8, &qword_1C12B30D0);
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];

  v12 = sub_1C1264510();
  KeyPath = swift_getKeyPath();
  v35 = v8;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = KeyPath;
  v40 = v12;
  sub_1C1264620();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933D0, &unk_1C12B3108);
  sub_1C10C74EC();
  v29 = v7;
  sub_1C1264990();

  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v17 = a1[7];
  v30 = v16;
  v31 = v14;

  v18 = sub_1C12646A0();
  v19 = swift_getKeyPath();
  v20 = *(v3 + 16);
  v21 = v34;
  v22 = v7;
  v23 = v32;
  v20(v34, v22, v32);
  v24 = v33;
  v20(v33, v21, v23);
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933F8, &qword_1C12B3118) + 48)];
  v26 = v30;
  *v25 = v31;
  v25[1] = v15;
  v25[2] = v26;
  v25[3] = v17;
  v25[4] = v19;
  v25[5] = v18;
  v27 = *(v3 + 8);

  v27(v29, v23);

  return (v27)(v34, v23);
}

double sub_1C10C6CEC(__int128 *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE933B0, &unk_1C12B3000);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C10C6D54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1C10C6D94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C10C6E04()
{
  result = qword_1EBE93338;
  if (!qword_1EBE93338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93340, &qword_1C12B2E98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE932F8, &qword_1C12B2D88);
    sub_1C12632E0();
    sub_1C0FDB6D4(&unk_1EBE93310, &qword_1EBE932F8, &qword_1C12B2D88, MEMORY[0x1E697D680]);
    sub_1C10C6888();
    swift_getOpaqueTypeConformance2();
    sub_1C10C68E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93338);
  }

  return result;
}

void sub_1C10C6F4C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1C1263990();
  MEMORY[0x1EEE9AC00](v9 - 8);
  if (a2)
  {
    if (a4)
    {

      sub_1C1263980();
      sub_1C1263970();
      sub_1C12652F0();
      sub_1C1263950();

      sub_1C1263970();
      sub_1C1263960();
      sub_1C1263970();
      sub_1C12639B0();
      if (qword_1EDE7E628 != -1)
      {
        swift_once();
      }

      v10 = qword_1EDE7E630;
      v11 = sub_1C12648D0();
      v13 = v12;
      v15 = v14 & 1;
      sub_1C0FDB850(v11, v12, v14 & 1);

      sub_1C1263C20();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720, &qword_1C12B4750);
      sub_1C1089CAC();
      sub_1C1263C20();
      sub_1C0FDB8E8(v11, v13, v15);

      v16 = v26;
      v17 = v28;
      v18 = v29;
      if (v30)
      {
        v19 = 256;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      *&v27 = a1;
      *(&v27 + 1) = a2;
      sub_1C0FDB9AC();

      v20 = sub_1C12648F0();
      v22 = v21;
      v24 = v23 & 1;
      sub_1C0FDB850(v20, v21, v23 & 1);

      sub_1C1263C20();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720, &qword_1C12B4750);
      sub_1C1089CAC();
      sub_1C1263C20();
      sub_1C0FDB8E8(v20, v22, v24);

      v16 = v27;
      v17 = v28;
      v18 = v29;
      if (v30)
      {
        v19 = 256;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    if (!a4)
    {
      v16 = 0uLL;
      v25 = -256;
      v17 = 0uLL;
      goto LABEL_16;
    }

    sub_1C12652F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720, &qword_1C12B4750);
    sub_1C1089CAC();
    sub_1C1263C20();
    v16 = v26;
    v17 = v28;
    v18 = v29;
    if (v30)
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }
  }

  v25 = v19 | v18;
LABEL_16:
  *a5 = v16;
  *(a5 + 16) = v17;
  *(a5 + 32) = v25;
}

uint64_t sub_1C10C736C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93390, &qword_1C12B2F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C10C7414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93390, &qword_1C12B2F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C10C747C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93388, &qword_1C12B2F78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10C74EC()
{
  result = qword_1EBE933D8;
  if (!qword_1EBE933D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE933D0, &unk_1C12B3108);
    sub_1C10C75A4();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE933D8);
  }

  return result;
}

unint64_t sub_1C10C75A4()
{
  result = qword_1EBE933E0;
  if (!qword_1EBE933E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE933E0);
  }

  return result;
}

unint64_t sub_1C10C75F8()
{
  result = qword_1EBE93400;
  if (!qword_1EBE93400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93408, &qword_1C12B3120);
    sub_1C10C767C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93400);
  }

  return result;
}

unint64_t sub_1C10C767C()
{
  result = qword_1EBE93410;
  if (!qword_1EBE93410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93418, &qword_1C12B3128);
    sub_1C1089CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93410);
  }

  return result;
}

uint64_t type metadata accessor for PhotosSearchiOSKeyboardBackdropView(uint64_t a1)
{
  result = qword_1EBE93420;
  if (!qword_1EBE93420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C10C77A8@<X0>(uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = sub_1C12631E0();
  result = sub_1C1264470();
  *a2 = a3;
  *(a2 + 8) = 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = result;
  return result;
}

id sub_1C10C77FC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DCB90]) initWithFrame:sub_1C10C7854() style:{0.0, 0.0, 0.0, 0.0}];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C10C7854()
{
  v1 = v0;
  v2 = sub_1C12637E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1C12629F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C101268C(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  v14 = (*(v10 + 88))(v12, v9);
  if (v14 != *MEMORY[0x1E697DBB8])
  {
    if (v14 == *MEMORY[0x1E697DBA8])
    {
      return 2030;
    }

    (*(v10 + 8))(v12, v9);
  }

  return 3901;
}

id sub_1C10C7B04(void *a1)
{
  v2 = sub_1C10C7854();

  return [a1 transitionToStyle_];
}

uint64_t sub_1C10C7B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10C7CC8(&qword_1EBE93438, &unk_1C12B3224);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C10C7BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C10C7CC8(&qword_1EBE93438, &unk_1C12B3224);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C10C7C50(uint64_t a1)
{
  sub_1C10C7CC8(&qword_1EBE93438, &unk_1C12B3224);
  sub_1C1263BD0();
  __break(1u);
}

uint64_t sub_1C10C7CC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosSearchiOSKeyboardBackdropView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10C7D0C()
{
  result = qword_1EBE93440;
  if (!qword_1EBE93440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93448, &qword_1C12B32C0);
    sub_1C10C7D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93440);
  }

  return result;
}

unint64_t sub_1C10C7D98()
{
  result = qword_1EBE93450;
  if (!qword_1EBE93450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93458, &qword_1C12B32C8);
    sub_1C0FDC6A0();
    sub_1C10C7E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93450);
  }

  return result;
}

unint64_t sub_1C10C7E24()
{
  result = qword_1EBE93460;
  if (!qword_1EBE93460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93468, &unk_1C12B32D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93460);
  }

  return result;
}

uint64_t EnvironmentValues.photosSearchStyle.getter()
{
  sub_1C10C7EDC();

  return sub_1C12637F0();
}

unint64_t sub_1C10C7EDC()
{
  result = qword_1EBE93470;
  if (!qword_1EBE93470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93470);
  }

  return result;
}

uint64_t PhotosSearchStyle.id.getter()
{
  v1 = *(v0 + 40);
  if (v1 < 0)
  {
    sub_1C1266940();

    v10[0] = 0x65536D6F74746F42;
    v10[1] = 0xEF72614268637261;
    if (v1)
    {
      v4 = 1920298050;
    }

    else
    {
      v4 = 0;
    }

    if (v1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  else
  {
    sub_1C1266940();

    strcpy(v10, "TopSearchBar");
    BYTE5(v10[1]) = 0;
    HIWORD(v10[1]) = -5120;
    if (v1)
    {
      v2 = 1920298050;
    }

    else
    {
      v2 = 0;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE000000000000000;
    }

    MEMORY[0x1C68EF850](v2, v3);

    if ((v1 & 0x100) != 0)
    {
      v4 = 0x6E656E696D6F7250;
    }

    else
    {
      v4 = 0;
    }

    if ((v1 & 0x100) != 0)
    {
      v5 = 0xE900000000000074;
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  MEMORY[0x1C68EF850](v4, v5);

  MEMORY[0x1C68EF850](0x656C797453, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690, &qword_1C12B32F0);
  v6 = sub_1C1265ED0();
  MEMORY[0x1C68EF850](v6);

  v7 = sub_1C1266260();
  MEMORY[0x1C68EF850](v7);

  v8 = sub_1C1265ED0();
  MEMORY[0x1C68EF850](v8);

  return v10[0];
}

double PhotosSearchStyle.searchBarFocusRingCornerRadius.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  result = *v0;
  if (v1)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *v0;
  }

  if ((v2 & 1) == 0)
  {
    v4 = *(v0 + 16);
  }

  if (v1)
  {
    result = 0.0;
  }

  if ((v2 & 1) == 0)
  {
    result = *(v0 + 16);
  }

  if (*(v0 + 40) < 0)
  {
    return v4;
  }

  return result;
}

uint64_t static PhotosSearchStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v7 < 0)
  {
    if (v13 < 0)
    {
      if (v3)
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if ((v8 & 1) != 0 || v2 != v9)
      {
        goto LABEL_34;
      }

      if (v5)
      {
        if ((v11 & (v6 == v12)) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_34;
        }

        if (v4 != v10 || v6 != v12)
        {
          goto LABEL_34;
        }
      }

      LOBYTE(v14) = v13 ^ v7 ^ 1;
      return v14 & 1;
    }

LABEL_34:
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  if (v13 < 0)
  {
    goto LABEL_34;
  }

  if (v3)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if ((v8 & 1) != 0 || v2 != v9)
  {
    goto LABEL_34;
  }

  if (v5)
  {
    LOBYTE(v14) = 0;
    if ((v11 & 1) == 0 || v6 != v12)
    {
      return v14 & 1;
    }

    goto LABEL_22;
  }

  if (v11)
  {
    goto LABEL_34;
  }

  LOBYTE(v14) = 0;
  if (v4 == v10 && v6 == v12)
  {
LABEL_22:
    if (((v7 ^ v13) & 1) == 0)
    {
      v14 = ((v13 & 0x100) == 0) ^ ((v7 & 0x100) >> 8);
    }
  }

  return v14 & 1;
}

uint64_t PhotosSearchStyle.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = v0[4];
  if ((v0[5] & 0x80000000) == 0)
  {
    MEMORY[0x1C68F07E0](0);
    if (v2)
    {
      sub_1C1266EB0();
      if ((v4 & 1) == 0)
      {
LABEL_4:
        sub_1C1266EB0();
        if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        MEMORY[0x1C68F0810](v6);
        goto LABEL_19;
      }
    }

    else
    {
      sub_1C1266EB0();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x1C68F0810](v8);
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    sub_1C1266EB0();
LABEL_19:
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1C68F0810](v9);
    sub_1C1266EB0();
    return sub_1C1266EB0();
  }

  MEMORY[0x1C68F07E0](1);
  if (v2)
  {
    sub_1C1266EB0();
    if ((v4 & 1) == 0)
    {
LABEL_10:
      sub_1C1266EB0();
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v3;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x1C68F0810](v7);
      goto LABEL_28;
    }
  }

  else
  {
    sub_1C1266EB0();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v1;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1C68F0810](v10);
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_1C1266EB0();
LABEL_28:
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1C68F0810](v11);
  return sub_1C1266EB0();
}

uint64_t PhotosSearchStyle.hashValue.getter()
{
  sub_1C1266E90();
  PhotosSearchStyle.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C10C849C(uint64_t a1)
{
  sub_1C1266E90();
  PhotosSearchStyle.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C10C84F4@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosSearchStyle.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double View.photosSearchStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1C1264A30();

  return result;
}

void (*EnvironmentValues.photosSearchStyle.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v3;
  v3[12] = v1;
  v3[13] = sub_1C10C7EDC();
  sub_1C12637F0();
  return sub_1C10C862C;
}

void sub_1C10C862C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 16);
  v1[3] = *v1;
  v1[4] = v4;
  *(v1 + 10) = v2;
  *(v1 + 44) = v3;
  sub_1C1263800();

  free(v1);
}

double sub_1C10C8694@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0x4030000000000000;
  *&result = 1;
  *(a1 + 24) = xmmword_1C12B32E0;
  *(a1 + 40) = -32767;
  return result;
}

uint64_t sub_1C10C86B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C10C8ACC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t PhotosSearchTokenStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t PhotosSearchTokenStyle.attributes()()
{
  v1 = type metadata accessor for PhotosSearchTokenStyleAttributeValue(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  sub_1C1261E10();
  v3[*(v1 + 20)] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93478, &qword_1C12B3320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  if (qword_1EDE76A00 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDE9B5C0;
  *(inited + 32) = qword_1EDE9B5C0;
  *(inited + 64) = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 40));
  sub_1C10C89B0(v3, boxed_opaque_existential_1);
  v8 = *MEMORY[0x1E69DE720];
  *(inited + 72) = *MEMORY[0x1E69DE720];
  v9 = v6;
  v10 = v8;
  v11 = sub_1C1261DF0();
  *(inited + 104) = MEMORY[0x1E69E6158];
  *(inited + 80) = v11;
  *(inited + 88) = v12;
  type metadata accessor for Key(0);
  sub_1C10C8A14();
  v13 = sub_1C1265CE0();
  sub_1C10C8A6C(v3);
  return v13;
}

uint64_t type metadata accessor for PhotosSearchTokenStyleAttributeValue(uint64_t a1)
{
  result = qword_1EDE79228;
  if (!qword_1EDE79228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C10C8978()
{
  result = sub_1C1265E70();
  qword_1EDE9B5C0 = result;
  return result;
}

uint64_t sub_1C10C89B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchTokenStyleAttributeValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10C8A14()
{
  result = qword_1EDE769F8;
  if (!qword_1EDE769F8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE769F8);
  }

  return result;
}

uint64_t sub_1C10C8A6C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosSearchTokenStyleAttributeValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C10C8ACC()
{
  result = qword_1EBE93480;
  if (!qword_1EBE93480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93480);
  }

  return result;
}

unint64_t sub_1C10C8B24()
{
  result = qword_1EBE93488;
  if (!qword_1EBE93488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93488);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PhotosSearchStyle(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosSearchStyle(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotosSearchStyle(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 0;
      *(result + 40) = 0;
      return result;
    }

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C10C8C7C(uint64_t result, __int16 a2)
{
  v2 = *(result + 24) & 1;
  v3 = *(result + 40) & 0x101 | (a2 << 15);
  *(result + 8) &= 1uLL;
  *(result + 24) = v2;
  *(result + 40) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosSearchTokenStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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