double sub_1AAEF585C@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 32))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1AAEF58E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[5];
  v5 = v2[6];
  a2[3] = v2[3];
  a2[4] = v4;
  sub_1AACB2508(a2);
  return v5(a1);
}

uint64_t sub_1AAEF5998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x39 && *(a1 + 17))
  {
    return (*a1 + 57);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 16) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x38)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AAEF59EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x38)
  {
    *(result + 16) = 0;
    *result = a2 - 57;
    *(result + 8) = 0;
    if (a3 >= 0x39)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x39)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1AAEF5A74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AAEF5ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1AAEF5B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v37 = a4;
  v33 = a1;
  v34 = a5;
  sub_1AAEF7758(0, &qword_1ED9ADA40, MEMORY[0x1E6980398], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  sub_1AAD62488();
  v38 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1AAF8E5B4();
  v19 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8E5C4();
  sub_1AACE8C58(a2, v18, type metadata accessor for _ChartContentInputs);
  v22 = sub_1AAF8F184();
  sub_1AAEF77F4(0, v23, v24, v25);
  sub_1AAEF784C(v26, v27, v28, v29);
  sub_1AAF8DCB4();
  v22(v39, 0);
  sub_1AAEF5B38(v15, v18, v36, v37, v34);
  sub_1AAD602F8(v11, v8);
  v30 = sub_1AAF8E5E4();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v8, 1, v30) == 1)
  {
    sub_1AAD6038C(v11);
    (*(v13 + 8))(v15, v38);
    sub_1AAEF657C(v18, type metadata accessor for _ChartContentInputs);
    (*(v19 + 8))(v21, v35);
    return sub_1AAD6038C(v8);
  }

  else
  {
    sub_1AAF8E5D4();
    sub_1AAD6038C(v11);
    (*(v13 + 8))(v15, v38);
    sub_1AAEF657C(v18, type metadata accessor for _ChartContentInputs);
    (*(v19 + 8))(v21, v35);
    return (*(v31 + 8))(v8, v30);
  }
}

uint64_t static _ChartContentModifier._makeChartContent(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a4;
  v37 = a3;
  v33 = a1;
  v35 = a7;
  sub_1AAEF7758(0, &qword_1ED9ADA40, MEMORY[0x1E6980398], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = sub_1AAF8D954();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v17 = &v30 - v16;
  v18 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1AAF8E5B4();
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8E5C4();
  sub_1AACE8C58(a2, v20, type metadata accessor for _ChartContentInputs);
  v23 = sub_1AAF8F184();
  type metadata accessor for ChartContentModifierBodyAccessor(0, a5, a6, v24);
  swift_getWitnessTable();
  sub_1AAF8DCB4();
  v23(v40, 0);
  v25 = v32;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v17, v20, v37, v39, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1AAD602F8(v14, v25);
  v27 = sub_1AAF8E5E4();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v25, 1, v27) == 1)
  {
    sub_1AAD6038C(v14);
    (*(v36 + 8))(v17, v38);
    sub_1AAEF657C(v20, type metadata accessor for _ChartContentInputs);
    (*(v31 + 8))(v22, v34);
    return sub_1AAD6038C(v25);
  }

  else
  {
    sub_1AAF8E5D4();
    sub_1AAD6038C(v14);
    (*(v36 + 8))(v17, v38);
    sub_1AAEF657C(v20, type metadata accessor for _ChartContentInputs);
    (*(v31 + 8))(v22, v34);
    return (*(v28 + 8))(v25, v27);
  }
}

uint64_t static _ChartContentModifier._collectChartContent(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(a6 + 24))(a5, a6, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v14, a2, a3, v18, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t sub_1AAEF657C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAEF65DC(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for ChartContentModifierBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable();
    return sub_1AAF8DCA4();
  }

  return result;
}

uint64_t static ChartModifiedContent<>._makeChartContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a3;
  v24 = a5;
  v26 = a7;
  v27 = a2;
  type metadata accessor for ChartModifiedContent(255, a3, a4, a4);
  v11 = sub_1AAF8D954();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v25 = sub_1AAF8D954();
  v15 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v22 - v16;
  v28 = a3;
  v29 = a4;
  v18 = v24;
  v30 = v24;
  v31 = a6;
  sub_1AAF007E4(sub_1AAEF69E4, a4, &v22 - v16);
  (*(v12 + 16))(v14, a1, v11);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v23;
  *(v20 + 3) = a4;
  *(v20 + 4) = v18;
  *(v20 + 5) = a6;
  (*(v12 + 32))(&v20[v19], v14, v11);
  (*(a6 + 32))(v17, v27, sub_1AAEF6B58, v20, a4, a6);

  return (*(v15 + 8))(v17, v25);
}

uint64_t sub_1AAEF694C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ChartModifiedContent(0, a2, a3, a4);
  v7 = *(v6 + 36);
  v11[2] = v6;
  v11[3] = a3;
  v8 = sub_1AAF8D1C4();
  sub_1AACBE580(a1 + v7, sub_1AAD62CC4, v11, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t sub_1AAEF69F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1AAF8D954();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17[-v13];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  type metadata accessor for ChartModifiedContent(255, a3, a4, v15);
  sub_1AAF8D954();
  sub_1AAF007E4(sub_1AAEF78A4, a3, v14);
  (*(a5 + 48))(v14, a1, a3, a5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1AAEF6B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];
  type metadata accessor for ChartModifiedContent(255, v6, v7, a4);
  v10 = *(sub_1AAF8D954() - 8);
  v11 = v4 + ((*(v10 + 80) + 48) & ~*(v10 + 80));

  return sub_1AAEF69F0(a1, v11, v6, v7, v8, v9);
}

uint64_t sub_1AAEF6C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ChartModifiedContent(0, a2, a3, a4);
  v9[3] = a2;
  v6 = sub_1AAF8D1C4();
  sub_1AACBE580(a1, sub_1AAD62594, v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t static ChartModifiedContent<>._collectChartContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(type metadata accessor for ChartModifiedContent(0, a3, a4, a4) + 36);
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  return (*(a6 + 40))(a1 + v12, a2, sub_1AAEF6D64, v14, a4, a6);
}

uint64_t ChartContent.modifier<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return ChartModifiedContent.init(content:modifier:)(v14, v10, a2, a3, a4);
}

uint64_t sub_1AAEF6F94(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAEF6FE4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAEF7070(unsigned int *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = type metadata accessor for _ChartContentInputs(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE8C58(a2, v12, type metadata accessor for _ChartContentInputs);
  type metadata accessor for _ContainerValueWritingChartContentModifier(0, a5, v13, v14);
  v15 = sub_1AACBC3B4(a1);
  v16 = *(a2 + *(v10 + 32));
  v24[0] = v15;
  v24[1] = v16;
  v19 = type metadata accessor for _ContainerValueWritingChartContentModifier.AddContainerValue(0, a5, v17, v18);
  v26 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_1AAEF7758(0, &qword_1ED9B4428, type metadata accessor for ChartContainerValues, MEMORY[0x1E698D388]);
  sub_1AACBC418(v24, sub_1AACBC5D4, v25, v19, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  *&v12[*(v10 + 32)] = v23[5];
  a3(v12);
  return sub_1AAEF657C(v12, type metadata accessor for _ChartContentInputs);
}

uint64_t sub_1AAEF7260@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for _ContainerValueWritingChartContentModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

uint64_t sub_1AAEF72E8@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for ChartContainerValues(0);
  Value = AGGraphGetValue();
  return sub_1AACE8C58(Value, a2, type metadata accessor for ChartContainerValues);
}

double sub_1AAEF7340@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ContainerValueWritingChartContentModifier(0, v8, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v24 - v16;
  sub_1AAEF72E8(a3);
  sub_1AAEF7260(a2, v18, v19, v17);
  v20 = *(v12 + 8);

  v20(v17, v11);
  sub_1AAEF7260(a2, v21, v22, v14);
  (*(v5 + 16))(v7, &v14[*(v11 + 28)], a2);
  v20(v14, v11);
  swift_setAtWritableKeyPath();

  return result;
}

uint64_t sub_1AAEF7548(char *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _ChartContentCollectInputs(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE8C58(a2, v14, type metadata accessor for _ChartContentCollectInputs);
  v17 = type metadata accessor for _ContainerValueWritingChartContentModifier(0, a5, v15, v16);
  (*(v9 + 16))(v11, &a1[*(v17 + 28)], a5);
  swift_setAtWritableKeyPath();
  a3(v14);
  return sub_1AAEF657C(v14, type metadata accessor for _ChartContentCollectInputs);
}

void sub_1AAEF7758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AAEF77F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB426D78)
  {
    v4 = type metadata accessor for ChartContentModifierBodyAccessor(0, MEMORY[0x1E69E73E0], &protocol witness table for Never, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB426D78);
    }
  }
}

unint64_t sub_1AAEF784C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1EB426D80[0];
  if (!qword_1EB426D80[0])
  {
    sub_1AAEF77F4(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB426D80);
  }

  return result;
}

uint64_t sub_1AAEF78B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ChartModifiedContent.init(content:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for ChartModifiedContent(0, a3, a4, v9);
  v11 = *(*(a4 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a4);
}

uint64_t sub_1AAEF7AFC(uint64_t a1)
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

uint64_t static ForEach<>._makeChartContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v47 = a8;
  v42 = a3;
  v50 = a1;
  v66 = *MEMORY[0x1E69E9840];
  v53 = type metadata accessor for SetDependency(0) - 8;
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v49 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v20);
  v46 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  ContainerVMa = _s13MakeContainerVMa(0, &v60);
  v51 = *(ContainerVMa - 8);
  MEMORY[0x1EEE9AC00](ContainerVMa);
  v43 = (&v41 - v22);
  v23 = type metadata accessor for AddPreference(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v59 = v25;
  sub_1AAF8E394();
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v44 = sub_1AAF8E4B4();
  v45 = *(v44 - 8);
  v26 = *(v45 + 24);
  v27 = a9;
  v41 = a9;
  v26(a9, v25, v44);
  sub_1AAEFE894(v25, type metadata accessor for AddPreference);
  v28 = v42;
  v60 = v42;
  v61 = a4;
  v29 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  sub_1AAF8EFE4();
  LODWORD(a9) = sub_1AACBC3B4(v50);
  v30 = v46;
  sub_1AACE8BF0(a2, v46, type metadata accessor for _ChartContentInputs);
  v31 = v49;
  sub_1AACE8BF0(v27, v49, type metadata accessor for _ChartContentOutputs);
  v32 = v47;
  v33 = v43;
  sub_1AAEF8BAC(a9, v30, v31, v28, v29, a5, a6, a7, v43, v47);
  v60 = v28;
  v61 = v29;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = v32;
  ContainerV5ValueVMa = _s13MakeContainerV5ValueVMa(0, &v60);
  v35 = ContainerVMa;
  v56 = ContainerV5ValueVMa;
  v57 = ContainerVMa;
  WitnessTable = swift_getWitnessTable();
  v36 = sub_1AAF8D1A4();
  sub_1AACBC418(v33, sub_1AAD4AE90, v55, v35, MEMORY[0x1E69E73E0], v36, MEMORY[0x1E69E7410], v37);
  LODWORD(a6) = v60;
  v38 = v52;
  (*(v45 + 16))(v52, v41, v44);
  v39 = v38 + *(v53 + 28);
  *v39 = a6;
  *(v39 + 4) = 0;
  v54 = v38;
  sub_1AAF8E484();
  (*(v51 + 8))(v33, v35);
  return sub_1AAEFE894(v38, type metadata accessor for SetDependency);
}

uint64_t static ForEach<>._collectChartContent(content:inputs:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v88 = a7;
  v89 = a8;
  v90 = a6;
  v86 = a1;
  v87 = a5;
  v97 = a4;
  v82 = a2;
  v61 = a9;
  v12 = *(*(a6 + 1) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &TupleTypeMetadata2 - v13;
  v92 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &TupleTypeMetadata2 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &TupleTypeMetadata2 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v62 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v74 = &TupleTypeMetadata2 - v19;
  v94 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = sub_1AAF8FE74();
  v80 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &TupleTypeMetadata2 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v96 = &TupleTypeMetadata2 - v23;
  v85 = v12;
  v24 = swift_getAssociatedTypeWitness();
  v79 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &TupleTypeMetadata2 - v25;
  v27 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &TupleTypeMetadata2 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(swift_getAssociatedConformanceWitness() + 8);
  v68 = sub_1AAF90354();
  MEMORY[0x1EEE9AC00](v68);
  v67 = (&TupleTypeMetadata2 - v31);
  v91 = sub_1AAF90344();
  v60 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v33 = &TupleTypeMetadata2 - v32;
  v34 = type metadata accessor for _ChartContentCollectInputs(0);
  v35 = v34 - 8;
  MEMORY[0x1EEE9AC00](v34);
  v37 = &TupleTypeMetadata2 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE8BF0(v82, v37, type metadata accessor for _ChartContentCollectInputs);
  v103[0] = MEMORY[0x1E69E7CC0];
  v103[1] = 0uLL;
  v103[2] = xmmword_1AAF92AC0;
  LOBYTE(v103[3]) = 0;
  *(&v103[3] + 1) = 0;
  v103[4] = 0uLL;
  v103[5] = xmmword_1AAF92AC0;
  LOBYTE(v103[6]) = 0;
  *(&v103[6] + 1) = 0;
  v103[7] = 0uLL;
  v103[8] = xmmword_1AAF92AC0;
  LOBYTE(v103[9]) = 0;
  *(&v103[9] + 1) = 0;
  v103[10] = 0uLL;
  v103[11] = xmmword_1AAF92AC0;
  LOBYTE(v103[12]) = 0;
  *(&v103[12] + 1) = 0;
  v103[13] = 0uLL;
  v103[14] = xmmword_1AAF92AC0;
  LOBYTE(v103[15]) = 0;
  *(&v103[15] + 1) = 0;
  v103[16] = 0uLL;
  v103[17] = xmmword_1AAF92AC0;
  LOBYTE(v103[18]) = 0;
  *(&v103[18] + 1) = 0;
  v103[19] = 0uLL;
  v103[20] = xmmword_1AAF92AC0;
  LOBYTE(v103[21]) = 0;
  *(&v103[21] + 1) = 0;
  v103[22] = 0uLL;
  v103[23] = xmmword_1AAF92AC0;
  LOBYTE(v103[24]) = 0;
  *(&v103[24] + 1) = 0;
  v103[25] = 0uLL;
  v103[26] = xmmword_1AAF92AC0;
  LOBYTE(v103[27]) = 0;
  *(&v103[27] + 1) = 0;
  v103[28] = 0uLL;
  v103[29] = xmmword_1AAF92AC0;
  LOBYTE(v103[30]) = 0;
  *(&v103[30] + 8) = 0u;
  *(&v103[31] + 8) = 0u;
  *(&v103[32] + 1) = 1;
  memset(&v103[33], 0, 275);
  v38 = TupleTypeMetadata2;
  v39 = *(v35 + 28);
  v82 = v37;
  v71 = v39;
  v40 = *&v37[v39];

  v99 = a3;
  *&v100 = v97;
  *(&v100 + 1) = v87;
  v101 = v90;
  v102 = v88;
  v70 = sub_1AAF8EFE4();
  sub_1AAF8EF94();
  sub_1AAF8FB74();
  v41 = *(v27 + 8);
  v72 = v30;
  v73 = v27 + 8;
  v78 = a3;
  v69 = v41;
  v41(v30, a3);
  MEMORY[0x1AC598390](v24, v66);
  (*(v79 + 8))(v26, v24);
  v90 = v33;
  sub_1AAF90324();
  v79 = v38 - 8;
  v80 += 4;
  v67 = (v93 + 16);
  v68 = (v62 + 4);
  v65 = v89 + 64;
  v66 = (v93 + 8);
  v63 = (v81 + 8);
  v64 = (v92 + 8);
  ++v62;
  v81 = v40;
  v42 = v76;
  while (1)
  {
    v43 = v83;
    sub_1AAF90334();
    v44 = v96;
    (*v80)(v96, v43, v84);
    if ((*(*(v38 - 8) + 48))(v44, 1, v38) == 1)
    {
      break;
    }

    v45 = v74;
    (*v68)(v74, &v96[*(v38 + 48)], v94);
    v46 = v95;
    sub_1AAF8EFA4();
    v47 = sub_1AAEDEF58(v46, v81, v97, v88);
    v93 = v47;

    v48 = v82;
    *&v82[v71] = v47;
    v92 = sub_1AAF8EFB4();
    v49 = v72;
    sub_1AAF8EF94();
    v50 = v78;
    v51 = sub_1AAF8FC84();
    v52 = v38;
    v53 = AssociatedTypeWitness;
    (*v67)(v42);
    v51(&v98, 0);
    v69(v49, v50);
    v54 = v75;
    v92(v42);

    v55 = v53;
    v38 = v52;
    (*v66)(v42, v55);
    v56 = v87;
    (*(v89 + 64))(&v99, v54, v48, v87);
    (*v64)(v54, v56);

    sub_1AADC8BA0(v57);
    sub_1AAEEC248(&v100);
    sub_1AAD58308(&v99);
    (*v63)(v95, v97);
    (*v62)(v45, v94);
  }

  (*(v60 + 8))(v90, v91);

  memcpy(v61, v103, 0x323uLL);
  return sub_1AAEFE894(v82, type metadata accessor for _ChartContentCollectInputs);
}

id sub_1AAEF8BAC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a8;
  v15[5] = a10;
  ContainerVMa = _s13MakeContainerVMa(0, v15);
  sub_1AAE27A30(a2, a9 + ContainerVMa[17], type metadata accessor for _ChartContentInputs);
  sub_1AAE27A30(a3, a9 + ContainerVMa[18], type metadata accessor for _ChartContentOutputs);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a9 + ContainerVMa[19]) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAEF8C6C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  ContainerV5ValueVMa = _s13MakeContainerV5ValueVMa(0, v12);
  Value = AGGraphGetValue();
  return (*(*(ContainerV5ValueVMa - 8) + 16))(a8, Value, ContainerV5ValueVMa);
}

uint64_t sub_1AAEF8D00@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a8;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  ContainerV5ValueVMa = _s13MakeContainerV5ValueVMa(0, &v22);
  v15 = *(ContainerV5ValueVMa - 8);
  MEMORY[0x1EEE9AC00](ContainerV5ValueVMa);
  v17 = &v20 - v16;
  sub_1AAEF8C6C(a2, a3, a4, a5, a6, a7, &v20 - v16);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v18 = sub_1AAF8EFE4();
  (*(*(v18 - 8) + 16))(v21, v17, v18);
  return (*(v15 + 8))(v17, ContainerV5ValueVMa);
}

uint64_t sub_1AAEF8F04@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v19 = sub_1AAF8EFE4();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a10;
  result = _s13MakeContainerV5ValueVMa(0, &v21);
  *(a9 + *(result + 68)) = a2;
  *(a9 + *(result + 72)) = a3;
  return result;
}

uint64_t sub_1AAEF8FE4(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v58 = *(a1 + 16);
  v3 = v58;
  v59 = v2;
  v60 = v4;
  v61 = v5;
  v55 = *(a1 + 48);
  v62 = v55;
  ContainerV5ValueVMa = _s13MakeContainerV5ValueVMa(0, &v58);
  v7 = *(ContainerV5ValueVMa - 8);
  v56 = ContainerV5ValueVMa;
  v57 = v7;
  MEMORY[0x1EEE9AC00](ContainerV5ValueVMa);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v51 - v14;
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v3;
  v59 = v2;
  v60 = v4;
  v61 = v5;
  *&v62 = v55;
  v19 = sub_1AAF8EFE4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  sub_1AAD47688(&v51 - v21);
  sub_1AAF8EF94();
  v23 = sub_1AAF8FB34();
  (*(v15 + 8))(v18, v3);
  v24 = v56;
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue)
  {
    v42 = v54;
    v43 = sub_1AAEF96F0(v22, v23 > 99, a1, v54);
    MEMORY[0x1EEE9AC00](v43);
    *(&v51 - 2) = a1;
    *(&v51 - 1) = swift_getWitnessTable();
    sub_1AACBC418(v42, sub_1AAD4B490, (&v51 - 4), v24, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v44);
    (*(v57 + 8))(v42, v24);
    return (*(v20 + 8))(v22, v19);
  }

  v26 = v24;
  v27 = v19;
  v28 = v57;
  if (v23 < 201)
  {
    v29 = v26;
    v30 = v20;
    v31 = v22;
    if (v23 <= 49 && *(OutputValue + *(v26 + 68)) == 1)
    {
      v46 = v51;
      (*(v57 + 16))(v51, OutputValue, v26);
      sub_1AAEF9A10(v46, a1);
      v33 = *(v28 + 8);
      v33(v46, v26);
      v34 = v54;
      v47 = sub_1AAEF96F0(v31, 0, a1, v54);
      v57 = v31;
      v36 = v30;
      MEMORY[0x1EEE9AC00](v47);
      v37 = &v51 - 4;
      *(&v51 - 2) = a1;
      *(&v51 - 1) = swift_getWitnessTable();
      v39 = MEMORY[0x1E69E7CA8];
      v40 = MEMORY[0x1E69E73E0];
      v41 = MEMORY[0x1E69E7410];
      goto LABEL_9;
    }
  }

  else
  {
    v29 = v26;
    v30 = v20;
    v31 = v22;
    if ((*(OutputValue + *(v26 + 68)) & 1) == 0)
    {
      v32 = v52;
      (*(v57 + 16))(v52, OutputValue, v26);
      sub_1AAEF9A10(v32, a1);
      v33 = *(v28 + 8);
      v33(v32, v26);
      v34 = v54;
      v35 = sub_1AAEF96F0(v31, 1, a1, v54);
      v57 = v31;
      v36 = v30;
      MEMORY[0x1EEE9AC00](v35);
      v37 = &v51 - 4;
      *(&v51 - 2) = a1;
      *(&v51 - 1) = swift_getWitnessTable();
      v39 = MEMORY[0x1E69E7CA8];
      v40 = MEMORY[0x1E69E73E0];
      v41 = MEMORY[0x1E69E7410];
LABEL_9:
      sub_1AACBC418(v34, sub_1AAD4BC60, v37, v29, v40, v39 + 8, v41, v38);
      v33(v34, v29);
      return (*(v36 + 8))(v57, v27);
    }
  }

  v48 = v53;
  (*(v57 + 16))(v53, OutputValue, v29);
  v49 = (*(v30 + 24))(v48, v31, v27);
  MEMORY[0x1EEE9AC00](v49);
  *(&v51 - 2) = a1;
  *(&v51 - 1) = swift_getWitnessTable();
  sub_1AACBC418(v48, sub_1AAD4BC60, (&v51 - 4), v29, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v50);
  (*(v30 + 8))(v31, v27);
  return (*(v28 + 8))(v48, v29);
}

uint64_t sub_1AAEF96F0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v31 = a2;
  v32 = a4;
  v8 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 24);
  v33 = *(a3 + 32);
  *&v20 = v14;
  v29 = *(a3 + 48);
  v30 = v19;
  *(&v20 + 1) = v19;
  v35 = v33;
  v34 = v20;
  v36 = v29;
  sub_1AAF8EFE4();
  sub_1AAF8EF94();
  v21 = *(&v33 + 1);
  sub_1AAF8FB34();
  (*(v15 + 8))(v18, v14);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v23 = result;
    v28 = a1;
    v24 = AGSubgraphGetGraph();
    v25 = AGSubgraphCreate();

    AGSubgraphAddChild();
    sub_1AACE8BF0(v5 + *(a3 + 68), v13, type metadata accessor for _ChartContentInputs);
    sub_1AACE8BF0(v5 + *(a3 + 72), v10, type metadata accessor for _ChartContentOutputs);
    AGGraphClearUpdate();
    v26 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    sub_1AAEF9B38(v23, v28, v31 & 1, v13, v10, v25, v14, v30, v32, v33, v21, v29, *(a3 + 56));
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    sub_1AAEFE894(v10, type metadata accessor for _ChartContentOutputs);
    return sub_1AAEFE894(v13, type metadata accessor for _ChartContentInputs);
  }

  return result;
}

uint64_t sub_1AAEF9A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetPreference(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 72);
  v8 = sub_1AAF8E4B4();
  (*(*(v8 - 8) + 16))(v6, v2 + v7, v8);
  v12 = v6;
  sub_1AAF8E484();
  sub_1AAEFE894(v6, type metadata accessor for ResetPreference);
  v9 = *(a2 + 32);
  v13[0] = *(a2 + 16);
  v13[1] = v9;
  v13[2] = *(a2 + 48);
  _s13MakeContainerV5ValueVMa(0, v13);
  return AGSubgraphInvalidate();
}

id sub_1AAEF9B38@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v50 = a5;
  v47 = a4;
  v46 = a3;
  v55 = a2;
  LODWORD(v57) = a1;
  v53 = a6;
  v51 = a9;
  v58 = a13;
  v73 = *MEMORY[0x1E69E9840];
  v67 = a7;
  v68 = a8;
  v69 = a10;
  v70 = a11;
  v71 = a12;
  v15 = sub_1AAF8EFE4();
  v49 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v43 - v16;
  v45 = type metadata accessor for SetSource(0);
  MEMORY[0x1EEE9AC00](v45);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1AAF8D954();
  v19 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v21 = (&v43 - v20);
  v22 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v57;
  v64 = v15;
  v52 = a7;
  v67 = a7;
  v68 = a8;
  v25 = a8;
  v54 = a10;
  v69 = a10;
  v70 = a11;
  v56 = a11;
  v57 = a12;
  v71 = a12;
  v72 = v58;
  v26 = _s14ForEachContentVMa(0, &v67);
  v65 = v26;
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1AAF8D1A4();
  v28 = MEMORY[0x1E69E73E0];
  v29 = MEMORY[0x1E69E7410];
  sub_1AACBC418(&v59, sub_1AACBC5B0, v63, v26, MEMORY[0x1E69E73E0], v27, MEMORY[0x1E69E7410], v30);
  v31 = v67;
  v61 = v15;
  v62 = v67;
  sub_1AACBC418(v55, sub_1AAD4B5E8, v60, v15, v28, MEMORY[0x1E69E6370], v29, v32);
  v33 = v31;
  v34 = v46;
  sub_1AACBC644(v33, v21);
  v35 = v52;
  v36 = v25;
  if (v34)
  {
    sub_1AAEFA0BC(v21, v47, v52, v25, v54, v56, v57, v58);
  }

  else
  {
    sub_1AAEFA29C(v21, v47, v52, v25, v54, v56, v57, v58, v24);
  }

  (*(v19 + 8))(v21, v44);
  v37 = sub_1AAF8E4B4();
  v38 = *(*(v37 - 8) + 16);
  v38(v18, v50, v37);
  v39 = (v38)(&v18[*(v45 + 20)], v24, v37);
  MEMORY[0x1EEE9AC00](v39);
  sub_1AAF8E484();
  sub_1AAEFE894(v24, type metadata accessor for _ChartContentOutputs);
  sub_1AAEFE894(v18, type metadata accessor for SetSource);
  v40 = v48;
  (*(v49 + 16))(v48, v55, v15);
  sub_1AAEF8F04(v40, v34 & 1, v53, v35, v36, v54, v56, v57, v51, v58);
  v41 = v53;

  return v41;
}

uint64_t sub_1AAEFA0BC(unsigned int *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  v26[3] = HIDWORD(a4);
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v10 = sub_1AAF8EFE4();
  v11 = sub_1AACBC3B4(a1);
  v12 = sub_1AAF8F164();
  type metadata accessor for _ChartContentInputs(0);
  v25 = a8;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1AAF08B80(v11, v12);
  v15 = v14;
  LODWORD(v12) = v16;
  v17 = HIDWORD(v14);
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v26[0] = v15;
  v26[1] = v17;
  v26[2] = v12;
  v23 = type metadata accessor for CollectContent(0, v10, WitnessTable, v18);
  v24 = swift_getWitnessTable();
  sub_1AAEFE91C();
  sub_1AACBC418(v26, sub_1AAEFE8F4, v22, v23, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t sub_1AAEFA29C@<X0>(unsigned int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a2;
  v72 = a1;
  v68 = a9;
  v79 = *MEMORY[0x1E69E9840];
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v76 = a6;
  v77 = a7;
  v78 = a8;
  v15 = _s21AttachCombinerVisitorVMa_0(0, &v73);
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v58 - v16;
  v70 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v76 = a6;
  v77 = a7;
  v78 = a8;
  StateVMa_0 = _s9MakeStateVMa_0(0, &v73);
  v62 = *(StateVMa_0 - 8);
  v63 = StateVMa_0;
  MEMORY[0x1EEE9AC00](StateVMa_0);
  v60 = (&v58 - v19);
  v64 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v64);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v76 = a6;
  v77 = a7;
  v78 = a8;
  v61 = a8;
  v25 = _s18AddCombinerVisitorVMa_0(0, &v73);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v58 - v26);
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v59 = v24;
  sub_1AAE27A30(v24, v27, type metadata accessor for _ChartContentOutputs);
  v28 = v25;
  v29 = v71;
  sub_1AAF02370(v27, v70, v28, &off_1EE75E3B8, &off_1F1FE3978);
  v30 = a3;
  v73 = a3;
  v74 = a4;
  v31 = a4;
  v32 = a5;
  v75 = a5;
  v76 = a6;
  v33 = a6;
  v34 = a7;
  v77 = a7;
  v35 = v69;
  sub_1AAF8EFE4();
  LODWORD(v70) = sub_1AACBC3B4(v72);
  sub_1AACE8BF0(v29, v35, type metadata accessor for _ChartContentInputs);
  v72 = v27;
  v36 = v21;
  sub_1AACE8BF0(v27, v21, type metadata accessor for _ChartContentOutputs);
  v37 = AGSubgraphGetCurrent();
  if (!v37)
  {
    __break(1u);
  }

  v38 = v37;
  v39 = v30;
  v58 = v30;
  v40 = v61;
  v41 = sub_1AAEFAD6C(v30, v31, v32, v33, v34, v61);
  *(&v56 + 1) = v34;
  *(&v55 + 1) = v32;
  *&v56 = v33;
  *&v55 = v31;
  v42 = v60;
  v45 = sub_1AAEFA8D4(v70, v35, v36, v38, v41, v43, v44, v39, v60, v55, v56, v40);
  v71 = &v58;
  MEMORY[0x1EEE9AC00](v45);
  v73 = v39;
  v74 = v31;
  v75 = v32;
  v76 = v33;
  v77 = v34;
  v78 = v40;
  v46 = _s9ItemStateVMa_0(0, &v73);
  v47 = v63;
  *&v56 = v46;
  *(&v56 + 1) = v63;
  WitnessTable = swift_getWitnessTable();
  v48 = sub_1AAF8D1A4();
  sub_1AACBC418(v42, sub_1AAD4BC78, &v55, v47, MEMORY[0x1E69E73E0], v48, MEMORY[0x1E69E7410], v49);
  (*(v62 + 8))(v42, v47);
  v50 = v72;
  LODWORD(v38) = v73;
  v51 = v59;
  sub_1AACE8BF0(v72, v59, type metadata accessor for _ChartContentOutputs);
  v52 = v65;
  sub_1AAE27A30(v51, v65, type metadata accessor for _ChartContentOutputs);
  v73 = v58;
  v74 = v31;
  v75 = v32;
  v76 = v33;
  v77 = v34;
  v78 = v40;
  *(v52 + *(_s21AttachCombinerVisitorVMa_0(0, &v73) + 68)) = v38;
  v53 = v67;
  sub_1AAF024A4(v52, v64, v67, &off_1F1FE3B28, &off_1F1FE3968);
  (*(v66 + 8))(v52, v53);
  return sub_1AAE27A30(v50, v68, type metadata accessor for _ChartContentOutputs);
}

uint64_t sub_1AAEFA854@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v6[0] = a1[1];
  v6[1] = v3;
  v6[2] = a1[3];
  ContainerV5ValueVMa = _s13MakeContainerV5ValueVMa(0, v6);
  return (*(*(ContainerV5ValueVMa - 8) + 56))(a2, 1, 1, ContainerV5ValueVMa);
}

uint64_t sub_1AAEFA8D4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, _DWORD *a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  *a9 = a1;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  StateVMa_0 = _s9MakeStateVMa_0(0, &v22);
  sub_1AAE27A30(a2, a9 + StateVMa_0[17], type metadata accessor for _ChartContentInputs);
  result = sub_1AAE27A30(a3, a9 + StateVMa_0[18], type metadata accessor for _ChartContentOutputs);
  *(a9 + StateVMa_0[19]) = a4;
  v21 = a9 + StateVMa_0[20];
  *v21 = a5;
  *(v21 + 1) = a6;
  *(v21 + 4) = a7;
  return result;
}

void *sub_1AAEFA9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  swift_allocObject();
  return sub_1AAEFAA34(a1, a2, a3, a4, a5, v6);
}

void *sub_1AAEFAA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *v6;
  *(v6 + *(*v6 + 176)) = 0;
  v6[2] = a1;
  sub_1AAE27A30(a2, v6 + qword_1ED9AF1D8, type metadata accessor for _ChartContentOutputs);
  v12 = *(*v6 + 152);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v6 + v12, a4, AssociatedTypeWitness);
  (*(*(*(v11 + 88) - 8) + 32))(v6 + *(*v6 + 144), a3);
  *(v6 + *(*v6 + 160)) = a5;
  *(v6 + *(*v6 + 168)) = a6;
  return v6;
}

id *sub_1AAEFABE0()
{
  v1 = *v0;

  sub_1AAEFE894(v0 + qword_1ED9AF1D8, type metadata accessor for _ChartContentOutputs);
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 18));
  v2 = *(*v0 + 19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  return v0;
}

double sub_1AAEFAD18()
{
  sub_1AAEFABE0();

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AAEFAD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v8 = _s4ItemCMa_0(0, v12);
  v9 = sub_1AAF8F894();
  swift_getTupleTypeMetadata2();
  v10 = sub_1AAF8F894();
  sub_1AAEFE9CC(v10, a2, v8, a5);

  return v9;
}

double sub_1AAEFAE24(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v21[0] = *(a1 + 16);
  v24 = v21[0];
  v25 = v3;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v7 = sub_1AAF8EFE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - v9;
  sub_1AAD47688(v21 - v9);
  sub_1AAEFB04C(v10, a1);
  v12 = v11;
  v13 = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    v15 = (v1 + *(a1 + 80));
    v16 = *v15;
    v17 = v15[1];
    LODWORD(v15) = *(v15 + 4);
    v22[0] = v16;
    v22[1] = v17;
    v23 = v15;
    MEMORY[0x1EEE9AC00](v13);
    v21[-2] = a1;
    v21[-1] = swift_getWitnessTable();
    v18 = *(a1 + 56);

    v24 = v21[0];
    v25 = v3;
    v26 = v4;
    v27 = v5;
    v28 = v6;
    v29 = v18;
    v19 = _s9ItemStateVMa_0(0, &v24);
    sub_1AACBC418(v22, sub_1AAD4BC60, &v21[-4], v19, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v20);
  }

  return result;
}

void sub_1AAEFB04C(unint64_t a1, uint64_t a2)
{
  v98 = a1;
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v90 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1AAF8FE74();
  v97 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v80 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v70 - v9;
  v96 = *(a2 + 40);
  v10 = *(*(v96 + 8) + 8);
  v11 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v87 = &v70 - v13;
  v14 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = &v70 - v15;
  v16 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v70 - v17);
  v95 = v10;
  AssociatedConformanceWitness = *(swift_getAssociatedConformanceWitness() + 8);
  v92 = v16;
  v91 = swift_getAssociatedTypeWitness();
  v19 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v77 = &v70 - v20;
  v21 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsValid = AGSubgraphIsValid();
  if (!IsValid)
  {
    return;
  }

  v75 = v19;
  v72 = v21;
  v74 = IsValid;
  v26 = *(a2 + 80);
  v94 = v2;
  v78 = v5;
  v27 = (v2 + v26);
  ++*(v2 + v26 + 16);
  v28 = *(a2 + 32);
  v29 = *(a2 + 48);
  v101 = v11;
  v102 = v4;
  v84 = v18;
  v30 = v96;
  v103 = v28;
  v104 = v96;
  v105 = v29;
  sub_1AAF8EFE4();
  sub_1AAF8EF94();
  v93 = a2;
  v31 = *(a2 + 56);
  v101 = v11;
  v102 = v4;
  v103 = v28;
  v104 = v30;
  v105 = v29;
  v106 = v31;
  v32 = _s4ItemCMa_0(0, &v101);
  v33 = v76;
  v34 = v32;
  v107 = sub_1AAF8F894();
  v71 = v27;
  v79 = v27 + 1;
  nullsub_1();
  v101 = v35;
  v96 = v34;
  sub_1AAF8F3A4();

  swift_getWitnessTable();
  v86 = v4;
  v98 = v29;
  v100 = sub_1AAF8FAB4();
  v73 = v11;
  sub_1AAF8FB74();
  v36 = v77;
  sub_1AAF8F744();
  v37 = v91;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = 0;
  v84 = (v81 + 6);
  v83 = (v81 + 4);
  v92 = (v78 + 16);
  v95 = (v78 + 8);
  v82 = (v97 + 8);
  ++v81;
  v97 = v24;
  v39 = v36;
  while (1)
  {
    sub_1AAF8FE94();
    if ((*v84)(v33, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v40 = v87;
    (*v83)(v87, v33, AssociatedTypeWitness);
    v41 = sub_1AAEFBAD8(v40, v38, v93);
    v101 = v41;
    sub_1AAF8F914();

    sub_1AAF8F8E4();
    v42 = *(*v41 + 144);
    swift_beginAccess();
    v43 = v90;
    v44 = v86;
    (*v92)(v90, &v41[v42], v86);
    sub_1AAF8FAA4();
    v45 = AssociatedTypeWitness;
    v46 = v88;
    sub_1AAF8FA74();

    v47 = v44;
    v24 = v97;
    (*v95)(v43, v47);
    v48 = v46;
    AssociatedTypeWitness = v45;
    (*v82)(v48, v89);
    v49 = v40;
    v37 = v91;
    (*v81)(v49, v45);
    if (__OFADD__(v38++, 1))
    {
      __break(1u);
      break;
    }
  }

  (*(v75 + 8))(v39, v37);
  v51 = v100;
  if ((v100 & 0xC000000000000001) != 0)
  {
    sub_1AAF8FFA4();
    v52 = v86;
    sub_1AAF8FA84();
    v51 = v101;
    v53 = v102;
    v54 = v103;
    v55 = v104;
    v56 = v105;
  }

  else
  {
    v55 = 0;
    v57 = -1 << *(v100 + 32);
    v53 = v100 + 56;
    v54 = ~v57;
    v58 = -v57;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v56 = v59 & *(v100 + 56);
    v52 = v86;
  }

  v60 = (v78 + 56);
  v91 = v54;
  v61 = (v54 + 64) >> 6;
  while (v51 < 0)
  {
    if (!sub_1AAF8FFD4())
    {
      v63 = v80;
LABEL_28:
      (*v60)(v63, 1, 1, v52);
      (*(v72 + 8))(v24, v73);
      sub_1AACC9C00(v51);
      v68 = v107;
      v69 = v71;

      *v69 = v68;
      return;
    }

    v64 = v80;
    sub_1AAF904B4();
    v63 = v64;
    swift_unknownObjectRelease();
LABEL_26:
    (*v60)(v63, 0, 1, v52);
    sub_1AAF8F3F4();
    sub_1AAF8F394();
    (*v95)(v63, v52);
    v67 = v99;
    if (v99)
    {
      AGSubgraphRemoveChild();
      *(v67 + *(*v67 + 176)) = 1;
    }

    v24 = v97;
  }

  if (v56)
  {
    v62 = v55;
    v63 = v80;
LABEL_25:
    v66 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    (*(v78 + 16))(v63, *(v51 + 48) + *(v78 + 72) * (v66 | (v62 << 6)), v52);
    goto LABEL_26;
  }

  v65 = v55;
  v63 = v80;
  while (1)
  {
    v62 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v62 >= v61)
    {
      goto LABEL_28;
    }

    v56 = *(v53 + 8 * v62);
    ++v65;
    if (v56)
    {
      v55 = v62;
      goto LABEL_25;
    }
  }

  __break(1u);
}

char *sub_1AAEFBAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v92 = a2;
  v7 = *(a3 + 40);
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v77 = &v68[-v9];
  v10 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = &v68[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v68[-v13];
  v14 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = &v68[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(a3 + 24);
  v88 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v68[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68[-v20];
  v22 = *(a3 + 32);
  v23 = *(a3 + 48);
  *&v24 = v22;
  v79 = v7;
  *(&v24 + 1) = v7;
  v89 = v24;
  v78 = v8;
  *&v25 = v8;
  *(&v25 + 1) = v16;
  v90 = v25;
  v93 = v25;
  v94 = v24;
  v95 = v23;
  v26 = sub_1AAF8EFE4();
  v86 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68[-v27];
  sub_1AAD47688(&v68[-v27]);
  v82 = a1;
  v29 = v92;
  v87 = v26;
  v91 = v28;
  sub_1AAF8EFA4();
  v85 = v4 + *(a3 + 80);
  v30 = v85 + 8;
  v31 = *(a3 + 56);
  v93 = v90;
  v94 = v89;
  v95 = v23;
  v96 = v31;
  v32 = _s4ItemCMa_0(0, &v93);
  *&v89 = v21;
  v33 = v32;
  v34 = v23;
  *&v90 = v16;
  sub_1AAF8F414();
  v35 = v97;
  if (v97)
  {
    v36 = *v97;
    v37 = *(*v97 + 176);
    if (v97[v37] == 1)
    {
      v97[v37] = 0;
      AGSubgraphAddChild();
      v36 = *v35;
    }

    v38 = *(v36 + 168);
    v39 = *(v85 + 4);
    v41 = v88;
    v40 = v89;
    v42 = v90;
    if (*&v35[v38] != v39)
    {
      v43 = *(v36 + 152);
      swift_beginAccess();
      (*(v80 + 24))(&v35[v43], v82, AssociatedTypeWitness);
      swift_endAccess();
      *&v35[*(*v35 + 160)] = v29;
      v44 = *(*v35 + 144);
      swift_beginAccess();
      (*(v41 + 24))(&v35[v44], v40, v42);
      swift_endAccess();
      *&v35[v38] = v39;
    }

    goto LABEL_8;
  }

  v72 = v22;
  v73 = v33;
  v74 = v30;
  v45 = v34;
  v46 = v79;
  v47 = v78;
  v48 = AGSubgraphGetGraph();
  v49 = AGSubgraphCreate();

  v50 = v49;
  AGSubgraphAddChild();
  result = AGGraphGetCurrentAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    v52 = result;
    v69 = *v4;
    v53 = v83;
    sub_1AACE8BF0(v4 + *(a3 + 68), v83, type metadata accessor for _ChartContentInputs);
    AGGraphClearUpdate();
    v54 = AGSubgraphGetCurrent();
    v71 = v50;
    AGSubgraphSetCurrent();
    v70 = v45;
    v67 = v46;
    v55 = v84;
    v56 = v53;
    v57 = v89;
    v58 = v82;
    v59 = v47;
    v60 = v90;
    sub_1AAEFC29C(v56, v89, v91, v82, v52, v69, v59, v90, v84, v72, v67, v45, v31);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    v61 = v76;
    sub_1AACE8BF0(v55, v76, type metadata accessor for _ChartContentOutputs);
    v41 = v88;
    v62 = *(v88 + 16);
    v63 = v75;
    v62(v75, v57, v60);
    v64 = v77;
    (*(v80 + 16))(v77, v58, AssociatedTypeWitness);
    v65 = *(v85 + 4);
    swift_allocObject();
    v66 = v61;
    v42 = v60;
    v40 = v57;
    v35 = sub_1AAEFAA34(v71, v66, v63, v64, v92, v65);
    v62(v63, v57, v42);
    *&v93 = v35;
    sub_1AAF8F3F4();

    sub_1AAF8F424();
    sub_1AAEFE894(v84, type metadata accessor for _ChartContentOutputs);
    sub_1AAEFE894(v83, type metadata accessor for _ChartContentInputs);
LABEL_8:
    (*(v41 + 8))(v40, v42);
    (*(v86 + 8))(v91, v87);
    return v35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAEFC29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v91 = a6;
  v90 = a5;
  v86 = a4;
  v80 = a3;
  v97 = a2;
  v96 = a9;
  v87 = a13;
  v116 = *MEMORY[0x1E69E9840];
  v95 = sub_1AAF8D954();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v68 - v16;
  v110 = a7;
  v111 = a8;
  v112 = a10;
  v113 = a11;
  v74 = a10;
  v98 = a11;
  v114 = a12;
  v115 = a13;
  v88 = _s5ChildVMa_2(0, &v110);
  v92 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v85 = (&v68 - v17);
  v84 = *(*(a11 + 8) + 8);
  v76 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v68 - v18;
  v81 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v77 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v99 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(a8 - 8);
  v23 = v75;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ContainerWithChildID(0, a8, a12, v27);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v68 - v30;
  v32 = type metadata accessor for _ChartContentInputs(0);
  v33 = v32 - 8;
  MEMORY[0x1EEE9AC00](v32);
  v35 = a1;
  v36 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE8BF0(v35, v36, type metadata accessor for _ChartContentInputs);
  v72 = *(v23 + 16);
  v71 = v26;
  v72(v26, v97, a8);
  v37 = *(v33 + 32);
  v38 = *&v36[v37];
  v78 = v36;
  v69 = a8;
  v70 = a12;
  sub_1AAEDF108(v26, v38, a8, a12, v31);
  v108 = v28;
  WitnessTable = swift_getWitnessTable();
  sub_1AAEFF328(0);
  sub_1AACBC418(v31, sub_1AACBC5D4, v107, v28, MEMORY[0x1E69E73E0], v39, MEMORY[0x1E69E7410], v40);
  v73 = 0;
  (*(v29 + 8))(v31, v28);
  *&v36[v37] = v110;
  v41 = v76;
  v110 = v76;
  v111 = a8;
  v42 = v74;
  v112 = v74;
  v113 = v98;
  v114 = a12;
  sub_1AAF8EFE4();
  v43 = sub_1AAF8EFB4();
  v44 = v77;
  sub_1AAF8EF94();
  v45 = v41;
  v46 = sub_1AAF8FC84();
  v47 = v82;
  v48 = v79;
  v49 = AssociatedTypeWitness;
  (*(v82 + 16))(v79);
  v46(&v110, 0);
  (*(v81 + 8))(v44, v45);
  v43(v48);

  (*(v47 + 8))(v48, v49);
  v50 = v71;
  v51 = v69;
  v72(v71, v97, v69);
  v52 = v85;
  v53 = v91;
  *v85 = v90;
  *(v52 + 4) = v53;
  v110 = v45;
  v111 = v51;
  v112 = v42;
  v113 = v98;
  v54 = v87;
  v114 = v70;
  v115 = v87;
  v55 = _s5ChildVMa_2(0, &v110);
  (*(v75 + 32))(v52 + *(v55 + 72), v50, v51);
  v56 = v88;
  v104 = v42;
  v105 = v88;
  v106 = swift_getWitnessTable();
  v57 = sub_1AAF8D1A4();
  v58 = MEMORY[0x1E69E73E0];
  v59 = MEMORY[0x1E69E7410];
  sub_1AACBC418(v52, sub_1AAD4BC78, v103, v56, MEMORY[0x1E69E73E0], v57, MEMORY[0x1E69E7410], v60);
  (*(v92 + 8))(v52, v56);
  LODWORD(v56) = v110;
  v101 = v42;
  v102 = v110;
  v61 = v99;
  sub_1AACBC418(v99, sub_1AAE27B88, v100, v42, v58, MEMORY[0x1E69E6370], v59, v62);
  v63 = v93;
  sub_1AACBC644(v56, v93);
  v64 = v54;
  v65 = *(v54 + 48);
  v66 = v78;
  v65(v63, v78, v42, v64);
  (*(v94 + 8))(v63, v95);
  (*(v89 + 8))(v61, v42);
  return sub_1AAEFE894(v66, type metadata accessor for _ChartContentInputs);
}

uint64_t sub_1AAEFCBE8(_OWORD *a1)
{
  v1 = a1[2];
  v4[0] = a1[1];
  v4[1] = v1;
  v4[2] = a1[3];
  _s9ItemStateVMa_0(0, v4);
  v2 = *AGGraphGetValue();

  return v2;
}

double sub_1AAEFCC6C(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v56 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 40);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = v48 - v9;
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v50 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v13 = *(a1 + 48);
  *&v14 = v8;
  *(&v14 + 1) = v12;
  v58 = v3;
  *&v15 = v3;
  *(&v15 + 1) = v6;
  v63 = v15;
  v64 = v14;
  v66 = v14;
  v67 = v15;
  v68 = v13;
  v59 = sub_1AAF8EFE4();
  v49 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v17 = v48 - v16;
  v53 = v7;
  v18 = swift_getAssociatedTypeWitness();
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v60 = v48 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v1, a1, v21);
  v25 = *(a1 + 72);
  sub_1AAEFCBE8(a1);
  v26 = *(a1 + 56);
  v66 = v64;
  v67 = v63;
  v68 = v13;
  v69 = v26;
  _s4ItemCMa_0(0, &v66);
  sub_1AAF8F414();

  (*(*(v12 - 8) + 8))(&v23[v25], v12);
  v28 = v65;
  if (v65)
  {
    v29 = *(v65 + *(*v65 + 168));
    sub_1AAEFCBE8(a1);
    v31 = v30;

    if (v29 == v31)
    {
      v48[1] = v1;
      sub_1AAD4953C(v17);
      v32 = v50;
      v33 = v59;
      sub_1AAF8EF94();
      *&v64 = *(v49 + 8);
      (v64)(v17, v33);
      v34 = *(*v28 + 152);
      swift_beginAccess();
      v35 = v54;
      v36 = v28 + v34;
      v37 = v51;
      v38 = AssociatedTypeWitness;
      (*(v54 + 16))(v51, v36, AssociatedTypeWitness);
      v39 = v32;
      v40 = sub_1AAF8FC84();
      (*(v61 + 16))(v60);
      v40(&v66, 0);
      (*(v35 + 8))(v37, v38);
      (*(v52 + 8))(v39, v8);
      sub_1AAD4953C(v17);
      v41 = v59;
      v42 = sub_1AAF8EFB4();
      (v64)(v17, v41);
      v43 = v56;
      v44 = v60;
      v42(v60);

      MEMORY[0x1EEE9AC00](v45);
      v48[-2] = a1;
      v48[-1] = swift_getWitnessTable();
      v46 = v58;
      sub_1AACBC418(v43, sub_1AAD4BC60, &v48[-4], v58, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v47);

      (*(v57 + 8))(v43, v46);
      (*(v61 + 8))(v44, v62);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AAEFD39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1AAF8D954();
  v9 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = *(a2 + 32);
  v13 = *(a2 + 56);
  v19 = *MEMORY[0x1E698D3F8];
  v21 = AssociatedTypeWitness;
  v24 = *(a2 + 16);
  v25 = v12;
  v26 = a3;
  v27 = *(a2 + 40);
  v28 = v13;
  v29 = a4;
  v14 = _s25ForEachPreferenceCombinerVMa_0(0, &v24);
  v22 = v14;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1AAF8D1A4();
  sub_1AACBC418(&v19, sub_1AAEFF554, v20, v14, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  sub_1AACBC644(v24, v11);
  (*(*(v8 - 8) + 56))(v11, 0, 1, v8);
  return sub_1AAF8E4D4();
}

uint64_t sub_1AAEFD5A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27[1] = swift_getAssociatedTypeWitness();
  v8 = sub_1AAF8D954();
  v9 = sub_1AAF8FE74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v27 - v15);
  sub_1AAF8E4C4();
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v13 + 32))(v16, v12, v8);
  v18 = sub_1AACBC3B4(v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = a2[2];
  v20 = a2[3];
  v27[-10] = v19;
  v27[-9] = v20;
  v21 = a2[4];
  v22 = a2[5];
  v27[-8] = v21;
  v27[-7] = a3;
  v23 = a2[6];
  v24 = a2[7];
  v27[-6] = v22;
  v27[-5] = v23;
  v27[-4] = v24;
  v27[-3] = a4;
  v27[-2] = v4;
  v28[0] = v19;
  v28[1] = v20;
  v28[2] = v21;
  v28[3] = a3;
  v28[4] = v22;
  v28[5] = v23;
  v28[6] = v24;
  v28[7] = a4;
  v25 = _s25ForEachPreferenceCombinerVMa_0(0, v28);
  MEMORY[0x1EEE9AC00](v25);
  v27[-4] = v26;
  v27[-3] = sub_1AAEFF380;
  v27[-2] = &v27[-12];
  AGGraphMutateAttribute();
  return (*(v13 + 8))(v16, v8);
}

uint64_t sub_1AAEFD868(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v17 = *(a2 + *(_s21AttachCombinerVisitorVMa_0(0, &v19) + 68));
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  result = _s25ForEachPreferenceCombinerVMa_0(0, &v19);
  *a1 = v17;
  return result;
}

uint64_t sub_1AAEFD924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    return 0;
  }

  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a7;
  v11[4] = a8;
  v11[5] = a9;
  _s9ItemStateVMa_0(0, v11);
  v9 = *AGGraphGetValue();

  return v9;
}

void sub_1AAEFD9D8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  LODWORD(v86) = a1;
  v81 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v82 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v72 = &v62 - v18;
  v79 = v19;
  v20 = sub_1AAF8D954();
  v78 = sub_1AAF8FE74();
  v73 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v62 - v21;
  v22 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v84 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v20 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v77 = (&v62 - v26);
  v61 = a10;
  v27 = a2;
  v28 = a2;
  v63 = a3;
  v64 = a4;
  v29 = a6;
  v30 = a6;
  v31 = a7;
  v32 = a7;
  v33 = a8;
  v34 = sub_1AAEFD924(v86, v28, a3, a4, v25, a5, v30, v32, a8);
  if (!v34)
  {
    __break(1u);
    return;
  }

  v35 = v34;
  v86 = a10;
  sub_1AAF8DB34();

  v68 = v27;
  v87[0] = v27;
  v36 = v63;
  v37 = v64;
  v87[1] = v63;
  v87[2] = v64;
  v69 = v29;
  v87[3] = v29;
  v87[4] = v31;
  v70 = v31;
  v71 = v33;
  v87[5] = v33;
  v38 = _s4ItemCMa_0(0, v87);
  v39 = sub_1AAF8F8D4();
  v85 = a5;
  v40 = v80;
  if (!v39)
  {
    goto LABEL_16;
  }

  v41 = v37;
  v83 = (v75 + 6);
  v74 = (v75 + 4);
  ++v75;
  v67 = (v82 + 16);
  v66 = (v82 + 8);
  v65 = (v82 + 32);
  ++v73;
  LODWORD(v82) = 1;
  v42 = 4;
  v76 = v38;
  while (1)
  {
    v43 = v42 - 4;
    v44 = sub_1AAF8F8B4();
    sub_1AAF8F864();
    if ((v44 & 1) == 0)
    {
      break;
    }

    v45 = *(v35 + 8 * v42);

    v46 = v42 - 3;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_15;
    }

LABEL_8:
    v47 = v84;
    sub_1AACE8BF0(v45 + qword_1ED9AF1D8, v84, type metadata accessor for _ChartContentOutputs);
    sub_1AAF8E4C4();
    v48 = sub_1AAF8E4B4();
    (*(*(v48 - 8) + 8))(v47, v48);
    if ((*v83)(v40, 1, v20) == 1)
    {

      (*v73)(v40, v78);
    }

    else
    {
      v49 = v77;
      (*v74)(v77, v40, v20);
      v50 = v79;
      v51 = sub_1AACBC3B4(v49);
      if (v82)
      {
        Value = AGGraphGetValue();
        v53 = v20;
        v54 = v72;
        (*v67)(v72, Value, v50);

        (*v75)(v49, v53);
        v55 = v81;
        (*v66)(v81, v50);
        v56 = v54;
        v20 = v53;
        (*v65)(v55, v56, v50);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v51);
        *(&v62 - 10) = v68;
        *(&v62 - 9) = v36;
        *(&v62 - 8) = v41;
        *(&v62 - 7) = v57;
        v58 = v70;
        *(&v62 - 6) = v69;
        *(&v62 - 5) = v58;
        v59 = v86;
        *(&v62 - 4) = v71;
        *(&v62 - 3) = v59;
        LODWORD(v61) = v60;
        sub_1AAF8DB44();

        (*v75)(v49, v20);
      }

      LODWORD(v82) = 0;
      v40 = v80;
    }

    ++v42;
    if (v46 == sub_1AAF8F8D4())
    {
      goto LABEL_16;
    }
  }

  v45 = sub_1AAF90114();
  v46 = v42 - 3;
  if (!__OFADD__(v43, 1))
  {
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
LABEL_16:
}

uint64_t sub_1AAEFE080(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1AAF8FE74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  sub_1AAD4A388(v7);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = (*(v8 + 32))(v11, v7, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v13);
  v15[-2] = a2;
  v15[-1] = swift_getWitnessTable();
  sub_1AACBE580(v11, sub_1AAEFF534, &v15[-4], AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v14);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

unint64_t sub_1AAEFE32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8F474();

  return sub_1AAEFE388(a1, v6, a2, a3);
}

unint64_t sub_1AAEFE388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1AAF8F5F4();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1AAEFE528(void *a1)
{
  result = sub_1AAF8E4B4();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1AAEFE69C(uint64_t a1)
{
  sub_1AAF8EFE4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Subgraph(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AAEFE764(uint64_t a1)
{
  sub_1AAF8EFE4();
  sub_1AAF8D1A4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for _ChartContentInputs(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for _ChartContentOutputs(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Subgraph(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1AAEFE894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAEFE91C()
{
  if (!qword_1ED9AEE20)
  {
    v0 = sub_1AAF8D1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AEE20);
    }
  }
}

unint64_t sub_1AAEFE9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1AAF8F8D4())
  {
    sub_1AAF903B4();
    v13 = sub_1AAF903A4();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1AAF8F8D4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1AAF8F8B4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1AAF90114();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1AAEFE32C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1AAEFECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAEFECF4(uint64_t a1)
{
  result = type metadata accessor for _ChartContentOutputs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1AAEFED90(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  sub_1AAF8EFE4();
  v7 = sub_1AAF8D1A4();
  if (v8 <= 0x3F)
  {
    v24 = 0;
    v29 = v7;
    v9 = type metadata accessor for _ChartContentInputs(319);
    if (v10 <= 0x3F)
    {
      v25 = 0;
      v30 = v9;
      v11 = type metadata accessor for _ChartContentOutputs(319);
      if (v12 <= 0x3F)
      {
        v26 = 0;
        v31 = v11;
        type metadata accessor for Subgraph(319);
        if (v14 <= 0x3F)
        {
          v27 = 0;
          v32 = v13;
          v15 = a1[7];
          v18 = v2;
          v19 = v3;
          v20 = v4;
          v21 = v5;
          v22 = v6;
          v23 = v15;
          v16 = _s9ItemStateVMa_0(319, &v18);
          if (v17 <= 0x3F)
          {
            v28 = 0;
            v33 = v16;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1AAEFEEBC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for _ChartContentInputs(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[17];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for _ChartContentOutputs(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[18];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[19]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1AAEFEFD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for _ChartContentInputs(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[17];
  }

  else
  {
    result = type metadata accessor for _ChartContentOutputs(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[19]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[18];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1AAEFF0DC(_OWORD *a1)
{
  result = type metadata accessor for _ChartContentOutputs(319);
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v9 = result;
    v4 = a1[2];
    v6[0] = a1[1];
    v6[1] = v4;
    v6[2] = a1[3];
    _s9ItemStateVMa_0(255, v6);
    result = sub_1AAF8D1A4();
    if (v5 <= 0x3F)
    {
      v8 = 0;
      v10 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAEFF194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ChartContentOutputs(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAEFF214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ChartContentOutputs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAEFF284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1AAEFF328(uint64_t a1)
{
  if (!qword_1ED9B4428)
  {
    type metadata accessor for ChartContainerValues(255);
    v1 = sub_1AAF8D1A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B4428);
    }
  }
}

uint64_t sub_1AAEFF3C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10 = v2;
  v11 = v1;
  v12 = v3;
  v13 = v4;
  v9 = *(a1 + 48);
  v14 = v9;
  _s9ItemStateVMa_0(255, &v10);
  result = sub_1AAF8D1A4();
  if (v6 <= 0x3F)
  {
    v15 = 0;
    v18 = result;
    v10 = v2;
    v11 = v1;
    v12 = v3;
    v13 = v4;
    *&v14 = v9;
    sub_1AAF8EFE4();
    result = sub_1AAF8D1A4();
    if (v7 <= 0x3F)
    {
      v16 = 0;
      v19 = result;
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v17 = 0;
        v20 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AAEFF4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for MultiPreferenceCombinerVisitor(uint64_t a1)
{
  result = qword_1ED9AF788;
  if (!qword_1ED9AF788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AAEFF5E0(uint64_t a1)
{
  sub_1AAEFF664(319);
  if (v1 <= 0x3F)
  {
    sub_1AAF8E4B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AAEFF664(uint64_t a1)
{
  if (!qword_1ED9AD900)
  {
    sub_1AAF8E4B4();
    v1 = sub_1AAF8F914();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9AD900);
    }
  }
}

void sub_1AAEFF6BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_1AAF8FE74();
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v41 = &v32 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v32 - v13;
  v42 = a3;
  v43 = a4;
  sub_1AAF8DB34();
  sub_1AAF8D184();
  if (sub_1AAF8F8D4())
  {
    v14 = 0;
    v38 = (v11 + 56);
    v39 = (v11 + 8);
    v15 = (v11 + 32);
    v35 = (v11 + 48);
    v36 = (v11 + 16);
    v33 = (v9 + 8);
    v16 = a1 + 36;
    v17 = 1;
    v37 = a1;
    do
    {
      v21 = sub_1AAF8F8B4();
      v22 = sub_1AAF8F864();
      if (v21)
      {
        v23 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1AAF90114();
        v22 = swift_unknownObjectRelease();
        v23 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_15:
          __break(1u);
          return;
        }
      }

      if (v17)
      {
        v24 = v15;
        WeakValue = AGGraphGetWeakValue();
        v26 = v43;
        if (WeakValue)
        {
          v27 = v41;
          (*v36)(v41, WeakValue, AssociatedTypeWitness);
          (*v39)(v26, AssociatedTypeWitness);
          (*v38)(v27, 0, 1, AssociatedTypeWitness);
          v28 = v40;
          v29 = v27;
          v15 = v24;
          (*v24)(v40, v29, AssociatedTypeWitness);
        }

        else
        {
          v30 = v41;
          (*v38)(v41, 1, 1, AssociatedTypeWitness);
          v28 = v40;
          sub_1AAF8DB34();
          (*v39)(v26, AssociatedTypeWitness);
          v31 = (*v35)(v30, 1, AssociatedTypeWitness);
          v15 = v24;
          if (v31 != 1)
          {
            (*v33)(v41, v34);
          }
        }

        (*v15)(v26, v28, AssociatedTypeWitness);
      }

      else
      {
        MEMORY[0x1EEE9AC00](v22);
        v18 = v42;
        *(&v32 - 4) = a2;
        *(&v32 - 3) = v18;
        *(&v32 - 4) = v19;
        *(&v32 - 3) = v20;
        sub_1AAF8DB44();
      }

      v17 = 0;
      v16 += 8;
      ++v14;
    }

    while (v23 != sub_1AAF8F8D4());
  }
}

uint64_t sub_1AAEFFAC4@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AAF8FE74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v11 = *(AssociatedTypeWitness - 8);
    (*(v11 + 16))(v9, WeakValue, AssociatedTypeWitness);
    (*(v11 + 56))(v9, 0, 1, AssociatedTypeWitness);
    return (*(v11 + 32))(a4, v9, AssociatedTypeWitness);
  }

  else
  {
    v13 = *(AssociatedTypeWitness - 8);
    (*(v13 + 56))(v9, 1, 1, AssociatedTypeWitness);
    sub_1AAF8DB34();
    result = (*(v13 + 48))(v9, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_1AAEFFD30@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, Value, AssociatedTypeWitness);
  return sub_1AAF8DB44();
}

uint64_t sub_1AAEFFE10@<X0>(uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a4, Value, AssociatedTypeWitness);
}

uint64_t sub_1AAEFFEB4@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

void sub_1AAEFFF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1AAF8D954();
  v8 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v27 = v3;
  v29 = *v3;
  v30 = a2;
  v31 = a3;
  sub_1AAEFF664(0);
  v11 = sub_1AAF8D1A4();
  sub_1AAF004C4();

  v12 = sub_1AAF8F764();

  v13 = sub_1AAF8F8D4();
  if (v13 == 2)
  {
    sub_1AAF8F944();
    v15 = v29;
    sub_1AAF8F944();

    v26 = &v25;
    v29 = __PAIR64__(v29, v15);
    MEMORY[0x1EEE9AC00](v16);
    *(&v25 - 4) = AssociatedTypeWitness;
    v18 = type metadata accessor for PairPreferenceCombiner(0, a2, a3, v17);
    *(&v25 - 3) = v18;
    *(&v25 - 2) = swift_getWitnessTable();
    sub_1AACBC418(&v29, sub_1AAEFF554, (&v25 - 6), v18, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v19);
LABEL_8:
    v14 = v28;
    goto LABEL_9;
  }

  if (v13 != 1)
  {
    if (!v13)
    {

      return;
    }

    v20 = sub_1AAF0051C(v12, a2, a3);
    v25 = v20;

    v26 = &v25;
    v29 = v20;
    MEMORY[0x1EEE9AC00](v21);
    *(&v25 - 4) = AssociatedTypeWitness;
    v23 = type metadata accessor for PreferenceCombiner(0, a2, a3, v22);
    *(&v25 - 3) = v23;
    *(&v25 - 2) = swift_getWitnessTable();
    sub_1AACBC418(&v29, sub_1AACBC5B0, (&v25 - 6), v23, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v24);

    goto LABEL_8;
  }

  sub_1AAF8F944();

  v14 = v29;
LABEL_9:
  sub_1AACBC644(v14, v10);
  (*(*(v7 - 8) + 56))(v10, 0, 1, v7);
  type metadata accessor for MultiPreferenceCombinerVisitor(0);
  sub_1AAF8E4D4();
}

uint64_t sub_1AAF00320@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_1AAF8D954();
  v6 = sub_1AAF8FE74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-v8];
  sub_1AAF8E4C4();
  v14 = a1;
  v15 = a2;
  v10 = sub_1AAF8D1A4();
  sub_1AACD90D0(sub_1AAF00664, v13, MEMORY[0x1E69E73E0], v10, v11, a3);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1AAF004C4()
{
  result = qword_1ED9AEF90;
  if (!qword_1ED9AEF90)
  {
    sub_1AAEFF664(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AEF90);
  }

  return result;
}

uint64_t sub_1AAF0051C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  swift_getAssociatedTypeWitness();
  sub_1AAF8D1A4();
  v3 = sub_1AAF8F914();
  v4 = sub_1AAF8D184();
  WitnessTable = swift_getWitnessTable();
  return sub_1AACB00E0(sub_1AAF00630, v8, v3, v4, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);
}

uint64_t sub_1AAF00630@<X0>(uint64_t *a2@<X8>)
{
  result = AGCreateWeakAttribute();
  *a2 = result;
  return result;
}

uint64_t sub_1AAF00664@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = sub_1AACBC3B4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AAF006C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF00700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF0078C(uint64_t a1, __n128 a2)
{
  v2 = sub_1AAF907B4();
  MEMORY[0x1AC5982F0](v2);

  return 548047074;
}

uint64_t sub_1AAF007E4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_1AACBC3B4(v3);
  if (*(*(a2 - 8) + 64))
  {
    a1(1);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

  return sub_1AACBC644(OffsetAttribute2, a3);
}

uint64_t BuilderTuple.init(elements:)@<X0>(uint64_t *TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = TupleTypeMetadata;
  v40 = a4;
  if (a2 == 1)
  {
    v7 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v10 = 0;
      v11 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v10 != a2)
      {
LABEL_9:
        v16 = a2 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for BuilderTuple(0, a2, a3, v24);
  v39 = &v37;
  v25 = *(v38 - 8);
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v28 = &v37 - v27;
  if (a2)
  {
    v29 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v30 = (v7 + 32);
    v31 = a2;
    do
    {
      if (a2 == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = *v30;
      }

      v34 = *v29++;
      v33 = v34;
      v35 = *v6++;
      (*(*(v33 - 8) + 32))(&v23[v32], v35);
      v30 += 4;
      --v31;
    }

    while (v31);
  }

  (*(v21 + 16))(v28, v23, v7, v26);
  (*(v25 + 32))(v40, v28, v38);
  return (*(v21 + 8))(v23, v7);
}

uint64_t BuilderTuple.elements.getter@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = TupleTypeMetadata;
  v6 = *(TupleTypeMetadata + 16);
  if (v6 == 1)
  {
    v7 = *(*(TupleTypeMetadata + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v6)
    {
      v10 = 0;
      v11 = *(v4 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v6 < 4)
      {
        goto LABEL_9;
      }

      if (&v9[-v11] < 0x20)
      {
        goto LABEL_9;
      }

      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = (v11 + 16);
      v13 = v9 + 16;
      v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v6 != v10)
      {
LABEL_9:
        v16 = v6 - v10;
        v17 = 8 * v10;
        v18 = &v9[8 * v10];
        v19 = (v11 + v17);
        do
        {
          v20 = *v19++;
          *v18 = v20;
          v18 += 8;
          --v16;
        }

        while (v16);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v7 = TupleTypeMetadata;
  }

  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v24 + 16))(v23, v3, v7, v21);
  if (v6)
  {
    v26 = (*(v4 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v7 + 32);
    v28 = v6;
    do
    {
      if (v6 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = *v27;
      }

      v31 = *v26++;
      v30 = v31;
      v32 = *a2++;
      result = (*(*(v30 - 8) + 32))(v32, &v23[v29]);
      v27 += 4;
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t BuilderTuple.elements.setter(uint64_t *TupleTypeMetadata, uint64_t a2)
{
  v4 = TupleTypeMetadata;
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    v6 = *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v9 = 0;
      v10 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = v5 & 0xFFFFFFFFFFFFFFFCLL;
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
      if (v5 != v9)
      {
LABEL_9:
        v15 = v5 - v9;
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

  v20 = *(v6 - 8);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v24 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
    v25 = (v6 + 32);
    v26 = v5;
    do
    {
      if (v5 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v25;
      }

      v29 = *v24++;
      v28 = v29;
      v30 = *v4++;
      (*(*(v28 - 8) + 32))(&v23[v27], v30);
      v25 += 4;
      --v26;
    }

    while (v26);
  }

  return (*(v20 + 40))(v2, v23, v6, v21);
}

uint64_t static BuilderTuple<each A>._makeChartContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v78 = a2;
  v76 = a1;
  v73 = a6;
  v9 = type metadata accessor for _ChartContentOutputs(0);
  v67 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8E4B4();
  v80 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MultiPreferenceCombinerVisitor(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BuilderTuple(255, a3, a4, v19);
  v74 = sub_1AAF8D954();
  v20 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v22 = &v65 - v21;
  v77 = a5;
  ListVMa_4 = _s8MakeListVMa_4(0, a3, a4, a5);
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](ListVMa_4);
  v82 = &v65 - v25;
  v71 = v14;
  v72 = v16;
  v69 = v26;
  v70 = v17;
  v66 = v13;
  v68 = v11;
  if (a3 == 1)
  {
    v27 = v78;
  }

  else
  {
    v65 = &v65;
    MEMORY[0x1EEE9AC00](v23);
    v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v78;
    if (a3)
    {
      v30 = 0;
      v31 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v29[-v31] < 0x20)
      {
        goto LABEL_9;
      }

      v30 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v32 = (v31 + 16);
      v33 = v29 + 16;
      v34 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v35 = *v32;
        *(v33 - 1) = *(v32 - 1);
        *v33 = v35;
        v32 += 2;
        v33 += 2;
        v34 -= 4;
      }

      while (v34);
      if (v30 != a3)
      {
LABEL_9:
        v36 = a3 - v30;
        v37 = 8 * v30;
        v38 = &v29[8 * v30];
        v39 = (v31 + v37);
        do
        {
          v40 = *v39++;
          *v38 = v40;
          v38 += 8;
          --v36;
        }

        while (v36);
      }
    }

    swift_getTupleTypeMetadata();
  }

  (*(v20 + 16))(v22, v76, v74, v24);
  v41 = v75;
  sub_1AACE8BF0(v27, v75, type metadata accessor for _ChartContentInputs);
  v42 = v77;
  sub_1AAF01678(v22, v41, 0, MEMORY[0x1E69E7CC0], a3, a4, v77, v82);
  if (a3)
  {
    v43 = 0;
    v44 = *(ListVMa_4 + 48);
    while (1)
    {
      v45 = *((a4 & 0xFFFFFFFFFFFFFFFELL) + 8 * v43);
      v46 = *((v42 & 0xFFFFFFFFFFFFFFFELL) + 8 * v43);
      v47 = AGTupleElementOffset();
      v48 = ListVMa_4;
      *(v82 + v44) = v47;
      result = sub_1AAF01768(v45, v48, v45, v46);
      if (v43 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (a3 == ++v43)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v50 = *(v82 + *(ListVMa_4 + 52));
    v51 = *(v50 + 16);
    v52 = MEMORY[0x1E69E7CC0];
    if (v51)
    {
      v83 = MEMORY[0x1E69E7CC0];
      sub_1AAD40F4C(0, v51, 0);
      v52 = v83;
      v53 = v68;
      v54 = v50 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v55 = *(v67 + 72);
      v56 = (v80 + 32);
      v57 = v66;
      do
      {
        v58 = v79;
        sub_1AACE8BF0(v54, v79, type metadata accessor for _ChartContentOutputs);
        v59 = *v56;
        (*v56)(v57, v58, v53);
        v83 = v52;
        v61 = *(v52 + 16);
        v60 = *(v52 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1AAD40F4C((v60 > 1), v61 + 1, 1);
          v52 = v83;
        }

        *(v52 + 16) = v61 + 1;
        v59((v52 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v61), v57, v53);
        v54 += v55;
        --v51;
      }

      while (v51);
    }

    else
    {
      v53 = v68;
    }

    v62 = v72;
    v63 = *(v71 + 20);
    Chart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0 = _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
    *v62 = v52;
    MEMORY[0x1EEE9AC00](Chart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0);
    *(&v65 - 2) = v62;
    sub_1AAF8E394();
    (*(v69 + 8))(v82, ListVMa_4);
    (*(v80 + 16))(v73, &v62[v63], v53);
    return sub_1AACEE984(v62, type metadata accessor for MultiPreferenceCombinerVisitor);
  }

  return result;
}

uint64_t sub_1AAF01678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  type metadata accessor for BuilderTuple(255, a5, a6, a4);
  v16 = sub_1AAF8D954();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  ListVMa_4 = _s8MakeListVMa_4(0, a5, a6, a7);
  result = sub_1AAE27A30(a2, a8 + ListVMa_4[11], type metadata accessor for _ChartContentInputs);
  *(a8 + ListVMa_4[12]) = a3;
  *(a8 + ListVMa_4[13]) = a4;
  return result;
}

uint64_t sub_1AAF01768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v43 = *MEMORY[0x1E69E9840];
  v38 = sub_1AAF8D954();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v34 - v7;
  v8 = type metadata accessor for _ChartContentOutputs(0);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for _ChartContentInputs(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE8BF0(v4 + *(a2 + 44), v16, type metadata accessor for _ChartContentInputs);
  v39 = *(a2 + 52);
  v17 = *(v4 + v39);
  v18 = *(v14 + 32);
  v19 = *&v16[v18];
  v41 = v17[2];
  v42 = v19;
  sub_1AACBC63C();
  type metadata accessor for ChartContainerValues(0);
  sub_1AAE278B4(0, v20, v21, v22);
  sub_1AAE2790C(v23, v24, v25, v26);
  *&v16[v18] = sub_1AAF8D194();
  type metadata accessor for BuilderTuple(0, *(a2 + 16), *(a2 + 24), v27);
  sub_1AACBC3B4(v4);
  v28 = v34;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v30 = v35;
  sub_1AACBC644(OffsetAttribute2, v35);
  (*(v37 + 48))(v30, v16, a3);
  (*(v36 + 8))(v30, v38);
  sub_1AACE8BF0(v12, v28, type metadata accessor for _ChartContentOutputs);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1AAD68DF4(0, v17[2] + 1, 1, v17);
  }

  v32 = v17[2];
  v31 = v17[3];
  if (v32 >= v31 >> 1)
  {
    v17 = sub_1AAD68DF4((v31 > 1), v32 + 1, 1, v17);
  }

  sub_1AACEE984(v12, type metadata accessor for _ChartContentOutputs);
  sub_1AACEE984(v16, type metadata accessor for _ChartContentInputs);
  v17[2] = v32 + 1;
  result = sub_1AAE27A30(v28, v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, type metadata accessor for _ChartContentOutputs);
  *(v4 + v39) = v17;
  return result;
}

void static BuilderTuple<each A>._collectChartContent(content:inputs:)(uint64_t TupleTypeMetadata@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v56 = a3 - 1;
  v60 = a4;
  v61 = a5;
  if (a3 == 1)
  {
    v9 = TupleTypeMetadata;
    v10 = *(a4 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a3)
    {
      v15 = 0;
      v16 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v14[-v16] < 0x20)
      {
        goto LABEL_9;
      }

      v15 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = (v16 + 16);
      v18 = v14 + 16;
      v19 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v15 != a3)
      {
LABEL_9:
        v21 = a3 - v15;
        v22 = 8 * v15;
        v23 = &v14[8 * v15];
        v24 = (v16 + v22);
        do
        {
          v25 = *v24++;
          *v23 = v25;
          v23 += 8;
          --v21;
        }

        while (v21);
      }
    }

    v9 = v11;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v10 = TupleTypeMetadata;
  }

  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for _ChartContentCollectInputs(0);
  v50 = &v47;
  MEMORY[0x1EEE9AC00](v29);
  v31 = a2;
  v32 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE8BF0(v31, v32, type metadata accessor for _ChartContentCollectInputs);
  v65[0] = MEMORY[0x1E69E7CC0];
  v65[1] = 0uLL;
  v65[2] = xmmword_1AAF92AC0;
  LOBYTE(v65[3]) = 0;
  *(&v65[3] + 1) = 0;
  v65[4] = 0uLL;
  v65[5] = xmmword_1AAF92AC0;
  LOBYTE(v65[6]) = 0;
  *(&v65[6] + 1) = 0;
  v65[7] = 0uLL;
  v65[8] = xmmword_1AAF92AC0;
  LOBYTE(v65[9]) = 0;
  *(&v65[9] + 1) = 0;
  v65[10] = 0uLL;
  v65[11] = xmmword_1AAF92AC0;
  LOBYTE(v65[12]) = 0;
  *(&v65[12] + 1) = 0;
  v65[13] = 0uLL;
  v65[14] = xmmword_1AAF92AC0;
  LOBYTE(v65[15]) = 0;
  *(&v65[15] + 1) = 0;
  v65[16] = 0uLL;
  v65[17] = xmmword_1AAF92AC0;
  LOBYTE(v65[18]) = 0;
  *(&v65[18] + 1) = 0;
  v65[19] = 0uLL;
  v65[20] = xmmword_1AAF92AC0;
  LOBYTE(v65[21]) = 0;
  *(&v65[21] + 1) = 0;
  v65[22] = 0uLL;
  v65[23] = xmmword_1AAF92AC0;
  LOBYTE(v65[24]) = 0;
  *(&v65[24] + 1) = 0;
  v65[25] = 0uLL;
  v65[26] = xmmword_1AAF92AC0;
  LOBYTE(v65[27]) = 0;
  *(&v65[27] + 1) = 0;
  v65[28] = 0uLL;
  v65[29] = xmmword_1AAF92AC0;
  LOBYTE(v65[30]) = 0;
  *(&v65[30] + 8) = 0u;
  *(&v65[31] + 8) = 0u;
  *(&v65[32] + 1) = 1;
  memset(&v65[33], 0, 275);
  v57 = v29;
  v33 = *&v32[*(v29 + 20)];
  v34 = *(v26 + 16);
  v59 = v28;
  v34(v28, v9, v10);
  if (a3)
  {
    v47 = v26;
    v55 = a3;
    v49 = a6;

    v54 = v32;
    v35 = swift_beginAccess();
    v36 = 0;
    v52 = v61 & 0xFFFFFFFFFFFFFFFELL;
    v53 = v60 & 0xFFFFFFFFFFFFFFFELL;
    v48 = v10;
    v51 = xmmword_1AAF92AB0;
    v58 = v33;
    while (1)
    {
      v61 = &v47;
      v37 = *(v53 + 8 * v36);
      v38 = *(v52 + 8 * v36);
      v39 = *(v37 - 8);
      v41.n128_f64[0] = MEMORY[0x1EEE9AC00](v35);
      v43 = &v47 - v42;
      v60 = v40;
      v44 = v55 == 1 ? 0 : *v40;
      (*(v39 + 16))(v43, &v59[v44], v37, v41);
      sub_1AADAD8EC();
      v45 = swift_allocObject();
      *(v45 + 16) = v51;
      *(v45 + 32) = v36;
      *(v45 + 72) = 0;
      v62 = v58;

      sub_1AADC85B8(v45);
      v32 = v54;
      *&v54[*(v57 + 20)] = v62;

      if (v36 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      (*(v38 + 64))(&v63, v43, v32, v37, v38);

      sub_1AADC8BA0(v46);
      sub_1AAEEC248(v64);
      sub_1AAD58308(&v63);
      v35 = (*(v39 + 8))(v43, v37);
      if (v56 == v36)
      {

        v10 = v48;
        a6 = v49;
        v26 = v47;
        goto LABEL_21;
      }

      ++v36;
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    memcpy(a6, v65, 0x323uLL);
    (*(v26 + 8))(v59, v10);
    sub_1AACEE984(v32, type metadata accessor for _ChartContentCollectInputs);
  }
}

uint64_t sub_1AAF021E8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAF02238(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1AAF02288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BuilderTuple(255, *(a1 + 16), *(a1 + 24), a4);
  sub_1AAF8D954();
  if (v4 <= 0x3F)
  {
    type metadata accessor for _ChartContentInputs(319);
    if (v5 <= 0x3F)
    {
      sub_1AAE27464(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AAF02370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AAF8E3C4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(a4 + 48))(a2, a4, v12);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a1;
  sub_1AAF8E394();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AAF024A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AAF8E4B4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(a4 + 16))(a2, a4, v12);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a1;
  sub_1AAF8E484();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AAF025D8()
{
  sub_1AAF04FE8(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF04F34(0, &qword_1ED9ADB88, &type metadata for _ChartContentCollectOutputs, MEMORY[0x1E697DDB8]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1AADF797C();
  sub_1AAF8E4C4();
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_1AAF05064(v2, sub_1AAF04FE8);
    return *MEMORY[0x1E698D3F8];
  }

  v12 = *(v5 + 32);
  v12(v10, v2, v4);
  result = (v12)(v7, v10, v4);
  if (v6 == 4)
  {
    v11 = *v7;
    (*(v5 + 8))(v7, v4);
    return v11;
  }

  __break(1u);
  return result;
}

double sub_1AAF027E4@<D0>(uint64_t *a1@<X8>)
{
  v4 = *v2;
  v5 = *(v4 + 16);
  if (v5 == 1)
  {
    v8 = *(type metadata accessor for CollectedChartContent(0) - 8);
    v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

    sub_1AAF04F84(v9, a1);
  }

  else if (v5)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *a1 = v10;
    type metadata accessor for CollectedChartContent(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = MEMORY[0x1E69E7CC0];
    *a1 = v6;
    type metadata accessor for CollectedChartContent(0);

    swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1AAF02900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a3;
  v7 = type metadata accessor for CollectedChartContent(0);
  v8 = *(v7 - 8);
  v23[1] = v7;
  v23[2] = v8;
  v25 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  memset(v26, 0, sizeof(v26));
  v27 = xmmword_1AAF92AC0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v32 = xmmword_1AAF92AC0;
  v33 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v37 = xmmword_1AAF92AC0;
  v38 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v42 = xmmword_1AAF92AC0;
  v43 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v47 = xmmword_1AAF92AC0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 1;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 1;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 1;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 1;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 1;
  v77 = 0;
  v78 = 0;
  v80 = 0u;
  v79 = 0u;
  v81 = 1;
  v97 = 0u;
  memset(v98, 0, sizeof(v98));
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v82 = 0u;
  sub_1AAEEC248((a1 + 8));
  sub_1AAEEC248((v4 + 8));
  sub_1AAED9F30(0, v11);
  v13 = v12;
  v14 = swift_allocBox();
  v16 = v15;
  v17 = *(v13 + 48);
  v18 = *(v13 + 64);
  *v15 = a2;
  sub_1AAF027E4((v15 + v17));
  sub_1AAF027E4((v16 + v18));
  *v10 = v14;
  swift_storeEnumTagMultiPayload();
  v19 = v24;
  sub_1AADFA56C(v26, (v24 + 1));
  sub_1AACBBDB4(0, &qword_1ED9AD6F8, type metadata accessor for CollectedChartContent, MEMORY[0x1E69E6F90]);
  v20 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1AAF92AB0;
  sub_1AAE0FB08(v10, v21 + v20, xmmword_1AAF92AB0);

  result = sub_1AAD58120(v26);
  *v19 = v21;
  return result;
}

void sub_1AAF02BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_1AAF8D954();
  v5 = sub_1AAF8FE74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  sub_1AAF8E4C4();
  v15 = a2;
  v16 = a3;
  v9 = sub_1AAF8D1A4();
  sub_1AACD90D0(sub_1AAF00664, v14, MEMORY[0x1E69E73E0], v9, v10, &v17);
  (*(v6 + 8))(v8, v5);
  if ((v18 & 1) == 0)
  {
    v11 = v17;
    v12 = AGGraphGetAttributeSubgraph();
    AGGraphClearUpdate();
    v13 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    sub_1AAF02DAC(v11, a2, a3);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t sub_1AAF02DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v11[-v5];
  sub_1AAF8DB34();
  v12 = AssociatedTypeWitness;
  v7 = sub_1AAF8D1A4();
  sub_1AACBC418(v6, sub_1AAF04A40, v11, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return AGGraphSetIndirectAttribute();
}

uint64_t sub_1AAF02F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1AAF8D954();
  v4 = sub_1AAF8FE74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v13 - v10);
  sub_1AAF8E4C4();
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v8 + 32))(v11, v7, v3);
  sub_1AACBC3B4(v11);
  type metadata accessor for SetDependency(0);
  AGGraphSetIndirectDependency();
  return (*(v8 + 8))(v11, v3);
}

uint64_t sub_1AAF03160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1AAF8D954();
  v5 = sub_1AAF8FE74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v26 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v30 = (&v23 - v15);
  type metadata accessor for SetSource(0);
  v29 = v3;
  sub_1AAF8E4C4();
  v16 = *(v11 + 48);
  if (v16(v10, 1, v4) == 1)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v24 = v6;
  v25 = v5;
  v18 = *(v11 + 32);
  v18(v30, v10, v4);
  v19 = v28;
  sub_1AAF8E4C4();
  if (v16(v19, 1, v4) == 1)
  {
    (*(v11 + 8))(v30, v4);
    return (*(v24 + 8))(v19, v25);
  }

  else
  {
    v20 = v26;
    v18(v26, v19, v4);
    sub_1AACBC3B4(v20);
    v21 = v30;
    sub_1AACBC3B4(v30);
    AGGraphSetIndirectAttribute();
    v22 = *(v11 + 8);
    v22(v20, v4);
    return (v22)(v21, v4);
  }
}

uint64_t sub_1AAF03494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1AAF8D954();
  v5 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16[-v6];
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16[-v10];
  sub_1AAF8DB34();
  v18 = AssociatedTypeWitness;
  v12 = sub_1AAF8D1A4();
  sub_1AACBC418(v11, sub_1AAF053B0, v17, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  sub_1AACBC644(IndirectAttribute2, v7);
  (*(*(v4 - 8) + 56))(v7, 0, 1, v4);
  return sub_1AAF8E4D4();
}

uint64_t sub_1AAF036D8(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v4);

  sub_1AADC8BA0(v2);
  sub_1AAEEC248(v5);
  return sub_1AAD58308(&v4);
}

void sub_1AAF03740(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = a1;
  sub_1AAF04F34(0, &qword_1ED9ADB88, &type metadata for _ChartContentCollectOutputs, MEMORY[0x1E697DDB8]);
  if (*(*(v4 - 8) + 64) == 4)
  {
    (*(*(v4 - 8) + 16))(a2, &v5, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AAF03874(uint64_t a1)
{
  result = sub_1AAF8E134();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PlottableValueMapper();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ChartContainerValues(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AAF03950(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 803))
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

uint64_t sub_1AAF03998(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 792) = 0;
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
    *(result + 802) = 0;
    *(result + 800) = 0;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 803) = 1;
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

    *(result + 803) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF03AD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 25);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAF03B1C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 88) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 89) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = -a2 << 8;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 73) = 0u;
      return result;
    }

    *(a1 + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF03B9C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 56) | (a2 << 63);
  *(result + 24) = *(result + 24);
  *(result + 56) = v2;
  return result;
}

void sub_1AAF03C0C(uint64_t a1, double a2)
{
  sub_1AAF04F34(319, &qword_1ED9B2090, &type metadata for AnyPrimitivePlottableV2, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_1AAF04F34(319, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1AAF04F34(319, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        sub_1AACBBDB4(319, &qword_1ED9B2B00, sub_1AACAE258, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          sub_1AAF04F34(319, qword_1ED9B2508, &type metadata for ResolvedSymbol, MEMORY[0x1E69E6720]);
          if (v6 <= 0x3F)
          {
            sub_1AAF04F34(319, qword_1ED9B22C0, &type metadata for ResolvedSymbolSize, MEMORY[0x1E69E6720]);
            if (v7 <= 0x3F)
            {
              sub_1AAF04F34(319, &qword_1ED9B23C8, &type metadata for ResolvedLineStyle, MEMORY[0x1E69E6720]);
              if (v8 <= 0x3F)
              {
                sub_1AAF04F34(319, &qword_1ED9B4438, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
                if (v9 <= 0x3F)
                {
                  sub_1AAF04F34(319, &qword_1ED9B2BF8, MEMORY[0x1E697FA58], MEMORY[0x1E69E6720]);
                  if (v10 <= 0x3F)
                  {
                    sub_1AACBBDB4(319, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
                    if (v11 <= 0x3F)
                    {
                      sub_1AAF04F34(319, &qword_1ED9B1E70, MEMORY[0x1E6980D10], MEMORY[0x1E69E6720]);
                      if (v12 <= 0x3F)
                      {
                        sub_1AAF04F34(319, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties, MEMORY[0x1E69E6720]);
                        if (v13 <= 0x3F)
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
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CollectedChartContent.PrimitiveType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 sub_1AAF04024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1AAF04048(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 82))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 81);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAF04084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 81) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AAF040D8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 81) = a2;
  return result;
}

uint64_t sub_1AAF04138(uint64_t a1)
{
  result = type metadata accessor for CollectedChartContent.Primitive(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1AAF04248(uint64_t a1)
{
  sub_1AAF8E4B4();
  if (v1 <= 0x3F)
  {
    sub_1AACBBDB4(319, &unk_1ED9AD878, type metadata accessor for AnyAttribute, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1AAF04300()
{
  result = qword_1EB426E08;
  if (!qword_1EB426E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426E08);
  }

  return result;
}

void sub_1AAF04354(uint64_t a1@<X8>)
{
  if (*(v3 + 320) != 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = *(v3 + 304);
    goto LABEL_17;
  }

  sub_1AAF052C0(v3 + 336, v40, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
  if (v41 != 255)
  {
    sub_1AAF052C0(v40, v31, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    if (v39 == 2)
    {
      v12 = v32;
      v13 = v33;
      v14 = v34;
      v15 = v35;
      v16 = v36;
      v17 = v37;
      v18 = v38;
      sub_1AADB308C(v35, v36, v37, v38);
      sub_1AAD04750(v12, v13, v14);

      v29 = v16;
      v30 = v15;
      v27 = v17;
      v28 = v18;
      sub_1AADB3124(v15, v16, v17, v18);
      goto LABEL_8;
    }

    sub_1AAEDA120(v31);
  }

  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 252;
LABEL_8:
  v20 = 0x80000000000000FCLL;
  sub_1AAF05340(v40, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
  sub_1AAF052C0(v3 + 424, v40, qword_1ED9B2508, &type metadata for ResolvedSymbol);
  if (v41 != 255)
  {
    sub_1AAF052C0(v40, v31, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    if (v39 == 2)
    {
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v7 = v35;
      v8 = v36;
      v9 = v37;
      v25 = v38;
      sub_1AADB308C(v35, v36, v37, v38);
      sub_1AAD04750(v22, v23, v24);

      sub_1AADB3124(v7, v8, v9, v25);
      v20 = v25 | 0x8000000000000000;
      goto LABEL_13;
    }

    sub_1AAEDA1A8(v31);
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_13:
  sub_1AAF05340(v40, qword_1ED9B2508, &type metadata for ResolvedSymbol);
  v10 = 0;
  v26 = *(v3 + 632);
  v4 = -4;
  v5 = 0;
  v6 = 0;
  if ((~v26 & 0x7C) != 0 && (v26 & 0x40) != 0)
  {
    v6 = *(v3 + 624);
    v5 = *(v3 + 616);
    v4 = v26 & 0xBF;
    v10 = *(v3 + 608);
    sub_1AADB308C(v10, v5, v6, v26 & 0xBF);
  }

  v1 = v29;
  v21 = v30;
  v2 = v27;
  v19 = v28;
LABEL_17:
  *a1 = v21;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v19;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v20;
  *(a1 + 64) = v10;
  *(a1 + 72) = v5;
  *(a1 + 80) = v6;
  *(a1 + 88) = v4;
}

void sub_1AAF045E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 56);
  if (v4 < 0)
  {
    v14 = *(v1 + 72);
    v15 = *(v1 + 80);
    v13 = *(v1 + 64);
    v7 = *(v1 + 40);
    v6 = *(v1 + 48);
    v8 = *(v1 + 32);
    v10 = *(v1 + 8);
    v9 = *(v1 + 16);
    v11 = *(v1 + 24);
    v12 = *(v1 + 88);
    MEMORY[0x1AC5992C0](1);
    sub_1AAF04AC0(a1, v3, v10, v9, v11);
    sub_1AAF04AC0(a1, v8, v7, v6, v4);

    sub_1AAF04AC0(a1, v13, v14, v15, v12);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1AC5992F0](v5);
  }
}

uint64_t sub_1AAF046F0()
{
  sub_1AAF90694();
  v1 = *v0;
  v2 = *(v0 + 56);
  if (v2 < 0)
  {
    v13 = *(v0 + 72);
    v14 = *(v0 + 80);
    v12 = *(v0 + 64);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = *(v0 + 8);
    v8 = *(v0 + 16);
    v9 = *(v0 + 24);
    v10 = *(v0 + 88);
    MEMORY[0x1AC5992C0](1);
    sub_1AAF04AC0(v15, v1, v7, v8, v9);
    sub_1AAF04AC0(v15, v6, v5, v4, v2);
    sub_1AAF04AC0(v15, v12, v13, v14, v10);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1AC5992F0](v3);
  }

  return sub_1AAF906F4();
}

uint64_t sub_1AAF047F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v14 = *(v1 + 72);
  v15 = *(v1 + 64);
  v13 = *(v1 + 80);
  v10 = *(v1 + 88);
  sub_1AAF90694();
  if (v9 < 0)
  {
    MEMORY[0x1AC5992C0](1);
    sub_1AAF04AC0(v16, v2, v3, v4, v5);
    sub_1AAF04AC0(v16, v6, v7, v8, v9);
    sub_1AAF04AC0(v16, v15, v14, v13, v10);
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v2;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1AC5992F0](v11);
  }

  return sub_1AAF906F4();
}

BOOL sub_1AAF048D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 3);
  v9[2] = *(a2 + 2);
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = *(a2 + 1);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAF04BB0(v7, v9, v9[0]);
}

unint64_t sub_1AAF04948()
{
  result = qword_1ED9ADBC8[0];
  if (!qword_1ED9ADBC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9ADBC8);
  }

  return result;
}

uint64_t sub_1AAF0499C(uint64_t a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[2] = a2;
  v5[3] = a1;
  v2 = sub_1AAF8D1A4();
  return sub_1AACBC418(v2, sub_1AAF04A60, v5, MEMORY[0x1E698D3D0], MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
}

uint64_t sub_1AAF04A60@<X0>(_DWORD *a2@<X8>)
{
  result = sub_1AAF8D194();
  *a2 = result;
  return result;
}

void sub_1AAF04AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 0xFCu)
  {
    sub_1AAF906B4();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      a2 = 0;
    }

    if ((a5 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);
      MEMORY[0x1AC5992F0](a2);
      if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x1AC5992F0](v9);
      v10 = a4;
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      MEMORY[0x1AC5992F0](a2);
      sub_1AAF906B4();
      if (a4)
      {
        sub_1AAF8F6C4();
      }

      v10 = a5;
    }

    MEMORY[0x1AC5992C0](v10);
  }

  else
  {
    sub_1AAF906B4();
  }
}

BOOL sub_1AAF04BB0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v5 = *(a1 + 56);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((*(a2 + 56) & 0x8000000000000000) == 0)
    {
      return *a2 == *&v4;
    }

    return 0;
  }

  v7 = *(a2 + 56);
  if ((v7 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v20 = *a2;
  v19 = *(a2 + 8);
  v22 = *(a2 + 32);
  v21 = *(a2 + 40);
  v23 = *(a2 + 48);
  v24 = *(a2 + 64);
  v25 = *(a2 + 72);
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  v29 = *(a2 + 16);
  v28 = *(a2 + 24);
  if (v17 > 0xFBu)
  {
    if (*(a2 + 24) > 0xFBu)
    {
      goto LABEL_7;
    }

LABEL_11:
    v65 = v4;
    v66 = v9;
    v67 = v10;
    v68 = v17;
    v69 = v20;
    v70 = v19;
    v71 = v29;
    v72 = v28;
    v31.n128_f64[0] = sub_1AADB3078(v4, v9, v10, v17, a3);
    v32 = *&v20;
    v33 = *&v19;
    v34 = v29;
    v35 = v28;
    goto LABEL_34;
  }

  if (*(a2 + 24) > 0xFBu)
  {
    goto LABEL_11;
  }

  if ((v17 & 0x80) != 0)
  {
    if ((v28 & 0x80) == 0)
    {
      return 0;
    }

    v38 = *&v4;
    result = 0;
    if (v38 == v20)
    {
      a3.n128_u64[0] = v9;
      if (*&v9 == v19 && v29 == v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v36 = *&v4;
    result = 0;
    if ((v28 & 0x80) == 0)
    {
      a3.n128_f64[0] = v36;
      if (v36 == v20)
      {
        if (!v10)
        {
          if (v29 | (v28 ^ v17) & 0x7F)
          {
            return 0;
          }

          goto LABEL_7;
        }

        if (!v29)
        {
          return 0;
        }

        if (v9 == *&v19 && v10 == v29)
        {
          if (((v28 ^ v17) & 0x7F) != 0)
          {
            return 0;
          }

          goto LABEL_7;
        }

        v55 = *(a2 + 48);
        v56 = v12;
        v57 = v11;
        v58 = *(a2 + 64);
        v59 = *(a2 + 72);
        v60 = *(a2 + 80);
        v61 = *(a2 + 88);
        v62 = v14;
        v63 = v13;
        v64 = v15;
        v53 = v16;
        v54 = sub_1AAF904F4();
        result = 0;
        if (v54)
        {
          v16 = v53;
          v13 = v63;
          v15 = v64;
          v14 = v62;
          v27 = v61;
          v25 = v59;
          v26 = v60;
          v11 = v57;
          v24 = v58;
          v23 = v55;
          v12 = v56;
          if (((v28 ^ v17) & 0x7F) == 0)
          {
LABEL_7:
            v30 = v27;
            if (v5 <= 0xFBu)
            {
              if (v7 <= 0xFBu)
              {
                v39 = v18;
                v40 = v16;
                v41 = v24;
                v42 = v22;
                v43 = v25;
                v44 = v21;
                v45 = v26;
                v46 = v15;
                v47 = v13;
                v48 = v14;
                v49 = sub_1AAF0A518(v39, v12, v11, v5, v42, v44, v23, v7);
                v24 = v41;
                v25 = v43;
                v26 = v45;
                v14 = v48;
                v13 = v47;
                v15 = v46;
                v16 = v40;
                if (!v49)
                {
                  return 0;
                }

                goto LABEL_29;
              }
            }

            else if (v7 > 0xFBu)
            {
LABEL_29:
              if (v16 > 0xFB)
              {
                if (v30 > 0xFB)
                {
                  return 1;
                }

                goto LABEL_33;
              }

              if (v30 > 0xFB)
              {
LABEL_33:
                v65 = v14;
                v66 = v13;
                v67 = v15;
                v68 = v16;
                v69 = *&v24;
                v70 = *&v25;
                v71 = v26;
                v72 = v30;
                v50 = v26;
                v51 = v25;
                v52 = v24;
                v31.n128_f64[0] = sub_1AADB3078(v14, v13, v15, v16, a3);
                v32 = v52;
                v33 = v51;
                v34 = v50;
                v35 = v30;
                goto LABEL_34;
              }

              return sub_1AAF0A518(v14, v13, v15, v16, v24, v25, v26, v30);
            }

            v65 = v18;
            v66 = v12;
            v67 = v11;
            v68 = v5;
            v69 = *&v22;
            v70 = *&v21;
            v71 = v23;
            v72 = v7;
            v37 = v23;
            v31.n128_f64[0] = sub_1AADB3078(v18, v12, v11, v5, a3);
            v32 = v22;
            v33 = v21;
            v34 = v37;
            v35 = v7;
LABEL_34:
            sub_1AADB3078(v32, v33, v34, v35, v31);
            sub_1AAF05064(&v65, sub_1AADB309C);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1AAF04F34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAF04F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectedChartContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAF04FE8(uint64_t a1)
{
  if (!qword_1ED9ADB80)
  {
    sub_1AAF04F34(255, &qword_1ED9ADB88, &type metadata for _ChartContentCollectOutputs, MEMORY[0x1E697DDB8]);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9ADB80);
    }
  }
}

uint64_t sub_1AAF05064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAF05130(uint64_t a1)
{
  result = sub_1AAF8E4B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAF051B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8E4B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAF05230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8E4B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAF052C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAF04F34(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAF05340(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAF04F34(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AAF0542C()
{
  result = qword_1EB426E38;
  if (!qword_1EB426E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426E38);
  }

  return result;
}

unint64_t sub_1AAF05480(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1AAF054FC(uint64_t (**a1)(), unint64_t *a2))()
{
  v5 = *(type metadata accessor for ChartContentList.Item(0) - 8);
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_1AAF05ABC(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result);
    return sub_1AAF055F8;
  }

  __break(1u);
  return result;
}

void sub_1AAF055F8(uint64_t *a1)
{
  v1 = *a1;
  sub_1AAF05B20(*a1);

  free(v1);
}

void sub_1AAF05634(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = v2[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
  }
}

void sub_1AAF05664(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_1AAF05688@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_1AAF056B4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AAF05480(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_1AAF056F0(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *sub_1AAF05718()
{
  v1 = sub_1AAF4FBE4(*v0);

  return v1;
}

unint64_t sub_1AAF0575C()
{
  result = qword_1EB426E40;
  if (!qword_1EB426E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426E40);
  }

  return result;
}

uint64_t sub_1AAF05800(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AAF05844(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AAF05844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AAF0542C();
    v7 = a3(a1, &type metadata for ChartContentList, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AAF058F4()
{
  result = qword_1EB426E60;
  if (!qword_1EB426E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426E60);
  }

  return result;
}

uint64_t sub_1AAF05994(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AAF05844(255, &qword_1EB426E50, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AAF05A1C()
{
  result = qword_1EB426E70;
  if (!qword_1EB426E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426E70);
  }

  return result;
}

uint64_t type metadata accessor for ChartContentList.Item(uint64_t a1)
{
  result = qword_1EB426E78;
  if (!qword_1EB426E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AAF05ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartContentList.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF05B20(uint64_t a1)
{
  v2 = type metadata accessor for ChartContentList.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1AAF05B90@<D0>(void *a1@<X8>)
{
  if (qword_1EB422C40 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB426E20;

  return result;
}

uint64_t sub_1AAF05C38(uint64_t a1)
{
  result = sub_1AAF8DC74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAF05CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v33 = a3;
  sub_1AAD73840(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  sub_1AAD62488();
  v11 = v10;
  v35 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1AAF8E5B4();
  v17 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8E5C4();
  sub_1AACE8CC0(a2, v16, type metadata accessor for _ChartContentInputs);
  v20 = sub_1AAF8F184();
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    v32 = v11;
    sub_1AAF06808(0, v22, v23, v24);
    sub_1AAF06878(v25, v26, v27, v28);
    sub_1AAF8DCB4();
    v20(v37, 0);
    sub_1AAF05CEC(v13, v16, v33);
    sub_1AACE8CC0(v9, v6, sub_1AAD73840);
    v29 = sub_1AAF8E5E4();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v6, 1, v29) == 1)
    {
      sub_1AAF067A8(v9, sub_1AAD73840);
      (*(v35 + 8))(v13, v32);
      sub_1AAF067A8(v16, type metadata accessor for _ChartContentInputs);
      (*(v17 + 8))(v19, v34);
      return sub_1AAF067A8(v6, sub_1AAD73840);
    }

    else
    {
      sub_1AAF8E5D4();
      sub_1AAF067A8(v9, sub_1AAD73840);
      (*(v35 + 8))(v13, v32);
      sub_1AAF067A8(v16, type metadata accessor for _ChartContentInputs);
      (*(v17 + 8))(v19, v34);
      return (*(v30 + 8))(v6, v29);
    }
  }

  return result;
}

uint64_t static ChartContent._makeChartContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30[2] = a5;
  v35 = a1;
  sub_1AAD73840(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v30[0] = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1AAF8D954();
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v30 - v15;
  v17 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1AAF8E5B4();
  v31 = *(v20 - 8);
  v32 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8E5C4();
  sub_1AACE8CC0(a2, v19, type metadata accessor for _ChartContentInputs);
  v23 = sub_1AAF8F184();
  sub_1AAF066F0(v16, v12, v35, v24, v22, a3, a4);
  v23(v36, 0);
  v25 = v30[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 48))(v16, v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_1AACE8CC0(v12, v25, sub_1AAD73840);
  v27 = sub_1AAF8E5E4();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v25, 1, v27) == 1)
  {
    sub_1AAF067A8(v12, sub_1AAD73840);
    (*(v33 + 8))(v16, v34);
    sub_1AAF067A8(v19, type metadata accessor for _ChartContentInputs);
    (*(v31 + 8))(v22, v32);
    return sub_1AAF067A8(v25, sub_1AAD73840);
  }

  else
  {
    sub_1AAF8E5D4();
    sub_1AAF067A8(v12, sub_1AAD73840);
    (*(v33 + 8))(v16, v34);
    sub_1AAF067A8(v19, type metadata accessor for _ChartContentInputs);
    (*(v31 + 8))(v22, v32);
    return (*(v28 + 8))(v25, v27);
  }
}

uint64_t static ChartContent._collectChartContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  (*(a4 + 24))(a3, a4, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 64))(v11, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_1AAF066F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ChartContentBodyAccessor(0, a6, a7, v10);
    swift_getWitnessTable();
    return sub_1AAF8DCB4();
  }

  return result;
}

uint64_t sub_1AAF067A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAF06808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB426E88)
  {
    v4 = type metadata accessor for ChartContentBodyAccessor(0, MEMORY[0x1E69E73E0], &protocol witness table for Never, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB426E88);
    }
  }
}

unint64_t sub_1AAF06878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1EB426E90;
  if (!qword_1EB426E90)
  {
    sub_1AAF06808(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426E90);
  }

  return result;
}

uint64_t sub_1AAF068D0(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for ChartContentBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable();
    return sub_1AAF8DCA4();
  }

  return result;
}

uint64_t sub_1AAF069F0(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1AAF09098(0, &qword_1EB426EB0, &type metadata for SectorMark, MEMORY[0x1E697DDB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = (v17 - v9);
  (*(v6 + 16))(v17 - v9, a1, v5, v8);
  if (v7 != 4)
  {
    __break(1u);
  }

  v11 = *v10;
  (*(v6 + 8))(v10, v5);
  v12 = sub_1AAF8F164();
  v13 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  sub_1AACBC63C();
  sub_1AAF090E8(0, &qword_1EB426EB8, &type metadata for SectorMark, &off_1F1FDAA08);
  sub_1AAF09048(&qword_1EB426EC0, &qword_1EB426EB8, &type metadata for SectorMark, &off_1F1FDAA08);
  v14 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v14);
  v17[-4] = v15;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t sub_1AAF06C64(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1AAF09098(0, &qword_1EB4236E0, &type metadata for RectangleMark, MEMORY[0x1E697DDB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = (v17 - v9);
  (*(v6 + 16))(v17 - v9, a1, v5, v8);
  if (v7 != 4)
  {
    __break(1u);
  }

  v11 = *v10;
  (*(v6 + 8))(v10, v5);
  v12 = sub_1AAF8F164();
  v13 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  sub_1AACBC63C();
  sub_1AAF090E8(0, &qword_1EB426ED8, &type metadata for RectangleMark, &off_1F1FDA680);
  sub_1AAF09048(&qword_1EB426EE0, &qword_1EB426ED8, &type metadata for RectangleMark, &off_1F1FDA680);
  v14 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v14);
  v17[-4] = v15;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t _s6Charts15AnyChartContentVAA0cD0A2aDP05_makecD07content6inputsAA01_cD7OutputsV7SwiftUI11_GraphValueVyxG_AA01_cD6InputsVtFZTW_0(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1AAF09098(0, &qword_1ED9ADB98, &type metadata for AnyChartContent, MEMORY[0x1E697DDB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = (v17 - v9);
  (*(v6 + 16))(v17 - v9, a1, v5, v8);
  if (v7 != 4)
  {
    __break(1u);
  }

  v11 = *v10;
  (*(v6 + 8))(v10, v5);
  v12 = sub_1AAF8F164();
  v13 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  sub_1AACBC63C();
  sub_1AAF090E8(0, &qword_1ED9AEBC8, &type metadata for AnyChartContent, &off_1F1FD7AC8);
  sub_1AAF09048(qword_1ED9AEBD0, &qword_1ED9AEBC8, &type metadata for AnyChartContent, &off_1F1FD7AC8);
  v14 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v14);
  v17[-4] = v15;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t sub_1AAF0714C(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1AAF09098(0, &qword_1EB426E98, &type metadata for FunctionGraphMark, MEMORY[0x1E697DDB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = (v17 - v9);
  (*(v6 + 16))(v17 - v9, a1, v5, v8);
  if (v7 != 4)
  {
    __break(1u);
  }

  v11 = *v10;
  (*(v6 + 8))(v10, v5);
  v12 = sub_1AAF8F164();
  v13 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  sub_1AACBC63C();
  sub_1AAF090E8(0, &qword_1EB426EA0, &type metadata for FunctionGraphMark, &off_1F1FDC2E8);
  sub_1AAF09048(&qword_1EB426EA8, &qword_1EB426EA0, &type metadata for FunctionGraphMark, &off_1F1FDC2E8);
  v14 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v14);
  v17[-4] = v15;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t sub_1AAF073C0(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1AAF09098(0, &qword_1EB426F38, &type metadata for FunctionAreaPlotContent, MEMORY[0x1E697DDB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = (v17 - v9);
  (*(v6 + 16))(v17 - v9, a1, v5, v8);
  if (v7 != 4)
  {
    __break(1u);
  }

  v11 = *v10;
  (*(v6 + 8))(v10, v5);
  v12 = sub_1AAF8F164();
  v13 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  sub_1AACBC63C();
  sub_1AAF090E8(0, &qword_1EB426F40, &type metadata for FunctionAreaPlotContent, &off_1F1FD94F0);
  sub_1AAF09048(&qword_1EB426F48, &qword_1EB426F40, &type metadata for FunctionAreaPlotContent, &off_1F1FD94F0);
  v14 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v14);
  v17[-4] = v15;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t sub_1AAF07634(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1AAF09098(0, &qword_1EB426EF8, &type metadata for FunctionLinePlotContent, MEMORY[0x1E697DDB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = (v17 - v9);
  (*(v6 + 16))(v17 - v9, a1, v5, v8);
  if (v7 != 4)
  {
    __break(1u);
  }

  v11 = *v10;
  (*(v6 + 8))(v10, v5);
  v12 = sub_1AAF8F164();
  v13 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  sub_1AACBC63C();
  sub_1AAF090E8(0, &qword_1EB426F00, &type metadata for FunctionLinePlotContent, &off_1F1FD9CB0);
  sub_1AAF09048(&qword_1EB426F08, &qword_1EB426F00, &type metadata for FunctionLinePlotContent, &off_1F1FD9CB0);
  v14 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v14);
  v17[-4] = v15;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t sub_1AAF078A8(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1AAF09098(0, &qword_1EB426F20, &type metadata for BarMark, MEMORY[0x1E697DDB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = (v17 - v9);
  (*(v6 + 16))(v17 - v9, a1, v5, v8);
  if (v7 != 4)
  {
    __break(1u);
  }

  v11 = *v10;
  (*(v6 + 8))(v10, v5);
  v12 = sub_1AAF8F164();
  v13 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  sub_1AACBC63C();
  sub_1AAF090E8(0, &qword_1EB426F28, &type metadata for BarMark, &off_1F1FD9770);
  sub_1AAF09048(&qword_1EB426F30, &qword_1EB426F28, &type metadata for BarMark, &off_1F1FD9770);
  v14 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v14);
  v17[-4] = v15;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t sub_1AAF07B1C(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1AAF09098(0, &qword_1EB426F50, &type metadata for AreaMark, MEMORY[0x1E697DDB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = (v17 - v9);
  (*(v6 + 16))(v17 - v9, a1, v5, v8);
  if (v7 != 4)
  {
    __break(1u);
  }

  v11 = *v10;
  (*(v6 + 8))(v10, v5);
  v12 = sub_1AAF8F164();
  v13 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  sub_1AACBC63C();
  sub_1AAF090E8(0, &qword_1EB426F58, &type metadata for AreaMark, &off_1F1FD9278);
  sub_1AAF09048(&qword_1ED9AEBC0, &qword_1EB426F58, &type metadata for AreaMark, &off_1F1FD9278);
  v14 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v14);
  v17[-4] = v15;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t sub_1AAF07D90(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1AAF09098(0, &qword_1EB426F10, &type metadata for LineMark, MEMORY[0x1E697DDB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = (v17 - v9);
  (*(v6 + 16))(v17 - v9, a1, v5, v8);
  if (v7 != 4)
  {
    __break(1u);
  }

  v11 = *v10;
  (*(v6 + 8))(v10, v5);
  v12 = sub_1AAF8F164();
  v13 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  sub_1AACBC63C();
  sub_1AAF090E8(0, &qword_1EB426F18, &type metadata for LineMark, &off_1F1FD9AD8);
  sub_1AAF09048(&qword_1ED9AEBB8, &qword_1EB426F18, &type metadata for LineMark, &off_1F1FD9AD8);
  v14 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v14);
  v17[-4] = v15;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t sub_1AAF08004(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1AAF09098(0, &qword_1EB423708, &type metadata for RuleMark, MEMORY[0x1E697DDB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = (v17 - v9);
  (*(v6 + 16))(v17 - v9, a1, v5, v8);
  if (v7 != 4)
  {
    __break(1u);
  }

  v11 = *v10;
  (*(v6 + 8))(v10, v5);
  v12 = sub_1AAF8F164();
  v13 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  sub_1AACBC63C();
  sub_1AAF090E8(0, &qword_1EB426EC8, &type metadata for RuleMark, &off_1F1FDA830);
  sub_1AAF09048(&qword_1EB426ED0, &qword_1EB426EC8, &type metadata for RuleMark, &off_1F1FDA830);
  v14 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v14);
  v17[-4] = v15;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t sub_1AAF08278(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_1AAF09098(0, &qword_1EB4234A8, &type metadata for PointMark, MEMORY[0x1E697DDB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = (v17 - v9);
  (*(v6 + 16))(v17 - v9, a1, v5, v8);
  if (v7 != 4)
  {
    __break(1u);
  }

  v11 = *v10;
  (*(v6 + 8))(v10, v5);
  v12 = sub_1AAF8F164();
  v13 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v13;
  sub_1AACBC63C();
  sub_1AAF090E8(0, &qword_1EB426EE8, &type metadata for PointMark, &off_1F1FDA4D0);
  sub_1AAF09048(&qword_1EB426EF0, &qword_1EB426EE8, &type metadata for PointMark, &off_1F1FDA4D0);
  v14 = sub_1AAF8D194();
  MEMORY[0x1EEE9AC00](v14);
  v17[-4] = v15;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

uint64_t sub_1AAF084EC(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = sub_1AACBC3B4(a1);
  v8 = sub_1AAF8F164();
  v9 = *(a2 + *(type metadata accessor for _ChartContentInputs(0) + 24));
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v15[0] = v7;
  v15[1] = v8;
  v15[2] = v9;
  v17 = type metadata accessor for CollectContent(0, a3, a4, v10);
  WitnessTable = swift_getWitnessTable();
  sub_1AAF09098(0, &qword_1ED9AEE20, &type metadata for _ChartContentCollectOutputs, MEMORY[0x1E698D388]);
  sub_1AACBC418(v15, sub_1AAEFE8F4, v16, v17, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  v15[7] = v14;
  sub_1AADF797C();
  return sub_1AAF8E494();
}

double sub_1AAF08684@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED9B59F0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_1AAF92AC0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = xmmword_1AAF92AC0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = xmmword_1AAF92AC0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = xmmword_1AAF92AC0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = xmmword_1AAF92AC0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = xmmword_1AAF92AC0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 320) = xmmword_1AAF92AC0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = xmmword_1AAF92AC0;
  *(a1 + 384) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = xmmword_1AAF92AC0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0;
  *(a1 + 464) = xmmword_1AAF92AC0;
  *(a1 + 480) = 0;
  result = 0.0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 1;
  *(a1 + 799) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 528) = 0u;
  return result;
}

uint64_t sub_1AAF08B90@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1AAF8E134();
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

uint64_t sub_1AAF08C18(uint64_t a1)
{
  v37[101] = *MEMORY[0x1E69E9840];
  v36 = *(a1 + 16);
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1AAF8E134();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v27 = type metadata accessor for ChartContainerValues(0);
  MEMORY[0x1EEE9AC00](v27);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for _ChartContentCollectInputs(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 24);
  v29 = *v1;
  sub_1AAF08B90(v13);
  Value = AGGraphGetValue();
  sub_1AAEDF964(Value, v9);
  v28 = *v9;

  sub_1AAF09190(v9, type metadata accessor for ChartContainerValues);
  sub_1AAF08B90(v7);
  sub_1AAD58818();
  sub_1AAF8E144();
  v15 = *(v30 + 8);
  v16 = v32;
  v15(v7, v32);
  v17 = v37[0];
  v18 = v11[9];
  v19 = AGGraphGetValue();
  sub_1AAEDF964(v19, &v13[v18]);
  v20 = v33;
  sub_1AAF08B90(v33);
  LOBYTE(v18) = sub_1AAF8E0E4();
  v15(v20, v16);
  *&v13[v11[7]] = v28;
  *&v13[v11[8]] = v17;
  v13[v11[10]] = v18 & 1;
  v21 = v36;
  v22 = AGGraphGetValue();
  v24 = v34;
  v23 = v35;
  (*(v35 + 16))(v34, v22, v21);
  (*(*(*(v31 + 8) + 8) + 64))(v37, v24, v13, v21);
  (*(v23 + 8))(v24, v21);
  AGGraphSetOutputValue();
  sub_1AAD58308(v37);
  return sub_1AAF09190(v13, type metadata accessor for _ChartContentCollectInputs);
}

uint64_t sub_1AAF09048(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AAF090E8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AAF09098(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AAF090E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for CollectContent(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAF09138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF09190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAF09200(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v4 = result;
  if ((a3 & 0x80) == 0 && a3 >= 2u)
  {
    swift_beginAccess();
    v5 = sub_1AAEC115C(v4, a2);
    swift_endAccess();
    sub_1AACCAE10(v4, a2, 2);
    return *&v5;
  }

  return result;
}

uint64_t sub_1AAF092C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  swift_beginAccess();

  sub_1AACD7304(v4, v5, v6);
  v8 = sub_1AAEC103C(v4, v5, v6, v7);
  result = swift_endAccess();
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v12 < 0)
  {
    v14 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48) & 1;
    v13 = 0x80;
  }

  else
  {
    v13 = *(a1 + 48);
    if (v12 >= 2u)
    {
      swift_beginAccess();
      v15 = sub_1AAEC115C(v10, v11);
      swift_endAccess();
      result = sub_1AACCAE10(v10, v11, 2);
      v14 = v15;
    }

    else
    {
      v11 = 0;
      v14 = *&v10;
      v10 = 0;
    }
  }

  *a2 = v8;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v14;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13;
  return result;
}

__n128 sub_1AAF09418@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  v58[6] = a1[6];
  v58[7] = v3;
  v58[8] = a1[8];
  v4 = a1[3];
  v58[2] = a1[2];
  v58[3] = v4;
  v5 = a1[5];
  v58[4] = a1[4];
  v58[5] = v5;
  v6 = a1[1];
  v58[0] = *a1;
  v58[1] = v6;
  v7 = sub_1AACDB99C(v58);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v17 = sub_1AACD2C84(v58);
      v18 = *(v17 + 48);
      v63 = *(v17 + 32);
      v64 = v18;
      v65 = *(v17 + 64);
      v19 = *(v17 + 16);
      v61 = *v17;
      v62 = v19;
      v20 = *(v17 + 88);
      v21 = *(v17 + 120);
      v59[2] = *(v17 + 104);
      v59[3] = v21;
      v60 = *(v17 + 136);
      v59[0] = *(v17 + 72);
      v59[1] = v20;
      sub_1AAF092C4(&v61, &v44);
      sub_1AAF092C4(v59, v48 + 8);
      v56 = v48[2];
      *v57 = v49[0];
      *&v57[9] = *(v49 + 9);
      v52 = v46;
      v53 = v47;
      v54 = v48[0];
      v55 = v48[1];
      v50 = v44;
      v51 = v45;
      sub_1AAF0992C(&v50);
    }

    else if (v7 == 4)
    {
      v10 = sub_1AACD2C84(v58);
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v13 = *(v10 + 24);
      *&v50 = *v10;
      BYTE8(v50) = v11;
      v51.n128_u64[0] = v12;
      v51.n128_u8[8] = v13;
      sub_1AAF09908(&v50);
    }

    else
    {
      v27 = sub_1AACD2C84(v58);
      v28 = *(v27 + 48);
      v46 = *(v27 + 32);
      v47 = v28;
      *&v48[0] = *(v27 + 64);
      v29 = *(v27 + 16);
      v44 = *v27;
      v45 = v29;
      v30 = *(v27 + 72);
      v31 = *(v27 + 73);
      v32 = *(v27 + 74);
      v33 = *(v27 + 80);
      v34 = *(v27 + 88);
      v35 = *(v27 + 96);
      sub_1AAF092C4(&v44, &v61);
      v36 = sub_1AAF09200(v33, v34, v35);
      v52 = v63;
      v53 = v64;
      *&v54 = v65;
      v50 = v61;
      v51 = v62;
      BYTE8(v54) = v30;
      BYTE9(v54) = v31 & 1;
      BYTE10(v54) = v32 & 1;
      *&v55 = v36;
      *(&v55 + 1) = v37;
      *&v56 = v38;
      BYTE8(v56) = v39;
      memset(v57, 0, 24);
      v57[24] = -4;
      sub_1AAF098E0(&v50);
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      v8 = sub_1AACD2C84(v58);
      v9 = *(v8 + 8);
      *&v50 = *v8;
      BYTE8(v50) = v9;
      sub_1AAF09974(&v50);
    }

    else
    {
      v22 = sub_1AACD2C84(v58);
      v23 = *(v22 + 48);
      v46 = *(v22 + 32);
      v47 = v23;
      v24 = *(v22 + 72);
      *&v48[0] = *(v22 + 64);
      v25 = *(v22 + 16);
      v44 = *v22;
      v45 = v25;
      v26 = *(v22 + 80);
      sub_1AAF092C4(&v44, &v50);
      *(&v54 + 1) = v24;
      LOBYTE(v55) = v26;
      sub_1AAF09950(&v50);
    }
  }

  else
  {
    v14 = sub_1AACD2C84(v58);
    v15 = *(v14 + 48);
    v46 = *(v14 + 32);
    v47 = v15;
    *&v48[0] = *(v14 + 64);
    v16 = *(v14 + 16);
    v44 = *v14;
    v45 = v16;
    sub_1AAF092C4(&v44, &v50);
    sub_1AAF09998(&v50);
  }

  v72[0] = *v57;
  *(v72 + 9) = *&v57[9];
  v68 = v52;
  v69 = v53;
  v70 = v54;
  v71 = v55;
  v66 = v50;
  v67 = v51;
  v40 = v72[0];
  *(a2 + 96) = v56;
  *(a2 + 112) = v40;
  *(a2 + 121) = *(v72 + 9);
  v41 = v69;
  *(a2 + 32) = v68;
  *(a2 + 48) = v41;
  v42 = v71;
  *(a2 + 64) = v70;
  *(a2 + 80) = v42;
  result = v67;
  *a2 = v66;
  *(a2 + 16) = result;
  return result;
}

double sub_1AAF09710()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AAF0979C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1AAF0988C()
{
  result = qword_1ED9B0458[0];
  if (!qword_1ED9B0458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B0458);
  }

  return result;
}

uint64_t sub_1AAF098E0(uint64_t result)
{
  v1 = *(result + 64) & 0x83 | 0xA000000000000000;
  *(result + 24) &= 1uLL;
  *(result + 64) = v1;
  return result;
}

uint64_t sub_1AAF09908(uint64_t result)
{
  v1 = *(result + 64) & 0x83 | 0x8000000000000000;
  *(result + 24) &= 1uLL;
  *(result + 64) = v1;
  return result;
}

uint64_t sub_1AAF0992C(uint64_t result)
{
  v1 = *(result + 64) & 0x83 | 0x6000000000000000;
  *(result + 24) &= 1uLL;
  *(result + 64) = v1;
  return result;
}

uint64_t sub_1AAF09950(uint64_t result)
{
  v1 = *(result + 64) & 0x83 | 0x4000000000000000;
  *(result + 24) &= 1uLL;
  *(result + 64) = v1;
  return result;
}

uint64_t sub_1AAF09974(uint64_t result)
{
  v1 = *(result + 64) & 0x83 | 0x2000000000000000;
  *(result + 24) &= 1uLL;
  *(result + 64) = v1;
  return result;
}

uint64_t sub_1AAF09998(uint64_t result)
{
  v1 = *(result + 64) & 0x83;
  *(result + 24) &= 1uLL;
  *(result + 64) = v1;
  return result;
}

unint64_t sub_1AAF099C8()
{
  type metadata accessor for PlottableValueMapper();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1AADF7720(MEMORY[0x1E69E7CC0]);
  v3 = sub_1AADF7818(v1);
  v0[2] = v2;
  v0[3] = v3;
  v0[4] = 0;
  v4 = sub_1AADF74B4(v1);
  result = sub_1AADF75E4(v1);
  v0[5] = v4;
  v0[6] = result;
  v0[7] = 0;
  qword_1EB426F60 = v0;
  return result;
}

double sub_1AAF09A48@<D0>(void *a1@<X8>)
{
  if (qword_1EB422C48 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB426F60;

  return result;
}

uint64_t sub_1AAF09AB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1AAF09B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1AAF09B70(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1AAF09BA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAF09BF4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 136) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 137) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 121) = 0u;
      return result;
    }

    *(a1 + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF09C74(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64) & 0x83 | (a2 << 61);
  *(result + 24) &= 1uLL;
  *(result + 64) = v2;
  return result;
}

uint64_t sub_1AAF09CA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1AAF09D04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAF09D6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, double a5)
{
  if (a5 == 0.0)
  {
    a5 = 0.0;
  }

  MEMORY[0x1AC5992F0](*&a5, a2);
  sub_1AAF906B4();
  if (a3)
  {
    sub_1AAF8F6C4();
  }

  return MEMORY[0x1AC5992C0](a4);
}

uint64_t sub_1AAF09DE4(uint64_t a1, uint64_t a2, unsigned __int8 a3, double a4)
{
  sub_1AAF90694();
  v7 = 0.0;
  if (a4 != 0.0)
  {
    v7 = a4;
  }

  MEMORY[0x1AC5992F0](*&v7);
  sub_1AAF906B4();
  if (a2)
  {
    sub_1AAF8F6C4();
  }

  MEMORY[0x1AC5992C0](a3);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF09EAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1AAF90694();
  v5 = 0.0;
  if (v2 != 0.0)
  {
    v5 = v2;
  }

  MEMORY[0x1AC5992F0](*&v5);
  sub_1AAF906B4();
  if (v3)
  {
    sub_1AAF8F6C4();
  }

  MEMORY[0x1AC5992C0](v4);
  return sub_1AAF906F4();
}

BOOL sub_1AAF09F4C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (v3)
  {
    if (v5)
    {
      v7 = *(a1 + 8) == *(a2 + 8) && v3 == v5;
      if (v7 || (sub_1AAF904F4() & 1) != 0)
      {
        return v4 == v6;
      }
    }
  }

  else if (!v5)
  {
    return v4 == v6;
  }

  return 0;
}

unint64_t sub_1AAF09FD8()
{
  result = qword_1EB426FE8;
  if (!qword_1EB426FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426FE8);
  }

  return result;
}

uint64_t sub_1AAF0A02C(double a1, double a2, uint64_t a3, unsigned __int8 a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1AC5992F0](*&a1);
  if (a2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a2;
  }

  MEMORY[0x1AC5992F0](*&v6);
  return MEMORY[0x1AC5992C0](a4);
}

uint64_t sub_1AAF0A088()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1AAF90694();
  sub_1AAF0A02C(v1, v2, v5, v3);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF0A0F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1AAF90694();
  sub_1AAF0A02C(v2, v3, v6, v4);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF0A178(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1AC5992F0](*&v2);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  if ((*(v1 + 40) & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = *(v1 + 40);
  }

  else
  {
    v6 = 0;
  }

  if (v5 < 0)
  {
    MEMORY[0x1AC5992C0](1);
    MEMORY[0x1AC5992F0](v6);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1AC5992F0](v7);
    v5 = v4;
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    MEMORY[0x1AC5992F0](v6);
    sub_1AAF906B4();
    if (v4)
    {
      sub_1AAF8F6C4();
    }
  }

  return MEMORY[0x1AC5992C0](v5);
}

uint64_t sub_1AAF0A240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((a5 & 0x80) != 0)
  {
    MEMORY[0x1AC5992C0](1);
    MEMORY[0x1AC5992F0](v7);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1AC5992F0](v9);
    v10 = a4;
  }

  else
  {
    MEMORY[0x1AC5992C0](0);
    MEMORY[0x1AC5992F0](v7);
    sub_1AAF906B4();
    if (a4)
    {
      sub_1AAF8F6C4();
    }

    v10 = a5;
  }

  return MEMORY[0x1AC5992C0](v10);
}

uint64_t sub_1AAF0A2EC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1AAF90694();
  sub_1AAF0A240(v6, v1, v2, v3, v4);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF0A360(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1AAF90694();
  sub_1AAF0A240(v7, v2, v3, v4, v5);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF0A3E4()
{
  sub_1AAF90694();
  sub_1AAF0A178(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF0A428(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAF0A178(v2);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF0A464(uint64_t a1, uint64_t a2)
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
  return sub_1AAF0A5EC(v7, v9) & 1;
}

unint64_t sub_1AAF0A4C4()
{
  result = qword_1EB426FF0;
  if (!qword_1EB426FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426FF0);
  }

  return result;
}

BOOL sub_1AAF0A518(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a4 & 0x80) == 0)
  {
    if (a8 < 0 || *&a1 != *&a5)
    {
      return 0;
    }

    if (a3)
    {
      if (!a7)
      {
        return 0;
      }

      if (a2 != a6 || a3 != a7)
      {
        return (sub_1AAF904F4() & 1) != 0 && a4 == a8;
      }
    }

    else if (a7)
    {
      return 0;
    }

    return a4 == a8;
  }

  v10 = *&a1 == *&a5;
  if (*&a2 != *&a6)
  {
    v10 = 0;
  }

  if (a7 != a3)
  {
    v10 = 0;
  }

  return a8 < 0 && v10;
}

uint64_t sub_1AAF0A5EC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_1AAF8EA14() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a2 + 40);
  v7 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  if (*(a1 + 64) < 0)
  {
    if ((v10 & 0x80) != 0 && v5 == v8 && v4 == v7 && v9 == v6)
    {
      return 1;
    }
  }

  else
  {
    if ((v10 & 0x80) != 0 || v5 != v8)
    {
      return 0;
    }

    v11 = *(a1 + 64);
    if (v6)
    {
      if (!v9 || (*&v4 != *&v7 || v6 != v9) && (sub_1AAF904F4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    if (v11 == v10)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1AAF0A714()
{
  result = qword_1EB426FF8;
  if (!qword_1EB426FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426FF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyPrimitivePlottableRangeV2(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AnyPrimitivePlottableRangeV2(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1AAF0A804()
{
  result = qword_1EB427000;
  if (!qword_1EB427000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427000);
  }

  return result;
}

uint64_t sub_1AAF0A868(uint64_t a1, unsigned int a2)
{
  v2 = (a2 | (a1 << 32)) + ~(a2 << 32);
  v3 = (v2 ^ (v2 >> 22)) + ~((v2 ^ (v2 >> 22)) << 13);
  v4 = (9 * (v3 ^ (v3 >> 8))) ^ ((9 * (v3 ^ (v3 >> 8))) >> 15);
  return ((v4 + ~(v4 << 27)) >> 31) ^ (v4 + ~(v4 << 27));
}

uint64_t sub_1AAF0A8A8()
{
  if (*v0 == -1)
  {
    return 0x64696C61766E69;
  }

  if (*v0)
  {
    return sub_1AAF90474();
  }

  return 0x7974706D65;
}

char *sub_1AAF0A924(uint64_t a1, float64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = a1 + 32;
  v13 = *(a1 + 32);
  v5 = 1;
  v6 = sub_1AAD6945C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = *(v6 + 2);
LABEL_3:
  v8 = *(v6 + 3);
  if (v7 >= v8 >> 1)
  {
    v6 = sub_1AAD6945C((v8 > 1), v7 + 1, 1, v6);
  }

  *(v6 + 2) = v7 + 1;
  *&v6[16 * v7 + 32] = v13;
  while (v2 != v5)
  {
    v9 = v5 + 1;
    v10 = *(v4 + 16 * v5);
    v11 = vabdq_f64(v10, v13);
    if (v11.f64[0] <= v11.f64[1])
    {
      v11.f64[0] = v11.f64[1];
    }

    ++v5;
    if (v11.f64[0] >= a2)
    {
      ++v7;
      v5 = v9;
      v13 = v10;
      goto LABEL_3;
    }
  }

  return v6;
}

char *sub_1AAF0AA20(uint64_t a1)
{
  v3 = sub_1AAF0A924(a1, 2.22044605e-12);
  v4 = v3;
  v5 = *(v3 + 2);
  if (v5)
  {
    v6 = v5 - 1;
    v7 = v5 != 1;
    if (v5 <= v7)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v2 = v3 + 32;
    v19 = *(v3 + 2);
    v8 = _simd_orient_pd2(*&v3[16 * v6 + 32], v19, *&v3[16 * v7 + 32]);
    v1 = MEMORY[0x1E69E7CC0];
    if (fabs(v8) < 8.8817842e-12)
    {
      goto LABEL_8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v10 = *(v1 + 2);
      v9 = *(v1 + 3);
      if (v10 >= v9 >> 1)
      {
        v1 = sub_1AAD6945C((v9 > 1), v10 + 1, 1, v1);
      }

      *(v1 + 2) = v10 + 1;
      *&v1[16 * v10 + 32] = v19;
LABEL_8:
      if (v5 == 1)
      {
        break;
      }

      v11 = (v4 + 48);
      v12 = 1;
      while (1)
      {
        v13 = v12 < v6 ? v12 + 1 : 0;
        v14 = *(v4 + 2);
        v15 = v12 - 1;
        if (v12 - 1 >= v14)
        {
          break;
        }

        if (v13 >= v14)
        {
          goto LABEL_24;
        }

        v19 = *v11;
        if (fabs(_simd_orient_pd2(v11[-1], *v11, *&v2[16 * v13])) >= 8.8817842e-12)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_1AAD6945C(0, *(v1 + 2) + 1, 1, v1);
          }

          v17 = *(v1 + 2);
          v16 = *(v1 + 3);
          if (v17 >= v16 >> 1)
          {
            v1 = sub_1AAD6945C((v16 > 1), v17 + 1, 1, v1);
          }

          *(v1 + 2) = v17 + 1;
          *&v1[16 * v17 + 32] = v19;
        }

        ++v11;
        v12 = v15 + 2;
        if (v15 + 2 == v5)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      v1 = sub_1AAD6945C(0, *(v1 + 2) + 1, 1, v1);
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

LABEL_23:

  return v1;
}

uint64_t sub_1AAF0AC28(uint64_t result, __n128 a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + 16 * result + 32) = a2;
  return result;
}

uint64_t sub_1AAF0AC40(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 16) = result + 1;
  *(v3 + 8 * result + 32) = a2;
  return result;
}

void sub_1AAF0AC58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v53 = a6;
  v52 = a3;
  v51 = a1;
  v9 = sub_1AAF8E244();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8E934();
  v13 = sub_1AAF0AA20(a2);
  v14 = v13;
  v15 = *(v13 + 2);
  if (v15)
  {
    v47 = a4;
    v16 = 0;
    v17 = v13 + 32;
    v50 = *MEMORY[0x1E697F468];
    v18 = (v10 + 104);
    v19 = (v10 + 8);
    v49 = -1.57079633;
    v20 = 0.5;
    v48 = 0.0174532925;
    while (1)
    {
      v21 = v16 - 1;
      if (!v16)
      {
        v21 = v15 - 1;
      }

      v22 = v16 < v15 - 1 ? v16 + 1 : 0;
      if ((v21 & 0x8000000000000000) != 0)
      {
        break;
      }

      v23 = *(v14 + 2);
      if (v21 >= v23)
      {
        goto LABEL_45;
      }

      if (v22 >= v23)
      {
        goto LABEL_46;
      }

      v24 = *&v17[16 * v16];
      v25 = *&v17[16 * v21];
      v26 = *&v17[16 * v22];
      v27 = *&v17[16 * v16 + 8];
      v28 = v27 - *&v17[16 * v22 + 8];
      v55 = vsubq_f64(v24, v26);
      v29 = vmulq_f64(v55, v55).f64[0] + v28 * v28;
      v54 = v25;
      v60 = v24;
      v56 = v26;
      v57 = vsubq_f64(vdupq_lane_s64(v25.i64[0], 0), vzip1q_s64(v24, v26));
      v58 = vsubq_f64(vdupq_laneq_s64(v25, 1), vzip2q_s64(v24, v26));
      v30 = vaddq_f64(vmulq_f64(v57, v57), vmulq_f64(v58, v58));
      v31 = v30.f64[0] + v29 - v30.f64[1];
      v59 = v30;
      v32 = sqrt(v29 * v30.f64[0]);
      v33 = acos(v31 / (v32 + v32));
      if (v33 >= 3.14159265)
      {
        v76 = v61;
        v77 = v62;
        v78 = v63;
        if (sub_1AAF8E8E4())
        {
          sub_1AAF8E8A4();
        }

        else
        {
          sub_1AAF8E8D4();
        }
      }

      else
      {
        v34 = v33;
        (*v18)(v12, v50, v9);
        v35 = sub_1AAF8E234();
        (*v19)(v12, v9);
        v36 = v29 <= 8.8817842e-12 || v59.f64[0] <= 8.8817842e-12;
        if (v36 || v34 + v49 >= v48 || (v35 & 1) == 0)
        {
          tan(v34 * v20);
          v37 = *(*v52 + 16);
          if (v37)
          {
            v38 = *v52 + 48;
            do
            {
              if (vabdd_f64(v60.f64[0], *(v38 - 16)) < a5 && vabdd_f64(v27, *(v38 - 8)) < a5)
              {
                break;
              }

              v38 += 24;
              --v37;
            }

            while (v37);
          }

          v73 = v61;
          v74 = v62;
          v75 = v63;
          if (sub_1AAF8E8E4())
          {
            sub_1AAF8E8A4();
          }

          else
          {
            sub_1AAF8E8D4();
          }

          v68 = 0;
          v69 = 0;
          v67 = 0x3FF0000000000000;
          v70 = 0x3FF0000000000000;
          v71 = 0;
          v72 = 0;
          sub_1AAF8E8B4();
        }

        else
        {
          v64 = v61;
          v65 = v62;
          v66 = v63;
          if (sub_1AAF8E8E4())
          {
            sub_1AAF8E8A4();
          }

          else
          {
            sub_1AAF8E8D4();
          }

          v39 = sqrt(v59.f64[0]);
          v40 = sqrt(v29);
          v41 = v39 * v20;
          v42 = sub_1AAE9BE90(v52, v60.f64[0], v27, a5, v53);
          if (v39 * v20 < v42)
          {
            v42 = v39 * v20;
          }

          if (v40 * 0.5 >= v42)
          {
            v43 = v42;
          }

          else
          {
            v43 = v40 * 0.5;
          }

          v20 = 0.5;
          sub_1AAF42FBC(v60.f64[0], v27, v43, v57.f64[0] / v39, v58.f64[0] / v39, v41, (0.0 - v55.f64[0]) / v40, (0.0 - v28) / v40, v40 * 0.5);
        }
      }

      if (++v16 == v15)
      {

        a4 = v47;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  else
  {

LABEL_43:
    sub_1AAF8E884();
    v44 = v63;
    v45 = v62;
    *a4 = v61;
    *(a4 + 16) = v45;
    *(a4 + 32) = v44;
  }
}

uint64_t sub_1AAF0B254@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = sub_1AAF8C814();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1AAEB36F8(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  if (a3 - a2 <= COERCE_DOUBLE(1))
  {
    sub_1AAF8CA74();
    sub_1AAD46810();
    sub_1AAF8C794();
    goto LABEL_10;
  }

  v19 = ceil(-log10((a3 - a2) / 100.0));
  if (v19 > 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  sub_1AAF8CA74();
  sub_1AAD46810();
  result = sub_1AAF8C794();
  if (v20 == INFINITY)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v20 < 9.22337204e18)
  {
    v23[1] = v20;
    sub_1AAF0B5C8();
    sub_1AACEFEF4(&qword_1ED9B2750, sub_1AAF0B5C8, MEMORY[0x1E69E6ED8]);
    sub_1AAF8C804();
    MEMORY[0x1AC5953D0](v9, v12);
    (*(v7 + 8))(v9, v6);
    (*(v13 + 8))(v15, v12);
LABEL_10:
    *(a1 + 24) = v12;
    *(a1 + 32) = sub_1AACEFEF4(&qword_1ED9B4470, sub_1AAEB36F8, MEMORY[0x1E6968E80]);
    v22 = sub_1AACB2508(a1);
    result = (*(v13 + 32))(v22, v18, v12);
    *(a1 + 40) = 0;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1AAF0B5C8()
{
  if (!qword_1ED9B1E18)
  {
    v0 = sub_1AAF903C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1E18);
    }
  }
}

uint64_t sub_1AAF0B620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v222 = a3;
  v216 = a2;
  v217 = a1;
  v214 = a4;
  v177 = sub_1AAF8C8F4();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1AAF8C9D4();
  v181 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v180 = v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1AAF8C9B4();
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v185 = v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_1AAF8C944();
  v190 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v191 = v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1AAF8C954();
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v193 = v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_1AAF8C914();
  v198 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v199 = v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_1AAF8C994();
  v201 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v202 = v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_1AAF8C974();
  v207 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v208 = v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AAF8C774();
  v13 = *(v12 - 8);
  v220 = v12;
  v221 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v179 = v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v183 = v173 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v188 = v173 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v196 = v173 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v206 = v173 - v22;
  v23 = sub_1AAF8CA64();
  v218 = *(v23 - 8);
  v219 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v224 = v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v223 = v173 - v26;
  v27 = sub_1AAF8C834();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v28 = sub_1AAF8CBC4();
  MEMORY[0x1EEE9AC00](v28 - 8);
  *&v215 = sub_1AAF8CBA4();
  v29 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v31 = v173 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1AAF8CAA4();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v173 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1E69E6720];
  sub_1AACEBDDC(0, &qword_1ED9B2748, MEMORY[0x1E69690E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = v173 - v38;
  sub_1AACEBDDC(0, &qword_1ED9B2740, MEMORY[0x1E69690F0], v36);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v42 = v173 - v41;
  v43 = sub_1AAF8CA04();
  v212 = *(v43 - 8);
  v213 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v174 = v173 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v178 = v173 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v184 = v173 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v189 = v173 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v197 = v173 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v204 = v173 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v210 = v173 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = v173 - v58;
  v60 = sub_1AAF8C874();
  (*(*(v60 - 8) + 56))(v42, 1, 1, v60);
  v61 = sub_1AAF8C864();
  (*(*(v61 - 8) + 56))(v39, 1, 1, v61);
  (*(v33 + 16))(v35, v216, v32);
  v62 = v219;
  (*(v29 + 16))(v31, v222, v215);
  sub_1AAF8CBB4();
  sub_1AAF8C824();
  v211 = v59;
  sub_1AAF8C8A4();
  v63 = v217;
  v64 = *(v218 + 16);
  v64(v223, v217, v62);
  sub_1AACEC8E4(0);
  v64(v224, v63 + *(v65 + 36), v62);
  sub_1AACEBDDC(0, &qword_1ED9B1E08, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v67 = v66;
  v68 = sub_1AAF8CB94();
  v69 = *(v68 - 8);
  v70 = *(v69 + 80);
  v71 = (v70 + 32) & ~v70;
  v216 = *(v69 + 72);
  v217 = v67;
  v72 = swift_allocObject();
  v215 = xmmword_1AAF92AB0;
  *(v72 + 16) = xmmword_1AAF92AB0;
  v73 = *(v69 + 104);
  (v73)(v72 + v71, *MEMORY[0x1E6969A68], v68);
  sub_1AACEC014(v72);
  swift_setDeallocating();
  v205 = *(v69 + 8);
  v205(v72 + v71, v68);
  swift_deallocClassInstance();
  v74 = v206;
  sub_1AAF8CAF4();

  v75 = sub_1AAF8C724();
  LOBYTE(v63) = v76;
  v77 = *(v221 + 8);
  v78 = v74;
  v79 = v221 + 8;
  v77(v78, v220);
  if (v63)
  {
    goto LABEL_2;
  }

  if (v75 >= 100)
  {
    v116 = v208;
    sub_1AAF8C964();
    v96 = v210;
    v89 = v211;
    sub_1AAF8C8C4();
    (*(v207 + 8))(v116, v209);
    v93 = v212;
    v92 = v213;
    (*(v212 + 8))(v89, v213);
    goto LABEL_16;
  }

  if (v75 < 9)
  {
LABEL_2:
    v173[1] = v70;
    v80 = swift_allocObject();
    *(v80 + 16) = v215;
    v81 = *MEMORY[0x1E6969A78];
    v173[2] = v69 + 104;
    v206 = v73;
    (v73)(v80 + v71, v81, v68);
    sub_1AACEC014(v80);
    swift_setDeallocating();
    v82 = v205;
    v205(v80 + v71, v68);
    swift_deallocClassInstance();
    v83 = v196;
    sub_1AAF8CAF4();

    v84 = sub_1AAF8C734();
    v86 = v85;
    v221 = v79;
    v77(v83, v220);
    if ((v86 & 1) == 0 && v84 >= 4)
    {
      v87 = v208;
      sub_1AAF8C964();
      v88 = v197;
      v89 = v211;
      sub_1AAF8C8C4();
      (*(v207 + 8))(v87, v209);
      v90 = v202;
      sub_1AAF8C984();
      v91 = v204;
      sub_1AAF8C8D4();
      (*(v201 + 8))(v90, v203);
      v93 = v212;
      v92 = v213;
      v94 = *(v212 + 8);
      v94(v88, v213);
      v95 = v199;
      sub_1AAF8C904();
      v96 = v210;
      sub_1AAF8C894();
      (*(v198 + 8))(v95, v200);
LABEL_15:
      v94(v91, v92);
      v94(v89, v92);
      goto LABEL_16;
    }

    v101 = swift_allocObject();
    *(v101 + 16) = v215;
    v102 = *MEMORY[0x1E6969A48];
    v196 = v77;
    (v206)(v101 + v71, v102, v68);
    sub_1AACEC014(v101);
    swift_setDeallocating();
    v82(v101 + v71, v68);
    swift_deallocClassInstance();
    v103 = v188;
    sub_1AAF8CAF4();

    v104 = sub_1AAF8C704();
    v106 = v105;
    v107 = v103;
    v108 = v196;
    (v196)(v107, v220);
    if ((v106 & 1) == 0 && v104 >= 5)
    {
      v109 = v208;
      sub_1AAF8C964();
      v110 = v189;
      v89 = v211;
      sub_1AAF8C8C4();
      (*(v207 + 8))(v109, v209);
      v111 = v202;
      sub_1AAF8C984();
      v112 = v197;
      sub_1AAF8C8D4();
      (*(v201 + 8))(v111, v203);
      v93 = v212;
      v92 = v213;
      v94 = *(v212 + 8);
      v94(v110, v213);
      v113 = v199;
      sub_1AAF8C904();
      v91 = v204;
      sub_1AAF8C894();
      (*(v198 + 8))(v113, v200);
      v94(v112, v92);
      v114 = v191;
      sub_1AAF8C934();
      v115 = v193;
      sub_1AAF8C924();
      (*(v190 + 8))(v114, v192);
      v96 = v210;
      sub_1AAF8C8B4();
      (*(v194 + 8))(v115, v195);
      goto LABEL_15;
    }

    v117 = swift_allocObject();
    *(v117 + 16) = v215;
    (v206)(v117 + v71, *MEMORY[0x1E6969A58], v68);
    sub_1AACEC014(v117);
    swift_setDeallocating();
    v205(v117 + v71, v68);
    swift_deallocClassInstance();
    v118 = v108;
    v119 = v183;
    sub_1AAF8CAF4();
    v120 = v220;

    v121 = sub_1AAF8C714();
    v123 = v122;
    v118(v119, v120);
    if ((v123 & 1) == 0 && v121 >= 2)
    {
      v124 = v208;
      sub_1AAF8C964();
      v125 = v184;
      v89 = v211;
      sub_1AAF8C8C4();
      (*(v207 + 8))(v124, v209);
      v126 = v202;
      sub_1AAF8C984();
      v127 = v189;
      sub_1AAF8C8D4();
      (*(v201 + 8))(v126, v203);
      v93 = v212;
      v92 = v213;
      v94 = *(v212 + 8);
      v94(v125, v213);
      v128 = v199;
      sub_1AAF8C904();
      v129 = v197;
      sub_1AAF8C894();
      (*(v198 + 8))(v128, v200);
      v94(v127, v92);
      v130 = v191;
      sub_1AAF8C934();
      v131 = v193;
      sub_1AAF8C924();
      (*(v190 + 8))(v130, v192);
      v91 = v204;
      sub_1AAF8C8B4();
      (*(v194 + 8))(v131, v195);
      v94(v129, v92);
      v132 = v185;
      sub_1AAF8C9A4();
      v96 = v210;
      sub_1AAF8C9E4();
      (*(v186 + 8))(v132, v187);
      goto LABEL_15;
    }

    v139 = swift_allocObject();
    *(v139 + 16) = v215;
    (v206)(v139 + v71, *MEMORY[0x1E6969A88], v68);
    sub_1AACEC014(v139);
    swift_setDeallocating();
    v205(v139 + v71, v68);
    swift_deallocClassInstance();
    v140 = v179;
    sub_1AAF8CAF4();

    v141 = sub_1AAF8C754();
    v143 = v142;
    (v196)(v140, v120);
    v144 = v208;
    sub_1AAF8C964();
    v145 = (v207 + 8);
    v146 = (v201 + 8);
    v93 = v212;
    v147 = (v212 + 8);
    v148 = (v198 + 8);
    v222 = (v190 + 8);
    if ((v143 & 1) != 0 || v141 < 2)
    {
      v161 = v174;
      v89 = v211;
      sub_1AAF8C8C4();
      (*v145)(v144, v209);
      v162 = v202;
      sub_1AAF8C984();
      v163 = v178;
      sub_1AAF8C8D4();
      (*v146)(v162, v203);
      v152 = *v147;
      v92 = v213;
      (*v147)(v161, v213);
      v164 = v199;
      sub_1AAF8C904();
      v165 = v184;
      sub_1AAF8C894();
      (*v148)(v164, v200);
      v152(v163, v92);
      v166 = v191;
      sub_1AAF8C934();
      v167 = v193;
      sub_1AAF8C924();
      (*v222)(v166, v192);
      v168 = v189;
      sub_1AAF8C8B4();
      (*(v194 + 8))(v167, v195);
      v152(v165, v92);
      v169 = v185;
      sub_1AAF8C9A4();
      v170 = v197;
      sub_1AAF8C9E4();
      (*(v186 + 8))(v169, v187);
      v152(v168, v92);
      v171 = v180;
      sub_1AAF8C9A4();
      v159 = v204;
      sub_1AAF8C9F4();
      (*(v181 + 8))(v171, v182);
      v152(v170, v92);
      v172 = v175;
      sub_1AAF8C8E4();
      v96 = v210;
      sub_1AAF8C884();
      (*(v176 + 8))(v172, v177);
    }

    else
    {
      v149 = v178;
      v89 = v211;
      sub_1AAF8C8C4();
      (*v145)(v144, v209);
      v150 = v202;
      sub_1AAF8C984();
      v151 = v184;
      sub_1AAF8C8D4();
      (*v146)(v150, v203);
      v152 = *v147;
      v92 = v213;
      (*v147)(v149, v213);
      v153 = v199;
      sub_1AAF8C904();
      v154 = v189;
      sub_1AAF8C894();
      (*v148)(v153, v200);
      v152(v151, v92);
      v155 = v191;
      sub_1AAF8C934();
      v156 = v193;
      sub_1AAF8C924();
      (*v222)(v155, v192);
      v157 = v197;
      sub_1AAF8C8B4();
      (*(v194 + 8))(v156, v195);
      v152(v154, v92);
      v158 = v185;
      sub_1AAF8C9A4();
      v159 = v204;
      sub_1AAF8C9E4();
      (*(v186 + 8))(v158, v187);
      v152(v157, v92);
      v160 = v180;
      sub_1AAF8C9A4();
      v96 = v210;
      sub_1AAF8C9F4();
      (*(v181 + 8))(v160, v182);
    }

    v152(v159, v92);
    v152(v89, v92);
  }

  else
  {
    v97 = v208;
    sub_1AAF8C964();
    v98 = v204;
    v89 = v211;
    sub_1AAF8C8C4();
    (*(v207 + 8))(v97, v209);
    v99 = v202;
    sub_1AAF8C984();
    v96 = v210;
    sub_1AAF8C8D4();
    (*(v201 + 8))(v99, v203);
    v93 = v212;
    v92 = v213;
    v100 = *(v212 + 8);
    v100(v98, v213);
    v100(v89, v92);
  }

LABEL_16:
  v133 = v219;
  v134 = *(v93 + 32);
  v134(v89, v96, v92);
  v135 = v214;
  *(v214 + 24) = v92;
  *(v135 + 32) = sub_1AACEFEF4(&qword_1ED9B2850, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
  v136 = sub_1AACB2508(v135);
  v134(v136, v89, v92);
  v137 = *(v218 + 8);
  v137(v224, v133);
  result = (v137)(v223, v133);
  *(v135 + 40) = 1;
  return result;
}

void sub_1AAF0D208(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  sub_1AAF0DA5C(0);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AAF8C814();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1AAF8C7E4();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AAF8CAA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAEB36F8(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v54 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - v22;
  (*(v11 + 16))(v13, a2, v10, v21);
  v63 = sub_1AAD46810();
  sub_1AAF8C794();
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = (a1 + 32);
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      v29 = *v25;
      if ((*v25 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69[0] = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AACEF664(0, *(v26 + 16) + 1, 1);
          v26 = v69[0];
        }

        v28 = *(v26 + 16);
        v27 = *(v26 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1AACEF664((v27 > 1), v28 + 1, 1);
          v26 = v69[0];
        }

        *(v26 + 16) = v28 + 1;
        *(v26 + 8 * v28 + 32) = v29;
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v31 = *(v26 + 16);
  v69[0] = v26;
  v69[1] = v26;
  v69[2] = v26 + 32;
  v69[3] = v31 != 0;
  v69[4] = (2 * v31) | 1;

  v32 = sub_1AAF0DB34(v69);

  v33 = COERCE_DOUBLE(sub_1AADE69D4(v32));
  v35 = v34;

  if (v35)
  {
    v36 = INFINITY;
  }

  else
  {
    v36 = v33;
  }

  if ((v35 & 1) != 0 || (*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (v36 < 0.000001)
  {
    v37 = v55;
    sub_1AAF8C7D4();
    v38 = v56;
    MEMORY[0x1AC5953C0](v37, v15);
    (*(v57 + 8))(v37, v58);
    v39 = v59;
    sub_1AAF8C7F4();
    v40 = v62;
LABEL_18:
    MEMORY[0x1AC5953D0](v39, v15);
    (*(v60 + 8))(v39, v61);
    v41 = *(v16 + 8);
    v41(v38, v15);
    v41(v23, v15);
LABEL_34:
    (*(v16 + 32))(v23, v40, v15);
LABEL_35:
    v49 = v65;
    (*(v16 + 16))(v65, v23, v15);
    sub_1AAF8CA74();
    v50 = v64;
    sub_1AAF8C794();
    *(v49 + *(v50 + 80)) = 0;
    v51 = v66;
    *(v66 + 24) = v50;
    *(v51 + 32) = sub_1AACEFF3C(qword_1ED9AFAC8, sub_1AAF0DA5C, &unk_1AAFC2B10);
    v52 = sub_1AACB2508(v51);
    sub_1AAF0DDA8(v49, v52);
    (*(v16 + 8))(v23, v15);
    *(v51 + 40) = 0;
    return;
  }

  v40 = v62;
  if (v36 >= 1.0)
  {
    if (v36 >= 1000000.0)
    {
      v53 = v55;
      sub_1AAF8C7D4();
      v38 = v56;
      MEMORY[0x1AC5953C0](v53, v15);
      (*(v57 + 8))(v53, v58);
      v39 = v59;
      sub_1AAF8C7F4();
      goto LABEL_18;
    }

    v48 = v59;
    sub_1AAF8C7F4();
    MEMORY[0x1AC5953D0](v48, v15);
    (*(v60 + 8))(v48, v61);
LABEL_33:
    (*(v16 + 8))(v23, v15);
    goto LABEL_34;
  }

  v42 = floor(1.0 - log10(v36) + -0.000000001);
  v43 = __exp10(-v42);
  if (vabdd_f64(v36 / v43, rint(v36 / v43)) <= 0.01)
  {
    v44 = v42;
  }

  else
  {
    v44 = v42 + 1.0;
  }

  if (v44 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v44 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v45 = v44 + 2.0;
  v46 = COERCE__INT64(fabs(v44 + 2.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v46)
  {
    goto LABEL_39;
  }

  if (v45 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v45 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v45 >= v44)
  {
    v67 = v44;
    v68 = v45;
    sub_1AAF0DE0C();
    sub_1AACEFF3C(qword_1EB427008, sub_1AAF0DE0C, MEMORY[0x1E69E5FB8]);
    v47 = v59;
    sub_1AAF8C804();
    MEMORY[0x1AC5953D0](v47, v15);
    (*(v60 + 8))(v47, v61);
    goto LABEL_33;
  }

LABEL_42:
  __break(1u);
}

void sub_1AAF0DA5C(uint64_t a1)
{
  if (!qword_1ED9AFAC0)
  {
    sub_1AAEB36F8(255);
    v5[0] = v2;
    v5[1] = v2;
    v6 = sub_1AACEFF3C(&qword_1ED9B4470, sub_1AAEB36F8, MEMORY[0x1E6968E80]);
    v7 = v6;
    v8 = MEMORY[0x1E69E63E8];
    v9 = MEMORY[0x1E69E63C0];
    v10 = MEMORY[0x1E69E63D0];
    v3 = type metadata accessor for SpecialCaseFormatStyle(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1ED9AFAC0);
    }
  }
}

void *sub_1AAF0DB34(void *result)
{
  v1 = result[3];
  v2 = result[4] >> 1;
  v3 = v2 - v1;
  if (!__OFSUB__(v2, v1))
  {
    v27 = result[4] >> 1;
    v25 = result[3];
    v26 = result[1];
    v28 = *result;
    v23 = *(*result + 16);
    v24 = result[2];
    if (v3 >= v23)
    {
      v4 = *(*result + 16);
    }

    else
    {
      v4 = v2 - v1;
    }

    v29 = MEMORY[0x1E69E7CC0];
    result = sub_1AACEF664(0, v4 & ~(v4 >> 63), 0);
    if (v3 < 0)
    {
      goto LABEL_36;
    }

    if (v4)
    {
      v5 = v27;
      v6 = v25;
      if (v25 > v27)
      {
        v5 = v25;
      }

      v7 = v5 - v25;

      result = swift_unknownObjectRetain();
      v8 = 0;
      v10 = v23;
      v9 = v24;
      do
      {
        if (v10 == v8)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (!(v25 - v27 + v8))
        {
          goto LABEL_30;
        }

        if (v7 == v8)
        {
          goto LABEL_31;
        }

        v11 = *(v28 + 32 + 8 * v8);
        v12 = *(v24 + 8 * v25 + 8 * v8);
        v14 = *(v29 + 16);
        v13 = *(v29 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1AACEF664((v13 > 1), v14 + 1, 1);
          v10 = v23;
          v9 = v24;
          v6 = v25;
          result = v26;
        }

        ++v8;
        *(v29 + 16) = v14 + 1;
        *(v29 + 8 * v14 + 32) = vabdd_f64(v12, v11);
      }

      while (v4 != v8);
      v15 = v6 + v8;
      if (v10 > v3)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }

    result = swift_unknownObjectRetain();
    v9 = v24;
    v6 = v25;
    v15 = v25;
    v10 = v23;
    if (v23 <= v3)
    {
LABEL_28:
      swift_unknownObjectRelease();

      return v29;
    }

LABEL_19:
    v16 = v27;
    v17 = v15;
    while (v4 < v10)
    {
      v18 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_33;
      }

      if (v16 != v17)
      {
        if (v15 < v6 || v17 >= v16)
        {
          goto LABEL_34;
        }

        v19 = *(v28 + 32 + 8 * v4);
        v20 = *(v9 + 8 * v17);
        v22 = *(v29 + 16);
        v21 = *(v29 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1AACEF664((v21 > 1), v22 + 1, 1);
          v10 = v23;
          v9 = v24;
          result = v26;
          v16 = v27;
          v6 = v25;
        }

        *(v29 + 16) = v22 + 1;
        *(v29 + 8 * v22 + 32) = vabdd_f64(v20, v19);
        ++v4;
        ++v17;
        if (v18 != v10)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1AAF0DDA8(uint64_t a1, uint64_t a2)
{
  sub_1AAF0DA5C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AAF0DE0C()
{
  if (!qword_1ED9B0CD8)
  {
    v0 = sub_1AAF8F5D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0CD8);
    }
  }
}

BOOL sub_1AAF0DE64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v2 = (a1 + 32);
  v3 = v4;
  do
  {
    v5 = v1 == 0;
    if (!v1)
    {
      break;
    }

    v6 = *v2++;
    --v1;
  }

  while (v6 == v3);
  return v5;
}

void *sub_1AAF0DEA0()
{
  swift_getAssociatedTypeWitness();

  return sub_1AAF8C6A4();
}

uint64_t sub_1AAF0DF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (sub_1AAF8F5F4() & 1) != 0 && (v17[0] = a3, v17[1] = a4, v17[2] = a5, v17[3] = a6, v17[4] = a7, v17[5] = a8, v17[6] = a9, type metadata accessor for SpecialCaseFormatStyle(0, v17), (sub_1AAF8F5F4()))
  {
    swift_getAssociatedTypeWitness();
    v15 = sub_1AAF8F5F4();
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1AAF0E08C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AAF904F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616963657073 && a2 == 0xE700000000000000 || (sub_1AAF904F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x566C616963657073 && a2 == 0xEC00000065756C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AAF904F4();

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

uint64_t sub_1AAF0E1E0(unsigned __int8 a1)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF0E228(char a1)
{
  if (!a1)
  {
    return 1702060386;
  }

  if (a1 == 1)
  {
    return 0x6C616963657073;
  }

  return 0x566C616963657073;
}

uint64_t sub_1AAF0E314(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAF0E1B8(v3, *v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF0E384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AAF0E08C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AAF0E3D8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1AAF107E8();
  *a2 = result;
  return result;
}

uint64_t sub_1AAF0E414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AAF0E468(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AAF0E4BC(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = v4;
  v16[0] = v4;
  v16[1] = v3;
  v13 = v3;
  v16[2] = v14;
  v12 = *(a2 + 40);
  v11 = *(a2 + 56);
  v17 = v12;
  v18 = v11;
  type metadata accessor for SpecialCaseFormatStyle.CodingKeys(255, v16);
  swift_getWitnessTable();
  v5 = sub_1AAF90454();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1AACBB42C(a1, a1[3]);
  sub_1AAF90764();
  LOBYTE(v16[0]) = 0;
  v9 = v19;
  sub_1AAF90444();
  if (!v9)
  {
    LOBYTE(v16[0]) = 1;
    sub_1AAF90444();
    LOBYTE(v16[0]) = 2;
    swift_getAssociatedTypeWitness();
    sub_1AAF90444();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AAF0E6F8(uint64_t a1, void *a2)
{
  sub_1AAF8F484();
  sub_1AAF8F484();
  swift_getAssociatedTypeWitness();
  return sub_1AAF8F484();
}

uint64_t sub_1AAF0E798(void *a1)
{
  sub_1AAF90694();
  sub_1AAF0E6F8(v3, a1);
  return sub_1AAF906F4();
}

void sub_1AAF0E7E0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a7;
  v58 = a1;
  v43 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v39 - v16;
  v47 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  type metadata accessor for SpecialCaseFormatStyle.CodingKeys(255, &v59);
  swift_getWitnessTable();
  v56 = sub_1AAF90434();
  v49 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v22 = &v39 - v21;
  v51 = a2;
  v52 = a5;
  v59 = a2;
  v60 = a3;
  v53 = a3;
  v54 = a4;
  v61 = a4;
  v62 = a5;
  v46 = a6;
  v63 = a6;
  v64 = v57;
  v65 = a8;
  v23 = type metadata accessor for SpecialCaseFormatStyle(0, &v59);
  v41 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - v24;
  v26 = v58;
  sub_1AACBB42C(v58, v58[3]);
  v57 = v22;
  v27 = v66;
  sub_1AAF90754();
  if (v27)
  {
    sub_1AACB634C(v26);
  }

  else
  {
    v29 = v49;
    v28 = v50;
    v66 = v25;
    v40 = v23;
    v30 = v53;
    v31 = v26;
    LOBYTE(v59) = 0;
    v32 = v51;
    sub_1AAF90424();
    (*(v48 + 32))(v66, v55, v32);
    LOBYTE(v59) = 1;
    sub_1AAF90424();
    (*(v47 + 32))(&v66[*(v40 + 76)], v28, v30);
    LOBYTE(v59) = 2;
    v33 = v44;
    v34 = AssociatedTypeWitness;
    sub_1AAF90424();
    (*(v29 + 8))(v57, v56);
    v35 = v40;
    v36 = v66;
    (*(v42 + 32))(&v66[*(v40 + 80)], v33, v34);
    v37 = v41;
    (*(v41 + 16))(v43, v36, v35);
    v38 = sub_1AACB634C(v31);
    (*(v37 + 8))(v36, v35, v38);
  }
}

uint64_t sub_1AAF0EE00(uint64_t a1, void *a2)
{
  sub_1AAF90694();
  sub_1AAF0E6F8(v4, a2);
  return sub_1AAF906F4();
}

void sub_1AAF0EE80(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_1AAF8CA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v119 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v119 - v14;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_1AADAA0A4(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1AAF0F8A8(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1AADAA0A4(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_1AADAA018(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1AACEFF3C(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      LODWORD(v133) = sub_1AAF8F564();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_1AAF8F564() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1AAD68568(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_1AAD68568((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1AAF0F8A8(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1AADAA0A4(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_1AADAA018(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1AACEFF3C(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v109 = sub_1AAF8F564();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}