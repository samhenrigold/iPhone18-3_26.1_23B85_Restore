uint64_t sub_22C48D8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
      v3 = 0;
      return MEMORY[0x2318B8B10](v3, a2);
    case 1:
      v3 = 1;
      return MEMORY[0x2318B8B10](v3, a2);
    case 2:
      v3 = 3;
      return MEMORY[0x2318B8B10](v3, a2);
  }

  MEMORY[0x2318B8B10](2);

  return sub_22C909FFC();
}

uint64_t sub_22C48D988(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (a2 != 2)
      {
        MEMORY[0x2318B8B10](2);
        sub_22C909FFC();
        return sub_22C90B66C();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x2318B8B10](v3);
  return sub_22C90B66C();
}

uint64_t sub_22C48DA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, void, void, void))
{
  sub_22C90B62C();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_22C90B66C();
}

uint64_t sub_22C48DB38(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_22C90B62C();
  sub_22C48D778(v5, v2, v3);
  return sub_22C90B66C();
}

uint64_t sub_22C48DC20(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_22C90B62C();
  sub_22C48D8F8(v5, v2, v3);
  return sub_22C90B66C();
}

uint64_t sub_22C48DCCC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22C48DCE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C48DD00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22C48DD30(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C48DD4C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_22C48DD84(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C48DD9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C48DDF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_22C48DE48(void *result, int a2)
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

unint64_t sub_22C48DE74()
{
  result = qword_27D9BCE80;
  if (!qword_27D9BCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCE80);
  }

  return result;
}

unint64_t sub_22C48DEC8()
{
  result = qword_27D9BCE88;
  if (!qword_27D9BCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCE88);
  }

  return result;
}

uint64_t sub_22C48DF40@<X0>(uint64_t *TupleTypeMetadata@<X0>, uint64_t *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12 = TupleTypeMetadata;
  v99 = a3;
  v98 = a4;
  v97 = a8;
  v96 = 8 * a5;
  if (a5 == 1)
  {
    v13 = *(a6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    for (i = 0; a5 != i; ++i)
    {
      *(&v93[i] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)) = *((a6 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v13 = TupleTypeMetadata;
  }

  v105 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v107 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v93;
  v18 = MEMORY[0x28223BE20](v16);
  v106 = v93 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v110 = v93 - v21;
  v101 = v93;
  v22 = MEMORY[0x28223BE20](v20);
  v108 = v93 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v112 = v93 - v25;
  v93[4] = v93;
  v26 = MEMORY[0x28223BE20](v24);
  v111 = v93 - v27;
  v93[3] = v93;
  v28 = MEMORY[0x28223BE20](v26);
  v114 = v93 - v29;
  v93[2] = v93;
  v30 = MEMORY[0x28223BE20](v28);
  v113 = v93 - v31;
  v93[1] = v93;
  v32 = MEMORY[0x28223BE20](v30);
  v93[0] = v93;
  MEMORY[0x28223BE20](v32);
  v118 = v93 - v34;
  v119 = (a6 & 0xFFFFFFFFFFFFFFFELL);
  v35 = v33;
  v100 = v93;
  if (a5)
  {
    v36 = a7;
    v37 = v33;
    v38 = (v13 + 32);
    v39 = v119;
    v40 = a5;
    do
    {
      if (a5 == 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = *v38;
      }

      v43 = *v39++;
      v42 = v43;
      v44 = *v12++;
      (*(*(v42 - 8) + 16))(&v118[v41], v44);
      v38 += 4;
      --v40;
    }

    while (v40);
    v45 = (v13 + 32);
    v46 = v119;
    v47 = a5;
    v35 = v37;
    a7 = v36;
    do
    {
      if (a5 == 1)
      {
        v48 = 0;
      }

      else
      {
        v48 = *v45;
      }

      v50 = *v46++;
      v49 = v50;
      v51 = *a2++;
      (*(*(v49 - 8) + 16))(&v35[v48], v51);
      v45 += 4;
      --v47;
    }

    while (v47);
  }

  v102 = v93;
  v52 = v105 + 16;
  v53 = *(v105 + 16);
  v53(v113, v118, v13);
  v104 = v35;
  v95 = v52;
  v94 = v53;
  v54 = (v53)(v114, v35, v13);
  v55 = 0;
  v109 = a7 & 0xFFFFFFFFFFFFFFFELL;
  v56 = 32;
  v115 = v13;
  while (a5 != v55)
  {
    v117 = v93;
    v57 = v119[v55];
    v58 = *(v57 - 8);
    v59 = MEMORY[0x28223BE20](v54);
    v61 = v93 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    v116 = v93;
    MEMORY[0x28223BE20](v59);
    v63 = v93 - v62;
    if (a5 == 1)
    {
      v64 = 0;
    }

    else
    {
      v64 = *(v13 + v56);
    }

    v65 = *(v58 + 16);
    v65(v61, &v113[v64], v57);
    if (a5 == 1)
    {
      v66 = 0;
    }

    else
    {
      v66 = *(v115 + v56);
    }

    v65(v63, &v114[v66], v57);
    v67 = sub_22C90A06C();
    if (v67)
    {
      v110 = v93;
      MEMORY[0x28223BE20](v67);
      v79 = v93 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
      v13 = v115;
      v94(v112, v118, v115);
      v80 = 0;
      v81 = 32;
      do
      {
        if (a5 == 1)
        {
          v82 = 0;
          v83 = v111;
        }

        else
        {
          v82 = *(v13 + v81);
          v83 = &v111[v82];
        }

        (*(*(v119[v80] - 8) + 16))(v83, &v112[v82]);
        *&v79[8 * v80++] = v83;
        v81 += 16;
      }

      while (a5 != v80);
      v99(v79);
      v84 = *(v58 + 8);
      v84(v63, v57);
      v84(v61, v57);
      v77 = *(v105 + 8);
      v77(v111, v13);
      v77(v112, v13);
      goto LABEL_48;
    }

    v68 = sub_22C90A05C();
    v13 = v115;
    if (v68)
    {
      v112 = v93;
      MEMORY[0x28223BE20](v68);
      v86 = v93 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
      v94(v110, v104, v13);
      v87 = 0;
      v88 = 32;
      do
      {
        if (a5 == 1)
        {
          v89 = 0;
          v90 = v108;
        }

        else
        {
          v89 = *(v13 + v88);
          v90 = &v108[v89];
        }

        (*(*(v119[v87] - 8) + 16))(v90, &v110[v89]);
        *&v86[8 * v87++] = v90;
        v88 += 16;
      }

      while (a5 != v87);
      v99(v86);
      v91 = *(v58 + 8);
      v91(v63, v57);
      v91(v61, v57);
      v77 = *(v105 + 8);
      v77(v108, v13);
      v77(v110, v13);
      goto LABEL_48;
    }

    v69 = *(v58 + 8);
    v69(v63, v57);
    v54 = (v69)(v61, v57);
    ++v55;
    v56 += 16;
  }

  v117 = v93;
  MEMORY[0x28223BE20](v54);
  v116 = (v93 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94(v107, v118, v13);
  if (a5)
  {
    v71 = (v13 + 32);
    v72 = v116;
    v73 = a5;
    do
    {
      if (a5 == 1)
      {
        v74 = 0;
        v75 = v106;
      }

      else
      {
        v74 = *v71;
        v75 = &v106[v74];
      }

      v76 = v119;
      (*(*(*v119 - 8) + 16))(v75, &v107[v74]);
      *v72++ = v75;
      v71 += 4;
      v119 = v76 + 1;
      --v73;
    }

    while (v73);
  }

  v99(v116);
  v77 = *(v105 + 8);
  v77(v106, v13);
  v77(v107, v13);
LABEL_48:
  v77(v114, v13);
  v77(v113, v13);
  v77(v104, v13);
  return (v77)(v118, v13);
}

uint64_t sub_22C48E9D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_beginAccess();

  sub_22C48FF20();
  v2 = sub_22C48EA84();

  return v2 & 1;
}

uint64_t sub_22C48EA84()
{
  sub_22C373394();
  sub_22C48C930(v0, v1, v2, v3);
  if (v4)
  {
    return 0;
  }

  v6 = sub_22C36A998();
  sub_22C48EBDC(v6, v7, v8, v9, v10, v11);
  v12 = sub_22C369D2C();
  sub_22C48C930(v12, v13, v14, v15);
  v17 = v16;

  return v17 & 1;
}

uint64_t sub_22C48EAF4(uint64_t a1, uint64_t a2)
{

  sub_22C48FF20();
  v2 = sub_22C48EB6C();

  return v2 & 1;
}

uint64_t sub_22C48EB6C()
{
  sub_22C373394();
  if (sub_22C48CE88(v0, v1, v2, v3))
  {
    return 0;
  }

  v5 = sub_22C36A998();
  sub_22C48F890(v5, v6, v7, v8, v9, v10);
  v11 = sub_22C369D2C();
  v15 = sub_22C48CE88(v11, v12, v13, v14);

  return v15 & 1;
}

unint64_t sub_22C48EBDC(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v122 = a6;
  v116 = a5;
  v9 = a1;
  v120 = *(a3 - 1);
  v10 = MEMORY[0x28223BE20](a1);
  v118 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v119 = &v111 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v115 = &v111 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v117 = &v111 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v111 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v111 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v111 - v28;
  v121 = a4;
  type metadata accessor for PromptTree(255, a3, a4, v30);
  swift_getTupleTypeMetadata2();
  v32 = v9 >> 61;
  v33 = a2 >> 61;
  if (!(v9 >> 61))
  {
    v34 = *(v9 + 16);
    v35 = *(v9 + 24);
    if (!v33)
    {
      v37 = *(a2 + 16);
      v36 = *(a2 + 24);
      v38 = v37 == v34 && v36 == v35;
      if (v38 || (sub_22C90B4FC() & 1) == 0)
      {
        v36 = v35;
        v37 = v34;
      }

      v39 = swift_allocObject();
      *(v39 + 16) = v37;
      *(v39 + 24) = v36;
      return v39;
    }

LABEL_13:

    v39 = swift_allocObject();
    *(v39 + 16) = v34;
    *(v39 + 24) = v35;
    return v39;
  }

  if (v33 == 1)
  {
    if (v32 == 1)
    {
      v40 = swift_projectBox();
      v41 = swift_projectBox();
      v42 = *(v21 + 16);
      v42(v27, v41, AssociatedTypeWitness);
      v42(v24, v40, AssociatedTypeWitness);
      v43 = swift_allocBox();
      sub_22C90B52C();
      v44 = *(v21 + 8);
      v44(v24, AssociatedTypeWitness);
      v44(v27, AssociatedTypeWitness);
      return v43 | 0x2000000000000000;
    }

LABEL_18:
    v45 = swift_projectBox();
    (*(v21 + 16))(v29, v45, AssociatedTypeWitness);
    v43 = swift_allocBox();
    (*(v21 + 32))(v46, v29, AssociatedTypeWitness);
    return v43 | 0x2000000000000000;
  }

  if (!v33)
  {
    v34 = *(a2 + 16);
    v35 = *(a2 + 24);
    goto LABEL_13;
  }

  if (v32 == 1)
  {
    goto LABEL_18;
  }

  if (v33 == 2)
  {
    if (v32 == 2)
    {
      v49 = v121;
      v113 = _s3BoxCMa(255, a3, v121, v31);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v51 = swift_projectBox();
      v52 = swift_projectBox();
      v53 = *(TupleTypeMetadata2 + 48);
      v112 = *(v52 + v53);
      v54 = v112;
      v111 = *(v51 + v53);
      v55 = v120;
      v56 = *(v120 + 16);
      v57 = v117;
      v56(v117, v52, a3);
      v58 = v115;
      v56(v115, v51, a3);
      v59 = v119;
      v56(v119, v57, a3);
      v139 = v54;
      v141 = v59;
      v142 = &v139;
      v60 = v118;
      v56(v118, v58, a3);
      v134 = v111;
      v136 = v60;
      v137 = &v134;
      v61 = v116;
      v62 = v122;
      v63 = sub_22C48F75C(a3, v49, v116, v122);
      v114 = &v111;
      v64 = MEMORY[0x28223BE20](v63);
      *(&v111 - 6) = a3;
      *(&v111 - 5) = v49;
      *(&v111 - 4) = v61;
      *(&v111 - 3) = v62;
      *(&v111 - 2) = v64;
      *(&v111 - 1) = v65;
      swift_retain_n();
      swift_retain_n();
      v131 = a3;
      v132 = v113;
      v129 = v61;
      v123 = v61;
      v124 = v62;
      WitnessTable = swift_getWitnessTable();
      sub_22C48DF40(&v141, &v136, sub_22C48FE0C, (&v111 - 8), 2, &v131, &v129, &v143);

      v66 = *(v55 + 8);
      v66(v58, a3);
      v66(v117, a3);

      v66(v118, a3);

      v66(v119, a3);
      return v143;
    }

    goto LABEL_26;
  }

  if (v32 == 2)
  {
LABEL_26:
    v67 = v121;
    _s3BoxCMa(255, a3, v121, v31);
    v68 = swift_getTupleTypeMetadata2();
    v69 = swift_projectBox();
    v70 = *(v69 + *(v68 + 48));
    v71 = v120;
    (*(v120 + 16))(v19, v69, a3);
    _s3BoxCMa(255, a3, v67, v72);
    v73 = swift_getTupleTypeMetadata2();
    v74 = swift_allocBox();
    v76 = v75;
    v77 = *(v73 + 48);
    (*(v71 + 32))(v75, v19, a3);
    *(v76 + v77) = v70;
    v143 = v74 | 0x4000000000000000;
LABEL_40:

    return v143;
  }

  if (v33 == 3)
  {
    if (v32 == 3)
    {
      v78 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v79 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v80 = swift_allocObject();
      v81 = v121;
      _s3BoxCMa_0(0, a3, v121, v82);
      v83 = *(v79 + 16);
      v84 = *(v78 + 16);

      v85 = sub_22C48F890(v83, v84, a3, v81, v116, v122);

      *(v80 + 16) = sub_22C48C6B4(v85);
      return v80 | 0x6000000000000000;
    }

    v9 = a2;
    goto LABEL_38;
  }

  if (v32 == 3)
  {
LABEL_38:
    v88 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v89 = swift_allocObject();
    *(v89 + 16) = v88;
    v90 = v89 | 0x6000000000000000;
LABEL_39:
    v143 = v90;
    goto LABEL_40;
  }

  if (v33 == 4)
  {
    if (v32 == 4)
    {
      v86 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v87 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (v86 == v87)
      {
        v107 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v108 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v109 = swift_allocObject();
        *(v109 + 16) = v87;
        v141 = v108;
        v136 = v107;
        _s3BoxCMa(0, a3, v121, v110);
        v125 = v116;
        v126 = v122;
        swift_getWitnessTable();
        sub_22C90B52C();
        return v109 | 0x8000000000000000;
      }

      else if (v87 & 1) != 0 || ((v86 ^ 1))
      {
      }

      else
      {

        return v9;
      }

      return a2;
    }

    v9 = a2;
    goto LABEL_46;
  }

  if (v32 == 4)
  {
LABEL_46:
    v104 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v105 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = v104;
    v90 = v106 | 0x8000000000000000;
    goto LABEL_39;
  }

  if (v33 == 5 && v32 == 5)
  {
    v91 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v92 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v93 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v94 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v95 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v138 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v139 = v94;
    v140 = v95;
    v141 = &v139;
    v142 = &v138;
    v133 = v91;
    v134 = v93;
    v135 = v92;
    v136 = &v134;
    v137 = &v133;
    v96 = v121;
    v97 = v116;
    v98 = v122;
    v99 = sub_22C48FB5C(a3, v121, v116, v122);
    v100 = MEMORY[0x28223BE20](v99);
    *(&v111 - 6) = a3;
    *(&v111 - 5) = v96;
    *(&v111 - 4) = v97;
    *(&v111 - 3) = v98;
    *(&v111 - 2) = v100;
    *(&v111 - 1) = v101;

    v131 = &unk_283FB61A0;
    v132 = _s3BoxCMa(0, a3, v96, v102);
    v103 = sub_22C48FDB8();
    v128 = v98;
    v129 = v103;
    v127 = v97;
    WitnessTable = swift_getWitnessTable();
    sub_22C48DF40(&v141, &v136, sub_22C48FD78, (&v111 - 8), 2, &v131, &v129, &v143);

    return v143;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t (*sub_22C48F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  return sub_22C48FE48;
}

uint64_t sub_22C48F7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a2 + 80);
  _s3BoxCMa(255, v6, *(*a2 + 88), a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = swift_allocBox();
  v10 = v9;
  v11 = *(TupleTypeMetadata2 + 48);
  (*(*(v6 - 8) + 16))(v9, a1, v6);
  *(v10 + v11) = a2;

  return v8 | 0x4000000000000000;
}

uint64_t sub_22C48F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v10 = *(a1 + 16);
    if ((a2 & 0x8000000000000000) == 0)
    {
      v11 = *(a2 + 16);
      v43[0] = *(a1 + 16);
      v41 = v11;
      _s3BoxCMa(255, a3, a4, a4);
      sub_22C90A68C();
      swift_getWitnessTable();
      v30 = a5;
      v31 = a6;
      swift_getWitnessTable();
      sub_22C90A54C();
    }

    goto LABEL_6;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v10 = *(a2 + 16);
LABEL_6:

    result = swift_allocObject();
    *(result + 16) = v10;
    return result;
  }

  v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v16 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v18 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v41 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v17 = v41;
  v42 = v16;
  v43[0] = &v41;
  v43[1] = &v40;
  v37 = v13;
  v38 = v14;
  v36 = v15;
  v39[0] = &v37;
  v39[1] = &v36;
  v40 = v18;
  v19 = sub_22C48FC30(a3, a4, a5, a6);
  v27[1] = v20;
  v29 = v27;
  v21 = MEMORY[0x28223BE20](v19);
  v28 = v26;
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[5] = a6;
  v26[6] = v21;
  v26[7] = v22;
  sub_22C480170(v17, v16);
  sub_22C480170(v13, v14);

  v35[0] = &unk_283FB6250;
  v35[1] = _s3BoxCMa_0(0, a3, a4, v23);
  type metadata accessor for PromptTreeCollection(0, a3, a4, v24);
  v25 = sub_22C48FE8C();
  v33 = a6;
  v34[0] = v25;
  v32 = a5;
  v34[1] = swift_getWitnessTable();
  sub_22C48DF40(v43, v39, sub_22C48FE50, v28, 2, v35, v34, &v44);

  sub_22C48FEE0(v37, v38);

  sub_22C48FEE0(v41, v42);
  return v44;
}

unint64_t (*sub_22C48FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  return sub_22C48FEFC;
}

unint64_t sub_22C48FBB0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2 & 1;
  *(v6 + 32) = a3;

  return v6 | 0xA000000000000000;
}

unint64_t (*sub_22C48FC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  return sub_22C48FEF4;
}

unint64_t sub_22C48FC84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  sub_22C480170(a1, a2);

  return v6 | 0x8000000000000000;
}

uint64_t sub_22C48FD78@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 48))(**a1, *(*a1 + 8), *a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22C48FDB8()
{
  result = qword_27D9BCE90;
  if (!qword_27D9BCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCE90);
  }

  return result;
}

uint64_t sub_22C48FE0C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 48))(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_22C48FE50@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 48))(**a1, (*a1)[1], *a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22C48FE8C()
{
  result = qword_27D9BCE98[0];
  if (!qword_27D9BCE98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D9BCE98);
  }

  return result;
}

uint64_t sub_22C48FEE0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_22C48FF50(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  sub_22C36A948();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v46 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22C36A948();
  v48 = v14;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  v42 = v19;
  swift_getAssociatedTypeWitness();
  sub_22C36A948();
  v36 = v21;
  v37 = v20;
  MEMORY[0x28223BE20](v20);
  v23 = &v33 - v22;
  v24 = sub_22C90A95C();
  if (!v24)
  {
    return sub_22C90A63C();
  }

  v47 = v24;
  v51 = sub_22C90B05C();
  v38 = sub_22C90B06C();
  sub_22C90B00C();
  result = sub_22C90A93C();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v11;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_22C90A9CC();
      (*v39)(v18);
      v27(v50, 0);
      v28 = v49;
      v44(v18, v46);
      if (v28)
      {
        v31 = sub_22C377C8C();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = sub_22C377C8C();
      v30(v29);
      sub_22C90B04C();
      result = sub_22C90A98C();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C490324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369AEC();
  v6 = swift_allocObject();
  v14[5] = a1;
  v14[2] = a2;
  v14[3] = a3;
  type metadata accessor for PromptTree(255, a2, a3, v7);
  v8 = sub_22C90A68C();
  v10 = _s3BoxCMa(0, a2, a3, v9);
  WitnessTable = swift_getWitnessTable();
  *(v6 + 16) = sub_22C48FF50(sub_22C490750, v14, v8, v10, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);
  return v6;
}

uint64_t sub_22C490410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369AEC();
  v6 = swift_allocObject();
  _s3BoxCMa_0(0, a2, a3, v7);
  *(v6 + 16) = sub_22C48C6B4(a1);

  return v6 | 0x6000000000000000;
}

uint64_t sub_22C490480(uint64_t a1, uint64_t a2)
{
  sub_22C36A83C();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_22C90A49C();
  *(v2 + 24) = v3;
  return v2;
}

uint64_t sub_22C4904F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PromptTree(0, a3, a4, a4);

  return sub_22C909E9C();
}

uint64_t sub_22C490528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C36A83C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for PromptTree(255, *(a3 + 16), *(a3 + 24), v7);
  sub_22C90A68C();

  return sub_22C90A67C();
}

uint64_t sub_22C4905A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C490324(a1, a2, a3);

  v6 = sub_22C490410(v5, a2, a3);

  return v6;
}

uint64_t sub_22C490608()
{
  sub_22C36A83C();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xE000000000000000;
  return result;
}

uint64_t sub_22C490634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_22C4904F4(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_22C490674@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22C4905A8(*a1, *(a2 + 16), *(a2 + 24));
  *a3 = result;
  return result;
}

uint64_t sub_22C4906FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  _s3BoxCMa(0, a2, a3, a4);
  *a5 = sub_22C48B850(v6);
}

uint64_t sub_22C490770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22C4907C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C4916C8(a1, a2, a3);
  v5 = sub_22C490820(v4, a2);

  return v5;
}

uint64_t sub_22C490820(unint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v74 - v8;
  v74[1] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v74 - v16;
  switch(a1 >> 61)
  {
    case 1uLL:
      v57 = swift_projectBox();
      v4 = *(v12 + 16);
      (v4)(v17, v57, AssociatedTypeWitness);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      (v4)(v15, v17, AssociatedTypeWitness);
      *(inited + 32) = sub_22C90A1AC();
      *(inited + 40) = v59;
      sub_22C38B91C(0x696669746E656469, 0xEA00000000007265, inited);
      sub_22C36A9B4();
      swift_setDeallocating();
      sub_22C58FFC4();
      (*(v12 + 8))(v17, AssociatedTypeWitness);
      return v4;
    case 2uLL:
      sub_22C4916BC();
      _s3BoxCMa(v35, v36, v37, v38);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v40 = swift_projectBox();
      v41 = *(v40 + *(TupleTypeMetadata2 + 48));
      v42 = *(v4 + 16);
      v42(v9, v40, a2);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_22C90F870;
      strcpy(v77, "identifier: ");
      BYTE5(v77[1]) = 0;
      HIWORD(v77[1]) = -5120;
      v42(v7, v9, a2);

      v44 = sub_22C90A1AC();
      v46 = v45;
      MEMORY[0x2318B7850](v44);

      v47 = v77[1];
      *(v43 + 32) = v77[0];
      *(v43 + 40) = v47;
      sub_22C369D44();
      sub_22C377CA0(v41 + 16);

      sub_22C4916BC();
      sub_22C490820(v48, v49);
      sub_22C36A9B4();

      MEMORY[0x2318B7850](v4, v46);

      v50 = v76;
      *(v43 + 48) = v75;
      *(v43 + 56) = v50;
      sub_22C38B91C(0x676E69646E6962, 0xE700000000000000, v43);
      sub_22C36A9B4();

      swift_setDeallocating();
      sub_22C58FFC4();
      (*(v4 + 8))(v9, a2);
      return v4;
    case 3uLL:
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v51 = swift_initStackObject();
      *(v51 + 16) = xmmword_22C90F800;

      sub_22C4916BC();
      v55 = sub_22C491104(v52, v53, v54);
      v4 = v56;

      *(v51 + 32) = v55;
      *(v51 + 40) = v4;
      sub_22C38B91C(0x7461636E6F63, 0xE600000000000000, v51);
      sub_22C36A9B4();

      goto LABEL_13;
    case 4uLL:
      v23 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_22C90F870;
      v77[0] = 0;
      v77[1] = 0xE000000000000000;
      sub_22C90AF5C();

      sub_22C3733AC();
      v77[0] = v26;
      v77[1] = v25;
      if (v23)
      {
        v27 = 1702195828;
      }

      else
      {
        v27 = 0x65736C6166;
      }

      if (v23)
      {
        v28 = 0xE400000000000000;
      }

      else
      {
        v28 = 0xE500000000000000;
      }

      MEMORY[0x2318B7850](v27, v28);

      v29 = v77[1];
      *(v18 + 32) = v77[0];
      *(v18 + 40) = v29;
      sub_22C369D44();
      sub_22C377CA0(v24 + 16);

      sub_22C4916BC();
      v32 = sub_22C490820(v30, v31);
      v4 = v33;

      MEMORY[0x2318B7850](v32, v4);

      v34 = v76;
      *(v18 + 48) = v75;
      *(v18 + 56) = v34;
      v22 = 0x800000022C930CF0;
      v21 = 0xD000000000000010;
      goto LABEL_10;
    case 5uLL:
      v60 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v61 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v62 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v63 = swift_initStackObject();
      *(v63 + 16) = xmmword_22C90F800;
      sub_22C377CA0(v62 + 16);

      sub_22C4916BC();
      v66 = sub_22C490820(v64, v65);
      v4 = v67;

      *(v63 + 32) = v66;
      *(v63 + 40) = v4;
      sub_22C491384(v60, v61);
      v69 = v68;
      v70 = sub_22C3717A8();
      sub_22C490F28(v70, v71, v63, v72, v69);
      sub_22C36A9B4();

      swift_setDeallocating();
      goto LABEL_17;
    default:
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_22C90F800;

      v19 = sub_22C90A2AC();
      v4 = v20;

      *(v18 + 32) = v19;
      *(v18 + 40) = v4;
      v21 = 0x676E69727473;
      v22 = 0xE600000000000000;
LABEL_10:
      sub_22C38B91C(v21, v22, v18);
      sub_22C36A9B4();
LABEL_13:
      swift_setDeallocating();
LABEL_17:
      sub_22C58FFC4();
      return v4;
  }
}

uint64_t sub_22C490F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  MEMORY[0x2318B7850](a1, a2);
  MEMORY[0x2318B7850](40, 0xE100000000000000);
  if (a5)
  {

    MEMORY[0x2318B7850](44, 0xE100000000000000);
    v8 = a4;
  }

  else
  {
    v8 = 0;
    a5 = 0xE000000000000000;
  }

  MEMORY[0x2318B7850](v8, a5);

  MEMORY[0x2318B7850](10, 0xE100000000000000);
  v13 = *(a3 + 16);
  if (v13)
  {
    v29 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v13, 0, v9, v10, v11, v12);
    v14 = a3 + 40;
    do
    {

      v15 = sub_22C90A29C();
      v17 = v16;

      v23 = *(v29 + 16);
      v22 = *(v29 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22C3B5E2C(v22 > 1, v23 + 1, 1, v18, v19, v20, v21);
      }

      *(v29 + 16) = v23 + 1;
      v24 = v29 + 16 * v23;
      *(v24 + 32) = v15;
      *(v24 + 40) = v17;
      v14 += 16;
      --v13;
    }

    while (v13);
  }

  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3F035C();
  v25 = sub_22C90A04C();
  v27 = v26;

  MEMORY[0x2318B7850](v25, v27);

  MEMORY[0x2318B7850](10506, 0xE200000000000000);
  return 46;
}

uint64_t sub_22C491104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    v14 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v16 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    v18 = *(v16 + 16);

    v19 = sub_22C491104(v18, a2, a3);
    v21 = v20;

    *(inited + 32) = v19;
    *(inited + 40) = v21;
    sub_22C491594(v14, v15);
    v23 = v22;
    v24 = sub_22C3717A8();
    v13 = sub_22C490F28(v24, v25, inited, v26, v23);

    swift_setDeallocating();
    sub_22C58FFC4();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    KeyPath = swift_getKeyPath();
    _s3BoxCMa(255, a2, a3, v6);
    v7 = sub_22C90A68C();

    WitnessTable = swift_getWitnessTable();
    sub_22C48FF50(sub_22C49169C, KeyPath, v7, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    sub_22C90A04C();

    v10 = sub_22C90A29C();
    v12 = v11;

    MEMORY[0x2318B7850](v10, v12);

    MEMORY[0x2318B7850](2710794, 0xE300000000000000);
    return 0x5B2879617272612ELL;
  }

  return v13;
}

unint64_t sub_22C491384(uint64_t a1, char a2)
{
  if (a2)
  {
    result = 0x697469736E65732ELL;
    switch(a1)
    {
      case 1:
        result = 0x6E496B636F6C622ELL;
        break;
      case 2:
        result = 0xD000000000000010;
        break;
      case 3:
        return result;
      case 4:
        result = 0x6C6261746F75712ELL;
        break;
      case 5:
        result = 0x6465726F6E67692ELL;
        break;
      case 6:
        result = 0x616372657070752ELL;
        break;
      default:
        result = 0x746E65646E692ELL;
        break;
    }
  }

  else
  {
    sub_22C90AF5C();

    sub_22C3733AC();
    v6 = v4;
    v5 = sub_22C90B47C();
    MEMORY[0x2318B7850](v5);

    MEMORY[0x2318B7850](41, 0xE100000000000000);
    return v6;
  }

  return result;
}

uint64_t sub_22C491504@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_22C490820(*a1, *(a2 + a3 - 16));
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_22C491538(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_22C491594(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      return 0x646570756465642ELL;
    case 1:
      return 0x646574726F732ELL;
    case 2:
      return 0xD000000000000011;
  }

  sub_22C90AF5C();

  v3 = sub_22C90A2AC();
  MEMORY[0x2318B7850](v3);

  MEMORY[0x2318B7850](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_22C49171C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  if (v1 >> 61 == 5 && *(v2 + 24) == 1 && *(v2 + 16) == 3)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = 0x455443414445523CLL;
    *(v1 + 24) = 0xEA00000000003E44;
  }

  else
  {
  }

  return v1;
}

uint64_t sub_22C4917C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22C36E2B8();
  v11 = result;
  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {
      return a1;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2318B8460](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    swift_beginAccess();

    sub_22C494E64();
    if (v4)
    {

      return a1;
    }

    v10 = v9;

    a1 = v10;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_22C491938(char a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void, void), uint64_t a5)
{
  result = sub_22C36E2B8();
  v9 = result;
  for (i = 0; ; ++i)
  {
    v11 = a1;
    if (v9 == i)
    {
      return v11 & 1;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2318B8460](i, a2);
      v12 = result;
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v12 = *(a2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    swift_beginAccess();
    v13 = *(v12 + 16);

    a1 = sub_22C496E50(a1 & 1, a3, v13, a4, a5);

    if (v5)
    {
      return v11 & 1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22C491AA0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    a3();
    return a2;
  }

  else
  {

    return a4();
  }
}

unint64_t sub_22C491AFC()
{
  v2 = sub_22C374410();
  v3 = type metadata accessor for PromptTreeIdentifier(v2);
  v4 = sub_22C369914(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  switch(v1 >> 61)
  {
    case 2uLL:
      v11 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v12 = swift_projectBox();
      v13 = *(v12 + *(v11 + 48));
      sub_22C49C7B0(v12, v7, type metadata accessor for PromptTreeIdentifier);
      v1 = swift_allocBox();
      v15 = v14;
      sub_22C49C7B0(v7, v14, type metadata accessor for PromptTreeIdentifier);
      sub_22C36CA70(v13 + 16, v32);

      v16 = sub_22C491AFC();
      if (v0)
      {

        sub_22C36BCD4();
        sub_22C49C758(v7, v17);
        sub_22C49C758(v15, v11);
        swift_deallocBox();
      }

      else
      {
        v26 = v16;

        v27 = *(v11 + 48);

        sub_22C3733C8();
        sub_22C49C758(v7, v28);
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v29 = swift_allocObject();
        *(v29 + 16) = v26;
        *(v15 + v27) = v29;
        v1 |= 0x4000000000000000uLL;
      }

      break;
    case 3uLL:
      v18 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_22C369AEC();
      v19 = swift_allocObject();
      v20 = *(v18 + 16);

      sub_22C497468(v20);
      sub_22C49CA14();

      if (v0)
      {
        goto LABEL_10;
      }

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v30 = swift_allocObject();
      *(v30 + 16) = v1;
      *(v19 + 16) = v30;
      v1 = v19 | 0x6000000000000000;
      break;
    case 4uLL:
      v1 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *(v8 + 24);
      sub_22C36A83C();
      v10 = swift_allocObject();
      *(v10 + 16) = v1;
      sub_22C36CA70(v9 + 16, v32);

      sub_22C491AFC();
      sub_22C49CA14();

      if (v0)
      {
        goto LABEL_10;
      }

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v25 = swift_allocObject();
      *(v25 + 16) = v1;
      *(v10 + 24) = v25;
      v1 = v10 | 0x8000000000000000;
      break;
    case 5uLL:
      v1 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *(v8 + 24);
      v22 = *(v8 + 32);
      sub_22C36D2A8();
      v23 = swift_allocObject();
      *(v23 + 16) = v1;
      *(v23 + 24) = v21;
      sub_22C36CA70(v22 + 16, v32);

      sub_22C491AFC();
      sub_22C49CA14();

      if (v0)
      {
LABEL_10:
        swift_deallocUninitializedObject();
      }

      else
      {
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v31 = swift_allocObject();
        *(v31 + 16) = v1;
        *(v23 + 32) = v31;
        v1 = v23 | 0xA000000000000000;
        if (*(v23 + 24) == 1 && *(v23 + 16) == 3)
        {
          sub_22C36A83C();
          v1 = swift_allocObject();

          *(v1 + 16) = 0x455443414445523CLL;
          *(v1 + 24) = 0xEA00000000003E44;
        }
      }

      break;
    default:

      break;
  }

  return v1;
}

void sub_22C491ED0()
{
  sub_22C370030();
  v4 = v3;
  v6 = v5;
  v7 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C3717BC();
  type metadata accessor for PromptTreeIdentifier(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  sub_22C382FA8();
  swift_bridgeObjectRetain_n();
  switch(v6 >> 61)
  {
    case 2uLL:
      swift_projectBox();
      sub_22C49C99C();
      v26 = v25;
      sub_22C49C7B0(v27, v12, v25);
      v55 = swift_allocBox();
      v29 = v28;
      sub_22C49C7B0(v12, v28, v26);
      sub_22C374B18(v2 + 16);

      sub_22C388F38();
      swift_bridgeObjectRetain_n();

      sub_22C37667C();
      sub_22C491ED0();
      if (v0)
      {

        sub_22C372798();
        sub_22C49C758(v12, v31);
        sub_22C49C758(v29, v1);
        swift_deallocBox();
        goto LABEL_16;
      }

      v50 = v30;

      v43 = *(v7 + 48);

      sub_22C3733C8();
      sub_22C49C758(v12, v44);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v45 = swift_allocObject();
      *(v45 + 16) = v50;
      *(v29 + v43) = v45;
      v6 = v55 | 0x4000000000000000;
      goto LABEL_3;
    case 3uLL:
      sub_22C369AEC();
      v22 = swift_allocObject();

      sub_22C388F38();
      swift_bridgeObjectRetain_n();

      sub_22C37667C();
      sub_22C4976E8(v23, v24);
      sub_22C49CA48();

      if (v0)
      {
        goto LABEL_15;
      }

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v42 = swift_allocObject();
      *(v42 + 16) = v12;
      *(v22 + 16) = v42;
      v6 = v22 | 0x6000000000000000;
      goto LABEL_3;
    case 4uLL:
      v37 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C36A83C();
      v39 = swift_allocObject();
      *(v39 + 16) = v37;
      sub_22C374B18(v38 + 16);

      sub_22C388F38();
      swift_bridgeObjectRetain_n();
      sub_22C37667C();
      sub_22C491ED0();
      if (v0)
      {
        goto LABEL_14;
      }

      v48 = v40;

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v39 + 24) = v49;
      v6 = v39 | 0x8000000000000000;
      goto LABEL_3;
    case 5uLL:
      v32 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v34 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C36D2A8();
      v35 = swift_allocObject();
      *(v35 + 16) = v32;
      *(v35 + 24) = v33;
      sub_22C374B18(v34 + 16);

      sub_22C388F38();
      swift_bridgeObjectRetain_n();
      sub_22C37667C();
      sub_22C491ED0();
      if (!v0)
      {
        v46 = v36;

        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        *(v35 + 32) = v47;
        v6 = v35 | 0xA000000000000000;
LABEL_3:
        if (v6 >> 61 == 2)
        {
          v13 = swift_projectBox();
          sub_22C49C688(v13, v1);

          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v14 = *(v1 + 16);
            v51 = *v1;
            v52 = v14;
            v53 = *(v1 + 32);
            v54 = *(v1 + 48);
            v15 = sub_22C605834(&v51, v4);
            if (v16)
            {
              v18 = v15;
              v19 = v16;
              v20 = v17;
              v21 = sub_22C374168(&v51, *(&v52 + 1));
              sub_22C53EB6C(&v51, v18, v19, v20, *v21);

              sub_22C48A6C0(&v51);
              sub_22C382FA8();
              swift_bridgeObjectRelease_n();

LABEL_24:
              sub_22C388F38();
              swift_bridgeObjectRelease_n();
              goto LABEL_25;
            }

            sub_22C48A6C0(&v51);
          }

          else
          {
            sub_22C3733C8();
            sub_22C49C758(v1, v41);
          }
        }

        sub_22C382FA8();
        swift_bridgeObjectRelease_n();
        goto LABEL_24;
      }

LABEL_14:

LABEL_15:
      swift_deallocUninitializedObject();
LABEL_16:
      sub_22C388F38();
      swift_bridgeObjectRelease_n();
      sub_22C382FA8();
      swift_bridgeObjectRelease_n();
LABEL_25:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      sub_22C382FA8();
      swift_bridgeObjectRetain_n();
      goto LABEL_3;
  }
}

void sub_22C4923C4()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for PromptTreeIdentifier(0);
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C37B9F8();
  swift_bridgeObjectRetain_n();
  sub_22C382FA8();
  swift_bridgeObjectRetain_n();
  switch(v3 >> 61)
  {
    case 2uLL:
      v16 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v17 = swift_projectBox();
      v18 = *(v17 + *(v16 + 48));
      sub_22C49C7B0(v17, v8, type metadata accessor for PromptTreeIdentifier);
      swift_allocBox();
      v20 = v19;
      sub_22C49C7B0(v8, v19, type metadata accessor for PromptTreeIdentifier);
      sub_22C374B18(v18 + 16);
      v21 = *(v18 + 16);

      sub_22C49C9D8();
      swift_bridgeObjectRetain_n();
      sub_22C388F38();
      swift_bridgeObjectRetain_n();

      sub_22C37FD58();
      sub_22C4923C4();
      v1 = v0;
      if (v0)
      {

        sub_22C3721D8();
        sub_22C49C758(v8, v23);
        sub_22C49C758(v20, v21);
        swift_deallocBox();
        goto LABEL_15;
      }

      v34 = v22;

      v35 = *(v16 + 48);

      sub_22C3733C8();
      sub_22C49C758(v8, v36);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v37 = swift_allocObject();
      *(v37 + 16) = v34;
      *(v20 + v35) = v37;
      goto LABEL_3;
    case 3uLL:
      sub_22C369AEC();
      v12 = swift_allocObject();

      sub_22C49C9D8();
      swift_bridgeObjectRetain_n();
      sub_22C388F38();
      swift_bridgeObjectRetain_n();

      sub_22C37FD58();
      sub_22C497728(v13, v14, v15);
      sub_22C37B270();

      if (v0)
      {
        goto LABEL_14;
      }

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v33 = swift_allocObject();
      *(v33 + 16) = v8;
      *(v12 + 16) = v33;
      goto LABEL_3;
    case 4uLL:
      v29 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C36A83C();
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      sub_22C374B18(v30 + 16);

      sub_22C49C9D8();
      swift_bridgeObjectRetain_n();
      sub_22C388F38();
      swift_bridgeObjectRetain_n();
      sub_22C37FD58();
      sub_22C4923C4();
      v1 = v0;
      if (v0)
      {
        goto LABEL_13;
      }

      v40 = v32;

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v31 + 24) = v41;
      goto LABEL_3;
    case 5uLL:
      v24 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C36D2A8();
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      *(v27 + 24) = v25;
      sub_22C374B18(v26 + 16);

      sub_22C49C9D8();
      swift_bridgeObjectRetain_n();
      sub_22C388F38();
      swift_bridgeObjectRetain_n();
      sub_22C37FD58();
      sub_22C4923C4();
      v1 = v0;
      if (v0)
      {
LABEL_13:

LABEL_14:
        swift_deallocUninitializedObject();
LABEL_15:

        sub_22C37B9F8();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v38 = v28;

        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        *(v27 + 32) = v39;
LABEL_3:
        sub_22C37FD58();
        sub_22C49E81C(v9, v10, v11);
        sub_22C37B270();

        if (!v1)
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          goto LABEL_17;
        }

        sub_22C37B9F8();
        swift_bridgeObjectRelease_n();
      }

      sub_22C49C9D8();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
LABEL_17:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      sub_22C37B9F8();
      swift_bridgeObjectRetain_n();
      sub_22C382FA8();
      swift_bridgeObjectRetain_n();
      goto LABEL_3;
  }
}

void sub_22C492838()
{
  sub_22C370030();
  sub_22C38613C();
  v3 = type metadata accessor for PromptTreeIdentifier(0);
  v4 = sub_22C369914(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C370654();
  v5 = v0 >> 61;
  sub_22C382FA8();
  swift_retain_n();
  sub_22C37B9F8();
  swift_retain_n();
  swift_retain_n();
  switch(v0 >> 61)
  {
    case 2uLL:
      v16 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      swift_projectBox();
      sub_22C49C99C();
      v18 = v17;
      sub_22C49C7B0(v19, v1, v17);
      swift_allocBox();
      v21 = v20;
      sub_22C49C7B0(v1, v20, v18);
      sub_22C374B18(v2 + 16);
      v22 = *(v2 + 16);

      sub_22C388F38();
      swift_retain_n();
      sub_22C49C9D8();
      swift_retain_n();
      sub_22C3869A4();

      sub_22C49C9C4();
      sub_22C492838();
      if (v5)
      {

        sub_22C36BCD4();
        sub_22C49C758(v1, v24);
        sub_22C49C758(v21, v22);
        swift_deallocBox();
        goto LABEL_14;
      }

      v43 = v23;

      v36 = *(v16 + 48);

      sub_22C3733C8();
      sub_22C49C758(v1, v37);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v38 = swift_allocObject();
      *(v38 + 16) = v43;
      *(v21 + v36) = v38;
      goto LABEL_3;
    case 3uLL:
      sub_22C369AEC();
      v10 = swift_allocObject();

      sub_22C388F38();
      swift_retain_n();
      sub_22C49C9D8();
      swift_retain_n();
      sub_22C3869A4();

      sub_22C49C9C4();
      sub_22C497AB8(v11, v12, v13, v14);
      if (v5)
      {

        goto LABEL_13;
      }

      v34 = v15;

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v10 + 16) = v35;
      goto LABEL_3;
    case 4uLL:
      v30 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C36A83C();
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      sub_22C374B18(v31 + 16);

      sub_22C388F38();
      swift_retain_n();
      sub_22C49C9D8();
      swift_retain_n();
      sub_22C3869A4();
      sub_22C49C9C4();
      sub_22C492838();
      if (v5)
      {
        goto LABEL_12;
      }

      v41 = v33;

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      *(v32 + 24) = v42;
      goto LABEL_3;
    case 5uLL:
      v25 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v27 = *((v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C36D2A8();
      v28 = swift_allocObject();
      *(v28 + 16) = v25;
      *(v28 + 24) = v26;
      sub_22C374B18(v27 + 16);

      sub_22C388F38();
      swift_retain_n();
      sub_22C49C9D8();
      swift_retain_n();
      sub_22C3869A4();
      sub_22C49C9C4();
      sub_22C492838();
      if (v5)
      {
LABEL_12:

LABEL_13:
        swift_deallocUninitializedObject();
      }

      else
      {
        v39 = v29;

        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        *(v28 + 32) = v40;
LABEL_3:
        sub_22C49C9C4();
        sub_22C4AD5AC(v6, v7, v8, v9);

        if (!v5)
        {

          goto LABEL_15;
        }
      }

LABEL_14:

LABEL_15:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      sub_22C382FA8();
      swift_retain_n();
      sub_22C37B9F8();
      swift_retain_n();
      swift_retain_n();
      goto LABEL_3;
  }
}

void sub_22C492D00()
{
  sub_22C370030();
  v3 = v0;
  v5 = v4;
  v6 = type metadata accessor for PromptTreeIdentifier(0);
  v7 = sub_22C369914(v6);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  sub_22C382FA8();
  swift_bridgeObjectRetain_n();
  switch(v5 >> 61)
  {
    case 2uLL:
      v15 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      swift_projectBox();
      sub_22C377CBC();
      sub_22C49C7B0(v16, v10, v17);
      swift_allocBox();
      v19 = v18;
      sub_22C49C7B0(v10, v18, v2);
      sub_22C374B18(v1 + 16);
      sub_22C37AC04();
      sub_22C388F38();
      swift_bridgeObjectRetain_n();

      sub_22C37667C();
      sub_22C492D00();
      v3 = v0;
      if (v0)
      {

        sub_22C38B934();
        sub_22C49C758(v10, v21);
        sub_22C49C758(v19, v15);
        swift_deallocBox();
        goto LABEL_15;
      }

      v34 = v20;

      v35 = *(v15 + 48);

      sub_22C3733C8();
      sub_22C49C758(v10, v36);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v37 = swift_allocObject();
      *(v37 + 16) = v34;
      *(v19 + v35) = v37;
      goto LABEL_3;
    case 3uLL:
      sub_22C369AEC();
      swift_allocObject();
      sub_22C49CA2C();
      sub_22C388F38();
      swift_bridgeObjectRetain_n();

      sub_22C37667C();
      sub_22C497EB0(v13, v14);
      sub_22C49CA20();

      if (v0)
      {
        goto LABEL_14;
      }

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v33 = swift_allocObject();
      *(v33 + 16) = v5;
      *(v10 + 16) = v33;
      goto LABEL_3;
    case 4uLL:
      v28 = v5 & 0x1FFFFFFFFFFFFFFFLL;
      v29 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *(v28 + 24);
      sub_22C36A83C();
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      sub_22C374B18(v30 + 16);
      sub_22C382CA8();
      sub_22C388F38();
      swift_bridgeObjectRetain_n();
      sub_22C37A004();
      sub_22C492D00();
      if (v0)
      {
        goto LABEL_13;
      }

      v40 = v32;

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      *(v31 + 24) = v41;
      goto LABEL_3;
    case 5uLL:
      v22 = v5 & 0x1FFFFFFFFFFFFFFFLL;
      v23 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *(v22 + 24);
      v25 = *(v22 + 32);
      sub_22C36D2A8();
      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      *(v26 + 24) = v24;
      sub_22C374B18(v25 + 16);

      sub_22C388F38();
      swift_bridgeObjectRetain_n();
      sub_22C37A004();
      sub_22C492D00();
      if (v0)
      {
LABEL_13:

LABEL_14:
        swift_deallocUninitializedObject();
LABEL_15:
        sub_22C388F38();
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v38 = v27;

        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        *(v26 + 32) = v39;
LABEL_3:
        sub_22C37667C();
        sub_22C49896C(v11, v12);
        sub_22C49CA14();
        sub_22C388F38();
        swift_bridgeObjectRelease_n();
        if (!v3)
        {
          sub_22C382FA8();
          swift_bridgeObjectRelease_n();

          goto LABEL_17;
        }
      }

      sub_22C382FA8();
      swift_bridgeObjectRelease_n();
LABEL_17:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      sub_22C382FA8();
      swift_bridgeObjectRetain_n();
      goto LABEL_3;
  }
}

void sub_22C4930DC()
{
  sub_22C370030();
  v5 = v4;
  v6 = sub_22C374410();
  v7 = type metadata accessor for PromptTreeIdentifier(v6);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  switch(v1 >> 61)
  {
    case 2uLL:
      v15 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      swift_projectBox();
      sub_22C377CBC();
      sub_22C49C7B0(v16, v11, v17);
      v18 = swift_allocBox();
      sub_22C3881CC(v18, v19);
      sub_22C374B18(v3 + 16);
      sub_22C37AC04();

      sub_22C37667C();
      sub_22C4930DC();
      if (!v0)
      {
        v32 = v20;

        v33 = *(v15 + 48);

        sub_22C3733C8();
        sub_22C49C758(v11, v34);
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v35 = swift_allocObject();
        *(v35 + 16) = v32;
        *(v2 + v33) = v35;
        v1 |= 0x4000000000000000uLL;
        goto LABEL_3;
      }

      sub_22C36A9C0();
      sub_22C49C758(v11, v21);
      v22 = sub_22C37A004();
      sub_22C49C758(v22, v23);
      swift_deallocBox();
      goto LABEL_14;
    case 3uLL:
      sub_22C369AEC();
      swift_allocObject();
      sub_22C49CA2C();

      sub_22C37667C();
      sub_22C498210(v13, v14);
      sub_22C49CA20();

      if (v0)
      {
        goto LABEL_13;
      }

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v31 = swift_allocObject();
      *(v31 + 16) = v11;
      *(v1 + 16) = v31;
      v1 |= 0x6000000000000000uLL;
      goto LABEL_3;
    case 4uLL:
      v28 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v29 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C36A83C();
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      sub_22C374B18(v29 + 16);
      sub_22C382CA8();
      sub_22C37A004();
      sub_22C4930DC();
      sub_22C49CA20();

      if (v0)
      {
        goto LABEL_13;
      }

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v37 = swift_allocObject();
      *(v37 + 16) = v28;
      *(v30 + 24) = v37;
      v1 = v30 | 0x8000000000000000;
      goto LABEL_3;
    case 5uLL:
      v24 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C36D2A8();
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      *(v27 + 24) = v25;
      sub_22C374B18(v26 + 16);

      sub_22C37A004();
      sub_22C4930DC();
      sub_22C49CA20();

      if (v0)
      {
LABEL_13:
        swift_deallocUninitializedObject();
      }

      else
      {
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        sub_22C369AEC();
        v36 = swift_allocObject();
        *(v36 + 16) = v24;
        *(v27 + 32) = v36;
        v1 = v27 | 0xA000000000000000;
LABEL_3:
        if ((*v5 & 1) == 0 && (v1 & 0xE000000000000000) == 0x8000000000000000)
        {
          *v5 = 1;
          sub_22C36A83C();
          v12 = swift_allocObject();

          *(v12 + 16) = 0;
          *(v12 + 24) = 0xE000000000000000;
        }
      }

LABEL_14:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      goto LABEL_3;
  }
}

void sub_22C4938BC()
{
  sub_22C370030();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_22C36A948();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C370654();
  switch(v14 >> 61)
  {
    case 2uLL:
      _s3BoxCMa(255, v5, v3, v13);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v17 = swift_projectBox();
      v18 = *(v17 + *(TupleTypeMetadata2 + 48));
      v54 = v9;
      v19 = *(v11 + 16);
      v19(v1, v17, v5);
      v51 = TupleTypeMetadata2;
      v20 = swift_allocBox();
      v52 = v21;
      v53 = v20;
      v19(v21, v1, v5);
      sub_22C374B18(v18 + 16);
      sub_22C37AC04();

      sub_22C4938BC();
      if (!v0)
      {
        v39 = v22;

        v40 = *(v51 + 48);

        v41 = sub_22C37F760();
        v42(v41);
        *(v52 + v40) = sub_22C48B850(v39);
        v54(v53 | 0x4000000000000000);
        goto LABEL_4;
      }

      v23 = *(v11 + 8);
      v24 = sub_22C37F760();
      v23(v24);
      (v23)(v52, v5);
      swift_deallocBox();
      goto LABEL_13;
    case 3uLL:
      sub_22C369AEC();
      v15 = swift_allocObject();

      sub_22C36EBF0();
      sub_22C36D760();
      sub_22C4984AC();
      sub_22C49CA48();

      if (v0)
      {
        goto LABEL_12;
      }

      v35 = sub_22C49C9E4();
      _s3BoxCMa_0(v35, v36, v37, v38);
      *(v15 + 16) = sub_22C48C6B4(v7);
      v7 = v15 | 0x6000000000000000;
      goto LABEL_3;
    case 4uLL:
      v30 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      v31 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v32 = v9;
      v33 = *(v30 + 24);
      sub_22C36A83C();
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      sub_22C374B18(v33 + 16);
      v9 = v32;

      sub_22C36D760();
      sub_22C4938BC();
      sub_22C49CA48();

      if (v0)
      {
        goto LABEL_12;
      }

      v47 = sub_22C49C9E4();
      _s3BoxCMa(v47, v48, v49, v50);
      *(v34 + 24) = sub_22C48B850(v32);
      v7 = v34 | 0x8000000000000000;
      goto LABEL_3;
    case 5uLL:
      v25 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = v9;
      v27 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v28 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C36D2A8();
      v29 = swift_allocObject();
      *(v29 + 16) = v25;
      *(v29 + 24) = v27;
      v9 = v26;
      sub_22C374B18(v28 + 16);

      sub_22C36D760();
      sub_22C4938BC();
      sub_22C49CA48();

      if (v0)
      {
LABEL_12:
        swift_deallocUninitializedObject();
      }

      else
      {
        v43 = sub_22C49C9E4();
        _s3BoxCMa(v43, v44, v45, v46);
        *(v29 + 32) = sub_22C48B850(v28);
        v7 = v29 | 0xA000000000000000;
LABEL_3:
        v9(v7);
LABEL_4:
      }

LABEL_13:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      goto LABEL_3;
  }
}

uint64_t sub_22C493CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a5 < 0)
  {
    v16 = *(*((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    a1 = sub_22C493CE4(a1, a2, a3, a4, v16);

    return a1;
  }

  else
  {
    v11 = *(a5 + 16);
    v18 = v11 & 0xC000000000000001;
    v19 = sub_22C36E2B8();
    v17 = v11 & 0xFFFFFFFFFFFFFF8;
    v20 = v11;

    for (i = 0; ; ++i)
    {
      if (v19 == i)
      {

        return a1;
      }

      if (v18)
      {
        result = MEMORY[0x2318B8460](i, v20);
      }

      else
      {
        if (i >= *(v17 + 16))
        {
          goto LABEL_16;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      swift_beginAccess();

      sub_22C493F24();
      if (v6)
      {

        return a1;
      }

      v15 = v14;

      a1 = v15;
      v6 = 0;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

void sub_22C493F24()
{
  sub_22C370030();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for PromptTreeIdentifier(0);
  v13 = sub_22C3699B8(v12);
  v48 = v14;
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v42 - v19;
  v21 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v21);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v22);
  sub_22C3717BC();
  v45 = v11;
  v46 = v9;
  v47 = v7;
  sub_22C3A5AC4(*v5);

  sub_22C4ADEB0(&v45, v1, v3);
  if (!v0)
  {
    v43 = v17;
    sub_22C36DD28(v1, &qword_27D9BCF28, qword_22C9175E0);
    v23 = 32;
    switch(v3 >> 61)
    {
      case 2uLL:
        v29 = v20;
        sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
        swift_projectBox();
        sub_22C49C99C();
        v31 = v30;
        sub_22C49C7B0(v32, v20, v30);

        v33 = v5;
        sub_22C3D0F38();
        v34 = *(*v5 + 16);
        sub_22C3D10FC(v34);
        v35 = *v5;
        *(*v5 + 16) = v34 + 1;
        sub_22C36BA94();
        sub_22C49C7B0(v29, v35 + v36 + *(v48 + 72) * v34, v31);
        *v5 = v35;
        sub_22C36CA70(v11 + 16, v44);
        v37 = v46;
        v38 = v47;

        v42[1] = v38;
        v42[2] = v37;
        sub_22C493F24();
        sub_22C49C9F4();

        v40 = v43;
        sub_22C4990DC(v43);

        sub_22C36A9C0();
        sub_22C49C758(v40, v41);
        sub_22C49C758(v29, v33);

        goto LABEL_12;
      case 3uLL:

        sub_22C36D760();
        sub_22C493CE4(v24, v25, v26, v27, v28);
        sub_22C49C9F4();

        goto LABEL_3;
      case 4uLL:
        v23 = 24;
        goto LABEL_9;
      case 5uLL:
LABEL_9:
        sub_22C36CA70(*((v3 & 0x1FFFFFFFFFFFFFFFLL) + v23) + 16, v44);
        v39 = v46;

        sub_22C36D760();
        sub_22C493F24();
        if (v39)
        {
        }

        else
        {
          sub_22C49C9F4();

LABEL_12:
        }

        goto LABEL_3;
      default:
        goto LABEL_4;
    }
  }

  sub_22C36DD28(v1, &qword_27D9BCF28, qword_22C9175E0);

LABEL_3:

LABEL_4:
  sub_22C3772F0();
  sub_22C36FB20();
}

uint64_t sub_22C494390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    v10 = *(*((a4 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    v8 = sub_22C494390(a1, a2, a3, v10);
  }

  else
  {
    v7 = *(a4 + 16);

    v8 = sub_22C4917C8(a1, a2, v7, a3);
  }

  return v8;
}

uint64_t sub_22C4944DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
    v13 = *(*((a4 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    a1 = sub_22C4944DC(a1, a2, a3, v13);

    return a1;
  }

  else
  {
    v8 = *(a4 + 16);
    v15 = v8 & 0xC000000000000001;
    v16 = sub_22C36E2B8();
    v14 = v8 & 0xFFFFFFFFFFFFFF8;
    v17 = v8;

    for (i = 0; ; ++i)
    {
      if (v16 == i)
      {

        return a1;
      }

      if (v15)
      {
        result = MEMORY[0x2318B8460](i, v17);
      }

      else
      {
        if (i >= *(v14 + 16))
        {
          goto LABEL_16;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      swift_beginAccess();

      sub_22C495588();
      if (v4)
      {

        return a1;
      }

      v12 = v11;

      a1 = v12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C4946D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for PromptTreeResolution.State(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  if (a3 < 0)
  {
    v19 = *(*((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    sub_22C4946D4(a1, a2, v19, a4);
  }

  else
  {
    v21 = a4;
    v22 = a2;
    v15 = *(a3 + 16);
    sub_22C49C7B0(a1, &v20 - v13, type metadata accessor for PromptTreeResolution.State);
    v16 = sub_22C36E2B8();
    v23 = v15 & 0xC000000000000001;

    for (i = 0; ; ++i)
    {
      if (v16 == i)
      {
        sub_22C49C6F8(v14, v21, type metadata accessor for PromptTreeResolution.State);
      }

      if (v23)
      {
        result = MEMORY[0x2318B8460](i, v15);
      }

      else
      {
        if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      swift_beginAccess();

      sub_22C495A5C();
      if (v4)
      {

        sub_22C49C758(v14, type metadata accessor for PromptTreeResolution.State);
      }

      sub_22C49C758(v14, type metadata accessor for PromptTreeResolution.State);

      sub_22C49C6F8(v12, v14, type metadata accessor for PromptTreeResolution.State);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C494A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v21 = a5;
  v6 = v5;
  if (a3 < 0)
  {
    v18 = *(*((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    a4(a1, a2, v18);
    sub_22C49CA14();

    return a1;
  }

  else
  {
    v9 = *(a3 + 16);
    v10 = sub_22C36E2B8();

    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        return a1;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2318B8460](i, v9);
        v13 = result;
      }

      else
      {
        if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v13 = *(v9 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_22C36CA70(v13 + 16, v20);
      v14 = *(v13 + 16);

      v15 = v21(a1, a2, v14);
      if (v6)
      {

        return a1;
      }

      v16 = v15;

      a1 = v16;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C494C14(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3 < 0)
  {
    v12 = *(*((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    a1 = sub_22C494C14(a1 & 1, a2, v12);

    return a1 & 1;
  }

  else
  {
    v7 = *(a3 + 16);
    v8 = sub_22C36E2B8();

    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        return a1 & 1;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2318B8460](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      swift_beginAccess();

      sub_22C496A94();
      if (v4)
      {

        return a1 & 1;
      }

      a1 = v11;
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C494DA0(char a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, void, void), uint64_t a5)
{
  if (a3 < 0)
  {
    v12 = *(*((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);

    v10 = sub_22C494DA0(a1 & 1, a2, v12, a4, a5);
  }

  else
  {
    v9 = *(a3 + 16);

    v10 = sub_22C491938(a1 & 1, v9, a2, a4, a5);
  }

  return v10 & 1;
}

void sub_22C494E64()
{
  sub_22C370030();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v12);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v14 = sub_22C38163C();
  sub_22C36A948();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  sub_22C49CA04();
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  v21 = 32;
  switch(v5 >> 61)
  {
    case 2uLL:
      v45 = v1;
      v46 = v14;
      v27 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v28 = *(swift_projectBox() + *(v27 + 48));
      sub_22C369D5C();
      v47 = v28;
      v48 = v29;
      sub_22C49C7B0(v30, v20, v31);

      sub_22C3D0F38();
      v32 = *(*v7 + 16);
      sub_22C3D10FC(v32);
      v44 = v5;
      v33 = *v7;
      *(*v7 + 16) = v32 + 1;
      sub_22C36BA94();
      sub_22C49C7B0(v20, v33 + v34 + *(v16 + 72) * v32, v48);
      *v7 = v33;
      v35 = v47;
      sub_22C36CA70(v47 + 16, v49);
      v36 = *(v35 + 16);

      sub_22C3855B8();
      sub_22C494E64();
      if (!v3)
      {
        v11 = v37;
        v9 = v38;

        sub_22C4990DC(v2);

        sub_22C36BCD4();
        sub_22C49C758(v2, v40);
        sub_22C49C758(v20, v36);
        v5 = v44;
        v1 = v45;
        v14 = v46;
        goto LABEL_11;
      }

      sub_22C4990DC(v2);

      sub_22C36A9C0();
      sub_22C49C758(v2, v39);
      sub_22C49C758(v20, v7);
      goto LABEL_16;
    case 3uLL:
      v22 = v14;
      v23 = *(*((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);

      v24 = sub_22C3855B8();
      sub_22C494390(v24, v25, v26, v23);
      sub_22C375E54();
      goto LABEL_8;
    case 4uLL:
      v21 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      v22 = v14;
      sub_22C36CA70(*((v5 & 0x1FFFFFFFFFFFFFFFLL) + v21) + 16, v49);

      sub_22C3855B8();
      sub_22C494E64();
      sub_22C375E54();
LABEL_8:

      if (v3)
      {
        goto LABEL_16;
      }

      v14 = v22;
LABEL_11:
      v50[0] = v11;
      v50[1] = v9;
      if (*(*v7 + 16))
      {
        sub_22C369D5C();
        sub_22C49C7B0(v41, v1, v42);
        v43 = 0;
      }

      else
      {
        v43 = 1;
      }

      sub_22C36C640(v1, v43, 1, v14);
      sub_22C49CC54(v50, v5);
      sub_22C36DD28(v1, &qword_27D9BCF28, qword_22C9175E0);
      if (v3)
      {
      }

LABEL_16:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:

      goto LABEL_11;
  }
}

void sub_22C495588()
{
  sub_22C370030();
  v3 = v2;
  v61 = v4;
  v6 = v5;
  v8 = v7;
  v57 = type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v58 = v11 - v10;
  v12 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v13 = sub_22C369914(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v56 = v15 - v14;
  v16 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v16);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v17);
  v19 = v52 - v18;
  v20 = type metadata accessor for PromptTreeIdentifier(0);
  v21 = sub_22C3699B8(v20);
  v23 = v22;
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v24);
  v26 = v52 - v25;
  v27 = 32;
  v59 = v3 >> 61;
  switch(v3 >> 61)
  {
    case 2uLL:
      v53 = v19;
      v33 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v55 = v0;
      v52[1] = v3;
      v34 = *(swift_projectBox() + *(v33 + 48));
      sub_22C369D5C();
      v54 = v35;
      sub_22C49C7B0(v36, v26, v37);

      v3 = v61;
      sub_22C3D0F38();
      v38 = *(*v61 + 16);
      sub_22C3D10FC(v38);
      v39 = *v61;
      *(*v61 + 16) = v38 + 1;
      sub_22C36BA94();
      sub_22C49C7B0(v26, v39 + v40 + *(v23 + 72) * v38, v54);
      *v61 = v39;
      sub_22C36CA70(v34 + 16, v60);

      sub_22C36EBF0();
      v41 = v55;
      sub_22C495588();
      if (!v41)
      {
        v8 = v42;
        v6 = v43;

        sub_22C4990DC(v1);

        sub_22C382664();
        sub_22C49C758(v1, v45);
        sub_22C49C758(v26, v38);
        v19 = v53;
        goto LABEL_11;
      }

      sub_22C4990DC(v1);

      sub_22C382664();
      sub_22C49C758(v1, v44);
      sub_22C49C758(v26, v38);
      goto LABEL_18;
    case 3uLL:
      v28 = v19;

      sub_22C36EBF0();
      sub_22C49CA54();
      sub_22C4944DC(v29, v30, v31, v32);
      sub_22C49CA7C();
      goto LABEL_8;
    case 4uLL:
      v27 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      v28 = v19;
      sub_22C36CA70(*((v3 & 0x1FFFFFFFFFFFFFFFLL) + v27) + 16, v60);

      sub_22C36EBF0();
      sub_22C49CA54();
      sub_22C495588();
      sub_22C49CA7C();
LABEL_8:

      if (v0)
      {
        goto LABEL_18;
      }

      v19 = v28;
LABEL_11:
      v60[3] = v8;
      v60[4] = v6;
      sub_22C3A5AC4(*v3);
      if (v59 == 1)
      {
        v46 = swift_projectBox();
        v47 = v58;
        sub_22C49C7B0(v46, v58, type metadata accessor for PromptTreeIdentifier.Label);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v48 = v56;
          v49 = sub_22C49C6F8(v47, v56, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
          MEMORY[0x28223BE20](v49);
          v52[-4] = v8;
          v52[-3] = v6;
          v52[-2] = v48;
          sub_22C7D5CF0(sub_22C49C8C0, &v52[-6], v6);
          if (v50)
          {
            sub_22C7D547C();
          }

          sub_22C49C758(v48, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
        }

        else
        {
          sub_22C3855A0();
          sub_22C49C758(v47, v51);
        }
      }

      sub_22C36DD28(v19, &qword_27D9BCF28, qword_22C9175E0);
LABEL_18:
      sub_22C36EBF0();
      sub_22C36FB20();
      return;
    default:

      v3 = v61;
      goto LABEL_11;
  }
}

void sub_22C495A5C()
{
  sub_22C370030();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v49 = v7;
  v9 = v8;
  v10 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v13 = v45 - v12;
  v14 = type metadata accessor for PromptTreeIdentifier(0);
  v15 = sub_22C3699B8(v14);
  v17 = v16;
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v45 - v22;
  v24 = type metadata accessor for PromptTreeResolution.State(0);
  v25 = sub_22C369914(v24);
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  sub_22C370654();
  v26 = 32;
  switch(v4 >> 61)
  {
    case 2uLL:
      v46 = v9;
      v31 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v45[1] = v4;
      v32 = *(swift_projectBox() + *(v31 + 48));
      sub_22C369D5C();
      v47 = v32;
      v48 = v33;
      sub_22C49C7B0(v34, v23, v35);

      sub_22C3D0F38();
      v36 = *(*v6 + 16);
      sub_22C3D10FC(v36);
      v37 = *v6;
      *(*v6 + 16) = v36 + 1;
      sub_22C36BA94();
      sub_22C49C7B0(v23, v37 + v38 + *(v17 + 72) * v36, v48);
      *v6 = v37;
      v39 = v47;
      sub_22C374B18(v47 + 16);
      v40 = *(v39 + 16);

      sub_22C495A5C();
      if (v0)
      {

        sub_22C4990DC(v20);

        sub_22C36A9C0();
        sub_22C49C758(v20, v41);
        v42 = v23;
        v43 = v6;
        goto LABEL_13;
      }

      sub_22C4990DC(v20);

      sub_22C372798();
      sub_22C49C758(v20, v44);
      sub_22C49C758(v23, v40);
      v9 = v46;
      goto LABEL_11;
    case 3uLL:

      sub_22C49C9B4();
      sub_22C4946D4(v27, v28, v29, v30);
      v2 = v0;

      goto LABEL_8;
    case 4uLL:
      v26 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      sub_22C374B18(*((v4 & 0x1FFFFFFFFFFFFFFFLL) + v26) + 16);

      sub_22C49C9B4();
      sub_22C495A5C();
      v2 = v0;

LABEL_8:

      if (!v2)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    default:
      sub_22C49C7B0(v49, v1, type metadata accessor for PromptTreeResolution.State);
LABEL_11:
      sub_22C49C6F8(v1, v9, type metadata accessor for PromptTreeResolution.State);
      sub_22C3A5AC4(*v6);
      sub_22C4A71E0();
      sub_22C36DD28(v13, &qword_27D9BCF28, qword_22C9175E0);
      if (v2)
      {
        v43 = type metadata accessor for PromptTreeResolution.State;
        v42 = v9;
LABEL_13:
        sub_22C49C758(v42, v43);
      }

LABEL_14:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
  }
}

uint64_t sub_22C495E70(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = v44 - v12;
  v13 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v44 - v14;
  v51 = type metadata accessor for PromptTreeIdentifier(0);
  v16 = *(v51 - 8);
  v17 = MEMORY[0x28223BE20](v51);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v44 - v20;
  v22 = a3 >> 61;
  v23 = 32;
  switch(a3 >> 61)
  {
    case 2uLL:
      v45 = v11;
      v48 = v4;
      v25 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v26 = a3;
      v27 = v25;
      v44[1] = v26;
      v28 = swift_projectBox();
      v46 = *(v28 + *(v27 + 48));
      v47 = type metadata accessor for PromptTreeIdentifier;
      sub_22C49C7B0(v28, v21, type metadata accessor for PromptTreeIdentifier);

      sub_22C3D0F38();
      v29 = *(*a2 + 16);
      sub_22C3D10FC(v29);
      v30 = *a2;
      *(v30 + 16) = v29 + 1;
      v31 = v30 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      v49 = v16;
      v32 = v31 + *(v16 + 72) * v29;
      v33 = v46;
      sub_22C49C7B0(v21, v32, v47);
      *a2 = v30;
      swift_beginAccess();
      v34 = *(v33 + 16);

      v35 = v48;
      v36 = sub_22C495E70(a1, a2, v34);
      if (!v35)
      {
        a1 = v36;

        sub_22C4990DC(v19);

        sub_22C49C758(v19, type metadata accessor for PromptTreeIdentifier);
        sub_22C49C758(v21, type metadata accessor for PromptTreeIdentifier);
        v11 = v45;
        goto LABEL_11;
      }

      sub_22C4990DC(v19);

      sub_22C49C758(v19, type metadata accessor for PromptTreeIdentifier);
      return sub_22C49C758(v21, type metadata accessor for PromptTreeIdentifier);
    case 3uLL:
      v49 = v16;
      v24 = *(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);

      a1 = sub_22C4949A0(a1, a2, v24);

      goto LABEL_8;
    case 4uLL:
      v23 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      v49 = v16;
      v38 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + v23);
      swift_beginAccess();
      v39 = *(v38 + 16);

      a1 = sub_22C495E70(a1, a2, v39);

LABEL_8:

      if (v4)
      {
        return result;
      }

LABEL_11:
      v16 = v49;
LABEL_12:
      v52 = a1;
      v40 = *(*a2 + 16);
      if (v40)
      {
        sub_22C49C7B0(*a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * (v40 - 1), v15, type metadata accessor for PromptTreeIdentifier);
        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      sub_22C36C640(v15, v41, 1, v51);
      if (v22 == 1)
      {
        v42 = swift_projectBox();
        sub_22C49C7B0(v42, v11, type metadata accessor for PromptTreeIdentifier.Label);
        v43 = v50;
        sub_22C6A4738();
        sub_22C49C758(v43, type metadata accessor for PromptTreeIdentifier.Label);
      }

      sub_22C36DD28(v15, &qword_27D9BCF28, qword_22C9175E0);
      return v52;
    default:

      goto LABEL_12;
  }
}

void sub_22C4963B4()
{
  sub_22C370030();
  v6 = v5;
  v37 = v7;
  sub_22C38613C();
  v8 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v10 = sub_22C38163C();
  v11 = sub_22C3699B8(v10);
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  sub_22C49CA04();
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  v17 = 32;
  switch(v2 >> 61)
  {
    case 2uLL:
      v18 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v19 = *(swift_projectBox() + *(v18 + 48));
      sub_22C369D5C();
      v35 = v19;
      v36 = v20;
      sub_22C49C7B0(v21, v16, v22);

      sub_22C3D0F38();
      v23 = *(*v0 + 16);
      sub_22C3D10FC(v23);
      v34[1] = v2;
      v24 = *v0;
      *(*v0 + 16) = v23 + 1;
      sub_22C36BA94();
      sub_22C49C7B0(v16, v24 + v25 + *(v13 + 72) * v23, v36);
      *v0 = v24;
      v26 = v35;
      sub_22C374B18(v35 + 16);
      v27 = *(v26 + 16);

      v28 = sub_22C37A004();
      (v37)(v28);
      if (!v1)
      {

        sub_22C4990DC(v4);

        sub_22C38B934();
        sub_22C49C758(v4, v30);
        sub_22C49C758(v16, v27);
        goto LABEL_11;
      }

      sub_22C4990DC(v4);

      sub_22C36A9C0();
      sub_22C49C758(v4, v29);
      sub_22C49C758(v16, v0);
      goto LABEL_13;
    case 3uLL:
      sub_22C49CA9C();

      sub_22C49C9B4();
      v6();
      sub_22C37B270();

      goto LABEL_8;
    case 4uLL:
      v17 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      sub_22C374B18(*((v2 & 0x1FFFFFFFFFFFFFFFLL) + v17) + 16);

      sub_22C49C9B4();
      v37();
      sub_22C37B270();

LABEL_8:

      if (!v1)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    default:

LABEL_11:
      sub_22C3A5AC4(*v0);
      v31 = sub_22C49CA68();
      sub_22C4972DC(v31, v32, v33);
      sub_22C36DD28(v3, &qword_27D9BCF28, qword_22C9175E0);
      if (v1)
      {
      }

LABEL_13:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
  }
}

void sub_22C496728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v22;
  a20 = v23;
  v65 = v24;
  v26 = v25;
  v63 = v27;
  v28 = v20;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v35);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v36);
  v64 = &v61 - v37;
  v38 = type metadata accessor for PromptTreeIdentifier(0);
  v39 = sub_22C3699B8(v38);
  v41 = v40;
  MEMORY[0x28223BE20](v39);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v42);
  v44 = &v61 - v43;
  v45 = 32;
  v46 = v30;
  switch(v30 >> 61)
  {
    case 2uLL:
      v48 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v61 = v30;
      v49 = *(swift_projectBox() + *(v48 + 48));
      sub_22C369D5C();
      v62 = v50;
      sub_22C49C7B0(v51, v44, v52);

      sub_22C3D0F38();
      v53 = *(*v32 + 16);
      sub_22C3D10FC(v53);
      v54 = *v32;
      *(*v32 + 16) = v53 + 1;
      sub_22C36BA94();
      sub_22C49C7B0(v44, v54 + v55 + *(v41 + 72) * v53, v62);
      *v32 = v54;
      sub_22C374B18(v49 + 16);

      sub_22C49C9B4();
      v56 = v63();
      v28 = v20;
      if (!v20)
      {
        v34 = v56;

        sub_22C4990DC(v21);

        sub_22C372798();
        sub_22C49C758(v21, v58);
        sub_22C49C758(v44, v53);
        v46 = v61;
        goto LABEL_11;
      }

      sub_22C4990DC(v21);

      sub_22C36A9C0();
      sub_22C49C758(v21, v57);
      sub_22C49C758(v44, v32);
      goto LABEL_13;
    case 3uLL:

      v47 = sub_22C37F760();
      v34 = v26(v47);

      goto LABEL_8;
    case 4uLL:
      v45 = 24;
      goto LABEL_7;
    case 5uLL:
LABEL_7:
      sub_22C374B18(*((v30 & 0x1FFFFFFFFFFFFFFFLL) + v45) + 16);

      sub_22C49C9B4();
      v34 = v63();
      v28 = v20;

LABEL_8:

      if (!v28)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    default:

LABEL_11:
      a10 = v34;
      v59 = *v32;
      v60 = v64;
      sub_22C3A5AC4(v59);
      v65(&a10, v46);
      sub_22C36DD28(v60, &qword_27D9BCF28, qword_22C9175E0);
      if (v28)
      {
      }

LABEL_13:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
  }
}

void sub_22C496A94()
{
  sub_22C370030();
  v4 = v3;
  v6 = v5;
  v7 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C3717BC();
  v9 = type metadata accessor for PromptTreeIdentifier(0);
  sub_22C36A948();
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  sub_22C49CA04();
  MEMORY[0x28223BE20](v11);
  v14 = v37 - v13;
  v15 = 32;
  switch(v4 >> 61)
  {
    case 2uLL:
      v37[1] = v4 >> 61;
      v38 = v9;
      v16 = v12;
      v17 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v18 = *(swift_projectBox() + *(v17 + 48));
      sub_22C369D5C();
      v39 = v18;
      v40 = v19;
      sub_22C49C7B0(v20, v14, v21);

      sub_22C3D0F38();
      v22 = *(*v6 + 16);
      sub_22C3D10FC(v22);
      v37[0] = v4;
      v23 = *v6;
      *(*v6 + 16) = v22 + 1;
      sub_22C36BA94();
      sub_22C49C7B0(v14, v23 + v24 + *(v16 + 72) * v22, v40);
      *v6 = v23;
      v25 = v39;
      sub_22C374B18(v39 + 16);
      v26 = *(v25 + 16);

      sub_22C496A94();
      if (!v0)
      {

        sub_22C4990DC(v2);

        sub_22C3721D8();
        sub_22C49C758(v2, v33);
        sub_22C49C758(v14, v26);
        v9 = v38;
        goto LABEL_10;
      }

      sub_22C4990DC(v2);

      sub_22C36A9C0();
      sub_22C49C758(v2, v27);
      sub_22C49C758(v14, v6);
      goto LABEL_14;
    case 3uLL:
      v28 = v9;

      v29 = sub_22C36ECD8();
      sub_22C494C14(v29, v30, v31);
      v32 = v0;

      goto LABEL_7;
    case 4uLL:
      v15 = 24;
      goto LABEL_6;
    case 5uLL:
LABEL_6:
      v28 = v9;
      sub_22C374B18(*((v4 & 0x1FFFFFFFFFFFFFFFLL) + v15) + 16);

      sub_22C36ECD8();
      sub_22C496A94();
      v32 = v0;

LABEL_7:

      if (v32)
      {
        goto LABEL_14;
      }

      v9 = v28;
LABEL_10:
      if (*(*v6 + 16))
      {
        sub_22C369D5C();
        sub_22C49C7B0(v34, v1, v35);
        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      sub_22C36C640(v1, v36, 1, v9);
      sub_22C36DD28(v1, &qword_27D9BCF28, qword_22C9175E0);
LABEL_14:
      sub_22C3772F0();
      sub_22C36FB20();
      return;
    default:
      goto LABEL_10;
  }
}

uint64_t sub_22C496E50(char a1, uint64_t a2, unint64_t a3, void (*a4)(void *__return_ptr, void, void), uint64_t a5)
{
  v11 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  MEMORY[0x28223BE20](v11 - 8);
  v41 = &v37 - v12;
  v13 = type metadata accessor for PromptTreeIdentifier(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = 32;
  switch(a3 >> 61)
  {
    case 2uLL:
      v21 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v39 = a5;
      v22 = v21;
      v23 = swift_projectBox();
      v24 = *(v22 + 48);
      v37 = a3;
      v25 = *(v23 + v24);
      v38 = type metadata accessor for PromptTreeIdentifier;
      sub_22C49C7B0(v23, v19, type metadata accessor for PromptTreeIdentifier);

      sub_22C3D0F38();
      v26 = *(*a2 + 16);
      sub_22C3D10FC(v26);
      v40 = a4;
      v27 = *a2;
      *(v27 + 16) = v26 + 1;
      v28 = v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v26;
      a5 = v39;
      sub_22C49C7B0(v19, v28, v38);
      *a2 = v27;
      a4 = v40;
      swift_beginAccess();
      v38 = v25;
      v29 = *(v25 + 16);

      v30 = sub_22C496E50(a1 & 1, a2, v29, a4, a5);
      if (!v5)
      {
        a1 = v30;

        sub_22C4990DC(v17);

        sub_22C49C758(v17, type metadata accessor for PromptTreeIdentifier);
        sub_22C49C758(v19, type metadata accessor for PromptTreeIdentifier);
        a3 = v37;
        goto LABEL_10;
      }

      sub_22C4990DC(v17);

      a2 = type metadata accessor for PromptTreeIdentifier;
      sub_22C49C758(v17, type metadata accessor for PromptTreeIdentifier);
      sub_22C49C758(v19, type metadata accessor for PromptTreeIdentifier);
      return a2 & 1;
    case 3uLL:
      v31 = a5;
      v32 = *(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 16);

      a1 = sub_22C494DA0(a1 & 1, a2, v32, a4, v31);

      goto LABEL_7;
    case 4uLL:
      v20 = 24;
      goto LABEL_6;
    case 5uLL:
LABEL_6:
      v33 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + v20);
      swift_beginAccess();
      v31 = a5;
      v34 = *(v33 + 16);

      a1 = sub_22C496E50(a1 & 1, a2, v34, a4, v31);

LABEL_7:

      if (v5)
      {
        return a2 & 1;
      }

      LOBYTE(a5) = v31;
LABEL_10:
      BYTE1(v42) = a1 & 1;
      v35 = v41;
      sub_22C3A5AC4(*a2);
      LOBYTE(a2) = a5;
      a4(&v42, &v42 + 1, a3);
      if (v5)
      {
        sub_22C36DD28(v35, &qword_27D9BCF28, qword_22C9175E0);
      }

      else
      {
        LOBYTE(a2) = v42;
        sub_22C36DD28(v35, &qword_27D9BCF28, qword_22C9175E0);
      }

      return a2 & 1;
    default:
      goto LABEL_10;
  }
}

uint64_t sub_22C497280(char a1, unint64_t a2, void (*a3)(void *__return_ptr, void, void), uint64_t a4)
{
  v6 = MEMORY[0x277D84F90];
  v4 = sub_22C496E50(a1, &v6, a2, a3, a4);

  return v4 & 1;
}

void sub_22C4972DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_22C374410();
  v6 = type metadata accessor for PromptTreeIdentifier.Label(v5);
  v7 = sub_22C369914(v6);
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for PromptTreeIdentifier(0);
  v15 = sub_22C369914(v14);
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  sub_22C370654();
  if (a3 >> 61 == 2)
  {
    v16 = swift_projectBox();
    sub_22C49C688(v16, v13);

    sub_22C49C6F8(v13, v3, type metadata accessor for PromptTreeIdentifier);
    sub_22C486784();
    sub_22C6A4738();
    sub_22C3855A0();
    sub_22C49C758(v10, v17);
    sub_22C3733C8();
    sub_22C49C758(v3, v18);
  }
}

void sub_22C497468(uint64_t a1)
{
  v2 = v1;
  if (a1 < 0)
  {
    v14 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v16 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v17 = swift_allocObject();
    v17[2] = v14;
    v17[3] = v15;
    v18 = *(v16 + 16);
    sub_22C480170(v14, v15);

    v19 = sub_22C497468(v18);

    if (v1)
    {
      sub_22C48FEE0(v17[2], v17[3]);
      swift_deallocUninitializedObject();
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v17[4] = v20;
    }
  }

  else
  {
    v3 = *(a1 + 16);
    v4 = sub_22C36E2B8();
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = v4;
      v21 = MEMORY[0x277D84F90];
      v7 = v4 & ~(v4 >> 63);

      sub_22C3B63D4(0, v7, 0);
      if ((v6 & 0x8000000000000000) == 0)
      {
        v8 = 0;
        v5 = v21;
        while (1)
        {
          v9 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2318B8460](v8, v3);
          }

          else
          {
            if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }
          }

          swift_beginAccess();

          v10 = sub_22C491AFC();
          if (v2)
          {

            return;
          }

          v11 = v10;

          v13 = *(v21 + 16);
          v12 = *(v21 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_22C3B63D4(v12 > 1, v13 + 1, 1);
          }

          *(v21 + 16) = v13 + 1;
          *(v21 + 8 * v13 + 32) = v11;
          ++v8;
          if (v9 == v6)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      sub_22C3DB9B0(v5);
    }
  }
}

void sub_22C497728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    v17 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v20 = swift_allocObject();
    v20[2] = v17;
    v20[3] = v18;
    v21 = *(v19 + 16);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_22C480170(v17, v18);

    v22 = sub_22C497728(v21, a2, a3);

    if (v3)
    {
      sub_22C48FEE0(v20[2], v20[3]);
      swift_deallocUninitializedObject();

      swift_bridgeObjectRelease_n();
LABEL_19:

      swift_bridgeObjectRelease_n();
      return;
    }

    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    v20[4] = v23;

LABEL_22:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v5 = *(a1 + 16);
  v6 = sub_22C36E2B8();
  if (!v6)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v10 = MEMORY[0x277D84F90];
LABEL_20:
    sub_22C3DB9B0(v10);

    goto LABEL_22;
  }

  v7 = v6;
  v27 = MEMORY[0x277D84F90];
  v8 = v6 & ~(v6 >> 63);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_22C3B63D4(0, v8, 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v25 = v5;
    v9 = 0;
    v10 = v27;
    v11 = v5 & 0xC000000000000001;
    v24 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x2318B8460](v9, v5);
      }

      else
      {
        if (v9 >= *(v24 + 16))
        {
          goto LABEL_24;
        }
      }

      swift_beginAccess();

      sub_22C4923C4();
      if (v3)
      {

        swift_bridgeObjectRelease_n();

        goto LABEL_19;
      }

      v14 = v13;

      v16 = *(v27 + 16);
      v15 = *(v27 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22C3B63D4(v15 > 1, v16 + 1, 1);
      }

      *(v27 + 16) = v16 + 1;
      *(v27 + 8 * v16 + 32) = v14;
      ++v9;
      v5 = v25;
      if (v12 == v7)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_22C497AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  if (a1 < 0)
  {
    v22 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v23 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v24 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v23;
    v26 = *(v24 + 16);
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    sub_22C480170(v22, v23);

    v27 = sub_22C497AB8(v26, a2, a3, a4);

    if (v4)
    {
      sub_22C48FEE0(v25[2], v25[3]);
      swift_deallocUninitializedObject();

LABEL_19:

      return;
    }

    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v25[4] = v28;

LABEL_22:

    return;
  }

  v8 = *(a1 + 16);
  v9 = sub_22C36E2B8();
  if (!v9)
  {
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v13 = MEMORY[0x277D84F90];
LABEL_20:
    sub_22C3DB9B0(v13);

    goto LABEL_22;
  }

  v10 = v9;
  v33 = MEMORY[0x277D84F90];
  v11 = v9 & ~(v9 >> 63);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_22C3B63D4(0, v11, 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v31 = v8;
    v12 = 0;
    v13 = v33;
    v14 = v8 & 0xC000000000000001;
    v29 = v8 & 0xFFFFFFFFFFFFFF8;
    v30 = v10;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14)
      {
        MEMORY[0x2318B8460](v12, v8);
      }

      else
      {
        if (v12 >= *(v29 + 16))
        {
          goto LABEL_24;
        }
      }

      swift_beginAccess();

      v16 = v6;
      sub_22C492838();
      if (v5)
      {

        goto LABEL_19;
      }

      v18 = v17;

      v20 = *(v33 + 16);
      v19 = *(v33 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_22C3B63D4(v19 > 1, v20 + 1, 1);
      }

      *(v33 + 16) = v20 + 1;
      *(v33 + 8 * v20 + 32) = v18;
      ++v12;
      v8 = v31;
      v6 = v16;
      if (v15 == v30)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

void sub_22C497F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    v21 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v23 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    sub_22C36D2A8();
    v24 = swift_allocObject();
    v24[2] = v21;
    v24[3] = v22;
    v25 = *(v23 + 16);
    sub_22C49C9D8();
    swift_bridgeObjectRetain_n();
    sub_22C480170(v21, v22);

    a3(v25, a2);
    sub_22C49CA20();

    if (v4)
    {
      sub_22C48FEE0(v24[2], v24[3]);
      sub_22C36D2A8();
      swift_deallocUninitializedObject();
      sub_22C49C9D8();
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v26 = swift_allocObject();
    *(v26 + 16) = a3;
    v24[4] = v26;
    sub_22C37B9F8();
    swift_bridgeObjectRelease_n();
    goto LABEL_21;
  }

  v6 = *(a1 + 16);
  v7 = sub_22C36E2B8();
  if (!v7)
  {
    sub_22C37B9F8();
    swift_bridgeObjectRetain_n();
    v11 = MEMORY[0x277D84F90];
LABEL_19:
    sub_22C3DB9B0(v11);
    sub_22C37B9F8();
    swift_bridgeObjectRelease_n();

LABEL_21:

    return;
  }

  v8 = v7;
  v32 = MEMORY[0x277D84F90];
  v9 = v7 & ~(v7 >> 63);
  sub_22C37B9F8();
  swift_bridgeObjectRetain_n();

  sub_22C3B63D4(0, v9, 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v32;
    v12 = v6 & 0xC000000000000001;
    v27 = v6 & 0xFFFFFFFFFFFFFF8;
    v28 = v8;
    v29 = v6;
    while (1)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12)
      {
        v14 = MEMORY[0x2318B8460](v10, v6);
      }

      else
      {
        if (v10 >= *(v27 + 16))
        {
          goto LABEL_23;
        }

        v14 = *(v6 + 8 * v10 + 32);
      }

      sub_22C36CA70(v14 + 16, v31);
      v15 = *(v14 + 16);

      v16 = a4(v15, a2);
      if (v4)
      {
        sub_22C49C9D8();
        swift_bridgeObjectRelease_n();

        return;
      }

      v17 = v16;

      v32 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_22C3B63D4(v18 > 1, v19 + 1, 1);
        v11 = v32;
      }

      *(v11 + 16) = v19 + 1;
      *(v11 + 8 * v19 + 32) = v17;
      ++v10;
      v6 = v29;
      if (v13 == v28)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

void sub_22C498210(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 < 0)
  {
    v17 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v20 = swift_allocObject();
    v20[2] = v17;
    v20[3] = v18;
    v21 = *(v19 + 16);
    sub_22C480170(v17, v18);

    v22 = sub_22C498210(v21, a2);

    if (v2)
    {
      sub_22C48FEE0(v20[2], v20[3]);
      swift_deallocUninitializedObject();
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v20[4] = v23;
    }
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = sub_22C36E2B8();
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v8 = v6;
      v25 = MEMORY[0x277D84F90];
      v9 = v6 & ~(v6 >> 63);

      sub_22C3B63D4(0, v9, 0);
      if ((v8 & 0x8000000000000000) == 0)
      {
        v10 = 0;
        v7 = v25;
        v24 = v8;
        while (1)
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2318B8460](v10, v5);
          }

          else
          {
            if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }
          }

          swift_beginAccess();

          v12 = a2;
          sub_22C4930DC();
          if (v3)
          {

            return;
          }

          v14 = v13;

          v16 = *(v25 + 16);
          v15 = *(v25 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_22C3B63D4(v15 > 1, v16 + 1, 1);
          }

          *(v25 + 16) = v16 + 1;
          *(v25 + 8 * v16 + 32) = v14;
          ++v10;
          a2 = v12;
          if (v11 == v24)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      sub_22C3DB9B0(v7);
    }
  }
}

void sub_22C4984AC()
{
  sub_22C370030();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v1;
  if (v2 < 0)
  {
    v22 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v23 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    sub_22C36D2A8();
    v24 = swift_allocObject();
    v24[2] = v22;
    v24[3] = v23;
    sub_22C480170(v22, v23);

    sub_22C4984AC();
    v26 = v25;

    if (v0)
    {
      sub_22C48FEE0(v24[2], v24[3]);
      sub_22C36D2A8();
      swift_deallocUninitializedObject();
    }

    else
    {
      sub_22C37EBD0();
      _s3BoxCMa_0(v30, v31, v32, v33);
      v24[4] = sub_22C48C6B4(v26);
    }
  }

  else
  {
    v35 = &v35;
    MEMORY[0x28223BE20](v1);
    v34[2] = v6;
    v34[3] = v4;
    v34[4] = v9;
    v34[5] = v8;
    sub_22C37EBD0();
    _s3BoxCMa(v10, v11, v12, v13);
    v14 = sub_22C90A68C();
    sub_22C37EBD0();
    v19 = type metadata accessor for PromptTree(v15, v16, v17, v18);

    v20 = sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    WitnessTable = swift_getWitnessTable();
    sub_22C48FF50(sub_22C49878C, v34, v14, v19, v20, WitnessTable, MEMORY[0x277D84950], &v36);

    if (!v0)
    {
      sub_22C37EBD0();
      sub_22C490324(v27, v28, v29);
    }
  }

  sub_22C36FB20();
}

uint64_t sub_22C4986CC@<X0>(void *a2@<X5>, void *a3@<X8>)
{
  swift_beginAccess();

  sub_22C4938BC();
  v7 = v6;

  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_22C4987B0()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C4987F4(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  if (a2 >> 61 == 1)
  {
    v11 = swift_projectBox();
    sub_22C49C7B0(v11, v10, type metadata accessor for PromptTreeIdentifier.Label);
    result = sub_22C49C7B0(v10, v7, type metadata accessor for PromptTreeIdentifier.Label);
    v12 = *a1;
    v13 = *(*a1 + 16);
    if (v13)
    {
      result = sub_22C62832C(v10);
      if (v14)
      {
        v13 = *(*(v12 + 56) + 8 * result);
      }

      else
      {
        v13 = 0;
      }
    }

    if (v13 == -1)
    {
      __break(1u);
    }

    else
    {
      swift_isUniquelyReferenced_nonNull_native();
      v16 = *a1;
      sub_22C62C3D4();
      *a1 = v16;
      sub_22C49C758(v7, type metadata accessor for PromptTreeIdentifier.Label);
      return sub_22C49C758(v10, type metadata accessor for PromptTreeIdentifier.Label);
    }
  }

  return result;
}

uint64_t sub_22C49896C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 >> 61 != 4 || (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) & 1) != 0)
  {

    return v3;
  }

  v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  swift_beginAccess();
  v6 = *(v5 + 16);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C49C8E4(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label, &unk_22C916664);

  v7 = MEMORY[0x277D84F90];
  v8 = sub_22C909F0C();
  v15 = v7;
  v14[2] = sub_22C4966D4(v8, &v15, v6);
  if (!v2)
  {

    v14[1] = v5;
    v9 = *(v5 + 16);
    v15 = v7;

    sub_22C496374(MEMORY[0x277D84FA0], &v15, v9);
    v11 = v10;

    v14[0] = v14;
    v15 = v11;
    MEMORY[0x28223BE20](v12);
    sub_22C3A5908(&qword_27D9BCF30, &qword_22C917258);
    sub_22C3D32C8(&qword_27D9BCF38, &qword_27D9BCF30, &qword_22C917258, MEMORY[0x277D83B68]);
    v13 = sub_22C90A50C();

    if (v13)
    {
    }

    else
    {
      v3 = swift_allocObject();

      *(v3 + 16) = 0;
      *(v3 + 24) = 0xE000000000000000;
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22C498C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;

  v8 = sub_22C498D1C(sub_22C49C94C, v6, a2);
  sub_22C3A5908(&qword_27D9BCF40, qword_22C917260);
  sub_22C3D32C8(qword_27D9BCF48, &qword_27D9BCF40, qword_22C917260, MEMORY[0x277D83970]);
  v4 = sub_22C90A50C();

  return v4 & 1;
}

unint64_t sub_22C498D1C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v5 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v38 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  result = MEMORY[0x28223BE20](v8);
  v13 = &v32 - v12;
  v14 = 0;
  v39 = a3;
  v17 = *(a3 + 64);
  v16 = a3 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

LABEL_8:
    v23 = *(v38 + 72);
    sub_22C49C7B0(*(v39 + 48) + v23 * (__clz(__rbit64(v20)) | (v14 << 6)), v10, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C49C6F8(v10, v13, type metadata accessor for PromptTreeIdentifier.Label);
    v24 = v36(v13);
    if (v3)
    {
      sub_22C49C758(v13, type metadata accessor for PromptTreeIdentifier.Label);
      v31 = v35;

      return v31;
    }

    v20 &= v20 - 1;
    if (v24)
    {
      sub_22C49C6F8(v13, v34, type metadata accessor for PromptTreeIdentifier.Label);
      v25 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B674C(0, *(v25 + 16) + 1, 1);
        v25 = v40;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v35 = v28 + 1;
        v33 = v28;
        sub_22C3B674C(v27 > 1, v28 + 1, 1);
        v29 = v35;
        v28 = v33;
        v25 = v40;
      }

      *(v25 + 16) = v29;
      v30 = *(v38 + 80);
      v35 = v25;
      result = sub_22C49C6F8(v34, v25 + ((v30 + 32) & ~v30) + v28 * v23, type metadata accessor for PromptTreeIdentifier.Label);
    }

    else
    {
      result = sub_22C49C758(v13, type metadata accessor for PromptTreeIdentifier.Label);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return v35;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_22C499048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) && (v6 = sub_22C62832C(a1), (v7 & 1) != 0))
  {
    v8 = *(*(a2 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = sub_22C62832C(a1);
    if (v11)
    {
      v9 = *(*(a3 + 56) + 8 * v10);
    }

    else
    {
      v9 = 0;
    }
  }

  return v8 < v9;
}

void sub_22C4990DC(uint64_t a1@<X8>)
{
  v3 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  if (*(*v1 + 16))
  {
    sub_22C49C580(&v7 - v4);
    v6 = type metadata accessor for PromptTreeIdentifier(0);
    if (sub_22C370B74(v5, 1, v6) == 1)
    {
      sub_22C36DD28(v5, &qword_27D9BCF28, qword_22C9175E0);
      sub_22C83ACAC(*(*v1 + 16) - 1, a1);
    }

    else
    {
      sub_22C49C6F8(v5, a1, type metadata accessor for PromptTreeIdentifier);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22C4991DC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v57 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v50 = v12;
    v51 = v7;
    v52 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_22C90B62C();

        sub_22C909FFC();
        v20 = sub_22C90B66C();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_22C90B4FC() & 1) != 0)
          {
            v54 = v48;
            v55 = v16;
            v56 = v11;
            v3 = v51;
            v12 = v52;
            v53[0] = v52;
            v53[1] = v51;

            v25 = *(v5 + 32);
            v45 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v45;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v46 = &v44;
              MEMORY[0x28223BE20](v24);
              v7 = &v44 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v49 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v50;
              while (1)
              {
                v47 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_22C90B62C();

                sub_22C909FFC();
                v34 = sub_22C90B66C();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v51;
                    v12 = v52;
                    v29 = v50;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_22C90B4FC();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v49[v7];
                v49[v7] = v39 & ~v8;
                v3 = v51;
                v12 = v52;
                v29 = v50;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v47 - 1;
                if (__OFSUB__(v47, 1))
                {
                  __break(1u);
                }

                if (v47 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  sub_22C7EBDD0(v49, v45, v47, v5);
                  v5 = v40;
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v42 = swift_slowAlloc();
            v43 = sub_22C49C470(v42, v45, (v5 + 56), v45, v5, v7, v53);

            MEMORY[0x2318B9880](v42, -1, -1);
            v12 = v53[0];
            v48 = v54;
            v5 = v43;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v51;
        v14 = v52;
        v12 = v50;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_22C36A674(v14);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

uint64_t sub_22C4996B4(uint64_t a1, uint64_t a2)
{
  v201 = *MEMORY[0x277D85DE8];
  v150 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v4 = MEMORY[0x28223BE20](v150);
  v6 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v171 = &v147 - v7;
  v8 = sub_22C90430C();
  v180 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v179 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v147 - v11;
  v149 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v13 = MEMORY[0x28223BE20](v149);
  v186 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v168 = &v147 - v15;
  v188 = sub_22C902D0C();
  v16 = *(v188 - 8);
  v17 = MEMORY[0x28223BE20](v188);
  v159 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v151 = &v147 - v19;
  v20 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  v21 = MEMORY[0x28223BE20](v20);
  v183 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v147 - v23;
  v25 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v152 = (&v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v147 = &v147 - v28;
  v29 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v148 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v174 = (&v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v189 = (&v147 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v173 = &v147 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v195 = &v147 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v192 = &v147 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v161 = (&v147 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v172 = (&v147 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v160 = &v147 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v190 = &v147 - v47;
  MEMORY[0x28223BE20](v46);
  v184 = &v147 - v48;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v177 = v12;
  v178 = v8;
  v50 = a1 + 56;
  v49 = *(a1 + 56);
  v51 = -1 << *(a1 + 32);
  v156 = ~v51;
  if (-v51 < 64)
  {
    v52 = ~(-1 << -v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & v49;
  v153 = (63 - v51) >> 6;
  v194 = (a2 + 56);
  v176 = v180 + 16;
  v175 = (v180 + 8);
  v187 = (v16 + 8);
  v166 = (v16 + 32);

  v54 = 0;
  v170 = a2;
  v191 = v20;
  v185 = v29;
  v167 = v24;
  v55 = a1;
  v155 = a1;
  v165 = v6;
  for (i = a1 + 56; ; v50 = i)
  {
    v56 = v53;
    v57 = v54;
    v193 = v54;
    if (v53)
    {
LABEL_11:
      v59 = (v56 - 1) & v56;
      v60 = v147;
      sub_22C49C7B0(v55[6] + *(v148 + 72) * (__clz(__rbit64(v56)) | (v57 << 6)), v147, type metadata accessor for PromptTreeIdentifier.Label);
      v61 = 0;
    }

    else
    {
      v58 = v54;
      while (1)
      {
        v57 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_162;
        }

        if (v57 >= v153)
        {
          break;
        }

        v56 = *(v50 + 8 * v57);
        ++v58;
        if (v56)
        {
          goto LABEL_11;
        }
      }

      v59 = 0;
      v61 = 1;
      v57 = v58;
      v60 = v147;
    }

    sub_22C36C640(v60, v61, 1, v29);
    v196 = v55;
    v197 = v50;
    v198 = v156;
    v199 = v57;
    v169 = v57;
    v164 = v59;
    v200 = v59;
    if (sub_22C370B74(v60, 1, v29) == 1)
    {
      sub_22C36DD28(v60, &qword_27D9BCF20, &unk_22C922830);
      v96 = v55;
      goto LABEL_157;
    }

    sub_22C49C6F8(v60, v184, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C90B62C();
    sub_22C48640C();
    v62 = sub_22C90B66C();
    v63 = -1 << *(a2 + 32);
    v53 = v62 & ~v63;
    v64 = v53 >> 6;
    a1 = 1 << v53;
    v6 = v183;
    v65 = v167;
    if (((1 << v53) & v194[v53 >> 6]) != 0)
    {
      break;
    }

LABEL_73:
    sub_22C49C758(v184, type metadata accessor for PromptTreeIdentifier.Label);
    v54 = v169;
    v53 = v164;
    v55 = v155;
  }

  v182 = ~v63;
  v193 = *(v148 + 72);
  while (1)
  {
    v181 = v64;
    v66 = v29;
    v67 = v190;
    sub_22C49C7B0(*(a2 + 48) + v193 * v53, v190, type metadata accessor for PromptTreeIdentifier.Label);
    v68 = *(v20 + 48);
    v69 = v67;
    v29 = v66;
    sub_22C49C7B0(v69, v65, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C49C7B0(v184, v65 + v68, type metadata accessor for PromptTreeIdentifier.Label);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    v80 = v160;
    sub_22C49C7B0(v65, v160, type metadata accessor for PromptTreeIdentifier.Label);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C49C758(v190, type metadata accessor for PromptTreeIdentifier.Label);
      (*v187)(v80, v188);
      goto LABEL_38;
    }

    v85 = v65 + v68;
    v86 = v151;
    v87 = v188;
    (*v166)(v151, v85, v188);
    v88 = sub_22C902CFC();
    v89 = *v187;
    (*v187)(v86, v87);
    sub_22C49C758(v190, type metadata accessor for PromptTreeIdentifier.Label);
    v90 = v87;
    v29 = v185;
    v89(v80, v90);
    v65 = v167;
    v6 = v183;
    sub_22C49C758(v167, type metadata accessor for PromptTreeIdentifier.Label);
    if (v88)
    {
      v65 = v184;
      goto LABEL_77;
    }

LABEL_72:
    v53 = (v53 + 1) & v182;
    v64 = v53 >> 6;
    a1 = 1 << v53;
    if ((v194[v53 >> 6] & (1 << v53)) == 0)
    {
      goto LABEL_73;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    v55 = v161;
    sub_22C49C7B0(v65, v161, type metadata accessor for PromptTreeIdentifier.Label);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22C49C758(v190, type metadata accessor for PromptTreeIdentifier.Label);
      v84 = type metadata accessor for PromptTreeIdentifier.TurnChange;
LABEL_37:
      sub_22C49C758(v55, v84);
LABEL_38:
      sub_22C36DD28(v65, &qword_27D9BCBA0, &unk_22C9166D0);
      goto LABEL_72;
    }

    v81 = v65 + v68;
    v82 = v171;
    sub_22C49C6F8(v81, v171, type metadata accessor for PromptTreeIdentifier.TurnChange);
    v83 = *v82;
    switch(*v55)
    {
      case 3:
        if (v83 != 3)
        {
          goto LABEL_70;
        }

        goto LABEL_53;
      case 4:
        if (v83 != 4)
        {
          goto LABEL_70;
        }

        goto LABEL_53;
      case 5:
        if (v83 != 5)
        {
          goto LABEL_70;
        }

        goto LABEL_53;
      case 6:
        if (v83 != 6)
        {
          goto LABEL_70;
        }

        goto LABEL_53;
      default:
        if (*v55 != v83 || (v83 - 7) >= 0xFFFFFFFC)
        {
          goto LABEL_70;
        }

LABEL_53:
        v92 = v55[1] == *(v171 + 1) && v55[2] == *(v171 + 2);
        if (v92 || (sub_22C90B4FC()) && (v55[3] == *(v171 + 3) ? (v93 = v55[4] == *(v171 + 4)) : (v93 = 0), (v93 || (sub_22C90B4FC()) && (v55[5] == *(v171 + 5) ? (v94 = v55[6] == *(v171 + 6)) : (v94 = 0), v94 || (sub_22C90B4FC())))
        {
          v95 = sub_22C90067C();
          sub_22C49C758(v190, type metadata accessor for PromptTreeIdentifier.Label);
          if (v95)
          {
            sub_22C49C758(v171, type metadata accessor for PromptTreeIdentifier.TurnChange);
            sub_22C49C758(v55, type metadata accessor for PromptTreeIdentifier.TurnChange);
            sub_22C49C758(v184, type metadata accessor for PromptTreeIdentifier.Label);
            goto LABEL_77;
          }
        }

        else
        {
LABEL_70:
          sub_22C49C758(v190, type metadata accessor for PromptTreeIdentifier.Label);
        }

        sub_22C49C758(v171, type metadata accessor for PromptTreeIdentifier.TurnChange);
        sub_22C49C758(v55, type metadata accessor for PromptTreeIdentifier.TurnChange);
        sub_22C49C758(v65, type metadata accessor for PromptTreeIdentifier.Label);
        break;
    }

    goto LABEL_72;
  }

  v55 = v172;
  sub_22C49C7B0(v65, v172, type metadata accessor for PromptTreeIdentifier.Label);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C49C758(v190, type metadata accessor for PromptTreeIdentifier.Label);
    v84 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
    goto LABEL_37;
  }

  v71 = v65 + v68;
  v57 = v168;
  sub_22C49C6F8(v71, v168, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
  if ((sub_22C48819C(*v55, *v57) & 1) == 0 || (v72 = v55[1], v73 = v72[2], v163 = *(v168 + 1), v74 = v163[2], v162 = v73, v73 != v74))
  {
LABEL_39:
    sub_22C49C758(v190, type metadata accessor for PromptTreeIdentifier.Label);
LABEL_40:
    sub_22C49C758(v168, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
    sub_22C49C758(v55, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
    sub_22C49C758(v65, type metadata accessor for PromptTreeIdentifier.Label);
    a2 = v170;
    v6 = v183;
    goto LABEL_72;
  }

  if (!v162 || v72 == v163)
  {
LABEL_27:
    v79 = sub_22C90962C();
    sub_22C49C758(v190, type metadata accessor for PromptTreeIdentifier.Label);
    if (v79)
    {
      sub_22C49C758(v184, type metadata accessor for PromptTreeIdentifier.Label);
      sub_22C49C758(v168, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      sub_22C49C758(v55, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      a2 = v170;
      v6 = v183;
LABEL_77:
      v97 = sub_22C49C758(v65, type metadata accessor for PromptTreeIdentifier.Label);
      v98 = *(a2 + 32);
      v57 = ((1 << v98) + 63) >> 6;
      v55 = (8 * v57);
      if ((v98 & 0x3Fu) > 0xD)
      {
        goto LABEL_165;
      }

LABEL_78:
      v162 = v57;
      v163 = &v147;
      MEMORY[0x28223BE20](v97);
      v99 = &v147 - ((v55 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v99, v194, v55);
      v100 = *&v99[8 * v181] & ~a1;
      v168 = v99;
      *&v99[8 * v181] = v100;
      v101 = *(a2 + 16) - 1;
      v57 = v155;
      v55 = v152;
      v53 = i;
      v102 = v153;
      v103 = v169;
      a1 = v164;
LABEL_79:
      v167 = v101;
LABEL_80:
      while (2)
      {
        if (a1)
        {
          v169 = v103;
          v104 = v103;
LABEL_86:
          v105 = __clz(__rbit64(a1));
          v106 = (a1 - 1) & a1;
          sub_22C49C7B0(*(v57 + 48) + (v105 | (v104 << 6)) * v193, v55, type metadata accessor for PromptTreeIdentifier.Label);
          v107 = 0;
        }

        else
        {
          while (1)
          {
            v104 = v103 + 1;
            if (__OFADD__(v103, 1))
            {
              __break(1u);
              goto LABEL_160;
            }

            if (v104 >= v102)
            {
              break;
            }

            a1 = *(v53 + 8 * v104);
            ++v103;
            if (a1)
            {
              v169 = v104;
              goto LABEL_86;
            }
          }

          v169 = v103;
          v106 = 0;
          v107 = 1;
        }

        sub_22C36C640(v55, v107, 1, v29);
        v196 = v57;
        v197 = v53;
        v198 = v156;
        v199 = v169;
        v200 = v106;
        if (sub_22C370B74(v55, 1, v29) == 1)
        {
          sub_22C36DD28(v55, &qword_27D9BCF20, &unk_22C922830);
          sub_22C7EBF94();
          a2 = v143;
          goto LABEL_156;
        }

        v164 = v106;
        sub_22C49C6F8(v55, v192, type metadata accessor for PromptTreeIdentifier.Label);
        sub_22C90B62C();
        sub_22C48640C();
        v108 = sub_22C90B66C();
        v109 = -1 << *(a2 + 32);
        v53 = v108 & ~v109;
        v110 = v53 >> 6;
        a1 = 1 << v53;
        if (((1 << v53) & v194[v53 >> 6]) == 0)
        {
LABEL_148:
          sub_22C49C758(v192, type metadata accessor for PromptTreeIdentifier.Label);
          v57 = v155;
          v55 = v152;
          v53 = i;
          v102 = v153;
          v103 = v169;
          a1 = v164;
          continue;
        }

        break;
      }

      v190 = ~v109;
      while (1)
      {
        v111 = a2;
        v112 = *(a2 + 48) + v53 * v193;
        a2 = v195;
        sub_22C49C7B0(v112, v195, type metadata accessor for PromptTreeIdentifier.Label);
        v113 = *(v191 + 48);
        sub_22C49C7B0(a2, v6, type metadata accessor for PromptTreeIdentifier.Label);
        sub_22C49C7B0(v192, v6 + v113, type metadata accessor for PromptTreeIdentifier.Label);
        v114 = swift_getEnumCaseMultiPayload();
        if (v114)
        {
          if (v114 == 1)
          {
            v115 = v189;
            sub_22C49C7B0(v6, v189, type metadata accessor for PromptTreeIdentifier.Label);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              sub_22C49C758(v195, type metadata accessor for PromptTreeIdentifier.Label);
              v129 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
              goto LABEL_112;
            }

            v116 = v6 + v113;
            v55 = v115;
            v57 = v186;
            sub_22C49C6F8(v116, v186, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
            if ((sub_22C48819C(*v55, *v57) & 1) != 0 && (v117 = *(v186 + 8), v184 = v189[1], v118 = *(v184 + 16), v182 = v117, v119 = *(v117 + 16), v181 = v118, v118 == v119))
            {
              if (v181 && v184 != v182)
              {
                v29 = 0;
                v120 = (*(v180 + 80) + 32) & ~*(v180 + 80);
                v172 = (v184 + v120);
                v171 = (v182 + v120);
                while (v29 < *(v184 + 16))
                {
                  v121 = *(v180 + 72) * v29;
                  v57 = *(v180 + 16);
                  a2 = v177;
                  v55 = v178;
                  v6 = v176;
                  (v57)(v177, v172 + v121, v178);
                  if (v29 >= *(v182 + 16))
                  {
                    goto LABEL_161;
                  }

                  v122 = v179;
                  (v57)(v179, &v171[v121], v55);
                  sub_22C49C8E4(&qword_27D9BC808, MEMORY[0x277D85578], MEMORY[0x277D85590]);
                  v57 = sub_22C90A0BC();
                  v6 = v175;
                  v123 = *v175;
                  (*v175)(v122, v55);
                  v123(a2, v55);
                  if ((v57 & 1) == 0)
                  {
                    goto LABEL_114;
                  }

                  if (v181 == ++v29)
                  {
                    goto LABEL_102;
                  }
                }

LABEL_160:
                __break(1u);
LABEL_161:
                __break(1u);
LABEL_162:
                __break(1u);
LABEL_163:
                __break(1u);
                goto LABEL_164;
              }

LABEL_102:
              v124 = sub_22C90962C();
              sub_22C49C758(v195, type metadata accessor for PromptTreeIdentifier.Label);
              if (v124)
              {
                sub_22C49C758(v192, type metadata accessor for PromptTreeIdentifier.Label);
                sub_22C49C758(v186, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
                sub_22C49C758(v189, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
                v6 = v183;
                v142 = v183;
                a2 = v170;
                v29 = v185;
                goto LABEL_151;
              }
            }

            else
            {
LABEL_114:
              sub_22C49C758(v195, type metadata accessor for PromptTreeIdentifier.Label);
            }

            sub_22C49C758(v186, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
            sub_22C49C758(v189, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
            v6 = v183;
            sub_22C49C758(v183, type metadata accessor for PromptTreeIdentifier.Label);
            v111 = v170;
            v29 = v185;
          }

          else
          {
            v115 = v174;
            sub_22C49C7B0(v6, v174, type metadata accessor for PromptTreeIdentifier.Label);
            if (swift_getEnumCaseMultiPayload() != 2)
            {
              sub_22C49C758(v195, type metadata accessor for PromptTreeIdentifier.Label);
              v129 = type metadata accessor for PromptTreeIdentifier.TurnChange;
LABEL_112:
              sub_22C49C758(v115, v129);
LABEL_113:
              sub_22C36DD28(v6, &qword_27D9BCBA0, &unk_22C9166D0);
              goto LABEL_147;
            }

            v126 = v165;
            sub_22C49C6F8(v6 + v113, v165, type metadata accessor for PromptTreeIdentifier.TurnChange);
            v127 = *v126;
            v128 = v115;
            switch(*v115)
            {
              case 3:
                if (v127 == 3)
                {
                  goto LABEL_128;
                }

                goto LABEL_145;
              case 4:
                if (v127 != 4)
                {
                  goto LABEL_145;
                }

                goto LABEL_128;
              case 5:
                if (v127 != 5)
                {
                  goto LABEL_145;
                }

                goto LABEL_128;
              case 6:
                if (v127 != 6)
                {
                  goto LABEL_145;
                }

                goto LABEL_128;
              default:
                if (*v115 != v127 || (v127 - 7) >= 0xFFFFFFFC)
                {
                  goto LABEL_145;
                }

LABEL_128:
                v137 = v115[1] == v126[1] && v115[2] == v126[2];
                if (v137 || (sub_22C90B4FC()) && (v115[3] == v126[3] ? (v138 = v115[4] == v126[4]) : (v138 = 0), (v138 || (sub_22C90B4FC()) && (v115[5] == v126[5] ? (v139 = v115[6] == v126[6]) : (v139 = 0), v139 || (sub_22C90B4FC())))
                {
                  v140 = sub_22C90067C();
                  sub_22C49C758(v195, type metadata accessor for PromptTreeIdentifier.Label);
                  if (v140)
                  {
                    sub_22C49C758(v126, type metadata accessor for PromptTreeIdentifier.TurnChange);
                    sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.TurnChange);
                    sub_22C49C758(v192, type metadata accessor for PromptTreeIdentifier.Label);
                    v142 = v6;
                    goto LABEL_150;
                  }
                }

                else
                {
LABEL_145:
                  sub_22C49C758(v195, type metadata accessor for PromptTreeIdentifier.Label);
                }

                sub_22C49C758(v126, type metadata accessor for PromptTreeIdentifier.TurnChange);
                sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.TurnChange);
                sub_22C49C758(v6, type metadata accessor for PromptTreeIdentifier.Label);
                break;
            }
          }
        }

        else
        {
          v125 = v173;
          sub_22C49C7B0(v6, v173, type metadata accessor for PromptTreeIdentifier.Label);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_22C49C758(v195, type metadata accessor for PromptTreeIdentifier.Label);
            (*v187)(v125, v188);
            goto LABEL_113;
          }

          v130 = v6 + v113;
          v131 = v159;
          v132 = v188;
          (*v166)(v159, v130, v188);
          v133 = sub_22C902CFC();
          v134 = *v187;
          (*v187)(v131, v132);
          sub_22C49C758(v195, type metadata accessor for PromptTreeIdentifier.Label);
          v135 = v132;
          v29 = v185;
          v134(v125, v135);
          v6 = v183;
          sub_22C49C758(v183, type metadata accessor for PromptTreeIdentifier.Label);
          if (v133)
          {
            v142 = v192;
LABEL_150:
            a2 = v111;
LABEL_151:
            sub_22C49C758(v142, type metadata accessor for PromptTreeIdentifier.Label);
            v141 = *&v168[8 * v110];
            *&v168[8 * v110] = v141 & ~a1;
            v92 = (v141 & a1) == 0;
            v57 = v155;
            v55 = v152;
            v53 = i;
            v102 = v153;
            v103 = v169;
            a1 = v164;
            if (!v92)
            {
              v101 = (v167 - 1);
              if (__OFSUB__(v167, 1))
              {
                __break(1u);
              }

              if (v167 == 1)
              {

                a2 = MEMORY[0x277D84FA0];
                goto LABEL_156;
              }

              goto LABEL_79;
            }

            goto LABEL_80;
          }
        }

LABEL_147:
        v53 = (v53 + 1) & v190;
        v110 = v53 >> 6;
        a1 = 1 << v53;
        a2 = v111;
        if ((v194[v53 >> 6] & (1 << v53)) == 0)
        {
          goto LABEL_148;
        }
      }
    }

    goto LABEL_40;
  }

  v6 = 0;
  v75 = (*(v180 + 80) + 32) & ~*(v180 + 80);
  v158 = v72 + v75;
  v157 = v163 + v75;
  while (1)
  {
    if (v6 >= v72[2])
    {
      goto LABEL_163;
    }

    v29 = *(v180 + 72) * v6;
    v57 = *(v180 + 16);
    a2 = v177;
    v55 = v178;
    (v57)(v177, &v158[v29], v178);
    if (v6 >= v163[2])
    {
      break;
    }

    v76 = v179;
    (v57)(v179, &v157[v29], v55);
    sub_22C49C8E4(&qword_27D9BC808, MEMORY[0x277D85578], MEMORY[0x277D85590]);
    v57 = sub_22C90A0BC();
    v77 = *v175;
    v78 = v76;
    v20 = v191;
    (*v175)(v78, v55);
    v77(a2, v55);
    v65 = v167;
    v29 = v185;
    v55 = v172;
    if ((v57 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (v162 == ++v6)
    {
      goto LABEL_27;
    }
  }

LABEL_164:
  __break(1u);
LABEL_165:

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_78;
  }

  v145 = swift_slowAlloc();
  v146 = sub_22C49C4F8(v145, v57, v194, v57, a2, v53, &v196);

  MEMORY[0x2318B9880](v145, -1, -1);
  a2 = v146;
LABEL_156:
  v96 = v196;
LABEL_157:
  sub_22C36A674(v96);
  return a2;
}

void sub_22C49B404(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_22C90B62C();

    sub_22C909FFC();
    v16 = sub_22C90B66C();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_22C90B4FC();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = result[v19];
    result[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      sub_22C7EBDD0(result, a2, v26, a3);
      return;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22C49B5F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v92[1] = a2;
  v96 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  MEMORY[0x28223BE20](v96);
  v102 = (v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22C90430C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v104 = v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v120 = v92 - v14;
  v95 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  MEMORY[0x28223BE20](v95);
  v118 = (v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = sub_22C902D0C();
  v16 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v101 = v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  MEMORY[0x28223BE20](v113);
  v19 = v92 - v18;
  v20 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  MEMORY[0x28223BE20](v20 - 8);
  v98 = v92 - v21;
  v114 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v99 = *(v114 - 8);
  v22 = MEMORY[0x28223BE20](v114);
  v121 = (v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v119 = (v92 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v111 = v92 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v128 = v92 - v29;
  MEMORY[0x28223BE20](v28);
  v127 = v92 - v30;
  v31 = *(a3 + 16);
  v32 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v33 = *(a1 + v32) & ((-1 << a4) - 1);
  v94 = a1;
  *(a1 + v32) = v33;
  v34 = v31 - 1;
  v125 = a3 + 56;
  v126 = a3;
  v105 = v11 + 16;
  v109 = v11;
  v103 = (v11 + 8);
  v110 = (v16 + 8);
  v100 = (v16 + 32);
  v97 = a5;
  v106 = v10;
  while (2)
  {
    v93 = v34;
    while (1)
    {
LABEL_3:
      v35 = *a5;
      v36 = a5[1];
      v38 = a5[2];
      v37 = a5[3];
      v39 = a5[4];
      if (v39)
      {
        v40 = a5[3];
LABEL_9:
        v41 = (v39 - 1) & v39;
        v42 = v98;
        sub_22C49C7B0(*(v35 + 48) + *(v99 + 72) * (__clz(__rbit64(v39)) | (v40 << 6)), v98, type metadata accessor for PromptTreeIdentifier.Label);
        v43 = 0;
      }

      else
      {
        while (1)
        {
          v40 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
            goto LABEL_80;
          }

          if (v40 >= ((v38 + 64) >> 6))
          {
            break;
          }

          v39 = *(v36 + 8 * v40);
          ++v37;
          if (v39)
          {
            v37 = v40;
            goto LABEL_9;
          }
        }

        v41 = 0;
        v43 = 1;
        v42 = v98;
      }

      v44 = v114;
      sub_22C36C640(v42, v43, 1, v114);
      *a5 = v35;
      a5[1] = v36;
      a5[2] = v38;
      a5[3] = v37;
      a5[4] = v41;
      if (sub_22C370B74(v42, 1, v44) == 1)
      {
        sub_22C36DD28(v42, &qword_27D9BCF20, &unk_22C922830);

        sub_22C7EBF94();
        return;
      }

      sub_22C49C6F8(v42, v127, type metadata accessor for PromptTreeIdentifier.Label);
      v45 = v126;
      sub_22C90B62C();
      sub_22C48640C();
      v46 = sub_22C90B66C();
      v47 = -1 << *(v45 + 32);
      v48 = v46 & ~v47;
      v49 = v48 >> 6;
      v50 = 1 << v48;
      v51 = v113;
      if (((1 << v48) & *(v125 + 8 * (v48 >> 6))) != 0)
      {
        break;
      }

LABEL_71:
      sub_22C49C758(v127, type metadata accessor for PromptTreeIdentifier.Label);
      a5 = v97;
    }

    v123 = ~v47;
    v124 = *(v99 + 72);
    while (1)
    {
      v122 = v49;
      v52 = v128;
      sub_22C49C7B0(*(v126 + 48) + v124 * v48, v128, type metadata accessor for PromptTreeIdentifier.Label);
      v53 = *(v51 + 48);
      sub_22C49C7B0(v52, v19, type metadata accessor for PromptTreeIdentifier.Label);
      sub_22C49C7B0(v127, &v19[v53], type metadata accessor for PromptTreeIdentifier.Label);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v73 = v111;
        sub_22C49C7B0(v19, v111, type metadata accessor for PromptTreeIdentifier.Label);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.Label);
          (*v110)(v73, v112);
LABEL_36:
          sub_22C36DD28(v19, &qword_27D9BCBA0, &unk_22C9166D0);
          goto LABEL_70;
        }

        v78 = v101;
        v79 = v112;
        (*v100)(v101, &v19[v53], v112);
        v80 = sub_22C902CFC();
        v81 = *v110;
        (*v110)(v78, v79);
        sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.Label);
        v82 = v79;
        v51 = v113;
        v81(v73, v82);
        sub_22C49C758(v19, type metadata accessor for PromptTreeIdentifier.Label);
        if (v80)
        {
          v88 = v127;
          goto LABEL_74;
        }

        goto LABEL_70;
      }

      v55 = v121;
      if (EnumCaseMultiPayload != 1)
      {
        break;
      }

      v55 = v119;
      sub_22C49C7B0(v19, v119, type metadata accessor for PromptTreeIdentifier.Label);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.Label);
        v77 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
LABEL_35:
        sub_22C49C758(v55, v77);
        goto LABEL_36;
      }

      v56 = &v19[v53];
      v57 = v55;
      v58 = v118;
      sub_22C49C6F8(v56, v118, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      v59 = sub_22C48819C(*v57, *v58);
      v60 = v120;
      if ((v59 & 1) != 0 && (v61 = v119[1], v116 = v118[1], v117 = v61, v62 = *(v116 + 16), v115 = *(v61 + 16), v115 == v62))
      {
        if (v115 && v117 != v116)
        {
          v63 = 0;
          v64 = (*(v109 + 80) + 32) & ~*(v109 + 80);
          v108 = v117 + v64;
          v107 = v116 + v64;
          while (v63 < *(v117 + 16))
          {
            v65 = *(v109 + 72) * v63;
            v66 = *(v109 + 16);
            v67 = v106;
            v66(v60, v108 + v65, v106);
            if (v63 >= *(v116 + 16))
            {
              goto LABEL_81;
            }

            v68 = v104;
            v66(v104, v107 + v65, v67);
            sub_22C49C8E4(&qword_27D9BC808, MEMORY[0x277D85578], MEMORY[0x277D85590]);
            v69 = sub_22C90A0BC();
            v70 = *v103;
            v71 = v68;
            v60 = v120;
            (*v103)(v71, v67);
            v70(v60, v67);
            if ((v69 & 1) == 0)
            {
              goto LABEL_37;
            }

            if (v115 == ++v63)
            {
              goto LABEL_25;
            }
          }

LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          return;
        }

LABEL_25:
        v72 = sub_22C90962C();
        sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.Label);
        if (v72)
        {
          sub_22C49C758(v127, type metadata accessor for PromptTreeIdentifier.Label);
          sub_22C49C758(v118, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
          v89 = v119;
          v90 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference;
          goto LABEL_73;
        }
      }

      else
      {
LABEL_37:
        sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.Label);
      }

      sub_22C49C758(v118, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      sub_22C49C758(v119, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      sub_22C49C758(v19, type metadata accessor for PromptTreeIdentifier.Label);
      v51 = v113;
LABEL_70:
      v48 = (v48 + 1) & v123;
      v49 = v48 >> 6;
      v50 = 1 << v48;
      if ((*(v125 + 8 * (v48 >> 6)) & (1 << v48)) == 0)
      {
        goto LABEL_71;
      }
    }

    sub_22C49C7B0(v19, v121, type metadata accessor for PromptTreeIdentifier.Label);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.Label);
      v77 = type metadata accessor for PromptTreeIdentifier.TurnChange;
      goto LABEL_35;
    }

    v74 = &v19[v53];
    v75 = v102;
    sub_22C49C6F8(v74, v102, type metadata accessor for PromptTreeIdentifier.TurnChange);
    v76 = *v75;
    switch(*v55)
    {
      case 3:
        if (v76 == 3)
        {
          goto LABEL_51;
        }

        goto LABEL_68;
      case 4:
        if (v76 != 4)
        {
          goto LABEL_68;
        }

        goto LABEL_51;
      case 5:
        if (v76 != 5)
        {
          goto LABEL_68;
        }

        goto LABEL_51;
      case 6:
        if (v76 != 6)
        {
          goto LABEL_68;
        }

        goto LABEL_51;
      default:
        if (*v55 != v76 || (v76 - 7) >= 0xFFFFFFFC)
        {
          goto LABEL_68;
        }

LABEL_51:
        v84 = v55[1] == v75[1] && v55[2] == v75[2];
        if (!v84 && (sub_22C90B4FC() & 1) == 0 || (v55[3] == v75[3] ? (v85 = v55[4] == v75[4]) : (v85 = 0), !v85 && (sub_22C90B4FC() & 1) == 0 || (v55[5] == v75[5] ? (v86 = v55[6] == v75[6]) : (v86 = 0), !v86 && (sub_22C90B4FC() & 1) == 0)))
        {
LABEL_68:
          sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.Label);
LABEL_69:
          sub_22C49C758(v75, type metadata accessor for PromptTreeIdentifier.TurnChange);
          sub_22C49C758(v121, type metadata accessor for PromptTreeIdentifier.TurnChange);
          sub_22C49C758(v19, type metadata accessor for PromptTreeIdentifier.Label);
          goto LABEL_70;
        }

        v87 = sub_22C90067C();
        sub_22C49C758(v128, type metadata accessor for PromptTreeIdentifier.Label);
        if ((v87 & 1) == 0)
        {
          goto LABEL_69;
        }

        sub_22C49C758(v75, type metadata accessor for PromptTreeIdentifier.TurnChange);
        sub_22C49C758(v121, type metadata accessor for PromptTreeIdentifier.TurnChange);
        v90 = type metadata accessor for PromptTreeIdentifier.Label;
        v89 = v127;
LABEL_73:
        sub_22C49C758(v89, v90);
        v88 = v19;
LABEL_74:
        sub_22C49C758(v88, type metadata accessor for PromptTreeIdentifier.Label);
        v91 = *(v94 + 8 * v122);
        *(v94 + 8 * v122) = v91 & ~v50;
        a5 = v97;
        if ((v91 & v50) == 0)
        {
          goto LABEL_3;
        }

        v34 = v93 - 1;
        if (__OFSUB__(v93, 1))
        {
          goto LABEL_82;
        }

        if (v93 != 1)
        {
          continue;
        }

        return;
    }
  }
}

uint64_t sub_22C49C470(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_22C49B404(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_22C49C4F8(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_22C49B5F0(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

void sub_22C49C580(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C887608();
    v3 = v7;
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = type metadata accessor for PromptTreeIdentifier(0);
    sub_22C49C6F8(v3 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a1, type metadata accessor for PromptTreeIdentifier);
    *(v3 + 16) = v5;
    *v1 = v3;

    sub_22C36C640(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22C49C688(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C49C6F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22C49C758(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C49C7B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_22C49C810(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (a3)
  {

    sub_22C7DC1A4();
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    sub_22C7D9C10();
    v7 = v12;
    v9 = v13;
    v11 = 0;
  }

  *a5 = v7;
  *(a5 + 8) = v9 & 1;
  *(a5 + 16) = v11;
}

uint64_t sub_22C49C8E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C49CA2C()
{
}

uint64_t sub_22C49CA7C()
{
}

uint64_t sub_22C49CA9C()
{
}

uint64_t sub_22C49CABC(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_22C49CBAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_22C49CC00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

uint64_t sub_22C49CC54(uint64_t a1, unint64_t a2)
{
  v4 = sub_22C9063DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  result = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  if (a2 >> 61 == 5 && *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == 1 && *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 4)
  {
    v20 = v5;
    swift_beginAccess();
    type metadata accessor for PromptTreeIdentifier.Label(0);

    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C49CF3C();
    sub_22C909F0C();
    sub_22C4A0390();
    if (v2)
    {

      sub_22C49CF94(v11);
      sub_22C903F7C();
      v14 = sub_22C9063CC();
      v15 = sub_22C90AACC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_22C366000, v14, v15, "Could not generate a prompt string for a quotable string!", v16, 2u);
        MEMORY[0x2318B9880](v16, -1, -1);
      }

      else
      {
      }

      return (*(v20 + 8))(v7, v4);
    }

    else
    {
      v17 = v13;
      v18 = v12;

      sub_22C47715C(v18, v17);

      return swift_bridgeObjectRelease_n();
    }
  }

  return result;
}

unint64_t sub_22C49CF3C()
{
  result = qword_27D9BC4A0;
  if (!qword_27D9BC4A0)
  {
    type metadata accessor for PromptTreeIdentifier.Label(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC4A0);
  }

  return result;
}

uint64_t sub_22C49CF94(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C49CFFC(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD000, &qword_22C917398);
  MEMORY[0x28223BE20](v2 - 8);
  v61 = &v48 - v3;
  v60 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v49 = *(v60 - 8);
  v4 = MEMORY[0x28223BE20](v60);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = &v48 - v6;
  v7 = &qword_27D9BD010;
  v62 = sub_22C3A5908(&qword_27D9BD010, &qword_22C9173A0);
  v8 = MEMORY[0x28223BE20](v62);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  v58 = &v48 - v12;
  v53 = MEMORY[0x277D84F98];
  v65 = MEMORY[0x277D84F98];
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v63 = a1;

  v19 = 0;
  v56 = v17;
  for (i = a1 + 64; ; v13 = i)
  {
    v20 = v19;
    if (!v16)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v21 = v7;
      v19 = v20;
LABEL_11:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v63;
      v25 = *(v63 + 48);
      v26 = sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
      v27 = *(v26 - 8);
      v54 = *(v27 + 72);
      v55 = v27;
      v28 = v58;
      (*(v27 + 16))(v58, v25 + v54 * v23, v26);
      v29 = v62;
      *(v28 + *(v62 + 48)) = *(*(v24 + 56) + 8 * v23);
      v30 = v59;
      sub_22C3D7EEC(v28, v59, v21, &qword_22C9173A0);
      v31 = *(v29 + 48);
      swift_getKeyPath();
      v64 = *(v30 + v31);

      v32 = v61;
      swift_getAtKeyPath();

      if (sub_22C370B74(v32, 1, v60) != 1)
      {
        break;
      }

      sub_22C36DD28(v30, v21, &qword_22C9173A0);
      result = sub_22C36DD28(v32, &qword_27D9BD000, &qword_22C917398);
      v20 = v19;
      v7 = v21;
      v17 = v56;
      v13 = i;
      if (!v16)
      {
LABEL_7:
        while (1)
        {
          v19 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v19 >= v17)
          {

            return v53;
          }

          v16 = *(v13 + 8 * v19);
          ++v20;
          if (v16)
          {
            v21 = v7;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v33 = v50;
    sub_22C49F054(v32, v50, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
    sub_22C3D7EEC(v30, v52, v21, &qword_22C9173A0);
    sub_22C49F054(v33, v51, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
    v34 = v53;
    v7 = v21;
    if (v53[3] <= v53[2])
    {
      sub_22C88BF00();
      v34 = v65;
    }

    v35 = v34;
    sub_22C3D32C8(&qword_27D9BCFF0, &qword_27D9BCFE8, &qword_22C917388, MEMORY[0x277D1DBD0]);
    result = sub_22C909F7C();
    v36 = v35 + 8;
    v53 = v35;
    v37 = -1 << *(v35 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~v35[(v38 >> 6) + 8]) == 0)
    {
      break;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~v35[(v38 >> 6) + 8])) | v38 & 0x7FFFFFFFFFFFFFC0;
    v42 = v54;
    v41 = v55;
LABEL_25:
    *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v47 = v53;
    (*(v41 + 32))(v53[6] + v40 * v42, v52, v26);
    sub_22C49F054(v51, v47[7] + *(v49 + 72) * v40, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
    ++v47[2];

    v17 = v56;
  }

  v43 = 0;
  v44 = (63 - v37) >> 6;
  v42 = v54;
  v41 = v55;
  while (++v39 != v44 || (v43 & 1) == 0)
  {
    v45 = v39 == v44;
    if (v39 == v44)
    {
      v39 = 0;
    }

    v43 |= v45;
    v46 = v36[v39];
    if (v46 != -1)
    {
      v40 = __clz(__rbit64(~v46)) + (v39 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22C49D5DC(uint64_t a1)
{
  v128 = sub_22C3A5908(&qword_27D9BCFD0, &qword_22C917370);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v2);
  sub_22C36D5B4();
  v118 = v3;
  v4 = sub_22C3A5908(&qword_27D9BCFD8, &qword_22C917378);
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v130 = v6 - v7;
  sub_22C369930();
  MEMORY[0x28223BE20](v8);
  v10 = v109 - v9;
  v11 = sub_22C3A5908(&qword_27D9BCFE0, &qword_22C917380);
  sub_22C369914(v11);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C36D5B4();
  v126 = v13;
  v14 = sub_22C36BA0C();
  v15 = type metadata accessor for PromptTreeIdentifier(v14);
  sub_22C36985C();
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  v111 = type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C369824();
  v131 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C369ABC();
  v124 = v22 - v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  v125 = v109 - v25;
  sub_22C369930();
  MEMORY[0x28223BE20](v26);
  v121 = v109 - v27;
  sub_22C369930();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA64();
  v122 = v29;
  sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  sub_22C3A5908(&qword_27D9BAEE0, &qword_22C90D788);
  sub_22C3D32C8(&qword_27D9BCFF0, &qword_27D9BCFE8, &qword_22C917388, MEMORY[0x277D1DBD0]);
  v30 = MEMORY[0x277D84F90];
  v31 = sub_22C909F0C();
  v135[0] = v30;
  v109[1] = a1;
  v32 = sub_22C495534(v31, v135, a1);

  v109[0] = sub_22C49CFFC(v32);
  v110 = 0;
  v33 = 1 << *(v32 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v32 + 64);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  v114 = MEMORY[0x277D84F90];
  v127 = v10;
  while (v35)
  {
LABEL_9:
    v39 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v40 = *(*(v32 + 56) + ((v37 << 9) | (8 * v39)));
    if (*(v40 + 16))
    {
      type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
      sub_22C49F0B4();
      sub_22C49EF54(v41, v19, v42);
      v133 = v15;
      swift_storeEnumTagMultiPayload();

      v43 = v122;
      sub_22C486784();
      sub_22C374B34();
      sub_22C49EFFC(v19, v44);
      sub_22C38708C();
      sub_22C49EFB4(&qword_27D9BC4A0, v45, &unk_22C916664);
      v46 = sub_22C909F0C();
      v47 = MEMORY[0x28223BE20](v46);
      v109[-2] = v43;
      v48 = v110;
      v132 = sub_22C60440C(v47, sub_22C49E800, &v109[-4], v40);
      v110 = v48;

      sub_22C3733E0();
      sub_22C49EFFC(v43, v49);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C5913D8();
        v114 = v53;
      }

      sub_22C37B968();
      v51 = *(v50 + 16);
      v15 = v133;
      if (v51 >= *(v50 + 24) >> 1)
      {
        sub_22C5913D8();
        v114 = v54;
      }

      sub_22C37B968();
      *(v52 + 16) = v51 + 1;
      *(v52 + 8 * v51 + 32) = v132;
    }
  }

  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v38 >= v36)
    {
      break;
    }

    v35 = *(v32 + 64 + 8 * v38);
    ++v37;
    if (v35)
    {
      v37 = v38;
      goto LABEL_9;
    }
  }

  sub_22C38708C();
  sub_22C49EFB4(v55, v56, &unk_22C916664);
  v57 = sub_22C909F0C();
  sub_22C37B968();
  v113 = *(v59 + 16);
  v112 = v59 + 32;
LABEL_16:
  if (v58 == v113)
  {
LABEL_44:

    sub_22C4923C4();
    v107 = v106;

    return v107;
  }

  sub_22C37B968();
  if (v60 < *(v61 + 16))
  {
    v62 = *(v112 + 8 * v60);
    v117 = v60 + 1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = v57;
    sub_22C8920A0();
    v64 = v135[1];
    v123 = v135[0];
    v65 = v137;
    v66 = v138;
    v119 = v139;
    v120 = v140;
    v115 = v136;
    v67 = (v136 + 64) >> 6;
    v116 = v62;

    while (1)
    {
      LODWORD(v133) = isUniquelyReferenced_nonNull_native;
      v129 = v65;
      if (!v66)
      {
        v70 = v65;
        while (1)
        {
          v69 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            break;
          }

          if (v69 >= v67)
          {
            v132 = 0;
            v81 = 1;
            v79 = v127;
            v76 = v128;
            goto LABEL_26;
          }

          v68 = *(v64 + 8 * v69);
          ++v70;
          if (v68)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

      v68 = v66;
      v69 = v65;
LABEL_25:
      v132 = (v68 - 1) & v68;
      v71 = v122;
      v72 = v123;
      v73 = *(v131 + 72) * (__clz(__rbit64(v68)) | (v69 << 6));
      sub_22C49EF54(*(v123 + 48) + v73, v122, type metadata accessor for PromptTreeIdentifier.Label);
      v74 = *(v72 + 56) + v73;
      v75 = v121;
      sub_22C49EF54(v74, v121, type metadata accessor for PromptTreeIdentifier.Label);
      v76 = v128;
      v77 = *(v128 + 48);
      sub_22C369D74();
      v78 = v71;
      v79 = v127;
      sub_22C49F054(v78, v127, v80);
      sub_22C49F054(v75, v79 + v77, type metadata accessor for PromptTreeIdentifier.Label);
      v81 = 0;
      v70 = v69;
LABEL_26:
      v82 = 1;
      sub_22C36C640(v79, v81, 1, v76);
      v83 = v130;
      sub_22C3D7EEC(v79, v130, &qword_27D9BCFD8, &qword_22C917378);
      v84 = sub_22C370B74(v83, 1, v76);
      v85 = v126;
      if (v84 != 1)
      {
        v86 = v118;
        sub_22C3D7EEC(v130, v118, &qword_27D9BCFD0, &qword_22C917370);
        v119(v86);
        sub_22C36DD28(v86, &qword_27D9BCFD0, &qword_22C917370);
        v82 = 0;
      }

      v87 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
      sub_22C36C640(v85, v82, 1, v87);
      v88 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
      v89 = sub_22C370B74(v85, 1, v88);
      v90 = v125;
      if (v89 == 1)
      {
        sub_22C36A674(v123);

        v58 = v117;
        goto LABEL_16;
      }

      v91 = *(v88 + 48);
      sub_22C369D74();
      sub_22C49F054(v85, v90, v92);
      v93 = v124;
      sub_22C49F054(v85 + v91, v124, v88);
      v95 = sub_22C62832C(v90);
      v96 = v57[2];
      v97 = (v94 & 1) == 0;
      if (__OFADD__(v96, v97))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v98 = v94;
      if (v57[3] >= v96 + v97)
      {
        if (v133)
        {
          if (v94)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_22C3A5908(&qword_27D9BCFF8, &qword_22C917390);
          sub_22C90B16C();
          if (v98)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_22C88C24C();
        v99 = sub_22C62832C(v90);
        if ((v98 & 1) != (v100 & 1))
        {
          goto LABEL_49;
        }

        v95 = v99;
        if (v98)
        {
LABEL_36:
          sub_22C3733E0();
          sub_22C49EFFC(v90, v101);
          v57 = v134;
          sub_22C49EEF0(v93, v134[7] + *(v131 + 72) * v95);
          goto LABEL_41;
        }
      }

      v57 = v134;
      v134[(v95 >> 6) + 8] |= 1 << v95;
      v102 = *(v131 + 72) * v95;
      sub_22C49F054(v90, v57[6] + v102, type metadata accessor for PromptTreeIdentifier.Label);
      sub_22C49F054(v93, v57[7] + v102, type metadata accessor for PromptTreeIdentifier.Label);
      v103 = v57[2];
      v104 = __OFADD__(v103, 1);
      v105 = v103 + 1;
      if (v104)
      {
        goto LABEL_46;
      }

      v57[2] = v105;
LABEL_41:
      isUniquelyReferenced_nonNull_native = 1;
      v65 = v70;
      v66 = v132;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  sub_22C90B54C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C49E0DC(uint64_t *a1, unint64_t a2)
{
  v66 = a1;
  v3 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v64 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22C369838();
  v67 = v5 - v4;
  sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  sub_22C369824();
  v62 = v7;
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v61 = v8 - v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v65 = v11;
  v12 = sub_22C36BA0C();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v12);
  sub_22C36985C();
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  sub_22C36BA64();
  v68 = v22;
  sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  v26 = sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C36985C();
  sub_22C36D5A8();
  result = MEMORY[0x28223BE20](v27);
  v30 = &v61 - v29;
  if (a2 >> 61 != 2)
  {
    return result;
  }

  v31 = swift_projectBox();
  sub_22C49C688(v31, v25);

  type metadata accessor for PromptTreeIdentifier(0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C374B34();
    v34 = v25;
    return sub_22C49EFFC(v34, v33);
  }

  sub_22C3D7EEC(v25, v30, &qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C49F0CC();
  sub_22C49EF54(v30, v16, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C36DD28(v30, &qword_27D9BCBA8, &qword_22C9166E0);
    sub_22C38867C();
    v34 = v16;
    return sub_22C49EFFC(v34, v33);
  }

  sub_22C3727B0();
  v35 = v68;
  sub_22C49F054(v16, v68, v36);
  v37 = &v30[*(v26 + 36)];
  v38 = *(v37 + 1);
  v69 = *v37;
  v70 = v38;
  sub_22C36BCEC();
  sub_22C49EF54(v35, v20, v39);
  sub_22C38B94C();
  sub_22C49EFB4(v40, v41, &unk_22C916244);

  v42 = v65;
  sub_22C90678C();
  sub_22C49F0B4();
  v43 = v67;
  sub_22C49EF54(v30, v67, v44);
  v45 = v66;
  swift_isUniquelyReferenced_nonNull_native();
  v69 = *v45;
  v46 = v69;
  v47 = sub_22C628A00();
  if (__OFADD__(*(v46 + 16), (v48 & 1) == 0))
  {
    __break(1u);
    goto LABEL_17;
  }

  v49 = v47;
  v50 = v48;
  sub_22C3A5908(&qword_27D9BD020, &unk_22C9173E0);
  v51 = sub_22C90B15C();
  v52 = v69;
  if ((v51 & 1) == 0)
  {
    v56 = v62;
    v55 = v63;
    goto LABEL_12;
  }

  v53 = sub_22C628A00();
  v56 = v62;
  v55 = v63;
  if ((v50 & 1) != (v54 & 1))
  {
LABEL_17:
    result = sub_22C90B54C();
    __break(1u);
    return result;
  }

  v49 = v53;
LABEL_12:
  *v45 = v52;
  if ((v50 & 1) == 0)
  {
    (*(v56 + 16))(v61, v42, v55);
    sub_22C62F728();
  }

  v57 = *(v52 + 56) + 8 * v49;
  sub_22C3D0F50();
  v58 = *(*v57 + 16);
  sub_22C3D1114(v58);
  (*(v56 + 8))(v42, v55);
  sub_22C49F0E4();
  sub_22C49EFFC(v68, v59);
  sub_22C36DD28(v30, &qword_27D9BCBA8, &qword_22C9166E0);
  v60 = *v57;
  *(v60 + 16) = v58 + 1;
  return sub_22C49F054(v43, v60 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v58, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
}

uint64_t sub_22C49E62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for PromptTreeIdentifier.Label(0);
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for PromptTreeIdentifier(0);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C49EF54(a2, v11, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
  swift_storeEnumTagMultiPayload();
  sub_22C486784();
  sub_22C49EFFC(v11, type metadata accessor for PromptTreeIdentifier);
  sub_22C49EF54(a3, v7, type metadata accessor for PromptTreeIdentifier.Label);
  sub_22C36C640(v7, 0, 1, v8);
  return sub_22C603470();
}

unint64_t sub_22C49E81C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a2;
  v88 = a3;
  v4 = sub_22C3A5908(&qword_27D9BCF20, &unk_22C922830);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = &v77 - v6;
  v89 = type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v11 = (v9 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = &v77 - v13;
  v15 = sub_22C3A5908(&qword_27D9BD000, &qword_22C917398);
  sub_22C369914(v15);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  sub_22C36D5B4();
  v86 = v17;
  sub_22C3A5908(&qword_27D9BCFE8, &qword_22C917388);
  sub_22C369824();
  v84 = v19;
  v85 = v18;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  sub_22C36D5B4();
  v82 = v21;
  v22 = sub_22C36BA0C();
  v83 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(v22);
  sub_22C36985C();
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v78 = v25 - v24;
  v26 = sub_22C36BA0C();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v26);
  sub_22C36985C();
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v30 = v29 - v28;
  v80 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v31);
  sub_22C369ABC();
  v79 = v32 - v33;
  sub_22C369930();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA64();
  v81 = v35;
  v36 = sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v37);
  sub_22C36D5B4();
  v39 = v38;
  v40 = sub_22C36BA0C();
  v90 = type metadata accessor for PromptTreeIdentifier(v40);
  sub_22C36985C();
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v44 = v43 - v42;
  if (a1 >> 61 == 1)
  {
    v50 = swift_projectBox();
    sub_22C49EF54(v50, v14, type metadata accessor for PromptTreeIdentifier.Label);
    sub_22C605778();
    sub_22C3733E0();
    sub_22C49EFFC(v14, v51);
    if (sub_22C370B74(v7, 1, v89) != 1)
    {
      sub_22C369D74();
      sub_22C49F054(v7, v11, v53);
      v54 = swift_allocBox();
      sub_22C49F054(v11, v55, v11);
      return v54 | 0x2000000000000000;
    }

    sub_22C36DD28(v7, &qword_27D9BCF20, &unk_22C922830);
    goto LABEL_8;
  }

  if (a1 >> 61 != 2 || (v45 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300), v46 = swift_projectBox(), v89 = *(v46 + *(v45 + 48)), swift_getEnumCaseMultiPayload() != 1))
  {
LABEL_8:

    return a1;
  }

  sub_22C49EF54(v46, v44, type metadata accessor for PromptTreeIdentifier);
  sub_22C3D7EEC(v44, v39, &qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C49F0CC();
  sub_22C49EF54(v39, v30, v47);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = v89;

    sub_22C38867C();
    sub_22C49EFFC(v30, v49);
  }

  else
  {
    sub_22C3727B0();
    v56 = v81;
    sub_22C49F054(v30, v81, v57);
    v58 = (v39 + *(v36 + 36));
    v59 = v58[1];
    v91 = *v58;
    v92 = v59;
    sub_22C36BCEC();
    sub_22C49EF54(v56, v79, v60);
    sub_22C38B94C();
    sub_22C49EFB4(v61, v62, &unk_22C916244);
    v48 = v89;

    v63 = v82;
    sub_22C90678C();
    v64 = v86;
    sub_22C605738(v63, v87);
    (*(v84 + 8))(v63, v85);
    sub_22C49F0E4();
    sub_22C49EFFC(v56, v65);
    if (sub_22C370B74(v64, 1, v83) != 1)
    {
      sub_22C36DD28(v39, &qword_27D9BCBA8, &qword_22C9166E0);
      v72 = v78;
      sub_22C49F054(v64, v78, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
      v73 = swift_allocBox();
      v75 = v74;
      v76 = *(v45 + 48);
      sub_22C49F054(v72, v74, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
      swift_storeEnumTagMultiPayload();
      *(v75 + v76) = v48;
      return v73 | 0x4000000000000000;
    }

    sub_22C36DD28(v64, &qword_27D9BD000, &qword_22C917398);
  }

  v66 = swift_allocBox();
  v68 = v67;
  v69 = *(v45 + 48);
  sub_22C49F0B4();
  sub_22C49EF54(v39, v70, v71);
  sub_22C36DD28(v39, &qword_27D9BCBA8, &qword_22C9166E0);
  swift_storeEnumTagMultiPayload();
  *(v68 + v69) = v48;
  return v66 | 0x4000000000000000;
}

uint64_t sub_22C49EE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C3A5908(&qword_27D9BCFD0, &qword_22C917370);
  v4 = a2 + *(sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0) + 48);

  return sub_22C88FB60(a2, v4, a1);
}

uint64_t sub_22C49EEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.Label(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C49EF54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C49EFB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C49EFFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C49F054(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_22C49F0FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v115 = a8;
  v123 = a5;
  v125 = a7;
  v132 = a6;
  v119 = a2;
  v130 = a9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1;
    v69 = a4;
    v73 = v9;
    v134 = MEMORY[0x277D84F90];
    sub_22C3B628C(0, v10, 0);
    v127 = v134;
    v19 = sub_22C57D74C();
    v20 = 0;
    v21 = v11 + 56;
    v77 = v11 + 64;
    v81 = v11 + 56;
    v85 = v10;
    v89 = v11;
    if ((v19 & 0x8000000000000000) == 0)
    {
      while (v19 < 1 << *(v11 + 32))
      {
        if ((*(v21 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v11 + 36) != v12)
        {
          goto LABEL_32;
        }

        v22 = *(v11 + 48) + 24 * v19;
        v23 = *v22;
        v24 = *(v22 + 8);
        LODWORD(v109) = *(v22 + 16);
        HIDWORD(v109) = v13;
        sub_22C38614C(15, *v22, v13, v14, v15, v16, v17, v18, v69, v73, v77, v81, v85, v89, v20, 1 << v19, v19 >> 6, v12, v109, v115, v119);
        v25 = sub_22C90A47C();
        sub_22C37BA04(v25, v26, v27, v28, v29, v30, v31, v32, v70, v74, v78, v82, v86, v90, v93, v97, v101, v105, v110, v116, v120, v123, v125, v127, v130, v132);
        sub_22C3858B4();
        sub_22C90AD0C();

        sub_22C4A7C6C(0xFuLL, v23, v10, v11);
        sub_22C37B5E0();
        if (!v35)
        {
          goto LABEL_33;
        }

        if (__OFADD__(v33, v34))
        {
          goto LABEL_34;
        }

        sub_22C4A7E20(0xFuLL, v33 + v34, v117, v131);
        v37 = v36;
        sub_22C38614C(15, v24, v38, v39, v40, v41, v42, v43, v71, v75, v79, v83, v87, v91, v94, v98, v102, v106, v111, v117, v121);
        v44 = sub_22C90A47C();
        sub_22C37BA04(v44, v45, v46, v47, v48, v49, v50, v51, v72, v76, v80, v84, v88, v92, v95, v99, v103, v107, v112, v118, v122, v124, v126, v128, v131, v133);
        sub_22C90AD0C();

        sub_22C4A7C6C(0xFuLL, v24, v10, v11);
        sub_22C37B5E0();
        if (!v35)
        {
          goto LABEL_35;
        }

        if (__OFADD__(v52, v53))
        {
          goto LABEL_36;
        }

        sub_22C4A7E20(0xFuLL, v52 + v53, v115, v130);
        if (v54 >> 14 < v37 >> 14)
        {
          goto LABEL_37;
        }

        v55 = v54;
        v56 = v129;
        v58 = *(v129 + 16);
        v57 = *(v129 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_22C3B628C(v57 > 1, v58 + 1, 1);
          v56 = v129;
        }

        *(v56 + 16) = v58 + 1;
        v59 = v56 + 24 * v58;
        *(v59 + 32) = v37;
        *(v59 + 40) = v55;
        *(v59 + 48) = v113;
        if (v114)
        {
          goto LABEL_41;
        }

        v10 = v85;
        v11 = v89;
        v60 = 1 << *(v89 + 32);
        v21 = v81;
        if (v19 >= v60)
        {
          goto LABEL_38;
        }

        if ((*(v81 + 8 * v104) & v100) == 0)
        {
          goto LABEL_39;
        }

        v127 = v56;
        if (*(v89 + 36) != v108)
        {
          goto LABEL_40;
        }

        sub_22C3855C8();
        if (v35)
        {
          v64 = v63 << 6;
          v65 = v63 + 1;
          v66 = (v77 + 8 * v63);
          while (v65 < (v60 + 63) >> 6)
          {
            v68 = *v66++;
            v67 = v68;
            v64 += 64;
            ++v65;
            if (v68)
            {
              sub_22C3A5038(v19, v61, 0);
              v60 = __clz(__rbit64(v67)) + v64;
              goto LABEL_26;
            }
          }

          sub_22C3A5038(v19, v61, 0);
        }

        else
        {
          v60 = __clz(__rbit64(v62)) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

LABEL_26:
        v20 = v96 + 1;
        if (v96 + 1 == v85)
        {
          goto LABEL_29;
        }

        v13 = 0;
        v12 = *(v89 + 36);
        v19 = v60;
        if (v60 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_22C49F4D4()
{
  sub_22C370030();
  v1 = v0;
  v34 = sub_22C902D0C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v33 = v6 - v5;
  v7 = *(v1 + 16);
  if (v7)
  {
    v38 = MEMORY[0x277D84F90];
    sub_22C3B7290(0, v7, 0);
    v10 = sub_22C4AAD90(v1);
    v11 = v38;
    v12 = 0;
    v13 = v1 + 64;
    v31 = v7;
    v32 = v3;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v1 + 32))
      {
        v14 = v10 >> 6;
        if ((*(v13 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v1 + 36) != v8)
        {
          goto LABEL_24;
        }

        v35 = v9;
        v36 = v12;
        v37 = v8;
        v15 = v11;
        (*(v3 + 16))(v33, *(v1 + 56) + *(v3 + 72) * v10, v34);
        v16 = sub_22C4A60B4();
        (*(v3 + 8))(v33, v34);
        v17 = v15;
        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22C3B7290(v18 > 1, v19 + 1, 1);
          v17 = v15;
        }

        *(v17 + 16) = v19 + 1;
        *(v17 + 8 * v19 + 32) = v16;
        v20 = 1 << *(v1 + 32);
        if (v10 >= v20)
        {
          goto LABEL_25;
        }

        v13 = v1 + 64;
        if ((*(v1 + 64 + 8 * v14) & (1 << v10)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v1 + 36) != v37)
        {
          goto LABEL_27;
        }

        sub_22C3855C8();
        if (v23)
        {
          v24 = v14 << 6;
          v25 = v14 + 1;
          v26 = (v1 + 72 + 8 * v14);
          v3 = v32;
          while (v25 < (v20 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              v29 = v11;
              sub_22C3A5038(v10, v21, v35 & 1);
              v11 = v29;
              v20 = __clz(__rbit64(v27)) + v24;
              goto LABEL_18;
            }
          }

          v30 = v11;
          sub_22C3A5038(v10, v21, v35 & 1);
          v11 = v30;
        }

        else
        {
          v20 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v3 = v32;
        }

LABEL_18:
        v12 = v36 + 1;
        if (v36 + 1 == v31)
        {
          goto LABEL_21;
        }

        v9 = 0;
        v8 = *(v1 + 36);
        v10 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_22C36FB20();
  }
}

void sub_22C49F7C8(uint64_t a1)
{
  v45 = sub_22C902D0C();
  v3 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22C902C4C();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v33 = v1;
    v49 = MEMORY[0x277D84F90];
    sub_22C3B7290(0, v7, 0);
    v8 = v49;
    v11 = sub_22C4AAD90(a1);
    v12 = 0;
    v13 = a1 + 64;
    v38 = (v3 + 8);
    v39 = v5 + 16;
    v40 = a1 + 64;
    v41 = v5;
    v36 = a1;
    v37 = v5 + 8;
    v34 = a1 + 72;
    v35 = v7;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(a1 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_24;
        }

        v46 = v10;
        v47 = v12;
        v48 = v9;
        v15 = v41;
        v16 = *(a1 + 56) + *(v41 + 72) * v11;
        v17 = v8;
        v19 = v42;
        v18 = v43;
        (*(v41 + 16))(v42, v16, v43);
        v20 = v44;
        sub_22C902C1C();
        v21 = sub_22C4A60B4();
        (*v38)(v20, v45);
        v22 = v19;
        v8 = v17;
        (*(v15 + 8))(v22, v18);
        v49 = v17;
        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        a1 = v36;
        if (v24 >= v23 >> 1)
        {
          sub_22C3B7290(v23 > 1, v24 + 1, 1);
          v8 = v49;
        }

        *(v8 + 16) = v24 + 1;
        *(v8 + 8 * v24 + 32) = v21;
        v25 = 1 << *(a1 + 32);
        v13 = v40;
        if (v11 >= v25)
        {
          goto LABEL_25;
        }

        v26 = *(v40 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v48)
        {
          goto LABEL_27;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v34 + 8 * v14);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_22C3A5038(v11, v48, v46 & 1);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_18;
            }
          }

          sub_22C3A5038(v11, v48, v46 & 1);
        }

LABEL_18:
        v12 = v47 + 1;
        if (v47 + 1 == v35)
        {
          return;
        }

        v10 = 0;
        v9 = *(a1 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void *sub_22C49FE24(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_22C90963C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v45 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v32 - v9;
  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  v46 = MEMORY[0x277D84F98];
  v43 = *(a2 + 16);
  v40 = (v4 + 16);
  v35 = v4 + 32;
  v36 = v4;
  v34 = (v4 + 8);
  v33 = xmmword_22C90F800;
  v37 = v3;
  v38 = a2;
  while (1)
  {
    if (v43 == v10)
    {

      return v11;
    }

    if (v10 >= *(a2 + 16))
    {
      break;
    }

    v12 = v44;
    sub_22C4AB80C();
    (*v40)(v45, &v12[*(v42 + 24)], v3);
    sub_22C628358();
    v15 = v14;
    v16 = v11[2];
    v17 = (v13 & 1) == 0;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_19;
    }

    v18 = v13;
    if (v11[3] < v16 + v17)
    {
      sub_22C88C544();
      v11 = v46;
      sub_22C628358();
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

      v15 = v19;
    }

    if (v18)
    {
      (*v34)(v45, v3);
      v21 = v11[7];
      sub_22C4AB198();
      v22 = *(v21 + 8 * v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 8 * v15) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C591554();
        v22 = v29;
        *(v21 + 8 * v15) = v29;
      }

      v24 = *(v22 + 16);
      if (v24 >= *(v22 + 24) >> 1)
      {
        sub_22C591554();
        v22 = v30;
        *(v21 + 8 * v15) = v30;
      }

      a2 = v38;
      *(v22 + 16) = v24 + 1;
      sub_22C4AB198();
      v3 = v37;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAE98, &qword_22C90D740);
      v25 = swift_allocObject();
      *(v25 + 16) = v33;
      sub_22C4AB198();
      v11[(v15 >> 6) + 8] |= 1 << v15;
      (*(v36 + 32))(v11[6] + *(v36 + 72) * v15, v45, v3);
      *(v11[7] + 8 * v15) = v25;
      v26 = v11[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_20;
      }

      v11[2] = v28;
    }

    ++v10;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4A02E8(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, void, void), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *(result + 16);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v13 = a3(0, v8 & ~(v8 >> 63), 0, MEMORY[0x277D84F90]);

    a4(v11);

    a5(v12);
    return v13;
  }

  return result;
}

void sub_22C4A0390()
{
  sub_22C370030();
  v201 = v1;
  sub_22C36D770();
  v3 = v2;
  v210 = v4;
  sub_22C9063DC();
  sub_22C369824();
  v197 = v6;
  v198 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v199 = v8 - v7;
  v200 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v195 = v10 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v13);
  v194 = v181 - v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  v193 = v181 - v16;
  sub_22C369930();
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  sub_22C3804A4();
  v21 = MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v181 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v27 = sub_22C369914(v26);
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  v30 = v29 - v28;
  switch(v3 >> 61)
  {
    case 1uLL:
      v38 = v30;
      swift_projectBox();
      sub_22C369D8C();
      sub_22C4AB80C();
      v195 = v38;
      v39 = sub_22C6053F8(v38, v210);
      if ((~v39 & 0xF000000000000007) == 0)
      {
        v40 = v199;
        sub_22C903F7C();

        v41 = sub_22C9063CC();
        v42 = sub_22C90AADC();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v208 = v44;
          *v43 = 136315138;
          sub_22C4AB8EC();
          v45 = sub_22C491AFC();
          v46 = sub_22C4A25D4(v45);
          v48 = v47;

          v49 = sub_22C36F9F4(v46, v48, &v208);

          *(v43 + 4) = v49;
          sub_22C36FF94(v44);
          MEMORY[0x2318B9880](v44, -1, -1);
          MEMORY[0x2318B9880](v43, -1, -1);
        }

        (*(v197 + 8))(v40, v198);
        sub_22C369D8C();
        v50 = v195;
        sub_22C4AB80C();
        sub_22C3D32C8(&qword_27D9BC4A8, &qword_27D9BC490, &unk_22C914240, &unk_22C917330);
        swift_willThrowTypedImpl();
        sub_22C3733F8();
        sub_22C4AB864(v50, v51);
        goto LABEL_97;
      }

      v56 = v39;
      sub_22C4AB8EC();
      sub_22C4A0390();
      if (v0)
      {
        sub_22C3733F8();
        sub_22C4AB864(v195, v58);
        sub_22C4546F8(v56);
        goto LABEL_77;
      }

      v196 = v57;
      sub_22C36D770();
      sub_22C3733F8();
      sub_22C4AB864(v195, v119);
      sub_22C4546F8(v56);
      goto LABEL_96;
    case 2uLL:
      sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      swift_projectBox();
      sub_22C3870A4();
      swift_beginAccess();

      sub_22C4AB8EC();
      sub_22C4A0390();
      v33 = v32;

      if (v0)
      {
        goto LABEL_77;
      }

      v196 = v33;
      v187 = 0;
      goto LABEL_96;
    case 3uLL:
      v34 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      sub_22C4AB8EC();
      v37 = sub_22C4A3004(v35, v36, v25);
      if (v0)
      {

        goto LABEL_77;
      }

      v62 = v37;
      v181[1] = v34;
      sub_22C36D770();

      v63 = 0;
      v64 = 0;
      v183 = *(v62 + 16);
      v184 = v62;
      v182 = v62 + 32;
      v65 = MEMORY[0x277D84FA0];
      v66 = 0xE000000000000000;
      while (2)
      {
        v196 = v64;
        if (v63 == v183)
        {

          goto LABEL_95;
        }

        if (v63 >= *(v184 + 16))
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v186 = v63;
        v67 = (v182 + 24 * v63);
        v68 = *v67;
        v69 = v67[1];
        v70 = v67[2];
        v208 = v64;
        v209 = v66;

        v192 = v68;
        v195 = v69;
        MEMORY[0x2318B7850](v68, v69);
        v193 = v209;
        v194 = v208;
        v71 = *(v70 + 16);
        v197 = v70;
        if (!v71)
        {
          v72 = MEMORY[0x277D84F90];
LABEL_57:
          v64 = v194;
          if (!__OFADD__(*(v72 + 16), *(v65 + 16)))
          {
            sub_22C591170();
            v208 = v109;

            sub_22C3CCEC4(v110);
            sub_22C3CCE08(v72);
            v111 = v208;
            v112 = *(v208 + 16);
            v113 = sub_22C3AF8F8();
            v114 = MEMORY[0x2318B7DB0](v112, &type metadata for PromptString.TaggedRange, v113);
            v206 = v114;
            v115 = *(v111 + 16);
            if (v115)
            {
              v116 = v111 + 48;
              do
              {
                v116 += 24;
                sub_22C6A45F4();
                --v115;
              }

              while (v115);

              v117 = v206;
            }

            else
            {
              v117 = v114;
            }

            v118 = v186 + 1;

            v63 = v118;
            v66 = v193;
            v65 = v117;
            continue;
          }

          goto LABEL_99;
        }

        break;
      }

      v185 = v65;
      v208 = MEMORY[0x277D84F90];
      sub_22C3B628C(0, v71, 0);
      v72 = v208;
      v73 = sub_22C57D74C();
      v76 = v73;
      v201 = 0;
      v77 = HIBYTE(v66) & 0xF;
      if ((v66 & 0x2000000000000000) == 0)
      {
        v77 = v64;
      }

      v211 = v70 + 56;
      v78 = 7;
      if (((v66 >> 60) & ((v64 & 0x800000000000000) == 0)) != 0)
      {
        v78 = 11;
      }

      v191 = v78 | (v77 << 16);
      v188 = v70 + 64;
      v190 = v66;
      v189 = v71;
      if ((v73 & 0x8000000000000000) == 0)
      {
        while (1)
        {
          if (v76 >= 1 << *(v70 + 32))
          {
            goto LABEL_78;
          }

          v79 = v76 >> 6;
          if ((*(v211 + 8 * (v76 >> 6)) & (1 << v76)) == 0)
          {
            goto LABEL_79;
          }

          if (*(v70 + 36) != v74)
          {
            goto LABEL_80;
          }

          v198 = 1 << v76;
          v199 = v74;
          LODWORD(v200) = v75;
          v80 = *(v70 + 48) + 24 * v76;
          v81 = *v80;
          v82 = *(v80 + 8);
          v83 = *(v80 + 16);
          sub_22C4A7C6C(0xFuLL, v191, v64, v66);
          v85 = v84;
          v86 = v81;
          v87 = v192;
          v88 = v195;
          sub_22C4A7C6C(0xFuLL, v86, v192, v195);
          v90 = v89;
          sub_22C4A7C6C(0xFuLL, v82, v87, v88);
          v74 = v85 + v90;
          if (__OFADD__(v85, v90))
          {
            goto LABEL_81;
          }

          v91 = v73;
          v93 = v193;
          v92 = v194;
          sub_22C4A7E20(0xFuLL, v74, v194, v193);
          v74 = v85 + v91;
          if (__OFADD__(v85, v91))
          {
            goto LABEL_82;
          }

          v94 = v73;
          sub_22C4A7E20(0xFuLL, v74, v92, v93);
          if (v73 >> 14 < v94 >> 14)
          {
            goto LABEL_83;
          }

          v95 = v73;
          v208 = v72;
          v97 = *(v72 + 16);
          v96 = *(v72 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_22C3B628C(v96 > 1, v97 + 1, 1);
            v72 = v208;
          }

          *(v72 + 16) = v97 + 1;
          v98 = v72 + 24 * v97;
          *(v98 + 32) = v94;
          *(v98 + 40) = v95;
          *(v98 + 48) = v83;
          if (v200)
          {
            goto LABEL_100;
          }

          v64 = v196;
          v70 = v197;
          v99 = 1 << *(v197 + 32);
          v66 = v190;
          v74 = v199;
          if (v76 >= v99)
          {
            goto LABEL_84;
          }

          if ((*(v211 + 8 * v79) & v198) == 0)
          {
            goto LABEL_85;
          }

          if (*(v197 + 36) != v199)
          {
            goto LABEL_86;
          }

          sub_22C3855C8();
          if (v102)
          {
            v104 = v79 << 6;
            v105 = v79 + 1;
            v106 = (v188 + 8 * v79);
            v103 = v189;
            while (v105 < (v99 + 63) >> 6)
            {
              v108 = *v106++;
              v107 = v108;
              v104 += 64;
              ++v105;
              if (v108)
              {
                v73 = sub_22C3A5038(v76, v100, 0);
                v99 = __clz(__rbit64(v107)) + v104;
                goto LABEL_51;
              }
            }

            v73 = sub_22C3A5038(v76, v100, 0);
LABEL_51:
            v70 = v197;
          }

          else
          {
            v99 = __clz(__rbit64(v101)) | v76 & 0x7FFFFFFFFFFFFFC0;
            v103 = v189;
          }

          if (v201 + 1 == v103)
          {
            break;
          }

          ++v201;
          v75 = 0;
          v74 = *(v70 + 36);
          v76 = v99;
          if (v99 < 0)
          {
            goto LABEL_78;
          }
        }

        v65 = v185;
        goto LABEL_57;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      v139 = v73;
      v140 = v74;
      v141 = v75;

      v142 = sub_22C5722F0(0x20202020uLL, 0xE400000000000000, MEMORY[0x277D84FA0], v139, v140, v141);
      v144 = v143;
      v146 = v145;

      v206 = v142;
      v207 = v144;
      v204 = 10;
      v205 = 0xE100000000000000;
      v202 = 0x202020200ALL;
      v203 = 0xE500000000000000;
      sub_22C3858B4();
      sub_22C3870A4();
      v147 = sub_22C90AD4C();
      v149 = v148;
      sub_22C4A7C6C(0xFuLL, 327687, 0x202020200AuLL, 0xE500000000000000);
      v151 = v150;
      sub_22C4A7C6C(0xFuLL, 65543, 0xAuLL, 0xE100000000000000);
      v153 = v151 - v152;
      if (!__OFSUB__(v151, v152))
      {

        v196 = v147;
        sub_22C49F0FC(v146, v142, v144, v146, 10, 0xE100000000000000, v153, v147, v149);
        sub_22C36D770();
        sub_22C3AD898(v154);

        goto LABEL_96;
      }

LABEL_101:
      __break(1u);
      return;
    case 4uLL:
      sub_22C3870A4();
      swift_beginAccess();

      sub_22C4AB8EC();
      sub_22C4A0390();
      if (v0)
      {
        goto LABEL_76;
      }

      v196 = v31;
      sub_22C36D770();

      goto LABEL_96;
    case 5uLL:
      v52 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (*((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == 1)
      {
        v196 = 0;
        switch(v52)
        {
          case 1:
            sub_22C36BD04();
            sub_22C4AB93C();
            sub_22C4AB8D8();
            sub_22C4A0390();
            if (v0)
            {
              goto LABEL_76;
            }

            goto LABEL_87;
          case 2:
            sub_22C36BD04();
            sub_22C4AB93C();
            sub_22C4AB8D8();
            sub_22C4A0390();
            if (v0)
            {
              goto LABEL_76;
            }

            v155 = v131;
            v156 = v132;

            sub_22C573C54(v155, v156);
            v158 = v157;
            v160 = v159;
            v162 = v161;

            v163 = MEMORY[0x277D84FA0];
            v164 = sub_22C5722F0(0x22uLL, 0xE100000000000000, MEMORY[0x277D84FA0], v158, v160, v162);
            v166 = v165;
            v168 = v167;

            sub_22C57A24C(v163, 0x22uLL, 0xE100000000000000);
            sub_22C36D770();
            v170 = sub_22C3AD898(v169);
            v196 = sub_22C5722F0(v164, v166, v168, 34, 0xE100000000000000, v170);

            break;
          case 3:
            sub_22C36BD04();

            sub_22C4AB8EC();
            sub_22C4A0390();
            if (v0)
            {
              goto LABEL_76;
            }

            v127 = v124;
            v128 = v125;
            v129 = v126;
            sub_22C36D770();

            v130 = sub_22C572494(&unk_283FAEDA8, v127, v128, v129);
            goto LABEL_93;
          case 4:
            sub_22C36BD04();
            sub_22C4AB93C();
            sub_22C4AB8D8();
            sub_22C4A0390();
            if (v0)
            {
              goto LABEL_76;
            }

            v175 = v133;
            v176 = v134;
            v177 = v135;
            sub_22C36D770();

            v196 = sub_22C572494(&unk_283FAED80, v175, v176, v177);

            goto LABEL_95;
          case 5:
            goto LABEL_96;
          case 6:
            sub_22C36BD04();

            sub_22C4AB8EC();
            sub_22C4A0390();
            if (v0)
            {
              goto LABEL_76;
            }

            v178 = v136;
            v179 = v137;
            v180 = v138;
            sub_22C36D770();

            sub_22C572C64(v178, v179, v180);
LABEL_93:
            sub_22C3721F0(v130);
            break;
          default:
            sub_22C36BD04();

            sub_22C4AB8EC();
            sub_22C4A0390();
            if (v0)
            {
              goto LABEL_76;
            }

            v171 = v53;
            v172 = v54;
            v173 = v55;
            sub_22C36D770();

            v174 = sub_22C5722F0(0x20202020uLL, 0xE400000000000000, MEMORY[0x277D84FA0], v171, v172, v173);
            sub_22C3721F0(v174);
            break;
        }
      }

      else
      {
        sub_22C36BD04();
        sub_22C4AB93C();
        sub_22C4AB8D8();
        sub_22C4A0390();
        if (v0)
        {
LABEL_76:

LABEL_77:
          sub_22C407C2C();
          goto LABEL_97;
        }

        v120 = v59;
        v121 = v60;
        v122 = v61;
        sub_22C36D770();

        sub_22C572798(v52, v120, v121, v122);
        sub_22C3721F0(v123);
      }

LABEL_95:

LABEL_96:
      sub_22C4AB8EC();
LABEL_97:
      sub_22C36FB20();
      return;
    default:
      v196 = *(v3 + 16);

      goto LABEL_96;
  }
}

void sub_22C4A1448(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v216 = a3;
  v225 = a1;
  v4 = sub_22C9063DC();
  v212 = *(v4 - 8);
  v213 = v4;
  MEMORY[0x28223BE20](v4);
  v214 = v196 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v6 = MEMORY[0x28223BE20](v215);
  v210 = v196 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v196 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v209 = (v196 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v208 = v196 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v196 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v196 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v196 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v196 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v196 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v196 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v196 - v33;
  v35 = type metadata accessor for PromptTreeIdentifier.Label(0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v196 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 61)
  {
    case 1uLL:
      v52 = v37;
      swift_projectBox();
      sub_22C4AB80C();
      v210 = v52;
      v53 = sub_22C48AFE4(v52, v225);
      if ((~v53 & 0xF000000000000007) != 0)
      {
        v73 = v53;
        v74 = v202;
        sub_22C4A1448(v225, v53, v26);
        if (v74)
        {
          sub_22C4AB864(v210, type metadata accessor for PromptTreeIdentifier.Label);
          sub_22C4546F8(v73);
          goto LABEL_77;
        }

        v211 = v75;
        v202 = 0;
        sub_22C4AB864(v210, type metadata accessor for PromptTreeIdentifier.Label);
        sub_22C4546F8(v73);
      }

      else
      {
        v54 = v214;
        sub_22C903F7C();

        v55 = sub_22C9063CC();
        v56 = sub_22C90AADC();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v223 = v58;
          *v57 = 136315138;
          v59 = sub_22C491AFC();
          v60 = sub_22C4A25D4(v59);
          v62 = v61;

          v63 = sub_22C36F9F4(v60, v62, &v223);

          *(v57 + 4) = v63;
          sub_22C36FF94(v58);
          MEMORY[0x2318B9880](v58, -1, -1);
          MEMORY[0x2318B9880](v57, -1, -1);
        }

        (*(v212 + 8))(v54, v213);
        v64 = v210;
        sub_22C4AB80C();
        sub_22C3D32C8(&qword_27D9BC4A8, &qword_27D9BC490, &unk_22C914240, &unk_22C917330);
        swift_willThrowTypedImpl();
        sub_22C4AB864(v64, type metadata accessor for PromptTreeIdentifier.Label);
      }

      return;
    case 2uLL:
      v42 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v43 = *(swift_projectBox() + *(v42 + 48));
      swift_beginAccess();
      v44 = *(v43 + 16);

      v45 = v202;
      sub_22C4A1448(v225, v44, v34);
      v47 = v46;

      if (v45)
      {
        goto LABEL_77;
      }

      v211 = v47;
      v202 = 0;
      return;
    case 3uLL:
      v48 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v49 = *(v48 + 16);

      v50 = v202;
      v51 = sub_22C4A35F0(v225, v49, v32);
      if (v50)
      {

        goto LABEL_77;
      }

      v81 = v51;
      v196[1] = v48;
      v202 = 0;

      v82 = 0;
      v83 = 0;
      v198 = *(v81 + 16);
      v199 = v81;
      v197 = v81 + 32;
      v84 = MEMORY[0x277D84FA0];
      v85 = 0xE000000000000000;
      while (2)
      {
        v211 = v85;
        if (v82 == v198)
        {

          goto LABEL_94;
        }

        if (v82 >= *(v199 + 16))
        {
          __break(1u);
          goto LABEL_97;
        }

        v201 = v82;
        v86 = (v197 + 24 * v82);
        v87 = *v86;
        v88 = v86[1];
        v89 = v86[2];
        v223 = v83;
        v224 = v85;

        v207 = v87;
        v210 = v88;
        MEMORY[0x2318B7850](v87, v88);
        v208 = v224;
        v209 = v223;
        v90 = *(v89 + 16);
        v212 = v89;
        if (!v90)
        {
          v91 = MEMORY[0x277D84F90];
LABEL_57:
          if (!__OFADD__(*(v91 + 16), *(v84 + 16)))
          {
            sub_22C591170();
            v223 = v127;

            sub_22C3CCEC4(v128);
            sub_22C3CCE08(v91);
            v129 = v223;
            v130 = v223[2];
            v131 = sub_22C3AF8F8();
            v132 = MEMORY[0x2318B7DB0](v130, &type metadata for PromptString.TaggedRange, v131);
            v221 = v132;
            v133 = *(v129 + 16);
            if (v133)
            {
              v134 = v129 + 48;
              do
              {
                v134 += 24;
                sub_22C6A45F4();
                --v133;
              }

              while (v133);

              v135 = v221;
            }

            else
            {
              v135 = v132;
            }

            v136 = v201 + 1;

            v82 = v136;
            v85 = v208;
            v83 = v209;
            v84 = v135;
            continue;
          }

LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        break;
      }

      v200 = v84;
      v223 = MEMORY[0x277D84F90];
      sub_22C3B628C(0, v90, 0);
      v91 = v223;
      v92 = sub_22C57D74C();
      v95 = v92;
      v216 = 0;
      v96 = HIBYTE(v85) & 0xF;
      if ((v85 & 0x2000000000000000) == 0)
      {
        v96 = v83;
      }

      v225 = v89 + 56;
      v97 = 7;
      if (((v85 >> 60) & ((v83 & 0x800000000000000) == 0)) != 0)
      {
        v97 = 11;
      }

      v206 = v97 | (v96 << 16);
      v203 = v89 + 64;
      v205 = v83;
      v204 = v90;
      if ((v92 & 0x8000000000000000) == 0)
      {
        while (v95 < 1 << *(v89 + 32))
        {
          v98 = v95 >> 6;
          if ((*(v225 + 8 * (v95 >> 6)) & (1 << v95)) == 0)
          {
            goto LABEL_79;
          }

          if (*(v89 + 36) != v93)
          {
            goto LABEL_80;
          }

          v213 = 1 << v95;
          v214 = v93;
          LODWORD(v215) = v94;
          v99 = *(v89 + 48) + 24 * v95;
          v100 = *v99;
          v101 = *(v99 + 8);
          v102 = *(v99 + 16);
          sub_22C4A7C6C(0xFuLL, v206, v83, v85);
          v104 = v103;
          v105 = v100;
          v106 = v207;
          v107 = v210;
          sub_22C4A7C6C(0xFuLL, v105, v207, v210);
          v109 = v108;
          sub_22C4A7C6C(0xFuLL, v101, v106, v107);
          v93 = v104 + v109;
          if (__OFADD__(v104, v109))
          {
            goto LABEL_81;
          }

          v110 = v92;
          v112 = v208;
          v111 = v209;
          sub_22C4A7E20(0xFuLL, v93, v209, v208);
          v93 = v104 + v110;
          if (__OFADD__(v104, v110))
          {
            goto LABEL_82;
          }

          v113 = v92;
          sub_22C4A7E20(0xFuLL, v93, v111, v112);
          if (v92 >> 14 < v113 >> 14)
          {
            goto LABEL_83;
          }

          v114 = v92;
          v223 = v91;
          v116 = *(v91 + 16);
          v115 = *(v91 + 24);
          if (v116 >= v115 >> 1)
          {
            sub_22C3B628C(v115 > 1, v116 + 1, 1);
            v91 = v223;
          }

          *(v91 + 16) = v116 + 1;
          v117 = v91 + 24 * v116;
          *(v117 + 32) = v113;
          *(v117 + 40) = v114;
          *(v117 + 48) = v102;
          if (v215)
          {
            goto LABEL_98;
          }

          v85 = v211;
          v89 = v212;
          v118 = 1 << *(v212 + 32);
          v83 = v205;
          v93 = v214;
          if (v95 >= v118)
          {
            goto LABEL_84;
          }

          v119 = *(v225 + 8 * v98);
          if ((v119 & v213) == 0)
          {
            goto LABEL_85;
          }

          if (*(v212 + 36) != v214)
          {
            goto LABEL_86;
          }

          v120 = v119 & (-2 << (v95 & 0x3F));
          if (v120)
          {
            v118 = __clz(__rbit64(v120)) | v95 & 0x7FFFFFFFFFFFFFC0;
            v121 = v204;
          }

          else
          {
            v122 = v98 << 6;
            v123 = v98 + 1;
            v124 = (v203 + 8 * v98);
            v121 = v204;
            while (v123 < (v118 + 63) >> 6)
            {
              v126 = *v124++;
              v125 = v126;
              v122 += 64;
              ++v123;
              if (v126)
              {
                v92 = sub_22C3A5038(v95, v214, 0);
                v118 = __clz(__rbit64(v125)) + v122;
                goto LABEL_51;
              }
            }

            v92 = sub_22C3A5038(v95, v214, 0);
LABEL_51:
            v89 = v212;
          }

          if (v216 + 1 == v121)
          {
            v84 = v200;
            goto LABEL_57;
          }

          ++v216;
          v94 = 0;
          v93 = *(v89 + 36);
          v95 = v118;
          if (v118 < 0)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      v169 = v92;
      v170 = v93;
      v171 = v94;
      v172 = v88;

      v173 = sub_22C5723D4(v169, v170, v171);
      v175 = v174;
      v177 = v176;

      v221 = v173;
      v222 = v175;
      v219 = 10;
      v220 = 0xE100000000000000;
      v217 = 0x202020200ALL;
      v218 = 0xE500000000000000;
      sub_22C3858B4();
      v178 = sub_22C90AD4C();
      v180 = v179;
      sub_22C4A7C6C(0xFuLL, 327687, 0x202020200AuLL, 0xE500000000000000);
      v182 = v181;
      sub_22C4A7C6C(0xFuLL, 65543, 0xAuLL, 0xE100000000000000);
      v184 = v182 - v183;
      if (!__OFSUB__(v182, v183))
      {

        v211 = v180;
        sub_22C49F0FC(v177, v173, v175, v177, 10, 0xE100000000000000, v184, v178, v180);
        v202 = v172;
        sub_22C3AD898(v185);

        goto LABEL_94;
      }

LABEL_99:
      __break(1u);
      return;
    case 4uLL:
      v38 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      swift_beginAccess();
      v39 = *(v38 + 16);

      v40 = v202;
      sub_22C4A1448(v225, v39, v29);
      if (v40)
      {
        goto LABEL_76;
      }

      v211 = v41;
      v202 = 0;

      return;
    case 5uLL:
      v65 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v66 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v67 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      if (v66 == 1)
      {
        v211 = 0xE000000000000000;
        switch(v65)
        {
          case 1:
            swift_beginAccess();
            v150 = *(v67 + 16);

            v88 = v202;
            v92 = sub_22C4A1448(v225, v150, v23);
            if (v88)
            {
              goto LABEL_76;
            }

            goto LABEL_87;
          case 2:
            swift_beginAccess();
            v151 = *(v67 + 16);

            v152 = v202;
            v153 = sub_22C4A1448(v225, v151, v208);
            if (v152)
            {
              goto LABEL_76;
            }

            v156 = v153;
            v157 = v154;
            v158 = v155;
            v202 = 0;

            sub_22C5725E4(v156, v157, v158);
            goto LABEL_92;
          case 3:
            swift_beginAccess();
            v141 = *(v67 + 16);

            v142 = v202;
            v143 = sub_22C4A1448(v225, v141, v209);
            if (v142)
            {
              goto LABEL_76;
            }

            v146 = v143;
            v147 = v144;
            v148 = v145;
            v202 = 0;

            sub_22C572494(&unk_283FAEB88, v146, v147, v148);
            goto LABEL_92;
          case 4:
            swift_beginAccess();
            v159 = *(v67 + 16);

            v160 = v202;
            v161 = sub_22C4A1448(v225, v159, v17);
            if (v160)
            {
              goto LABEL_76;
            }

            v189 = v161;
            v190 = v162;
            v191 = v163;
            v202 = 0;

            sub_22C572494(&unk_283FAEB60, v189, v190, v191);
            v211 = v192;

            goto LABEL_94;
          case 5:
            return;
          case 6:
            swift_beginAccess();
            v164 = *(v67 + 16);

            v165 = v202;
            v166 = sub_22C4A1448(v225, v164, v210);
            if (v165)
            {
              goto LABEL_76;
            }

            v193 = v166;
            v194 = v167;
            v195 = v168;
            v202 = 0;

            sub_22C572C64(v193, v194, v195);
            goto LABEL_92;
          default:
            swift_beginAccess();
            v68 = *(v67 + 16);

            v69 = v202;
            v70 = sub_22C4A1448(v225, v68, v20);
            if (v69)
            {
              goto LABEL_76;
            }

            v186 = v70;
            v187 = v71;
            v188 = v72;
            v202 = 0;

            sub_22C5723D4(v186, v187, v188);
LABEL_92:
            v211 = v149;
            break;
        }
      }

      else
      {
        swift_beginAccess();
        v76 = *(v67 + 16);

        v77 = v202;
        v78 = sub_22C4A1448(v225, v76, v10);
        if (v77)
        {
LABEL_76:

LABEL_77:
          sub_22C407C2C();
          return;
        }

        v137 = v78;
        v138 = v79;
        v139 = v80;
        v202 = 0;

        sub_22C572798(v65, v137, v138, v139);
        v211 = v140;
      }

LABEL_94:

      return;
    default:
      v211 = *(a2 + 24);

      return;
  }
}