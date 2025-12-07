void sub_1C112234C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (qword_1EDE7D858 != -1)
  {
    swift_once();
  }

  if (!*(off_1EDE7D860 + 2))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C0F99DC0(v1);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_1C1264B00();
}

uint64_t sub_1C112241C()
{
  v1 = sub_1C12629F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosBlurLegibilityGradientSpec.Tint(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1121678(v0, v11);
  sub_1C11216D0(&v11[*(v9 + 48)], v7);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0, &qword_1C12B8BD0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) != 1)
  {
    v15 = *v7;
    v16 = *(v12 + 48);
    v17 = sub_1C1265A90();
    (*(*(v17 - 8) + 8))(&v7[v16], v17);
    return v15;
  }

  sub_1C112327C(v4);
  v13 = (*(v2 + 88))(v4, v1);
  if (v13 == *MEMORY[0x1E697DBB8])
  {
    return sub_1C1265190();
  }

  if (v13 == *MEMORY[0x1E697DBA8])
  {
    return sub_1C1265160();
  }

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

uint64_t sub_1C11226C0(uint64_t a1, double a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  sub_1C1266A50();
  v2 = 0;
  do
  {
    ++v2;
    sub_1C12651E0();
    sub_1C1266A10();
    sub_1C1266A60();
    sub_1C1266A70();
    sub_1C1266A30();
  }

  while (v2 != 64);
  return v4;
}

uint64_t sub_1C1122804@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_1C12629F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1265A90();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosBlurLegibilityGradientSpec.Tint(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1121678(v1, v16);
  sub_1C11216D0(&v16[*(v14 + 48)], v12);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0, &qword_1C12B8BD0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v17) != 1)
  {

    v9 = &v12[*(v17 + 48)];
    return (*(v7 + 32))(v22, v9, v6);
  }

  sub_1C112327C(v5);
  v18 = (*(v3 + 88))(v5, v2);
  if (v18 == *MEMORY[0x1E697DBB8])
  {
    v19 = MEMORY[0x1E6981E00];
LABEL_7:
    (*(v7 + 104))(v9, *v19, v6);
    return (*(v7 + 32))(v22, v9, v6);
  }

  if (v18 == *MEMORY[0x1E697DBA8])
  {
    v19 = MEMORY[0x1E6981DE8];
    goto LABEL_7;
  }

  result = sub_1C1266B70();
  __break(1u);
  return result;
}

unint64_t sub_1C1122B3C()
{
  result = qword_1EDE77260;
  if (!qword_1EDE77260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94618, &unk_1C12B8C60);
    sub_1C1122BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77260);
  }

  return result;
}

unint64_t sub_1C1122BC8()
{
  result = qword_1EDE77448;
  if (!qword_1EDE77448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94610, &qword_1C12B8C58);
    sub_1C1122C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77448);
  }

  return result;
}

unint64_t sub_1C1122C54()
{
  result = qword_1EDE76E60;
  if (!qword_1EDE76E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94608, &qword_1C12B8C50);
    sub_1C1122CE0();
    sub_1C1122E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E60);
  }

  return result;
}

unint64_t sub_1C1122CE0()
{
  result = qword_1EDE77008;
  if (!qword_1EDE77008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945F8, &qword_1C12B8C40);
    sub_1C1122D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77008);
  }

  return result;
}

unint64_t sub_1C1122D6C()
{
  result = qword_1EDE77038;
  if (!qword_1EDE77038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94620, &qword_1C12B8C70);
    sub_1C1122E24();
    sub_1C0FDB6D4(&qword_1EDE76FC0, &qword_1EBE94648, &qword_1C12B8C98, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77038);
  }

  return result;
}

unint64_t sub_1C1122E24()
{
  result = qword_1EDE770B0;
  if (!qword_1EDE770B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94600, &qword_1C12B8C48);
    sub_1C1122EDC();
    sub_1C0FDB6D4(&qword_1EDE76FC8, &qword_1EBE94640, &qword_1C12B8C90, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770B0);
  }

  return result;
}

unint64_t sub_1C1122EDC()
{
  result = qword_1EDE7BD70;
  if (!qword_1EDE7BD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94628, &qword_1C12B8C78);
    sub_1C1122F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD70);
  }

  return result;
}

unint64_t sub_1C1122F68()
{
  result = qword_1EDE7BDF8;
  if (!qword_1EDE7BDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94630, &qword_1C12B8C80);
    sub_1C0FDC6A0();
    sub_1C0FDB6D4(&qword_1EDE7BD00, &qword_1EBE94638, &qword_1C12B8C88, MEMORY[0x1E697E8C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDF8);
  }

  return result;
}

unint64_t sub_1C1123020()
{
  result = qword_1EDE77090;
  if (!qword_1EDE77090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945E0, &qword_1C12B8C28);
    sub_1C11230AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77090);
  }

  return result;
}

unint64_t sub_1C11230AC()
{
  result = qword_1EDE77148;
  if (!qword_1EDE77148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945D8, &qword_1C12B8C20);
    sub_1C1123138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77148);
  }

  return result;
}

unint64_t sub_1C1123138()
{
  result = qword_1EDE7BDC8;
  if (!qword_1EDE7BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945D0, &qword_1C12B8C18);
    sub_1C11231C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDC8);
  }

  return result;
}

unint64_t sub_1C11231C4()
{
  result = qword_1EDE7BED8;
  if (!qword_1EDE7BED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE945C8, &qword_1C12B8C10);
    sub_1C0FDB6D4(&qword_1EDE7C050, &qword_1EBE94650, &unk_1C12B8CA0, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BED8);
  }

  return result;
}

uint64_t sub_1C112327C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PhotosBlurLegibilityGradient(0);
  sub_1C0FE5654(v1 + *(v10 + 24), v9, &unk_1EBE91930, &qword_1C12A3650);
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

uint64_t static PhotosBlurLegibilityGradientSpec.Tint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1265A90();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for PhotosBlurLegibilityGradientSpec.Tint(0);
  v13 = OUTLINED_FUNCTION_15(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94660, &qword_1C12B8CB8);
  OUTLINED_FUNCTION_15(v17);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  v22 = (&v33 + *(v21 + 56) - v19);
  sub_1C1121678(a1, &v33 - v19);
  sub_1C1121678(a2, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0, &qword_1C12B8BD0);
  OUTLINED_FUNCTION_18_22(v20);
  if (!v26)
  {
    OUTLINED_FUNCTION_4_39();
    sub_1C1121678(v20, v16);
    v25 = *(v23 + 48);
    OUTLINED_FUNCTION_18_22(v22);
    if (!v26)
    {
      v28 = *(v5 + 32);
      v33 = *v22;
      v34 = v11;
      v28(v11);
      (v28)(v8, v22 + v25, v4);
      v29 = sub_1C1265100();
      if (v29)
      {
        v30 = v34;
        v24 = sub_1C1265A80();

        v31 = *(v5 + 8);
        v31(v8, v4);
        v31(v30, v4);
        OUTLINED_FUNCTION_3_35();
        return v24 & 1;
      }

      v32 = *(v5 + 8);
      v32(v8, v4);
      v32(v34, v4);
      OUTLINED_FUNCTION_3_35();
      goto LABEL_10;
    }

    (*(v5 + 8))(v16 + v25, v4);

LABEL_9:
    sub_1C0FD1A5C(v20, &qword_1EBE94660, &qword_1C12B8CB8);
LABEL_10:
    v24 = 0;
    return v24 & 1;
  }

  OUTLINED_FUNCTION_18_22(v22);
  if (!v26)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_3_35();
  v24 = 1;
  return v24 & 1;
}

uint64_t PhotosBlurLegibilityGradientSpec.init(enableBlur:blurCurve:blurRadius:blurDistanceToBaseline:tintCurve:tintOpacity:edge:tint:)@<X0>(char a1@<W0>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v10 = *a3;
  *a5 = a1;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  *(a5 + 24) = a2;
  *(a5 + 32) = a8;
  *(a5 + 40) = v10;
  type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  OUTLINED_FUNCTION_4_39();
  return sub_1C11216D0(a4, a5 + v11);
}

uint64_t PhotosBlurLegibilityGradientSpec.Edge.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t static PhotosBlurLegibilityGradientSpec.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || *(a1 + 3) != *(a2 + 3) || a1[4] != a2[4] || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v5 = *(type metadata accessor for PhotosBlurLegibilityGradientSpec(0) + 40);

  return static PhotosBlurLegibilityGradientSpec.Tint.== infix(_:_:)(a1 + v5, a2 + v5);
}

void *sub_1C1123960()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94678, &unk_1C12B8EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C12A3440;
  *(inited + 32) = 0;
  if (qword_1EDE7D6F0 != -1)
  {
    swift_once();
  }

  result = sub_1C0F99EAC(0, qword_1EDE7D6F8);
  if (!result)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v2 = result;
  if ([result CGImage])
  {
    [v2 scale];
    UIImageOrientation.photosImageOrientation.getter([v2 imageOrientation]);
    v3 = v2;
    sub_1C10E4748(v3);
    if (v4)
    {
      v5 = sub_1C1265370();
    }

    else
    {
      v5 = sub_1C12652E0();
    }

    v6 = v5;
  }

  else
  {
    v6 = sub_1C12652D0();
  }

  *(inited + 40) = v6;
  *(inited + 48) = 1;
  result = sub_1C0F99EAC(1, qword_1EDE7D6F8);
  if (!result)
  {
    goto LABEL_19;
  }

  v7 = result;
  if ([result CGImage])
  {
    [v7 scale];
    UIImageOrientation.photosImageOrientation.getter([v7 imageOrientation]);
    v8 = v7;
    sub_1C10E4748(v8);
    if (v9)
    {
      v10 = sub_1C1265370();
    }

    else
    {
      v10 = sub_1C12652E0();
    }

    v11 = v10;
  }

  else
  {
    v11 = sub_1C12652D0();
  }

  *(inited + 56) = v11;
  sub_1C0F9CE38();
  result = sub_1C1265CE0();
  off_1EDE7D860 = result;
  return result;
}

void sub_1C1123C14(uint64_t a1)
{
  type metadata accessor for PhotosBlurLegibilityGradientSpec(319);
  if (v1 <= 0x3F)
  {
    sub_1C10C1CC4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1123CC0(uint64_t a1)
{
  type metadata accessor for PhotosBlurLegibilityGradientSpec(319);
  if (v1 <= 0x3F)
  {
    sub_1C1011E54(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1123D74(uint64_t a1)
{
  type metadata accessor for PXValueAnimationCurve(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PhotosBlurLegibilityGradientSpec.Tint(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C1123E50(uint64_t a1)
{
  sub_1C1123EA8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1C1123EA8(uint64_t a1)
{
  if (!qword_1EDE76CE8)
  {
    sub_1C1265A90();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDE76CE8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhotosBlurLegibilityGradientSpec.Edge(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1123FE0()
{
  result = qword_1EDE76E88;
  if (!qword_1EDE76E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94668, &qword_1C12B8EB0);
    sub_1C1122B3C();
    sub_1C1123020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E88);
  }

  return result;
}

uint64_t sub_1C112406C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1C11240C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_1C1124124(uint64_t a1)
{
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1C68F07E0](a1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1124164(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_27_9();
  sub_1C11242C8(v3, v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C11241A4(char a1)
{
  OUTLINED_FUNCTION_27_9();
  sub_1C11243F0(v3, a1 & 1);
  return sub_1C1266EE0();
}

uint64_t sub_1C11241E8(uint64_t a1)
{
  sub_1C1266E90();
  sub_1C1266EB0();
  return sub_1C1266EE0();
}

double sub_1C1124230(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_31_9();
  }

  sub_1C1265EF0();

  return result;
}

double sub_1C11242C8(uint64_t a1, char a2)
{
  sub_1C1265EF0();

  return result;
}

uint64_t sub_1C11243F0(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x3FE8000000000000;
  }

  else
  {
    v2 = 0x3FF0000000000000;
  }

  return MEMORY[0x1C68F0810](v2);
}

uint64_t sub_1C112444C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_1C1266E90();
  if (!v2)
  {
    OUTLINED_FUNCTION_31_9();
  }

  sub_1C1265EF0();

  return sub_1C1266EE0();
}

uint64_t sub_1C11244D0(uint64_t a1, uint64_t a2)
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](a2);
  return sub_1C1266EE0();
}

uint64_t sub_1C1124514(uint64_t a1, char a2)
{
  sub_1C1266E90();
  sub_1C11242C8(v4, a2);
  return sub_1C1266EE0();
}

uint64_t sub_1C1124558(uint64_t a1, char a2)
{
  sub_1C1266E90();
  sub_1C11243F0(v4, a2 & 1);
  return sub_1C1266EE0();
}

uint64_t sub_1C112459C(uint64_t a1, char a2)
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](a2 & 1);
  return sub_1C1266EE0();
}

uint64_t sub_1C11245E0(uint64_t a1, uint64_t a2)
{
  sub_1C1266E90();
  sub_1C1266EB0();
  return sub_1C1266EE0();
}

uint64_t sub_1C1124624(uint64_t a1, unsigned __int8 a2)
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](a2);
  return sub_1C1266EE0();
}

uint64_t PhotosPrefetchableImage(_:font:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = *(a2 + 10);
  v9 = *(a2 + 11);
  v14 = *(a2 + 9);
  v15 = *(a2 + 8);
  sub_1C1109A94(*a1, v5);
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50(&qword_1EDE833C0);
  }

  *&v16 = v4;
  *(&v16 + 1) = v5;
  v17 = v6;
  OUTLINED_FUNCTION_43_6();
  v18 = v7;
  v19 = v15 | (v14 << 8) | (v8 << 16) | (v9 << 24);

  sub_1C12192C4(&v16);

  if (v6)
  {
    v10 = sub_1C1265320();
  }

  else
  {
    v10 = sub_1C12652F0();
  }

  v11 = v10;
  *&v16 = v7;
  BYTE8(v16) = v15;
  BYTE9(v16) = v14;
  BYTE10(v16) = v8;
  BYTE11(v16) = v9;
  v12 = PhotosPrefetchable.Font.font.getter();
  result = swift_getKeyPath();
  *a3 = v11;
  a3[1] = result;
  a3[2] = v12;
  return result;
}

void PhotosPrefetchableImage(_:imageScale:font:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v49 = v7;
  v44 = sub_1C1265340();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30();
  v47 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v39 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30, &qword_1C12B8F00);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_11_5();
  v16 = *v6;
  v17 = *(v6 + 8);
  v18 = *(v6 + 16);
  v19 = *v4;
  v20 = *v4;
  v21 = *v2;
  v22 = *(v2 + 8);
  v23 = *(v2 + 10);
  v24 = *(v2 + 11);
  v42 = *(v2 + 9);
  v43 = v22;
  v40 = v24;
  v41 = v23;
  v25 = v22 | (v42 << 8) | (v23 << 16) | (v24 << 24);
  sub_1C1109A94(v16, v17);
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50(&qword_1EDE833C0);
  }

  *&v50 = v16;
  *(&v50 + 1) = v17;
  v51 = v18;
  v52 = v20;
  v53 = 4;
  v45 = v21;
  v54 = v21;
  v55 = v25;

  sub_1C12192C4(&v50);

  if (v18)
  {
    v26 = sub_1C1265320();
  }

  else
  {
    v26 = sub_1C12652F0();
  }

  v27 = v26;
  v28 = v47;
  v29 = v44;
  (*(v9 + 104))(v47, **(&unk_1E813BC90 + v19), v44);
  v30 = *(v9 + 32);
  v31 = v48;
  v30(v48, v28, v29);
  KeyPath = swift_getKeyPath();
  v33 = (v0 + *(v46 + 36));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760);
  v30(v33 + *(v34 + 28), v31, v29);
  *v33 = KeyPath;
  *v0 = v27;
  *&v50 = v45;
  BYTE8(v50) = v43;
  BYTE9(v50) = v42;
  BYTE10(v50) = v41;
  BYTE11(v50) = v40;
  v35 = PhotosPrefetchable.Font.font.getter();
  v36 = swift_getKeyPath();
  v37 = v49;
  sub_1C112877C(v0, v49);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D28, &unk_1C12A7750) + 36));
  *v38 = v36;
  v38[1] = v35;
  OUTLINED_FUNCTION_22_0();
}

void PhotosPrefetchableImage(_:font:symbolVariant:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v34 = v7;
  v35 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v32 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_39_4();
  v10 = *v4;
  v11 = *(v4 + 8);
  v12 = *(v4 + 9);
  v13 = *(v4 + 10);
  v14 = *(v4 + 11);
  v30 = __PAIR64__(v11, v12);
  v15 = v11 | (v12 << 8) | (v13 << 16) | (v14 << 24);
  LODWORD(v31) = v2[1];
  HIDWORD(v31) = *v2;
  v16 = OUTLINED_FUNCTION_7_20();
  sub_1C1109A94(v16, v17);
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50(&qword_1EDE833C0);
  }

  OUTLINED_FUNCTION_29_7();
  v39 = v10;
  LODWORD(v40) = v15;

  sub_1C12192C4(&v38);

  OUTLINED_FUNCTION_7_20();
  if (v6)
  {
    v18 = sub_1C1265320();
  }

  else
  {
    v18 = sub_1C12652F0();
  }

  v19 = v18;
  *&v38 = v10;
  BYTE8(v38) = BYTE4(v30);
  BYTE9(v38) = v30;
  BYTE10(v38) = v13;
  BYTE11(v38) = v14;
  v20 = PhotosPrefetchable.Font.font.getter();
  KeyPath = swift_getKeyPath();
  BYTE6(v37) = BYTE4(v31);
  HIBYTE(v37) = v31;
  sub_1C11253E0(KeyPath, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v37, v19, KeyPath, v20, v39, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91D80, &unk_1C12BE930);
  sub_1C1062140();
  sub_1C1264B20();
  (*(v33 + 8))(v0, v36);

  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosPrefetchableImage(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = OUTLINED_FUNCTION_42_0();
  sub_1C1109A94(v4, v5);
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50(&qword_1EDE833C0);
  }

  *&v7 = v1;
  *(&v7 + 1) = v2;
  v8 = v3;
  OUTLINED_FUNCTION_43_6();
  v9 = 0;
  v10 = 65280;

  sub_1C12192C4(&v7);

  OUTLINED_FUNCTION_42_0();
  if (v3)
  {

    return sub_1C1265320();
  }

  else
  {

    return sub_1C12652F0();
  }
}

void PhotosPrefetchableImage(_:symbolVariant:imageScale:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v53 = v7;
  v54 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v52 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v51 = v11 - v10;
  v12 = sub_1C1265340();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_30();
  v48 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v46 - v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30, &qword_1C12B8F00);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_7();
  v21 = *v6;
  v22 = *(v6 + 8);
  v23 = *(v6 + 16);
  v24 = *v4;
  v25 = v4[1];
  v26 = *v2;
  v27 = *v2;
  v47 = __PAIR64__(v24, v25);
  v28 = v24 | (v25 << 8);
  sub_1C1109A94(v21, v22);
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50(&qword_1EDE833C0);
  }

  *&v55 = v21;
  *(&v55 + 1) = v22;
  LOBYTE(v56) = v23;
  BYTE1(v56) = v27;
  WORD1(v56) = v28;
  OUTLINED_FUNCTION_19_13();
  sub_1C12192C4(&v55);

  if (v23)
  {
    v29 = sub_1C1265320();
  }

  else
  {
    v29 = sub_1C12652F0();
  }

  v30 = v29;
  v31 = v48;
  (*(v14 + 104))(v48, **(&unk_1E813BC90 + v26), v12);
  v32 = *(v14 + 32);
  v33 = v49;
  v32(v49, v31, v12);
  KeyPath = swift_getKeyPath();
  v35 = (v0 + *(v50 + 36));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760);
  v37 = (v32)(v35 + *(v36 + 28), v33, v12);
  *v35 = KeyPath;
  *v0 = v30;
  LOBYTE(v55) = BYTE4(v47);
  BYTE1(v55) = v47;
  v38 = v51;
  sub_1C11253E0(v37, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, *(&v55 + 1), v56);
  sub_1C100DB54();
  sub_1C1264B20();
  (*(v52 + 8))(v38, v54);
  sub_1C0FD1A5C(v0, &qword_1EBE90D30, &qword_1C12B8F00);
  OUTLINED_FUNCTION_22_0();
}

void PhotosPrefetchableImage(_:imageScale:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v28 = v4;
  v5 = sub_1C1265340();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = *v3;
  v16 = *(v3 + 8);
  v17 = *(v3 + 16);
  v18 = *v1;
  v19 = *v1;
  sub_1C1109A94(v15, v16);
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50(&qword_1EDE833C0);
  }

  *&v29 = v15;
  *(&v29 + 1) = v16;
  v30 = v17;
  v31 = v19;
  v32 = 4;
  OUTLINED_FUNCTION_19_13();
  sub_1C12192C4(&v29);

  if (v17)
  {
    v20 = sub_1C1265320();
  }

  else
  {
    v20 = sub_1C12652F0();
  }

  v21 = v20;
  (*(v7 + 104))(v11, **(&unk_1E813BC90 + v18), v5);
  v22 = *(v7 + 32);
  v22(v14, v11, v5);
  KeyPath = swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30, &qword_1C12B8F00);
  v25 = v28;
  v26 = (v28 + *(v24 + 36));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760);
  v22(v26 + *(v27 + 28), v14, v5);
  *v26 = KeyPath;
  *v25 = v21;
  OUTLINED_FUNCTION_22_0();
}

void sub_1C11253E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94748, &qword_1C12B9D20);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  v38 = v20[1];
  switch(*v20)
  {
    case 1:
      sub_1C1263030();
      goto LABEL_7;
    case 2:
      sub_1C1263040();
      goto LABEL_7;
    case 3:
      __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
      sub_1C1263000();
      if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
      {
        sub_1C0FD1A5C(v27, &qword_1EBE94748, &qword_1C12B9D20);
      }

      goto LABEL_8;
    default:
      sub_1C1263020();
LABEL_7:
      v39 = *(v30 + 32);
      v39(v27, v34, v28);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
      v40 = OUTLINED_FUNCTION_46();
      (v39)(v40);
LABEL_8:
      sub_1C1126C48(v37, v38, v24);
      (*(v30 + 8))(v37, v28);
      OUTLINED_FUNCTION_22_0();
      return;
  }
}

void PhotosPrefetchableImage(_:imageScale:font:symbolVariant:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v69 = v9;
  v70 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v68 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v67 = v13 - v12;
  v66 = sub_1C1265340();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30();
  v63 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v57 - v20;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30, &qword_1C12B8F00);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v21);
  v60 = (&v57 - v22);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D28, &unk_1C12A7750);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_7();
  v24 = *v8;
  v25 = *(v8 + 8);
  v26 = *(v8 + 16);
  v57 = *v6;
  v27 = v57;
  v28 = *v4;
  v29 = *(v4 + 8);
  v30 = *(v4 + 10);
  v31 = *(v4 + 11);
  v32 = *v2;
  LODWORD(v59) = *(v4 + 9);
  HIDWORD(v59) = v29;
  v58 = __PAIR64__(v30, v31);
  v33 = v29 | (v59 << 8) | (v30 << 16) | (v31 << 24);
  LODWORD(v61) = v2[1];
  HIDWORD(v61) = v32;
  v34 = v32 | (v61 << 8);
  sub_1C1109A94(v24, v25);
  if (qword_1EDE833C0 != -1)
  {
    OUTLINED_FUNCTION_0_50(&qword_1EDE833C0);
  }

  *&v71 = v24;
  *(&v71 + 1) = v25;
  v72 = v26;
  v73 = v27;
  v74 = v34;
  v75 = v28;
  v76 = v33;

  sub_1C12192C4(&v71);

  if (v26)
  {
    v35 = sub_1C1265320();
  }

  else
  {
    v35 = sub_1C12652F0();
  }

  v36 = v35;
  v37 = v63;
  v38 = v66;
  (*(v15 + 104))(v63, **(&unk_1E813BC90 + v57), v66);
  v39 = *(v15 + 32);
  v40 = v64;
  v39(v64, v37, v38);
  KeyPath = swift_getKeyPath();
  v42 = v60;
  v43 = (v60 + *(v62 + 36));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760);
  v39(v43 + *(v44 + 28), v40, v38);
  *v43 = KeyPath;
  *v42 = v36;
  *&v71 = v28;
  BYTE8(v71) = BYTE4(v59);
  BYTE9(v71) = v59;
  BYTE10(v71) = BYTE4(v58);
  BYTE11(v71) = v58;
  v45 = PhotosPrefetchable.Font.font.getter();
  v46 = swift_getKeyPath();
  v47 = sub_1C112877C(v42, v0);
  v48 = (v0 + *(v65 + 36));
  *v48 = v46;
  v48[1] = v45;
  LOBYTE(v71) = BYTE4(v61);
  BYTE1(v71) = v61;
  v49 = v67;
  sub_1C11253E0(v47, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  sub_1C100DA9C();
  OUTLINED_FUNCTION_42_0();
  sub_1C1264B20();
  (*(v68 + 8))(v49, v70);
  sub_1C0FD1A5C(v0, &qword_1EBE90D28, &unk_1C12A7750);
  OUTLINED_FUNCTION_22_0();
}

uint64_t static PhotosPrefetchable.Image.Kind.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v26 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        v7 = sub_1C1266D50();
        v28 = OUTLINED_FUNCTION_46();
        v30 = OUTLINED_FUNCTION_7_27(v28, v29);
        v32 = OUTLINED_FUNCTION_7_27(v30, v31);
        sub_1C100DC0C(v32, v33);
        v14 = OUTLINED_FUNCTION_46();
        goto LABEL_16;
      }

      v42 = OUTLINED_FUNCTION_7_27(v26, v2);
      v44 = OUTLINED_FUNCTION_7_27(v42, v43);
      sub_1C100DC0C(v44, v45);
      v46 = OUTLINED_FUNCTION_5_5();
      sub_1C100DC0C(v46, v47);
      return 1;
    }

LABEL_9:
    v16 = OUTLINED_FUNCTION_46();
    v18 = OUTLINED_FUNCTION_7_27(v16, v17);
    v20 = OUTLINED_FUNCTION_7_27(v18, v19);
    sub_1C100DC0C(v20, v21);
    v22 = OUTLINED_FUNCTION_46();
    sub_1C100DC0C(v22, v23);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v5 && v2 == v4)
  {
    v24 = 1;
    v34 = OUTLINED_FUNCTION_5_28();
    sub_1C1109A94(v34, v35);
    v36 = OUTLINED_FUNCTION_5_28();
    sub_1C1109A94(v36, v37);
    v38 = OUTLINED_FUNCTION_5_28();
    sub_1C100DC0C(v38, v39);
    v40 = OUTLINED_FUNCTION_5_28();
    sub_1C100DC0C(v40, v41);
    return v24;
  }

  OUTLINED_FUNCTION_5_5();
  v7 = sub_1C1266D50();
  v8 = OUTLINED_FUNCTION_46();
  sub_1C1109A94(v8, v9);
  v10 = OUTLINED_FUNCTION_5_28();
  sub_1C1109A94(v10, v11);
  v12 = OUTLINED_FUNCTION_5_28();
  sub_1C100DC0C(v12, v13);
  v14 = OUTLINED_FUNCTION_46();
LABEL_16:
  sub_1C100DC0C(v14, v15);
  return v7 & 1;
}

uint64_t sub_1C1125B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6D6574737973 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C126C460 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C1266D50();

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

uint64_t sub_1C1125C3C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x614E6D6574737973;
  }
}

uint64_t sub_1C1125C88(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C1266D50();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C1125CF8()
{
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1C68F07E0](0);
  return sub_1C1266EE0();
}

uint64_t sub_1C1125D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1125B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1125D9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1125C34();
  *a1 = result;
  return result;
}

uint64_t sub_1C1125DC4(uint64_t a1)
{
  v2 = sub_1C11287EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1125E00(uint64_t a1)
{
  v2 = sub_1C11287EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1125E40(uint64_t a1)
{
  v2 = sub_1C1128840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1125E7C(uint64_t a1)
{
  v2 = sub_1C1128840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1125EB8(uint64_t a1)
{
  v2 = sub_1C1128894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1125EF4(uint64_t a1)
{
  v2 = sub_1C1128894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PhotosPrefetchable.Image.Kind.encode(to:)()
{
  OUTLINED_FUNCTION_28_9();
  v30 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94690, &qword_1C12B8F38);
  OUTLINED_FUNCTION_0();
  v26 = v6;
  v27 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v25 = &v23 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94698, &qword_1C12B8F40);
  OUTLINED_FUNCTION_0();
  v23 = v10;
  v24 = v9;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946A0, &qword_1C12B8F48);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15_4();
  v18 = *v0;
  v28 = v0[1];
  v29 = v18;
  v19 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C11287EC();
  sub_1C1266F00();
  if (v19)
  {
    OUTLINED_FUNCTION_38_7();
    sub_1C1128840();
    v20 = v25;
    OUTLINED_FUNCTION_16_19();
    sub_1C1266C70();
    v21 = v27;
    sub_1C1266C90();
    (*(v26 + 8))(v20, v21);
  }

  else
  {
    sub_1C1128894();
    OUTLINED_FUNCTION_16_19();
    sub_1C1266C70();
    v22 = v24;
    sub_1C1266C90();
    (*(v23 + 8))(v13, v22);
  }

  (*(v16 + 8))(v2, v14);
  OUTLINED_FUNCTION_30_8();
}

uint64_t PhotosPrefetchable.Image.Kind.hash(into:)()
{
  MEMORY[0x1C68F07E0](*(v0 + 16));
  OUTLINED_FUNCTION_42_0();

  return sub_1C1265EF0();
}

uint64_t PhotosPrefetchable.Image.Kind.hashValue.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1C68F07E0](v1);
  sub_1C1265EF0();
  return sub_1C1266EE0();
}

void PhotosPrefetchable.Image.Kind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_9();
  a22 = v25;
  a23 = v26;
  v79 = v27;
  v80 = v23;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946A8, &qword_1C12B8F50);
  OUTLINED_FUNCTION_0();
  v76 = v30;
  v77 = v31;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25_7();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946B0, &qword_1C12B8F58);
  OUTLINED_FUNCTION_0();
  v75 = v34;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15_4();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946B8, &unk_1C12B8F60);
  OUTLINED_FUNCTION_0();
  v78 = v37;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v73 - v39;
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  sub_1C11287EC();
  v41 = v80;
  sub_1C1266EF0();
  if (v41)
  {
    goto LABEL_9;
  }

  v73[2] = v33;
  v74 = v24;
  v80 = v29;
  v42 = v79;
  v43 = sub_1C1266C60();
  v47 = sub_1C11288E8(v43, 0);
  if (v45 == v46 >> 1)
  {
LABEL_7:
    v59 = sub_1C12669D0();
    swift_allocError();
    v61 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946C0, &unk_1C12CCE00);
    *v61 = &type metadata for PhotosPrefetchable.Image.Kind;
    sub_1C1266C10();
    sub_1C12669C0();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    v62 = OUTLINED_FUNCTION_22_12();
    v63(v62, v36);
    v29 = v80;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
LABEL_10:
    OUTLINED_FUNCTION_30_8();
    return;
  }

  v73[1] = 0;
  if (v45 < (v46 >> 1))
  {
    v48 = *(v44 + v45);
    v49 = sub_1C1129C3C(v45 + 1, v46 >> 1, v47, v44, v45, v46);
    v51 = v50;
    v53 = v52;
    swift_unknownObjectRelease();
    if (v51 == v53 >> 1)
    {
      v54 = v36;
      v55 = v48;
      if (v48)
      {
        LODWORD(v75) = v48;
        OUTLINED_FUNCTION_38_7();
        sub_1C1128840();
        OUTLINED_FUNCTION_45_6(&_s5ImageV4KindO28InternalSystemNameCodingKeysON, &a13);
        v56 = v42;
        v74 = v49;
        v57 = sub_1C1266C30();
        v58 = v78;
        v65 = v57;
        v67 = v66;
        swift_unknownObjectRelease();
        v68 = OUTLINED_FUNCTION_40_5();
        v69(v68);
        v55 = v75;
      }

      else
      {
        a12 = 0;
        sub_1C1128894();
        OUTLINED_FUNCTION_45_6(&_s5ImageV4KindO20SystemNameCodingKeysON, &a12);
        v56 = v42;
        v64 = sub_1C1266C30();
        v67 = v70;
        v77 = v64;
        swift_unknownObjectRelease();
        v71 = OUTLINED_FUNCTION_44_5();
        v72(v71);
        v65 = v77;
        v58 = v78;
      }

      (*(v58 + 8))(v40, v54);
      *v56 = v65;
      *(v56 + 8) = v67;
      *(v56 + 16) = v55;
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C1126764(uint64_t a1)
{
  sub_1C1266E90();
  PhotosPrefetchable.Image.Kind.hash(into:)();
  return sub_1C1266EE0();
}

unint64_t PhotosPrefetchable.Image.SymbolVariants.Shape.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void *sub_1C1126ABC@<X0>(void *result@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, _BYTE *a5@<X8>)
{
  if (*result != -1)
  {
    result = swift_once();
  }

  v8 = *a3;
  *a5 = *a2;
  a5[1] = v8;
  return result;
}

void PhotosPrefetchable.Image.SymbolVariants.circle.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 1);
  *a1 = 0;
  a1[1] = v2;
}

uint64_t PhotosPrefetchable.Image.SymbolVariants.debugDescription.getter()
{
  v1 = v0[1];
  if (*v0 != 3)
  {
    v2 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v2);

    MEMORY[0x1C68EF850](46, 0xE100000000000000);
  }

  if (v1)
  {
    v3 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v3);
  }

  return 0;
}

uint64_t sub_1C1126C48@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = sub_1C1263050();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  result = (*(v9 + 16))(a3, a1, v7);
  if ((byte_1EBE9468C & ~a2) == 0)
  {
    sub_1C1262FE0();
    v12 = OUTLINED_FUNCTION_5_5();
    v13(v12);
    v14 = OUTLINED_FUNCTION_26_9();
    result = v15(v14);
  }

  if ((byte_1EBE9468D & ~v6) == 0)
  {
    sub_1C1263010();
    v16 = OUTLINED_FUNCTION_5_5();
    v17(v16);
    v18 = OUTLINED_FUNCTION_26_9();
    result = v19(v18);
  }

  if ((byte_1EBE9468E & ~v6) == 0)
  {
    sub_1C1262FD0();
    v20 = OUTLINED_FUNCTION_5_5();
    v21(v20);
    v22 = OUTLINED_FUNCTION_26_9();
    return v23(v22);
  }

  return result;
}

uint64_t sub_1C1126DE8(int a1)
{
  v1 = a1;
  if ((byte_1EBE9468C & ~a1) == 0)
  {
    MEMORY[0x1C68EF850](0x6C6C69662ELL, 0xE500000000000000);
  }

  if ((byte_1EBE9468D & ~v1) == 0)
  {
    MEMORY[0x1C68EF850](0x6873616C732ELL, 0xE600000000000000);
  }

  if ((byte_1EBE9468E & ~v1) == 0)
  {
    MEMORY[0x1C68EF850](0x6F72676B6361622ELL, 0xEB00000000646E75);
  }

  return 0;
}

uint64_t sub_1C1126F9C@<X0>(_BYTE *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_2_1();
  *a1 = result;
  return result;
}

uint64_t sub_1C1126FD0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1127000(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C1127014@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C10CB1A0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C1127044@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C10CB1C8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C112707C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C10CB170(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1C11270B0@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C11270E4(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1C11270E4(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_1C112710C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

uint64_t sub_1C1127144@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C10CADAC(*a1, *v2);
  *a2 = result;
  return result;
}

void sub_1C11271D0(_BYTE *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  a1[1] = 0;
}

uint64_t sub_1C112720C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C112406C(a1);
  *a2 = result;
  return result;
}

uint64_t static PhotosPrefetchable.Image.SymbolVariants.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return OUTLINED_FUNCTION_2_1();
    }
  }

  else if (v2 != v3)
  {
    return OUTLINED_FUNCTION_2_1();
  }

  return a1[1] == a2[1];
}

uint64_t sub_1C112726C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C1266D50();

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

uint64_t sub_1C1127334(char a1)
{
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1C68F07E0](a1 & 1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1127374(char a1)
{
  if (a1)
  {
    return 0x7367616C66;
  }

  else
  {
    return 0x6570616873;
  }
}

uint64_t sub_1C112739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C1266E90();
  a4(v8, v6);
  return sub_1C1266EE0();
}

uint64_t sub_1C11273F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C112726C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1127418(uint64_t a1)
{
  v2 = sub_1C1128930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1127454(uint64_t a1)
{
  v2 = sub_1C1128930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PhotosPrefetchable.Image.SymbolVariants.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_28_9();
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946C8, &qword_1C12B8F70);
  OUTLINED_FUNCTION_0();
  v31 = v30;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_11_5();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1C1128930();
  sub_1C1266F00();
  sub_1C1128984();
  sub_1C1266C80();
  if (!v25)
  {
    sub_1C11289D8();
    sub_1C1266CB0();
  }

  (*(v31 + 8))(v26, v29);
  OUTLINED_FUNCTION_30_8();
}

uint64_t PhotosPrefetchable.Image.SymbolVariants.hash(into:)()
{
  v1 = *v0;
  sub_1C1266EB0();
  if (v1 != 3)
  {
    MEMORY[0x1C68F07E0](v1);
  }

  return sub_1C1266EB0();
}

uint64_t PhotosPrefetchable.Image.SymbolVariants.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_27_9();
  sub_1C1266EB0();
  if (v1 != 3)
  {
    MEMORY[0x1C68F07E0](v1);
  }

  sub_1C1266EB0();
  return sub_1C1266EE0();
}

void PhotosPrefetchable.Image.SymbolVariants.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14)
{
  OUTLINED_FUNCTION_28_9();
  v17 = v16;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946D0, &qword_1C12B8F78);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15_4();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1C1128930();
  sub_1C1266EF0();
  if (!v14)
  {
    sub_1C1128A2C();
    OUTLINED_FUNCTION_16_19();
    sub_1C1266C20();
    sub_1C1128A80();
    OUTLINED_FUNCTION_16_19();
    sub_1C1266C50();
    (*(v22 + 8))(v15, v20);
    *v19 = a14;
    v19[1] = a12;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  OUTLINED_FUNCTION_30_8();
}

uint64_t sub_1C1127880(uint64_t a1)
{
  v2 = *v1;
  sub_1C1266E90();
  sub_1C1266EB0();
  if (v2 != 3)
  {
    MEMORY[0x1C68F07E0](v2);
  }

  sub_1C1266EB0();
  return sub_1C1266EE0();
}

uint64_t PhotosPrefetchable.Image.debugDescription.getter()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 32);
  sub_1C1109A94(*v0, *(v0 + 8));
  v7 = sub_1C1265ED0();
  if (v1 != 3)
  {
    v4 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v4);

    OUTLINED_FUNCTION_32_8();
  }

  if (v2 != 4)
  {
    sub_1C1266940();

    v5 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v5);

    OUTLINED_FUNCTION_32_8();
  }

  if ((~v3 & 0xFF00) != 0)
  {
    MEMORY[0x1C68EF850](0x3A746E6F6620, 0xE600000000000000);
    sub_1C1266B10();
    OUTLINED_FUNCTION_32_8();
  }

  return v7;
}

uint64_t static PhotosPrefetchable.Image.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v17 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  v10 = *(a2 + 18);
  v15 = *(a2 + 24);
  v16 = *(a1 + 24);
  v18 = *(a2 + 32);
  v19 = *(a1 + 18);
  v23 = v2;
  v24 = v3;
  v25 = v4;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  sub_1C1109A94(v2, v3);
  sub_1C1109A94(v6, v7);
  v11 = static PhotosPrefetchable.Image.Kind.== infix(_:_:)(&v23, &v20);
  sub_1C100DC0C(v6, v7);
  sub_1C100DC0C(v2, v3);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  if (v5 == 3)
  {
    if (v9 != 3)
    {
      return 0;
    }
  }

  else if (v9 == 3 || v5 != v9)
  {
    return 0;
  }

  if (v19 == 4)
  {
    if (v10 == 4)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v10 == 4)
  {
    return 0;
  }

  v13 = v19 ^ v10;
  if (v19 == 3)
  {
    result = 0;
    if (v10 != 3 || v13 > 0xFF)
    {
      return result;
    }

LABEL_12:
    if ((~v17 & 0xFF00) != 0)
    {
      v23 = v16;
      LODWORD(v24) = v17;
      if ((~v18 & 0xFF00) == 0)
      {
        return 0;
      }

      v20 = v15;
      LODWORD(v21) = v18;
      if (!static PhotosPrefetchable.Font.== infix(_:_:)(&v23, &v20))
      {
        return 0;
      }
    }

    else if ((~v18 & 0xFF00) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v19 == v10 && v13 < 0x100)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C1127CEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6163536567616D69 && a2 == 0xEA0000000000656CLL;
    if (v6 || (sub_1C1266D50() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x61566C6F626D7973 && a2 == 0xED0000746E616972;
      if (v7 || (sub_1C1266D50() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1953394534 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C1266D50();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C1127E5C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1C68F07E0](a1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1127E9C(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6163536567616D69;
      break;
    case 2:
      result = 0x61566C6F626D7973;
      break;
    case 3:
      result = 1953394534;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C1127F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1127CEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1127F4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1127E54();
  *a1 = result;
  return result;
}

uint64_t sub_1C1127F74(uint64_t a1)
{
  v2 = sub_1C1128AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1127FB0(uint64_t a1)
{
  v2 = sub_1C1128AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PhotosPrefetchable.Image.encode(to:)()
{
  OUTLINED_FUNCTION_28_9();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946D8, &qword_1C12B8F80);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_5();
  v8 = *v0;
  v9 = v0[1];
  v10 = v4[3];
  v11 = v4;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1C1109A94(v8, v9);
  sub_1C1128AD4();
  sub_1C1266F00();
  sub_1C1128B28();
  OUTLINED_FUNCTION_6_27();
  sub_1C1266CB0();
  sub_1C100DC0C(v8, v9);
  if (!v1)
  {
    OUTLINED_FUNCTION_38_7();
    sub_1C1128B7C();
    OUTLINED_FUNCTION_6_27();
    sub_1C1266C80();
    sub_1C1128BD0();
    OUTLINED_FUNCTION_6_27();
    sub_1C1266C80();
    sub_1C1128C24();
    OUTLINED_FUNCTION_6_27();
    sub_1C1266C80();
  }

  (*(v6 + 8))(v2, v13);
  OUTLINED_FUNCTION_30_8();
}

uint64_t PhotosPrefetchable.Image.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 17);
  v3 = *(v1 + 18);
  v4 = *(v1 + 32);
  MEMORY[0x1C68F07E0](*(v1 + 16));
  sub_1C1265EF0();
  if (v2 == 3)
  {
    OUTLINED_FUNCTION_46_3();
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
    MEMORY[0x1C68F07E0](v2);
  }

  if (v3 != 4)
  {
    OUTLINED_FUNCTION_34_1();
    if (v3 == 3)
    {
      OUTLINED_FUNCTION_46_3();
    }

    else
    {
      OUTLINED_FUNCTION_34_1();
      MEMORY[0x1C68F07E0](v3);
    }
  }

  sub_1C1266EB0();
  if ((~v4 & 0xFF00) == 0)
  {
    return OUTLINED_FUNCTION_46_3();
  }

  OUTLINED_FUNCTION_34_1();
  sub_1C12440E4();
  if ((v4 & 0xFF0000) == 0x90000)
  {
    OUTLINED_FUNCTION_46_3();
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
    MEMORY[0x1C68F07E0](BYTE2(v4));
  }

  if ((v4 >> 24) == 3)
  {
    return OUTLINED_FUNCTION_46_3();
  }

  OUTLINED_FUNCTION_34_1();
  return MEMORY[0x1C68F07E0](v4 >> 24);
}

uint64_t PhotosPrefetchable.Image.hashValue.getter()
{
  OUTLINED_FUNCTION_13_21();
  sub_1C1266E90();
  PhotosPrefetchable.Image.hash(into:)(v1);
  return sub_1C1266EE0();
}

void PhotosPrefetchable.Image.init(from:)()
{
  OUTLINED_FUNCTION_28_9();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946E0, &qword_1C12B8F88);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_4();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C1128AD4();
  sub_1C1266EF0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    sub_1C1128C78();
    OUTLINED_FUNCTION_3_36();
    sub_1C1266C50();
    OUTLINED_FUNCTION_38_7();
    sub_1C1128CCC();
    OUTLINED_FUNCTION_3_36();
    sub_1C1266C20();
    sub_1C1128D20();
    OUTLINED_FUNCTION_3_36();
    sub_1C1266C20();
    sub_1C1128D74();
    OUTLINED_FUNCTION_3_36();
    sub_1C1266C20();
    v6 = OUTLINED_FUNCTION_23_9();
    v7(v6);
    *v4 = v8;
    *(v4 + 8) = v9;
    *(v4 + 16) = v10;
    *(v4 + 17) = v8;
    *(v4 + 18) = v8;
    *(v4 + 24) = v8;
    *(v4 + 32) = v9;
    sub_1C1109A94(v8, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    sub_1C100DC0C(v8, v9);
  }

  OUTLINED_FUNCTION_30_8();
}

uint64_t sub_1C11285D4()
{
  OUTLINED_FUNCTION_13_21();
  sub_1C1266E90();
  PhotosPrefetchable.Image.hash(into:)(v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1128670(uint64_t a1)
{
  sub_1C1265340();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_1C1263480();
}

uint64_t sub_1C1128724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C12636F0();
  *a1 = result;
  return result;
}

uint64_t sub_1C112877C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30, &qword_1C12B8F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C11287EC()
{
  result = qword_1EDE830F8;
  if (!qword_1EDE830F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830F8);
  }

  return result;
}

unint64_t sub_1C1128840()
{
  result = qword_1EDE830D0;
  if (!qword_1EDE830D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830D0);
  }

  return result;
}

unint64_t sub_1C1128894()
{
  result = qword_1EDE7AEB0;
  if (!qword_1EDE7AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEB0);
  }

  return result;
}

uint64_t sub_1C11288E8(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C1128930()
{
  result = qword_1EDE7AF28;
  if (!qword_1EDE7AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF28);
  }

  return result;
}

unint64_t sub_1C1128984()
{
  result = qword_1EDE7AEE0;
  if (!qword_1EDE7AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEE0);
  }

  return result;
}

unint64_t sub_1C11289D8()
{
  result = qword_1EDE7AEF8;
  if (!qword_1EDE7AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEF8);
  }

  return result;
}

unint64_t sub_1C1128A2C()
{
  result = qword_1EDE7AED0;
  if (!qword_1EDE7AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AED0);
  }

  return result;
}

unint64_t sub_1C1128A80()
{
  result = qword_1EDE7AEE8;
  if (!qword_1EDE7AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEE8);
  }

  return result;
}

unint64_t sub_1C1128AD4()
{
  result = qword_1EDE83120;
  if (!qword_1EDE83120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83120);
  }

  return result;
}

unint64_t sub_1C1128B28()
{
  result = qword_1EDE830B8;
  if (!qword_1EDE830B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830B8);
  }

  return result;
}

unint64_t sub_1C1128B7C()
{
  result = qword_1EDE830A8;
  if (!qword_1EDE830A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830A8);
  }

  return result;
}

unint64_t sub_1C1128BD0()
{
  result = qword_1EDE83108;
  if (!qword_1EDE83108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83108);
  }

  return result;
}

unint64_t sub_1C1128C24()
{
  result = qword_1EDE83130;
  if (!qword_1EDE83130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83130);
  }

  return result;
}

unint64_t sub_1C1128C78()
{
  result = qword_1EDE830B0;
  if (!qword_1EDE830B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830B0);
  }

  return result;
}

unint64_t sub_1C1128CCC()
{
  result = qword_1EDE830A0;
  if (!qword_1EDE830A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830A0);
  }

  return result;
}

unint64_t sub_1C1128D20()
{
  result = qword_1EDE83100;
  if (!qword_1EDE83100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83100);
  }

  return result;
}

unint64_t sub_1C1128D74()
{
  result = qword_1EDE83128;
  if (!qword_1EDE83128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83128);
  }

  return result;
}

unint64_t sub_1C1128DCC()
{
  result = qword_1EBE946E8;
  if (!qword_1EBE946E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE946E8);
  }

  return result;
}

unint64_t sub_1C1128E24()
{
  result = qword_1EBE946F0;
  if (!qword_1EBE946F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE946F0);
  }

  return result;
}

unint64_t sub_1C1128E7C()
{
  result = qword_1EBE946F8;
  if (!qword_1EBE946F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE946F8);
  }

  return result;
}

unint64_t sub_1C1128ED4()
{
  result = qword_1EBE94700;
  if (!qword_1EBE94700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94700);
  }

  return result;
}

unint64_t sub_1C1128F2C()
{
  result = qword_1EDE83090;
  if (!qword_1EDE83090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83090);
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

uint64_t sub_1C1128FA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 36))
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

uint64_t sub_1C1128FE0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t _s5ImageV14SymbolVariantsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65283 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65284;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t _s5ImageV14SymbolVariantsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C11291C0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_36_6(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE13symbolVariantyQrAA14SymbolVariantsVFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  v14 = a4();
  return OUTLINED_FUNCTION_14_18(v14, v6, v7, v8, v9, v10, v11, v12, v5);
}

_BYTE *_s5ImageV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C11293D8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_36_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C11294C0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_2_1();
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

  return OUTLINED_FUNCTION_37_0(a1);
}

_BYTE *sub_1C1129508(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C11295B8()
{
  result = qword_1EBE94708;
  if (!qword_1EBE94708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94708);
  }

  return result;
}

unint64_t sub_1C1129610()
{
  result = qword_1EBE94710;
  if (!qword_1EBE94710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94710);
  }

  return result;
}

unint64_t sub_1C1129668()
{
  result = qword_1EBE94718;
  if (!qword_1EBE94718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94718);
  }

  return result;
}

unint64_t sub_1C11296BC()
{
  result = qword_1EBE94720;
  if (!qword_1EBE94720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94720);
  }

  return result;
}

unint64_t sub_1C1129714()
{
  result = qword_1EBE94728;
  if (!qword_1EBE94728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94728);
  }

  return result;
}

unint64_t sub_1C112976C()
{
  result = qword_1EDE7AEF0;
  if (!qword_1EDE7AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEF0);
  }

  return result;
}

unint64_t sub_1C11297C4()
{
  result = qword_1EBE94730;
  if (!qword_1EBE94730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94730);
  }

  return result;
}

unint64_t sub_1C112981C()
{
  result = qword_1EBE94738;
  if (!qword_1EBE94738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94738);
  }

  return result;
}

unint64_t sub_1C1129874()
{
  result = qword_1EBE94740;
  if (!qword_1EBE94740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94740);
  }

  return result;
}

unint64_t sub_1C11298CC()
{
  result = qword_1EDE83110;
  if (!qword_1EDE83110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83110);
  }

  return result;
}

unint64_t sub_1C1129924()
{
  result = qword_1EDE83118;
  if (!qword_1EDE83118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83118);
  }

  return result;
}

unint64_t sub_1C112997C()
{
  result = qword_1EDE7AF18;
  if (!qword_1EDE7AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF18);
  }

  return result;
}

unint64_t sub_1C11299D4()
{
  result = qword_1EDE7AF20;
  if (!qword_1EDE7AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF20);
  }

  return result;
}

unint64_t sub_1C1129A2C()
{
  result = qword_1EDE830D8;
  if (!qword_1EDE830D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830D8);
  }

  return result;
}

unint64_t sub_1C1129A84()
{
  result = qword_1EDE830E0;
  if (!qword_1EDE830E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830E0);
  }

  return result;
}

unint64_t sub_1C1129ADC()
{
  result = qword_1EDE830C0;
  if (!qword_1EDE830C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830C0);
  }

  return result;
}

unint64_t sub_1C1129B34()
{
  result = qword_1EDE830C8;
  if (!qword_1EDE830C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830C8);
  }

  return result;
}

unint64_t sub_1C1129B8C()
{
  result = qword_1EDE830E8;
  if (!qword_1EDE830E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830E8);
  }

  return result;
}

unint64_t sub_1C1129BE4()
{
  result = qword_1EDE830F0;
  if (!qword_1EDE830F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830F0);
  }

  return result;
}

uint64_t sub_1C1129C3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1C1129CB8()
{
  result = qword_1EDE7AED8;
  if (!qword_1EDE7AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AED8);
  }

  return result;
}

unint64_t sub_1C1129D0C()
{
  result = qword_1EDE7AEA8;
  if (!qword_1EDE7AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEA8);
  }

  return result;
}

void OUTLINED_FUNCTION_32_8()
{

  JUMPOUT(0x1C68EF850);
}

uint64_t sub_1C1129E3C()
{
  sub_1C1263DC0();
  sub_1C112CDA8(&qword_1EDE7BBA0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  return sub_1C1266FE0();
}

int8x16_t PhotosItemsCarousel.init(_:id:scrollViewModel:itemsSpacing:contentMargins:scrollBehavior:scrollClipDisabled:scrollViewAccessibilityIdentifier:itemView:onScrollPhaseDidChange:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, int8x16_t *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v41 = *a6;
  v42 = a6[1];
  v25 = *(*a3 + 88);
  v26 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v46 = a16;
  v47 = v26;
  v48 = a17;
  v49 = a18;
  v50 = v25;
  v51 = a19;
  v27 = type metadata accessor for PhotosItemsCarousel(0, &v46);
  v28 = (a9 + v27[28]);
  *v28 = 0xD000000000000019;
  v28[1] = 0x80000001C126C480;
  OUTLINED_FUNCTION_15_1();
  (*(v29 + 32))(a9, a1, a16);
  *(a9 + v27[19]) = a2;
  *(a9 + v27[20]) = a3;
  v30 = (a9 + v27[26]);
  *v30 = a12;
  v30[1] = a13;
  v31 = a4;
  if (a5)
  {
    v31 = 0.0;
  }

  *(a9 + v27[21]) = v31;
  v32 = a9 + v27[23];
  v33 = *(a7 + 16);
  *v32 = *a7;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a7 + 32);
  *(a9 + v27[27]) = a8;
  if (a6[2].i8[0])
  {
    v34 = -1;
  }

  else
  {
    v34 = 0;
  }

  v35 = vdupq_n_s64(v34);
  v36 = vbicq_s8(v41, v35);
  result = vbicq_s8(v42, v35);
  v38 = (a9 + v27[22]);
  *v38 = v36;
  v38[1] = result;
  v39 = (a9 + v27[24]);
  *v39 = a10;
  v39[1] = a11;
  v40 = (a9 + v27[25]);
  *v40 = a14;
  v40[1] = a15;
  return result;
}

uint64_t PhotosItemsCarousel.body.getter@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v227 = a2;
  sub_1C1263E10();
  OUTLINED_FUNCTION_0();
  v225 = v5;
  v226 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v224 = v7 - v6;
  sub_1C1264160();
  OUTLINED_FUNCTION_0();
  v222 = v9;
  v223 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v221 = v11 - v10;
  v187 = a1;
  v12 = *(a1 + 3);
  v15 = *(a1 + 4);
  v14 = *(a1 + 5);
  v17 = *(a1 + 6);
  v16 = *(a1 + 7);
  v18 = *(a1 + 8);
  v232[0] = *(a1 + 2);
  v13 = v232[0];
  v218 = v14;
  v219 = v12;
  v232[1] = v12;
  v232[2] = v15;
  v19 = v15;
  v232[3] = v14;
  v232[4] = v17;
  v232[5] = v16;
  v20 = v16;
  v216 = v18;
  v232[6] = v18;
  v21 = type metadata accessor for PhotosItemsCarousel.ItemContainerView(255, v232);
  OUTLINED_FUNCTION_4_40();
  WitnessTable = swift_getWitnessTable();
  v232[0] = v21;
  v232[1] = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_11_0();
  v23 = sub_1C12655C0();
  v220 = v13;
  v232[0] = v13;
  v232[1] = v19;
  v229 = v19;
  v230 = v20;
  v232[2] = v23;
  v217 = v17;
  v232[3] = v17;
  v232[4] = v20;
  sub_1C12656A0();
  OUTLINED_FUNCTION_13_0();
  v232[43] = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v24 = sub_1C12628C0();
  OUTLINED_FUNCTION_7_28();
  v25 = swift_getWitnessTable();
  v232[0] = v24;
  v232[1] = v25;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_18_23();
  v26 = OUTLINED_FUNCTION_11_0();
  v212 = v2;
  v209 = v27;
  v29 = type metadata accessor for PhotosTestableScrollView(v26, v2, v27, v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B90, &qword_1C12A9910);
  OUTLINED_FUNCTION_22_13(v30);
  type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker(255, v19, v20, v31);
  sub_1C1263190();
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(255);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v32 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v213 = v33;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_34();
  v211 = v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94750, &qword_1C12B9D28);
  v36 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v208 = v37;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_34();
  v207 = v39;
  OUTLINED_FUNCTION_26_1();
  v215 = v29;
  v40 = swift_getWitnessTable();
  OUTLINED_FUNCTION_24();
  v43 = sub_1C0FDB6D4(v41, &qword_1EBE90B90, &qword_1C12A9910, v42);
  v206 = v40;
  v232[41] = v40;
  v232[42] = v43;
  v44 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_14();
  v45 = swift_getWitnessTable();
  v232[39] = v44;
  v232[40] = v45;
  v46 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_23();
  v49 = sub_1C112CDA8(v47, v48, &unk_1C12A9AE4);
  v232[37] = v46;
  v232[38] = v49;
  v232[35] = swift_getWitnessTable();
  v232[36] = v43;
  v214 = v32;
  v50 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_23();
  v53 = sub_1C0FDB6D4(v51, &qword_1EBE94750, &qword_1C12B9D28, v52);
  v203 = v50;
  v232[33] = v50;
  v232[34] = v53;
  v54 = swift_getWitnessTable();
  v232[0] = v36;
  v232[1] = v54;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v202 = v56;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_34();
  v199 = v58;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A60, &unk_1C12B03A0);
  v205 = OpaqueTypeMetadata2;
  v59 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v201 = v60;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_34();
  v198 = v62;
  v210 = v36;
  v232[0] = v36;
  v200 = v54;
  v63 = OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_9_3();
  v66 = sub_1C0FDB6D4(v64, &qword_1EBE92A60, &unk_1C12B03A0, v65);
  v193 = v63;
  v232[31] = v63;
  v232[32] = v66;
  v67 = swift_getWitnessTable();
  v232[0] = v59;
  v232[1] = v67;
  v68 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v196 = v69;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_34();
  v192 = v71;
  type metadata accessor for PhotosScrollPositionModifier(255, v229, v230, v72);
  v197 = v68;
  v73 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v191 = v74;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_34();
  v190 = v76;
  v204 = v59;
  v232[0] = v59;
  v194 = v67;
  v77 = OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_14_7();
  v78 = swift_getWitnessTable();
  v183 = v77;
  v232[29] = v77;
  v232[30] = v78;
  v79 = swift_getWitnessTable();
  v80 = MEMORY[0x1E697C890];
  v232[0] = v73;
  v232[1] = MEMORY[0x1E697C890];
  v81 = MEMORY[0x1E697C888];
  v232[2] = v79;
  v232[3] = MEMORY[0x1E697C888];
  v82 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v188 = v83;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_34();
  v184 = v85;
  v195 = v73;
  v232[0] = v73;
  v232[1] = v80;
  v182 = v79;
  v232[2] = v79;
  v232[3] = v81;
  v86 = v187;
  v87 = v228;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v189 = v82;
  v232[0] = v82;
  v181 = OpaqueTypeConformance2;
  v232[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v185 = v90;
  v186 = v89;
  MEMORY[0x1EEE9AC00](v89);
  v179 = &v171 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v180 = &v171 - v93;
  v94 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v96 = v95;
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_13();
  v177 = v99 - v98;
  v100 = *(v86 - 1);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v178 = &v171 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v105 = &v171 - v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0, &qword_1C12A8810);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v171 - v107;
  v109 = swift_getWitnessTable();
  View.photosTrace.getter();
  v176 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v108, 1, v176) == 1)
  {
    v94 = v100;
    sub_1C111ACFC(v108);
  }

  else
  {
    v175 = v96;
    (*(v100 + 16))(v105, v87, v86);
    sub_1C1262640();
    v110 = sub_1C1262670();
    v174 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v111 = swift_slowAlloc();
      v171 = v111;
      v172 = swift_slowAlloc();
      v232[0] = v172;
      *v111 = 136446210;
      v112 = View.photosChangedProperties.getter(v86, v109);
      v114 = v113;
      v173 = v94;
      v115 = OUTLINED_FUNCTION_21_8();
      v116(v115);
      v117 = sub_1C0FA0E80(v112, v114, v232);

      v118 = v171;
      *(v171 + 1) = v117;
      v119 = v177;
      v120 = sub_1C1262630();
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v110, v174, v120, "PhotosItemsCarousel", "PhotosItemsCarousel %{public}s", v118, 0xCu);
      v121 = v172;
      __swift_destroy_boxed_opaque_existential_0Tm(v172);
      MEMORY[0x1C68F1630](v121, -1, -1);
      MEMORY[0x1C68F1630](v118, -1, -1);

      (*(v175 + 8))(v119, v173);
    }

    else
    {

      (*(v175 + 8))(v177, v94);
      v122 = OUTLINED_FUNCTION_21_8();
      v123(v122);
    }

    OUTLINED_FUNCTION_15_1();
    (*(v124 + 8))(v108);
    v87 = v228;
  }

  LODWORD(v228) = sub_1C1264420();
  v125 = (v87 + v86[24]);
  v126 = v125[1];
  v177 = *v125;
  v127 = v87;
  v128 = v94;
  v129 = v178;
  (*(v94 + 16))(v178, v87, v86);
  v130 = (*(v94 + 80) + 72) & ~*(v94 + 80);
  v131 = swift_allocObject();
  v132 = v219;
  *(v131 + 2) = v220;
  *(v131 + 3) = v132;
  v134 = v229;
  v133 = v230;
  v135 = v217;
  v136 = v218;
  *(v131 + 4) = v229;
  *(v131 + 5) = v136;
  *(v131 + 6) = v135;
  *(v131 + 7) = v133;
  *(v131 + 8) = v216;
  (*(v128 + 32))(&v131[v130], v129, v86);

  PhotosTestableScrollView.init(_:accessibilityIdentifier:content:)(v228, v177, v126, sub_1C112B698, v131, v231);
  v137 = v215;
  View.photosInlinePlaybackScrollViewTracker<A>(itemIDType:colsPerPage:trackItemVisibility:onScrollPhaseDidChange:)(v134, 0, 1u, *(v127 + v86[25]), *(v127 + v86[25] + 8), v215, v134, v206, v211, v133);
  memcpy(v232, v231, 0xE8uLL);
  OUTLINED_FUNCTION_15_1();
  (*(v138 + 8))(v232, v137);
  v139 = (v127 + v86[28]);
  v141 = *v139;
  v140 = v139[1];
  v231[0] = v141;
  v231[1] = v140;
  v142 = v207;
  sub_1C1264B90();
  v143 = OUTLINED_FUNCTION_17_22();
  v144(v143);
  v145 = v210;
  sub_1C1264CC0();
  (*(v208 + 8))(v142, v145);
  sub_1C100AE3C();
  v146 = v198;
  sub_1C1264C10();
  v147 = OUTLINED_FUNCTION_17_22();
  v148(v147);
  v149 = v221;
  sub_1C1264140();
  v150 = v204;
  sub_1C1005F50();
  v151 = v192;
  sub_1C1264C50();
  (*(v222 + 8))(v149, v223);
  (*(v201 + 8))(v146, v150);
  v152 = v197;
  View.photosScrollPosition<A>(scrollViewModel:)(*(v127 + v86[20]), v197, v183, v153);
  (*(v196 + 8))(v151, v152);
  v154 = v184;
  sub_1C1264D90();
  v155 = OUTLINED_FUNCTION_17_22();
  v156(v155);
  v157 = sub_1C1264470();
  v158 = (v127 + v86[22]);
  v159 = *v158;
  v160 = v158[1];
  v161 = v158[2];
  v162 = v158[3];
  v163 = v224;
  sub_1C1263E00();
  v164 = v179;
  v165 = v189;
  v166 = v181;
  MEMORY[0x1C68EE490](v157, v163, v189, v181, v159, v160, v161, v162);
  (*(v225 + 8))(v163, v226);
  (*(v188 + 8))(v154, v165);
  v231[0] = v165;
  v231[1] = v166;
  OUTLINED_FUNCTION_1_38();
  swift_getOpaqueTypeConformance2();
  v167 = v180;
  v168 = v186;
  sub_1C0FDBA4C();
  v169 = *(v185 + 8);
  v169(v164, v168);
  sub_1C0FDBA4C();
  return (v169)(v167, v168);
}

uint64_t sub_1C112B1B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v50 = a5;
  v48 = a3;
  v52 = a1;
  v53 = a8;
  v49 = a9;
  v15 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v17 = a4;
  v67 = a6;
  v68 = a7;
  v69 = a9;
  v18 = type metadata accessor for PhotosItemsCarousel.ItemContainerView(255, &v63);
  WitnessTable = swift_getWitnessTable();
  v63 = v18;
  v64 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v63 = v18;
  v64 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v20 = sub_1C12655C0();
  v63 = a2;
  v64 = a4;
  v65 = v20;
  v66 = a6;
  v67 = a7;
  v21 = sub_1C12656A0();
  v62 = swift_getWitnessTable();
  v44 = v21;
  v43 = swift_getWitnessTable();
  v22 = sub_1C12628C0();
  v47 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v42 = v39 - v23;
  v41 = swift_getWitnessTable();
  v63 = v22;
  v64 = v41;
  v45 = MEMORY[0x1E697D1A0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v26 = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v40 = v39 - v28;
  v39[1] = sub_1C12638D0();
  v29 = a2;
  v30 = v48;
  v63 = a2;
  v64 = v48;
  v31 = v50;
  v65 = v17;
  v66 = v50;
  v67 = a6;
  v68 = a7;
  v32 = v49;
  v69 = v49;
  v33 = type metadata accessor for PhotosItemsCarousel(0, &v63);
  v39[0] = *(v52 + *(v33 + 84));
  v54 = v29;
  v55 = v30;
  v56 = v17;
  v57 = v31;
  v58 = a6;
  v59 = a7;
  v60 = v32;
  v61 = v52;
  sub_1C1129E3C();
  v34 = v42;
  sub_1C12628B0();
  v35 = v41;
  OUTLINED_FUNCTION_15_6();
  sub_1C1264CD0();
  (*(v47 + 8))(v34, v22);
  v63 = v22;
  v64 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v40;
  sub_1C0FDBA4C();
  v37 = *(v46 + 8);
  v37(v26, OpaqueTypeMetadata2);
  sub_1C0FDBA4C();
  return (v37)(v36, OpaqueTypeMetadata2);
}

uint64_t sub_1C112B6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v60 = a1;
  v61 = a9;
  v64 = a2;
  v65 = a3;
  v54 = a3;
  v55 = a5;
  v66 = a4;
  v67 = a5;
  v68 = a6;
  v69 = a7;
  v70 = a8;
  v56 = a8;
  v58 = type metadata accessor for PhotosItemsCarousel(0, &v64);
  v16 = *(v58 - 8);
  v59 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v48 - v17;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v49 = a4;
  v68 = a6;
  v69 = a7;
  v21 = a6;
  v50 = a6;
  v22 = a7;
  v70 = a8;
  v23 = type metadata accessor for PhotosItemsCarousel.ItemContainerView(255, &v64);
  WitnessTable = swift_getWitnessTable();
  v64 = v23;
  v65 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v64 = v23;
  v65 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v51 = sub_1C12655C0();
  v25 = a2;
  v64 = a2;
  v65 = a4;
  v66 = v51;
  v67 = v21;
  v68 = v22;
  v26 = sub_1C12656A0();
  v53 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v52 = &v48 - v31;
  v32 = *(v18 + 16);
  v33 = v60;
  v48 = a2;
  v32(v62, v60, a2, v30);
  v34 = v16;
  v35 = *(v16 + 16);
  v36 = v57;
  v37 = v33;
  v38 = v58;
  v35(v57, v37);
  v39 = (*(v34 + 80) + 72) & ~*(v34 + 80);
  v40 = swift_allocObject();
  v41 = v54;
  *(v40 + 2) = v25;
  *(v40 + 3) = v41;
  v43 = v55;
  v42 = v56;
  *(v40 + 4) = v49;
  *(v40 + 5) = v43;
  *(v40 + 6) = v50;
  *(v40 + 7) = v22;
  *(v40 + 8) = v42;
  (*(v34 + 32))(&v40[v39], v36, v38);

  v47 = swift_getWitnessTable();
  sub_1C1265680();
  v63 = v47;
  swift_getWitnessTable();
  v44 = v52;
  sub_1C0FDBA4C();
  v45 = *(v53 + 8);
  v45(v28, v26);
  sub_1C0FDBA4C();
  return (v45)(v44, v26);
}

uint64_t sub_1C112BB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v32 = a8;
  v31 = a7;
  v30 = a6;
  v33 = a2;
  v34 = a1;
  v35 = a9;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v50 = a8;
  v51 = a10;
  v13 = type metadata accessor for PhotosItemsCarousel.ItemContainerView(255, &v45);
  WitnessTable = swift_getWitnessTable();
  v45 = v13;
  v46 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v45 = v13;
  v46 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_1C12655C0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v30 - v22;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v42 = a10;
  v43 = v33;
  v44 = v34;
  sub_1C1009330(OpaqueTypeMetadata2, OpaqueTypeConformance2, v24, v25, v26, v27);
  sub_1C12655B0();
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v28 = *(v18 + 8);
  v28(v20, v17);
  sub_1C0FDBA4C();
  return (v28)(v23, v17);
}

uint64_t sub_1C112BDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6)
{
  v60 = a2;
  v61 = a5;
  v57 = *(a3 - 8);
  v58 = a1;
  v51 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v8;
  v63 = v9;
  v10 = v8;
  v47 = v8;
  v11 = v9;
  v64 = v12;
  v65 = v13;
  v14 = v13;
  v48 = v13;
  v49 = v15;
  v66 = v15;
  v67 = v16;
  v17 = v15;
  v18 = v16;
  v68 = v19;
  v20 = type metadata accessor for PhotosItemsCarousel.ItemContainerView(0, &v62);
  v59 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v50 = &v46 - v21;
  WitnessTable = swift_getWitnessTable();
  v62 = v20;
  v63 = WitnessTable;
  v55 = MEMORY[0x1E697D320];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v52 = &v46 - v26;
  v62 = v10;
  v63 = v11;
  v27 = v11;
  v28 = a4;
  v64 = a4;
  v65 = v14;
  v66 = v17;
  v67 = v18;
  v29 = v18;
  v30 = v51;
  v68 = v51;
  v31 = type metadata accessor for PhotosItemsCarousel(0, &v62);
  v32 = (v58 + *(v31 + 104));
  v33 = *v32;
  v34 = v32[1];
  v35 = v54;
  (*(v57 + 16))(v54, v60, v27);
  v45 = v30;
  v36 = v50;
  sub_1C112C170(v33, v34, v35, v47, v27, v28, v48, v49, v50, v29, v45);

  sub_1C1264420();
  v37 = WitnessTable;
  sub_1C10A0734(v20, WitnessTable, v38, v39, v40, v41);
  sub_1C1264DB0();
  (*(v59 + 8))(v36, v20);
  v62 = v20;
  v63 = v37;
  swift_getOpaqueTypeConformance2();
  v42 = v52;
  sub_1C0FDBA4C();
  v43 = *(v56 + 8);
  v43(v24, OpaqueTypeMetadata2);
  sub_1C0FDBA4C();
  return (v43)(v42, OpaqueTypeMetadata2);
}

uint64_t sub_1C112C170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a10;
  v16[6] = a11;
  v14 = type metadata accessor for PhotosItemsCarousel.ItemContainerView(0, v16);
  return (*(*(a5 - 8) + 32))(&a9[*(v14 + 76)], a3, a5);
}

uint64_t PhotosItemsCarousel<>.init(_:scrollViewModel:itemsSpacing:contentMargins:scrollBehavior:scrollClipDisabled:scrollViewAccessibilityIdentifier:itemView:onScrollPhaseDidChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, char a4@<W3>, int8x16_t *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_13();
  v24 = v23 - v22;
  (*(v21 + 16))(v23 - v22);
  KeyPath = swift_getKeyPath();
  sub_1C112C43C(a6, v35);
  PhotosItemsCarousel.init(_:id:scrollViewModel:itemsSpacing:contentMargins:scrollBehavior:scrollClipDisabled:scrollViewAccessibilityIdentifier:itemView:onScrollPhaseDidChange:)(v24, KeyPath, a2, a3, a4 & 1, a5, v35, a7, a9, a8, a10, a11, a12, a13, a14, a15, a17, a18, a20);
  sub_1C112C498(a6);
  return (*(v21 + 8))(a1, a15);
}

void sub_1C112C504(void *a1)
{
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v3 = a1[4];
    sub_1C1266F10();
    if (v5 <= 0x3F)
    {
      type metadata accessor for PhotosScrollViewModel(319, v3, a1[7], v4);
      if (v6 <= 0x3F)
      {
        sub_1C0FFC0A4();
        if (v7 <= 0x3F)
        {
          sub_1C1007F24(319);
          if (v8 <= 0x3F)
          {
            sub_1C1007F88();
            if (v9 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C112C630(uint64_t result, unsigned int a2, uint64_t a3)
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
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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
    v8 = ((((((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
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

void sub_1C112C7A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
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
    if (((((((((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16);
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

uint64_t sub_1C112C9B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
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

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
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
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
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

void sub_1C112CB30(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
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
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
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
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
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
          a1[2] = BYTE2(v20);
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
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C112CDA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v3 = *(v0 + 48);
  v8[1] = v2;
  v8[2] = v3;
  v9 = v1;
  v4 = type metadata accessor for PhotosItemsCarousel(0, v8);
  v5 = v0 + ((*(*(v4 - 8) + 80) + 72) & ~*(*(v4 - 8) + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v6 + 8))(v5);

  __swift_destroy_boxed_opaque_existential_0Tm((v5 + *(v4 + 92)));

  if (*(v5 + *(v4 + 100)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C112CF64(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v10 = *(v2 + 8);
  v14[0] = *(v2 + 2);
  v4 = v14[0];
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v14[6] = v10;
  v11 = *(type metadata accessor for PhotosItemsCarousel(0, v14) - 8);
  return a2(a1, &v2[(*(v11 + 80) + 72) & ~*(v11 + 80)], v4, v5, v6, v7, v8, v9, v10);
}

uint64_t PhotosSelectionCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosSelectionCoordinator.init()();
  return v0;
}

uint64_t PhotosSelectionCoordinator.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94758, &qword_1C12B9E70);
  sub_1C1262DD0();
  *(swift_allocObject() + 16) = xmmword_1C12B9E60;
  sub_1C1262DA0();
  sub_1C1262DB0();
  sub_1C1262DC0();
  sub_1C1262D70();
  sub_1C1262D90();
  sub_1C10FE214();
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  sub_1C1262070();
  return v0;
}

uint64_t sub_1C112D214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for PhotosItemListSelectionController(0, a9, a10, a4);
  swift_unknownObjectRetain();

  v18 = sub_1C102F064(a1, a3, a4, a5, a6 & 1, a7, a8);
  sub_1C0FF4B88(a2, v20);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94760, &unk_1C12B9E78);
  sub_1C1262090();
  swift_endAccess();
  return v18;
}

uint64_t sub_1C112D330(uint64_t result)
{
  if (result)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94760, &unk_1C12B9E78);
    sub_1C1262040();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1C112D3F0()
{
  OUTLINED_FUNCTION_44(v0 + 24, v2);

  return result;
}

double sub_1C112D420(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

void sub_1C112D468()
{
  OUTLINED_FUNCTION_23();
  v53 = v0;
  v54 = v1;
  v47 = v2;
  v50 = v3;
  v5 = v4;
  sub_1C1263150();
  OUTLINED_FUNCTION_0();
  v48 = v7;
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C12658A0();
  OUTLINED_FUNCTION_0();
  v51 = v11;
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  sub_1C1262DD0();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C1265840();
  sub_1C1262D90();
  v22 = sub_1C1262D80();
  v23 = *(v19 + 8);
  v24 = OUTLINED_FUNCTION_42_0();
  v23(v24);
  v25 = OUTLINED_FUNCTION_46();
  v23(v25);
  if (v22 & 1) != 0 || (sub_1C1265840(), sub_1C1262DB0(), v32 = sub_1C1262D80(), v33 = OUTLINED_FUNCTION_42_0(), v23(v33), v34 = OUTLINED_FUNCTION_46(), v23(v34), (v32) && (sub_1C1265890(), v35 = sub_1C1262EF0(), sub_1C1262F00(), sub_1C1262F00() == v35))
  {
    sub_1C1265890();
    v26 = sub_1C1262EE0();
    sub_1C1262F00();
    if (sub_1C1262F00() != v26)
    {
      sub_1C112EF08();
      v28 = v27;
      sub_1C1265880();
      OUTLINED_FUNCTION_3();
      v30 = *(v29 + 104);
      if (v28)
      {
        v31 = MEMORY[0x1E697D770];
      }

      else
      {
        v31 = MEMORY[0x1E697D778];
      }

      v43 = *v31;
      v44 = v54;
      goto LABEL_14;
    }

LABEL_13:
    v45 = *MEMORY[0x1E697D778];
    sub_1C1265880();
    OUTLINED_FUNCTION_3();
    v30 = *(v46 + 104);
    v44 = v54;
    v43 = v45;
LABEL_14:
    v30(v44, v43);
    goto LABEL_15;
  }

  v37 = v51;
  v36 = v52;
  v38 = *(v51 + 16);
  v38(v17, v5, v52);
  (*(v48 + 16))(v9, v50, v49);
  sub_1C112D960();
  if (LOBYTE(v60[0]) == 4)
  {
    goto LABEL_13;
  }

  v56 = v60[0];
  v38(v14, v5, v36);
  sub_1C1265890();
  v39 = sub_1C1262ED0();
  sub_1C1262F00();
  v40 = sub_1C1262F00();
  (*(v37 + 8))(v14, v36);
  v55 = v40 == v39;
  sub_1C112E8D0(&v56, &v55, &v57);
  if (!AssociatedTypeWitness)
  {
    sub_1C112EC70(&v57);
    goto LABEL_13;
  }

  sub_1C0F9DDE4(&v57, v60);
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v57);
  OUTLINED_FUNCTION_42_0();
  sub_1C12622C0();
  sub_1C1263230();
  v41 = *MEMORY[0x1E697D770];
  sub_1C1265880();
  OUTLINED_FUNCTION_3();
  (*(v42 + 104))(v54, v41);
  __swift_destroy_boxed_opaque_existential_0Tm(&v57);
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
LABEL_15:
  OUTLINED_FUNCTION_22_0();
}

void sub_1C112D960()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C1262DD0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C1265890();
  v14 = sub_1C1262EF0();
  sub_1C1262F00();
  if (sub_1C1262F00() == v14)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_4_2();
    (*(v15 + 8))(v1);
    sub_1C12658A0();
    OUTLINED_FUNCTION_4_2();
    (*(v16 + 8))(v3);
  }

  else
  {
    sub_1C1265840();
    sub_1C112F08C();
    v18 = *(v8 + 8);
    v18(v12, v6);
    sub_1C1262DC0();
    sub_1C113046C();
    OUTLINED_FUNCTION_4_41();
    v19 = OUTLINED_FUNCTION_10_24();
    (v18)(v19);
    if (v12)
    {
      sub_1C1263150();
      OUTLINED_FUNCTION_4_2();
      (*(v20 + 8))(v1);
      sub_1C12658A0();
      OUTLINED_FUNCTION_4_2();
      (*(v21 + 8))(v3);
      v22 = OUTLINED_FUNCTION_16_1();
      (v18)(v22);
      v17 = 3;
      goto LABEL_8;
    }

    sub_1C1262D70();
    OUTLINED_FUNCTION_4_41();
    v23 = OUTLINED_FUNCTION_10_24();
    (v18)(v23);
    sub_1C1262DA0();
    OUTLINED_FUNCTION_4_41();
    v24 = OUTLINED_FUNCTION_10_24();
    (v18)(v24);
    sub_1C1262DB0();
    v25 = OUTLINED_FUNCTION_4_41();
    sub_1C1263150();
    OUTLINED_FUNCTION_4_2();
    (*(v26 + 8))(v1);
    sub_1C12658A0();
    OUTLINED_FUNCTION_4_2();
    (*(v27 + 8))(v3);
    v18(v12, v6);
    v28 = OUTLINED_FUNCTION_16_1();
    (v18)(v28);
    if (v25)
    {
      v17 = 1;
      goto LABEL_8;
    }
  }

  v17 = 4;
LABEL_8:
  *v5 = v17;
  OUTLINED_FUNCTION_22_0();
}

double sub_1C112DD2C()
{
  OUTLINED_FUNCTION_39();
  v5 = *v4;
  v6 = sub_1C112ECD8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v13 = v5;
      v11 = *(v9 + 40);
      swift_unknownObjectRetain();
      v11(&v13, ObjectType, v9, v3, v2, v1, v0);
      swift_unknownObjectRelease();
      v8 += 2;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1C112DE10()
{
  OUTLINED_FUNCTION_39();
  result = sub_1C112ECD8();
  v1 = result;
  v2 = (result + 40);
  v3 = -*(result + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
LABEL_5:

      return v5 != -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = v2 + 2;
    v7 = *v2;
    swift_getObjectType();
    v8 = *(v7 + 96);
    swift_unknownObjectRetain();
    v9 = OUTLINED_FUNCTION_46();
    LOBYTE(v7) = v8(v9);
    result = swift_unknownObjectRelease();
    v2 = v6;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

double sub_1C112E15C()
{
  v0 = sub_1C112ECD8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 40);
    do
    {
      v3 = *v2;
      swift_getObjectType();
      v4 = *(v3 + 48);
      swift_unknownObjectRetain();
      v5 = OUTLINED_FUNCTION_46();
      v4(v5);
      swift_unknownObjectRelease();
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

double sub_1C112E1FC()
{
  v0 = sub_1C112ECD8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 40);
    do
    {
      v3 = *v2;
      swift_getObjectType();
      v4 = *(v3 + 56);
      swift_unknownObjectRetain();
      v5 = OUTLINED_FUNCTION_46();
      v4(v5);
      swift_unknownObjectRelease();
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1C112E29C()
{
  OUTLINED_FUNCTION_23();
  v0 = sub_1C112ECD8();
  v34 = *(v0 + 16);
  if (!v34)
  {

LABEL_45:
    OUTLINED_FUNCTION_22_0();
    return;
  }

  v1 = 0;
  v33 = v0 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  v32 = v0;
  while (v1 < *(v0 + 16))
  {
    v35 = v1;
    v36 = v2;
    v3 = *(v33 + 16 * v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 120);
    swift_unknownObjectRetain();
    v5(ObjectType, v3);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94768, qword_1C12B9E88);
    v6 = sub_1C1266B00();

    v7 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = v6 + 32;
      do
      {
        sub_1C0FDB0A8(v9, v38);
        __swift_project_boxed_opaque_existential_1(v38, v38[3]);
        swift_getAssociatedTypeWitness();
        OUTLINED_FUNCTION_3();
        MEMORY[0x1EEE9AC00](v10);
        sub_1C12622B0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94770, &qword_1C12B9EA0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v37 = 0;
        }

        v11 = __swift_destroy_boxed_opaque_existential_0Tm(v38);
        if (v37)
        {
          MEMORY[0x1C68EF9D0](v11);
          if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C12660F0();
          }

          OUTLINED_FUNCTION_42_0();
          sub_1C1266160();
          v7 = v39;
        }

        v9 += 40;
        --v8;
      }

      while (v8);
    }

    v2 = v36;
    if (v7 >> 62)
    {
      v12 = sub_1C1266BB0();
    }

    else
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v36 >> 62;
    if (v36 >> 62)
    {
      v14 = sub_1C1266BB0();
    }

    else
    {
      v14 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v14 + v12;
    if (__OFADD__(v14, v12))
    {
      goto LABEL_47;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v13)
      {
        v16 = v36 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_1C1266BB0();
      goto LABEL_24;
    }

    if (v13)
    {
      goto LABEL_23;
    }

LABEL_24:
    v2 = sub_1C12669A0();
    v16 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v17 = *(v16 + 16);
    v18 = (*(v16 + 24) >> 1) - v17;
    v19 = v16 + 8 * v17;
    if (v7 >> 62)
    {
      v21 = sub_1C1266BB0();
      if (v21)
      {
        v22 = v21;
        v23 = sub_1C1266BB0();
        if (v18 < v23)
        {
          goto LABEL_50;
        }

        if (v22 < 1)
        {
          goto LABEL_52;
        }

        v31 = v23;
        sub_1C112FC8C();
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94778, &qword_1C12B9EA8);
          v25 = sub_1C1109308(v38, i, v7);
          v27 = *v26;
          swift_unknownObjectRetain();
          v25(v38, 0);
          *(v19 + 32 + 8 * i) = v27;
        }

        v20 = v31;
        goto LABEL_35;
      }
    }

    else
    {
      v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        if (v18 < v20)
        {
          goto LABEL_51;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94770, &qword_1C12B9EA0);
        swift_arrayInitWithCopy();
LABEL_35:

        if (v20 < v12)
        {
          goto LABEL_48;
        }

        if (v20 > 0)
        {
          v28 = *(v16 + 16);
          v29 = __OFADD__(v28, v20);
          v30 = v28 + v20;
          if (v29)
          {
            goto LABEL_49;
          }

          *(v16 + 16) = v30;
        }

        goto LABEL_40;
      }
    }

    if (v12 > 0)
    {
      goto LABEL_48;
    }

LABEL_40:
    v1 = v35 + 1;
    swift_unknownObjectRelease();
    v0 = v32;
    if (v35 + 1 == v34)
    {

      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_1C112E748()
{
  v0 = sub_1C112ECD8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 40);
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v4 = *v2;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 136);
      swift_unknownObjectRetain();
      v7 = v6(ObjectType, v4);
      v8 = *(v7 + 16);
      v9 = *(v3 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      v10 = v7;
      if (!swift_isUniquelyReferenced_nonNull_native() || (v11 = *(v3 + 24) >> 1, v11 < v9 + v8))
      {
        sub_1C0FE41A4();
        v3 = v12;
        v11 = *(v12 + 24) >> 1;
      }

      if (*(v10 + 16))
      {
        if (v11 - *(v3 + 16) < v8)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v13 = *(v3 + 16);
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_18;
          }

          *(v3 + 16) = v15;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_16;
        }
      }

      swift_unknownObjectRelease();
      v2 += 2;
      if (!--v1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void sub_1C112E8D0(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  HIDWORD(v73) = *a2;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  v6 = sub_1C112ECD8();
  v7 = v6;
  if ((v5 - 1) >= 2)
  {
    v8 = sub_1C112F9D8(v6);

    v7 = v8;
  }

  v75 = v7[2];
  if (!v75)
  {

    if ((v5 - 1) >= 2)
    {
      goto LABEL_24;
    }

LABEL_14:
    v27 = sub_1C112ECD8();
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = v27 + 40;
      do
      {
        sub_1C11303FC(a3, &v78);
        if (v80)
        {
          sub_1C112EC70(&v78);
        }

        else
        {
          swift_unknownObjectRetain();
          sub_1C112EC70(&v78);
          swift_getObjectType();
          OUTLINED_FUNCTION_9_26();
          v30();
          swift_unknownObjectRelease();
          v31 = sub_1C112EC70(a3);
          OUTLINED_FUNCTION_3_37(v31, v32, v33, v34, v35, v36, v37, v38, v39, v69, v70, v71, v72, v73, v74, v75, v76, v77, v40, v78, v79);
        }

        v29 += 16;
        --v28;
      }

      while (v28);
    }

    goto LABEL_31;
  }

  HIDWORD(v70) = v5 - 1;
  v71 = v3;
  v72 = 0;
  v9 = 0;
  v10 = 0;
  v11 = v7 + 5;
  v74 = v7;
  while (1)
  {
    if (v10 >= v7[2])
    {
      goto LABEL_35;
    }

    v76 = v9;
    v13 = *(v11 - 1);
    v12 = *v11;
    ObjectType = swift_getObjectType();
    v15 = *(v12 + 104);
    swift_unknownObjectRetain();
    v15(ObjectType, v12);
    if ((v16 & 1) == 0)
    {
      break;
    }

    v9 = v76;
    v7 = v74;
    if (v76)
    {
      swift_unknownObjectRetain();

      HIBYTE(v77) = v5;
      v57 = swift_getObjectType();
      v58 = (*(v72 + 112))(v57);
      (*(v12 + 32))(&v78, &v77 + 7, v58, ObjectType, v12);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v59 = sub_1C112EC70(a3);
      OUTLINED_FUNCTION_3_37(v59, v60, v61, v62, v63, v64, v65, v66, v67, v69, v70, v71, v72, v73, v74, v75, v76, v77, v68, v78, v79);
      goto LABEL_33;
    }

    swift_unknownObjectRelease();
LABEL_11:
    ++v10;
    v11 += 2;
    if (v75 == v10)
    {

      goto LABEL_22;
    }
  }

  HIBYTE(v77) = v5;
  BYTE6(v77) = BYTE4(v73);
  (*(v12 + 24))(&v78, &v77 + 7, &v77 + 6, ObjectType, v12);
  v17 = sub_1C112EC70(a3);
  OUTLINED_FUNCTION_3_37(v17, v18, v19, v20, v21, v22, v23, v24, v25, v69, v70, v71, v72, v73, v74, v75, v76, v77, v26, v78, v79);
  sub_1C11303FC(a3, &v78);
  v9 = v76;
  v7 = v74;
  if (!v80)
  {
    swift_unknownObjectRelease();
    sub_1C112EC70(&v78);
    v9 = v13;
    v72 = v12;
    goto LABEL_11;
  }

  swift_unknownObjectRelease();

  sub_1C112EC70(&v78);
LABEL_22:
  if (v9)
  {
LABEL_33:
    swift_unknownObjectRelease();
    return;
  }

  if (HIDWORD(v70) <= 1)
  {
    goto LABEL_14;
  }

LABEL_24:
  v41 = sub_1C112ECD8();
  v42 = v41;
  v43 = *(v41 + 16);
  if (!v43)
  {
LABEL_31:

    return;
  }

  v44 = v43 - 1;
  v45 = v41 + 16 * v43 + 24;
  while (v44 < *(v42 + 16))
  {
    sub_1C11303FC(a3, &v78);
    if (v80)
    {
      sub_1C112EC70(&v78);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_1C112EC70(&v78);
      swift_getObjectType();
      OUTLINED_FUNCTION_9_26();
      v46();
      swift_unknownObjectRelease();
      v47 = sub_1C112EC70(a3);
      OUTLINED_FUNCTION_3_37(v47, v48, v49, v50, v51, v52, v53, v54, v55, v69, v70, v71, v72, v73, v74, v75, v76, v77, v56, v78, v79);
    }

    --v44;
    v45 -= 16;
    if (v44 == -1)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1C112EC70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91420, &unk_1C12B70C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C112ECD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94760, &unk_1C12B9E78);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  OUTLINED_FUNCTION_44(v0 + 24, v23);
  if (!*(v0 + 24))
  {
    v14 = OBJC_IVAR____TtC17PhotosSwiftUICore26PhotosSelectionCoordinator__controllers;
    OUTLINED_FUNCTION_44(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore26PhotosSelectionCoordinator__controllers, v22);
    (*(v3 + 16))(v7, v0 + v14, v1);
    v15 = sub_1C1262050();
    (*(v3 + 8))(v7, v1);
    if (v15)
    {
      ObjectType = swift_getObjectType();
      v17 = dynamic_cast_existential_1_conditional(v15, ObjectType, &protocol descriptor for PhotosItemListSelectionHandler);
      if (v17)
      {
        v19 = v17;
        v20 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907F8, &unk_1C12B74D0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1C12A8B40;
        *(v13 + 32) = v19;
        *(v13 + 40) = v20;
        return v13;
      }

      swift_unknownObjectRelease();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v11 = OBJC_IVAR____TtC17PhotosSwiftUICore26PhotosSelectionCoordinator__controllers;
  OUTLINED_FUNCTION_44(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore26PhotosSelectionCoordinator__controllers, v22);
  (*(v3 + 16))(v10, v0 + v11, v1);

  v12 = sub_1C1262060();

  (*(v3 + 8))(v10, v1);
  v13 = sub_1C10CB648(v12);

  return v13;
}

void sub_1C112EF08()
{
  OUTLINED_FUNCTION_23();
  v0 = sub_1C112ECD8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (v0 + 40);
    do
    {
      if (v2)
      {
        v2 = 1;
      }

      else
      {
        v4 = *v3;
        ObjectType = swift_getObjectType();
        v6 = *(v4 + 88);
        swift_unknownObjectRetain();
        v2 = v6(ObjectType, v4);
        swift_unknownObjectRelease();
      }

      v3 += 2;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosSelectionCoordinator.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore26PhotosSelectionCoordinator__controllers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94760, &unk_1C12B9E78);
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosSelectionCoordinator.__deallocating_deinit()
{
  PhotosSelectionCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1C112F08C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v38 = v2;
  v39 = v3;
  v4 = sub_1C1263150();
  OUTLINED_FUNCTION_0();
  v40 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1C1262DD0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v15 = v13 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33[-v18];
  v36 = *(v11 + 16);
  v37 = v1;
  (v36)(&v33[-v18], v1, v9, v17);
  sub_1C1262DC0();
  sub_1C113046C();
  v20 = OUTLINED_FUNCTION_20_18();
  v21 = *(v11 + 8);
  v21(v15, v9);
  v22 = MEMORY[0x1E697E7D8];
  if (v20 & 1) != 0 && (v23 = v4, v24 = v40, (*(v40 + 104))(v8, *MEMORY[0x1E697E7D8], v23), v34 = sub_1C1263140(), v25 = v24, v4 = v23, (*(v25 + 8))(v8, v23), v22 = MEMORY[0x1E697E7D8], (v34))
  {
    v21(v19, v9);
    sub_1C1262D70();
  }

  else
  {
    v35 = v4;
    v26 = v22;
    v27 = v40;
    sub_1C1262D70();
    v28 = OUTLINED_FUNCTION_20_18();
    v21(v15, v9);
    v21(v19, v9);
    if (v28 & 1) != 0 && (v29 = v27, v30 = *(v27 + 104), v31 = v35, v30(v8, *v26, v35), v32 = sub_1C1263140(), (*(v29 + 8))(v8, v31), (v32))
    {
      sub_1C1262DC0();
    }

    else
    {
      v36(v39, v37, v9);
    }
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosSelectionDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t PhotosSelectionMode.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t EnvironmentValues.photosSelectionCoordinator.getter()
{
  sub_1C112FCF0();
  sub_1C12637F0();
  return v1;
}

void (*EnvironmentValues.photosSelectionCoordinator.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C112FCF0();
  sub_1C12637F0();
  return sub_1C112F538;
}

void sub_1C112F538(uint64_t *a1, char a2)
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

uint64_t EnvironmentValues.photosSelectionBandDisabled.getter()
{
  sub_1C112FD44();
  sub_1C12637F0();
  return v1;
}

uint64_t (*EnvironmentValues.photosSelectionBandDisabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C112FD44();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C112F6AC;
}

uint64_t sub_1C112F6E4()
{
  type metadata accessor for PhotosSelectionCoordinator(0);
  v0 = swift_allocObject();
  result = PhotosSelectionCoordinator.init()();
  qword_1EDE80698 = v0;
  return result;
}

double sub_1C112F724@<D0>(void *a1@<X8>)
{
  if (qword_1EDE80690 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE80698;

  return result;
}

void sub_1C112F790(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360, &qword_1C12A3BB0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for PhotosConcreteSelectableItem();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1C112F86C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1C0FE5EE8();

    MEMORY[0x1C68F02A0](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1C1266BB0();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1C112F908(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90820, &qword_1C12A45D0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1C112F9D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C0FE4B74(*(a1 + 16), 0);
  sub_1C112FBB8(&v7, v3 + 2, v1, a1);
  v5 = v4;

  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1C112FA6C()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_22_0();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_1C112FBB8(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  if (!a2)
  {
    v11 = *(a4 + 16);
LABEL_12:
    *a1 = a4;
    a1[1] = v11;
    return;
  }

  if (!a3)
  {
    v11 = *(a4 + 16);
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = 0;
    v9 = a3 - 1;
    v10 = a4 + 16 * v6 + 16;
    while (1)
    {
      v11 = v6 + v8;
      if (!(v6 + v8))
      {
        goto LABEL_12;
      }

      if (v11 > *(a4 + 16))
      {
        __break(1u);
        break;
      }

      *v7 = *(v10 + 16 * v8);
      if (!(v9 + v8))
      {
        swift_unknownObjectRetain();
        v11 = v6 + v8 - 1;
        goto LABEL_12;
      }

      ++v7;
      swift_unknownObjectRetain();
      --v8;
    }
  }

  __break(1u);
}

unint64_t sub_1C112FC8C()
{
  result = qword_1EBE94780;
  if (!qword_1EBE94780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94778, &qword_1C12B9EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94780);
  }

  return result;
}

unint64_t sub_1C112FCF0()
{
  result = qword_1EDE80680;
  if (!qword_1EDE80680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80680);
  }

  return result;
}

unint64_t sub_1C112FD44()
{
  result = qword_1EDE79B38[0];
  if (!qword_1EDE79B38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE79B38);
  }

  return result;
}

unint64_t sub_1C112FD9C()
{
  result = qword_1EBE94788;
  if (!qword_1EBE94788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94788);
  }

  return result;
}

unint64_t sub_1C112FDF4()
{
  result = qword_1EBE94790;
  if (!qword_1EBE94790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94790);
  }

  return result;
}

uint64_t type metadata accessor for PhotosSelectionCoordinator(uint64_t a1)
{
  result = qword_1EDE80DA8;
  if (!qword_1EDE80DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C112FE9C(uint64_t a1)
{
  sub_1C1130198();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C1130198()
{
  if (!qword_1EDE776D8)
  {
    v0 = sub_1C1262080();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE776D8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhotosSelectionDirection(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosSelectionMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C11303FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91420, &unk_1C12B70C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C113046C()
{
  result = qword_1EDE7BFD0;
  if (!qword_1EDE7BFD0)
  {
    sub_1C1262DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BFD0);
  }

  return result;
}

uint64_t sub_1C11304F4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1C12638E0();
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94798, &qword_1C12BA140);
  return sub_1C1130554((a3 + *(v5 + 44)));
}

uint64_t sub_1C1130554@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v1 = sub_1C1263F70();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v29 = v4;
  v30 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = sub_1C1263F50();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v31 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  sub_1C1263F60();
  sub_1C1263F80();
  v19 = *(v12 + 16);
  v19(v15, v18, v10);
  v20 = *(v3 + 16);
  v20(v6, v9, v1);
  v21 = v32;
  v19(v32, v15, v10);
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE947B0, qword_1C12BA210) + 48)];
  v23 = v29;
  v20(v22, v6, v29);
  v24 = *(v30 + 8);
  v25 = v9;
  v26 = v23;
  v24(v25, v23);
  v27 = *(v31 + 8);
  v27(v18, v10);
  v24(v6, v26);
  return (v27)(v15, v10);
}

_BYTE *sub_1C113082C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C11308D8()
{
  result = qword_1EBE947A0;
  if (!qword_1EBE947A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE947A8, &qword_1C12BA208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE947A0);
  }

  return result;
}

void PXSyntheticAsset.init(hue:saturation:brightness:aspectRatio:label:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:a5 saturation:a6 brightness:a7 alpha:1.0];

  PXSyntheticAsset.init(aspectRatio:label:tint:)(a1, a2 & 1, a3, a4, v11);
}

uint64_t PXSyntheticAsset.id.getter()
{
  result = sub_1C1130E5C(v0);
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

double PXSyntheticAsset.pixelSize.getter()
{
  v1 = [v0 pixelWidth];
  [v0 pixelHeight];
  return v1;
}

uint64_t sub_1C1130A74@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1C1261D90();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C1261DE0();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void PXSyntheticAsset.init(aspectRatio:label:tint:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2 & 1;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C1130EC0;
  *(v12 + 24) = v11;
  v15[4] = sub_1C1130ED4;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1C1130E08;
  v15[3] = &block_descriptor_9;
  v13 = _Block_copy(v15);
  v14 = a5;

  [v10 initWithConfiguration_];

  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }
}

void sub_1C1130D00(id a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 1) == 0)
  {
    v10 = [a1 size];
    MEMORY[0x1C68F0CC0](v10, *&a2, v11, v12);
    [a1 setSize_];
  }

  if (a5)
  {
    v13 = sub_1C1265E70();
    [a1 setLabel_];
  }

  if (a6)
  {

    [a1 setTintColor_];
  }
}

uint64_t sub_1C1130E08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1130E5C(void *a1)
{
  v1 = [a1 uuid];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C1265EA0();

  return v3;
}

uint64_t sub_1C1130F38(uint64_t a1)
{
  result = sub_1C1130F7C(&unk_1EBE94830, &protocol conformance descriptor for PXSyntheticAsset);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1130F7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C0FE0644();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1130FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PhotosTaskWithDelayViewModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C1131D3C(v3, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1C1131DA0(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94858, &qword_1C12BA398) + 36));
  sub_1C1262E60();
  sub_1C1266210();
  *v11 = &unk_1C12BA390;
  v11[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94860, &unk_1C12BA3A0);
  OUTLINED_FUNCTION_3();
  return (*(v12 + 16))(a2, a1);
}

uint64_t sub_1C1131130(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for PhotosTaskWithDelayViewModifier(0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0, &qword_1C12B6380);
  v1[7] = swift_task_alloc();
  v4 = sub_1C1266AD0();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = sub_1C1266200();
  v1[12] = sub_1C12661F0();
  v1[13] = sub_1C12661E0();
  v1[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C11312C4);
}

uint64_t sub_1C11312C4()
{
  sub_1C1266FA0();
  sub_1C1266DD0();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1C11313A4;

  return sub_1C1131FB0();
}

uint64_t sub_1C11313A4()
{
  OUTLINED_FUNCTION_2_45();
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1C1131660;
  }

  else
  {
    v5 = sub_1C1131538;
  }

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1C1131538()
{
  OUTLINED_FUNCTION_2_45();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[2];

  v5 = sub_1C1266230();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  sub_1C1131D3C(v4, v2);
  v6 = sub_1C12661F0();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_1C1131DA0(v2, v8 + v7);
  sub_1C12180A0();

  OUTLINED_FUNCTION_14();

  return v10();
}

uint64_t sub_1C1131660()
{
  OUTLINED_FUNCTION_2_45();
  v1 = *(v0 + 128);

  v2 = v1;
  v3 = sub_1C12626F0();
  v4 = sub_1C1266410();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C0F96000, v3, v4, ".task delay failed: %@", v7, 0xCu);
    sub_1C113244C(v8);
    MEMORY[0x1C68F1630](v8, -1, -1);
    MEMORY[0x1C68F1630](v7, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_14();

  return v11();
}

uint64_t sub_1C11317D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1C1266200();
  v4[3] = sub_1C12661F0();
  v4[4] = sub_1C12661E0();
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C113186C);
}

uint64_t sub_1C113186C()
{
  OUTLINED_FUNCTION_29_6();
  v3 = (*(*(v0 + 16) + 8) + **(*(v0 + 16) + 8));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C1131954;

  return v3();
}

uint64_t sub_1C1131954()
{
  OUTLINED_FUNCTION_29_6();
  v1 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C1131A68);
}

uint64_t sub_1C1131A68()
{
  OUTLINED_FUNCTION_29_6();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t View.photosTaskWithDelay(_:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = type metadata accessor for PhotosTaskWithDelayViewModifier(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = a5;
  *(v13 + 1) = a1;
  *(v13 + 2) = a2;

  sub_1C12626E0();
  MEMORY[0x1C68EE920](v13, a3, v10, a4);
  return sub_1C1131C08(v13);
}

uint64_t type metadata accessor for PhotosTaskWithDelayViewModifier(uint64_t a1)
{
  result = qword_1EBE94848;
  if (!qword_1EBE94848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1131C08(uint64_t a1)
{
  v2 = type metadata accessor for PhotosTaskWithDelayViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1131C8C(uint64_t a1)
{
  result = sub_1C1007F88();
  if (v2 <= 0x3F)
  {
    result = sub_1C1262720();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1131D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosTaskWithDelayViewModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1131DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosTaskWithDelayViewModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1131E04()
{
  OUTLINED_FUNCTION_29_6();
  v2 = *(type metadata accessor for PhotosTaskWithDelayViewModifier(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1131ECC;

  return sub_1C1131130(v0 + v3);
}

uint64_t sub_1C1131ECC()
{
  OUTLINED_FUNCTION_29_6();
  v1 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_1C1131FB0()
{
  OUTLINED_FUNCTION_2_45();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_1C1266AC0();
  *(v1 + 64) = v12;
  *(v1 + 72) = *(v12 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C11320AC);
}

uint64_t sub_1C11320AC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1C1266AD0();
  v5 = sub_1C11326C0(&qword_1EDE82F70, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1C1266DB0();
  sub_1C11326C0(&qword_1EDE82F78, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C1266AE0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C113223C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1C113223C()
{
  OUTLINED_FUNCTION_2_45();
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v8 = *v1;
  OUTLINED_FUNCTION_8_26();
  *v5 = v8;
  *(v8 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C11323E8);
  }

  else
  {

    OUTLINED_FUNCTION_14();

    return v6();
  }
}

uint64_t sub_1C11323E8()
{
  OUTLINED_FUNCTION_29_6();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_1C113244C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97C20, &qword_1C12CB2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C11324B4()
{
  OUTLINED_FUNCTION_2_45();
  v3 = v2;
  v4 = *(type metadata accessor for PhotosTaskWithDelayViewModifier(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C1132708;

  return sub_1C11317D4(v3, v6, v7, v0 + v5);
}

unint64_t sub_1C11325A0()
{
  result = qword_1EBE94868;
  if (!qword_1EBE94868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94858, &qword_1C12BA398);
    sub_1C113265C();
    sub_1C11326C0(&qword_1EBE94878, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94868);
  }

  return result;
}

unint64_t sub_1C113265C()
{
  result = qword_1EBE94870;
  if (!qword_1EBE94870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94860, &unk_1C12BA3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94870);
  }

  return result;
}

uint64_t sub_1C11326C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PhotosCollectionCell.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  __src[0] = a3;
  __src[1] = a4;
  __src[2] = a5;
  __src[3] = a6;
  __src[4] = a7;
  v12 = *(type metadata accessor for PhotosCollectionCell(0, __src) + 64);
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  v13 = memcpy((a8 + v12), __src, 0xD1uLL);
  a2(v13);
  return (*(*(a3 - 8) + 32))(a8, a1, a3);
}

uint64_t sub_1C1132800@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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
    sub_1C0F9E21C(v17, &qword_1EBE91C80, &qword_1C12A75B0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1132A1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  (*(v1 + 40))(v2, v1);
  if (!v3)
  {
    (*(v1 + 48))(v2, v1);
    if (!v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PhotosCollectionCell.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94880, &qword_1C12BA3F8);
  v45 = a1[2];
  v46 = a1[4];
  v47 = a1;
  type metadata accessor for PhotosFavoriteBadge(255, v45, *(v46 + 8), v4);
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  v5 = MEMORY[0x1E6981840];
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v62[0] = sub_1C12654C0();
  v62[1] = v5;
  v62[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE94888, &qword_1C12BA400);
  v62[3] = v62[2];
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DD0, &unk_1C12AC500);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  v6 = v3;
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_22();
  v7 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v42 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v41 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  v41[1] = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  v43 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v44 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v41 - v20;
  v50 = v45;
  v51 = v6;
  v52 = v46;
  v22 = v47;
  v53 = *(v47 + 5);
  v54 = v48;
  sub_1C1009330(v7, WitnessTable, v23, v24, v25, v26);
  sub_1C12655B0();
  sub_1C1132800(v22, v61);
  v27 = OUTLINED_FUNCTION_4_42();
  View.cellStyle(for:)(v61, v27, v18);
  memcpy(v62, v61, 0xD0uLL);
  sub_1C100C7D0(v62);
  (*(v42 + 8))(v13, v9);
  OUTLINED_FUNCTION_0_0();
  v30 = sub_1C0FDB6D4(v28, &unk_1EBE92EC0, &qword_1C12A8E00, v29);
  v59 = v27;
  v60 = v30;
  v31 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v34 = sub_1C0FDB6D4(v32, &qword_1EBE91C40, &unk_1C12A7010, v33);
  v57 = v31;
  v58 = v34;
  v35 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v38 = sub_1C0FDB6D4(v36, &unk_1EBE92ED0, &unk_1C12A8E80, v37);
  v55 = v35;
  v56 = v38;
  swift_getWitnessTable();
  sub_1C0FDBA4C();
  v39 = *(v44 + 8);
  v39(v18, v14);
  sub_1C0FDBA4C();
  return (v39)(v21, v14);
}

uint64_t sub_1C1132F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a1;
  v75 = a7;
  type metadata accessor for PhotosFavoriteBadge(255, a2, *(a4 + 8), a4);
  sub_1C1266790();
  v12 = MEMORY[0x1E6981840];
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v92 = sub_1C12654C0();
  v93 = v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE94888, &qword_1C12BA400);
  v95 = v94;
  swift_getTupleTypeMetadata();
  v59 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C12655A0();
  v64 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v56 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DD0, &unk_1C12AC500);
  v62 = sub_1C1263190();
  v70 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v56 = &v56 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8, &unk_1C12A3E30);
  v67 = sub_1C1263190();
  v73 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v60 = &v56 - v16;
  v72 = sub_1C1263190();
  v74 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v56 - v19;
  v77 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v56 - v23;
  v92 = a2;
  v93 = a3;
  v94 = a4;
  v95 = a5;
  v24 = a6;
  v96 = a6;
  v25 = type metadata accessor for PhotosCollectionCell(0, &v92);
  v26 = v68;
  v61 = a3;
  v66 = v24;
  sub_1C0FDBA4C();
  sub_1C1265B90();
  v63 = v27;
  v29 = v28;
  sub_1C1265B80();
  v31 = v30;
  v33 = v32;
  v34 = sub_1C1132A1C(v25);
  v78 = a2;
  v79 = a3;
  if (v34)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  v80 = a4;
  v81 = a5;
  v82 = v24;
  v83 = v26;
  sub_1C10A7F5C(v59);
  v36 = v57;
  sub_1C1265590();
  v37 = swift_getWitnessTable();
  v38 = v56;
  sub_1C1264DD0();
  (*(v64 + 8))(v36, v13);
  v92 = sub_1C1265190();
  v39 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
  v91[7] = v37;
  v91[8] = v39;
  v40 = v62;
  v41 = swift_getWitnessTable();
  v42 = v60;
  sub_1C1264BE0();

  (*(v70 + 8))(v38, v40);
  sub_1C1132800(v25, &v92);
  sub_1C100C7D0(&v92);
  v43 = sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
  v91[5] = v41;
  v91[6] = v43;
  v44 = v67;
  v45 = swift_getWitnessTable();
  v46 = v65;
  sub_1C1264FA0();
  (*(v73 + 8))(v42, v44);
  v91[3] = v45;
  v91[4] = MEMORY[0x1E697E5D8];
  v47 = v72;
  v48 = swift_getWitnessTable();
  v49 = v71;
  sub_1C0FDBA4C();
  v50 = v74;
  v51 = *(v74 + 8);
  v51(v46, v47);
  v52 = v69;
  v53 = v61;
  (*(v77 + 16))(v69, v76, v61);
  v88[0] = v63;
  v88[1] = v29;
  v88[2] = v31;
  v88[3] = v33;
  v88[4] = 0x3FE6666666666666;
  v89 = 0;
  v90 = v35;
  v91[0] = v52;
  v91[1] = v88;
  (*(v50 + 16))(v46, v49, v47);
  v91[2] = v46;
  v87[0] = v53;
  v87[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94880, &qword_1C12BA3F8);
  v87[2] = v47;
  v84 = v66;
  v85 = sub_1C1134DE4();
  v86 = v48;
  sub_1C119EE80(v91, 3, v87);
  v51(v49, v47);
  v54 = *(v77 + 8);
  v54(v76, v53);
  v51(v46, v47);
  return (v54)(v52, v53);
}

uint64_t sub_1C11337F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v68 = a3;
  v69 = a5;
  v60 = a1;
  v70 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v62 = &v58 - v11;
  v12 = sub_1C1264700();
  v72 = *(v12 - 8);
  v73 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosFavoriteBadge(255, a2, *(a4 + 8), v14);
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  v15 = sub_1C1265B00();
  swift_getWitnessTable();
  v16 = sub_1C12654C0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  v74 = a2;
  v75 = v68;
  v76 = a4;
  v77 = v69;
  v78 = a6;
  v79 = v60;
  sub_1C1012734(v15);
  sub_1C12654B0();
  WitnessTable = swift_getWitnessTable();
  v69 = v22;
  v65 = WitnessTable;
  sub_1C0FDBA4C();
  v66 = v17;
  v24 = *(v17 + 8);
  v63 = v16;
  v64 = v19;
  v25 = a4;
  v67 = v24;
  v68 = v17 + 8;
  v24(v19, v16);
  v26 = *(a4 + 40);
  v61 = a2;
  v27 = v26(a2, a4);
  v29 = MEMORY[0x1E6980E20];
  v30 = MEMORY[0x1E69E7CC0];
  if (v28)
  {
    v31 = v28;
    v59 = v27;
    sub_1C1265960();
    sub_1C1263390();
    v94[0] = 0;
    v32 = v71;
    v33 = v72;
    v34 = v73;
    (*(v72 + 104))(v71, *MEMORY[0x1E6980F38], v73);
    v35 = *v29;
    v36 = sub_1C1264590();
    v37 = v62;
    (*(*(v36 - 8) + 104))(v62, v35, v36);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v36);
    sub_1C12645B0();
    v38 = sub_1C1264640();
    sub_1C0F9E21C(v37, &qword_1EBE96550, &qword_1C12AC4C0);
    (*(v33 + 8))(v32, v34);
    KeyPath = swift_getKeyPath();
    v40 = swift_getKeyPath();
    LOBYTE(v95[0]) = 0;
    v96[0] = v59;
    v96[1] = v31;
    LOBYTE(v96[2]) = 0;
    v30 = MEMORY[0x1E69E7CC0];
    v96[3] = MEMORY[0x1E69E7CC0];
    memcpy(&v96[4], v80, 0x70uLL);
    v96[18] = KeyPath;
    v96[19] = v38;
    v96[20] = v40;
    v96[21] = 2;
    LOBYTE(v96[22]) = 0;
    nullsub_1();
    memcpy(v97, v96, 0xB1uLL);
  }

  else
  {
    sub_1C1134EA0(v97);
    v37 = v62;
  }

  v41 = (*(v25 + 48))(v61, v25);
  if (v42)
  {
    v43 = v42;
    v62 = v41;
    sub_1C1265960();
    sub_1C1263390();
    v90[0] = 0;
    v45 = v72;
    v44 = v73;
    v46 = v30;
    v47 = v71;
    (*(v72 + 104))(v71, *MEMORY[0x1E6980F20], v73);
    v48 = *MEMORY[0x1E6980E20];
    v49 = sub_1C1264590();
    (*(*(v49 - 8) + 104))(v37, v48, v49);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v49);
    sub_1C1264600();
    v50 = sub_1C1264640();
    sub_1C0F9E21C(v37, &qword_1EBE96550, &qword_1C12AC4C0);
    (*(v45 + 8))(v47, v44);
    v51 = swift_getKeyPath();
    v52 = swift_getKeyPath();
    v94[0] = 0;
    v95[0] = v62;
    v95[1] = v43;
    LOBYTE(v95[2]) = 0;
    v95[3] = v46;
    memcpy(&v95[4], v81, 0x70uLL);
    v95[18] = v51;
    v95[19] = v50;
    v95[20] = v52;
    v95[21] = 2;
    LOBYTE(v95[22]) = 0;
    nullsub_1();
    memcpy(v96, v95, 0xB1uLL);
  }

  else
  {
    sub_1C1134EA0(v96);
  }

  v53 = v63;
  v54 = v64;
  v55 = v69;
  (*(v66 + 16))(v64, v69, v63);
  v91 = 0;
  v92 = 1;
  v93[0] = v54;
  v93[1] = &v91;
  memcpy(v90, v97, 0xB1uLL);
  v93[2] = v90;
  memcpy(v89, v96, 0xB1uLL);
  v93[3] = v89;
  sub_1C1134EA8(v97, v95);
  sub_1C1134EA8(v96, v95);
  v86[0] = v53;
  v86[1] = MEMORY[0x1E6981840];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE94888, &qword_1C12BA400);
  v88 = v87;
  v82 = v65;
  v83 = MEMORY[0x1E6981838];
  v84 = sub_1C1134F18();
  v85 = v84;
  sub_1C119EE80(v93, 4, v86);
  sub_1C0F9E21C(v96, qword_1EBE94888, &qword_1C12BA400);
  sub_1C0F9E21C(v97, qword_1EBE94888, &qword_1C12BA400);
  v56 = v67;
  v67(v55, v53);
  memcpy(v94, v89, 0xB1uLL);
  sub_1C0F9E21C(v94, qword_1EBE94888, &qword_1C12BA400);
  memcpy(v95, v90, 0xB1uLL);
  sub_1C0F9E21C(v95, qword_1EBE94888, &qword_1C12BA400);
  return v56(v54, v53);
}

uint64_t sub_1C1134024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 8);
  v10 = type metadata accessor for PhotosFavoriteBadge(0, v9, v8, v7);
  v31 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = sub_1C1266790();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v32 = &v29 - v22;
  if ((*(v8 + 8))(a2, v8, v21))
  {
    (*(v30 + 16))(v6, a1, a2);
    v23 = sub_1C110DB44(a2);
    PhotosFavoriteBadge.init(_:tint:)(v23, v12, a2, v8);
    swift_getWitnessTable();
    sub_1C0FDBA4C();
    v24 = v31;
    v25 = *(v31 + 8);
    v25(v12, v10);
    sub_1C0FDBA4C();
    v25(v15, v10);
    (*(v24 + 32))(v19, v12, v10);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v10);
    swift_getWitnessTable();
  }

  v26 = v32;
  sub_1C1170030(v19, v32);
  v27 = *(v17 + 8);
  v27(v19, v16);
  v38 = 0;
  v39 = 1;
  v40[0] = &v38;
  (*(v17 + 16))(v19, v26, v16);
  v40[1] = v19;
  v37[0] = MEMORY[0x1E6981840];
  v37[1] = v16;
  v35 = MEMORY[0x1E6981838];
  WitnessTable = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  sub_1C119EE80(v40, 2, v37);
  v27(v26, v16);
  return (v27)(v19, v16);
}

uint64_t PhotosCollectionCellFactory.__allocating_init(capacity:)()
{
  v0 = swift_allocObject();
  type metadata accessor for ColorFactory();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t PhotosCollectionCellFactory.init(capacity:)()
{
  type metadata accessor for ColorFactory();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

void *sub_1C11344EC@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0, &qword_1C12AF660);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &__src[-1] - v4;
  OUTLINED_FUNCTION_17_2(0x2320656C746954);
  v6 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v6);

  v7 = __src[0];
  v8 = __src[1];
  OUTLINED_FUNCTION_17_2(0x656C746974627553);
  v9 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v9);

  v10 = __src[0];
  v11 = __src[1];
  v12 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v12);
  type metadata accessor for PhotosMockCollection(0);
  swift_allocObject();
  LOWORD(v17) = 0;
  PhotosMockCollection.init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:isContentPrivacyEnabled:)(0, 0, v7, v8, v10, v11, v5, 0, MEMORY[0x1E69E7CC0], v17, v18, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], BYTE1(__src[10]));
  v14 = v13;
  v15 = sub_1C1265110();
  *a2 = v14;
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  result = memcpy((a2 + 32), __src, 0xD1uLL);
  *(a2 + 8) = v15;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0;
  return result;
}

uint64_t PhotosCollectionCellFactory.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1C1134834(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C107032C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C11348D8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_29:
    if (v6 != v12)
    {
      result = (v13 + result) & ~v11;
      if (v9 != v12)
      {
        v22 = *(((v14 + result) & 0xFFFFFFFFFFFFFFF8) + 208);
        if (v22 > 1)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v6 = v9;
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(result, v6, v5);
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 209;
  v16 = (a2 - v12 + 255) >> 8;
  if (v15 <= 3)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    LODWORD(v18) = 4;
  }

  else
  {
    LODWORD(v18) = 2;
  }

  if (v17 < 0x100)
  {
    LODWORD(v18) = 1;
  }

  if (v17 >= 2)
  {
    v18 = v18;
  }

  else
  {
    v18 = 0;
  }

  switch(v18)
  {
    case 1:
      v19 = *(result + v15);
      if (!*(result + v15))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 2:
      v19 = *(result + v15);
      if (!*(result + v15))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v19 = *(result + v15);
      if (!v19)
      {
        goto LABEL_29;
      }

LABEL_25:
      v20 = (v19 - 1) << (8 * (((v14 + (v13 & ~v11)) & 0xF8) - 47));
      if (v15 <= 3)
      {
        v21 = *result;
      }

      else
      {
        v20 = 0;
        v21 = *result;
      }

      result = v12 + (v21 | v20) + 1;
      break;
    default:
      goto LABEL_29;
  }

  return result;
}

void sub_1C1134AA8(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = (a3 - v12 + 255) >> 8;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
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

  if (v12 >= a2)
  {
    switch(v21)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v8 == v12)
        {
          goto LABEL_36;
        }

        a1 = ((a1 + v14) & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_36:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
        }

        else
        {
          v24 = (a1 + v16) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v24 + 200) = 0;
            *(v24 + 184) = 0u;
            *(v24 + 168) = 0u;
            *(v24 + 152) = 0u;
            *(v24 + 136) = 0u;
            *(v24 + 120) = 0u;
            *(v24 + 104) = 0u;
            *(v24 + 88) = 0u;
            *(v24 + 72) = 0u;
            *(v24 + 56) = 0u;
            *(v24 + 40) = 0u;
            *(v24 + 24) = 0u;
            *(v24 + 8) = 0u;
            *(v24 + 208) = 0;
            *v24 = (a2 - 255);
          }

          else
          {
            *(v24 + 208) = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v22 = ~v12 + a2;
    bzero(a1, ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 209);
    if (v17 <= 3)
    {
      v23 = (v22 >> 8) + 1;
    }

    else
    {
      v23 = 1;
    }

    if (v17 > 3)
    {
      *v6 = v22;
    }

    else
    {
      *v6 = v22;
    }

    switch(v21)
    {
      case 1:
        *(v6 + v17) = v23;
        break;
      case 2:
        *(v6 + v17) = v23;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(v6 + v17) = v23;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C1134DE4()
{
  result = qword_1EDE774B8;
  if (!qword_1EDE774B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94880, &qword_1C12BA3F8);
    sub_1C10B8F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774B8);
  }

  return result;
}

uint64_t sub_1C1134EA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE94888, &qword_1C12BA400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1134F18()
{
  result = qword_1EBE94920;
  if (!qword_1EBE94920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE94888, &qword_1C12BA400);
    sub_1C1134F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94920);
  }

  return result;
}

unint64_t sub_1C1134F9C()
{
  result = qword_1EBE94928;
  if (!qword_1EBE94928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94930, &qword_1C12BA4E8);
    sub_1C1135054();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94928);
  }

  return result;
}

unint64_t sub_1C1135054()
{
  result = qword_1EBE94938;
  if (!qword_1EBE94938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94940, &unk_1C12BA4F0);
    sub_1C1112C54();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94938);
  }

  return result;
}

uint64_t OneUpDebugImageProperties.ImageDynamicRange.rawValue.getter()
{
  v1 = 5391443;
  if (*v0 != 1)
  {
    v1 = 5391432;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t OneUpVisualAnalysisStatus.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 1701602377;
  }

  if (v1 == 1)
  {
    return 0x6E697A796C616E41;
  }

  v3 = sub_1C1135BF0(v1);
  MEMORY[0x1C68EF850](v3);

  return 0x64657A796C616E41;
}

double sub_1C1135230(unint64_t *a1)
{
  v2 = *a1;
  sub_1C1135E5C(v2);
  return sub_1C11352E8(&v2);
}

double sub_1C113526C@<D0>(unint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1C1135DB8();
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v14, v1);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v1 + 16, v11);
  v12 = *(v1 + 16);
  *a1 = v12;
  return sub_1C1135E5C(v12);
}

double sub_1C11352E8(unint64_t *a1)
{
  v1 = *a1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_7_30(KeyPath, v3, v4, v5, v6, v7, v8, v9, v11);
  sub_1C10D9A94(v1);

  return result;
}

double sub_1C1135350(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
  sub_1C1135E5C(a2);
  return sub_1C10D9A94(v4);
}

uint64_t (*sub_1C11353B8())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore19OneUpAssetDebugInfo___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C1135DB8();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C1073F50();
  return sub_1C1135470;
}

double sub_1C1135518()
{
  swift_getKeyPath();
  v1 = sub_1C1135DB8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v11, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 24, v9);
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1C113558C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_7_30(KeyPath, v2, v3, v4, v5, v6, v7, v8, v10);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C11355F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1C113565C())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore19OneUpAssetDebugInfo___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C1135DB8();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C113547C();
  return sub_1C1135714;
}

void *sub_1C1135720@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1135794(&v4);
  *a1 = v4;
  return result;
}

uint64_t sub_1C1135794@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1C1135DB8();
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v1);
  sub_1C1261F30();

  result = OUTLINED_FUNCTION_7_4(v1 + 32, v11);
  *a1 = *(v1 + 32);
  return result;
}

double sub_1C113580C()
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_7_30(KeyPath, v1, v2, v3, v4, v5, v6, v7, v9);

  return result;
}

uint64_t (*sub_1C1135870())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore19OneUpAssetDebugInfo___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C1135DB8();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C0FDF120();
  return sub_1C1135928;
}

uint64_t OneUpAssetDebugInfo.__allocating_init()()
{
  v0 = swift_allocObject();
  OneUpAssetDebugInfo.init()(v0);
  return v0;
}

uint64_t OneUpAssetDebugInfo.init()(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  sub_1C1261F60();
  return v1;
}

uint64_t OneUpAssetDebugInfo.deinit()
{
  sub_1C10D9A94(*(v0 + 16));
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore19OneUpAssetDebugInfo___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OneUpAssetDebugInfo.__deallocating_deinit()
{
  OneUpAssetDebugInfo.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t OneUpVisualAnalysisStatus.ResultType.description.getter()
{
  v1 = 0x7465442061746144;
  if (*v0 != 1)
  {
    v1 = 0x53206C6175736956;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047316;
  }
}

uint64_t OneUpVisualAnalysisStatus.ResultType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1135BF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1C1102370(0, v1, 0);
  v3 = (a1 + 32);
  OUTLINED_FUNCTION_8_33();
  v7 = 0x7465442061746144;
  do
  {
    v9 = *v3++;
    v8 = v9;
    v10 = v9 == 1;
    if (v9 == 1)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0x53206C6175736956;
    }

    if (v10)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0xED00006863726165;
    }

    if (v8)
    {
      v13 = v11;
    }

    else
    {
      v13 = v5;
    }

    if (v8)
    {
      v14 = v12;
    }

    else
    {
      v14 = v4;
    }

    v16 = *(v22 + 16);
    v15 = *(v22 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1C1102370((v15 > 1), v16 + 1, 1);
      OUTLINED_FUNCTION_8_33();
      v5 = 1954047316;
      v4 = 0xE400000000000000;
    }

    *(v22 + 16) = v16 + 1;
    v17 = v22 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0, &qword_1C12A3E60);
  sub_1C1136440();
  v18 = sub_1C1265D70();
  v20 = v19;

  MEMORY[0x1C68EF850](v18, v20);

  MEMORY[0x1C68EF850](93, 0xE100000000000000);
  return 1528834848;
}

unint64_t sub_1C1135DB8()
{
  result = qword_1EBE94948;
  if (!qword_1EBE94948)
  {
    type metadata accessor for OneUpAssetDebugInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94948);
  }

  return result;
}

uint64_t type metadata accessor for OneUpAssetDebugInfo(uint64_t a1)
{
  result = qword_1EDE7D600;
  if (!qword_1EDE7D600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1C1135E5C(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

PhotosSwiftUICore::OneUpDebugImageProperties::ImageDynamicRange_optional __swiftcall OneUpDebugImageProperties.ImageDynamicRange.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C1266BF0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C1135F40()
{
  result = qword_1EBE94950;
  if (!qword_1EBE94950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94950);
  }

  return result;
}

unint64_t sub_1C1135FA4()
{
  result = qword_1EBE94958;
  if (!qword_1EBE94958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94958);
  }

  return result;
}

uint64_t sub_1C113601C@<X0>(uint64_t *a1@<X8>)
{
  result = OneUpDebugImageProperties.ImageDynamicRange.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C113604C(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore25OneUpVisualAnalysisStatusO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C1136284(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C11362D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1C1136364(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1136440()
{
  result = qword_1EDE7B700;
  if (!qword_1EDE7B700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906A0, &qword_1C12A3E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B700);
  }

  return result;
}

uint64_t dispatch thunk of PhotosViewport.convert(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))(a1, a2);
}

{
  return (*(a3 + 40))(a1, a2);
}

uint64_t dispatch thunk of PhotosViewport.convert(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))(a1, a2);
}

{
  return (*(a3 + 48))(a1, a2);
}

int *PhotosItemsPageControl.init(_:id:scrollViewModel:pageImages:showBackground:)@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = *a1;
  v15 = *a2;
  OUTLINED_FUNCTION_15_1();
  (*(v16 + 32))(a7);
  v17 = *(v15 + 88);
  v18 = *(v14 + *MEMORY[0x1E69E77B0]);
  v20 = a5;
  v21 = v18;
  v22 = a6;
  v23 = v17;
  result = type metadata accessor for PhotosItemsPageControl(0, &v20);
  *(a7 + result[15]) = a1;
  *(a7 + result[16]) = a3;
  *(a7 + result[17]) = a4;
  *(a7 + result[18]) = a2;
  return result;
}

uint64_t PhotosItemsPageControl.makeCoordinator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v13 = v2;
  v10 = *(v9 + 40);
  v14 = *(v9 + 24);
  v15 = v10;
  type metadata accessor for PhotosItemsPageControl.Coordinator(0, &v13);
  (*(v4 + 16))(v8, v1, v2);
  OUTLINED_FUNCTION_17_23();
  v11 = sub_1C113687C();

  return v11;
}

uint64_t sub_1C113687C()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_17_23();
  sub_1C11374D0(v1, v2, v3);
  return v0;
}

id PhotosItemsPageControl.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) init];
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  [v4 setCurrentPageIndicatorTintColor_];

  v7 = [v5 tertiaryLabelColor];
  [v4 setPageIndicatorTintColor_];

  [v4 setBackgroundStyle_];
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_19_1();
  sub_1C1264230();
  sub_1C1264210();
  [v4 addTarget:v9 action:sel_pageDidChange_ forControlEvents:4096];

  return v4;
}

void sub_1C1136A00(void *a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v78 = sub_1C1266790();
  v6 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v64 - v7;
  v67 = sub_1C0FDE8F8(255, &qword_1EDE7B5F0, 0x1E69DCAB8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v84 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v64 - v12;
  v87 = v5;
  v70 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v71 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v64 - v17;
  v79 = a2;
  v80 = v2;
  v19 = *(v2 + *(a2 + 64));
  if (v19)
  {

    v68 = [a1 numberOfPages];
    v66 = a1;
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = sub_1C1266B50();
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = v20 | 0x8000000000000000;
    }

    else
    {
      v25 = -1 << *(v19 + 32);
      v21 = v19 + 64;
      v26 = ~v25;
      v27 = -v25;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v23 = v28 & *(v19 + 64);
      v22 = v26;
      v24 = v19;
    }

    v29 = 0;
    v85 = (v70 + 32);
    v64[1] = v22;
    v30 = (v22 + 64) >> 6;
    v69 = v70 + 16;
    v83 = (v9 + 16);
    v72 = (v9 + 8);
    v73 = (v6 + 8);
    v65 = (v70 + 8);
    v81 = v21;
    v82 = v24;
    v74 = v30;
    v75 = v18;
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

LABEL_9:
    v31 = v23;
    v32 = v29;
    if (v23)
    {
LABEL_15:
      v86 = (v31 - 1) & v31;
      v34 = __clz(__rbit64(v31)) | (v32 << 6);
      v35 = v70;
      v36 = v71;
      v37 = *(v24 + 48) + *(v70 + 72) * v34;
      v38 = *(v70 + 16);
      v76 = v23;
      v39 = v87;
      v38(v71, v37, v87);
      v40 = *(*(v24 + 56) + 8 * v34);
      v41 = *(TupleTypeMetadata2 + 48);
      (*(v35 + 32))(v18, v36, v39);
      *&v18[v41] = v40;
      __swift_storeEnumTagSinglePayload(v18, 0, 1, TupleTypeMetadata2);
      v42 = v40;
      v33 = v32;
      goto LABEL_19;
    }

    v33 = v29;
    while (1)
    {
      v32 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        return;
      }

      if (v32 >= v30)
      {
        break;
      }

      v31 = *(v21 + 8 * v32);
      ++v33;
      if (v31)
      {
        v24 = v82;
        goto LABEL_15;
      }
    }

    __swift_storeEnumTagSinglePayload(v18, 1, 1, TupleTypeMetadata2);
    v86 = 0;
LABEL_19:
    while (__swift_getEnumTagSinglePayload(v18, 1, TupleTypeMetadata2) != 1)
    {
      v50 = *(TupleTypeMetadata2 + 48);
      v51 = *&v18[v50];
      v52 = *v85;
      v53 = v13;
      v54 = v13;
      v55 = v87;
      (*v85)(v53, v18, v87);
      *&v54[v50] = v51;
      v56 = v84;
      v57 = *v83;
      (*v83)(v84, v54, TupleTypeMetadata2);

      v58 = v77;
      v52(v77, v56, v55);
      __swift_storeEnumTagSinglePayload(v58, 0, 1, v55);
      sub_1C11384E4();
      v60 = v59;
      LOBYTE(v51) = v61;
      (*v73)(v58, v78);
      if (v51)
      {
        (*v72)(v54, TupleTypeMetadata2);
        v29 = v33;
        v23 = v86;
        v13 = v54;
      }

      else
      {
        if (v60 >= v68)
        {
          v13 = v54;
          (*v72)(v54, TupleTypeMetadata2);
        }

        else
        {
          v62 = v84;
          v13 = v54;
          v57(v84, v54, TupleTypeMetadata2);
          v63 = *&v62[*(TupleTypeMetadata2 + 48)];
          [v66 setIndicatorImage:v63 forPage:v60];

          (*v72)(v54, TupleTypeMetadata2);
          (*v65)(v62, v87);
        }

        v29 = v33;
        v23 = v86;
      }

      v21 = v81;
      v24 = v82;
      v30 = v74;
      v18 = v75;
      if ((v82 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_16:
      if (!sub_1C1266B60())
      {
        __swift_storeEnumTagSinglePayload(v18, 1, 1, TupleTypeMetadata2);
        break;
      }

      v44 = v43;
      v45 = v29;
      v46 = v71;
      v47 = v87;
      sub_1C1266D30();
      swift_unknownObjectRelease();
      v88 = v44;
      swift_dynamicCast();
      v48 = v89;
      v49 = *(TupleTypeMetadata2 + 48);
      (*v85)(v18, v46, v47);
      *&v18[v49] = v48;
      __swift_storeEnumTagSinglePayload(v18, 0, 1, TupleTypeMetadata2);
      v33 = v45;
      v86 = v23;
    }

    sub_1C0FA812C(v82);
  }
}

void PhotosItemsPageControl.updateUIView(_:context:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v24 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_19_1();
  sub_1C1264230();
  sub_1C1264210();
  (*(v12 + 16))(v16, v0, v10);
  sub_1C11373D4(v16);

  sub_1C1137488(v17);

  sub_1C11374B8(v18);
  OUTLINED_FUNCTION_19_16();
  v19 = sub_1C12662E0();
  if ([v4 numberOfPages] != v19)
  {
    [v4 setNumberOfPages_];
  }

  sub_1C1136730();
  sub_1C11384E4();
  v21 = v20;
  v23 = v22;
  (*(v6 + 8))(v9, v24);
  if ((v23 & 1) == 0 && v21 != [v4 currentPage])
  {
    [v4 setCurrentPage_];
  }

  sub_1C1136A00(v4, v2);

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1137340@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_1();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1C11373D4(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1C11374D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_1();
  (*(v6 + 32))(v3 + v7);
  *(v3 + *(*v3 + 136)) = a2;
  *(v3 + *(*v3 + 128)) = a3;
  return v3;
}

void sub_1C1137588()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v51 = *v1;
  sub_1C1265C10();
  OUTLINED_FUNCTION_0();
  v57 = v5;
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v55 = v7 - v6;
  v56 = sub_1C1265C30();
  OUTLINED_FUNCTION_0();
  v54 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v53 = v11 - v10;
  v59 = v51[13];
  v12 = v51[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v49 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v46 - v18;
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_30();
  v24 = v22 - v23;
  *&v26 = MEMORY[0x1EEE9AC00](v25).n128_u64[0];
  v28 = &v46 - v27;
  v50 = v3;
  v29 = [v3 currentPage];
  sub_1C1137340(v28);
  v30 = sub_1C12662E0();
  v31 = *(v20 + 8);
  v31(v28, v12);
  if (v29 < v30)
  {
    sub_1C1137340(v28);
    sub_1C1137340(v24);
    sub_1C12662D0();
    v31(v24, v12);
    v32 = v60;
    sub_1C12662B0();
    v33 = v49;
    v34 = *(v49 + 8);
    v46 = v49 + 8;
    v47 = v34;
    v35 = AssociatedTypeWitness;
    (v34)(v16);
    v31(v28, v12);
    v36 = [v50 interactionState] != 2;
    sub_1C0FDE8F8(0, &qword_1EDE83410, 0x1E69E9610);
    v37 = sub_1C12664C0();
    (*(v33 + 16))(v16, v32, v35);
    v38 = (*(v33 + 80) + 72) & ~*(v33 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v12;
    v40 = v51;
    *(v39 + 24) = v51[11];
    v41 = v59;
    *(v39 + 32) = v40[12];
    *(v39 + 40) = v41;
    *(v39 + 48) = v40[14];
    *(v39 + 56) = v36;
    *(v39 + 64) = v1;
    (*(v33 + 32))(v39 + v38, v16, v35);
    v61[4] = sub_1C113B16C;
    v61[5] = v39;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 1107296256;
    v61[2] = sub_1C0FD7FC4;
    v61[3] = &block_descriptor_10;
    v42 = _Block_copy(v61);

    v43 = v53;
    sub_1C1265C20();
    v61[0] = MEMORY[0x1E69E7CC0];
    sub_1C113B1F8(&qword_1EDE7B768, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
    sub_1C0FDB6D4(&qword_1EDE7B708, &unk_1EBE95B00, &qword_1C12A3280, MEMORY[0x1E69E6328]);
    v44 = v55;
    v45 = v58;
    sub_1C1266870();
    MEMORY[0x1C68EFE10](0, v43, v44, v42);
    _Block_release(v42);

    (*(v57 + 8))(v44, v45);
    (*(v54 + 8))(v43, v56);
    v47(v60, v35);
  }

  OUTLINED_FUNCTION_22_0();
}