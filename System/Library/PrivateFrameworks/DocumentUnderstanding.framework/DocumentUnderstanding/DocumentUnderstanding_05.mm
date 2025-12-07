uint64_t sub_232B71944(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = objc_opt_self();
    v5 = sub_232CE9D20();
    v6 = MEMORY[0x238391CC0](a1, v2);
    if (qword_27DDC6368 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v7 = [v4 scanString:v5 range:0 configuration:{v6, qword_27DDC6F80}];

      sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
      v8 = sub_232CE9FE0();

      v9 = sub_232B26B10();
      if (!v9)
      {
        break;
      }

      v4 = v9;
      v6 = 0;
      v10 = v8 & 0xC000000000000001;
      v17 = v9;
      while (1)
      {
        if (v10)
        {
          v11 = MEMORY[0x2383922C0](v6, v8);
        }

        else
        {
          if (v6 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v11 = *(v8 + 8 * v6 + 32);
        }

        v12 = v11;
        v5 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v11 urlificationRange];
        sub_232CEA110();
        if (v13)
        {
        }

        else
        {
          v14 = sub_232CE9FB0();
          MEMORY[0x238391B80](v14);

          if ([v12 category] == 4)
          {
            v15 = sub_232B756EC(v12);

            v10 = v8 & 0xC000000000000001;
            v4 = v17;
            if (v15)
            {
              v2 = 1;
              goto LABEL_18;
            }
          }

          else
          {

            v10 = v8 & 0xC000000000000001;
            v4 = v17;
          }
        }

        ++v6;
        if (v5 == v4)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_once();
    }

LABEL_17:
    v2 = 0;
LABEL_18:
  }

  return v2;
}

void sub_232B71B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232BA68CC();
  v22 = v5;
  if (v4)
  {
    v6 = v4;
    v7 = v3;
    objc_opt_self();
    v8 = sub_232CE9D20();
    v9 = MEMORY[0x238391CC0](v7, v6);
    if (qword_27DDC6368 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v10 = sub_232BA72F4(v9, sel_scanString_range_configuration_);

      sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
      v11 = sub_232CE9FE0();

      v12 = sub_232B26B10();
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = 0;
      v15 = v11 & 0xC000000000000001;
      v23 = v12;
      while (1)
      {
        if (v15)
        {
          v16 = sub_232BA64A4();
          v17 = MEMORY[0x2383922C0](v16);
        }

        else
        {
          if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v17 = *(v11 + 8 * v14 + 32);
        }

        v18 = v17;
        v8 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          break;
        }

        [v17 urlificationRange];
        sub_232CEA110();
        if (v19)
        {
        }

        else
        {
          v20 = sub_232CE9FB0();
          MEMORY[0x238391B80](v20);

          if ([v18 category] == 4)
          {
            sub_232BA6498();
            v21 = v22();

            v15 = v11 & 0xC000000000000001;
            v13 = v23;
            if (v21)
            {
              goto LABEL_17;
            }
          }

          else
          {

            v15 = v11 & 0xC000000000000001;
            v13 = v23;
          }
        }

        ++v14;
        if (v8 == v13)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_232BA506C();
      v9 = swift_once();
    }

LABEL_17:
  }

  sub_232BA68B0();
}

uint64_t sub_232B71DC4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = objc_opt_self();
    v5 = sub_232CE9D20();
    v6 = MEMORY[0x238391CC0](a1, v2);
    if (qword_27DDC6368 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v7 = [v4 scanString:v5 range:0 configuration:{v6, qword_27DDC6F80}];

      sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
      v8 = sub_232CE9FE0();

      v9 = sub_232B26B10();
      if (!v9)
      {
        break;
      }

      v4 = v9;
      v6 = 0;
      v10 = v8 & 0xC000000000000001;
      v17 = v9;
      while (1)
      {
        if (v10)
        {
          v11 = MEMORY[0x2383922C0](v6, v8);
        }

        else
        {
          if (v6 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v11 = *(v8 + 8 * v6 + 32);
        }

        v12 = v11;
        v5 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v11 urlificationRange];
        sub_232CEA110();
        if (v13)
        {
        }

        else
        {
          v14 = sub_232CE9FB0();
          MEMORY[0x238391B80](v14);

          if ([v12 category] == 4)
          {
            v15 = sub_232B75D18(v12);

            v10 = v8 & 0xC000000000000001;
            v4 = v17;
            if (v15)
            {
              v2 = 1;
              goto LABEL_18;
            }
          }

          else
          {

            v10 = v8 & 0xC000000000000001;
            v4 = v17;
          }
        }

        ++v6;
        if (v5 == v4)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_once();
    }

LABEL_17:
    v2 = 0;
LABEL_18:
  }

  return v2;
}

uint64_t sub_232B72018(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || !a4)
  {
    return result;
  }

  v8 = objc_opt_self();
  sub_232B5EFF4();
  v9 = sub_232CE9D20();
  v10 = [v8 escapedPatternForString_];

  sub_232CE9D50();
  sub_232BA61C8();

  v11 = sub_232BA5FEC();
  MEMORY[0x238391C30](v11);

  sub_232BA73C4();
  v12 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v13 = sub_232B2080C();
  v15 = sub_232BA1978(v13, v14, 1);
  v16 = v15;
  if (!v15)
  {
    return 0;
  }

  v17 = sub_232BA7230();
  v19 = sub_232B124A8(v17, v18);
  sub_232BA5548();
  sub_232BA67A4();
  sub_232B48E4C(v20, v21, v22, v23);
  sub_232B48080();
  sub_232CEA320();
  sub_232BA5D68();
  sub_232BA5C94();
  v24 = sub_232CE9D20();
  v25 = sub_232BA725C();
  v27 = [v25 v26];

  sub_232BA4DEC(0, &qword_27DDC7530, 0x277CCACC0);
  v28 = sub_232CE9FE0();

  v29 = sub_232B26B10();
  if (!v29)
  {

    return 0;
  }

  v62 = v29;
  v64 = v28;
  v61 = 0;
  v30 = objc_opt_self();
  sub_232BA5C94();
  v31 = sub_232CE9D20();
  if (qword_27DDC6368 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v32 = [v30 scanString:v31 range:v19 configuration:{v4, qword_27DDC6F80, v61}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v33 = sub_232CE9FE0();

    result = sub_232B26B10();
    v63 = v16;
    if (result)
    {
      v34 = result;
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v4 = 0;
      v35 = MEMORY[0x277D84F90];
      v36 = &off_2789A8000;
      do
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x2383922C0](v4, v33);
        }

        else
        {
          v37 = *(v33 + 8 * v4 + 32);
        }

        v38 = v37;
        if ([v37 v36[421]] == 1)
        {
          v39 = [v38 urlificationRange];
          v31 = v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_232BA57A8();
            sub_232B36574(v43, v44, v45, v35);
            v35 = v46;
          }

          v41 = *(v35 + 16);
          if (v41 >= *(v35 + 24) >> 1)
          {
            sub_232BA65D4();
            sub_232B36574(v47, v48, v49, v50);
            v35 = v51;
          }

          *(v35 + 16) = v41 + 1;
          v42 = v35 + 16 * v41;
          *(v42 + 32) = v39;
          *(v42 + 40) = v31;
          v36 = &off_2789A8000;
        }

        else
        {
        }

        ++v4;
      }

      while (v34 != v4);
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
    }

    v52 = *(v35 + 16);
    if (!v52)
    {

LABEL_43:

      return 0;
    }

    v53 = 0;
    v54 = v64;
    v16 = (v64 & 0xC000000000000001);
    v30 = -v52;
LABEL_31:
    sub_232BA6974();
    sub_232B26B2C();
    v55 = v16 ? MEMORY[0x2383922C0](v53, v54) : *(v64 + 32 + 8 * v53);
    v19 = v55;
    if (!__OFADD__(v53++, 1))
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    sub_232BA506C();
    swift_once();
  }

  v57 = -1;
  v58 = v35 + 40;
  do
  {
    if (v30 + v57 == -1)
    {

      goto LABEL_43;
    }

    if (++v57 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    v4 = v58 + 16;
    v31 = *(v58 - 8);
    [v19 range];
    v65.location = sub_232BA67F4();
    length = NSIntersectionRange(v65, v66).length;
    [v19 range];
    v58 = v4;
  }

  while (length != v60);

  v54 = v64;
  if (v53 != v62)
  {
    goto LABEL_31;
  }

  return 1;
}

uint64_t sub_232B72524(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - v10;
  v12 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v60 - v13;
  v71 = sub_232CE8D10();
  v15 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_232CE8E90();
  v18 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
  MEMORY[0x28223BE20](v21 - 8);
  v73 = &v60 - v22;
  v72 = type metadata accessor for CalendarEvent(0);
  MEMORY[0x28223BE20](v72);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return a1;
  }

  v67 = v14;
  v68 = v24;
  v64 = a3;
  v65 = v11;
  v69 = v20;
  v25 = objc_opt_self();
  v26 = sub_232CE9D20();
  v76 = a1;
  v27 = MEMORY[0x238391CC0](a1, a2);
  v28 = a2;
  if (qword_27DDC6368 != -1)
  {
LABEL_31:
    swift_once();
  }

  v29 = [v25 scanString:v26 range:0 configuration:{v27, qword_27DDC6F80}];

  sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
  v30 = sub_232CE9FE0();

  v31 = sub_232B26B10();
  if (!v31)
  {
LABEL_21:

    return 0;
  }

  v25 = v31;
  v61 = v8;
  v62 = v17;
  v63 = v15;
  v17 = 0;
  v27 = v30 & 0xC000000000000001;
  v74 = v30 & 0xFFFFFFFFFFFFFF8;
  v75 = v30 & 0xC000000000000001;
  v66 = (v18 + 1);
  v18 = &off_2789A8000;
  v15 = v76;
  v8 = v72;
  while (1)
  {
    if (v27)
    {
      v32 = MEMORY[0x2383922C0](v17, v30);
    }

    else
    {
      if (v17 >= *(v74 + 16))
      {
        goto LABEL_30;
      }

      v32 = *(v30 + 8 * v17 + 32);
    }

    v26 = v32;
    v33 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    [v32 v18[142]];
    sub_232CEA110();
    if ((v34 & 1) == 0)
    {
      break;
    }

LABEL_20:
    ++v17;
    if (v33 == v25)
    {
      goto LABEL_21;
    }
  }

  v35 = sub_232CE9FB0();
  v36 = MEMORY[0x238391B80](v35);
  v38 = v37;

  if ([v26 category] != 4)
  {

    goto LABEL_16;
  }

  v39 = v73;
  sub_232B73344(v26, v36, v38, v73);

  if (sub_232B12480(v39, 1, v8) == 1)
  {

    sub_232BA4D50(v39, &qword_27DDC70A8, &unk_232CF81B0);
LABEL_16:
    v15 = v76;
LABEL_19:
    v27 = v75;
    v18 = &off_2789A8000;
    goto LABEL_20;
  }

  v40 = v30;
  v41 = v25;
  v42 = v28;
  v43 = v39;
  v44 = v68;
  sub_232BA4C2C(v43, v68);
  v45 = v69;
  sub_232CE8E50();
  v46 = v67;
  sub_232CE8E30();
  if (sub_232B12480(v46, 1, v71) == 1)
  {

    (*v66)(v45, v70);
    sub_232BA4C90(v44);
    sub_232BA4D50(v46, &qword_27DDC6A80, &qword_232CF6D30);
    v15 = v76;
    v28 = v42;
    v8 = v72;
    v25 = v41;
    v30 = v40;
    goto LABEL_19;
  }

  v49 = v62;
  v48 = v63;
  (*(v63 + 32))(v62, v46, v71);
  v50 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_232B485EC(v64);
  v51 = sub_232CE9D20();

  [v50 setDateFormat_];

  v52 = v65;
  sub_232CE8AC0();
  v53 = sub_232CE8F00();
  v54 = sub_232B12480(v52, 1, v53);
  sub_232BA4D50(v52, &qword_27DDC70B8, &qword_232CF81D0);
  v55 = v44;
  if (v54 != 1)
  {
    v56 = v61;
    sub_232CE8AC0();
    if (sub_232B12480(v56, 1, v53) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_232CE8ED0();
      (*(*(v53 - 8) + 8))(v56, v53);
    }

    [v50 setTimeZone_];
  }

  v58 = sub_232CE8CD0();
  v59 = [v50 stringFromDate_];

  a1 = sub_232CE9D50();
  (*(v48 + 8))(v49, v71);
  (*v66)(v69, v70);
  sub_232BA4C90(v55);
  return a1;
}

void sub_232B72C9C()
{
  sub_232B35110();
  v98 = v0;
  v99 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v11 = sub_232B2D120(v10);
  MEMORY[0x28223BE20](v11);
  sub_232B3516C();
  sub_232BA6ABC();
  MEMORY[0x28223BE20](v12);
  v14 = &v83 - v13;
  v15 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v15);
  sub_232B2D114();
  MEMORY[0x28223BE20](v16);
  v94 = &v83 - v17;
  sub_232B554F0();
  v95 = sub_232CE8D10();
  sub_232B48F0C();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_232B20704();
  v23 = v22 - v21;
  v93 = sub_232CE8E90();
  sub_232B48F0C();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  sub_232BA6FF8();
  v27 = sub_232B124A8(&qword_27DDC70A8, &unk_232CF81B0);
  sub_232B2D120(v27);
  sub_232B2D114();
  MEMORY[0x28223BE20](v28);
  v97 = &v83 - v29;
  v30 = sub_232B554F0();
  type metadata accessor for CalendarEvent(v30);
  sub_232B13F24();
  MEMORY[0x28223BE20](v31);
  sub_232B20704();
  v35 = v34 - v33;
  if (!v7)
  {
    goto LABEL_25;
  }

  v96 = v32;
  v85 = v5;
  v86 = v14;
  v87 = v23;
  v90 = v35;
  v91 = v2;
  v84 = v1;
  objc_opt_self();
  sub_232BA62A4();
  v36 = sub_232CE9D20();
  v92 = v7;
  v37 = MEMORY[0x238391CC0](v9, v7);
  v38 = v9;
  if (qword_27DDC6368 != -1)
  {
LABEL_34:
    sub_232BA506C();
    v37 = swift_once();
  }

  v39 = sub_232BA72F4(v37, sel_scanString_range_configuration_);

  sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
  v36 = sub_232CE9FE0();

  v40 = sub_232B26B10();
  if (!v40)
  {
LABEL_24:

    goto LABEL_25;
  }

  v83 = v19;
  v41 = 0;
  v42 = v36 & 0xC000000000000001;
  v100 = v36 & 0xFFFFFFFFFFFFFF8;
  v101 = v36;
  v89 = v25 + 1;
  v25 = &off_2789A8000;
  while (1)
  {
    if (v42)
    {
      v43 = sub_232BA5CAC();
      v44 = MEMORY[0x2383922C0](v43);
    }

    else
    {
      if (v41 >= *(v100 + 16))
      {
        goto LABEL_33;
      }

      v44 = *(v36 + 8 * v41 + 32);
    }

    v45 = v44;
    v19 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    [v44 v25[142]];
    sub_232CEA110();
    if ((v46 & 1) == 0)
    {
      break;
    }

LABEL_21:
    ++v41;
    if (v19 == v40)
    {
      goto LABEL_24;
    }
  }

  v47 = v40;
  v48 = sub_232CE9FB0();
  v49 = MEMORY[0x238391B80](v48);
  v51 = v50;

  if ([v45 category] != 4)
  {

    goto LABEL_20;
  }

  v52 = v97;
  v99(v45, v49, v51);

  v53 = sub_232BA6D28();
  v54 = v96;
  sub_232B351B0(v53, v55, v96);
  if (v60)
  {

    sub_232BA4D50(v52, &qword_27DDC70A8, &unk_232CF81B0);
LABEL_20:
    v40 = v47;
    v36 = v101;
    v25 = &off_2789A8000;
    goto LABEL_21;
  }

  v56 = v90;
  sub_232BA4C2C(v52, v90);
  sub_232CE8E50();
  v88 = *(v54 + 20);
  v57 = v94;
  sub_232CE8E30();
  v58 = sub_232BA6D28();
  sub_232B351B0(v58, v59, v95);
  if (v60)
  {

    v61 = sub_232BA6FE4();
    v62(v61);
    sub_232BA4C90(v56);
    sub_232BA4D50(v57, &qword_27DDC6A80, &qword_232CF6D30);
    goto LABEL_20;
  }

  v63 = v87;
  v64 = sub_232B35090();
  v65(v64);
  v66 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_232B485EC(v85);
  sub_232CE9D20();
  sub_232B26D70();

  [v66 setDateFormat_];

  v67 = v86;
  sub_232CE8AC0();
  v68 = sub_232CE8F00();
  v69 = sub_232B12480(v67, 1, v68);
  sub_232BA4D50(v67, &qword_27DDC70B8, &qword_232CF81D0);
  if (v69 != 1)
  {
    v70 = v84;
    sub_232CE8AC0();
    v71 = sub_232BA6D28();
    sub_232B351B0(v71, v72, v68);
    if (v60)
    {
      v73 = 0;
    }

    else
    {
      v73 = sub_232CE8ED0();
      sub_232BA5C58();
      (*(v74 + 8))(v70, v68);
    }

    v75 = sub_232BA725C();
    [v75 v76];
  }

  v77 = sub_232CE8CD0();
  v78 = sub_232BA725C();
  v80 = [v78 v79];

  sub_232CE9D50();
  (*(v83 + 8))(v63, v95);
  v81 = sub_232BA6FE4();
  v82(v81);
  sub_232BA4C90(v56);
LABEL_25:
  sub_232BA67F4();
  sub_232B20A00();
}

uint64_t sub_232B73344@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  MEMORY[0x28223BE20](v8 - 8);
  v137 = &v127[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v142 = &v127[-v11];
  v12 = type metadata accessor for CalendarEvent(0);
  MEMORY[0x28223BE20](v12);
  v141 = &v127[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  MEMORY[0x28223BE20](v14 - 8);
  v133 = &v127[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v138 = &v127[-v17];
  v18 = sub_232CE8AE0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v148 = &v127[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_232CE8F00();
  v136 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v135 = &v127[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v134 = &v127[-v23];
  v24 = sub_232CE8E90();
  v139 = *(v24 - 8);
  v140 = v24;
  MEMORY[0x28223BE20](v24);
  v150 = &v127[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_232CE8D10();
  v143 = *(v26 - 8);
  v144 = v26;
  MEMORY[0x28223BE20](v26);
  v146 = &v127[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v151 = &v127[-v29];
  v30 = sub_232CE89D0();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v127[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v152 = a2;
  v153 = a3;
  sub_232CE8990();
  sub_232B48080();
  sub_232CEA390();
  LOBYTE(a3) = v34;
  (*(v31 + 8))(v33, v30);
  if (a3)
  {
    v35 = a4;
    v36 = v12;
    return sub_232B12504(v35, 1, 1, v36);
  }

  v132 = a4;
  v147 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v147)
  {
LABEL_13:
    v35 = v132;
    v36 = v12;
    return sub_232B12504(v35, 1, 1, v36);
  }

  v37 = [v147 startDate];
  if (!v37)
  {

    goto LABEL_13;
  }

  v38 = v37;
  sub_232CE8CF0();

  v39 = [a1 type];
  v40 = sub_232CE9D50();
  v42 = v41;

  sub_232B806E4(a1);
  result = *MEMORY[0x277D04198];
  if (!*MEMORY[0x277D04198])
  {
    __break(1u);
    goto LABEL_86;
  }

  v45 = v40 == sub_232CE9D50() && v42 == v44;
  v46 = MEMORY[0x277D040B0];
  v145 = v19;
  v131 = v12;
  if (v45)
  {
    v49 = 1;
    v48 = v18;
  }

  else
  {
    v47 = sub_232CEA750();

    v48 = v18;
    if (v47)
    {
LABEL_11:
      v49 = 1;
      goto LABEL_30;
    }

    result = *v46;
    if (!*v46)
    {
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if (v40 == sub_232CE9D50() && v42 == v50)
    {
      goto LABEL_28;
    }

    v52 = sub_232CEA750();

    if (v52)
    {
      goto LABEL_11;
    }

    result = *MEMORY[0x277D04190];
    if (!*MEMORY[0x277D04190])
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v40 == sub_232CE9D50() && v42 == v53)
    {
LABEL_28:
      v49 = 1;
    }

    else
    {
      v49 = sub_232CEA750();
    }
  }

LABEL_30:
  result = *MEMORY[0x277D040A8];
  if (!*MEMORY[0x277D040A8])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v56 = v40 == sub_232CE9D50() && v42 == v55;
  v130 = v49;
  if (v56)
  {
    goto LABEL_37;
  }

  v57 = sub_232CEA750();

  if (v57)
  {
LABEL_36:
    LOBYTE(v49) = v130;
LABEL_38:

    goto LABEL_39;
  }

  result = *v46;
  if (!*v46)
  {
    goto LABEL_88;
  }

  if (v40 == sub_232CE9D50() && v42 == v84)
  {
    LOBYTE(v49) = v130;
LABEL_37:

    goto LABEL_38;
  }

  v86 = sub_232CEA750();

  if (v86)
  {
    goto LABEL_36;
  }

  result = *MEMORY[0x277D040A0];
  if (!*MEMORY[0x277D040A0])
  {
LABEL_90:
    __break(1u);
    return result;
  }

  v88 = v40 == sub_232CE9D50() && v42 == v87;
  LOBYTE(v49) = v130;
  if (v88)
  {
    goto LABEL_37;
  }

  v89 = sub_232CEA750();

  if ((v89 & 1) == 0)
  {
    if ((v49 & 1) == 0)
    {
      (*(v143 + 8))(v151, v144);

      v35 = v132;
      v36 = v131;
      return sub_232B12504(v35, 1, 1, v36);
    }

    v128 = 0;
    goto LABEL_40;
  }

LABEL_39:
  v128 = 1;
  if (v49)
  {
LABEL_40:
    sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
    v59 = sub_232CE8E80();
    v60 = *(v59 - 8);
    v61 = *(v60 + 72);
    v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_232CF8180;
    v64 = v63 + v62;
    v65 = *(v60 + 104);
    v65(v64, *MEMORY[0x277CC9980], v59);
    v65(v64 + v61, *MEMORY[0x277CC99A0], v59);
    v65(v64 + 2 * v61, *MEMORY[0x277CC99A8], v59);
    v58 = sub_232C0D110(v63);
    v66 = v58;
    goto LABEL_42;
  }

  v66 = MEMORY[0x277D84FA0];
LABEL_42:
  v152 = 0x65626D754E796144;
  v153 = 0xE900000000000072;
  MEMORY[0x28223BE20](v58);
  *&v127[-16] = &v152;
  v67 = sub_232C0A5F8();
  v129 = v48;
  if (v67 || (v152 = 0x6D754E68746E6F4DLL, v153 = 0xEB00000000726562, MEMORY[0x28223BE20](v67), *&v127[-16] = &v152, v67 = sub_232C0A5F8()) || (v152 = 0x626D754E72616559, v153 = 0xEA00000000007265, MEMORY[0x28223BE20](v67), *&v127[-16] = &v152, v67 = sub_232C0A5F8()))
  {
    v152 = 0x65626D754E796144;
    v153 = 0xE900000000000072;
    MEMORY[0x28223BE20](v67);
    *&v127[-16] = &v152;
    v68 = sub_232C0A5F8();
    if (v68)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      v69 = sub_232CE8E80();
      v70 = *(v69 - 8);
      v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_232CF6460;
      (*(v70 + 104))(v72 + v71, *MEMORY[0x277CC9968], v69);
      v68 = sub_232C0A394(v72, v66);
      v66 = v68;
    }

    v152 = 0x6D754E68746E6F4DLL;
    v153 = 0xEB00000000726562;
    MEMORY[0x28223BE20](v68);
    *&v127[-16] = &v152;
    v73 = sub_232C0A5F8();
    if (v73)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      v74 = sub_232CE8E80();
      v75 = *(v74 - 8);
      v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_232CF6460;
      (*(v75 + 104))(v77 + v76, *MEMORY[0x277CC9998], v74);
      v73 = sub_232C0A394(v77, v66);
      v66 = v73;
    }

    v78 = v141;
    v152 = 0x626D754E72616559;
    v153 = 0xEA00000000007265;
    MEMORY[0x28223BE20](v73);
    *&v127[-16] = &v152;
    v79 = sub_232C0A5F8();

    if (v79)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      v80 = sub_232CE8E80();
      v81 = *(v80 - 8);
      v82 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_232CF6460;
      (*(v81 + 104))(v83 + v82, *MEMORY[0x277CC9988], v80);
      sub_232C0A394(v83, v66);
    }
  }

  else
  {

    if (v128)
    {
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      v90 = sub_232CE8E80();
      v91 = *(v90 - 8);
      v92 = *(v91 + 72);
      v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_232CF8180;
      v95 = v94 + v93;
      v96 = *(v91 + 104);
      v96(v95, *MEMORY[0x277CC9988], v90);
      v96(v95 + v92, *MEMORY[0x277CC9998], v90);
      v96(v95 + 2 * v92, *MEMORY[0x277CC9968], v90);
      sub_232C0A394(v94, v66);
    }

    v78 = v141;
  }

  v97 = v148;
  sub_232CE8E50();
  v98 = v147;
  v99 = [v147 startTimeZone];
  if (v99)
  {
    v100 = v99;
    v101 = v134;
    sub_232CE8EE0();

    v102 = v136;
    v103 = v149;
    (*(v136 + 16))(v135, v101, v149);
    sub_232CE8E70();
    (*(v102 + 8))(v101, v103);
  }

  sub_232CE8E20();
  v104 = [v98 startTimeZone];
  if (v104)
  {
    v105 = v104;
    v106 = v138;
    sub_232CE8EE0();

    v107 = 0;
    v108 = v146;
  }

  else
  {
    v107 = 1;
    v108 = v146;
    v106 = v138;
  }

  sub_232B12504(v106, v107, 1, v149);
  sub_232CE8AD0();
  v109 = v131;
  v110 = v145;
  v111 = v129;
  (*(v145 + 16))(&v78[*(v131 + 20)], v97, v129);
  v112 = *(v109 + 24);
  sub_232B12504(&v78[v112], 1, 1, v111);
  *v78 = (v130 & 1) == 0;
  v113 = v142;
  sub_232B12504(v142, 1, 1, v111);
  v114 = [v98 endDate];
  if (v114)
  {
    v115 = v114;
    sub_232CE8CF0();

    v116 = v137;
    v117 = v108;
    v118 = v150;
    sub_232CE8E20();

    sub_232B12504(v116, 0, 1, v111);
    sub_232B55134(v116, v113);
    v119 = v113;
    if (!sub_232B12480(v113, 1, v111))
    {
      v120 = [v147 endTimeZone];
      if (v120)
      {
        v121 = v120;
        v122 = v133;
        sub_232CE8EE0();

        v123 = 0;
      }

      else
      {
        v123 = 1;
        v122 = v133;
      }

      sub_232B12504(v122, v123, 1, v149);
      sub_232CE8AD0();
      v118 = v150;
      v117 = v146;
      v111 = v129;
    }

    v124 = v144;
    v125 = *(v143 + 8);
    v125(v117, v144);
    (*(v145 + 8))(v148, v111);
    (*(v139 + 8))(v118, v140);
    v125(v151, v124);
    sub_232B552D0(v113, &v78[v112]);
  }

  else
  {

    (*(v110 + 8))(v97, v111);
    (*(v139 + 8))(v150, v140);
    (*(v143 + 8))(v151, v144);
    v119 = v113;
  }

  v126 = v132;
  sub_232BA4CEC(v78, v132);
  sub_232B12504(v126, 0, 1, v131);
  sub_232BA4D50(v119, &qword_27DDC70B0, &unk_232CF81C0);
  return sub_232BA4C90(v78);
}

void sub_232B746DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_232B35110();
  v229 = v22;
  v230 = v23;
  v222 = v24;
  v231 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_232B124A8(&qword_27DDC70B0, &unk_232CF81C0);
  v37 = sub_232B2D120(v36);
  MEMORY[0x28223BE20](v37);
  sub_232B3516C();
  v227 = v38 - v39;
  sub_232B20600();
  MEMORY[0x28223BE20](v40);
  sub_232B55558();
  v237 = v41;
  v42 = sub_232B554F0();
  v43 = type metadata accessor for CalendarEvent(v42);
  sub_232B13F24();
  MEMORY[0x28223BE20](v44);
  sub_232B20704();
  v236 = (v46 - v45);
  v47 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  v48 = sub_232B2D120(v47);
  MEMORY[0x28223BE20](v48);
  sub_232B3516C();
  sub_232B55424();
  MEMORY[0x28223BE20](v49);
  sub_232B55558();
  v232 = v50;
  sub_232B554F0();
  v235 = sub_232CE8AE0();
  sub_232B48F0C();
  v241 = v51;
  MEMORY[0x28223BE20](v52);
  sub_232B20704();
  v243 = v54 - v53;
  sub_232B554F0();
  v240 = sub_232CE8F00();
  sub_232B48F0C();
  v226 = v55;
  MEMORY[0x28223BE20](v56);
  sub_232B3516C();
  sub_232B55424();
  MEMORY[0x28223BE20](v57);
  sub_232B55558();
  v224 = v58;
  sub_232B554F0();
  sub_232CE8E90();
  sub_232B48F0C();
  v233 = v60;
  v234 = v59;
  MEMORY[0x28223BE20](v59);
  sub_232B20704();
  v242 = v62 - v61;
  sub_232B554F0();
  sub_232CE8D10();
  sub_232B48F0C();
  v238 = v64;
  v239 = v63;
  MEMORY[0x28223BE20](v63);
  sub_232B3516C();
  v228 = v65 - v66;
  sub_232B20600();
  MEMORY[0x28223BE20](v67);
  sub_232B55558();
  v244 = v68;
  sub_232B554F0();
  v69 = sub_232CE89D0();
  sub_232B48F0C();
  v71 = v70;
  MEMORY[0x28223BE20](v72);
  sub_232B20704();
  v75 = v74 - v73;
  v245 = v31;
  v246 = v29;
  sub_232CE8990();
  sub_232B48080();
  sub_232B48304();
  sub_232CEA390();
  LOBYTE(v29) = v76;
  (*(v71 + 8))(v75, v69);
  if (v29)
  {
    goto LABEL_12;
  }

  v220 = v35;
  v77 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v77)
  {
    goto LABEL_12;
  }

  v78 = v77;
  v79 = [v77 startDate];
  if (!v79)
  {

LABEL_12:
    sub_232B55484();
    v96 = v43;
    goto LABEL_13;
  }

  v80 = v79;
  v218 = v43;
  v219 = v78;
  sub_232CE8CF0();

  v81 = [v33 type];
  v82 = sub_232CE9D50();
  v84 = v83;

  v27(v33);
  if (!*MEMORY[0x277D04198])
  {
    __break(1u);
    goto LABEL_83;
  }

  sub_232CE9D50();
  sub_232BA6C8C();
  v86 = v86 && v84 == v85;
  v87 = MEMORY[0x277D040B0];
  v88 = v242;
  v89 = v243;
  if (v86)
  {
    goto LABEL_27;
  }

  v90 = sub_232BA5AB8();
  sub_232BA6F4C(v90, v91, v92);
  sub_232BA7394();
  if (v81)
  {
LABEL_10:
    v217 = 1;
    goto LABEL_29;
  }

  if (!*v87)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  sub_232CE9D50();
  sub_232BA6C8C();
  if (v86 && v84 == v97)
  {
    goto LABEL_27;
  }

  v99 = sub_232BA5AB8();
  sub_232BA6F4C(v99, v100, v101);
  sub_232BA7394();
  if (v81)
  {
    goto LABEL_10;
  }

  if (!*MEMORY[0x277D04190])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  sub_232CE9D50();
  sub_232BA6C8C();
  if (v86 && v84 == v102)
  {
LABEL_27:
    v217 = 1;
  }

  else
  {
    v104 = sub_232BA5AB8();
    v217 = sub_232BA6F4C(v104, v105, v106);
  }

LABEL_29:
  if (!*MEMORY[0x277D040A8])
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  sub_232CE9D50();
  sub_232BA6C8C();
  if (v86 && v84 == v107)
  {
    goto LABEL_49;
  }

  v109 = sub_232BA5AB8();
  sub_232BA6F4C(v109, v110, v111);
  sub_232BA7394();
  if (v81)
  {
LABEL_50:

    goto LABEL_51;
  }

  if (!*v87)
  {
    goto LABEL_85;
  }

  sub_232CE9D50();
  sub_232BA6C8C();
  if (v86 && v84 == v112)
  {
LABEL_49:

    goto LABEL_50;
  }

  v114 = sub_232BA5AB8();
  sub_232BA6F4C(v114, v115, v116);
  sub_232BA7394();
  if (v81)
  {
    goto LABEL_50;
  }

  if (*MEMORY[0x277D040A0])
  {
    if (v82 != sub_232CE9D50() || v84 != v117)
    {
      sub_232BA5AB8();
      v119 = sub_232CEA750();

      if ((v119 & 1) == 0)
      {
        if (v217)
        {
          v216 = 0;
          goto LABEL_52;
        }

        (*(v238 + 8))(v244, v239);

        v93 = sub_232BA5CE4();
        v96 = v218;
LABEL_13:
        sub_232B12504(v93, v94, v95, v96);
LABEL_14:
        sub_232B20A00();
        return;
      }

LABEL_51:
      v216 = 1;
      if ((v217 & 1) == 0)
      {
        v223 = MEMORY[0x277D84FA0];
LABEL_54:
        v245 = 0x65626D754E796144;
        v246 = 0xE900000000000072;
        MEMORY[0x28223BE20](v120);
        sub_232B55380();
        *(v132 - 16) = &v245;
        v133 = sub_232C0A5F8();
        if (v133 || (v245 = 0x6D754E68746E6F4DLL, v246 = 0xEB00000000726562, MEMORY[0x28223BE20](v133), sub_232B55380(), *(v134 - 16) = &v245, v133 = sub_232C0A5F8()) || (sub_232BA62F4(), sub_232BA6CC8(v135), MEMORY[0x28223BE20](v136), sub_232B55380(), *(v137 - 16) = &v245, v133 = sub_232C0A5F8()))
        {
          v245 = 0x65626D754E796144;
          v246 = 0xE900000000000072;
          MEMORY[0x28223BE20](v133);
          sub_232B55380();
          *(v138 - 16) = &v245;
          v139 = v218;
          if (sub_232C0A5F8())
          {
            sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
            v140 = sub_232BA6F1C();
            sub_232B48F0C();
            v142 = v141;
            v143 = sub_232BA6B6C();
            *(v143 + 16) = xmmword_232CF6460;
            (*(v142 + 104))(&v216 + v143, *MEMORY[0x277CC9968], v140);
            v144 = sub_232BA6A08();
            sub_232BA69CC(v144);
          }

          sub_232BA6FA8();
          v245 = v145;
          v246 = 0xEB00000000726562;
          MEMORY[0x28223BE20](v146);
          sub_232B55380();
          *(v147 - 16) = &v245;
          if (sub_232C0A5F8())
          {
            sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
            v148 = sub_232BA6F1C();
            sub_232B48F0C();
            v150 = v149;
            v151 = sub_232BA6B6C();
            *(v151 + 16) = xmmword_232CF6460;
            (*(v150 + 104))(&v216 + v151, *MEMORY[0x277CC9998], v148);
            v152 = sub_232BA6A08();
            sub_232BA69CC(v152);
          }

          v153 = v242;
          v89 = v243;
          sub_232BA62F4();
          sub_232BA6CC8(v154);
          MEMORY[0x28223BE20](v155);
          sub_232B55380();
          *(v156 - 16) = &v245;
          sub_232BA71DC();
          v157 = sub_232C0A5F8();

          if (v157)
          {
            sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
            v158 = sub_232BA6F1C();
            sub_232B48F0C();
            v160 = v159;
            v161 = (*(v159 + 80) + 32) & ~*(v159 + 80);
            v162 = swift_allocObject();
            *(v162 + 16) = xmmword_232CF6460;
            (*(v160 + 104))(v162 + v161, *MEMORY[0x277CC9988], v158);
            v163 = sub_232BA6A08();
            sub_232BA69CC(v163);
          }

          v165 = v236;
          v164 = v237;
          v166 = v235;
          v167 = v240;
        }

        else
        {

          if (v216)
          {
            sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
            v201 = sub_232BA6F1C();
            sub_232B48F0C();
            v203 = v202;
            v205 = *(v204 + 72);
            v206 = (*(v202 + 80) + 32) & ~*(v202 + 80);
            v207 = swift_allocObject();
            *(v207 + 16) = xmmword_232CF8180;
            v208 = v207 + v206;
            v209 = *(v203 + 104);
            v209(v208, *MEMORY[0x277CC9988], v201);
            v209(v208 + v205, *MEMORY[0x277CC9998], v201);
            v209(v208 + 2 * v205, *MEMORY[0x277CC9968], v201);
            v210 = sub_232BA6A08();
            sub_232BA69CC(v210);
          }

          v165 = v236;
          v164 = v237;
          v166 = v235;
          v167 = v240;
          v153 = v88;
          v139 = v218;
        }

        sub_232CE8E50();
        v168 = [v219 startTimeZone];
        if (v168)
        {
          v169 = v168;
          v170 = v89;
          v171 = v224;
          sub_232CE8EE0();

          v172 = v226;
          (*(v226 + 16))(v225, v171, v167);
          sub_232CE8E70();
          v173 = v171;
          v89 = v170;
          v139 = v218;
          (*(v172 + 8))(v173, v167);
        }

        sub_232CE8E20();
        v174 = [v219 startTimeZone];
        if (v174)
        {
          v175 = v174;
          sub_232CE8EE0();
        }

        sub_232BA65D4();
        sub_232B12504(v176, v177, v178, v179);
        sub_232CE8AD0();
        (*(v241 + 16))(&v165[*(v139 + 20)], v89, v166);
        v180 = *(v139 + 24);
        sub_232B55484();
        sub_232B12504(v181, v182, v183, v166);
        *v165 = (v217 & 1) == 0;
        sub_232B55484();
        sub_232B12504(v184, v185, v186, v166);
        v187 = v219;
        v188 = [v219 endDate];
        if (v188)
        {
          v189 = v188;
          v190 = v228;
          sub_232CE8CF0();

          v191 = v227;
          sub_232B35090();
          sub_232CE8E20();

          sub_232B351FC();
          sub_232B12504(v192, v193, v194, v166);
          sub_232B55134(v191, v164);
          if (!sub_232B12480(v164, 1, v166))
          {
            v195 = [v219 endTimeZone];
            if (v195)
            {
              v196 = v195;
              v197 = v221;
              sub_232CE8EE0();

              v198 = 0;
            }

            else
            {
              v198 = 1;
              v197 = v221;
            }

            sub_232B12504(v197, v198, 1, v240);
            sub_232CE8AD0();
            v153 = v242;
            v190 = v228;
          }

          v211 = v239;
          v212 = *(v238 + 8);
          v212(v190, v239);
          (*(v241 + 8))(v243, v166);
          (*(v233 + 8))(v153, v234);
          v212(v244, v211);
          sub_232B552D0(v164, &v165[v180]);
          v139 = v218;
        }

        else
        {

          v199 = sub_232BA678C();
          v200(v199);
          (*(v233 + 8))(v153, v234);
          (*(v238 + 8))(v244, v239);
        }

        sub_232BA4CEC(v165, v220);
        sub_232B351FC();
        sub_232B12504(v213, v214, v215, v139);
        sub_232BA4D50(v164, &qword_27DDC70B0, &unk_232CF81C0);
        sub_232BA4C90(v165);
        goto LABEL_14;
      }

LABEL_52:
      sub_232B124A8(&qword_27DDC70C0, &unk_232CFA090);
      v121 = sub_232BA6F1C();
      sub_232B48F0C();
      v123 = v122;
      v125 = *(v124 + 72);
      v126 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v127 = swift_allocObject();
      *(v127 + 16) = xmmword_232CF8180;
      v128 = v127 + v126;
      v129 = *(v123 + 104);
      v130 = sub_232BA69D8();
      v129(v130);
      (v129)(v128 + v125, *MEMORY[0x277CC99A0], v121);
      (v129)(v128 + 2 * v125, *MEMORY[0x277CC99A8], v121);
      v131 = sub_232C0D110(v127);
      v120 = sub_232BA69CC(v131);
      goto LABEL_54;
    }

    goto LABEL_49;
  }

LABEL_87:
  __break(1u);
}

uint64_t sub_232B756EC(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v2)
  {
    return 0;
  }

  v3 = [a1 type];
  v4 = sub_232CE9D50();
  v6 = v5;

  sub_232B806E4(a1);
  result = *MEMORY[0x277D040A8];
  if (!*MEMORY[0x277D040A8])
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v4 == sub_232CE9D50() && v6 == v8)
  {
    goto LABEL_22;
  }

  v10 = sub_232CEA750();

  if (v10)
  {
LABEL_23:

    goto LABEL_24;
  }

  result = *MEMORY[0x277D040B0];
  if (!*MEMORY[0x277D040B0])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 == sub_232CE9D50() && v6 == v11)
  {
LABEL_22:

    goto LABEL_23;
  }

  v13 = sub_232CEA750();

  if (v13)
  {
    goto LABEL_23;
  }

  result = *MEMORY[0x277D040A0];
  if (*MEMORY[0x277D040A0])
  {
    if (v4 != sub_232CE9D50() || v6 != v14)
    {
      v16 = sub_232CEA750();

      if ((v16 & 1) == 0)
      {

        return 0;
      }

LABEL_24:
      MEMORY[0x28223BE20](v17);
      v19 = sub_232C0A5F8();
      if (v19 || (MEMORY[0x28223BE20](v19), v20 = sub_232C0A5F8()))
      {

        return 1;
      }

      else
      {
        MEMORY[0x28223BE20](v20);
        v18 = sub_232C0A5F8();
      }

      return v18;
    }

    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_232B75A60()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v4)
  {
    goto LABEL_28;
  }

  v5 = [v3 type];
  v6 = sub_232CE9D50();
  v8 = v7;

  v1(v3);
  if (!*MEMORY[0x277D040A8])
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v6 == sub_232CE9D50() && v8 == v9)
  {
    goto LABEL_22;
  }

  sub_232BA5AB8();
  v11 = sub_232CEA750();

  if (v11)
  {
LABEL_23:

    goto LABEL_24;
  }

  if (!*MEMORY[0x277D040B0])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 == sub_232CE9D50() && v8 == v12)
  {
LABEL_22:

    goto LABEL_23;
  }

  sub_232BA5AB8();
  v14 = sub_232CEA750();

  if (v14)
  {
    goto LABEL_23;
  }

  if (*MEMORY[0x277D040A0])
  {
    if (v6 != sub_232CE9D50() || v8 != v15)
    {
      sub_232BA5AB8();
      v17 = sub_232CEA750();

      if ((v17 & 1) == 0)
      {

LABEL_28:
        sub_232B20A00();
        return;
      }

LABEL_24:
      v26 = 0x65626D754E796144;
      v27 = 0xE900000000000072;
      MEMORY[0x28223BE20](v18);
      sub_232B55380();
      *(v19 - 16) = &v26;
      if (sub_232C0A5F8() || (sub_232BA6FA8(), v26 = v20, v27 = 0xEB00000000726562, MEMORY[0x28223BE20](v21), sub_232B55380(), *(v22 - 16) = &v26, sub_232C0A5F8()))
      {
      }

      else
      {
        sub_232BA62F4();
        v26 = v23;
        v27 = 0xEA00000000007265;
        MEMORY[0x28223BE20](v24);
        sub_232B55380();
        *(v25 - 16) = &v26;
        sub_232BA725C();
        sub_232C0A5F8();
      }

      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_232B75D18(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CC5668]) initWithDDScannerResult_];
  if (!v2)
  {
    return 0;
  }

  v3 = [a1 type];
  v4 = sub_232CE9D50();
  v6 = v5;

  sub_232B806E4(a1);
  result = *MEMORY[0x277D040A8];
  if (!*MEMORY[0x277D040A8])
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v4 == sub_232CE9D50() && v6 == v8)
  {
    goto LABEL_22;
  }

  v10 = sub_232CEA750();

  if (v10)
  {
LABEL_23:

    goto LABEL_24;
  }

  result = *MEMORY[0x277D040B0];
  if (!*MEMORY[0x277D040B0])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 == sub_232CE9D50() && v6 == v11)
  {
LABEL_22:

    goto LABEL_23;
  }

  v13 = sub_232CEA750();

  if (v13)
  {
    goto LABEL_23;
  }

  result = *MEMORY[0x277D040A0];
  if (*MEMORY[0x277D040A0])
  {
    if (v4 != sub_232CE9D50() || v6 != v14)
    {
      v16 = sub_232CEA750();

      if ((v16 & 1) == 0)
      {

        return 0;
      }

LABEL_24:
      MEMORY[0x28223BE20](v17);
      v19 = sub_232C0A5F8();
      if (v19 || (MEMORY[0x28223BE20](v19), v20 = sub_232C0A5F8()))
      {

        return 1;
      }

      else
      {
        MEMORY[0x28223BE20](v20);
        v18 = sub_232C0A5F8();
      }

      return v18;
    }

    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_232B76038()
{
  sub_232B35110();
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v0);
  sub_232B20704();
  sub_232BA6FF8();
  v1 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v2 = sub_232BA1978(0xD000000000000024, 0x8000000232D05910, 0);
  v3 = sub_232BA648C();
  v4 = MEMORY[0x238391CC0](v3);
  if (v2 && (v5 = v4, v6 = v2, sub_232BA648C(), v7 = sub_232CE9D20(), v8 = [v6 firstMatchInString:v7 options:0 range:{0, v5}], v6, v7, v8))
  {
    [v8 rangeAtIndex_];
    sub_232CEA110();
    if (v9)
    {
    }

    else
    {
      v18 = sub_232CE9FB0();
      MEMORY[0x238391B80](v18);

      sub_232B48080();
      sub_232BA63D0();
      sub_232CEA3B0();
    }
  }

  else
  {
    sub_232CE9A20();

    v10 = sub_232CE9A00();
    v11 = sub_232CEA1A0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v12 = 136642819;
      v13 = sub_232BA648C();
      *(v12 + 4) = sub_232BAD2D4(v13, v14, v15);
      _os_log_impl(&dword_232B02000, v10, v11, "DUAdapterPostProcessing: Regex match failed on text: %{sensitive}s", v12, 0xCu);
      sub_232B2040C(v19);
      sub_232BA6A84();
      sub_232BA6A84();
    }

    v16 = sub_232BA5C94();
    v17(v16);
  }

  sub_232BA648C();
  sub_232B20A00();
}

void sub_232B76328()
{
  sub_232B35110();
  v1 = v0;
  v248 = v3;
  v249 = v2;
  v244 = v4;
  v247 = v5;
  sub_232CE8E80();
  sub_232B48F0C();
  v238 = v7;
  v239 = v6;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v235 = v9 - v8;
  sub_232B554F0();
  sub_232CE8E90();
  sub_232B48F0C();
  v236 = v11;
  v237 = v10;
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v234 = v13 - v12;
  v14 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v15 = sub_232B2D120(v14);
  MEMORY[0x28223BE20](v15);
  sub_232B3516C();
  sub_232B55424();
  MEMORY[0x28223BE20](v16);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v17);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v18);
  sub_232B20628();
  v240 = v19;
  sub_232B20600();
  MEMORY[0x28223BE20](v20);
  sub_232B20628();
  v241 = v21;
  sub_232B20600();
  MEMORY[0x28223BE20](v22);
  sub_232B20628();
  v232 = v23;
  sub_232B20600();
  MEMORY[0x28223BE20](v24);
  v26 = v228 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v228 - v28;
  MEMORY[0x28223BE20](v30);
  sub_232B55558();
  v246 = v31;
  sub_232B554F0();
  v32 = sub_232CE8F00();
  sub_232B48F0C();
  v243 = v33;
  MEMORY[0x28223BE20](v34);
  sub_232B20704();
  v37 = v36 - v35;
  sub_232CE8D10();
  sub_232B48F0C();
  v242 = v38;
  MEMORY[0x28223BE20](v39);
  sub_232B3516C();
  sub_232B55424();
  MEMORY[0x28223BE20](v40);
  sub_232B20628();
  sub_232B55424();
  MEMORY[0x28223BE20](v41);
  sub_232B20628();
  v245 = v42;
  sub_232B20600();
  MEMORY[0x28223BE20](v43);
  sub_232CE9A30();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v44);
  sub_232B3516C();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  MEMORY[0x28223BE20](v49);
  MEMORY[0x28223BE20](v50);
  MEMORY[0x28223BE20](v51);
  v53 = v228 - v52;
  MEMORY[0x28223BE20](v54);
  v58 = v228 - v57;
  v233 = v1;
  v250 = v55;
  v251 = v59;
  if (v1 > 1u)
  {

    goto LABEL_9;
  }

  sub_232BA626C(v55, v56);
  v60 = sub_232CEA750();

  if (v60)
  {
LABEL_9:
    sub_232CE9A20();
    v82 = sub_232CE9A00();
    v83 = sub_232CEA1A0();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = sub_232BA73DC();
      *v84 = 0;
      _os_log_impl(&dword_232B02000, v82, v83, "DUAdapterPostProcessing (checkReceivedDateExtractedDateRelationship): No enforced relationship between received date and extracted date.", v84, 2u);
      sub_232BA6A84();
    }

    sub_232BA6CF8();
    v85(v58);
    goto LABEL_15;
  }

  v61 = v249;
  if (!v249 || !v248)
  {
    sub_232CE9A20();
    v86 = sub_232CE9A00();
    v87 = sub_232CEA1A0();
    if (sub_232BA6EB8(v87))
    {
      *sub_232BA73DC() = 0;
      sub_232BA6138();
      _os_log_impl(v88, v89, v90, v91, v92, 2u);
      sub_232BA66EC();
    }

    (*(v251 + 8))(v47, v250);
    goto LABEL_15;
  }

  v62 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v63 = sub_232CE9D20();
  v64 = sub_232BA71DC();
  [v64 v65];

  v66 = v61;
  v67 = sub_232CE9D20();
  v228[1] = v62;
  v68 = sub_232BA69D8();
  v70 = [v68 v69];

  if (!v70)
  {
    sub_232CE9A20();

    v93 = sub_232CE9A00();
    v94 = sub_232CEA1A0();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v252 = v96;
      *v95 = 136642819;
      *(v95 + 4) = sub_232BAD2D4(v247, v66, &v252);
      sub_232BA6138();
      _os_log_impl(v97, v98, v99, v100, v101, 0xCu);
      sub_232B2040C(v96);
      sub_232BA6A84();
      sub_232BA66EC();
    }

    sub_232BA6D70();
    (*(v251 + 8))(v53, v250);
    goto LABEL_15;
  }

  sub_232CE8CF0();

  v71 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v72 = sub_232CE9D20();
  v73 = sub_232BA71DC();
  [v73 v74];

  sub_232CE8EF0();
  v75 = sub_232CE8ED0();
  (*(v243 + 8))(v37, v32);
  v76 = sub_232BA71DC();
  [v76 v77];

  v78 = sub_232CE9D20();
  v249 = v71;
  v79 = sub_232BA69D8();
  v81 = [v79 v80];

  if (v81)
  {
    sub_232CE8CF0();
  }

  v102 = v228[5];
  v103 = v246;
  sub_232BA65D4();
  sub_232B12504(v104, v105, v106, v107);
  sub_232BA4BBC(v29, v103);
  sub_232BA62B0();
  sub_232B2036C(v108, v109, v110, &qword_232CF6D30);
  v111 = v102;
  LODWORD(v102) = sub_232B12480(v26, 1, v102);
  v112 = sub_232B2080C();
  sub_232BA4D50(v112, v113, &qword_232CF6D30);
  if (v102 == 1)
  {
    v114 = sub_232BA6194();
    v115 = v249;
    [v249 &off_2789A82E0 + 3];

    sub_232BA678C();
    v116 = sub_232CE9D20();
    v117 = [v115 dateFromString_];

    if (v117)
    {
      sub_232CE8CF0();
    }

    v118 = v111;
    v119 = v241;
    sub_232BA4D50(v103, &qword_27DDC6A80, &qword_232CF6D30);
    sub_232BA65D4();
    sub_232B12504(v121, v122, v123, v124);
    v125 = sub_232B41C8C();
    sub_232BA4BBC(v125, v126);
    v120 = v242;
  }

  else
  {
    v118 = v111;
    v119 = v241;
    v120 = v242;
  }

  v127 = sub_232BA67F4();
  sub_232B2036C(v127, v128, v129, v130);
  sub_232B351B0(v119, 1, v118);
  if (v131)
  {
    sub_232BA4D50(v119, &qword_27DDC6A80, &qword_232CF6D30);
    v132 = v228[4];
    sub_232CE9A20();

    v133 = sub_232CE9A00();
    v134 = sub_232CEA1A0();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = v103;
      v137 = swift_slowAlloc();
      v252 = v137;
      *v135 = 136642819;
      v138 = sub_232BA678C();
      *(v135 + 4) = sub_232BAD2D4(v138, v139, v140);
      sub_232BA6138();
      _os_log_impl(v141, v142, v143, v144, v145, 0xCu);
      sub_232B2040C(v137);
      sub_232BA6A84();
      sub_232BA66EC();

      sub_232BA6D70();
      sub_232BA6CF8();
      v146(v132);
      v147 = v136;
    }

    else
    {

      sub_232BA6D70();
      sub_232BA6CF8();
      v149(v132);
      v147 = v103;
    }

    sub_232BA4D50(v147, &qword_27DDC6A80, &qword_232CF6D30);
    (*(v120 + 8))(v228[6], v118);
    goto LABEL_15;
  }

  v148 = *(v120 + 32);
  v148(v245, v119, v118);
  if (v233)
  {
  }

  else
  {
    v150 = sub_232CEA750();

    if ((v150 & 1) == 0)
    {

      v190 = v234;
      sub_232CE8E50();
      (*(v238 + 104))(v235, *MEMORY[0x277CC9980], v239);
      v191 = v230;
      sub_232CE8E40();
      v192 = sub_232BA678C();
      v193(v192);
      (*(v236 + 8))(v190, v237);
      v194 = v191;
      v195 = v229;
      sub_232B2036C(v194, v229, &qword_27DDC6A80, &qword_232CF6D30);
      sub_232B351B0(v195, 1, v118);
      if (v131)
      {
        sub_232BA4D50(v195, &qword_27DDC6A80, &qword_232CF6D30);
      }

      else
      {
        v196 = sub_232BA7160();
        (v148)(v196);
        sub_232BA61F8();
        sub_232BA4DA4(v197, v198, MEMORY[0x277CC9590]);
        v199 = sub_232CE9CE0();
        v200 = *(v120 + 8);
        v201 = sub_232BA5ED4();
        v200(v201);
        if ((v199 & 1) == 0)
        {
          sub_232BA6D70();

          sub_232BA62B0();
          sub_232BA4D50(v220, v221, v222);
          v223 = sub_232BA716C();
          v200(v223);
          sub_232BA62B0();
          sub_232BA4D50(v224, v225, v226);
          v227 = sub_232BA64F4();
          v200(v227);
          goto LABEL_15;
        }
      }

      v202 = v228[2];
      sub_232CE9A20();
      v203 = sub_232CE9A00();
      v204 = sub_232CEA1A0();
      if (sub_232BA6EB8(v204))
      {
        *sub_232BA73DC() = 0;
        sub_232BA6138();
        _os_log_impl(v205, v206, v207, v208, v209, 2u);
        sub_232BA66EC();
      }

      sub_232BA6D70();
      sub_232BA6CF8();
      v210(v202);
      sub_232BA62B0();
      sub_232BA4D50(v211, v212, v213);
      v214 = *(v120 + 8);
      v215 = sub_232BA716C();
      v214(v215);
      sub_232BA62B0();
      sub_232BA4D50(v216, v217, v218);
      v219 = sub_232BA64F4();
      v214(v219);
      goto LABEL_15;
    }
  }

  v151 = v120;
  v152 = v234;
  sub_232CE8E50();
  v153 = v238;
  v154 = v239;
  v155 = v235;
  (*(v238 + 104))(v235, *MEMORY[0x277CC9980], v239);
  v156 = v240;
  sub_232BA648C();
  sub_232CE8E40();
  (*(v153 + 8))(v155, v154);
  (*(v236 + 8))(v152, v237);
  v157 = v231;
  sub_232B2036C(v156, v231, &qword_27DDC6A80, &qword_232CF6D30);
  sub_232B351B0(v157, 1, v118);
  if (v131)
  {
    sub_232BA4D50(v157, &qword_27DDC6A80, &qword_232CF6D30);
  }

  else
  {
    v158 = sub_232BA7160();
    (v148)(v158);
    sub_232BA61F8();
    sub_232BA4DA4(v159, v160, MEMORY[0x277CC9590]);
    v161 = sub_232CE9CE0();
    v162 = *(v151 + 8);
    v163 = sub_232BA5ED4();
    v162(v163);
    if ((v161 & 1) == 0)
    {
      sub_232BA6D70();

      sub_232BA62B0();
      sub_232BA4D50(v182, v183, v184);
      v185 = sub_232BA716C();
      v162(v185);
      sub_232BA62B0();
      sub_232BA4D50(v186, v187, v188);
      v189 = sub_232BA64F4();
      v162(v189);
      goto LABEL_15;
    }
  }

  v164 = v228[3];
  sub_232CE9A20();
  v165 = sub_232CE9A00();
  v166 = sub_232CEA1A0();
  if (sub_232BA6EB8(v166))
  {
    *sub_232BA73DC() = 0;
    sub_232BA6138();
    _os_log_impl(v167, v168, v169, v170, v171, 2u);
    sub_232BA66EC();
  }

  sub_232BA6D70();
  sub_232BA6CF8();
  v172(v164);
  sub_232BA62B0();
  sub_232BA4D50(v173, v174, v175);
  v176 = *(v151 + 8);
  v177 = sub_232BA716C();
  v176(v177);
  sub_232BA62B0();
  sub_232BA4D50(v178, v179, v180);
  v181 = sub_232BA64F4();
  v176(v181);
LABEL_15:
  sub_232B20A00();
}

uint64_t sub_232B77394(char a1)
{
  if (!a1)
  {
    return 0x65726F666562;
  }

  if (a1 == 1)
  {
    return 0x7265746661;
  }

  return 1701736302;
}

unint64_t sub_232B773DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_232B72524(a1, a2, 0);
  if (!v11)
  {
    v26 = 0;
    return v26 & 1;
  }

  v12 = v10;
  v13 = v11;

  v14 = sub_232B77D44(2uLL, v12, v13);
  MEMORY[0x238391B80](v14);

  result = sub_232B72524(a3, a4, 0);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    result = 48;
    v17 = 0xE100000000000000;
  }

  v18 = HIBYTE(v17) & 0xF;
  v19 = result & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v20 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    v42 = 0;
    goto LABEL_71;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    goto LABEL_80;
  }

  if ((v17 & 0x2000000000000000) != 0)
  {
    v52 = result;
    v53 = v17 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v18)
      {
        if (--v18)
        {
          v22 = 0;
          v33 = &v52 + 1;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            ++v33;
            if (!--v18)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }
    }

    else
    {
      if (result != 45)
      {
        if (v18)
        {
          v22 = 0;
          v38 = &v52;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              break;
            }

            v40 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v40 + v39;
            if (__OFADD__(v40, v39))
            {
              break;
            }

            v38 = (v38 + 1);
            if (!--v18)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

      if (v18)
      {
        if (--v18)
        {
          v22 = 0;
          v27 = &v52 + 1;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v18)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if ((result & 0x1000000000000000) == 0)
  {
    goto LABEL_82;
  }

  for (result = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = sub_232CEA550())
  {
    v21 = *result;
    if (v21 == 43)
    {
      if (v19 < 1)
      {
        goto LABEL_85;
      }

      v18 = v19 - 1;
      if (v19 == 1)
      {
        goto LABEL_66;
      }

      v22 = 0;
      if (result)
      {
        v30 = (result + 1);
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            goto LABEL_66;
          }

          v32 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            goto LABEL_66;
          }

          v22 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            goto LABEL_66;
          }

          ++v30;
          if (!--v18)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else if (v21 == 45)
    {
      if (v19 < 1)
      {
        __break(1u);
        goto LABEL_84;
      }

      v18 = v19 - 1;
      if (v19 == 1)
      {
        goto LABEL_66;
      }

      v22 = 0;
      if (result)
      {
        v23 = (result + 1);
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v18)
          {
            goto LABEL_67;
          }
        }

LABEL_66:
        v22 = 0;
        LOBYTE(v18) = 1;
        goto LABEL_67;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_66;
      }

      v22 = 0;
      if (result)
      {
        do
        {
          v36 = *result - 48;
          if (v36 > 9)
          {
            goto LABEL_66;
          }

          v37 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            goto LABEL_66;
          }

          v22 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            goto LABEL_66;
          }

          ++result;
        }

        while (--v19);
      }
    }

    LOBYTE(v18) = 0;
LABEL_67:
    for (i = v18; ; i = v51)
    {

      v42 = (i & 1) != 0 ? 0 : v22;
LABEL_71:
      v52 = 32;
      v53 = 0xE100000000000000;
      v43 = sub_232CEA720();
      MEMORY[0x238391C30](v43);

      v17 = &v52;
      result = MEMORY[0x238391C30](32, 0xE100000000000000);
      if (!__OFADD__(v42, 1))
      {
        break;
      }

      __break(1u);
LABEL_80:
      v22 = sub_232BA2B04(result, v17, 10);
    }

    v44 = sub_232CEA720();
    MEMORY[0x238391C30](v44);

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (!__OFSUB__(v42, 1))
    {
      break;
    }

    __break(1u);
LABEL_82:
    ;
  }

  v45 = sub_232CEA720();
  MEMORY[0x238391C30](v45);

  v46 = v52;
  v47 = v53;
  v52 = a5;
  v53 = a6;

  MEMORY[0x238391C30](v46, v47);

  sub_232B714B8();
  v49 = v48;

  if (v49)
  {
    v26 = 1;
  }

  else
  {
    sub_232B714B8();
    v26 = v50;
  }

  return v26 & 1;
}

void sub_232B778E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_232B72C9C();
  if (!v9)
  {
    return;
  }

  v10 = v8;
  v11 = v9;
  v48 = a5;

  v12 = sub_232B77D44(2uLL, v10, v11);
  MEMORY[0x238391B80](v12);

  sub_232B72C9C();
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 48;
    v15 = 0xE100000000000000;
  }

  v16 = HIBYTE(v15) & 0xF;
  v17 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    v38 = 0;
    goto LABEL_78;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_85;
  }

  if ((v15 & 0x2000000000000000) == 0)
  {
    if ((v13 & 0x1000000000000000) == 0)
    {
      goto LABEL_87;
    }

    for (i = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_232CEA550())
    {
      v20 = *i;
      if (v20 == 43)
      {
        if (v17 < 1)
        {
          goto LABEL_90;
        }

        if (v17 == 1)
        {
          goto LABEL_73;
        }

        v21 = 0;
        if (i)
        {
          while (1)
          {
            sub_232BA6100();
            if (!v23 & v22)
            {
              goto LABEL_73;
            }

            sub_232BA5BE8();
            if (!v23)
            {
              goto LABEL_73;
            }

            v21 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_73;
            }

            sub_232BA6CA4();
            if (v23)
            {
              goto LABEL_74;
            }
          }
        }
      }

      else if (v20 == 45)
      {
        if (v17 < 1)
        {
          __break(1u);
          goto LABEL_89;
        }

        if (v17 == 1)
        {
          goto LABEL_73;
        }

        v21 = 0;
        if (i)
        {
          while (1)
          {
            sub_232BA6100();
            if (!v23 & v22)
            {
              break;
            }

            sub_232BA5BE8();
            if (!v23)
            {
              break;
            }

            v21 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              break;
            }

            sub_232BA6CA4();
            if (v23)
            {
              goto LABEL_74;
            }
          }

LABEL_73:
          v21 = 0;
          v26 = 1;
          goto LABEL_74;
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_73;
        }

        v21 = 0;
        if (i)
        {
          do
          {
            v33 = *i - 48;
            if (v33 > 9)
            {
              goto LABEL_73;
            }

            v34 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              goto LABEL_73;
            }

            v21 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_73;
            }

            ++i;
          }

          while (--v17);
        }
      }

      v26 = 0;
LABEL_74:
      for (j = v26; ; j = v47)
      {

        v38 = (j & 1) != 0 ? 0 : v21;
LABEL_78:
        v49 = 32;
        v50 = 0xE100000000000000;
        v39 = sub_232CEA720();
        MEMORY[0x238391C30](v39);

        v15 = &v49;
        v40 = sub_232BA7218();
        v13 = MEMORY[0x238391C30](v40);
        if (!__OFADD__(v38, 1))
        {
          break;
        }

        __break(1u);
LABEL_85:
        v21 = sub_232BA2B04(v13, v15, 10);
      }

      v41 = sub_232CEA720();
      MEMORY[0x238391C30](v41);

      v42 = sub_232BA7218();
      MEMORY[0x238391C30](v42);
      if (!__OFSUB__(v38, 1))
      {
        v43 = sub_232CEA720();
        MEMORY[0x238391C30](v43);

        v44 = v49;
        v45 = v50;
        v49 = v48;
        v50 = a6;

        MEMORY[0x238391C30](v44, v45);

        sub_232B714B8();
        LOBYTE(v44) = v46;

        if ((v44 & 1) == 0)
        {
          sub_232B714B8();
        }

        return;
      }

      __break(1u);
LABEL_87:
      ;
    }
  }

  v49 = v13;
  v50 = v15 & 0xFFFFFFFFFFFFFFLL;
  if (v13 == 43)
  {
    if (v16)
    {
      if (v16 != 1)
      {
        sub_232BA7018();
        while (1)
        {
          sub_232BA6100();
          if (!v23 & v22)
          {
            break;
          }

          sub_232BA5BE8();
          if (!v23)
          {
            break;
          }

          v21 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          sub_232BA6CA4();
          if (v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }
  }

  else
  {
    if (v13 != 45)
    {
      if (v16)
      {
        while (1)
        {
          sub_232BA6100();
          if (!v23 & v22)
          {
            break;
          }

          sub_232BA5BE8();
          if (!v23)
          {
            break;
          }

          v21 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          sub_232BA6CA4();
          if (v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v16)
    {
      if (v16 != 1)
      {
        sub_232BA7018();
        while (1)
        {
          sub_232BA6100();
          if (!v23 & v22)
          {
            break;
          }

          sub_232BA5BE8();
          if (!v23)
          {
            break;
          }

          v21 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          sub_232BA6CA4();
          if (v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_232B77D44(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v4 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_232CE9E80();
    if (v5)
    {
      result = 15;
    }

    if (4 * v4 >= result >> 14)
    {
      sub_232CE9FB0();
      sub_232BA69E4();

      return a2;
    }
  }

  __break(1u);
  return result;
}

void sub_232B77E18()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE8D10();
  sub_232B48F0C();
  v53 = v5;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v9 = v8 - v7;
  sub_232CE8E10();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v11 = sub_232CE9C60();
  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_232BA5CC4();
  sub_232CE8D50();
  v13 = sub_232CE8DA0();
  v14 = sub_232BA7160();
  v15(v14);
  [v12 setLocale_];

  v16 = v1;
  if (!v1 || (sub_232BA7178(), !v17))
  {

LABEL_16:
    sub_232BA6074();
    sub_232B20A00();
    return;
  }

  v18 = v3;
  v55 = v11;
  v56 = v12;
  v51 = v4;
  v52 = v9;
  v19 = 0;
  v20 = v11 + 64;
  v21 = 1 << *(v11 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v11 + 64);
  v24 = (v21 + 63) >> 6;
  if (v23)
  {
    while (1)
    {
      v25 = v19;
LABEL_10:
      v26 = (*(v11 + 56) + ((v25 << 10) | (16 * __clz(__rbit64(v23)))));
      v27 = v26[1];
      v54 = *v26;
      swift_bridgeObjectRetain_n();

      v28 = sub_232CE9D20();

      [v56 setDateFormat_];

      v29 = v18;
      v30 = v16;
      v31 = sub_232CE9D20();
      v32 = sub_232BA6974();
      v34 = [v32 v33];

      if (v34)
      {
        break;
      }

      v23 &= v23 - 1;

      v19 = v25;
      v11 = v55;
      v16 = v30;
      v18 = v29;
      if (!v23)
      {
        goto LABEL_7;
      }
    }

    sub_232CE8CF0();

    v35 = sub_232BA6194();
    v36 = sub_232BA71D0();
    [v36 v37];

    v38 = sub_232CE8CD0();
    v39 = sub_232BA71D0();
    v41 = [v39 v40];

    sub_232CE9D50();
    sub_232BA6798();

    sub_232BA702C();
    v42 = sub_232CE9D20();
    v43 = sub_232BA71D0();
    [v43 v44];

    v45 = sub_232CE8CD0();
    v46 = sub_232BA71D0();
    v48 = [v46 v47];

    sub_232CE9D50();
    v49 = v54 == 0x656D695465746164 && v27 == 0xE800000000000000;
    if (v49 || (sub_232CEA750() & 1) != 0)
    {
      (*(v53 + 8))(v52, v51);
    }

    else
    {
      if (v54 != 1702125924 || v27 != 0xE400000000000000)
      {
        sub_232CEA750();
      }

      (*(v53 + 8))(v52, v51);
    }

    goto LABEL_16;
  }

LABEL_7:
  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      goto LABEL_16;
    }

    v23 = *(v20 + 8 * v25);
    ++v19;
    if (v23)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_232B7836C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, char a8)
{
  v63 = a7;
  v60 = a3;
  v61 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_232CE9A30();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  sub_232B76038();
  v62 = v25;
  v27 = v26;
  if (a8)
  {
    v28 = sub_232B71944(v23, v24);

    if ((v28 & 1) == 0)
    {

      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v29, v30, v32, v31, 2u);
        MEMORY[0x238393870](v31, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v33 = sub_232B66C40(a1, a2, a5, a6, &unk_28480D678);
  v35 = v34;
  sub_232B7BB28();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_232BA4D50(v15, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v37 & 1) == 0)
  {

    v39 = sub_232B72524(v33, v35, 1);
    v41 = v42;
  }

  v43 = sub_232B66C40(v60, v61, a5, a6, &unk_28480D6A0);
  v45 = v44;
  sub_232B7BE08();
  v48 = v47;
  if (v49)
  {
    v50 = v46;
  }

  else
  {

    v50 = sub_232B72524(v43, v45, 2);
    v48 = v51;
  }

  v53 = sub_232B7C26C(v52, v39, v41, v50, v48);

  v54 = v62;
  sub_232B76328();
  if ((v55 & 1) == 0)
  {

    v22 = v59;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v56 = sub_232B773DC(v39, v41, v54, v27, a5, a6);

  if ((v56 & 1) == 0)
  {

    v22 = v58;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v64 + 8))(v22, v65);
    return 0;
  }

  return v53;
}

uint64_t sub_232B787F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, char a8)
{
  v63 = a7;
  v60 = a3;
  v61 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_232CE9A30();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  sub_232B76038();
  v62 = v25;
  v27 = v26;
  if (a8)
  {
    v28 = sub_232B71944(v23, v24);

    if ((v28 & 1) == 0)
    {

      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v29, v30, v32, v31, 2u);
        MEMORY[0x238393870](v31, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v33 = sub_232B679D8(a1, a2, a5, a6, &unk_28480D910);
  v35 = v34;
  sub_232B7BB28();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_232BA4D50(v15, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v37 & 1) == 0)
  {

    v39 = sub_232B72524(v33, v35, 1);
    v41 = v42;
  }

  v43 = sub_232B679D8(v60, v61, a5, a6, &unk_28480D938);
  v45 = v44;
  sub_232B7BE08();
  v48 = v47;
  if (v49)
  {
    v50 = v46;
  }

  else
  {

    v50 = sub_232B72524(v43, v45, 2);
    v48 = v51;
  }

  v53 = sub_232B7C26C(v52, v39, v41, v50, v48);

  v54 = v62;
  sub_232B76328();
  if ((v55 & 1) == 0)
  {

    v22 = v59;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v56 = sub_232B773DC(v39, v41, v54, v27, a5, a6);

  if ((v56 & 1) == 0)
  {

    v22 = v58;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v64 + 8))(v22, v65);
    return 0;
  }

  return v53;
}

uint64_t sub_232B78C74(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, char a8)
{
  v63 = a7;
  v60 = a3;
  v61 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_232CE9A30();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  sub_232B76038();
  v62 = v25;
  v27 = v26;
  if (a8)
  {
    v28 = sub_232B71944(v23, v24);

    if ((v28 & 1) == 0)
    {

      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v29, v30, v32, v31, 2u);
        MEMORY[0x238393870](v31, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v33 = sub_232B68770(a1, a2, a5, a6, &unk_28480DCE8);
  v35 = v34;
  sub_232B7BB28();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_232BA4D50(v15, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v37 & 1) == 0)
  {

    v39 = sub_232B72524(v33, v35, 1);
    v41 = v42;
  }

  v43 = sub_232B68770(v60, v61, a5, a6, &unk_28480DD10);
  v45 = v44;
  sub_232B7BE08();
  v48 = v47;
  if (v49)
  {
    v50 = v46;
  }

  else
  {

    v50 = sub_232B72524(v43, v45, 2);
    v48 = v51;
  }

  v53 = sub_232B7C26C(v52, v39, v41, v50, v48);

  v54 = v62;
  sub_232B76328();
  if ((v55 & 1) == 0)
  {

    v22 = v59;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v56 = sub_232B773DC(v39, v41, v54, v27, a5, a6);

  if ((v56 & 1) == 0)
  {

    v22 = v58;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v64 + 8))(v22, v65);
    return 0;
  }

  return v53;
}

uint64_t sub_232B790F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, char a8)
{
  v63 = a7;
  v60 = a3;
  v61 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_232CE9A30();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  sub_232B76038();
  v62 = v25;
  v27 = v26;
  if (a8)
  {
    v28 = sub_232B71944(v23, v24);

    if ((v28 & 1) == 0)
    {

      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v29, v30, v32, v31, 2u);
        MEMORY[0x238393870](v31, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v33 = sub_232B69508(a1, a2, a5, a6, &unk_28480DF58);
  v35 = v34;
  sub_232B7BB28();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_232BA4D50(v15, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v37 & 1) == 0)
  {

    v39 = sub_232B72524(v33, v35, 1);
    v41 = v42;
  }

  v43 = sub_232B69508(v60, v61, a5, a6, &unk_28480DF80);
  v45 = v44;
  sub_232B7BE08();
  v48 = v47;
  if (v49)
  {
    v50 = v46;
  }

  else
  {

    v50 = sub_232B72524(v43, v45, 2);
    v48 = v51;
  }

  v53 = sub_232B7C26C(v52, v39, v41, v50, v48);

  v54 = v62;
  sub_232B76328();
  if ((v55 & 1) == 0)
  {

    v22 = v59;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v56 = sub_232B773DC(v39, v41, v54, v27, a5, a6);

  if ((v56 & 1) == 0)
  {

    v22 = v58;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v64 + 8))(v22, v65);
    return 0;
  }

  return v53;
}

uint64_t sub_232B7957C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v59 = a7;
  v56 = a3;
  v57 = a4;
  v11 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v14 = sub_232CE9A30();
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x28223BE20](v14);
  v54 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v55 = &v54 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  sub_232B76038();
  v58 = v23;
  v25 = v24;
  if (a8)
  {
    sub_232B71B98(v21, v22, sub_232B75A0C);
    v27 = v26;

    if ((v27 & 1) == 0)
    {

      sub_232CE9A20();
      v28 = sub_232CE9A00();
      v29 = sub_232CEA1A0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v28, v29, v31, v30, 2u);
        MEMORY[0x238393870](v30, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  sub_232B6A2A0();
  sub_232B7BB28();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_232BA4D50(v13, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v33 & 1) == 0)
  {

    sub_232B72C9C();
    v35 = v38;
    v37 = v39;
  }

  sub_232B6A2A0();
  sub_232B7BE08();
  v42 = v41;
  if (v43)
  {
    v44 = v40;
  }

  else
  {

    sub_232B72C9C();
    v44 = v45;
    v42 = v46;
  }

  v48 = sub_232B7C26C(v47, v35, v37, v44, v42);

  v49 = v58;
  sub_232B76328();
  if ((v50 & 1) == 0)
  {

    v20 = v55;
    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_232B778E0(v35, v37, v49, v25, a5, a6);
  v52 = v51;

  if ((v52 & 1) == 0)
  {

    v20 = v54;
    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v60 + 8))(v20, v61);
    return 0;
  }

  return v48;
}

uint64_t sub_232B79AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8)
{
  v59 = a7;
  v56 = a3;
  v57 = a4;
  v11 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v14 = sub_232CE9A30();
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x28223BE20](v14);
  v54 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v55 = &v54 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  sub_232B76038();
  v58 = v23;
  v25 = v24;
  if (a8)
  {
    sub_232B71B98(v21, v22, sub_232B75A0C);
    v27 = v26;

    if ((v27 & 1) == 0)
    {

      sub_232CE9A20();
      v28 = sub_232CE9A00();
      v29 = sub_232CEA1A0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v28, v29, v31, v30, 2u);
        MEMORY[0x238393870](v30, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  sub_232B6A2A0();
  sub_232B7BB28();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_232BA4D50(v13, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v33 & 1) == 0)
  {

    sub_232B72C9C();
    v35 = v38;
    v37 = v39;
  }

  sub_232B6A2A0();
  sub_232B7BE08();
  v42 = v41;
  if (v43)
  {
    v44 = v40;
  }

  else
  {

    sub_232B72C9C();
    v44 = v45;
    v42 = v46;
  }

  v48 = sub_232B7C26C(v47, v35, v37, v44, v42);

  v49 = v58;
  sub_232B76328();
  if ((v50 & 1) == 0)
  {

    v20 = v55;
    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_232B778E0(v35, v37, v49, v25, a5, a6);
  v52 = v51;

  if ((v52 & 1) == 0)
  {

    v20 = v54;
    sub_232CE9A20();
    v28 = sub_232CE9A00();
    v29 = sub_232CEA1A0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v60 + 8))(v20, v61);
    return 0;
  }

  return v48;
}

uint64_t sub_232B7A00C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, char a8)
{
  v63 = a7;
  v60 = a3;
  v61 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_232CE9A30();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  sub_232B76038();
  v62 = v25;
  v27 = v26;
  if (a8)
  {
    v28 = sub_232B71944(v23, v24);

    if ((v28 & 1) == 0)
    {

      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v29, v30, v32, v31, 2u);
        MEMORY[0x238393870](v31, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v33 = sub_232B6ADF8(a1, a2, a5, a6, &unk_28480E630);
  v35 = v34;
  sub_232B7BB28();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_232BA4D50(v15, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v37 & 1) == 0)
  {

    v39 = sub_232B72524(v33, v35, 1);
    v41 = v42;
  }

  v43 = sub_232B6ADF8(v60, v61, a5, a6, &unk_28480E658);
  v45 = v44;
  sub_232B7BE08();
  v48 = v47;
  if (v49)
  {
    v50 = v46;
  }

  else
  {

    v50 = sub_232B72524(v43, v45, 2);
    v48 = v51;
  }

  v53 = sub_232B7C26C(v52, v39, v41, v50, v48);

  v54 = v62;
  sub_232B76328();
  if ((v55 & 1) == 0)
  {

    v22 = v59;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v56 = sub_232B773DC(v39, v41, v54, v27, a5, a6);

  if ((v56 & 1) == 0)
  {

    v22 = v58;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v64 + 8))(v22, v65);
    return 0;
  }

  return v53;
}

uint64_t sub_232B7A490(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, char a8)
{
  v63 = a7;
  v60 = a3;
  v61 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_232CE9A30();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  sub_232B76038();
  v62 = v25;
  v27 = v26;
  if (a8)
  {
    v28 = sub_232B71944(v23, v24);

    if ((v28 & 1) == 0)
    {

      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v29, v30, v32, v31, 2u);
        MEMORY[0x238393870](v31, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v33 = sub_232B6BB90(a1, a2, a5, a6, &unk_28480E7B0);
  v35 = v34;
  sub_232B7BB28();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_232BA4D50(v15, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v37 & 1) == 0)
  {

    v39 = sub_232B72524(v33, v35, 1);
    v41 = v42;
  }

  v43 = sub_232B6BB90(v60, v61, a5, a6, &unk_28480E7D8);
  v45 = v44;
  sub_232B7BE08();
  v48 = v47;
  if (v49)
  {
    v50 = v46;
  }

  else
  {

    v50 = sub_232B72524(v43, v45, 2);
    v48 = v51;
  }

  v53 = sub_232B7C26C(v52, v39, v41, v50, v48);

  v54 = v62;
  sub_232B76328();
  if ((v55 & 1) == 0)
  {

    v22 = v59;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v56 = sub_232B773DC(v39, v41, v54, v27, a5, a6);

  if ((v56 & 1) == 0)
  {

    v22 = v58;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v64 + 8))(v22, v65);
    return 0;
  }

  return v53;
}

uint64_t sub_232B7A914(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, char a8)
{
  v63 = a7;
  v60 = a3;
  v61 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_232CE9A30();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  sub_232B76038();
  v62 = v25;
  v27 = v26;
  if (a8)
  {
    v28 = sub_232B71944(v23, v24);

    if ((v28 & 1) == 0)
    {

      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v29, v30, v32, v31, 2u);
        MEMORY[0x238393870](v31, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v33 = sub_232B6C928(a1, a2, a5, a6, &unk_28480EA20);
  v35 = v34;
  sub_232B7BB28();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_232BA4D50(v15, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v37 & 1) == 0)
  {

    v39 = sub_232B72524(v33, v35, 1);
    v41 = v42;
  }

  v43 = sub_232B6C928(v60, v61, a5, a6, &unk_28480EA48);
  v45 = v44;
  sub_232B7BE08();
  v48 = v47;
  if (v49)
  {
    v50 = v46;
  }

  else
  {

    v50 = sub_232B72524(v43, v45, 2);
    v48 = v51;
  }

  v53 = sub_232B7C26C(v52, v39, v41, v50, v48);

  v54 = v62;
  sub_232B76328();
  if ((v55 & 1) == 0)
  {

    v22 = v59;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v56 = sub_232B773DC(v39, v41, v54, v27, a5, a6);

  if ((v56 & 1) == 0)
  {

    v22 = v58;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v64 + 8))(v22, v65);
    return 0;
  }

  return v53;
}

uint64_t sub_232B7AD98(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, char a8)
{
  v63 = a7;
  v60 = a3;
  v61 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_232CE9A30();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  sub_232B76038();
  v62 = v25;
  v27 = v26;
  if (a8)
  {
    v28 = sub_232B71944(v23, v24);

    if ((v28 & 1) == 0)
    {

      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v29, v30, v32, v31, 2u);
        MEMORY[0x238393870](v31, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v33 = sub_232B6D6C0(a1, a2, a5, a6, &unk_28480ECB8);
  v35 = v34;
  sub_232B7BB28();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_232BA4D50(v15, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v37 & 1) == 0)
  {

    v39 = sub_232B72524(v33, v35, 1);
    v41 = v42;
  }

  v43 = sub_232B6D6C0(v60, v61, a5, a6, &unk_28480ECE0);
  v45 = v44;
  sub_232B7BE08();
  v48 = v47;
  if (v49)
  {
    v50 = v46;
  }

  else
  {

    v50 = sub_232B72524(v43, v45, 2);
    v48 = v51;
  }

  v53 = sub_232B7C26C(v52, v39, v41, v50, v48);

  v54 = v62;
  sub_232B76328();
  if ((v55 & 1) == 0)
  {

    v22 = v59;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v56 = sub_232B773DC(v39, v41, v54, v27, a5, a6);

  if ((v56 & 1) == 0)
  {

    v22 = v58;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v64 + 8))(v22, v65);
    return 0;
  }

  return v53;
}

uint64_t sub_232B7B21C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, char a8)
{
  v63 = a7;
  v60 = a3;
  v61 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_232CE9A30();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  sub_232B76038();
  v62 = v25;
  v27 = v26;
  if (a8)
  {
    v28 = sub_232B71944(v23, v24);

    if ((v28 & 1) == 0)
    {

      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v29, v30, v32, v31, 2u);
        MEMORY[0x238393870](v31, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v33 = sub_232B6E458(a1, a2, a5, a6, &unk_28480EE60);
  v35 = v34;
  sub_232B7BB28();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_232BA4D50(v15, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v37 & 1) == 0)
  {

    v39 = sub_232B72524(v33, v35, 1);
    v41 = v42;
  }

  v43 = sub_232B6E458(v60, v61, a5, a6, &unk_28480EE88);
  v45 = v44;
  sub_232B7BE08();
  v48 = v47;
  if (v49)
  {
    v50 = v46;
  }

  else
  {

    v50 = sub_232B72524(v43, v45, 2);
    v48 = v51;
  }

  v53 = sub_232B7C26C(v52, v39, v41, v50, v48);

  v54 = v62;
  sub_232B76328();
  if ((v55 & 1) == 0)
  {

    v22 = v59;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v56 = sub_232B773DC(v39, v41, v54, v27, a5, a6);

  if ((v56 & 1) == 0)
  {

    v22 = v58;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v64 + 8))(v22, v65);
    return 0;
  }

  return v53;
}

uint64_t sub_232B7B6A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7, char a8)
{
  v63 = a7;
  v60 = a3;
  v61 = a4;
  v13 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = sub_232CE9A30();
  v64 = *(v16 - 8);
  v65 = v16;
  MEMORY[0x28223BE20](v16);
  v58 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v58 - v21;
  sub_232B76038();
  v62 = v25;
  v27 = v26;
  if (a8)
  {
    v28 = sub_232B71DC4(v23, v24);

    if ((v28 & 1) == 0)
    {

      sub_232CE9A20();
      v29 = sub_232CE9A00();
      v30 = sub_232CEA1A0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = "DUAdapterPostProcessing: No extraction for DateTime since there are no absolute dates in the document.";
LABEL_17:
        _os_log_impl(&dword_232B02000, v29, v30, v32, v31, 2u);
        MEMORY[0x238393870](v31, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v33 = sub_232B6F1F0(a1, a2, a5, a6, &unk_28480F290);
  v35 = v34;
  sub_232B7BB28();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_232BA4D50(v15, &qword_27DDC6A80, &qword_232CF6D30);
  if ((v37 & 1) == 0)
  {

    v39 = sub_232B72524(v33, v35, 1);
    v41 = v42;
  }

  v43 = sub_232B6F1F0(v60, v61, a5, a6, &unk_28480F2B8);
  v45 = v44;
  sub_232B7BE08();
  v48 = v47;
  if (v49)
  {
    v50 = v46;
  }

  else
  {

    v50 = sub_232B72524(v43, v45, 2);
    v48 = v51;
  }

  v53 = sub_232B7C26C(v52, v39, v41, v50, v48);

  v54 = v62;
  sub_232B76328();
  if ((v55 & 1) == 0)
  {

    v22 = v59;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since received datetime relationship check failed.";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v56 = sub_232B773DC(v39, v41, v54, v27, a5, a6);

  if ((v56 & 1) == 0)
  {

    v22 = v58;
    sub_232CE9A20();
    v29 = sub_232CE9A00();
    v30 = sub_232CEA1A0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = "DUAdapterPostProcessing: No extraction for DateTime since extraction year is not grounded.";
      goto LABEL_17;
    }

LABEL_18:

    (*(v64 + 8))(v22, v65);
    return 0;
  }

  return v53;
}

void sub_232B7BB28()
{
  sub_232B35110();
  v2 = v1;
  v3 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  sub_232B2D120(v3);
  sub_232B2D114();
  MEMORY[0x28223BE20](v4);
  sub_232BA6FF8();
  v5 = sub_232CE8E10();
  sub_232B48F0C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v11 = v10 - v9;
  if (v2)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v13 = sub_232BA6194();
    [v12 setDateFormat_];

    sub_232BA5CC4();
    sub_232CE8D50();
    v14 = sub_232CE8DA0();
    (*(v7 + 8))(v11, v5);
    [v12 setLocale_];

    sub_232CE8EC0();
    v15 = sub_232CE8F00();
    v16 = 0;
    if (sub_232B12480(v0, 1, v15) != 1)
    {
      v16 = sub_232CE8ED0();
      sub_232BA5C58();
      v17 = sub_232BA6074();
      v18(v17);
    }

    [v12 setTimeZone_];

    v19 = sub_232CE9D20();
    v20 = [v12 dateFromString_];

    if (v20)
    {
      sub_232CE8CF0();

      v21 = sub_232CE8CD0();
      v22 = [v12 stringFromDate_];

      sub_232CE9D50();
      sub_232CE8D10();
      sub_232B351FC();
    }

    else
    {

      sub_232CE8D10();
      v23 = sub_232BA5CE4();
    }

    sub_232B12504(v23, v24, v25, v26);
  }

  else
  {
    sub_232CE8D10();
    v27 = sub_232BA5CE4();
    sub_232B12504(v27, v28, v29, v30);
  }

  sub_232B20A00();
}

void sub_232B7BE08()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v4 = sub_232CE8D10();
  sub_232B48F0C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_232B20704();
  v10 = v9 - v8;
  v11 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v11);
  sub_232B2D114();
  MEMORY[0x28223BE20](v12);
  v14 = v57 - v13;
  v15 = sub_232B124A8(&qword_27DDC70B8, &qword_232CF81D0);
  sub_232B2D120(v15);
  sub_232B2D114();
  MEMORY[0x28223BE20](v16);
  v18 = v57 - v17;
  v19 = sub_232CE8E10();
  sub_232B48F0C();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_232B20704();
  v25 = v24 - v23;
  if (v1)
  {
    v57[0] = v10;
    v57[1] = v6;
    v26 = objc_allocWithZone(MEMORY[0x277CCA968]);
    sub_232BA5CA0();

    v27 = [v6 init];
    v28 = sub_232CE9D20();
    [v27 setDateFormat_];

    sub_232BA5CC4();
    sub_232CE8D50();
    v29 = sub_232CE8DA0();
    (*(v21 + 8))(v25, v19);
    [v27 setLocale_];

    sub_232CE8EC0();
    v30 = sub_232CE8F00();
    v31 = 0;
    if (sub_232B12480(v18, 1, v30) != 1)
    {
      v31 = sub_232CE8ED0();
      sub_232BA5C58();
      v32 = sub_232B45AB0();
      v33(v32);
    }

    v34 = sub_232BA6974();
    [v34 v35];

    sub_232BA5E64();
    v36 = sub_232CE9D20();
    v37 = [v27 dateFromString_];

    if (v37)
    {
      sub_232CE8CF0();

      sub_232B351FC();
      sub_232B12504(v38, v39, v40, v4);
      sub_232BA4D50(v14, &qword_27DDC6A80, &qword_232CF6D30);
    }

    else
    {
      sub_232B55484();
      sub_232B12504(v41, v42, v43, v4);
      sub_232BA4D50(v14, &qword_27DDC6A80, &qword_232CF6D30);
      v44 = sub_232CE9D20();
      v45 = sub_232BA6974();
      [v45 v46];

      sub_232BA5E64();
      sub_232CE9D20();
      sub_232BA6D04();

      v47 = [v27 dateFromString_];

      if (v47)
      {
        sub_232CE8CF0();

        sub_232BA702C();
        v48 = sub_232CE9D20();
        v49 = sub_232BA6974();
        [v49 v50];

        v51 = sub_232CE8CD0();
        v52 = sub_232BA6974();
        v54 = [v52 v53];

        sub_232CE9D50();
        sub_232BA5F44();

        v55 = sub_232B5A008();
        v56(v55);
      }

      else
      {
      }
    }
  }

  sub_232BA720C();
  sub_232B20A00();
}

uint64_t sub_232B7C26C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (a5)
    {

      MEMORY[0x238391C30](84, 0xE100000000000000);
      v5 = sub_232B5A008();
      MEMORY[0x238391C30](v5);
    }

    else
    {
    }
  }

  return sub_232BA7230();
}

uint64_t sub_232B7C2EC(uint64_t a1, uint64_t a2)
{
  inited = a2;
  if (!a2)
  {
    return 0;
  }

  objc_opt_self();

  v4 = sub_232CE9D20();

  MEMORY[0x238391CC0](a1, inited);

  if (qword_27DDC6368 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v6 = sub_232BA5E44(v5, sel_scanString_range_configuration_);

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v7 = sub_232CE9FE0();

    v180 = sub_232B26B10();
    if (!v180)
    {
      break;
    }

    v8 = 0;
    v179 = v7 & 0xC000000000000001;
    v176 = v7 & 0xFFFFFFFFFFFFFF8;
    v9 = MEMORY[0x277D84F90];
    v181 = MEMORY[0x277D84F98];
    v175 = v7 + 32;
    v166 = *MEMORY[0x277CCA6E8];
    v165 = *MEMORY[0x277CCA6B0];
    v163 = *MEMORY[0x277CCA6F0];
    v164 = *MEMORY[0x277CCA6E0];
    v162 = *MEMORY[0x277CCA6B8];
    v161 = xmmword_232CF7250;
    v159 = a1;
    v160 = inited;
    v177 = v7;
    while (1)
    {
      if (v179)
      {
        v10 = MEMORY[0x2383922C0](v8, v7);
      }

      else
      {
        if (v8 >= *(v176 + 16))
        {
          goto LABEL_79;
        }

        v10 = *(v175 + 8 * v8);
      }

      v11 = v10;
      if (__OFADD__(v8++, 1))
      {
        break;
      }

      [v10 urlificationRange];
      sub_232CEA110();
      if ((v14 & 1) == 0 && (v15 = v13, [v11 category] == 3) && (v16 = objc_msgSend(objc_allocWithZone(MEMORY[0x277CC5698]), sel_initWithDDScannerResult_, v11)) != 0)
      {
        v17 = v16;
        sub_232B124A8(&qword_27DDC7520, &unk_232CFA0A0);
        inited = swift_initStackObject();
        *(inited + 16) = v161;
        v178 = v17;
        v18 = [v17 street];
        if (v18)
        {
          v19 = v18;
          sub_232CE9D50();
          sub_232BA69E4();
        }

        else
        {
          sub_232BA6C50();
        }

        *(inited + 32) = v4;
        *(inited + 40) = v7;
        *(inited + 48) = v166;
        v167 = v166;
        v20 = [v178 city];
        if (v20)
        {
          v21 = v20;
          sub_232CE9D50();
          sub_232BA69E4();
        }

        else
        {
          sub_232BA6C50();
        }

        *(inited + 56) = v4;
        *(inited + 64) = v7;
        *(inited + 72) = v165;
        v168 = v165;
        v22 = [v178 state];
        if (v22)
        {
          v23 = v22;
          sub_232CE9D50();
          sub_232BA69E4();
        }

        else
        {
          sub_232BA6C50();
        }

        *(inited + 80) = v4;
        *(inited + 88) = v7;
        *(inited + 96) = v164;
        v169 = v164;
        v24 = [v178 postalCode];
        if (v24)
        {
          v25 = v24;
          sub_232CE9D50();
          sub_232BA69E4();
        }

        else
        {
          sub_232BA6C50();
        }

        v173 = v11;
        *(inited + 104) = v4;
        *(inited + 112) = v7;
        *(inited + 120) = v163;
        v170 = v163;
        v26 = [v178 country];
        v174 = v9;
        if (v26)
        {
          v27 = v26;
          sub_232CE9D50();
          sub_232BA69E4();
        }

        else
        {
          sub_232BA6C50();
        }

        *(inited + 128) = v4;
        *(inited + 136) = v7;
        *(inited + 144) = v162;
        v171 = v162;
        v28 = 0;
        a1 = inited + 40;
LABEL_29:
        v29 = (a1 + 24 * v28);
        while (v28 != 5)
        {
          if (v28 > 4)
          {
            __break(1u);
            goto LABEL_78;
          }

          ++v28;
          v30 = v29 + 3;
          v31 = *v29;
          v29 += 3;
          if (v31)
          {
            if (*(v181 + 16))
            {
              v32 = *(v30 - 2);

              sub_232BA694C(v33, v34, v35, v36, v37, v38, v39, v40, v159, v160, v161, *(&v161 + 1), v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v173, v174, v175, v176, v177, v178, v179, v180, v181);

              v41 = v32;
              sub_232B20540();
              v43 = v42;

              if (v43)
              {

                swift_setDeallocating();
                v4 = inited;
                sub_232C787B0();
                a1 = v159;
                inited = v160;
                v9 = v174;
                v7 = v177;
                goto LABEL_65;
              }
            }

            goto LABEL_29;
          }
        }

        swift_setDeallocating();
        v4 = inited;
        sub_232C787B0();
        sub_232B35090();
        a1 = v159;
        inited = v160;
        v44 = sub_232CE9FB0();
        MEMORY[0x238391B80](v44);
        sub_232BA6210();

        v9 = v174;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_232BA57A8();
          sub_232B35ECC();
          v9 = v150;
        }

        v11 = v173;
        v45 = v178;
        v46 = *(v9 + 16);
        if (v46 >= *(v9 + 24) >> 1)
        {
          sub_232B35ECC();
          v9 = v151;
        }

        *(v9 + 16) = v46 + 1;
        v47 = v9 + 16 * v46;
        *(v47 + 32) = v4;
        *(v47 + 40) = v15;
        v48 = [v178 street];
        if (v48)
        {

          v49 = [v178 street];
          if (v49)
          {
            v4 = v49;
            sub_232CE9D50();
            sub_232BA61C8();

            sub_232BA694C(v50, v51, v52, v53, v54, v55, v56, v57, v159, v160, v161, *(&v161 + 1), v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v173, v174, v175, v176, v177, v178, v179, v180, v181);
            swift_isUniquelyReferenced_nonNull_native();
            v58 = sub_232BA58D0();
            sub_232B1FAB4(v58, v59, v167, v60);
            sub_232BA6C80();
          }

          else
          {
            v4 = v181;
            sub_232B20540();
            if (v61)
            {
              sub_232BA6E88();
              sub_232BA60D4();
              sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
              sub_232BA5B64();
              sub_232CEA5C0();

              type metadata accessor for NSTextCheckingKey(0, v62, v63, v64);
              v4 = v65;
              sub_232BA53AC();
              sub_232BA4DA4(&qword_27DDC65C8, v66, &unk_232CF5734);
              v181 = v182;
              sub_232CEA5E0();
            }
          }
        }

        v7 = v177;
        v67 = [v45 city];
        if (v67)
        {

          v68 = [v45 city];
          if (v68)
          {
            v4 = v68;
            sub_232CE9D50();
            sub_232BA61C8();

            sub_232BA694C(v69, v70, v71, v72, v73, v74, v75, v76, v159, v160, v161, *(&v161 + 1), v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v173, v174, v175, v176, v177, v178, v179, v180, v181);
            swift_isUniquelyReferenced_nonNull_native();
            v77 = sub_232BA58D0();
            v7 = v177;
            sub_232B1FAB4(v77, v78, v168, v79);
            sub_232BA6C80();
          }

          else
          {
            v4 = v181;
            sub_232B20540();
            if (v80)
            {
              sub_232BA6E88();
              sub_232BA60D4();
              sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
              sub_232BA5B64();
              v7 = v177;
              sub_232CEA5C0();
              sub_232BA5F68();

              sub_232BA6890(v82, v83, v84, v85);
              v4 = v86;
              sub_232BA53AC();
              sub_232BA4DA4(&qword_27DDC65C8, v87, &unk_232CF5734);
              sub_232BA5EB8();
              sub_232CEA5E0();
            }
          }
        }

        v88 = [v45 state];
        if (v88)
        {

          v89 = [v45 state];
          if (v89)
          {
            v4 = v89;
            sub_232CE9D50();
            sub_232BA61C8();

            sub_232BA694C(v90, v91, v92, v93, v94, v95, v96, v97, v159, v160, v161, *(&v161 + 1), v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v173, v174, v175, v176, v177, v178, v179, v180, v181);
            swift_isUniquelyReferenced_nonNull_native();
            v98 = sub_232BA58D0();
            v7 = v177;
            sub_232B1FAB4(v98, v99, v169, v100);
            sub_232BA6C80();
          }

          else
          {
            v4 = v181;
            sub_232B20540();
            if (v101)
            {
              sub_232BA6E88();
              sub_232BA60D4();
              sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
              sub_232BA5B64();
              v7 = v177;
              sub_232CEA5C0();
              sub_232BA5F68();

              sub_232BA6890(v103, v104, v105, v106);
              v4 = v107;
              sub_232BA53AC();
              sub_232BA4DA4(&qword_27DDC65C8, v108, &unk_232CF5734);
              sub_232BA5EB8();
              sub_232CEA5E0();
            }
          }
        }

        v109 = [v45 postalCode];
        if (v109)
        {

          v110 = [v45 postalCode];
          if (v110)
          {
            v4 = v110;
            sub_232CE9D50();
            sub_232BA61C8();

            sub_232BA694C(v111, v112, v113, v114, v115, v116, v117, v118, v159, v160, v161, *(&v161 + 1), v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v173, v174, v175, v176, v177, v178, v179, v180, v181);
            swift_isUniquelyReferenced_nonNull_native();
            v119 = sub_232BA58D0();
            v7 = v177;
            sub_232B1FAB4(v119, v120, v170, v121);
            sub_232BA6C80();
          }

          else
          {
            v4 = v181;
            sub_232B20540();
            if (v122)
            {
              sub_232BA6E88();
              sub_232BA60D4();
              sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
              sub_232BA5B64();
              v7 = v177;
              sub_232CEA5C0();
              sub_232BA5F68();

              sub_232BA6890(v124, v125, v126, v127);
              v4 = v128;
              sub_232BA53AC();
              sub_232BA4DA4(&qword_27DDC65C8, v129, &unk_232CF5734);
              sub_232BA5EB8();
              sub_232CEA5E0();
            }
          }
        }

        v130 = [v45 country];
        if (!v130)
        {

          goto LABEL_64;
        }

        v131 = [v45 country];
        if (v131)
        {
          v4 = v131;
          sub_232CE9D50();
          sub_232BA61C8();

          sub_232BA694C(v132, v133, v134, v135, v136, v137, v138, v139, v159, v160, v161, *(&v161 + 1), v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v173, v174, v175, v176, v177, v178, v179, v180, v181);
          swift_isUniquelyReferenced_nonNull_native();
          v140 = sub_232BA58D0();
          v7 = v177;
          sub_232B1FAB4(v140, v141, v172, v142);

          sub_232BA6C80();
        }

        else
        {
          v4 = v181;
          sub_232B20540();
          if (v143)
          {
            sub_232BA6E88();
            sub_232BA60D4();
            sub_232B124A8(&qword_27DDC67A0, &qword_232CF5E00);
            sub_232BA5B64();
            v7 = v177;
            sub_232CEA5C0();
            sub_232BA5F68();

            v145 = sub_232BA5B8C();
            type metadata accessor for NSTextCheckingKey(v145, v146, v147, v148);
            sub_232BA53AC();
            sub_232BA4DA4(&qword_27DDC65C8, v149, &unk_232CF5734);
            v181 = v45;
            sub_232CEA5E0();
          }

          else
          {

            v4 = 0;
          }
        }
      }

      else
      {
LABEL_64:
      }

LABEL_65:
      if (v8 == v180)
      {

        goto LABEL_73;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    sub_232BA506C();
    v5 = swift_once();
  }

  v9 = MEMORY[0x277D84F90];
LABEL_73:
  if (*(v9 + 16))
  {

    v152 = sub_232B2080C();
    sub_232B124A8(v152, v153);
    sub_232BA5560();
    sub_232BA62B0();
    sub_232B48E4C(v154, v155, v156, v157);
    sub_232BA7218();
    a1 = sub_232CE9CD0();
  }

  return a1;
}

uint64_t sub_232B7CE00(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232B66C40(a1, a2, a5, a6, &unk_28480D6C8);
  v18 = v17;
  v19 = sub_232B66C40(a3, a4, a5, a6, &unk_28480D6F0);
  v21 = v19;
  v22 = v20;
  if (v18)
  {
    v61 = v15;
    v62 = v13;
    v63 = v12;
    v64 = v16;
    v67 = v16;
    v68 = v18;
    v66 = v18;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (!v22)
    {
      v22 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v23, v22);

    v25 = v67;
    v24 = v68;
    v26 = objc_opt_self();
    v27 = sub_232CE9D20();

    v60 = v25;
    v28 = MEMORY[0x238391CC0](v25, v24);
    v65 = v24;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v29 = [v26 scanString:v27 range:0 configuration:{v28, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v30 = sub_232CE9FE0();

    v31 = sub_232B26B10();
    if (v31)
    {
      v32 = v31;
      v26 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x2383922C0](v26, v30);
        }

        else
        {
          if (v26 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v33 = *(v30 + 8 * v26 + 32);
        }

        v27 = v33;
        v34 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v33 category] == 6)
        {
          v35 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v35)
          {
            break;
          }
        }

        ++v26;
        if (v34 == v32)
        {
          goto LABEL_18;
        }
      }

      v43 = v35;

      v44 = MEMORY[0x2383920C0]([v43 amount]);
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = HIDWORD(v44);
      v51 = HIWORD(v44);
      v52 = v46 >> 16;
      v65 = HIDWORD(v46);
      v66 = HIWORD(v46);
      LODWORD(v64) = HIWORD(v48);
      v53 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v53 setMinimumFractionDigits_];
      [v53 setMaximumFractionDigits_];
      [v53 setUsesGroupingSeparator_];
      v54 = sub_232CE9D20();
      [v53 setDecimalSeparator_];

      v55 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v67) = v45;
      WORD2(v67) = v50;
      HIWORD(v67) = v51;
      LOWORD(v68) = v47;
      WORD1(v68) = v52;
      WORD2(v68) = v65;
      HIWORD(v68) = v66;
      v69 = v49;
      v70 = v64;
      v56 = [v55 initWithDecimal_];
      v57 = [v53 stringFromNumber_];

      if (v57)
      {
        v16 = sub_232CE9D50();
      }

      else
      {
        v16 = 0;
      }

      v58 = [v43 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v36 = v61;
      sub_232CE9A20();
      v37 = v65;

      v38 = sub_232CE9A00();
      v39 = sub_232CEA1A0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v67 = v41;
        *v40 = 136642819;
        v42 = sub_232BAD2D4(v60, v37, &v67);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_232B02000, v38, v39, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v40, 0xCu);
        sub_232B2040C(v41);
        MEMORY[0x238393870](v41, -1, -1);
        MEMORY[0x238393870](v40, -1, -1);
      }

      else
      {
      }

      (*(v62 + 8))(v36, v63);
      return v64;
    }
  }

  else if (v20)
  {
  }

  else
  {
    return v19;
  }

  return v16;
}

uint64_t sub_232B7D3F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232B679D8(a1, a2, a5, a6, &unk_28480D960);
  v18 = v17;
  v19 = sub_232B679D8(a3, a4, a5, a6, &unk_28480D988);
  v21 = v19;
  v22 = v20;
  if (v18)
  {
    v61 = v15;
    v62 = v13;
    v63 = v12;
    v64 = v16;
    v67 = v16;
    v68 = v18;
    v66 = v18;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (!v22)
    {
      v22 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v23, v22);

    v25 = v67;
    v24 = v68;
    v26 = objc_opt_self();
    v27 = sub_232CE9D20();

    v60 = v25;
    v28 = MEMORY[0x238391CC0](v25, v24);
    v65 = v24;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v29 = [v26 scanString:v27 range:0 configuration:{v28, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v30 = sub_232CE9FE0();

    v31 = sub_232B26B10();
    if (v31)
    {
      v32 = v31;
      v26 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x2383922C0](v26, v30);
        }

        else
        {
          if (v26 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v33 = *(v30 + 8 * v26 + 32);
        }

        v27 = v33;
        v34 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v33 category] == 6)
        {
          v35 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v35)
          {
            break;
          }
        }

        ++v26;
        if (v34 == v32)
        {
          goto LABEL_18;
        }
      }

      v43 = v35;

      v44 = MEMORY[0x2383920C0]([v43 amount]);
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = HIDWORD(v44);
      v51 = HIWORD(v44);
      v52 = v46 >> 16;
      v65 = HIDWORD(v46);
      v66 = HIWORD(v46);
      LODWORD(v64) = HIWORD(v48);
      v53 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v53 setMinimumFractionDigits_];
      [v53 setMaximumFractionDigits_];
      [v53 setUsesGroupingSeparator_];
      v54 = sub_232CE9D20();
      [v53 setDecimalSeparator_];

      v55 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v67) = v45;
      WORD2(v67) = v50;
      HIWORD(v67) = v51;
      LOWORD(v68) = v47;
      WORD1(v68) = v52;
      WORD2(v68) = v65;
      HIWORD(v68) = v66;
      v69 = v49;
      v70 = v64;
      v56 = [v55 initWithDecimal_];
      v57 = [v53 stringFromNumber_];

      if (v57)
      {
        v16 = sub_232CE9D50();
      }

      else
      {
        v16 = 0;
      }

      v58 = [v43 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v36 = v61;
      sub_232CE9A20();
      v37 = v65;

      v38 = sub_232CE9A00();
      v39 = sub_232CEA1A0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v67 = v41;
        *v40 = 136642819;
        v42 = sub_232BAD2D4(v60, v37, &v67);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_232B02000, v38, v39, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v40, 0xCu);
        sub_232B2040C(v41);
        MEMORY[0x238393870](v41, -1, -1);
        MEMORY[0x238393870](v40, -1, -1);
      }

      else
      {
      }

      (*(v62 + 8))(v36, v63);
      return v64;
    }
  }

  else if (v20)
  {
  }

  else
  {
    return v19;
  }

  return v16;
}

uint64_t sub_232B7D9E0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232B68770(a1, a2, a5, a6, &unk_28480DD38);
  v18 = v17;
  v19 = sub_232B68770(a3, a4, a5, a6, &unk_28480DD60);
  v21 = v19;
  v22 = v20;
  if (v18)
  {
    v61 = v15;
    v62 = v13;
    v63 = v12;
    v64 = v16;
    v67 = v16;
    v68 = v18;
    v66 = v18;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (!v22)
    {
      v22 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v23, v22);

    v25 = v67;
    v24 = v68;
    v26 = objc_opt_self();
    v27 = sub_232CE9D20();

    v60 = v25;
    v28 = MEMORY[0x238391CC0](v25, v24);
    v65 = v24;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v29 = [v26 scanString:v27 range:0 configuration:{v28, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v30 = sub_232CE9FE0();

    v31 = sub_232B26B10();
    if (v31)
    {
      v32 = v31;
      v26 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x2383922C0](v26, v30);
        }

        else
        {
          if (v26 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v33 = *(v30 + 8 * v26 + 32);
        }

        v27 = v33;
        v34 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v33 category] == 6)
        {
          v35 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v35)
          {
            break;
          }
        }

        ++v26;
        if (v34 == v32)
        {
          goto LABEL_18;
        }
      }

      v43 = v35;

      v44 = MEMORY[0x2383920C0]([v43 amount]);
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = HIDWORD(v44);
      v51 = HIWORD(v44);
      v52 = v46 >> 16;
      v65 = HIDWORD(v46);
      v66 = HIWORD(v46);
      LODWORD(v64) = HIWORD(v48);
      v53 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v53 setMinimumFractionDigits_];
      [v53 setMaximumFractionDigits_];
      [v53 setUsesGroupingSeparator_];
      v54 = sub_232CE9D20();
      [v53 setDecimalSeparator_];

      v55 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v67) = v45;
      WORD2(v67) = v50;
      HIWORD(v67) = v51;
      LOWORD(v68) = v47;
      WORD1(v68) = v52;
      WORD2(v68) = v65;
      HIWORD(v68) = v66;
      v69 = v49;
      v70 = v64;
      v56 = [v55 initWithDecimal_];
      v57 = [v53 stringFromNumber_];

      if (v57)
      {
        v16 = sub_232CE9D50();
      }

      else
      {
        v16 = 0;
      }

      v58 = [v43 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v36 = v61;
      sub_232CE9A20();
      v37 = v65;

      v38 = sub_232CE9A00();
      v39 = sub_232CEA1A0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v67 = v41;
        *v40 = 136642819;
        v42 = sub_232BAD2D4(v60, v37, &v67);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_232B02000, v38, v39, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v40, 0xCu);
        sub_232B2040C(v41);
        MEMORY[0x238393870](v41, -1, -1);
        MEMORY[0x238393870](v40, -1, -1);
      }

      else
      {
      }

      (*(v62 + 8))(v36, v63);
      return v64;
    }
  }

  else if (v20)
  {
  }

  else
  {
    return v19;
  }

  return v16;
}

uint64_t sub_232B7DFD0()
{
  v0 = sub_232CE9A30();
  v52 = *(v0 - 8);
  v53 = v0;
  MEMORY[0x28223BE20](v0);
  v51 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232B6A2A0();
  v3 = v2;
  v5 = v4;
  sub_232B6A2A0();
  v8 = v6;
  v9 = v7;
  if (v5)
  {
    v48 = v3;
    v54 = v3;
    v55 = v5;
    v50 = v5;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (!v9)
    {
      v9 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v10, v9);

    v12 = v54;
    v11 = v55;
    v13 = objc_opt_self();
    v14 = sub_232CE9D20();

    v47 = v12;
    v15 = MEMORY[0x238391CC0](v12, v11);
    v49 = v11;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v16 = [v13 scanString:v14 range:0 configuration:{v15, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v17 = sub_232CE9FE0();

    v18 = sub_232B26B10();
    if (v18)
    {
      v19 = v18;
      v13 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x2383922C0](v13, v17);
        }

        else
        {
          if (v13 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v20 = *(v17 + 8 * v13 + 32);
        }

        v14 = v20;
        v21 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v20 category] == 6)
        {
          v22 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v22)
          {
            break;
          }
        }

        ++v13;
        if (v21 == v19)
        {
          goto LABEL_18;
        }
      }

      v30 = v22;

      v31 = MEMORY[0x2383920C0]([v30 amount]);
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v37 = HIDWORD(v31);
      v38 = HIWORD(v31);
      v39 = v33 >> 16;
      v52 = HIDWORD(v33);
      v53 = HIWORD(v33);
      LODWORD(v51) = HIWORD(v35);
      v40 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v40 setMinimumFractionDigits_];
      [v40 setMaximumFractionDigits_];
      [v40 setUsesGroupingSeparator_];
      v41 = sub_232CE9D20();
      [v40 setDecimalSeparator_];

      v42 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v54) = v32;
      WORD2(v54) = v37;
      HIWORD(v54) = v38;
      LOWORD(v55) = v34;
      WORD1(v55) = v39;
      WORD2(v55) = v52;
      HIWORD(v55) = v53;
      v56 = v36;
      v57 = v51;
      v43 = [v42 initWithDecimal_];
      v44 = [v40 stringFromNumber_];

      if (v44)
      {
        v3 = sub_232CE9D50();
      }

      else
      {
        v3 = 0;
      }

      v45 = [v30 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v23 = v51;
      sub_232CE9A20();
      v24 = v49;

      v25 = sub_232CE9A00();
      v26 = sub_232CEA1A0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v54 = v28;
        *v27 = 136642819;
        v29 = sub_232BAD2D4(v47, v24, &v54);

        *(v27 + 4) = v29;
        _os_log_impl(&dword_232B02000, v25, v26, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v27, 0xCu);
        sub_232B2040C(v28);
        MEMORY[0x238393870](v28, -1, -1);
        MEMORY[0x238393870](v27, -1, -1);
      }

      else
      {
      }

      (*(v52 + 8))(v23, v53);
      return v48;
    }
  }

  else if (v7)
  {
  }

  else
  {
    return v6;
  }

  return v3;
}

uint64_t sub_232B7E604()
{
  v0 = sub_232CE9A30();
  v52 = *(v0 - 8);
  v53 = v0;
  MEMORY[0x28223BE20](v0);
  v51 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232B6A2A0();
  v3 = v2;
  v5 = v4;
  sub_232B6A2A0();
  v8 = v6;
  v9 = v7;
  if (v5)
  {
    v48 = v3;
    v54 = v3;
    v55 = v5;
    v50 = v5;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (!v9)
    {
      v9 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v10, v9);

    v12 = v54;
    v11 = v55;
    v13 = objc_opt_self();
    v14 = sub_232CE9D20();

    v47 = v12;
    v15 = MEMORY[0x238391CC0](v12, v11);
    v49 = v11;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v16 = [v13 scanString:v14 range:0 configuration:{v15, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v17 = sub_232CE9FE0();

    v18 = sub_232B26B10();
    if (v18)
    {
      v19 = v18;
      v13 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x2383922C0](v13, v17);
        }

        else
        {
          if (v13 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v20 = *(v17 + 8 * v13 + 32);
        }

        v14 = v20;
        v21 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v20 category] == 6)
        {
          v22 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v22)
          {
            break;
          }
        }

        ++v13;
        if (v21 == v19)
        {
          goto LABEL_18;
        }
      }

      v30 = v22;

      v31 = MEMORY[0x2383920C0]([v30 amount]);
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v37 = HIDWORD(v31);
      v38 = HIWORD(v31);
      v39 = v33 >> 16;
      v52 = HIDWORD(v33);
      v53 = HIWORD(v33);
      LODWORD(v51) = HIWORD(v35);
      v40 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v40 setMinimumFractionDigits_];
      [v40 setMaximumFractionDigits_];
      [v40 setUsesGroupingSeparator_];
      v41 = sub_232CE9D20();
      [v40 setDecimalSeparator_];

      v42 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v54) = v32;
      WORD2(v54) = v37;
      HIWORD(v54) = v38;
      LOWORD(v55) = v34;
      WORD1(v55) = v39;
      WORD2(v55) = v52;
      HIWORD(v55) = v53;
      v56 = v36;
      v57 = v51;
      v43 = [v42 initWithDecimal_];
      v44 = [v40 stringFromNumber_];

      if (v44)
      {
        v3 = sub_232CE9D50();
      }

      else
      {
        v3 = 0;
      }

      v45 = [v30 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v23 = v51;
      sub_232CE9A20();
      v24 = v49;

      v25 = sub_232CE9A00();
      v26 = sub_232CEA1A0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v54 = v28;
        *v27 = 136642819;
        v29 = sub_232BAD2D4(v47, v24, &v54);

        *(v27 + 4) = v29;
        _os_log_impl(&dword_232B02000, v25, v26, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v27, 0xCu);
        sub_232B2040C(v28);
        MEMORY[0x238393870](v28, -1, -1);
        MEMORY[0x238393870](v27, -1, -1);
      }

      else
      {
      }

      (*(v52 + 8))(v23, v53);
      return v48;
    }
  }

  else if (v7)
  {
  }

  else
  {
    return v6;
  }

  return v3;
}

uint64_t sub_232B7EC38(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232B6BB90(a1, a2, a5, a6, &unk_28480E800);
  v18 = v17;
  v19 = sub_232B6BB90(a3, a4, a5, a6, &unk_28480E828);
  v21 = v19;
  v22 = v20;
  if (v18)
  {
    v61 = v15;
    v62 = v13;
    v63 = v12;
    v64 = v16;
    v67 = v16;
    v68 = v18;
    v66 = v18;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (!v22)
    {
      v22 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v23, v22);

    v25 = v67;
    v24 = v68;
    v26 = objc_opt_self();
    v27 = sub_232CE9D20();

    v60 = v25;
    v28 = MEMORY[0x238391CC0](v25, v24);
    v65 = v24;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v29 = [v26 scanString:v27 range:0 configuration:{v28, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v30 = sub_232CE9FE0();

    v31 = sub_232B26B10();
    if (v31)
    {
      v32 = v31;
      v26 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x2383922C0](v26, v30);
        }

        else
        {
          if (v26 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v33 = *(v30 + 8 * v26 + 32);
        }

        v27 = v33;
        v34 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v33 category] == 6)
        {
          v35 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v35)
          {
            break;
          }
        }

        ++v26;
        if (v34 == v32)
        {
          goto LABEL_18;
        }
      }

      v43 = v35;

      v44 = MEMORY[0x2383920C0]([v43 amount]);
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = HIDWORD(v44);
      v51 = HIWORD(v44);
      v52 = v46 >> 16;
      v65 = HIDWORD(v46);
      v66 = HIWORD(v46);
      LODWORD(v64) = HIWORD(v48);
      v53 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v53 setMinimumFractionDigits_];
      [v53 setMaximumFractionDigits_];
      [v53 setUsesGroupingSeparator_];
      v54 = sub_232CE9D20();
      [v53 setDecimalSeparator_];

      v55 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v67) = v45;
      WORD2(v67) = v50;
      HIWORD(v67) = v51;
      LOWORD(v68) = v47;
      WORD1(v68) = v52;
      WORD2(v68) = v65;
      HIWORD(v68) = v66;
      v69 = v49;
      v70 = v64;
      v56 = [v55 initWithDecimal_];
      v57 = [v53 stringFromNumber_];

      if (v57)
      {
        v16 = sub_232CE9D50();
      }

      else
      {
        v16 = 0;
      }

      v58 = [v43 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v36 = v61;
      sub_232CE9A20();
      v37 = v65;

      v38 = sub_232CE9A00();
      v39 = sub_232CEA1A0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v67 = v41;
        *v40 = 136642819;
        v42 = sub_232BAD2D4(v60, v37, &v67);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_232B02000, v38, v39, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v40, 0xCu);
        sub_232B2040C(v41);
        MEMORY[0x238393870](v41, -1, -1);
        MEMORY[0x238393870](v40, -1, -1);
      }

      else
      {
      }

      (*(v62 + 8))(v36, v63);
      return v64;
    }
  }

  else if (v20)
  {
  }

  else
  {
    return v19;
  }

  return v16;
}

uint64_t sub_232B7F228(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232B6C928(a1, a2, a5, a6, &unk_28480EA70);
  v18 = v17;
  v19 = sub_232B6C928(a3, a4, a5, a6, &unk_28480EA98);
  v21 = v19;
  v22 = v20;
  if (v18)
  {
    v61 = v15;
    v62 = v13;
    v63 = v12;
    v64 = v16;
    v67 = v16;
    v68 = v18;
    v66 = v18;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (!v22)
    {
      v22 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v23, v22);

    v25 = v67;
    v24 = v68;
    v26 = objc_opt_self();
    v27 = sub_232CE9D20();

    v60 = v25;
    v28 = MEMORY[0x238391CC0](v25, v24);
    v65 = v24;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v29 = [v26 scanString:v27 range:0 configuration:{v28, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v30 = sub_232CE9FE0();

    v31 = sub_232B26B10();
    if (v31)
    {
      v32 = v31;
      v26 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x2383922C0](v26, v30);
        }

        else
        {
          if (v26 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v33 = *(v30 + 8 * v26 + 32);
        }

        v27 = v33;
        v34 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v33 category] == 6)
        {
          v35 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v35)
          {
            break;
          }
        }

        ++v26;
        if (v34 == v32)
        {
          goto LABEL_18;
        }
      }

      v43 = v35;

      v44 = MEMORY[0x2383920C0]([v43 amount]);
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = HIDWORD(v44);
      v51 = HIWORD(v44);
      v52 = v46 >> 16;
      v65 = HIDWORD(v46);
      v66 = HIWORD(v46);
      LODWORD(v64) = HIWORD(v48);
      v53 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v53 setMinimumFractionDigits_];
      [v53 setMaximumFractionDigits_];
      [v53 setUsesGroupingSeparator_];
      v54 = sub_232CE9D20();
      [v53 setDecimalSeparator_];

      v55 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v67) = v45;
      WORD2(v67) = v50;
      HIWORD(v67) = v51;
      LOWORD(v68) = v47;
      WORD1(v68) = v52;
      WORD2(v68) = v65;
      HIWORD(v68) = v66;
      v69 = v49;
      v70 = v64;
      v56 = [v55 initWithDecimal_];
      v57 = [v53 stringFromNumber_];

      if (v57)
      {
        v16 = sub_232CE9D50();
      }

      else
      {
        v16 = 0;
      }

      v58 = [v43 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v36 = v61;
      sub_232CE9A20();
      v37 = v65;

      v38 = sub_232CE9A00();
      v39 = sub_232CEA1A0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v67 = v41;
        *v40 = 136642819;
        v42 = sub_232BAD2D4(v60, v37, &v67);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_232B02000, v38, v39, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v40, 0xCu);
        sub_232B2040C(v41);
        MEMORY[0x238393870](v41, -1, -1);
        MEMORY[0x238393870](v40, -1, -1);
      }

      else
      {
      }

      (*(v62 + 8))(v36, v63);
      return v64;
    }
  }

  else if (v20)
  {
  }

  else
  {
    return v19;
  }

  return v16;
}

uint64_t sub_232B7F818(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232B6E458(a1, a2, a5, a6, &unk_28480EED8);
  v18 = v17;
  v19 = sub_232B6E458(a3, a4, a5, a6, &unk_28480EF00);
  v21 = v19;
  v22 = v20;
  if (v18)
  {
    v61 = v15;
    v62 = v13;
    v63 = v12;
    v64 = v16;
    v67 = v16;
    v68 = v18;
    v66 = v18;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (!v22)
    {
      v22 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v23, v22);

    v25 = v67;
    v24 = v68;
    v26 = objc_opt_self();
    v27 = sub_232CE9D20();

    v60 = v25;
    v28 = MEMORY[0x238391CC0](v25, v24);
    v65 = v24;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v29 = [v26 scanString:v27 range:0 configuration:{v28, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v30 = sub_232CE9FE0();

    v31 = sub_232B26B10();
    if (v31)
    {
      v32 = v31;
      v26 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x2383922C0](v26, v30);
        }

        else
        {
          if (v26 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v33 = *(v30 + 8 * v26 + 32);
        }

        v27 = v33;
        v34 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v33 category] == 6)
        {
          v35 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v35)
          {
            break;
          }
        }

        ++v26;
        if (v34 == v32)
        {
          goto LABEL_18;
        }
      }

      v43 = v35;

      v44 = MEMORY[0x2383920C0]([v43 amount]);
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = HIDWORD(v44);
      v51 = HIWORD(v44);
      v52 = v46 >> 16;
      v65 = HIDWORD(v46);
      v66 = HIWORD(v46);
      LODWORD(v64) = HIWORD(v48);
      v53 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v53 setMinimumFractionDigits_];
      [v53 setMaximumFractionDigits_];
      [v53 setUsesGroupingSeparator_];
      v54 = sub_232CE9D20();
      [v53 setDecimalSeparator_];

      v55 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v67) = v45;
      WORD2(v67) = v50;
      HIWORD(v67) = v51;
      LOWORD(v68) = v47;
      WORD1(v68) = v52;
      WORD2(v68) = v65;
      HIWORD(v68) = v66;
      v69 = v49;
      v70 = v64;
      v56 = [v55 initWithDecimal_];
      v57 = [v53 stringFromNumber_];

      if (v57)
      {
        v16 = sub_232CE9D50();
      }

      else
      {
        v16 = 0;
      }

      v58 = [v43 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v36 = v61;
      sub_232CE9A20();
      v37 = v65;

      v38 = sub_232CE9A00();
      v39 = sub_232CEA1A0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v67 = v41;
        *v40 = 136642819;
        v42 = sub_232BAD2D4(v60, v37, &v67);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_232B02000, v38, v39, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v40, 0xCu);
        sub_232B2040C(v41);
        MEMORY[0x238393870](v41, -1, -1);
        MEMORY[0x238393870](v40, -1, -1);
      }

      else
      {
      }

      (*(v62 + 8))(v36, v63);
      return v64;
    }
  }

  else if (v20)
  {
  }

  else
  {
    return v19;
  }

  return v16;
}

uint64_t sub_232B7FE08(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_232CE9A30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232B6F1F0(a1, a2, a5, a6, &unk_28480F240);
  v18 = v17;
  v19 = sub_232B6F1F0(a3, a4, a5, a6, &unk_28480F268);
  v21 = v19;
  v22 = v20;
  if (v18)
  {
    v61 = v15;
    v62 = v13;
    v63 = v12;
    v64 = v16;
    v67 = v16;
    v68 = v18;
    v66 = v18;

    MEMORY[0x238391C30](32, 0xE100000000000000);
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (!v22)
    {
      v22 = 0xE000000000000000;
    }

    MEMORY[0x238391C30](v23, v22);

    v25 = v67;
    v24 = v68;
    v26 = objc_opt_self();
    v27 = sub_232CE9D20();

    v60 = v25;
    v28 = MEMORY[0x238391CC0](v25, v24);
    v65 = v24;

    if (qword_27DDC6368 != -1)
    {
LABEL_32:
      swift_once();
    }

    v29 = [v26 scanString:v27 range:0 configuration:{v28, qword_27DDC6F80}];

    sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
    v30 = sub_232CE9FE0();

    v31 = sub_232B26B10();
    if (v31)
    {
      v32 = v31;
      v26 = 0;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x2383922C0](v26, v30);
        }

        else
        {
          if (v26 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v33 = *(v30 + 8 * v26 + 32);
        }

        v27 = v33;
        v34 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if ([v33 category] == 6)
        {
          v35 = [objc_allocWithZone(MEMORY[0x277CC5688]) initWithDDScannerResult_];
          if (v35)
          {
            break;
          }
        }

        ++v26;
        if (v34 == v32)
        {
          goto LABEL_18;
        }
      }

      v43 = v35;

      v44 = MEMORY[0x2383920C0]([v43 amount]);
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = HIDWORD(v44);
      v51 = HIWORD(v44);
      v52 = v46 >> 16;
      v65 = HIDWORD(v46);
      v66 = HIWORD(v46);
      LODWORD(v64) = HIWORD(v48);
      v53 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v53 setMinimumFractionDigits_];
      [v53 setMaximumFractionDigits_];
      [v53 setUsesGroupingSeparator_];
      v54 = sub_232CE9D20();
      [v53 setDecimalSeparator_];

      v55 = objc_allocWithZone(MEMORY[0x277CCA980]);
      LODWORD(v67) = v45;
      WORD2(v67) = v50;
      HIWORD(v67) = v51;
      LOWORD(v68) = v47;
      WORD1(v68) = v52;
      WORD2(v68) = v65;
      HIWORD(v68) = v66;
      v69 = v49;
      v70 = v64;
      v56 = [v55 initWithDecimal_];
      v57 = [v53 stringFromNumber_];

      if (v57)
      {
        v16 = sub_232CE9D50();
      }

      else
      {
        v16 = 0;
      }

      v58 = [v43 currency];
      sub_232CE9D50();
    }

    else
    {
LABEL_18:

      v36 = v61;
      sub_232CE9A20();
      v37 = v65;

      v38 = sub_232CE9A00();
      v39 = sub_232CEA1A0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v67 = v41;
        *v40 = 136642819;
        v42 = sub_232BAD2D4(v60, v37, &v67);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_232B02000, v38, v39, "DUAdapterPostProcessing: No DD money detected in totalCost: %{sensitive}s", v40, 0xCu);
        sub_232B2040C(v41);
        MEMORY[0x238393870](v41, -1, -1);
        MEMORY[0x238393870](v40, -1, -1);
      }

      else
      {
      }

      (*(v62 + 8))(v36, v63);
      return v64;
    }
  }

  else if (v20)
  {
  }

  else
  {
    return v19;
  }

  return v16;
}

void *sub_232B803F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DUExtractionAttributeKey(0, a2, a3, a4);
  v6 = v5;
  sub_232BA4E80();
  sub_232BA4DA4(v7, v8, &unk_232CF5390);
  v9 = sub_232CE9C60();
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v16 | (v14 << 6);
    v18 = (*(a1 + 56) + 16 * v17);
    v19 = v18[1];
    if (v19)
    {
      v35 = v6;
      v20 = *(*(a1 + 48) + 8 * v17);
      v37 = *v18;

      v21 = v20;
      sub_232BA6E88();
      v22 = sub_232B20540();
      v36 = v23;
      if (__OFADD__(v9[2], (v23 & 1) == 0))
      {
        goto LABEL_21;
      }

      v24 = v22;
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      if (sub_232CEA5C0())
      {
        v25 = v20;
        v26 = sub_232B20540();
        v28 = v36;
        if ((v36 & 1) != (v27 & 1))
        {
          goto LABEL_23;
        }

        v24 = v26;
      }

      else
      {
        v25 = v20;
        v28 = v36;
      }

      if (v28)
      {
        v29 = (v9[7] + 16 * v24);
        *v29 = v37;
        v29[1] = v19;

        v6 = v35;
      }

      else
      {
        v9[(v24 >> 6) + 8] |= 1 << v24;
        *(v9[6] + 8 * v24) = v25;
        v30 = (v9[7] + 16 * v24);
        *v30 = v37;
        v30[1] = v19;
        v31 = v9[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_22;
        }

        v9[2] = v33;
        v6 = v35;
      }
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v9;
    }

    v12 = *(a1 + 64 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_232CEA7A0();
  __break(1u);
  return result;
}

id sub_232B80670(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_232CE9D20();

  v4 = [v2 initWithString_];

  return v4;
}

void sub_232B806E4(void *a1)
{
  v1 = [a1 subResults];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
  v3 = sub_232CE9FE0();

  v4 = sub_232B26B10();
  if (!v4)
  {
LABEL_24:

    return;
  }

  v5 = v4;
  if (v4 < 1)
  {
    goto LABEL_29;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2383922C0](v6, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = [v8 type];
    v11 = sub_232CE9D50();
    v13 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232B35ECC();
      v7 = v24;
    }

    v14 = *(v7 + 16);
    if (v14 >= *(v7 + 24) >> 1)
    {
      sub_232B35ECC();
      v7 = v25;
    }

    *(v7 + 16) = v14 + 1;
    v15 = v7 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v13;
    v16 = sub_232B806E4(v9);
    v17 = *(v16 + 16);
    v18 = *(v7 + 16);
    if (__OFADD__(v18, v17))
    {
      break;
    }

    v19 = v16;
    v20 = *(v7 + 24) >> 1;
    if (v20 < v18 + v17)
    {
      sub_232B35ECC();
      v7 = v26;
      v18 = *(v26 + 16);
      v20 = *(v26 + 24) >> 1;
      if (*(v19 + 16))
      {
LABEL_15:
        if (v20 - v18 < v17)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v21 = *(v7 + 16);
          v22 = __OFADD__(v21, v17);
          v23 = v21 + v17;
          if (v22)
          {
            goto LABEL_28;
          }

          *(v7 + 16) = v23;
        }

        goto LABEL_21;
      }
    }

    else if (v17)
    {
      goto LABEL_15;
    }

    if (v17)
    {
      goto LABEL_26;
    }

LABEL_21:
    ++v6;

    if (v5 == v6)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_232B80968(uint64_t a1, uint64_t a2)
{
  sub_232BA6250();
  v28 = v4;
  v6 = [v5 subResults];
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  sub_232BA4DEC(0, &qword_2814DF918, 0x277D04218);
  v8 = sub_232CE9FE0();

  v9 = sub_232B26B10();
  if (!v9)
  {
LABEL_24:

LABEL_25:
    sub_232BA6234();
    return;
  }

  v10 = v9;
  if (v9 < 1)
  {
    goto LABEL_30;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = sub_232B35128();
      v14 = MEMORY[0x2383922C0](v13);
    }

    else
    {
      v14 = *(v8 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = [v14 type];
    sub_232CE9D50();
    sub_232BA6298();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232BA57A8();
      sub_232B35ECC();
      v12 = v25;
    }

    v17 = *(v12 + 16);
    if (v17 >= *(v12 + 24) >> 1)
    {
      sub_232BA65D4();
      sub_232B35ECC();
      v12 = v26;
    }

    *(v12 + 16) = v17 + 1;
    v18 = v12 + 16 * v17;
    *(v18 + 32) = v2;
    *(v18 + 40) = v3;
    v19 = v28(v15);
    v2 = *(v19 + 16);
    v20 = *(v12 + 16);
    if (__OFADD__(v20, v2))
    {
      break;
    }

    v3 = v19;
    v21 = *(v12 + 24) >> 1;
    if (v21 < v20 + v2)
    {
      sub_232BA65D4();
      sub_232B35ECC();
      v12 = v27;
      v20 = *(v27 + 16);
      v21 = *(v27 + 24) >> 1;
      if (*(v3 + 16))
      {
LABEL_15:
        if (v21 - v20 < v2)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v2)
        {
          v22 = *(v12 + 16);
          v23 = __OFADD__(v22, v2);
          v24 = v22 + v2;
          if (v23)
          {
            goto LABEL_29;
          }

          *(v12 + 16) = v24;
        }

        goto LABEL_21;
      }
    }

    else if (v2)
    {
      goto LABEL_15;
    }

    if (v2)
    {
      goto LABEL_27;
    }

LABEL_21:
    ++v11;

    if (v10 == v11)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

void sub_232B80BB0()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_232CE89D0();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  if (v11)
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    v14 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v14 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      if ((v1 & 1) == 0)
      {
        v38 = v5;
        sub_232BA7230();
        sub_232CE9DD0();
        sub_232BA6800();
        sub_232CE9DD0();

        v22 = sub_232CE9F50();

        if (v22)
        {
          sub_232BA6800();
          sub_232CE9E60();
          sub_232BA67A4();
          v26 = sub_232B80F38(v23, v24, v25);
          MEMORY[0x238391B80](v26);

          sub_232CE89B0();
          sub_232B48080();
          sub_232BA6C44();
          sub_232CEA3A0();
          v27 = sub_232BA6148();
          v28(v27, v12);
        }

        v5 = v38;
        if (!v3)
        {
          goto LABEL_24;
        }

LABEL_12:
        v21 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v21 = v5 & 0xFFFFFFFFFFFFLL;
        }

        if (!v21)
        {
          goto LABEL_24;
        }

        if (v1)
        {
          sub_232BA5C94();
          if ((sub_232CE9F60() & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        sub_232BA7230();
        sub_232CE9DD0();
        sub_232BA5D68();
        sub_232BA5C94();
        sub_232CE9DD0();
        v29 = sub_232CE9F60();

        if (v29)
        {
LABEL_22:
          sub_232BA5C94();
          sub_232CE9E60();
          sub_232BA67A4();
          v33 = sub_232B8100C(v30, v31, v32);
          MEMORY[0x238391B80](v33);
          sub_232BA5F44();

          sub_232CE89B0();
          sub_232B48080();
          sub_232BA6C44();
          sub_232CEA3A0();
          v34 = sub_232BA6148();
          v35(v34, v12);
        }

LABEL_24:
        sub_232CE89B0();
        sub_232B48080();
        sub_232BA6C44();
        sub_232CEA3A0();
        v36 = sub_232B5A008();
        v37(v36);

        goto LABEL_25;
      }

      sub_232BA6800();
      if (sub_232CE9F50())
      {
        sub_232BA6800();
        sub_232CE9E60();
        sub_232BA67A4();
        v18 = sub_232B80F38(v15, v16, v17);
        MEMORY[0x238391B80](v18);

        sub_232CE89B0();
        sub_232B48080();
        sub_232BA6C44();
        sub_232CEA3A0();
        v19 = sub_232BA6148();
        v20(v19, v12);

        if (!v3)
        {
          goto LABEL_24;
        }

        goto LABEL_12;
      }
    }

    else
    {
LABEL_10:
    }

    if (!v3)
    {
      goto LABEL_24;
    }

    goto LABEL_12;
  }

LABEL_25:
  sub_232BA7224();
  sub_232B20A00();
}

unint64_t sub_232B80F38(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_232CE9E80();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_232CE9FB0();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232B8100C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_232CE9E80();
    v3 = sub_232CE9FB0();

    return v3;
  }

  return result;
}

unint64_t sub_232B810CC()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_232B81134@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232B810CC();
  *a1 = result;
  return result;
}

uint64_t sub_232B81164()
{
  v1 = sub_232BA6734();
  result = sub_232B77394(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_232B811DC()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

void sub_232B81220(char a1)
{
  switch(a1)
  {
    case 4:
    case 5:
      sub_232BA6E04();
      break;
    default:
      return;
  }
}

unint64_t sub_232B81328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232B811DC();
  *a1 = result;
  return result;
}

void sub_232B81358()
{
  v1 = sub_232BA6734();
  sub_232B81220(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_232B813A0()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_232B813E4(char a1)
{
  result = 0x616D7269666E6F43;
  switch(a1)
  {
    case 1:
      result = 0x657461647055;
      break;
    case 2:
      result = 0x616C6C65636E6143;
      break;
    case 3:
      result = sub_232BA66D0();
      break;
    case 4:
      result = 0x6E776F6E6B6E55;
      break;
    case 5:
      result = 0x6E7275746552;
      break;
    case 6:
      result = 0x646E75666552;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_232B814B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232B813A0();
  *a1 = result;
  return result;
}

uint64_t sub_232B814E8()
{
  v1 = sub_232BA6734();
  result = sub_232B813E4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_232B81530()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_232B81574(char a1)
{
  result = 0x6C61636973796850;
  switch(a1)
  {
    case 1:
      result = 0x206C617469676944;
      break;
    case 2:
      result = 0x7069726373627553;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_232B81654@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232B81530();
  *a1 = result;
  return result;
}

unint64_t sub_232B81684()
{
  v1 = sub_232BA6734();
  result = sub_232B81574(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_232B816CC()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

void sub_232B81710(char a1)
{
  switch(a1)
  {
    case 2:
    case 6:
      sub_232BA6E04();
      break;
    case 4:
      sub_232BA66D0();
      break;
    default:
      return;
  }
}

unint64_t sub_232B81840@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232B816CC();
  *a1 = result;
  return result;
}

void sub_232B81870()
{
  v1 = sub_232BA6734();
  sub_232B81710(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_232B818A8()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232B81948@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232B818A8();
  *a1 = result;
  return result;
}

void sub_232B81978()
{
  v1 = sub_232BA6734();
  sub_232B818F4(v1, v2);
  *v0 = v3;
  v0[1] = v4;
}

unint64_t sub_232B819B0()
{
  sub_232BA684C();
  sub_232CEA670();
  sub_232B26CE8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_232B819F4(char a1)
{
  result = 0x6E69617254;
  switch(a1)
  {
    case 1:
      result = 7566658;
      break;
    case 2:
      result = 1952542530;
      break;
    case 3:
      result = 0x636972656E6547;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_232B81A88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_232B819B0();
  *a1 = result;
  return result;
}

uint64_t sub_232B81AB8()
{
  v1 = sub_232BA6734();
  result = sub_232B819F4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void sub_232B81AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232BA6250();
  sub_232BA5EE0();
  v12 = *MEMORY[0x277D066A8];
  sub_232BA5D40();
  sub_232B6D6C0(v13, v14, v15, v16, v17);
  if (v18)
  {
    sub_232BA69F0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_232BA5938(isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_232BA658C();
    if (v20)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA5828();
      sub_232BA5C70();

      sub_232BA5744(v22, v23, v24, v25);
      sub_232BA4E80();
      sub_232BA4DA4(v26, v27, &unk_232CF5390);
      sub_232BA5C94();
      sub_232CEA5E0();
    }
  }

  v28 = *MEMORY[0x277D064B8];
  sub_232BA55A4();
  sub_232B6D6C0(v29, v30, v31, v32, v33);
  if (v34)
  {
    sub_232BA5D68();
    swift_isUniquelyReferenced_nonNull_native();
    v35 = sub_232BA50B0();
    sub_232B1FCE4(v35, v36, v28, v37);
  }

  else
  {
    sub_232BA658C();
    if (v38)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA5828();
      sub_232BA5C70();

      sub_232BA5744(v40, v41, v42, v43);
      sub_232BA4E80();
      sub_232BA4DA4(v44, v45, &unk_232CF5390);
      sub_232BA5C94();
      sub_232CEA5E0();
    }
  }

  v46 = *MEMORY[0x277D066B8];
  sub_232BA55A4();
  sub_232B6D6C0(v47, v48, v49, v50, v51);
  if (v52)
  {
    sub_232BA5D68();
    swift_isUniquelyReferenced_nonNull_native();
    v53 = sub_232BA50B0();
    sub_232B1FCE4(v53, v54, v46, v55);
  }

  else
  {
    sub_232BA658C();
    if (v56)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA5828();
      sub_232BA5C70();

      sub_232BA5744(v58, v59, v60, v61);
      sub_232BA4E80();
      sub_232BA4DA4(v62, v63, &unk_232CF5390);
      sub_232BA5C94();
      sub_232CEA5E0();
    }
  }

  v64 = *MEMORY[0x277D06780];
  sub_232BA55A4();
  sub_232B6D6C0(v65, v66, v67, v68, v69);
  if (v70)
  {
    sub_232BA5D68();
    swift_isUniquelyReferenced_nonNull_native();
    v71 = sub_232BA50B0();
    sub_232B1FCE4(v71, v72, v64, v73);
  }

  else
  {
    sub_232BA658C();
    if (v74)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA5828();
      sub_232BA5C70();

      sub_232BA5744(v76, v77, v78, v79);
      sub_232BA4E80();
      sub_232BA4DA4(v80, v81, &unk_232CF5390);
      sub_232BA5C94();
      sub_232CEA5E0();
    }
  }

  v82 = *MEMORY[0x277D067B0];
  sub_232BA55A4();
  sub_232B6D6C0(v83, v84, v85, v86, v87);
  if (v88)
  {
    sub_232BA5D68();
    swift_isUniquelyReferenced_nonNull_native();
    v89 = sub_232BA50B0();
    sub_232B1FCE4(v89, v90, v82, v91);
  }

  else
  {
    sub_232BA658C();
    if (v92)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA5828();
      sub_232BA5C70();

      sub_232BA5744(v94, v95, v96, v97);
      sub_232BA4E80();
      sub_232BA4DA4(v98, v99, &unk_232CF5390);
      sub_232BA5C94();
      sub_232CEA5E0();
    }
  }

  sub_232BA55A4();
  v105 = sub_232B6D6C0(v100, v101, v102, v103, v104);
  sub_232B7C2EC(v105, v106);
  sub_232BA5B08();
  v107 = MEMORY[0x277CCA6E8];
  if (v11)
  {
    v108 = *MEMORY[0x277D06778];
    swift_isUniquelyReferenced_nonNull_native();
    v109 = sub_232BA50B0();
    sub_232B1FCE4(v109, v110, v108, v111);
    v112 = *MEMORY[0x277D06760];
    sub_232BA7428();
    if (v113)
    {
      sub_232BA5D0C();
      v114 = sub_232BA5098();
      sub_232B1FCE4(v114, v115, v112, v116);
    }

    else
    {
      sub_232BA655C();
      if (v117)
      {
        sub_232BA6574();
        sub_232BA5634();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA5890();
        sub_232BA5C70();

        sub_232BA5764(v119, v120, v121, v122);
        sub_232BA4E80();
        sub_232BA4DA4(v123, v124, &unk_232CF5390);
        sub_232BA5CAC();
        sub_232CEA5E0();
      }
    }

    v125 = *MEMORY[0x277D06748];
    sub_232B2053C();
    if (v126)
    {
      sub_232BA5D0C();
      v127 = sub_232BA5098();
      sub_232B1FCE4(v127, v128, v125, v129);
    }

    else
    {
      sub_232BA655C();
      if (v130)
      {
        sub_232BA6574();
        sub_232BA5634();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA5890();
        sub_232BA5C70();

        sub_232BA5764(v132, v133, v134, v135);
        sub_232BA4E80();
        sub_232BA4DA4(v136, v137, &unk_232CF5390);
        sub_232BA5CAC();
        sub_232CEA5E0();
      }
    }

    v138 = *MEMORY[0x277D06758];
    sub_232B2053C();
    if (v139)
    {
      sub_232BA5D0C();
      v140 = sub_232BA5098();
      sub_232B1FCE4(v140, v141, v138, v142);
    }

    else
    {
      sub_232BA655C();
      if (v143)
      {
        sub_232BA6574();
        sub_232BA5634();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA5890();
        sub_232BA5C70();

        sub_232BA5764(v145, v146, v147, v148);
        sub_232BA4E80();
        sub_232BA4DA4(v149, v150, &unk_232CF5390);
        sub_232BA5CAC();
        sub_232CEA5E0();
      }
    }

    v151 = *MEMORY[0x277D06750];
    sub_232B2053C();
    if (v152)
    {
      sub_232BA5D0C();
      v153 = sub_232BA5098();
      sub_232B1FCE4(v153, v154, v151, v155);
    }

    else
    {
      sub_232BA655C();
      if (v156)
      {
        sub_232BA6574();
        sub_232BA5634();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA5890();
        sub_232BA5C70();

        sub_232BA5764(v158, v159, v160, v161);
        sub_232BA4E80();
        sub_232BA4DA4(v162, v163, &unk_232CF5390);
        sub_232BA5CAC();
        sub_232CEA5E0();
      }
    }

    v164 = *MEMORY[0x277D06768];
    sub_232B2053C();
    sub_232BA5D28();

    if (v108)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v165 = sub_232BA5098();
      sub_232B1FCE4(v165, v166, v164, v167);
    }

    else
    {
      sub_232BA655C();
      if (v168)
      {
        sub_232BA5CA0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_232BA5538();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA5828();
        sub_232BA5C70();

        sub_232BA5744(v170, v171, v172, v173);
        sub_232BA4E80();
        sub_232BA4DA4(v174, v175, &unk_232CF5390);
        sub_232BA5C94();
        sub_232CEA5E0();
      }
    }
  }

  sub_232B811BC(*(v10 + 176));
  v176 = *MEMORY[0x277D06770];
  sub_232BA6170();
  sub_232BA6044();
  sub_232B7AD98(v177, v178, v179, v180, v181, v182, v183, v184);
  if (v185)
  {
    sub_232BA65BC();
    v186 = sub_232BA525C();
    sub_232BA6980(v186, v187, v188, v189);
  }

  else
  {
    sub_232BA66B8();
    if (v190)
    {
      sub_232BA67B0();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA5828();
      sub_232BA5C70();

      sub_232BA5918(v192, v193, v194, v195);
      sub_232BA4E80();
      sub_232BA4DA4(v196, v197, &unk_232CF5390);
      sub_232BA5D34();
      sub_232CEA5E0();
    }
  }

  sub_232BA55A4();
  v203 = sub_232B6D6C0(v198, v199, v200, v201, v202);
  v205 = v204;
  sub_232B7C2EC(v203, v204);
  sub_232BA6298();
  v207 = v206;

  if (v107)
  {
    v208 = *MEMORY[0x277D065B8];
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA548C();
    v209 = sub_232B45AB0();
    sub_232B1FCE4(v209, v210, v208, v211);
    v212 = *MEMORY[0x277D065A0];
    sub_232B2053C();
    if (v213)
    {
      sub_232BA6900();
      sub_232BA525C();
      sub_232BA6498();
      sub_232B1FCE4(v214, v215, v216, v217);
    }

    else
    {
      sub_232BA6858();
      if (v218)
      {
        sub_232BA6918();
        sub_232BA5538();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA5828();
        sub_232BA5C70();

        sub_232BA5A70(v220, v221, v222, v223);
        sub_232BA4E80();
        sub_232BA4DA4(v224, v225, &unk_232CF5390);
        sub_232BA5D34();
        sub_232CEA5E0();
      }
    }

    v226 = *MEMORY[0x277D06588];
    sub_232B2053C();
    if (v227)
    {
      sub_232BA6900();
      sub_232BA525C();
      sub_232BA6498();
      sub_232B1FCE4(v228, v229, v230, v231);
    }

    else
    {
      sub_232BA6858();
      if (v232)
      {
        sub_232BA6918();
        sub_232BA5538();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA5828();
        sub_232BA5C70();

        sub_232BA5A70(v234, v235, v236, v237);
        sub_232BA4E80();
        sub_232BA4DA4(v238, v239, &unk_232CF5390);
        sub_232BA5D34();
        sub_232CEA5E0();
      }
    }

    v240 = *MEMORY[0x277D06598];
    sub_232B2053C();
    if (v241)
    {
      sub_232BA6900();
      sub_232BA525C();
      sub_232BA6498();
      sub_232B1FCE4(v242, v243, v244, v245);
    }

    else
    {
      sub_232BA6858();
      if (v246)
      {
        sub_232BA6918();
        sub_232BA5538();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA5828();
        sub_232BA5C70();

        sub_232BA5A70(v248, v249, v250, v251);
        sub_232BA4E80();
        sub_232BA4DA4(v252, v253, &unk_232CF5390);
        sub_232BA5D34();
        sub_232CEA5E0();
      }
    }

    v254 = *MEMORY[0x277D06590];
    sub_232B2053C();
    if (v255)
    {
      sub_232BA6900();
      sub_232BA525C();
      sub_232BA6498();
      sub_232B1FCE4(v256, v257, v258, v259);
    }

    else
    {
      sub_232BA6858();
      if (v260)
      {
        sub_232BA6918();
        sub_232BA5538();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA5828();
        sub_232BA5C70();

        sub_232BA5A70(v262, v263, v264, v265);
        sub_232BA4E80();
        sub_232BA4DA4(v266, v267, &unk_232CF5390);
        sub_232BA5D34();
        sub_232CEA5E0();
      }
    }

    v268 = *MEMORY[0x277D065A8];
    v269 = sub_232B2053C();
    v271 = v270;

    if (v271)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA548C();
      sub_232B1FCE4(v269, v271, v268, v272);
    }

    else
    {
      sub_232BA6858();
      if (v273)
      {
        sub_232BA67B0();
        sub_232BA5538();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA5828();
        sub_232BA5C70();

        sub_232BA5918(v275, v276, v277, v278);
        sub_232BA4E80();
        sub_232BA4DA4(v279, v280, &unk_232CF5390);
        sub_232BA5D34();
        sub_232CEA5E0();
      }
    }
  }

  v281 = *MEMORY[0x277D065B0];
  sub_232BA6170();
  sub_232BA6044();
  sub_232B7AD98(v282, v283, v284, v285, v286, v287, v288, v289);
  if (v290)
  {
    sub_232BA61C8();
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA548C();
    v291 = sub_232BA5FEC();
    sub_232B1FCE4(v291, v292, v281, v293);
  }

  else
  {
    sub_232BA66B8();
    if (v294)
    {
      sub_232BA6A54();
      sub_232BA5E70();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5BA0(v296, v297, v298, v299);
      sub_232BA4E80();
      sub_232BA4DA4(v300, v301, &unk_232CF5390);
      sub_232BA59E0();
      sub_232CEA5E0();
    }
  }

  sub_232CE9D50();
  sub_232BA5EAC();
  swift_isUniquelyReferenced_nonNull_native();
  v302 = sub_232BA52D8();
  sub_232BA6B24(v302, v303, v304, v305);
  sub_232BA6530();
  sub_232BA5F44();

  v306 = swift_isUniquelyReferenced_nonNull_native();
  sub_232BA55B4(v306);
  sub_232BA6504();
  sub_232BA5F44();

  v307 = swift_isUniquelyReferenced_nonNull_native();
  sub_232BA55B4(v307);
  sub_232BC2214(a10);
  sub_232B26CE8();

  sub_232B803F8(v205, v308, v309, v310);
  sub_232B26D00();

  sub_232BA6234();
}

void sub_232B8298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_232BA66A0();
  v16 = v15;
  v18 = v17;
  sub_232BA5AD8();
  sub_232BA667C();
  sub_232CE98C0();
  if (v13)
  {
    sub_232CE98D0();
    sub_232BA5190();
    (*(v19 + 8))(v16);
  }

  else
  {
    sub_232BA56B0();
    sub_232CE98C0();
    sub_232BA6658();
    sub_232CE98C0();
    sub_232BA723C();
    v30 = v20;
    sub_232BA55DC();
    sub_232CE98C0();
    sub_232BA667C();
    sub_232CE98C0();
    sub_232BA723C();
    v29 = v21;
    v22 = sub_232BA6160();
    sub_232BA5C14(v22);
    sub_232CE98C0();
    sub_232BA723C();
    v28 = v23;
    sub_232BA6C74();
    sub_232CE98C0();
    sub_232BA723C();
    v27 = v24;
    sub_232BA6160();
    sub_232CE98C0();
    sub_232BA6C74();
    sub_232CE98C0();
    sub_232BA6160();
    sub_232BA667C();
    sub_232CE98C0();
    sub_232BA6C74();
    sub_232CE98C0();
    sub_232BA1EE8();
    v25 = sub_232BA5AD8();
    sub_232BA6430(v25);
    sub_232CE98C0();
    sub_232CE98D0();
    sub_232BA5190();
    (*(v26 + 8))(v16);
    __src[0] = v33;
    __src[1] = v34;
    __src[2] = v33;
    __src[3] = v34;
    __src[4] = v14;
    __src[5] = v30;
    __src[6] = v33;
    __src[7] = v34;
    __src[8] = v14;
    __src[9] = v29;
    __src[10] = v14;
    __src[11] = v28;
    __src[12] = v14;
    __src[13] = v27;
    __src[14] = v33;
    __src[15] = v34;
    __src[16] = v33;
    __src[17] = v34;
    __src[18] = v33;
    __src[19] = v34;
    __src[20] = v33;
    __src[21] = v34;
    LOBYTE(__src[22]) = a13;
    v35 = v33;
    v36 = v34;
    v37 = v14;
    v38 = v30;
    v39 = v33;
    v40 = v34;
    v41 = v14;
    v42 = v29;
    v43 = v14;
    v44 = v28;
    v45 = v14;
    v46 = v27;
    v47 = v33;
    v48 = v34;
    v49 = v33;
    v50 = v34;
    v51 = v33;
    v52 = v34;
    v53 = v33;
    v54 = v34;
    v55 = a13;
    sub_232BA1F3C(__src, v31);
    sub_232BA1F74(&v33);
    memcpy(v18, __src, 0xB1uLL);
  }

  sub_232BA6688();
}

uint64_t sub_232B8318C()
{
  v0 = sub_232CE9940();
  sub_232B135FC(v0, qword_2814E3DD8);
  sub_232B135C4(v0, qword_2814E3DD8);
  sub_232B124A8(&qword_27DDC7418, &qword_232CF9100);
  sub_232CE9920();
  *(swift_allocObject() + 16) = xmmword_232CF89F0;
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232CE9910();
  sub_232BA1EE8();
  sub_232CE9910();
  return sub_232CE9930();
}

void sub_232B834F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_232BA6250();
  sub_232BA6420();
  sub_232BA5F5C();
  v20 = sub_232B6E458(v15, v16, v17, v18, v19);
  v22 = v21;
  v23 = *MEMORY[0x277D06650];
  if (v21)
  {
    v24 = MEMORY[0x277D84F98];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a10 = v24;
    sub_232BA6BE4(v20, v26, v27, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_232BA66B8();
    if (v28)
    {
      sub_232BA67B0();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5918(v30, v31, v32, v33);
      v11 = v34;
      sub_232BA4E80();
      sub_232BA4DA4(v35, v36, &unk_232CF5390);
      sub_232BA5880();
      sub_232CEA5E0();
    }
  }

  v550 = v13;
  sub_232B6E458(*(v10 + 8), *(v10 + 16), v12, v13, &unk_28480EFD0);
  v37 = *MEMORY[0x277D06668];
  sub_232BA6E0C();
  sub_232BA6298();

  if (v14)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA548C();
    v38 = sub_232B45AB0();
    sub_232B1FCE4(v38, v39, v37, v40);
  }

  else
  {
    sub_232BA66B8();
    if (v41)
    {
      sub_232BA67B0();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5918(v43, v44, v45, v46);
      v11 = v47;
      sub_232BA4E80();
      sub_232BA4DA4(v48, v49, &unk_232CF5390);
      sub_232BA5880();
      sub_232CEA5E0();
    }
  }

  sub_232BA5E88();
  sub_232B6E458(v50, v51, v52, v53, v54);
  v55 = *MEMORY[0x277D067A0];
  sub_232BA6E0C();
  v57 = v56;

  if (v57)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v58 = sub_232BA525C();
    sub_232BA6980(v58, v59, v60, v61);
  }

  else
  {
    sub_232BA66B8();
    if (v62)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v64, v65, v66, v67);
      v11 = v68;
      sub_232BA4E80();
      sub_232BA4DA4(v69, v70, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  v71 = *MEMORY[0x277D06660];
  sub_232BA63D0();
  sub_232BA6AEC();
  sub_232B7B21C(v72, v73, v74, v75, v76, v77, v78, v79);
  if (v80)
  {
    sub_232BA5E28();
    sub_232BA52D8();
    sub_232BA5E94();
    sub_232B1FCE4(v81, v82, v83, v84);
  }

  else
  {
    sub_232BA658C();
    if (v85)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v87, v88, v89, v90);
      v11 = v91;
      sub_232BA4E80();
      sub_232BA4DA4(v92, v93, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  v94 = *MEMORY[0x277D06720];
  sub_232BA5E88();
  sub_232B6E458(v95, v96, v97, v98, v99);
  if (v100)
  {
    sub_232BA5E28();
    sub_232BA52D8();
    sub_232BA5E94();
    sub_232B1FCE4(v101, v102, v103, v104);
  }

  else
  {
    sub_232BA658C();
    if (v105)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v107, v108, v109, v110);
      v11 = v111;
      sub_232BA4E80();
      sub_232BA4DA4(v112, v113, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  v114 = *MEMORY[0x277D06728];
  sub_232BA5E88();
  sub_232B6E458(v115, v116, v117, v118, v119);
  if (v120)
  {
    sub_232BA5E28();
    sub_232BA52D8();
    sub_232BA5E94();
    sub_232B1FCE4(v121, v122, v123, v124);
  }

  else
  {
    sub_232BA658C();
    if (v125)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v127, v128, v129, v130);
      v11 = v131;
      sub_232BA4E80();
      sub_232BA4DA4(v132, v133, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  v134 = *MEMORY[0x277D06498];
  sub_232BA5E88();
  sub_232B6E458(v135, v136, v137, v138, v139);
  if (v140)
  {
    sub_232BA5E28();
    sub_232BA52D8();
    sub_232BA5E94();
    sub_232B1FCE4(v141, v142, v143, v144);
  }

  else
  {
    sub_232BA658C();
    if (v145)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v147, v148, v149, v150);
      v11 = v151;
      sub_232BA4E80();
      sub_232BA4DA4(v152, v153, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  v154 = *MEMORY[0x277D06710];
  sub_232BA5E88();
  sub_232B6E458(v155, v156, v157, v158, v159);
  if (v160)
  {
    sub_232BA5E28();
    sub_232BA52D8();
    sub_232BA5E94();
    sub_232B1FCE4(v161, v162, v163, v164);
  }

  else
  {
    sub_232BA658C();
    if (v165)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v167, v168, v169, v170);
      v11 = v171;
      sub_232BA4E80();
      sub_232BA4DA4(v172, v173, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  v174 = *MEMORY[0x277D06490];
  sub_232BA5E88();
  sub_232B6E458(v175, v176, v177, v178, v179);
  if (v180)
  {
    sub_232BA5E28();
    sub_232BA52D8();
    sub_232BA5E94();
    sub_232B1FCE4(v181, v182, v183, v184);
  }

  else
  {
    sub_232BA658C();
    if (v185)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v187, v188, v189, v190);
      v11 = v191;
      sub_232BA4E80();
      sub_232BA4DA4(v192, v193, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  v194 = *MEMORY[0x277D06680];
  sub_232BA5E88();
  sub_232B6E458(v195, v196, v197, v198, v199);
  if (v200)
  {
    sub_232BA5E28();
    sub_232BA52D8();
    sub_232BA5E94();
    sub_232B1FCE4(v201, v202, v203, v204);
  }

  else
  {
    sub_232BA658C();
    if (v205)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v207, v208, v209, v210);
      v11 = v211;
      sub_232BA4E80();
      sub_232BA4DA4(v212, v213, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  v214 = *MEMORY[0x277D06648];
  sub_232BA5E88();
  sub_232B6E458(v215, v216, v217, v218, v219);
  if (v220)
  {
    sub_232BA5E28();
    sub_232BA52D8();
    sub_232BA5E94();
    sub_232B1FCE4(v221, v222, v223, v224);
  }

  else
  {
    sub_232BA658C();
    if (v225)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v227, v228, v229, v230);
      v11 = v231;
      sub_232BA4E80();
      sub_232BA4DA4(v232, v233, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  v234 = *MEMORY[0x277D06730];
  sub_232BA5E88();
  sub_232B6E458(v235, v236, v237, v238, v239);
  if (v240)
  {
    sub_232BA5E28();
    sub_232BA52D8();
    sub_232BA5E94();
    sub_232B1FCE4(v241, v242, v243, v244);
  }

  else
  {
    sub_232BA658C();
    if (v245)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v247, v248, v249, v250);
      v11 = v251;
      sub_232BA4E80();
      sub_232BA4DA4(v252, v253, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  v254 = *MEMORY[0x277D064A0];
  sub_232BA5E88();
  sub_232B6E458(v255, v256, v257, v258, v259);
  if (v260)
  {
    sub_232BA5E28();
    sub_232BA52D8();
    sub_232BA5E94();
    sub_232B1FCE4(v261, v262, v263, v264);
  }

  else
  {
    sub_232BA658C();
    if (v265)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v267, v268, v269, v270);
      v11 = v271;
      sub_232BA4E80();
      sub_232BA4DA4(v272, v273, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  sub_232BA5E88();
  v279 = sub_232B6E458(v274, v275, v276, v277, v278);
  sub_232B7C2EC(v279, v280);
  sub_232BA5B08();
  v281 = MEMORY[0x277CCA6F0];
  if (v55)
  {
    v11 = *MEMORY[0x277D066D8];
    swift_isUniquelyReferenced_nonNull_native();
    v282 = sub_232BA50B0();
    sub_232B1FCE4(v282, v283, v11, v284);
    v285 = *MEMORY[0x277D066F8];
    sub_232BA7428();
    if (v286)
    {
      sub_232BA5F0C();
      sub_232BA52D8();
      sub_232BA5FF8();
      sub_232B1FCE4(v287, v288, v289, v290);
    }

    else
    {
      sub_232BA655C();
      if (v291)
      {
        sub_232BA6574();
        sub_232BA5644();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA55FC();
        sub_232CEA5C0();
        sub_232BA5C70();

        sub_232BA5764(v293, v294, v295, v296);
        v11 = v297;
        sub_232BA4E80();
        sub_232BA4DA4(v298, v299, &unk_232CF5390);
        sub_232BA5578();
        sub_232CEA5E0();
      }
    }

    v300 = *MEMORY[0x277D066E0];
    sub_232B2053C();
    if (v301)
    {
      sub_232BA5F0C();
      sub_232BA52D8();
      sub_232BA5FF8();
      sub_232B1FCE4(v302, v303, v304, v305);
    }

    else
    {
      sub_232BA655C();
      if (v306)
      {
        sub_232BA6574();
        sub_232BA5644();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA55FC();
        sub_232CEA5C0();
        sub_232BA5C70();

        sub_232BA5764(v308, v309, v310, v311);
        v11 = v312;
        sub_232BA4E80();
        sub_232BA4DA4(v313, v314, &unk_232CF5390);
        sub_232BA5578();
        sub_232CEA5E0();
      }
    }

    v315 = *MEMORY[0x277D066F0];
    sub_232B2053C();
    if (v316)
    {
      sub_232BA5F0C();
      sub_232BA52D8();
      sub_232BA5FF8();
      sub_232B1FCE4(v317, v318, v319, v320);
    }

    else
    {
      sub_232BA655C();
      if (v321)
      {
        sub_232BA6574();
        sub_232BA5644();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA55FC();
        sub_232CEA5C0();
        sub_232BA5C70();

        sub_232BA5764(v323, v324, v325, v326);
        v11 = v327;
        sub_232BA4E80();
        sub_232BA4DA4(v328, v329, &unk_232CF5390);
        sub_232BA5578();
        sub_232CEA5E0();
      }
    }

    v330 = *MEMORY[0x277D066E8];
    sub_232B2053C();
    if (v331)
    {
      sub_232BA5F0C();
      sub_232BA52D8();
      sub_232BA5FF8();
      sub_232B1FCE4(v332, v333, v334, v335);
    }

    else
    {
      sub_232BA655C();
      if (v336)
      {
        sub_232BA6574();
        sub_232BA5644();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA55FC();
        sub_232CEA5C0();
        sub_232BA5C70();

        sub_232BA5764(v338, v339, v340, v341);
        v11 = v342;
        sub_232BA4E80();
        sub_232BA4DA4(v343, v344, &unk_232CF5390);
        sub_232BA5578();
        sub_232CEA5E0();
      }
    }

    v345 = *MEMORY[0x277D06700];
    sub_232B2053C();
    sub_232BA5D28();

    if (v281)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v346 = sub_232BA5098();
      sub_232B1FCE4(v346, v347, v345, v348);
    }

    else
    {
      sub_232BA655C();
      if (v349)
      {
        sub_232BA5CA0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_232BA5644();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA55FC();
        sub_232CEA5C0();
        sub_232BA5C70();

        sub_232BA5744(v351, v352, v353, v354);
        v11 = v355;
        sub_232BA4E80();
        sub_232BA4DA4(v356, v357, &unk_232CF5390);
        sub_232BA550C();
        sub_232CEA5E0();
      }
    }

    v281 = MEMORY[0x277CCA6F0];
  }

  v358 = sub_232B6E458(*(v10 + 168), *(v10 + 176), v12, v550, &unk_28480EEB0);
  sub_232B7C2EC(v358, v359);
  sub_232BA5B08();
  if (v55)
  {
    v11 = *MEMORY[0x277D06460];
    swift_isUniquelyReferenced_nonNull_native();
    v360 = sub_232BA50B0();
    sub_232B1FCE4(v360, v361, v11, v362);
    v363 = *MEMORY[0x277D06480];
    sub_232BA7428();
    if (v364)
    {
      sub_232BA5F0C();
      sub_232BA52D8();
      sub_232BA5FF8();
      sub_232B1FCE4(v365, v366, v367, v368);
      v369 = v550;
    }

    else
    {
      sub_232BA655C();
      v369 = v550;
      if (v370)
      {
        sub_232BA6574();
        sub_232BA5644();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA55FC();
        sub_232CEA5C0();
        sub_232BA5C70();

        sub_232BA5764(v372, v373, v374, v375);
        v11 = v376;
        sub_232BA4E80();
        sub_232BA4DA4(v377, v378, &unk_232CF5390);
        sub_232BA5578();
        sub_232CEA5E0();
      }
    }

    v379 = *MEMORY[0x277D06468];
    sub_232B2053C();
    if (v380)
    {
      sub_232BA5F0C();
      sub_232BA52D8();
      sub_232BA5FF8();
      sub_232B1FCE4(v381, v382, v383, v384);
    }

    else
    {
      sub_232BA655C();
      if (v385)
      {
        sub_232BA6574();
        sub_232BA5644();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA55FC();
        sub_232CEA5C0();
        sub_232BA5C70();

        sub_232BA5764(v387, v388, v389, v390);
        v11 = v391;
        sub_232BA4E80();
        sub_232BA4DA4(v392, v393, &unk_232CF5390);
        sub_232BA5578();
        sub_232CEA5E0();
      }
    }

    v394 = *MEMORY[0x277D06478];
    sub_232B2053C();
    if (v395)
    {
      sub_232BA5F0C();
      sub_232BA52D8();
      sub_232BA5FF8();
      sub_232B1FCE4(v396, v397, v398, v399);
    }

    else
    {
      sub_232BA655C();
      if (v400)
      {
        sub_232BA6574();
        sub_232BA5644();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA55FC();
        sub_232CEA5C0();
        sub_232BA5C70();

        sub_232BA5764(v402, v403, v404, v405);
        v11 = v406;
        sub_232BA4E80();
        sub_232BA4DA4(v407, v408, &unk_232CF5390);
        sub_232BA5578();
        sub_232CEA5E0();
      }
    }

    v409 = *MEMORY[0x277D06470];
    sub_232B2053C();
    if (v410)
    {
      sub_232BA5F0C();
      sub_232BA52D8();
      sub_232BA5FF8();
      sub_232B1FCE4(v411, v412, v413, v414);
    }

    else
    {
      sub_232BA655C();
      if (v415)
      {
        sub_232BA6574();
        sub_232BA5644();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA55FC();
        sub_232CEA5C0();
        sub_232BA5C70();

        sub_232BA5764(v417, v418, v419, v420);
        v11 = v421;
        sub_232BA4E80();
        sub_232BA4DA4(v422, v423, &unk_232CF5390);
        sub_232BA5578();
        sub_232CEA5E0();
      }
    }

    v424 = *MEMORY[0x277D06488];
    sub_232B2053C();
    sub_232BA5D28();

    if (v281)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v425 = sub_232BA5098();
      sub_232B1FCE4(v425, v426, v424, v427);
    }

    else
    {
      sub_232BA655C();
      if (v428)
      {
        sub_232BA5CA0();
        swift_isUniquelyReferenced_nonNull_native();
        sub_232BA5644();
        sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
        sub_232BA55FC();
        sub_232CEA5C0();
        sub_232BA5C70();

        sub_232BA5744(v430, v431, v432, v433);
        v11 = v434;
        sub_232BA4E80();
        sub_232BA4DA4(v435, v436, &unk_232CF5390);
        sub_232BA550C();
        sub_232CEA5E0();
      }
    }
  }

  else
  {
    v369 = v550;
  }

  v437 = *MEMORY[0x277D06798];
  v438 = *MEMORY[0x277D06538];
  v439 = sub_232B7F818(*(v10 + 216), *(v10 + 224), *(v10 + 232), *(v10 + 240), v12, v369);
  v441 = v440;
  v443 = v442;
  if (v444)
  {
    v445 = v439;
    sub_232BA6A6C();
    sub_232BA548C();
    sub_232B1FCE4(v445, v11, v437, v446);
  }

  else
  {
    sub_232BA6858();
    if (v447)
    {
      sub_232BA6918();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5A70(v449, v450, v451, v452);
      sub_232BA4E80();
      sub_232BA4DA4(v453, v454, &unk_232CF5390);
      sub_232BA5C64();
      sub_232CEA5E0();
    }
  }

  if (v443)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v455 = sub_232BA50B0();
    sub_232B1FCE4(v455, v456, v438, v457);
  }

  else
  {
    sub_232BA658C();
    if (v458)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v460, v461, v462, v463);
      sub_232BA4E80();
      sub_232BA4DA4(v464, v465, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  sub_232BA639C();
  sub_232BA6410();
  sub_232B7B21C(v466, v467, v468, v469, v470, v471, v472, v473);
  sub_232B77E18();
  sub_232BA5D28();
  sub_232BA6930();
  v474 = *MEMORY[0x277D065E0];
  if (v550)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v475 = sub_232BA5098();
    sub_232B1FCE4(v475, v476, v474, v477);
  }

  else
  {
    sub_232BA6AFC();
    if (v478)
    {
      sub_232BA67B0();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5918(v480, v481, v482, v483);
      sub_232BA4E80();
      sub_232BA4DA4(v484, v485, &unk_232CF5390);
      sub_232BA5880();
      sub_232CEA5E0();
    }
  }

  v486 = *MEMORY[0x277D065E8];
  if (v441)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA548C();
    v487 = sub_232BA6074();
    sub_232B1FCE4(v487, v488, v486, v489);
  }

  else
  {
    sub_232BA66B8();
    if (v490)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5644();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA55FC();
      sub_232CEA5C0();
      sub_232BA5C70();

      sub_232BA5744(v492, v493, v494, v495);
      sub_232BA4E80();
      sub_232BA4DA4(v496, v497, &unk_232CF5390);
      sub_232BA550C();
      sub_232CEA5E0();
    }
  }

  sub_232BA639C();
  sub_232BA6410();
  sub_232B7B21C(v498, v499, v500, v501, v502, v503, v504, v505);
  sub_232B77E18();
  sub_232BA6798();
  v507 = v506;

  v508 = *MEMORY[0x277D065D0];
  if (v441)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA548C();
    v509 = sub_232BA6074();
    sub_232B1FCE4(v509, v510, v508, v511);
  }

  else
  {
    sub_232BA66B8();
    if (v512)
    {
      sub_232BA5CA0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5538();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA5828();
      sub_232BA5C70();

      sub_232BA5744(v514, v515, v516, v517);
      sub_232BA4E80();
      sub_232BA4DA4(v518, v519, &unk_232CF5390);
      sub_232BA5C94();
      sub_232CEA5E0();
    }
  }

  if (v507)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_232BA52D8();
    sub_232BA6628();
    sub_232B1FCE4(v520, v521, v522, v523);
  }

  else
  {
    v524 = sub_232BA658C();
    if (v525)
    {
      v526 = v524;
      swift_isUniquelyReferenced_nonNull_native();
      sub_232BA5C88();
      sub_232B124A8(&qword_27DDC67C0, &unk_232CF5E20);
      sub_232BA5C7C();
      sub_232CEA5C0();
      sub_232BA5C70();

      v528 = sub_232BA5C4C();
      type metadata accessor for DUExtractionAttributeKey(v528, v529, v530, v531);
      sub_232BA4E80();
      sub_232BA4DA4(v532, v533, &unk_232CF5390);
      sub_232CEA5E0();
    }
  }

  v534 = *MEMORY[0x277D06670];
  v535 = sub_232B81390(*v10);
  v536 = sub_232CE9D50();
  v538 = v537;

  swift_isUniquelyReferenced_nonNull_native();
  sub_232BA548C();
  sub_232B1FCE4(v536, v538, v534, v539);
  sub_232CE9D50();
  sub_232BA5F44();
  v540 = swift_isUniquelyReferenced_nonNull_native();
  sub_232BA5A50(v540, v541, v542, v540);
  v543 = sub_232B81520(*(v10 + 344));
  sub_232CE9D50();
  sub_232BA5F44();

  v544 = swift_isUniquelyReferenced_nonNull_native();
  sub_232BA5A50(v544, v545, v546, v544);
  sub_232BC2214(a10);
  sub_232B26CE8();

  sub_232B803F8(a10, v547, v548, v549);
  sub_232B26D00();

  sub_232BA6234();
}