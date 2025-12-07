void sub_24F65B0A4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v91 = *(sub_24F92A708() - 8);
  v4 = *(v91 + 84);
  v78 = sub_24F928818();
  v89 = *(v78 - 8);
  v81 = v4;
  v77 = *(v89 + 84);
  if (v4 <= v77)
  {
    v5 = *(v89 + 84);
  }

  else
  {
    v5 = v4;
  }

  v80 = v5;
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = v5;
  }

  v98 = v6;
  v7 = *(sub_24F928388() - 8);
  v92 = *(v7 + 80) & 0xF8;
  v90 = (v92 + 23) & ~(v92 | 7);
  v84 = v92 | 7;
  v8 = (((((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = *(sub_24F9289E8() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 64);
  v13 = v12 + 7;
  v14 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v14 + 9;
  v16 = *(v10 + 80);
  v17 = *(sub_24F922348() - 8);
  v93 = *(v17 + 80);
  if (*(v17 + 84))
  {
    v18 = *(v17 + 64);
  }

  else
  {
    v18 = *(v17 + 64) + 1;
  }

  v19 = v18 + ((v12 + v93) & ~v93);
  if (v19 + 1 > v15)
  {
    v15 = v19 + 1;
  }

  v82 = v14 + 10;
  v83 = v8 + 9;
  v20 = v16 | v92 | 7;
  if (v11)
  {
    v21 = v12;
  }

  else
  {
    v21 = v12 + 1;
  }

  v22 = *(sub_24F91F4A8() - 8);
  v23 = *(v22 + 80) & 0xF8;
  v24 = *(sub_24F928698() - 8);
  v25 = v22;
  v26 = *(v24 + 80);
  v27 = v16 | v26 | v23 | 7;
  v28 = v21;
  v29 = *(v24 + 64);
  if (!*(v24 + 84))
  {
    ++v29;
  }

  v30 = ((v21 + v27) & ~v27) + ((v29 + ((v29 + v26 + ((v26 + ((((((v13 + ((*(v25 + 64) + v16) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v26)) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v30 <= v15)
  {
    v30 = v15;
  }

  if (v9 > v30)
  {
    v30 = v9;
  }

  v85 = v30;
  v88 = *(*(a4 + 24) - 8);
  v79 = *(v88 + 84);
  if (v79 <= v98)
  {
    v31 = v98;
  }

  else
  {
    v31 = *(v88 + 84);
  }

  v86 = *(sub_24F9220D8() - 8);
  v32 = *(v86 + 84);
  v76 = v32;
  if (v32 <= v31)
  {
    v32 = v31;
  }

  v33 = *(*(a4 + 16) - 8);
  v34 = *(v33 + 84);
  v35 = v34 - 1;
  if (!v34)
  {
    v35 = 0;
  }

  if (v35 <= 0x7FFFFFFE)
  {
    v35 = 2147483646;
  }

  v75 = v35;
  if (v32 <= v35)
  {
    v32 = v35;
  }

  v87 = v32;
  v36 = 0;
  v37 = *(sub_24F925218() - 8);
  v38 = v37;
  v39 = *(v91 + 64);
  v40 = *(v89 + 80);
  v41 = v9 + v90;
  if (((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 48 > v9 + v90)
  {
    v41 = ((v28 + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  if (v41 <= v82)
  {
    v41 = v82;
  }

  if (v41 <= 0x19)
  {
    v41 = 25;
  }

  v42 = 9;
  if (v9)
  {
    v42 = v83;
  }

  v43 = v92 + v41 + 1 + 8;
  if (((v43 + ((v41 + 1 + v20) & ~v20)) & ~v84) + v9 <= v41 + 1)
  {
    v45 = v41 + 1;
  }

  else
  {
    v45 = ((v43 + ((v41 + 1 + v20) & ~v20)) & ~v84) + v9;
  }

  v46 = 8;
  if (v45 <= 8)
  {
    v45 = 8;
  }

  v44 = ((((((v43 + ((v20 + 16) & ~v20)) & ~v84) + v42) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + v20 + 40;
  v47 = 13 - ((-17 - v20 - ((((((((((((((*(v89 + 64) + ((v40 + ((v39 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v40) + 7) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 41) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v20) - (((-58 - v44 - ((v44 + (v44 & ~v20)) & ~v20)) | v20) - v45);
  v48 = *(v37 + 84);
  v49 = *(v37 + 64);
  v50 = *(v33 + 64);
  if (!v34)
  {
    ++v50;
  }

  v51 = v48 == 0;
  v52 = (((((((((v85 + (((v20 | v93 | v27) + (v47 & 0xFFFFFFFFFFFFFFF8) + 16) & ~(v20 | v93 | v27)) + 1) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v53 = *(v88 + 80);
  v54 = *(v86 + 80);
  v55 = *(v88 + 64) + v54;
  v56 = *(v86 + 64) + 7;
  v57 = *(v33 + 80) & 0xF8;
  v58 = ~v57 & 0xFFFFFFFFFFFFFFF8;
  v59 = v57 + 23;
  v60 = *(v38 + 80) & 0xF8 | 7;
  if (v51)
  {
    ++v49;
  }

  if (v49 > 8)
  {
    v46 = v49;
  }

  v61 = ((v46 + ((v46 + v60 + ((((v50 + 7) & 0xFFFFFFFFFFFFFFF8) + v60 + ((v59 + ((v56 + ((v55 + ((v53 + 8 + ((v52 + 49) & 0xFFFFFFFFFFFFFFF8)) & ~v53)) & ~v54)) & 0xFFFFFFFFFFFFFFF8)) & v58) + 24) & ~v60) + 1) & ~v60) + 24) & 0xFFFFFFFFFFFFFFF8) + 33;
  if (v87 < a3)
  {
    if (v61 <= 3)
    {
      v62 = ((a3 - v87 + 255) >> 8) + 1;
    }

    else
    {
      v62 = 2;
    }

    if (v62 >= 0x10000)
    {
      v63 = 4;
    }

    else
    {
      v63 = 2;
    }

    if (v62 < 0x100)
    {
      v63 = 1;
    }

    if (v62 >= 2)
    {
      v36 = v63;
    }

    else
    {
      v36 = 0;
    }
  }

  if (v87 >= a2)
  {
    v66 = a1;
    if (v36 > 1)
    {
      if (v36 != 2)
      {
        *&a1[v61] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_81;
      }

      *&a1[v61] = 0;
    }

    else if (v36)
    {
      a1[v61] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_81;
    }

    if (!a2)
    {
      return;
    }

LABEL_81:
    if (v98 == v87)
    {
      if (v81 != v98)
      {
        v71 = (&a1[v39 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v80 & 0x80000000) != 0)
        {
          v72 = *(v89 + 56);

          v72((v71 + v40 + 16) & ~v40, a2, v77, v78);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *v71 = a2 & 0x7FFFFFFF;
          v71[1] = 0;
        }

        else
        {
          v71[1] = a2 - 1;
        }

        return;
      }

      v67 = *(v91 + 56);
      v68 = a2;
    }

    else
    {
      v69 = (&a1[v52 + 49] & 0xFFFFFFFFFFFFFFF8);
      if ((v87 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v70 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v70 = a2 - 1;
        }

        *v69 = v70;
        return;
      }

      v66 = ((v69 + v53 + 8) & ~v53);
      if (v79 == v87)
      {
        v67 = *(v88 + 56);
        v68 = a2;
      }

      else
      {
        v66 = (&v66[v55] & ~v54);
        if (v76 == v87)
        {
          v67 = *(v86 + 56);
          v68 = a2;
        }

        else
        {
          v66 = ((v59 + (&v66[v56] & 0xFFFFFFFFFFFFFFF8)) & v58);
          if (v75 < a2)
          {
            v73 = (v50 + 7) & 0xFFFFFFF8;
            if (v73 != -8)
            {
              v74 = v66;
              bzero(v66, (v73 + 8));
              *v74 = ~v75 + a2;
            }

            return;
          }

          v67 = *(v33 + 56);
          v68 = a2 + 1;
        }
      }
    }

    v67(v66, v68);
    return;
  }

  v64 = ~v87 + a2;
  bzero(a1, v61);
  if (v61 <= 3)
  {
    v65 = (v64 >> 8) + 1;
  }

  else
  {
    v65 = 1;
  }

  if (v61 <= 3)
  {
    *a1 = v64;
    if (v36 > 1)
    {
LABEL_69:
      if (v36 == 2)
      {
        *&a1[v61] = v65;
      }

      else
      {
        *&a1[v61] = v65;
      }

      return;
    }
  }

  else
  {
    *a1 = v64;
    if (v36 > 1)
    {
      goto LABEL_69;
    }
  }

  if (v36)
  {
    a1[v61] = v65;
  }
}

double sub_24F65BB28(uint64_t a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + *(a1 + 100));
  v8 = *v7;
  if (v7[8] == 1)
  {
    return *v7;
  }

  sub_24F92BDC8();
  v10 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v8, 0);
  (*(v4 + 8))(v6, v3);
  return *&v11[1];
}

double sub_24F65BC80(uint64_t a1)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 104);
  v9 = *v7;
  v8 = *(v7 + 8);
  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (*(v7 + 32) == 1)
  {
    return *v7;
  }

  sub_24F92BDC8();
  v13 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E669FC4(v9, v8, v11, v10, 0);
  (*(v4 + 8))(v6, v3);
  return v14;
}

uint64_t sub_24F65BE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = sub_24F92B858();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v93 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(a1 - 8);
  v98 = *(v82 + 64);
  MEMORY[0x28223BE20](v5);
  v97 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DefaultPageHeaderView(255);
  *&v92 = a1 + 40;
  v91 = *(a1 + 32);
  v7 = a1;
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B700, &qword_24FA17630);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215FD0, &qword_24F9415F0);
  sub_24F924E38();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  v8 = sub_24F927808();
  v89 = v8;
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for AdaptiveStack(0, v8, WitnessTable, v9);
  v90 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v60 - v11);
  v84 = v10;
  v13 = sub_24F924038();
  v87 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v85 = &v60 - v14;
  v83 = swift_getWitnessTable();
  v112 = v83;
  v113 = MEMORY[0x277CDF918];
  v86 = MEMORY[0x277CDFAD8];
  v15 = swift_getWitnessTable();
  v104 = v13;
  v105 = v15;
  v76 = v13;
  v16 = v15;
  v77 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  v18 = sub_24F924038();
  v104 = v13;
  v105 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24E8F20E4();
  v21 = sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  v110 = OpaqueTypeConformance2;
  v111 = v21;
  v22 = swift_getWitnessTable();
  v104 = OpaqueTypeMetadata2;
  v105 = &type metadata for IsDebugFocusOverlayEnabled;
  v106 = v18;
  v107 = OpaqueTypeConformance2;
  v108 = v20;
  v109 = v22;
  v23 = MEMORY[0x277CE0E68];
  v24 = swift_getOpaqueTypeMetadata2();
  v71 = v24;
  v104 = OpaqueTypeMetadata2;
  v105 = &type metadata for IsDebugFocusOverlayEnabled;
  v70 = OpaqueTypeMetadata2;
  v106 = v18;
  v107 = OpaqueTypeConformance2;
  v72 = v20;
  v108 = v20;
  v109 = v22;
  v68 = v23;
  v69 = swift_getOpaqueTypeConformance2();
  v104 = OpaqueTypeMetadata2;
  v105 = &type metadata for IsDebugFocusOverlayEnabled;
  v106 = v24;
  v107 = OpaqueTypeConformance2;
  v108 = v20;
  v109 = v69;
  v67 = swift_getOpaqueTypeMetadata2();
  v75 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v60 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B708, &qword_24FA17638);
  v74 = sub_24F924038();
  v79 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v66 = &v60 - v26;
  sub_24F923AD8();
  v80 = sub_24F924038();
  v81 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v73 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v78 = &v60 - v30;
  v31 = v82;
  v64 = *(v82 + 16);
  v32 = v97;
  v64(v97, v99, v7, v29);
  v33 = (*(v31 + 80) + 64) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v63 = *(v7 + 48);
  v35 = v63;
  v62 = *(v7 + 16);
  v36 = v62;
  v61 = v7;
  *&v37 = v91;
  *(&v37 + 1) = *v92;
  v92 = v37;
  *(v34 + 2) = v37;
  *(v34 + 3) = v35;
  *(v34 + 1) = v36;
  v91 = *(v31 + 32);
  v91(&v34[v33], v32, v7);
  v38 = v12;
  sub_24F65E190(sub_24F65F2D4, v34, v89, WitnessTable, v12);
  sub_24F925828();
  v39 = v85;
  v40 = v84;
  sub_24F926A48();
  (*(v90 + 8))(v38, v40);
  v41 = v65;
  v42 = v76;
  View.platformFocusSection()(v76, v77, v65);
  (*(v87 + 8))(v39, v42);
  sub_24F927618();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B710, &qword_24FA17640);
  v104 = v70;
  v105 = &type metadata for IsDebugFocusOverlayEnabled;
  v106 = v71;
  v107 = OpaqueTypeConformance2;
  v108 = v72;
  v109 = v69;
  v43 = swift_getOpaqueTypeConformance2();
  sub_24F65F398();
  v44 = v66;
  v45 = v67;
  sub_24F926088();
  (*(v75 + 8))(v41, v45);
  v46 = v97;
  v47 = v61;
  (v64)(v97, v99, v61);
  v48 = swift_allocObject();
  v49 = v63;
  *(v48 + 1) = v62;
  *(v48 + 2) = v92;
  *(v48 + 3) = v49;
  v91(&v48[v33], v46, v47);
  v50 = sub_24E602068(&qword_27F24B730, &qword_27F24B708, &qword_24FA17638, MEMORY[0x277CE0328]);
  v102 = v43;
  v103 = v50;
  v51 = v74;
  v52 = swift_getWitnessTable();
  v53 = v93;
  sub_24F0B42B0(v51);
  v54 = v73;
  sub_24F9268E8();

  (*(v94 + 8))(v53, v95);
  (*(v79 + 8))(v44, v51);
  v55 = sub_24F3E5610(&qword_27F211A48, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  v100 = v52;
  v101 = v55;
  v56 = v80;
  swift_getWitnessTable();
  v57 = v78;
  sub_24E7896B8();
  v58 = *(v81 + 8);
  v58(v54, v56);
  sub_24E7896B8();
  return (v58)(v57, v56);
}

uint64_t sub_24F65C9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v206 = a7;
  v186 = a3;
  v187 = a6;
  v199 = a5;
  v196 = a8;
  v197 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0, &qword_24F9415F0);
  v173 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v172 = &v159 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B700, &qword_24FA17630);
  MEMORY[0x28223BE20](v13);
  v175 = &v159 - v14;
  v198 = sub_24F925218();
  v183 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v160 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v162);
  v163 = &v159 - v16;
  v165 = *(a4 - 8);
  MEMORY[0x28223BE20](v17);
  v174 = &v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F924038();
  v168 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v167 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v164 = &v159 - v22;
  MEMORY[0x28223BE20](v23);
  v166 = &v159 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v25 - 8);
  v161 = &v159 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v169 = &v159 - v28;
  MEMORY[0x28223BE20](v29);
  v170 = (&v159 - v30);
  MEMORY[0x28223BE20](v31);
  v171 = &v159 - v32;
  MEMORY[0x28223BE20](v33);
  v188 = (&v159 - v34);
  v204 = v19;
  v181 = v13;
  v35 = sub_24F924E38();
  v180 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v179 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v178 = &v159 - v38;
  v205 = a2;
  v184 = sub_24F92C4A8();
  v177 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v185 = &v159 - v39;
  v200 = *(a2 - 8);
  MEMORY[0x28223BE20](v40);
  v189 = &v159 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = v35;
  v182 = v11;
  v202 = sub_24F924E38();
  v195 = sub_24F92C4A8();
  v191 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v194 = &v159 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v193 = &v159 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v159 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v159 - v49;
  v51 = type metadata accessor for DefaultPageHeaderView(0);
  MEMORY[0x28223BE20](v51);
  v192 = &v159 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v55 = &v159 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v159 - v57;
  v59 = type metadata accessor for Page(0);
  v60 = v184;
  sub_24E60169C(a1 + v59[20], v50, qword_27F220E38, &unk_24F965190);
  v176 = v59[21];
  LOBYTE(a2) = *(a1 + v176);
  sub_24E60169C(a1 + v59[24], v47, &qword_27F21D8F8, &qword_24F95ADB0);
  v61 = type metadata accessor for Page.Background(0);
  LOBYTE(v59) = (*(*(v61 - 8) + 48))(v47, 1, v61) == 1;
  v62 = v47;
  v63 = v205;
  sub_24E601704(v62, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24EA56368(v50, v55);
  v55[*(v51 + 20)] = a2;
  v64 = v200;
  v190 = v51;
  v55[*(v51 + 24)] = v59;
  v65 = a1;
  v66 = v55;
  v67 = v206;
  v201 = v58;
  sub_24F661A3C(v66, v58);
  v214 = v63;
  v215 = v186;
  v216 = v197;
  v217 = v199;
  v218 = v187;
  v219 = v67;
  v68 = type metadata accessor for AdaptivePageHeader(0, &v214);
  sub_24F926F68();
  v69 = v185;
  sub_24F926F38();
  v70 = (*(v64 + 48))(v69, 1, v63);
  v71 = MEMORY[0x277CDF918];
  if (v70 != 1)
  {
    v85 = v189;
    (*(v64 + 32))(v189, v69, v205);
    v86 = v188;
    sub_24F769764(v188);
    v87 = *(v183 + 48);
    if ((v87)(v86, 1, v198) != 1)
    {
      v187 = v65;
      v88 = v86;
      v89 = v171;
      sub_24E60169C(v88, v171, &qword_27F215598, &qword_24F945EF0);
      v90 = v183;
      if ((*(v183 + 88))(v89, v198) == *MEMORY[0x277CE0560])
      {
        v91 = v187;
        v92 = (v187 + *(v68 + 80));
        v185 = v87;
        (*v92)(v85);
        LODWORD(v199) = sub_24F925858();
        v186 = 0x5040302010001uLL >> (8 * *(v91 + v176));
        v93 = sub_24F65BB28(v68);
        v94 = v170;
        sub_24F769764(v170);
        v95 = v169;
        v96 = v198;
        (*(v90 + 104))(v169, *MEMORY[0x277CE0558], v198);
        (*(v90 + 56))(v95, 0, 1, v96);
        v97 = v163;
        v98 = *(v162 + 48);
        sub_24E60169C(v94, v163, &qword_27F215598, &qword_24F945EF0);
        v99 = v185;
        sub_24E60169C(v95, v97 + v98, &qword_27F215598, &qword_24F945EF0);
        if (v99(v97, 1, v96) == 1)
        {
          sub_24E601704(v95, &qword_27F215598, &qword_24F945EF0);
          sub_24E601704(v94, &qword_27F215598, &qword_24F945EF0);
          v100 = v99(v97 + v98, 1, v198);
          v101 = v204;
          if (v100 == 1)
          {
            sub_24E601704(v97, &qword_27F215598, &qword_24F945EF0);
            v102 = 1;
            v103 = v178;
            goto LABEL_17;
          }
        }

        else
        {
          v127 = v161;
          sub_24E60169C(v97, v161, &qword_27F215598, &qword_24F945EF0);
          if (v99(v97 + v98, 1, v198) != 1)
          {
            v128 = v183;
            v129 = v160;
            v130 = v198;
            (*(v183 + 32))(v160, v97 + v98, v198);
            sub_24F3E5610(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
            v102 = sub_24F92AFF8();
            v131 = *(v128 + 8);
            v131(v129, v130);
            sub_24E601704(v169, &qword_27F215598, &qword_24F945EF0);
            sub_24E601704(v170, &qword_27F215598, &qword_24F945EF0);
            v131(v127, v130);
            sub_24E601704(v97, &qword_27F215598, &qword_24F945EF0);
            v101 = v204;
            v103 = v178;
LABEL_17:
            sub_24F65BC80(v68);
            if (v93 > 1580.0)
            {
              v93 = 1580.0;
            }

            if (v186 > 2u)
            {
              v126 = v206;
              v121 = MEMORY[0x277CDF918];
              if (v186 == 3)
              {
                if (sub_24E6B00B4(v93) >= 4u)
                {
                  v132 = 3;
LABEL_31:
                  LOBYTE(v214) = v132;
                  sub_24F422FFC(v102 & 1, v93);
                }
              }

              else
              {
                if (v186 != 4)
                {
                  if (qword_27F210748 != -1)
                  {
                    swift_once();
                  }

                  swift_beginAccess();
                  if ((byte_27F2301A8 & 1) != 0 && (v102 & 1) != 0 && qword_27F210D60 != -1)
                  {
                    swift_once();
                  }

                  goto LABEL_39;
                }

                if ((v102 & 1) == 0)
                {
LABEL_38:
                  sub_24E6B00B4(v93);
                }
              }
            }

            else
            {
              v126 = v206;
              v121 = MEMORY[0x277CDF918];
              if (v186)
              {
                if (v186 == 1)
                {
                  if (v102)
                  {
                    goto LABEL_39;
                  }

                  goto LABEL_38;
                }

                v132 = 2;
                goto LABEL_31;
              }
            }

LABEL_39:
            v133 = v164;
            v134 = v197;
            v135 = v174;
            sub_24F926A48();
            (*(v165 + 8))(v135, v134);
            v207 = v126;
            v208 = v121;
            WitnessTable = swift_getWitnessTable();
            v137 = v166;
            sub_24E7896B8();
            v138 = *(v168 + 8);
            v138(v133, v101);
            v139 = v167;
            sub_24E7896B8();
            v140 = sub_24F661AA0();
            sub_24ECCCBA0(v139, v101, v181, WitnessTable, v140);
            v138(v139, v101);
            v138(v137, v101);
            goto LABEL_40;
          }

          sub_24E601704(v169, &qword_27F215598, &qword_24F945EF0);
          sub_24E601704(v170, &qword_27F215598, &qword_24F945EF0);
          (*(v183 + 8))(v127, v198);
          v101 = v204;
        }

        sub_24E601704(v97, &unk_27F254F20, &qword_24F940790);
        v102 = 0;
        v103 = v178;
        goto LABEL_17;
      }

      (*(v90 + 8))(v89, v198);
      v65 = v187;
    }

    v108 = v205;
    v109 = v175;
    v110 = v199;
    *(v175 + 5) = v205;
    *(v109 + 48) = v110;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v109 + 16));
    (*(v64 + 16))(boxed_opaque_existential_1, v85, v108);
    type metadata accessor for GSKComponentContentBuilder(0);
    sub_24F3E5610(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
    *v109 = sub_24F923598();
    *(v109 + 8) = v112 & 1;
    v113 = *(v65 + v176);
    KeyPath = swift_getKeyPath();
    v115 = swift_getKeyPath();
    v116 = v181;
    v117 = v109 + *(v181 + 36);
    *v117 = v113;
    *(v117 + 1) = 0;
    *(v117 + 8) = 0;
    *(v117 + 16) = 1;
    *(v117 + 24) = KeyPath;
    *(v117 + 32) = 0;
    *(v117 + 40) = v115;
    v118 = type metadata accessor for PageMarginsViewModifier(0);
    *(v117 + 56) = 0;
    *(v117 + 64) = 0;
    *(v117 + 48) = 0;
    *(v117 + 72) = 0;
    v119 = *(v118 + 36);
    *(v117 + v119) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v120 = v206;
    v209[6] = v206;
    v121 = MEMORY[0x277CDF918];
    v209[7] = MEMORY[0x277CDF918];
    v122 = v204;
    v123 = swift_getWitnessTable();
    v124 = sub_24F661AA0();
    v103 = v178;
    sub_24ECCCC98(v109, v122, v116, v123, v124);
    v125 = v109;
    v126 = v120;
    sub_24E601704(v125, &qword_27F24B700, &qword_24FA17630);
LABEL_40:
    v141 = v203;
    v142 = v194;
    sub_24E601704(v188, &qword_27F215598, &qword_24F945EF0);
    v209[4] = v126;
    v209[5] = v121;
    v143 = swift_getWitnessTable();
    v144 = sub_24F661AA0();
    v209[2] = v143;
    v209[3] = v144;
    v145 = swift_getWitnessTable();
    v146 = v179;
    sub_24E7896B8();
    v80 = sub_24E602068(&qword_27F255080, &qword_27F215FD0, &qword_24F9415F0, MEMORY[0x277CDD7F8]);
    sub_24ECCCBA0(v146, v141, v182, v145, v80);
    v147 = *(v180 + 8);
    v147(v146, v141);
    v147(v103, v141);
    v81 = v142;
    (*(v200 + 8))(v189, v205);
    (*(*(v202 - 8) + 56))(v142, 0, 1, v202);
    v209[0] = v145;
    v84 = v209;
    v107 = v121;
    goto LABEL_41;
  }

  (*(v177 + 8))(v69, v60);
  v72 = v65 + *(v68 + 88);
  v73 = *v72;
  v74 = *(v72 + 8);
  LOBYTE(v214) = v73;
  v215 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (v212[0])
  {
    v75 = v172;
    sub_24F923798();
    v210[4] = v67;
    v210[5] = v71;
    v76 = swift_getWitnessTable();
    v77 = sub_24F661AA0();
    v210[2] = v76;
    v210[3] = v77;
    v78 = v203;
    v79 = swift_getWitnessTable();
    v80 = sub_24E602068(&qword_27F255080, &qword_27F215FD0, &qword_24F9415F0, MEMORY[0x277CDD7F8]);
    v81 = v194;
    v82 = v78;
    v83 = v182;
    sub_24ECCCC98(v75, v82, v182, v79, v80);
    (*(v173 + 8))(v75, v83);
    (*(*(v202 - 8) + 56))(v81, 0, 1, v202);
    v210[0] = v79;
    v84 = v210;
  }

  else
  {
    v81 = v194;
    (*(*(v202 - 8) + 56))(v194, 1, 1, v202);
    v213[4] = v67;
    v213[5] = v71;
    v104 = swift_getWitnessTable();
    v105 = sub_24F661AA0();
    v213[2] = v104;
    v213[3] = v105;
    v106 = swift_getWitnessTable();
    v80 = sub_24E602068(&qword_27F255080, &qword_27F215FD0, &qword_24F9415F0, MEMORY[0x277CDD7F8]);
    v213[0] = v106;
    v84 = v213;
  }

  v107 = v71;
LABEL_41:
  v84[1] = v80;
  swift_getWitnessTable();
  v148 = v193;
  sub_24E8D5004(v81, v193);
  v149 = v191;
  v150 = v81;
  v151 = *(v191 + 8);
  v152 = v195;
  v151(v81, v195);
  v153 = v192;
  sub_24F661B5C(v201, v192);
  v212[0] = v153;
  (*(v149 + 16))(v150, v148, v152);
  v212[1] = v150;
  v211[0] = v190;
  v211[1] = v152;
  v210[13] = sub_24F3E5610(&qword_27F220F60, type metadata accessor for DefaultPageHeaderView, &unk_24F9DD8E8);
  v210[11] = v206;
  v210[12] = v107;
  v154 = swift_getWitnessTable();
  v155 = sub_24F661AA0();
  v210[9] = v154;
  v210[10] = v155;
  v156 = swift_getWitnessTable();
  v157 = sub_24E602068(&qword_27F255080, &qword_27F215FD0, &qword_24F9415F0, MEMORY[0x277CDD7F8]);
  v210[7] = v156;
  v210[8] = v157;
  v210[6] = swift_getWitnessTable();
  v210[14] = swift_getWitnessTable();
  sub_24F57BA64(v212, 2uLL, v211);
  v151(v148, v152);
  sub_24F661BC0(v201);
  v151(v150, v152);
  return sub_24F661BC0(v153);
}

uint64_t sub_24F65E190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(type metadata accessor for AdaptiveStack(0, a3, a4, a4) + 36);
  *(a5 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  result = swift_storeEnumTagMultiPayload();
  *a5 = a1;
  a5[1] = a2;
  return result;
}

void sub_24F65E20C(uint64_t a2@<X8>)
{
  sub_24F926C88();
  v3 = sub_24F926D08();

  v4 = sub_24F925818();
  sub_24F923318();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v13 = sub_24F925808();
  }

  else
  {
    v13 = sub_24F925848();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = 0;
  *(a2 + 49) = v13;
}

uint64_t sub_24F65E318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  v7[24] = *(a3 - 8);
  v14 = swift_task_alloc();
  v7[2] = a2;
  v7[25] = v14;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v7[6] = a6;
  v7[7] = a7;
  v15 = type metadata accessor for AdaptivePageHeader(0, (v7 + 2));
  v7[26] = v15;
  v7[27] = *(v15 - 8);
  v7[28] = swift_task_alloc();
  v16 = sub_24F92C4A8();
  v7[29] = v16;
  v7[30] = *(v16 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  sub_24F92B7F8();
  v7[34] = sub_24F92B7E8();
  v18 = sub_24F92B778();
  v7[35] = v18;
  v7[36] = v17;

  return MEMORY[0x2822009F8](sub_24F65E520, v18, v17);
}

uint64_t sub_24F65E520()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 144);
  *(v0 + 368) = *(*(v0 + 208) + 84);
  *(v0 + 296) = sub_24F926F68();
  sub_24F926F38();
  v3 = *(v2 - 8);
  *(v0 + 304) = v3;
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 264);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  if (v4 != 1)
  {

    (*(v7 + 8))(v5, v6);
    goto LABEL_5;
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 136);
  v10 = *(v7 + 8);
  *(v0 + 312) = v10;
  *(v0 + 320) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  v11 = (v9 + *(v8 + 88));
  v12 = *v11;
  v13 = *(v11 + 1);
  *(v0 + 104) = *v11;
  *(v0 + 112) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  if (*(v0 + 372))
  {

LABEL_5:

    v14 = *(v0 + 8);

    return v14();
  }

  v16 = *(v0 + 208);
  v17 = *(v0 + 136);
  *(v0 + 120) = v12;
  *(v0 + 128) = v13;
  *(v0 + 373) = 1;
  sub_24F926F48();
  *(v0 + 328) = *(v17 + *(v16 + 68));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v19 = swift_task_alloc();
  *(v0 + 336) = v19;
  *v19 = v0;
  v19[1] = sub_24F65E7AC;

  return MEMORY[0x28217F228](v0 + 64, v18, v18);
}

uint64_t sub_24F65E7AC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_24F65EC4C;
  }

  else
  {
    v5 = sub_24F65E8E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F65E8E8()
{
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[11];
  v4 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v3);
  v5 = *(v1 + 72);
  v6 = swift_task_alloc();
  v0[44] = v6;
  *v6 = v0;
  v6[1] = sub_24F65E9C8;
  v7 = v0[41];
  v8 = v0[32];
  v9 = v0[22];
  v10 = v0[19];

  return MEMORY[0x28217F4B0](v8, v2 + v5, v7, v10, v9, v3, v4);
}

uint64_t sub_24F65E9C8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_24F65EF3C;
  }

  else
  {
    v5 = sub_24F65EB04;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F65EB04()
{
  v9 = v0[39];
  v1 = v0[38];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  v6 = v0[18];

  (*(v1 + 56))(v2, 0, 1, v6);
  (*(v5 + 16))(v3, v2, v4);
  sub_24F926F48();
  v9(v2, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_24F65F234(v0[17], v0[18], v0[19], v0[20], v0[21], v0[22], v0[23]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F65EC4C()
{
  v26 = v0;

  v1 = v0[43];
  (*(v0[27] + 16))(v0[28], v0[17]);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[26];
  if (v5)
  {
    log = v3;
    v9 = v0[24];
    v10 = v0[25];
    v11 = v0[19];
    v22 = v4;
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v12 = 136315394;
    (*(v9 + 16))(v10, v7 + *(v8 + 72), v11);
    swift_getDynamicType();
    (*(v9 + 8))(v10, v11);
    v13 = sub_24F92D1E8();
    v15 = v14;
    (*(v6 + 8))(v7, v8);
    v16 = sub_24E7620D4(v13, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v21 = v18;
    _os_log_impl(&dword_24E5DD000, log, v22, "Dispatch %s failed with %@", v12, 0x16u);
    sub_24E601704(v21, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x2530542D0](v23, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  sub_24F65F234(v0[17], v0[18], v0[19], v0[20], v0[21], v0[22], v0[23]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_24F65EF3C()
{
  v26 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v1 = v0[45];
  (*(v0[27] + 16))(v0[28], v0[17]);
  v2 = v1;
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDC8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[26];
  if (v5)
  {
    log = v3;
    v9 = v0[24];
    v10 = v0[25];
    v11 = v0[19];
    v22 = v4;
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v12 = 136315394;
    (*(v9 + 16))(v10, v7 + *(v8 + 72), v11);
    swift_getDynamicType();
    (*(v9 + 8))(v10, v11);
    v13 = sub_24F92D1E8();
    v15 = v14;
    (*(v6 + 8))(v7, v8);
    v16 = sub_24E7620D4(v13, v15, &v25);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    v17 = v1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v21 = v18;
    _os_log_impl(&dword_24E5DD000, log, v22, "Dispatch %s failed with %@", v12, 0x16u);
    sub_24E601704(v21, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x2530542D0](v23, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v7, v8);
  }

  sub_24F65F234(v0[17], v0[18], v0[19], v0[20], v0[21], v0[22], v0[23]);

  v19 = v0[1];

  return v19();
}

uint64_t sub_24F65F234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v7 = (a1 + *(type metadata accessor for AdaptivePageHeader(0, &v11) + 88));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v11) = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  return sub_24F926F48();
}

uint64_t sub_24F65F2D4@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v12[0] = v1[2];
  v3 = v12[0];
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v9 = *(type metadata accessor for AdaptivePageHeader(0, v12) - 8);
  v10 = v1 + ((*(v9 + 80) + 64) & ~*(v9 + 80));

  return sub_24F65C9A8(v10, v3, v4, v5, v6, v7, v8, a1);
}

unint64_t sub_24F65F398()
{
  result = qword_27F24B718;
  if (!qword_27F24B718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B710, &qword_24FA17640);
    sub_24F65F424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B718);
  }

  return result;
}

unint64_t sub_24F65F424()
{
  result = qword_27F24B720;
  if (!qword_27F24B720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B728, &qword_24FA17648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B720);
  }

  return result;
}

uint64_t objectdestroyTm_79()
{
  v1 = *(v0 + 56);
  v127 = *(v0 + 16);
  v128 = v127;
  v126 = *(v0 + 24);
  v129 = v126;
  v130 = *(v0 + 40);
  v131 = v1;
  v2 = type metadata accessor for AdaptivePageHeader(0, &v128);
  v3 = *(*(v2 - 1) + 80);
  v4 = v0 + ((v3 + 64) & ~v3);
  v5 = sub_24F92A708();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for Page(0);

  v7 = v6[6];
  v8 = sub_24F928818();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  v9 = v4 + v6[20];
  v10 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    goto LABEL_55;
  }

  v11 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v12 = *(*(v11 - 1) + 48);
  if (!v12(v9, 1, v11))
  {
    v121 = v12;

    v13 = v9 + v11[5];
    v14 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v100 = sub_24F9289E8();
          (*(*(v100 - 8) + 8))(v13, v100);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v15 = v9 + v11[7];
          v16 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          v12 = v121;
          if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v18 = sub_24F928388();
              (*(*(v18 - 8) + 8))(v15, v18);

              v12 = v121;
            }
          }

          v19 = (v9 + v11[10]);
          if (v19[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v19);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v87 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v88 = type metadata accessor for JSColor(0);
        if (!(*(*(v88 - 8) + 48))(v87, 1, v88))
        {
          v89 = sub_24F928388();
          (*(*(v89 - 8) + 8))(v87, v89);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v96 = sub_24F9289E8();
        v97 = *(v96 - 8);
        if (!(*(v97 + 48))(v13, 1, v96))
        {
          (*(v97 + 8))(v13, v96);
        }

        if (*(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v20 = v9 + v10[5];
  if (v12(v20, 1, v11))
  {
    goto LABEL_32;
  }

  v122 = v12;

  v21 = v20 + v11[5];
  v22 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    goto LABEL_17;
  }

  v25 = swift_getEnumCaseMultiPayload();
  if (v25 <= 2)
  {
    if (!v25)
    {

      v90 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v91 = type metadata accessor for JSColor(0);
      if (!(*(*(v91 - 8) + 48))(v90, 1, v91))
      {
        v92 = sub_24F928388();
        (*(*(v92 - 8) + 8))(v90, v92);
      }

      goto LABEL_17;
    }

    if (v25 == 1)
    {
      v98 = sub_24F9289E8();
      v99 = *(v98 - 8);
      v120 = v98;
      if (!(*(v99 + 48))(v21, 1))
      {
        (*(v99 + 8))(v21, v120);
      }

      if (*(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v25 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v25)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v103 = sub_24F9289E8();
      (*(*(v103 - 8) + 8))(v21, v103);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v23 = v20 + v11[7];
  v24 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v26 = sub_24F928388();
      (*(*(v26 - 8) + 8))(v23, v26);
    }
  }

  v27 = (v20 + v11[10]);
  v12 = v122;
  if (v27[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

LABEL_32:
  v28 = v9 + v10[6];
  if (v12(v28, 1, v11))
  {
    goto LABEL_49;
  }

  v29 = v28 + v11[5];
  v30 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30))
  {
    goto LABEL_34;
  }

  v33 = swift_getEnumCaseMultiPayload();
  if (v33 <= 2)
  {
    if (!v33)
    {

      v93 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v94 = type metadata accessor for JSColor(0);
      if (!(*(*(v94 - 8) + 48))(v93, 1, v94))
      {
        v95 = sub_24F928388();
        (*(*(v95 - 8) + 8))(v93, v95);
      }

      goto LABEL_34;
    }

    if (v33 == 1)
    {
      v101 = sub_24F9289E8();
      v102 = *(v101 - 8);
      v125 = v101;
      if (!(*(v102 + 48))(v29, 1))
      {
        (*(v102 + 8))(v29, v125);
      }

      if (*(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v33 != 2)
    {
      goto LABEL_34;
    }

LABEL_111:

    goto LABEL_34;
  }

  switch(v33)
  {
    case 3:
      goto LABEL_111;
    case 4:
      v104 = sub_24F9289E8();
      (*(*(v104 - 8) + 8))(v29, v104);
      break;
    case 5:
      goto LABEL_111;
  }

LABEL_34:
  v31 = v28 + v11[7];
  v32 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v34 = sub_24F928388();
      (*(*(v34 - 8) + 8))(v31, v34);
    }
  }

  v35 = (v28 + v11[10]);
  if (v35[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

LABEL_49:
  v36 = v9 + v10[7];
  if (*(v36 + 56) == 1)
  {
  }

  else if (!*(v36 + 56))
  {

    if (*(v36 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v36 + 16));
    }
  }

  v37 = v9 + v10[8];
  v38 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    v63 = swift_getEnumCaseMultiPayload();
    if (v63 == 2)
    {
      goto LABEL_157;
    }

    if (v63 != 1)
    {
      if (v63)
      {
        goto LABEL_55;
      }

      v64 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v64 - 8) + 48))(v37, 1, v64))
      {
        goto LABEL_55;
      }

      v65 = swift_getEnumCaseMultiPayload();
      if (v65 > 2)
      {
        if (v65 != 3)
        {
          if (v65 == 4)
          {
            v119 = sub_24F9289E8();
            (*(*(v119 - 8) + 8))(v37, v119);
            goto LABEL_55;
          }

          if (v65 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_157;
      }

      if (v65)
      {
        if (v65 == 1)
        {
          v117 = sub_24F9289E8();
          v118 = *(v117 - 8);
          if (!(*(v118 + 48))(v37, 1, v117))
          {
            (*(v118 + 8))(v37, v117);
          }

          if (!*(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v65 != 2)
        {
          goto LABEL_55;
        }

LABEL_157:

        goto LABEL_55;
      }

      v82 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v83 = type metadata accessor for JSColor(0);
      if ((*(*(v83 - 8) + 48))(v82, 1, v83))
      {
        goto LABEL_55;
      }

LABEL_107:
      v84 = sub_24F928388();
      (*(*(v84 - 8) + 8))(v82, v84);

      goto LABEL_55;
    }

    v78 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v79 = *(*(v78 - 8) + 48);
    if (v79(v37, 1, v78))
    {
LABEL_105:
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v81 = v37 + *(v80 + 48);
      if (v79(v81, 1, v78))
      {
        goto LABEL_106;
      }

      v86 = swift_getEnumCaseMultiPayload();
      if (v86 <= 2)
      {
        if (v86)
        {
          if (v86 != 1)
          {
            if (v86 != 2)
            {
              goto LABEL_106;
            }

LABEL_153:

            goto LABEL_106;
          }

          v113 = sub_24F9289E8();
          v114 = *(v113 - 8);
          if (!(*(v114 + 48))(v81, 1, v113))
          {
            (*(v114 + 8))(v81, v113);
          }

          if (*(v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
          }
        }

        else
        {

          v108 = v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
          v109 = type metadata accessor for JSColor(0);
          if (!(*(*(v109 - 8) + 48))(v108, 1, v109))
          {
            v110 = sub_24F928388();
            (*(*(v110 - 8) + 8))(v108, v110);
          }
        }

LABEL_106:
        v82 = v37 + *(v80 + 80);
        v83 = type metadata accessor for JSColor(0);
        if ((*(*(v83 - 8) + 48))(v82, 1, v83))
        {
          goto LABEL_55;
        }

        goto LABEL_107;
      }

      if (v86 != 3)
      {
        if (v86 == 4)
        {
          v116 = sub_24F9289E8();
          (*(*(v116 - 8) + 8))(v81, v116);
          goto LABEL_106;
        }

        if (v86 != 5)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_153;
    }

    v85 = swift_getEnumCaseMultiPayload();
    if (v85 > 2)
    {
      if (v85 != 3)
      {
        if (v85 == 4)
        {
          v115 = sub_24F9289E8();
          (*(*(v115 - 8) + 8))(v37, v115);
          goto LABEL_105;
        }

        if (v85 != 5)
        {
          goto LABEL_105;
        }
      }
    }

    else
    {
      if (!v85)
      {

        v105 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v106 = type metadata accessor for JSColor(0);
        if (!(*(*(v106 - 8) + 48))(v105, 1, v106))
        {
          v107 = sub_24F928388();
          (*(*(v107 - 8) + 8))(v105, v107);
        }

        goto LABEL_105;
      }

      if (v85 == 1)
      {
        v111 = sub_24F9289E8();
        v112 = *(v111 - 8);
        if (!(*(v112 + 48))(v37, 1, v111))
        {
          (*(v112 + 8))(v37, v111);
        }

        if (*(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_105;
      }

      if (v85 != 2)
      {
        goto LABEL_105;
      }
    }

    goto LABEL_105;
  }

LABEL_55:
  if (*(v4 + v6[23]))
  {
  }

  v39 = v4 + v6[24];
  v40 = type metadata accessor for Page.Background(0);
  if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    v57 = swift_getEnumCaseMultiPayload();
    if (v57 <= 1)
    {
      if (v57)
      {
        if (v57 == 1)
        {
          v59 = sub_24F9289E8();
          (*(*(v59 - 8) + 8))(v39, v59);
          v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v61 = sub_24F922348();
          v62 = *(v61 - 8);
          if (!(*(v62 + 48))(v39 + v60, 1, v61))
          {
            (*(v62 + 8))(v39 + v60, v61);
          }
        }
      }

      else
      {
        v77 = sub_24F9289E8();
        (*(*(v77 - 8) + 8))(v39, v77);
      }
    }

    else if (v57 == 2)
    {
      v66 = sub_24F9289E8();
      v67 = *(v66 - 8);
      if (!(*(v67 + 48))(v39, 1, v66))
      {
        (*(v67 + 8))(v39, v66);
      }

      v68 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v69 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v69 - 1) + 48))(v68, 1, v69))
      {
        v70 = sub_24F91F4A8();
        (*(*(v70 - 8) + 8))(v68, v70);
        (*(v67 + 8))(v68 + v69[5], v66);
        v71 = v69[9];
        v72 = sub_24F928698();
        v73 = *(v72 - 8);
        v123 = v71;
        v74 = v68 + v71;
        v75 = *(v73 + 48);
        if (!v75(v74, 1, v72))
        {
          (*(v73 + 8))(v68 + v123, v72);
        }

        v124 = v73;
        v76 = v69[10];
        if (!v75(v68 + v76, 1, v72))
        {
          (*(v124 + 8))(v68 + v76, v72);
        }
      }
    }

    else if (v57 == 3 || v57 == 4)
    {
      v58 = sub_24F928388();
      (*(*(v58 - 8) + 8))(v39, v58);
    }
  }

  v41 = (v4 + v6[27]);
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = (v4 + v6[28]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v43 = (v4 + v6[29]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = (v4 + v6[30]);
  if (v44[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  (*(*(v126 - 8) + 8))(v4 + v2[18]);
  v45 = v2[19];
  v46 = sub_24F9220D8();
  (*(*(v46 - 8) + 8))(v4 + v45, v46);

  v47 = v4 + v2[21];
  v48 = *(v127 - 8);
  if (!(*(v48 + 48))(v47, 1, v127))
  {
    (*(v48 + 8))(v47, v127);
  }

  sub_24F92C4A8();
  sub_24F926F68();

  v49 = v2[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = sub_24F925218();
    v51 = *(v50 - 8);
    if (!(*(v51 + 48))(v4 + v49, 1, v50))
    {
      (*(v51 + 8))(v4 + v49, v50);
    }
  }

  else
  {
  }

  v52 = v2[24];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = sub_24F925218();
    v54 = *(v53 - 8);
    if (!(*(v54 + 48))(v4 + v52, 1, v53))
    {
      (*(v54 + 8))(v4 + v52, v53);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v4 + v2[25]), *(v4 + v2[25] + 8));
  v55 = v4 + v2[26];
  sub_24E669FC4(*v55, *(v55 + 8), *(v55 + 16), *(v55 + 24), *(v55 + 32));
  return swift_deallocObject();
}

uint64_t sub_24F66116C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[7] = v7;
  v8 = *(type metadata accessor for AdaptivePageHeader(0, (v1 + 2)) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  v1[8] = v10;
  *v10 = v1;
  v10[1] = sub_24E7AF58C;

  return sub_24F65E318(v0 + v9, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_24F661288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_24F927108();
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v47 = &v44 - v10;
  v52 = v4;
  v11 = sub_24F927018();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v45 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v44 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v44 - v19);
  v21 = sub_24F924E38();
  v49 = *(v21 - 8);
  v50 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  sub_24F769764(v20);
  v24 = sub_24F925218();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v53 = v20;
  v27 = v26(v20, 1, v24);
  if (v27 == 1)
  {
    goto LABEL_5;
  }

  v28 = v8;
  v29 = v52;
  sub_24E60169C(v53, v17, &qword_27F215598, &qword_24F945EF0);
  if ((*(v25 + 88))(v17, v24) != *MEMORY[0x277CE0560])
  {
    v27 = (*(v25 + 8))(v17, v24);
    v8 = v28;
LABEL_5:
    MEMORY[0x28223BE20](v27);
    *(&v44 - 4) = v52;
    *(&v44 - 3) = v5;
    *(&v44 - 2) = v3;
    sub_24F924C88();
    sub_24F9270F8();
    WitnessTable = swift_getWitnessTable();
    v37 = v47;
    sub_24E7896B8();
    v38 = *(v48 + 8);
    v38(v8, v6);
    sub_24E7896B8();
    v39 = swift_getWitnessTable();
    sub_24ECCCC98(v8, v11, v6, v39, WitnessTable);
    v38(v8, v6);
    v38(v37, v6);
    goto LABEL_6;
  }

  v30 = sub_24F924998();
  MEMORY[0x28223BE20](v30);
  *(&v44 - 4) = v29;
  *(&v44 - 3) = v5;
  *(&v44 - 2) = v3;
  v31 = v45;
  sub_24F927008();
  v32 = swift_getWitnessTable();
  v33 = v44;
  sub_24E7896B8();
  v34 = *(v46 + 8);
  v34(v31, v11);
  sub_24E7896B8();
  v35 = swift_getWitnessTable();
  sub_24ECCCBA0(v31, v11, v6, v32, v35);
  v34(v31, v11);
  v34(v33, v11);
LABEL_6:
  sub_24E601704(v53, &qword_27F215598, &qword_24F945EF0);
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v54 = v40;
  v55 = v41;
  v42 = v50;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v49 + 8))(v23, v42);
}

uint64_t sub_24F6618FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  (*v10)(v7);
  sub_24E7896B8();
  v11 = *(v3 + 8);
  v11(v5, a2);
  sub_24E7896B8();
  return (v11)(v9, a2);
}

uint64_t sub_24F661A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultPageHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F661AA0()
{
  result = qword_27F24B738[0];
  if (!qword_27F24B738[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B700, &qword_24FA17630);
    sub_24E66C1E0();
    sub_24F3E5610(&qword_27F222448, type metadata accessor for PageMarginsViewModifier, &unk_24F9F5C30);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F24B738);
  }

  return result;
}

uint64_t sub_24F661B5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultPageHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F661BC0(uint64_t a1)
{
  v2 = type metadata accessor for DefaultPageHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24F661C34(uint64_t a1)
{
  sub_24E6C5550();
  if (v1 <= 0x3F)
  {
    sub_24E684120(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F661CCC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24F661D9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F661E4C(uint64_t a1)
{
  type metadata accessor for DefaultPageHeaderView(255);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B700, &qword_24FA17630);
  sub_24F924E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215FD0, &qword_24F9415F0);
  sub_24F924E38();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  v1 = sub_24F927808();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for AdaptiveStack(255, v1, WitnessTable, v3);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F215A98, &qword_24F940DC0);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E8F20E4();
  sub_24E602068(&qword_27F2551A0, &qword_27F215A98, &qword_24F940DC0, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B708, &qword_24FA17638);
  sub_24F924038();
  sub_24F923AD8();
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F24B730, &qword_27F24B708, &qword_24FA17638, MEMORY[0x277CE0328]);
  swift_getWitnessTable();
  sub_24F3E5610(&qword_27F211A48, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  return swift_getWitnessTable();
}

uint64_t sub_24F662274(void *a1)
{
  sub_24F927018();
  sub_24F927108();
  sub_24F924E38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24F66235C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6623DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for FriendsDataIntent(uint64_t a1)
{
  result = qword_27F24B7C0;
  if (!qword_27F24B7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F662498@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B7D0, &qword_24FA178A8);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for FriendsDataIntent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F66290C();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24F662960(v13, v11, type metadata accessor for Player);
    sub_24F662960(v11, v12, type metadata accessor for FriendsDataIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F6626F8(uint64_t a1)
{
  v2 = sub_24F66290C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F662734(uint64_t a1)
{
  v2 = sub_24F66290C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6627A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B7E0, &qword_24FA178B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F66290C();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F66290C()
{
  result = qword_27F24B7D8;
  if (!qword_27F24B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B7D8);
  }

  return result;
}

uint64_t sub_24F662960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F6629DC()
{
  result = qword_27F24B7E8;
  if (!qword_27F24B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B7E8);
  }

  return result;
}

unint64_t sub_24F662A34()
{
  result = qword_27F24B7F0;
  if (!qword_27F24B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B7F0);
  }

  return result;
}

unint64_t sub_24F662A8C()
{
  result = qword_27F24B7F8;
  if (!qword_27F24B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B7F8);
  }

  return result;
}

uint64_t static InAppPurchaseOfferButtonPresenter.use(stateDataSource:)(uint64_t a1)
{
  qword_27F24B800 = a1;
}

double sub_24F662B60(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  sub_24F664490(v2, v1);

  swift_unknownObjectRelease();
  return result;
}

double InAppPurchaseOfferButtonPresenter.view.setter(uint64_t a1, __n128 a2, uint64_t a3)
{
  sub_24F664490(a1, a3);

  swift_unknownObjectRelease();
  return result;
}

void (*InAppPurchaseOfferButtonPresenter.view.modify(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24F662C80;
}

void sub_24F662C80(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 4);
  v5 = *(*a1 + 3);
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    sub_24F664490(v6, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24F664490(v5, v4);
  }

  swift_unknownObjectRelease();

  free(v3);
}

id InAppPurchaseOfferButtonPresenter.theme.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_24E9534EC(v2, v3);
}

void InAppPurchaseOfferButtonPresenter.alignment.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 148);
  *a1 = *(v1 + 144);
  *(a1 + 4) = v2;
}

void InAppPurchaseOfferButtonPresenter.subtitlePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 154);
  *a1 = *(v1 + 150);
  *(a1 + 4) = v2;
}

uint64_t InAppPurchaseOfferButtonPresenter.__allocating_init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v14 = swift_allocObject();
  InAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t InAppPurchaseOfferButtonPresenter.init(displayProperties:buttonAction:appStateController:restrictions:subtitlePosition:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, unsigned int *a7)
{
  v11 = *a6;
  v64 = a6[1];
  v12 = a6[2];
  v13 = a6[3];
  v14 = a6[4];
  v15 = a6[5];
  v16 = *a7 | (*(a7 + 2) << 32);
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 156) = 65;
  v66 = a1;
  v67 = qword_27F24B800;
  v65 = a5;
  if (!qword_27F24B800)
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v17 = sub_24F92AAE8();
    __swift_project_value_buffer(v17, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  *(v7 + 32) = a2;
  *(v7 + 40) = a1;
  *(v7 + 72) = type metadata accessor for Restrictions();
  *(v7 + 80) = &protocol witness table for Restrictions;
  *(v7 + 48) = a5;
  *(v7 + 150) = v11;
  *(v7 + 151) = v64;
  *(v7 + 152) = v12;
  *(v7 + 153) = v13;
  *(v7 + 154) = v14;
  *(v7 + 155) = v15;
  if (v16 == 3)
  {
    v77[0] = v11;
    v77[1] = v64;
    v77[2] = v12;
    v77[3] = v13;
    v77[4] = v14;
    v77[5] = v15;
    sub_24E9536D8(v77, &v68, v18);
    LOBYTE(v16) = v68;
    v19.i32[0] = *(&v68 + 1);
    v20 = vmovl_u8(v19).u64[0];
    v21 = BYTE5(v68);
  }

  else
  {
    v22.i64[0] = 0xFFFFFFFFFFFFLL;
    v22.i64[1] = 0xFFFFFFFFFFFFLL;
    v23 = vandq_s8(vdupq_n_s64(v16), v22);
    v20 = vmovn_s32(vuzp1q_s32(vshlq_u64(v23, xmmword_24F99A2D0), vshlq_u64(v23, xmmword_24F99A2C0)));
    v21 = BYTE5(v16);
  }

  *(v7 + 144) = v16;
  v24 = v7;
  *(v7 + 145) = vuzp1_s8(v20, v20).u32[0];
  *(v7 + 149) = v21;
  v25 = a5;
  v26 = a1;
  if (!a1)
  {
    v29 = 0;
    v28 = 16;
    v30 = 3;
    goto LABEL_12;
  }

  v27 = *(a1 + 96);
  v28 = *(a1 + 97);
  v30 = *(a1 + 104);
  v29 = *(a1 + 112);
  sub_24E9534EC(v30, v29);
  if (v27 == 7)
  {
LABEL_12:
    v27 = 0;
  }

  if (v28 == 16)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  if (v30 == 3)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  *(v24 + 120) = v27;
  *(v24 + 121) = v31;
  if (v30 == 3)
  {
    v33 = 0;
  }

  else
  {
    v33 = v29;
  }

  *(v24 + 128) = v32;
  *(v24 + 136) = v33;
  if (!a1 || (v34 = *(a1 + 64)) == 0)
  {
    *(v24 + 88) = 0;
    *(v24 + 96) = 0;

    v46 = v67;

    LOBYTE(v49) = 0;
    goto LABEL_38;
  }

  v35 = *(a1 + 56);
  ObjectType = swift_getObjectType();
  v68 = v35;
  v69 = v34;
  v37 = *(a4 + 56);

  swift_retain_n();

  v26 = v66;
  v38 = v37(&v68, ObjectType, a4);
  v40 = v39;

  *(v24 + 88) = v38;
  *(v24 + 96) = v40;
  v41 = swift_getObjectType();
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = *(v40 + 72);
  swift_unknownObjectRetain();

  v43(v24, sub_24F664610, v42, v41, v40);

  swift_unknownObjectRelease();

  if (!*(v24 + 88))
  {
    LOBYTE(v49) = 0;
LABEL_33:
    v46 = v67;
    goto LABEL_38;
  }

  v44 = *(v24 + 96);
  v45 = swift_getObjectType();
  (*(v44 + 16))(&v68, v45, v44);
  if (!(v74 >> 60))
  {
    LOBYTE(v49) = v68 != 1;
    goto LABEL_33;
  }

  v46 = v67;
  if (v74 >> 60 != 8)
  {
    goto LABEL_37;
  }

  v47 = v73 | v75;
  v48 = v71 | v70 | v69;
  if (v74 == 0x8000000000000000 && !(v47 | v68 | v72 | v48))
  {
    LOBYTE(v49) = 0;
    goto LABEL_38;
  }

  if (v74 != 0x8000000000000000 || v68 != 4 || (v49 = v47 | v72 | v48) != 0)
  {
LABEL_37:
    sub_24E88D2AC(&v68);
    LOBYTE(v49) = 1;
  }

LABEL_38:
  *(v24 + 157) = v49;
  if (v46)
  {
    v50 = *(v24 + 40);
    if (v50)
    {
      v51 = v50[22];
      v52 = v50[23];
      v54 = v50[3];
      v53 = v50[4];
      swift_beginAccess();
      sub_24E615E00(v67 + 16, &v68);
      v55 = v71;
      v56 = v72;
      __swift_project_boxed_opaque_existential_1(&v68, v71);
      v76[0] = v54;
      v76[1] = v53;
      v57 = *(v56 + 32);

      v57(&v78, v76, v51, v52, v55, v56);
      v26 = v66;
      v25 = v65;

      __swift_destroy_boxed_opaque_existential_1(&v68);
      *(v24 + 156) = v78;
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = swift_allocObject();
      v59[2] = v58;
      v59[3] = v50;
      v59[4] = v51;
      v59[5] = v52;

      InAppPurchaseStateDataSource.addObserver(_:action:)(v24, sub_24F664604, v59);
    }
  }

  if (v26)
  {
    if ((*(v26 + 136) & 1) == 0)
    {
      v60 = [objc_opt_self() defaultCenter];

      v61 = sub_24F92B098();

      [v60 addObserver:v24 selector:sel_restrictionsDidChange_ name:v61 object:v25];

      swift_unknownObjectRelease();

      goto LABEL_46;
    }
  }

  swift_unknownObjectRelease();
LABEL_46:

  return v24;
}

double sub_24F6635AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    ObjectType = swift_getObjectType();
    (*(a2 + 16))(v11, ObjectType, a2);
    if (v14 >> 60)
    {
      if (v14 >> 60 != 8)
      {
LABEL_9:
        sub_24E88D2AC(v11);
LABEL_12:
        LOBYTE(v10) = 1;
        goto LABEL_13;
      }

      v8 = v13 | v15;
      v9 = v11[3] | v11[2] | v11[1];
      if (v14 != 0x8000000000000000 || v8 | v11[0] | v12 | v9)
      {
        if (v14 == 0x8000000000000000 && v11[0] == 4)
        {
          v10 = v8 | v12 | v9;
          if (!v10)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_9;
      }
    }

    else if (LOBYTE(v11[0]) != 1)
    {
      goto LABEL_12;
    }

    LOBYTE(v10) = 0;
LABEL_13:
    *(v6 + 157) = v10;
    _s12GameStoreKit33InAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

double sub_24F6636D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(a3 + 24);
    v13 = *(a3 + 32);
    swift_beginAccess();
    sub_24E615E00(a1 + 16, v17);
    v14 = v18;
    v15 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v16[0] = v12;
    v16[1] = v13;
    (*(v15 + 32))(&v20, v16, a4, a5, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v17);
    *(v11 + 156) = v20;
    _s12GameStoreKit33InAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
  }

  return result;
}

uint64_t InAppPurchaseOfferButtonPresenter.deinit()
{
  v1 = v0;
  if (qword_27F24B800)
  {

    InAppPurchaseStateDataSource.removeObserver(_:)(v0);
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  sub_24E883630(v1 + 16);

  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_24E97D004(*(v1 + 128), *(v1 + 136));
  return v1;
}

double InAppPurchaseOfferButtonPresenter.__deallocating_deinit()
{
  InAppPurchaseOfferButtonPresenter.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_24F6638BC(char a1)
{
  v2 = v1;
  if ((a1 & 1) != 0 || (result = sub_24F663A28(), !v4))
  {
    v5 = *(v1 + 40);
    if (v5)
    {
      v6 = *(v5 + 72);
      if (*(v6 + 16))
      {

        v7 = sub_24E76DB58(0);
        if (v8)
        {
          v9 = *(*(v6 + 56) + 16 * v7);

          return v9;
        }
      }
    }

    v10 = *(v2 + 32);
    if (v10 && *(v10 + 24))
    {
      v11 = *(v10 + 16);

      return v11;
    }

    else
    {
      v12._object = 0x800000024FA5BAC0;
      v12._countAndFlagsBits = 0xD000000000000015;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      return localizedString(_:comment:)(v12, v13)._countAndFlagsBits;
    }
  }

  return result;
}

uint64_t sub_24F663998(char a1)
{
  if ((a1 & 1) != 0 || (result = sub_24F663AE0(), !v3))
  {
    v4 = *(v1 + 40);
    if (v4)
    {
      v5 = *(v4 + 88);
      if (*(v5 + 16))
      {

        v6 = sub_24E76DB58(0);
        if (v7)
        {
          v8 = *(*(v5 + 56) + 16 * v6);

          return v8;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_24F663A28()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 157);
  v3 = *(v1 + 72);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_24E76DB58(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_24E76DB58(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

uint64_t sub_24F663AE0()
{
  v1 = *(v0 + 40);
  if (!v1 || *(v1 + 125) != 1)
  {
    return 0;
  }

  v2 = *(v0 + 157);
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = sub_24E76DB58(3);
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v4)
  {

    v5 = sub_24E76DB58(2);
    if ((v6 & 1) == 0)
    {
LABEL_6:

      return 0;
    }

LABEL_9:
    v8 = *(*(v3 + 56) + 16 * v5);

    return v8;
  }

  return 0;
}

void sub_24F663B98()
{
  v1 = v0[4];
  if (v1 && *(v0 + 120) != 5 && (*(v0 + 156) & 0xC0) == 0x40)
  {
    v2 = *v0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = v0[3];
      ObjectType = swift_getObjectType();
      v7[3] = v2;
      v7[0] = v0;
      v5 = *(v3 + 8);
      v6 = *(v5 + 8);

      v6(v1, v7, ObjectType, v5);

      swift_unknownObjectRelease();
      sub_24E857CC8(v7);
    }
  }
}

double sub_24F663D3C(uint64_t a1, __n128 a2, uint64_t a3)
{
  sub_24F664490(a1, a3);

  swift_unknownObjectRelease();
  return result;
}

void (*sub_24F663D78(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_24F662C80;
}

double _s12GameStoreKit33InAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  v1 = *(v0 + 156);
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (!v2)
    {
      if (v1)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v3 = *(v0 + 24);
          ObjectType = swift_getObjectType();
          v5._countAndFlagsBits = 0xD00000000000001CLL;
          v5._object = 0x800000024FA5BA80;
          v6._countAndFlagsBits = 0;
          v6._object = 0xE000000000000000;
          v7 = localizedString(_:comment:)(v5, v6);
          if (qword_27F210000 != -1)
          {
            swift_once();
          }

          LOWORD(v56) = word_27F222780;
          v57 = qword_27F222788;
          v58 = qword_27F222790;
          v8 = *(v3 + 32);
          sub_24E9534EC(qword_27F222788, qword_27F222790);
          v8(v7._countAndFlagsBits, v7._object, 0, 0, &v56, ObjectType, v3);
          swift_unknownObjectRelease();

          sub_24E97D004(v57, v58);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_34;
        }

        v9 = "OfferButton.Title.Purchased";
        v10 = 0xD00000000000001CLL;
      }

      else
      {
        v10 = 0xD00000000000001BLL;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v0 + 24);
          v36 = swift_getObjectType();
          v37._object = 0x800000024FA5BA60;
          v37._countAndFlagsBits = 0xD00000000000001BLL;
          v38._countAndFlagsBits = 0;
          v38._object = 0xE000000000000000;
          v39 = localizedString(_:comment:)(v37, v38);
          if (qword_27F210000 != -1)
          {
            swift_once();
          }

          LOWORD(v56) = word_27F222780;
          v57 = qword_27F222788;
          v58 = qword_27F222790;
          v40 = *(v35 + 32);
          sub_24E9534EC(qword_27F222788, qword_27F222790);
          v40(v39._countAndFlagsBits, v39._object, 0, 0, &v56, v36, v35);
          swift_unknownObjectRelease();

          sub_24E97D004(v57, v58);
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_34;
        }

        v9 = "OfferButton.Hint.Downloading";
      }

      v41 = *(v0 + 24);
      v42 = swift_getObjectType();
      v43._object = (v9 | 0x8000000000000000);
      v43._countAndFlagsBits = v10;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      v45 = localizedString(_:comment:)(v43, v44);
      (*(v41 + 128))(v45._countAndFlagsBits, v45._object, v42, v41);
      goto LABEL_31;
    }

    v18 = sub_24F6638BC(v1 & 1);
    v20 = v19;
    v21 = sub_24F663998(v1 & 1);
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = *(v0 + 24);
        v26 = swift_getObjectType();
        v27 = *(v0 + 154);
        v59 = *(v0 + 150);
        v60 = v27;
        v28 = *(v0 + 128);
        v29 = *(v0 + 136);
        LOWORD(v56) = *(v0 + 120);
        v57 = v28;
        v58 = v29;
        v30 = *(v25 + 24);
        sub_24E9534EC(v28, v29);
        v30(v18, v20, v23, v24, &v59, 0, 0, &v56, v26, v25);
        swift_unknownObjectRelease();
        sub_24E97D004(v57, v58);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = *(v0 + 24);
        v32 = swift_getObjectType();
        v56 = v18;
        v57 = v20;
        MEMORY[0x253050C20](8236, 0xE200000000000000);
        MEMORY[0x253050C20](v23, v24);

        (*(v31 + 128))(v56, v57, v32, v31);
LABEL_31:
        swift_unknownObjectRelease();
LABEL_34:
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          return result;
        }

        v53 = *(v0 + 24);
        if ((*(v0 + 156) & 0xC0) == 0x40)
        {
          __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
          LOBYTE(v59) = 0;
          v54 = RestrictionsProtocol.doesAllow(_:properties:)(&v59, *(v0 + 40));
        }

        else
        {
          v54 = 1;
        }

        v55 = swift_getObjectType();
        (*(v53 + 16))(v54, v55, v53);
        goto LABEL_39;
      }
    }

    else
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v46 = *(v0 + 24);
        v47 = swift_getObjectType();
        v48 = *(v0 + 128);
        v49 = *(v0 + 136);
        LOWORD(v56) = *(v0 + 120);
        v57 = v48;
        v58 = v49;
        v50 = *(v46 + 32);
        sub_24E9534EC(v48, v49);
        v50(v18, v20, 0, 0, &v56, v47, v46);
        swift_unknownObjectRelease();
        sub_24E97D004(v57, v58);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v51 = *(v0 + 24);
        v52 = swift_getObjectType();
        (*(v51 + 128))(v18, v20, v52, v51);
        goto LABEL_31;
      }
    }

    goto LABEL_34;
  }

  if (v2 != 2)
  {
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return result;
    }

    v33 = *(v0 + 24);
    v34 = swift_getObjectType();
    (*(v33 + 16))(0, v34, v33);
LABEL_39:
    swift_unknownObjectRelease();
    return result;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v0 + 24);
    v13 = swift_getObjectType();
    v14 = *(v0 + 148);
    v59 = *(v0 + 144);
    v60 = v14;
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    LOWORD(v56) = *(v0 + 120);
    v57 = v15;
    v58 = v16;
    v17 = *(v12 + 56);
    sub_24E9534EC(v15, v16);
    v17(0, 0, &v59, &v56, v1 & 1, v13, v12);
    swift_unknownObjectRelease();
    sub_24E97D004(v57, v58);
  }

  return result;
}

double sub_24F664490(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 24);
    v7 = swift_getObjectType();
    (*(v6 + 104))(v2, sel_offerButtonTapped, v7, v6);
    swift_unknownObjectRelease();
  }

  return _s12GameStoreKit33InAppPurchaseOfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t sub_24F664584()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F6645BC()
{

  return swift_deallocObject();
}

uint64_t sub_24F664618@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_24F6646BC()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 24);
    if ((*(v0 + 156) & 0xC0) == 0x40)
    {
      __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
      v5 = 0;
      v3 = RestrictionsProtocol.doesAllow(_:properties:)(&v5, *(v0 + 40));
    }

    else
    {
      v3 = 1;
    }

    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v3, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return result;
}

GameStoreKit::AccessibilityMetadata __swiftcall AccessibilityMetadata.init(label:roleDescription:)(Swift::String_optional label, Swift::String_optional roleDescription)
{
  *v2 = label;
  v2[1] = roleDescription;
  result.roleDescription = roleDescription;
  result.label = label;
  return result;
}

uint64_t AccessibilityMetadata.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v9 = sub_24F928348();
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = sub_24F9285B8();
  (*(*(v16 - 8) + 8))(v19, v16);
  v12(a1, v5);
  result = (v12)(v8, v5);
  *a3 = v9;
  a3[1] = v11;
  a3[2] = v13;
  a3[3] = v15;
  return result;
}

uint64_t AccessibilityMetadata.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AccessibilityMetadata.roleDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccessibilityMetadata.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_24F92D088();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    return sub_24F92D088();
  }

LABEL_3:
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t AccessibilityMetadata.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_24F92D068();
  if (!v1)
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24F92D088();
    return sub_24F92D0B8();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24F664B48(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_24F92D088();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    return sub_24F92D088();
  }

LABEL_3:
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t sub_24F664C00()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_24F92D068();
  if (!v1)
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24F92D088();
    return sub_24F92D0B8();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit21AccessibilityMetadataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_24F92CE08() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_24F664D5C()
{
  result = qword_27F24B808;
  if (!qword_27F24B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B808);
  }

  return result;
}

uint64_t sub_24F664DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0, &unk_24F9FD4B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F664EA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0, &unk_24F9FD4B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ActivityFeedShelfIntent(uint64_t a1)
{
  result = qword_27F24B810;
  if (!qword_27F24B810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F664FA0(uint64_t a1)
{
  sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24F665064(319);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F24B820, &type metadata for ActivityFeedDataIntent.GameFilter);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F665064(uint64_t a1)
{
  if (!qword_27F244C18)
  {
    type metadata accessor for GameSource(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F244C18);
    }
  }
}

unint64_t sub_24F6650BC@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x4449726579616C70;
  *(inited + 96) = 0xE800000000000000;
  v6 = v1[2];
  v7 = v1[3];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 128) = v8;
  v9 = sub_24E605DB4();
  *(inited + 104) = v6;
  *(inited + 112) = v7;
  *(inited + 136) = v9;
  *(inited + 144) = 0x72756F53656D6167;
  *(inited + 152) = 0xEA00000000006563;
  v10 = type metadata accessor for ActivityFeedShelfIntent(0);
  v11 = *(v10 + 24);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0, &unk_24F9FD4B0);
  *(inited + 192) = sub_24F4949AC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24F665C3C(v1 + v11, boxed_opaque_existential_1);
  *(inited + 200) = 0x746C6946656D6167;
  *(inited + 208) = 0xEA00000000007265;
  if (*(v1 + *(v10 + 28)) > 1u)
  {
    v13 = 0uLL;
    if (*(v1 + *(v10 + 28)) == 2)
    {
      v13 = xmmword_24FA17BC0;
    }
  }

  else if (*(v1 + *(v10 + 28)))
  {
    v13 = xmmword_24FA17BD0;
  }

  else
  {
    v13 = xmmword_24FA17BB0;
  }

  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v13;

  v14 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_24F6652EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B838, &qword_24FA17CD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F665A74();
  sub_24F92D128();
  v11[15] = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11[14] = 1;
    sub_24F92CCA8();
    v10 = type metadata accessor for ActivityFeedShelfIntent(0);
    v11[13] = 2;
    type metadata accessor for GameSource(0);
    sub_24F665BF8(&qword_27F221F60, &protocol conformance descriptor for GameSource);
    sub_24F92CCF8();
    v11[12] = *(v3 + *(v10 + 28));
    v11[11] = 3;
    sub_24F47EE5C();
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F66553C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0, &unk_24F9FD4B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B828, &qword_24FA17CD0);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for ActivityFeedShelfIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F665A74();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v21;
  v15 = v22;
  v27 = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v16;
  v19[2] = v16;
  v26 = 1;
  v12[2] = sub_24F92CBC8();
  v12[3] = v17;
  type metadata accessor for GameSource(0);
  v25 = 2;
  sub_24F665BF8(&qword_27F221F50, &protocol conformance descriptor for GameSource);
  v19[1] = 0;
  sub_24F92CC18();
  sub_24F665AC8(v6, v12 + *(v10 + 24));
  v23 = 3;
  sub_24F47EE08();
  sub_24F92CC18();
  (*(v14 + 8))(v9, v15);
  *(v12 + *(v10 + 28)) = v24;
  sub_24F665B38(v12, v20);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_24F665B9C(v12);
}

uint64_t sub_24F6658F0()
{
  v1 = 0x444965676170;
  v2 = 0x72756F53656D6167;
  if (*v0 != 2)
  {
    v2 = 0x746C6946656D6167;
  }

  if (*v0)
  {
    v1 = 0x4449726579616C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24F66596C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F665DC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F665994(uint64_t a1)
{
  v2 = sub_24F665A74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6659D0(uint64_t a1)
{
  v2 = sub_24F665A74();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F665A74()
{
  result = qword_27F24B830;
  if (!qword_27F24B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B830);
  }

  return result;
}

uint64_t sub_24F665AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0, &unk_24F9FD4B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F665B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedShelfIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F665B9C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityFeedShelfIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F665BF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GameSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F665C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0, &unk_24F9FD4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F665CC0()
{
  result = qword_27F24B840;
  if (!qword_27F24B840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B840);
  }

  return result;
}

unint64_t sub_24F665D18()
{
  result = qword_27F24B848;
  if (!qword_27F24B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B848);
  }

  return result;
}

unint64_t sub_24F665D70()
{
  result = qword_27F24B850;
  if (!qword_27F24B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B850);
  }

  return result;
}

uint64_t sub_24F665DC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F53656D6167 && a2 == 0xEA00000000006563 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C6946656D6167 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_24F665F60@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  strcpy((inited + 32), "optionProvider");
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 47) = -18;
  *(inited + 72) = &type metadata for ArcadeLibraryOptionProvider;
  *(inited + 80) = sub_24F666100();
  *(inited + 48) = v3;
  *(inited + 49) = v4;
  *(inited + 50) = v5;
  *(inited + 51) = v6;
  *(inited + 52) = v7;
  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_24F666084(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v13[0] = *a1;
  v13[1] = v2;
  v13[2] = v3;
  v13[3] = v4;
  v13[4] = v5;
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  return _s12GameStoreKit27ArcadeLibraryOptionProviderV2eeoiySbAC_ACtFZ_0(v13, v12) & 1;
}

unint64_t sub_24F666100()
{
  result = qword_27F24B858;
  if (!qword_27F24B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B858);
  }

  return result;
}

uint64_t sub_24F666178(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24F666310(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_24F9289E8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_24F6664B4(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24F9289E8();
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
          if (v5 <= 0x3F)
          {
            sub_24E61C938(319);
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

uint64_t sub_24F6665D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F666618(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8F8, &qword_24FA18120);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F668298();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ContinuePlayingIcon(0);
    v8[14] = 1;
    sub_24F9289E8();
    sub_24F6665D0(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CD18();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[9] = 6;
    sub_24F929608();
    sub_24F6665D0(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F6669CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v34 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v38);
  v37 = v34 - v5;
  v6 = sub_24F9289E8();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8E8, &unk_24FA18110);
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  v12 = type metadata accessor for ContinuePlayingIcon(0);
  MEMORY[0x28223BE20](v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v14[*(v15 + 32)];
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *v16 = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0;
  v47 = v16;
  sub_24E61DA68(&v48, v16, qword_27F21B590, &unk_24F93BE30);
  v17 = v12[9];
  v18 = sub_24F92A6D8();
  v19 = *(*(v18 - 8) + 56);
  v46 = v17;
  v19(&v14[v17], 1, 1, v18);
  v20 = v12[10];
  v21 = sub_24F929608();
  v22 = *(*(v21 - 8) + 56);
  v45 = v20;
  v22(&v14[v20], 1, 1, v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F668298();
  v43 = v11;
  v23 = v44;
  sub_24F92D108();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_24E601704(v47, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v14[v46], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v14[v45], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v24 = v8;
    v34[2] = v21;
    v25 = v40;
    v44 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v51 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v26 = v49;
    *v14 = v48;
    *(v14 + 1) = v26;
    *(v14 + 4) = v50;
    LOBYTE(v48) = 1;
    sub_24F6665D0(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    sub_24F92CC68();
    v27 = v41;
    (*(v39 + 32))(&v14[v12[5]], v24, v25);
    LOBYTE(v48) = 2;
    v34[1] = 0;
    v14[v12[6]] = sub_24F92CC38() & 1;
    LOBYTE(v48) = 3;
    v28 = sub_24F92CBC8();
    v34[0] = v12;
    v29 = &v14[v12[7]];
    *v29 = v28;
    v29[1] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v51 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v48, v47, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v48) = 5;
    sub_24E65CAA0();
    v31 = v37;
    sub_24F92CC68();
    sub_24E61DA68(v31, &v14[v46], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v48) = 6;
    sub_24F6665D0(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v32 = v36;
    sub_24F92CC18();
    (*(v27 + 8))(v43, v42);
    sub_24E61DA68(v32, &v14[v45], &qword_27F213E68, &unk_24F93BC80);
    sub_24F6681DC(v14, v35, type metadata accessor for ContinuePlayingIcon);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_24F6682EC(v14, type metadata accessor for ContinuePlayingIcon);
  }
}

unint64_t sub_24F6671EC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 1)
  {
    v5 = 0x6E49646C756F6873;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F6672C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F6689A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F6672EC(uint64_t a1)
{
  v2 = sub_24F668298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F667328(uint64_t a1)
{
  v2 = sub_24F668298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F667364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 36), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F6674A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v27[0] = a3;
  v27[1] = a4;
  v10 = sub_24F925508();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B880, &qword_24FA180C8);
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B888, &qword_24FA180D0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v27 - v19;
  sub_24F667764(a1, a2, v27[0], v16, a5, a6);
  sub_24F9254D8();
  v21 = sub_24F667E7C();
  sub_24F926678();
  (*(v11 + 8))(v13, v10);
  sub_24E601704(v16, &qword_27F24B880, &qword_24FA180C8);
  v22 = (a1 + *(type metadata accessor for ContinuePlayingIcon(0) + 28));
  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  v27[4] = v24;
  v27[5] = v25;

  v27[2] = v14;
  v27[3] = v21;
  swift_getOpaqueTypeConformance2();
  sub_24E600AEC();
  sub_24F926538();

  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_24F667764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v43 = a4;
  v11 = type metadata accessor for _ContinuePlayingIconComponent(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8E0, &unk_24FA18100);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8B0, &qword_24FA180E0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  if (*(a1 + *(type metadata accessor for ContinuePlayingIcon(0) + 24)) == 1)
  {
    sub_24F6681DC(a1, v19, type metadata accessor for ContinuePlayingIcon);
    v20 = sub_24F925868();
    v44 = a6;
    v45 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
    sub_24F926F38();
    sub_24F923318();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8D0, &unk_24FA180F0) + 36)];
    *v29 = v20;
    *(v29 + 1) = v22;
    *(v29 + 2) = v24;
    *(v29 + 3) = v26;
    *(v29 + 4) = v28;
    v29[40] = 0;
    v30 = sub_24F9257F8();
    v44 = a5;
    v45 = a2;
    sub_24F926F38();
    sub_24F923318();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B8C0, &qword_24FA180E8) + 36)];
    *v39 = v30;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = swift_allocObject();
    *(v40 + 16) = a5;
    *(v40 + 24) = a2;
    *(v40 + 32) = a6;
    *(v40 + 40) = a3;
    v41 = &v19[*(v17 + 36)];
    *v41 = sub_24E67A5CC;
    *(v41 + 1) = 0;
    *(v41 + 2) = sub_24F668284;
    *(v41 + 3) = v40;
    sub_24E60169C(v19, v16, &qword_27F24B8B0, &qword_24FA180E0);
    swift_storeEnumTagMultiPayload();
    sub_24F667FBC();
    sub_24F6665D0(&qword_27F24B8D8, type metadata accessor for _ContinuePlayingIconComponent, &unk_24FA18270);

    sub_24F924E28();
    return sub_24E601704(v19, &qword_27F24B8B0, &qword_24FA180E0);
  }

  else
  {
    sub_24F6681DC(a1, v13, type metadata accessor for ContinuePlayingIcon);
    sub_24F6681DC(v13, v16, type metadata accessor for _ContinuePlayingIconComponent);
    swift_storeEnumTagMultiPayload();
    sub_24F667FBC();
    sub_24F6665D0(&qword_27F24B8D8, type metadata accessor for _ContinuePlayingIconComponent, &unk_24FA18270);
    sub_24F924E28();
    return sub_24F6682EC(v13, type metadata accessor for _ContinuePlayingIconComponent);
  }
}

uint64_t sub_24F667BA8(double *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  sub_24F926F48();
  return sub_24F926F48();
}

double sub_24F667C5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for ContinuePlayingIcon(0) + 24)))
  {
    v3 = 0.1;
  }

  else
  {
    v3 = 0.0;
  }

  v7 = &type metadata for GameIconShape;
  v8 = sub_24F5C450C();
  LOBYTE(v5) = 1;
  *(&v5 + 1) = 0;
  v6 = v3;
  sub_24E612C80(&v5, a2 + 40);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_24F667CF0(uint64_t a1)
{
  sub_24F4637F4();

  return sub_24F9218E8();
}

unint64_t sub_24F667DC4()
{
  result = qword_27F24B878;
  if (!qword_27F24B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B878);
  }

  return result;
}

unint64_t sub_24F667E7C()
{
  result = qword_27F24B890;
  if (!qword_27F24B890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B880, &qword_24FA180C8);
    sub_24F667F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B890);
  }

  return result;
}

unint64_t sub_24F667F00()
{
  result = qword_27F24B898;
  if (!qword_27F24B898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B8A0, &qword_24FA180D8);
    sub_24F667FBC();
    sub_24F6665D0(&qword_27F24B8D8, type metadata accessor for _ContinuePlayingIconComponent, &unk_24FA18270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B898);
  }

  return result;
}

unint64_t sub_24F667FBC()
{
  result = qword_27F24B8A8;
  if (!qword_27F24B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B8B0, &qword_24FA180E0);
    sub_24F668074();
    sub_24E602068(&qword_27F216588, &qword_27F216590, &unk_24F9E2890, MEMORY[0x277CE06A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B8A8);
  }

  return result;
}

unint64_t sub_24F668074()
{
  result = qword_27F24B8B8;
  if (!qword_27F24B8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B8C0, &qword_24FA180E8);
    sub_24F668100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B8B8);
  }

  return result;
}

unint64_t sub_24F668100()
{
  result = qword_27F24B8C8;
  if (!qword_27F24B8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B8D0, &unk_24FA180F0);
    sub_24F6665D0(&qword_27F24B8D8, type metadata accessor for _ContinuePlayingIconComponent, &unk_24FA18270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B8C8);
  }

  return result;
}

uint64_t sub_24F6681DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F668244()
{

  return swift_deallocObject();
}

unint64_t sub_24F668298()
{
  result = qword_27F24B8F0;
  if (!qword_27F24B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B8F0);
  }

  return result;
}

uint64_t sub_24F6682EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F668370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuePlayingIcon(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6683F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinuePlayingIcon(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F668460(uint64_t a1)
{
  result = type metadata accessor for ContinuePlayingIcon(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F6684D0()
{
  result = qword_27F24B910;
  if (!qword_27F24B910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B918, &qword_24FA18160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24B880, &qword_24FA180C8);
    sub_24F667E7C();
    swift_getOpaqueTypeConformance2();
    sub_24F6665D0(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B910);
  }

  return result;
}

unint64_t sub_24F6685CC()
{
  result = qword_27F24B920;
  if (!qword_27F24B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B920);
  }

  return result;
}

unint64_t sub_24F668624()
{
  result = qword_27F24B928;
  if (!qword_27F24B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B928);
  }

  return result;
}

unint64_t sub_24F66867C()
{
  result = qword_27F24B930;
  if (!qword_27F24B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B930);
  }

  return result;
}

uint64_t sub_24F6686EC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4 - 8];
  v6 = type metadata accessor for GameIcon(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for ContinuePlayingIcon(0);
  v11 = *(v10 + 20);
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v5, v1 + v11, v12);
  (*(v13 + 56))(v5, 0, 1, v12);
  sub_24E60169C(v1 + *(v10 + 32), v19, qword_27F24EC90, &unk_24F93C1D0);
  v14 = v20 != 0;
  sub_24E601704(v19, qword_27F21B590, &unk_24F93BE30);
  v15 = v7[10];
  *&v9[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  sub_24E6009C8(v5, v9, &qword_27F213FB0, &qword_24F93E6B0);
  v9[v7[7]] = 1;
  v9[v7[8]] = 1;
  v9[v7[9]] = v14;
  sub_24F668944(v9, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F245B08, &qword_24FA18300);
  v17 = a1 + *(result + 36);
  *v17 = 0x3FF0000000000000;
  *(v17 + 8) = 256;
  return result;
}

uint64_t sub_24F668944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameIcon(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6689A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E49646C756F6873 && a2 == 0xEF6E6F6349746573 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA4A720 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24F668C00()
{
  result = qword_27F24B938;
  if (!qword_27F24B938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F245B08, &qword_24FA18300);
    sub_24F6665D0(&qword_27F216790, type metadata accessor for GameIcon, &protocol conformance descriptor for GameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B938);
  }

  return result;
}

uint64_t sub_24F668CD0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PlayerAvatar(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_24F668E08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for PlayerAvatar(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24F668F4C(uint64_t a1)
{
  result = sub_24E69A5C4(319, &qword_27F223450, 0x277CBDA58);
  if (v2 <= 0x3F)
  {
    result = sub_24E69A5C4(319, &qword_27F24B950, 0x277CBDA80);
    if (v3 <= 0x3F)
    {
      result = sub_24F9289E8();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for PlayerAvatar(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F669034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20, &unk_24F992000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F928AD8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F669144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CC20, &unk_24F992000);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F928AD8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24F66926C(uint64_t a1)
{
  sub_24F6692F0(319);
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24F6692F0(uint64_t a1)
{
  if (!qword_27F24B968)
  {
    type metadata accessor for AvatarData(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F24B968);
    }
  }
}

uint64_t sub_24F66936C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F66940C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F66949C(uint64_t a1)
{
  result = type metadata accessor for LeaderboardsCountHeaderItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F66951C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70, &qword_24F9FD758);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F66966C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70, &qword_24F9FD758);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F6697A8(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24F497800(319, &qword_27F244C88, type metadata accessor for FriendsPlayingHeaderItem);
    if (v2 <= 0x3F)
    {
      sub_24E61C8D4(319);
      if (v3 <= 0x3F)
      {
        sub_24F497800(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F6698B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F6698FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v21 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9A8, &qword_24FA185C8);
  MEMORY[0x28223BE20](v20);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9B0, &qword_24FA185D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70, &qword_24F9FD758);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for FriendsPlayingHeaderItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(v19, v10, &qword_27F244C70, &qword_24F9FD758);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F244C70, &qword_24F9FD758);
    swift_storeEnumTagMultiPayload();
    v15 = sub_24F47D790();
    v22 = &type metadata for FriendsPlayingHeaderItemComponent;
    v23 = v15;
    swift_getOpaqueTypeConformance2();
    return sub_24F924E28();
  }

  else
  {
    sub_24F66BEB4(v10, v14, type metadata accessor for FriendsPlayingHeaderItem);
    v17 = sub_24F47D790();
    sub_24F921D38();
    (*(v5 + 16))(v3, v7, v4);
    swift_storeEnumTagMultiPayload();
    v22 = &type metadata for FriendsPlayingHeaderItemComponent;
    v23 = v17;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    (*(v5 + 8))(v7, v4);
    return sub_24F66BFE0(v14, type metadata accessor for FriendsPlayingHeaderItem);
  }
}

uint64_t sub_24F669C90(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9F0, &qword_24FA18620);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F66BF8C();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD38();
    v8[13] = 2;
    sub_24F92CD08();
    type metadata accessor for LeaderboardsCountHeaderItem(0);
    v8[12] = 3;
    type metadata accessor for FriendsPlayingHeaderItem(0);
    sub_24F6698B4(&qword_27F244CE0, type metadata accessor for FriendsPlayingHeaderItem, &unk_24FA2C740);
    sub_24F92CCF8();
    v8[11] = 4;
    sub_24F92CD18();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[9] = 6;
    sub_24F929608();
    sub_24F6698B4(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F66A040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70, &qword_24F9FD758);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v36 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9E0, &unk_24FA18610);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v36 - v8;
  v10 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  MEMORY[0x28223BE20](v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 28);
  v15 = type metadata accessor for FriendsPlayingHeaderItem(0);
  v16 = *(*(v15 - 8) + 56);
  v45 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = &v12[v10[9]];
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v43 = v17;
  sub_24E61DA68(&v47, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = v10[10];
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v44 = v18;
  v21 = v12;
  v20(&v12[v18], 1, 1, v19);
  v22 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24F66BF8C();
  v23 = v42;
  sub_24F92D108();
  if (v23)
  {
    v25 = v43;
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_24E601704(v21 + v45, &qword_27F244C70, &qword_24F9FD758);
    sub_24E601704(v25, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v21 + v44, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v42 = v15;
    v24 = v39;
    v36[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v50 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v26 = v48;
    *v12 = v47;
    *(v12 + 1) = v26;
    *(v12 + 4) = v49;
    LOBYTE(v47) = 1;
    v27 = sub_24F92CC58();
    v28 = v40;
    v29 = v43;
    v21[5] = v27;
    LOBYTE(v47) = 2;
    v21[6] = sub_24F92CC28();
    v21[7] = v30;
    LOBYTE(v47) = 3;
    sub_24F6698B4(&qword_27F244CD0, type metadata accessor for FriendsPlayingHeaderItem, &unk_24FA2C768);
    v36[0] = v21;
    v31 = v24;
    sub_24F92CC18();
    v32 = v36[0];
    sub_24E61DA68(v31, v36[0] + v45, &qword_27F244C70, &qword_24F9FD758);
    LOBYTE(v47) = 4;
    *(v32 + v10[8]) = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v50 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v47, v29, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v47) = 6;
    sub_24F6698B4(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v33 = v38;
    v34 = v41;
    sub_24F92CC18();
    (*(v28 + 8))(v9, v34);
    sub_24E61DA68(v33, v32 + v44, &qword_27F213E68, &unk_24F93BC80);
    sub_24F66B580(v32, v37);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return sub_24F66BFE0(v32, type metadata accessor for LeaderboardsCountHeaderItem);
  }
}

uint64_t sub_24F66A784()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000014;
    if (v1 != 1)
    {
      v5 = 0x656C746974;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0x6575676573;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000018;
    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F66A860@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F66C810(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F66A888(uint64_t a1)
{
  v2 = sub_24F66BF8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F66A8C4(uint64_t a1)
{
  v2 = sub_24F66BF8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F66A94C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CA0, &qword_24F9FD958);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v11 = a1[6];
  v10 = a1[7];
  v12 = a1[5];
  v13 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v14 = *(v13 + 28);
  v15 = *(a1 + *(v13 + 32));

  sub_24F6698FC(a1 + v14, v9);
  sub_24E60169C(v9, v6, &qword_27F244CA0, &qword_24F9FD958);
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9A0, &qword_24FA185C0);
  sub_24E60169C(v6, a2 + *(v16 + 48), &qword_27F244CA0, &qword_24F9FD958);

  sub_24E601704(v9, &qword_27F244CA0, &qword_24F9FD958);
  sub_24E601704(v6, &qword_27F244CA0, &qword_24F9FD958);
}

uint64_t sub_24F66AAB8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F66B580(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_24F66BEB4(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LeaderboardsCountHeaderItem);
  *a2 = sub_24F66BE44;
  a2[1] = v8;
  return result;
}

uint64_t sub_24F66ABC4(uint64_t a1)
{
  sub_24F47D47C();

  return sub_24F9218E8();
}

uint64_t sub_24F66AC08@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  v2 = sub_24F925E18();
  v4 = v3;
  v6 = v5;
  sub_24F925898();
  v7 = sub_24F925C98();
  v9 = v8;
  v11 = v10;

  sub_24E600B40(v2, v4, v6 & 1);

  sub_24F9268B8();
  sub_24E600B40(v7, v9, v11 & 1);

  LODWORD(v2) = sub_24F9251C8();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146B0, &qword_24F93D590) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v14 = *MEMORY[0x277CE13B8];
  v15 = sub_24F927748();
  result = (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  *v12 = v2;
  return result;
}

uint64_t sub_24F66ADA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9C0, &unk_24FA185E0);
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CA0, &qword_24F9FD958);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v56 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217710, &unk_24F9462C0);
  MEMORY[0x28223BE20](v57);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70, &qword_24F9FD758);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9C8, &qword_24FA185F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = a1[6];
  v23 = a1[7];
  v63 = a1[5];
  v64 = v22;
  v24 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v25 = *(v24 + 28);
  v62 = *(a1 + *(v24 + 32));
  v56 = v25;
  sub_24E60169C(a1 + v25, v15, &qword_27F244C70, &qword_24F9FD758);
  v26 = type metadata accessor for FriendsPlayingHeaderItem(0);
  v27 = 1;
  v28 = (*(*(v26 - 8) + 48))(v15, 1, v26);

  sub_24E601704(v15, &qword_27F244C70, &qword_24F9FD758);
  if (v28 != 1)
  {
    sub_24F9271E8();
    v29 = sub_24F9251C8();
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0, &qword_24F93D200) + 36)] = v29;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598, &qword_24F978EC0) + 36);
    v31 = *MEMORY[0x277CE13B8];
    v32 = sub_24F927748();
    (*(*(v32 - 8) + 104))(&v12[v30], v31, v32);
    LOBYTE(v31) = sub_24F9257F8();
    sub_24F923318();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217788, &unk_24F946340) + 36)];
    *v41 = v31;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    LOBYTE(v31) = sub_24F925868();
    sub_24F923318();
    v42 = &v12[*(v57 + 36)];
    *v42 = v31;
    *(v42 + 1) = v43;
    *(v42 + 2) = v44;
    *(v42 + 3) = v45;
    *(v42 + 4) = v46;
    v42[40] = 0;
    v47 = v59;
    sub_24F6698FC(a1 + v56, v59);
    v48 = v58;
    v56 = v23;
    v57 = v18;
    sub_24E60169C(v12, v58, &qword_27F217710, &unk_24F9462C0);
    v49 = v60;
    sub_24E60169C(v47, v60, &qword_27F244CA0, &qword_24F9FD958);
    v50 = v61;
    sub_24E60169C(v48, v61, &qword_27F217710, &unk_24F9462C0);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9D8, &qword_24FA18608);
    sub_24E60169C(v49, v50 + *(v51 + 48), &qword_27F244CA0, &qword_24F9FD958);
    sub_24E601704(v47, &qword_27F244CA0, &qword_24F9FD958);
    sub_24E601704(v12, &qword_27F217710, &unk_24F9462C0);
    sub_24E601704(v49, &qword_27F244CA0, &qword_24F9FD958);
    v23 = v56;
    v18 = v57;
    sub_24E601704(v48, &qword_27F217710, &unk_24F9462C0);
    sub_24F66BF1C(v50, v21);
    v27 = 0;
  }

  (*(v65 + 56))(v21, v27, 1, v66);
  sub_24E60169C(v21, v18, &qword_27F24B9C8, &qword_24FA185F0);
  v52 = v67;
  v53 = v63;
  *v67 = v64;
  v52[1] = v23;
  v52[2] = v53;
  *(v52 + 24) = v62;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9D0, &unk_24FA185F8);
  sub_24E60169C(v18, v52 + *(v54 + 48), &qword_27F24B9C8, &qword_24FA185F0);

  sub_24E601704(v21, &qword_27F24B9C8, &qword_24FA185F0);
  sub_24E601704(v18, &qword_27F24B9C8, &qword_24FA185F0);
}

uint64_t sub_24F66B394@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924998();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9B8, &qword_24FA185D8);
  return sub_24F66ADA8(v2, (a1 + *(v4 + 44)));
}

unint64_t sub_24F66B480()
{
  result = qword_27F24B998;
  if (!qword_27F24B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B998);
  }

  return result;
}

uint64_t sub_24F66B580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F66B5E4()
{
  v1 = type metadata accessor for LeaderboardsCountHeaderItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));
  __swift_destroy_boxed_opaque_existential_1(v3);

  v4 = &v3[v1[7]];
  v5 = type metadata accessor for FriendsPlayingHeaderItem(0);
  if (!(*(*(v5 - 1) + 48))(v4, 1, v5))
  {
    __swift_destroy_boxed_opaque_existential_1(v4);

    v6 = &v4[v5[6]];

    v7 = type metadata accessor for Player(0);
    v8 = v7[6];
    v9 = sub_24F9289E8();
    v47 = *(v9 - 8);
    v48 = v9;
    v10 = &v6[v8];
    v11 = *(v47 + 8);
    v11(v10);

    if (*&v6[v7[9] + 8] != 1)
    {
    }

    v12 = &v6[v7[13]];
    v13 = type metadata accessor for CallProviderConversationHandleSet(0);
    v49 = v11;
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v44 = v4;
      v45 = v5;
      v14 = type metadata accessor for CallProviderConversationHandle(0);
      v15 = *(*(v14 - 8) + 48);
      if (!v15(v12, 1, v14))
      {
        v16 = v11;

        v17 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v47 + 48))(&v12[v17], 1, v48))
        {
          v16(&v12[v17], v48);
        }
      }

      v18 = &v12[*(v13 + 20)];
      v19 = v15(v18, 1, v14);
      v5 = v45;
      if (!v19)
      {

        v20 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v47 + 48))(&v18[v20], 1, v48))
        {
          v49(&v18[v20], v48);
        }
      }

      v4 = v44;
    }

    if (*&v6[v7[15] + 8])
    {
    }

    v21 = &v6[v7[16]];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v21, 1, PlayedTogetherInfo))
    {
      v46 = v5;

      v23 = type metadata accessor for Game(0);
      v49(&v21[v23[18]], v48);
      v24 = v23[19];
      if (!(*(v47 + 48))(&v21[v24], 1, v48))
      {
        v49(&v21[v24], v48);
      }

      v25 = v23[21];
      v26 = sub_24F920818();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(&v21[v25], 1, v26))
      {
        (*(v27 + 8))(&v21[v25], v26);
      }

      v5 = v46;
    }

    v28 = &v6[v7[17]];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v28, 1, ChallengeInfo))
    {

      v30 = type metadata accessor for Game(0);
      v49(&v28[v30[18]], v48);
      v31 = v30[19];
      if (!(*(v47 + 48))(&v28[v31], 1, v48))
      {
        v49(&v28[v31], v48);
      }

      v32 = v30[21];
      v33 = sub_24F920818();
      v34 = *(v33 - 8);
      if (!(*(v34 + 48))(&v28[v32], 1, v33))
      {
        (*(v34 + 8))(&v28[v32], v33);
      }
    }

    v35 = &v4[v5[8]];
    if (*(v35 + 3))
    {
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    v36 = v5[9];
    v37 = sub_24F929608();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(&v4[v36], 1, v37))
    {
      (*(v38 + 8))(&v4[v36], v37);
    }
  }

  v39 = &v3[v1[9]];
  if (*(v39 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v40 = v1[10];
  v41 = sub_24F929608();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(&v3[v40], 1, v41))
  {
    (*(v42 + 8))(&v3[v40], v41);
  }

  return swift_deallocObject();
}

uint64_t sub_24F66BE44@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LeaderboardsCountHeaderItem(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F66A94C(v4, a1);
}

uint64_t sub_24F66BEB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F66BF1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24B9C0, &unk_24FA185E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F66BF8C()
{
  result = qword_27F24B9E8;
  if (!qword_27F24B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24B9E8);
  }

  return result;
}

uint64_t sub_24F66BFE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F66C104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  v50 = a4;
  v59 = a1;
  v60 = a2;
  v58 = a5;
  v6 = sub_24F924218();
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x28223BE20](v6);
  v54 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180, &qword_24F9FDB90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BA38, &qword_24FA187F0);
  MEMORY[0x28223BE20](v49);
  v48 = &v48 - v12;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BA40, &qword_24FA187F8);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v51 = &v48 - v15;
  v61 = a3;
  sub_24E9B5BEC();
  v61 = sub_24F92C628();
  v62 = v16;
  sub_24E600AEC();
  v17 = sub_24F925E18();
  v19 = v18;
  v21 = v20;
  v22 = sub_24F92B098();
  CTFontCreateWithNameAndOptions(v22, 66.0, 0, 0x20000uLL);

  sub_24F925A78();
  v23 = sub_24F925C98();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_24E600B40(v17, v19, v21 & 1);

  v61 = v23;
  v62 = v25;
  v63 = v27 & 1;
  v64 = v29;
  sub_24F91EF98();
  v30 = sub_24F91EFA8();
  (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
  v31 = v48;
  sub_24F9260F8();
  sub_24E601704(v11, &qword_27F233180, &qword_24F9FDB90);
  v32 = v23;
  v33 = v31;
  v34 = v49;
  sub_24E600B40(v32, v25, v27 & 1);

  *&v31[*(v34 + 36)] = sub_24F925198();
  if (v50)
  {
    v35 = v54;
    sub_24F924208();
    v36 = v56;
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
    sub_24F6698B4(&qword_27F216C88, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40, &unk_24F94F9F0);
    sub_24E602068(&qword_27F21AE48, &qword_27F21AE40, &unk_24F94F9F0, MEMORY[0x277D83970]);
    v35 = v54;
    v37 = v56;
    sub_24F92C6A8();
    v36 = v37;
  }

  sub_24F66CA50();
  v38 = v51;
  sub_24F926AE8();
  (*(v57 + 8))(v35, v36);
  sub_24E601704(v33, &qword_27F24BA38, &qword_24FA187F0);
  v40 = v52;
  v39 = v53;
  v41 = *(v53 + 16);
  v42 = v55;
  v41(v52, v38, v55);
  v43 = v58;
  v41(v58, v40, v42);
  v44 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BA50, &qword_24FA18800) + 48)];
  v45 = v60;
  *v44 = v59;
  v44[1] = v45;
  v46 = *(v39 + 8);
  swift_bridgeObjectRetain_n();
  v46(v38, v42);

  return (v46)(v40, v42);
}

uint64_t sub_24F66C68C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BA30, &unk_24FA187E0);
  return sub_24F66C104(v4, v5, v6, v7, (a2 + *(v8 + 44)));
}

unint64_t sub_24F66C70C()
{
  result = qword_27F24BA18;
  if (!qword_27F24BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BA18);
  }

  return result;
}

unint64_t sub_24F66C764()
{
  result = qword_27F24BA20;
  if (!qword_27F24BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BA20);
  }

  return result;
}

unint64_t sub_24F66C7BC()
{
  result = qword_27F24BA28;
  if (!qword_27F24BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BA28);
  }

  return result;
}

uint64_t sub_24F66C810(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46610 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA758A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA758C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24F66CA50()
{
  result = qword_27F24BA48;
  if (!qword_27F24BA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BA38, &qword_24FA187F0);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F217388, &qword_27F217390, &unk_24F9454F0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BA48);
  }

  return result;
}

unint64_t sub_24F66CB4C()
{
  result = qword_27F24BA58;
  if (!qword_27F24BA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24BA60, &qword_24FA18850);
    sub_24E602068(&qword_27F24BA68, qword_27F24BA70, qword_24FA18858, MEMORY[0x277CE1198]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24BA58);
  }

  return result;
}

uint64_t UpdatePlayTogetherGameActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  updated = type metadata accessor for UpdatePlayTogetherGameAction(0);
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated - 8);
  sub_24F66E0BC(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UpdatePlayTogetherGameAction);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = *(a3 + 16);
  *(v13 + 24) = a2;
  sub_24F66E1AC(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for UpdatePlayTogetherGameAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24FA188C0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F66CEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for GameActivityDraftGameInfo(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23FFA8, &unk_24FA18950);
  v4[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v6 = type metadata accessor for GameActivityDraftBuilder();
  v7 = swift_task_alloc();
  v4[37] = v7;
  *v7 = v4;
  v7[1] = sub_24F66D0BC;

  return MEMORY[0x28217F228](v4 + 18, v6, v6);
}

uint64_t sub_24F66D0BC()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_24F66DBBC;
  }

  else
  {
    v2 = sub_24F66D1D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F66D1D0()
{
  v1 = *(v0 + 144);
  *(v0 + 312) = v1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v50 = v1;
  if (v2)
  {
    v3 = *(v0 + 288);
    swift_getKeyPath();
    *(v0 + 152) = v2;
    sub_24F66E074(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);

    sub_24F91FD88();

    v4 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
    swift_beginAccess();
    sub_24E60169C(v2 + v4, v3, &qword_27F212B28, &qword_24F939910);
  }

  else
  {
    (*(*(v0 + 232) + 56))(*(v0 + 288), 1, 1, *(v0 + 224));
  }

  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 248);
  v8 = *(v0 + 256);
  v9 = *(v0 + 224);
  v10 = *(v0 + 232);
  sub_24F66E0BC(*(v0 + 192), v6, type metadata accessor for GameActivityDraftGameInfo);
  v49 = *(v10 + 56);
  v49(v6, 0, 1, v9);
  v11 = *(v7 + 48);
  sub_24E60169C(v5, v8, &qword_27F212B28, &qword_24F939910);
  sub_24E60169C(v6, v8 + v11, &qword_27F212B28, &qword_24F939910);
  v12 = *(v10 + 48);
  if (v12(v8, 1, v9) == 1)
  {
    v13 = *(v0 + 288);
    v14 = *(v0 + 224);
    sub_24E601704(*(v0 + 280), &qword_27F212B28, &qword_24F939910);
    sub_24E601704(v13, &qword_27F212B28, &qword_24F939910);
    if (v12(v8 + v11, 1, v14) == 1)
    {
      sub_24E601704(*(v0 + 256), &qword_27F212B28, &qword_24F939910);
      v15 = v50;
      goto LABEL_13;
    }
  }

  else
  {
    v16 = *(v0 + 224);
    sub_24E60169C(*(v0 + 256), *(v0 + 272), &qword_27F212B28, &qword_24F939910);
    v17 = v12(v8 + v11, 1, v16);
    v19 = *(v0 + 280);
    v18 = *(v0 + 288);
    v20 = *(v0 + 272);
    if (v17 != 1)
    {
      v23 = *(v0 + 256);
      v24 = *(v0 + 240);
      sub_24F66E1AC(v8 + v11, v24, type metadata accessor for GameActivityDraftGameInfo);
      v25 = _s12GameStoreKit0a13ActivityDraftA4InfoV2eeoiySbAC_ACtFZ_0(v20, v24);
      sub_24F66E150(v24);
      sub_24E601704(v19, &qword_27F212B28, &qword_24F939910);
      sub_24E601704(v18, &qword_27F212B28, &qword_24F939910);
      sub_24F66E150(v20);
      sub_24E601704(v23, &qword_27F212B28, &qword_24F939910);
      v15 = v50;
      if (v25)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_24E601704(*(v0 + 280), &qword_27F212B28, &qword_24F939910);
    sub_24E601704(v18, &qword_27F212B28, &qword_24F939910);
    sub_24F66E150(v20);
  }

  sub_24E601704(*(v0 + 256), &qword_27F23FFA8, &unk_24FA18950);
  v15 = v50;
LABEL_10:
  if (!*(v15 + 16))
  {
    goto LABEL_16;
  }

  v21 = *(v0 + 264);
  v22 = *(v0 + 224);
  sub_24F66E0BC(*(v0 + 192), v21, type metadata accessor for GameActivityDraftGameInfo);
  v49(v21, 0, 1, v22);

  sub_24F34DCA8(v21);

LABEL_13:
  v26 = *(v15 + 16);
  if (v26)
  {
    v27 = *(v0 + 216);
    v28 = type metadata accessor for ChallengeDefinitionDetail(0);
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    swift_getKeyPath();
    v29 = swift_task_alloc();
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
    *(v0 + 160) = v26;
    sub_24F66E074(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);

    sub_24F91FD78();

    sub_24E601704(v27, &qword_27F212A08, &qword_24F9397D0);
    v30 = *(v15 + 16);
    if (v30)
    {
      v31 = *(v0 + 208);
      v32 = type metadata accessor for ActivityDefinitionDetail(0);
      (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
      swift_getKeyPath();
      v33 = swift_task_alloc();
      *(v33 + 16) = v30;
      *(v33 + 24) = v31;
      *(v0 + 168) = v30;

      sub_24F91FD78();

      sub_24E601704(v31, &qword_27F2142A0, &unk_24F94CF90);
    }
  }

LABEL_16:
  v34 = *(v0 + 192);
  updated = type metadata accessor for UpdatePlayTogetherGameAction(0);
  sub_24E60169C(v34 + *(updated + 20), v0 + 56, &qword_27F213EA8, &unk_24F93D030);
  if (*(v0 + 80))
  {
    v36 = *(v0 + 200);
    sub_24E612C80((v0 + 56), v0 + 16);
    v37 = swift_task_alloc();
    *(v0 + 320) = v37;
    v40 = type metadata accessor for UpdatePlayTogetherGameActionImplementation(0, v36, v38, v39);
    WitnessTable = swift_getWitnessTable();
    *v37 = v0;
    v37[1] = sub_24F66D9D4;
    v42 = *(v0 + 176);
    v43 = *(v0 + 184);

    return sub_24F1487B0(v42, v0 + 16, v43, v40, WitnessTable);
  }

  else
  {
    v45 = *(v0 + 176);

    sub_24E601704(v0 + 56, qword_27F21B590, &unk_24F93BE30);
    v46 = *MEMORY[0x277D21CA8];
    v47 = sub_24F928AE8();
    (*(*(v47 - 8) + 104))(v45, v46, v47);

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_24F66D9D4()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_24F66DC80;
  }

  else
  {
    v2 = sub_24F66DAE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F66DAE8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F66DBBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F66DC80()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F66DD54()
{
  updated = type metadata accessor for UpdatePlayTogetherGameAction(0);
  v2 = (*(*(updated - 8) + 80) + 32) & ~*(*(updated - 8) + 80);

  v3 = *(type metadata accessor for GameActivityDraftGameInfo(0) + 28);
  v4 = sub_24F9289E8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  v5 = (v0 + v2 + *(updated + 20));
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v6 = *(updated + 24);
  v7 = sub_24F928AD8();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_24F66DEB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for UpdatePlayTogetherGameAction(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F66CEA0(a1, v7, v1 + v6, v4);
}

uint64_t sub_24F66DFC4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F66E074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F66E0BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F66E150(uint64_t a1)
{
  v2 = type metadata accessor for GameActivityDraftGameInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F66E1AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24F66E21C(unint64_t *a1, id a2, uint64_t a3)
{
  v6 = type metadata accessor for CallInviteAction(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24F928AE8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v62 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 conversationManager];
  v14 = sub_24F92B098();
  v64 = [v12 callWithUniqueProxyIdentifier_];

  if (!v64)
  {
    if (qword_27F211400 != -1)
    {
LABEL_32:
      swift_once();
    }

    v63 = a2;
    v25 = sub_24F9220D8();
    __swift_project_value_buffer(v25, qword_27F39E850);
    sub_24EC37D08(a1, v8);
    v26 = sub_24F9220B8();
    v27 = sub_24F92BDB8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v65 = v29;
      *v28 = 136315138;
      v31 = *v8;
      v30 = v8[1];

      sub_24EC37D6C(v8);
      v32 = sub_24E7620D4(v31, v30, &v65);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_24E5DD000, v26, v27, "No call with unique proxy identifier %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x2530542D0](v29, -1, -1);
      MEMORY[0x2530542D0](v28, -1, -1);
    }

    else
    {

      sub_24EC37D6C(v8);
    }

    type metadata accessor for CallInviteActionImplementation.CallInviteActionImplementationError(0, a3, v33, v34);
    swift_getWitnessTable();
    v40 = swift_allocError();
    *v41 = 0;
    sub_24F92A9A8();

    return;
  }

  if (![v64 isConversation])
  {
    type metadata accessor for CallInviteActionImplementation.CallInviteActionImplementationError(0, a3, v15, v16);
    swift_getWitnessTable();
    v36 = swift_allocError();
    v37 = 1;
    goto LABEL_21;
  }

  v17 = [v12 activeConversationForCall_];
  if (!v17)
  {
    type metadata accessor for CallInviteActionImplementation.CallInviteActionImplementationError(0, a3, v18, v19);
    swift_getWitnessTable();
    v36 = swift_allocError();
    v37 = 3;
LABEL_21:
    *v35 = v37;
    sub_24F92A9A8();

    v42 = v64;
LABEL_22:

    return;
  }

  v59 = v13;
  v60 = v17;
  v55 = v10;
  v56 = v9;
  v57 = a3;
  v58 = v12;
  v63 = a2;
  v13 = 0;
  a3 = a1[2];
  v61 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  v20 = a3 + 48;
  a2 = *(a3 + 16);
  v54 = a3 + 48;
LABEL_5:
  v21 = (v20 + 24 * v13);
  while (a2 != v13)
  {
    if (v13 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    ++v13;
    a1 = (v21 + 3);
    v12 = *(v21 - 16);
    v22 = objc_allocWithZone(MEMORY[0x277D6EEE8]);

    v23 = sub_24F92B098();
    v24 = [v22 initWithType:v12 + 1 value:v23];

    v8 = [objc_allocWithZone(MEMORY[0x277D6EEA0]) initWithHandle:v24 nickname:0];

    v21 = a1;
    if (v8)
    {
      a1 = &v65;
      MEMORY[0x253050F00]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v61 = v65;
      v20 = v54;
      goto LABEL_5;
    }
  }

  v38 = sub_24F45E074(v61);

  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = sub_24F92C738();
  }

  else
  {
    v39 = v38[2];
  }

  v44 = v58;
  v43 = v59;
  v46 = v56;
  v45 = v57;
  v47 = v55;
  if (!v39)
  {

    type metadata accessor for CallInviteActionImplementation.CallInviteActionImplementationError(0, v45, v50, v51);
    swift_getWitnessTable();
    v52 = swift_allocError();
    *v53 = 4;
    sub_24F92A9A8();

    v42 = v60;
    goto LABEL_22;
  }

  sub_24E69A5C4(0, &qword_27F22F0C0, 0x277D6EEA0);
  sub_24F66EFD0();
  v48 = sub_24F92BA98();

  [v43 addRemoteMembers:v48 toConversation:v60];

  v49 = v62;
  (*(v47 + 104))(v62, *MEMORY[0x277D21CA8], v46);
  sub_24F92A9C8();
  (*(v47 + 8))(v49, v46);
  if (qword_27F210FD0 != -1)
  {
    swift_once();
  }

  OverlayCallCenter.callInviteSent()();
}

uint64_t sub_24F66E958(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v18 = a2;
  v2 = sub_24F927D88();
  v20 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24F927DC8();
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CallInviteAction(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v11 = sub_24F92A9E8();
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v12 = sub_24F92BEF8();
  sub_24EC37D08(v17, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  sub_24F66EE58(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  aBlock[4] = sub_24F66EEBC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_168;
  v15 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F66EF70(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v15);
  _Block_release(v15);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
  return v11;
}

uint64_t sub_24F66ED54()
{
  v1 = (type metadata accessor for CallInviteAction(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F66EE58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallInviteAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24F66EEBC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for CallInviteAction(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24F66E21C((v0 + v3), v4, v1);
}

uint64_t block_copy_helper_168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F66EF70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F66EFD0()
{
  result = qword_27F2440F0;
  if (!qword_27F2440F0)
  {
    sub_24E69A5C4(255, &qword_27F22F0C0, 0x277D6EEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2440F0);
  }

  return result;
}

uint64_t sub_24F66F0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for GSKAppEventFormattedDate(0);
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v42 = sub_24F91F648();
  v14 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = *(a1 + 16);
  if (!v19)
  {
    v29 = v35;
    v30 = *(v36 + 56);

    return v30(a2, 1, 1, v29, v18);
  }

  v34 = a2;
  v41 = &v33 - v17;
  sub_24F91F5B8();
  v20 = a1 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  sub_24F67A0B8(v20, v13, type metadata accessor for GSKAppEventFormattedDate);
  v21 = (v14 + 48);
  v37 = v13;
  v38 = (v14 + 32);
  v40 = (v14 + 8);
  v22 = *(v36 + 72);
  v23 = v42;
  while (1)
  {
    sub_24F67A0B8(v20, v10, type metadata accessor for GSKAppEventFormattedDate);
    sub_24E60169C(v10, v6, &unk_27F22EC30, &qword_24F939880);
    if ((*v21)(v6, 1, v23) != 1)
    {
      break;
    }

    sub_24F67A058(v13, type metadata accessor for GSKAppEventFormattedDate);
    sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
LABEL_4:
    sub_24F67A17C(v10, v13, type metadata accessor for GSKAppEventFormattedDate);
    v20 += v22;
    if (!--v19)
    {
      (*v40)(v41, v23);
      goto LABEL_13;
    }
  }

  v24 = v39;
  (*v38)(v39, v6, v23);
  v25 = sub_24F91F588();
  v26 = v23;
  v27 = v25;
  v28 = *v40;
  (*v40)(v24, v26);
  if ((v27 & 1) == 0)
  {
    v13 = v37;
    sub_24F67A058(v37, type metadata accessor for GSKAppEventFormattedDate);
    v23 = v42;
    goto LABEL_4;
  }

  sub_24F67A058(v10, type metadata accessor for GSKAppEventFormattedDate);
  v28(v41, v42);
  v13 = v37;
LABEL_13:
  v32 = v34;
  sub_24F67A17C(v13, v34, type metadata accessor for GSKAppEventFormattedDate);
  return (*(v36 + 56))(v32, 0, 1, v35);
}

uint64_t sub_24F66F518@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_24F4E9558(a2, v8);
      sub_24F67A17C(v8, a3, type metadata accessor for CardLayoutMetrics);
      *(a3 + v6[17]) = 0;

      *(a3 + v6[13]) = 1;
      *(a3 + v6[30]) = 0x403A000000000000;
      *(a3 + v6[19]) = 2;
      *(a3 + v6[28]) = 2;
      *(a3 + v6[21]) = 1;
      v13 = 10.0;
      goto LABEL_24;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v9 = __swift_project_value_buffer(v6, qword_27F39E610);
      sub_24F67A0B8(v9, v8, type metadata accessor for CardLayoutMetrics);
      v10 = 0;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v6, qword_27F39E658);
      sub_24F67A0B8(v15, v8, type metadata accessor for CardLayoutMetrics);
      v10 = 1;
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        sub_24F4E9E44(a2, v8);
      }

      else
      {
        if (qword_27F2112F8 != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v6, qword_27F39E628);
        sub_24F67A0B8(v14, v8, type metadata accessor for CardLayoutMetrics);
      }
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v6, qword_27F39E640);
      sub_24F67A0B8(v11, v8, type metadata accessor for CardLayoutMetrics);
    }

    v10 = 1;
  }

  sub_24F67A17C(v8, a3, type metadata accessor for CardLayoutMetrics);
  *(a3 + v6[17]) = v10;
  v16 = sub_24F92CE08();

  *(a3 + v6[13]) = v16 & 1;
  *(a3 + v6[30]) = 0x403A000000000000;
  *(a3 + v6[19]) = 2;
  *(a3 + v6[28]) = 2;
  if (a1 == 4)
  {
    *(a3 + v6[21]) = 2;
    v13 = 8.0;
  }

  else
  {
    v13 = *(a3 + v6[16]);
  }

LABEL_24:
  *(a3 + v6[16]) = v13;
  return result;
}

uint64_t sub_24F66F8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v362 = a5;
  v346 = a4;
  v365 = a2;
  v363 = a6;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  v291 = *(v292 - 8);
  MEMORY[0x28223BE20](v292);
  v283 = &v265 - v8;
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88, &unk_24F94FFC0);
  MEMORY[0x28223BE20](v319);
  v293 = &v265 - v9;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC00, &qword_24FA18B98);
  MEMORY[0x28223BE20](v317);
  v318 = &v265 - v10;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC08, &qword_24FA18BA0);
  MEMORY[0x28223BE20](v337);
  v320 = &v265 - v11;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC10, &qword_24FA18BA8);
  MEMORY[0x28223BE20](v335);
  v336 = &v265 - v12;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC18, &unk_24FA18BB0);
  MEMORY[0x28223BE20](v351);
  v338 = &v265 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v14 - 8);
  v295 = &v265 - v15;
  v340 = sub_24F9289E8();
  v339 = *(v340 - 8);
  MEMORY[0x28223BE20](v340);
  v282 = &v265 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = v16;
  MEMORY[0x28223BE20](v17);
  v290 = &v265 - v18;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC20, &qword_24FA18BC0);
  MEMORY[0x28223BE20](v334);
  v321 = &v265 - v19;
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219068, &unk_24F94BCF0);
  MEMORY[0x28223BE20](v299);
  v302 = (&v265 - v20);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219070, &qword_24F94FF00);
  MEMORY[0x28223BE20](v301);
  v287 = (&v265 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v289 = &v265 - v23;
  v298 = type metadata accessor for ColorGroup(0);
  v297 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v288 = &v265 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219078, &qword_24F94BD00);
  MEMORY[0x28223BE20](v316);
  v300 = &v265 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v26);
  v322 = &v265 - v27;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF58, &qword_24F94FF08);
  MEMORY[0x28223BE20](v315);
  v309 = &v265 - v28;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF60, &qword_24F94FF10);
  MEMORY[0x28223BE20](v284);
  v285 = (&v265 - v29);
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF68, &qword_24F94FF18);
  MEMORY[0x28223BE20](v308);
  v286 = &v265 - v30;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AF70, &qword_24F94FF20);
  MEMORY[0x28223BE20](v332);
  v310 = &v265 - v31;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC28, &qword_24FA18BC8);
  MEMORY[0x28223BE20](v347);
  v349 = &v265 - v32;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC30, &qword_24FA18BD0);
  MEMORY[0x28223BE20](v330);
  v331 = &v265 - v33;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC38, &qword_24FA18BD8);
  MEMORY[0x28223BE20](v348);
  v333 = &v265 - v34;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC40, &qword_24FA18BE0);
  MEMORY[0x28223BE20](v355);
  v350 = &v265 - v35;
  v329 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v329);
  v314 = &v265 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC48, &qword_24FA18BE8);
  MEMORY[0x28223BE20](v327);
  v313 = &v265 - v37;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC50, &unk_24FA18BF0);
  MEMORY[0x28223BE20](v324);
  v326 = &v265 - v38;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC58, &unk_24FA2AEE0);
  MEMORY[0x28223BE20](v345);
  v328 = &v265 - v39;
  v325 = type metadata accessor for AppEventCardConfiguration.VisualView(0);
  MEMORY[0x28223BE20](v325);
  v312 = &v265 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = type metadata accessor for CardElementView.Category(0);
  v276 = *(v277 - 8);
  MEMORY[0x28223BE20](v277);
  v270 = (&v265 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFB8, &unk_24FA18C00);
  MEMORY[0x28223BE20](v307);
  v278 = &v265 - v42;
  v274 = sub_24F91F4A8();
  v273 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v269 = &v265 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v268 = &v265 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v46 - 8);
  v271 = &v265 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v272 = &v265 - v49;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC60, &qword_24FA18C10);
  MEMORY[0x28223BE20](v358);
  v361 = &v265 - v50;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC68, &qword_24FA18C18);
  MEMORY[0x28223BE20](v352);
  v354 = &v265 - v51;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC70, &qword_24FA18C20);
  MEMORY[0x28223BE20](v341);
  v343 = &v265 - v52;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC78, &qword_24FA18C28);
  MEMORY[0x28223BE20](v304);
  v305 = &v265 - v53;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC80, &qword_24FA18C30);
  MEMORY[0x28223BE20](v342);
  v306 = &v265 - v54;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC88, &qword_24FA18C38);
  MEMORY[0x28223BE20](v353);
  v344 = &v265 - v55;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC90, &unk_24FA18C40);
  MEMORY[0x28223BE20](v359);
  v356 = &v265 - v56;
  v303 = type metadata accessor for AppEventCardConfiguration.HeadingStack(0);
  MEMORY[0x28223BE20](v303);
  v294 = &v265 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v58 - 8);
  v311 = &v265 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v275 = &v265 - v61;
  MEMORY[0x28223BE20](v62);
  v323 = &v265 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BC98, &unk_24FA18C50);
  v364 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v360 = &v265 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v66 - 8);
  v68 = &v265 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v69 - 8);
  v296 = &v265 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v366 = &v265 - v72;
  v73 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v73);
  MEMORY[0x28223BE20](v74);
  v76 = (&v265 - v75);
  MEMORY[0x28223BE20](v77);
  v79 = &v265 - v78;
  MEMORY[0x28223BE20](v80);
  v367 = &v265 - v81;
  v82 = a3;
  v357 = a1;
  v280 = v83;
  v279 = v84;
  if (a1 == 12)
  {
    if (!a3)
    {

      goto LABEL_25;
    }

    v89 = sub_24F92CE08();

    if ((v89 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (a1 != 4)
  {
    if ((sub_24E92D030(a1, v365, a3) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_16:
    if (a3 > 2u)
    {
      if (a3 == 3)
      {
        sub_24F4E9558(v346, v76);
        sub_24F67A17C(v76, v79, type metadata accessor for CardLayoutMetrics);
        v79[v73[17]] = 0;

        v79[v73[13]] = 1;
        *&v79[v73[30]] = 0x403A000000000000;
        *&v79[v73[19]] = 2;
        *&v79[v73[28]] = 2;
        *&v79[v73[21]] = 1;
        v93 = 10.0;
        goto LABEL_39;
      }

      if (a3 == 4)
      {
        if (qword_27F2112F0 != -1)
        {
          swift_once();
        }

        v90 = __swift_project_value_buffer(v73, qword_27F39E610);
        sub_24F67A0B8(v90, v79, type metadata accessor for CardLayoutMetrics);
        v91 = 0;
        goto LABEL_36;
      }

      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v95 = __swift_project_value_buffer(v73, qword_27F39E658);
      sub_24F67A0B8(v95, v79, type metadata accessor for CardLayoutMetrics);
LABEL_35:
      v91 = 1;
LABEL_36:
      v79[v73[17]] = v91;
      v96 = sub_24F92CE08();

      v79[v73[13]] = v96 & 1;
      *&v79[v73[30]] = 0x403A000000000000;
      *&v79[v73[19]] = 2;
      *&v79[v73[28]] = 2;
      if (a3 == 4)
      {
        *&v79[v73[21]] = 2;
        v93 = 8.0;
      }

      else
      {
        v93 = *&v79[v73[16]];
      }

LABEL_39:
      *&v79[v73[16]] = v93;
      sub_24F67A17C(v79, v367, type metadata accessor for CardLayoutMetrics);
      v97 = v365;
      sub_24F673CB4(v365, v366);
      v266 = type metadata accessor for AppEventCard(0);
      v98 = v97 + v266[8];
      v99 = type metadata accessor for CommonCardAttributes(0);
      v100 = v99;
      v101 = *(v98 + *(v99 + 36));
      v267 = v64;
      if (v101)
      {
        v102 = 1;
      }

      else
      {
        sub_24E60169C(v98 + *(v99 + 32), v68, &qword_27F213FB8, &unk_24F93C010);
        v103 = type metadata accessor for GSKVideo(0);
        v104 = (*(*(v103 - 8) + 48))(v68, 1, v103);
        sub_24E601704(v68, &qword_27F213FB8, &unk_24F93C010);
        v102 = 1;
        if (v104 == 1)
        {
          v105 = v323;
          sub_24E60169C(v98 + v100[7], v323, &qword_27F213FB0, &qword_24F93E6B0);
          v106 = (*(v339 + 48))(v105, 1, v340) != 1;
          sub_24E601704(v105, &qword_27F213FB0, &qword_24F93E6B0);
          v102 = v106;
        }
      }

      v107 = v357;
      if (v357 > 3u)
      {
        if (v357 <= 0xAu)
        {
          if (v357 != 4)
          {
            if (v357 == 8)
            {
              v265 = v26;
              if (v82 == 2)
              {
                swift_storeEnumTagMultiPayload();
                sub_24F67A898(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
                v108 = v320;
                sub_24F924E28();
                v109 = v361;
                v110 = v360;
                v111 = v349;
              }

              else
              {
                v140 = (v98 + v100[15]);
                v141 = v140[1];
                if (v141)
                {
                  v374[0] = *v140;
                  v374[1] = v141;
                  sub_24E600AEC();

                  v142 = sub_24F925E18();
                  v144 = v143;
                  v146 = v145;
                  v147 = v367;
                  v148 = sub_24F925C98();
                  v150 = v149;
                  v152 = v151;
                  sub_24E600B40(v142, v144, v146 & 1);

                  LODWORD(v374[0]) = sub_24F9251C8();
                  v153 = sub_24F925C58();
                  v155 = v154;
                  v157 = v156;
                  v159 = v158;
                  sub_24E600B40(v148, v150, v152 & 1);

                  v160 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
                  v161 = *MEMORY[0x277CE13B8];
                  v162 = sub_24F927748();
                  v163 = v283;
                  (*(*(v162 - 8) + 104))(&v283[v160], v161, v162);
                  *v163 = v153;
                  *(v163 + 8) = v155;
                  *(v163 + 16) = v157 & 1;
                  *(v163 + 24) = v159;
                  v164 = *(v147 + v73[28]);
                  KeyPath = swift_getKeyPath();
                  v166 = v292;
                  v167 = v163 + *(v292 + 36);
                  *v167 = KeyPath;
                  *(v167 + 8) = v164;
                  *(v167 + 16) = 0;
                  v168 = v293;
                  sub_24E6009C8(v163, v293, &qword_27F214B98, &unk_24F93E740);
                  v169 = 0;
                  v109 = v361;
                  v110 = v360;
                  v111 = v349;
                }

                else
                {
                  v169 = 1;
                  v109 = v361;
                  v110 = v360;
                  v111 = v349;
                  v168 = v293;
                  v166 = v292;
                }

                (*(v291 + 56))(v168, v169, 1, v166);
                sub_24E60169C(v168, v318, &qword_27F214B88, &unk_24F94FFC0);
                swift_storeEnumTagMultiPayload();
                sub_24F67A898(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
                v108 = v320;
                sub_24F924E28();
                sub_24E601704(v168, &qword_27F214B88, &unk_24F94FFC0);
              }

              sub_24E60169C(v108, v336, &qword_27F24BC08, &qword_24FA18BA0);
              swift_storeEnumTagMultiPayload();
              sub_24F679C08();
              sub_24F679CB8();
              v201 = v338;
              sub_24F924E28();
              sub_24E60169C(v201, v111, &qword_27F24BC18, &unk_24FA18BB0);
              swift_storeEnumTagMultiPayload();
              sub_24F679AC0();
              sub_24F679B7C();
              v202 = v350;
              sub_24F924E28();
              sub_24E601704(v201, &qword_27F24BC18, &unk_24FA18BB0);
              sub_24E60169C(v202, v354, &qword_27F24BC40, &qword_24FA18BE0);
              swift_storeEnumTagMultiPayload();
              sub_24F6795E8();
              sub_24F679A34();
              v203 = v356;
              sub_24F924E28();
              sub_24E601704(v202, &qword_27F24BC40, &qword_24FA18BE0);
              sub_24E60169C(v203, v109, &qword_27F24BC90, &unk_24FA18C40);
              swift_storeEnumTagMultiPayload();
              sub_24F67955C();
              sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v203, &qword_27F24BC90, &unk_24FA18C40);
              sub_24E601704(v108, &qword_27F24BC08, &qword_24FA18BA0);
              goto LABEL_90;
            }

            goto LABEL_88;
          }

          v125 = v313;
          sub_24F674610(v365, v82, v367, v313);
          sub_24E60169C(v125, v326, &qword_27F24BC48, &qword_24FA18BE8);
          swift_storeEnumTagMultiPayload();
          sub_24F679730(&qword_27F24BCC8, type metadata accessor for AppEventCardConfiguration.VisualView, &unk_24FA18D68);
          sub_24F679834();
          v126 = v328;
          sub_24F924E28();
          sub_24E60169C(v126, v343, &qword_27F24BC58, &unk_24FA2AEE0);
          swift_storeEnumTagMultiPayload();
          sub_24F679674();
          sub_24F679778();
          v127 = v344;
          sub_24F924E28();
          sub_24E601704(v126, &qword_27F24BC58, &unk_24FA2AEE0);
          sub_24E60169C(v127, v354, &qword_27F24BC88, &qword_24FA18C38);
          swift_storeEnumTagMultiPayload();
          sub_24F6795E8();
          sub_24F679A34();
          v128 = v356;
          sub_24F924E28();
          sub_24E601704(v127, &qword_27F24BC88, &qword_24FA18C38);
          sub_24E60169C(v128, v361, &qword_27F24BC90, &unk_24FA18C40);
          swift_storeEnumTagMultiPayload();
          sub_24F67955C();
          sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v110 = v360;
          sub_24F924E28();
          sub_24E601704(v128, &qword_27F24BC90, &unk_24FA18C40);
          sub_24E601704(v125, &qword_27F24BC48, &qword_24FA18BE8);
LABEL_90:
          sub_24E601704(v366, &qword_27F2190D8, &unk_24F94BD70);
          v237 = v363;
          sub_24E6009C8(v110, v363, &qword_27F24BC98, &unk_24FA18C50);
          (*(v364 + 56))(v237, 0, 1, v267);
          return sub_24F67A058(v367, type metadata accessor for CardLayoutMetrics);
        }

        if (v357 != 11)
        {
          if (v357 == 12)
          {
            v265 = v26;
            if (v82 - 2 >= 4)
            {
              if (v82)
              {
                v211 = v322;
                sub_24E91E37C(0xC, v365, 1u, v346, v362, v322);
                sub_24E60169C(v211, v285, &qword_27F214A20, &unk_24F94D670);
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
                sub_24E63D098();
                sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                v212 = v286;
                sub_24F924E28();
                sub_24E60169C(v212, v309, &qword_27F21AF68, &qword_24F94FF18);
                swift_storeEnumTagMultiPayload();
                sub_24E745458();
                sub_24E7018B8();
                v188 = v310;
                sub_24F924E28();
                sub_24E601704(v212, &qword_27F21AF68, &qword_24F94FF18);
                v189 = v211;
                v190 = &qword_27F214A20;
                v191 = &unk_24F94D670;
              }

              else
              {
                v184 = sub_24F926C98();
                v185 = sub_24F925808();
                v186 = v285;
                *v285 = v184;
                *(v186 + 8) = v185;
                swift_storeEnumTagMultiPayload();

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
                sub_24E63D098();
                sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
                v187 = v286;
                sub_24F924E28();
                sub_24E60169C(v187, v309, &qword_27F21AF68, &qword_24F94FF18);
                swift_storeEnumTagMultiPayload();
                sub_24E745458();
                sub_24E7018B8();
                v188 = v310;
                sub_24F924E28();

                v189 = v187;
                v190 = &qword_27F21AF68;
                v191 = &qword_24F94FF18;
              }

              sub_24E601704(v189, v190, v191);
              v198 = v361;
              v110 = v360;
              v199 = v349;
            }

            else
            {
              v119 = v296;
              sub_24E60169C(v366, v296, &qword_27F2190D8, &unk_24F94BD70);
              if ((*(v297 + 48))(v119, 1, v298) == 1)
              {
                sub_24E601704(v119, &qword_27F2190D8, &unk_24F94BD70);
                v120 = sub_24F926C98();
                v121 = sub_24F925808();
                v122 = v302;
                *v302 = v120;
                *(v122 + 8) = v121;
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
                sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
                sub_24E63D098();
                v123 = v300;
                sub_24F924E28();
              }

              else
              {
                v192 = v288;
                sub_24F67A17C(v119, v288, type metadata accessor for ColorGroup);
                v193 = sub_24F927618();
                v194 = v287;
                *v287 = v193;
                *(v194 + 8) = v195;
                v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120, &unk_24F94BDB0);
                sub_24F594F18(v82 != 5, v192, v194 + *(v196 + 44));
                v197 = v289;
                sub_24E6009C8(v194, v289, &qword_27F219070, &qword_24F94FF00);
                sub_24E60169C(v197, v302, &qword_27F219070, &qword_24F94FF00);
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
                sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
                sub_24E63D098();
                v123 = v300;
                sub_24F924E28();
                sub_24E601704(v197, &qword_27F219070, &qword_24F94FF00);
                sub_24F67A058(v192, type metadata accessor for ColorGroup);
              }

              v198 = v361;
              v110 = v360;
              v199 = v349;
              sub_24E60169C(v123, v309, &qword_27F219078, &qword_24F94BD00);
              swift_storeEnumTagMultiPayload();
              sub_24E745458();
              sub_24E7018B8();
              v200 = v123;
              v188 = v310;
              sub_24F924E28();
              sub_24E601704(v200, &qword_27F219078, &qword_24F94BD00);
            }

            sub_24E60169C(v188, v331, &qword_27F21AF70, &qword_24F94FF20);
            swift_storeEnumTagMultiPayload();
            sub_24F679730(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
            sub_24E7453CC();
            v213 = v333;
            sub_24F924E28();
            sub_24E60169C(v213, v199, &qword_27F24BC38, &qword_24FA18BD8);
            swift_storeEnumTagMultiPayload();
            sub_24F679AC0();
            sub_24F679B7C();
            v214 = v350;
            sub_24F924E28();
            sub_24E601704(v213, &qword_27F24BC38, &qword_24FA18BD8);
            sub_24E60169C(v214, v354, &qword_27F24BC40, &qword_24FA18BE0);
            swift_storeEnumTagMultiPayload();
            sub_24F6795E8();
            sub_24F679A34();
            v215 = v356;
            sub_24F924E28();
            sub_24E601704(v214, &qword_27F24BC40, &qword_24FA18BE0);
            sub_24E60169C(v215, v198, &qword_27F24BC90, &unk_24FA18C40);
            swift_storeEnumTagMultiPayload();
            sub_24F67955C();
            sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            sub_24F924E28();
            sub_24E601704(v215, &qword_27F24BC90, &unk_24FA18C40);
            v208 = v188;
            v209 = &qword_27F21AF70;
            v210 = &qword_24F94FF20;
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v129 = v314;
        sub_24F6754F8(v82, v102, v366, v314);
        sub_24F67A0B8(v129, v331, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24F679730(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E7453CC();
        v130 = v333;
        sub_24F924E28();
        sub_24E60169C(v130, v349, &qword_27F24BC38, &qword_24FA18BD8);
        swift_storeEnumTagMultiPayload();
        sub_24F679AC0();
        sub_24F679B7C();
        v131 = v350;
        sub_24F924E28();
        sub_24E601704(v130, &qword_27F24BC38, &qword_24FA18BD8);
        sub_24E60169C(v131, v354, &qword_27F24BC40, &qword_24FA18BE0);
        swift_storeEnumTagMultiPayload();
        sub_24F6795E8();
        sub_24F679A34();
        v132 = v356;
        sub_24F924E28();
        sub_24E601704(v131, &qword_27F24BC40, &qword_24FA18BE0);
        sub_24E60169C(v132, v361, &qword_27F24BC90, &unk_24FA18C40);
        swift_storeEnumTagMultiPayload();
        sub_24F67955C();
        sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v110 = v360;
        sub_24F924E28();
        sub_24E601704(v132, &qword_27F24BC90, &unk_24FA18C40);
        v133 = type metadata accessor for CardContentBackgroundStyle;
LABEL_86:
        sub_24F67A058(v129, v133);
        goto LABEL_90;
      }

      if (v357)
      {
        if (v357 == 2)
        {
          v129 = v312;
          sub_24F67A0B8(v98, v312, type metadata accessor for CommonCardAttributes);
          v134 = v325;
          *(v129 + *(v325 + 20)) = v82;
          v135 = v129 + *(v134 + 24);
          type metadata accessor for CardSafeArea(0);
          sub_24F679730(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
          *v135 = sub_24F923598();
          *(v135 + 8) = v136 & 1;
          sub_24F67A0B8(v129, v326, type metadata accessor for AppEventCardConfiguration.VisualView);
          swift_storeEnumTagMultiPayload();
          sub_24F679730(&qword_27F24BCC8, type metadata accessor for AppEventCardConfiguration.VisualView, &unk_24FA18D68);
          sub_24F679834();
          v137 = v328;
          sub_24F924E28();
          sub_24E60169C(v137, v343, &qword_27F24BC58, &unk_24FA2AEE0);
          swift_storeEnumTagMultiPayload();
          sub_24F679674();
          sub_24F679778();
          v138 = v344;
          sub_24F924E28();
          sub_24E601704(v137, &qword_27F24BC58, &unk_24FA2AEE0);
          sub_24E60169C(v138, v354, &qword_27F24BC88, &qword_24FA18C38);
          swift_storeEnumTagMultiPayload();
          sub_24F6795E8();
          sub_24F679A34();
          v139 = v356;
          sub_24F924E28();
          sub_24E601704(v138, &qword_27F24BC88, &qword_24FA18C38);
          sub_24E60169C(v139, v361, &qword_27F24BC90, &unk_24FA18C40);
          swift_storeEnumTagMultiPayload();
          sub_24F67955C();
          sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v110 = v360;
          sub_24F924E28();
          sub_24E601704(v139, &qword_27F24BC90, &unk_24FA18C40);
          v133 = type metadata accessor for AppEventCardConfiguration.VisualView;
          goto LABEL_86;
        }

        if (v357 == 3)
        {
          v265 = v26;
          v112 = v98 + v100[10];
          v113 = v311;
          sub_24E60169C(v112, v311, &qword_27F213FB0, &qword_24F93E6B0);
          v114 = v339;
          v115 = v340;
          if ((*(v339 + 48))(v113, 1, v340) == 1)
          {
            sub_24E601704(v113, &qword_27F213FB0, &qword_24F93E6B0);
            v116 = v361;
            v110 = v360;
            v117 = v349;
            v118 = v321;
          }

          else
          {
            v170 = *(v114 + 32);
            v171 = v290;
            v170(v290, v113, v115);
            sub_24E60169C(v365 + v266[13], &v372, qword_27F24EC90, &unk_24F93C1D0);
            v118 = v321;
            if (v373)
            {
              sub_24E612C80(&v372, v374);
              v172 = sub_24F9232F8();
              (*(*(v172 - 8) + 56))(v295, 1, 1, v172);
              sub_24E615E00(v374, &v372);
              v173 = v282;
              (*(v114 + 16))(v282, v171, v115);
              v174 = v280;
              sub_24F67A0B8(v367, v280, type metadata accessor for CardLayoutMetrics);
              v175 = (*(v114 + 80) + 16) & ~*(v114 + 80);
              v176 = (v281 + *(v279 + 80) + v175) & ~*(v279 + 80);
              v177 = v171;
              v178 = swift_allocObject();
              v170((v178 + v175), v173, v115);
              v179 = v174;
              v118 = v321;
              sub_24F67A17C(v179, v178 + v176, type metadata accessor for CardLayoutMetrics);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD50, &unk_24FA18CB0);
              v180 = sub_24F921AF8();
              v181 = sub_24F679730(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
              v182 = sub_24F679730(&qword_27F214C30, MEMORY[0x277D7EBE8], MEMORY[0x277D7EBE0]);
              v368 = v115;
              v369 = v180;
              v370 = v181;
              v371 = v182;
              swift_getOpaqueTypeConformance2();
              sub_24F921788();
              __swift_destroy_boxed_opaque_existential_1(v374);
              (*(v114 + 8))(v177, v115);
              v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD40, &qword_24FA18C78);
              (*(*(v183 - 8) + 56))(v118, 0, 1, v183);
              v116 = v361;
              v110 = v360;
              v117 = v349;
LABEL_79:
              sub_24E60169C(v118, v336, &qword_27F24BC20, &qword_24FA18BC0);
              swift_storeEnumTagMultiPayload();
              sub_24F679C08();
              sub_24F679CB8();
              v205 = v338;
              sub_24F924E28();
              sub_24E60169C(v205, v117, &qword_27F24BC18, &unk_24FA18BB0);
              swift_storeEnumTagMultiPayload();
              sub_24F679AC0();
              sub_24F679B7C();
              v206 = v350;
              sub_24F924E28();
              sub_24E601704(v205, &qword_27F24BC18, &unk_24FA18BB0);
              sub_24E60169C(v206, v354, &qword_27F24BC40, &qword_24FA18BE0);
              swift_storeEnumTagMultiPayload();
              sub_24F6795E8();
              sub_24F679A34();
              v207 = v356;
              sub_24F924E28();
              sub_24E601704(v206, &qword_27F24BC40, &qword_24FA18BE0);
              sub_24E60169C(v207, v116, &qword_27F24BC90, &unk_24FA18C40);
              swift_storeEnumTagMultiPayload();
              sub_24F67955C();
              sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
              sub_24F924E28();
              sub_24E601704(v207, &qword_27F24BC90, &unk_24FA18C40);
              v208 = v118;
              v209 = &qword_27F24BC20;
              v210 = &qword_24FA18BC0;
LABEL_89:
              sub_24E601704(v208, v209, v210);
              goto LABEL_90;
            }

            (*(v114 + 8))(v171, v115);
            sub_24E601704(&v372, qword_27F21B590, &unk_24F93BE30);
            v116 = v361;
            v110 = v360;
            v117 = v349;
          }

          v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD40, &qword_24FA18C78);
          (*(*(v204 - 8) + 56))(v118, 1, 1, v204);
          goto LABEL_79;
        }

LABEL_88:
        v236 = v322;
        sub_24E91E37C(v107, v365, v82, v346, v362, v322);
        sub_24E60169C(v236, v361, &qword_27F214A20, &unk_24F94D670);
        swift_storeEnumTagMultiPayload();
        sub_24F67955C();
        sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v110 = v360;
        sub_24F924E28();
        v208 = v236;
        v209 = &qword_27F214A20;
        v210 = &unk_24F94D670;
        goto LABEL_89;
      }

      if (v82 > 2u)
      {
        LODWORD(v323) = v102;
        v124 = v26;
      }

      else
      {
        if (!v82)
        {

          goto LABEL_85;
        }

        LODWORD(v323) = v102;
        v124 = v26;
      }

      v216 = sub_24F92CE08();

      if ((v216 & 1) == 0)
      {
        v235 = sub_24F92CE08();

        if ((v235 & 1) == 0)
        {
          v265 = v124;
          v238 = v266;
          v239 = v365;
          v240 = (v365 + v266[11]);
          v242 = *v240;
          v241 = v240[1];
          v374[0] = v242;
          v374[1] = v241;
          sub_24E600AEC();
          v243 = sub_24F92C558();
          v245 = v244;
          v374[0] = 0;
          v374[1] = 0xE000000000000000;
          sub_24F92C888();

          strcpy(v374, "systemimage://");
          HIBYTE(v374[1]) = -18;
          MEMORY[0x253050C20](*(v239 + v238[12]), *(v239 + v238[12] + 8));
          v246 = v272;
          sub_24F91F488();

          v247 = v271;
          sub_24E60169C(v246, v271, &qword_27F228530, &unk_24F93C6E0);
          v248 = v273;
          v249 = 1;
          v250 = v274;
          v251 = (*(v273 + 48))(v247, 1, v274);
          v252 = v275;
          if (v251 != 1)
          {
            v253 = v268;
            (*(v248 + 32))(v268, v247, v250);
            (*(v248 + 16))(v269, v253, v250);
            sub_24F928978();
            (*(v248 + 8))(v253, v250);
            v249 = 0;
          }

          sub_24E601704(v246, &qword_27F228530, &unk_24F93C6E0);
          (*(v339 + 56))(v252, v249, 1, v340);
          v254 = HIBYTE(v245) & 0xF;
          if ((v245 & 0x2000000000000000) == 0)
          {
            v254 = v243 & 0xFFFFFFFFFFFFLL;
          }

          v255 = v278;
          v256 = v277;
          if (v254)
          {
            v257 = v270;
            sub_24E60169C(v252, v270 + *(v277 + 20), &qword_27F213FB0, &qword_24F93E6B0);
            v258 = *(v367 + v73[9]);
            v259 = *(v367 + v73[8]);
            v260 = *(v367 + v73[6]);
            *v257 = v243;
            v257[1] = v245;
            *(v257 + v256[6]) = v258;
            *(v257 + v256[7]) = v323;
            *(v257 + v256[8]) = v259;
            *(v257 + v256[9]) = v260;
            v374[0] = 0x4034000000000000;
            sub_24E66ED98();

            sub_24F9237C8();
            v374[0] = 0x4008000000000000;
            sub_24F9237C8();
            v374[0] = 0x4018000000000000;
            sub_24F9237C8();
            v374[0] = 0x4010000000000000;
            sub_24F9237C8();
            sub_24F67A17C(v257, v255, type metadata accessor for CardElementView.Category);
            v261 = 0;
          }

          else
          {

            v261 = 1;
          }

          (*(v276 + 56))(v255, v261, 1, v256);
          sub_24E60169C(v255, v305, &qword_27F21AFB8, &unk_24FA18C00);
          swift_storeEnumTagMultiPayload();
          sub_24F679730(&qword_27F24BCB8, type metadata accessor for AppEventCardConfiguration.HeadingStack, &unk_24FA18DB8);
          sub_24E74524C();
          v262 = v306;
          sub_24F924E28();
          sub_24E60169C(v262, v343, &qword_27F24BC80, &qword_24FA18C30);
          swift_storeEnumTagMultiPayload();
          sub_24F679674();
          sub_24F679778();
          v263 = v344;
          sub_24F924E28();
          sub_24E601704(v262, &qword_27F24BC80, &qword_24FA18C30);
          sub_24E60169C(v263, v354, &qword_27F24BC88, &qword_24FA18C38);
          swift_storeEnumTagMultiPayload();
          sub_24F6795E8();
          sub_24F679A34();
          v264 = v356;
          sub_24F924E28();
          sub_24E601704(v263, &qword_27F24BC88, &qword_24FA18C38);
          sub_24E60169C(v264, v361, &qword_27F24BC90, &unk_24FA18C40);
          swift_storeEnumTagMultiPayload();
          sub_24F67955C();
          sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v110 = v360;
          sub_24F924E28();
          sub_24E601704(v264, &qword_27F24BC90, &unk_24FA18C40);
          sub_24E601704(v255, &qword_27F21AFB8, &unk_24FA18C00);
          sub_24E601704(v252, &qword_27F213FB0, &qword_24F93E6B0);
          goto LABEL_90;
        }

        goto LABEL_88;
      }

LABEL_85:
      v217 = v266;
      v218 = v365;
      v129 = v294;
      sub_24F66F0C8(*(v365 + v266[14]), v294);
      v219 = (v218 + v217[11]);
      v221 = *v219;
      v220 = v219[1];
      v374[0] = v221;
      v374[1] = v220;
      sub_24E600AEC();
      v222 = sub_24F92C558();
      v224 = v223;
      v225 = (v218 + v217[12]);
      v227 = *v225;
      v226 = v225[1];
      v228 = swift_getKeyPath();
      v229 = v303;
      *(v129 + *(v303 + 28)) = v228;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
      swift_storeEnumTagMultiPayload();
      v230 = (v129 + *(v229 + 20));
      *v230 = v222;
      v230[1] = v224;
      v231 = (v129 + *(v229 + 24));
      *v231 = v227;
      v231[1] = v226;
      sub_24F67A0B8(v129, v305, type metadata accessor for AppEventCardConfiguration.HeadingStack);
      swift_storeEnumTagMultiPayload();
      sub_24F679730(&qword_27F24BCB8, type metadata accessor for AppEventCardConfiguration.HeadingStack, &unk_24FA18DB8);
      sub_24E74524C();

      v232 = v306;
      sub_24F924E28();
      sub_24E60169C(v232, v343, &qword_27F24BC80, &qword_24FA18C30);
      swift_storeEnumTagMultiPayload();
      sub_24F679674();
      sub_24F679778();
      v233 = v344;
      sub_24F924E28();
      sub_24E601704(v232, &qword_27F24BC80, &qword_24FA18C30);
      sub_24E60169C(v233, v354, &qword_27F24BC88, &qword_24FA18C38);
      swift_storeEnumTagMultiPayload();
      sub_24F6795E8();
      sub_24F679A34();
      v234 = v356;
      sub_24F924E28();
      sub_24E601704(v233, &qword_27F24BC88, &qword_24FA18C38);
      sub_24E60169C(v234, v361, &qword_27F24BC90, &unk_24FA18C40);
      swift_storeEnumTagMultiPayload();
      sub_24F67955C();
      sub_24F67A898(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v110 = v360;
      sub_24F924E28();
      sub_24E601704(v234, &qword_27F24BC90, &unk_24FA18C40);
      v133 = type metadata accessor for AppEventCardConfiguration.HeadingStack;
      goto LABEL_86;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        sub_24F4E9E44(v346, v76);
        sub_24F67A17C(v76, v79, type metadata accessor for CardLayoutMetrics);
      }

      else
      {
        if (qword_27F2112F8 != -1)
        {
          swift_once();
        }

        v94 = __swift_project_value_buffer(v73, qword_27F39E628);
        sub_24F67A0B8(v94, v79, type metadata accessor for CardLayoutMetrics);
      }

      goto LABEL_35;
    }

LABEL_25:
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v92 = __swift_project_value_buffer(v73, qword_27F39E640);
    sub_24F67A0B8(v92, v79, type metadata accessor for CardLayoutMetrics);
    goto LABEL_35;
  }

  if (a3)
  {
    v85 = sub_24F92CE08();

    if (v85)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v86 = v363;
  v87 = *(v364 + 56);

  return v87(v86, 1, 1, v64);
}

uint64_t sub_24F673CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v72 - v6;
  v80 = type metadata accessor for GSKVideo(0);
  v8 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v72 - v11;
  v12 = sub_24F9289E8();
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x28223BE20](v12);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v16 - 8);
  v74 = &v72 - v17;
  v18 = type metadata accessor for MixedMediaItem.ContentType(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v28 = a1 + *(type metadata accessor for AppEventCard(0) + 32);
  v29 = type metadata accessor for CommonCardAttributes(0);
  v30 = (v28 + v29[9]);
  if (*v30)
  {
    v31 = v30[1];
    if (*(v31 + 16))
    {
      v32 = sub_24E76DCB8(0);
      if (v33)
      {
        sub_24F67A0B8(*(v31 + 56) + *(v19 + 72) * v32, v24, type metadata accessor for MixedMediaItem.ContentType);
        sub_24F67A17C(v24, v27, type metadata accessor for MixedMediaItem.ContentType);
        sub_24F67A0B8(v27, v21, type metadata accessor for MixedMediaItem.ContentType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = v73;
          sub_24F67A17C(v21, v73, type metadata accessor for GSKVideo);
          v35 = sub_24F9289A8();
          v36 = v74;
          if (v35)
          {
            v37 = qword_27F20FEE0;
            v38 = v35;
            if (v37 != -1)
            {
              v70 = v38;
              swift_once();
              v38 = v70;
            }

            v39 = v38;
            v40 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v40);

            sub_24F67A058(v34, type metadata accessor for GSKVideo);
LABEL_25:
            sub_24F67A058(v27, type metadata accessor for MixedMediaItem.ContentType);
            return sub_24E6009C8(v36, v81, &qword_27F2190D8, &unk_24F94BD70);
          }

          sub_24F67A058(v34, type metadata accessor for GSKVideo);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128, &qword_24F94BDF0);

          v59 = v78;
          v58 = v79;
          v60 = v72;
          (*(v78 + 32))(v72, v21, v79);
          v61 = sub_24F9289A8();
          v36 = v74;
          if (v61)
          {
            v62 = qword_27F20FEE0;
            v63 = v61;
            if (v62 != -1)
            {
              v71 = v63;
              swift_once();
              v63 = v71;
            }

            v64 = v63;
            v65 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v65);

            (*(v59 + 8))(v60, v58);
            goto LABEL_25;
          }

          (*(v59 + 8))(v60, v58);
        }

        sub_24F67A058(v27, type metadata accessor for MixedMediaItem.ContentType);
        v67 = type metadata accessor for ColorGroup(0);
        (*(*(v67 - 8) + 56))(v36, 1, 1, v67);
        return sub_24E6009C8(v36, v81, &qword_27F2190D8, &unk_24F94BD70);
      }
    }
  }

  sub_24E60169C(v28 + v29[8], v7, &qword_27F213FB8, &unk_24F93C010);
  if ((*(v8 + 48))(v7, 1, v80) == 1)
  {
    sub_24E601704(v7, &qword_27F213FB8, &unk_24F93C010);
    v41 = v77;
    sub_24E60169C(v28 + v29[7], v77, &qword_27F213FB0, &qword_24F93E6B0);
    v43 = v78;
    v42 = v79;
    if ((*(v78 + 48))(v41, 1, v79) == 1)
    {
      sub_24E601704(v41, &qword_27F213FB0, &qword_24F93E6B0);
LABEL_27:
      v66 = type metadata accessor for ColorGroup(0);
      return (*(*(v66 - 8) + 56))(v81, 1, 1, v66);
    }

    v52 = v75;
    (*(v43 + 32))(v75, v41, v42);
    v53 = sub_24F9289A8();
    if (!v53)
    {
      (*(v43 + 8))(v52, v42);
      goto LABEL_27;
    }

    v54 = qword_27F20FEE0;
    v55 = v53;
    if (v54 != -1)
    {
      v69 = v55;
      swift_once();
      v55 = v69;
    }

    v56 = v55;
    v57 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v57);

    return (*(v43 + 8))(v52, v42);
  }

  else
  {
    v44 = v7;
    v45 = v76;
    sub_24F67A17C(v44, v76, type metadata accessor for GSKVideo);
    v46 = sub_24F9289A8();
    if (!v46)
    {
      sub_24F67A058(v45, type metadata accessor for GSKVideo);
      goto LABEL_27;
    }

    v47 = qword_27F20FEE0;
    v48 = v46;
    if (v47 != -1)
    {
      v68 = v48;
      swift_once();
      v48 = v68;
    }

    v49 = v48;
    v50 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v50);

    return sub_24F67A058(v45, type metadata accessor for GSKVideo);
  }
}

uint64_t sub_24F674610@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v136 = a1;
  v135 = a4;
  v4 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD58, &qword_24FA18CF0);
  MEMORY[0x28223BE20](v124);
  v126 = &v118 - v5;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  MEMORY[0x28223BE20](v125);
  v118 = &v118 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD60, &qword_24FA18CF8);
  MEMORY[0x28223BE20](v119);
  v120 = (&v118 - v7);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD10, &unk_24FA2AF00);
  MEMORY[0x28223BE20](v123);
  v121 = &v118 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BCF0, &unk_24FA2AEF0);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = &v118 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F320, &qword_24FA18D00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v118 - v11;
  v13 = type metadata accessor for GSKAppEventFormattedDate(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BCE0, &unk_24FA18C60);
  MEMORY[0x28223BE20](v134);
  v128 = &v118 - v17;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD68, &qword_24FA18D08);
  MEMORY[0x28223BE20](v131);
  v133 = &v118 - v18;
  v19 = type metadata accessor for HeroCardGameHeadingView(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50, &unk_24F94D9F0);
  MEMORY[0x28223BE20](v132);
  v24 = &v118 - v23;
  v25 = type metadata accessor for AppEventCard(0);
  v26 = v25;
  if (v4 != 5)
  {
    sub_24F66F0C8(*(v136 + *(v25 + 56)), v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_24E601704(v12, &qword_27F21F320, &qword_24FA18D00);
      v39 = v128;
      (*(v129 + 56))(v128, 1, 1, v130);
LABEL_17:
      sub_24E60169C(v39, v133, &qword_27F24BCE0, &unk_24FA18C60);
      swift_storeEnumTagMultiPayload();
      sub_24E7179AC();
      sub_24F67A898(&qword_27F24BCD8, &qword_27F24BCE0, &unk_24FA18C60, sub_24F6798EC);
      sub_24F924E28();
      v55 = v39;
      v56 = &qword_27F24BCE0;
      v57 = &unk_24FA18C60;
      return sub_24E601704(v55, v56, v57);
    }

    sub_24F67A17C(v12, v16, type metadata accessor for GSKAppEventFormattedDate);
    v41 = &v16[*(v13 + 20)];
    v42 = *(v41 + 1);
    if (v42)
    {
      v43 = *v41;
      if (v16[*(v13 + 24)] == 1)
      {
        v139 = v43;
        v140 = v42;
        sub_24E600AEC();
        v44 = sub_24F92C528();
        v46 = sub_24F6789D0(v44, v45);
        v48 = v47;
        v50 = v49;
        v52 = v51;

        v53 = v120;
        *v120 = v46;
        v53[1] = v48;
        *(v53 + 16) = v50 & 1;
        v53[3] = v52;
        swift_storeEnumTagMultiPayload();
        sub_24E63C774();
        v54 = v121;
        sub_24F924E28();
      }

      else
      {
        v139 = v43;
        v140 = v42;
        sub_24E600AEC();
        v137 = sub_24F92C558();
        v138 = v88;
        v89 = sub_24F925E18();
        v91 = v90;
        v93 = v92;
        v136 = type metadata accessor for CardLayoutMetrics(0);
        v94 = v122;
        v95 = sub_24F925C98();
        v97 = v96;
        v99 = v98;
        sub_24E600B40(v89, v91, v93 & 1);

        LODWORD(v139) = sub_24F9251C8();
        v100 = sub_24F925C58();
        v102 = v101;
        v104 = v103;
        v106 = v105;
        sub_24E600B40(v95, v97, v99 & 1);

        v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
        v108 = *MEMORY[0x277CE13B8];
        v109 = sub_24F927748();
        v110 = v118;
        (*(*(v109 - 8) + 104))(&v118[v107], v108, v109);
        *v110 = v100;
        *(v110 + 8) = v102;
        *(v110 + 16) = v104 & 1;
        *(v110 + 24) = v106;
        v111 = *(v94 + *(v136 + 76));
        KeyPath = swift_getKeyPath();
        v113 = v110 + *(v125 + 36);
        *v113 = KeyPath;
        *(v113 + 8) = v111;
        *(v113 + 16) = 0;
        sub_24E60169C(v110, v120, &qword_27F214B98, &unk_24F93E740);
        swift_storeEnumTagMultiPayload();
        sub_24E63C774();
        v54 = v121;
        sub_24F924E28();
        sub_24E601704(v110, &qword_27F214B98, &unk_24F93E740);
      }

      v86 = &qword_27F24BD10;
      v87 = &unk_24FA2AF00;
      sub_24E60169C(v54, v126, &qword_27F24BD10, &unk_24FA2AF00);
    }

    else
    {
      v58 = sub_24F3F2614(v40);
      if (!v59)
      {
        v115 = 1;
        v114 = v127;
        goto LABEL_16;
      }

      v139 = v58;
      v140 = v59;
      sub_24E600AEC();
      v60 = sub_24F92C558();
      v62 = v61;

      v137 = v60;
      v138 = v62;
      v63 = sub_24F925E18();
      v65 = v64;
      v67 = v66;
      v136 = type metadata accessor for CardLayoutMetrics(0);
      v68 = sub_24F925C98();
      v70 = v69;
      v72 = v71;
      sub_24E600B40(v63, v65, v67 & 1);

      LODWORD(v139) = sub_24F9251C8();
      v73 = sub_24F925C58();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      sub_24E600B40(v68, v70, v72 & 1);

      v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
      v81 = *MEMORY[0x277CE13B8];
      v82 = sub_24F927748();
      v54 = v118;
      (*(*(v82 - 8) + 104))(&v118[v80], v81, v82);
      *v54 = v73;
      *(v54 + 8) = v75;
      *(v54 + 16) = v77 & 1;
      *(v54 + 24) = v79;
      v83 = *(v122 + *(v136 + 76));
      v84 = swift_getKeyPath();
      v85 = v54 + *(v125 + 36);
      *v85 = v84;
      *(v85 + 8) = v83;
      *(v85 + 16) = 0;
      v86 = &qword_27F214B98;
      v87 = &unk_24F93E740;
      sub_24E60169C(v54, v126, &qword_27F214B98, &unk_24F93E740);
    }

    swift_storeEnumTagMultiPayload();
    sub_24F6799A8();
    sub_24E63C774();
    v114 = v127;
    sub_24F924E28();
    sub_24E601704(v54, v86, v87);
    v115 = 0;
LABEL_16:
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD00, &qword_24FA18C70);
    (*(*(v116 - 8) + 56))(v114, v115, 1, v116);
    v39 = v128;
    sub_24E6009C8(v114, v128, &qword_27F24BCF0, &unk_24FA2AEF0);
    (*(v129 + 56))(v39, 0, 1, v130);
    sub_24F67A058(v16, type metadata accessor for GSKAppEventFormattedDate);
    goto LABEL_17;
  }

  v27 = v136 + *(v25 + 32);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = *(v27 + 8);
    v130 = "eOfferButtonPresenter";
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x656D614E656D6167;
    *(inited + 40) = 0xE800000000000000;
    v31 = (v136 + *(v26 + 64));
    v32 = v31[1];
    *(inited + 48) = *v31;
    *(inited + 56) = v32;
    *(inited + 64) = 0x786966667573;
    *(inited + 72) = 0xE600000000000000;
    v139 = v29;
    v140 = v28;
    sub_24E600AEC();

    *(inited + 80) = sub_24F92C558();
    *(inited + 88) = v33;
    v34 = sub_24E6086DC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
    swift_arrayDestroy();
    v35._object = (v130 | 0x8000000000000000);
    v35._countAndFlagsBits = 0xD00000000000001ELL;
    v36 = localizedString(_:with:)(v35, v34);

    v37 = *(v26 + 68);
    v38 = sub_24F9289E8();
    (*(*(v38 - 8) + 16))(v22, v136 + v37, v38);
    *&v22[*(v19 + 20)] = v36;
    sub_24F67A17C(v22, v24, type metadata accessor for HeroCardGameHeadingView);
    (*(v20 + 56))(v24, 0, 1, v19);
  }

  else
  {
    (*(v20 + 56))(v24, 1, 1, v19);
  }

  sub_24E60169C(v24, v133, &qword_27F219E50, &unk_24F94D9F0);
  swift_storeEnumTagMultiPayload();
  sub_24E7179AC();
  sub_24F67A898(&qword_27F24BCD8, &qword_27F24BCE0, &unk_24FA18C60, sub_24F6798EC);
  sub_24F924E28();
  v55 = v24;
  v56 = &qword_27F219E50;
  v57 = &unk_24F94D9F0;
  return sub_24E601704(v55, v56, v57);
}

uint64_t sub_24F6754F8@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ColorGroup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u)
  {
    if (a1 == 3)
    {

      v26 = 3;
LABEL_17:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
      (*(*(v28 - 8) + 56))(v17, v26, 5, v28);
      if ((a2 & 1) == 0)
      {
        return sub_24F67A17C(v17, a4, type metadata accessor for CardContentBackgroundStyle);
      }

      sub_24F67A058(v17, type metadata accessor for CardContentBackgroundStyle);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
      return (*(*(v29 - 8) + 56))(a4, 5, 5, v29);
    }

    if (a1 == 4)
    {
      sub_24E60169C(a3, v10, &qword_27F2190D8, &unk_24F94BD70);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_24E601704(v10, &qword_27F2190D8, &unk_24F94BD70);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        return (*(*(v23 - 8) + 56))(a4, 1, 5, v23);
      }

      else
      {
        sub_24F67A17C(v10, v14, type metadata accessor for ColorGroup);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v31 = *(v30 + 48);
        sub_24F67A17C(v14, a4, type metadata accessor for ColorGroup);
        (*(v12 + 56))(a4, 0, 1, v11);
        *(a4 + v31) = 1;
        return (*(*(v30 - 8) + 56))(a4, 0, 5, v30);
      }
    }

LABEL_9:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
    v19 = *(*(v25 - 8) + 56);
    v20 = v25;
    v21 = a4;
    v22 = 1;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    v27 = sub_24F92CE08();

    if (v27)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
  v19 = *(*(v18 - 8) + 56);
  v20 = v18;
  v21 = a4;
  v22 = 2;
LABEL_10:

  return v19(v21, v22, 5, v20);
}

uint64_t sub_24F6759A4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v16[0] = a1;
  v16[1] = a3;
  v3 = sub_24F924B38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F921AF8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F9289E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CardLayoutMetrics(0);
  sub_24F9289C8();
  (*(v4 + 104))(v6, *MEMORY[0x277CE0118], v3);
  sub_24F9219A8();
  (*(v4 + 8))(v6, v3);
  sub_24F679730(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
  sub_24F679730(&qword_27F214C30, MEMORY[0x277D7EBE8], MEMORY[0x277D7EBE0]);
  sub_24F925ED8();
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_24F675C90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BDE8, &qword_24FA18E50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  sub_24F6760F4(v2, &v31 - v9);
  v11 = type metadata accessor for AppEventCardConfiguration.VisualView(0);
  v12 = v2 + *(v11 + 24);
  v13 = *v12;
  v14 = *(v12 + 8);

  if ((v14 & 1) == 0)
  {
    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v13 = v32;
  }

  swift_getKeyPath();
  v32 = v13;
  sub_24F679730(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v16 = *(v13 + 16);

  v17 = *(v2 + *(v11 + 20));
  if (v17 == 3)
  {

    v18 = sub_24F925868();
  }

  else
  {
    v19 = sub_24F92CE08();

    if ((v19 & 1) == 0)
    {
      if (v17 <= 2 || v17 == 4)
      {
        v20 = sub_24F92CE08();

        if ((v20 & 1) == 0)
        {
          v18 = sub_24F925818();
          goto LABEL_13;
        }
      }

      else
      {
      }

      v18 = sub_24F925808();
      goto LABEL_13;
    }

    v18 = sub_24F925868();
  }

LABEL_13:
  v21 = sub_24EA91914(v18, v16);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_24F925808();
  sub_24E6009C8(v10, a1, &qword_27F24BDE8, &qword_24FA18E50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BDF0, &qword_24FA18E80);
  v30 = a1 + *(result + 36);
  *v30 = v28;
  *(v30 + 8) = v21;
  *(v30 + 16) = v23;
  *(v30 + 24) = v25;
  *(v30 + 32) = v27;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_24F6760F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BDF8, &qword_24FA18E88);
  MEMORY[0x28223BE20](v114);
  v116 = &v106 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE00, &unk_24FA18E90);
  MEMORY[0x28223BE20](v115);
  v113 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  v108 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v6;
  MEMORY[0x28223BE20](v7);
  v131 = &v106 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE08, &qword_24FA18EA0);
  MEMORY[0x28223BE20](v111);
  v112 = &v106 - v9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE10, &qword_24FA18EA8);
  MEMORY[0x28223BE20](v146);
  v110 = &v106 - v10;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE18, &qword_24FA18EB0);
  MEMORY[0x28223BE20](v124);
  v118 = &v106 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE20, &qword_24FA18EB8);
  MEMORY[0x28223BE20](v119);
  v121 = &v106 - v12;
  v130 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v130);
  v129 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE28, &qword_24FA18EC0);
  MEMORY[0x28223BE20](v120);
  v122 = &v106 - v14;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE30, &qword_24FA18EC8);
  MEMORY[0x28223BE20](v142);
  v117 = &v106 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v16 - 8);
  v128 = &v106 - v17;
  v126 = sub_24F9289E8();
  v125 = *(v126 - 8);
  v18 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v106 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v123 = &v106 - v20;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE38, &qword_24FA18ED0);
  MEMORY[0x28223BE20](v144);
  v145 = &v106 - v21;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE40, &qword_24FA18ED8);
  MEMORY[0x28223BE20](v139);
  v140 = &v106 - v22;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE48, &qword_24FA18EE0);
  MEMORY[0x28223BE20](v143);
  v141 = &v106 - v23;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE50, &qword_24FA18EE8);
  MEMORY[0x28223BE20](v135);
  v137 = &v106 - v24;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE58, &qword_24FA18EF0);
  MEMORY[0x28223BE20](v136);
  v127 = &v106 - v25;
  v26 = type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE60, &qword_24FA18EF8);
  MEMORY[0x28223BE20](v133);
  v134 = &v106 - v29;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE68, &qword_24FA18F00);
  MEMORY[0x28223BE20](v138);
  v132 = &v106 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v106 - v32;
  v34 = type metadata accessor for GSKVideo(0);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CommonCardAttributes(0);
  v39 = a1;
  v40 = (a1 + *(v38 + 36));
  v41 = *v40;
  if (*v40)
  {
    v42 = v40[1];
    v43 = *(v39 + *(type metadata accessor for AppEventCardConfiguration.VisualView(0) + 20));
    *v28 = v41;
    *(v28 + 1) = v42;
    v28[16] = v43;
    v44 = v26[6];
    *&v28[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v45 = v26[7];
    *&v28[v45] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v46 = &v28[v26[8]];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    if (v43 < 4 || v43 == 4)
    {
      v68 = sub_24F92CE08();
    }

    else
    {
      v68 = 1;
    }

    v69 = v134;
    sub_24E924BD8(v68 & 1);
    sub_24F67A058(v28, type metadata accessor for CardElementView.PrimaryMixedMediaView);
    if (v43 > 2)
    {
      v55 = v147;
      if (v43 != 3 && v43 != 4)
      {

        v149 = sub_24F925048();
        v150 = MEMORY[0x277CE0420];
        __swift_allocate_boxed_opaque_existential_1(&v148);
        sub_24F925258();
        v70 = v132;
        goto LABEL_22;
      }
    }

    else
    {
      v55 = v147;
    }

    v70 = v132;
    v71 = sub_24F92CE08();

    v149 = sub_24F925048();
    v150 = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(&v148);
    sub_24F925258();
    if ((v71 & 1) == 0)
    {
      sub_24E60169C(v69, v137, &qword_27F24BE60, &qword_24FA18EF8);
      swift_storeEnumTagMultiPayload();
      sub_24F67AE2C();
      sub_24F67AEB8();
      sub_24F924E28();
LABEL_23:
      sub_24E601704(v69, &qword_27F24BE60, &qword_24FA18EF8);
      __swift_destroy_boxed_opaque_existential_1(&v148);
      sub_24E60169C(v70, v140, &qword_27F24BE68, &qword_24FA18F00);
      swift_storeEnumTagMultiPayload();
      sub_24F67ADA0();
      sub_24F67AF74();
      v73 = v141;
      sub_24F924E28();
      sub_24E60169C(v73, v145, &qword_27F24BE48, &qword_24FA18EE0);
      swift_storeEnumTagMultiPayload();
      sub_24F67AD14();
      sub_24F67B148();
      sub_24F924E28();
      sub_24E601704(v73, &qword_27F24BE48, &qword_24FA18EE0);
      sub_24E601704(v70, &qword_27F24BE68, &qword_24FA18F00);
LABEL_61:
      v54 = 0;
      goto LABEL_62;
    }

LABEL_22:
    v72 = v127;
    sub_24E615E00(&v148, &v127[*(v136 + 36)]);
    sub_24E60169C(v69, v72, &qword_27F24BE60, &qword_24FA18EF8);
    sub_24E60169C(v72, v137, &qword_27F24BE58, &qword_24FA18EF0);
    swift_storeEnumTagMultiPayload();
    sub_24F67AE2C();
    sub_24F67AEB8();
    sub_24F924E28();
    sub_24E601704(v72, &qword_27F24BE58, &qword_24FA18EF0);
    goto LABEL_23;
  }

  v47 = v38;
  v48 = v128;
  v49 = v130;
  v50 = v131;
  v137 = v37;
  v51 = v129;
  sub_24E60169C(v39 + *(v38 + 32), v33, &qword_27F213FB8, &unk_24F93C010);
  if ((*(v35 + 48))(v33, 1, v34) != 1)
  {
    v56 = v33;
    v57 = v137;
    sub_24F67A17C(v56, v137, type metadata accessor for GSKVideo);
    sub_24F67A0B8(v57, v51, type metadata accessor for GSKVideo);
    v58 = v49[5];
    v59 = type metadata accessor for VideoConfiguration(0);
    (*(*(v59 - 8) + 56))(v51 + v58, 1, 1, v59);
    v60 = sub_24F9238D8();
    v61 = (v51 + v49[12]);
    type metadata accessor for GSKVideoPlaybackCoordinator(0);
    sub_24F679730(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator, &unk_24F95FAB8);
    *v61 = sub_24F9243D8();
    v61[1] = v62;
    *(v51 + v49[9]) = 1;
    *(v51 + v49[10]) = v60;
    *(v51 + v49[11]) = 0;
    *(v51 + v49[6]) = 0x3FE8000000000000;
    *(v51 + v49[7]) = 0x3FE0000000000000;
    v63 = v51 + v49[8];
    *(v63 + 32) = 0u;
    *(v63 + 48) = 0u;
    *v63 = 0u;
    *(v63 + 16) = 0u;
    *(v63 + 64) = 5;
    v64 = *(v39 + *(type metadata accessor for AppEventCardConfiguration.VisualView(0) + 20));
    v55 = v147;
    if (v64 > 2)
    {
      v65 = v117;
      v66 = v118;
      v67 = v119;
      if (v64 != 3)
      {
        v93 = v122;
        v94 = v121;
        if (v64 != 4)
        {

          sub_24E924EF4(1);
          sub_24F67A058(v51, type metadata accessor for GSKVideoView);

          v149 = sub_24F925048();
          v150 = MEMORY[0x277CE0420];
          __swift_allocate_boxed_opaque_existential_1(&v148);
          sub_24F925258();
          v96 = v67;
          v97 = v65;
          goto LABEL_42;
        }

LABEL_33:
        v95 = sub_24F92CE08();

        sub_24E924EF4(v95 & 1);
        sub_24F67A058(v51, type metadata accessor for GSKVideoView);
        if (v64 <= 1)
        {
          v96 = v67;
          if (!v64)
          {
            v97 = v65;
            goto LABEL_39;
          }
        }

        else
        {
          v96 = v67;
          if (v64 != 2)
          {
            v97 = v65;
            goto LABEL_39;
          }
        }

        v97 = v65;
LABEL_39:
        v98 = sub_24F92CE08();

        v149 = sub_24F925048();
        v150 = MEMORY[0x277CE0420];
        __swift_allocate_boxed_opaque_existential_1(&v148);
        sub_24F925258();
        if ((v98 & 1) == 0)
        {
          sub_24E60169C(v93, v66, &qword_27F24BE28, &qword_24FA18EC0);
          swift_storeEnumTagMultiPayload();
          sub_24F67B000();
          sub_24F67B08C();
          sub_24F924E28();
LABEL_43:
          sub_24E601704(v93, &qword_27F24BE28, &qword_24FA18EC0);
          __swift_destroy_boxed_opaque_existential_1(&v148);
          sub_24E60169C(v97, v140, &qword_27F24BE30, &qword_24FA18EC8);
          swift_storeEnumTagMultiPayload();
          sub_24F67ADA0();
          sub_24F67AF74();
          v99 = v141;
          sub_24F924E28();
          sub_24E60169C(v99, v145, &qword_27F24BE48, &qword_24FA18EE0);
          swift_storeEnumTagMultiPayload();
          sub_24F67AD14();
          sub_24F67B148();
          sub_24F924E28();
          sub_24E601704(v99, &qword_27F24BE48, &qword_24FA18EE0);
          sub_24E601704(v97, &qword_27F24BE30, &qword_24FA18EC8);
          sub_24F67A058(v137, type metadata accessor for GSKVideo);
          goto LABEL_61;
        }

LABEL_42:
        sub_24E615E00(&v148, v94 + *(v96 + 36));
        sub_24E60169C(v93, v94, &qword_27F24BE28, &qword_24FA18EC0);
        sub_24E60169C(v94, v66, &qword_27F24BE20, &qword_24FA18EB8);
        swift_storeEnumTagMultiPayload();
        sub_24F67B000();
        sub_24F67B08C();
        sub_24F924E28();
        sub_24E601704(v94, &qword_27F24BE20, &qword_24FA18EB8);
        goto LABEL_43;
      }
    }

    else
    {
      v65 = v117;
      v66 = v118;
      v67 = v119;
    }

    v93 = v122;
    v94 = v121;
    goto LABEL_33;
  }

  sub_24E601704(v33, &qword_27F213FB8, &unk_24F93C010);
  sub_24E60169C(v39 + *(v47 + 28), v48, &qword_27F213FB0, &qword_24F93E6B0);
  v52 = v125;
  v53 = v126;
  if ((*(v125 + 48))(v48, 1, v126) != 1)
  {
    v142 = *(v52 + 32);
    v74 = v123;
    v142(v123, v48, v53);
    v75 = sub_24F922348();
    v76 = v50;
    (*(*(v75 - 8) + 56))(v50, 1, 1, v75);
    v141 = *MEMORY[0x277CEE240];
    v77 = v53;
    v78 = v106;
    (*(v52 + 16))(v106, v74, v53);
    v79 = v76;
    v80 = v107;
    sub_24E6009C8(v79, v107, &qword_27F214148, &qword_24F93C520);
    v81 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v82 = (v18 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = (*(v108 + 80) + v82 + 8) & ~*(v108 + 80);
    v84 = v39;
    v85 = v83 + v109;
    v86 = swift_allocObject();
    v142((v86 + v81), v78, v77);
    v87 = v141;
    *(v86 + v82) = v141;
    sub_24E6009C8(v80, v86 + v83, &qword_27F214148, &qword_24F93C520);
    *(v86 + v85) = 1;
    v88 = *(v84 + *(type metadata accessor for AppEventCardConfiguration.VisualView(0) + 20));
    v89 = 1;
    if (v88 > 2)
    {
      v90 = v110;
      v91 = v113;
      v92 = v112;
      if (v88 != 3)
      {
        v55 = v147;
        if (v88 != 4)
        {
LABEL_46:
          v100 = v87;

          sub_24E925210(v89 & 1, sub_24E623C20, v86);

          if (v88 > 2)
          {
            v101 = v116;
            if (v88 != 3 && v88 != 4)
            {

              v149 = sub_24F925048();
              v150 = MEMORY[0x277CE0420];
              __swift_allocate_boxed_opaque_existential_1(&v148);
              sub_24F925258();
              v102 = v115;
              goto LABEL_59;
            }
          }

          else
          {
            v101 = v116;
            if (!v88)
            {
              v102 = v115;
              goto LABEL_56;
            }
          }

          v102 = v115;
LABEL_56:
          v103 = sub_24F92CE08();

          v149 = sub_24F925048();
          v150 = MEMORY[0x277CE0420];
          __swift_allocate_boxed_opaque_existential_1(&v148);
          sub_24F925258();
          if ((v103 & 1) == 0)
          {
            sub_24E60169C(v92, v101, &qword_27F24BE08, &qword_24FA18EA0);
            swift_storeEnumTagMultiPayload();
            sub_24F67ABD0();
            sub_24F67AC5C();
            sub_24F924E28();
LABEL_60:
            sub_24E601704(v92, &qword_27F24BE08, &qword_24FA18EA0);
            __swift_destroy_boxed_opaque_existential_1(&v148);
            sub_24E60169C(v90, v145, &qword_27F24BE10, &qword_24FA18EA8);
            swift_storeEnumTagMultiPayload();
            sub_24F67AD14();
            sub_24F67B148();
            sub_24F924E28();
            sub_24E601704(v90, &qword_27F24BE10, &qword_24FA18EA8);
            (*(v125 + 8))(v123, v126);
            goto LABEL_61;
          }

LABEL_59:
          sub_24E615E00(&v148, v91 + *(v102 + 36));
          sub_24E60169C(v92, v91, &qword_27F24BE08, &qword_24FA18EA0);
          sub_24E60169C(v91, v101, &qword_27F24BE00, &unk_24FA18E90);
          swift_storeEnumTagMultiPayload();
          sub_24F67ABD0();
          sub_24F67AC5C();
          sub_24F924E28();
          sub_24E601704(v91, &qword_27F24BE00, &unk_24FA18E90);
          goto LABEL_60;
        }

LABEL_45:
        v89 = sub_24F92CE08();
        goto LABEL_46;
      }
    }

    else
    {
      v90 = v110;
      v91 = v113;
      v92 = v112;
    }

    v55 = v147;
    goto LABEL_45;
  }

  sub_24E601704(v48, &qword_27F213FB0, &qword_24F93E6B0);
  v54 = 1;
  v55 = v147;
LABEL_62:
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BE70, &qword_24FA18F08);
  return (*(*(v104 - 8) + 56))(v55, v54, 1, v104);
}

uint64_t sub_24F677BBC@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AppEventCardConfiguration.HeadingStack(0);
  sub_24E60169C(v1 + *(v10 + 28), v9, &qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24F677DC4()
{
  v1 = v0;
  v2 = sub_24F923F78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v137 = &v128 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214410, &unk_24F9576A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v128 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F320, &qword_24FA18D00);
  MEMORY[0x28223BE20](v11 - 8);
  v131 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v136 = &v128 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v128 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v128 - v19;
  sub_24E60169C(v1, &v128 - v19, &qword_27F21F320, &qword_24FA18D00);
  v21 = type metadata accessor for GSKAppEventFormattedDate(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v139 = v22 + 48;
  v140 = v23;
  v24 = v23(v20, 1, v21);
  v138 = v1;
  if (v24 == 1)
  {
    v25 = v20;
LABEL_3:
    sub_24E601704(v25, &qword_27F21F320, &qword_24FA18D00);
LABEL_11:
    v40 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v26 = v20[*(v21 + 24)];
  sub_24F67A058(v20, type metadata accessor for GSKAppEventFormattedDate);
  if (v26 != 1)
  {
    goto LABEL_11;
  }

  sub_24E60169C(v1, v17, &qword_27F21F320, &qword_24FA18D00);
  if (v140(v17, 1, v21) == 1)
  {
    v25 = v17;
    goto LABEL_3;
  }

  v27 = &v17[*(v21 + 20)];
  v29 = *v27;
  v28 = v27[1];

  sub_24F67A058(v17, type metadata accessor for GSKAppEventFormattedDate);
  if (!v28)
  {
    goto LABEL_11;
  }

  v132 = v21;
  v135 = v5;
  v30 = v3;
  v141 = v29;
  v142 = v28;
  sub_24E600AEC();
  v31 = sub_24F92C528();
  v33 = v32;

  v34 = sub_24F6789D0(v31, v33);
  v36 = v35;
  v38 = v37;
  v134 = v39;

  v40 = sub_24E61A904(0, 1, 1, MEMORY[0x277D84F90]);
  v42 = *(v40 + 2);
  v41 = *(v40 + 3);
  if (v42 >= v41 >> 1)
  {
    v40 = sub_24E61A904((v41 > 1), v42 + 1, 1, v40);
  }

  *(v40 + 2) = v42 + 1;
  v43 = &v40[32 * v42];
  *(v43 + 4) = v34;
  *(v43 + 5) = v36;
  v43[48] = v38 & 1;
  v5 = v135;
  *(v43 + 7) = v134;
  v3 = v30;
  v1 = v138;
  v21 = v132;
LABEL_12:
  v44 = type metadata accessor for AppEventCardConfiguration.HeadingStack(0);
  v45 = (v1 + *(v44 + 20));
  v46 = v45[1];
  if (v46)
  {
    v132 = v21;
    v133 = v3;
    v134 = v2;
    v135 = v5;
    v47 = *v45;
    if (*(v1 + *(v44 + 24) + 8))
    {

      sub_24F926E48();
      sub_24F924CD8();
      v48 = sub_24F924D08();
      (*(*(v48 - 8) + 56))(v10, 0, 1, v48);
      sub_24F926E58();

      sub_24E601704(v10, &qword_27F214410, &unk_24F9576A0);
      v49 = sub_24F925E28();
      v51 = v50;
      v53 = v52;
      sub_24F925A08();
      sub_24F9258E8();

      v129 = sub_24F925C98();
      v128 = v54;
      v56 = v55;
      v130 = v57;

      sub_24E600B40(v49, v51, v53 & 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_24E61A904(0, *(v40 + 2) + 1, 1, v40);
      }

      v59 = *(v40 + 2);
      v58 = *(v40 + 3);
      if (v59 >= v58 >> 1)
      {
        v40 = sub_24E61A904((v58 > 1), v59 + 1, 1, v40);
      }

      *(v40 + 2) = v59 + 1;
      v60 = &v40[32 * v59];
      v61 = v128;
      *(v60 + 4) = v129;
      *(v60 + 5) = v61;
      v60[48] = v56 & 1;
      *(v60 + 7) = v130;
    }

    else
    {
    }

    v141 = v47;
    v142 = v46;
    sub_24E600AEC();
    v63 = sub_24F925E18();
    v65 = v64;
    v67 = v66;
    sub_24F925A08();
    sub_24F9258E8();

    v68 = sub_24F925C98();
    v70 = v69;
    v72 = v71;

    sub_24E600B40(v63, v65, v67 & 1);

    LODWORD(v141) = sub_24F925198();
    v73 = sub_24F925C58();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    sub_24E600B40(v68, v70, v72 & 1);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_24E61A904(0, *(v40 + 2) + 1, 1, v40);
    }

    v2 = v134;
    v62 = v136;
    v81 = *(v40 + 2);
    v80 = *(v40 + 3);
    v1 = v138;
    if (v81 >= v80 >> 1)
    {
      v40 = sub_24E61A904((v80 > 1), v81 + 1, 1, v40);
    }

    *(v40 + 2) = v81 + 1;
    v82 = &v40[32 * v81];
    *(v82 + 4) = v73;
    *(v82 + 5) = v75;
    v82[48] = v77 & 1;
    *(v82 + 7) = v79;
    v21 = v132;
    v3 = v133;
    v5 = v135;
  }

  else
  {
    v62 = v136;
  }

  sub_24E60169C(v1, v62, &qword_27F21F320, &qword_24FA18D00);
  if (v140(v62, 1, v21) == 1)
  {
    sub_24E601704(v62, &qword_27F21F320, &qword_24FA18D00);
  }

  else
  {
    v83 = (v62 + *(v21 + 20));
    v85 = *v83;
    v84 = v83[1];

    sub_24F67A058(v62, type metadata accessor for GSKAppEventFormattedDate);
    if (v84)
    {
      v141 = v85;
      v142 = v84;
      sub_24E600AEC();
      v86 = sub_24F92C558();
      v88 = v87;

      v89 = v131;
      sub_24E60169C(v1, v131, &qword_27F21F320, &qword_24FA18D00);
      if (v140(v89, 1, v21) == 1)
      {

        sub_24E601704(v89, &qword_27F21F320, &qword_24FA18D00);
      }

      else
      {
        v90 = *(v89 + *(v21 + 24));
        sub_24F67A058(v89, type metadata accessor for GSKAppEventFormattedDate);
        if (v90 == 1)
        {
        }

        else
        {
          v134 = v2;
          v135 = v5;
          v133 = v3;
          if (qword_27F211518 != -1)
          {
            swift_once();
          }

          v141 = qword_27F39EAF8;
          v142 = unk_27F39EB00;

          v91 = sub_24F925E18();
          v93 = v92;
          v95 = v94;
          sub_24F925A08();
          sub_24F9258E8();

          v139 = sub_24F925C98();
          v140 = v96;
          v98 = v97;
          LODWORD(v136) = v99;

          sub_24E600B40(v91, v93, v95 & 1);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_24E61A904(0, *(v40 + 2) + 1, 1, v40);
          }

          v101 = *(v40 + 2);
          v100 = *(v40 + 3);
          if (v101 >= v100 >> 1)
          {
            v40 = sub_24E61A904((v100 > 1), v101 + 1, 1, v40);
          }

          *(v40 + 2) = v101 + 1;
          v102 = &v40[32 * v101];
          *(v102 + 4) = v139;
          *(v102 + 5) = v98;
          v102[48] = v136 & 1;
          *(v102 + 7) = v140;
          v141 = v86;
          v142 = v88;
          v103 = sub_24F925E18();
          v105 = v104;
          v107 = v106;
          sub_24F925A08();
          sub_24F9258E8();

          v108 = sub_24F925C98();
          v110 = v109;
          v112 = v111;

          sub_24E600B40(v103, v105, v107 & 1);

          LODWORD(v141) = sub_24F9251C8();
          v113 = sub_24F925C58();
          v115 = v114;
          v117 = v116;
          v119 = v118;
          sub_24E600B40(v108, v110, v112 & 1);

          v121 = *(v40 + 2);
          v120 = *(v40 + 3);
          if (v121 >= v120 >> 1)
          {
            v40 = sub_24E61A904((v120 > 1), v121 + 1, 1, v40);
          }

          *(v40 + 2) = v121 + 1;
          v122 = &v40[32 * v121];
          *(v122 + 4) = v113;
          *(v122 + 5) = v115;
          v122[48] = v117 & 1;
          *(v122 + 7) = v119;
          v3 = v133;
          v2 = v134;
          v5 = v135;
        }
      }
    }
  }

  v123 = v137;
  sub_24F677BBC(v137);
  (*(v3 + 104))(v5, *MEMORY[0x277CDFA88], v2);
  v124 = sub_24F923F68();
  v125 = *(v3 + 8);
  v125(v5, v2);
  v125(v123, v2);
  if ((v124 & 1) == 0)
  {
    v40 = sub_24EF1C668(v40);
  }

  v126 = sub_24F679228(32, 0xE100000000000000, 0, MEMORY[0x277D84F90], v40);

  return v126;
}

uint64_t sub_24F6789D0(uint64_t a1, uint64_t a2)
{
  v47[1] = a1;
  v2 = sub_24F926C08();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v53 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD70, &unk_24FA18D10);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD78, &unk_24FA273E0);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD80, &unk_24FA18D20);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD88, &qword_24FA273F0);
  MEMORY[0x28223BE20](v10 - 8);
  v47[0] = v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24BD90, &qword_24FA18D30);
  MEMORY[0x28223BE20](v12 - 8);
  v51 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v47 - v15;
  v17 = sub_24F9258B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24F925A38();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_24F91F0C8();
  MEMORY[0x28223BE20](v25 - 8);
  v26 = sub_24F91F008();
  v56 = *(v26 - 8);
  v57 = v26;
  MEMORY[0x28223BE20](v26);
  v49 = v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v47 - v29;

  sub_24F91F0B8();
  sub_24F91F018();
  (*(v22 + 104))(v24, *MEMORY[0x277CE0AA0], v21);
  sub_24F9258A8();
  sub_24F925978();
  (*(v18 + 8))(v20, v17);
  (*(v22 + 8))(v24, v21);
  v31 = sub_24F9258E8();

  v58 = v31;
  sub_24E6584A4();
  sub_24F91F038();
  v32 = v47[0];
  sub_24F925BA8();
  v33 = sub_24F925BB8();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = v48;
  sub_24F925BA8();
  v35 = sub_24F925BD8();
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = v50;
  sub_24F925BE8();
  v37 = sub_24F925BF8();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v38 = sub_24F925B98();
  (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
  (*(v54 + 104))(v53, *MEMORY[0x277CE0EE0], v55);
  sub_24F926D48();
  sub_24F925C08();
  v39 = sub_24F925C18();
  (*(*(v39 - 8) + 56))(v16, 0, 1, v39);
  sub_24E60169C(v16, v51, &qword_27F24BD90, &qword_24FA18D30);
  sub_24F67A128();
  sub_24F91F038();
  sub_24E601704(v16, &qword_27F24BD90, &qword_24FA18D30);
  (*(v56 + 16))(v49, v30, v57);
  v40 = sub_24F925DF8();
  v42 = v41;
  v44 = v43;
  if (qword_27F211970 != -1)
  {
    swift_once();
  }

  v45 = sub_24F925D28();
  sub_24E600B40(v40, v42, v44 & 1);

  (*(v56 + 8))(v30, v57);

  return v45;
}