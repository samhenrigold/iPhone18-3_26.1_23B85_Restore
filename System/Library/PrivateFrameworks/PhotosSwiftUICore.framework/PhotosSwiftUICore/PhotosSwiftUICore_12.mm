unint64_t sub_1C10C8D94()
{
  result = qword_1EBE93498[0];
  if (!qword_1EBE93498[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93490, &unk_1C12B3480);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE93498);
  }

  return result;
}

uint64_t sub_1C10C8E20(uint64_t a1)
{
  result = sub_1C1261E20();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PhotosDetailsNavigationRepresentedItemTransform.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C10C8EF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C0FA139C(a1, v7);
  sub_1C10C8FCC();
  if (swift_dynamicCast())
  {
    v4 = [v6 asset];
    a2[3] = swift_getObjectType();

    *a2 = v4;
  }

  else
  {
    sub_1C0FA139C(a1, a2);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v7);
}

unint64_t sub_1C10C8FCC()
{
  result = qword_1EDE7B678;
  if (!qword_1EDE7B678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE7B678);
  }

  return result;
}

uint64_t PhotosPickerObservableUnifiedItem.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosPickerObservableUnifiedItem.init(_:)(a1);
  return v2;
}

uint64_t PhotosPickerObservableUnifiedItem.init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_2();
  sub_1C1261F60();
  OUTLINED_FUNCTION_5();
  sub_1C10342F0(a1, v4, v1 + *(v3 + 112));
  return v1;
}

uint64_t sub_1C10C90D4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_16();
  v5 = v4;
  v6 = *(v2 + 80);
  OUTLINED_FUNCTION_14_5();
  v8 = v7;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  sub_1C10344AC(&v16[-v10]);
  v12 = *(v8 + 8);
  v12(v11, v6);
  v19 = v6;
  v20 = *(v5 + 88);
  OUTLINED_FUNCTION_20();
  v21 = *(v13 + 104);
  KeyPath = swift_getKeyPath();
  v17 = v1;
  v18 = a1;
  sub_1C10C9DC8(KeyPath, sub_1C10C9E9C, v16, MEMORY[0x1E69E7CA8] + 8);

  return v12(a1, v6);
}

uint64_t sub_1C10C9278(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C10C90D4(v3);
}

uint64_t sub_1C10C9338@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1C10C9D2C(KeyPath);

  return sub_1C10344AC(a1);
}

uint64_t sub_1C10C93BC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C1034540(v3);
}

uint64_t (*sub_1C10C9488(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_5();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_5();
  v9 = *(v8 + 96);
  OUTLINED_FUNCTION_5();
  v11 = *(v10 + 104);
  KeyPath = swift_getKeyPath();
  sub_1C10C9D2C(KeyPath);

  OUTLINED_FUNCTION_10_2();
  v3[4] = v1;
  swift_getKeyPath();
  *v3 = v5;
  v3[1] = v7;
  v3[2] = v9;
  v3[3] = v11;
  type metadata accessor for PhotosPickerObservableUnifiedItem(255, v3);
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[6] = sub_1C10345DC(v3);
  return sub_1C10C95F8;
}

void sub_1C10C95F8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  (*(*a1 + 48))(*a1, 0);
  sub_1C10C964C(v2);

  free(v1);
}

double sub_1C10C964C(void *a1)
{
  v1 = *a1;
  v7[4] = a1;
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  swift_getKeyPath();
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  type metadata accessor for PhotosPickerObservableUnifiedItem(255, v7);
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

uint64_t sub_1C10C9768()
{
  OUTLINED_FUNCTION_2_16();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_14_5();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  sub_1C10C9338(&v8 - v5);
  OUTLINED_FUNCTION_20();
  sub_1C12622A0();
  return (*(v3 + 8))(v6, v1);
}

uint64_t sub_1C10C9844()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C10C9914()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C10C99E4()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v8);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4 & 1;
}

uint64_t sub_1C10C9AB4()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v8);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4;
}

uint64_t sub_1C10C9B8C()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v7);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v3(v2);
  v4 = OUTLINED_FUNCTION_8_2();
  v5(v4);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t sub_1C10C9C5C()
{
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_1_28();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_29(v1, v8);
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_10_19();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_8_2();
  v6(v5);
  return v4 & 1;
}

uint64_t sub_1C10C9D2C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C10C9DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_35();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t PhotosPickerObservableUnifiedItem.deinit()
{
  OUTLINED_FUNCTION_5();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 112));
  OUTLINED_FUNCTION_10_2();
  v4 = *(v3 + 120);
  v5 = sub_1C1261F70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t PhotosPickerObservableUnifiedItem.__deallocating_deinit()
{
  PhotosPickerObservableUnifiedItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C10CA0B0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C10C9488(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C10CA10C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C10CA364@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v54 = a1;
  v60 = a4;
  v56 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v58 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v50 = type metadata accessor for OneUpChromeMaskedLibraryScrubber.LibraryScrubberMask(255, a2, a3, v13);
  v51 = OUTLINED_FUNCTION_2_31();
  OUTLINED_FUNCTION_3_5();
  v52 = sub_1C1262B80();
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v55 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v57 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v48 = &v47 - v22;
  v23 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v59 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v49 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v53 = &v47 - v29;
  v54(v28);
  sub_1C10A0734(a2, a3, v30, v31, v32, v33);
  sub_1C1264E90();
  (*(v56 + 8))(v7, a2);
  v68 = a3;
  v69 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  sub_1C1264E70();
  (*(v58 + 8))(v12, v8);
  v67 = 3;
  OUTLINED_FUNCTION_1_29();
  v35 = swift_getWitnessTable();
  v65 = WitnessTable;
  v66 = v35;
  v36 = swift_getWitnessTable();
  v37 = v48;
  v38 = sub_1C1170174(&v67, 0, 0, v14, v36);
  (*(v55 + 8))(v18, v14, v38);
  v39 = sub_1C10CAB10();
  v63 = v36;
  v64 = v39;
  v40 = swift_getWitnessTable();
  v41 = v49;
  v42 = sub_1C0FF8DA8(v19, v40);
  (*(v57 + 8))(v37, v19, v42);
  v43 = sub_1C109739C();
  v61 = v40;
  v62 = v43;
  swift_getWitnessTable();
  v44 = v53;
  sub_1C0FDBA4C();
  v45 = *(v59 + 8);
  v45(v41, v23);
  sub_1C0FDBA4C();
  return (v45)(v44, v23);
}

double sub_1C10CA868@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92840, &qword_1C12AEF58);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C12B36E0;
  sub_1C1265170();
  *(v2 + 32) = sub_1C12657E0();
  *(v2 + 40) = v3;
  sub_1C1265190();
  *(v2 + 48) = sub_1C12657E0();
  *(v2 + 56) = v4;
  sub_1C1265190();
  *(v2 + 64) = sub_1C12657E0();
  *(v2 + 72) = v5;
  sub_1C1265170();
  *(v2 + 80) = sub_1C12657E0();
  *(v2 + 88) = v6;
  sub_1C1265BA0();
  sub_1C1265BB0();
  sub_1C12657F0();
  sub_1C1262F60();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_1C10CA9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C10CAA18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1C10CAA58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C10CAB10()
{
  result = qword_1EDE7C9C0;
  if (!qword_1EDE7C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7C9C0);
  }

  return result;
}

unint64_t sub_1C10CABA8()
{
  result = qword_1EDE7BFC0;
  if (!qword_1EDE7BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BFC0);
  }

  return result;
}

uint64_t sub_1C10CABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v21[1] = a2;
  v6 = sub_1C1261F10();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_30();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v21 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = *(v8 + 16);
  v18(v21 - v19, v4, v6, v17);
  (v18)(v12, v4, v6);
  (v18)(v3, a1, v6);
  sub_1C10CB46C();
  sub_1C1266830();
  sub_1C1266820();
  return (*(v8 + 8))(v15, v6);
}

uint64_t OneUpTopBarButtonSizeVariant.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t static OneUpTopBarLayoutUtilities.allPhotosButtonSizeVariant(allowedTopBarButtons:horizontalSizeClass:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v33 - v8;
  v10 = sub_1C1263EB0();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_30();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - v15;
  v17 = *a1;
  sub_1C10B1CE8(a2, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_1C10CB224(v9);
LABEL_5:
    v21 = 2;
LABEL_6:
    *a3 = v21;
    return result;
  }

  (*(v12 + 32))(v16, v9, v10);
  if ((v17 & 4) == 0)
  {
    v19 = OUTLINED_FUNCTION_0_36();
    result = v20(v19);
    goto LABEL_5;
  }

  (*(v12 + 16))(v3, v16, v10);
  v22 = (*(v12 + 88))(v3, v10);
  if (v22 == *MEMORY[0x1E697FF38])
  {
    if ((v17 & 0xE0) != 0)
    {
      v23 = OUTLINED_FUNCTION_0_36();
      result = v24(v23);
LABEL_10:
      v21 = 1;
      goto LABEL_6;
    }

    v27 = v17 & 0xFFFFFFFFFFFFFF1BLL;
    v28 = OUTLINED_FUNCTION_0_36();
    result = v29(v28);
    if ((v17 & 0xFFFFFFFFFFFFFF1BLL) != 0)
    {
      v30 = 0;
      do
      {
        v31 = __OFADD__(v30, v27 & 1);
        v30 += v27 & 1;
        if (v31)
        {
          __break(1u);
          goto LABEL_21;
        }

        v32 = v27 >= 2;
        v27 >>= 1;
      }

      while (v32);
      if (v30 > 2)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x1E697FF40])
  {
    v25 = OUTLINED_FUNCTION_0_36();
    result = v26(v25);
LABEL_13:
    v21 = 0;
    goto LABEL_6;
  }

LABEL_21:
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  sub_1C1266940();
  MEMORY[0x1C68EF850](0xD000000000000023, 0x80000001C126B710);
  sub_1C1266B10();
  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t sub_1C10CB148@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1C10CB170(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_1C10CB224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C10CB290()
{
  result = qword_1EBE93520;
  if (!qword_1EBE93520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93520);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpTopBarButtonSizeVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OneUpTopBarLayoutUtilities(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C10CB46C()
{
  result = qword_1EDE82F08;
  if (!qword_1EDE82F08)
  {
    sub_1C1261F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82F08);
  }

  return result;
}

uint64_t sub_1C10CB510(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C1102390(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1C1094E90(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90078, &qword_1C12A26B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93558, &qword_1C12B3CD0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C1102390((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1C0F9DDE4(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1C10CB648(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C1266BB0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v11 = MEMORY[0x1E69E7CC0];
  result = sub_1C11023D0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v11;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = OUTLINED_FUNCTION_20_15();
        MEMORY[0x1C68F02D0](v6);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93568, &unk_1C12B3D30);
      swift_dynamicCast();
      v7 = v10;
      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C11023D0((v8 > 1), v9 + 1, 1);
        v7 = v10;
      }

      ++v5;
      *(v11 + 16) = v9 + 1;
      *(v11 + 16 * v9 + 32) = v7;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1C10CB7AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double sub_1C10CB814(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C10CB924();
  v6 = v4;
  if (a1)
  {
    if (v4)
    {

      if (v6 == a1)
      {
        return result;
      }
    }

    sub_1C10CD6A4(v2);
  }

  else
  {
    if (!v4)
    {
      return result;
    }
  }

  if (sub_1C10CB924())
  {
    sub_1C10CD68C(v2);
  }

  return result;
}

double sub_1C10CB8B8(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  sub_1C10CB814(Strong);

  return result;
}

uint64_t sub_1C10CB924()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v3 = sub_1C10CFC90(v1, v2, &unk_1C12B3A88);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return swift_weakLoadStrong();
}

double sub_1C10CB9E4(uint64_t a1)
{
  Strong = swift_weakLoadStrong();

  if (Strong == a1)
  {

    return sub_1C10CB8B8(a1);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_2_7();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_19_11(v7, v8, v9);
  }

  return result;
}

double sub_1C10CBAF4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v5 = sub_1C10CFC90(v3, v4, &unk_1C12B3A88);
  OUTLINED_FUNCTION_0_1(v5, v6, v7, v8, v9, v10, v11, v12, v18, v1);
  sub_1C1261F30();

  v13 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 16);
  v14 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 24);
  result = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 32);
  v16 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 40);
  v17 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 48);
  *a1 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration);
  *(a1 + 16) = v13;
  *(a1 + 24) = v14;
  *(a1 + 32) = result;
  *(a1 + 40) = v16;
  *(a1 + 48) = v17;
  return result;
}

double sub_1C10CBBB8@<D0>(uint64_t a1@<X8>)
{
  sub_1C10CBAF4(&v7);
  v2 = v8;
  v3 = v9;
  result = v10;
  v5 = v11;
  v6 = v12;
  *a1 = v7;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = result;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_1C10CBC1C(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *(a1 + 6);
  v7 = *a1;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  return sub_1C10CBC7C(&v7);
}

double sub_1C10CBC7C(__int128 *a1)
{
  v2 = a1[1];
  v12 = *a1;
  v13 = v2;
  v14 = a1[2];
  v15 = *(a1 + 6);
  v3 = v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration;
  v4 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 16);
  v16[0] = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration);
  v16[1] = v4;
  v16[2] = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 32);
  v17 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration + 48);
  if (sub_1C10CEB14(v16, &v12))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v6 - 16) = v1;
    *(v6 - 8) = &v12;
    OUTLINED_FUNCTION_19_11(v7, v8, v9);
  }

  else
  {
    v11 = v13;
    *v3 = v12;
    *(v3 + 16) = v11;
    result = *&v14;
    *(v3 + 32) = v14;
    *(v3 + 48) = v15;
  }

  return result;
}

void sub_1C10CBD64(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93548, &qword_1C12B3B18);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14[-1] - v3;
  if (sub_1C10CC9A8() <= a1 || (sub_1C10CE294(v14), v5 = v14[3], sub_1C0FFC7B0(v14, &qword_1EBE8FE30, &unk_1C12A1CC0), v5))
  {
    sub_1C10CD948(v4);
    sub_1C12622D0();
    v6 = OUTLINED_FUNCTION_21_6();
    v7(v6);
  }

  else
  {
    sub_1C10CD948(v4);
    sub_1C12622D0();
    v8 = OUTLINED_FUNCTION_21_6();
    v9(v8);
    v14[0] = MEMORY[0x1E69E7CC0];
    v10 = sub_1C0FF7688();
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        return;
      }

      if (i >= MEMORY[0x10])
      {
        break;
      }

      v12 = *(8 * i + 0x20);

      if (__OFADD__(i, 1))
      {
        __break(1u);
        break;
      }

      if (*(v12 + 121))
      {
        sub_1C1266A10();
        sub_1C1266A60();
        sub_1C1266A70();
        sub_1C1266A30();
      }

      else
      {
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C10CBF54(uint64_t result)
{
  if (*(result + 32))
  {
    if (*(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 32))
    {
      return result;
    }
  }

  else if ((*(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 32) & 1) == 0)
  {
    result = CGRectEqualToRect(*result, *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame));
    if (result)
    {
      return result;
    }
  }

  v2 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange + 8);

    v2(v1);

    return sub_1C0FCF004(v2, v3);
  }

  return result;
}

uint64_t sub_1C10CC00C(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame;
  v3 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 16);
  v6[0] = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame);
  v6[1] = v3;
  v7 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame + 32);
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return sub_1C10CBF54(v6);
}

void sub_1C10CC05C(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_visibilityPercentage);
  if (v6 != a1)
  {
    if (v6 <= 0.0)
    {
      v7 = sub_1C1261DE0();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
      sub_1C10CC4F4(v5);
    }

    v8 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange + 8);

      v8(v1);
      sub_1C0FCF004(v8, v9);
    }
  }
}

void sub_1C10CC158(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_visibilityPercentage);
  *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_visibilityPercentage) = a1;
  sub_1C10CC05C(v2);
}

void sub_1C10CC1C8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v6 = a2();
  sub_1C10CB510(v6);

  sub_1C10CB510(a1);
  v7 = sub_1C1262430();

  if (v7)
  {
  }

  else
  {
    a3(a1);
    v8 = *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
    if (v8)
    {
      v9 = *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange + 8);

      v8(v3);

      sub_1C0FCF004(v8, v9);
    }
  }
}

uint64_t sub_1C10CC2D4(uint64_t a1)
{
  sub_1C10CE294(&v24);
  if (*(&v25 + 1))
  {
    v3 = swift_allocObject();
    v4 = v25;
    *(v3 + 16) = v24;
    *(v3 + 32) = v4;
    *(v3 + 48) = v26;
    v5 = MEMORY[0x1E69E69C8];
    v6 = MEMORY[0x1E69E69B8];
  }

  else
  {
    sub_1C0FFC7B0(&v24, &qword_1EBE8FE30, &unk_1C12A1CC0);
    v3 = 0;
    v6 = 0;
    v5 = 0;
    *(&v24 + 1) = 0;
    *&v25 = 0;
  }

  *&v24 = v3;
  *(&v25 + 1) = v6;
  v26 = v5;
  sub_1C0FDB800(a1, &v21, &qword_1EBE8FE30, &unk_1C12A1CC0);
  if (*(&v22 + 1))
  {
    v7 = swift_allocObject();
    v8 = v22;
    *(v7 + 16) = v21;
    *(v7 + 32) = v8;
    *(v7 + 48) = v23;
    v9 = MEMORY[0x1E69E69C8];
    v10 = MEMORY[0x1E69E69B8];
  }

  else
  {
    sub_1C0FFC7B0(&v21, &qword_1EBE8FE30, &unk_1C12A1CC0);
    v7 = 0;
    v10 = 0;
    v9 = 0;
    *(&v21 + 1) = 0;
    *&v22 = 0;
  }

  *&v21 = v7;
  *(&v22 + 1) = v10;
  v23 = v9;
  v11 = sub_1C1262420();
  OUTLINED_FUNCTION_16_3();
  sub_1C0FFC7B0(v12, v13, v14);
  OUTLINED_FUNCTION_16_3();
  sub_1C0FFC7B0(v15, v16, v17);
  if ((v11 & 1) == 0)
  {
    sub_1C0FDB800(a1, &v24, &qword_1EBE8FE30, &unk_1C12A1CC0);
    sub_1C10CD460(&v24);
    v18 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange + 8);

      v18(v1);
      sub_1C0FCF004(v18, v19);
    }
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE8FE30, &unk_1C12A1CC0);
}

uint64_t sub_1C10CC4F4(uint64_t a1)
{
  v3 = sub_1C1261DE0();
  OUTLINED_FUNCTION_0();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8, &qword_1C12B3B80) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v33 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30[-v18];
  v34 = v1;
  sub_1C10CDF38(&v30[-v18]);
  v20 = *(v8 + 56);
  sub_1C0FDB800(v19, v11, &qword_1EBE91E68, &qword_1C12AC940);
  sub_1C0FDB800(a1, &v11[v20], &qword_1EBE91E68, &qword_1C12AC940);
  OUTLINED_FUNCTION_23_6(v11);
  if (v21)
  {
    sub_1C0FFC7B0(v19, &qword_1EBE91E68, &qword_1C12AC940);
    OUTLINED_FUNCTION_23_6(&v11[v20]);
    if (v21)
    {
      sub_1C0FFC7B0(v11, &qword_1EBE91E68, &qword_1C12AC940);
      return sub_1C0FFC7B0(a1, &qword_1EBE91E68, &qword_1C12AC940);
    }
  }

  else
  {
    sub_1C0FDB800(v11, v16, &qword_1EBE91E68, &qword_1C12AC940);
    OUTLINED_FUNCTION_23_6(&v11[v20]);
    if (!v21)
    {
      v27 = v32;
      (*(v32 + 32))(v7, &v11[v20], v3);
      sub_1C10CFC90(&qword_1EDE82F38, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v31 = sub_1C1265DE0();
      v28 = *(v27 + 8);
      v28(v7, v3);
      sub_1C0FFC7B0(v19, &qword_1EBE91E68, &qword_1C12AC940);
      v28(v16, v3);
      sub_1C0FFC7B0(v11, &qword_1EBE91E68, &qword_1C12AC940);
      v22 = v34;
      if (v31)
      {
        return sub_1C0FFC7B0(a1, &qword_1EBE91E68, &qword_1C12AC940);
      }

      goto LABEL_10;
    }

    sub_1C0FFC7B0(v19, &qword_1EBE91E68, &qword_1C12AC940);
    (*(v32 + 8))(v16, v3);
  }

  sub_1C0FFC7B0(v11, &qword_1EBE91EB8, &qword_1C12B3B80);
  v22 = v34;
LABEL_10:
  v23 = v33;
  sub_1C0FDB800(a1, v33, &qword_1EBE91E68, &qword_1C12AC940);
  sub_1C10CE098(v23);
  v24 = *(v22 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
  if (v24)
  {

    v24(v22);
    v25 = OUTLINED_FUNCTION_20_15();
    sub_1C0FCF004(v25, v26);
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE91E68, &qword_1C12AC940);
}

uint64_t sub_1C10CC908(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  result = a2();
  if (result != a1)
  {
    result = a3(a1);
    v7 = *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
    if (v7)
    {
      v8 = *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange + 8);

      v7(v3);

      return sub_1C0FCF004(v7, v8);
    }
  }

  return result;
}

void sub_1C10CC9E4(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1C10CCA58();
  if (v2 == 2)
  {
    if (v1 == 2)
    {
      return;
    }
  }

  else if (v1 != 2 && ((v2 ^ v1) & 1) == 0)
  {
    return;
  }

  sub_1C10CCAE8(v1);
}

uint64_t sub_1C10CCA58()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v3 = sub_1C10CFC90(v1, v2, &unk_1C12B3A88);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___containerTracksItemVisibility);
}

void sub_1C10CCAE8(int a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___containerTracksItemVisibility);
  if (v3 != 2)
  {
    if (a1 != 2 && ((v3 ^ a1) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    OUTLINED_FUNCTION_19_11(v6, v7, v8);

    return;
  }

  if (a1 != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___containerTracksItemVisibility) = a1;
}

void sub_1C10CCBB4(uint64_t a1, char a2)
{

  if (a2)
  {
    sub_1C10CC19C(v3);
  }

  else
  {
    sub_1C10CC170(v3);
  }

  sub_1C10CC9E4(1);
}

uint64_t sub_1C10CCBFC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v17[3] = v3;
  v17[4] = *(v4 + 8);
  __swift_allocate_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 16))();
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v16[3] = v6;
  v16[4] = *(v7 + 8);
  __swift_allocate_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_15_1();
  (*(v8 + 16))();
  LOBYTE(a2) = sub_1C1262420();
  OUTLINED_FUNCTION_16_3();
  sub_1C0FFC7B0(v9, v10, v11);
  OUTLINED_FUNCTION_16_3();
  sub_1C0FFC7B0(v12, v13, v14);
  return a2 & 1;
}

uint64_t sub_1C10CCD1C(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v7 = MEMORY[0x1EEE9AC00](v6);
    (*(v9 + 16))(v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_1C12668E0();
    sub_1C10CE450(a1, v10);

    return sub_1C0FD1A08(v10);
  }

  return result;
}

uint64_t sub_1C10CCE50(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93548, &qword_1C12B3B18);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93550, &qword_1C12B3B20);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v13);
  v36 = *a3;
  v35 = *(a3 + 2);
  v14 = *(a3 + 24);
  v15 = *(a3 + 4);
  v33 = *(a3 + 40);
  v34 = v14;
  v16 = *(a3 + 6);
  sub_1C1261E10();
  swift_weakInit();
  v17 = v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_frame;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 1;
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_visibilityPercentage) = 0;
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___colsPerPage) = 0;
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___containerTracksItemVisibility) = 2;
  v18 = (v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange);
  type metadata accessor for PhotosInlinePlaybackContainerModel(0);
  *v18 = 0;
  v18[1] = 0;
  sub_1C12622E0();
  OUTLINED_FUNCTION_15_19();
  v19();
  type metadata accessor for PhotosInlinePlayerModel(0);
  sub_1C12622E0();
  (*(v9 + 32))(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__weakPlayerModels, v12, v7);
  v20 = (v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__scrollSpeedometerObservation);
  *v20 = 0;
  v20[1] = 0;
  v21 = sub_1C1262FB0();
  OUTLINED_FUNCTION_22_9(v21);
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___scrollSpeed) = 0;
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___scrollPhase) = 0;
  v22 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___partiallyVisibleIDs) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___fullyVisibleIDs) = v22;
  v23 = sub_1C1261DE0();
  OUTLINED_FUNCTION_22_9(v23);
  v24 = v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___focusedID;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverID;
  *(v25 + 32) = 0;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverTimer) = 0;
  sub_1C1261F60();
  v26 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_coordinateSpaceName;
  v27 = sub_1C1263D00();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v3 + v26, a1, v27);
  *(v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_scrollViewTracker) = a2;
  v29 = v3 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration;
  *v29 = v36;
  *(v29 + 16) = v35;
  v30 = v33;
  *(v29 + 24) = v34;
  *(v29 + 32) = v15;
  *(v29 + 40) = v30;
  *(v29 + 48) = v16;

  sub_1C10CD5A0(v31, v3);

  (*(v28 + 8))(a1, v27);
  return v3;
}

uint64_t sub_1C10CD26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v12 = v3;
  v13 = a1;
  sub_1C10CE76C(KeyPath, a3, &v11);

  v7 = OUTLINED_FUNCTION_20_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_4_2();
  return (*(v9 + 8))(a1);
}

double sub_1C10CD32C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) != a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_7();
    *(v8 - 16) = v4;
    *(v8 - 8) = a1;
    sub_1C10CE76C(v9, a4, v10);
  }

  return result;
}

double sub_1C10CD3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v9 = v3;
  v10 = a1;
  sub_1C10CE76C(KeyPath, a3, &v8);

  return result;
}

uint64_t sub_1C10CD460(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___focusedID;
  swift_beginAccess();
  sub_1C0FDB800(v1 + v3, v14, &qword_1EBE8FE30, &unk_1C12A1CC0);
  v4 = sub_1C10CEB74(v14, a1);
  OUTLINED_FUNCTION_14_6();
  sub_1C0FFC7B0(v5, v6, v7);
  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_2_7();
    *(v9 - 16) = v1;
    *(v9 - 8) = a1;
    OUTLINED_FUNCTION_19_11(v10, v11, v12);
  }

  else
  {
    sub_1C0FDB800(a1, v14, &qword_1EBE8FE30, &unk_1C12A1CC0);
    swift_beginAccess();
    sub_1C10CFBD4(v14, v1 + v3, &qword_1EBE8FE30, &unk_1C12A1CC0);
    swift_endAccess();
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE8FE30, &unk_1C12A1CC0);
}

uint64_t sub_1C10CD5A0(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  swift_weakInit();

  sub_1C11C0644(sub_1C10CFB88, v2);

  swift_allocObject();
  swift_weakInit();

  v3 = sub_1C12663E0();
  v5 = v4;

  return sub_1C10CDC84(v3, v5);
}

double sub_1C10CD6BC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  sub_1C10CFC90(v4, v5, &unk_1C12B3A88);
  OUTLINED_FUNCTION_15_19();
  sub_1C1261F30();

  OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_15_19();
  sub_1C1261F50();

  OUTLINED_FUNCTION_7_22();
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93550, &qword_1C12B3B20);
  a2(a1, v6);
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_18_17(v7, v8);

  return result;
}

double sub_1C10CD808(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  sub_1C10CFC90(v4, v5, &unk_1C12B3A88);
  OUTLINED_FUNCTION_15_19();
  sub_1C1261F30();

  OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_15_19();
  sub_1C1261F50();

  OUTLINED_FUNCTION_7_22();
  swift_beginAccess();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93548, &qword_1C12B3B18);
  a2(a1, v6);
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_24_10();
  OUTLINED_FUNCTION_18_17(v7, v8);

  return result;
}

uint64_t sub_1C10CD96C@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v13 = sub_1C10CFC90(v11, v12, &unk_1C12B3A88);
  OUTLINED_FUNCTION_18_11(v13, v14, v15, v16, v17, v18, v19, v20, v25, v5);
  sub_1C1261F30();

  v21 = *a2;
  OUTLINED_FUNCTION_7_4(v9 + *a2, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  return (*(v23 + 16))(a5, v9 + v21);
}

uint64_t sub_1C10CDA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a7(v12);
}

uint64_t sub_1C10CDB10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  OUTLINED_FUNCTION_7_22();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_3();
  (*(v10 + 24))(a1 + v9, a2);
  return swift_endAccess();
}

uint64_t sub_1C10CDBAC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v3 = sub_1C10CFC90(v1, v2, &unk_1C12B3A88);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_1C1261F30();

  return swift_unknownObjectRetain();
}

uint64_t sub_1C10CDC48(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1C10CDC84(v3, v2);
}

uint64_t sub_1C10CDC84(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1C10CE76C(KeyPath, sub_1C10CFD34, &v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C10CDD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__scrollSpeedometerObservation);
  *v3 = a2;
  v3[1] = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C10CDD64(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v6 = sub_1C10CFC90(v4, v5, &unk_1C12B3A88);
  OUTLINED_FUNCTION_18_11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v2);
  sub_1C1261F30();

  return *(v2 + *a2);
}

double sub_1C10CDE40(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v5 = sub_1C10CFC90(v3, v4, &unk_1C12B3A88);
  OUTLINED_FUNCTION_18_11(v5, v6, v7, v8, v9, v10, v11, v12, v14, v2);
  sub_1C1261F30();

  return result;
}

void sub_1C10CDEF8(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + *a3) = a2;
}

uint64_t sub_1C10CDF38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v6 = sub_1C10CFC90(v4, v5, &unk_1C12B3A88);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v17, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___lastScrollDate;
  OUTLINED_FUNCTION_7_4(v2 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___lastScrollDate, v15);
  return sub_1C0FDB800(v2 + v14, a1, &qword_1EBE91E68, &qword_1C12AC940);
}

uint64_t sub_1C10CDFEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C0FDB800(a1, &v6 - v3, &qword_1EBE91E68, &qword_1C12AC940);
  return sub_1C10CE098(v4);
}

uint64_t sub_1C10CE098(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___lastScrollDate;
  swift_beginAccess();
  OUTLINED_FUNCTION_14_6();
  sub_1C0FDB800(v7, v8, v9, &qword_1C12AC940);
  v10 = sub_1C10CE814(v5, a1);
  OUTLINED_FUNCTION_16_3();
  sub_1C0FFC7B0(v11, v12, v13);
  if (v10)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_8_23();
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_2_7();
    *(v15 - 16) = v1;
    *(v15 - 8) = a1;
    OUTLINED_FUNCTION_19_11(v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    sub_1C0FDB800(v19, v20, v21, &qword_1C12AC940);
    swift_beginAccess();
    sub_1C10CFBD4(v5, v1 + v6, &qword_1EBE91E68, &qword_1C12AC940);
    swift_endAccess();
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE91E68, &qword_1C12AC940);
}

uint64_t sub_1C10CE218(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___lastScrollDate;
  swift_beginAccess();
  sub_1C10CFC40(a2, a1 + v4, &qword_1EBE91E68, &qword_1C12AC940);
  return swift_endAccess();
}

uint64_t sub_1C10CE294@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_37();
  v6 = sub_1C10CFC90(v4, v5, &unk_1C12B3A88);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v17, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___focusedID;
  OUTLINED_FUNCTION_7_4(v2 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___focusedID, v15);
  return sub_1C0FDB800(v2 + v14, a1, &qword_1EBE8FE30, &unk_1C12A1CC0);
}

uint64_t sub_1C10CE394(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___focusedID;
  swift_beginAccess();
  sub_1C10CFC40(a2, a1 + v4, &qword_1EBE8FE30, &unk_1C12A1CC0);
  return swift_endAccess();
}

uint64_t sub_1C10CE410()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_scrollViewTracker) + 32) regime];

  return sub_1C10CC4C8(v1);
}

void sub_1C10CE450(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverTimer);
  if (v3)
  {
    sub_1C0FE7B20();
    v6 = v3;
    v7 = a1;
    LOBYTE(a1) = sub_1C12666B0();

    if (a1)
    {
      sub_1C10CDE2C();
      MEMORY[0x1EEE9AC00](v8);
      v9 = sub_1C108D334();

      if (v9)
      {
        sub_1C0FF4B88(a2, v10);
        sub_1C10CC2D4(v10);
      }
    }
  }
}

uint64_t sub_1C10CE55C(void *a1, uint64_t a2)
{
  v10[3] = MEMORY[0x1E69E69B8];
  v10[4] = MEMORY[0x1E69E69C8];
  v10[0] = swift_allocObject();
  sub_1C0FF4B88(a2, v10[0] + 16);
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v9[3] = v4;
  v9[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  LOBYTE(v4) = sub_1C1262420();
  sub_1C0FFC7B0(v9, &qword_1EBE93540, &qword_1C12B3B10);
  sub_1C0FFC7B0(v10, &qword_1EBE93540, &qword_1C12B3B10);
  return v4 & 1;
}

void sub_1C10CE66C(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverTimer);
  if (a1)
  {
    if (v3)
    {
      sub_1C0FE7B20();
      v4 = v3;
      v5 = a1;
      v6 = sub_1C12666B0();

      if (v6)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  [a1 invalidate];
}

void sub_1C10CE70C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverTimer);
  *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverTimer) = a1;
  v2 = a1;
  sub_1C10CE66C(v3);
}

uint64_t sub_1C10CE76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_37();
  sub_1C10CFC90(v3, v4, &unk_1C12B3A88);
  return sub_1C1261F20();
}

uint64_t sub_1C10CE814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8, &qword_1C12B3B80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1C0FDB800(a1, &v20 - v12, &qword_1EBE91E68, &qword_1C12AC940);
  sub_1C0FDB800(a2, &v13[v15], &qword_1EBE91E68, &qword_1C12AC940);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_1C0FDB800(v13, v10, &qword_1EBE91E68, &qword_1C12AC940);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C10CFC90(&qword_1EDE82F38, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FFC7B0(v13, &qword_1EBE91E68, &qword_1C12AC940);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FFC7B0(v13, &qword_1EBE91EB8, &qword_1C12B3B80);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FFC7B0(v13, &qword_1EBE91E68, &qword_1C12AC940);
  v16 = 0;
  return v16 & 1;
}

BOOL sub_1C10CEB14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = *(a1 + 32);
  v8 = *(a1 + 48);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  return !static PhotosInlinePlaybackEnvironment.Configuration.== infix(_:_:)(v7, v5);
}

uint64_t sub_1C10CEB74(uint64_t a1, uint64_t a2)
{
  sub_1C0FDB800(a1, v9, &qword_1EBE8FE30, &unk_1C12A1CC0);
  sub_1C0FDB800(a2, &v11, &qword_1EBE8FE30, &unk_1C12A1CC0);
  if (!v10)
  {
    if (!*(&v12 + 1))
    {
      sub_1C0FFC7B0(v9, &qword_1EBE8FE30, &unk_1C12A1CC0);
      v4 = 0;
      return v4 & 1;
    }

LABEL_7:
    sub_1C0FFC7B0(v9, &qword_1EBE908E0, &qword_1C12B3B50);
    v4 = 1;
    return v4 & 1;
  }

  sub_1C0FDB800(v9, v8, &qword_1EBE8FE30, &unk_1C12A1CC0);
  if (!*(&v12 + 1))
  {
    sub_1C0FD1A08(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v3 = MEMORY[0x1C68F0200](v8, v6);
  sub_1C0FD1A08(v6);
  sub_1C0FD1A08(v8);
  sub_1C0FFC7B0(v9, &qword_1EBE8FE30, &unk_1C12A1CC0);
  v4 = v3 ^ 1;
  return v4 & 1;
}

uint64_t sub_1C10CECAC()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_id;
  sub_1C1261E20();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_coordinateSpaceName;
  sub_1C1263D00();
  OUTLINED_FUNCTION_4_2();
  (*(v4 + 8))(v0 + v3);
  swift_weakDestroy();

  sub_1C0FCF004(*(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange), *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_onChange + 8));
  v5 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__weakChildren;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93550, &qword_1C12B3B20);
  OUTLINED_FUNCTION_4_2();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__weakPlayerModels;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93548, &qword_1C12B3B18);
  OUTLINED_FUNCTION_4_2();
  (*(v8 + 8))(v0 + v7);
  swift_unknownObjectRelease();
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___scrollGeometry, &qword_1EBE93560, &qword_1C12B3D28);

  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___lastScrollDate, &qword_1EBE91E68, &qword_1C12AC940);
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___focusedID, &qword_1EBE8FE30, &unk_1C12A1CC0);
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverID, &qword_1EBE93538, &qword_1C12B3B08);

  v9 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v10 + 8))(v0 + v9);
  return v0;
}

uint64_t sub_1C10CEEDC()
{
  sub_1C10CECAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for PhotosInlinePlaybackContainerModel(uint64_t a1)
{
  result = qword_1EDE7FD50;
  if (!qword_1EDE7FD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C10CEF88(uint64_t a1)
{
  sub_1C1261E20();
  if (v1 <= 0x3F)
  {
    sub_1C1263D00();
    if (v2 <= 0x3F)
    {
      sub_1C10CF2C8(319, &qword_1EBE93528, type metadata accessor for PhotosInlinePlaybackContainerModel, MEMORY[0x1E69C43F0]);
      if (v3 <= 0x3F)
      {
        sub_1C10CF2C8(319, &qword_1EDE7C0A8, type metadata accessor for PhotosInlinePlayerModel, MEMORY[0x1E69C43F0]);
        if (v4 <= 0x3F)
        {
          sub_1C10CF2C8(319, &qword_1EDE7BFA8, MEMORY[0x1E697E4B8], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C10CF2C8(319, &qword_1EDE82F30, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C1261F70();
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C10CF2C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C10CF374@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_id;
  v5 = sub_1C1261E20();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_1C10CF414(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C11C0E00(v4);
    sub_1C10CC4F4(v4);
  }

  return result;
}

double sub_1C10CF4D4(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 2) != 0)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1C10CE410();
    }
  }

  return result;
}

uint64_t sub_1C10CF534(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = sub_1C10CCA58();
  if (v11 != 2 && (v11 & 1) == 0)
  {
    if (a3)
    {
      sub_1C10CDE2C();
      OUTLINED_FUNCTION_13_16(v12);
      sub_1C10CC19C(v16);
    }

    else
    {
      sub_1C10CDDEC();
      OUTLINED_FUNCTION_13_16(v13);
      sub_1C10CC170(v16);
    }
  }

  return (*(v7 + 8))(v10, a5);
}

uint64_t sub_1C10CF664(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[3] = a4;
  v16[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  v10 = (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
  if (a2)
  {
    MEMORY[0x1EEE9AC00](v10);
    v15 = v16;
    if (!sub_1C108D334())
    {
      sub_1C0FE37B4();
      v11 = *(*a1 + 16);
      sub_1C0FE3898();
      v12 = *a1;
      *(v12 + 16) = v11 + 1;
      sub_1C1094E90(v16, v12 + 40 * v11 + 32);
      *a1 = v12;
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  MEMORY[0x1EEE9AC00](v10);
  v15 = v16;
  result = sub_1C1106A94(sub_1C10CFE30, &v14);
  if (*(*a1 + 16) >= result)
  {
    sub_1C1106718();
    return __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C10CF7DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  __swift_allocate_boxed_opaque_existential_1(v39);
  OUTLINED_FUNCTION_15_1();
  (*(v7 + 16))();
  if (a2)
  {
    sub_1C10CBAF4(&v34);
    if (v37 == 1)
    {
      sub_1C1094E90(v39, &v34);
      v8 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverID;
      OUTLINED_FUNCTION_7_22();
      swift_beginAccess();
      sub_1C10CFBD4(&v34, a3 + v8, &qword_1EBE93538, &qword_1C12B3B08);
      swift_endAccess();
      v9 = objc_opt_self();
      sub_1C10CBAF4(&v34);
      v10 = v38;
      v11 = swift_allocObject();
      swift_weakInit();
      sub_1C1094E90(v39, v33);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      sub_1C0F9DDE4(v33, v12 + 24);
      v31 = sub_1C10CFB74;
      v32 = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C10CB7AC;
      v30 = &block_descriptor_8;
      v13 = _Block_copy(aBlock);

      v14 = [v9 scheduledTimerWithTimeInterval:0 repeats:v13 block:v10];
      _Block_release(v13);
LABEL_9:
      sub_1C10CE70C(v14);
      return __swift_destroy_boxed_opaque_existential_0Tm(v39);
    }
  }

  v15 = OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel_hoverID;
  swift_beginAccess();
  sub_1C0FDB800(a3 + v15, aBlock, &qword_1EBE93538, &qword_1C12B3B08);
  v16 = v30;
  if (v30)
  {
    v17 = v31;
    __swift_project_boxed_opaque_existential_1(aBlock, v30);
    *(&v35 + 1) = v16;
    v36 = *(v17 + 1);
    __swift_allocate_boxed_opaque_existential_1(&v34);
    OUTLINED_FUNCTION_15_1();
    (*(v18 + 16))();
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  }

  else
  {
    sub_1C0FFC7B0(aBlock, &qword_1EBE93538, &qword_1C12B3B08);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  v19 = v40;
  v20 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v30 = v19;
  v31 = *(v20 + 8);
  __swift_allocate_boxed_opaque_existential_1(aBlock);
  OUTLINED_FUNCTION_15_1();
  (*(v21 + 16))();
  LOBYTE(v19) = sub_1C1262420();
  OUTLINED_FUNCTION_14_6();
  sub_1C0FFC7B0(v22, v23, v24);
  OUTLINED_FUNCTION_14_6();
  sub_1C0FFC7B0(v25, v26, v27);
  if (v19)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    OUTLINED_FUNCTION_7_22();
    swift_beginAccess();
    sub_1C10CFBD4(&v34, a3 + v15, &qword_1EBE93538, &qword_1C12B3B08);
    swift_endAccess();
    v14 = 0;
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v39);
}

uint64_t sub_1C10CFBD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1C10CFC40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 24))(v4, v5);
  return v4;
}

uint64_t sub_1C10CFC90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1C10CFDE8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC17PhotosSwiftUICore34PhotosInlinePlaybackContainerModel__configuration;
  v4 = v1[1];
  result = v1[2];
  v5 = *v1;
  *(v2 + 48) = *(v1 + 6);
  *(v2 + 16) = v4;
  *(v2 + 32) = result;
  *v2 = v5;
  return result;
}

void sub_1C10CFECC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

void PhotosFolderMultiAssetView.init(_:columns:aspectRatio:cornerRadiusOverlayColor:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, double a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = a2;
  }

  if (a5)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = a4;
  }

  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a7 + 40), __src, 0xD1uLL);
  *(a7 + 256) = swift_getKeyPath();
  *(a7 + 264) = 0;
  v12 = type metadata accessor for PhotosFolderMultiAssetView(0);
  v13 = *(v12 + 44);
  *(a7 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v14 = a7 + *(v12 + 48);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *a7 = a1;
  *(a7 + 8) = v10;
  *(a7 + 16) = v11;
  *(a7 + 24) = a6;

  v16 = sub_1C10D00C8(v15, v10);

  *(a7 + 32) = v16;
}

uint64_t type metadata accessor for PhotosFolderMultiAssetView(uint64_t a1)
{
  result = qword_1EDE80F48;
  if (!qword_1EDE80F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C10D00C8(unint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 >> 62)
    {
      goto LABEL_28;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    v4 = 0;
  }

  while (1)
  {
    if (a2 + 0x4000000000000000 < 0)
    {
      goto LABEL_26;
    }

    v5 = 2 * a2;
    if (((2 * a2) & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    v4 = sub_1C1266BB0();
  }

  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = 0;
      if (a1 && v6 < v4)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1C68F02D0](v6, a1);
        }

        else
        {
          if (v6 < 0)
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v8 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
        }
      }

      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C0FE408C();
        v7 = v11;
      }

      v9 = *(v7 + 16);
      if (v9 >= *(v7 + 24) >> 1)
      {
        sub_1C0FE408C();
        v7 = v12;
      }

      swift_unknownObjectRelease();
      *(v7 + 16) = v9 + 1;
      v10 = v7 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v8;
      a2 = ++v6;
      if (v5 == v6)
      {
        return v7;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C10D0268()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 256);
  if (*(v0 + 264) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1C10D03B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PhotosFolderMultiAssetView(0);
  sub_1C10D1A1C(v1 + *(v10 + 44), v9, &unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

BOOL sub_1C10D05B8()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for PhotosFolderMultiAssetView(0) + 48);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  return v7 == 5;
}

uint64_t sub_1C10D071C()
{
  v1 = sub_1C12629F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    v9 = *(v0 + 24);
  }

  else
  {
    memcpy(v26, (v0 + 40), 0xD1uLL);
    memcpy(v27, (v0 + 40), 0xD1uLL);
    if (sub_1C100D688(v27) == 1)
    {
      nullsub_1();
      memcpy(v23, v26, 0xD1uLL);
      nullsub_1();
      memcpy(v25, v10, sizeof(v25));
      memcpy(v24, v26, 0xD1uLL);
      nullsub_1();
      sub_1C100D690(v11, &v22);
    }

    else
    {
      nullsub_1();
      memcpy(v23, v26, 0xD1uLL);
      nullsub_1();
      v21 = *v12;
      memcpy(v24, v26, 0xD1uLL);
      nullsub_1();

      sub_1C1266420();
      v13 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(v26, &qword_1EBE91C80, &qword_1C12A75B0);
      (*(v6 + 8))(v8, v5);
    }

    memcpy(v24, v25, 0xD0uLL);
    v14 = v24[16];
    v15 = v24[17];
    v16 = v24[18];
    v17 = v24[19];
    sub_1C1012620(v24[16], v24[17], v24[18], v24[19]);
    sub_1C100C7D0(v24);
    v23[0] = v14;
    v23[1] = v15;
    v23[2] = v16;
    v23[3] = v17;
    sub_1C10D03B0(v4);
    v18 = sub_1C10D0268();
    sub_1C10C37D8(v4, v18 & 1);
    v9 = v19;
    (*(v2 + 8))(v4, v1);
    sub_1C1001C84(v23[0], v23[1], v23[2], v23[3]);
  }

  return v9;
}

void sub_1C10D0A4C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PhotosAssetView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(v2 + 8);
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = a1[1];
  v28 = a2;
  if (v8 == v9 - 1)
  {
LABEL_5:
    swift_unknownObjectRetain();
    v11 = sub_1C10D05B8();
    v12 = sub_1C1200D04();
    [v12 setNetworkAccessAllowed_];
    *(v7 + 19) = swift_getKeyPath();
    v7[160] = 0;
    v13 = v5[12];
    *&v7[v13] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
    swift_storeEnumTagMultiPayload();
    v14 = &v7[v5[13]];
    *v14 = swift_getKeyPath();
    v14[8] = 0;
    v15 = &v7[v5[14]];
    *v15 = swift_getKeyPath();
    v15[8] = 0;
    *v7 = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    v7[48] = 1;
    v7[8] = 0;
    *(v7 + 2) = 0;
    *(v7 + 3) = 0;
    *(v7 + 52) = !v11;
    *(v7 + 60) = 0;
    v7[68] = !v11;
    v7[69] = v11;
    *(v7 + 9) = 0;
    v7[80] = 1;
    *(v7 + 11) = v10;
    *(v7 + 12) = 0;
    *(v7 + 13) = v12;
    *(v7 + 7) = 0u;
    *(v7 + 8) = 0u;
    v7[144] = 2;
    v16 = sub_1C10D071C();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935D0, &qword_1C12B3F08);
    v18 = v28;
    v19 = (v28 + *(v17 + 36));
    v20 = *(sub_1C1263E90() + 20);
    v21 = *MEMORY[0x1E697F468];
    v22 = sub_1C12639D0();
    (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
    sub_1C1263D30();
    *v19 = v23;
    *(v19 + 1) = v24;
    *(v19 + 2) = v25;
    *(v19 + 3) = v26;
    *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE984E0, &unk_1C12A77D0) + 36)] = v16;
    sub_1C10D19BC(v7, v18, type metadata accessor for PhotosAssetView);
    return;
  }

  if (v9 + 0x4000000000000000 < 0)
  {
    goto LABEL_7;
  }

  if (!__OFSUB__(2 * v9, 1))
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
}

uint64_t PhotosFolderMultiAssetView.body.getter@<X0>(uint64_t *a7@<X8>)
{
  *a7 = sub_1C12659A0();
  a7[1] = v9;
  v10 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93578, &qword_1C12B3E40) + 44);
  *v10 = sub_1C1263AA0();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93580, &qword_1C12B3E48);
  return sub_1C10D0E20(v7, &v10[*(v11 + 44)]);
}

uint64_t sub_1C10D0E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935B0, &qword_1C12B3EE8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  *v15 = sub_1C12638E0();
  *(v15 + 1) = 0x4010000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935B8, &qword_1C12B3EF0);
  sub_1C10D1038(a1, &v15[*(v16 + 44)]);
  *v12 = sub_1C12638E0();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  sub_1C10D12D8(a1, &v12[*(v16 + 44)]);
  sub_1C10D1A1C(v15, v9, &qword_1EBE935B0, &qword_1C12B3EE8);
  sub_1C10D1A1C(v12, v6, &qword_1EBE935B0, &qword_1C12B3EE8);
  sub_1C10D1A1C(v9, a2, &qword_1EBE935B0, &qword_1C12B3EE8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935C0, &qword_1C12B3EF8);
  sub_1C10D1A1C(v6, a2 + *(v17 + 48), &qword_1EBE935B0, &qword_1C12B3EE8);
  sub_1C0FD1A5C(v12, &qword_1EBE935B0, &qword_1C12B3EE8);
  sub_1C0FD1A5C(v15, &qword_1EBE935B0, &qword_1C12B3EE8);
  sub_1C0FD1A5C(v6, &qword_1EBE935B0, &qword_1C12B3EE8);
  return sub_1C0FD1A5C(v9, &qword_1EBE935B0, &qword_1C12B3EE8);
}

uint64_t sub_1C10D1038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = type metadata accessor for PhotosFolderMultiAssetView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = *(a1 + 8);
  if (v11 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1C10CFECC(0, v11, *(a1 + 32));
  v2 = v12;
  v3 = v13;
  v4 = v14;
  v5 = v15;
  if ((v15 & 1) == 0)
  {
LABEL_3:
    sub_1C112F908(v2, v3, v4, v5);
    v17 = v16;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v23[0] = a2;
  sub_1C1266D70();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v18 + 16);

  if (__OFSUB__(v5 >> 1, v4))
  {
    goto LABEL_13;
  }

  if (v19 != (v5 >> 1) - v4)
  {
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v17 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v17)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

LABEL_11:
  v23[1] = v17;
  sub_1C10D1834(a1, v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_1C10D19BC(v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PhotosFolderMultiAssetView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935C8, &qword_1C12B3F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935D0, &qword_1C12B3F08);
  sub_1C0FDB6D4(&qword_1EBE935D8, &qword_1EBE935C8, &qword_1C12B3F00, MEMORY[0x1E69E6338]);
  sub_1C10D18B0();
  sub_1C10D1968();
  return sub_1C1265690();
}

uint64_t sub_1C10D12D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = type metadata accessor for PhotosFolderMultiAssetView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = *(a1 + 8);
  if (v11 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (2 * v11 < v11)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1C10CFECC(v11, 2 * v11, *(a1 + 32));
  v2 = v12;
  v3 = v13;
  v4 = v14;
  v5 = v15;
  if ((v15 & 1) == 0)
  {
LABEL_4:
    sub_1C112F908(v2, v3, v4, v5);
    v17 = v16;
LABEL_11:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v23[0] = a2;
  sub_1C1266D70();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v18 + 16);

  if (__OFSUB__(v5 >> 1, v4))
  {
    goto LABEL_15;
  }

  if (v19 != (v5 >> 1) - v4)
  {
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  v17 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v17)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

LABEL_12:
  v23[1] = v17;
  sub_1C10D1834(a1, v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_1C10D19BC(v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PhotosFolderMultiAssetView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935C8, &qword_1C12B3F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935D0, &qword_1C12B3F08);
  sub_1C0FDB6D4(&qword_1EBE935D8, &qword_1EBE935C8, &qword_1C12B3F00, MEMORY[0x1E69E6338]);
  sub_1C10D18B0();
  sub_1C10D1968();
  return sub_1C1265690();
}

void sub_1C10D15B8(uint64_t a1)
{
  sub_1C10D1780(319);
  if (v1 <= 0x3F)
  {
    sub_1C10D17E4(319, &qword_1EDE76CE0, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C10D17E4(319, &unk_1EDE76AE0, &type metadata for PhotosMultiAssetViewItem, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C10D17E4(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C10D17E4(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1C1011E54(319);
            if (v6 <= 0x3F)
            {
              sub_1C10D17E4(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C10D1780(uint64_t a1)
{
  if (!qword_1EDE76AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93590, &qword_1C12B3ED8);
    v1 = sub_1C1266790();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE76AA0);
    }
  }
}

void sub_1C10D17E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C10D1834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosFolderMultiAssetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10D18B0()
{
  result = qword_1EBE935E0;
  if (!qword_1EBE935E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE935D0, &qword_1C12B3F08);
    sub_1C0FF746C();
    sub_1C0FDB6D4(qword_1EDE7AE20, &qword_1EBE984E0, &unk_1C12A77D0, &protocol conformance descriptor for PhotosShapeOverlay<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE935E0);
  }

  return result;
}

unint64_t sub_1C10D1968()
{
  result = qword_1EBE935F0;
  if (!qword_1EBE935F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE935F0);
  }

  return result;
}

uint64_t sub_1C10D19BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C10D1A1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for PhotosFolderMultiAssetView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1C1001C10(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 120), *(v2 + 128), *(v2 + 136), *(v2 + 144), *(v2 + 152), *(v2 + 160), *(v2 + 168), *(v2 + 176), *(v2 + 184), *(v2 + 192), *(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224), *(v2 + 232), *(v2 + 240), *(v2 + 248));
  sub_1C0FA03F4(*(v2 + 256), *(v2 + 264));
  v3 = *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_1C0FA03F4(*(v2 + *(v1 + 48)), *(v2 + *(v1 + 48) + 8));

  return swift_deallocObject();
}

uint64_t sub_1C10D1C28(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PhotosFolderMultiAssetView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void *sub_1C10D1CEC@<X0>(char a1@<W0>, void *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>)
{
  __src[66] = a1 & 1;
  sub_1C10D1D38(a1 & 1, a3, a4, a5 & 1, __src);
  return memcpy(a2, __src, 0x43uLL);
}

void *sub_1C10D1D38@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = sub_1C12637E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &__src[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a4)
  {
    v31 = a2;
    v32 = a3;
    swift_unknownObjectRetain();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(__src, 0, 26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935F8, &qword_1C12B4068);
    sub_1C0FDB6D4(&qword_1EBE93600, &qword_1EBE935F8, &qword_1C12B4068, MEMORY[0x1E6981F48]);
    sub_1C1263C20();
    v29 = BYTE9(__dst[1]);
    v28 = 0;
    *__src = __dst[0];
    *&__src[16] = *&__dst[1];
    *&__src[24] = WORD4(__dst[1]);
    __src[65] = 0;
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93608, &qword_1C12B4070);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93610, &qword_1C12B4078);
    sub_1C10D22F4();
    sub_1C0FDB6D4(&qword_1EBE93620, &qword_1EBE93610, &qword_1C12B4078, &unk_1C12B1340);
    sub_1C1263C20();
    return memcpy(a5, __dst, 0x42uLL);
  }

  sub_1C1266420();
  v22 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();
  v23 = sub_1C0FF9034(a2, a3, 0);
  (*(v11 + 8))(v13, v10, v23);
  if (!v31)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = v32;
  ObjectType = swift_getObjectType();
  (*(v14 + 208))(ObjectType, v14);
  v17 = v16;
  swift_unknownObjectRelease();
  v18 = swift_getObjectType();
  (*(v17 + 8))(__dst, v18, v17);
  swift_unknownObjectRelease();
  v19 = __dst[0];
  v20 = a1 & 1;
  if (LOBYTE(__dst[0]) != 3)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    KeyPath = swift_getKeyPath();
    v28 = 0;
    v29 = 1;
    __src[0] = v20;
    *&__src[8] = nullsub_1;
    *&__src[16] = 0;
    *&__src[24] = sub_1C10D23AC;
    *&__src[32] = v24;
    *&__src[40] = nullsub_1;
    *&__src[48] = 0;
    *&__src[56] = KeyPath;
    *&__src[64] = 256;
    goto LABEL_8;
  }

  swift_getKeyPath();

  *__src = v20;
  *&__src[8] = 0x4044000000000000;
  *&__src[16] = v21;
  *&__src[24] = 256;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE935F8, &qword_1C12B4068);
  sub_1C0FDB6D4(&qword_1EBE93600, &qword_1EBE935F8, &qword_1C12B4068, MEMORY[0x1E6981F48]);
  sub_1C1263C20();
  v29 = BYTE9(__dst[1]);
  v28 = 0;
  BYTE1(__dst[4]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93608, &qword_1C12B4070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93610, &qword_1C12B4078);
  sub_1C10D22F4();
  sub_1C0FDB6D4(&qword_1EBE93620, &qword_1EBE93610, &qword_1C12B4078, &unk_1C12B1340);
  sub_1C1263C20();

  memcpy(__dst, __src, 0x42uLL);
  return memcpy(a5, __dst, 0x42uLL);
}

uint64_t sub_1C10D2244@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = a1 != 0;
  *a2 = a1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = sub_1C1023064;
  *(a2 + 40) = result;
  return result;
}

unint64_t sub_1C10D22F4()
{
  result = qword_1EBE93618;
  if (!qword_1EBE93618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93608, &qword_1C12B4070);
    sub_1C0FDB6D4(&qword_1EBE93600, &qword_1EBE935F8, &qword_1C12B4068, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93618);
  }

  return result;
}

uint64_t EnvironmentValues.oneUpChromeActionsDelegate.getter()
{
  sub_1C10D2430();
  sub_1C12637F0();
  if (!v2)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

unint64_t sub_1C10D2430()
{
  result = qword_1EDE7C7D8[0];
  if (!qword_1EDE7C7D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7C7D8);
  }

  return result;
}

uint64_t sub_1C10D2484@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.oneUpChromeActionsDelegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10D24B0(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return EnvironmentValues.oneUpChromeActionsDelegate.setter(v3, v2);
}

uint64_t EnvironmentValues.oneUpChromeActionsDelegate.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakChromeActionDelegateReference();
  swift_allocObject();
  v3 = swift_unknownObjectRetain();
  sub_1C0FEB470(v3, a2);
  sub_1C10D2430();
  sub_1C1263800();
  return swift_unknownObjectRelease();
}

void (*EnvironmentValues.oneUpChromeActionsDelegate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v3[4] = sub_1C10D2430();
  sub_1C12637F0();
  v4 = v3[2];
  if (v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 24);
  }

  else
  {
    Strong = 0;
    v6 = 0;
  }

  *v3 = Strong;
  v3[1] = v6;
  return sub_1C10D2650;
}

void sub_1C10D2650(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  type metadata accessor for WeakChromeActionDelegateReference();
  swift_allocObject();
  v5 = swift_unknownObjectRetain();
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    v7 = sub_1C0FEB470(v6, v4);
    v3[2] = v7;
    OUTLINED_FUNCTION_48(v7, &type metadata for OneUpChromeActionsDelegateKey);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = sub_1C0FEB470(v5, v4);
    v3[2] = v8;
    OUTLINED_FUNCTION_48(v8, &type metadata for OneUpChromeActionsDelegateKey);
  }

  swift_unknownObjectRelease();

  free(v3);
}

uint64_t Array<A>.identical(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C12661A0();
  swift_getWitnessTable();
  return sub_1C1265FB0() & 1;
}

uint64_t Optional<A>.identical(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v14 = *(v13 + 16);
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  v21 = *(v7 + 16);
  v21(v12, v4, a2, v18);
  OUTLINED_FUNCTION_0_38(v12);
  if (v22)
  {
    v9 = v12;
  }

  else
  {
    v31 = v4;
    v30 = *(v34 + 32);
    v30(v20, v12, v14);
    (v21)(v9, a1, a2);
    OUTLINED_FUNCTION_0_38(v9);
    if (!v22)
    {
      v25 = v32;
      v30(v32, v9, v14);
      v26 = (*(v33 + 8))(v25, v14);
      v27 = *(v34 + 8);
      v27(v25, v14);
      v27(v20, v14);
      return v26 & 1;
    }

    (*(v34 + 8))(v20, v14);
    v4 = v31;
  }

  (*(v7 + 8))(v9, a2);
  OUTLINED_FUNCTION_0_38(v4);
  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  OUTLINED_FUNCTION_0_38(a1);
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v26 = v23 ^ v24;
  return v26 & 1;
}

uint64_t PhotosTripCellSizeClass.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

__n128 PhotosTripCell.init(_:size:titlePadding:content:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v15 = *a2;
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a7;
  __src[3] = a9;
  __src[4] = a10;
  v16 = type metadata accessor for PhotosTripCell(0, __src);
  v17 = a8 + v16[18];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v16[19];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a8 + v18), __src, 0xD1uLL);
  v19 = v16[20];
  *(a8 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v20 = a8 + v16[21];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  a4();
  (*(*(a5 - 8) + 32))(a8, a1, a5);
  *(a8 + v16[16]) = v15;
  v21 = a8 + v16[17];
  result = *a3;
  v23 = *(a3 + 16);
  *v21 = *a3;
  *(v21 + 16) = v23;
  *(v21 + 32) = *(a3 + 32);
  return result;
}

void sub_1C10D2D88(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 72);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C10D2EE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 76);
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
    sub_1C0FD1A5C(v17, &qword_1EBE91C80, &qword_1C12A75B0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C10D3100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1C10D1A1C(v2 + *(a1 + 80), &v17 - v12, &unk_1EBE91930, &qword_1C12A3650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C12629F0();
    OUTLINED_FUNCTION_3();
    return (*(v14 + 32))(a2, v13);
  }

  else
  {
    sub_1C1266420();
    v16 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v10, v5);
  }
}

uint64_t sub_1C10D32E8(uint64_t a1)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 84);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*(v7 + 9) != 1)
  {

    sub_1C1266420();
    v10 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v11 = sub_1C1058610(v8, v9, 0);
    (*(v4 + 8))(v6, v3, v11);
    return v13;
  }

  return v8;
}

uint64_t PhotosTripCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_17_17();
  v87 = v2;
  sub_1C1263C30();
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  v4 = sub_1C1263190();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93640, &qword_1C12B42D8);
  v88 = a1;
  v138 = *(a1 + 48);
  v139 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v137[6] = WitnessTable;
  v137[7] = v138;
  OUTLINED_FUNCTION_19_0();
  v6 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v9 = sub_1C0FDB6D4(v7, &qword_1EBE91C40, &unk_1C12A7010, v8);
  v137[4] = v6;
  v137[5] = v9;
  v79 = v9;
  v137[0] = v4;
  v137[1] = v5;
  v137[2] = swift_getWitnessTable();
  v137[3] = sub_1C10D3E38();
  type metadata accessor for PhotosContentTitleCard(255, v137);
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  OUTLINED_FUNCTION_15_20();
  sub_1C1263190();
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  sub_1C1263190();
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  sub_1C1263190();
  OUTLINED_FUNCTION_7_23();
  v135 = swift_getWitnessTable();
  v136 = MEMORY[0x1E697E5D8];
  v10 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v133 = v10;
  v134 = sub_1C0FDB6D4(v11, qword_1EBE92178, &unk_1C12AD460, v12);
  v13 = swift_getWitnessTable();
  v80 = MEMORY[0x1E6980A18];
  v86 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v131 = v13;
  v132 = v86;
  v129 = swift_getWitnessTable();
  v130 = v9;
  v14 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v84 = sub_1C0FDB6D4(v15, &unk_1EBE92ED0, &unk_1C12A8E80, v16);
  v127 = v14;
  v128 = v84;
  v17 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_5();
  v81 = sub_1C0FDB6D4(v18, &unk_1EBE91C30, &qword_1C12B2020, v19);
  v125 = v17;
  v126 = v81;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v20 = sub_1C12655C0();
  OUTLINED_FUNCTION_13_17(v20);
  v21 = OUTLINED_FUNCTION_6_0();
  v93 = type metadata accessor for PhotosDetailsPresentationSourceView(v21, v22, v23, v24);
  v94 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v78 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v77 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v76 - v29;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93668, &unk_1C12B42F0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93670, &qword_1C12A7770);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  type metadata accessor for PhotosLegibilityBlurModifier(255);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263190();
  OUTLINED_FUNCTION_15_20();
  sub_1C1263190();
  OUTLINED_FUNCTION_17_17();
  v92 = sub_1C1263190();
  v30 = v79;
  v123 = WitnessTable;
  v124 = v79;
  v31 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  v34 = sub_1C0FDB6D4(v32, &qword_1EBE93668, &unk_1C12B42F0, v33);
  v121 = v31;
  v122 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670, &qword_1C12A7770, v80);
  v119 = v35;
  v120 = v36;
  v37 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_24();
  v40 = sub_1C10D7E94(v38, v39, &unk_1C12B1EE4);
  v117 = v37;
  v118 = v40;
  v115 = swift_getWitnessTable();
  v116 = v86;
  v113 = swift_getWitnessTable();
  v114 = v30;
  v111 = swift_getWitnessTable();
  v112 = v84;
  v109 = swift_getWitnessTable();
  v110 = v81;
  swift_getWitnessTable();
  v41 = OUTLINED_FUNCTION_6_0();
  WitnessTable = type metadata accessor for PhotosDetailsPresentationSourceView(v41, v42, v43, v44);
  v45 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v76 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v76 - v52;
  sub_1C1263C30();
  OUTLINED_FUNCTION_0();
  v86 = v55;
  v87 = v54;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v92 = &v76 - v57;
  if (MEMORY[0x1C68F0CE0](v56))
  {
    sub_1C10D3F1C(v88, v50);
    OUTLINED_FUNCTION_0_22();
    v58 = swift_getWitnessTable();
    v59 = sub_1C100D614();
    v97 = v58;
    v98 = v59;
    OUTLINED_FUNCTION_9_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_18_18();
    sub_1C0FDBA4C();
    v60 = *(v47 + 8);
    v61 = OUTLINED_FUNCTION_18_18();
    v60(v61);
    sub_1C0FDBA4C();
    v95 = swift_getWitnessTable();
    v96 = v59;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_18_18();
    sub_1C1112D68();
    v62 = OUTLINED_FUNCTION_18_18();
    v60(v62);
    (v60)(v53, v45);
  }

  else
  {
    v63 = v77;
    sub_1C10D4DBC(v88, v77);
    v89 = &unk_1C12AF200;
    v64 = swift_getWitnessTable();
    v65 = sub_1C100D614();
    v107 = v64;
    v108 = v65;
    OUTLINED_FUNCTION_9_0();
    v66 = v94;
    swift_getWitnessTable();
    v67 = v76;
    sub_1C0FDBA4C();
    v68 = *(v78 + 8);
    v68(v63, v66);
    sub_1C0FDBA4C();
    v105 = swift_getWitnessTable();
    v106 = v65;
    swift_getWitnessTable();
    sub_1C1112E18();
    v68(v63, v66);
    v68(v67, v66);
  }

  OUTLINED_FUNCTION_0_22();
  v69 = swift_getWitnessTable();
  v70 = sub_1C100D614();
  v103 = v69;
  v104 = v70;
  OUTLINED_FUNCTION_9_0();
  v71 = swift_getWitnessTable();
  v101 = swift_getWitnessTable();
  v102 = v70;
  v72 = swift_getWitnessTable();
  v99 = v71;
  v100 = v72;
  OUTLINED_FUNCTION_19_0();
  v73 = v87;
  swift_getWitnessTable();
  v74 = v92;
  sub_1C0FDBA4C();
  return (*(v86 + 8))(v74, v73);
}

unint64_t sub_1C10D3E38()
{
  result = qword_1EDE774B0;
  if (!qword_1EDE774B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93640, &qword_1C12B42D8);
    sub_1C0FDB6D4(&unk_1EDE7A388, &unk_1EBE93650, &qword_1C12B42E0, &protocol conformance descriptor for PhotosTitleAccessoryStack<A, B, C, D>);
    sub_1C0FDB6D4(&qword_1EDE7B988, &qword_1EBE93660, &qword_1C12B42E8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774B0);
  }

  return result;
}

uint64_t sub_1C10D3F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v106 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v106);
  v107 = (&v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(a1 + 24);
  v83 = a1;
  v103 = v4;
  *&v124 = sub_1C1263190();
  v109 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v101 = &v82 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  *&v122 = sub_1C1263190();
  v111 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v102 = &v82 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93668, &unk_1C12B42F0);
  v7 = sub_1C1263190();
  v110 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v82 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93670, &qword_1C12A7770);
  v88 = v7;
  v9 = sub_1C1263190();
  v108 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v82 - v10;
  type metadata accessor for PhotosLegibilityBlurModifier(255);
  v89 = v9;
  v11 = sub_1C1263190();
  v118 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v82 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  v117 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v13 = sub_1C1263190();
  v113 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v82 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  v15 = sub_1C1263190();
  v116 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v82 - v16;
  v121 = *(a1 + 48);
  v157 = v121;
  v158 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v84 = WitnessTable;
  v18 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v155 = WitnessTable;
  v156 = v18;
  v19 = swift_getWitnessTable();
  v87 = v19;
  v20 = sub_1C0FDB6D4(&qword_1EBE93678, &qword_1EBE93668, &unk_1C12B42F0, MEMORY[0x1E697EC18]);
  v153 = v19;
  v154 = v20;
  v21 = swift_getWitnessTable();
  v86 = v21;
  v22 = MEMORY[0x1E6980A18];
  v23 = sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670, &qword_1C12A7770, MEMORY[0x1E6980A18]);
  v151 = v21;
  v152 = v23;
  v24 = swift_getWitnessTable();
  v85 = v24;
  v25 = sub_1C10D7E94(qword_1EDE79E80, type metadata accessor for PhotosLegibilityBlurModifier, &unk_1C12B1EE4);
  v149 = v24;
  v150 = v25;
  v119 = v11;
  v26 = swift_getWitnessTable();
  v27 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, v22);
  v91 = v26;
  v147 = v26;
  v148 = v27;
  v145 = swift_getWitnessTable();
  v146 = v18;
  v28 = swift_getWitnessTable();
  v29 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v143 = v28;
  v144 = v29;
  v115 = v13;
  v30 = swift_getWitnessTable();
  v31 = sub_1C0FDB6D4(&qword_1EDE7B9E0, &unk_1EBE91C30, &qword_1C12B2020, MEMORY[0x1E6980758]);
  v90 = v30;
  v141 = v30;
  v142 = v31;
  v32 = swift_getWitnessTable();
  v117 = v15;
  v92 = v32;
  v34 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v15, v32, v33);
  v95 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v93 = &v82 - v35;
  v97 = v36;
  v37 = sub_1C1263190();
  v98 = *(v37 - 8);
  v99 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v94 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v96 = &v82 - v40;
  v41 = v83;
  sub_1C10D2EE4(v83, v159);
  sub_1C100C7D0(v159);
  v42 = *v159;
  if (sub_1C10D3454(v41))
  {
    v43 = 0.0;
  }

  else
  {
    v43 = v42 * 0.5;
  }

  v44 = v101;
  v45 = v103;
  sub_1C12649E0();
  v46 = *(v106 + 20);
  v47 = *MEMORY[0x1E697F468];
  v48 = sub_1C12639D0();
  v49 = v107;
  (*(*(v48 - 8) + 104))(v107 + v46, v47, v48);
  *v49 = v43;
  v49[1] = v43;
  sub_1C10D7E94(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  v50 = v124;
  sub_1C1009334();
  v51 = v102;
  sub_1C1265050();
  sub_1C100867C(v49);
  (*(v109 + 8))(v44, v50);
  sub_1C1265960();
  v52 = *(v41 + 16);
  *&v53 = v52;
  *(&v53 + 1) = v45;
  v124 = *(v41 + 32);
  v125 = v53;
  v126 = v124;
  v54 = v123;
  v127 = v121;
  v128 = v123;
  sub_1C10D7EEC();
  v55 = v105;
  v56 = v122;
  sub_1C1264F60();
  v57 = v54;
  v58 = v100;
  (*(v111 + 8))(v51, v56);
  sub_1C1265190();
  v59 = v104;
  v60 = v88;
  sub_1C1264BD0();

  (*(v110 + 8))(v55, v60);
  v61 = v89;
  View.photosLegibilityBlur(enabled:height:radius:edge:)(1, 0, 1, 0, 1, 3, v89, v85);
  (*(v108 + 8))(v59, v61);
  sub_1C10D2EE4(v41, v137);
  memcpy(v136, v138, sizeof(v136));
  sub_1C100D690(v137, v140);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v62 = qword_1EDE82B08;
  v63 = qword_1EDE82B10;
  v122 = xmmword_1EDE82B18;
  v64 = qword_1EDE82B28;

  sub_1C100C7D0(v137);

  *&v140[0] = v62;
  *(&v140[0] + 1) = v63;
  v140[1] = v122;
  *&v140[2] = v64;
  memcpy(&v140[2] + 8, v136, 0xA8uLL);
  v65 = v112;
  v66 = v119;
  View.cellStyle(for:)(v140, v91, v112);
  memcpy(v139, v140, sizeof(v139));
  sub_1C100C7D0(v139);
  (*(v118 + 8))(v58, v66);
  LOBYTE(v140[0]) = 1;
  sub_1C1061D74();
  v68 = v114;
  v67 = v115;
  sub_1C12649C0();
  (*(v113 + 8))(v65, v67);
  v135 = 2;
  v134 = 2;
  sub_1C10D2EE4(v41, v140);
  v69 = v140[0];
  v122 = v140[1];
  v70 = *&v140[2];

  sub_1C100C7D0(v140);
  v131 = v69;
  v132 = v122;
  v133 = v70;
  v71 = v93;
  v72 = v117;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v135, 0, 0, v117, v92, v93);

  (*(v116 + 8))(v68, v72);
  *(&v132 + 1) = v52;
  v133 = *(&v124 + 1);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v131);
  (*(*(v52 - 8) + 16))(boxed_opaque_existential_1, v57, v52);
  v74 = v97;
  v75 = swift_getWitnessTable();
  v76 = v94;
  View.selectionStyle(for:)(&v131, v74, v75);
  (*(v95 + 8))(v71, v74);
  __swift_destroy_boxed_opaque_existential_0Tm(&v131);
  v77 = sub_1C100D614();
  v129 = v75;
  v130 = v77;
  v78 = v99;
  swift_getWitnessTable();
  v79 = v96;
  sub_1C0FDBA4C();
  v80 = *(v98 + 8);
  v80(v76, v78);
  sub_1C0FDBA4C();
  return (v80)(v79, v78);
}

uint64_t sub_1C10D4DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  *&v71 = a1;
  v3 = *(a1 + 24);
  sub_1C1263190();
  v69 = v3;
  sub_1C1263C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  v4 = sub_1C1263190();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93640, &qword_1C12B42D8);
  v99 = *(a1 + 48);
  v100 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v68 = v99;
  v98 = v99;
  v6 = swift_getWitnessTable();
  v67 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v95 = v6;
  v96 = v67;
  v101[0] = v4;
  v101[1] = v5;
  v101[2] = swift_getWitnessTable();
  v101[3] = sub_1C10D3E38();
  type metadata accessor for PhotosContentTitleCard(255, v101);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  v7 = sub_1C1263190();
  v93 = swift_getWitnessTable();
  v94 = MEMORY[0x1E697E5D8];
  v91 = swift_getWitnessTable();
  v92 = sub_1C0FDB6D4(&qword_1EDE7BA68, qword_1EBE92178, &unk_1C12AD460, MEMORY[0x1E6980468]);
  v89 = swift_getWitnessTable();
  v90 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v87 = swift_getWitnessTable();
  v88 = v67;
  v85 = swift_getWitnessTable();
  v86 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v83 = swift_getWitnessTable();
  v84 = sub_1C0FDB6D4(&qword_1EDE7B9E0, &unk_1EBE91C30, &qword_1C12B2020, MEMORY[0x1E6980758]);
  v8 = v7;
  v57 = swift_getWitnessTable();
  v9 = sub_1C12655C0();
  v61 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v12 = swift_getWitnessTable();
  v62 = v9;
  v58 = v12;
  v14 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v9, v12, v13);
  v64 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v57 - v15;
  v66 = v16;
  v59 = sub_1C1263190();
  v67 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v57 - v19;
  v20 = sub_1C12629F0();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57 - v25;
  v27 = v71;
  sub_1C10D2EE4(v71, v101);
  sub_1C100C7D0(v101);
  sub_1C10D3454(v27);
  sub_1C10D3100(v27, v26);
  (*(v21 + 104))(v23, *MEMORY[0x1E697DBB8], v20);
  LOBYTE(v9) = sub_1C12629D0();
  v28 = *(v21 + 8);
  v28(v23, v20);
  v28(v26, v20);
  if (v9)
  {
    if (qword_1EDE7B858 != -1)
    {
      swift_once();
    }

    v29 = &qword_1EDE7B860;
  }

  else
  {
    if (qword_1EDE7B878 != -1)
    {
      swift_once();
    }

    v29 = &qword_1EDE7B880;
  }

  v30 = *v29;

  v32 = MEMORY[0x1EEE9AC00](v31).n128_u64[0];
  v33 = v71;
  v34 = *(v71 + 16);
  v35 = v69;
  *(&v57 - 8) = v34;
  *(&v57 - 7) = v35;
  v36 = *(v33 + 32);
  v69 = *(v33 + 40);
  v37 = v69;
  *(&v57 - 6) = v36;
  *(&v57 - 5) = v37;
  v38 = v72;
  *(&v57 - 4) = v68;
  *(&v57 - 3) = v38;
  *(&v57 - 2) = v32;
  *(&v57 - 1) = v30;
  sub_1C1009330(v8, v57, v39, v40, v41, v42);
  sub_1C12655B0();
  v79 = 2;
  v78 = 1;
  sub_1C10D2EE4(v33, v80);
  v43 = v80[0];
  v44 = v80[1];
  v71 = v81;
  v45 = v82;

  sub_1C100C7D0(v80);
  v75[0] = v43;
  v75[1] = v44;
  v76 = v71;
  v77 = v45;

  v46 = v60;
  v47 = v62;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v79, v30, 0, v62, v58, v60);

  (*(v61 + 8))(v11, v47);
  *(&v76 + 1) = v34;
  v77 = v69;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v38, v34);
  v49 = v66;
  v50 = swift_getWitnessTable();
  v51 = v63;
  View.selectionStyle(for:)(v75, v49, v50);

  (*(v64 + 8))(v46, v49);
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  v52 = sub_1C100D614();
  v73 = v50;
  v74 = v52;
  v53 = v59;
  swift_getWitnessTable();
  v54 = v65;
  sub_1C0FDBA4C();
  v55 = *(v67 + 8);
  v55(v51, v53);
  sub_1C0FDBA4C();
  return (v55)(v54, v53);
}

void *sub_1C10D57CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a4 + 8);
  v23 = (*(v14 + 40))(a2, v14);
  v16 = v15;
  v17 = (*(v14 + 48))(a2, v14);
  v19 = v18;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  LOBYTE(a6) = *(a1 + *(type metadata accessor for PhotosTripCell(0, __src) + 64));
  KeyPath = swift_getKeyPath();
  v26 = 0;
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(&v25[7], __src, 0xD1uLL);
  v21 = v26;
  *a7 = v23;
  *(a7 + 8) = v16;
  *(a7 + 16) = v17;
  *(a7 + 24) = v19;
  *(a7 + 32) = 0;
  *(a7 + 33) = a6;
  *(a7 + 34) = 1;
  *(a7 + 40) = KeyPath;
  *(a7 + 48) = v21;
  return memcpy((a7 + 49), v25, 0xD8uLL);
}

uint64_t sub_1C10D5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  v6 = (*(v5 + 40))(a2, v5, a3);
  v8 = v7;
  result = (*(v5 + 56))(a2, v5);
  if (v8)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1C10D599C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v63 = a6;
  v64 = a3;
  v67 = a5;
  *&v73 = a2;
  v65 = a1;
  v81 = a8;
  sub_1C1263190();
  sub_1C1263C30();
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  v12 = sub_1C1263190();
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93640, &qword_1C12B42D8);
  v93 = a7;
  v94 = MEMORY[0x1E697F568];
  v66 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v92 = a7;
  v89 = swift_getWitnessTable();
  v80 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v90 = v80;
  v60 = v12;
  v58 = swift_getWitnessTable();
  v57 = sub_1C10D3E38();
  v98[0] = v12;
  v98[1] = v59;
  v98[2] = v58;
  v98[3] = v57;
  v13 = type metadata accessor for PhotosContentTitleCard(0, v98);
  v61 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = sub_1C1263190();
  v62 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v55 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  v18 = sub_1C1263190();
  v70 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v55 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  v72 = v18;
  v69 = sub_1C1263190();
  v20 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v71 = v20;
  v21 = sub_1C1263190();
  v77 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v55 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91C30, &qword_1C12B2020);
  v78 = v21;
  v68 = sub_1C1263190();
  v79 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v75 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v76 = &v55 - v25;
  v84[2] = v64;
  v84[3] = a4;
  v26 = a4;
  v27 = v67;
  v84[4] = v67;
  v84[5] = v63;
  v28 = a7;
  v84[6] = a7;
  v84[7] = v65;
  *&v84[8] = a9;
  v83[2] = v64;
  v83[3] = a4;
  v29 = v64;
  v83[4] = v67;
  v83[5] = v63;
  v30 = v63;
  v83[6] = v28;
  v83[7] = v65;
  v31 = v28;
  PhotosContentTitleCard.init(content:titleStack:)(sub_1C10D7F58, v84, sub_1C10D7F6C, v83, v60, v59, v58, v57);
  v98[0] = v29;
  v98[1] = v26;
  v98[2] = v27;
  v98[3] = v30;
  v98[4] = v31;
  v32 = type metadata accessor for PhotosTripCell(0, v98);
  sub_1C10D2EE4(v32, v95);
  sub_1C100C7D0(v95);
  v33 = swift_getWitnessTable();
  v34 = v56;
  sub_1C1264FA0();
  (*(v61 + 8))(v15, v13);
  v98[0] = v73;
  v87 = v33;
  v88 = MEMORY[0x1E697E5D8];
  v35 = swift_getWitnessTable();
  sub_1C100C6E8(v16);
  sub_1C1264960();
  (*(v62 + 8))(v34, v16);
  sub_1C10D2EE4(v32, v96);
  memcpy(v86, v97, sizeof(v86));
  sub_1C100D690(v96, v98);
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDE82B08;
  v37 = qword_1EDE82B10;
  v73 = xmmword_1EDE82B18;
  v38 = qword_1EDE82B28;

  sub_1C100C7D0(v96);

  *&v85[0] = v36;
  *(&v85[0] + 1) = v37;
  v85[1] = v73;
  *&v85[2] = v38;
  memcpy(&v85[2] + 8, v86, 0xA8uLL);
  v39 = sub_1C0FDB6D4(&qword_1EDE7BA68, qword_1EBE92178, &unk_1C12AD460, MEMORY[0x1E6980468]);
  v84[18] = v35;
  v84[19] = v39;
  v40 = v72;
  v41 = swift_getWitnessTable();
  v42 = v74;
  v43 = v82;
  View.cellStyle(for:)(v85, v41, v74);
  memcpy(v98, v85, 0xD0uLL);
  sub_1C100C7D0(v98);
  (*(v70 + 8))(v43, v40);
  LOBYTE(v85[0]) = 1;
  v44 = sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0, &qword_1C12A8E00, MEMORY[0x1E6980A18]);
  v84[16] = v41;
  v84[17] = v44;
  v84[14] = swift_getWitnessTable();
  v84[15] = v80;
  v45 = swift_getWitnessTable();
  v46 = sub_1C0FDB6D4(&qword_1EDE7BC60, &unk_1EBE92ED0, &unk_1C12A8E80, MEMORY[0x1E697F940]);
  v84[12] = v45;
  v84[13] = v46;
  v47 = v78;
  v48 = swift_getWitnessTable();
  sub_1C1061D74();
  v49 = v75;
  sub_1C12649C0();
  (*(v77 + 8))(v42, v47);
  v50 = sub_1C0FDB6D4(&qword_1EDE7B9E0, &unk_1EBE91C30, &qword_1C12B2020, MEMORY[0x1E6980758]);
  v84[10] = v48;
  v84[11] = v50;
  v51 = v68;
  swift_getWitnessTable();
  v52 = v76;
  sub_1C0FDBA4C();
  v53 = *(v79 + 8);
  v53(v49, v51);
  sub_1C0FDBA4C();
  return (v53)(v52, v51);
}

uint64_t sub_1C10D6354@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v46 = a6;
  v42 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v42);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_1C1263190();
  v15 = sub_1C1263C30();
  v44 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v37 = &v37 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  v39 = sub_1C1263190();
  v45 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v43 = &v37 - v19;
  v59[0] = a1;
  v59[1] = a2;
  v59[2] = a3;
  v59[3] = a4;
  v59[4] = a5;
  v20 = type metadata accessor for PhotosTripCell(0, v59);
  sub_1C10D32E8(v20);
  v22 = v21;
  v48 = a1;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v23 = a5;
  v52 = a5;
  v57 = a5;
  v58 = MEMORY[0x1E697F568];
  v40 = MEMORY[0x1E697E858];
  v24 = v38;
  WitnessTable = swift_getWitnessTable();
  v26 = v37;
  View.onStaticCondition<A>(_:transform:)(v22 & 1, sub_1C10D8178, v47, a2, v24, v23, WitnessTable, v37);
  v27 = *(v42 + 20);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_1C12639D0();
  (*(*(v29 - 8) + 104))(v14 + v27, v28, v29);
  *v14 = a7;
  v14[1] = a7;
  v55 = WitnessTable;
  v56 = v23;
  v30 = swift_getWitnessTable();
  sub_1C10D7E94(&qword_1EDE7BCE8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1C1009334();
  v31 = v41;
  sub_1C1265050();
  sub_1C100867C(v14);
  (*(v44 + 8))(v26, v15);
  v32 = sub_1C0FDB6D4(&qword_1EDE7C030, &qword_1EBE91C40, &unk_1C12A7010, MEMORY[0x1E697DDB0]);
  v53 = v30;
  v54 = v32;
  v33 = v39;
  swift_getWitnessTable();
  v34 = v43;
  sub_1C0FDBA4C();
  v35 = *(v45 + 8);
  v35(v31, v33);
  sub_1C0FDBA4C();
  return (v35)(v34, v33);
}

void *sub_1C10D6818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936A8, &unk_1C12C7F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936B0, &unk_1C12B4490);
  sub_1C10D7F7C();
  sub_1C10D80EC();
  v13 = sub_1C10DFCA0();
  v20[28] = 0x4000000000000000;
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(&v20[29], __src, 0xD1uLL);
  LOBYTE(v20[0]) = 1;
  sub_1C10D6BF0(a1, a2, a3, a4, a5, a6, &v20[1]);
  sub_1C10D6EC0(a1, a2, a3, a4, a5, a6, &v20[10]);
  v14 = sub_1C10D6BF0(a1, a2, a3, a4, a5, a6, &v20[19]);
  (v13)(v14);
  nullsub_1();

  BYTE1(v20[27]) = 0;
  memcpy(__dst, v20, 0x1B9uLL);
  KeyPath = swift_getKeyPath();
  sub_1C10D6A6C(a1, a2, a3, a4, a5, a6, v19);
  v23[0] = KeyPath;
  memcpy(&v23[1], v19, 0xD0uLL);
  memcpy(&__dst[448], v23, 0xD8uLL);
  v24 = KeyPath;
  memcpy(v25, v19, sizeof(v25));
  sub_1C10D1A1C(v23, v18, &qword_1EBE93660, &qword_1C12B42E8);
  sub_1C0FD1A5C(&v24, &qword_1EBE93660, &qword_1C12B42E8);
  return memcpy(a7, __dst, 0x298uLL);
}

void *sub_1C10D6A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v9 = type metadata accessor for PhotosTripCell(0, v24);
  v10 = (a1 + *(v9 + 68));
  if (v10[2])
  {
    sub_1C10D2EE4(v9, __src);
  }

  else
  {
    v22 = *v10;
    v23 = v10[1];
    if (qword_1EDE82B50 != -1)
    {
      swift_once();
    }

    v11 = qword_1EDE82B58;
    v12 = qword_1EDE82B60;
    v13 = unk_1EDE82B68;
    v14 = qword_1EDE82B70;
    v15 = qword_1EDE82B78;

    if (v15 != -1)
    {
      swift_once();
    }

    __src[0] = 0x402E000000000000;
    __src[1] = v11;
    __src[2] = v12;
    __src[3] = v13;
    __src[4] = v14;
    *&__src[5] = v22;
    *&__src[7] = v23;
    __asm { FMOV            V1.2D, #10.0 }

    *&__src[9] = _Q1;
    *&__src[11] = _Q1;
    __src[13] = 0x4052000000000000;
    memset(&__src[14], 0, 40);
    __src[21] = 0;
    __src[22] = qword_1EDE82B80;
    *&__src[23] = *&qword_1EDE82B88;
    __src[25] = qword_1EDE82B98;
    __src[19] = 0x8000000000000000;
    LOWORD(__src[20]) = 1;
  }

  return memcpy(a7, __src, 0xD0uLL);
}

void *sub_1C10D6BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1C10D5910(a1, a2, a3, a4);

  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  __src[4] = a6;
  v13 = type metadata accessor for PhotosTripCell(0, __src);
  sub_1C10D6CC0(v13, __src);

  return memcpy(a7, __src, 0x41uLL);
}

uint64_t sub_1C10D6CC0@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_1C1264680();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C10D7258(a3);
  (*(v7 + 104))(v9, *MEMORY[0x1E6980EA8], v6);
  sub_1C12646C0();

  (*(v7 + 8))(v9, v6);
  v10 = sub_1C1264870();
  v12 = v11;
  LOBYTE(v6) = v13;

  sub_1C1264620();
  v14 = sub_1C12647B0();
  v16 = v15;
  LOBYTE(v7) = v17;
  v19 = v18;
  sub_1C0FDB8E8(v10, v12, v6 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a4 = v14;
  *(a4 + 8) = v16;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v19;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 1;
  *(a4 + 48) = result;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  return result;
}

void *sub_1C10D6EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1C10D5910(a1, a2, a3, a4);
  v14 = v13;

  if (v14)
  {
    __src[0] = a2;
    __src[1] = a3;
    __src[2] = a4;
    __src[3] = a5;
    __src[4] = a6;
    v15 = type metadata accessor for PhotosTripCell(0, __src);
    sub_1C10D6FE4(v15, __src);

    memcpy(v17, __src, sizeof(v17));
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v19 = 1;
    v18 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936A8, &unk_1C12C7F80);
  sub_1C10D7F7C();
  sub_1C1263C20();
  return memcpy(a7, __src, 0x42uLL);
}

uint64_t sub_1C10D6FE4@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_1C1264680();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C10D7258(a3);
  (*(v7 + 104))(v9, *MEMORY[0x1E6980EA8], v6);
  sub_1C12646C0();

  (*(v7 + 8))(v9, v6);
  v10 = sub_1C1264870();
  v12 = v11;
  LOBYTE(v7) = v13;

  sub_1C1264620();
  v14 = sub_1C12647B0();
  v16 = v15;
  v18 = v17;
  sub_1C0FDB8E8(v10, v12, v7 & 1);

  if (qword_1EDE76CF0 != -1)
  {
    swift_once();
  }

  v19 = sub_1C1264840();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1C0FDB8E8(v14, v16, v18 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a4 = v19;
  *(a4 + 8) = v21;
  *(a4 + 16) = v23 & 1;
  *(a4 + 24) = v25;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 1;
  *(a4 + 48) = result;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  return result;
}

uint64_t sub_1C10D7258(uint64_t a1)
{
  sub_1C10D2D88(a1, &v4);
  if (v4 == 2)
  {
LABEL_7:

    return sub_1C12646F0();
  }

  if (v4 == 5)
  {
    if (*(v1 + *(a1 + 64)))
    {

      return sub_1C1264660();
    }

    goto LABEL_7;
  }

  return sub_1C1264510();
}

uint64_t PhotosTripCell<>.init(_:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *v14;
  (*(v10 + 16))(v13, a1, v11);
  v25 = v15;
  memset(v26, 0, sizeof(v26));
  v27 = 1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a1;
  v16 = type metadata accessor for PhotosAssetView(0);
  v17 = sub_1C10D7E94(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView, &protocol conformance descriptor for PhotosAssetView);
  v18 = PhotosTripCell.init(_:size:titlePadding:content:)(v13, &v25, v26, sub_1C10D75E0, a2, v16, a3, a5, a4, v17);
  return (*(v10 + 8))(a1, a2, v18);
}

double sub_1C10D748C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 + 8) + 72))(&v11, a1);
  v4 = v11;
  v5 = sub_1C1200D04();
  [v5 setNetworkAccessAllowed_];
  *(a3 + 152) = swift_getKeyPath();
  *(a3 + 160) = 0;
  v6 = type metadata accessor for PhotosAssetView(0);
  v7 = v6[12];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[13];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a3 + v6[14];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  *a3 = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 68) = 256;
  *(a3 + 52) = 0;
  *(a3 + 60) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 1;
  *(a3 + 88) = v4;
  *(a3 + 96) = 0;
  *(a3 + 104) = v5;
  result = 0.0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 2;
  return result;
}

unint64_t sub_1C10D75F0()
{
  result = qword_1EBE93680;
  if (!qword_1EBE93680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93680);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosTripCellSizeClass(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C10D776C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C10B8F34(319, &qword_1EDE776C8, MEMORY[0x1E697DA60], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C10B8F34(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C10B8F34(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1C1011E54(319);
            if (v6 <= 0x3F)
            {
              sub_1C10A6EE0(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C10D78E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v33 = *(a3 + 24);
  v34 = *(a3 + 16);
  v5 = *(v34 - 8);
  v6 = *(v5 + 84);
  v7 = *(v33 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_1C12629F0();
  v13 = *(v11 - 8);
  result = v11 - 8;
  v14 = v13;
  v15 = *(v13 + 64);
  if (v15 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v7 + 80);
  v18 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  v19 = *(v5 + 64) + v17;
  if (v10 >= a2)
  {
LABEL_35:
    if (v6 == v10)
    {
      v28 = a1;
      v29 = v6;
      v30 = v34;
    }

    else
    {
      v28 = ((a1 + v19) & ~v17);
      if (v8 != v10)
      {
        v31 = *(v28 + v18);
        if (v31 >= 2)
        {
          return v31 - 1;
        }

        else
        {
          return 0;
        }
      }

      v29 = v8;
      v30 = v33;
    }

    return __swift_getEnumTagSinglePayload(v28, v29, v30);
  }

  else
  {
    v20 = *(v14 + 80) & 0xF8 | 7;
    v21 = ((v16 + ((v20 + (((v19 & ~v17) + v18) & 0xFFFFFFFFFFFFFFF8) + 273) & ~v20) + 8) & 0xFFFFFFFFFFFFFFF8) + 10;
    if (v21 <= 3)
    {
      v22 = ((a2 - v10 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    switch(v24)
    {
      case 1:
        v25 = *(a1 + v21);
        if (!*(a1 + v21))
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      case 2:
        v25 = *(a1 + v21);
        if (!*(a1 + v21))
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      case 3:
        __break(1u);
        return result;
      case 4:
        v25 = *(a1 + v21);
        if (!v25)
        {
          goto LABEL_35;
        }

LABEL_28:
        v26 = v21 > 3;
        if (v21 <= 3)
        {
          v27 = (v25 - 1) << (8 * v21);
        }

        else
        {
          v27 = 0;
        }

        if (v26)
        {
          v32 = *a1;
        }

        else
        {
          v32 = *a1;
        }

        result = v10 + (v32 | v27) + 1;
        break;
      default:
        goto LABEL_35;
    }
  }

  return result;
}

void sub_1C10D7B94(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v29 = *(a4 + 16);
  v6 = *(v29 - 8);
  v7 = *(v6 + 84);
  v28 = *(a4 + 24);
  v8 = *(v28 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_1C12629F0() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v8 + 80);
  v15 = *(v6 + 64) + v14;
  v16 = *(v8 + 64);
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = ((v13 + ((v17 + (((v15 & ~v14) + v16) & 0xFFFFFFFFFFFFFFF8) + 273) & ~v17) + 8) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v11 >= a3)
  {
    v21 = 0;
  }

  else
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v11 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (v11 >= a2)
  {
    switch(v21)
    {
      case 1:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 2:
        *(a1 + v18) = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        return;
      case 3:
LABEL_50:
        __break(1u);
        return;
      case 4:
        *(a1 + v18) = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (!a2)
        {
          return;
        }

LABEL_37:
        if (v7 == v11)
        {
          v24 = a1;
          v25 = a2;
          v26 = v7;
          v27 = v29;
        }

        else
        {
          v24 = ((a1 + v15) & ~v14);
          if (v9 != v11)
          {
            *(v24 + v16) = a2 + 1;
            return;
          }

          v25 = a2;
          v26 = v9;
          v27 = v28;
        }

        __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
        break;
    }
  }

  else
  {
    v22 = ~v11 + a2;
    bzero(a1, v18);
    if (v18 <= 3)
    {
      v23 = HIWORD(v22) + 1;
    }

    else
    {
      v23 = 1;
    }

    if (v18 > 3)
    {
      *a1 = v22;
    }

    else
    {
      *a1 = v22;
    }

    switch(v21)
    {
      case 1:
        *(a1 + v18) = v23;
        break;
      case 2:
        *(a1 + v18) = v23;
        break;
      case 3:
        goto LABEL_50;
      case 4:
        *(a1 + v18) = v23;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C10D7E94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C10D7EEC()
{
  result = qword_1EBE936A0;
  if (!qword_1EBE936A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE936A0);
  }

  return result;
}

unint64_t sub_1C10D7F7C()
{
  result = qword_1EDE7BDB8;
  if (!qword_1EDE7BDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE936A8, &unk_1C12C7F80);
    sub_1C10D8034();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDB8);
  }

  return result;
}

unint64_t sub_1C10D8034()
{
  result = qword_1EDE7BEA0;
  if (!qword_1EDE7BEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE936B8, &unk_1C12C60C0);
    sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BEA0);
  }

  return result;
}

unint64_t sub_1C10D80EC()
{
  result = qword_1EDE76EA0;
  if (!qword_1EDE76EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE936B0, &unk_1C12B4490);
    sub_1C10D7F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EA0);
  }

  return result;
}

uint64_t OneUpDebugBar.Kind.description.getter()
{
  v1 = 0x6E416C6175736956;
  if (*v0 != 1)
  {
    v1 = 0x7465737341;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 5391432;
  }
}

uint64_t sub_1C10D8210@<X0>(uint64_t a2@<X8>)
{
  v41[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93700, &qword_1C12B4730);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v41 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93708, &qword_1C12B4738);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v41 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93710, &qword_1C12B4740);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93718, &qword_1C12B4748);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  if (!*v2)
  {
    *v14 = sub_1C1263AA0();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93740, &qword_1C12B4758);
    sub_1C10D87BC(&v14[*(v18 + 44)]);
    sub_1C10D1A1C(v14, v8, &qword_1EBE93718, &qword_1C12B4748);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_31();
    sub_1C0FDB6D4(v19, &qword_1EBE93718, &qword_1C12B4748, v20);
    sub_1C1263C20();
    sub_1C10D1A1C(v11, v5, &qword_1EBE93710, &qword_1C12B4740);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720, &qword_1C12B4750);
    sub_1C10D99DC();
    sub_1C1089CAC();
    OUTLINED_FUNCTION_3_29();
    sub_1C1263C20();
    sub_1C0FD1A5C(v11, &qword_1EBE93710, &qword_1C12B4740);
    v21 = v14;
    v22 = &qword_1EBE93718;
    v23 = &qword_1C12B4748;
    return sub_1C0FD1A5C(v21, v22, v23);
  }

  if (*v2 == 1)
  {
    sub_1C113526C(&v42);
    v15 = v42;
    if (v42)
    {
      if (v42 == 1)
      {
        v16 = 0xAC000000A680E267;
        v17 = 0x6E697A796C616E41;
      }

      else
      {
        v36 = sub_1C1135BF0(v42);
        *&v46 = 0x64657A796C616E41;
        *(&v46 + 1) = 0xE800000000000000;
        MEMORY[0x1C68EF850](v36);

        sub_1C10D9A94(v15);
        v16 = *(&v46 + 1);
        v17 = v46;
      }
    }

    else
    {
      v16 = 0xE400000000000000;
      v17 = 1701602377;
    }

    *v8 = v17;
    *(v8 + 1) = v16;
    v8[16] = 0;
    *(v8 + 3) = MEMORY[0x1E69E7CC0];
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_31();
    sub_1C0FDB6D4(v37, v38, v39, v40);

    sub_1C1263C20();
    sub_1C10D1A1C(v11, v5, &qword_1EBE93710, &qword_1C12B4740);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720, &qword_1C12B4750);
    sub_1C10D99DC();
    sub_1C1089CAC();
    sub_1C1263C20();

    v21 = v11;
    v22 = &qword_1EBE93710;
    v23 = &qword_1C12B4740;
    return sub_1C0FD1A5C(v21, v22, v23);
  }

  sub_1C1135518();
  if (v24)
  {
    *&v46 = v24;
    swift_unknownObjectRetain();
    sub_1C1265ED0();
    sub_1C12646A0();
    sub_1C1264500();

    v25 = sub_1C1264870();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    *&v42 = v25;
    *(&v42 + 1) = v27;
    v43 = v29 & 1;
    v44 = v31;
    v45 = 0;
    sub_1C0FDB850(v25, v27, v29 & 1);

    OUTLINED_FUNCTION_4_31(v32, MEMORY[0x1E6981148]);
    swift_unknownObjectRelease();
    sub_1C0FDB8E8(v25, v27, v29 & 1);
  }

  else
  {
    v42 = xmmword_1C12B4500;
    v43 = 0;
    v44 = MEMORY[0x1E69E7CC0];
    v45 = 1;
    OUTLINED_FUNCTION_4_31(0, MEMORY[0x1E6981148]);
  }

  v33 = v47;
  v34 = v48;
  *v5 = v46;
  *(v5 + 1) = v33;
  v5[32] = v34;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93720, &qword_1C12B4750);
  sub_1C10D99DC();
  sub_1C1089CAC();
  OUTLINED_FUNCTION_3_29();
  return sub_1C1263C20();
}

uint64_t sub_1C10D87BC@<X0>(uint64_t a2@<X8>)
{
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93748, &qword_1C12B4760);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  *v7 = sub_1C12638E0();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93750, &qword_1C12B4768);
  sub_1C10D8A4C(&v7[*(v8 + 44)]);
  v34 = sub_1C12638E0();
  sub_1C10D9178(&v37);
  v30 = v38;
  v31 = v37;
  v9 = v39;
  v32 = v40;
  v33 = v41;
  v10 = v42;
  v45 = 1;
  v44 = v39;
  v43 = v42;
  v29 = sub_1C12638E0();
  sub_1C10D92AC(&v37);
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v27 = v40;
  v28 = v41;
  v14 = v42;
  LOBYTE(v37) = 1;
  v47 = v39;
  v46 = v42;
  v35 = v4;
  sub_1C10D1A1C(v7, v4, &qword_1EBE93748, &qword_1C12B4760);
  v15 = v4;
  v16 = v36;
  sub_1C10D1A1C(v15, v36, &qword_1EBE93748, &qword_1C12B4760);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93758, &qword_1C12B4770);
  v18 = v16 + *(v17 + 48);
  v19 = v33;
  *v18 = v34;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  v20 = v30;
  v21 = v31;
  *(v18 + 24) = v31;
  *(v18 + 32) = v20;
  *(v18 + 40) = v9;
  *(v18 + 48) = v32;
  *(v18 + 56) = v19;
  *(v18 + 64) = v10;
  v22 = v16 + *(v17 + 64);
  *v22 = v29;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  *(v22 + 24) = v11;
  *(v22 + 32) = v12;
  *(v22 + 40) = v13;
  v23 = v28;
  *(v22 + 48) = v27;
  *(v22 + 56) = v23;
  *(v22 + 64) = v14;
  v24 = v21;
  v25 = v20;
  sub_1C0FDB850(v21, v20, v9);

  sub_1C0FDB850(v11, v12, v13);

  sub_1C0FD1A5C(v7, &qword_1EBE93748, &qword_1C12B4760);
  sub_1C0FDB8E8(v11, v12, v13);

  sub_1C0FDB8E8(v24, v25, v9);

  return sub_1C0FD1A5C(v35, &qword_1EBE93748, &qword_1C12B4760);
}

uint64_t sub_1C10D8A4C@<X0>(uint64_t *a1@<X8>)
{
  v49 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93760, &qword_1C12B4778);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - v3;
  v5 = sub_1C1261C40();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1261E50();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93768, &unk_1C12B4780);
  v47 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  sub_1C1135518();
  v16 = MEMORY[0x1E69E7CC0];
  if (!v17)
  {
    goto LABEL_6;
  }

  v46 = v6;
  v56 = &unk_1F40B5A68;
  v18 = swift_dynamicCastObjCProtocolConditional();
  if (!v18)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v47 = 0;
    v25 = 0;
    v23 = 0;
    goto LABEL_9;
  }

  v19 = v18;
  if ([v18 respondsToSelector_])
  {
    v20 = [v19 hdrGain];
    v45 = v20;
    swift_unknownObjectRelease();
    v54 = 0x203A6E696147;
    v55 = 0xE600000000000000;
    [v20 doubleValue];
    v51 = v21;
    sub_1C1261E30();
    sub_1C10D9AFC();
    sub_1C1261BF0();
    sub_1C1261C30();
    MEMORY[0x1C68EB540](v8, v10);
    (*(v46 + 8))(v8, v5);
    v22 = *(v47 + 8);
    v22(v12, v10);
    sub_1C0FDB6D4(&unk_1EBE93780, &qword_1EBE93768, &unk_1C12B4780, MEMORY[0x1E6968E80]);
    sub_1C1265CA0();
    v22(v15, v10);
    MEMORY[0x1C68EF850](v52, v53);

    v23 = MEMORY[0x1E69E7CC0];
    v47 = sub_1C1265EB0();
    v25 = v24;
  }

  else
  {
    swift_unknownObjectRelease();
    v47 = 0;
    v25 = 0;
    v23 = 0;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v46 = 0x80000001C126B990;
  sub_1C1263A50();
  v54 = v16;
  v26 = type metadata accessor for OneUpBarButton(0);
  sub_1C10D9AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91920, &qword_1C12AAE60);
  sub_1C0FDB6D4(&qword_1EDE7B720, &unk_1EBE91920, &qword_1C12AAE60, MEMORY[0x1E69E6328]);
  sub_1C1266870();
  *(v4 + 7) = 0;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  v27 = &v4[v26[16]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v26[17];
  *&v4[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v29 = &v4[v26[18]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = &v4[v26[19]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v4[v26[20]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = &v4[v26[21]];
  *v32 = swift_getKeyPath();
  *(v32 + 1) = 0;
  v32[16] = 0;
  v33 = &v4[v26[22]];
  *v33 = swift_getKeyPath();
  *(v33 + 4) = 0;
  v34 = &v4[v26[23]];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  *(v4 + 88) = xmmword_1C12B4510;
  *(v4 + 13) = 0;
  *(v4 + 14) = 0;
  v4[16] = -31;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 9) = 0;
  *(v4 + 10) = 0;
  *(v4 + 8) = 0;
  *(v4 + 15) = 0;
  *(v4 + 16) = 0;
  v35 = &v4[v26[13]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v4[v26[14]];
  *v36 = 0xD00000000000001ALL;
  *(v36 + 1) = v46;
  v37 = &v4[v26[15]];
  *v37 = 0;
  v37[8] = 1;
  KeyPath = swift_getKeyPath();
  v39 = &v4[*(v48 + 36)];
  *v39 = KeyPath;
  v39[8] = 1;
  v40 = v50;
  sub_1C10D1A1C(v4, v50, &qword_1EBE93760, &qword_1C12B4778);
  v41 = v49;
  v42 = v47;
  *v49 = v47;
  v41[1] = v25;
  v41[2] = 0;
  v41[3] = v23;
  v41[4] = 0;
  *(v41 + 40) = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93770, &unk_1C12B48E0);
  sub_1C10D1A1C(v40, v41 + *(v43 + 64), &qword_1EBE93760, &qword_1C12B4778);
  sub_1C0FDB860(v42, v25, 0, v23);
  sub_1C0FDB8A4(v42, v25, 0, v23);
  sub_1C0FD1A5C(v4, &qword_1EBE93760, &qword_1C12B4778);
  sub_1C0FD1A5C(v40, &qword_1EBE93760, &qword_1C12B4778);
  return sub_1C0FDB8A4(v42, v25, 0, v23);
}

double sub_1C10D9178@<D0>(uint64_t a1@<X8>)
{
  sub_1C1266940();

  v9 = 0xD000000000000015;
  v10 = 0x80000001C126B970;
  sub_1C1135794(&v8);
  v2 = 5391443;
  if (v8 != 1)
  {
    v2 = 5391432;
  }

  if (v8)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x6E776F6E6B6E55;
  }

  if (v8)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  MEMORY[0x1C68EF850](v3, v4);

  v5 = v9;
  v6 = v10;
  *a1 = v9;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_1C0FDB850(v5, v6, 0);

  sub_1C0FDB8E8(v5, v6, 0);

  return result;
}

double sub_1C10D92AC@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() px_mainScreen];
  [v2 potentialEDRHeadroom];

  v3 = sub_1C1266260();
  MEMORY[0x1C68EF850](v3);

  *a1 = 0x3A5244452078614DLL;
  *(a1 + 8) = 0xE900000000000020;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_1C0FDB850(0x3A5244452078614DLL, 0xE900000000000020, 0);

  sub_1C0FDB8E8(0x3A5244452078614DLL, 0xE900000000000020, 0);

  return result;
}

PhotosSwiftUICore::OneUpDebugBar::Kind_optional __swiftcall OneUpDebugBar.Kind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C10D9404@<X0>(uint64_t *a1@<X8>)
{
  result = OneUpDebugBar.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t OneUpDebugBar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936C0, &qword_1C12B4520);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = sub_1C12637E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v13 = *(v1 + 1);
  v12 = *(v1 + 2);
  if (v1[24] == 1)
  {
    swift_unknownObjectRetain();
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v16, 1, v3);
  }

  sub_1C1266420();
  v19 = sub_1C1264410();
  v27 = v6;
  v20 = v3;
  v21 = a1;
  v22 = v11;
  v23 = v19;
  sub_1C1262620();

  v11 = v22;
  a1 = v21;
  v3 = v20;
  v6 = v27;
  sub_1C12637D0();
  swift_getAtKeyPath();
  v24 = sub_1C0FF9034(v13, v12, 0);
  (*(v8 + 8))(v10, v7, v24);
  v12 = v29;
  if (!v28)
  {
    goto LABEL_6;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  v15 = (*(v12 + 152))(ObjectType, v12);
  swift_unknownObjectRelease();
  v16 = 1;
  if (v15)
  {
    v6[*(v3 + 36)] = 0;
    LOBYTE(v28) = v11;
    sub_1C10D8210(v6);
    v17 = sub_1C1264460();

    v18 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936C8, &qword_1C12B4528) + 36)];
    *v18 = v17;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    v18[40] = 1;
    sub_1C10D96D4(v6, a1);
    v16 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v16, 1, v3);
}

uint64_t sub_1C10D96D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE936C0, &qword_1C12B4520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C10D9748()
{
  result = qword_1EBE936D0;
  if (!qword_1EBE936D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE936D0);
  }

  return result;
}

uint64_t sub_1C10D9800(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

_BYTE *storeEnumTagSinglePayload for OneUpDebugBar.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C10D992C()
{
  result = qword_1EBE936E8;
  if (!qword_1EBE936E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE936F0, &qword_1C12B4728);
    sub_1C0FDB6D4(&qword_1EBE936F8, &qword_1EBE936C0, &qword_1C12B4520, &protocol conformance descriptor for OneUpBar<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE936E8);
  }

  return result;
}

unint64_t sub_1C10D99DC()
{
  result = qword_1EBE93728;
  if (!qword_1EBE93728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93710, &qword_1C12B4740);
    sub_1C0FDB6D4(&unk_1EBE93730, &qword_1EBE93718, &qword_1C12B4748, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93728);
  }

  return result;
}

double sub_1C10D9A94(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

unint64_t sub_1C10D9AA4()
{
  result = qword_1EDE7BC70;
  if (!qword_1EDE7BC70)
  {
    sub_1C1263A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC70);
  }

  return result;
}

unint64_t sub_1C10D9AFC()
{
  result = qword_1EDE7B758;
  if (!qword_1EDE7B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B758);
  }

  return result;
}

void *sub_1C10D9B7C@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v52 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v49 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1263EB0();
  OUTLINED_FUNCTION_0();
  v50 = v19;
  v51 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v47 - v24;
  MEMORY[0x1EEE9AC00](v26);
  if ((a1 & 1) == 0)
  {
    v48 = &v47 - v27;
    if (a3)
    {
      v59 = a2;
    }

    else
    {

      sub_1C1266420();
      v32 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();

      (*(v14 + 8))(v17, v49);
    }

    v34 = v50;
    v33 = v51;
    sub_1C1226AE4();

    if (__swift_getEnumTagSinglePayload(v12, 1, v33) == 1)
    {
      sub_1C10CB224(v12);
      sub_1C10DA608(v58);
    }

    else
    {
      v39 = v48;
      (*(v34 + 32))(v48, v12, v33);
      (*(v34 + 16))(v25, v39, v33);
      v40 = (*(v34 + 88))(v25, v33);
      if (v40 == *MEMORY[0x1E697FF38])
      {
        v58[0] = 0;
        LOBYTE(v58[1]) = 1;
        sub_1C1059C14(v58);
        OUTLINED_FUNCTION_5_22();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A8, &qword_1C12B49E8);
        v41 = sub_1C10DA7D0();
        OUTLINED_FUNCTION_4_32(v41, MEMORY[0x1E6981840]);
        OUTLINED_FUNCTION_3_30();
        OUTLINED_FUNCTION_0_39();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A0, &qword_1C12B49E0);
        sub_1C10DA744();
        OUTLINED_FUNCTION_2_33();
        (*(v34 + 8))(v39, v33);
      }

      else
      {
        if (v40 != *MEMORY[0x1E697FF40])
        {
          __dst[0] = 0;
          __dst[1] = 0xE000000000000000;
          sub_1C1266940();
          MEMORY[0x1C68EF850](0xD000000000000020, 0x80000001C126BA30);
          sub_1C1266B10();
          goto LABEL_27;
        }

        sub_1C12659A0();
        OUTLINED_FUNCTION_1_32();
        sub_1C1263390();
        v55 = 1;
        memcpy(&v53[7], v60, 0x70uLL);
        v44 = OUTLINED_FUNCTION_6_20();
        memcpy(v44, v53, 0x77uLL);
        sub_1C1059A10(v58);
        OUTLINED_FUNCTION_5_22();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A8, &qword_1C12B49E8);
        v45 = sub_1C10DA7D0();
        OUTLINED_FUNCTION_4_32(v45, MEMORY[0x1E6981840]);
        OUTLINED_FUNCTION_3_30();
        OUTLINED_FUNCTION_0_39();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A0, &qword_1C12B49E0);
        sub_1C10DA744();
        OUTLINED_FUNCTION_2_33();
        (*(v34 + 8))(v48, v33);
      }

      memcpy(__dst, v56, 0x82uLL);
      memcpy(v57, __dst, 0x82uLL);
      nullsub_1();
      memcpy(v58, v57, 0x82uLL);
    }

    memcpy(v57, v58, 0x82uLL);
    sub_1C10DA85C(v57);
    goto LABEL_24;
  }

  v29 = v28;
  if (a3)
  {
    v59 = a2;
  }

  else
  {

    sub_1C1266420();
    v30 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v14 + 8))(v17, v49);
  }

  v31 = v51;
  sub_1C12265E0();

  if (__swift_getEnumTagSinglePayload(v9, 1, v31) == 1)
  {
    sub_1C10CB224(v9);
    sub_1C10DA608(v58);
LABEL_19:
    memcpy(v57, v58, 0x82uLL);
    sub_1C10DA628(v57);
LABEL_24:
    memcpy(v56, v57, sizeof(v56));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93790, &qword_1C12B49D0);
    sub_1C10DA634();
    sub_1C1263C20();
    return memcpy(v52, __dst, 0x83uLL);
  }

  v35 = v9;
  v36 = v50;
  (*(v50 + 32))(v29, v35, v31);
  (*(v36 + 16))(v21, v29, v31);
  v37 = (*(v36 + 88))(v21, v31);
  if (v37 == *MEMORY[0x1E697FF38])
  {
    v58[0] = 0;
    LOBYTE(v58[1]) = 1;
    sub_1C1059C14(v58);
    OUTLINED_FUNCTION_5_22();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A8, &qword_1C12B49E8);
    v38 = sub_1C10DA7D0();
    OUTLINED_FUNCTION_4_32(v38, MEMORY[0x1E6981840]);
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_0_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A0, &qword_1C12B49E0);
    sub_1C10DA744();
    OUTLINED_FUNCTION_2_33();
    (*(v36 + 8))(v29, v31);
LABEL_18:
    memcpy(__dst, v56, 0x82uLL);
    memcpy(v57, __dst, 0x82uLL);
    nullsub_1();
    memcpy(v58, v57, 0x82uLL);
    goto LABEL_19;
  }

  if (v37 == *MEMORY[0x1E697FF40])
  {
    sub_1C12659A0();
    OUTLINED_FUNCTION_1_32();
    sub_1C1263390();
    v55 = 1;
    memcpy(&v54[7], v60, 0x70uLL);
    v42 = OUTLINED_FUNCTION_6_20();
    memcpy(v42, v54, 0x77uLL);
    sub_1C1059A10(v58);
    OUTLINED_FUNCTION_5_22();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A8, &qword_1C12B49E8);
    v43 = sub_1C10DA7D0();
    OUTLINED_FUNCTION_4_32(v43, MEMORY[0x1E6981840]);
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_0_39();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937A0, &qword_1C12B49E0);
    sub_1C10DA744();
    OUTLINED_FUNCTION_2_33();
    (*(v36 + 8))(v29, v31);
    goto LABEL_18;
  }

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C1266940();
  MEMORY[0x1C68EF850](0xD00000000000001ELL, 0x80000001C126B9E0);
  sub_1C1266B10();
LABEL_27:
  result = sub_1C1266B70();
  __break(1u);
  return result;
}

double sub_1C10DA608(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -256;
  return result;
}

unint64_t sub_1C10DA634()
{
  result = qword_1EDE7BBC8;
  if (!qword_1EDE7BBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93790, &qword_1C12B49D0);
    sub_1C10DA6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBC8);
  }

  return result;
}

unint64_t sub_1C10DA6B8()
{
  result = qword_1EDE7BBD0;
  if (!qword_1EDE7BBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93798, &qword_1C12B49D8);
    sub_1C10DA744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBD0);
  }

  return result;
}

unint64_t sub_1C10DA744()
{
  result = qword_1EDE7BBF8;
  if (!qword_1EDE7BBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937A0, &qword_1C12B49E0);
    sub_1C10DA7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBF8);
  }

  return result;
}

unint64_t sub_1C10DA7D0()
{
  result = qword_1EDE7BE10;
  if (!qword_1EDE7BE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937A8, &qword_1C12B49E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE10);
  }

  return result;
}

unint64_t sub_1C10DA864()
{
  result = qword_1EDE7BBB8;
  if (!qword_1EDE7BBB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937B0, &unk_1C12B49F0);
    sub_1C10DA634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BBB8);
  }

  return result;
}

uint64_t PhotosSelectableItem.objectIdentifier.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1C12622C0();
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

double PhotosSelectionLayoutItem.init(item:globalFrame:scrollFrame:cornerRadius:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, uint64_t a11)
{
  sub_1C0F9DDE4(a1, a2);
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  *(a2 + 56) = a5;
  *(a2 + 64) = a6;
  *(a2 + 72) = a7;
  *(a2 + 80) = a8;
  result = a10;
  *(a2 + 88) = a9;
  *(a2 + 96) = a10;
  *(a2 + 104) = a11;
  return result;
}

uint64_t static PhotosSelectionLayoutItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (CGRectEqualToRect(*(a1 + 40), *(a2 + 40)) && CGRectEqualToRect(*(a1 + 72), *(a2 + 72)) && *(a1 + 104) == *(a2 + 104))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    __swift_project_boxed_opaque_existential_1(a1, v4);
    v6 = (*(v5 + 16))(v4, v5);
    v8 = v7;
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    __swift_project_boxed_opaque_existential_1(a2, v9);
    if (v6 == (*(v10 + 16))(v9, v10) && v8 == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = sub_1C1266D50();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1C10DABE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C10DAC28(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1C10DACBC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939E0, &qword_1C12B4F30);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  LOBYTE(v14) = 0;
  sub_1C1265410();
  v10 = *(&v15 + 1);
  *(a2 + 40) = v15;
  *(a2 + 48) = v10;
  v14 = 0;
  sub_1C1265410();
  *(a2 + 56) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939B0, &unk_1C12B4EE0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939E8, &qword_1C12B4F38);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  sub_1C0FDB800(v9, v6, &qword_1EBE939E0, &qword_1C12B4F30);
  sub_1C1265410();
  result = sub_1C0FD1A5C(v9, &qword_1EBE939E0, &qword_1C12B4F30);
  *a2 = a1;
  return result;
}

uint64_t sub_1C10DAE68()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C1041AD8();
  *v0 = result;
  return result;
}

PhotosSwiftUICore::PhotosInlinePlaybackDebugVisualization __swiftcall PhotosInlinePlaybackDebugVisualization.init(count:debugVisualization:)(PhotosSwiftUICore::PhotosInlinePlaybackDebugVisualization count, Swift::Bool debugVisualization)
{
  if ((count.items._rawValue & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    rawValue = count.items._rawValue;
    v5 = v2;
    v6 = MEMORY[0x1E69E7CC0];
    if (count.items._rawValue)
    {
      v10 = MEMORY[0x1E69E7CC0];
      count.items._rawValue = sub_1C11023B0(0, count.items._rawValue, 0);
      v7 = 0;
      v6 = v10;
      v8 = *(v10 + 16);
      do
      {
        v11 = v6;
        v9 = *(v6 + 24);
        if (v8 >= v9 >> 1)
        {
          count.items._rawValue = sub_1C11023B0((v9 > 1), v8 + 1, 1);
          v6 = v11;
        }

        *(v6 + 16) = v8 + 1;
        *(v6 + 8 * v8++ + 32) = v7++;
      }

      while (rawValue != v7);
    }

    *v5 = v6;
    *(v5 + 8) = debugVisualization;
  }

  count.debugVisualization = debugVisualization;
  return count;
}

uint64_t PhotosInlinePlaybackDebugVisualization.Player.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosInlinePlaybackDebugVisualization.Player.init()(v0);
  return v0;
}

uint64_t PhotosInlinePlaybackDebugVisualization.Player.init()(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  sub_1C1261F60();
  return v1;
}

double sub_1C10DB008(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[2] = v1;
    v7 = v2;
    sub_1C10DB720(v5, sub_1C109F1B4, v6);
  }

  return result;
}

void *sub_1C10DB10C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10DB180(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C10DB180@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_40();
  sub_1C10DE824(v3, v4, &protocol conformance descriptor for PhotosInlinePlaybackDebugVisualization.Player);
  sub_1C1261F30();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t (*sub_1C10DB22C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtCV17PhotosSwiftUICore38PhotosInlinePlaybackDebugVisualization6Player___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_40();
  v6 = sub_1C10DE824(v4, v5, &protocol conformance descriptor for PhotosInlinePlaybackDebugVisualization.Player);
  OUTLINED_FUNCTION_1_6(v6);

  *v3 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v3[7] = sub_1C10DB0BC(v3);
  return sub_1C10DB314;
}

uint64_t sub_1C10DB370@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1C10DB470();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1C0FE7B00;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

double sub_1C10DB3E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1C0FFC480;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1C0FCF1B4(v1, v2);
  return sub_1C10DB528(v4, v3);
}

uint64_t sub_1C10DB470()
{
  swift_getKeyPath();
  v5 = v0;
  OUTLINED_FUNCTION_0_40();
  sub_1C10DE824(v1, v2, &protocol conformance descriptor for PhotosInlinePlaybackDebugVisualization.Player);
  sub_1C1261F30();

  swift_beginAccess();
  v3 = *(v0 + 24);
  sub_1C0FCF1B4(v3, *(v5 + 32));
  return v3;
}

double sub_1C10DB528(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1C10DB720(KeyPath, sub_1C10DD960, &v7);
  sub_1C0FCF004(a1, a2);

  return result;
}

uint64_t sub_1C10DB5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  sub_1C0FCF1B4(a2, a3);
  return sub_1C0FCF004(v6, v7);
}

uint64_t (*sub_1C10DB62C(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtCV17PhotosSwiftUICore38PhotosInlinePlaybackDebugVisualization6Player___observationRegistrar;
  *v3 = v1;
  OUTLINED_FUNCTION_0_40();
  v6 = sub_1C10DE824(v4, v5, &protocol conformance descriptor for PhotosInlinePlaybackDebugVisualization.Player);
  OUTLINED_FUNCTION_1_6(v6);

  *v3 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v3[7] = sub_1C10DB320(v3);
  return sub_1C10DB714;
}

uint64_t sub_1C10DB720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_40();
  sub_1C10DE824(v3, v4, &protocol conformance descriptor for PhotosInlinePlaybackDebugVisualization.Player);
  return sub_1C1261F20();
}

uint64_t PhotosInlinePlaybackDebugVisualization.Player.deinit()
{
  sub_1C0FCF004(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtCV17PhotosSwiftUICore38PhotosInlinePlaybackDebugVisualization6Player___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosInlinePlaybackDebugVisualization.Player.__deallocating_deinit()
{
  sub_1C0FCF004(v0[3], v0[4]);
  v1 = OBJC_IVAR____TtCV17PhotosSwiftUICore38PhotosInlinePlaybackDebugVisualization6Player___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void (*sub_1C10DB8F4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C10DB22C(v2);
  return sub_1C1077800;
}

void (*sub_1C10DB958(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1C10DB62C(v2);
  return sub_1C10768AC;
}

double PhotosInlinePlaybackDebugVisualization.PlayerView.body.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_1C12650F0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v1)
  {
    sub_1C10DB180(v42);
    switch(v42[0])
    {
      case 1:
        (*(v5 + 104))(v9, *MEMORY[0x1E69814D8], v3);
        v26 = sub_1C1265250();
        v27 = sub_1C12659A0();
        v33 = 0;
        v31[0] = 0;
        *v42 = v26;
        *&v42[8] = xmmword_1C12B4AA0;
        v42[24] = 0;
        *&v42[25] = v32[0];
        *&v42[28] = *(v32 + 3);
        *v43 = MEMORY[0x1E69E7CC0];
        *&v43[8] = v27;
        *&v43[16] = v28;
        v43[24] = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93850, &qword_1C12B4B60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937F0, &qword_1C12B4B30);
        sub_1C10DDDA4();
        sub_1C10DDA98();
        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_5_23();
        v34 = 1;
        v43[25] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937E0, &qword_1C12B4B28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93840, &qword_1C12B4B58);
        sub_1C10DDA0C();
        sub_1C10DDD18();
        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_2_34();
        v36 = 0;
        v43[26] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937C8, &qword_1C12B4B20);
        sub_1C10DD980();
        sub_1C1263C20();
        goto LABEL_10;
      case 2:
        v16 = sub_1C1265130();
        v17 = sub_1C12659A0();
        v19 = v18;
        v20 = sub_1C12652F0();
        *(v41 + 8) = xmmword_1C12B4AB0;
        *&v41[0] = v16;
        *(&v41[1] + 1) = v20;
        *&v41[2] = v17;
        *(&v41[2] + 1) = v19;
        LOBYTE(v41[3]) = 1;
        goto LABEL_7;
      case 3:
        v21 = sub_1C1265180();
        v22 = sub_1C12659A0();
        v24 = v23;
        v25 = sub_1C12652F0();
        *&v41[0] = v21;
        *(&v41[0] + 1) = v25;
        *&v41[1] = v22;
        *(&v41[1] + 1) = v24;
        memset(&v41[2], 0, 17);
LABEL_7:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937F0, &qword_1C12B4B30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93810, &qword_1C12B4B40);
        sub_1C10DDA98();
        sub_1C10DDB50();
        sub_1C1263C20();
        LOBYTE(v32[0]) = v43[16];
        v36 = 0;
        v43[25] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937E0, &qword_1C12B4B28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93840, &qword_1C12B4B58);
        sub_1C10DDA0C();
        sub_1C10DDD18();
        OUTLINED_FUNCTION_4_33();
        OUTLINED_FUNCTION_2_34();
        v35 = 0;
        goto LABEL_8;
      default:
        v10 = sub_1C12651B0();
        v11 = sub_1C12659A0();
        v13 = v12;
        v14 = sub_1C12652F0();
        v34 = 1;
        *v42 = v10;
        *&v42[8] = v14;
        *&v42[16] = v11;
        *&v42[24] = v13;
        v43[24] = 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93850, &qword_1C12B4B60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937F0, &qword_1C12B4B30);
        sub_1C10DDDA4();
        sub_1C10DDA98();
        OUTLINED_FUNCTION_4_33();
        OUTLINED_FUNCTION_5_23();
        v36 = 1;
        v43[25] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937E0, &qword_1C12B4B28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93840, &qword_1C12B4B58);
        sub_1C10DDA0C();
        sub_1C10DDD18();
        OUTLINED_FUNCTION_4_33();
        OUTLINED_FUNCTION_2_34();
        LOBYTE(v32[0]) = 0;
LABEL_8:
        v43[26] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937C8, &qword_1C12B4B20);
        sub_1C10DD980();
        sub_1C1263C20();

LABEL_10:

        *v42 = v41[0];
        *&v42[16] = v41[1];
        *v43 = v41[2];
        *&v43[11] = *(&v41[2] + 11);
        break;
    }
  }

  else
  {
    (*(v5 + 104))(v9, *MEMORY[0x1E69814D8], v3, v7);
    v15 = sub_1C1265250();
    v35 = 1;
    *&v41[0] = v15;
    *(v41 + 8) = v37;
    *(&v41[1] + 8) = v38;
    *(&v41[2] + 8) = v39;
    WORD4(v41[3]) = v40;
    BYTE10(v41[3]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE937C8, &qword_1C12B4B20);
    sub_1C10DD980();
    sub_1C1263C20();
  }

  v29 = *&v42[16];
  *a1 = *v42;
  a1[1] = v29;
  a1[2] = *v43;
  result = *&v43[11];
  *(a1 + 43) = *&v43[11];
  return result;
}

void *PhotosInlinePlaybackDebugVisualization.Cell.body.getter@<X0>(uint64_t a7@<X8>)
{
  v9 = *v7;
  v10 = sub_1C12659A0();
  v25 = v11;
  v26 = v10;
  sub_1C10DC1E8(v9, __dst);
  v24 = __dst[0];
  v21 = BYTE8(__dst[1]);
  v22 = *&__dst[2];
  v23 = *&__dst[1];
  v12 = sub_1C12659A0();
  v19 = v13;
  v20 = v12;
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v27[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93868, &qword_1C12B4BC0);
  sub_1C1265410();
  v15 = __dst[0];
  *&__src[0] = v9;
  *(__src + 8) = xmmword_1C12B4AC0;
  *(&__src[1] + 1) = sub_1C10DC374;
  *&__src[2] = 0;
  *(&__src[2] + 1) = sub_1C10DC3B0;
  memset(&__src[3], 0, 25);
  *&__src[5] = KeyPath;
  BYTE8(__src[5]) = 0;
  *&__src[6] = v18;
  BYTE8(__src[6]) = 0;
  __src[7] = __dst[0];
  *&__src[8] = v20;
  *(&__src[8] + 1) = v19;
  v28 = v21;
  memcpy(__dst, __src, sizeof(__dst));
  v31 = xmmword_1C12B4AC0;
  v30 = v9;
  v32 = sub_1C10DC374;
  v33 = 0;
  v34 = sub_1C10DC3B0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = KeyPath;
  v40 = 0;
  v41 = v18;
  v42 = 0;
  v43 = v15;
  v44 = v20;
  v45 = v19;
  sub_1C0FDB800(__src, v27, &qword_1EBE93870, &qword_1C12B4BC8);
  sub_1C0FD1A5C(&v30, &qword_1EBE93870, &qword_1C12B4BC8);
  v16 = v28;
  *a7 = v26;
  *(a7 + 8) = v25;
  *(a7 + 16) = v24;
  *(a7 + 32) = v23;
  *(a7 + 40) = v16;
  *(a7 + 48) = v22;
  return memcpy((a7 + 56), __dst, 0x90uLL);
}

double sub_1C10DC1E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C12650F0();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v5);
  v8 = sub_1C1265250();
  v14 = 0x206C6C6543;
  v15 = 0xE500000000000000;
  v13[1] = a1;
  v9 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v9);

  v10 = v14;
  v11 = v15;
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = 0;
  *(a2 + 32) = MEMORY[0x1E69E7CC0];

  sub_1C0FDB850(v10, v11, 0);

  sub_1C0FDB8E8(v10, v11, 0);

  return result;
}

uint64_t sub_1C10DC374()
{
  type metadata accessor for PhotosInlinePlaybackDebugVisualization.Player(0);
  v0 = swift_allocObject();
  PhotosInlinePlaybackDebugVisualization.Player.init()(v0);
  return v0;
}

double sub_1C10DC3B0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

double PhotosInlinePlaybackDebugVisualization.body.getter@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93878, &qword_1C12B4BD0);
  OUTLINED_FUNCTION_0();
  v26 = v4;
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93880, &qword_1C12B4BD8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  *a1 = sub_1C1263AA0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v12 = sub_1C1264440();
  sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v12)
  {
    sub_1C1264430();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93888, &qword_1C12B4BE0);
  v23 = *(v13 + 44);
  MEMORY[0x1EEE9AC00](v13);
  *(&v22 - 2) = v10;
  *(&v22 - 8) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93890, &qword_1C12B4BE8);
  v24 = v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93898, &qword_1C12B4BF0);
  v15 = sub_1C0FDB6D4(&qword_1EBE938A0, &qword_1EBE93898, &qword_1C12B4BF0, MEMORY[0x1E697DA90]);
  v28 = v14;
  v29 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v25;
  sub_1C1262950();
  v17 = &v9[*(v6 + 36)];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = swift_getKeyPath();
  v17[24] = 0;
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(0);
  sub_1C1263D00();
  sub_1C12628D0();
  type metadata accessor for PhotosScrollViewTracker(0);
  sub_1C12628D0();
  (*(v26 + 32))(v9, v16, v27);
  sub_1C0FDB71C(v9, a1 + v23, &qword_1EBE93880, &qword_1C12B4BD8);
  v18 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE938A8, &qword_1C12B4BF8) + 36);
  v19 = v18 + *(type metadata accessor for PhotosInlinePlaybackEnvironment(0) + 28);
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = *(type metadata accessor for PhotosScenePhase(0) + 20);
  *(v19 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE938B0, &qword_1C12B4C58);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PhotosInlinePlaybackCoordinator(0);
  sub_1C12628D0();
  *v18 = 3;
  *&result = 1;
  *(v18 + 8) = xmmword_1C12A8B40;
  *(v18 + 24) = 5;
  *(v18 + 32) = v24;
  *(v18 + 40) = 0x3FE8000000000000;
  *(v18 + 48) = 1;
  *(v18 + 56) = 0x3FE8000000000000;
  *(v18 + 64) = 1;
  return result;
}

uint64_t sub_1C10DC7D4(uint64_t a1, char a2)
{
  v4 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93898, &qword_1C12B4BF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = a1;
  v12 = a2;
  sub_1C1263AA0();
  v13 = 0;
  sub_1C10DE824(&qword_1EDE7BBA0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1C1266FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93918, &qword_1C12B4E90);
  sub_1C10DE8B0(&qword_1EBE93920, &qword_1EBE93918, &qword_1C12B4E90, sub_1C10DE380);
  sub_1C1262910();
  sub_1C0FDB6D4(&qword_1EBE938A0, &qword_1EBE93898, &qword_1C12B4BF0, MEMORY[0x1E697DA90]);
  sub_1C1264CD0();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C10DCA2C(uint64_t a1, char a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91448, &unk_1C12A8C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93930, &qword_1C12B4E98);
  sub_1C0FDB6D4(&qword_1EBE939B8, &qword_1EBE91448, &unk_1C12A8C90, MEMORY[0x1E69E6338]);
  sub_1C10DE380();
  return sub_1C1265680();
}

uint64_t sub_1C10DCB5C(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = sub_1C12638E0();
  sub_1C10DD6D8(&v7);
  v4 = v9;
  v5 = v7;
  v15 = 1;
  v14 = v8;
  v13 = v10;
  v7 = v3;
  v8 = 1;
  v9 = v5;
  v10 = v14;
  v11 = v4;
  v12 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93940, &qword_1C12B4EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939C0, &qword_1C12B4F10);
  sub_1C0FDB6D4(&qword_1EBE93938, &qword_1EBE93940, &qword_1C12B4EA0, MEMORY[0x1E69817F8]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93948, &qword_1C12B4EA8);
  sub_1C10DE488();
  swift_getOpaqueTypeConformance2();
  return sub_1C12656F0();
}

uint64_t sub_1C10DCCC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = sub_1C1264160();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939A0, &unk_1C12B4ED0);
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v34 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93960, &qword_1C12B4EB0);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v34 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93948, &qword_1C12B4EA8);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v34 - v14;
  v15 = sub_1C1264420();
  sub_1C1264430();
  sub_1C1264430();
  v16 = sub_1C1264430();
  if (v16 != v15)
  {
    v16 = sub_1C1264430();
  }

  MEMORY[0x1EEE9AC00](v16);
  *(&v34 - 4) = a1;
  *(&v34 - 24) = a2 & 1;
  *(&v34 - 2) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939C8, &qword_1C12B4F18);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE939D0, &unk_1C12B4F20);
  v18 = sub_1C0FDB6D4(&qword_1EBE939D8, &qword_1EBE939D0, &unk_1C12B4F20, MEMORY[0x1E697DA78]);
  *&v42 = v17;
  *(&v42 + 1) = v18;
  swift_getOpaqueTypeConformance2();
  sub_1C1262950();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = v35;
  (*(v9 + 16))(v13, v11, v35);
  v21 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93990, &qword_1C12B4EC8) + 36)];
  *v21 = sub_1C10DE898;
  v21[1] = v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93980, &qword_1C12B4EC0);
  sub_1C10DACBC(1, &v13[*(v22 + 36)]);
  v23 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93970, &qword_1C12B4EB8) + 36)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = swift_getKeyPath();
  v23[24] = 0;
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(0);
  sub_1C1263D00();
  sub_1C12628D0();
  type metadata accessor for PhotosScrollViewTracker(0);
  sub_1C12628D0();
  (*(v9 + 8))(v11, v20);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = &v13[*(v34 + 36)];
  *v25 = sub_1C10DEA0C;
  v25[1] = v24;
  sub_1C12659A0();
  sub_1C1262C80();
  v26 = v37;
  sub_1C0FDB71C(v13, v37, &qword_1EBE93960, &qword_1C12B4EB0);
  v27 = (v26 + *(v36 + 36));
  v28 = v43;
  *v27 = v42;
  v27[1] = v28;
  v27[2] = v44;
  v29 = v38;
  sub_1C1263D40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95BE0, &unk_1C12BDB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  v31 = sub_1C1264440();
  *(inited + 32) = v31;
  v32 = sub_1C1264420();
  *(inited + 33) = v32;
  sub_1C1264430();
  sub_1C1264430();
  if (sub_1C1264430() != v31)
  {
    sub_1C1264430();
  }

  sub_1C1264430();
  if (sub_1C1264430() != v32)
  {
    sub_1C1264430();
  }

  sub_1C10DE488();
  sub_1C1264C50();
  (*(v40 + 8))(v29, v41);
  return sub_1C0FB7D30(v26);
}

uint64_t sub_1C10DD2BC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939D0, &unk_1C12B4F20);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12[-v9];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  sub_1C12638E0();
  v16 = 0;
  sub_1C10DE824(&qword_1EDE7BBA0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1C1266FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE939F0, &qword_1C12B4F40);
  sub_1C10DE8B0(&qword_1EBE939F8, &qword_1EBE939F0, &qword_1C12B4F40, sub_1C10DE92C);
  sub_1C12628B0();
  sub_1C0FDB6D4(&qword_1EBE939D8, &qword_1EBE939D0, &unk_1C12B4F20, MEMORY[0x1E697DA78]);
  sub_1C1264CD0();
  return (*(v8 + 8))(v10, v7);
}

char *sub_1C10DD51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_1C11023B0(0, v3, 0);
    v7 = 10000 * a3;
    if ((a3 * 10000) >> 64 == (10000 * a3) >> 63)
    {
      v8 = v14;
      v9 = (a1 + 32);
      while (1)
      {
        v10 = *v9++;
        v11 = v10 + v7;
        if (__OFADD__(v10, v7))
        {
          break;
        }

        v15 = v8;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1C11023B0((v12 > 1), v13 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v13 + 1;
        *(v8 + 8 * v13 + 32) = v11;
        if (!--v3)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91448, &unk_1C12A8C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A08, &qword_1C12B4F48);
    sub_1C0FDB6D4(&qword_1EBE939B8, &qword_1EBE91448, &unk_1C12A8C90, MEMORY[0x1E69E6338]);
    sub_1C10DE92C();
    return sub_1C1265680();
  }

  return result;
}

void *sub_1C10DD6C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  return result;
}

double sub_1C10DD6D8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v2);

  *a1 = 0x20666C656853;
  *(a1 + 8) = 0xE600000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_1C0FDB850(0x20666C656853, 0xE600000000000000, 0);

  sub_1C0FDB8E8(0x20666C656853, 0xE600000000000000, 0);

  return result;
}

uint64_t sub_1C10DD7A0()
{
  OUTLINED_FUNCTION_35();
  result = sub_1C11FDFD0();
  *v0 = result;
  return result;
}

uint64_t sub_1C10DD818(uint64_t a1)
{
  sub_1C1262930();
  OUTLINED_FUNCTION_0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C12634A0();
}

uint64_t sub_1C10DD8D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosInlinePlaybackCoordinator(0);
  swift_allocObject();
  result = sub_1C1163B08();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for PhotosInlinePlaybackDebugVisualization.Player(uint64_t a1)
{
  result = qword_1EBE938B8;
  if (!qword_1EBE938B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C10DD980()
{
  result = qword_1EBE937D0;
  if (!qword_1EBE937D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937C8, &qword_1C12B4B20);
    sub_1C10DDA0C();
    sub_1C10DDD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE937D0);
  }

  return result;
}

unint64_t sub_1C10DDA0C()
{
  result = qword_1EBE937D8;
  if (!qword_1EBE937D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937E0, &qword_1C12B4B28);
    sub_1C10DDA98();
    sub_1C10DDB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE937D8);
  }

  return result;
}

unint64_t sub_1C10DDA98()
{
  result = qword_1EBE937E8;
  if (!qword_1EBE937E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE937F0, &qword_1C12B4B30);
    sub_1C0FDB6D4(&qword_1EBE937F8, &qword_1EBE93800, &qword_1C12B4B38, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE937E8);
  }

  return result;
}

unint64_t sub_1C10DDB50()
{
  result = qword_1EBE93808;
  if (!qword_1EBE93808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93810, &qword_1C12B4B40);
    sub_1C10DDC08();
    sub_1C0FDB6D4(&qword_1EBE937F8, &qword_1EBE93800, &qword_1C12B4B38, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93808);
  }

  return result;
}

unint64_t sub_1C10DDC08()
{
  result = qword_1EBE93818;
  if (!qword_1EBE93818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93820, &qword_1C12B4B48);
    sub_1C10DDC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93818);
  }

  return result;
}

unint64_t sub_1C10DDC94()
{
  result = qword_1EBE93828;
  if (!qword_1EBE93828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93830, &qword_1C12B4B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93828);
  }

  return result;
}

unint64_t sub_1C10DDD18()
{
  result = qword_1EBE93838;
  if (!qword_1EBE93838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93840, &qword_1C12B4B58);
    sub_1C10DDDA4();
    sub_1C10DDA98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93838);
  }

  return result;
}

unint64_t sub_1C10DDDA4()
{
  result = qword_1EBE93848;
  if (!qword_1EBE93848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93850, &qword_1C12B4B60);
    sub_1C0FDB6D4(&qword_1EBE93858, &qword_1EBE93860, &qword_1C12B4B68, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93848);
  }

  return result;
}

uint64_t sub_1C10DDEBC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1C10DDEFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C10DDF54(uint64_t a1)
{
  result = sub_1C1261F70();
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

unint64_t sub_1C10DE11C()
{
  result = qword_1EBE938C8;
  if (!qword_1EBE938C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE938D0, &qword_1C12B4E70);
    sub_1C10DD980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE938C8);
  }

  return result;
}

unint64_t sub_1C10DE1A8()
{
  result = qword_1EBE938D8;
  if (!qword_1EBE938D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE938E0, &qword_1C12B4E78);
    sub_1C0FDB6D4(&qword_1EBE938E8, &qword_1EBE938F0, &qword_1C12B4E80, MEMORY[0x1E6981880]);
    sub_1C0FDB6D4(&qword_1EBE938F8, &qword_1EBE93870, &qword_1C12B4BC8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE938D8);
  }

  return result;
}

unint64_t sub_1C10DE28C()
{
  result = qword_1EBE93900;
  if (!qword_1EBE93900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE938A8, &qword_1C12B4BF8);
    sub_1C0FDB6D4(&qword_1EBE93908, &qword_1EBE93910, &qword_1C12B4E88, MEMORY[0x1E6981870]);
    sub_1C10DE824(&unk_1EDE80370, type metadata accessor for PhotosInlinePlaybackEnvironment, &protocol conformance descriptor for PhotosInlinePlaybackEnvironment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93900);
  }

  return result;
}

unint64_t sub_1C10DE380()
{
  result = qword_1EBE93928;
  if (!qword_1EBE93928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93930, &qword_1C12B4E98);
    sub_1C0FDB6D4(&qword_1EBE93938, &qword_1EBE93940, &qword_1C12B4EA0, MEMORY[0x1E69817F8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93948, &qword_1C12B4EA8);
    sub_1C10DE488();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93928);
  }

  return result;
}

unint64_t sub_1C10DE488()
{
  result = qword_1EBE93950;
  if (!qword_1EBE93950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93948, &qword_1C12B4EA8);
    sub_1C10DE514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93950);
  }

  return result;
}

unint64_t sub_1C10DE514()
{
  result = qword_1EBE93958;
  if (!qword_1EBE93958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93960, &qword_1C12B4EB0);
    sub_1C10DE5CC();
    sub_1C0FDB6D4(&qword_1EDE7B9B8, &qword_1EBE90B90, &qword_1C12A9910, MEMORY[0x1E6980918]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93958);
  }

  return result;
}

unint64_t sub_1C10DE5CC()
{
  result = qword_1EBE93968;
  if (!qword_1EBE93968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93970, &qword_1C12B4EB8);
    sub_1C10DE688();
    sub_1C10DE824(qword_1EDE7F168, type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker, &unk_1C12A9AE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93968);
  }

  return result;
}

unint64_t sub_1C10DE688()
{
  result = qword_1EBE93978;
  if (!qword_1EBE93978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93980, &qword_1C12B4EC0);
    sub_1C10DE740();
    sub_1C0FDB6D4(&qword_1EBE939A8, &qword_1EBE939B0, &unk_1C12B4EE0, &unk_1C12A9B34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93978);
  }

  return result;
}

unint64_t sub_1C10DE740()
{
  result = qword_1EBE93988;
  if (!qword_1EBE93988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93990, &qword_1C12B4EC8);
    sub_1C0FDB6D4(&qword_1EBE93998, &qword_1EBE939A0, &unk_1C12B4ED0, MEMORY[0x1E697BE60]);
    sub_1C0FDB6D4(&qword_1EDE7B9B8, &qword_1EBE90B90, &qword_1C12A9910, MEMORY[0x1E6980918]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93988);
  }

  return result;
}

uint64_t sub_1C10DE824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C10DE8B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C10DE92C()
{
  result = qword_1EBE93A00;
  if (!qword_1EBE93A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93A08, &qword_1C12B4F48);
    sub_1C10DE9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A00);
  }

  return result;
}

unint64_t sub_1C10DE9B8()
{
  result = qword_1EBE93A10;
  if (!qword_1EBE93A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A10);
  }

  return result;
}

uint64_t sub_1C10DEA10@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.photosActionManager.getter();
  *a1 = result;
  return result;
}

uint64_t PhotosCellBadgeConfiguration.action.getter()
{
  v0 = OUTLINED_FUNCTION_18();
  sub_1C0FCF1B4(v0, v1);
  return OUTLINED_FUNCTION_18();
}

uint64_t PhotosCellBadgeConfiguration.init(symbolNameProvider:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1C10DEACC()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

__n128 PhotosCellBadgeView.init(model:font:configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a2;
  v13 = a3[1].n128_u64[0];
  v14 = a3[1].n128_u64[1];
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  v16 = type metadata accessor for PhotosCellBadgeView(0, a4, a5, v15);
  (*(*(a4 - 8) + 32))(a6 + v16[9], a1, a4);
  v17 = a6 + v16[10];
  *v17 = v12;
  *(v17 + 8) = *(a2 + 2);
  v18 = (a6 + v16[11]);
  result = *a3;
  *v18 = *a3;
  v18[1].n128_u64[0] = v13;
  v18[1].n128_u64[1] = v14;
  return result;
}

uint64_t PhotosCellBadgeView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A18, &qword_1C12B4F78);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  v6 = v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A20, &qword_1C12B4F80);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  v64 = v8;
  v63 = sub_1C12632E0();
  OUTLINED_FUNCTION_0();
  v58 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A28, &qword_1C12B4F88);
  OUTLINED_FUNCTION_0();
  v55 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34();
  v54 = v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A30, &qword_1C12B4F90);
  OUTLINED_FUNCTION_0();
  v57 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  v56 = v21;
  v22 = v2 + *(a1 + 44);
  v23 = v2;
  v24 = (*v22)(v2 + *(a1 + 36));
  v26 = *(v22 + 16);
  if (v26)
  {
    v27 = *(v22 + 24);
    v28 = *(v13 + 16);
    v49 = v24;
    v50 = v25;
    v29 = v26;
    v28(&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v23, a1);
    v30 = (*(v13 + 80) + 48) & ~*(v13 + 80);
    v31 = swift_allocObject();
    v51 = v12;
    v52 = v29;
    v32 = v23;
    v34 = *(a1 + 16);
    v33 = *(a1 + 24);
    *(v31 + 2) = v34;
    *(v31 + 3) = v33;
    *(v31 + 4) = v29;
    *(v31 + 5) = v27;
    v53 = v27;
    v35 = (*(v13 + 32))(&v31[v30], &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    MEMORY[0x1EEE9AC00](v35);
    *(&v49 - 6) = v34;
    *(&v49 - 5) = v33;
    v36 = v49;
    *(&v49 - 4) = v32;
    *(&v49 - 3) = v36;
    *(&v49 - 2) = v50;
    sub_1C0FCF1B4(v29, v27);
    sub_1C10DF44C();

    v37 = v54;
    sub_1C1265480();

    v38 = v51;
    sub_1C12632D0();
    v39 = OUTLINED_FUNCTION_3_28(&qword_1EDE7B7F0, &qword_1EBE93A28, &qword_1C12B4F88);
    v40 = sub_1C10C6888();
    v41 = v56;
    v42 = v60;
    v43 = v63;
    sub_1C12649F0();
    (*(v58 + 8))(v38, v43);
    (*(v55 + 8))(v37, v42);
    v44 = v57;
    v45 = v61;
    (*(v57 + 16))(v64, v41, v61);
    swift_storeEnumTagMultiPayload();
    v66 = v42;
    v67 = v43;
    v68 = v39;
    v69 = v40;
    OUTLINED_FUNCTION_0_41();
    OUTLINED_FUNCTION_18();
    sub_1C1263C20();
    sub_1C0FCF004(v52, v53);
    return (*(v44 + 8))(v41, v45);
  }

  else
  {
    sub_1C10DF374(v24, v25, v6);

    sub_1C0FB7E00(v6, v64);
    swift_storeEnumTagMultiPayload();
    v47 = OUTLINED_FUNCTION_3_28(&qword_1EDE7B7F0, &qword_1EBE93A28, &qword_1C12B4F88);
    v48 = sub_1C10C6888();
    v66 = v60;
    v67 = v63;
    v68 = v47;
    v69 = v48;
    OUTLINED_FUNCTION_0_41();
    sub_1C10DF44C();
    sub_1C1263C20();
    return sub_1C0FB7E64(v6);
  }
}

double sub_1C10DF2B0(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PhotosCellBadgeView(0, a4, a5, a4);
  sub_1C10DEACC();
  a1();

  return result;
}

uint64_t sub_1C10DF374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = qword_1EDE7AF08;

  if (v5 != -1)
  {
    swift_once();
  }

  PhotosPrefetchableImage(_:font:symbolVariant:)();
  sub_1C100DC0C(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93A18, &qword_1C12B4F78);
  *(a4 + *(result + 36)) = 1;
  return result;
}

unint64_t sub_1C10DF44C()
{
  result = qword_1EDE7BE78;
  if (!qword_1EDE7BE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93A18, &qword_1C12B4F78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91D80, &unk_1C12BE930);
    sub_1C1062140();
    swift_getOpaqueTypeConformance2();
    sub_1C1025E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE78);
  }

  return result;
}

double sub_1C10DF514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = v4[3];
  v7 = *(type metadata accessor for PhotosCellBadgeView(0, v5, v6, a4) - 8);
  v8 = v4[4];
  v9 = v4[5];
  v10 = v4 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1C10DF2B0(v8, v9, v10, v5, v6);
}

uint64_t sub_1C10DF5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A13ActionManagerCIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C10DF660(uint64_t a1)
{
  sub_1C103F710(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v5 = swift_checkMetadataState();
    v3 = v5;
    if (v7 <= 0x3F)
    {
      v3 = type metadata accessor for PhotosCellBadgeConfiguration(319, v5, *(a1 + 24), v6);
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v3;
}

uint64_t sub_1C10DF720(uint64_t result, unsigned int a2, uint64_t a3)
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
    v18 = (result + v7 + 9) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((((v9 + v18) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
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
    v10 = ((((v9 + ((v7 + 9) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 32;
    v11 = a2 - v8;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C10DF888(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v12 = ((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFE0)
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

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
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
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 9] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = ((((v11 + v19) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              v20[2] = 0;
              v20[3] = 0;
              v20[1] = 0;
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
    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((((v11 + ((v10 + 9) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 32);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C10DFA8C()
{
  result = qword_1EDE7BC00;
  if (!qword_1EDE7BC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93A38, &qword_1C12B50A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE93A28, &qword_1C12B4F88);
    sub_1C12632E0();
    sub_1C0FDB6D4(&qword_1EDE7B7F0, &qword_1EBE93A28, &qword_1C12B4F88, MEMORY[0x1E697D680]);
    sub_1C10C6888();
    swift_getOpaqueTypeConformance2();
    sub_1C10DF44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BC00);
  }

  return result;
}

uint64_t PhotosMultiAssetViewItem.id.getter()
{
  v1 = 7104878;
  v2 = *(v0 + 8);
  v8 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](45, 0xE100000000000000);
  if (v2 && (v3 = [v2 uuid]) != 0)
  {
    v4 = v3;
    v1 = sub_1C1265EA0();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x1C68EF850](v1, v6);

  return v8;
}

uint64_t sub_1C10DFC68@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosMultiAssetViewItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void PhotosTitleAccessoryStack.init(alignment:title:subtitle:combinedTitleAndSubtitle:accessory:useCombinedTitlesIfNeeded:)(char *a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, void (*a5)(uint64_t)@<X7>, _BYTE *a6@<X8>, uint64_t a7, char a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12)
{
  v15 = *a1;
  __src[0] = a9;
  __src[1] = a10;
  __src[2] = a11;
  __src[3] = a12;
  v16 = type metadata accessor for PhotosTitleAccessoryStack(0, __src);
  *&a6[v16[27]] = 0x4000000000000000;
  v17 = v16[28];
  *&__src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  v18 = memcpy(&a6[v17], __src, 0xD1uLL);
  *a6 = v15;
  v19 = a2(v18);
  v20 = a3(v19);
  v21 = a2(v20);
  v22 = a4(v21);
  a5(v22);

  a6[v16[25]] = a8;
}

uint64_t PhotosContentTitleCard.init(content:titleStack:)(void (*a1)(void), uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a1();
  v14[0] = a5;
  v14[1] = a6;
  v14[2] = a7;
  v14[3] = a8;
  type metadata accessor for PhotosContentTitleCard(0, v14);
  return a3();
}

uint64_t PhotosContentTitleCard.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  OUTLINED_FUNCTION_4(255, v4, v5);
  OUTLINED_FUNCTION_22();
  v6 = sub_1C1265B00();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  v7 = sub_1C12655A0();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v18 - v14;
  v18[4] = v4;
  v18[5] = v5;
  v19 = *(a1 + 32);
  v20 = v2;
  sub_1C10A7F5C(v6);
  sub_1C1265590();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v16 = *(v9 + 8);
  v16(v12, v7);
  sub_1C0FDBA4C();
  return (v16)(v15, v7);
}

uint64_t sub_1C10E00A0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a6;
  v9 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  v29 = v23;
  sub_1C0FDBA4C();
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v24 = v30;
  v38 = v30;
  type metadata accessor for PhotosContentTitleCard(0, &v35);
  sub_1C0FDBA4C();
  (*(v16 + 16))(v19, v22, a2);
  v35 = v19;
  (*(v9 + 16))(v11, v14, a3);
  v36 = v11;
  v34[0] = a2;
  v34[1] = a3;
  v32 = v29;
  v33 = v24;
  sub_1C119EE80(&v35, 2, v34);
  v25 = *(v9 + 8);
  v25(v14, a3);
  v26 = *(v16 + 8);
  v26(v22, a2);
  v25(v11, a3);
  return (v26)(v19, a2);
}

uint64_t PhotosTitleStackAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C10E03C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 112);
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

uint64_t PhotosTitleAccessoryStack.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = a1[2];
  OUTLINED_FUNCTION_4(255, v3, v3);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_2_35();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  v4 = sub_1C1263190();
  v5 = MEMORY[0x1E6981840];
  OUTLINED_FUNCTION_4(255, v4, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_22();
  v62 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v51 = sub_1C12654C0();
  OUTLINED_FUNCTION_1();
  v65 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v48 - v8;
  v9 = a1[3];
  OUTLINED_FUNCTION_4(255, v3, v9);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  v10 = sub_1C1263190();
  v11 = a1[4];
  OUTLINED_FUNCTION_4(255, v10, v11);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C1262C50();
  OUTLINED_FUNCTION_22();
  v12 = sub_1C1263C30();
  v13 = a1[5];
  sub_1C1263190();
  v14 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v14, v5, v15);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  v16 = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4(v16, v12, v17);
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v53 = sub_1C12654C0();
  v54 = MEMORY[0x1E69817F8];
  v55 = swift_getWitnessTable();
  v58 = sub_1C12633A0();
  v57 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v60 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v48 - v20;
  v21 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v61 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v56 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v59 = &v48 - v26;
  *&v27 = v3;
  *(&v27 + 1) = v9;
  *&v28 = v11;
  *(&v28 + 1) = v13;
  v48 = v28;
  v49 = v27;
  v75 = v27;
  v76 = v28;
  v29 = a1;
  v50 = a1;
  v30 = a1[6];
  v31 = a1[7];
  v77 = v30;
  v78 = v31;
  v33 = v29[9];
  v79 = v29[8];
  v32 = v79;
  v80 = v33;
  v34 = v66;
  v81 = v66;
  sub_1C1012734(v62);
  v35 = v63;
  sub_1C12654B0();
  v68 = v49;
  v69 = v48;
  v70 = v30;
  v71 = v31;
  v72 = v32;
  v73 = v33;
  v74 = v34;
  v36 = v51;
  v37 = swift_getWitnessTable();
  sub_1C10A0734(v36, v53, v37, v55, v38, v39);
  v40 = v52;
  sub_1C1264F60();
  (*(v65 + 8))(v35, v36);
  sub_1C10E03C4(v50, v86);
  sub_1C100C7D0(v86);
  OUTLINED_FUNCTION_5_3();
  v41 = swift_getWitnessTable();
  v84 = v37;
  v85 = v41;
  v42 = v57;
  v43 = swift_getWitnessTable();
  v44 = v56;
  sub_1C1264FA0();
  (*(v60 + 8))(v40, v42);
  v82 = v43;
  v83 = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  v45 = v59;
  sub_1C0FDBA4C();
  v46 = *(v61 + 8);
  v46(v44, v21);
  sub_1C0FDBA4C();
  return (v46)(v45, v21);
}

uint64_t sub_1C10E0BC0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a7;
  v27 = a8;
  v25 = a6;
  v28 = a1;
  v29 = a9;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  v14 = sub_1C1263190();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v44 = a10;
  v21 = type metadata accessor for PhotosTitleAccessoryStack(0, &v37);
  sub_1C10E0E68(v21);
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x1E697E5C0];
  v22 = swift_getWitnessTable();
  sub_1C0FDBA4C();
  v23 = *(v15 + 8);
  v23(v17, v14);
  (*(v15 + 16))(v17, v20, v14);
  v33 = 0;
  v34 = 1;
  v37 = v17;
  v38 = &v33;
  v32[0] = v14;
  v32[1] = MEMORY[0x1E6981840];
  v30 = v22;
  v31 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v37, 2, v32);
  v23(v20, v14);
  return (v23)(v17, v14);
}

uint64_t sub_1C10E0E68(uint64_t a1)
{
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  v4 = sub_1C1265B00();
  swift_getWitnessTable();
  v5 = sub_1C12655A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = v3;
  v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v16 = v1;
  sub_1C10A7F5C(v4);
  sub_1C1265590();
  swift_getWitnessTable();
  sub_1C1264F50();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C10E1030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a7;
  v28 = a8;
  v25 = a1;
  v26 = a6;
  v29 = a9;
  v24 = a10;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C1262C50();
  sub_1C1263C30();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  v14 = sub_1C1265B00();
  swift_getWitnessTable();
  v15 = sub_1C12654C0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v24 - v20;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v24;
  v38 = v25;
  sub_1C1012734(v14);
  sub_1C12654B0();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v22 = *(v16 + 8);
  v22(v18, v15);
  sub_1C0FDBA4C();
  return (v22)(v21, v15);
}

unint64_t sub_1C10E13A8()
{
  result = qword_1EBE93A40;
  if (!qword_1EBE93A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE93A40);
  }

  return result;
}

uint64_t sub_1C10E1448@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v93 = a8;
  v92 = a7;
  v91 = a6;
  v94 = a1;
  v103 = a9;
  v106 = a10;
  v14 = sub_1C1263190();
  swift_getTupleTypeMetadata2();
  v15 = sub_1C1265B00();
  v88 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v87 = &WitnessTable - v16;
  v89 = v14;
  v84 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &WitnessTable - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &WitnessTable - v20;
  v102 = v21;
  v101 = sub_1C1266790();
  v99 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &WitnessTable - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v105 = &WitnessTable - v24;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v25 = sub_1C12655A0();
  v81 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &WitnessTable - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v79 = &WitnessTable - v29;
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v30 = sub_1C1262C50();
  v78 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &WitnessTable - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v77 = &WitnessTable - v34;
  v98 = sub_1C1263C30();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &WitnessTable - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v107 = &WitnessTable - v37;
  v82 = a2;
  v119 = a2;
  v120 = a3;
  v83 = a3;
  v38 = a4;
  v121 = a4;
  v122 = a5;
  v104 = a5;
  v39 = v91;
  v123 = v91;
  v40 = v92;
  v124 = v92;
  v41 = v93;
  v125 = v93;
  v126 = v106;
  v42 = type metadata accessor for PhotosTitleAccessoryStack(0, &v119);
  v43 = v94;
  v44 = v94[*(v42 + 100)] == 1;
  v90 = v30;
  v80 = v42;
  if (v44)
  {
    v45 = sub_1C1264420();
    MEMORY[0x1EEE9AC00](v45);
    v46 = v83;
    *(&WitnessTable - 10) = v82;
    *(&WitnessTable - 9) = v46;
    v47 = v104;
    *(&WitnessTable - 8) = v38;
    *(&WitnessTable - 7) = v47;
    *(&WitnessTable - 6) = v39;
    *(&WitnessTable - 5) = v40;
    *(&WitnessTable - 4) = v41;
    v52 = v106;
    *(&WitnessTable - 3) = v106;
    *(&WitnessTable - 2) = v43;
    sub_1C1262C40();
    swift_getWitnessTable();
    v48 = v77;
    sub_1C0FDBA4C();
    v49 = *(v78 + 8);
    v49(v32, v30);
    sub_1C0FDBA4C();
    swift_getWitnessTable();
    sub_1C1112D68();
    v49(v32, v30);
    v49(v48, v30);
  }

  else
  {
    sub_1C10E2468(v42);
    swift_getWitnessTable();
    v50 = v79;
    sub_1C0FDBA4C();
    v51 = *(v81 + 8);
    v51(v27, v25);
    sub_1C0FDBA4C();
    swift_getWitnessTable();
    sub_1C1112E18();
    v51(v27, v25);
    v51(v50, v25);
    v52 = v106;
  }

  v95 = v25;
  v53 = v101;
  v54 = v100;
  v55 = v105;
  v56 = v99;
  if (*v43)
  {
    v57 = v100;
    v58 = 1;
    v59 = v102;
  }

  else
  {
    v60 = v86;
    sub_1C12649E0();
    v110 = v52;
    v111 = MEMORY[0x1E697F568];
    v61 = v89;
    v62 = swift_getWitnessTable();
    v63 = v85;
    sub_1C0FDBA4C();
    v64 = v84;
    v65 = *(v84 + 8);
    v65(v60, v61);
    v108 = 0;
    v109 = 1;
    v119 = &v108;
    (*(v64 + 16))(v60, v63, v61);
    v120 = v60;
    v117 = MEMORY[0x1E6981840];
    v118 = v61;
    v115 = MEMORY[0x1E6981838];
    v116 = v62;
    v66 = v87;
    sub_1C119EE80(&v119, 2, &v117);
    v65(v63, v61);
    v65(v60, v61);
    v55 = v105;
    v59 = v102;
    (*(v88 + 32))(v54, v66, v102);
    v57 = v54;
    v58 = 0;
  }

  __swift_storeEnumTagSinglePayload(v57, v58, 1, v59);
  swift_getWitnessTable();
  sub_1C1170030(v54, v55);
  v67 = *(v56 + 8);
  v67(v54, v53);
  v68 = v97;
  v69 = v96;
  v70 = v98;
  (*(v97 + 16))(v96, v107, v98);
  v119 = v69;
  (*(v56 + 16))(v54, v55, v53);
  v120 = v54;
  v117 = v70;
  v118 = v53;
  v71 = v55;
  v72 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v113 = v72;
  v114 = v73;
  v115 = swift_getWitnessTable();
  v112 = swift_getWitnessTable();
  v116 = swift_getWitnessTable();
  sub_1C119EE80(&v119, 2, &v117);
  v67(v71, v53);
  v74 = *(v68 + 8);
  v74(v107, v70);
  v67(v54, v53);
  return (v74)(v69, v70);
}

uint64_t sub_1C10E1FF0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v40 = a8;
  v45 = a7;
  v44 = a6;
  v43 = a5;
  v46 = a1;
  v50 = a9;
  v41 = a4;
  v49 = *(a4 - 8);
  v42 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v39 - v16;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v17 = sub_1C12655A0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = sub_1C1263190();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v51 = &v39 - v26;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = v43;
  v59 = v44;
  v60 = v45;
  v61 = a8;
  v62 = v42;
  v27 = type metadata accessor for PhotosTitleAccessoryStack(0, &v55);
  sub_1C10E2468(v27);
  sub_1C1264470();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264FB0();
  (*(v18 + 8))(v20, v17);
  v54[2] = WitnessTable;
  v54[3] = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  v30 = v51;
  sub_1C0FDBA4C();
  v31 = *(v22 + 8);
  v31(v24, v21);
  v32 = v47;
  v33 = v41;
  v34 = v40;
  sub_1C0FDBA4C();
  (*(v22 + 16))(v24, v30, v21);
  v55 = v24;
  v36 = v48;
  v35 = v49;
  (*(v49 + 16))(v48, v32, v33);
  v56 = v36;
  v54[0] = v21;
  v54[1] = v33;
  v52 = v29;
  v53 = v34;
  sub_1C119EE80(&v55, 2, v54);
  v37 = *(v35 + 8);
  v37(v32, v33);
  v31(v51, v21);
  v37(v36, v33);
  return (v31)(v24, v21);
}

uint64_t sub_1C10E2468(uint64_t a1)
{
  if (*v1)
  {
    v2 = sub_1C1263AA0();
  }

  else
  {
    v2 = sub_1C1263AB0();
  }

  MEMORY[0x1EEE9AC00](v2);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  return sub_1C1265590();
}

uint64_t sub_1C10E257C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v38 = a6;
  v37 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  v43 = v22;
  v44 = v23;
  v45 = v24;
  v46 = v25;
  v47 = v26;
  v48 = v27;
  v49 = v28;
  v50 = v29;
  type metadata accessor for PhotosTitleAccessoryStack(0, &v43);
  sub_1C0FDBA4C();
  v30 = a5;
  sub_1C0FDBA4C();
  (*(v15 + 16))(v18, v21, a2);
  v43 = v18;
  v31 = v37;
  v32 = v39;
  (*(v37 + 16))(v39, v13, a3);
  v44 = v32;
  v42[0] = a2;
  v42[1] = a3;
  v40 = a4;
  v41 = v30;
  sub_1C119EE80(&v43, 2, v42);
  v33 = *(v31 + 8);
  v33(v13, a3);
  v34 = *(v15 + 8);
  v34(v21, a2);
  v33(v39, a3);
  return (v34)(v18, a2);
}

uint64_t sub_1C10E2818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v31 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v31 - v18;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  type metadata accessor for PhotosTitleAccessoryStack(0, &v33);
  sub_1C0FDBA4C();
  sub_1C0FDBA4C();
  v28 = *(v8 + 16);
  v28(v13, v19, a2);
  v33 = v13;
  v28(v10, v16, a2);
  v34 = v10;
  v32[0] = a2;
  v32[1] = a2;
  v31[0] = a6;
  v31[1] = a6;
  sub_1C119EE80(&v33, 2, v32);
  v29 = *(v8 + 8);
  v29(v16, a2);
  v29(v19, a2);
  v29(v10, a2);
  return (v29)(v13, a2);
}

uint64_t sub_1C10E2A3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C10E2AC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1C10E2C90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
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
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhotosTitleStackAlignment(_BYTE *result, unsigned int a2, unsigned int a3)
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