unint64_t sub_26A5BF274()
{
  result = qword_2803AF320;
  if (!qword_2803AF320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF318, &qword_26A8643F8);
    sub_26A5BF32C();
    sub_26A4DBCC8(&qword_2803AF348, &qword_2803AF350, &qword_26A864410, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF320);
  }

  return result;
}

unint64_t sub_26A5BF32C()
{
  result = qword_2803AF328;
  if (!qword_2803AF328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF330, &qword_26A864400);
    sub_26A4DBCC8(&qword_2803AF338, &qword_2803AF340, &qword_26A864408, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF328);
  }

  return result;
}

uint64_t sub_26A5BF3E4@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v98 = a4;
  v99 = a5;
  v89 = a2;
  v90 = a3;
  v103 = a1;
  v97 = a6;
  v6 = sub_26A84F5E8();
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x28223BE20](v6);
  v93 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF420, &qword_26A8644C8);
  MEMORY[0x28223BE20](v8);
  v91 = (&v79 - v9);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF428, &qword_26A8644D0);
  v109 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v101 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF430, &qword_26A8644D8);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v102 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - v17;
  sub_26A8504A8();
  v19 = sub_26A850738();
  v21 = v20;
  v23 = v22;

  sub_26A850E18();
  v24 = sub_26A8506A8();
  v106 = v25;
  v107 = v24;
  v27 = v26;
  v108 = v28;

  sub_26A4EC448(v19, v21, v23 & 1);

  v29 = sub_26A850278();
  v104 = v27 & 1;
  v105 = v29;
  LOBYTE(v116[0]) = 1;
  v125 = v89;
  v126 = v90;
  v127 = v98;
  v128 = v99;
  v90 = type metadata accessor for SnippetPreview(0, &v125);
  sub_26A5BFD5C(0, v90, &v125);
  v30 = v125;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF438, &qword_26A8644E0);
  v31 = v18 + *(v89 + 36);
  sub_26A8513B8();
  v32 = sub_26A850248();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440, &unk_26A877510);
  *(v31 + *(v85 + 36)) = v32;
  *v18 = v30;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF448, &qword_26A8644E8);
  v33 = (v18 + *(v84 + 36));
  v83 = sub_26A84F5F8();
  v34 = *(v83 + 20);
  v81 = *MEMORY[0x277CE0118];
  v35 = v81;
  v36 = sub_26A84FB88();
  v37 = *(v36 - 8);
  v80 = *(v37 + 104);
  v82 = v37 + 104;
  v80(v33 + v34, v35, v36);
  __asm { FMOV            V0.2D, #12.0 }

  v79 = _Q0;
  *v33 = _Q0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58, &unk_26A857A00);
  *(v33 + *(v43 + 36)) = 256;
  v44 = sub_26A850238();
  v45 = *(v8 + 36);
  v100 = v18;
  v46 = v18 + v45;
  *v46 = v44;
  *(v46 + 8) = 0u;
  *(v46 + 24) = 0u;
  *(v46 + 40) = 1;
  v47 = sub_26A850268();
  v48 = v18 + *(v14 + 44);
  *v48 = v47;
  *(v48 + 8) = 0u;
  *(v48 + 24) = 0u;
  *(v48 + 40) = 1;
  sub_26A8504A8();
  v49 = sub_26A850738();
  v51 = v50;
  LOBYTE(v34) = v52;

  sub_26A850E18();
  v53 = sub_26A8506A8();
  v86 = v54;
  v87 = v53;
  LOBYTE(v18) = v55;
  v88 = v56;

  sub_26A4EC448(v49, v51, v34 & 1);

  LODWORD(v99) = sub_26A850278();
  LODWORD(v98) = v18 & 1;
  LOBYTE(v125) = v18 & 1;
  LOBYTE(v116[0]) = 1;
  sub_26A5BFD5C(1, v90, &v125);
  v57 = v125;
  v58 = v91;
  v59 = v91 + *(v89 + 36);
  sub_26A8513B8();
  v59[*(v85 + 36)] = sub_26A850248();
  *v58 = v57;
  v60 = (v58 + *(v84 + 36));
  v80(v60 + *(v83 + 20), v81, v36);
  *v60 = v79;
  *(v60 + *(v43 + 36)) = 256;
  v61 = sub_26A850238();
  v62 = v58 + *(v8 + 36);
  *v62 = v61;
  *(v62 + 8) = 0u;
  *(v62 + 24) = 0u;
  v62[40] = 1;
  v63 = v93;
  sub_26A84F5D8();
  sub_26A5C0E60();
  v64 = v101;
  sub_26A850C98();
  (*(v95 + 8))(v63, v96);
  sub_26A4DBD10(v58, &qword_2803AF420, &qword_26A8644C8);
  v65 = v102;
  sub_26A51D0F8(v100, v102, &qword_2803AF430, &qword_26A8644D8);
  v103 = *(v109 + 16);
  v66 = v92;
  v67 = v64;
  v68 = v94;
  v103(v92, v67, v94);
  v114[0] = v107;
  v114[1] = v106;
  LOBYTE(v114[2]) = v104;
  *(&v114[2] + 1) = *v113;
  HIDWORD(v114[2]) = *&v113[3];
  v114[3] = v108;
  LOBYTE(v114[4]) = v105;
  *(&v114[4] + 1) = *v112;
  HIDWORD(v114[4]) = *&v112[3];
  memset(&v114[5], 0, 32);
  LOBYTE(v114[9]) = 1;
  v69 = v97;
  memcpy(v97, v114, 0x49uLL);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF470, &qword_26A8644F0);
  sub_26A51D0F8(v65, &v69[v70[12]], &qword_2803AF430, &qword_26A8644D8);
  v71 = v70[16];
  v72 = v86;
  v73 = v87;
  v115[0] = v87;
  v115[1] = v86;
  LOBYTE(v115[2]) = v98;
  *(&v115[2] + 1) = v111[0];
  HIDWORD(v115[2]) = *(v111 + 3);
  v74 = v88;
  v115[3] = v88;
  LOBYTE(v115[4]) = v99;
  *(&v115[4] + 1) = *v110;
  HIDWORD(v115[4]) = *&v110[3];
  memset(&v115[5], 0, 32);
  LOBYTE(v115[9]) = 1;
  memcpy(&v69[v71], v115, 0x49uLL);
  v75 = &v69[v70[20]];
  v76 = v68;
  v103(v75, v66, v68);
  sub_26A51D0F8(v114, &v125, &qword_2803AF478, &qword_26A8644F8);
  sub_26A51D0F8(v115, &v125, &qword_2803AF478, &qword_26A8644F8);
  v77 = *(v109 + 8);
  v77(v101, v76);
  sub_26A4DBD10(v100, &qword_2803AF430, &qword_26A8644D8);
  v77(v66, v76);
  v116[0] = v73;
  v116[1] = v72;
  v117 = v98;
  *v118 = v111[0];
  *&v118[3] = *(v111 + 3);
  v119 = v74;
  v120 = v99;
  *v121 = *v110;
  *&v121[3] = *&v110[3];
  v122 = 0u;
  v123 = 0u;
  v124 = 1;
  sub_26A4DBD10(v116, &qword_2803AF478, &qword_26A8644F8);
  sub_26A4DBD10(v102, &qword_2803AF430, &qword_26A8644D8);
  v125 = v107;
  v126 = v106;
  LOBYTE(v127) = v104;
  *(&v127 + 1) = *v113;
  HIDWORD(v127) = *&v113[3];
  v128 = v108;
  v129 = v105;
  *v130 = *v112;
  *&v130[3] = *&v112[3];
  v131 = 0u;
  v132 = 0u;
  v133 = 1;
  return sub_26A4DBD10(&v125, &qword_2803AF478, &qword_26A8644F8);
}

uint64_t sub_26A5BFD5C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v26[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF480, &qword_26A864500);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  v26[5] = v26 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF488, &qword_26A864508);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 24);
  v16 = *(v15 - 8);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v3 + *(a2 + 52));
  if (a1)
  {
    v26[1] = v20;
    v26[2] = v19;
    v26[3] = v18;
    sub_26A84AD58();
  }

  else
  {
    (*(v11 + 16))(v14, v3, v10, v21);
  }

  v27(v14);
  (*(v11 + 8))(v14, v10);
  v24 = View.eraseToAnyView()(v15);
  result = (*(v16 + 8))(v23, v15);
  *v28 = v24;
  return result;
}

double sub_26A5C0134@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v64 = a2;
  v62 = sub_26A8512C8();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v63 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = &v45 - v5;
  MEMORY[0x28223BE20](v6);
  v52 = &v45 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - v12;
  sub_26A850F08();
  v14 = *MEMORY[0x277CE1010];
  v15 = sub_26A850F68();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  v16 = sub_26A850F38();
  v60 = v16;

  sub_26A4DBD10(v13, &qword_2803AC918, &qword_26A85DBA0);
  v86 = 0;
  v87 = 0xE000000000000000;
  v82 = v16;
  sub_26A8523D8();
  MEMORY[0x26D663B00](0xD00000000000001DLL, 0x800000026A88C6E0);
  sub_26A850418();
  v17 = sub_26A850738();
  v58 = v18;
  v57 = v19;
  v21 = v20;

  v46 = v10;
  sub_26A8512B8();
  sub_26A8504A8();
  v55 = sub_26A850738();
  v54 = v22;
  v53 = v23;
  v56 = v24;

  v86 = v59;
  v25 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC088, &qword_26A85A650);
  v59 = sub_26A8517F8();
  v51 = v26;
  sub_26A8512B8();
  sub_26A8504A8();
  v49 = sub_26A850738();
  v48 = v27;
  v47 = v28;
  v50 = v29;

  v86 = 0x100000000000011ALL;
  v87 = 0x800000026A88C720;
  sub_26A53ACC8();
  v30 = sub_26A850898();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v82 = v17;
  v83 = v58;
  v84 = v57 & 1;
  v85 = v21;
  v86 = &v82;
  v37 = v61;
  v38 = *(v61 + 16);
  v39 = v65;
  v40 = v62;
  v38(v65, v10, v62);
  v78 = v55;
  v79 = v54;
  v80 = v53 & 1;
  v81 = v56;
  v87 = v39;
  v88 = &v78;
  v74 = v59;
  v75 = v51;
  v76 = 0;
  v77 = MEMORY[0x277D84F90];
  v89 = &v74;
  v41 = v63;
  v42 = v52;
  v38(v63, v52, v40);
  v70 = v49;
  v71 = v48;
  v72 = v47 & 1;
  v73 = v50;
  v90 = v41;
  v91 = &v70;
  v66 = v30;
  v67 = v32;
  v68 = v34 & 1;
  v69 = v36;
  v92 = &v66;
  sub_26A594338(&v86, v64);

  v43 = *(v37 + 8);
  v43(v42, v40);
  v43(v46, v40);
  sub_26A4EC448(v66, v67, v68);

  sub_26A4EC448(v70, v71, v72);

  v43(v41, v40);
  sub_26A4EC448(v74, v75, v76);

  sub_26A4EC448(v78, v79, v80);

  v43(v65, v40);
  sub_26A4EC448(v82, v83, v84);

  return result;
}

uint64_t sub_26A5C07EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A5C0878(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_26A5046B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26A5C0900(uint64_t result, unsigned int a2, uint64_t a3)
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
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

void sub_26A5C0A3C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
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
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
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
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_26A5C0C0C()
{
  result = qword_2803AF400;
  if (!qword_2803AF400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2803AF378, &qword_26A864430);
    sub_26A5C0CC4();
    sub_26A4DBCC8(&qword_28157FB98, &qword_2803ACB20, &qword_26A85C098, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF400);
  }

  return result;
}

unint64_t sub_26A5C0CC4()
{
  result = qword_2803AF408;
  if (!qword_2803AF408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF370, &qword_26A864428);
    sub_26A5C0D7C();
    sub_26A4DBCC8(&qword_28157FB90, &qword_2803AD000, &qword_26A85CFF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF408);
  }

  return result;
}

unint64_t sub_26A5C0D7C()
{
  result = qword_2803AF410;
  if (!qword_2803AF410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF368, &qword_26A864420);
    sub_26A4DBCC8(&qword_2803AF360, &qword_2803AF358, &qword_26A864418, MEMORY[0x277CDD6E0]);
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68, &qword_26A85FCF0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF410);
  }

  return result;
}

unint64_t sub_26A5C0E60()
{
  result = qword_2803AF450;
  if (!qword_2803AF450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF420, &qword_26A8644C8);
    sub_26A5C0EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF450);
  }

  return result;
}

unint64_t sub_26A5C0EEC()
{
  result = qword_2803AF458;
  if (!qword_2803AF458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF448, &qword_26A8644E8);
    sub_26A5C0FA4();
    sub_26A4DBCC8(&qword_28157FEA0, &qword_2803A9E58, &unk_26A857A00, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF458);
  }

  return result;
}

unint64_t sub_26A5C0FA4()
{
  result = qword_2803AF460;
  if (!qword_2803AF460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF438, &qword_26A8644E0);
    sub_26A4DBCC8(&qword_2803AF468, &qword_2803AF440, &unk_26A877510, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF460);
  }

  return result;
}

uint64_t sub_26A5C105C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF480, &qword_26A864500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A5C10CC()
{
  result = qword_2803AF498;
  if (!qword_2803AF498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF488, &qword_26A864508);
    sub_26A5C1158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF498);
  }

  return result;
}

unint64_t sub_26A5C1158()
{
  result = qword_2803AF4A0;
  if (!qword_2803AF4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF480, &qword_26A864500);
    sub_26A4DBCC8(&qword_2803AF4A8, &qword_2803AF4B0, qword_26A864518, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF4A0);
  }

  return result;
}

BOOL sub_26A5C1238()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50, &unk_26A857890);
  return v5 != 0;
}

id sub_26A5C1320@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    RFTextProperty.asPartialText()(v187);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v185 + 1) = &type metadata for PartialText;
      v186 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v184[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v184[0] + 16);
    }

    else
    {
      v186 = 0;
      v185 = 0u;
      *v184 = 0u;
    }

    v10 = sub_26A54AB40(v2, &selRef_text_3);
    if (v10)
    {
      sub_26A51B744(v10, __src);
      memcpy(__dst, __src, 0x41uLL);
      sub_26A54AAEC();
      v10 = sub_26A851248();
      v11 = &protocol witness table for AnyView;
      v12 = MEMORY[0x277CE11C8];
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v183[2] = 0;
      v183[1] = 0;
    }

    v183[0] = v10;
    v183[3] = v12;
    v183[4] = v11;
    v13 = [v2 text_4];
    if (v13)
    {
      v14 = v13;
      *(&v181 + 1) = &type metadata for PartialText;
      v182 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v180[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v180[0] + 16);
    }

    else
    {
      v182 = 0;
      *v180 = 0u;
      v181 = 0u;
    }

    v15 = sub_26A54AB40(v2, &selRef_text_5);
    if (v15)
    {
      sub_26A51B744(v15, v189);
      memcpy(__dst, v189, 0x41uLL);
      sub_26A54AAEC();
      v15 = sub_26A851248();
      v16 = &protocol witness table for AnyView;
      v17 = MEMORY[0x277CE11C8];
    }

    else
    {
      v17 = 0;
      v16 = 0;
      v179[2] = 0;
      v179[1] = 0;
    }

    v179[0] = v15;
    v179[3] = v17;
    v179[4] = v16;
    v18 = [v2 text_6];
    if (v18)
    {
      v19 = v18;
      *(&v177 + 1) = &type metadata for PartialText;
      v178 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v176[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v176[0] + 16);
    }

    else
    {
      v178 = 0;
      *v176 = 0u;
      v177 = 0u;
    }

    v20 = [v2 text_7];
    if (v20)
    {
      v21 = v20;
      *(&v174 + 1) = &type metadata for PartialText;
      v175 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v173[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v173[0] + 16);
    }

    else
    {
      v175 = 0;
      *v173 = 0u;
      v174 = 0u;
    }

    v22 = [v2 text_8];
    if (v22)
    {
      v23 = v22;
      *(&v171 + 1) = &type metadata for PartialText;
      v172 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v170[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v170[0] + 16);
    }

    else
    {
      v172 = 0;
      *v170 = 0u;
      v171 = 0u;
    }

    v24 = [v2 thumbnail];
    if (v24)
    {
      v25 = v24;
      *(&v168 + 1) = sub_26A84BD28();
      v169 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(v167);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v169 = 0;
      *v167 = 0u;
      v168 = 0u;
    }

    if (qword_2803A89D0 != -1)
    {
      swift_once();
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8, &qword_26A85B990);
    v27 = __swift_project_value_buffer(v26, qword_2803D1900);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908, &qword_26A864570);
    v29 = &a1[*(v28 + 32)];
    sub_26A4EA070(v27, v29, &qword_2803AADC8, &qword_26A85B990);
    sub_26A6AEE74(v190);
    memcpy(a1, v190, 0xBFuLL);
    sub_26A5375E4(&v29[*(v26 + 36)], &a1[*(v28 + 28)]);
    v30 = type metadata accessor for SimpleItemRichView(0);
    v31 = &a1[v30[5]];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    v32 = v30[6];
    *&a1[v32] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
    swift_storeEnumTagMultiPayload();
    v33 = &a1[v30[7]];
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    v34 = v30[17];
    *&a1[v34] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
    swift_storeEnumTagMultiPayload();
    v35 = memcpy(__dst, v187, 0xFAuLL);
    OUTLINED_FUNCTION_5_31(v35, v36, v37, v38, v39, v40, v41, v42, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164[0]);
    sub_26A4EC458(__dst, &v132);
    sub_26A4EC4B4();
    *&a1[v30[8]] = sub_26A851248();
    sub_26A4EA070(v184, v164, &qword_2803A91B8, &qword_26A8575C0);
    if (v165)
    {
      v43 = OUTLINED_FUNCTION_5_10(v164);
      v45 = v44(v43);
      OUTLINED_FUNCTION_4_27(v45, v46, v47, v48, v49, v50, v51, v52, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
    }

    else
    {
      sub_26A4E2544(v164, &qword_2803A91B8, &qword_26A8575C0);
      v34 = 0;
    }

    *&a1[v30[9]] = v34;
    sub_26A4EA070(v183, v164, &qword_2803A91B8, &qword_26A8575C0);
    if (v165)
    {
      v53 = OUTLINED_FUNCTION_5_10(v164);
      v55 = v54(v53);
      OUTLINED_FUNCTION_4_27(v55, v56, v57, v58, v59, v60, v61, v62, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
    }

    else
    {
      sub_26A4E2544(v164, &qword_2803A91B8, &qword_26A8575C0);
      v34 = 0;
    }

    *&a1[v30[10]] = v34;
    sub_26A4EA070(v180, v164, &qword_2803A91B8, &qword_26A8575C0);
    if (v165)
    {
      v63 = OUTLINED_FUNCTION_5_10(v164);
      v65 = v64(v63);
      OUTLINED_FUNCTION_4_27(v65, v66, v67, v68, v69, v70, v71, v72, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
    }

    else
    {
      sub_26A4E2544(v164, &qword_2803A91B8, &qword_26A8575C0);
      v34 = 0;
    }

    *&a1[v30[11]] = v34;
    sub_26A4EA070(v179, v164, &qword_2803A91B8, &qword_26A8575C0);
    if (v165)
    {
      v73 = OUTLINED_FUNCTION_5_10(v164);
      v75 = v74(v73);
      OUTLINED_FUNCTION_4_27(v75, v76, v77, v78, v79, v80, v81, v82, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
    }

    else
    {
      sub_26A4E2544(v164, &qword_2803A91B8, &qword_26A8575C0);
      v34 = 0;
    }

    *&a1[v30[12]] = v34;
    sub_26A4EA070(v176, v164, &qword_2803A91B8, &qword_26A8575C0);
    if (v165)
    {
      v83 = OUTLINED_FUNCTION_5_10(v164);
      v85 = v84(v83);
      OUTLINED_FUNCTION_4_27(v85, v86, v87, v88, v89, v90, v91, v92, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
    }

    else
    {
      sub_26A4E2544(v164, &qword_2803A91B8, &qword_26A8575C0);
      v34 = 0;
    }

    *&a1[v30[13]] = v34;
    sub_26A4EA070(v173, v164, &qword_2803A91B8, &qword_26A8575C0);
    if (v165)
    {
      v93 = OUTLINED_FUNCTION_5_10(v164);
      v95 = v94(v93);
      OUTLINED_FUNCTION_4_27(v95, v96, v97, v98, v99, v100, v101, v102, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
    }

    else
    {
      sub_26A4E2544(v164, &qword_2803A91B8, &qword_26A8575C0);
      v34 = 0;
    }

    *&a1[v30[14]] = v34;
    sub_26A4EA070(v170, v164, &qword_2803A91B8, &qword_26A8575C0);
    if (v165)
    {
      v103 = OUTLINED_FUNCTION_5_10(v164);
      v105 = v104(v103);
      OUTLINED_FUNCTION_4_27(v105, v106, v107, v108, v109, v110, v111, v112, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
    }

    else
    {
      sub_26A4E2544(v164, &qword_2803A91B8, &qword_26A8575C0);
      v34 = 0;
    }

    *&a1[v30[15]] = v34;
    v113 = sub_26A4EA070(v167, &v132, &qword_2803A91B8, &qword_26A8575C0);
    if (v135)
    {
      v121 = OUTLINED_FUNCTION_5_10(&v132);
      v123 = v122(v121);

      OUTLINED_FUNCTION_5_31(v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164[0]);
      sub_26A4EC508(v164);
      OUTLINED_FUNCTION_3_29(v167);
      OUTLINED_FUNCTION_3_29(v170);
      OUTLINED_FUNCTION_3_29(v173);
      OUTLINED_FUNCTION_3_29(v176);
      OUTLINED_FUNCTION_3_29(v179);
      OUTLINED_FUNCTION_3_29(v180);
      OUTLINED_FUNCTION_3_29(v183);
      OUTLINED_FUNCTION_3_29(v184);
      result = __swift_destroy_boxed_opaque_existential_1(&v132);
    }

    else
    {
      OUTLINED_FUNCTION_5_31(v113, v114, v115, v116, v117, v118, v119, v120, v132, v133, v134, 0, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164[0]);
      sub_26A4EC508(v164);

      OUTLINED_FUNCTION_2_8(v167);
      OUTLINED_FUNCTION_2_8(v170);
      OUTLINED_FUNCTION_2_8(v173);
      OUTLINED_FUNCTION_2_8(v176);
      OUTLINED_FUNCTION_2_8(v179);
      OUTLINED_FUNCTION_2_8(v180);
      OUTLINED_FUNCTION_2_8(v183);
      OUTLINED_FUNCTION_2_8(v184);
      result = OUTLINED_FUNCTION_2_8(&v132);
      v123 = 0;
    }

    *&a1[v30[16]] = v123;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B13110;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A5C1D00()
{
  result = qword_2803AF4B8;
  if (!qword_2803AF4B8)
  {
    type metadata accessor for SimpleItemRichView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF4B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_29(uint64_t a1)
{

  return sub_26A4E2544(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

void *OUTLINED_FUNCTION_5_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x458], 0xFAuLL);
}

void sub_26A5C1DA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEA0, &qword_26A859E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A85E050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E770 != -1)
  {
    OUTLINED_FUNCTION_6_21(&qword_28157E770);
  }

  OUTLINED_FUNCTION_7_28(&qword_281588988);
  *(inited + 32) = v1;
  *(inited + 40) = xmmword_26A864630;
  *(inited + 56) = xmmword_26A864630;
  v2 = swift_initStackObject();
  OUTLINED_FUNCTION_6_29(v2, v3, v4, v5, v6, v7, v8, v9, v10, v79, v83, v86, v90, v93, v97, v11);
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20(&qword_28157E780);
  }

  v12 = OUTLINED_FUNCTION_1_34();
  v14 = OUTLINED_FUNCTION_10_20(v12, v13);
  sub_26A621A9C(v14);
  *(inited + 72) = v15;
  *(inited + 80) = xmmword_26A857140;
  *(inited + 96) = xmmword_26A857140;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_26A8570F0;
  v17 = OUTLINED_FUNCTION_1_34();
  *(v16 + 48) = 1;
  *(v16 + 56) = 5;
  v19 = OUTLINED_FUNCTION_10_20(v17, v18);
  sub_26A621A9C(v19);
  *(inited + 112) = v20;
  *(inited + 120) = xmmword_26A864640;
  *(inited + 136) = xmmword_26A864640;
  v21 = swift_initStackObject();
  OUTLINED_FUNCTION_6_29(v21, v22, v23, v24, v25, v26, v27, v28, v29, v80, v84, v87, v91, 2, 4, v30);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_28157E738);
  }

  v31 = qword_281588938;
  *(v16 + 32) = qword_281588938;
  v32 = byte_281588940;
  *(v16 + 40) = byte_281588940;
  v33 = OUTLINED_FUNCTION_10_20(v31, v32);
  sub_26A621A9C(v33);
  *(inited + 152) = v34;
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v102[0] = xmmword_281588758;
  v102[1] = unk_281588768;
  v103 = xmmword_281588778;
  v104 = xmmword_281588788;
  v35 = swift_initStackObject();
  OUTLINED_FUNCTION_6_29(v35, v36, v37, v38, v39, v40, v41, v42, v43, v81, v85, v88, v92, v94, v98, v44);
  v45 = qword_281588938;
  *(v46 + 32) = qword_281588938;
  v47 = byte_281588940;
  *(v46 + 40) = byte_281588940;

  sub_26A5C277C(v102, v100);
  v48 = OUTLINED_FUNCTION_10_20(v45, v47);
  sub_26A58787C(v48);
  sub_26A50793C();
  v82 = v100[0];
  v89 = v100[1];

  sub_26A5C27EC(v102);

  if (v101)
  {
    v49 = -1;
  }

  else
  {
    v49 = 0;
  }

  v50 = vdupq_n_s64(v49);
  v51 = vbslq_s8(v50, v104, v89);
  *(inited + 160) = vbslq_s8(v50, v103, v82);
  *(inited + 176) = v51;
  v52 = swift_initStackObject();
  OUTLINED_FUNCTION_6_29(v52, v53, v54, v55, v56, v57, v58, v59, v60, v82.i64[0], v82.i64[1], v89.i64[0], v89.i64[1], v95, v99, v61);
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v62 = OUTLINED_FUNCTION_1_34();
  v64 = OUTLINED_FUNCTION_10_20(v62, v63);
  sub_26A621A9C(v64);
  *(inited + 192) = v65;
  *(inited + 200) = xmmword_26A864650;
  __asm { FMOV            V0.2D, #16.0 }

  *(inited + 216) = _Q0;
  v71 = swift_initStackObject();
  *(v71 + 16) = v96;
  v72 = qword_281588978;
  *(v71 + 32) = qword_281588978;
  v73 = byte_281588980;
  *(v71 + 40) = byte_281588980;
  *(v71 + 48) = 0;
  *(v71 + 56) = 7;
  sub_26A4E324C(v72, v73);
  sub_26A621A9C(v71);
  *(inited + 232) = v74;
  __asm { FMOV            V1.2D, #20.0 }

  *(inited + 240) = xmmword_26A864660;
  *(inited + 256) = _Q1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  v76 = sub_26A4E325C();
  v78 = OUTLINED_FUNCTION_11_20(v76, v77, MEMORY[0x277CDF310], v76);
  sub_26A80D548(v78, &xmmword_2803D1C20, 12.0, 14.0, 16.0, 14.0);
}

void sub_26A5C2160()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABEA0, &qword_26A859E08);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(inited, xmmword_26A8570D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  OUTLINED_FUNCTION_3_30(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_28157E738);
  }

  OUTLINED_FUNCTION_2_33(&qword_281588938);
  *(inited + 32) = v11;
  __asm { FMOV            V0.2D, #2.0 }

  *(inited + 40) = _Q0;
  *(inited + 56) = _Q0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  v17 = sub_26A4E325C();
  v19 = OUTLINED_FUNCTION_11_20(v17, v18, MEMORY[0x277CDF310], v17);
  sub_26A80D548(v19, &xmmword_2803D1C60, 2.0, 0.0, 2.0, 0.0);
}

double sub_26A5C2254()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B3260, &qword_26A8713F0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(inited, xmmword_26A8570D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  OUTLINED_FUNCTION_3_30(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_28157E738);
  }

  OUTLINED_FUNCTION_2_33(&qword_281588938);
  inited[2].n128_u64[0] = v11;
  inited[2].n128_u64[1] = 0x4018000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  v12 = sub_26A4E325C();
  v14 = OUTLINED_FUNCTION_11_20(v12, v13, MEMORY[0x277D85048], v12);
  sub_26A80D9E4(v14, v16, 12.0);
  *&result = OUTLINED_FUNCTION_8_25(qword_2803D1CA0).n128_u64[0];
  return result;
}

double sub_26A5C233C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B3260, &qword_26A8713F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(v1, xmmword_26A8570D0);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_28157E738);
  }

  OUTLINED_FUNCTION_7_28(&qword_281588938);
  *(inited + 32) = v2;
  *(inited + 40) = 0x4018000000000000;
  v3 = swift_initStackObject();
  OUTLINED_FUNCTION_3_30(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_2_33(&qword_281588968);
  *(inited + 48) = v13;
  *(inited + 56) = 0x4014000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  v14 = sub_26A4E325C();
  v16 = OUTLINED_FUNCTION_11_20(v14, v15, MEMORY[0x277D85048], v14);
  sub_26A80D9E4(v16, v18, 6.0);
  result = *v18;
  xmmword_2803D1CC8 = v18[0];
  unk_2803D1CD8 = v18[1];
  qword_2803D1CE8 = v19;
  return result;
}

double sub_26A5C24A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B3260, &qword_26A8713F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A864670;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(v1, xmmword_26A8570D0);
  if (qword_28157E770 != -1)
  {
    OUTLINED_FUNCTION_6_21(&qword_28157E770);
  }

  OUTLINED_FUNCTION_7_28(&qword_281588988);
  *(inited + 32) = v2;
  *(inited + 40) = 0x4028000000000000;
  *(swift_initStackObject() + 16) = v27;
  if (qword_28157E780 != -1)
  {
    OUTLINED_FUNCTION_3_20(&qword_28157E780);
  }

  v3 = OUTLINED_FUNCTION_1_34();
  v5 = OUTLINED_FUNCTION_10_20(v3, v4);
  sub_26A621A9C(v5);
  *(inited + 48) = v6;
  *(inited + 56) = 0x4040000000000000;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_26A8570F0;
  v8 = OUTLINED_FUNCTION_1_34();
  *(v7 + 48) = 1;
  *(v7 + 56) = 5;
  v10 = OUTLINED_FUNCTION_10_20(v8, v9);
  sub_26A621A9C(v10);
  *(inited + 64) = v11;
  *(inited + 72) = 0x403C000000000000;
  v12 = swift_initStackObject();
  OUTLINED_FUNCTION_3_30(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_28157E738);
  }

  OUTLINED_FUNCTION_2_33(&qword_281588938);
  *(inited + 80) = v22;
  *(inited + 88) = 0x4020000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  v23 = sub_26A4E325C();
  v25 = OUTLINED_FUNCTION_11_20(v23, v24, MEMORY[0x277D85048], v23);
  sub_26A80D9E4(v25, v28, 24.0);
  result = *v28;
  xmmword_2803D1CF0 = v28[0];
  *&qword_2803D1D00 = v28[1];
  qword_2803D1D10 = v29;
  return result;
}

double sub_26A5C2690()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B3260, &qword_26A8713F0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_9_24(inited, xmmword_26A8570D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  OUTLINED_FUNCTION_3_30(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  if (qword_28157E738 != -1)
  {
    OUTLINED_FUNCTION_2_19(&qword_28157E738);
  }

  OUTLINED_FUNCTION_2_33(&qword_281588938);
  inited[2].n128_u64[0] = v11;
  inited[2].n128_u64[1] = 0x4059000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  v12 = sub_26A4E325C();
  v14 = OUTLINED_FUNCTION_11_20(v12, v13, MEMORY[0x277D85048], v12);
  sub_26A80D9E4(v14, v16, 200.0);
  *&result = OUTLINED_FUNCTION_8_25(qword_2803D1D18).n128_u64[0];
  return result;
}

uint64_t sub_26A5C277C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91B0, &unk_26A854CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5C27EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91B0, &unk_26A854CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_34()
{
  result = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = *(v1 + 8);
  return result;
}

void OUTLINED_FUNCTION_2_33(uint64_t a1@<X8>)
{
  v2 = *a1;
  *(v1 + 32) = *a1;
  v3 = *(a1 + 8);
  *(v1 + 40) = v3;
  sub_26A4E324C(v2, v3);

  sub_26A621A9C(v1);
}

__n128 OUTLINED_FUNCTION_3_30(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  a1[1] = a10;
  return result;
}

__n128 OUTLINED_FUNCTION_6_29(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

void OUTLINED_FUNCTION_7_28(uint64_t a1@<X8>)
{
  v2 = *a1;
  *(v1 + 32) = *a1;
  v3 = *(a1 + 8);
  *(v1 + 40) = v3;
  sub_26A4E324C(v2, v3);

  sub_26A621A9C(v1);
}

__n128 OUTLINED_FUNCTION_8_25@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 - 56);
  v3 = *(v1 - 40);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 - 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26A8516A8();
}

uint64_t sub_26A5C294C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonElementView(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF538, &unk_26A864870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_26A84E158();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_26A4D6FD8();
    v12 = 1;
  }

  else
  {
    v13 = *(v9 + 32);
    v13(v11, v7, v8);
    v13(&v4[*(v2 + 20)], v11, v8);
    *v4 = swift_getKeyPath();
    v4[8] = 0;
    v14 = &v4[*(v2 + 24)];
    *v14 = 0;
    *(v14 + 1) = 0;
    sub_26A5C6EAC();
    v12 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v12, 1, v2);
}

uint64_t sub_26A5C2B7C()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SummaryItemButtonView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4D7EA8();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A5C2D64()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SummaryItemButtonView(0) + 28);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A5C2EB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SummaryItemButtonView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void SummaryItemButtonView.init(text1:button1:button2:button3:text2:text3:text4:thumbnail:buttonItemsAreTrailing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  OUTLINED_FUNCTION_28_0();
  v65 = v21;
  v63 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for SummaryItemButtonView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v31 = (v30 - v29);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v62 = v24;
  v64 = v26;
  v69 = xmmword_281588758;
  v70 = unk_281588768;
  v71 = xmmword_281588778;
  v72 = xmmword_281588788;
  v73 = xmmword_281588758;
  v74 = unk_281588768;
  v75 = xmmword_281588778;
  v76 = xmmword_281588788;
  v60 = xmmword_281588788;
  v61 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(v77);
  memcpy(v31, v77, 0xC0uLL);
  v31[12] = v61;
  v31[13] = v60;
  v32 = v76;
  v31[16] = v75;
  v31[17] = v32;
  v33 = v74;
  v31[14] = v73;
  v31[15] = v33;
  v34 = v31 + v27[5];
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v35, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(v68);
  memcpy(v34, v68, 0xBFuLL);
  OUTLINED_FUNCTION_3_31();
  sub_26A5C6E04();
  v36 = v27[6];
  *(v31 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v37 = v31 + v27[7];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  v38 = v27[8];
  *(v31 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v39 = v26[3];
  v40 = v64[4];
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  OUTLINED_FUNCTION_161();
  *(v31 + v27[9]) = v41(v39, v40);
  v42 = v62[3];
  v43 = v62[4];
  __swift_project_boxed_opaque_existential_1(v62, v42);
  OUTLINED_FUNCTION_161();
  *(v31 + v27[10]) = v44(v42, v43);
  v45 = v63;
  sub_26A4D7E54();
  if (v67)
  {
    v46 = OUTLINED_FUNCTION_1_35();
    v47(v46);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v31 + v27[11]) = v38;
  sub_26A4D7E54();
  if (v67)
  {
    v48 = OUTLINED_FUNCTION_1_35();
    v49(v48);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v31 + v27[12]) = v38;
  sub_26A4D7E54();
  if (v67)
  {
    v50 = OUTLINED_FUNCTION_1_35();
    v51(v50);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v31 + v27[13]) = v38;
  sub_26A4D7E54();
  if (v67)
  {
    v52 = OUTLINED_FUNCTION_1_35();
    v53(v52);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v31 + v27[14]) = v38;
  sub_26A4D7E54();
  if (v67)
  {
    v54 = OUTLINED_FUNCTION_1_35();
    v55(v54);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4D6FD8();
    v38 = 0;
  }

  *(v31 + v27[15]) = v38;
  sub_26A4D7E54();
  if (v67)
  {
    v56 = OUTLINED_FUNCTION_1_35();
    v58 = v57(v56);
    OUTLINED_FUNCTION_7_0();
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_7_0();
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_7_0();
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_7_0();
    v45 = v63;
    sub_26A4D6FD8();
    __swift_destroy_boxed_opaque_existential_1(&v66);
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    v58 = 0;
  }

  *(v31 + v27[16]) = v58;
  if (a21)
  {
    v59 = 1;
  }

  else if (*(v45 + 24))
  {
    v59 = 0;
  }

  else
  {
    v59 = *(v65 + 24) == 0;
  }

  *(v31 + v27[17]) = v59;
  OUTLINED_FUNCTION_10_21();
  sub_26A5C6EAC();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_30_1();
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v64);
  OUTLINED_FUNCTION_27_0();
}

uint64_t type metadata accessor for SummaryItemButtonView(uint64_t a1)
{
  result = qword_2803AF4F8;
  if (!qword_2803AF4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SummaryItemButtonView.init(text1:button1:button2:button3:text2:text3:text4:thumbnail:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v36 = type metadata accessor for SummaryItemButtonView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = (v6 - v5);
  v38 = v3;
  sub_26A50429C(v3, v44);
  v37 = v1;
  sub_26A50429C(v1, v41);
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_21_9();
  OUTLINED_FUNCTION_21_9();
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v48 = xmmword_281588758;
  v49 = unk_281588768;
  v50 = xmmword_281588778;
  v51 = xmmword_281588788;
  v52 = xmmword_281588758;
  v53 = unk_281588768;
  v54 = xmmword_281588778;
  v55 = xmmword_281588788;
  v34 = xmmword_281588788;
  v35 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(v56);
  memcpy(v7, v56, 0xC0uLL);
  v7[12] = v35;
  v7[13] = v34;
  v8 = v55;
  v7[16] = v54;
  v7[17] = v8;
  v9 = v53;
  v7[14] = v52;
  v7[15] = v9;
  v10 = v7 + v36[5];
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v11, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(v47);
  memcpy(v10, v47, 0xBFuLL);
  OUTLINED_FUNCTION_3_31();
  sub_26A5C6E04();
  v12 = v36[6];
  *(v7 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v13 = v7 + v36[7];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = v36[8];
  *(v7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v15 = v45;
  v16 = v46;
  __swift_project_boxed_opaque_existential_1(v44, v45);
  OUTLINED_FUNCTION_161();
  *(v7 + v36[9]) = v17(v15, v16);
  v18 = v42;
  v19 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  OUTLINED_FUNCTION_161();
  *(v7 + v36[10]) = v20(v18, v19);
  sub_26A4D7E54();
  if (v40)
  {
    v21 = OUTLINED_FUNCTION_0_31();
    v22(v21);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v14 = 0;
  }

  *(v7 + v36[11]) = v14;
  sub_26A4D7E54();
  if (v40)
  {
    v23 = OUTLINED_FUNCTION_0_31();
    v24(v23);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v14 = 0;
  }

  *(v7 + v36[12]) = v14;
  sub_26A4D7E54();
  if (v40)
  {
    v25 = OUTLINED_FUNCTION_0_31();
    v26(v25);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v14 = 0;
  }

  *(v7 + v36[13]) = v14;
  sub_26A4D7E54();
  if (v40)
  {
    v27 = OUTLINED_FUNCTION_0_31();
    v28(v27);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v14 = 0;
  }

  *(v7 + v36[14]) = v14;
  sub_26A4D7E54();
  if (v40)
  {
    v29 = OUTLINED_FUNCTION_0_31();
    v30(v29);
    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    sub_26A4D6FD8();
    v14 = 0;
  }

  *(v7 + v36[15]) = v14;
  sub_26A4D7E54();
  if (v40)
  {
    v31 = OUTLINED_FUNCTION_0_31();
    v33 = v32(v31);
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_35_2();
    __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_34_1();
    v33 = 0;
  }

  *(v7 + v36[16]) = v33;
  *(v7 + v36[17]) = 1;
  OUTLINED_FUNCTION_10_21();
  sub_26A5C6EAC();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_30_1();
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v44);
  OUTLINED_FUNCTION_27_0();
}

void sub_26A5C3DF0()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v74 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v83 = &v74 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF520, &qword_26A864808);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v81 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v80 = &v74 - v23;
  v79 = type metadata accessor for ButtonElementView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v78 = v25 - v26;
  MEMORY[0x28223BE20](v27);
  v77 = &v74 - v28;
  v87 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v89 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_41();
  v76 = (v32 - v31);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v84 = v16;
  v85 = v11;
  v86 = v7;
  v88 = v1;
  v91 = xmmword_281588758;
  v92 = unk_281588768;
  v93 = xmmword_281588778;
  v94 = xmmword_281588788;
  v95 = xmmword_281588758;
  v96 = unk_281588768;
  v97 = xmmword_281588778;
  v98 = xmmword_281588788;
  v74 = xmmword_281588788;
  v75 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(v99);
  memcpy(v3, v99, 0xC0uLL);
  v33 = v74;
  v3[12] = v75;
  v3[13] = v33;
  v34 = v96;
  v3[14] = v95;
  v3[15] = v34;
  v35 = v98;
  v3[16] = v97;
  v3[17] = v35;
  v36 = type metadata accessor for SummaryItemButtonView(0);
  v37 = v3 + *(v36 + 20);
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146(&qword_28157E670);
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v38, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(v90);
  memcpy(v37, v90, 0xBFuLL);
  OUTLINED_FUNCTION_3_31();
  sub_26A5C6E04();
  v39 = *(v36 + 24);
  v40 = v36;
  v41 = v3;
  *(v3 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v42 = v3 + v40[7];
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  v43 = v40[8];
  *(v3 + v43) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v44 = v76;
  sub_26A84C568();
  v45 = TextProperty.asAnyView()();
  v46 = *(v89 + 8);
  v89 += 8;
  v76 = v46;
  v46(v44, v87);
  *(v3 + v40[9]) = v45;
  v47 = v79;
  v48 = v77;
  sub_26A84C5B8();
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  v49 = &v48[*(v47 + 24)];
  *v49 = 0;
  *(v49 + 1) = 0;
  sub_26A5C6E04();
  sub_26A5C6DC0();
  v50 = sub_26A851248();
  sub_26A5C6E58();
  v51 = v40;
  *(v3 + v40[10]) = v50;
  swift_getKeyPath();
  v52 = v80;
  sub_26A5C294C(v80);

  sub_26A4D7E54();
  sub_26A5C6D0C();
  v53 = sub_26A851248();
  sub_26A4D6FD8();
  *(v3 + v40[11]) = v53;
  swift_getKeyPath();
  v54 = v88;
  sub_26A5C294C(v52);

  sub_26A4D7E54();
  v55 = v54;
  v56 = sub_26A851248();
  sub_26A4D6FD8();
  *(v41 + v40[12]) = v56;
  v57 = v83;
  sub_26A84C578();
  v58 = sub_26A84D098();
  OUTLINED_FUNCTION_40_4(v57);
  if (v59)
  {
    sub_26A4D6FD8();
    v60 = 0;
  }

  else
  {
    v60 = MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_16_10();
    (*(v61 + 8))(v57, v58);
  }

  v62 = v84;
  *(v41 + v51[13]) = v60;
  sub_26A84C588();
  OUTLINED_FUNCTION_40_4(v62);
  v63 = v86;
  if (v59)
  {
    sub_26A4D6FD8();
    v64 = 0;
  }

  else
  {
    v64 = MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_16_10();
    (*(v65 + 8))(v62, v58);
  }

  *(v41 + v51[14]) = v64;
  v66 = v85;
  sub_26A84C598();
  v67 = v87;
  if (__swift_getEnumTagSinglePayload(v66, 1, v87) == 1)
  {
    sub_26A4D6FD8();
    v68 = 0;
  }

  else
  {
    v68 = TextProperty.asAnyView()();
    v76(v66, v67);
  }

  *(v41 + v51[15]) = v68;
  sub_26A84C5E8();
  v69 = sub_26A84BD28();
  OUTLINED_FUNCTION_40_4(v63);
  if (v59)
  {
    sub_26A84C5F8();
    OUTLINED_FUNCTION_46();
    (*(v70 + 8))(v55);
    sub_26A4D6FD8();
    v71 = 0;
  }

  else
  {
    v71 = VisualProperty.asAnyView()();
    sub_26A84C5F8();
    OUTLINED_FUNCTION_46();
    (*(v72 + 8))(v55);
    OUTLINED_FUNCTION_16_10();
    (*(v73 + 8))(v63, v69);
  }

  *(v41 + v51[16]) = v71;
  *(v41 + v51[17]) = 1;
  OUTLINED_FUNCTION_27_0();
}

uint64_t SummaryItemButtonView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A5C2B7C();
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  sub_26A5C2D64();
  sub_26A5C2EB8(v6);
  v9 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  v17 = v1;
  sub_26A4C8F70();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26A68CCBC;
  *(v10 + 24) = 0;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF4C0, &unk_26A864710) + 36);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v13 = *(v12 + 40);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v12 + 44);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *v11 = sub_26A4D1F7C;
  *(v11 + 8) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF4C8, &qword_26A864748);
  *(a1 + *(result + 36)) = 41;
  return result;
}

uint64_t sub_26A5C4920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA078, &qword_26A855CE0);
  MEMORY[0x28223BE20](v38);
  v31 = (v30 - v3);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA068, &qword_26A864880);
  MEMORY[0x28223BE20](v35);
  v32 = (v30 - v4);
  v5 = sub_26A84F3A8();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF540, &qword_26A864888);
  MEMORY[0x28223BE20](v36);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF548, &qword_26A864890);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA048, &qword_26A855CC8);
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA058, &unk_26A855CD0);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  v15 = a1;
  v16 = sub_26A5C2D64();
  if (sub_26A61B05C(v16, &unk_287B13068))
  {
    *v14 = sub_26A84FBF8();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF560, &qword_26A8648A8);
    sub_26A5C508C(a1, &v14[*(v17 + 44)]);
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    sub_26A84FDF8();
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D6DC0();
    sub_26A4D7DCC();
    sub_26A84FDF8();
    sub_26A4D6FD8();
  }

  else
  {
    v30[1] = v12;
    v30[2] = v11;
    v30[3] = v9;
    sub_26A5C2EB8(v7);
    v18 = sub_26A84F388();
    (*(v33 + 8))(v7, v34);
    if (v18)
    {
      v19 = sub_26A84FC08();
      v20 = v15 + *(type metadata accessor for SummaryItemButtonView(0) + 20);
      v21 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28));
      v22 = v32;
      *v32 = v19;
      v22[1] = v21;
      *(v22 + 16) = 0;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF558, &qword_26A8648A0);
      sub_26A5C5EF0(v22 + *(v23 + 44));
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A4D7DCC();
      sub_26A4D7DCC();
      sub_26A84FDF8();
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A4D6DC0();
      sub_26A4D7DCC();
      sub_26A84FDF8();
      sub_26A4D6FD8();
    }

    else
    {
      if (qword_28157FCB0 != -1)
      {
        swift_once();
      }

      v24 = qword_2815889E0;
      v25 = v15 + *(type metadata accessor for SummaryItemButtonView(0) + 20);
      v26 = *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28));
      v27 = v31;
      *v31 = v24;
      v27[1] = v26;
      *(v27 + 16) = 0;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF550, &qword_26A864898);
      sub_26A5C5640(v27 + *(v28 + 44));
      sub_26A4D7E54();
      swift_storeEnumTagMultiPayload();
      sub_26A4D6DC0();
      sub_26A4D7DCC();
      sub_26A84FDF8();
    }
  }

  return sub_26A4D6FD8();
}

uint64_t sub_26A5C508C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF568, &qword_26A8648B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = *(a1 + *(type metadata accessor for SummaryItemButtonView(0) + 36));

  v12 = sub_26A8504A8();
  KeyPath = swift_getKeyPath();
  sub_26A5C5264(v10);
  v14 = *(v5 + 16);
  v14(v7, v10, v4);
  *a2 = v11;
  *(a2 + 1) = KeyPath;
  *(a2 + 2) = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF570, &qword_26A8648E8);
  v14(&a2[*(v15 + 48)], v7, v4);
  v16 = *(v5 + 8);

  v16(v10, v4);
  v16(v7, v4);
}

uint64_t sub_26A5C5264@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = sub_26A84B058();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v17 = type metadata accessor for RFButtonStyle(0);
  MEMORY[0x28223BE20](v17);
  v16 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1 + *(type metadata accessor for SummaryItemButtonView(0) + 20);
  v11 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60) + 28) + 40);
  v12 = sub_26A84FA78();
  v22 = 0;
  sub_26A5C612C(v1, v20);
  memcpy(v25, v20, sizeof(v25));
  memcpy(__dst, v20, sizeof(__dst));
  sub_26A4D7E54();
  sub_26A4D6FD8();
  memcpy(&v21[7], v25, 0x62uLL);
  v20[0] = v12;
  v20[1] = v11;
  LOBYTE(v20[2]) = v22;
  memcpy(&v20[2] + 1, v21, 0x69uLL);
  v13 = sub_26A5C2D64();
  VRXIdiom.idiom.getter(v13, v8);
  (*(v3 + 104))(v5, *MEMORY[0x277D629F0], v2);
  sub_26A5C6DC0();
  sub_26A851A48();
  sub_26A851A48();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  if (v19[0] == v23[0])
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    static PrimitiveButtonStyle<>.rfButton(margin:)(v23, v16);
  }

  else
  {
    static PrimitiveButtonStyle<>.rfButtonCircularIconOnly.getter(v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF580, &qword_26A8648F8);
  sub_26A4D7DCC();
  sub_26A5C6DC0();
  sub_26A850978();
  sub_26A5C6E58();
  memcpy(v19, v20, 0x7AuLL);
  return sub_26A4D6FD8();
}

uint64_t sub_26A5C5640@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF568, &qword_26A8648B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for SummaryItemStandardLayout(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADA0, &qword_26A8570B0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_26A5C598C(v10);
  sub_26A851458();
  sub_26A84F628();
  sub_26A5C6EAC();
  memcpy(&v15[*(v12 + 44)], __src, 0x70uLL);
  v24 = v18;
  sub_26A4D7EA8();
  sub_26A5C5264(v7);
  sub_26A4D7E54();
  v19 = *(v2 + 16);
  v19(v4, v7, v1);
  v20 = v25;
  sub_26A4D7E54();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF598, &qword_26A864938);
  v19((v20 + *(v21 + 48)), v4, v1);
  v22 = *(v2 + 8);
  v22(v7, v1);
  sub_26A4D6FD8();
  v22(v4, v1);
  return sub_26A4D6FD8();
}

uint64_t sub_26A5C598C@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SummaryItemButtonView(0);
  v4 = v3[9];
  if (*(v1 + v3[13]))
  {
    v5 = &protocol witness table for AnyView;
    v6 = MEMORY[0x277CE11C8];
    v7 = *(v1 + v3[13]);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v56 = 0;
    v57 = 0;
  }

  v8 = *(v1 + v4);
  v55 = v7;
  v58 = v6;
  v59 = v5;
  if (*(v1 + v3[14]))
  {
    v9 = &protocol witness table for AnyView;
    v10 = MEMORY[0x277CE11C8];
    v11 = *(v1 + v3[14]);
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v51 = 0;
    v52 = 0;
  }

  v50 = v11;
  v53 = v10;
  v54 = v9;
  if (*(v1 + v3[15]))
  {
    v12 = &protocol witness table for AnyView;
    v13 = MEMORY[0x277CE11C8];
    v14 = *(v1 + v3[15]);
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v46 = 0;
    v47 = 0;
  }

  v45 = v14;
  v48 = v13;
  v49 = v12;
  v15 = *(v1 + v3[16]);
  if (v15)
  {
    v16 = &protocol witness table for AnyView;
    v17 = MEMORY[0x277CE11C8];
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v41 = 0;
    v42 = 0;
  }

  v40 = v15;
  v43 = v17;
  v44 = v16;
  v18 = qword_28157E670;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890, &unk_26A856670);
  __swift_project_value_buffer(v19, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0, &qword_26A854C60);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(a1, __src, 0xBFuLL);
  sub_26A5C6E04();
  v20 = type metadata accessor for SummaryItemStandardLayout(0);
  v21 = v20[5];
  *&a1[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v22 = &a1[v20[6]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *&a1[v20[7]] = v8;
  sub_26A4D7E54();
  v23 = v38;
  if (v38)
  {
    v24 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v25 = *(v24 + 8);

    v26 = v25(v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {

    sub_26A4D6FD8();
    v26 = 0;
  }

  *&a1[v20[8]] = v26;
  sub_26A4D7E54();
  v27 = v38;
  if (v38)
  {
    v28 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v29 = (*(v28 + 8))(v27, v28);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_26A4D6FD8();
    v29 = 0;
  }

  *&a1[v20[9]] = v29;
  sub_26A4D7E54();
  v30 = v38;
  if (v38)
  {
    v31 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v32 = (*(v31 + 8))(v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_26A4D6FD8();
    v32 = 0;
  }

  *&a1[v20[10]] = v32;
  sub_26A4D7E54();
  v33 = v38;
  if (v38)
  {
    v34 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v35 = (*(v34 + 8))(v33, v34);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    result = __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    result = sub_26A4D6FD8();
    v35 = 0;
  }

  *&a1[v20[11]] = v35;
  return result;
}

uint64_t sub_26A5C5EF0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF568, &qword_26A8648B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for SummaryItemStandardLayout(0);
  MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  sub_26A5C598C(&v16 - v11);
  sub_26A5C5264(v8);
  sub_26A5C6E04();
  v12 = *(v3 + 16);
  v12(v5, v8, v2);
  sub_26A5C6E04();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF590, &unk_26A864928);
  v12((a1 + *(v13 + 48)), v5, v2);
  v14 = *(v3 + 8);
  v14(v8, v2);
  sub_26A5C6E58();
  v14(v5, v2);
  return sub_26A5C6E58();
}

uint64_t sub_26A5C612C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemButtonView(0);
  v5 = *(a1 + v4[10]);
  KeyPath = swift_getKeyPath();
  v7 = *(a1 + v4[11]);
  v8 = swift_getKeyPath();
  v9 = *(a1 + v4[12]);
  v17 = 256;
  v15[0] = v5;
  v15[1] = KeyPath;
  v15[2] = 1;
  v16 = 0;
  v18[0] = &v16;
  v18[1] = v15;
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = 2;
  v13[0] = v9;
  v13[1] = swift_getKeyPath();
  v13[2] = 3;
  v18[2] = v14;
  v18[3] = v13;
  v11 = 0;
  v12 = 256;
  v18[4] = &v11;
  sub_26A594538(v18, a2);
}

void SummaryItemButton.view.getter()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v49 = v3;
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v48 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = sub_26A84C5F8();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = type metadata accessor for SummaryItemButtonView(0);
  v20 = OUTLINED_FUNCTION_79(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA9B8, &unk_26A856A90);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &v47 - v26;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA9C0, &unk_26A864750);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  v52 = v29 - v30;
  v32 = MEMORY[0x28223BE20](v31);
  (*(v14 + 16))(v18, v1, v12, v32);
  v51 = v23;
  sub_26A5C3DF0();
  v54 = v1;
  v33 = v50;
  sub_26A84C5A8();
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_40_4(v10);
  if (v34)
  {
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v36 = &v27[*(v24 + 36)];
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v38 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v36 + v37, 1, 1, v38);
    *v36 = KeyPath;
  }

  else
  {
    v39 = v48;
    v40 = *(v49 + 32);
    v40(v48, v10, v33);
    v41 = swift_getKeyPath();
    v42 = &v27[*(v24 + 36)];
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v40(v42 + v43, v39, v33);
    v44 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v42 + v43, 0, 1, v44);
    *v42 = v41;
  }

  sub_26A5C6EAC();
  v45 = sub_26A84C538();
  sub_26A4DD25C(v45, v46);

  sub_26A4D6FD8();
  sub_26A84C548();

  sub_26A4D7E54();
  sub_26A5C66F4();
  sub_26A851248();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A5C66F4()
{
  result = qword_2803AF4D0;
  if (!qword_2803AF4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA9C0, &unk_26A864750);
    sub_26A5C67AC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF4D0);
  }

  return result;
}

unint64_t sub_26A5C67AC()
{
  result = qword_2803AF4D8;
  if (!qword_2803AF4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA9B0, &unk_26A864760);
    sub_26A5C6838();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF4D8);
  }

  return result;
}

unint64_t sub_26A5C6838()
{
  result = qword_2803AF4E0;
  if (!qword_2803AF4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA9B8, &unk_26A856A90);
    sub_26A5C6DC0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF4E0);
  }

  return result;
}

unint64_t sub_26A5C693C(uint64_t a1)
{
  result = sub_26A5C6DC0();
  *(a1 + 8) = result;
  return result;
}

void sub_26A5C69BC(uint64_t a1)
{
  sub_26A4DB840(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A4E20C4(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
    if (v2 <= 0x3F)
    {
      sub_26A4D27F4(319);
      if (v3 <= 0x3F)
      {
        sub_26A4E20C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26A4E20C4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_26A4DB840(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
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

unint64_t sub_26A5C6B9C()
{
  result = qword_2803AF508;
  if (!qword_2803AF508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF4C8, &qword_26A864748);
    sub_26A5C6C28();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF508);
  }

  return result;
}

unint64_t sub_26A5C6C28()
{
  result = qword_2803AF510;
  if (!qword_2803AF510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF4C0, &unk_26A864710);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF510);
  }

  return result;
}

unint64_t sub_26A5C6D0C()
{
  result = qword_2803AF530;
  if (!qword_2803AF530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF520, &qword_26A864808);
    sub_26A5C6DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF530);
  }

  return result;
}

unint64_t sub_26A5C6DC0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A5C6E04()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A5C6E58()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A5C6EAC()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 104);
}

uint64_t sub_26A5C6FD8()
{
  v1 = [v0 referencedCommands];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  sub_26A4EC5B0(0, &qword_2803AB078, 0x277D4C2A8);
  v3 = sub_26A851A98();

  return v3;
}

uint64_t sub_26A5C709C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_26A8517B8();

  return v6;
}

uint64_t sub_26A5C7100@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF5D0, &unk_26A864A10);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_26A5C7158@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26A852068();
  OUTLINED_FUNCTION_2_34();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  OUTLINED_FUNCTION_2_34();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v19 = v18 - v17;
  v24[1] = a1;
  sub_26A4EC5B0(0, qword_2815804E0, 0x277D4C238);
  v20 = a1;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a2);
    (*(v15 + 32))(v19, v13, a2);
    sub_26A5C7648(a2, a3, a4);
    (*(v15 + 8))(v19, a2);
    v21 = 0;
  }

  else
  {
    v21 = 1;
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a2);
    (*(v10 + 8))(v13, v8);
  }

  v22 = type metadata accessor for AnyComponentViewConverter(0);
  return __swift_storeEnumTagSinglePayload(a4, v21, 1, v22);
}

uint64_t ComponentViewBuilderContext.__allocating_init(allCardSections:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ComponentViewBuilderContext.init(allCardSections:)(a1);
  return v2;
}

void *ComponentViewBuilderContext.init(allCardSections:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for TableManager();
  swift_allocObject();

  *(v1 + 16) = sub_26A558C34(v4, v5);
  v6 = sub_26A73670C();
  if (!v6)
  {

    v10 = MEMORY[0x277D84F90];
LABEL_12:
    *(v2 + 24) = v10;
    return v2;
  }

  v7 = v6;
  v20 = MEMORY[0x277D84F90];
  result = sub_26A7DD1DC(0, v6 & ~(v6 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v19 = v1;
    v9 = 0;
    v10 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D6644E0](v9, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = sub_26A5C7ECC(v11);
      v15 = v14;

      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_26A7DD1DC((v16 > 1), v17 + 1, 1);
      }

      ++v9;
      *(v20 + 16) = v17 + 1;
      v18 = v20 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v7 != v9);

    v2 = v19;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t ComponentViewBuilderContext.deinit()
{

  return v0;
}

uint64_t ComponentViewBuilderContext.__deallocating_deinit()
{
  ComponentViewBuilderContext.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26A5C757C()
{
  v0 = sub_26A84ACC8();
  OUTLINED_FUNCTION_2_34();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  sub_26A84ACB8();
  v7 = sub_26A84AC78();
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_26A5C7648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9, v4, a1);
  return sub_26A5C7710(v11, a1, a2, x8_0);
}

uint64_t sub_26A5C7710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_26A84ACC8();
  OUTLINED_FUNCTION_2_34();
  v59 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_2_34();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v20, a1, a2, v19);
  v21 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  (*(v15 + 32))(v22 + v21, v20, a2);
  *a4 = sub_26A5C8268;
  *(a4 + 8) = v22;
  v23 = OUTLINED_FUNCTION_3_32();
  v25 = v24(v23);
  if (v26)
  {
    v27 = v25;
    v28 = v26;
  }

  else
  {
    sub_26A84ACB8();
    v27 = sub_26A84AC78();
    v28 = v29;
    (*(v59 + 8))(v13, v8);
  }

  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  v30 = OUTLINED_FUNCTION_3_32();
  *(a4 + 32) = v31(v30);
  v32 = OUTLINED_FUNCTION_3_32();
  *(a4 + 36) = v33(v32) & 1;
  v34 = OUTLINED_FUNCTION_3_32();
  *(a4 + 37) = v35(v34) & 1;
  v36 = OUTLINED_FUNCTION_3_32();
  *(a4 + 38) = v37(v36) & 1;
  v38 = OUTLINED_FUNCTION_3_32();
  *(a4 + 48) = v39(v38);
  *(a4 + 56) = v40;
  v41 = OUTLINED_FUNCTION_3_32();
  *(a4 + 64) = v42(v41);
  v43 = OUTLINED_FUNCTION_3_32();
  *(a4 + 68) = v44(v43) & 1;
  (*(*(a3 + 8) + 8))(&v60, a2);
  *(a4 + 69) = v60;
  v45 = OUTLINED_FUNCTION_3_32();
  *(a4 + 39) = v46(v45) & 1;
  v47 = OUTLINED_FUNCTION_3_32();
  *(a4 + 40) = v48(v47) & 1;
  v49 = *(a3 + 120);
  v50 = type metadata accessor for AnyComponentViewConverter(0);
  v51 = OUTLINED_FUNCTION_3_32();
  v49(v51);
  v52 = OUTLINED_FUNCTION_3_32();
  v54 = v53(v52);
  v56 = v55;
  result = (*(v15 + 8))(a1, a2);
  v58 = (a4 + *(v50 + 68));
  *v58 = v54;
  v58[1] = v56;
  return result;
}

uint64_t sub_26A5C7AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v19 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF5D8, &qword_26A87F450);
  v12 = sub_26A84F4F8();
  v21 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v19 - v14;
  (*(a4 + 152))(a1, a3, a4, v13);
  if (!v4)
  {
    v19[1] = swift_getKeyPath();
    v24 = (*(a4 + 40))(a3, a4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_26A8509A8();

    (*(v20 + 8))(v11, AssociatedTypeWitness);
    v17 = sub_26A5C82B8();
    v22 = AssociatedConformanceWitness;
    v23 = v17;
    swift_getWitnessTable();
    a2 = View.eraseToAnyView()(v12);
    (*(v21 + 8))(v15, v12);
  }

  return a2;
}

uint64_t SFCardSection._rf_toComponentView()@<X0>(uint64_t a1@<X8>)
{
  sub_26A4EC5B0(0, qword_2815804E0, 0x277D4C238);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF5A0, &qword_26A864940);
  if (swift_dynamicCast())
  {
    v4 = *(&v9 + 1);
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    v6 = *(v5 + 152);
    *(a1 + 24) = swift_getAssociatedTypeWitness();
    *(a1 + 32) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a1);
    v6(0, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    result = sub_26A5C7F30(&v8);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26A5C7ECC(void *a1)
{
  v1 = [a1 cardSectionId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A8517B8();

  return v3;
}

uint64_t sub_26A5C7F30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF5A8, &qword_26A864948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D665630);
  }

  return result;
}

uint64_t type metadata accessor for AnyComponentViewConverter(uint64_t a1)
{
  result = qword_2803AF5B8;
  if (!qword_2803AF5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26A5C80C0(uint64_t a1)
{
  v4 = sub_26A5046B4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SFSeparatorStyle(319, v1, v2, v3);
    v4 = v5;
    if (v6 <= 0x3F)
    {
      sub_26A538008(319, &qword_2803AC920, MEMORY[0x277D837D0]);
      v4 = v10;
      if (v7 <= 0x3F)
      {
        type metadata accessor for SFRowStyle(319, v7, v8, v9);
        if (v12 > 0x3F)
        {
          return v11;
        }

        sub_26A538008(319, &qword_2803ADC00, &type metadata for ComponentType);
        if (v13 > 0x3F)
        {
          return v11;
        }

        sub_26A5C8204(319);
        if (v14 > 0x3F)
        {
          return v11;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v4;
}

void sub_26A5C8204(uint64_t a1)
{
  if (!qword_2803AF5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF5D0, &unk_26A864A10);
    v1 = sub_26A852068();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AF5C8);
    }
  }
}

unint64_t sub_26A5C82B8()
{
  result = qword_28157FB58;
  if (!qword_28157FB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF5D8, &qword_26A87F450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FB58);
  }

  return result;
}

uint64_t View.setButtonMinHeight(isCompact:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  if (qword_2803A8AE8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, qword_2803D1B00, sizeof(__dst));
  memcpy(&__src[46], qword_2803D1B00, 0xD0uLL);
  sub_26A5C88CC(__dst, v14);
  sub_26A6AEE74(__src);
  memcpy(v12, &__src[50], sizeof(v12));
  memcpy(&__src[24], &__src[50], 0xB0uLL);
  v13[592] = 0;
  v13[584] = 0;
  memcpy(&v13[7], __src, 0x240uLL);
  v9[0] = KeyPath;
  LOBYTE(v9[1]) = 0;
  v9[2] = v7;
  LOBYTE(v9[3]) = 0;
  memcpy(&v9[3] + 1, v13, 0x247uLL);
  LOBYTE(v9[76]) = a1 & 1;
  sub_26A54DFFC(v12, v14);
  MEMORY[0x26D662ED0](v9, a2, &type metadata for ButtonMinHeight, a3);
  memcpy(v14, v9, 0x261uLL);
  return sub_26A5C893C(v14);
}

uint64_t sub_26A5C84EC()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v14 = *(v1 + 8);
  v6 = *v1;
  v13 = *v1;
  if (v14 != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v7, &dword_26A48D000, v8, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v9, v10, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4E2544(&v13, &qword_2803ABFA0, &unk_26A85F090);
    (*(v4 + 8))(v2, v0);
    LOBYTE(v6) = v12;
  }

  return v6 & 1;
}

double sub_26A5C861C()
{
  sub_26A84F988();
  OUTLINED_FUNCTION_5_30();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_2();
  v14 = *(v1 + 24);
  v6 = *(v1 + 16);
  v13 = v6;
  if (v14 == 1)
  {
    return v6;
  }

  sub_26A851EA8();
  v8 = sub_26A8501F8();
  OUTLINED_FUNCTION_55(v8, &dword_26A48D000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v10, v11, MEMORY[0x277D84F90]);

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A4E2544(&v13, &qword_2803AF5F8, &qword_26A864F38);
  (*(v4 + 8))(v2, v0);
  return v12;
}

void *sub_26A5C8750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A5C84EC();
  sub_26A5C861C();
  sub_26A851448();
  sub_26A84F628();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF5E8, &qword_26A864F28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF5F0, &qword_26A864F30);
  return memcpy((a2 + *(v5 + 36)), __src, 0x70uLL);
}

uint64_t sub_26A5C88CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACEF8, &unk_26A85CC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A5C896C()
{
  result = qword_2803AF5E0;
  if (!qword_2803AF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF5E0);
  }

  return result;
}

uint64_t sub_26A5C89C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 609))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 312);
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

uint64_t sub_26A5C8A08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
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
    *(result + 584) = 0u;
    *(result + 608) = 0;
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
      *(result + 609) = 1;
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
      *(result + 312) = (a2 - 1);
      return result;
    }

    *(result + 609) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A5C8B18()
{
  result = qword_2803AF600;
  if (!qword_2803AF600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF5F0, &qword_26A864F30);
    sub_26A5C8BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF600);
  }

  return result;
}

unint64_t sub_26A5C8BA4()
{
  result = qword_2803AF608;
  if (!qword_2803AF608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF5E8, &qword_26A864F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF608);
  }

  return result;
}

uint64_t type metadata accessor for MaterialVibrancyListenerModifier(uint64_t a1)
{
  result = qword_2803AF618;
  if (!qword_2803AF618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A5C8C7C(uint64_t a1)
{
  sub_26A5C8D00(319);
  if (v1 <= 0x3F)
  {
    sub_26A5C8D64(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A5C8D00(uint64_t a1)
{
  if (!qword_2803AF628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AD030, &qword_26A85D008);
    v1 = sub_26A84EEA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AF628);
    }
  }
}

void sub_26A5C8D64(uint64_t a1)
{
  if (!qword_2803AF630)
  {
    type metadata accessor for Context(255);
    sub_26A5928CC();
    v1 = sub_26A84F288();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AF630);
    }
  }
}

uint64_t sub_26A5C8DE4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF638, &qword_26A864FD0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  KeyPath = swift_getKeyPath();
  type metadata accessor for MaterialVibrancyListenerModifier(0);
  v9 = sub_26A61C54C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF640, &qword_26A865000);
  (*(*(v10 - 8) + 16))(v7, a1, v10);
  v11 = &v7[*(v5 + 44)];
  *v11 = KeyPath;
  v11[8] = v9 & 1;
  sub_26A4D7E10();
  v13 = sub_26A63CD18(v12);
  v14 = 0x6867696C746F7053;
  switch(v13)
  {
    case 3:
      goto LABEL_3;
    case 4:
      break;
    default:
      sub_26A852598();
LABEL_3:

      break;
  }

  MEMORY[0x28223BE20](v14);
  *(&v16 - 2) = v2;
  sub_26A606F68();
  return sub_26A4E2544(v7, &qword_2803AF638, &qword_26A864FD0);
}

uint64_t sub_26A5C9028(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MaterialVibrancyListenerModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD030, &qword_26A85D008);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-v7];
  sub_26A720278(&v14[-v7]);
  v9 = sub_26A8513F8();
  v10 = __swift_getEnumTagSinglePayload(v8, 1, v9) != 1;
  sub_26A4E2544(v8, &qword_2803AD030, &qword_26A85D008);
  v14[15] = v10;
  sub_26A5C9278(a2, &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_26A5C92DC(&v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF638, &qword_26A864FD0);
  sub_26A5C93C0();
  sub_26A850C78();
}

void sub_26A5C921C(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    type metadata accessor for MaterialVibrancyListenerModifier(0);
    if ((sub_26A61C54C() & 1) == 0)
    {
      sub_26A61C560(1);
    }
  }
}

uint64_t sub_26A5C9278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MaterialVibrancyListenerModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5C92DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MaterialVibrancyListenerModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26A5C9340(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for MaterialVibrancyListenerModifier(0);

  sub_26A5C921C(a1, a2);
}

unint64_t sub_26A5C93C0()
{
  result = qword_2803AF648;
  if (!qword_2803AF648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF638, &qword_26A864FD0);
    sub_26A4DBCC8(&qword_2803AF650, &qword_2803AF640, &qword_26A865000, MEMORY[0x277CE04B0]);
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF648);
  }

  return result;
}

unint64_t sub_26A5C94A4()
{
  result = qword_2803AF658;
  if (!qword_2803AF658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF660, qword_26A865008);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF638, &qword_26A864FD0);
    sub_26A5C93C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF658);
  }

  return result;
}

BOOL sub_26A5C95AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A565064(v4);
  return v5 != 0;
}

int *sub_26A5C9684@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SummaryItemStandardView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF678, &qword_26A865078);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v31 - v9;
  v11 = [v1 text_1];
  if (v11)
  {
    v12 = v11;
    v39 = &type metadata for PartialText;
    v40 = &protocol witness table for PartialText;
    v38 = swift_allocObject();
    RFTextProperty.asPartialText()(v38 + 16);
    v13 = sub_26A54AB40(v1, &selRef_text_2);
    if (v13)
    {
      sub_26A51B744(v13, v37);
      sub_26A54AAEC();
      v13 = sub_26A851248();
      v14 = &protocol witness table for AnyView;
      v15 = MEMORY[0x277CE11C8];
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v37[10] = 0;
      v37[11] = 0;
    }

    v37[9] = v13;
    v37[12] = v15;
    v37[13] = v14;
    v18 = sub_26A54AB40(v1, &selRef_text_3);
    if (v18)
    {
      sub_26A51B744(v18, v37);
      sub_26A54AAEC();
      v18 = sub_26A851248();
      v19 = &protocol witness table for AnyView;
      v20 = MEMORY[0x277CE11C8];
    }

    else
    {
      v20 = 0;
      v19 = 0;
      v37[1] = 0;
      v37[2] = 0;
    }

    v37[0] = v18;
    v37[3] = v20;
    v37[4] = v19;
    v21 = [v1 text_4];
    if (v21)
    {
      v22 = v21;
      *(&v35 + 1) = &type metadata for PartialText;
      v36 = &protocol witness table for PartialText;
      *&v34 = swift_allocObject();
      RFTextProperty.asPartialText()(v34 + 16);
    }

    else
    {
      v36 = 0;
      v35 = 0u;
      v34 = 0u;
    }

    v23 = [v2 thumbnail];
    if (v23)
    {
      v24 = v23;
      *(&v32 + 1) = sub_26A84BD28();
      v33 = &protocol witness table for VisualProperty;
      __swift_allocate_boxed_opaque_existential_1(&v31);
      RFVisualProperty.asVisualProperty()();
    }

    else
    {
      v33 = 0;
      v32 = 0u;
      v31 = 0u;
    }

    SummaryItemStandardView.init(text1:text2:text3:text4:thumbnail:)();
    KeyPath = swift_getKeyPath();
    v26 = [v2 suppress_text_2_if_text_1_exceeds_a_single_line];
    sub_26A5C9CDC(v6, v10);
    v27 = &v10[*(v7 + 36)];
    *v27 = KeyPath;
    v27[8] = v26;
    v28 = swift_getKeyPath();
    if (qword_2803A8BF0 != -1)
    {
      swift_once();
    }

    v29 = byte_2803B0440;

    sub_26A5C9D40(v10, a1);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF670, &qword_26A865070);
    v30 = a1 + result[9];
    *v30 = v28;
    *(v30 + 8) = v29;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v16 = v1;
    *(v16 + 8) = &unk_287B13788;
    *(v16 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A5C9AE8()
{
  result = qword_2803AF668;
  if (!qword_2803AF668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF670, &qword_26A865070);
    sub_26A5C9B8C();
    sub_26A5C9C88(&qword_2803AF680, &qword_2803AF688, &qword_26A87B530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF668);
  }

  return result;
}

unint64_t sub_26A5C9B8C()
{
  result = qword_28157FE60;
  if (!qword_28157FE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF678, &qword_26A865078);
    sub_26A5C9C30();
    sub_26A5C9C88(&qword_28157FB50, &unk_2803B31B0, &unk_26A858ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE60);
  }

  return result;
}

unint64_t sub_26A5C9C30()
{
  result = qword_28157E2C0;
  if (!qword_28157E2C0)
  {
    type metadata accessor for SummaryItemStandardView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E2C0);
  }

  return result;
}

uint64_t sub_26A5C9C88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26A5C9CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemStandardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5C9D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF678, &qword_26A865078);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5C9DB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26A5C9DF0(uint64_t result, int a2, int a3)
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

uint64_t sub_26A5C9E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_21_10();
  if (sub_26A851918())
  {
  }

  else
  {
    v39[0] = a1;
    v39[1] = a2;

    v16 = OUTLINED_FUNCTION_21_10();
    MEMORY[0x26D663B00](v16);
  }

  swift_bridgeObjectRetain_n();

  sub_26A851E88();
  LOBYTE(v34) = 2;
  OUTLINED_FUNCTION_1_36();
  sub_26A7AC6F8(v17, v18, v19, v20, v21, 40, v22, 38, v34, a3);

  sub_26A5CA474(&v37, a1, a2, a8, a9);
  if (v38)
  {
    sub_26A4C2314(&v37, v39);
    v23 = v40;
    v24 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v25 = (*(v24 + 16))(a3, a4, a5, a6, a7, v23, v24);

    sub_26A851E78();
    LOBYTE(v35) = 2;
    OUTLINED_FUNCTION_1_36();
    sub_26A7AC9A4(v27, v28, v29, v30, v31, 62, v32, 38, v35, a3);

    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    sub_26A4E2544(&v37, &qword_2803ABBE8, &unk_26A859790);

    sub_26A851E98();
    OUTLINED_FUNCTION_1_36();
    j__OUTLINED_FUNCTION_174_0(v26);

    return 0;
  }

  return v25;
}

void sub_26A5CA0C0()
{
  OUTLINED_FUNCTION_28_0();
  v39 = v0;
  v41 = v1;
  v35 = v2;
  v37 = v3;
  v33 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_26A84EAA8();
  OUTLINED_FUNCTION_15();
  v43 = v12;
  v45 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v15 = v14 - v13;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_0_32(&qword_2815801E8);
  }

  qword_2815801F0;
  sub_26A84EA98();
  sub_26A851F88();
  sub_26A84EA88();
  if (sub_26A851918())
  {
  }

  else
  {
    v49 = v8;
    *&v50 = v6;

    MEMORY[0x26D663B00](0x656C646E75622ELL, 0xE700000000000000);
  }

  swift_bridgeObjectRetain_n();
  sub_26A851E88();
  OUTLINED_FUNCTION_12_16();
  LOBYTE(v33) = 2;
  OUTLINED_FUNCTION_1_36();
  sub_26A7B3630(v16, v17, v18, v19, v20, 85, v21, 41, v33, v35, v37, v39, v41, v43, v45, v47, v49, v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53, v54, v55, v56, v57, v58);
  OUTLINED_FUNCTION_26_6();
  v22 = OUTLINED_FUNCTION_18_9();
  sub_26A5CA864(v22);
  if (v51)
  {
    sub_26A4C2314(&v49, &v53);
    v23 = v56;
    v24 = v57;
    __swift_project_boxed_opaque_existential_1(&v53, v56);
    sub_26A5E5A78(&v50, v34, v36, v38, v40, v23, v24);

    sub_26A851E78();
    OUTLINED_FUNCTION_12_16();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_1_36();
    sub_26A7B3884(v26, v27, v28, v29, v30, 93, v31, 41, v34, v36, v38, v40, v42, v44, v46, v48, v49, v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53, v54, v55, v56, v57, v58);
    OUTLINED_FUNCTION_26_6();
    v32 = v51;
    *v10 = v50;
    *(v10 + 16) = v32;
    *(v10 + 32) = v52;
    __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  else
  {
    sub_26A4E2544(&v49, &qword_2803AD270, &qword_26A85D9E0);

    sub_26A851E98();
    OUTLINED_FUNCTION_12_16();
    OUTLINED_FUNCTION_1_36();
    j__OUTLINED_FUNCTION_174_0(v25);
    OUTLINED_FUNCTION_26_6();
    *(v10 + 32) = 0;
    *v10 = 0u;
    *(v10 + 16) = 0u;
  }

  sub_26A851F78();
  sub_26A84EA88();
  (*(v44 + 8))(v15, v46);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A5CAC88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_26A851BE8();
  v7 = sub_26A851C18();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_26A601D48(0, 0, v6, &unk_26A865120, v8);
}

uint64_t sub_26A5CAD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_26A84EAA8();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26A5CAE3C);
}

uint64_t sub_26A5CAE3C(__n128 a1)
{
  sub_26A851E88();
  OUTLINED_FUNCTION_6_30();
  OUTLINED_FUNCTION_1_36();
  sub_26A7B8914(v2, v3, v4, v5, v6, 114, v7, 16, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v1, v36, v37);
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_0_32(&qword_2815801E8);
  }

  qword_2815801F0;
  sub_26A84EA98();
  sub_26A851F88();
  sub_26A84EA88();
  v8 = OUTLINED_FUNCTION_18_9();
  v10 = sub_26A5CB070(v8, v9);
  v11 = v10[2];
  if (v11)
  {
    v12 = v10 + 5;
    do
    {
      v14 = v1[2];
      v13 = v1[3];
      v15 = *(v12 - 1);
      v16 = *v12;

      v18 = MEMORY[0x26D664D50](v17);
      v19 = sub_26A5CB1E4(v15, v16, v14, v13);

      objc_autoreleasePoolPop(v18);
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  v21 = v1[5];
  v20 = v1[6];
  v22 = v1[4];
  sub_26A851F78();
  sub_26A84EA88();
  (*(v21 + 8))(v20, v22);

  v23 = v1[1];

  return v23();
}

id sub_26A5CB070(uint64_t a1, uint64_t a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() defaultManager];
  v5 = MEMORY[0x26D664A10]();
  sub_26A8517B8();
  v7 = v6;

  v14[1] = v7;

  MEMORY[0x26D663B00](a1, a2);

  v8 = sub_26A851788();

  v14[0] = 0;
  v9 = [v4 contentsOfDirectoryAtPath:v8 error:v14];

  v10 = v14[0];
  if (v9)
  {
    v4 = sub_26A851A98();
    v11 = v10;
  }

  else
  {
    v12 = v14[0];
    sub_26A84AAE8();

    swift_willThrow();
  }

  return v4;
}

void sub_26A5CB504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090, &qword_26A85A690);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &a9 - v31;
  v33 = sub_26A851C18();
  OUTLINED_FUNCTION_15();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_41();
  v39 = v38 - v37;
  sub_26A851BF8();
  (*(v35 + 16))(v32, v39, v33);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v29;
  v40[5] = v27;
  v40[6] = v25;
  v40[7] = v23;

  sub_26A601D48(0, 0, v32, &unk_26A865110, v40);

  (*(v35 + 8))(v39, v33);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A5CB6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_26A84EAA8();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](&sub_26A5CB76C);
}

uint64_t sub_26A5CB974(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF6A0, &qword_26A865100);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v12 - v5;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v12[2] = a1;
    v12[3] = a2;
    v12[0] = 0x5A2D417A2D615E5BLL;
    v12[1] = 0xEF5D2E5F2D392D30;
    v8 = sub_26A84AD18();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
    sub_26A53ACC8();
    sub_26A8520D8();
    v10 = v9;
    sub_26A4E2544(v6, &qword_2803AF6A0, &qword_26A865100);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A5CBAF0()
{
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_9_25(v5);

  return sub_26A5CB6A8(v6, v7, v8, v9, v2, v4, v3);
}

uint64_t sub_26A5CBBB0()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_9_25(v3);

  return sub_26A5CAD7C(v4, v5, v6, v7, v2);
}

uint64_t OUTLINED_FUNCTION_0_32(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_5_32()
{
  v1 = *(v0 - 200);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_21@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  *(v2 - 216) = a1;
  *(v2 - 200) = a2;

  return sub_26A84EAA8();
}

uint64_t OUTLINED_FUNCTION_14_14(uint64_t a1, uint64_t a2)
{

  return sub_26A84EA88();
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1)
{

  return sub_26A84EA98();
}

uint64_t OUTLINED_FUNCTION_24_10()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25_11()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_26_6()
{

  return result;
}

uint64_t sub_26A5CBE64()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();
}

uint64_t sub_26A5CBEDC(uint64_t a1)
{
  v2 = type metadata accessor for TableRowWatchState.Layout(0);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_41();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A5CF85C();

  sub_26A84EC28();
  return sub_26A5CF758(a1, type metadata accessor for TableRowWatchState.Layout);
}

uint64_t sub_26A5CBFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF7D8, &qword_26A8655B8);
  OUTLINED_FUNCTION_15();
  v8 = v7;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  type metadata accessor for TableRowWatchState.Layout(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_27();
  MEMORY[0x28223BE20](v13);
  v15 = (&v26 - v14);
  v16 = OBJC_IVAR____TtC9SnippetUI18TableRowWatchState__layout;
  OUTLINED_FUNCTION_1_30();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_3_33();
  sub_26A5CF85C();
  sub_26A84EBD8();
  sub_26A5CF758(v15, v4);
  (*(v8 + 32))(v3 + v16, v11, v6);
  *(v3 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_gridWidth) = 0;
  *(v3 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___rowCells) = 0;
  v17 = v3 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___spacerIndex;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v3 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___hasSpacer) = 2;
  v18 = OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_row;
  v19 = sub_26A84E4B8();
  v20 = *(v19 - 8);
  v21 = v3 + v18;
  v22 = v26;
  (*(v20 + 16))(v21, v26, v19);
  sub_26A4D7E54();
  *(v3 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_columns) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF750, &qword_26A865320);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26A8570D0;
  v24 = sub_26A5CC27C();
  *(v23 + 32) = 0;
  *(v23 + 40) = v24;
  *v15 = v23;
  OUTLINED_FUNCTION_1_30();
  swift_storeEnumTagMultiPayload();
  sub_26A5CBEDC(v15);
  sub_26A4DBD10(a2, &qword_2803AF758, &qword_26A8762B0);
  (*(v20 + 8))(v22, v19);
  return v3;
}

uint64_t sub_26A5CC27C()
{
  v1 = OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___rowCells;
  if (*(v0 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___rowCells))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___rowCells);
  }

  else
  {
    sub_26A5CDB30(v0);
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

void sub_26A5CC2E4(int64_t a1, double a2)
{
  v5 = *(sub_26A5CC27C() + 16);

  if ((a1 & 0x8000000000000000) == 0 && v5 > a1)
  {
    v6 = OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___rowCells;
    v7 = *(v2 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___rowCells);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A848F04();
      v7 = v9;
    }

    if (*(v7 + 16) <= a1)
    {
      __break(1u);
    }

    else
    {
      v8 = type metadata accessor for TableRowWatchCellViewModel(0);
      *(v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * a1 + *(v8 + 36)) = a2;
      *(v2 + v6) = v7;

      sub_26A5CC400();
    }
  }
}

uint64_t sub_26A5CC400()
{
  v1 = v0;
  v2 = type metadata accessor for TableRowWatchState.Layout(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TableRowWatchCellViewModel(0);
  v61 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v53 - v9;
  MEMORY[0x28223BE20](v10);
  v63 = &v53 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF748, &qword_26A865318);
  MEMORY[0x28223BE20](v15 - 8);
  v56 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  MEMORY[0x28223BE20](v23);
  v57 = &v53 - v24;
  __swift_storeEnumTagSinglePayload(&v53 - v24, 1, 1, v5);
  v25 = sub_26A5CC27C();
  sub_26A7DBCD4(v25, v22);

  v62 = v5;
  if (__swift_getEnumTagSinglePayload(v22, 1, v5) == 1)
  {
    sub_26A4DBD10(v22, &qword_2803AF748, &qword_26A865318);
  }

  else
  {
    sub_26A5CFCCC();
    if (sub_26A609FAC())
    {
      v26 = v57;
      sub_26A4DBD10(v57, &qword_2803AF748, &qword_26A865318);
      sub_26A5CFCCC();
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v62);
      goto LABEL_7;
    }

    sub_26A5CF758(v14, type metadata accessor for TableRowWatchCellViewModel);
  }

  v26 = v57;
LABEL_7:
  sub_26A4D7E54();
  v27 = __swift_getEnumTagSinglePayload(v19, 1, v62) != 1;
  sub_26A4DBD10(v19, &qword_2803AF748, &qword_26A865318);
  v58 = OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_gridWidth;
  v28 = *(v0 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_gridWidth);
  if (v28 <= 0.0)
  {
    return sub_26A4DBD10(v26, &qword_2803AF748, &qword_26A865318);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF750, &qword_26A865320);
  result = swift_allocObject();
  *(result + 16) = xmmword_26A8570D0;
  v30 = MEMORY[0x277D84F90];
  *(result + 32) = 0;
  *(result + 40) = v30;
  v59 = OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___rowCells;
  v31 = *(*(v0 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___rowCells) + 16);
  v60 = v31;
  if (v31 < v27)
  {
    goto LABEL_32;
  }

  v32 = result;
  v53 = v7;
  v54 = v4;
  v55 = v2;
  if (v31 == v27)
  {
LABEL_10:
    v33 = v56;
    sub_26A4D7E54();
    if (__swift_getEnumTagSinglePayload(v33, 1, v62) == 1)
    {
      sub_26A4DBD10(v33, &qword_2803AF748, &qword_26A865318);
      v34 = v54;
      *v54 = v32;
      swift_storeEnumTagMultiPayload();
      sub_26A5CBEDC(v34);
    }

    else
    {
      v50 = v53;
      sub_26A5CFCCC();
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF740, &qword_26A865310) + 48);
      v52 = v54;
      sub_26A5CF85C();
      *(v52 + v51) = v32;
      swift_storeEnumTagMultiPayload();
      sub_26A5CBEDC(v52);
      sub_26A5CF758(v50, type metadata accessor for TableRowWatchCellViewModel);
    }

    v26 = v57;
    return sub_26A4DBD10(v26, &qword_2803AF748, &qword_26A865318);
  }

  if (v60 > v27)
  {
    v35 = 0;
    v36 = v63;
    while (v27 < *(*(v1 + v59) + 16))
    {
      sub_26A5CF85C();
      v37 = *(v36 + *(v62 + 36));
      if (v28 < v37 || (*(v36 + 8) & 1) == 0)
      {
        v28 = *(v1 + v58);
        v38 = *(v32 + 16);
        if (v38 >= *(v32 + 24) >> 1)
        {
          sub_26A7A231C();
          v32 = v49;
        }

        ++v35;
        *(v32 + 16) = v38 + 1;
        v39 = v32 + 16 * v38;
        *(v39 + 32) = v35;
        *(v39 + 40) = MEMORY[0x277D84F90];
      }

      result = sub_26A5CF85C();
      if (v35 >= *(v32 + 16))
      {
        goto LABEL_31;
      }

      v40 = v1;
      v41 = v32 + 16 * v35;
      v44 = *(v41 + 40);
      v43 = v41 + 40;
      v42 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v43 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A7A2244();
        v42 = v47;
        *v43 = v47;
      }

      v46 = *(v42 + 16);
      if (v46 >= *(v42 + 24) >> 1)
      {
        sub_26A7A2244();
        *v43 = v48;
      }

      ++v27;
      v36 = v63;
      sub_26A5CF758(v63, type metadata accessor for TableRowWatchCellViewModel);
      *(*v43 + 16) = v46 + 1;
      result = sub_26A5CFCCC();
      v28 = v28 - v37;
      v1 = v40;
      if (v60 == v27)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A5CCB04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v90 = a3;
  sub_26A84BD28();
  OUTLINED_FUNCTION_15();
  v81 = v5;
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v80 = v7 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF760, &qword_26A865390);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v79 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF768, &qword_26A865398);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v93 = &v79 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF770, &qword_26A8653A0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v88 = &v79 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF778, &qword_26A8653A8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v87 = &v79 - v16;
  v17 = type metadata accessor for MultilineTextPropertyView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF780, &unk_26A8653B0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v23);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v85 = &v79 - v27;
  v28 = sub_26A84E4A8();
  OUTLINED_FUNCTION_15();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  v34 = v33 - v32;
  (*(v30 + 16))(v33 - v32, a1, v28);
  v35 = OUTLINED_FUNCTION_13_16();
  v37 = v36(v35);
  if (v37 == *MEMORY[0x277D637F8])
  {
    v38 = OUTLINED_FUNCTION_13_16();
    v39(v38);
    v82 = *(v34 + 40);
    v40 = *(v34 + 48);
    sub_26A4C2314(v34, v97);
    v41 = sub_26A5CD714(v83);
    v84 = (v41 & 1) == 0;
    __swift_project_boxed_opaque_existential_1(v97, *&v97[24]);
    sub_26A84DEE8();
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_12_17(KeyPath);
    v43 = swift_getKeyPath();
    OUTLINED_FUNCTION_12_17(v43);
    v44 = swift_getKeyPath();
    OUTLINED_FUNCTION_12_17(v44);
    v45 = swift_getKeyPath();
    OUTLINED_FUNCTION_12_17(v45);
    v46 = v21 + *(v17 + 36);
    *v46 = swift_getKeyPath();
    *(v46 + 8) = 0;
    *(v46 + 16) = 0;
    *(v46 + 24) = swift_getKeyPath();
    *(v46 + 32) = 0;
    v47 = type metadata accessor for ActionHandler(0);
    v48 = v47[6];
    *(v46 + v48) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v49 = v46 + v47[7];
    *v49 = swift_getKeyPath();
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
    v50 = v46 + v47[8];
    *v50 = swift_getKeyPath();
    *(v50 + 8) = 0;
    v51 = v46 + v47[9];
    *v51 = swift_getKeyPath();
    *(v51 + 8) = 0;
    v52 = v46 + v47[10];
    *v52 = swift_getKeyPath();
    *(v52 + 9) = 0;
    swift_unknownObjectWeakInit();
    v53 = v47[11];
    type metadata accessor for StandardActionHandler(0);
    OUTLINED_FUNCTION_15_13();
    sub_26A4DBD10(v46 + v53, &qword_2803B3910, &qword_26A855580);
    OUTLINED_FUNCTION_15_13();
    if (v40)
    {
      v54 = v84;
    }

    else
    {
      v54 = v82;
    }

    v55 = swift_getKeyPath();
    sub_26A5CFCCC();
    v56 = &v25[*(v22 + 36)];
    *v56 = v55;
    *(v56 + 1) = v54;
    v56[16] = v40 & v41;
    v57 = v85;
    sub_26A4D7EA8();
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A5CFA4C();
    sub_26A5CFBB4();
    v58 = v87;
    sub_26A84FDF8();
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF7A8, &unk_26A872FB0);
    sub_26A5CF9C0();
    sub_26A5CFC40();
    sub_26A84FDF8();
    sub_26A4DBD10(v58, &qword_2803AF778, &qword_26A8653A8);
    sub_26A4DBD10(v57, &qword_2803AF780, &unk_26A8653B0);
    v59 = v97;
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v85 = v22;
  v60 = v89;
  if (v37 == *MEMORY[0x277D63808])
  {
    v61 = OUTLINED_FUNCTION_13_16();
    v62(v61);
    sub_26A4C2314(v34, v95);
    __swift_project_boxed_opaque_existential_1(v95, *(&v95[1] + 1));
    v63 = v80;
    sub_26A84DAF8();
    v65 = v81;
    v64 = v82;
    (*(v81 + 16))(v10, v63, v82);
    v66 = type metadata accessor for VisualPropertyView(0);
    v67 = &v10[v66[5]];
    *v67 = swift_getKeyPath();
    v67[9] = 0;
    swift_unknownObjectWeakInit();
    v68 = &v10[v66[6]];
    *v68 = swift_getKeyPath();
    v68[8] = 0;
    v69 = &v10[v66[7]];
    *v69 = swift_getKeyPath();
    v69[8] = 0;
    v70 = v66[8];
    *&v10[v70] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0, &qword_26A856F10);
    swift_storeEnumTagMultiPayload();
    v71 = &v10[v66[9]];
    LOBYTE(__src[0]) = 0;
    sub_26A851048();
    (*(v65 + 8))(v63, v64);
    v72 = *&v97[8];
    *v71 = v97[0];
    *(v71 + 1) = v72;
    sub_26A851448();
    sub_26A84F028();
    v73 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEE40, &qword_26A8643A0) + 36)];
    v74 = *&v97[16];
    *v73 = *v97;
    *(v73 + 1) = v74;
    *(v73 + 2) = *&v97[32];
    *&v10[*(v60 + 36)] = 257;
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A5CFA4C();
    sub_26A5CFBB4();
    v75 = v87;
    sub_26A84FDF8();
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF7A8, &unk_26A872FB0);
    sub_26A5CF9C0();
    sub_26A5CFC40();
    sub_26A84FDF8();
    sub_26A4DBD10(v75, &qword_2803AF778, &qword_26A8653A8);
    sub_26A4DBD10(v10, &qword_2803AF760, &qword_26A865390);
    v59 = v95;
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  if (v37 == *MEMORY[0x277D63800])
  {
    sub_26A851448();
    OUTLINED_FUNCTION_14_15();
    LOBYTE(v100) = BYTE8(__src[0]);
    v99 = BYTE8(__src[1]);
    v94 = 0;
    *&v95[0] = *&__src[0];
    BYTE8(v95[0]) = BYTE8(__src[0]);
    *&v95[1] = *&__src[1];
    BYTE8(v95[1]) = BYTE8(__src[1]);
    v95[2] = __src[2];
    v96 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF790, &unk_26A8653C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF788, &qword_26A872FC0);
    sub_26A5CF8B0();
    sub_26A5CF934();
    sub_26A84FDF8();
    memcpy(v93, v97, 0x51uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF7A8, &unk_26A872FB0);
    sub_26A5CF9C0();
    sub_26A5CFC40();
    return sub_26A84FDF8();
  }

  else
  {
    sub_26A851448();
    OUTLINED_FUNCTION_14_15();
    v97[0] = v101;
    *&__src[0] = v100;
    BYTE8(__src[0]) = v101;
    *&__src[1] = v102;
    BYTE8(__src[1]) = v103;
    __src[2] = v104;
    *&__src[3] = &sub_26A5CDA9C;
    *(&__src[3] + 1) = 0;
    __src[4] = 0uLL;
    memcpy(v95, __src, sizeof(v95));
    v99 = 1;
    v96 = 1;
    sub_26A4D7E54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF790, &unk_26A8653C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF788, &qword_26A872FC0);
    sub_26A5CF8B0();
    sub_26A5CF934();
    sub_26A84FDF8();
    memcpy(v93, v97, 0x51uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF7A8, &unk_26A872FB0);
    sub_26A5CF9C0();
    sub_26A5CFC40();
    sub_26A84FDF8();
    sub_26A4DBD10(__src, &qword_2803AF788, &qword_26A872FC0);
    v77 = OUTLINED_FUNCTION_13_16();
    return v78(v77);
  }
}

uint64_t sub_26A5CD714(uint64_t a1)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC750, &qword_26A85B618);
  MEMORY[0x28223BE20](v1);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v24 - v5;
  v7 = sub_26A84F3A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC758, &qword_26A8655B0);
  v14 = MEMORY[0x28223BE20](v25);
  v16 = v24 - v15;
  v17 = v8[13];
  v17(v13, *MEMORY[0x277CDFA00], v7, v14);
  (v17)(v10, *MEMORY[0x277CDF9D0], v7);
  v18 = sub_26A5CFB08(&qword_2803AC760, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  result = sub_26A851738();
  if (result)
  {
    v24[1] = v18;
    v20 = v8[4];
    v20(v6, v13, v7);
    v20(&v6[*(v1 + 48)], v10, v7);
    sub_26A4D7E54();
    v21 = *(v1 + 48);
    v20(v16, v3, v7);
    v22 = v8[1];
    v22(&v3[v21], v7);
    sub_26A4D7EA8();
    v20(&v16[*(v25 + 36)], &v3[*(v1 + 48)], v7);
    v22(v3, v7);
    if (sub_26A851728())
    {
      v23 = sub_26A851738();
    }

    else
    {
      v23 = 0;
    }

    sub_26A4DBD10(v16, &qword_2803AC758, &qword_26A8655B0);
    return v23 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26A5CDB30(uint64_t a1)
{
  v112 = sub_26A84E4A8();
  v105 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v111 = v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v110 = v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE98, &unk_26A865370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v84 - v9;
  v11 = type metadata accessor for TableRowWatchCellViewModel(0);
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v92 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v88 = v84 - v15;
  MEMORY[0x28223BE20](v16);
  v93 = v84 - v17;
  v18 = sub_26A84E048();
  v95 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v114 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v98 = v84 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF758, &qword_26A8762B0);
  MEMORY[0x28223BE20](v22 - 8);
  v90 = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v84 - v25;
  v89 = OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_header;
  sub_26A4D7E54();
  v27 = sub_26A84AEB8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v27);
  v91 = v27;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v26, &qword_2803AF758, &qword_26A8762B0);
  }

  else
  {
    sub_26A84AEA8();
    (*(*(v27 - 8) + 8))(v26, v27);
  }

  v29 = *(a1 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_columns);
  v30 = v93;
  v94 = *(v29 + 16);
  if (v94)
  {
    v96 = 0;
    v31 = *(v95 + 80);
    v113 = OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_row;
    v109 = v29;
    v97 = v29 + ((v31 + 32) & ~v31);
    v117 = v95 + 16;
    v84[0] = v91 - 8;
    v116 = (v95 + 8);
    v101 = (v105 + 8);
    v102 = v105 + 16;
    v99 = MEMORY[0x277D84F90];
    v100 = (v105 + 32);
    v32 = 0;
    v85 = v7;
    v87 = v10;
    v86 = v11;
    v84[1] = v12;
    v103 = v18;
    v104 = a1;
    while ((v32 & 0x8000000000000000) == 0)
    {
      v107 = v32;
      if (v32 >= *(v109 + 16))
      {
        goto LABEL_56;
      }

      v118 = *(v95 + 72);
      v115 = *(v95 + 16);
      v115(v98, v97 + v118 * v107, v18);
      v33 = sub_26A84E038();
      v34 = *(v99 + 16);
      if (v33)
      {
        v35 = v11[7];
        v36 = sub_26A84AE88();
        __swift_storeEnumTagSinglePayload(v30 + v35, 1, 1, v36);
        *(v30 + v11[9]) = 0;
        *v30 = v34;
        *(v30 + 8) = 0;
        *(v30 + 16) = MEMORY[0x277D84F90];
        *(v30 + v11[8]) = 1;
      }

      else
      {
        v108 = *(v99 + 16);
        v37 = v90;
        sub_26A4D7E54();
        v38 = v91;
        if (__swift_getEnumTagSinglePayload(v37, 1, v91) == 1)
        {
          sub_26A4DBD10(v37, &qword_2803AF758, &qword_26A8762B0);
          v39 = sub_26A84AE88();
          __swift_storeEnumTagSinglePayload(v10, 1, 1, v39);
        }

        else
        {
          v40 = *(sub_26A84AEA8() + 16);

          v41 = v96;
          if (v96 < 0 || v96 >= v40)
          {
            v49 = sub_26A84AE88();
            v47 = v10;
            v48 = 1;
          }

          else
          {
            v42 = sub_26A84AEA8();
            if (v41 >= *(v42 + 16))
            {
              goto LABEL_60;
            }

            v43 = v42;
            v44 = sub_26A84AE88();
            v45 = v41;
            v46 = v44;
            (*(*(v44 - 8) + 16))(v10, v43 + ((*(*(v44 - 8) + 80) + 32) & ~*(*(v44 - 8) + 80)) + *(*(v44 - 8) + 72) * v45, v44);

            v47 = v10;
            v48 = 0;
            v49 = v46;
          }

          __swift_storeEnumTagSinglePayload(v47, v48, 1, v49);
          (*(*(v38 - 8) + 8))(v37, v38);
        }

        sub_26A5CE720();
        v106 = v50;
        sub_26A4D7E54();
        v51 = sub_26A84AE88();
        v52 = __swift_getEnumTagSinglePayload(v7, 1, v51);
        v54 = v108;
        v53 = v109;
        if (v52 == 1)
        {
          sub_26A4DBD10(v7, &qword_2803ACE98, &unk_26A865370);
          v55 = 1;
          goto LABEL_22;
        }

        v56 = sub_26A84AE58();
        (*(*(v51 - 8) + 8))(v7, v51);
        if (v56 >= 1)
        {
          v55 = v56;
LABEL_22:
          v57 = v107;
          v58 = v97 + v107 * v118;
          v119 = MEMORY[0x277D84F90];
          while (v57 < *(v53 + 16))
          {
            v59 = v114;
            v115(v114, v58, v18);
            v60 = sub_26A84E038();
            (*v116)(v59, v18);
            if ((v60 & 1) == 0)
            {
              v61 = v55;
              v63 = v106 != -1 && v57 >= v106;
              v64 = v57 - v63;
              v65 = *(sub_26A84E468() + 16);

              if ((v64 & 0x8000000000000000) != 0 || v64 >= v65)
              {
                goto LABEL_42;
              }

              v66 = sub_26A84E468();
              if (v64 >= *(v66 + 16))
              {
                goto LABEL_54;
              }

              v67 = (*(v105 + 80) + 32) & ~*(v105 + 80);
              v68 = *(v105 + 72);
              v69 = v66 + v67 + v68 * v64;
              v70 = *(v105 + 16);
              v71 = v110;
              v72 = v112;
              v70(v110, v69, v112);

              v70(v111, v71, v72);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_26A7A216C();
                v119 = v76;
              }

              v73 = *(v119 + 16);
              v54 = v108;
              v53 = v109;
              if (v73 >= *(v119 + 24) >> 1)
              {
                sub_26A7A216C();
                v119 = v77;
              }

              v74 = v112;
              (*v101)(v110, v112);
              v75 = v119;
              *(v119 + 16) = v73 + 1;
              (*v100)(v75 + v67 + v73 * v68, v111, v74);
              v55 = v61 - 1;
              v18 = v103;
            }

            ++v57;
            v58 += v118;
            if (v55 <= 0)
            {
              goto LABEL_42;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
          break;
        }

        v57 = v107;
        v119 = MEMORY[0x277D84F90];
LABEL_42:
        v11 = v86;
        v78 = v88;
        v10 = v87;
        sub_26A4D7EA8();
        v79 = v57 - v107;
        if (__OFSUB__(v57, v107))
        {
          goto LABEL_58;
        }

        *&v78[v11[9]] = 0;
        *v78 = v54;
        v78[8] = 1;
        *(v78 + 2) = v119;
        *&v78[v11[8]] = v79;
        v30 = v93;
        sub_26A5CFCCC();
        if (__OFADD__(v96, 1))
        {
          goto LABEL_59;
        }

        ++v96;
        v7 = v85;
      }

      sub_26A5CF85C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A2244();
        v99 = v82;
      }

      v80 = *(v99 + 16);
      if (v80 >= *(v99 + 24) >> 1)
      {
        sub_26A7A2244();
        v99 = v83;
      }

      (*v116)(v98, v18);
      *(v99 + 16) = v80 + 1;
      sub_26A5CFCCC();
      v81 = *(v30 + v11[8]);
      sub_26A5CF758(v30, type metadata accessor for TableRowWatchCellViewModel);
      if (__OFADD__(v107, v81))
      {
        goto LABEL_57;
      }

      v32 = v107 + v81;
      if ((v107 + v81) >= v94)
      {
        return;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  else
  {
    v99 = MEMORY[0x277D84F90];
  }
}

void sub_26A5CE720()
{
  v1 = v0 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___spacerIndex;
  if (*(v0 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState____lazy_storage___spacerIndex + 8) == 1)
  {
    sub_26A5CE76C(v0);
    *v1 = v2;
    *(v1 + 8) = 0;
  }
}

void sub_26A5CE76C(uint64_t a1)
{
  v2 = sub_26A84E048();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC660, &unk_26A865380);
  MEMORY[0x28223BE20](v6);
  v25 = (v24 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC668, &qword_26A85B288);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  v15 = 0;
  v16 = *(a1 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_columns);
  v26 = v3;
  v27 = v16;
  v17 = *(v16 + 16);
  v24[1] = v3 + 16;
  v28 = v17;
  while (1)
  {
    if (v15 == v17)
    {
      v18 = 1;
      v15 = v17;
      goto LABEL_7;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= *(v27 + 16))
    {
      goto LABEL_12;
    }

    v20 = v25;
    v19 = v26;
    v21 = v27 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15;
    v22 = *(v6 + 48);
    *v25 = v15;
    (*(v19 + 16))(&v20[v22], v21, v2, v12);
    sub_26A4D7EA8();
    v18 = 0;
    ++v15;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v10, v18, 1, v6);
    sub_26A4D7EA8();
    if (__swift_getEnumTagSinglePayload(v14, 1, v6) != 1)
    {
      (*(v3 + 32))(v5, &v14[*(v6 + 48)], v2);
      v23 = sub_26A84E038();
      (*(v3 + 8))(v5, v2);
      v17 = v28;
      if ((v23 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_26A5CEA54()
{
  v1 = OBJC_IVAR____TtC9SnippetUI18TableRowWatchState__layout;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF7D8, &qword_26A8655B8);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_row;
  sub_26A84E4B8();
  OUTLINED_FUNCTION_46();
  (*(v4 + 8))(v0 + v3);
  sub_26A4DBD10(v0 + OBJC_IVAR____TtC9SnippetUI18TableRowWatchState_header, &qword_2803AF758, &qword_26A8762B0);

  return v0;
}

uint64_t sub_26A5CEB30()
{
  sub_26A5CEA54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26A5CEBB0(uint64_t a1)
{
  sub_26A5CED6C(319, &qword_2803AF6F0, type metadata accessor for TableRowWatchState.Layout, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_26A84E4B8();
    if (v2 <= 0x3F)
    {
      sub_26A5CED6C(319, &qword_2803AF6F8, MEMORY[0x277D628A0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26A5CED6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A5CEDD0(uint64_t a1)
{
  sub_26A5CEE44(319);
  if (v1 <= 0x3F)
  {
    sub_26A5CEEC4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26A5CEE44(uint64_t a1)
{
  if (!qword_2803AF710)
  {
    type metadata accessor for TableRowWatchCellViewModel(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF718, &qword_26A876470);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803AF710);
    }
  }
}

void sub_26A5CEEC4()
{
  if (!qword_2803AF720)
  {
    v0 = sub_26A851B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AF720);
    }
  }
}

uint64_t sub_26A5CEF24()
{
  type metadata accessor for TableRowWatchCellViewModel(0);
  sub_26A5CFB08(&qword_2803AF7D0, type metadata accessor for TableRowWatchCellViewModel, &unk_26A86A034);
  v0 = OUTLINED_FUNCTION_211();

  return MEMORY[0x2821FC388](v0);
}

uint64_t sub_26A5CEF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return sub_26A756C68();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A5CEFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x26D664930](a2);

  return sub_26A759120(a1, a3);
}

uint64_t sub_26A5CEFFC(uint64_t a1, uint64_t a2)
{
  sub_26A8526B8();
  MEMORY[0x26D664930](a1);
  sub_26A759120(v5, a2);
  return sub_26A8526F8();
}

uint64_t sub_26A5CF05C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TableRowWatchCellViewModel(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = (v6 - v5);
  type metadata accessor for TableRowWatchState.Layout(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_27();
  MEMORY[0x28223BE20](v9);
  v11 = (&v33 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF738, &qword_26A865308);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v16 = (&v33 + *(v15 + 56) - v13);
  OUTLINED_FUNCTION_3_33();
  sub_26A5CF85C();
  sub_26A5CF85C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_26A5CF85C();
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF740, &qword_26A865310) + 48);
    v22 = *(v11 + v21);
    OUTLINED_FUNCTION_1_30();
    if (!swift_getEnumCaseMultiPayload())
    {
      v25 = *(v16 + v21);
      OUTLINED_FUNCTION_5_33();
      sub_26A5CFCCC();
      if (*v11 == *v7 && *(v11[2] + 16) == *(v7[2] + 16))
      {
        v26 = *(v3 + 36);
        v27 = *(v11 + v26);
        v28 = *(v7 + v26);
        OUTLINED_FUNCTION_0_33();
        sub_26A5CF758(v11, v29);
        if (v27 == v28)
        {
          sub_26A7569C4(v22, v25);
          v20 = v30;

          OUTLINED_FUNCTION_0_33();
          sub_26A5CF758(v7, v31);
          goto LABEL_5;
        }
      }

      else
      {

        OUTLINED_FUNCTION_0_33();
        sub_26A5CF758(v11, v32);
      }

      sub_26A5CF758(v7, type metadata accessor for TableRowWatchCellViewModel);
      sub_26A5CF758(v14, type metadata accessor for TableRowWatchState.Layout);
LABEL_12:
      v20 = 0;
      return v20 & 1;
    }

    OUTLINED_FUNCTION_0_33();
    sub_26A5CF758(v11, v23);
LABEL_11:
    sub_26A4DBD10(v14, &qword_2803AF738, &qword_26A865308);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_1_30();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A5CF758(v14, type metadata accessor for TableRowWatchState.Layout);
      v20 = 1;
      return v20 & 1;
    }

    goto LABEL_11;
  }

  sub_26A5CF85C();
  v18 = *v2;
  OUTLINED_FUNCTION_1_30();
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_11;
  }

  sub_26A7569C4(v18, *v16);
  v20 = v19;

LABEL_5:
  sub_26A5CF758(v14, type metadata accessor for TableRowWatchState.Layout);
  return v20 & 1;
}

void sub_26A5CF3F0(uint64_t a1)
{
  v2 = type metadata accessor for TableRowWatchCellViewModel(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = (v5 - v4);
  type metadata accessor for TableRowWatchState.Layout(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = (v9 - v8);
  OUTLINED_FUNCTION_4_29();
  sub_26A5CF85C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      MEMORY[0x26D664930](1);
      sub_26A758F84(a1, v12);
    }

    else
    {
      MEMORY[0x26D664930](2);
    }
  }

  else
  {
    v13 = *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF740, &qword_26A865310) + 48));
    OUTLINED_FUNCTION_5_33();
    sub_26A5CFCCC();
    MEMORY[0x26D664930](0);
    MEMORY[0x26D664930](*v6);
    MEMORY[0x26D664930](*(v6[2] + 16));
    v14 = *(v6 + *(v2 + 36));
    if (v14 == 0.0)
    {
      v14 = 0.0;
    }

    MEMORY[0x26D664950](*&v14);
    sub_26A758F84(a1, v13);

    OUTLINED_FUNCTION_0_33();
    sub_26A5CF758(v6, v15);
  }
}

uint64_t sub_26A5CF57C()
{
  sub_26A8526B8();
  sub_26A5CF3F0(v1);
  return sub_26A8526F8();
}

uint64_t sub_26A5CF5BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A5CEF24();
  *a1 = result;
  return result;
}

uint64_t sub_26A5CF5F8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26A8526B8();
  MEMORY[0x26D664930](v2);
  sub_26A759120(v5, v3);
  return sub_26A8526F8();
}

unint64_t sub_26A5CF668()
{
  result = qword_2803AF728;
  if (!qword_2803AF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF728);
  }

  return result;
}

uint64_t sub_26A5CF71C(uint64_t a1)
{
  sub_26A8526B8();
  sub_26A5CF3F0(v2);
  return sub_26A8526F8();
}

uint64_t sub_26A5CF758(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A5CF7D4(uint64_t a1)
{
  v1 = type metadata accessor for TableRowWatchState.Layout(0);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_41();
  v4 = v3 - v2;
  OUTLINED_FUNCTION_4_29();
  sub_26A5CF85C();
  return sub_26A5CBEDC(v4);
}

uint64_t sub_26A5CF85C()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

unint64_t sub_26A5CF8B0()
{
  result = qword_2803AF798;
  if (!qword_2803AF798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF790, &unk_26A8653C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF798);
  }

  return result;
}

unint64_t sub_26A5CF934()
{
  result = qword_2803AF7A0;
  if (!qword_2803AF7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF788, &qword_26A872FC0);
    sub_26A5CF8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF7A0);
  }

  return result;
}

unint64_t sub_26A5CF9C0()
{
  result = qword_2803AF7B0;
  if (!qword_2803AF7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF778, &qword_26A8653A8);
    sub_26A5CFA4C();
    sub_26A5CFBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF7B0);
  }

  return result;
}

unint64_t sub_26A5CFA4C()
{
  result = qword_2803AF7B8;
  if (!qword_2803AF7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF780, &unk_26A8653B0);
    sub_26A5CFB08(&qword_2803AC740, type metadata accessor for MultilineTextPropertyView, &protocol conformance descriptor for MultilineTextPropertyView);
    sub_26A5CFB50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF7B8);
  }

  return result;
}

uint64_t sub_26A5CFB08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26A5CFB50()
{
  result = qword_28157FB38;
  if (!qword_28157FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803ABDD0, &qword_26A859D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FB38);
  }

  return result;
}

unint64_t sub_26A5CFBB4()
{
  result = qword_2803AF7C0;
  if (!qword_2803AF7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF760, &qword_26A865390);
    sub_26A5BEB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF7C0);
  }

  return result;
}

unint64_t sub_26A5CFC40()
{
  result = qword_2803AF7C8;
  if (!qword_2803AF7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF7A8, &unk_26A872FB0);
    sub_26A5CF8B0();
    sub_26A5CF934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF7C8);
  }

  return result;
}

uint64_t sub_26A5CFCCC()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_12_17(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_15()
{

  return sub_26A84F028();
}

uint64_t OUTLINED_FUNCTION_15_13()
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v0);
}

uint64_t PrimaryHeaderStandardView.init(text1:text2:text3:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for PrimaryHeaderStandardView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = (v10 - v9);
  sub_26A50429C(a1, v32);
  sub_26A4DBD68(a2, v31, &qword_2803A91B8, &qword_26A8575C0);
  sub_26A4DBD68(a3, v30, &qword_2803A91B8, &qword_26A8575C0);
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v12 = v11 + v7[5];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = v7[6];
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v15 = v33;
  v14 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  OUTLINED_FUNCTION_4_30();
  *(v11 + v7[7]) = v16(v15, v14);
  sub_26A4DBD68(v31, v27, &qword_2803A91B8, &qword_26A8575C0);
  v17 = v28;
  if (v28)
  {
    v18 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    OUTLINED_FUNCTION_4_30();
    v20 = v19(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_26A4DBD10(v27, &qword_2803A91B8, &qword_26A8575C0);
    v20 = 0;
  }

  *(v11 + v7[8]) = v20;
  sub_26A4DBD68(v30, v27, &qword_2803A91B8, &qword_26A8575C0);
  v21 = v28;
  if (v28)
  {
    v22 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    OUTLINED_FUNCTION_4_30();
    v24 = v23(v21, v22);
    OUTLINED_FUNCTION_11_22(a3);
    OUTLINED_FUNCTION_11_22(a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_11_22(v30);
    OUTLINED_FUNCTION_11_22(v31);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    OUTLINED_FUNCTION_32_5(a3);
    OUTLINED_FUNCTION_32_5(a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_32_5(v30);
    OUTLINED_FUNCTION_32_5(v31);
    OUTLINED_FUNCTION_32_5(v27);
    v24 = 0;
  }

  *(v11 + v7[9]) = v24;
  *(v11 + v7[10]) = 0;
  sub_26A5D169C(v11, a4);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t type metadata accessor for PrimaryHeaderStandardView(uint64_t a1)
{
  result = qword_2803AF800;
  if (!qword_2803AF800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A5D0140@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26A4DBD68(v2, &v13 - v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v10, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A5D0320()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for PrimaryHeaderStandardView(0) + 20);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A5D0460@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PrimaryHeaderStandardView(0);
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PrimaryHeaderStandardView.init(text1:text2:text3:addTint:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PrimaryHeaderStandardView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = (v13 - v12);
  *v14 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v15 = v14 + v10[5];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v10[6];
  *(v14 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = OUTLINED_FUNCTION_2_36();
  *(v14 + v10[7]) = v18(v17);
  sub_26A4DBD68(a2, v26, &qword_2803A91B8, &qword_26A8575C0);
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v19 = OUTLINED_FUNCTION_2_36();
    v21 = v20(v19);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_26A4DBD10(v26, &qword_2803A91B8, &qword_26A8575C0);
    v21 = 0;
  }

  *(v14 + v10[8]) = v21;
  sub_26A4DBD68(a3, v26, &qword_2803A91B8, &qword_26A8575C0);
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v22 = OUTLINED_FUNCTION_2_36();
    v24 = v23(v22);
    sub_26A4DBD10(a3, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(a2, &qword_2803A91B8, &qword_26A8575C0);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_26A4DBD10(a3, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(a2, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(v26, &qword_2803A91B8, &qword_26A8575C0);
    v24 = 0;
  }

  *(v14 + v10[9]) = v24;
  *(v14 + v10[10]) = a4 & 1;
  sub_26A5D169C(v14, a5);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PrimaryHeaderStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  v10 = sub_26A5D0140(&v22[-v9]);
  v24 = sub_26A5D0914(v10);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = 0;
  sub_26A5D0320();
  sub_26A5D0460(v6);
  v14 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v14);
  v23 = v1;
  sub_26A4C8FE0();
  v15 = *(v1 + *(type metadata accessor for PrimaryHeaderStandardView(0) + 40));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF7E0, &qword_26A865668) + 36)) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_26A68CCD4;
  *(v16 + 24) = 0;
  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF7E8, &unk_26A865670) + 36);
  *(v17 + 16) = swift_getKeyPath();
  *(v17 + 24) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v19 = *(v18 + 40);
  *(v17 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v20 = v17 + *(v18 + 44);
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *v17 = sub_26A4D1F7C;
  *(v17 + 8) = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF7F0, &qword_26A8656A8);
  *(a1 + *(result + 36)) = 18;
  return result;
}

uint64_t sub_26A5D0DC4@<X0>(uint64_t a1@<X8>)
{
  sub_26A5D0E44(a1);
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA000, &qword_26A855C98);
  v5 = a1 + *(result + 36);
  *v5 = KeyPath;
  *(v5 + 8) = 0;
  *(v5 + 16) = v3;
  *(v5 + 24) = 256;
  return result;
}

void *sub_26A5D0E44@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrimaryHeaderStandardView(0);
  v4 = *(v1 + v3[7]);
  v5 = *(v1 + v3[8]);
  v6 = *(v1 + v3[9]);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  v7 = qword_2803A8A90;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(qword_2803AD3E0, a1 + 584, &qword_2803AF838, &qword_26A8657C8);
  sub_26A6AEE74(__src);
  memcpy((a1 + 32), __src, 0xBFuLL);
  sub_26A5D1AF8(a1 + 616, a1 + 224);
  v8 = type metadata accessor for PrimaryHeaderStandardLayout(0);
  v9 = v8[7];
  *(a1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v10 = a1 + v8[8];
  result = sub_26A851048();
  *v10 = v16;
  *(v10 + 8) = v17;
  v12 = v8[11];
  v13 = v8[12];
  v14 = v8[13];
  v15 = v8[10];
  *(a1 + v8[9]) = v4;
  *(a1 + v15) = v5;
  *(a1 + v12) = 0;
  *(a1 + v13) = v6;
  *(a1 + v14) = 0;
  return result;
}

int8x16_t sub_26A5D0FE8()
{
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  v0 = vdup_n_s32(byte_2803B0440);
  v1.i64[0] = v0.u32[0];
  v1.i64[1] = v0.u32[1];
  __asm { FMOV            V2.2D, #28.0 }

  result = vbslq_s8(vcltzq_s64(vshlq_n_s64(v1, 0x3FuLL)), xmmword_26A8655C0, _Q2);
  xmmword_2803D1D60 = result;
  *&qword_2803D1D70 = result;
  return result;
}

uint64_t sub_26A5D1064()
{
  v1 = v0;
  v75 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v69 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v68 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v71 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  v14 = OUTLINED_FUNCTION_79(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v67 - v19;
  v21 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_41();
  v27 = v26 - v25;
  v28 = type metadata accessor for PrimaryHeaderStandardView(0);
  v29 = OUTLINED_FUNCTION_79(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_41();
  v76 = v31 - v30;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AABA0, &qword_26A8657D0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v32);
  v34 = &v67 - v33;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AABA8, &qword_26A856CA0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  v73 = v36 - v37;
  MEMORY[0x28223BE20](v38);
  v72 = &v67 - v39;
  sub_26A84D0C8();
  v40 = TextProperty.asAnyView()();
  v41 = *(v23 + 8);
  v42 = v27;
  v43 = v1;
  v41(v42, v21);
  v79[3] = MEMORY[0x277CE11C8];
  v79[4] = &protocol witness table for AnyView;
  v79[0] = v40;
  sub_26A84D0D8();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_26A4DBD10(v20, &qword_2803AA838, &unk_26A856770);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v78[1] = 0;
    v78[2] = 0;
  }

  else
  {
    v44 = TextProperty.asAnyView()();
    v41(v20, v21);
    v46 = &protocol witness table for AnyView;
    v45 = MEMORY[0x277CE11C8];
  }

  v78[0] = v44;
  v78[3] = v45;
  v78[4] = v46;
  sub_26A84D0E8();
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    sub_26A4DBD10(v17, &qword_2803AA838, &unk_26A856770);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v77[1] = 0;
    v77[2] = 0;
  }

  else
  {
    v47 = TextProperty.asAnyView()();
    v41(v17, v21);
    v49 = &protocol witness table for AnyView;
    v48 = MEMORY[0x277CE11C8];
  }

  v77[0] = v47;
  v77[3] = v48;
  v77[4] = v49;
  PrimaryHeaderStandardView.init(text1:text2:text3:)(v79, v78, v77, v76);
  v50 = v71;
  sub_26A84D0F8();
  sub_26A4DBDB4(v50, v10, &qword_2803B3800, &unk_26A856760);
  v51 = v75;
  if (__swift_getEnumTagSinglePayload(v10, 1, v75) == 1)
  {
    sub_26A4DBD10(v10, &qword_2803B3800, &unk_26A856760);
    swift_getKeyPath();
    OUTLINED_FUNCTION_10_22();
    v53 = &v34[v52];
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v55 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(&v53[v54], 1, 1, v55);
    *v53 = v1;
  }

  else
  {
    v56 = *(v69 + 32);
    v57 = v68;
    v56(v68, v10, v51);
    swift_getKeyPath();
    OUTLINED_FUNCTION_10_22();
    v59 = &v34[v58];
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v56(&v59[v60], v57, v51);
    v61 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(&v59[v60], 0, 1, v61);
    *v59 = v43;
  }

  sub_26A5D169C(v76, v34);
  v62 = sub_26A84D0A8();
  v63 = v72;
  sub_26A4DDC74(v62, v64);

  sub_26A4DBD10(v34, &qword_2803AABA0, &qword_26A8657D0);
  sub_26A4DBD68(v63, v73, &qword_2803AABA8, &qword_26A856CA0);
  sub_26A5D1B54();
  v65 = sub_26A851248();
  OUTLINED_FUNCTION_32_5(v63);
  return v65;
}

uint64_t sub_26A5D169C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryHeaderStandardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5D1724(uint64_t a1)
{
  result = sub_26A5D1D80(&qword_2803AF7F8, MEMORY[0x277D634D0], MEMORY[0x277D634C8]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A5D17A4(uint64_t a1)
{
  sub_26A4D27F4(319);
  if (v1 <= 0x3F)
  {
    sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v2 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_26A4E5E18();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26A5D18A8()
{
  result = qword_2803AF810;
  if (!qword_2803AF810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF7F0, &qword_26A8656A8);
    sub_26A5D1934();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF810);
  }

  return result;
}

unint64_t sub_26A5D1934()
{
  result = qword_2803AF818;
  if (!qword_2803AF818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF7E8, &unk_26A865670);
    sub_26A5D19EC();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF818);
  }

  return result;
}

unint64_t sub_26A5D19EC()
{
  result = qword_2803AF820;
  if (!qword_2803AF820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF7E0, &qword_26A865668);
    sub_26A4DBCC8(&qword_2803AF828, &qword_2803AA010, &qword_26A865740, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A5D1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF820);
  }

  return result;
}

unint64_t sub_26A5D1AA4()
{
  result = qword_2803AF830;
  if (!qword_2803AF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF830);
  }

  return result;
}

unint64_t sub_26A5D1B54()
{
  result = qword_2803AF840;
  if (!qword_2803AF840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABA8, &qword_26A856CA0);
    sub_26A5D1C0C();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438, &unk_26A8555B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF840);
  }

  return result;
}

unint64_t sub_26A5D1C0C()
{
  result = qword_2803AF848;
  if (!qword_2803AF848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAB98, &unk_26A856C90);
    sub_26A5D1C98();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF848);
  }

  return result;
}

unint64_t sub_26A5D1C98()
{
  result = qword_2803AF850;
  if (!qword_2803AF850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABA0, &qword_26A8657D0);
    sub_26A5D1D80(&qword_2803AF858, type metadata accessor for PrimaryHeaderStandardView, &protocol conformance descriptor for PrimaryHeaderStandardView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0, &qword_26A859400, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF850);
  }

  return result;
}

uint64_t sub_26A5D1D80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_11_22(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1, v2);
}

uint64_t sub_26A5D1E1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = var50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A5D2090(v2);
  if (v10)
  {
    sub_26A7EA53C([v2 image_style]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF860, &qword_26A8657D8);
    v11 = sub_26A84B058();
    OUTLINED_FUNCTION_15();
    v13 = v12;
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26A8570D0;
    (*(v13 + 104))(v15 + v14, *MEMORY[0x277D62A28], v11);
    sub_26A67BF28(v15);
    sub_26A84B688();

    (*(v6 + 8))(v9, v4);
    v16 = sub_26A84B718();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v16);
  }

  else
  {
    v18 = sub_26A851E98();
    LOBYTE(v20) = 2;
    sub_26A7A7884(v18, 1, "SnippetUI/RFAppIconImage+ImageElement.swift", 43, 2, 15, "asImageElement()", 16, v20, v21, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], vars8);
    v19 = sub_26A84B718();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v19);
  }
}

uint64_t sub_26A5D2090(void *a1)
{
  v1 = [a1 application_bundle_identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26A8517B8();

  return v3;
}

uint64_t CompositionPrompt.init(prompt:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (qword_2803A9160 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D30E8, (a2 + 35), &qword_2803AF868, &qword_26A8657E0);
  sub_26A6AEE74(v7);
  memcpy(a2, v7, 0xBFuLL);
  sub_26A5D2400((a2 + 39), (a2 + 24));
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  a2[50] = (*(v5 + 8))(v4, v5);

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A5D21EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A6078C0();
  v5 = v4;
  v6 = a1[28];
  KeyPath = swift_getKeyPath();
  v8 = a1[24];
  v9 = a1[25];
  v10 = a1[26];
  v11 = a1[27];

  LOBYTE(a1) = sub_26A850248();
  __src[0] = v5;
  __src[1] = KeyPath;
  __src[2] = v6;
  LOBYTE(__src[3]) = a1;
  __src[4] = v8;
  __src[5] = v9;
  __src[6] = v10;
  __src[7] = v11;
  LOBYTE(__src[8]) = 0;
  *(&__src[8] + 1) = 256;
  memcpy(__dst, __src, 0x43uLL);
  v13[72] = 1;
  memcpy(a2, __dst, 0x48uLL);
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  v16[0] = v5;
  v16[1] = KeyPath;
  v16[2] = v6;
  v17 = a1;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = 0;
  v23 = 256;
  sub_26A4EA070(__src, v13, &qword_2803AF888, &unk_26A865C60);
  return sub_26A4E2544(v16, &qword_2803AF888, &unk_26A865C60);
}

void *CompositionPrompt.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_26A84FA78();
  v10 = 1;
  sub_26A5D21EC(v2, __src);
  memcpy(__dst, __src, 0x51uLL);
  memcpy(v12, __src, 0x51uLL);
  sub_26A4EA070(__dst, &v7, &qword_2803AF870, &qword_26A8657E8);
  sub_26A4E2544(v12, &qword_2803AF870, &qword_26A8657E8);
  memcpy(&v9[7], __dst, 0x51uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x58uLL);
}

uint64_t sub_26A5D2480(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 408))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 224);
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

uint64_t sub_26A5D24C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 408) = 1;
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
      *(result + 224) = (a2 - 1);
      return result;
    }

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A5D2578()
{
  result = qword_2803AF878;
  if (!qword_2803AF878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF880, &qword_26A865C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF878);
  }

  return result;
}

uint64_t sub_26A5D25E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 257))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 200);
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

uint64_t sub_26A5D2624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 257) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 257) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26A5D26B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v115 = a7;
  v114 = a6;
  v113 = a5;
  v112 = a4;
  v129 = a3;
  v130 = a2;
  v96 = sub_26A84BBF8();
  v8 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = &v89 - v11;
  v119 = type metadata accessor for ComponentStackLayout.Cache(0);
  MEMORY[0x28223BE20](v119);
  v100 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF8A8, &unk_26A8660B0);
  MEMORY[0x28223BE20](v13 - 8);
  v99 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD278, &qword_26A85D9E8);
  MEMORY[0x28223BE20](v15 - 8);
  v106 = &v89 - v16;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DE0, &qword_26A85D9F0);
  v98 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v97 = &v89 - v17;
  v18 = sub_26A84F108();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v108 = &v89 - v23;
  MEMORY[0x28223BE20](v24);
  v128 = &v89 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF898, &unk_26A8660A0);
  MEMORY[0x28223BE20](v26 - 8);
  v121 = &v89 - v27;
  v127 = sub_26A84F2E8();
  MEMORY[0x28223BE20](v127);
  v105 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v107 = &v89 - v31;
  v118 = (v19 + 32);
  v122 = (v32 + 32);
  v102 = (v32 + 8);
  v117 = (v19 + 8);
  v104 = (v32 + 16);
  v93 = *MEMORY[0x277D62F38];
  v92 = (v8 + 104);
  v90 = MEMORY[0x277D84F90];
  v91 = (v8 + 8);
  v33 = a1;
  v101 = v34;
  v110 = a1;
  v109 = v18;
  v103 = v21;
LABEL_2:
  v35 = v33;
  v36 = v121;
  v120 = v33;
  while (v130 != v35)
  {
    if (v130 < a1)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    if (v33 < a1)
    {
      goto LABEL_42;
    }

    if (v35 >= v130)
    {
      goto LABEL_43;
    }

    v37 = a1;
    v38 = sub_26A84F218();
    v39 = sub_26A5D4868(&qword_28157FE70, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
    sub_26A851D88();
    v125 = v39;
    v126 = v38;
    sub_26A851DD8();
    if (v133 < *&v131)
    {
      goto LABEL_44;
    }

    if (v35 < *&v131 || v35 >= v133)
    {
      __swift_storeEnumTagSinglePayload(v36, 1, 1, v127);
      a1 = v37;
LABEL_20:
      v59 = v36;
      v60 = &qword_2803AF898;
      v61 = &unk_26A8660A0;
LABEL_21:
      sub_26A576F4C(v59, v60, v61);
      goto LABEL_22;
    }

    v41 = v108;
    v42 = v129;
    sub_26A84F228();
    v116 = *v118;
    v116(v128, v41, v18);
    v123 = *(v119 + 32);
    v124 = v35;
    v43 = *&v123[v42];
    if (*(v43 + 16))
    {
      v44 = sub_26A5484D4(v35);
      if (v45)
      {
        v46 = v97;
        sub_26A576FA8(*(v43 + 56) + *(v98 + 72) * v44, v97, &unk_2803B1DE0, &qword_26A85D9F0);
        v47 = *v122;
        v48 = v127;
        (*v122)(v101, v46, v127);
        LOBYTE(v131) = v113 & 1;
        LOBYTE(v133) = v115 & 1;
        if (sub_26A84F5A8())
        {
          v49 = *v117;
          v18 = v109;
          (*v117)(v128, v109);
          v47(v36, v101, v48);
          a1 = v110;
          v35 = v124;
          goto LABEL_19;
        }

        (*v102)(v101, v48);
      }
    }

    v50 = v113 & 1;
    LOBYTE(v131) = v113 & 1;
    v51 = v115 & 1;
    LOBYTE(v133) = v115 & 1;
    v52 = v105;
    v53 = v112;
    v54 = v114;
    sub_26A84F0D8();
    v55 = v111;
    v56 = v106;
    v57 = &v106[*(v111 + 48)];
    v58 = v127;
    (*v104)(v106, v52, v127);
    *v57 = v53;
    v57[8] = v50;
    v35 = v124;
    *(v57 + 2) = v54;
    v57[24] = v51;
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v55);
    sub_26A5589E8(v56, v35);
    v48 = v58;
    v49 = *v117;
    v36 = v121;
    v18 = v109;
    (*v117)(v128, v109);
    v47 = *v122;
    (*v122)(v36, v52, v48);
    a1 = v110;
LABEL_19:
    v33 = v120;
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v48);
    if (__swift_getEnumTagSinglePayload(v36, 1, v48) == 1)
    {
      goto LABEL_20;
    }

    v123 = v49;
    v47(v107, v36, v48);
    v62 = v100;
    sub_26A5D4754(v129, v100);
    sub_26A851D88();
    sub_26A851DD8();
    if (v133 < *&v131)
    {
      goto LABEL_45;
    }

    if (v35 >= *&v131 && v35 < v133)
    {
      v66 = v99;
      sub_26A84F228();
      v65 = v66;
      v36 = v121;
      v64 = 0;
    }

    else
    {
      v64 = 1;
      v65 = v99;
    }

    v67 = v62;
    v68 = v103;
    __swift_storeEnumTagSinglePayload(v65, v64, 1, v18);
    sub_26A5D47B8(v67);
    if (__swift_getEnumTagSinglePayload(v65, 1, v18) == 1)
    {
      (*v102)(v107, v127);
      v59 = v65;
      v60 = &qword_2803AF8A8;
      v61 = &unk_26A8660B0;
      goto LABEL_21;
    }

    v116(v68, v65, v18);
    if (*(v129 + *(v119 + 28)) & 1) == 0 || (sub_26A5D4814(), v69 = v94, sub_26A84F118(), v70 = v95, v71 = v96, (*v92)(v95, v93, v96), sub_26A5D4868(&qword_2803AF8B8, MEMORY[0x277D62F60], MEMORY[0x277D62F70]), v72 = sub_26A851758(), v73 = *v91, v74 = v70, v68 = v103, (*v91)(v74, v71), v75 = v69, v33 = v120, v73(v75, v71), (v72))
    {
      sub_26A5D46B4();
      sub_26A84F118();
      v76 = v131;
      sub_26A84F118();
      v77 = v132;
      v78 = v107;
      sub_26A84F2B8();
      v80 = v79;
      sub_26A84F2C8();
      v82 = v81;
      (v123)(v68, v18);
      (*v102)(v78, v127);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A23E4();
        v90 = v87;
      }

      v83 = *(v90 + 16);
      v84 = v124;
      if (v83 >= *(v90 + 24) >> 1)
      {
        sub_26A7A23E4();
        v90 = v88;
      }

      v33 = v84 + 1;
      v85 = v90;
      *(v90 + 16) = v83 + 1;
      v86 = v85 + 16 * v83;
      *(v86 + 32) = v80;
      *(v86 + 40) = v77 + v76 + v82;
      goto LABEL_2;
    }

    (v123)(v68, v18);
    (*v102)(v107, v127);
    v36 = v121;
    v35 = v124;
LABEL_22:
    ++v35;
  }
}

double sub_26A5D33E4()
{
  v1 = *(v0 + 240);
  if (!sub_26A61B05C(v1, &unk_287B13B08))
  {
    return *(v0 + 192);
  }

  if (sub_26A61B05C(v1, &unk_287B13068))
  {
    return *(v0 + 192);
  }

  result = 8.0;
  if (*(v0 + 248) != 2)
  {
    return *(v0 + 192);
  }

  return result;
}

uint64_t sub_26A5D3440(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  v42 = a2;
  v43 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF898, &unk_26A8660A0);
  v11 = OUTLINED_FUNCTION_79(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v41 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v19 = v18 - v17;
  v48.origin.x = OUTLINED_FUNCTION_2_37();
  MinY = CGRectGetMinY(v48);
  v44 = a5;
  result = sub_26A6A547C();
  if (result == v22)
  {
    return result;
  }

  v23 = result;
  if (v22 < result)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result >= v22)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v38 = (v15 + 8);
  v39 = v22;
  v40 = a1;
  do
  {
    sub_26A84F228();
    v49.origin.x = OUTLINED_FUNCTION_2_37();
    CGRectGetMinX(v49);
    v24 = v42;
    LOBYTE(v45) = v42 & 1;
    v25 = v43 & 1;
    v47 = v43 & 1;
    v26 = a6;
    *&v27 = COERCE_DOUBLE(sub_26A5D3794(v23, a1, (v42 & 1), a3, v43 & 1, a6));
    if (v28)
    {
      v29 = v24;
    }

    else
    {
      v30 = *&v27;
      v50.origin.x = OUTLINED_FUNCTION_2_37();
      v29 = 0;
      *&a1 = CGRectGetWidth(v50) - v30;
    }

    sub_26A5D46B4();
    sub_26A84F118();
    v31 = MinY + v45;
    sub_26A851568();
    v32 = v29 & 1;
    LOBYTE(v45) = v32;
    v47 = v25;
    sub_26A84F0F8();
    LOBYTE(v45) = v32;
    v47 = v25;
    v33 = v32;
    a6 = v26;
    sub_26A5D3C84(v23, a1, v33, a3, v25, v13);
    v34 = sub_26A84F2E8();
    if (__swift_getEnumTagSinglePayload(v13, 1, v34) == 1)
    {
      sub_26A576F4C(v13, &qword_2803AF898, &unk_26A8660A0);
      v35 = 0.0;
    }

    else
    {
      sub_26A84F2C8();
      v35 = v36;
      OUTLINED_FUNCTION_4_11();
      (*(v37 + 8))(v13, v34);
    }

    a1 = v40;
    ++v23;
    sub_26A84F118();
    result = (*v38)(v19, v41);
    MinY = v31 + v35 + v46;
  }

  while (v39 != v23);
  return result;
}

uint64_t sub_26A5D3794(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, void *a6)
{
  v56 = a5;
  v57 = a2;
  v58 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF898, &unk_26A8660A0);
  v10 = OUTLINED_FUNCTION_79(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  MEMORY[0x28223BE20](v17);
  v59 = &v54 - v18;
  MEMORY[0x28223BE20](v19);
  v61 = &v54 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF8A8, &unk_26A8660B0);
  v22 = OUTLINED_FUNCTION_79(v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v54 - v23;
  v25 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v31 = v30 - v29;
  sub_26A5D437C(a1, v24);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_26A576F4C(v24, &qword_2803AF8A8, &unk_26A8660B0);
LABEL_7:
    v35 = 0.0;
    return *&v35;
  }

  (*(v27 + 32))(v31, v24, v25);
  if ((sub_26A6581E0() & 1) == 0)
  {
    v36 = OUTLINED_FUNCTION_7_30();
    v37(v36);
    goto LABEL_7;
  }

  if (!sub_26A61B05C(*(v60 + 240), &unk_287B13248))
  {
    v54 = v27;
    v55 = v13;
    if (__OFSUB__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      v24 = a3 & 1;
      v65 = a3 & 1;
      a3 = (v56 & 1);
      v64 = v56 & 1;
      v13 = v58;
      OUTLINED_FUNCTION_9_26(a1 - 1, v61);
      if (!__OFADD__(a1, 1))
      {
        v63 = v24;
        v62 = a3;
        OUTLINED_FUNCTION_9_26(a1 + 1, v59);
        sub_26A576FA8(v61, v16, &qword_2803AF898, &unk_26A8660A0);
        v24 = sub_26A84F2E8();
        a6 = &unk_28157F000;
        a3 = &unk_28157F000;
        if (__swift_getEnumTagSinglePayload(v16, 1, v24) == 1)
        {
          sub_26A576F4C(v16, &qword_2803AF898, &unk_26A8660A0);
          v39 = 1;
          v40 = 0.0;
          v13 = v55;
          goto LABEL_15;
        }

        v13 = v55;
        if (qword_28157FC78 == -1)
        {
LABEL_14:
          *&v41 = COERCE_DOUBLE(MEMORY[0x26D661540](a3[400]));
          v39 = v42;
          OUTLINED_FUNCTION_4_11();
          (*(v43 + 8))(v16, v24);
          v40 = *&v41;
LABEL_15:
          v44 = v59;
          sub_26A576FA8(v59, v13, &qword_2803AF898, &unk_26A8660A0);
          OUTLINED_FUNCTION_34(v13);
          if (v45)
          {
            sub_26A576F4C(v13, &qword_2803AF898, &unk_26A8660A0);
            v46 = 1;
            v47 = 0.0;
          }

          else
          {
            if (a6[399] != -1)
            {
              OUTLINED_FUNCTION_1_37(&qword_28157FC78);
            }

            *&v48 = COERCE_DOUBLE(MEMORY[0x26D661540](a3[400]));
            v46 = v49;
            OUTLINED_FUNCTION_4_11();
            (*(v50 + 8))(v13, v24);
            v47 = *&v48;
          }

          v51 = v61;
          OUTLINED_FUNCTION_34(v61);
          if (v45 || (OUTLINED_FUNCTION_34(v44), v45))
          {
            if (v39)
            {
              v40 = v47;
            }

            if ((v39 & 1 & v46) != 1)
            {
              goto LABEL_28;
            }
          }

          else if (((v39 | v46) & 1) == 0 && v40 == v47)
          {
            goto LABEL_28;
          }

          v40 = sub_26A5D33E4();
LABEL_28:
          v52 = OUTLINED_FUNCTION_7_30();
          v53(v52);
          sub_26A576F4C(v51, &qword_2803AF898, &unk_26A8660A0);
          v35 = v40;
          sub_26A576F4C(v44, &qword_2803AF898, &unk_26A8660A0);
          return *&v35;
        }

LABEL_34:
        OUTLINED_FUNCTION_1_37(&qword_28157FC78);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v32 = sub_26A5D33E4();
  v33 = OUTLINED_FUNCTION_7_30();
  v34(v33);
  v35 = v32;
  return *&v35;
}

uint64_t sub_26A5D3C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, char *a6@<X8>)
{
  v69 = a3;
  v70 = a5;
  v68 = a4;
  v71 = a2;
  v72 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD278, &qword_26A85D9E8);
  v9 = OUTLINED_FUNCTION_79(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = sub_26A84F2E8();
  OUTLINED_FUNCTION_15();
  v67 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_0();
  v66 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF8A8, &unk_26A8660B0);
  v25 = OUTLINED_FUNCTION_79(v24);
  MEMORY[0x28223BE20](v25);
  v27 = &v57 - v26;
  v28 = sub_26A84F108();
  OUTLINED_FUNCTION_15();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  v34 = v33 - v32;
  sub_26A5D437C(a1, v27);
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
  {
    v61 = v12;
    v65 = v30;
    (*(v30 + 32))(v34, v27, v28);
    v36 = *(type metadata accessor for ComponentStackLayout.Cache(0) + 32);
    v62 = a1;
    v63 = v6;
    sub_26A507A94();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DE0, &qword_26A85D9F0);
    OUTLINED_FUNCTION_34(v15);
    v64 = v37;
    if (v38)
    {
      v59 = v36;
      v60 = v28;
      v39 = v34;
      v40 = v67;
      sub_26A576F4C(v15, &qword_2803AD278, &qword_26A85D9E8);
      v47 = v68;
    }

    else
    {
      v41 = &v15[*(v37 + 48)];
      v42 = *v41;
      v43 = v41[8];
      v59 = *(v41 + 2);
      v60 = v42;
      v44 = v16;
      v45 = v41[24];
      v46 = v67;
      v58 = *(v67 + 32);
      v58(v23, v15, v44);
      v76 = v43;
      v75 = v45;
      v74 = v69 & 1;
      v73 = v70 & 1;
      v47 = v68;
      v48 = sub_26A84F5A8();
      if (v48)
      {
        (*(v65 + 8))(v34, v28);
        v58(v72, v23, v44);
        v35 = 0;
        v16 = v44;
        return __swift_storeEnumTagSinglePayload(v72, v35, 1, v16);
      }

      v59 = v36;
      v60 = v28;
      v39 = v34;
      v40 = v46;
      v16 = v44;
      (*(v46 + 8))(v23, v44);
      v37 = v64;
    }

    v49 = v69 & 1;
    v78 = v69 & 1;
    v50 = v70 & 1;
    v77 = v70 & 1;
    v51 = v66;
    v52 = v71;
    sub_26A84F0D8();
    v53 = *(v37 + 48);
    v54 = v61;
    v55 = v61 + v53;
    (*(v40 + 16))(v61, v51, v16);
    *v55 = v52;
    *(v55 + 8) = v49;
    *(v55 + 16) = v47;
    *(v55 + 24) = v50;
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v64);
    sub_26A5589E8(v54, v62);
    (*(v65 + 8))(v39, v60);
    (*(v40 + 32))(v72, v51, v16);
    v35 = 0;
    return __swift_storeEnumTagSinglePayload(v72, v35, 1, v16);
  }

  sub_26A576F4C(v27, &qword_2803AF8A8, &unk_26A8660B0);
  v35 = 1;
  return __swift_storeEnumTagSinglePayload(v72, v35, 1, v16);
}

double sub_26A5D4130@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A84F218();
  OUTLINED_FUNCTION_4_11();
  (*(v5 + 16))(a2, a1);
  v6 = *(v2 + 240);
  v7 = *(v2 + 248);
  v8 = *(v2 + 256);
  v9 = type metadata accessor for ComponentStackLayout.Cache(0);
  *(a2 + v9[8]) = MEMORY[0x277D84F98];
  v10 = a2 + v9[9];
  result = 0.0;
  *(v10 + 25) = 0u;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 41) = 1;
  *(a2 + v9[5]) = v6;
  *(a2 + v9[6]) = v7;
  *(a2 + v9[7]) = v8;
  return result;
}

double sub_26A5D4224(uint64_t a1, char a2, uint64_t a3, char a4, __n128 a5)
{
  v10 = v5 + *(type metadata accessor for ComponentStackLayout.Cache(0) + 36);
  if ((*(v10 + 41) & 1) != 0 || (v11 = *v10, (sub_26A84F5A8() & 1) == 0))
  {
    v12 = sub_26A6A547C();
    sub_26A5D26B8(v12, v13, v5, a1, a2 & 1, a3, a4 & 1);
    v15 = *(v14 + 16);
    if (v15)
    {
      v11 = *(v14 + 32);
      v16 = v15 - 1;
      if (v15 != 1)
      {
        v17 = (v14 + 48);
        do
        {
          v18 = *v17;
          v17 += 2;
          v19 = v18;
          if (v11 < v18)
          {
            v11 = v19;
          }

          --v16;
        }

        while (v16);
      }

      v20 = (v14 + 40);
      v21 = 0.0;
      do
      {
        v22 = *v20;
        v20 += 2;
        v21 = v21 + v22;
        --v15;
      }

      while (v15);
    }

    else
    {
      v11 = 0.0;
      v21 = 0.0;
    }

    *v10 = v11;
    *(v10 + 8) = v21;
    *(v10 + 16) = a1;
    *(v10 + 24) = a2 & 1;
    *(v10 + 32) = a3;
    *(v10 + 40) = a4 & 1;
    *(v10 + 41) = 0;
  }

  return v11;
}

uint64_t sub_26A5D437C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_26A6A547C() > a1 || v4 <= a1)
  {
    v6 = 1;
  }

  else
  {
    sub_26A84F228();
    v6 = 0;
  }

  v7 = sub_26A84F108();

  return __swift_storeEnumTagSinglePayload(a2, v6, 1, v7);
}

void (*sub_26A5D45E8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

unint64_t sub_26A5D4660()
{
  result = qword_2803AF890;
  if (!qword_2803AF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF890);
  }

  return result;
}

unint64_t sub_26A5D46B4()
{
  result = qword_2803AF8A0;
  if (!qword_2803AF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF8A0);
  }

  return result;
}

uint64_t type metadata accessor for ComponentStackLayout.Cache(uint64_t a1)
{
  result = qword_2803AF8C0;
  if (!qword_2803AF8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A5D4754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentStackLayout.Cache(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5D47B8(uint64_t a1)
{
  v2 = type metadata accessor for ComponentStackLayout.Cache(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A5D4814()
{
  result = qword_2803AF8B0;
  if (!qword_2803AF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF8B0);
  }

  return result;
}

uint64_t sub_26A5D4868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26A5D48D8(uint64_t a1)
{
  sub_26A84F218();
  if (v1 <= 0x3F)
  {
    type metadata accessor for VRXIdiom(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      type metadata accessor for VRXVisualResponseLocation(319, v4, v5, v6);
      if (v7 <= 0x3F)
      {
        sub_26A5D49AC(319);
        if (v8 <= 0x3F)
        {
          sub_26A5D4A20(319);
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A5D49AC(uint64_t a1)
{
  if (!qword_2803AF8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B1DE0, &qword_26A85D9F0);
    v1 = sub_26A8516D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AF8D0);
    }
  }
}

void sub_26A5D4A20(uint64_t a1)
{
  if (!qword_2803AF8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF8E0, qword_26A8660C8);
    v1 = sub_26A852068();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AF8D8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_26@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{

  return sub_26A5D3C84(a1, v5, v2, v4, v3, a2);
}

void sub_26A5D4B14(uint64_t *a1@<X8>)
{
  v3 = [v1 text_1];
  if (v3)
  {
    v4 = v3;
    v7[3] = &type metadata for PartialText;
    v7[4] = &protocol witness table for PartialText;
    v7[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v7[0] + 16);
    SecondaryHeaderEmphasizedView.init(text1:)(v7, a1);
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v5 = v1;
    *(v5 + 8) = &unk_287B13AA8;
    *(v5 + 16) = 0;
    swift_willThrow();
    v6 = v1;
  }
}

unint64_t sub_26A5D4C30()
{
  result = qword_2803AF8E8;
  if (!qword_2803AF8E8)
  {
    type metadata accessor for SecondaryHeaderEmphasizedView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF8E8);
  }

  return result;
}

Swift::Double __swiftcall SmartDialogAnimationSettings.animationDuration(lineCount:)(Swift::Int lineCount)
{
  v2 = *(v1 + *(type metadata accessor for SmartDialogAnimationSettings(0) + 20)) * lineCount;
  sub_26A8511C8();
  return v2 + v3;
}

uint64_t SmartDialogAnimationSettings.init(springAnimation:lineAnimationDelay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_26A8511F8();
  OUTLINED_FUNCTION_0_34();
  v8 = v7;
  (*(v9 + 16))(a2, a1, v3);
  v10 = type metadata accessor for SmartDialogAnimationSettings(0);
  *(a2 + *(v10 + 20)) = a3;
  sub_26A5D4DF4();
  v11 = sub_26A8516A8();
  result = (*(v8 + 8))(a1, v3);
  *(a2 + *(v10 + 24)) = v11;
  return result;
}

unint64_t sub_26A5D4DF4()
{
  result = qword_2803AF920;
  if (!qword_2803AF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF920);
  }

  return result;
}

uint64_t SmartDialogAnimationTriggerDirection.hashValue.getter()
{
  OUTLINED_FUNCTION_2_38();
  sub_26A8526B8();
  OUTLINED_FUNCTION_4_31();
  return sub_26A8526F8();
}

uint64_t SmartDialogAnimationSettings.init(springAnimation:lineAnimationDelay:animatablePropertyOverrides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_26A8511F8();
  (*(*(v8 - 8) + 32))(a3, a1, v8);
  result = type metadata accessor for SmartDialogAnimationSettings(0);
  *(a3 + *(result + 20)) = a4;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t sub_26A5D4F90()
{
  OUTLINED_FUNCTION_2_38();
  sub_26A8526B8();
  OUTLINED_FUNCTION_4_31();
  return sub_26A8526F8();
}

uint64_t sub_26A5D4FCC()
{
  OUTLINED_FUNCTION_2_38();
  sub_26A8526B8();
  OUTLINED_FUNCTION_4_31();
  return sub_26A8526F8();
}

SnippetUI::SmartDialogAnimationValues __swiftcall SmartDialogAnimationValues.init(start:end:)(Swift::Double start, Swift::Double end)
{
  *v2 = start;
  v2[1] = end;
  result.end = end;
  result.start = start;
  return result;
}

uint64_t SmartDialogAnimationValues.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26D664950](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x26D664950](*&v3);
}

uint64_t SmartDialogAnimationValues.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26A8526B8();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x26D664950](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x26D664950](*&v4);
  return sub_26A8526F8();
}

unint64_t sub_26A5D5118()
{
  result = qword_2803AF928;
  if (!qword_2803AF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF928);
  }

  return result;
}

unint64_t sub_26A5D5170()
{
  result = qword_2803AF930;
  if (!qword_2803AF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF930);
  }

  return result;
}

unint64_t sub_26A5D51C8()
{
  result = qword_2803AF938;
  if (!qword_2803AF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF938);
  }

  return result;
}

unint64_t sub_26A5D5220()
{
  result = qword_2803AF940;
  if (!qword_2803AF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF940);
  }

  return result;
}

uint64_t sub_26A5D5274()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A5D52E8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

uint64_t sub_26A5D5360(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26A8526B8();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x26D664950](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x26D664950](*&v5);
  return sub_26A8526F8();
}

uint64_t getEnumTagSinglePayload for SmartDialogAnimationTriggerType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1FFF)
  {
    if (a2 + 57345 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 57345 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 57346;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 15) | (2 * ((*a1 >> 3) & 0xFC0 | (*a1 >> 2)))) ^ 0x1FFF;
  if (v5 >> 1 >= 0xFFF)
  {
    v5 = -1;
  }

  return v5 + 1;
}

uint64_t storeEnumTagSinglePayload for SmartDialogAnimationTriggerType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57345 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 57345 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1FFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1FFE)
  {
    v6 = ((a2 - 0x1FFF) >> 16) + 1;
    *result = a2 - 0x1FFF;
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
          v7 = ((-a2 >> 1) & 0xFFF) - (a2 << 12);
          *result = (8 * v7) & 0xFE00 | (4 * (v7 & 0x3F));
        }

        break;
    }
  }

  return result;
}

void sub_26A5D55FC(uint64_t a1)
{
  sub_26A8511F8();
  if (v1 <= 0x3F)
  {
    sub_26A5D5688(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A5D5688(uint64_t a1)
{
  if (!qword_2803AF958)
  {
    sub_26A5D4DF4();
    v1 = sub_26A8516D8();
    if (!v2)
    {
      atomic_store(v1, &qword_2803AF958);
    }
  }
}

_BYTE *sub_26A5D56EC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_1_38(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A5D57D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF998, &unk_26A866550);
  OUTLINED_FUNCTION_0_34();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = OBJC_IVAR____TtC9SnippetUI21SmartDialogAnimations__generationCount;
  v11[1] = 0;
  sub_26A84EBD8();
  (*(v5 + 32))(v1 + v9, v8, v2);
  *(v1 + OBJC_IVAR____TtC9SnippetUI21SmartDialogAnimations_animations) = a1;
  return v1;
}

uint64_t sub_26A5D58C8()
{
  v1 = OBJC_IVAR____TtC9SnippetUI21SmartDialogAnimations__generationCount;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF998, &unk_26A866550);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_26A5D59A8(uint64_t a1)
{
  sub_26A5D5A44();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A5D5A44()
{
  if (!qword_2803AF978)
  {
    v0 = sub_26A84EC38();
    if (!v1)
    {
      atomic_store(v0, &qword_2803AF978);
    }
  }
}

uint64_t sub_26A5D5ADC(uint64_t a1)
{
  result = type metadata accessor for SmartDialogAnimationSettings(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_26A5D5B78(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_1_38(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A5D5C54()
{
  result = qword_2803AF990;
  if (!qword_2803AF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF990);
  }

  return result;
}

double sub_26A5D5CA8()
{
  result = 0.1;
  xmmword_2803AF8F0 = xmmword_26A866130;
  return result;
}

double sub_26A5D5CC0()
{
  result = 10.0;
  xmmword_2803AF900 = xmmword_26A860690;
  return result;
}

double sub_26A5D5CD8()
{
  result = 150.0;
  xmmword_2803AF910 = xmmword_26A866140;
  return result;
}

uint64_t sub_26A5D5CF0@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 a2@<W1>, double *a3@<X8>)
{
  v4 = v3;
  v7 = *a1;
  v8 = type metadata accessor for SmartDialogAnimation(0);
  v9 = v3 + *(v8 + 24);
  result = type metadata accessor for SmartDialogAnimationSettings(0);
  v11 = *(v9 + *(result + 24));
  if (*(v11 + 16) && (result = sub_26A548784(v7), (v12 & 1) != 0))
  {
    v13 = (*(v11 + 56) + 16 * result);
    v14 = *v13;
    v15 = v13[1];
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (qword_2803A8B78 != -1)
        {
          result = swift_once();
        }

        v16 = &xmmword_2803AF910;
      }

      else
      {
        if (qword_2803A8B70 != -1)
        {
          result = swift_once();
        }

        v16 = &xmmword_2803AF900;
      }
    }

    else
    {
      if (qword_2803A8B68 != -1)
      {
        result = swift_once();
      }

      v16 = &xmmword_2803AF8F0;
    }

    v17 = *v16;
    v18 = 1.0;
    if (((v7 == 0) & a2) == 0)
    {
      v18 = *(v16 + 1);
    }

    v14 = -v17;
    if ((*(v4 + *(v8 + 32)) & 0x100) != 0)
    {
      v19 = *v16;
    }

    else
    {
      v19 = -v17;
    }

    if (((v7 == 1) & ((*(v4 + *(v8 + 32)) & 0x100) >> 8)) == 0)
    {
      v14 = *v16;
    }

    if (*(v4 + *(v8 + 32)) >= 0)
    {
      v15 = v18;
    }

    else
    {
      v14 = v18;
      v15 = v19;
    }
  }

  *a3 = v14;
  a3[1] = v15;
  return result;
}

double sub_26A5D5E84(double *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  if (v3 > 0.0)
  {
    v4 = v1;
    v5 = a1[1];
    v6 = v1 + *(type metadata accessor for SmartDialogAnimation(0) + 24);
    if (v3 - *(v6 + *(type metadata accessor for SmartDialogAnimationSettings(0) + 20)) * *v4 >= 0.0)
    {
      sub_26A8511D8();
      return v2 + (v5 - v2) * v8;
    }
  }

  return v2;
}

void OUTLINED_FUNCTION_4_31()
{

  JUMPOUT(0x26D664930);
}

uint64_t type metadata accessor for SmartDialogLineAnimatingView(uint64_t a1)
{
  result = qword_2803AF9A0;
  if (!qword_2803AF9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A5D6034(uint64_t a1)
{
  result = type metadata accessor for SmartDialogAnimationSettings(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A5D60E4()
{
  v1 = v0;
  v2 = sub_26A84FA98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmartDialogLineAnimatingView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A5D6BFC(v1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SmartDialogLineAnimatingView);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_26A5D6B10(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  (*(v3 + 104))(v5, *MEMORY[0x277CE00F0], v2);
  return sub_26A851108();
}

uint64_t sub_26A5D62AC(double *a1, double *a2)
{
  v39 = a1;
  v38 = sub_26A84F468();
  v34 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SmartDialogAnimation(0);
  MEMORY[0x28223BE20](v36);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SmartDialogAnimationDrawableType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A850798();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SmartDialogAnimationChunk(0);
  v12 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for SmartDialogLineAnimatingView(0);
  v40 = result;
  v29 = (a2 + *(result + 24));
  v16 = v29[1];
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v19 = *(v12 + 72);
    v35 = (v10 + 32);
    v31 = (v34 + 8);
    v30 = (v10 + 8);
    v33 = v9;
    v34 = v6;
    v32 = v19;
    do
    {
      sub_26A5D6BFC(v18, v14, type metadata accessor for SmartDialogAnimationChunk);
      sub_26A5D6BFC(v14 + *(v42 + 20), v8, type metadata accessor for SmartDialogAnimationDrawableType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26A5D6C5C(v14, type metadata accessor for SmartDialogAnimationChunk);
        result = sub_26A5D6C5C(v8, type metadata accessor for SmartDialogAnimationDrawableType);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCD8, &unk_26A85C500);
        result = (*v35)(v41, v8, v9);
        v20 = *(v40 + 28);
        if ((*(a2 + v20) & 0x100) != 0)
        {
          v21 = *v29 - *v14;
          if (__OFSUB__(*v29, *v14))
          {
            __break(1u);
            return result;
          }
        }

        else
        {
          v21 = *v14;
        }

        v22 = *a2;
        v23 = v36;
        v24 = v5 + *(v36 + 24);
        sub_26A5D6BFC(a2 + *(v40 + 20), v24, type metadata accessor for SmartDialogAnimationSettings);
        v25 = *(a2 + v20);
        *v5 = v21;
        v5[1] = v22;
        *(v5 + *(v23 + 28)) = 0;
        *(v5 + *(v23 + 32)) = v25;
        v47[2] = *v39;

        sub_26A84F3B8();
        LOBYTE(v46) = 0;
        sub_26A5D5CF0(&v46, 0, v47);
        if (v22 > 0.0 && v22 - *(v24 + *(type metadata accessor for SmartDialogAnimationSettings(0) + 20)) * v21 >= 0.0)
        {
          v44 = 0x3FF0000000000000;
          v45 = 0;
          v43 = 0;
          sub_26A8511D8();
        }

        sub_26A84F4B8();
        LOBYTE(v46) = 1;
        sub_26A5D5CF0(&v46, 0, v47);
        if (v22 > 0.0 && v22 - *(v24 + *(type metadata accessor for SmartDialogAnimationSettings(0) + 20)) * v21 >= 0.0)
        {
          v44 = 0x3FF0000000000000;
          v45 = 0;
          v43 = 0;
          sub_26A8511D8();
        }

        sub_26A84F3B8();
        LOBYTE(v46) = 2;
        sub_26A5D5CF0(&v46, 0, v47);
        if (v22 > 0.0 && v22 - *(v24 + *(type metadata accessor for SmartDialogAnimationSettings(0) + 20)) * v21 >= 0.0)
        {
          v44 = 0x3FF0000000000000;
          v45 = 0;
          v43 = 0;
          sub_26A8511D8();
        }

        v26 = v37;
        sub_26A84F458();
        sub_26A84F4C8();
        (*v31)(v26, v38);
        v27 = v41;
        sub_26A84F418();
        sub_26A5D6C5C(v5, type metadata accessor for SmartDialogAnimation);
        v28 = v27;
        v9 = v33;
        (*v30)(v28, v33);
        sub_26A5D6C5C(v14, type metadata accessor for SmartDialogAnimationChunk);

        v19 = v32;
      }

      v18 += v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_26A5D69A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A5D6CB4();

  return MEMORY[0x282132D20](a1, a2, a3, v8, a4);
}

uint64_t sub_26A5D6A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A5D6CB4();

  return MEMORY[0x282132D28](a1, a2, a3, v8, a4);
}

double (*sub_26A5D6AB4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_26A5D6AE0;
}

double sub_26A5D6AE0(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_26A5D6B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartDialogLineAnimatingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A5D6B74(double *a1)
{
  v3 = *(type metadata accessor for SmartDialogLineAnimatingView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_26A5D62AC(a1, v4);
}

uint64_t sub_26A5D6BFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A5D6C5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26A5D6CB4()
{
  result = qword_2803AF9B0;
  if (!qword_2803AF9B0)
  {
    type metadata accessor for SmartDialogLineAnimatingView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF9B0);
  }

  return result;
}

unint64_t sub_26A5D6D0C()
{
  result = qword_2803AF9B8;
  if (!qword_2803AF9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF9C0, &qword_26A866628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF9B8);
  }

  return result;
}

unint64_t sub_26A5D6D90()
{
  result = qword_2803AF9D8;
  if (!qword_2803AF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF9D8);
  }

  return result;
}

uint64_t VRXMode.detailLevel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 == 1)
  {
    v7 = MEMORY[0x277D62F98];
  }

  else
  {
    if (a1)
    {
      type metadata accessor for VRXMode(0, a2, a3, a4);
      result = sub_26A8525E8();
      __break(1u);
      return result;
    }

    v7 = MEMORY[0x277D62F90];
  }

  v8 = *v7;
  sub_26A84BD58();
  OUTLINED_FUNCTION_46();
  v11 = *(v10 + 104);

  return v11(a5, v8, v9);
}

unint64_t sub_26A5D6F58()
{
  result = qword_28157EBF0;
  if (!qword_28157EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157EBF0);
  }

  return result;
}

unint64_t sub_26A5D6FEC()
{
  result = qword_2803AF9E0;
  if (!qword_2803AF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF9E0);
  }

  return result;
}

unint64_t sub_26A5D7100()
{
  result = qword_28157FAD8;
  if (!qword_28157FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FAD8);
  }

  return result;
}

unint64_t sub_26A5D7194()
{
  result = qword_2803AF9E8;
  if (!qword_2803AF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF9E8);
  }

  return result;
}

uint64_t sub_26A5D71E8()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.isSolariumEnabled.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t EnvironmentValues.interactionDelegate.getter()
{
  v0 = sub_26A5D7294();
  OUTLINED_FUNCTION_2_39(v0, &type metadata for RFInteractionDelegate);

  return sub_26A84F998();
}

unint64_t sub_26A5D7294()
{
  result = qword_28157E390;
  if (!qword_28157E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E390);
  }

  return result;
}

uint64_t EnvironmentValues.interactionDelegate.setter(uint64_t a1)
{
  sub_26A51D0F8(a1, &v3, &qword_2803ACA10, &qword_26A85BF70);
  sub_26A5D7294();
  sub_26A84F9A8();
  return sub_26A4DBD10(a1, &qword_2803ACA10, &qword_26A85BF70);
}

uint64_t sub_26A5D7364()
{
  sub_26A5DB4F8();
  OUTLINED_FUNCTION_28_4(&type metadata for LineLimitExpandAction);
  return v1;
}

unint64_t sub_26A5D73EC()
{
  result = qword_28157D9C8;
  if (!qword_28157D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157D9C8);
  }

  return result;
}

uint64_t sub_26A5D74C0(uint64_t (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_14_16();
  return v2;
}

uint64_t sub_26A5D7518(uint64_t a1, uint64_t (*a2)(void))
{
  v13 = a1;
  v2 = a2();
  return OUTLINED_FUNCTION_16_11(v2, v3, v4, v5, v6, v7, v8, v9, v11, *v12, *&v12[4], v12[6], v13);
}

uint64_t sub_26A5D7570(void (*a1)(void))
{
  a1();
  OUTLINED_FUNCTION_26_7();
  return v2;
}

unint64_t sub_26A5D75B0()
{
  result = qword_28157E820;
  if (!qword_28157E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157E820);
  }

  return result;
}

uint64_t sub_26A5D769C()
{
  v0 = sub_26A5DB450();
  OUTLINED_FUNCTION_2_39(v0, &type metadata for LastComponentBottomSpacingKey);

  return sub_26A84F998();
}

unint64_t sub_26A5D7744()
{
  result = qword_28157F400;
  if (!qword_28157F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F400);
  }

  return result;
}

unint64_t sub_26A5D7818()
{
  result = qword_2803AF9F0;
  if (!qword_2803AF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF9F0);
  }

  return result;
}

unint64_t sub_26A5D78AC()
{
  result = qword_2803AF9F8;
  if (!qword_2803AF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AF9F8);
  }

  return result;
}

uint64_t sub_26A5D7900()
{
  OUTLINED_FUNCTION_6_8();
  v0 = EnvironmentValues.ignoreSeparatorsWhenSizing.getter();
  return OUTLINED_FUNCTION_5_7(v0);
}

unint64_t sub_26A5D798C()
{
  result = qword_2803AFA00;
  if (!qword_2803AFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFA00);
  }

  return result;
}

uint64_t sub_26A5D79E0()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.playerIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26A5D7A08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EnvironmentValues.playerIdentifier.setter(v1, v2);
}

uint64_t EnvironmentValues.sfCommands.getter()
{
  sub_26A5D7A9C();
  OUTLINED_FUNCTION_28_4(&type metadata for Commands);
  return v1;
}

unint64_t sub_26A5D7A9C()
{
  result = qword_28157D9B0;
  if (!qword_28157D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157D9B0);
  }

  return result;
}

unint64_t sub_26A5D7B44()
{
  result = qword_28157F7A8;
  if (!qword_28157F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F7A8);
  }

  return result;
}

uint64_t sub_26A5D7C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A5DAE84(&unk_2803AFA88);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void sub_26A5D7CB4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_26A5D7CC0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8, &qword_26A868130);
  __swift_allocate_value_buffer(v0, qword_28157F7E8);
  v1 = __swift_project_value_buffer(v0, qword_28157F7E8);
  v2 = sub_26A84E408();

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t static ResponseKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28157F7E0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADBC8, &qword_26A868130);
  v3 = __swift_project_value_buffer(v2, qword_28157F7E8);
  return sub_26A51D0F8(v3, a1, &qword_2803ADBC8, &qword_26A868130);
}

uint64_t sub_26A5D7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A5DAE84(&unk_2803A9398);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double sub_26A5D7E84@<D0>(void *a1@<X8>)
{
  if (qword_28157D9B8 != -1)
  {
    swift_once();
  }

  *a1 = qword_28157D9C0;

  return result;
}

uint64_t sub_26A5D7EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A5DAEC8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A5D7F54()
{
  result = sub_26A5D7F74();
  qword_2815889C0 = result;
  return result;
}

uint64_t sub_26A5D7F74()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 2;
  }

  v4 = [v0 currentDevice];
  v5 = sub_26A64E8D8();

  if (v5)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_26A5D8014@<X0>(void *a1@<X8>)
{
  if (qword_28157F7C0 != -1)
  {
    result = swift_once();
  }

  *a1 = qword_2815889C0;
  return result;
}

uint64_t sub_26A5D8070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A5DAE84(&unk_28157D7C0);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A5D8104()
{
  result = sub_26A84BBC8();
  byte_2815889D0 = result & 1;
  return result;
}

uint64_t sub_26A5D814C()
{
  result = _UISolariumEnabled();
  byte_2803D1D89 = result;
  return result;
}

void sub_26A5D8190()
{
  OUTLINED_FUNCTION_32_6();
  if (!v2)
  {
    swift_once();
  }

  *v1 = *v0;
}

uint64_t sub_26A5D81CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A5DB86C(&qword_2803AFA58);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_26A5D8250()
{
  sub_26A4EC5B0(0, &qword_28157D880, 0x277CCAC38);
  result = sub_26A63CD18(v0);
  if (result == 4)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  byte_2803D1D8A = v2;
  return result;
}

uint64_t sub_26A5D82A0@<X0>(_BYTE *a1@<X8>)
{
  if (qword_2803A8B88 != -1)
  {
    result = swift_once();
  }

  *a1 = byte_2803D1D8A;
  return result;
}

uint64_t sub_26A5D82FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A5DAFB8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A5D8378@<X0>(uint64_t a1@<X8>)
{
  if (qword_28157E3A0 != -1)
  {
    swift_once();
  }

  return sub_26A51D0F8(&qword_28157E3A8, a1, &qword_2803ACA10, &qword_26A85BF70);
}

uint64_t sub_26A5D83F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A504FB4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A5D84A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFAD8, &qword_26A867688);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1030, &qword_26A867690);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1040, &qword_26A867698);
  swift_allocObject();
  v11[1] = sub_26A84EBA8();
  sub_26A4EC5B0(0, &qword_28157D830, 0x277D85C78);
  v7 = sub_26A851F28();
  v11[0] = v7;
  v8 = sub_26A851EE8();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v8);
  sub_26A5DB828(&qword_28157FF58);
  sub_26A5DAF78(&qword_28157D840);
  sub_26A84EC68();
  sub_26A4DBD10(v2, &qword_2803AFAD8, &qword_26A867688);

  sub_26A5DB828(&qword_28157FF70);
  v9 = sub_26A84EC48();
  result = (*(v4 + 8))(v6, v3);
  qword_2803AF9C8 = v9;
  return result;
}

uint64_t sub_26A5D873C@<X0>(void *a1@<X8>)
{
  if (qword_2803A8B90 != -1)
  {
    swift_once();
  }

  *a1 = qword_2803AF9C8;
}

uint64_t sub_26A5D87B4(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFA68, &qword_26A86B340);
  swift_allocObject();
  result = sub_26A84EBA8();
  *a2 = result;
  return result;
}

uint64_t sub_26A5D8824()
{
  OUTLINED_FUNCTION_32_6();
  if (!v2)
  {
    swift_once();
  }

  *v1 = *v0;
}

void static HorizontalComponentPadding.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

void sub_26A5D889C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t sub_26A5D88E4(unsigned __int8 a1)
{
  sub_26A8526B8();
  MEMORY[0x26D664930](a1);
  return sub_26A8526F8();
}

uint64_t sub_26A5D892C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A5DB7D4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26A5D89AC()
{
  sub_26A5DB108();
  OUTLINED_FUNCTION_28_4(&type metadata for CarPlayDefaultFocus);
  return v1;
}

uint64_t (*EnvironmentValues.isVibrant.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5D7B44();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11(&type metadata for IsVibrantKey);
  OUTLINED_FUNCTION_0_35();
  return sub_26A5D8A6C;
}

uint64_t (*EnvironmentValues.ignoreSeparatorsWhenSizing.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5D78AC();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11(&type metadata for IgnoreSeparatorsForSizingKey);
  OUTLINED_FUNCTION_0_35();
  return sub_26A5D8AC8;
}

uint64_t EnvironmentValues.visualResponseLocation.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_8_28(a1);
  v1 = sub_26A5D75B0();
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_25_12(&type metadata for RFVisualLocationKey);
  return OUTLINED_FUNCTION_9_27();
}

uint64_t EnvironmentValues.mode.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_8_28(a1);
  v1 = sub_26A5D73EC();
  OUTLINED_FUNCTION_13_17(v1);
  OUTLINED_FUNCTION_25_12(&type metadata for ModeKey);
  return OUTLINED_FUNCTION_9_27();
}

unint64_t sub_26A5D8BA4()
{
  result = qword_28157EBE8;
  if (!qword_28157EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157EBE8);
  }

  return result;
}

uint64_t (*EnvironmentValues.hideRedactions.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5D8BA4();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11(&type metadata for HideRedactionsKey);
  OUTLINED_FUNCTION_0_35();
  return sub_26A5D8C68;
}

uint64_t (*EnvironmentValues.hasComponentBelow.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_34(a1);
  v1 = sub_26A5D6F58();
  OUTLINED_FUNCTION_4_32(v1);
  OUTLINED_FUNCTION_17_11(&type metadata for HasComponentBelow);
  OUTLINED_FUNCTION_0_35();
  return sub_26A5D8CC4;
}