uint64_t sub_213D67958(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    if (a2[1])
    {
      JUMPOUT(0x21604E890);
    }

    return 0;
  }

  if (a2[1])
  {
    return 0;
  }

  return sub_213D9147C();
}

BOOL sub_213D6798C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = *(a1 + 16);
      if (v4 == *(a3 + 16))
      {
        v5 = (a1 + 32);
        v6 = (a3 + 32);
        do
        {
          result = v4 == 0;
          if (!v4)
          {
            break;
          }

          v8 = *v5++;
          v9 = v8;
          v10 = *v6++;
          *&v9.f64[0] = vmovn_s64(vceqq_f64(v9, v10));
          --v4;
        }

        while ((LODWORD(v9.f64[0]) & HIDWORD(v9.f64[0]) & 1) != 0);
        return result;
      }
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  v11 = *(a1 + 16);
  if (v11 != *(a3 + 16))
  {
    return 0;
  }

  v12 = (a1 + 32);
  v13 = (a3 + 32);
  do
  {
    result = v11 == 0;
    if (!v11)
    {
      break;
    }

    v14 = *v12++;
    v15 = v14;
    v16 = *v13++;
    *&v15.f64[0] = vmovn_s64(vceqq_f64(v15, v16));
    --v11;
  }

  while ((LODWORD(v15.f64[0]) & HIDWORD(v15.f64[0]) & 1) != 0);
  return result;
}

unint64_t sub_213D67A38()
{
  result = qword_27C8EB1C0;
  if (!qword_27C8EB1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8EB1C0);
  }

  return result;
}

uint64_t sub_213D67A84(void *a1, uint64_t a2)
{
  sub_213D1E22C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EC6C0, &qword_213D9A640);
  if (swift_dynamicCast())
  {
    v4 = v8;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v5 = sub_213D904CC();
    if (!v5)
    {
      v5 = sub_213D9149C();
    }

    v4 = v5;
  }

  v6 = sub_213D90C0C();
  (*(*(v6 - 8) + 8))(a2, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IdentifiableMapItem.MapItemIdentity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for IdentifiableMapItem.MapItemIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t Annotation.init(coordinate:anchor:accessoryAnchor:content:label:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, double *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>)
{
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  v26[3] = a6;
  v22 = type metadata accessor for Annotation(0, v26);
  *(a7 + *(v22 + 64)) = 0.0;
  v23 = (a7 + *(v22 + 68));
  *a7 = a8;
  a7[1] = a9;
  a7[2] = a10;
  a7[3] = a11;
  *v23 = a12;
  v23[1] = a13;
  *(v23 + 16) = 0;
  v24 = a1();
  return a2(v24);
}

uint64_t Annotation.init(coordinate:anchor:content:label:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, double *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  sub_213D917CC();
  v23 = v22;
  v25 = v24;
  v30[0] = a3;
  v30[1] = a4;
  v30[2] = a5;
  v30[3] = a6;
  v26 = type metadata accessor for Annotation(0, v30);
  *(a7 + *(v26 + 64)) = 0.0;
  v27 = a7 + *(v26 + 68);
  *a7 = a8;
  a7[1] = a9;
  a7[2] = a10;
  a7[3] = a11;
  *v27 = v23;
  *(v27 + 1) = v25;
  v27[16] = 0;
  v28 = a1();
  return a2(v28);
}

uint64_t Annotation.init<>(_:coordinate:anchor:accessoryAnchor:content:)@<X0>(void (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, double *a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, double a13@<D4>, double a14@<D5>)
{
  v29[0] = MEMORY[0x277CE0BD8];
  v29[1] = a6;
  v29[2] = MEMORY[0x277CE0BC8];
  v29[3] = a7;
  v22 = type metadata accessor for Annotation(0, v29);
  *(a8 + v22[16]) = 0.0;
  v23 = (a8 + v22[17]);
  *a8 = a9;
  a8[1] = a10;
  a8[2] = a11;
  a8[3] = a12;
  *v23 = a13;
  v23[1] = a14;
  *(v23 + 16) = 0;
  a5();
  result = sub_213D9125C();
  v25 = a8 + v22[15];
  *v25 = result;
  *(v25 + 1) = v26;
  v25[16] = v27 & 1;
  *(v25 + 3) = v28;
  return result;
}

uint64_t Annotation.init<>(_:coordinate:anchor:content:)@<X0>(void (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, double *a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>)
{
  sub_213D917CC();

  return Annotation.init<>(_:coordinate:anchor:accessoryAnchor:content:)(a5, a6, a7, a8, a9, a10, a11, a12, v20, v21);
}

uint64_t Annotation.init<A>(_:coordinate:anchor:accessoryAnchor:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X4>, double *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v21 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = MEMORY[0x277CE0BD8];
  v36[1] = v24;
  v36[2] = MEMORY[0x277CE0BC8];
  v36[3] = v25;
  v26 = type metadata accessor for Annotation(0, v36);
  *(a5 + v26[16]) = 0.0;
  v27 = (a5 + v26[17]);
  *a5 = a6;
  a5[1] = a7;
  a5[2] = a8;
  a5[3] = a9;
  *v27 = a10;
  v27[1] = a11;
  *(v27 + 16) = 0;
  a2();
  (*(v21 + 16))(v23, a1, a3);
  v28 = sub_213D9127C();
  v30 = v29;
  LOBYTE(a2) = v31;
  v33 = v32;
  result = (*(v21 + 8))(a1, a3);
  v35 = a5 + v26[15];
  *v35 = v28;
  *(v35 + 1) = v30;
  v35[16] = a2 & 1;
  *(v35 + 3) = v33;
  return result;
}

uint64_t Annotation.init<A>(_:coordinate:anchor:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X4>, double *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v17 = *(a3 - 8);
  v18 = MEMORY[0x28223BE20](a1);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21, v18);
  sub_213D917CC();
  Annotation.init<A>(_:coordinate:anchor:accessoryAnchor:content:)(v20, a2, a3, a5, a6, a7, a8, a9, v22, v23);
  return (*(v17 + 8))(a1, a3);
}

uint64_t Annotation.init<>(item:anchor:accessoryAnchor:content:)@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v18 = [a1 placemark];
  v19 = [v18 location];

  if (v19)
  {
    [v19 coordinate];
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *a5 = v21;
  *(a5 + 8) = v23;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  v39 = MEMORY[0x277CE0BD8];
  v40 = a3;
  v41 = MEMORY[0x277CE0BC8];
  v42 = a4;
  v24 = type metadata accessor for Annotation(0, &v39);
  a2();
  v25 = [a1 name];
  if (v25)
  {
    v28 = v25;
    v29 = sub_213D9193C();
    v31 = v30;
  }

  else
  {
    v31 = 0xEA00000000006E6FLL;
    v29 = 0x697461746F6E6E41;
  }

  v32 = v24[16];
  v33 = a5 + v24[17];
  v39 = v29;
  v40 = v31;
  sub_213CEFA54(v25, v26, v27);
  result = sub_213D9127C();
  v35 = a5 + v24[15];
  *v35 = result;
  *(v35 + 8) = v36;
  *(v35 + 16) = v37 & 1;
  *(v35 + 24) = v38;
  *(a5 + v32) = a1;
  *v33 = a8;
  *(v33 + 8) = a9;
  *(v33 + 16) = 0;
  return result;
}

uint64_t static Annotation._makeMapContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a2;
  v54 = a1;
  v71 = *MEMORY[0x277D85DE8];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v52 = *(v53 - 8);
  v55 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v13 = (&v44 - v12);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F8, &qword_213D95DA0);
  v58 = *(v59 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v49 = sub_213D9057C();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v19 = &v44 - v18;
  v50 = a7;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  *&v69 = a3;
  *(&v69 + 1) = a4;
  *(&v45 + 1) = a4;
  *v70 = a5;
  *&v70[8] = a6;
  *(&v46 + 1) = a6;
  v20 = type metadata accessor for Annotation(255, &v69);
  v21 = sub_213D9057C();
  v22 = v54;
  sub_213D514F4(sub_213D68C04, v21, a3, v19);
  v23 = type metadata accessor for _MapContentInputs(0);
  v24 = v56;
  v57 = v17;
  v47 = v19;
  *&v45 = a3;
  *&v46 = a5;
  sub_213D90CAC();
  v25 = sub_213CDF810(v22, v20);
  v26 = v24;
  sub_213D90C3C();
  if (v55 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v27 = *v13;
  (*(v52 + 8))(v13, v53);
  v28 = v51;
  (*(v58 + 16))(v51, v57, v59);
  if (v14 != 4)
  {
    goto LABEL_5;
  }

  v29 = *v28;
  v58 = *(v58 + 8);
  v30 = v59;
  v31 = (v58)(v28, v59);
  v32 = *(v26 + *(v23 + 28));
  *&v66 = __PAIR64__(v27, v25);
  *(&v66 + 1) = __PAIR64__(v32, v29);
  LODWORD(v67) = 0;
  *v68 = 0;
  *&v68[8] = 771;
  v68[10] = 6;
  v64 = v66;
  *v65 = v67;
  *&v65[15] = *&v68[7];
  MEMORY[0x28223BE20](v31);
  v69 = v45;
  *v70 = v46;
  List = type metadata accessor for Annotation.MakeList(0, &v69);
  *(&v44 - 2) = List;
  *(&v44 - 1) = swift_getWitnessTable();
  v34 = *(List - 8);
  (*(v34 + 16))(&v69, &v66, List);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA700, &qword_213D9A7B0);
  sub_213CDDDA4(&v64, sub_213CF3038, (&v44 - 4), List, MEMORY[0x277D84A98], v35, MEMORY[0x277D84AC0], v36);
  v69 = v64;
  *v70 = *v65;
  *&v70[15] = *&v65[15];
  v37 = *(v34 + 8);
  v38 = v37(&v69, List);
  MEMORY[0x28223BE20](v38);
  *(&v44 - 4) = v39;
  sub_213CD84E0(v40, v41, v42);
  sub_213D90F7C();
  v37(&v66, List);
  (v58)(v57, v30);
  return (*(v48 + 8))(v47, v49);
}

uint64_t sub_213D68B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for Annotation(0, v13);
  v8 = *(v7 + 60);
  v12[2] = v7;
  v12[3] = a2;
  v9 = sub_213D9041C();
  sub_213D48E14(a1 + v8, sub_213CF3B70, v12, a2, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v10);
  return v13[0];
}

uint64_t sub_213D68C10(uint64_t a1)
{
  v2 = v1;
  v158 = *MEMORY[0x277D85DE8];
  v135 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v135);
  v138 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for MapContentList.Item(0);
  v139 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = (&v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v140 = &v118 - v7;
  v8 = *(a1 + 24);
  v132 = *(v8 - 8);
  MEMORY[0x28223BE20](v9);
  v130 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for ResolvedAnnotation(0);
  MEMORY[0x28223BE20](v134);
  v131 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_213D90C0C();
  v147 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_213D90CFC();
  v146 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v149 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v118 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v118 - v20;
  v22 = sub_213D9100C();
  v152 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v129 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v148 = &v118 - v25;
  v26 = *(a1 + 32);
  v143 = a1;
  *&v27 = *(a1 + 16);
  v133 = v8;
  *(&v27 + 1) = v8;
  v126 = v26;
  v156 = v27;
  *v157 = v26;
  v28 = type metadata accessor for Annotation(0, &v156);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v118 - v30);
  Value = AGGraphGetValue();
  v123 = v33;
  v141 = v29;
  v34 = v29;
  v35 = v152;
  v36 = *(v34 + 16);
  v144 = v28;
  v36(v31, Value, v28);
  v37 = *(v2 + 12);
  v38 = *MEMORY[0x277CEF7D0];
  v151 = v22;
  if (v37 == v38)
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    v39 = *(v18 + 48);
    sub_213D90FFC();
    v21[v39] = 0;
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_213CF3B08(v17);
    }
  }

  else
  {
    v40 = AGGraphGetValue();
    v42 = v41;
    v43 = *(v18 + 48);
    (*(v35 + 16))(v17, v40, v151);
    v44 = v42 & 1;
    v22 = v151;
    v17[v43] = v44;
    (*(v19 + 56))(v17, 0, 1, v18);
    sub_213CF3968(v17, v21);
  }

  LODWORD(v122) = v21[*(v18 + 48)];
  v45 = *(v152 + 32);
  v128 = v152 + 32;
  v127 = v45;
  v45(v148, v21, v22);
  v46 = v150;
  v47 = AGGraphGetValue();
  *&v121 = v48;
  v49 = *(v146 + 16);
  v125 = v146 + 16;
  v124 = v49;
  v49(v149, v47, v46);
  v50 = *(v2 + 31);
  v51 = *(v2 + 16);
  v156 = *v2;
  *v157 = v51;
  *&v157[15] = v50;
  v52 = *&v157[8];
  v53 = *(v2 + 16);
  v154 = *v2;
  *v155 = v53;
  *&v155[15] = *(v2 + 31);
  sub_213CF520C(v13);
  v54 = sub_213D90A7C();
  v55 = *(v147 + 8);
  v56 = v145;
  v55(v13, v145);
  v147 = v54;
  v142 = v31;
  if (!v54)
  {
    if (!v52)
    {
      (*(*(v143 - 8) + 16))(&v154, &v156);
      v120 = 0;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (!v52)
  {
    (*(*(v143 - 8) + 16))(&v154, &v156);
LABEL_11:
    v61 = 1;
    goto LABEL_12;
  }

  v57 = v143;
  v58 = *(v143 - 8);
  (*(v58 + 16))(&v154, &v156, v143);

  v59 = sub_213D9147C();
  v60 = v57;
  v31 = v142;
  (*(v58 + 8))(&v156, v60);

  v61 = v59 ^ 1;
LABEL_12:
  v120 = v61;
LABEL_13:
  v62 = *(v2 + 16);
  v154 = *v2;
  *v155 = v62;
  v64 = *(v2 + 33);
  v155[16] = *(v2 + 32);
  v63 = v155[16];
  *&v155[17] = v64;
  v65 = sub_213CF520C(v13);
  sub_213CE3080(v65, v66, v67);
  sub_213D90C1C();
  v55(v13, v56);
  v68 = v153;
  if (v63 == 3)
  {
    v69 = 1;
  }

  else
  {
    v69 = sub_213D904DC() ^ 1;
  }

  v119 = v69;
  v70 = *(v2 + 16);
  v154 = *v2;
  *v155 = v70;
  v155[16] = *(v2 + 32);
  v72 = *(v2 + 34);
  v155[17] = *(v2 + 33);
  v71 = v155[17];
  v155[18] = v72;
  v73 = sub_213CF520C(v13);
  sub_213CE302C(v73, v74, v75);
  sub_213D90C1C();
  v55(v13, v56);
  LODWORD(v143) = v153;
  if (v71 == 3)
  {
    v76 = 1;
  }

  else
  {
    v76 = sub_213D904DC() ^ 1;
  }

  v154 = *v2;
  v77 = *(v2 + 16);
  *&v155[4] = *(v2 + 20);
  *&v155[11] = *(v2 + 27);
  *v155 = v77;
  v78 = sub_213CF520C(v13);
  sub_213CEF738(v78, v79, v80);
  sub_213D90C1C();
  v55(v13, v145);
  v81 = *(v2 + 34);
  LODWORD(v13) = v153;
  if (v153 == 6)
  {
    v82 = v81 == 6;
  }

  else
  {
    if (v81 == 6)
    {
      goto LABEL_28;
    }

    switch(v153)
    {
      case 5u:
        v82 = v81 == 5;
        break;
      case 4u:
        v82 = v81 == 4;
        break;
      case 3u:
        v82 = v81 == 3;
        break;
      default:
        if ((v81 - 3) >= 3 && ((v123 | v120 | v121 | v119 | v76 | v122) & 1) == 0 && v153 == v81)
        {
          goto LABEL_25;
        }

        goto LABEL_28;
    }
  }

  v83 = !v82;
  if (((v83 | v123 | v120 | v121 | v119 | v76 | v122) & 1) == 0)
  {
LABEL_25:
    if (AGGraphGetOutputValue())
    {
      goto LABEL_31;
    }
  }

LABEL_28:
  v145 = v2;
  LODWORD(v123) = v77 + 1;
  *(v2 + 16) = v77 + 1;
  v84 = v134;
  v85 = *(v134 + 24);
  v86 = v31[1];
  v122 = *v31;
  v121 = v86;
  v87 = v131;
  v124(&v131[v85], v149, v150);
  v88 = v144;
  v89 = v68;
  (*(v132 + 16))(v130, v31 + *(v144 + 56), v133);
  v90 = sub_213D915DC();
  v91 = *(v88 + 64);
  v92 = (v31 + *(v88 + 68));
  v130 = *v92;
  LODWORD(v132) = v13;
  *&v126 = v92[1];
  v93 = v147;
  LODWORD(v125) = *(v92 + 16);
  v13 = *(v31 + v91);
  v94 = *(v152 + 16);
  v95 = v87 + v84[14];
  v96 = v148;
  v97 = v87;
  v98 = v151;
  v94(v95, v148, v151);
  v99 = v121;
  *v97 = v122;
  v97[1] = v99;
  *(v97 + v84[7]) = v90;
  *(v97 + v84[8]) = v93;
  v100 = v84[9];
  LODWORD(v133) = v89;
  *(v97 + v100) = v89;
  *(v97 + v84[10]) = v143;
  v101 = v97 + v84[11];
  v102 = v126;
  *v101 = v130;
  *(v101 + 1) = v102;
  LOBYTE(v102) = v132;
  v101[16] = v125;
  *(v97 + v84[12]) = v13;
  v103 = v13;
  LOBYTE(v13) = v102;
  *(v97 + v84[13]) = v102;
  v104 = v129;
  v94(v129, v96, v98);
  v105 = v138;
  sub_213D6A310(v97, v138, type metadata accessor for ResolvedAnnotation);
  v106 = swift_storeEnumTagMultiPayload();
  sub_213CDF60C(v106, v107, v108);

  v109 = v103;
  sub_213D9101C();
  v110 = v154;
  if (!v154)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_213D94520;
    *(v110 + 32) = 0;
    *(v110 + 72) = 0;
  }

  v111 = v136;
  *v136 = v110;
  v112 = v137;
  v127(v111 + *(v137 + 28), v104, v151);
  *(v111 + 8) = v123;
  sub_213CF39D8(v105, v111 + *(v112 + 24), type metadata accessor for MapContentList.Item.Content);
  v113 = v140;
  sub_213CF39D8(v111, v140, type metadata accessor for MapContentList.Item);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
  v114 = (*(v139 + 80) + 32) & ~*(v139 + 80);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_213D94520;
  sub_213D6A310(v113, v115 + v114, type metadata accessor for MapContentList.Item);
  *&v154 = sub_213D71A68(v115);
  *(&v154 + 1) = v116;
  AGGraphSetOutputValue();
  sub_213D6A378(v113, type metadata accessor for MapContentList.Item);
  sub_213D6A378(v97, type metadata accessor for ResolvedAnnotation);

  v31 = v142;
  v2 = v145;
  LOBYTE(v68) = v133;
LABEL_31:
  *(v2 + 34) = v13;
  *(v2 + 33) = v143;
  *(v2 + 32) = v68;
  *(v2 + 24) = v147;

  (*(v146 + 8))(v149, v150);
  (*(v152 + 8))(v148, v151);
  return (*(v141 + 8))(v31, v144);
}

void sub_213D69C08(uint64_t a1)
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_213D6A218(319, qword_27C8EA798, sub_213CF3264);
          if (v5 <= 0x3F)
          {
            sub_213D6A218(319, qword_27C8EB548, type metadata accessor for CGPoint);
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

uint64_t sub_213D69D2C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((((v13 + ((v10 + v11 + ((v9 + 32) & ~v9)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v15 = (a2 - v12 + 255) >> 8;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
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

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v14];
      if (!*&a1[v14])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *&a1[v14];
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v14);
    if (v14 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v14];
    if (a1[v14])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  v23 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;
  if (v5 == v12)
  {
    return (*(v4 + 48))(v23);
  }

  v24 = (v23 + v10 + v11) & ~v11;
  if (v8 == v12)
  {
    return (*(v7 + 48))(v24, v8, v6);
  }

  v25 = *((v13 + v24) & 0xFFFFFFFFFFFFFFF8);
  if (v25 >= 0xFFFFFFFF)
  {
    LODWORD(v25) = -1;
  }

  if ((v25 + 1) >= 2)
  {
    return v25;
  }

  else
  {
    return 0;
  }
}

void sub_213D69F48(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  if (v10 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  v15 = *(*(v8 - 8) + 64) + 7;
  v16 = ((((v15 + ((v12 + v13 + ((v11 + 32) & ~v11)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = (a3 - v14 + 255) >> 8;
    if (v16 <= 3)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v14 >= a2)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v16] = 0;
      }

      else if (v20)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      v23 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;
      if (v7 == v14)
      {
        v24 = *(v6 + 56);

        v24(v23);
      }

      else
      {
        v25 = (v23 + v12 + v13) & ~v13;
        if (v10 == v14)
        {
          v26 = *(v9 + 56);

          v26(v25);
        }

        else
        {
          v27 = ((v15 + v25) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v27 = 0;
            *v27 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v27 = a2;
          }
        }
      }

      return;
    }
  }

  v21 = ~v14 + a2;
  bzero(a1, ((((v15 + ((v12 + v13 + ((v11 + 32) & ~v11)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v16 <= 3)
  {
    v22 = (v21 >> 8) + 1;
  }

  else
  {
    v22 = 1;
  }

  if (v16 <= 3)
  {
    *a1 = v21;
    if (v20 > 1)
    {
LABEL_29:
      if (v20 == 2)
      {
        *&a1[v16] = v22;
      }

      else
      {
        *&a1[v16] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v20 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v20)
  {
    a1[v16] = v22;
  }
}

void sub_213D6A218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213D91C7C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_213D6A26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for ResolvedAnnotation(uint64_t a1)
{
  result = qword_27C8EC7C8;
  if (!qword_27C8EC7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213D6A310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D6A378(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_213D6A400(uint64_t a1)
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v2 <= 0x3F)
    {
      sub_213D90CFC();
      if (v3 <= 0x3F)
      {
        sub_213CF3CE4(319, &qword_27C8EA248, MEMORY[0x277CE0F78]);
        if (v4 <= 0x3F)
        {
          sub_213D6A218(319, qword_27C8EB548, type metadata accessor for CGPoint);
          if (v5 <= 0x3F)
          {
            sub_213D6A218(319, qword_27C8EA798, sub_213CF3264);
            if (v6 <= 0x3F)
            {
              sub_213CF3CE4(319, qword_27C8EA948, &type metadata for MapItemDetailSelectionAccessoryStyle);
              if (v7 <= 0x3F)
              {
                sub_213D9100C();
                if (v8 <= 0x3F)
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

uint64_t _ConditionalMapContent.storage.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = type metadata accessor for _ConditionalMapContent.Storage(0, *(a1 + 16), *(a1 + 24), a3);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3, v5);
}

uint64_t _ConditionalMapContent.init(trueContent:falseType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 32))(a4, a1);
  type metadata accessor for _ConditionalMapContent.Storage(0, a2, a3, v6);

  return swift_storeEnumTagMultiPayload();
}

uint64_t _ConditionalMapContent.init(falseContent:trueType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1, a3);
  type metadata accessor for _ConditionalMapContent.Storage(0, a2, a3, v6);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static _ConditionalMapContent<>._makeMapContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a5;
  v42 = a6;
  v43 = a7;
  v44 = a1;
  v56 = *MEMORY[0x277D85DE8];
  v47 = type metadata accessor for _MapContentOutputs.SetDependency(0);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _MapContentOutputs(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a6;
  v19 = _s9ContainerVMa(0, &v52);
  v45 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v40 = (&v39 - v20);
  v21 = type metadata accessor for _MapContentInputs.AddPreference(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  sub_213D6DC14(&qword_27C8EC7D8, type metadata accessor for _MapContentInputs.AddPreference, &unk_213D9431C);
  sub_213D90F2C();
  v24 = v43;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v25 = sub_213D90FAC();
  v26 = *(v25 - 8);
  (*(v26 + 40))(v24, v23, v25);
  v28 = type metadata accessor for _ConditionalMapContent(0, a3, a4, v27);
  LODWORD(v23) = sub_213CDF810(v44, v28);
  sub_213CDDF50(a2, v18, type metadata accessor for _MapContentInputs);
  sub_213CDDF50(v24, v15, type metadata accessor for _MapContentOutputs);
  v29 = v40;
  v30 = v23;
  v31 = v18;
  v33 = v41;
  v32 = v42;
  sub_213D6ABF4(v30, v31, v15, a3, a4, v41, v42, v40);
  v52 = a3;
  v53 = a4;
  v54 = v33;
  v55 = v32;
  v49 = _s4InfoVMa(0, &v52);
  v50 = v19;
  WitnessTable = swift_getWitnessTable();
  v34 = sub_213D903FC();
  sub_213CDDDA4(v29, sub_213D6D308, v48, v19, MEMORY[0x277D84A98], v34, MEMORY[0x277D84AC0], v35);
  LODWORD(v32) = v52;
  v36 = v46;
  (*(v26 + 16))(v46, v24, v25);
  v37 = v36 + *(v47 + 20);
  *v37 = v32;
  *(v37 + 4) = 0;
  sub_213D6DC14(qword_27C8EC7E0, type metadata accessor for _MapContentOutputs.SetDependency, &unk_213D942F4);
  sub_213D90F8C();
  sub_213D6DC5C(v36, type metadata accessor for _MapContentOutputs.SetDependency);
  return (*(v45 + 8))(v29, v19);
}

id sub_213D6ABF4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  *a8 = a1;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v11 = _s9ContainerVMa(0, v13);
  sub_213D6DCD4(a2, a8 + v11[13], type metadata accessor for _MapContentInputs);
  sub_213D6DCD4(a3, a8 + v11[14], type metadata accessor for _MapContentOutputs);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a8 + v11[15]) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static _ConditionalMapContent<>._mapContentCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a4 + 40))();
  if ((v9 & 1) == 0)
  {
    v10 = result;
    v11 = result != (*(a5 + 40))(a1, a3, a5);
    if ((v12 | v11))
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

uint64_t sub_213D6AD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for _ConditionalMapContent.Storage(255, v7, v8, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v25 - v12;
  v15 = type metadata accessor for _ConditionalMapContent(0, v7, v8, v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  (*(v19 + 16))(&v25 - v17, v5, v16);
  v20 = *(TupleTypeMetadata2 + 48);
  v21 = *(v9 - 8);
  (*(v21 + 32))(v13, v18, v9);
  (*(v21 + 16))(&v13[v20], a1, v9);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a1 == 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_3:
      (*(v11 + 8))(v13, TupleTypeMetadata2);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_3;
  }

  v24 = *(v21 + 8);
  v24(&v13[v20], v9);
  v24(v13, v9);
  return 1;
}

uint64_t sub_213D6AFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for _ConditionalMapContent(0, a3, a4, a4);
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  result = _s4InfoVMa(0, v16);
  *(a7 + *(result + 52)) = a2;
  return result;
}

uint64_t sub_213D6B064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for _ConditionalMapContent(0, *(a1 + 16), *(a1 + 24), a3);
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a2, Value, v4);
}

uint64_t sub_213D6B0F0(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v61 = *(a1 + 16);
  v3 = v61;
  v60 = *(a1 + 24);
  v62 = v60;
  v63 = v4;
  v5 = _s4InfoVMa(0, &v61);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v48 - v9;
  MEMORY[0x28223BE20](v10);
  v51 = &v48 - v11;
  v12 = sub_213D91C7C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v22 = type metadata accessor for _ConditionalMapContent(0, v3, v60, v21);
  v56 = *(v22 - 8);
  v57 = v22;
  MEMORY[0x28223BE20](v22);
  v59 = &v48 - v23;
  sub_213D6B064(a1, &v48 - v23, v24);
  OutputValue = AGGraphGetOutputValue();
  v54 = v1;
  if (OutputValue)
  {
    (*(v6 + 16))(v20, OutputValue, v5);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v6 + 56))(v20, v26, 1, v5);
  v27 = *(v13 + 16);
  *&v60 = v20;
  v27(v17, v20, v12);
  v28 = v13;
  v29 = *(v6 + 48);
  v30 = v29(v17, 1, v5);
  v58 = v28;
  if (v30 == 1)
  {
    (*(v28 + 8))(v17, v12);
  }

  else
  {
    v33 = sub_213D6AD4C(v59, v5, v31, v32);
    v49 = *(v6 + 8);
    v50 = v6 + 8;
    v49(v17, v5);
    if (v33)
    {
      result = AGGraphGetOutputValue();
      if (result)
      {
        v35 = v51;
        (*(v6 + 16))(v51, result, v5);
        v37 = v56;
        v36 = v57;
        v38 = v59;
        v39 = (*(v56 + 24))(v35, v59, v57);
        MEMORY[0x28223BE20](v39);
        *(&v48 - 2) = a1;
        *(&v48 - 1) = swift_getWitnessTable();
        sub_213CDDDA4(v35, sub_213D6DD74, (&v48 - 4), v5, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v40);
        (*(v58 + 8))(v60, v12);
        (*(v37 + 8))(v38, v36);
        return (v49)(v35, v5);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v41 = v53;
  v27(v53, v60, v12);
  if (v29(v41, 1, v5) == 1)
  {
    v42 = v58;
    (*(v58 + 8))(v41, v12);
  }

  else
  {
    v43 = v52;
    (*(v6 + 32))(v52, v41, v5);
    sub_213D6B774(v43, a1);
    (*(v6 + 8))(v43, v5);
    v42 = v58;
  }

  v44 = v55;
  v45 = v59;
  v46 = sub_213D6B8C0(v59, a1, v55);
  MEMORY[0x28223BE20](v46);
  *(&v48 - 2) = a1;
  *(&v48 - 1) = swift_getWitnessTable();
  sub_213CDDDA4(v44, sub_213D6DBDC, (&v48 - 4), v5, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v47);
  (*(v6 + 8))(v44, v5);
  (*(v42 + 8))(v60, v12);
  return (*(v56 + 8))(v45, v57);
}

uint64_t sub_213D6B774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentOutputs.ResetPreference(0);
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 56);
  v8 = sub_213D90FAC();
  (*(*(v8 - 8) + 16))(v6, v2 + v7, v8);
  sub_213D6DC14(&qword_27C8ECA68, type metadata accessor for _MapContentOutputs.ResetPreference, &unk_213D94454);
  sub_213D90F8C();
  sub_213D6DC5C(v6, type metadata accessor for _MapContentOutputs.ResetPreference);
  v9 = *(a2 + 32);
  v11[0] = *(a2 + 16);
  v11[1] = v9;
  _s4InfoVMa(0, v11);
  return AGSubgraphInvalidate();
}

uint64_t sub_213D6B8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for _MapContentOutputs(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x277CEF7D0])
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = AGSubgraphGetGraph();
    v16 = AGSubgraphCreate();

    AGSubgraphAddChild();
    sub_213CDDF50(v3 + *(a2 + 52), v12, type metadata accessor for _MapContentInputs);
    sub_213CDDF50(v3 + *(a2 + 56), v9, type metadata accessor for _MapContentOutputs);
    AGGraphClearUpdate();
    v17 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    sub_213D6BACC(a1, v14, v12, v9, v16, *(a2 + 16), *(a2 + 24), *(a2 + 32), a3, *(a2 + 40));
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    sub_213D6DC5C(v9, type metadata accessor for _MapContentOutputs);
    return sub_213D6DC5C(v12, type metadata accessor for _MapContentInputs);
  }

  return result;
}

id sub_213D6BACC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v79 = a8;
  v80 = a5;
  v74 = a4;
  v70 = a3;
  v69 = a2;
  v78 = a9;
  v82 = a10;
  v88 = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for _ConditionalMapContent(0, a6, a7, a4);
  v75 = *(v13 - 8);
  v76 = v13;
  MEMORY[0x28223BE20](v13);
  v73 = &v63 - v14;
  v72 = type metadata accessor for _MapContentOutputs.SetSource(0);
  MEMORY[0x28223BE20](v72);
  v71 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_213D9057C();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v63 - v16;
  v66 = *(a7 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_213D9057C();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v21 = &v63 - v20;
  v22 = *(a6 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for _ConditionalMapContent.Storage(0, a6, a7, v26);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v63 - v29;
  v31 = type metadata accessor for _MapContentOutputs(0);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v81 = &v63 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v28 + 16);
  v77 = a1;
  v34(v30, a1, v27, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v66;
    v36 = (*(v66 + 32))(v19, v30, a7);
    v83 = v69;
    MEMORY[0x28223BE20](v36);
    *(&v63 - 4) = a7;
    v84 = a6;
    v85 = a7;
    v37 = v79;
    v38 = v82;
    v86 = v79;
    v87 = v82;
    v39 = _s10FalseChildVMa(0, &v84);
    *(&v63 - 3) = v39;
    *(&v63 - 2) = swift_getWitnessTable();
    v40 = sub_213D903FC();
    v42 = sub_213CDDDA4(&v83, sub_213D6DDA8, (&v63 - 6), v39, MEMORY[0x277D84A98], v40, MEMORY[0x277D84AC0], v41);
    v43 = v84;
    MEMORY[0x28223BE20](v42);
    *(&v63 - 2) = a7;
    *(&v63 - 2) = v43;
    sub_213CDDDA4(v19, sub_213D49914, (&v63 - 4), a7, MEMORY[0x277D84A98], MEMORY[0x277D839B0], MEMORY[0x277D84AC0], v44);
    v45 = v65;
    sub_213CDF770(v43, v65);
    (*(v38 + 32))(v45, v70, a7, v38);
    (*(v67 + 8))(v45, v68);
    (*(v35 + 8))(v19, a7);
  }

  else
  {
    v46 = (*(v22 + 32))(v25, v30, a6);
    v83 = v69;
    MEMORY[0x28223BE20](v46);
    *(&v63 - 4) = a6;
    v84 = a6;
    v85 = a7;
    v47 = v79;
    v86 = v79;
    v87 = v82;
    v48 = _s9TrueChildVMa(0, &v84);
    *(&v63 - 3) = v48;
    *(&v63 - 2) = swift_getWitnessTable();
    v49 = sub_213D903FC();
    v50 = MEMORY[0x277D84A98];
    v52 = sub_213CDDDA4(&v83, sub_213D6DDA8, (&v63 - 6), v48, MEMORY[0x277D84A98], v49, MEMORY[0x277D84AC0], v51);
    v53 = v84;
    MEMORY[0x28223BE20](v52);
    *(&v63 - 2) = a6;
    *(&v63 - 2) = v53;
    v54 = v50;
    v37 = v47;
    sub_213CDDDA4(v25, sub_213D6DD8C, (&v63 - 4), a6, v54, MEMORY[0x277D839B0], MEMORY[0x277D84AC0], v55);
    sub_213CDF770(v53, v21);
    (*(v47 + 32))(v21, v70, a6, v47);
    (*(v63 + 8))(v21, v64);
    (*(v22 + 8))(v25, a6);
  }

  v56 = sub_213D90FAC();
  v57 = *(*(v56 - 8) + 16);
  v58 = v71;
  v57(v71, v74, v56);
  v59 = v81;
  v57((v58 + *(v72 + 20)), v81, v56);
  sub_213D6DC14(qword_27C8ECA70, type metadata accessor for _MapContentOutputs.SetSource, &unk_213D9442C);
  sub_213D90F8C();
  sub_213D6DC5C(v58, type metadata accessor for _MapContentOutputs.SetSource);
  sub_213D6DC5C(v59, type metadata accessor for _MapContentOutputs);
  v60 = v73;
  (*(v75 + 16))(v73, v77, v76);
  sub_213D6AFAC(v60, v80, a6, a7, v37, v82, v78);
  v61 = v80;

  return v61;
}

uint64_t sub_213D6C3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  v4 = _s4InfoVMa(0, v6);
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

uint64_t sub_213D6C474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = *(a1 + 16);
  v5 = v29;
  v6 = type metadata accessor for _ConditionalMapContent.Storage(0, v29, *(&v29 + 1), a4);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v10 = type metadata accessor for _ConditionalMapContent(0, v29, *(&v29 + 1), v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v27 = a1;
  v28 = *(a1 + 32);
  v31[1] = v28;
  v31[0] = v29;
  v14 = _s4InfoVMa(0, v31);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  *&v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v18);
  v26 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D6C870(v5, *(&v5 + 1), v28, *(&v28 + 1), v17);
  (*(v11 + 16))(v13, v17, v10);
  v20 = v30;
  (*(v15 + 8))(v17, v14);
  (*(v20 + 32))(v8, v13, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v20 + 8))(v8, v6);
  }

  v22 = v29;
  v23 = v26;
  v24 = (*(v29 + 32))(v26, v8, v5);
  MEMORY[0x28223BE20](v24);
  *(&v26 - 2) = v27;
  *(&v26 - 1) = swift_getWitnessTable();
  sub_213CDDDA4(v23, sub_213D6DD74, (&v26 - 4), v5, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v25);
  return (*(v22 + 8))(v23, v5);
}

uint64_t sub_213D6C870@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v7 = _s4InfoVMa(0, v10);
  Value = AGGraphGetValue();
  return (*(*(v7 - 8) + 16))(a6, Value, v7);
}

uint64_t sub_213D6C93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = *(a1 + 16);
  v5 = v29;
  v6 = type metadata accessor for _ConditionalMapContent.Storage(0, v29, *(&v29 + 1), a4);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v10 = type metadata accessor for _ConditionalMapContent(0, v29, *(&v29 + 1), v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v27 = a1;
  v28 = *(a1 + 32);
  v31[1] = v28;
  v31[0] = v29;
  v14 = _s4InfoVMa(0, v31);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  *&v29 = *(*(&v5 + 1) - 8);
  MEMORY[0x28223BE20](v18);
  v26 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D6C870(v5, *(&v5 + 1), v28, *(&v28 + 1), v17);
  (*(v11 + 16))(v13, v17, v10);
  v20 = v30;
  (*(v15 + 8))(v17, v14);
  (*(v20 + 32))(v8, v13, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v20 + 8))(v8, v6);
  }

  v21 = v29;
  v22 = v26;
  v23 = (*(v29 + 32))(v26, v8, *(&v5 + 1));
  MEMORY[0x28223BE20](v23);
  *(&v26 - 2) = v27;
  *(&v26 - 1) = swift_getWitnessTable();
  sub_213CDDDA4(v22, sub_213D6DD74, (&v26 - 4), *(&v5 + 1), MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v24);
  return (*(v21 + 8))(v22, *(&v5 + 1));
}

uint64_t static Optional<A>._makeMapContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for _ConditionalMapContent(255, a3, &type metadata for EmptyMapContent, a4);
  v11 = sub_213D9057C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v21 - v13);
  v15 = sub_213D91C7C();
  v22 = sub_213CDF810(a1, v15);
  v24 = v10;
  v17 = _s5ChildVMa_0(0, a3, a4, v16);
  v25 = v17;
  WitnessTable = swift_getWitnessTable();
  v18 = sub_213D903FC();
  sub_213CDDDA4(&v22, sub_213CDE72C, v23, v17, MEMORY[0x277D84A98], v18, MEMORY[0x277D84AC0], v19);
  sub_213CDF770(v21[2], v14);
  static _ConditionalMapContent<>._makeMapContent(content:inputs:)(v14, a2, a3, &type metadata for EmptyMapContent, a4, &protocol witness table for EmptyMapContent, a5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_213D6CFB4@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_213D91C7C();
  Value = AGGraphGetValue();
  v6 = *(*(v4 - 8) + 16);

  return v6(a3, Value, v4);
}

uint64_t sub_213D6D03C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_213D91C7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_213D6CFB4(v8);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    v16 = (*(v6 + 8))(v8, v5);
    return _ConditionalMapContent.init(falseContent:trueType:)(v16, a2, &type metadata for EmptyMapContent, a3);
  }

  else
  {
    v18 = *(v9 + 32);
    v18(v15, v8, a2);
    v18(v12, v15, a2);
    return _ConditionalMapContent.init(trueContent:falseType:)(v12, a2, &type metadata for EmptyMapContent, a3);
  }
}

uint64_t sub_213D6D244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = type metadata accessor for _ConditionalMapContent(0, *(a1 + 16), &type metadata for EmptyMapContent, a3);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 1, 1, v4);
}

uint64_t sub_213D6D344(uint64_t a1, uint64_t a2, __int128 *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D6D394(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D6D3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for _ConditionalMapContent.Storage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D6D454(uint64_t a1)
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

uint64_t sub_213D6D4D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_213D6D5F8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_213D6D7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_213D6D804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ConditionalMapContent(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for Subgraph(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_213D6D88C(_DWORD *a1, int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = (v3 & 0xFFFFFFFFFFFFFFF8) + 16;
  v8 = v7 & 0xFFFFFFF8;
  v9 = a2 - 2147483646;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (v11 == 4)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else if (v11 == 2)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
LABEL_5:
      v5 = *((a1 + v3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v5 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return (v8 | v13) ^ 0x80000000;
}

int *sub_213D6D978(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v4)
  {
    v4 = *(*(*(a4 + 24) - 8) + 64);
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = a2 & 0x7FFFFFFF;
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_28;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_29:
    *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

void sub_213D6DAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ConditionalMapContent(255, *(a1 + 16), *(a1 + 24), a4);
  sub_213D903FC();
  if (v4 <= 0x3F)
  {
    type metadata accessor for _MapContentInputs(319);
    if (v5 <= 0x3F)
    {
      type metadata accessor for _MapContentOutputs(319);
      if (v6 <= 0x3F)
      {
        type metadata accessor for Subgraph(319);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_213D6DC14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213D6DC5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D6DCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_213D6DE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213CD848C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213CD883C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213CD82DC(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213CD87E8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213CD83E4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213CD84E0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213CD8390(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_213D6DF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_213CD8438(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D6DFAC()
{
  sub_213D1E468(v0, v7);
  if (v9)
  {
    v5[0] = v7[0];
    v5[1] = v7[1];
    v6 = v8;
    v1 = sub_213D91D0C();
    MEMORY[0x21604EB30](v1);

    MEMORY[0x21604EB30](41, 0xE100000000000000);
    v2 = 0x63696D616E79642ELL;
    sub_213CE2B7C(v5);
  }

  else
  {
    *(&v5[0] + 1) = 0xE900000000000028;
    v3 = sub_213D91F3C();
    MEMORY[0x21604EB30](v3);

    MEMORY[0x21604EB30](41, 0xE100000000000000);
    return 0x6C61636978656C2ELL;
  }

  return v2;
}

uint64_t sub_213D6E0B0()
{
  sub_213D91FBC();
  sub_213D1E468(v0, v5);
  if (v7)
  {
    v3[0] = v5[0];
    v3[1] = v5[1];
    v4 = v6;
    MEMORY[0x21604F190](1);
    sub_213D91D3C();
    sub_213CE2B7C(v3);
  }

  else
  {
    v1 = *&v5[0];
    MEMORY[0x21604F190](0);
    MEMORY[0x21604F190](v1);
  }

  return sub_213D91FFC();
}

uint64_t sub_213D6E154(uint64_t a1)
{
  sub_213D1E468(v1, v6);
  if (v8)
  {
    v4[0] = v6[0];
    v4[1] = v6[1];
    v5 = v7;
    MEMORY[0x21604F190](1);
    sub_213D91D3C();
    return sub_213CE2B7C(v4);
  }

  else
  {
    v3 = *&v6[0];
    MEMORY[0x21604F190](0);
    return MEMORY[0x21604F190](v3);
  }
}

uint64_t sub_213D6E1E4(uint64_t a1)
{
  sub_213D91FBC();
  sub_213D1E468(v1, v6);
  if (v8)
  {
    v4[0] = v6[0];
    v4[1] = v6[1];
    v5 = v7;
    MEMORY[0x21604F190](1);
    sub_213D91D3C();
    sub_213CE2B7C(v4);
  }

  else
  {
    v2 = *&v6[0];
    MEMORY[0x21604F190](0);
    MEMORY[0x21604F190](v2);
  }

  return sub_213D91FFC();
}

unint64_t sub_213D6E29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ECB90;
  if (!qword_27C8ECB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECB90);
  }

  return result;
}

uint64_t sub_213D6E334()
{
  v1 = *v0;
  sub_213D91FBC();
  sub_213D714BC(v3, v1);
  return sub_213D91FFC();
}

uint64_t sub_213D6E37C(uint64_t a1)
{
  v2 = *v1;
  sub_213D91FBC();
  sub_213D714BC(v4, v2);
  return sub_213D91FFC();
}

uint64_t sub_213D6E3C0()
{
  v1 = v0;
  v2 = type metadata accessor for MapContentList.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v0;
  v9 = *(*v0 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    sub_213D4E8F4(0, v9, 0);
    v10 = v22;
    v11 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_213D4F304(v11, v7);
      v13 = *v7;

      sub_213D4F398(v7);
      v22 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_213D4E8F4((v14 > 1), v15 + 1, 1);
        v10 = v22;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  sub_213D719E0(v10, v4, v5);

  sub_213D29DEC(v16, v17, v18);
  v19 = sub_213D91B3C();

  v1[1] = v19;
  return result;
}

uint64_t sub_213D6E568(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item(0) - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v9 = *(v3 + 72);
  do
  {
    sub_213D4F304(v8, v5);
    v10 = *(v5 + 2);
    sub_213D4F398(v5);
    if (v7 != 0xFFFFFFFFLL && v10)
    {
      if (!v7 || v10 == 0xFFFFFFFFLL)
      {
        v7 = v10;
      }

      else
      {
        v11 = (v10 | (v7 << 32)) + ~(v10 << 32);
        v12 = (v11 ^ (v11 >> 22)) + ~((v11 ^ (v11 >> 22)) << 13);
        v13 = (9 * (v12 ^ (v12 >> 8))) ^ ((9 * (v12 ^ (v12 >> 8))) >> 15);
        v7 = ((v13 + ~(v13 << 27)) >> 31) ^ (v13 + ~(v13 << 27));
      }
    }

    v8 += v9;
    --v6;
  }

  while (v6);
  return v7;
}

uint64_t sub_213D6E6C0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
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

  v3 = sub_213D6F914(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_27C8EA930, &unk_213D963A0, type metadata accessor for MapContentList.Item);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for MapContentList.Item(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_213D6E840(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_213D91EBC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_213D91EBC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_213D7141C(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_213D6E938(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
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

void *sub_213D6E9A4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_213D6E9BC(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t (*sub_213D6E9EC(uint64_t (**a1)(), unint64_t *a2))()
{
  v5 = *(type metadata accessor for MapContentList.Item(0) - 8);
  if (MEMORY[0x277D84FD8])
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
    sub_213D4F304(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result);
    return sub_213D6EAE8;
  }

  __break(1u);
  return result;
}

void sub_213D6EAE8(uint64_t *a1)
{
  v1 = *a1;
  sub_213D4F398(*a1);

  free(v1);
}

uint64_t *sub_213D6EB24@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v5;
  }

  return result;
}

void sub_213D6EB54(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_213D6EB78@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
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

unint64_t sub_213D6EBA4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_213D6E938(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_213D6EBE0(unint64_t *result, unint64_t *a2)
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

uint64_t *sub_213D6EC08(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_213D6EC24(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_213D6EC40(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_213D6EC5C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_213D6EC74(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void sub_213D6EC8C(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = 0;
}

void *sub_213D6EC9C()
{
  v1 = sub_213D71F08(*v0);

  return v1;
}

void *sub_213D6ECDC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_11:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = a2;
      v11 = 0;
      v12 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        v13 = *(type metadata accessor for MapContentList.Item(0) - 8);
        v14 = *(v13 + 72);
        result = sub_213D4F304(a4 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + v14 * v11, v10);
        if (v12 == v11)
        {
          goto LABEL_11;
        }

        v10 += v14;
        if (v9 == ++v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_213D6EE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ECBA8;
  if (!qword_27C8ECBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECBA8);
  }

  return result;
}

unint64_t sub_213D6EEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ECBD8;
  if (!qword_27C8ECBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECBD8);
  }

  return result;
}

unint64_t sub_213D6EFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ECBF0;
  if (!qword_27C8ECBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECBF0);
  }

  return result;
}

uint64_t sub_213D6F050(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8E9D60, &qword_213D94560);
    sub_213CDE0A0(v4, v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213D6F110(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ECBD0, &qword_213D9B080);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213D6F188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ECC08;
  if (!qword_27C8ECC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECC08);
  }

  return result;
}

uint64_t sub_213D6F1DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v4);

  sub_213D6E6C0(v2);
  sub_213D6E3C0();
}

uint64_t sub_213D6F248(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v29 = result + 32;
  v4 = a2 + 32;
  while (v3 != v2)
  {
    v5 = v29 + 24 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v9 = v4 + 24 * v3;
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (v6 < 0)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      sub_213D71C30();
      sub_213D2BD34(v11, v10, v12);
      sub_213D2BD34(v7, v6, v8);
      v19 = sub_213D91C5C();
      sub_213D1E5E8(v11, v10, v12);
LABEL_27:
      sub_213D1E5E8(v7, v6, v8);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    if (v10 < 0)
    {
      return 0;
    }

    if (v6)
    {
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      v13 = v7[1].f64[0];
      if (*&v13 != *&v11[1].f64[0])
      {
        return 0;
      }

      v14 = v7 + 2;
      v15 = v11 + 2;
      while (v13 != 0.0)
      {
        v16 = *v14++;
        v17 = v16;
        v18 = *v15++;
        *&v17.f64[0] = vmovn_s64(vceqq_f64(v17, v18));
        --*&v13;
        if ((LODWORD(v17.f64[0]) & HIDWORD(v17.f64[0]) & 1) == 0)
        {
          sub_213D2BD34(v11, v10, v12);
          sub_213D2BD34(v7, v6, v8);
          goto LABEL_33;
        }
      }

      sub_213D2BD34(v11, v10, v12);
      sub_213D2BD34(v7, v6, v8);
    }

    else
    {
      if (v10)
      {
        return 0;
      }

      v20 = v7[1].f64[0];
      if (*&v20 != *&v11[1].f64[0])
      {
        return 0;
      }

      sub_213D2BD34(v11, v10, v12);
      sub_213D2BD34(v7, v6, v8);
      v21 = v7 + 2;
      v22 = v11 + 2;
      while (v20 != 0.0)
      {
        v23 = *v21++;
        v24 = v23;
        v25 = *v22++;
        *&v24.f64[0] = vmovn_s64(vceqq_f64(v24, v25));
        --*&v20;
        if ((LODWORD(v24.f64[0]) & HIDWORD(v24.f64[0]) & 1) == 0)
        {
LABEL_33:
          sub_213D1E5E8(v7, v6, v8);
          goto LABEL_34;
        }
      }
    }

    if (v8)
    {
      if (!v12)
      {
        sub_213D1E5E8(v11, v10, 0);
        v26 = v7;
        v27 = v6;
        v28 = v8;
LABEL_35:
        sub_213D1E5E8(v26, v27, v28);
        return 0;
      }

      v19 = sub_213D6F248(v8, v12);
      sub_213D1E5E8(v11, v10, v12);

      goto LABEL_27;
    }

    sub_213D1E5E8(v7, v6, 0);
    if (v12)
    {

LABEL_34:
      v26 = v11;
      v27 = v10;
      v28 = v12;
      goto LABEL_35;
    }

    sub_213D1E5E8(v11, v10, 0);
LABEL_28:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_213D6F51C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 48)
  {
    sub_213D1E468(v3, v17);
    sub_213D1E468(i, v16);
    sub_213D1E468(v17, v12);
    sub_213D1E468(v16, v13);
    if (v12[40])
    {
      break;
    }

    sub_213CDF5B8(v16);
    sub_213CDF5B8(v17);
    sub_213D1E468(v12, v11);
    if (v15)
    {
      goto LABEL_15;
    }

    v6 = v11[0];
    v7 = *&v13[0];
    sub_213CDF5B8(v12);
    if (v6 != v7)
    {
      return 0;
    }

LABEL_5:
    v3 += 48;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_213D1E468(v12, v11);
  if (v15)
  {
    v9[0] = v13[0];
    v9[1] = v13[1];
    v10 = v14;
    v5 = MEMORY[0x21604EEF0](v11, v9);
    sub_213CE2B7C(v9);
    sub_213CDF5B8(v16);
    sub_213CDF5B8(v17);
    sub_213CE2B7C(v11);
    sub_213CDF5B8(v12);
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  sub_213CDF5B8(v16);
  sub_213CDF5B8(v17);
  sub_213CE2B7C(v11);
LABEL_15:
  sub_213CD8330(v12, &unk_27C8ECC20, &unk_213D9B460);
  return 0;
}

char *sub_213D6F6B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD28, &qword_213D9B548);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_213D6F7F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213D6F914(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_213D6FAF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECCE8, &unk_213D9B520);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213D6FBFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD30, &qword_213D9B550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213D6FD44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC80, &qword_213D9B4B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_213D6FE48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8ECC38, &qword_213D9B478);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB4E0, &qword_213D9B480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213D6FFCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC98, &qword_213D9B4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213D700EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC78, &qword_213D9B4B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213D70210(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC58, &qword_213D9B498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213D70330(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8ECD00, &qword_213D98F88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_213D70434(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC48, &unk_213D9B488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC50, &unk_213D971F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213D70584(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8ECC68, &unk_213D9B4A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB1B0, &qword_213D97220);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213D706B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC88, &unk_213D9B4C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC90, &qword_213D97240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_213D70874(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_213D70A5C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_213D91FBC();
  sub_213D714BC(v15, a2);
  v6 = sub_213D91FFC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_213D6F51C(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *v2;

    sub_213D712AC(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v15[0];
    *a1 = a2;
    return 1;
  }
}

void sub_213D70B9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC18, &qword_213D9B458);
  v2 = *v0;
  v3 = sub_213D91D5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_213D70CEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC18, &qword_213D9B458);
  v4 = sub_213D91D6C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_213D91FBC();
      MEMORY[0x21604F190](*(v17 + 16));
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = v17 + 32;

        do
        {
          sub_213D1E468(v19, v36);
          sub_213D1E468(v36, v33);
          if (v35)
          {
            v31[0] = v33[0];
            v31[1] = v33[1];
            v32 = v34;
            MEMORY[0x21604F190](1);
            sub_213D91D3C();
            sub_213CE2B7C(v31);
          }

          else
          {
            v20 = *&v33[0];
            MEMORY[0x21604F190](0);
            MEMORY[0x21604F190](v20);
          }

          sub_213CDF5B8(v36);
          v19 += 48;
          --v18;
        }

        while (v18);
      }

      else
      {
      }

      v21 = sub_213D91FFC();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_35;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v29;
      v10 = v30;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_33;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v30 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

LABEL_33:
    *v2 = v5;
  }
}

void sub_213D70FBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC18, &qword_213D9B458);
  v4 = sub_213D91D6C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v2;
    v31 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    v32 = v4;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + 8 * (v18 | (v6 << 6)));
      sub_213D91FBC();
      MEMORY[0x21604F190](*(v21 + 16));
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v21 + 32;
        do
        {
          sub_213D1E468(v23, v38);
          sub_213D1E468(v38, v35);
          if (v37)
          {
            v33[0] = v35[0];
            v33[1] = v35[1];
            v34 = v36;
            MEMORY[0x21604F190](1);
            sub_213D91D3C();
            sub_213CE2B7C(v33);
          }

          else
          {
            v24 = *&v35[0];
            MEMORY[0x21604F190](0);
            MEMORY[0x21604F190](v24);
          }

          sub_213CDF5B8(v38);
          v23 += 48;
          --v22;
        }

        while (v22);
      }

      v13 = sub_213D91FFC();
      v5 = v32;
      v14 = -1 << *(v32 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v14) >> 6;
        while (++v16 != v26 || (v25 & 1) == 0)
        {
          v27 = v16 == v26;
          if (v16 == v26)
          {
            v16 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v16);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v16 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v32 + 48) + 8 * v17) = v21;
      ++*(v32 + 16);
      v3 = v31;
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_213D712AC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_213D70FBC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_213D70B9C();
      goto LABEL_12;
    }

    sub_213D70CEC(v6 + 1);
  }

  v8 = *v3;
  sub_213D91FBC();
  sub_213D714BC(v18, a1);
  v9 = sub_213D91FFC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {

      v13 = sub_213D6F51C(v12, a1);

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_213D91F7C();
  __break(1u);
}

uint64_t sub_213D7141C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_213D91EBC();
LABEL_9:
  result = sub_213D91DCC();
  *v2 = result;
  return result;
}

uint64_t sub_213D714BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21604F190](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      sub_213D1E468(v5, v12);
      sub_213D1E468(v12, v9);
      if (v11)
      {
        v7[0] = v9[0];
        v7[1] = v9[1];
        v8 = v10;
        MEMORY[0x21604F190](1);
        sub_213D91D3C();
        sub_213CE2B7C(v7);
      }

      else
      {
        v6 = *&v9[0];
        MEMORY[0x21604F190](0);
        MEMORY[0x21604F190](v6);
      }

      result = sub_213CDF5B8(v12);
      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_213D71594(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_213D91EBC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_213D91EBC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_213CEDCEC(&qword_27C8ECCF8, &qword_27C8ECCF0, &unk_213D9B530, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECCF0, &unk_213D9B530);
            v9 = sub_213D1DBE4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB160, &qword_213D97200);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213D71744(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_213D91EBC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_213D91EBC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_213CEDCEC(&qword_27C8ECD20, &qword_27C8ECD18, &qword_213D9B540, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD18, &qword_213D9B540);
            v9 = sub_213D1DB5C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213D718F4(uint64_t a1, uint64_t a2)
{
  sub_213D1E468(a1, v8);
  sub_213D1E468(a2, v9);
  if ((v8[40] & 1) == 0)
  {
    sub_213D1E468(v8, v7);
    if ((v11 & 1) == 0)
    {
      v3 = v7[0] == *&v9[0];
      goto LABEL_6;
    }

LABEL_8:
    sub_213CD8330(v8, &unk_27C8ECC20, &unk_213D9B460);
    v3 = 0;
    return v3 & 1;
  }

  sub_213D1E468(v8, v7);
  if (v11 != 1)
  {
    sub_213CE2B7C(v7);
    goto LABEL_8;
  }

  v5[0] = v9[0];
  v5[1] = v9[1];
  v6 = v10;
  v3 = MEMORY[0x21604EEF0](v7, v5);
  sub_213CE2B7C(v5);
  sub_213CE2B7C(v7);
LABEL_6:
  sub_213CDF5B8(v8);
  return v3 & 1;
}

uint64_t sub_213D719E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = sub_213D29DEC(a1, a2, a3);
  result = MEMORY[0x21604ECD0](v4, &type metadata for MapContentList.ID, v5);
  v10 = result;
  if (v4)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;

      sub_213D70A5C(&v9, v8);

      --v4;
    }

    while (v4);
    return v10;
  }

  return result;
}

uint64_t sub_213D71A68(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v20 = MEMORY[0x277D84F90];
    sub_213D4E8F4(0, v8, 0);
    v9 = v20;
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_213D4F304(v10, v7);
      v12 = *v7;

      sub_213D4F398(v7);
      v20 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_213D4E8F4((v13 > 1), v14 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 8 * v14 + 32) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  sub_213D719E0(v9, v4, v5);

  sub_213D29DEC(v15, v16, v17);
  sub_213D91B3C();

  return a1;
}

unint64_t sub_213D71C30()
{
  result = qword_27C8ECC60;
  if (!qword_27C8ECC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C8ECC60);
  }

  return result;
}

char *sub_213D71C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22[-1] - v5;
  v7 = sub_213D9100C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D723B4(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_213CD8330(v6, &qword_27C8EA180, &qword_213D94A40);
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_213D94520;
    sub_213D1E468(a2, v14 + 32);
    return v14;
  }

  v11 = (*(v8 + 32))(v10, v6, v7);
  sub_213CDF60C(v11, v12, v13);
  sub_213D9101C();
  v14 = v21;
  if (!v21)
  {
    (*(v8 + 8))(v10, v7);
    goto LABEL_10;
  }

  sub_213D1E468(a2, &v21);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_213D6F7F8(0, *(v14 + 16) + 1, 1, v14);
  }

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_213D6F7F8((v15 > 1), v16 + 1, 1, v14);
  }

  (*(v8 + 8))(v10, v7);
  *(v14 + 16) = v16 + 1;
  v17 = (v14 + 48 * v16);
  v18 = v21;
  v19 = v22[0];
  *(v17 + 57) = *(v22 + 9);
  v17[2] = v18;
  v17[3] = v19;
  return v14;
}

void *sub_213D71F08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
  v3 = *(type metadata accessor for MapContentList.Item(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v6);
  if (v4)
  {
    if ((result - v5) != 0x8000000000000000 || v4 != -1)
    {
      v6[2] = v1;
      v6[3] = 2 * ((result - v5) / v4);
      sub_213D4F304(a1 + v5, v6 + v5);
      v9 = v1 - 1;
      if (v9)
      {
        v10 = v4 + v5;
        do
        {
          sub_213D4F304(a1 + v10, v6 + v10);
          v10 += v4;
          --v9;
        }

        while (v9);
      }

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_213D720B0(uint64_t a1)
{
  result = type metadata accessor for ResolvedAnnotation(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ResolvedMarker(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ResolvedUserAnnotation(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_213D72170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213D721AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_213D721F8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_213D72268(uint64_t a1)
{
  result = type metadata accessor for MapContentList.Item.Content(319);
  if (v2 <= 0x3F)
  {
    result = sub_213D9100C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_213D72308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ECD58;
  if (!qword_27C8ECD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECD58);
  }

  return result;
}

unint64_t sub_213D72360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ECD60;
  if (!qword_27C8ECD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECD60);
  }

  return result;
}

uint64_t sub_213D723B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D72458@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = *(a1 + 48);
  v16 = *a2;
  v17 = *(a4 + 16);
  v18 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v18;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v15;
  *(a9 + 56) = v16;
  *(a9 + 64) = a3;
  *(a9 + 72) = *a4;
  *(a9 + 88) = v17;
  v19 = type metadata accessor for _DefaultAnnotatedMapContent(0, a8, a10, a11);
  v20 = *(v19 + 56);
  v21 = sub_213D91C7C();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a5, v21);
  v23 = (a9 + *(v19 + 60));
  *v23 = a6;
  v23[1] = a7;
  return result;
}

uint64_t _DefaultAnnotatedMapContent.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v5 = sub_213D91C7C();
  v6.n128_f64[0] = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = *v3;
  v22 = *(v3 + 8);
  v23 = v9;
  v10 = *(v3 + 16);
  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v20 = *(v3 + 40);
  v21 = v10;
  *&v29 = v9;
  *(&v29 + 1) = v22;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = v20;
  v13 = *(v3 + 56);
  v34 = *(v3 + 48);
  v28 = v13;
  v24 = *(v3 + 64);
  v15 = *(v3 + 80);
  v16 = *(v3 + 88);
  v26[0] = *(v3 + 72);
  v14 = v26[0];
  v26[1] = v15;
  v27 = v16;
  v17 = *(a1 - 1);
  (*(v17 + 16))(v8, v3, a1, v6);
  (*(v17 + 56))(v8, 0, 1, a1);
  sub_213D64710(v23, v22);
  sub_213D646D0(v14, v15);
  return sub_213D5DB84(&v29, &v28, v24, v26, v8, a1[2], a1[3], a1[4], v25);
}

double _DefaultMapContent.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v33 = *(v1 + 56);
  v32 = *(v1 + 64);
  v11 = *(v1 + 72);
  v10 = *(v1 + 80);
  v12 = *(v1 + 88);
  *(a1 + 56) = 0u;
  v13 = (a1 + 56);
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 144) = 0u;
  v14 = (a1 + 144);
  *(a1 + 136) = 1;
  *(a1 + 160) = 0u;
  v36 = v4;
  v37 = v3;
  v34 = v6;
  v35 = v5;
  sub_213D64710(v3, v4);
  v31 = v12;
  sub_213D646D0(v11, v10);
  if (qword_27C8E99F8 != -1)
  {
    swift_once();
  }

  *(a1 + 176) = qword_27C8ED488;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD78, &qword_213D9B750);
  v16 = v15[15];
  *(a1 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  swift_storeEnumTagMultiPayload();
  v17 = v15[16];
  *(a1 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v18 = a1 + v15[17];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v15[18];
  *(a1 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAF8, &qword_213D985A0);
  swift_storeEnumTagMultiPayload();
  v20 = a1 + v15[19];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35;
  *(a1 + 24) = v34;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 176) = v33;
  *(a1 + 184) = v32;
  if (v10)
  {
    sub_213D91AFC();

    v21 = sub_213D91AEC();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    *(v22 + 32) = v11;
    *(v22 + 40) = v10;
    *(v22 + 48) = v31;

    v24 = sub_213D91AEC();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    *(v25 + 32) = v11;
    *(v25 + 40) = v10;
    *(v25 + 48) = v31;
    type metadata accessor for MKUserTrackingMode(0);
    sub_213D9161C();
    sub_213D65068(v11, v10);
    v26 = v39;
    *(a1 + 192) = v38;
    *(a1 + 208) = v26;
  }

  v27 = v13[5];
  v42 = v13[4];
  v43 = v27;
  v44 = v13[6];
  v45 = *(v13 + 14);
  v28 = v13[1];
  v38 = *v13;
  v39 = v28;
  v29 = v13[3];
  v40 = v13[2];
  v41 = v29;
  sub_213D72B50(&v38);
  result = 0.0;
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  *(a1 + 136) = 1;
  *v14 = 0u;
  v14[1] = 0u;
  return result;
}

uint64_t sub_213D72A80(uint64_t a1)
{
  v2 = type metadata accessor for MapControlsConfig(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_213CEE7C8(a1, &v12 - v6);
  v8 = sub_213CEE7C8(v7, v4);
  sub_213D73334(v8, v9, v10);
  sub_213D90C2C();
  return sub_213CEE76C(v7);
}

uint64_t sub_213D72B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8ECD80, &qword_213D9B848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_213D72C20(uint64_t a1)
{
  sub_213D7314C(319, &qword_27C8ECE08, &qword_27C8EC548, &qword_213D9A230);
  if (v1 <= 0x3F)
  {
    sub_213D91C7C();
    if (v2 <= 0x3F)
    {
      sub_213D7314C(319, &qword_27C8EAB68, &unk_27C8EB4E0, &qword_213D9B480);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D72D18(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 89) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
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

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    v19 = (a1 + 79) & 0xFFFFFFFFFFFFFFF8;
    if (v6 > 0x7FFFFFFE)
    {
      v21 = (*(v4 + 48))((v19 + v8 + 17) & ~v8);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *(v19 + 8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      if ((v20 + 1) >= 2)
      {
        return v20;
      }

      else
      {
        return 0;
      }
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_213D72EB0(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 89) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 89) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 89) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 89) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = (a1 + 79) & 0xFFFFFFFFFFFFFFF8;
  if (v8 > 0x7FFFFFFE)
  {
    v20 = ((v19 + v10 + 17) & ~v10);
    if (v8 >= a2)
    {
      v24 = *(v6 + 56);
      v25 = a2 + 1;

      v24((v19 + v10 + 17) & ~v10, v25);
    }

    else
    {
      if (v11 <= 3)
      {
        v21 = ~(-1 << (8 * v11));
      }

      else
      {
        v21 = -1;
      }

      if (v11)
      {
        v22 = v21 & (~v8 + a2);
        if (v11 <= 3)
        {
          v23 = v11;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v11);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *v19 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(v19 + 8) = a2;
  }
}

void sub_213D7314C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_213D91C7C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVy08_MapKit_aB00D16UserTrackingModeOGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_213D731DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 80);
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

uint64_t sub_213D73238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2;
    }
  }

  return result;
}

unint64_t sub_213D732B4()
{
  result = qword_27C8ECE10;
  if (!qword_27C8ECE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ECD78, &qword_213D9B750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECE10);
  }

  return result;
}

unint64_t sub_213D73334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ECE18;
  if (!qword_27C8ECE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECE18);
  }

  return result;
}

uint64_t AnyMapContent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = *(v8 + 16);
  v13(v18 - v14, a1, a2, v12);
  if (swift_dynamicCast())
  {
    v16 = v18[1];
  }

  else
  {
    type metadata accessor for AnyViewStorage(0, a2, a3, v15);
    (v13)(v10, a1, a2);
    v16 = sub_213D7351C(v10);
  }

  result = (*(v8 + 8))(a1, a2);
  *a4 = v16;
  return result;
}

uint64_t sub_213D7351C(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 104) - 8) + 32))(v2 + *(*v2 + 120), a1);
  return v2;
}

uint64_t static AnyMapContent._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v43 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v39 = type metadata accessor for _MapContentOutputs.SetDependency(0);
  MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _MapContentOutputs(0);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECE20, &qword_213D9BA60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v35 - v10);
  v12 = type metadata accessor for AnyMapContent.Container(0);
  MEMORY[0x28223BE20](v12);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v35 - v15);
  v17 = type metadata accessor for _MapContentInputs.AddPreference(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  type metadata accessor for _MapContentInputs(0);
  sub_213D74B10(&qword_27C8EC7D8, type metadata accessor for _MapContentInputs.AddPreference, &unk_213D9431C);
  v41 = a2;
  sub_213D90F2C();
  v20 = v42;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v21 = sub_213D90FAC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 40);
  v24 = v20;
  v36 = v21;
  v23(v20, v19);
  (*(v8 + 16))(v11, v43, v7);
  if (v9 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v25 = *v11;
  (*(v8 + 8))(v11, v7);
  v26 = v24;
  v27 = v24;
  v28 = v40;
  sub_213D73B98(v27, v40, type metadata accessor for _MapContentOutputs);
  *v16 = v25;
  sub_213D73B98(v41, v16 + v12[5], type metadata accessor for _MapContentInputs);
  sub_213D73B34(v28, v16 + v12[6]);
  v29 = AGSubgraphGetCurrent();
  if (!v29)
  {
    goto LABEL_5;
  }

  *(v16 + v12[7]) = v29;
  v30 = v37;
  sub_213D73B98(v16, v37, type metadata accessor for AnyMapContent.Container);
  sub_213CDB9F8();
  sub_213D74B10(qword_27C8ECE28, type metadata accessor for AnyMapContent.Container, &unk_213D9BB88);
  v31 = sub_213D903EC();
  sub_213D74B58(v30, type metadata accessor for AnyMapContent.Container);
  v32 = v38;
  (*(v22 + 16))(v38, v26, v36);
  v33 = v32 + *(v39 + 20);
  *v33 = v31;
  *(v33 + 4) = 0;
  sub_213D74B10(qword_27C8EC7E0, type metadata accessor for _MapContentOutputs.SetDependency, &unk_213D942F4);
  sub_213D90F8C();
  sub_213D74B58(v32, type metadata accessor for _MapContentOutputs.SetDependency);
  return sub_213D74B58(v16, type metadata accessor for AnyMapContent.Container);
}

uint64_t type metadata accessor for AnyMapContent.Container(uint64_t a1)
{
  result = qword_27C8ECEB0;
  if (!qword_27C8ECEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213D73B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentOutputs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D73B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_213D73C0C()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for _MapContentOutputs.ResetPreference(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v19[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *AGGraphGetValue();
  OutputValue = AGGraphGetOutputValue();
  if (!OutputValue)
  {

    v6 = 0;
    v7 = 0;
    goto LABEL_5;
  }

  v6 = *OutputValue;
  v7 = OutputValue[1];
  v8 = (*(**OutputValue + 80))();
  if (v8 != (*(*v4 + 80))())
  {
    v9 = *(type metadata accessor for AnyMapContent.Container(0) + 24);
    v10 = sub_213D90FAC();
    (*(*(v10 - 8) + 16))(v3, v0 + v9, v10);
    sub_213D74B10(&qword_27C8ECA68, type metadata accessor for _MapContentOutputs.ResetPreference, &unk_213D94454);
    swift_retain_n();
    v11 = v7;

    v12 = v11;
    sub_213D90F8C();
    sub_213D74B58(v3, type metadata accessor for _MapContentOutputs.ResetPreference);
    AGSubgraphInvalidate();

LABEL_5:
    v19[0] = v4;
    sub_213D73F00(v19, &v20);
    v13 = v21;
    v19[0] = v20;
    v19[1] = v21;
    AGGraphSetOutputValue();

    sub_213D74AD0(v6, v7);

LABEL_8:

    return;
  }

  v14 = AGGraphGetOutputValue();
  if (v14)
  {
    v15 = *(v14 + 8);

    v16 = v7;
    v17 = v15;
    v20 = v4;
    v21 = v17;
    AGGraphSetOutputValue();

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_213D73F00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v27 = type metadata accessor for _MapContentOutputs.SetSource(0);
  MEMORY[0x28223BE20](v27);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _MapContentOutputs(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = type metadata accessor for AnyMapContent.Container(0);
  v17 = AGSubgraphGetGraph();
  v18 = AGSubgraphCreate();

  AGSubgraphAddChild();
  v19 = v2 + *(v16 + 20);
  v26[0] = v14;
  sub_213D73B98(v19, v14, type metadata accessor for _MapContentInputs);
  sub_213D73B98(v2 + *(v16 + 24), v11, type metadata accessor for _MapContentOutputs);
  v26[1] = AGGraphClearUpdate();
  v20 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  (*(*v15 + 88))(*v2, v14);
  v21 = sub_213D90FAC();
  v22 = *(*(v21 - 8) + 16);
  v22(v5, v11, v21);
  v22(&v5[*(v27 + 20)], v8, v21);
  sub_213D74B10(qword_27C8ECA70, type metadata accessor for _MapContentOutputs.SetSource, &unk_213D9442C);
  sub_213D90F8C();
  sub_213D74B58(v5, type metadata accessor for _MapContentOutputs.SetSource);
  sub_213D74B58(v8, type metadata accessor for _MapContentOutputs);
  v23 = v28;
  *v28 = v15;
  v23[1] = v18;

  v24 = v18;
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  sub_213D74B58(v11, type metadata accessor for _MapContentOutputs);
  return sub_213D74B58(v26[0], type metadata accessor for _MapContentInputs);
}

uint64_t sub_213D74318@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v23 = a2;
  v33 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  v6 = *(*v3 + 104);
  v7 = sub_213D9057C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = *(v5 + 112);
  v25 = a1;
  v30 = v6;
  v13 = type metadata accessor for AnyViewStorage.AnyMapContentChild(0, v6, v11, v12);
  v31 = v13;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_213D903FC();
  v15 = MEMORY[0x277D84A98];
  v16 = MEMORY[0x277D84AC0];
  sub_213CDDDA4(&v25, sub_213D6D308, v29, v13, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v17);
  v18 = v24;
  v19 = *(*v3 + 120);
  v27 = v6;
  v28 = v24;
  sub_213CDDDA4(v3 + v19, sub_213D49914, v26, v6, v15, MEMORY[0x277D839B0], v16, v20);
  sub_213CDF770(v18, v10);
  (*(v11 + 32))(v10, v23, v6, v11);
  return (*(v8 + 8))(v10, v7);
}

double sub_213D74570(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  AGGraphGetValue();
  type metadata accessor for AnyViewStorage(0, v2, v3, v4);

  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(*v5 + 120);
    MEMORY[0x28223BE20](v5);
    v11[2] = a1;
    v8 = v7;
    v11[3] = swift_getWitnessTable();
    sub_213CDDDA4(v8 + v6, sub_213D6DBDC, v11, v2, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v9);
  }

  else
  {
  }

  return result;
}

uint64_t sub_213D74730()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_213D748B8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_213D74984(uint64_t a1)
{
  sub_213D74A38();
  if (v1 <= 0x3F)
  {
    type metadata accessor for _MapContentInputs(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for _MapContentOutputs(319);
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

void sub_213D74A38()
{
  if (!qword_27C8ECEC0[0])
  {
    v0 = sub_213D903FC();
    if (!v1)
    {
      atomic_store(v0, qword_27C8ECEC0);
    }
  }
}

void sub_213D74AD0(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_213D74B10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213D74B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213D74BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213D74C28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v20 - v8;
  v12 = type metadata accessor for _EnvironmentKeyWritingMapContentModifier(0, v6, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v20 - v15);
  (*(v7 + 16))(v9, a2, v6, v14);
  sub_213D772A8(a1, v9, v17, v18, v16);

  MapContent.modifier<A>(_:)(v16, a3, v12);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_213D74DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v21 - v12;
  v15 = type metadata accessor for _TraitWritingMapContentModifier(0, a4, a6, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v21 - v18;
  (*(v11 + 16))(v13, a2, AssociatedTypeWitness, v17);
  (*(v11 + 32))(v19, v13, AssociatedTypeWitness);
  MapContent.modifier<A>(_:)(v19, a3, v15);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_213D74FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v28 = a3;
  v26 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C28, &qword_213D94200);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C98, &qword_213D9BED0);
  v13 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v15 = &v26 - v14;
  v16 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_213D9106C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D9107C();
  sub_213CD6B10(a2, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED0D0, &qword_213D9BED8);
  sub_213D78298();
  sub_213D90C9C();
  sub_213D74FD8(v15, v18, v28, a4, v27);
  sub_213CD70D4(v12, v9);
  v23 = sub_213D910DC();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v9, 1, v23) == 1)
  {
    sub_213CD8330(v12, &qword_27C8E9C28, &qword_213D94200);
    (*(v13 + 8))(v15, v29);
    sub_213CD7144(v18);
    (*(v20 + 8))(v22, v19);
    return sub_213CD8330(v9, &qword_27C8E9C28, &qword_213D94200);
  }

  else
  {
    sub_213D910CC();
    sub_213CD8330(v12, &qword_27C8E9C28, &qword_213D94200);
    (*(v13 + 8))(v15, v29);
    sub_213CD7144(v18);
    (*(v20 + 8))(v22, v19);
    return (*(v24 + 8))(v9, v23);
  }
}

uint64_t static _MapContentModifier._makeMapContent(modifier:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a3;
  v36 = a4;
  v32[1] = a1;
  v34 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C28, &qword_213D94200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_213D9057C();
  v37 = *(v17 - 8);
  v38 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v32 - v18;
  v20 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_213D9106C();
  v23 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D9107C();
  sub_213CD6B10(a2, v22);
  type metadata accessor for MapContentModifierBodyAccessor(0, a5, a6, v26);
  swift_getWitnessTable();
  sub_213D90C9C();
  v27 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v19, v22, v35, v36, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_213CD70D4(v15, v12);
  v29 = sub_213D910DC();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    sub_213CD8330(v15, &qword_27C8E9C28, &qword_213D94200);
    (*(v37 + 8))(v19, v38);
    sub_213CD7144(v22);
    (*(v23 + 8))(v25, v33);
    return sub_213CD8330(v27, &qword_27C8E9C28, &qword_213D94200);
  }

  else
  {
    sub_213D910CC();
    sub_213CD8330(v15, &qword_27C8E9C28, &qword_213D94200);
    (*(v37 + 8))(v19, v38);
    sub_213CD7144(v22);
    (*(v23 + 8))(v25, v33);
    return (*(v30 + 8))(v27, v29);
  }
}

uint64_t static _MapContentModifier._mapContentCount(inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(a1, a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_213D758BC(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x28223BE20](result);
    type metadata accessor for MapContentModifierBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable();
    return sub_213D90C8C();
  }

  return result;
}

uint64_t static ModifiedContent<>._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a3;
  v24 = a5;
  v26 = a7;
  v27 = a2;
  sub_213D908CC();
  v11 = sub_213D9057C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v25 = sub_213D9057C();
  v15 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v17 = &v22 - v16;
  v28 = a3;
  v29 = a4;
  v18 = v24;
  v30 = v24;
  v31 = a6;
  sub_213D514F4(sub_213D75C94, v11, a4, &v22 - v16);
  (*(v12 + 16))(v14, a1, v11);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v23;
  *(v20 + 3) = a4;
  *(v20 + 4) = v18;
  *(v20 + 5) = a6;
  (*(v12 + 32))(&v20[v19], v14, v11);
  (*(a6 + 32))(v17, v27, sub_213D75E08, v20, a4, a6);

  return (*(v15 + 8))(v17, v25);
}

uint64_t sub_213D75BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_213D908CC();
  v6 = *(v5 + 36);
  v10[2] = v5;
  v10[3] = a3;
  v7 = sub_213D9041C();
  sub_213D48E14(a1 + v6, sub_213CF3D4C, v10, a3, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
  return v10[5];
}

uint64_t sub_213D75CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_213D9057C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17[-v13];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  sub_213D908CC();
  v15 = sub_213D9057C();
  sub_213D514F4(sub_213D782FC, v15, a3, v14);
  (*(a5 + 32))(v14, a1, a3, a5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_213D75E08(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  sub_213D908CC();
  v7 = *(sub_213D9057C() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_213D75CA0(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_213D75EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = sub_213D908CC();
  v8[3] = a2;
  v5 = sub_213D9041C();
  sub_213D48E14(a1, sub_213CF3B70, v8, a2, MEMORY[0x277D84A98], v5, MEMORY[0x277D84AC0], v6);
  return v8[5];
}

uint64_t static ModifiedContent<>._mapContentCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = (*(a5 + 40))(a1, sub_213D7600C, v10, a3, a5);

  return v11;
}

uint64_t MapContent.modifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, a2, v10);
  (*(v6 + 16))(v8, a1, a3);
  return sub_213D908AC();
}

uint64_t sub_213D7621C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D76298(uint64_t a1, uint64_t a2, void *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213D76348(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213D763C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_213D7655C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t sub_213D767A0(uint64_t a1)
{
  sub_213D90C0C();
  result = sub_213D91E7C();
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

uint64_t sub_213D7683C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void sub_213D769C0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_213D76C28(unsigned int *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for _MapContentInputs(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CD6B10(a2, v14);
  v16 = type metadata accessor for _TraitWritingMapContentModifier(0, a5, a6, v15);
  v17 = sub_213CDF810(a1, v16);
  v18 = *(a2 + *(v12 + 36));
  v25[0] = v17;
  v25[1] = v18;
  v20 = type metadata accessor for _TraitWritingMapContentModifier.AddTrait(0, a5, a6, v19);
  v27 = v20;
  WitnessTable = swift_getWitnessTable();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8E9FF8, &unk_213D94800);
  sub_213CDDDA4(v25, sub_213D781DC, v26, v20, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v22);
  *&v14[*(v12 + 36)] = v24[5];
  a3(v14);
  return sub_213CD7144(v14);
}

uint64_t sub_213D76E14@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for _TraitWritingMapContentModifier(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

uint64_t sub_213D76E9C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = HIDWORD(a1);
  v4 = *MEMORY[0x277CEF7D0];
  v5 = sub_213D9100C();
  v6 = v5;
  if (v4 == v3)
  {
    v7 = *(v5 - 8);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v12 = *(v6 - 8);
    (*(v12 + 16))(a2, Value, v6);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a2, v8, 1, v6);
}

uint64_t sub_213D76FC0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v22 - v8;
  v11 = type metadata accessor for _TraitWritingMapContentModifier(0, a2, a3, v10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  v25 = a1;
  sub_213D76E9C(a1, &v22 - v15);
  v17 = sub_213D9100C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v16, 1, v17) == 1)
  {
    sub_213D90FFC();
    if (v19(v16, 1, v17) != 1)
    {
      sub_213CD8330(v16, &qword_27C8EA180, &qword_213D94A40);
    }
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
  }

  sub_213D76E14(a2, a3, v20, v13);
  (*(v7 + 32))(v9, v13, AssociatedTypeWitness);
  return sub_213D9102C();
}

uint64_t sub_213D772A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v7 = *a1;
  *a5 = a1;
  v8 = *(v7 + *MEMORY[0x277D84308] + 8);
  v9 = type metadata accessor for _EnvironmentKeyWritingMapContentModifier(0, v8, a3, a4);
  v10 = *(*(v8 - 8) + 32);
  v11 = a5 + *(v9 + 28);

  return v10(v11, a2, v8);
}

uint64_t sub_213D77360@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a4;
  v39 = a3;
  v40 = a1;
  v37 = a6;
  v42 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for _EnvironmentKeyWritingMapContentModifier(255, a5, a3, a4);
  v9 = sub_213D91C7C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v12 = *(v36 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v36);
  v15 = (&v34 - v14);
  v18 = type metadata accessor for ChildEnvironment(0, a5, v16, v17);
  v35 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  v21 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213CD6B10(a2, v23);
  v24 = sub_213CDF810(v40, v8);
  sub_213D90C3C();
  if (v13 != 4)
  {
    __break(1u);
  }

  v25 = *v15;
  v26 = v36;
  (*(v12 + 8))(v15, v36);
  v29 = type metadata accessor for _EnvironmentKeyWritingMapContentModifier(0, a5, v27, v28);
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  v30 = sub_213D77734(v24, v25, v11, a5, v20);
  MEMORY[0x28223BE20](v30);
  *(&v34 - 2) = v18;
  *(&v34 - 1) = swift_getWitnessTable();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED0C8, &unk_213D9BEC0);
  sub_213CDDDA4(v20, sub_213D78184, (&v34 - 4), v18, MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v32);
  (*(v35 + 8))(v20, v18);
  (*(v12 + 16))(v15, &v41, v26);
  sub_213D90C4C();
  v39(v23);
  return sub_213CD7144(v23);
}

uint64_t sub_213D77734@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v9 = *(type metadata accessor for ChildEnvironment(0, a4, a3, a4) + 32);
  type metadata accessor for _EnvironmentKeyWritingMapContentModifier(255, a4, v10, v11);
  v12 = sub_213D91C7C();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v9], a3, v12);
}

uint64_t sub_213D77828(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v58 = a1;
  v2 = *(a1 + 16);
  v55 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v54 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED1E8, &unk_213D9C090);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - v6;
  v10 = type metadata accessor for _EnvironmentKeyWritingMapContentModifier(255, v2, v8, v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = &v49 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v19 = *(v18 + 48);
  Value = AGGraphGetValue();
  v22 = v21;
  v23 = *(v10 - 8);
  v24 = *(v23 + 16);
  v57 = v10;
  v24(v17, Value, v10);
  v25 = v22 & 1;
  v17[v19] = v22 & 1;
  v26 = *(v5 + 56);
  v59 = v1;
  v27 = sub_213D90C0C();
  v28 = AGGraphGetValue();
  LOBYTE(v5) = v29;
  v30 = (*(*(v27 - 8) + 16))(v7, v28, v27);
  v56 = v7;
  v7[v26] = v5 & 1;
  if (v5 & 1) != 0 || v25 && ((MEMORY[0x28223BE20](v30), *(&v49 - 2) = v2, *(&v49 - 1) = v17, sub_213D91C7C(), sub_213CF3D9C(sub_213D788E4, (&v49 - 4), MEMORY[0x277D84A98], MEMORY[0x277D839B0], v32, &v62), v62 == 2) || (v62) || !AGGraphGetOutputValue())
  {
    v50 = v2;
    v33 = v60;
    v34 = *(v61 + 16);
    v34(v60, v17, TupleTypeMetadata2);
    v51 = v34;
    v52 = v23;
    v35 = TupleTypeMetadata2;
    v36 = *(v23 + 8);

    v37 = v33;
    v38 = v57;
    v36(v37, v57);
    v39 = v53;
    v34(v53, v17, v35);
    v40 = *(v55 + 16);
    v41 = &v39[*(v38 + 28)];
    v55 = v27;
    v40(v54, v41, v50);
    v36(v39, v38);
    TupleTypeMetadata2 = v35;
    v42 = v56;
    swift_setAtWritableKeyPath();

    AGGraphSetOutputValue();
    sub_213CD8330(v42, &qword_27C8ED1E8, &unk_213D9C090);
    v43 = *(v58 + 32);
    v44 = sub_213D91C7C();
    v45 = v59;
    (*(*(v44 - 8) + 8))(v59 + v43, v44);
    v46 = v60;
    v51(v60, v17, TupleTypeMetadata2);
    v31 = v61;
    v47 = v52;
    (*(v52 + 32))(v45 + v43, v46, v38);
    (*(v47 + 56))(v45 + v43, 0, 1, v38);
  }

  else
  {
    sub_213CD8330(v56, &qword_27C8ED1E8, &unk_213D9C090);
    v31 = v61;
  }

  return (*(v31 + 8))(v17, TupleTypeMetadata2);
}

void sub_213D77DB4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v33 = a4;
  v32 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _EnvironmentKeyWritingMapContentModifier(255, v8, v8, v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = v27 - v14;
  v31 = a1;
  v35 = *a1;
  v16 = *(v12 + 16);
  v29 = a2;
  v16(v27 - v14, a2, TupleTypeMetadata2, v13);
  v17 = *v15;
  v18 = *(v10 - 8);
  v19 = *(v18 + 8);
  v20 = v18 + 8;

  v27[1] = v20;
  v28 = v19;
  v19(v15, v10);
  v34 = v17;
  sub_213D90C0C();
  sub_213D91E7C();
  LOBYTE(v20) = sub_213D918DC();

  if (v20)
  {
    v21 = *(v10 + 28);
    (v16)(v15, v29, TupleTypeMetadata2);
    v22 = v32;
    v23 = v30;
    (*(v32 + 16))(v30, &v15[*(v10 + 28)], a3);
    v24 = v28(v15, v10);
    MEMORY[0x28223BE20](v24);
    v27[-4] = a3;
    v27[-3] = v23;
    LODWORD(v27[-2]) = 2;
    sub_213CDDDA4(v31 + v21, sub_213D78904, &v27[-6], a3, MEMORY[0x277D84A98], MEMORY[0x277D839B0], MEMORY[0x277D84AC0], v25);
    LOBYTE(v21) = v35;
    (*(v22 + 8))(v23, a3);
    v26 = v21 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  *v33 = v26 & 1;
}

uint64_t sub_213D78108@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_213D7821C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = a3(0);
  return a4(a1, v10, v9, v8, a2);
}

unint64_t sub_213D78298()
{
  result = qword_27C8ED0D8[0];
  if (!qword_27C8ED0D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED0D0, &qword_213D9BED8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8ED0D8);
  }

  return result;
}

uint64_t sub_213D78308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_213D78344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _EnvironmentKeyWritingMapContentModifier(255, *(a1 + 16), a3, a4);
  sub_213D903FC();
  if (v4 <= 0x3F)
  {
    sub_213D78854(319);
    if (v5 <= 0x3F)
    {
      sub_213D91C7C();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213D783F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = v6 | 7;
  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v9 = *(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
  v10 = 8 * v9;
  if (v9 > 3)
  {
    goto LABEL_7;
  }

  v13 = (((1 << v10) + a2 - v7) >> v10) + 1;
  if (HIWORD(v13))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_28:
    v17 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8);
    if ((v5 & 0x80000000) != 0)
    {
      v19 = (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v19 = v18 + 1;
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 > 0xFF)
  {
    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v13 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (*(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) == 2)
  {
    v16 = 0;
  }

  else
  {
    if (v9 <= 3)
    {
      v15 = *(*(*(a3 + 16) - 8) + 64) - (((-9 - v6) | v6) + ((-9 - v6) | v8)) - 2;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v16 = *a1;
      }
    }

    else if (v15 == 1)
    {
      v16 = *a1;
    }

    else
    {
      v16 = *a1;
    }
  }

  return (v16 | v14) + v7;
}

void sub_213D785D4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(*(a4 + 16) - 8) + 64) + ((v10 + 8) & ~(v10 | 7));
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = ((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + (v10 | 7) + 4) & ~(v10 | 7));
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

void sub_213D78854(uint64_t a1)
{
  if (!qword_27C8ED1E0)
  {
    sub_213D90C0C();
    v1 = sub_213D903FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8ED1E0);
    }
  }
}

uint64_t sub_213D78904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v13 = *(v8 + 16);
  v14 = a1;
  v15 = v10;
  return sub_213CDDDA4(v9, sub_213D78968, &v12, v13, MEMORY[0x277D84A98], MEMORY[0x277D839B0], MEMORY[0x277D84AC0], a8);
}

uint64_t sub_213D78968@<X0>(_BYTE *a2@<X8>)
{
  result = AGCompareValues();
  *a2 = result;
  return result;
}

unint64_t sub_213D789A8(uint64_t a1)
{
  sub_213D91D8C();

  v1 = sub_213D9205C();
  MEMORY[0x21604EB30](v1);

  return 0xD000000000000014;
}

uint64_t MapZoomStepper.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  result = swift_getKeyPath();
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2 & 1;
  return result;
}

uint64_t MapZoomStepper.body.getter@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED1F0, &unk_213D9C0F0);
  MEMORY[0x28223BE20](v35);
  v3 = &v30[-v2];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  MEMORY[0x28223BE20](v36);
  v33 = &v30[-v4];
  v5 = type metadata accessor for MapControlsConfig(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_213D90C0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *v1;
  v34 = *(v1 + 8);
  v13 = *(v1 + 16);
  LODWORD(v10) = *(v1 + 24);
  v32 = *(v1 + 32);
  v31 = *(v1 + 40);
  if (v10 == 1)
  {
    v14 = v13;
  }

  else
  {

    sub_213D91BDC();
    v15 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v13, 0);
    (*(v9 + 8))(v11, v8);
    v14 = v41;
  }

  if (v14 == 3)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  v17 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = v5[5];
  v19 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v19 - 8) + 56))(&v7[v18], 1, 1, v19);
  v20 = v5[6];
  v21 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v21 - 8) + 56))(&v7[v20], 1, 1, v21);
  v22 = v5[7];
  v23 = type metadata accessor for MapCompassConfig(0);
  (*(*(v23 - 8) + 56))(&v7[v22], 1, 1, v23);
  *&v7[v5[8]] = (v16 << 8) | 1;
  *&v7[v5[9]] = 2;
  *&v7[v5[10]] = 2;
  if (!v34)
  {

    sub_213D91BDC();
    v26 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v12, 0);
    (*(v9 + 8))(v11, v8);
    if (v40 != 1)
    {
      goto LABEL_9;
    }

LABEL_11:
    v27 = sub_213D9149C();
    v28 = v33;
    sub_213CEE7C8(v7, v33 + *(v36 + 36));
    *v28 = v27;
    sub_213CEE82C(v28, v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED1F8, &unk_213D9C128);
    sub_213CE189C();
    sub_213D79004();
    sub_213D90E5C();
    sub_213CEE89C(v28);
    return sub_213CEE76C(v7);
  }

  if (v12)
  {
    goto LABEL_11;
  }

LABEL_9:
  KeyPath = swift_getKeyPath();
  v39 = 0;
  v25 = v31;
  v38 = v31;
  *v3 = KeyPath;
  v3[8] = 0;
  *(v3 + 2) = v32;
  v3[24] = v25;
  v3[25] = 1;
  v3[26] = v16;
  *(v3 + 27) = 257;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ED1F8, &unk_213D9C128);
  sub_213CE189C();
  sub_213D79004();
  sub_213D90E5C();
  return sub_213CEE76C(v7);
}

unint64_t sub_213D79004()
{
  result = qword_27C8ED200;
  if (!qword_27C8ED200)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED1F8, &unk_213D9C128);
    sub_213D79090(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED200);
  }

  return result;
}

unint64_t sub_213D79090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ED208;
  if (!qword_27C8ED208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED208);
  }

  return result;
}

unint64_t sub_213D79110()
{
  result = qword_27C8ED210;
  if (!qword_27C8ED210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED218, &qword_213D9C258);
    sub_213CE189C();
    sub_213D79004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ED210);
  }

  return result;
}

void __swiftcall MapCamera.init(_:)(_MapKit_SwiftUI::MapCamera *__return_ptr retstr, MKMapCamera a2)
{
  [(objc_class *)a2.super.isa centerCoordinate];
  v5 = v4;
  v7 = v6;
  [(objc_class *)a2.super.isa centerCoordinateDistance];
  v9 = v8;
  [(objc_class *)a2.super.isa heading];
  v11 = v10;
  [(objc_class *)a2.super.isa pitch];
  v13 = v12;

  retstr->centerCoordinate.latitude = v5;
  retstr->centerCoordinate.longitude = v7;
  retstr->distance = v9;
  retstr->heading = v11;
  retstr->pitch = v13;
}

void sub_213D79274(void *a1@<X8>, double a2@<D4>, double a3@<D5>)
{
  v6 = MEMORY[0x21604F420]();
  v10 = [objc_opt_self() _cameraLookingAtMapRect_forViewSize_];
  if (v10)
  {
    v11 = v10;
    [v10 centerCoordinate];
    v13 = v12;
    v15 = v14;
    [v11 centerCoordinateDistance];
    v17 = v16;
    [v11 heading];
    v19 = v18;
    [v11 pitch];
    v21 = v20;

    *a1 = v13;
    a1[1] = v15;
    a1[2] = v17;
    a1[3] = v19;
    a1[4] = v21;
  }

  else
  {
    __break(1u);
  }
}

void sub_213D7936C(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  v8 = [objc_opt_self() _cameraLookingAtMapRect_forViewSize_];
  if (v8)
  {
    v9 = v8;
    [v8 centerCoordinate];
    v11 = v10;
    v13 = v12;
    [v9 centerCoordinateDistance];
    v15 = v14;
    [v9 heading];
    v17 = v16;
    [v9 pitch];
    v19 = v18;

    *a1 = v11;
    a1[1] = v13;
    a1[2] = v15;
    a1[3] = v17;
    a1[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall MapCamera.init(centerCoordinate:distance:heading:pitch:)(_MapKit_SwiftUI::MapCamera *__return_ptr retstr, __C::CLLocationCoordinate2D centerCoordinate, Swift::Double distance, Swift::Double heading, Swift::Double pitch)
{
  retstr->centerCoordinate.latitude = centerCoordinate.latitude;
  retstr->centerCoordinate.longitude = centerCoordinate.longitude;
  retstr->distance = distance;
  retstr->heading = heading;
  retstr->pitch = pitch;
}

__n128 sub_213D79538@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  return result;
}

__n128 sub_213D79548@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = 1;
  return result;
}

uint64_t MapCameraBounds.init(centerCoordinateBounds:minimumDistance:maximumDistance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  return sub_213D795CC(a1, a2, a3, a4, type metadata accessor for MKCoordinateRegion, &qword_27C8ED220, type metadata accessor for MKCoordinateRegion, &unk_213D9C3D4, a5, a6, a7, a8, a9);
}

{
  return sub_213D795CC(a1, a2, a3, a4, type metadata accessor for MKMapRect, &qword_27C8ED228, type metadata accessor for MKMapRect, &unk_213D9C3B8, a5, a6, a7, a8, a9);
}

uint64_t sub_213D795CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t (*a5)(void)@<X4>, unint64_t *a6@<X5>, uint64_t (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>)
{
  *(a9 + 32) = 0;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  v27[3] = a5(0);
  v27[4] = sub_213D797E8(a6, a7, a8);
  v25 = swift_allocObject();
  v27[0] = v25;
  v25[2] = a10;
  v25[3] = a11;
  v25[4] = a12;
  v25[5] = a13;
  result = sub_213D79778(v27, a9);
  *(a9 + 40) = a1;
  *(a9 + 48) = a2 & 1;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4 & 1;
  return result;
}

double MapCameraBounds.init(minimumDistance:maximumDistance:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  sub_213D79830(a5);
  result = 0.0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0;
  *(a5 + 40) = a1;
  *(a5 + 48) = a2 & 1;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4 & 1;
  return result;
}

uint64_t sub_213D79778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC0, &qword_213D98578);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D797E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213D79830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC0, &qword_213D98578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI0A12CameraRegion_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_213D7991C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_213D79978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 static MapCameraPosition.camera(_:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = swift_allocObject();
  result = *a1;
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  *(v5 + 48) = v4;
  *a2 = v5 | 0x6000000000000000;
  return result;
}

void MapCameraPosition.camera.getter(uint64_t a1@<X8>)
{
  v2 = *v1 & 0xE000000000000000;
  if (v2 == 0x6000000000000000)
  {
    v4 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v3 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  }

  else
  {
    v3 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  *(a1 + 40) = v2 != 0x6000000000000000;
}

unint64_t static MapCameraPosition.userLocation(followsHeading:fallback:)@<X0>(char a1@<W0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;
  *a3 = v6 | 0x8000000000000000;

  return sub_213D1DFC0(v5);
}

uint64_t sub_213D79B18(unint64_t a1, double *a2)
{
  while (1)
  {
    v2 = a1 >> 61;
    if (a1 >> 61 != 4)
    {
      break;
    }

    if (a2 >> 61 != 4 || *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
    {
      return 0;
    }

    a1 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    a2 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (a2 >> 61 == 2)
      {
        v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        return [*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) isEqual_] & (v4 ^ v5 ^ 1);
      }

      return 0;
    }

    if (v2 == 3)
    {
      if (a2 >> 61 == 3 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10), *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10)), vceqq_f64(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x28), *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28))))) & 1) != 0)
      {
        return *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      }

      return 0;
    }

    if (a1 == 0xA000000000000000)
    {
      if (a2 == 0xA000000000000000)
      {
        return 1;
      }
    }

    else if (a2 == 0xA000000000000008)
    {
      return 1;
    }

    return 0;
  }

  if (!v2)
  {
    if (!(a2 >> 61) && vabdd_f64(*(a1 + 16), a2[2]) < 0.00000000999999994 && vabdd_f64(*(a1 + 24), a2[3]) < 0.00000000999999994 && vabdd_f64(*(a1 + 32), a2[4]) < 0.00000000999999994)
    {
      return vabdd_f64(*(a1 + 40), a2[5]) < 0.00000000999999994;
    }

    return 0;
  }

  if (a2 >> 61 != 1)
  {
    return 0;
  }

  if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) || *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
  {
    return 0;
  }

  return *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x28) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28) && *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
}

double *static MapCameraPosition.region(_:)@<X0>(double **a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  *a1 = result;
  return result;
}

uint64_t static MapCameraPosition.rect(_:)@<X0>(unint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *a1 = result | 0x2000000000000000;
  return result;
}

id static MapCameraPosition.item(_:allowsAutomaticPitch:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *a3 = v5 | 0x4000000000000000;

  return a1;
}

void MapCameraPosition.region.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = 0uLL;
  v4 = *v1 >> 61;
  v5 = 0uLL;
  if (!v4)
  {
    v3 = *(v2 + 16);
    v5 = *(v2 + 32);
  }

  *a1 = v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4 != 0;
}

void MapCameraPosition.rect.getter(uint64_t a1@<X8>)
{
  v2 = *v1 & 0xE000000000000000;
  v3 = 0uLL;
  v4 = 0uLL;
  if (v2 == 0x2000000000000000)
  {
    v3 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v4 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2 != 0x2000000000000000;
}

void *MapCameraPosition.item.getter()
{
  if (*v0 >> 61 != 2)
  {
    return 0;
  }

  v1 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = v1;
  return v1;
}

uint64_t MapCameraPosition.followsUserHeading.getter()
{
  if (*v0 >> 61 == 4)
  {
    return *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    return 0;
  }
}

unint64_t MapCameraPosition.fallbackPosition.getter@<X0>(unint64_t *a1@<X8>)
{
  if (*v1 >> 61 == 4)
  {
    v3 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    result = sub_213D1DFC0(v3);
  }

  else
  {
    v3 = 0xF000000000000007;
  }

  *a1 = v3;
  return result;
}

uint64_t MapCameraPosition.allowsAutomaticPitch.getter()
{
  if (*v0 >> 61 == 2)
  {
    return *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213D79F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_213D79FF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_213D7A054(void *result, uint64_t a2)
{
  if (a2 < 5)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  return result;
}

MKMapConfiguration __swiftcall MapStyle.configuration()()
{
  v1 = *(v0 + 16);
  if (v1 == 1)
  {
    if ((*(v0 + 48) & 1) == 0)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CD4E10]);
      v5 = sel_initWithElevationStyle_;

      return [v4 v5];
    }

    v2 = *(v0 + 64);
    if (*(v0 + 64) == 1)
    {
      v3 = *(v0 + 136);
      if (v3 == 2)
      {
        v4 = objc_allocWithZone(MEMORY[0x277CD4F50]);
        v5 = sel_init;

        return [v4 v5];
      }

      v15 = *(v0 + 104);
      v16 = *(v0 + 88);
      v10 = *(v0 + 120);
      v11 = *(v0 + 128);
      v12 = *(v0 + 144);
      v13 = *(v0 + 145);
      *v17 = v16;
      *&v17[16] = v15;
      v18 = v10;
      v19 = v11;
      v20 = v3 & 1;
      v14 = [objc_allocWithZone(MEMORY[0x277CD4F90]) initWithCartographicConfiguration_];
      [v14 setShowsTraffic_];
      [v14 setShowsHiking_];
      return v14;
    }

    else
    {
      v9 = *(v0 + 80);
      *v17 = *(v0 + 56);
      *&v17[8] = v2;
      v17[24] = v9 & 1;
      return sub_213D7AC08();
    }
  }

  else
  {
    v7 = *(v0 + 32);
    v8 = *(v0 + 24);
    *v17 = *v0;
    *&v17[16] = v1;
    *&v17[24] = v8;
    LOWORD(v18) = v7 & 0x101;
    return sub_213D7AAB0();
  }
}

double static MapStyle.standard.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = xmmword_213D99630;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0;
  return result;
}

double static MapStyle.hybrid.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_213D98BB0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = MEMORY[0x277D84F90];
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0;
  return result;
}

double static MapStyle.imagery(elevation:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = xmmword_213D98BB0;
  *(a2 + 32) = 0;
  *(a2 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = xmmword_213D99630;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  result = 0.0;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 2;
  *(a2 + 144) = 0;
  return result;
}

uint64_t static MapStyle.standard(elevation:emphasis:pointsOfInterest:showsTraffic:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v8 = *a3;
  v7 = a3[1];
  *a5 = v5;
  *(a5 + 8) = v6;
  *(a5 + 16) = v8;
  *(a5 + 24) = v7;
  *(a5 + 32) = a4 & 1;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = xmmword_213D99630;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 2;
  *(a5 + 144) = 0;
}

uint64_t static MapStyle.hybrid(elevation:pointsOfInterest:showsTraffic:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = xmmword_213D98BB0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 56) = v4;
  *(a4 + 64) = v6;
  *(a4 + 72) = v5;
  *(a4 + 80) = a3;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 2;
  *(a4 + 144) = 0;
}

void sub_213D7A454(void *a1@<X0>, uint64_t a2@<X8>)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 elevationStyle];
    v7 = [v5 emphasisStyle];
    v8 = [v5 showsTraffic];
    v9 = [v5 showsHiking];

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (v9)
    {
      v18 = 256;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18 | v8;
    v20 = 0uLL;
    v21 = 1;
    v22 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v15 = [v26 elevationStyle];
    v17 = [v27 showsTraffic];

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v7 = 0;
    v22 = 0;
    v19 = 0;
    v14 = 0;
    v25 = 0;
    v20 = 0uLL;
    v16 = MEMORY[0x277D84F90];
    v13 = 1;
    v23 = 2;
    v24 = 0uLL;
    v21 = 1;
    goto LABEL_9;
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v14 = [v28 elevationStyle];

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v7 = 0;
    v22 = 0;
    v19 = 0;
    v21 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v20 = 0uLL;
    v13 = 1;
LABEL_6:
    v23 = 2;
    v24 = 0uLL;
    v25 = 1;
    goto LABEL_9;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    [v29 cartographicConfiguration];
    v11 = v37;
    v23 = v38;
    v33 = [v30 showsTraffic];
    v31 = [v30 showsHiking];

    v20 = v34;
    v24 = v35;
    v10 = v36;
    v6 = 0;
    v7 = 0;
    v22 = 0;
    v19 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    if (v31)
    {
      v32 = 256;
    }

    else
    {
      v32 = 0;
    }

    v12 = v32 | v33;
    v13 = 1;
    v21 = 1;
    v25 = 1;
  }

  else
  {

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v7 = 0;
    v13 = 0;
    v19 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v20 = 0uLL;
    v25 = 1;
    v22 = MEMORY[0x277D84F90];
    v23 = 2;
    v24 = 0uLL;
    v21 = 1;
  }

LABEL_9:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v13;
  *(a2 + 24) = v22;
  *(a2 + 32) = v19;
  *(a2 + 40) = v14;
  *(a2 + 48) = v21;
  *(a2 + 56) = v15;
  *(a2 + 64) = v25;
  *(a2 + 72) = v16;
  *(a2 + 80) = v17;
  *(a2 + 88) = v20;
  *(a2 + 104) = v24;
  *(a2 + 120) = v10;
  *(a2 + 128) = v11;
  *(a2 + 136) = v23;
  *(a2 + 144) = v12;
}

void *sub_213D7A794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213D64778(a1, a2, a3);

  return sub_213D90C1C();
}

double static MapStyle.imagery.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_213D98BB0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_213D99630;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0;
  return result;
}

double View.mapStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_213D9130C();

  return result;
}

double sub_213D7A8DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_213D64778(a1, a2, a3);
  sub_213D90C1C();
  *(a4 + 96) = v12;
  *(a4 + 112) = v13;
  *(a4 + 128) = v14;
  *(a4 + 144) = v15;
  *(a4 + 32) = v8;
  *(a4 + 48) = v9;
  *(a4 + 64) = v10;
  *(a4 + 80) = v11;
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_213D7A964(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 80);
  v21 = *(a1 + 96);
  v22 = v1;
  v3 = *(a1 + 112);
  v23 = *(a1 + 128);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v17 = *(a1 + 32);
  v18 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v19 = *(a1 + 64);
  v20 = v7;
  v8 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v8;
  v14[6] = v21;
  v14[7] = v3;
  v14[8] = *(a1 + 128);
  v14[2] = v17;
  v14[3] = v6;
  v14[4] = v19;
  v14[5] = v2;
  v24 = *(a1 + 144);
  v15 = *(a1 + 144);
  v14[0] = v16[0];
  v14[1] = v5;
  v9 = sub_213D1E0AC(v16, v13);
  sub_213D64778(v9, v10, v11);
  return sub_213D90C2C();
}