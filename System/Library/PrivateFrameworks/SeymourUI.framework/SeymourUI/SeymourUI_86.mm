uint64_t sub_20BEDD760@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void, void, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20C13DAA4();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    a2(v8, *(a1 + 36), 0, a1);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_20BEDD84C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_20C13DAD4();
    v7 = v6;
    v8 = sub_20C13DB84();
    v10 = v9;
    v11 = MEMORY[0x20F2F5270](v5, v7, v8, v9);
    sub_20B526EA4(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_20B526EA4(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_20C13DAA4();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = a2(v5, v7, v4 != 0, a1);
  sub_20B526EA4(v5, v7, v4 != 0);
  return v13;
}

uint64_t sub_20BEDD970(uint64_t a1)
{
  v2 = sub_20C13DAA4();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_20BB61B80(v2, *(a1 + 36), 0, a1);

  return v4;
}

void CatalogLockup.applyingRemoteBrowsingEnvironment(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7678C0, &unk_20C171410);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v81 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v11 - 8);
  v88 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B7A0, &unk_20C171420);
  MEMORY[0x28223BE20](v13 - 8);
  v95 = &v81 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638A8, &qword_20C154980);
  MEMORY[0x28223BE20](v15 - 8);
  v87 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770178, &qword_20C182800);
  MEMORY[0x28223BE20](v17 - 8);
  v86 = &v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8, &unk_20C15E830);
  MEMORY[0x28223BE20](v19 - 8);
  v84 = &v81 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v21 - 8);
  v94 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v81 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763830, &unk_20C154760);
  MEMORY[0x28223BE20](v26 - 8);
  v83 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v81 - v29;
  v96 = v2;
  v31 = sub_20C133E94();
  v33 = v32;
  v99[0] = 6;
  v97[0] = v31;
  v97[1] = v32;
  v35 = v34 & 1;
  LOBYTE(v98) = v34 & 1;
  sub_20B852060();
  sub_20B8520B4();
  v36 = sub_20C133C14();
  sub_20B683084(v31, v33, v35);
  v85 = a1;
  if (v36)
  {
    v37 = sub_20C136AA4();
  }

  else
  {
    v37 = sub_20C136B64();
  }

  MEMORY[0x28223BE20](v37);
  v79 = v96;
  v39 = sub_20BEE137C(sub_20BEDE6F8, v78, v38, MEMORY[0x277D53330], sub_20BC0F700, MEMORY[0x277D53330], sub_20BC0F700);
  v40 = v39[2];
  v92 = v30;
  v93 = v25;
  if (v40)
  {
    v82 = v6;
    v41 = sub_20BEDEF58(v40, 0, &qword_27C762668, &unk_20C150370, MEMORY[0x277D53330]);
    v42 = *(sub_20C137404() - 8);
    sub_20BEE2D04(v97, &v41[(*(v42 + 80) + 32) & ~*(v42 + 80)], v40, v39, MEMORY[0x277D53330]);
    v44 = v43;
    v45 = v97[0];

    sub_20B583EDC(v45);
    if (v44 != v40)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v6 = v82;
    v30 = v92;
    v25 = v93;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v97[0] = v41;
  sub_20BEDF054(v97);
  v46 = v83;

  v47 = v97[0];
  v48 = *(v97[0] + 16);
  if (v48)
  {
    v49 = v48 - 1;
    v50 = sub_20C137404();
    v51 = *(v50 - 8);
    (*(v51 + 16))(v30, v47 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49, v50);

    (*(v51 + 56))(v30, 0, 1, v50);
  }

  else
  {

    v50 = sub_20C137404();
    (*(*(v50 - 8) + 56))(v30, 1, 1, v50);
  }

  sub_20B6A10A0(v30, v46);
  sub_20C137404();
  v52 = *(v50 - 8);
  if ((*(v52 + 48))(v46, 1, v50) == 1)
  {
    sub_20B520158(v46, &qword_27C763830, &unk_20C154760);
    v82 = 0;
  }

  else
  {
    v82 = sub_20C1373D4();
    (*(v52 + 8))(v46, v50);
  }

  v53 = sub_20C136C44();
  MEMORY[0x28223BE20](v53);
  v79 = v96;
  v55 = sub_20BEE137C(sub_20BEE212C, v78, v54, MEMORY[0x277D53BA0], sub_20BC0D95C, MEMORY[0x277D53BA0], sub_20BC0D95C);
  v56 = v84;
  sub_20BEDD760(v55, sub_20BB614B8, MEMORY[0x277D53BA0], v84);

  v57 = sub_20C138034();
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v56, 1, v57) == 1)
  {
    sub_20B520158(v56, &qword_27C763EF8, &unk_20C15E830);
    v59 = 1;
  }

  else
  {
    sub_20C138004();
    (*(v58 + 8))(v56, v57);
    v59 = 0;
  }

  v60 = sub_20C132E94();
  v61 = *(*(v60 - 8) + 56);
  v61(v25, v59, 1, v60);
  v62 = sub_20C134E44();
  v63 = v86;
  (*(*(v62 - 8) + 56))();
  v61(v94, 1, 1, v60);
  v64 = sub_20C135434();
  v65 = v87;
  (*(*(v64 - 8) + 56))();
  v66 = sub_20C1335A4();
  (*(*(v66 - 8) + 56))();
  v67 = sub_20C137C24();
  v68 = v88;
  (*(*(v67 - 8) + 56))(v88, 1, 1, v67);
  v69 = sub_20C132C14();
  v70 = v89;
  (*(*(v69 - 8) + 56))(v89, 1, 1, v69);
  v71 = sub_20C1341E4();
  v72 = *(*(v71 - 8) + 56);
  v73 = v90;
  v72(v90, 1, 1, v71);
  v72(v6, 1, 1, v71);
  v79 = 0;
  v80 = v6;
  v78[0] = 0;
  v78[1] = v73;
  v74 = v93;
  v75 = v65;
  v76 = v63;
  v77 = v94;
  sub_20C133FD4();
  sub_20B520158(v6, &qword_27C7678C0, &unk_20C171410);
  sub_20B520158(v73, &qword_27C7678C0, &unk_20C171410);
  sub_20B520158(v70, &unk_27C7617F0, &unk_20C151A10);
  sub_20B520158(v68, &unk_27C766680, &unk_20C14F920);
  sub_20B520158(v95, &qword_27C76B7A0, &unk_20C171420);
  sub_20B520158(v75, &qword_27C7638A8, &qword_20C154980);
  sub_20B520158(v77, &qword_27C762AC0, &qword_20C14FC90);
  sub_20B520158(v76, &qword_27C770178, &qword_20C182800);
  sub_20B520158(v74, &qword_27C762AC0, &qword_20C14FC90);
  sub_20B520158(v92, &qword_27C763830, &unk_20C154760);
}

uint64_t sub_20BEDE72C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v5 = v4;
  if (v3 == sub_20C133E44() && v5 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_20C13DFF4();
  }

  return v7 & 1;
}

void *sub_20BEDEA00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_0(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_20BEDEB1C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768728, &qword_20C16F070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_20BEDEC68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_20BEDECF0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AEA8, &qword_20C16F188);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_20BEDEDA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_0(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_20BEDEE28(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76ADE0, &qword_20C16F090);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_20BEDEF58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_20BEDF054(uint64_t *a1)
{
  v2 = *(sub_20C137404() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0EC0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BEDF0FC(v5);
  *a1 = v3;
}

void sub_20BEDF0FC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C137404();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C137404() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20BEDF5C8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20BEDF228(0, v2, 1, a1);
  }
}

void sub_20BEDF228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20C132E94();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_20C137404();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18.n128_f64[0] = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20C1373C4();
      v32 = v59;
      sub_20C1373C4();
      v62 = sub_20C132E04();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BEDF5C8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_20C132E94();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_20C137404();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_20B6A07A0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_20BEE01C8(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20B6A07A0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_20B6A0714(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_20C1373C4();
      v34 = v159;
      sub_20C1373C4();
      LODWORD(v149) = sub_20C132E04();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_20C1373C4();
        v46 = v159;
        sub_20C1373C4();
        LOBYTE(v162) = sub_20C132E04() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_20BC05740(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_20BC05740((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20BEE01C8(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20B6A07A0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_20B6A0714(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_20C1373C4();
    v120 = v159;
    sub_20C1373C4();
    LODWORD(v162) = sub_20C132E04();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

void sub_20BEE01C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_20C132E94();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_20C137404();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_20C1373C4();
            v48 = v66;
            sub_20C1373C4();
            v68 = sub_20C132E04();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_20C1373C4();
        v28 = v66;
        sub_20C1373C4();
        v68 = sub_20C132E04();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_20B6A08E8(&v75, &v74, &v73);
}

void *sub_20BEE0940(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v42 = *MEMORY[0x277D85DE8];
  v7 = sub_20C135C84();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v32 = v10;
    v41 = v4;
    v34 = &v31;
    MEMORY[0x28223BE20](v8);
    v33 = &v31 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v33, v11);
    v35 = 0;
    v12 = 0;
    v10 = a3 + 56;
    v13 = 1 << *(a3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a3 + 56);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v40 = (v15 - 1) & v15;
LABEL_12:
      v20 = v17 | (v12 << 6);
      v4 = a3;
      v21 = *(a3 + 48);
      v22 = v37;
      v23 = *(v38 + 72);
      v36 = v20;
      v24 = MEMORY[0x277D52060];
      sub_20BC1329C(v21 + v23 * v20, v37, MEMORY[0x277D52060]);
      v25 = v41;
      v26 = v39(v22);
      sub_20BEE2C74(v22, v24);
      v41 = v25;
      if (v25)
      {

        return swift_willThrow();
      }

      a3 = v4;
      v15 = v40;
      if (v26)
      {
        *&v33[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
          return sub_20BC0E464(v33, v32, v35, a3);
        }
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {
        return sub_20BC0E464(v33, v32, v35, a3);
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = sub_20BEE1EAC(v29, v10, a3, v39, a2, MEMORY[0x277D52060], sub_20BC0E464, MEMORY[0x277D52060]);

  result = MEMORY[0x20F2F6A40](v29, -1, -1);
  if (!v4)
  {
    return v30;
  }

  return result;
}

void *sub_20BEE0D74(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a1;
  v41 = *MEMORY[0x277D85DE8];
  v7 = type metadata accessor for ButtonAction.ActionType(0);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a3 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v31 = v10;
    v40 = v4;
    v33 = &v30;
    MEMORY[0x28223BE20](v8);
    v32 = &v30 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v11);
    v34 = 0;
    v12 = 0;
    v10 = a3 + 56;
    v13 = 1 << *(a3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a3 + 56);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v39 = (v15 - 1) & v15;
LABEL_12:
      v20 = v17 | (v12 << 6);
      v4 = a3;
      v21 = *(a3 + 48);
      v22 = v36;
      v23 = *(v37 + 72);
      v35 = v20;
      sub_20BC1329C(v21 + v23 * v20, v36, type metadata accessor for ButtonAction.ActionType);
      v24 = v40;
      v25 = v38(v22);
      sub_20BEE2C74(v22, type metadata accessor for ButtonAction.ActionType);
      v40 = v24;
      if (v24)
      {

        return swift_willThrow();
      }

      v15 = v39;
      if (v25)
      {
        *&v32[(v35 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v35;
        if (__OFADD__(v34++, 1))
        {
          __break(1u);
          return sub_20BC0F10C(v32, v31, v34, a3);
        }
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {
        return sub_20BC0F10C(v32, v31, v34, a3);
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v28 = swift_slowAlloc();
  v29 = sub_20BEE1EAC(v28, v10, a3, v38, a2, type metadata accessor for ButtonAction.ActionType, sub_20BC0F10C, type metadata accessor for ButtonAction.ActionType);

  result = MEMORY[0x20F2F6A40](v28, -1, -1);
  if (!v4)
  {
    return v29;
  }

  return result;
}

void *sub_20BEE137C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(char *, unint64_t, uint64_t, uint64_t), int64_t a6, unint64_t a7)
{
  v47 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v12 = a4(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = (&v38 - v15);
  LOBYTE(v15) = *(a3 + 32);
  v39 = ((1 << v15) + 63) >> 6;
  v17 = 8 * v39;
  if ((v15 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v45 = v16;
    v46 = v14;
    v38 = a5;
    v41 = &v38;
    MEMORY[0x28223BE20](v14);
    v40 = &v38 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v17);
    a6 = 0;
    v48 = a3;
    v19 = *(a3 + 56);
    a3 += 56;
    v18 = v19;
    v20 = 1 << *(a3 - 24);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v18;
    v23 = (v20 + 63) >> 6;
    v42 = 0;
    v43 = v13 + 16;
    v44 = (v13 + 8);
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
LABEL_12:
      a7 = v24 | (a6 << 6);
      v27 = *(v48 + 48) + *(v13 + 9) * a7;
      v16 = v13;
      v28 = *(v13 + 2);
      a5 = v45;
      v29 = v46;
      v28(v45, v27, v46);
      v30 = v50;
      v31 = v47(a5);
      v50 = v30;
      if (v30)
      {
        (*v44)(a5, v29);

        return swift_willThrow();
      }

      v17 = v31;
      v14 = (*v44)(a5, v29);
      v13 = v16;
      v22 = v49;
      if (v17)
      {
        *&v40[(a7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a7;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          return v38(v40, v39, v42, v48);
        }
      }
    }

    v25 = a6;
    while (1)
    {
      a6 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (a6 >= v23)
      {
        return v38(v40, v39, v42, v48);
      }

      v26 = *(a3 + 8 * a6);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v49 = (v26 - 1) & v26;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v34 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v14 = v34;
  }

  v35 = swift_slowAlloc();
  v36 = v50;
  v37 = sub_20BEE1F64(v35, v39, a3, v47, a2, a6, a7);

  result = MEMORY[0x20F2F6A40](v35, -1, -1);
  if (!v36)
  {
    return v37;
  }

  return result;
}

void sub_20BEE1768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t (*a8)(void))
{
  v35 = a4;
  v36 = a8;
  v29 = a2;
  v30 = a7;
  v31 = a1;
  v9 = a6(0);
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v32 = 0;
  v33 = &v29 - v10;
  v11 = 0;
  v37 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v38 = (v17 - 1) & v17;
LABEL_11:
    v22 = v36;
    v23 = v33;
    v24 = v19 | (v11 << 6);
    sub_20BC1329C(*(v37 + 48) + *(v34 + 72) * v24, v33, v36);
    v25 = v39;
    v26 = v35(v23);
    sub_20BEE2C74(v23, v22);
    v39 = v25;
    if (v25)
    {
      return;
    }

    v17 = v38;
    if (v26)
    {
      *(v31 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        (v30)(v31, v29, v32, v28);
        return;
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_16;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v38 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_20BEE19BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_20BC0EA58(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_20BEE1C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  v31 = a2;
  v32 = a7;
  v38 = a4;
  v33 = a1;
  v41 = a6(0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v41);
  v39 = a3;
  v40 = &v31 - v11;
  v12 = 0;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = v9 + 16;
  v37 = v9;
  v34 = 0;
  v35 = (v9 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v12 << 6);
    v22 = v41;
    v23 = v40;
LABEL_11:
    (*(v37 + 16))(v23, *(v39 + 48) + *(v37 + 72) * v21, v22, v10);
    v26 = v38(v23);
    v27 = v23;
    if (v7)
    {
      (*v35)(v23, v22);
      return;
    }

    v28 = v26;
    (*v35)(v27, v22);
    if (v28)
    {
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        (v32)(v33, v31, v34, v30);
        return;
      }
    }
  }

  v24 = v12;
  v22 = v41;
  v23 = v40;
  while (1)
  {
    v12 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v25 = *(v14 + 8 * v12);
    ++v24;
    if (v25)
    {
      v18 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_20BEE1EAC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, __n128), uint64_t (*a8)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v9 = result;
      v10 = a2;
      v11 = a8;
      v12 = a7;
      v13 = a6;
      v14 = a5;
      v15 = a4;
      bzero(result, 8 * a2);
      result = v9;
      a2 = v10;
      a4 = v15;
      a5 = v14;
      a6 = v13;
      a7 = v12;
      a8 = v11;
    }

    sub_20BEE1768(result, a2, a3, a4, a5, a6, a7, a8);
    v17 = v16;

    return v17;
  }

  return result;
}

void *sub_20BEE1F64(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    sub_20BEE1C04(result, a2, a3, a4, a5, a6, a7);
    v15 = v14;

    return v15;
  }

  return result;
}

void *sub_20BEE2178(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_20BEE2330(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_20BEE2430(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_20BEE25A0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 48) + 24 * (v17 | (v12 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      *v11 = *v18;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {
        sub_20B6D8740(v19, v20, v21);
        goto LABEL_24;
      }

      v11 += 24;
      sub_20B6D8740(v19, v20, v21);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_20BEE2718(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_20C132164();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_20BEE29EC(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_20BEE2B00(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + v18);
      v20 = (*(a4 + 56) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
      *v11 = v19;
      *(v11 + 8) = v22;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20BEE2C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20BEE2D04(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v41 = a5(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_20BEE2FAC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20BEE3104@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_20C133244();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

double ShelfLockupDescriptor.applyingRemoteBrowsingEnvironment(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770190, &qword_20C182850);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_20C135344();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v16 - v10);
  sub_20C135DE4();
  ShelfLockupContent.applyingRemoteBrowsingEnvironment(_:)(a1, v11);
  sub_20BEE3394(v8, v12);
  sub_20BEC019C(v11, v4, v13);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_20C135DF4();
  sub_20BEE33F0(v4);
  sub_20BEE3394(v11, v14);
  return result;
}

uint64_t sub_20BEE3394(uint64_t a1, double a2)
{
  v3 = sub_20C135344();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BEE33F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770190, &qword_20C182850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double AvatarSettingsChanged.avatarSettings.getter@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_20B8FD908(v2, v3, v4, v5, v6);
}

uint64_t static AvatarSettingsChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C13A9C4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20BEE34EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_20BEE3554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double *sub_20BEE35BC(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770198, &qword_20C1829B0);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701A0, &unk_20C1829B8);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v50 - v6;
  v7 = sub_20C13D8D4();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762330, &unk_20C169E00);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701A8, &qword_20C1829C8);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v50 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701B0, &qword_20C1829D0);
  v62 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v68 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701B8, &qword_20C1829D8);
  v16 = *(v15 - 8);
  v64 = v15;
  v65 = v16;
  MEMORY[0x28223BE20](v15);
  v54 = &v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701C0, &qword_20C1829E0);
  v19 = *(v18 - 8);
  v66 = v18;
  v67 = v19;
  MEMORY[0x28223BE20](v18);
  v61 = &v50 - v20;
  v1[6] = 0;
  v21 = [objc_opt_self() standardUserDefaults];
  v22 = sub_20C13C914();
  [v21 doubleForKey_];
  v24 = v23;

  v2[7] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v25 = v69[1];
  v2[2] = v69[0];
  v2[3] = v25;
  type metadata accessor for SessionCountdownIntentCoordinator(0);
  swift_allocObject();
  v26 = swift_unknownObjectRetain();
  v2[4] = sub_20C10F27C(v26, v25);
  v27 = v2[3];
  type metadata accessor for SessionStreamReadyCoordinator(0);
  swift_allocObject();
  v28 = swift_unknownObjectRetain();
  v2[5] = sub_20BBAEED0(v28, v27);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B7E0, &unk_20C171580);
  sub_20C13C134();
  swift_endAccess();
  sub_20B6D6ABC(&qword_27C762348, &unk_27C762330, &unk_20C169E00, MEMORY[0x277CBCEC8]);
  v29 = sub_20C13C174();
  v30 = *(v10 + 8);
  v30(v12, v9);
  v69[5] = v29;
  v50 = v2;
  swift_beginAccess();
  sub_20C13C134();
  swift_endAccess();
  v31 = sub_20C13C174();
  v30(v12, v9);
  v69[0] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7701C8, &qword_20C1829E8);
  sub_20B6D6ABC(&qword_27C7701D0, &qword_27C7701C8, &qword_20C1829E8, MEMORY[0x277CBCD90]);
  v32 = v51;
  sub_20C13C104();
  sub_20B6D6ABC(&qword_27C7701D8, &qword_27C7701A8, &qword_20C1829C8, MEMORY[0x277CBCC10]);
  v33 = v52;
  sub_20C13C1A4();
  (*(v53 + 8))(v32, v33);
  v34 = v55;
  sub_20C13D8E4();
  v36 = v56;
  v35 = v57;
  v37 = v58;
  (*(v56 + 56))(v58, 1, 1, v57);
  v38 = [objc_opt_self() currentRunLoop];
  v69[0] = v38;
  v39 = sub_20C13D8C4();
  v40 = v63;
  (*(*(v39 - 8) + 56))(v63, 1, 1, v39);
  sub_20BEE4214();
  sub_20B6D6ABC(&qword_27C7701E8, &qword_27C7701B0, &qword_20C1829D0, MEMORY[0x277CBCC90]);
  sub_20BEE4260(&qword_27C7701F0, sub_20BEE4214, MEMORY[0x277CC9E80]);
  v41 = v54;
  v42 = v59;
  v43 = v68;
  sub_20C13C184();
  sub_20B520158(v40, &qword_27C770198, &qword_20C1829B0);

  sub_20B520158(v37, &qword_27C7701A0, &unk_20C1829B8);
  (*(v36 + 8))(v34, v35);
  (*(v62 + 8))(v43, v42);
  v69[3] = sub_20C13AB34();
  v69[4] = sub_20BEE4260(&qword_27C7701F8, MEMORY[0x277D4F268], MEMORY[0x277D4F270]);
  __swift_allocate_boxed_opaque_existential_1(v69);
  sub_20C13AB24();
  sub_20B6D6ABC(&qword_27C770200, &qword_27C7701B8, &qword_20C1829D8, MEMORY[0x277CBCC48]);
  v44 = v61;
  v45 = v64;
  sub_20C13C194();
  (*(v65 + 8))(v41, v45);
  sub_20B520158(v69, &qword_27C770208, &unk_20C1829F0);
  swift_allocObject();
  v46 = v50;
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C770210, &qword_27C7701C0, &qword_20C1829E0, MEMORY[0x277CBCC68]);
  v47 = v66;
  v48 = sub_20C13C1C4();

  (*(v67 + 8))(v44, v47);
  v46[6] = v48;

  return v46;
}

double sub_20BEE4070(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B9C7208();
    sub_20C13A764();
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);

    if (v4)
    {
      sub_20C13C114();
    }
  }

  return result;
}

void *SessionCountdownCoordinator.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SessionCountdownCoordinator.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_20BEE4214()
{
  result = qword_27C7701E0;
  if (!qword_27C7701E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7701E0);
  }

  return result;
}

uint64_t sub_20BEE4260(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_20BEE42D4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_layout];
  *v11 = xmmword_20C182A50;
  *(v11 + 1) = xmmword_20C182A60;
  *(v11 + 2) = vdupq_n_s64(0x4050800000000000uLL);
  v12 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  [v13 setAllowsDefaultTighteningForTruncation_];
  v14 = objc_opt_self();
  v15 = [v14 smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1024 variant:?];
  [v13 setFont_];

  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  [v13 setTextColor_];

  [v13 setTextAlignment_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  *&v4[v12] = v13;
  v18 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_subtitleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTextAlignment_];
  [v19 setLineBreakMode_];
  [v19 setNumberOfLines_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  v20 = [v14 preferredFontForTextStyle_];
  [v19 setFont_];

  v21 = [v16 labelColor];
  [v19 setTextColor_];

  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v18] = v19;
  v22 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_optionsButton;
  v23 = sub_20B8C98E0(1, 0.0, 0.0, 0.0, 0.0);
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v22] = v23;
  *&v4[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_actions] = MEMORY[0x277D84F90];
  v62.receiver = v4;
  v62.super_class = type metadata accessor for TVWorkoutPlanDetailHeaderCell(0);
  v24 = objc_msgSendSuper2(&v62, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = [v24 contentView];
  v26 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_optionsButton;
  [v25 addSubview_];

  v27 = [v24 contentView];
  v28 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_titleLabel;
  [v27 addSubview_];

  v29 = [v24 contentView];
  v30 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_subtitleLabel;
  [v29 addSubview_];

  v61 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20C151DF0;
  v32 = [*&v24[v28] centerXAnchor];
  v33 = [v24 contentView];
  v34 = [v33 &selRef_handleMenuButtonTapped + 2];

  v35 = [v32 constraintEqualToAnchor_];
  *(v31 + 32) = v35;
  v36 = [*&v24[v28] firstBaselineAnchor];
  v37 = [v24 contentView];
  v38 = [v37 centerYAnchor];

  v39 = [v36 constraintEqualToAnchor_];
  *(v31 + 40) = v39;
  v40 = [*&v24[v30] topAnchor];
  v41 = [*&v24[v28] bottomAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v31 + 48) = v42;
  v43 = [*&v24[v30] centerXAnchor];
  v44 = [v24 contentView];
  v45 = [v44 centerXAnchor];

  v46 = [v43 &selRef:v45 alertControllerReleasedDictationButton:? + 5];
  *(v31 + 56) = v46;
  v47 = [*&v24[v26] trailingAnchor];
  v48 = [v24 contentView];
  v49 = [v48 trailingAnchor];

  v50 = [v47 &selRef:v49 alertControllerReleasedDictationButton:? + 5];
  *(v31 + 64) = v50;
  v51 = [*&v24[v26] topAnchor];
  v52 = [v24 contentView];

  v53 = [v52 topAnchor];
  v54 = [v51 &selRef:v53 alertControllerReleasedDictationButton:? + 5];

  *(v31 + 72) = v54;
  v55 = [*&v24[v26] widthAnchor];
  v56 = [v55 constraintEqualToConstant_];

  *(v31 + 80) = v56;
  v57 = [*&v24[v26] heightAnchor];
  v58 = [v57 constraintEqualToConstant_];

  *(v31 + 88) = v58;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v59 = sub_20C13CC54();

  [v61 activateConstraints_];

  return v24;
}

double sub_20BEE4C58()
{
  v40 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v40);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ButtonAction(0);
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v41 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_actions);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v42 = MEMORY[0x277D84F90];

    sub_20C13DD64();
    v11 = *(v3 + 80);
    v32 = v8 + ((v11 + 32) & ~v11);
    v31 = sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    v12 = objc_opt_self();
    v13 = 0;
    v33 = v11;
    v34 = v9;
    v29 = (v11 + 24) & ~v11;
    v30 = v12;
    v35 = v8;
    v36 = v2;
    v28 = v3;
    v14 = v37;
    while (v13 < *(v8 + 16))
    {
      sub_20B7632E0(v32 + *(v3 + 72) * v13, v7, type metadata accessor for ButtonAction);
      sub_20B7632E0(&v7[*(v39 + 28)], v2, type metadata accessor for ButtonAction.ActionType);
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        sub_20BEE5EDC(v2, type metadata accessor for ButtonAction.ActionType);
      }

      ++v13;

      v15 = sub_20C13C914();

      v16 = [v30 systemImageNamed_];

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_20B7632E0(v7, v14, type metadata accessor for ButtonAction);
      v18 = v29;
      v19 = swift_allocObject();
      *(v19 + 16) = v17;
      sub_20B5F6860(v14, v19 + v18);
      sub_20C13D624();
      sub_20BEE5EDC(v7, type metadata accessor for ButtonAction);
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v8 = v35;
      v3 = v28;
      v2 = v36;
      if (v34 == v13)
      {

        v10 = v42;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_8:
  v3 = *(v41 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_optionsButton);
  if (v10 >> 62)
  {
LABEL_12:
    sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);

    sub_20C13DE34();

    goto LABEL_10;
  }

  sub_20C13E004();
  sub_20B51C88C(0, &qword_27C764F30, 0x277D75720);
LABEL_10:

  sub_20B51C88C(0, &unk_27C76FED0, 0x277D75710);
  v20 = sub_20C13D554();
  v21 = *(v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_menu);
  *(v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_menu) = v20;

  [v3 setContextMenuInteractionEnabled_];
  [v3 setShowsMenuAsPrimaryAction_];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = (v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu);
  v24 = *(v3 + OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu);
  v25 = v23[1];
  *v23 = sub_20BEE5ED4;
  v23[1] = v22;

  sub_20B583ECC(v24, v25);

  return result;
}

void sub_20BEE5200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      sub_20B7632E0(a3, v10, type metadata accessor for ButtonAction);
      v15 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v15);
      *(&v20 - 4) = 0;
      *(&v20 - 24) = 1;
      *(&v20 - 2) = v10;
      *(&v20 - 1) = v14;
      v16 = *(v14 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v17 = v12;
      v18 = [v16 indexPathForCell_];
      if (v18)
      {
        v19 = v18;
        sub_20C1331E4();

        sub_20C0C1CDC(v7, sub_20B5E2A84);
        (*(v5 + 8))(v7, v4);
      }

      swift_unknownObjectRelease();

      sub_20BEE5EDC(v10, type metadata accessor for ShelfItemAction);
    }

    else
    {
    }
  }
}

void sub_20BEE5468(uint64_t a1)
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = swift_storeEnumTagMultiPayload();
      v13 = MEMORY[0x28223BE20](v12);
      *(&v16 - 4) = 0;
      *(&v16 - 24) = 1;
      *(&v16 - 2) = v7;
      *(&v16 - 1) = v11;
      v14 = [*(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
      if (v14)
      {
        v15 = v14;
        sub_20C1331E4();

        sub_20C0C1CDC(v4, sub_20B5E275C);
        swift_unknownObjectRelease();
        (*(v2 + 8))(v4, v1);
      }

      else
      {

        swift_unknownObjectRelease();
      }

      sub_20BEE5EDC(v7, type metadata accessor for ShelfItemAction);
    }

    else
    {
    }
  }
}

id sub_20BEE56AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWorkoutPlanDetailHeaderCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVWorkoutPlanDetailHeaderCell(uint64_t a1)
{
  result = qword_27C770220;
  if (!qword_27C770220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEE57D4(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BEE58A8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BEE58F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20BEE595C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20BEE59D0(double a1)
{
  v2 = 1.0 - a1;
  v3 = 0.0;
  if (v2 < 0.05)
  {
    v4 = v2 / -0.05 + 1.0;
    if (v4 <= 0.0)
    {
      v4 = 0.0;
    }

    v3 = 1.0;
    if (v4 <= 1.0)
    {
      v3 = v4;
    }
  }

  [*(v1 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_titleLabel) setAlpha_];
  [*(v1 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_subtitleLabel) setAlpha_];
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_optionsButton);

  return [v5 setAlpha_];
}

void sub_20BEE5AB8(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768180, &unk_20C177B40);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x49)
  {
    v10 = swift_projectBox();
    sub_20B52F9E8(v10, v9, &qword_27C768180, &unk_20C177B40);
    v11 = *&v9[v7[12]];
    v12 = *&v9[v7[16]];
    v13 = *&v9[v7[20]];
    sub_20B520158(v9, &unk_27C762300, &unk_20C151350);
    v14 = *&v1[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_titleLabel];
    if (v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v27 = v11;
    [v14 setAttributedText_];

    v28 = *&v1[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_subtitleLabel];
    if (v12)
    {
      v29 = v12;
    }

    else
    {
      v29 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v30 = v12;
    [v28 setAttributedText_];

    *&v1[OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_actions] = v13;

    sub_20BEE4C58();
  }

  else
  {
    sub_20C13B534();

    v16 = v1;
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1D4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = a1;
      v34 = v32;
      *v19 = 138543618;
      *(v19 + 4) = v16;
      *v20 = v16;
      *(v19 + 12) = 2082;
      v21 = sub_20B5F66D0();
      v22 = v16;
      v23 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v21);
      v25 = sub_20B51E694(v23, v24, &v34);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_20B517000, v17, v18, "Attempted to configure %{public}@ with item: %{public}s", v19, 0x16u);
      sub_20B520158(v20, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v20, -1, -1);
      v26 = v32;
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_20BEE5E60(uint64_t a1)
{
  v3 = *(type metadata accessor for ButtonAction(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_20BEE5200(a1, v4, v5);
}

uint64_t sub_20BEE5EDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20BEE5F3C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_layout;
  *v3 = xmmword_20C182A50;
  *(v3 + 16) = xmmword_20C182A60;
  *(v3 + 32) = vdupq_n_s64(0x4050800000000000uLL);
  v4 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_titleLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  [v5 setAllowsDefaultTighteningForTruncation_];
  v6 = objc_opt_self();
  v7 = [v6 smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1024 variant:?];
  [v5 setFont_];

  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  [v5 setTextColor_];

  [v5 setTextAlignment_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAdjustsFontForContentSizeCategory_];
  *(v0 + v4) = v5;
  v10 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_subtitleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setTextAlignment_];
  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  [v11 setAllowsDefaultTighteningForTruncation_];
  v12 = [v6 preferredFontForTextStyle_];
  [v11 setFont_];

  v13 = [v8 labelColor];
  [v11 setTextColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v10) = v11;
  v14 = OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_optionsButton;
  v15 = sub_20B8C98E0(1, 0.0, 0.0, 0.0, 0.0);
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  *(v0 + OBJC_IVAR____TtC9SeymourUI29TVWorkoutPlanDetailHeaderCell_actions) = MEMORY[0x277D84F90];
  sub_20C13DE24();
  __break(1u);
}

void sub_20BEE62B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1;
    v28 = MEMORY[0x277D84F90];
    sub_20BB5DED4(0, v2, 0);
    v4 = v28;
    v25 = v3 + 64;
    v5 = sub_20C13DAA4();
    v6 = 0;
    v22 = v3 + 72;
    v23 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      v24 = v6;
      v10 = *(v3 + 36);
      v11 = v3;
      v26 = *(*(v3 + 56) + 8 * v5);

      sub_20BEEAE9C(&v26, &v27);
      if (v1)
      {
        goto LABEL_26;
      }

      v12 = v27;
      v28 = v4;
      v14 = *(v4 + 16);
      v13 = *(v4 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20BB5DED4((v13 > 1), v14 + 1, 1);
        v4 = v28;
      }

      *(v4 + 16) = v14 + 1;
      *(v4 + 8 * v14 + 32) = v12;
      v7 = 1 << *(v11 + 32);
      if (v5 >= v7)
      {
        goto LABEL_23;
      }

      v15 = *(v25 + 8 * v9);
      if ((v15 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v3 = v11;
      if (v10 != *(v11 + 36))
      {
        goto LABEL_25;
      }

      v16 = v15 & (-2 << (v5 & 0x3F));
      if (v16)
      {
        v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v8 = v23;
      }

      else
      {
        v17 = v9 << 6;
        v18 = v9 + 1;
        v8 = v23;
        v19 = (v22 + 8 * v9);
        while (v18 < (v7 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_20B526EA4(v5, v10, 0);
            v7 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_20B526EA4(v5, v10, 0);
      }

LABEL_4:
      v1 = 0;
      v6 = v24 + 1;
      v5 = v7;
      if (v24 + 1 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:

    __break(1u);
  }
}

uint64_t sub_20BEE651C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x277D84F90];
  sub_20BB5DED4(0, v1, 0);
  v2 = v23;
  v22 = a1 + 64;
  result = sub_20C13DAA4();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_20C137F44();
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    if (v12 >= v11 >> 1)
    {
      v20 = result;
      sub_20BB5DED4((v11 > 1), v12 + 1, 1);
      result = v20;
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 8 * v12 + 32) = result;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v21;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v21;
      v17 = (a1 + 72 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_20B526EA4(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20BEE6740(uint64_t a1)
{
  v2[50] = a1;
  v2[51] = v1;
  v3 = sub_20C135814();
  v2[52] = v3;
  v2[53] = *(v3 - 8);
  v2[54] = swift_task_alloc();
  v4 = sub_20C13BB84();
  v2[55] = v4;
  v2[56] = *(v4 - 8);
  v2[57] = swift_task_alloc();
  v5 = sub_20C133954();
  v2[58] = v5;
  v2[59] = *(v5 - 8);
  v2[60] = swift_task_alloc();
  v6 = sub_20C132EE4();
  v2[61] = v6;
  v2[62] = *(v6 - 8);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BEE694C, 0, 0);
}

uint64_t sub_20BEE694C()
{
  v1 = (v0[51] + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_20C1357D4();
  v4 = swift_task_alloc();
  v0[65] = v4;
  *v4 = v0;
  v4[1] = sub_20BEE6A58;
  v5 = v0[64];

  return MEMORY[0x2821ADF30](v5, v2, v3);
}

uint64_t sub_20BEE6A58(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[66] = a1;
  v4[67] = v1;

  v5 = v3[64];
  v6 = v3[61];
  v7 = *(v3[62] + 8);
  if (v1)
  {
    v4[77] = v7;
    v7(v5, v6);
    v8 = sub_20BEE7A00;
  }

  else
  {
    v4[68] = v7;
    v7(v5, v6);
    v8 = sub_20BEE6C14;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20BEE6C14(uint64_t a1)
{
  v78 = v1;
  v77[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 528);
  v3 = *(v2 + 32);
  v4 = 1;
  v5 = (((1 << v3) + 63) >> 6);
  v6 = v2;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v68[1] = v68;
    v69 = v5;
    v76 = v1;
    v7 = *(v1 + 472);
    MEMORY[0x28223BE20](a1);
    v70 = v68 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v70, v8);
    v9 = 0;
    v74 = v7;
    v75 = v6;
    v5 = (v6 + 56);
    v10 = v4 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v73 = v7 + 16;
    v71 = 0;
    v72 = v7 + 8;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v1 = v76;
      v2 = *(v76 + 480);
      v17 = *(v76 + 464);
      v4 = v74;
      v18 = v14 | (v9 << 6);
      (*(v74 + 16))(v2, *(v75 + 48) + *(v74 + 72) * v18, v17);
      *(v1 + 352) = sub_20C1338B4();
      *(v1 + 360) = v19 & 1;
      *(v1 + 368) = 1;
      *(v1 + 376) = 1;
      sub_20B6CD3B4();
      sub_20B6CD408();
      v20 = sub_20C133BF4();
      (*(v4 + 8))(v2, v17);
      if (v20)
      {
        *&v70[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v71++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_20BC11CB0(v70, v69, v71, *(v1 + 528));
          v23 = *(v1 + 536);
          goto LABEL_17;
        }
      }
    }

    v15 = v9;
    v1 = v76;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_16;
      }

      v16 = *(v5 + v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v6 = *(v1 + 528);
  }

  v64 = *(v1 + 536);
  v65 = *(v1 + 528);
  v66 = swift_slowAlloc();
  v23 = v64;
  v67 = sub_20BEEE8EC(v66, v5, v65, sub_20BEE81CC, 0);

  result = MEMORY[0x20F2F6A40](v66, -1, -1);
  if (!v23)
  {
    v22 = v67;
LABEL_17:
    *(v1 + 392) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770240, &unk_20C182C20);
    sub_20C132E94();
    sub_20BEEED1C();
    sub_20BEEF384(&qword_27C763ED0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v24 = sub_20C13CBE4();
    v25 = v23;
    *(v1 + 552) = v24;

    if (v23)
    {
      v26 = *(v1 + 544);
      *(v1 + 584) = v23;
      v28 = *(v1 + 424);
      v27 = *(v1 + 432);
      v29 = *(v1 + 416);
      v30 = *(v1 + 400);
      sub_20C13B454();
      (*(v28 + 16))(v27, v30, v29);
      v31 = v25;
      v32 = sub_20C13BB74();
      v33 = sub_20C13D1D4();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v1 + 496);
        v35 = *(v1 + 504);
        v36 = *(v1 + 488);
        v37 = *(v1 + 456);
        v74 = *(v1 + 448);
        v38 = *(v1 + 432);
        v75 = *(v1 + 440);
        v76 = v37;
        v39 = *(v1 + 416);
        v40 = *(v1 + 424);
        v70 = v34;
        v71 = v39;
        v41 = swift_slowAlloc();
        v69 = v26;
        v42 = v41;
        v73 = swift_slowAlloc();
        v77[0] = v73;
        *v42 = 136446466;
        LODWORD(v72) = v33;
        sub_20C1357D4();
        sub_20BEEF384(&qword_27C763EF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v43 = sub_20C13DFA4();
        v45 = v44;
        v69(v35, v36);
        (*(v40 + 8))(v38, v71);
        v46 = sub_20B51E694(v43, v45, v77);

        *(v42 + 4) = v46;
        *(v42 + 12) = 2082;
        *(v1 + 384) = v25;
        v47 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
        v48 = sub_20C13C9D4();
        v50 = sub_20B51E694(v48, v49, v77);

        *(v42 + 14) = v50;
        _os_log_impl(&dword_20B517000, v32, v72, "Unable to fetch related workout plans to %{public}s: %{public}s", v42, 0x16u);
        v51 = v73;
        swift_arrayDestroy();
        MEMORY[0x20F2F6A40](v51, -1, -1);
        MEMORY[0x20F2F6A40](v42, -1, -1);

        (*(v74 + 8))(v76, v75);
      }

      else
      {
        v57 = *(v1 + 448);
        v56 = *(v1 + 456);
        v59 = *(v1 + 432);
        v58 = *(v1 + 440);
        v60 = *(v1 + 416);
        v61 = *(v1 + 424);

        (*(v61 + 8))(v59, v60);
        (*(v57 + 8))(v56, v58);
      }

      v62 = swift_task_alloc();
      *(v1 + 592) = v62;
      *v62 = v1;
      v62[1] = sub_20BEE7680;
      v53 = *(v1 + 400);
      v55 = MEMORY[0x277D84F90];
      v54 = v1 + 16;
    }

    else
    {
      v52 = swift_task_alloc();
      *(v1 + 560) = v52;
      *v52 = v1;
      v52[1] = sub_20BEE7384;
      v53 = *(v1 + 400);
      v54 = v1 + 184;
      v55 = v24;
    }

    return sub_20BEE8270(v54, v53, v55);
  }

  return result;
}

uint64_t sub_20BEE7384()
{
  *(*v1 + 568) = v0;

  if (v0)
  {
    v2 = sub_20BEE7D74;
  }

  else
  {

    v2 = sub_20BEE74D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BEE74D4()
{
  sub_20C13CDA4();
  *(v0 + 576) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BEE759C, v2, v1);
}

uint64_t sub_20BEE759C()
{

  sub_20BEEA72C((v0 + 184));
  sub_20B621D00(v0 + 184);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BEE7680()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_20BEE80F0;
  }

  else
  {
    v2 = sub_20BEE77C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BEE77C0()
{
  sub_20C13CDA4();
  *(v0 + 608) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BEE7888, v2, v1);
}

uint64_t sub_20BEE7888()
{

  sub_20BEEA72C((v0 + 16));
  sub_20B621D00(v0 + 16);

  return MEMORY[0x2822009F8](sub_20BEE7930, 0, 0);
}

uint64_t sub_20BEE7930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BEE7A00(uint64_t a1)
{
  v42 = v1;
  v41[1] = *MEMORY[0x277D85DE8];
  v2 = v1[77];
  v3 = v1[67];
  v1[73] = v3;
  v5 = v1[53];
  v4 = v1[54];
  v6 = v1[52];
  v7 = v1[50];
  sub_20C13B454();
  (*(v5 + 16))(v4, v7, v6);
  v8 = v3;
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v1[63];
    v12 = v1[61];
    v38 = v1[56];
    v13 = v1[54];
    v39 = v1[55];
    v40 = v1[57];
    v14 = v1[53];
    v35 = v1[52];
    v34 = v2;
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41[0] = v37;
    *v15 = 136446466;
    v36 = v10;
    sub_20C1357D4();
    sub_20BEEF384(&qword_27C763EF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_20C13DFA4();
    v18 = v17;
    v34(v11, v12);
    (*(v14 + 8))(v13, v35);
    v19 = sub_20B51E694(v16, v18, v41);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v1[48] = v3;
    v20 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    v21 = sub_20C13C9D4();
    v23 = sub_20B51E694(v21, v22, v41);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_20B517000, v9, v36, "Unable to fetch related workout plans to %{public}s: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v37, -1, -1);
    MEMORY[0x20F2F6A40](v15, -1, -1);

    (*(v38 + 8))(v40, v39);
  }

  else
  {
    v25 = v1[56];
    v24 = v1[57];
    v27 = v1[54];
    v26 = v1[55];
    v28 = v1[52];
    v29 = v1[53];

    (*(v29 + 8))(v27, v28);
    (*(v25 + 8))(v24, v26);
  }

  v30 = swift_task_alloc();
  v1[74] = v30;
  *v30 = v1;
  v30[1] = sub_20BEE7680;
  v31 = v1[50];
  v32 = MEMORY[0x277D84F90];

  return sub_20BEE8270((v1 + 2), v31, v32);
}

uint64_t sub_20BEE7D74()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];

  v1 = v0[71];
  v2 = v0[68];
  v0[73] = v1;
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  v6 = v0[50];
  sub_20C13B454();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[63];
    v11 = v0[61];
    v37 = v0[56];
    v12 = v0[54];
    v38 = v0[55];
    v39 = v0[57];
    v13 = v0[53];
    v34 = v0[52];
    v33 = v2;
    v14 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40[0] = v36;
    *v14 = 136446466;
    v35 = v9;
    sub_20C1357D4();
    sub_20BEEF384(&qword_27C763EF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_20C13DFA4();
    v17 = v16;
    v33(v10, v11);
    (*(v13 + 8))(v12, v34);
    v18 = sub_20B51E694(v15, v17, v40);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[48] = v1;
    v19 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    v20 = sub_20C13C9D4();
    v22 = sub_20B51E694(v20, v21, v40);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_20B517000, v8, v35, "Unable to fetch related workout plans to %{public}s: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v36, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);

    (*(v37 + 8))(v39, v38);
  }

  else
  {
    v24 = v0[56];
    v23 = v0[57];
    v26 = v0[54];
    v25 = v0[55];
    v27 = v0[52];
    v28 = v0[53];

    (*(v28 + 8))(v26, v27);
    (*(v24 + 8))(v23, v25);
  }

  v29 = swift_task_alloc();
  v0[74] = v29;
  *v29 = v0;
  v29[1] = sub_20BEE7680;
  v30 = v0[50];
  v31 = MEMORY[0x277D84F90];

  return sub_20BEE8270((v0 + 2), v30, v31);
}

uint64_t sub_20BEE80F0()
{
  v1 = *(v0 + 600);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20BEE81CC(uint64_t a1)
{
  sub_20C1338B4();
  sub_20B6CD3B4();
  sub_20B6CD408();
  return sub_20C133BF4() & 1;
}

uint64_t sub_20BEE8270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  v4[23] = swift_task_alloc();
  v5 = sub_20C132E94();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770250, &unk_20C182C30);
  v4[28] = swift_task_alloc();
  v6 = sub_20C1365F4();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764630, &unk_20C16BB70);
  v4[36] = v7;
  v4[37] = *(v7 - 8);
  v4[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770258, &unk_20C182C40);
  v4[39] = swift_task_alloc();
  v8 = sub_20C138094();
  v4[40] = v8;
  v4[41] = *(v8 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v9 = sub_20C1357B4();
  v4[46] = v9;
  v4[47] = *(v9 - 8);
  v4[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BEE85B0, 0, 0);
}

void sub_20BEE85B0(uint64_t a1)
{
  v56 = v1;
  v3 = v1[47];
  v2 = v1[48];
  v4 = v1[46];
  sub_20C135804();
  v5 = sub_20C135764();
  v6 = *(v3 + 8);
  v1[49] = v6;
  v1[50] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  v7 = sub_20BEE651C(v5);

  v8 = sub_20B717EA4(v7);

  v9 = sub_20BEEF054();
  v10 = v9[2];
  if (v10)
  {
    v11 = sub_20BEDED8C(v10, 0);
    v53 = sub_20BEE2B00(&v55, (v11 + 4), v10, v9);
    v12 = v55;

    v13 = sub_20B583EDC(v12);
    if (v53 != v10)
    {
      goto LABEL_28;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v55 = v11;
  sub_20BEEC364(&v55);
  v21 = v55;
  v54 = v55[2];
  if (!v54)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_24:
    v1[51] = v25;
    v45 = v1[38];
    v46 = v1[22];

    __swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_catalogClient), *(v46 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_catalogClient + 24));
    sub_20C139FD4();
    v47 = swift_task_alloc();
    v1[52] = v47;
    *(v47 + 16) = "SeymourUI/WorkoutPlanTemplateDetailShelf.swift";
    *(v47 + 24) = 46;
    *(v47 + 32) = 2;
    *(v47 + 40) = 110;
    *(v47 + 48) = v45;
    v48 = swift_task_alloc();
    v1[53] = v48;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10, &qword_20C1542C0);
    *v48 = v1;
    v48[1] = sub_20BEE8B0C;
    v18 = sub_20BAD4B4C;
    v13 = (v1 + 18);
    v17 = 0x800000020C192D10;
    v14 = 0;
    v15 = 0;
    v16 = 0xD000000000000013;
    v19 = v47;

    goto LABEL_29;
  }

  v22 = 0;
  v49 = v1[39];
  v50 = v1[41];
  v23 = v8 + 56;
  v24 = (v50 + 56);
  v51 = v55 + 4;
  v25 = MEMORY[0x277D84F90];
  v52 = v55;
  while (v22 < *(v21 + 16))
  {
    v26 = &v51[3 * v22];
    v27 = v26[1];
    v28 = v26[2];

    v29 = sub_20C137F44();
    if (*(v8 + 16))
    {
      v30 = v29;
      v31 = sub_20C13E154();
      v32 = -1 << *(v8 + 32);
      v33 = v31 & ~v32;
      if ((*(v23 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        v34 = ~v32;
        while (*(*(v8 + 48) + 8 * v33) != v30)
        {
          v33 = (v33 + 1) & v34;
          if (((*(v23 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v38 = v1[39];
        v37 = v1[40];
        *v38 = v27;
        *(v49 + 8) = v28;
        swift_storeEnumTagMultiPayload();
        (*v24)(v38, 0, 1, v37);
LABEL_18:
        v40 = v1[44];
        v39 = v1[45];
        v41 = MEMORY[0x277D53BC8];
        sub_20BEEF31C(v1[39], v39, MEMORY[0x277D53BC8]);
        sub_20BEEF31C(v39, v40, v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_20BC060E4(0, v25[2] + 1, 1, v25);
        }

        v21 = v52;
        v43 = v25[2];
        v42 = v25[3];
        if (v43 >= v42 >> 1)
        {
          v25 = sub_20BC060E4((v42 > 1), v43 + 1, 1, v25);
        }

        v44 = v1[44];
        v25[2] = v43 + 1;
        v13 = sub_20BEEF31C(v44, v25 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v43, MEMORY[0x277D53BC8]);
        goto LABEL_8;
      }
    }

LABEL_15:
    v36 = v1[39];
    v35 = v1[40];
    (*v24)(v36, 1, 1, v35);

    if ((*(v50 + 48))(v36, 1, v35) != 1)
    {
      goto LABEL_18;
    }

    v13 = sub_20B520158(v1[39], &qword_27C770258, &unk_20C182C40);
    v21 = v52;
LABEL_8:
    if (++v22 == v54)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  MEMORY[0x2822008A0](v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_20BEE8B0C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {

    v3 = sub_20BEE8C84;
  }

  else
  {
    v5 = v2[37];
    v4 = v2[38];
    v6 = v2[36];
    v2[55] = v2[18];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BEE8DC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BEE8C84()
{
  (*(v0[37] + 8))(v0[38], v0[36]);

  v1 = v0[1];

  return v1();
}

void sub_20BEE8DC4()
{
  v238 = v0;
  v1 = v0[55];
  v2 = v0[30];
  v229 = sub_20B6B27E8(MEMORY[0x277D84F90]);
  v3 = v1 + 56;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 56);
  v7 = (63 - v5) >> 6;
  v208 = (v2 + 32);
  v218 = (v2 + 8);
  v225 = v2;
  v206 = (v2 + 40);
  v221 = v1;

  v8 = 0;
  v233 = v0;
  v211 = v7;
  v215 = v1 + 56;
  while (v6)
  {
    v10 = v8;
LABEL_11:
    v12 = v0[34];
    v11 = v0[35];
    v13 = v0[29];
    v14 = v225[9];
    v15 = v225[2];
    v15(v11, *(v221 + 48) + v14 * (__clz(__rbit64(v6)) | (v10 << 6)), v13);
    v16 = sub_20C1365A4();
    v18 = v17;
    v15(v12, v11, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v237 = v229;
    v20 = sub_20B65AA60(v16, v18);
    v22 = *(v229 + 2);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_147;
    }

    v26 = v21;
    if (*(v229 + 3) >= v25)
    {
      v28 = v233;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v20;
        sub_20BA0FBAC();
        v20 = v36;
      }
    }

    else
    {
      sub_20BA08BFC(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_20B65AA60(v16, v18);
      v28 = v233;
      if ((v26 & 1) != (v27 & 1))
      {

        sub_20C13E054();
        return;
      }
    }

    v6 &= v6 - 1;
    v30 = v28[34];
    v29 = v28[35];
    v31 = v28[29];
    if (v26)
    {
      v9 = v20;

      v229 = v237;
      (*v206)(*(v237 + 7) + v9 * v14, v30, v31);
      (*v218)(v29, v31);
    }

    else
    {
      v32 = v237;
      *&v237[8 * (v20 >> 6) + 64] |= 1 << v20;
      v33 = (*(v32 + 6) + 16 * v20);
      *v33 = v16;
      v33[1] = v18;
      (*v208)(*(v32 + 7) + v20 * v14, v30, v31);
      (*v218)(v29, v31);
      v34 = *(v32 + 2);
      v24 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v24)
      {
        goto LABEL_149;
      }

      v229 = v32;
      *(v32 + 2) = v35;
    }

    v8 = v10;
    v0 = v233;
    v7 = v211;
    v3 = v215;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      return;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  v37 = v0[49];
  v38 = v0[48];
  v39 = v0[46];
  v222 = v0[30];

  sub_20C135804();
  v40 = sub_20C135774();
  v37(v38, v39);
  v41 = -1;
  v42 = -1 << *(v40 + 32);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v43 = v41 & *(v40 + 56);
  v44 = (63 - v42) >> 6;

  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  while (v43)
  {
    v47 = v43;
LABEL_29:
    v43 = (v47 - 1) & v47;
    if (*(v229 + 2))
    {
      v49 = (*(v40 + 48) + ((v45 << 10) | (16 * __clz(__rbit64(v47)))));
      v50 = *v49;
      v51 = v49[1];

      v52 = sub_20B65AA60(v50, v51);
      if (v53)
      {
        v54 = v233[32];
        v212 = v233[33];
        v55 = v233[29];
        v216 = v225[9];
        (v225[2])(v54, *(v229 + 7) + v216 * v52, v55);

        v56 = v225[4];
        v56(v212, v54, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_20BC05E98(0, *(v46 + 2) + 1, 1, v46);
        }

        v58 = *(v46 + 2);
        v57 = *(v46 + 3);
        if (v58 >= v57 >> 1)
        {
          v46 = sub_20BC05E98((v57 > 1), v58 + 1, 1, v46);
        }

        v59 = v233[33];
        v60 = v233[29];
        *(v46 + 2) = v58 + 1;
        v56(&v46[((*(v222 + 80) + 32) & ~*(v222 + 80)) + v58 * v216], v59, v60);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      goto LABEL_138;
    }

    if (v48 >= v44)
    {
      break;
    }

    v47 = *(v40 + 56 + 8 * v48);
    ++v45;
    if (v47)
    {
      v45 = v48;
      goto LABEL_29;
    }
  }

  v61 = v233;
  v62 = v233[54];
  v63 = v233[22];

  v64 = (v63 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v63 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_mediaTagStringBuilder), *(v63 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_mediaTagStringBuilder + 24));
  v65 = sub_20C138534();
  v237 = v46;

  sub_20BEEC2BC(&v237);
  if (v62)
  {

    return;
  }

  v201 = v64;

  v66 = *(v237 + 2);
  v67 = v233[41];
  v68 = &unk_20C14F000;
  if (v66)
  {
    v69 = &v237[(*(v222 + 80) + 32) & ~*(v222 + 80)];
    v209 = v225[2];
    v213 = v225[9];
    v70 = 0x772E657275676966;
    if (v65)
    {
      v70 = 0x722E657275676966;
    }

    v198 = v70;
    v71 = 0xEB000000006B6C61;
    if (v65)
    {
      v71 = 0xEB000000006C6C6FLL;
    }

    v72 = 0x800000020C196F00;
    v196 = v71;
    v73 = 0xD000000000000017;
    if ((v65 & 1) == 0)
    {
      v73 = 0x722E657275676966;
    }

    v204 = v73;
    if ((v65 & 1) == 0)
    {
      v72 = 0xEA00000000006E75;
    }

    v202 = v72;
    if (v65)
    {
      v74 = "figure.gymnastics";
    }

    else
    {
      v74 = "figure.skiing.crosscountry";
    }

    v75 = MEMORY[0x277D84F90];
    v193 = v74 | 0x8000000000000000;
    v217 = v233[41];
    while (2)
    {
      v226 = v75;
      v230 = v66;
      v223 = v69;
      v209(v61[31]);
      v76 = sub_20C1365D4();
      v78 = v77;
      v61[15] = v76;
      v61[16] = v77;
      v80 = v79 & 1;
      *(v61 + 136) = v79 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F68, &unk_20C182C50);
      sub_20C133BD4();
      sub_20B583F4C(v76, v78, v80);
      v81 = 0xEF6E776F646C6F6FLL;
      v82 = 0x632E657275676966;
      switch(*(v61 + 137))
      {
        case 1:
          v82 = 0xD000000000000014;
          v81 = 0x800000020C191190;
          goto LABEL_68;
        case 2:
          v82 = 0xD000000000000013;
          v81 = v193;
          goto LABEL_68;
        case 3:
          v82 = 0x642E657275676966;
          v81 = 0xEC00000065636E61;
          goto LABEL_68;
        case 4:
        case 0xC:
          v81 = v202;
          v82 = v204;
          goto LABEL_68;
        case 5:
          v81 = v196;
          v82 = v198;
          goto LABEL_68;
        case 6:
          v82 = 0xD000000000000025;
          v81 = 0x800000020C191320;
          goto LABEL_68;
        case 7:
          v82 = 0xD000000000000011;
          v81 = 0x800000020C191350;
          goto LABEL_68;
        case 8:
          v82 = 0x656D2E656C707061;
          v81 = 0xEE00657461746964;
          goto LABEL_68;
        case 9:
          v82 = 0x702E657275676966;
          v81 = 0xEE00736574616C69;
          goto LABEL_68;
        case 0xA:
          v82 = 0x722E657275676966;
          v81 = 0xEC0000007265776FLL;
          goto LABEL_68;
        case 0xB:
          v82 = 0xD000000000000022;
          v81 = 0x800000020C1912B0;
          goto LABEL_68;
        case 0xD:
          v82 = 0x792E657275676966;
          v81 = 0xEB0000000061676FLL;
          goto LABEL_68;
        case 0xE:
          v61 = v233;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
          v83 = *(v67 + 80);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_20C14F980;
          v85 = (v84 + ((v83 + 32) & ~v83));
          *v85 = sub_20C1365E4();
          v85[1] = v86;
          goto LABEL_69;
        default:
LABEL_68:
          v61 = v233;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
          v87 = *(v67 + 72);
          v83 = *(v67 + 80);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_20C1517D0;
          v88 = (v84 + ((v83 + 32) & ~v83));
          *v88 = v82;
          v88[1] = v81;
          swift_storeEnumTagMultiPayload();
          *(v88 + v87) = 3;
          swift_storeEnumTagMultiPayload();
          v89 = (v88 + 2 * v87);
          *v89 = sub_20C1365E4();
          v89[1] = v90;
LABEL_69:
          v91 = v61[31];
          v92 = v61[29];
          swift_storeEnumTagMultiPayload();
          (*v218)(v91, v92);
          v75 = v226;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_20BC082AC(0, v226[2] + 1, 1, v226);
          }

          v67 = v217;
          v94 = v75[2];
          v93 = v75[3];
          if (v94 >= v93 >> 1)
          {
            v75 = sub_20BC082AC((v93 > 1), v94 + 1, 1, v75);
          }

          v75[2] = v94 + 1;
          v75[v94 + 4] = v84;
          v69 = &v223[v213];
          v66 = v230 - 1;
          if (v230 != 1)
          {
            continue;
          }

          v68 = &unk_20C14F000;
          break;
      }

      break;
    }
  }

  else
  {

    LODWORD(v83) = *(v67 + 80);
    v75 = MEMORY[0x277D84F90];
  }

  v224 = v61[43];
  v227 = v61[51];
  v95 = v61[22];
  v231 = v61[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
  v96 = (v83 + 32) & ~v83;
  v97 = swift_allocObject();
  v207 = v68[152];
  *(v97 + 16) = v207;
  *(v97 + v96) = 2;
  v214 = v96;
  swift_storeEnumTagMultiPayload();
  v98 = sub_20BEEB0A8(v97, v75);

  v99 = swift_allocObject();
  v100 = *(v95 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanStringBuilder);
  v101 = v100[9];
  v102 = v100[10];
  __swift_project_boxed_opaque_existential_1(v100 + 6, v101);
  sub_20B5E107C(0xD000000000000018, 0x800000020C1A8410, v101, v102);
  v103 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v104 = sub_20C13C914();

  v105 = [v103 initWithString_];

  *(v99 + 16) = v105;
  __swift_project_boxed_opaque_existential_1(v201, v201[3]);
  *v224 = 0;
  swift_storeEnumTagMultiPayload();
  sub_20BEEB1E4(v224, v227);

  sub_20BE9B9EC(v224, MEMORY[0x277D53BC8]);
  v106 = sub_20C138544();

  v61[6] = v99 | 0x8000000000000000;
  *(v99 + 24) = v106;
  *(v99 + 32) = 0;
  v61[7] = sub_20BEEA9C8(v231);
  v107 = swift_allocObject();
  v108 = v100[9];
  v109 = v100[10];
  v205 = v100;
  __swift_project_boxed_opaque_existential_1(v100 + 6, v108);
  sub_20B5E107C(0xD00000000000001ELL, 0x800000020C1B65A0, v108, v109);
  v110 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v111 = sub_20C13C914();

  v112 = [v110 initWithString_];

  *(v107 + 16) = v112;
  sub_20B51CC64(v201, (v61 + 10));
  __swift_project_boxed_opaque_existential_1(v61 + 10, v61[13]);
  v113 = v98[2];
  if (v113)
  {
    v114 = 0;
    v115 = MEMORY[0x277D84F90];
    do
    {
      if (v114 >= v98[2])
      {
        goto LABEL_140;
      }

      v116 = v98[v114 + 4];
      v117 = *(v116 + 16);
      v118 = v115[2];
      v119 = v118 + v117;
      if (__OFADD__(v118, v117))
      {
        goto LABEL_141;
      }

      v120 = swift_isUniquelyReferenced_nonNull_native();
      if (v120 && v119 <= v115[3] >> 1)
      {
        if (!*(v116 + 16))
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (v118 <= v119)
        {
          v121 = v118 + v117;
        }

        else
        {
          v121 = v118;
        }

        v115 = sub_20BC060E4(v120, v121, 1, v115);
        if (!*(v116 + 16))
        {
LABEL_78:

          if (v117)
          {
            goto LABEL_142;
          }

          goto LABEL_79;
        }
      }

      if ((v115[3] >> 1) - v115[2] < v117)
      {
        goto LABEL_146;
      }

      swift_arrayInitWithCopy();

      if (v117)
      {
        v122 = v115[2];
        v24 = __OFADD__(v122, v117);
        v123 = v122 + v117;
        if (v24)
        {
          goto LABEL_148;
        }

        v115[2] = v123;
      }

LABEL_79:
      ++v114;
    }

    while (v113 != v114);
  }

  v124 = sub_20C138544();
  v125 = v233;

  *(v107 + 24) = v124;
  *(v107 + 32) = 0;
  v233[8] = v107 | 0x8000000000000000;
  v126 = swift_allocObject();
  v127 = v100[9];
  v128 = v100[10];
  __swift_project_boxed_opaque_existential_1(v100 + 6, v127);
  sub_20B5E107C(0xD00000000000001ALL, 0x800000020C1A8460, v127, v128);
  v129 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v130 = sub_20C13C914();

  v131 = [v129 initWithString_];

  *(v126 + 16) = v131;
  v132 = sub_20C1357C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
  v133 = swift_allocObject();
  v134 = MEMORY[0x277D83B88];
  v135 = MEMORY[0x277D83C10];
  *(v133 + 16) = v207;
  *(v133 + 56) = v134;
  *(v133 + 64) = v135;
  *(v133 + 32) = v132;
  v136 = v100[9];
  v137 = v100[10];
  __swift_project_boxed_opaque_existential_1(v100 + 6, v136);
  sub_20B5E10B0(0x4B4545575F4D554ELL, 0xE900000000000053, v133, v136, v137);

  v138 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v139 = sub_20C13C914();

  v140 = [v138 initWithString_];

  *(v126 + 24) = v140;
  *(v126 + 32) = 0;
  v233[9] = v126 | 0x8000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v233 + 10);
  v141 = 0;
  v142 = MEMORY[0x277D84F90];
LABEL_95:
  if (v141 <= 4)
  {
    v143 = 4;
  }

  else
  {
    v143 = v141;
  }

  while (v141 != 4)
  {
    if (v143 == v141)
    {
      goto LABEL_139;
    }

    v144 = v233[v141++ + 6];
    if ((~v144 & 0xF000000000000007) != 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v142 = sub_20BC05D3C(0, *(v142 + 2) + 1, 1, v142);
      }

      v146 = *(v142 + 2);
      v145 = *(v142 + 3);
      if (v146 >= v145 >> 1)
      {
        v142 = sub_20BC05D3C((v145 > 1), v146 + 1, 1, v142);
      }

      *(v142 + 2) = v146 + 1;
      *&v142[8 * v146 + 32] = v144;
      goto LABEL_95;
    }
  }

  v147 = v233[21];
  v197 = v233[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767630, &qword_20C183250);
  swift_arrayDestroy();
  v148 = *(v147 + 16);
  if (v148)
  {
    v194 = v233[42];
    v195 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_dateFormatter;
    v232 = v233[27];
    v149 = v233[25];
    v219 = (v149 + 56);
    v191 = (v149 + 8);
    v192 = (v149 + 32);
    v150 = 0;
    v228 = sub_20C133954();
    v200 = *(v228 - 8);
    v210 = MEMORY[0x277D84F90];
    v199 = v142;
    v220 = v148;
    while (v150 < v148)
    {
      v151 = v150 + 1;
      if (__OFADD__(v150, 1))
      {
        goto LABEL_144;
      }

      v152 = v125[28];
      v153 = v125[21] + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v150;
      v154 = *(v232 + 48);
      *v152 = v150;
      (*(v200 + 16))(&v152[v154], v153, v228);
      sub_20C1338D4();
      v155 = v125[26];
      v157 = v125[23];
      v156 = v125[24];
      (*v219)(v157, 0, 1, v156);
      (*v192)(v155, v157, v156);
      if (v150)
      {
        v158 = 0;
      }

      else
      {
        v159 = v205[9];
        v160 = v205[10];
        __swift_project_boxed_opaque_existential_1(v205 + 6, v159);
        sub_20B5E107C(0x4554454C504D4F43, 0xE900000000000044, v159, v160);
        v158 = v161;
      }

      v162 = v125[42];
      v163 = *(v197 + v195);
      v164 = sub_20C132DE4();
      v165 = [v163 stringFromDate_];

      v166 = sub_20C13C954();
      v168 = v167;

      *v162 = v166;
      *(v194 + 8) = v168;
      swift_storeEnumTagMultiPayload();
      if (v158)
      {
        v169 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v170 = sub_20C13C914();

        v171 = [v169 initWithString_];
      }

      else
      {
        v171 = 0;
      }

      v172 = v233[42];
      v173 = v233[28];
      v174 = v233[26];
      v203 = v233[24];
      v175 = swift_allocObject();
      *(v175 + 16) = v171;
      __swift_project_boxed_opaque_existential_1(v201, v201[3]);
      v176 = swift_allocObject();
      *(v176 + 16) = v207;
      sub_20B634348(v172, v176 + v214);
      v177 = sub_20C138544();

      sub_20BE9B9EC(v172, MEMORY[0x277D53BC8]);
      (*v191)(v174, v203);
      *(v175 + 24) = v177;
      *(v175 + 32) = 1;
      sub_20B520158(v173, &qword_27C770250, &unk_20C182C30);
      v178 = v210;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v178 = sub_20BC05D3C(0, *(v210 + 2) + 1, 1, v210);
      }

      v142 = v199;
      v180 = *(v178 + 2);
      v179 = *(v178 + 3);
      v210 = v178;
      v125 = v233;
      if (v180 >= v179 >> 1)
      {
        v210 = sub_20BC05D3C((v179 > 1), v180 + 1, 1, v178);
      }

      *(v210 + 2) = v180 + 1;
      *&v210[8 * v180 + 32] = v175 | 0x8000000000000000;
      v150 = v151;
      v148 = v220;
      if (v151 == v220)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_143;
  }

  v210 = MEMORY[0x277D84F90];
LABEL_123:
  v181 = v125[22];
  *(v181 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_relatedPlans) = v125[21];

  *(v181 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_metadataItems) = v142;

  v182 = *(v210 + 2);
  v183 = MEMORY[0x277D84F90];
  if (v182)
  {
    v184 = 0;
    while (v184 < *(v210 + 2))
    {
      v185 = *&v210[8 * v184 + 32];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = sub_20BC05D3C(0, *(v183 + 2) + 1, 1, v183);
      }

      v187 = *(v183 + 2);
      v186 = *(v183 + 3);
      if (v187 >= v186 >> 1)
      {
        v183 = sub_20BC05D3C((v186 > 1), v187 + 1, 1, v183);
      }

      ++v184;
      *(v183 + 2) = v187 + 1;
      *&v183[8 * v187 + 32] = v185;
      if (v182 == v184)
      {
        goto LABEL_131;
      }
    }

    goto LABEL_145;
  }

LABEL_131:
  v188 = v125[19];

  v237 = v142;
  sub_20B8D921C(v183);
  v189 = v237;
  *v188 = 0;
  *(v188 + 8) = 0;
  *(v188 + 16) = 1;
  *(v188 + 17) = *v234;
  *(v188 + 20) = *&v234[3];
  *(v188 + 24) = 0;
  *(v188 + 32) = 0;
  *(v188 + 40) = 128;
  *(v188 + 42) = v235;
  *(v188 + 46) = v236;
  *(v188 + 96) = 0;
  *(v188 + 64) = 0u;
  *(v188 + 80) = 0u;
  *(v188 + 48) = 0u;
  *(v188 + 97) = v237;
  *(v188 + 100) = *(&v237 + 3);
  *(v188 + 104) = v189;
  *(v188 + 112) = MEMORY[0x277D84F90];
  *(v188 + 120) = 0u;
  *(v188 + 136) = 0u;
  *(v188 + 152) = 0;
  *(v188 + 160) = 2;

  v190 = v125[1];

  v190();
}

void sub_20BEEA72C(__int128 *a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = a1[9];
  v43 = a1[8];
  v44 = v7;
  v45 = *(a1 + 20);
  v8 = a1[5];
  v39 = a1[4];
  v40 = v8;
  v9 = a1[7];
  v41 = a1[6];
  v42 = v9;
  v10 = a1[1];
  v35 = *a1;
  v36 = v10;
  v11 = a1[3];
  v37 = a1[2];
  v38 = v11;
  nullsub_1();
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 144);
  v46[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 128);
  v46[9] = v13;
  v47 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 160);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 80);
  v46[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 64);
  v46[5] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 112);
  v46[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 96);
  v46[7] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 16);
  v46[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row);
  v46[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 48);
  v46[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 32);
  v46[3] = v17;
  v18 = v44;
  *(v12 + 128) = v43;
  *(v12 + 144) = v18;
  *(v12 + 160) = v45;
  v19 = v40;
  *(v12 + 64) = v39;
  *(v12 + 80) = v19;
  v20 = v42;
  *(v12 + 96) = v41;
  *(v12 + 112) = v20;
  v21 = v36;
  *v12 = v35;
  *(v12 + 16) = v21;
  v22 = v38;
  *(v12 + 32) = v37;
  *(v12 + 48) = v22;
  sub_20B520158(v46, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_20B622224(a1, v34);
    return;
  }

  v24 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    sub_20B622224(a1, v34);
  }

  else
  {
    sub_20B622224(a1, v34);
    sub_20B61DF18(v1, v24);
    if (v26)
    {
      v28 = v25;
      v29 = v26;
      v30 = v27;
      v31 = v1;
      sub_20B5E2E18();
      *v6 = sub_20C13D374();
      (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
      v32 = sub_20C13C584();
      (*(v4 + 8))(v6, v3);
      if ((v32 & 1) == 0)
      {
        __break(1u);
        return;
      }

      sub_20B621794(v28, v29, v30, v31, 1, v24);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  swift_unknownObjectRelease();
}

unint64_t sub_20BEEA9C8(uint64_t a1)
{
  v2 = sub_20C135814();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1357B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C135804();
  v13 = sub_20C135764();
  (*(v10 + 8))(v12, v9);
  sub_20BEE62B8(v13);
  v15 = v14;

  v16 = sub_20BB1C930(v15);
  if (v17)
  {
  }

  else
  {
    v18 = v16;
    v19 = sub_20B6C1990(v15);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      v31 = swift_allocObject();
      v32 = *(v41[1] + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanStringBuilder);
      v33 = v32[9];
      v34 = v32[10];
      __swift_project_boxed_opaque_existential_1(v32 + 6, v33);
      sub_20B5E107C(0xD000000000000020, 0x800000020C1A8430, v33, v34);
      v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v36 = sub_20C13C914();

      v37 = [v35 initWithString_];

      *(v31 + 16) = v37;
      sub_20BAB2AB4(v19, v18);
      v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v39 = sub_20C13C914();

      v40 = [v38 initWithString_];

      *(v31 + 24) = v40;
      *(v31 + 32) = 0;
      return v31 | 0x8000000000000000;
    }
  }

  sub_20C13B454();
  (*(v3 + 16))(v5, a1, v2);
  v22 = sub_20C13BB74();
  v23 = sub_20C13D1D4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136315138;
    sub_20BEEF384(&qword_27C770260, MEMORY[0x277D51CF0], MEMORY[0x277D51D08]);
    v26 = sub_20C13DFA4();
    v28 = v27;
    (*(v3 + 8))(v5, v2);
    v29 = sub_20B51E694(v26, v28, &v44);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_20B517000, v22, v23, "Couldn't find min/max durations of an empty schedule: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x20F2F6A40](v25, -1, -1);
    MEMORY[0x20F2F6A40](v24, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  (*(v42 + 8))(v8, v43);
  return 0xF000000000000007;
}

void sub_20BEEAE9C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v28 = sub_20C136864();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(v8 + 16);
  if (v9)
  {
    v24[0] = a2;
    v24[1] = v2;
    v29 = MEMORY[0x277D84F90];
    sub_20BB5DED4(0, v9, 0);
    v10 = v29;
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v25 = *(v11 + 56);
    v26 = v12;
    v27 = v11;
    v14 = (v11 - 8);
    do
    {
      v15 = v28;
      v26(v7, v13, v28);
      v16 = sub_20C136854();
      (*v14)(v7, v15);
      v29 = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_20BB5DED4((v17 > 1), v18 + 1, 1);
        v10 = v29;
      }

      *(v10 + 16) = v19;
      *(v10 + 8 * v18 + 32) = v16;
      v13 += v25;
      --v9;
    }

    while (v9);
    a2 = v24[0];
LABEL_8:
    v20 = 0;
    v21 = 32;
    while (1)
    {
      v22 = *(v10 + v21);
      v23 = __OFADD__(v20, v22);
      v20 += v22;
      if (v23)
      {
        break;
      }

      v21 += 8;
      if (!--v19)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    return;
  }

  v10 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 16);
  if (v19)
  {
    goto LABEL_8;
  }

  v20 = 0;
LABEL_11:

  *a2 = v20;
}

void *sub_20BEEB0A8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a2[2];
  if (v3 < 2)
  {
  }

  else
  {
    v5 = a2 + 4;
    v2 = MEMORY[0x277D84F90];
    do
    {
      v6 = *v5;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_20BC082AC(0, v2[2] + 1, 1, v2);
      }

      v8 = v2[2];
      v7 = v2[3];
      v9 = v8 + 1;
      if (v8 >= v7 >> 1)
      {
        v2 = sub_20BC082AC((v7 > 1), v8 + 1, 1, v2);
      }

      v2[2] = v9;
      v2[v8 + 4] = v6;
      if (v3 != 1)
      {
        v10 = v2[3];
        v11 = v8 + 2;

        if (v11 > (v10 >> 1))
        {
          v2 = sub_20BC082AC((v10 > 1), v11, 1, v2);
        }

        v2[2] = v11;
        v2[v9 + 4] = a1;
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  return v2;
}

void *sub_20BEEB1E4(uint64_t a1, void *a2)
{
  v24 = a1;
  v3 = sub_20C138094();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770268, &unk_20C182C60);
  MEMORY[0x28223BE20](v25);
  v10 = (&v23 - v9);
  v11 = a2[2];
  if (v11 < 2)
  {
  }

  else
  {
    v12 = 0;
    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = *(v4 + 72);
    v15 = a2 + v13;
    a2 = MEMORY[0x277D84F90];
    do
    {
      v16 = *(v25 + 48);
      *v10 = v12;
      sub_20B634348(v15, v10 + v16);
      sub_20B634348(v10 + v16, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_20BC060E4(0, a2[2] + 1, 1, a2);
      }

      v18 = a2[2];
      v17 = a2[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        a2 = sub_20BC060E4((v17 > 1), v18 + 1, 1, a2);
      }

      a2[2] = v19;
      sub_20BEEF31C(v8, a2 + v13 + v18 * v14, MEMORY[0x277D53BC8]);
      if (v11 != 1)
      {
        sub_20B634348(v24, v26);
        v20 = a2[3];
        v21 = v18 + 2;
        if (v21 > (v20 >> 1))
        {
          a2 = sub_20BC060E4((v20 > 1), v21, 1, a2);
        }

        a2[2] = v21;
        sub_20BEEF31C(v26, a2 + v13 + v19 * v14, MEMORY[0x277D53BC8]);
      }

      sub_20B520158(v10, &qword_27C770268, &unk_20C182C60);
      v15 += v14;
      ++v12;
      --v11;
    }

    while (v11);
  }

  return a2;
}

uint64_t sub_20BEEB490(uint64_t a1)
{
  v3 = type metadata accessor for ShelfMetricAction(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0, &unk_20C14FCE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    (*(v4 + 56))(v12, 1, 1, v3);
    sub_20B52F9E8(v12, v9, &unk_27C7622D0, &unk_20C14FCE0);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {
      sub_20B520158(v9, &unk_27C7622D0, &unk_20C14FCE0);
    }

    else
    {
      sub_20BEEF31C(v9, v6, type metadata accessor for ShelfMetricAction);
      sub_20BF9FE5C(v1, v6, v14);
      sub_20BE9B9EC(v6, type metadata accessor for ShelfMetricAction);
    }

    v15 = v14 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 64))(v14, a1, ObjectType, v16);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return sub_20B520158(v12, &unk_27C7622D0, &unk_20C14FCE0);
  }

  return result;
}

uint64_t sub_20BEEB6FC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanClient));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_mediaTagStringBuilder));

  return v0;
}

uint64_t sub_20BEEB830()
{
  sub_20BEEB6FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanTemplateDetailShelf(uint64_t a1)
{
  result = qword_27C770230;
  if (!qword_27C770230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BEEB8DC(uint64_t a1)
{
  result = sub_20C132EE4();
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

uint64_t sub_20BEEB9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = sub_20C132EE4();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772020, &qword_20C182C00);
  v5[18] = swift_task_alloc();
  v7 = sub_20C1353F4();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BEEBB10, 0, 0);
}

uint64_t sub_20BEEBB10()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanClient, (v0 + 2));

    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    sub_20C133804();
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_20BEEBCBC;
    v6 = v0[17];
    v5 = v0[18];

    return MEMORY[0x2821ADEE8](v5, v6, v2, v3);
  }

  else
  {
    (*(v0[20] + 56))(v0[18], 1, 1, v0[19]);
    sub_20B520158(v0[18], &unk_27C772020, &qword_20C182C00);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_20BEEBCBC()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_20BEEC0F4;
  }

  else
  {
    v5 = sub_20BEEBE2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BEEBE2C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[18], &unk_27C772020, &qword_20C182C00);
LABEL_8:

    v7 = v0[1];

    return v7();
  }

  (*(v0[20] + 32))(v0[21], v0[18], v0[19]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);
    goto LABEL_8;
  }

  sub_20C13CDA4();
  v0[25] = sub_20C13CD94();
  v6 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BEEBFE8, v6, v5);
}

uint64_t sub_20BEEBFE8()
{
  v1 = *(v0 + 168);

  sub_20BEEB490(v1);

  return MEMORY[0x2822009F8](sub_20BEEC064, 0, 0);
}

uint64_t sub_20BEEC064()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BEEC0F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BEEC180@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BEEC1F8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20BEEC2BC(uint64_t *a1)
{
  v2 = *(sub_20C1365F4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0DE4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BEEC3D0(v5);
  *a1 = v3;
}

void sub_20BEEC364(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20B6A1064(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_20BEEC4FC(v4);
  *a1 = v2;
}

void sub_20BEEC3D0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C1365F4();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C1365F4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BEECA84(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20BEEC604(0, v2, 1, a1);
  }
}

void sub_20BEEC4FC(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AFA8, &qword_20C16F2C0);
        v5 = sub_20C13CCD4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_20BEED640(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20BEEC910(0, v2, 1, a1);
  }
}

void sub_20BEEC604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C1365F4();
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v34 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_20C1365E4();
      v27 = v26;
      if (v25 == sub_20C1365E4() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_20C13DFF4();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20BEEC910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v21 = *a4;
    v4 = *a4 + 24 * a3 - 24;
    v5 = a1 - a3;
LABEL_6:
    v19 = v4;
    v20 = a3;
    v6 = v21 + 24 * a3;
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    v18 = v5;
    while (1)
    {
      v10 = *(v4 + 8);
      v9 = *(v4 + 16);

      v11 = sub_20C137F94();
      if (v11 == sub_20C137F94())
      {
        if (v8 == v10 && v7 == v9)
        {

LABEL_5:
          a3 = v20 + 1;
          v4 = v19 + 24;
          v5 = v18 - 1;
          if (v20 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v13 = sub_20C13DFF4();
      }

      else
      {
        v13 = sub_20C137F34();
      }

      v14 = v13;

      if ((v14 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v21)
      {
        break;
      }

      v15 = *(v4 + 24);
      v8 = *(v4 + 32);
      v7 = *(v4 + 40);
      *(v4 + 24) = *v4;
      *(v4 + 40) = *(v4 + 16);
      *v4 = v15;
      *(v4 + 8) = v8;
      *(v4 + 16) = v7;
      v4 -= 24;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20BEECA84(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_20C1365F4();
  MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v146 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v129 - v22;
  v25.n128_f64[0] = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v26;
  v27 = a3[1];
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_20BEEDE54(v124 + *(v5 + 72) * v126, (v124 + *(v5 + 72) * v127), (v124 + *(v5 + 72) * v29), v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20B6A07A0(a3);
          }

          if (v123 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v128 = &a3[2 * v123];
          *v128 = v126;
          v128[1] = v29;
          v156 = a3;
          sub_20B6A0714(v123 - 1);
          v29 = v156;
          v123 = v156[2];
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_20B6A07A0(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, v32 + v33 * v30, v9);
      v31 = sub_20C1365E4();
      v37 = v36;
      v38 = sub_20C1365E4();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_20C13DFF4();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = v32 + v42;
      v44 = v145 * v5;
      v45 = v32 + v145 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_20C1365E4();
        v52 = v51;
        if (v50 == sub_20C1365E4() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_20C13DFF4();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = (a3 + 1);
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              v149(v139, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v149((v57 + v6), v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_20BC05740(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_20BC05740((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_20BEEDE54(v118 + *(v144 + 72) * v119, (v118 + *(v144 + 72) * v120), (v118 + *(v144 + 72) * v29), v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20B6A07A0(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v156 = a3;
        sub_20B6A0714(v31);
        v29 = v156;
        v77 = v156[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = v60 + v31 * v61;
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_20C1365E4();
    v69 = v68;
    if (v5 == sub_20C1365E4() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_20C13DFF4();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_20BEED640(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_118:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_160;
    }

    v4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = v4;
LABEL_121:
      v107 = *(v106 + 2);
      if (v107 >= 2)
      {
        v4 = 24;
        do
        {
          v108 = *v8;
          if (!*v8)
          {
            goto LABEL_158;
          }

          v109 = v8;
          v110 = *&v106[16 * v107];
          v8 = v106;
          v111 = *&v106[16 * v107 + 24];
          sub_20BEEE4F0((v108 + 24 * v110), (v108 + 24 * *&v106[16 * v107 + 16]), (v108 + 24 * v111), v6);
          if (v7)
          {
            break;
          }

          if (v111 < v110)
          {
            goto LABEL_147;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v112 = v8;
          }

          else
          {
            v112 = sub_20B6A07A0(v8);
          }

          if (v107 - 2 >= *(v112 + 2))
          {
            goto LABEL_148;
          }

          v8 = v109;
          v113 = &v112[16 * v107];
          *v113 = v110;
          *(v113 + 1) = v111;
          v132 = v112;
          sub_20B6A0714(v107 - 1);
          v106 = v132;
          v107 = *(v132 + 2);
        }

        while (v107 > 1);
      }

LABEL_132:

      return;
    }

LABEL_154:
    v106 = sub_20B6A07A0(v4);
    goto LABEL_121;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      goto LABEL_38;
    }

    v126 = v9;
    v117 = v11;
    v119 = v7;
    v4 = *v8;
    v14 = *v8 + 24 * v13;
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    v17 = (*v8 + 24 * v10);
    v6 = *v17;
    v19 = *(v17 + 1);
    v18 = *(v17 + 2);

    v20 = sub_20C137F94();
    if (v20 == sub_20C137F94())
    {
      if (v15 == v19 && v16 == v18)
      {
        v129 = 0;
        goto LABEL_14;
      }

      v22 = sub_20C13DFF4();
    }

    else
    {
      v22 = sub_20C137F34();
    }

    v129 = v22;
LABEL_14:
    v8 = a3;

    v13 = v10 + 2;
    if (v10 + 2 < v126)
    {
      v114 = v10;
      v23 = v4 + 24 * v10 + 32;
      v4 = v23;
      while (1)
      {
        v24 = v13;
        v6 = *(v23 + 16);
        v26 = *(v4 + 24);
        v4 += 24;
        v25 = v26;
        v27 = *(v23 + 32);
        v28 = *v23;
        v29 = *(v23 + 8);

        v30 = sub_20C137F94();
        if (v30 != sub_20C137F94())
        {
          break;
        }

        if (v25 != v28 || v27 != v29)
        {
          v32 = sub_20C13DFF4();
          goto LABEL_25;
        }

        v8 = a3;
        if (v129)
        {
          v11 = v117;
          v7 = v119;
          v12 = v114;
          if (v13 < v114)
          {
            goto LABEL_151;
          }

          goto LABEL_31;
        }

LABEL_17:
        v13 = v24 + 1;
        v23 = v4;
        if (v126 == v24 + 1)
        {
          v13 = v126;
          goto LABEL_28;
        }
      }

      v32 = sub_20C137F34();
LABEL_25:
      v33 = v32;
      v8 = a3;

      if ((v129 ^ v33))
      {
        v13 = v24;
LABEL_28:
        v12 = v114;
        goto LABEL_29;
      }

      goto LABEL_17;
    }

LABEL_29:
    v11 = v117;
    v7 = v119;
    if (v129)
    {
      if (v13 < v12)
      {
        goto LABEL_151;
      }

LABEL_31:
      if (v12 < v13)
      {
        v34 = 24 * v13 - 8;
        v35 = 24 * v12;
        v36 = v13;
        v37 = v12;
        do
        {
          if (v37 != --v36)
          {
            v44 = *v8;
            if (!*v8)
            {
              goto LABEL_157;
            }

            v38 = v44 + v35;
            v39 = (v44 + v34);
            v40 = *v38;
            v41 = *(v38 + 8);
            v42 = *(v38 + 16);
            v43 = *v39;
            *v38 = *(v39 - 1);
            *(v38 + 16) = v43;
            *(v39 - 16) = v40;
            *(v39 - 1) = v41;
            *v39 = v42;
          }

          ++v37;
          v34 -= 24;
          v35 += 24;
        }

        while (v37 < v36);
      }
    }

LABEL_38:
    v45 = v8[1];
    if (v13 < v45)
    {
      if (__OFSUB__(v13, v12))
      {
        goto LABEL_150;
      }

      if (v13 - v12 < a4)
      {
        break;
      }
    }

LABEL_63:
    if (v13 < v12)
    {
      goto LABEL_149;
    }

    v58 = v11;
    v6 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v11 = v58;
    }

    else
    {
      v11 = sub_20BC05740(0, *(v58 + 2) + 1, 1, v58);
    }

    v4 = *(v11 + 2);
    v59 = *(v11 + 3);
    v7 = v4 + 1;
    if (v4 >= v59 >> 1)
    {
      v11 = sub_20BC05740((v59 > 1), v4 + 1, 1, v11);
    }

    *(v11 + 2) = v7;
    v60 = &v11[16 * v4];
    *(v60 + 4) = v12;
    *(v60 + 5) = v13;
    v61 = *a1;
    if (!*a1)
    {
      goto LABEL_159;
    }

    v128 = v13;
    if (v4)
    {
      while (1)
      {
        v62 = v7 - 1;
        if (v7 >= 4)
        {
          break;
        }

        if (v7 == 3)
        {
          v63 = *(v11 + 4);
          v64 = *(v11 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_83:
          if (v66)
          {
            goto LABEL_138;
          }

          v79 = &v11[16 * v7];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_141;
          }

          v85 = &v11[16 * v62 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_144;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_145;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v7 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v89 = &v11[16 * v7];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_97:
        if (v84)
        {
          goto LABEL_140;
        }

        v92 = &v11[16 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_143;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_104:
        v4 = v62 - 1;
        if (v62 - 1 >= v7)
        {
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        v100 = *v8;
        if (!*v8)
        {
          goto LABEL_156;
        }

        v101 = v8;
        v8 = v11;
        v102 = *&v11[16 * v4 + 32];
        v103 = *&v11[16 * v62 + 40];
        sub_20BEEE4F0((v100 + 24 * v102), (v100 + 24 * *&v11[16 * v62 + 32]), (v100 + 24 * v103), v61);
        v7 = v6;
        if (v6)
        {
          goto LABEL_132;
        }

        if (v103 < v102)
        {
          goto LABEL_134;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v104 = v8;
        }

        else
        {
          v104 = sub_20B6A07A0(v8);
        }

        if (v4 >= *(v104 + 2))
        {
          goto LABEL_135;
        }

        v8 = v101;
        v105 = &v104[16 * v4];
        *(v105 + 4) = v102;
        *(v105 + 5) = v103;
        v131 = v104;
        sub_20B6A0714(v62);
        v11 = v131;
        v7 = *(v131 + 2);
        if (v7 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v11[16 * v7 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_136;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_137;
      }

      v74 = &v11[16 * v7];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_139;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_142;
      }

      if (v78 >= v70)
      {
        v96 = &v11[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_146;
        }

        if (v65 < v99)
        {
          v62 = v7 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

LABEL_3:
    v9 = v8[1];
    v10 = v128;
    v7 = v6;
    if (v128 >= v9)
    {
      goto LABEL_118;
    }
  }

  v46 = v12 + a4;
  if (__OFADD__(v12, a4))
  {
    goto LABEL_152;
  }

  if (v46 >= v45)
  {
    v46 = v8[1];
  }

  if (v46 < v12)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v13 == v46)
  {
    goto LABEL_63;
  }

  v118 = v11;
  v120 = v7;
  v130 = *v8;
  v4 = *v8 + 24 * v13 - 24;
  v115 = v12;
  v47 = v12 - v13;
  v122 = v46;
LABEL_49:
  v125 = v4;
  v127 = v13;
  v48 = v130 + 24 * v13;
  v50 = *(v48 + 8);
  v49 = *(v48 + 16);
  v124 = v47;
  while (1)
  {
    v6 = *(v4 + 8);
    v51 = *(v4 + 16);

    v52 = sub_20C137F94();
    if (v52 == sub_20C137F94())
    {
      if (v50 == v6 && v49 == v51)
      {

LABEL_48:
        v13 = v127 + 1;
        v4 = v125 + 24;
        v47 = v124 - 1;
        if (v127 + 1 == v122)
        {
          v13 = v122;
          v11 = v118;
          v7 = v120;
          v8 = a3;
          v12 = v115;
          goto LABEL_63;
        }

        goto LABEL_49;
      }

      v54 = sub_20C13DFF4();
    }

    else
    {
      v54 = sub_20C137F34();
    }

    v55 = v54;

    if ((v55 & 1) == 0)
    {
      goto LABEL_48;
    }

    if (!v130)
    {
      break;
    }

    v56 = *(v4 + 24);
    v50 = *(v4 + 32);
    v49 = *(v4 + 40);
    *(v4 + 24) = *v4;
    *(v4 + 40) = *(v4 + 16);
    *v4 = v56;
    *(v4 + 8) = v50;
    *(v4 + 16) = v49;
    v4 -= 24;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}

void sub_20BEEDE54(unint64_t a1, char *a2, char *a3, char *a4)
{
  v70 = sub_20C1365F4();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = &a2[-a1] / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = &a4[v21];
    if (v21 < 1)
    {
      v43 = &a4[v21];
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = &a4[v21];
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = &a2[v41];
          v68 = &a2[v41];
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_20C1365E4();
            v51 = v50;
            if (v49 == sub_20C1365E4() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_20C13DFF4();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = &a4[v20];
    v71 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_20C1365E4();
        v31 = v30;
        if (v29 == sub_20C1365E4() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_20C13DFF4();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = &v65[v25];
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 = &v65[a4];
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_20B6A07E4(&v73, &v72, &v71);
}

uint64_t sub_20BEEE4F0(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = (a2 - __src) / 24;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 24;
  if (v7 >= v9)
  {
    v13 = a4;
    if (a4 != a2 || &a2[24 * v9] <= a4)
    {
      v26 = a2;
      memmove(a4, a2, 24 * v9);
      a2 = v26;
    }

    v12 = &v13[24 * v9];
    if (v8 < 24 || a2 <= v5)
    {
      v25 = a2;
      goto LABEL_51;
    }

    v46 = v13;
    v43 = v5;
    while (2)
    {
      v27 = 0;
      v28 = v12;
      v44 = a2 - 24;
      v50 = v4;
      __srcb = a2;
      v45 = v12;
      while (1)
      {
        v29 = &v28[v27];
        v30 = &v28[v27 - 24];
        v31 = *&v28[v27 - 8];
        v48 = *&v28[v27 - 16];
        v32 = *(a2 - 2);
        v33 = *(a2 - 1);

        v34 = sub_20C137F94();
        if (v34 != sub_20C137F94())
        {
          break;
        }

        if (v48 != v32 || v31 != v33)
        {
          v36 = sub_20C13DFF4();
          goto LABEL_39;
        }

        v28 = v45;
LABEL_42:
        a2 = __srcb;
        if (&v50[v27] != v29)
        {
          v38 = &v50[v27 - 24];
          v39 = *v30;
          *(v38 + 16) = *(v30 + 16);
          *v38 = v39;
        }

        v27 -= 24;
        v12 = &v28[v27];
        if (&v28[v27] <= v46)
        {
          v25 = __srcb;
          v13 = v46;
          goto LABEL_51;
        }
      }

      v36 = sub_20C137F34();
LABEL_39:
      v37 = v36;

      v28 = v45;
      if (v37)
      {
        v4 = &v50[v27 - 24];
        v25 = v44;
        if (&v50[v27] != __srcb)
        {
          v40 = *v44;
          *&v50[v27 - 8] = *(v44 + 2);
          *v4 = v40;
        }

        v12 = &v45[v27];
        if (&v45[v27] <= v46 || (a2 = v44, v44 <= v43))
        {
          v12 = &v45[v27];
          v13 = v46;
          goto LABEL_51;
        }

        continue;
      }

      goto LABEL_42;
    }
  }

  if (a4 != __src || &__src[24 * v7] <= a4)
  {
    v10 = a2;
    v11 = a4;
    memmove(a4, __src, 24 * v7);
    a2 = v10;
    a4 = v11;
  }

  v12 = &a4[24 * v7];
  v13 = a4;
  if (v6 >= 24 && a2 < v4)
  {
    v47 = v12;
    v49 = v4;
    do
    {
      v15 = *(a2 + 1);
      v14 = *(a2 + 2);
      __srca = a2;
      v16 = *(v13 + 1);
      v17 = *(v13 + 2);

      v18 = sub_20C137F94();
      if (v18 == sub_20C137F94())
      {
        v19 = v15 == v16 && v14 == v17;
        if (v19)
        {

LABEL_19:
          v22 = v13;
          v19 = v5 == v13;
          v13 += 24;
          v23 = v49;
          a2 = __srca;
          if (v19)
          {
            goto LABEL_21;
          }

LABEL_20:
          v24 = *v22;
          *(v5 + 2) = *(v22 + 2);
          *v5 = v24;
          goto LABEL_21;
        }

        v20 = sub_20C13DFF4();
      }

      else
      {
        v20 = sub_20C137F34();
      }

      v21 = v20;

      if ((v21 & 1) == 0)
      {
        goto LABEL_19;
      }

      v22 = __srca;
      a2 = __srca + 24;
      v23 = v49;
      if (v5 != __srca)
      {
        goto LABEL_20;
      }

LABEL_21:
      v5 += 24;
      v12 = v47;
    }

    while (v13 < v47 && a2 < v23);
  }

  v25 = v5;
LABEL_51:
  v41 = (v12 - v13) / 24;
  if (v25 != v13 || v25 >= &v13[24 * v41])
  {
    memmove(v25, v13, 24 * v41);
  }

  return 1;
}

void *sub_20BEEE8EC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_20BEE1B04(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_20BEEE97C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_20C133954();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = &v25 - v11;
  v14 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_metadataItems) + 16);
  v15 = __OFSUB__(a1, v14);
  v16 = a1 - v14;
  if (v15)
  {
    __break(1u);
  }

  else if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_relatedPlans);
    if (v16 < *(v17 + 16))
    {
      v18 = *(v7 + 80);
      v19 = v17 + ((v18 + 32) & ~v18) + *(v7 + 72) * v16;
      v20 = v5;
      v26 = v5;
      v21 = *(v7 + 16);
      v21(&v25 - v11, v19, v6, v12);
      v22 = sub_20C13CDF4();
      (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
      v23 = swift_allocObject();
      swift_weakInit();
      (v21)(v9, v13, v6);
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = v23;
      (*(v7 + 32))(v24 + ((v18 + 40) & ~v18), v9, v6);
      sub_20B614F94(0, 0, v26, &unk_20C182BF8, v24);

      (*(v7 + 8))(v13, v6);
    }
  }
}

uint64_t sub_20BEEEC24(uint64_t a1)
{
  v4 = *(sub_20C133954() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52A9D4;

  return sub_20BEEB9BC(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_20BEEED1C()
{
  result = qword_27C770248;
  if (!qword_27C770248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C770240, &unk_20C182C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770248);
  }

  return result;
}

uint64_t sub_20BEEED80()
{
  v1 = v0;
  v2 = sub_20C133154();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_row;
  sub_20B5D8060(v18);
  v7 = v18[9];
  *(v6 + 128) = v18[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v19;
  v8 = v18[5];
  *(v6 + 64) = v18[4];
  *(v6 + 80) = v8;
  v9 = v18[7];
  *(v6 + 96) = v18[6];
  *(v6 + 112) = v9;
  v10 = v18[1];
  *v6 = v18[0];
  *(v6 + 16) = v10;
  v11 = v18[3];
  *(v6 + 32) = v18[2];
  *(v6 + 48) = v11;
  v12 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_metadataItems) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_relatedPlans) = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_dateFormatter;
  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_20C133014();
  v15 = sub_20C133094();
  [v14 setCalendar_];

  (*(v3 + 8))(v5, v2);
  [v14 setDateStyle_];
  [v14 setTimeStyle_];
  *(v1 + v13) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0, &unk_20C151240);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v17, v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_mediaTagStringBuilder);
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanTemplateDetailShelf_workoutPlanStringBuilder) = *&v17[0];
  return v1;
}

void *sub_20BEEF054()
{
  v0 = sub_20C133154();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v34 - v5;
  sub_20C133014();
  v7 = sub_20C1330B4();
  v8 = *(v1 + 8);
  v34[1] = v1 + 8;
  v35 = v0;
  v34[0] = v8;
  v8(v6, v0);
  v9 = *(v7 + 16);

  v10 = sub_20B6B4E70(MEMORY[0x277D84F90]);
  if (!v9)
  {
    return v10;
  }

  v11 = 0;
  while (1)
  {
    v13 = MEMORY[0x20F2EF6F0](v11);
    if (v13 == 7)
    {
      goto LABEL_4;
    }

    v14 = v13;
    sub_20C133014();
    v15 = sub_20C1330C4();
    (v34[0])(v3, v35);
    v16 = sub_20C137F44();
    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *(v15 + 16))
    {
      goto LABEL_20;
    }

    v17 = v15 + 16 * v16;
    v19 = *(v17 + 32);
    v18 = *(v17 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v10;
    v21 = sub_20B65B6B0(v14);
    v23 = v10[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_21;
    }

    v27 = v22;
    if (v10[3] < v26)
    {
      sub_20BA0D09C(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_20B65B6B0(v14);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      v10 = v36;
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_13;
    }

    v32 = v21;
    sub_20BA11B98();
    v21 = v32;
    v10 = v36;
    if (v27)
    {
LABEL_3:
      v12 = (v10[7] + 16 * v21);
      *v12 = v19;
      v12[1] = v18;

      goto LABEL_4;
    }

LABEL_14:
    v10[(v21 >> 6) + 8] |= 1 << v21;
    *(v10[6] + v21) = v14;
    v29 = (v10[7] + 16 * v21);
    *v29 = v19;
    v29[1] = v18;
    v30 = v10[2];
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    v10[2] = v31;
LABEL_4:
    if (v9 == ++v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

uint64_t sub_20BEEF31C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BEEF384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PlanCompletionPresentationTracker(uint64_t a1)
{
  result = qword_27C770270;
  if (!qword_27C770270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEEF440(uint64_t a1)
{
  sub_20BAC6D94(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_20BEEF4AC()
{
  v1 = v0;
  v2 = sub_20C133154();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_20C132E94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  sub_20BAC6DEC(v1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B918000(v8);
    v16 = 1;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    sub_20C133124();
    sub_20C132E84();
    v17 = sub_20C133114();
    v18 = *(v10 + 8);
    v18(v12, v9);
    (*(v3 + 8))(v5, v2);
    v18(v15, v9);
    v16 = v17 ^ 1;
  }

  return v16 & 1;
}

char *sub_20BEEF71C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setNumberOfLines_];
  *&v4[v11] = v12;
  v13 = &v4[OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_layout];
  *v13 = xmmword_20C182CA0;
  *(v13 + 1) = xmmword_20C182CB0;
  *(v13 + 4) = 0x4034000000000000;
  v54.receiver = v4;
  v54.super_class = type metadata accessor for AccountSettingRowCell(0);
  v14 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v16 = v14;
  v17 = [v15 init];
  v18 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.21 alpha:1.0];
  v52 = v17;
  [v17 setBackgroundColor_];

  v19 = v16;
  [v19 setSelectedBackgroundView_];
  v20 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.11 alpha:1.0];
  [v19 setBackgroundColor_];

  v21 = [v19 contentView];
  v22 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_titleLabel;
  [v21 addSubview_];

  v51 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C151850;
  v24 = [v19 contentView];
  v25 = [v24 heightAnchor];

  v26 = [v25 constraintGreaterThanOrEqualToConstant_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v27) = v53;
  [v26 setPriority_];
  *(v23 + 32) = v26;
  v28 = [*&v19[v22] leadingAnchor];
  v29 = [v19 contentView];
  v30 = [v29 leadingAnchor];

  v31 = [v28 constraintEqualToAnchor:v30 constant:20.0];
  *(v23 + 40) = v31;
  v32 = [*&v19[v22] trailingAnchor];
  v33 = [v19 contentView];
  v34 = [v33 trailingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34 constant:-20.0];
  *(v23 + 48) = v35;
  v36 = [*&v19[v22] topAnchor];
  v37 = [v19 contentView];
  v38 = [v37 topAnchor];

  v39 = [v36 constraintGreaterThanOrEqualToAnchor:v38 constant:9.0];
  *(v23 + 56) = v39;
  v40 = [*&v19[v22] bottomAnchor];
  v41 = [v19 contentView];
  v42 = [v41 bottomAnchor];

  v43 = [v40 constraintLessThanOrEqualToAnchor:v42 constant:-9.0];
  *(v23 + 64) = v43;
  v44 = [*&v19[v22] centerYAnchor];
  v45 = [v19 contentView];

  v46 = [v45 centerYAnchor];
  v47 = [v44 constraintEqualToAnchor_];

  sub_20C13BBA4();
  LODWORD(v48) = v53;
  [v47 setPriority_];
  *(v23 + 72) = v47;
  sub_20B5E29D0();
  v49 = sub_20C13CC54();

  [v51 activateConstraints_];

  return v19;
}

id sub_20BEEFF44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountSettingRowCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountSettingRowCell(uint64_t a1)
{
  result = qword_2811028D0;
  if (!qword_2811028D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEF003C(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BEF0100(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BEF014C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BEF01A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BEF0208(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v36 = *(v3 - 1);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20, &unk_20C15DB90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_20C13BC44();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13BBC4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 1)
  {
    v35 = v10;
    v36 = v1;
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_titleLabel);
    v19 = sub_20C13C914();
    v37 = v18;
    [v18 setText_];

    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28, &unk_20C15AA40);
      sub_20C13BC74();
      *(swift_allocObject() + 16) = xmmword_20C14F980;
      (*(v14 + 104))(v16, *MEMORY[0x277D74A98], v13);
      v20 = sub_20C13BBF4();
      (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      sub_20C13BC34();
      sub_20C13BC04();
      (*(v35 + 8))(v12, v9);
      (*(v14 + 8))(v16, v13);
      sub_20C13D464();
      v21 = [objc_opt_self() whiteColor];
    }

    else
    {
      sub_20C13D464();
      v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    v33 = v21;
    [v37 setTextColor_];
  }

  else
  {
    sub_20C13B534();

    v22 = v1;
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = a1;
      v39 = v27;
      *v25 = 138543618;
      *(v25 + 4) = v22;
      *v26 = v22;
      *(v25 + 12) = 2082;
      v28 = sub_20B5F66D0();
      v29 = v22;
      v30 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v28);
      v32 = sub_20B51E694(v30, v31, &v39);

      *(v25 + 14) = v32;
      _os_log_impl(&dword_20B517000, v23, v24, "Attempted to configure %{public}@ with item: %{public}s", v25, 0x16u);
      sub_20B520158(v26, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    v36[1](v5, v37);
  }
}

void sub_20BEF0794()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setNumberOfLines_];
  *(v0 + v3) = v4;
  v5 = v0 + OBJC_IVAR____TtC9SeymourUI21AccountSettingRowCell_layout;
  *v5 = xmmword_20C182CA0;
  *(v5 + 16) = xmmword_20C182CB0;
  *(v5 + 32) = 0x4034000000000000;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BEF08CC(uint64_t a1, double a2)
{
  v116 = a1;
  v106 = sub_20C13BB84();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C132EE4();
  MEMORY[0x28223BE20](v6 - 8);
  v115 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_20C1321F4();
  v107 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v114 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870, &unk_20C1547A0);
  v9 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v104 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = &v102 - v12;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  v13 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = &v102 - v14;
  v15 = *(v2 + 32);
  v16 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_arrangedBuilders;
  v130 = v2;
  v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_arrangedBuilders);
  v18 = *(v17 + 16);
  v19 = MEMORY[0x277D84F90];
  v122 = v9;
  if (!v18)
  {
LABEL_34:
    *(v130 + v16) = v19;

    v79 = sub_20C1323A4();
    v81 = v80;
    sub_20C13B554();
    v82 = sub_20C13BB74();
    v83 = sub_20C13D1F4();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *&v152 = v85;
      *v84 = 136315138;
      *v150 = sub_20B81964C(v79 & 0xFFFFFFFFFFLL, v81 & 0xFFFFFFFFFFLL);
      *&v150[8] = v86;
      v150[12] = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7702A0, &qword_20C182EF8);
      v88 = sub_20C13D8F4();
      v90 = sub_20B51E694(v88, v89, &v152);

      *(v84 + 4) = v90;
      _os_log_impl(&dword_20B517000, v82, v83, "Setting container size to %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v85);
      MEMORY[0x20F2F6A40](v85, -1, -1);
      MEMORY[0x20F2F6A40](v84, -1, -1);
    }

    (*(v105 + 8))(v5, v106);
    v91 = v122;
    v92 = v130 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
    swift_beginAccess();
    if (a2 <= 0.0)
    {
      v96 = 0;
      v95 = v79 & 0xFFFFFFFFFFLL;
    }

    else
    {
      LODWORD(v152) = v79;
      BYTE4(v152) = BYTE4(v79);
      DWORD2(v152) = v81;
      BYTE12(v152) = BYTE4(v81);
      v147 = 0xFF00000000;
      v149 = 0;
      v148 = 0;
      (*(v107 + 16))(v114, v116, v113);
      sub_20C132ED4();
      sub_20B7E259C();
      v93 = v104;
      sub_20C132474();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AD50, &qword_20C182F00);
      v94 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_20C14F980;
      (*(v91 + 32))(v95 + v94, v93, v117);
      v81 = 0;
      v96 = 1;
    }

    v97 = v92 + *(type metadata accessor for ContainerNodeBuilder(0) + 40);
    v98 = *v97;
    *v97 = v95;
    v99 = *(v97 + 13);
    v100 = *(v97 + 8);
    *(v97 + 13) = v96;
    v101 = v100 | (*(v97 + 12) << 32);
    *(v97 + 8) = v81;
    *(v97 + 12) = BYTE4(v81);
    sub_20B81DC54(v98, v101, v99);
    swift_endAccess();
    return;
  }

  v103 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_arrangedBuilders;
  v147 = MEMORY[0x277D84F90];

  sub_20BB5D9CC(0, v18, 0);
  v20 = 0;
  v21 = 0;
  v129 = 0;
  v131 = 0;
  v128 = *(v17 + 16);
  v19 = v147;
  v111 = v9 + 16;
  v124 = *(v130 + 36);
  v110 = v9 + 8;
  v109 = (v107 + 16);
  v123 = (v13 + 8);
  v121 = xmmword_20C14F980;
  v108 = xmmword_20C15C390;
  v22 = 0.0;
  v126 = v17;
  v125 = v18;
  v127 = v5;
  while (v128 != v21)
  {
    if (v21 >= *(v17 + 16))
    {
      goto LABEL_41;
    }

    v139 = v21;
    v141 = v19;
    v23 = v17 + v20;
    v24 = *(v17 + v20 + 32);
    v9 = *(v17 + v20 + 40);
    v25 = *(v17 + v20 + 48);
    v26 = *(v17 + v20 + 56);
    v27 = *(v17 + v20 + 64) | (*(v17 + v20 + 68) << 32);
    v28 = *(v17 + v20 + 69);
    v145 = *(v23 + 72);
    v146 = v25;
    v34 = *(v23 + 80) | (*(v23 + 84) << 32);
    v29 = *(v23 + 85);
    ObjectType = swift_getObjectType();
    v142 = *(v9 + 40);
    swift_unknownObjectRetain_n();
    v138 = v26;
    v137 = v27;
    v136 = v28;
    v31 = v28;
    v32 = v145;
    sub_20BEF3C88(v146, v26, v27, v31);
    v135 = v34;
    v134 = v29;
    v33 = sub_20B81DC3C(v32, v34, v29);
    LODWORD(v34) = v142(ObjectType, v9, v33);
    v35 = 0.0;
    v140 = v20;
    if ((v34 & 1) == 0)
    {
      v36 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        goto LABEL_42;
      }

      ++v129;
      if (v36 <= 1)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = 6.5;
      }
    }

    (*(v9 + 88))(ObjectType, v9);
    v37 = sub_20C131FB4();
    v39 = v37;
    v40 = v38;
    v133 = v24;
    v132 = v9;
    if (!BYTE5(v38))
    {
      v45 = BYTE4(v37);
      v47 = BYTE4(v38);
      v49 = 0.0;
      if (v34)
      {
        goto LABEL_21;
      }

LABEL_18:
      if (v47)
      {
        v49 = *(v130 + 24);
      }

      else
      {
        v49 = *&v40;
      }

      goto LABEL_21;
    }

    *v150 = v37;
    sub_20B81DC3C(v37, v38, BYTE5(v38));
    v9 = v131;
    sub_20BEF2548(v150);
    if (v9)
    {
      goto LABEL_43;
    }

    v131 = 0;
    v41 = *(*v150 + 16);
    if (v41)
    {
      LODWORD(v142) = v34;
      v34 = v122;
      v42 = v112;
      v43 = v117;
      (*(v122 + 16))(v112, *v150 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v122 + 72) * (v41 - 1), v117);

      sub_20C1324A4();
      v44 = *v150;
      v45 = v150[4];
      v46 = *&v150[8];
      v47 = v150[12];
      v48 = *(v34 + 8);
      LOBYTE(v34) = v142;
      v48(v42, v43);
      sub_20B81DC54(v39, v40, BYTE5(v40));
      LODWORD(v39) = v44;
      LODWORD(v40) = v46;
    }

    else
    {

      sub_20B81DC54(v39, v40, BYTE5(v40));
      v50 = sub_20C1323A4();
      v45 = BYTE4(v50);
      LODWORD(v39) = v50;
      LODWORD(v40) = v51;
      v47 = v52;
    }

    v32 = v145;
    v49 = 0.0;
    if ((v34 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v53 = sub_20C1323A4();
    v55 = v54;
    if ((v34 & 1) == 0)
    {
      v56 = v45 ? *(v130 + 16) : *&v39;
      v57 = v56;
      if (v22 <= v57)
      {
        v22 = v57;
      }
    }

    v58 = v15 + v35;
    v61 = sub_20C1323F4();
    v62 = v59;
    *v150 = v59;
    *&v150[8] = v60;
    v63 = *&v150[4];
    if (a2 == 0.0)
    {
      v64 = 0;
      v65 = v59 | (*&v150[4] << 32);
      v66 = v60 & 0xFFFFFFFF00000000 | *&v150[8];
      v67 = v53 & 0xFFFFFFFFFFLL;
    }

    else
    {
      v68 = HIDWORD(v60);
      v142 = HIDWORD(v55);
      v120 = HIDWORD(v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766478, &unk_20C15C4B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766468, &unk_20C15C4A0);
      v69 = swift_allocObject();
      *(v69 + 16) = v121;
      v119 = v53;
      v70 = v69;
      *v150 = v61;
      v150[8] = v62;
      *&v150[12] = v63;
      v151 = v68;
      v152 = v108;
      v154 = 0;
      v153 = 0;
      v118 = *v109;
      v71 = v114;
      v72 = v116;
      v73 = v113;
      v118(v114, v116, v113);
      sub_20C132ED4();
      sub_20B7E2548();
      sub_20C132474();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AD50, &qword_20C182F00);
      v67 = swift_allocObject();
      *(v67 + 16) = v121;
      *v150 = v119;
      v150[4] = v120;
      *&v150[8] = v55;
      v150[12] = v142;
      *&v152 = 0xFF00000000;
      BYTE12(v152) = 0;
      DWORD2(v152) = 0;
      v74 = v73;
      v32 = v145;
      v118(v71, v72, v74);
      sub_20C132ED4();
      sub_20B7E259C();
      sub_20C132474();
      v55 = 0;
      v65 = 0;
      v66 = 0;
      v64 = 1;
      v61 = v70;
    }

    (*v123)(v143, v144);
    v75 = v133;
    swift_unknownObjectRelease();
    sub_20B81DC6C(v146, v138, v137, v136);
    sub_20B81DC54(v32, v135, v134);
    v19 = v141;
    v147 = v141;
    v9 = *(v141 + 16);
    v76 = *(v141 + 24);
    if (v9 >= v76 >> 1)
    {
      sub_20BB5D9CC((v76 > 1), v9 + 1, 1);
      v19 = v147;
    }

    v15 = v58 + v49;
    v21 = v139 + 1;
    *(v19 + 16) = v9 + 1;
    v77 = v19 + 56 * v9;
    v78 = v132;
    *(v77 + 32) = v75;
    *(v77 + 40) = v78;
    *(v77 + 48) = v61;
    *(v77 + 56) = v65;
    *(v77 + 68) = BYTE4(v66);
    *(v77 + 64) = v66;
    *(v77 + 69) = v64;
    *(v77 + 72) = v67;
    *(v77 + 84) = BYTE4(v55);
    *(v77 + 80) = v55;
    *(v77 + 85) = v64;
    v20 = v140 + 56;
    v5 = v127;
    v17 = v126;
    if (v125 == v21)
    {

      v16 = v103;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:

  __break(1u);
}