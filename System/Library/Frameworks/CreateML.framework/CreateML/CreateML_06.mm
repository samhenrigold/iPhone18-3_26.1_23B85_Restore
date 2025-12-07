void sub_237A58644(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = sub_237C05ADC();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  MEMORY[0x28223BE20](v80);
  v76 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v81 = &v62[-v13];
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v16 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v19 = (a2 - a1) / v15;
  v84 = a1;
  v83 = a4;
  v70 = (v8 + 8);
  v71 = (v12 + 16);
  v69 = (v12 + 8);
  v20 = v17 / v15;
  if (v19 >= v17 / v15)
  {
    sub_237A1DD78(a2, v17 / v15, a4);
    v38 = a4 + v20 * v15;
    v39 = -v15;
    v40 = v38;
    v77 = a1;
    v78 = a4;
    v65 = -v15;
LABEL_36:
    v41 = a2 + v39;
    v42 = a3;
    v43 = v40;
    v79 = a2;
    v66 = a2 + v39;
    v64 = v40;
    while (1)
    {
      if (v38 <= a4)
      {
        v84 = a2;
        v82 = v43;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v63 = v43;
      v74 = v42;
      v75 = v42 + v39;
      v44 = *v71;
      v45 = v80;
      v67 = v38 + v39;
      v44();
      (v44)(v76, v41, v45);
      v46 = v72;
      sub_237C06C7C();
      v68 = sub_237C05A8C();
      v48 = v47;
      v49 = *v70;
      v50 = v73;
      (*v70)(v46, v73);
      sub_237C06C7C();
      v51 = sub_237C05A8C();
      v53 = v52;
      v49(v46, v50);
      LOBYTE(v44) = sub_237A556DC(v51, v53, v68, v48);

      v54 = *v69;
      (*v69)(v76, v45);
      v54(v81, v45);
      if (v44)
      {
        a4 = v78;
        a3 = v75;
        if (v74 < v79 || v75 >= v79)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          v40 = v63;
          a1 = v77;
          v39 = v65;
        }

        else
        {
          v60 = v63;
          v40 = v63;
          v39 = v65;
          v61 = v66;
          a2 = v66;
          a1 = v77;
          if (v74 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v61;
            v40 = v60;
          }
        }

        goto LABEL_36;
      }

      v55 = v75;
      v56 = v74 < v38 || v75 >= v38;
      a4 = v78;
      if (v56)
      {
        v57 = v67;
        swift_arrayInitWithTakeFrontToBack();
        v42 = v55;
        v38 = v57;
        v43 = v57;
        a1 = v77;
        a2 = v79;
        v39 = v65;
        v41 = v66;
        v40 = v64;
      }

      else
      {
        v41 = v66;
        v58 = v67;
        v43 = v67;
        v16 = v38 == v74;
        v42 = v75;
        v38 = v67;
        a1 = v77;
        a2 = v79;
        v40 = v64;
        v39 = v65;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v42 = v55;
          v38 = v58;
          v43 = v58;
        }
      }
    }

    v84 = a2;
    v82 = v40;
  }

  else
  {
    sub_237A1DD78(a1, (a2 - a1) / v15, a4);
    v67 = v15;
    v68 = a4 + v19 * v15;
    v82 = v68;
    v75 = a3;
    v21 = v80;
    while (a4 < v68 && a2 < a3)
    {
      v77 = a1;
      v23 = *v71;
      (*v71)();
      v24 = v76;
      (v23)(v76, a4, v21);
      v25 = v72;
      sub_237C06C7C();
      v74 = sub_237C05A8C();
      v27 = v26;
      v28 = *v70;
      v78 = a4;
      v29 = v73;
      v28(v25, v73);
      sub_237C06C7C();
      v30 = sub_237C05A8C();
      v79 = a2;
      v32 = v31;
      v28(v25, v29);
      LOBYTE(v30) = sub_237A556DC(v30, v32, v74, v27);

      v33 = *v69;
      (*v69)(v24, v21);
      v33(v81, v21);
      if (v30)
      {
        v34 = v67;
        a4 = v78;
        a2 = v79 + v67;
        v35 = v77;
        if (v77 < v79 || v77 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v77 != v79)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      else
      {
        a2 = v79;
        v34 = v67;
        a4 = v78 + v67;
        v35 = v77;
        if (v77 < v78 || v77 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v77 != v78)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v83 = a4;
      }

      a1 = v35 + v34;
      v84 = a1;
      a3 = v75;
    }
  }

LABEL_58:
  sub_237A593D0(&v84, &v83, &v82);
}

void sub_237A58CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v116 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0_22();
  v115 = v33;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  MEMORY[0x28223BE20](v118);
  v111 = v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = v104 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = (v104 - v39);
  MEMORY[0x28223BE20](v41);
  v45 = *(v44 + 72);
  if (!v45)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v46 = v27 - v29 == 0x8000000000000000 && v45 == -1;
  if (v46)
  {
    goto LABEL_71;
  }

  v47 = v25 - v27;
  if (v25 - v27 == 0x8000000000000000 && v45 == -1)
  {
    goto LABEL_72;
  }

  v117 = v104 - v43;
  v49 = (v27 - v29) / v45;
  a10 = v29;
  v123 = v23;
  v113 = (v31 + 8);
  v114 = (v42 + 16);
  v112 = (v42 + 8);
  v50 = v47 / v45;
  if (v49 < v47 / v45)
  {
    sub_237A1DD78(v29, (v27 - v29) / v45, v23);
    v110 = v25;
    v111 = (v23 + v49 * v45);
    v122 = v111;
    v51 = v40;
    v52 = v118;
    v108 = v40;
    v109 = v45;
    while (1)
    {
      if (v23 >= v111 || v27 >= v25)
      {
        goto LABEL_69;
      }

      v120 = v29;
      v121 = v27;
      v54 = *v114;
      (*v114)(v117, v27, v52);
      v119 = v23;
      v54(v51, v23, v52);
      v55 = v115;
      sub_237C06C7C();
      v56 = sub_237C05A8C();
      v57 = v52;
      v59 = v58;
      v51 = v113;
      v60 = *v113;
      (*v113)(v55, v116);
      sub_237C06C7C();
      v61 = sub_237C05A8C();
      v63 = v62;
      v64 = OUTLINED_FUNCTION_32_3();
      (v60)(v64);
      if (v56 == v61 && v59 == v63)
      {

        v71 = OUTLINED_FUNCTION_139();
        (v60)(v71);
        (v60)(v117, v57);
        v68 = v120;
      }

      else
      {
        OUTLINED_FUNCTION_105_0();
        v66 = sub_237C0929C();

        v67 = OUTLINED_FUNCTION_139();
        (v60)(v67);
        (v60)(v117, v57);
        v68 = v120;
        if (v66)
        {
          v69 = v109;
          v25 = v110;
          v27 = v121 + v109;
          v70 = v120 < v121 || v120 >= v27;
          v23 = v119;
          if (v70)
          {
            OUTLINED_FUNCTION_165();
            v52 = v118;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v52 = v118;
            if (v120 != v121)
            {
              OUTLINED_FUNCTION_165();
              swift_arrayInitWithTakeBackToFront();
            }
          }

          goto LABEL_37;
        }
      }

      v69 = v109;
      v25 = v110;
      v23 = v119 + v109;
      if (v68 < v119 || v68 >= v23)
      {
        OUTLINED_FUNCTION_165();
        v52 = v118;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v52 = v118;
        if (v68 != v119)
        {
          OUTLINED_FUNCTION_165();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v123 = v23;
      v27 = v121;
LABEL_37:
      v29 = v68 + v69;
      a10 = v29;
    }
  }

  v73 = OUTLINED_FUNCTION_173();
  sub_237A1DD78(v73, v74, v23);
  v75 = (v23 + v50 * v45);
  v76 = -v45;
  v77 = v75;
  v119 = v23;
  v120 = v29;
  v106 = v76;
  v107 = v37;
LABEL_41:
  v78 = (v27 + v76);
  v79 = v25;
  v104[0] = v77;
  v80 = v77;
  v121 = v27;
  v108 = (v27 + v76);
  while (1)
  {
    if (v75 <= v23)
    {
      a10 = v27;
      v122 = v80;
      goto LABEL_69;
    }

    if (v27 <= v29)
    {
      break;
    }

    v105 = v80;
    v117 = v75;
    v81 = &v75[v76];
    v82 = *v114;
    v109 = v81;
    v110 = v79;
    v83 = v118;
    (v82)(v37);
    v82(v111, v78, v83);
    sub_237C06C7C();
    v84 = sub_237C05A8C();
    v86 = v85;
    v87 = *v113;
    OUTLINED_FUNCTION_169();
    v87();
    sub_237C06C7C();
    v88 = sub_237C05A8C();
    v90 = v89;
    v91 = OUTLINED_FUNCTION_128();
    (v87)(v91);
    if (v84 == v88 && v86 == v90)
    {
      v93 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_105_0();
      v93 = sub_237C0929C();
    }

    v76 = v106;
    v94 = v110;
    v25 = &v110[v106];
    v95 = *v112;
    v96 = v118;
    (*v112)(v111, v118);
    v37 = v107;
    v95(v107, v96);
    v23 = v119;
    v29 = v120;
    v27 = v121;
    if (v93)
    {
      if (v94 < v121 || v25 >= v121)
      {
        v27 = v108;
        OUTLINED_FUNCTION_152_0();
        swift_arrayInitWithTakeFrontToBack();
        v77 = v105;
        v75 = v117;
      }

      else
      {
        v77 = v105;
        v101 = v108;
        v27 = v108;
        v75 = v117;
        if (v94 != v121)
        {
          OUTLINED_FUNCTION_152_0();
          v103 = v102;
          swift_arrayInitWithTakeBackToFront();
          v27 = v101;
          v77 = v103;
        }
      }

      goto LABEL_41;
    }

    if (v94 < v117 || v25 >= v117)
    {
      v98 = v109;
      OUTLINED_FUNCTION_152_0();
      swift_arrayInitWithTakeFrontToBack();
      v79 = &v94[v76];
      v75 = v98;
      v80 = v98;
      v78 = v108;
    }

    else
    {
      v78 = v108;
      v80 = v109;
      v46 = v117 == v94;
      v99 = v109;
      v79 = v25;
      v75 = v109;
      if (!v46)
      {
        OUTLINED_FUNCTION_152_0();
        swift_arrayInitWithTakeBackToFront();
        v79 = v25;
        v75 = v99;
        v80 = v99;
      }
    }
  }

  a10 = v27;
  v122 = v104[0];
LABEL_69:
  sub_237A593D0(&a10, &v123, &v122);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A593D0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_237A594DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A5954C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AEA8, &unk_237C0C200);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237A595B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_237A59650()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_237A596A4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

uint64_t sub_237A596FC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

unint64_t OUTLINED_FUNCTION_15_10()
{
  v4 = *(v2 + 112);
  *(v0 + 16) = v1;
  return v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3;
}

double OUTLINED_FUNCTION_23_11(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_5()
{
  ++v1[35];
  v1[36] = v0;
  return v1[33];
}

uint64_t OUTLINED_FUNCTION_33_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_237C0748C();
}

uint64_t OUTLINED_FUNCTION_55_3()
{

  return sub_237C06A4C();
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_237C05A3C();
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return MEMORY[0x282115070](v1, v0 + 16, v2);
}

uint64_t OUTLINED_FUNCTION_76_1(uint64_t a1)
{

  return sub_237A596FC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1)
{

  return sub_237A596FC(a1, v1);
}

uint64_t OUTLINED_FUNCTION_78_0()
{

  return sub_237A59650();
}

uint64_t OUTLINED_FUNCTION_82_1(uint64_t a1)
{
  v3 = v1[37];
  v4 = v1[35];
  if (v1[56] < v3)
  {
    v3 = v1[56];
  }

  v1[68] = v3;
  v1[69] = v4;

  return sub_237C08C1C();
}

uint64_t OUTLINED_FUNCTION_92_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a1;
  return a2;
}

void OUTLINED_FUNCTION_113_0(uint64_t a1)
{

  sub_237BC194C();
}

unint64_t OUTLINED_FUNCTION_120_0@<X0>(uint64_t a2@<X8>)
{
  *(v3 - 112) = a2;
  *(v3 - 104) = v2;

  return MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
}

void OUTLINED_FUNCTION_121_0()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_133_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_134_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_148_0(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_237C0826C(a1, 10, 2, a4, v5, v4, v6);
}

uint64_t OUTLINED_FUNCTION_149_0()
{

  return _s20PersistentParametersVMa_2(0);
}

uint64_t OUTLINED_FUNCTION_150_0()
{
}

uint64_t OUTLINED_FUNCTION_151_0@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  *(a1 + 48) = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_179()
{
}

uint64_t OUTLINED_FUNCTION_180(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;
}

void *OUTLINED_FUNCTION_181()
{

  return sub_237C06C4C();
}

uint64_t OUTLINED_FUNCTION_182()
{

  return sub_237C05A8C();
}

uint64_t OUTLINED_FUNCTION_183(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237C085AC();
}

void *sub_237A5A36C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B970, &qword_237C0E2D8);
  v2 = sub_237C085AC();
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {
      return v2;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = v2[2];
    swift_bridgeObjectRetain_n();
    if (v8)
    {

      sub_237ACAC78(v7, v6);
      v10 = v9;

      if (v10)
      {
        break;
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_237ACAC78(v7, v6);
    if (__OFADD__(v2[2], (v12 & 1) == 0))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      break;
    }

    v13 = v11;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B978, &unk_237C0E2E0);
    if (sub_237C090AC())
    {
      v15 = sub_237ACAC78(v7, v6);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v13 = v15;
    }

    if (v14)
    {

      v17 = (v2[7] + 24 * v13);
      *v17 = v3;
      v17[1] = v7;
      v17[2] = v6;
    }

    else
    {
      v2[(v13 >> 6) + 8] |= 1 << v13;
      v18 = (v2[6] + 16 * v13);
      *v18 = v7;
      v18[1] = v6;
      v19 = (v2[7] + 24 * v13);
      *v19 = v3;
      v19[1] = v7;
      v19[2] = v6;

      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_16;
      }

      v2[2] = v22;
    }

    ++v3;
  }

  sub_237C090DC();
  __break(1u);
LABEL_18:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

unint64_t sub_237A5A624()
{
  result = qword_27DE9B980;
  if (!qword_27DE9B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B980);
  }

  return result;
}

unint64_t sub_237A5A67C()
{
  result = qword_27DE9B988;
  if (!qword_27DE9B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B988);
  }

  return result;
}

unint64_t sub_237A5A6DC()
{
  result = qword_27DE9B990;
  if (!qword_27DE9B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B990);
  }

  return result;
}

unint64_t sub_237A5A734()
{
  result = qword_27DE9B998;
  if (!qword_27DE9B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B998);
  }

  return result;
}

uint64_t sub_237A5A85C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MLImageClassifier.ImageAugmentationOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_237A5A89C@<X0>(uint64_t *a1@<X8>)
{
  result = MLImageClassifier.ImageAugmentationOptions.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s24VideoAugmentationOptionsVwet(uint64_t a1, int a2)
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

uint64_t _s24VideoAugmentationOptionsVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_237A5A92C@<X0>(uint64_t a2@<X8>)
{
  v123 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9A0, &unk_237C0E4C0);
  OUTLINED_FUNCTION_0_26(v2, &v145);
  v122 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9A8, &unk_237C169E0);
  OUTLINED_FUNCTION_0_26(v6, &v143);
  v120 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9B0, &unk_237C0E4D0);
  OUTLINED_FUNCTION_0_26(v10, &v156);
  v119 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9B8, &unk_237C169F0);
  OUTLINED_FUNCTION_0_26(v14, &v155);
  v117 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9C0, &unk_237C0E4E0);
  OUTLINED_FUNCTION_0_26(v18, &v154);
  v115 = v19;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9C8, &unk_237C16A00);
  OUTLINED_FUNCTION_0_26(v22, &v152);
  v114 = v23;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9D0, &qword_237C0E4F0);
  OUTLINED_FUNCTION_0_26(v26, &v140);
  v112 = v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9D8, &qword_237C0E4F8);
  OUTLINED_FUNCTION_0_26(v30, v137);
  v111 = v31;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9E0, &qword_237C0E500);
  OUTLINED_FUNCTION_0_26(v34, &v153);
  v110 = v35;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  v125 = v107 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9E8, &qword_237C0E508);
  OUTLINED_FUNCTION_0_26(v38, &v151);
  v109 = v39;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  v127 = v107 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9F0, &qword_237C0E510);
  v43 = OUTLINED_FUNCTION_0_26(v42, &v147);
  v108 = v44;
  MEMORY[0x28223BE20](v43);
  v128 = v107 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v131 = v107 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B9F8, &qword_237C0E518);
  OUTLINED_FUNCTION_0_26(v48, &v146);
  v107[2] = v49;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v50);
  v52 = v107 - v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA00, &qword_237C0E520);
  v53 = sub_237A5B784();
  v54 = sub_237C074FC();
  v147 = v53;
  v148 = v54;
  v149 = MEMORY[0x277CC5198];
  swift_getOpaqueTypeConformance2();
  v107[0] = v52;
  sub_237C06BAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA10, &qword_237C0E528);
  v55 = sub_237C06B7C();
  v147 = v53;
  v148 = v55;
  OUTLINED_FUNCTION_5_19(MEMORY[0x277CC4FD0]);
  OUTLINED_FUNCTION_11_15(sub_237A5B7C8);
  OUTLINED_FUNCTION_11_15(sub_237A5B7D4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA18, &qword_237C0E530);
  OUTLINED_FUNCTION_13_10();
  v56 = sub_237C06FEC();
  v147 = v53;
  v148 = v56;
  v57 = OUTLINED_FUNCTION_5_19(MEMORY[0x277CC5068]);
  OUTLINED_FUNCTION_12_14(sub_237A5BA68, v144, v58, v59, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA20, &qword_237C0E538);
  OUTLINED_FUNCTION_13_10();
  v60 = sub_237C071FC();
  v147 = v53;
  v148 = v60;
  v61 = OUTLINED_FUNCTION_5_19(MEMORY[0x277CC50B8]);
  OUTLINED_FUNCTION_12_14(sub_237A5BB78, v142, v62, v63, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA28, &qword_237C0E540);
  OUTLINED_FUNCTION_13_10();
  v64 = sub_237C06B9C();
  v147 = v53;
  v148 = v64;
  v65 = OUTLINED_FUNCTION_5_19(MEMORY[0x277CC4FD8]);
  OUTLINED_FUNCTION_12_14(sub_237A5BC88, v141, v66, v67, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA30, &qword_237C0E548);
  OUTLINED_FUNCTION_13_10();
  v68 = sub_237C06DEC();
  v147 = v53;
  v148 = v68;
  v149 = MEMORY[0x277CC5028];
  swift_getOpaqueTypeConformance2();
  sub_237C06BAC();
  v69 = sub_237A5BD8C(&qword_27DE9BA38, &qword_27DE9B9F8, &qword_237C0E518);
  v70 = v124;
  sub_237C06E4C();
  v147 = v53;
  v148 = v70;
  v149 = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = sub_237A5BD8C(&qword_27DE9BA40, &qword_27DE9B9F0, &qword_237C0E510);
  OUTLINED_FUNCTION_14_11();
  v73 = v132;
  v74 = v126;
  OUTLINED_FUNCTION_10_12(v75);
  v147 = v53;
  v148 = v73;
  v149 = v74;
  v150 = OpaqueTypeConformance2;
  v151 = v72;
  v76 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_14_11();
  v77 = v135;
  OUTLINED_FUNCTION_10_12(v78);
  v147 = v53;
  v148 = v77;
  v149 = v74;
  v150 = v76;
  v79 = OUTLINED_FUNCTION_6_20();
  sub_237A5BD8C(&qword_27DE9BA48, &qword_27DE9B9E8, &qword_237C0E508);
  OUTLINED_FUNCTION_14_11();
  v80 = v138;
  OUTLINED_FUNCTION_9_14();
  sub_237C06E2C();
  v147 = v53;
  v148 = v80;
  v149 = v77;
  v150 = v79;
  v81 = OUTLINED_FUNCTION_6_20();
  sub_237A5BD8C(&qword_27DE9BA50, &qword_27DE9B9E0, &qword_237C0E500);
  v82 = v113;
  OUTLINED_FUNCTION_14_11();
  v83 = v140;
  OUTLINED_FUNCTION_9_14();
  sub_237C06E2C();
  v147 = v53;
  v148 = v83;
  v149 = v77;
  v150 = v81;
  v84 = OUTLINED_FUNCTION_6_20();
  sub_237A5BD8C(&qword_27DE9BA58, &qword_27DE9B9D8, &qword_237C0E4F8);
  v85 = v118;
  v86 = v82;
  v87 = v82;
  v88 = v136;
  v89 = v116;
  v90 = v107[1];
  OUTLINED_FUNCTION_10_12(v86);
  v147 = v53;
  v148 = v89;
  v149 = v90;
  v150 = v84;
  OUTLINED_FUNCTION_6_20();
  sub_237A5BD8C(&qword_27DE9BA60, &qword_27DE9B9D0, &qword_237C0E4F0);
  v91 = v137[1];
  v92 = v121;
  OUTLINED_FUNCTION_9_14();
  sub_237C06E2C();
  OUTLINED_FUNCTION_36_3();
  v93(v85, v92);
  OUTLINED_FUNCTION_36_3();
  v94(v87, v89);
  OUTLINED_FUNCTION_36_3();
  v95(v139, v140);
  OUTLINED_FUNCTION_36_3();
  v96(v137[0], v138);
  OUTLINED_FUNCTION_36_3();
  v97(v133, v135);
  OUTLINED_FUNCTION_36_3();
  v98(v129, v132);
  OUTLINED_FUNCTION_36_3();
  v99(v91, v85);
  OUTLINED_FUNCTION_36_3();
  v100(v88, v90);
  OUTLINED_FUNCTION_36_3();
  v101(v125, v134);
  OUTLINED_FUNCTION_36_3();
  v102(v127, v130);
  v103 = *(v108 + 8);
  v104 = v126;
  v103(v128, v126);
  v103(v131, v104);
  OUTLINED_FUNCTION_36_3();
  return v105(v107[0], v124);
}

uint64_t sub_237A5B678()
{
  v0 = sub_237C074FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379EED84(0x20uLL);
  sub_237C074EC();
  sub_237A5B784();
  sub_237C06E3C();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_237A5B784()
{
  result = qword_27DE9BA08;
  if (!qword_27DE9BA08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9BA08);
  }

  return result;
}

uint64_t sub_237A5B7E0(unsigned int *a1)
{
  v2 = sub_237C06B5C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_237C06B7C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *a1, v2, v12);
  sub_237C06B6C();
  sub_237A5B784();
  sub_237C06E3C();
  return (*(v10 + 8))(v14, v8);
}

uint64_t sub_237A5B95C()
{
  v0 = sub_237C06FEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379EED84(0xBuLL);
  sub_237C06FDC();
  sub_237A5B784();
  sub_237C06E3C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_237A5BA70()
{
  v0 = sub_237C071FC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379EED84(0xBuLL);
  sub_237C071EC();
  sub_237A5B784();
  sub_237C06E3C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_237A5BB80()
{
  v0 = sub_237C06B9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379EED84(0xBuLL);
  sub_237C06B8C();
  sub_237A5B784();
  sub_237C06E3C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_237A5BC90()
{
  v0 = sub_237C06DEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C06DDC();
  sub_237A5B784();
  sub_237C06E4C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_237A5BD8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OUTLINED_FUNCTION_5_19@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_6_20()
{
  *(v1 - 128) = v0;

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_12(uint64_t a1)
{

  return sub_237C06E2C();
}

uint64_t OUTLINED_FUNCTION_11_15(uint64_t a1)
{

  return sub_237C06BAC();
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_237C06BAC();
}

uint64_t sub_237A5BED8(uint64_t a1, char a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v6 + 16))(v10, a1, v4, v8);
  }

  else
  {
    sub_237C05A5C();
  }

  v11 = [objc_opt_self() defaultManager];
  v12 = sub_237C059EC();
  v18[0] = 0;
  v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v18];

  if (v13)
  {
    v14 = *(v6 + 8);
    v15 = v18[0];
    return v14(v10, v4);
  }

  else
  {
    v17 = v18[0];
    sub_237C0593C();

    swift_willThrow();
    return (*(v6 + 8))(v10, v4);
  }
}

id sub_237A5C0AC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4E0, &qword_237C0D200);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_237C0597C();
  sub_237C081DC();
  sub_237C081AC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2379F6DD8(v4, &qword_27DE9B4E0, &qword_237C0D200);
    return 0;
  }

  (*(v7 + 32))(v11, v4, v5);
  if ((sub_237C0823C() & 1) == 0)
  {
    (*(v7 + 8))(v11, v5);
    return 0;
  }

  v12 = [objc_opt_self() defaultManager];
  sub_237C05A9C();
  v13 = sub_237C086BC();

  v14 = [v12 isReadableFileAtPath_];

  (*(v7 + 8))(v11, v5);
  return v14;
}

void sub_237A5C2F0()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v31 = v3;
  v32 = v4;
  v34 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v28 = (v8 - v9);
  OUTLINED_FUNCTION_39_0();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = 0;
  v33 = *(v2 + 16);
  v30 = v6 + 16;
  v15 = (v6 + 8);
  v27 = (v6 + 32);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v33 == v14)
    {

LABEL_15:
      OUTLINED_FUNCTION_73();
      return;
    }

    if (v14 >= *(v2 + 16))
    {
      break;
    }

    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = *(v6 + 72);
    v18 = v2;
    (*(v6 + 16))(v13, v2 + v16 + v17 * v14, v34, v11);
    v19 = v31(v13);
    if (v0)
    {
      (*v15)(v13, v34);

      goto LABEL_15;
    }

    if (v19)
    {
      v26 = *v27;
      v26(v28, v13, v34);
      v20 = v29;
      v35 = v29;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v21 = v20;
      }

      else
      {
        sub_237AC8AF4(0, *(v20 + 16) + 1, 1);
        v21 = v35;
      }

      v2 = v18;
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v29 = v23 + 1;
        v25 = v23;
        sub_237AC8AF4(v22 > 1, v23 + 1, 1);
        v24 = v29;
        v23 = v25;
        v2 = v18;
        v21 = v35;
      }

      ++v14;
      *(v21 + 16) = v24;
      v29 = v21;
      v26(v21 + v16 + v23 * v17, v28, v34);
    }

    else
    {
      (*v15)(v13, v34);
      ++v14;
    }
  }

  __break(1u);
}

void sub_237A5C58C()
{
  OUTLINED_FUNCTION_74();
  v92 = v1;
  v3 = v2;
  v4 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v82 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v82 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  sub_237A5CD94();
  v21 = v0;
  if (v0)
  {
LABEL_49:
    OUTLINED_FUNCTION_73();
  }

  else
  {
    v93 = v19;
    v83 = v16;
    v86 = v10;
    v89 = v6;
    v91 = *(v20 + 16);
    if (v91)
    {
      v22 = v89;
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B288, &qword_237C137F0);
      v22 = v89;
      v23 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_237C0B660;
      (*(v22 + 16))(v24 + v23, v3, v4);
      v20 = v24;
      v91 = *(v24 + 16);
    }

    v25 = v93;
    v26 = 0;
    v27 = 0;
    v103 = v22 + 16;
    v101 = v22 + 8;
    v28 = MEMORY[0x277D84F98];
    v99 = (v22 + 32);
    v100 = v13;
    v87 = v20;
LABEL_6:
    v88 = v26;
LABEL_7:
    v90 = v28;
    while (1)
    {
      if (v27 == v91)
      {

        sub_237A560B8(v26);
        goto LABEL_49;
      }

      if (v27 >= *(v20 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_119_0();
      v104 = v29;
      v32 = *(v31 + 72);
      v102 = *(v31 + 16);
      v102(v25, v30 + v29 + v32 * v27, v4);
      v97 = sub_237C059DC();
      v98 = v33;
      v34 = sub_237A5DA10();
      if (v21)
      {
        OUTLINED_FUNCTION_3_25();
        v81(v25, v4);

        sub_237A560B8(v88);
        goto LABEL_49;
      }

      v96 = v27;
      v35 = v34[2];
      if (v35)
      {
        v95 = 0;
        v105 = MEMORY[0x277D84F90];
        v36 = v34;
        sub_237AC8AF4(0, v35, 0);
        v94 = v36;
        v37 = v36 + v104;
        v38 = v83;
        do
        {
          v102(v13, v37, v4);
          sub_237C05A4C();
          OUTLINED_FUNCTION_3_25();
          v39(v13, v4);
          v41 = *(v105 + 16);
          v40 = *(v105 + 24);
          if (v41 >= v40 >> 1)
          {
            OUTLINED_FUNCTION_5_20(v40);
          }

          *(v105 + 16) = v41 + 1;
          (*v99)(v105 + v104 + v41 * v32, v38, v4);
          v37 += v32;
          --v35;
          v13 = v100;
        }

        while (v35);

        v25 = v93;
        v21 = v95;
      }

      else
      {
      }

      ++v96;
      MEMORY[0x28223BE20](v42);
      *(&v82 - 2) = v43;
      sub_237A5C2F0();
      v45 = v44;
      OUTLINED_FUNCTION_3_25();
      v46(v25, v4);
      if (*(v45 + 16))
      {
        break;
      }

      v47 = v90;
      v48 = v98;
      if (!v90[2] || (sub_237ACAC78(v97, v98), (v49 & 1) == 0))
      {
        swift_isUniquelyReferenced_nonNull_native();
        v106 = v47;
        v50 = sub_237ACAC78(v97, v48);
        if (__OFADD__(v47[2], (v51 & 1) == 0))
        {
          goto LABEL_54;
        }

        v27 = v50;
        v52 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
        if (sub_237C090AC())
        {
          v53 = sub_237ACAC78(v97, v98);
          if ((v52 & 1) != (v54 & 1))
          {
            goto LABEL_56;
          }

          v27 = v53;
        }

        if (v52)
        {
          *(v106[7] + 8 * v27) = MEMORY[0x277D84F90];

          v20 = OUTLINED_FUNCTION_4_23();
          v28 = v106;
        }

        else
        {
          v106[(v27 >> 6) + 8] |= 1 << v27;
          v55 = (v106[6] + 16 * v27);
          v56 = v98;
          *v55 = v97;
          v55[1] = v56;
          *(v106[7] + 8 * v27) = MEMORY[0x277D84F90];
          v57 = v106[2];
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_55;
          }

          v28 = v106;
          v106[2] = v59;
          v20 = OUTLINED_FUNCTION_4_23();
        }

        v26 = v88;
        goto LABEL_7;
      }

      v26 = v88;
      v20 = v87;
      v27 = v96;
    }

    v60 = 0;
    v61 = (v45 + v104);
    v27 = v86;
    v28 = v90;
    v26 = v88;
    v84 = *(v45 + 16);
    v85 = v45;
    v95 = v21;
    while (v60 < *(v45 + 16))
    {
      v62 = v60;
      v94 = v61;
      (v102)(v27);
      sub_237A560B8(v26);
      swift_isUniquelyReferenced_nonNull_native();
      v107 = v28;
      v63 = sub_237ACAC78(v97, v98);
      if (__OFADD__(v28[2], (v64 & 1) == 0))
      {
        goto LABEL_52;
      }

      v65 = v63;
      v66 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
      if (sub_237C090AC())
      {
        v67 = sub_237ACAC78(v97, v98);
        if ((v66 & 1) != (v68 & 1))
        {
          goto LABEL_56;
        }

        v65 = v67;
      }

      if ((v66 & 1) == 0)
      {
        v28[(v65 >> 6) + 8] |= 1 << v65;
        v69 = (v28[6] + 16 * v65);
        v70 = v98;
        *v69 = v97;
        v69[1] = v70;
        *(v28[7] + 8 * v65) = MEMORY[0x277D84F90];
        v71 = v28[2];
        v58 = __OFADD__(v71, 1);
        v72 = v71 + 1;
        if (v58)
        {
          goto LABEL_53;
        }

        v28[2] = v72;
      }

      v73 = v28[7];
      v74 = *(v73 + 8 * v65);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v73 + 8 * v65) = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237BC0BF0();
        v74 = v79;
        *(v73 + 8 * v65) = v79;
      }

      v76 = *(v74 + 16);
      if (v76 >= *(v74 + 24) >> 1)
      {
        sub_237BC0BF0();
        v77 = v62;
        v74 = v80;
        *(v73 + 8 * v65) = v80;
      }

      else
      {
        v77 = v62;
      }

      v21 = v95;
      *(v74 + 16) = v76 + 1;
      v78 = v74 + v104 + v76 * v32;
      v45 = v85;
      v27 = v86;
      v26 = v77 + 1;
      (*v99)(v78, v86, v4);
      OUTLINED_FUNCTION_2_28();
      v13 = v100;
      v28 = v107;
      v25 = v93;
      if (v84 == v60)
      {

        OUTLINED_FUNCTION_2_28();
        v20 = OUTLINED_FUNCTION_4_23();
        goto LABEL_6;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    sub_237C0932C();
    __break(1u);
  }
}

void sub_237A5CD94()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v69[7] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA68, &qword_237C0E550);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_18_0();
  v54 = v3 - v4;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v5);
  v67 = &v50 - v6;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v51 = (v14 - v15);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  v68 = &v50 - v17;
  v18 = [objc_opt_self() defaultManager];
  v19 = sub_237C059EC();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA70, &qword_237C0E558);
  v20 = swift_allocObject();
  v64 = xmmword_237C0B670;
  *(v20 + 16) = xmmword_237C0B670;
  v21 = *MEMORY[0x277CBE868];
  v22 = *MEMORY[0x277CBE8A0];
  *(v20 + 32) = *MEMORY[0x277CBE868];
  *(v20 + 40) = v22;
  v69[0] = 0;
  v63 = v21;
  v62 = v22;
  v23 = sub_237A5DB58(v19, v20, 0, v69, v18);

  v24 = v69[0];
  if (!v23)
  {
    v49 = v69[0];
    sub_237C0593C();

    swift_willThrow();
    goto LABEL_24;
  }

  v25 = sub_237C0893C();
  v26 = v24;

  v27 = 0;
  v66 = *(v25 + 16);
  v58 = v12 + 16;
  v50 = (v12 + 32);
  v57 = (v12 + 8);
  v52 = MEMORY[0x277D84F90];
  v60 = v12;
  v61 = v10;
  v59 = v25;
  while (v66 != v27)
  {
    if (v27 >= *(v25 + 16))
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_119_0();
    v28 = *(v12 + 72);
    v56 = v29;
    v55 = v28;
    (*(v12 + 16))(v68, v25 + v29 + v28 * v27, v10);
    inited = swift_initStackObject();
    *(inited + 16) = v64;
    v32 = v62;
    v31 = v63;
    *(inited + 32) = v63;
    *(inited + 40) = v32;
    v33 = v31;
    v34 = v32;
    sub_237B4368C(inited);
    sub_237C0599C();
    if (v1)
    {

      v35 = 1;
    }

    else
    {
      v35 = 0;
    }

    v36 = sub_237C058AC();
    __swift_storeEnumTagSinglePayload(v9, v35, 1, v36);
    v37 = v67;
    sub_237A5DBEC(v9, v67);
    if (__swift_getEnumTagSinglePayload(v37, 1, v36) == 1)
    {
      goto LABEL_9;
    }

    v38 = v67;
    v39 = sub_237C0589C();
    v40 = *(*(v36 - 8) + 8);
    v40(v38, v36);
    v37 = v9;
    if (v39 == 2)
    {
      goto LABEL_11;
    }

    v37 = v54;
    sub_237A5DBEC(v9, v54);
    if (__swift_getEnumTagSinglePayload(v37, 1, v36) == 1)
    {
LABEL_9:
      sub_2379F6DD8(v9, &qword_27DE9BA68, &qword_237C0E550);
LABEL_11:
      sub_2379F6DD8(v37, &qword_27DE9BA68, &qword_237C0E550);
      goto LABEL_12;
    }

    v41 = v54;
    v53 = sub_237C0588C();
    v42 = v53;
    sub_2379F6DD8(v9, &qword_27DE9BA68, &qword_237C0E550);
    v40(v41, v36);
    if (v42 != 2 && (v39 & 1) != 0 && (v53 & 1) != 0)
    {
      v43 = *v50;
      v10 = v61;
      (*v50)(v51, v68, v61);
      v44 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v44;
      v69[0] = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237AC8AF4(0, v44[2] + 1, 1);
        v46 = v69[0];
      }

      v1 = 0;
      v48 = v46[2];
      v47 = v46[3];
      v12 = v60;
      if (v48 >= v47 >> 1)
      {
        sub_237AC8AF4(v47 > 1, v48 + 1, 1);
        v46 = v69[0];
      }

      ++v27;
      v46[2] = v48 + 1;
      v52 = v46;
      v43(v46 + v56 + v48 * v55, v51, v10);
      v25 = v59;
    }

    else
    {
LABEL_12:
      v10 = v61;
      (*v57)(v68, v61);
      ++v27;
      v1 = 0;
      v25 = v59;
      v12 = v60;
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_73();
}

void sub_237A5D3A4()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = sub_237A5DA10();
  if (!v0)
  {
    v14 = v13;
    v15 = v13[2];
    if (v15)
    {
      v34 = v9;
      v27[2] = 0;
      v28 = v2;
      v35 = MEMORY[0x277D84F90];
      sub_237AC8AF4(0, v15, 0);
      v16 = v5 + 16;
      OUTLINED_FUNCTION_119_0();
      v27[1] = v14;
      v32 = v17;
      v33 = v18;
      v19 = v14 + v17;
      v20 = *(v16 + 56);
      v30 = v16 - 8;
      v31 = v20;
      v29 = (v16 + 16);
      do
      {
        v21 = v34;
        v33(v34, v19, v3);
        sub_237C05A4C();
        OUTLINED_FUNCTION_3_25();
        v22(v21, v3);
        v24 = *(v35 + 16);
        v23 = *(v35 + 24);
        if (v24 >= v23 >> 1)
        {
          OUTLINED_FUNCTION_5_20(v23);
        }

        *(v35 + 16) = v24 + 1;
        v25 = v31;
        (*v29)(v35 + v32 + v24 * v31, v12, v3);
        v19 += v25;
        --v15;
      }

      while (v15);

      v2 = v28;
    }

    else
    {
    }

    MEMORY[0x28223BE20](v26);
    v27[-2] = v2;
    sub_237A5C2F0();
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A5D608()
{
  OUTLINED_FUNCTION_74();
  v1 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  sub_237A5D3A4();
  if (v0)
  {
LABEL_21:
    OUTLINED_FUNCTION_73();
    return;
  }

  v12 = v11;
  v57 = *(v11 + 16);
  if (!v57)
  {

    v43 = 0;
LABEL_20:
    sub_237A560B8(v43);
    goto LABEL_21;
  }

  v53 = 0;
  v13 = 0;
  OUTLINED_FUNCTION_119_0();
  v46 = v14;
  v56 = v12 + v14;
  v59 = v3 + 16;
  v55 = v3 + 8;
  v44 = 0;
  v45 = (v3 + 32);
  v54 = MEMORY[0x277D84F98];
  v50 = v3;
  v51 = v1;
  v48 = v10;
  v49 = v7;
  v47 = v12;
  while (v13 < *(v12 + 16))
  {
    v58 = *(v3 + 72);
    v15 = *(v3 + 16);
    v15(v10, v56 + v58 * v13, v1);
    v16 = sub_237C059DC();
    v18 = sub_2379EB318(46, 0xE100000000000000, v16, v17);
    if ((v19 & 1) != 0 || v18 < 0x4000)
    {
      OUTLINED_FUNCTION_3_25();
      v20(v10, v1);
    }

    else
    {
      v21 = sub_237C0884C();
      v23 = v22;
      v52 = v24;
      v26 = v25;

      v27 = MEMORY[0x2383DC310](v21, v23, v52, v26);
      v29 = v28;

      v30 = v1;
      v31 = v27;
      v15(v7, v10, v30);
      sub_237A560B8(v53);
      v32 = v54;
      swift_isUniquelyReferenced_nonNull_native();
      v33 = sub_237ACAC78(v31, v29);
      if (__OFADD__(*(v32 + 16), (v34 & 1) == 0))
      {
        goto LABEL_23;
      }

      v35 = v33;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
      if (sub_237C090AC())
      {
        v37 = sub_237ACAC78(v31, v29);
        v7 = v49;
        v12 = v47;
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_24;
        }

        v35 = v37;
        v10 = v48;
      }

      else
      {
        v10 = v48;
        v7 = v49;
        v12 = v47;
      }

      if (v36)
      {
      }

      else
      {
        sub_237B42690(v35, v31, v29, MEMORY[0x277D84F90], v32);
      }

      v54 = v32;
      v39 = *(v32 + 56) + 8 * v35;
      sub_237A9D0EC();
      v40 = *(*v39 + 16);
      sub_237A9D208(v40);
      OUTLINED_FUNCTION_3_25();
      v1 = v51;
      v41(v10, v51);
      v42 = *v39;
      *(v42 + 16) = v40 + 1;
      (*v45)(v42 + v46 + v40 * v58, v7, v1);
      v53 = sub_237A5DC5C;
      v3 = v50;
    }

    if (v57 == ++v13)
    {

      v43 = v53;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_237C0932C();
  __break(1u);
}

void *sub_237A5DA10()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_237C059EC();
  v7[0] = 0;
  v2 = [v0 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:0 options:4 error:v7];

  v3 = v7[0];
  if (v2)
  {
    sub_237C05ADC();
    v1 = sub_237C0893C();
    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    sub_237C0593C();

    swift_willThrow();
  }

  return v1;
}

id sub_237A5DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  v9 = sub_237C0892C();

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:v9 options:a3 error:a4];

  return v10;
}

uint64_t sub_237A5DBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA68, &qword_237C0E550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_5_20(unint64_t a1@<X8>)
{

  sub_237AC8AF4(a1 > 1, v1, 1);
}

uint64_t sub_237A5DCE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C0704C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237A5DD84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C0704C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AnyTreeClassifierModel(uint64_t a1)
{
  result = qword_27DE9BA80;
  if (!qword_27DE9BA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A5DE50(uint64_t a1)
{
  sub_237A47848(319);
  if (v1 <= 0x3F)
  {
    sub_237C0704C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_237A5DEEC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  if (*(v6 + 16))
  {
    result = sub_237A0D2E0(a1);
    if (!v5)
    {
      v26[1] = a4;
      type metadata accessor for AnyTreeClassifierModel(0);
      v16 = sub_237C0703C();
      MEMORY[0x28223BE20](v16);
      v17 = &v26[-4];
      v24 = v6;
      v25 = v18;
      if (v19)
      {
        sub_2379E2800(sub_237A5F208, v17, v16);

        v20 = OUTLINED_FUNCTION_1_25();
        sub_237A5E730(v20, v21);
      }

      else
      {
        sub_2379E2664(sub_237A5F228, v17, v16);

        v22 = OUTLINED_FUNCTION_1_25();
        sub_237A5E1C8(v22, v23);
      }

      return (*(v11 + 8))(v14, v9);
    }
  }

  else
  {
    result = sub_237C090DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_237A5E1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB70, &unk_237C0E600);
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = &v35 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA98, &qword_237C0E610);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = *v2;
  v37 = v2[1];
  v38 = v11;
  v52 = v11;
  v53 = v37;
  swift_bridgeObjectRetain_n();
  MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
  v52 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAA0, &qword_237C0E618);
  sub_237A5F288(&qword_27DE9BAA8, &qword_27DE9BAA0, &qword_237C0E618);
  v39 = v10;
  v48 = v4;
  sub_237C05EEC();
  v49 = MEMORY[0x277D83B88];
  v50 = MEMORY[0x277D83B98];
  KeyPath = swift_getKeyPath();
  v13 = *(a1 + 16);
  if (v13)
  {
    v36 = v6;
    v51 = MEMORY[0x277D84F90];
    sub_237AC8C34(0, v13, 0);
    v14 = v51;
    v15 = v46 + 16;
    v16 = *(v46 + 16);
    v17 = a1 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v45 = *(v46 + 72);
    v46 = v16;
    v18 = (v15 - 8);
    v19 = v15;
    do
    {
      v21 = v47;
      v20 = v48;
      v22 = v19;
      (v46)(v47, v17, v48);
      v23 = KeyPath;
      swift_getAtKeyPath();
      v24 = v52;
      v25 = v53;
      (*v18)(v21, v20);
      v51 = v14;
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_237AC8C34(v26 > 1, v27 + 1, 1);
        v14 = v51;
      }

      *(v14 + 16) = v27 + 1;
      v28 = v14 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      v17 += v45;
      --v13;
      v19 = v22;
      KeyPath = v23;
    }

    while (v13);

    v29 = v43;
    v6 = v36;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
    v29 = v43;
  }

  v52 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAB0, &qword_237C0E660);
  sub_237A5F288(&qword_27DE9BAB8, &qword_27DE9BAB0, &qword_237C0E660);
  v30 = v42;
  sub_237C05EFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  sub_237C0602C();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_237C0B670;
  sub_237C05EBC();
  v32 = v41;
  v33 = v39;
  sub_237C05EBC();
  v52 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
  sub_237A5F288(&qword_27DE9ABB0, &qword_27DE9ABA8, &unk_237C0B910);
  sub_237C05D7C();
  (*(v6 + 8))(v30, v29);
  return (*(v40 + 8))(v33, v32);
}

uint64_t sub_237A5E730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  *&v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC8, &unk_237C0E670);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = *v2;
  v30 = v2[1];
  v31 = v12;
  *&v44 = v12;
  *(&v44 + 1) = v30;
  swift_bridgeObjectRetain_n();
  MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
  *&v44 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAC8, &qword_237C0B848);
  sub_237A5F288(&qword_27DE9BAD0, &qword_27DE9AAC8, &qword_237C0B848);
  v32 = v11;
  v39 = v4;
  sub_237C05EEC();
  v41 = MEMORY[0x277D837D0];
  v42 = MEMORY[0x277D837E0];
  swift_getKeyPath();
  v13 = *(a1 + 16);
  if (v13)
  {
    v29 = v7;
    v43 = MEMORY[0x277D84F90];
    sub_237AC8A54();
    v14 = v43;
    v38 = *(v40 + 16);
    v15 = a1 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v16 = *(v40 + 72);
    v17 = (v40 + 8);
    v18 = v40 + 16;
    do
    {
      v19 = v39;
      v20 = v18;
      v38(v6, v15, v39);
      swift_getAtKeyPath();
      v40 = v44;
      (*v17)(v6, v19);
      v43 = v14;
      v21 = *(v14 + 16);
      if (v21 >= *(v14 + 24) >> 1)
      {
        sub_237AC8A54();
        v14 = v43;
      }

      *(v14 + 16) = v21 + 1;
      *(v14 + 16 * v21 + 32) = v40;
      v15 += v16;
      --v13;
      v18 = v20;
    }

    while (v13);

    v22 = v36;
    v7 = v29;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
    v22 = v36;
  }

  *&v44 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAD8, &qword_237C0E680);
  sub_237A5F288(&qword_27DE9BAE0, &qword_27DE9BAD8, &qword_237C0E680);
  v23 = v35;
  sub_237C05EFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  sub_237C0602C();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_237C0B670;
  sub_237C05EBC();
  v25 = v34;
  v26 = v32;
  sub_237C05EBC();
  *&v44 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
  sub_237A5F288(&qword_27DE9ABB0, &qword_27DE9ABA8, &unk_237C0B910);
  sub_237C05D7C();
  (*(v7 + 8))(v23, v22);
  return (*(v33 + 8))(v26, v25);
}

uint64_t sub_237A5ED14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC0, &qword_237C0E668);
  sub_237C06BDC();
  if ((v4 & 0x8000000000000000) == 0 && v4 < v2)
  {
    sub_237C06BDC();
    if ((v4 & 0x8000000000000000) == 0 && v4 < v2)
    {
      sub_237C06BBC();
      return sub_237C06BCC();
    }

    __break(1u);
  }

  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237A5EE2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC0, &qword_237C0E668);
  sub_237C06BDC();
  if ((v4 & 0x8000000000000000) == 0 && v4 < v2)
  {
    sub_237C06BDC();
    if ((v4 & 0x8000000000000000) == 0 && v4 < v2)
    {

      sub_237C06BBC();
      return sub_237C06BCC();
    }

    __break(1u);
  }

  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237A5EF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_237C0602C();
  MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237A5DEEC(a1, v12);
  if (!v2)
  {
    v14[1] = a1;
    v14[3] = a2;
    sub_237C05DFC();
    sub_237C05DFC();
    sub_237B0CBBC();
    return (*(v9 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_237A5F124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237A5DEEC(a2, a1);
  v5 = *(v4 + 8);

  return v5();
}

unint64_t sub_237A5F1B0()
{
  result = qword_27DE9BA90;
  if (!qword_27DE9BA90)
  {
    type metadata accessor for AnyTreeClassifierModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BA90);
  }

  return result;
}

__n128 sub_237A5F260(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_237A5F288(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_237A5F30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_103();
  v6 = swift_allocObject();
  sub_237A5F370(a1, a2, a3);
  return v6;
}

uint64_t sub_237A5F370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_15();
  v57 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_14();
  if (!v14)
  {
    goto LABEL_40;
  }

  v15 = v14;
  type metadata accessor for CMLSequence();
  inited = swift_initStackObject();
  *(inited + 16) = v15;
  v68 = inited;
  *(inited + 24) = 1;
  v54 = a1;
  v55 = v9;
  (*(v9 + 16))(v3, a1, a2);
  OUTLINED_FUNCTION_13_11();
  sub_237C0885C();
  v56 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = 6;
  while (2)
  {
    v18 = v5;
    v19 = AssociatedTypeWitness;
    v20 = sub_237C08D7C();
    v28 = v62;
    if (v17 == 6)
    {
      switch(v62)
      {
        case 0:
          goto LABEL_7;
        case 1:
          goto LABEL_21;
        case 2:
          goto LABEL_16;
        case 3:
          goto LABEL_19;
        case 4:
          goto LABEL_14;
        case 5:
          goto LABEL_26;
        default:
          goto LABEL_10;
      }
    }

    switch(v62)
    {
      case 0:
        if (v17)
        {
          goto LABEL_30;
        }

LABEL_7:
        v29 = sub_237B0F164(v60, v21, v22, v23, v24, v25, v26, v27, v53, v54, v55, v56, v57, v58, AssociatedConformanceWitness, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
        if (v4)
        {
          goto LABEL_42;
        }

        v30 = v29;
        if (!v29)
        {
          goto LABEL_39;
        }

        type metadata accessor for CMLFeatureValue();
        OUTLINED_FUNCTION_11_9();
        swift_allocObject();
        v31 = sub_237A2E764(v30, 1);
        v17 = 0;
        goto LABEL_27;
      case 1:
        if (v17 != 1)
        {
          goto LABEL_30;
        }

LABEL_21:
        v36 = sub_237B0F594(v20, v21, v22, v23, v24, v25, v26, v27, v53, v54, v55, v56, v57, v58, AssociatedConformanceWitness, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
        if (v4)
        {
          goto LABEL_42;
        }

        v37 = v36;
        if (!v36)
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          OUTLINED_FUNCTION_10_13();
          swift_unexpectedError();
          __break(1u);
          JUMPOUT(0x237A5F8ECLL);
        }

        type metadata accessor for CMLFeatureValue();
        OUTLINED_FUNCTION_11_9();
        swift_allocObject();
        v17 = 1;
        v32 = sub_237A2E764(v37, 1);
        goto LABEL_24;
      case 2:
        if (v17 != 2)
        {
          goto LABEL_30;
        }

LABEL_16:
        type metadata accessor for CMLFeatureValue();
        v33 = OUTLINED_FUNCTION_13_11();
        sub_2379E9288(v33, v34, v62);
        OUTLINED_FUNCTION_13_11();
        v35 = sub_237A2E7CC();
        if (v4)
        {
          goto LABEL_42;
        }

        v31 = v35;
        v17 = 2;
        goto LABEL_27;
      case 3:
        if (v17 != 3)
        {
          goto LABEL_30;
        }

LABEL_19:
        v31 = sub_237A91FA8();
        v17 = 3;
        goto LABEL_27;
      case 4:
        if (v17 != 4)
        {
          goto LABEL_30;
        }

LABEL_14:
        v31 = sub_237AFF290();
        v17 = 4;
        goto LABEL_27;
      case 5:
        if (v17 != 5)
        {
LABEL_30:
          sub_2379E8AF0();
          v40 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
          *v41 = 0xD000000000000027;
          v41[1] = 0x8000000237C19320;
          OUTLINED_FUNCTION_2_5(v40, v41);
          swift_setDeallocating();
          sub_237A2E6E8();
          OUTLINED_FUNCTION_11_9();
          swift_deallocClassInstance();
          goto LABEL_31;
        }

LABEL_26:
        v31 = sub_237AC85C4();
        v17 = 5;
        goto LABEL_27;
      default:
LABEL_10:
        if (v17 == 6)
        {
          type metadata accessor for CMLFeatureValue();
          v32 = sub_237A2E78C();
LABEL_24:
          v31 = v32;
LABEL_27:
          sub_237A2DE9C(v31);
          if (v4)
          {
            swift_setDeallocating();
            sub_237A2E6E8();
            OUTLINED_FUNCTION_11_9();
            swift_deallocClassInstance();

LABEL_31:
            v42 = OUTLINED_FUNCTION_13_11();
            sub_237A60DCC(v42, v43, v28);
            (*(v55 + 8))(v54, v56);
            v44 = OUTLINED_FUNCTION_15_11();
            v45(v44);
            goto LABEL_32;
          }

          v38 = OUTLINED_FUNCTION_13_11();
          sub_237A60DCC(v38, v39, v28);

          AssociatedTypeWitness = v19;
          v5 = v18;
          continue;
        }

        v48 = OUTLINED_FUNCTION_15_11();
        v49(v48);
        v50 = sub_237B0E008(*(v68 + 16));
        if (v4)
        {
          swift_setDeallocating();
          sub_237A2E6E8();
          OUTLINED_FUNCTION_11_9();
          swift_deallocClassInstance();
          (*(v55 + 8))(v54, v56);
LABEL_32:
          type metadata accessor for _UntypedColumn();
          v46 = v58;
          OUTLINED_FUNCTION_9_15();
          swift_deallocPartialClassInstance();
        }

        else
        {
          v51 = v50;
          if (!v50)
          {
            goto LABEL_41;
          }

          swift_setDeallocating();
          sub_237A2E6E8();
          OUTLINED_FUNCTION_11_9();
          swift_deallocClassInstance();
          type metadata accessor for CMLColumn();
          OUTLINED_FUNCTION_103();
          v52 = swift_allocObject();
          *(v52 + 16) = v51;
          (*(v55 + 8))(v54, v56);
          v46 = v58;
          *(v58 + 16) = v52;
        }

        return v46;
    }
  }
}

uint64_t sub_237A5F91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_103();
  v8 = swift_allocObject();
  sub_237A5F988(a1, a2, a3, a4);
  return v8;
}

void sub_237A5F988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_15();
  v44 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v45 = &v38 - v10;
  v40 = v11;
  sub_237C08D2C();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  OUTLINED_FUNCTION_3_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11_16();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_15();
  v41 = v19;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_14();
  if (v21)
  {
    v22 = v21;
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    *(inited + 16) = v22;
    v48 = inited;
    *(inited + 24) = 1;
    (*(v16 + 16))(v4, a1, a2);
    sub_237C0885C();
    v39 = a2;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v43 = (v44 + 32);
    v44 += 8;
    v24 = v16;
    v25 = v40;
    while (1)
    {
      sub_237C08D7C();
      if (__swift_getEnumTagSinglePayload(v14, 1, v25) == 1)
      {
        break;
      }

      (*v43)(v45, v14, v25);
      v26 = sub_237B70DD4(v25, v47);
      v27 = v49;
      sub_237A2DE9C(v26);
      v49 = v27;
      if (v27)
      {

        swift_setDeallocating();
        sub_237A2E6E8();
        OUTLINED_FUNCTION_11_9();
        swift_deallocClassInstance();
        (*(v24 + 8))(a1, v39);
        v35 = OUTLINED_FUNCTION_14_12();
        v36(v35);
        (*(v41 + 8))(v5, AssociatedTypeWitness);
        goto LABEL_9;
      }

      v28 = OUTLINED_FUNCTION_14_12();
      v29(v28);
    }

    (*(v41 + 8))(v5, AssociatedTypeWitness);
    (*(v47 + 8))(&v50, v25);
    OUTLINED_FUNCTION_12_15();
    v32 = v31 >> v30;
    type metadata accessor for CMLColumn();
    v33 = v49;
    v34 = sub_237A2ED1C(v48, v32);
    if (v33)
    {
      (*(v24 + 8))(a1, v39);
LABEL_9:
      type metadata accessor for _UntypedColumn();
      OUTLINED_FUNCTION_6_21();
      swift_deallocPartialClassInstance();
      return;
    }

    v37 = v34;
    (*(v24 + 8))(a1, v39);
    *(v42 + 16) = v37;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237A5FDF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = sub_237AFC858();
  sub_2379E8CE8(v5, v6, v7);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_237B10560(*(v8 + 16), a2);
    if (v9)
    {

      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v3 + 16) = v10;
      return v3;
    }
  }

  __break(1u);

  OUTLINED_FUNCTION_2_29();
  swift_unexpectedError();
  type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_9_15();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_237A5FED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_103();
  v8 = swift_allocObject();
  sub_237A5FF38(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_237A5FF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_237B70DD4(a3, a4);
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = sub_237B10560(*(v9 + 16), a2);
    if (v10)
    {

      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      (*(*(a3 - 8) + 8))(a1, a3);
      *(v5 + 16) = v11;
      return v5;
    }
  }

  __break(1u);

  OUTLINED_FUNCTION_2_29();
  swift_unexpectedError();
  type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_9_15();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_237A6003C(uint64_t a1, uint64_t a2)
{
  if ((a2 | a1) < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_237B10B10(a1, a2);
    if (v3)
    {
      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v2 + 16) = v4;
      return v2;
    }
  }

  __break(1u);
  OUTLINED_FUNCTION_2_29();
  swift_unexpectedError();
  type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_6_21();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_237A600CC(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a2, 1);
  v4 = a2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v4 | a1) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_237B10B10(a1, v4);
  if (v5)
  {
    type metadata accessor for CMLColumn();
    OUTLINED_FUNCTION_103();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v2 + 16) = v6;
    return v2;
  }

LABEL_7:
  __break(1u);
  OUTLINED_FUNCTION_2_29();
  swift_unexpectedError();
  type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_6_21();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_237A60168(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = sub_237A2F168();
  v6 = *(a1 + 16);
  if (v5 == sub_237A2F168())
  {
    type metadata accessor for CMLColumn();

    result = sub_237A2F0FC(v4, v6);
    if (!v2)
    {
      v8 = result;
      type metadata accessor for _UntypedColumn();
      OUTLINED_FUNCTION_103();
      result = swift_allocObject();
      *(result + 16) = v8;
    }
  }

  else
  {
    sub_2379E8AF0();
    v9 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v10 = 0xD000000000000034;
    v10[1] = 0x8000000237C19370;
    return OUTLINED_FUNCTION_2_5(v9, v10);
  }

  return result;
}

void sub_237A60248(_BYTE *a1@<X8>)
{
  sub_237A2F168();
  OUTLINED_FUNCTION_12_15();
  *a1 = v3 >> v2;
}

uint64_t sub_237A60280(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v5 = v3;
  v6 = a1;
  OUTLINED_FUNCTION_19_12(a1, a2);
  if (v4 > 9)
  {
LABEL_30:
    sub_2379E8AF0();
    v34 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v35 = 0xD000000000000017;
    v35[1] = 0x8000000237C193B0;
    OUTLINED_FUNCTION_2_5(v34, v35);
  }

  else
  {
    switch(v6)
    {
      case 1:
        goto LABEL_21;
      case 2:
        goto LABEL_12;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_6;
      case 5:
        goto LABEL_24;
      case 6:
        goto LABEL_27;
      case 7:
        goto LABEL_18;
      case 8:
        v36 = OUTLINED_FUNCTION_1_26();
        v38 = sub_237B130A4(v36, "<=", v37);
        if (v3)
        {
        }

        v5 = v38;
        if (!v38)
        {
          __break(1u);
          JUMPOUT(0x237A60508);
        }

        goto LABEL_34;
      case 9:
        goto LABEL_9;
      default:
        v7 = OUTLINED_FUNCTION_1_26();
        v9 = sub_237B130A4(v7, "+", v8);
        if (v3)
        {
        }

        v5 = v9;
        if (v9)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_6:
        v10 = OUTLINED_FUNCTION_1_26();
        v12 = sub_237B130A4(v10, "==", v11);
        if (v5)
        {
        }

        v5 = v12;
        if (v12)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_9:
        v13 = OUTLINED_FUNCTION_1_26();
        v15 = sub_237B130A4(v13, ">=", v14);
        if (v5)
        {
        }

        v5 = v15;
        if (v15)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_12:
        v16 = OUTLINED_FUNCTION_1_26();
        v18 = sub_237B130A4(v16, "/", v17);
        if (v5)
        {
        }

        v5 = v18;
        if (v18)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_15:
        v19 = OUTLINED_FUNCTION_1_26();
        v21 = sub_237B130A4(v19, "*", v20);
        if (v5)
        {
        }

        v5 = v21;
        if (v21)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_18:
        v22 = OUTLINED_FUNCTION_1_26();
        v24 = sub_237B130A4(v22, ">", v23);
        if (v5)
        {
        }

        v5 = v24;
        if (v24)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_21:
        v25 = OUTLINED_FUNCTION_1_26();
        v27 = sub_237B130A4(v25, "-", v26);
        if (v5)
        {
        }

        v5 = v27;
        if (v27)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_24:
        v28 = OUTLINED_FUNCTION_1_26();
        v30 = sub_237B130A4(v28, "!=", v29);
        if (v5)
        {
        }

        v5 = v30;
        if (v30)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_27:
        v31 = OUTLINED_FUNCTION_1_26();
        v33 = sub_237B130A4(v31, "<", v32);
        if (v5)
        {
        }

        v5 = v33;
        if (!v33)
        {
          __break(1u);
          goto LABEL_30;
        }

LABEL_34:

        type metadata accessor for CMLColumn();
        OUTLINED_FUNCTION_103();
        v40 = swift_allocObject();
        *(v40 + 16) = v5;
        type metadata accessor for _UntypedColumn();
        OUTLINED_FUNCTION_103();
        result = swift_allocObject();
        *(result + 16) = v40;
        break;
    }
  }

  return result;
}

uint64_t sub_237A60530(uint64_t a1, __n128 *a2)
{
  v4 = v2;
  v5 = a1;
  OUTLINED_FUNCTION_19_12(a1, a2);
  if (v3 > 9)
  {
LABEL_30:
    sub_2379E8AF0();
    v33 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v34 = 0xD000000000000017;
    v34[1] = 0x8000000237C193B0;
    OUTLINED_FUNCTION_2_5(v33, v34);
  }

  else
  {
    switch(v5)
    {
      case 1:
        goto LABEL_21;
      case 2:
        goto LABEL_12;
      case 3:
        goto LABEL_15;
      case 4:
        goto LABEL_6;
      case 5:
        goto LABEL_24;
      case 6:
        goto LABEL_27;
      case 7:
        goto LABEL_18;
      case 8:
        v35 = OUTLINED_FUNCTION_0_27();
        v37 = sub_237B13104(v35, "<=", v36);
        if (v2)
        {
        }

        v4 = v37;
        if (!v37)
        {
          __break(1u);
          JUMPOUT(0x237A607B8);
        }

        goto LABEL_34;
      case 9:
        goto LABEL_9;
      default:
        v6 = OUTLINED_FUNCTION_0_27();
        v8 = sub_237B13104(v6, "+", v7);
        if (v2)
        {
        }

        v4 = v8;
        if (v8)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_6:
        v9 = OUTLINED_FUNCTION_0_27();
        v11 = sub_237B13104(v9, "==", v10);
        if (v4)
        {
        }

        v4 = v11;
        if (v11)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_9:
        v12 = OUTLINED_FUNCTION_0_27();
        v14 = sub_237B13104(v12, ">=", v13);
        if (v4)
        {
        }

        v4 = v14;
        if (v14)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_12:
        v15 = OUTLINED_FUNCTION_0_27();
        v17 = sub_237B13104(v15, "/", v16);
        if (v4)
        {
        }

        v4 = v17;
        if (v17)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_15:
        v18 = OUTLINED_FUNCTION_0_27();
        v20 = sub_237B13104(v18, "*", v19);
        if (v4)
        {
        }

        v4 = v20;
        if (v20)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_18:
        v21 = OUTLINED_FUNCTION_0_27();
        v23 = sub_237B13104(v21, ">", v22);
        if (v4)
        {
        }

        v4 = v23;
        if (v23)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_21:
        v24 = OUTLINED_FUNCTION_0_27();
        v26 = sub_237B13104(v24, "-", v25);
        if (v4)
        {
        }

        v4 = v26;
        if (v26)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_24:
        v27 = OUTLINED_FUNCTION_0_27();
        v29 = sub_237B13104(v27, "!=", v28);
        if (v4)
        {
        }

        v4 = v29;
        if (v29)
        {
          goto LABEL_34;
        }

        __break(1u);
LABEL_27:
        v30 = OUTLINED_FUNCTION_0_27();
        v32 = sub_237B13104(v30, "<", v31);
        if (v4)
        {
        }

        v4 = v32;
        if (!v32)
        {
          __break(1u);
          goto LABEL_30;
        }

LABEL_34:

        type metadata accessor for CMLColumn();
        OUTLINED_FUNCTION_103();
        v39 = swift_allocObject();
        *(v39 + 16) = v4;
        type metadata accessor for _UntypedColumn();
        OUTLINED_FUNCTION_103();
        result = swift_allocObject();
        *(result + 16) = v39;
        break;
    }
  }

  return result;
}

uint64_t sub_237A607E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0 || (v3 = result, result = sub_237A2F128(), result <= v3))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 6;
  }

  else
  {
    v4 = sub_237A2F1A8(v3);

    return sub_237AFC548(v4, a2);
  }

  return result;
}

uint64_t sub_237A60884()
{
  sub_237A60248(v32);
  v0 = 0xE300000000000000;
  v1 = 7630409;
  switch(LOBYTE(v32[0]))
  {
    case 1:
      v0 = 0xE600000000000000;
      v1 = 0x656C62756F44;
      break;
    case 2:
      v0 = 0xE600000000000000;
      v1 = 0x676E69727453;
      break;
    case 3:
      v0 = 0xE800000000000000;
      v1 = 0x65636E6575716553;
      break;
    case 4:
      v0 = 0xEA00000000007972;
      v1 = 0x616E6F6974636944;
      break;
    case 5:
      v1 = 0x72724169746C754DLL;
      v0 = 0xEA00000000007961;
      break;
    case 6:
      v0 = 0xE700000000000000;
      v1 = OUTLINED_FUNCTION_16_10();
      break;
    default:
      break;
  }

  v29 = 0x70795465756C6156;
  v30 = 0xEB00000000203A65;
  MEMORY[0x2383DC360](v1, v0);

  MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C19350);

  v32[0] = 0x70795465756C6156;
  v32[1] = 0xEB00000000203A65;
  v2 = sub_237A2F128();
  if (v2 >= 10)
  {
    v3 = 10;
  }

  else
  {
    v3 = v2;
  }

  if (v2 < 0)
  {
    __break(1u);
    JUMPOUT(0x237A60CB0);
  }

  v4 = v2;
  if (v2)
  {
    v5 = 0;
    while (2)
    {
      v6 = v5;
      if (v5)
      {
        MEMORY[0x2383DC360](8236, 0xE200000000000000);
      }

      ++v5;
      sub_237A607E0(v6, &v29);
      switch(v31)
      {
        case 1:
          v20 = sub_237C08A6C();
          MEMORY[0x2383DC360](v20);
          goto LABEL_25;
        case 2:

          v12 = OUTLINED_FUNCTION_93_0();
          MEMORY[0x2383DC360](v12);
          v13 = OUTLINED_FUNCTION_93_0();
          sub_2379E8CE8(v13, v14, 2);
          v15 = OUTLINED_FUNCTION_93_0();
          sub_2379E8CE8(v15, v16, 2);
          goto LABEL_26;
        case 3:
          v30 = sub_237A918E8;
          v31 = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAF0, &qword_237C0E6A0);
          sub_237A60E34();
          v17 = sub_237C0864C();
          v19 = v18;

          v29 = 91;
          v30 = 0xE100000000000000;
          MEMORY[0x2383DC360](v17, v19);

          MEMORY[0x2383DC360](93, 0xE100000000000000);

          MEMORY[0x2383DC360](v29, v30);
          v9 = OUTLINED_FUNCTION_93_0();
          v11 = 3;
          goto LABEL_21;
        case 4:
          sub_237A60DE0();
          v8 = sub_237C0858C();
          MEMORY[0x2383DC360](v8);
          v9 = OUTLINED_FUNCTION_93_0();
          v11 = 4;
LABEL_21:
          sub_2379E8CE8(v9, v10, v11);
          goto LABEL_25;
        case 5:
          v21 = [v29 description];
          v22 = sub_237C086EC();
          v24 = v23;

          MEMORY[0x2383DC360](v22, v24);
          v25 = OUTLINED_FUNCTION_93_0();
          sub_2379E8CE8(v25, v26, 5);
          goto LABEL_25;
        case 6:
          v27 = OUTLINED_FUNCTION_16_10();
          MEMORY[0x2383DC360](v27, 0xE700000000000000);
          goto LABEL_26;
        default:
          sub_237A20C10();
          v7 = sub_237C08DEC();
          MEMORY[0x2383DC360](v7);
LABEL_25:

LABEL_26:
          if (v3 != v5)
          {
            continue;
          }

          if (v4 >= 11)
          {
            MEMORY[0x2383DC360](0x2E2E2E202CLL, 0xE500000000000000);
          }

          break;
      }

      break;
    }
  }

  MEMORY[0x2383DC360](93, 0xE100000000000000);
  return v32[0];
}

uint64_t sub_237A60CE8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = sub_237A2F37C(a1, a2, 0x5060403020100uLL >> (8 * *a4), a3);
  type metadata accessor for _UntypedColumn();
  OUTLINED_FUNCTION_103();
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

uint64_t sub_237A60D74()
{

  OUTLINED_FUNCTION_103();

  return swift_deallocClassInstance();
}

void sub_237A60DCC(id a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_2379E8CE8(a1, a2, a3);
  }
}

unint64_t sub_237A60DE0()
{
  result = qword_27DE9BAE8;
  if (!qword_27DE9BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BAE8);
  }

  return result;
}

unint64_t sub_237A60E34()
{
  result = qword_27DE9BAF8;
  if (!qword_27DE9BAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BAF0, &qword_237C0E6A0);
    sub_237A60EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BAF8);
  }

  return result;
}

unint64_t sub_237A60EB8()
{
  result = qword_27DE9BB00;
  if (!qword_27DE9BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BB00);
  }

  return result;
}

void OUTLINED_FUNCTION_18_14()
{

  JUMPOUT(0x2383DDAC0);
}

uint64_t OUTLINED_FUNCTION_19_12(uint64_t a1, uint64_t a2)
{

  return sub_237AFC858();
}

uint64_t type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9BB08;
  if (!qword_27DE9BB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A61074@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_3_3();
  v14 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  sub_237A0BA6C(v3, v16 - v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v19 = *v17;
      v20 = *(v17 + 8);
      goto LABEL_7;
    case 2:
      (*(v7 + 32))(v2, v17, v5);
      (*(v7 + 16))(v11, v2, v5);
      sub_237A70684(v11, 1, &v24);
      result = (*(v7 + 8))(v2, v5);
      v19 = v24;
      v20 = v25;
LABEL_7:
      *a1 = v19;
      *(a1 + 8) = v20;
      break;
    case 3:
      v21 = MEMORY[0x2383DDC00](0);
      if (!v21)
      {
        __break(1u);
        JUMPOUT(0x237A612C8);
      }

      v22 = v21;
      type metadata accessor for CMLTable();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v23);
      *a1 = result;
      *(a1 + 8) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237A612D8(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a3;
  v56 = a2;
  v54 = a1;
  v55 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  v10 = sub_237C05D1C();
  OUTLINED_FUNCTION_0();
  v51 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v50 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_3_3();
  v27 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = (v29 - v28);
  sub_237A0BA6C(v52, v29 - v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v41 = *v30;
      v42 = *(v30 + 8);
      v43 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      v44(v43);
      *&v57 = v41;
      BYTE8(v57) = v42;
      v36 = v56;
      sub_237A70ED4(&v57, v56);
      goto LABEL_10;
    case 2u:
      v38 = *(v5 + 32);
      v37 = v55;
      v38(v9, v30, v55);
      if (sub_237C05C5C())
      {
        (*(v5 + 8))(v9, v37);
        v39 = OUTLINED_FUNCTION_4_2();
LABEL_7:
        v40(v39);
        v35 = 1;
        v36 = v56;
      }

      else
      {
        v45 = OUTLINED_FUNCTION_4_2();
        v46(v45);
        v36 = v56;
        v38(v56, v9, v37);
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
    case 3u:
      v39 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      goto LABEL_7;
    default:
      v31 = *(v30 + 16);
      v32 = *(v30 + 17);
      v57 = *v30;
      v58 = v31;
      v59 = v32;
      sub_237A70BAC(v3, v20, &v57);
      v33 = v51;
      v34 = *(v51 + 16);
      v34(v17, v20, v10);
      sub_237C05DCC();
      sub_2379EA894(v3, v24);
      if (__swift_getEnumTagSinglePayload(v24, 1, v10) == 1)
      {
        (*(v33 + 8))(v20, v10);
        sub_2379EA904(v3);
        v35 = 1;
        v37 = v55;
        v36 = v56;
      }

      else
      {
        (*(v33 + 32))(v17, v24, v10);
        v34(v50, v17, v10);
        v36 = v56;
        sub_237C05DCC();
        v47 = *(v33 + 8);
        v47(v17, v10);
        v47(v20, v10);
        sub_2379EA904(v3);
        v35 = 0;
        v37 = v55;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
  }
}

uint64_t sub_237A61760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB18, &qword_237C0E6C8);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237A617B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB18, &qword_237C0E6C8);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t type metadata accessor for MLFewShotSoundClassifier.DataSource(uint64_t a1)
{
  result = qword_27DE9BB20;
  if (!qword_27DE9BB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A61864(uint64_t a1)
{
  sub_237A6191C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_237C05ADC();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_237A6191C()
{
  if (!qword_27DE9BB30)
  {
    v0 = sub_237C05ADC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9BB30);
    }
  }
}

unint64_t sub_237A61964(void *a1)
{
  v3 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = type metadata accessor for MLFewShotSoundClassifier.DataSource(0);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  sub_237A61C14(v1, v19 - v18);
  (*(v12 + 32))(v16, v20, v10);
  sub_237C0820C();
  sub_237A5D3A4();
  if (v2)
  {
    (*(v5 + 8))(v9, v3);
  }

  else
  {
    v25 = v21;
    (*(v5 + 8))(v9, v3);
    if (*(v25 + 16))
    {
      v1 = sub_237A61C78(a1, v25);
      v27 = OUTLINED_FUNCTION_0_28();
      v28(v27);

      return v1;
    }

    v1 = 0x8000000237C193E0;
    sub_2379E8AF0();
    swift_allocError();
    *v26 = 0xD00000000000002ELL;
    *(v26 + 8) = 0x8000000237C193E0;
    *(v26 + 16) = 0u;
    *(v26 + 32) = 0u;
    *(v26 + 48) = 2;
    swift_willThrow();
  }

  v22 = OUTLINED_FUNCTION_0_28();
  v23(v22);
  return v1;
}

uint64_t sub_237A61C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLFewShotSoundClassifier.DataSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A61C78(void *a1, uint64_t a2)
{
  v59 = a2;
  v68 = a1;
  v66 = sub_237C0846C();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = (&v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_237C084BC();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v60 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v55 - v5;
  v57 = sub_237C08C6C();
  v6 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_237C08C5C();
  MEMORY[0x28223BE20](v9);
  v10 = sub_237C0848C();
  MEMORY[0x28223BE20](v10 - 8);
  v58 = dispatch_semaphore_create(0);
  sub_2379E8EE0(0, &qword_27DE9BB38, 0x277D85C78);
  sub_237C0847C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_237A625E4(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB48, &qword_237C0E6E0);
  sub_237A6263C();
  sub_237C08E1C();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v57);
  v12 = sub_237C08C7C();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v57 = v13 + 16;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v56 = (v14 + 16);
  v15 = objc_opt_self();
  sub_237C05ADC();
  v16 = sub_237C0892C();
  v17 = sub_237C059EC();
  v18 = swift_allocObject();
  v18[2] = v13;
  v18[3] = v14;
  v19 = v58;
  v18[4] = v58;
  aBlock[4] = sub_237A627F4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_237A62800;
  aBlock[3] = &block_descriptor_3;
  v20 = _Block_copy(aBlock);

  v21 = v19;

  v68 = v12;
  v22 = [v15 featurizeFiles:v16 hallucinatorModelURL:v17 queue:v12 completionHandler:v20];
  _Block_release(v20);
  v23 = v21;
  swift_unknownObjectRelease();

  v24 = v60;
  sub_237C0849C();
  v25 = v62;
  *v62 = 600;
  v26 = v64;
  v27 = v66;
  (*(v64 + 104))(v25, *MEMORY[0x277D85188], v66);
  v28 = v61;
  sub_237C084AC();
  (*(v26 + 8))(v25, v27);
  v29 = *(v63 + 8);
  v30 = v65;
  v29(v24, v65);
  v31 = sub_237C08C8C();
  v29(v28, v30);
  if (v31)
  {
    sub_2379E8AF0();
    swift_allocError();
    *v32 = 0xD00000000000001ELL;
    *(v32 + 8) = 0x8000000237C19490;
    *(v32 + 16) = 0u;
    *(v32 + 32) = 0u;
    *(v32 + 48) = 2;
    swift_willThrow();

LABEL_15:

LABEL_19:

    return v31;
  }

  v33 = v57;
  swift_beginAccess();
  if (!*v33)
  {
    v47 = v56;
    swift_beginAccess();
    v48 = *v47;
    if (*v47)
    {
      swift_willThrow();
      v49 = v48;
    }

    else
    {
      sub_2379E8AF0();
      swift_allocError();
      *v53 = 0xD000000000000029;
      *(v53 + 8) = 0x8000000237C194B0;
      *(v53 + 16) = 0u;
      *(v53 + 32) = 0u;
      *(v53 + 48) = 2;
      swift_willThrow();
    }

    goto LABEL_15;
  }

  v34 = v23;
  v31 = *v33;
  v35 = [v31 trainingDataEmbeddings];
  sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  v36 = sub_237C0893C();

  v37 = sub_237A254D8(v36);

  if (!v37)
  {
    v50 = 0x8000000237C195A0;
    sub_2379E8AF0();
    swift_allocError();
    v52 = 0xD000000000000036;
LABEL_18:
    *v51 = v52;
    *(v51 + 8) = v50;
    *(v51 + 16) = 0u;
    *(v51 + 32) = 0u;
    *(v51 + 48) = 2;
    swift_willThrow();

    v23 = v34;
    goto LABEL_19;
  }

  v38 = [v31 trainingDataLabels];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v39 = sub_237C0893C();

  v40 = sub_237A254D8(v39);

  if (!v40)
  {
    v50 = 0x8000000237C19560;
    sub_2379E8AF0();
    swift_allocError();
    v52 = 0xD000000000000031;
    goto LABEL_18;
  }

  v41 = [v31 validationDataEmbeddings];
  v42 = sub_237C0893C();

  v43 = sub_237A254D8(v42);

  if (!v43)
  {
    v50 = 0x8000000237C19520;
    sub_2379E8AF0();
    swift_allocError();
    v52 = 0xD000000000000038;
    goto LABEL_18;
  }

  v44 = [v31 validationDataLabels];
  v45 = sub_237C0893C();

  v46 = sub_237A254D8(v45);

  if (!v46)
  {
    v50 = 0x8000000237C194E0;
    sub_2379E8AF0();
    swift_allocError();
    v52 = 0xD000000000000033;
    goto LABEL_18;
  }

  return v31;
}

unint64_t sub_237A625E4(__n128 a1)
{
  result = qword_27DE9BB40;
  if (!qword_27DE9BB40)
  {
    sub_237C08C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BB40);
  }

  return result;
}

unint64_t sub_237A6263C()
{
  result = qword_27DE9BB50;
  if (!qword_27DE9BB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BB48, &qword_237C0E6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BB50);
  }

  return result;
}

uint64_t sub_237A626A0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A626D8()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A62710(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = a1;

  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;

  return sub_237C08CAC();
}

uint64_t sub_237A627AC()
{

  return MEMORY[0x2821FE8E8](v0);
}

void sub_237A62800(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237A628C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_237A62930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t _s5ModelVMa_1(uint64_t a1)
{
  result = qword_27DE9BB58;
  if (!qword_27DE9BB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A629D4(uint64_t a1)
{
  sub_237A62A40(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_237A62A40(uint64_t a1)
{
  if (!qword_27DE9BB68)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9A788, &unk_237C13D50);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9A780, &unk_237C0A700);
    v5 = type metadata accessor for Either(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27DE9BB68);
    }
  }
}

void sub_237A62AC0()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v23 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v25 = *(v2 + 64);
  sub_237A63B30();
  if (!v0)
  {
    v27 = v8;
    v28 = v3;

    sub_237C07DCC();
    sub_237C07DBC();
    sub_237C07E6C();
    sub_237C07EAC();
    if (!v25)
    {
      sub_237C085AC();
    }

    sub_237C07EFC();
    sub_237BAC418();
    v9 = sub_237C07EDC();
    v11 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    v30 = *v11;
    sub_237B40C78();
    *v11 = v30;
    v9(&v29, 0);
    v12 = sub_237C07DAC();
    v13 = *(v12 + 16);
    if (v13)
    {
      v29 = MEMORY[0x277D84F90];
      sub_237AC8A34(0, v13, 0);
      v14 = v3;
      v15 = v29;
      v16 = v23 + 16;
      v17 = v12 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v24 = *(v23 + 72);
      v26 = *(v23 + 16);
      v18 = v8;
      do
      {
        v19 = v16;
        v26(v18, v17, v14);
        v14 = v28;
        v20 = sub_237C07DFC();
        (*(v23 + 8))(v18, v28);
        v29 = v15;
        v22 = v15[2];
        v21 = v15[3];
        if (v22 >= v21 >> 1)
        {
          sub_237AC8A34(v21 > 1, v22 + 1, 1);
          v14 = v28;
          v15 = v29;
        }

        v15[2] = v22 + 1;
        v15[v22 + 4] = v20;
        v17 += v24;
        --v13;
        v16 = v19;
        v18 = v27;
      }

      while (v13);
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    sub_2379FBD74(v15);

    sub_237C07E0C();
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A62E30()
{
  OUTLINED_FUNCTION_9();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[7] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[10] = v8;
  OUTLINED_FUNCTION_1(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_19();
  v1[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  v1[14] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_237A62F78()
{
  OUTLINED_FUNCTION_9();
  sub_237A6366C(v0[6], v0[14]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[14];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[8] + 32))(v0[9], v2, v0[7]);
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_237A63280;
    v4 = v0[2];

    return MEMORY[0x2821153B0](v4);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v2, v0[10]);
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_237A630EC;
    v6 = v0[2];

    return MEMORY[0x2821153A0](v6);
  }
}

uint64_t sub_237A630EC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v4 + 128) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_237A631EC()
{
  OUTLINED_FUNCTION_49();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_237A63280()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *(v4 + 144) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_237A63380()
{
  OUTLINED_FUNCTION_49();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_237A63418()
{
  OUTLINED_FUNCTION_49();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_237A634AC()
{
  OUTLINED_FUNCTION_49();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_237A63544()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D6854;

  return sub_237A62E30();
}

unint64_t sub_237A63608()
{
  result = qword_27DE9A760;
  if (!qword_27DE9A760)
  {
    _s5ModelVMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A760);
  }

  return result;
}

uint64_t sub_237A6366C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A636DC()
{
  OUTLINED_FUNCTION_9();
  v1[29] = v2;
  v1[30] = v0;
  v3 = sub_237C07F1C();
  v1[31] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[32] = v4;
  v1[33] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_237A63784()
{
  v1 = NSFullUserName();
  v2 = sub_237C086EC();
  v4 = v3;

  v0[2] = v2;
  v0[3] = v4;
  v0[4] = 0xD000000000000033;
  v0[5] = 0x8000000237C17C90;
  v0[6] = 0;
  v0[7] = 0;
  v0[8] = 49;
  v0[9] = 0xE100000000000000;
  v0[10] = 0;
  sub_237A62AC0();
  memcpy(v0 + 20, v0 + 2, 0x48uLL);
  sub_2379FC064((v0 + 20));
  sub_2379F1FC0();
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  v5[1] = sub_237A63928;
  v6 = v0[33];

  return sub_237A4288C(v6);
}

uint64_t sub_237A63928()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;
  *(v5 + 280) = v0;

  if (!v0)
  {
    *(v5 + 288) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_237A63A3C()
{
  OUTLINED_FUNCTION_9();
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];
  v2 = v0[36];

  return v1(v2);
}

uint64_t sub_237A63ABC()
{
  OUTLINED_FUNCTION_9();
  (*(v0[32] + 8))(v0[33], v0[31]);

  OUTLINED_FUNCTION_8();

  return v1();
}

void sub_237A63B30()
{
  OUTLINED_FUNCTION_74();
  v79 = v1;
  v75 = v2;
  sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v71 = v4;
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v70 = v6 - v5;
  OUTLINED_FUNCTION_41_0();
  v77 = sub_237C07B9C();
  OUTLINED_FUNCTION_0();
  v73 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v76 = (v10 - v9);
  OUTLINED_FUNCTION_41_0();
  v78 = sub_237C075DC();
  OUTLINED_FUNCTION_0();
  v74 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v62 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD38, &qword_237C0BBC0);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_18_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v62 - v24;
  v26 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_0();
  v32 = (v30 - v31);
  MEMORY[0x28223BE20](v33);
  v35 = v62 - v34;
  sub_237A6411C(v79, v62 - v34);
  if (v0)
  {
    goto LABEL_5;
  }

  v65 = v15;
  v66 = v22;
  v69 = v35;
  v79 = v28;
  v80 = v26;
  v67 = v18;
  v36 = v76;
  v37 = v77;
  v38 = v78;
  sub_237A64684();
  v68 = 0;
  v39 = v32;
  v40 = sub_237C07EBC();
  sub_237B3B424(v40, v25);

  if (__swift_getEnumTagSinglePayload(v25, 1, v37) == 1)
  {
    __break(1u);
  }

  else
  {
    v41 = sub_237C07B4C();
    v62[1] = v42;
    v62[2] = v41;
    v43 = v73;
    v63 = *(v73 + 8);
    v64 = v73 + 8;
    v63(v25, v37);
    v44 = sub_237C07E8C();
    v45 = v66;
    sub_237B3B424(v44, v66);
    v46 = v45;

    if (__swift_getEnumTagSinglePayload(v45, 1, v37) != 1)
    {
      v47 = v36;
      v48 = v39;
      v49 = v67;
      sub_237C07B6C();
      v63(v46, v37);
      (*(v74 + 16))(v65, v49, v38);
      sub_237C07B3C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
      v50 = v47;
      v51 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_237C0B660;
      (*(v43 + 16))(v52 + v51, v50, v37);
      v53 = v69;
      sub_237C07ECC();
      sub_237C07EBC();
      sub_237C07E9C();
      sub_237C07F0C();
      sub_237C07E0C();
      sub_237C07E8C();
      sub_237C07E9C();
      sub_237C07EBC();
      sub_237C07ECC();
      sub_237C07DDC();
      sub_237C07DEC();
      sub_237C07E1C();
      sub_237C07E2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
      v54 = v79;
      v55 = *(v79 + 72);
      v56 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_237C0B670;
      v58 = v57 + v56;
      v59 = *(v54 + 16);
      v59(v58, v53, v80);
      v59(v58 + v55, v48, v80);
      v60 = v70;
      sub_237C07D3C();
      (*(v71 + 104))(v60, *MEMORY[0x277D25368], v72);
      sub_237C07E4C();
      v63(v76, v77);
      (*(v74 + 8))(v67, v78);
      v61 = *(v54 + 8);
      v61(v48, v80);
      v61(v69, v80);
LABEL_5:
      OUTLINED_FUNCTION_73();
      return;
    }
  }

  __break(1u);
}

void sub_237A6411C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  sub_2379F1A00(a1, v10 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2379F1A64(v11, v7);
    sub_2379F0310(a2);
    sub_2379F1AC8(v7);
  }

  else
  {
    sub_237A6424C();
  }
}

void sub_237A6424C()
{
  OUTLINED_FUNCTION_74();
  v52 = v2;
  v44[1] = v3;
  sub_237C06D5C();
  OUTLINED_FUNCTION_0();
  v54 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v53 = v7 - v6;
  OUTLINED_FUNCTION_41_0();
  sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v48 = v9;
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v47 = v11 - v10;
  OUTLINED_FUNCTION_41_0();
  sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v45 = v13;
  v46 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v50 = v17;
  v51 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_14();
  MEMORY[0x28223BE20](v23);
  v25 = v44 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v44 - v27;
  v29 = objc_opt_self();
  v30 = [v29 defaultManager];
  sub_2379F364C();

  if (!v0)
  {
    v44[0] = v21;
    v31 = [v29 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v32 = sub_237C05C0C();
    v34 = v33;
    (*(v45 + 8))(v16, v46);
    v55 = v32;
    v56 = v34;
    v36 = v47;
    v35 = v48;
    v37 = v49;
    (*(v48 + 104))(v47, *MEMORY[0x277CC91D8], v49);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v35 + 8))(v36, v37);

    v38 = v51;
    v39 = *(v51 + 8);
    v40 = v1;
    v41 = v50;
    v39(v40, v50);
    OUTLINED_FUNCTION_13_12();
    sub_237C05A3C();
    v39(v25, v41);
    [objc_allocWithZone(MEMORY[0x277CBF740]) init];
    sub_237C06D4C();
    sub_237C06B2C();
    v42 = OUTLINED_FUNCTION_12_16();
    v43(v42);
    (*(v38 + 16))(v44[0], v28, v41);
    sub_237C07D8C();
    sub_237A64C34();
    v39(v28, v41);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A64684()
{
  OUTLINED_FUNCTION_74();
  v72 = v0;
  v73 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  OUTLINED_FUNCTION_0();
  v62 = v5;
  v63 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v55 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0();
  v59 = v8;
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v58 = &v55 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  MEMORY[0x28223BE20](v70);
  v71 = &v55 - v10;
  OUTLINED_FUNCTION_41_0();
  sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v68 = v12;
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v66 = v14 - v13;
  OUTLINED_FUNCTION_41_0();
  sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v64 = v16;
  v65 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v67 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v76 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_14();
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v55 - v30;
  v32 = objc_opt_self();
  v33 = [v32 defaultManager];
  sub_2379F364C();

  if (!v1)
  {
    v56 = v24;
    v57 = 0;
    v34 = [v32 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v35 = sub_237C05C0C();
    v37 = v36;
    (*(v64 + 8))(v19, v65);
    v74 = v35;
    v75 = v37;
    v39 = v68;
    v38 = v69;
    v40 = v66;
    (*(v68 + 104))(v66, *MEMORY[0x277CC91D8], v69);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v39 + 8))(v40, v38);

    v41 = *(v76 + 8);
    v42 = v67;
    v41(v2, v67);
    OUTLINED_FUNCTION_13_12();
    sub_237C05A3C();
    v41(v28, v42);
    sub_237A6366C(v72, v71);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = v61;
      v43 = v62;
      v45 = OUTLINED_FUNCTION_14_13();
      v46 = v63;
      v47(v45);
      v48 = &qword_27DE9BB78;
      v49 = &qword_27DE9A780;
      v50 = &unk_237C0A700;
      v51 = MEMORY[0x277CC5168];
    }

    else
    {
      v44 = v58;
      v43 = v59;
      v52 = OUTLINED_FUNCTION_14_13();
      v46 = v60;
      v53(v52);
      v48 = &qword_27DE9BB80;
      v49 = &qword_27DE9A788;
      v50 = &unk_237C13D50;
      v51 = MEMORY[0x277CC5158];
    }

    sub_2379D9224(v48, v49, v50, v51);
    v54 = v57;
    sub_237C06B2C();
    (*(v43 + 8))(v44, v46);
    if (!v54)
    {
      (*(v76 + 16))(v56, v31, v42);
      sub_237C07D8C();
      sub_237A64C34();
    }

    v41(v31, v42);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A64C34()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_237C059EC();
  v7[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v7];

  v3 = v7[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    v6 = sub_237C0593C();

    swift_willThrow();
  }
}

uint64_t type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9BB88;
  if (!qword_27DE9BB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A64DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_3_3();
  v14 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  sub_237A654DC(v3, v16 - v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v19 = *v17;
      v20 = *(v17 + 8);
      goto LABEL_7;
    case 2:
      (*(v7 + 32))(v2, v17, v5);
      (*(v7 + 16))(v11, v2, v5);
      sub_237A70684(v11, 1, &v24);
      result = (*(v7 + 8))(v2, v5);
      v19 = v24;
      v20 = v25;
LABEL_7:
      *a1 = v19;
      *(a1 + 8) = v20;
      break;
    case 3:
      v21 = MEMORY[0x2383DDC00](0);
      if (!v21)
      {
        __break(1u);
        JUMPOUT(0x237A65044);
      }

      v22 = v21;
      type metadata accessor for CMLTable();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v23);
      *a1 = result;
      *(a1 + 8) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_237A65054(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a3;
  v56 = a2;
  v54 = a1;
  v55 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  v10 = sub_237C05D1C();
  OUTLINED_FUNCTION_0();
  v51 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v50 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_3_3();
  v27 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = (v29 - v28);
  sub_237A654DC(v52, v29 - v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v41 = *v30;
      v42 = *(v30 + 8);
      v43 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      v44(v43);
      *&v57 = v41;
      BYTE8(v57) = v42;
      v36 = v56;
      sub_237A70ED4(&v57, v56);
      goto LABEL_10;
    case 2u:
      v38 = *(v5 + 32);
      v37 = v55;
      v38(v9, v30, v55);
      if (sub_237C05C5C())
      {
        (*(v5 + 8))(v9, v37);
        v39 = OUTLINED_FUNCTION_4_2();
LABEL_7:
        v40(v39);
        v35 = 1;
        v36 = v56;
      }

      else
      {
        v45 = OUTLINED_FUNCTION_4_2();
        v46(v45);
        v36 = v56;
        v38(v56, v9, v37);
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
    case 3u:
      v39 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      goto LABEL_7;
    default:
      v31 = *(v30 + 16);
      v32 = *(v30 + 17);
      v57 = *v30;
      v58 = v31;
      v59 = v32;
      sub_237A70BAC(v3, v20, &v57);
      v33 = v51;
      v34 = *(v51 + 16);
      v34(v17, v20, v10);
      sub_237C05DCC();
      sub_2379EA894(v3, v24);
      if (__swift_getEnumTagSinglePayload(v24, 1, v10) == 1)
      {
        (*(v33 + 8))(v20, v10);
        sub_2379EA904(v3);
        v35 = 1;
        v37 = v55;
        v36 = v56;
      }

      else
      {
        (*(v33 + 32))(v17, v24, v10);
        v34(v50, v17, v10);
        v36 = v56;
        sub_237C05DCC();
        v47 = *(v33 + 8);
        v47(v17, v10);
        v47(v20, v10);
        sub_2379EA904(v3);
        v35 = 0;
        v37 = v55;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
  }
}

uint64_t sub_237A654DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLLinearRegressor.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  result = sub_2379F6D68(v1, &v8);
  if (v9)
  {
    sub_2379DAD24(&v8, &v10);
    swift_dynamicCast();
    sub_237B65378(a1);
    return sub_237A65818(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A65608@<X0>(uint64_t a1@<X8>)
{
  result = MLLinearRegressor.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237A6564C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLLinearRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLLinearRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = *a1;
  v9 = *(a1 + 8);
  v13[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  if (v9 == 255)
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v7 = v8;
    *(v7 + 8) = v9 & 1;
  }

  else
  {
    sub_2379DBC84(v8, v9);
  }

  swift_storeEnumTagMultiPayload();
  sub_237A65874(v7, boxed_opaque_existential_0);
  return sub_2379DAE54(v13, v2);
}

uint64_t MLLinearRegressor.ModelParameters.validation.getter()
{
  result = sub_2379F6D68(v1, &v3);
  if (v4)
  {
    sub_2379DAD24(&v3, &v5);
    type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A65818(uint64_t a1)
{
  v2 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A65874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*MLLinearRegressor.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLLinearRegressor.ModelParameters.validationData.getter(a1);
  return sub_237A65920;
}

void sub_237A65920(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    v5 = v3;
    sub_2379DBCDC(v2, v3);
    MLLinearRegressor.ModelParameters.validationData.setter(&v4);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v4 = *a1;
    v5 = v3;
    MLLinearRegressor.ModelParameters.validationData.setter(&v4);
  }
}

uint64_t sub_237A659B4(uint64_t a1)
{
  v2 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A65C40(a1, v4);
  return MLLinearRegressor.ModelParameters.validation.setter(v4);
}

uint64_t MLLinearRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237A65874(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

void (*MLLinearRegressor.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2, __n128 a3)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v4[17] = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  v4[18] = __swift_coroFrameAllocStub(v6);
  v4[19] = __swift_coroFrameAllocStub(v6);
  result = sub_2379F6D68(v2, (v4 + 4));
  if (v4[7])
  {
    sub_2379DAD24(v4 + 2, v4);
    swift_dynamicCast();
    return sub_237A65B80;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237A65B80(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = (*a1)[18];
  v5 = (*a1)[19];
  v6 = (*a1)[16];
  v7 = (*a1)[17];
  if (a2)
  {
    sub_237A65C40((*a1)[19], v4);
    v3[11] = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3 + 8);
    sub_237A65874(v4, boxed_opaque_existential_0);
    sub_2379DAE54((v3 + 8), v6);
    sub_237A65818(v5);
  }

  else
  {
    v3[15] = v7;
    v9 = __swift_allocate_boxed_opaque_existential_0(v3 + 12);
    sub_237A65874(v5, v9);
    sub_2379DAE54((v3 + 12), v6);
  }

  free(v5);
  free(v4);

  free(v3);
}

uint64_t sub_237A65C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLLinearRegressor.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a7;
  *(a4 + 64) = a8;
  *(a4 + 72) = a3;
  sub_237A65C40(a1, v19 - v18);
  v23[3] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  sub_237A65874(v20, boxed_opaque_existential_0);
  sub_237A65818(a1);
  return sub_2379DAE54(v23, a4);
}

uint64_t MLLinearRegressor.ModelParameters.init(validationData:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a7;
  *(a4 + 64) = a8;
  *(a4 + 72) = a3;
  v11 = v8;
  v12 = v9;
  return MLLinearRegressor.ModelParameters.validationData.setter(&v11);
}

unint64_t MLLinearRegressor.ModelParameters.description.getter()
{
  sub_237C08EDC();

  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  v2 = MEMORY[0x2383DC360](0x6C616E655020314CLL, 0xEC000000203A7974);
  OUTLINED_FUNCTION_2_17(v2, v3, v4, v5, v6, v7, v8, v9, 0);
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](v37, 0xE000000000000000);

  v10 = MEMORY[0x2383DC360](0x6C616E655020324CLL, 0xEC000000203A7974);
  OUTLINED_FUNCTION_2_17(v10, v11, v12, v13, v14, v15, v16, v17, 0);
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](v38, 0xE000000000000000);

  v18 = MEMORY[0x2383DC360](0x7A69532070657453, 0xEB00000000203A65);
  OUTLINED_FUNCTION_2_17(v18, v19, v20, v21, v22, v23, v24, v25, 0);
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](v39, 0xE000000000000000);

  sub_237C08EDC();
  v26 = MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18860);
  OUTLINED_FUNCTION_2_17(v26, v27, v28, v29, v30, v31, v32, v33, 0);
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](v40, 0xE000000000000000);

  sub_237C08EDC();

  if (*(v0 + 72))
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (*(v0 + 72))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x2383DC360](v34, v35);

  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C18880);

  return 0xD000000000000010;
}

unint64_t MLLinearRegressor.ModelParameters.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLLinearRegressor.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A6621C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237A66270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_237A662E8@<X0>(uint64_t a1@<X8>)
{
  sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v56 = v3;
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v55 = v5 - v4;
  v59 = sub_237C0757C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = sub_237C075DC();
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v54 = sub_237C07B9C();
  v58 = *(v54 - 8);
  v16 = v58;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18_0();
  v53 = (v17 - v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  sub_237C07F0C();
  v50 = a1;
  sub_237C07E0C();
  v51 = "Feature embedding for VGGish";
  OUTLINED_FUNCTION_3_26();
  sub_237C07DEC();
  sub_237C07DCC();
  sub_237C07B8C();
  sub_237C07B5C();
  v22 = v21;
  sub_237C07B2C();
  v49 = *MEMORY[0x277D25100];
  v48 = *(v7 + 104);
  v23 = v59;
  v24 = v48(v11);
  v45 = v15;
  OUTLINED_FUNCTION_6_22(v24, &unk_284AC01C0);
  v25 = *(v7 + 8);
  v46 = v7 + 8;
  v47 = v25;
  v25(v11, v23);
  v52 = v21;
  sub_237C07B7C();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v43 = *(v16 + 72);
  v26 = v58;
  v27 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v28 = swift_allocObject();
  v42 = xmmword_237C0B660;
  *(v28 + 16) = xmmword_237C0B660;
  v41 = *(v26 + 16);
  v29 = v54;
  v41(v28 + v27, v22, v54);
  sub_237C07E9C();
  v30 = v53;
  sub_237C07B8C();
  OUTLINED_FUNCTION_3_26();
  sub_237C07B5C();
  v31 = v59;
  v32 = (v48)(v11, v49, v59);
  OUTLINED_FUNCTION_6_22(v32, &unk_284AC01E8);
  v47(v11, v31);
  sub_237C07B7C();
  v33 = swift_allocObject();
  *(v33 + 16) = v42;
  v41(v33 + v27, v30, v29);
  v34 = sub_237C07ECC();
  v35 = v55;
  MEMORY[0x2383DB870](v34);
  v36 = *MEMORY[0x277D25230];
  v37 = sub_237C07CEC();
  (*(*(v37 - 8) + 104))(v35, v36, v37);
  (*(v56 + 104))(v35, *MEMORY[0x277D25358], v57);
  sub_237C07E4C();
  v38 = *(v58 + 8);
  v38(v30, v29);
  return (v38)(v52, v29);
}

void sub_237A667D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a1;
  v135 = a2;
  v137 = a3;
  sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v131 = v3;
  v132 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v128 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v130 = &v109 - v8;
  sub_237C07B1C();
  OUTLINED_FUNCTION_0();
  v126 = v10;
  v127 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v125 = v12 - v11;
  v136 = sub_237C0757C();
  OUTLINED_FUNCTION_0();
  v129 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = sub_237C075DC();
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = sub_237C07B9C();
  OUTLINED_FUNCTION_0();
  v133 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_0();
  v27 = (v25 - v26);
  MEMORY[0x28223BE20](v28);
  v30 = &v109 - v29;
  v31 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18_0();
  v37 = v35 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v109 - v39;
  OUTLINED_FUNCTION_4_24();
  v43 = v141;
  sub_237B66A98(v41 + 7, v42 | 0x8000000000000000);
  if (!v43)
  {
    v123 = v21;
    v120 = v17;
    v44 = v136;
    v121 = v27;
    v122 = v30;
    v124 = v22;
    (*(v33 + 16))(v37, v40, v31);
    sub_237C07D8C();
    v141 = 0;
    v111 = v40;
    v112 = v33;
    v113 = v31;
    sub_237C07E0C();

    sub_237C07DEC();
    OUTLINED_FUNCTION_4_24();
    sub_237C07DCC();
    v45 = v122;
    sub_237C07B8C();
    OUTLINED_FUNCTION_3_26();
    v110 = v46;
    sub_237C07B5C();
    v119 = *MEMORY[0x277D25100];
    v47 = v129;
    v118 = *(v129 + 104);
    v48 = v120;
    v49 = v118(v120);
    OUTLINED_FUNCTION_6_22(v49, &unk_284AC0220);
    v129 = *(v47 + 8);
    (v129)(v48, v44);
    sub_237C07B7C();
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
    v50 = v133;
    v116 = *(v133 + 72);
    v51 = ((*(v133 + 80) + 32) & ~*(v133 + 80));
    v52 = swift_allocObject();
    v115 = xmmword_237C0B660;
    *(v52 + 16) = xmmword_237C0B660;
    v114 = *(v50 + 16);
    v114(&v51[v52], v45, v124);
    sub_237C07E9C();
    v53 = v121;
    sub_237C07B8C();

    sub_237C07B5C();
    v54 = v136;
    v55 = (v118)(v48, v119, v136);
    v56 = v132;
    OUTLINED_FUNCTION_6_22(v55, &unk_284AC0258);
    (v129)(v48, v54);
    sub_237C07B7C();
    v57 = v124;
    v58 = v53;
    v59 = v131;
    v60 = v137;
    v61 = swift_allocObject();
    *(v61 + 16) = v115;
    v114(&v51[v61], v53, v57);
    sub_237C07ECC();
    v62 = v130;
    sub_237C07E3C();
    v63 = OUTLINED_FUNCTION_5_21();
    v65 = v64(v63);
    if (v65 != *MEMORY[0x277D25318])
    {
      v94 = *(v56 + 8);
      v95 = OUTLINED_FUNCTION_5_21();
      v94(v95);
      v139 = 0;
      v140 = 0xE000000000000000;
      sub_237C08EDC();
      OUTLINED_FUNCTION_4_24();
      MEMORY[0x2383DC360](v96 + 24, v97 | 0x8000000000000000);
      sub_237C07E3C();
      sub_237C0907C();
      v98 = OUTLINED_FUNCTION_5_21();
      v94(v98);
      MEMORY[0x2383DC360](0x64616574736E6920, 0xE90000000000002ELL);
      v99 = v139;
      v100 = v140;
      sub_2379E8AF0();
      v101 = swift_allocError();
      *v102 = v99;
      *(v102 + 8) = v100;
      *(v102 + 16) = 0u;
      *(v102 + 32) = 0u;
      *(v102 + 48) = 2;
      v141 = v101;
      swift_willThrow();
      v103 = *(v133 + 8);
      v103(v58, v57);
      v103(v122, v57);
      v104 = sub_237C07F1C();
      (*(*(v104 - 8) + 8))(v60, v104);
      (*(v112 + 8))(v111, v113);
      return;
    }

    v66 = v65;
    v67 = OUTLINED_FUNCTION_5_21();
    v68(v67);
    (*(v126 + 32))(v125, v62, v127);
    v69 = sub_237C07AFC();
    v71 = v70;
    v72 = *v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v71 = v72;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237B05F34(v72, v74, v75, v76);
      v72 = v105;
      *v71 = v105;
    }

    if (*(v72 + 16))
    {
      v71 = *(sub_237C07A8C() - 8);
      v72 = sub_237C0763C();
      v51 = v77;
      v59 = *v77;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *v51 = v59;
      if (v78)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    sub_237B05F64(v59, v74, v75, v76);
    v59 = v106;
    *v51 = v106;
LABEL_7:
    if (v59[2])
    {
      v79 = v110;
      v59[4] = 0xD000000000000011;
      v59[5] = v79;

      (v72)(v138, 0);
      v69(&v139, 0);
      v57 = *(sub_237C07B0C() + 16);

      v69 = sub_237C07AFC();
      v59 = v80;
      v72 = *v80;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      *v59 = v72;
      if (v81)
      {
        if (v57)
        {
          goto LABEL_10;
        }

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    sub_237B05F34(v72, v74, v75, v76);
    v72 = v107;
    *v59 = v107;
    if (v57)
    {
LABEL_10:
      if (v57 <= *(v72 + 16))
      {
        v57 = sub_237C0766C();
        v59 = v82;
        v71 = *v82;
        v83 = swift_isUniquelyReferenced_nonNull_native();
        *v59 = v71;
        if (v83)
        {
          goto LABEL_12;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      sub_237B05F64(v71, v74, v75, v76);
      v71 = v108;
      *v59 = v108;
LABEL_12:
      v85 = v132;
      v84 = v133;
      v86 = v128;
      v87 = v122;
      v88 = v135;
      if (v71[2])
      {
        v71[4] = v134;
        v71[5] = v88;

        v57(v138, 0);
        v69(&v139, 0);
        v90 = v125;
        v89 = v126;
        v91 = v127;
        (*(v126 + 16))(v86, v125, v127);
        (*(v85 + 104))(v86, v66, v131);
        sub_237C07E4C();
        (*(v89 + 8))(v90, v91);
        v92 = *(v84 + 8);
        v93 = v124;
        v92(v121, v124);
        v92(v87, v93);
        (*(v112 + 8))(v111, v113);
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_237A672B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v35 = v6;
  v36 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  v37 = (v15 - v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  sub_237C07F0C();
  sub_237C07E0C();

  sub_237C07DEC();
  sub_237C07DCC();
  v20 = v38;
  sub_237A662E8(v19);
  if (v20)
  {
    return (*(v13 + 8))(a3, v11);
  }

  v33 = v10;
  v34 = v19;
  v38 = v11;
  sub_237A667D4(a1, a2, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
  v32 = *(v13 + 72);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_237C0B670;
  v24 = v23 + v22;
  v25 = *(v13 + 16);
  v26 = v38;
  v25(v24, v34, v38);
  v27 = v24 + v32;
  v28 = v37;
  v25(v27, v37, v26);
  v29 = v33;
  sub_237C07D3C();
  (*(v36 + 104))(v29, *MEMORY[0x277D25368], v35);
  sub_237C07E4C();
  sub_237C07E8C();
  sub_237C07E9C();
  sub_237C07EBC();
  sub_237C07ECC();
  v30 = *(v13 + 8);
  v30(v28, v26);
  v31 = OUTLINED_FUNCTION_5_21();
  return (v30)(v31);
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t a1, uint64_t a2)
{

  return sub_237C0750C();
}

uint64_t sub_237A6763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237C05DBC();
  OUTLINED_FUNCTION_135();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_135();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_237A6774C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_237C05DBC();
  OUTLINED_FUNCTION_135();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
    OUTLINED_FUNCTION_135();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t _s20PersistentParametersVMa_3(uint64_t a1)
{
  result = qword_27DE9BB98;
  if (!qword_27DE9BB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A67890(uint64_t a1)
{
  sub_237C05DBC();
  if (v1 <= 0x3F)
  {
    sub_2379FD4E8(319);
    if (v2 <= 0x3F)
    {
      sub_2379FC328();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237A6793C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a1;
  v192[4] = *MEMORY[0x277D85DE8];
  v170 = sub_237C05FAC();
  OUTLINED_FUNCTION_0();
  v178 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_21_3(&v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_237C05E5C();
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v165 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DE9BBA8, &qword_237C0E8A8);
  v11 = OUTLINED_FUNCTION_20(v10);
  MEMORY[0x28223BE20](v11);
  v180 = (&v151 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v17);
  v18 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v173 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_58();
  v24 = OUTLINED_FUNCTION_21_3(v23);
  v182 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(v24);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v28);
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v185 = v30;
  v186 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  v34 = &v151 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = (&v151 - v36);
  MEMORY[0x28223BE20](v38);
  v40 = &v151 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v151 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v151 - v45;
  v47 = _s20PersistentParametersVMa_3(0);
  v48 = *(v47 + 20);
  v184 = a2;
  v181 = v18;
  __swift_storeEnumTagSinglePayload(a2 + v48, 1, 1, v18);
  v49 = v187;
  sub_237C05A2C();
  v50 = v183;
  v51 = sub_237C05B1C();
  v183 = v50;
  if (v50)
  {
    v53 = v186;
    v54 = *(v185 + 8);
    v54(v49, v186);
    v54(v46, v53);
    v55 = v184;
    return sub_2379D9054(v55 + v48, &qword_27DE9A9A0, &qword_237C0BF60);
  }

  v156 = v37;
  v155 = v34;
  v157 = v40;
  v158 = v43;
  v163 = v47;
  v162 = v48;
  v56 = v185;
  v57 = v186;
  v58 = *(v185 + 8);
  v59 = v51;
  v60 = v52;
  v58(v46, v186);
  v61 = objc_opt_self();
  v62 = sub_237C05B6C();
  *&v190 = 0;
  v63 = [v61 propertyListWithData:v62 options:0 format:0 error:&v190];

  v64 = v190;
  if (!v63)
  {
    v122 = v64;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v59, v60);
    v58(v187, v57);
LABEL_25:
    v55 = v184;
    v48 = v162;
    return sub_2379D9054(v55 + v48, &qword_27DE9A9A0, &qword_237C0BF60);
  }

  v159 = v59;
  v160 = v60;
  v161 = v58;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(v192, &v190);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  if ((OUTLINED_FUNCTION_3_13(v65, v66, v67, v65) & 1) == 0)
  {
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v123, 0xD000000000000037);
    OUTLINED_FUNCTION_5_10();
    v124 = OUTLINED_FUNCTION_19_7();
    v125(v124);
    __swift_destroy_boxed_opaque_existential_1(v192);
    goto LABEL_25;
  }

  v68 = v188;
  sub_237AC9A74(v188, &v190, 0x746567726174, 0xE600000000000000);
  if (!v191)
  {

    sub_2379D9054(&v190, &qword_27DE9A998, &unk_237C0C100);
    v55 = v184;
LABEL_33:
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v126, 0xD000000000000034);
    OUTLINED_FUNCTION_5_10();
    v127 = OUTLINED_FUNCTION_19_7();
    v128(v127);
    __swift_destroy_boxed_opaque_existential_1(v192);
    v48 = v162;
    return sub_2379D9054(v55 + v48, &qword_27DE9A9A0, &qword_237C0BF60);
  }

  if ((OUTLINED_FUNCTION_3_13(v69, v70, v71, MEMORY[0x277D837D0]) & 1) == 0)
  {

LABEL_32:
    v55 = v184;
    goto LABEL_33;
  }

  v73 = v188;
  v72 = v189;
  v74 = OUTLINED_FUNCTION_12_8();
  sub_237AC9A74(v68, v76, v74, v75);
  if (!v191)
  {
LABEL_29:

    sub_2379D9054(&v190, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_32;
  }

  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  if ((OUTLINED_FUNCTION_3_13(v77, v78, v79, v77) & 1) == 0)
  {
LABEL_31:

    goto LABEL_32;
  }

  v153 = v73;
  v80 = v188;
  sub_237AC9A74(v68, &v190, 0x617265744978616DLL, 0xED0000736E6F6974);
  if (!v191)
  {
LABEL_28:

    goto LABEL_29;
  }

  v154 = v80;
  if ((OUTLINED_FUNCTION_3_13(v81, v82, v83, MEMORY[0x277D83B88]) & 1) == 0)
  {
    goto LABEL_30;
  }

  v152 = v72;
  v151 = v188;
  sub_237AC9A74(v68, &v190, 0x746C616E6550316CLL, 0xE900000000000079);
  if (!v191)
  {
    goto LABEL_35;
  }

  if ((OUTLINED_FUNCTION_3_13(v84, v85, v86, MEMORY[0x277D839F8]) & 1) == 0)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();
    goto LABEL_31;
  }

  v87 = v188;
  sub_237AC9A74(v68, &v190, 0x746C616E6550326CLL, 0xE900000000000079);
  if (!v191)
  {
LABEL_35:
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();
    goto LABEL_29;
  }

  if ((OUTLINED_FUNCTION_3_13(v88, v89, v90, MEMORY[0x277D839F8]) & 1) == 0)
  {
LABEL_30:
    OUTLINED_FUNCTION_9_7();

    goto LABEL_31;
  }

  v91 = v188;
  sub_237AC9A74(v68, &v190, 0x657A695370657473, 0xE800000000000000);
  if (!v191)
  {
    OUTLINED_FUNCTION_9_7();
    goto LABEL_28;
  }

  if ((OUTLINED_FUNCTION_3_13(v92, v93, v94, MEMORY[0x277D839F8]) & 1) == 0)
  {
    goto LABEL_30;
  }

  v95 = v56;
  v96 = v188;
  sub_237AC9A74(v68, &v190, 0xD000000000000014, 0x8000000237C18450);
  if (!v191)
  {
    OUTLINED_FUNCTION_9_7();

    sub_2379D9054(&v190, &qword_27DE9A998, &unk_237C0C100);
    v55 = v184;
    goto LABEL_33;
  }

  if ((OUTLINED_FUNCTION_3_13(v97, v98, v99, MEMORY[0x277D839F8]) & 1) == 0)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();

LABEL_42:

    goto LABEL_43;
  }

  v100 = v188;
  v101 = OUTLINED_FUNCTION_12_8();
  sub_237AC9A74(v68, v103, v101, v102);

  if (!v191)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();

    sub_2379D9054(&v190, &qword_27DE9A998, &unk_237C0C100);
LABEL_43:
    v55 = v184;
    goto LABEL_33;
  }

  if ((OUTLINED_FUNCTION_3_13(v104, v105, v106, MEMORY[0x277D839B0]) & 1) == 0)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();
    goto LABEL_42;
  }

  v107 = v188;
  v108 = v163;
  v109 = v184;
  v110 = (v184 + *(v163 + 24));
  v111 = v152;
  *v110 = v153;
  v110[1] = v111;
  *(v109 + *(v108 + 28)) = v154;
  v112 = v174;
  *v174 = 0;
  *(v112 + 8) = 0;
  *(v112 + 16) = 256;
  v113 = v182;
  swift_storeEnumTagMultiPayload();
  v114 = v109 + *(v108 + 32);
  *v114 = 0u;
  *(v114 + 16) = 0u;
  *(v114 + 32) = 10;
  *(v114 + 40) = xmmword_237C0CFC0;
  *(v114 + 56) = xmmword_237C0CFD0;
  *(v114 + 72) = 1;
  v115 = v175;
  sub_237A65C40(v112, v175);
  v191 = v113;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v190);
  sub_237A65874(v115, boxed_opaque_existential_0);
  sub_237A65818(v112);
  sub_237A2A9FC(&v190, v114, &qword_27DE9A998, &unk_237C0C100);
  *(v114 + 32) = v151;
  *(v114 + 40) = v87;
  *(v114 + 48) = v91;
  *(v114 + 56) = v96;
  *(v114 + 64) = v100;
  v175 = v114;
  *(v114 + 72) = v107;
  v117 = v158;
  sub_237C05A2C();
  OUTLINED_FUNCTION_9_3();
  sub_237C05A2C();
  v118 = *(v95 + 16);
  v119 = v156;
  v185 = v95 + 16;
  v118(v156, v117, v186);
  OUTLINED_FUNCTION_4_6();
  v120 = v183;
  sub_237C05CDC();
  v183 = v120;
  if (v120)
  {
    v118(v168, v158, v186);
    sub_2379FEDE4(MEMORY[0x277D84F90]);
    v119 = sub_237B9068C(&unk_284ABFD58);
    sub_237B9068C(&unk_284ABFE18);
    sub_237B9068C(&unk_284ABFE78);
    v121 = *(v178 + 104);
    LODWORD(v179) = *MEMORY[0x277CE1918];
    v178 += 104;
    v177 = v121;
    v121(v171);
    sub_237C05E4C();
    OUTLINED_FUNCTION_4_6();
    sub_237C05CAC();
    v133 = OUTLINED_FUNCTION_21_7();
    v119(v133, v169, v181);
    v118(v164, v157, v186);
    v185 = sub_2379FEDE4(MEMORY[0x277D84F90]);
    sub_237B9068C(&unk_284ABFD58);
    sub_237B9068C(&unk_284ABFE18);
    sub_237B9068C(&unk_284ABFE78);
    v177(v171, v179, v170);
    sub_237C05E4C();
    OUTLINED_FUNCTION_4_6();
    sub_237C05CAC();

    v134 = v167;
    __swift_storeEnumTagSinglePayload(v167, 0, 1, v181);
    v179 = v134;
  }

  else
  {
    v130 = OUTLINED_FUNCTION_21_7();
    v119(v130, v177, v181);
    v118(v155, v157, v186);
    OUTLINED_FUNCTION_4_6();
    v131 = v183;
    sub_237C05CDC();
    if (v131)
    {

      v132 = 1;
    }

    else
    {
      v132 = 0;
    }

    __swift_storeEnumTagSinglePayload(v179, v132, 1, v181);
  }

  v135 = v184;
  v136 = v162;
  sub_237A2A9FC(v179, v184 + v162, &qword_27DE9A9A0, &qword_237C0BF60);
  v137 = v135 + v136;
  v138 = v172;
  sub_237A2AA5C(v137, v172);
  v139 = 1;
  if (__swift_getEnumTagSinglePayload(v138, 1, v181) != 1)
  {
    v140 = v173;
    v141 = v166;
    v142 = v181;
    v119(v166, v172, v181);
    (*(v140 + 16))(v180, v141, v142);
    swift_storeEnumTagMultiPayload();
    (*(v140 + 8))(v141, v142);
    v139 = 0;
  }

  v143 = v180;
  v144 = v139;
  v145 = v182;
  __swift_storeEnumTagSinglePayload(v180, v144, 1, v182);
  if (__swift_getEnumTagSinglePayload(v143, 1, v145) == 1)
  {
    v146 = v182;
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v180, 1, v146) != 1)
    {
      sub_2379D9054(v180, qword_27DE9BBA8, &qword_237C0E8A8);
    }
  }

  else
  {
    sub_237A65874(v180, v176);
  }

  v191 = v182;
  v147 = __swift_allocate_boxed_opaque_existential_0(&v190);
  sub_237A65874(v176, v147);
  OUTLINED_FUNCTION_5_10();
  v148 = OUTLINED_FUNCTION_17_7();
  v143(v148);
  v149 = OUTLINED_FUNCTION_18_7(&v188);
  v143(v149);
  v150 = OUTLINED_FUNCTION_18_7(&v189);
  v143(v150);
  __swift_destroy_boxed_opaque_existential_1(v192);
  return sub_237A2A9FC(&v190, v175, &qword_27DE9A998, &unk_237C0C100);
}

uint64_t sub_237A68BC0(uint64_t a1)
{
  v2 = v1;
  v67 = a1;
  v69[53] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  v60 = &v56 - v5;
  sub_237C05E7C();
  OUTLINED_FUNCTION_0();
  v63 = v6;
  v64 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_0();
  v59 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  v62 = v10;
  v68 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v66 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_0();
  v58 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_138();
  v61 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C6B0;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v20 = _s20PersistentParametersVMa_3(0);
  v21 = (v2 + v20[6]);
  v22 = v21[1];
  v23 = MEMORY[0x277D837D0];
  *(inited + 48) = *v21;
  *(inited + 56) = v22;
  *(inited + 72) = v23;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000237C17DC0;
  v24 = *(v2 + v20[7]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  *(inited + 96) = v24;
  *(inited + 120) = v25;
  strcpy((inited + 128), "maxIterations");
  *(inited + 142) = -4864;
  v26 = v2 + v20[8];
  v27 = MEMORY[0x277D83B88];
  *(inited + 144) = *(v26 + 32);
  *(inited + 168) = v27;
  *(inited + 176) = 0x746C616E6550316CLL;
  *(inited + 184) = 0xE900000000000079;
  v28 = MEMORY[0x277D839F8];
  *(inited + 192) = *(v26 + 40);
  *(inited + 216) = v28;
  *(inited + 224) = 0x746C616E6550326CLL;
  *(inited + 232) = 0xE900000000000079;
  *(inited + 240) = *(v26 + 48);
  *(inited + 264) = v28;
  *(inited + 272) = 0x657A695370657473;
  *(inited + 280) = 0xE800000000000000;
  *(inited + 288) = *(v26 + 56);
  *(inited + 312) = v28;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = 0x8000000237C18450;
  *(inited + 336) = *(v26 + 64);
  *(inited + 360) = v28;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = 0x8000000237C18470;
  LOBYTE(v26) = *(v26 + 72);
  *(inited + 408) = MEMORY[0x277D839B0];
  *(inited + 384) = v26;

  OUTLINED_FUNCTION_23_6();
  sub_237C085AC();
  v29 = objc_opt_self();
  OUTLINED_FUNCTION_23_6();
  v30 = sub_237C0855C();

  v69[0] = 0;
  v31 = [v29 dataWithPropertyList:v30 format:200 options:0 error:v69];

  v32 = v69[0];
  if (v31)
  {
    v33 = sub_237C05B7C();
    v35 = v34;

    sub_237C05A2C();
    v36 = v65;
    sub_237C05B9C();
    if (v36)
    {
      (*(v66 + 8))(v18, v68);
      return sub_2379E86D4(v33, v35);
    }

    else
    {
      v65 = v35;
      v66 = *(v66 + 8);
      (v66)(v18, v68);
      v39 = v61;
      sub_237C05A2C();
      OUTLINED_FUNCTION_10_3();
      v40 = v62;
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_12_4(v41, v42, v43, v44);
      v57 = sub_237C05DBC();
      sub_237C05C6C();
      v45 = v64 + 8;
      v62 = *(v64 + 8);
      v62(v40, v63);
      v46 = v39;
      v47 = v66;
      (v66)(v46, v68);
      v48 = v2 + v20[5];
      v49 = v60;
      sub_237A2AA5C(v48, v60);
      if (__swift_getEnumTagSinglePayload(v49, 1, v57) == 1)
      {
        sub_2379E86D4(v33, v65);
        return sub_2379D9054(v49, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        v64 = v45;
        OUTLINED_FUNCTION_9_3();
        v50 = v58;
        sub_237C05A2C();
        OUTLINED_FUNCTION_10_3();
        v51 = v59;
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_12_4(v52, v53, v54, v55);
        sub_237C05C6C();
        sub_2379E86D4(v33, v65);
        v62(v51, v63);
        v47(v50, v68);
        return (*(*(v57 - 8) + 8))(v49);
      }
    }
  }

  else
  {
    v38 = v32;
    sub_237C0593C();

    return swift_willThrow();
  }
}

void MLRegressorMetrics.init(maximumError:rootMeanSquaredError:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
}

uint64_t MLRegressorMetrics.description.getter()
{
  if (*(v0 + 16))
  {
    return 0xD000000000000038;
  }

  v2 = *v0;
  if (*v0 < 0.0)
  {
    return 0xD000000000000038;
  }

  v3 = *(v0 + 8);
  if (v3 < 0.0)
  {
    return 0xD000000000000038;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839F8];
  *(v4 + 16) = xmmword_237C0B660;
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_237C0871C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_237C0B660;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 32) = v3;
  v9 = sub_237C0871C();
  v11 = v10;

  MEMORY[0x2383DC360](v9, v11);

  return v7;
}

id MLRegressorMetrics.error.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

double MLRegressorMetrics.maximumError.getter()
{
  result = *v0;
  if (*(v0 + 16))
  {
    return -1.0;
  }

  return result;
}

double MLRegressorMetrics.rootMeanSquaredError.getter()
{
  result = *(v0 + 8);
  if (*(v0 + 16))
  {
    return -1.0;
  }

  return result;
}

unint64_t MLRegressorMetrics.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_0_29();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_237A02218(v2, v4, 0);
  result = sub_237A022C0();
  a1[3] = result;
  *a1 = v6;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_237A69554(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
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

uint64_t sub_237A69594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t OUTLINED_FUNCTION_0_29()
{

  return MLRegressorMetrics.description.getter();
}

uint64_t sub_237A6961C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C0947C();
  v6[6] = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_237C089DC();
  swift_getWitnessTable();
  sub_237C092BC();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_237A69728(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C0944C();
  if (!v5)
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_237C089DC();
    swift_getWitnessTable();
    sub_237C092AC();
    swift_getWitnessTable();
    v12 = sub_237C08AEC();
    v10 = sub_237A47294(v12, a2, a3, a5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_237A698A8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_237A69728(a1, a2[2], a2[3], *(a3 - 8), a2[4]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_237A698E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t MLSoundClassifier.ModelParameters.ClassifierType.hashValue.getter()
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](0);
  return sub_237C0940C();
}

unint64_t sub_237A699FC()
{
  result = qword_27DE9BC30;
  if (!qword_27DE9BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BC30);
  }

  return result;
}

_BYTE *_s14descr284ABE0A1V14ClassifierTypeOwst(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x237A69B0CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237A69B44(uint64_t a1@<X8>)
{
  v103 = a1;
  v2 = sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v102 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v101 = v6 - v5;
  OUTLINED_FUNCTION_41_0();
  v114 = sub_237C07B9C();
  OUTLINED_FUNCTION_0();
  v100 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v95 = v10 - v9;
  OUTLINED_FUNCTION_41_0();
  v99 = sub_237C075DC();
  OUTLINED_FUNCTION_0();
  v97 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v98 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC38, &unk_237C0EB60);
  MEMORY[0x28223BE20](v15 - 8);
  v96 = (&v90 - v16);
  OUTLINED_FUNCTION_41_0();
  sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v105 = v18;
  v106 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_0();
  v104 = v19;
  MEMORY[0x28223BE20](v20);
  v108 = &v90 - v21;
  OUTLINED_FUNCTION_41_0();
  sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v110 = v23;
  v111 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v27 = sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v109 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v112 = v34;
  v113 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_0();
  v107 = v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v90 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v90 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v90 - v43;
  v45 = v1[2];
  if (!v45)
  {
    goto LABEL_14;
  }

  v46 = v117;
  v47 = sub_237AC68B4(v1[2], v1[3], v1[4]);
  if (v46)
  {
    return;
  }

  v91 = v45;
  v93 = v1;
  v117 = v47;
  v94 = v44;
  v92 = v2;
  v48 = objc_opt_self();
  v49 = [v48 defaultManager];
  sub_2379F364C();

  v50 = [v48 defaultManager];
  sub_2379F3528();

  sub_237C05C1C();
  v51 = sub_237C05C0C();
  v53 = v52;
  (*(v109 + 1))(v32, v27);
  v115 = v51;
  v116 = v53;
  v55 = v110;
  v54 = v111;
  (*(v110 + 104))(v26, *MEMORY[0x277CC91D8], v111);
  sub_2379F3408();
  sub_237C05ACC();
  (*(v55 + 8))(v26, v54);

  v56 = v112;
  v58 = v112 + 8;
  v57 = *(v112 + 8);
  v59 = v38;
  v60 = v113;
  v57(v59, v113);
  v61 = v94;
  sub_237C05A3C();
  v57(v41, v60);
  type metadata accessor for TreeRegressorModel(0);
  sub_237C06FFC();
  (*(v56 + 16))(v107, v61, v60);
  v62 = v108;
  sub_237C07D8C();
  v110 = 0;
  v63 = v96;
  sub_237A9AA94(v117, v96);
  v64 = v106;
  if (__swift_getEnumTagSinglePayload(v63, 1, v106) == 1)
  {
    __break(1u);
LABEL_14:
    sub_237C090DC();
    __break(1u);
    return;
  }

  v109 = v57;
  sub_237C07EBC();
  v65 = *(v105 + 8);
  v107 = v105 + 8;
  v96 = v65;
  (v65)(v63, v64);
  sub_237C07E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v66 = v100;
  v67 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v112 = *(v100 + 72);
  v68 = swift_allocObject();
  v90 = xmmword_237C0B660;
  *(v68 + 16) = xmmword_237C0B660;
  v69 = *v93;
  v70 = v93[1];
  swift_bridgeObjectRetain_n();
  v71 = v98;
  sub_237C0755C();
  (*(v97 + 104))(v71, *MEMORY[0x277D25128], v99);

  v111 = v67;
  sub_237C07B3C();
  sub_237C07ECC();
  v98 = v70;
  v99 = v69;
  sub_237C07DEC();
  v72 = MEMORY[0x277D84F90];
  sub_237C085AC();
  sub_237C07EFC();
  sub_237C07F0C();
  sub_237C07E0C();
  v73 = *(v91 + 16);
  if (v73)
  {
    v97 = v58;
    v115 = v72;
    v74 = v91;
    sub_237AC8CF4(0, v73, 0);
    v75 = v115;
    v76 = (v66 + 32);
    v77 = (v74 + 56);
    v78 = v95;
    do
    {
      v79 = *(v77 - 1);
      v80 = *v77;

      sub_237A1E09C(v79, v80);
      sub_237B991A4(v79, v80, v78);

      sub_237A1E0B0(v79, v80);
      v115 = v75;
      v82 = *(v75 + 16);
      v81 = *(v75 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_237AC8CF4(v81 > 1, v82 + 1, 1);
        v75 = v115;
      }

      v77 += 32;
      *(v75 + 16) = v82 + 1;
      (*v76)(v75 + v111 + v82 * v112, v78, v114);
      --v73;
    }

    while (v73);
    v83 = v106;
    v62 = v108;
    v60 = v113;
  }

  else
  {
    v83 = v106;
  }

  v84 = v104;
  sub_237C07E9C();
  sub_237C07EBC();
  sub_237C07ECC();
  sub_237C07DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
  v85 = v105;
  v86 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = v90;
  (*(v85 + 16))(v87 + v86, v62, v83);
  v115 = v117;
  sub_237A969F0(v87);
  v88 = v101;
  sub_237C07D2C();
  (*(v102 + 104))(v88, *MEMORY[0x277D25350], v92);
  sub_237C07E4C();
  (v96)(v62, v83);
  (*(v85 + 32))(v103, v84, v83);
  v89 = v94;
  sub_237A64C34();
  v109(v89, v60);
}

uint64_t sub_237A6A5D0(uint64_t a1)
{
  type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_237C05DAC();
  sub_237C05DBC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  type metadata accessor for AnyTreeClassifier(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  type metadata accessor for AnyTreeClassifierModel(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = type metadata accessor for AnyClassificationMetrics(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
  sub_237A6EFBC();
  return v1;
}

void sub_237A6A6F8()
{
  OUTLINED_FUNCTION_74();
  v110 = v2;
  v3 = v0;
  v112 = v5;
  v113 = v4;
  v114 = v6;
  v111 = v7;
  v119 = v8;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_20(v11);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_41_0();
  sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v115 = v14;
  v116 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v105 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_20(v18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_23();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC70, &qword_237C0EBC8);
  v21 = OUTLINED_FUNCTION_20(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_58();
  v104 = v23;
  OUTLINED_FUNCTION_41_0();
  sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v107 = v25;
  v108 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_58();
  v106 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v28);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_23();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v30);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_94();
  v32 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v32);
  sub_237C05DAC();
  v40 = sub_237C05DBC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  v44 = type metadata accessor for AnyTreeClassifier(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  type metadata accessor for AnyTreeClassifierModel(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  v52 = type metadata accessor for AnyClassificationMetrics(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v52);
  sub_237B19700(v10, v111, v110, v114);
  if (v1)
  {

    OUTLINED_FUNCTION_4_25();
    sub_237A6EF64(v112, v60);
    (*(v115 + 8))(v113, v116);
    sub_2379D9054(v119, &qword_27DE9A9A0, &qword_237C0BF60);
    v61 = *(*(v40 - 8) + 8);
    v61(v10, v40);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9AE18, &qword_237C0DEE0);
    v61((v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData), v40);
    OUTLINED_FUNCTION_47_5(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &qword_27DE9BC70, &qword_237C0EBC8);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model, &qword_27DE9BC78, &qword_237C0EBD0);
    OUTLINED_FUNCTION_47_5(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics);
    OUTLINED_FUNCTION_47_5(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics);
    swift_deallocPartialClassInstance();
LABEL_10:
    OUTLINED_FUNCTION_73();
    return;
  }

  v100 = v44;
  v62 = v59;
  (*(*(v40 - 8) + 16))(v36, v10, v40);
  sub_237A40628();
  (*(v115 + 16))(v36 + v32[8], v113, v116);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v40);

  sub_237A6F014();
  v66 = (v36 + v32[6]);
  *v66 = v111;
  v66[1] = v110;
  *(v36 + v32[7]) = v62;
  v109 = v36;
  sub_237A6F06C();
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v32);
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237A6F014();
  swift_endAccess();
  sub_237A6F06C();
  sub_237C05DFC();
  sub_237C05FFC();
  v70 = *(v107 + 8);
  v70(v106, v108);
  if (swift_dynamicCastMetatype())
  {

    sub_237C05DEC();
    sub_237B43770();
    v72 = v71;

    sub_237C071CC();
    *v104 = v111;
    *(v104 + 8) = v110;
    *(v104 + 16) = v62;
    OUTLINED_FUNCTION_1_3();
    *(v104 + 40) = v62;
    *(v104 + 48) = v73;
    *(v104 + 56) = v74;

    sub_237AE123C(v72);
    OUTLINED_FUNCTION_48_6();
    v117 = v62;

    sub_237AE6A58(&v117);
    if (!v10)
    {

      *(v104 + 24) = v117;
      *(v104 + 32) = 1;
      OUTLINED_FUNCTION_57_3();
      v75();
      sub_237C06D7C();
      OUTLINED_FUNCTION_4_25();
      sub_237A6EF64(v112, v76);
      v77 = *(v115 + 8);
      v77(v113, v116);
      sub_2379D9054(v119, &qword_27DE9A9A0, &qword_237C0BF60);
      v78 = OUTLINED_FUNCTION_58_3();
      v79(v78, v40);
      v77(v105, v116);
      OUTLINED_FUNCTION_0_30();
      sub_237A6EF64(v109, v80);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v100);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
LABEL_9:
      sub_237A6F014();
      swift_endAccess();
      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    v72 = v108;
    v106 = v70;
    if (swift_dynamicCastMetatype())
    {

      sub_237C05DEC();
      sub_237B43914();
      v85 = v84;

      sub_237C071CC();
      *v102 = v111;
      *(v102 + 8) = v110;
      *(v102 + 16) = v62;

      sub_237AE1458(v85);
      OUTLINED_FUNCTION_48_6();
      v117 = v10;

      sub_237AE69B4(&v117);

      *(v102 + 24) = v117;
      *(v102 + 32) = 0;
      OUTLINED_FUNCTION_1_3();
      *(v102 + 40) = v62;
      *(v102 + 48) = v86;
      *(v102 + 56) = v87;
      OUTLINED_FUNCTION_57_3();
      v88();
      sub_237C06D7C();
      OUTLINED_FUNCTION_4_25();
      sub_237A6EF64(v112, v89);
      v90 = *(v115 + 8);
      v90(v113, v116);
      sub_2379D9054(v119, &qword_27DE9A9A0, &qword_237C0BF60);
      v91 = OUTLINED_FUNCTION_58_3();
      v92(v91, v40);
      v90(v103, v116);
      OUTLINED_FUNCTION_0_30();
      sub_237A6EF64(v109, v93);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v100);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      goto LABEL_9;
    }
  }

  v117 = 0;
  v118 = 0xE000000000000000;
  sub_237C08EDC();

  OUTLINED_FUNCTION_1_3();
  v117 = (v98 + 16);
  v118 = v97;
  sub_237C05DFC();

  sub_237C05FFC();
  v106(v101, v72);
  v99 = sub_237C094DC();
  MEMORY[0x2383DC360](v99);

  MEMORY[0x2383DC360](46, 0xE100000000000000);
  OUTLINED_FUNCTION_27_5("Fatal error");
  __break(1u);
}

void sub_237A6B348()
{
  OUTLINED_FUNCTION_74();
  v115 = v1;
  v2 = v0;
  sub_237C0704C();
  OUTLINED_FUNCTION_0();
  v110 = v4;
  v111 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v119 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v112 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_20(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23();
  v105 = v12;
  OUTLINED_FUNCTION_41_0();
  v117 = sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v123 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  v116 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_138();
  v122 = v18;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_58();
  v109 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_20(v21);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_23();
  v108 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC70, &qword_237C0EBC8);
  v25 = OUTLINED_FUNCTION_20(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_0();
  v118 = v26;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v28);
  v30 = &v105 - v29;
  sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v113 = v32;
  v114 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v36);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  v39 = &v105 - v38;
  v40 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_0();
  v44 = (v43 - v42);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  v45 = OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_73_1(v45, v46, v40);
  if (v47)
  {
    sub_2379D9054(v39, &qword_27DE9AE18, &qword_237C0DEE0);
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_2_30();
  sub_237A6EFBC();
  v48 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237C05DBC();
  OUTLINED_FUNCTION_4();
  (*(v49 + 24))(v2 + v48, v44);
  swift_endAccess();
  v50 = *(v40 + 20);
  v51 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237A6EE90(&v44[v50], v2 + v51);
  swift_endAccess();
  v52 = &v44[*(v40 + 24)];
  v53 = v40;
  v55 = *v52;
  v54 = *(v52 + 1);
  OUTLINED_FUNCTION_28_4();
  sub_237C05DFC();
  swift_endAccess();
  sub_237C05FFC();
  (*(v113 + 8))(v35, v114);
  v56 = swift_dynamicCastMetatype();
  v120 = v2;
  v121 = v53;
  v125 = v44;
  if (v56)
  {
    OUTLINED_FUNCTION_28_4();

    sub_237C05DEC();
    swift_endAccess();
    sub_237B43770();
    v58 = v57;
    v59 = *&v44[*(v53 + 28)];

    v60 = v109;
    sub_237C071CC();
    *v30 = v55;
    *(v30 + 1) = v54;
    *(v30 + 2) = v59;
    OUTLINED_FUNCTION_1_3();
    *(v30 + 5) = v59;
    *(v30 + 6) = v61;
    *(v30 + 7) = v62;

    sub_237AE123C(v58);
    OUTLINED_FUNCTION_48_6();
    v124[0] = v59;

    sub_237AE6A58(v124);
    v114 = v44;
    if (!v44)
    {

      v63 = v123;
      *(v30 + 3) = v124[0];
      v30[32] = 1;
      v64 = OUTLINED_FUNCTION_30_8();
      v65 = v117;
      v59(v64, v60, v117);
      v66 = v60;
      v67 = type metadata accessor for AnyTreeClassifier(0);
      sub_237C06D7C();
      v115 = *(v63 + 8);
      (v115)(v66, v65);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v67);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
      v72 = v118;
      v71 = v119;
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_28_4();

    sub_237C05DEC();
    swift_endAccess();
    sub_237B43914();
    v74 = v73;
    v59 = *&v44[*(v121 + 28)];

    v75 = v107;
    sub_237C071CC();
    v76 = v106;
    *v106 = v55;
    v76[1] = v54;
    v76[2] = v59;

    v77 = v115;
    sub_237AE1458(v74);
    v79 = v78;

    v124[0] = v79;

    sub_237AE69B4(v124);
    v72 = v118;
    v114 = v77;
    if (!v77)
    {

      v76[3] = v124[0];
      *(v76 + 32) = 0;
      OUTLINED_FUNCTION_1_3();
      v76[5] = v59;
      v76[6] = v80;
      v76[7] = v81;
      v82 = OUTLINED_FUNCTION_30_8();
      v83 = v117;
      v59(v82, v75, v117);
      v67 = type metadata accessor for AnyTreeClassifier(0);
      sub_237C06D7C();
      v84 = OUTLINED_FUNCTION_59_2();
      v115 = v85;
      (v85)(v84);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v67);
      v2 = v120;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v65 = v83;
      sub_237A6F014();
      swift_endAccess();
      v71 = v119;
LABEL_8:
      v89 = v2;
      v90 = v116;
      v59(v116, v125 + *(v121 + 32), v65);
      v91 = v89 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      type metadata accessor for AnyTreeClassifier(0);
      OUTLINED_FUNCTION_73_1(v91, 1, v67);
      if (!v47)
      {
        v59(v122, v90, v65);
        sub_237C06D6C();
        (v115)(v90, v65);
        swift_endAccess();
        sub_237A40628();
        OUTLINED_FUNCTION_73_1(v72, 1, v67);
        if (!v47)
        {
          v93 = *v72;
          v92 = *(v72 + 8);

          v94 = v114;
          sub_237C06D8C();
          if (!v94)
          {
            v95 = *(v72 + 24);
            v96 = *(v72 + 32);
            v97 = v112;
            *v112 = v93;
            *(v97 + 1) = v92;
            v98 = type metadata accessor for AnyTreeClassifierModel(0);
            *(v97 + 3) = 0;
            *(v97 + 4) = 0;
            *(v97 + 2) = 0;
            (*(v110 + 32))(&v97[*(v98 + 24)], v71, v111);
            v99 = &v97[*(v98 + 28)];
            *v99 = v95;
            v99[8] = v96;

            OUTLINED_FUNCTION_0_30();
            sub_237A6EF64(v125, v100);
            OUTLINED_FUNCTION_3_27();
            sub_237A6EF64(v72, v101);
            OUTLINED_FUNCTION_80_0();
            __swift_storeEnumTagSinglePayload(v102, v103, v104, v98);
            OUTLINED_FUNCTION_59_1();
            swift_beginAccess();
            sub_237A6F014();
            swift_endAccess();
            OUTLINED_FUNCTION_73();
            return;
          }

          goto LABEL_16;
        }

        goto LABEL_14;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
    }

LABEL_15:

    __break(1u);
LABEL_16:

    swift_unexpectedError();
    __break(1u);
  }

  OUTLINED_FUNCTION_40_6();
  v105 = 101;
  OUTLINED_FUNCTION_27_5("Fatal error");
  __break(1u);
}

void sub_237A6BDB4()
{
  OUTLINED_FUNCTION_74();
  v115 = v1;
  v123 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_58();
  v108 = v7;
  OUTLINED_FUNCTION_41_0();
  sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v117 = v9;
  v118 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_0();
  v120 = v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_138();
  v116 = v12;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  v110 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC70, &qword_237C0EBC8);
  v16 = OUTLINED_FUNCTION_20(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_0();
  v107 = v17;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_138();
  v111 = v20;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_58();
  v109 = v22;
  OUTLINED_FUNCTION_41_0();
  sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v113 = v24;
  v114 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v112 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v27);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_94();
  v29 = type metadata accessor for MLCheckpoint(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v121 = v32 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v33);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  v36 = &v105 - v35;
  v37 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_0();
  v41 = v40 - v39;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v119 = v0;
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v36, 1, v37);
  if (v42)
  {
    sub_2379D9054(v36, &qword_27DE9AE18, &qword_237C0DEE0);
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_59_2();
  sub_237A6EFBC();
  sub_237A9A92C(v123, v2);
  OUTLINED_FUNCTION_73_1(v2, 1, v29);
  if (v42)
  {
    sub_2379D9054(v2, &qword_27DE9B8E8, &qword_237C0EBF0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_18_4(v43, 0xD00000000000001DLL);
  }

  else
  {
    v44 = v121;
    sub_237A6EFBC();
    v45 = v119;
    switch(*(v44 + *(v29 + 20)))
    {
      case 2:

        v46 = v120;
        goto LABEL_9;
      case 4:
        OUTLINED_FUNCTION_60_0();
        goto LABEL_8;
      default:
LABEL_8:
        OUTLINED_FUNCTION_57_0();
        v47 = sub_237C0929C();

        v46 = v120;
        if (v47)
        {
LABEL_9:
          v48 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          sub_237C05DBC();
          OUTLINED_FUNCTION_4();
          (*(v49 + 24))(v45 + v48, v41);
          swift_endAccess();
          v50 = v37[5];
          v51 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          sub_237A6EE90(v41 + v50, v45 + v51);
          swift_endAccess();
          v52 = (v41 + v37[6]);
          v53 = *v52;
          v54 = v52[1];
          swift_beginAccess();
          v55 = v112;
          sub_237C05DFC();
          swift_endAccess();
          sub_237C05FFC();
          (*(v113 + 8))(v55, v114);
          if (swift_dynamicCastMetatype())
          {
            sub_237AE1668(MEMORY[0x277D84FA0]);
            v57 = v56;
            v58 = *(v41 + v37[7]);

            v59 = v110;
            sub_237C071CC();
            v60 = v109;
            *v109 = v53;
            v60[1] = v54;
            v61 = v60;
            v60[2] = v58;
            OUTLINED_FUNCTION_1_3();
            v61[5] = v58;
            v61[6] = v62;
            v61[7] = v63;

            v64 = v115;
            sub_237AE123C(v57);
            v66 = v65;

            v122[0] = v66;

            sub_237AE6A58(v122);
            v2 = v64;
            if (!v64)
            {

              v61[3] = v122[0];
              *(v61 + 32) = 1;
              v67 = OUTLINED_FUNCTION_22_8();
              v68(v67);
              type metadata accessor for AnyTreeClassifier(0);
              OUTLINED_FUNCTION_60_4();
              MEMORY[8](v59, v66);
              OUTLINED_FUNCTION_80_0();
              __swift_storeEnumTagSinglePayload(v69, v70, v71, v57);
              OUTLINED_FUNCTION_59_1();
              swift_beginAccess();
              OUTLINED_FUNCTION_52_4();
              sub_237A6F014();
              swift_endAccess();
              v72 = v111;
              OUTLINED_FUNCTION_52_4();
              sub_237A40628();
              OUTLINED_FUNCTION_170();
              OUTLINED_FUNCTION_73_1(v73, v74, v75);
              if (!v42)
              {
                goto LABEL_18;
              }

              goto LABEL_21;
            }
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {
LABEL_24:
              OUTLINED_FUNCTION_40_6();
              v105 = 142;
              OUTLINED_FUNCTION_27_5("Fatal error");
              __break(1u);
              JUMPOUT(0x237A6C7CCLL);
            }

            sub_237AE1948(MEMORY[0x277D84FA0]);
            v80 = v79;
            v81 = *(v41 + v37[7]);

            sub_237C071CC();
            v82 = v106;
            *v106 = v53;
            v82[1] = v54;
            v83 = v82;
            v82[2] = v81;

            v84 = v115;
            sub_237AE1458(v80);
            v86 = v85;
            v2 = v84;

            v122[0] = v86;

            sub_237AE69B4(v122);
            if (!v84)
            {

              v83[3] = v122[0];
              *(v83 + 32) = 0;
              OUTLINED_FUNCTION_1_3();
              v83[5] = v81;
              v83[6] = v87;
              v83[7] = v88;
              v89 = OUTLINED_FUNCTION_22_8();
              v90(v89);
              type metadata accessor for AnyTreeClassifier(0);
              OUTLINED_FUNCTION_60_4();
              (*(v80 + 8))(v46, v86);
              OUTLINED_FUNCTION_80_0();
              __swift_storeEnumTagSinglePayload(v91, v92, v93, v81);
              OUTLINED_FUNCTION_59_1();
              swift_beginAccess();
              OUTLINED_FUNCTION_52_4();
              sub_237A6F014();
              swift_endAccess();
              v72 = v107;
              OUTLINED_FUNCTION_52_4();
              sub_237A40628();
              OUTLINED_FUNCTION_170();
              OUTLINED_FUNCTION_73_1(v94, v95, v96);
              if (!v42)
              {
LABEL_18:
                sub_237A6EE34();
                v97 = v121;
                OUTLINED_FUNCTION_37_0();
                sub_237C0723C();
                OUTLINED_FUNCTION_21_11();
                sub_237A6EF64(v97, v98);
                OUTLINED_FUNCTION_0_30();
                sub_237A6EF64(v41, v99);
                OUTLINED_FUNCTION_3_27();
                sub_237A6EF64(v72, v100);
                type metadata accessor for AnyTreeClassifierModel(0);
                OUTLINED_FUNCTION_80_0();
                __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
                OUTLINED_FUNCTION_59_1();
                swift_beginAccess();
                sub_237A6F014();
                swift_endAccess();
                goto LABEL_19;
              }

              goto LABEL_22;
            }
          }

LABEL_23:

          __break(1u);
          goto LABEL_24;
        }

        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        OUTLINED_FUNCTION_18_4(v76, 0xD000000000000028);
        OUTLINED_FUNCTION_21_11();
        sub_237A6EF64(v121, v77);
        break;
    }
  }

  OUTLINED_FUNCTION_0_30();
  sub_237A6EF64(v41, v78);
LABEL_19:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A6C7E0(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters;
  return *(v3 + *(type metadata accessor for MLTrainingSessionParameters(0) + 28));
}

uint64_t sub_237A6C834(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_237C06A4C();
  v2[21] = v3;
  OUTLINED_FUNCTION_1(v3);
  v2[22] = v4;
  v2[23] = OUTLINED_FUNCTION_19();
  v5 = sub_237C05DBC();
  v2[24] = v5;
  OUTLINED_FUNCTION_1(v5);
  v2[25] = v6;
  v2[26] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC70, &qword_237C0EBC8);
  OUTLINED_FUNCTION_20(v7);
  v2[27] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v8);
  v2[28] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v9);
  v2[29] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_237A6C9B0()
{
  v2 = *(v0 + 160);
  *(v0 + 240) = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_62_3();
  *(v0 + 248) = type metadata accessor for AnyTreeClassifierModel(0);
  v3 = OUTLINED_FUNCTION_117_0();
  __swift_getEnumTagSinglePayload(v3, v4, v5);
  result = OUTLINED_FUNCTION_61_3();
  if (v2 == 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  v7 = *(v0 + 160);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_62_3();
  type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v8 = OUTLINED_FUNCTION_117_0();
  __swift_getEnumTagSinglePayload(v8, v9, v10);
  result = OUTLINED_FUNCTION_61_3();
  if (v7 == 1)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = *(v0 + 152);
  v12 = *(v0 + 160) + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters;
  result = type metadata accessor for MLTrainingSessionParameters(0);
  v13 = *(v12 + *(result + 20));
  v14 = __OFADD__(v11, v13);
  *(v0 + 136) = v11 + v13;
  *(v0 + 144) = v14;
  if (__OFADD__(v11, v13))
  {
    goto LABEL_27;
  }

  v15 = *(v12 + *(result + 28));
  *(v0 + 256) = v15;
  v16 = __OFSUB__(v15, v11);
  v17 = v15 - v11;
  if (v16)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v13 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v13;
  }

  *(v0 + 264) = v18;
  type metadata accessor for EventCollector();
  swift_allocObject();
  result = sub_237AD988C();
  *(v0 + 272) = result;
  if (v18 < 0)
  {
    goto LABEL_29;
  }

  v19 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  *(v0 + 280) = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
  *(v0 + 288) = v19;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  if (!*(v0 + 264))
  {
    v34 = *(v0 + 184);
    sub_237C06A1C();
    sub_237B1A15C(v34);
    v35 = OUTLINED_FUNCTION_41_5();
    v36 = v1(v35);
    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      v36 = sub_237B19FFC(v37, 3);
    }

    OUTLINED_FUNCTION_63_2(v36);
    sub_237B1A15C(v34);
    v38 = OUTLINED_FUNCTION_53_4();
    v1(v38);
    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_237B19FFC(v39, 0);
    }

    OUTLINED_FUNCTION_26_8();

    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_39_4();

    __asm { BRAA            X4, X16 }
  }

  *(v0 + 296) = 1;
  sub_237A40628();
  type metadata accessor for AnyTreeClassifier(0);
  v20 = OUTLINED_FUNCTION_117_0();
  result = __swift_getEnumTagSinglePayload(v20, v21, v22);
  if (result == 1)
  {
    goto LABEL_30;
  }

  v23 = OUTLINED_FUNCTION_23_12();
  v24(v23);
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_170();
  result = __swift_getEnumTagSinglePayload(v25, v26, v27);
  if (result == 1)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v28 = swift_task_alloc();
  *(v0 + 304) = v28;
  *v28 = v0;
  OUTLINED_FUNCTION_11_17(v28);
  OUTLINED_FUNCTION_39_4();

  return sub_237AB7980(v29, v30, v31, v32);
}

uint64_t sub_237A6CD38()
{
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v2[39] = v0;

  if (!v0)
  {
    v5 = v2[26];
    v4 = v2[27];
    v6 = v2[24];
    v7 = v2[25];
    swift_endAccess();

    (*(v7 + 8))(v5, v6);
    OUTLINED_FUNCTION_3_27();
    sub_237A6EF64(v4, v8);
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

void sub_237A6CE90(uint64_t result)
{
  v4 = v1[37];
  if (v4 == v1[33])
  {
    v5 = v1[23];
    sub_237C06A1C();
    sub_237B1A15C(v5);
    v6 = OUTLINED_FUNCTION_41_5();
    v7 = v3(v6);
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      v7 = sub_237B19FFC(v8, 3);
    }

    OUTLINED_FUNCTION_63_2(v7);
    sub_237B1A15C(v5);
    v9 = OUTLINED_FUNCTION_53_4();
    v3(v9);
    if ((v2 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_237B19FFC(v10, 0);
    }

    OUTLINED_FUNCTION_26_8();

    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_39_4();

    __asm { BRAA            X4, X16 }
  }

  v1[37] = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_237A40628();
  type metadata accessor for AnyTreeClassifier(0);
  v13 = OUTLINED_FUNCTION_117_0();
  if (__swift_getEnumTagSinglePayload(v13, v14, v15) == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = OUTLINED_FUNCTION_23_12();
  v17(v16);
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_170();
  if (__swift_getEnumTagSinglePayload(v18, v19, v20) == 1)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v21 = swift_task_alloc();
  v1[38] = v21;
  *v21 = v1;
  OUTLINED_FUNCTION_11_17(v21);
  OUTLINED_FUNCTION_39_4();

  sub_237AB7980(v22, v23, v24, v25);
}

uint64_t sub_237A6D0B4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  swift_endAccess();

  (*(v4 + 8))(v2, v3);
  OUTLINED_FUNCTION_3_27();
  sub_237A6EF64(v1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_237A6D1A0()
{
  v1[26] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v2);
  v1[27] = OUTLINED_FUNCTION_19();
  v3 = sub_237C0602C();
  OUTLINED_FUNCTION_20(v3);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC88, &unk_237C11AF0);
  OUTLINED_FUNCTION_20(v4);
  v1[30] = OUTLINED_FUNCTION_19();
  v5 = sub_237C05DBC();
  v1[31] = v5;
  OUTLINED_FUNCTION_1(v5);
  v1[32] = v6;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v7);
  v1[37] = OUTLINED_FUNCTION_19();
  v8 = type metadata accessor for AnyTreeClassifierModel(0);
  v1[38] = v8;
  OUTLINED_FUNCTION_20(v8);
  v1[39] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237A6D354()
{
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_170();
  if (__swift_getEnumTagSinglePayload(v1, v2, v3) == 1)
  {
    sub_2379D9054(v0[37], &qword_27DE9BC78, &qword_237C0EBD0);
  }

  else
  {
    v4 = v0[26];
    OUTLINED_FUNCTION_20_7();
    sub_237A6EFBC();
    v5 = v4 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
    if (!__swift_getEnumTagSinglePayload(v5, 1, v6))
    {
      v9 = v0[35];
      v11 = v0[31];
      v10 = v0[32];
      v12 = v0[26];
      v13 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      (*(v10 + 16))(v9, v12 + v13, v11);

      OUTLINED_FUNCTION_11();
      sub_237A5DEEC(v14, v15);
      v40 = v0[31];
      v38 = *(v0[32] + 8);
      (v38)(v0[35]);
      sub_237C05DFC();
      swift_beginAccess();
      sub_237C05DFC();
      swift_endAccess();
      sub_237B0CBBC();
      v16 = type metadata accessor for AnyClassificationMetrics(0);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237A40628();
      v20 = OUTLINED_FUNCTION_117_0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, v21, v40);
      v23 = v0[39];
      if (EnumTagSinglePayload == 1)
      {
        v24 = v0[36];
        v25 = v0[31];
        v26 = v0[27];

        v38(v24, v25);
        OUTLINED_FUNCTION_1_27();
        sub_237A6EF64(v23, v27);
        sub_2379D9054(v26, &qword_27DE9A9A0, &qword_237C0BF60);
        v39 = 1;
        OUTLINED_FUNCTION_64();
      }

      else
      {
        (*(v0[32] + 32))(v0[34], v0[27], v0[31]);
        OUTLINED_FUNCTION_11();
        sub_237A5DEEC(v31, v32);
        v41 = v0[39];
        v35 = v0[34];
        v36 = v0[33];
        v33 = v0[31];
        v37 = v0[36];
        OUTLINED_FUNCTION_59_2();
        sub_237C05DFC();
        OUTLINED_FUNCTION_59_2();
        sub_237C05DFC();

        sub_237B0CBBC();
        v38(v36, v33);
        v38(v35, v33);
        v38(v37, v33);
        OUTLINED_FUNCTION_1_27();
        sub_237A6EF64(v41, v34);
        v39 = 1;
        OUTLINED_FUNCTION_80_0();
      }

      __swift_storeEnumTagSinglePayload(v28, v29, v30, v16);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
      goto LABEL_6;
    }

    sub_237A6EF64(v0[39], type metadata accessor for AnyTreeClassifierModel);
  }

  v39 = 0;
LABEL_6:

  v7 = v0[1];

  return v7(v39, 1);
}

void sub_237A6D9D8()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v24[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC70, &qword_237C0EBC8);
  OUTLINED_FUNCTION_20(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_94();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for AnyTreeClassifierModel(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = *v2;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v9, 1, v10);
  if (v16)
  {
    sub_2379D9054(v9, &qword_27DE9BC78, &qword_237C0EBD0);
  }

  else
  {
    OUTLINED_FUNCTION_20_7();
    sub_237A6EFBC();
    switch(v15)
    {
      case 2:

        goto LABEL_8;
      case 4:
        OUTLINED_FUNCTION_60_0();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_57_0();
    v17 = sub_237C0929C();

    if (v17)
    {
LABEL_8:
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237A40628();
      type metadata accessor for AnyTreeClassifier(0);
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_73_1(v18, v19, v20);
      if (v16)
      {
        __break(1u);
        JUMPOUT(0x237A6DCB4);
      }

      sub_237A6EE34();
      sub_237C0724C();
      OUTLINED_FUNCTION_1_27();
      sub_237A6EF64(v14, v21);
      OUTLINED_FUNCTION_3_27();
      sub_237A6EF64(v0, v22);
    }

    else
    {
      OUTLINED_FUNCTION_1_27();
      sub_237A6EF64(v14, v23);
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A6DCC8()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v5, 1, v6);
  if (v11)
  {
    sub_2379D9054(v5, &qword_27DE9AE18, &qword_237C0DEE0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v12 = 0xD000000000000031;
    *(v12 + 8) = 0x8000000237C19910;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_2_30();
    sub_237A6EFBC();
    sub_2379FE55C(v1);
    OUTLINED_FUNCTION_0_30();
    sub_237A6EF64(v10, v13);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A6DE68()
{
  OUTLINED_FUNCTION_74();
  v29 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v28 - v22;
  (*(v11 + 16))(v15, v3, v9, v21);
  sub_2379FD540(v15, v23);
  if (!v1)
  {
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_237A40628();
    OUTLINED_FUNCTION_73_1(v8, 1, v16);
    if (v24)
    {
      sub_2379D9054(v8, &qword_27DE9AE18, &qword_237C0DEE0);
      OUTLINED_FUNCTION_2_30();
      sub_237A6EFBC();
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v16);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_2_30();
      sub_237A6EFBC();
      sub_237A6E124(v23, v19);
      sub_237A6EF64(v19, type metadata accessor for PersistentParametersForTreeBasedMethods);
      sub_237A6EF64(v23, type metadata accessor for PersistentParametersForTreeBasedMethods);
    }
  }

  OUTLINED_FUNCTION_73();
}

void *sub_237A6E124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v7 == *v8 && v6 == v8[1];
  if (v9 || (sub_237C0929C() & 1) != 0)
  {

    v11 = sub_237B42F98(v10);

    v13 = sub_237B42F98(v12);
    v14 = sub_237A6E3A8(v11, v13);

    if (v14)
    {
      result = sub_237B31B80(a1 + *(v4 + 32), &v24);
      v16 = v25;
      if (!v25)
      {
        return result;
      }

      v18 = v28;
      v17 = v29;
      v7 = v26;
      v6 = v27;
      v19 = v24;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    }

    else
    {
      v16 = 0x8000000237C198F0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
      sub_237A6EF00();
      v7 = OUTLINED_FUNCTION_50_4();
      v6 = v21;

      OUTLINED_FUNCTION_50_4();

      v18 = sub_237C0883C();
      v17 = v22;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      v19 = 0xD000000000000011;
    }
  }

  else
  {

    v18 = sub_237C0883C();
    v17 = v23;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    v16 = 0xED00006E6D756C6FLL;
    v19 = 0x6320746567726154;
  }

  *v20 = v19;
  *(v20 + 8) = v16;
  *(v20 + 16) = v7;
  *(v20 + 24) = v6;
  *(v20 + 32) = v18;
  *(v20 + 40) = v17;
  *(v20 + 48) = 3;
  return swift_willThrow();
}

uint64_t sub_237A6E3A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_237C093CC();

      sub_237C0878C();
      v15 = sub_237C0940C();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_237C0929C();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A6E550(uint64_t a1)
{
  OUTLINED_FUNCTION_4_25();
  sub_237A6EF64(v1 + v2, v3);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9AE18, &qword_237C0DEE0);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  sub_237C05DBC();
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v1 + v4);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &qword_27DE9BC70, &qword_237C0EBC8);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model, &qword_27DE9BC78, &qword_237C0EBD0);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics, &qword_27DE9BC88, &unk_237C11AF0);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, &qword_27DE9BC88, &unk_237C11AF0);
  return v1;
}

uint64_t sub_237A6E684(uint64_t a1)
{
  sub_237A6E550(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TreeClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = qword_27DE9BC40;
  if (!qword_27DE9BC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A6E730(uint64_t a1)
{
  type metadata accessor for MLTrainingSessionParameters(319);
  if (v1 <= 0x3F)
  {
    sub_237A6E9B0(319, &qword_27DE9BC50, type metadata accessor for PersistentParametersForTreeBasedMethods);
    if (v2 <= 0x3F)
    {
      sub_237C05DBC();
      if (v3 <= 0x3F)
      {
        sub_237A6E9B0(319, &qword_27DE9AE50, MEMORY[0x277CE1898]);
        if (v4 <= 0x3F)
        {
          sub_237A6E9B0(319, &qword_27DE9BC58, type metadata accessor for AnyTreeClassifier);
          if (v5 <= 0x3F)
          {
            sub_237A6E9B0(319, &qword_27DE9BC60, type metadata accessor for AnyTreeClassifierModel);
            if (v6 <= 0x3F)
            {
              sub_237A6E9B0(319, &qword_27DE9BC68, type metadata accessor for AnyClassificationMetrics);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_237A6E9B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_237C08D2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_237A6EA74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237A6EB0C;

  return sub_237A6C834(a1);
}

uint64_t sub_237A6EB0C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  OUTLINED_FUNCTION_3();
  *v9 = v8;

  v12 = *(v8 + 8);
  if (v3)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 & 1;
    v10 = a1;
    v11 = a2;
  }

  return v12(v10, v11, v13);
}

uint64_t sub_237A6EC24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237A6ECB4;

  return sub_237A6D1A0();
}

uint64_t sub_237A6ECB4(uint64_t a1, char a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (v2)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2 & 1;
    v8 = a1;
  }

  return v9(v8, v10);
}

unint64_t sub_237A6EE34()
{
  result = qword_27DE9BC80;
  if (!qword_27DE9BC80)
  {
    type metadata accessor for AnyTreeClassifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BC80);
  }

  return result;
}

uint64_t sub_237A6EE90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_237A6EF00()
{
  result = qword_27DE9BC90;
  if (!qword_27DE9BC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE60, &qword_237C0D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BC90);
  }

  return result;
}

uint64_t sub_237A6EF64(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237A6EFBC()
{
  OUTLINED_FUNCTION_63_1();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_37_0();
  v3(v2);
  return v0;
}

uint64_t sub_237A6F014()
{
  OUTLINED_FUNCTION_63_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_37_0();
  v4(v3);
  return v0;
}

uint64_t sub_237A6F06C()
{
  OUTLINED_FUNCTION_63_1();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_37_0();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_26_8()
{
}

uint64_t OUTLINED_FUNCTION_27_5(uint64_t a1)
{

  return sub_237C090DC();
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_47_5@<X0>(uint64_t a1@<X8>)
{

  return sub_2379D9054(v1 + a1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_48_6()
{
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return sub_237C0864C();
}

uint64_t OUTLINED_FUNCTION_60_4()
{

  return sub_237C06D7C();
}

uint64_t OUTLINED_FUNCTION_61_3()
{

  return sub_2379D9054(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_62_3()
{

  return sub_237A40628();
}

uint64_t OUTLINED_FUNCTION_63_2(uint64_t a1)
{

  return sub_237C069EC();
}

uint64_t sub_237A6F428()
{
  v1 = OUTLINED_FUNCTION_87();
  result = MEMORY[0x2383DDB70](v1);
  if (result)
  {
    v3 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v3;
    type metadata accessor for CMLFeatureValue();

    v6 = sub_237A2E858(v5);
    if (!v0)
    {
      sub_237A2F598(33, v6);
      sub_237A31864(14, inited);
    }

    swift_setDeallocating();
    return tc_v1_release();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A6F534()
{
  v1 = OUTLINED_FUNCTION_87();
  result = MEMORY[0x2383DDB70](v1);
  if (result)
  {
    v3 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v3;
    type metadata accessor for CMLFeatureValue();

    v6 = sub_237A2E858(v5);
    if (!v0)
    {
      sub_237A2F598(32, v6);

      sub_237A31864(7, inited);
    }

    swift_setDeallocating();
    return tc_v1_release();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A6F634()
{
  v1 = OUTLINED_FUNCTION_87();
  v2 = MEMORY[0x2383DDB70](v1);
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  type metadata accessor for CMLParameters();
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  sub_237C05A9C();
  type metadata accessor for CMLFeatureValue();

  v5 = sub_237A2E7CC();
  if (v0)
  {
LABEL_8:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v6 = v5;

  sub_237A2F598(8, v6);

  sub_237A31864(6, inited);

  swift_setDeallocating();
  return tc_v1_release();
}

uint64_t sub_237A6F760(uint64_t a1)
{
  v21[5] = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = sub_237C05ADC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2383DDB70](0, v9);
  if (!v12)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  type metadata accessor for CMLParameters();
  inited = swift_initStackObject();
  *(inited + 16) = v13;
  sub_237A6FAB8(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_237A6FB28(v6);
    type metadata accessor for CMLFeatureValue();
    OUTLINED_FUNCTION_87();
    v15 = sub_237A2E7CC();
    if (!v2)
    {
      sub_237A2F598(27, v15);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    sub_237C05A9C();
    type metadata accessor for CMLFeatureValue();

    v16 = sub_237A2E7CC();
    if (!v2)
    {
      v17 = v16;

      sub_237A2F598(27, v17);
      (*(v8 + 8))(v11, v7);
LABEL_7:

      v18 = sub_237A31864(8, inited);
      v19 = sub_237B0E428(*(v18 + 16));
      if (v19)
      {

        swift_setDeallocating();
        tc_v1_release();
        result = swift_allocObject();
        *(result + 16) = v19;
        return result;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237A6FAB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A6FB28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A6FB90()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B718, &unk_237C0DD90);
  v1[20] = v2;
  OUTLINED_FUNCTION_1(v2);
  v1[21] = v3;
  v1[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v1[23] = swift_task_alloc();
  v4 = sub_237C05C2C();
  v1[24] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[25] = v5;
  v1[26] = swift_task_alloc();
  v6 = sub_237C05ADC();
  v1[27] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[28] = v7;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237A6FD4C);
}

uint64_t sub_237A6FD4C()
{
  v0[32] = [objc_opt_self() defaultManager];
  sub_2379F364C();
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[26];
  v19 = v0[30];
  v20 = v0[27];
  v4 = v0[24];
  v5 = v0[25];
  v21 = v0[23];
  sub_2379F3528();
  sub_237C05C1C();
  sub_237C05C0C();
  (*(v5 + 8))(v3, v4);
  sub_237C05A2C();

  sub_237C05A3C();
  v6 = *(v2 + 8);
  v0[33] = v6;
  v0[34] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v20);
  (*(v2 + 16))(v21, v19, v20);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v20);
  sub_237A6F760(v21);
  v7 = v0[23];

  sub_237A6FB28(v7);
  v8 = sub_237C05B1C();
  v0[35] = v8;
  v0[36] = v9;
  v10 = v8;
  v11 = v9;
  sub_2379E8EE0(0, &qword_27DE9B720, 0x277CBFF28);
  sub_237A2C2B0(v10, v11);
  v12 = sub_237A42E3C(v10, v11);
  v0[37] = v12;
  v13 = v12;
  v14 = v0[21];
  v15 = v0[22];
  v16 = v0[20];
  v23 = objc_opt_self();
  v22 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v0[38] = v22;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_237A7023C;
  swift_continuation_init();
  v0[17] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  sub_237C08A0C();
  (*(v14 + 32))(boxed_opaque_existential_0, v15, v16);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_237A42F28;
  v0[13] = &block_descriptor_4;
  [v23 loadModelAsset:v13 configuration:v22 completionHandler:?];
  (*(v14 + 8))(boxed_opaque_existential_0, v16);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_237A7023C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_237A70458;
  }

  else
  {
    v2 = sub_237A7034C;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_237A7034C()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  v7 = v0[27];
  sub_2379E86D4(v0[35], v0[36]);

  v8 = v0[18];
  sub_237A70570(v5);

  v3(v6, v7);
  v3(v4, v7);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_237A70458(double a1)
{
  v2 = v1[36];
  v3 = v1[37];
  v4 = v1[35];
  v5 = v1[32];
  v6 = v1[33];
  v7 = v1[30];
  v11 = v1[38];
  v12 = v1[31];
  v8 = v1[27];
  swift_willThrow();
  sub_2379E86D4(v4, v2);

  sub_237A70570(v5);
  v6(v7, v8);
  v6(v12, v8);

  v9 = v1[1];

  return v9();
}