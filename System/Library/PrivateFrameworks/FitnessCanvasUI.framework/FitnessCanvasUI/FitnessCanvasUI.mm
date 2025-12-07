void sub_1E6726850(void *a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_1E68B30E0();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E6726930(void *a1)
{
  sub_1E67269DC();
  if (v2 <= 0x3F)
  {
    v3 = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      type metadata accessor for CanvasGridAxis(319, v3, a1[4], v4);
      if (v6 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1E67269DC()
{
  if (!qword_1EE2EA450)
  {
    type metadata accessor for CGSize(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EA450);
    }
  }
}

void sub_1E6726A38(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t CanvasLayout.withIntersectionSpacing(_:)@<X0>(void *a1@<X0>, double a2@<D0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  MEMORY[0x1EEE9AC00](a1, a3);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  v12 = *(v4 + 8);
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);
  v15 = *(v4 + 32);
  v16 = *(v4 + 56);
  v22[0] = *(v4 + 40);
  v22[1] = v16;
  v17 = *(v4 + 88);
  v20 = *(v4 + 72);
  (*(v19 + 16))(v10, v4 + *(v18 + 72), v8);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v22, v20, v17, v10, a1[2], v8, a1[4], a1[5], a4, v11, v12, v13, v14, v15, a2);
}

uint64_t CanvasLayout.withSizeClass(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  MEMORY[0x1EEE9AC00](a1, a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = *(v3 + 56);
  v20[0] = *(v3 + 40);
  v20[1] = v14;
  v15 = *(v3 + 80);
  v16 = *(v3 + 88);
  v18 = *(v3 + 72);
  (*(v17 + 16))(v8);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v20, v18, v16, v8, a2[2], v6, a2[4], a2[5], a3, v9, v10, v11, v12, v13, v15);
}

uint64_t CanvasLayout.withDynamicTypeSize(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = a2[3];
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v15 = *(v3 + 56);
  v21[0] = *(v3 + 40);
  v21[1] = v15;
  v16 = *(v3 + 80);
  v17 = *(v3 + 88);
  (*(v19 + 16))(v9, v3 + *(v18 + 72), v7);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v21, v5, v17, v9, a2[2], v7, a2[4], a2[5], a3, v10, v11, v12, v13, v14, v16);
}

void sub_1E6726E98(uint64_t a1)
{
  sub_1E6727108();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeMetadata2();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1E6726F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for CanvasVerticalGridLayout(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for CanvasHorizontalGridLayout(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1E6727014(uint64_t a1)
{
  sub_1E672708C();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E672708C()
{
  if (!qword_1EE2EA478)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2EA478);
    }
  }
}

void sub_1E6727108()
{
  if (!qword_1EE2EA480)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2EA480);
    }
  }
}

uint64_t CanvasLayout.withContentMargins(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v15 = v14[1];
  v22[0] = *v14;
  v22[1] = v15;
  v16 = *(v3 + 80);
  v17 = *(v3 + 88);
  v20 = *(v3 + 72);
  (*(v19 + 16))(v8, v3 + *(v18 + 72), v6);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v22, v20, v17, v8, a2[2], v6, a2[4], a2[5], a3, v9, v10, v11, v12, v13, v16);
}

uint64_t CanvasLayout.withSectionDensityFactor(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2[3];
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v15 = *(v3 + 56);
  v21[0] = *(v3 + 40);
  v21[1] = v15;
  v16 = *(v3 + 80);
  v19 = *(v3 + 72);
  (*(v18 + 16))(v9, v3 + *(v17 + 72), v7);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(v21, v19, a1, v9, a2[2], v7, a2[4], a2[5], a3, v10, v11, v12, v13, v14, v16);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E6727468(uint64_t a1)
{
  v21 = 0;
  v25 = &type metadata for CanvasSectionFooter;
  v2 = *(a1 + 16);
  v3 = *(a1 + 64);
  v4 = *(a1 + 80);
  v5 = *(a1 + 144);
  v12 = v2;
  *&v13 = v3;
  *(&v13 + 1) = v4;
  *&v14 = v5;
  type metadata accessor for CanvasSectionHeader(255, &v12);
  result = sub_1E68B3750();
  if (v7 <= 0x3F)
  {
    v22 = 0;
    v26 = result;
    v27 = MEMORY[0x1E69E6158];
    v8 = *(a1 + 72);
    v9 = *(a1 + 152);
    v12 = v2;
    v13 = *(a1 + 24);
    v14 = *(a1 + 40);
    v15 = v8;
    v16 = v4;
    v17 = *(a1 + 88);
    v18 = *(a1 + 104);
    v19 = *(a1 + 120);
    v20 = v9;
    type metadata accessor for CanvasItemDescriptor(255, &v12);
    result = sub_1E68B33B0();
    if (v10 <= 0x3F)
    {
      v23 = 0;
      v28 = result;
      result = sub_1E68B3750();
      if (v11 <= 0x3F)
      {
        v24 = 0;
        v29 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E67275BC(uint64_t a1)
{
  result = sub_1E68B1820();
  if (v2 <= 0x3F)
  {
    result = sub_1E68B3750();
    if (v3 <= 0x3F)
    {
      result = sub_1E68B3750();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1E6727680(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v18 = 0;
    v23 = v2;
    v4 = *(a1 + 72);
    v5 = *(a1 + 120);
    v6 = *(a1 + 56);
    v15[0] = *(a1 + 16);
    v15[1] = v6;
    v16 = v4;
    v17 = v5;
    v7 = type metadata accessor for CanvasItemContent(319, v15);
    if (v8 <= 0x3F)
    {
      v19 = 0;
      v24 = v7;
      v9 = sub_1E68B3750();
      if (v10 <= 0x3F)
      {
        v20 = 0;
        v25 = v9;
        v11 = sub_1E68B3750();
        if (v12 <= 0x3F)
        {
          v21 = 0;
          v26 = v11;
          sub_1E67284A0(319);
          if (v14 <= 0x3F)
          {
            v22 = 0;
            v27 = v13;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E672778C(void *a1)
{
  v2 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
  sub_1E68B3750();
  result = swift_getTupleTypeMetadata();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for FullWidthItemDescriptor(319, v2, a1[6], v4);
    if (v6 <= 0x3F)
    {
      MEMORY[0x1EEE9AC00](result, v6);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      sub_1E68B3750();
      result = swift_getTupleTypeMetadata();
      if (v7 <= 0x3F)
      {
        MEMORY[0x1EEE9AC00](result, v7);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
        result = swift_getTupleTypeMetadata();
        if (v8 <= 0x3F)
        {
          MEMORY[0x1EEE9AC00](result, v8);
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
          result = swift_getTupleTypeMetadata();
          if (v9 <= 0x3F)
          {
            MEMORY[0x1EEE9AC00](result, v9);
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
            result = swift_getTupleTypeMetadata();
            if (v10 <= 0x3F)
            {
              MEMORY[0x1EEE9AC00](result, v10);
              __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
              result = swift_getTupleTypeMetadata();
              if (v11 <= 0x3F)
              {
                MEMORY[0x1EEE9AC00](result, v11);
                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
                result = swift_getTupleTypeMetadata();
                if (v12 <= 0x3F)
                {
                  MEMORY[0x1EEE9AC00](result, v12);
                  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
                  result = swift_getTupleTypeMetadata();
                  if (v13 <= 0x3F)
                  {
                    MEMORY[0x1EEE9AC00](result, v13);
                    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
                    result = swift_getTupleTypeMetadata();
                    if (v14 <= 0x3F)
                    {
                      MEMORY[0x1EEE9AC00](result, v14);
                      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
                      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E88, &qword_1E68B9CF0);
                      result = swift_getTupleTypeMetadata();
                      if (v15 <= 0x3F)
                      {
                        MEMORY[0x1EEE9AC00](result, v15);
                        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
                        result = swift_getTupleTypeMetadata();
                        if (v16 <= 0x3F)
                        {
                          MEMORY[0x1EEE9AC00](result, v16);
                          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
                          result = swift_getTupleTypeMetadata();
                          if (v17 <= 0x3F)
                          {
                            result = swift_checkMetadataState();
                            if (v18 <= 0x3F)
                            {
                              __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
                              result = swift_getTupleTypeMetadata3();
                              if (v19 <= 0x3F)
                              {
                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                return 0;
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

  return result;
}

void sub_1E67282B8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E6728344();
    if (v2 <= 0x3F)
    {
      sub_1E672838C(319, v2);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1E6728344()
{
  if (!qword_1EE2EDEC0)
  {
    v0 = sub_1E68B1820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EDEC0);
    }
  }
}

void sub_1E672838C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EE2EDE88)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2EDE88);
    }
  }
}

void sub_1E67284A0(uint64_t a1)
{
  if (!qword_1EE2EA4A0)
  {
    sub_1E67284FC();
    v1 = sub_1E68B3630();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2EA4A0);
    }
  }
}

unint64_t sub_1E67284FC()
{
  result = qword_1EE2EC998;
  if (!qword_1EE2EC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC998);
  }

  return result;
}

unint64_t sub_1E6728554()
{
  result = qword_1EE2EC990;
  if (!qword_1EE2EC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EC990);
  }

  return result;
}

uint64_t sub_1E67285A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 96) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t sub_1E6728760(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for ConditionalViewModifier.Storage(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E67287F0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E672889C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicBrickViewLayout(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicBrickViewLayout(uint64_t result, int a2, int a3)
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

uint64_t sub_1E672898C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for DataItemResolution(255, *(a3 + 16), *(a3 + 24), a4);
    v9 = sub_1E68B34C0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_1E6728A50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for DataItemResolution(255, *(a4 + 16), *(a4 + 24), a4);
    v7 = sub_1E68B34C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E6728B04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E6728B3C()
{
  v1 = sub_1E68B1950();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E6728C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for MonogramVerticalStackView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  (*(*(v5 - 8) + 8))(v7 + v6[9], v5);
  v8 = v7 + v6[10];
  if (*(v8 + 24))
  {
    sub_1E673F0D4(*v8, *(v8 + 8), *(v8 + 16));
  }

  v9 = v7 + v6[11];
  if (*(v9 + 24))
  {
    sub_1E673F0D4(*v9, *(v9 + 8), *(v9 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E6728D6C()
{

  return swift_deallocObject();
}

uint64_t sub_1E6728DA4(void *a1)
{
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF0, &unk_1E68B4720);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E00, &unk_1E68B4730);
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08, &qword_1E68B7610);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
  swift_getWitnessTable();
  sub_1E68B2C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E10, &unk_1E68B4740);
  sub_1E68B1E40();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED096E18, &qword_1ED096E10, &unk_1E68B4740, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1E673F08C(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6729100(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  type metadata accessor for ConditionalViewModifier(255, v5);
  swift_getWitnessTable();
  sub_1E68B22E0();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E67292A8(void *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = MEMORY[0x1E697E108];
  v3[2] = v1;
  v3[3] = MEMORY[0x1E697E100];
  type metadata accessor for ConditionalViewModifier(255, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1E672933C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096EB0, &qword_1E68B4958);
  sub_1E68B1E40();
  sub_1E68B1DE0();
  sub_1E673F530(&qword_1ED096EB8, &qword_1ED096EB0, &qword_1E68B4958, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1E6748944(&qword_1EE2EA840, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1E67294C4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *v18 = *(v0 + 16);
  v17 = v1;
  *&v18[8] = v1;
  *&v18[24] = v2;
  v16 = v3;
  v19 = v3;
  v4 = type metadata accessor for CanvasLayoutReader(0, v18);
  v5 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v7 = sub_1E68B1C90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v0 + v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E68B1DE0();
    (*(*(v11 - 8) + 8))(v0 + v5, v11);
  }

  else
  {
  }

  v12 = (v5 + v6 + v9) & ~v9;
  v13 = v10 + *(v4 + 68);

  *v18 = v17;
  *&v18[16] = v16;
  v14 = type metadata accessor for CanvasLayout(0, v18);
  (*(*(*(&v17 + 1) - 8) + 8))(v13 + *(v14 + 72));
  sub_1E68B2C00();

  __swift_destroy_boxed_opaque_existential_1((v10 + *(v4 + 72)));

  (*(v8 + 8))(v0 + v12, v7);
  return swift_deallocObject();
}

uint64_t sub_1E6729778(uint64_t a1)
{
  v1 = *(a1 + 48);
  v39 = *(a1 + 8);
  v41 = *(a1 + 64);
  v31 = *(a1 + 88);
  v33 = *(a1 + 32);
  v48 = *(a1 + 40);
  v49 = *(a1 + 96);
  v2 = *(a1 + 104);
  *(&v52 + 1) = v1;
  v53 = v1;
  *(&v54 + 1) = v2;
  v55 = v2;
  v50 = *(a1 + 16);
  *&v52 = *(a1 + 16);
  v3 = v52;
  v51 = *(a1 + 72);
  *&v54 = *(a1 + 72);
  v4 = v54;
  v46 = type metadata accessor for ActionCardView(255, &v52);
  WitnessTable = swift_getWitnessTable();
  *&v52 = v46;
  *(&v52 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  v5 = sub_1E68B1E40();
  v47 = sub_1E6761260(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v64 = v51;
  v65 = v47;
  v6 = swift_getWitnessTable();
  v62 = v6;
  v63 = MEMORY[0x1E697F568];
  v44 = v5;
  v43 = swift_getWitnessTable();
  *&v52 = v5;
  *(&v52 + 1) = v43;
  swift_getOpaqueTypeMetadata2();
  v38 = sub_1E68B1E40();
  v60 = v6;
  v61 = MEMORY[0x1E697E040];
  v37 = swift_getWitnessTable();
  *&v52 = v38;
  *(&v52 + 1) = v37;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  sub_1E68B2220();
  sub_1E68B2220();
  *&v52 = v50;
  *(&v52 + 1) = v1;
  v53 = v1;
  *&v54 = v48;
  *(&v54 + 1) = v39;
  v55 = v51;
  v56 = v2;
  v57 = v2;
  v58 = v49;
  v59 = v41;
  v42 = type metadata accessor for FullWidthStageView(255, &v52);
  v40 = swift_getWitnessTable();
  *&v52 = v42;
  *(&v52 + 1) = v40;
  swift_getOpaqueTypeMetadata2();
  v36 = type metadata accessor for InfoActionCardView(255, v1, v2, v7);
  v35 = swift_getWitnessTable();
  *&v52 = v36;
  *(&v52 + 1) = v35;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  v52 = v50;
  v53 = v33;
  v54 = v51;
  v55 = v31;
  v34 = type metadata accessor for LargeBrickView(255, &v52);
  v32 = swift_getWitnessTable();
  *&v52 = v34;
  *(&v52 + 1) = v32;
  swift_getOpaqueTypeMetadata2();
  v30 = type metadata accessor for DynamicBrickView(255, v3, v4, v8);
  v29 = swift_getWitnessTable();
  *&v52 = v30;
  *(&v52 + 1) = v29;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v28 = type metadata accessor for MonogramVerticalStackView(255, v3, v4, v9);
  v27 = swift_getWitnessTable();
  *&v52 = v28;
  *(&v52 + 1) = v27;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  v26 = type metadata accessor for StandardCardView(255, v3, v4, v10);
  v25 = swift_getWitnessTable();
  *&v52 = v26;
  *(&v52 + 1) = v25;
  swift_getOpaqueTypeMetadata2();
  *&v52 = v50;
  *(&v52 + 1) = v1;
  v53 = v51;
  *&v54 = v2;
  v11 = type metadata accessor for StandardHorizontalStackView(255, &v52);
  *&v51 = swift_getWitnessTable();
  *&v52 = v11;
  *(&v52 + 1) = v51;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v13 = type metadata accessor for StandardVerticalStackView(255, v3, v4, v12);
  *&v50 = swift_getWitnessTable();
  *&v52 = v13;
  *(&v52 + 1) = v50;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView(255, v3, v4, v14);
  sub_1E68B2220();
  sub_1E68B2220();
  v16 = type metadata accessor for TallCardView(255, v3, v4, v15);
  v24 = swift_getWitnessTable();
  *&v52 = v16;
  *(&v52 + 1) = v24;
  swift_getOpaqueTypeMetadata2();
  v18 = type metadata accessor for VerticalStackCardView(255, v3, v4, v17);
  v23 = swift_getWitnessTable();
  *&v52 = v18;
  *(&v52 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v20 = type metadata accessor for WideBrickView(255, v3, v4, v19);
  v22 = swift_getWitnessTable();
  *&v52 = v20;
  *(&v52 + 1) = v22;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  *&v52 = v46;
  *(&v52 + 1) = WitnessTable;
  swift_getOpaqueTypeConformance2();
  *&v52 = v44;
  *(&v52 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  *&v52 = v38;
  *(&v52 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v52 = v42;
  *(&v52 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  *&v52 = v36;
  *(&v52 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v52 = v34;
  *(&v52 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  *&v52 = v30;
  *(&v52 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v52 = v28;
  *(&v52 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v52 = v26;
  *(&v52 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  *&v52 = v11;
  *(&v52 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v52 = v13;
  *(&v52 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v52 = v16;
  *(&v52 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  *&v52 = v18;
  *(&v52 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v52 = v20;
  *(&v52 + 1) = v22;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E672A498()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v13[0] = v2;
  v13[1] = v1;
  v3 = *(v0 + 48);
  v12 = *(v0 + 32);
  v14 = v12;
  v15 = v3;
  v4 = type metadata accessor for LargeBrickView(0, v13);
  v5 = (*(*(v4 - 1) + 80) + 64) & ~*(*(v4 - 1) + 80);
  v6 = v0 + v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040, &qword_1E68B4CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E68B1E00();
    (*(*(v7 - 8) + 8))(v0 + v5, v7);
  }

  else
  {
  }

  (*(*(v2 - 8) + 8))(v6 + v4[17], v2);
  (*(*(v1 - 8) + 8))(v6 + v4[18], v1);
  (*(*(v12 - 8) + 8))(v6 + v4[19]);
  v8 = v6 + v4[20];
  if (*(v8 + 24))
  {
    sub_1E673F0D4(*v8, *(v8 + 8), *(v8 + 16));
  }

  v9 = v6 + v4[22];
  if (*(v9 + 24))
  {
    sub_1E673F0D4(*v9, *(v9 + 8), *(v9 + 16));
  }

  v10 = v6 + v4[23];
  if (*(v10 + 24))
  {
    sub_1E673F0D4(*v10, *(v10 + 8), *(v10 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E672A6E4(void *a1)
{
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8, &qword_1E68B5270);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0, &qword_1E68B5278);
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8, &qword_1E68B5280);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E6768CBC(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E672AB6C()
{

  return swift_deallocObject();
}

uint64_t sub_1E672AC0C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1E672AD64(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097668, &qword_1E68B6C08);
  sub_1E68B1E40();
  sub_1E6776900();
  return swift_getWitnessTable();
}

uint64_t sub_1E672AE28()
{

  return swift_deallocObject();
}

uint64_t sub_1E672AE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097848, &qword_1E68B75B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E672AF2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097848, &qword_1E68B75B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E672B008()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097880, &qword_1E68B75F0);
  sub_1E68B1EB0();
  sub_1E673F530(&qword_1EE2EA540, &qword_1ED097880, &qword_1E68B75F0, MEMORY[0x1E697D680]);
  sub_1E677C880(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E672B10C()
{
  v1 = *(type metadata accessor for StandardActionLockupConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E68B1DE0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1E672B240()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097900, &qword_1E68B77C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978F8, &qword_1E68B77C0);
  sub_1E68B1EB0();
  sub_1E677D71C();
  sub_1E677D800();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E672B364()
{

  return swift_deallocObject();
}

uint64_t sub_1E672B39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097848, &qword_1E68B75B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1E672B468(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097848, &qword_1E68B75B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E672B534@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E67820BC();
}

__n128 sub_1E672B5A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E672B5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = (type metadata accessor for ResolvedDataItemInterestRegistration(0, v5, v6, a4) - 8);
  v8 = (*(*v7 + 80) + 48) & ~*(*v7 + 80);
  swift_unknownObjectRelease();

  v9 = v7[11];
  type metadata accessor for DataItemResolution(255, v5, v6, v10);
  v11 = sub_1E68B34D0();
  (*(*(v11 - 8) + 8))(v4 + v8 + v9, v11);

  return swift_deallocObject();
}

uint64_t sub_1E672B6E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E672B72C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED097A30, &qword_1E68B7D30);
  sub_1E68B1E40();
  sub_1E6782B50();
  return swift_getWitnessTable();
}

uint64_t sub_1E672B7AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E672B7E4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E672B82C()
{

  return swift_deallocObject();
}

uint64_t sub_1E672B880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E68B1DE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E672B93C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E68B1DE0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E672B9F4()
{

  return swift_deallocObject();
}

uint64_t sub_1E672BA34(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DataItemDescriptor(255, *a1, a1[2], a4);
  swift_getTupleTypeMetadata2();
  sub_1E68B33B0();
  swift_getAssociatedTypeWitness();
  sub_1E68B1D10();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1E68B2D40();
  sub_1E678F6DC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E672BBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for DataItemDescriptor(0, v5, *(v4 + 32), a4) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 8))(v4 + v7, AssociatedTypeWitness);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097A18, &qword_1E68B7C10);
    swift_getTupleTypeMetadata2();
  }

  else
  {
    (*(*(v5 - 8) + 8))(v4 + v7, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1E672BD5C()
{

  return swift_deallocObject();
}

uint64_t sub_1E672BDA0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097CC0, &unk_1E68B8900);
  sub_1E68B1E40();
  sub_1E678FAF8();
  return swift_getWitnessTable();
}

uint64_t sub_1E672BE34()
{
  v1 = *(type metadata accessor for StandardLockupConfiguration(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1E68B1DE0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1E672BF78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097E40, &qword_1E68B9270);
  sub_1E68B1EB0();
  sub_1E67951E4();
  sub_1E677D800();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E672C004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E68B1DE0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E672C0C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E68B1DE0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E672C17C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097EA8, &qword_1E68B93D8);
  sub_1E673F530(&qword_1ED097EE0, &qword_1ED097EA8, &qword_1E68B93D8, MEMORY[0x1E69817F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E672C214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097F38, &qword_1E68B94B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E672C2E8(unsigned __int8 a1)
{
  v1 = 0x6B726F77747261;
  v2 = 0x5379616C70736964;
  v3 = 0x74756F79616CLL;
  if (a1 != 3)
  {
    v3 = 0x656C746974;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6E6F6974706163;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E672C384(unsigned __int8 a1)
{
  v1 = 0x74756F79616CLL;
  v2 = 0x656C746974;
  v3 = 0x656C746974627573;
  if (a1 != 3)
  {
    v3 = 0x6E6F6974706163;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6B726F77747261;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E672C554(uint64_t *a1)
{
  v1 = a1[3];
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = v1;
  type metadata accessor for CanvasContextMenu(255, &v3);
  swift_getWitnessTable();
  sub_1E68B22E0();
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E672C670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for TallCardView(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E68B1DE0();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v8 + *(v6 + 44), v5);
  v10 = v8 + *(v6 + 48);
  if (*(v10 + 24))
  {
    sub_1E673F0D4(*v10, *(v10 + 8), *(v10 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E672C824()
{

  return swift_deallocObject();
}

uint64_t sub_1E672C864(void *a1)
{
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  sub_1E68B1E10();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  sub_1E67C5B30(&qword_1EE2EA838, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098168, &qword_1E68BB628);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098170, &qword_1E68BB630);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098178, &unk_1E68BB638);
  sub_1E68B1E40();
  sub_1E673F530(&qword_1EE2EA650, &qword_1ED098178, &unk_1E68BB638, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2C30();
  swift_getWitnessTable();
  sub_1E67C5938();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  sub_1E67C5B30(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  return swift_getWitnessTable();
}

uint64_t sub_1E672CD24()
{

  return swift_deallocObject();
}

uint64_t sub_1E672CD5C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v60 = *(a1 + 64);
  v3 = *(a1 + 96);
  v4 = *(a1 + 136);
  v41 = *(a1 + 160);
  v43 = *(a1 + 40);
  v56 = *(a1 + 168);
  v61 = *(a1 + 176);
  v5 = *(a1 + 192);
  v49 = *(a1 + 208);
  v51 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  *&v65 = v2;
  *(&v65 + 1) = v3;
  v66 = v4;
  *&v67 = v5;
  type metadata accessor for CanvasSectionHeaderView(255, &v65);
  sub_1E68B2390();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  v59 = sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(&v65 + 1) = v2;
  v66 = v2;
  *(&v67 + 1) = v4;
  v68 = v4;
  v62 = *(a1 + 24);
  *&v65 = *(a1 + 24);
  v6 = v65;
  v63 = *(a1 + 144);
  *&v67 = *(a1 + 144);
  v7 = v67;
  v55 = type metadata accessor for ActionCardView(255, &v65);
  WitnessTable = swift_getWitnessTable();
  *&v65 = v55;
  *(&v65 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  v8 = sub_1E68B1E40();
  v57 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v77 = v63;
  v78 = v57;
  v9 = swift_getWitnessTable();
  v75 = v9;
  v76 = MEMORY[0x1E697F568];
  v53 = swift_getWitnessTable();
  *&v65 = v8;
  *(&v65 + 1) = v53;
  swift_getOpaqueTypeMetadata2();
  v48 = sub_1E68B1E40();
  v73 = v9;
  v74 = MEMORY[0x1E697E040];
  v47 = swift_getWitnessTable();
  *&v65 = v48;
  *(&v65 + 1) = v47;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  sub_1E68B2220();
  sub_1E68B2220();
  *&v65 = v62;
  *(&v65 + 1) = v2;
  v66 = v2;
  *&v67 = v60;
  *(&v67 + 1) = v51;
  v68 = v63;
  v69 = v4;
  v70 = v4;
  v71 = v61;
  v72 = v49;
  v52 = type metadata accessor for FullWidthStageView(255, &v65);
  v50 = swift_getWitnessTable();
  *&v65 = v52;
  *(&v65 + 1) = v50;
  swift_getOpaqueTypeMetadata2();
  v46 = type metadata accessor for InfoActionCardView(255, v2, v4, v10);
  v45 = swift_getWitnessTable();
  *&v65 = v46;
  *(&v65 + 1) = v45;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  v65 = v62;
  v67 = v63;
  v66 = v43;
  v68 = v41;
  v44 = type metadata accessor for LargeBrickView(255, &v65);
  v42 = swift_getWitnessTable();
  *&v65 = v44;
  *(&v65 + 1) = v42;
  swift_getOpaqueTypeMetadata2();
  v40 = type metadata accessor for DynamicBrickView(255, v6, v7, v11);
  v39 = swift_getWitnessTable();
  *&v65 = v40;
  *(&v65 + 1) = v39;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v38 = type metadata accessor for MonogramVerticalStackView(255, v6, v7, v12);
  v37 = swift_getWitnessTable();
  *&v65 = v38;
  *(&v65 + 1) = v37;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  v36 = type metadata accessor for StandardCardView(255, v6, v7, v13);
  v35 = swift_getWitnessTable();
  *&v65 = v36;
  *(&v65 + 1) = v35;
  swift_getOpaqueTypeMetadata2();
  *&v65 = v62;
  *(&v65 + 1) = v2;
  v66 = v63;
  *&v67 = v4;
  *&v62 = type metadata accessor for StandardHorizontalStackView(255, &v65);
  v34 = swift_getWitnessTable();
  *&v65 = v62;
  *(&v65 + 1) = v34;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v33 = type metadata accessor for StandardVerticalStackView(255, v6, v7, v14);
  v32 = swift_getWitnessTable();
  *&v65 = v33;
  *(&v65 + 1) = v32;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView(255, v6, v7, v15);
  sub_1E68B2220();
  sub_1E68B2220();
  v17 = type metadata accessor for TallCardView(255, v6, v7, v16);
  v31 = swift_getWitnessTable();
  *&v65 = v17;
  *(&v65 + 1) = v31;
  swift_getOpaqueTypeMetadata2();
  v19 = type metadata accessor for VerticalStackCardView(255, v6, v7, v18);
  v30 = swift_getWitnessTable();
  *&v65 = v19;
  *(&v65 + 1) = v30;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v21 = type metadata accessor for WideBrickView(255, v6, v7, v20);
  v29 = swift_getWitnessTable();
  *&v65 = v21;
  *(&v65 + 1) = v29;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B1E40();
  sub_1E68B1E40();
  v64 = *(a1 + 48);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v65 = v64;
  v66 = AssociatedConformanceWitness;
  *&v67 = v56;
  type metadata accessor for CanvasContextMenu(255, &v65);
  v23 = sub_1E68B1E40();
  *&v65 = v55;
  *(&v65 + 1) = WitnessTable;
  swift_getOpaqueTypeConformance2();
  *&v65 = v8;
  *(&v65 + 1) = v53;
  swift_getOpaqueTypeConformance2();
  *&v65 = v48;
  *(&v65 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v65 = v52;
  *(&v65 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  *&v65 = v46;
  *(&v65 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v65 = v44;
  *(&v65 + 1) = v42;
  swift_getOpaqueTypeConformance2();
  *&v65 = v40;
  *(&v65 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v65 = v38;
  *(&v65 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v65 = v36;
  *(&v65 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  *&v65 = v62;
  *(&v65 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v65 = v33;
  *(&v65 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v65 = v17;
  *(&v65 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  *&v65 = v19;
  *(&v65 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v65 = v21;
  *(&v65 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  *&v65 = v23;
  *(&v65 + 1) = v24;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v25 = sub_1E68B2220();
  v26 = swift_getWitnessTable();
  v27 = swift_getAssociatedConformanceWitness();
  *&v65 = v59;
  *(&v65 + 1) = AssociatedTypeWitness;
  v66 = v25;
  *&v67 = v26;
  *(&v67 + 1) = v27;
  sub_1E68B2D40();
  *&v65 = v23;
  *(&v65 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2EF0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200, &qword_1E68BB7D8);
  sub_1E68B2D80();
  sub_1E673F2EC();
  swift_getWitnessTable();
  sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E67D2CA8();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  return swift_getWitnessTable();
}

uint64_t sub_1E672DED0()
{

  return swift_deallocObject();
}

uint64_t sub_1E672DF08()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 192);
  v4 = *(v0 + 232);
  v5 = *(v0 + 32);
  v35 = *(v0 + 16);
  v34 = v35;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v36 = v5;
  v37 = v6;
  v8 = *(v0 + 80);
  v38 = v7;
  v39 = v8;
  v40 = v1;
  v41 = *(v0 + 104);
  v33 = v41;
  v42 = v2;
  v32 = *(v0 + 144);
  v28 = *(v0 + 128);
  v43 = v28;
  v44 = v32;
  v9 = *(v0 + 176);
  v45 = *(v0 + 160);
  v46 = v9;
  v48 = *(v0 + 200);
  v27 = v48;
  v49 = *(v0 + 216);
  v47 = v3;
  v50 = v4;
  v10 = type metadata accessor for VerticalGridView(0, &v35);
  v11 = *(*(v10 - 1) + 80);
  v30 = *(*(v10 - 1) + 64);
  v12 = v32;
  v13 = *(v32 - 8);
  v29 = *(v13 + 80);
  v31 = (v11 + 240) & ~v11;
  v14 = v0 + v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = vzip1q_s64(v34, v33);
  *&v36 = AssociatedConformanceWitness;
  *(&v36 + 1) = v27;
  v16 = type metadata accessor for CanvasSectionHeader(0, &v35);
  if (!(*(*(v16 - 8) + 48))(v0 + v31, 1, v16))
  {
    v17 = sub_1E68B1820();
    (*(*(v17 - 8) + 8))(v0 + ((v11 + 240) & ~v11), v17);
    v18 = *(v16 + 52);
    v19 = *(v33.i64[0] - 8);
    if (!(*(v19 + 48))(v14 + v18, 1, v33.i64[0]))
    {
      (*(v19 + 8))(v14 + v18, v33.i64[0]);
    }

    v20 = *(v16 + 56);
    v21 = *(v34.i64[0] - 8);
    v12 = v32;
    if (!(*(v21 + 48))(v14 + v20, 1, v34.i64[0]))
    {
      (*(v21 + 8))(v14 + v20, v34.i64[0]);
    }
  }

  v22 = v10[63];
  v23 = *(v2 - 8);
  if (!(*(v23 + 48))(v14 + v22, 1, v2))
  {
    (*(v23 + 8))(v14 + v22, v2);
  }

  (*(*(v28 - 8) + 8))(v14 + v10[67]);

  if (*(v14 + v10[75]))
  {
  }

  if (*(v14 + v10[76]))
  {
  }

  if (*(v14 + v10[77]))
  {
  }

  v24 = v10[78];
  v25 = sub_1E68B1950();
  (*(*(v25 - 8) + 8))(v14 + v24, v25);
  (*(v13 + 8))(v0 + ((v31 + v30 + v29) & ~v29), v12);
  return swift_deallocObject();
}

uint64_t sub_1E672E440(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E672E480(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v13 = *a1;
  v1 = v13;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  type metadata accessor for HGrid.Row(255, &v13);
  v5 = sub_1E68B33B0();
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  type metadata accessor for HGrid.RowItem(255, &v13);
  v6 = sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = v6;
  v14 = AssociatedTypeWitness;
  v15 = v2;
  v16 = WitnessTable;
  v17 = AssociatedConformanceWitness;
  sub_1E68B2D40();
  swift_getWitnessTable();
  v10 = sub_1E68B2D60();
  v11 = swift_getWitnessTable();
  v13 = v5;
  v14 = MEMORY[0x1E69E6530];
  v15 = v10;
  v16 = v11;
  v17 = MEMORY[0x1E69E6540];
  sub_1E68B2D40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2640();
  return swift_getWitnessTable();
}

__n128 sub_1E672E6AC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1E672E700(uint64_t a1)
{
  v2 = *(a1 + 8);
  v81 = *(a1 + 96);
  v3 = *(a1 + 120);
  v58 = *(a1 + 144);
  v60 = *(a1 + 40);
  v77 = *(a1 + 56);
  v79 = *(a1 + 152);
  v75 = *(a1 + 160);
  v76 = *(a1 + 80);
  v80 = *(a1 + 176);
  swift_getTupleTypeMetadata2();
  v74 = sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(&v84 + 1) = v2;
  v85 = v2;
  *(&v86 + 1) = v3;
  v87 = v3;
  v82 = *(a1 + 24);
  *&v84 = *(a1 + 24);
  v4 = v84;
  v83 = *(a1 + 128);
  *&v86 = *(a1 + 128);
  v5 = v86;
  v71 = type metadata accessor for ActionCardView(255, &v84);
  WitnessTable = swift_getWitnessTable();
  *&v84 = v71;
  *(&v84 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  v6 = sub_1E68B1E40();
  v72 = sub_1E67E2D90(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v96 = v83;
  v97 = v72;
  v7 = swift_getWitnessTable();
  v94 = v7;
  v95 = MEMORY[0x1E697F568];
  v69 = v6;
  v68 = swift_getWitnessTable();
  *&v84 = v6;
  *(&v84 + 1) = v68;
  swift_getOpaqueTypeMetadata2();
  v65 = sub_1E68B1E40();
  v92 = v7;
  v93 = MEMORY[0x1E697E040];
  v64 = swift_getWitnessTable();
  *&v84 = v65;
  *(&v84 + 1) = v64;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  sub_1E68B2220();
  sub_1E68B2220();
  *&v84 = v82;
  *(&v84 + 1) = v2;
  v85 = v2;
  *&v86 = v77;
  *(&v86 + 1) = v81;
  v87 = v83;
  v88 = v3;
  v89 = v3;
  v90 = v79;
  v91 = v80;
  v67 = type metadata accessor for FullWidthStageView(255, &v84);
  v66 = swift_getWitnessTable();
  *&v84 = v67;
  *(&v84 + 1) = v66;
  swift_getOpaqueTypeMetadata2();
  v63 = type metadata accessor for InfoActionCardView(255, v2, v3, v8);
  v62 = swift_getWitnessTable();
  *&v84 = v63;
  *(&v84 + 1) = v62;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  v84 = v82;
  v86 = v83;
  v85 = v60;
  v87 = v58;
  v61 = type metadata accessor for LargeBrickView(255, &v84);
  v59 = swift_getWitnessTable();
  *&v84 = v61;
  *(&v84 + 1) = v59;
  swift_getOpaqueTypeMetadata2();
  v57 = type metadata accessor for DynamicBrickView(255, v4, v5, v9);
  v56 = swift_getWitnessTable();
  *&v84 = v57;
  *(&v84 + 1) = v56;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v55 = type metadata accessor for MonogramVerticalStackView(255, v4, v5, v10);
  v54 = swift_getWitnessTable();
  *&v84 = v55;
  *(&v84 + 1) = v54;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  v53 = type metadata accessor for StandardCardView(255, v4, v5, v11);
  v52 = swift_getWitnessTable();
  *&v84 = v53;
  *(&v84 + 1) = v52;
  swift_getOpaqueTypeMetadata2();
  *&v84 = v82;
  *(&v84 + 1) = v2;
  v85 = v83;
  *&v86 = v3;
  *&v83 = type metadata accessor for StandardHorizontalStackView(255, &v84);
  *&v82 = swift_getWitnessTable();
  *&v84 = v83;
  *(&v84 + 1) = v82;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v13 = type metadata accessor for StandardVerticalStackView(255, v4, v5, v12);
  v51 = swift_getWitnessTable();
  *&v84 = v13;
  *(&v84 + 1) = v51;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView(255, v4, v5, v14);
  sub_1E68B2220();
  sub_1E68B2220();
  v16 = type metadata accessor for TallCardView(255, v4, v5, v15);
  v50 = swift_getWitnessTable();
  *&v84 = v16;
  *(&v84 + 1) = v50;
  swift_getOpaqueTypeMetadata2();
  v18 = type metadata accessor for VerticalStackCardView(255, v4, v5, v17);
  v49 = swift_getWitnessTable();
  *&v84 = v18;
  *(&v84 + 1) = v49;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v20 = type metadata accessor for WideBrickView(255, v4, v5, v19);
  v48 = swift_getWitnessTable();
  *&v84 = v20;
  *(&v84 + 1) = v48;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B1E40();
  v78 = sub_1E68B1E40();
  *&v84 = v71;
  *(&v84 + 1) = WitnessTable;
  swift_getOpaqueTypeConformance2();
  *&v84 = v69;
  *(&v84 + 1) = v68;
  swift_getOpaqueTypeConformance2();
  *&v84 = v65;
  *(&v84 + 1) = v64;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v84 = v67;
  *(&v84 + 1) = v66;
  swift_getOpaqueTypeConformance2();
  *&v84 = v63;
  *(&v84 + 1) = v62;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v84 = v61;
  *(&v84 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  *&v84 = v57;
  *(&v84 + 1) = v56;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v84 = v55;
  *(&v84 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v84 = v53;
  *(&v84 + 1) = v52;
  swift_getOpaqueTypeConformance2();
  *&v84 = v83;
  *(&v84 + 1) = v82;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v84 = v13;
  *(&v84 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v84 = v16;
  *(&v84 + 1) = v50;
  swift_getOpaqueTypeConformance2();
  *&v84 = v18;
  *(&v84 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v84 = v20;
  *(&v84 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  *&v84 = v78;
  *(&v84 + 1) = v21;
  swift_getOpaqueTypeMetadata2();
  v22 = sub_1E68B1E40();
  *&v84 = v78;
  *(&v84 + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v23 = swift_getWitnessTable();
  *&v84 = v22;
  *(&v84 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v24 = sub_1E68B1E40();
  *&v84 = v22;
  *(&v84 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  *&v84 = v24;
  *(&v84 + 1) = v25;
  swift_getOpaqueTypeMetadata2();
  v26 = sub_1E68B2220();
  v27 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v84 = v74;
  *(&v84 + 1) = AssociatedTypeWitness;
  v85 = v26;
  *&v86 = v27;
  *(&v86 + 1) = AssociatedConformanceWitness;
  sub_1E68B2D40();
  *&v84 = v24;
  *(&v84 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getWitnessTable();
  sub_1E68B1B80();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8, &unk_1E68C68A0);
  sub_1E68B1E40();
  v29 = sub_1E68B1E40();
  v30 = sub_1E68B2420();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  *&v84 = v29;
  *(&v84 + 1) = v30;
  v32 = MEMORY[0x1E697CA40];
  v85 = v31;
  *&v86 = MEMORY[0x1E697CA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v84 = v29;
  *(&v84 + 1) = v30;
  v85 = v31;
  *&v86 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v84 = OpaqueTypeMetadata2;
  v35 = MEMORY[0x1E69E6530];
  *(&v84 + 1) = MEMORY[0x1E69E6530];
  v36 = MEMORY[0x1E69E6550];
  v85 = OpaqueTypeConformance2;
  *&v86 = MEMORY[0x1E69E6550];
  v37 = swift_getOpaqueTypeMetadata2();
  *&v84 = v76;
  *(&v84 + 1) = v81;
  v85 = v75;
  *&v86 = v80;
  v38 = type metadata accessor for CanvasLayout(255, &v84);
  *&v84 = OpaqueTypeMetadata2;
  *(&v84 + 1) = v35;
  v85 = OpaqueTypeConformance2;
  *&v86 = v36;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = swift_getWitnessTable();
  *&v84 = v37;
  *(&v84 + 1) = v38;
  v85 = v39;
  *&v86 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  *&v84 = v37;
  *(&v84 + 1) = v38;
  v85 = v39;
  *&v86 = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_1E67E15BC();
  v44 = MEMORY[0x1E69E7DE0];
  *&v84 = v41;
  *(&v84 + 1) = MEMORY[0x1E69E7DE0];
  v85 = v42;
  *&v86 = v43;
  v45 = swift_getOpaqueTypeMetadata2();
  *&v84 = v41;
  *(&v84 + 1) = v44;
  v85 = v42;
  *&v86 = v43;
  v46 = swift_getOpaqueTypeConformance2();
  *&v84 = v45;
  *(&v84 + 1) = v46;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983C0, &qword_1E68BBA50);
  sub_1E68B1E40();
  *&v84 = v45;
  *(&v84 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  sub_1E673F530(&qword_1EE2EA658, &qword_1ED0983C0, &qword_1E68BBA50, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  sub_1E68B1F20();
  return swift_getWitnessTable();
}

uint64_t sub_1E672FA7C()
{

  return swift_deallocObject();
}

uint64_t sub_1E672FAB4()
{

  return swift_deallocObject();
}

uint64_t sub_1E672FB54()
{

  return swift_deallocObject();
}

uint64_t sub_1E672FB8C(void *a1)
{
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E48, &qword_1E68BB6E0);
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098400, &qword_1E68C5250);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098408, &qword_1E68BBD60);
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E67EA304();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED098418, &qword_1ED098400, &qword_1E68C5250, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED098420, &qword_1ED098408, &qword_1E68BBD60, MEMORY[0x1E6980620]);
  swift_getWitnessTable();
  sub_1E68B21F0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098428, &qword_1E68BBD68);
  sub_1E68B1DA0();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1B80();
  swift_getWitnessTable();
  sub_1E67612A8();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098430, &qword_1E68BBD70);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098438, &qword_1E68BBD78);
  sub_1E673F530(&qword_1ED098440, &qword_1ED098438, &qword_1E68BBD78, MEMORY[0x1E697BEF0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1E60();
  sub_1E67EA358();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  return swift_getWitnessTable();
}

uint64_t sub_1E6730278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for VerticalStackCardView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  (*(*(v5 - 8) + 8))(v7 + v6[9], v5);
  v8 = v7 + v6[10];
  if (*(v8 + 24))
  {
    sub_1E673F0D4(*v8, *(v8 + 8), *(v8 + 16));
  }

  v9 = v7 + v6[11];
  if (*(v9 + 24))
  {
    sub_1E673F0D4(*v9, *(v9 + 8), *(v9 + 16));
  }

  v10 = v7 + v6[12];
  if (*(v10 + 24))
  {
    sub_1E673F0D4(*v10, *(v10 + 8), *(v10 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E67303E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E6730420(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098518, &qword_1E68BC4A8);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098520, &qword_1E68BC4B0);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098528, &unk_1E68BC4B8);
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED098530, &qword_1ED098528, &unk_1E68BC4B8, MEMORY[0x1E697FD58]);
  swift_getWitnessTable();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E67F53A4(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  return swift_getWitnessTable();
}

uint64_t sub_1E6730704(void *a1)
{
  sub_1E68B1E40();
  sub_1E67979F0();
  return swift_getWitnessTable();
}

uint64_t sub_1E673081C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for DataItemResolution(255, *(a3 + 16), *(a3 + 24), a4);
    v9 = sub_1E68B34D0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

void *sub_1E67308E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for DataItemResolution(255, *(a4 + 16), *(a4 + 24), a4);
    v7 = sub_1E68B34D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E6730998@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1ED098948;
  *a1 = *aSymbol_2;
  a1[1] = v2;
}

uint64_t sub_1E6730A24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E68B20A0();
  *a1 = result;
  return result;
}

uint64_t sub_1E6730A7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E68B2040();
  *a1 = result;
  return result;
}

uint64_t sub_1E6730AD4()
{

  return swift_deallocObject();
}

uint64_t sub_1E6730B1C(void *a1)
{
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E67979F0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098AA0, &unk_1E68BE338);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  sub_1E68B2C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08, &qword_1E68B7610);
  sub_1E68B1E40();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
  swift_getWitnessTable();
  sub_1E68050F0(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098A98, &qword_1E68BE330);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  return swift_getWitnessTable();
}

uint64_t sub_1E6730FFC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098CA8, &unk_1E68BF090);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E67312C8()
{

  return swift_deallocObject();
}

uint64_t sub_1E6731350()
{

  return swift_deallocObject();
}

uint64_t sub_1E6731388(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 96);
  v4 = *(a1 + 136);
  v53 = *(a1 + 160);
  v55 = *(a1 + 40);
  v72 = *(a1 + 168);
  v73 = *(a1 + 64);
  v75 = *(a1 + 176);
  v5 = *(a1 + 192);
  v61 = *(a1 + 208);
  v63 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  *&v79 = v2;
  *(&v79 + 1) = v3;
  v80 = v4;
  *&v81 = v5;
  type metadata accessor for CanvasSectionHeaderView(255, &v79);
  sub_1E68B2390();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  v71 = sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(&v79 + 1) = v2;
  v80 = v2;
  *(&v81 + 1) = v4;
  v82 = v4;
  v76 = *(a1 + 24);
  *&v79 = *(a1 + 24);
  v6 = v79;
  v77 = *(a1 + 144);
  *&v81 = *(a1 + 144);
  v7 = v81;
  v68 = type metadata accessor for ActionCardView(255, &v79);
  WitnessTable = swift_getWitnessTable();
  *&v79 = v68;
  *(&v79 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  v8 = sub_1E68B1E40();
  v69 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v91 = v77;
  v92 = v69;
  v9 = swift_getWitnessTable();
  v89 = v9;
  v90 = MEMORY[0x1E697F568];
  v66 = v8;
  v65 = swift_getWitnessTable();
  *&v79 = v8;
  *(&v79 + 1) = v65;
  swift_getOpaqueTypeMetadata2();
  v60 = sub_1E68B1E40();
  v87 = v9;
  v88 = MEMORY[0x1E697E040];
  v59 = swift_getWitnessTable();
  *&v79 = v60;
  *(&v79 + 1) = v59;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  sub_1E68B2220();
  sub_1E68B2220();
  *&v79 = v76;
  *(&v79 + 1) = v2;
  v80 = v2;
  *&v81 = v73;
  *(&v81 + 1) = v63;
  v82 = v77;
  v83 = v4;
  v84 = v4;
  v85 = v75;
  v86 = v61;
  v64 = type metadata accessor for FullWidthStageView(255, &v79);
  v62 = swift_getWitnessTable();
  *&v79 = v64;
  *(&v79 + 1) = v62;
  swift_getOpaqueTypeMetadata2();
  v58 = type metadata accessor for InfoActionCardView(255, v2, v4, v10);
  v57 = swift_getWitnessTable();
  *&v79 = v58;
  *(&v79 + 1) = v57;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  v79 = v76;
  v81 = v77;
  v80 = v55;
  v82 = v53;
  v56 = type metadata accessor for LargeBrickView(255, &v79);
  v54 = swift_getWitnessTable();
  *&v79 = v56;
  *(&v79 + 1) = v54;
  swift_getOpaqueTypeMetadata2();
  v52 = type metadata accessor for DynamicBrickView(255, v6, v7, v11);
  v51 = swift_getWitnessTable();
  *&v79 = v52;
  *(&v79 + 1) = v51;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v50 = type metadata accessor for MonogramVerticalStackView(255, v6, v7, v12);
  v49 = swift_getWitnessTable();
  *&v79 = v50;
  *(&v79 + 1) = v49;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  v48 = type metadata accessor for StandardCardView(255, v6, v7, v13);
  v47 = swift_getWitnessTable();
  *&v79 = v48;
  *(&v79 + 1) = v47;
  swift_getOpaqueTypeMetadata2();
  *&v79 = v76;
  *(&v79 + 1) = v2;
  v80 = v77;
  *&v81 = v4;
  *&v46 = type metadata accessor for StandardHorizontalStackView(255, &v79);
  *(&v46 + 1) = swift_getWitnessTable();
  v79 = v46;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v15 = type metadata accessor for StandardVerticalStackView(255, v6, v7, v14);
  v45 = swift_getWitnessTable();
  *&v79 = v15;
  *(&v79 + 1) = v45;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView(255, v6, v7, v16);
  sub_1E68B2220();
  sub_1E68B2220();
  v18 = type metadata accessor for TallCardView(255, v6, v7, v17);
  v44 = swift_getWitnessTable();
  *&v79 = v18;
  *(&v79 + 1) = v44;
  swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for VerticalStackCardView(255, v6, v7, v19);
  v43 = swift_getWitnessTable();
  *&v79 = v20;
  *(&v79 + 1) = v43;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v22 = type metadata accessor for WideBrickView(255, v6, v7, v21);
  v42 = swift_getWitnessTable();
  *&v79 = v22;
  *(&v79 + 1) = v42;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B1E40();
  v74 = sub_1E68B1E40();
  *&v79 = v68;
  *(&v79 + 1) = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v78 = *(a1 + 48);
  *&v79 = v66;
  *(&v79 + 1) = v65;
  swift_getOpaqueTypeConformance2();
  *&v79 = v60;
  *(&v79 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v79 = v64;
  *(&v79 + 1) = v62;
  swift_getOpaqueTypeConformance2();
  *&v79 = v58;
  *(&v79 + 1) = v57;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v79 = v56;
  *(&v79 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  *&v79 = v52;
  *(&v79 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v79 = v50;
  *(&v79 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v79 = v48;
  *(&v79 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  v79 = v46;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v79 = v15;
  *(&v79 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v79 = v18;
  *(&v79 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  *&v79 = v20;
  *(&v79 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v79 = v22;
  *(&v79 + 1) = v42;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  *&v79 = v74;
  *(&v79 + 1) = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v79 = v74;
  *(&v79 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v79 = OpaqueTypeMetadata2;
  *(&v79 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = v78;
  v80 = AssociatedConformanceWitness;
  *&v81 = v72;
  type metadata accessor for CanvasContextMenu(255, &v79);
  v27 = sub_1E68B1E40();
  v28 = swift_getWitnessTable();
  v29 = swift_getAssociatedConformanceWitness();
  *&v79 = v71;
  *(&v79 + 1) = AssociatedTypeWitness;
  v80 = v27;
  *&v81 = v28;
  *(&v81 + 1) = v29;
  sub_1E68B2D40();
  *&v79 = OpaqueTypeMetadata2;
  *(&v79 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v30 = sub_1E68B1B50();
  v31 = swift_getWitnessTable();
  *&v79 = v30;
  *(&v79 + 1) = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  *&v79 = v30;
  *(&v79 + 1) = v31;
  v33 = swift_getOpaqueTypeConformance2();
  *&v79 = v32;
  *(&v79 + 1) = v33;
  swift_getOpaqueTypeMetadata2();
  *&v79 = v32;
  *(&v79 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v34 = sub_1E68B1B80();
  v35 = sub_1E68B2480();
  v36 = swift_getWitnessTable();
  *&v79 = v34;
  *(&v79 + 1) = v35;
  v80 = v36;
  *&v81 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200, &qword_1E68BB7D8);
  sub_1E68B2D80();
  sub_1E673F2EC();
  swift_getWitnessTable();
  sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v79 = v34;
  *(&v79 + 1) = v35;
  v80 = v36;
  *&v81 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeConformance2();
  sub_1E67D2CA8();
  swift_getWitnessTable();
  v37 = sub_1E68B2CC0();
  v38 = swift_getWitnessTable();
  *&v79 = v37;
  *(&v79 + 1) = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  *&v79 = v37;
  *(&v79 + 1) = v38;
  v40 = swift_getOpaqueTypeConformance2();
  *&v79 = v39;
  *(&v79 + 1) = v40;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6732688()
{

  return swift_deallocObject();
}

uint64_t sub_1E67326C0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 192);
  v4 = *(v0 + 232);
  v5 = *(v0 + 32);
  v35 = *(v0 + 16);
  v34 = v35;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v36 = v5;
  v37 = v6;
  v8 = *(v0 + 80);
  v38 = v7;
  v39 = v8;
  v40 = v1;
  v41 = *(v0 + 104);
  v33 = v41;
  v42 = v2;
  v32 = *(v0 + 144);
  v28 = *(v0 + 128);
  v43 = v28;
  v44 = v32;
  v9 = *(v0 + 176);
  v45 = *(v0 + 160);
  v46 = v9;
  v48 = *(v0 + 200);
  v27 = v48;
  v49 = *(v0 + 216);
  v47 = v3;
  v50 = v4;
  v10 = type metadata accessor for OrthogonalView(0, &v35);
  v11 = *(*(v10 - 1) + 80);
  v30 = *(*(v10 - 1) + 64);
  v12 = v32;
  v13 = *(v32 - 8);
  v29 = *(v13 + 80);
  v31 = (v11 + 240) & ~v11;
  v14 = v0 + v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = vzip1q_s64(v34, v33);
  *&v36 = AssociatedConformanceWitness;
  *(&v36 + 1) = v27;
  v16 = type metadata accessor for CanvasSectionHeader(0, &v35);
  if (!(*(*(v16 - 8) + 48))(v0 + v31, 1, v16))
  {
    v17 = sub_1E68B1820();
    (*(*(v17 - 8) + 8))(v0 + ((v11 + 240) & ~v11), v17);
    v18 = *(v16 + 52);
    v19 = *(v33.i64[0] - 8);
    if (!(*(v19 + 48))(v14 + v18, 1, v33.i64[0]))
    {
      (*(v19 + 8))(v14 + v18, v33.i64[0]);
    }

    v20 = *(v16 + 56);
    v21 = *(v34.i64[0] - 8);
    v12 = v32;
    if (!(*(v21 + 48))(v14 + v20, 1, v34.i64[0]))
    {
      (*(v21 + 8))(v14 + v20, v34.i64[0]);
    }
  }

  v22 = v10[63];
  v23 = *(v2 - 8);
  if (!(*(v23 + 48))(v14 + v22, 1, v2))
  {
    (*(v23 + 8))(v14 + v22, v2);
  }

  (*(*(v28 - 8) + 8))(v14 + v10[67]);

  if (*(v14 + v10[75]))
  {
  }

  if (*(v14 + v10[76]))
  {
  }

  if (*(v14 + v10[77]))
  {
  }

  v24 = v10[78];
  v25 = sub_1E68B1950();
  (*(*(v25 - 8) + 8))(v14 + v24, v25);
  (*(v13 + 8))(v0 + ((v31 + v30 + v29) & ~v29), v12);
  return swift_deallocObject();
}

uint64_t sub_1E6732C78(void *a1)
{
  sub_1E68B1E40();
  sub_1E682ED8C();
  return swift_getWitnessTable();
}

uint64_t sub_1E6732CDC(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v3[0] = *(a1 + 1);
  v3[1] = v1;
  type metadata accessor for MagicPocketViewModifier(255, v3);
  sub_1E68B1E40();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E6732D88(void *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v3;
  v5[3] = v2;
  type metadata accessor for MagicPocketViewModifier(255, v5);
  swift_getWitnessTable();
  sub_1E68B22E0();
  sub_1E68B1E40();
  sub_1E68B23C0();
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1D70();
  swift_getWitnessTable();
  sub_1E68B21F0();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2170();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099518, &qword_1E68C15C8);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED099548, &qword_1ED099518, &qword_1E68C15C8, MEMORY[0x1E6980620]);
  return swift_getWitnessTable();
}

uint64_t sub_1E673308C()
{

  return swift_deallocObject();
}

uint64_t sub_1E67330C4(void *a1)
{
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E0, &qword_1E68C1930);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8, &qword_1E68C1938);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995F0, &qword_1E68C1940);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995D8, &qword_1E68C1928);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED0995F8, &qword_1ED0995F0, &qword_1E68C1940, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E67332FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for WideBrickView(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v8 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040, &qword_1E68B4CD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E68B1E00();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v8 + v6[9], v5);

  v10 = v8 + v6[11];
  if (*(v10 + 24))
  {
    sub_1E673F0D4(*v10, *(v10 + 8), *(v10 + 16));
  }

  v11 = v8 + v6[12];
  if (*(v11 + 24))
  {
    sub_1E673F0D4(*v11, *(v11 + 8), *(v11 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E67334AC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099888, &qword_1E68C2ED8);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E681132C(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6733778()
{

  return swift_deallocObject();
}

uint64_t sub_1E67337B4(uint64_t *a1)
{
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E6848CCC();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0998E8, &unk_1E68C3530);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018, &qword_1E68B4C88);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  sub_1E68B2E20();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  sub_1E68B3750();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  sub_1E68B2E20();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E6733C00()
{

  return swift_deallocObject();
}

uint64_t sub_1E6733C38@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E68B2080();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E6733C9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E68B2020();
  *a1 = result;
  return result;
}

uint64_t sub_1E6733D18(void *a1)
{
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099918, &qword_1E68C38D0);
  sub_1E68B1E40();
  sub_1E68B3750();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099920, &qword_1E68C38D8);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B2440();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099928, &qword_1E68C38E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099930, &unk_1E68C38F0);
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA5D8, &qword_1ED0981E8, &qword_1E68C38E0, MEMORY[0x1E6980468]);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA648, &qword_1ED099918, &qword_1E68C38D0, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E6856E40(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2C30();
  swift_getWitnessTable();
  sub_1E67C5938();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1E67346B0()
{

  return swift_deallocObject();
}

uint64_t sub_1E67346E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v71 = *(a1 + 64);
  v3 = *(a1 + 96);
  v4 = *(a1 + 136);
  v50 = *(a1 + 160);
  v52 = *(a1 + 40);
  v66 = *(a1 + 168);
  v72 = *(a1 + 176);
  v5 = *(a1 + 192);
  v58 = *(a1 + 208);
  v60 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  *&v76 = v2;
  *(&v76 + 1) = v3;
  v77 = v4;
  *&v78 = v5;
  type metadata accessor for CanvasSectionHeaderView(255, &v76);
  sub_1E68B2390();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  v70 = sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(&v76 + 1) = v2;
  v77 = v2;
  *(&v78 + 1) = v4;
  v79 = v4;
  v73 = *(a1 + 24);
  *&v76 = *(a1 + 24);
  v6 = v76;
  v74 = *(a1 + 144);
  *&v78 = *(a1 + 144);
  v39 = v78;
  v65 = type metadata accessor for ActionCardView(255, &v76);
  WitnessTable = swift_getWitnessTable();
  *&v76 = v65;
  *(&v76 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  v7 = sub_1E68B1E40();
  v68 = sub_1E67D4364(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v88 = v74;
  v89 = v68;
  v8 = swift_getWitnessTable();
  v86 = v8;
  v87 = MEMORY[0x1E697F568];
  v63 = v7;
  v62 = swift_getWitnessTable();
  *&v76 = v7;
  *(&v76 + 1) = v62;
  swift_getOpaqueTypeMetadata2();
  v57 = sub_1E68B1E40();
  v84 = v8;
  v85 = MEMORY[0x1E697E040];
  v56 = swift_getWitnessTable();
  *&v76 = v57;
  *(&v76 + 1) = v56;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  sub_1E68B2220();
  sub_1E68B2220();
  *&v76 = v73;
  *(&v76 + 1) = v2;
  v77 = v2;
  *&v78 = v71;
  *(&v78 + 1) = v60;
  v79 = v74;
  v80 = v4;
  v81 = v4;
  v82 = v72;
  v83 = v58;
  v61 = type metadata accessor for FullWidthStageView(255, &v76);
  v59 = swift_getWitnessTable();
  *&v76 = v61;
  *(&v76 + 1) = v59;
  swift_getOpaqueTypeMetadata2();
  v55 = type metadata accessor for InfoActionCardView(255, v2, v4, v9);
  v54 = swift_getWitnessTable();
  *&v76 = v55;
  *(&v76 + 1) = v54;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  v76 = v73;
  v78 = v74;
  v77 = v52;
  v79 = v50;
  v53 = type metadata accessor for LargeBrickView(255, &v76);
  v51 = swift_getWitnessTable();
  *&v76 = v53;
  *(&v76 + 1) = v51;
  swift_getOpaqueTypeMetadata2();
  v49 = type metadata accessor for DynamicBrickView(255, v6, v39, v10);
  v48 = swift_getWitnessTable();
  *&v76 = v49;
  *(&v76 + 1) = v48;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v47 = type metadata accessor for MonogramVerticalStackView(255, v6, v39, v11);
  v46 = swift_getWitnessTable();
  *&v76 = v47;
  *(&v76 + 1) = v46;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  v45 = type metadata accessor for StandardCardView(255, v6, v39, v12);
  v44 = swift_getWitnessTable();
  *&v76 = v45;
  *(&v76 + 1) = v44;
  swift_getOpaqueTypeMetadata2();
  *&v76 = v73;
  *(&v76 + 1) = v2;
  v77 = v74;
  *&v78 = v4;
  *&v73 = type metadata accessor for StandardHorizontalStackView(255, &v76);
  v43 = swift_getWitnessTable();
  *&v76 = v73;
  *(&v76 + 1) = v43;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v42 = type metadata accessor for StandardVerticalStackView(255, v6, v39, v13);
  v41 = swift_getWitnessTable();
  *&v76 = v42;
  *(&v76 + 1) = v41;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView(255, v6, v39, v14);
  sub_1E68B2220();
  sub_1E68B2220();
  v16 = type metadata accessor for TallCardView(255, v6, v39, v15);
  v40 = swift_getWitnessTable();
  *&v76 = v16;
  *(&v76 + 1) = v40;
  swift_getOpaqueTypeMetadata2();
  v18 = type metadata accessor for VerticalStackCardView(255, v6, v39, v17);
  v38 = swift_getWitnessTable();
  *&v76 = v18;
  *(&v76 + 1) = v38;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v20 = type metadata accessor for WideBrickView(255, v6, v39, v19);
  v37 = swift_getWitnessTable();
  *&v76 = v20;
  *(&v76 + 1) = v37;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B1E40();
  sub_1E68B1E40();
  v75 = *(a1 + 48);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = v75;
  v77 = AssociatedConformanceWitness;
  *&v78 = v66;
  type metadata accessor for CanvasContextMenu(255, &v76);
  v67 = sub_1E68B1E40();
  *&v76 = v65;
  *(&v76 + 1) = WitnessTable;
  swift_getOpaqueTypeConformance2();
  *&v76 = v63;
  *(&v76 + 1) = v62;
  swift_getOpaqueTypeConformance2();
  *&v76 = v57;
  *(&v76 + 1) = v56;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v76 = v61;
  *(&v76 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  *&v76 = v55;
  *(&v76 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v76 = v53;
  *(&v76 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  *&v76 = v49;
  *(&v76 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v76 = v47;
  *(&v76 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v76 = v45;
  *(&v76 + 1) = v44;
  swift_getOpaqueTypeConformance2();
  *&v76 = v73;
  *(&v76 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v76 = v42;
  *(&v76 + 1) = v41;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v76 = v16;
  *(&v76 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  *&v76 = v18;
  *(&v76 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v76 = v20;
  *(&v76 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  *&v76 = v67;
  *(&v76 + 1) = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v76 = v67;
  *(&v76 + 1) = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v76 = OpaqueTypeMetadata2;
  *(&v76 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v25 = sub_1E68B2220();
  v26 = swift_getWitnessTable();
  v27 = swift_getAssociatedConformanceWitness();
  *&v76 = v70;
  *(&v76 + 1) = AssociatedTypeWitness;
  v77 = v25;
  *&v78 = v26;
  *(&v78 + 1) = v27;
  sub_1E68B2D40();
  *&v76 = OpaqueTypeMetadata2;
  *(&v76 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v28 = sub_1E68B2ED0();
  v29 = swift_getWitnessTable();
  *&v76 = v28;
  *(&v76 + 1) = v29;
  swift_getOpaqueTypeMetadata2();
  *&v76 = v28;
  *(&v76 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v30 = sub_1E68B1B80();
  v31 = sub_1E68B2480();
  v32 = swift_getWitnessTable();
  *&v76 = v30;
  *(&v76 + 1) = v31;
  v33 = MEMORY[0x1E697CC08];
  v77 = v32;
  *&v78 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED098200, &qword_1E68BB7D8);
  sub_1E68B2D80();
  sub_1E673F2EC();
  swift_getWitnessTable();
  sub_1E67D4364(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v76 = v30;
  *(&v76 + 1) = v31;
  v77 = v32;
  *&v78 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1E67D2CA8();
  swift_getWitnessTable();
  v34 = sub_1E68B2CC0();
  v35 = swift_getWitnessTable();
  *&v76 = v34;
  *(&v76 + 1) = v35;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6735950()
{

  return swift_deallocObject();
}

uint64_t sub_1E6735988()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 192);
  v4 = *(v0 + 232);
  v5 = *(v0 + 32);
  v35 = *(v0 + 16);
  v34 = v35;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v36 = v5;
  v37 = v6;
  v8 = *(v0 + 80);
  v38 = v7;
  v39 = v8;
  v40 = v1;
  v41 = *(v0 + 104);
  v33 = v41;
  v42 = v2;
  v32 = *(v0 + 144);
  v28 = *(v0 + 128);
  v43 = v28;
  v44 = v32;
  v9 = *(v0 + 176);
  v45 = *(v0 + 160);
  v46 = v9;
  v48 = *(v0 + 200);
  v27 = v48;
  v49 = *(v0 + 216);
  v47 = v3;
  v50 = v4;
  v10 = type metadata accessor for HorizontalGridView(0, &v35);
  v11 = *(*(v10 - 1) + 80);
  v30 = *(*(v10 - 1) + 64);
  v12 = v32;
  v13 = *(v32 - 8);
  v29 = *(v13 + 80);
  v31 = (v11 + 240) & ~v11;
  v14 = v0 + v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = vzip1q_s64(v34, v33);
  *&v36 = AssociatedConformanceWitness;
  *(&v36 + 1) = v27;
  v16 = type metadata accessor for CanvasSectionHeader(0, &v35);
  if (!(*(*(v16 - 8) + 48))(v0 + v31, 1, v16))
  {
    v17 = sub_1E68B1820();
    (*(*(v17 - 8) + 8))(v0 + ((v11 + 240) & ~v11), v17);
    v18 = *(v16 + 52);
    v19 = *(v33.i64[0] - 8);
    if (!(*(v19 + 48))(v14 + v18, 1, v33.i64[0]))
    {
      (*(v19 + 8))(v14 + v18, v33.i64[0]);
    }

    v20 = *(v16 + 56);
    v21 = *(v34.i64[0] - 8);
    v12 = v32;
    if (!(*(v21 + 48))(v14 + v20, 1, v34.i64[0]))
    {
      (*(v21 + 8))(v14 + v20, v34.i64[0]);
    }
  }

  v22 = v10[63];
  v23 = *(v2 - 8);
  if (!(*(v23 + 48))(v14 + v22, 1, v2))
  {
    (*(v23 + 8))(v14 + v22, v2);
  }

  (*(*(v28 - 8) + 8))(v14 + v10[68]);

  if (*(v14 + v10[76]))
  {
  }

  if (*(v14 + v10[77]))
  {
  }

  if (*(v14 + v10[78]))
  {
  }

  v24 = v10[79];
  v25 = sub_1E68B1950();
  (*(*(v25 - 8) + 8))(v14 + v24, v25);
  (*(v13 + 8))(v0 + ((v31 + v30 + v29) & ~v29), v12);
  return swift_deallocObject();
}

uint64_t sub_1E6735EF0()
{

  return swift_deallocObject();
}

uint64_t sub_1E6735F28@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E68771E0();
}

__n128 sub_1E6735F9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E6736004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for StandardVerticalStackView(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v8 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E68B1DE0();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v8 + v6[10], v5);
  v10 = v8 + v6[11];
  if (*(v10 + 24))
  {
    sub_1E673F0D4(*v10, *(v10 + 8), *(v10 + 16));
  }

  v11 = v8 + v6[12];
  if (*(v11 + 24))
  {
    sub_1E673F0D4(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = v8 + v6[13];
  if (*(v12 + 24))
  {
    sub_1E673F0D4(*v12, *(v12 + 8), *(v12 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E67361E8()
{

  return swift_deallocObject();
}

uint64_t sub_1E6736228(void *a1)
{
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D68, &qword_1E68C5760);
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0978B0, &qword_1E68B7690);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099D70, &qword_1E68C5768);
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08, &qword_1E68B7610);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
  swift_getWitnessTable();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E687B81C(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E67365B8(uint64_t *a1)
{
  sub_1E68B2440();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DB8, &qword_1E68C5B30);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC8, &qword_1E68C5B40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  sub_1E68B1E40();
  sub_1E68B3750();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097260, &qword_1E68BB680);
  sub_1E68B1E40();
  sub_1E68B2390();
  sub_1E68B1E40();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260, &qword_1E68BB680, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1E688558C(&qword_1EE2EA5E8, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  sub_1E68B3750();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B3750();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  sub_1E68B3750();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DC0, &qword_1E68C5B38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD8, &qword_1E68C5B58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099DD0, &unk_1E68C5B48);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0981E8, &qword_1E68C38E0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097228, &qword_1E68C5B60);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA418, &qword_1ED097228, &qword_1E68C5B60, MEMORY[0x1E69E6ED8]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  return swift_getWitnessTable();
}

uint64_t sub_1E6736E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for StandardCardView(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80);
  v8 = v4 + v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E68B1DE0();
    (*(*(v9 - 8) + 8))(v4 + v7, v9);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v8 + v6[10], v5);
  v10 = v8 + v6[11];
  if (*(v10 + 24))
  {
    sub_1E673F0D4(*v10, *(v10 + 8), *(v10 + 16));
  }

  v11 = v8 + v6[12];
  if (*(v11 + 24))
  {
    sub_1E673F0D4(*v11, *(v11 + 8), *(v11 + 16));
  }

  v12 = v8 + v6[13];
  if (*(v12 + 24))
  {
    sub_1E673F0D4(*v12, *(v12 + 8), *(v12 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1E6737078()
{

  return swift_deallocObject();
}

uint64_t sub_1E67370B8(void *a1)
{
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EE8, &qword_1E68C5FF0);
  sub_1E68B1E40();
  sub_1E68B1E10();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  swift_getWitnessTable();
  sub_1E6889AD4(&qword_1EE2EA838, MEMORY[0x1E697C168], MEMORY[0x1E697C160]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099EF0, &unk_1E68C5FF8);
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B2220();
  sub_1E673F530(&qword_1ED099EF8, &qword_1ED099EE8, &qword_1E68C5FF0, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B2C30();
  sub_1E68B1EB0();
  swift_getWitnessTable();
  sub_1E6889AD4(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E6737400(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FC8, &qword_1E68C6390);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099FD0, &qword_1E68C6398);
  sub_1E68B3750();
  sub_1E68B1E40();
  sub_1E68B1E40();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED099640, &qword_1E68C1960);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  sub_1E68B1E40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1ED099638, &qword_1ED099640, &qword_1E68C1960, MEMORY[0x1E6980468]);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  return swift_getWitnessTable();
}

uint64_t sub_1E6737660()
{

  return swift_deallocObject();
}

uint64_t sub_1E6737698(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 96);
  v4 = *(a1 + 136);
  v42 = *(a1 + 160);
  v44 = *(a1 + 40);
  v61 = *(a1 + 168);
  v62 = *(a1 + 64);
  v63 = *(a1 + 176);
  v5 = *(a1 + 192);
  v50 = *(a1 + 208);
  v52 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  *&v67 = v2;
  *(&v67 + 1) = v3;
  v68 = v4;
  *&v69 = v5;
  type metadata accessor for CanvasSectionHeaderView(255, &v67);
  sub_1E68B2390();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  v60 = sub_1E68B33B0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(&v67 + 1) = v2;
  v68 = v2;
  *(&v69 + 1) = v4;
  v70 = v4;
  v64 = *(a1 + 24);
  *&v67 = *(a1 + 24);
  v6 = v67;
  v65 = *(a1 + 144);
  *&v69 = *(a1 + 144);
  v7 = v69;
  v57 = type metadata accessor for ActionCardView(255, &v67);
  WitnessTable = swift_getWitnessTable();
  *&v67 = v57;
  *(&v67 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2440();
  sub_1E68B1E40();
  v8 = sub_1E68B1E40();
  v58 = sub_1E6899E90(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v79 = v65;
  v80 = v58;
  v9 = swift_getWitnessTable();
  v77 = v9;
  v78 = MEMORY[0x1E697F568];
  v55 = v8;
  v54 = swift_getWitnessTable();
  *&v67 = v8;
  *(&v67 + 1) = v54;
  swift_getOpaqueTypeMetadata2();
  v49 = sub_1E68B1E40();
  v75 = v9;
  v76 = MEMORY[0x1E697E040];
  v48 = swift_getWitnessTable();
  *&v67 = v49;
  *(&v67 + 1) = v48;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  sub_1E68B2220();
  sub_1E68B2220();
  *&v67 = v64;
  *(&v67 + 1) = v2;
  v68 = v2;
  *&v69 = v62;
  *(&v69 + 1) = v52;
  v70 = v65;
  v71 = v4;
  v72 = v4;
  v73 = v63;
  v74 = v50;
  v53 = type metadata accessor for FullWidthStageView(255, &v67);
  v51 = swift_getWitnessTable();
  *&v67 = v53;
  *(&v67 + 1) = v51;
  swift_getOpaqueTypeMetadata2();
  v47 = type metadata accessor for InfoActionCardView(255, v2, v4, v10);
  v46 = swift_getWitnessTable();
  *&v67 = v47;
  *(&v67 + 1) = v46;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  v67 = v64;
  v69 = v65;
  v68 = v44;
  v70 = v42;
  v45 = type metadata accessor for LargeBrickView(255, &v67);
  v43 = swift_getWitnessTable();
  *&v67 = v45;
  *(&v67 + 1) = v43;
  swift_getOpaqueTypeMetadata2();
  v41 = type metadata accessor for DynamicBrickView(255, v6, v7, v11);
  v40 = swift_getWitnessTable();
  *&v67 = v41;
  *(&v67 + 1) = v40;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v39 = type metadata accessor for MonogramVerticalStackView(255, v6, v7, v12);
  v38 = swift_getWitnessTable();
  *&v67 = v39;
  *(&v67 + 1) = v38;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  v37 = type metadata accessor for StandardCardView(255, v6, v7, v13);
  v36 = swift_getWitnessTable();
  *&v67 = v37;
  *(&v67 + 1) = v36;
  swift_getOpaqueTypeMetadata2();
  *&v67 = v64;
  *(&v67 + 1) = v2;
  v68 = v65;
  *&v69 = v4;
  v35 = type metadata accessor for StandardHorizontalStackView(255, &v67);
  v34 = swift_getWitnessTable();
  *&v67 = v35;
  *(&v67 + 1) = v34;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v33 = type metadata accessor for StandardVerticalStackView(255, v6, v7, v14);
  v32 = swift_getWitnessTable();
  *&v67 = v33;
  *(&v67 + 1) = v32;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for SummaryCardView(255, v6, v7, v15);
  sub_1E68B2220();
  sub_1E68B2220();
  v17 = type metadata accessor for TallCardView(255, v6, v7, v16);
  v31 = swift_getWitnessTable();
  *&v67 = v17;
  *(&v67 + 1) = v31;
  swift_getOpaqueTypeMetadata2();
  v19 = type metadata accessor for VerticalStackCardView(255, v6, v7, v18);
  v30 = swift_getWitnessTable();
  *&v67 = v19;
  *(&v67 + 1) = v30;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  v21 = type metadata accessor for WideBrickView(255, v6, v7, v20);
  v29 = swift_getWitnessTable();
  *&v67 = v21;
  *(&v67 + 1) = v29;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2B90();
  sub_1E68B1E40();
  sub_1E68B2220();
  sub_1E68B1E40();
  v22 = sub_1E68B1E40();
  *&v67 = v57;
  *(&v67 + 1) = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v66 = *(a1 + 48);
  *&v67 = v55;
  *(&v67 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  *&v67 = v49;
  *(&v67 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v67 = v53;
  *(&v67 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  *&v67 = v47;
  *(&v67 + 1) = v46;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v67 = v45;
  *(&v67 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  *&v67 = v41;
  *(&v67 + 1) = v40;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v67 = v39;
  *(&v67 + 1) = v38;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v67 = v37;
  *(&v67 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  *&v67 = v35;
  *(&v67 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v67 = v33;
  *(&v67 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  *&v67 = v17;
  *(&v67 + 1) = v31;
  swift_getOpaqueTypeConformance2();
  *&v67 = v19;
  *(&v67 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  *&v67 = v21;
  *(&v67 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  *&v67 = v22;
  *(&v67 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  sub_1E68B2220();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 = v66;
  v68 = AssociatedConformanceWitness;
  *&v69 = v61;
  type metadata accessor for CanvasContextMenu(255, &v67);
  v25 = sub_1E68B1E40();
  v26 = swift_getWitnessTable();
  v27 = swift_getAssociatedConformanceWitness();
  *&v67 = v60;
  *(&v67 + 1) = AssociatedTypeWitness;
  v68 = v25;
  *&v69 = v26;
  *(&v69 + 1) = v27;
  sub_1E68B2D40();
  *&v67 = v22;
  *(&v67 + 1) = v23;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B70();
  sub_1E68B1E40();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  return swift_getWitnessTable();
}

uint64_t sub_1E67386C0()
{

  return swift_deallocObject();
}

uint64_t sub_1E67386F8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 120);
  v3 = *(v0 + 192);
  v4 = *(v0 + 232);
  v5 = *(v0 + 32);
  v35 = *(v0 + 16);
  v34 = v35;
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  v36 = v5;
  v37 = v6;
  v8 = *(v0 + 80);
  v38 = v7;
  v39 = v8;
  v40 = v1;
  v41 = *(v0 + 104);
  v33 = v41;
  v42 = v2;
  v32 = *(v0 + 144);
  v28 = *(v0 + 128);
  v43 = v28;
  v44 = v32;
  v9 = *(v0 + 176);
  v45 = *(v0 + 160);
  v46 = v9;
  v48 = *(v0 + 200);
  v27 = v48;
  v49 = *(v0 + 216);
  v47 = v3;
  v50 = v4;
  v10 = type metadata accessor for ListView(0, &v35);
  v11 = *(*(v10 - 1) + 80);
  v30 = *(*(v10 - 1) + 64);
  v12 = v32;
  v13 = *(v32 - 8);
  v29 = *(v13 + 80);
  v31 = (v11 + 240) & ~v11;
  v14 = v0 + v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = vzip1q_s64(v34, v33);
  *&v36 = AssociatedConformanceWitness;
  *(&v36 + 1) = v27;
  v16 = type metadata accessor for CanvasSectionHeader(0, &v35);
  if (!(*(*(v16 - 8) + 48))(v0 + v31, 1, v16))
  {
    v17 = sub_1E68B1820();
    (*(*(v17 - 8) + 8))(v0 + ((v11 + 240) & ~v11), v17);
    v18 = *(v16 + 52);
    v19 = *(v33.i64[0] - 8);
    if (!(*(v19 + 48))(v14 + v18, 1, v33.i64[0]))
    {
      (*(v19 + 8))(v14 + v18, v33.i64[0]);
    }

    v20 = *(v16 + 56);
    v21 = *(v34.i64[0] - 8);
    v12 = v32;
    if (!(*(v21 + 48))(v14 + v20, 1, v34.i64[0]))
    {
      (*(v21 + 8))(v14 + v20, v34.i64[0]);
    }
  }

  v22 = v10[63];
  v23 = *(v2 - 8);
  if (!(*(v23 + 48))(v14 + v22, 1, v2))
  {
    (*(v23 + 8))(v14 + v22, v2);
  }

  (*(*(v28 - 8) + 8))(v14 + v10[67]);

  if (*(v14 + v10[75]))
  {
  }

  if (*(v14 + v10[76]))
  {
  }

  if (*(v14 + v10[77]))
  {
  }

  v24 = v10[78];
  v25 = sub_1E68B1950();
  (*(*(v25 - 8) + 8))(v14 + v24, v25);
  (*(v13 + 8))(v0 + ((v31 + v30 + v29) & ~v29), v12);
  return swift_deallocObject();
}

uint64_t sub_1E6738C64()
{

  return swift_deallocObject();
}

uint64_t sub_1E6738C9C(uint64_t *a1)
{
  v30 = a1[1];
  v46 = a1[3];
  v47 = a1[2];
  v45 = a1[4];
  v42 = a1[5];
  v39 = a1[6];
  v25 = a1[7];
  v1 = a1[9];
  v44 = a1[8];
  v2 = a1[10];
  v38 = a1[12];
  v48 = a1[13];
  v33 = a1[14];
  v34 = a1[11];
  v3 = a1[16];
  v23 = a1[15];
  v4 = a1[17];
  v37 = a1[20];
  v50 = a1[21];
  v26 = a1[22];
  v28 = a1[18];
  v40 = a1[23];
  v41 = a1[24];
  v31 = a1[25];
  v32 = a1[19];
  v5 = a1[27];
  v6 = a1[28];
  v19 = a1[29];
  v20 = a1[26];
  v35 = a1[30];
  v36 = a1[32];
  v49 = a1[33];
  v7 = a1[35];
  v21 = a1[31];
  v22 = a1[34];
  v51 = *a1;
  v52 = v30;
  v8 = v51;
  v53 = v42;
  v54 = v1;
  v9 = v1;
  v43 = v1;
  v55 = v2;
  v10 = v2;
  v56 = v48;
  v57 = v23;
  v58 = v34;
  v59 = v3;
  v60 = v4;
  v61 = v28;
  v62 = v26;
  v63 = v20;
  v64 = v5;
  v65 = v6;
  v66 = v19;
  v67 = v36;
  v68 = v22;
  v69 = v35;
  v70 = v7;
  type metadata accessor for CanvasSectionDescriptor(255, &v51);
  swift_getTupleTypeMetadata2();
  v24 = sub_1E68B33B0();
  sub_1E68B2220();
  v51 = v8;
  v52 = v30;
  v53 = v42;
  v54 = v9;
  v55 = v10;
  v56 = v3;
  v57 = v4;
  v58 = v28;
  v59 = v26;
  v60 = v20;
  v61 = v5;
  v62 = v6;
  v63 = v19;
  v64 = v7;
  v27 = type metadata accessor for CanvasItemDescriptor(255, &v51);
  WitnessTable = swift_getWitnessTable();
  v51 = v8;
  v52 = v44;
  v53 = v30;
  v54 = v47;
  v55 = v46;
  v56 = v45;
  v57 = v42;
  v58 = v25;
  v59 = v43;
  v60 = v10;
  v61 = v23;
  v62 = v48;
  v63 = v33;
  v64 = v3;
  v65 = v27;
  v66 = v31;
  v67 = v32;
  v68 = v37;
  v69 = v50;
  v70 = v41;
  v71 = v22;
  v72 = v36;
  v73 = v49;
  v74 = WitnessTable;
  type metadata accessor for CarouselView(255, &v51);
  v51 = v8;
  v52 = v44;
  v53 = v30;
  v54 = v47;
  v55 = v46;
  v56 = v45;
  v57 = v42;
  v58 = v39;
  v59 = v25;
  v60 = v43;
  v61 = v10;
  v62 = v34;
  v63 = v38;
  v64 = v48;
  v65 = v33;
  v66 = v3;
  v67 = v27;
  v68 = v31;
  v69 = v32;
  v70 = v37;
  v71 = v50;
  v72 = v40;
  v73 = v41;
  v74 = v35;
  v75 = v21;
  v76 = v36;
  v77 = v49;
  v78 = WitnessTable;
  type metadata accessor for HorizontalGridView(255, &v51);
  v51 = v8;
  v52 = v44;
  v53 = v30;
  v54 = v47;
  v55 = v46;
  v56 = v45;
  v57 = v42;
  v58 = v39;
  v59 = v25;
  v60 = v43;
  v61 = v10;
  v62 = v34;
  v63 = v38;
  v64 = v48;
  v65 = v33;
  v66 = v3;
  v67 = v27;
  v68 = v31;
  v69 = v32;
  v70 = v37;
  v71 = v50;
  v72 = v40;
  v73 = v41;
  v74 = v35;
  v75 = v21;
  v76 = v36;
  v77 = v49;
  v78 = WitnessTable;
  type metadata accessor for VerticalGridView(255, &v51);
  sub_1E68B2220();
  sub_1E68B2220();
  v51 = v8;
  v52 = v44;
  v53 = v30;
  v54 = v47;
  v55 = v46;
  v56 = v45;
  v57 = v42;
  v58 = v39;
  v59 = v25;
  v60 = v43;
  v61 = v10;
  v62 = v34;
  v63 = v38;
  v64 = v48;
  v65 = v33;
  v66 = v3;
  v67 = v27;
  v68 = v31;
  v69 = v32;
  v70 = v37;
  v71 = v50;
  v72 = v40;
  v73 = v41;
  v74 = v35;
  v75 = v21;
  v76 = v36;
  v77 = v49;
  v78 = WitnessTable;
  type metadata accessor for ListView(255, &v51);
  v51 = v8;
  v52 = v44;
  v53 = v30;
  v54 = v47;
  v55 = v46;
  v56 = v45;
  v57 = v42;
  v58 = v39;
  v59 = v25;
  v60 = v43;
  v61 = v10;
  v62 = v34;
  v63 = v38;
  v64 = v48;
  v65 = v33;
  v66 = v3;
  v67 = v27;
  v68 = v31;
  v69 = v32;
  v70 = v37;
  v71 = v50;
  v72 = v40;
  v73 = v41;
  v74 = v35;
  v75 = v21;
  v76 = v36;
  v77 = v49;
  v78 = WitnessTable;
  type metadata accessor for OrthogonalView(255, &v51);
  sub_1E68B2220();
  sub_1E68B2220();
  sub_1E68B2220();
  v11 = sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v51 = v11;
  v52 = v12;
  swift_getOpaqueTypeMetadata2();
  v13 = sub_1E68B2220();
  v51 = v11;
  v52 = v12;
  swift_getOpaqueTypeConformance2();
  v14 = swift_getWitnessTable();
  v51 = v13;
  v52 = v14;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0983B8, &unk_1E68C68A0);
  v15 = sub_1E68B1E40();
  v16 = swift_getWitnessTable();
  v51 = v24;
  v52 = MEMORY[0x1E69E6158];
  v53 = v15;
  v54 = v16;
  v55 = MEMORY[0x1E69E6168];
  sub_1E68B2D40();
  v51 = v13;
  v52 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1E673F530(&qword_1EE2EA590, &qword_1ED0983B8, &unk_1E68C68A0, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B70();
  sub_1E68B3750();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0995E8, &qword_1E68C1938);
  v17 = sub_1E68B2220();
  v51 = v24;
  v52 = MEMORY[0x1E69E6158];
  v53 = v17;
  v54 = v16;
  v55 = MEMORY[0x1E69E6168];
  sub_1E68B2D40();
  sub_1E68AA77C(&qword_1EE2EA7B8, &qword_1ED0995E8, &qword_1E68C1938);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B1B70();
  swift_getTupleTypeMetadata2();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A020, &qword_1E68C68B0);
  sub_1E68B1E40();
  sub_1E68B2220();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E673F530(&qword_1EE2EA640, &qword_1ED09A020, &qword_1E68C68B0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E673982C()
{

  return swift_deallocObject();
}

uint64_t sub_1E6739864()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 280);
  v3 = *(v0 + 32);
  v20 = *(v0 + 16);
  v21 = v3;
  v4 = *(v0 + 64);
  v22 = *(v0 + 48);
  v23 = v4;
  v5 = *(v0 + 96);
  v24 = *(v0 + 80);
  v25 = v5;
  v26 = *(v0 + 112);
  v27 = v1;
  v28 = *(v0 + 136);
  v19 = v28;
  v29 = *(v0 + 152);
  v30 = *(v0 + 168);
  v31 = *(v0 + 184);
  v32 = *(v0 + 200);
  v33 = *(v0 + 216);
  v34 = *(v0 + 232);
  v35 = *(v0 + 248);
  v36 = *(v0 + 264);
  v37 = v2;
  v38 = *(v0 + 288);
  v18 = v38;
  v6 = (type metadata accessor for CanvasContainerView(0, &v20) - 8);
  v7 = (*(*v6 + 80) + 304) & ~*(*v6 + 80);
  v8 = *(*v6 + 64);
  v9 = sub_1E68B1C90();
  v10 = *(v9 - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v0 + v7;

  v13 = v12 + v6[86];

  *&v20 = v19;
  *(&v20 + 1) = v1;
  *&v21 = v18;
  *(&v21 + 1) = v2;
  v14 = type metadata accessor for CanvasLayout(0, &v20);
  (*(*(v1 - 8) + 8))(v13 + *(v14 + 72), v1);

  v15 = v6[91];
  v16 = sub_1E68B1950();
  (*(*(v16 - 8) + 8))(v12 + v15, v16);
  (*(v10 + 8))(v0 + v11, v9);
  return swift_deallocObject();
}

uint64_t sub_1E6739BA8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED09A260, &qword_1E68C7570);
  sub_1E68B0624(&qword_1ED09A268, MEMORY[0x1E697DDC8]);
  sub_1E68B1D20();
  sub_1E68B0624(&qword_1ED09A270, MEMORY[0x1E697DDD0]);
  return swift_getWitnessTable();
}

uint64_t sub_1E6739D3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E6739D68(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E6739DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1E6761810(a1, a2);
  *a4 = result & 1;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E6739E0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E6739E2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E6739E78(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D80, &unk_1E68BB7E0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D88, &unk_1E68B4380);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v26 - v8;
  if (*v1)
  {
    sub_1E68B2D00();
    v10 = sub_1E68B2320();
    *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D90, &unk_1E68BB7F0) + 36)] = v10;
    LOBYTE(v10) = sub_1E68B2510();
    sub_1E68B1B30();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D98, &qword_1E68B4390) + 36)];
    *v19 = v10;
    *(v19 + 1) = v12;
    *(v19 + 2) = v14;
    *(v19 + 3) = v16;
    *(v19 + 4) = v18;
    v19[40] = 0;
    LOBYTE(v10) = sub_1E68B2530();
    sub_1E68B1B30();
    v20 = &v5[*(v2 + 36)];
    *v20 = v10;
    *(v20 + 1) = v21;
    *(v20 + 2) = v22;
    *(v20 + 3) = v23;
    *(v20 + 4) = v24;
    v20[40] = 0;
    sub_1E673A140(v5, v9);
    swift_storeEnumTagMultiPayload();
    sub_1E673A228(&qword_1EE2EA6C0, &qword_1ED096D80, &unk_1E68BB7E0, sub_1E673A1F8);
    sub_1E68B2210();
    return sub_1E673A3F4(v5);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E673A228(&qword_1EE2EA6C0, &qword_1ED096D80, &unk_1E68BB7E0, sub_1E673A1F8);
    return sub_1E68B2210();
  }
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

uint64_t sub_1E673A140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D80, &unk_1E68BB7E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_1E673A228(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1E673A2AC()
{
  result = qword_1EE2EA778;
  if (!qword_1EE2EA778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096D90, &unk_1E68BB7F0);
    sub_1E673A338();
    sub_1E673A390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA778);
  }

  return result;
}

unint64_t sub_1E673A338()
{
  result = qword_1EE2EA4E8;
  if (!qword_1EE2EA4E8)
  {
    sub_1E68B2D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA4E8);
  }

  return result;
}

unint64_t sub_1E673A390()
{
  result = qword_1EE2EA5D0;
  if (!qword_1EE2EA5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DA0, &qword_1E68B4398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA5D0);
  }

  return result;
}

uint64_t sub_1E673A3F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096D80, &unk_1E68BB7E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E673A468(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E673A488(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1E673A52C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = *(type metadata accessor for DataItemResolutionPublisher.InterestContext(0, a3, a4, a4) + 36);
  type metadata accessor for DataItemResolution(255, a3, a4, v10);
  v11 = sub_1E68B34C0();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a5[v9], a2, v11);
}

uint64_t sub_1E673A5DC()
{
  v1 = *v0;
  v2 = v0[2];
  v6 = *(*v0 + 80);
  v7 = *(v1 + 88);
  sub_1E68B1950();
  type metadata accessor for DataItemResolutionPublisher.InterestContext(255, v6, v7, v3);
  sub_1E673C54C();
  sub_1E68B30E0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1E68B3630();
  sub_1E680AF38(sub_1E673C65C, &v5, v2);
  return v8;
}

uint64_t sub_1E673A710(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  sub_1E68B3020();
  sub_1E68B1950();
  type metadata accessor for DataItemResolutionPublisher.InterestContext(255, a2, a3, v5);
  sub_1E673C54C();
  sub_1E68B30E0();
  sub_1E68B3630();
  swift_getWitnessTable();
  sub_1E68B32F0();
}

uint64_t sub_1E673A880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E68B1950();
  v9 = type metadata accessor for DataItemResolutionPublisher.InterestContext(255, a3, a4, v8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v14 = v20 - v13;
  (*(v15 + 16))(v20 - v13, a2, TupleTypeMetadata2, v12);
  v16 = *(TupleTypeMetadata2 + 48);
  v17 = *&v14[v16];
  v18 = *(*(v9 - 8) + 8);

  v18(&v14[v16], v9);
  v20[3] = v17;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1E68B3630();
  swift_getWitnessTable();
  sub_1E68B3610();
  return (*(*(v7 - 8) + 8))(v14, v7);
}

uint64_t sub_1E673AAA0(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1E673AAE0(a1);
  return v2;
}

uint64_t *sub_1E673AAE0(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E68B1950();
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v9 = type metadata accessor for DataItemResolutionPublisher.InterestContext(255, v6, v7, v8);
  swift_getTupleTypeMetadata2();
  v10 = sub_1E68B3350();
  v11 = sub_1E673C54C();
  v12 = sub_1E678307C(v10, v5, v9, v11);

  v19 = v12;
  v13 = sub_1E68B30E0();
  v14 = sub_1E673C730(&v19, v13);

  v1[2] = v14;
  v19 = v3;
  v20 = v4;
  type metadata accessor for DataItemResolution(255, v6, v7, v15);
  v16 = sub_1E68B3750();
  v17 = sub_1E673C730(&v19, v16);
  sub_1E673C814(v19, v20);
  v1[3] = v17;
  return v1;
}

void sub_1E673AC38(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[3];
  v7 = *(*v4 + 80);
  v11[2] = v7;
  v8 = *(v5 + 88);
  v11[3] = v8;
  v12 = *a1;
  type metadata accessor for DataItemResolution(255, v7, v8, a4);
  sub_1E68B3750();
  sub_1E680AF38(sub_1E673C6F4, v11, v6);
  if (v13 == 1)
  {
    v9 = v4[2];
    sub_1E68B1950();
    type metadata accessor for DataItemResolutionPublisher.InterestContext(255, v7, v8, v10);
    sub_1E673C54C();
    sub_1E68B30E0();
    sub_1E680AF38(sub_1E673C714, v4, v9);
  }
}

uint64_t sub_1E673AD74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a1;
  v10 = a1[1];
  if (*a1)
  {
    v16[0] = *a1;
    v16[1] = v10;
    if (a2)
    {
      v15[0] = a2;
      v15[1] = a3;
      sub_1E673C7D4(v11, v10);

      sub_1E673C7D4(v11, v10);
      LOBYTE(a5) = static DataItemResolution.== infix(_:_:)(v16, v15, a4, a5);

      result = sub_1E673C814(v11, v10);
      if (a5)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_1E673C814(*a1, a1[1]);
      *a1 = a2;
      a1[1] = a3;
      *a6 = 1;
    }

    sub_1E673C7D4(v11, v10);

    sub_1E673C7D4(v11, v10);

LABEL_8:
    sub_1E673C814(v11, v10);
    sub_1E673C814(a2, a3);
    goto LABEL_9;
  }

  sub_1E673C7D4(0, v10);
  if (a2)
  {

    goto LABEL_8;
  }

  result = sub_1E673C814(0, v10);
LABEL_11:
  *a6 = 0;
  return result;
}

uint64_t sub_1E673AF0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1E68B1950();
  type metadata accessor for DataItemResolutionPublisher.InterestContext(0, *(v2 + 80), *(v2 + 88), v3);
  sub_1E673C54C();
  sub_1E68B3090();

  swift_getWitnessTable();
  sub_1E68B3310();
}

uint64_t sub_1E673B008(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  type metadata accessor for DataItemResolution(255, v6, v7, a4);
  v8 = sub_1E68B3470();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v18 - v11;
  type metadata accessor for DataItemResolutionPublisher.InterestContext(0, v6, v7, v13);
  sub_1E673B394(*a1, v14, v15, v16);
  v18[0] = v18[1];
  sub_1E68B34C0();
  sub_1E68B34A0();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1E673B160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v7 = *(*v5 + 80);
  v8 = *(*v5 + 88);
  type metadata accessor for DataItemResolution(255, v7, v8, a5);
  v9 = sub_1E68B3490();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - v11;
  v13 = sub_1E68B34D0();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v26 - v15;
  v17 = sub_1E68B1950();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B1940();
  sub_1E673B394(a1, v22, v23, v24);
  v26 = v35;
  v30 = a1;
  v31 = v5;
  v32 = v21;
  v33 = v27;
  v34 = v28;
  nullsub_5();
  sub_1E6782BB4(v12);
  sub_1E68B34E0();
  v35 = v26;
  sub_1E67FCC14(&v35, v16, v7, v8, v29);
  return (*(v18 + 8))(v21, v17);
}

void sub_1E673B394(uint64_t a1, void x1_0, void a3, uint64_t a4)
{
  v4 = *v3;
  v5 = v3[3];
  v7 = *(*v3 + 80);
  v8 = *(v4 + 88);
  v9 = a1;
  type metadata accessor for DataItemResolution(255, v7, v8, a4);
  sub_1E68B3750();
  sub_1E680AF38(sub_1E673C6B4, &v6, v5);
}

uint64_t sub_1E673B444(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a5;
  v51 = a6;
  v43 = a4;
  v45 = a1;
  v9 = *a3;
  v42 = sub_1E68B1950();
  v48 = *(v42 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v42, v10);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 80);
  v13 = *(v9 + 88);
  type metadata accessor for DataItemResolution(255, v12, v13, v14);
  v15 = sub_1E68B34C0();
  v44 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v40 - v18;
  v41 = type metadata accessor for DataItemResolutionPublisher.InterestContext(0, v12, v13, v20);
  v47 = *(v41 - 8);
  v22 = MEMORY[0x1EEE9AC00](v41, v21);
  v24 = &v40 - v23;
  (*(v16 + 16))(v19, a1, v15, v22);
  sub_1E673A52C(a2, v19, v12, v13, v24);
  v25 = a3[2];
  v53 = v12;
  v54 = v13;
  v26 = v43;
  v55 = v43;
  v56 = v24;
  sub_1E673C54C();
  v27 = v42;
  sub_1E68B30E0();

  sub_1E680AF38(sub_1E673C52C, v52, v25);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v48;
  v30 = v46;
  v31 = v27;
  (*(v48 + 16))(v46, v26, v27);
  v32 = v29;
  v33 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v34 = (v49 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 2) = v12;
  *(v35 + 3) = v13;
  *(v35 + 4) = v28;
  (*(v32 + 32))(&v35[v33], v30, v31);
  v36 = &v35[v34];
  v37 = v50;
  v38 = v51;
  *v36 = v50;
  v36[1] = v38;
  sub_1E6739D68(v37, v38);
  sub_1E68B3480();
  return (*(v47 + 8))(v24, v41);
}

uint64_t sub_1E673B7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for DataItemResolutionPublisher.InterestContext(255, a4, a5, a4);
  v8 = sub_1E68B3750();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v19 - v10;
  v12 = sub_1E68B1950();
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  (*(v16 + 16))(&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12, v14);
  v17 = *(v7 - 8);
  (*(v17 + 16))(v11, a3, v7);
  (*(v17 + 56))(v11, 0, 1, v7);
  sub_1E673C54C();
  sub_1E68B30E0();
  return sub_1E68B3120();
}

uint64_t sub_1E673B9BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E673BB30(a3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E673A5DC();

    if (a4)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1E68B3630();
      swift_getWitnessTable();
      sub_1E68B3640();
      a4();
    }
  }

  return result;
}

void sub_1E673BB30(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v6 = *(*v1 + 80);
  v7 = *(v2 + 88);
  v8 = a1;
  sub_1E68B1950();
  type metadata accessor for DataItemResolutionPublisher.InterestContext(255, v6, v7, v4);
  sub_1E673C54C();
  sub_1E68B30E0();
  sub_1E680AF38(sub_1E673C694, &v5, v3);
}

uint64_t sub_1E673BC00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  if (*a1)
  {
    v22 = a5;
    v21[1] = v21;
    v6 = a1[1];
    MEMORY[0x1EEE9AC00](a1, a2);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = sub_1E68B3030();

    if (MEMORY[0x1E6951900](v9, AssociatedTypeWitness, a3, AssociatedConformanceWitness) & 1) != 0 && (sub_1E68B35D0())
    {

      swift_getTupleTypeMetadata2();
      v10 = sub_1E68B3350();
      v11 = sub_1E678307C(v10, AssociatedTypeWitness, a3, AssociatedConformanceWitness);

      v12 = sub_1E68B3020();
      v13 = v22;
      v14 = v11;
    }

    else
    {
      v13 = v22;
      v14 = v9;
      v12 = v6;
    }
  }

  else
  {
    v16 = swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    v17 = sub_1E68B3350();
    v18 = swift_getAssociatedConformanceWitness();
    v19 = sub_1E678307C(v17, v16, a3, v18);

    v12 = sub_1E68B3020();
    v13 = a5;
    v14 = v19;
  }

  return DataItemResolution.init(resolved:failed:)(v14, v12, v13);
}

uint64_t sub_1E673BE98@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v17 - v11;
  sub_1E68B3830();
  swift_getAssociatedConformanceWitness();
  v13 = sub_1E68B35E0();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  v14 = *(a3 - 8);
  if (v13)
  {
    (*(*(a3 - 8) + 16))(a5, a1, a3);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v14 + 56))(a5, v15, 1, a3);
}

uint64_t sub_1E673C050(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E68B1950();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v32 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a3;
  v30 = a4;
  v12 = type metadata accessor for DataItemResolutionPublisher.InterestContext(255, a3, a4, v11);
  v27 = sub_1E68B3750();
  v13 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v14);
  v28 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v27 - v18;
  v20 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v27 - v23;
  v34 = a1;
  sub_1E673C54C();
  v33 = a2;
  sub_1E68B3110();
  if ((*(v20 + 48))(v19, 1, v12) == 1)
  {
    return (*(v13 + 8))(v19, v27);
  }

  (*(v20 + 32))(v24, v19, v12);
  type metadata accessor for DataItemResolution(255, v29, v30, v26);
  sub_1E68B34C0();
  sub_1E68B34B0();
  (*(v31 + 16))(v32, v33, v8);
  (*(v20 + 56))(v28, 1, 1, v12);
  sub_1E68B30E0();
  sub_1E68B3120();
  return (*(v20 + 8))(v24, v12);
}

uint64_t sub_1E673C388()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E673C3E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1E68B3630();
  if (v5 <= 0x3F)
  {
    type metadata accessor for DataItemResolution(255, v2, v1, v4);
    result = sub_1E68B34C0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E673C54C()
{
  result = qword_1EE2EDE78;
  if (!qword_1EE2EDE78)
  {
    sub_1E68B1950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDE78);
  }

  return result;
}

uint64_t sub_1E673C5A4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_1E68B1950() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[4];
  v8 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_1E673B9BC(a1, v7, v1 + v6, v9, v10, v3, v4);
}

uint64_t sub_1E673C730(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1E68B3890();
  return sub_1E68B3880();
}

uint64_t sub_1E673C7D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E673C814(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E673C854@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

FitnessCanvasUI::MonogramVerticalStackViewLayout __swiftcall MonogramVerticalStackViewLayout.init(artworkAspectRatio:artworkToTitleSpacing:)(CGSize artworkAspectRatio, Swift::Double artworkToTitleSpacing)
{
  *v2 = artworkAspectRatio.width;
  v2[1] = artworkAspectRatio.height;
  v2[2] = artworkToTitleSpacing;
  result.artworkAspectRatio.height = artworkAspectRatio.height;
  result.artworkAspectRatio.width = artworkAspectRatio.width;
  result.artworkToTitleSpacing = artworkToTitleSpacing;
  return result;
}

uint64_t sub_1E673C908()
{
  v1 = *v0;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E673C950(uint64_t a1)
{
  v2 = *v1;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v2);
  return sub_1E68B3BB0();
}

unint64_t sub_1E673C994()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1E673C9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001E68E2580 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E25A0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E68B3B00();

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
  return result;
}

uint64_t sub_1E673CACC(uint64_t a1)
{
  v2 = sub_1E673CDF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E673CB08(uint64_t a1)
{
  v2 = sub_1E673CDF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E673CB44()
{
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1EE2EABE0 = result;
  qword_1EE2EABF0 = 0x4014000000000000;
  return result;
}

double static MonogramVerticalStackViewLayout.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EE2EABD8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_1EE2EABF0;
  *a1 = xmmword_1EE2EABE0;
  *(a1 + 16) = result;
  return result;
}

uint64_t MonogramVerticalStackViewLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096DA8, &qword_1E68B4470);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E673CDF4();
  sub_1E68B3BD0();
  v12[0] = v9;
  v12[1] = v10;
  v13 = 0;
  type metadata accessor for CGSize(0);
  sub_1E673F08C(&qword_1EE2EA448, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
  sub_1E68B3AB0();
  if (!v2)
  {
    LOBYTE(v12[0]) = 1;
    sub_1E68B3A90();
  }

  return (*(v5 + 8))(v8, v4);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1E673CDF4()
{
  result = qword_1ED096DB0;
  if (!qword_1ED096DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096DB0);
  }

  return result;
}

uint64_t MonogramVerticalStackViewLayout.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096DB8, &qword_1E68B4478);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E673CDF4();
  sub_1E68B3BC0();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v15[15] = 0;
    sub_1E673F08C(&qword_1ED096DC0, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1E68B3A00();
    v10 = v16;
    v11 = v17;
    LOBYTE(v16) = 1;
    sub_1E68B39E0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v10;
    *(a2 + 1) = v11;
    *(a2 + 2) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t MonogramVerticalStackViewLayout.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1E69523F0](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1E69523F0](*&v5);
}

uint64_t MonogramVerticalStackViewLayout.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1E68B3B70();
  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x1E69523F0](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1E69523F0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1E69523F0](*&v6);
  return sub_1E68B3BB0();
}

uint64_t sub_1E673D200()
{
  v1 = v0[2];
  sub_1E673E7F4(*v0, v0[1]);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1E69523F0](*&v2);
}

uint64_t sub_1E673D24C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1E68B3B70();
  sub_1E673E7F4(v2, v3);
  v5 = 0.0;
  if (v4 != 0.0)
  {
    v5 = v4;
  }

  MEMORY[0x1E69523F0](*&v5);
  return sub_1E68B3BB0();
}

uint64_t sub_1E673D2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v21;
  v22 = type metadata accessor for MonogramVerticalStackView(0, a14, a15, a4);
  v23 = (a9 + v22[10]);
  *v23 = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  v24 = (a9 + v22[11]);
  *v24 = a7;
  v24[1] = a8;
  v24[2] = a10;
  v24[3] = a11;
  v25 = (a9 + v22[12]);
  v26 = swift_allocObject();
  *(v26 + 16) = a12;
  *(v26 + 24) = a13;
  *v25 = sub_1E673F5E0;
  v25[1] = v26;
  v27 = *(*(a14 - 8) + 32);
  v28 = a9 + v22[9];

  return v27(v28, a2, a14);
}

uint64_t sub_1E673D42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v77 = a2;
  v3 = sub_1E68B1EB0();
  v56 = v3;
  v76 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v75 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E68B1F60();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v72 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a1 - 8);
  v70 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = *(a1 + 16);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF0, &unk_1E68B4720);
  v87 = sub_1E68B1E40();
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E00, &unk_1E68B4730);
  v90 = v89;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08, &qword_1E68B7610);
  v13 = sub_1E68B1E40();
  WitnessTable = swift_getWitnessTable();
  v86 = MEMORY[0x1E697E040];
  v14 = swift_getWitnessTable();
  v15 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
  v83 = v14;
  v84 = v15;
  v64 = v13;
  v63 = swift_getWitnessTable();
  v16 = sub_1E68B2C30();
  v66 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v62 = &v52 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E10, &unk_1E68B4740);
  v58 = v16;
  v19 = sub_1E68B1E40();
  v65 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v61 = &v52 - v21;
  v22 = swift_getWitnessTable();
  v57 = v22;
  v23 = sub_1E673F530(&qword_1ED096E18, &qword_1ED096E10, &unk_1E68B4740, MEMORY[0x1E6980A18]);
  v81 = v22;
  v82 = v23;
  v24 = swift_getWitnessTable();
  v55 = v24;
  v54 = sub_1E673F08C(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v87 = v19;
  v88 = v3;
  v89 = v24;
  v90 = v54;
  v59 = MEMORY[0x1E697CDB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v26);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v53 = &v52 - v32;
  v33 = v68;
  v34 = v71;
  v35 = v67;
  (*(v68 + 16))(v12, v71, v67, v31);
  v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v37 = swift_allocObject();
  v38 = v35;
  v39 = *(v35 + 24);
  v40 = v69;
  *(v37 + 16) = v69;
  *(v37 + 24) = v39;
  (*(v33 + 32))(v37 + v36, v12, v38);
  v78 = v40;
  v79 = v39;
  v80 = v34;
  v41 = v62;
  sub_1E68B2C20();
  v42 = v72;
  sub_1E68B1F50();
  v43 = v61;
  v44 = v58;
  sub_1E68B28B0();
  (*(v73 + 8))(v42, v74);
  (*(v66 + 8))(v41, v44);
  v45 = v75;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v46 = v56;
  v47 = v55;
  v48 = v54;
  sub_1E68B2790();
  (*(v76 + 8))(v45, v46);
  (*(v65 + 8))(v43, v19);
  v87 = v19;
  v88 = v46;
  v89 = v47;
  v90 = v48;
  swift_getOpaqueTypeConformance2();
  v49 = v53;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v50 = *(v60 + 8);
  v50(v28, OpaqueTypeMetadata2);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v50)(v49, OpaqueTypeMetadata2);
}

uint64_t sub_1E673DCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + *(type metadata accessor for MonogramVerticalStackView(0, a2, a3, a4) + 48);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;

  sub_1E677A174(v5);
}

uint64_t sub_1E673DD3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a1;
  v30 = a3;
  v31 = a4;
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF0, &unk_1E68B4720);
  v39 = sub_1E68B1E40();
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E00, &unk_1E68B4730);
  v42 = v41;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v5 = sub_1E68B2CC0();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v26 - v7;
  v9 = sub_1E68B1E40();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v26 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E08, &qword_1E68B7610);
  v13 = sub_1E68B1E40();
  v28 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v26 - v19;
  sub_1E68B21C0();
  v32 = a2;
  v33 = v30;
  v34 = v29;
  sub_1E68B2CB0();
  sub_1E68B2E60();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B29F0();
  (*(v26 + 8))(v8, v5);
  v37 = WitnessTable;
  v38 = MEMORY[0x1E697E040];
  v22 = swift_getWitnessTable();
  sub_1E673F180();
  sub_1E68B2800();
  (*(v27 + 8))(v12, v9);
  v23 = sub_1E673F530(&qword_1EE2EA600, &qword_1ED096E08, &qword_1E68B7610, MEMORY[0x1E697FD58]);
  v35 = v22;
  v36 = v23;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v24 = *(v28 + 8);
  v24(v16, v13);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v24)(v20, v13);
}

uint64_t sub_1E673E1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v7 = sub_1E68B1E40();
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v47 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF0, &unk_1E68B4720);
  v11 = sub_1E68B1E40();
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v47 - v17;
  v48 = type metadata accessor for MonogramVerticalStackView(0, a2, a3, v19);
  sub_1E68B2780();
  v97 = a3;
  v98 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E673F1D4();
  sub_1E68B2AE0();
  (*(v61 + 8))(v10, v7);
  v21 = sub_1E673F530(&qword_1EE2EA870, &qword_1ED096DF0, &unk_1E68B4720, MEMORY[0x1E697DDB0]);
  v95 = WitnessTable;
  v96 = v21;
  v58 = swift_getWitnessTable();
  v59 = v18;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v22 = v49;
  v23 = v14;
  v24 = v11;
  v60 = *(v49 + 8);
  v61 = v49 + 8;
  v60(v14, v11);
  sub_1E68B2E80();
  v25 = v48;
  sub_1E68B1C50();
  v50 = v99;
  v51 = v101;
  v52 = v104;
  v53 = v103;
  v113 = 1;
  v26 = a1;
  v111 = v100;
  v109 = v102;
  v27 = (a1 + *(v25 + 40));
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  v56 = *v27;
  v57 = v30;
  v54 = v31;
  v55 = v29;
  if (v31)
  {
    KeyPath = swift_getKeyPath();
    LOBYTE(v76) = v30 & 1;
    *&v105 = v28;
    *(&v105 + 1) = v29;
    LOBYTE(v106) = v30 & 1;
    *v107 = 256;
    v33 = 2;
    v34 = v31;
  }

  else
  {
    v34 = 0;
    KeyPath = 0;
    v33 = 0;
    *v107 = 0;
    *&v106 = 0;
    v105 = 0uLL;
  }

  *(&v106 + 1) = v34;
  *&v107[8] = KeyPath;
  *&v107[16] = v33;
  v107[24] = 0;
  v35 = (v26 + *(v25 + 44));
  v37 = *v35;
  v36 = v35[1];
  v39 = v35[2];
  v38 = v35[3];
  if (v38)
  {
    v40 = swift_getKeyPath();
    LOBYTE(v76) = v39 & 1;
    *&v92 = v37;
    *(&v92 + 1) = v36;
    LOBYTE(v93) = v39 & 1;
    LOWORD(v94[0]) = 256;
    v41 = 2;
    v42 = v38;
  }

  else
  {
    v42 = 0;
    v40 = 0;
    v41 = 0;
    *&v94[0] = 0;
    *&v93 = 0;
    v92 = 0uLL;
  }

  *(&v93 + 1) = v42;
  *(&v94[0] + 1) = v40;
  *&v94[1] = v41;
  BYTE8(v94[1]) = 0;
  v43 = *(v22 + 16);
  v44 = v59;
  v43(v23, v59, v24);
  v76 = 0;
  v77 = v113;
  *v78 = *v112;
  *&v78[3] = *&v112[3];
  v79 = v50;
  v80 = v111;
  *v81 = *v110;
  *&v81[3] = *&v110[3];
  v82 = v51;
  v83 = v109;
  *v84 = *v108;
  *&v84[3] = *&v108[3];
  v85 = v53;
  v86 = v52;
  v87[0] = v23;
  v87[1] = &v76;
  v73 = v105;
  v74 = v106;
  v75[0] = *v107;
  *(v75 + 9) = *&v107[9];
  v70 = v92;
  v71 = v93;
  v72[0] = v94[0];
  *(v72 + 9) = *(v94 + 9);
  v87[2] = &v73;
  v87[3] = &v70;
  sub_1E673F228(v56, v55, v57, v54);
  sub_1E673F228(v37, v36, v39, v38);
  sub_1E673F27C(&v105, v90);
  sub_1E673F27C(&v92, v90);
  v67[0] = v24;
  v67[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096DF8, &unk_1E68BB7C0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E00, &unk_1E68B4730);
  v69 = v68;
  v63 = v58;
  v64 = sub_1E673F2EC();
  v65 = sub_1E673F370();
  v66 = v65;
  sub_1E6848F14(v87, 4uLL, v67);
  sub_1E673F578(&v92);
  sub_1E673F578(&v105);
  v45 = v60;
  v60(v44, v24);
  v88[0] = v70;
  v88[1] = v71;
  v89[0] = v72[0];
  *(v89 + 9) = *(v72 + 9);
  sub_1E673F578(v88);
  v90[0] = v73;
  v90[1] = v74;
  v91[0] = v75[0];
  *(v91 + 9) = *(v75 + 9);
  sub_1E673F578(v90);
  return v45(v23, v24);
}

uint64_t sub_1E673E7F4(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1E69523F0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1E69523F0](*&v3);
}

unint64_t sub_1E673E848()
{
  result = qword_1ED096DC8;
  if (!qword_1ED096DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096DC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MonogramVerticalStackViewLayout(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MonogramVerticalStackViewLayout(uint64_t result, int a2, int a3)
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

void sub_1E673E8F8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E673ED38();
    if (v2 <= 0x3F)
    {
      sub_1E673ED88(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E673E9A8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + ((v6 + 24) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 24) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_1E673EB20(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((((((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 24] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (((((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((((v9 + ((v8 + 24) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

void sub_1E673ED38()
{
  if (!qword_1EE2EA578)
  {
    v0 = sub_1E68B3750();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EA578);
    }
  }
}

void sub_1E673ED88(uint64_t a1)
{
  if (!qword_1EE2EBE68)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DD0, qword_1E68B45A0);
    v5 = type metadata accessor for AssumeEquatable(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EE2EBE68);
    }
  }
}

uint64_t getEnumTagSinglePayload for MonogramVerticalStackViewLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MonogramVerticalStackViewLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E673EF44()
{
  result = qword_1ED096DD8;
  if (!qword_1ED096DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096DD8);
  }

  return result;
}

unint64_t sub_1E673EFE0()
{
  result = qword_1ED096DE0;
  if (!qword_1ED096DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096DE0);
  }

  return result;
}

unint64_t sub_1E673F038()
{
  result = qword_1ED096DE8;
  if (!qword_1ED096DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096DE8);
  }

  return result;
}

uint64_t sub_1E673F08C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E673F0D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E673F0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for MonogramVerticalStackView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E673DCBC(v9, v5, v6, v7);
}

unint64_t sub_1E673F180()
{
  result = qword_1EE2EA4D8;
  if (!qword_1EE2EA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA4D8);
  }

  return result;
}

unint64_t sub_1E673F1D4()
{
  result = qword_1ED096E20;
  if (!qword_1ED096E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E20);
  }

  return result;
}

uint64_t sub_1E673F228(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E673F26C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E673F26C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E673F27C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E00, &unk_1E68B4730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E673F2EC()
{
  result = qword_1EE2EA7A0;
  if (!qword_1EE2EA7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096DF8, &unk_1E68BB7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7A0);
  }

  return result;
}

unint64_t sub_1E673F370()
{
  result = qword_1ED096E28;
  if (!qword_1ED096E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E00, &unk_1E68B4730);
    sub_1E673F3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E28);
  }

  return result;
}

unint64_t sub_1E673F3F4()
{
  result = qword_1ED096E30;
  if (!qword_1ED096E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E38, &unk_1E68B76E0);
    sub_1E673F4AC();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48, &qword_1E68BB6E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E30);
  }

  return result;
}

unint64_t sub_1E673F4AC()
{
  result = qword_1EE2EA810;
  if (!qword_1EE2EA810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E40, &unk_1E68B4750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA810);
  }

  return result;
}

uint64_t sub_1E673F530(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1E673F578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E00, &unk_1E68B4730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void StageSnappingScrollTargetBehavior.updateTarget(_:context:)()
{
  v1 = sub_1E68B1C00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  sub_1E68B2430();
  sub_1E68B1BF0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(v2 + 8);
  v15(v5, v1);
  v32.origin.x = v8;
  v32.origin.y = v10;
  v32.size.width = v12;
  v32.size.height = v14;
  MinY = CGRectGetMinY(v32);
  sub_1E68B1BF0();
  if (MinY != CGRectGetMinY(v33))
  {
    sub_1E68B2430();
    sub_1E68B1BF0();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v15(v5, v1);
    v34.origin.x = v18;
    v34.origin.y = v20;
    v34.size.width = v22;
    v34.size.height = v24;
    if (CGRectGetMinY(v34) == 0.0)
    {
      v25 = sub_1E68B1BE0();
      *(v26 + 8) = v6;
      v25(v31, 0);
    }

    else
    {
      sub_1E68B1BF0();
      if (CGRectGetMinY(v35) > 0.0)
      {
        sub_1E68B1BF0();
        v27 = CGRectGetMinY(v36);
        if (v27 > v6)
        {
          v28 = v27;
        }

        else
        {
          v28 = v6;
        }

        v29 = sub_1E68B1BE0();
        *(v30 + 8) = v28;
        v29(v31, 0);
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for StageSnappingScrollTargetBehavior(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StageSnappingScrollTargetBehavior(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t LazyCanvasItemContent.transformed<A, B, C>()@<X0>(ValueMetadata *a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v347 = a4;
  v348 = a6;
  v349 = a3;
  v350 = a5;
  v351 = a1;
  v352 = a2;
  v344 = a7;
  v8 = sub_1E68B1820();
  v9 = *(v8 - 8);
  v345 = v8;
  v346 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  *&v343 = &v328 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E68B25F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v328 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E68B1880();
  v341 = *(v17 - 8);
  *&v342 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v328 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v328 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v328 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v328 - v31;
  v33 = v7[13];
  v362[12] = v7[12];
  v362[13] = v33;
  v363[0] = v7[14];
  *(v363 + 9) = *(v7 + 233);
  v34 = v7[9];
  v362[8] = v7[8];
  v362[9] = v34;
  v35 = v7[11];
  v362[10] = v7[10];
  v362[11] = v35;
  v36 = v7[5];
  v362[4] = v7[4];
  v362[5] = v36;
  v37 = v7[7];
  v362[6] = v7[6];
  v362[7] = v37;
  v38 = v7[1];
  v362[0] = *v7;
  v362[1] = v38;
  v39 = v7[3];
  v362[2] = v7[2];
  v362[3] = v39;
  v40 = sub_1E67424C4(v362);
  switch(v40)
  {
    case 1:
      nullsub_5();
      v219 = v218;
      MEMORY[0x1EEE9AC00](v218, v220);
      strcpy(&v328 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      v353 = &type metadata for FullWidthStageViewLayout;
      v354 = v352;
      v355 = &type metadata for FullWidthStageViewStyle;
      v356 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v357 = v356;
      v358 = v356;
      v359 = sub_1E68B3750();
      v360 = v359;
      v361 = sub_1E68B3750();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v222 = TupleTypeMetadata[12];
      *&v343 = TupleTypeMetadata[16];
      v223 = TupleTypeMetadata[20];
      v224 = TupleTypeMetadata[24];
      v225 = TupleTypeMetadata[28];
      *&v339 = TupleTypeMetadata[32];
      v340 = TupleTypeMetadata[36];
      v341 = TupleTypeMetadata[40];
      *&v342 = v222;
      v226 = v219[5];
      v228 = v219[2];
      v227 = v219[3];
      v229 = v344;
      *(v344 + 64) = v219[4];
      *(v229 + 5) = v226;
      *(v229 + 2) = v228;
      *(v229 + 3) = v227;
      v230 = v219[9];
      v232 = v219[6];
      v231 = v219[7];
      *(v229 + 8) = v219[8];
      *(v229 + 9) = v230;
      *(v229 + 6) = v232;
      *(v229 + 7) = v231;
      v233 = v219[13];
      v235 = v219[10];
      v234 = v219[11];
      *(v229 + 12) = v219[12];
      *(v229 + 13) = v233;
      *(v229 + 10) = v235;
      *(v229 + 11) = v234;
      v236 = v219[1];
      *v229 = *v219;
      *(v229 + 1) = v236;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v237 = v345;
      v238 = __swift_project_value_buffer(v345, qword_1EE2EDF10);
      v239 = v346;
      v240 = *(v346 + 16);
      v240(&v229[v223], v238, v237);
      v241 = *(v239 + 56);
      v241(&v229[v223], 0, 1, v237);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v242 = __swift_project_value_buffer(v237, qword_1EE2EDED0);
      v240(&v229[v224], v242, v237);
      v241(&v229[v224], 0, 1, v237);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v243 = __swift_project_value_buffer(v237, qword_1EE2EDEF0);
      v240(&v229[v225], v243, v237);
      v241(&v229[v225], 0, 1, v237);
      v244 = v351;
      v245 = *(v351[-1].Description + 7);
      v245(&v229[v339], 1, 1, v351);
      v245(&v340[v229], 1, 1, v244);
      v246 = v349;
      (*(v349[-1].Description + 7))(&v229[v341], 1, 1, v349);
      v247 = v350;
      v248 = v352;
      (*(v350 + 32))(v352, v350);
      v229[v343] = 1;
      v353 = v244;
      v354 = v248;
      v355 = v246;
      v356 = v347;
      v357 = v247;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    case 2:
      nullsub_5();
      v157 = v156;
      MEMORY[0x1EEE9AC00](v156, v158);
      strcpy(&v328 - 48, "layout title description actionButton ");
      v353 = &type metadata for InfoActionCardViewLayout;
      v354 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v355 = v354;
      v356 = sub_1E68B3750();
      v159 = swift_getTupleTypeMetadata();
      v160 = v159[12];
      v161 = v159[16];
      *&v343 = v159[20];
      v162 = *v157;
      v163 = v157[1];
      v164 = v157[3];
      v165 = v344;
      *(v344 + 32) = v157[2];
      *(v165 + 3) = v164;
      *v165 = v162;
      *(v165 + 1) = v163;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v166 = v345;
      v167 = __swift_project_value_buffer(v345, qword_1EE2EDF10);
      v168 = v346;
      v169 = *(v346 + 16);
      v169(&v165[v160], v167, v166);
      v170 = *(v168 + 56);
      v170(&v165[v160], 0, 1, v166);
      v171 = v350;
      v172 = v352;
      if (qword_1ED096D50 != -1)
      {
        swift_once();
      }

      v173 = __swift_project_value_buffer(v166, qword_1ED096E50);
      v169(&v165[v161], v173, v166);
      v170(&v165[v161], 0, 1, v166);
      v174 = v351;
      (*(v351[-1].Description + 7))(&v165[v343], 1, 1, v351);
      v353 = v174;
      v354 = v172;
      v355 = v349;
      v356 = v347;
      v357 = v171;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    case 3:
      nullsub_5();
      v176 = *v175;
      v177 = v175[1];
      MEMORY[0x1EEE9AC00](v175, v178);
      strcpy(&v328 - 48, "artwork caption displayStyle layout title ");
      v179 = v352;
      v353 = v352;
      v354 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v355 = &type metadata for DynamicBrickDisplayStyle;
      v356 = &type metadata for DynamicBrickViewLayout;
      v357 = v354;
      v180 = swift_getTupleTypeMetadata();
      v181 = v180[12];
      *&v342 = v180[16];
      v182 = v344;
      v183 = (v344 + v180[20]);
      *&v343 = v180[24];
      v184 = v350;
      (*(v350 + 32))(v179, v350);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v185 = v345;
      v186 = __swift_project_value_buffer(v345, qword_1EE2EDEF0);
      v187 = v346;
      v188 = *(v346 + 16);
      v188(v182 + v181, v186, v185);
      v189 = *(v187 + 56);
      v189(v182 + v181, 0, 1, v185);
      *(v182 + v342) = 3;
      *v183 = v176;
      v183[1] = v177;
      if (qword_1EE2EDF08 != -1)
      {
        goto LABEL_73;
      }

      goto LABEL_37;
    case 4:
      nullsub_5();
      v342 = *v98;
      v99 = *(v98 + 2);
      MEMORY[0x1EEE9AC00](v98, v100);
      strcpy(&v328 - 48, "layout artwork title subtitle ");
      v101 = v352;
      v353 = &type metadata for MonogramVerticalStackViewLayout;
      v354 = v352;
      v355 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v356 = v355;
      v102 = swift_getTupleTypeMetadata();
      *&v343 = v102[12];
      v103 = v102[16];
      v104 = v102[20];
      v105 = v344;
      *v344 = v342;
      *(v105 + 16) = v99;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v106 = v345;
      v107 = __swift_project_value_buffer(v345, qword_1EE2EDF10);
      v108 = v346;
      v109 = *(v346 + 16);
      v109(v105 + v103, v107, v106);
      v110 = *(v108 + 56);
      v110(v105 + v103, 0, 1, v106);
      v111 = v350;
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v112 = __swift_project_value_buffer(v106, qword_1EE2EDED0);
      v109(v105 + v104, v112, v106);
      v110(v105 + v104, 0, 1, v106);
      (*(v111 + 32))(v101, v111);
      v353 = v351;
      v354 = v101;
      v355 = v349;
      v356 = v347;
      v357 = v111;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    case 5:
      nullsub_5();
      v250 = *v249;
      v251 = v249[1];
      MEMORY[0x1EEE9AC00](v249, v252);
      strcpy(&v328 - 48, "artwork caption displayStyle layout title ");
      v253 = v352;
      v353 = v352;
      v354 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v355 = &type metadata for DynamicBrickDisplayStyle;
      v356 = &type metadata for DynamicBrickViewLayout;
      v357 = v354;
      v254 = swift_getTupleTypeMetadata();
      v255 = v254[12];
      *&v342 = v254[16];
      v182 = v344;
      v256 = (v344 + v254[20]);
      *&v343 = v254[24];
      v184 = v350;
      (*(v350 + 32))(v253, v350);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v185 = v345;
      v257 = __swift_project_value_buffer(v345, qword_1EE2EDEF0);
      v258 = v346;
      v188 = *(v346 + 16);
      v188(v182 + v255, v257, v185);
      v189 = *(v258 + 56);
      v189(v182 + v255, 0, 1, v185);
      *(v182 + v342) = 3;
      *v256 = v250;
      v256[1] = v251;
      if (qword_1EE2EDF08 != -1)
      {
LABEL_73:
        swift_once();
      }

LABEL_37:
      v190 = __swift_project_value_buffer(v185, qword_1EE2EDF10);
      v191 = v343;
      v188(v182 + v343, v190, v185);
      v189(v182 + v191, 0, 1, v185);
      v353 = v351;
      v354 = v352;
      v355 = v349;
      v356 = v347;
      v357 = v184;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    case 6:
      nullsub_5();
      v272 = v271;
      MEMORY[0x1EEE9AC00](v271, v273);
      strcpy(&v328 - 48, "layout artwork title subtitle caption ");
      v274 = v352;
      v353 = &type metadata for StandardCardViewLayout;
      v354 = v352;
      v355 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v356 = v355;
      v357 = v355;
      v275 = swift_getTupleTypeMetadata();
      v276 = v275[16];
      v277 = v275[20];
      v278 = v275[24];
      v280 = v272[4];
      v279 = v272[5];
      v281 = v272[3];
      v282 = v344;
      *(v344 + 96) = *(v272 + 12);
      *(v282 + 4) = v280;
      *(v282 + 5) = v279;
      *(v282 + 3) = v281;
      v283 = *v272;
      v284 = v272[2];
      *(v282 + 1) = v272[1];
      *(v282 + 2) = v284;
      *v282 = v283;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v285 = v345;
      v286 = __swift_project_value_buffer(v345, qword_1EE2EDF10);
      v287 = v346;
      (*(v346 + 16))(&v282[v276], v286, v285);
      v288 = *(v287 + 56);
      v288(&v282[v276], 0, 1, v285);
      v288(&v282[v277], 1, 1, v285);
      v288(&v282[v278], 1, 1, v285);
      v289 = v350;
      (*(v350 + 32))(v274, v350);
      v353 = v351;
      v354 = v274;
      v355 = v349;
      v356 = v347;
      v357 = v289;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    case 7:
      nullsub_5();
      v193 = v192;
      MEMORY[0x1EEE9AC00](v192, v194);
      strcpy(&v328 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
      v353 = &type metadata for StandardHorizontalStackViewLayout;
      v354 = v352;
      v355 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v356 = v355;
      v357 = v355;
      v358 = v355;
      v359 = sub_1E68B3750();
      v195 = swift_getTupleTypeMetadata();
      *&v343 = v195[12];
      v196 = v195[16];
      v197 = v195[20];
      v198 = v195[24];
      v199 = v195[32];
      v341 = v195[28];
      *&v342 = v199;
      v200 = v193[5];
      v202 = v193[2];
      v201 = v193[3];
      v203 = v344;
      *(v344 + 64) = v193[4];
      *(v203 + 5) = v200;
      *(v203 + 2) = v202;
      *(v203 + 3) = v201;
      v204 = v193[9];
      v206 = v193[6];
      v205 = v193[7];
      *(v203 + 8) = v193[8];
      *(v203 + 9) = v204;
      *(v203 + 6) = v206;
      *(v203 + 7) = v205;
      v207 = v193[1];
      *v203 = *v193;
      *(v203 + 1) = v207;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v208 = v345;
      v209 = __swift_project_value_buffer(v345, qword_1EE2EDF10);
      v210 = v346;
      v211 = *(v346 + 16);
      v211(&v203[v196], v209, v208);
      v212 = *(v210 + 56);
      v212(&v203[v196], 0, 1, v208);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v213 = __swift_project_value_buffer(v208, qword_1EE2EDED0);
      v211(&v203[v197], v213, v208);
      v212(&v203[v197], 0, 1, v208);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v214 = __swift_project_value_buffer(v208, qword_1EE2EDEF0);
      v211(&v203[v198], v214, v208);
      v212(&v203[v198], 0, 1, v208);
      v212(&v203[v341], 1, 1, v208);
      v215 = v351;
      (*(v351[-1].Description + 7))(&v203[v342], 1, 1, v351);
      v216 = v350;
      v217 = v352;
      (*(v350 + 32))(v352, v350);
      v353 = v215;
      v354 = v217;
      v355 = v349;
      v356 = v347;
      v357 = v216;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    case 8:
      nullsub_5();
      v306 = *v305;
      v307 = *(v305 + 1);
      v308 = *(v305 + 2);
      v309 = *(v305 + 3);
      v310 = v305[32];
      v311 = *(v305 + 5);
      v312 = *(v305 + 6);
      MEMORY[0x1EEE9AC00](v305, v313);
      strcpy(&v328 - 48, "layout artwork title subtitle caption ");
      v353 = &type metadata for StandardVerticalStackViewLayout;
      v354 = v352;
      v355 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v356 = v355;
      v357 = v355;
      v314 = swift_getTupleTypeMetadata();
      *&v343 = v314[12];
      v315 = v314[16];
      v316 = v314[20];
      v317 = v314[24];
      v318 = v344;
      *v344 = v306;
      *(v318 + 8) = v307;
      *(v318 + 16) = v308;
      *(v318 + 24) = v309;
      *(v318 + 32) = v310;
      *(v318 + 40) = v311;
      *(v318 + 48) = v312;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v319 = v345;
      v320 = __swift_project_value_buffer(v345, qword_1EE2EDF10);
      v321 = v346;
      v322 = *(v346 + 16);
      v322(v318 + v315, v320, v319);
      v323 = *(v321 + 56);
      v323(v318 + v315, 0, 1, v319);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v324 = __swift_project_value_buffer(v319, qword_1EE2EDED0);
      v322(v318 + v316, v324, v319);
      v323(v318 + v316, 0, 1, v319);
      v323(v318 + v317, 1, 1, v319);
      v325 = v350;
      v326 = v352;
      (*(v350 + 32))(v352, v350);
      v353 = v351;
      v354 = v326;
      v355 = v349;
      v356 = v347;
      v357 = v325;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    case 9:
      nullsub_5();
      v127 = *(v126 + 4);
      v128 = *v126;
      v338 = v126[1];
      v339 = v128;
      sub_1E68B1870();
      sub_1E68B25D0();
      sub_1E68B2590();

      (*(v13 + 104))(v16, *MEMORY[0x1E6980EA8], v12);
      v129 = sub_1E68B2610();

      (*(v13 + 8))(v16, v12);
      v353 = v129;
      sub_1E67447E0();
      sub_1E68B1890();
      sub_1E68B1870();
      sub_1E68B2600();
      sub_1E68B25C0();
      v130 = sub_1E68B25E0();

      v353 = v130;
      sub_1E68B1890();
      v353 = sub_1E68B2B50();
      sub_1E6744834();
      sub_1E68B1890();
      sub_1E68B1870();
      sub_1E68B2600();
      sub_1E68B25B0();
      v131 = sub_1E68B25E0();

      v353 = v131;
      v340 = v24;
      sub_1E68B1890();
      v353 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      sub_1E6744888();
      v132 = sub_1E68B1890();
      MEMORY[0x1EEE9AC00](v132, v133);
      strcpy(&v328 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
      v134 = v352;
      v353 = &type metadata for SummaryCardViewLayout;
      v354 = v352;
      v355 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v356 = v355;
      v357 = v355;
      v358 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E88, &qword_1E68B9CF0);
      v135 = swift_getTupleTypeMetadata();
      v136 = v135[20];
      v334 = v135[16];
      v335 = v136;
      v137 = v135[28];
      v336 = v135[24];
      v337 = v137;
      v138 = v344;
      v139 = v338;
      *v344 = v339;
      *(v138 + 16) = v139;
      *(v138 + 32) = v127;
      (*(v350 + 32))(v134);
      v140 = sub_1E68B3360();
      v140[1].Kind = 20;
      v140[2].Kind = 88;
      v140[2].Description = 0xE100000000000000;
      v140[3].Kind = 88;
      v140[3].Description = 0xE100000000000000;
      v140[4].Kind = 88;
      v140[4].Description = 0xE100000000000000;
      v140[5].Kind = 88;
      v140[5].Description = 0xE100000000000000;
      v140[6].Kind = 88;
      v140[6].Description = 0xE100000000000000;
      v140[7].Kind = 88;
      v140[7].Description = 0xE100000000000000;
      v140[8].Kind = 88;
      v140[8].Description = 0xE100000000000000;
      v140[9].Kind = 88;
      v140[9].Description = 0xE100000000000000;
      v140[10].Kind = 88;
      v140[10].Description = 0xE100000000000000;
      v140[11].Kind = 88;
      v140[11].Description = 0xE100000000000000;
      v140[12].Kind = 88;
      v140[12].Description = 0xE100000000000000;
      v140[13].Kind = 88;
      v140[13].Description = 0xE100000000000000;
      v140[14].Kind = 88;
      v140[14].Description = 0xE100000000000000;
      v140[15].Kind = 88;
      v140[15].Description = 0xE100000000000000;
      v140[16].Kind = 88;
      v140[16].Description = 0xE100000000000000;
      v140[17].Kind = 88;
      v140[17].Description = 0xE100000000000000;
      v140[18].Kind = 88;
      v140[18].Description = 0xE100000000000000;
      v140[19].Kind = 88;
      v140[19].Description = 0xE100000000000000;
      v140[20].Kind = 88;
      v140[20].Description = 0xE100000000000000;
      v140[21].Kind = 88;
      v140[21].Description = 0xE100000000000000;
      v353 = v140;
      sub_1E68B1870();
      *&v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E90, &qword_1E68B4848);
      *&v338 = sub_1E67448DC();
      v141 = v343;
      sub_1E68B1840();
      v332 = sub_1E6744940();
      v142 = v334;
      v328 = v20;
      v329 = v28;
      v143 = v345;
      v144 = v141;
      sub_1E68B18F0();
      v145 = v346;
      v333 = v32;
      v146 = *(v346 + 8);
      v330 = v346 + 8;
      v331 = v146;
      v146(v144, v143);
      v346 = *(v145 + 56);
      v147 = v143;
      (v346)(v138 + v142, 0, 1, v143);
      v148 = sub_1E68B3360();
      v148[1].Kind = 20;
      v148[2].Kind = 88;
      v148[2].Description = 0xE100000000000000;
      v148[3].Kind = 88;
      v148[3].Description = 0xE100000000000000;
      v148[4].Kind = 88;
      v148[4].Description = 0xE100000000000000;
      v148[5].Kind = 88;
      v148[5].Description = 0xE100000000000000;
      v148[6].Kind = 88;
      v148[6].Description = 0xE100000000000000;
      v148[7].Kind = 88;
      v148[7].Description = 0xE100000000000000;
      v148[8].Kind = 88;
      v148[8].Description = 0xE100000000000000;
      v148[9].Kind = 88;
      v148[9].Description = 0xE100000000000000;
      v148[10].Kind = 88;
      v148[10].Description = 0xE100000000000000;
      v148[11].Kind = 88;
      v148[11].Description = 0xE100000000000000;
      v148[12].Kind = 88;
      v148[12].Description = 0xE100000000000000;
      v148[13].Kind = 88;
      v148[13].Description = 0xE100000000000000;
      v148[14].Kind = 88;
      v148[14].Description = 0xE100000000000000;
      v148[15].Kind = 88;
      v148[15].Description = 0xE100000000000000;
      v148[16].Kind = 88;
      v148[16].Description = 0xE100000000000000;
      v148[17].Kind = 88;
      v148[17].Description = 0xE100000000000000;
      v148[18].Kind = 88;
      v148[18].Description = 0xE100000000000000;
      v148[19].Kind = 88;
      v148[19].Description = 0xE100000000000000;
      v148[20].Kind = 88;
      v148[20].Description = 0xE100000000000000;
      v148[21].Kind = 88;
      v148[21].Description = 0xE100000000000000;
      v353 = v148;
      sub_1E68B1870();
      v149 = v144;
      sub_1E68B1840();
      v150 = v335;
      v151 = v329;
      sub_1E68B18F0();
      v331(v149, v147);
      v152 = *(v341 + 8);
      v153 = v342;
      v152(v340, v342);
      v152(v151, v153);
      v152(v333, v153);
      v154 = v346;
      (v346)(v138 + v150, 0, 1, v147);
      v154(v138 + v336, 1, 1, v147);
      v155 = sub_1E68B1A10();
      (*(*(v155 - 8) + 56))(v138 + v337, 1, 1, v155);
      v353 = v351;
      v354 = v352;
      v355 = v349;
      v356 = v347;
      v357 = v350;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    case 10:
      nullsub_5();
      v343 = *v290;
      v291 = *(v290 + 2);
      v292 = *(v290 + 24);
      v293 = *(v290 + 4);
      v294 = *(v290 + 5);
      MEMORY[0x1EEE9AC00](v290, v295);
      strcpy(&v328 - 48, "layout artwork title overlay ");
      v296 = v352;
      v353 = &type metadata for TallCardViewLayout;
      v354 = v352;
      v355 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v356 = &type metadata for Overlay;
      v297 = swift_getTupleTypeMetadata();
      v298 = *(v297 + 64);
      v299 = *(v297 + 80);
      v300 = v344;
      *v344 = v343;
      *(v300 + 16) = v291;
      *(v300 + 24) = v292;
      *(v300 + 32) = v293;
      *(v300 + 40) = v294;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v301 = v345;
      v302 = __swift_project_value_buffer(v345, qword_1EE2EDF10);
      v303 = v346;
      (*(v346 + 16))(v300 + v298, v302, v301);
      (*(v303 + 56))(v300 + v298, 0, 1, v301);
      v304 = v350;
      (*(v350 + 32))(v296, v350);
      *(v300 + v299) = 1;
      v353 = v351;
      v354 = v296;
      v355 = v349;
      v356 = v347;
      v357 = v304;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    case 11:
      nullsub_5();
      v76 = v75;
      MEMORY[0x1EEE9AC00](v75, v77);
      strcpy(&v328 - 48, "layout artwork title subtitle caption ");
      v78 = v352;
      v353 = &type metadata for VerticalStackCardLayout;
      v354 = v352;
      v355 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v356 = v355;
      v357 = v355;
      v79 = swift_getTupleTypeMetadata();
      *&v343 = v79[12];
      v80 = v79[16];
      v81 = v79[20];
      *&v342 = v79[24];
      v82 = v76[7];
      v84 = v76[4];
      v83 = v76[5];
      v85 = v344;
      *(v344 + 96) = v76[6];
      *(v85 + 7) = v82;
      *(v85 + 4) = v84;
      *(v85 + 5) = v83;
      v86 = *v76;
      v87 = v76[1];
      v88 = v76[3];
      *(v85 + 2) = v76[2];
      *(v85 + 3) = v88;
      *v85 = v86;
      *(v85 + 1) = v87;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v89 = v345;
      v90 = __swift_project_value_buffer(v345, qword_1EE2EDF10);
      v91 = v346;
      v92 = *(v346 + 16);
      v92(&v85[v80], v90, v89);
      v93 = *(v91 + 56);
      v93(&v85[v80], 0, 1, v89);
      v94 = v350;
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v95 = __swift_project_value_buffer(v89, qword_1EE2EDED0);
      v92(&v85[v81], v95, v89);
      v93(&v85[v81], 0, 1, v89);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v96 = __swift_project_value_buffer(v89, qword_1EE2EDEF0);
      v97 = v342;
      v92(&v85[v342], v96, v89);
      v93(&v85[v97], 0, 1, v89);
      (*(v94 + 32))(v78, v94);
      v353 = v351;
      v354 = v78;
      v355 = v349;
      v356 = v347;
      v357 = v94;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    case 12:
      MEMORY[0x1EEE9AC00](v40, v41);
      strcpy(&v328 - 48, "artwork footnote subtitle title ");
      v113 = v352;
      v353 = v352;
      v354 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v355 = v354;
      v356 = v354;
      v114 = swift_getTupleTypeMetadata();
      v115 = v114[12];
      v116 = v114[16];
      *&v343 = v114[20];
      v117 = v344;
      (*(v350 + 32))(v113);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v118 = v345;
      v119 = __swift_project_value_buffer(v345, qword_1EE2EDEF0);
      v120 = v346;
      v121 = *(v346 + 16);
      v121(v117 + v115, v119, v118);
      v122 = *(v120 + 56);
      v122(v117 + v115, 0, 1, v118);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v123 = __swift_project_value_buffer(v118, qword_1EE2EDED0);
      v121(v117 + v116, v123, v118);
      v122(v117 + v116, 0, 1, v118);
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v124 = __swift_project_value_buffer(v118, qword_1EE2EDF10);
      v125 = v343;
      v121(v117 + v343, v124, v118);
      v122(v117 + v125, 0, 1, v118);
      v353 = v351;
      v354 = v113;
      v355 = v349;
      v356 = v347;
      v357 = v350;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    case 13:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v259 = v352;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v261 = *(TupleTypeMetadata3 + 48);
      *&v343 = *(TupleTypeMetadata3 + 64);
      v262 = v350;
      v263 = v344;
      (*(v350 + 32))(v259, v350);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v264 = v345;
      v265 = __swift_project_value_buffer(v345, qword_1EE2EDED0);
      v266 = v346;
      v267 = *(v346 + 16);
      v267(v263 + v261, v265, v264);
      v268 = *(v266 + 56);
      v268(v263 + v261, 0, 1, v264);
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v269 = __swift_project_value_buffer(v264, qword_1EE2EDF10);
      v270 = v343;
      v267(v263 + v343, v269, v264);
      v268(v263 + v270, 0, 1, v264);
      v353 = v351;
      v354 = v259;
      v355 = v349;
      v356 = v347;
      v357 = v262;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
    default:
      nullsub_5();
      v43 = v42;
      MEMORY[0x1EEE9AC00](v42, v44);
      strcpy(&v328 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      v353 = &type metadata for ActionCardViewLayout;
      v354 = v352;
      v355 = &type metadata for ActionCardViewStyle;
      v356 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      v357 = v356;
      v358 = v356;
      v359 = v351;
      v360 = sub_1E68B3750();
      v45 = swift_getTupleTypeMetadata();
      v46 = v45[12];
      *&v343 = v45[16];
      v47 = v45[20];
      v48 = v45[24];
      v49 = v45[28];
      v50 = v45[32];
      v341 = v46;
      *&v342 = v50;
      v340 = v45[36];
      v51 = v43[7];
      v53 = v43[4];
      v52 = v43[5];
      v54 = v344;
      *(v344 + 96) = v43[6];
      *(v54 + 112) = v51;
      *(v54 + 64) = v53;
      *(v54 + 80) = v52;
      v55 = v43[11];
      v57 = v43[8];
      v56 = v43[9];
      *(v54 + 160) = v43[10];
      *(v54 + 176) = v55;
      *(v54 + 128) = v57;
      *(v54 + 144) = v56;
      v59 = v43[13];
      v58 = v43[14];
      v60 = v43[12];
      *(v54 + 240) = *(v43 + 30);
      *(v54 + 208) = v59;
      *(v54 + 224) = v58;
      *(v54 + 192) = v60;
      v61 = *v43;
      v62 = v43[1];
      v63 = v43[3];
      *(v54 + 32) = v43[2];
      *(v54 + 48) = v63;
      *v54 = v61;
      *(v54 + 16) = v62;
      if (qword_1EE2EDF08 != -1)
      {
        swift_once();
      }

      v64 = v345;
      v65 = __swift_project_value_buffer(v345, qword_1EE2EDF10);
      v66 = v346;
      v67 = *(v346 + 16);
      v67(v54 + v47, v65, v64);
      v68 = *(v66 + 56);
      v68(v54 + v47, 0, 1, v64);
      if (qword_1EE2EDEC8 != -1)
      {
        swift_once();
      }

      v69 = __swift_project_value_buffer(v64, qword_1EE2EDED0);
      v67(v54 + v48, v69, v64);
      v68(v54 + v48, 0, 1, v64);
      if (qword_1EE2EDEE8 != -1)
      {
        swift_once();
      }

      v70 = __swift_project_value_buffer(v64, qword_1EE2EDEF0);
      v67(v54 + v49, v70, v64);
      v68(v54 + v49, 0, 1, v64);
      v71 = v351;
      (*(v351[-1].Description + 7))(&v340[v54], 1, 1, v351);
      v72 = v350;
      v73 = v352;
      (*(v350 + 32))(v352, v350);
      *(v54 + v343) = 1;
      v74 = v347;
      (*(v347 + 32))(v71, v347);
      v353 = v71;
      v354 = v73;
      v355 = v349;
      v356 = v74;
      v357 = v72;
      v358 = v348;
      type metadata accessor for CanvasItemContent(0, &v353);
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E67424C4(uint64_t a1)
{
  if (*(a1 + 248) <= 0xBu)
  {
    return *(a1 + 248);
  }

  else
  {
    return (*a1 + 12);
  }
}

void CanvasItemContent.transformed()(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1, v2);
  v7 = &v202 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v35 = type metadata accessor for FullWidthItemDescriptor(0, a1[3], a1[6], v11);
      goto LABEL_15;
    case 2:
      v97 = *(v7 + 11);
      v232 = *(v7 + 10);
      v233 = v97;
      v98 = *(v7 + 13);
      v234 = *(v7 + 12);
      v235 = v98;
      v99 = *(v7 + 7);
      v228 = *(v7 + 6);
      v229 = v99;
      v100 = *(v7 + 9);
      v230 = *(v7 + 8);
      v231 = v100;
      v101 = *(v7 + 3);
      v224 = *(v7 + 2);
      v225 = v101;
      v102 = *(v7 + 5);
      v226 = *(v7 + 4);
      v227 = v102;
      v103 = *(v7 + 1);
      v222 = *v7;
      v223 = v103;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 112, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton customView ");
      v19 = a1[3];
      *&v280 = &type metadata for FullWidthStageViewLayout;
      *(&v280 + 1) = v19;
      *&v281 = &type metadata for FullWidthStageViewStyle;
      *(&v281 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *&v282 = *(&v281 + 1);
      *(&v282 + 1) = *(&v281 + 1);
      *&v283 = sub_1E68B3750();
      *(&v283 + 1) = v283;
      *&v284 = sub_1E68B3750();
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v105 = TupleTypeMetadata[12];
      v204 = TupleTypeMetadata[20];
      *&v205 = v105;
      *&v203 = TupleTypeMetadata[24];
      *&v202 = TupleTypeMetadata[28];
      v106 = TupleTypeMetadata[32];
      v107 = TupleTypeMetadata[36];
      v108 = TupleTypeMetadata[40];
      v275 = v232;
      v276 = v233;
      v277 = v234;
      v278 = v235;
      v271 = v228;
      v272 = v229;
      v273 = v230;
      v274 = v231;
      v267 = v224;
      v268 = v225;
      v269 = v226;
      v270 = v227;
      v265 = v222;
      v266 = v223;
      sub_1E6744AF8(&v265);
      v292 = v277;
      v293 = v278;
      v294[0] = v279[0];
      *(v294 + 9) = *(v279 + 9);
      v288 = v273;
      v289 = v274;
      v290 = v275;
      v291 = v276;
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      nullsub_5();
      v109 = v293;
      a2[12] = v292;
      a2[13] = v109;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v110 = v289;
      a2[8] = v288;
      a2[9] = v110;
      v111 = v291;
      a2[10] = v290;
      a2[11] = v111;
      v112 = v285;
      a2[4] = v284;
      a2[5] = v112;
      v113 = v287;
      a2[6] = v286;
      a2[7] = v113;
      v114 = v281;
      *a2 = v280;
      a2[1] = v114;
      v115 = v283;
      a2[2] = v282;
      a2[3] = v115;
      v116 = sub_1E68B3750();
      (*(*(v116 - 8) + 8))(&v7[v108], v116);
      v117 = sub_1E68B3750();
      v118 = *(*(v117 - 8) + 8);
      v118(&v7[v107], v117);
      v118(&v7[v106], v117);
      sub_1E6744A10(&v7[v202], &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(&v7[v203], &qword_1ED096E68, &qword_1E68B4840);
      v34 = &v7[v204];
      goto LABEL_10;
    case 3:
      v122 = *(v7 + 1);
      v236 = *v7;
      v237 = v122;
      v123 = *(v7 + 3);
      v238 = *(v7 + 2);
      v239 = v123;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 48, "layout title description actionButton ");
      *&v280 = &type metadata for InfoActionCardViewLayout;
      *(&v280 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *&v281 = *(&v280 + 1);
      *(&v281 + 1) = sub_1E68B3750();
      v124 = swift_getTupleTypeMetadata();
      v125 = v124[12];
      v126 = v124[16];
      v127 = v124[20];
      v265 = v236;
      v266 = v237;
      v267 = v238;
      v268 = v239;
      sub_1E6744AEC(&v265);
      v292 = v277;
      v293 = v278;
      v294[0] = v279[0];
      *(v294 + 9) = *(v279 + 9);
      v288 = v273;
      v289 = v274;
      v290 = v275;
      v291 = v276;
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      nullsub_5();
      v128 = v293;
      a2[12] = v292;
      a2[13] = v128;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v129 = v289;
      a2[8] = v288;
      a2[9] = v129;
      v130 = v291;
      a2[10] = v290;
      a2[11] = v130;
      v131 = v285;
      a2[4] = v284;
      a2[5] = v131;
      v132 = v287;
      a2[6] = v286;
      a2[7] = v132;
      v133 = v281;
      *a2 = v280;
      a2[1] = v133;
      v134 = v283;
      a2[2] = v282;
      a2[3] = v134;
      v135 = sub_1E68B3750();
      (*(*(v135 - 8) + 8))(&v7[v127], v135);
      sub_1E6744A10(&v7[v126], &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(&v7[v125], &qword_1ED096E68, &qword_1E68B4840);
      return;
    case 4:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 48, "artwork footnote subtitle title ");
      v52 = a1[3];
      *&v280 = v52;
      *(&v280 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *&v281 = *(&v280 + 1);
      *(&v281 + 1) = *(&v280 + 1);
      v53 = swift_getTupleTypeMetadata();
      *&v205 = v53[12];
      v54 = v53[16];
      v55 = v53[20];
      sub_1E6744AB8(&v265);
      v292 = v277;
      v293 = v278;
      v294[0] = v279[0];
      *(v294 + 9) = *(v279 + 9);
      v288 = v273;
      v289 = v274;
      v290 = v275;
      v291 = v276;
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      nullsub_5();
      v56 = v293;
      a2[12] = v292;
      a2[13] = v56;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v57 = v289;
      a2[8] = v288;
      a2[9] = v57;
      v58 = v291;
      a2[10] = v290;
      a2[11] = v58;
      v59 = v285;
      a2[4] = v284;
      a2[5] = v59;
      v60 = v287;
      a2[6] = v286;
      a2[7] = v60;
      v61 = v281;
      *a2 = v280;
      a2[1] = v61;
      v62 = v283;
      a2[2] = v282;
      a2[3] = v62;
      sub_1E6744A10(&v7[v55], &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(&v7[v54], &qword_1ED096E68, &qword_1E68B4840);
      v63 = &v7[v205];
      goto LABEL_18;
    case 5:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 48, "artwork caption displayStyle layout title ");
      v52 = a1[3];
      *&v280 = v52;
      *(&v280 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *&v281 = &type metadata for DynamicBrickDisplayStyle;
      *(&v281 + 1) = &type metadata for DynamicBrickViewLayout;
      *&v282 = *(&v280 + 1);
      v144 = swift_getTupleTypeMetadata();
      v120 = v144[12];
      v121 = v144[24];
      v265 = *&v7[v144[20]];
      sub_1E6744AAC(&v265);
      goto LABEL_17;
    case 6:
      v205 = *v7;
      v160 = *(v7 + 2);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 48, "layout artwork title subtitle ");
      v68 = a1[3];
      *&v280 = &type metadata for MonogramVerticalStackViewLayout;
      *(&v280 + 1) = v68;
      *&v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v281 + 1) = v281;
      v161 = swift_getTupleTypeMetadata();
      v70 = v161[12];
      v162 = v161[16];
      v163 = v161[20];
      v265 = v205;
      *&v266 = v160;
      sub_1E6744AA0(&v265);
      v292 = v277;
      v293 = v278;
      v294[0] = v279[0];
      *(v294 + 9) = *(v279 + 9);
      v288 = v273;
      v289 = v274;
      v290 = v275;
      v291 = v276;
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      nullsub_5();
      v164 = v293;
      a2[12] = v292;
      a2[13] = v164;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v165 = v289;
      a2[8] = v288;
      a2[9] = v165;
      v166 = v291;
      a2[10] = v290;
      a2[11] = v166;
      v167 = v285;
      a2[4] = v284;
      a2[5] = v167;
      v168 = v287;
      a2[6] = v286;
      a2[7] = v168;
      v169 = v281;
      *a2 = v280;
      a2[1] = v169;
      v170 = v283;
      a2[2] = v282;
      a2[3] = v170;
      sub_1E6744A10(&v7[v163], &qword_1ED096E68, &qword_1E68B4840);
      v79 = &v7[v162];
      goto LABEL_21;
    case 7:
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 48, "artwork caption displayStyle layout title ");
      v52 = a1[3];
      *&v280 = v52;
      *(&v280 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *&v281 = &type metadata for DynamicBrickDisplayStyle;
      *(&v281 + 1) = &type metadata for DynamicBrickViewLayout;
      *&v282 = *(&v280 + 1);
      v136 = swift_getTupleTypeMetadata();
      v120 = v136[12];
      v121 = v136[24];
      v265 = *&v7[v136[20]];
      sub_1E6744A94(&v265);
      goto LABEL_17;
    case 8:
      v246 = *(v7 + 12);
      v190 = *(v7 + 5);
      v244 = *(v7 + 4);
      v245 = v190;
      v191 = *(v7 + 1);
      v240 = *v7;
      v241 = v191;
      v192 = *(v7 + 3);
      v242 = *(v7 + 2);
      v243 = v192;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 48, "layout artwork title subtitle caption ");
      v38 = a1[3];
      *&v280 = &type metadata for StandardCardViewLayout;
      *(&v280 + 1) = v38;
      *&v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v281 + 1) = v281;
      *&v282 = v281;
      v193 = swift_getTupleTypeMetadata();
      v194 = v193[12];
      v204 = v193[16];
      *&v205 = v194;
      v158 = v193[20];
      v159 = v193[24];
      v269 = v244;
      v270 = v245;
      *&v271 = v246;
      v265 = v240;
      v266 = v241;
      v268 = v243;
      v267 = v242;
      sub_1E6744A88(&v265);
      goto LABEL_24;
    case 9:
      v80 = *(v7 + 7);
      v253 = *(v7 + 6);
      v254 = v80;
      v81 = *(v7 + 9);
      v255 = *(v7 + 8);
      v256 = v81;
      v82 = *(v7 + 3);
      v249 = *(v7 + 2);
      v250 = v82;
      v83 = *(v7 + 5);
      v251 = *(v7 + 4);
      v252 = v83;
      v84 = *(v7 + 1);
      v247 = *v7;
      v248 = v84;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 80, "layout artwork title subtitle caption groupTitle accessoryView ");
      v19 = a1[3];
      *&v280 = &type metadata for StandardHorizontalStackViewLayout;
      *(&v280 + 1) = v19;
      *&v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v281 + 1) = v281;
      *&v282 = v281;
      *(&v282 + 1) = v281;
      *&v283 = sub_1E68B3750();
      v85 = swift_getTupleTypeMetadata();
      v86 = v85[12];
      v204 = v85[16];
      *&v205 = v86;
      *&v203 = v85[20];
      *&v202 = v85[24];
      v87 = v85[28];
      v88 = v85[32];
      v271 = v253;
      v272 = v254;
      v273 = v255;
      v274 = v256;
      v267 = v249;
      v268 = v250;
      v269 = v251;
      v270 = v252;
      v265 = v247;
      v266 = v248;
      sub_1E6744A7C(&v265);
      v292 = v277;
      v293 = v278;
      v294[0] = v279[0];
      *(v294 + 9) = *(v279 + 9);
      v288 = v273;
      v289 = v274;
      v290 = v275;
      v291 = v276;
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      nullsub_5();
      v89 = v293;
      a2[12] = v292;
      a2[13] = v89;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v90 = v289;
      a2[8] = v288;
      a2[9] = v90;
      v91 = v291;
      a2[10] = v290;
      a2[11] = v91;
      v92 = v285;
      a2[4] = v284;
      a2[5] = v92;
      v93 = v287;
      a2[6] = v286;
      a2[7] = v93;
      v94 = v281;
      *a2 = v280;
      a2[1] = v94;
      v95 = v283;
      a2[2] = v282;
      a2[3] = v95;
      v96 = sub_1E68B3750();
      (*(*(v96 - 8) + 8))(&v7[v88], v96);
      sub_1E6744A10(&v7[v87], &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(&v7[v202], &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(&v7[v203], &qword_1ED096E68, &qword_1E68B4840);
      v34 = &v7[v204];
      goto LABEL_10;
    case 10:
      v171 = *v7;
      v172 = *(v7 + 1);
      v173 = *(v7 + 2);
      v174 = *(v7 + 3);
      v175 = v7[32];
      v176 = *(v7 + 5);
      v177 = *(v7 + 6);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 48, "layout artwork title subtitle caption ");
      v38 = a1[3];
      *&v280 = &type metadata for StandardVerticalStackViewLayout;
      *(&v280 + 1) = v38;
      *&v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v281 + 1) = v281;
      *&v282 = v281;
      v178 = swift_getTupleTypeMetadata();
      v179 = v178[12];
      v204 = v178[16];
      *&v205 = v179;
      v180 = v178[20];
      v181 = v178[24];
      LOBYTE(v265) = v171;
      *(&v265 + 1) = v172;
      *&v266 = v173;
      *(&v266 + 1) = v174;
      LOBYTE(v267) = v175;
      *(&v267 + 1) = v176;
      *&v268 = v177;
      sub_1E6744A70(&v265);
      v292 = v277;
      v293 = v278;
      v294[0] = v279[0];
      *(v294 + 9) = *(v279 + 9);
      v288 = v273;
      v289 = v274;
      v290 = v275;
      v291 = v276;
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      nullsub_5();
      v182 = v293;
      a2[12] = v292;
      a2[13] = v182;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v183 = v289;
      a2[8] = v288;
      a2[9] = v183;
      v184 = v291;
      a2[10] = v290;
      a2[11] = v184;
      v185 = v285;
      a2[4] = v284;
      a2[5] = v185;
      v186 = v287;
      a2[6] = v286;
      a2[7] = v186;
      v187 = v281;
      *a2 = v280;
      a2[1] = v187;
      v188 = v283;
      a2[2] = v282;
      a2[3] = v188;
      sub_1E6744A10(&v7[v181], &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(&v7[v180], &qword_1ED096E68, &qword_1E68B4840);
      v189 = &v7[v204];
      goto LABEL_26;
    case 11:
      v36 = *(v7 + 4);
      v37 = *v7;
      v202 = *(v7 + 1);
      v203 = v37;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 80, "layout artwork title subtitle caption artworkBackgroundColor ");
      v38 = a1[3];
      *&v280 = &type metadata for SummaryCardViewLayout;
      *(&v280 + 1) = v38;
      *&v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v281 + 1) = v281;
      *&v282 = v281;
      *(&v282 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E88, &qword_1E68B9CF0);
      v39 = swift_getTupleTypeMetadata();
      v40 = v39[12];
      v204 = v39[16];
      *&v205 = v40;
      v41 = v39[20];
      v42 = v39[24];
      v43 = v39[28];
      v265 = v203;
      v266 = v202;
      *&v267 = v36;
      sub_1E6744A04(&v265);
      v292 = v277;
      v293 = v278;
      v294[0] = v279[0];
      *(v294 + 9) = *(v279 + 9);
      v288 = v273;
      v289 = v274;
      v290 = v275;
      v291 = v276;
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      nullsub_5();
      v44 = v293;
      a2[12] = v292;
      a2[13] = v44;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v45 = v289;
      a2[8] = v288;
      a2[9] = v45;
      v46 = v291;
      a2[10] = v290;
      a2[11] = v46;
      v47 = v285;
      a2[4] = v284;
      a2[5] = v47;
      v48 = v287;
      a2[6] = v286;
      a2[7] = v48;
      v49 = v281;
      *a2 = v280;
      a2[1] = v49;
      v50 = v283;
      a2[2] = v282;
      a2[3] = v50;
      sub_1E6744A10(&v7[v43], &qword_1ED096E88, &qword_1E68B9CF0);
      sub_1E6744A10(&v7[v42], &qword_1ED096E68, &qword_1E68B4840);
      v51 = &v7[v41];
      goto LABEL_25;
    case 12:
      v205 = *v7;
      v64 = *(v7 + 2);
      v65 = v7[24];
      v66 = *(v7 + 4);
      v67 = *(v7 + 5);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 48, "layout artwork title overlay ");
      v68 = a1[3];
      *&v280 = &type metadata for TallCardViewLayout;
      *(&v280 + 1) = v68;
      *&v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v281 + 1) = &type metadata for Overlay;
      v69 = swift_getTupleTypeMetadata();
      v70 = *(v69 + 48);
      v71 = *(v69 + 64);
      v265 = v205;
      *&v266 = v64;
      BYTE8(v266) = v65;
      *&v267 = v66;
      *(&v267 + 1) = v67;
      sub_1E67449F8(&v265);
      v292 = v277;
      v293 = v278;
      v294[0] = v279[0];
      *(v294 + 9) = *(v279 + 9);
      v288 = v273;
      v289 = v274;
      v290 = v275;
      v291 = v276;
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      nullsub_5();
      v72 = v293;
      a2[12] = v292;
      a2[13] = v72;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v73 = v289;
      a2[8] = v288;
      a2[9] = v73;
      v74 = v291;
      a2[10] = v290;
      a2[11] = v74;
      v75 = v285;
      a2[4] = v284;
      a2[5] = v75;
      v76 = v287;
      a2[6] = v286;
      a2[7] = v76;
      v77 = v281;
      *a2 = v280;
      a2[1] = v77;
      v78 = v283;
      a2[2] = v282;
      a2[3] = v78;
      v79 = &v7[v71];
LABEL_21:
      sub_1E6744A10(v79, &qword_1ED096E68, &qword_1E68B4840);
      (*(*(v68 - 8) + 8))(&v7[v70], v68);
      break;
    case 13:
      v152 = *(v7 + 5);
      v261 = *(v7 + 4);
      v262 = v152;
      v153 = *(v7 + 7);
      v263 = *(v7 + 6);
      v264 = v153;
      v154 = *(v7 + 1);
      v257 = *v7;
      v258 = v154;
      v155 = *(v7 + 3);
      v259 = *(v7 + 2);
      v260 = v155;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 48, "layout artwork title subtitle caption ");
      v38 = a1[3];
      *&v280 = &type metadata for VerticalStackCardLayout;
      *(&v280 + 1) = v38;
      *&v281 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *(&v281 + 1) = v281;
      *&v282 = v281;
      v156 = swift_getTupleTypeMetadata();
      v157 = v156[12];
      v204 = v156[16];
      *&v205 = v157;
      v158 = v156[20];
      v159 = v156[24];
      v269 = v261;
      v270 = v262;
      v271 = v263;
      v272 = v264;
      v265 = v257;
      v266 = v258;
      v267 = v259;
      v268 = v260;
      sub_1E67449EC(&v265);
LABEL_24:
      v292 = v277;
      v293 = v278;
      v294[0] = v279[0];
      *(v294 + 9) = *(v279 + 9);
      v288 = v273;
      v289 = v274;
      v290 = v275;
      v291 = v276;
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      nullsub_5();
      v195 = v293;
      a2[12] = v292;
      a2[13] = v195;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v196 = v289;
      a2[8] = v288;
      a2[9] = v196;
      v197 = v291;
      a2[10] = v290;
      a2[11] = v197;
      v198 = v285;
      a2[4] = v284;
      a2[5] = v198;
      v199 = v287;
      a2[6] = v286;
      a2[7] = v199;
      v200 = v281;
      *a2 = v280;
      a2[1] = v200;
      v201 = v283;
      a2[2] = v282;
      a2[3] = v201;
      sub_1E6744A10(&v7[v159], &qword_1ED096E68, &qword_1E68B4840);
      v51 = &v7[v158];
LABEL_25:
      sub_1E6744A10(v51, &qword_1ED096E68, &qword_1E68B4840);
      v189 = &v7[v204];
LABEL_26:
      sub_1E6744A10(v189, &qword_1ED096E68, &qword_1E68B4840);
      (*(*(v38 - 8) + 8))(&v7[v205], v38);
      break;
    case 14:
      v35 = a1[4];
LABEL_15:
      (*(*(v35 - 8) + 8))(v7);
      sub_1E6744B04(&v280);
      v137 = v293;
      a2[12] = v292;
      a2[13] = v137;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v138 = v289;
      a2[8] = v288;
      a2[9] = v138;
      v139 = v291;
      a2[10] = v290;
      a2[11] = v139;
      v140 = v285;
      a2[4] = v284;
      a2[5] = v140;
      v141 = v287;
      a2[6] = v286;
      a2[7] = v141;
      v142 = v281;
      *a2 = v280;
      a2[1] = v142;
      v143 = v283;
      a2[2] = v282;
      a2[3] = v143;
      break;
    case 15:
      v52 = a1[3];
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v120 = *(TupleTypeMetadata3 + 48);
      v121 = *(TupleTypeMetadata3 + 64);
      sub_1E6744998(&v265);
LABEL_17:
      v292 = v277;
      v293 = v278;
      v294[0] = v279[0];
      *(v294 + 9) = *(v279 + 9);
      v288 = v273;
      v289 = v274;
      v290 = v275;
      v291 = v276;
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      nullsub_5();
      v145 = v293;
      a2[12] = v292;
      a2[13] = v145;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v146 = v289;
      a2[8] = v288;
      a2[9] = v146;
      v147 = v291;
      a2[10] = v290;
      a2[11] = v147;
      v148 = v285;
      a2[4] = v284;
      a2[5] = v148;
      v149 = v287;
      a2[6] = v286;
      a2[7] = v149;
      v150 = v281;
      *a2 = v280;
      a2[1] = v150;
      v151 = v283;
      a2[2] = v282;
      a2[3] = v151;
      sub_1E6744A10(&v7[v121], &qword_1ED096E68, &qword_1E68B4840);
      v63 = &v7[v120];
LABEL_18:
      sub_1E6744A10(v63, &qword_1ED096E68, &qword_1E68B4840);
      (*(*(v52 - 8) + 8))(v7, v52);
      break;
    default:
      v221 = *(v7 + 30);
      v12 = *(v7 + 13);
      v218 = *(v7 + 12);
      v219 = v12;
      v220 = *(v7 + 14);
      v13 = *(v7 + 9);
      v214 = *(v7 + 8);
      v215 = v13;
      v14 = *(v7 + 11);
      v216 = *(v7 + 10);
      v217 = v14;
      v15 = *(v7 + 5);
      v210 = *(v7 + 4);
      v211 = v15;
      v16 = *(v7 + 7);
      v212 = *(v7 + 6);
      v213 = v16;
      v17 = *(v7 + 1);
      v206 = *v7;
      v207 = v17;
      v18 = *(v7 + 3);
      v208 = *(v7 + 2);
      v209 = v18;
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v10);
      strcpy(&v202 - 96, "layout artwork style title subtitle caption primaryActionButton secondaryActionButton ");
      v19 = a1[3];
      *&v280 = &type metadata for ActionCardViewLayout;
      *(&v280 + 1) = v19;
      *&v281 = &type metadata for ActionCardViewStyle;
      *(&v281 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E68, &qword_1E68B4840);
      *&v282 = *(&v281 + 1);
      v20 = a1[2];
      *(&v282 + 1) = *(&v281 + 1);
      *&v283 = v20;
      *(&v283 + 1) = sub_1E68B3750();
      v21 = swift_getTupleTypeMetadata();
      v22 = v21[12];
      v204 = v21[20];
      *&v205 = v22;
      *&v203 = v21[24];
      v23 = v21[28];
      v24 = v21[32];
      v25 = v21[36];
      v277 = v218;
      v278 = v219;
      v279[0] = v220;
      *&v279[1] = v221;
      v273 = v214;
      v274 = v215;
      v275 = v216;
      v276 = v217;
      v269 = v210;
      v270 = v211;
      v271 = v212;
      v272 = v213;
      v265 = v206;
      v266 = v207;
      v267 = v208;
      v268 = v209;
      sub_1E6744B38(&v265);
      v292 = v277;
      v293 = v278;
      v294[0] = v279[0];
      *(v294 + 9) = *(v279 + 9);
      v288 = v273;
      v289 = v274;
      v290 = v275;
      v291 = v276;
      v284 = v269;
      v285 = v270;
      v286 = v271;
      v287 = v272;
      v280 = v265;
      v281 = v266;
      v282 = v267;
      v283 = v268;
      nullsub_5();
      v26 = v293;
      a2[12] = v292;
      a2[13] = v26;
      a2[14] = v294[0];
      *(a2 + 233) = *(v294 + 9);
      v27 = v289;
      a2[8] = v288;
      a2[9] = v27;
      v28 = v291;
      a2[10] = v290;
      a2[11] = v28;
      v29 = v285;
      a2[4] = v284;
      a2[5] = v29;
      v30 = v287;
      a2[6] = v286;
      a2[7] = v30;
      v31 = v281;
      *a2 = v280;
      a2[1] = v31;
      v32 = v283;
      a2[2] = v282;
      a2[3] = v32;
      v33 = sub_1E68B3750();
      (*(*(v33 - 8) + 8))(&v7[v25], v33);
      (*(*(v20 - 8) + 8))(&v7[v24], v20);
      sub_1E6744A10(&v7[v23], &qword_1ED096E68, &qword_1E68B4840);
      sub_1E6744A10(&v7[v203], &qword_1ED096E68, &qword_1E68B4840);
      v34 = &v7[v204];
LABEL_10:
      sub_1E6744A10(v34, &qword_1ED096E68, &qword_1E68B4840);
      (*(*(v19 - 8) + 8))(&v7[v205], v19);
      break;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1E6744780(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E68B1820();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1E68B1780();
}

unint64_t sub_1E67447E0()
{
  result = qword_1ED096E70;
  if (!qword_1ED096E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E70);
  }

  return result;
}

unint64_t sub_1E6744834()
{
  result = qword_1ED096E78;
  if (!qword_1ED096E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E78);
  }

  return result;
}

unint64_t sub_1E6744888()
{
  result = qword_1ED096E80;
  if (!qword_1ED096E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E80);
  }

  return result;
}

unint64_t sub_1E67448DC()
{
  result = qword_1ED096E98;
  if (!qword_1ED096E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096E90, &qword_1E68B4848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096E98);
  }

  return result;
}

unint64_t sub_1E6744940()
{
  result = qword_1ED096EA0;
  if (!qword_1ED096EA0)
  {
    sub_1E68B1820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096EA0);
  }

  return result;
}

double sub_1E6744998(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 12;
  return result;
}

uint64_t sub_1E6744A10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1E6744AB8(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 248) = 12;
  return result;
}

double sub_1E6744B04(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 248) = -1;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for DynamicLayoutProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DynamicLayoutProvider(_WORD *result, int a2, int a3)
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

uint64_t sub_1E6744CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E68B2200();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  (*(*(a2 - 8) + 16))(&v12 - v10, a1, a2, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1E68B2210();
}

uint64_t sub_1E6744DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E68B2200();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1E68B2210();
}

uint64_t ConditionalViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a1;
  v81 = a3;
  swift_getWitnessTable();
  v4 = sub_1E68B22E0();
  v5 = *(a2 + 24);
  v6 = sub_1E68B1E40();
  v72 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v70 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v71 = &v65 - v11;
  v75 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v73 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v82 = v4;
  v16 = sub_1E68B1E40();
  v69 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v68 = &v65 - v22;
  v23 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a2 + 32);
  v29 = v15;
  *&v30 = v15;
  v76 = v5;
  *(&v30 + 1) = v5;
  v83 = v28;
  v98[1] = v28;
  v98[0] = v30;
  v31 = type metadata accessor for ConditionalViewModifier.Storage(0, v98);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v65 - v34;
  v36 = v6;
  v80 = sub_1E68B2220();
  v79 = *(v80 - 8);
  v38 = MEMORY[0x1EEE9AC00](v80, v37);
  v78 = &v65 - v39;
  (*(v32 + 16))(v35, v74, v31, v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v73;
    v41 = v76;
    (*(v75 + 32))(v73, v35, v76);
    v42 = v82;
    WitnessTable = swift_getWitnessTable();
    v44 = v70;
    MEMORY[0x1E69512E0](v40, v42, v41, WitnessTable);
    v96 = WitnessTable;
    v97 = *(&v83 + 1);
    v77 = swift_getWitnessTable();
    v45 = v72;
    v46 = *(v72 + 16);
    v47 = v71;
    v46(v71, v44, v36);
    v48 = *(v45 + 8);
    v48(v44, v36);
    v46(v44, v47, v36);
    v94 = WitnessTable;
    v95 = v83;
    v49 = swift_getWitnessTable();
    v50 = v78;
    sub_1E6744DB8(v44, v16, v36, v49, v77);
    v48(v44, v36);
    v48(v47, v36);
    (*(v75 + 8))(v73, v76);
  }

  else
  {
    v67 = v23;
    v51 = *(v23 + 32);
    v66 = v27;
    v65 = v29;
    v51(v27, v35, v29);
    v52 = v82;
    v53 = swift_getWitnessTable();
    MEMORY[0x1E69512E0](v27, v52, v29, v53);
    v86 = v53;
    v87 = v83;
    v77 = swift_getWitnessTable();
    v54 = v69;
    v55 = *(v69 + 16);
    v56 = v68;
    v55(v68, v19, v16);
    v57 = *(v54 + 8);
    v57(v19, v16);
    v55(v19, v56, v16);
    v84 = v53;
    v85 = *(&v83 + 1);
    v58 = swift_getWitnessTable();
    v50 = v78;
    sub_1E6744CC0(v19, v16, v36, v77, v58);
    v57(v19, v16);
    v57(v56, v16);
    (*(v67 + 8))(v66, v65);
  }

  v59 = swift_getWitnessTable();
  v92 = v59;
  v93 = v83;
  v60 = swift_getWitnessTable();
  v90 = v59;
  v91 = *(&v83 + 1);
  v61 = swift_getWitnessTable();
  v88 = v60;
  v89 = v61;
  v62 = v80;
  swift_getWitnessTable();
  v63 = v79;
  (*(v79 + 16))(v81, v50, v62);
  return (*(v63 + 8))(v50, v62);
}