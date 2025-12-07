void sub_237EAF38C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237EAF654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8, &unk_237F1CD90);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v87 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v69 = &v64[-v7];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD08, &unk_237F1DCF0);
  v80 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v75 = &v64[-v11];
  MEMORY[0x28223BE20](v12);
  v74 = &v64[-v13];
  MEMORY[0x28223BE20](v14);
  v70 = &v64[-v15];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB6610, &qword_237F1DDF0);
  MEMORY[0x28223BE20](v73);
  v68 = &v64[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v66 = &v64[-v18];
  MEMORY[0x28223BE20](v19);
  v65 = &v64[-v20];
  v81 = a1;
  v21 = *(a1 + 16);
  v79 = a2;
  v22 = *(a2 + 16);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v90 = MEMORY[0x277D84F90];
  result = sub_237C635D8(0, v23, 0);
  v89 = v90;
  v71 = v22;
  v72 = v21;
  if (!v23)
  {
    v44 = v69;
    goto LABEL_13;
  }

  v25 = 0;
  v88 = v23;
  v67 = v9;
  do
  {
    if (v21 == v25)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    result = sub_237C9E294(v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v25, v9, &qword_27DEAFD08, &unk_237F1DCF0);
    if (v22 == v25)
    {
      goto LABEL_24;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
    v27 = *(v26 - 8);
    v28 = v79 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25;
    v29 = *(v73 + 48);
    v85 = v29;
    v30 = v68;
    sub_237CF9FF0(v9, v68, &qword_27DEAFD08, &unk_237F1DCF0);
    v86 = v25;
    v31 = *(v27 + 16);
    v31(&v30[v29], v28, v26);
    v32 = v76;
    v84 = *(v76 + 48);
    v33 = *(v78 + 48);
    v82 = *&v30[v84];
    v83 = v33;
    v34 = v74;
    v31(v74, v30, v26);
    *&v34[*(v32 + 48)] = v82;
    v35 = v34;
    v36 = v75;
    sub_237CF9FF0(v35, v75, &qword_27DEAFD08, &unk_237F1DCF0);
    v37 = v87;
    v38 = *&v36[*(v32 + 48)];
    (*(v27 + 32))(v87, v36, v26);
    v31((v37 + v83), &v30[v85], v26);
    *(v37 + v84) = v38;
    v39 = v89;
    sub_237C65484(v30, qword_27DEB6610, &qword_237F1DDF0);
    v90 = v39;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    v89 = v39;
    if (v41 >= v40 >> 1)
    {
      sub_237C635D8((v40 > 1), v41 + 1, 1);
      v89 = v90;
    }

    v42 = v87;
    v25 = v86 + 1;
    v43 = v89;
    *(v89 + 16) = v41 + 1;
    result = sub_237CF9FF0(v42, v43 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v41, &qword_27DEAD3A8, &unk_237F1CD90);
    v23 = v88;
    v44 = v69;
    v22 = v71;
    v21 = v72;
    v9 = v67;
  }

  while (v88 != v25);
LABEL_13:
  while (v21 != v23)
  {
    if (v23 >= v21)
    {
      goto LABEL_25;
    }

    result = sub_237C9E294(v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v23, v70, &qword_27DEAFD08, &unk_237F1DCF0);
    if (__OFADD__(v23, 1))
    {
      goto LABEL_26;
    }

    if (v22 == v23)
    {
      sub_237C65484(v70, &qword_27DEAFD08, &unk_237F1DCF0);
      return v89;
    }

    if (v23 >= v22)
    {
      goto LABEL_27;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
    v46 = *(v45 - 8);
    v47 = v79 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v23;
    v48 = v73;
    v49 = *(v73 + 48);
    v50 = v66;
    sub_237CF9FF0(v70, v66, &qword_27DEAFD08, &unk_237F1DCF0);
    v88 = v23;
    v51 = *(v46 + 16);
    v51(&v50[v49], v47, v45);
    v52 = v65;
    sub_237CF9FF0(v50, v65, qword_27DEB6610, &qword_237F1DDF0);
    v53 = v76;
    v87 = *(v76 + 48);
    v54 = *(v52 + v87);
    v55 = *(v48 + 48);
    v85 = *(v78 + 48);
    v86 = v55;
    v56 = v74;
    v51(v74, v52, v45);
    *&v56[*(v53 + 48)] = v54;
    v57 = v56;
    v58 = v75;
    sub_237CF9FF0(v57, v75, &qword_27DEAFD08, &unk_237F1DCF0);
    v59 = *&v58[*(v53 + 48)];
    (*(v46 + 32))(v44, v58, v45);
    v51((v44 + v85), v52 + v86, v45);
    *(v44 + v87) = v59;
    v60 = v89;
    sub_237C65484(v52, qword_27DEB6610, &qword_237F1DDF0);
    v90 = v60;
    v62 = *(v60 + 16);
    v61 = *(v60 + 24);
    v89 = v60;
    if (v62 >= v61 >> 1)
    {
      sub_237C635D8((v61 > 1), v62 + 1, 1);
      v44 = v69;
      v89 = v90;
    }

    v63 = v89;
    *(v89 + 16) = v62 + 1;
    result = sub_237CF9FF0(v44, v63 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v62, &qword_27DEAD3A8, &unk_237F1CD90);
    v23 = v88 + 1;
    v22 = v71;
    v21 = v72;
  }

  return v89;
}

void sub_237EAFEA4(uint64_t a1, uint64_t a2, double (*a3)(void (**)(char *, char *, uint64_t), char *), uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v6 = sub_237EF6B10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v45 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6608, &unk_237F1DDE0);
  MEMORY[0x28223BE20](v56);
  v53 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v47 = &v45 - v14;
  MEMORY[0x28223BE20](v15);
  v46 = &v45 - v16;
  v17 = *(a1 + 16);
  v57 = a2;
  v60 = *(a2 + 16);
  v61 = a1;
  if (v60 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v60;
  }

  v64 = MEMORY[0x277D84F90];
  sub_237C62FA0(0, v18, 0);
  v19 = v64;
  v63 = v6;
  v55 = v17;
  if (v18)
  {
    v51 = v7;
    v52 = v9;
    v20 = 0;
    v48 = (v7 + 32);
    v49 = v7 + 16;
    v50 = v18;
    while (v17 != v20)
    {
      v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v22 = *(v7 + 72) * v20;
      v23 = *(v7 + 16);
      v24 = v52;
      v23(v52, v61 + v21 + v22, v6);
      if (v60 == v20)
      {
        goto LABEL_23;
      }

      v25 = v57 + v21;
      v26 = *(v56 + 48);
      v27 = *v48;
      v62 = v19;
      v28 = v53;
      v27(v53, v24, v6);
      v23(v28 + v26, v25 + v22, v6);
      v29 = v58(v28, v28 + v26);
      v30 = v28;
      v19 = v62;
      sub_237C65484(v30, &qword_27DEB6608, &unk_237F1DDE0);
      v64 = v19;
      v32 = *(v19 + 16);
      v31 = *(v19 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_237C62FA0(v31 > 1, v32 + 1, 1);
        v19 = v64;
      }

      ++v20;
      *(v19 + 16) = v32 + 1;
      *(v19 + 8 * v32 + 32) = v29;
      v18 = v50;
      v7 = v51;
      v6 = v63;
      v17 = v55;
      if (v50 == v20)
      {
        goto LABEL_11;
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
  }

  else
  {
LABEL_11:
    v62 = v7 + 16;
    v53 = (v7 + 32);
    while (v17 != v18)
    {
      if (v18 >= v17)
      {
        goto LABEL_24;
      }

      v33 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v34 = *(v7 + 72) * v18;
      v35 = *(v7 + 16);
      v35(v54, v61 + v33 + v34, v6);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_25;
      }

      if (v60 == v18)
      {
        (*(v7 + 8))(v54, v6);
        return;
      }

      if (v18 >= v60)
      {
        goto LABEL_26;
      }

      v36 = v56;
      v37 = v57 + v33;
      v38 = *(v56 + 48);
      v39 = v47;
      (*v53)(v47, v54, v63);
      v40 = (v39 + v38);
      v6 = v63;
      v35(v40, v37 + v34, v63);
      v41 = v46;
      sub_237CF9FF0(v39, v46, &qword_27DEB6608, &unk_237F1DDE0);
      v42 = v58(v41, (v41 + *(v36 + 48)));
      sub_237C65484(v41, &qword_27DEB6608, &unk_237F1DDE0);
      v64 = v19;
      v44 = *(v19 + 16);
      v43 = *(v19 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_237C62FA0(v43 > 1, v44 + 1, 1);
        v19 = v64;
      }

      *(v19 + 16) = v44 + 1;
      *(v19 + 8 * v44 + 32) = v42;
      ++v18;
      v17 = v55;
    }
  }
}

void sub_237EB0364(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v45 = sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v48 = v9;
  MEMORY[0x28223BE20](v10);
  v44 = &v37 - v11;
  sub_237EF9640();
  OUTLINED_FUNCTION_1();
  v46 = v12;
  v47 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v37 - v15;
  v41 = a1;
  MEMORY[0x2383E08A0](a3, v8, v14);
  v16 = a2[3];
  v40 = a2[2];
  v49 = v40;
  v50 = v16;
  v17 = a2[4];
  v18 = a2[5];
  v51 = a3;
  v52 = v17;
  v38 = v17;
  v20 = a2[6];
  v19 = a2[7];
  v53 = v18;
  v54 = v20;
  v21 = a2[8];
  v22 = a2[9];
  v55 = v19;
  v56 = v21;
  v57 = v22;
  v58 = a4;
  v59 = 0;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  v39 = v16;
  v24[2] = v16;
  v24[3] = a3;
  v25 = v18;
  v26 = a3;
  v24[4] = v25;
  v24[5] = v20;
  v24[6] = v19;
  v24[7] = v21;
  v24[8] = v22;
  v24[9] = a4;
  v42 = a4;
  v24[10] = KeyPath;
  v27 = v45;
  swift_getWitnessTable();
  v29 = v43;
  v28 = v44;
  sub_237EF9860();

  (*(v48 + 8))(v28, v27);
  v30 = v46;
  swift_getWitnessTable();
  sub_237EF8830();
  v31 = (*(v47 + 8))(v29, v30);
  if (v60)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](v31);
    v32 = v39;
    *(&v37 - 12) = v40;
    *(&v37 - 11) = v32;
    v33 = v38;
    *(&v37 - 10) = v26;
    *(&v37 - 9) = v33;
    *(&v37 - 8) = v25;
    *(&v37 - 7) = v20;
    *(&v37 - 6) = v19;
    *(&v37 - 5) = v21;
    v34 = v42;
    *(&v37 - 4) = v22;
    *(&v37 - 3) = v34;
    *(&v37 - 2) = v35;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD08, &unk_237F1DCF0);
    sub_237C9339C(sub_237EB58A8, (&v37 - 14), v26, v36, MEMORY[0x277D84A98], v34);
  }
}

uint64_t sub_237EB06EC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v8 = a4[2];
  v12[1] = a4[1];
  v14 = v8;
  v9 = a4[4];
  v15 = a4[3];
  v13 = a5;
  v16 = v9;
  v17 = a6;
  v18 = a2;
  v19 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  return sub_237C8FFEC(sub_237EB5870, v12, a5, MEMORY[0x277D849A8], v10, a6, MEMORY[0x277D84950], &v20);
}

uint64_t sub_237EB07AC(uint64_t a1, void x1_0, void x2_0, _OWORD *a2)
{
  type metadata accessor for LSTMFCN(0);
  sub_237C962B0();
  sub_237EF6510();
  v5 = a2[2];
  v10[0] = a2[1];
  v10[1] = v5;
  v6 = a2[4];
  v10[2] = a2[3];
  v10[3] = v6;
  v7 = *(type metadata accessor for TimeSeriesClassifier.Model(0, v10) + 84);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3F0, &unk_237F05680);
  result = __swift_getEnumTagSinglePayload(a1 + v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_237EF6790();
  }

  return result;
}

uint64_t sub_237EB0898(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0.0;
    v4 = 0.0;
    do
    {
      v5 = v4;
      v6 = *(a1 + 32 + 8 * v2++);
      v7 = v6 - v3;
      v4 = v5 + v7;
      v3 = v5 + v7 - v5 - v7;
    }

    while (v1 != v2);
    *&result = v4 / v1;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t TimeSeriesClassifier.labels.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t TimeSeriesClassifier.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v8[14] = a2;
  v8[15] = a3;
  v8[13] = a1;
  memcpy(v8 + 2, v7, 0x50uLL);

  return MEMORY[0x2822009F8](sub_237EB0A44, 0, 0);
}

uint64_t sub_237EB0A44()
{
  v1 = v0[17];
  v2 = sub_237EF7E90();
  type metadata accessor for AnnotatedFeature(0, v2, *(v1 + 24), v3);
  v4 = sub_237EF89A0();
  v0[20] = v4;
  v0[12] = v4;
  v5 = swift_task_alloc();
  v0[21] = v5;
  v6 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_237EB0B60;
  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[13];

  return TimeSeriesClassifier.fitted<A, B>(to:validateOn:eventHandler:)(v12, v10, (v0 + 12), v11, v8, v9, v7, v6);
}

uint64_t sub_237EB0B60()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_237EB0CB0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t TimeSeriesClassifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 592) = v47;
  *(v9 + 584) = v46;
  *(v9 + 576) = a8;
  *(v9 + 568) = a7;
  *(v9 + 560) = a6;
  *(v9 + 552) = a5;
  *(v9 + 544) = a4;
  *(v9 + 536) = a3;
  *(v9 + 528) = a2;
  *(v9 + 520) = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDE8, &unk_237F1DCD0);
  OUTLINED_FUNCTION_18(v12);
  *(v9 + 600) = OUTLINED_FUNCTION_27_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8, &unk_237F1CD90);
  *(v9 + 608) = v13;
  OUTLINED_FUNCTION_6_1(v13);
  *(v9 + 616) = v14;
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD00, &unk_237F1DCE0);
  *(v9 + 648) = v15;
  OUTLINED_FUNCTION_18(v15);
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  v16 = sub_237EF64C0();
  *(v9 + 672) = v16;
  OUTLINED_FUNCTION_6_1(v16);
  *(v9 + 680) = v17;
  *(v9 + 688) = OUTLINED_FUNCTION_27_0();
  v18 = a6[2];
  *(v9 + 696) = v18;
  v19 = a6[3];
  *(v9 + 704) = v19;
  v20 = a6[4];
  *(v9 + 712) = v20;
  v21 = a6[5];
  *(v9 + 720) = v21;
  *&v22 = v18;
  *(&v22 + 1) = v19;
  *&v23 = v20;
  *(&v23 + 1) = v21;
  v24 = a6[6];
  *(v9 + 728) = v24;
  v25 = a6[7];
  *(v9 + 736) = v25;
  v26 = a6[8];
  *(v9 + 744) = v26;
  v27 = a6[9];
  *(v9 + 752) = v27;
  *&v28 = v24;
  *(&v28 + 1) = v25;
  *(v9 + 256) = v22;
  *(v9 + 272) = v23;
  *&v22 = v26;
  *(&v22 + 1) = v27;
  *(v9 + 288) = v28;
  *(v9 + 304) = v22;
  v29 = type metadata accessor for TimeSeriesClassifier.Model(0, v9 + 256);
  *(v9 + 760) = v29;
  OUTLINED_FUNCTION_6_1(v29);
  *(v9 + 768) = v30;
  *(v9 + 776) = OUTLINED_FUNCTION_17_57();
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  *(v9 + 800) = v31;
  OUTLINED_FUNCTION_6_1(v31);
  *(v9 + 808) = v32;
  *(v9 + 816) = OUTLINED_FUNCTION_17_57();
  *(v9 + 824) = swift_task_alloc();
  *(v9 + 832) = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD08, &unk_237F1DCF0);
  *(v9 + 840) = v33;
  OUTLINED_FUNCTION_6_1(v33);
  *(v9 + 848) = v34;
  *(v9 + 856) = OUTLINED_FUNCTION_17_57();
  *(v9 + 864) = swift_task_alloc();
  v35 = sub_237EF6B10();
  *(v9 + 872) = v35;
  OUTLINED_FUNCTION_6_1(v35);
  *(v9 + 880) = v36;
  *(v9 + 888) = OUTLINED_FUNCTION_17_57();
  *(v9 + 896) = swift_task_alloc();
  *(v9 + 904) = swift_task_alloc();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8, &qword_237F08EB8);
  OUTLINED_FUNCTION_18(v37);
  *(v9 + 912) = OUTLINED_FUNCTION_27_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  OUTLINED_FUNCTION_18(v38);
  *(v9 + 920) = OUTLINED_FUNCTION_17_57();
  *(v9 + 928) = swift_task_alloc();
  *(v9 + 936) = swift_task_alloc();
  v39 = sub_237EF7E90();
  *(v9 + 944) = v39;
  v41 = type metadata accessor for AnnotatedFeature(255, v39, v19, v40);
  *(v9 + 952) = v41;
  v42 = sub_237EF90F0();
  *(v9 + 960) = v42;
  OUTLINED_FUNCTION_6_1(v42);
  *(v9 + 968) = v43;
  *(v9 + 976) = swift_task_alloc();
  *(v9 + 984) = swift_task_alloc();
  *(v9 + 992) = *(v41 - 8);
  *(v9 + 1000) = swift_task_alloc();
  *(v9 + 1008) = swift_task_alloc();
  *(v9 + 1016) = *(a7 - 8);
  *(v9 + 1024) = OUTLINED_FUNCTION_27_0();
  memcpy((v9 + 16), v8, 0x50uLL);

  return MEMORY[0x2822009F8](sub_237EB1260, 0, 0);
}

void sub_237EB1260()
{
  v493 = v0;
  v1 = v0;
  v2 = v0[123];
  v3 = v0[119];
  (*(v0[127] + 16))(v0[128], v0[66], v0[71]);
  v4 = sub_237EF8A90();
  v0[57] = v4;
  v5 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  sub_237EF8E80();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    (*(v0[121] + 8))(v0[123], v0[120]);

    v7 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v7);
    *v8 = 0xD000000000000014;
    *(v8 + 8) = 0x8000000237F1DCE0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 2;
    swift_willThrow();
LABEL_8:

    v33 = v1[1];
LABEL_9:

    v33();
    return;
  }

  v9 = v0[124];
  v12 = *(v9 + 32);
  v10 = v9 + 32;
  v11 = v12;
  v12(v1[126], v1[123], v1[119]);
  v13 = *(sub_237EF7E20() + 16);

  v14 = v1[126];
  if (v13 != 2)
  {
    v27 = v1[124];
    v28 = v1[119];

    v29 = sub_237EF7E20();
    v30 = sub_237C84150();
    v31 = OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v30);
    *v32 = v29;
    v32[1] = 0xD000000000000036;
    v32[2] = 0x8000000237EFD2D0;
    v32[3] = 0;
    OUTLINED_FUNCTION_10_68(v31, v32);
    (*(v27 + 8))(v14, v28);
    goto LABEL_8;
  }

  v15 = sub_237EF7E20();
  if (!*(v15 + 16))
  {
    goto LABEL_120;
  }

  v16 = *(v15 + 32);

  v17 = v1[2];
  v18 = v1[126];
  if (v16 < v17)
  {
    v19 = v1[124];
    v20 = v1[119];

    v21 = sub_237EF7E20();
    sub_237EF9330();

    *&v492[0] = 0xD000000000000025;
    *(&v492[0] + 1) = 0x8000000237EFB9D0;
    v1[64] = v17;
    v22 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v22);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v23 = v492[0];
    v24 = sub_237C84150();
    v25 = OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v24);
    *v26 = v21;
    *(v26 + 8) = v23;
    *(v26 + 24) = 0;
    OUTLINED_FUNCTION_10_68(v25, v26);
    (*(v19 + 8))(v18, v20);
    goto LABEL_8;
  }

  v424 = WitnessTable;
  v431 = v5;
  v419 = v1[2];
  v416 = v1[3];
  v406 = v1[4];
  v400 = v1[5];
  v420 = v1[7];
  v34 = *(v1 + 16);
  v35 = sub_237EF7E20();
  if (*(v35 + 16) < 2uLL)
  {
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
    v452 = v1[126];
    v339 = v1[124];
    v340 = v1[119];
    v341 = v1[117];
    v476 = v1[99];
    v342 = v1[95];
    v462 = v1[83];
    v343 = v1[69];
    v344 = v1[68];

    sub_237C65484((v1 + 46), qword_27DEB6580, qword_237F1DD58);

    v345 = OUTLINED_FUNCTION_49_2();
    WitnessTable(v345);
    sub_237C65484(v341, &qword_27DEAD2C0, &qword_237F08F20);

    (*(v339 + 8))(v452, v340);
    sub_237C5EE40(v344, v343);
    sub_237C65484(v462, &qword_27DEAFD00, &unk_237F1DCE0);

    (WitnessTable)(v476, v342);
    goto LABEL_8;
  }

  v36 = (v1 + 71);
  v37 = v1[122];
  v38 = v1[119];
  v39 = *(v35 + 40);
  v463 = *(v1 + 89);
  v477 = *(v1 + 87);
  v445 = *(v1 + 93);
  v453 = *(v1 + 91);
  v434 = *(v1 + 71);
  v439 = *(v1 + 73);

  v1[58] = v4;
  v40 = swift_task_alloc();
  *(v40 + 16) = v477;
  *(v40 + 32) = v434;
  *(v40 + 48) = v463;
  *(v40 + 64) = v453;
  *(v40 + 80) = v445;
  *(v40 + 96) = v439;
  v408 = v39;
  *(v40 + 112) = v39;
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  sub_237EF87D0();

  if (__swift_getEnumTagSinglePayload(v37, 1, v38) != 1)
  {
    v78 = v1[126];
    v79 = v1[125];
    v80 = v1[124];
    v81 = v1[122];
    v82 = v1[119];

    v11(v79, v81, v82);
    v83 = sub_237EF7E20();
    v84 = sub_237C84150();
    v85 = OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v84);
    *v86 = v83;
    v86[1] = 0xD000000000000036;
    v86[2] = 0x8000000237EFD2D0;
    v86[3] = 0;
    OUTLINED_FUNCTION_10_68(v85, v86);
    v87 = *(v80 + 8);
    v87(v79, v82);
    v87(v78, v82);
    goto LABEL_8;
  }

  v41 = v1[122];
  v42 = v1[121];
  v43 = v1[120];
  v454 = v1[118];
  v44 = v1[94];
  v440 = v1[93];
  v435 = v1[92];
  v45 = v1[91];
  v46 = v1[90];
  v414 = v1[89];
  v464 = *(v1 + 87);
  v430 = v1;
  v47 = v1[74];
  v48 = *(v430 + 584);
  v49 = *(v430 + 560);
  v388 = *(v430 + 544);
  v393 = v36;
  v478 = *v36;
  (*(v42 + 8))(v41, v43);
  v50 = powf((v34 * 0.01) / v34, 1.0 / v400);
  sub_237CDC02C(v420, 0.0);
  v51 = *(v430 + 88);
  v52 = *(*(v49 - 1) + 16);
  v52(v430 + 96, v430 + 16, v49);
  v52(v430 + 176, v430 + 16, v49);
  v412 = sub_237E5E16C(v51, *(&v464 + 1), v45, v44);
  v409 = v53;
  v395 = v4;
  *(v430 + 472) = v4;
  v54 = swift_task_alloc();
  *v54 = v464;
  *(v54 + 16) = v478;
  *(v54 + 32) = v414;
  *(v54 + 40) = v46;
  *(v54 + 48) = v45;
  *(v54 + 56) = v435;
  *(v54 + 64) = v440;
  *(v54 + 72) = v44;
  *(v54 + 80) = v48;
  *(v54 + 88) = v47;
  KeyPath = swift_getKeyPath();

  v56 = swift_task_alloc();
  *(v56 + 16) = v478;
  *(v56 + 32) = v46;
  *(v56 + 40) = v45;
  *(v56 + 48) = v435;
  *(v56 + 56) = v440;
  *(v56 + 64) = v44;
  *(v56 + 72) = v48;
  *(v56 + 80) = v47;
  *(v56 + 88) = KeyPath;
  sub_237C9339C(sub_237DDC108, v56, v431, v454, MEMORY[0x277D84A98], v424);
  v58 = v57;

  *(v430 + 480) = v58;
  v59 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  v60 = swift_getWitnessTable();
  sub_237EB0364(v430 + 480, v49, v59, v60);
  v62 = v61;

  v392 = v62;
  if (v388)
  {
    v63 = *(v62 + 16);
    if (v63)
    {
      v64 = *(v430 + 848);
      v65 = *(v430 + 808);
      *&v492[0] = MEMORY[0x277D84F90];
      sub_237C635F8(0, v63, 0);
      v66 = *&v492[0];
      OUTLINED_FUNCTION_28();
      v68 = v62 + v67;
      v436 = *(v64 + 72);
      do
      {
        v465 = v63;
        v69 = *(v430 + 864);
        v70 = *(v430 + 856);
        v71 = *(v430 + 800);
        sub_237C9E294(v68, v69, &qword_27DEAFD08, &unk_237F1DCF0);
        sub_237C9E294(v69, v70, &qword_27DEAFD08, &unk_237F1DCF0);
        OUTLINED_FUNCTION_5_94();
        sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0, &qword_237F036B0, v72);
        sub_237EF7F00();
        sub_237C65484(v69, &qword_27DEAFD08, &unk_237F1DCF0);
        (*(v65 + 8))(v70, v71);
        *&v492[0] = v66;
        v74 = *(v66 + 16);
        v73 = *(v66 + 24);
        if (v74 >= v73 >> 1)
        {
          v77 = OUTLINED_FUNCTION_7_78(v73);
          sub_237C635F8(v77, v74 + 1, 1);
          v66 = *&v492[0];
        }

        *(v66 + 16) = v74 + 1;
        OUTLINED_FUNCTION_28();
        (*(v76 + 32))(v66 + v75 + *(v76 + 72) * v74);
        v68 += v436;
        --v63;
      }

      while (v465 != 1);
    }

    v88 = *(v430 + 936);
    v89 = *(v430 + 928);
    v90 = *(v430 + 912);
    v91 = *(v430 + 872);
    v92 = sub_237EF6430();
    __swift_storeEnumTagSinglePayload(v90, 1, 1, v92);
    sub_237EF6AF0();
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v91);
    sub_237CF9FF0(v89, v88, &qword_27DEAD2C0, &qword_237F08F20);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(*(v430 + 936), 1, 1, *(v430 + 872));
  }

  v446 = *(v430 + 752);
  v93 = *(v430 + 744);
  v441 = v93;
  v94 = *(v430 + 736);
  v95 = *(v430 + 728);
  v96 = *(v430 + 720);
  v97 = *(v430 + 712);
  v479 = v393[8];
  v98 = *(v430 + 592);
  v99 = *(v430 + 584);
  v466 = *(v430 + 560);
  *(v430 + 488) = v395;
  v100 = swift_task_alloc();
  v455 = *v393;
  v101 = *v393;
  *v100 = v479;
  *(v100 + 16) = v101;
  *(v100 + 32) = v97;
  *(v100 + 40) = v96;
  *(v100 + 48) = v95;
  *(v100 + 56) = v94;
  *(v100 + 64) = v93;
  *(v100 + 72) = v446;
  *(v100 + 80) = v99;
  *(v100 + 88) = v98;
  v102 = swift_getKeyPath();

  v103 = swift_task_alloc();
  *(v103 + 16) = v455;
  *(v103 + 32) = v96;
  *(v103 + 40) = v95;
  *(v103 + 48) = v94;
  *(v103 + 56) = v441;
  *(v103 + 64) = v446;
  *(v103 + 72) = v99;
  *(v103 + 80) = v98;
  *(v103 + 88) = v102;
  sub_237C9339C(sub_237DDE678, v103, v431, *(&v479 + 1), MEMORY[0x277D84A98], v424);
  v105 = v104;

  *(v430 + 496) = v105;
  v106 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  v107 = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_49();
  v111 = sub_237EB06EC(v108, v109, v110, v466, v106, v107);
  v447 = v107;
  v456 = v106;

  v112 = *(v111 + 16);
  v411 = v111;
  if (v112)
  {
    v10 = *(v430 + 808);
    v113 = OUTLINED_FUNCTION_15_51(MEMORY[0x277D84F90]);
    sub_237C63650(v113, v114, v115);
    v116 = 0;
    v117 = *&v492[0];
    v14 = v409;
    while (v116 < *(v411 + 16))
    {
      v118 = v112;
      OUTLINED_FUNCTION_8_86();
      OUTLINED_FUNCTION_9_66();
      sub_237EB3ACC(v119, v120, v121, v122, v123, v124, v125, v126, v346, v348, v350, v352, v354);
      *&v492[0] = v117;
      v128 = *(v117 + 16);
      v127 = *(v117 + 24);
      if (v128 >= v127 >> 1)
      {
        v130 = OUTLINED_FUNCTION_7_78(v127);
        sub_237C63650(v130, v128 + 1, 1);
        v14 = v409;
        v117 = *&v492[0];
      }

      ++v116;
      *(v117 + 16) = v128 + 1;
      OUTLINED_FUNCTION_28();
      (*(v10 + 32))(v117 + v129 + *(v10 + 72) * v128);
      v112 = v118;
      if (v118 == v116)
      {
        v383 = v117;
        goto LABEL_32;
      }
    }

LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:

    sub_237C65484(v14, &qword_27DEAFD00, &unk_237F1DCE0);
    v322 = v377;
LABEL_114:
    v401 = *(v10 + 1008);
    v323 = *(v10 + 992);
    v399 = *(v10 + 952);
    v397 = *(v10 + 936);
    v324 = *(v10 + 792);
    v325 = *(v10 + 768);
    v326 = *(v10 + 760);
    v327 = *(v10 + 688);
    v328 = *(v10 + 680);
    v329 = *(v10 + 672);
    v322(v327, HIDWORD(v382), v329);
    type metadata accessor for LSTMFCN(0);
    sub_237C962B0();
    sub_237EF68C0();
    (*(v328 + 8))(v327, v329);
    sub_237C65484(v397, &qword_27DEAD2C0, &qword_237F08F20);
    (*(v323 + 8))(v401, v399);
    v330 = OUTLINED_FUNCTION_18_47();
    v331(v330);

    (*(v325 + 8))(v324, v326);

    v33 = *(v10 + 8);
    goto LABEL_9;
  }

  v383 = MEMORY[0x277D84F90];
LABEL_32:
  v131 = *(v430 + 752);
  v402 = *(v430 + 744);
  v404 = *(v430 + 872);
  v132 = *(v430 + 736);
  v133 = *(v430 + 728);
  v134 = *(v430 + 720);
  v405 = v134;
  v135 = *(v430 + 712);
  v136 = *(v430 + 592);
  v137 = *(v430 + 584);
  v442 = *(v430 + 560);
  v138 = swift_task_alloc();
  v139 = v393[8];
  v140 = *v393;
  *(v138 + 16) = v139;
  *(v138 + 32) = v140;
  v467 = v140;
  v480 = v139;
  *(v138 + 48) = v135;
  *(v138 + 56) = v134;
  *(v138 + 64) = v133;
  *(v138 + 72) = v132;
  *(v138 + 80) = v402;
  *(v138 + 88) = v131;
  *(v138 + 96) = v137;
  *(v138 + 104) = v136;
  v437 = *(&v140 + 1);
  v384 = sub_237C8FFEC(sub_237EB52B4, v138, *(&v140 + 1), v404, MEMORY[0x277D84A98], v136, MEMORY[0x277D84AC0], v141);

  v142 = swift_task_alloc();
  *v142 = v480;
  *(v142 + 16) = v467;
  *(v142 + 32) = v135;
  *(v142 + 40) = v134;
  *(v142 + 48) = v133;
  *(v142 + 56) = v132;
  *(v142 + 64) = v402;
  *(v142 + 72) = v131;
  *(v142 + 80) = v137;
  *(v142 + 88) = v136;
  v143 = swift_getKeyPath();

  v144 = swift_task_alloc();
  *(v144 + 16) = v467;
  *(v144 + 32) = v134;
  *(v144 + 40) = v133;
  *(v144 + 48) = v132;
  *(v144 + 56) = v402;
  *(v144 + 64) = v131;
  *(v144 + 72) = v137;
  *(v144 + 80) = v136;
  *(v144 + 88) = v143;
  v1 = v430;
  v146 = sub_237C8FFEC(sub_237DDE678, v144, v437, *(&v480 + 1), MEMORY[0x277D84A98], v136, MEMORY[0x277D84AC0], v145);

  *(v430 + 504) = v146;
  OUTLINED_FUNCTION_20_49();
  v150 = sub_237EB06EC(v147, v148, v149, v442, v456, v447);

  v151 = *(v150 + 16);
  v394 = v150;
  if (v151)
  {
    v152 = *(v430 + 880);
    v153 = OUTLINED_FUNCTION_15_51(MEMORY[0x277D84F90]);
    sub_237C635F8(v153, v154, v155);
    v156 = 0;
    v407 = *&v492[0];
    while (v156 < *(v150 + 16))
    {
      OUTLINED_FUNCTION_8_86();
      OUTLINED_FUNCTION_9_66();
      sub_237EB3D88(v157, v158, v159, v160, v346, v348, v350, v352, v354);
      v161 = v407;
      *&v492[0] = v407;
      v163 = *(v407 + 16);
      v162 = *(v407 + 24);
      if (v163 >= v162 >> 1)
      {
        v166 = OUTLINED_FUNCTION_7_78(v162);
        sub_237C635F8(v166, v163 + 1, 1);
        v161 = *&v492[0];
      }

      ++v156;
      *(v161 + 16) = v163 + 1;
      OUTLINED_FUNCTION_28();
      v407 = v164;
      (*(v152 + 32))(v164 + v165 + *(v152 + 72) * v163);
      v150 = v394;
      if (v151 == v156)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
    v332 = *(v430 + 1008);
    v333 = *(v430 + 992);
    v334 = *(v430 + 952);
    v335 = *(v430 + 936);
    v451 = *(v430 + 920);
    v444 = *(v430 + 872);
    v475 = *(v430 + 792);
    v336 = *(v430 + 784);
    v337 = *(v430 + 760);
    v461 = *(v430 + 664);
    v433 = *(v430 + 552);
    v429 = *(v430 + 544);

    v338 = *v364;
    (*v364)(v336, v337);
    sub_237C65484(v335, &qword_27DEAD2C0, &qword_237F08F20);

    (*(v333 + 8))(v332, v334);
    (*v386)(v451, v444);
    sub_237C5EE40(v429, v433);
    sub_237C65484(v461, &qword_27DEAFD00, &unk_237F1DCE0);

    v338(v475, v337);
    goto LABEL_8;
  }

  v407 = MEMORY[0x277D84F90];
LABEL_40:
  if (!*(v392 + 16))
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v167 = *(v430 + 864);
  v168 = *(v430 + 808);
  v169 = *(v430 + 800);
  OUTLINED_FUNCTION_28();
  sub_237C9E294(v171 + v170, v167, &qword_27DEAFD08, &unk_237F1DCF0);
  v172 = sub_237EF7E20();
  (*(v168 + 8))(v167, v169);
  if (!*(v172 + 16))
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v173 = *(v430 + 792);
  v481 = *(v430 + 760);
  v174 = *(v430 + 752);
  v175 = *(v430 + 744);
  v176 = *(v430 + 736);
  v177 = *(v430 + 728);
  v178 = *(v430 + 720);
  v468 = *(v430 + 712);
  v179 = *(v430 + 704);
  v180 = *(v430 + 696);
  v403 = *(v172 + 32);

  v181 = sub_237E5E16C(v51, v179, v177, v174);
  sub_237C93998(v181, v182, v408, v419, v416, v180, v179, v468, v173, v178, v177, v176, v175, v174);
  v183 = (v173 + *(v481 + 84));
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3F0, &unk_237F05680);
  if (__swift_getEnumTagSinglePayload(v183, 1, v369) != 1)
  {
    *v183 = v34;
    sub_237EF8260();
    sub_237EF8260();
    v184 = sub_237EAF654(v392, v383);

    v486 = v184;
    if ((v400 & 0x8000000000000000) == 0)
    {
      v185 = MEMORY[0x277D2CD48];
      v10 = v430;
      if (!v400)
      {

        HIDWORD(v382) = *v185;
LABEL_113:
        v321 = *(v10 + 680);

        v322 = *(v321 + 104);
        goto LABEL_114;
      }

      v410 = 0;
      if (v406)
      {
        v363 = v183;
        v186 = 0;
        v187 = *(v430 + 680);
        v188 = v187 + 104;
        v189 = (v187 + 8);
        v190 = *(v430 + 808);
        v396 = (v190 + 40);
        v390 = v491;
        v191 = (v190 + 32);
        v387 = (*(v430 + 880) + 8);
        v192 = *(v430 + 768);
        v365 = (v192 + 8);
        v366 = (v192 + 16);
        v413 = *(v430 + 840);
        v415 = v191;
        v359 = v188 & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v362 = *(v430 + 760);
        v389 = *(v430 + 648);
        v443 = *(v430 + 616);
        v432 = *(v430 + 608);
        v367 = *(v430 + 552);
        v193 = *MEMORY[0x277D2CD40];
        HIDWORD(v382) = *MEMORY[0x277D2CD48];
        v385 = xmmword_237F08A50;
        v360 = *(v430 + 544);
        v379 = v188;
        v368 = v189;
        HIDWORD(v361) = *MEMORY[0x277D2CD40];
        while (2)
        {
          v425 = *(v10 + 824);
          v469 = *(v10 + 816);
          v457 = *(v10 + 752);
          v448 = *(v10 + 728);
          v438 = *(v10 + 704);
          v194 = *(v10 + 688);
          v195 = *(v430 + 672);
          v380 = v186;
          v370 = v186 + 1;
          v482 = *(v430 + 664);
          sub_237EB543C();
          v378 = *v188;
          (*v188)(v194, v193, v195);
          v196 = type metadata accessor for LSTMFCN(0);
          v374 = sub_237C962B0();
          sub_237EF68C0();
          v197 = v195;
          v1 = v430;
          v372 = *v189;
          (*v189)(v194, v197);
          v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
          v199 = swift_allocObject();
          *(v199 + 16) = v385;
          v200 = v406;
          OUTLINED_FUNCTION_3_100(v199, v201, v202, v203, v204, v205, v206, v207, v347, v349, v351, v353, v355, v356, v357, v358, v359, v360, v361, v362, v363, v365, v366, v367, v368, v369, v370, v372, v374, v196, v378, v379, v380, v382, v383, v384, v385, *(&v385 + 1), v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v398, v400, v403, v404, v405, v406, v407, v408);
          sub_237EF7DE0();
          v398 = v198;
          WitnessTable = swift_allocObject();
          *(WitnessTable + 1) = xmmword_237F04760;
          *(WitnessTable + 4) = v200;
          *(WitnessTable + 5) = sub_237E5E170(v412, v409, v438, v448, v457);
          sub_237EF7DE0();
          sub_237CF7A7C(v425, v469, v482);
          v208 = 0;
          v209 = 0;
          v210 = v486;
          v391 = v486[2];
          v211 = 0.0;
          while (1)
          {
            v212 = v391 >= v209;
            if (v406 > 0)
            {
              v212 = v209 >= v391;
            }

            v405 = v208;
            if (v212)
            {
              break;
            }

            if (__OFADD__(v209, v406))
            {
              v213 = (&v209[v406] >> 63) ^ 0x8000000000000000;
            }

            else
            {
              v213 = &v209[v406];
            }

            v214 = v210[2];
            v470 = v209;
            v215 = __OFSUB__(v214, v209);
            v216 = v214 - v209;
            if (v215)
            {
              __break(1u);
LABEL_124:
              __break(1u);
              goto LABEL_125;
            }

            if (v216 >= v406)
            {
              v217 = v406;
            }

            else
            {
              v217 = v216;
            }

            v218 = sub_237EF7E20();
            v483 = v217;
            v488 = v217;
            v489 = v403;
            v490 = v408;
            v404 = v213;
            if (*(v218 + 16) == 3)
            {
              v219 = 32;
              while (*(v218 + v219) == *&v487[v219])
              {
                v219 += 8;
                if (v219 == 56)
                {

                  v220 = v217;
                  goto LABEL_64;
                }
              }
            }

            v221 = swift_allocObject();
            *(v221 + 16) = v385;
            v220 = v217;
            OUTLINED_FUNCTION_3_100(v221, v222, v223, v224, v225, v226, v227, v228, v347, v349, v351, v353, v355, v356, v357, v358, v359, v360, v361, v362, v363, v365, v366, v367, v368, v369, v371, v373, v375, v376, v377, v379, v381, v382, v383, v384, v385, *(&v385 + 1), v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v398, v400, v403, v213, v405, v406, v407, v408);
            sub_237EF7DE0();
            v229 = OUTLINED_FUNCTION_18_47();
            v230(v229);
LABEL_64:
            v231 = v1[94];
            v232 = v1[91];
            WitnessTable = v1[88];
            v426 = v1[83];
            v421 = *(v389 + 36);
            v233 = sub_237EF7E20();
            v491[0] = v220;
            v491[1] = sub_237E5E170(v412, v409, WitnessTable, v232, v231);
            if (*(v233 + 16) == 2)
            {
              v234 = 0;
              v235 = 0;
              while (1)
              {
                v236 = v234;
                if (*(v233 + 32 + 8 * v235) != v390[v235])
                {
                  break;
                }

                v234 = 1;
                v235 = 1;
                if (v236)
                {

                  v237 = v483;
                  goto LABEL_70;
                }
              }
            }

            v238 = v1[103];
            v239 = v1[100];
            WitnessTable = v1[94];
            v240 = v1[91];
            v241 = v1[88];

            v242 = swift_allocObject();
            *(v242 + 16) = xmmword_237F04760;
            v237 = v483;
            *(v242 + 32) = v483;
            *(v242 + 40) = sub_237E5E170(v412, v409, v241, v240, WitnessTable);
            sub_237EF7DE0();
            (*v396)(v426 + v421, v238, v239);
LABEL_70:
            v210 = v486;
            if (v237 < 0)
            {
              goto LABEL_124;
            }

            if (v237)
            {
              v243 = 0;
              OUTLINED_FUNCTION_28();
              v417 = v486 + v244;
              while (1)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38, &qword_237F093D0);
                v245 = swift_allocObject();
                *(v245 + 16) = xmmword_237F04760;
                v14 = &qword_27DEAF7F8;
                v10 = &qword_237F09CD0;
                v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8, &qword_237F09CD0);
                *(v245 + 56) = v246;
                v247 = sub_237C96710(&qword_27DEAF808, &qword_27DEAF7F8, &qword_237F09CD0, MEMORY[0x277CBFE18]);
                *(v245 + 32) = 0;
                *(v245 + 96) = v246;
                *(v245 + 104) = v247;
                *(v245 + 64) = v247;
                *(v245 + 72) = 0;
                if ((v470 & 0x8000000000000000) != 0)
                {
                  break;
                }

                v10 = &v470[v243];
                if (&v470[v243] >= v210[2])
                {
                  goto LABEL_116;
                }

                v248 = v247;
                v458 = v1[83];
                v249 = v1[80];
                v250 = &v417[*(v443 + 72) * v10];
                v251 = OUTLINED_FUNCTION_18_47();
                sub_237C9E294(v251, v252, &qword_27DEAD3A8, &unk_237F1CD90);
                OUTLINED_FUNCTION_5_94();
                sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0, &qword_237F036B0, v253);
                sub_237EF7FA0();

                sub_237C65484(v249, &qword_27DEAD3A8, &unk_237F1CD90);
                v14 = v458;
                sub_237EF7EA0();
                v1[55] = v246;
                v1[56] = v248;
                v1[52] = 0;
                if (v10 >= v486[2])
                {
                  goto LABEL_117;
                }

                WitnessTable = v486;
                v254 = v1[80];
                sub_237C9E294(v250, v254, &qword_27DEAD3A8, &unk_237F1CD90);
                sub_237EF7F90();
                sub_237C65484(v254, &qword_27DEAD3A8, &unk_237F1CD90);
                sub_237EF7EA0();
                __swift_destroy_boxed_opaque_existential_1(v1 + 52);
                ++v243;
                v237 = v483;
                v210 = v486;
                if (v483 == v243)
                {
                  goto LABEL_77;
                }
              }

              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
              goto LABEL_118;
            }

LABEL_77:
            sub_237C9E294(v1[83], v1[82], &qword_27DEAFD00, &unk_237F1DCE0);
            v255 = &v470[v237];
            if (__OFADD__(v470, v237))
            {
              goto LABEL_126;
            }

            WitnessTable = &unk_237F1CD90;
            if (v255 < v470)
            {
              goto LABEL_127;
            }

            if ((v470 & 0x8000000000000000) != 0)
            {
              goto LABEL_128;
            }

            v256 = v210[2];
            if (v256 < v470 || v256 < v255)
            {
              goto LABEL_129;
            }

            if (v255 != v470)
            {
              *&v492[0] = MEMORY[0x277D84F90];
              v10 = v237 & ~(v237 >> 63);
              v258 = *(v443 + 80);
              sub_237EF8260();
              sub_237C62DB0(0, v10, 0);
              if ((v237 & 0x8000000000000000) == 0)
              {
                v449 = v210 + ((v258 + 32) & ~v258);
                v14 = *&v492[0];
                v259 = v470;
                v260 = v483;
                while (v260)
                {
                  v484 = v260;
                  v261 = v1[100];
                  v262 = v1[80];
                  v263 = v1[79];
                  v264 = v1[78];
                  v471 = v259;
                  sub_237C9E294(v449 + *(v443 + 72) * v259, v262, &qword_27DEAD3A8, &unk_237F1CD90);
                  sub_237C9E294(v262, v263, &qword_27DEAD3A8, &unk_237F1CD90);
                  v265 = *(v413 + 48);
                  v266 = v14;
                  v267 = *(v263 + v265);
                  v268 = *(v432 + 48);
                  v269 = *v415;
                  (*v415)(v264, v263, v261);
                  v459 = v267;
                  *(v264 + v265) = v267;
                  v14 = v266;
                  v269(v264 + v268, v263 + v268, v261);
                  WitnessTable = &unk_237F1CD90;
                  sub_237C65484(v264, &qword_27DEAD3A8, &unk_237F1CD90);
                  sub_237C65484(v262, &qword_27DEAD3A8, &unk_237F1CD90);
                  *&v492[0] = v266;
                  v10 = v266[2];
                  v270 = v266[3];
                  if (v10 >= v270 >> 1)
                  {
                    v271 = OUTLINED_FUNCTION_7_78(v270);
                    sub_237C62DB0(v271, v10 + 1, 1);
                    v14 = *&v492[0];
                  }

                  v14[2] = v10 + 1;
                  v14[v10 + 4] = v459;
                  v259 = v471 + 1;
                  v260 = v484 - 1;
                  v1 = v430;
                  v210 = v486;
                  if (v484 == 1)
                  {

                    goto LABEL_93;
                  }
                }

LABEL_118:
                __break(1u);
                goto LABEL_119;
              }

              __break(1u);
              goto LABEL_132;
            }

            v14 = MEMORY[0x277D84F90];
LABEL_93:
            v272 = v1[82];
            sub_237EB07AC(v1[99], v272, v14, v1[70]);

            sub_237C65484(v272, &qword_27DEAFD00, &unk_237F1DCE0);
            sub_237EF6A90();
            v273 = OUTLINED_FUNCTION_49_2();
            v274(v273);
            v211 = v211 + *(v1 + 258);
            v209 = v404;
            v208 = v405 + 1;
            if (__OFADD__(v405, 1))
            {
              goto LABEL_130;
            }
          }

          if (__swift_getEnumTagSinglePayload(v363, 1, v369) == 1)
          {
            goto LABEL_138;
          }

          v275 = v1[99];
          *v363 = v34 * powf(v50, v381);
          v276 = *(v362 + 108);
          v277 = *(v275 + v276);
          v215 = __OFADD__(v277, 1);
          v278 = v277 + 1;
          v279 = v379;
          v280 = v410;
          if (v215)
          {
            goto LABEL_136;
          }

          *(v275 + v276) = v278;
          v281 = v368;
          v485 = *(v384 + 16);
          if (v485)
          {
            v282 = *(v430 + 792);
            v460 = v393[9];
            v472 = v393[8];
            v450 = v393[10];
            v418 = *v393;
            v422 = v393[1];
            v427 = v393[11];
            v377(*(v430 + 688), HIDWORD(v382), *(v430 + 672));
            sub_237EF68C0();
            v283 = OUTLINED_FUNCTION_49_2();
            v373(v283);
            v284 = swift_task_alloc();
            *(v284 + 16) = v472;
            *(v284 + 32) = v418;
            *(v284 + 48) = v460;
            *(v284 + 64) = v450;
            *(v284 + 80) = v427;
            *(v284 + 96) = v422;
            *(v284 + 112) = v282;
            sub_237EF8260();
            sub_237EF8260();
            sub_237EAFEA4(v384, v407, sub_237EB5634, v284);
            v286 = v285;

            v287 = sub_237EB0898(v286);
            LOBYTE(v284) = v288;

            if (v284)
            {
              goto LABEL_140;
            }

            sub_237D0FC4C(v381, *&v287, v289, v290, v291);
            v279 = v379;
          }

          else
          {
            v292 = 0;
            v287 = 0;
          }

          if (v388)
          {
            v423 = v287;
            v428 = v292;
            v293 = *(v430 + 920);
            v473 = *(v430 + 872);
            v294 = *(v430 + 688);
            v295 = *(v430 + 672);
            v377(v294, HIDWORD(v382), v295);

            sub_237EF68C0();
            (v373)(v294, v295);
            v296 = *v366;
            v297 = OUTLINED_FUNCTION_18_47();
            v296(v297);
            v298 = OUTLINED_FUNCTION_49_2();
            sub_237C9E294(v298, v299, &qword_27DEAD2C0, &qword_237F08F20);
            if (__swift_getEnumTagSinglePayload(v293, 1, v473) == 1)
            {
              goto LABEL_139;
            }

            sub_237C9498C(*(v430 + 920), v411, *(v430 + 760), v300, v301, v302, v303);
            v304 = *(v430 + 920);
            v305 = *(v430 + 872);
            v306 = *v365;
            (*v365)(*(v430 + 784), *(v430 + 760));
            (*v387)(v304, v305);
            v307 = v492[1];
            *(v430 + 368) = v492[0];
            *(v430 + 384) = v307;
            *(v430 + 400) = v492[2];
            if (v485)
            {
              v308 = *(v430 + 760);
              (v296)(*(v430 + 776), *(v430 + 792), v308);
              sub_237C94DB4(v384, v394, v308, v309, v310, v311, v312, v313, v347, v349, SHIDWORD(v349));
              v306(*(v430 + 776), *(v430 + 760));
              v314 = v492[1];
              *(v430 + 320) = v492[0];
              *(v430 + 336) = v314;
              *(v430 + 352) = v492[2];
              v315 = sub_237CAFFF0();
              sub_237C65484(v430 + 320, qword_27DEB6580, qword_237F1DD58);
              v474 = *&v315;
            }

            else
            {
              v474 = 0;
            }

            v316 = v211 / v405;
            v317 = *(v430 + 552);
            v318 = *(v430 + 544);
            memcpy(v492, (v430 + 16), sizeof(v492));
            v319 = *(v275 + v276);
            v320 = sub_237CAFFF0();
            sub_237C65484(v430 + 368, qword_27DEB6580, qword_237F1DD58);

            sub_237EB41BC(v319, v423, v485 == 0, v474, v485 == 0, v360, v316, v320);
            sub_237C5EE40(v318, v317);
            sub_237C5EE40(v318, v317);
            v280 = 0;
            v10 = v430;
            v279 = v379;
            v281 = v368;
            v292 = v428;
          }

          else
          {
            v10 = v430;
          }

          v14 = *(v10 + 664);
          if ((v292 & 1) == 0)
          {
            v410 = v280;
            v188 = v279;
            sub_237C65484(v14, &qword_27DEAFD00, &unk_237F1DCE0);
            v186 = v371;
            v189 = v281;
            v193 = HIDWORD(v361);
            if (v371 != v400)
            {
              continue;
            }

            goto LABEL_113;
          }

          goto LABEL_121;
        }
      }

      goto LABEL_135;
    }

LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

uint64_t sub_237EB3A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_237EF7E90();
  result = sub_237EF7E20();
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v9 = *(result + 40);

    return v9 != a2;
  }

  return result;
}

uint64_t sub_237EB3ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_237F03530;
  *(v16 + 32) = sub_237E5E170(a2, a3, a5, a10, a13);
  sub_237EF8260();
  sub_237EF7DE0();
}

uint64_t sub_237EB3BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v17[0] = a4;
  v17[1] = a5;
  v7 = sub_237EF7E90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  v11 = sub_237EF6B10();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7, v13);
  sub_237D4A7B4(v10, a2, v15);
  sub_237EF6950();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_237EB3D88@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21[0] = a4;
  v21[1] = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD5F0, &unk_237F03680);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v21 - v13;
  v15 = sub_237EF6B10();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237E5E170(a2, a3, v21[0], a7, a10);
  v19 = sub_237EF64B0();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v19);
  sub_237EF6990();
  sub_237EF6950();
  return (*(v16 + 8))(v18, v15);
}

double sub_237EB3F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24C8, &unk_237F16690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for LSTMFCN(0);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_237EF6B10();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  sub_237C96128(a3, v9);
  sub_237C962B0();
  sub_237EF6830();
  sub_237C96378(v9);
  v17 = *MEMORY[0x277D2CD58];
  v18 = sub_237EF64D0();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v18);
  sub_237EF6570();
  sub_237C65484(v6, &qword_27DEB24C8, &unk_237F16690);
  sub_237EF6A90();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v19(v16, v10);
  return v21[3];
}

uint64_t sub_237EB41BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, void (*a6)(void *), double a7, double a8)
{
  v15 = *(v8 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7D0, &unk_237F03CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237F04760;
  strcpy((inited + 32), "training_loss");
  *(inited + 46) = -4864;
  v17 = MEMORY[0x277D839F8];
  *(inited + 48) = a7;
  *(inited + 72) = v17;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x8000000237EFB8A0;
  *(inited + 120) = v17;
  *(inited + 96) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD7E0, &qword_237F03CE0);
  sub_237C758C4();
  v25 = sub_237EF8230();
  if ((a3 & 1) == 0)
  {
    v22 = v17;
    v21[0] = a2;
    sub_237E60F7C(v21, 0x69746164696C6176, 0xEF73736F6C5F6E6FLL);
  }

  if ((a5 & 1) == 0)
  {
    v22 = v17;
    v21[0] = a4;
    sub_237E60F7C(v21, 0xD000000000000013, 0x8000000237EFDDD0);
  }

  v21[0] = 0xD000000000000014;
  v21[1] = 0x8000000237F1DCE0;
  v21[2] = a1;
  v22 = v15;
  v23 = 0;
  v24 = v25;
  a6(v21);
}

uint64_t sub_237EB439C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, _DWORD *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237E5E354(v15, v16, v17, a2, v18, v19);
  if (v21)
  {
    (*(v12 + 16))(v14, a1, a2);
    v22 = sub_237EF85D0();
    v24 = v23;
    sub_237C84150();
    v25 = swift_allocError();
    *v26 = 0xD000000000000014;
    *(v26 + 8) = 0x8000000237F1DCE0;
    *(v26 + 16) = v22;
    *(v26 + 24) = v24;
    *(v26 + 32) = 3;
    result = swift_willThrow();
    *a9 = v25;
    return result;
  }

  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_237EB451C@<X0>(uint64_t *a3@<X8>)
{
  sub_237EF7E90();
  result = sub_237EF7E20();
  *a3 = result;
  return result;
}

unint64_t sub_237EB455C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_237C842E0(*a2, *a1);
  *a3 = result;
  return result;
}

void sub_237EB4590(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  sub_237E6A2DC();
  v6 = *a2;
  sub_237E6A31C(v4, *a2);
  *(v6 + 8 * v4 + 32) = v5;
  nullsub_1();
}

uint64_t sub_237EB45E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a3;
  v25 = a2;
  sub_237EF7E90();
  result = sub_237EF7E20();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v24 = a4;
  v15 = *(result + 32);

  result = sub_237EF7E20();
  if (*(result + 16) < 2uLL)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v23 = a5;
  v16 = *(result + 40);

  if (!__OFSUB__(a1, v15))
  {
    v21 = a6;
    v20[1] = a9;
    v20[2] = a10;
    v22 = a1 - v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    v17 = swift_allocObject();
    v20[3] = v20;
    *(v17 + 16) = xmmword_237F04760;
    *(v17 + 32) = a1;
    *(v17 + 40) = v16;
    MEMORY[0x28223BE20](v17);
    MEMORY[0x28223BE20](v18);
    sub_237EF8260();
    v19 = v21;
    sub_237EF7DE0();

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD08, &unk_237F1DCF0);
    *(v19 + *(result + 48)) = v22;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237EB47F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  v18 = a6;
  v34 = a9;
  v35 = a10;
  v36 = a11;
  v37 = a12;
  v38 = a13;
  v39 = a14;
  v40 = a15;
  v41 = a16;
  v42 = a6;
  v43 = a7;
  v44 = a1;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v21 = sub_237EF7E90();
  WitnessTable = swift_getWitnessTable();
  result = sub_237D14E4C(sub_237EB5968, v33, v21, MEMORY[0x277D84F78] + 8, WitnessTable);
  if (a8 < v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v18 == a8)
  {
    return result;
  }

  if ((a7 & 0x8000000000000000) == 0)
  {
    v48 = a8;
    while (v18 < a8)
    {
      if (a7)
      {
        v24 = 0;
        while (2)
        {
          v25 = v24++;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
          result = swift_initStackObject();
          v26 = 0;
          *(result + 16) = xmmword_237F04760;
          *(result + 32) = v18;
          *(result + 40) = v25;
          v27 = *(a4 + 16);
          v28 = 32;
          while (v28 != 48 && v27)
          {
            v29 = *(result + v28);
            v30 = *(a4 + v28);
            v31 = v29 * v30;
            if ((v29 * v30) >> 64 != (v29 * v30) >> 63)
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            v28 += 8;
            --v27;
            v32 = __OFADD__(v26, v31);
            v26 += v31;
            if (v32)
            {
              goto LABEL_19;
            }
          }

          *(a1 + 4 * v26) = 0;
          if (v24 != a7)
          {
            continue;
          }

          break;
        }
      }

      ++v18;
      a8 = v48;
      if (v18 == v48)
      {
        return result;
      }
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_237EB49D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  MEMORY[0x28223BE20](a1);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v20 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v39 = v24;
  v40 = v22;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  if (!v20)
  {
    return;
  }

  if (a6 < 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v25 = 0;
  v38 = a15;
  v37 = a14;
  v34 = a10;
  v46 = xmmword_237F04760;
  v35 = v20;
  v36 = v21;
  do
  {
    v45 = v25;
    v26 = v34;
    if (a6)
    {
      v27 = 0;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        inited = swift_initStackObject();
        *(inited + 16) = v46;
        v29 = v45;
        *(inited + 32) = v45;
        *(inited + 40) = v27;
        v30 = swift_initStackObject();
        *(v30 + 16) = v46;
        *(v30 + 32) = v29;
        *(v30 + 40) = v27;
        sub_237D16AC4();
        swift_setDeallocating();
        sub_237CE3484();
        sub_237EF8190();
        v31 = v47;
        v32 = sub_237D166DC(inited, v26);
        swift_setDeallocating();
        *(v36 + 4 * v32) = v31;
        ++v27;
      }

      while (a6 != v27);
    }

    v25 = v45 + 1;
  }

  while (v45 + 1 != v35);
}

uint64_t sub_237EB4C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v38 = a1;
  v35 = a2;
  v40 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB24C8, &unk_237F16690);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE3B8, &qword_237F08EB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v30 = sub_237EF6B10();
  v41 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE528, &qword_237F058D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v29 - v18;
  v31 = *(v20 + 56);
  v36 = *(v11 + 16);
  v36(v13, a2, v10, v17);
  v34 = sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0, &qword_237F036B0, MEMORY[0x277CBFD28]);
  v33 = sub_237D4AD7C;
  sub_237EF7F00();
  v32 = *(v11 + 8);
  v32(v13, v10);
  v21 = sub_237EF6720();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v21);
  sub_237CD67F4();
  sub_237C65484(v9, &qword_27DEAE3B8, &qword_237F08EB0);
  v22 = *(v41 + 8);
  v41 += 8;
  v23 = v30;
  v22(v15, v30);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFD00, &unk_237F1DCE0);
  (v36)(v13, v35 + *(v24 + 36), v10);
  sub_237EF7F00();
  v32(v13, v10);
  v25 = *MEMORY[0x277D2CD58];
  v26 = sub_237EF64D0();
  v27 = v39;
  (*(*(v26 - 8) + 104))(v39, v25, v26);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  sub_237EF6570();
  sub_237C65484(v27, &qword_27DEB24C8, &unk_237F16690);
  v22(v15, v23);
  return sub_237C65484(v19, &qword_27DEAE528, &qword_237F058D0);
}

uint64_t sub_237EB5094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C606BC;

  return TimeSeriesClassifier.fitted<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237EB5174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_237C5FFA4;

  return TimeSeriesClassifier.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v18, a6, a7);
}

void sub_237EB52FC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v17 = 0;
      MEMORY[0x2383E2E10](&v17, 8);
      v5 = (v17 * v2) >> 64;
      if (v2 > v17 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v17 * v2)
        {
          do
          {
            v17 = 0;
            MEMORY[0x2383E2E10](&v17, 8);
          }

          while (v6 > v17 * v2);
          v5 = (v17 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = *(v1 + 32 + 8 * v4);
        v10 = *(v1 + 32 + 8 * v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E6439C(v1, v11, v12, v13);
          v1 = v14;
        }

        v15 = *(v1 + 16);
        if (v4 >= v15)
        {
          goto LABEL_22;
        }

        *(v1 + 32 + 8 * v4) = v10;
        if (v7 >= v15)
        {
          goto LABEL_23;
        }

        *(v1 + 32 + 8 * v7) = v9;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
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
    __break(1u);
  }
}

void sub_237EB543C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8, &unk_237F1CD90);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (v6 >= 2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_22:
      sub_237E642D8(v5, v8, v9, v10);
      v5 = v19;
    }

    v11 = 0;
    do
    {
      v21 = 0;
      MEMORY[0x2383E2E10](&v21, 8);
      v12 = (v21 * v6) >> 64;
      if (v6 > v21 * v6)
      {
        v13 = -v6 % v6;
        if (v13 > v21 * v6)
        {
          do
          {
            v21 = 0;
            MEMORY[0x2383E2E10](&v21, 8);
          }

          while (v13 > v21 * v6);
          v12 = (v21 * v6) >> 64;
        }
      }

      v14 = v11 + v12;
      if (__OFADD__(v11, v12))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (v11 != v14)
      {
        v15 = *(v5 + 16);
        if (v11 >= v15)
        {
          goto LABEL_19;
        }

        v16 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
        v17 = *(v2 + 72);
        sub_237C9E294(v16 + v17 * v11, v4, &qword_27DEAD3A8, &unk_237F1CD90);
        if (v14 >= v15)
        {
          goto LABEL_20;
        }

        sub_237EB5770(v16 + v17 * v14, v16 + v17 * v11);
        if (v14 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        sub_237EB57E0(v4, v16 + v17 * v14);
      }

      ++v11;
    }

    while (v6-- > 2);
    *v20 = v5;
  }
}

uint64_t sub_237EB5688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EB56C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_237EB5704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237EB5770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8, &unk_237F1CD90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_237EB57E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3A8, &unk_237F1CD90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_3_100(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  result[4] = v56;
  result[5] = a51;
  result[6] = a56;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_68(unint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 6;
  STACK[0x250] = a1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_17_57()
{

  return swift_task_alloc();
}

uint64_t RobustScaler.quantileRange.getter@<X0>(uint64_t a1@<X8>)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t RobustScaler.quantileRange.setter(uint64_t a1)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t RobustScaler.init(quantileRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_237EF84E0();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t RobustScaler.fitted<A>(to:eventHandler:)@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v38 = a4;
  v7 = a1[2];
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v32 = v9;
  v33 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  OUTLINED_FUNCTION_1_1();
  v36 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_26();
  v37 = v15 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v31 - v21;
  v40 = v7;
  v41 = a2;
  v24 = a1[3];
  v23 = a1[4];
  v42 = v24;
  v43 = v23;
  v35 = v23;
  v34 = a1[5];
  v44 = v34;
  v45 = a3;
  v25 = v39;
  v26 = sub_237EF8760();
  v39 = v25;
  v46 = v26;
  sub_237EF8A60();
  swift_getWitnessTable();
  sub_237D10984();

  if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
  {
    (*(v32 + 8))(v12, v33);
    sub_237C84150();
    swift_allocError();
    *v27 = 0xD000000000000013;
    *(v27 + 8) = 0x8000000237F01970;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = 2;
    return swift_willThrow();
  }

  else
  {
    v29 = *(v36 + 32);
    v29(v22, v12, v7);
    sub_237EF84E0();
    OUTLINED_FUNCTION_11_11();
    sub_237EF9760();
    if ((sub_237D0510C() & 1) == 0)
    {
      sub_237D05198(0x6353747375626F52, 0xEC00000072656C61);
    }

    v30 = v37;
    v29(v37, v22, v7);
    return RobustScaler.Transformer.init(median:interQuartileRange:)(v30, v19, v7, v24, v35, v34, v38);
  }
}

uint64_t RobustScaler.Transformer.init(median:interQuartileRange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(*(a3 - 8) + 32);
  v13(a7, a1);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v14 = type metadata accessor for RobustScaler.Transformer(0, v16);
  return (v13)(a7 + *(v14 + 52), a2, a3);
}

uint64_t sub_237EB60AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  RobustScaler.fitted<A>(to:eventHandler:)(a7, a5, a6, a1);
  v8 = *(v7 + 8);

  return v8();
}

uint64_t RobustScaler.Transformer.applied(to:eventHandler:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  (*(v6 + 16))(a2, v12);
  RobustScaler.Transformer.median.getter(a1, v14);
  v15 = sub_237EF8380();
  v16 = *(v6 + 8);
  v17 = OUTLINED_FUNCTION_23_12();
  v16(v17);
  if (v15)
  {
    v18 = OUTLINED_FUNCTION_9_67();
    RobustScaler.Transformer.median.getter(v18, v19);
    OUTLINED_FUNCTION_11_11();
    sub_237EF9780();
    v20 = OUTLINED_FUNCTION_23_12();
    v16(v20);
  }

  RobustScaler.Transformer.interQuartileRange.getter(a1, v10);
  v21 = sub_237EF8380();
  result = (v16)(v10, v4);
  if (v21)
  {
    v23 = OUTLINED_FUNCTION_9_67();
    RobustScaler.Transformer.interQuartileRange.getter(v23, v24);
    v25 = sub_237EF8370();
    v26 = OUTLINED_FUNCTION_23_12();
    result = (v16)(v26);
    if ((v25 & 1) == 0)
    {
      v27 = OUTLINED_FUNCTION_9_67();
      RobustScaler.Transformer.interQuartileRange.getter(v27, v28);
      OUTLINED_FUNCTION_11_11();
      sub_237EF8340();
      v29 = OUTLINED_FUNCTION_23_12();
      return (v16)(v29);
    }
  }

  return result;
}

uint64_t static RobustScaler.Transformer.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_237EF8520())
  {
    v12[0] = a3;
    v12[1] = a4;
    v12[2] = a5;
    v12[3] = a6;
    type metadata accessor for RobustScaler.Transformer(0, v12);
    v10 = sub_237EF8520();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_237EB64C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E616964656DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000237F019E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_237EB658C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E616964656DLL;
  }
}

uint64_t sub_237EB65D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237EB64C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237EB660C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237EB6660(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

double RobustScaler.Transformer.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_237EF83E0();
  sub_237EF83E0();
  return result;
}

uint64_t RobustScaler.Transformer.hashValue.getter(uint64_t a1)
{
  sub_237EFA120();
  RobustScaler.Transformer.hash(into:)(v3, a1);
  return sub_237EFA170();
}

uint64_t sub_237EB6760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  RobustScaler.Transformer.applied(to:eventHandler:)(a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237EB67D4(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  RobustScaler.Transformer.hash(into:)(v4, a2);
  return sub_237EFA170();
}

uint64_t RobustScaler.Transformer.debugDescription.getter(uint64_t a1)
{
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD000000000000021, 0x8000000237F01990);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](0xD000000000000016, 0x8000000237F019C0);
  sub_237EF9CF0();
  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return 0;
}

uint64_t RobustScaler.Transformer.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 16);
  v14 = v13;
  v15 = v3;
  v16 = v12;
  type metadata accessor for RobustScaler.Transformer.CodingKeys(255, &v14);
  OUTLINED_FUNCTION_2_119();
  OUTLINED_FUNCTION_8_8();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_8();
  sub_237EFA1B0();
  LOBYTE(v14) = 0;
  OUTLINED_FUNCTION_9_3();
  v10 = v17;
  sub_237EF9A70();
  if (!v10)
  {
    LOBYTE(v14) = 1;
    OUTLINED_FUNCTION_9_3();
    sub_237EF9A70();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t RobustScaler.Transformer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a6;
  OUTLINED_FUNCTION_1_1();
  v46 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_26();
  v44 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v48 = &v41 - v16;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  type metadata accessor for RobustScaler.Transformer.CodingKeys(255, &v51);
  OUTLINED_FUNCTION_2_119();
  OUTLINED_FUNCTION_8_8();
  v50 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v45 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v47 = a2;
  v51 = a2;
  v52 = a3;
  v49 = a4;
  v53 = a4;
  v54 = a5;
  v23 = type metadata accessor for RobustScaler.Transformer(0, &v51);
  OUTLINED_FUNCTION_1();
  v42 = v24;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v25);
  v27 = &v41 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_8_8();
  v28 = v55;
  sub_237EFA190();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v27;
  v55 = v23;
  v30 = v46;
  LOBYTE(v51) = 0;
  v31 = v47;
  OUTLINED_FUNCTION_7_9();
  v32 = *(v30 + 32);
  v41 = v29;
  v33 = v48;
  v48 = v32;
  (v32)(v29, v33, v31);
  LOBYTE(v51) = 1;
  v34 = v44;
  OUTLINED_FUNCTION_7_9();
  v35 = OUTLINED_FUNCTION_6_8();
  v36(v35);
  v37 = v55;
  v38 = v41;
  (v48)(&v41[*(v55 + 52)], v34, v31);
  v39 = v42;
  (*(v42 + 16))(v43, v38, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v39 + 8))(v38, v37);
}

uint64_t sub_237EB6E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  v44 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v43 = v5;
  MEMORY[0x28223BE20](v6);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v41 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v45 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v47 = &v41 - v14;
  v15 = *(a1 + 16);
  OUTLINED_FUNCTION_1_1();
  v17 = MEMORY[0x28223BE20](v16);
  (*(v19 + 16))(&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + *(a1 + 52), v15, v17);
  sub_237C65348();
  OUTLINED_FUNCTION_17_16();
  v20 = 1.0 / __dst[0];
  OUTLINED_FUNCTION_11_11();
  sub_237EF8330();
  OUTLINED_FUNCTION_17_16();
  v21 = v47;
  sub_237CFA100(v20, -__dst[0]);
  v22 = *(v9 + 16);
  v24 = v45;
  v23 = v46;
  v22(v45, v21, v46);
  v25 = v48;
  sub_237EF7810();
  v26 = type metadata accessor for CoreMLPackage(0);
  v27 = v42;
  v28 = v42 + *(v26 + 24);
  *(v28 + 80) = 0;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *v28 = 0u;
  v22(v27, v24, v23);
  memcpy(__dst, v28, 0x58uLL);
  sub_237C9BD20(__dst);
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0u;
  *(v28 + 48) = 0u;
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0;
  v29 = v43;
  v30 = v44;
  (*(v43 + 16))(v27 + *(v26 + 20), v25, v44);
  v31 = sub_237E34060();
  v33 = v32;
  v34 = sub_237EF7780();
  v36 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v36;
  sub_237C91098(v31, v33, 0xD00000000000001ALL, 0x8000000237EFB6D0, isUniquelyReferenced_nonNull_native);
  *v36 = v49;
  v34(v50, 0);
  (*(v29 + 8))(v48, v30);
  v38 = *(v41 + 8);
  v39 = v46;
  v38(v45, v46);
  return (v38)(v47, v39);
}

uint64_t sub_237EB7274(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return __swift_getEnumTagSinglePayload(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return __swift_getEnumTagSinglePayload(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_237EB73C4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_237EB75DC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_119()
{

  return swift_getWitnessTable();
}

void *sub_237EB7750@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for BoostedTreeRegressor(0, *(a1 + a2 - 8), a2, a4);
  BoostedTreeRegressor.configuration.getter(v5, __src);
  return memcpy(a3, __src, 0x58uLL);
}

void (*BoostedTreeRegressor.configuration.modify(void *a1, uint64_t a2))(const void **a1)
{
  v5 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v5;
  v5[11] = a2;
  v5[12] = v2;
  OUTLINED_FUNCTION_8_87(v5, *(a2 + 32));
  return sub_237EB7860;
}

void sub_237EB7860(const void **a1)
{
  v1 = *a1;
  memcpy((*(*a1 + 12) + *(*(*a1 + 11) + 32)), *a1, 0x58uLL);

  free(v1);
}

uint64_t BoostedTreeRegressor.annotationColumnID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_237EF62C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BoostedTreeRegressor.annotationColumnID.setter(uint64_t a1)
{
  v3 = sub_237EF62C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BoostedTreeRegressor.featureColumnNames.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);

  *(v2 + v4) = a1;
  return result;
}

void *BoostedTreeRegressor.init(annotationColumnName:featureColumnNames:configuration:)@<X0>(uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_237EF62D0();
  v12 = type metadata accessor for BoostedTreeRegressor(0, a5, v10, v11);
  *(a6 + *(v12 + 28)) = a3;
  v13 = (a6 + *(v12 + 32));

  return memcpy(v13, a4, 0x58uLL);
}

uint64_t BoostedTreeRegressor.fitted(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEADEA8, &unk_237F04C00);
  v7[9] = OUTLINED_FUNCTION_27_0();
  v8 = sub_237EF61A0();
  v7[10] = v8;
  OUTLINED_FUNCTION_6_1(v8);
  v7[11] = v9;
  v7[12] = OUTLINED_FUNCTION_27_0();
  v10 = sub_237EF6310();
  v7[13] = v10;
  OUTLINED_FUNCTION_6_1(v10);
  v7[14] = v11;
  v7[15] = OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](sub_237EB7BD0, 0, 0);
}

uint64_t sub_237EB7BD0()
{
  v92 = v0;
  v1 = v0[3];
  v2 = *(v0[8] + *(v0[7] + 28));
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  sub_237CD1854(sub_237EB9050, v3, v2, v4, v5, v6, v7, v8, v43, v45, v47, v49, v51, v53, v55, v57, v60, v61, v64, v67, v70, v72, v74, v76, v79, v80, v81, v82, __dst[0], __dst[1]);
  v10 = v9;

  OUTLINED_FUNCTION_4_94();
  sub_237DDE9AC(v11, v12, 0x8000000237F1E130, v13);
  if (__dst[1])
  {
    v75 = __dst[0];
    v77 = __dst[2];
    v14 = *(v0[7] + 16);
    sub_237EF62C0();
    v15 = sub_237EF62B0();
    sub_237E87894(v15, v16, 0xD000000000000014, 0x8000000237F1E130);
    v58 = v14;
    v71 = __dst[1];
    v73 = __dst[3];
    v22 = v0[14];
    v21 = v0[15];
    v23 = v0[9];
    v65 = v0[13];
    v68 = v0[10];
    v62 = v0[4];

    sub_237EF62B0();
    sub_237EF61D0();

    v24 = sub_237DE15C0();
    v25 = *(v22 + 8);
    v25(v21, v65);
    sub_237C89E7C(v62, v23);
    if (__swift_getEnumTagSinglePayload(v23, 1, v68) == 1)
    {
      v26 = v0[6];
      v27 = v0[7];
      v28 = v0[5];
      sub_237C89EEC(v0[9]);
      OUTLINED_FUNCTION_8_87(__dst, *(v27 + 32));
      v88 = v75;
      v89 = v71;
      v90 = v77;
      v91 = v73;
      BaseTreeRegressor.fitted(features:annotations:eventHandler:)(&v88, v28, v26, &v84);

      v29 = v85;
      v78 = v84;
      v30 = v86;
    }

    else
    {
      (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
      OUTLINED_FUNCTION_4_94();
      sub_237DDE9AC(v35, v36, 0x8000000237F1E130, v37);
      v38 = __dst[1];
      v69 = __dst[3];
      v63 = __dst[0];
      v66 = __dst[2];
      OUTLINED_FUNCTION_4_94();
      sub_237E871F4(v39, v40, 0x8000000237F1E130, v58);
      v41 = v0[15];
      v56 = v0[10];
      v59 = v0[12];
      v46 = v0[8];
      v48 = v0[13];
      v44 = v0[7];
      v52 = v0[6];
      v54 = v0[11];
      v50 = v0[5];
      sub_237EF62B0();
      sub_237EF61D0();

      v42 = sub_237DE15C0();
      v25(v41, v48);
      memcpy(__dst, (v46 + *(v44 + 32)), sizeof(__dst));
      v84 = v75;
      v85 = v71;
      LOBYTE(v86) = v77;
      v87 = v73;
      v88 = v63;
      v89 = v38;
      v90 = v66;
      v91 = v69;
      BaseTreeRegressor.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:eventHandler:)(&v84, v24, &v88, v42, v50, v52, &v80);
      (*(v54 + 8))(v59, v56);

      v29 = v81;
      v78 = v80;
      v30 = v82;
    }

    v31 = sub_237EF62B0();
    v33 = v32;
    if ((sub_237D0510C() & 1) == 0)
    {
      sub_237D05198(0xD000000000000012, 0x8000000237F00840);
    }

    v34 = v0[2];

    *v34 = v31;
    v34[1] = v33;
    v34[2] = v10;
    v34[3] = v78;
    v34[4] = v29;
    v34[5] = v30;

    OUTLINED_FUNCTION_3_0();
  }

  else
  {

    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    v19 = swift_allocError();
    *v20 = 0xD000000000000014;
    v20[1] = 0x8000000237F1E130;
    v20[2] = 0xD000000000000064;
    v20[3] = 0x8000000237EFCB10;
    OUTLINED_FUNCTION_5_21(v19, v20);
    swift_willThrow();

    OUTLINED_FUNCTION_3_0();
  }

  return v17();
}

void *BoostedTreeRegressor.decode(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  result = sub_237E50E6C(a1, __dst);
  if (!v4)
  {
    v9 = __dst[1];
    v15 = __dst[0];
    v11 = __dst[2];
    v10 = __dst[3];
    v13 = __dst[4];
    v12 = __dst[5];

    sub_237E87DE0(0x74656D5F6C617665, 0xEB00000000636972, 1702063474, 0xE400000000000000);
    sub_237E87DE0(0x74656D5F6C617665, 0xEB00000000636972, 6644077, 0xE300000000000000);

    memcpy(__dst, (v5 + *(a2 + 32)), sizeof(__dst));
    result = sub_237CCA49C(v13, v10, 0);
    *a3 = v15;
    a3[1] = v9;
    a3[2] = v11;
    a3[3] = v10;
    a3[4] = v13;
    a3[5] = v12;
  }

  return result;
}

void (*sub_237EB83D8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BoostedTreeRegressor.annotationColumnID.modify();
  return sub_237C803C0;
}

uint64_t sub_237EB8434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_237C90C10;

  return BoostedTreeRegressor.fitted(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t BoostedTreeRegressor.makeTransformer()@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  OUTLINED_FUNCTION_8_87(__src, *(a2 + 32));
  type metadata accessor for XGBooster();
  swift_allocObject();
  v3 = sub_237E88668(0, 0);
  memcpy(__dst, __src, sizeof(__dst));
  sub_237CCA49C(v3, 0, 1);
  sub_237EF62C0();
  result = sub_237EF62B0();
  a1[4] = v3;
  a1[5] = 0;
  a1[2] = MEMORY[0x277D84F90];
  a1[3] = 0;
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t BoostedTreeRegressor.update(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_237EF6310();
  v6[10] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v6[11] = v8;
  v6[12] = OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](sub_237EB86EC, 0, 0);
}

uint64_t sub_237EB86EC()
{
  v42 = v0;
  v1 = v0[4];
  v4 = *(v1 + 24);
  v2 = (v1 + 24);
  v3 = v4;
  if (!v4)
  {
    v14 = sub_237EB8AB4(v0[5], v0[8]);
    v15 = v0[4];

    v3 = 0;
    *(v15 + 16) = v14;
    v16 = (v14 + 56);
    v17 = *(v14 + 16) + 1;
    while (--v17)
    {
      v18 = *v16;
      v19 = *(v16 - 1);
      v16 += 32;
      if (v18 >= 4)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      v21 = __OFADD__(v3, v20);
      v3 += v20;
      if (v21)
      {
        __break(1u);
        break;
      }
    }

    *v2 = v3;
  }

  OUTLINED_FUNCTION_4_94();
  sub_237DDE9AC(v5, v6, 0x8000000237F1E130, v7);
  v8 = v36;
  v9 = v38;
  if (!v36)
  {

    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v22 = 0xD000000000000014;
    *(v22 + 8) = 0x8000000237F1E130;
    *(v22 + 16) = 0xD000000000000064;
    *(v22 + 24) = 0x8000000237EFCB10;
    v23 = 4;
LABEL_17:
    *(v22 + 32) = v23;
    swift_willThrow();

    OUTLINED_FUNCTION_3_0();
    goto LABEL_18;
  }

  v10 = v35;
  if (v36 != v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    result = swift_allocObject();
    *(result + 16) = xmmword_237F04760;
    *(result + 32) = v10;
    if ((v10 * v8) >> 64 != (v10 * v8) >> 63)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    *(result + 40) = v10 * v8;

    sub_237EF9330();

    v35 = 0x6465746365707845;
    v36 = 0xE900000000000020;
    v0[2] = v3;
    v26 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v26);

    MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFBD50);
    v0[3] = v8;
    v27 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v27);

    v28 = v35;
    v29 = v36;
    sub_237C84150();
    OUTLINED_FUNCTION_3_23();
    swift_allocError();
    *v22 = v25;
    *(v22 + 8) = v28;
    *(v22 + 16) = v29;
    *(v22 + 24) = 0;
    v23 = 6;
    goto LABEL_17;
  }

  v31 = v37;
  v11 = v0[11];
  v12 = v0[12];
  v34 = v0[7];
  v32 = v0[10];
  v33 = v0[6];
  OUTLINED_FUNCTION_8_87(&v35, *(v0[8] + 32));
  v39[0] = v10;
  v39[1] = v3;
  v40 = v31;
  v41 = v9;
  sub_237EF62C0();
  sub_237EF62B0();
  sub_237EF61D0();

  v13 = sub_237DE15C0();
  (*(v11 + 8))(v12, v32);
  BaseTreeRegressor.update(_:features:annotations:eventHandler:)(v2, v39, v13, v33, v34);

  OUTLINED_FUNCTION_3_0();
LABEL_18:

  return v30();
}

void sub_237EB8AF8(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v32 = a3;
  v6 = sub_237EF6310();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = *a1;
  v10 = a1[1];
  OUTLINED_FUNCTION_28_6();
  sub_237EF60D0();
  if (v12)
  {
    sub_237CD1200();
    OUTLINED_FUNCTION_3_23();
    v13 = swift_allocError();
    *v14 = 0xD000000000000014;
    *(v14 + 8) = 0x8000000237F1E130;
    *(v14 + 16) = v11;
    *(v14 + 24) = v10;
    v15 = v31;
    *(v14 + 32) = v30;
    *(v14 + 48) = v15;
    *(v14 + 64) = 0;
    swift_willThrow();
    *a2 = v13;
    sub_237EF8260();
  }

  else
  {
    v28 = v6;
    OUTLINED_FUNCTION_28_6();
    sub_237EF61D0();
    OUTLINED_FUNCTION_4_94();
    sub_237E0BB50(v16, v17, 0x8000000237F1E130);
    if (v3)
    {
      *a2 = v3;
    }

    else if (v19)
    {
      v22 = v32;
      *v32 = v18;
      v22[1] = v19;
      v22[2] = v20;
      *(v22 + 24) = v21;
    }

    else
    {
      *&v30 = 0;
      *(&v30 + 1) = 0xE000000000000000;
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD000000000000030, 0x8000000237EFCE60);
      OUTLINED_FUNCTION_28_6();
      sub_237EF61D0();
      sub_237EF62F0();
      (*(v29 + 8))(v8, v28);
      v23 = sub_237EFA220();
      MEMORY[0x2383E0710](v23);

      MEMORY[0x2383E0710](0x756C6F63206E6920, 0xEB00000000206E6DLL);
      v24 = OUTLINED_FUNCTION_28_6();
      MEMORY[0x2383E0710](v24);
      v25 = v30;
      sub_237C84150();
      OUTLINED_FUNCTION_3_23();
      v26 = swift_allocError();
      *v27 = 0xD000000000000014;
      *(v27 + 8) = 0x8000000237F1E130;
      *(v27 + 16) = v25;
      OUTLINED_FUNCTION_5_21(v26, v27);
      swift_willThrow();
      *a2 = v26;
    }
  }
}

uint64_t sub_237EB8E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237CD5B14;

  return BoostedTreeRegressor.update(_:with:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t sub_237EB8F0C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_237EB8F48(uint64_t a1)
{
  sub_237EF62C0();
  if (v1 <= 0x3F)
  {
    sub_237CD4FCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *OUTLINED_FUNCTION_8_87@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memcpy(a1, (v2 + a2), 0x58uLL);
}

uint64_t type metadata accessor for SpatialConvolution(uint64_t a1)
{
  result = qword_27DEB6798;
  if (!qword_27DEB6798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237EB9100(uint64_t a1)
{
  result = sub_237EF6940();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237EB917C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF6A8, &qword_237F08EB8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  type metadata accessor for SpatialConvolution(0);
  sub_237EF6940();
  v22 = v2;
  sub_237EF6850();
  sub_237EF6A40();
  v10 = sub_237EF6430();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  sub_237EF6970();
  v11 = *(v7 + 8);
  v12 = OUTLINED_FUNCTION_12_11();
  v11(v12);
  v13 = *(v7 + 32);
  v14 = OUTLINED_FUNCTION_3_101();
  v13(v14);
  sub_237EF6960();
  v15 = OUTLINED_FUNCTION_12_11();
  v11(v15);
  v16 = OUTLINED_FUNCTION_3_101();
  v13(v16);
  sub_237EF6850();
  v17 = OUTLINED_FUNCTION_12_11();
  v11(v17);
  v18 = OUTLINED_FUNCTION_3_101();
  v13(v18);
  sub_237EF6960();
  v19 = OUTLINED_FUNCTION_12_11();
  return (v11)(v19);
}

uint64_t sub_237EB93E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74756C6F766E6F63 && a2 == 0xEC000000316E6F69;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74756C6F766E6F63 && a2 == 0xEC000000326E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_237EF9D40();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_237EB94F8(char a1)
{
  if (a1)
  {
    return 0x74756C6F766E6F63;
  }

  else
  {
    return 0x656C616373;
  }
}

uint64_t sub_237EB955C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB67D0, &qword_237F1E348);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EB9D88();
  sub_237EFA1B0();
  v19[1] = 0;
  sub_237EF9A50();
  if (!v2)
  {
    v11 = type metadata accessor for SpatialConvolution(0);
    v12 = *(v11 + 20);
    v19[0] = 1;
    sub_237EF6940();
    OUTLINED_FUNCTION_1_118();
    sub_237EB9E9C(v13, v14, MEMORY[0x277D2CE88]);
    OUTLINED_FUNCTION_4_95(v3 + v12, v19);
    v15 = *(v11 + 24);
    v18 = 2;
    OUTLINED_FUNCTION_4_95(v3 + v15, &v18);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_237EB9710@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v39 = sub_237EF6940();
  OUTLINED_FUNCTION_1();
  v37 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB67C0, &qword_237F1E340);
  OUTLINED_FUNCTION_1();
  v35 = v12;
  v36 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v38 = type metadata accessor for SpatialConvolution(0);
  MEMORY[0x28223BE20](v38);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EB9D88();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v7;
  v42 = 0;
  *v16 = sub_237EF9950();
  v41 = 1;
  OUTLINED_FUNCTION_1_118();
  v19 = sub_237EB9E9C(v17, v18, MEMORY[0x277D2CE90]);
  v20 = v10;
  v21 = v39;
  v32 = v19;
  sub_237EF9970();
  v22 = v38;
  v23 = *(v38 + 20);
  v24 = *(v37 + 32);
  v31 = v16;
  v25 = v20;
  v26 = v24;
  v24(v16 + v23, v25, v21);
  v40 = 2;
  v27 = v33;
  sub_237EF9970();
  (*(v35 + 8))(v14, v36);
  v28 = v31;
  v26(v31 + *(v22 + 24), v27, v21);
  sub_237EB9DDC(v28, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_237EB9E40(v28);
}

uint64_t sub_237EB9ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237EB93E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237EB9B04(uint64_t a1)
{
  v2 = sub_237EB9D88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237EB9B40(uint64_t a1)
{
  v2 = sub_237EB9D88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237EB9BB0(uint64_t a1, uint64_t a2)
{
  sub_237EB9E9C(&qword_27DEB2630, type metadata accessor for SpatialConvolution, &unk_237F1E2D8);

  return sub_237EF6890();
}

uint64_t sub_237EB9C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_237EB9E9C(&qword_27DEB2630, type metadata accessor for SpatialConvolution, &unk_237F1E2D8);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

unint64_t sub_237EB9D88()
{
  result = qword_27DEB67C8;
  if (!qword_27DEB67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB67C8);
  }

  return result;
}

uint64_t sub_237EB9DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialConvolution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237EB9E40(uint64_t a1)
{
  v2 = type metadata accessor for SpatialConvolution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237EB9E9C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for SpatialConvolution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237EB9FC4()
{
  result = qword_27DEB67D8;
  if (!qword_27DEB67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB67D8);
  }

  return result;
}

unint64_t sub_237EBA01C()
{
  result = qword_27DEB67E0;
  if (!qword_27DEB67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB67E0);
  }

  return result;
}

unint64_t sub_237EBA074()
{
  result = qword_27DEB67E8;
  if (!qword_27DEB67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB67E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_95(uint64_t a1, uint64_t a2)
{

  return sub_237EF9A70();
}

CVPixelBufferRef sub_237EBA114()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v2 = [v1 imageByApplyingCGOrientation_];
  [v2 extent];
  Width = CGRectGetWidth(v23);
  [v2 extent];
  Height = CGRectGetHeight(v24);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB67F0, &qword_237F1E468);
  inited = swift_initStackObject();
  v7 = MEMORY[0x277CC4D70];
  *(inited + 16) = xmmword_237F04760;
  v8 = *v7;
  v9 = *MEMORY[0x277CBED28];
  *(inited + 32) = *v7;
  *(inited + 40) = v9;
  v10 = *MEMORY[0x277CC4D68];
  *(inited + 48) = *MEMORY[0x277CC4D68];
  *(inited + 56) = v9;
  type metadata accessor for CFString(0);
  v11 = v9;
  v12 = v8;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB67F8, &unk_237F1E470);
  sub_237EBA408();
  sub_237EF8230();
  v14 = sub_237EF8200();

  v21 = 0;
  if (Width <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (Height >= 9.22337204e18)
  {
    goto LABEL_16;
  }

  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x20u, v14, &v21))
  {

    v15 = 0;
    v16 = v21;
LABEL_11:

    return v15;
  }

  result = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  if (v21)
  {
    v18 = result;
    v19 = v21;
    v20 = DeviceRGB;
    [(__CVBuffer *)v18 render:v2 toCVPixelBuffer:v19 bounds:v20 colorSpace:0.0, 0.0, Width, Height];

    v15 = v21;
    v16 = v21;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t sub_237EBA408()
{
  result = qword_27DEAD1E8;
  if (!qword_27DEAD1E8)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEAD1E8);
  }

  return result;
}

uint64_t sub_237EBA460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a1;
  v6[6] = a2;
  return sub_237D14E4C(sub_237EBA698, v6, a3, a4, a5);
}

void sub_237EBA4A4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = a3[2];
  if (v10)
  {
    sub_237EF8260();
    v11 = sub_237EF89B0();
    *(v11 + 16) = v10;
    bzero((v11 + 32), 8 * v10);
    v12 = a3;
  }

  else
  {
    v11 = sub_237EF89B0();
    *(v11 + 16) = 1;
    *(v11 + 32) = 0;
    v12 = &unk_284ACE3D0;
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v12;
  *(a5 + 40) = v11;
  *(a5 + 48) = 0;
}

uint64_t sub_237EBA560(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_237EF8260();
  sub_237EF8260();
  sub_237EBA4A4(a1, a2, a3, a4, v19);
  a5(v19);
  v16 = type metadata accessor for ScalarSequence(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  return (*(*(v16 - 8) + 8))(v19, v16);
}

uint64_t sub_237EBA6E0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = (v1 + 32);
  v4 = 1;
  while (1)
  {
    v5 = *v3++;
    result = v4 * v5;
    if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
    {
      break;
    }

    v4 = result;
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237EBA724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 48) == 1)
  {
    v5 = OUTLINED_FUNCTION_0_98();
    goto LABEL_10;
  }

  v9 = v2;
  sub_237EF8260();
  sub_237E98F20();
  v10 = *(v2 + 16);
  if (!sub_237D22324(0, v10))
  {
    if (*(v10 + 16))
    {
      v16 = *(a1 + 16);
      sub_237D16740();

      v5 = a2;
      v6 = 0;
      v7 = 1;
      v8 = v16;
    }

    else
    {

      v17 = *(a1 + 16);
      (*(*(v17 - 8) + 16))(a2, *v9, v17);
      v5 = a2;
      v6 = 0;
      v7 = 1;
      v8 = v17;
    }

LABEL_10:

    return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  v11 = OUTLINED_FUNCTION_0_98();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_237EBA87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EBA8B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_237EBA8F8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double LinearRegressor.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_237F15C20;
  *(a1 + 16) = 25;
  result = 1.0;
  *(a1 + 24) = xmmword_237F15C30;
  *(a1 + 40) = 10;
  *(a1 + 48) = 1;
  return result;
}

void LinearRegressor.configuration.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  v7 = *(v1 + 49);
  sub_237C65348();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  OUTLINED_FUNCTION_28_33(v6 & 1);
  *(a1 + 49) = v7;
}

double sub_237EBAA1C@<D0>(uint64_t a1@<X8>)
{
  LinearRegressor.configuration.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

unint64_t LinearRegressor.configuration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = *(a1 + 48);
  v8 = *(a1 + 49);
  result = sub_237C65348();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = 10;
  *(v1 + 48) = v7 & 1;
  *(v1 + 49) = v8;
  return result;
}

void (*LinearRegressor.configuration.modify(void *a1, uint64_t a2))(uint64_t **a1)
{
  v5 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v5;
  v5[7] = a2;
  v5[8] = v2;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + 48);
  v12 = *(v2 + 49);
  sub_237C65348();
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  v5[4] = v10;
  v5[5] = 10;
  *(v5 + 48) = v11 & 1;
  *(v5 + 49) = v12;
  return sub_237EBABAC;
}

void sub_237EBABAC(uint64_t **a1)
{
  v1 = *a1;
  LinearRegressor.configuration.setter(*a1);

  free(v1);
}

void LinearRegressor.init(configuration:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  sub_237C65348();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  OUTLINED_FUNCTION_28_33(v6 & 1);
  *(a2 + 49) = v7;
}

uint64_t LinearRegressor.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  OUTLINED_FUNCTION_17_58();
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237EBAC84()
{
  v2 = OUTLINED_FUNCTION_35_23();
  OUTLINED_FUNCTION_16_57(v2);
  swift_getKeyPath();

  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_22_43(v3);
  v4 = OUTLINED_FUNCTION_18_48();
  OUTLINED_FUNCTION_34_19(v4, v5, v6, v7, v8, v9, v10, v11);

  OUTLINED_FUNCTION_32_32();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_65(WitnessTable, v13, v14, v15, v16, v17, v18, v19, v79, v84, v88, v92, v95, v98, v101, v105);
  if (v0)
  {

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_68_2();

    __asm { BRAA            X1, X16 }
  }

  v22 = OUTLINED_FUNCTION_21_52();
  v30 = OUTLINED_FUNCTION_14_67(v22, v23, v24, v25, v26, v27, v28, v29, v80, v85, v89, v93, v96, v99, v102, v106, v108, v109, v110, v111);
  OUTLINED_FUNCTION_13_55(v30, v31, v32, v33, v34, v35, v36, v37, v81);
  swift_getKeyPath();

  v38 = swift_task_alloc();
  OUTLINED_FUNCTION_30_42(v38);
  v39 = OUTLINED_FUNCTION_15_52();
  v47 = OUTLINED_FUNCTION_33_26(v39, v40, v41, v42, v43, v44, v45, v46);

  v1[21] = v47;
  v48 = swift_task_alloc();
  v56 = OUTLINED_FUNCTION_19_50(v48, v49, v50, v51, v52, v53, v54, v55, v82, v86, v90);
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  v57 = OUTLINED_FUNCTION_15_52();
  sub_237C9339C(v57, v58, v56, v59, MEMORY[0x277D84A98], v60);
  v1[30] = v61;

  OUTLINED_FUNCTION_3_102(v62, v63, v64, v65, v66, v67, v68, v69, v83, v87, v91, v94, v97, v100, v103, v104, v107);
  v70 = swift_task_alloc();
  v1[31] = v70;
  *v70 = v1;
  v70[1] = sub_237EBAEEC;
  OUTLINED_FUNCTION_68_2();

  return sub_237EBB088(v71, v72, v73, v74, v75, v76);
}

uint64_t sub_237EBAEEC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_6_2();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();

    return v10();
  }
}

uint64_t sub_237EBB014()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237EBB088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 72) = a1;
  *(v6 + 112) = *a2;
  *(v6 + 66) = *(a2 + 16);
  *(v6 + 128) = *(a2 + 24);
  OUTLINED_FUNCTION_17_58();
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237EBB0D0()
{
  v11 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 66);
  v6 = *(v0 + 112);
  v7 = v2;
  v8 = v1;
  BaseLinearRegressor.fitted(features:annotations:eventHandler:)();
  memcpy(v10, __src, 0x51uLL);
  sub_237D5E9F4(v10, v9);
  if ((sub_237D0510C() & 1) == 0)
  {
    sub_237D05198(0x65527261656E694CLL, 0xEF726F7373657267);
  }

  memcpy(*(v0 + 72), v9, 0x51uLL);
  OUTLINED_FUNCTION_10_3();

  return v3();
}

uint64_t LinearRegressor.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[36] = v13;
  v8[37] = v14;
  v8[34] = a7;
  v8[35] = a8;
  v8[32] = a5;
  v8[33] = a6;
  v8[30] = a3;
  v8[31] = a4;
  v8[28] = a1;
  v8[29] = a2;
  OUTLINED_FUNCTION_17_58();
  v9 = OUTLINED_FUNCTION_6_2();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237EBB224()
{
  v90 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v0 + 264);
  v6 = swift_task_alloc();
  v7 = v5[2];
  *v6 = v7;
  v6[1] = v3;
  v6[2] = v4;
  v8 = v5[3];
  v6[3] = v8;
  v9 = v5[4];
  v6[4] = v9;
  v6[5] = v2;
  v85 = v8;
  v6[6] = v1;
  KeyPath = swift_getKeyPath();

  v11 = swift_task_alloc();
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v9;
  v11[5] = v2;
  v11[6] = v1;
  v11[7] = KeyPath;
  v12 = sub_237EF7E90();
  v13 = OUTLINED_FUNCTION_18_48();
  v18 = sub_237C8FFEC(v13, v14, v3, v12, v15, v2, v16, v17);

  *(v0 + 192) = v18;
  v19 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v83 = v7;
  sub_237EDB96C(&v86, v0 + 192, v19, v7, WitnessTable, v85, v9);
  v22 = *(v0 + 288);
  v21 = *(v0 + 296);
  v79 = v19;
  v80 = WitnessTable;
  v24 = *(v0 + 272);
  v23 = *(v0 + 280);

  v71 = v86;
  v73 = v87;
  v72 = v88;
  v84 = v89;
  *(v0 + 304) = v89;
  v25 = swift_task_alloc();
  *v25 = v83;
  v25[1] = v24;
  v25[2] = v23;
  v25[3] = v85;
  v25[4] = v9;
  v25[5] = v22;
  v25[6] = v21;
  v76 = v12;
  v26 = swift_getKeyPath();

  v27 = swift_task_alloc();
  v27[2] = v24;
  v27[3] = v23;
  v27[4] = v9;
  v27[5] = v22;
  v27[6] = v21;
  v27[7] = v26;
  v74 = sub_237C8FFEC(sub_237E86944, v27, v24, v83, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v28);

  *(v0 + 200) = v74;
  v29 = swift_task_alloc();
  v29[2] = v83;
  v29[3] = v24;
  v29[4] = v23;
  v29[5] = v85;
  v29[6] = v9;
  v29[7] = v22;
  v29[8] = v21;
  v30 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  v31 = OUTLINED_FUNCTION_15_52();
  v70 = v32;
  sub_237C9339C(v31, v33, v30, v34, MEMORY[0x277D84A98], v32);
  v82 = v35;
  *(v0 + 312) = v35;

  v36 = swift_task_alloc();
  *v36 = v83;
  v36[1] = v24;
  v36[2] = v23;
  v36[3] = v85;
  v36[4] = v9;
  v36[5] = v22;
  v36[6] = v21;
  v37 = swift_getKeyPath();

  v38 = swift_task_alloc();
  v38[2] = v24;
  v38[3] = v23;
  v38[4] = v9;
  v38[5] = v22;
  v38[6] = v21;
  v38[7] = v37;
  v39 = OUTLINED_FUNCTION_18_48();
  v43 = sub_237C8FFEC(v39, v40, v41, v76, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v42);

  *(v0 + 208) = v43;
  sub_237EDB96C(&v86, v0 + 208, v79, v83, v80, v85, v9);
  v45 = *(v0 + 288);
  v44 = *(v0 + 296);
  v46 = *(v0 + 272);
  v47 = *(v0 + 280);

  v81 = v87;
  LOBYTE(v79) = v88;
  v77 = v89;
  v78 = v86;
  *(v0 + 320) = v89;
  v48 = swift_task_alloc();
  *v48 = v83;
  v48[1] = v46;
  v48[2] = v47;
  v48[3] = v85;
  v48[4] = v9;
  v48[5] = v45;
  v75 = v45;
  v48[6] = v44;
  v49 = swift_getKeyPath();

  v50 = swift_task_alloc();
  v50[2] = v46;
  v50[3] = v47;
  v50[4] = v9;
  v50[5] = v45;
  v50[6] = v44;
  v50[7] = v49;
  v51 = OUTLINED_FUNCTION_15_52();
  v56 = sub_237C8FFEC(v51, v52, v47, v83, v53, v44, v54, v55);

  *(v0 + 216) = v56;
  v57 = swift_task_alloc();
  v57[2] = v83;
  v57[3] = v46;
  v57[4] = v47;
  v57[5] = v85;
  v57[6] = v9;
  v57[7] = v75;
  v57[8] = v44;
  v58 = OUTLINED_FUNCTION_15_52();
  sub_237C9339C(v58, v59, v30, v60, MEMORY[0x277D84A98], v70);
  v62 = v61;
  *(v0 + 328) = v61;

  v63 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 128) = v71;
  *(v0 + 88) = v63;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = *(v0 + 64);
  *(v0 + 136) = v73;
  *(v0 + 144) = v72;
  *(v0 + 160) = v78;
  *(v0 + 152) = v84;
  *(v0 + 168) = v81;
  *(v0 + 176) = v79;
  *(v0 + 184) = v77;
  v64 = swift_task_alloc();
  *(v0 + 336) = v64;
  *v64 = v0;
  v64[1] = sub_237EBB8C4;
  v65 = *(v0 + 256);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 224);

  return sub_237EBBB90(v68, v0 + 128, v82, v0 + 160, v62, v67, v65, v66);
}

uint64_t sub_237EBB8C4()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_6_2();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();

    return v10();
  }
}

uint64_t sub_237EBBA1C()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

double sub_237EBBA9C()
{
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_12_59(v1, v5);
  v3(v2);
  sub_237C65348();
  return OUTLINED_FUNCTION_25_40();
}

uint64_t sub_237EBBB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 104) = a7;
  *(v9 + 112) = a8;
  *(v9 + 88) = a5;
  *(v9 + 96) = a6;
  *(v9 + 72) = a1;
  *(v9 + 80) = a3;
  *(v9 + 120) = *a2;
  *(v9 + 66) = *(a2 + 16);
  *(v9 + 136) = *(a2 + 24);
  *(v9 + 144) = *a4;
  *(v9 + 67) = *(a4 + 16);
  *(v9 + 160) = *(a4 + 24);
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  *(v9 + 64) = *(v8 + 24);
  *(v9 + 32) = v11;
  *(v9 + 48) = v12;
  *(v9 + 16) = v10;
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237EBBBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = v8;
  v9 = *(v8 + 160);
  v10 = *(v8 + 67);
  v11 = *(v8 + 136);
  v12 = *(v8 + 66);
  v13 = *(v8 + 96);
  v14 = *(v8 + 104);
  v15 = *(v8 + 80);
  v16 = *(v8 + 88);
  v22 = *(v8 + 120);
  LOBYTE(v23) = v12;
  v24 = v11;
  v25 = *(v8 + 144);
  v26 = v10;
  v27 = v9;
  BaseLinearRegressor.fitted(trainingFeatures:trainingAnnotations:validationFeatures:validationAnnotations:eventHandler:)(&v22, v15, &v25, v16, v13, v14, a7, a8, v20, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], v22, *(&v22 + 1), v23, v11);
  v17 = *(v8 + 72);
  memcpy(v28, __src, 0x51uLL);
  sub_237D5E9F4(v28, v17);
  OUTLINED_FUNCTION_10_3();

  return v18();
}

void LinearRegressor.encode(_:to:)(void *__src, uint64_t a2, uint64_t *a3)
{
  memcpy(__dst, __src, 0x51uLL);
  v5 = type metadata accessor for LinearRegressorModel(0, a3[2], a3[3], a3[4]);
  sub_237D5F49C(a2, v5, v6, v7, v8, v9, v10, v11, v12, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10]);
}

uint64_t sub_237EBBD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C6B728;

  return LinearRegressor.fitted<A>(to:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237EBBE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_237C6A904;

  return LinearRegressor.fitted<A, B>(to:validateOn:eventHandler:)(a1, a2, a3, a4, a5, v18, a6, a7);
}

double LinearRegressor.makeTransformer()@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v11 = sub_237EF89A0();
  v5 = sub_237EF8A60();
  v7 = a1[3];
  v6 = a1[4];
  WitnessTable = swift_getWitnessTable();
  return LinearRegressorModel.init<A>(coefficients:)(&v11, v4, v5, v7, v6, WitnessTable, v9, a2);
}

uint64_t LinearRegressor.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  OUTLINED_FUNCTION_17_58();
  return OUTLINED_FUNCTION_7_29();
}

uint64_t sub_237EBC050()
{
  v2 = OUTLINED_FUNCTION_35_23();
  OUTLINED_FUNCTION_16_57(v2);
  swift_getKeyPath();

  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_22_43(v3);
  v4 = OUTLINED_FUNCTION_18_48();
  OUTLINED_FUNCTION_34_19(v4, v5, v6, v7, v8, v9, v10, v11);

  OUTLINED_FUNCTION_32_32();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_65(WitnessTable, v13, v14, v15, v16, v17, v18, v19, v78, v83, v87, v91, v94, v97, v100, v104);
  if (v0)
  {

    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_68_2();

    __asm { BRAA            X1, X16 }
  }

  v22 = OUTLINED_FUNCTION_21_52();
  v30 = OUTLINED_FUNCTION_14_67(v22, v23, v24, v25, v26, v27, v28, v29, v79, v84, v88, v92, v95, v98, v101, v105, v107, v108, v109, v110);
  OUTLINED_FUNCTION_13_55(v30, v31, v32, v33, v34, v35, v36, v37, v80);
  swift_getKeyPath();

  v38 = swift_task_alloc();
  OUTLINED_FUNCTION_30_42(v38);
  v39 = OUTLINED_FUNCTION_15_52();
  v47 = OUTLINED_FUNCTION_33_26(v39, v40, v41, v42, v43, v44, v45, v46);

  v1[21] = v47;
  v48 = swift_task_alloc();
  v56 = OUTLINED_FUNCTION_19_50(v48, v49, v50, v51, v52, v53, v54, v55, v81, v85, v89);
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  v57 = OUTLINED_FUNCTION_15_52();
  sub_237C9339C(v57, v58, v56, v59, MEMORY[0x277D84A98], v60);
  v1[30] = v61;

  OUTLINED_FUNCTION_3_102(v62, v63, v64, v65, v66, v67, v68, v69, v82, v86, v90, v93, v96, v99, v102, v103, v106);
  v70 = swift_task_alloc();
  v1[31] = v70;
  *v70 = v1;
  v70[1] = sub_237EBC2B4;
  OUTLINED_FUNCTION_68_2();

  return sub_237EBC498(v71, v72, v73, v74, v75);
}

uint64_t sub_237EBC2B4()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_6_2();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_10_3();

    return v10();
  }
}

double sub_237EBC3DC()
{
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_12_59(v1, v5);
  v3(v2);
  sub_237C65348();
  return OUTLINED_FUNCTION_25_40();
}

uint64_t sub_237EBC498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  *(v5 + 72) = a1;
  *(v5 + 80) = a3;
  *(v5 + 104) = *a2;
  *(v5 + 66) = *(a2 + 16);
  *(v5 + 120) = *(a2 + 24);
  OUTLINED_FUNCTION_17_58();
  return OUTLINED_FUNCTION_7_29();
}

void LinearRegressor.encodeWithOptimizer(_:to:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v8 = *a1;
  v7 = a1[1];
  memcpy(__dst, a1 + 2, sizeof(__dst));
  if (v7)
  {
    v23 = v8;
    v24[0] = v7;
    memcpy(&v24[1], a1 + 2, 0x41uLL);
    v9 = type metadata accessor for LinearRegressorModel(0, a3[2], a3[3], a3[4]);
    sub_237D5F49C(a2, v9, v10, v11, v12, v13, v14, v15, v21, v22, v8, v7, v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8]);
    if (!v3)
    {
      v23 = v7;
      memcpy(v24, __dst, 0x41uLL);
      v16 = *(a2 + 24);
      v17 = *(a2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
      v18 = *(v17 + 16);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08, qword_237F15D10);
      v20 = sub_237D91558(&qword_27DEB2A10, MEMORY[0x277D83A08], &unk_237F1A778);
      v18(&v23, v19, v20, v16, v17);
    }
  }

  else
  {
    sub_237EF9740("Fatal error", 11, 2, 0xD000000000000028, 0x8000000237EFFE00, "CreateMLComponents/LinearRegressor.swift", 40, 2, 190);
    __break(1u);
  }
}

void LinearRegressor.decodeWithOptimizer(from:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  sub_237D5F804(a1, a2[2], a2[3], a2[4], a3, a4, a5, a6, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], __dst[0]);
  if (!v7)
  {
    v15 = a7;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08, qword_237F15D10);
    v12 = *(a1 + 24);
    v11 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
    v20 = *(v11 + 16);
    v13 = sub_237D91558(&qword_27DEB2A20, MEMORY[0x277D83A30], &unk_237F1A738);
    v20(v18, v10, v10, v13, v12, v11);
    memcpy(v16, v18, 0x49uLL);
    memcpy(__dst, &__src[8], 0x49uLL);
    sub_237D09E34(__dst);
    memcpy(&__src[8], v16, 0x49uLL);
    memcpy(v15, __src, 0x51uLL);
  }
}

uint64_t sub_237EBC8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C6B728;

  return LinearRegressor.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

_BYTE *(*LinearRegressor.Configuration.optimizationStrategy.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 49);
  return sub_237DDD4C8;
}

BOOL static LinearRegressor.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 24), *(a2 + 24)))))) & 1) == 0 && *(a1 + 16) == *(a2 + 16) && *(a1 + 40) == *(a2 + 40) && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0)
  {
    return *(a1 + 49) == *(a2 + 49);
  }

  return result;
}

unint64_t sub_237EBCC5C(char a1)
{
  result = 0x746C616E6550326CLL;
  switch(a1)
  {
    case 1:
      result = 0x746C616E6550316CLL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x657A695370657473;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0x616546656C616373;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237EBCD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DDD55C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237EBCDA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D87608();
  *a1 = result;
  return result;
}

uint64_t sub_237EBCDD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237EBCE2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LinearRegressor.Configuration.encode(to:)(void *a1, void *a2)
{
  type metadata accessor for LinearRegressor.Configuration.CodingKeys(255, a2[2], a2[3], a2[4]);
  OUTLINED_FUNCTION_7_79();
  swift_getWitnessTable();
  v4 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v8 = *(v2 + 16);
  v17 = *(v2 + 40);
  v18 = v8;
  v16[3] = *(v2 + 48);
  v9 = *(v2 + 49);
  v10 = a1[3];
  v11 = a1;
  v13 = v16 - v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_237EFA1B0();
  v26[1] = 0;
  v14 = v19;
  sub_237EF9A30();
  if (!v14)
  {
    v26[0] = 1;
    OUTLINED_FUNCTION_8_59(v26);
    v25[1] = 2;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A50();
    v25[0] = 3;
    OUTLINED_FUNCTION_8_59(v25);
    v24 = 4;
    OUTLINED_FUNCTION_8_59(&v24);
    v23 = 5;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A50();
    v22 = 6;
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A20();
    v21 = v9;
    v20 = 7;
    sub_237DDDE38();
    OUTLINED_FUNCTION_4_68();
    sub_237EF9A70();
  }

  return (*(v6 + 8))(v13, v4);
}

uint64_t LinearRegressor.Configuration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 49);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x2383E2240](*&v1);
  if (v2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v2;
  }

  MEMORY[0x2383E2240](*&v8);
  MEMORY[0x2383E2210](v3);
  if (v4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x2383E2240](*&v9);
  if (v5 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v5;
  }

  MEMORY[0x2383E2240](*&v10);
  MEMORY[0x2383E2210](v6);
  sub_237EFA140();
  return MEMORY[0x2383E2210](v7);
}

uint64_t LinearRegressor.Configuration.hashValue.getter()
{
  sub_237EFA120();
  LinearRegressor.Configuration.hash(into:)();
  return sub_237EFA170();
}

uint64_t LinearRegressor.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for LinearRegressor.Configuration.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_7_79();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v5)
  {
    sub_237EF9930();
    v9 = v8;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v11 = v10;
    OUTLINED_FUNCTION_0_90();
    v12 = sub_237EF9950();
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v14 = v13;
    OUTLINED_FUNCTION_0_90();
    sub_237EF9930();
    v16 = v15;
    OUTLINED_FUNCTION_0_90();
    v18 = sub_237EF9950();
    OUTLINED_FUNCTION_0_90();
    v19 = sub_237EF9920();
    sub_237DDE2A4();
    sub_237EF9970();
    v20 = OUTLINED_FUNCTION_12_41();
    v21(v20);
    *a5 = v9;
    *(a5 + 8) = v11;
    *(a5 + 16) = v12;
    *(a5 + 24) = v14;
    *(a5 + 32) = v16;
    *(a5 + 40) = v18;
    *(a5 + 48) = v19 & 1;
    *(a5 + 49) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237EBD4F4(uint64_t a1)
{
  sub_237EFA120();
  LinearRegressor.Configuration.hash(into:)();
  return sub_237EFA170();
}

uint64_t sub_237EBD5E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237EBD638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237EBD68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237EBD6E0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

__n128 OUTLINED_FUNCTION_3_102(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17)
{
  v18 = *(a13 + 16);
  *(v17 + 72) = *a13;
  *(v17 + 128) = a12;
  *(v17 + 88) = v18;
  result = *(a13 + 32);
  *(v17 + 104) = result;
  *(v17 + 120) = *(a13 + 48);
  *(v17 + 136) = a17;
  *(v17 + 144) = a16;
  *(v17 + 152) = a14;
  return result;
}

void *OUTLINED_FUNCTION_11_65(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_237EDB96C(va, v18, v19, v20, a1, v17, v16);
}

void *OUTLINED_FUNCTION_13_55(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *result = v10;
  result[1] = v9;
  result[2] = v11;
  result[3] = v12;
  result[4] = a9;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 + 232) = a20;

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_16_57(void *result)
{
  *result = v2[2];
  result[1] = v1;
  result[2] = v2[3];
  result[3] = v2[4];
  result[4] = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_17_58()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  result = *(v0 + 32);
  *(v1 + 48) = result;
  *(v1 + 64) = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = a11;
  a1[5] = v11;
  a1[6] = v14;

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_21_52()
{
}

uint64_t OUTLINED_FUNCTION_22_43(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v4;
  a1[5] = v3;

  return sub_237EF7E90();
}

double OUTLINED_FUNCTION_25_40()
{

  sub_237EF8190();
  return result;
}

void OUTLINED_FUNCTION_28_33(char a1@<W8>)
{
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = 10;
  *(v1 + 48) = a1;
}

void *OUTLINED_FUNCTION_30_42(void *result)
{
  result[2] = v3;
  result[3] = v1;
  result[4] = v2;
  result[5] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_32()
{
  *(v1 + 160) = v0;

  return sub_237EF8A60();
}

uint64_t OUTLINED_FUNCTION_33_26(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_237C8FFEC(a1, a2, v8, v9, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_34_19(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_237C8FFEC(a1, a2, v8, v10, a5, v9, a7, a8);
}

uint64_t OUTLINED_FUNCTION_35_23()
{

  return swift_task_alloc();
}

uint64_t TabularEstimator<>.fitted(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_99(a1, a2, a3, a4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_1(v4);
  *v5 = v6;
  v5[1] = sub_237C606BC;
  OUTLINED_FUNCTION_2_120();

  return v7();
}

uint64_t TabularEstimator<>.encode(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v9(a1, AssociatedTypeWitness, a5, v7, v8);
}

uint64_t TabularEstimator.fitted(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_99(a1, a2, a3, a4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_1(v4);
  *v5 = v6;
  v5[1] = sub_237C5FFA4;
  OUTLINED_FUNCTION_2_120();

  return v7();
}

uint64_t TabularEstimator<>.decode(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  return (*(v8 + 8))(AssociatedTypeWitness, AssociatedTypeWitness, a4, v7, v8);
}

uint64_t UpdatableTabularEstimator.update(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_99(a1, a2, a3, a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_237C606BC;
  OUTLINED_FUNCTION_2_120();

  return v6();
}

uint64_t dispatch thunk of TabularEstimator.fitted(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_16(a6);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_1(v6);
  *v7 = v8;
  v7[1] = sub_237C5FFA4;
  OUTLINED_FUNCTION_3_103();

  return v9();
}

uint64_t dispatch thunk of UpdatableTabularEstimator.update(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_16(a6);
  v7 = swift_task_alloc();
  *(v6 + 16) = v7;
  *v7 = v6;
  v7[1] = sub_237C606BC;
  OUTLINED_FUNCTION_3_103();

  return v8();
}

BOOL sub_237EBE2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32) == 1 && v4 == a3;
  if (!v6 || v4 < v5)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v57 = a3;
  if (v5 < 0xFFFFFFFF80000000)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v3 = a1;
  v55 = 1;
  v56 = v5;
  v53 = a3;
  v54 = a3;
  OUTLINED_FUNCTION_1_119();
  sub_237D0BEC0();
  v51 = 0xBFF0000000000000;
  v50 = 0;
  v48 = 0;
  v47 = 0xFFFFFFFF00000000;
  log2(v5 / 26.0);
  OUTLINED_FUNCTION_36_2();
  if (!(v9 ^ v10 | v6))
  {
    goto LABEL_43;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (__OFADD__(v8, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v11 = (v8 + 1) & ~((v8 + 1) >> 63);
  v12 = 3 * v5 * v11;
  if ((3 * v5 * v11) >> 64 != v12 >> 63)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v10 = __OFADD__(v12, 11 * v5);
  v13 = v12 + 11 * v5;
  if (v10)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  sub_237CDC320(0, v14);
  v16 = v15;
  sub_237EF8260();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_1_119();
    sub_237D0BFC0();
    v16 = isUniquelyReferenced_nonNull_native;
  }

  v3 = *v3;
  OUTLINED_FUNCTION_0_100(isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v23, v24, v43, v45, &v48, &v47 + 4, v16 + 32, &v47, v47, v48, v49, v50, SHIWORD(v50), v51, SHIDWORD(v51), v52, v53, SHIWORD(v53), v54);

  OUTLINED_FUNCTION_36_2();
  if (!(v9 ^ v10 | v6))
  {
    goto LABEL_49;
  }

  if (v25 <= -2147483650.0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v25 >= 2147483650.0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  HIDWORD(v47) = v25;
  sub_237CDC02C(v25, 0.0);
  v27 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_119();
    sub_237D0BEC0();
  }

  sub_237EF8260();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_119();
    sub_237D0BEC0();
    v27 = v28;
  }

  sub_237EF8260();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_1_119();
    sub_237D0BFC0();
    v16 = v29;
  }

  v30 = sub_237EF8260();
  OUTLINED_FUNCTION_0_100(v30, v31, v32, v33, v34, v35, v36, v37, v44, v46, v27 + 32, &v47 + 4, v16 + 32, &v47, v47, v48, v49, v50, SHIWORD(v50), v51, SHIDWORD(v51), v52, v53, SHIWORD(v53), v54);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  LODWORD(v3) = v47;
  if (v47 >= 1)
  {
    if (qword_27DEAD0C8 == -1)
    {
LABEL_35:
      v38 = sub_237EF7DB0();
      __swift_project_value_buffer(v38, qword_27DEE2458);
      v39 = sub_237EF7D90();
      v40 = sub_237EF8F80();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_237C51000, v39, v40, "The optimization process failed to find a solution.", v41, 2u);
        MEMORY[0x2383E2DF0](v41, -1, -1);
      }

      return v3 > 0;
    }

LABEL_52:
    swift_once();
    goto LABEL_35;
  }

  return v3 > 0;
}

uint64_t OUTLINED_FUNCTION_0_100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, __int16 a19, int a20, int a21, int a22, __int16 a23, __int16 a24, char a25)
{

  return MEMORY[0x2821098B8](v28 - 76, v28 - 80, v28 - 84, v27, &a25, v25, &a23, v26 + 32, &a20, &a18);
}

void sub_237EBE6BC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v24 = a4;
  v23 = a1;
  v22 = sub_237EF7B10();
  v9 = *(v22 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v22);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a6 >> 1;
  v21[1] = v9 + 16;
  v14 = (v9 + 8);
  do
  {
    v15 = a5;
    if (v13 == a5)
    {
      break;
    }

    if (a5 >= v13)
    {
      __break(1u);
      return;
    }

    v16 = v24 + *(v9 + 72) * a5;
    v17 = v22;
    (*(v9 + 16))(v12, v16, v22, v10);
    v18 = v23(v12);
    if (v6)
    {
      (*v14)(v12, v17);
      return;
    }

    v19 = v18;
    v20 = v17;
    a5 = v15 + 1;
    (*v14)(v12, v20);
  }

  while ((v19 & 1) != 0);
}

uint64_t sub_237EBE848(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    return sub_237EF8260();
  }

  __break(1u);
  return result;
}

void sub_237EBE8A8()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v77 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v12 = (v11 - v10);
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v84 = v14;
  v85 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_3();
  v82 = v15;
  OUTLINED_FUNCTION_12_1();
  v83 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v81 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v78 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v79 = v23;
  v80 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_3();
  v91 = v24;
  OUTLINED_FUNCTION_22_44();
  v86 = v6;
  v87 = v4;
  OUTLINED_FUNCTION_20_10();
  sub_237CF1674();
  v25 = *(v2 + 16);
  v89 = v25;
  v90 = v0;
  v88 = v21;
  v76 = v2;
  if (v25)
  {
    v98[0] = MEMORY[0x277D84F90];
    sub_237C63364(0, v25, 0);
    v26 = v98[0];
    v27 = (v2 + 32);
    v95 = *(v8 + 104);
    LODWORD(v93) = *MEMORY[0x277D25270];
    LODWORD(v92) = *MEMORY[0x277D25278];
    v94 = v8 + 32;
    v28 = v25;
    v29 = v77;
    do
    {
      v31 = *v27++;
      v30 = v31;
      if ((v31 + 1) > 1)
      {
        *v12 = v30;
        v32 = v92;
      }

      else
      {
        *v12 = 0;
        v32 = v93;
      }

      v95(v12, v32, v29);
      v98[0] = v26;
      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_17_0(v33);
        OUTLINED_FUNCTION_95_2();
        sub_237C63364(v36, v37, v38);
        v29 = v77;
        v26 = v98[0];
      }

      *(v26 + 16) = v34 + 1;
      OUTLINED_FUNCTION_28();
      (*(v8 + 32))(v26 + v35 + *(v8 + 72) * v34, v12, v29);
      --v28;
    }

    while (v28);
  }

  OUTLINED_FUNCTION_77_4(v98);
  v39 = sub_237CF196C(0x65706168736572, 0xE700000000000000);
  v41 = v40;
  OUTLINED_FUNCTION_77_4(&v97);
  v42 = OUTLINED_FUNCTION_44_16();
  sub_237CF12A0(v42, v43);
  OUTLINED_FUNCTION_20_10();
  sub_237EF7CC0();

  v94 = v41;
  v95 = v39;
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_7_80();
  v46 = *(v45 + 72);
  OUTLINED_FUNCTION_17_59();
  v49 = v48 & ~v47;
  v50 = OUTLINED_FUNCTION_55_11();
  *(v50 + 16) = xmmword_237F04760;
  v51 = (v50 + v49);
  *&v93 = v44;
  OUTLINED_FUNCTION_23_40();
  *v51 = v52;
  v51[1] = v53;
  sub_237EF8260();
  OUTLINED_FUNCTION_44_16();
  sub_237EF7A20();
  v54 = (v50 + v49 + v46);
  *v54 = 0x6570616873;
  v54[1] = 0xE500000000000000;
  v55 = v89;
  if (v89)
  {
    v92 = v50;
    v96 = MEMORY[0x277D84F90];
    v56 = OUTLINED_FUNCTION_34_20();
    sub_237C63320(v56, v57, v58);
    v59 = v96;
    v60 = (v76 + 32);
    while (1)
    {
      v62 = *v60++;
      v61 = v62;
      if (v62 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v61 > 0x7FFFFFFF)
      {
        goto LABEL_19;
      }

      v96 = v59;
      v64 = *(v59 + 16);
      v63 = *(v59 + 24);
      if (v64 >= v63 >> 1)
      {
        v65 = OUTLINED_FUNCTION_17_0(v63);
        sub_237C63320(v65, v64 + 1, 1);
        v59 = v96;
      }

      *(v59 + 16) = v64 + 1;
      *(v59 + 4 * v64 + 32) = v61;
      if (!--v55)
      {
        v55 = v89;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    v67 = OUTLINED_FUNCTION_107(v66);
    v93 = xmmword_237F03530;
    *(v67 + 16) = xmmword_237F03530;
    *(v67 + 32) = v55;
    sub_237EF7A50();
    sub_237EF7B00();
    sub_237EF8230();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
    OUTLINED_FUNCTION_40_18();
    v68 = sub_237EF78C0();
    OUTLINED_FUNCTION_6_1(v68);
    *(OUTLINED_FUNCTION_8_88() + 16) = v93;
    v69 = OUTLINED_FUNCTION_41_10();
    v70(v69);
    sub_237EF8260();
    sub_237EF7880();
    OUTLINED_FUNCTION_74_4(0x65706168736572, 0xE700000000000000);
    sub_237CF33F8();
    v71 = OUTLINED_FUNCTION_37_26();
    v72(v71);
    v73 = OUTLINED_FUNCTION_6_73();
    v74(v73);
    (*(v79 + 8))(v91, v80);
    OUTLINED_FUNCTION_38_0();
  }
}

void sub_237EBEF48()
{
  OUTLINED_FUNCTION_37_0();
  v92 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_102_2();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v88 = v7;
  v89 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  v86 = v8;
  OUTLINED_FUNCTION_12_1();
  v87 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v85 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_2();
  v84 = v11;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22_1();
  v94 = v13;
  OUTLINED_FUNCTION_12_1();
  v14 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v99 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_36_24();
  MEMORY[0x28223BE20](v20);
  v22 = &v81 - v21;
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v82 = v24;
  v83 = v23;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_81_1();
  sub_237CF1674();
  OUTLINED_FUNCTION_48_16(&v106);
  v93 = v27;
  v28 = OUTLINED_FUNCTION_81_1();
  sub_237CF12A0(v28, v29);
  v95 = v0;
  OUTLINED_FUNCTION_48_16(&v105);
  v90 = v1;
  v91 = v5;
  v30 = OUTLINED_FUNCTION_81_1();
  sub_237CF11B8(v30, v31);
  v33 = v32;
  *v22 = 0;
  v34 = *(v16 + 104);
  LODWORD(v98) = *MEMORY[0x277D25270];
  v35 = v14;
  v96 = v34;
  v97 = v16 + 104;
  v34(v22);
  v102 = v33;
  v36 = *(v33 + 16);
  v37 = OUTLINED_FUNCTION_69_8();
  v39 = sub_237CDC0C4(v37, v38);
  if (v36)
  {
    if (v36 > *(v92 + 16))
    {
LABEL_28:
      __break(1u);
      return;
    }

    v40 = 0;
    v100 = v102 + 32;
    *&v101 = v92 + 32;
    while (1)
    {
      v41 = *(v101 + 8 * v40);
      if ((v41 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v41 >= *(v102 + 16))
      {
        goto LABEL_24;
      }

      if (*(v100 + 16 * v41 + 8))
      {
        *v2 = 0;
        v96(v2, v98, v35);
      }

      else
      {
        v42 = v99;
        sub_237EF78D0();
        (*(v16 + 32))(v2, v42, v35);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_237E64218(v39, v43, v44, v45);
        v39 = v47;
      }

      if (v40 >= *(v39 + 16))
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_28();
      (*(v16 + 40))(v39 + v46 + *(v16 + 72) * v40++, v2, v35);
      if (v36 == v40)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_13:

  sub_237EF7CC0();
  OUTLINED_FUNCTION_48_16(&v104);
  v48 = sub_237CF196C(0x736F70736E617274, 0xE900000000000065);
  v102 = v49;
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_7_80();
  v52 = *(v51 + 72);
  OUTLINED_FUNCTION_17_59();
  v55 = v54 & ~v53;
  v56 = OUTLINED_FUNCTION_55_11();
  *(v56 + 16) = xmmword_237F04760;
  v57 = (v56 + v55);
  OUTLINED_FUNCTION_23_40();
  *v57 = v58;
  v57[1] = v59;
  sub_237EF8260();
  sub_237EF7A20();
  v60 = (v56 + v55 + v52);
  *v60 = 1836213616;
  v60[1] = 0xE400000000000000;
  v61 = v92;
  v62 = *(v92 + 16);
  if (v62)
  {
    v98 = v60;
    v99 = v50;
    v100 = v56;
    *&v101 = v48;
    v103 = MEMORY[0x277D84F90];
    v63 = OUTLINED_FUNCTION_34_20();
    sub_237C63320(v63, v64, v65);
    v66 = v103;
    v67 = (v61 + 32);
    v68 = v62;
    v97 = v62;
    while (1)
    {
      v70 = *v67++;
      v69 = v70;
      if (v70 < 0xFFFFFFFF80000000)
      {
        goto LABEL_26;
      }

      if (v69 > 0x7FFFFFFF)
      {
        goto LABEL_27;
      }

      v103 = v66;
      v72 = *(v66 + 16);
      v71 = *(v66 + 24);
      if (v72 >= v71 >> 1)
      {
        v73 = OUTLINED_FUNCTION_17_0(v71);
        sub_237C63320(v73, v72 + 1, 1);
        v66 = v103;
      }

      *(v66 + 16) = v72 + 1;
      *(v66 + 4 * v72 + 32) = v69;
      if (!--v68)
      {

        v62 = v97;
        goto LABEL_22;
      }
    }
  }

LABEL_22:
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v75 = OUTLINED_FUNCTION_107(v74);
  v101 = xmmword_237F03530;
  *(v75 + 16) = xmmword_237F03530;
  *(v75 + 32) = v62;
  sub_237EF7A50();
  sub_237EF7B00();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  OUTLINED_FUNCTION_40_18();
  v76 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v76);
  *(OUTLINED_FUNCTION_8_88() + 16) = v101;
  (*(v85 + 16))(v84, v94, v87);
  sub_237EF8260();
  OUTLINED_FUNCTION_30_43();
  sub_237EF7880();
  OUTLINED_FUNCTION_74_4(0x736F70736E617274, 0xE900000000000065);
  sub_237CF33F8();
  v77 = OUTLINED_FUNCTION_37_26();
  v78(v77);
  v79 = OUTLINED_FUNCTION_57_10();
  v80(v79);
  (*(v82 + 8))(v93, v83);
  OUTLINED_FUNCTION_30_43();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EBF68C()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v113 = v7;
  v114 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v111 = v12;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_22_1();
  v118 = v14;
  OUTLINED_FUNCTION_12_1();
  v115 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v127 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v124 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v125 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v109 = v23;
  v110 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  OUTLINED_FUNCTION_22_44();
  sub_237CF1674();
  OUTLINED_FUNCTION_48_16(&v132);
  OUTLINED_FUNCTION_55_1();
  sub_237CF1674();
  OUTLINED_FUNCTION_48_16(&v131);
  v117 = v26;
  sub_237CF12A0(v5, v26);
  OUTLINED_FUNCTION_48_16(&v130);
  sub_237CF11B8(v5, v3);
  v28 = v27;
  OUTLINED_FUNCTION_48_16(&v129);
  v29 = OUTLINED_FUNCTION_55_1();
  sub_237CF11B8(v29, v30);
  v32 = v31;
  v33 = sub_237ED8388(v31);
  if ((v34 & 0x100) != 0)
  {
    goto LABEL_54;
  }

  if (v34)
  {
    OUTLINED_FUNCTION_17_15();
    v106 = 497;
    OUTLINED_FUNCTION_19_51();
    v103 = 0xD000000000000024;
    goto LABEL_56;
  }

  v35 = *(v32 + 16);
  v36 = *(v28 + 16);
  v37 = __OFADD__(v35 - 1, v36);
  v38 = v35 - 1 + v36;
  v39 = v115;
  if (v37)
  {
    goto LABEL_43;
  }

  v37 = __OFSUB__(v38, v33);
  v40 = v38 - v33;
  if (v37)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v37 = __OFSUB__(v40, v1);
  v41 = v40 - v1;
  if (v37)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v116 = v1;
  v108 = v10;
  if (!v41)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD370, &qword_237F030D8);
    OUTLINED_FUNCTION_18_49();
    *(swift_allocObject() + 16) = xmmword_237F03530;
    sub_237EF78D0();
    goto LABEL_37;
  }

  v107 = v33;
  sub_237D0BDB8(0, v41 & ~(v41 >> 63), 0, MEMORY[0x277D84F90]);
  if (!v35)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_237D6A768();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v48 = v47 >> 1;
  v49 = v48 - v45;
  if (__OFSUB__(v48, v45))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v49)
  {
    v128[0] = MEMORY[0x277D84F90];
    sub_237C63364(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v50 = v128[0];
    v120 = *MEMORY[0x277D25278];
    v119 = *MEMORY[0x277D25270];
    v51 = (v43 + 16 * v45 + 8);
    v122 = v48;
    while (v45 < v48)
    {
      if (*v51)
      {
        *v125 = 0;
        v52 = v119;
      }

      else
      {
        *v125 = *(v51 - 1);
        v52 = v120;
      }

      (*(v127 + 104))(v125, v52, v39);
      v53 = *(v127 + 32);
      v54 = OUTLINED_FUNCTION_18_14();
      v53(v54);
      v55 = v50;
      v128[0] = v50;
      v56 = v39;
      v58 = v50[2];
      v57 = v50[3];
      if (v58 >= v57 >> 1)
      {
        v61 = OUTLINED_FUNCTION_17_0(v57);
        v50 = v128;
        sub_237C63364(v61, v58 + 1, 1);
        v55 = v128[0];
      }

      v55[2] = v58 + 1;
      OUTLINED_FUNCTION_28();
      v60 = OUTLINED_FUNCTION_70_7(v59);
      v53(v60);
      ++v45;
      v51 += 16;
      v48 = v122;
      v39 = v56;
      if (v122 == v45)
      {
        swift_unknownObjectRelease();
        v1 = v116;
        v62 = v50;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  swift_unknownObjectRelease();
  v62 = MEMORY[0x277D84F90];
LABEL_22:
  sub_237E48660(v62);
  if (__OFADD__(v107, v1))
  {
    goto LABEL_50;
  }

  sub_237EBE848(v107 + v1, v28);
  v64 = v63;
  v66 = v65;
  v68 = v67;

  v69 = v68 >> 1;
  v70 = (v68 >> 1) - v66;
  if (__OFSUB__(v68 >> 1, v66))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v70)
  {
    swift_unknownObjectRelease();
    v83 = MEMORY[0x277D84F90];
LABEL_36:
    sub_237E48660(v83);
LABEL_37:
    sub_237EF7CC0();

    OUTLINED_FUNCTION_77_4(v128);
    sub_237CF196C(0x726568746167, 0xE600000000000000);
    sub_237CF0C9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
    v84 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8) - 8) + 72);
    OUTLINED_FUNCTION_17_59();
    v87 = v86 & ~v85;
    v88 = OUTLINED_FUNCTION_55_11();
    *(v88 + 16) = xmmword_237F08A50;
    v89 = (v88 + v87);
    OUTLINED_FUNCTION_23_40();
    *v89 = v90;
    v89[1] = v91;
    sub_237EF8260();
    sub_237EF7A20();
    v92 = (v89 + v84);
    *v92 = 0x73656369646E69;
    v92[1] = 0xE700000000000000;
    sub_237EF8260();
    sub_237EF7A20();
    v93 = (v89 + 2 * v84);
    *v93 = 0x69645F6863746162;
    v93[1] = 0xEA0000000000736DLL;
    if (v116 >= 0xFFFFFFFF80000000)
    {
      OUTLINED_FUNCTION_94_4();
      if (v95 ^ v37 | v94)
      {
        sub_237EF7A90();
        sub_237EF7B00();
        sub_237EF8230();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
        OUTLINED_FUNCTION_102_2();
        v96 = sub_237EF78C0();
        OUTLINED_FUNCTION_6_1(v96);
        OUTLINED_FUNCTION_18_49();
        *(swift_allocObject() + 16) = xmmword_237F03530;
        OUTLINED_FUNCTION_91_2();
        v97(v111, v118, v112);
        sub_237EF8260();
        OUTLINED_FUNCTION_5_12();
        sub_237EF7880();
        sub_237EF7BF0();
        sub_237CF33F8();
        (*(v113 + 8))(v108, v114);
        v98 = OUTLINED_FUNCTION_97_4();
        v99(v98);
        (*(v109 + 8))(v117, v110);
        OUTLINED_FUNCTION_5_12();
        OUTLINED_FUNCTION_38_0();
        return;
      }

      goto LABEL_47;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v128[0] = MEMORY[0x277D84F90];
  sub_237C63364(0, v70 & ~(v70 >> 63), 0);
  if ((v70 & 0x8000000000000000) == 0)
  {
    v71 = v128[0];
    v123 = *MEMORY[0x277D25278];
    v121 = *MEMORY[0x277D25270];
    v72 = (v64 + 16 * v66 + 8);
    v126 = v69;
    while (v66 < v69)
    {
      if (*v72)
      {
        *v124 = 0;
        v73 = v121;
      }

      else
      {
        *v124 = *(v72 - 1);
        v73 = v123;
      }

      (*(v127 + 104))(v124, v73, v39);
      v74 = *(v127 + 32);
      v75 = OUTLINED_FUNCTION_18_14();
      v74(v75);
      v76 = v71;
      v128[0] = v71;
      v77 = v39;
      v79 = v71[2];
      v78 = v71[3];
      if (v79 >= v78 >> 1)
      {
        v82 = OUTLINED_FUNCTION_17_0(v78);
        v71 = v128;
        sub_237C63364(v82, v79 + 1, 1);
        v76 = v128[0];
      }

      v76[2] = v79 + 1;
      OUTLINED_FUNCTION_28();
      v81 = OUTLINED_FUNCTION_70_7(v80);
      v74(v81);
      ++v66;
      v72 += 16;
      v69 = v126;
      v39 = v77;
      if (v126 == v66)
      {
        swift_unknownObjectRelease();
        v83 = v71;
        goto LABEL_36;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  OUTLINED_FUNCTION_9_68();
  v106 = 494;
  OUTLINED_FUNCTION_19_51();
LABEL_56:
  sub_237EF9740(v100, v101, v102, v103, v104, v105, 45, 2, v106);
  __break(1u);
}

void sub_237EC0120()
{
  OUTLINED_FUNCTION_37_0();
  v2 = v1;
  v112 = v3;
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  v111 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v110 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v109 = v7;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22_1();
  v114 = v9;
  OUTLINED_FUNCTION_12_1();
  v119 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v129 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v121 = v12;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_16();
  v15 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58_10();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  v125 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_1();
  v122 = v20;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v107 = v22;
  v108 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_6_73();
  sub_237CF1674();
  OUTLINED_FUNCTION_48_16(&v134);
  v26 = OUTLINED_FUNCTION_6_73();
  sub_237CF11B8(v26, v27);
  v29 = v28;
  OUTLINED_FUNCTION_48_16(&v133);
  v113 = v25;
  v30 = OUTLINED_FUNCTION_6_73();
  sub_237CF12A0(v30, v31);
  v32 = *(v29 + 16);
  if (v2)
  {
    if (v32)
    {
      v106 = v0;
      v132[0] = MEMORY[0x277D84F90];
      sub_237C63364(0, v32, 0);
      v33 = v132[0];
      v120 = *(v129 + 104);
      v117 = *MEMORY[0x277D25278];
      v115 = *MEMORY[0x277D25270];
      v34 = (v29 + 40);
      v35 = v119;
      do
      {
        if (*v34)
        {
          *v125 = 0;
          v36 = v115;
        }

        else
        {
          *v125 = *(v34 - 1);
          v36 = v117;
        }

        v120(v125, v36, v35);
        v37 = *(v129 + 32);
        v38 = OUTLINED_FUNCTION_42_20();
        v37(v38);
        v39 = v33;
        v132[0] = v33;
        v40 = v35;
        v42 = *(v33 + 16);
        v41 = *(v33 + 24);
        if (v42 >= v41 >> 1)
        {
          v46 = OUTLINED_FUNCTION_17_0(v41);
          sub_237C63364(v46, v42 + 1, 1);
          v39 = v132[0];
        }

        *(v39 + 16) = v42 + 1;
        OUTLINED_FUNCTION_10_2();
        v33 = v43;
        (v37)(v43 + v44 + *(v45 + 72) * v42, v122, v40);
        v34 += 16;
        --v32;
        v35 = v40;
      }

      while (v32);

      v0 = v106;
      v71 = v33;
    }

    else
    {

      v71 = MEMORY[0x277D84F90];
      v35 = v119;
    }

    v72 = *(v112 + 16);
    if (v72)
    {
      v73 = (v112 + 32);
      v127 = *MEMORY[0x277D25278];
      v123 = *(v129 + 104);
      do
      {
        v75 = *v73++;
        v74 = v75;
        *v0 = 1;
        v123(v0, v127, v35);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v74 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_237E64218(v71, v76, v77, v78);
          v71 = v81;
          if ((v74 & 0x8000000000000000) != 0)
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        if (v74 >= *(v71 + 16))
        {
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_10_2();
        (*(v80 + 40))(v71 + v79 + *(v80 + 72) * v74, v0, v35);
        --v72;
      }

      while (v72);
    }
  }

  else
  {
    if (!v32)
    {
      goto LABEL_37;
    }

    v47 = 0;
    v48 = *(v112 + 16);
    v49 = (v112 + 32);
    v118 = *MEMORY[0x277D25278];
    v116 = *MEMORY[0x277D25270];
    v50 = MEMORY[0x277D84F90];
    v51 = v119;
    v52 = v121;
    v126 = v48;
    do
    {
      v53 = v47++;
      v54 = v48;
      v55 = v49;
      while (v54)
      {
        v56 = *v55++;
        --v54;
        if (v56 == v53)
        {
          goto LABEL_25;
        }
      }

      v57 = v29 + 32 + 16 * v53;
      if (*(v57 + 8))
      {
        *v52 = 0;
        v58 = v116;
      }

      else
      {
        *v52 = *v57;
        v58 = v118;
      }

      (*(v129 + 104))(v52, v58, v51);
      v59 = *(v129 + 32);
      v60 = OUTLINED_FUNCTION_44_16();
      v59(v60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = OUTLINED_FUNCTION_8_1();
        sub_237D0BDB8(v65, v66, v67, v50);
        v50 = v68;
      }

      v62 = *(v50 + 16);
      v61 = *(v50 + 24);
      if (v62 >= v61 >> 1)
      {
        v69 = OUTLINED_FUNCTION_17_0(v61);
        sub_237D0BDB8(v69, v62 + 1, 1, v50);
        v50 = v70;
      }

      *(v50 + 16) = v62 + 1;
      OUTLINED_FUNCTION_10_2();
      v51 = v119;
      (v59)(v50 + v63 + *(v64 + 72) * v62, v15, v119);
      v52 = v121;
      v49 = (v112 + 32);
      v48 = v126;
LABEL_25:
      ;
    }

    while (v47 != v32);
LABEL_37:
  }

  sub_237EF7CC0();
  OUTLINED_FUNCTION_48_16(v132);
  sub_237CF196C(0x656375646572, 0xE600000000000000);
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_7_80();
  v83 = *(v82 + 72);
  OUTLINED_FUNCTION_17_59();
  v86 = v85 & ~v84;
  v87 = OUTLINED_FUNCTION_55_11();
  *(v87 + 16) = xmmword_237F08A50;
  v88 = (v87 + v86);
  OUTLINED_FUNCTION_23_40();
  *v88 = v89;
  v88[1] = v90;
  sub_237EF8260();
  sub_237EF7A20();
  v124 = v87 + v86;
  v128 = v83;
  v91 = (v87 + v86 + v83);
  *v91 = 1936029793;
  v91[1] = 0xE400000000000000;
  v130 = *(v112 + 16);
  if (v130)
  {
    v131 = MEMORY[0x277D84F90];
    sub_237C63320(0, v130, 0);
    v92 = v130;
    v93 = (v112 + 32);
    while (1)
    {
      v95 = *v93++;
      v94 = v95;
      if (v95 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v94 > 0x7FFFFFFF)
      {
        goto LABEL_47;
      }

      v97 = *(v131 + 16);
      v96 = *(v131 + 24);
      if (v97 >= v96 >> 1)
      {
        v98 = OUTLINED_FUNCTION_17_0(v96);
        sub_237C63320(v98, v97 + 1, 1);
      }

      *(v131 + 16) = v97 + 1;
      *(v131 + 4 * v97 + 32) = v94;
      if (!--v92)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  else
  {
LABEL_45:

    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    v100 = OUTLINED_FUNCTION_107(v99);
    *(v100 + 16) = xmmword_237F03530;
    *(v100 + 32) = v130;
    sub_237EF7A50();
    OUTLINED_FUNCTION_53_14((v124 + 2 * v128));
    sub_237EF7A70();
    sub_237EF7B00();
    sub_237EF8230();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
    OUTLINED_FUNCTION_40_18();
    v101 = sub_237EF78C0();
    OUTLINED_FUNCTION_6_1(v101);
    *(OUTLINED_FUNCTION_8_88() + 16) = xmmword_237F03530;
    (*(v110 + 16))(v109, v114, v111);
    sub_237EF8260();
    OUTLINED_FUNCTION_30_43();
    sub_237EF7880();
    OUTLINED_FUNCTION_74_4(0x6D5F656375646572, 0xEB000000006E6165);
    sub_237CF33F8();
    v102 = OUTLINED_FUNCTION_37_26();
    v103(v102);
    v104 = OUTLINED_FUNCTION_57_10();
    v105(v104);
    (*(v107 + 8))(v113, v108);
    OUTLINED_FUNCTION_30_43();
    OUTLINED_FUNCTION_38_0();
  }
}

void sub_237EC0B40()
{
  OUTLINED_FUNCTION_37_0();
  v261 = v1;
  v259 = v2;
  OUTLINED_FUNCTION_25_6();
  v255 = sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v254 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_17(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A20, qword_237F1E9F8);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_2(&v249 - v8);
  v310 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_1();
  v313 = v19;
  OUTLINED_FUNCTION_12_1();
  v20 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_22_2(v26);
  v296 = sub_237EF7CB0();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v30);
  v295 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v34);
  v35 = sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22_1();
  v42 = OUTLINED_FUNCTION_22_2(v41);
  v286 = type metadata accessor for TensorDescription(v42);
  OUTLINED_FUNCTION_1();
  v277 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_17(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAFB20, &unk_237F09D50);
  v47 = OUTLINED_FUNCTION_18(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_22_2(&v249 - v48);
  v49 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_17(v53);
  v256 = v0;
  v54 = sub_237EF7AE0();
  v300 = *(v54 + 16);
  v291 = v51 + 16;
  v290 = v51 + 88;
  v289 = *MEMORY[0x277D252B0];
  v275 = *MEMORY[0x277D252B8];
  v293 = v51;
  v288 = v51 + 96;
  v274 = v32 + 32;
  v273 = v22 + 88;
  v272 = *MEMORY[0x277D25310];
  v252 = v22;
  v271 = v22 + 96;
  v270 = v28 + 16;
  v309 = v10 + 16;
  v308 = v10 + 88;
  v311 = *MEMORY[0x277D25278];
  v305 = v10 + 96;
  v301 = v10;
  v55 = (v10 + 8);
  v56 = 0;
  v57 = v28 + 8;
  v58 = v35;
  v269 = v57;
  v268 = v32 + 8;
  v299 = v37 + 32;
  v297 = v37;
  v267 = (v37 + 16);
  v59 = MEMORY[0x277D84F90];
  v60 = MEMORY[0x277D84F90];
  v265 = v20;
  v298 = v35;
  v312 = v55;
  v282 = v49;
  for (i = v54; ; v54 = i)
  {
    v304 = v59;
    if (v56 == v300)
    {
      break;
    }

    if (v56 >= *(v54 + 16))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v32 = v293;
    OUTLINED_FUNCTION_28();
    v63 = v292;
    (*(v32 + 16))(v292, v61 + v62 + *(v32 + 72) * v56, v49);
    v64 = OUTLINED_FUNCTION_42_20();
    v66 = v65(v64);
    if (v66 == v289)
    {
      v67 = v20;
      v68 = v56;
      OUTLINED_FUNCTION_19_1();
      v69 = OUTLINED_FUNCTION_42_20();
      v70(v69);
      v71 = *(v280 + 8);
      if (!*(v71 + 16))
      {
        goto LABEL_107;
      }

      v72 = OUTLINED_FUNCTION_89_5();
      v73 = sub_237D2FC30(v72);
      if ((v74 & 1) == 0)
      {
        goto LABEL_107;
      }

      v75 = *(v277 + 72);
      v76 = v276;
      sub_237CF43B4(*(v71 + 56) + v75 * v73, v276);
      __swift_storeEnumTagSinglePayload(v76, 0, 1, v286);
      sub_237C65484(v76, &qword_27DEAFB20, &unk_237F09D50);
      if (!*(v71 + 16))
      {
        goto LABEL_89;
      }

      v77 = OUTLINED_FUNCTION_89_5();
      v78 = sub_237D2FC30(v77);
      if ((v79 & 1) == 0)
      {
        goto LABEL_90;
      }

      v303 = v60;
      v80 = v285;
      sub_237CF43B4(*(v71 + 56) + v78 * v75, v285);
      v81 = *v80;
      sub_237EF8260();
      sub_237CF42E8(v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = OUTLINED_FUNCTION_8_1();
        sub_237D0BE38(v145, v146, v147, v59);
        v59 = v148;
      }

      v83 = v59[2];
      v82 = v59[3];
      if (v83 >= v82 >> 1)
      {
        v149 = OUTLINED_FUNCTION_17_0(v82);
        sub_237D0BE38(v149, v83 + 1, 1, v59);
        v59 = v150;
      }

      v59[2] = v83 + 1;
      v59[v83 + 4] = v81;
      if (!*(v71 + 16))
      {
        goto LABEL_91;
      }

      v84 = OUTLINED_FUNCTION_89_5();
      v85 = sub_237D2FC30(v84);
      v87 = v86;

      if ((v87 & 1) == 0)
      {
        goto LABEL_92;
      }

      v88 = *(v71 + 56) + v85 * v75;
      v89 = v285;
      sub_237CF43B4(v88, v285);
      v58 = v298;
      (*v267)(v284, v89 + *(v286 + 20), v298);
      sub_237CF42E8(v89);
      v60 = v303;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v151 = OUTLINED_FUNCTION_8_1();
        sub_237D0BDF8(v151, v152, v153, v60);
        v60 = v154;
      }

      v55 = v312;
      v49 = v282;
      v90 = v68;
      v32 = *(v60 + 16);
      v91 = *(v60 + 24);
      v92 = v32 + 1;
      v20 = v67;
      if (v32 >= v91 >> 1)
      {
        v155 = OUTLINED_FUNCTION_17_0(v91);
        sub_237D0BDF8(v155, v32 + 1, 1, v60);
        v60 = v156;
      }
    }

    else
    {
      if (v66 != v275)
      {
        OUTLINED_FUNCTION_17_15();
        v249 = 304;
        OUTLINED_FUNCTION_85_4();
        goto LABEL_111;
      }

      v283 = v56;
      OUTLINED_FUNCTION_19_1();
      v93 = OUTLINED_FUNCTION_42_20();
      v94(v93);
      OUTLINED_FUNCTION_19_1();
      v95(v294, v63, v295);
      v32 = v278;
      sub_237EF79E0();
      OUTLINED_FUNCTION_19_1();
      v97 = v96(v32, v20);
      if (v97 != v272)
      {
        v246 = OUTLINED_FUNCTION_56_17();
        v247(v246, v20);
        OUTLINED_FUNCTION_9_68();
        v249 = 299;
        goto LABEL_110;
      }

      OUTLINED_FUNCTION_19_1();
      v98(v32, v20);
      swift_projectBox();
      OUTLINED_FUNCTION_19_1();
      v99(v302);

      v100 = sub_237EF7CA0();
      v101 = *(v100 + 16);
      if (v101)
      {
        v303 = v60;
        v314 = MEMORY[0x277D84F90];
        sub_237C632DC(0);
        v102 = v314;
        OUTLINED_FUNCTION_10_2();
        v281 = v100;
        v104 = v100 + v103;
        v307 = *(v105 + 72);
        v106 = *(v105 + 16);
        v107 = v311;
        do
        {
          v108 = v313;
          v109 = v310;
          v106(v313, v104, v310);
          v110 = v306;
          v106(v306, v108, v109);
          v111 = OUTLINED_FUNCTION_17_51();
          v113 = v112(v111);
          if (v113 == v107)
          {
            OUTLINED_FUNCTION_19_1();
            v118 = OUTLINED_FUNCTION_17_51();
            v119(v118);
            v116 = v109;
            v117 = *v110;
            v114 = *v55;
          }

          else
          {
            v114 = *v55;
            v115 = OUTLINED_FUNCTION_17_51();
            v114(v115);
            v116 = v109;
            v117 = 0;
          }

          (v114)(v313, v116);
          v314 = v102;
          v121 = *(v102 + 16);
          v120 = *(v102 + 24);
          if (v121 >= v120 >> 1)
          {
            v124 = OUTLINED_FUNCTION_17_0(v120);
            sub_237C632DC(v124);
            v102 = v314;
          }

          v107 = v311;
          v122 = v113 != v311;
          *(v102 + 16) = v121 + 1;
          v123 = v102 + 16 * v121;
          *(v123 + 32) = v117;
          *(v123 + 40) = v122;
          v104 += v307;
          --v101;
          v55 = v312;
        }

        while (v101);

        v20 = v265;
        v60 = v303;
        v49 = v282;
      }

      else
      {

        v102 = MEMORY[0x277D84F90];
      }

      v59 = v304;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v283;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v133 = OUTLINED_FUNCTION_8_1();
        sub_237D0BE38(v133, v134, v135, v59);
        v59 = v136;
      }

      v58 = v298;
      v127 = v59[2];
      v126 = v59[3];
      if (v127 >= v126 >> 1)
      {
        v137 = OUTLINED_FUNCTION_17_0(v126);
        sub_237D0BE38(v137, v127 + 1, 1, v59);
        v59 = v138;
      }

      v59[2] = v127 + 1;
      v59[v127 + 4] = v102;
      sub_237EF7C90();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v139 = OUTLINED_FUNCTION_8_1();
        sub_237D0BDF8(v139, v140, v141, v60);
        v60 = v142;
      }

      v55 = v312;
      v32 = *(v60 + 16);
      v128 = *(v60 + 24);
      v92 = v32 + 1;
      if (v32 >= v128 >> 1)
      {
        v143 = OUTLINED_FUNCTION_17_0(v128);
        sub_237D0BDF8(v143, v32 + 1, 1, v60);
        v60 = v144;
      }

      OUTLINED_FUNCTION_19_1();
      v129(v302, v296);
      OUTLINED_FUNCTION_19_1();
      v130(v294, v295);
    }

    v56 = v90 + 1;
    *(v60 + 16) = v92;
    OUTLINED_FUNCTION_10_2();
    (*(v132 + 32))(v60 + v131 + *(v132 + 72) * v32);
  }

  v157 = v258;
  if (!v59[2])
  {
    goto LABEL_114;
  }

  v158 = v59[4];
  v32 = v257;
  sub_237CA343C(v60);
  OUTLINED_FUNCTION_28_1(v32, 1, v58);
  v159 = v310;
  if (v160)
  {
    goto LABEL_113;
  }

  OUTLINED_FUNCTION_19_1();
  v161 = v262;
  v162(v262, v32, v58);
  sub_237EF8260();
  sub_237EF8260();
  v32 = sub_237C60BA8(1, v60);
  MEMORY[0x28223BE20](v32);
  v248[2] = v161;
  sub_237EBE6BC(sub_237EC8CCC, v248, v32, v163, v164, v165);
  LOBYTE(v161) = v166;
  swift_unknownObjectRelease();
  if ((v161 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_68();
    v249 = 312;
    goto LABEL_110;
  }

  v167 = *(v158 + 16);
  v168 = MEMORY[0x277D25270];
  if (v167)
  {
    v303 = v60;
    v314 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_76_7();
    v169 = v314;
    v307 = *(v301 + 104);
    LODWORD(v306) = *v168;
    v313 = (v301 + 104);
    v170 = (v301 + 32);
    v302 = v158;
    v171 = (v158 + 40);
    v172 = v250;
    do
    {
      if (*v171)
      {
        *v172 = 0;
        v173 = v306;
      }

      else
      {
        *v172 = *(v171 - 1);
        v173 = v311;
      }

      (v307)(v172, v173, v159);
      v174 = *v170;
      (*v170)(v157, v172, v159);
      v314 = v169;
      v175 = v157;
      v177 = *(v169 + 16);
      v176 = *(v169 + 24);
      if (v177 >= v176 >> 1)
      {
        v180 = OUTLINED_FUNCTION_17_0(v176);
        sub_237C63364(v180, v177 + 1, 1);
        v172 = v250;
        v169 = v314;
      }

      *(v169 + 16) = v177 + 1;
      OUTLINED_FUNCTION_10_2();
      v174(v169 + v178 + *(v179 + 72) * v177, v175, v159);
      v171 += 16;
      --v167;
      v59 = v304;
      v157 = v175;
    }

    while (v167);

    v168 = MEMORY[0x277D25270];
  }

  else
  {

    v169 = MEMORY[0x277D84F90];
  }

  v181 = v259;
  v182 = v279;
  if (v259 < 0)
  {
    v181 = *(v169 + 16) + v259;
  }

  v183 = v59[2];
  if ((v261 & 1) != 0 && !v183)
  {
    goto LABEL_105;
  }

  if (v183 != 1)
  {
    if (!v183)
    {
      goto LABEL_102;
    }

    if ((v181 & 0x8000000000000000) == 0)
    {
      v313 = (v301 + 104);
      LODWORD(v306) = *v168;
      v307 = v301 + 40;
      v303 = 16 * v181;
      v184 = v59 + 5;
      v185 = 1;
      while (1)
      {
        if (v181 >= *(v169 + 16))
        {
          goto LABEL_93;
        }

        v186 = (*(v301 + 80) + 32) & ~*(v301 + 80);
        v187 = *(v301 + 72) * v181;
        (*(v301 + 16))(v182, v169 + v186 + v187, v310);
        v188 = v311;
        v189 = OUTLINED_FUNCTION_6_68();
        if (v190(v189) == v188)
        {
          OUTLINED_FUNCTION_19_1();
          v191 = OUTLINED_FUNCTION_6_68();
          v192(v191);
          if ((v185 & 0x8000000000000000) != 0)
          {
            goto LABEL_94;
          }

          if (v185 >= v304[2])
          {
            goto LABEL_96;
          }

          v182 = v279;
          v193 = *v279;
          v194 = *(*v184 + 16);
          if (v194)
          {
            if (v181 >= v194)
            {
              goto LABEL_97;
            }

            v195 = *v184 + v303;
            if (*(v195 + 40))
            {
              goto LABEL_84;
            }

            v196 = *(v195 + 32);
            v197 = __OFADD__(v193, v196);
            v198 = v193 + v196;
            if (v197)
            {
              goto LABEL_100;
            }

            v199 = OUTLINED_FUNCTION_50_17(v198);
            v200(v199);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_237E64218(v169, v201, v202, v203);
              v169 = v218;
            }

            v204 = v263;
            if (v181 >= *(v169 + 16))
            {
              goto LABEL_101;
            }
          }

          else
          {
            v197 = __OFADD__(v193, 1);
            v210 = v193 + 1;
            if (v197)
            {
              goto LABEL_98;
            }

            v211 = OUTLINED_FUNCTION_50_17(v210);
            v212(v211);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_237E64218(v169, v213, v214, v215);
              v169 = v217;
            }

            v204 = v264;
            if (v181 >= *(v169 + 16))
            {
              goto LABEL_99;
            }
          }
        }

        else
        {
          v205 = OUTLINED_FUNCTION_6_68();
          v206(v205);
          *v266 = 0;
          (*v313)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237E64218(v169, v207, v208, v209);
            v169 = v216;
          }

          v204 = v266;
          v182 = v279;
          if (v181 >= *(v169 + 16))
          {
            goto LABEL_95;
          }
        }

        (*v307)(v169 + v186 + v187, v204, v310);
LABEL_84:
        ++v185;
        ++v184;
        if (v183 == v185)
        {
          goto LABEL_85;
        }
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    v237 = v276;
    __swift_storeEnumTagSinglePayload(v276, 1, 1, v286);
    sub_237C65484(v237, &qword_27DEAFB20, &unk_237F09D50);
    v314 = 0;
    v315 = 0xE000000000000000;
    v32 = 35;
    sub_237EF9330();

    v314 = 0x20726F736E6554;
    v315 = 0xE700000000000000;
    v238 = OUTLINED_FUNCTION_89_5();
    MEMORY[0x2383E0710](v238);
    MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237EFD230);
    OUTLINED_FUNCTION_17_15();
    v249 = 35;
    v241 = "Fatal error";
    v242 = "CreateMLComponents/MLProgramBuilder.swift";
    v243 = 11;
    v244 = 2;
    for (j = 41; ; j = 45)
    {
      sub_237EF9740(v241, v243, v244, v239, v240, v242, j, 2, v249);
      __break(1u);
LABEL_113:
      sub_237C65484(v32, &qword_27DEB6A20, qword_237F1E9F8);
LABEL_114:
      OUTLINED_FUNCTION_9_68();
      v249 = 309;
LABEL_110:
      OUTLINED_FUNCTION_19_51();
LABEL_111:
      ;
    }
  }

LABEL_85:
  sub_237EF7CC0();
  OUTLINED_FUNCTION_108_2(&v314);
  sub_237CF196C(0x7461636E6F63, 0xE600000000000000);
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_7_80();
  v221 = *(v220 + 72);
  OUTLINED_FUNCTION_17_59();
  v224 = v223 & ~v222;
  v225 = swift_allocObject();
  *(v225 + 16) = xmmword_237F08A50;
  v226 = (v225 + v224);
  v227 = *(v219 + 48);
  *v226 = 0x7365756C6176;
  *(v226 + 1) = 0xE600000000000000;
  v228 = sub_237EF7B00();
  OUTLINED_FUNCTION_4();
  (*(v229 + 16))(&v226[v227], v256, v228);
  OUTLINED_FUNCTION_71_5(&v226[v221]);
  if (v181 < v230)
  {
    goto LABEL_103;
  }

  if (v181 > 0x7FFFFFFF)
  {
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  sub_237EF7A90();
  OUTLINED_FUNCTION_53_14(&v226[2 * v221]);
  sub_237EF7A70();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  v231 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v231);
  OUTLINED_FUNCTION_18_49();
  *(swift_allocObject() + 16) = xmmword_237F03530;
  v232 = v252;
  OUTLINED_FUNCTION_91_2();
  v233 = v260;
  v234 = v265;
  v235(v251, v260, v265);
  sub_237EF8260();
  OUTLINED_FUNCTION_5_12();
  sub_237EF7880();
  v236 = v253;
  sub_237EF7BF0();
  sub_237CF33F8();
  (*(v254 + 8))(v236, v255);
  (*(v232 + 8))(v233, v234);

  (*(v297 + 8))(v262, v298);

  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC2368()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_98_4();
  v50 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v60 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v59 = v3;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_22_1();
  v49 = v5;
  OUTLINED_FUNCTION_12_1();
  v6 = sub_237EF7CD0();
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v53 = v9;
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v51 = v10;
  OUTLINED_FUNCTION_12_1();
  v52 = sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_90_2();
  sub_237CF1674();
  OUTLINED_FUNCTION_73_5(&v64);
  v12 = OUTLINED_FUNCTION_90_2();
  sub_237CF11B8(v12, v13);
  v15 = v14;
  OUTLINED_FUNCTION_73_5(&v63);
  v16 = OUTLINED_FUNCTION_90_2();
  sub_237CF12A0(v16, v17);
  OUTLINED_FUNCTION_73_5(&v62);
  sub_237CF196C(v0, 0xE700000000000000);
  v55 = v15;
  OUTLINED_FUNCTION_110_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_82_3();
  v19 = *(v18 + 72);
  OUTLINED_FUNCTION_17_59();
  v22 = v21 & ~v20;
  v23 = OUTLINED_FUNCTION_55_11();
  *(v23 + 16) = xmmword_237F04760;
  v24 = (v23 + v22);
  OUTLINED_FUNCTION_23_40();
  *v24 = v25;
  v24[1] = v26;
  sub_237EF8260();
  OUTLINED_FUNCTION_90_2();
  sub_237EF7A20();
  OUTLINED_FUNCTION_71_5((v24 + v19));
  if (v27 < v28)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_94_4();
  if (!(v30 ^ v31 | v29))
  {
    goto LABEL_16;
  }

  sub_237EF7A90();
  sub_237EF7B00();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  OUTLINED_FUNCTION_25_6();
  v32 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v32);
  OUTLINED_FUNCTION_18_49();
  *(OUTLINED_FUNCTION_75_5(v36, (v34 & ~v33) + v35) + 16) = xmmword_237F03530;
  v37 = *(v55 + 16);
  if (v37)
  {
    v61 = MEMORY[0x277D84F90];
    sub_237C63364(0, v37, 0);
    v58 = *(v60 + 104);
    v57 = *MEMORY[0x277D25278];
    v56 = *MEMORY[0x277D25270];
    v38 = (v55 + 40);
    do
    {
      if (*v38)
      {
        *v59 = 0;
        v39 = v56;
      }

      else
      {
        *v59 = *(v38 - 1);
        v39 = v57;
      }

      v58(v59, v39, v50);
      v40 = *(v60 + 32);
      v41 = OUTLINED_FUNCTION_42_20();
      v40(v41);
      v43 = *(v61 + 16);
      v42 = *(v61 + 24);
      if (v43 >= v42 >> 1)
      {
        v46 = OUTLINED_FUNCTION_17_0(v42);
        sub_237C63364(v46, v43 + 1, 1);
      }

      *(v61 + 16) = v43 + 1;
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_92_4();
      (v40)(v44 + v45 * v43, v49, v50);
      v38 += 16;
      --v37;
    }

    while (v37);

    OUTLINED_FUNCTION_98_4();
  }

  else
  {
  }

  OUTLINED_FUNCTION_68_7();
  sub_237EF7CC0();

  sub_237EF8260();
  OUTLINED_FUNCTION_81_1();
  sub_237EF7880();
  sub_237EF7BF0();
  sub_237CF33F8();
  (*(v53 + 8))(v51, v54);
  v47 = OUTLINED_FUNCTION_37_26();
  v48(v47, v52);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC28F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  v109 = v22;
  v108 = v23;
  v125 = v24;
  v126 = v25;
  v100 = v26;
  v28 = v27;
  OUTLINED_FUNCTION_40_18();
  v111 = sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v110 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v31);
  *&v116 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v115 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v34);
  v104 = sub_237EF79F0();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  v40 = &v100 - v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_1();
  v124 = v42;
  OUTLINED_FUNCTION_12_1();
  v43 = sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_5();
  v49 = v48 - v47;
  v127 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v120 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_61_9();
  v119 = v21;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v55);
  OUTLINED_FUNCTION_22_44();
  v106 = v20;
  v107 = v28;
  sub_237CF1674();
  v114 = *MEMORY[0x277D252D8];
  v56 = *(v45 + 104);
  v56(v49);
  v113 = v56;
  v57 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_33_27();
  sub_237EF7CC0();
  v58 = *(v45 + 8);
  v59 = OUTLINED_FUNCTION_86_3();
  v58(v59);
  v122 = v45 + 8;
  v60 = *MEMORY[0x277D252E8];
  v123 = v43;
  (v56)(v49, v60, v43);
  v61 = v118;
  OUTLINED_FUNCTION_33_27();
  sub_237EF7CC0();
  v62 = OUTLINED_FUNCTION_86_3();
  v58(v62);
  OUTLINED_FUNCTION_18_47();
  v63 = v61;
  sub_237EF7C80();
  v64 = v120 + 8;
  v65 = *(v120 + 8);
  v65(v63, v127);
  v66 = OUTLINED_FUNCTION_12_11();
  v118 = v64;
  v117 = v65;
  (v65)(v66);
  v67 = v114;
  v68 = v123;
  v69 = v113;
  (v113)(v49, v114, v123);
  sub_237CF1A18();
  (v58)(v49, v68);
  v102 = v45 + 104;
  v69(v49, v67, v68);
  OUTLINED_FUNCTION_33_27();
  sub_237EF7CC0();
  v105 = v49;
  v101 = v58;
  (v58)(v49, v68);
  v70 = v100;
  v71 = *(v100 + 16);
  *v112 = v71;
  (*(v115 + 104))();
  if (v71)
  {
    v128 = v57;
    sub_237C633BC(0, v71, 0);
    v57 = v128;
    v72 = v70 + 40;
    v73 = v104;
    do
    {
      sub_237EF8260();
      sub_237EF7A10();
      v128 = v57;
      v75 = *(v57 + 16);
      v74 = *(v57 + 24);
      if (v75 >= v74 >> 1)
      {
        OUTLINED_FUNCTION_17_0(v74);
        OUTLINED_FUNCTION_95_2();
        sub_237C633BC(v77, v78, v79);
        v57 = v128;
      }

      *(v57 + 16) = v75 + 1;
      OUTLINED_FUNCTION_28();
      (*(v36 + 32))(v57 + v76 + *(v36 + 72) * v75, v40, v73);
      v72 += 16;
      --v71;
    }

    while (v71);
  }

  else
  {
    v73 = v104;
  }

  v128 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A10, &qword_237F1E9F0);
  sub_237EC8C68();
  v80 = v124;
  sub_237EF7990();

  v81 = OUTLINED_FUNCTION_56_17();
  v82(v81, v116);
  OUTLINED_FUNCTION_19_32();
  v83();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_78_3();
  v85 = *(v84 + 72);
  OUTLINED_FUNCTION_17_59();
  v88 = v87 & ~v86;
  v89 = OUTLINED_FUNCTION_55_11();
  v116 = xmmword_237F04760;
  *(v89 + 16) = xmmword_237F04760;
  v90 = v89 + v88;
  strcpy(v90, "probabilities");
  *(v90 + 14) = -4864;
  sub_237EF8260();
  sub_237EF7A20();
  v91 = (v90 + v85);
  *v91 = 0x73657373616C63;
  v91[1] = 0xE700000000000000;
  (*(v36 + 16))(v103, v80, v73);
  sub_237EF7AA0();
  sub_237EF7B00();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  OUTLINED_FUNCTION_40_18();
  v92 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v92);
  OUTLINED_FUNCTION_17_59();
  *(OUTLINED_FUNCTION_107_3() + 16) = v116;
  v93 = v105;
  v94 = v123;
  (v113)(v105, v114, v123);
  sub_237EF8260();
  v95 = v73;
  v96 = v119;
  sub_237EF7CC0();
  v101(v93, v94);
  sub_237EF7880();
  (*(v120 + 16))(v96, v121, v127);
  sub_237EF8260();
  sub_237EF7880();
  OUTLINED_FUNCTION_74_4(0x7966697373616C63, 0xE800000000000000);
  sub_237CF33F8();
  v97 = OUTLINED_FUNCTION_56_17();
  v98(v97, v111);
  (*(v36 + 8))(v124, v95);
  OUTLINED_FUNCTION_6_73();
  OUTLINED_FUNCTION_19_32();
  v99();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC32C8()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v47 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v52 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_2();
  v51 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_1();
  v46 = v8;
  OUTLINED_FUNCTION_12_1();
  v9 = sub_237EF7CD0();
  v10 = OUTLINED_FUNCTION_18(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_33_27();
  sub_237CF1674();
  OUTLINED_FUNCTION_108_2(&v56);
  v13 = OUTLINED_FUNCTION_33_27();
  sub_237CF11B8(v13, v14);
  v16 = v15;
  OUTLINED_FUNCTION_108_2(&v55);
  v17 = OUTLINED_FUNCTION_33_27();
  sub_237CF12A0(v17, v18);
  OUTLINED_FUNCTION_108_2(&v54);
  sub_237CF196C(v3, v1);
  sub_237CF1A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_18_49();
  v21 = v20 & ~v19;
  v24 = OUTLINED_FUNCTION_75_5(v23, v21 + v22);
  *(v24 + 16) = xmmword_237F03530;
  v25 = (v24 + v21);
  OUTLINED_FUNCTION_23_40();
  *v25 = v26;
  v25[1] = v27;
  sub_237EF8260();
  OUTLINED_FUNCTION_33_27();
  sub_237EF7A20();
  sub_237EF7B00();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  OUTLINED_FUNCTION_25_6();
  v28 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v28);
  OUTLINED_FUNCTION_18_49();
  *(OUTLINED_FUNCTION_75_5(v32, (v30 & ~v29) + v31) + 16) = xmmword_237F03530;
  v33 = *(v16 + 16);
  if (v33)
  {
    v53 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_76_7();
    v50 = *(v52 + 104);
    v49 = *MEMORY[0x277D25278];
    v48 = *MEMORY[0x277D25270];
    v34 = (v52 + 32);
    v35 = (v16 + 40);
    do
    {
      if (*v35)
      {
        *v51 = 0;
        v36 = v48;
      }

      else
      {
        *v51 = *(v35 - 1);
        v36 = v49;
      }

      v50(v51, v36, v47);
      v37 = *v34;
      (*v34)(v46, v51, v47);
      v39 = *(v53 + 16);
      v38 = *(v53 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_237C63364(v38 > 1, v39 + 1, 1);
      }

      *(v53 + 16) = v39 + 1;
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_92_4();
      v37(v40 + v41 * v39, v46, v47);
      v35 += 16;
      --v33;
    }

    while (v33);
  }

  OUTLINED_FUNCTION_68_7();
  sub_237EF7CC0();

  sub_237EF8260();
  OUTLINED_FUNCTION_26_33();
  sub_237EF7880();
  sub_237EF7BF0();
  sub_237CF33F8();
  v42 = OUTLINED_FUNCTION_88_5();
  v43(v42);
  v44 = OUTLINED_FUNCTION_37_26();
  v45(v44);
  OUTLINED_FUNCTION_26_33();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC3844()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  OUTLINED_FUNCTION_101_4();
  v43 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v51 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v50 = v4;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_22_1();
  v42 = v6;
  OUTLINED_FUNCTION_12_1();
  v7 = sub_237EF7CD0();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v45 = v10;
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v44 = v11;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_67_4();
  sub_237CF1674();
  OUTLINED_FUNCTION_63_8(&v55);
  OUTLINED_FUNCTION_18_14();
  sub_237CF1674();
  OUTLINED_FUNCTION_63_8(&v54);
  v13 = OUTLINED_FUNCTION_67_4();
  sub_237CF12A0(v13, v14);
  OUTLINED_FUNCTION_63_8(&v53);
  sub_237CF196C(1701603700, 0xE400000000000000);
  sub_237CF1A18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_82_3();
  v16 = *(v15 + 72);
  OUTLINED_FUNCTION_17_59();
  v19 = v18 & ~v17;
  v20 = OUTLINED_FUNCTION_55_11();
  *(v20 + 16) = xmmword_237F04760;
  v21 = (v20 + v19);
  OUTLINED_FUNCTION_23_40();
  *v21 = v22;
  v21[1] = v23;
  sub_237EF8260();
  OUTLINED_FUNCTION_67_4();
  sub_237EF7A20();
  v24 = (v21 + v16);
  *v24 = 1936745842;
  v24[1] = 0xE400000000000000;
  sub_237EF8260();
  sub_237EF7A20();
  sub_237EF7B00();
  sub_237EF8230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  OUTLINED_FUNCTION_25_6();
  v25 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v25);
  OUTLINED_FUNCTION_18_49();
  *(OUTLINED_FUNCTION_75_5(v29, (v27 & ~v26) + v28) + 16) = xmmword_237F03530;
  v30 = *(v1 + 16);
  if (v30)
  {
    v52 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_76_7();
    v49 = *(v51 + 104);
    v48 = *MEMORY[0x277D25278];
    v47 = *MEMORY[0x277D25270];
    v31 = (v1 + 40);
    do
    {
      if (*v31)
      {
        *v50 = 0;
        v32 = v47;
      }

      else
      {
        *v50 = *(v31 - 1);
        v32 = v48;
      }

      v49(v50, v32, v43);
      v33 = *(v51 + 32);
      v34 = OUTLINED_FUNCTION_55_1();
      v33(v34);
      v36 = *(v52 + 16);
      v35 = *(v52 + 24);
      if (v36 >= v35 >> 1)
      {
        v39 = OUTLINED_FUNCTION_17_0(v35);
        sub_237C63364(v39, v36 + 1, 1);
      }

      *(v52 + 16) = v36 + 1;
      OUTLINED_FUNCTION_10_2();
      OUTLINED_FUNCTION_92_4();
      (v33)(v37 + v38 * v36, v42, v43);
      v31 += 16;
      --v30;
    }

    while (v30);
  }

  OUTLINED_FUNCTION_68_7();
  sub_237EF7CC0();

  sub_237EF8260();
  OUTLINED_FUNCTION_81_1();
  sub_237EF7880();
  sub_237EF7BF0();
  sub_237CF33F8();
  (*(v45 + 8))(v44, v46);
  v40 = OUTLINED_FUNCTION_37_26();
  v41(v40);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_38_0();
}

void sub_237EC3DB0()
{
  OUTLINED_FUNCTION_37_0();
  v101 = v4;
  v106 = v5;
  v116 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_101_4();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v97 = v10;
  v98 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v95 = v11;
  OUTLINED_FUNCTION_12_1();
  v96 = sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v94 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v91 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  v103 = v16;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v92 = v18;
  v93 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_3();
  v102 = v19;
  OUTLINED_FUNCTION_12_1();
  v20 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_2();
  v105 = v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_36_24();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  v107 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  v112 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_58_10();
  MEMORY[0x28223BE20](v31);
  v33 = (&v89 - v32);
  OUTLINED_FUNCTION_22_44();
  OUTLINED_FUNCTION_44_16();
  sub_237CF1674();
  v104 = v0;
  OUTLINED_FUNCTION_48_16(v120);
  v34 = v120;
  v99 = v2;
  v100 = v8;
  v35 = OUTLINED_FUNCTION_44_16();
  sub_237CF11B8(v35, v36);
  v38 = v37;
  *v33 = 0;
  v39 = v22;
  v40 = (v22 + 104);
  v41 = *(v22 + 104);
  v110 = *MEMORY[0x277D25270];
  v41(v33);
  v42 = *(v38 + 16) + 1;
  v113 = v33;
  v43 = sub_237CDC0C4(v33, v42);
  v111 = v116 + 1;
  if (__OFADD__(v116, 1))
  {
    goto LABEL_47;
  }

  v34 = v43;
  *v3 = v106;
  LODWORD(v109) = *MEMORY[0x277D25278];
  v41(v3);
  v33 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_48:
    sub_237E64218(v34, v44, v45, v46);
    v34 = v88;
  }

  v47 = v112;
  if ((v111 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v111 >= *(v34 + 2))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_28();
  v48 = v33;
  v33 = (v34 + v49);
  v117 = *(v50 + 32);
  v114 = v52;
  v115 = v50;
  v52(v34 + v49 + v117 * v51, v48, v20);
  if ((v116 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (*(v38 + 16) <= v116)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v90 = v39;
  v53 = v38 + 16 * v116;
  if (*(v53 + 40))
  {
    v54 = v113;
    *v113 = 0;
    (v41)(v54, v110, v20);
    v55 = v116;
    v53 = *(v34 + 2);
    if (v53 > v116)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v56 = *(v53 + 32);
  v57 = __OFSUB__(v56, v106);
  v58 = v56 - v106;
  v54 = v113;
  if (v57)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v101)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v59 = v58 == 0x8000000000000000 && v101 == -1;
  if (v59)
  {
    goto LABEL_62;
  }

  v60 = v58 / v101;
  v57 = __OFADD__(v60, 1);
  v61 = v60 + 1;
  if (v57)
  {
    goto LABEL_60;
  }

  *v113 = v61;
  (v41)(v54, v109, v20);
  v55 = v116;
  if (*(v34 + 2) > v116)
  {
LABEL_18:
    v109 = v41;
    v114(v33 + v117 * v55, v54, v20);
    v113 = v34;
    v41 = *(v34 + 2);
    if (v41)
    {
      v108 = v40;
      v39 = v20;
      v34 = 0;
      v40 = (v90 + 32);
      v20 = v38;
      v38 += 24;
      v62 = v116;
      while (v34 >= v62)
      {
        if (v111 < v34)
        {
          if (v34 > *(v20 + 16))
          {
            goto LABEL_45;
          }

          if (*v38)
          {
            *v1 = 0;
            (v109)(v1, v110, v39);
          }

          else
          {
            v65 = v1;
            v66 = v105;
            sub_237EF78D0();
            v67 = v65;
            v68 = v66;
            v1 = v65;
            v47 = v112;
            (*v40)(v67, v68, v39);
          }

          v44 = v1;
          if (v34 >= v113[2])
          {
            goto LABEL_46;
          }

LABEL_33:
          v114(v33, v44, v39);
          v62 = v116;
        }

        v34 = (v34 + 1);
        v33 = (v33 + v117);
        v38 += 16;
        if (v41 == v34)
        {
          goto LABEL_35;
        }
      }

      if (v34 >= *(v20 + 16))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (*(v38 + 16))
      {
        *v47 = 0;
        (v109)(v47, v110, v39);
      }

      else
      {
        v63 = v107;
        sub_237EF78D0();
        v64 = v63;
        v47 = v112;
        (*v40)(v112, v64, v39);
      }

      v44 = v47;
      if (v34 >= v113[2])
      {
        goto LABEL_44;
      }

      goto LABEL_33;
    }

LABEL_35:

    OUTLINED_FUNCTION_77_4(&v119);
    sub_237CF12A0(v99, v102);
    sub_237EF7CC0();

    OUTLINED_FUNCTION_77_4(&v118);
    v69 = OUTLINED_FUNCTION_97_4();
    sub_237CF196C(v69, v70);
    sub_237CF0C9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
    OUTLINED_FUNCTION_7_80();
    v72 = *(v71 + 72);
    OUTLINED_FUNCTION_17_59();
    v75 = v74 & ~v73;
    v76 = OUTLINED_FUNCTION_55_11();
    *(v76 + 16) = xmmword_237F105F0;
    v77 = (v76 + v75);
    OUTLINED_FUNCTION_23_40();
    *v77 = v78;
    v77[1] = v79;
    sub_237EF8260();
    sub_237EF7A20();
    v80 = (v77 + v72);
    *v80 = 1936291937;
    v80[1] = 0xE400000000000000;
    if (v116 <= 0x7FFFFFFF)
    {
      sub_237EF7A90();
      v81 = (v77 + 2 * v72);
      *v81 = 1702521203;
      v81[1] = 0xE400000000000000;
      if (v106 >= 0xFFFFFFFF80000000)
      {
        OUTLINED_FUNCTION_94_4();
        if (v82 ^ v57 | v59)
        {
          sub_237EF7A90();
          v83 = (v77 + 3 * v72);
          *v83 = 0x656469727473;
          v83[1] = 0xE600000000000000;
          if (v101 >= 0xFFFFFFFF80000000)
          {
            OUTLINED_FUNCTION_94_4();
            if (v82 ^ v57 | v59)
            {
              sub_237EF7A90();
              sub_237EF7B00();
              sub_237EF8230();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
              OUTLINED_FUNCTION_102_2();
              v84 = sub_237EF78C0();
              OUTLINED_FUNCTION_6_1(v84);
              OUTLINED_FUNCTION_18_49();
              *(swift_allocObject() + 16) = xmmword_237F03530;
              (*(v94 + 16))(v91, v103, v96);
              sub_237EF8260();
              OUTLINED_FUNCTION_65_7();
              sub_237EF7880();
              v85 = v95;
              sub_237EF7BF0();
              sub_237CF33F8();
              (*(v97 + 8))(v85, v98);
              v86 = OUTLINED_FUNCTION_69_8();
              v87(v86);
              (*(v92 + 8))(v102, v93);
              OUTLINED_FUNCTION_65_7();
              OUTLINED_FUNCTION_38_0();
              return;
            }

            goto LABEL_57;
          }

LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

void sub_237EC4744()
{
  OUTLINED_FUNCTION_37_0();
  v156 = v4;
  v163 = v5;
  v164 = v6;
  v8 = v7;
  OUTLINED_FUNCTION_101_4();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v153 = v10;
  v154 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v152 = v11;
  OUTLINED_FUNCTION_12_1();
  v146 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v140 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v141 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  v139 = v16;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v150 = v18;
  v151 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v147 = v19;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_1();
  v159 = v21;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v148 = v23;
  v149 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_3();
  v158 = v24;
  OUTLINED_FUNCTION_12_1();
  v166 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v171 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_2();
  v169 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  v142 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_22_1();
  v155 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610, &qword_237F18070);
  v33 = OUTLINED_FUNCTION_18(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_2();
  v144 = v34;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_35_24();
  v36 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_58_10();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8_16();
  v143 = v41;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8_16();
  v168 = v43;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_16();
  v170 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  v48 = &v136 - v47;
  OUTLINED_FUNCTION_49_16(&v178);
  v161 = v2;
  v162 = v8;
  OUTLINED_FUNCTION_44_16();
  sub_237CF1674();
  v49 = *(v38 + 16);
  v157 = v38 + 16;
  v160 = v49;
  v49(v48, v163, v36);
  v50 = *(v38 + 88);
  v51 = OUTLINED_FUNCTION_39_9();
  v52 = v50(v51);
  v53 = *MEMORY[0x277D252B0];
  v165 = v0;
  v137 = v3;
  v167 = v50;
  if (v52 == v53)
  {
    v54 = OUTLINED_FUNCTION_39_9();
    v55(v54);
    memcpy(v177, v0, sizeof(v177));
    OUTLINED_FUNCTION_55_1();
    sub_237CF1674();
  }

  else
  {
    v56 = OUTLINED_FUNCTION_39_9();
    v57(v56);
  }

  sub_237EC52C8(v164, v1);
  v58 = OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_28_1(v58, v59, v36);
  v60 = v160;
  v61 = v170;
  v145 = v36;
  v138 = v38;
  if (v62)
  {
    sub_237C65484(v1, &qword_27DEB4610, &qword_237F18070);
  }

  else
  {
    (*(v38 + 32))(v170, v1, v36);
    v63 = v168;
    v60(v168, v61, v36);
    v64 = v167(v63, v36);
    if (v64 == v53)
    {
      (*(v38 + 96))(v63, v36);
      OUTLINED_FUNCTION_63_8(&v176);
      OUTLINED_FUNCTION_5_12();
      sub_237CF1674();

      v65 = OUTLINED_FUNCTION_39_9();
      v66(v65);
    }

    else
    {
      v67 = *(v38 + 8);
      v68 = OUTLINED_FUNCTION_39_9();
      v67(v68);
      (v67)(v63, v36);
    }
  }

  OUTLINED_FUNCTION_63_8(&v175);
  sub_237CF11B8(v161, v162);
  v70 = v69;
  v71 = *(v69 + 16);
  if (v71)
  {
    v174[0] = MEMORY[0x277D84F90];
    sub_237C63364(0, v71, 0);
    v72 = v174[0];
    v73 = v171 + 104;
    v170 = *(v171 + 104);
    LODWORD(v168) = *MEMORY[0x277D25278];
    LODWORD(v167) = *MEMORY[0x277D25270];
    v74 = (v171 + 32);
    v136 = v70;
    v75 = (v70 + 40);
    v76 = v166;
    v77 = v142;
    do
    {
      v78 = v170;
      v79 = v169;
      if (*v75)
      {
        *v169 = 0;
        v80 = v167;
      }

      else
      {
        *v169 = *(v75 - 1);
        v80 = v168;
      }

      v81 = v73;
      v78(v79, v80, v76);
      v82 = *v74;
      v83 = OUTLINED_FUNCTION_9_9();
      v82(v83);
      v84 = v72;
      v174[0] = v72;
      v86 = *(v72 + 16);
      v85 = *(v72 + 24);
      if (v86 >= v85 >> 1)
      {
        v90 = OUTLINED_FUNCTION_17_0(v85);
        sub_237C63364(v90, v86 + 1, 1);
        v76 = v166;
        v84 = v174[0];
      }

      *(v84 + 16) = v86 + 1;
      OUTLINED_FUNCTION_10_2();
      v72 = v87;
      (v82)(v87 + v88 + *(v89 + 72) * v86, v77, v76);
      v75 += 16;
      --v71;
      v73 = v81;
    }

    while (v71);

    v91 = v72;
    v92 = v170;
    v93 = v168;
  }

  else
  {

    v93 = *MEMORY[0x277D25278];
    v92 = *(v171 + 104);
    v91 = MEMORY[0x277D84F90];
  }

  v94 = *(v91 + 16);
  v95 = v155;
  *v155 = v156;
  v92(v95, v93, v166);
  v96 = v91;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v94)
    {
      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_237E64218(v91, v97, v98, v99);
  v96 = v135;
  if (!v94)
  {
    goto LABEL_28;
  }

LABEL_22:
  if (v94 > *(v96 + 16))
  {
LABEL_29:
    __break(1u);
    return;
  }

  (*(v171 + 40))(v96 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * (v94 - 1), v95, v166);
  OUTLINED_FUNCTION_63_8(v174);
  sub_237CF12A0(v161, v158);
  OUTLINED_FUNCTION_12_11();
  sub_237EF7CC0();

  OUTLINED_FUNCTION_63_8(&v173);
  v100 = sub_237CF196C(0x7261656E696CLL, 0xE600000000000000);
  v170 = v101;
  v171 = v100;
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_78_3();
  v103 = *(v102 + 72);
  OUTLINED_FUNCTION_17_59();
  v106 = v105 & ~v104;
  v107 = OUTLINED_FUNCTION_55_11();
  *(v107 + 16) = xmmword_237F04760;
  v108 = (v107 + v106);
  OUTLINED_FUNCTION_23_40();
  *v108 = v109;
  v108[1] = v110;
  sub_237EF8260();
  sub_237EF7A20();
  v111 = (v108 + v103);
  OUTLINED_FUNCTION_60_11();
  *v111 = v112;
  v111[1] = 0xE600000000000000;
  v113 = v143;
  v114 = v145;
  v115 = v160;
  v160(v143, v163, v145);
  sub_237EF7AC0();
  v116 = sub_237EF8230();
  v117 = v144;
  sub_237EC52C8(v164, v144);
  v118 = OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_28_1(v118, v119, v114);
  if (v62)
  {
    sub_237C65484(v117, &qword_27DEB4610, &qword_237F18070);
  }

  else
  {
    v120 = v137;
    v121 = OUTLINED_FUNCTION_42_20();
    v122(v121);
    v115(v113, v120, v114);
    sub_237EF7AC0();
    v123 = OUTLINED_FUNCTION_9_9();
    v124(v123);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v172 = v116;
    OUTLINED_FUNCTION_47_17(isUniquelyReferenced_nonNull_native, v126, v127, isUniquelyReferenced_nonNull_native);
    v128 = OUTLINED_FUNCTION_6_73();
    v129(v128);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  OUTLINED_FUNCTION_40_18();
  v130 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v130);
  *(OUTLINED_FUNCTION_8_88() + 16) = xmmword_237F03530;
  (*(v150 + 16))(v147, v159, v151);
  sub_237EF8260();
  sub_237EF7880();
  OUTLINED_FUNCTION_74_4(0x7261656E696CLL, 0xE600000000000000);
  sub_237CF33F8();
  v131 = OUTLINED_FUNCTION_37_26();
  v132(v131);
  v133 = OUTLINED_FUNCTION_6_73();
  v134(v133);
  (*(v148 + 8))(v158, v149);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237EC52C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610, &qword_237F18070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_237EC5338()
{
  OUTLINED_FUNCTION_37_0();
  v142 = v3;
  v127 = v4;
  v139 = v5;
  v148 = v6;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_101_4();
  sub_237EF7C70();
  OUTLINED_FUNCTION_1();
  v135 = v12;
  v136 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v134 = v13;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_12_1();
  sub_237EF7CD0();
  OUTLINED_FUNCTION_1();
  v133 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v130 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_1();
  v146 = v19;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7B10();
  OUTLINED_FUNCTION_1();
  v131 = v21;
  v132 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_3();
  v145 = v22;
  OUTLINED_FUNCTION_12_1();
  v143 = sub_237EF78E0();
  OUTLINED_FUNCTION_1();
  v150 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  v126 = v25;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  v140 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22_1();
  v152 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4610, &qword_237F18070);
  v31 = OUTLINED_FUNCTION_18(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_2();
  v129 = v32;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_35_24();
  v34 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_2();
  v125 = v38;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_16();
  v137 = v40;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_8_16();
  v144 = v42;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  v45 = OUTLINED_FUNCTION_100_4();
  OUTLINED_FUNCTION_49_16(v45);
  v149 = v2;
  OUTLINED_FUNCTION_97_4();
  sub_237CF1674();
  OUTLINED_FUNCTION_91_2();
  v138 = v8;
  v147 = v46;
  (v46)(v1, v8, v34);
  v47 = *(v36 + 88);
  v48 = OUTLINED_FUNCTION_12_11();
  v49 = v47(v48);
  v128 = *MEMORY[0x277D252B0];
  if (v49 == *MEMORY[0x277D252B0])
  {
    v50 = OUTLINED_FUNCTION_12_11();
    v51(v50);
    OUTLINED_FUNCTION_63_8(&v158);
    sub_237CF1674();
  }

  else
  {
    v52 = OUTLINED_FUNCTION_12_11();
    v53(v52);
  }

  v54 = OUTLINED_FUNCTION_67_4();
  sub_237EC52C8(v54, v55);
  v56 = OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_28_1(v56, v57, v34);
  if (v88)
  {
    sub_237C65484(v0, &qword_27DEB4610, &qword_237F18070);
  }

  else
  {
    v58 = OUTLINED_FUNCTION_33_27();
    v59(v58);
    v60 = OUTLINED_FUNCTION_26_33();
    v147(v60);
    v61 = OUTLINED_FUNCTION_12_11();
    v62 = v47(v61);
    if (v62 == v128)
    {
      v63 = OUTLINED_FUNCTION_12_11();
      v64(v63);
      OUTLINED_FUNCTION_59_11(&v157);
      OUTLINED_FUNCTION_9_9();
      sub_237CF1674();

      v65 = OUTLINED_FUNCTION_86_3();
      v66(v65);
    }

    else
    {
      v67 = *(v36 + 8);
      v68 = OUTLINED_FUNCTION_86_3();
      v67(v68);
      v69 = OUTLINED_FUNCTION_12_11();
      v67(v69);
    }
  }

  v70 = v152;
  OUTLINED_FUNCTION_59_11(&v156);
  sub_237CF11B8(v2, v10);
  v72 = v71;
  *v152 = 0;
  v73 = *MEMORY[0x277D25270];
  v153 = *(v150 + 104);
  (v153)(v152, v73, v143);
  v74 = sub_237CDC0C4(v152, *(v72 + 16));
  if (!*(v72 + 16))
  {
    __break(1u);
LABEL_39:
    sub_237E64218(v70, v75, v76, v77);
    v70 = v124;
    goto LABEL_15;
  }

  v70 = v74;
  v144 = v34;
  v78 = MEMORY[0x277D25278];
  if (*(v72 + 40))
  {
    *v140 = 0;
  }

  else
  {
    *v140 = *(v72 + 32);
    v73 = *v78;
  }

  (v153)(v140, v73, v143);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_15:
  v79 = v150;
  if (!*(v70 + 16))
  {
    __break(1u);
    goto LABEL_41;
  }

  v141 = v36;
  v80 = *(v150 + 40);
  OUTLINED_FUNCTION_28();
  v82 = v70 + v81;
  v80(v70 + v81);
  *v152 = v139;
  v151 = *MEMORY[0x277D25278];
  v153(v152);
  if (*(v70 + 16) < 2uLL)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v83 = *(v79 + 72);
  (v80)(v82 + v83, v152, v143);
  v84 = *(v72 + 16);
  if (v84 < 3)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ((*(v72 + 72) & 1) == 0)
  {
    *v152 = *(v72 + 64);
    (v153)(v152, v151, v143);
    if (*(v70 + 16) < 3uLL)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    (v80)(v82 + 2 * v83, v152, v143);
    v84 = *(v72 + 16);
  }

  if (v84 < 4)
  {
    goto LABEL_43;
  }

  v85 = *(v72 + 80);
  v86 = *(v72 + 88);

  if ((v86 & 1) == 0)
  {
    v87 = v85 - v127;
    if (__OFSUB__(v85, v127))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (!v142)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v88 = v87 == 0x8000000000000000 && v142 == -1;
    if (v88)
    {
      goto LABEL_51;
    }

    v89 = v87 / v142;
    v90 = __OFADD__(v89, 1);
    v91 = v89 + 1;
    if (v90)
    {
      goto LABEL_49;
    }

    *v126 = v91 & ~(v91 >> 63);
    (v153)(v126, v151, v143);
    if (*(v70 + 16) < 4uLL)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return;
    }

    (v80)(v82 + 3 * v83, v126, v143);
  }

  OUTLINED_FUNCTION_48_16(&v155);
  sub_237CF12A0(v149, v145);
  OUTLINED_FUNCTION_99_3();
  sub_237EF7CC0();

  OUTLINED_FUNCTION_48_16(&v154);
  sub_237CF196C(1986948963, 0xE400000000000000);
  sub_237CF0C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A00, &qword_237F1E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB6A08, &qword_237F1E9E8);
  OUTLINED_FUNCTION_7_80();
  v93 = *(v92 + 72);
  OUTLINED_FUNCTION_17_59();
  v96 = v95 & ~v94;
  v97 = OUTLINED_FUNCTION_107_3();
  *(v97 + 16) = xmmword_237F1E9D0;
  v98 = (v97 + v96);
  OUTLINED_FUNCTION_23_40();
  *v98 = v99;
  v98[1] = v100;
  sub_237EF8260();
  sub_237EF7A20();
  v101 = (v97 + v96 + v93);
  OUTLINED_FUNCTION_60_11();
  *v101 = v102;
  v101[1] = 0xE600000000000000;
  (v147)(v137, v138, v144);
  sub_237EF7AC0();
  v103 = (v98 + 2 * v93);
  *v103 = 0x73656469727473;
  v103[1] = 0xE700000000000000;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD398, &unk_237F0B050);
  v105 = OUTLINED_FUNCTION_107(v104);
  *(v105 + 16) = xmmword_237F04760;
  *(v105 + 32) = 1;
  if (v142 < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v142 > 0x7FFFFFFF)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v105 + 36) = v142;
  sub_237EF7A50();
  v106 = (v98 + 3 * v93);
  *v106 = 0x6E6F6974616C6964;
  v106[1] = 0xE900000000000073;
  sub_237EF7A50();
  v107 = (v98 + 4 * v93);
  *v107 = 6578544;
  v107[1] = 0xE300000000000000;
  sub_237EF7A50();
  v108 = (v98 + 5 * v93);
  *v108 = 0x657079745F646170;
  v108[1] = 0xE800000000000000;
  sub_237EF7A60();
  v109 = (v98 + 6 * v93);
  *v109 = 0x7370756F7267;
  v109[1] = 0xE600000000000000;
  sub_237EF7A90();
  sub_237EF8230();
  sub_237EC52C8(v148, v129);
  v110 = OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_28_1(v110, v111, v144);
  if (v88)
  {
    sub_237C65484(v129, &qword_27DEB4610, &qword_237F18070);
  }

  else
  {
    v112 = OUTLINED_FUNCTION_33_27();
    v113(v112);
    v114 = OUTLINED_FUNCTION_26_33();
    v147(v114);
    sub_237EF7AC0();
    v115 = OUTLINED_FUNCTION_65_7();
    v116(v115);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_47_17(isUniquelyReferenced_nonNull_native, v118, v119, isUniquelyReferenced_nonNull_native);
    (*(v141 + 8))(v125, v144);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE940, &unk_237F1CD40);
  OUTLINED_FUNCTION_40_18();
  v120 = sub_237EF78C0();
  OUTLINED_FUNCTION_6_1(v120);
  OUTLINED_FUNCTION_18_49();
  *(swift_allocObject() + 16) = xmmword_237F03530;
  OUTLINED_FUNCTION_91_2();
  v121(v130, v146, v133);
  sub_237EF8260();
  OUTLINED_FUNCTION_12_11();
  sub_237EF7880();
  OUTLINED_FUNCTION_74_4(1986948963, 0xE400000000000000);
  sub_237CF33F8();
  (*(v135 + 8))(v134, v136);
  v122 = OUTLINED_FUNCTION_97_4();
  v123(v122);
  (*(v131 + 8))(v145, v132);
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_38_0();
}