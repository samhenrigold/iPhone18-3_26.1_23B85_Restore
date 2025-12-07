uint64_t sub_21AEB4C24(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_21AEC5AB0(0, v5, 0);
  v6 = v17;
  v9 = (a3 + 32);
  while (1)
  {
    v10 = *v9++;
    v15 = v10;
    a1(&v16, &v15);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21AEC5AB0(v12 > 1, v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 4 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21AEB4D34(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_21AEC5A90(0, v5, 0);
  v6 = v17;
  v9 = (a3 + 32);
  while (1)
  {
    v10 = *v9++;
    v15 = v10;
    a1(&v16, &v15);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21AEC5A90(v12 > 1, v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21AEB4E44@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v127 = sub_21AF0959C();
  sub_21AEA7C90();
  v126 = v6;
  MEMORY[0x28223BE20](v7);
  sub_21AEA7CA4();
  v125 = v8;
  sub_21AEA7574(&qword_27CD3D868, &qword_21AF0C638);
  sub_21AEA7C90();
  v140 = v10;
  v141 = v9;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v11);
  v13 = &v125 - v12;
  sub_21AEA7574(&qword_27CD3D870, &qword_21AF0C640);
  sub_21AEA7C90();
  v138 = v15;
  v139 = v14;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v16);
  sub_21AEC7DC4();
  v137 = v17;
  sub_21AEA7574(&qword_27CD3D878, &qword_21AF0C648);
  sub_21AEA7C90();
  v142 = v19;
  v143 = v18;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v20);
  sub_21AEC7AB0();
  v21 = sub_21AF093FC();
  sub_21AEA7C90();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_21AEC7554();
  v27 = v26 - v25;
  sub_21AF0952C();
  sub_21AEA7C90();
  v135 = v29;
  v136 = v28;
  MEMORY[0x28223BE20](v28);
  sub_21AEC7554();
  sub_21AEC7708();
  sub_21AF0957C();
  sub_21AEA7C90();
  v133 = v31;
  v134 = v30;
  MEMORY[0x28223BE20](v30);
  sub_21AEC7554();
  sub_21AEC7CC8();
  sub_21AF0956C();
  sub_21AF0954C();
  result = sub_21AF0951C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v131 = a1;
    v132 = a2;
    sub_21AEEF4D0(0, result);
    sub_21AF093EC();
    sub_21AF093BC();
    v33 = (*(v23 + 8))(v27, v21);
    MEMORY[0x28223BE20](v33);
    sub_21AEC74EC();
    v34 = sub_21AEC7810();
    v37 = sub_21AEB5998(v34, v35, v36);
    MEMORY[0x28223BE20](v37);
    sub_21AEC74EC();
    v38 = sub_21AEC7810();
    v41 = sub_21AEB5AB8(v38, v39, v40);
    MEMORY[0x28223BE20](v41);
    sub_21AEC74EC();
    v42 = sub_21AEC7810();
    v45 = sub_21AEB5BD4(v42, v43, v44);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v46);
    sub_21AEC74EC();
    v47 = sub_21AEC7810();
    v50 = sub_21AEB5998(v47, v48, v49);
    v51 = sub_21AEC7578(v50, &v146);
    MEMORY[0x28223BE20](v51);
    sub_21AEC74EC();
    v52 = sub_21AEC7810();
    v55 = sub_21AEB5BD4(v52, v53, v54);
    v56 = sub_21AEC7578(v55, &v147);
    MEMORY[0x28223BE20](v56);
    sub_21AEC74EC();
    v57 = sub_21AEC7810();
    v60 = sub_21AEB5BD4(v57, v58, v59);
    v61 = sub_21AEC7578(v60, &v148);
    MEMORY[0x28223BE20](v61);
    sub_21AEC74EC();
    v62 = sub_21AEC7810();
    v128 = sub_21AEB5998(v62, v63, v64);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v65);
    sub_21AEC74EC();
    v66 = sub_21AEC7810();
    v129 = sub_21AEB5AB8(v66, v67, v68);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v69);
    sub_21AEC74EC();
    v70 = sub_21AEC7810();
    v130 = sub_21AEB5998(v70, v71, v72);

    if (*(v37 + 16))
    {
      v144 = v37;
      sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC6FEC(&qword_27CD3D888, &qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC74C8();
      sub_21AEC7CF4();
      sub_21AF095AC();
      sub_21AF0955C();
      v73 = sub_21AEC7B58();
      v74(v73);
    }

    else
    {
    }

    if (*(v41 + 16))
    {
      v144 = v41;
      v75 = sub_21AEC76A0();
      sub_21AEA7574(v75, v76);
      sub_21AEC795C(&qword_27CD3D898);
      sub_21AEC75B0();
      v77 = v137;
      sub_21AEC7AA4();
      sub_21AEC798C(v78);
      sub_21AEC78CC();
      sub_21AF0955C();
      (*(v138 + 8))(v77, v139);
    }

    else
    {
    }

    if (*(v45 + 16))
    {
      v144 = v45;
      v79 = sub_21AEC76A0();
      sub_21AEA7574(v79, v80);
      sub_21AEC795C(&qword_27CD3D8A8);
      v81 = sub_21AEC7BE8();
      sub_21AEC798C(v81);
      sub_21AEC7974(v13);
      (*(v140 + 8))(v13, v141);
    }

    else
    {
    }

    v82 = v131;
    v83 = sub_21AEC77B8(&v146);
    if (v84)
    {
      v144 = v83;
      v85 = sub_21AEC76A0();
      sub_21AEA7574(v85, v86);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7CF4();
      sub_21AEC798C(v87);
      sub_21AEC7764();
      v88 = sub_21AEC7B58();
      v89(v88);
    }

    else
    {
    }

    v90 = sub_21AEC77B8(&v147);
    if (v91)
    {
      v144 = v90;
      v92 = sub_21AEC76A0();
      sub_21AEA7574(v92, v93);
      sub_21AEC795C(&qword_27CD3D8A8);
      v94 = sub_21AEC7564();
      sub_21AEC798C(v94);
      sub_21AEC7974(v13);
      (*(v140 + 8))(v13, v141);
    }

    else
    {
    }

    v95 = sub_21AEC77B8(&v148);
    if (v96)
    {
      v144 = v95;
      v97 = sub_21AEC76A0();
      sub_21AEA7574(v97, v98);
      sub_21AEC795C(&qword_27CD3D8A8);
      v99 = sub_21AEC7674();
      sub_21AEC798C(v99);
      sub_21AEC7974(v13);
      (*(v140 + 8))(v13, v141);
    }

    else
    {
    }

    if (*(v128 + 16))
    {
      v144 = v128;
      v100 = sub_21AEC76A0();
      sub_21AEA7574(v100, v101);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7CF4();
      sub_21AEC798C(v102);
      sub_21AEC7764();
      v103 = sub_21AEC7B58();
      v104(v103);
    }

    else
    {
    }

    if (*(v129 + 16))
    {
      v144 = v129;
      v105 = sub_21AEC76A0();
      sub_21AEA7574(v105, v106);
      sub_21AEC795C(&qword_27CD3D898);
      v107 = sub_21AEC758C();
      v108 = v137;
      sub_21AEC798C(v107);
      sub_21AEC7974(v108);
      (*(v138 + 8))(v108, v139);
    }

    else
    {
    }

    if (*(v130 + 16))
    {
      v144 = v130;
      v109 = sub_21AEC76A0();
      sub_21AEA7574(v109, v110);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7530();
      sub_21AEC7CF4();
      sub_21AEC7740();
      sub_21AEC798C(v111);
      sub_21AEC7764();
      v112 = sub_21AEC7D74();
      v113(v112);
    }

    else
    {
    }

    v114 = v134;
    if (v82)
    {
      v115 = MEMORY[0x277D837D0];
      v116 = v125;
      sub_21AEC7798();
      v117 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v118 = sub_21AEC7C30(v117);
      sub_21AEC7A14(v118, xmmword_21AF0C5D0);
      v144 = 0;
      v145 = v119;
      sub_21AF09C5C();
      MEMORY[0x21CEE4A70](0xD000000000000024, 0x800000021AF0F6B0);
      sub_21AF099CC();
      MEMORY[0x21CEE4A70](10, 0xE100000000000000);
      v120 = sub_21AF094CC();
      MEMORY[0x21CEE4A70](v120);

      v121 = v144;
      v122 = v145;
      v118[3].n128_u64[1] = v115;
      v118[2].n128_u64[0] = v121;
      v118[2].n128_u64[1] = v122;
      sub_21AEC76AC(v118);

      (*(v126 + 8))(v116, v127);
    }

    (*(v133 + 32))(v132, v3, v114);
    v123 = sub_21AEC7D8C();
    return v124(v123);
  }

  return result;
}

uint64_t sub_21AEB5998(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v17 = *v5;
      a1(&v15, &v17, a2);
      if (v3)
      {
        break;
      }

      v7 = v16;
      if (v16)
      {
        v8 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AEAC554();
          v6 = v11;
        }

        v9 = *(v6 + 16);
        if (v9 >= *(v6 + 24) >> 1)
        {
          sub_21AEAC554();
          v6 = v12;
        }

        *(v6 + 16) = v9 + 1;
        v10 = v6 + 16 * v9;
        *(v10 + 32) = v8;
        *(v10 + 40) = v7;
      }

      ++v5;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_21AEB5AB8(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v14 = *v6;
      a1(&v13, &v14, a2);
      if (v3)
      {
        break;
      }

      if ((v13 & 0x100000000) == 0)
      {
        v8 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AEAC498();
          v7 = v10;
        }

        v9 = *(v7 + 16);
        if (v9 >= *(v7 + 24) >> 1)
        {
          sub_21AEAC498();
          v7 = v11;
        }

        *(v7 + 16) = v9 + 1;
        *(v7 + 4 * v9 + 32) = v8;
      }

      ++v6;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_21AEB5BD4(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v16 = *v6;
      a1(&v14, &v16, a2);
      if (v3)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        v8 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AEAC470(0, *(v7 + 16) + 1, 1, v7);
          v7 = v11;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_21AEAC470(v9 > 1, v10 + 1, 1, v7);
          v7 = v12;
        }

        *(v7 + 16) = v10 + 1;
        *(v7 + 8 * v10 + 32) = v8;
      }

      ++v6;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

void sub_21AEB5CF0(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v62 = a3;
  v9 = 0x73745F6E776F6873;
  v10 = sub_21AF0952C();
  v61 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v54 - v14;
  v15 = sub_21AF094EC();
  v16 = *(v15 - 1);
  v17 = MEMORY[0x28223BE20](v15);
  v58 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  v59 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v24 = *(v16 + 8);
  v60 = v15;
  (v24)(v23, v15);
  if (!v64)
  {
    sub_21AEC6E68(v63, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_15;
  }

  v25 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v57 = v24;
    v28 = v10;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v29 = sub_21AF096CC();
    sub_21AEA7958(v29, qword_2812288E0);
    v30 = v61;
    (*(v61 + 16))(v13, a2, v28);
    v31 = sub_21AF096AC();
    v32 = sub_21AF09A9C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v56 = v28;
      v35 = v34;
      v65 = v34;
      *v33 = 136315138;
      v36 = v58;
      sub_21AF0953C();
      sub_21AF094FC();
      (v57)(v36, v60);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v37 = sub_21AF097DC();
      v39 = v38;
      (*(v30 + 8))(v13, v56);
      v40 = sub_21AECFFFC(v37, v39, &v65);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_21AE94000, v31, v32, "rawSearchDataForTimeInterval: (engagedTsValues)timeStampId malformed, val: %s", v33, 0xCu);
      sub_21AEA79F0(v35);
      MEMORY[0x21CEE5A20](v35, -1, -1);
      MEMORY[0x21CEE5A20](v33, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v13, v28);
    }

    goto LABEL_20;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a4 <= -2147483650.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a4 >= 2147483650.0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v65 <= a4)
  {
LABEL_20:
    v27 = 0;
    v26 = 1;
    goto LABEL_21;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (a5 <= -2147483650.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a5 >= 2147483650.0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_24;
  }

  if (v65 >= a5)
  {
    goto LABEL_20;
  }

  v15 = v24;
  sub_21AF0953C();
  sub_21AF094FC();
  (v24)(v21, v60);
  if (v64)
  {
    if (swift_dynamicCast())
    {
      v26 = 0;
      v27 = v65;
      goto LABEL_21;
    }
  }

  else
  {
    sub_21AEC6E68(v63, &qword_27CD3D330, &unk_21AF0C420);
  }

  v9 = v10;
  v25 = v57;
  if (qword_27CD3D270 != -1)
  {
    goto LABEL_34;
  }

LABEL_24:
  v42 = sub_21AF096CC();
  sub_21AEA7958(v42, qword_2812288E0);
  v43 = v61;
  (*(v61 + 16))(v25, a2, v9);
  v44 = sub_21AF096AC();
  v45 = sub_21AF09A9C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v65 = v55;
    *v46 = 136315138;
    v56 = v9;
    v47 = v25;
    v48 = v58;
    sub_21AF0953C();
    sub_21AF094FC();
    (v15)(v48, v60);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v49 = sub_21AF097DC();
    v51 = v50;
    (*(v43 + 8))(v47, v56);
    v52 = sub_21AECFFFC(v49, v51, &v65);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_21AE94000, v44, v45, "rawSearchDataForTimeInterval: engagedTimeStampId, expected Int32, val: %s", v46, 0xCu);
    v53 = v55;
    sub_21AEA79F0(v55);
    MEMORY[0x21CEE5A20](v53, -1, -1);
    MEMORY[0x21CEE5A20](v46, -1, -1);
  }

  else
  {

    (*(v43 + 8))(v25, v9);
  }

  v27 = 0;
  v26 = 0;
LABEL_21:
  v41 = v62;
  *v62 = v27;
  *(v41 + 4) = v26;
}

void sub_21AEB645C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v64 = a3;
  v9 = sub_21AF0952C();
  v63 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = (&v56 - v13);
  v14 = sub_21AF094EC();
  v15 = *(v14 - 1);
  v16 = MEMORY[0x28223BE20](v14);
  v60 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v61 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v23 = *(v15 + 8);
  v62 = v14;
  v23(v22, v14);
  if (!v66)
  {
    sub_21AEC6E68(v65, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_15;
  }

  v24 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v59 = v23;
    v28 = v9;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v29 = sub_21AF096CC();
    sub_21AEA7958(v29, qword_2812288E0);
    v30 = v63;
    (*(v63 + 16))(v12, a2, v28);
    v31 = sub_21AF096AC();
    v32 = sub_21AF09A9C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v28;
      v35 = v34;
      v67 = v34;
      *v33 = 136315138;
      v36 = v60;
      sub_21AF0953C();
      sub_21AF094FC();
      v59(v36, v62);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v37 = sub_21AF097DC();
      v39 = v38;
      (*(v30 + 8))(v12, v58);
      v40 = sub_21AECFFFC(v37, v39, &v67);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_21AE94000, v31, v32, "rawSearchDataForTimeInterval: (engagementValues)timeStampId malformed, val: %s", v33, 0xCu);
      sub_21AEA79F0(v35);
      MEMORY[0x21CEE5A20](v35, -1, -1);
      MEMORY[0x21CEE5A20](v33, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v12, v28);
    }

    goto LABEL_20;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a4 <= -2147483650.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a4 >= 2147483650.0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v67 <= a4)
  {
LABEL_20:
    v27 = 0;
    v26 = 1;
    goto LABEL_21;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (a5 <= -2147483650.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a5 >= 2147483650.0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_24;
  }

  if (v67 >= a5)
  {
    goto LABEL_20;
  }

  v59 = v23;
  sub_21AF0953C();
  sub_21AF094FC();
  v59(v20, v62);
  if (v66)
  {
    v25 = swift_dynamicCast();
    v14 = v58;
    if (v25)
    {
      v26 = 0;
      v27 = v67;
      goto LABEL_21;
    }
  }

  else
  {
    sub_21AEC6E68(v65, &qword_27CD3D330, &unk_21AF0C420);
    v14 = v58;
  }

  v24 = v9;
  if (qword_27CD3D270 != -1)
  {
    goto LABEL_34;
  }

LABEL_24:
  v42 = sub_21AF096CC();
  sub_21AEA7958(v42, qword_2812288E0);
  v43 = v63;
  (*(v63 + 16))(v14, a2, v24);
  v44 = sub_21AF096AC();
  v45 = sub_21AF09A9C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v57 = v46;
    v58 = swift_slowAlloc();
    v67 = v58;
    *v46 = 136315138;
    v47 = v60;
    sub_21AF0953C();
    sub_21AF094FC();
    v59(v47, v62);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v48 = sub_21AF097DC();
    v49 = v24;
    v51 = v50;
    (*(v43 + 8))(v14, v49);
    v52 = sub_21AECFFFC(v48, v51, &v67);

    v53 = v57;
    *(v57 + 1) = v52;
    v54 = v53;
    _os_log_impl(&dword_21AE94000, v44, v45, "rawSearchDataForTimeInterval: engagementCountId, expected Int64, val: %s", v53, 0xCu);
    v55 = v58;
    sub_21AEA79F0(v58);
    MEMORY[0x21CEE5A20](v55, -1, -1);
    MEMORY[0x21CEE5A20](v54, -1, -1);
  }

  else
  {

    (*(v43 + 8))(v14, v24);
  }

  v27 = 0;
  v26 = 0;
LABEL_21:
  v41 = v64;
  *v64 = v27;
  *(v41 + 8) = v26;
}

void sub_21AEB6BC8(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v72 = a3;
  v9 = 0x73745F6E776F6873;
  v10 = sub_21AF0942C();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21AF0952C();
  v71 = *(v77 - 8);
  v12 = MEMORY[0x28223BE20](v77);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = (&v62 - v15);
  v16 = sub_21AF094EC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v62 - v23;
  v69 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v25 = *(v17 + 8);
  v70 = v16;
  v25(v24, v16);
  if (!v76)
  {
    sub_21AEC6E68(v75, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v29 = v77;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v30 = sub_21AF096CC();
    sub_21AEA7958(v30, qword_2812288E0);
    v31 = v71;
    (*(v71 + 16))(v14, a2, v29);
    v32 = sub_21AF096AC();
    v33 = sub_21AF09A9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74[0] = v67;
      *v34 = 136315138;
      v35 = v25;
      v36 = v68;
      sub_21AF0953C();
      sub_21AF094FC();
      v35(v36, v70);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v37 = sub_21AF097DC();
      v39 = v38;
      (*(v31 + 8))(v14, v77);
      v40 = sub_21AECFFFC(v37, v39, v74);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_21AE94000, v32, v33, "rawSearchDataForTimeInterval: (parentIdValues)timeStampId malformed, val: %s", v34, 0xCu);
      v41 = v67;
      sub_21AEA79F0(v67);
      MEMORY[0x21CEE5A20](v41, -1, -1);
      MEMORY[0x21CEE5A20](v34, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v14, v29);
    }

    goto LABEL_20;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (a4 <= -2147483650.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a4 >= 2147483650.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (SLODWORD(v74[0]) <= a4)
  {
    goto LABEL_20;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (a5 <= -2147483650.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a5 < 2147483650.0)
  {
    if (SLODWORD(v74[0]) < a5)
    {
      sub_21AF0953C();
      sub_21AF094FC();
      v25(v22, v70);
      if (v76)
      {
        v26 = swift_dynamicCast();
        v9 = v67;
        if (v26)
        {
          v27 = v74[1];
          v28 = v72;
          *v72 = v74[0];
          v28[1] = v27;
          return;
        }
      }

      else
      {
        sub_21AEC6E68(v75, &qword_27CD3D330, &unk_21AF0C420);
        v9 = v67;
      }

      v73 = "result_identifier";
      if (qword_27CD3D270 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

LABEL_20:
    v42 = v72;
    *v72 = 0;
    v42[1] = 0;
    return;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_23:
  v43 = sub_21AF096CC();
  sub_21AEA7958(v43, qword_2812288E0);
  v44 = v71;
  v45 = v77;
  (*(v71 + 16))(v9, a2, v77);
  v46 = sub_21AF096AC();
  v47 = sub_21AF09A9C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v63 = v48;
    v67 = swift_slowAlloc();
    v74[0] = v67;
    *v48 = 136315138;
    v49 = v68;
    LODWORD(v69) = v47;
    sub_21AF0953C();
    sub_21AF094FC();
    v25(v49, v70);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v50 = sub_21AF097DC();
    v52 = v51;
    (*(v44 + 8))(v9, v45);
    v53 = sub_21AECFFFC(v50, v52, v74);

    v54 = v63;
    *(v63 + 1) = v53;
    v55 = v54;
    _os_log_impl(&dword_21AE94000, v46, v69, "rawSearchDataForTimeInterval: parentSectionId, expected String, val: %s", v54, 0xCu);
    v56 = v67;
    sub_21AEA79F0(v67);
    MEMORY[0x21CEE5A20](v56, -1, -1);
    MEMORY[0x21CEE5A20](v55, -1, -1);
  }

  else
  {

    (*(v44 + 8))(v9, v45);
  }

  v57 = v72;
  v58 = v64;
  sub_21AF0941C();
  v59 = sub_21AF0940C();
  v61 = v60;
  (*(v65 + 8))(v58, v66);
  *v57 = v59;
  v57[1] = v61;
}

void sub_21AEB73E4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, void)@<X3>, const char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v76 = a4;
  v77 = a6;
  v73 = a5;
  v75 = a3;
  v82 = a7;
  v13 = 0x73745F6E776F6873;
  v14 = sub_21AF0952C();
  sub_21AEA7C90();
  v81 = v15;
  MEMORY[0x28223BE20](v16);
  sub_21AEAD074();
  sub_21AEC7B28();
  MEMORY[0x28223BE20](v17);
  sub_21AEC774C();
  v74 = v18;
  sub_21AEAFBDC();
  v19 = sub_21AF094EC();
  sub_21AEA7C90();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_21AEC7504();
  v78 = v23;
  sub_21AEC76CC();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v72 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  v79 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v30 = *(v21 + 8);
  v80 = v19;
  v31 = v30(v29, v19);
  if (!v84)
  {
    sub_21AEC6E68(v83, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_17;
  }

  v34 = MEMORY[0x277D84F70];
  if ((sub_21AEC7DF0(v31, v32, v33, MEMORY[0x277D849A8]) & 1) == 0)
  {
LABEL_17:
    v76 = v30;
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v44 = sub_21AF096CC();
    sub_21AEC78A8(v44, qword_2812288E0);
    v45 = sub_21AEC7844();
    v46(v45);
    v47 = sub_21AF096AC();
    v48 = sub_21AF09A9C();
    v49 = sub_21AEC778C();
    if (os_log_type_enabled(v49, v50))
    {
      sub_21AEC76E4();
      v51 = swift_slowAlloc();
      sub_21AEC76D8();
      v52 = swift_slowAlloc();
      v72 = v14;
      v53 = v52;
      v85 = v52;
      *v51 = 136315138;
      v54 = v78;
      sub_21AF0953C();
      sub_21AEC758C();
      sub_21AF094FC();
      v76(v54, v80);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AF097DC();
      sub_21AEC7DD0();
      v55 = sub_21AEC79CC();
      v56(v55, v72);
      v57 = sub_21AEC7BB8();
      sub_21AECFFFC(v57, v54, v58);
      sub_21AEC7EF8();
      *(v51 + 4) = v54;
      _os_log_impl(&dword_21AE94000, v47, v48, v77, v51, 0xCu);
      sub_21AEA79F0(v53);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      v59 = sub_21AEC79CC();
      v60(v59, v14);
    }

    goto LABEL_22;
  }

  sub_21AEC7D14();
  if (!(v36 ^ v37 | v35))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (a8 <= -2147483650.0)
  {
    goto LABEL_30;
  }

  if (a8 >= 2147483650.0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v85 <= a8)
  {
    goto LABEL_22;
  }

  sub_21AEC7D00();
  if (!(v36 ^ v37 | v35))
  {
    goto LABEL_32;
  }

  if (a9 <= v39)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a9 >= 2147483650.0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    sub_21AEC74B4();
    swift_once();
    goto LABEL_26;
  }

  if (v38 >= a9)
  {
LABEL_22:
    v43 = 0;
    goto LABEL_23;
  }

  v19 = v30;
  sub_21AF0953C();
  sub_21AF094FC();
  v40 = v30(v27, v80);
  if (v84)
  {
    if (sub_21AEC7DF0(v40, v41, v42, MEMORY[0x277D84A28]))
    {
      v43 = v85;
      goto LABEL_23;
    }
  }

  else
  {
    sub_21AEC6E68(v83, &qword_27CD3D330, &unk_21AF0C420);
  }

  v34 = v14;
  v13 = v74;
  if (qword_27CD3D270 != -1)
  {
    goto LABEL_35;
  }

LABEL_26:
  v61 = sub_21AF096CC();
  sub_21AEC78A8(v61, qword_2812288E0);
  v62 = v81;
  (*(v81 + 16))(v13, a2, v34);
  v63 = sub_21AF096AC();
  v64 = sub_21AF09A9C();
  if (sub_21AEC7EB0(v64))
  {
    sub_21AEC76E4();
    v65 = swift_slowAlloc();
    sub_21AEC76D8();
    v77 = swift_slowAlloc();
    v85 = v77;
    *v65 = 136315138;
    v72 = v34;
    v66 = v78;
    sub_21AF0953C();
    sub_21AF094FC();
    v19(v66, v80);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AF097DC();
    v68 = v67;
    (*(v62 + 8))(v13, v72);
    v69 = sub_21AEC7BB8();
    v71 = sub_21AECFFFC(v69, v68, v70);

    *(v65 + 4) = v71;
    _os_log_impl(&dword_21AE94000, v63, v64, v73, v65, 0xCu);
    sub_21AEA79F0(v77);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    (*(v62 + 8))(v13, v34);
  }

  v43 = 0;
LABEL_23:
  sub_21AEC7CE8(v43);
}

void sub_21AEB7A2C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v72 = a3;
  v9 = 0x73745F6E776F6873;
  v10 = sub_21AF0942C();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x28223BE20](v10);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21AF0952C();
  v71 = *(v77 - 8);
  v12 = MEMORY[0x28223BE20](v77);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = (&v62 - v15);
  v16 = sub_21AF094EC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v68 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v62 - v23;
  v69 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v25 = *(v17 + 8);
  v70 = v16;
  v25(v24, v16);
  if (!v76)
  {
    sub_21AEC6E68(v75, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v29 = v77;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v30 = sub_21AF096CC();
    sub_21AEA7958(v30, qword_2812288E0);
    v31 = v71;
    (*(v71 + 16))(v14, a2, v29);
    v32 = sub_21AF096AC();
    v33 = sub_21AF09A9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v74[0] = v67;
      *v34 = 136315138;
      v35 = v25;
      v36 = v68;
      sub_21AF0953C();
      sub_21AF094FC();
      v35(v36, v70);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v37 = sub_21AF097DC();
      v39 = v38;
      (*(v31 + 8))(v14, v77);
      v40 = sub_21AECFFFC(v37, v39, v74);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_21AE94000, v32, v33, "rawSearchDataForTimeInterval: (resultIdValues)timeStampId malformed, val: %s", v34, 0xCu);
      v41 = v67;
      sub_21AEA79F0(v67);
      MEMORY[0x21CEE5A20](v41, -1, -1);
      MEMORY[0x21CEE5A20](v34, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v14, v29);
    }

    goto LABEL_20;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (a4 <= -2147483650.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (a4 >= 2147483650.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (SLODWORD(v74[0]) <= a4)
  {
    goto LABEL_20;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (a5 <= -2147483650.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a5 < 2147483650.0)
  {
    if (SLODWORD(v74[0]) < a5)
    {
      sub_21AF0953C();
      sub_21AF094FC();
      v25(v22, v70);
      if (v76)
      {
        v26 = swift_dynamicCast();
        v9 = v67;
        if (v26)
        {
          v27 = v74[1];
          v28 = v72;
          *v72 = v74[0];
          v28[1] = v27;
          return;
        }
      }

      else
      {
        sub_21AEC6E68(v75, &qword_27CD3D330, &unk_21AF0C420);
        v9 = v67;
      }

      v73 = "AMLPhotosSearchPoirotMetrics";
      if (qword_27CD3D270 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }

LABEL_20:
    v42 = v72;
    *v72 = 0;
    v42[1] = 0;
    return;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_23:
  v43 = sub_21AF096CC();
  sub_21AEA7958(v43, qword_2812288E0);
  v44 = v71;
  v45 = v77;
  (*(v71 + 16))(v9, a2, v77);
  v46 = sub_21AF096AC();
  v47 = sub_21AF09A9C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v63 = v48;
    v67 = swift_slowAlloc();
    v74[0] = v67;
    *v48 = 136315138;
    v49 = v68;
    LODWORD(v69) = v47;
    sub_21AF0953C();
    sub_21AF094FC();
    v25(v49, v70);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v50 = sub_21AF097DC();
    v52 = v51;
    (*(v44 + 8))(v9, v45);
    v53 = sub_21AECFFFC(v50, v52, v74);

    v54 = v63;
    *(v63 + 1) = v53;
    v55 = v54;
    _os_log_impl(&dword_21AE94000, v46, v69, "rawSearchDataForTimeInterval: resultId malformed, val: %s", v54, 0xCu);
    v56 = v67;
    sub_21AEA79F0(v67);
    MEMORY[0x21CEE5A20](v56, -1, -1);
    MEMORY[0x21CEE5A20](v55, -1, -1);
  }

  else
  {

    (*(v44 + 8))(v9, v45);
  }

  v57 = v72;
  v58 = v64;
  sub_21AF0941C();
  v59 = sub_21AF0940C();
  v61 = v60;
  (*(v65 + 8))(v58, v66);
  *v57 = v59;
  v57[1] = v61;
}

void sub_21AEB8248(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v63 = a3;
  v9 = 0x73745F6E776F6873;
  v10 = sub_21AF0952C();
  v62 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = (&v57 - v14);
  v15 = sub_21AF094EC();
  v16 = *(v15 - 1);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  v60 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v24 = *(v16 + 8);
  v61 = v15;
  (v24)(v23, v15);
  if (!v65)
  {
    sub_21AEC6E68(v64, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_15;
  }

  v25 = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v58 = v24;
    v29 = v10;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v30 = sub_21AF096CC();
    sub_21AEA7958(v30, qword_2812288E0);
    v31 = v62;
    (*(v62 + 16))(v13, a2, v29);
    v32 = sub_21AF096AC();
    v33 = sub_21AF09A9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v57 = v29;
      v36 = v35;
      v66 = v35;
      *v34 = 136315138;
      v37 = v59;
      sub_21AF0953C();
      sub_21AF094FC();
      (v58)(v37, v61);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v38 = sub_21AF097DC();
      v40 = v39;
      (*(v31 + 8))(v13, v57);
      v41 = sub_21AECFFFC(v38, v40, &v66);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_21AE94000, v32, v33, "rawSearchDataForTimeInterval: (tsValues)timeStampId. malformed, val: %s", v34, 0xCu);
      sub_21AEA79F0(v36);
      MEMORY[0x21CEE5A20](v36, -1, -1);
      MEMORY[0x21CEE5A20](v34, -1, -1);
    }

    else
    {

      (*(v31 + 8))(v13, v29);
    }

    goto LABEL_20;
  }

  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a4 <= -2147483650.0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a4 >= 2147483650.0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v66 <= a4)
  {
LABEL_21:
    v28 = 0;
    v27 = 1;
    goto LABEL_22;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if (a5 <= -2147483650.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a5 >= 2147483650.0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
LABEL_25:
    v43 = sub_21AF096CC();
    sub_21AEA7958(v43, qword_2812288E0);
    v44 = v62;
    (*(v62 + 16))(v9, a2, v25);
    v45 = sub_21AF096AC();
    v46 = sub_21AF09A9C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v57 = v47;
      v58 = swift_slowAlloc();
      v66 = v58;
      *v47 = 136315138;
      v48 = v59;
      sub_21AF0953C();
      sub_21AF094FC();
      (v15)(v48, v61);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v49 = sub_21AF097DC();
      v50 = v25;
      v52 = v51;
      (*(v44 + 8))(v9, v50);
      v53 = sub_21AECFFFC(v49, v52, &v66);

      v54 = v57;
      *(v57 + 1) = v53;
      v55 = v54;
      _os_log_impl(&dword_21AE94000, v45, v46, "rawSearchDataForTimeInterval: timeStampId malformed, val: %s", v54, 0xCu);
      v56 = v58;
      sub_21AEA79F0(v58);
      MEMORY[0x21CEE5A20](v56, -1, -1);
      MEMORY[0x21CEE5A20](v55, -1, -1);
    }

    else
    {

      (*(v44 + 8))(v9, v25);
    }

LABEL_20:
    v28 = 0;
    v27 = 0;
    goto LABEL_22;
  }

  if (v66 >= a5)
  {
    goto LABEL_21;
  }

  v15 = v24;
  sub_21AF0953C();
  sub_21AF094FC();
  (v24)(v21, v61);
  if (!v65)
  {
    sub_21AEC6E68(v64, &qword_27CD3D330, &unk_21AF0C420);
    v9 = v58;
LABEL_24:
    v25 = v10;
    if (qword_27CD3D270 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v26 = swift_dynamicCast();
  v9 = v58;
  if ((v26 & 1) == 0)
  {
    goto LABEL_24;
  }

  v27 = 0;
  v28 = v66;
LABEL_22:
  v42 = v63;
  *v63 = v28;
  *(v42 + 4) = v27;
}

void sub_21AEB89A8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, const char *a5@<X4>, char *a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v83 = a6;
  v76 = a5;
  v81 = a3;
  v82 = a4;
  v88 = a7;
  v15 = 0x73745F6E776F6873;
  sub_21AF0942C();
  sub_21AEA7C90();
  v78 = v17;
  v79 = v16;
  MEMORY[0x28223BE20](v16);
  sub_21AEA7CA4();
  v77 = v18;
  sub_21AEAFBDC();
  v94 = sub_21AF0952C();
  sub_21AEA7C90();
  v87 = v19;
  MEMORY[0x28223BE20](v20);
  sub_21AEAD074();
  sub_21AEC7718();
  MEMORY[0x28223BE20](v21);
  sub_21AEC774C();
  v80 = v22;
  sub_21AEAFBDC();
  v23 = sub_21AF094EC();
  sub_21AEA7C90();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_21AEC7504();
  v84 = v27;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v28);
  sub_21AEC7B28();
  MEMORY[0x28223BE20](v29);
  v31 = &v75 - v30;
  v85 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v32 = *(v25 + 8);
  v86 = v23;
  v33 = (v32)(v31, v23);
  if (!v93)
  {
    sub_21AEC6E68(v92, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_17;
  }

  if ((sub_21AEC7E10(v33, v34, v35, MEMORY[0x277D849A8]) & 1) == 0)
  {
LABEL_17:
    v47 = v94;
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v48 = sub_21AF096CC();
    sub_21AEC78A8(v48, qword_2812288E0);
    v49 = v87;
    v50 = sub_21AEC7BC4();
    v51(v50);
    v52 = sub_21AF096AC();
    v53 = sub_21AF09A9C();
    if (sub_21AEC7EB0(v53))
    {
      sub_21AEC76E4();
      v54 = swift_slowAlloc();
      sub_21AEC76D8();
      v82 = swift_slowAlloc();
      v90 = v82;
      *v54 = 136315138;
      v55 = v32;
      v56 = v84;
      sub_21AF0953C();
      sub_21AEC758C();
      sub_21AF094FC();
      (v55)(v56, v86);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AF097DC();
      sub_21AEC7780();
      (*(v49 + 8))(v9, v94);
      v57 = sub_21AEC76A0();
      sub_21AECFFFC(v57, v58, v59);
      sub_21AEC7C18();
      *(v54 + 4) = v56;
      _os_log_impl(&dword_21AE94000, v52, v53, v83, v54, 0xCu);
      sub_21AEA79F0(v82);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      (*(v49 + 8))(v9, v47);
    }

    goto LABEL_22;
  }

  sub_21AEC7D14();
  if (!(v37 ^ v38 | v36))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a8 <= -2147483650.0)
  {
    goto LABEL_29;
  }

  if (a8 >= 2147483650.0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v90 <= a8)
  {
LABEL_22:
    v60 = v88;
    *v88 = 0;
    v60[1] = 0;
    return;
  }

  sub_21AEC7D00();
  if (!(v37 ^ v38 | v36))
  {
    goto LABEL_31;
  }

  if (a9 <= v40)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a9 < 2147483650.0)
  {
    if (v39 < a9)
    {
      sub_21AF0953C();
      sub_21AF094FC();
      v41 = (v32)(v10, v86);
      if (v93)
      {
        v44 = sub_21AEC7E10(v41, v42, v43, MEMORY[0x277D837D0]);
        v15 = v80;
        if (v44)
        {
          v45 = v91;
          v46 = v88;
          *v88 = v90;
          v46[1] = v45;
          return;
        }
      }

      else
      {
        sub_21AEC6E68(v92, &qword_27CD3D330, &unk_21AF0C420);
        v15 = v80;
      }

      if (qword_27CD3D270 == -1)
      {
        goto LABEL_25;
      }

      goto LABEL_34;
    }

    goto LABEL_22;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  sub_21AEC74B4();
  swift_once();
LABEL_25:
  v61 = sub_21AF096CC();
  sub_21AEC78A8(v61, qword_2812288E0);
  v62 = v87;
  v63 = v94;
  (*(v87 + 16))(v15, a2, v94);
  v64 = sub_21AF096AC();
  v65 = sub_21AF09A9C();
  if (os_log_type_enabled(v64, v65))
  {
    sub_21AEC76E4();
    v66 = swift_slowAlloc();
    v83 = v66;
    sub_21AEC76D8();
    v89 = swift_slowAlloc();
    v90 = v89;
    *v66 = 136315138;
    v67 = v84;
    LODWORD(v85) = v65;
    sub_21AF0953C();
    sub_21AF094FC();
    (v32)(v67, v86);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AF097DC();
    sub_21AEC7780();
    (*(v62 + 8))(v15, v63);
    v68 = sub_21AEC76A0();
    sub_21AECFFFC(v68, v69, v70);
    sub_21AEC7C18();
    v71 = v83;
    *(v83 + 4) = v32;
    v32 = v71;
    _os_log_impl(&dword_21AE94000, v64, v85, v76, v71, 0xCu);
    sub_21AEA79F0(v89);
    v72 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v72);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    (*(v62 + 8))(v15, v63);
  }

  v73 = v88;
  v74 = v77;
  sub_21AF0941C();
  sub_21AF0940C();
  sub_21AEC7780();
  (*(v78 + 8))(v74, v79);
  *v73 = v32;
  v73[1] = v74;
}

void sub_21AEB908C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_21AEC7AE8();
  a19 = v22;
  a20 = v23;
  v160 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_21AF0959C();
  sub_21AEA7C90();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_21AEC7554();
  sub_21AEC7CC8();
  sub_21AEA7574(&qword_27CD3D868, &qword_21AF0C638);
  sub_21AEA7C90();
  v168 = v36;
  v169 = v35;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v37);
  sub_21AEC7DC4();
  v167 = v38;
  sub_21AEA7574(&qword_27CD3D870, &qword_21AF0C640);
  sub_21AEA7C90();
  v164 = v40;
  v165 = v39;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v41);
  sub_21AEC7DC4();
  v163 = v42;
  sub_21AEA7574(&qword_27CD3D878, &qword_21AF0C648);
  sub_21AEA7C90();
  v170 = v44;
  v171 = v43;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v45);
  sub_21AEC7708();
  v46 = sub_21AF0952C();
  sub_21AEA7C90();
  v162 = v47;
  MEMORY[0x28223BE20](v48);
  sub_21AEC7554();
  v51 = v50 - v49;
  v166 = sub_21AF0957C();
  sub_21AEA7C90();
  v161 = v52;
  MEMORY[0x28223BE20](v53);
  sub_21AEA7CA4();
  v172 = v54;
  sub_21AF0956C();
  sub_21AF0954C();
  v55 = sub_21AF0951C();
  if (v55 < 0)
  {
    __break(1u);
  }

  else
  {
    v157 = v46;
    v153[1] = v21;
    v153[2] = v33;
    v154 = v31;
    v159 = v30;
    v56 = sub_21AEEF4D0(0, v55);
    MEMORY[0x28223BE20](v56);
    sub_21AEC7518();
    v57 = sub_21AEC7668();
    v60 = sub_21AEB5998(v57, v58, v59);
    MEMORY[0x28223BE20](v60);
    sub_21AEC7518();
    v61 = sub_21AEC7668();
    v64 = sub_21AEB5AB8(v61, v62, v63);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v65);
    sub_21AEC7518();
    v66 = sub_21AEC7668();
    v69 = sub_21AEB5BD4(v66, v67, v68);
    v70 = sub_21AEC7578(v69, &a15);
    MEMORY[0x28223BE20](v70);
    sub_21AEC7518();
    v71 = sub_21AEC7668();
    v74 = sub_21AEB5998(v71, v72, v73);
    v75 = sub_21AEC7578(v74, &a16);
    MEMORY[0x28223BE20](v75);
    sub_21AEC7518();
    v76 = sub_21AEC7668();
    v79 = sub_21AEB5BD4(v76, v77, v78);
    v80 = sub_21AEC7578(v79, &a17);
    MEMORY[0x28223BE20](v80);
    sub_21AEC7518();
    v81 = sub_21AEC7668();
    v84 = sub_21AEB5BD4(v81, v82, v83);
    v85 = sub_21AEC7578(v84, &a18);
    MEMORY[0x28223BE20](v85);
    sub_21AEC7518();
    v86 = sub_21AEC7668();
    v155 = sub_21AEB5998(v86, v87, v88);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v89);
    sub_21AEC7518();
    v90 = sub_21AEC7668();
    v156 = sub_21AEB5AB8(v90, v91, v92);
    sub_21AEC75A0();
    MEMORY[0x28223BE20](v93);
    v153[-4] = v51;
    v153[-3] = v28;
    v94 = v28;
    v158 = v26;
    v153[-2] = v26;
    v95 = sub_21AEC7668();
    v98 = sub_21AEB5998(v95, v96, v97);

    if (*(v60 + 16))
    {
      v173 = v60;
      sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC6FEC(&qword_27CD3D888, &qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC74C8();
      sub_21AEC7B48();
      sub_21AF095AC();
      sub_21AEC7A60();
      v99 = v172;
      sub_21AF0955C();
      sub_21AEC7A54();
      v100(v20);
    }

    else
    {

      v99 = v172;
    }

    v101 = *(v64 + 16);
    v153[0] = v94;
    if (v101)
    {
      v173 = v64;
      v102 = sub_21AEC7734();
      sub_21AEA7574(v102, v103);
      sub_21AEC7B00(&qword_27CD3D898);
      sub_21AEC75B0();
      v104 = v163;
      sub_21AEC7AA4();
      sub_21AEC7B88(v105);
      sub_21AEC76A0();
      sub_21AF0955C();
      (*(v164 + 8))(v104, v165);
    }

    else
    {
    }

    v106 = v157;
    v107 = sub_21AEC77B8(&a15);
    if (v108)
    {
      v173 = v107;
      v109 = sub_21AEC7734();
      sub_21AEA7574(v109, v110);
      sub_21AEC7B00(&qword_27CD3D8A8);
      sub_21AEC7B38();
      v111 = sub_21AEC7BE8();
      sub_21AEC7B88(v111);
      sub_21AEC7A88();
      sub_21AEC7D5C();
      v112(&unk_21AF0C660);
    }

    else
    {
    }

    v113 = sub_21AEC77B8(&a16);
    if (v114)
    {
      v173 = v113;
      v115 = sub_21AEC7734();
      sub_21AEA7574(v115, v116);
      sub_21AEC7B00(&qword_27CD3D888);
      sub_21AEC7B48();
      sub_21AF095AC();
      sub_21AEC7A60();
      sub_21AF0955C();
      sub_21AEC7A54();
      v117(v20);
    }

    else
    {
    }

    v118 = v159;
    v119 = sub_21AEC77B8(&a17);
    if (v120)
    {
      v173 = v119;
      v121 = sub_21AEC7734();
      sub_21AEA7574(v121, v122);
      sub_21AEC7B00(&qword_27CD3D8A8);
      sub_21AEC7564();
      sub_21AEC7B38();
      sub_21AEC7B88(v123);
      sub_21AEC7A88();
      sub_21AEC7D5C();
      v124(&unk_21AF0C660);
    }

    else
    {
    }

    v125 = sub_21AEC77B8(&a18);
    if (v126)
    {
      v173 = v125;
      v127 = sub_21AEC7734();
      sub_21AEA7574(v127, v128);
      sub_21AEC7B00(&qword_27CD3D8A8);
      sub_21AEC7B38();
      v129 = sub_21AEC7674();
      sub_21AEC7B88(v129);
      sub_21AEC7A88();
      (*(v168 + 8))(&unk_21AF0C660, v169);
    }

    else
    {
    }

    if (*(v155 + 16))
    {
      v173 = v155;
      v130 = sub_21AEC7734();
      sub_21AEA7574(v130, v131);
      sub_21AEC7B00(&qword_27CD3D888);
      v99 = v172;
      sub_21AEC7B48();
      sub_21AF095AC();
      sub_21AEC7A60();
      sub_21AF0955C();
      sub_21AEC7A54();
      v132(v20);
    }

    else
    {
    }

    if (*(v156 + 16))
    {
      v173 = v156;
      v133 = sub_21AEC7734();
      sub_21AEA7574(v133, v134);
      sub_21AEC7B00(&qword_27CD3D898);
      v135 = sub_21AEC758C();
      v136 = v163;
      sub_21AEC7B88(v135);
      sub_21AEC7A88();
      (*(v164 + 8))(v136, v165);
    }

    else
    {
    }

    if (*(v98 + 16))
    {
      v173 = v98;
      v137 = sub_21AEC7734();
      sub_21AEA7574(v137, v138);
      sub_21AEC7B00(&qword_27CD3D888);
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AEC7B88(v139);
      sub_21AEC7A60();
      sub_21AF0955C();
      v140 = sub_21AEC7D8C();
      v141(v140);
    }

    else
    {
    }

    v142 = v158;
    if (v160)
    {
      v143 = MEMORY[0x277D837D0];
      sub_21AEC7798();
      v144 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v145 = sub_21AEC7C30(v144);
      sub_21AEC7A14(v145, xmmword_21AF0C5D0);
      v173 = 0;
      v174 = v146;
      sub_21AF09C5C();

      sub_21AEC7BD0();
      v173 = 0xD00000000000001DLL;
      v174 = v147;
      MEMORY[0x21CEE4A70](v153[0], v142);
      MEMORY[0x21CEE4A70](10, 0xE100000000000000);
      v148 = sub_21AF094CC();
      MEMORY[0x21CEE4A70](v148);

      v149 = v173;
      v150 = v174;
      v145[3].n128_u64[1] = v143;
      v99 = v172;
      v145[2].n128_u64[0] = v149;
      v145[2].n128_u64[1] = v150;
      sub_21AEC76AC(v145);

      v151 = sub_21AEC7D8C();
      v152(v151, v154);
    }

    (*(v161 + 32))(v118, v99, v166);
    (*(v162 + 8))(v51, v106);
    sub_21AEC79F0();
  }
}

void sub_21AEB9B7C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v58 = a4;
  v64 = a5;
  v8 = sub_21AF0952C();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v57 - v12;
  v13 = sub_21AF094EC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v59 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  v60 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v23 = *(v14 + 8);
  v22 = v14 + 8;
  v61 = v23;
  v23(v21, v13);
  if (!v67)
  {
    sub_21AEC6E68(v66, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v27 = v62;
    v26 = v63;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v28 = sub_21AF096CC();
    sub_21AEA7958(v28, qword_2812288E0);
    (v27[2])(v11, a2, v26);
    v29 = sub_21AF096AC();
    v30 = sub_21AF09A9C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v57 = v13;
      v58 = v22;
      v32 = v31;
      v33 = swift_slowAlloc();
      v65[0] = v33;
      *v32 = 136315138;
      v34 = v59;
      sub_21AF0953C();
      sub_21AF094FC();
      v61(v34, v57);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v35 = sub_21AF097DC();
      v37 = v36;
      (v27[1])(v11, v26);
      v38 = sub_21AECFFFC(v35, v37, v65);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_21AE94000, v29, v30, "rawSearchDataForSession: (engagedTsValues)sessionId malformed, val: %s", v32, 0xCu);
      sub_21AEA79F0(v33);
      MEMORY[0x21CEE5A20](v33, -1, -1);
      MEMORY[0x21CEE5A20](v32, -1, -1);
    }

    else
    {

      (v27[1])(v11, v26);
    }

    goto LABEL_15;
  }

  if (v65[0] != a3 || v65[1] != v58)
  {
    v25 = sub_21AF09E4C();

    if (v25)
    {
      goto LABEL_18;
    }

LABEL_15:
    v39 = 0;
    v40 = 1;
    goto LABEL_16;
  }

LABEL_18:
  sub_21AF0953C();
  sub_21AF094FC();
  v61(v19, v13);
  if (v67)
  {
    v42 = swift_dynamicCast();
    v43 = v62;
    v44 = v57;
    if (v42)
    {
      v40 = 0;
      v39 = v65[0];
      goto LABEL_16;
    }
  }

  else
  {
    sub_21AEC6E68(v66, &qword_27CD3D330, &unk_21AF0C420);
    v43 = v62;
    v44 = v57;
  }

  v45 = v63;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v46 = sub_21AF096CC();
  sub_21AEA7958(v46, qword_2812288E0);
  (v43[2])(v44, a2, v45);
  v47 = sub_21AF096AC();
  v48 = sub_21AF09A9C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v65[0] = v62;
    *v49 = 136315138;
    v50 = v44;
    v51 = v59;
    sub_21AF0953C();
    sub_21AF094FC();
    v61(v51, v13);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v52 = sub_21AF097DC();
    v54 = v53;
    (v43[1])(v50, v63);
    v55 = sub_21AECFFFC(v52, v54, v65);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_21AE94000, v47, v48, "rawSearchDataForSession: engagedTimeStampId, expected Int32, val: %s", v49, 0xCu);
    v56 = v62;
    sub_21AEA79F0(v62);
    MEMORY[0x21CEE5A20](v56, -1, -1);
    MEMORY[0x21CEE5A20](v49, -1, -1);
  }

  else
  {

    (v43[1])(v44, v45);
  }

  v39 = 0;
  v40 = 0;
LABEL_16:
  v41 = v64;
  *v64 = v39;
  *(v41 + 4) = v40;
}

void sub_21AEBA298(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t *a5@<X8>)
{
  v57 = a3;
  v58 = a4;
  v64 = a5;
  v7 = sub_21AF0952C();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v13 = sub_21AF094EC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v59 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  v60 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v23 = *(v14 + 8);
  v22 = (v14 + 8);
  v61 = v23;
  v23(v21, v13);
  if (!v67)
  {
    sub_21AEC6E68(v66, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v27 = v62;
    v26 = v63;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v28 = sub_21AF096CC();
    sub_21AEA7958(v28, qword_2812288E0);
    (*(v27 + 16))(v10, a2, v26);
    v29 = sub_21AF096AC();
    v30 = sub_21AF09A9C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v57 = v13;
      v58 = v22;
      v32 = v31;
      v33 = swift_slowAlloc();
      v65[0] = v33;
      *v32 = 136315138;
      v34 = v59;
      sub_21AF0953C();
      sub_21AF094FC();
      v61(v34, v57);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v35 = sub_21AF097DC();
      v37 = v36;
      (*(v27 + 8))(v10, v26);
      v38 = sub_21AECFFFC(v35, v37, v65);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_21AE94000, v29, v30, "rawSearchDataForSession: (engagementValues)sessionId malformed, val: %s", v32, 0xCu);
      sub_21AEA79F0(v33);
      MEMORY[0x21CEE5A20](v33, -1, -1);
      MEMORY[0x21CEE5A20](v32, -1, -1);
    }

    else
    {

      (*(v27 + 8))(v10, v26);
    }

    goto LABEL_15;
  }

  if (v65[0] != v57 || v65[1] != v58)
  {
    v25 = sub_21AF09E4C();

    if (v25)
    {
      goto LABEL_18;
    }

LABEL_15:
    v39 = 0;
    v40 = 1;
    goto LABEL_16;
  }

LABEL_18:
  sub_21AF0953C();
  sub_21AF094FC();
  v61(v19, v13);
  if (v67)
  {
    if (swift_dynamicCast())
    {
      v40 = 0;
      v39 = v65[0];
      goto LABEL_16;
    }
  }

  else
  {
    sub_21AEC6E68(v66, &qword_27CD3D330, &unk_21AF0C420);
  }

  v58 = "parent_cardSectionId";
  v42 = v63;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v43 = sub_21AF096CC();
  sub_21AEA7958(v43, qword_2812288E0);
  v44 = v62;
  (*(v62 + 16))(v12, a2, v42);
  v45 = sub_21AF096AC();
  v46 = sub_21AF09A9C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v56 = v12;
    v48 = v47;
    v49 = swift_slowAlloc();
    v65[0] = v49;
    *v48 = 136315138;
    v50 = v59;
    sub_21AF0953C();
    sub_21AF094FC();
    v61(v50, v13);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v51 = sub_21AF097DC();
    v53 = v52;
    (*(v44 + 8))(v56, v63);
    v54 = sub_21AECFFFC(v51, v53, v65);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_21AE94000, v45, v46, "rawSearchDataForSession: engagementCountId, expected Int64, val: %s", v48, 0xCu);
    sub_21AEA79F0(v49);
    MEMORY[0x21CEE5A20](v49, -1, -1);
    MEMORY[0x21CEE5A20](v48, -1, -1);
  }

  else
  {

    (*(v44 + 8))(v12, v42);
  }

  v39 = 0;
  v40 = 0;
LABEL_16:
  v41 = v64;
  *v64 = v39;
  *(v41 + 8) = v40;
}

void sub_21AEBA994(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v71 = a5;
  v64 = a3;
  v65 = a4;
  v7 = sub_21AF0942C();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_21AF0952C();
  v70 = *(v76 - 8);
  v9 = MEMORY[0x28223BE20](v76);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = (&v61 - v12);
  v13 = sub_21AF094EC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v67 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  v68 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v22 = *(v14 + 8);
  v69 = v13;
  v22(v21, v13);
  if (!v75)
  {
    sub_21AEC6E68(v74, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v26 = v76;
    v27 = v70;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v28 = sub_21AF096CC();
    sub_21AEA7958(v28, qword_2812288E0);
    (v27[2])(v11, a2, v26);
    v29 = sub_21AF096AC();
    v30 = sub_21AF09A9C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v72 = v66;
      *v31 = 136315138;
      v32 = v22;
      v33 = v67;
      sub_21AF0953C();
      sub_21AF094FC();
      v32(v33, v69);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v34 = sub_21AF097DC();
      v36 = v35;
      (v27[1])(v11, v76);
      v37 = sub_21AECFFFC(v34, v36, &v72);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_21AE94000, v29, v30, "rawSearchDataForSession: (parentIdValues)sessionId malformed, val: %s", v31, 0xCu);
      v38 = v66;
      sub_21AEA79F0(v66);
      MEMORY[0x21CEE5A20](v38, -1, -1);
      MEMORY[0x21CEE5A20](v31, -1, -1);
    }

    else
    {

      (v27[1])(v11, v26);
    }

    goto LABEL_15;
  }

  if (v72 == v64 && v73 == v65)
  {

    v25 = v66;
    goto LABEL_17;
  }

  v24 = sub_21AF09E4C();

  v25 = v66;
  if ((v24 & 1) == 0)
  {
LABEL_15:
    v39 = v71;
    *v71 = 0;
    v39[1] = 0;
    return;
  }

LABEL_17:
  sub_21AF0953C();
  sub_21AF094FC();
  v22(v19, v69);
  if (v75)
  {
    v40 = swift_dynamicCast();
    v41 = v70;
    if (v40)
    {
      v42 = v73;
      v43 = v71;
      *v71 = v72;
      v43[1] = v42;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v74, &qword_27CD3D330, &unk_21AF0C420);
    v41 = v70;
  }

  v44 = v76;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v45 = sub_21AF096CC();
  sub_21AEA7958(v45, qword_2812288E0);
  (v41[2])(v25, a2, v44);
  v46 = sub_21AF096AC();
  v47 = sub_21AF09A9C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v41;
    v49 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v72 = v70;
    *v49 = 136315138;
    v50 = v67;
    sub_21AF0953C();
    sub_21AF094FC();
    v22(v50, v69);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v51 = sub_21AF097DC();
    v53 = v52;
    (v48[1])(v66, v76);
    v54 = sub_21AECFFFC(v51, v53, &v72);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_21AE94000, v46, v47, "rawSearchDataForSession: parentSectionId, expected String, val: %s", v49, 0xCu);
    v55 = v70;
    sub_21AEA79F0(v70);
    MEMORY[0x21CEE5A20](v55, -1, -1);
    MEMORY[0x21CEE5A20](v49, -1, -1);
  }

  else
  {

    (v41[1])(v25, v44);
  }

  v56 = v61;
  sub_21AF0941C();
  v57 = sub_21AF0940C();
  v59 = v58;
  (*(v62 + 8))(v56, v63);
  v60 = v71;
  *v71 = v57;
  v60[1] = v59;
}

void sub_21AEBB13C()
{
  sub_21AEC7A20();
  v69 = v1;
  v70 = v2;
  v65 = v4;
  v66 = v3;
  v67 = v5;
  v68 = v6;
  v8 = v7;
  v76 = v9;
  sub_21AF0952C();
  sub_21AEA7C90();
  v74 = v11;
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  sub_21AEAD074();
  sub_21AEC7B28();
  MEMORY[0x28223BE20](v12);
  sub_21AEC774C();
  v14 = v13;
  sub_21AEAFBDC();
  v15 = sub_21AF094EC();
  sub_21AEA7C90();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_21AEC7504();
  v71 = v19;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v20);
  sub_21AEC763C();
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  v72 = *v8;
  sub_21AF0953C();
  sub_21AEC7740();
  sub_21AF094FC();
  v25 = *(v17 + 8);
  v24 = v17 + 8;
  v73 = v25;
  v25(v23, v15);
  if (!v80)
  {
    sub_21AEC6E68(v79, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  sub_21AEC78F8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v29 = v74;
    v30 = v75;
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v31 = sub_21AF096CC();
    sub_21AEC78A8(v31, qword_2812288E0);
    v32 = sub_21AEC7844();
    v33(v32);
    v34 = sub_21AF096AC();
    v35 = sub_21AF09A9C();
    v36 = sub_21AEC778C();
    if (os_log_type_enabled(v36, v37))
    {
      sub_21AEC76E4();
      v38 = swift_slowAlloc();
      v68 = v15;
      v69 = v24;
      v39 = v38;
      sub_21AEC76D8();
      v40 = swift_slowAlloc();
      v77 = v40;
      *v39 = 136315138;
      v41 = v71;
      sub_21AF0953C();
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AF094FC();
      v73(v41, v68);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AEC7758();
      sub_21AF097DC();
      sub_21AEC7DD0();
      (v29[1])(v0, v30);
      v42 = sub_21AEC7A08();
      sub_21AECFFFC(v42, v41, v43);
      sub_21AEC7EF8();
      *(v39 + 4) = v41;
      _os_log_impl(&dword_21AE94000, v34, v35, v70, v39, 0xCu);
      sub_21AEA79F0(v40);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20](v44);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20](v45);
    }

    else
    {

      (v29[1])(v0, v30);
    }

    goto LABEL_15;
  }

  if (v77 != v66 || v78 != v67)
  {
    v27 = sub_21AF09E4C();

    v28 = v14;
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_15:
    v46 = 0;
    goto LABEL_16;
  }

  v28 = v14;
LABEL_18:
  sub_21AF0953C();
  sub_21AF094FC();
  v47 = sub_21AEC7924();
  (v73)(v47);
  if (v80)
  {
    sub_21AEC78F8();
    v48 = swift_dynamicCast();
    v49 = v74;
    if (v48)
    {
      v46 = v77;
      goto LABEL_16;
    }
  }

  else
  {
    sub_21AEC6E68(v79, &qword_27CD3D330, &unk_21AF0C420);
    v49 = v74;
  }

  v50 = v75;
  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v51 = sub_21AF096CC();
  sub_21AEC78A8(v51, qword_2812288E0);
  v52 = sub_21AEC7844();
  v53(v52);
  v54 = sub_21AF096AC();
  v55 = v49;
  v56 = sub_21AF09A9C();
  v57 = sub_21AEC778C();
  if (os_log_type_enabled(v57, v58))
  {
    sub_21AEC76E4();
    v59 = swift_slowAlloc();
    sub_21AEC76D8();
    v74 = swift_slowAlloc();
    v77 = v74;
    *v59 = 136315138;
    v60 = v28;
    v61 = v71;
    sub_21AF0953C();
    sub_21AF094FC();
    v73(v61, v15);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    sub_21AF097DC();
    sub_21AEC7DD0();
    (v55[1])(v60, v75);
    v62 = sub_21AEC7A08();
    sub_21AECFFFC(v62, v24, v63);
    sub_21AEC7EF8();
    *(v59 + 4) = v61;
    sub_21AEC7EC8(&dword_21AE94000, v54, v56, v65);
    sub_21AEA79F0(v74);
    v64 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v64);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    (v49[1])(v28, v50);
  }

  v46 = 0;
LABEL_16:
  sub_21AEC7CE8(v46);
  sub_21AEC79D8();
}

void sub_21AEBB720(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v71 = a5;
  v64 = a3;
  v65 = a4;
  v7 = sub_21AF0942C();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x28223BE20](v7);
  v61 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_21AF0952C();
  v70 = *(v76 - 8);
  v9 = MEMORY[0x28223BE20](v76);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = (&v61 - v12);
  v13 = sub_21AF094EC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v67 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  v68 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v22 = *(v14 + 8);
  v69 = v13;
  v22(v21, v13);
  if (!v75)
  {
    sub_21AEC6E68(v74, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v26 = v76;
    v27 = v70;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v28 = sub_21AF096CC();
    sub_21AEA7958(v28, qword_2812288E0);
    (v27[2])(v11, a2, v26);
    v29 = sub_21AF096AC();
    v30 = sub_21AF09A9C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v72 = v66;
      *v31 = 136315138;
      v32 = v22;
      v33 = v67;
      sub_21AF0953C();
      sub_21AF094FC();
      v32(v33, v69);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v34 = sub_21AF097DC();
      v36 = v35;
      (v27[1])(v11, v76);
      v37 = sub_21AECFFFC(v34, v36, &v72);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_21AE94000, v29, v30, "rawSearchDataForSession: (resultIdValues)sessionId malformed, val: %s", v31, 0xCu);
      v38 = v66;
      sub_21AEA79F0(v66);
      MEMORY[0x21CEE5A20](v38, -1, -1);
      MEMORY[0x21CEE5A20](v31, -1, -1);
    }

    else
    {

      (v27[1])(v11, v26);
    }

    goto LABEL_15;
  }

  if (v72 == v64 && v73 == v65)
  {

    v25 = v66;
    goto LABEL_17;
  }

  v24 = sub_21AF09E4C();

  v25 = v66;
  if ((v24 & 1) == 0)
  {
LABEL_15:
    v39 = v71;
    *v71 = 0;
    v39[1] = 0;
    return;
  }

LABEL_17:
  sub_21AF0953C();
  sub_21AF094FC();
  v22(v19, v69);
  if (v75)
  {
    v40 = swift_dynamicCast();
    v41 = v70;
    if (v40)
    {
      v42 = v73;
      v43 = v71;
      *v71 = v72;
      v43[1] = v42;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v74, &qword_27CD3D330, &unk_21AF0C420);
    v41 = v70;
  }

  v44 = v76;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v45 = sub_21AF096CC();
  sub_21AEA7958(v45, qword_2812288E0);
  (v41[2])(v25, a2, v44);
  v46 = sub_21AF096AC();
  v47 = sub_21AF09A9C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v41;
    v49 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v72 = v70;
    *v49 = 136315138;
    v50 = v67;
    sub_21AF0953C();
    sub_21AF094FC();
    v22(v50, v69);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v51 = sub_21AF097DC();
    v53 = v52;
    (v48[1])(v66, v76);
    v54 = sub_21AECFFFC(v51, v53, &v72);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_21AE94000, v46, v47, "rawSearchDataForSession: resultId, expected String, val: %s", v49, 0xCu);
    v55 = v70;
    sub_21AEA79F0(v70);
    MEMORY[0x21CEE5A20](v55, -1, -1);
    MEMORY[0x21CEE5A20](v49, -1, -1);
  }

  else
  {

    (v41[1])(v25, v44);
  }

  v56 = v61;
  sub_21AF0941C();
  v57 = sub_21AF0940C();
  v59 = v58;
  (*(v62 + 8))(v56, v63);
  v60 = v71;
  *v71 = v57;
  v60[1] = v59;
}

void sub_21AEBBEC8(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v61 = a3;
  v62 = a4;
  v68 = a5;
  v7 = sub_21AF0952C();
  v8 = *(v7 - 8);
  v66 = v7;
  v67 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = sub_21AF094EC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v63 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v59 - v21;
  v64 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v24 = *(v15 + 8);
  v23 = v15 + 8;
  v65 = v24;
  v24(v22, v14);
  if (!v71)
  {
    sub_21AEC6E68(v70, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v27 = v66;
    v28 = v67;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v29 = sub_21AF096CC();
    sub_21AEA7958(v29, qword_2812288E0);
    (v28[2])(v11, a2, v27);
    v30 = sub_21AF096AC();
    v31 = sub_21AF09A9C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v61 = v14;
      v62 = v23;
      v33 = v32;
      v34 = swift_slowAlloc();
      v69[0] = v34;
      *v33 = 136315138;
      v35 = v63;
      sub_21AF0953C();
      sub_21AF094FC();
      v65(v35, v61);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v36 = sub_21AF097DC();
      v38 = v37;
      (v28[1])(v11, v27);
      v39 = sub_21AECFFFC(v36, v38, v69);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_21AE94000, v30, v31, "rawSearchDataForSession: sessionId malformed, val: %s", v33, 0xCu);
      sub_21AEA79F0(v34);
      MEMORY[0x21CEE5A20](v34, -1, -1);
      MEMORY[0x21CEE5A20](v33, -1, -1);
    }

    else
    {

      (v28[1])(v11, v27);
    }

    goto LABEL_15;
  }

  if (v69[0] != v61 || v69[1] != v62)
  {
    v26 = sub_21AF09E4C();

    if (v26)
    {
      goto LABEL_18;
    }

LABEL_15:
    v40 = 0;
    v41 = 1;
    goto LABEL_16;
  }

LABEL_18:
  sub_21AF0953C();
  sub_21AF094FC();
  v65(v20, v14);
  if (v71)
  {
    v43 = swift_dynamicCast();
    v44 = v67;
    if (v43)
    {
      v41 = 0;
      v40 = v69[0];
      goto LABEL_16;
    }
  }

  else
  {
    sub_21AEC6E68(v70, &qword_27CD3D330, &unk_21AF0C420);
    v44 = v67;
  }

  v45 = v66;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v46 = sub_21AF096CC();
  sub_21AEA7958(v46, qword_2812288E0);
  (v44[2])(v13, a2, v45);
  v47 = sub_21AF096AC();
  v48 = sub_21AF09A9C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v60 = v13;
    v50 = v49;
    v51 = v14;
    v52 = v44;
    v67 = swift_slowAlloc();
    v69[0] = v67;
    *v50 = 136315138;
    v53 = v63;
    sub_21AF0953C();
    sub_21AF094FC();
    v65(v53, v51);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v54 = sub_21AF097DC();
    v56 = v55;
    (v52[1])(v60, v45);
    v57 = sub_21AECFFFC(v54, v56, v69);

    *(v50 + 4) = v57;
    _os_log_impl(&dword_21AE94000, v47, v48, "rawSearchDataForSession: timeStampId. expected Int32, val: %s", v50, 0xCu);
    v58 = v67;
    sub_21AEA79F0(v67);
    MEMORY[0x21CEE5A20](v58, -1, -1);
    MEMORY[0x21CEE5A20](v50, -1, -1);
  }

  else
  {

    (v44[1])(v13, v45);
  }

  v40 = 0;
  v41 = 0;
LABEL_16:
  v42 = v68;
  *v68 = v40;
  *(v42 + 4) = v41;
}

void sub_21AEBC5D4()
{
  sub_21AEC7A20();
  v62 = v3;
  v56 = v4;
  v59 = v5;
  v60 = v6;
  v67 = v7;
  v58 = v8;
  sub_21AF0942C();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v9);
  sub_21AEA7CA4();
  v57 = v10;
  sub_21AEAFBDC();
  v73 = sub_21AF0952C();
  sub_21AEA7C90();
  v66 = v11;
  MEMORY[0x28223BE20](v12);
  sub_21AEAD074();
  sub_21AEC7718();
  MEMORY[0x28223BE20](v13);
  sub_21AEC774C();
  v61 = v14;
  sub_21AEAFBDC();
  v15 = sub_21AF094EC();
  sub_21AEA7C90();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_21AEC7504();
  v64 = v19;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v20);
  sub_21AEC763C();
  MEMORY[0x28223BE20](v21);
  sub_21AEC7B78();
  sub_21AF0953C();
  sub_21AEC7740();
  sub_21AF094FC();
  v22 = *(v17 + 8);
  v65 = v15;
  v23 = v22(v2, v15);
  if (!v72[3])
  {
    sub_21AEC6E68(v72, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_10;
  }

  if ((sub_21AEC7E50(v23, v24, v25, MEMORY[0x277D837D0]) & 1) == 0)
  {
LABEL_10:
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v29 = sub_21AF096CC();
    sub_21AEA7958(v29, qword_2812288E0);
    sub_21AEC7864();
    v30 = sub_21AEC7BC4();
    v31(v30);
    v32 = sub_21AF096AC();
    v33 = sub_21AF09A9C();
    if (sub_21AEC7EB0(v33))
    {
      sub_21AEC76E4();
      v34 = swift_slowAlloc();
      sub_21AEC76D8();
      v69 = swift_slowAlloc();
      *v34 = 136315138;
      sub_21AF0953C();
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AF094FC();
      v22(v64, v65);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AF097DC();
      sub_21AEC7780();
      (*(v66 + 8))(v1, v73);
      v35 = sub_21AEC76A0();
      sub_21AECFFFC(v35, v36, v37);
      sub_21AEC7C18();
      *(v34 + 4) = v64;
      _os_log_impl(&dword_21AE94000, v32, v33, v62, v34, 0xCu);
      sub_21AEA79F0(v69);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      v38 = sub_21AEC7BC4();
      v39(v38);
    }

    goto LABEL_15;
  }

  v63 = v22;
  if (v68 == v58 && v71 == v59)
  {

    v28 = v60;
    goto LABEL_18;
  }

  v27 = sub_21AF09E4C();

  v28 = v60;
  if ((v27 & 1) == 0)
  {
LABEL_15:
    *v67 = 0;
    v67[1] = 0;
    goto LABEL_16;
  }

LABEL_18:
  sub_21AF0953C();
  sub_21AF094FC();
  v40 = v63(v0, v15);
  if (sub_21AEC7E50(v40, v41, v42, MEMORY[0x277D837D0]))
  {
    *v67 = v68;
    v67[1] = v71;
  }

  else
  {
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v43 = sub_21AF096CC();
    sub_21AEA7958(v43, qword_2812288E0);
    sub_21AEC7864();
    v44 = sub_21AEC7924();
    v45(v44);
    v46 = sub_21AF096AC();
    v47 = sub_21AF09A9C();
    if (sub_21AEC7EB0(v47))
    {
      sub_21AEC76E4();
      v48 = swift_slowAlloc();
      sub_21AEC76D8();
      v70 = swift_slowAlloc();
      *v48 = 136315138;
      sub_21AF0953C();
      sub_21AF094FC();
      v63(v64, v15);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AF097DC();
      sub_21AEC7780();
      (*(v66 + 8))(v61, v73);
      v49 = sub_21AEC76A0();
      sub_21AECFFFC(v49, v50, v51);
      sub_21AEC7C18();
      *(v48 + 4) = v28;
      _os_log_impl(&dword_21AE94000, v46, v47, v56, v48, 0xCu);
      v28 = v70;
      sub_21AEA79F0(v70);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      v52 = sub_21AEC7924();
      v53(v52);
    }

    sub_21AF0941C();
    sub_21AF0940C();
    sub_21AEC7780();
    v54 = sub_21AEC7D80();
    v55(v54);
    *v67 = v28;
    v67[1] = v57;
  }

LABEL_16:
  sub_21AEC79D8();
}

void sub_21AEBCC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_21AEC7AE8();
  a19 = v24;
  a20 = v25;
  v144 = v26;
  v28 = v27;
  v30 = v29;
  v31 = sub_21AF0959C();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v32);
  sub_21AEA7CA4();
  sub_21AEA7574(&qword_27CD3D868, &qword_21AF0C638);
  sub_21AEA7C90();
  sub_21AEC7728();
  MEMORY[0x28223BE20](v33);
  sub_21AEC7AB0();
  sub_21AEA7574(&qword_27CD3D870, &qword_21AF0C640);
  sub_21AEA7C90();
  v147 = v35;
  v148 = v34;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v36);
  sub_21AEC7DC4();
  v146 = v37;
  sub_21AEA7574(&qword_27CD3D878, &qword_21AF0C648);
  sub_21AEA7C90();
  sub_21AEC7728();
  MEMORY[0x28223BE20](v38);
  v39 = sub_21AEC7E90();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v40);
  sub_21AEC7554();
  sub_21AEC7708();
  v149 = sub_21AF0957C();
  sub_21AEA7C90();
  v145 = v41;
  MEMORY[0x28223BE20](v42);
  sub_21AEC7554();
  sub_21AEC7CC8();
  sub_21AF0956C();
  sub_21AF0954C();
  v43 = sub_21AF0951C();
  if (v43 < 0)
  {
    __break(1u);
  }

  else
  {
    v142 = v39;
    v143 = v30;
    v44 = sub_21AEEF4D0(0, v43);
    MEMORY[0x28223BE20](v44);
    sub_21AEC7544();
    *(v45 - 16) = v22;
    *(v45 - 8) = v28;
    v46 = sub_21AEC7668();
    v49 = sub_21AEB5998(v46, v47, v48);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v50);
    sub_21AEC7544();
    *(v51 - 16) = v22;
    *(v51 - 8) = v28;
    v52 = sub_21AEC7668();
    v55 = sub_21AEB5AB8(v52, v53, v54);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v56);
    sub_21AEC7544();
    *(v57 - 16) = v22;
    *(v57 - 8) = v28;
    v58 = sub_21AEC7668();
    sub_21AEB5BD4(v58, v59, v60);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v61);
    sub_21AEC7544();
    *(v62 - 16) = v22;
    *(v62 - 8) = v28;
    v63 = sub_21AEC7668();
    sub_21AEB5998(v63, v64, v65);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v66);
    sub_21AEC7544();
    *(v67 - 16) = v22;
    *(v67 - 8) = v28;
    v68 = sub_21AEC7668();
    sub_21AEB5BD4(v68, v69, v70);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v71);
    sub_21AEC7544();
    *(v72 - 16) = v22;
    *(v72 - 8) = v28;
    v73 = sub_21AEC7668();
    v138 = sub_21AEB5BD4(v73, v74, v75);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v76);
    sub_21AEC7544();
    *(v77 - 16) = v22;
    *(v77 - 8) = v28;
    v78 = sub_21AEC7668();
    v139 = sub_21AEB5998(v78, v79, v80);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v81);
    sub_21AEC7544();
    *(v82 - 16) = v22;
    *(v82 - 8) = v28;
    v83 = sub_21AEC7668();
    v140 = sub_21AEB5AB8(v83, v84, v85);
    sub_21AEC75F8();
    MEMORY[0x28223BE20](v86);
    sub_21AEC7544();
    *(v87 - 16) = v22;
    *(v87 - 8) = v28;
    v88 = sub_21AEC7668();
    v141 = sub_21AEB5998(v88, v89, v90);

    if (*(v49 + 16))
    {
      sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC6FEC(&qword_27CD3D888, &qword_27CD3D880, &qword_21AF0C650);
      sub_21AEC74C8();
      sub_21AEC7D68();
      sub_21AF095AC();
      sub_21AF0955C();
      sub_21AEC7A54();
      v91(v20);
    }

    else
    {
    }

    if (*(v55 + 16))
    {
      v92 = sub_21AEC7734();
      sub_21AEA7574(v92, v93);
      sub_21AEC7B00(&qword_27CD3D898);
      sub_21AEC75B0();
      sub_21AEC7AA4();
      sub_21AF095AC();
      sub_21AEC76A0();
      sub_21AF0955C();
      (*(v147 + 8))(v146, v148);
    }

    else
    {
    }

    sub_21AEC77B8(&a16);
    if (v94)
    {
      v95 = sub_21AEC76A0();
      sub_21AEA7574(v95, v96);
      sub_21AEC795C(&qword_27CD3D8A8);
      v97 = sub_21AEC7BE8();
      sub_21AEC798C(v97);
      sub_21AEC7764();
      sub_21AEC7D5C();
      v98(v21);
    }

    else
    {
    }

    sub_21AEC77B8(&a17);
    if (v99)
    {
      v100 = sub_21AEC76A0();
      sub_21AEA7574(v100, v101);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7D68();
      sub_21AEC798C(v102);
      sub_21AEC78CC();
      sub_21AF0955C();
      sub_21AEC7A54();
      v103(v20);
    }

    else
    {
    }

    sub_21AEC77B8(&a18);
    if (v104)
    {
      v105 = sub_21AEC76A0();
      sub_21AEA7574(v105, v106);
      sub_21AEC795C(&qword_27CD3D8A8);
      v107 = sub_21AEC7564();
      sub_21AEC798C(v107);
      sub_21AEC7764();
      sub_21AEC7D5C();
      v108(v21);
    }

    else
    {
    }

    if (*(v138 + 16))
    {
      v109 = sub_21AEC76A0();
      sub_21AEA7574(v109, v110);
      sub_21AEC795C(&qword_27CD3D8A8);
      v111 = sub_21AEC7674();
      sub_21AEC798C(v111);
      sub_21AEC7764();
      v112 = sub_21AEC7D74();
      v113(v112);
    }

    else
    {
    }

    if (*(v139 + 16))
    {
      v114 = sub_21AEC76A0();
      sub_21AEA7574(v114, v115);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7D68();
      sub_21AEC798C(v116);
      sub_21AEC78CC();
      sub_21AF0955C();
      sub_21AEC7A54();
      v117(v20);
    }

    else
    {
    }

    if (*(v140 + 16))
    {
      v118 = sub_21AEC76A0();
      sub_21AEA7574(v118, v119);
      sub_21AEC795C(&qword_27CD3D898);
      v120 = sub_21AEC758C();
      sub_21AEC798C(v120);
      sub_21AEC7764();
      v121 = sub_21AEC7D74();
      v122(v121);
    }

    else
    {
    }

    if (*(v141 + 16))
    {
      v123 = sub_21AEC76A0();
      sub_21AEA7574(v123, v124);
      sub_21AEC795C(&qword_27CD3D888);
      sub_21AEC7530();
      sub_21AEC7D68();
      sub_21AEC7740();
      sub_21AEC798C(v125);
      sub_21AEC78CC();
      sub_21AF0955C();
      v126 = sub_21AEC7D80();
      v127(v126);
    }

    else
    {
    }

    if (v144)
    {
      v128 = MEMORY[0x277D837D0];
      sub_21AEC7798();
      v129 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v130 = sub_21AEC7C30(v129);
      sub_21AEC7A14(v130, xmmword_21AF0C5D0);
      sub_21AF09C5C();

      sub_21AEC7BD0();
      v150 = v131;
      v132 = sub_21AF09E1C();
      MEMORY[0x21CEE4A70](v132);

      MEMORY[0x21CEE4A70](10, 0xE100000000000000);
      v133 = sub_21AF094CC();
      MEMORY[0x21CEE4A70](v133);

      v130[3].n128_u64[1] = v128;
      v130[2].n128_u64[0] = 0xD00000000000001DLL;
      v130[2].n128_u64[1] = v150;
      sub_21AEC76AC(v130);

      v134 = sub_21AEC7D74();
      v135(v134, v31);
    }

    (*(v145 + 32))(v143, v23, v149);
    v136 = sub_21AEC7D8C();
    v137(v136, v142);
    sub_21AEC79F0();
  }
}

void sub_21AEBD730(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _DWORD *a4@<X8>)
{
  v60 = a4;
  v7 = sub_21AF0952C();
  v59 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = (&v52 - v11);
  v12 = sub_21AF094EC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v56 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v57 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v21 = *(v13 + 8);
  v58 = v12;
  v21(v20, v12);
  if (!v62)
  {
    sub_21AEC6E68(v61, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v55 = v21;
    v24 = v7;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v25 = sub_21AF096CC();
    sub_21AEA7958(v25, qword_2812288E0);
    v26 = v59;
    (*(v59 + 16))(v10, a2, v24);
    v27 = sub_21AF096AC();
    v28 = sub_21AF09A9C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v54 = v24;
      v31 = v30;
      v63 = v30;
      *v29 = 136315138;
      v32 = v56;
      sub_21AF0953C();
      sub_21AF094FC();
      v55(v32, v58);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v33 = sub_21AF097DC();
      v35 = v34;
      (*(v26 + 8))(v10, v54);
      v36 = sub_21AECFFFC(v33, v35, &v63);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_21AE94000, v27, v28, "rawSearchDataForQueryId: (engagedTsValues)queryId malformed, val: %s", v29, 0xCu);
      sub_21AEA79F0(v31);
      MEMORY[0x21CEE5A20](v31, -1, -1);
      MEMORY[0x21CEE5A20](v29, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v10, v24);
    }

    goto LABEL_13;
  }

  if (v63 != a3)
  {
LABEL_13:
    v23 = 0;
    v22 = 1;
    goto LABEL_14;
  }

  sub_21AF0953C();
  sub_21AF094FC();
  v21(v18, v58);
  if (v62)
  {
    if (swift_dynamicCast())
    {
      v22 = 0;
      v23 = v63;
      goto LABEL_14;
    }
  }

  else
  {
    sub_21AEC6E68(v61, &qword_27CD3D330, &unk_21AF0C420);
  }

  v38 = v7;
  v39 = v59;
  v40 = v55;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v41 = sub_21AF096CC();
  sub_21AEA7958(v41, qword_2812288E0);
  (*(v39 + 16))(v40, a2, v38);
  v42 = sub_21AF096AC();
  v43 = sub_21AF09A9C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v38;
    v63 = v53;
    *v44 = 136315138;
    v45 = v40;
    v46 = v56;
    sub_21AF0953C();
    sub_21AF094FC();
    v21(v46, v58);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v47 = sub_21AF097DC();
    v49 = v48;
    (*(v39 + 8))(v45, v54);
    v50 = sub_21AECFFFC(v47, v49, &v63);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_21AE94000, v42, v43, "rawSearchDataForQueryId: engagedTimeStampId, expected Int32, val: %s", v44, 0xCu);
    v51 = v53;
    sub_21AEA79F0(v53);
    MEMORY[0x21CEE5A20](v51, -1, -1);
    MEMORY[0x21CEE5A20](v44, -1, -1);
  }

  else
  {

    (*(v39 + 8))(v40, v38);
  }

  v23 = 0;
  v22 = 0;
LABEL_14:
  v37 = v60;
  *v60 = v23;
  *(v37 + 4) = v22;
}

void sub_21AEBDE04(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, void (**a4)(char *, uint64_t)@<X8>)
{
  v57 = a4;
  v54 = a3;
  v6 = sub_21AF0952C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = (&v49 - v11);
  v12 = sub_21AF094EC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v56 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v21 = *(v13 + 8);
  v21(v20, v12);
  if (!v59)
  {
    sub_21AEC6E68(v58, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v54 = v21;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v24 = sub_21AF096CC();
    sub_21AEA7958(v24, qword_2812288E0);
    (*(v7 + 16))(v10, a2, v6);
    v25 = sub_21AF096AC();
    v26 = sub_21AF09A9C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v52 = v6;
      v28 = v27;
      v29 = v7;
      v53 = swift_slowAlloc();
      v60 = v53;
      *v28 = 136315138;
      v30 = v55;
      sub_21AF0953C();
      sub_21AF094FC();
      v54(v30, v12);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v31 = sub_21AF097DC();
      v33 = v32;
      (*(v29 + 8))(v10, v52);
      v34 = sub_21AECFFFC(v31, v33, &v60);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_21AE94000, v25, v26, "rawSearchDataForQueryId: (engagementValues)queryId malformed, val: %s", v28, 0xCu);
      v35 = v53;
      sub_21AEA79F0(v53);
      MEMORY[0x21CEE5A20](v35, -1, -1);
      MEMORY[0x21CEE5A20](v28, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    goto LABEL_13;
  }

  if (v60 != v54)
  {
LABEL_13:
    v23 = 0;
    v22 = 1;
    goto LABEL_14;
  }

  v54 = v21;
  sub_21AF0953C();
  sub_21AF094FC();
  v54(v18, v12);
  if (v59)
  {
    if (swift_dynamicCast())
    {
      v22 = 0;
      v23 = v60;
      goto LABEL_14;
    }
  }

  else
  {
    sub_21AEC6E68(v58, &qword_27CD3D330, &unk_21AF0C420);
  }

  v51 = "parent_cardSectionId";
  v37 = v53;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v38 = sub_21AF096CC();
  sub_21AEA7958(v38, qword_2812288E0);
  (*(v7 + 16))(v37, a2, v6);
  v39 = sub_21AF096AC();
  v40 = sub_21AF09A9C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v52 = v6;
    v42 = v41;
    v50 = swift_slowAlloc();
    v60 = v50;
    *v42 = 136315138;
    v43 = v55;
    sub_21AF0953C();
    sub_21AF094FC();
    v54(v43, v12);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v44 = sub_21AF097DC();
    v46 = v45;
    (*(v7 + 8))(v37, v52);
    v47 = sub_21AECFFFC(v44, v46, &v60);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_21AE94000, v39, v40, "rawSearchDataForQueryId: engagementCountId, expected Int64, val: %s", v42, 0xCu);
    v48 = v50;
    sub_21AEA79F0(v50);
    MEMORY[0x21CEE5A20](v48, -1, -1);
    MEMORY[0x21CEE5A20](v42, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v37, v6);
  }

  v23 = 0;
  v22 = 0;
LABEL_14:
  v36 = v57;
  *v57 = v23;
  *(v36 + 8) = v22;
}

void sub_21AEBE4D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v65 = a3;
  v70 = a4;
  v6 = sub_21AF0942C();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF0952C();
  v69 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = (v60 - v12);
  v13 = sub_21AF094EC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v60 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v60 - v20;
  v67 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v22 = *(v14 + 8);
  v68 = v13;
  v22(v21, v13);
  if (!v73)
  {
    sub_21AEC6E68(v72, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v27 = v8;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v28 = sub_21AF096CC();
    sub_21AEA7958(v28, qword_2812288E0);
    v29 = v69;
    (*(v69 + 16))(v11, a2, v27);
    v30 = sub_21AF096AC();
    v31 = sub_21AF09A9C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = v27;
      v71[0] = v64;
      *v32 = 136315138;
      v33 = v22;
      v34 = v66;
      sub_21AF0953C();
      sub_21AF094FC();
      v33(v34, v68);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v35 = sub_21AF097DC();
      v37 = v36;
      (*(v29 + 8))(v11, v65);
      v38 = sub_21AECFFFC(v35, v37, v71);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_21AE94000, v30, v31, "rawSearchDataForQueryId: (parentIdValues)queryId malformed, val: %s", v32, 0xCu);
      v39 = v64;
      sub_21AEA79F0(v64);
      MEMORY[0x21CEE5A20](v39, -1, -1);
      MEMORY[0x21CEE5A20](v32, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v11, v27);
    }

    goto LABEL_13;
  }

  if (v71[0] != v65)
  {
LABEL_13:
    v40 = v70;
    *v70 = 0;
    v40[1] = 0;
    return;
  }

  sub_21AF0953C();
  sub_21AF094FC();
  v22(v19, v68);
  if (v73)
  {
    v23 = swift_dynamicCast();
    v24 = v64;
    if (v23)
    {
      v25 = v71[1];
      v26 = v70;
      *v70 = v71[0];
      v26[1] = v25;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v72, &qword_27CD3D330, &unk_21AF0C420);
    v24 = v64;
  }

  v41 = v8;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v42 = sub_21AF096CC();
  sub_21AEA7958(v42, qword_2812288E0);
  v43 = v69;
  (*(v69 + 16))(v24, a2, v41);
  v44 = sub_21AF096AC();
  v45 = sub_21AF09A9C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v60[1] = "result_identifier";
    v47 = v46;
    v64 = swift_slowAlloc();
    v71[0] = v64;
    *v47 = 136315138;
    v65 = v41;
    v48 = v24;
    v49 = v66;
    sub_21AF0953C();
    sub_21AF094FC();
    v22(v49, v68);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v50 = sub_21AF097DC();
    v52 = v51;
    (*(v43 + 8))(v48, v65);
    v53 = sub_21AECFFFC(v50, v52, v71);

    *(v47 + 4) = v53;
    _os_log_impl(&dword_21AE94000, v44, v45, "rawSearchDataForQueryId: parentSectionId, expected String, val: %s", v47, 0xCu);
    v54 = v64;
    sub_21AEA79F0(v64);
    MEMORY[0x21CEE5A20](v54, -1, -1);
    MEMORY[0x21CEE5A20](v47, -1, -1);
  }

  else
  {

    (*(v43 + 8))(v24, v41);
  }

  v55 = v61;
  sub_21AF0941C();
  v56 = sub_21AF0940C();
  v58 = v57;
  (*(v62 + 8))(v55, v63);
  v59 = v70;
  *v70 = v56;
  v59[1] = v58;
}

void sub_21AEBEC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_21AEC7A20();
  v57 = v12;
  v58 = v13;
  v55 = v14;
  v16 = v15;
  sub_21AEC7874();
  v17 = sub_21AF0952C();
  sub_21AEA7C90();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_21AEAD074();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  sub_21AEC774C();
  v56 = v25;
  sub_21AEAFBDC();
  v26 = sub_21AF094EC();
  sub_21AEA7C90();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_21AEC7504();
  v59 = v30;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v31);
  sub_21AEC763C();
  MEMORY[0x28223BE20](v32);
  sub_21AEC7B68();
  sub_21AF0953C();
  sub_21AEC7564();
  sub_21AF094FC();
  v33 = *(v28 + 8);
  v33(v10, v26);
  if (!v60[3])
  {
    sub_21AEC6E68(v60, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_7;
  }

  sub_21AEC7D28();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v35 = sub_21AF096CC();
    sub_21AEA7958(v35, qword_2812288E0);
    sub_21AEC7864();
    v36(v23, v16, v17);
    v37 = sub_21AF096AC();
    v38 = sub_21AF09A9C();
    v39 = sub_21AEC778C();
    if (os_log_type_enabled(v39, v40))
    {
      sub_21AEC76E4();
      v53 = v17;
      v41 = swift_slowAlloc();
      sub_21AEC76D8();
      v61 = swift_slowAlloc();
      *v41 = 136315138;
      sub_21AF0953C();
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AF094FC();
      v33(v59, v26);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AEC7758();
      sub_21AF097DC();
      sub_21AEC7DD0();
      (*(v19 + 8))(v23, v53);
      v42 = sub_21AEC7BB8();
      sub_21AECFFFC(v42, v59, v43);
      sub_21AEC7EF8();
      *(v41 + 4) = v59;
      sub_21AEC7EC8(&dword_21AE94000, v37, v38, v58);
      sub_21AEA79F0(v61);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      (*(v19 + 8))(v23, v17);
    }

    goto LABEL_12;
  }

  if (a10 != v57)
  {
LABEL_12:
    v34 = 0;
    goto LABEL_13;
  }

  sub_21AF0953C();
  sub_21AEC7A6C();
  v33(v11, v26);
  sub_21AEC7D28();
  if (swift_dynamicCast())
  {
    v34 = a10;
  }

  else
  {
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v44 = sub_21AF096CC();
    sub_21AEA7958(v44, qword_2812288E0);
    sub_21AEC7864();
    v45 = sub_21AEC7924();
    v46(v45);
    v47 = sub_21AF096AC();
    v48 = sub_21AF09A9C();
    if (os_log_type_enabled(v47, v48))
    {
      sub_21AEC76E4();
      v54 = v17;
      v49 = swift_slowAlloc();
      sub_21AEC76D8();
      v62 = swift_slowAlloc();
      *v49 = 136315138;
      sub_21AF0953C();
      sub_21AF094FC();
      v33(v59, v26);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AEC7758();
      sub_21AF097DC();
      sub_21AEC7780();
      (*(v19 + 8))(v56, v54);
      v50 = sub_21AEC76A0();
      sub_21AECFFFC(v50, v51, v52);
      sub_21AEC7C18();
      *(v49 + 4) = v59;
      sub_21AEC7EC8(&dword_21AE94000, v47, v48, v55);
      sub_21AEA79F0(v62);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    else
    {

      (*(v19 + 8))(v56, v17);
    }

    v34 = 0;
  }

LABEL_13:
  sub_21AEC7CE8(v34);
  sub_21AEC79D8();
}

void sub_21AEBF1D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v65 = a3;
  v70 = a4;
  v6 = sub_21AF0942C();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF0952C();
  v69 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v64 = (v60 - v12);
  v13 = sub_21AF094EC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v60 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v60 - v20;
  v67 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v22 = *(v14 + 8);
  v68 = v13;
  v22(v21, v13);
  if (!v73)
  {
    sub_21AEC6E68(v72, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v27 = v8;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v28 = sub_21AF096CC();
    sub_21AEA7958(v28, qword_2812288E0);
    v29 = v69;
    (*(v69 + 16))(v11, a2, v27);
    v30 = sub_21AF096AC();
    v31 = sub_21AF09A9C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = v27;
      v71[0] = v64;
      *v32 = 136315138;
      v33 = v22;
      v34 = v66;
      sub_21AF0953C();
      sub_21AF094FC();
      v33(v34, v68);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v35 = sub_21AF097DC();
      v37 = v36;
      (*(v29 + 8))(v11, v65);
      v38 = sub_21AECFFFC(v35, v37, v71);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_21AE94000, v30, v31, "rawSearchDataForQueryId: (resultIdValues)queryId malformed, val: %s", v32, 0xCu);
      v39 = v64;
      sub_21AEA79F0(v64);
      MEMORY[0x21CEE5A20](v39, -1, -1);
      MEMORY[0x21CEE5A20](v32, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v11, v27);
    }

    goto LABEL_13;
  }

  if (v71[0] != v65)
  {
LABEL_13:
    v40 = v70;
    *v70 = 0;
    v40[1] = 0;
    return;
  }

  sub_21AF0953C();
  sub_21AF094FC();
  v22(v19, v68);
  if (v73)
  {
    v23 = swift_dynamicCast();
    v24 = v64;
    if (v23)
    {
      v25 = v71[1];
      v26 = v70;
      *v70 = v71[0];
      v26[1] = v25;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v72, &qword_27CD3D330, &unk_21AF0C420);
    v24 = v64;
  }

  v41 = v8;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v42 = sub_21AF096CC();
  sub_21AEA7958(v42, qword_2812288E0);
  v43 = v69;
  (*(v69 + 16))(v24, a2, v41);
  v44 = sub_21AF096AC();
  v45 = sub_21AF09A9C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v60[1] = "AMLPhotosSearchPoirotMetrics";
    v47 = v46;
    v64 = swift_slowAlloc();
    v71[0] = v64;
    *v47 = 136315138;
    v65 = v41;
    v48 = v24;
    v49 = v66;
    sub_21AF0953C();
    sub_21AF094FC();
    v22(v49, v68);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v50 = sub_21AF097DC();
    v52 = v51;
    (*(v43 + 8))(v48, v65);
    v53 = sub_21AECFFFC(v50, v52, v71);

    *(v47 + 4) = v53;
    _os_log_impl(&dword_21AE94000, v44, v45, "rawSearchDataForQueryId: resultId, expected String, val: %s", v47, 0xCu);
    v54 = v64;
    sub_21AEA79F0(v64);
    MEMORY[0x21CEE5A20](v54, -1, -1);
    MEMORY[0x21CEE5A20](v47, -1, -1);
  }

  else
  {

    (*(v43 + 8))(v24, v41);
  }

  v55 = v61;
  sub_21AF0941C();
  v56 = sub_21AF0940C();
  v58 = v57;
  (*(v62 + 8))(v55, v63);
  v59 = v70;
  *v70 = v56;
  v59[1] = v58;
}

void sub_21AEBF94C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, _DWORD *a4@<X8>)
{
  v55 = a4;
  v52 = a3;
  v6 = sub_21AF0952C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = (&v49 - v11);
  v12 = sub_21AF094EC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v54 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v21 = *(v13 + 8);
  v21(v20, v12);
  if (!v57)
  {
    sub_21AEC6E68(v56, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v52 = v21;
    if (qword_27CD3D270 != -1)
    {
      swift_once();
    }

    v24 = sub_21AF096CC();
    sub_21AEA7958(v24, qword_2812288E0);
    (*(v7 + 16))(v10, a2, v6);
    v25 = sub_21AF096AC();
    v26 = sub_21AF09A9C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v50 = v6;
      v28 = v27;
      v29 = v7;
      v51 = swift_slowAlloc();
      v58 = v51;
      *v28 = 136315138;
      v30 = v53;
      sub_21AF0953C();
      sub_21AF094FC();
      v52(v30, v12);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      v31 = sub_21AF097DC();
      v33 = v32;
      (*(v29 + 8))(v10, v50);
      v34 = sub_21AECFFFC(v31, v33, &v58);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_21AE94000, v25, v26, "rawSearchDataForQueryId: (tsValues)queryId malformed, val: %s", v28, 0xCu);
      v35 = v51;
      sub_21AEA79F0(v51);
      MEMORY[0x21CEE5A20](v35, -1, -1);
      MEMORY[0x21CEE5A20](v28, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    goto LABEL_13;
  }

  if (v58 != v52)
  {
LABEL_13:
    v23 = 0;
    v22 = 1;
    goto LABEL_14;
  }

  v52 = v21;
  sub_21AF0953C();
  sub_21AF094FC();
  v52(v18, v12);
  if (v57)
  {
    if (swift_dynamicCast())
    {
      v22 = 0;
      v23 = v58;
      goto LABEL_14;
    }
  }

  else
  {
    sub_21AEC6E68(v56, &qword_27CD3D330, &unk_21AF0C420);
  }

  v37 = v51;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v38 = sub_21AF096CC();
  sub_21AEA7958(v38, qword_2812288E0);
  (*(v7 + 16))(v37, a2, v6);
  v39 = sub_21AF096AC();
  v40 = sub_21AF09A9C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v50 = v6;
    v42 = v41;
    v49 = swift_slowAlloc();
    v58 = v49;
    *v42 = 136315138;
    v43 = v53;
    sub_21AF0953C();
    sub_21AF094FC();
    v52(v43, v12);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v44 = sub_21AF097DC();
    v46 = v45;
    (*(v7 + 8))(v37, v50);
    v47 = sub_21AECFFFC(v44, v46, &v58);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_21AE94000, v39, v40, "rawSearchDataForQueryId: timeStampId. expected Int32, val: %s", v42, 0xCu);
    v48 = v49;
    sub_21AEA79F0(v49);
    MEMORY[0x21CEE5A20](v48, -1, -1);
    MEMORY[0x21CEE5A20](v42, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v37, v6);
  }

  v23 = 0;
  v22 = 0;
LABEL_14:
  v36 = v55;
  *v55 = v23;
  *(v36 + 4) = v22;
}

void sub_21AEC0018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_21AEC7A20();
  v89 = v8;
  v90 = v9;
  v83 = v10;
  v88 = v11;
  v91 = v12;
  v14 = v13;
  v94 = v15;
  sub_21AF0942C();
  sub_21AEA7C90();
  v85 = v17;
  v86 = v16;
  MEMORY[0x28223BE20](v16);
  sub_21AEA7CA4();
  v84 = v18;
  sub_21AEAFBDC();
  v19 = sub_21AF0952C();
  sub_21AEA7C90();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_21AEAD074();
  sub_21AEC7718();
  MEMORY[0x28223BE20](v23);
  sub_21AEC774C();
  v87 = v24;
  sub_21AEAFBDC();
  v25 = sub_21AF094EC();
  sub_21AEA7C90();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_21AEC7504();
  v92 = v29;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v30);
  sub_21AEC763C();
  MEMORY[0x28223BE20](v31);
  v33 = &v83 - v32;
  v93 = *v14;
  sub_21AF0953C();
  sub_21AEC7564();
  sub_21AF094FC();
  v34 = *(v27 + 8);
  (v34)(v33, v25);
  if (!v98)
  {
    sub_21AEC6E68(v97, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_8;
  }

  sub_21AEC78F8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v91 = v34;
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v40 = sub_21AF096CC();
    sub_21AEC78A8(v40, qword_2812288E0);
    v41 = sub_21AEC7BA0();
    v42(v41);
    v43 = sub_21AF096AC();
    sub_21AF09A9C();
    v44 = sub_21AEC778C();
    if (os_log_type_enabled(v44, v45))
    {
      sub_21AEC76E4();
      v46 = swift_slowAlloc();
      v88 = v19;
      v47 = v46;
      sub_21AEC76D8();
      v48 = v21;
      v89 = swift_slowAlloc();
      v95 = v89;
      *v47 = 136315138;
      v49 = v92;
      sub_21AF0953C();
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AF094FC();
      (v91)(v49, v25);
      sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
      sub_21AEC7758();
      sub_21AF097DC();
      v51 = v50;
      (*(v48 + 8))(v7, v88);
      v52 = sub_21AEC7A08();
      v54 = sub_21AECFFFC(v52, v51, v53);

      *(v47 + 4) = v54;
      sub_21AEC7DB8();
      sub_21AEC7EC8(v55, v56, v57, v90);
      sub_21AEA79F0(v89);
      v58 = sub_21AEC75E8();
      MEMORY[0x21CEE5A20](v58);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20](v59);
    }

    else
    {

      (*(v21 + 8))(v7, v19);
    }

    goto LABEL_13;
  }

  if (v95 != v91)
  {
LABEL_13:
    v60 = v94;
    *v94 = 0;
    v60[1] = 0;
    goto LABEL_14;
  }

  v91 = v34;
  sub_21AF0953C();
  sub_21AEC7A6C();
  v35 = sub_21AEC77C4();
  (v91)(v35);
  if (v98)
  {
    sub_21AEC78F8();
    v36 = swift_dynamicCast();
    v37 = v87;
    if (v36)
    {
      v38 = v96;
      v39 = v94;
      *v94 = v95;
      v39[1] = v38;
      goto LABEL_14;
    }
  }

  else
  {
    sub_21AEC6E68(v97, &qword_27CD3D330, &unk_21AF0C420);
    v37 = v87;
  }

  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v61 = sub_21AF096CC();
  sub_21AEC78A8(v61, qword_2812288E0);
  v62 = sub_21AEC7BA0();
  v63(v62);
  v64 = sub_21AF096AC();
  sub_21AF09A9C();
  v65 = sub_21AEC778C();
  if (os_log_type_enabled(v65, v66))
  {
    sub_21AEC76E4();
    v67 = swift_slowAlloc();
    v87 = v67;
    sub_21AEC76D8();
    v90 = swift_slowAlloc();
    v95 = v90;
    *v67 = 136315138;
    sub_21AF0953C();
    sub_21AEC7A6C();
    v68 = sub_21AEC77C4();
    (v91)(v68);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    v69 = sub_21AF097DC();
    v71 = v70;
    (*(v21 + 8))(v37, v19);
    v72 = sub_21AEC7A08();
    sub_21AECFFFC(v72, v71, v73);
    sub_21AEC7F10();
    *(v87 + 1) = v69;
    sub_21AEC7DB8();
    _os_log_impl(v74, v75, v76, v83, v77, 0xCu);
    sub_21AEA79F0(v90);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
    v78 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v78);
  }

  else
  {

    (*(v21 + 8))(v37, v19);
  }

  v79 = v84;
  sub_21AF0941C();
  sub_21AF0940C();
  sub_21AEC7780();
  v80 = sub_21AEC7D80();
  v81(v80);
  v82 = v94;
  *v94 = v64;
  v82[1] = v79;
LABEL_14:
  sub_21AEC79D8();
}

void sub_21AEC062C(uint64_t a1, uint64_t a2)
{
  sub_21AEC7AE8();
  v25 = v3;
  v27 = sub_21AF094EC();
  sub_21AEA7C90();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_21AEAD074();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_21AEC774C();
  v26 = v11;
  sub_21AEAFBDC();
  sub_21AF0952C();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v12);
  sub_21AEC7554();
  sub_21AEC7CC8();
  v13 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618) - 8;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v14);
  sub_21AEC7AB0();
  sub_21AF0954C();
  v15 = sub_21AEC7844();
  v16(v15);
  v17 = *(v13 + 44);
  sub_21AEC5A18();
  sub_21AEC7BC4();
  sub_21AF099FC();
  v18 = sub_21AEC7BDC();
  v19(v18);
  while (1)
  {
    sub_21AEC7BC4();
    sub_21AF09A1C();
    if (*(v2 + v17) == *&v31[0])
    {
      sub_21AEC6E68(v2, &qword_27CD3D850, &qword_21AF0C618);
LABEL_9:
      sub_21AEC79F0();
      return;
    }

    v20 = sub_21AF09A6C();
    (*(v5 + 16))(v26);
    v20(v31, 0);
    sub_21AF09A2C();
    (*(v5 + 32))(v9, v26, v27);
    sub_21AEC7564();
    sub_21AF094FC();
    if (!v30)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_21AEAF9F4(&v29, v31);
    swift_dynamicCast();
    if (v28 == v25)
    {
      break;
    }

    v21 = sub_21AEC7D48();
    v22(v21);
  }

  sub_21AEC758C();
  sub_21AF094FC();
  if (v30)
  {
    v23 = sub_21AEC7D48();
    v24(v23);
    sub_21AEC6E68(v2, &qword_27CD3D850, &qword_21AF0C618);
    sub_21AEAF9F4(&v29, v31);
    swift_dynamicCast();
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
}

void sub_21AEC09AC(uint64_t a1)
{
  sub_21AEC7AE8();
  sub_21AEC7874();
  v55 = sub_21AF094EC();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v4);
  sub_21AEAD074();
  sub_21AEC7718();
  MEMORY[0x28223BE20](v5);
  sub_21AEC7C0C();
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v6);
  sub_21AEC7E70();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v7);
  sub_21AEC7554();
  sub_21AEC7AB0();
  v8 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854();
  MEMORY[0x28223BE20](v9);
  sub_21AEC7504();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v10);
  sub_21AEC7B68();
  sub_21AF0954C();
  v11 = sub_21AEC77D0();
  v12(v11);
  v13 = *(v8 + 36);
  sub_21AEC5A18();
  sub_21AEC77C4();
  sub_21AF099FC();
  v14 = sub_21AEC79B0();
  v15(v14);
  v16 = MEMORY[0x277D84F90];
  sub_21AEC7DA4();
  while (1)
  {
    sub_21AEC77C4();
    sub_21AF09A1C();
    sub_21AEC79A4();
    if (v17)
    {
      break;
    }

    sub_21AEC7CA4();
    v18 = sub_21AEC793C();
    v19(v18);
    v1(v59, 0);
    sub_21AEC7E30();
    sub_21AEC75B0();
    sub_21AEC7AA4();
    sub_21AF094FC();
    sub_21AEC7D98();
    v20 = sub_21AEB3AB4();
    v21(v20);
    if (!v58)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      __break(1u);
LABEL_33:

      __break(1u);
      return;
    }

    sub_21AEC7608();
    swift_dynamicCast();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21AEAD04C();
      sub_21AEAC498();
      v16 = v23;
    }

    i = *(v16 + 16);
    v22 = *(v16 + 24);
    if (i >= v22 >> 1)
    {
      sub_21AEAD084(v22);
      sub_21AEAC498();
      v16 = v24;
    }

    *(v16 + 16) = i + 1;
    *(v16 + 4 * i + 32) = v56;
  }

  sub_21AEC6E68(v1, &qword_27CD3D850, &qword_21AF0C618);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_30:
    sub_21AED110C();
    v16 = v50;
  }

  v25 = sub_21AEC7904();
  sub_21AED0868(v25);
  v53 = v2;
  v2 = v52;
  sub_21AF0954C();
  v26 = sub_21AEC781C();
  v27(v26);
  sub_21AEC77C4();
  sub_21AF099FC();
  v28 = sub_21AEB3AB4();
  v51(v28);
  v29 = i;
  for (i = MEMORY[0x277D84F98]; ; i = v59[0])
  {
    sub_21AEC77C4();
    sub_21AF09A1C();
    sub_21AEC79A4();
    if (v17)
    {
      break;
    }

    sub_21AEC7ABC();
    v30 = sub_21AEC78D8();
    v31(v30);
    v32 = sub_21AEC7898();
    v29(v32);
    sub_21AEC7C64();
    v33 = sub_21AEC7A38();
    v34(v33);
    sub_21AEC75B0();
    sub_21AEC7AA4();
    sub_21AF094FC();
    if (!v58)
    {
      goto LABEL_32;
    }

    sub_21AEC7608();
    swift_dynamicCast();
    sub_21AEC74C8();
    sub_21AF094FC();
    sub_21AEC7608();
    swift_dynamicCast();
    v35 = 0;
    v2 = v57;
    while (*(v16 + 16) != v35)
    {
      if (*(v13 + 4 * v35) == v56)
      {
        goto LABEL_18;
      }

      ++v35;
    }

    v35 = 1;
LABEL_18:
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    swift_isUniquelyReferenced_nonNull_native();
    v59[0] = i;
    v36 = sub_21AEC7924();
    sub_21AF05134(v36, v37, v57);

    sub_21AEC7D98();
    v38(v54, v55);
  }

  sub_21AEC6E68(v29, &qword_27CD3D850, &qword_21AF0C618);
  v59[0] = sub_21AEFF1F8(v39, i);
  v2 = v53;
  sub_21AEC5AF0(v59);
  if (v53)
  {
    goto LABEL_33;
  }

  v40 = *(v59[0] + 16);
  if (v40)
  {
    v41 = (v59[0] + 40);
    v42 = MEMORY[0x277D84F90];
    do
    {
      v44 = *(v41 - 1);
      v43 = *v41;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEAD04C();
        sub_21AEAC554();
        v42 = v48;
      }

      v46 = *(v42 + 16);
      v45 = *(v42 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_21AEAD084(v45);
        sub_21AEAC554();
        v42 = v49;
      }

      *(v42 + 16) = v46 + 1;
      v47 = v42 + 16 * v46;
      *(v47 + 32) = v44;
      *(v47 + 40) = v43;
      v41 += 3;
      --v40;
    }

    while (v40);
  }

  sub_21AEC79F0();
}

void sub_21AEC0F7C(uint64_t a1, uint64_t a2)
{
  sub_21AEC7AE8();
  v166 = v3;
  v172 = v4;
  v154 = sub_21AF0959C();
  sub_21AEA7C90();
  v167 = v5;
  MEMORY[0x28223BE20](v6);
  sub_21AEA7CA4();
  v153 = v7;
  v164 = sub_21AEA7574(&qword_27CD3D868, &qword_21AF0C638);
  sub_21AEA7C90();
  v163 = v8;
  MEMORY[0x28223BE20](v9);
  sub_21AEC7504();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v10);
  sub_21AEC7C0C();
  v175 = v11;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v12);
  sub_21AEC774C();
  v176 = v13;
  v161 = sub_21AEA7574(&qword_27CD3D870, &qword_21AF0C640);
  sub_21AEA7C90();
  v160 = v14;
  MEMORY[0x28223BE20](v15);
  sub_21AEC7504();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v16);
  sub_21AEC774C();
  v174 = v17;
  v159 = sub_21AEA7574(&qword_27CD3D878, &qword_21AF0C648);
  sub_21AEA7C90();
  v158 = v18;
  MEMORY[0x28223BE20](v19);
  sub_21AEC7504();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v20);
  sub_21AEC7C0C();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v21);
  sub_21AEC7C0C();
  sub_21AEC764C();
  MEMORY[0x28223BE20](v22);
  sub_21AEC774C();
  v173 = v23;
  sub_21AEAFBDC();
  v24 = sub_21AF094EC();
  sub_21AEA7C90();
  v168 = v25;
  MEMORY[0x28223BE20](v26);
  sub_21AEC7504();
  v182 = v27;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v28);
  sub_21AEC774C();
  v180 = v29;
  sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854();
  sub_21AEC7728();
  MEMORY[0x28223BE20](v30);
  v31 = sub_21AEC7E90();
  sub_21AEA7C90();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_21AEC7554();
  v37 = v36 - v35;
  v178 = sub_21AF0957C();
  sub_21AEA7C90();
  v171 = v38;
  MEMORY[0x28223BE20](v39);
  sub_21AEA7CA4();
  v177 = v40;
  sub_21AF0956C();
  sub_21AF0954C();
  v41 = sub_21AF0950C();
  v42 = *(v33 + 8);
  v42(v37, v31);
  if (v41)
  {
    sub_21AF0954C();
    (*(v33 + 16))(v2, v37, v31);
    sub_21AEC5A18();
    sub_21AEC7BDC();
    sub_21AF099FC();
    v165 = v37;
    v43 = v37;
    v184 = v31;
    v44 = v42;
    v42(v43, v31);
    v45 = (v168 + 16);
    v46 = (v168 + 32);
    v47 = (v168 + 8);
    v169 = MEMORY[0x277D84F90];
    v152 = v44;
    while (1)
    {
      sub_21AF09A1C();
      sub_21AEC79A4();
      if (v48)
      {
        break;
      }

      v49 = sub_21AF09A6C();
      (*v45)(v180);
      v50 = sub_21AEC7898();
      v49(v50);
      sub_21AF09A2C();
      (*v46)(v182, v180, v24);
      sub_21AEC7BE8();
      sub_21AF094FC();
      if (v188)
      {
        if ((swift_dynamicCast() & 1) != 0 && v185)
        {
          v55 = v169;
          v150 = sub_21AF094DC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_21AEAD04C();
            sub_21AEAC610(v59, v60, v61, v169);
            v55 = v62;
          }

          v57 = *(v55 + 16);
          v56 = *(v55 + 24);
          if (v57 >= v56 >> 1)
          {
            v63 = sub_21AEAD084(v56);
            v58 = v64;
            sub_21AEAC610(v63, v64, 1, v55);
            v55 = v65;
          }

          else
          {
            v58 = v57 + 1;
          }

          (*v47)(v182, v24);
          *(v55 + 16) = v58;
          v169 = v55;
          *(v55 + 8 * v57 + 32) = v150;
        }

        else
        {
          v51 = sub_21AEC7734();
          v52(v51);
        }
      }

      else
      {
        v53 = sub_21AEC7734();
        v54(v53);
        sub_21AEC6E68(&v186, &qword_27CD3D330, &unk_21AF0C420);
      }
    }

    sub_21AEC6E68(v2, &qword_27CD3D850, &qword_21AF0C618);
    if (*(v169 + 16))
    {
      v66 = sub_21AF0954C();
      MEMORY[0x28223BE20](v66);
      sub_21AEC7544();
      *(v67 - 16) = v165;
      v68 = sub_21AEC7804();
      v183 = sub_21AEB4B18(v68, v69, v70);
      MEMORY[0x28223BE20](v183);
      sub_21AEC7544();
      *(v71 - 16) = v165;
      v72 = sub_21AEC7804();
      v75 = sub_21AEB4C24(v72, v73, v74);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v76);
      sub_21AEC7544();
      *(v77 - 16) = v165;
      v78 = sub_21AEC7804();
      v81 = sub_21AEB4D34(v78, v79, v80);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v82);
      sub_21AEC7544();
      *(v83 - 16) = v165;
      v84 = sub_21AEC7804();
      v87 = sub_21AEB4B18(v84, v85, v86);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v88);
      sub_21AEC7544();
      *(v89 - 16) = v165;
      v90 = sub_21AEC7804();
      v181 = sub_21AEB4D34(v90, v91, v92);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v93);
      sub_21AEC7544();
      *(v94 - 16) = v165;
      v95 = sub_21AEC7804();
      v179 = sub_21AEB4D34(v95, v96, v97);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v98);
      sub_21AEC7544();
      *(v99 - 16) = v165;
      v100 = sub_21AEC7804();
      v151 = sub_21AEB4B18(v100, v101, v102);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v103);
      sub_21AEC7544();
      *(v104 - 16) = v165;
      v105 = sub_21AEC7804();
      v149 = sub_21AEB4C24(v105, v106, v107);
      sub_21AEC762C();
      MEMORY[0x28223BE20](v108);
      sub_21AEC7544();
      *(v109 - 16) = v165;
      v110 = sub_21AEC7804();
      v148 = sub_21AEB4B18(v110, v111, v112);

      v186 = v87;
      v113 = sub_21AEC7734();
      sub_21AEA7574(v113, v114);
      sub_21AEC7B00(&qword_27CD3D888);
      sub_21AEC7C48(0xD000000000000014);
      v186 = v75;
      v115 = sub_21AEC76A0();
      sub_21AEA7574(v115, v116);
      sub_21AEC795C(&qword_27CD3D898);
      sub_21AEC75B0();
      sub_21AEC7AA4();
      sub_21AF095AC();
      v186 = v81;
      v117 = sub_21AEC78CC();
      sub_21AEA7574(v117, v118);
      sub_21AEC6FEC(&qword_27CD3D8A8, &qword_27CD3D8A0, &unk_21AF0C660);
      v119 = sub_21AEC7BE8();
      sub_21AEC7C88(v119);
      v186 = v183;
      v120 = sub_21AEC74C8();
      sub_21AEC7C48(v120);
      v186 = v181;
      v121 = sub_21AEC7564();
      sub_21AEC7C88(v121);
      v186 = v179;
      v122 = sub_21AEC7674();
      sub_21AEC7C88(v122);
      v186 = v151;
      sub_21AEC7C48(0xD000000000000011);
      v186 = v149;
      sub_21AEC758C();
      sub_21AF095AC();
      v186 = v148;
      sub_21AEC7530();
      sub_21AEC7740();
      sub_21AF095AC();
      v123 = v177;
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      sub_21AF0955C();
      v124 = *(v158 + 8);
      v124(v155, v159);
      v125 = *(v160 + 8);
      v125(v157, v161);
      v124(v156, v159);
      v126 = *(v163 + 8);
      v126(v162, v164);
      v126(v175, v164);
      v124(v170, v159);
      v126(v176, v164);
      v125(v174, v161);
      v124(v173, v159);
      v152(v165, v184);
      v127 = v172;
      v128 = v167;
    }

    else
    {

      v127 = v172;
      v128 = v167;
      v123 = v177;
    }

    if (v166)
    {
      sub_21AEC7798();
      v135 = sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
      v136 = sub_21AEC7C30(v135);
      sub_21AEC7A14(v136, xmmword_21AF0C5D0);
      v186 = 0;
      v187 = v137;
      sub_21AF09C5C();

      sub_21AEC7BD0();
      v186 = 0xD00000000000001FLL;
      v187 = v138;
      v139 = sub_21AF094CC();
      MEMORY[0x21CEE4A70](v139);
      v123 = v177;

      v140 = v186;
      v141 = v187;
      v136[3].n128_u64[1] = MEMORY[0x277D837D0];
      v136[2].n128_u64[0] = v140;
      v136[2].n128_u64[1] = v141;
      sub_21AEC76AC(v136);

      v142 = sub_21AEC7C30(v135);
      sub_21AEC7A14(v142, xmmword_21AF0C5D0);
      v186 = 0;
      v187 = v143;
      sub_21AF09C5C();

      sub_21AEC7BD0();
      v186 = 0xD00000000000001DLL;
      v187 = v144;
      sub_21AEC7BDC();
      v145 = sub_21AF094CC();
      MEMORY[0x21CEE4A70](v145);

      v146 = v186;
      v147 = v187;
      v142[3].n128_u64[1] = MEMORY[0x277D837D0];
      v142[2].n128_u64[0] = v146;
      v142[2].n128_u64[1] = v147;
      sub_21AEC76AC(v142);

      (*(v128 + 8))(v153, v154);
    }

    (*(v171 + 32))(v127, v123, v178);
  }

  else
  {
    if (qword_27CD3D270 != -1)
    {
      sub_21AEC74B4();
      swift_once();
    }

    v129 = sub_21AF096CC();
    sub_21AEA7958(v129, qword_2812288E0);
    v130 = sub_21AF096AC();
    v131 = sub_21AF09A8C();
    v132 = sub_21AEC778C();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_21AE94000, v130, v131, "feedbackData is empty", v134, 2u);
      sub_21AEC765C();
      MEMORY[0x21CEE5A20]();
    }

    (*(v171 + 32))(v172, v177, v178);
  }

  sub_21AEC79F0();
}

void sub_21AEC1F38(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v33 = a3;
  v34 = sub_21AF0952C();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21AF094EC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v15 = *(v8 + 8);
  v15(v13, v7);
  if (v36)
  {
    if (swift_dynamicCast())
    {
      v16 = v37;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v35, &qword_27CD3D330, &unk_21AF0C420);
  }

  v30 = v15;
  v31 = v14;
  v17 = v34;
  v18 = v32;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v19 = sub_21AF096CC();
  sub_21AEA7958(v19, qword_2812288E0);
  (*(v18 + 16))(v6, a2, v17);
  v20 = sub_21AF096AC();
  v21 = sub_21AF09A9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v22 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v30(v11, v7);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v23 = sub_21AF097DC();
    v25 = v24;
    (*(v18 + 8))(v6, v34);
    v26 = sub_21AECFFFC(v23, v25, &v37);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_21AE94000, v20, v21, "feedbackData: engagedTimeStampId, expected Int32, val: %s", v22, 0xCu);
    v27 = v29;
    sub_21AEA79F0(v29);
    MEMORY[0x21CEE5A20](v27, -1, -1);
    MEMORY[0x21CEE5A20](v22, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v6, v17);
  }

  v16 = 0;
LABEL_11:
  *v33 = v16;
}

void sub_21AEC232C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a3;
  v34 = sub_21AF0952C();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF094EC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *a1;
  sub_21AF0953C();
  v32 = "parent_cardSectionId";
  sub_21AF094FC();
  v16 = *(v9 + 8);
  v16(v14, v8);
  if (v36)
  {
    if (swift_dynamicCast())
    {
      v17 = v37;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v35, &qword_27CD3D330, &unk_21AF0C420);
  }

  v30 = v16;
  v31 = v15;
  v18 = v34;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v19 = sub_21AF096CC();
  sub_21AEA7958(v19, qword_2812288E0);
  (*(v5 + 16))(v7, a2, v18);
  v20 = sub_21AF096AC();
  v21 = sub_21AF09A9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v22 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v30(v12, v8);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v23 = sub_21AF097DC();
    v25 = v24;
    (*(v5 + 8))(v7, v34);
    v26 = sub_21AECFFFC(v23, v25, &v37);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_21AE94000, v20, v21, "feedbackData: engagementCountId, expected Int64, val: %s", v22, 0xCu);
    v27 = v29;
    sub_21AEA79F0(v29);
    MEMORY[0x21CEE5A20](v27, -1, -1);
    MEMORY[0x21CEE5A20](v22, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v18);
  }

  v17 = 0;
LABEL_11:
  *v33 = v17;
}

uint64_t sub_21AEC2714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v5 = sub_21AF0942C();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21AF0952C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21AF094EC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v38 = *a1;
  sub_21AF0953C();
  v37 = "result_identifier";
  sub_21AF094FC();
  v18 = *(v12 + 8);
  v18(v17, v11);
  if (v45)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v20 = v43[0];
      v21 = v43[1];
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v44, &qword_27CD3D330, &unk_21AF0C420);
  }

  v36 = v18;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v22 = sub_21AF096CC();
  sub_21AEA7958(v22, qword_2812288E0);
  (*(v8 + 16))(v10, a2, v7);
  v23 = sub_21AF096AC();
  v24 = v7;
  v25 = sub_21AF09A9C();
  if (os_log_type_enabled(v23, v25))
  {
    v26 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43[0] = v35;
    *v26 = 136315138;
    v38 = v24;
    sub_21AF0953C();
    sub_21AF094FC();
    v36(v15, v11);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v27 = sub_21AF097DC();
    v29 = v28;
    (*(v8 + 8))(v10, v38);
    v30 = sub_21AECFFFC(v27, v29, v43);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_21AE94000, v23, v25, "feedbackData: parentSectionId, expected String, val: %s", v26, 0xCu);
    v31 = v35;
    sub_21AEA79F0(v35);
    MEMORY[0x21CEE5A20](v31, -1, -1);
    MEMORY[0x21CEE5A20](v26, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v32 = v39;
  sub_21AF0941C();
  v20 = sub_21AF0940C();
  v21 = v33;
  result = (*(v40 + 8))(v32, v41);
LABEL_11:
  v34 = v42;
  *v42 = v20;
  v34[1] = v21;
  return result;
}

void sub_21AEC2BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_21AEC7A20();
  v57 = v13;
  v15 = v14;
  v17 = v16;
  v59 = v18;
  v20 = v19;
  sub_21AEC7874();
  v60 = sub_21AF0952C();
  sub_21AEA7C90();
  v58 = v21;
  MEMORY[0x28223BE20](v22);
  sub_21AEC7554();
  sub_21AEC7AB0();
  v23 = sub_21AF094EC();
  sub_21AEA7C90();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_21AEAD074();
  sub_21AEC763C();
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - v28;
  v54 = *v10;
  sub_21AF0953C();
  v55 = v17;
  v56 = v15;
  sub_21AF094FC();
  v30 = *(v25 + 8);
  v30(v29, v23);
  if (v61[3])
  {
    sub_21AEC7D28();
    if (sub_21AEC7EE0())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v61, &qword_27CD3D330, &unk_21AF0C420);
  }

  v32 = v60;
  v33 = v58;
  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v34 = sub_21AF096CC();
  sub_21AEC78A8(v34, qword_2812288E0);
  (*(v33 + 16))(v12, v20, v32);
  v35 = sub_21AF096AC();
  v36 = v32;
  v37 = sub_21AF09A9C();
  v38 = sub_21AEC778C();
  if (os_log_type_enabled(v38, v39))
  {
    sub_21AEC76E4();
    v40 = swift_slowAlloc();
    v52 = v30;
    v41 = v40;
    sub_21AEC76D8();
    v53 = swift_slowAlloc();
    *v41 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v52(v11, v23);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    v42 = sub_21AF097DC();
    v44 = v43;
    v45 = sub_21AEC79CC();
    v46(v45, v60);
    v47 = sub_21AEC7BB8();
    sub_21AECFFFC(v47, v44, v48);
    sub_21AEC7F10();
    *(v41 + 4) = v42;
    _os_log_impl(&dword_21AE94000, v35, v37, v57, v41, 0xCu);
    sub_21AEA79F0(v53);
    v49 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v49);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    v50 = sub_21AEC79CC();
    v51(v50, v36);
  }

  a10 = 0;
LABEL_11:
  *v59 = a10;
  sub_21AEC79D8();
}

uint64_t sub_21AEC2EF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a3;
  v5 = sub_21AF0942C();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21AF0952C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21AF094EC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v38 = *a1;
  sub_21AF0953C();
  v37 = "AMLPhotosSearchPoirotMetrics";
  sub_21AF094FC();
  v18 = *(v12 + 8);
  v18(v17, v11);
  if (v45)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v20 = v43[0];
      v21 = v43[1];
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v44, &qword_27CD3D330, &unk_21AF0C420);
  }

  v36 = v18;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v22 = sub_21AF096CC();
  sub_21AEA7958(v22, qword_2812288E0);
  (*(v8 + 16))(v10, a2, v7);
  v23 = sub_21AF096AC();
  v24 = v7;
  v25 = sub_21AF09A9C();
  if (os_log_type_enabled(v23, v25))
  {
    v26 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43[0] = v35;
    *v26 = 136315138;
    v38 = v24;
    sub_21AF0953C();
    sub_21AF094FC();
    v36(v15, v11);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v27 = sub_21AF097DC();
    v29 = v28;
    (*(v8 + 8))(v10, v38);
    v30 = sub_21AECFFFC(v27, v29, v43);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_21AE94000, v23, v25, "feedbackData: resultId, expected String, val: %s", v26, 0xCu);
    v31 = v35;
    sub_21AEA79F0(v35);
    MEMORY[0x21CEE5A20](v31, -1, -1);
    MEMORY[0x21CEE5A20](v26, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v32 = v39;
  sub_21AF0941C();
  v20 = sub_21AF0940C();
  v21 = v33;
  result = (*(v40 + 8))(v32, v41);
LABEL_11:
  v34 = v42;
  *v42 = v20;
  v34[1] = v21;
  return result;
}

void sub_21AEC3394(uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v30 = a3;
  v31 = sub_21AF0952C();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21AF094EC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  sub_21AF0953C();
  sub_21AF094FC();
  v14 = *(v8 + 8);
  v14(v13, v7);
  if (v33)
  {
    if (swift_dynamicCast())
    {
      v15 = v34;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v32, &qword_27CD3D330, &unk_21AF0C420);
  }

  v29 = v14;
  v16 = v31;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v17 = sub_21AF096CC();
  sub_21AEA7958(v17, qword_2812288E0);
  (*(v4 + 16))(v6, a2, v16);
  v18 = sub_21AF096AC();
  v19 = sub_21AF09A9C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34 = v28;
    *v20 = 136315138;
    v21 = v19;
    sub_21AF0953C();
    sub_21AF094FC();
    v29(v11, v7);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v22 = sub_21AF097DC();
    v24 = v23;
    (*(v4 + 8))(v6, v31);
    v25 = sub_21AECFFFC(v22, v24, &v34);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_21AE94000, v18, v21, "feedbackData: timeStampId. expected Int32, val: %s", v20, 0xCu);
    v26 = v28;
    sub_21AEA79F0(v28);
    MEMORY[0x21CEE5A20](v26, -1, -1);
    MEMORY[0x21CEE5A20](v20, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v16);
  }

  v15 = 0;
LABEL_11:
  *v30 = v15;
}

void sub_21AEC3780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_21AEC7A20();
  v58 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v66 = v18;
  sub_21AF0942C();
  sub_21AEA7C90();
  v64 = v20;
  v65 = v19;
  MEMORY[0x28223BE20](v19);
  sub_21AEA7CA4();
  v63 = v21;
  sub_21AEAFBDC();
  v70 = sub_21AF0952C();
  sub_21AEA7C90();
  v62 = v22;
  MEMORY[0x28223BE20](v23);
  sub_21AEA7CA4();
  v60 = v24;
  sub_21AEAFBDC();
  v25 = sub_21AF094EC();
  sub_21AEA7C90();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_21AEAD074();
  MEMORY[0x28223BE20](v29);
  v31 = &v53 - v30;
  v32 = *v17;
  v61 = v15;
  sub_21AF0953C();
  v56 = v13;
  v57 = v11;
  sub_21AF094FC();
  v33 = *(v27 + 8);
  (v33)(v31, v25);
  if (v69[3])
  {
    sub_21AEC78F8();
    if (sub_21AEC7EE0())
    {
      v25 = v67;
      v34 = v68;
      goto LABEL_12;
    }

    v55 = v32;
  }

  else
  {
    v55 = v32;
    sub_21AEC6E68(v69, &qword_27CD3D330, &unk_21AF0C420);
  }

  v54 = v33;
  v59 = v8;
  v35 = v62;
  v36 = v60;
  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v37 = sub_21AF096CC();
  sub_21AEC78A8(v37, qword_2812288E0);
  (*(v35 + 16))(v36, v61, v70);
  v38 = sub_21AF096AC();
  v39 = sub_21AF09A9C();
  if (os_log_type_enabled(v38, v39))
  {
    sub_21AEC76E4();
    v40 = swift_slowAlloc();
    sub_21AEC76D8();
    v61 = swift_slowAlloc();
    v67 = v61;
    *v40 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v41 = sub_21AEC78CC();
    v54(v41);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    sub_21AF097DC();
    sub_21AEC7780();
    v42 = sub_21AEC79CC();
    v43(v42, v70);
    v44 = sub_21AEC76A0();
    sub_21AECFFFC(v44, v45, v46);
    sub_21AEC7C18();
    *(v40 + 4) = v25;
    _os_log_impl(&dword_21AE94000, v38, v39, v58, v40, 0xCu);
    v25 = v61;
    sub_21AEA79F0(v61);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    v47 = sub_21AEC79CC();
    v48(v47, v70);
  }

  v49 = v63;
  sub_21AF0941C();
  v34 = v49;
  sub_21AF0940C();
  sub_21AEC7780();
  v50 = sub_21AEC7D80();
  v51(v50);
LABEL_12:
  v52 = v66;
  *v66 = v25;
  v52[1] = v34;
  sub_21AEC79D8();
}

uint64_t sub_21AEC3B74(uint64_t a1)
{
  sub_21AEC7874();
  sub_21AF0952C();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v1);
  sub_21AEC7554();
  v4 = v3 - v2;
  sub_21AF0954C();
  result = sub_21AF0951C();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_21AEEF4D0(0, result);
    v61 = 1;
    MEMORY[0x28223BE20](v6);
    sub_21AEC7544();
    *(v7 - 16) = v4;
    *(v7 - 8) = &v61;
    v8 = sub_21AEC7668();
    sub_21AEB5998(v8, v9, v10);

    sub_21AEC7930();
    if (v11 & 1) != 0 && (sub_21AEC78C0(), MEMORY[0x28223BE20](v12), sub_21AEC7544(), *(v13 - 16) = v4, *(v13 - 8) = &v61, v14 = sub_21AEC7668(), sub_21AEB5AB8(v14, v15, v16), , sub_21AEC7930(), (v17) && (sub_21AEC78C0(), MEMORY[0x28223BE20](v18), sub_21AEC7544(), *(v19 - 16) = v4, *(v19 - 8) = &v61, v20 = sub_21AEC7668(), sub_21AEB5BD4(v20, v21, v22), , sub_21AEC7930(), (v23) && (sub_21AEC78C0(), MEMORY[0x28223BE20](v24), sub_21AEC7544(), *(v25 - 16) = v4, *(v25 - 8) = &v61, v26 = sub_21AEC7668(), sub_21AEB5998(v26, v27, v28), , sub_21AEC7930(), (v29) && (sub_21AEC78C0(), MEMORY[0x28223BE20](v30), sub_21AEC7544(), *(v31 - 16) = v4, *(v31 - 8) = &v61, v32 = sub_21AEC7668(), sub_21AEB5BD4(v32, v33, v34), , sub_21AEC7930(), (v35) && (sub_21AEC78C0(), MEMORY[0x28223BE20](v36), sub_21AEC7544(), *(v37 - 16) = v4, *(v37 - 8) = &v61, v38 = sub_21AEC7668(), sub_21AEB5BD4(v38, v39, v40), , sub_21AEC7930(), (v41) && (sub_21AEC78C0(), MEMORY[0x28223BE20](v42), sub_21AEC7544(), *(v43 - 16) = v4, *(v43 - 8) = &v61, v44 = sub_21AEC7668(), sub_21AEB5998(v44, v45, v46), , sub_21AEC7930(), (v47))
    {
      sub_21AEC78C0();
      MEMORY[0x28223BE20](v48);
      sub_21AEC7544();
      *(v49 - 16) = v4;
      *(v49 - 8) = &v61;
      v50 = sub_21AEC7668();
      sub_21AEB5AB8(v50, v51, v52);

      sub_21AEC78C0();
      MEMORY[0x28223BE20](v53);
      sub_21AEC7544();
      *(v54 - 16) = v4;
      *(v54 - 8) = &v61;
      v55 = sub_21AEC7668();
      sub_21AEB5998(v55, v56, v57);

      v58 = v61;
    }

    else
    {

      v58 = 0;
    }

    v59 = sub_21AEC78CC();
    v60(v59);
    return v58;
  }

  return result;
}

void sub_21AEC3EC4(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, _DWORD *a4@<X8>)
{
  v36 = a4;
  v35 = a3;
  v37 = sub_21AF0952C();
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF094EC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = *a1;
  sub_21AF0953C();
  sub_21AF094FC();
  v16 = *(v9 + 8);
  v16(v14, v8);
  if (v39)
  {
    if (swift_dynamicCast())
    {
      v17 = 0;
      v18 = v40;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v38, &qword_27CD3D330, &unk_21AF0C420);
  }

  v32 = v16;
  v33 = v15;
  v19 = v37;
  v20 = v34;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v21 = sub_21AF096CC();
  sub_21AEA7958(v21, qword_2812288E0);
  (*(v20 + 16))(v7, a2, v19);
  v22 = sub_21AF096AC();
  v23 = sub_21AF09A9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40 = v31;
    *v24 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v32(v12, v8);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v25 = sub_21AF097DC();
    v27 = v26;
    (*(v20 + 8))(v7, v37);
    v28 = sub_21AECFFFC(v25, v27, &v40);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_21AE94000, v22, v23, "engagedTimeStampId, expected Int32. Val: %s", v24, 0xCu);
    v29 = v31;
    sub_21AEA79F0(v31);
    MEMORY[0x21CEE5A20](v29, -1, -1);
    MEMORY[0x21CEE5A20](v24, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v7, v19);
  }

  v18 = 0;
  *v35 = 0;
  v17 = 1;
LABEL_11:
  v30 = v36;
  *v36 = v18;
  *(v30 + 4) = v17;
}

void sub_21AEC42D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v36 = a4;
  v35 = a3;
  v37 = sub_21AF0952C();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF094EC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = *a1;
  sub_21AF0953C();
  v34 = "parent_cardSectionId";
  sub_21AF094FC();
  v17 = *(v10 + 8);
  v17(v15, v9);
  if (v39)
  {
    if (swift_dynamicCast())
    {
      v18 = 0;
      v19 = v40;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v38, &qword_27CD3D330, &unk_21AF0C420);
  }

  v32 = v17;
  v33 = v16;
  v20 = v37;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v21 = sub_21AF096CC();
  sub_21AEA7958(v21, qword_2812288E0);
  (*(v6 + 16))(v8, a2, v20);
  v22 = sub_21AF096AC();
  v23 = sub_21AF09A9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40 = v31;
    *v24 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v32(v13, v9);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v25 = sub_21AF097DC();
    v27 = v26;
    (*(v6 + 8))(v8, v37);
    v28 = sub_21AECFFFC(v25, v27, &v40);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_21AE94000, v22, v23, "engagementCountId, expected Int64. Val: %s", v24, 0xCu);
    v29 = v31;
    sub_21AEA79F0(v31);
    MEMORY[0x21CEE5A20](v29, -1, -1);
    MEMORY[0x21CEE5A20](v24, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v20);
  }

  v19 = 0;
  *v35 = 0;
  v18 = 1;
LABEL_11:
  v30 = v36;
  *v36 = v19;
  *(v30 + 8) = v18;
}

void sub_21AEC46D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v37 = a4;
  v36 = a3;
  v41 = sub_21AF0952C();
  v6 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF094EC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = *a1;
  sub_21AF0953C();
  v35 = "result_identifier";
  sub_21AF094FC();
  v17 = *(v10 + 8);
  v17(v15, v9);
  if (v40)
  {
    if (swift_dynamicCast())
    {
      v18 = v38[1];
      v19 = v37;
      *v37 = v38[0];
      v19[1] = v18;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v39, &qword_27CD3D330, &unk_21AF0C420);
  }

  v33 = v17;
  v34 = v16;
  v20 = v41;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v21 = sub_21AF096CC();
  sub_21AEA7958(v21, qword_2812288E0);
  (*(v6 + 16))(v8, a2, v20);
  v22 = sub_21AF096AC();
  v23 = sub_21AF09A9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38[0] = v32;
    *v24 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v33(v13, v9);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v25 = sub_21AF097DC();
    v27 = v26;
    (*(v6 + 8))(v8, v41);
    v28 = sub_21AECFFFC(v25, v27, v38);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_21AE94000, v22, v23, "parentSectionId, expected String. Val: %s", v24, 0xCu);
    v29 = v32;
    sub_21AEA79F0(v32);
    MEMORY[0x21CEE5A20](v29, -1, -1);
    MEMORY[0x21CEE5A20](v24, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v20);
  }

  v30 = v37;
  *v36 = 0;
  *v30 = 0;
  v30[1] = 0;
}

void sub_21AEC4AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_21AEC7A20();
  v42 = v12;
  v43 = v13;
  sub_21AEC7874();
  v44 = sub_21AF0952C();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v14);
  sub_21AEC7554();
  sub_21AEC7708();
  v15 = sub_21AF094EC();
  sub_21AEA7C90();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_21AEAD074();
  sub_21AEC763C();
  MEMORY[0x28223BE20](v19);
  sub_21AEC7B78();
  sub_21AF0953C();
  sub_21AF094FC();
  v22 = *(v17 + 8);
  v20 = v17 + 8;
  v21 = v22;
  v22(v11, v15);
  if (v45[3])
  {
    sub_21AEC7D28();
    if (sub_21AEC7EE0())
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v45, &qword_27CD3D330, &unk_21AF0C420);
  }

  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v24 = sub_21AF096CC();
  sub_21AEC78A8(v24, qword_2812288E0);
  v25 = sub_21AEC7BF4();
  v26(v25);
  v27 = sub_21AF096AC();
  sub_21AF09A9C();
  v28 = sub_21AEC778C();
  if (os_log_type_enabled(v28, v29))
  {
    sub_21AEC76E4();
    v41 = v21;
    v30 = swift_slowAlloc();
    sub_21AEC76D8();
    v46 = swift_slowAlloc();
    *v30 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v41(v10, v15);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    sub_21AF097DC();
    v31 = sub_21AEC7DDC();
    v32(v31, v44);
    v33 = sub_21AEC7BB8();
    sub_21AECFFFC(v33, v20, v34);
    sub_21AEC7F10();
    *(v30 + 4) = v10;
    sub_21AEC7DB8();
    _os_log_impl(v35, v36, v37, v42, v30, 0xCu);
    sub_21AEA79F0(v46);
    v38 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v38);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    v39 = sub_21AEC7A60();
    v40(v39);
  }

  a10 = 0;
  *v43 = 0;
LABEL_11:
  sub_21AEC7CE8(a10);
  sub_21AEC79D8();
}

void sub_21AEC4DFC(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v37 = a4;
  v36 = a3;
  v41 = sub_21AF0952C();
  v6 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF094EC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = *a1;
  sub_21AF0953C();
  v35 = "AMLPhotosSearchPoirotMetrics";
  sub_21AF094FC();
  v17 = *(v10 + 8);
  v17(v15, v9);
  if (v40)
  {
    if (swift_dynamicCast())
    {
      v18 = v38[1];
      v19 = v37;
      *v37 = v38[0];
      v19[1] = v18;
      return;
    }
  }

  else
  {
    sub_21AEC6E68(v39, &qword_27CD3D330, &unk_21AF0C420);
  }

  v33 = v17;
  v34 = v16;
  v20 = v41;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v21 = sub_21AF096CC();
  sub_21AEA7958(v21, qword_2812288E0);
  (*(v6 + 16))(v8, a2, v20);
  v22 = sub_21AF096AC();
  v23 = sub_21AF09A9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38[0] = v32;
    *v24 = 136315138;
    sub_21AF0953C();
    sub_21AF094FC();
    v33(v13, v9);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v25 = sub_21AF097DC();
    v27 = v26;
    (*(v6 + 8))(v8, v41);
    v28 = sub_21AECFFFC(v25, v27, v38);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_21AE94000, v22, v23, "resultId, expected String. Val: %s", v24, 0xCu);
    v29 = v32;
    sub_21AEA79F0(v32);
    MEMORY[0x21CEE5A20](v29, -1, -1);
    MEMORY[0x21CEE5A20](v24, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v20);
  }

  v30 = v37;
  *v36 = 0;
  *v30 = 0;
  v30[1] = 0;
}

void sub_21AEC51F4(uint64_t a2@<X1>, _BYTE *a3@<X2>, _DWORD *a4@<X8>)
{
  v33 = a4;
  v32 = a3;
  v34 = sub_21AF0952C();
  v5 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF094EC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  sub_21AF0953C();
  sub_21AF094FC();
  v15 = *(v9 + 8);
  v15(v14, v8);
  if (v36)
  {
    if (swift_dynamicCast())
    {
      v16 = 0;
      v17 = v37;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v35, &qword_27CD3D330, &unk_21AF0C420);
  }

  v31 = v15;
  v18 = v34;
  if (qword_27CD3D270 != -1)
  {
    swift_once();
  }

  v19 = sub_21AF096CC();
  sub_21AEA7958(v19, qword_2812288E0);
  (*(v5 + 16))(v7, a2, v18);
  v20 = sub_21AF096AC();
  v21 = sub_21AF09A9C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v22 = 136315138;
    v23 = v21;
    sub_21AF0953C();
    sub_21AF094FC();
    v31(v12, v8);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    v24 = sub_21AF097DC();
    v26 = v25;
    (*(v5 + 8))(v7, v34);
    v27 = sub_21AECFFFC(v24, v26, &v37);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_21AE94000, v20, v23, "timeStampId. expected Int32. Val: %s", v22, 0xCu);
    v28 = v30;
    sub_21AEA79F0(v30);
    MEMORY[0x21CEE5A20](v28, -1, -1);
    MEMORY[0x21CEE5A20](v22, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v18);
  }

  v17 = 0;
  *v32 = 0;
  v16 = 1;
LABEL_11:
  v29 = v33;
  *v33 = v17;
  *(v29 + 4) = v16;
}

void sub_21AEC55F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_21AEC7A20();
  v41 = v11;
  v43 = v12;
  v42 = v13;
  sub_21AEC7874();
  v48 = sub_21AF0952C();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v14);
  sub_21AEC7554();
  sub_21AEC7708();
  v15 = sub_21AF094EC();
  sub_21AEA7C90();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_21AEAD074();
  sub_21AEC763C();
  MEMORY[0x28223BE20](v19);
  sub_21AEC7B78();
  sub_21AF0953C();
  sub_21AF094FC();
  v22 = *(v17 + 8);
  v20 = v17 + 8;
  v21 = v22;
  v22(v9, v15);
  if (v47[3])
  {
    sub_21AEC78F8();
    if (sub_21AEC7EE0())
    {
      *v43 = v44;
      v43[1] = v46;
      goto LABEL_11;
    }
  }

  else
  {
    sub_21AEC6E68(v47, &qword_27CD3D330, &unk_21AF0C420);
  }

  if (qword_27CD3D270 != -1)
  {
    sub_21AEC74B4();
    swift_once();
  }

  v23 = sub_21AF096CC();
  sub_21AEC78A8(v23, qword_2812288E0);
  v24 = sub_21AEC7BF4();
  v25(v24);
  v26 = sub_21AF096AC();
  sub_21AF09A9C();
  v27 = sub_21AEC778C();
  if (os_log_type_enabled(v27, v28))
  {
    sub_21AEC76E4();
    v40 = v21;
    v29 = swift_slowAlloc();
    sub_21AEC76D8();
    v45 = swift_slowAlloc();
    *v29 = 136315138;
    sub_21AF0953C();
    sub_21AEC7A6C();
    v40(v8, v15);
    sub_21AEA7574(&qword_27CD3D330, &unk_21AF0C420);
    sub_21AEC7758();
    sub_21AF097DC();
    v30 = sub_21AEC7DDC();
    v31(v30, v48);
    v32 = sub_21AEC7A08();
    sub_21AECFFFC(v32, v20, v33);
    sub_21AEC7F10();
    *(v29 + 4) = v10;
    sub_21AEC7DB8();
    _os_log_impl(v34, v35, v36, v41, v29, 0xCu);
    sub_21AEA79F0(v45);
    v37 = sub_21AEC75E8();
    MEMORY[0x21CEE5A20](v37);
    sub_21AEC765C();
    MEMORY[0x21CEE5A20]();
  }

  else
  {

    v38 = sub_21AEC7A60();
    v39(v38);
  }

  *v42 = 0;
  *v43 = 0;
  v43[1] = 0;
LABEL_11:
  sub_21AEC79D8();
}

id AMLPhotosSearchPoirotMetricsUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AMLPhotosSearchPoirotMetricsUtility.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  return objc_msgSendSuper2(&v3, sel_init);
}

id AMLPhotosSearchPoirotMetricsUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21AEC5A18()
{
  result = qword_27CD3D858;
  if (!qword_27CD3D858)
  {
    sub_21AF0952C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D858);
  }

  return result;
}

uint64_t sub_21AEC5AF0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21AEFBD88(v2, v3, v4, v5);
  }

  v6 = v2[2];
  v8[0] = (v2 + 4);
  v8[1] = v6;
  result = sub_21AEC5B5C(v8);
  *a1 = v2;
  return result;
}

uint64_t sub_21AEC5B5C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21AEA7574(&qword_27CD3D860, &unk_21AF0C620);
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AEC5E2C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21AEC5D54(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AEC5C60(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AEC631C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21AEC5DD0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AEC5D54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = v9[1];
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_21AEC5DD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AEC5E2C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v86 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        sub_21AEC7CD4();
        v11 = *(v10 + 16);
        v13 = v12 + 24 * v7;
        v14 = 24 * v7;
        v15 = *(v13 + 16);
        v16 = (v13 + 64);
        v17 = v7 + 2;
        v18 = v11;
        while (1)
        {
          v19 = v17;
          if (++v9 >= v6)
          {
            break;
          }

          v20 = *v16;
          v16 += 3;
          v21 = (v11 < v15) ^ (v20 >= v18);
          ++v17;
          v18 = v20;
          if ((v21 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v11 < v15)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v19)
            {
              v6 = v19;
            }

            v22 = 24 * v6 - 8;
            v23 = v9;
            v24 = v7;
            do
            {
              if (v24 != --v23)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v26 = (v25 + v14);
                v27 = (v25 + v22);
                v28 = *v26;
                v29 = *(v26 + 2);
                v30 = *v27;
                *v26 = *(v27 - 1);
                *(v26 + 2) = v30;
                *(v27 - 1) = v28;
                *v27 = v29;
              }

              ++v24;
              v22 -= 24;
              v14 += 24;
            }

            while (v24 < v23);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            sub_21AEC7CD4();
            v34 = v7 - v9;
            do
            {
              v35 = *(v32 + 24 * v9 + 16);
              v36 = v34;
              v37 = v33;
              do
              {
                if (v35 >= *(v37 - 1))
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_111;
                }

                v38 = *v37;
                v39 = v37[1];
                *v37 = *(v37 - 3);
                v37[2] = *(v37 - 1);
                *(v37 - 2) = v39;
                *(v37 - 1) = v35;
                *(v37 - 3) = v38;
                v37 -= 3;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v33 += 3;
              --v34;
            }

            while (v9 != v31);
            v9 = v31;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v88 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEAD04C();
        sub_21AEAC638();
        v8 = v84;
      }

      v41 = v8[2];
      v42 = v41 + 1;
      if (v41 >= v8[3] >> 1)
      {
        sub_21AEAC638();
        v8 = v85;
      }

      v8[2] = v42;
      v43 = v8 + 4;
      v44 = &v8[2 * v41 + 4];
      *v44 = v7;
      v44[1] = v88;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v41)
      {
        while (1)
        {
          v45 = v42 - 1;
          v46 = &v43[2 * v42 - 2];
          v47 = &v8[2 * v42];
          if (v42 >= 4)
          {
            break;
          }

          if (v42 == 3)
          {
            v48 = v8[4];
            v49 = v8[5];
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_56:
            if (v51)
            {
              goto LABEL_96;
            }

            v63 = *v47;
            v62 = v47[1];
            v64 = __OFSUB__(v62, v63);
            v65 = v62 - v63;
            v66 = v64;
            if (v64)
            {
              goto LABEL_99;
            }

            v67 = v46[1];
            v68 = v67 - *v46;
            if (__OFSUB__(v67, *v46))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v65, v68))
            {
              goto LABEL_104;
            }

            if (v65 + v68 >= v50)
            {
              if (v50 < v68)
              {
                v45 = v42 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v42 < 2)
          {
            goto LABEL_98;
          }

          v70 = *v47;
          v69 = v47[1];
          v58 = __OFSUB__(v69, v70);
          v65 = v69 - v70;
          v66 = v58;
LABEL_71:
          if (v66)
          {
            goto LABEL_101;
          }

          v72 = *v46;
          v71 = v46[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_103;
          }

          if (v73 < v65)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v45 - 1 >= v42)
          {
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
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v77 = &v43[2 * v45 - 2];
          v78 = *v77;
          v79 = &v43[2 * v45];
          v80 = v79[1];
          sub_21AEC6A20((*a3 + 24 * *v77), (*a3 + 24 * *v79), *a3 + 24 * v80, v89);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v80 < v78)
          {
            goto LABEL_91;
          }

          v81 = v8;
          v82 = v8[2];
          if (v45 > v82)
          {
            goto LABEL_92;
          }

          *v77 = v78;
          v77[1] = v80;
          if (v45 >= v82)
          {
            goto LABEL_93;
          }

          v42 = v82 - 1;
          memmove(&v43[2 * v45], v79 + 2, 16 * (v82 - 1 - v45));
          v81[2] = v82 - 1;
          v83 = v82 > 2;
          v8 = v81;
          v5 = 0;
          if (!v83)
          {
            goto LABEL_85;
          }
        }

        v52 = &v43[2 * v42];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_94;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_95;
        }

        v59 = v47[1];
        v60 = v59 - *v47;
        if (__OFSUB__(v59, *v47))
        {
          goto LABEL_97;
        }

        v58 = __OFADD__(v50, v60);
        v61 = v50 + v60;
        if (v58)
        {
          goto LABEL_100;
        }

        if (v61 >= v55)
        {
          v75 = *v46;
          v74 = v46[1];
          v58 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v58)
          {
            goto LABEL_105;
          }

          if (v50 < v76)
          {
            v45 = v42 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v88;
      a4 = v86;
      if (v88 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_21AEC67BC(&v91, *result, a3);
LABEL_89:
}

void sub_21AEC631C(uint64_t **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEAC638();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_21AEAC638();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
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
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_21AEC6BC8((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_21AEC68F4(&v77, *result, a3);
LABEL_89:
}

uint64_t sub_21AEC67BC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v18 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21AEFBBF8(v18, v6, v7, v8);
    v18 = result;
  }

  v15 = v4;
  *v4 = v18;
  v9 = (v18 + 16);
  for (i = *(v18 + 16); ; *v9 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v15 = v18;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v18 + 16 * i);
    v11 = *v4;
    v12 = &v9[2 * i];
    v13 = v12[1];
    sub_21AEC6A20((*a3 + 24 * *v4), (*a3 + 24 * *v12), *a3 + 24 * v13, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v13 < v11)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v9)
    {
      goto LABEL_12;
    }

    *v4 = v11;
    v4[1] = v13;
    v14 = *v9 - i;
    if (*v9 < i)
    {
      goto LABEL_13;
    }

    i = *v9 - 1;
    result = memmove(v12, v12 + 2, 16 * v14);
  }

  *v15 = v18;
  __break(1u);
  return result;
}

uint64_t sub_21AEC68F4(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21AEFBBF8(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_21AEC6BC8((*a3 + 8 * *v12), (*a3 + 8 * *v14), (*a3 + 8 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21AEC6A20(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_21AEFABA0(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 2) >= *(v4 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_21AEFABA0(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v17 = v6 - 24;
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t sub_21AEC6BC8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_21AEFBE00(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_21AEFBE00(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_21AEC6E68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_21AEA7574(a2, a3);
  sub_21AEC7854();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_21AEC6EC0()
{
  sub_21AEC788C();
  sub_21AEC75C4(v0, v1, v2, v3, v4, "feedbackData: cardSectionId, expected String, val: %s");
  sub_21AEC3780(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_21AEC6F3C()
{
  sub_21AEC788C();
  sub_21AEC76F0(v0, v1, v2, v3, v4, "feedbackData: queryId, expected Int64, val: %s");
  sub_21AEC2BB0(v5, v6, v7, v8, v9, v10, v11, v12, vars0, vars8);
}

void sub_21AEC6F64()
{
  sub_21AEC788C();
  sub_21AEC7B18(v0, v1, v2, v3, v4, "feedbackData: rankId, expected Int64, val: %s");
  sub_21AEC2BB0(v5, v6, v7, v8, v9, v10, v11, v12, vars0, vars8);
}

void sub_21AEC6FC4()
{
  sub_21AEC788C();
  sub_21AEC7684(v0, v1, v2, v3, v4, "feedbackData: sessionId. expected String, val: %s");
  sub_21AEC3780(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_21AEC6FEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_21AEAF7F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21AEC76AC(uint64_t a1)
{

  return sub_21AF09EDC();
}

uint64_t sub_21AEC7764()
{

  return sub_21AF0955C();
}

uint64_t sub_21AEC7798()
{

  return sub_21AF0958C();
}

uint64_t sub_21AEC77D0()
{
  v3 = *(v1 + 16);
  result = v0;
  *(v2 - 272) = v1 + 16;
  *(v2 - 280) = v3;
  return result;
}

uint64_t sub_21AEC7904()
{
  v2 = *(v0 + 16);
  *(v1 - 120) = v0 + 32;
  *(v1 - 112) = v2;
  return v1 - 120;
}

uint64_t sub_21AEC795C(unint64_t *a1)
{

  return sub_21AEC6FEC(a1, v1, v2);
}

uint64_t sub_21AEC7974(uint64_t a1)
{

  return sub_21AF0955C();
}

uint64_t sub_21AEC798C(uint64_t a1)
{

  return sub_21AF095AC();
}

uint64_t sub_21AEC79B0()
{
  v3 = *(v1 + 8);
  *(v2 - 256) = v0;
  *(v2 - 248) = v1 + 8;
  result = v0;
  *(v2 - 288) = v3;
  return result;
}

uint64_t sub_21AEC7A6C()
{

  return sub_21AF094FC();
}

uint64_t sub_21AEC7A88()
{

  return sub_21AF0955C();
}

uint64_t sub_21AEC7ABC()
{

  return sub_21AF09A6C();
}

uint64_t sub_21AEC7B00(unint64_t *a1)
{

  return sub_21AEC6FEC(a1, v1, v2);
}

uint64_t sub_21AEC7B88(uint64_t a1)
{

  return sub_21AF095AC();
}

uint64_t sub_21AEC7C18()
{
}

uint64_t sub_21AEC7C30(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_21AEC7C48(uint64_t a1)
{

  return sub_21AF095AC();
}

uint64_t sub_21AEC7C64()
{

  return sub_21AF09A2C();
}

uint64_t sub_21AEC7C88(uint64_t a1)
{

  return sub_21AF095AC();
}

uint64_t sub_21AEC7CA4()
{

  return sub_21AF09A6C();
}

void sub_21AEC7DA4()
{
  *(v3 - 224) = v2;
  *(v3 - 216) = v1;
  *(v3 - 208) = v0;
  *(v3 - 200) = v2 + 8;
}

uint64_t sub_21AEC7DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_21AEC7E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_21AEC7E30()
{

  return sub_21AF09A2C();
}

uint64_t sub_21AEC7E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_21AEC7E70()
{

  return sub_21AF0952C();
}

uint64_t sub_21AEC7E90()
{

  return sub_21AF0952C();
}

BOOL sub_21AEC7EB0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_21AEC7EC8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_21AEC7EE0()
{

  return swift_dynamicCast();
}

uint64_t sub_21AEC7EF8()
{
}

uint64_t sub_21AEC7F10()
{
}

uint64_t AMLContextFeatureProviderIdentifier.__allocating_init(name:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLContextFeatureProviderIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLContextFeatureProviderIdentifier.init(name:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0xD000000000000016;
    v2[3] = 0x800000021AF0F710;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v5 = 0xD00000000000002ELL;
    *(v5 + 8) = 0x800000021AF0F6E0;
    *(v5 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLContextFeatureProviderIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t dispatch thunk of AMLContextFeatureProvider.process(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21AEC82B8;

  return v9(a1, a2, a3);
}

uint64_t sub_21AEC82B8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21AEC83D0()
{
  v0 = type metadata accessor for AMLSODAUserHostEnvironment(0);
  sub_21AEC840C();
  return v0;
}

unint64_t sub_21AEC840C()
{
  result = qword_27CD3D8B0;
  if (!qword_27CD3D8B0)
  {
    type metadata accessor for AMLSODAUserHostEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D8B0);
  }

  return result;
}

uint64_t sub_21AEC8464(uint64_t a1, uint64_t a2)
{
  v5 = sub_21AF0928C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AEA7574(&qword_27CD3D8B8, &qword_21AF0C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  sub_21AEC8A5C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = [v11 bundlePath];

  v13 = sub_21AF097CC();
  v15 = v14;

  v18[0] = v13;
  v18[1] = v15;
  MEMORY[0x21CEE4A70](47, 0xE100000000000000);
  MEMORY[0x21CEE4A70](a1, a2);
  v16 = sub_21AF0930C();
  sub_21AEA75BC(v2, 1, 1, v16);
  (*(v6 + 104))(v8, *MEMORY[0x277CC91D8], v5);
  return sub_21AF092FC();
}

uint64_t sub_21AEC8678()
{
  sub_21AEA7574(&qword_27CD3D8C0, &qword_21AF0C6E8);
  sub_21AF095DC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21AF0C580;
  v1 = *MEMORY[0x277CF0E38];
  sub_21AF095CC();
  v2 = *MEMORY[0x277CF0EB8];
  sub_21AF095CC();
  return v0;
}

uint64_t AMLSODAHostTask.__allocating_init(taskId:taskName:hostParams:)()
{
  sub_21AEC8A6C();
  v2 = sub_21AEA7574(&qword_27CD3D8C8, &qword_21AF0C740);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21AEC8A5C();
  swift_allocObject();
  sub_21AEC88BC(v0, v1);
  v3 = sub_21AEC8A84();
  sub_21AEC892C(v0);
  return v3;
}

uint64_t AMLSODAHostTask.init(taskId:taskName:hostParams:)()
{
  sub_21AEC8A6C();
  v2 = sub_21AEA7574(&qword_27CD3D8C8, &qword_21AF0C740);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21AEC8A5C();
  sub_21AEC88BC(v0, v1);
  v3 = sub_21AEC8A84();
  sub_21AEC892C(v0);
  return v3;
}

uint64_t sub_21AEC88BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21AEA7574(&qword_27CD3D8C8, &qword_21AF0C740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AEC892C(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3D8C8, &qword_21AF0C740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AMLSODAHostTask.__deallocating_deinit()
{
  v0 = _s6AeroML15AMLSODAHostTaskCfd_0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for AMLSODAHostTask(uint64_t a1)
{
  result = qword_27CD3D8D0;
  if (!qword_27CD3D8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21AEC8A84()
{

  return sub_21AF0962C();
}

double sub_21AEC8AA8@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_21AED0594(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_21AEA784C(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21AEC8B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_21AED0594(a1, a2);
  if (v4)
  {
    return sub_21AED1E5C(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AEC8B60(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_21AED0608(a1);
  if (v3)
  {
    return sub_21AED1E5C(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AEC8BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_21AED0594(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_21AED1E5C(v3);
}

uint64_t sub_21AEC8C00()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EB60);
  sub_21AEA7958(v0, qword_27CD3EB60);
  return sub_21AF096BC();
}

uint64_t sub_21AEC8C80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = 0x72456D6F74737563;
  }

  else
  {
    v3 = 0x7461507974706D65;
  }

  v5 = v3;
  MEMORY[0x21CEE4A70](a1, a2);
  MEMORY[0x21CEE4A70](41, 0xE100000000000000);
  return v5;
}

uint64_t sub_21AEC8D10(uint64_t a1, uint64_t a2)
{
  v5 = a1 == sub_21AED1CF8() && a2 == v4;
  if (v5 || (sub_21AED1CDC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == 0x64496B736174 && a2 == 0xE600000000000000;
    if (v7 || (sub_21AED1CDC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656D614E6B736174 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v9 = sub_21AED1CDC();

      if (v9)
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

uint64_t sub_21AEC8E1C(unsigned __int8 a1)
{
  sub_21AF09EFC();
  MEMORY[0x21CEE5170](a1);
  return sub_21AF09F1C();
}

uint64_t sub_21AEC8E64(char a1)
{
  if (!a1)
  {
    return sub_21AED1CF8();
  }

  if (a1 == 1)
  {
    return 0x64496B736174;
  }

  return 0x656D614E6B736174;
}

uint64_t sub_21AEC8EE0(uint64_t a1)
{
  v2 = *v1;
  sub_21AF09EFC();
  MEMORY[0x21CEE5170](v2);
  return sub_21AF09F1C();
}

uint64_t sub_21AEC8F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21AEC8D10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21AEC8F6C(uint64_t a1)
{
  v2 = sub_21AEC92B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21AEC8FA8(uint64_t a1)
{
  v2 = sub_21AEC92B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *AMLSODAConfig.__allocating_init(loggingPath:taskId:taskName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_21AED1B1C();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *AMLSODAConfig.init(loggingPath:taskId:taskName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t AMLSODAConfig.__allocating_init(from:)(void *a1)
{
  sub_21AED1B1C();
  v2 = swift_allocObject();
  AMLSODAConfig.init(from:)(a1);
  return v2;
}

void *AMLSODAConfig.init(from:)(void *a1)
{
  v3 = v1;
  sub_21AEA7574(&qword_27CD3D8E0, &qword_21AF0C730);
  sub_21AEA7C90();
  sub_21AEC7728();
  MEMORY[0x28223BE20](v5);
  sub_21AEAF9B0(a1, a1[3]);
  sub_21AEC92B0();
  sub_21AF09F3C();
  if (v2)
  {
    type metadata accessor for AMLSODAConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = sub_21AF09DEC();
    v1[3] = v6;
    v1[4] = sub_21AF09DEC();
    v1[5] = v7;
    v9 = sub_21AF09DEC();
    v11 = v10;
    v12 = sub_21AED1B0C();
    v13(v12);
    v3[6] = v9;
    v3[7] = v11;
  }

  sub_21AEA79F0(a1);
  return v3;
}

unint64_t sub_21AEC92B0()
{
  result = qword_27CD3D8E8;
  if (!qword_27CD3D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3D8E8);
  }

  return result;
}

uint64_t sub_21AEC9328()
{
  v1 = v0;
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD00000000000001FLL, 0x800000021AF0F7C0);
  MEMORY[0x21CEE4A70](v1[2], v1[3]);
  MEMORY[0x21CEE4A70](0x64496B7361740A2CLL, 0xEA0000000000203ALL);
  MEMORY[0x21CEE4A70](v1[4], v1[5]);
  MEMORY[0x21CEE4A70](0x614E6B7361740A2CLL, 0xEC000000203A656DLL);
  MEMORY[0x21CEE4A70](v1[6], v1[7]);
  MEMORY[0x21CEE4A70](10506, 0xE200000000000000);
  return 0;
}

uint64_t static AMLSODAConfig.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_21AF09E4C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_21AF09E4C() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return sub_21AF09E4C();
}

uint64_t AMLSODAConfig.deinit()
{

  return v0;
}

uint64_t AMLSODAConfig.__deallocating_deinit()
{
  AMLSODAConfig.deinit();
  sub_21AED1B1C();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AEC9510(void *a1)
{
  v3 = v1;
  v5 = sub_21AEA7574(&qword_27CD3D8F0, &qword_21AF0C738);
  sub_21AEA7C90();
  v7 = v6;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  sub_21AEAF9B0(a1, a1[3]);
  sub_21AEC92B0();
  sub_21AF09F4C();
  v11 = v3[2];
  v12 = v3[3];
  v21 = 0;
  sub_21AED1CC0(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[4];
    v14 = v3[5];
    v20 = 1;
    sub_21AED1CC0(v13, v14, &v20);
    v15 = v3[6];
    v16 = v3[7];
    v19 = 2;
    sub_21AED1CC0(v15, v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_21AEC9668@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AMLSODAConfig.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_21AEC9700()
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_21AF097BC();
  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v4];

  if (!v2 || (v4 & 1) == 0)
  {
    sub_21AED1944();
    swift_allocError();
    *v3 = 0xD000000000000071;
    *(v3 + 8) = 0x800000021AF0FA10;
    *(v3 + 16) = 0;
    swift_willThrow();
  }
}

void sub_21AEC982C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    oslog = v2;
    [v2 logMessage:a1];
  }

  else
  {
    if (qword_27CD3D278 != -1)
    {
      sub_21AED1A5C();
      swift_once();
    }

    v3 = sub_21AF096CC();
    sub_21AEC78A8(v3, qword_27CD3EB60);
    oslog = sub_21AF096AC();
    v4 = sub_21AF09A9C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21AE94000, oslog, v4, "Unable to get PETEventTracker2", v5, 2u);
      sub_21AEAFB90();
    }
  }
}

void sub_21AEC994C()
{
  sub_21AEAD0C4();
  v37 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_21AEA7574(&qword_27CD3D8C8, &qword_21AF0C740);
  MEMORY[0x28223BE20](v7 - 8);
  sub_21AEC7504();
  v36 = v8;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v9);
  v11 = &v32[-v10];
  sub_21AF093FC();
  sub_21AEA7C90();
  MEMORY[0x28223BE20](v12);
  sub_21AEC7554();
  v38 = sub_21AEA7574(&qword_27CD3D8F8, &qword_21AF0C748);
  sub_21AEA7C90();
  v14 = v13;
  sub_21AEC7728();
  MEMORY[0x28223BE20](v15);
  v17 = &v32[-v16];
  sub_21AEC9700();
  v35 = v6;
  v34 = v4;
  v33 = *(v2 + 16);

  sub_21AF0937C();
  sub_21AF093BC();
  v18 = sub_21AED1DCC();
  v19(v18);
  sub_21AF095BC();
  v33 = v14;
  v20 = v38;
  (*(v14 + 16))(v11, v17, v38);
  sub_21AEA75BC(v11, 0, 1, v20);
  type metadata accessor for AMLSODAHostTask(0);
  swift_allocObject();
  sub_21AEC88BC(v11, v36);

  sub_21AF0962C();
  sub_21AEC6E68(v11, &qword_27CD3D8C8, &qword_21AF0C740);
  v21 = sub_21AF0957C();
  v22 = swift_allocBox();
  v24 = v23;
  sub_21AF0956C();
  v25 = swift_allocBox();
  v27 = v26;
  sub_21AF0956C();
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = v37 & 1;
  *(v28 + 32) = v22;

  sub_21AF0963C();
  v29 = v38;

  (*(v33 + 8))(v17, v29);
  sub_21AEA7C78(v27, &v40);
  v30 = *(*(v21 - 8) + 16);
  v31 = sub_21AED1C74();
  v30(v31);
  sub_21AED1EA8();
  sub_21AEA7C78(v24, &v39);
  (v30)(v34, v24, v21);
  sub_21AED1EA8();

  sub_21AEAD0A8();
}

uint64_t sub_21AECA118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v4) = a3;
  v5 = sub_21AF0959C();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21AF0957C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v27 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v14 = swift_projectBox();
  v26 = swift_projectBox();
  sub_21AF095EC();
  swift_beginAccess();
  v25 = *(v9 + 40);
  v25(v14, v13, v8);
  if (v4)
  {
    sub_21AF0958C();
    sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
    v15 = swift_allocObject();
    v23 = v4;
    v4 = v15;
    *(v15 + 16) = xmmword_21AF0C5D0;
    swift_beginAccess();
    (*(v9 + 16))(v13, v14, v8);
    v16 = sub_21AF094CC();
    v22 = v5;
    v18 = v17;
    (*(v9 + 8))(v13, v8);
    v4[7] = MEMORY[0x277D837D0];
    v4[4] = v16;
    v4[5] = v18;
    sub_21AF09EDC();
    LOBYTE(v4) = v23;

    (*(v24 + 8))(v7, v22);
  }

  type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  swift_beginAccess();
  v19 = v27;
  (*(v9 + 16))(v27, v14, v8);
  sub_21AEC0F7C(v19, v4 & 1);
  (*(v9 + 8))(v19, v8);
  v20 = v26;
  swift_beginAccess();
  v25(v20, v13, v8);
  return 1;
}

id sub_21AECA4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v204 = a8;
  v198 = a6;
  v197 = a5;
  v196 = sub_21AF0957C();
  sub_21AEA7C90();
  v205 = v13;
  MEMORY[0x28223BE20](v14);
  sub_21AEC7554();
  sub_21AED1AE0(v16 - v15);
  v206 = sub_21AF094EC();
  sub_21AEA7C90();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_21AEC7504();
  v207 = v20;
  sub_21AEC76CC();
  MEMORY[0x28223BE20](v21);
  sub_21AEC774C();
  sub_21AED1AE0(v22);
  v200 = sub_21AF0952C();
  sub_21AEA7C90();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_21AEC7554();
  v28 = v27 - v26;
  v29 = sub_21AEA7574(&qword_27CD3D850, &qword_21AF0C618);
  sub_21AEC7854();
  sub_21AEC7728();
  MEMORY[0x28223BE20](v30);
  sub_21AED1AE0(&v170 - v31);
  v32 = type metadata accessor for AMLPhotosSearchPoirotMetricsUtility();
  if (sub_21AEC3B74(a1))
  {
    v195 = v32;
    if (sub_21AEC3B74(a2))
    {
      v187 = a7;
      v33 = a4;
      sub_21AED1DD8();
      v189 = v35;
      v193 = sub_21AECEFFC(v35, a1, v34 & 1);
      v36 = MEMORY[0x277D84F90];
      v214 = MEMORY[0x277D84F90];
      sub_21AF0954C();
      v37 = v200;
      (*(v24 + 16))(v202, v28, v200);
      v38 = *(v29 + 36);
      v39 = sub_21AEC5A18();
      v194 = v38;
      v40 = v39;
      sub_21AF099FC();
      (*(v24 + 8))(v28, v37);
      v192 = v18 + 16;
      v191 = v18 + 32;
      v183 = 0x800000021AF0F840;
      v42 = a3 == 0xD000000000000019 && 0x800000021AF0F840 == v33;
      v188 = v42;
      v177 = 0x800000021AF0F860;
      v44 = a3 == 0xD000000000000013 && 0x800000021AF0F860 == v33;
      v182 = v44;
      sub_21AEC7BD0();
      v190 = a3;
      v184 = v33;
      v171 = v45;
      v48 = a3 == v46 && v45 == v33;
      HIDWORD(v176) = v48;
      sub_21AEC7BD0();
      v170 = v49;
      v175 = "com.apple.searchd";
      v174 = "peopleMatchPercent";
      v173 = "matchedLocationRatio";
      v172 = "matchedSceneConfidence";
      v186 = v205 + 8;
      v185 = v18 + 8;
      v178 = xmmword_21AF0C5D0;
      v50 = v201;
      v203 = v40;
      while (1)
      {
        v51 = v202;
        sub_21AF09A1C();
        if (*(v51 + v194) == v212)
        {
          sub_21AEC6E68(v51, &qword_27CD3D850, &qword_21AF0C618);

          return v36;
        }

        v52 = sub_21AF09A6C();
        sub_21AED1E20();
        v53 = v199;
        v54 = v206;
        v55(v199);
        v52(&v212, 0);
        sub_21AED1BC8();
        sub_21AF09A2C();
        sub_21AED1E20();
        v56(v207, v53, v54);
        result = [objc_allocWithZone(AMLPhotosSearchLabeledData) init];
        if (!result)
        {
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          return result;
        }

        v58 = result;
        v59 = v189;
        if (v188)
        {
          v60 = 2;
        }

        else
        {
          v61 = sub_21AF09E4C();
          if (v61)
          {
            v60 = 2;
          }

          else
          {
            v60 = 1;
          }

          if (((v61 | v182) & 1) == 0)
          {
            sub_21AED1DC0();
            if ((sub_21AF09E4C() | HIDWORD(v176)))
            {
              v60 = 1;
            }

            else
            {
              sub_21AED1DC0();
              if ((sub_21AF09E4C() & 1) == 0)
              {
                goto LABEL_33;
              }

              v60 = 1;
            }
          }
        }

        [v58 setUiSurface_];
LABEL_33:
        sub_21AEC7530();
        result = sub_21AF094FC();
        if (!v211)
        {
          goto LABEL_142;
        }

        sub_21AEA7B80(0, &unk_27CD3D420, 0x277CCACA8);
        v62 = sub_21AED1AF0();
        sub_21AEAF9F4(v62, v63);
        sub_21AED1C24();
        swift_dynamicCast();
        v64 = sub_21AECB898(v208);
        [v58 setSearchSessionUUID_];

        result = sub_21AF094FC();
        if (!v211)
        {
          goto LABEL_143;
        }

        v65 = sub_21AED1AF0();
        sub_21AEAF9F4(v65, v66);
        sub_21AED1C24();
        swift_dynamicCast();
        v67 = v208;
        sub_21AED1DD8();
        sub_21AEBCC44(v67, v59, v68 & 1, v69, v70, v71, v72, v73, v170, v171, v172, v173, v174, v175, v176, v177, v178, *(&v178 + 1), v179, v180);
        sub_21AEC062C(v67, v50);
        v75 = v74;
        sub_21AEC74C8();
        result = sub_21AF094FC();
        if (!v211)
        {
          goto LABEL_144;
        }

        v76 = sub_21AED1AF0();
        sub_21AEAF9F4(v76, v77);
        sub_21AED1C24();
        swift_dynamicCast();
        v79 = v208;
        v78 = v209;
        v80 = sub_21AF099BC();
        v82 = sub_21AEC8BB4(v80, v81, v193);

        if (v82)
        {
          if (*(v82 + 16) && (v83 = sub_21AED1C80(), v85 = sub_21AED0594(v83, v84), (v86 & 1) != 0))
          {
            v87 = (*(v82 + 56) + (v85 << 6));
            v88 = *v87;
            v89 = v87[1];
            v90 = v87[3];
            v91 = v87[4];
            v92 = v87[5];
            v93 = v87[6];
            v94 = v87[7];

            [v58 setHasEverClickInLastMonth_];
            [v58 setClickCountInLastMonthNormalizedAcrossItems_];
            [v58 setHasEverClickInLastWeek_];
            [v58 setClickCountInLastWeekNormalizedAcrossItems_];
            [v58 setClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems_];
            [v58 setClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems_];
            [v58 setClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems_];
            [v58 setClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems_];
          }

          else
          {
          }
        }

        v95 = objc_opt_self();
        sub_21AED1C80();
        v96 = sub_21AF097BC();
        v97 = [v95 clientDonationForPhotoId:v96 aroundTime:v75];

        v205 = v97;
        if (!v97)
        {

LABEL_63:
          sub_21AED1DA0();
          goto LABEL_121;
        }

        v98 = v97;
        v99 = [v98 arrayProvider];
        if (!v99)
        {

          goto LABEL_63;
        }

        v100 = v99;
        type metadata accessor for AMLDonationDecodeHelper();
        v101 = sub_21AEAA6C0(v100);
        if (!v101)
        {

LABEL_72:
          sub_21AED1DA0();
          sub_21AED1BC8();
          goto LABEL_121;
        }

        v102 = v101;
        v180 = v100;
        v181 = v98;
        sub_21AED1DD8();
        if (v103)
        {
          sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
          sub_21AED1B1C();
          v104 = swift_allocObject();
          sub_21AED1BAC(v104);
          sub_21AF09C5C();

          *&v212 = 0xD00000000000001ELL;
          *(&v212 + 1) = v170;
          v105 = sub_21AED1C80();
          MEMORY[0x21CEE4A70](v105);
          v106 = v212;
          v98[7] = MEMORY[0x277D837D0];
          sub_21AED1AB8(v106);
        }

        v107 = 0;
        v108 = 0;
        while (1)
        {
          v109 = *(v102 + 16);
          if (v108 == v109)
          {
            break;
          }

          if (v108 >= v109)
          {
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          v110 = *(v102 + 8 * v108 + 32);
          if (!*(v110 + 16))
          {
            goto LABEL_138;
          }

          v111 = sub_21AED0594(0x696669746E656469, 0xEA00000000007265);
          if ((v112 & 1) == 0)
          {
            goto LABEL_139;
          }

          sub_21AEA784C(*(v110 + 56) + 32 * v111, &v210);
          v113 = sub_21AED1AF0();
          sub_21AEAF9F4(v113, v114);
          swift_dynamicCast();
          v115 = v209;
          if (v208 == v79 && v209 == v78)
          {

LABEL_58:

            sub_21AED1DD8();
            if (v117)
            {
              sub_21AEA7574(&qword_27CD3D6E8, &qword_21AF0C630);
              sub_21AED1B1C();
              v118 = swift_allocObject();
              sub_21AED1BAC(v118);
              v50 = MEMORY[0x277D837D0];
              v119 = COERCE_DOUBLE(sub_21AF0971C());
              v210 = v119;
              sub_21AED1AF0();
              sub_21AF09CFC();

              v120 = v212;
              *(v115 + 56) = v50;
              sub_21AED1AB8(v120);
            }

            ++v108;
            v107 = v110;
          }

          else
          {
            v50 = sub_21AF09E4C();

            if (v50)
            {
              goto LABEL_58;
            }

            ++v108;
          }
        }

        if (!v107)
        {
          sub_21AED1D48();
          sub_21AED1D30();
          goto LABEL_72;
        }

        sub_21AEC8AA8(v107, &v212, 0x65726F6353314CLL, 0xE700000000000000);
        v50 = v201;
        if (v213)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v122 = v210;
          }

          else
          {
            v122 = 0.0;
          }
        }

        else
        {
          sub_21AEC6E68(&v212, &qword_27CD3D330, &unk_21AF0C420);
          v122 = 0.0;
        }

        [v58 setL1Score_];
        sub_21AEC8AA8(v107, &v212, 0x65726F6353324CLL, 0xE700000000000000);
        if (v213)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v123 = v210;
            goto LABEL_80;
          }
        }

        else
        {
          sub_21AEC6E68(&v212, &qword_27CD3D330, &unk_21AF0C420);
        }

        v123 = 0.0;
LABEL_80:
        [v58 setL2ModelScore_];
        sub_21AEC8AA8(v107, &v212, 0x73656E6873657266, 0xE900000000000073);
        if (v213)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v124 = v210;
            goto LABEL_85;
          }
        }

        else
        {
          sub_21AEC6E68(&v212, &qword_27CD3D330, &unk_21AF0C420);
        }

        v124 = 0.0;
LABEL_85:
        [v58 setFreshness_];
        sub_21AEC8AA8(v107, &v212, 0x6146736F746F6870, 0xEF64657469726F76);
        if (v213)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v125 = v210 > 0.0;
            goto LABEL_90;
          }
        }

        else
        {
          sub_21AEC6E68(&v212, &qword_27CD3D330, &unk_21AF0C420);
        }

        v125 = 0;
LABEL_90:
        [v58 setFavorited_];
        sub_21AEC8AA8(v107, &v212, 0x6974656874736561, 0xEE0065726F635363);
        if (v213)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v126 = v210;
            goto LABEL_95;
          }
        }

        else
        {
          sub_21AEC6E68(&v212, &qword_27CD3D330, &unk_21AF0C420);
        }

        v126 = 0.0;
LABEL_95:
        [v58 setAestheticScore_];
        sub_21AEC8AA8(v107, &v212, 0x6E6F697461727563, 0xED000065726F6353);
        if (v213)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v127 = v210;
            goto LABEL_100;
          }
        }

        else
        {
          sub_21AEC6E68(&v212, &qword_27CD3D330, &unk_21AF0C420);
        }

        v127 = 0.0;
LABEL_100:
        [v58 setCurationScore_];
        sub_21AED1B90(&v212, 0xD000000000000012);
        if (v213)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v128 = v210;
            goto LABEL_105;
          }
        }

        else
        {
          sub_21AEC6E68(&v212, &qword_27CD3D330, &unk_21AF0C420);
        }

        v128 = 0.0;
LABEL_105:
        [v58 setMatchedPeopleRatio_];
        sub_21AED1B90(&v212, 0xD000000000000014);
        if (v213)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v129 = v210;
            goto LABEL_110;
          }
        }

        else
        {
          sub_21AEC6E68(&v212, &qword_27CD3D330, &unk_21AF0C420);
        }

        v129 = 0.0;
LABEL_110:
        [v58 setMatchedLocationRatio_];
        sub_21AED1B90(&v212, 0xD000000000000016);
        if (v213)
        {
          sub_21AED1A98();
          if (swift_dynamicCast())
          {
            v130 = v210;
            goto LABEL_115;
          }
        }

        else
        {
          sub_21AEC6E68(&v212, &qword_27CD3D330, &unk_21AF0C420);
        }

        v130 = 0.0;
LABEL_115:
        [v58 setMatchedSceneConfidence_];
        sub_21AED1B90(&v212, 0xD000000000000017);

        if (v213)
        {
          sub_21AED1A98();
          swift_dynamicCast();
          sub_21AED1E0C();
          if (v131)
          {
            v132 = v210;
          }

          else
          {
            v132 = 0.0;
          }
        }

        else
        {
          sub_21AEC6E68(&v212, &qword_27CD3D330, &unk_21AF0C420);
          sub_21AED1E0C();
        }

        [v58 setMatchedSceneBoundingBox_];

LABEL_121:
        v133 = sub_21AED1B4C(v121, sel_setClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems_);
        v134 = sub_21AED1B4C(v133, sel_setClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems_);
        v135 = sub_21AED1B4C(v134, sel_setClickCountGivenLocationInLastMonthNormalizedAcrossItems_);
        v136 = sub_21AED1B4C(v135, sel_setClickCountGivenLocationInLastWeekNormalizedAcrossItems_);
        v137 = sub_21AED1B4C(v136, sel_setClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems_);
        v138 = sub_21AED1B4C(v137, sel_setClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems_);
        v139 = sub_21AED1B4C(v138, sel_setClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems_);
        v140 = sub_21AED1B4C(v139, sel_setClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems_);
        sub_21AED1B4C(v140, sel_setClipScore_);
        v141 = v207;
        v142 = v187;
        sub_21AECF5E8(v207, v198, v187);
        v144 = v143;
        [v58 setHasEverShareInLastMonth_];
        [v58 setShareCountInLastMonthNormalizedAcrossItems_];
        v145 = sub_21AED1E38();
        sub_21AECF5F4(v145, v146, v142);
        v148 = v147;
        [v58 setHasEverShareInLastMonth_];
        v149 = sub_21AED1B4C([v58 setShareCountInLastWeekNormalizedAcrossItems_], sel_setIsCompleteMatch_);
        v150 = sub_21AED1B4C(v149, sel_setIsDuplicate_);
        v151 = sub_21AED1B4C(v150, sel_setShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems_);
        v152 = sub_21AED1B4C(v151, sel_setShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems_);
        v153 = sub_21AED1B4C(v152, sel_setShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems_);
        v154 = sub_21AED1B4C(v153, sel_setShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems_);
        v155 = sub_21AED1B4C(v154, sel_setShareCountGivenLocationInLastMonthNormalizedAcrossItems_);
        v156 = sub_21AED1B4C(v155, sel_setShareCountGivenLocationInLastWeekNormalizedAcrossItems_);
        v157 = sub_21AED1B4C(v156, sel_setShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems_);
        v158 = sub_21AED1B4C(v157, sel_setShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems_);
        v159 = sub_21AED1B4C(v158, sel_setShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems_);
        sub_21AED1B4C(v159, sel_setShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems_);
        [v58 setClickOrder_];
        v160 = [v58 setItemPosition_];
        if (v197)
        {
          sub_21AEC982C(v58);
        }

        MEMORY[0x21CEE4AD0](v160);
        v161 = v205;
        if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21AF098CC();
        }

        sub_21AF0991C();
        v36 = v214;

        sub_21AED1E20();
        v162(v50, v196);
        sub_21AED1E20();
        v163(v207, v206);
      }
    }

    if (qword_27CD3D278 != -1)
    {
      sub_21AED1A5C();
      swift_once();
    }

    v169 = sub_21AF096CC();
    sub_21AEC78A8(v169, qword_27CD3EB60);
    v165 = sub_21AF096AC();
    v166 = sub_21AF09A9C();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      v168 = "Incorrect search dataframe. Bailing...";
      goto LABEL_133;
    }
  }

  else
  {
    if (qword_27CD3D278 != -1)
    {
LABEL_140:
      sub_21AED1A5C();
      swift_once();
    }

    v164 = sub_21AF096CC();
    sub_21AEC78A8(v164, qword_27CD3EB60);
    v165 = sub_21AF096AC();
    v166 = sub_21AF09A9C();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      v168 = "Incorrect feedback dataframe. Bailing...";
LABEL_133:
      _os_log_impl(&dword_21AE94000, v165, v166, v168, v167, 2u);
      sub_21AEAFB90();
    }
  }

  return 0;
}