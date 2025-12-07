uint64_t static ViewModifierBuilder.buildOptional<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v27 = a2;
  v28 = MEMORY[0x1E697E108];
  v29 = a3;
  v30 = MEMORY[0x1E697E100];
  v7 = type metadata accessor for ConditionalViewModifier.Storage(0, &v27);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25 - v9;
  v11 = sub_1E68B3750();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v25 - v14;
  v16 = *(a2 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v19);
  if ((*(v16 + 48))(v15, 1, a2) == 1)
  {
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v22 = *(v16 + 32);
    v22(v21, v15, a2);
    v22(v10, v21, a2);
  }

  swift_storeEnumTagMultiPayload();
  v27 = a2;
  v28 = MEMORY[0x1E697E108];
  v29 = a3;
  v30 = MEMORY[0x1E697E100];
  v23 = type metadata accessor for ConditionalViewModifier.Storage(0, &v27);
  return (*(*(v23 - 8) + 32))(v26, v10, v23);
}

uint64_t static ViewModifierBuilder.buildEither<A, B>(first:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v12 = type metadata accessor for ConditionalViewModifier.Storage(0, &v19);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v19 - v15;
  (*(*(a2 - 8) + 16))(&v19 - v15, a1, a2, v14);
  swift_storeEnumTagMultiPayload();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v17 = type metadata accessor for ConditionalViewModifier.Storage(0, &v19);
  return (*(*(v17 - 8) + 32))(a6, v16, v17);
}

uint64_t static ViewModifierBuilder.buildEither<A, B>(second:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v12 = type metadata accessor for ConditionalViewModifier.Storage(0, &v19);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v19 - v15;
  (*(*(a3 - 8) + 16))(&v19 - v15, a1, a3, v14);
  swift_storeEnumTagMultiPayload();
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v17 = type metadata accessor for ConditionalViewModifier.Storage(0, &v19);
  return (*(*(v17 - 8) + 32))(a6, v16, v17);
}

uint64_t sub_1E6745CEC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1E6745E14(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1E6745FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a6;
  v14[3] = a7;
  v8 = type metadata accessor for CanvasLayout(0, v14);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  (*(v9 + 16))(v14 - v12, a1, v8, v11);
  sub_1E68B2BC0();
  return (*(v9 + 8))(a1, v8);
}

uint64_t sub_1E67460F0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3[0] = *(a1 + 24);
  v3[1] = v1;
  type metadata accessor for CanvasLayout(255, v3);
  sub_1E68B2C00();
  return sub_1E68B2BD0();
}

uint64_t CanvasLayoutReader.init(layoutProvider:content:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v34 = a2;
  v35 = a3;
  v33 = a1;
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v36 = v18;
  *(&v36 + 1) = v19;
  *&v37 = v20;
  *(&v37 + 1) = a10;
  v21 = type metadata accessor for CanvasLayout(0, &v36);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v32 - v23;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  swift_storeEnumTagMultiPayload();
  v36 = 0u;
  v37 = 0u;
  v25 = sub_1E6746358(a5, a6, a8);
  (*(a10 + 32))(a6, a10);
  CanvasLayout.init(bounds:carouselPageControlSpacing:contentMargins:dynamicTypeSize:intersectionSpacing:sectionDensityFactor:sizeClass:)(&v36, 2, v25, v17, a5, a6, a8, a10, v24, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0);
  *&v36 = a4;
  *(&v36 + 1) = a5;
  *&v37 = a6;
  *(&v37 + 1) = a7;
  v38 = a8;
  v39 = a10;
  v26 = type metadata accessor for CanvasLayoutReader(0, &v36);
  sub_1E6745FEC(v24, v27, a5, a6, v28, a8, a10);
  result = sub_1E6739D3C(v33, a9 + *(v26 + 72));
  v30 = (a9 + *(v26 + 76));
  v31 = v35;
  *v30 = v34;
  v30[1] = v31;
  return result;
}

unint64_t sub_1E6746358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getTupleTypeMetadata2();
  v5 = sub_1E68B3350();
  v6 = sub_1E678307C(v5, a1, &type metadata for CanvasSectionDensityFactor, *(a3 + 24));

  return v6;
}

uint64_t CanvasLayoutReader.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v77 = *(a1 - 8);
  v85 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v86 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E68B1DE0();
  v64 = v6;
  v78 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v75 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 48);
  v87 = *(a1 + 24);
  v88 = v9;
  v10 = a1;
  v99 = v9;
  v98 = v87;
  v65 = type metadata accessor for CanvasLayout(0, &v98);
  v11 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v12);
  v14 = &v59 - v13;
  v81 = *(a1 + 16);
  v69 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096EB0, &qword_1E68B4958);
  v19 = sub_1E68B1E40();
  v74 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v84 = &v59 - v21;
  v22 = *(a1 + 40);
  v23 = sub_1E673F530(&qword_1ED096EB8, &qword_1ED096EB0, &qword_1E68B4958, MEMORY[0x1E697F940]);
  v96 = v22;
  v97 = v23;
  v76 = MEMORY[0x1E697E858];
  v62 = v19;
  WitnessTable = swift_getWitnessTable();
  v63 = WitnessTable;
  v83 = sub_1E6748944(&qword_1EE2EA840, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  *&v98 = v19;
  *(&v98 + 1) = v6;
  *&v99 = WitnessTable;
  *(&v99 + 1) = v83;
  v70 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, OpaqueTypeMetadata2);
  v82 = &v59 - v25;
  v71 = sub_1E68B1E40();
  v73 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v26);
  v66 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v68 = &v59 - v30;
  v31 = v10;
  v32 = *(v3 + *(v10 + 76));
  sub_1E67460F0(v10);
  v32(v14);
  (*(v11 + 8))(v14, v65);
  v33 = v81;
  v89 = v81;
  v90 = v87;
  v80 = v22;
  v91 = v22;
  v92 = v88;
  v93 = v3;
  sub_1E68B2E80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EC0, &qword_1E68B4960);
  sub_1E673F530(&qword_1ED096EC8, &qword_1ED096EC0, &qword_1E68B4960, MEMORY[0x1E697E378]);
  sub_1E68B2740();
  v34 = v33;
  (*(v69 + 8))(v18, v33);
  v35 = v75;
  v61 = v3;
  sub_1E677A200(v75);
  v36 = v77;
  v69 = *(v77 + 16);
  v37 = v86;
  v60 = v31;
  (v69)(v86, v3, v31);
  v38 = (*(v36 + 80) + 64) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v34;
  v40 = v88;
  *(v39 + 24) = v87;
  *(v39 + 40) = v80;
  *(v39 + 48) = v40;
  v77 = *(v36 + 32);
  (v77)(v39 + v38, v37, v31);
  v41 = v62;
  v42 = v64;
  v43 = v63;
  v44 = v84;
  sub_1E68B2AB0();

  (*(v78 + 8))(v35, v42);
  v45 = v44;
  v46 = v41;
  (*(v74 + 8))(v45, v41);
  v47 = v86;
  v48 = v60;
  (v69)(v86, v61, v60);
  v49 = swift_allocObject();
  *(v49 + 16) = v81;
  v50 = v88;
  *(v49 + 24) = v87;
  *(v49 + 40) = v80;
  *(v49 + 48) = v50;
  (v77)(v49 + v38, v47, v48);
  *&v98 = v46;
  *(&v98 + 1) = v42;
  *&v99 = v43;
  *(&v99 + 1) = v83;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v66;
  v53 = OpaqueTypeMetadata2;
  v54 = v82;
  sub_1E68B2AA0();

  (*(v72 + 8))(v54, v53);
  v94 = OpaqueTypeConformance2;
  v95 = MEMORY[0x1E69805D0];
  v55 = v71;
  swift_getWitnessTable();
  v56 = v68;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v57 = *(v73 + 8);
  v57(v52, v55);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v57)(v56, v55);
}

uint64_t sub_1E6746D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28[0] = a2;
  v28[1] = a3;
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v13 = type metadata accessor for CanvasLayoutReader(0, v28);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v24 - v17;
  (*(v14 + 16))(&v24 - v17, a1, v13, v16);
  v19 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = a3;
  *(v20 + 4) = a4;
  *(v20 + 5) = a5;
  v21 = v26;
  *(v20 + 6) = v25;
  *(v20 + 7) = v21;
  result = (*(v14 + 32))(&v20[v19], v18, v13);
  v23 = v27;
  *v27 = sub_1E6748430;
  v23[1] = v20;
  return result;
}

uint64_t sub_1E6746ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)()@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v45 = a8;
  v46 = a2;
  v51 = a6;
  v52 = a7;
  v49 = a4;
  v50 = a5;
  v47 = a1;
  v48 = a3;
  v44 = a9;
  v42 = sub_1E68B1C90();
  v15 = *(v42 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v42, v17);
  v40[0] = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v58 = a6;
  v59 = a7;
  v60 = a8;
  v18 = type metadata accessor for CanvasLayoutReader(0, &v55);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = v40 - v22;
  v41 = sub_1E68B2B20();
  v43 = *(v19 + 16);
  v43(v23, v46, v18);
  v24 = v42;
  (*(v15 + 16))(v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v42);
  v25 = *(v19 + 80);
  v26 = (v25 + 64) & ~v25;
  v40[2] = v26 + v20;
  v40[1] = v25 | 7;
  v27 = (v26 + v20 + *(v15 + 80)) & ~*(v15 + 80);
  v28 = swift_allocObject();
  v29 = v49;
  *(v28 + 2) = v48;
  *(v28 + 3) = v29;
  v30 = v51;
  *(v28 + 4) = v50;
  *(v28 + 5) = v30;
  v31 = v45;
  *(v28 + 6) = v52;
  *(v28 + 7) = v31;
  v32 = *(v19 + 32);
  v32(&v28[v26], v23, v18);
  (*(v15 + 32))(&v28[v27], v40[0], v24);
  v55 = v41;
  v56 = sub_1E6748504;
  v57 = v28;
  v58 = 0;
  v59 = 0;
  sub_1E68B1C60();
  v53 = v33;
  v54 = v34;
  v43(v23, v46, v18);
  v35 = swift_allocObject();
  v36 = v49;
  *(v35 + 2) = v48;
  *(v35 + 3) = v36;
  v37 = v51;
  *(v35 + 4) = v50;
  *(v35 + 5) = v37;
  v38 = v45;
  *(v35 + 6) = v52;
  *(v35 + 7) = v38;
  v32(&v35[v26], v23, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096ED0, &qword_1E68B49E8);
  type metadata accessor for CGSize(0);
  sub_1E67488C0();
  sub_1E6748944(&qword_1EE2EA440, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
  sub_1E68B2AB0();
}

uint64_t sub_1E674727C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31[0] = a1;
  v31[1] = a2;
  v32 = a4;
  v33 = a5;
  v34 = a7;
  v35 = a8;
  v14 = type metadata accessor for CanvasLayout(0, &v32);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v31 - v21;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = a7;
  v37 = a8;
  v23 = type metadata accessor for CanvasLayoutReader(0, &v32);
  v24 = (v31[0] + *(v23 + 72));
  v25 = v24[3];
  v26 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1E67460F0(v23);
  sub_1E68B1C60();
  (*(v26 + 40))(v18, v25, v26, 0.0, 0.0, v27, v28);
  v29 = *(v15 + 8);
  v29(v18, v14);
  sub_1E6748334(v22, v23);
  return (v29)(v22, v14);
}

uint64_t sub_1E6747444(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = a7;
  v32 = a3;
  v33 = a5;
  v34 = a6;
  v35 = a8;
  v36 = a9;
  v14 = type metadata accessor for CanvasLayout(0, &v33);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v31 - v21;
  v23 = *a2;
  v24 = a2[1];
  v33 = a4;
  v34 = a5;
  v35 = a6;
  v36 = v31;
  v37 = a8;
  v38 = a9;
  v25 = type metadata accessor for CanvasLayoutReader(0, &v33);
  v26 = (v32 + *(v25 + 72));
  v27 = v26[3];
  v28 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_1E67460F0(v25);
  (*(v28 + 40))(v18, v27, v28, 0.0, 0.0, v23, v24);
  v29 = *(v15 + 8);
  v29(v18, v14);
  sub_1E6748334(v22, v25);
  return (v29)(v22, v14);
}

uint64_t sub_1E6747614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a7;
  v38 = a2;
  v39 = a3;
  v37 = sub_1E68B1DE0();
  v13 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a5;
  v41 = a6;
  v42 = a8;
  v43 = a9;
  v36 = type metadata accessor for CanvasLayout(0, &v40);
  v17 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v34 - v23;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = v35;
  v44 = a8;
  v45 = a9;
  v25 = type metadata accessor for CanvasLayoutReader(0, &v40);
  v26 = (v39 + *(v25 + 72));
  v27 = v26[3];
  v28 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_1E67460F0(v25);
  (*(v13 + 16))(v16, v38, v37);
  v29 = sub_1E68390C4(v16);
  (*(v28 + 48))(v20, v29, v27, v28);
  v30 = *(v17 + 8);
  v31 = v20;
  v32 = v36;
  v30(v31, v36);
  sub_1E6748334(v24, v25);
  return (v30)(v24, v32);
}

uint64_t sub_1E6747864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a5;
  v13 = sub_1E68B1DE0();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a3;
  v36 = a4;
  v37 = a6;
  v38 = a7;
  v34 = type metadata accessor for CanvasLayout(0, &v35);
  v17 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v33 - v23;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = v33;
  v39 = a6;
  v40 = a7;
  v25 = type metadata accessor for CanvasLayoutReader(0, &v35);
  v26 = (a1 + *(v25 + 72));
  v27 = v26[3];
  v28 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_1E67460F0(v25);
  sub_1E677A200(v16);
  v29 = sub_1E68390C4(v16);
  (*(v28 + 48))(v20, v29, v27, v28);
  v30 = *(v17 + 8);
  v31 = v34;
  v30(v20, v34);
  sub_1E6748334(v24, v25);
  return (v30)(v24, v31);
}

uint64_t sub_1E6747A98(uint64_t a1)
{
  v2 = sub_1E68B1DE0();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1E68B1FB0();
}

uint64_t sub_1E6747B8C(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v11 = *(type metadata accessor for CanvasLayoutReader(0, v13) - 8);
  return sub_1E6747614(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E6747C54()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v7 = *(type metadata accessor for CanvasLayoutReader(0, v10) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1E6747864(v8, v1, v2, v3, v4, v5, v6);
}

void sub_1E6747D64(uint64_t a1)
{
  sub_1E674828C(319);
  if (v3 <= 0x3F)
  {
    v14 = 0;
    v18 = v2;
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    v11 = v4;
    v12 = v5;
    v13 = *(a1 + 48);
    type metadata accessor for CanvasLayout(255, &v11);
    v6 = sub_1E68B2C00();
    if (v7 <= 0x3F)
    {
      v15 = 0;
      v19 = v6;
      v11 = v4;
      v12 = v5;
      ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
      v16 = 0;
      v20 = ExtendedExistentialTypeMetadata;
      v9 = sub_1E67482E4();
      if (v10 <= 0x3F)
      {
        v17 = 0;
        v21 = v9;
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E6747E50(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1E68B1DE0() - 8) + 64);
  v7 = *(*(a3 + 32) - 8);
  if (v6 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 | 7;
  v14 = v8 + (v10 | 7) + 1;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = (((v14 & ~v13) + ((v11 + ((v10 + 96) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  v24 = ((((((((a1 + v14) & ~v13) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v26 = *(*(*(a3 + 32) - 8) + 48);

    return v26((v24 + v10 + 8) & ~v10);
  }

  else
  {
    v25 = *v24;
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void sub_1E674804C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1E68B1DE0() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 32) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + (v12 | 7) + 1;
  v15 = (((v14 & ~(v12 | 7)) + ((*(v10 + 64) + ((v12 + 96) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((((v14 & ~(v12 | 7)) + ((*(v10 + 64) + ((v12 + 96) & ~v12) + 7) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v22 = ((((((((a1 + v14) & ~(v12 | 7)) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v24 = *(v10 + 56);

        v24((v22 + v12 + 8) & ~v12, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v23 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v23 = (a2 - 1);
        }

        *v22 = v23;
      }

      return;
    }
  }

  if ((((v14 & ~(v12 | 7)) + ((*(v10 + 64) + ((v12 + 96) & ~v12) + 7) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if ((((v14 & ~(v12 | 7)) + ((*(v10 + 64) + ((v12 + 96) & ~v12) + 7) & 0xFFFFFFF8) + 55) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

void sub_1E674828C(uint64_t a1)
{
  if (!qword_1EE2EA890)
  {
    sub_1E68B1DE0();
    v1 = sub_1E68B1BA0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2EA890);
    }
  }
}

unint64_t sub_1E67482E4()
{
  result = qword_1EE2EA410;
  if (!qword_1EE2EA410)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2EA410);
  }

  return result;
}

uint64_t sub_1E6748334(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v10[0] = *(a2 + 24);
  v10[1] = v3;
  v4 = type metadata accessor for CanvasLayout(0, v10);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  (*(v8 + 16))(v10 - v7, a1, v4, v6);
  sub_1E68B2C00();
  return sub_1E68B2BE0();
}

uint64_t sub_1E6748430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v14[0] = v2[2];
  v5 = v14[0];
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v14[4] = v9;
  v14[5] = v10;
  v11 = *(type metadata accessor for CanvasLayoutReader(0, v14) - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return sub_1E6746ECC(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_1E6748504()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v13[0] = v0[2];
  v1 = v13[0];
  v13[1] = v2;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v5;
  v13[5] = v6;
  v7 = *(type metadata accessor for CanvasLayoutReader(0, v13) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1E68B1C90() - 8);
  v11 = v0 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1E674727C(v0 + v8, v11, v1, v2, v3, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *v13 = *(v0 + 16);
  v11 = v3;
  v12 = v1;
  *&v13[8] = v1;
  *&v13[24] = v2;
  v14 = v3;
  v4 = type metadata accessor for CanvasLayoutReader(0, v13);
  v5 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v6 = v0 + v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096EA8, &qword_1E68B4950);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E68B1DE0();
    (*(*(v7 - 8) + 8))(v0 + v5, v7);
  }

  else
  {
  }

  v8 = v6 + *(v4 + 68);

  *v13 = v12;
  *&v13[16] = v11;
  v9 = type metadata accessor for CanvasLayout(0, v13);
  (*(*(*(&v12 + 1) - 8) + 8))(v8 + *(v9 + 72));
  sub_1E68B2C00();

  __swift_destroy_boxed_opaque_existential_1((v6 + *(v4 + 72)));

  return swift_deallocObject();
}

uint64_t sub_1E67487F8(uint64_t a1, double *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v10;
  v11 = *(type metadata accessor for CanvasLayoutReader(0, v13) - 8);
  return sub_1E6747444(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1E67488C0()
{
  result = qword_1ED096ED8;
  if (!qword_1ED096ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096ED0, &qword_1E68B49E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096ED8);
  }

  return result;
}

uint64_t sub_1E6748944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DynamicSizeClass.init(width:)@<X0>(_BYTE *a1@<X8>, double a2@<D0>)
{
  if (a2 <= 374.0)
  {
    *a1 = 0;
  }

  else if (a2 < 374.0 || a2 > 460.0)
  {
    if (a2 < 461.0 || a2 > 726.0)
    {
      if (a2 < 727.0 || a2 > 981.0)
      {
        if (a2 < 982.0 || a2 > 1194.0)
        {
          if (a2 < 1195.0)
          {
            result = sub_1E68B3910("Fatal error", 11, 2, 0xD000000000000012, 0x80000001E68E2850, "FitnessCanvasUI/DynamicSizeClassTransform.swift", 47, 2, 36, 0);
            __break(1u);
          }

          else
          {
            *a1 = 5;
          }
        }

        else
        {
          *a1 = 4;
        }
      }

      else
      {
        *a1 = 3;
      }
    }

    else
    {
      *a1 = 2;
    }
  }

  else
  {
    *a1 = 1;
  }

  return result;
}

uint64_t sub_1E6748AE4@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v23 = a1;
  v9 = sub_1E68B3750();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - v12;
  v14 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a2, v9, v17);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v20 = 1;
  }

  else
  {
    (*(v14 + 32))(v19, v13, a4);
    v23(v19);
    (*(v14 + 8))(v19, a4);
    v20 = 0;
  }

  return (*(*(a3 - 8) + 56))(a5, v20, 1, a3);
}

uint64_t LazyCanvasSectionViewDescriptor.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LazyCanvasSectionViewDescriptor.header.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 164);
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  v7 = *(a1 + 144);
  v10[0] = *(a1 + 16);
  v10[1] = v5;
  v10[2] = v6;
  v10[3] = v7;
  type metadata accessor for CanvasSectionHeader(255, v10);
  v8 = sub_1E68B3750();
  return (*(*(v8 - 8) + 16))(a2, v2 + v4, v8);
}

uint64_t LazyCanvasSectionViewDescriptor.items.getter(uint64_t a1)
{
  sub_1E674B098(a1);
}

uint64_t LazyCanvasSectionViewDescriptor.metrics.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 176);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t LazyCanvasSectionViewDescriptor.init(identifier:densityFactor:header:footer:items:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *a4;
  *a8 = a1;
  *(a8 + 1) = a2;
  v33 = a7;
  v34 = a9;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  v38 = a13;
  v39 = a14;
  v40 = a15;
  v41 = a16;
  v42 = a17;
  v43 = a18;
  v44 = a19;
  v45 = a20;
  v46 = a21;
  v25 = type metadata accessor for LazyCanvasSectionViewDescriptor(0, &v33);
  v26 = v25[41];
  v33 = a7;
  *&v34 = a13;
  *(&v34 + 1) = a15;
  v35 = a20;
  type metadata accessor for CanvasSectionHeader(255, &v33);
  v27 = sub_1E68B3750();
  (*(*(v27 - 8) + 32))(&a8[v26], a3, v27);
  a8[v25[42]] = v24;
  *&a8[v25[43]] = a5;
  v28 = v25[44];
  v29 = sub_1E68B3750();
  return (*(*(v29 - 8) + 32))(&a8[v28], a6, v29);
}

uint64_t sub_1E6748FE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E6749194(unsigned __int8 a1)
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E67491DC(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x7265746F6F66;
  v3 = 0x736D657469;
  if (a1 != 3)
  {
    v3 = 0x7363697274656DLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x726564616568;
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

uint64_t sub_1E6749378(uint64_t a1)
{
  sub_1E68B3B70();
  sub_1E6739CF4(v3, *v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6749444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6748FE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67494A4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E674BEA8();
  *a2 = result;
  return result;
}

uint64_t sub_1E6749500(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6749554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t LazyCanvasSectionViewDescriptor.id.getter()
{
  v0 = sub_1E6739D1C();

  return v0;
}

uint64_t sub_1E67495E0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E6739D1C();
  a1[1] = v2;
}

uint64_t LazyCanvasSectionViewDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  v18 = *(a2 + 128);
  v19 = *(a2 + 136);
  v21 = *(a2 + 144);
  v20 = *(a2 + 152);
  v47 = v4;
  v53 = v4;
  v54 = v5;
  v44 = v5;
  v43 = v6;
  v55 = v6;
  v56 = v7;
  v42 = v7;
  v41 = v8;
  v57 = v8;
  v58 = v9;
  v32[2] = v9;
  v46 = v10;
  v59 = v10;
  v60 = v11;
  v40 = v11;
  v48 = v12;
  v61 = v12;
  v62 = v13;
  v39 = v13;
  v38 = v14;
  v63 = v14;
  v64 = v15;
  v37 = v15;
  v36 = v16;
  v65 = v16;
  v66 = v17;
  v35 = v17;
  v34 = v18;
  v67 = v18;
  v68 = v19;
  v32[1] = v19;
  v45 = v21;
  v69 = v21;
  v70 = v20;
  v33 = v20;
  type metadata accessor for LazyCanvasSectionViewDescriptor.CodingKeys(255, &v53);
  swift_getWitnessTable();
  v22 = sub_1E68B3AC0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v32 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = v49;
  sub_1E68B3BD0();
  LOBYTE(v53) = 0;
  v28 = v50;
  sub_1E68B3A70();
  if (!v28)
  {
    v50 = v23;
    LOBYTE(v71) = 1;
    v30 = v47;
    v53 = v47;
    v54 = v46;
    v55 = v48;
    v56 = v45;
    type metadata accessor for CanvasSectionHeader(0, &v53);
    swift_getWitnessTable();
    sub_1E68B3A60();
    v31 = v30;
    LOBYTE(v53) = *(v27 + *(a2 + 168));
    LOBYTE(v71) = 2;
    sub_1E674B0D4();
    sub_1E68B3AB0();
    v23 = v50;
    v71 = *(v27 + *(a2 + 172));
    v52 = 3;
    v53 = v31;
    v54 = v44;
    v55 = v43;
    v56 = v42;
    v57 = v41;
    v58 = v40;
    v59 = v48;
    v60 = v39;
    v61 = v38;
    v62 = v37;
    v63 = v36;
    v64 = v35;
    v65 = v34;
    v66 = v33;
    type metadata accessor for LazyCanvasItemDescriptor(255, &v53);
    sub_1E68B33B0();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1E68B3AB0();
    LOBYTE(v53) = 4;
    sub_1E68B3A60();
  }

  return (*(v23 + 8))(v26, v22);
}

uint64_t LazyCanvasSectionViewDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20)
{
  v74 = a6;
  v79 = a5;
  v77 = a4;
  v76 = a1;
  v55 = a9;
  v81 = a17;
  v82 = a20;
  v75 = a16;
  v80 = a15;
  v78 = a14;
  v73 = a13;
  v72 = a12;
  v71 = a10;
  v70 = a18;
  v69 = a7;
  v54 = sub_1E68B3750();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v24);
  v56 = &v51 - v25;
  v84 = a2;
  v85 = a8;
  v65 = a8;
  v86 = a11;
  v87 = a19;
  v66 = a19;
  v62 = type metadata accessor for CanvasSectionHeader(255, &v84);
  v61 = sub_1E68B3750();
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v26);
  v60 = &v51 - v27;
  v84 = a2;
  v85 = a3;
  v86 = v77;
  v87 = v79;
  v28 = v74;
  v88 = v74;
  v89 = a7;
  v90 = a8;
  v91 = a10;
  v92 = a11;
  v93 = a12;
  v29 = v73;
  v94 = v73;
  v95 = v78;
  v30 = v75;
  v96 = v80;
  v97 = v75;
  v31 = v70;
  v98 = v81;
  v99 = v70;
  v100 = a19;
  v101 = v82;
  type metadata accessor for LazyCanvasSectionViewDescriptor.CodingKeys(255, &v84);
  WitnessTable = swift_getWitnessTable();
  v64 = sub_1E68B3A20();
  v59 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v32);
  v34 = &v51 - v33;
  v63 = a2;
  v84 = a2;
  v85 = a3;
  v57 = a3;
  v35 = v76;
  v86 = v77;
  v87 = v79;
  v88 = v28;
  v89 = v69;
  v90 = v65;
  v91 = v71;
  v65 = a11;
  v92 = a11;
  v93 = v72;
  v94 = v29;
  v95 = v78;
  v96 = v80;
  v97 = v30;
  v98 = v81;
  v99 = v31;
  v100 = v66;
  v101 = v82;
  v36 = type metadata accessor for LazyCanvasSectionViewDescriptor(0, &v84);
  v52 = *(v36 - 1);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = (&v51 - v38);
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v66 = v34;
  v40 = v68;
  sub_1E68B3BC0();
  if (v40)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v41 = v60;
  v42 = v63;
  v43 = v59;
  v68 = v39;
  v44 = v61;
  LOBYTE(v84) = 0;
  v45 = sub_1E68B39C0();
  v46 = v68;
  *v68 = v45;
  v46[1] = v47;
  WitnessTable = v47;
  LOBYTE(v84) = 1;
  swift_getWitnessTable();
  sub_1E68B39B0();
  (*(v58 + 32))(v46 + v36[41], v41, v44);
  LOBYTE(v102) = 2;
  sub_1E674B128();
  v62 = 0;
  sub_1E68B3A00();
  *(v46 + v36[42]) = v84;
  v84 = v42;
  v85 = v57;
  v86 = v77;
  v87 = v79;
  v88 = v74;
  v89 = v71;
  v90 = v65;
  v91 = v72;
  v92 = v73;
  v93 = v78;
  v94 = v80;
  v95 = v75;
  v96 = v81;
  v97 = v82;
  type metadata accessor for LazyCanvasItemDescriptor(255, &v84);
  sub_1E68B33B0();
  LOBYTE(v84) = 3;
  v83 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B3A00();
  *(v46 + v36[43]) = v102;
  LOBYTE(v84) = 4;
  v48 = v56;
  sub_1E68B39B0();
  (*(v43 + 8))(v66, v64);
  (*(v53 + 32))(v46 + v36[44], v48, v54);
  v49 = v52;
  (*(v52 + 16))(v55, v46, v36);
  __swift_destroy_boxed_opaque_existential_1(v76);
  return (*(v49 + 8))(v46, v36);
}

BOOL static LazyCanvasSectionViewDescriptor.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v94 = a7;
  v93 = a6;
  v92 = a5;
  v91 = a4;
  v86 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E68B3750();
  v88 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v84 = &v70 - v28;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v29);
  v85 = &v70 - v30;
  v99 = a3;
  v103 = a3;
  v104 = a9;
  v95 = a9;
  v100 = a11;
  v105 = a11;
  v106 = a19;
  v96 = a19;
  v31 = type metadata accessor for CanvasSectionHeader(0, &v103);
  v102 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v89 = &v70 - v33;
  v34 = sub_1E68B3750();
  v101 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v70 - v36;
  v38 = swift_getTupleTypeMetadata2();
  v90 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v70 - v40;
  v42 = *a1;
  v43 = *(a1 + 1);
  v97 = a1;
  v44 = *a2;
  v45 = *(a2 + 1);
  v98 = a2;
  if (__PAIR128__(v43, v42) != __PAIR128__(v45, v44) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  v71 = v25;
  v72 = v26;
  v103 = v99;
  v104 = v91;
  v105 = v92;
  v106 = v93;
  v107 = v94;
  v108 = a8;
  v73 = a8;
  v109 = v95;
  v110 = a10;
  v74 = a10;
  v111 = v100;
  v112 = a12;
  v75 = a12;
  v76 = a13;
  v113 = a13;
  v114 = a14;
  v77 = a14;
  v78 = a15;
  v115 = a15;
  v116 = a16;
  v79 = a16;
  v80 = a17;
  v117 = a17;
  v118 = a18;
  v70 = a18;
  v119 = v96;
  v120 = a20;
  v81 = a20;
  v82 = type metadata accessor for LazyCanvasSectionViewDescriptor(0, &v103);
  v46 = *(v82 + 164);
  v47 = *(v38 + 48);
  v48 = *(v101 + 16);
  v48(v41, &v97[v46], v34);
  v48(&v41[v47], &v98[v46], v34);
  v49 = *(v102 + 48);
  if (v49(v41, 1, v31) != 1)
  {
    v48(v37, v41, v34);
    if (v49(&v41[v47], 1, v31) != 1)
    {
      v50 = v102;
      v51 = v89;
      (*(v102 + 32))(v89, &v41[v47], v31);
      v52 = static CanvasSectionHeader.== infix(_:_:)(v37, v51, v99, v95, v100, v96);
      v53 = *(v50 + 8);
      v53(v51, v31);
      v53(v37, v31);
      (*(v101 + 8))(v41, v34);
      if (!v52)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v102 + 8))(v37, v31);
LABEL_8:
    (*(v90 + 8))(v41, v38);
    return 0;
  }

  if (v49(&v41[v47], 1, v31) != 1)
  {
    goto LABEL_8;
  }

  (*(v101 + 8))(v41, v34);
LABEL_10:
  v54 = v82;
  v55 = v97;
  v56 = v98;
  if (v97[*(v82 + 168)] != v98[*(v82 + 168)])
  {
    return 0;
  }

  v103 = v99;
  v104 = v91;
  v105 = v92;
  v106 = v93;
  v107 = v94;
  v108 = v74;
  v109 = v100;
  v110 = v75;
  v111 = v76;
  v112 = v77;
  v113 = v78;
  v114 = v79;
  v115 = v80;
  v116 = v81;
  type metadata accessor for LazyCanvasItemDescriptor(0, &v103);
  swift_getWitnessTable();
  if ((sub_1E68B33D0() & 1) == 0)
  {
    return 0;
  }

  v57 = *(v54 + 176);
  v58 = *(TupleTypeMetadata2 + 48);
  v59 = *(v88 + 16);
  v60 = v85;
  v61 = v72;
  v59(v85, &v55[v57], v72);
  v59(&v60[v58], &v56[v57], v61);
  v62 = v86;
  v63 = *(v86 + 48);
  v64 = v73;
  if (v63(v60, 1, v73) == 1)
  {
    if (v63(&v60[v58], 1, v64) == 1)
    {
      (*(v88 + 8))(v60, v61);
      return 1;
    }

    goto LABEL_17;
  }

  v65 = v84;
  v59(v84, v60, v61);
  if (v63(&v60[v58], 1, v64) == 1)
  {
    (*(v62 + 8))(v65, v64);
LABEL_17:
    (*(v83 + 8))(v60, TupleTypeMetadata2);
    return 0;
  }

  v66 = v71;
  (*(v62 + 32))(v71, &v60[v58], v64);
  v67 = sub_1E68B3190();
  v68 = *(v62 + 8);
  v68(v66, v64);
  v68(v65, v64);
  (*(v88 + 8))(v60, v61);
  return (v67 & 1) != 0;
}

uint64_t LazyCanvasSectionViewDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1E68B31F0();
  v5 = *(a2 + 64);
  v6 = *(a2 + 80);
  v7 = *(a2 + 144);
  v11 = *(a2 + 16);
  v4 = v11;
  *&v12 = v5;
  *(&v12 + 1) = v6;
  *&v13 = v7;
  type metadata accessor for CanvasSectionHeader(255, &v11);
  sub_1E68B3750();
  swift_getWitnessTable();
  sub_1E68B3760();
  MEMORY[0x1E69523D0](*(v2 + *(a2 + 168)));
  v8 = *(a2 + 72);
  v9 = *(a2 + 152);
  v11 = v4;
  v12 = *(a2 + 24);
  v13 = *(a2 + 40);
  v14 = v8;
  v15 = v6;
  v16 = *(a2 + 88);
  v17 = *(a2 + 104);
  v18 = *(a2 + 120);
  v19 = v9;
  type metadata accessor for LazyCanvasItemDescriptor(0, &v11);
  swift_getWitnessTable();
  sub_1E68B33C0();
  sub_1E68B3750();
  return sub_1E68B3760();
}

uint64_t LazyCanvasSectionViewDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  LazyCanvasSectionViewDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E674AFD8(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  LazyCanvasSectionViewDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E674B070(uint64_t a1)
{
  sub_1E674B098(a1);
}

unint64_t sub_1E674B0D4()
{
  result = qword_1EE2ED210;
  if (!qword_1EE2ED210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED210);
  }

  return result;
}

unint64_t sub_1E674B128()
{
  result = qword_1ED096EE0[0];
  if (!qword_1ED096EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED096EE0);
  }

  return result;
}

uint64_t sub_1E674B1A4(uint64_t a1)
{
  v21 = 0;
  v25 = MEMORY[0x1E69E6158];
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
    v27 = &type metadata for CanvasSectionFooter;
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
    type metadata accessor for LazyCanvasItemDescriptor(255, &v12);
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

uint64_t sub_1E674B2D8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(sub_1E68B1820() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v54 = a3[8];
  v8 = *(v54 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v53 = a3[2];
  v12 = *(v53 - 8);
  if (v11 <= v7)
  {
    v13 = *(v5 + 84);
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v12 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v15;
  }

  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a3[7] - 8);
  v19 = v18;
  v20 = *(v18 + 84);
  v21 = v20 - 1;
  if (!v20)
  {
    v21 = 0;
  }

  if (v17 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v17;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  if (v10)
  {
    v24 = *(v8 + 64);
  }

  else
  {
    v24 = *(v8 + 64) + 1;
  }

  if (v14)
  {
    v25 = v16 == 0;
  }

  else
  {
    v25 = (v16 == 0) + 1;
  }

  v26 = *(v8 + 80);
  v27 = *(v12 + 80);
  v28 = *(v5 + 64);
  v29 = *(v12 + 64);
  v30 = *(v18 + 80);
  if (v20)
  {
    v31 = *(v18 + 64);
  }

  else
  {
    v31 = *(v18 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v32 = v27;
  v33 = (v26 | *(v5 + 80) | v27);
  v34 = v28 + v26;
  v35 = v24 + v27;
  v36 = v25 + v29 + ((v35 + (v34 & ~v26)) & ~v27);
  v37 = v30 + 16;
  v38 = a2 - v23;
  if (a2 <= v23)
  {
    goto LABEL_55;
  }

  v39 = (v37 + ((v36 + ((v33 + 16) & ~v33)) & 0xFFFFFFFFFFFFFFF8)) & ~v30;
  v40 = v31 + v39;
  v41 = 8 * (v31 + v39);
  if (v40 <= 3)
  {
    v43 = ((v38 + ~(-1 << v41)) >> v41) + 1;
    if (HIWORD(v43))
    {
      v42 = *(a1 + v40);
      if (!v42)
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v43 > 0xFF)
    {
      v42 = *(a1 + v40);
      if (!*(a1 + v40))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v43 < 2)
    {
LABEL_55:
      if ((v22 & 0x80000000) == 0)
      {
        v47 = *(a1 + 1);
        if (v47 >= 0xFFFFFFFF)
        {
          LODWORD(v47) = -1;
        }

        return (v47 + 1);
      }

      v49 = (a1 + v33 + 16) & ~v33;
      if (v17 == v23)
      {
        if (v16 < 2)
        {
          return 0;
        }

        if (v7 == v16)
        {
          v50 = (*(v6 + 48))(v49);
        }

        else
        {
          v51 = (v34 + v49) & ~*(v9 + 80);
          if (v11 == v16)
          {
            v52 = (*(v9 + 48))(v51, v10, v54);
          }

          else
          {
            v52 = (*(*(v53 - 8) + 48))((v35 + v51) & ~v32, v14, v53);
          }

          if (v52 >= 2)
          {
            v50 = v52 - 1;
          }

          else
          {
            v50 = 0;
          }
        }
      }

      else
      {
        v50 = (*(v19 + 48))((v37 + ((v36 + v49) & 0xFFFFFFFFFFFFFFF8)) & ~v30, v20);
      }

      if (v50 >= 2)
      {
        return v50 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v42 = *(a1 + v40);
  if (!*(a1 + v40))
  {
    goto LABEL_55;
  }

LABEL_42:
  v44 = (v42 - 1) << v41;
  if (v40 > 3)
  {
    v44 = 0;
  }

  if (v40)
  {
    if (v40 <= 3)
    {
      v45 = v40;
    }

    else
    {
      v45 = 4;
    }

    if (v45 > 2)
    {
      if (v45 == 3)
      {
        v46 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v46 = *a1;
      }
    }

    else if (v45 == 1)
    {
      v46 = *a1;
    }

    else
    {
      v46 = *a1;
    }
  }

  else
  {
    v46 = 0;
  }

  return v23 + (v46 | v44) + 1;
}

void sub_1E674B700(_WORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = sub_1E68B1820();
  v7 = 0;
  v8 = *(v6 - 8);
  v9 = *(v8 + 84);
  v58 = a4[8];
  v10 = *(v58 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = v12;
  }

  v56 = a4[2];
  v14 = *(v56 - 8);
  v15 = *(v14 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  v60 = a4[7];
  v19 = *(v60 - 8);
  v20 = *(v19 + 84);
  v57 = *(v58 - 8);
  v59 = *(v6 - 8);
  v21 = *(v8 + 80);
  v22 = *(v19 + 80);
  v23 = *(v19 + 64);
  v24 = v20 - 1;
  if (!v20)
  {
    v24 = 0;
  }

  if (v18 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v18;
  }

  if (v25 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v25;
  }

  if (v11)
  {
    v27 = *(*(v58 - 8) + 64);
  }

  else
  {
    v27 = *(*(v58 - 8) + 64) + 1;
  }

  if (v15)
  {
    v28 = *(*(v56 - 8) + 64);
  }

  else
  {
    v28 = *(*(v56 - 8) + 64) + 1;
  }

  v29 = *(v10 + 80);
  v30 = *(v14 + 80);
  v31 = *(*(v6 - 8) + 64) + v29;
  v32 = v27 + v30;
  v33 = ((v27 + v30 + (v31 & ~v29)) & ~v30) + v28;
  if (v17)
  {
    v34 = ((v32 + (v31 & ~*(v10 + 80))) & ~*(v14 + 80)) + v28;
  }

  else
  {
    v34 = v33 + 1;
  }

  v35 = (*(v10 + 80) | v21 | *(v14 + 80));
  if (!v20)
  {
    ++v23;
  }

  v36 = ((v22 + 16 + ((v34 + ((v35 + 16) & ~v35)) & 0xFFFFFFFFFFFFFFF8)) & ~v22) + v23;
  v37 = a3 >= v26;
  v38 = a3 - v26;
  if (v38 != 0 && v37)
  {
    if (v36 <= 3)
    {
      v39 = ((v38 + ~(-1 << (8 * v36))) >> (8 * v36)) + 1;
      if (HIWORD(v39))
      {
        v7 = 4;
      }

      else
      {
        if (v39 < 0x100)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        if (v39 >= 2)
        {
          v7 = v40;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 1;
    }
  }

  if (v26 < a2)
  {
    v41 = ~v26 + a2;
    if (v36 < 4)
    {
      v42 = (v41 >> (8 * v36)) + 1;
      if (v36)
      {
        v43 = v41 & ~(-1 << (8 * v36));
        bzero(a1, v36);
        if (v36 != 3)
        {
          if (v36 == 2)
          {
            *a1 = v43;
            if (v7 > 1)
            {
LABEL_82:
              if (v7 == 2)
              {
                *(a1 + v36) = v42;
              }

              else
              {
                *(a1 + v36) = v42;
              }

              return;
            }
          }

          else
          {
            *a1 = v41;
            if (v7 > 1)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_79;
        }

        *a1 = v43;
        *(a1 + 2) = BYTE2(v43);
      }

      if (v7 > 1)
      {
        goto LABEL_82;
      }
    }

    else
    {
      bzero(a1, v36);
      *a1 = v41;
      v42 = 1;
      if (v7 > 1)
      {
        goto LABEL_82;
      }
    }

LABEL_79:
    if (v7)
    {
      *(a1 + v36) = v42;
    }

    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      *(a1 + v36) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_63;
    }

    *(a1 + v36) = 0;
  }

  else if (v7)
  {
    *(a1 + v36) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_63;
  }

  if (!a2)
  {
    return;
  }

LABEL_63:
  if ((v25 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v44 = ((a1 + v35 + 16) & ~v35);
  if (v18 != v26)
  {
    v45 = *(v19 + 56);
    v48 = (v22 + 16 + (&v44[v34] & 0xFFFFFFFFFFFFFFF8)) & ~v22;
    v46 = a2 + 1;
    v9 = v20;
    v47 = v60;

    goto LABEL_76;
  }

  if (v17 < 2)
  {
    return;
  }

  if (a2 >= v17)
  {
    if (v33 <= 3)
    {
      v49 = ~(-1 << (8 * v33));
    }

    else
    {
      v49 = -1;
    }

    if (v33)
    {
      v50 = v49 & (a2 - v17);
      if (v33 <= 3)
      {
        v51 = v33;
      }

      else
      {
        v51 = 4;
      }

      bzero(v44, v33);
      if (v51 > 2)
      {
        if (v51 == 3)
        {
          *v44 = v50;
          v44[2] = BYTE2(v50);
        }

        else
        {
          *v44 = v50;
        }
      }

      else if (v51 == 1)
      {
        *v44 = v50;
      }

      else
      {
        *v44 = v50;
      }
    }
  }

  else
  {
    if (v9 == v17)
    {
      v45 = *(v59 + 56);
      v46 = a2 + 1;
      v47 = v6;
      v48 = (a1 + v35 + 16) & ~v35;
      goto LABEL_102;
    }

    v48 = &v44[v31] & ~v29;
    if (v12 == v17)
    {
      v45 = *(v57 + 56);
      v46 = a2 + 2;
      v9 = v11;
      v47 = v58;
      goto LABEL_102;
    }

    v52 = (v32 + v48) & ~v30;
    if (a2 < v16)
    {
      v45 = *(v14 + 56);
      v46 = a2 + 2;
      v48 = (v32 + v48) & ~v30;
      v9 = v15;
      v47 = v56;
LABEL_102:

LABEL_76:
      v45(v48, v46, v9, v47);
      return;
    }

    if (v28 <= 3)
    {
      v53 = ~(-1 << (8 * v28));
    }

    else
    {
      v53 = -1;
    }

    if (v28)
    {
      v54 = v53 & (a2 - v16);
      if (v28 <= 3)
      {
        v55 = v28;
      }

      else
      {
        v55 = 4;
      }

      bzero(((v32 + v48) & ~v30), v28);
      if (v55 > 2)
      {
        if (v55 == 3)
        {
          *v52 = v54;
          *(v52 + 2) = BYTE2(v54);
        }

        else
        {
          *v52 = v54;
        }
      }

      else if (v55 == 1)
      {
        *v52 = v54;
      }

      else
      {
        *v52 = v54;
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TallCardViewLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TallCardViewLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

BOOL sub_1E674BEB0(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v3);
  v4 = sub_1E68B3BB0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t CanvasItemDescriptorProtocol.buildView<A, B, C, D, E, F>(onSelection:sizeClass:contentMargins:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:viewDescriptorBuilder:actionButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, char *a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v268 = a7;
  v269 = a8;
  v265 = a6;
  v266 = a2;
  v263 = a5;
  v264 = a1;
  *&v279 = a4;
  v267 = a3;
  v284 = a9;
  v346 = a29;
  v347 = a28;
  v291 = a27;
  v290 = a26;
  v276 = a25;
  v289 = a24;
  v345 = a22;
  v292 = a21;
  v288 = a20;
  v287 = a19;
  v286 = a17;
  v285 = a16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v274 = *(AssociatedTypeWitness - 8);
  v275 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v30);
  v273 = v258 - v31;
  v32 = swift_getAssociatedTypeWitness();
  v33 = swift_getAssociatedTypeWitness();
  v34 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v278 = a23;
  v36 = swift_getAssociatedConformanceWitness();
  v37 = swift_getAssociatedConformanceWitness();
  v476 = v32;
  v477 = v33;
  v478 = v34;
  v479 = AssociatedConformanceWitness;
  v480 = v36;
  v481 = v37;
  v38 = v276;
  v39 = type metadata accessor for CanvasItemContent(0, &v476);
  v271 = *(v39 - 1);
  v272 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v270 = v258 - v41;
  v476 = a18;
  v477 = v345;
  v478 = v345;
  v479 = v38;
  v480 = v346;
  v481 = v346;
  v42 = type metadata accessor for ActionCardView(255, &v476);
  WitnessTable = swift_getWitnessTable();
  v343 = v42;
  v476 = v42;
  v477 = WitnessTable;
  v342 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v293 = sub_1E68B2440();
  sub_1E68B1E40();
  v44 = sub_1E68B1E40();
  v45 = sub_1E6761260(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v490 = v38;
  v491 = v45;
  v344 = v45;
  v46 = swift_getWitnessTable();
  v488 = v46;
  v489 = MEMORY[0x1E697F568];
  v47 = swift_getWitnessTable();
  v341 = v44;
  v476 = v44;
  v477 = v47;
  v338 = v47;
  swift_getOpaqueTypeMetadata2();
  v48 = sub_1E68B1E40();
  v486 = v46;
  v487 = MEMORY[0x1E697E040];
  v49 = swift_getWitnessTable();
  v333 = v48;
  v476 = v48;
  v477 = v49;
  v329 = v49;
  swift_getOpaqueTypeMetadata2();
  v330 = sub_1E68B2220();
  v332 = sub_1E68B2B90();
  v50 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8, &qword_1E68B4C68);
  v335 = v50;
  v51 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0, &qword_1E68BB7D0);
  v337 = v51;
  v339 = sub_1E68B2220();
  v52 = sub_1E68B2220();
  v53 = v345;
  v476 = a18;
  v477 = v345;
  v478 = v345;
  v479 = v292;
  v480 = v286;
  v481 = v38;
  v54 = v346;
  v482 = v346;
  v483 = v346;
  v484 = v347;
  v485 = v289;
  v55 = type metadata accessor for FullWidthStageView(255, &v476);
  v56 = swift_getWitnessTable();
  v336 = v55;
  v476 = v55;
  v477 = v56;
  v334 = v56;
  swift_getOpaqueTypeMetadata2();
  v58 = type metadata accessor for InfoActionCardView(255, v53, v54, v57);
  v59 = swift_getWitnessTable();
  v331 = v58;
  v476 = v58;
  v477 = v59;
  v327 = v59;
  swift_getOpaqueTypeMetadata2();
  v60 = sub_1E68B2220();
  v340 = v52;
  v326 = v60;
  v61 = sub_1E68B2220();
  v476 = a18;
  v477 = v287;
  v478 = v288;
  v479 = v38;
  v480 = v290;
  v481 = v291;
  v62 = type metadata accessor for LargeBrickView(255, &v476);
  v63 = swift_getWitnessTable();
  v325 = v62;
  v476 = v62;
  v477 = v63;
  v324 = v63;
  swift_getOpaqueTypeMetadata2();
  v65 = type metadata accessor for DynamicBrickView(255, a18, v38, v64);
  v66 = swift_getWitnessTable();
  v323 = v65;
  v476 = v65;
  v477 = v66;
  v322 = v66;
  swift_getOpaqueTypeMetadata2();
  v67 = sub_1E68B2220();
  v69 = type metadata accessor for MonogramVerticalStackView(255, a18, v38, v68);
  v70 = swift_getWitnessTable();
  v320 = v69;
  v476 = v69;
  v477 = v70;
  v316 = v70;
  swift_getOpaqueTypeMetadata2();
  v71 = sub_1E68B2220();
  v321 = v67;
  v315 = v71;
  v72 = sub_1E68B2220();
  v328 = v61;
  v318 = v72;
  v73 = sub_1E68B2220();
  v75 = type metadata accessor for StandardCardView(255, a18, v38, v74);
  v76 = swift_getWitnessTable();
  v317 = v75;
  v476 = v75;
  v477 = v76;
  v314 = v76;
  swift_getOpaqueTypeMetadata2();
  v476 = a18;
  v477 = v53;
  v478 = v38;
  v479 = v54;
  v77 = type metadata accessor for StandardHorizontalStackView(255, &v476);
  v312 = swift_getWitnessTable();
  v313 = v77;
  v476 = v77;
  v477 = v312;
  swift_getOpaqueTypeMetadata2();
  v78 = sub_1E68B2220();
  v80 = type metadata accessor for StandardVerticalStackView(255, a18, v38, v79);
  v81 = swift_getWitnessTable();
  v310 = v80;
  v476 = v80;
  v477 = v81;
  v308 = v81;
  swift_getOpaqueTypeMetadata2();
  v305 = type metadata accessor for SummaryCardView(255, a18, v38, v82);
  v83 = sub_1E68B2220();
  v311 = v78;
  v307 = v83;
  v84 = sub_1E68B2220();
  v86 = type metadata accessor for TallCardView(255, a18, v38, v85);
  v87 = swift_getWitnessTable();
  v306 = v86;
  v476 = v86;
  v477 = v87;
  v304 = v87;
  swift_getOpaqueTypeMetadata2();
  v89 = type metadata accessor for VerticalStackCardView(255, a18, v38, v88);
  v302 = swift_getWitnessTable();
  v303 = v89;
  v476 = v89;
  v477 = v302;
  swift_getOpaqueTypeMetadata2();
  v90 = sub_1E68B2220();
  v92 = type metadata accessor for WideBrickView(255, a18, v38, v91);
  v93 = swift_getWitnessTable();
  v299 = v92;
  v476 = v92;
  v477 = v93;
  v295 = v93;
  swift_getOpaqueTypeMetadata2();
  v94 = v292;
  v95 = sub_1E68B2220();
  v301 = v90;
  v294 = v95;
  v96 = sub_1E68B2220();
  v309 = v84;
  v296 = v96;
  v97 = sub_1E68B2220();
  v319 = v73;
  v297 = v97;
  v298 = sub_1E68B2220();
  v98 = sub_1E68B2B90();
  v260 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v98);
  v277 = v258 - v99;
  v300 = v100;
  v101 = sub_1E68B1E40();
  v262 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v102);
  v104 = v258 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105, v106);
  v261 = v258 - v107;
  v281 = v108;
  v109 = sub_1E68B2220();
  v282 = *(v109 - 8);
  v283 = v109;
  MEMORY[0x1EEE9AC00](v109, v110);
  v293 = v258 - v111;
  v112 = *v279;
  v259 = *(v279 + 16);
  v279 = v112;
  v113 = v280;
  v114 = v285;
  v115 = v278;
  v116 = (*(v278 + 184))();
  LOBYTE(v73) = sub_1E674BEB0(3u, v116);

  if (v73)
  {
    v476 = v343;
    v477 = v342;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v476 = v341;
    v477 = v338;
    v119 = swift_getOpaqueTypeConformance2();
    v476 = v333;
    v477 = v329;
    v120 = swift_getOpaqueTypeConformance2();
    v388 = v119;
    v389 = v120;
    v387 = swift_getWitnessTable();
    v385 = swift_getWitnessTable();
    v386 = MEMORY[0x1E697E5D8];
    v121 = swift_getWitnessTable();
    v122 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
    v383 = v121;
    v384 = v122;
    v123 = swift_getWitnessTable();
    v124 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
    v381 = v123;
    v382 = v124;
    v125 = swift_getWitnessTable();
    v379 = OpaqueTypeConformance2;
    v380 = v125;
    v126 = swift_getWitnessTable();
    v476 = v336;
    v477 = v334;
    v127 = swift_getOpaqueTypeConformance2();
    v476 = v331;
    v477 = v327;
    v128 = swift_getOpaqueTypeConformance2();
    v377 = v127;
    v378 = v128;
    v129 = swift_getWitnessTable();
    v375 = v126;
    v376 = v129;
    v130 = swift_getWitnessTable();
    v476 = v325;
    v477 = v324;
    v131 = swift_getOpaqueTypeConformance2();
    v476 = v323;
    v477 = v322;
    v132 = swift_getOpaqueTypeConformance2();
    v373 = v131;
    v374 = v132;
    v133 = swift_getWitnessTable();
    v476 = v320;
    v477 = v316;
    v371 = swift_getOpaqueTypeConformance2();
    v372 = v132;
    v134 = swift_getWitnessTable();
    v369 = v133;
    v370 = v134;
    v135 = swift_getWitnessTable();
    v367 = v130;
    v368 = v135;
    v136 = swift_getWitnessTable();
    v476 = v317;
    v477 = v314;
    v137 = swift_getOpaqueTypeConformance2();
    v476 = v313;
    v477 = v312;
    v138 = swift_getOpaqueTypeConformance2();
    v365 = v137;
    v366 = v138;
    v139 = swift_getWitnessTable();
    v476 = v310;
    v477 = v308;
    v140 = swift_getOpaqueTypeConformance2();
    v141 = swift_getWitnessTable();
    v363 = v140;
    v364 = v141;
    v142 = swift_getWitnessTable();
    v361 = v139;
    v362 = v142;
    v143 = swift_getWitnessTable();
    v476 = v306;
    v477 = v304;
    v144 = swift_getOpaqueTypeConformance2();
    v476 = v303;
    v477 = v302;
    v145 = swift_getOpaqueTypeConformance2();
    v359 = v144;
    v360 = v145;
    v146 = swift_getWitnessTable();
    v476 = v299;
    v477 = v295;
    v147 = swift_getOpaqueTypeConformance2();
    v357 = v347;
    v358 = v147;
    v148 = swift_getWitnessTable();
    v355 = v146;
    v356 = v148;
    v149 = swift_getWitnessTable();
    v353 = v143;
    v354 = v149;
    v150 = swift_getWitnessTable();
    v351 = v136;
    v352 = v150;
    v350 = swift_getWitnessTable();
    v348 = swift_getWitnessTable();
    v349 = v344;
    v151 = v281;
    v152 = swift_getWitnessTable();
    sub_1E6744CC0(v152, MEMORY[0x1E6981E70], v151, MEMORY[0x1E6981E60], v152);
  }

  else
  {
    v258[1] = v258;
    MEMORY[0x1EEE9AC00](a10, v117);
    v154 = v286;
    v153 = v287;
    v258[-32] = v114;
    v258[-31] = v154;
    v258[-30] = a18;
    v258[-29] = v153;
    v258[-28] = v288;
    v258[-27] = v94;
    v258[-26] = v345;
    v258[-25] = v115;
    v155 = v290;
    v258[-24] = v289;
    v258[-23] = v38;
    v258[-22] = v155;
    v156 = v347;
    v258[-21] = v291;
    v258[-20] = v156;
    v258[-19] = v346;
    v258[-18] = v113;
    v157 = v265;
    v258[-17] = v263;
    v258[-16] = v157;
    v258[-15] = v159;
    v258[-14] = v158;
    v161 = v266;
    v160 = v267;
    v258[-13] = v264;
    v258[-12] = v161;
    v258[-11] = v160;
    v162 = v259;
    *&v258[-10] = v279;
    *&v258[-8] = v162;
    v258[-6] = v164;
    v258[-5] = v163;
    v165 = v269;
    v258[-4] = v268;
    v258[-3] = v165;
    v258[-2] = v166;
    v258[-1] = v167;
    v476 = v343;
    v477 = v342;
    v168 = swift_getOpaqueTypeConformance2();
    v476 = v341;
    v477 = v338;
    v169 = swift_getOpaqueTypeConformance2();
    v476 = v333;
    v477 = v329;
    v170 = swift_getOpaqueTypeConformance2();
    v474 = v169;
    v475 = v170;
    v473 = swift_getWitnessTable();
    v345 = MEMORY[0x1E6981600];
    v471 = swift_getWitnessTable();
    v472 = MEMORY[0x1E697E5D8];
    v346 = MEMORY[0x1E697E858];
    v171 = swift_getWitnessTable();
    v172 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
    v469 = v171;
    v470 = v172;
    v173 = swift_getWitnessTable();
    v174 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
    v467 = v173;
    v468 = v174;
    v175 = swift_getWitnessTable();
    v465 = v168;
    v466 = v175;
    v176 = swift_getWitnessTable();
    v476 = v336;
    v477 = v334;
    v177 = swift_getOpaqueTypeConformance2();
    v476 = v331;
    v477 = v327;
    v178 = swift_getOpaqueTypeConformance2();
    v463 = v177;
    v464 = v178;
    v179 = swift_getWitnessTable();
    v461 = v176;
    v462 = v179;
    v180 = swift_getWitnessTable();
    v476 = v325;
    v477 = v324;
    v181 = swift_getOpaqueTypeConformance2();
    v476 = v323;
    v477 = v322;
    v182 = swift_getOpaqueTypeConformance2();
    v459 = v181;
    v460 = v182;
    v183 = swift_getWitnessTable();
    v476 = v320;
    v477 = v316;
    v457 = swift_getOpaqueTypeConformance2();
    v458 = v182;
    v184 = swift_getWitnessTable();
    v455 = v183;
    v456 = v184;
    v185 = swift_getWitnessTable();
    v453 = v180;
    v454 = v185;
    v186 = swift_getWitnessTable();
    v476 = v317;
    v477 = v314;
    v187 = swift_getOpaqueTypeConformance2();
    v476 = v313;
    v477 = v312;
    v188 = swift_getOpaqueTypeConformance2();
    v451 = v187;
    v452 = v188;
    v189 = swift_getWitnessTable();
    v476 = v310;
    v477 = v308;
    v190 = swift_getOpaqueTypeConformance2();
    v191 = swift_getWitnessTable();
    v449 = v190;
    v450 = v191;
    v192 = swift_getWitnessTable();
    v447 = v189;
    v448 = v192;
    v193 = swift_getWitnessTable();
    v476 = v306;
    v477 = v304;
    v194 = swift_getOpaqueTypeConformance2();
    v476 = v303;
    v477 = v302;
    v195 = swift_getOpaqueTypeConformance2();
    v445 = v194;
    v446 = v195;
    v196 = swift_getWitnessTable();
    v476 = v299;
    v477 = v295;
    v197 = swift_getOpaqueTypeConformance2();
    v443 = v347;
    v444 = v197;
    v198 = swift_getWitnessTable();
    v441 = v196;
    v442 = v198;
    v199 = swift_getWitnessTable();
    v439 = v193;
    v440 = v199;
    v200 = swift_getWitnessTable();
    v437 = v186;
    v438 = v200;
    v201 = swift_getWitnessTable();
    sub_1E68B2B80();
    v476 = 0;
    v477 = 0xE000000000000000;
    MEMORY[0x1E6951A70](0x2D70756B636F6CLL, 0xE700000000000000);
    v202 = v115;
    v203 = *(v115 + 160);
    v204 = v270;
    v205 = v285;
    v292 = v104;
    v206 = v202;
    v203(v285);
    v207 = v272;
    v208 = sub_1E67C6480(v272);
    v210 = v209;
    (*(v271 + 8))(v204, v207);
    MEMORY[0x1E6951A70](v208, v210);

    MEMORY[0x1E6951A70](45, 0xE100000000000000);
    v211 = v273;
    (*(v206 + 152))(v205, v206);
    v212 = v275;
    sub_1E68B3AE0();
    (*(v274 + 8))(v211, v212);
    v436 = v201;
    v213 = v300;
    v214 = swift_getWitnessTable();
    v215 = v292;
    v216 = v277;
    sub_1E68B29B0();

    (*(v260 + 8))(v216, v213);
    v434 = v214;
    v435 = v344;
    v217 = v281;
    v218 = swift_getWitnessTable();
    v219 = v261;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v220 = *(v262 + 8);
    v220(v215, v217);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    sub_1E6744DB8(v215, MEMORY[0x1E6981E70], v217, MEMORY[0x1E6981E60], v218);
    v220(v215, v217);
    v220(v219, v217);
  }

  v476 = v343;
  v477 = v342;
  v221 = swift_getOpaqueTypeConformance2();
  v476 = v341;
  v477 = v338;
  v222 = swift_getOpaqueTypeConformance2();
  v476 = v333;
  v477 = v329;
  v223 = swift_getOpaqueTypeConformance2();
  v432 = v222;
  v433 = v223;
  v431 = swift_getWitnessTable();
  v429 = swift_getWitnessTable();
  v430 = MEMORY[0x1E697E5D8];
  v224 = swift_getWitnessTable();
  v225 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8, &qword_1E68B4C68, MEMORY[0x1E697D680]);
  v427 = v224;
  v428 = v225;
  v226 = swift_getWitnessTable();
  v227 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0, &qword_1E68BB7D0, MEMORY[0x1E6981870]);
  v425 = v226;
  v426 = v227;
  v228 = swift_getWitnessTable();
  v423 = v221;
  v424 = v228;
  v229 = swift_getWitnessTable();
  v476 = v336;
  v477 = v334;
  v230 = swift_getOpaqueTypeConformance2();
  v476 = v331;
  v477 = v327;
  v231 = swift_getOpaqueTypeConformance2();
  v421 = v230;
  v422 = v231;
  v232 = swift_getWitnessTable();
  v419 = v229;
  v420 = v232;
  v233 = swift_getWitnessTable();
  v476 = v325;
  v477 = v324;
  v234 = swift_getOpaqueTypeConformance2();
  v476 = v323;
  v477 = v322;
  v235 = swift_getOpaqueTypeConformance2();
  v417 = v234;
  v418 = v235;
  v236 = swift_getWitnessTable();
  v476 = v320;
  v477 = v316;
  v415 = swift_getOpaqueTypeConformance2();
  v416 = v235;
  v237 = swift_getWitnessTable();
  v413 = v236;
  v414 = v237;
  v238 = swift_getWitnessTable();
  v411 = v233;
  v412 = v238;
  v239 = swift_getWitnessTable();
  v476 = v317;
  v477 = v314;
  v240 = swift_getOpaqueTypeConformance2();
  v476 = v313;
  v477 = v312;
  v241 = swift_getOpaqueTypeConformance2();
  v409 = v240;
  v410 = v241;
  v242 = swift_getWitnessTable();
  v476 = v310;
  v477 = v308;
  v243 = swift_getOpaqueTypeConformance2();
  v244 = swift_getWitnessTable();
  v407 = v243;
  v408 = v244;
  v245 = swift_getWitnessTable();
  v405 = v242;
  v406 = v245;
  v246 = swift_getWitnessTable();
  v476 = v306;
  v477 = v304;
  v247 = swift_getOpaqueTypeConformance2();
  v476 = v303;
  v477 = v302;
  v248 = swift_getOpaqueTypeConformance2();
  v403 = v247;
  v404 = v248;
  v249 = swift_getWitnessTable();
  v476 = v299;
  v477 = v295;
  v250 = swift_getOpaqueTypeConformance2();
  v401 = v347;
  v402 = v250;
  v251 = swift_getWitnessTable();
  v399 = v249;
  v400 = v251;
  v252 = swift_getWitnessTable();
  v397 = v246;
  v398 = v252;
  v253 = swift_getWitnessTable();
  v395 = v239;
  v396 = v253;
  v394 = swift_getWitnessTable();
  v392 = swift_getWitnessTable();
  v393 = v344;
  v254 = swift_getWitnessTable();
  v390 = MEMORY[0x1E6981E60];
  v391 = v254;
  v255 = v283;
  swift_getWitnessTable();
  v256 = v293;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v282 + 8))(v256, v255);
}

uint64_t sub_1E675F550(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1E68B3750();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v22 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  (*(v20 + 16))(&v22 - v18, a1, AssociatedTypeWitness, v17);
  (*(v20 + 56))(v19, 0, 1, AssociatedTypeWitness);
  a2(v19);
  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_1E675F6D0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v86 = a5;
  v87 = a4;
  v88 = a3;
  v89 = a2;
  v85 = a1;
  v96 = a7;
  v83 = a12;
  v82 = a13;
  sub_1E68B2440();
  v80 = a6;
  v14 = sub_1E68B1E40();
  v15 = sub_1E68B1E40();
  v79 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v78 = &v72 - v17;
  v18 = sub_1E6761260(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v107 = a13;
  v108 = v18;
  WitnessTable = swift_getWitnessTable();
  v105 = WitnessTable;
  v106 = MEMORY[0x1E697E040];
  v20 = swift_getWitnessTable();
  v95 = v15;
  v103 = v15;
  v104 = v20;
  v98 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v22);
  v76 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v75 = &v72 - v26;
  v27 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v72 - v34;
  v36 = sub_1E68B1E40();
  v72 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v72 - v38;
  v84 = WitnessTable;
  v101 = WitnessTable;
  v102 = MEMORY[0x1E697F568];
  v40 = swift_getWitnessTable();
  v93 = v36;
  v103 = v36;
  v104 = v40;
  v91 = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v74 = *(v41 - 1);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v72 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v73 = &v72 - v47;
  v94 = OpaqueTypeMetadata2;
  v92 = sub_1E68B2220();
  v90 = *(v92 - 8);
  v49 = MEMORY[0x1EEE9AC00](v92, v48);
  v97 = &v72 - v50;
  LOBYTE(OpaqueTypeMetadata2) = (*(v83 + 40))(v86, v49);
  v89(v87);
  v51 = v80;
  sub_1E68B2900();
  (*(v27 + 8))(v31, v51);
  if (OpaqueTypeMetadata2)
  {
    sub_1E68B2780();
    (*(v81 + 8))(v35, v14);
    sub_1E68B24B0();
    sub_1E68B2E80();
    v52 = v93;
    v53 = v91;
    sub_1E68B2970();
    (*(v72 + 8))(v39, v52);
    v103 = v52;
    v104 = v53;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v55 = v73;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v56 = *(v74 + 8);
    v56(v44, v41);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v57 = v95;
    v103 = v95;
    v104 = v98;
    v58 = swift_getOpaqueTypeConformance2();
    sub_1E6744CC0(v44, v41, v94, OpaqueTypeConformance2, v58);
    v56(v44, v41);
    v56(v55, v41);
  }

  else
  {
    sub_1E68B2E80();
    v59 = v78;
    sub_1E68B29F0();
    (*(v81 + 8))(v35, v14);
    sub_1E68B24B0();
    sub_1E68B2E80();
    v89 = v41;
    v60 = v76;
    v57 = v95;
    v61 = v98;
    sub_1E68B2970();
    (*(v79 + 8))(v59, v57);
    v103 = v57;
    v104 = v61;
    v62 = swift_getOpaqueTypeConformance2();
    v63 = v75;
    v64 = v94;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v65 = *(v77 + 8);
    v65(v60, v64);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v52 = v93;
    v53 = v91;
    v103 = v93;
    v104 = v91;
    v66 = swift_getOpaqueTypeConformance2();
    sub_1E6744DB8(v60, v89, v64, v66, v62);
    v65(v60, v64);
    v65(v63, v64);
  }

  v103 = v52;
  v104 = v53;
  v67 = swift_getOpaqueTypeConformance2();
  v103 = v57;
  v104 = v98;
  v68 = swift_getOpaqueTypeConformance2();
  v99 = v67;
  v100 = v68;
  v69 = v92;
  swift_getWitnessTable();
  v70 = v97;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (*(v90 + 8))(v70, v69);
}

uint64_t sub_1E6760064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B1820();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  result = sub_1E68B26D0();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_1E676013C@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v171 = a7;
  v166 = a4;
  v167 = a6;
  v169 = a5;
  v146 = a3;
  v157 = a2;
  v173 = a1;
  v168 = a8;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097008, &qword_1E68B4C78);
  MEMORY[0x1EEE9AC00](v165, v16);
  v170 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v163 = &v142 - v20;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097010, &qword_1E68B4C80);
  MEMORY[0x1EEE9AC00](v155, v21);
  v154 = &v142 - v22;
  v152 = sub_1E68B21B0();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v23);
  v149 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1E68B25F0();
  v145 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v25);
  v147 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097018, &qword_1E68B4C88);
  MEMORY[0x1EEE9AC00](v153, v27);
  v143 = &v142 - v28;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097020, &qword_1E68B4C90);
  v161 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162, v29);
  v150 = &v142 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097028, &qword_1E68B4C98);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v164 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v174 = &v142 - v36;
  v37 = sub_1E68B1820();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v39);
  v160 = &v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v176 = &v142 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v142 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68, &qword_1E68B4840);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v158 = &v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v142 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v142 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097030, &qword_1E68B4CA0);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v62 = &v142 - v61;
  v63 = sub_1E68B1770();
  v64 = *(v63 - 1);
  MEMORY[0x1EEE9AC00](v63, v65);
  v159 = &v142 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v142 - v69;
  sub_1E67612FC(v173, v58, &qword_1ED096E68, &qword_1E68B4840);
  v173 = *(v38 + 48);
  v71 = v173(v58, 1, v37);
  v175 = v38;
  if (v71 == 1)
  {
    sub_1E6744A10(v58, &qword_1ED096E68, &qword_1E68B4840);
    (*(v64 + 56))(v62, 1, 1, v63);
    sub_1E68B1810();
    sub_1E68B1760();
    v144 = *(v38 + 8);
    v144(v47, v37);
    if ((*(v64 + 48))(v62, 1, v63) != 1)
    {
      sub_1E6744A10(v62, &qword_1ED097030, &qword_1E68B4CA0);
    }
  }

  else
  {
    sub_1E68B1760();
    v144 = *(v38 + 8);
    v144(v58, v37);
    (*(v64 + 56))(v62, 0, 1, v63);
    (*(v64 + 32))(v70, v62, v63);
  }

  v72 = v158;
  v73 = v173;
  v156 = sub_1E6761260(&qword_1ED097038, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
  v74 = sub_1E68B3290();
  v158 = v75;
  v76 = v157;
  sub_1E67612FC(v157, v54, &qword_1ED096E68, &qword_1E68B4840);
  if (v73(v54, 1, v37) == 1)
  {
    sub_1E68B1780();
    v77 = v73(v54, 1, v37);
    v78 = v175;
    if (v77 != 1)
    {
      sub_1E6744A10(v54, &qword_1ED096E68, &qword_1E68B4840);
    }
  }

  else
  {
    v78 = v175;
    (*(v175 + 32))(v176, v54, v37);
  }

  sub_1E67612FC(v76, v72, &qword_1ED096E68, &qword_1E68B4840);
  v79 = v173(v72, 1, v37);
  v172 = v37;
  if (v79 == 1)
  {
    sub_1E6744A10(v72, &qword_1ED096E68, &qword_1E68B4840);
    v80 = 1;
    v81 = v174;
  }

  else
  {
    v157 = v74;
    v173 = v63;
    v82 = v160;
    (*(v78 + 32))(v160, v72, v37);
    v83 = (*(a16 + 40))(a9, a16);
    (*(v78 + 16))(v47, v82, v37);
    v84 = sub_1E68B26D0();
    v86 = v85;
    v88 = v87;
    v89 = (v145 + 104);
    v90 = (v145 + 8);
    if (v83)
    {
      sub_1E68B25A0();
      sub_1E68B2590();

      v91 = v147;
      v92 = v148;
      (*v89)(v147, *MEMORY[0x1E6980EA8], v148);
      sub_1E68B2610();

      (*v90)(v91, v92);
      v93 = sub_1E68B26B0();
      v95 = v94;
      LOBYTE(v91) = v96;
      v98 = v97;

      sub_1E673F0D4(v84, v86, v88 & 1);

      *&v177 = v93;
      *(&v177 + 1) = v95;
      LOBYTE(v178) = v91 & 1;
      v179 = v98;
      v99 = v149;
      sub_1E68B21A0();
      v100 = v143;
      sub_1E68B2950();
      (*(v151 + 8))(v99, v152);
      sub_1E673F0D4(v93, v95, v91 & 1);
    }

    else
    {
      sub_1E68B2570();
      sub_1E68B2590();

      v101 = v147;
      v102 = v148;
      (*v89)(v147, *MEMORY[0x1E6980EA8], v148);
      sub_1E68B2610();

      (*v90)(v101, v102);
      v103 = sub_1E68B26B0();
      v105 = v104;
      v107 = v106;
      v109 = v108;

      sub_1E673F0D4(v84, v86, v88 & 1);

      *&v177 = v103;
      *(&v177 + 1) = v105;
      LOBYTE(v178) = v107 & 1;
      v179 = v109;
      v110 = v149;
      sub_1E68B21A0();
      v100 = v143;
      sub_1E68B2950();
      (*(v151 + 8))(v110, v152);
      sub_1E673F0D4(v103, v105, v107 & 1);
    }

    sub_1E67612FC(v100, v154, &qword_1ED097018, &qword_1E68B4C88);
    swift_storeEnumTagMultiPayload();
    sub_1E6761364();
    v111 = v150;
    sub_1E68B2210();
    sub_1E6744A10(v100, &qword_1ED097018, &qword_1E68B4C88);
    v144(v160, v172);
    v81 = v174;
    sub_1E6761420(v111, v174, &qword_1ED097020, &qword_1E68B4C90);
    v80 = 0;
    v74 = v157;
  }

  (*(v161 + 56))(v81, v80, 1, v162);
  sub_1E68B1760();
  v112 = sub_1E68B3290();
  v114 = v113;
  v115 = v165;
  v116 = *(v165 + 36);
  KeyPath = swift_getKeyPath();
  v118 = v163;
  *&v163[v116] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040, &qword_1E68B4CD8);
  swift_storeEnumTagMultiPayload();
  v119 = v118 + v115[10];
  type metadata accessor for CGSize(0);
  v180 = 0;
  v181 = 0;
  sub_1E68B2BC0();
  v120 = v178;
  *v119 = v177;
  *(v119 + 16) = v120;
  v121 = v118 + v115[11];
  v180 = 0;
  v181 = 0;
  sub_1E68B2BC0();
  v122 = v178;
  *v121 = v177;
  *(v121 + 16) = v122;
  v123 = v118 + v115[12];
  LOBYTE(v180) = 0;
  sub_1E68B2BC0();
  v124 = *(&v177 + 1);
  *v123 = v177;
  *(v123 + 8) = v124;
  *v118 = 3;
  *(v118 + 8) = 0;
  *&v177 = v74;
  *(&v177 + 1) = v158;
  sub_1E67612A8();
  v125 = sub_1E68B26E0();
  v126 = v118 + v115[13];
  *v126 = v125;
  *(v126 + 8) = v127;
  *(v126 + 16) = v128 & 1;
  *(v126 + 24) = v129;
  v130 = (v118 + v115[14]);
  *v130 = v112;
  v130[1] = v114;
  v131 = (v118 + v115[15]);
  v132 = v167;
  v133 = v169;
  *v131 = v166;
  v131[1] = v133;
  v134 = (v118 + v115[16]);
  v135 = v171;
  *v134 = v132;
  v134[1] = v135;
  v136 = (v118 + v115[18]);
  *v136 = nullsub_5;
  v136[1] = 0;
  v137 = v164;
  sub_1E67612FC(v81, v164, &qword_1ED097028, &qword_1E68B4C98);
  v138 = v170;
  sub_1E67612FC(v118, v170, &qword_1ED097008, &qword_1E68B4C78);
  v139 = v168;
  sub_1E67612FC(v137, v168, &qword_1ED097028, &qword_1E68B4C98);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097048, &unk_1E68B4CE0);
  sub_1E67612FC(v138, v139 + *(v140 + 48), &qword_1ED097008, &qword_1E68B4C78);

  sub_1E6744A10(v118, &qword_1ED097008, &qword_1E68B4C78);
  sub_1E6744A10(v174, &qword_1ED097028, &qword_1E68B4C98);
  (*(v175 + 8))(v176, v172);
  sub_1E6744A10(v138, &qword_1ED097008, &qword_1E68B4C78);
  return sub_1E6744A10(v137, &qword_1ED097028, &qword_1E68B4C98);
}

uint64_t sub_1E6761118(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1E68B3B70();
  MEMORY[0x1E69523D0](0);
  v2 = sub_1E68B3BB0() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

uint64_t sub_1E6761260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E67612A8()
{
  result = qword_1EE2EA4C8;
  if (!qword_1EE2EA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA4C8);
  }

  return result;
}

uint64_t sub_1E67612FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E6761364()
{
  result = qword_1EE2EA800;
  if (!qword_1EE2EA800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018, &qword_1E68B4C88);
    sub_1E6761260(&qword_1EE2EA588, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA800);
  }

  return result;
}

uint64_t sub_1E6761420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t CanvasVerticalGridLayout.columnCount.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v6;
  }

  (*(v3 + 8))(v6, a1);
  return 0;
}

uint64_t sub_1E67615A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436E6D756C6F63 && a2 == 0xEB00000000746E75;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E6761680(char a1)
{
  if (a1)
  {
    return 0x46797469736E6564;
  }

  else
  {
    return 0x6F436E6D756C6F63;
  }
}

uint64_t sub_1E67616CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E6761794(char a1)
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](a1 & 1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E67617DC(char a1)
{
  if (a1)
  {
    return 0x676E6963617073;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_1E6761810(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E67618A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E67615A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67618D8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E67634C8();
  *a2 = result;
  return result;
}

uint64_t sub_1E6761904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6761958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E67619AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void))
{
  sub_1E68B3B70();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1E68B3BB0();
}

uint64_t sub_1E6761A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E67616CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6761A44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6761A98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t _s15FitnessCanvasUI11NullArtworkO9hashValueSivg_0()
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](0);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6761B38(uint64_t a1)
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](0);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6761B84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E6761AEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E6761BB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6761C08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasVerticalGridLayout.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v47 = type metadata accessor for CanvasVerticalGridLayout.DensityFactorCodingKeys(255, v7, v6, a4);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1E68B3AC0();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = v40 - v10;
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v44 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CanvasVerticalGridLayout.ColumnCountCodingKeys(255, v7, v6, v14);
  v40[0] = swift_getWitnessTable();
  v40[1] = v15;
  v16 = sub_1E68B3AC0();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v41 = v40 - v18;
  v19 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v6;
  v52 = v7;
  type metadata accessor for CanvasVerticalGridLayout.CodingKeys(255, v7, v6, v24);
  swift_getWitnessTable();
  v53 = sub_1E68B3AC0();
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v25);
  v27 = v40 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  (*(v19 + 16))(v23, v54, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v48;
    v29 = v44;
    v30 = v52;
    (*(v48 + 32))(v44, v23, v52);
    v61[0] = 1;
    v31 = v46;
    v32 = v53;
    sub_1E68B3A30();
    v33 = v50;
    sub_1E68B3AB0();
    (*(v49 + 8))(v31, v33);
    (*(v28 + 8))(v29, v30);
    return (*(v55 + 8))(v27, v32);
  }

  else
  {
    v35 = *(v23 + 1);
    v60 = 0;
    v36 = v41;
    v37 = v53;
    sub_1E68B3A30();
    v59 = 0;
    v38 = v43;
    v39 = v56;
    sub_1E68B3AA0();
    if (!v39)
    {
      v58 = v35;
      v57 = 1;
      sub_1E67621E8();
      sub_1E68B3AB0();
    }

    (*(v42 + 8))(v36, v38);
    return (*(v55 + 8))(v27, v37);
  }
}

unint64_t sub_1E67621E8()
{
  result = qword_1EE2EDE68;
  if (!qword_1EE2EDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDE68);
  }

  return result;
}

uint64_t CanvasVerticalGridLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v58 = a5;
  v68 = type metadata accessor for CanvasVerticalGridLayout.DensityFactorCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v62 = sub_1E68B3A20();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v8);
  v69 = &v55 - v9;
  v11 = type metadata accessor for CanvasVerticalGridLayout.ColumnCountCodingKeys(255, a2, a3, v10);
  v12 = swift_getWitnessTable();
  v65 = v11;
  v64 = v12;
  v60 = sub_1E68B3A20();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v13);
  v67 = &v55 - v14;
  type metadata accessor for CanvasVerticalGridLayout.CodingKeys(255, a2, a3, v15);
  swift_getWitnessTable();
  v72 = sub_1E68B3A20();
  v74 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v16);
  v18 = &v55 - v17;
  v73 = a2;
  v63 = a3;
  v20 = type metadata accessor for CanvasVerticalGridLayout(0, a2, a3, v19);
  v70 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v55 - v30;
  v32 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v71 = v18;
  v33 = v75;
  sub_1E68B3BC0();
  if (!v33)
  {
    v75 = v23;
    v56 = v27;
    v57 = v31;
    v34 = v71;
    v35 = v72;
    *&v77 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v79 = sub_1E68B37A0();
    *(&v79 + 1) = v36;
    *&v80 = v37;
    *(&v80 + 1) = v38;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v39 = v77;
    if (v77 == 2 || (v55 = v79, v77 = v79, v78 = v80, (sub_1E68B36E0() & 1) == 0))
    {
      v43 = sub_1E68B3870();
      swift_allocError();
      v45 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
      *v45 = v20;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
      swift_willThrow();
      (*(v74 + 8))(v34, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v39)
      {
        LOBYTE(v77) = 1;
        v40 = v69;
        sub_1E68B3970();
        v41 = v70;
        v42 = v62;
        sub_1E68B3A00();
        (*(v61 + 8))(v40, v42);
        (*(v74 + 8))(v34, v35);
        swift_unknownObjectRelease();
        v51 = v75;
      }

      else
      {
        LOBYTE(v77) = 0;
        v46 = v67;
        sub_1E68B3970();
        v41 = v70;
        LOBYTE(v77) = 0;
        v48 = v60;
        v49 = sub_1E68B39F0();
        v50 = v74;
        v75 = v49;
        v81 = 1;
        sub_1E6762A60();
        sub_1E68B3A00();
        (*(v59 + 8))(v46, v48);
        (*(v50 + 8))(v34, v35);
        swift_unknownObjectRelease();
        v52 = v77;
        v51 = v56;
        *v56 = v75;
        *(v51 + 1) = v52;
      }

      swift_storeEnumTagMultiPayload();
      v53 = *(v41 + 32);
      v54 = v57;
      v53(v57, v51, v20);
      v53(v58, v54, v20);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

unint64_t sub_1E6762A60()
{
  result = qword_1ED097058[0];
  if (!qword_1ED097058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED097058);
  }

  return result;
}

uint64_t static CanvasVerticalGridLayout.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v35 = a2;
  v32 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v31[0] = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = v5;
  v7 = type metadata accessor for CanvasVerticalGridLayout(0, v6, v5, v5);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v31 - v14);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v18);
  v21 = v31 - v20;
  v23 = (v31 + *(v22 + 48) - v20);
  v33 = v8;
  v24 = *(v8 + 16);
  v24(v31 - v20, v34, v7, v19);
  (v24)(v23, v35, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v24)(v11, v21, v7);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = v32;
      v26 = v31[0];
      (*(v32 + 32))(v31[0], v23, a3);
      v27 = sub_1E68B3190();
      v28 = *(v25 + 8);
      v28(v26, a3);
      v28(v11, a3);
LABEL_10:
      v17 = v33;
      TupleTypeMetadata2 = v7;
      goto LABEL_11;
    }

    (*(v32 + 8))(v11, a3);
  }

  else
  {
    (v24)(v15, v21, v7);
    v29 = v15[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = *v15 == *v23 && v29 == v23[1];
      goto LABEL_10;
    }
  }

  v27 = 0;
LABEL_11:
  (*(v17 + 8))(v21, TupleTypeMetadata2);
  return v27 & 1;
}

uint64_t CanvasVerticalGridLayout.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v13, a2, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v11, v3);
    MEMORY[0x1E69523D0](1);
    sub_1E68B3140();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v15 = *v11;
    v16 = v11[1];
    MEMORY[0x1E69523D0](0);
    MEMORY[0x1E69523D0](v15);
    v17 = 0.0;
    if (v16 != 0.0)
    {
      v17 = v16;
    }

    return MEMORY[0x1E69523F0](*&v17);
  }
}

uint64_t CanvasVerticalGridLayout.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  CanvasVerticalGridLayout.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6763090(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  CanvasVerticalGridLayout.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E67630FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1E6763214(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for LazyCanvasItemContent(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CanvasLazyFetcherError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CanvasLazyFetcherError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1E6763598(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E67635B4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1E6763610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040, &qword_1E68B4CD8);
  swift_storeEnumTagMultiPayload();
  v36[0] = a17;
  v36[1] = a18;
  v36[2] = a19;
  v37 = a20;
  v38 = a21;
  v26 = type metadata accessor for LargeBrickView(0, v36);
  (*(*(a17 - 8) + 32))(&a9[v26[17]], a1, a17);
  (*(*(a18 - 8) + 32))(&a9[v26[18]], a2, a18);
  (*(*(a19 - 8) + 32))(&a9[v26[19]], a3, a19);
  v27 = &a9[v26[20]];
  *v27 = a4;
  *(v27 + 1) = a5;
  *(v27 + 2) = a6;
  *(v27 + 3) = a7;
  v28 = &a9[v26[22]];
  *v28 = a8;
  *(v28 + 8) = a10;
  *(v28 + 3) = a11;
  v29 = &a9[v26[23]];
  *v29 = a12;
  *(v29 + 2) = a13;
  *(v29 + 3) = a14;
  v30 = &a9[v26[21]];
  result = swift_allocObject();
  *(result + 16) = a15;
  *(result + 24) = a16;
  *v30 = sub_1E673F5E0;
  *(v30 + 1) = result;
  return result;
}

uint64_t LargeBrickView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v82 = sub_1E68B1EB0();
  v80 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v3);
  v79 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(a1 - 8);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v75 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v73 = *(a1 + 16);
  v9 = v73;
  v10 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v11 = sub_1E68B1E40();
  v74 = *(v8 + 40);
  v12 = v8;
  v71 = v8;
  v106 = v74;
  v107 = MEMORY[0x1E697F568];
  v13 = MEMORY[0x1E697E858];
  v70 = v10;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v104 = WitnessTable;
  v105 = v15;
  v69 = WitnessTable;
  v68 = swift_getWitnessTable();
  v96 = v10;
  v97 = MEMORY[0x1E6981CD8];
  v16 = MEMORY[0x1E6981CD8];
  v67 = v11;
  v98 = v11;
  v99 = v11;
  v100 = WitnessTable;
  v101 = MEMORY[0x1E6981CD0];
  v17 = MEMORY[0x1E6981CD0];
  v102 = v68;
  v103 = v68;
  v65 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8, &qword_1E68B5270);
  v18.i64[0] = v9;
  v72 = v18;
  v83 = *(v12 + 24);
  v96 = v83.i64[0];
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0, &qword_1E68B5278);
  v98 = MEMORY[0x1E6981840];
  v99 = v83.i64[1];
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8, &qword_1E68B5280);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v19 = sub_1E68B2CC0();
  v20 = sub_1E68B1E40();
  v21 = sub_1E68B1E40();
  v22 = swift_getWitnessTable();
  v23 = MEMORY[0x1E697E5D8];
  v94 = v22;
  v95 = MEMORY[0x1E697E5D8];
  v64 = v13;
  v24 = swift_getWitnessTable();
  v92 = v24;
  v93 = v23;
  v25 = swift_getWitnessTable();
  v96 = v19;
  v97 = v16;
  v98 = v21;
  v99 = v20;
  v100 = v22;
  v101 = v17;
  v102 = v25;
  v103 = v24;
  swift_getOpaqueTypeMetadata2();
  v96 = v19;
  v97 = v16;
  v98 = v21;
  v99 = v20;
  v100 = v22;
  v101 = v17;
  v102 = v25;
  v103 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  v26 = sub_1E68B1E40();
  v96 = v70;
  v97 = v16;
  v98 = v67;
  v99 = v67;
  v100 = v69;
  v101 = v17;
  v102 = v68;
  v103 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = swift_getWitnessTable();
  v90 = OpaqueTypeConformance2;
  v91 = v28;
  OpaqueTypeMetadata2 = v26;
  v69 = swift_getWitnessTable();
  v29 = sub_1E68B2C30();
  v70 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v30);
  v65 = &v60 - v31;
  v32 = swift_getWitnessTable();
  v64 = v32;
  v63 = sub_1E6768CBC(&qword_1EE2EA680, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v96 = v29;
  v97 = v82;
  v98 = v32;
  v99 = v63;
  v67 = MEMORY[0x1E697CDB0];
  v33 = swift_getOpaqueTypeMetadata2();
  v68 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v61 = &v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36, v37);
  v62 = &v60 - v39;
  v40 = v76;
  v41 = v75;
  v42 = v78;
  v43 = v71;
  (*(v76 + 16))(v75, v78, v71, v38);
  v44 = (*(v40 + 80) + 64) & ~*(v40 + 80);
  v45 = swift_allocObject();
  *&v46 = vdupq_laneq_s64(v83, 1).u64[0];
  v47 = v74;
  *(&v46 + 1) = v74;
  *(v45 + 16) = vzip1q_s64(v72, v83);
  *(v45 + 32) = v46;
  v48 = v43;
  v49 = *(v43 + 48);
  v50 = *(v48 + 56);
  *(v45 + 48) = v49;
  *(v45 + 56) = v50;
  (*(v40 + 32))(v45 + v44, v41);
  v84 = v73;
  v85 = v83;
  v86 = v47;
  v87 = v49;
  v88 = v50;
  v89 = v42;
  v51 = v65;
  sub_1E68B2C20();
  v52 = v79;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v53 = v61;
  v54 = v82;
  v55 = v64;
  v56 = v63;
  sub_1E68B2790();
  (*(v80 + 8))(v52, v54);
  (*(v70 + 8))(v51, v29);
  v96 = v29;
  v97 = v54;
  v98 = v55;
  v99 = v56;
  swift_getOpaqueTypeConformance2();
  v57 = v62;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v58 = *(v68 + 8);
  v58(v53, v33);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v58)(v57, v33);
}

uint64_t sub_1E67641EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v7 = a1 + *(type metadata accessor for LargeBrickView(0, v12) + 84);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;

  sub_1E677A174(v8);
}

uint64_t sub_1E6764290()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v10[4] = v5;
  v10[5] = v6;
  v7 = *(type metadata accessor for LargeBrickView(0, v10) - 8);
  v8 = v0 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1E67641EC(v8, v1, v2, v3, v4, v5, v6);
}

uint64_t sub_1E676434C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v82 = a6;
  v83 = a7;
  v78 = a3;
  v79 = a5;
  v66 = a4;
  v80 = a2;
  v84 = a1;
  v76 = a8;
  v11 = sub_1E68B1E40();
  v75 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v73 = &v59 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v14 = sub_1E68B1E40();
  v120 = a5;
  v121 = MEMORY[0x1E697F568];
  v15 = MEMORY[0x1E697E858];
  v16 = v11;
  v72 = v11;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v118 = WitnessTable;
  v119 = v18;
  v71 = WitnessTable;
  v19 = swift_getWitnessTable();
  v110 = v16;
  v111 = MEMORY[0x1E6981CD8];
  v20 = MEMORY[0x1E6981CD8];
  v70 = v14;
  v112 = v14;
  v113 = v14;
  v114 = WitnessTable;
  v115 = MEMORY[0x1E6981CD0];
  v21 = MEMORY[0x1E6981CD0];
  v69 = v19;
  v116 = v19;
  v117 = v19;
  v77 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v22);
  v68 = &v59 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8, &qword_1E68B5270);
  v110 = a3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0, &qword_1E68B5278);
  v112 = MEMORY[0x1E6981840];
  v113 = a4;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8, &qword_1E68B5280);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v24 = sub_1E68B2CC0();
  v25 = sub_1E68B1E40();
  v26 = sub_1E68B1E40();
  v27 = swift_getWitnessTable();
  v28 = MEMORY[0x1E697E5D8];
  v108 = v27;
  v109 = MEMORY[0x1E697E5D8];
  v67 = v15;
  v29 = swift_getWitnessTable();
  v106 = v29;
  v107 = v28;
  v30 = swift_getWitnessTable();
  v110 = v24;
  v111 = v20;
  v112 = v26;
  v113 = v25;
  v114 = v27;
  v115 = v21;
  v116 = v30;
  v117 = v29;
  v61 = swift_getOpaqueTypeMetadata2();
  v110 = v24;
  v111 = v20;
  v112 = v26;
  v113 = v25;
  v114 = v27;
  v115 = MEMORY[0x1E6981CD0];
  v116 = v30;
  v117 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = sub_1E68B1F40();
  v31 = sub_1E68B1E40();
  v32 = *(v31 - 8);
  v64 = v31;
  v65 = v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v59 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v60 = &v59 - v37;
  v38 = v79;
  v39 = v80;
  v40 = v78;
  v110 = v80;
  v111 = v78;
  v41 = v66;
  v112 = v66;
  v113 = v79;
  v43 = v82;
  v42 = v83;
  v114 = v82;
  v115 = v83;
  type metadata accessor for LargeBrickView(0, &v110);
  v44 = v73;
  sub_1E68B2770();
  sub_1E68B2E00();
  v98 = v39;
  v99 = v40;
  v100 = v41;
  v101 = v38;
  v102 = v43;
  v103 = v42;
  v92 = v39;
  v93 = v40;
  v94 = v41;
  v95 = v38;
  v96 = v43;
  v97 = v42;
  v45 = swift_checkMetadataState();
  v46 = v69;
  v47 = v71;
  v48 = v68;
  v49 = v72;
  v50 = MEMORY[0x1E6981CD8];
  sub_1E68B2AD0();
  (*(v75 + 8))(v44, v49);
  sub_1E68B2E30();
  v85 = v80;
  v86 = v78;
  v87 = v41;
  v88 = v79;
  v89 = v82;
  v90 = v83;
  v91 = v84;
  v110 = v49;
  v111 = v50;
  v112 = v45;
  v113 = v45;
  v114 = v47;
  v115 = MEMORY[0x1E6981CD0];
  v116 = v46;
  v117 = v46;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v59;
  v53 = OpaqueTypeMetadata2;
  sub_1E68B2A40();
  (*(v74 + 8))(v48, v53);
  v54 = swift_getWitnessTable();
  v104 = v51;
  v105 = v54;
  v55 = v64;
  swift_getWitnessTable();
  v56 = v60;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v57 = *(v65 + 8);
  v57(v52, v55);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v57)(v56, v55);
}

uint64_t sub_1E6764AE0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v27[0] = a1;
  v27[1] = a4;
  v5 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v9 = sub_1E68B1E40();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v27 - v16;
  sub_1E68B1A50();
  v19 = v18;
  v20 = *(v5 + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1E68B2160();
  (*(*(v22 - 8) + 104))(&v8[v20], v21, v22);
  *v8 = v19;
  *(v8 + 1) = v19;
  v27[4] = a3;
  v27[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E6768CBC(&qword_1EE2EA660, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v8);
  v24 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v27[2] = WitnessTable;
  v27[3] = v24;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v25 = *(v10 + 8);
  v25(v13, v9);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v25)(v17, v9);
}

uint64_t sub_1E6764DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v30[0] = a1;
  v30[1] = a4;
  v5 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0, &qword_1E68B7740);
  v9 = sub_1E68B1E40();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v30 - v16;
  v18 = *(v5 + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1E68B2160();
  (*(*(v20 - 8) + 104))(&v8[v18], v19, v20);
  __asm { FMOV            V0.2D, #4.0 }

  *v8 = _Q0;
  v30[4] = a3;
  v30[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E6768CBC(&qword_1EE2EA660, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v8);
  v27 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0, &qword_1E68B7740, MEMORY[0x1E697DDB0]);
  v30[2] = WitnessTable;
  v30[3] = v27;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v28 = *(v10 + 8);
  v28(v13, v9);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v28)(v17, v9);
}

uint64_t sub_1E67650C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a7;
  v86 = a6;
  v66 = a5;
  v87 = a1;
  v85 = a8;
  v81 = sub_1E68B1E00();
  v78 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v11);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v75 = &v63 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8, &qword_1E68B5270);
  v88 = a3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0, &qword_1E68B5278);
  v90 = MEMORY[0x1E6981840];
  v91 = a4;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8, &qword_1E68B5280);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  v16 = sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v71 = v16;
  v69 = WitnessTable;
  v18 = sub_1E68B2CC0();
  v82 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v80 = &v63 - v20;
  v21 = sub_1E68B1E40();
  v22 = sub_1E68B1E40();
  v23 = swift_getWitnessTable();
  v24 = MEMORY[0x1E697E5D8];
  v98 = v23;
  v99 = MEMORY[0x1E697E5D8];
  v25 = swift_getWitnessTable();
  v96 = v25;
  v97 = v24;
  v26 = swift_getWitnessTable();
  v64 = v18;
  v88 = v18;
  v89 = MEMORY[0x1E6981CD8];
  v67 = v22;
  v90 = v22;
  v91 = v21;
  v72 = v21;
  v76 = v23;
  v92 = v23;
  v93 = MEMORY[0x1E6981CD0];
  v68 = v26;
  v94 = v26;
  v95 = v25;
  v74 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v27);
  v29 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v65 = &v63 - v32;
  v83 = a2;
  v84 = a4;
  v88 = a2;
  v89 = a3;
  v90 = a4;
  v91 = v66;
  v33 = v79;
  v92 = v86;
  v93 = v79;
  type metadata accessor for LargeBrickView(0, &v88);
  v34 = v75;
  sub_1E677A48C(v75);
  v35 = v78;
  v36 = v77;
  v37 = v81;
  (*(v78 + 104))(v77, *MEMORY[0x1E697E7D0], v81);
  LOBYTE(v22) = sub_1E68B1DF0();
  v38 = *(v35 + 8);
  v38(v36, v37);
  v38(v34, v37);
  if (v22)
  {
    v39 = sub_1E68B21D0();
  }

  else
  {
    v39 = sub_1E68B21E0();
  }

  MEMORY[0x1EEE9AC00](v39, v40);
  *(&v63 - 8) = v83;
  *(&v63 - 7) = a3;
  v41 = v80;
  sub_1E68B2CB0();
  v42 = sub_1E68B2E00();
  v87 = &v63;
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v62 = v33;
  v46 = swift_checkMetadataState();
  v47 = swift_checkMetadataState();
  v48 = v74;
  v61 = v74;
  v49 = v68;
  v60 = v68;
  v59 = MEMORY[0x1E6981CD0];
  v50 = v76;
  v57 = v47;
  v58 = v76;
  v51 = v64;
  v52 = MEMORY[0x1E6981CD8];
  sub_1E68B2AD0();
  (*(v82 + 8))(v41, v51);
  v88 = v51;
  v89 = v52;
  v90 = v46;
  v91 = v47;
  v92 = v50;
  v93 = MEMORY[0x1E6981CD0];
  v94 = v49;
  v95 = v48;
  swift_getOpaqueTypeConformance2();
  v53 = v65;
  v54 = OpaqueTypeMetadata2;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v55 = *(v70 + 8);
  v55(v29, v54);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v55)(v53, v54);
}

uint64_t sub_1E6765854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v64 = a7;
  v71 = a8;
  v72 = sub_1E68B1E00();
  v73 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v14);
  v70 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = a3;
  v55 = a3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0, &qword_1E68B5278);
  v91 = MEMORY[0x1E6981840];
  v92 = a4;
  swift_getTupleTypeMetadata();
  v63 = sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v60 = sub_1E68B2C50();
  v67 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v16);
  v59 = &v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8, &qword_1E68B5280);
  v68 = sub_1E68B1E40();
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v19);
  v58 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v66 = &v54 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0971E8, &qword_1E68B5270);
  v61 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v65 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v54 - v29;
  *v30 = sub_1E68B2140();
  *(v30 + 1) = 0;
  v30[16] = 0;
  v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097200, &qword_1E68B5300) + 44)];
  v57 = v30;
  v32 = a1;
  v33 = a1;
  v34 = v64;
  sub_1E6765F2C(v33, a2, a3, a4, a5, a6, v64, v31);
  KeyPath = swift_getKeyPath();
  v36 = &v30[*(v24 + 36)];
  v37 = *(v18 + 28);
  v56 = *MEMORY[0x1E697E7D0];
  v38 = *(v73 + 104);
  v38(v36 + v37);
  *v36 = KeyPath;
  v74 = a2;
  v75 = v55;
  v76 = a4;
  v77 = a5;
  v78 = a6;
  v79 = v34;
  v80 = v32;
  sub_1E68B2140();
  v39 = v59;
  sub_1E68B2C40();
  swift_getKeyPath();
  v40 = v70;
  v41 = v72;
  (v38)(v70, v56, v72);
  v42 = v60;
  v43 = swift_getWitnessTable();
  v44 = v58;
  sub_1E68B27B0();

  (*(v73 + 8))(v40, v41);
  (*(v67 + 8))(v39, v42);
  v45 = sub_1E673F530(&qword_1ED097208, &qword_1ED0971F8, &qword_1E68B5280, MEMORY[0x1E6980A18]);
  v87 = v43;
  v88 = v45;
  v46 = v68;
  v47 = swift_getWitnessTable();
  v48 = v66;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v49 = v69;
  v50 = *(v69 + 8);
  v50(v44, v46);
  v51 = v57;
  v52 = v65;
  sub_1E67612FC(v57, v65, &qword_1ED0971E8, &qword_1E68B5270);
  v85 = 0;
  v86 = 1;
  v89 = v52;
  v90 = &v85;
  (*(v49 + 16))(v44, v48, v46);
  v91 = v44;
  v84[0] = v61;
  v84[1] = MEMORY[0x1E6981840];
  v84[2] = v46;
  v81 = sub_1E676852C();
  v82 = MEMORY[0x1E6981838];
  v83 = v47;
  sub_1E6848F14(&v89, 3uLL, v84);
  v50(v48, v46);
  sub_1E6744A10(v51, &qword_1ED0971E8, &qword_1E68B5270);
  v50(v44, v46);
  return sub_1E6744A10(v52, &qword_1ED0971E8, &qword_1E68B5270);
}

uint64_t sub_1E6765F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v64 = a6;
  *(&v64 + 1) = a7;
  v62 = a8;
  v63 = a1;
  v12 = sub_1E68B1E00();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097268, &qword_1E68B53C8);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v51 - v23;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097270, &qword_1E68B53D0);
  MEMORY[0x1EEE9AC00](v58, v25);
  v61 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v59 = &v51 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v60 = &v51 - v32;
  v54 = a2;
  v55 = a3;
  *&v74 = a2;
  *(&v74 + 1) = a3;
  v56 = a4;
  v57 = a5;
  *&v75 = a4;
  *(&v75 + 1) = a5;
  v76 = v64;
  type metadata accessor for LargeBrickView(0, &v74);
  sub_1E677A48C(v20);
  v33 = *(v13 + 104);
  v53 = *MEMORY[0x1E697E7D0];
  v52 = v33;
  v33(v16);
  LOBYTE(a2) = sub_1E68B1DF0();
  v34 = *(v13 + 8);
  v34(v16, v12);
  v34(v20, v12);
  if (a2)
  {
    v35 = sub_1E68B21D0();
  }

  else
  {
    v35 = sub_1E68B21E0();
  }

  *v24 = v35;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097278, &qword_1E68B53D8);
  sub_1E6766488(v63, v54, v55, v56, v57, v64, *(&v64 + 1), &v24[*(v36 + 44)]);
  sub_1E677A48C(v20);
  v52(v16, v53, v12);
  v37 = sub_1E68B1DF0();
  v34(v16, v12);
  v34(v20, v12);
  if (v37)
  {
    sub_1E68B2E30();
  }

  else
  {
    sub_1E68B2E40();
  }

  sub_1E68B1F30();
  v38 = v59;
  sub_1E6761420(v24, v59, &qword_1ED097268, &qword_1E68B53C8);
  v39 = (v38 + *(v58 + 36));
  v40 = v72;
  v39[4] = v71;
  v39[5] = v40;
  v39[6] = v73;
  v41 = v68;
  *v39 = v67;
  v39[1] = v41;
  v42 = v70;
  v39[2] = v69;
  v39[3] = v42;
  v43 = v60;
  sub_1E6761420(v38, v60, &qword_1ED097270, &qword_1E68B53D0);
  sub_1E68B2E80();
  sub_1E68B1F30();
  *&v65[55] = v77;
  *&v65[71] = v78;
  *&v65[87] = v79;
  *&v65[103] = v80;
  *&v65[7] = v74;
  *&v65[23] = v75;
  v66 = 1;
  *&v65[39] = v76;
  v44 = v61;
  sub_1E67612FC(v43, v61, &qword_1ED097270, &qword_1E68B53D0);
  v45 = v62;
  sub_1E67612FC(v44, v62, &qword_1ED097270, &qword_1E68B53D0);
  v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097280, &qword_1E68B53E0) + 48);
  v47 = *&v65[80];
  *(v46 + 73) = *&v65[64];
  *(v46 + 89) = v47;
  *(v46 + 105) = *&v65[96];
  v48 = *&v65[16];
  *(v46 + 9) = *v65;
  *(v46 + 25) = v48;
  v49 = *&v65[48];
  *(v46 + 41) = *&v65[32];
  *v46 = 0;
  *(v46 + 8) = 1;
  *(v46 + 120) = *&v65[111];
  *(v46 + 57) = v49;
  sub_1E6744A10(v43, &qword_1ED097270, &qword_1E68B53D0);
  return sub_1E6744A10(v44, &qword_1ED097270, &qword_1E68B53D0);
}

uint64_t sub_1E6766488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, void, uint64_t)@<X6>, char *a8@<X8>)
{
  v126 = a6;
  v127 = a7;
  v125 = a5;
  v104 = a8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097288, &qword_1E68B53E8);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v12);
  v103 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v128 = v98 - v16;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097228, &qword_1E68C5B60);
  MEMORY[0x1EEE9AC00](v129, v17);
  v132 = (v98 - v18);
  v19 = sub_1E68B1E00();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v98 - v26;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097290, &qword_1E68B53F0);
  MEMORY[0x1EEE9AC00](v131, v28);
  v30 = v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = v98 - v33;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097298, &qword_1E68B53F8);
  MEMORY[0x1EEE9AC00](v124, v35);
  v123 = v98 - v36;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972A0, &qword_1E68B5400);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v37);
  v100 = v98 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v130 = v98 - v41;
  v134[0] = a2;
  v134[1] = a3;
  v134[2] = a4;
  v134[3] = v125;
  v134[4] = v126;
  v134[5] = v127;
  v114 = type metadata accessor for LargeBrickView(0, v134);
  v42 = (a1 + *(v114 + 92));
  v44 = *v42;
  v43 = v42[1];
  v45 = v42[2];
  v126 = v42[3];
  v127 = v43;
  sub_1E673F228(v44, v43, v45, v126);
  LODWORD(v125) = sub_1E68B2310();
  KeyPath = swift_getKeyPath();
  v121 = a1;
  v122 = KeyPath;
  sub_1E677A48C(v27);
  v47 = *(v20 + 104);
  v113 = *MEMORY[0x1E697E7D0];
  v115 = v20 + 104;
  v112 = v47;
  v47(v23);
  LOBYTE(a1) = sub_1E68B1DF0();
  v48 = *(v20 + 8);
  v118 = v23;
  v48(v23, v19);
  v117 = v27;
  v119 = v20 + 8;
  v120 = v19;
  v116 = v48;
  v48(v27, v19);
  if (a1)
  {
    v49 = 0;
  }

  else
  {
    v49 = 2;
  }

  LOBYTE(v134[0]) = 0;
  v50 = swift_getKeyPath();
  v51 = v134[0];
  v52 = &v34[*(v131 + 36)];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972A8, &qword_1E68B5408);
  v53 = *(v110 + 28);
  v54 = *MEMORY[0x1E6980FA8];
  v55 = sub_1E68B2650();
  v56 = *(v55 - 8);
  v57 = *(v56 + 104);
  v111 = v54;
  v109 = v55;
  v108 = v57;
  v107 = v56 + 104;
  (v57)(v52 + v53, v54);
  *v52 = swift_getKeyPath();
  *v34 = v44;
  v58 = v123;
  v59 = v124;
  v60 = v126;
  *(v34 + 1) = v127;
  *(v34 + 2) = v45;
  *(v34 + 3) = v60;
  *(v34 + 8) = v125;
  *(v34 + 5) = v122;
  *(v34 + 6) = 4;
  v34[56] = v51;
  *(v34 + 8) = v50;
  v34[72] = v49;
  sub_1E676896C(v34, v58);
  *(v58 + *(v59 + 36)) = 0x4000000000000000;
  v61 = *MEMORY[0x1E697E6E8];
  v62 = sub_1E68B1DE0();
  v63 = *(v62 - 8);
  v64 = *(v63 + 104);
  v65 = v63 + 104;
  v64(v132, v61, v62);
  v66 = sub_1E6768CBC(&qword_1EE2EA840, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E68B3190();
  if (result)
  {
    sub_1E67689DC();
    LODWORD(v126) = v61;
    v127 = v64;
    v68 = sub_1E673F530(&qword_1EE2EA418, &qword_1ED097228, &qword_1E68C5B60, MEMORY[0x1E69E6ED8]);
    v125 = v65;
    v69 = v132;
    v98[1] = v68;
    sub_1E68B2870();
    sub_1E6744A10(v69, &qword_1ED097228, &qword_1E68C5B60);
    sub_1E6744A10(v58, &qword_1ED097298, &qword_1E68B53F8);
    v70 = (v121 + *(v114 + 88));
    v71 = *v70;
    v72 = v70[1];
    v73 = v70[3];
    v122 = v70[2];
    v123 = v71;
    sub_1E673F228(v71, v72, v122, v73);
    LODWORD(v114) = sub_1E68B2310();
    v99 = swift_getKeyPath();
    v124 = v66;
    v74 = v117;
    sub_1E677A48C(v117);
    v75 = v118;
    v76 = v120;
    v112(v118, v113, v120);
    v77 = sub_1E68B1DF0();
    v78 = v116;
    v116(v75, v76);
    v78(v74, v76);
    if (v77)
    {
      v79 = 0;
    }

    else
    {
      v79 = 2;
    }

    v133 = 0;
    v80 = swift_getKeyPath();
    v81 = v133;
    v82 = &v30[*(v131 + 36)];
    v108(v82 + *(v110 + 28), v111, v109);
    *v82 = swift_getKeyPath();
    v83 = v122;
    *v30 = v123;
    *(v30 + 1) = v72;
    *(v30 + 2) = v83;
    *(v30 + 3) = v73;
    *(v30 + 8) = v114;
    *(v30 + 5) = v99;
    *(v30 + 6) = 3;
    v30[56] = v81;
    *(v30 + 8) = v80;
    v30[72] = v79;
    v127(v69, v126, v62);
    result = sub_1E68B3190();
    if (result)
    {
      sub_1E6768A94();
      v84 = v128;
      v85 = v132;
      sub_1E68B2870();
      sub_1E6744A10(v85, &qword_1ED097228, &qword_1E68C5B60);
      sub_1E6744A10(v30, &qword_1ED097290, &qword_1E68B53F0);
      v86 = v101;
      v87 = *(v101 + 16);
      v88 = v100;
      v89 = v102;
      v87(v100, v130, v102);
      v90 = v105;
      v132 = *(v105 + 16);
      v91 = v103;
      v92 = v84;
      v93 = v106;
      v132(v103, v92, v106);
      v94 = v104;
      v87(v104, v88, v89);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972C0, &unk_1E68B5450);
      v132(&v94[*(v95 + 48)], v91, v93);
      v96 = *(v90 + 8);
      v96(v128, v93);
      v97 = *(v86 + 8);
      v97(v130, v89);
      v96(v91, v93);
      return (v97)(v88, v89);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6766EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v71 = a8;
  v72 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v79 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v70 = &v59 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097228, &qword_1E68C5B60);
  MEMORY[0x1EEE9AC00](v75, v19);
  v21 = &v59 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0971F0, &qword_1E68B5278);
  v68 = *(v22 - 8);
  v69 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v78 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v76 = &v59 - v27;
  v66 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v77 = &v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v59 - v33;
  *&v97 = a2;
  *(&v97 + 1) = a3;
  v73 = a4;
  *&v98 = a4;
  *(&v98 + 1) = a5;
  *&v99 = a6;
  *(&v99 + 1) = a7;
  v65 = a7;
  v35 = type metadata accessor for LargeBrickView(0, &v97);
  v74 = v34;
  v67 = a6;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v63 = v35;
  v64 = a1;
  v36 = (a1 + *(v35 + 80));
  v37 = *v36;
  v38 = v36[1];
  v39 = v36[2];
  v40 = v36[3];
  LODWORD(v34) = sub_1E68B2310();
  KeyPath = swift_getKeyPath();
  LOBYTE(v97) = 0;
  v42 = swift_getKeyPath();
  *&v91 = v37;
  *(&v91 + 1) = v38;
  *&v92 = v39;
  *(&v92 + 1) = v40;
  LODWORD(v93) = v34;
  *(&v93 + 1) = 0x3FF0000000000000;
  *&v94 = KeyPath;
  *(&v94 + 1) = 1;
  LOBYTE(v95) = 0;
  *(&v95 + 1) = v42;
  v96 = 0;
  v43 = *MEMORY[0x1E697E6E8];
  v44 = sub_1E68B1DE0();
  (*(*(v44 - 8) + 104))(v21, v43, v44);
  sub_1E673F228(v37, v38, v39, v40);
  sub_1E6768CBC(&qword_1EE2EA840, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E68B3190();
  if (result)
  {
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097230, &qword_1E68B53A0);
    v61 = sub_1E6768610();
    v60 = sub_1E673F530(&qword_1EE2EA418, &qword_1ED097228, &qword_1E68C5B60, MEMORY[0x1E69E6ED8]);
    sub_1E68B2870();
    sub_1E6744A10(v21, &qword_1ED097228, &qword_1E68C5B60);
    v99 = v93;
    v100 = v94;
    v101 = v95;
    v102 = v96;
    v97 = v91;
    v98 = v92;
    sub_1E6744A10(&v97, &qword_1ED097230, &qword_1E68B53A0);
    v46 = v70;
    v47 = v73;
    v48 = v65;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
    v49 = v66;
    v50 = v77;
    (*(v66 + 16))(v77, v74, a3);
    *&v91 = v50;
    v52 = v68;
    v51 = v69;
    v53 = v78;
    (*(v68 + 16))();
    v89 = 0;
    v90 = 1;
    *(&v91 + 1) = v53;
    *&v92 = &v89;
    v54 = v72;
    v55 = v79;
    (*(v72 + 16))(v79, v46, v47);
    *(&v92 + 1) = v55;
    v88[0] = a3;
    v88[1] = v51;
    v88[2] = MEMORY[0x1E6981840];
    v88[3] = v47;
    v80 = v62;
    v81 = v75;
    v82 = v61;
    v83 = v60;
    v84 = v67;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v86 = MEMORY[0x1E6981838];
    v87 = v48;
    sub_1E6848F14(&v91, 4uLL, v88);
    v56 = *(v54 + 8);
    v56(v46, v47);
    v57 = *(v52 + 8);
    v57(v76, v51);
    v58 = *(v49 + 8);
    v58(v74, a3);
    v56(v79, v47);
    v57(v78, v51);
    return (v58)(v77, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E676754C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8, &qword_1E68B5270);
  v23[6] = a1;
  v23[7] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0, &qword_1E68B5278);
  v23[8] = MEMORY[0x1E6981840];
  v23[9] = a2;
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
  v5 = sub_1E68B1E40();
  v23[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v23 - v7;
  v9 = sub_1E68B1E40();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v23 - v16;
  sub_1E68B24F0();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A70();
  sub_1E68B2560();
  v23[4] = WitnessTable;
  v23[5] = MEMORY[0x1E697E5D8];
  v19 = MEMORY[0x1E697E5D8];
  v20 = swift_getWitnessTable();
  sub_1E68B2A70();
  (*(v23[0] + 8))(v8, v5);
  v23[2] = v20;
  v23[3] = v19;
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v21 = *(v10 + 8);
  v21(v13, v9);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v21)(v17, v9);
}

uint64_t sub_1E67678FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8, &qword_1E68B5270);
  v18[2] = a3;
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0, &qword_1E68B5278);
  v18[4] = MEMORY[0x1E6981840];
  v18[5] = a4;
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
  v6 = sub_1E68B1E40();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v18 - v13;
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A50();
  v18[0] = WitnessTable;
  v18[1] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  v16 = *(v7 + 8);
  v16(v10, v6);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0();
  return (v16)(v14, v6);
}

void sub_1E6767C08(void *a1)
{
  sub_1E67683F8(319);
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
          sub_1E673ED38();
          if (v5 <= 0x3F)
          {
            sub_1E673ED88(319);
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

uint64_t sub_1E6767D04(_DWORD *a1, unsigned int a2, void *a3)
{
  v6 = *(*(sub_1E68B1E00() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a3[3];
  v9 = *(a3[2] - 8);
  v10 = *(v9 + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  if (v10 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = a3[4];
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 80);
  v18 = *(*(a3[2] - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(*(v8 - 8) + 64);
  v21 = *(v15 + 80);
  if (v13 <= v16)
  {
    v22 = *(v15 + 84);
  }

  else
  {
    v22 = v13;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v7 + v17 + 1;
  v24 = *(v15 + 64) + 7;
  if (v22 >= a2)
  {
    goto LABEL_35;
  }

  v25 = ((((((((v24 + ((v20 + v21 + ((v18 + v19 + (v23 & ~v17)) & ~v19)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  v26 = a2 - v22;
  if ((v25 & 0xFFFFFFF8) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = v26 + 1;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 <= 1)
  {
    if (!v29)
    {
      goto LABEL_35;
    }

    v30 = *(a1 + v25);
    if (!*(a1 + v25))
    {
      goto LABEL_35;
    }

LABEL_32:
    v32 = v30 - 1;
    if ((v25 & 0xFFFFFFF8) != 0)
    {
      v32 = 0;
      v33 = *a1;
    }

    else
    {
      v33 = 0;
    }

    return v22 + (v33 | v32) + 1;
  }

  if (v29 == 2)
  {
    v30 = *(a1 + v25);
    if (*(a1 + v25))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v30 = *(a1 + v25);
    if (v30)
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  v34 = (a1 + v23) & ~v17;
  if (v10 == v22)
  {
    v35 = *(v9 + 48);

    return v35(v34);
  }

  v36 = (v34 + v18 + v19) & ~v19;
  if (v12 == v22)
  {
    v37 = *(v11 + 48);
    v38 = *(v11 + 84);
    v39 = v8;

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v16 == v22)
  {
    v37 = *(v15 + 48);
    v38 = *(v15 + 84);
    v39 = v14;

    return v37(v36, v38, v39);
  }

  v40 = *((((v24 + v36) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

void sub_1E676805C(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = *(*(sub_1E68B1E00() - 8) + 64);
  v9 = *(a4[2] - 8);
  if (v8 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(a4[2] - 8);
  v12 = *(v9 + 84);
  v13 = a4[3];
  v14 = a4[4];
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  if (v12 <= v16)
  {
    v17 = *(v15 + 84);
  }

  else
  {
    v17 = *(v9 + 84);
  }

  v18 = *(v14 - 8);
  v19 = *(v18 + 84);
  v20 = *(v9 + 80);
  v21 = *(v9 + 64);
  v22 = *(v15 + 80);
  v23 = *(*(a4[3] - 8) + 64);
  v24 = *(v18 + 80);
  v25 = *(v18 + 64);
  if (v17 <= v19)
  {
    v26 = *(v18 + 84);
  }

  else
  {
    v26 = v17;
  }

  if (v26 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  v27 = v10 + v20 + 1;
  v28 = v25 + 7;
  v29 = ((((((((v25 + 7 + ((v23 + v24 + ((v21 + v22 + (v27 & ~v20)) & ~v22)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v26 >= a3)
  {
    v31 = 0;
    v32 = a2 - v26;
    if (a2 <= v26)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (v29)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    if (v29)
    {
      v34 = ~v26 + a2;
      bzero(a1, v29);
      *a1 = v34;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        *(a1 + v29) = v33;
      }

      else
      {
        *(a1 + v29) = v33;
      }
    }

    else if (v31)
    {
      *(a1 + v29) = v33;
    }

    return;
  }

  if (v29)
  {
    v30 = 2;
  }

  else
  {
    v30 = a3 - v26 + 1;
  }

  if (v30 >= 0x10000)
  {
    v31 = 4;
  }

  else
  {
    v31 = 2;
  }

  if (v30 < 0x100)
  {
    v31 = 1;
  }

  if (v30 < 2)
  {
    v31 = 0;
  }

  v32 = a2 - v26;
  if (a2 > v26)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (v31 > 1)
  {
    if (v31 != 2)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v29) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v31)
  {
    goto LABEL_39;
  }

  *(a1 + v29) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  v35 = (a1 + v27) & ~v20;
  if (v12 != v26)
  {
    v37 = (v35 + v21 + v22) & ~v22;
    if (v16 == v26)
    {
      v38 = *(v15 + 56);
      v39 = a2;
      v40 = v16;
      v41 = v13;
    }

    else
    {
      v37 = (v37 + v23 + v24) & ~v24;
      if (v19 != v26)
      {
        v42 = ((((v28 + v37) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v42 = a2 & 0x7FFFFFFF;
          v42[1] = 0;
        }

        else
        {
          *v42 = (a2 - 1);
        }

        return;
      }

      v38 = *(v18 + 56);
      v39 = a2;
      v40 = v19;
      v41 = v14;
    }

    v38(v37, v39, v40, v41);
    return;
  }

  v36 = *(v11 + 56);

  v36(v35, a2);
}

void sub_1E67683F8(uint64_t a1)
{
  if (!qword_1EE2EA888)
  {
    sub_1E68B1E00();
    v1 = sub_1E68B1BA0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2EA888);
    }
  }
}

unint64_t sub_1E676852C()
{
  result = qword_1ED097210;
  if (!qword_1ED097210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8, &qword_1E68B5270);
    sub_1E673F530(&qword_1ED097218, &qword_1ED097220, &qword_1E68B5338, MEMORY[0x1E69817F8]);
    sub_1E673F530(&qword_1ED097208, &qword_1ED0971F8, &qword_1E68B5280, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097210);
  }

  return result;
}

unint64_t sub_1E6768610()
{
  result = qword_1EE2EA6B8;
  if (!qword_1EE2EA6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097230, &qword_1E68B53A0);
    sub_1E67686C8();
    sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260, &qword_1E68BB680, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6B8);
  }

  return result;
}

unint64_t sub_1E67686C8()
{
  result = qword_1EE2EA6E8;
  if (!qword_1EE2EA6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097238, &qword_1E68B53A8);
    sub_1E6768780();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48, &qword_1E68BB6E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6E8);
  }

  return result;
}

unint64_t sub_1E6768780()
{
  result = qword_1EE2EA758;
  if (!qword_1EE2EA758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097240, &qword_1E68B53B0);
    sub_1E6768838();
    sub_1E673F530(&qword_1EE2EA5F8, &qword_1ED097258, &qword_1E68B53C0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA758);
  }

  return result;
}

unint64_t sub_1E6768838()
{
  result = qword_1EE2EA7F0;
  if (!qword_1EE2EA7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097248, &qword_1E68B53B8);
    sub_1E67688F0();
    sub_1E673F530(&qword_1EE2EA5D0, &qword_1ED096DA0, &qword_1E68B4398, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7F0);
  }

  return result;
}

unint64_t sub_1E67688F0()
{
  result = qword_1EE2EA570;
  if (!qword_1EE2EA570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097250, &unk_1E68BC520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA570);
  }

  return result;
}

uint64_t sub_1E676896C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097290, &qword_1E68B53F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E67689DC()
{
  result = qword_1EE2EA6A0;
  if (!qword_1EE2EA6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097298, &qword_1E68B53F8);
    sub_1E6768A94();
    sub_1E673F530(&qword_1EE2EA5F8, &qword_1ED097258, &qword_1E68B53C0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6A0);
  }

  return result;
}

unint64_t sub_1E6768A94()
{
  result = qword_1EE2EA6B0;
  if (!qword_1EE2EA6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097290, &qword_1E68B53F0);
    sub_1E6768B4C();
    sub_1E673F530(&qword_1EE2EA5A8, &qword_1ED0972A8, &qword_1E68B5408, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6B0);
  }

  return result;
}

unint64_t sub_1E6768B4C()
{
  result = qword_1EE2EA6E0;
  if (!qword_1EE2EA6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0972B0, &qword_1E68B5440);
    sub_1E6768C04();
    sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260, &qword_1E68BB680, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6E0);
  }

  return result;
}

unint64_t sub_1E6768C04()
{
  result = qword_1EE2EA750;
  if (!qword_1EE2EA750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0972B8, &qword_1E68B5448);
    sub_1E6768838();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48, &qword_1E68BB6E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA750);
  }

  return result;
}

uint64_t sub_1E6768CBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6768D04(uint64_t a1)
{
  v2 = sub_1E68B1F00();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6768D60()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6768D94()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 12;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E6768DC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E6768DF4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6768E28()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6768E5C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E6768E90(char a1)
{
  result = 0x61436E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x746469576C6C7566;
      break;
    case 2:
      result = 0x697463416F666E69;
      break;
    case 3:
      result = 0x697242656772616CLL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
    case 9:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x647261646E617473;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x437972616D6D7573;
      break;
    case 11:
      result = 0x647261436C6C6174;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6369724265646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E6769054(uint64_t a1)
{
  v2 = sub_1E676B158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769090(uint64_t a1)
{
  v2 = sub_1E676B158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67690D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E676F12C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E6769108(uint64_t a1)
{
  v2 = sub_1E676A978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769144(uint64_t a1)
{
  v2 = sub_1E676A978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6769180(uint64_t a1)
{
  v2 = sub_1E676B0B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67691BC(uint64_t a1)
{
  v2 = sub_1E676B0B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67691F8(uint64_t a1)
{
  v2 = sub_1E676B008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769234(uint64_t a1)
{
  v2 = sub_1E676B008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E676927C(uint64_t a1)
{
  v2 = sub_1E676AFB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67692B8(uint64_t a1)
{
  v2 = sub_1E676AFB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67692F4(uint64_t a1)
{
  v2 = sub_1E676AF60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769330(uint64_t a1)
{
  v2 = sub_1E676AF60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E676936C(uint64_t a1)
{
  v2 = sub_1E676AEB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67693A8(uint64_t a1)
{
  v2 = sub_1E676AEB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67693E4(uint64_t a1)
{
  v2 = sub_1E676AE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769420(uint64_t a1)
{
  v2 = sub_1E676AE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E676945C(uint64_t a1)
{
  v2 = sub_1E676AD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769498(uint64_t a1)
{
  v2 = sub_1E676AD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67694D4(uint64_t a1)
{
  v2 = sub_1E676ACC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769510(uint64_t a1)
{
  v2 = sub_1E676ACC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E676954C(uint64_t a1)
{
  v2 = sub_1E676AC18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769588(uint64_t a1)
{
  v2 = sub_1E676AC18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67695C4(uint64_t a1)
{
  v2 = sub_1E676AB70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769600(uint64_t a1)
{
  v2 = sub_1E676AB70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E676963C(uint64_t a1)
{
  v2 = sub_1E676AAC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769678(uint64_t a1)
{
  v2 = sub_1E676AAC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67696B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E6769738(uint64_t a1)
{
  v2 = sub_1E676AA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769774(uint64_t a1)
{
  v2 = sub_1E676AA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67697B0(uint64_t a1)
{
  v2 = sub_1E676A9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67697EC(uint64_t a1)
{
  v2 = sub_1E676A9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LazyCanvasItemContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972C8, &qword_1E68B5460);
  v198 = *(v4 - 8);
  v199 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v196 = &v163 - v6;
  *&v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972D0, &qword_1E68B5468);
  *&v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202, v7);
  v200 = &v163 - v8;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972D8, &qword_1E68B5470);
  v195 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197, v9);
  v194 = &v163 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972E0, &qword_1E68B5478);
  v192 = *(v11 - 8);
  v193 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v191 = &v163 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972E8, &qword_1E68B5480);
  v189 = *(v14 - 8);
  v190 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v188 = &v163 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972F0, &qword_1E68B5488);
  v186 = *(v17 - 8);
  v187 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v185 = &v163 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972F8, &qword_1E68B5490);
  v183 = *(v20 - 8);
  v184 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v182 = &v163 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097300, &qword_1E68B5498);
  v180 = *(v23 - 8);
  v181 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v179 = &v163 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097308, &qword_1E68B54A0);
  v177 = *(v26 - 8);
  v178 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v176 = &v163 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097310, &qword_1E68B54A8);
  v174 = *(v29 - 8);
  v175 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v173 = &v163 - v31;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097318, &qword_1E68B54B0);
  v168 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171, v32);
  v165 = &v163 - v33;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097320, &qword_1E68B54B8);
  v170 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172, v34);
  v166 = &v163 - v35;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097328, &qword_1E68B54C0);
  v167 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v36);
  v38 = &v163 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097330, &qword_1E68B54C8);
  v164 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v163 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097338, &qword_1E68B54D0);
  v44 = *(v43 - 8);
  v204 = v43;
  v205 = v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v163 - v46;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E676A978();
  v203 = v47;
  sub_1E68B3BD0();
  v48 = v2[13];
  v222[12] = v2[12];
  v222[13] = v48;
  v223[0] = v2[14];
  *(v223 + 9) = *(v2 + 233);
  v49 = v2[9];
  v222[8] = v2[8];
  v222[9] = v49;
  v50 = v2[11];
  v222[10] = v2[10];
  v222[11] = v50;
  v51 = v2[5];
  v222[4] = v2[4];
  v222[5] = v51;
  v52 = v2[7];
  v222[6] = v2[6];
  v222[7] = v52;
  v53 = v2[1];
  v222[0] = *v2;
  v222[1] = v53;
  v54 = v2[3];
  v222[2] = v2[2];
  v222[3] = v54;
  switch(sub_1E67424C4(v222))
  {
    case 1u:
      nullsub_5();
      v116 = v115;
      LOBYTE(v206) = 1;
      sub_1E676B0B0();
      v117 = v203;
      v74 = v204;
      sub_1E68B3A30();
      v118 = v116[1];
      v206 = *v116;
      v207 = v118;
      v119 = v116[2];
      v120 = v116[3];
      v121 = v116[5];
      v210 = v116[4];
      v211 = v121;
      v208 = v119;
      v209 = v120;
      v122 = v116[6];
      v123 = v116[7];
      v124 = v116[9];
      v214 = v116[8];
      v215 = v124;
      v212 = v122;
      v213 = v123;
      v125 = v116[10];
      v126 = v116[11];
      v127 = v116[13];
      v218 = v116[12];
      v219 = v127;
      v216 = v125;
      v217 = v126;
      sub_1E676B104();
      v128 = v169;
      sub_1E68B3AB0();
      (*(v167 + 8))(v38, v128);
      v129 = *(v205 + 8);
      v130 = v117;
      goto LABEL_17;
    case 2u:
      nullsub_5();
      v99 = v98;
      LOBYTE(v206) = 2;
      sub_1E676B008();
      v73 = v166;
      v75 = v203;
      v74 = v204;
      sub_1E68B3A30();
      v100 = *v99;
      v101 = v99[1];
      v102 = v99[3];
      v208 = v99[2];
      v209 = v102;
      v206 = v100;
      v207 = v101;
      sub_1E676B05C();
      v82 = v172;
      sub_1E68B3AB0();
      v83 = v170;
      goto LABEL_16;
    case 3u:
      nullsub_5();
      v104 = *v103;
      v105 = v103[1];
      LOBYTE(v206) = 4;
      sub_1E676AF60();
      v86 = v173;
      v88 = v203;
      v87 = v204;
      sub_1E68B3A30();
      *&v206 = v104;
      *(&v206 + 1) = v105;
      sub_1E676AE64();
      v89 = v175;
      sub_1E68B3AB0();
      v90 = v174;
      goto LABEL_12;
    case 4u:
      nullsub_5();
      v202 = *v84;
      v85 = *(v84 + 2);
      LOBYTE(v206) = 5;
      sub_1E676AEB8();
      v86 = v176;
      v88 = v203;
      v87 = v204;
      sub_1E68B3A30();
      v206 = v202;
      *&v207 = v85;
      sub_1E676AF0C();
      v89 = v178;
      sub_1E68B3AB0();
      v90 = v177;
      goto LABEL_12;
    case 5u:
      nullsub_5();
      v132 = *v131;
      v133 = v131[1];
      LOBYTE(v206) = 6;
      sub_1E676AE10();
      v86 = v179;
      v88 = v203;
      v87 = v204;
      sub_1E68B3A30();
      *&v206 = v132;
      *(&v206 + 1) = v133;
      sub_1E676AE64();
      v89 = v181;
      sub_1E68B3AB0();
      v90 = v180;
      goto LABEL_12;
    case 6u:
      nullsub_5();
      v137 = v136;
      LOBYTE(v206) = 7;
      sub_1E676AD68();
      v73 = v182;
      v75 = v203;
      v74 = v204;
      sub_1E68B3A30();
      v138 = *v137;
      v139 = v137[2];
      v207 = v137[1];
      v208 = v139;
      v206 = v138;
      v140 = v137[3];
      v141 = v137[4];
      v142 = v137[5];
      *&v212 = *(v137 + 12);
      v210 = v141;
      v211 = v142;
      v209 = v140;
      sub_1E676ADBC();
      v82 = v184;
      sub_1E68B3AB0();
      v83 = v183;
      goto LABEL_16;
    case 7u:
      nullsub_5();
      v107 = v106;
      LOBYTE(v206) = 8;
      sub_1E676ACC0();
      v73 = v185;
      v75 = v203;
      v74 = v204;
      sub_1E68B3A30();
      v108 = v107[1];
      v206 = *v107;
      v207 = v108;
      v109 = v107[2];
      v110 = v107[3];
      v111 = v107[5];
      v210 = v107[4];
      v211 = v111;
      v208 = v109;
      v209 = v110;
      v112 = v107[6];
      v113 = v107[7];
      v114 = v107[9];
      v214 = v107[8];
      v215 = v114;
      v212 = v112;
      v213 = v113;
      sub_1E676AD14();
      v82 = v187;
      sub_1E68B3AB0();
      v83 = v186;
      goto LABEL_16;
    case 8u:
      nullsub_5();
      v152 = *v151;
      v153 = *(v151 + 1);
      v154 = *(v151 + 2);
      v155 = *(v151 + 3);
      v156 = v151[32];
      v157 = *(v151 + 5);
      v158 = *(v151 + 6);
      LOBYTE(v206) = 9;
      sub_1E676AC18();
      v159 = v188;
      v161 = v203;
      v160 = v204;
      sub_1E68B3A30();
      LOBYTE(v206) = v152;
      *(&v206 + 1) = v153;
      *&v207 = v154;
      *(&v207 + 1) = v155;
      LOBYTE(v208) = v156;
      *(&v208 + 1) = v157;
      *&v209 = v158;
      sub_1E676AC6C();
      v162 = v190;
      sub_1E68B3AB0();
      (*(v189 + 8))(v159, v162);
      v129 = *(v205 + 8);
      v130 = v161;
      v143 = v160;
      return v129(v130, v143);
    case 9u:
      nullsub_5();
      v95 = v94;
      v96 = *(v94 + 32);
      LOBYTE(v206) = 10;
      sub_1E676AB70();
      v97 = *v95;
      v201 = v95[1];
      v202 = v97;
      v86 = v191;
      v88 = v203;
      v87 = v204;
      sub_1E68B3A30();
      v206 = v202;
      v207 = v201;
      *&v208 = v96;
      sub_1E676ABC4();
      v89 = v193;
      sub_1E68B3AB0();
      v90 = v192;
LABEL_12:
      (*(v90 + 8))(v86, v89);
      return (*(v205 + 8))(v88, v87);
    case 0xAu:
      nullsub_5();
      v202 = *v144;
      v145 = *(v144 + 2);
      v146 = *(v144 + 24);
      v147 = *(v144 + 4);
      v148 = *(v144 + 5);
      LOBYTE(v206) = 11;
      sub_1E676AAC8();
      v149 = v194;
      v58 = v203;
      v57 = v204;
      sub_1E68B3A30();
      v206 = v202;
      *&v207 = v145;
      BYTE8(v207) = v146;
      *&v208 = v147;
      *(&v208 + 1) = v148;
      sub_1E676AB1C();
      v150 = v197;
      sub_1E68B3AB0();
      (*(v195 + 8))(v149, v150);
      goto LABEL_19;
    case 0xBu:
      nullsub_5();
      v72 = v71;
      LOBYTE(v206) = 12;
      sub_1E676AA20();
      v73 = v200;
      v75 = v203;
      v74 = v204;
      sub_1E68B3A30();
      v76 = *v72;
      v77 = v72[1];
      v78 = v72[3];
      v208 = v72[2];
      v209 = v78;
      v206 = v76;
      v207 = v77;
      v79 = v72[4];
      v80 = v72[5];
      v81 = v72[7];
      v212 = v72[6];
      v213 = v81;
      v210 = v79;
      v211 = v80;
      sub_1E676AA74();
      v82 = v202;
      sub_1E68B3AB0();
      v83 = v201;
LABEL_16:
      (*(v83 + 8))(v73, v82);
      v129 = *(v205 + 8);
      v130 = v75;
LABEL_17:
      v143 = v74;
      return v129(v130, v143);
    case 0xCu:
      LOBYTE(v206) = 3;
      sub_1E676AFB4();
      v91 = v165;
      v92 = v203;
      v93 = v204;
      sub_1E68B3A30();
      (*(v168 + 8))(v91, v171);
      goto LABEL_14;
    case 0xDu:
      LOBYTE(v206) = 13;
      sub_1E676A9CC();
      v135 = v196;
      v92 = v203;
      v93 = v204;
      sub_1E68B3A30();
      (*(v198 + 8))(v135, v199);
LABEL_14:
      result = (*(v205 + 8))(v92, v93);
      break;
    default:
      nullsub_5();
      v56 = v55;
      LOBYTE(v206) = 0;
      sub_1E676B158();
      v58 = v203;
      v57 = v204;
      sub_1E68B3A30();
      v59 = *v56;
      v60 = v56[1];
      v61 = v56[3];
      v208 = v56[2];
      v209 = v61;
      v206 = v59;
      v207 = v60;
      v62 = v56[4];
      v63 = v56[5];
      v64 = v56[7];
      v212 = v56[6];
      v213 = v64;
      v210 = v62;
      v211 = v63;
      v65 = v56[8];
      v66 = v56[9];
      v67 = v56[11];
      v216 = v56[10];
      v217 = v67;
      v214 = v65;
      v215 = v66;
      v68 = v56[12];
      v69 = v56[13];
      v70 = v56[14];
      v221 = *(v56 + 30);
      v219 = v69;
      v220 = v70;
      v218 = v68;
      sub_1E676B1AC();
      sub_1E68B3AB0();
      (*(v164 + 8))(v42, v39);
LABEL_19:
      result = (*(v205 + 8))(v58, v57);
      break;
  }

  return result;
}

unint64_t sub_1E676A978()
{
  result = qword_1ED097340;
  if (!qword_1ED097340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097340);
  }

  return result;
}

unint64_t sub_1E676A9CC()
{
  result = qword_1ED097348;
  if (!qword_1ED097348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097348);
  }

  return result;
}

unint64_t sub_1E676AA20()
{
  result = qword_1ED097350;
  if (!qword_1ED097350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097350);
  }

  return result;
}

unint64_t sub_1E676AA74()
{
  result = qword_1ED097358;
  if (!qword_1ED097358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097358);
  }

  return result;
}

unint64_t sub_1E676AAC8()
{
  result = qword_1ED097360;
  if (!qword_1ED097360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097360);
  }

  return result;
}

unint64_t sub_1E676AB1C()
{
  result = qword_1EE2EB700;
  if (!qword_1EE2EB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB700);
  }

  return result;
}

unint64_t sub_1E676AB70()
{
  result = qword_1ED097368;
  if (!qword_1ED097368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097368);
  }

  return result;
}

unint64_t sub_1E676ABC4()
{
  result = qword_1ED097370;
  if (!qword_1ED097370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097370);
  }

  return result;
}

unint64_t sub_1E676AC18()
{
  result = qword_1ED097378;
  if (!qword_1ED097378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097378);
  }

  return result;
}

unint64_t sub_1E676AC6C()
{
  result = qword_1EE2EAB78;
  if (!qword_1EE2EAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB78);
  }

  return result;
}

unint64_t sub_1E676ACC0()
{
  result = qword_1ED097380;
  if (!qword_1ED097380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097380);
  }

  return result;
}

unint64_t sub_1E676AD14()
{
  result = qword_1ED097388;
  if (!qword_1ED097388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097388);
  }

  return result;
}

unint64_t sub_1E676AD68()
{
  result = qword_1ED097390;
  if (!qword_1ED097390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097390);
  }

  return result;
}

unint64_t sub_1E676ADBC()
{
  result = qword_1ED097398;
  if (!qword_1ED097398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097398);
  }

  return result;
}

unint64_t sub_1E676AE10()
{
  result = qword_1ED0973A0;
  if (!qword_1ED0973A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973A0);
  }

  return result;
}

unint64_t sub_1E676AE64()
{
  result = qword_1ED0973A8;
  if (!qword_1ED0973A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973A8);
  }

  return result;
}

unint64_t sub_1E676AEB8()
{
  result = qword_1ED0973B0;
  if (!qword_1ED0973B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973B0);
  }

  return result;
}

unint64_t sub_1E676AF0C()
{
  result = qword_1ED0973B8;
  if (!qword_1ED0973B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973B8);
  }

  return result;
}

unint64_t sub_1E676AF60()
{
  result = qword_1ED0973C0;
  if (!qword_1ED0973C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973C0);
  }

  return result;
}

unint64_t sub_1E676AFB4()
{
  result = qword_1ED0973C8;
  if (!qword_1ED0973C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973C8);
  }

  return result;
}

unint64_t sub_1E676B008()
{
  result = qword_1ED0973D0;
  if (!qword_1ED0973D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973D0);
  }

  return result;
}

unint64_t sub_1E676B05C()
{
  result = qword_1ED0973D8;
  if (!qword_1ED0973D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973D8);
  }

  return result;
}

unint64_t sub_1E676B0B0()
{
  result = qword_1ED0973E0;
  if (!qword_1ED0973E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973E0);
  }

  return result;
}

unint64_t sub_1E676B104()
{
  result = qword_1ED0973E8;
  if (!qword_1ED0973E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973E8);
  }

  return result;
}

unint64_t sub_1E676B158()
{
  result = qword_1ED0973F0;
  if (!qword_1ED0973F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973F0);
  }

  return result;
}

unint64_t sub_1E676B1AC()
{
  result = qword_1EE2EB360;
  if (!qword_1EE2EB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB360);
  }

  return result;
}

uint64_t LazyCanvasItemContent.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v176 = a2;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0973F8, &qword_1E68B54D8);
  v177 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181, v3);
  v174 = v136 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097400, &qword_1E68B54E0);
  v163 = *(v5 - 8);
  v164 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v175 = v136 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097408, &qword_1E68B54E8);
  v161 = *(v8 - 8);
  v162 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v173 = v136 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097410, &qword_1E68B54F0);
  v159 = *(v11 - 8);
  v160 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v172 = v136 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097418, &qword_1E68B54F8);
  v157 = *(v14 - 8);
  v158 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v171 = v136 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097420, &qword_1E68B5500);
  v155 = *(v17 - 8);
  v156 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v170 = v136 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097428, &qword_1E68B5508);
  v153 = *(v20 - 8);
  v154 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v169 = v136 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097430, &qword_1E68B5510);
  v151 = *(v23 - 8);
  v152 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v180 = v136 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097438, &qword_1E68B5518);
  v149 = *(v26 - 8);
  v150 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v167 = v136 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097440, &qword_1E68B5520);
  v147 = *(v29 - 8);
  v148 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v168 = v136 - v31;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097448, &qword_1E68B5528);
  v145 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179, v32);
  v165 = v136 - v33;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097450, &qword_1E68B5530);
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v34);
  v166 = v136 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097458, &qword_1E68B5538);
  v142 = *(v36 - 8);
  v143 = v36;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = v136 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097460, &qword_1E68B5540);
  v141 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = v136 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097468, &unk_1E68B5548);
  v178 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = v136 - v46;
  v48 = a1[3];
  v182 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_1E676A978();
  v49 = v227;
  sub_1E68B3BC0();
  if (v49)
  {
    goto LABEL_7;
  }

  v137 = v40;
  v138 = v43;
  v139 = v39;
  v50 = v179;
  v51 = v180;
  v52 = v181;
  v227 = v44;
  v140 = v47;
  v53 = sub_1E68B3A10();
  if (*(v53 + 16) != 1 || (v54 = *(v53 + 32), v54 == 14))
  {
    v62 = sub_1E68B3870();
    swift_allocError();
    v64 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050, &qword_1E68B4D20);
    *v64 = &type metadata for LazyCanvasItemContent;
    v65 = v227;
    v66 = v140;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69E6AF8], v62);
    swift_willThrow();
    (*(v178 + 8))(v66, v65);
    swift_unknownObjectRelease();
LABEL_7:
    v127 = v182;
    return __swift_destroy_boxed_opaque_existential_1(v127);
  }

  v136[1] = v53;
  v55 = v52;
  v56 = v177;
  switch(v54)
  {
    case 1:
      LOBYTE(v198[0]) = 1;
      sub_1E676B0B0();
      v99 = v139;
      sub_1E68B3970();
      sub_1E676CE74();
      v122 = v143;
      sub_1E68B3A00();
      v123 = (v178 + 8);
      (*(v142 + 8))(v99, v122);
      (*v123)(v140, v227);
      swift_unknownObjectRelease();
      v207 = v192;
      v208 = v193;
      v209 = v194;
      v210 = v195;
      v203 = v188;
      v204 = v189;
      v205 = v190;
      v206 = v191;
      v199 = v184;
      v200 = v185;
      v201 = v186;
      v202 = v187;
      v198[0] = v183[0];
      v198[1] = v183[1];
      sub_1E6744AF8(v198);
      v224 = v209;
      v225 = v210;
      v226[0] = v211[0];
      *(v226 + 9) = *(v211 + 9);
      v221 = v206;
      v222 = v207;
      v223 = v208;
      v216 = v201;
      v217 = v202;
      v218 = v203;
      v219 = v204;
      v220 = v205;
      v212 = v198[0];
      v213 = v198[1];
      v214 = v199;
      v215 = v200;
      v127 = v182;
      break;
    case 2:
      LOBYTE(v198[0]) = 2;
      sub_1E676B008();
      v86 = v166;
      v87 = v227;
      v88 = v140;
      sub_1E68B3970();
      sub_1E676CE20();
      v89 = v146;
      sub_1E68B3A00();
      v90 = (v178 + 8);
      (*(v144 + 8))(v86, v89);
      (*v90)(v88, v87);
      swift_unknownObjectRelease();
      v198[0] = v183[0];
      v198[1] = v183[1];
      v199 = v184;
      v200 = v185;
      sub_1E6744AEC(v198);
      goto LABEL_24;
    case 3:
      LOBYTE(v198[0]) = 3;
      sub_1E676AFB4();
      v91 = v165;
      v92 = v227;
      v93 = v140;
      sub_1E68B3970();
      (*(v145 + 8))(v91, v50);
      (*(v178 + 8))(v93, v92);
      swift_unknownObjectRelease();
      sub_1E6744AB8(&v212);
      goto LABEL_22;
    case 4:
      LOBYTE(v198[0]) = 4;
      sub_1E676AF60();
      v73 = v168;
      v74 = v227;
      v75 = v140;
      sub_1E68B3970();
      sub_1E676CD78();
      v76 = v148;
      sub_1E68B3A00();
      v77 = (v178 + 8);
      (*(v147 + 8))(v73, v76);
      (*v77)(v75, v74);
      swift_unknownObjectRelease();
      v198[0] = v183[0];
      sub_1E6744AAC(v198);
      goto LABEL_24;
    case 5:
      LOBYTE(v198[0]) = 5;
      sub_1E676AEB8();
      v100 = v167;
      v101 = v227;
      v102 = v140;
      sub_1E68B3970();
      sub_1E676CDCC();
      v103 = v150;
      sub_1E68B3A00();
      v104 = (v178 + 8);
      (*(v149 + 8))(v100, v103);
      (*v104)(v102, v101);
      swift_unknownObjectRelease();
      v198[0] = v183[0];
      *&v198[1] = *&v183[1];
      sub_1E6744AA0(v198);
      goto LABEL_24;
    case 6:
      LOBYTE(v198[0]) = 6;
      sub_1E676AE10();
      v108 = v227;
      v109 = v140;
      sub_1E68B3970();
      sub_1E676CD78();
      v110 = v152;
      sub_1E68B3A00();
      v111 = (v178 + 8);
      (*(v151 + 8))(v51, v110);
      (*v111)(v109, v108);
      swift_unknownObjectRelease();
      v198[0] = v183[0];
      sub_1E6744A94(v198);
      goto LABEL_24;
    case 7:
      LOBYTE(v198[0]) = 7;
      sub_1E676AD68();
      v94 = v169;
      v95 = v227;
      v96 = v140;
      sub_1E68B3970();
      sub_1E676CD24();
      v97 = v154;
      sub_1E68B3A00();
      v98 = (v178 + 8);
      (*(v153 + 8))(v94, v97);
      (*v98)(v96, v95);
      swift_unknownObjectRelease();
      v201 = v186;
      v202 = v187;
      *&v203 = v188;
      v198[0] = v183[0];
      v198[1] = v183[1];
      v199 = v184;
      v200 = v185;
      sub_1E6744A88(v198);
      goto LABEL_24;
    case 8:
      LOBYTE(v198[0]) = 8;
      sub_1E676ACC0();
      v117 = v170;
      v118 = v227;
      v119 = v140;
      sub_1E68B3970();
      sub_1E676CCD0();
      v124 = v156;
      sub_1E68B3A00();
      v125 = (v178 + 8);
      (*(v155 + 8))(v117, v124);
      (*v125)(v119, v118);
      swift_unknownObjectRelease();
      v203 = v188;
      v204 = v189;
      v205 = v190;
      v206 = v191;
      v199 = v184;
      v200 = v185;
      v201 = v186;
      v202 = v187;
      v198[0] = v183[0];
      v198[1] = v183[1];
      sub_1E6744A7C(v198);
      goto LABEL_24;
    case 9:
      LOBYTE(v198[0]) = 9;
      sub_1E676AC18();
      v83 = v171;
      v84 = v227;
      v85 = v140;
      sub_1E68B3970();
      sub_1E676CC7C();
      v120 = v158;
      sub_1E68B3A00();
      v121 = (v178 + 8);
      (*(v157 + 8))(v83, v120);
      (*v121)(v85, v84);
      swift_unknownObjectRelease();
      LOBYTE(v198[0]) = v183[0];
      *(v198 + 8) = *(v183 + 8);
      *(&v198[1] + 1) = *(&v183[1] + 1);
      LOBYTE(v199) = v184;
      *(&v199 + 1) = *(&v184 + 1);
      *&v200 = v185;
      sub_1E6744A70(v198);
      v224 = v209;
      v225 = v210;
      v226[0] = v211[0];
      v126 = *(v211 + 9);
      goto LABEL_23;
    case 10:
      LOBYTE(v198[0]) = 10;
      sub_1E676AB70();
      v112 = v172;
      v113 = v227;
      v114 = v140;
      sub_1E68B3970();
      sub_1E676CC28();
      v115 = v160;
      sub_1E68B3A00();
      v116 = (v178 + 8);
      (*(v159 + 8))(v112, v115);
      (*v116)(v114, v113);
      swift_unknownObjectRelease();
      v198[0] = v183[0];
      v198[1] = v183[1];
      *&v199 = v184;
      sub_1E6744A04(v198);
      goto LABEL_24;
    case 11:
      LOBYTE(v198[0]) = 11;
      sub_1E676AAC8();
      v68 = v173;
      v69 = v227;
      v70 = v140;
      sub_1E68B3970();
      sub_1E676CBD4();
      v71 = v162;
      sub_1E68B3A00();
      v72 = (v178 + 8);
      (*(v161 + 8))(v68, v71);
      (*v72)(v70, v69);
      swift_unknownObjectRelease();
      v198[0] = v183[0];
      *&v198[1] = *&v183[1];
      BYTE8(v198[1]) = BYTE8(v183[1]);
      v199 = v184;
      sub_1E67449F8(v198);
LABEL_24:
      v224 = v209;
      v225 = v210;
      v226[0] = v211[0];
      *(v226 + 9) = *(v211 + 9);
      v221 = v206;
      v222 = v207;
      v223 = v208;
      v216 = v201;
      v217 = v202;
      v218 = v203;
      v219 = v204;
      v220 = v205;
      v212 = v198[0];
      v213 = v198[1];
      v214 = v199;
      v215 = v200;
      v127 = v182;
      break;
    case 12:
      LOBYTE(v198[0]) = 12;
      sub_1E676AA20();
      v78 = v175;
      v79 = v227;
      v80 = v140;
      sub_1E68B3970();
      sub_1E676CB80();
      v81 = v164;
      sub_1E68B3A00();
      v82 = (v178 + 8);
      (*(v163 + 8))(v78, v81);
      (*v82)(v80, v79);
      swift_unknownObjectRelease();
      v201 = v186;
      v202 = v187;
      v203 = v188;
      v204 = v189;
      v198[0] = v183[0];
      v198[1] = v183[1];
      v199 = v184;
      v200 = v185;
      sub_1E67449EC(v198);
      v224 = v209;
      v225 = v210;
      v226[0] = v211[0];
      v126 = *(v211 + 9);
LABEL_23:
      *(v226 + 9) = v126;
      v221 = v206;
      v222 = v207;
      v223 = v208;
      v216 = v201;
      v217 = v202;
      v218 = v203;
      v219 = v204;
      v220 = v205;
      v212 = v198[0];
      v213 = v198[1];
      v214 = v199;
      v215 = v200;
      v127 = v182;
      break;
    case 13:
      LOBYTE(v198[0]) = 13;
      sub_1E676A9CC();
      v105 = v174;
      v106 = v227;
      v107 = v140;
      sub_1E68B3970();
      (*(v56 + 8))(v105, v55);
      (*(v178 + 8))(v107, v106);
      swift_unknownObjectRelease();
      sub_1E6744998(&v212);
LABEL_22:
      v127 = v182;
      break;
    default:
      LOBYTE(v198[0]) = 0;
      sub_1E676B158();
      v57 = v138;
      v58 = v227;
      v59 = v140;
      sub_1E68B3970();
      sub_1E676CEC8();
      v60 = v137;
      sub_1E68B3A00();
      v61 = v178;
      (*(v141 + 8))(v57, v60);
      (*(v61 + 8))(v59, v58);
      swift_unknownObjectRelease();
      v209 = v194;
      v210 = v195;
      v211[0] = v196;
      *&v211[1] = v197;
      v205 = v190;
      v206 = v191;
      v207 = v192;
      v208 = v193;
      v201 = v186;
      v202 = v187;
      v203 = v188;
      v204 = v189;
      v198[0] = v183[0];
      v198[1] = v183[1];
      v199 = v184;
      v200 = v185;
      sub_1E6744B38(v198);
      v224 = v209;
      v225 = v210;
      v226[0] = v211[0];
      *(v226 + 9) = *(v211 + 9);
      v221 = v206;
      v222 = v207;
      v223 = v208;
      v216 = v201;
      v217 = v202;
      v218 = v203;
      v219 = v204;
      v220 = v205;
      v212 = v198[0];
      v213 = v198[1];
      v214 = v199;
      v215 = v200;
      v127 = v182;
      break;
  }

  v128 = v225;
  v129 = v176;
  v176[12] = v224;
  v129[13] = v128;
  v129[14] = v226[0];
  *(v129 + 233) = *(v226 + 9);
  v130 = v221;
  v129[8] = v220;
  v129[9] = v130;
  v131 = v223;
  v129[10] = v222;
  v129[11] = v131;
  v132 = v217;
  v129[4] = v216;
  v129[5] = v132;
  v133 = v219;
  v129[6] = v218;
  v129[7] = v133;
  v134 = v213;
  *v129 = v212;
  v129[1] = v134;
  v135 = v215;
  v129[2] = v214;
  v129[3] = v135;
  return __swift_destroy_boxed_opaque_existential_1(v127);
}

unint64_t sub_1E676CB80()
{
  result = qword_1ED097470;
  if (!qword_1ED097470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097470);
  }

  return result;
}

unint64_t sub_1E676CBD4()
{
  result = qword_1ED097478;
  if (!qword_1ED097478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097478);
  }

  return result;
}

unint64_t sub_1E676CC28()
{
  result = qword_1ED097480;
  if (!qword_1ED097480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097480);
  }

  return result;
}

unint64_t sub_1E676CC7C()
{
  result = qword_1ED097488;
  if (!qword_1ED097488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097488);
  }

  return result;
}

unint64_t sub_1E676CCD0()
{
  result = qword_1ED097490;
  if (!qword_1ED097490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097490);
  }

  return result;
}

unint64_t sub_1E676CD24()
{
  result = qword_1ED097498;
  if (!qword_1ED097498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097498);
  }

  return result;
}

unint64_t sub_1E676CD78()
{
  result = qword_1ED0974A0;
  if (!qword_1ED0974A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974A0);
  }

  return result;
}

unint64_t sub_1E676CDCC()
{
  result = qword_1ED0974A8;
  if (!qword_1ED0974A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974A8);
  }

  return result;
}

unint64_t sub_1E676CE20()
{
  result = qword_1ED0974B0;
  if (!qword_1ED0974B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974B0);
  }

  return result;
}

unint64_t sub_1E676CE74()
{
  result = qword_1ED0974B8;
  if (!qword_1ED0974B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974B8);
  }

  return result;
}

unint64_t sub_1E676CEC8()
{
  result = qword_1ED0974C0;
  if (!qword_1ED0974C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974C0);
  }

  return result;
}

uint64_t LazyCanvasItemContent.hash(into:)(uint64_t a1)
{
  v2 = v1[13];
  v22[12] = v1[12];
  v22[13] = v2;
  v23[0] = v1[14];
  *(v23 + 9) = *(v1 + 233);
  v3 = v1[9];
  v22[8] = v1[8];
  v22[9] = v3;
  v4 = v1[11];
  v22[10] = v1[10];
  v22[11] = v4;
  v5 = v1[5];
  v22[4] = v1[4];
  v22[5] = v5;
  v6 = v1[7];
  v22[6] = v1[6];
  v22[7] = v6;
  v7 = v1[1];
  v22[0] = *v1;
  v22[1] = v7;
  v8 = v1[3];
  v22[2] = v1[2];
  v22[3] = v8;
  switch(sub_1E67424C4(v22))
  {
    case 1u:
      nullsub_5();
      MEMORY[0x1E69523D0](1);
      return FullWidthStageViewLayout.hash(into:)();
    case 2u:
      nullsub_5();
      MEMORY[0x1E69523D0](2);
      return InfoActionCardViewLayout.hash(into:)();
    case 3u:
      nullsub_5();
      v17 = *v16;
      v18 = v16[1];
      v19 = 4;
      goto LABEL_14;
    case 4u:
      nullsub_5();
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      MEMORY[0x1E69523D0](5);
      sub_1E673E7F4(v11, v12);
      v14 = 0.0;
      if (v13 != 0.0)
      {
        v14 = v13;
      }

      return MEMORY[0x1E69523F0](*&v14);
    case 5u:
      nullsub_5();
      v17 = *v20;
      v18 = v20[1];
      v19 = 6;
LABEL_14:
      MEMORY[0x1E69523D0](v19);
      if (v17 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v17;
      }

      MEMORY[0x1E69523F0](*&v21);
      if (v18 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v18;
      }

      return MEMORY[0x1E69523F0](*&v14);
    case 6u:
      nullsub_5();
      MEMORY[0x1E69523D0](7);
      return StandardCardViewLayout.hash(into:)();
    case 7u:
      nullsub_5();
      MEMORY[0x1E69523D0](8);
      return StandardHorizontalStackViewLayout.hash(into:)();
    case 8u:
      nullsub_5();
      MEMORY[0x1E69523D0](9);
      return StandardVerticalStackViewLayout.hash(into:)();
    case 9u:
      nullsub_5();
      MEMORY[0x1E69523D0](10);
      return SummaryCardViewLayout.hash(into:)();
    case 0xAu:
      nullsub_5();
      MEMORY[0x1E69523D0](11);
      return TallCardViewLayout.hash(into:)();
    case 0xBu:
      nullsub_5();
      MEMORY[0x1E69523D0](12);
      return VerticalStackCardLayout.hash(into:)();
    case 0xCu:
      v15 = 3;
      goto LABEL_22;
    case 0xDu:
      v15 = 13;
LABEL_22:
      result = MEMORY[0x1E69523D0](v15);
      break;
    default:
      nullsub_5();
      MEMORY[0x1E69523D0](0);
      result = ActionCardViewLayout.hash(into:)();
      break;
  }

  return result;
}

uint64_t LazyCanvasItemContent.hashValue.getter()
{
  sub_1E68B3B70();
  LazyCanvasItemContent.hash(into:)(v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E676D3C8()
{
  sub_1E68B3B70();
  LazyCanvasItemContent.hash(into:)(v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E676D40C(uint64_t a1)
{
  sub_1E68B3B70();
  LazyCanvasItemContent.hash(into:)(v2);
  return sub_1E68B3BB0();
}

uint64_t _s15FitnessCanvasUI04LazyB11ItemContentO2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[13];
  v273[12] = a1[12];
  v273[13] = v3;
  v274[0] = a1[14];
  *(v274 + 9) = *(a1 + 233);
  v4 = a1[9];
  v273[8] = a1[8];
  v273[9] = v4;
  v5 = a1[11];
  v273[10] = a1[10];
  v273[11] = v5;
  v6 = a1[5];
  v273[4] = a1[4];
  v273[5] = v6;
  v7 = a1[7];
  v273[6] = a1[6];
  v273[7] = v7;
  v8 = a1[1];
  v273[0] = *a1;
  v273[1] = v8;
  v9 = a1[3];
  v273[2] = a1[2];
  v273[3] = v9;
  switch(sub_1E67424C4(v273))
  {
    case 1u:
      nullsub_5();
      v129 = v128;
      v130 = a2[13];
      v270 = a2[12];
      v271 = v130;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v131 = a2[9];
      v266 = a2[8];
      v267 = v131;
      v132 = a2[11];
      v268 = a2[10];
      v269 = v132;
      v133 = a2[5];
      v262 = a2[4];
      v263 = v133;
      v134 = a2[7];
      v264 = a2[6];
      v265 = v134;
      v135 = a2[1];
      v258 = *a2;
      v259 = v135;
      v136 = a2[3];
      v260 = a2[2];
      v261 = v136;
      if (sub_1E67424C4(&v258) != 1)
      {
        goto LABEL_37;
      }

      nullsub_5();
      v137 = *(v129 + 176);
      v252 = *(v129 + 160);
      v253 = v137;
      v138 = *(v129 + 208);
      v254 = *(v129 + 192);
      v255 = v138;
      v139 = *(v129 + 112);
      v248 = *(v129 + 96);
      v249 = v139;
      v140 = *(v129 + 144);
      v250 = *(v129 + 128);
      v251 = v140;
      v141 = *(v129 + 48);
      v244 = *(v129 + 32);
      v245 = v141;
      v142 = *(v129 + 80);
      v246 = *(v129 + 64);
      v247 = v142;
      v143 = *(v129 + 16);
      v242 = *v129;
      v243 = v143;
      v145 = v144[11];
      v236 = v144[10];
      v237 = v145;
      v146 = v144[13];
      v238 = v144[12];
      v239 = v146;
      v147 = v144[7];
      v232 = v144[6];
      v233 = v147;
      v148 = v144[9];
      v234 = v144[8];
      v235 = v148;
      v149 = v144[3];
      v228 = v144[2];
      v229 = v149;
      v150 = v144[5];
      v230 = v144[4];
      v231 = v150;
      v151 = v144[1];
      *v227 = *v144;
      *&v227[16] = v151;
      v34 = _s15FitnessCanvasUI24FullWidthStageViewLayoutV2eeoiySbAC_ACtFZ_0(&v242, v227);
      return v34 & 1;
    case 2u:
      nullsub_5();
      v85 = v84;
      v86 = a2[13];
      v270 = a2[12];
      v271 = v86;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v87 = a2[9];
      v266 = a2[8];
      v267 = v87;
      v88 = a2[11];
      v268 = a2[10];
      v269 = v88;
      v89 = a2[5];
      v262 = a2[4];
      v263 = v89;
      v90 = a2[7];
      v264 = a2[6];
      v265 = v90;
      v91 = a2[1];
      v258 = *a2;
      v259 = v91;
      v92 = a2[3];
      v260 = a2[2];
      v261 = v92;
      if (sub_1E67424C4(&v258) != 2)
      {
        goto LABEL_37;
      }

      nullsub_5();
      v93 = *(v85 + 16);
      v242 = *v85;
      v243 = v93;
      v94 = *(v85 + 48);
      v244 = *(v85 + 32);
      v245 = v94;
      v96 = v95[1];
      *v227 = *v95;
      *&v227[16] = v96;
      v97 = v95[3];
      v228 = v95[2];
      v229 = v97;
      v34 = _s15FitnessCanvasUI24InfoActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v242, v227);
      return v34 & 1;
    case 3u:
      nullsub_5();
      v100 = *v98;
      v99 = v98[1];
      v101 = a2[13];
      v270 = a2[12];
      v271 = v101;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v102 = a2[9];
      v266 = a2[8];
      v267 = v102;
      v103 = a2[11];
      v268 = a2[10];
      v269 = v103;
      v104 = a2[5];
      v262 = a2[4];
      v263 = v104;
      v105 = a2[7];
      v264 = a2[6];
      v265 = v105;
      v106 = a2[1];
      v258 = *a2;
      v259 = v106;
      v107 = a2[3];
      v260 = a2[2];
      v261 = v107;
      if (sub_1E67424C4(&v258) != 3)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    case 4u:
      nullsub_5();
      v55 = *v53;
      v54 = v53[1];
      v56 = v53[2];
      v57 = a2[13];
      v270 = a2[12];
      v271 = v57;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v58 = a2[9];
      v266 = a2[8];
      v267 = v58;
      v59 = a2[11];
      v268 = a2[10];
      v269 = v59;
      v60 = a2[5];
      v262 = a2[4];
      v263 = v60;
      v61 = a2[7];
      v264 = a2[6];
      v265 = v61;
      v62 = a2[1];
      v258 = *a2;
      v259 = v62;
      v63 = a2[3];
      v260 = a2[2];
      v261 = v63;
      if (sub_1E67424C4(&v258) != 4)
      {
        goto LABEL_37;
      }

      nullsub_5();
      v65 = v55 == *v64;
      if (v54 != v64[1])
      {
        v65 = 0;
      }

      v34 = v56 == v64[2] && v65;
      break;
    case 5u:
      nullsub_5();
      v100 = *v152;
      v99 = v152[1];
      v153 = a2[13];
      v270 = a2[12];
      v271 = v153;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v154 = a2[9];
      v266 = a2[8];
      v267 = v154;
      v155 = a2[11];
      v268 = a2[10];
      v269 = v155;
      v156 = a2[5];
      v262 = a2[4];
      v263 = v156;
      v157 = a2[7];
      v264 = a2[6];
      v265 = v157;
      v158 = a2[1];
      v258 = *a2;
      v259 = v158;
      v159 = a2[3];
      v260 = a2[2];
      v261 = v159;
      if (sub_1E67424C4(&v258) != 5)
      {
        goto LABEL_37;
      }

LABEL_24:
      nullsub_5();
      v34 = v99 == v160[1] && v100 == *v160;
      break;
    case 6u:
      nullsub_5();
      v169 = v168;
      v170 = a2[13];
      v270 = a2[12];
      v271 = v170;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v171 = a2[9];
      v266 = a2[8];
      v267 = v171;
      v172 = a2[11];
      v268 = a2[10];
      v269 = v172;
      v173 = a2[5];
      v262 = a2[4];
      v263 = v173;
      v174 = a2[7];
      v264 = a2[6];
      v265 = v174;
      v175 = a2[1];
      v258 = *a2;
      v259 = v175;
      v176 = a2[3];
      v260 = a2[2];
      v261 = v176;
      if (sub_1E67424C4(&v258) != 6)
      {
        goto LABEL_37;
      }

      nullsub_5();
      v177 = *(v169 + 80);
      v246 = *(v169 + 64);
      v247 = v177;
      *&v248 = *(v169 + 96);
      v178 = *(v169 + 16);
      v242 = *v169;
      v243 = v178;
      v179 = *(v169 + 48);
      v244 = *(v169 + 32);
      v245 = v179;
      v181 = *(v180 + 80);
      v230 = *(v180 + 64);
      v231 = v181;
      *&v232 = *(v180 + 96);
      v182 = *(v180 + 16);
      *v227 = *v180;
      *&v227[16] = v182;
      v183 = *(v180 + 48);
      v228 = *(v180 + 32);
      v229 = v183;
      v34 = _s15FitnessCanvasUI22StandardCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v242, v227);
      break;
    case 7u:
      nullsub_5();
      v109 = v108;
      v110 = a2[13];
      v270 = a2[12];
      v271 = v110;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v111 = a2[9];
      v266 = a2[8];
      v267 = v111;
      v112 = a2[11];
      v268 = a2[10];
      v269 = v112;
      v113 = a2[5];
      v262 = a2[4];
      v263 = v113;
      v114 = a2[7];
      v264 = a2[6];
      v265 = v114;
      v115 = a2[1];
      v258 = *a2;
      v259 = v115;
      v116 = a2[3];
      v260 = a2[2];
      v261 = v116;
      if (sub_1E67424C4(&v258) != 7)
      {
        goto LABEL_37;
      }

      nullsub_5();
      v117 = *(v109 + 112);
      v248 = *(v109 + 96);
      v249 = v117;
      v118 = *(v109 + 144);
      v250 = *(v109 + 128);
      v251 = v118;
      v119 = *(v109 + 48);
      v244 = *(v109 + 32);
      v245 = v119;
      v120 = *(v109 + 80);
      v246 = *(v109 + 64);
      v247 = v120;
      v121 = *(v109 + 16);
      v242 = *v109;
      v243 = v121;
      v123 = v122[7];
      v232 = v122[6];
      v233 = v123;
      v124 = v122[9];
      v234 = v122[8];
      v235 = v124;
      v125 = v122[3];
      v228 = v122[2];
      v229 = v125;
      v126 = v122[5];
      v230 = v122[4];
      v231 = v126;
      v127 = v122[1];
      *v227 = *v122;
      *&v227[16] = v127;
      v34 = _s15FitnessCanvasUI33StandardHorizontalStackViewLayoutV2eeoiySbAC_ACtFZ_0(&v242, v227);
      break;
    case 8u:
      nullsub_5();
      v204 = *v203;
      v205 = v203[1];
      v206 = *(v203 + 2);
      v207 = *(v203 + 3);
      v208 = *(v203 + 32);
      v209 = *(v203 + 5);
      v210 = *(v203 + 6);
      v211 = a2[13];
      v270 = a2[12];
      v271 = v211;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v212 = a2[9];
      v266 = a2[8];
      v267 = v212;
      v213 = a2[11];
      v268 = a2[10];
      v269 = v213;
      v214 = a2[5];
      v262 = a2[4];
      v263 = v214;
      v215 = a2[7];
      v264 = a2[6];
      v265 = v215;
      v216 = a2[3];
      v260 = a2[2];
      v261 = v216;
      v217 = a2[1];
      v258 = *a2;
      v259 = v217;
      if (sub_1E67424C4(&v258) != 8)
      {
        goto LABEL_37;
      }

      nullsub_5();
      v219 = *v218;
      v220 = *(v218 + 3);
      v221 = v218[32];
      v222 = *(v218 + 5);
      v223 = *(v218 + 6);
      LOBYTE(v242.f64[0]) = v204;
      v242.f64[1] = v205;
      *&v243 = v206;
      *(&v243 + 1) = v207;
      LOBYTE(v244) = v208;
      *(&v244 + 1) = v209;
      *&v245 = v210;
      v227[0] = v219;
      *&v227[8] = *(v218 + 8);
      *&v227[24] = v220;
      LOBYTE(v228) = v221;
      *(&v228 + 1) = v222;
      *&v229 = v223;
      v34 = _s15FitnessCanvasUI31StandardVerticalStackViewLayoutV2eeoiySbAC_ACtFZ_0(v242.f64, v227);
      break;
    case 9u:
      nullsub_5();
      v225 = v74[1];
      v226 = *v74;
      v75 = v74[2].f64[0];
      v76 = a2[3];
      v260 = a2[2];
      v261 = v76;
      v77 = a2[1];
      v258 = *a2;
      v259 = v77;
      v78 = a2[7];
      v264 = a2[6];
      v265 = v78;
      v79 = a2[5];
      v262 = a2[4];
      v263 = v79;
      v80 = a2[11];
      v268 = a2[10];
      v269 = v80;
      v81 = a2[9];
      v266 = a2[8];
      v267 = v81;
      *&v272[9] = *(a2 + 233);
      v82 = a2[14];
      v271 = a2[13];
      *v272 = v82;
      v270 = a2[12];
      if (sub_1E67424C4(&v258) != 9)
      {
        goto LABEL_37;
      }

      nullsub_5();
      v34 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v226, *v83), vceqq_f64(v225, v83[1])))) & (v75 == v83[2].f64[0]);
      break;
    case 0xAu:
      nullsub_5();
      v185 = *v184;
      v186 = *(v184 + 8);
      v187 = *(v184 + 16);
      v188 = *(v184 + 24);
      v189 = *(v184 + 32);
      v190 = *(v184 + 40);
      v191 = a2[13];
      v270 = a2[12];
      v271 = v191;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v192 = a2[9];
      v266 = a2[8];
      v267 = v192;
      v193 = a2[11];
      v268 = a2[10];
      v269 = v193;
      v194 = a2[5];
      v262 = a2[4];
      v263 = v194;
      v195 = a2[7];
      v264 = a2[6];
      v265 = v195;
      v196 = a2[3];
      v260 = a2[2];
      v261 = v196;
      v197 = a2[1];
      v258 = *a2;
      v259 = v197;
      if (sub_1E67424C4(&v258) != 10)
      {
        goto LABEL_37;
      }

      nullsub_5();
      v199 = *(v198 + 16);
      v200 = *(v198 + 24);
      v201 = *(v198 + 32);
      v202 = *(v198 + 40);
      v242.f64[0] = v185;
      v242.f64[1] = v186;
      *&v243 = v187;
      BYTE8(v243) = v188;
      *&v244 = v189;
      *(&v244 + 1) = v190;
      *v227 = *v198;
      *&v227[16] = v199;
      v227[24] = v200;
      *&v228 = v201;
      *(&v228 + 1) = v202;
      v34 = _s15FitnessCanvasUI18TallCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v242, v227);
      break;
    case 0xBu:
      nullsub_5();
      v36 = v35;
      v37 = a2[13];
      v270 = a2[12];
      v271 = v37;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v38 = a2[9];
      v266 = a2[8];
      v267 = v38;
      v39 = a2[11];
      v268 = a2[10];
      v269 = v39;
      v40 = a2[5];
      v262 = a2[4];
      v263 = v40;
      v41 = a2[7];
      v264 = a2[6];
      v265 = v41;
      v42 = a2[1];
      v258 = *a2;
      v259 = v42;
      v43 = a2[3];
      v260 = a2[2];
      v261 = v43;
      if (sub_1E67424C4(&v258) != 11)
      {
        goto LABEL_37;
      }

      nullsub_5();
      v44 = *(v36 + 80);
      v246 = *(v36 + 64);
      v247 = v44;
      v45 = *(v36 + 112);
      v248 = *(v36 + 96);
      v249 = v45;
      v46 = *(v36 + 16);
      v242 = *v36;
      v243 = v46;
      v47 = *(v36 + 48);
      v244 = *(v36 + 32);
      v245 = v47;
      v49 = v48[5];
      v230 = v48[4];
      v231 = v49;
      v50 = v48[7];
      v232 = v48[6];
      v233 = v50;
      v51 = v48[1];
      *v227 = *v48;
      *&v227[16] = v51;
      v52 = v48[3];
      v228 = v48[2];
      v229 = v52;
      v34 = _s15FitnessCanvasUI23VerticalStackCardLayoutV2eeoiySbAC_ACtFZ_0(&v242, v227);
      break;
    case 0xCu:
      v66 = a2[13];
      v270 = a2[12];
      v271 = v66;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v67 = a2[9];
      v266 = a2[8];
      v267 = v67;
      v68 = a2[11];
      v268 = a2[10];
      v269 = v68;
      v69 = a2[5];
      v262 = a2[4];
      v263 = v69;
      v70 = a2[7];
      v264 = a2[6];
      v265 = v70;
      v71 = a2[1];
      v258 = *a2;
      v259 = v71;
      v72 = a2[3];
      v260 = a2[2];
      v261 = v72;
      v73 = sub_1E67424C4(&v258) == 12;
      goto LABEL_28;
    case 0xDu:
      v161 = a2[13];
      v270 = a2[12];
      v271 = v161;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v162 = a2[9];
      v266 = a2[8];
      v267 = v162;
      v163 = a2[11];
      v268 = a2[10];
      v269 = v163;
      v164 = a2[5];
      v262 = a2[4];
      v263 = v164;
      v165 = a2[7];
      v264 = a2[6];
      v265 = v165;
      v166 = a2[1];
      v258 = *a2;
      v259 = v166;
      v167 = a2[3];
      v260 = a2[2];
      v261 = v167;
      v73 = sub_1E67424C4(&v258) == 13;
LABEL_28:
      v34 = v73;
      break;
    default:
      nullsub_5();
      v11 = v10;
      v12 = a2[13];
      v270 = a2[12];
      v271 = v12;
      *v272 = a2[14];
      *&v272[9] = *(a2 + 233);
      v13 = a2[9];
      v266 = a2[8];
      v267 = v13;
      v14 = a2[11];
      v268 = a2[10];
      v269 = v14;
      v15 = a2[5];
      v262 = a2[4];
      v263 = v15;
      v16 = a2[7];
      v264 = a2[6];
      v265 = v16;
      v17 = a2[1];
      v258 = *a2;
      v259 = v17;
      v18 = a2[3];
      v260 = a2[2];
      v261 = v18;
      if (sub_1E67424C4(&v258))
      {
LABEL_37:
        v34 = 0;
      }

      else
      {
        nullsub_5();
        v19 = *(v11 + 208);
        v254 = *(v11 + 192);
        v255 = v19;
        v256 = *(v11 + 224);
        v257 = *(v11 + 240);
        v20 = *(v11 + 144);
        v250 = *(v11 + 128);
        v251 = v20;
        v21 = *(v11 + 176);
        v252 = *(v11 + 160);
        v253 = v21;
        v22 = *(v11 + 80);
        v246 = *(v11 + 64);
        v247 = v22;
        v23 = *(v11 + 112);
        v248 = *(v11 + 96);
        v249 = v23;
        v24 = *(v11 + 16);
        v242 = *v11;
        v243 = v24;
        v25 = *(v11 + 48);
        v244 = *(v11 + 32);
        v245 = v25;
        v27 = *(v26 + 208);
        v238 = *(v26 + 192);
        v239 = v27;
        v240 = *(v26 + 224);
        v241 = *(v26 + 240);
        v28 = *(v26 + 144);
        v234 = *(v26 + 128);
        v235 = v28;
        v29 = *(v26 + 176);
        v236 = *(v26 + 160);
        v237 = v29;
        v30 = *(v26 + 80);
        v230 = *(v26 + 64);
        v231 = v30;
        v31 = *(v26 + 112);
        v232 = *(v26 + 96);
        v233 = v31;
        v32 = *(v26 + 16);
        *v227 = *v26;
        *&v227[16] = v32;
        v33 = *(v26 + 48);
        v228 = *(v26 + 32);
        v229 = v33;
        v34 = _s15FitnessCanvasUI20ActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v242, v227);
      }

      break;
  }

  return v34 & 1;
}

unint64_t sub_1E676DE80()
{
  result = qword_1ED0974C8;
  if (!qword_1ED0974C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974C8);
  }

  return result;
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}