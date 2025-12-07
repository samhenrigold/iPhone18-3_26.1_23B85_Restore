void *sub_27240820C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, double a6, CGFloat a7)
{
  v59 = a7;
  v58 = a6;
  v57 = a3;
  v56 = a1;
  v10 = sub_272433E50();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v54 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F98, &qword_272435CD0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - v18;
  v20 = sub_272433E70();
  (*(*(v20 - 8) + 16))(v19, a5, v20);
  v21 = *(v17 + 44);
  sub_272409ABC();
  sub_272434AE0();
  sub_272434B00();
  if (*&v19[v21] == v67)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_3:
    sub_272409BB4(v19);
    v23 = *(v22 + 2);
    if (v23)
    {
      v24 = v22 + 56;
      v25 = *(v22 + 7);
      v26 = *(v22 + 4);
      v27 = *(v22 + 5);
      v28 = *(v22 + 6);
      do
      {
        *&v26 = CGRectUnion(*&v26, *(v24 - 24));
        v24 += 32;
        --v23;
      }

      while (v23);
    }
  }

  v29 = a2;
  v30 = 0;
  v62 = (v11 + 32);
  v63 = (v11 + 16);
  v61 = (v11 + 8);
  v31 = 0.0;
  v22 = MEMORY[0x277D84F90];
  v55 = v29 & 1;
  v54 = a4 & 1;
  v32 = 0.0;
  v33 = 0.0;
  while (1)
  {
    v34 = sub_272434B20();
    v35 = v64;
    (*v63)(v64);
    v34(&v67, 0);
    sub_272434B10();
    (*v62)(v14, v35, v10);
    if (v30)
    {
      v30 = 1;
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
      v41 = 0.0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    LOBYTE(v67) = v55;
    LOBYTE(v65) = v54;
    sub_272433E30();
    v40 = v42;
    v41 = v43;
    if (v31 + v42 <= v58)
    {
      v44 = v31;
    }

    else
    {
      v32 = v32 + v33 + v60[1];
      v33 = 0.0;
      v44 = 0.0;
    }

    v71.origin.x = v44;
    v71.origin.y = v32;
    v71.size.width = v40;
    v71.size.height = v41;
    if (CGRectGetMaxY(v71) > v59)
    {
      v30 = 1;
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
      v31 = v44;
      v41 = 0.0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_29;
      }

      v31 = v44;
      goto LABEL_25;
    }

    v45 = v60;
    v46 = *v60;
    v72.origin.x = v44;
    v72.origin.y = v32;
    v72.size.width = v40;
    v72.size.height = v41;
    Height = CGRectGetHeight(v72);
    if (v33 <= Height)
    {
      v33 = Height;
    }

    v69 = *(v45 + 2);
    v48 = *(v45 + 6);
    v70 = v48;
    v67 = *(v45 + 2);
    v68 = v48;
    sub_272409B14(&v70, &v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FB0, &unk_272435CE0);
    sub_272434730();
    if ((v66 & 1) == 0)
    {
      break;
    }

    v49 = 1;
LABEL_23:
    v31 = v44 + v40 + v46;
    v67 = v69;
    v68 = v48;
    v65 = v49;
    v66 = 0;
    sub_272434740();
    sub_272409B84(v60);
    v30 = 0;
    v38 = v44;
    v39 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_29:
      v22 = sub_272414EFC(0, *(v22 + 2) + 1, 1, v22, v36, v37);
      goto LABEL_25;
    }

    v38 = v44;
    v39 = v32;
LABEL_25:
    v52 = *(v22 + 2);
    v51 = *(v22 + 3);
    if (v52 >= v51 >> 1)
    {
      v22 = sub_272414EFC((v51 > 1), v52 + 1, 1, v22, v36, v37);
    }

    (*v61)(v14, v10);
    *(v22 + 2) = v52 + 1;
    v53 = &v22[32 * v52];
    *(v53 + 4) = v38;
    *(v53 + 5) = v39;
    *(v53 + 6) = v40;
    *(v53 + 7) = v41;
    sub_272434B00();
    if (*&v19[v21] == v67)
    {
      goto LABEL_3;
    }
  }

  v67 = v69;
  v68 = v48;
  result = sub_272434730();
  if (v66)
  {
    goto LABEL_32;
  }

  v49 = v65 + 1;
  if (!__OFADD__(v65, 1))
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2724087DC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v101 = a9;
  v17 = sub_272433F20();
  v88 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v97 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v96 = &v86 - v20;
  v106 = sub_272433E50();
  v21 = *(v106 - 8);
  v22 = MEMORY[0x28223BE20](v106);
  v111 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v109 = &v86 - v25;
  MEMORY[0x28223BE20](v24);
  *&MinX = &v86 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F98, &qword_272435CD0);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v30 = &v86 - v29;
  v103 = a1;
  v31 = *&a1;
  v104 = a2;
  if (a2)
  {
    v31 = 1.79769313e308;
  }

  v90 = v31;
  v105 = a3;
  v32 = *&a3;
  v102 = a4;
  if (a4)
  {
    v32 = 1.79769313e308;
  }

  v89 = v32;
  v33 = sub_272433E70();
  (*(*(v33 - 8) + 16))(v30, a5, v33);
  v34 = *(v28 + 44);
  sub_272409ABC();
  sub_272434AE0();
  sub_272434B00();
  v35 = *&v30[v34] == v114;
  v100 = a8;
  v99 = a6;
  v98 = v17;
  v87 = v21;
  v95 = a7;
  if (!v35)
  {
    v58 = 0;
    *&MinY = v21 + 16;
    v94 = (v21 + 32);
    v92 = (v21 + 8);
    v59 = 0.0;
    v110 = MEMORY[0x277D84F90];
    v60 = 0.0;
    v61 = 0.0;
    v62 = v106;
    v63 = v109;
    v93 = v34;
    while (1)
    {
      v64 = sub_272434B20();
      v65 = MinX;
      (**&MinY)(COERCE_DOUBLE(*&MinX));
      v64(&v114, 0);
      sub_272434B10();
      (*v94)(v63, COERCE_DOUBLE(*&v65), v62);
      if (v58)
      {
        v66 = v110;
        v58 = 1;
        v69 = 0.0;
        v70 = 0.0;
        v71 = 0.0;
        v72 = 0.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        LOBYTE(v114) = v104 & 1;
        LOBYTE(v112) = v102 & 1;
        sub_272433E30();
        v71 = v73;
        v72 = v74;
        if (v90 >= v59 + v73)
        {
          v75 = v59;
        }

        else
        {
          v60 = v60 + v61 + v91[1];
          v61 = 0.0;
          v75 = 0.0;
        }

        v124.origin.x = v75;
        v124.origin.y = v60;
        v124.size.width = v71;
        v124.size.height = v72;
        if (v89 >= CGRectGetMaxY(v124))
        {
          v76 = v91;
          v77 = *v91;
          v125.origin.x = v75;
          v125.origin.y = v60;
          v125.size.width = v71;
          v125.size.height = v72;
          Height = CGRectGetHeight(v125);
          if (v61 <= Height)
          {
            v61 = Height;
          }

          v116 = *(v76 + 2);
          v79 = *(v76 + 6);
          v117 = v79;
          v114 = *(v76 + 2);
          v115 = v79;
          sub_272409B14(&v117, &v112);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FB0, &unk_272435CE0);
          sub_272434730();
          if (v113)
          {
            v80 = 1;
          }

          else
          {
            v114 = v116;
            v115 = v79;
            result = sub_272434730();
            if (v113)
            {
              goto LABEL_39;
            }

            v80 = v112 + 1;
            if (__OFADD__(v112, 1))
            {
              __break(1u);
              goto LABEL_37;
            }
          }

          v59 = v75 + v71 + v77;
          v114 = v116;
          v115 = v79;
          v112 = v80;
          v113 = 0;
          sub_272434740();
          sub_272409B84(v91);
          v66 = v110;
          v58 = 0;
          v69 = v75;
          v70 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_35:
            v66 = sub_272414EFC(0, *(v66 + 2) + 1, 1, v66, v67, v68);
            goto LABEL_31;
          }

          v69 = v75;
          v70 = v60;
        }

        else
        {
          v66 = v110;
          v58 = 1;
          v69 = 0.0;
          v70 = 0.0;
          v71 = 0.0;
          v59 = v75;
          v72 = 0.0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_35;
          }

          v59 = v75;
        }
      }

LABEL_31:
      v82 = *(v66 + 2);
      v81 = *(v66 + 3);
      v110 = v66;
      v62 = v106;
      if (v82 >= v81 >> 1)
      {
        v85 = sub_272414EFC((v81 > 1), v82 + 1, 1, v110, v67, v68);
        v62 = v106;
        v110 = v85;
      }

      v63 = v109;
      (*v92)(v109, v62);
      v83 = v110;
      *(v110 + 2) = v82 + 1;
      v84 = &v83[32 * v82];
      *(v84 + 4) = v69;
      *(v84 + 5) = v70;
      *(v84 + 6) = v71;
      *(v84 + 7) = v72;
      sub_272434B00();
      if (*&v30[v93] == v114)
      {
        goto LABEL_8;
      }
    }
  }

  v110 = MEMORY[0x277D84F90];
LABEL_8:
  sub_272409BB4(v30);
  sub_272434AE0();
  sub_272434B00();
  result = sub_272434AF0();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
  }

  else
  {
    v37 = result;
    if (!result)
    {
    }

    if (result <= *(v110 + 2))
    {
      v38 = 0;
      v94 = (v88 + 8);
      v92 = (v87 + 8);
      v39 = (v110 + 56);
      v93 = v37;
      v40 = (v88 + 8);
      do
      {
        v109 = v38 + 1;
        sub_272433E80();
        v41 = *(v39 - 3);
        v42 = *(v39 - 2);
        v43 = *(v39 - 1);
        v44 = *v39;
        v118.origin.x = v41;
        v118.origin.y = v42;
        v118.size.width = v43;
        v118.size.height = *v39;
        MinX = CGRectGetMinX(v118);
        v45 = v99;
        v119.origin.x = v99;
        v46 = v95;
        v119.origin.y = v95;
        v47 = v100;
        v119.size.width = v100;
        v48 = v101;
        v119.size.height = v101;
        MinX = MinX + CGRectGetMinX(v119);
        v120.origin.x = v41;
        v120.origin.y = v42;
        v120.size.width = v43;
        v120.size.height = v44;
        MinY = CGRectGetMinY(v120);
        v121.origin.x = v45;
        v121.origin.y = v46;
        v121.size.width = v47;
        v121.size.height = v48;
        CGRectGetMinY(v121);
        v122.origin.x = v41;
        v122.origin.y = v42;
        v122.size.width = v43;
        v122.size.height = v44;
        CGRectGetWidth(v122);
        v123.origin.x = v41;
        v123.origin.y = v42;
        v123.size.width = v43;
        v123.size.height = v44;
        CGRectGetHeight(v123);
        CGSizeMake();
        sub_272434890();
        v49 = v104 & 1;
        LOBYTE(v114) = v104 & 1;
        v50 = v102 & 1;
        LOBYTE(v112) = v102 & 1;
        v51 = v96;
        sub_272433E20();
        sub_272433F00();
        v53 = v52;
        v54 = *v40;
        v55 = v51;
        v56 = v98;
        (*v40)(v55, v98);
        MinX = v53;
        LOBYTE(v114) = v49;
        LOBYTE(v112) = v50;
        v57 = v97;
        sub_272433E20();
        sub_272433F10();
        v54(v57, v56);
        LOBYTE(v114) = 0;
        LOBYTE(v112) = 0;
        sub_272433E40();
        (*v92)(v111, v106);
        v39 += 4;
        v38 = v109;
      }

      while (v93 != v109);
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t (*sub_272409370(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_272433CA0();
  return sub_2724093F8;
}

void sub_2724093F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
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

unint64_t sub_2724095F8()
{
  result = qword_280895F38;
  if (!qword_280895F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F30, &unk_272435EE0);
    sub_272409784(&qword_280895F40, &qword_280895F48, &unk_272435B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895F38);
  }

  return result;
}

unint64_t sub_27240969C()
{
  result = qword_280895F50;
  if (!qword_280895F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F28, &unk_272435B20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F58, &unk_272435ED0);
    sub_272409784(&qword_280895F60, &qword_280895F58, &unk_272435ED0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895F50);
  }

  return result;
}

uint64_t sub_272409784(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2724097E8(uint64_t a1, int a2)
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

uint64_t sub_272409808(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_272409878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_2724098D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_272409964(uint64_t a1, int a2)
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

uint64_t sub_272409984(uint64_t result, int a2, int a3)
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

void sub_2724099C0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_272409A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280895F88;
  if (!qword_280895F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895F88);
  }

  return result;
}

unint64_t sub_272409A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280895F90;
  if (!qword_280895F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895F90);
  }

  return result;
}

unint64_t sub_272409ABC()
{
  result = qword_280895FA0;
  if (!qword_280895FA0)
  {
    sub_272433E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895FA0);
  }

  return result;
}

uint64_t sub_272409B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FA8, &qword_272435CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_272409BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F98, &qword_272435CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_272409C50@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FB8, &qword_272435D98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_272435CF0;
  v5 = sub_2724343C0();
  *(inited + 32) = v5;
  v6 = sub_2724343E0();
  *(inited + 33) = v6;
  v7 = sub_2724343D0();
  sub_2724343D0();
  if (sub_2724343D0() != v5)
  {
    v7 = sub_2724343D0();
  }

  sub_2724343D0();
  if (sub_2724343D0() != v6)
  {
    v7 = sub_2724343D0();
  }

  sub_272409E28(a1, &v15);
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v31[0] = v15;
  v31[1] = v16;
  v31[2] = v17;
  v31[3] = v18;
  v31[4] = v19;
  v31[5] = v20;
  v31[6] = v21;
  v32 = v22;
  sub_27240A0F0(&v23, &v14, &qword_280895FC0, &qword_272435DA0);
  sub_27240A158(v31, &qword_280895FC0, &qword_272435DA0);
  *&v33[23] = v24;
  *&v33[7] = v23;
  *&v33[87] = v28;
  *&v33[71] = v27;
  *&v33[103] = v29;
  *&v33[119] = v30;
  *&v33[39] = v25;
  *&v33[55] = v26;
  *a2 = v7;
  v8 = *v33;
  v9 = *&v33[16];
  v10 = *&v33[32];
  *(a2 + 49) = *&v33[48];
  *(a2 + 33) = v10;
  *(a2 + 17) = v9;
  *(a2 + 1) = v8;
  result = *&v33[64];
  v12 = *&v33[80];
  v13 = *&v33[96];
  *(a2 + 112) = *&v33[111];
  *(a2 + 97) = v13;
  *(a2 + 81) = v12;
  *(a2 + 65) = result;
  return result;
}

uint64_t sub_272409E28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2724340D0();
  sub_272409F88(a1, &v29);
  v5 = v29;
  v6 = v30;
  v7 = v31;
  v8 = v32;
  v9 = v33;
  v10 = v34;
  LOBYTE(v29) = v33;
  sub_272434850();
  sub_272433DE0();
  v11 = v19;
  v12 = v21;
  *&v24 = v4;
  *(&v24 + 1) = 0x3FF0000000000000;
  LOBYTE(v25) = 0;
  *(&v25 + 1) = v5;
  LOBYTE(v26) = v6;
  *(&v26 + 1) = v7;
  *&v27 = v8;
  BYTE8(v27) = v9;
  v28 = v10;
  v18[80] = v20;
  v18[72] = v22;
  v13 = v20;
  v14 = v22;
  v15 = v27;
  *(a2 + 32) = v26;
  *(a2 + 48) = v15;
  v16 = v25;
  *a2 = v24;
  *(a2 + 16) = v16;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = v13;
  *(a2 + 88) = v12;
  *(a2 + 96) = v14;
  *(a2 + 104) = v23;
  v29 = v4;
  v30 = 0x3FF0000000000000;
  LOBYTE(v31) = 0;
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  sub_27240A0F0(&v24, v18, &qword_280895FC8, &qword_272435DA8);
  return sub_27240A158(&v29, &qword_280895FC8, &qword_272435DA8);
}

uint64_t sub_272409F88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  if ([v3 isWhiteSpace])
  {

    v4 = 0;
  }

  else
  {
    v5 = v3;
    v4 = v3;
  }

  v6 = [v3 displayedText];
  v7 = [v6 string];

  sub_272434930();
  sub_27240A1B8(v8, v9, v10);
  v11 = sub_2724344C0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v4;
  v15 &= 1u;
  sub_27240A20C(v11, v13, v15);

  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  sub_27240A21C(v11, v13, v15, v19, v20);
}

uint64_t sub_27240A0F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_27240A158(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_27240A1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280895FD0;
  if (!qword_280895FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895FD0);
  }

  return result;
}

uint64_t sub_27240A20C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_27240A21C(uint64_t a1, uint64_t a2, char a3, __n128 a4, __n128 a5)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_27240A230()
{
  result = qword_280895FD8;
  if (!qword_280895FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895FE0, &unk_272435DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895FD8);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27240A2B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_27240A2F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27240A374@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FE8, &qword_272435E60);
  v64 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v63 = v61 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FF0, &qword_272435E68);
  MEMORY[0x28223BE20](v78);
  v80 = v61 - v3;
  v76 = sub_272434340();
  v67 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v66 = (v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v77 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F20, &qword_272435E70));
  v65 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = v61 - v5;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FF8, &qword_272435E78);
  v69 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v68 = v61 - v6;
  v72 = sub_272434330();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v8 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v84 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896000, &qword_272435E80));
  v83 = *(v84 - 8);
  v9 = MEMORY[0x28223BE20](v84);
  v62 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[2] = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v61 - v11;
  v13 = *(v1 + 24);
  v61[0] = *(v1 + 16);
  OpaqueTypeConformance2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  v61[1] = v13;
  sub_272433C00();

  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  MinX = CGRectGetMinX(v87);
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = width;
  v94.size.height = height;
  MaxY = CGRectGetMaxY(v94);
  v20 = sub_2724340D0();
  sub_27240AFDC(&v87);
  v21 = v87.origin.x;
  v22 = *&v87.origin.y;
  v23 = *&v87.size.width;
  v24 = BYTE1(v87.size.height);
  height_low = LOBYTE(v87.size.height);
  v93 = 1;
  v92 = BYTE1(v87.size.height);
  *&v87.origin.x = v20;
  v87.origin.y = 0.0;
  LOBYTE(v87.size.width) = 1;
  v87.size.height = v21;
  v88 = *&v22;
  v89 = v23;
  LOBYTE(v90) = height_low;
  BYTE1(v90) = v92;
  sub_272434320();
  *&v26 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F58, &unk_272435ED0));
  *&v27 = COERCE_DOUBLE(sub_272409784(&qword_280895F60, &qword_280895F58, &unk_272435ED0));
  v85 = v12;
  v74 = *&v26;
  v28 = v72;
  v73 = *&v27;
  sub_272434600();
  v29 = *(v71 + 8);
  v30.n128_f64[0] = v29(v8, v28);
  sub_27240B3FC(*&v21, v30, v31, v22, v23, height_low, v24);
  if (*(OpaqueTypeConformance2 + 48))
  {
    *&v87.origin.x = sub_2724340D0();
    v87.origin.y = 0.0;
    LOBYTE(v87.size.width) = 1;
    v87.size.height = MinX;
    v88 = MaxY;
    sub_272434320();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F30, &unk_272435EE0);
    v32 = sub_2724095F8();
    sub_272434600();
    v29(v8, v28);
    type metadata accessor for VCUIBadgedTextOverlayModel(0);
    sub_27240B410();
    sub_272433EA0();
    swift_getKeyPath();
    sub_272433EB0();

    LODWORD(v72) = v86;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    v33 = sub_272434770();
    v34 = v66;
    *v66 = v33;
    v35 = v67;
    (*(v67 + 104))(v34, *MEMORY[0x277CDE248], v76);
    v36 = v83;
    v37 = v62;
    v38 = v84;
    (*(v83 + 16))(v62, v85, v84);
    v39 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v40 = swift_allocObject();
    (*(v36 + 32))(v40 + v39, v37, v38);
    MEMORY[0x2743C8A70](2);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F28, &unk_272435B20);
    *&v87.origin.x = v71;
    *&v87.origin.y = v32;
    v71 = MEMORY[0x277CDED28];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v60 = sub_27240969C();
    v42 = *&v77;
    v43 = v68;
    v44 = v75;
    sub_272434520();

    (*(v35 + 8))(v34, v76);
    (*(v65 + 8))(v44, COERCE_CGFLOAT(*&v42));
    v45 = v69;
    v46 = v43;
    v47 = v79;
    (*(v69 + 16))(v80, v43, v79);
    swift_storeEnumTagMultiPayload();
    v87.origin.x = v42;
    *&v87.origin.y = v41;
    *&v87.size.width = OpaqueTypeConformance2;
    *&v87.size.height = v60;
    v48 = *&v84;
    swift_getOpaqueTypeConformance2();
    v87.origin.x = v74;
    v87.origin.y = v73;
    v49 = swift_getOpaqueTypeConformance2();
    v87.origin.x = v48;
    *&v87.origin.y = MEMORY[0x277CE1350];
    *&v87.size.width = v41;
    *&v87.size.height = v41;
    v88 = *&v49;
    v89 = MEMORY[0x277CE1340];
    v90 = v60;
    v91 = v60;
    swift_getOpaqueTypeConformance2();
    sub_272434290();
    (*(v45 + 8))(v46, v47);
  }

  else
  {
    sub_272434840();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F28, &unk_272435B20);
    v87.origin.x = v74;
    v87.origin.y = v73;
    v51 = swift_getOpaqueTypeConformance2();
    v59 = sub_27240969C();
    v52 = v63;
    v48 = *&v84;
    sub_272434680();
    v53 = v64;
    v54 = v82;
    (*(v64 + 16))(v80, v52, v82);
    swift_storeEnumTagMultiPayload();
    v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F30, &unk_272435EE0);
    v56 = sub_2724095F8();
    *&v87.origin.x = v55;
    *&v87.origin.y = v56;
    v57 = swift_getOpaqueTypeConformance2();
    *&v87.origin.x = v77;
    *&v87.origin.y = v50;
    *&v87.size.width = v57;
    *&v87.size.height = v59;
    swift_getOpaqueTypeConformance2();
    v87.origin.x = v48;
    *&v87.origin.y = MEMORY[0x277CE1350];
    *&v87.size.width = v50;
    *&v87.size.height = v50;
    v88 = *&v51;
    v89 = MEMORY[0x277CE1340];
    v90 = v59;
    v91 = v59;
    swift_getOpaqueTypeConformance2();
    sub_272434290();
    (*(v53 + 8))(v52, v54);
  }

  return (*(v83 + 8))(v85, COERCE_CGFLOAT(*&v48));
}

uint64_t sub_27240AFDC@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  if (v10 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    sub_27240EE70(3, 1, 0, 1, *(&v10 + 1));

LABEL_5:
    v6 = sub_27240B590(v3, v4, v5);
    sub_27240B5E4(v6, v7, v8);
    sub_272434290();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896020, &qword_272435FF0);
    sub_27240B638();
    result = sub_272434290();
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 25) = v13;
    return result;
  }

  if (!v10)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    sub_27240EE70(2, 0, 1, 0, *(&v10 + 1));

    goto LABEL_5;
  }

  result = sub_272434CC0();
  __break(1u);
  return result;
}

double sub_27240B2E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *&result = sub_27240B2F8(a1, a2, _Q0).n128_u64[0];
  return result;
}

double sub_27240B2F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __asm { FMOV            V0.2D, #5.0 }

  *&result = sub_27240B2F8(a1, a2, _Q0).n128_u64[0];
  return result;
}

__n128 sub_27240B2F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v5 = sub_2724343F0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896000, &qword_272435E80);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F28, &unk_272435B20) + 36);
  *v7 = v5;
  result = a3;
  *(v7 + 8) = a3;
  *(v7 + 24) = a3;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_27240B3FC(uint64_t result, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    return j__swift_bridgeObjectRelease(result, a2, a3);
  }

  return result;
}

unint64_t sub_27240B410()
{
  result = qword_280896008;
  if (!qword_280896008)
  {
    type metadata accessor for VCUIBadgedTextOverlayModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896008);
  }

  return result;
}

uint64_t sub_27240B470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896000, &qword_272435E80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_27240B504@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896000, &qword_272435E80) - 8);
  __asm { FMOV            V0.2D, #5.0 }

  *&result = sub_27240B2F8(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), a1, _Q0).n128_u64[0];
  return result;
}

unint64_t sub_27240B590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896010;
  if (!qword_280896010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896010);
  }

  return result;
}

unint64_t sub_27240B5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896018;
  if (!qword_280896018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896018);
  }

  return result;
}

unint64_t sub_27240B638()
{
  result = qword_280896028;
  if (!qword_280896028)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896020, &qword_272435FF0);
    v6 = sub_27240B590(v1, v2, v3);
    sub_27240B5E4(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896028);
  }

  return result;
}

unint64_t sub_27240B6C8()
{
  result = qword_280896030;
  if (!qword_280896030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896038, &qword_272435FF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F20, &qword_272435E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F28, &unk_272435B20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F30, &unk_272435EE0);
    sub_2724095F8();
    swift_getOpaqueTypeConformance2();
    sub_27240969C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896000, &qword_272435E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F58, &unk_272435ED0);
    sub_272409784(&qword_280895F60, &qword_280895F58, &unk_272435ED0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896030);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_27240B8C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_27240B910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27240B97C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896088, &unk_272436460);
  sub_272434720();
  *a2 = xmmword_272436010;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  if (a1 >> 62 && sub_272434CD0() < 0)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896040, &qword_2724360A8);
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896090, &qword_2724360F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896078, qword_2724360C0);
  sub_27240BE90();
  sub_27240BD74();
  return sub_272434830();
}

unint64_t sub_27240BB28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  if (result > 49)
  {
    result = 0;
    goto LABEL_7;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2743C92B0]();
    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(a2 + 8 * result + 32);
LABEL_7:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_27240BB98()
{
  sub_2724343E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896040, &qword_2724360A8);
  sub_27240BC38();
  return sub_272433D20();
}

unint64_t sub_27240BC38()
{
  result = qword_280896048;
  if (!qword_280896048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896040, &qword_2724360A8);
    sub_27240BFB4(&qword_280896050, &qword_280896058, &qword_2724360B0, MEMORY[0x277CDF510]);
    sub_27240BCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896048);
  }

  return result;
}

unint64_t sub_27240BCF0()
{
  result = qword_280896060;
  if (!qword_280896060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896068, &qword_2724360B8);
    sub_27240BD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896060);
  }

  return result;
}

unint64_t sub_27240BD74()
{
  result = qword_280896070;
  if (!qword_280896070)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896078, qword_2724360C0);
    sub_27240BDF8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896070);
  }

  return result;
}

unint64_t sub_27240BDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896080;
  if (!qword_280896080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896080);
  }

  return result;
}

uint64_t sub_27240BE4C(__n128 a1, __n128 a2)
{

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

unint64_t sub_27240BE90()
{
  result = qword_280896098;
  if (!qword_280896098)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896090, &qword_2724360F0);
    sub_27240BF1C(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896098);
  }

  return result;
}

unint64_t sub_27240BF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2808960A0;
  if (!qword_2808960A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808960A0);
  }

  return result;
}

uint64_t sub_27240BFB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_27240BFFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_27240C044(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_27240C0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v23 = a2;
  v28 = a3;
  v3 = sub_272433F80();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8, &qword_2724361A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960C0, &qword_2724361A8);
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v21 - v10;
  sub_272434120();
  v12 = swift_allocObject();
  *(v12 + 16) = v22;
  *(v12 + 24) = v23;

  sub_2724347A0();
  sub_272433F70();
  v13 = sub_27240BFB4(&qword_280896620, &qword_2808960B8, &qword_2724361A0, MEMORY[0x277CDF028]);
  sub_272434550();
  (*(v25 + 8))(v5, v26);
  (*(v7 + 8))(v9, v6);
  KeyPath = swift_getKeyPath();
  v30 = v13;
  v31 = KeyPath;
  v32 = 0;
  v29 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_27240E6AC(OpaqueTypeConformance2, v16, v17);
  v18 = v24;
  sub_272434510();
  v19 = sub_27240E700(v31, v32);
  return (*(v27 + 8))(v11, v18, v19);
}

uint64_t sub_27240C3FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27240C45C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_272434170();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960D0, &qword_272436290);
  MEMORY[0x28223BE20](v5);
  v7 = (&v22 - v6);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960D8, &qword_272436298);
  MEMORY[0x28223BE20](v24);
  v9 = &v22 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  *v7 = sub_272434850();
  v7[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960E0, &unk_2724362A0);
  sub_27240C7D8(v10, v11, (v7 + *(v13 + 44)));
  v28 = v10;
  v29 = v11;
  v26 = sub_27240E1E8();
  v27 = v14;
  v15 = sub_27240BFB4(&qword_2808960E8, &qword_2808960D0, &qword_272436290, MEMORY[0x277CE11A8]);
  sub_27240A1B8(v15, v16, v17);
  sub_272434560();

  sub_27240A158(v7, &qword_2808960D0, &qword_272436290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808968D0, &unk_2724370E0);
  v18 = v22;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_272435CF0;
  sub_272434160();
  sub_272434150();
  v26 = v19;
  sub_27240EE28(&qword_2808960F0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808968E0, &qword_2724362B0);
  sub_27240BFB4(&qword_2808960F8, &unk_2808968E0, &qword_2724362B0, MEMORY[0x277D83970]);
  v20 = v23;
  sub_272434C50();
  sub_272433F30();
  (*(v18 + 8))(v4, v20);
  return sub_27240A158(v9, &qword_2808960D8, &qword_272436298);
}

uint64_t sub_27240C7D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v25 = a2;
  v26 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896100, &qword_2724362B8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v24 - v8);
  v10 = objc_opt_self();
  v11 = [v10 systemGrayColor];
  v12 = sub_272434690();
  v24 = v12;
  CGSizeMake();
  sub_272434850();
  sub_272433DE0();
  *&v28[3] = *&v28[27];
  *&v28[11] = *&v28[35];
  *&v28[19] = *&v28[43];
  v13 = [v10 systemBackgroundColor];
  v14 = sub_272434690();
  CGSizeMake();
  sub_272434850();
  sub_272433DE0();
  *&v27[6] = *&v28[51];
  *&v27[22] = *&v28[59];
  *&v27[38] = *&v28[67];
  *v9 = sub_272434850();
  v9[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896108, &qword_2724362C0);
  sub_27240CB64(v26, v25 & 1, v9 + *(v16 + 44));
  sub_27240A0F0(v9, v7, &qword_280896100, &qword_2724362B8);
  *&v29[0] = v12;
  WORD4(v29[0]) = 256;
  *(v29 + 10) = *v28;
  *(&v29[1] + 10) = *&v28[8];
  *(&v29[2] + 10) = *&v28[16];
  *(&v29[3] + 1) = *&v28[23];
  *&v30[0] = v14;
  v17 = v29[1];
  *a3 = v29[0];
  a3[1] = v17;
  v18 = v29[3];
  a3[2] = v29[2];
  a3[3] = v18;
  WORD4(v30[0]) = 256;
  *(v30 + 10) = *v27;
  *(&v30[3] + 1) = *&v27[46];
  *(&v30[2] + 10) = *&v27[32];
  *(&v30[1] + 10) = *&v27[16];
  v19 = v30[0];
  v20 = v30[1];
  v21 = v30[3];
  a3[6] = v30[2];
  a3[7] = v21;
  a3[4] = v19;
  a3[5] = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896110, &qword_2724362C8);
  sub_27240A0F0(v7, a3 + *(v22 + 64), &qword_280896100, &qword_2724362B8);
  sub_27240A0F0(v29, &v36, &qword_280896118, &qword_2724362D0);
  sub_27240A0F0(v30, &v36, &qword_280896118, &qword_2724362D0);
  sub_27240A158(v9, &qword_280896100, &qword_2724362B8);
  sub_27240A158(v7, &qword_280896100, &qword_2724362B8);
  v31 = v14;
  v32 = 256;
  v33 = *v27;
  v34 = *&v27[16];
  *v35 = *&v27[32];
  *&v35[14] = *&v27[46];
  sub_27240A158(&v31, &qword_280896118, &qword_2724362D0);
  v36 = v24;
  v37 = 256;
  v38 = *v28;
  v39 = *&v28[8];
  *v40 = *&v28[16];
  *&v40[14] = *&v28[23];
  return sub_27240A158(&v36, &qword_280896118, &qword_2724362D0);
}

uint64_t sub_27240CB64@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v123 = a1;
  v128 = a3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896120, &qword_2724362D8);
  MEMORY[0x28223BE20](v121);
  v97 = &v96 - v3;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896128, &qword_2724362E0);
  MEMORY[0x28223BE20](v115);
  v98 = &v96 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896130, &qword_2724362E8);
  MEMORY[0x28223BE20](v118);
  v120 = &v96 - v5;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896138, &qword_2724362F0);
  MEMORY[0x28223BE20](v113);
  v114 = &v96 - v6;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896140, &qword_2724362F8);
  MEMORY[0x28223BE20](v119);
  v116 = &v96 - v7;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896148, &qword_272436300);
  v110 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v108 = &v96 - v8;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896150, &qword_272436308);
  MEMORY[0x28223BE20](v117);
  v99 = &v96 - v9;
  v131 = sub_2724340A0();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896158, &qword_272436310);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v127 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v126 = &v96 - v14;
  v15 = sub_272433F50();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896160, &qword_272436318);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v96 - v24;
  v26 = [objc_opt_self() systemRedColor];
  v125 = sub_272434690();
  CGSizeMake();
  sub_272434850();
  sub_272433DE0();
  *&v139[6] = v140;
  *&v139[22] = v141;
  *&v139[38] = v142;
  sub_2724348A0();
  sub_272433F60();
  sub_272434860();
  v27 = sub_27240EE28(&qword_280896168, MEMORY[0x277CDFAE8], MEMORY[0x277CDFAE0]);
  sub_272433D30();

  v28 = *(v16 + 8);
  v105 = v18;
  v109 = v16 + 8;
  v103 = v28;
  v28(v18, v15);
  v104 = *(v20 + 16);
  v104(v23, v25, v19);
  v106 = v15;
  v134 = v15;
  v102 = v27;
  *v135 = v27;
  v29 = v131;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = v23;
  v31 = v19;
  v124 = sub_272433DF0();
  v32 = *(v20 + 8);
  v100 = v25;
  v111 = v20 + 8;
  v101 = v32;
  v32(v25, v19);
  v33 = v122;
  v34 = v130;
  v35 = v129;
  v36 = v123;
  if (v122)
  {
    LOBYTE(v134) = v123;
    v37 = v123;
  }

  else
  {
    sub_27240E918(v123, 0);
    sub_272434B50();
    v38 = sub_2724343B0();
    sub_272433B90();

    sub_272434090();
    swift_getAtKeyPath();
    v39 = sub_27240E700(v36, 0);
    (*(v34 + 8))(v35, v29, v39);
    v37 = v134;
  }

  if (v37 == 3)
  {

LABEL_7:
    sub_2724346F0();
    v41 = v108;
    sub_272434700();

    swift_getOpaqueTypeConformance2();
    v42 = v99;
    v43 = v112;
    sub_272434610();
    (*(v110 + 8))(v41, v43);
    v44 = sub_2724346C0();
    *(v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896188, &qword_272436338) + 36)) = v44;
    sub_2724348A0();
    v45 = v105;
    sub_272433F60();
    sub_272434860();
    v46 = v100;
    v47 = v106;
    sub_272433D30();

    v103(v45, v47);
    v104(v107, v46, v31);
    v48 = sub_272433DF0();
    v101(v46, v31);
    *(v42 + *(v117 + 36)) = v48;
    v49 = &qword_280896150;
    v50 = &qword_272436308;
    sub_27240A0F0(v42, v114, &qword_280896150, &qword_272436308);
    swift_storeEnumTagMultiPayload();
    sub_27240E9B0();
    sub_27240EB74();
    v51 = v116;
    sub_272434290();
    sub_27240A0F0(v51, v120, &qword_280896140, &qword_2724362F8);
    swift_storeEnumTagMultiPayload();
    sub_27240E924();
    sub_27240EC58();
    v52 = v126;
    sub_272434290();
    sub_27240A158(v51, &qword_280896140, &qword_2724362F8);
    v53 = v42;
LABEL_30:
    sub_27240A158(v53, v49, v50);
    goto LABEL_31;
  }

  v40 = sub_272434CF0();

  if (v40)
  {
    goto LABEL_7;
  }

  v123 = OpaqueTypeConformance2;
  if (v33)
  {
    LOBYTE(v134) = v36;
    v54 = v36;
  }

  else
  {
    sub_27240E918(v36, 0);
    sub_272434B50();
    v55 = sub_2724343B0();
    sub_272433B90();

    v56 = v129;
    sub_272434090();
    swift_getAtKeyPath();
    v57 = sub_27240E700(v36, 0);
    (*(v130 + 8))(v56, v131, v57);
    v54 = v134;
  }

  if (v54 > 2u && v54 <= 4u && v54 != 3)
  {

LABEL_16:
    v59 = v98;
    sub_272433DD0();
    v60 = sub_2724346C0();
    KeyPath = swift_getKeyPath();
    v62 = (v59 + *(v115 + 36));
    *v62 = KeyPath;
    v62[1] = v60;
    sub_27240A0F0(v59, v114, &qword_280896128, &qword_2724362E0);
    swift_storeEnumTagMultiPayload();
    sub_27240E9B0();
    sub_27240EB74();
    v63 = v116;
    sub_272434290();
    sub_27240A0F0(v63, v120, &qword_280896140, &qword_2724362F8);
    swift_storeEnumTagMultiPayload();
    sub_27240E924();
    sub_27240EC58();
    v52 = v126;
    sub_272434290();
    sub_27240A158(v63, &qword_280896140, &qword_2724362F8);
    sub_27240A158(v59, &qword_280896128, &qword_2724362E0);
LABEL_31:
    v73 = 0;
    goto LABEL_32;
  }

  v58 = sub_272434CF0();

  if (v58)
  {
    goto LABEL_16;
  }

  if (v33)
  {
    LOBYTE(v134) = v36;
    v64 = v36;
  }

  else
  {
    sub_27240E918(v36, 0);
    sub_272434B50();
    v65 = sub_2724343B0();
    sub_272433B90();

    v66 = v129;
    sub_272434090();
    swift_getAtKeyPath();
    v67 = sub_27240E700(v36, 0);
    (*(v130 + 8))(v66, v131, v67);
    v64 = v134;
  }

  if (v64 == 5)
  {
    goto LABEL_28;
  }

  v68 = sub_272434CF0();

  if (v68)
  {
LABEL_29:
    sub_2724346F0();
    v74 = v108;
    sub_272434700();

    swift_getOpaqueTypeConformance2();
    v75 = v97;
    v76 = v112;
    sub_272434610();
    (*(v110 + 8))(v74, v76);
    v77 = sub_2724346C0();
    *(v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896188, &qword_272436338) + 36)) = v77;
    sub_2724348A0();
    v78 = v105;
    sub_272433F60();
    sub_272434860();
    v79 = v100;
    v80 = v106;
    sub_272433D30();

    v103(v78, v80);
    v104(v107, v79, v31);
    v81 = sub_272433DF0();
    v101(v79, v31);
    *(v75 + *(v117 + 36)) = v81;
    LOBYTE(v81) = sub_272434410();
    sub_272433CE0();
    v82 = v75 + *(v121 + 36);
    *v82 = v81;
    *(v82 + 8) = v83;
    *(v82 + 16) = v84;
    *(v82 + 24) = v85;
    *(v82 + 32) = v86;
    *(v82 + 40) = 0;
    v49 = &qword_280896120;
    v50 = &qword_2724362D8;
    sub_27240A0F0(v75, v120, &qword_280896120, &qword_2724362D8);
    swift_storeEnumTagMultiPayload();
    sub_27240E924();
    sub_27240EC58();
    v52 = v126;
    sub_272434290();
    v53 = v75;
    goto LABEL_30;
  }

  if (v33)
  {
    LOBYTE(v134) = v36;
  }

  else
  {
    sub_27240E918(v36, 0);
    sub_272434B50();
    v69 = sub_2724343B0();
    sub_272433B90();

    v70 = v129;
    sub_272434090();
    swift_getAtKeyPath();
    v71 = sub_27240E700(v36, 0);
    (*(v130 + 8))(v70, v131, v71);
    LOBYTE(v36) = v134;
  }

  if (v36 > 5u)
  {
LABEL_28:

    goto LABEL_29;
  }

  v72 = sub_272434CF0();

  if (v72)
  {
    goto LABEL_29;
  }

  v73 = 1;
  v52 = v126;
LABEL_32:
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896170, &qword_272436320);
  (*(*(v87 - 8) + 56))(v52, v73, 1, v87);
  v88 = v127;
  sub_27240A0F0(v52, v127, &qword_280896158, &qword_272436310);
  v89 = v125;
  *v132 = v125;
  *&v132[8] = 256;
  *&v132[26] = *&v139[16];
  *&v132[10] = *v139;
  *&v132[42] = *&v139[32];
  *&v132[56] = *&v139[46];
  v90 = v124;
  v133 = v124;
  v91 = v128;
  *(v128 + 64) = v124;
  v92 = *&v132[48];
  v91[2] = *&v132[32];
  v91[3] = v92;
  v93 = *&v132[16];
  *v91 = *v132;
  v91[1] = v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896178, &qword_272436328);
  sub_27240A0F0(v88, v91 + *(v94 + 48), &qword_280896158, &qword_272436310);
  sub_27240A0F0(v132, &v134, &qword_280896180, &qword_272436330);
  sub_27240A158(v52, &qword_280896158, &qword_272436310);
  sub_27240A158(v88, &qword_280896158, &qword_272436310);
  v134 = v89;
  *v135 = 256;
  *&v135[2] = *v139;
  v136 = *&v139[16];
  *v137 = *&v139[32];
  *&v137[14] = *&v139[46];
  v138 = v90;
  return sub_27240A158(&v134, &qword_280896180, &qword_272436330);
}

uint64_t sub_27240E1E8()
{
  v1 = sub_272433B30();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272434900();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = sub_2724340A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  if (*(v0 + 8) == 1)
  {
    v23 = *v0;
  }

  else
  {

    sub_272434B50();
    v14 = sub_2724343B0();
    v22 = v8;
    v15 = v2;
    v16 = v14;
    sub_272433B90();

    v2 = v15;
    v8 = v22;
    sub_272434090();
    swift_getAtKeyPath();
    v17 = sub_27240E700(v13, 0);
    (*(v10 + 8))(v12, v9, v17);
  }

  sub_2724348F0();
  (*(v3 + 16))(v6, v8, v2);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v20 = sub_272434950();
  (*(v3 + 8))(v8, v2);
  return v20;
}

unint64_t sub_27240E6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2808960C8;
  if (!qword_2808960C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808960C8);
  }

  return result;
}

double sub_27240E700(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_27240E72C(uint64_t a1, unsigned int a2)
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

uint64_t sub_27240E774(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_27240E7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808960C0, &qword_2724361A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808960B8, &qword_2724361A0);
  sub_27240BFB4(&qword_280896620, &qword_2808960B8, &qword_2724361A0, MEMORY[0x277CDF028]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_27240E6AC(OpaqueTypeConformance2, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_27240E8CC()
{
  result = qword_280896670;
  if (!qword_280896670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280896670);
  }

  return result;
}

uint64_t sub_27240E918(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_27240E924()
{
  result = qword_280896190;
  if (!qword_280896190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896140, &qword_2724362F8);
    sub_27240E9B0();
    sub_27240EB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896190);
  }

  return result;
}

unint64_t sub_27240E9B0()
{
  result = qword_280896198;
  if (!qword_280896198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896150, &qword_272436308);
    sub_27240EA68();
    sub_27240BFB4(&qword_2808961B8, &qword_2808961C0, &qword_272436348, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896198);
  }

  return result;
}

unint64_t sub_27240EA68()
{
  result = qword_2808961A0;
  if (!qword_2808961A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896188, &qword_272436338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896148, &qword_272436300);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27240BFB4(&qword_2808961A8, &qword_2808961B0, &qword_272436340, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808961A0);
  }

  return result;
}

unint64_t sub_27240EB74()
{
  result = qword_2808961C8;
  if (!qword_2808961C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896128, &qword_2724362E0);
    sub_27240BFB4(&qword_2808961D0, &qword_2808961D8, &qword_272436350, MEMORY[0x277CDD7F8]);
    sub_27240BFB4(&qword_2808961E0, &qword_2808961E8, &qword_272436358, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808961C8);
  }

  return result;
}

unint64_t sub_27240EC58()
{
  result = qword_2808961F0;
  if (!qword_2808961F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896120, &qword_2724362D8);
    sub_27240E9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808961F0);
  }

  return result;
}

uint64_t sub_27240ECE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_272434070();
  *a1 = result;
  return result;
}

unint64_t sub_27240ED40()
{
  result = qword_2808961F8;
  if (!qword_2808961F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808960D8, &qword_272436298);
    sub_27240BFB4(&qword_2808960E8, &qword_2808960D0, &qword_272436290, MEMORY[0x277CE11A8]);
    sub_27240EE28(&qword_280896890, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808961F8);
  }

  return result;
}

uint64_t sub_27240EE28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27240EE70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = 15;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = v10;
  *(v12 + 56) = v9;

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896200, &qword_272436390);
  sub_27240A1B8(v13, v14, v15);
  sub_27240BFB4(&qword_280896208, &qword_280896200, &qword_272436390, MEMORY[0x277D83D30]);
  sub_272434C00();

  swift_beginAccess();
  v16 = *(v9 + 16);

  return v16;
}

uint64_t sub_27240F078(__n128 a1, __n128 a2)
{

  return MEMORY[0x2821FE8E8](v2, 24, 7);
}

void sub_27240F0C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v97 = a4;
  v17 = sub_272433B30();
  MEMORY[0x28223BE20](v17 - 8);
  v98 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896210, &qword_272436398);
  v99 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v87 - v20;
  v22 = sub_272433AC0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a8)
    {
      goto LABEL_6;
    }

    v104 = a1;
    v105 = a2;
    v26 = sub_272433AA0();
    sub_27240A1B8(v26, v27, v28);
    v29 = sub_272434BF0();
    v31 = v30;
    (*(v23 + 8))(v25, v22);

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
LABEL_6:
      v95 = v21;
      v96 = v19;
      v94 = a13;
      v33 = a3;
      swift_beginAccess();
      v93 = a9;
      if ((*(a9 + 16) ^ a3) >= 0x4000)
      {
        v89 = *(a9 + 16);
        v90 = a10;
        v102 = a10;
        v103 = a11;
        v92 = a11;
        v34 = sub_272433AB0();
        sub_27240A1B8(v34, v35, v36);
        v37 = sub_272434BE0();
        (*(v23 + 8))(v25, v22);
        v102 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896960, &qword_2724363A0);
        sub_27240BFB4(&qword_280896218, &qword_280896960, &qword_2724363A0, MEMORY[0x277D83958]);
        sub_2724348E0();

        v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v39 = sub_272434910();

        v88 = [v38 initWithString_];

        swift_beginAccess();
        v101[0] = *(a12 + 16);
        v40 = sub_272433B10();
        sub_27240FAA4(v40, v41, v42);
        v43 = v95;
        sub_272433AD0();
        sub_27240BFB4(&qword_280896228, &qword_280896210, &qword_272436398, MEMORY[0x277CC8CE8]);
        v44 = v96;
        sub_272434C30();
        (*(v99 + 8))(v43, v44);
        v45 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v46 = sub_272434910();

        v47 = [v45 initWithString_];

        swift_beginAccess();
        v48 = *(a12 + 16);
        v49 = [objc_allocWithZone(VCUIBadgedTextSegmentModel) init];
        v50 = &v49[OBJC_IVAR___VCUIBadgedTextSegmentModel_range];
        swift_beginAccess();
        v51 = v89;
        *v50 = v89;
        *(v50 + 1) = a3;
        v52 = &v49[OBJC_IVAR___VCUIBadgedTextSegmentModel_displayedRange];
        swift_beginAccess();
        *v52 = v51;
        *(v52 + 1) = a3;
        v53 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
        swift_beginAccess();
        v54 = *&v49[v53];
        *&v49[v53] = v88;
        v55 = v49;

        v56 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
        swift_beginAccess();
        v57 = *&v55[v56];
        *&v55[v56] = v47;

        v58 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
        swift_beginAccess();
        *&v55[v58] = v48;

        [v55 setIsWhiteSpace_];
        v59 = v94;
        swift_beginAccess();
        v60 = v55;
        MEMORY[0x2743C9040]();
        if (*((*(v59 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v59 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_272434A70();
        }

        sub_272434A80();
        swift_endAccess();

        v33 = a3;
      }

      v91 = v33;
      v61 = v93;
      swift_beginAccess();
      *(v61 + 16) = v33;
      v62 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v63 = sub_272434910();
      v92 = [v62 initWithString_];

      swift_beginAccess();
      v100[0] = *(a12 + 16);
      v64 = sub_272433B10();
      sub_27240FAA4(v64, v65, v66);
      v67 = v95;
      sub_272433AD0();
      sub_27240BFB4(&qword_280896228, &qword_280896210, &qword_272436398, MEMORY[0x277CC8CE8]);
      v68 = v96;
      sub_272434C30();
      (*(v99 + 8))(v67, v68);
      v69 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v70 = sub_272434910();

      v71 = [v69 &off_279E42578];

      swift_beginAccess();
      v72 = *(a12 + 16);
      v73 = [objc_allocWithZone(VCUIBadgedTextSegmentModel) init];
      v74 = &v73[OBJC_IVAR___VCUIBadgedTextSegmentModel_range];
      swift_beginAccess();
      v75 = v91;
      v76 = v97;
      *v74 = v91;
      v74[1] = v76;
      v77 = &v73[OBJC_IVAR___VCUIBadgedTextSegmentModel_displayedRange];
      swift_beginAccess();
      *v77 = v75;
      *(v77 + 1) = v76;
      v78 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
      swift_beginAccess();
      v79 = *&v73[v78];
      *&v73[v78] = v92;
      v80 = v73;

      v81 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
      swift_beginAccess();
      v82 = *&v80[v81];
      *&v80[v81] = v71;

      v83 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
      swift_beginAccess();
      *&v80[v83] = v72;

      swift_beginAccess();
      v84 = *(a12 + 16);
      v85 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        *(a12 + 16) = v85;
        swift_beginAccess();
        *(v61 + 16) = v76;
        v86 = v94;
        swift_beginAccess();
        v80 = v80;
        MEMORY[0x2743C9040]();
        if (*((*(v86 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v86 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_12:
          sub_272434A80();
          swift_endAccess();

          return;
        }
      }

      sub_272434A70();
      goto LABEL_12;
    }
  }
}

uint64_t sub_27240FA1C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_27240FAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896220;
  if (!qword_280896220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896220);
  }

  return result;
}

uint64_t VCUIBadgedTextSegmentModel.range.setter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = (v3 + OBJC_IVAR___VCUIBadgedTextSegmentModel_range);
  result = swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_27240FBC8(void *a1, __n128 a2)
{
  v3 = v2 + *a1;
  swift_beginAccess();
  return *v3;
}

uint64_t VCUIBadgedTextSegmentModel.displayedRange.setter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = (v3 + OBJC_IVAR___VCUIBadgedTextSegmentModel_displayedRange);
  result = swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  return result;
}

id VCUIBadgedTextSegmentModel.text.getter()
{
  v1 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void VCUIBadgedTextSegmentModel.text.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id VCUIBadgedTextSegmentModel.label.getter()
{
  v1 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void VCUIBadgedTextSegmentModel.label.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t VCUIBadgedTextSegmentModel.labelNumber.getter()
{
  v1 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VCUIBadgedTextSegmentModel.labelNumber.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VCUIBadgedTextSegmentModel.isWhiteSpace.getter()
{
  v1 = OBJC_IVAR___VCUIBadgedTextSegmentModel_isWhiteSpace;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VCUIBadgedTextSegmentModel.isWhiteSpace.setter(char a1)
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_isWhiteSpace;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VCUIBadgedTextSegmentModel.nsRange.getter()
{
  swift_beginAccess();
  v1 = [v0 text];
  v2 = [v1 string];

  sub_272434930();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896200, &qword_272436390);
  v3 = sub_2724103BC();
  sub_27240A1B8(v3, v4, v5);
  return sub_272434BC0();
}

unint64_t sub_2724103BC()
{
  result = qword_280896208;
  if (!qword_280896208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896200, &qword_272436390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896208);
  }

  return result;
}

id VCUIBadgedTextSegmentModel.representedText.getter()
{
  v1 = [v0 text];
  v2 = [v0 nsRange];
  v4 = [v1 attributedSubstringFromRange_];

  return v4;
}

id VCUIBadgedTextSegmentModel.displayedText.getter()
{
  v1 = [v0 text];
  swift_beginAccess();
  v2 = [v0 text];
  v3 = [v2 string];

  v4 = sub_272434930();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896200, &qword_272436390);
  v7 = sub_2724103BC();
  sub_27240A1B8(v7, v8, v9);
  v10 = sub_272434BC0();
  v12 = [v1 attributedSubstringFromRange_];

  return v12;
}

id sub_2724106A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 text];
  *a2 = result;
  return result;
}

id sub_2724106FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 label];
  *a2 = result;
  return result;
}

id sub_272410758@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 labelNumber];
  *a2 = result;
  return result;
}

id sub_2724107AC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isWhiteSpace];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for VCUIBadgedTextSegmentModel()
{
  result = qword_280896260;
  if (!qword_280896260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280896260);
  }

  return result;
}

uint64_t sub_2724108BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896088, &unk_272436460);
  sub_272434720();
  *a2 = xmmword_272436010;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  if (a1 >> 62 && sub_272434CD0() < 0)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896268, &unk_272436440);
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896090, &qword_2724360F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896290, &qword_272436458);
  sub_27240BE90();
  sub_272410C44();
  return sub_272434830();
}

uint64_t sub_272410A68()
{
  sub_2724343E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896268, &unk_272436440);
  sub_272410B08();
  return sub_272433D20();
}

unint64_t sub_272410B08()
{
  result = qword_280896270;
  if (!qword_280896270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896268, &unk_272436440);
    sub_27240BFB4(&qword_280896050, &qword_280896058, &qword_2724360B0, MEMORY[0x277CDF510]);
    sub_272410BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896270);
  }

  return result;
}

unint64_t sub_272410BC0()
{
  result = qword_280896278;
  if (!qword_280896278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896280, &qword_272436450);
    sub_272410C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896278);
  }

  return result;
}

unint64_t sub_272410C44()
{
  result = qword_280896288;
  if (!qword_280896288)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896290, &qword_272436458);
    sub_272410CC8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896288);
  }

  return result;
}

unint64_t sub_272410CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896298;
  if (!qword_280896298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896298);
  }

  return result;
}

uint64_t sub_272410D1C(__n128 a1, __n128 a2)
{

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_272410DC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 isWhiteSpace])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962B8, &qword_272436540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_272435CF0;
    v12 = sub_272434420();
    *(inited + 32) = v12;
    v13 = sub_272434440();
    *(inited + 33) = v13;
    v14 = sub_272434430();
    sub_272434430();
    if (sub_272434430() != v12)
    {
      v14 = sub_272434430();
    }

    sub_272434430();
    if (sub_272434430() != v13)
    {
      v14 = sub_272434430();
    }

    sub_272433CE0();
    v7 = v15;
    v8 = v16;
    v9 = v17;
    v10 = v18;
    LOBYTE(v40) = 0;
    v19 = a1;
    v5 = v14;
    v6 = 1;
    v4 = a1;
  }

  v20 = [a1 displayedText];
  v21 = [v20 string];

  sub_272434930();
  sub_27240A1B8(v22, v23, v24);
  v25 = sub_2724344C0();
  v27 = v26;
  *&v37 = v4;
  *(&v37 + 1) = v6;
  *&v38 = v5;
  *(&v38 + 1) = v7;
  *v39 = v8;
  *&v39[8] = v9;
  *&v39[16] = v10;
  v39[24] = 0;
  v40 = v37;
  v41 = v38;
  *v42 = *v39;
  *&v42[9] = *&v39[9];
  v29 = v28 & 1;
  v30 = v37;
  v31 = v38;
  v32 = *&v42[16];
  *(a2 + 32) = *v42;
  *(a2 + 48) = v32;
  *a2 = v30;
  *(a2 + 16) = v31;
  *(a2 + 64) = v25;
  *(a2 + 72) = v26;
  *(a2 + 80) = v28 & 1;
  *(a2 + 88) = v33;
  sub_27240A0F0(&v37, v43, &qword_2808962C0, &qword_272436548);
  sub_27240A20C(v25, v27, v29);

  sub_27240A21C(v25, v27, v29, v34, v35);

  v43[0] = v4;
  v43[1] = v6;
  v43[2] = v5;
  v43[3] = v7;
  v43[4] = v8;
  v43[5] = v9;
  v43[6] = v10;
  v44 = 0;
  return sub_27240A158(v43, &qword_2808962C0, &qword_272436548);
}

double sub_27241105C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_272434180();
  v18 = 1;
  sub_272410DC4(v3, &v11);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = v11;
  v20 = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[5] = v16;
  v25[0] = v11;
  v25[1] = v12;
  sub_27240A0F0(&v19, &v10, &qword_2808962B0, &qword_272436538);
  sub_27240A158(v25, &qword_2808962B0, &qword_272436538);
  *&v17[39] = v21;
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24;
  *&v17[7] = v19;
  *&v17[23] = v20;
  v5 = *&v17[32];
  *(a1 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a1 + 81) = *&v17[64];
  *(a1 + 97) = v6;
  v8 = *v17;
  result = *&v17[16];
  *(a1 + 33) = *&v17[16];
  *(a1 + 49) = v5;
  v9 = v18;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 112) = *&v17[95];
  *(a1 + 17) = v8;
  return result;
}

unint64_t sub_272411170()
{
  result = qword_2808962C8;
  if (!qword_2808962C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808962D0, &unk_272436550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808962C8);
  }

  return result;
}

uint64_t sub_2724111D4@<X0>(void *a1@<X8>)
{
  v3 = sub_2724340A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962D8, &qword_272436590);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  sub_27240A0F0(v1 + *(v10 + 20), v9, &qword_2808962D8, &qword_272436590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_272433E10();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_272434B50();
    v13 = sub_2724343B0();
    sub_272433B90();

    sub_272434090();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2724113DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for VCUIPhoneticVocabularyNavigationView(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_272413788;
  a2[1] = v6;
}

void sub_27241145C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for VCUIPhoneticVocabularyNavigationView(0) + 24));

  *v6 = sub_272413780;
  v6[1] = v5;
}

uint64_t VCUIPhoneticVocabularyNavigationView.completionHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for VCUIPhoneticVocabularyNavigationView(0) + 24));

  return v1;
}

uint64_t type metadata accessor for VCUIPhoneticVocabularyNavigationView(uint64_t a1)
{
  result = qword_280896360;
  if (!qword_280896360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void VCUIPhoneticVocabularyNavigationView.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VCUIPhoneticVocabularyNavigationView(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

void *VCUIPhoneticVocabularyNavigationView.init(voiceControlLocaleIdentifier:variant:completionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  v14 = *(v13 + 20);
  *(a6 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962D8, &qword_272436590);
  swift_storeEnumTagMultiPayload();
  sub_272433BB0();
  v15 = (a6 + *(v13 + 24));
  *v15 = a4;
  v15[1] = a5;
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = v11;
  result[5] = v12;
  *a6 = sub_272412CB8;
  *(a6 + 8) = result;
  *(a6 + 16) = 0;
  return result;
}

uint64_t sub_272411710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  type metadata accessor for VCUIPhoneticVocabularyCoordinator(0);
  swift_allocObject();

  return sub_2724143EC(a1, a2, v7);
}

uint64_t VCUIPhoneticVocabularyNavigationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v19 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962E0, &qword_272436598);
  MEMORY[0x28223BE20](v20);
  v5 = &v15 - v4;
  v6 = *v1;
  v17 = *(v1 + 8);
  v18 = v6;
  v16 = *(v1 + 16);
  v15 = type metadata accessor for VCUIPhoneticVocabularyCoordinator(0);
  sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator, &protocol conformance descriptor for VCUIPhoneticVocabularyCoordinator);
  sub_272433D80();
  swift_getKeyPath();
  sub_272433EB0();

  v24 = v26;
  v25 = v27;
  v23 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962E8, &unk_2724368F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962F0, &qword_2724365D0);
  sub_27240BFB4(&qword_2808962F8, &qword_2808962E8, &unk_2724368F0, MEMORY[0x277D83960]);
  sub_27240BFB4(&qword_280896300, &qword_2808962E8, &unk_2724368F0, MEMORY[0x277D83980]);
  sub_27240BFB4(&qword_280896308, &qword_2808962E8, &unk_2724368F0, MEMORY[0x277D83990]);
  v14 = sub_272412CD4();
  sub_272412F0C(v14, v7, v8);
  sub_272433F40();
  v9 = v19;
  sub_27241381C(v1, v19, type metadata accessor for VCUIPhoneticVocabularyNavigationView);
  v10 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v11 = swift_allocObject();
  sub_272412F68(v9, v11 + v10);
  v12 = &v5[*(v20 + 36)];
  *v12 = sub_272412FCC;
  v12[1] = v11;
  v12[2] = 0;
  v12[3] = 0;
  sub_272433D70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  sub_272413034();
  sub_2724345E0();
  return sub_2724130EC(v5);
}

void sub_272411B84(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a2 = v3;
}

uint64_t sub_272411C04(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_272411C80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v55 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  MEMORY[0x28223BE20](v55);
  v4 = (v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896388, &qword_272436718);
  MEMORY[0x28223BE20](v59);
  v60 = v50 - v5;
  v6 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  v50[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v50[1] = v7;
  v51 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896390, &qword_272436720);
  MEMORY[0x28223BE20](v54);
  v9 = v50 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896318, &qword_2724365D8);
  MEMORY[0x28223BE20](v58);
  v56 = v50 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896398, &qword_272436728);
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = v50 - v11;
  type metadata accessor for VCUIPhoneticVocabularyCoordinator(0);
  sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator, &protocol conformance descriptor for VCUIPhoneticVocabularyCoordinator);
  v12 = sub_272433D70();
  swift_beginAccess();
  v13 = *(v12 + 24);

  if (v13)
  {

    v14 = sub_272433D70();
    sub_272416820(v14, v4);
    sub_27241381C(v4, v9, type metadata accessor for VCUIPhoneticVocabularyRecordingView);
    v15 = swift_storeEnumTagMultiPayload();
    sub_272412E70(v15, v16, v17);
    sub_272412EC4(&qword_280896330, type metadata accessor for VCUIPhoneticVocabularyRecordingView, &unk_272436C94);
    v18 = v56;
    sub_272434290();
    sub_272413884(v4);
    sub_27240A0F0(v18, v60, &qword_280896318, &qword_2724365D8);
    swift_storeEnumTagMultiPayload();
    v19 = sub_272412DB4();
    v22 = sub_272412F0C(v19, v20, v21);
    v66 = v58;
    v67 = &type metadata for VCUIPhoneticVocabularyCoordinator.Stage;
    v68 = v58;
    v69 = v19;
    v70 = v22;
    v71 = v19;
    swift_getOpaqueTypeConformance2();
    sub_272434290();
    return sub_2724138E0(v18);
  }

  else
  {
    sub_272433D70();
    v24 = sub_272433E90();
    v26 = v25;
    v27 = sub_272433D10();
    v29 = v28;
    v31 = v30;
    v65[0] = 0;
    sub_272434720();
    v32 = v66;
    v33 = v67;
    KeyPath = swift_getKeyPath();
    v62 = 0;
    *v9 = v24;
    *(v9 + 1) = v26;
    v9[16] = v27 & 1;
    *(v9 + 17) = *v65;
    *(v9 + 5) = *&v65[3];
    *(v9 + 3) = v29;
    v9[32] = v31 & 1;
    *(v9 + 33) = *v64;
    *(v9 + 9) = *&v64[3];
    v9[40] = v32;
    *(v9 + 41) = *v63;
    *(v9 + 11) = *&v63[3];
    *(v9 + 6) = v33;
    *(v9 + 7) = KeyPath;
    v9[64] = v62;
    v35 = swift_storeEnumTagMultiPayload();
    sub_272412E70(v35, v36, v37);
    sub_272412EC4(&qword_280896330, type metadata accessor for VCUIPhoneticVocabularyRecordingView, &unk_272436C94);
    v38 = v56;
    sub_272434290();
    v39 = v51;
    sub_27241381C(a1, v51, type metadata accessor for VCUIPhoneticVocabularyNavigationView);
    v40 = (*(v50[0] + 80) + 16) & ~*(v50[0] + 80);
    v41 = swift_allocObject();
    sub_272412F68(v39, v41 + v40);
    v42 = sub_272412DB4();
    v45 = sub_272412F0C(v42, v43, v44);
    v46 = v52;
    v47 = v58;
    sub_2724345B0();

    sub_2724138E0(v38);
    v48 = v53;
    v49 = v57;
    (*(v53 + 16))(v60, v46, v57);
    swift_storeEnumTagMultiPayload();
    v66 = v47;
    v67 = &type metadata for VCUIPhoneticVocabularyCoordinator.Stage;
    v68 = v47;
    v69 = v42;
    v70 = v45;
    v71 = v42;
    swift_getOpaqueTypeConformance2();
    sub_272434290();
    return (*(v48 + 8))(v46, v49);
  }
}

uint64_t sub_2724123BC(_BYTE *a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896390, &qword_272436720);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  if (*a1)
  {
    type metadata accessor for VCUIPhoneticVocabularyCoordinator(0);
    sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator, &protocol conformance descriptor for VCUIPhoneticVocabularyCoordinator);
    v8 = sub_272433D70();
    sub_272416820(v8, v4);
    sub_27241381C(v4, v7, type metadata accessor for VCUIPhoneticVocabularyRecordingView);
    v9 = swift_storeEnumTagMultiPayload();
    sub_272412E70(v9, v10, v11);
    sub_272412EC4(&qword_280896330, type metadata accessor for VCUIPhoneticVocabularyRecordingView, &unk_272436C94);
    sub_272434290();
    return sub_272413884(v4);
  }

  else
  {
    type metadata accessor for VCUIPhoneticVocabularyCoordinator(0);
    sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator, &protocol conformance descriptor for VCUIPhoneticVocabularyCoordinator);
    sub_272433D70();
    v13 = sub_272433E90();
    v15 = v14;
    v16 = sub_272433D10();
    v18 = v17;
    v20 = v19;
    v28 = 0;
    sub_272434720();
    v21 = v29;
    v27 = v2;
    v22 = v30;
    KeyPath = swift_getKeyPath();
    v29 = 0;
    *v7 = v13;
    *(v7 + 1) = v15;
    v7[16] = v16 & 1;
    *(v7 + 3) = v18;
    v7[32] = v20 & 1;
    v7[40] = v21;
    *(v7 + 6) = v22;
    *(v7 + 7) = KeyPath;
    v7[64] = 0;
    v24 = swift_storeEnumTagMultiPayload();
    sub_272412E70(v24, v25, v26);
    sub_272412EC4(&qword_280896330, type metadata accessor for VCUIPhoneticVocabularyRecordingView, &unk_272436C94);
    return sub_272434290();
  }
}

void sub_272412700(uint64_t *a1)
{
  v2 = sub_272433AC0();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for VCUIPhoneticVocabularyCoordinator(0);
  sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator, &protocol conformance descriptor for VCUIPhoneticVocabularyCoordinator);
  v7 = sub_272433D70();
  sub_27241381C(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VCUIPhoneticVocabularyNavigationView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_272412F68(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = (v7 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  *v10 = sub_272413794;
  v10[1] = v9;

  v11 = sub_272433D70();
  swift_beginAccess();
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);

  if (v13)
  {
    v14 = sub_272433D70();
    v27 = v12;
    v28 = v13;
    v15 = v24;
    v16 = sub_272433AB0();
    sub_27240A1B8(v16, v17, v18);
    v19 = sub_272434BF0();
    v21 = v20;
    (*(v25 + 8))(v15, v26);

    v22 = (v14 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
    *v22 = v19;
    v22[1] = v21;
  }
}

uint64_t sub_272412A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272433E10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  (*(a4 + *(v12 + 24)))(a1, a2, a3);
  sub_2724111D4(v11);
  sub_272433E00();
  return (*(v9 + 8))(v11, v8);
}

void sub_272412B2C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_272412BAC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_272412C78(__n128 a1, __n128 a2)
{

  return MEMORY[0x2821FE8E8](v2, 48, 7);
}

unint64_t sub_272412CD4()
{
  result = qword_280896310;
  if (!qword_280896310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808962F0, &qword_2724365D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896318, &qword_2724365D8);
    v3 = sub_272412DB4();
    sub_272412F0C(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896310);
  }

  return result;
}

unint64_t sub_272412DB4()
{
  result = qword_280896320;
  if (!qword_280896320)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896318, &qword_2724365D8);
    sub_272412E70(v1, v2, v3);
    sub_272412EC4(&qword_280896330, type metadata accessor for VCUIPhoneticVocabularyRecordingView, &unk_272436C94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896320);
  }

  return result;
}

unint64_t sub_272412E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896328;
  if (!qword_280896328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896328);
  }

  return result;
}

uint64_t sub_272412EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_272412F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896338;
  if (!qword_280896338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896338);
  }

  return result;
}

uint64_t sub_272412F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_272412FCC()
{
  v1 = *(type metadata accessor for VCUIPhoneticVocabularyNavigationView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_272412700(v2);
}

unint64_t sub_272413034()
{
  result = qword_280896340;
  if (!qword_280896340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808962E0, &qword_272436598);
    sub_27240BFB4(&qword_280896348, &qword_280896350, &qword_272436628, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896340);
  }

  return result;
}

uint64_t sub_2724130EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962E0, &qword_272436598);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272413178(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2724131C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_27241321C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_272413234(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_272413278(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896358, &unk_2724366E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_272433BC0();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_2724133C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896358, &unk_2724366E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_272433BC0();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_2724134F4(uint64_t a1)
{
  sub_2724135A8(319);
  if (v1 <= 0x3F)
  {
    sub_27241363C(319);
    if (v2 <= 0x3F)
    {
      sub_272413694();
      if (v3 <= 0x3F)
      {
        sub_272433BC0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2724135A8(uint64_t a1)
{
  if (!qword_280896370)
  {
    type metadata accessor for VCUIPhoneticVocabularyCoordinator(255);
    sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator, &protocol conformance descriptor for VCUIPhoneticVocabularyCoordinator);
    v1 = sub_272433D90();
    if (!v2)
    {
      atomic_store(v1, &qword_280896370);
    }
  }
}

void sub_27241363C(uint64_t a1)
{
  if (!qword_280896378)
  {
    sub_272433E10();
    v1 = sub_272433D60();
    if (!v2)
    {
      atomic_store(v1, &qword_280896378);
    }
  }
}

unint64_t sub_272413694()
{
  result = qword_280896380;
  if (!qword_280896380)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280896380);
  }

  return result;
}

uint64_t sub_2724136E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808962E0, &qword_272436598);
  sub_272413034();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_272413748()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272413794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for VCUIPhoneticVocabularyNavigationView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_272412A14(a1, a2, a3, v8);
}

uint64_t sub_27241381C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_272413884(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2724138E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896318, &qword_2724365D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272413948@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272433FC0();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_272412F60(*(v0 + v4), *(v0 + v4 + 8));
  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962D8, &qword_272436590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_272433E10();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  v9 = sub_272433BC0();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_272413B18(char *a1)
{
  type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  v3 = *a1;
  return sub_2724123BC(&v3);
}

uint64_t sub_272413BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  return a4(v5);
}

uint64_t sub_272413C1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_272413C7C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
}

uint64_t sub_272413CC4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t VCUIPhoneticVocabularyCoordinator.Stage.hashValue.getter()
{
  v1 = *v0;
  sub_272434D10();
  MEMORY[0x2743C9330](v1);
  return sub_272434D30();
}

uint64_t sub_272413E1C()
{
  v1 = *v0;
  sub_272434D10();
  MEMORY[0x2743C9330](v1);
  return sub_272434D30();
}

uint64_t sub_272413E90(uint64_t a1)
{
  v2 = *v1;
  sub_272434D10();
  MEMORY[0x2743C9330](v2);
  return sub_272434D30();
}

uint64_t sub_272413EE8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v3;
}

uint64_t sub_272413F54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_272413FC8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_27241403C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2724140A8()
{
  v1 = (v0 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_272414180@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_272415CC0;
  a2[1] = v6;
}

double sub_27241420C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  *v6 = sub_272415C84;
  v6[1] = v5;

  return result;
}

uint64_t sub_2724142A8()
{
  v1 = (v0 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_272414320(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

uint64_t sub_2724143EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v41 = a1;
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963D8, &qword_2724367E0);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963C8, &qword_272437830);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v33 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963B8, &unk_2724367D0);
  v10 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963A8, &qword_2724367C8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v17 = *a3;
  v36 = a3[1];
  v37 = v17;
  v18 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__navigationPath;
  v19 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962E8, &unk_2724368F0);
  sub_272433BE0();
  (*(v14 + 32))(v3 + v18, v16, v13);
  v20 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__ipaCandidates;
  v43 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896960, &qword_2724363A0);
  sub_272433BE0();
  (*(v10 + 32))(v3 + v20, v12, v34);
  v21 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__textFieldText;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_272433BE0();
  (*(v35 + 32))(v3 + v21, v9, v38);
  v22 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__canSaveRecording;
  LOBYTE(v43) = 0;
  sub_272433BE0();
  v23 = *(v39 + 32);
  v24 = v3 + v22;
  v25 = v40;
  v23(v24, v7, v40);
  v26 = (v3 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_ipas) = v19;
  v27 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__didFinishRecording;
  LOBYTE(v43) = 0;
  sub_272433BE0();
  v23(v3 + v27, v7, v25);
  v28 = (v3 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  *v28 = CGSizeMake;
  v28[1] = 0;
  v29 = (v3 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
  v30 = v42;
  *v29 = v41;
  v29[1] = v30;
  v31 = v36;
  *(v3 + 16) = v37;
  *(v3 + 24) = v31;
  return v3;
}

uint64_t sub_2724147FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_272433AC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a1;
  v18[1] = a2;
  v10 = sub_272433AB0();
  sub_27240A1B8(v10, v11, v12);
  v13 = sub_272434BF0();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  v16 = (v3 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
  *v16 = v13;
  v16[1] = v15;
}

uint64_t sub_272414914(uint64_t a1)
{
  v23 = sub_272433AC0();
  v3 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v22 = v1;
    v26 = MEMORY[0x277D84F90];
    sub_272415200(0, v6, 0);
    v7 = v26;
    v8 = (v3 + 8);
    v9 = (a1 + 40);
    do
    {
      v10 = *v9;
      v24 = *(v9 - 1);
      v25 = v10;

      v11 = sub_272433AB0();
      sub_27240A1B8(v11, v12, v13);
      v14 = sub_272434BF0();
      v16 = v15;
      (*v8)(v5, v23);

      v26 = v7;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_272415200((v17 > 1), v18 + 1, 1);
        v7 = v26;
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v9 += 2;
      --v6;
    }

    while (v6);
    v1 = v22;
  }

  *(v1 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_ipas) = v7;
}

double sub_272414AD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_272433BF0();
  v2 = v1;
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_272415000(0, *(v3 + 2) + 1, 1, v3, v5, v6);
    *v2 = v3;
  }

  v8 = *(v3 + 2);
  v7 = *(v3 + 3);
  if (v8 >= v7 >> 1)
  {
    v3 = sub_272415000((v7 > 1), v8 + 1, 1, v3, v5, v6);
    *v2 = v3;
  }

  *(v3 + 2) = v8 + 1;
  v3[v8 + 32] = 1;
  v0(&v10, 0);

  return result;
}

double sub_272414BF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_272433BF0();
  *v1 = MEMORY[0x277D84F90];

  v0(&v3, 0);

  return result;
}

uint64_t VCUIPhoneticVocabularyCoordinator.deinit(__n128 a1, __n128 a2)
{

  v3 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__navigationPath;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963A8, &qword_2724367C8);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__ipaCandidates;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963B8, &unk_2724367D0);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__textFieldText;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963C8, &qword_272437830);
  (*(*(v8 - 8) + 8))(v2 + v7, v8);
  v9 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__canSaveRecording;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963D8, &qword_2724367E0);
  v11 = *(*(v10 - 8) + 8);
  v11(v2 + v9, v10);

  v11(v2 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__didFinishRecording, v10);

  return v2;
}

uint64_t VCUIPhoneticVocabularyCoordinator.__deallocating_deinit(__n128 a1, __n128 a2)
{
  VCUIPhoneticVocabularyCoordinator.deinit(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_272414EBC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VCUIPhoneticVocabularyCoordinator(0);
  result = sub_272433BD0();
  *a2 = result;
  return result;
}

char *sub_272414EFC(char *result, int64_t a2, char a3, char *a4, __n128 a5, __n128 a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896430, &qword_272436A10);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 32 * v10);
  }

  return v12;
}

char *sub_272415000(char *result, int64_t a2, char a3, char *a4, __n128 a5, __n128 a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896428, &qword_2724369C0);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_2724150F4(char *result, int64_t a2, char a3, char *a4, __n128 a5, __n128 a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896420, &qword_272436F60);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_272415200(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_272415220(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_272415220(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896420, &qword_272436F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_27241532C(uint64_t a1, uint64_t a2)
{
  v4 = sub_272433AC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v8 = sub_272433AB0();
  sub_27240A1B8(v8, v9, v10);
  v11 = sub_272434BF0();
  v13 = v12;
  (*(v5 + 8))(v7, v4);

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v17 = a1;
    v18 = a2;
    v16[0] = 45506;
    v16[1] = 0xA200000000000000;
    LOBYTE(v14) = sub_272434C20() ^ 1;
  }

  return v14 & 1;
}

unint64_t sub_272415494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_2808963E8;
  if (!qword_2808963E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808963E8);
  }

  return result;
}

uint64_t sub_2724154F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_272415544@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t type metadata accessor for VCUIPhoneticVocabularyCoordinator(uint64_t a1)
{
  result = qword_2808963F0;
  if (!qword_2808963F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2724155FC(uint64_t a1)
{
  sub_272415A28(319, &qword_280896400, &qword_2808962E8, &unk_2724368F0);
  if (v1 <= 0x3F)
  {
    sub_272415A28(319, &qword_280896408, &qword_280896960, &qword_2724363A0);
    if (v2 <= 0x3F)
    {
      sub_272415A7C(319, &qword_280896410, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_272415A7C(319, &qword_280896418, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_272415A28(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_272433C20();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_272415A7C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_272433C20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for VCUIPhoneticVocabularyCoordinator.Stage(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VCUIPhoneticVocabularyCoordinator.Stage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_272415C4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272415C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  return v4(v6);
}

void sub_272415DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_272434910();
    if (a3)
    {
LABEL_3:
      v7 = sub_272434A40();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

VCUIPhoneticVocabularyNavigationViewWrapper __swiftcall VCUIPhoneticVocabularyNavigationViewWrapper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t _sSo43VCUIPhoneticVocabularyNavigationViewWrapperC14VoiceControlUIE019createTypeAndRecordD004withfG16LocaleIdentifier17completionHandlerSo16UIViewControllerCSS_ySSSg_SaySSGSgtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = *(v9 + 28);
  *&v14[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962D8, &qword_272436590);
  swift_storeEnumTagMultiPayload();

  sub_272433BB0();
  v17 = &v14[*(v9 + 32)];
  *v17 = sub_2724165C8;
  *(v17 + 1) = v15;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = 0;
  v18[5] = 0;
  *v14 = sub_2724165DC;
  *(v14 + 1) = v18;
  v14[16] = 0;
  sub_27241645C(v14, v12);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896440, &qword_272436A48));

  v19 = sub_2724341C0();
  sub_2724164C0(v14);
  return v19;
}

uint64_t _sSo43VCUIPhoneticVocabularyNavigationViewWrapperC14VoiceControlUIE016createRecordOnlyD004withfG16LocaleIdentifier4text17completionHandlerSo16UIViewControllerCSS_SSySSSg_SaySSGSgtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v11 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v19 = *(v12 + 28);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962D8, &qword_272436590);
  swift_storeEnumTagMultiPayload();

  sub_272433BB0();
  v20 = &v17[*(v12 + 32)];
  *v20 = sub_272416450;
  *(v20 + 1) = v18;
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v25;
  v21[5] = a4;
  *v17 = sub_272412CB8;
  *(v17 + 1) = v21;
  v17[16] = 0;
  sub_27241645C(v17, v15);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896440, &qword_272436A48));

  v22 = sub_2724341C0();
  sub_2724164C0(v17);
  return v22;
}

unint64_t type metadata accessor for VCUIPhoneticVocabularyNavigationViewWrapper()
{
  result = qword_280896438;
  if (!qword_280896438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280896438);
  }

  return result;
}

uint64_t sub_272416410()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27241645C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2724164C0(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyNavigationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27241651C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_10Tm(__n128 a1, __n128 a2)
{

  return MEMORY[0x2821FE8E8](v2, 48, 7);
}

uint64_t sub_2724165E0(unsigned __int8 a1, unsigned __int8 a2, __n128 a3, __n128 a4)
{
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 0xE800000000000000;
  v7 = 0x64656873696E6966;
  if (a1 != 5)
  {
    v7 = 0x6465726F727265;
    v6 = 0xE700000000000000;
  }

  v8 = 0x6E6964726F636572;
  v9 = 0xE900000000000067;
  if (a1 != 3)
  {
    v8 = 0x6F636552656E6F64;
    v9 = 0xED0000676E696472;
  }

  if (a1 > 4u)
  {
    v8 = v7;
    v9 = v6;
  }

  v10 = 0xD000000000000010;
  v11 = 0x8000000272437A90;
  if (a1 != 1)
  {
    v10 = 0xD000000000000014;
    v11 = 0x8000000272437AB0;
  }

  if (a1)
  {
    v5 = v11;
  }

  else
  {
    v10 = 1701602409;
  }

  if (a1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v4 <= 2)
  {
    v13 = v5;
  }

  else
  {
    v13 = v9;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v14 = 0x8000000272437A90;
        if (v12 != 0xD000000000000010)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v14 = 0x8000000272437AB0;
        if (v12 != 0xD000000000000014)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v14 = 0xE400000000000000;
      if (v12 != 1701602409)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v14 = 0xE800000000000000;
      if (v12 != 0x64656873696E6966)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v12 != 0x6465726F727265)
      {
LABEL_39:
        v15 = sub_272434CF0();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v14 = 0xE900000000000067;
    if (v12 != 0x6E6964726F636572)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v14 = 0xED0000676E696472;
    if (v12 != 0x6F636552656E6F64)
    {
      goto LABEL_39;
    }
  }

  if (v13 != v14)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_272416820@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a1;
  v3 = sub_272434B80();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_272434B70();
  MEMORY[0x28223BE20](v38);
  v37[1] = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2724348D0();
  MEMORY[0x28223BE20](v6 - 8);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628, &qword_272436D38);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v8 = (a2 + v7[7]);
  v44 = [objc_allocWithZone(MEMORY[0x277CB84B8]) init];
  sub_27242AA04(0, &qword_280896558, 0x277CB84B8);
  sub_272434720();
  v9 = *(&v46 + 1);
  *v8 = v46;
  v8[1] = v9;
  v10 = a2 + v7[8];
  LOBYTE(v44) = 0;
  sub_272434720();
  v11 = *(&v46 + 1);
  *v10 = v46;
  *(v10 + 1) = v11;
  v12 = a2 + v7[9];
  LOBYTE(v44) = 0;
  sub_272434720();
  v13 = *(&v46 + 1);
  *v12 = v46;
  *(v12 + 1) = v13;
  v14 = a2 + v7[10];
  v44 = 0;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896578, "l>");
  sub_272434720();
  v15 = v47;
  *v14 = v46;
  *(v14 + 2) = v15;
  v16 = a2 + v7[11];
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_272434720();
  v17 = v47;
  *v16 = v46;
  *(v16 + 2) = v17;
  sub_272433BB0();
  v18 = v7[13];
  sub_272433C60();
  swift_allocObject();
  *(a2 + v18) = sub_272433C50();
  v19 = v7[14];
  sub_27242AA04(0, &qword_280896588, 0x277D85C78);
  sub_2724348C0();
  *&v46 = MEMORY[0x277D84F90];
  sub_27242AA74(&qword_280896988, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896990, &qword_272437198);
  sub_27240BFB4(&qword_280896998, &qword_280896990, &qword_272437198, MEMORY[0x277D83970]);
  sub_272434C50();
  (*(v40 + 104))(v39, *MEMORY[0x277D85260], v41);
  *(a2 + v19) = sub_272434BB0();
  v20 = a2 + v7[15];
  LOBYTE(v44) = 0;
  sub_272434720();
  v21 = *(&v46 + 1);
  *v20 = v46;
  *(v20 + 1) = v21;
  v22 = a2 + v7[16];
  LOBYTE(v44) = 0;
  sub_272434720();
  v23 = *(&v46 + 1);
  *v22 = v46;
  *(v22 + 1) = v23;
  v24 = a2 + v7[17];
  LOBYTE(v44) = 0;
  sub_272434720();
  v25 = *(&v46 + 1);
  *v24 = v46;
  *(v24 + 1) = v25;
  v26 = a2 + v7[18];
  LOBYTE(v44) = 0;
  sub_272434720();
  v27 = *(&v46 + 1);
  *v26 = v46;
  *(v26 + 1) = v27;
  *(a2 + v7[19]) = 1;
  *(a2 + v7[20]) = 0;
  *(a2 + v7[21]) = 0;
  *(a2 + v7[22]) = 0;
  v28 = (v42 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  objc_allocWithZone(type metadata accessor for VCUIPhoneticVocabularyRecordingManager(0));

  v31 = sub_272416E30(v30, v29);
  v32 = (a2 + v7[6]);
  v43 = v31;
  sub_272434720();
  v33 = v45;
  *v32 = v44;
  v32[1] = v33;
  v34 = (a2 + v7[5]);
  type metadata accessor for VCUIPhoneticVocabularyCoordinator(0);
  sub_27242AA74(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator, &protocol conformance descriptor for VCUIPhoneticVocabularyCoordinator);
  result = sub_272433E90();
  *v34 = result;
  v34[1] = v36;
  return result;
}

id sub_272416E30(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection] = 0;
  v5 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_recognizedPhonemesBlock];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didStart];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didEnd];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_text];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  sub_272433BB0();
  v10 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for VCUIPhoneticVocabularyRecordingManager(0);
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_272416F34()
{
  v1 = *&v0[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (v1)
  {
    [v1 endSession];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for VCUIPhoneticVocabularyRecordingManager(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2724170EC()
{
  v1 = v0;
  v2 = sub_272433B00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CEF268]) init];
  v7 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v8 = *(v1 + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection);
  *(v1 + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection) = v6;
  v9 = v6;

  if (v9)
  {
    [v9 setDelegate_];
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CEF288]) init];
  [v10 setTranscriptionMode_];
  sub_272433AF0();
  v11 = sub_272433AE0();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v15 = sub_272429094(6, v11, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  MEMORY[0x2743C8F90](v15, v17, v19, v21);

  v22 = sub_272434910();

  [v10 setOrthography_];

  v23 = [objc_allocWithZone(MEMORY[0x277CEF4A0]) initWithActivationEvent_];
  [v23 setIsEyesFree_];
  [v23 setEndpointerOperationMode_];
  v24 = *(v1 + v7);
  if (v24)
  {
    v25 = *(v1 + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier);
    v26 = *(v1 + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier + 8);
    if (v25 == 0x4E495F6E65 && v26 == 0xE500000000000000 || (v27 = sub_272434CF0(), (v27 & 1) != 0))
    {
      v30 = v24;
    }

    else
    {
      v33[4] = v25;
      v33[5] = v26;
      v33[2] = 95;
      v33[3] = 0xE100000000000000;
      v33[0] = 45;
      v33[1] = 0xE100000000000000;
      sub_27240A1B8(v27, v28, v29);
      v30 = v24;
      sub_272434C10();
    }

    v32 = sub_272434910();

    [v30 startDictationWithLanguageCode:v32 options:v10 speechOptions:v23];

    v31 = v10;
  }

  else
  {
    v31 = v23;
    v23 = v10;
  }
}

void sub_27241743C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection);
  if (v1)
  {

    [v1 stopSpeechWithOptions_];
  }

  else
  {
    oslog = sub_272433BA0();
    v2 = sub_272434B60();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_272406000, oslog, v2, "[Guard] Calling stopRecording() when connection is nil", v3, 2u);
      MEMORY[0x2743C99D0](v3, -1, -1);
    }
  }
}

void sub_272417524()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v3 = *&v0[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (v3)
  {
    v4 = v3;
    v5 = v0;
    v6 = sub_272433BA0();
    v7 = sub_272434B30();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315138;
      v10 = *&v1[v2];
      if (v10)
      {
        v11 = [v10 debugDescription];
        v12 = sub_272434930();
        v14 = v13;
      }

      else
      {
        v14 = 0xE300000000000000;
        v12 = 7104878;
      }

      v18 = sub_2724285FC(v12, v14, &v21);

      *(v8 + 4) = v18;
      _os_log_impl(&dword_272406000, v6, v7, "endSession() %s", v8, 0xCu);
      v19 = __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x2743C99D0](v9, -1, -1, v19);
      MEMORY[0x2743C99D0](v8, -1, -1);
    }

    [v4 endSession];
    v17 = *&v1[v2];
    *&v1[v2] = 0;
  }

  else
  {
    oslog = sub_272433BA0();
    v15 = sub_272434B60();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_272406000, oslog, v15, "[Guard] Calling endSession() when connection is nil", v16, 2u);
      MEMORY[0x2743C99D0](v16, -1, -1);
    }

    v17 = oslog;
  }
}

void sub_272417744(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v5 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (a1)
  {
    if (v5 == a1)
    {
LABEL_3:
      v6 = a1;
      v7 = v1;
      v8 = sub_272433BA0();
      v9 = sub_272434B60();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = 0x53555F6E65;
        v11 = swift_slowAlloc();
        oslog = swift_slowAlloc();
        v46 = oslog;
        *v11 = 136315650;
        v12 = &v7[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier];
        v14 = *&v7[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier];
        v13 = *&v7[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier + 8];
        v15 = 0xE500000000000000;
        if (v14 != 0x4E495F6E65 || v13 != 0xE500000000000000)
        {
          v17 = sub_272434CF0();
          if ((v17 & 1) == 0)
          {
            v45[0] = v14;
            v45[1] = v13;
            sub_27240A1B8(v17, v18, v19);
            v10 = sub_272434C10();
            v15 = v20;
          }
        }

        v21 = sub_2724285FC(v10, v15, &v46);

        *(v11 + 4) = v21;
        *(v11 + 12) = 2080;
        v22 = *v12;
        v23 = v12[1];

        v24 = sub_2724285FC(v22, v23, &v46);

        *(v11 + 14) = v24;
        *(v11 + 22) = 2080;
        v45[0] = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
        v25 = sub_272434BD0();
        v27 = sub_2724285FC(v25, v26, &v46);

        *(v11 + 24) = v27;
        _os_log_impl(&dword_272406000, v8, v9, "dictationConnectionSpeechRecordingDidBegin for locale: %s, actual VC locale: %s connection: %s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2743C99D0](oslog, -1, -1);
        MEMORY[0x2743C99D0](v11, -1, -1);
      }

      v28 = *&v7[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didStart];
      if (v28)
      {
        v29 = *&v7[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didStart + 8];

        v28(v30);
        sub_272427F50(v28, v29);
      }

      return;
    }
  }

  else if (!v5)
  {
    goto LABEL_3;
  }

  v31 = a1;
  v32 = v1;
  osloga = sub_272433BA0();
  v33 = sub_272434B60();

  if (os_log_type_enabled(osloga, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45[0] = v36;
    *v34 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
    v37 = sub_272434BD0();
    v39 = sub_2724285FC(v37, v38, v45);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2112;
    v40 = *&v2[v4];
    *(v34 + 14) = v40;
    *v35 = v40;
    v41 = v40;
    _os_log_impl(&dword_272406000, osloga, v33, "[Guard] dictationConnectionSpeechRecordingDidBegin callback received for unexpected connection (%s. Expected: %@", v34, 0x16u);
    sub_27240A158(v35, &qword_280896978, &qword_272437160);
    MEMORY[0x2743C99D0](v35, -1, -1);
    v42 = __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x2743C99D0](v36, -1, -1, v42);
    MEMORY[0x2743C99D0](v34, -1, -1);
  }

  else
  {
  }
}

void sub_272417D48(void *a1, id a2, const char *a3, const char *a4)
{
  v7 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v8 = *&v4[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (!a1)
  {
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v23 = a1;
    v24 = v4;
    oslog = sub_272433BA0();
    v25 = sub_272434B60();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v26 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
      v29 = sub_272434BD0();
      v31 = sub_2724285FC(v29, v30, &v39);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2112;
      v32 = *&v4[v7];
      *(v26 + 14) = v32;
      *v27 = v32;
      v33 = v32;
      _os_log_impl(&dword_272406000, oslog, v25, a4, v26, 0x16u);
      sub_27240A158(v27, &qword_280896978, &qword_272437160);
      MEMORY[0x2743C99D0](v27, -1, -1);
      v34 = __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x2743C99D0](v28, -1, -1, v34);
      MEMORY[0x2743C99D0](v26, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (v8 != a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = a2;
  v11 = a1;
  v12 = sub_272433BA0();
  v13 = sub_272434B40();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v15;
    *v14 = 136315394;

    if (!a2)
    {
      __break(1u);
      return;
    }

    swift_getErrorValue();
    v16 = sub_272434D00();
    v18 = sub_2724285FC(v16, v17, &v39);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
    v19 = sub_272434BD0();
    v21 = sub_2724285FC(v19, v20, &v39);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_272406000, v12, v13, a3, v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C99D0](v15, -1, -1);
    MEMORY[0x2743C99D0](v14, -1, -1);
  }

  else
  {
  }

  v35 = *&v4[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError];
  if (v35)
  {
    v36 = *&v4[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError + 8];

    v35(v37);
    sub_272427F50(v35, v36);
  }

  sub_272417524();
}

void sub_272418164(void *a1)
{
  v2 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v3 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (a1)
  {
    if (v3 == a1)
    {
LABEL_3:
      v4 = a1;
      v5 = sub_272433BA0();
      v6 = sub_272434B60();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v29 = v8;
        *v7 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
        v9 = sub_272434BD0();
        v11 = sub_2724285FC(v9, v10, &v29);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_272406000, v5, v6, "dictationConnectionSpeechRecordingDidCancel connection: %s", v7, 0xCu);
        v12 = __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x2743C99D0](v8, -1, -1, v12);
        MEMORY[0x2743C99D0](v7, -1, -1);
      }

      v13 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError];
      if (v13)
      {
        v14 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError + 8];

        v13(v15);
        sub_272427F50(v13, v14);
      }

      sub_272417524();
      return;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = v1;
  oslog = sub_272433BA0();
  v18 = sub_272434B60();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v19 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
    v22 = sub_272434BD0();
    v24 = sub_2724285FC(v22, v23, &v29);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2112;
    v25 = *&v1[v2];
    *(v19 + 14) = v25;
    *v20 = v25;
    v26 = v25;
    _os_log_impl(&dword_272406000, oslog, v18, "[Guard] dictationConnectionSpeechRecordingDidCancel callback received for unexpected connection (%s. Expected: %@", v19, 0x16u);
    sub_27240A158(v20, &qword_280896978, &qword_272437160);
    MEMORY[0x2743C99D0](v20, -1, -1);
    v27 = __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x2743C99D0](v21, -1, -1, v27);
    MEMORY[0x2743C99D0](v19, -1, -1);
  }

  else
  {
  }
}

void sub_2724184E0(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v4 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (a1)
  {
    if (v4 == a1)
    {
      goto LABEL_3;
    }
  }

  else if (!v4)
  {
LABEL_3:
    v5 = a1;
    oslog = sub_272433BA0();
    v6 = sub_272434B60();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
      v9 = sub_272434BD0();
      v11 = sub_2724285FC(v9, v10, &v25);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_272406000, oslog, v6, "dictationConnectionSpeechRecognitionDidSucceed connection: %s", v7, 0xCu);
      v12.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0(v8);
      v13 = v8;
LABEL_8:
      MEMORY[0x2743C99D0](v13, -1, -1, v12);
      MEMORY[0x2743C99D0](v7, -1, -1);

      return;
    }

    goto LABEL_9;
  }

  v14 = a1;
  v15 = v1;
  oslog = sub_272433BA0();
  v16 = sub_272434B60();

  if (os_log_type_enabled(oslog, v16))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v7 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
    v19 = sub_272434BD0();
    v21 = sub_2724285FC(v19, v20, &v25);

    *(v7 + 4) = v21;
    *(v7 + 12) = 2112;
    v22 = *&v2[v3];
    *(v7 + 14) = v22;
    *v17 = v22;
    v23 = v22;
    _os_log_impl(&dword_272406000, oslog, v16, "[Guard] dictationConnectionSpeechRecognitionDidSucceed callback received for unexpected connection (%s. Expected: %@", v7, 0x16u);
    sub_27240A158(v17, &qword_280896978, &qword_272437160);
    MEMORY[0x2743C99D0](v17, -1, -1);
    v12.n128_f64[0] = __swift_destroy_boxed_opaque_existential_0(v18);
    v13 = v18;
    goto LABEL_8;
  }

LABEL_9:
}

void sub_272418800(void *a1)
{
  v2 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v3 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (a1)
  {
    if (v3 == a1)
    {
LABEL_3:
      v4 = a1;
      v5 = sub_272433BA0();
      v6 = sub_272434B60();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v29 = v8;
        *v7 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
        v9 = sub_272434BD0();
        v11 = sub_2724285FC(v9, v10, &v29);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_272406000, v5, v6, "dictationConnectionSpeechRecordingDidEnd connection: %s", v7, 0xCu);
        v12 = __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x2743C99D0](v8, -1, -1, v12);
        MEMORY[0x2743C99D0](v7, -1, -1);
      }

      v13 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didEnd];
      if (v13)
      {
        v14 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didEnd + 8];

        v13(v15);
        sub_272427F50(v13, v14);
      }

      return;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  v16 = a1;
  v17 = v1;
  oslog = sub_272433BA0();
  v18 = sub_272434B60();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29 = v21;
    *v19 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970, &qword_272437158);
    v22 = sub_272434BD0();
    v24 = sub_2724285FC(v22, v23, &v29);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2112;
    v25 = *&v1[v2];
    *(v19 + 14) = v25;
    *v20 = v25;
    v26 = v25;
    _os_log_impl(&dword_272406000, oslog, v18, "[Guard] dictationConnectionSpeechRecordingDidEnd callback received for unexpected connection (%s. Expected: %@", v19, 0x16u);
    sub_27240A158(v20, &qword_280896978, &qword_272437160);
    MEMORY[0x2743C99D0](v20, -1, -1);
    v27 = __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x2743C99D0](v21, -1, -1, v27);
    MEMORY[0x2743C99D0](v19, -1, -1);
  }

  else
  {
  }
}

VoiceControlUI::VCUIDictationState_optional __swiftcall VCUIDictationState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_272434CE0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VCUIDictationState.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701602409;
  v3 = 0x64656873696E6966;
  if (v1 != 5)
  {
    v3 = 0x6465726F727265;
  }

  v4 = 0x6E6964726F636572;
  if (v1 != 3)
  {
    v4 = 0x6F636552656E6F64;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

unint64_t sub_272418CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896450;
  if (!qword_280896450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896450);
  }

  return result;
}

uint64_t sub_272418D58(uint64_t a1)
{
  sub_272434990();
}

uint64_t sub_272418E7C(uint64_t a1, unsigned __int8 a2)
{
  sub_272434D10();
  sub_272434990();

  return sub_272434D30();
}

void sub_272418FB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  v5 = 0xE800000000000000;
  v6 = 0x64656873696E6966;
  if (v2 != 5)
  {
    v6 = 0x6465726F727265;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE900000000000067;
  v8 = 0x6E6964726F636572;
  if (v2 != 3)
  {
    v8 = 0x6F636552656E6F64;
    v7 = 0xED0000676E696472;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000010;
  v10 = 0x8000000272437A90;
  if (v2 != 1)
  {
    v9 = 0xD000000000000014;
    v10 = 0x8000000272437AB0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_2724190CC(uint64_t a1)
{
  result = sub_272433BC0();
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

uint64_t getEnumTagSinglePayload for VCUIDictationState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VCUIDictationState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2724192F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896510, &unk_272436BE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_272433BC0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_272419438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896510, &unk_272436BE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_272433BC0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_27241958C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2724195C4(uint64_t a1)
{
  sub_2724198A8(319, &qword_280896530, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_272419814(319);
    if (v2 <= 0x3F)
    {
      sub_2724198A8(319, &qword_280896548, type metadata accessor for VCUIPhoneticVocabularyRecordingManager, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_27241990C(319);
        if (v4 <= 0x3F)
        {
          sub_2724199D8(319, &qword_280896560, &type metadata for VCUIDictationState);
          if (v5 <= 0x3F)
          {
            sub_2724199D8(319, &qword_280896568, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              sub_272419974(319);
              if (v7 <= 0x3F)
              {
                sub_2724199D8(319, &qword_280896580, MEMORY[0x277D837D0]);
                if (v8 <= 0x3F)
                {
                  sub_272433BC0();
                  if (v9 <= 0x3F)
                  {
                    sub_272433C60();
                    if (v10 <= 0x3F)
                    {
                      sub_27242AA04(319, &qword_280896588, 0x277D85C78);
                      if (v11 <= 0x3F)
                      {
                        sub_2724199D8(319, &qword_280896590, &type metadata for VCUIPhoneticVocabularyRecordingView.ActiveAlert);
                        if (v12 <= 0x3F)
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

void sub_272419814(uint64_t a1)
{
  if (!qword_280896538)
  {
    type metadata accessor for VCUIPhoneticVocabularyCoordinator(255);
    sub_27242AA74(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator, &protocol conformance descriptor for VCUIPhoneticVocabularyCoordinator);
    v1 = sub_272433EC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280896538);
    }
  }
}

void sub_2724198A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_27241990C(uint64_t a1)
{
  if (!qword_280896550)
  {
    sub_27242AA04(255, &qword_280896558, 0x277CB84B8);
    v1 = sub_272434760();
    if (!v2)
    {
      atomic_store(v1, &qword_280896550);
    }
  }
}

void sub_272419974(uint64_t a1)
{
  if (!qword_280896570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896578, "l>");
    v1 = sub_272434760();
    if (!v2)
    {
      atomic_store(v1, &qword_280896570);
    }
  }
}

void sub_2724199D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_272434760();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for VCUIPhoneticVocabularyRecordingView.ActiveAlert(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCUIPhoneticVocabularyRecordingView.ActiveAlert(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_272419B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280896598;
  if (!qword_280896598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896598);
  }

  return result;
}

uint64_t sub_272419BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272418CF8(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_272419C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_272429BD4(a1, a2, a3);

  return sub_2724340B0();
}

uint64_t sub_272419C80@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2724340A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628, &qword_272436D38);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_27240A0F0(v2, &v14 - v9, &qword_280896628, &qword_272436D38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_272433D50();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_272434B50();
    v13 = sub_2724343B0();
    sub_272433B90();

    sub_272434090();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_272419EB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v4 = *(v3 - 8);
  v58 = v3 - 8;
  v53 = v4;
  v52 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_272433B80();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965A0, &qword_272436CE8);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965A8, &qword_272436CF0);
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v57 = v45 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965B0, &qword_272436CF8);
  MEMORY[0x28223BE20](v49);
  v46 = v45 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965B8, &unk_272436D00);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = v45 - v13;
  v45[2] = sub_27241A854();
  v45[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965C0, &unk_272437300);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_272436A70;
  sub_272433B50();
  sub_272433B70();
  sub_272433B60();
  v63 = v15;
  sub_27242AA74(&qword_2808965C8, MEMORY[0x277CE7670], MEMORY[0x277CE7680]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965D0, &qword_272436D10);
  sub_27240BFB4(&qword_2808965D8, &qword_2808965D0, &qword_272436D10, MEMORY[0x277D83970]);
  sub_272434C50();
  sub_272434820();
  (*(v7 + 8))(v9, v6);
  v62 = v1;
  v61 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965E0, &qword_272436D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965E8, &qword_272436D20);
  v16 = MEMORY[0x277CE14C0];
  sub_27240BFB4(&qword_2808965F0, &qword_2808965E0, &qword_272436D18, MEMORY[0x277CE14C0]);
  sub_27240BFB4(&qword_2808965F8, &qword_2808965E8, &qword_272436D20, v16);
  sub_272433B40();
  v69 = sub_27241DE10();
  v70 = v17;
  v18 = v1 + *(v58 + 72);
  v19 = *v18;
  v20 = *(v18 + 8);
  v67 = v19;
  v68 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600, &unk_272436D28);
  sub_272434750();
  v60 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8, &qword_2724361A0);
  v21 = sub_27240BFB4(&unk_280896610, &qword_2808965A8, &qword_272436CF0, MEMORY[0x277CE7668]);
  sub_27240A1B8(v21, v22, v23);
  sub_27240BFB4(&qword_280896620, &qword_2808960B8, &qword_2724361A0, MEMORY[0x277CDF028]);
  v24 = v47;
  v25 = v46;
  v26 = v57;
  sub_272434620();

  (*(v48 + 8))(v26, v24);
  v27 = v51;
  sub_2724276E8(v2, v51);
  v28 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v29 = swift_allocObject();
  sub_272427750(v27, v29 + v28);
  v30 = v49;
  v31 = (v25 + *(v49 + 36));
  *v31 = sub_2724277B4;
  v31[1] = v29;
  v31[2] = 0;
  v31[3] = 0;
  v32 = v2 + *(v58 + 40);
  v33 = *v32;
  v34 = *(v32 + 8);
  LOBYTE(v63) = v33;
  v64 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434730();
  LOBYTE(v63) = v69;
  sub_2724276E8(v2, v27);
  v35 = swift_allocObject();
  sub_272427750(v27, v35 + v28);
  v36 = sub_272427A98();
  v39 = sub_272418CF8(v36, v37, v38);
  v40 = v50;
  sub_272434660();

  sub_27240A158(v25, &qword_2808965B0, &qword_272436CF8);
  v59 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896640, &qword_272436D48);
  v63 = v30;
  v64 = &type metadata for VCUIDictationState;
  v65 = v36;
  v66 = v39;
  swift_getOpaqueTypeConformance2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896648, &unk_272436D50);
  v42 = sub_272427C24();
  v63 = v41;
  v64 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v54;
  sub_272434650();
  return (*(v55 + 8))(v40, v43);
}

uint64_t sub_27241A854()
{
  v1 = v0;
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v37[-v8];
  v10 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  if (*(v0 + v10[19]) == 1)
  {
    v11 = (*(v0 + v10[5] + 8) + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);

    v12 = sub_2724349A0();

    if (v12 >= 51)
    {
      goto LABEL_9;
    }

    sub_2724348F0();
    (*(v4 + 16))(v7, v9, v3);
    sub_27242AA04(0, &qword_280896670, off_279E42450);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    sub_272433B20();
    sub_272434950();
    (*(v4 + 8))(v9, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896938, &qword_272437128);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_272436A80;
    v21 = *v11;
    v20 = v11[1];
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_27242A9B0(v19, v22, v23);
    *(v19 + 32) = v21;
    *(v19 + 40) = v20;

    v24 = sub_272434940();
LABEL_11:

    return v24;
  }

  v13 = v10;
  v14 = (v0 + v10[8]);
  v15 = *v14;
  v16 = *(v14 + 1);
  v37[8] = v15;
  v38 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434730();
  if (v39 == 5)
  {
  }

  else
  {
    v25 = sub_272434CF0();

    if ((v25 & 1) == 0)
    {
      sub_2724348F0();
      (*(v4 + 16))(v7, v9, v3);
      sub_27242AA04(0, &qword_280896670, off_279E42450);
      v28 = swift_getObjCClassFromMetadata();
      v29 = [objc_opt_self() bundleForClass_];
      sub_272433B20();
      sub_272434950();
      (*(v4 + 8))(v9, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896938, &qword_272437128);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_272436A80;
      v31 = (*(v1 + v13[5] + 8) + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
      v33 = *v31;
      v32 = v31[1];
      *(v30 + 56) = MEMORY[0x277D837D0];
      *(v30 + 64) = sub_27242A9B0(v30, v34, v35);
      *(v30 + 32) = v33;
      *(v30 + 40) = v32;

      v24 = sub_272434940();
      goto LABEL_11;
    }
  }

LABEL_9:
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27242AA04(0, &qword_280896670, off_279E42450);
  v26 = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v24 = sub_272434950();
  (*(v4 + 8))(v9, v3);
  return v24;
}

uint64_t sub_27241AF18@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v83 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967D0, &qword_272437008);
  v87 = *(v88 - 1);
  MEMORY[0x28223BE20](v88);
  v4 = (&v72 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967D8, &qword_272437010);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v89 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967E0, &qword_272437018);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v77 = &v72 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967E8, &qword_272437020);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = (&v72 - v12);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967F0, &qword_272437028);
  v13 = MEMORY[0x28223BE20](v73);
  v76 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v72 = &v72 - v16;
  MEMORY[0x28223BE20](v15);
  v75 = &v72 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967F8, &qword_272437030);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v79 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v72 - v21;
  v23 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v24 = a1 + v23[8];
  v25 = *(v24 + 8);
  LOBYTE(v98) = *v24;
  v99 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434730();
  v78 = v4;
  if (v108 == 5)
  {
  }

  else
  {
    v26 = sub_272434CF0();

    if ((v26 & 1) == 0)
    {
LABEL_5:
      v98 = sub_27241BAE0();
      v99 = v27;
      sub_27240A1B8(v98, v27, v28);
      v93 = sub_2724344C0();
      v84 = v29;
      v31 = v30;
      v92 = v32;
      KeyPath = swift_getKeyPath();
      LOBYTE(v98) = v31 & 1;
      v90 = v31 & 1;
      v33 = sub_2724343F0();
      v81 = 1;
      v80 = v33;
      v91 = 65537;
      goto LABEL_7;
    }
  }

  if (*(a1 + v23[19]) == 1)
  {
    goto LABEL_5;
  }

  v93 = 0;
  v84 = 0;
  v92 = 0;
  KeyPath = 0;
  v81 = 0;
  v80 = 0;
  v91 = 0;
  v90 = 0;
LABEL_7:
  v34 = *(v24 + 8);
  LOBYTE(v98) = *v24;
  v99 = v34;
  sub_272434730();
  if (v94 == 5)
  {
  }

  else
  {
    v35 = sub_272434CF0();

    if ((v35 & 1) == 0)
    {
      v36 = 1;
      goto LABEL_13;
    }
  }

  v36 = 1;
  if ((*(a1 + v23[19]) & 1) == 0)
  {
    v37 = v74;
    sub_27241BE78(v74);
    v38 = (a1 + v23[18]);
    v39 = *v38;
    v40 = *(v38 + 1);
    LOBYTE(v98) = v39;
    v99 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600, &unk_272436D28);
    sub_272434730();
    v41 = sub_2724343F0();
    sub_272433CE0();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v50 = v37;
    v51 = v72;
    sub_27242A258(v50, v72, &qword_2808967E8, &qword_272437020);
    v52 = v51 + *(v73 + 36);
    *v52 = v41;
    *(v52 + 8) = v43;
    *(v52 + 16) = v45;
    *(v52 + 24) = v47;
    *(v52 + 32) = v49;
    *(v52 + 40) = 0;
    v53 = v51;
    v54 = v75;
    sub_27242A258(v53, v75, &qword_2808967F0, &qword_272437028);
    v55 = *(a1 + v23[20]);
    v56 = v76;
    sub_27240A0F0(v54, v76, &qword_2808967F0, &qword_272437028);
    v57 = v77;
    sub_27240A0F0(v56, v77, &qword_2808967F0, &qword_272437028);
    *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896818, &qword_272437050) + 48)) = (v55 & 1) == 0;
    sub_27240A158(v54, &qword_2808967F0, &qword_272437028);
    sub_27240A158(v56, &qword_2808967F0, &qword_272437028);
    sub_27242A258(v57, v22, &qword_2808967E0, &qword_272437018);
    v36 = 0;
  }

LABEL_13:
  v58 = 1;
  (*(v85 + 56))(v22, v36, 1, v86);
  if (os_variant_has_internal_ui())
  {
    v59 = v78;
    if (*(a1 + v23[22]) == 1)
    {
      sub_27241C984(v78);
      v58 = 0;
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896810, &qword_272437048);
    (*(*(v60 - 8) + 56))(v59, v58, 1, v60);
    sub_27242A258(v59, v9, &qword_2808967D0, &qword_272437008);
    v58 = 0;
  }

  (*(v87 + 56))(v9, v58, 1, v88);
  v61 = v79;
  sub_27240A0F0(v22, v79, &qword_2808967F8, &qword_272437030);
  v62 = v89;
  sub_27240A0F0(v9, v89, &qword_2808967D8, &qword_272437010);
  v88 = v22;
  *&v94 = v93;
  v63 = v84;
  *(&v94 + 1) = v84;
  *&v95 = v90;
  *(&v95 + 1) = v92;
  v64 = KeyPath;
  *&v96 = KeyPath;
  *(&v96 + 1) = v91;
  v65 = v80;
  *v97 = v80;
  memset(&v97[8], 0, 32);
  v66 = v81;
  v97[40] = v81;
  v67 = *v97;
  v68 = v83;
  v83[2] = v96;
  v68[3] = v67;
  v68[4] = *&v97[16];
  *(v68 + 73) = *&v97[25];
  v69 = v95;
  *v68 = v94;
  v68[1] = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896800, &qword_272437038);
  sub_27240A0F0(v61, v68 + *(v70 + 48), &qword_2808967F8, &qword_272437030);
  sub_27240A0F0(v62, v68 + *(v70 + 64), &qword_2808967D8, &qword_272437010);
  sub_27240A0F0(&v94, &v98, &qword_280896808, &qword_272437040);
  sub_27240A158(v9, &qword_2808967D8, &qword_272437010);
  sub_27240A158(v88, &qword_2808967F8, &qword_272437030);
  sub_27240A158(v62, &qword_2808967D8, &qword_272437010);
  sub_27240A158(v61, &qword_2808967F8, &qword_272437030);
  v98 = v93;
  v99 = v63;
  v100 = v90;
  v101 = v92;
  v102 = v64;
  v103 = v91;
  v104 = v65;
  v105 = 0u;
  v106 = 0u;
  v107 = v66;
  return sub_27240A158(&v98, &qword_280896808, &qword_272437040);
}

uint64_t sub_27241BAE0()
{
  v1 = sub_272433B30();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272434900();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-v7];
  v9 = (*(v0 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 20) + 8) + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);

  v10 = sub_2724349A0();

  sub_2724348F0();
  (*(v3 + 16))(v6, v8, v2);
  sub_27242AA04(0, &qword_280896670, off_279E42450);
  if (v10 < 51)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    sub_272433B20();
    v18 = sub_272434950();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v11 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_272433B20();
    sub_272434950();
    (*(v3 + 8))(v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896938, &qword_272437128);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_272436A80;
    v15 = *v9;
    v14 = v9[1];
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_27242A9B0(v13, v16, v17);
    *(v13 + 32) = v15;
    *(v13 + 40) = v14;

    v18 = sub_272434940();
  }

  return v18;
}

uint64_t sub_27241BE78@<X0>(_OWORD *a1@<X8>)
{
  v95 = a1;
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v3 = v2 - 8;
  v82 = *(v2 - 8);
  v102 = *(v82 + 64);
  MEMORY[0x28223BE20](v2);
  v96 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896820, &qword_272437058);
  v6 = *(v5 - 8);
  v86 = v5;
  v87 = v6;
  MEMORY[0x28223BE20](v5);
  v83 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896828, &qword_272437060);
  v9 = *(v8 - 8);
  v88 = v8;
  v89 = v9;
  MEMORY[0x28223BE20](v8);
  v84 = &v74 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896830, &qword_272437068);
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v85 = &v74 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896838, &qword_272437070);
  v91 = *(v93 - 8);
  v12 = MEMORY[0x28223BE20](v93);
  v90 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = &v74 - v14;
  v15 = sub_272433B30();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_272434900();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v74 - v21;
  sub_2724348F0();
  (*(v17 + 16))(v20, v22, v16);
  sub_27242AA04(0, &qword_280896670, off_279E42450);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v25 = sub_272434950();
  v27 = v26;
  v28 = (*(v17 + 8))(v22, v16);
  *&v114 = v25;
  *(&v114 + 1) = v27;
  sub_27240A1B8(v28, v29, v30);
  v31 = sub_2724344C0();
  v99 = v32;
  v100 = v31;
  LOBYTE(v16) = v33;
  v81 = v34;
  KeyPath = swift_getKeyPath();
  v80 = sub_2724343F0();
  v97 = v16 & 1;
  LOBYTE(v114) = v16 & 1;
  LOBYTE(v110) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v35 = *(v114 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  sub_272428CD4(0, v35, v114);
  v37 = v36;

  v38 = swift_getKeyPath();
  v39 = v1;
  v40 = (v1 + *(v3 + 48));
  v41 = *v40;
  v78 = v40[1];
  v79 = v41;
  v42 = v40[2];
  v76 = v1;
  v77 = v42;
  *&v110 = v41;
  *(&v110 + 1) = v78;
  *&v111 = v42;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0, &qword_272436E10);
  sub_272434750();
  v74 = v114;
  v43 = v115;
  v44 = v116;
  v45 = v96;
  sub_2724276E8(v39, v96);
  v46 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v47 = swift_allocObject();
  sub_272427750(v45, v47 + v46);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_27242A2C0;
  *(v48 + 24) = v47;
  *&v110 = v37;
  v114 = v74;
  v115 = v43;
  v116 = v44;
  v103 = &v110;
  v104 = v38;
  v105 = sub_27242A358;
  v106 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896840, &qword_272437098);
  sub_27242A398();
  v49 = v83;
  sub_272434480();

  v50 = sub_27240BFB4(&qword_280896898, &qword_280896820, &qword_272437058, MEMORY[0x277CDE5A0]);
  v51 = v84;
  v52 = v86;
  sub_2724345D0();
  (*(v87 + 8))(v49, v52);
  *&v114 = v52;
  *(&v114 + 1) = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v85;
  v55 = v88;
  sub_272434590();
  (*(v89 + 8))(v51, v55);
  *&v114 = v79;
  *(&v114 + 1) = v78;
  v115 = v77;
  sub_272434730();
  v114 = v110;
  v56 = v96;
  sub_2724276E8(v76, v96);
  v57 = swift_allocObject();
  sub_272427750(v56, v57 + v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896578, "l>");
  *&v110 = v55;
  *(&v110 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_27242A610();
  v58 = v101;
  v59 = v92;
  sub_272434660();

  (*(v94 + 8))(v54, v59);
  v61 = v90;
  v60 = v91;
  v62 = *(v91 + 16);
  v63 = v93;
  v62(v90, v58, v93);
  *&v110 = v100;
  *(&v110 + 1) = v99;
  LOBYTE(v111) = v97;
  *(&v111 + 1) = *v109;
  DWORD1(v111) = *&v109[3];
  v64 = v81;
  *(&v111 + 1) = v81;
  *&v112 = KeyPath;
  BYTE8(v112) = 1;
  HIDWORD(v112) = *&v108[3];
  *(&v112 + 9) = *v108;
  LOBYTE(v58) = v80;
  LOBYTE(v113[0]) = v80;
  DWORD1(v113[0]) = *&v107[3];
  *(v113 + 1) = *v107;
  *(&v113[1] + 8) = 0u;
  *(v113 + 8) = 0u;
  BYTE8(v113[2]) = 1;
  v65 = v111;
  v66 = v95;
  *v95 = v110;
  v66[1] = v65;
  v67 = v112;
  v68 = v113[0];
  v69 = v113[1];
  *(v66 + 73) = *(&v113[1] + 9);
  v66[3] = v68;
  v66[4] = v69;
  v66[2] = v67;
  v70 = v66;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968A8, &qword_2724370C0);
  v62(&v70[*(v71 + 48)], v61, v63);
  sub_27240A0F0(&v110, &v114, &qword_2808966D8, &qword_272436E70);
  v72 = *(v60 + 8);
  v72(v101, v63);
  v72(v61, v63);
  *&v114 = v100;
  *(&v114 + 1) = v99;
  LOBYTE(v115) = v97;
  *(&v115 + 1) = *v109;
  HIDWORD(v115) = *&v109[3];
  v116 = v64;
  v117 = KeyPath;
  v118 = 1;
  *v119 = *v108;
  *&v119[3] = *&v108[3];
  v120 = v58;
  *&v121[3] = *&v107[3];
  *v121 = *v107;
  v123 = 0u;
  v122 = 0u;
  v124 = 1;
  return sub_27240A158(&v114, &qword_2808966D8, &qword_272436E70);
}

uint64_t sub_27241C984@<X0>(void *a1@<X8>)
{
  v76 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8, &qword_2724361A0);
  v88 = *(v90 - 8);
  v2 = MEMORY[0x28223BE20](v90);
  v95 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v85 = &v70 - v4;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896958, &unk_272437140);
  v87 = *(v89 - 8);
  v5 = MEMORY[0x28223BE20](v89);
  v86 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v70 - v7;
  v9 = sub_272434110();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  sub_272434100();
  sub_2724340F0();
  v11 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896960, &qword_2724363A0);
  sub_272434960();
  sub_2724340E0();

  sub_2724340F0();
  sub_272434130();
  v12 = sub_2724344B0();
  v92 = v13;
  v93 = v12;
  LODWORD(v75) = v14;
  v94 = v15;
  sub_272434120();
  v16 = (v1 + *(v11 + 44));
  v17 = *v16;
  v18 = *(v16 + 2);
  v99 = v17;
  v100 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808967A0, &qword_272436F58);
  sub_272434750();
  v84 = v8;
  sub_272434870();
  sub_272434100();
  sub_2724340F0();
  v19 = (v1 + *(v11 + 32));
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v97) = v20;
  v98 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434730();
  sub_2724340E0();

  sub_2724340F0();
  sub_272434130();
  v82 = sub_2724344B0();
  v81 = v22;
  v74 = v23;
  v83 = v24;
  sub_272434100();
  sub_2724340F0();
  v25 = objc_opt_self();
  v26 = [v25 sharedPreferences];
  v27 = [v26 dictationIsEnabled];

  LOBYTE(v97) = v27;
  sub_272434960();
  sub_2724340E0();

  sub_2724340F0();
  sub_272434130();
  v91 = sub_2724344B0();
  v80 = v28;
  v30 = v29;
  v79 = v31;
  sub_272434100();
  sub_2724340F0();
  v32 = [v25 sharedPreferences];
  LOBYTE(v25) = [v32 suppressDictationOptIn];

  LOBYTE(v97) = v25;
  sub_272434960();
  sub_2724340E0();

  sub_2724340F0();
  sub_272434130();
  v72 = sub_2724344B0();
  v77 = v33;
  v73 = v34;
  v78 = v35;
  sub_272434120();
  v36 = v85;
  sub_2724347A0();
  LOBYTE(v97) = v75 & 1;
  LOBYTE(v8) = v75 & 1;
  v71 = v75 & 1;
  v37 = v86;
  v38 = *(v87 + 16);
  v39 = v89;
  v38(v86, v84, v89);
  v40 = v74 & 1;
  LOBYTE(v99) = v74 & 1;
  v41 = v30 & 1;
  v96 = v30 & 1;
  v70 = v30 & 1;
  v75 = *(v88 + 16);
  v75(v95, v36, v90);
  v42 = v76;
  v43 = v92;
  *v76 = v93;
  v42[1] = v43;
  *(v42 + 16) = v8;
  v42[3] = v94;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896968, &qword_272437150);
  v38(v42 + v44[12], v37, v39);
  v45 = v42 + v44[16];
  v46 = v82;
  v47 = v81;
  *v45 = v82;
  *(v45 + 1) = v47;
  v45[16] = v40;
  *(v45 + 3) = v83;
  v48 = v42 + v44[20];
  v49 = v80;
  *v48 = v91;
  *(v48 + 1) = v49;
  v48[16] = v41;
  *(v48 + 3) = v79;
  v50 = v42 + v44[24];
  v51 = v72;
  v52 = v77;
  *v50 = v72;
  *(v50 + 1) = v52;
  v74 = v73 & 1;
  v50[16] = v73 & 1;
  *(v50 + 3) = v78;
  v53 = v42 + v44[28];
  v54 = v90;
  v75(v53, v95, v90);
  sub_27240A20C(v93, v92, v71);

  sub_27240A20C(v46, v47, v40);

  sub_27240A20C(v91, v49, v70);

  v55 = v51;
  v56 = v51;
  v57 = v77;
  LOBYTE(v42) = v74;
  sub_27240A20C(v56, v77, v74);
  v58 = *(v88 + 8);

  v58(v85, v54);
  v59 = *(v87 + 8);
  v60 = v89;
  v59(v84, v89);
  v61.n128_f64[0] = v58(v95, v54);
  sub_27240A21C(v55, v57, v42, v61, v62);

  sub_27240A21C(v91, v80, v96, v63, v64);

  sub_27240A21C(v82, v81, v99, v65, v66);

  v67.n128_f64[0] = v59(v86, v60);
  sub_27240A21C(v93, v92, v97, v67, v68);
}

uint64_t sub_27241D404@<X0>(void *a1@<X8>)
{
  sub_27241D484(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965E8, &qword_272436D20);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_27241D484@<X0>(void *a1@<X8>)
{
  v70 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966C0, &qword_272436E30);
  v1 = MEMORY[0x28223BE20](v67);
  v69 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v68 = (&v62 - v3);
  v4 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v66 = *(v4 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_272433B30();
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_272434900();
  v63 = *(v65 - 8);
  v8 = MEMORY[0x28223BE20](v65);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v62 - v11;
  v13 = objc_opt_self();
  v14 = [v13 sharedPreferences];
  v15 = [v14 dictationIsEnabled];

  if ((v15 & 1) != 0 || (v16 = [v13 sharedPreferences], v17 = objc_msgSend(v16, sel_suppressDictationOptIn), v16, !v17))
  {
    v37 = v71;
    sub_2724276E8(v71, &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v38 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v39 = swift_allocObject();
    sub_272427750(&v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38);
    KeyPath = swift_getKeyPath();
    v41 = v37 + *(v4 + 32);
    v42 = *v41;
    v43 = *(v41 + 8);
    LOBYTE(v93[0]) = v42;
    *(&v93[0] + 1) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
    sub_272434730();
    LODWORD(v66) = LOBYTE(v92[0]);
    v44 = sub_272434850();
    v46 = v45;
    sub_2724245C0(v37, v93);
    v85 = v93[10];
    v86 = v93[11];
    v81 = v93[6];
    v82 = v93[7];
    v83 = v93[8];
    v84 = v93[9];
    v77 = v93[2];
    v78 = v93[3];
    v79 = v93[4];
    v80 = v93[5];
    v75 = v93[0];
    v76 = v93[1];
    v88[10] = v93[10];
    v88[11] = v93[11];
    v88[6] = v93[6];
    v88[7] = v93[7];
    v88[8] = v93[8];
    v88[9] = v93[9];
    v88[2] = v93[2];
    v88[3] = v93[3];
    v88[4] = v93[4];
    v88[5] = v93[5];
    v87 = *&v93[12];
    v89 = *&v93[12];
    v88[0] = v93[0];
    v88[1] = v93[1];
    sub_27240A0F0(&v75, v92, &qword_2808966C8, &qword_272436E60);
    sub_27240A158(v88, &qword_2808966C8, &qword_272436E60);
    v93[10] = v85;
    v93[11] = v86;
    *&v93[12] = v87;
    v93[6] = v81;
    v93[7] = v82;
    v93[8] = v83;
    v93[9] = v84;
    v93[2] = v77;
    v93[3] = v78;
    v93[4] = v79;
    v93[5] = v80;
    v93[0] = v75;
    v93[1] = v76;
    v47 = sub_2724343F0();
    LOBYTE(v92[0]) = 1;
    *v90 = v44;
    *&v90[8] = v46;
    *&v90[176] = v93[10];
    *&v90[192] = v93[11];
    *&v90[208] = *&v93[12];
    *&v90[112] = v93[6];
    *&v90[128] = v93[7];
    *&v90[144] = v93[8];
    *&v90[160] = v93[9];
    *&v90[48] = v93[2];
    *&v90[64] = v93[3];
    *&v90[80] = v93[4];
    *&v90[96] = v93[5];
    *&v90[16] = v93[0];
    *&v90[32] = v93[1];
    v90[216] = v47;
    memset(&v90[224], 0, 32);
    v90[256] = 1;
    memcpy(v72, v90, 0x101uLL);
    memcpy(v91, v90, 0x101uLL);
    memcpy(&v74[7], v90, 0x101uLL);

    sub_27240A0F0(v90, v93, &qword_2808966D0, &qword_272436E68);

    sub_27240A0F0(v91, v93, &qword_2808966D0, &qword_272436E68);
    sub_27240A158(v72, &qword_2808966D0, &qword_272436E68);

    v92[0] = sub_272429804;
    v92[1] = v39;
    v92[2] = KeyPath;
    LOBYTE(v92[3]) = v66;
    memcpy(&v92[3] + 1, v74, 0x108uLL);
    sub_2724298B8(v92);
    memcpy(v93, v92, 0x122uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966D8, &qword_272436E70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966E0, &qword_272436E78);
    sub_2724298C4();
    sub_27240BFB4(&qword_280896710, &qword_2808966E0, &qword_272436E78, MEMORY[0x277CE14C0]);
    sub_272434290();
    v36 = v71;
    sub_27240A158(v90, &qword_2808966D0, &qword_272436E68);

    memcpy(v93, v73, 0x122uLL);
  }

  else
  {
    sub_2724348F0();
    v18 = v63;
    v19 = v65;
    (*(v63 + 16))(v10, v12, v65);
    sub_27242AA04(0, &qword_280896670, off_279E42450);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_272433B20();
    v22 = sub_272434950();
    v24 = v23;
    v25 = (*(v18 + 8))(v12, v19);
    *&v93[0] = v22;
    *(&v93[0] + 1) = v24;
    sub_27240A1B8(v25, v26, v27);
    v28 = sub_2724344C0();
    v30 = v29;
    LOBYTE(v24) = v31;
    v33 = v32;
    v34 = swift_getKeyPath();
    v35 = sub_2724343F0();
    LOBYTE(v93[0]) = v24 & 1;
    v92[0] = v28;
    v92[1] = v30;
    LOBYTE(v92[2]) = v24 & 1;
    v92[3] = v33;
    v92[4] = v34;
    LOBYTE(v92[5]) = 1;
    LOBYTE(v92[6]) = v35;
    memset(&v92[7], 0, 32);
    LOBYTE(v92[11]) = 1;
    sub_272429A10(v92);
    memcpy(v73, v92, 0x122uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966D8, &qword_272436E70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966E0, &qword_272436E78);
    sub_2724298C4();
    sub_27240BFB4(&qword_280896710, &qword_2808966E0, &qword_272436E78, MEMORY[0x277CE14C0]);
    sub_272434290();
    v36 = v71;
  }

  v48 = sub_272434850();
  v49 = v68;
  *v68 = v48;
  *(v49 + 8) = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896718, &qword_272436E90);
  sub_27242567C(v36, v49 + *(v51 + 44));
  v52 = sub_272434410();
  sub_272433CE0();
  v53 = v49 + *(v67 + 36);
  *v53 = v52;
  *(v53 + 8) = v54;
  *(v53 + 16) = v55;
  *(v53 + 24) = v56;
  *(v53 + 32) = v57;
  *(v53 + 40) = 0;
  memcpy(v72, v93, 0x122uLL);
  v58 = v69;
  sub_27240A0F0(v49, v69, &qword_2808966C0, &qword_272436E30);
  memcpy(v73, v72, 0x122uLL);
  v59 = v70;
  memcpy(v70, v72, 0x122uLL);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896720, &qword_272436E98);
  sub_27240A0F0(v58, v59 + *(v60 + 48), &qword_2808966C0, &qword_272436E30);
  sub_27240A0F0(v73, v92, &qword_280896728, &qword_272436EA0);
  sub_27240A158(v49, &qword_2808966C0, &qword_272436E30);
  sub_27240A158(v58, &qword_2808966C0, &qword_272436E30);
  memcpy(v92, v72, 0x122uLL);
  return sub_27240A158(v92, &qword_280896728, &qword_272436EA0);
}

uint64_t sub_27241DE10()
{
  v1 = sub_272433B30();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272434900();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  v9 = (v0 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 68));
  v10 = *v9;
  v11 = *(v9 + 1);
  v16[16] = v10;
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896698, &qword_272436E08);
  sub_272434730();
  sub_2724348F0();
  (*(v3 + 16))(v6, v8, v2);
  sub_27242AA04(0, &qword_280896670, off_279E42450);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v14 = sub_272434950();
  (*(v3 + 8))(v8, v2);
  return v14;
}

uint64_t sub_27241E154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966B8, &qword_272436E28);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v21 - v1;
  v3 = sub_272433B30();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_272434900();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  sub_2724348F0();
  (*(v5 + 16))(v8, v10, v4);
  sub_27242AA04(0, &qword_280896670, off_279E42450);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v13 = sub_272434950();
  v15 = v14;
  (*(v5 + 8))(v10, v4);
  v21[1] = v13;
  v21[2] = v15;
  sub_272433CC0();
  v16 = sub_272433CD0();
  v17 = (*(*(v16 - 8) + 56))(v2, 0, 1, v16);
  sub_27240A1B8(v17, v18, v19);
  return sub_272434790();
}

uint64_t sub_27241E414@<X0>(uint64_t a1@<X8>)
{
  v8 = sub_27241E470();
  sub_27240A1B8(v8, v2, v3);
  result = sub_2724344C0();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_27241E470()
{
  v1 = sub_272433B30();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272434900();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7];
  v9 = (v0 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 68));
  v10 = *v9;
  v11 = *(v9 + 1);
  v21 = v10;
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896698, &qword_272436E08);
  sub_272434730();
  if (v20 && v20 != 1)
  {
    sub_2724348F0();
    (*(v3 + 16))(v6, v8, v2);
    sub_27242AA04(0, &qword_280896670, off_279E42450);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    v12 = [objc_opt_self() currentDevice];
    [v12 userInterfaceIdiom];

    sub_2724348F0();
    (*(v3 + 16))(v6, v8, v2);
    sub_27242AA04(0, &qword_280896670, off_279E42450);
    v13 = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
  }

  v16 = v14;
  sub_272433B20();
  v17 = sub_272434950();
  (*(v3 + 8))(v8, v2);
  return v17;
}

uint64_t sub_27241E944(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v3 = *(v2 - 8);
  v4 = &v32 - ((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v32 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = MEMORY[0x277D84F90];

  sub_272433C10();
  v6 = (a1 + *(v5 + 32));
  v7 = v6[1];
  v34 = *v6;
  v8 = v34;
  v35 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896678, &qword_272436DF8);
  sub_272434730();
  v9 = v33;
  sub_2724276E8(a1, v4);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_272427750(v4, v11 + v10);
  v12 = &v9[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError];
  v13 = *&v9[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError];
  v14 = *&v9[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError + 8];
  *v12 = sub_272427F38;
  v12[1] = v11;
  sub_272427F50(v13, v14);

  v34 = v8;
  v35 = v7;
  sub_272434730();
  v15 = v33;
  sub_2724276E8(a1, v4);
  v16 = swift_allocObject();
  sub_272427750(v4, v16 + v10);
  v17 = &v15[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didStart];
  v18 = *&v15[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didStart];
  v19 = *&v15[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didStart + 8];
  *v17 = sub_272427F60;
  v17[1] = v16;
  sub_272427F50(v18, v19);

  v34 = v8;
  v35 = v7;
  sub_272434730();
  v20 = v33;
  sub_2724276E8(a1, v4);
  v21 = swift_allocObject();
  sub_272427750(v4, v21 + v10);
  v22 = &v20[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didEnd];
  v23 = *&v20[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didEnd];
  v24 = *&v20[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didEnd + 8];
  *v22 = sub_272427F78;
  v22[1] = v21;
  sub_272427F50(v23, v24);

  v34 = v8;
  v35 = v7;
  sub_272434730();
  v25 = v33;
  sub_2724276E8(a1, v4);
  v26 = swift_allocObject();
  sub_272427750(v4, v26 + v10);
  v27 = &v25[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_recognizedPhonemesBlock];
  v28 = *&v25[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_recognizedPhonemesBlock];
  v29 = *&v25[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_recognizedPhonemesBlock + 8];
  *v27 = sub_272427F90;
  v27[1] = v26;
  sub_272427F50(v28, v29);

  sub_2724276E8(a1, v4);
  v30 = swift_allocObject();
  sub_272427750(v4, v30 + v10);
  sub_272428070(sub_272428000, v30);
  sub_272433C30();

  return sub_272433C40();
}

void sub_27241ECD0(uint64_t a1)
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434730();
  if (v8 > 5u)
  {
  }

  else
  {
    v1 = sub_272434CF0();

    if ((v1 & 1) == 0)
    {
      v2 = sub_272433BA0();
      v3 = sub_272434B30();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_272406000, v2, v3, "recordingManager.didError, dictationState -> .errored (unknownError)", v4, 2u);
        MEMORY[0x2743C99D0](v4, -1, -1);
      }

      sub_272434740();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896698, &qword_272436E08);
      sub_272434740();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600, &unk_272436D28);
      sub_272434740();
      return;
    }
  }

  v5 = sub_272433BA0();
  v6 = sub_272434B30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_272406000, v5, v6, "recordingManager.didError, already in .errored state. no-op", v7, 2u);
    MEMORY[0x2743C99D0](v7, -1, -1);
  }
}

double sub_27241F004(uint64_t a1)
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v1 = sub_272433BA0();
  v2 = sub_272434B30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_272406000, v1, v2, "recordingManager.didStart, dictationState -> .recording", v3, 2u);
    MEMORY[0x2743C99D0](v3, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434740();

  return result;
}

void sub_27241F10C(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v49[-v7];
  v9 = (a1 + *(v6 + 32));
  v10 = *(v9 + 1);
  v52 = *v9;
  v53 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434730();
  if (v51 == 3)
  {

LABEL_4:
    sub_2724276E8(a1, v8);
    v12 = sub_272433BA0();
    v13 = sub_272434B30();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v51 = v15;
      *v14 = 136315138;
      v16 = &v8[*(v2 + 32)];
      v17 = *v16;
      v18 = *(v16 + 1);
      v52 = v17;
      v53 = v18;
      sub_272434730();
      v19 = 0xE800000000000000;
      v20 = 0x64656873696E6966;
      if (v50 != 5)
      {
        v20 = 0x6465726F727265;
        v19 = 0xE700000000000000;
      }

      v21 = 0x6F636552656E6F64;
      v22 = 0xED0000676E696472;
      if (v50 == 3)
      {
        v21 = 0x6E6964726F636572;
        v22 = 0xE900000000000067;
      }

      if (v50 <= 4u)
      {
        v20 = v21;
        v19 = v22;
      }

      v23 = 0xE400000000000000;
      v24 = 0xD000000000000010;
      v25 = 0x8000000272437A90;
      if (v50 != 1)
      {
        v24 = 0xD000000000000014;
        v25 = 0x8000000272437AB0;
      }

      if (v50)
      {
        v23 = v25;
      }

      else
      {
        v24 = 1701602409;
      }

      if (v50 <= 2u)
      {
        v26 = v24;
      }

      else
      {
        v26 = v20;
      }

      if (v50 <= 2u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v19;
      }

      sub_272413884(v8);
      v28 = sub_2724285FC(v26, v27, &v51);

      *(v14 + 4) = v28;
      _os_log_impl(&dword_272406000, v12, v13, "recordingManager.didEnd, %s dictationState -> .doneRecording", v14, 0xCu);
      v29 = __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x2743C99D0](v15, -1, -1, v29);
      MEMORY[0x2743C99D0](v14, -1, -1);
    }

    else
    {

      sub_272413884(v8);
    }

    v48 = *(v9 + 1);
    v52 = *v9;
    v53 = v48;
    LOBYTE(v51) = 4;

    sub_272434740();

    return;
  }

  v11 = sub_272434CF0();

  if (v11)
  {
    goto LABEL_4;
  }

  sub_2724276E8(a1, v5);
  v30 = sub_272433BA0();
  v31 = sub_272434B30();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v51 = v33;
    *v32 = 136315138;
    v34 = &v5[*(v2 + 32)];
    v35 = *v34;
    v36 = *(v34 + 1);
    v52 = v35;
    v53 = v36;
    sub_272434730();
    v37 = 0xE800000000000000;
    v38 = 0x64656873696E6966;
    if (v50 != 5)
    {
      v38 = 0x6465726F727265;
      v37 = 0xE700000000000000;
    }

    v39 = 0x6F636552656E6F64;
    v40 = 0xED0000676E696472;
    if (v50 == 3)
    {
      v39 = 0x6E6964726F636572;
      v40 = 0xE900000000000067;
    }

    if (v50 <= 4u)
    {
      v38 = v39;
      v37 = v40;
    }

    v41 = 0xE400000000000000;
    v42 = 0xD000000000000010;
    v43 = 0x8000000272437A90;
    if (v50 != 1)
    {
      v42 = 0xD000000000000014;
      v43 = 0x8000000272437AB0;
    }

    if (v50)
    {
      v41 = v43;
    }

    else
    {
      v42 = 1701602409;
    }

    if (v50 <= 2u)
    {
      v44 = v42;
    }

    else
    {
      v44 = v38;
    }

    if (v50 <= 2u)
    {
      v45 = v41;
    }

    else
    {
      v45 = v37;
    }

    sub_272413884(v5);
    v46 = sub_2724285FC(v44, v45, &v51);

    *(v32 + 4) = v46;
    _os_log_impl(&dword_272406000, v30, v31, "recordingManager.didEnd, state (%s) is not .recording, no-op.", v32, 0xCu);
    v47 = __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x2743C99D0](v33, -1, -1, v47);
    MEMORY[0x2743C99D0](v32, -1, -1);
  }

  else
  {

    sub_272413884(v5);
  }
}

uint64_t sub_27241F714(uint64_t a1, uint64_t a2)
{
  v4 = sub_2724348B0();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2724348D0();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_27242AA04(0, &qword_280896588, 0x277D85C78);
  v13 = sub_272434B90();
  sub_2724276E8(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_272427750(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  aBlock[4] = sub_2724282C8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2724205BC;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  sub_2724348C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27242AA74(&qword_280896680, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896688, &qword_272436E00);
  sub_27240BFB4(&qword_280896690, &qword_280896688, &qword_272436E00, MEMORY[0x277D83970]);
  sub_272434C50();
  MEMORY[0x2743C91B0](0, v9, v6, v16);
  _Block_release(v16);

  (*(v21 + 8))(v6, v4);
  return (*(v19 + 8))(v9, v20);
}

void *sub_27241FAA4(uint64_t a1, double (**a2)(char *, int *))
{
  v81 = sub_272433AC0();
  MEMORY[0x28223BE20](v81);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v77 = a1 + 16;
  if (!v9)
  {
    goto LABEL_18;
  }

  v79 = a2;
  v10 = 0;
  a2 = (v4 + 8);
  v76 = a1;
  v11 = a1 + 40;
  v12 = MEMORY[0x277D84F90];
  v78 = v11;
LABEL_3:
  v80 = v12;
  v13 = (v11 + 16 * v10);
  v14 = v10;
  do
  {
    if (v14 >= v9)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v10 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_38;
    }

    v15 = v9;
    v16 = *(v13 - 1);
    v17 = *v13;
    v84 = v16;
    v85 = v17;

    v18 = sub_272433AB0();
    sub_27240A1B8(v18, v19, v20);
    v21 = sub_272434BF0();
    v23 = v22;
    (*a2)(v8, v81);

    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {
      v12 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_272415200(0, *(v12 + 16) + 1, 1);
        v12 = v82;
      }

      v11 = v78;
      v27 = *(v12 + 16);
      v26 = *(v12 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_272415200((v26 > 1), v27 + 1, 1);
        v12 = v82;
      }

      *(v12 + 16) = v27 + 1;
      v28 = v12 + 16 * v27;
      *(v28 + 32) = v16;
      *(v28 + 40) = v17;
      v9 = v15;
      if (v10 == v15)
      {

        a2 = v79;
        goto LABEL_18;
      }

      goto LABEL_3;
    }

    ++v14;
    v13 += 2;
    v9 = v15;
  }

  while (v10 != v15);
  v29 = *(v80 + 16);

  a2 = v79;
  v14 = v76;
  if (!v29)
  {
    v81 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
    v43 = sub_272433BA0();
    v44 = sub_272434B30();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_272406000, v43, v44, "recognizedPhonemesBlock, dictationState -> .finished", v45, 2u);
      MEMORY[0x2743C99D0](v45, -1, -1);
    }

    v46 = a2 + v81[8];
    v47 = *(v46 + 1);
    LOBYTE(v84) = *v46;
    v85 = v47;
    LOBYTE(v82) = 5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
    sub_272434740();

    v48 = sub_272433BA0();
    v49 = sub_272434B30();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v84 = v51;
      *v50 = 136315138;
      v52 = MEMORY[0x2743C9070](v14, MEMORY[0x277D837D0]);
      v54 = sub_2724285FC(v52, v53, &v84);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_272406000, v48, v49, "phonemeSuggestions: %s", v50, 0xCu);
      v55 = __swift_destroy_boxed_opaque_existential_0(v51);
      v56 = v51;
      v9 = v15;
      MEMORY[0x2743C99D0](v56, -1, -1, v55);
      MEMORY[0x2743C99D0](v50, -1, -1);
    }

    v57 = v77 + 16 * v9;
    v13 = *v57;
    v8 = *(v57 + 8);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v58 = *(v14 + 2);
      if (v58)
      {
        goto LABEL_27;
      }

      goto LABEL_40;
    }

LABEL_39:
    v14 = sub_272429080(v14, v5, v6);
    v58 = *(v14 + 2);
    if (v58)
    {
LABEL_27:
      *(v14 + 2) = v58 - 1;

      v87 = v14;
      v58 = *(v14 + 2);
      if (v58 < *(v14 + 3) >> 1)
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v14 = sub_2724150F4(1, v58 + 1, 1, v14, v5, v6);
    v87 = v14;
LABEL_28:
    sub_272429678(0, 0, 1, v13, v8);

    v87 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    v84 = v14;

    sub_272433C10();
    v59 = sub_272433BA0();
    v60 = sub_272434B30();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v84 = v62;
      *v61 = 136315138;

      v64 = MEMORY[0x2743C9070](v63, MEMORY[0x277D837D0]);
      v66 = v65;

      v67 = sub_2724285FC(v64, v66, &v84);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_272406000, v59, v60, "rearrangedIPAs: %s", v61, 0xCu);
      v68 = __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x2743C99D0](v62, -1, -1, v68);
      MEMORY[0x2743C99D0](v61, -1, -1);
    }

    if (*(v14 + 2) == 1)
    {
      v70 = *(v14 + 4);
      v69 = *(v14 + 5);
      v71 = v81;
      v72 = (a2 + v81[10]);
      v73 = *v72;
      v74 = v72[1];
      v75 = v72[2];
      v84 = *v72;
      v85 = v74;
      v86 = v75;
      v82 = v70;
      v83 = v69;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0, &qword_272436E10);
      sub_272434740();
      if ((*(a2 + v71[19]) & 1) == 0)
      {
        v84 = v73;
        v85 = v74;
        v86 = v75;
        result = sub_272434730();
        if (!v83)
        {
          __break(1u);
          return result;
        }

        sub_2724202B0(v82, v83);
      }
    }
  }

LABEL_18:
  v30 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v31 = sub_272433BA0();
  v32 = sub_272434B30();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_272406000, v31, v32, "recognizedPhonemesBlock empty phonemeSuggestions, dictationState -> .errored (noSpeechDetected)", v33, 2u);
    MEMORY[0x2743C99D0](v33, -1, -1);
  }

  v34 = a2 + v30[8];
  v35 = *(v34 + 1);
  LOBYTE(v84) = *v34;
  v85 = v35;
  LOBYTE(v82) = 6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434740();

  v36 = a2 + v30[17];
  v37 = *v36;
  v38 = *(v36 + 1);
  LOBYTE(v84) = v37;
  v85 = v38;
  LOBYTE(v82) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896698, &qword_272436E08);
  sub_272434740();
  v39 = a2 + v30[16];
  v40 = *v39;
  v41 = *(v39 + 1);
  LOBYTE(v84) = v40;
  v85 = v41;
  LOBYTE(v82) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600, &unk_272436D28);
  return sub_272434740();
}

void sub_2724202B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966B0, &qword_272436E20);
  sub_272434730();
  [v15 setUsesApplicationAudioSession_];

  sub_272434730();
  [v15 stopSpeakingAtBoundary_];

  swift_beginAccess();

  v2 = sub_272434910();

  v3 = [objc_opt_self() voiceWithLanguage_];

  v4 = sub_272434910();
  if (v3)
  {
    v5 = v4;
    v6 = [v3 language];
    if (!v6)
    {
      sub_272434930();
      v6 = sub_272434910();
    }

    v7 = [objc_opt_self() lhPhonemesFromIPA:v5 language:v6];

    if (v7)
    {
      v8 = sub_272434930();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    sub_272434C90();

    if (v10)
    {
      MEMORY[0x2743C8FE0](v8, v10);

      MEMORY[0x2743C8FE0](0x726F3D696F745C1BLL, 0xEB000000005C6874);
      v11 = objc_allocWithZone(MEMORY[0x277CB84C0]);
      v12 = sub_272434910();

      v13 = [v11 initWithString_];

      [v13 setVoice_];
      sub_272434730();
      [v14 speakUtterance_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_2724205BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_272420600(uint64_t a1, uint64_t a2)
{
  v3 = sub_272433C80();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  sub_272433C90();
  v10 = *(v4 + 104);
  v10(v7, *MEMORY[0x277CD8F78], v3);
  v11 = sub_272433C70();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v9, v3);
  if (v11)
  {
    v13 = (a2 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 60));
    v14 = *v13;
    v15 = *(v13 + 1);
    v23 = v14;
    v24 = v15;
    v22 = 1;
  }

  else
  {
    sub_272433C90();
    v10(v7, *MEMORY[0x277CD8F68], v3);
    v16 = sub_272433C70();
    v12(v7, v3);
    result = (v12)(v9, v3);
    if ((v16 & 1) == 0)
    {
      return result;
    }

    v18 = (a2 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 60));
    v19 = *v18;
    v20 = *(v18 + 1);
    v23 = v19;
    v24 = v20;
    v22 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600, &unk_272436D28);
  return sub_272434740();
}

uint64_t sub_27242082C(uint64_t a1)
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434730();
  if (v2 != 5)
  {
    sub_272434CF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_272420A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896668, &qword_272436D60);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = v28 - v6;
  v7 = sub_2724342C0();
  MEMORY[0x28223BE20](v7 - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896658, &qword_272437340);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896648, &unk_272436D50);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  v16 = *(a1 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 20) + 8);
  swift_beginAccess();
  if (*(v16 + 24))
  {
    v17 = sub_2724342A0();
    v30 = a2;
    v28[1] = v28;
    MEMORY[0x28223BE20](v17);
    v28[-2] = a1;
    v29 = v10;
    v18 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8, &qword_2724361A0);
    sub_27240BFB4(&qword_280896620, &qword_2808960B8, &qword_2724361A0, MEMORY[0x277CDF028]);
    sub_272433DC0();
    v19 = sub_27240BFB4(&qword_280896660, &qword_280896658, &qword_272437340, MEMORY[0x277CDD7A8]);
    v21 = v32;
    v20 = v33;
    MEMORY[0x2743C8900](v9, v33, v19);
    (*(v5 + 16))(v13, v21, v18);
    (*(v5 + 56))(v13, 0, 1, v18);
    v34 = v20;
    v35 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x2743C8910](v13, v18, OpaqueTypeConformance2);
    sub_27240A158(v13, &qword_280896648, &unk_272436D50);
    v23 = v18;
    v10 = v29;
    (*(v5 + 8))(v21, v23);
    (*(v31 + 8))(v9, v20);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
    v24 = sub_27240BFB4(&qword_280896660, &qword_280896658, &qword_272437340, MEMORY[0x277CDD7A8]);
    v34 = v33;
    v35 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x2743C8910](v13, v4, v25);
    sub_27240A158(v13, &qword_280896648, &unk_272436D50);
  }

  v26 = sub_272427C24();
  MEMORY[0x2743C8900](v15, v10, v26);
  return sub_27240A158(v15, &qword_280896648, &unk_272436D50);
}

uint64_t sub_272420F18(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2724276E8(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_272427750(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_272434780();
}

double sub_272421044(uint64_t a1)
{
  v1 = (*(a1 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 20) + 8) + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v2 = *v1;

  v2(0, 0, 0);

  return result;
}

uint64_t sub_2724210D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27242AA04(0, &qword_280896670, off_279E42450);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v12 = sub_272434950();
  v14 = v13;
  v15 = (*(v4 + 8))(v9, v3);
  v22[1] = v12;
  v22[2] = v14;
  sub_27240A1B8(v15, v16, v17);
  result = sub_2724344C0();
  *a1 = result;
  *(a1 + 8) = v19;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v21;
  return result;
}

void sub_2724212F0()
{
  v0 = [objc_opt_self() sharedPreferences];
  [v0 setSuppressDictationOptIn_];
}

uint64_t sub_272421354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v28 = a1;
  v29 = a3;
  v34 = a5;
  v33 = sub_272434170();
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_272434360();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896860, &qword_2724370A8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968C0, &qword_2724370D0);
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  *v14 = sub_2724340D0();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968C8, &qword_2724370D8);
  sub_2724217BC(v27, a2, v29, v28, &v14[*(v19 + 44)]);
  v20 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
  v35 = sub_272434690();
  *&v14[*(v12 + 36)] = sub_272434810();
  sub_272434350();
  v21 = sub_27242A514();
  sub_272434580();
  (*(v9 + 8))(v11, v8);
  sub_27240A158(v14, &qword_280896860, &qword_2724370A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808968D0, &unk_2724370E0);
  v22 = v30;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_272436A80;
  sub_272434160();
  v35 = v23;
  sub_27242AA74(&qword_2808960F0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808968E0, &qword_2724362B0);
  sub_27240BFB4(&qword_2808960F8, &unk_2808968E0, &qword_2724362B0, MEMORY[0x277D83970]);
  v24 = v33;
  sub_272434C50();
  v35 = v12;
  v36 = v21;
  swift_getOpaqueTypeConformance2();
  v25 = v31;
  sub_2724345C0();
  (*(v22 + 8))(v7, v24);
  return (*(v32 + 8))(v18, v25);
}

uint64_t sub_2724217BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v199 = a4;
  v218 = a3;
  v219 = a2;
  v195 = a5;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968F0, &qword_2724370F0);
  v6 = MEMORY[0x28223BE20](v194);
  v196 = v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v193 = (v169 - v9);
  MEMORY[0x28223BE20](v8);
  v215 = v169 - v10;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968F8, &qword_2724370F8);
  v192 = *(v203 - 8);
  v11 = MEMORY[0x28223BE20](v203);
  v185 = v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v184 = v169 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896900, &qword_272437100);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v214 = v169 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v213 = v169 - v17;
  v18 = sub_272434110();
  MEMORY[0x28223BE20](v18 - 8);
  v181 = v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896908, &qword_272437108);
  v188 = *(v189 - 8);
  v20 = MEMORY[0x28223BE20](v189);
  v190 = v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v182 = v169 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896910, &qword_272437110);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v212 = v169 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v211 = v169 - v26;
  v202 = sub_272433D50();
  v216 = *(v202 - 8);
  v27 = MEMORY[0x28223BE20](v202);
  v201 = v169 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v200 = v169 - v29;
  v30 = sub_272433B30();
  MEMORY[0x28223BE20](v30 - 8);
  v206 = v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_272434900();
  v217 = *(v207 - 8);
  v32 = MEMORY[0x28223BE20](v207);
  v205 = v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = v169 - v34;
  v197 = sub_2724342E0();
  v198 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v37 = v169 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v38 = *(v220 - 1);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v220);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896918, &qword_272437118);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = v169 - v42;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896920, &qword_272437120);
  v191 = *(v210 - 8);
  v44 = MEMORY[0x28223BE20](v210);
  v209 = v169 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = v169 - v46;
  v204 = a1;
  sub_2724276E8(a1, v169 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v49 = swift_allocObject();
  sub_272427750(v169 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48);
  v50 = (v49 + ((v39 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
  v51 = v218;
  *v50 = v219;
  v50[1] = v51;

  sub_272434780();
  sub_2724342D0();
  sub_27240BFB4(&qword_280896928, &qword_280896918, &qword_272437118, MEMORY[0x277CDF028]);
  sub_27242AA74(&qword_280896930, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v208 = v47;
  v52 = v197;
  sub_272434500();
  (*(v198 + 8))(v37, v52);
  (*(v41 + 8))(v43, v40);
  sub_2724348F0();
  v53 = v217;
  v54 = v217 + 16;
  v55 = *(v217 + 16);
  v56 = v207;
  v55(v205, v35, v207);
  sub_27242AA04(0, &qword_280896670, off_279E42450);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = objc_opt_self();
  v59 = [v58 bundleForClass_];
  sub_272433B20();
  sub_272434950();
  v60 = v53 + 8;
  v61 = *(v53 + 8);
  v183 = v35;
  v217 = v60;
  v61(v35, v56);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896938, &qword_272437128);
  result = swift_allocObject();
  *(result + 16) = xmmword_272436A80;
  v64 = v199 + 1;
  if (!__OFADD__(v199, 1))
  {
    v170 = xmmword_272436A80;
    v171 = v62;
    v175 = v61;
    v177 = v58;
    v178 = ObjCClassFromMetadata;
    v179 = v55;
    v180 = v54;
    v65 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v65;
    *(result + 32) = v64;
    v66 = sub_272434920();
    v68 = v67;

    *&v221 = v66;
    *(&v221 + 1) = v68;
    v169[1] = sub_27240A1B8(v69, v70, v71);
    v72 = sub_2724344C0();
    v74 = v73;
    v76 = v75;
    v186 = v77;
    v78 = v200;
    v79 = v204;
    sub_272419C80(v200);
    v80 = v216;
    v81 = *(v216 + 104);
    v82 = v201;
    v173 = *MEMORY[0x277CDF3D0];
    v83 = v202;
    v174 = v216 + 104;
    v172 = v81;
    v81(v201);
    LOBYTE(v66) = sub_272433D40();
    v85 = *(v80 + 8);
    v84 = v80 + 8;
    v85(v82, v83);
    v176 = v85;
    v85(v78, v83);
    if (v66)
    {
      v86 = sub_2724346B0();
    }

    else
    {
      v86 = sub_2724346C0();
    }

    v216 = v84;
    *&v221 = v86;
    v198 = sub_272434490();
    v197 = v87;
    v187 = v88;
    v199 = v89;
    sub_27240A21C(v72, v74, v76 & 1, v90, v91);

    if (*(v79 + v220[22]) == 1)
    {
      sub_272434100();
      sub_2724340F0();
      sub_2724340E0();
      sub_2724340F0();
      sub_272434130();
      v92 = sub_2724344B0();
      v94 = v93;
      v96 = v95;
      *&v221 = sub_2724346A0();
      v97 = sub_272434490();
      v99 = v98;
      v101 = v100;
      v103 = v102;
      sub_27240A21C(v92, v94, v96 & 1, v104, v105);

      *&v221 = v97;
      *(&v221 + 1) = v99;
      v79 = v204;
      LOBYTE(v222) = v101 & 1;
      v223 = v103;
      v106 = v182;
      sub_272434570();
      sub_27240A21C(v97, v99, v101 & 1, v107, v108);

      v109 = v106;
      v110 = v211;
      sub_27242A258(v109, v211, &qword_280896908, &qword_272437108);
      v111 = 0;
      v112 = v213;
    }

    else
    {
      v111 = 1;
      v112 = v213;
      v110 = v211;
    }

    v113 = 1;
    (*(v188 + 56))(v110, v111, 1, v189);
    if (*(v79 + v220[21]) == 1)
    {
      v114 = v110;
      v115 = v183;
      sub_2724348F0();
      v116 = v207;
      v179(v205, v115, v207);
      v117 = [v177 bundleForClass_];
      sub_272433B20();
      sub_272434950();
      v175(v115, v116);
      v118 = v79;
      v119 = swift_allocObject();
      *(v119 + 16) = v170;
      *(v119 + 56) = MEMORY[0x277D837D0];
      *(v119 + 64) = sub_27242A9B0(v119, v120, v121);
      v122 = v218;
      *(v119 + 32) = v219;
      *(v119 + 40) = v122;

      v123 = sub_272434940();
      v125 = v124;

      *&v221 = v123;
      *(&v221 + 1) = v125;
      v126 = sub_2724344C0();
      v128 = v127;
      *&v221 = v126;
      *(&v221 + 1) = v127;
      LOBYTE(v115) = v129 & 1;
      LOBYTE(v222) = v129 & 1;
      v223 = v130;
      sub_272434570();
      v131 = v128;
      v79 = v118;
      sub_27240A21C(v126, v131, v115, v132, v133);

      v134 = v200;
      sub_272419C80(v200);
      v135 = v201;
      v136 = v202;
      v172(v201, v173, v202);
      LOBYTE(v126) = sub_272433D40();
      v137 = v176;
      v176(v135, v136);
      v137(v134, v136);
      if (v126)
      {
        v138 = sub_2724346B0();
      }

      else
      {
        v138 = sub_2724346C0();
      }

      v139 = v138;
      v140 = v185;
      sub_27242A258(v190, v185, &qword_280896908, &qword_272437108);
      *(v140 + *(v203 + 36)) = v139;
      v141 = v140;
      v142 = v184;
      sub_27242A258(v141, v184, &qword_2808968F8, &qword_2724370F8);
      sub_27242A258(v142, v112, &qword_2808968F8, &qword_2724370F8);
      v113 = 0;
      v110 = v114;
    }

    (*(v192 + 56))(v112, v113, 1, v203);
    v143 = sub_2724346F0();
    v144 = v79 + v220[10];
    v145 = *(v144 + 16);
    v221 = *v144;
    v222 = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0, &qword_272436E10);
    sub_272434730();
    if (v225)
    {
      if (v224 == v219 && v225 == v218)
      {

        v146 = 1.0;
LABEL_19:
        v148 = v193;
        sub_272433EF0();
        *v148 = v143;
        *(v148 + 1) = v146;
        v149 = v215;
        sub_27242A258(v148, v215, &qword_2808968F0, &qword_2724370F0);
        v150 = v191;
        v151 = *(v191 + 16);
        v152 = v209;
        v153 = v210;
        v151(v209, v208, v210);
        v154 = v110;
        v155 = v212;
        sub_27240A0F0(v154, v212, &qword_280896910, &qword_272437110);
        v156 = v214;
        sub_27240A0F0(v112, v214, &qword_280896900, &qword_272437100);
        v157 = v196;
        sub_27240A0F0(v149, v196, &qword_2808968F0, &qword_2724370F0);
        v158 = v195;
        v151(v195, v152, v153);
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896940, &qword_272437130);
        v160 = &v158[v159[12]];
        v161 = v198;
        v162 = v197;
        *v160 = v198;
        *(v160 + 1) = v162;
        v163 = v187 & 1;
        v160[16] = v187 & 1;
        *(v160 + 3) = v199;
        sub_27240A0F0(v155, &v158[v159[16]], &qword_280896910, &qword_272437110);
        sub_27240A0F0(v156, &v158[v159[20]], &qword_280896900, &qword_272437100);
        v164 = &v158[v159[24]];
        *v164 = 0;
        v164[8] = 1;
        sub_27240A0F0(v157, &v158[v159[28]], &qword_2808968F0, &qword_2724370F0);
        sub_27240A20C(v161, v162, v163);

        sub_27240A158(v215, &qword_2808968F0, &qword_2724370F0);
        sub_27240A158(v213, &qword_280896900, &qword_272437100);
        sub_27240A158(v211, &qword_280896910, &qword_272437110);
        v165 = *(v150 + 8);
        v166 = v210;
        v165(v208, v210);
        sub_27240A158(v157, &qword_2808968F0, &qword_2724370F0);
        sub_27240A158(v214, &qword_280896900, &qword_272437100);
        sub_27240A158(v212, &qword_280896910, &qword_272437110);
        sub_27240A21C(v161, v162, v163, v167, v168);

        return (v165)(v209, v166);
      }

      v147 = sub_272434CF0();

      v146 = 1.0;
      if (v147)
      {
        goto LABEL_19;
      }
    }

    v146 = 0.0;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_272422C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0, &qword_272436E10);
  sub_272434730();
  if (!v8)
  {
    goto LABEL_7;
  }

  if (v7 == a2 && v8 == a3)
  {
  }

  else
  {
    v6 = sub_272434CF0();

    if ((v6 & 1) == 0)
    {
LABEL_7:

      sub_272434740();
      return;
    }
  }

  sub_2724202B0(a2, a3);
}

uint64_t sub_272422D90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2724346F0();
  *a1 = result;
  return result;
}

void *sub_272422DD4(uint64_t a1)
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0, &qword_272436E10);
  result = sub_272434730();
  if (v3)
  {
    sub_2724202B0(v2, v3);
  }

  return result;
}

void sub_272422E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967C0, &qword_272436FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v73 - v3;
  v5 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v76 = *(v5 - 1);
  v6 = *(v76 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = MEMORY[0x28223BE20](v7);
  v81 = &v73 - v9;
  v10 = (a1 + *(v8 + 64));
  v11 = *(v10 + 1);
  LODWORD(v80) = *v10;
  LOBYTE(v87) = v80;
  v88 = v11;
  LOBYTE(v85) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600, &unk_272436D28);
  sub_272434740();
  v12 = a1;
  v13 = a1 + v5[8];
  v14 = *(v13 + 8);
  LOBYTE(v87) = *v13;
  v88 = v14;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630, &qword_272436D40);
  sub_272434730();
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v4;
  v77 = v6;
  if (v85 <= 2u && !v85)
  {
    goto LABEL_14;
  }

  v15 = sub_272434CF0();

  if (v15)
  {
    goto LABEL_15;
  }

  v16 = *(v13 + 8);
  LOBYTE(v87) = *v13;
  v88 = v16;
  sub_272434730();
  if (v85 == 5)
  {
    goto LABEL_14;
  }

  v17 = sub_272434CF0();

  if (v17)
  {
    goto LABEL_15;
  }

  v18 = *(v13 + 8);
  LOBYTE(v87) = *v13;
  v88 = v18;
  sub_272434730();
  if (v85 > 5u)
  {
LABEL_14:

LABEL_15:
    v21 = v12 + v5[15];
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v87) = v22;
    v88 = v23;
    sub_272434730();
    if (v85 != 1)
    {
      v45 = v12 + v5[17];
      v46 = *v45;
      v47 = *(v45 + 8);
      LOBYTE(v87) = v46;
      v88 = v47;
      LOBYTE(v85) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896698, &qword_272436E08);
      sub_272434740();
      LOBYTE(v87) = v80;
      v88 = v11;
      LOBYTE(v85) = 1;
      sub_272434740();
      return;
    }

    v24 = (v12 + v5[6]);
    v26 = v24[1];
    v87 = *v24;
    v25 = v87;
    v88 = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896678, &qword_272436DF8);
    sub_272434730();
    v28 = v85;
    v29 = *(v12 + v5[5] + 8);
    v30 = (v29 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
    swift_beginAccess();
    v31 = v30[1];
    v32 = &v28[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier];
    *v32 = *v30;
    *(v32 + 1) = v31;

    v85 = v25;
    v86 = v26;
    v80 = v27;
    sub_272434730();
    v33 = v84;
    v34 = *(v29 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord + 8);
    v35 = (v84 + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_text);
    *v35 = *(v29 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
    v35[1] = v34;

    v36 = v81;
    sub_2724276E8(v12, v81);
    v37 = sub_272433BA0();
    v38 = sub_272434B30();
    if (!os_log_type_enabled(v37, v38))
    {

      sub_272413884(v36);
LABEL_26:
      v52 = *(v13 + 8);
      LOBYTE(v85) = *v13;
      v86 = v52;
      sub_272434730();
      if (v84 == 5)
      {

        v53 = 2;
      }

      else
      {
        v54 = sub_272434CF0();

        if (v54)
        {
          v53 = 2;
        }

        else
        {
          v53 = 1;
        }
      }

      v55 = *(v13 + 8);
      LOBYTE(v85) = *v13;
      v86 = v55;
      LOBYTE(v84) = v53;

      sub_272434740();

      v56 = objc_opt_self();
      v57 = [v56 sharedPreferences];
      v58 = [v57 dictationIsEnabled];

      if (v58)
      {
        v85 = v25;
        v86 = v26;
        sub_272434730();
        v59 = v84;
        sub_2724170EC();
LABEL_33:

        return;
      }

      v60 = [v56 sharedPreferences];
      v61 = [v60 suppressDictationOptIn];

      if ((v61 & 1) == 0)
      {
        v62 = sub_272434AD0();
        v63 = v79;
        (*(*(v62 - 8) + 56))(v79, 1, 1, v62);
        v64 = v78;
        sub_2724276E8(v12, v78);
        sub_272434AB0();
        v65 = sub_272434AA0();
        v66 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v67 = swift_allocObject();
        v68 = MEMORY[0x277D85700];
        *(v67 + 16) = v65;
        *(v67 + 24) = v68;
        sub_272427750(v64, v67 + v66);
        sub_272424224(0, 0, v63, &unk_272436FE0, v67);
      }

      return;
    }

    v74 = v26;
    v75 = v25;
    v39 = 0xD000000000000010;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v84 = v41;
    *v40 = 136315138;
    v42 = v36 + v5[8];
    v43 = *v42;
    v44 = *(v42 + 8);
    LOBYTE(v85) = v43;
    v86 = v44;
    sub_272434730();
    if (v83 == 5)
    {
    }

    else
    {
      v48 = sub_272434CF0();

      if ((v48 & 1) == 0)
      {
        v49 = "ass";
        goto LABEL_25;
      }
    }

    v49 = "startingStandard";
    v39 = 0xD000000000000014;
LABEL_25:
    sub_272413884(v81);
    v50 = sub_2724285FC(v39, v49 | 0x8000000000000000, &v84);

    *(v40 + 4) = v50;
    _os_log_impl(&dword_272406000, v37, v38, "VCUIAudioButton, dictationState -> %s", v40, 0xCu);
    v51 = __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x2743C99D0](v41, -1, -1, v51);
    MEMORY[0x2743C99D0](v40, -1, -1);

    v26 = v74;
    v25 = v75;
    goto LABEL_26;
  }

  v19 = sub_272434CF0();

  if (v19)
  {
    goto LABEL_15;
  }

  v20 = *(v13 + 8);
  LOBYTE(v87) = *v13;
  v88 = v20;
  sub_272434730();
  if (v85 == 3)
  {

LABEL_37:
    v70 = (v12 + v5[6]);
    v72 = *v70;
    v71 = v70[1];
    v87 = v72;
    v88 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896678, &qword_272436DF8);
    sub_272434730();
    v59 = v85;
    sub_27241743C();
    goto LABEL_33;
  }

  v69 = sub_272434CF0();

  if (v69)
  {
    goto LABEL_37;
  }
}