void sub_22C7F5258()
{
  sub_22C36BA7C();
  sub_22C369A48();
  sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C36993C();
  MEMORY[0x28223BE20](v8);
  sub_22C370404();
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB714(v9, v10, v11, v12, v13, v14, v15, v16);
  sub_22C370A78();
  if (!v17)
  {
    if (v4 < 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v18 = sub_22C380618();
    sub_22C60610C(v18, v19, v20);
    sub_22C37B814();
    if (v6)
    {
      sub_22C7FDDB8(v21, v22, v23);
      v28 = sub_22C3745F8();
      if (!sub_22C7FDDA0(v28))
      {
        swift_unknownObjectRelease();
      }

      sub_22C37BC74();
      if (v36)
      {
        goto LABEL_32;
      }

      sub_22C7FDD04();
      if (!v17)
      {
        goto LABEL_33;
      }

      swift_dynamicCastClass();
      sub_22C7FDDD0();
      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    while (1)
    {
      v24 = sub_22C37E804();
      sub_22C47017C(v24, v25, v26, v27);
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      sub_22C7FDCF8();
      if (v29)
      {
        break;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_unknownObjectRelease();
      sub_22C7FDCC4();
    }

    v30 = sub_22C3855B8();
    v33 = sub_22C60610C(v30, v31, v32);
    sub_22C380078(v33, v34);

    sub_22C38C134();
    while (1)
    {
      sub_22C386BD4();
      if (v17)
      {
        swift_unknownObjectRelease();

        goto LABEL_29;
      }

      if (v35 == v36)
      {
        __break(1u);
        goto LABEL_30;
      }

      v37 = sub_22C7FDBD0();
      v5(v37);
      sub_22C372E08();
      if (!v3)
      {
        break;
      }

      sub_22C7FDBF8();
      sub_22C7DBC48();
      sub_22C7FDC74();
      if (v0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v42 = sub_22C36C494();
      v43(v42);
    }

    v3 = v2 + 1;
    while (--v3)
    {
      v38 = sub_22C37512C();
      v5(v38);
      v39 = sub_22C7FB604(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
      sub_22C36DB90(v39);
      v40 = sub_22C3892EC();
      v41(v40);
      v0 = v1;
      if (v2)
      {
        goto LABEL_27;
      }
    }

    v2 = 0;
LABEL_26:
    sub_22C37FB0C();
    sub_22C7D4F14();
    goto LABEL_27;
  }

LABEL_29:
  sub_22C379B84();
  sub_22C36CC48();
}

uint64_t sub_22C7F54FC()
{
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB64C(v6, v7, v8, v9, v10, v11, v12);
  sub_22C7FDD30();
  if (!v13)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_22C633A28();
    sub_22C37B448();
    if (v5)
    {
      sub_22C90B50C();
      sub_22C386898();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
        swift_unknownObjectRelease();
        v20 = MEMORY[0x277D84F90];
      }

      v21 = *(v20 + 16);

      if (__OFSUB__(v5 >> 1, v4))
      {
        goto LABEL_28;
      }

      if (v21 != (v5 >> 1) - v4)
      {
        goto LABEL_29;
      }

      v19 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v19)
      {
        goto LABEL_12;
      }

      v19 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    while (1)
    {
      v14 = sub_22C3759D0();
      sub_22C4701A8(v14, v15, v16, v17);
      v19 = v18;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v29 = v19;
      if (v1 >= v2)
      {
        break;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      swift_unknownObjectRelease();
    }

    sub_22C633A28();
    sub_22C7FDCA0();

    v22 = v19 >> 1;
    while (1)
    {
LABEL_14:
      if (v3 == v22)
      {
        swift_unknownObjectRelease();

        return sub_22C36BA00();
      }

      if (v3 >= v22)
      {
        __break(1u);
        goto LABEL_26;
      }

      v23 = *(v2 + 8 * v3++);
      v24 = (v29 + 32);
      v25 = *(v29 + 16);
      if (v0)
      {
        sub_22C7DD10C(v24, v23, v25, (v0 + 16));
        if (v26)
        {
          goto LABEL_23;
        }
      }

      else
      {
        while (v25)
        {
          v27 = *v24++;
          --v25;
          if (v27 == v23)
          {
            goto LABEL_14;
          }
        }

LABEL_23:
        sub_22C7D5954(v23);
      }
    }
  }

  return sub_22C36BA00();
}

void sub_22C7F56F4()
{
  sub_22C36BA7C();
  sub_22C369A48();
  sub_22C9037EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v7);
  sub_22C36993C();
  MEMORY[0x28223BE20](v8);
  sub_22C370404();
  sub_22C3B0E80();
  sub_22C7FDC08();
  sub_22C7FB714(v9, v10, v11, v12, v13, v14, v15, v16);
  sub_22C370A78();
  if (!v17)
  {
    if (v4 < 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v18 = sub_22C380618();
    sub_22C60607C(v18, v19, v20);
    sub_22C37B814();
    if (v6)
    {
      sub_22C7FDDB8(v21, v22, v23);
      v28 = sub_22C3745F8();
      if (!sub_22C7FDDA0(v28))
      {
        swift_unknownObjectRelease();
      }

      sub_22C37BC74();
      if (v36)
      {
        goto LABEL_32;
      }

      sub_22C7FDD04();
      if (!v17)
      {
        goto LABEL_33;
      }

      swift_dynamicCastClass();
      sub_22C7FDDD0();
      if (v6)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    while (1)
    {
      v24 = sub_22C37E804();
      sub_22C46FEFC(v24, v25, v26, v27);
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      sub_22C7FDCF8();
      if (v29)
      {
        break;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      swift_unknownObjectRelease();
      sub_22C7FDCC4();
    }

    v30 = sub_22C3855B8();
    v33 = sub_22C60607C(v30, v31, v32);
    sub_22C380078(v33, v34);

    sub_22C38C134();
    while (1)
    {
      sub_22C386BD4();
      if (v17)
      {
        swift_unknownObjectRelease();

        goto LABEL_29;
      }

      if (v35 == v36)
      {
        __break(1u);
        goto LABEL_30;
      }

      v37 = sub_22C7FDBD0();
      v5(v37);
      sub_22C372E08();
      if (!v3)
      {
        break;
      }

      sub_22C7FDBF8();
      sub_22C7DD200();
      sub_22C7FDC74();
      if (v0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v43 = sub_22C36C494();
      v44(v43);
    }

    v3 = v2 + 1;
    while (--v3)
    {
      v38 = sub_22C37512C();
      v5(v38);
      sub_22C373A7C();
      v40 = sub_22C7FB604(&qword_281435760, v39, MEMORY[0x277D1EDA8]);
      sub_22C36DB90(v40);
      v41 = sub_22C3892EC();
      v42(v41);
      v0 = v1;
      if (v2)
      {
        goto LABEL_27;
      }
    }

    v2 = 0;
LABEL_26:
    sub_22C37FB0C();
    sub_22C7D5A80();
    goto LABEL_27;
  }

LABEL_29:
  sub_22C379B84();
  sub_22C36CC48();
}

void sub_22C7F5988()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_22C369A48();
  v7 = sub_22C9037EC();
  sub_22C369824();
  v52 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = sub_22C3B0E80();
  sub_22C7FB848(&v55, v0, v6, v4, v2, 0, 1, v16);
  v18 = v17;
  v19 = v2 >> 1;
  v20 = v55;
  if (v55 != v2 >> 1)
  {
    if (v55 < v4)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v53 = v2 >> 1;
    v51 = v6;
    v23 = sub_22C3E1F20();
    v25 = v24;
    v54 = v15;
    v49 = v18;
    if (v24)
    {
      v50 = v22;
      v48 = v21;
      sub_22C90B50C();
      swift_unknownObjectRetain_n();
      v30 = swift_dynamicCastClass();
      if (!v30)
      {
        swift_unknownObjectRelease();
        v30 = MEMORY[0x277D84F90];
      }

      v31 = *(v30 + 16);

      if (__OFSUB__(v25 >> 1, v50))
      {
        __break(1u);
      }

      else if (v31 == (v25 >> 1) - v50)
      {
        v6 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v18 = v49;
        v15 = v54;
        if (v6)
        {
          goto LABEL_20;
        }

        v6 = MEMORY[0x277D84F90];
LABEL_19:
        swift_unknownObjectRelease();
LABEL_20:
        v56[0] = v18;
        v56[1] = v6;
        if (v53 >= v20)
        {
          v48 = sub_22C3E1F20();
          v50 = v32;
          v2 = v33;
          v35 = v34;

          swift_unknownObjectRelease();
          v51 = (v35 >> 1);
          v4 = v52 + 16;
          for (i = (v52 + 8); ; (*i)(v54, v7))
          {
            sub_22C386BD4();
            if (v39)
            {
              swift_unknownObjectRelease();

              goto LABEL_35;
            }

            if (v37 == v38)
            {
              __break(1u);
              goto LABEL_36;
            }

            v40 = *(v52 + 72);
            v53 = v2;
            v6 = *(v52 + 16);
            v6(v15, v50 + v40 * v2, v7);
            v0 = v56[0];
            sub_22C37BEE8();
            v43 = v41 + v42;
            if (!v0)
            {
              break;
            }

            sub_22C7DD200();
            v45 = v44;

            if (v45)
            {
              goto LABEL_32;
            }

LABEL_33:
            v15 = v54;
            v2 = v53 + 1;
          }

          v46 = *(v41 + 16) + 1;
          while (--v46)
          {
            v6(v12, v43, v7);
            sub_22C373A7C();
            sub_22C7FB604(&qword_281435760, v47, MEMORY[0x277D1EDA8]);
            v0 = sub_22C90A0BC();
            (*i)(v12, v7);
            v43 += v40;
            if (v0)
            {
              goto LABEL_33;
            }
          }

LABEL_32:
          v0 = v56;
          sub_22C7D5A80();
          goto LABEL_33;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      swift_unknownObjectRelease();
      v18 = v49;
      v22 = v50;
      v15 = v54;
      v21 = v48;
    }

    sub_22C46FEFC(v23, v21, v22, v25);
    v6 = v26;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
LABEL_3:
    sub_22C46FEFC(v0, v6, v4, v2);
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  sub_22C90B50C();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x277D84F90];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(v19, v4))
  {
    goto LABEL_38;
  }

  if (v28 != v19 - v4)
  {
LABEL_39:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v29 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v29)
  {
    goto LABEL_12;
  }

LABEL_35:
  sub_22C36CC48();
}

uint64_t sub_22C7F5E00(uint64_t a1)
{
  sub_22C9093EC();
  sub_22C3858B4();
  v1 = sub_22C90AD9C();

  v2 = sub_22C3A5CEC(v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  if (!v8)
  {
    return 0;
  }

  v9 = MEMORY[0x2318B76D0](v2, v4, v6, v8);

  return v9;
}

void sub_22C7F5ED0()
{
  sub_22C36BA7C();
  v71 = sub_22C90981C();
  sub_22C369824();
  v67 = v1;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v69 = v4 - v3;
  v68 = sub_22C90941C();
  sub_22C369824();
  v61 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v70 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v60 = &v60 - v10;
  v76 = 8227;
  v77 = 0xE200000000000000;
  v11 = sub_22C908E7C();
  MEMORY[0x2318B7850](v11);

  MEMORY[0x2318B7850](10, 0xE100000000000000);
  v62 = v0;
  v74 = sub_22C908E8C();
  v75 = v12;
  v66 = sub_22C3858B4();
  v13 = sub_22C90AD9C();

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 56);
    do
    {
      v16 = *(v15 - 3);
      v17 = *(v15 - 2);
      v18 = *(v15 - 1);
      v19 = *v15;
      v74 = 8227;
      v75 = 0xE200000000000000;

      v20 = MEMORY[0x2318B76D0](v16, v17, v18, v19);
      v22 = v21;

      MEMORY[0x2318B7850](v20, v22);

      MEMORY[0x2318B7850](10, 0xE100000000000000);
      MEMORY[0x2318B7850](v74, v75);

      v15 += 4;
      --v14;
    }

    while (v14);
  }

  v74 = 543581540;
  v75 = 0xE400000000000000;
  v23 = sub_22C908E7C();
  MEMORY[0x2318B7850](v23);

  MEMORY[0x2318B7850](40, 0xE100000000000000);
  MEMORY[0x2318B7850](v74, v75);

  v28 = sub_22C908DCC();
  v29 = *(v28 + 16);
  if (v29)
  {
    v73 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v29, 0, v24, v25, v26, v27);
    v30 = 0;
    v31 = v73;
    sub_22C36BA94();
    v65 = v28 + v32;
    v63 = (v61 + 8);
    v64 = v33 + 16;
    v34 = (v33 + 8);
    while (v30 < *(v28 + 16))
    {
      (*(v67 + 16))(v69, v65 + *(v67 + 72) * v30, v71);
      v74 = sub_22C9097DC();
      v75 = v35;
      v36 = MEMORY[0x2318B7850](8250, 0xE200000000000000);
      MEMORY[0x2318B6CE0](v36);
      v72[0] = sub_22C9093EC();
      v72[1] = v37;
      sub_22C90AD9C();
      sub_22C37FF48();

      if (v73)
      {
        v38 = &v72[4 * v73];
        v39 = *v38;
        v40 = v38[1];
        v41 = v38[2];
        v42 = v38[3];

        v43 = MEMORY[0x2318B76D0](v39, v40, v41, v42);
        v45 = v44;
      }

      else
      {

        v43 = 0;
        v45 = 0xE000000000000000;
      }

      (*v63)(v70, v68);
      MEMORY[0x2318B7850](v43, v45);

      v46 = v74;
      v47 = v75;
      (*v34)(v69, v71);
      v73 = v31;
      v53 = *(v31 + 16);
      v52 = *(v31 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_22C3B5E2C(v52 > 1, v53 + 1, 1, v48, v49, v50, v51);
        v31 = v73;
      }

      ++v30;
      *(v31 + 16) = v53 + 1;
      v54 = v31 + 16 * v53;
      *(v54 + 32) = v46;
      *(v54 + 40) = v47;
      if (v29 == v30)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
LABEL_15:
    v74 = v31;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    sub_22C90A04C();

    v55 = sub_22C36BAFC();
    MEMORY[0x2318B7850](v55);

    v74 = 0x203E2D2029;
    v75 = 0xE500000000000000;
    v57 = v60;
    v58 = MEMORY[0x2318B6290](v56);
    sub_22C7F5E00(v58);
    (*(v61 + 8))(v57, v68);
    v59 = sub_22C36BAFC();
    MEMORY[0x2318B7850](v59);

    MEMORY[0x2318B7850](v74, v75);

    sub_22C36CC48();
  }
}

uint64_t sub_22C7F646C(uint64_t a1)
{
  v1 = sub_22C9036EC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  sub_22C90371C();
  sub_22C7FDC18();
  sub_22C7FB604(v8, v9, MEMORY[0x277D1ED10]);
  sub_22C909F8C();
  (*(v3 + 8))(v7, v1);
  sub_22C90374C();
  v10 = sub_22C36BA00();
  sub_22C47180C(v10, v11);
}

uint64_t sub_22C7F657C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9036EC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_22C90371C();
  sub_22C90371C();
  v13 = sub_22C9036DC();
  v14 = *(v5 + 8);
  v14(v9, v3);
  v14(v12, v3);
  if (v13)
  {
    sub_22C90374C();
    sub_22C90374C();
    v15 = sub_22C37FF48();
    sub_22C46D0B8(v15, a2);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_22C7F66D8()
{
  v0 = sub_22C9036EC();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  sub_22C90B62C();
  sub_22C90371C();
  sub_22C7FDC18();
  sub_22C7FB604(v7, v8, MEMORY[0x277D1ED10]);
  sub_22C909F8C();
  (*(v2 + 8))(v6, v0);
  v9 = sub_22C90374C();
  sub_22C47180C(v11, v9);

  return sub_22C90B66C();
}

uint64_t sub_22C7F6808(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C7F646C(v2);
  return sub_22C90B66C();
}

uint64_t sub_22C7F6848(uint64_t a1)
{
  v2 = sub_22C7FB3F0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C7F6884(uint64_t a1)
{
  v2 = sub_22C7FB3F0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t ToolRetrievalService.__allocating_init(clientApplicationIdentifier:toolboxResources:toolkitCache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C908AEC();
  sub_22C369824();
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  (*(v12 + 16))(v10 - v9, a3 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime16ToolboxResources_toolbox);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = swift_allocObject();
  sub_22C7F6A9C(a1, a2, v11, sub_22C7F6A80, v13);
  return v14;
}

uint64_t sub_22C7F6A20@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = ToolboxResources.makeQueryableToolbox(toolkitCache:)(a1);
  if (!v2)
  {
    v5 = result;
    sub_22C90717C();
    result = sub_22C9071BC();
    a2[3] = result;
    a2[4] = &off_283FC0758;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22C7F6A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  sub_22C90A75C();
  sub_22C7FDC90();
  sub_22C36C640(v13, v14, v15, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = a1;
  v17[7] = a2;

  v18 = sub_22C7FDD10();
  sub_22C82BB30(v18, v19, v20, v21, v17);
  *(v5 + 16) = v22;
  sub_22C7FDC90();
  sub_22C36C640(v23, v24, v25, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a4;
  v27[5] = a5;
  sub_22C7FDD10();
  sub_22C82BD98();
  *(v5 + 24) = v28;
  v29 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20ToolRetrievalService_toolbox;
  sub_22C908AEC();
  sub_22C36985C();
  (*(v30 + 32))(v5 + v29, a3);
  return v5;
}

uint64_t sub_22C7F6C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v8 = swift_task_alloc();
  *(v7 + 24) = v8;
  *v8 = v7;
  v8[1] = sub_22C7F6CDC;

  return sub_22C7FE8B8();
}

uint64_t sub_22C7F6CDC()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_22C36BB08();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_22C7F6E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22C7F6E30, 0, 0);
}

uint64_t sub_22C7F6E30()
{
  sub_22C36FB38();
  (*(v0 + 24))();
  sub_22C369A24();

  return v1();
}

uint64_t sub_22C7F6EB4()
{
  sub_22C369980();
  v3 = v2;
  v1[27] = v4;
  v1[28] = v0;
  v1[25] = v5;
  v1[26] = v6;
  v1[24] = v7;
  v8 = sub_22C908EAC();
  v1[29] = v8;
  sub_22C3699B8(v8);
  v1[30] = v9;
  v1[31] = sub_22C3699D4();
  v10 = sub_22C9037EC();
  v1[32] = v10;
  sub_22C3699B8(v10);
  v1[33] = v11;
  v1[34] = sub_22C36D0D4();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v12 = sub_22C9039AC();
  v1[37] = v12;
  sub_22C3699B8(v12);
  v1[38] = v13;
  v1[39] = sub_22C36D0D4();
  v1[40] = swift_task_alloc();
  v14 = sub_22C9036EC();
  v1[41] = v14;
  sub_22C3699B8(v14);
  v1[42] = v15;
  v1[43] = sub_22C36D0D4();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v16 = type metadata accessor for LooselyComparableRetrievedTool(0);
  sub_22C3699B8(v16);
  v1[46] = v17;
  v1[47] = sub_22C36D0D4();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v18 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  sub_22C369914(v18);
  v1[51] = sub_22C36D0D4();
  v19 = swift_task_alloc();
  v20 = *v3;
  v1[52] = v19;
  v1[53] = v20;
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_22C7F7130()
{
  sub_22C36FB38();
  v1 = *(v0[28] + 16);
  v2 = swift_task_alloc();
  v0[54] = v2;
  v3 = sub_22C3A5908(&qword_27D9C0388, &qword_22C927078);
  v4 = sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
  v0[55] = v4;
  *v2 = v0;
  v2[1] = sub_22C7F7218;
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 21, v1, v3, v4, v5);
}

uint64_t sub_22C7F7218()
{
  sub_22C369980();
  sub_22C369A3C();
  v2 = *v1;
  sub_22C369970();
  *v3 = v2;
  *(v4 + 448) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C7F7318()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v99 = MEMORY[0x277D84F90];
    v4 = sub_22C38390C();
    sub_22C3B7D98(v4, v2, 0);
    v5 = v99;
    v6 = v1 + 32;
    do
    {
      v96 = v5;
      v97 = v2;
      v8 = *(v0 + 416);
      v7 = *(v0 + 424);
      v9 = *(v0 + 408);
      v11 = *(v0 + 208);
      v10 = *(v0 + 216);
      v13 = *(v0 + 192);
      v12 = *(v0 + 200);
      v94 = v6;
      sub_22C378A4C(v6, v0 + 16);
      v14 = sub_22C90A75C();
      sub_22C7FDC90();
      sub_22C36C640(v15, v16, v17, v18);
      sub_22C378A4C(v0 + 16, v0 + 56);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      sub_22C36C730((v0 + 56), (v19 + 4));
      v19[9] = v13;
      v19[10] = v12;
      v19[11] = v7;
      v19[12] = v11;
      v19[13] = v10;
      sub_22C7FB53C(v8, v9);
      LODWORD(v9) = sub_22C370B74(v9, 1, v14);

      v20 = *(v0 + 408);
      if (v9 == 1)
      {
        sub_22C3FC848(*(v0 + 408));
      }

      else
      {
        sub_22C90A74C();
        (*(*(v14 - 8) + 8))(v20, v14);
      }

      v21 = v19[2];
      swift_unknownObjectRetain();

      if (v21)
      {
        swift_getObjectType();
        v22 = sub_22C90A6DC();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      sub_22C3FC848(*(v0 + 416));
      if (v24 | v22)
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0;
        *(v0 + 112) = v22;
        *(v0 + 120) = v24;
      }

      v25 = swift_task_create();
      sub_22C36FF94((v0 + 16));
      v5 = v96;
      v27 = *(v96 + 16);
      v26 = *(v96 + 24);
      if (v27 >= v26 >> 1)
      {
        v28 = sub_22C381848(v26);
        sub_22C3B7D98(v28, v27 + 1, 1);
        v5 = v96;
      }

      *(v5 + 16) = v27 + 1;
      *(v5 + 8 * v27 + 32) = v25;
      v6 = v94 + 40;
      v2 = v97 - 1;
    }

    while (v97 != 1);

    v3 = MEMORY[0x277D84F90];
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  *(v0 + 456) = v5;
  v34 = *(v5 + 16);
  *(v0 + 480) = 0;
  *(v0 + 488) = v3;
  *(v0 + 464) = v34;
  *(v0 + 472) = 0;
  if (v34)
  {
    if (*(v5 + 16))
    {
      *(v0 + 496) = *(v5 + 32);

      v35 = swift_task_alloc();
      *(v0 + 504) = v35;
      *v35 = v0;
      sub_22C3834B8(v35);
      sub_22C377448();

      return MEMORY[0x282200430](v29, v30, v31, v32, v33);
    }

LABEL_56:
    __break(1u);
    return MEMORY[0x282200430](v29, v30, v31, v32, v33);
  }

  v37 = *(v3 + 16);
  if (v37)
  {
    v38 = *(v0 + 264);
    v39 = sub_22C38390C();
    sub_22C3B60C0(v39, v37, 0);
    v40 = 0;
    v41 = v3;
    sub_22C36BA94();
    v43 = v3 + v42;
    v44 = (v38 + 32);
    while (v40 < *(v3 + 16))
    {
      (*(*(v0 + 264) + 16))(*(v0 + 288), v43 + *(*(v0 + 368) + 72) * v40, *(v0 + 256));
      v46 = *(v3 + 16);
      v45 = *(v3 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_22C381848(v45);
        sub_22C375CCC();
        sub_22C3B60C0(v49, v50, v51);
      }

      ++v40;
      *(v3 + 16) = v46 + 1;
      sub_22C37BEE8();
      v29 = (*v44)(v3 + v47 + *(v48 + 72) * v46);
      if (v37 == v40)
      {
        v98 = *(v3 + 16);
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  v98 = 0;
  v41 = v3;
LABEL_29:
  v52 = 0;
  v53 = *(v0 + 264);
  v95 = *MEMORY[0x277D1ECE0];
  v92 = *MEMORY[0x277D1ECE8];
  v91 = *MEMORY[0x277D1ECD8];
  v87 = *MEMORY[0x277D1ECD0];
  v86 = *MEMORY[0x277D1ECF8];
  v93 = (v53 + 8);
  v89 = (v53 + 32);
  v90 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v98 == v52)
    {

      sub_22C7F56F4();

      sub_22C36BAFC();
      sub_22C377448();

      __asm { BRAA            X3, X16 }
    }

    if (v52 >= *(v41 + 16))
    {
      break;
    }

    v54 = *(v0 + 280);
    sub_22C7FDCE4();
    v57 = v56 & ~v55;
    v59 = *(v58 + 56);
    v60(v54, v41 + v57 + v59 * v52);
    sub_22C90371C();
    v61 = sub_22C36ECB4();
    v63 = v62(v61);
    if (v63 == v95)
    {
      goto LABEL_35;
    }

    if (v63 == v92)
    {
LABEL_42:
      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
LABEL_43:
      v88 = *v89;
      (*v89)(*(v0 + 272), *(v0 + 280), *(v0 + 256));
      v72 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_22C38390C();
        sub_22C3B60C0(v73, v74, 1);
        v72 = v90;
      }

      v76 = *(v72 + 16);
      v75 = *(v72 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_22C381848(v75);
        sub_22C375CCC();
        sub_22C3B60C0(v79, v80, v81);
        v72 = v90;
      }

      ++v52;
      v77 = *(v0 + 272);
      v78 = *(v0 + 256);
      *(v72 + 16) = v76 + 1;
      v90 = v72;
      v88(v72 + v57 + v76 * v59, v77, v78);
    }

    else
    {
      if (v63 != v91)
      {
        if (v63 != v87 && v63 != v86)
        {
          goto LABEL_52;
        }

        goto LABEL_42;
      }

LABEL_35:
      v64 = sub_22C38C41C();
      v65(v64);
      v66 = sub_22C7FDBF8();
      v67(v66);
      v68 = sub_22C908A5C();
      v69 = sub_22C36ECB4();
      v70(v69);
      if (v68)
      {
        goto LABEL_43;
      }

      (*v93)(*(v0 + 280), *(v0 + 256));
      ++v52;
    }
  }

  __break(1u);
LABEL_52:
  sub_22C377448();

  return sub_22C90B4EC();
}

uint64_t sub_22C7F7B20()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 512) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7F7C20()
{
  v1 = v0 + 19;
  v137 = v0[20];
  v2 = *(v137 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v0[22] = MEMORY[0x277D84F90];

    sub_22C3B7D40(0, v2, 0);
    v0 = v154;
    v4 = 0;
    v3 = v154[22];
    v5 = v137;
    sub_22C36BA94();
    v7 = v137 + v6;
    do
    {
      if (v4 >= *(v5 + 16))
      {
        goto LABEL_96;
      }

      (*(v0[33] + 16))(v0[47], v7 + *(v0[33] + 72) * v4, v0[32]);
      v8 = v3;
      v0[22] = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_22C3B7D40(v9 > 1, v10 + 1, 1);
        v0 = v154;
        v8 = v1[3];
      }

      ++v4;
      *(v8 + 16) = v10 + 1;
      sub_22C37BEE8();
      v3 = v11;
      sub_22C36B7A0();
      sub_22C7FDB44(v12, v13);
      v5 = v137;
    }

    while (v2 != v4);
  }

  v131 = v1;
  v14 = v0[60];
  v15 = v0[61];
  v140 = *(v3 + 16);

  v16 = 0;
  v133 = v14;
  while (1)
  {
    if (v16 == v140)
    {

      v72 = v154;

      v73 = v154[58];
      v74 = v154[59] + 1;
      v154[60] = v14;
      v154[61] = v15;
      v154[59] = v74;
      isUniquelyReferenced_native = v154[57];
      if (v74 == v73)
      {

        v75 = *(v15 + 16);
        v76 = MEMORY[0x277D84F90];
        v136 = v15;
        if (!v75)
        {
          goto LABEL_69;
        }

        v77 = v14;
        v78 = v154[33];
        v155 = MEMORY[0x277D84F90];
        v79 = sub_22C38390C();
        sub_22C3B60C0(v79, v75, 0);
        v72 = v154;
        v76 = v155;
        v80 = 0;
        sub_22C36BA94();
        v82 = v15 + v81;
        while (v80 < *(v15 + 16))
        {
          (*(v72[33] + 16))(v72[36], v82 + *(v72[46] + 72) * v80, v72[32]);
          v84 = *(v155 + 16);
          v83 = *(v155 + 24);
          if (v84 >= v83 >> 1)
          {
            sub_22C3B60C0(v83 > 1, v84 + 1, 1);
            v72 = v154;
          }

          ++v80;
          *(v155 + 16) = v84 + 1;
          sub_22C37BEE8();
          isUniquelyReferenced_native = (*(v78 + 32))(v155 + v85 + *(v86 + 72) * v84);
          v15 = v136;
          if (v75 == v80)
          {
            v14 = v77;
LABEL_69:
            v89 = 0;
            v90 = v72[33];
            v153 = *(v76 + 16);
            v150 = *MEMORY[0x277D1ECE0];
            v144 = *MEMORY[0x277D1ECE8];
            v142 = *MEMORY[0x277D1ECD8];
            v134 = *MEMORY[0x277D1ECD0];
            v132 = *MEMORY[0x277D1ECF8];
            v145 = (v90 + 8);
            v139 = (v90 + 32);
            v141 = MEMORY[0x277D84F90];
            while (2)
            {
              while (2)
              {
                if (v153 == v89)
                {

                  sub_22C7F56F4();

                  sub_22C7FDD44();

                  __asm { BRAA            X3, X16 }
                }

                if (v89 >= *(v76 + 16))
                {
                  goto LABEL_97;
                }

                v91 = v14;
                v92 = v72;
                v93 = v72[35];
                sub_22C7FDCE4();
                v96 = v95 & ~v94;
                v98 = *(v97 + 56);
                v99(v93, v76 + v96 + v98 * v89);
                sub_22C90371C();
                v100 = sub_22C36BAFC();
                v102 = v101(v100);
                if (v102 == v150)
                {
                  v103 = sub_22C36FEB0();
                  v104(v103);
                  v105 = sub_22C36BA00();
                  v106(v105);
                  v107 = sub_22C7FDD60();
                  v108 = sub_22C36BAFC();
                  v109(v108);
                  if ((v107 & 1) == 0)
                  {
                    goto LABEL_78;
                  }
                }

                else
                {
                  if (v102 != v144)
                  {
                    if (v102 == v142)
                    {
                      v110 = sub_22C36FEB0();
                      v111(v110);
                      v112 = sub_22C36BA00();
                      v113(v112);
                      v114 = sub_22C7FDD60();
                      v115 = sub_22C36BAFC();
                      v116(v115);
                      if ((v114 & 1) == 0)
                      {
LABEL_78:
                        (*v145)(v92[35], v92[32]);
                        ++v89;
                        v72 = v92;
                        continue;
                      }

                      break;
                    }

                    if (v102 != v134 && v102 != v132)
                    {
                      goto LABEL_98;
                    }
                  }

                  (*(v92[42] + 8))(v92[43], v92[41]);
                }

                break;
              }

              v138 = *v139;
              (*v139)(v92[34], v92[35], v92[32]);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v119 = v141;
              if (isUniquelyReferenced_nonNull_native)
              {
                v72 = v92;
              }

              else
              {
                v120 = sub_22C38390C();
                sub_22C3B60C0(v120, v121, 1);
                v72 = v154;
                v119 = v141;
              }

              v123 = *(v119 + 16);
              v122 = *(v119 + 24);
              if (v123 >= v122 >> 1)
              {
                v126 = sub_22C381848(v122);
                sub_22C3B60C0(v126, v123 + 1, 1);
                v72 = v154;
                v119 = v141;
              }

              ++v89;
              v124 = v72[34];
              v125 = v72[32];
              *(v119 + 16) = v123 + 1;
              v141 = v119;
              v138(v119 + v96 + v123 * v98, v124, v125);
              v14 = v91;
              continue;
            }
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
      }

      else if (v74 < *(isUniquelyReferenced_native + 16))
      {
        v154[62] = *(isUniquelyReferenced_native + 8 * v74 + 32);

        v87 = swift_task_alloc();
        v154[63] = v87;
        *v87 = v154;
        sub_22C3834B8(v87);
        sub_22C7FDD44();

        return MEMORY[0x282200430](isUniquelyReferenced_native, v55, v56, v57, v58);
      }

      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      return MEMORY[0x282200430](isUniquelyReferenced_native, v55, v56, v57, v58);
    }

    v17 = (*(v0[46] + 80) + 32) & ~*(v0[46] + 80);
    sub_22C36B7A0();
    sub_22C7FDAEC(v18, v19);
    v146 = v16;
    if (v14)
    {

      sub_22C7DD340();
      v17 = v20;
      v22 = v21;

      if (v17)
      {
        v0 = v154;
        goto LABEL_32;
      }

      v0 = v154;
LABEL_48:
      v68 = v146;
      goto LABEL_56;
    }

    if (*(v15 + 16))
    {
      break;
    }

    v22 = 0;
LABEL_32:
    sub_22C36B7A0();
    sub_22C7FDAEC(v46, v47);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v0[23] = v15;
    if ((v48 & 1) == 0)
    {
      v17 = (v131 + 4);
      sub_22C3B7D40(0, *(v15 + 16) + 1, 1);
      v0 = v154;
      v15 = v131[4];
    }

    v50 = *(v15 + 16);
    v49 = *(v15 + 24);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      v17 = (v131 + 4);
      sub_22C3B7D40(v49 > 1, v50 + 1, 1);
      v0 = v154;
      v15 = v131[4];
    }

    *(v15 + 16) = v51;
    sub_22C36B7A0();
    sub_22C7FDB44(v52, v53);
    if (!v14)
    {
      v70 = 0;
      v71 = v50 > 0xE;
      v68 = v146;
      if (!v71)
      {
        goto LABEL_55;
      }

LABEL_54:
      MEMORY[0x2318B0670](v51);
      sub_22C7D62A4();
      sub_22C37FF48();

      v133 = v70;
      v14 = v70;
LABEL_55:
      v0 = v154;
      goto LABEL_56;
    }

    swift_beginAccess();
    if (MEMORY[0x2318B0640](*(v14 + 16) & 0x3FLL) <= v50)
    {
      v70 = *(v14 + 24) & 0x3FLL;
      v71 = v50 > 0xE;
      v68 = v146;
      if (v71 || v70)
      {
        goto LABEL_54;
      }

      v133 = 0;
      v14 = 0;
      goto LABEL_55;
    }

    v14 = v133;
    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    if ((isUniquelyReferenced_native & 1) == 0)
    {
      if (!v133)
      {
        goto LABEL_105;
      }

      sub_22C90318C();
      sub_22C37FF48();

      v14 = v17;
      v0 = v154;
    }

    if (!v14)
    {
      goto LABEL_104;
    }

    v59 = *(v14 + 16);
    v60 = *(v15 + 16) + ~(*(v14 + 24) >> 6);
    v61 = (-1 << v59) ^ ~(((v60 >> 63) & ~(-1 << v59)) + v60);
    v62 = (v59 & 0x3F) * v22;
    v63 = v62 >> 6;
    *(v14 + 32 + 8 * (v62 >> 6)) = (v61 << v62) | ((((-1 << v59) + 1) << v62) - 1) & *(v14 + 32 + 8 * (v62 >> 6));
    v64 = 64 - (v62 & 0x3F);
    v133 = v14;
    if (v64 >= (v59 & 0x3Fu))
    {
      goto LABEL_48;
    }

    v65 = (v59 & 0x3F) << (v59 & 0x3F);
    v66 = __OFADD__(v65, 64);
    v67 = v65 + 64;
    v68 = v146;
    if (v66)
    {
      goto LABEL_102;
    }

    if (v63 + 1 == (v67 - 1) / 64)
    {
      v69 = 0;
    }

    else
    {
      v69 = v63 + 1;
    }

    *(v14 + 32 + 8 * v69) = *(v14 + 32 + 8 * v69) & (-1 << (v59 - v64)) | (v61 >> v64);
LABEL_56:
    v16 = v68 + 1;
    sub_22C371E18(v0[50]);
  }

  v143 = *(v15 + 16);
  v135 = v15;
  v23 = 0;
  while (1)
  {
    v24 = v0[49];
    v25 = v0;
    v26 = v0[44];
    v27 = v0[45];
    v147 = v23;
    v28 = v0[42];
    v29 = v25[41];
    sub_22C36B7A0();
    sub_22C7FDAEC(v30, v24);
    sub_22C90371C();
    sub_22C90371C();
    v17 = sub_22C9036DC();
    v31 = *(v28 + 8);
    v31(v26, v29);
    v31(v27, v29);
    if (v17)
    {
      break;
    }

    sub_22C371E18(v25[49]);
    v0 = v25;
LABEL_27:
    v23 = v147 + 1;
    if (v147 + 1 == v143)
    {
      v22 = 0;
      v15 = v135;
      v14 = 0;
      goto LABEL_32;
    }
  }

  v32 = v25[50];
  v33 = sub_22C90374C();
  v17 = v32;
  v34 = sub_22C90374C();
  v35 = v34;
  v151 = *(v33 + 16);
  v152 = v33;
  if (v151 != *(v34 + 16))
  {
LABEL_26:
    v0 = v154;
    sub_22C371E18(v154[49]);

    goto LABEL_27;
  }

  v0 = v154;
  if (!v151 || v152 == v34)
  {
LABEL_30:
    sub_22C371E18(v0[49]);

    v14 = 0;
    v15 = v135;
    goto LABEL_48;
  }

  v36 = 0;
  sub_22C36BA94();
  v148 = v35 + v37;
  v149 = v152 + v37;
  while (v36 < *(v152 + 16))
  {
    v38 = v0[38];
    v39 = *(v38 + 16);
    v40 = *(v38 + 72) * v36;
    v39(v0[40], v149 + v40, v0[37]);
    if (v36 >= *(v35 + 16))
    {
      goto LABEL_95;
    }

    v41 = v0[39];
    v17 = v0[37];
    v42 = v0[38];
    v39(v41, v148 + v40, v17);
    sub_22C7FB604(&qword_27D9BC820, MEMORY[0x277D1EE20], MEMORY[0x277D1EE30]);
    v43 = sub_22C90A0BC();
    v44 = *(v42 + 8);
    v44(v41, v17);
    v45 = sub_22C36BA00();
    (v44)(v45);
    if ((v43 & 1) == 0)
    {
      goto LABEL_26;
    }

    ++v36;
    v0 = v154;
    if (v151 == v36)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  sub_22C7FDD44();

  return sub_22C90B4EC();
}

uint64_t sub_22C7F8958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();
  sub_22C382978(v18, v19, v20, v21, v22, v23, v24, v25);

  sub_22C369A24();
  sub_22C375E04();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C7F8A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C36CC74();

  sub_22C382978(v18, v19, v20, v21, v22, v23, v24, v25);

  sub_22C369A24();
  sub_22C375E04();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C7F8B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[3] = a1;
  return MEMORY[0x2822009F8](sub_22C7F8B58, 0, 0);
}

uint64_t sub_22C7F8B58()
{
  sub_22C36D5EC();
  v1 = *(v0 + 56);
  sub_22C374168(*(v0 + 32), *(*(v0 + 32) + 24));
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_22C7F8C2C;

  return sub_22C7FEBEC();
}

uint64_t sub_22C7F8C2C()
{
  sub_22C36D5EC();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v7 = v6;
  sub_22C36D994();
  *v8 = v7;
  v9 = *v1;
  sub_22C369970();
  *v10 = v9;
  v7[11] = v0;

  if (!v0)
  {
    v7[12] = v3;
    v7[13] = v5;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C7F8D44()
{
  v1 = v0[12];
  v2 = v0[3];
  *v2 = v0[13];
  v2[1] = v1;
  return sub_22C37A3A0();
}

uint64_t ToolRetrievalService.retrieveTools(query:qdContext:)()
{
  sub_22C369980();
  v1[10] = v2;
  v1[11] = v0;
  v1[9] = v3;
  v4 = sub_22C90384C();
  v1[12] = v4;
  sub_22C3699B8(v4);
  v1[13] = v5;
  v1[14] = sub_22C3699D4();
  v6 = sub_22C9099FC();
  v1[15] = v6;
  sub_22C3699B8(v6);
  v1[16] = v7;
  v1[17] = sub_22C3699D4();
  v8 = sub_22C9036EC();
  v1[18] = v8;
  sub_22C3699B8(v8);
  v1[19] = v9;
  v1[20] = sub_22C3699D4();
  v10 = sub_22C908EAC();
  v1[21] = v10;
  sub_22C3699B8(v10);
  v1[22] = v11;
  v1[23] = sub_22C3699D4();
  v12 = type metadata accessor for ToolRetrievalStageTwo(0);
  v1[24] = v12;
  sub_22C369914(v12);
  v1[25] = sub_22C3699D4();
  v13 = sub_22C908D2C();
  v1[26] = v13;
  sub_22C3699B8(v13);
  v1[27] = v14;
  v1[28] = sub_22C3699D4();
  v15 = sub_22C9063DC();
  v1[29] = v15;
  sub_22C3699B8(v15);
  v1[30] = v16;
  v1[31] = sub_22C36D0D4();
  v1[32] = swift_task_alloc();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_22C7F8FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_22C36CC74();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = sub_22C908CFC();
  v26[33] = v29;
  if (v29)
  {
    if (*(v29 + 16))
    {
      sub_22C903FCC();
      v30 = sub_22C36D39C();
      v31(v30);

      v32 = sub_22C9063CC();
      v33 = sub_22C90AABC();

      v34 = os_log_type_enabled(v32, v33);
      v35 = v26[32];
      v36 = v26[29];
      v37 = v26[30];
      v39 = v26[27];
      v38 = v26[28];
      v40 = v26[26];
      if (v34)
      {
        v77 = v33;
        v41 = swift_slowAlloc();
        a14 = swift_slowAlloc();
        *v41 = 136315394;
        sub_22C908D1C();
        v78 = v35;
        (*(v39 + 8))(v38, v40);
        v42 = sub_22C36D39C();
        v45 = sub_22C36F9F4(v42, v43, v44);

        *(v41 + 4) = v45;
        *(v41 + 12) = 2080;
        v46 = sub_22C90A8CC();
        v48 = sub_22C36F9F4(v46, v47, &a14);

        *(v41 + 14) = v48;
        _os_log_impl(&dword_22C366000, v32, v77, "ToolRetrievalService: retrieveTools query: %s, apps: %s", v41, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();

        v49 = *(v37 + 8);
        v49(v78, v36);
      }

      else
      {

        (*(v39 + 8))(v38, v40);
        v49 = *(v37 + 8);
        v68 = sub_22C36D39C();
        v49(v68, v69);
      }

      v26[34] = v49;
      v70 = swift_task_alloc();
      v26[35] = v70;
      sub_22C3A5908(&qword_27D9C0328, &unk_22C928C70);
      sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
      *v70 = v26;
      v70[1] = sub_22C7F9310;
      sub_22C375E04();

      return MEMORY[0x282200430](v71, v72, v73, v74, v75);
    }
  }

  sub_22C7FAF3C();
  swift_allocError();
  *v50 = 5;
  v51 = swift_willThrow();
  sub_22C37F5AC(v51, v52, v53, v54, v55, v56, v57, v58);

  sub_22C369A24();
  sub_22C375E04();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_22C7F9310()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C36D994();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C7F9410()
{
  sub_22C36D5EC();
  v1 = v0[33];
  v3 = v0[24];
  v2 = v0[25];
  sub_22C378A4C((v0 + 2), v2 + *(v3 + 20));
  v4 = *MEMORY[0x277D1ED30];
  sub_22C90377C();
  sub_22C36985C();
  (*(v5 + 104))(v2, v4);
  *(v2 + *(v3 + 24)) = 20;
  sub_22C908D1C();
  v0[37] = v6;
  sub_22C80E0F0(v1, v0 + 7);
  v7 = swift_task_alloc();
  v0[38] = v7;
  *v7 = v0;
  v7[1] = sub_22C7F953C;

  return sub_22C7FF9CC();
}

uint64_t sub_22C7F953C()
{
  sub_22C36D5EC();
  v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *v5 = *v1;
  v4[39] = v6;
  v4[40] = v0;

  if (!v0)
  {
    v4[41] = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_22C7F968C()
{
  v72 = v0;
  sub_22C903FCC();

  v1 = sub_22C9063CC();
  v2 = sub_22C90AABC();

  if (os_log_type_enabled(v1, v2))
  {
    swift_slowAlloc();
    v61 = swift_slowAlloc();
    v3 = sub_22C386034(v61, 4.8149e-34);
    v10 = MEMORY[0x277D84F90];
    if (v4)
    {
      v60 = v2;
      v11 = v0[19];
      sub_22C386E04(v3, v4, v5, v6, v7, v8, v9);
      v10 = v71;
      v12 = sub_22C9037EC();
      sub_22C369914(v12);
      v68 = *MEMORY[0x277D1ECE0];
      v66 = *MEMORY[0x277D1ECE8];
      v65 = *MEMORY[0x277D1ECD8];
      v64 = *MEMORY[0x277D1ECD0];
      sub_22C7FDC30();
      sub_22C7FDC54();
      while (1)
      {
        if (!*(v69 + 16))
        {
          __break(1u);
          return;
        }

        sub_22C7FDD80(v13);
        v14 = sub_22C36D39C();
        v16 = v15(v14);
        if (v16 != v68)
        {
          if (v16 == v66)
          {
            v24 = sub_22C7FDD24();
            v25(v24);
            v26 = sub_22C7FDBF8();
            v27(v26);
            sub_22C9099DC();
            sub_22C36EE68();
LABEL_9:
            v21 = sub_22C36ECB4();
            goto LABEL_10;
          }

          v29 = v16 == v65 || v16 == v64;
          if (!v29)
          {
            if (v16 != v63)
            {
              v34 = sub_22C38C41C();
              v35(v34);
              goto LABEL_11;
            }

            v30 = sub_22C7FDD24();
            v31(v30);
            v32 = sub_22C7FDBF8();
            v33(v32);
            sub_22C9037FC();
            sub_22C36EE68();
            goto LABEL_9;
          }
        }

        v17 = v0[20];
        v18 = v0[21];
        (*v11)(v17, v0[18]);
        v19 = sub_22C38C41C();
        v20(v19, v17, v18);
        sub_22C908E7C();
        sub_22C36EE68();
        v21 = sub_22C36FEB0();
        v23 = v18;
LABEL_10:
        v22(v21, v23);
LABEL_11:
        sub_22C388DE4();
        if (v28)
        {
          sub_22C375CCC();
          sub_22C3B5E2C(v36, v37, v38, v39, v40, v41, v42);
          v10 = v71;
        }

        sub_22C38C4E4();
        if (v29)
        {
          v2 = v60;
          break;
        }
      }
    }

    v43 = v0[34];
    v48 = v0[31];
    v49 = v0[29];
    v0[8] = v10;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    v50 = sub_22C90A04C();
    v52 = v51;

    v53 = sub_22C36F9F4(v50, v52, &v70);

    *(buf + 4) = v53;
    _os_log_impl(&dword_22C366000, v1, v2, "ToolRetrievalService: Combined set of tools:\n%s", buf, 0xCu);
    sub_22C36FF94(v61);
    sub_22C3699EC();
    sub_22C3699EC();

    v46 = v48;
    v47 = v49;
  }

  else
  {
    v43 = v0[34];
    v44 = v0[31];
    v45 = v0[29];

    v46 = v44;
    v47 = v45;
  }

  v43(v46, v47);
  v67 = v0[25];
  v54 = v0[9];
  sub_22C908D1C();
  sub_22C908D1C();
  sub_22C90952C();
  sub_22C90947C();
  sub_22C376A4C();
  sub_22C7FB604(v55, v56, MEMORY[0x277D72D68]);

  sub_22C909F0C();
  sub_22C903EDC();

  sub_22C377758();
  sub_22C7FB5AC(v67, v57);
  sub_22C36FF94(v0 + 2);
  v58 = sub_22C903F4C();
  sub_22C36C640(v54, 0, 1, v58);

  sub_22C369A24();

  v59();
}

uint64_t sub_22C7F9C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_22C37F5AC(a1, a2, a3, a4, a5, a6, a7, a8);

  sub_22C369A24();

  return v8();
}

uint64_t sub_22C7F9D0C()
{
  sub_22C377758();
  sub_22C7FB5AC(v1, v2);
  v3 = sub_22C36FF94((v0 + 16));
  sub_22C37F5AC(v3, v4, v5, v6, v7, v8, v9, v10);

  sub_22C369A24();

  return v11();
}

uint64_t ToolRetrievalService.retrieveTools(queries:apps:appEntities:qdContext:)()
{
  sub_22C369980();
  v3 = v2;
  v1[8] = v4;
  v1[9] = v0;
  v1[6] = v5;
  v1[7] = v6;
  v1[4] = v7;
  v1[5] = v8;
  v9 = sub_22C90384C();
  v1[10] = v9;
  sub_22C3699B8(v9);
  v1[11] = v10;
  v1[12] = sub_22C3699D4();
  v11 = sub_22C9099FC();
  v1[13] = v11;
  sub_22C3699B8(v11);
  v1[14] = v12;
  v1[15] = sub_22C3699D4();
  v13 = sub_22C9036EC();
  v1[16] = v13;
  sub_22C3699B8(v13);
  v1[17] = v14;
  v1[18] = sub_22C3699D4();
  v15 = sub_22C908EAC();
  v1[19] = v15;
  sub_22C3699B8(v15);
  v1[20] = v16;
  v1[21] = sub_22C3699D4();
  v17 = sub_22C9063DC();
  v1[22] = v17;
  sub_22C3699B8(v17);
  v1[23] = v18;
  v1[24] = sub_22C36D0D4();
  v1[25] = swift_task_alloc();
  v19 = swift_task_alloc();
  v20 = *v3;
  v1[26] = v19;
  v1[27] = v20;
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_22C7F9FCC()
{
  sub_22C903FCC();

  v1 = sub_22C9063CC();
  v2 = sub_22C90AABC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[23];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v5 = 136315138;
    v6 = sub_22C371510();
    *(v5 + 4) = sub_22C36F9F4(v6, v7, v8);
    _os_log_impl(&dword_22C366000, v1, v2, "Tool Retrieval queries: %s.", v5, 0xCu);
    sub_22C36FF94(v13);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  v9 = *(v4 + 8);
  v10 = sub_22C36BAFC();
  v9(v10);
  v0[28] = v9;
  v0[2] = v0[27];
  v11 = swift_task_alloc();
  v0[29] = v11;
  *v11 = v0;
  v11[1] = sub_22C7FA17C;

  return sub_22C7F6EB4();
}

uint64_t sub_22C7FA17C()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C36D994();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  v5[30] = v9;
  v5[31] = v0;

  if (!v0)
  {
    v5[32] = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22C7FA288()
{
  v74 = v0;
  sub_22C903FCC();

  v1 = sub_22C9063CC();
  v2 = sub_22C90AABC();

  if (os_log_type_enabled(v1, v2))
  {
    swift_slowAlloc();
    v64 = swift_slowAlloc();
    v3 = sub_22C386034(v64, 4.8149e-34);
    v10 = MEMORY[0x277D84F90];
    if (v4)
    {
      v11 = v0[17];
      sub_22C386E04(v3, v4, v5, v6, v7, v8, v9);
      v10 = v73;
      v12 = sub_22C9037EC();
      sub_22C369914(v12);
      v70 = *MEMORY[0x277D1ECE0];
      v69 = *MEMORY[0x277D1ECE8];
      v68 = *MEMORY[0x277D1ECD8];
      v67 = *MEMORY[0x277D1ECD0];
      sub_22C7FDC30();
      sub_22C7FDC54();
      do
      {
        if (!*(v71 + 16))
        {
          __break(1u);
          return;
        }

        sub_22C7FDD80(v13);
        v14 = sub_22C36D39C();
        v16 = v15(v14);
        if (v16 != v70)
        {
          if (v16 == v69)
          {
            v24 = sub_22C7FDD24();
            v25(v24);
            v26 = sub_22C7FDBF8();
            v27(v26);
            sub_22C9099DC();
            sub_22C36EE68();
LABEL_9:
            v21 = sub_22C36ECB4();
            goto LABEL_10;
          }

          v29 = v16 == v68 || v16 == v67;
          if (!v29)
          {
            if (v16 != v66)
            {
              v34 = sub_22C38C41C();
              v35(v34);
              goto LABEL_11;
            }

            v30 = sub_22C7FDD24();
            v31(v30);
            v32 = sub_22C7FDBF8();
            v33(v32);
            sub_22C9037FC();
            sub_22C36EE68();
            goto LABEL_9;
          }
        }

        v17 = v0[18];
        v18 = v0[19];
        (*v11)(v17, v0[16]);
        v19 = sub_22C38C41C();
        v20(v19, v17, v18);
        sub_22C908E7C();
        sub_22C36EE68();
        v21 = sub_22C36FEB0();
        v23 = v18;
LABEL_10:
        v22(v21, v23);
LABEL_11:
        sub_22C388DE4();
        if (v28)
        {
          sub_22C375CCC();
          sub_22C3B5E2C(v36, v37, v38, v39, v40, v41, v42);
          v10 = v73;
        }

        sub_22C38C4E4();
      }

      while (!v29);
    }

    v43 = v0[28];
    v48 = v0[25];
    v49 = v0[22];
    v0[3] = v10;
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3F035C();
    v50 = sub_22C90A04C();
    v52 = v51;

    v53 = sub_22C36F9F4(v50, v52, &v72);

    *(buf + 4) = v53;
    _os_log_impl(&dword_22C366000, v1, v2, "Combined set of tools:\n%s", buf, 0xCu);
    sub_22C36FF94(v64);
    sub_22C3699EC();
    sub_22C3699EC();

    v46 = v48;
    v47 = v49;
  }

  else
  {
    v43 = v0[28];
    v44 = v0[25];
    v45 = v0[22];

    v46 = v44;
    v47 = v45;
  }

  v43(v46, v47);
  sub_22C903FCC();
  v54 = sub_22C9063CC();
  v55 = sub_22C90AACC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_22C366000, v54, v55, "Returning a QueryDecorationToolRetrievalResponse", v56, 2u);
    sub_22C3699EC();
  }

  v57 = v0[28];
  v58 = v0[4];

  v59 = sub_22C371510();
  v57(v59);
  sub_22C90952C();
  sub_22C90947C();
  sub_22C376A4C();
  sub_22C7FB604(v60, v61, MEMORY[0x277D72D68]);
  swift_bridgeObjectRetain_n();

  sub_22C909F0C();
  sub_22C903EDC();

  v62 = sub_22C903F4C();
  sub_22C36C640(v58, 0, 1, v62);

  sub_22C369A24();

  v63();
}

uint64_t sub_22C7FA8B0()
{
  sub_22C36D5EC();

  sub_22C369A24();

  return v0();
}

uint64_t ToolRetrievalService.deinit()
{

  v1 = OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime20ToolRetrievalService_toolbox;
  sub_22C908AEC();
  sub_22C36985C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ToolRetrievalService.__deallocating_deinit()
{
  ToolRetrievalService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22C7FAA20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xED00007972657551)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

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

uint64_t sub_22C7FAAEC(char a1)
{
  if (a1)
  {
    return 0x6465696669646F6DLL;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_22C7FAB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C7FAA20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C7FAB5C(uint64_t a1)
{
  v2 = sub_22C7FAF90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C7FAB98(uint64_t a1)
{
  v2 = sub_22C7FAF90();

  return MEMORY[0x2821FE720](a1, v2);
}

void ToolRetrievalFeatureStoreQuery.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22C370030();
  v26 = v25;
  v27 = sub_22C3A5908(&qword_27D9C0338, &qword_22C926D70);
  sub_22C369824();
  v34 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = v33 - v30;
  v32 = *(v23 + 16);
  v33[1] = *(v23 + 24);
  v33[2] = v32;
  sub_22C374168(v26, v26[3]);
  sub_22C7FAF90();
  sub_22C90B6CC();
  sub_22C90B3CC();
  if (!v24)
  {
    sub_22C90B3CC();
  }

  (*(v34 + 8))(v31, v27);
  sub_22C36FB20();
}

void ToolRetrievalFeatureStoreQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22C370030();
  v25 = v24;
  v27 = v26;
  sub_22C3A5908(&qword_27D9C0348, &qword_22C926D78);
  sub_22C369824();
  MEMORY[0x28223BE20](v28);
  sub_22C374168(v25, v25[3]);
  sub_22C7FAF90();
  sub_22C90B6BC();
  if (v23)
  {
    sub_22C36FF94(v25);
  }

  else
  {
    v29 = sub_22C90B2DC();
    v31 = v30;
    v32 = sub_22C90B2DC();
    v34 = v33;
    v37 = v32;
    v35 = sub_22C371510();
    v36(v35);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v37;
    v27[3] = v34;

    sub_22C36FF94(v25);
  }

  sub_22C36FB20();
}

unint64_t sub_22C7FAF3C()
{
  result = qword_27D9C0320;
  if (!qword_27D9C0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0320);
  }

  return result;
}

unint64_t sub_22C7FAF90()
{
  result = qword_27D9C0340;
  if (!qword_27D9C0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0340);
  }

  return result;
}

uint64_t sub_22C7FB00C(uint64_t a1)
{
  result = sub_22C908AEC();
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

_BYTE *storeEnumTagSinglePayload for ToolRetrievalFeatureStoreQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ToolRetrievalServiceError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C7FB294()
{
  result = qword_27D9C0360;
  if (!qword_27D9C0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0360);
  }

  return result;
}

unint64_t sub_22C7FB2EC()
{
  result = qword_27D9C0368;
  if (!qword_27D9C0368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0368);
  }

  return result;
}

unint64_t sub_22C7FB344()
{
  result = qword_27D9C0370;
  if (!qword_27D9C0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0370);
  }

  return result;
}

unint64_t sub_22C7FB39C()
{
  result = qword_27D9C0378;
  if (!qword_27D9C0378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0378);
  }

  return result;
}

unint64_t sub_22C7FB3F0()
{
  result = qword_27D9C0380;
  if (!qword_27D9C0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0380);
  }

  return result;
}

uint64_t sub_22C7FB464()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[12];
  v5 = swift_task_alloc();
  v6 = sub_22C36D860(v5);
  *v6 = v7;
  v6[1] = sub_22C382AF4;
  v8 = sub_22C36DBB4();

  return sub_22C7F8B24(v8, v9, v10, v11, v1, v2, v3, v4);
}

uint64_t sub_22C7FB53C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7FB5AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C7FB604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C7FB64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t))
{
  sub_22C38A124();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = MEMORY[0x2318B0670](v8);
  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17;
  }

  if (v18 > 4)
  {
    v19 = MEMORY[0x2318B0680]();
    sub_22C7FDCD0();
    a6();
    *v7 = v20;
  }

  else if (v8 >= 2)
  {
    v21 = a7(v9 + 32, v8);
    v19 = 0;
    *v7 = v21;
  }

  else
  {
    v19 = 0;
    *v7 = v8;
  }

  return v19;
}

uint64_t sub_22C7FB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t))
{
  sub_22C38A124();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x2318B0670](v9);
  if (v18 <= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (v19 <= a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = v19;
  }

  if (v20 > 4)
  {
    v21 = MEMORY[0x2318B0680]();
    v22 = a6(0);
    sub_22C369914(v22);
    sub_22C36BA94();
    sub_22C7FDCD0();
    a7();
    *v8 = v23;
  }

  else if (v9 >= 2)
  {
    v24 = a6(0);
    sub_22C369914(v24);
    sub_22C36BA94();
    v26 = a8(v10 + v25, v9);
    v21 = 0;
    *v8 = v26;
  }

  else
  {
    v21 = 0;
    *v8 = v9;
  }

  return v21;
}

void sub_22C7FB848(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v8 = a5 >> 1;
  v9 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
    __break(1u);
  }

  else
  {
    if (a7)
    {
      v13 = 0;
    }

    else
    {
      v13 = a6;
    }

    v14 = MEMORY[0x2318B0670]((a5 >> 1) - a4, a2, a3);
    if (v14 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    if (v15 <= a8)
    {
      v16 = a8;
    }

    else
    {
      v16 = v15;
    }

    if (v16 > 4)
    {
      MEMORY[0x2318B0680]();
      sub_22C9037EC();
      sub_22C3A0354();
      v18 = a4 + v17;
      if (!__OFADD__(a4, v17))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (v9 < 2)
    {
      *a1 = v8;
      return;
    }

    sub_22C9037EC();
    sub_22C3A00A4();
    v18 = a4 + v19;
    if (!__OFADD__(a4, v19))
    {
LABEL_18:
      *a1 = v18;
      return;
    }
  }

  __break(1u);
}

void sub_22C7FB970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = MEMORY[0x277D84F90];
  sub_22C3B5E2C(0, a2 & ~(a2 >> 63), 0, a4, a5, a6, a7);
  for (i = 0; ; ++i)
  {
    if (i == a2)
    {
LABEL_15:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v10 = (a1 + 16 * i);
    v11 = *v10;
    v12 = v10[1];
    v13 = v23 + 5;
    v14 = v23[2] + 1;
    while (--v14)
    {
      if (v11 != *(v13 - 1) || v12 != *v13)
      {
        v13 += 2;
        if ((sub_22C90B4FC() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v16 = v23[2];
    v17 = v23[3];

    if (v16 >= v17 >> 1)
    {
      sub_22C3B5E2C(v17 > 1, v16 + 1, 1, v18, v19, v20, v21);
    }

    v23[2] = v16 + 1;
    v22 = &v23[2 * v16];
    v22[4] = v11;
    v22[5] = v12;
  }

  __break(1u);
}

void sub_22C7FBAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90644C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v22 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  v29 = MEMORY[0x277D84F90];
  sub_22C3B647C(0, a2 & ~(a2 >> 63), 0);
  v10 = 0;
  v11 = v29;
  v28 = v5 + 16;
  v26 = (v5 + 8);
  v19[1] = v5 + 32;
  v20 = a1;
  v21 = a2;
  while (1)
  {
    if (v10 == a2)
    {
LABEL_11:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v12 = *(v5 + 72);
    v23 = v10;
    v24 = *(v5 + 16);
    v25 = v10 + 1;
    v24(v9, a1 + v12 * v10, v4);
    v13 = *(v11 + 16) + 1;
    v27 = v11;
    while (--v13)
    {
      sub_22C7FB604(&qword_27D9C02E0, MEMORY[0x277D1D8A0], MEMORY[0x277D1D8B0]);
      v11 += v12;
      if (sub_22C90A0BC())
      {
        (*v26)(v9, v4);
        goto LABEL_11;
      }
    }

    v14 = v22;
    v24(v22, v9, v4);
    v29 = v27;
    v16 = *(v27 + 16);
    v15 = *(v27 + 24);
    a2 = v21;
    if (v16 >= v15 >> 1)
    {
      sub_22C3B647C(v15 > 1, v16 + 1, 1);
      v14 = v22;
    }

    (*(v5 + 8))(v9, v4);
    v17 = v29;
    *(v29 + 16) = v16 + 1;
    v18 = v14;
    v11 = v17;
    (*(v5 + 32))(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v16 * v12, v18, v4);
    v10 = v25;
    a1 = v20;
  }

  __break(1u);
}

void sub_22C7FBD94(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v3 = type metadata accessor for _PromptToolData(0);
  v29 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v23 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = (&v23 - v10);
  v30 = MEMORY[0x277D84F90];
  sub_22C3B6914(0, a2 & ~(a2 >> 63), 0);
  v12 = v30;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v24 = v6;
      v25 = a2;
      while (!__OFADD__(v13, 1))
      {
        v28 = v13 + 1;
        v14 = *(v29 + 72);
        v26 = v13;
        sub_22C7FDAEC(v27 + v14 * v13, v11);
        v15 = *(v12 + 16);
        if (v15)
        {
          v16 = 0;
          v17 = v12 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
          v18 = *v11;
          while (v16 < *(v12 + 16))
          {
            sub_22C7FDAEC(v17, v9);
            if (sub_22C48819C(v18, *v9))
            {
              v19 = sub_22C48819C(v11[1], v9[1]);
              sub_22C7FB5AC(v9, type metadata accessor for _PromptToolData);
              if (v19)
              {
                sub_22C7FB5AC(v11, type metadata accessor for _PromptToolData);

                return;
              }
            }

            else
            {
              sub_22C7FB5AC(v9, type metadata accessor for _PromptToolData);
            }

            ++v16;
            v17 += v14;
            if (v15 == v16)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v20 = v24;
        sub_22C7FDAEC(v11, v24);
        v30 = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22C3B6914(v21 > 1, v22 + 1, 1);
          v12 = v30;
        }

        *(v12 + 16) = v22 + 1;
        sub_22C7FDB44(v20, v12 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + v22 * v14);
        sub_22C7FB5AC(v11, type metadata accessor for _PromptToolData);
        v13 = v28;
        if (v28 == v25)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

void sub_22C7FC0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90430C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v22 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - v8;
  v29 = MEMORY[0x277D84F90];
  sub_22C3B6BF8(0, a2 & ~(a2 >> 63), 0);
  v10 = 0;
  v11 = v29;
  v28 = v5 + 16;
  v26 = (v5 + 8);
  v19[1] = v5 + 32;
  v20 = a1;
  v21 = a2;
  while (1)
  {
    if (v10 == a2)
    {
LABEL_11:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v12 = *(v5 + 72);
    v23 = v10;
    v24 = *(v5 + 16);
    v25 = v10 + 1;
    v24(v9, a1 + v12 * v10, v4);
    v13 = *(v11 + 16) + 1;
    v27 = v11;
    while (--v13)
    {
      sub_22C7FB604(&qword_27D9BC808, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      v11 += v12;
      if (sub_22C90A0BC())
      {
        (*v26)(v9, v4);
        goto LABEL_11;
      }
    }

    v14 = v22;
    v24(v22, v9, v4);
    v29 = v27;
    v16 = *(v27 + 16);
    v15 = *(v27 + 24);
    a2 = v21;
    if (v16 >= v15 >> 1)
    {
      sub_22C3B6BF8(v15 > 1, v16 + 1, 1);
      v14 = v22;
    }

    (*(v5 + 8))(v9, v4);
    v17 = v29;
    *(v29 + 16) = v16 + 1;
    v18 = v14;
    v11 = v17;
    (*(v5 + 32))(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v16 * v12, v18, v4);
    v10 = v25;
    a1 = v20;
  }

  __break(1u);
}

void sub_22C7FC3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C901FAC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v21 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  v28 = MEMORY[0x277D84F90];
  sub_22C3B6EDC();
  v10 = 0;
  v11 = v28;
  v27 = v5 + 16;
  v25 = (v5 + 8);
  v18[1] = v5 + 32;
  v19 = a1;
  v20 = a2;
  while (1)
  {
    if (v10 == a2)
    {
LABEL_11:

      return;
    }

    if (a2 < 0)
    {
      break;
    }

    v12 = *(v5 + 72);
    v22 = v10;
    v23 = *(v5 + 16);
    v24 = v10 + 1;
    v23(v9, a1 + v12 * v10, v4);
    v13 = *(v11 + 16) + 1;
    v26 = v11;
    while (--v13)
    {
      sub_22C7FB604(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
      v11 += v12;
      if (sub_22C90A0BC())
      {
        (*v25)(v9, v4);
        goto LABEL_11;
      }
    }

    v14 = v21;
    v23(v21, v9, v4);
    v28 = v26;
    v15 = *(v26 + 16);
    a2 = v20;
    if (v15 >= *(v26 + 24) >> 1)
    {
      sub_22C3B6EDC();
      v14 = v21;
    }

    (*(v5 + 8))(v9, v4);
    v16 = v28;
    *(v28 + 16) = v15 + 1;
    v17 = v14;
    v11 = v16;
    (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v15 * v12, v17, v4);
    v10 = v24;
    a1 = v19;
  }

  __break(1u);
}

uint64_t sub_22C7FC6B0(uint64_t a1, uint64_t a2)
{
  v12 = MEMORY[0x277D84F90];
  sub_22C3B7454(0, a2 & ~(a2 >> 63), 0);
  result = v12;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v7 = 0;
        v8 = *(a1 + 8 * i);
        v9 = *(result + 16);
        while (v9 != v7)
        {
          v10 = result + 8 * v7++;
          if (v8 == *(v10 + 32))
          {

            return i;
          }
        }

        v13 = result;
        v11 = *(result + 24);
        if (v9 >= v11 >> 1)
        {
          sub_22C3B7454(v11 > 1, v9 + 1, 1);
          result = v13;
        }

        *(result + 16) = v9 + 1;
        *(result + 8 * v9 + 32) = v8;
        if (v6 == a2)
        {

          return a2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_22C7FC7E0(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v14 = v6 + 1;
    v7 = (v5 + 16 * v6);
    sub_22C90B62C();

    sub_22C909FFC();
    result = sub_22C90B66C();
    if (__OFSUB__(1 << *v4, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    sub_22C9030FC();

    while (1)
    {
      v8 = sub_22C90313C();
      if (v9)
      {
        break;
      }

      v10 = (v5 + 16 * v8);
      v11 = *v10 == *v7 && v10[1] == v7[1];
      if (v11 || (sub_22C90B4FC() & 1) != 0)
      {
        return 0;
      }

      sub_22C90315C();
    }

    sub_22C90314C();
    result = 1;
    ++v6;
    v4 = a3;
    if (v14 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_22C7FC994(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = a4;
  v53 = a1;
  v7 = sub_22C90644C();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v14 = &v32 - v13;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v43 = a3;
  v35 = v4;
  v15 = 0;
  v16 = (v12 + 8);
  v34 = a2;
  v33 = v12;
  while (2)
  {
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v36 = v15 + 1;
    v17 = *(v12 + 72);
    v42 = v15;
    v44 = v17;
    v18 = v53 + v17 * v15;
    v19 = *(v12 + 16);
    v19(v14, v18, v7);
    v20 = v43;
    sub_22C7FB604(&qword_27D9C02D8, MEMORY[0x277D1D8A0], MEMORY[0x277D1D8A8]);
    result = sub_22C909F7C();
    v21 = 1 << *v20;
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v22)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v41 = v23 & result;
    v24 = v37;
    v25 = sub_22C9030FC();
    v39 = v26;
    v40 = v25;
    v38 = v27;
    v28 = *v16;
    (*v16)(v14, v7);
    *&v45 = v43;
    *(&v45 + 1) = v24;
    *&v46 = v41;
    *(&v46 + 1) = v40;
    *&v47 = v39;
    *(&v47 + 1) = v38;
    v48 = 0;
    while (1)
    {
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v52 = v48;
      v29 = sub_22C90313C();
      if (v30)
      {
        break;
      }

      v19(v14, v53 + v29 * v44, v7);
      v19(v10, v18, v7);
      sub_22C7FB604(&qword_27D9C02E0, MEMORY[0x277D1D8A0], MEMORY[0x277D1D8B0]);
      v31 = sub_22C90A0BC();
      v28(v10, v7);
      v28(v14, v7);
      if (v31)
      {
        return 0;
      }

      sub_22C90315C();
    }

    result = sub_22C90314C();
    v15 = v36;
    v12 = v33;
    if (v36 != v34)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_22C7FCD04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = a4;
  v7 = type metadata accessor for _PromptToolData(0);
  v38 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v33 - v12);
  result = MEMORY[0x28223BE20](v11);
  v16 = (&v33 - v15);
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v36 = a2;
    v35 = a3;
    v34 = (&v33 - v15);
    while (!__OFADD__(v17, 1))
    {
      v39 = v17 + 1;
      v18 = *(v38 + 72);
      v51 = v17;
      v19 = a1 + v18 * v17;
      sub_22C7FDAEC(v19, v16);
      sub_22C90B62C();
      sub_22C48A9B4(v42, v16[1]);
      sub_22C48A9B4(v42, *v16);
      result = sub_22C90B66C();
      v20 = 1 << *a3;
      v21 = __OFSUB__(v20, 1);
      v22 = v20 - 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v23 = v22 & result;
      v24 = v37;
      v25 = sub_22C9030FC();
      v26 = v16;
      v27 = v25;
      v41 = v28;
      v40 = v29;
      sub_22C7FB5AC(v26, type metadata accessor for _PromptToolData);
      *&v43 = a3;
      *(&v43 + 1) = v24;
      *&v44 = v23;
      *(&v44 + 1) = v27;
      *&v45 = v41;
      *(&v45 + 1) = v40;
      v46 = 0;
      while (1)
      {
        v47 = v43;
        v48 = v44;
        v49 = v45;
        v50 = v46;
        v30 = sub_22C90313C();
        if (v31)
        {
          break;
        }

        sub_22C7FDAEC(a1 + v30 * v18, v13);
        sub_22C7FDAEC(v19, v10);
        if (sub_22C48819C(*v13, *v10))
        {
          v32 = sub_22C48819C(v13[1], v10[1]);
          sub_22C7FB5AC(v10, type metadata accessor for _PromptToolData);
          sub_22C7FB5AC(v13, type metadata accessor for _PromptToolData);
          if (v32)
          {
            return 0;
          }
        }

        else
        {
          sub_22C7FB5AC(v10, type metadata accessor for _PromptToolData);
          sub_22C7FB5AC(v13, type metadata accessor for _PromptToolData);
        }

        sub_22C90315C();
      }

      result = sub_22C90314C();
      v17 = v39;
      a3 = v35;
      v16 = v34;
      if (v39 == v36)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7FD07C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = a4;
  v53 = a1;
  v7 = sub_22C90430C();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v14 = &v32 - v13;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v43 = a3;
  v35 = v4;
  v15 = 0;
  v16 = (v12 + 8);
  v34 = a2;
  v33 = v12;
  while (2)
  {
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v36 = v15 + 1;
    v17 = *(v12 + 72);
    v42 = v15;
    v44 = v17;
    v18 = v53 + v17 * v15;
    v19 = *(v12 + 16);
    v19(v14, v18, v7);
    v20 = v43;
    sub_22C7FB604(&qword_27D9BC810, MEMORY[0x277D85578], MEMORY[0x277D85588]);
    result = sub_22C909F7C();
    v21 = 1 << *v20;
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v22)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v41 = v23 & result;
    v24 = v37;
    v25 = sub_22C9030FC();
    v39 = v26;
    v40 = v25;
    v38 = v27;
    v28 = *v16;
    (*v16)(v14, v7);
    *&v45 = v43;
    *(&v45 + 1) = v24;
    *&v46 = v41;
    *(&v46 + 1) = v40;
    *&v47 = v39;
    *(&v47 + 1) = v38;
    v48 = 0;
    while (1)
    {
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v52 = v48;
      v29 = sub_22C90313C();
      if (v30)
      {
        break;
      }

      v19(v14, v53 + v29 * v44, v7);
      v19(v10, v18, v7);
      sub_22C7FB604(&qword_27D9BC808, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      v31 = sub_22C90A0BC();
      v28(v10, v7);
      v28(v14, v7);
      if (v31)
      {
        return 0;
      }

      sub_22C90315C();
    }

    result = sub_22C90314C();
    v15 = v36;
    v12 = v33;
    if (v36 != v34)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_22C7FD3EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v37 = a4;
  v53 = a1;
  v7 = sub_22C901FAC();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v14 = &v32 - v13;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  v43 = a3;
  v35 = v4;
  v15 = 0;
  v16 = (v12 + 8);
  v34 = a2;
  v33 = v12;
  while (2)
  {
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v36 = v15 + 1;
    v17 = *(v12 + 72);
    v42 = v15;
    v44 = v17;
    v18 = v53 + v17 * v15;
    v19 = *(v12 + 16);
    v19(v14, v18, v7);
    v20 = v43;
    sub_22C7FB604(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
    result = sub_22C909F7C();
    v21 = 1 << *v20;
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v22)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v41 = v23 & result;
    v24 = v37;
    v25 = sub_22C9030FC();
    v39 = v26;
    v40 = v25;
    v38 = v27;
    v28 = *v16;
    (*v16)(v14, v7);
    *&v45 = v43;
    *(&v45 + 1) = v24;
    *&v46 = v41;
    *(&v46 + 1) = v40;
    *&v47 = v39;
    *(&v47 + 1) = v38;
    v48 = 0;
    while (1)
    {
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v52 = v48;
      v29 = sub_22C90313C();
      if (v30)
      {
        break;
      }

      v19(v14, v53 + v29 * v44, v7);
      v19(v10, v18, v7);
      sub_22C7FB604(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
      v31 = sub_22C90A0BC();
      v28(v10, v7);
      v28(v14, v7);
      if (v31)
      {
        return 0;
      }

      sub_22C90315C();
    }

    result = sub_22C90314C();
    v15 = v36;
    v12 = v33;
    if (v36 != v34)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_22C7FD75C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = result;
    v7 = 0;
    while (2)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
      }

      else
      {
        v9 = *a3;
        result = sub_22C90B61C();
        if (!__OFSUB__(1 << v9, 1))
        {
          sub_22C9030FC();
          while (1)
          {
            v10 = sub_22C90313C();
            if (v11)
            {
              break;
            }

            if (*(v6 + 8 * v10) == *(v6 + 8 * v7))
            {
              return 0;
            }

            sub_22C90315C();
          }

          result = sub_22C90314C();
          ++v7;
          if (v8 != a2)
          {
            continue;
          }

          return 1;
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7FD8A8()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = sub_22C36D860(v5);
  *v6 = v7;
  v6[1] = sub_22C46BC08;
  v8 = sub_22C36DBB4();

  return sub_22C7F6C24(v8, v9, v10, v1, v2, v4, v3);
}

uint64_t sub_22C7FD968()
{
  sub_22C36D5EC();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_22C36D860(v3);
  *v4 = v5;
  v4[1] = sub_22C46BC08;
  v6 = sub_22C36DBB4();

  return sub_22C7F6E0C(v6, v7, v8, v2, v1);
}

uint64_t sub_22C7FDA38(uint64_t a1)
{
  result = sub_22C9037EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C7FDAEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C7FDB44(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C7FDC74()
{
}

uint64_t sub_22C7FDCA0()
{
}

uint64_t sub_22C7FDD60()
{

  return sub_22C908A5C();
}

uint64_t sub_22C7FDD80(uint64_t a1)
{

  return sub_22C90371C();
}

uint64_t sub_22C7FDDA0(uint64_t a1)
{

  return swift_dynamicCastClass();
}

uint64_t sub_22C7FDDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 120) = a2;
  *(v3 - 112) = a3;

  return sub_22C90B50C();
}

uint64_t sub_22C7FDDD0()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_22C7FDE30(uint64_t a1)
{
  result = sub_22C90377C();
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, qword_281431738, &protocol descriptor for ToolRetrievalSearchProvider);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C7FDECC(uint64_t a1)
{
  v51 = sub_22C908EAC();
  v3 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v42[1] = v1;
    v55 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v9, 0, v4, v5, v6, v7);
    v11 = v55;
    v14 = sub_22C57D74C();
    result = v11;
    v15 = 0;
    v16 = a1 + 56;
    v47 = v3 + 8;
    v48 = v3 + 16;
    v43 = a1 + 64;
    v44 = v9;
    v45 = v3;
    v46 = a1;
    v49 = a1 + 56;
    if ((v14 & 0x8000000000000000) == 0)
    {
      while (v14 < 1 << *(a1 + 32))
      {
        v17 = v14 >> 6;
        if ((*(v16 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v12)
        {
          goto LABEL_25;
        }

        v54 = v13;
        v52 = v15;
        v53 = v12;
        v18 = v50;
        v19 = v51;
        v20 = result;
        (*(v3 + 16))(v50, *(a1 + 48) + *(v3 + 72) * v14, v51);
        v21 = sub_22C908E7C();
        v23 = v22;
        (*(v3 + 8))(v18, v19);
        result = v20;
        v55 = v20;
        v29 = *(v20 + 16);
        v28 = *(v20 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_22C3B5E2C(v28 > 1, v29 + 1, 1, v24, v25, v26, v27);
          result = v55;
        }

        *(result + 16) = v29 + 1;
        v30 = result + 16 * v29;
        *(v30 + 32) = v21;
        *(v30 + 40) = v23;
        v16 = v49;
        if (v54)
        {
          goto LABEL_29;
        }

        v3 = v45;
        a1 = v46;
        v31 = 1 << *(v46 + 32);
        if (v14 >= v31)
        {
          goto LABEL_26;
        }

        v32 = *(v49 + 8 * v17);
        if ((v32 & (1 << v14)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v46 + 36) != v53)
        {
          goto LABEL_28;
        }

        v33 = v32 & (-2 << (v14 & 0x3F));
        if (v33)
        {
          v31 = __clz(__rbit64(v33)) | v14 & 0x7FFFFFFFFFFFFFC0;
          v34 = v44;
        }

        else
        {
          v35 = v17 << 6;
          v36 = v17 + 1;
          v34 = v44;
          v37 = (v43 + 8 * v17);
          while (v36 < (v31 + 63) >> 6)
          {
            v39 = *v37++;
            v38 = v39;
            v35 += 64;
            ++v36;
            if (v39)
            {
              v40 = result;
              sub_22C3A5038(v14, v53, 0);
              result = v40;
              v31 = __clz(__rbit64(v38)) + v35;
              goto LABEL_19;
            }
          }

          v41 = result;
          sub_22C3A5038(v14, v53, 0);
          result = v41;
        }

LABEL_19:
        v15 = v52 + 1;
        if (v52 + 1 == v34)
        {
          return result;
        }

        v13 = 0;
        v12 = *(a1 + 36);
        v14 = v31;
        if (v31 < 0)
        {
          break;
        }
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
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

void sub_22C7FE1F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v29 = MEMORY[0x277D84F90];
    sub_22C3B7DB8(0, v1, 0);
    v5 = sub_22C6339F8();
    v6 = 0;
    v7 = a1 + 64;
    v23 = v3;
    v24 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(a1 + 36) != v3)
      {
        goto LABEL_23;
      }

      v26 = v6;
      v27 = v3;
      v25 = v4;
      v9 = (*(a1 + 48) + 16 * v5);
      v10 = v9[1];
      v28 = *v9;
      v11 = *(*(a1 + 56) + v5);
      v12 = *(v29 + 16);
      v13 = *(v29 + 24);

      if (v12 >= v13 >> 1)
      {
        sub_22C3B7DB8(v13 > 1, v12 + 1, 1);
      }

      *(v29 + 16) = v12 + 1;
      v14 = v29 + 24 * v12;
      *(v14 + 32) = v28;
      *(v14 + 40) = v10;
      *(v14 + 48) = v11;
      v15 = 1 << *(a1 + 32);
      if (v5 >= v15)
      {
        goto LABEL_24;
      }

      v7 = a1 + 64;
      v16 = *(a1 + 64 + 8 * v8);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v27)
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v8 << 6;
        v19 = v8 + 1;
        v20 = (a1 + 72 + 8 * v8);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_22C3A5038(v5, v27, v25 & 1);
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_19;
          }
        }

        sub_22C3A5038(v5, v27, v25 & 1);
      }

LABEL_19:
      v4 = 0;
      v6 = v26 + 1;
      v5 = v15;
      v3 = v23;
      if (v26 + 1 == v24)
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

id sub_22C7FE43C(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = sub_22C90A0EC();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_22C90030C();

    swift_willThrow();
  }

  return v5;
}

unint64_t sub_22C7FE524()
{
  sub_22C90384C();
  sub_22C369824();
  v36 = v2;
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  v35 = v4 - v3;
  v5 = sub_22C9099FC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C36EC5C();
  v9 = sub_22C9036EC();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  v16 = sub_22C908EAC();
  sub_22C369824();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v22 = v21 - v20;
  sub_22C90371C();
  v23 = (*(v11 + 88))(v15, v9);
  if (v23 == *MEMORY[0x277D1ECE0])
  {
LABEL_2:
    v24 = sub_22C370414();
    v25(v24);
    (*(v18 + 32))(v22, v15, v16);
    v26 = sub_22C908E7C();
    (*(v18 + 8))(v22, v16);
    return v26;
  }

  if (v23 == *MEMORY[0x277D1ECE8])
  {
    v27 = sub_22C370414();
    v28(v27);
    (*(v7 + 32))(v0, v15, v5);
    v26 = sub_22C9099DC();
    v29 = sub_22C3720DC();
    v30(v29);
  }

  else
  {
    if (v23 == *MEMORY[0x277D1ECD8] || v23 == *MEMORY[0x277D1ECD0])
    {
      goto LABEL_2;
    }

    if (v23 == *MEMORY[0x277D1ECF8])
    {
      v33 = sub_22C370414();
      v34(v33);
      (*(v36 + 32))(v35, v15, v37);
      v26 = sub_22C9037FC();
      (*(v36 + 8))(v35, v37);
    }

    else
    {
      (*(v11 + 8))(v15, v9);
      return 0xD000000000000013;
    }
  }

  return v26;
}

uint64_t sub_22C7FE8B8()
{
  sub_22C369980();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  v0[16] = sub_22C3699D4();
  v5 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22C7FE944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C375B98();
  a19 = v21;
  a20 = v22;
  sub_22C3749D8();
  a18 = v20;
  (*(v20 + 96))();
  v23 = *(v20 + 128);
  v25 = *(v20 + 112);
  v24 = *(v20 + 120);
  *(v20 + 40) = &type metadata for ToolRetrievalStageCombined;
  *(v20 + 48) = &off_283FC09F0;
  v26 = swift_allocObject();
  *(v20 + 16) = v26;
  v27 = type metadata accessor for AppNameRenderer_v1_0(0);
  v26[10] = v27;
  v26[11] = &off_283FB8878;
  v28 = sub_22C36D548(v26 + 7);
  FullPlannerPreferences.init()(v28 + *(v27 + 20));
  sub_22C9006AC();
  v26[15] = &type metadata for LaunchServicesDeveloperTypeRetriever;
  v26[16] = &off_283FC09E0;
  sub_22C36C730((v20 + 56), (v26 + 2));
  v26[17] = v25;
  v26[18] = v24;
  v26[19] = 100;
  v29 = sub_22C906D3C();
  sub_22C36C640(v23, 1, 1, v29);
  type metadata accessor for RenderingState(0);
  swift_allocObject();

  v26[20] = sub_22C480800(v23);
  sub_22C59675C();
  a9 = v30;
  v32 = *(v30 + 16);
  v31 = *(v30 + 24);
  if (v32 >= v31 >> 1)
  {
    sub_22C369AB0(v31);
    sub_22C59675C();
    a9 = v47;
  }

  v33 = *(v20 + 40);
  v34 = *(v20 + 48);
  v35 = sub_22C36D1E4(v20 + 16, v33);
  v36 = *(v33 - 8);
  v37 = sub_22C3699D4();
  (*(v36 + 16))(v37, v35, v33);
  sub_22C807574(v32, v37, &a9, v33, v34);
  sub_22C36FF94((v20 + 16));

  sub_22C807C0C();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_22C7FEBEC()
{
  sub_22C36FB38();
  v3 = v2;
  v5 = v4;
  v1[65] = v0;
  v1[63] = v6;
  v1[64] = v2;
  v1[61] = v7;
  v1[62] = v8;
  v1[60] = v9;
  v10 = sub_22C9063DC();
  v1[66] = v10;
  sub_22C3699B8(v10);
  v1[67] = v11;
  v1[68] = sub_22C3699D4();
  v1[69] = *(v3 - 8);
  v1[70] = sub_22C3699D4();
  v1[71] = *v5;
  v12 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_22C7FECFC()
{
  sub_22C3743E4();
  (*(*(v0 + 552) + 16))(*(v0 + 560), *(v0 + 520), *(v0 + 512));
  v1 = sub_22C3A5908(&qword_27D9C03A8, &qword_22C9272A0);
  if (sub_22C37FB1C(v0 + 16, v2, v3, v1))
  {
    sub_22C36C730((v0 + 16), v0 + 296);
    sub_22C374168((v0 + 296), *(v0 + 320));
    v4 = swift_task_alloc();
    *(v0 + 576) = v4;
    *v4 = v0;
    v4[1] = sub_22C7FF1AC;
    sub_22C386674(*(v0 + 480));

    return sub_22C800560();
  }

  else
  {
    v6 = sub_22C3A5908(&qword_27D9C03B0, &qword_22C9272A8);
    if (sub_22C37FB1C(v0 + 56, v7, v8, v6))
    {
      v9 = *(v0 + 568);
      sub_22C36C730((v0 + 56), v0 + 256);
      sub_22C374168((v0 + 256), *(v0 + 280));
      *(v0 + 472) = v9;
      sub_22C36CCA8();
      v33 = (v10 + *v10);
      v11 = swift_task_alloc();
      *(v0 + 592) = v11;
      *v11 = v0;
      v11[1] = sub_22C7FF3B4;
      v12 = sub_22C386674(*(v0 + 480));

      return v33(v12);
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9C03B8, &qword_22C9272B0);
      if (sub_22C37FB1C(v0 + 96, v14, v15, v13))
      {
        sub_22C36C730((v0 + 96), v0 + 216);
        sub_22C374168((v0 + 216), *(v0 + 240));
        v16 = swift_task_alloc();
        *(v0 + 608) = v16;
        *v16 = v0;
        v16[1] = sub_22C7FF538;
        sub_22C386674(*(v0 + 480));

        return sub_22C802164();
      }

      else
      {
        v17 = sub_22C3A5908(&qword_27D9C03C0, &qword_22C9272B8);
        if (sub_22C37FB1C(v0 + 136, v18, v19, v17))
        {
          v20 = *(v0 + 568);
          sub_22C36C730((v0 + 136), v0 + 176);
          sub_22C374168((v0 + 176), *(v0 + 200));
          *(v0 + 464) = v20;
          v21 = swift_task_alloc();
          *(v0 + 624) = v21;
          *v21 = v0;
          v21[1] = sub_22C7FF740;
          sub_22C386674(*(v0 + 480));

          return sub_22C803160();
        }

        else
        {
          sub_22C903FCC();
          v22 = sub_22C9063CC();
          v23 = sub_22C90AADC();
          if (sub_22C37B204(v23))
          {
            v24 = sub_22C36D240();
            sub_22C36C890(v24);
            sub_22C36BB14(&dword_22C366000, v25, v26, "Unsupported tool retrieval stage type.");
            sub_22C369B50();
            MEMORY[0x2318B9880]();
          }

          v27 = sub_22C36BAFC();
          v28(v27);
          sub_22C802110();
          swift_allocError();
          *v29 = 0;
          swift_willThrow();
          v30 = sub_22C373A94();
          v31(v30);

          sub_22C369A24();

          return v32();
        }
      }
    }
  }
}

uint64_t sub_22C7FF1AC()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v2[42] = v1;
  v2[43] = v4;
  v2[44] = v5;
  v2[45] = v0;
  sub_22C807C64();
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 584) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C7FF2AC()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 296));
  v1 = sub_22C807BD8();
  v2(v1);

  v3 = sub_22C36C4B0();

  return v4(v3);
}

uint64_t sub_22C7FF330()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 296));
  v1 = sub_22C373A94();
  v2(v1);

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C7FF3B4()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v2[46] = v1;
  v2[47] = v4;
  v2[48] = v5;
  v2[49] = v0;
  sub_22C807C64();
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 600) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C7FF4B4()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 256));
  v1 = sub_22C807BD8();
  v2(v1);

  v3 = sub_22C36C4B0();

  return v4(v3);
}

uint64_t sub_22C7FF538()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v2[50] = v1;
  v2[51] = v4;
  v2[52] = v5;
  v2[53] = v0;
  sub_22C807C64();
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 616) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C7FF638()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 216));
  v1 = sub_22C807BD8();
  v2(v1);

  v3 = sub_22C36C4B0();

  return v4(v3);
}

uint64_t sub_22C7FF6BC()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 216));
  v1 = sub_22C373A94();
  v2(v1);

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C7FF740()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v2[54] = v1;
  v2[55] = v4;
  v2[56] = v5;
  v2[57] = v0;
  sub_22C807C64();
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;
  *(v8 + 632) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C7FF840()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 176));
  v1 = sub_22C807BD8();
  v2(v1);

  v3 = sub_22C36C4B0();

  return v4(v3);
}

uint64_t sub_22C7FF8C4()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 176));
  v1 = sub_22C373A94();
  v2(v1);

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C7FF948()
{
  sub_22C36FB38();
  sub_22C36FF94((v0 + 256));
  v1 = sub_22C373A94();
  v2(v1);

  sub_22C369A24();

  return v3();
}

uint64_t sub_22C7FF9CC()
{
  sub_22C369980();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v1[2] = v5;
  v6 = sub_22C9063DC();
  v1[5] = v6;
  sub_22C3699B8(v6);
  v1[6] = v7;
  v1[7] = sub_22C36D0D4();
  v8 = swift_task_alloc();
  v9 = *v3;
  v1[8] = v8;
  v1[9] = v9;
  v10 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_22C7FFA88(uint64_t a1)
{
  if (*(v1[9] + 16))
  {
    v2 = v1[4];
    v3 = type metadata accessor for ToolRetrievalStageTwo(0);
    sub_22C374168((v2 + *(v3 + 20)), *(v2 + *(v3 + 20) + 24));

    v5 = sub_22C3AE694(v4);
    sub_22C807FA0(v5);
    v6 = sub_22C90716C();

    v14 = v1[4];
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    sub_22C3B50C0(sub_22C807554, v15, v6);
    v17 = v16;

    sub_22C812724(*(v14 + *(v3 + 24)), v17);
    sub_22C7F5988();
    v19 = v18;
    sub_22C903FCC();

    v20 = sub_22C9063CC();
    LOBYTE(v14) = sub_22C90AABC();

    v21 = os_log_type_enabled(v20, v14);
    v22 = v1[8];
    v24 = v1[5];
    v23 = v1[6];
    if (v21)
    {
      sub_22C36FB44();
      v25 = sub_22C385814();
      v34 = v25;
      *v24 = 136315138;
      v26 = sub_22C7FFE58(v25, v19);
      v33 = v22;
      v28 = sub_22C36F9F4(v26, v27, &v34);

      *(v24 + 4) = v28;
      sub_22C376034(&dword_22C366000, v29, v30, "Stage two tools:\n%s");
      sub_22C36FF94(v25);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      (*(v23 + 8))(v33, v24);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }
  }

  else
  {
    sub_22C903FCC();
    v7 = sub_22C9063CC();
    v8 = sub_22C90AABC();
    if (sub_22C37B204(v8))
    {
      v9 = sub_22C36D240();
      sub_22C36C890(v9);
      sub_22C36BB14(&dword_22C366000, v10, v11, "No apps to retrieve tools over. Returning no tools from stage 2.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v12 = sub_22C36BAFC();
    v13(v12);
    sub_22C7F56F4();
  }

  sub_22C37FCB8();
  sub_22C36BAFC();
  sub_22C36EC40();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_22C7FFDA8(uint64_t a1)
{
  v2 = sub_22C807B84();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C7FFDE4(uint64_t a1)
{
  v2 = sub_22C807B84();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C7FFE20()
{
  v0 = qword_27D9C0398;

  return v0;
}

uint64_t sub_22C7FFE58(uint64_t a1, uint64_t a2)
{
  sub_22C90384C();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C9099FC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C9036EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C36EC5C();
  sub_22C908EAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v11 = *(a2 + 16);
  if (v11)
  {
    v59 = MEMORY[0x277D84F90];
    sub_22C3B5E2C(0, v11, 0, v7, v8, v9, v10);
    v12 = sub_22C9037EC();
    sub_22C3699B8(v12);
    v58 = *(v13 + 72);
    sub_22C36BA94();
    v15 = a2 + v14;
    v57 = *MEMORY[0x277D1ECE0];
    v56 = *MEMORY[0x277D1ECE8];
    v55 = *MEMORY[0x277D1ECD8];
    v54 = *MEMORY[0x277D1ECD0];
    v53 = *MEMORY[0x277D1ECF8];
    do
    {
      sub_22C90371C();
      v16 = sub_22C3720DC();
      v18 = v17(v16);
      if (v18 == v57)
      {
        goto LABEL_4;
      }

      if (v18 == v56)
      {
        v26 = sub_22C3720DC();
        v27(v26);
        v28 = sub_22C38644C();
        v29(v28);
        v23 = sub_22C9099DC();
        v25 = v30;
        goto LABEL_7;
      }

      if (v18 == v55 || v18 == v54)
      {
LABEL_4:
        v19 = sub_22C3720DC();
        v20(v19);
        v21 = sub_22C38644C();
        v22(v21);
        v23 = sub_22C908E7C();
        v25 = v24;
      }

      else
      {
        if (v18 != v53)
        {
          v42 = sub_22C3720DC();
          v43(v42);
          v23 = 0xD000000000000013;
          v25 = 0x800000022C935760;
          goto LABEL_8;
        }

        v37 = sub_22C3720DC();
        v38(v37);
        v39 = sub_22C38644C();
        v40(v39);
        v23 = sub_22C9037FC();
        v25 = v41;
      }

LABEL_7:
      v31 = sub_22C372FA4();
      v32(v31);
LABEL_8:
      v34 = *(v59 + 16);
      v33 = *(v59 + 24);
      if (v34 >= v33 >> 1)
      {
        v44 = sub_22C369AB0(v33);
        sub_22C3B5E2C(v44, v34 + 1, 1, v45, v46, v47, v48);
      }

      *(v59 + 16) = v34 + 1;
      v35 = v59 + 16 * v34;
      *(v35 + 32) = v23;
      *(v35 + 40) = v25;
      v15 += v58;
      --v11;
    }

    while (v11);
  }

  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C375144();
  sub_22C3D32C8(v49, &qword_27D9BB5D0, &unk_22C9112A0, v50);
  v51 = sub_22C90A04C();

  return v51;
}

uint64_t sub_22C80037C(uint64_t a1, uint64_t a2, void (*a3)(void), unsigned int *a4, float (*a5)(uint64_t), void (*a6)(void))
{
  v11 = sub_22C90377C();
  sub_22C369824();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  sub_22C36EC5C();
  v15 = sub_22C9036EC();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v21 = v20 - v19;
  a3();
  v22 = (*(v17 + 104))(v21, *a4, v15);
  a5(v22);
  (*(v13 + 16))(v6, a2, v11);
  sub_22C90370C();
  (*(v13 + 8))(a2, v11);
  a6(0);
  sub_22C369848();
  return (*(v23 + 8))(a1);
}

uint64_t sub_22C800560()
{
  sub_22C369980();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_22C9063DC();
  v1[14] = v4;
  sub_22C3699B8(v4);
  v1[15] = v5;
  v1[16] = sub_22C36D0D4();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v6 = sub_22C90363C();
  v1[19] = v6;
  sub_22C3699B8(v6);
  v1[20] = v7;
  v1[21] = sub_22C3699D4();
  v8 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C80066C()
{
  v38 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[13];
  v5 = type metadata accessor for ToolRetrievalStageOne(0);
  sub_22C378A4C(v4 + *(v5 + 20), (v0 + 2));
  sub_22C374168(v0 + 2, v0[5]);
  sub_22C90850C();
  (*(v2 + 104))(v1, *MEMORY[0x277D1EBD8], v3);
  v6 = sub_22C90362C();
  v7 = sub_22C372FA4();
  v8(v7);
  if (v6)
  {
  }

  sub_22C90713C();
  v9 = v0[13];

  sub_22C36FF94(v0 + 2);
  *(swift_task_alloc() + 16) = v9;
  sub_22C794B1C();

  sub_22C7F56F4();
  sub_22C8127DC(*(v9 + *(v5 + 24)), v10);
  v12 = v11;
  v14 = v13;

  v15 = sub_22C36BAFC();
  v17 = sub_22C8019DC(v15, v16, v12, v14);
  v19 = v18;
  sub_22C903FCC();

  v20 = sub_22C9063CC();
  v21 = sub_22C90AABC();

  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[18];
  v25 = v0[14];
  v24 = v0[15];
  if (v22)
  {
    v26 = sub_22C36FB44();
    v27 = sub_22C370060();
    v36 = v17;
    v37 = v27;
    v28 = v27;
    *v26 = 136315138;
    v29 = sub_22C7FFE58(v27, v19);
    v35 = v23;
    v31 = sub_22C36F9F4(v29, v30, &v37);

    *(v26 + 4) = v31;
    sub_22C3863B4(&dword_22C366000, v32, v21, "Stage one tools:\n%s");
    sub_22C36FF94(v28);
    v17 = v36;
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    (*(v24 + 8))(v35, v25);
  }

  else
  {

    (*(v24 + 8))(v23, v25);
  }

  sub_22C37FCB8();

  return v33(v17, v19);
}

uint64_t sub_22C800BE4@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v89 = a3;
  v87 = a2;
  v4 = sub_22C3A5908(&qword_27D9C03D0, &unk_22C9272E0);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v68 - v5;
  v75 = sub_22C90848C();
  v72 = *(v75 - 8);
  v6 = MEMORY[0x28223BE20](v75);
  v70 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v68 - v8;
  v79 = sub_22C9036EC();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v84 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C9037DC();
  v85 = *(v10 - 8);
  v86 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v82 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v83 = &v68 - v13;
  v14 = sub_22C90377C();
  v92 = *(v14 - 8);
  v93 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v80 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v94 = &v68 - v17;
  v88 = sub_22C908EAC();
  v77 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v90 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  MEMORY[0x28223BE20](v19 - 8);
  v81 = &v68 - v20;
  v21 = sub_22C3A5908(&qword_27D9C03D8, &qword_22C9272F0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v68 - v22;
  v24 = sub_22C9084FC();
  v73 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v68 - v28;
  v30 = sub_22C3A5908(&qword_27D9C03E0, &qword_22C9272F8);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v68 - v31;
  v33 = sub_22C90643C();
  v91 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v76 = (&v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v37 = &v68 - v36;
  sub_22C378A4C(a1, v95);
  sub_22C3A5908(&qword_27D9C03E8, &unk_22C927300);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22C36C640(v32, 1, 1, v33);
    sub_22C3AC228(v32, &qword_27D9C03E0, &qword_22C9272F8);
    sub_22C378A4C(a1, v95);
    if (swift_dynamicCast())
    {
      sub_22C36C640(v23, 0, 1, v24);
      v48 = v73;
      (*(v73 + 32))(v29, v23, v24);
      (*(v48 + 16))(v27, v29, v24);
      v49 = v94;
      (*(v92 + 16))(v94, v87, v93);
      v50 = v89;
      sub_22C80037C(v27, v49, MEMORY[0x277D1E520], MEMORY[0x277D1ECE8], MEMORY[0x277D1E528], MEMORY[0x277D1E530]);
      (*(v48 + 8))(v29, v24);
    }

    else
    {
      sub_22C36C640(v23, 1, 1, v24);
      sub_22C3AC228(v23, &qword_27D9C03D8, &qword_22C9272F0);
      sub_22C378A4C(a1, v95);
      v59 = v74;
      v60 = v75;
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_22C36C640(v59, 1, 1, v60);
        sub_22C3AC228(v59, &qword_27D9C03D0, &unk_22C9272E0);
        v65 = sub_22C9037EC();
        v66 = v89;
        v67 = 1;
        return sub_22C36C640(v66, v67, 1, v65);
      }

      sub_22C36C640(v59, 0, 1, v60);
      v61 = v72;
      v62 = v71;
      (*(v72 + 32))(v71, v59, v60);
      v63 = v70;
      (*(v61 + 16))(v70, v62, v60);
      v64 = v94;
      (*(v92 + 16))(v94, v87, v93);
      v50 = v89;
      sub_22C80037C(v63, v64, MEMORY[0x277D1E4B0], MEMORY[0x277D1ECD0], MEMORY[0x277D1E4B8], MEMORY[0x277D1E4C0]);
      (*(v61 + 8))(v62, v60);
    }

    v65 = sub_22C9037EC();
    v66 = v50;
    v67 = 0;
    return sub_22C36C640(v66, v67, 1, v65);
  }

  sub_22C36C640(v32, 0, 1, v33);
  (*(v91 + 32))(v37, v32, v33);
  v38 = v90;
  sub_22C90641C();
  v39 = sub_22C908E5C();
  v40 = v77;
  v41 = *(v77 + 8);
  v41(v38, v88);
  v78 += 13;
  v69 = v37;
  if (v39)
  {
    sub_22C90641C();
    v76 = *(v92 + 16);
    v42 = v94;
    v76(v94, v87, v93);
    v95[0] = MEMORY[0x277D84F90];
    sub_22C80760C(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
    v87 = v41;
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
    v43 = v83;
    v44 = v86;
    sub_22C90AE4C();
    v45 = v84;
    (*(v40 + 16))(v84, v90, v88);
    (*v78)(v45, *MEMORY[0x277D1ECD8], v79);
    v76(v80, v42, v93);
    v46 = v85;
    (*(v85 + 16))(v82, v43, v44);
    v47 = v81;
    sub_22C9036FC();
    (*(v46 + 8))(v43, v44);
    (*(v92 + 8))(v94, v93);
    v87(v90, v88);
    (*(v91 + 8))(v69, v33);
  }

  else
  {
    (*(v91 + 16))();
    v90 = *(v92 + 16);
    (v90)(v94, v87, v93);
    v95[0] = MEMORY[0x277D84F90];
    sub_22C80760C(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
    v51 = v83;
    v52 = v86;
    sub_22C90AE4C();
    v53 = v84;
    sub_22C90641C();
    (*v78)(v53, *MEMORY[0x277D1ECE0], v79);
    sub_22C90642C();
    v54 = v93;
    (v90)(v80, v94, v93);
    v55 = v85;
    (*(v85 + 16))(v82, v51, v52);
    v47 = v81;
    sub_22C9036FC();
    (*(v55 + 8))(v51, v52);
    (*(v92 + 8))(v94, v54);
    v56 = *(v91 + 8);
    v56(v76, v33);
    v56(v69, v33);
  }

  v57 = sub_22C9037EC();
  sub_22C36C640(v47, 0, 1, v57);
  return sub_22C8073A4(v47, v89);
}

uint64_t sub_22C8019DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = a3;
  v4 = a2;
  v6 = *(a2 + 16);
  if (v6 < a3 || v6 < a4)
  {
    goto LABEL_13;
  }

  if (a4 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 == a4 - a3)
  {

    v8 = v4;
    goto LABEL_9;
  }

LABEL_15:
  v13 = (2 * a4) | 1;
  v14 = *(sub_22C9037EC() - 8);
  sub_22C46FEFC(v4, v4 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v5, v13);
  v8 = v15;
LABEL_9:
  sub_22C3B0E80();
  sub_22C7D61C0(v8);
  v10 = v9;
  v11 = *(v8 + 16);

  if (v11 <= 0xF)
  {

    return 0;
  }

  return v10;
}

uint64_t sub_22C801AF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_22C9036EC();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22C9037DC();
  v38 = *(v35 - 8);
  v5 = MEMORY[0x28223BE20](v35);
  v37 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = &v28 - v7;
  v8 = sub_22C90377C();
  v29 = v8;
  v31 = *(v8 - 8);
  v9 = v31;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v30 = &v28 - v13;
  v15 = sub_22C90643C();
  v16 = *(v15 - 8);
  v33 = v15;
  v34 = v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))();
  v20 = *(v9 + 16);
  v20(v14, a1, v8);
  v42 = MEMORY[0x277D84F90];
  sub_22C80760C(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
  v21 = v32;
  v22 = v35;
  sub_22C90AE4C();
  v23 = v36;
  v28 = v19;
  sub_22C90641C();
  (*(v39 + 104))(v23, *MEMORY[0x277D1ECE0], v40);
  sub_22C90642C();
  v24 = v29;
  v25 = v30;
  v20(v12, v30, v29);
  v26 = v38;
  (*(v38 + 16))(v37, v21, v22);
  sub_22C9036FC();
  (*(v26 + 8))(v21, v22);
  (*(v31 + 8))(v25, v24);
  return (*(v34 + 8))(v28, v33);
}

uint64_t sub_22C801F68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C802014;

  return sub_22C7FF9CC();
}

uint64_t sub_22C802014()
{
  sub_22C36FB38();
  v3 = v2;
  v5 = v4;
  sub_22C369A3C();
  v6 = *v1;
  sub_22C369970();
  *v7 = v6;

  sub_22C37FCB8();
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

unint64_t sub_22C802110()
{
  result = qword_27D9C03C8;
  if (!qword_27D9C03C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C03C8);
  }

  return result;
}

uint64_t sub_22C802164()
{
  sub_22C369980();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_22C9036EC();
  v1[7] = v5;
  sub_22C3699B8(v5);
  v1[8] = v6;
  v1[9] = sub_22C3699D4();
  v7 = sub_22C9037DC();
  v1[10] = v7;
  sub_22C3699B8(v7);
  v1[11] = v8;
  v1[12] = sub_22C36D0D4();
  v1[13] = swift_task_alloc();
  v9 = sub_22C90377C();
  v1[14] = v9;
  sub_22C3699B8(v9);
  v1[15] = v10;
  v1[16] = sub_22C36D0D4();
  v1[17] = swift_task_alloc();
  v11 = sub_22C908EAC();
  v1[18] = v11;
  sub_22C3699B8(v11);
  v1[19] = v12;
  v1[20] = sub_22C3699D4();
  v13 = sub_22C90643C();
  v1[21] = v13;
  sub_22C3699B8(v13);
  v1[22] = v14;
  v1[23] = sub_22C3699D4();
  v15 = sub_22C9037EC();
  v1[24] = v15;
  sub_22C3699B8(v15);
  v1[25] = v16;
  v1[26] = sub_22C3699D4();
  v17 = sub_22C9063DC();
  v1[27] = v17;
  sub_22C3699B8(v17);
  v1[28] = v18;
  v1[29] = sub_22C36D0D4();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v19 = sub_22C36BB98();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_22C802410(uint64_t a1)
{
  v111 = v1;
  sub_22C903FCC();

  v2 = sub_22C9063CC();
  v3 = sub_22C90AABC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[32];
  v7 = v1[27];
  v6 = v1[28];
  if (v4)
  {
    v8 = v1[4];
    v9 = v1[3];
    v10 = swift_slowAlloc();
    v110[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_22C36F9F4(v9, v8, v110);
    *(v10 + 12) = 2080;
    sub_22C9093BC();
    sub_22C80760C(&qword_28142FA90, MEMORY[0x277D72A78], MEMORY[0x277D72A88]);
    v11 = sub_22C90A8CC();
    v13 = sub_22C36F9F4(v11, v12, v110);

    *(v10 + 14) = v13;
    _os_log_impl(&dword_22C366000, v2, v3, "Tool Retrieval Query for stage 3: %s, types: %s", v10, 0x16u);
    swift_arrayDestroy();
    sub_22C369B50();
    MEMORY[0x2318B9880]();
    sub_22C369B50();
    MEMORY[0x2318B9880]();

    v14 = *(v6 + 8);
    v14(v5, v7);
  }

  else
  {

    v14 = *(v6 + 8);
    v14(v5, v7);
  }

  if (*(v1[5] + 16))
  {
    v104 = v14;
    v15 = v1[6];
    v16 = type metadata accessor for ToolRetrievalStageThree(0);
    sub_22C374168((v15 + *(v16 + 24)), *(v15 + *(v16 + 24) + 24));
    sub_22C3A5908(&qword_27D9BEC40, &unk_22C920500);
    v17 = sub_22C908D4C();
    sub_22C369824();
    v19 = v18;
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_22C90F800;
    (*(v19 + 104))(v21 + v20, *MEMORY[0x277D720E0], v17);
    sub_22C36BB08();
    sub_22C90667C();

    v32 = v1[5];
    v33 = v1[6];
    sub_22C3AF348();
    v35 = v34;
    v36 = swift_task_alloc();
    *(v36 + 16) = v33;
    v37 = sub_22C6051A0(MEMORY[0x277D84FA0], sub_22C807434, v36, v32);

    v38 = sub_22C805DD0(v37, v35, sub_22C8065EC, sub_22C8065EC);

    sub_22C903FCC();

    v39 = sub_22C9063CC();
    LOBYTE(v33) = sub_22C90AABC();

    v40 = os_log_type_enabled(v39, v33);
    v41 = v1[31];
    v42 = v1[27];
    v43 = v1[28];
    if (v40)
    {
      sub_22C36FB44();
      v103 = v42;
      v44 = sub_22C385814();
      v110[0] = v44;
      *v43 = 136315138;
      sub_22C80760C(&qword_27D9BAA80, MEMORY[0x277D72238], MEMORY[0x277D72248]);
      v45 = sub_22C90A8CC();
      v47 = sub_22C36F9F4(v45, v46, v110);

      *(v43 + 4) = v47;
      sub_22C376034(&dword_22C366000, v48, v49, "Stage 3 entity setters with type overlap for provided types: %s");
      sub_22C36FF94(v44);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v50 = v41;
      v51 = v103;
    }

    else
    {

      v50 = v41;
      v51 = v42;
    }

    v104(v50, v51);
    v52 = (v1[6] + *(v16 + 20));
    sub_22C374168(v52, v52[3]);
    sub_22C7FDECC(v38);

    v53 = sub_22C90715C();

    sub_22C903FCC();

    v54 = sub_22C9063CC();
    v55 = sub_22C90AABC();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v1[30];
    v58 = v1[27];
    if (v56)
    {
      v59 = v1[21];
      v108 = v1[27];
      v60 = sub_22C36FB44();
      v61 = sub_22C370060();
      v110[0] = v61;
      *v60 = 136315138;
      v62 = MEMORY[0x2318B7AD0](v53, v59);
      v64 = v57;
      v65 = v53;
      v66 = sub_22C36F9F4(v62, v63, v110);

      *(v60 + 4) = v66;
      v53 = v65;
      _os_log_impl(&dword_22C366000, v54, v55, "Stage 3 semantic results: %s", v60, 0xCu);
      sub_22C36FF94(v61);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();

      v104(v64, v108);
    }

    else
    {

      v104(v57, v58);
    }

    v67 = *(v53 + 16);
    if (v67)
    {
      v68 = v1[22];
      v69 = v1[19];
      v70 = v1[15];
      v71 = v1[11];
      v72 = v1[8];
      v110[0] = MEMORY[0x277D84F90];
      sub_22C3B60C0(0, v67, 0);
      v73 = *(v68 + 16);
      v68 += 16;
      v94 = v73;
      sub_22C36BA94();
      v75 = v53 + v74;
      v93 = (v70 + 104);
      v76 = v110[0];
      v92 = *(v68 + 56);
      v91 = *MEMORY[0x277D1ED40];
      v90 = (v70 + 16);
      v89 = (v70 + 8);
      v88 = (v68 - 8);
      v87 = *MEMORY[0x277D1ECD8];
      do
      {
        v106 = v67;
        v100 = v1[23];
        v101 = v1[21];
        v95 = v1[20];
        v77 = v1[17];
        v109 = v1[18];
        v98 = v1[16];
        v78 = v1[13];
        v79 = v1[14];
        v99 = v1[12];
        v80 = v1[10];
        v96 = v1[9];
        v97 = v1[7];
        v102 = v75;
        v94(v100, v75);
        sub_22C90641C();
        (*v93)(v77, v91, v79);
        v1[2] = MEMORY[0x277D84F90];
        sub_22C807BF4();
        sub_22C80760C(&qword_27D9BB820, v81, MEMORY[0x277D1ED78]);
        sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
        sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
        sub_22C90AE4C();
        (*(v69 + 16))(v96, v95, v109);
        (*(v72 + 104))(v96, v87, v97);
        (*v90)(v98, v77, v79);
        (*(v71 + 16))(v99, v78, v80);
        sub_22C9036FC();
        (*(v71 + 8))(v78, v80);
        (*v89)(v77, v79);
        (*(v69 + 8))(v95, v109);
        (*v88)(v100, v101);
        v110[0] = v76;
        v83 = *(v76 + 16);
        v82 = *(v76 + 24);
        if (v83 >= v82 >> 1)
        {
          v86 = sub_22C369AB0(v82);
          sub_22C3B60C0(v86, v83 + 1, 1);
          v76 = v110[0];
        }

        *(v76 + 16) = v83 + 1;
        sub_22C36BA94();
        (*(v85 + 32))(v76 + v84 + *(v85 + 72) * v83);
        v75 = v102 + v92;
        v67 = v106 - 1;
      }

      while (v106 != 1);
    }
  }

  else
  {
    sub_22C903FCC();
    v22 = sub_22C9063CC();
    v23 = sub_22C90AABC();
    if (sub_22C37B204(v23))
    {
      v24 = sub_22C36D240();
      sub_22C36C890(v24);
      sub_22C36BB14(&dword_22C366000, v25, v26, "Types list for stage 3 retrieval is empty. Emitting no tools.");
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v27 = sub_22C36BAFC();
    (v14)(v27);
  }

  sub_22C7F56F4();
  v105 = v29;
  v107 = v28;

  sub_22C37FCB8();

  return v30(v107, v105);
}

void sub_22C802FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = a1;
  v5 = sub_22C90952C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolRetrievalStageThree(0);
  sub_22C374168((a3 + *(v9 + 24)), *(a3 + *(v9 + 24) + 24));
  sub_22C90935C();
  sub_22C90668C();
  (*(v6 + 8))(v8, v5);
  if (!v3)
  {
    sub_22C8B58E8();
  }
}

uint64_t sub_22C803160()
{
  sub_22C36FB38();
  v3 = v2;
  v1[25] = v4;
  v1[26] = v0;
  v1[23] = v5;
  v1[24] = v6;
  v1[22] = v7;
  sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  v1[27] = sub_22C3699D4();
  v8 = sub_22C9037EC();
  v1[28] = v8;
  sub_22C3699B8(v8);
  v1[29] = v9;
  v1[30] = sub_22C36D0D4();
  v1[31] = swift_task_alloc();
  v10 = sub_22C90363C();
  v1[32] = v10;
  sub_22C3699B8(v10);
  v1[33] = v11;
  v1[34] = sub_22C3699D4();
  v12 = sub_22C9063DC();
  v1[35] = v12;
  sub_22C3699B8(v12);
  v1[36] = v13;
  v1[37] = sub_22C36D0D4();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *v3;
  v1[41] = v14;
  v1[42] = v15;
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

void sub_22C803350()
{
  sub_22C3749D8();
  v159 = v0;
  v155 = *MEMORY[0x277D85DE8];
  v1 = 0;
  sub_22C7FE1F8(v0[42]);
  v3 = sub_22C3AF470(v2);
  sub_22C807C50();
  v6 = v5 >> 6;
  v7 = 8 * (v5 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_2:
    MEMORY[0x28223BE20](v4);
    v9 = sub_22C807C3C();
    sub_22C88FAFC(v9, v6, v7);
    v10 = 0;
    v11 = 0;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 56);
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v16 = v15 | (v11 << 6);
LABEL_12:
      if (*(*(v3 + 48) + 24 * v16 + 16))
      {
        *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
LABEL_16:
          v20 = sub_22C377B94();
          sub_22C7ED290(v20, v21, v22, v3);
          v24 = v23;
          goto LABEL_17;
        }
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= ((v12 + 63) >> 6))
      {
        goto LABEL_16;
      }

      v18 = *(v3 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v14 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v11 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  swift_slowAlloc();

  v135 = sub_22C377B94();
  v139 = sub_22C805CC0(v135, v136, v3, v137, 0, v138);
  if (v1)
  {

    swift_bridgeObjectRelease_n();
    sub_22C369B50();
    sub_22C372034();

    JUMPOUT(0x2318B9880);
  }

  v24 = v139;
  swift_bridgeObjectRelease_n();
  sub_22C369B50();
  MEMORY[0x2318B9880]();
LABEL_17:
  v25 = v0[26];
  v26 = swift_task_alloc();
  v26[2] = v25;

  v149 = v24;
  v7 = sub_22C8070D4(sub_22C807450, v26, v24);

  v27 = swift_task_alloc();
  *(v27 + 16) = v25;
  sub_22C3B5114(sub_22C807470, v27, v7);
  v29 = v28;

  v6 = 0;
  v30 = *(v29 + 16);
  v3 = MEMORY[0x277D84F90];
LABEL_18:
  v31 = (v29 + 40 + 16 * v6);
  while (v30 != v6)
  {
    if (v6 >= *(v29 + 16))
    {
      goto LABEL_58;
    }

    v7 = *(v31 - 1);
    v32 = *v31;
    v31 += 2;
    ++v6;
    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v153 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B5E2C(0, *(v3 + 16) + 1, 1, v35, v36, v37, v38);
        v3 = v153;
      }

      v40 = *(v3 + 16);
      v39 = *(v3 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_22C3B5E2C(v39 > 1, v40 + 1, 1, v35, v36, v37, v38);
        v3 = v153;
      }

      *(v3 + 16) = v40 + 1;
      v41 = v3 + 16 * v40;
      *(v41 + 32) = v7;
      *(v41 + 40) = v32;
      goto LABEL_18;
    }
  }

  v42 = v0[26];
  v151 = v3;
  v43 = v0[23];
  v44 = v0[22];

  *(swift_task_alloc() + 16) = v42;
  sub_22C794D80();
  v46 = v45;

  v47 = sub_22C3AD928(v46);
  v153 = v44;
  v154 = v43;

  v48 = sub_22C38C500();
  MEMORY[0x2318B7850](v48);
  v152[0] = v151;

  sub_22C876C98(v152);
  if (!v1)
  {
    v0[19] = v152[0];
    v49 = sub_22C38644C();
    sub_22C3A5908(v49, v50);
    sub_22C375144();
    sub_22C3D32C8(v51, &qword_27D9BB5D0, &unk_22C9112A0, v52);
    sub_22C38C500();
    v53 = sub_22C90A04C();
    v55 = v54;

    MEMORY[0x2318B7850](v53, v55);

    v56 = sub_22C38C500();
    MEMORY[0x2318B7850](v56);
    sub_22C8741B8(v47, v57, v58, v59, v60, v61, v62, v63, v141, v142, v143, v144, v145, v146, v47, v148, v149, v151, v152[0], v152[1], v153, v154, v155, v156, v157, v158);
    v0[20] = v64;
    sub_22C38C500();
    v65 = sub_22C90A04C();
    v67 = v66;

    MEMORY[0x2318B7850](v65, v67);

    v68 = v153;
    v69 = v154;
    sub_22C903FCC();

    v70 = sub_22C9063CC();
    v71 = sub_22C90AABC();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v0[41];
    v75 = v0[35];
    v74 = v0[36];
    if (v72)
    {
      v76 = sub_22C36FB44();
      v65 = sub_22C370060();
      v153 = v65;
      *v76 = 136315138;
      *(v76 + 4) = sub_22C36F9F4(v68, v69, &v153);
      sub_22C3863B4(&dword_22C366000, v77, v71, "Modified tool retrieval query: %s");
      sub_22C36FF94(v65);
      sub_22C369B50();
      MEMORY[0x2318B9880]();
      sub_22C369B50();
      MEMORY[0x2318B9880]();
    }

    v148 = *(v74 + 8);
    v148(v73, v75);
    sub_22C903CAC();
    if (v78)
    {
      v79 = v0[22];
      v80 = v0[23];
      sub_22C900F8C();
      v0[12] = v79;
      v0[13] = v80;
      v0[14] = v68;
      v0[15] = v69;
      sub_22C8074AC();
      sub_22C807500();

      sub_22C372FA4();
      sub_22C900F7C();
    }

    else
    {
      sub_22C903FCC();
      v81 = sub_22C9063CC();
      v82 = sub_22C90AADC();
      v83 = os_log_type_enabled(v81, v82);
      v84 = v0[40];
      v85 = v0[35];
      if (v83)
      {
        v86 = sub_22C36D240();
        sub_22C36C890(v86);
        _os_log_impl(&dword_22C366000, v81, v82, "Unable to retrieve a requestId for the Tool Retrieval request", v65, 2u);
        sub_22C369B50();
        MEMORY[0x2318B9880]();
      }

      v148(v84, v85);
    }

    v87 = v0[33];
    v88 = v0[34];
    v89 = v0[32];
    sub_22C378A4C(v0[26], (v0 + 2));
    sub_22C374168(v0 + 2, v0[5]);
    sub_22C90850C();

    sub_22C3AE694(v90);
    (*(v87 + 104))(v88, *MEMORY[0x277D1EBD8], v89);
    v91 = sub_22C90362C();
    (*(v87 + 8))(v88, v89);
    if (v91)
    {
    }

    v3 = sub_22C90714C();
    v144 = v69;
    v1 = v0[29];

    sub_22C36FF94(v0 + 2);
    v6 = 0;
    v92 = *(v3 + 16);
    v143 = v1;
    v145 = v1 + 4;
    v146 = MEMORY[0x277D84F90];
    v7 = v3 + 32;
LABEL_41:
    for (i = v7 + 40 * v6; ; i += 40)
    {
      if (v92 == v6)
      {
        v109 = v0[26];

        sub_22C7F56F4();
        v111 = sub_22C8127DC(*(v109 + 136), v110);
        v113 = v112;
        v115 = v114;
        v117 = v116;

        sub_22C8019DC(v111, v113, v115, v117);
        v119 = v118;
        sub_22C903FCC();

        v120 = sub_22C9063CC();
        v121 = sub_22C90AABC();

        v122 = os_log_type_enabled(v120, v121);
        v123 = v0[38];
        v124 = v0[35];
        if (v122)
        {
          v125 = sub_22C36FB44();
          v150 = v124;
          v126 = sub_22C370060();
          v153 = v126;
          *v125 = 136315138;
          v127 = sub_22C7FFE58(v126, v119);
          v147 = v123;
          v129 = sub_22C36F9F4(v127, v128, &v153);

          *(v125 + 4) = v129;
          sub_22C3863B4(&dword_22C366000, v130, v121, "Stage **combined 1 & 2** tools:\n%s");
          sub_22C36FF94(v126);
          sub_22C369B50();
          MEMORY[0x2318B9880]();
          sub_22C369B50();
          MEMORY[0x2318B9880]();

          v131 = v147;
          v132 = v150;
        }

        else
        {

          v131 = v123;
          v132 = v124;
        }

        v148(v131, v132);

        sub_22C37FCB8();
        sub_22C372034();

        __asm { BRAA            X3, X16 }
      }

      if (v6 >= *(v3 + 16))
      {
        break;
      }

      v94 = v0[42];
      v95 = v0[27];
      sub_22C378A4C(i, (v0 + 7));
      sub_22C804990((v0 + 7), v94, v95);
      v96 = v0[27];
      v1 = v0[28];
      sub_22C36FF94(v0 + 7);
      if (sub_22C370B74(v96, 1, v1) != 1)
      {
        v97 = v0[31];
        v141 = v0[30];
        v142 = v7;
        v98 = v0[28];
        v99 = *v145;
        (*v145)(v97, v0[27], v98);
        v99(v141, v97, v98);
        v100 = v146;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C590968();
          v100 = v107;
        }

        v102 = *(v100 + 16);
        v101 = *(v100 + 24);
        v103 = v100;
        v1 = (v102 + 1);
        if (v102 >= v101 >> 1)
        {
          sub_22C369AB0(v101);
          sub_22C590968();
          v103 = v108;
        }

        ++v6;
        v146 = v103;
        *(v103 + 16) = v1;
        sub_22C36BA94();
        (v99)(v104 + v105 + *(v106 + 72) * v102);
        v7 = v142;
        goto LABEL_41;
      }

      sub_22C3AC228(v0[27], &qword_27D9BD2A8, &qword_22C920540);
      ++v6;
    }

    goto LABEL_59;
  }

  sub_22C372034();
}

uint64_t sub_22C8042F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (*(v6 + 16) && (v7 = sub_22C36E2BC(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + v7);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_22C580120();

    v10 = sub_22C7FE43C(a1, a2, 0);
    v9 = [v10 developerType];

    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + 32);
    sub_22C62DE00();
    *(v5 + 32) = v12;
    swift_endAccess();
  }

  return v9;
}

uint64_t sub_22C804454@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_22C374168(a2 + 5, a2[8]);
  v8 = a2[18];
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v8;
  v13[5] = v7;
  sub_22C4FB170(v5, v6, sub_22C430BE0, v13, v8);
  v9 = sub_22C90A1BC();
  v11 = v10;

  *a3 = v9;
  a3[1] = v11;
  return result;
}

uint64_t sub_22C8044FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a3;
  v42 = a2;
  v4 = sub_22C9093BC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = sub_22C9063DC();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C90952C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90935C();
  if ((*(v15 + 88))(v17, v14) != *MEMORY[0x277D72D28])
  {
    (*(v15 + 8))(v17, v14);
    sub_22C903FCC();
    v21 = *(v5 + 16);
    v21(v10, a1, v4);
    v22 = sub_22C9063CC();
    v23 = sub_22C90AADC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      LODWORD(v42) = v23;
      v25 = v24;
      v41 = swift_slowAlloc();
      v46 = v41;
      *v25 = 136315138;
      v21(v8, v10, v4);
      v26 = sub_22C90A1AC();
      v28 = v27;
      (*(v5 + 8))(v10, v4);
      v29 = sub_22C36F9F4(v26, v28, &v46);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_22C366000, v22, v42, "Ignoring non-entity type identifier: %s", v25, 0xCu);
      v30 = v41;
      sub_22C36FF94(v41);
      MEMORY[0x2318B9880](v30, -1, -1);
      MEMORY[0x2318B9880](v25, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }

    result = (*(v43 + 8))(v13, v44);
    goto LABEL_10;
  }

  (*(v15 + 96))(v17, v14);
  v18 = *(*v17 + 16);
  v19 = *(*v17 + 24);

  LOWORD(v18) = sub_22C8042F4(v18, v19);

  if ((v18 & 0x1FF) == 3)
  {

LABEL_10:
    v39 = v45;
    *v45 = 0;
    v39[1] = 0;
    return result;
  }

  v31 = sub_22C90A2CC();
  v33 = v32;

  result = sub_22C90A43C();
  if (result)
  {
    v34 = sub_22C8E6684(7, v31, v33);
    v35 = MEMORY[0x2318B76D0](v34);
    v37 = v36;

    v38 = v45;
    *v45 = v35;
    v38[1] = v37;
  }

  else
  {
    v40 = v45;
    *v45 = v31;
    v40[1] = v33;
  }

  return result;
}

uint64_t sub_22C804990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v142 = a2;
  v156 = a3;
  v137 = sub_22C90848C();
  v129 = *(v137 - 8);
  v4 = MEMORY[0x28223BE20](v137);
  v127 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v128 = &v127 - v7;
  MEMORY[0x28223BE20](v6);
  v133 = (&v127 - v8);
  v150 = sub_22C9084FC();
  v134 = *(v150 - 1);
  v9 = MEMORY[0x28223BE20](v150);
  v131 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v132 = &v127 - v12;
  MEMORY[0x28223BE20](v11);
  v141 = &v127 - v13;
  v147 = sub_22C9036EC();
  v143 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v149 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C3A5908(&qword_27D9BC908, &qword_22C915090);
  MEMORY[0x28223BE20](v15 - 8);
  v139 = &v127 - v16;
  v17 = sub_22C90377C();
  v160 = *(v17 - 8);
  v161 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v146 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v162 = &v127 - v21;
  MEMORY[0x28223BE20](v20);
  v158 = &v127 - v22;
  v157 = sub_22C9037DC();
  v148 = *(v157 - 8);
  v23 = MEMORY[0x28223BE20](v157);
  v144 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v145 = &v127 - v26;
  MEMORY[0x28223BE20](v25);
  v159 = &v127 - v27;
  v155 = sub_22C90977C();
  v151 = *(v155 - 1);
  v28 = MEMORY[0x28223BE20](v155);
  v130 = &v127 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v140 = &v127 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v127 - v32;
  v34 = sub_22C908EAC();
  v152 = *(v34 - 8);
  v35 = MEMORY[0x28223BE20](v34);
  v138 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v127 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = &v127 - v40;
  v42 = sub_22C90643C();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v153 = &v127 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v127 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v127 - v49;
  sub_22C378A4C(a1, &v164);
  sub_22C3A5908(&qword_27D9C03E8, &unk_22C927300);
  if (swift_dynamicCast())
  {
    v137 = v43;
    (*(v43 + 32))(v48, v50, v42);
    sub_22C90641C();
    sub_22C47FCDC();
    v51 = sub_22C9096FC();
    v53 = v52;
    v133 = *(v151 + 8);
    v133(v33, v155);
    v54 = *(v152 + 8);
    v135 = v41;
    v55 = v41;
    v56 = v54;
    v136 = v34;
    v141 = (v152 + 8);
    v54(v55, v34);
    v57 = v142;
    v58 = *(v142 + 16);
    v134 = v42;
    if (v58)
    {
      v59 = sub_22C36E2BC(v51, v53);
      v60 = v57;
      v62 = v61;

      if (v62)
      {
        v63 = 0;
        v64 = *(*(v60 + 56) + v59);
      }

      else
      {
        v64 = 0;
        v63 = 1;
      }

      v57 = v60;
    }

    else
    {

      v64 = 0;
      v63 = 1;
    }

    v80 = v155;
    v163[0] = v64;
    v163[1] = v63;
    sub_22C805A44(v163);
    v154 = v48;
    sub_22C90641C();
    v81 = v140;
    sub_22C908DDC();
    v82 = v136;
    v150 = v56;
    (v56)(v39);
    v83 = sub_22C9096FC();
    v85 = v84;
    v133(v81, v80);
    if (*(v57 + 16))
    {
      sub_22C36E2BC(v83, v85);
      v87 = v86;

      v88 = v135;
      if (v87)
      {
        v89 = MEMORY[0x277D1ED30];
        v90 = v160;
        v91 = v82;
        v92 = v154;
LABEL_26:
        (*(v90 + 104))(v158, *v89, v161);
        sub_22C90641C();
        v101 = sub_22C908E5C();
        v150(v88, v91);
        v102 = (v143 + 104);
        if (v101)
        {
          sub_22C90641C();
          v155 = *(v90 + 16);
          v103 = v161;
          v155(v162, v158, v161);
          v104 = v148;
          v105 = *(v148 + 16);
          v106 = v145;
          v105(v145, v159, v157);
          v107 = v91;
          v108 = v149;
          (*(v152 + 16))(v149, v88, v107);
          (*v102)(v108, *MEMORY[0x277D1ECD8], v147);
          v155(v146, v162, v103);
          v109 = v157;
          v105(v144, v106, v157);
          v66 = v156;
          sub_22C9036FC();
          v110 = *(v104 + 8);
          v110(v106, v109);
          v111 = v161;
          v112 = *(v160 + 8);
          v112(v162, v161);
          v150(v135, v136);
          v112(v158, v111);
          v110(v159, v109);
          (*(v137 + 8))(v154, v134);
        }

        else
        {
          (*(v137 + 16))(v153, v92, v134);
          v155 = *(v90 + 16);
          v113 = v161;
          v114 = v162;
          v155(v162, v158, v161);
          v115 = v148;
          v152 = *(v148 + 16);
          v116 = v145;
          (v152)(v145, v159, v157);
          v117 = v149;
          sub_22C90641C();
          (*v102)(v117, *MEMORY[0x277D1ECE0], v147);
          sub_22C90642C();
          v118 = v114;
          v119 = v113;
          v155(v146, v118, v113);
          v120 = v157;
          (v152)(v144, v116, v157);
          v66 = v156;
          sub_22C9036FC();
          v121 = *(v115 + 8);
          v121(v116, v120);
          v122 = *(v160 + 8);
          v122(v162, v119);
          v123 = *(v137 + 8);
          v124 = v134;
          v123(v153, v134);
          v122(v158, v119);
          v121(v159, v157);
          v123(v154, v124);
        }

        v79 = 0;
        goto LABEL_30;
      }
    }

    else
    {

      v88 = v135;
    }

    v93 = v138;
    sub_22C90641C();
    v94 = v139;
    sub_22C908E3C();
    v95 = v93;
    v91 = v82;
    v150(v95, v82);
    if (sub_22C370B74(v94, 1, v80) == 1)
    {
      sub_22C3AC228(v94, &qword_27D9BC908, &qword_22C915090);
      v90 = v160;
    }

    else
    {
      v96 = v130;
      (*(v151 + 32))(v130, v94, v80);
      v97 = sub_22C9096FC();
      if (*(v57 + 16))
      {
        sub_22C36E2BC(v97, v98);
        v100 = v99;

        v133(v96, v80);
        v90 = v160;
        v92 = v154;
        if (v100)
        {
          v89 = MEMORY[0x277D1ED30];
          goto LABEL_26;
        }

LABEL_25:
        v89 = MEMORY[0x277D1ED28];
        goto LABEL_26;
      }

      v133(v96, v80);
      v90 = v160;
    }

    v92 = v154;
    goto LABEL_25;
  }

  v65 = v162;
  v66 = v156;
  v67 = v141;
  v68 = v150;
  if (swift_dynamicCast())
  {
    v69 = v134;
    v70 = v132;
    (*(v134 + 32))(v132, v67, v68);
    v71 = v131;
    (*(v69 + 16))(v131, v70, v68);
    (*(v160 + 104))(v65, *MEMORY[0x277D1ED28], v161);
    sub_22C80037C(v71, v65, MEMORY[0x277D1E520], MEMORY[0x277D1ECE8], MEMORY[0x277D1E528], MEMORY[0x277D1E530]);
    (*(v69 + 8))(v70, v68);
  }

  else
  {
    v72 = v133;
    v73 = v137;
    v74 = swift_dynamicCast();
    v75 = v160;
    if (!v74)
    {
      v79 = 1;
      goto LABEL_30;
    }

    v76 = v129;
    v77 = v128;
    (*(v129 + 32))(v128, v72, v73);
    v78 = v127;
    (*(v76 + 16))(v127, v77, v73);
    (*(v75 + 104))(v65, *MEMORY[0x277D1ED28], v161);
    sub_22C80037C(v78, v65, MEMORY[0x277D1E4B0], MEMORY[0x277D1ECD0], MEMORY[0x277D1E4B8], MEMORY[0x277D1E4C0]);
    (*(v76 + 8))(v77, v73);
  }

  v79 = 0;
LABEL_30:
  v125 = sub_22C9037EC();
  sub_22C36C640(v66, v79, 1, v125);
  return sub_22C36FF94(&v164);
}

uint64_t sub_22C805A44(char *a1)
{
  v2 = sub_22C9037DC();
  sub_22C369824();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v9 = *a1;
  v10 = a1[1];
  v18[15] = 0;
  sub_22C807BF4();
  sub_22C80760C(v11, v12, MEMORY[0x277D1ED88]);
  result = sub_22C90B76C();
  if ((v10 & 1) == 0)
  {
    if (v9)
    {
      sub_22C9037AC();
      sub_22C8B5C28();
      v14 = *(v4 + 8);
      (v14)(v8, v2);
      v15 = sub_22C377B94();
      result = v14(v15);
    }

    if ((v9 & 2) != 0)
    {
      sub_22C9037CC();
      sub_22C8B5C28();
      v16 = *(v4 + 8);
      (v16)(v8, v2);
      v17 = sub_22C377B94();
      return v16(v17);
    }
  }

  return result;
}

void *sub_22C805C28(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

void *sub_22C805CC0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = a6(v11, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void *sub_22C805D60(uint64_t a1, uint64_t a2)
{

  return sub_22C805DD0(a1, a2, sub_22C805F84, sub_22C805F84);
}

void *sub_22C805DD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a2 + 32);
  v7 = v6 & 0x3F;
  v8 = (((1 << v6) + 63) >> 6);

  if (v7 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v10 = sub_22C807C3C();
    sub_22C88FAFC(v10, v8, a4);
    sub_22C37BFCC();
    v11 = a3();
    if (!v8)
    {
      v12 = v11;

      return v12;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();

    sub_22C37BFCC();
    v12 = sub_22C805C28(v14, v15, v16, v17, a4);

    if (!v8)
    {

      sub_22C369B50();
      MEMORY[0x2318B9880]();
      return v12;
    }
  }

  sub_22C369B50();
  result = MEMORY[0x2318B9880]();
  __break(1u);
  return result;
}

void sub_22C805F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v62 = a1;
  v6 = sub_22C901FAC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v69 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v61 = &v56 - v15;
  v16 = *(a3 + 16);
  v17 = *(a4 + 16);
  v73 = v7 + 16;
  v71 = a4;
  v72 = a3;
  v64 = v7;
  if (v17 >= v16)
  {
    v65 = 0;
    v38 = 0;
    v39 = *(a3 + 56);
    v61 = (a3 + 56);
    v40 = 1 << *(a3 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & v39;
    v43 = (v40 + 63) >> 6;
    v68 = a4 + 56;
    v69 = (v7 + 8);
    v63 = v43;
LABEL_24:
    while (v42)
    {
      v44 = __clz(__rbit64(v42));
      v67 = ((v42 - 1) & v42);
LABEL_31:
      v47 = v44 | (v38 << 6);
      v48 = *(a3 + 48);
      v49 = *(v7 + 72);
      v66 = v47;
      v50 = *(v7 + 16);
      v50(v70, v48 + v49 * v47, v6);
      sub_22C80760C(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
      v51 = sub_22C909F7C();
      v52 = ~(-1 << *(a4 + 32));
      do
      {
        v53 = v51 & v52;
        if (((*(v68 + (((v51 & v52) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v51 & v52)) & 1) == 0)
        {
          (*v69)(v70, v6);
          a4 = v71;
          a3 = v72;
          v43 = v63;
          v7 = v64;
          v42 = v67;
          goto LABEL_24;
        }

        v50(v12, *(v71 + 48) + v53 * v49, v6);
        sub_22C80760C(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
        v54 = sub_22C90A0BC();
        v55 = *v69;
        (*v69)(v12, v6);
        v51 = v53 + 1;
      }

      while ((v54 & 1) == 0);
      v55(v70, v6);
      *(v62 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
      v7 = v64;
      v37 = __OFADD__(v65++, 1);
      a4 = v71;
      a3 = v72;
      v43 = v63;
      v42 = v67;
      if (v37)
      {
        goto LABEL_42;
      }
    }

    v45 = v38;
    while (1)
    {
      v38 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v38 >= v43)
      {
LABEL_38:

        sub_22C7EC3CC();
        return;
      }

      v46 = *&v61[8 * v38];
      ++v45;
      if (v46)
      {
        v44 = __clz(__rbit64(v46));
        v67 = ((v46 - 1) & v46);
        goto LABEL_31;
      }
    }
  }

  else
  {
    v18 = 0;
    v19 = *(a4 + 56);
    v57 = a4 + 56;
    v20 = 1 << *(a4 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v59 = v23;
    v60 = v7 + 32;
    v65 = 0;
    v66 = a3 + 56;
    v70 = (v7 + 8);
LABEL_6:
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v63 = (v22 - 1) & v22;
LABEL_13:
      v27 = *(v7 + 72);
      v28 = *(a4 + 48) + v27 * (v24 | (v18 << 6));
      v29 = v61;
      v67 = *(v7 + 16);
      v68 = v27;
      v67(v61, v28, v6);
      (*(v7 + 32))(v69, v29, v6);
      sub_22C80760C(&qword_2814357B0, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);
      v30 = sub_22C909F7C();
      v31 = ~(-1 << *(a3 + 32));
      do
      {
        v32 = v30 & v31;
        v33 = (v30 & v31) >> 6;
        v34 = 1 << (v30 & v31);
        if ((v34 & *(v66 + 8 * v33)) == 0)
        {
          (*v70)(v69, v6);
          a4 = v71;
          a3 = v72;
          v22 = v63;
          v7 = v64;
          v23 = v59;
          goto LABEL_6;
        }

        v67(v12, *(v72 + 48) + v32 * v68, v6);
        sub_22C80760C(&qword_27D9BAA28, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
        v35 = sub_22C90A0BC();
        v36 = *v70;
        (*v70)(v12, v6);
        v30 = v32 + 1;
      }

      while ((v35 & 1) == 0);
      v36(v69, v6);
      v22 = v63;
      *(v62 + 8 * v33) |= v34;
      v7 = v64;
      v37 = __OFADD__(v65++, 1);
      a4 = v71;
      a3 = v72;
      v23 = v59;
      if (v37)
      {
        goto LABEL_41;
      }
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {
        goto LABEL_38;
      }

      v26 = *(v57 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v63 = (v26 - 1) & v26;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_22C8065EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v62 = a1;
  v6 = sub_22C908EAC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v69 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v61 = &v56 - v15;
  v16 = *(a3 + 16);
  v17 = *(a4 + 16);
  v73 = v7 + 16;
  v71 = a4;
  v72 = a3;
  v64 = v7;
  if (v17 >= v16)
  {
    v65 = 0;
    v38 = 0;
    v39 = *(a3 + 56);
    v61 = (a3 + 56);
    v40 = 1 << *(a3 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & v39;
    v43 = (v40 + 63) >> 6;
    v68 = a4 + 56;
    v69 = (v7 + 8);
    v63 = v43;
LABEL_24:
    while (v42)
    {
      v44 = __clz(__rbit64(v42));
      v67 = ((v42 - 1) & v42);
LABEL_31:
      v47 = v44 | (v38 << 6);
      v48 = *(a3 + 48);
      v49 = *(v7 + 72);
      v66 = v47;
      v50 = *(v7 + 16);
      v50(v70, v48 + v49 * v47, v6);
      sub_22C80760C(&qword_27D9BAA80, MEMORY[0x277D72238], MEMORY[0x277D72248]);
      v51 = sub_22C909F7C();
      v52 = ~(-1 << *(a4 + 32));
      do
      {
        v53 = v51 & v52;
        if (((*(v68 + (((v51 & v52) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v51 & v52)) & 1) == 0)
        {
          (*v69)(v70, v6);
          a4 = v71;
          a3 = v72;
          v43 = v63;
          v7 = v64;
          v42 = v67;
          goto LABEL_24;
        }

        v50(v12, *(v71 + 48) + v53 * v49, v6);
        sub_22C80760C(&qword_27D9BC800, MEMORY[0x277D72238], MEMORY[0x277D72250]);
        v54 = sub_22C90A0BC();
        v55 = *v69;
        (*v69)(v12, v6);
        v51 = v53 + 1;
      }

      while ((v54 & 1) == 0);
      v55(v70, v6);
      *(v62 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
      v7 = v64;
      v37 = __OFADD__(v65++, 1);
      a4 = v71;
      a3 = v72;
      v43 = v63;
      v42 = v67;
      if (v37)
      {
        goto LABEL_42;
      }
    }

    v45 = v38;
    while (1)
    {
      v38 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v38 >= v43)
      {
LABEL_38:

        sub_22C7ED08C();
        return;
      }

      v46 = *&v61[8 * v38];
      ++v45;
      if (v46)
      {
        v44 = __clz(__rbit64(v46));
        v67 = ((v46 - 1) & v46);
        goto LABEL_31;
      }
    }
  }

  else
  {
    v18 = 0;
    v19 = *(a4 + 56);
    v57 = a4 + 56;
    v20 = 1 << *(a4 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v59 = v23;
    v60 = v7 + 32;
    v65 = 0;
    v66 = a3 + 56;
    v70 = (v7 + 8);
LABEL_6:
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v63 = (v22 - 1) & v22;
LABEL_13:
      v27 = *(v7 + 72);
      v28 = *(a4 + 48) + v27 * (v24 | (v18 << 6));
      v29 = v61;
      v67 = *(v7 + 16);
      v68 = v27;
      v67(v61, v28, v6);
      (*(v7 + 32))(v69, v29, v6);
      sub_22C80760C(&qword_27D9BAA80, MEMORY[0x277D72238], MEMORY[0x277D72248]);
      v30 = sub_22C909F7C();
      v31 = ~(-1 << *(a3 + 32));
      do
      {
        v32 = v30 & v31;
        v33 = (v30 & v31) >> 6;
        v34 = 1 << (v30 & v31);
        if ((v34 & *(v66 + 8 * v33)) == 0)
        {
          (*v70)(v69, v6);
          a4 = v71;
          a3 = v72;
          v22 = v63;
          v7 = v64;
          v23 = v59;
          goto LABEL_6;
        }

        v67(v12, *(v72 + 48) + v32 * v68, v6);
        sub_22C80760C(&qword_27D9BC800, MEMORY[0x277D72238], MEMORY[0x277D72250]);
        v35 = sub_22C90A0BC();
        v36 = *v70;
        (*v70)(v12, v6);
        v30 = v32 + 1;
      }

      while ((v35 & 1) == 0);
      v36(v69, v6);
      v22 = v63;
      *(v62 + 8 * v33) |= v34;
      v7 = v64;
      v37 = __OFADD__(v65++, 1);
      a4 = v71;
      a3 = v72;
      v23 = v59;
      if (v37)
      {
        goto LABEL_41;
      }
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {
        goto LABEL_38;
      }

      v26 = *(v57 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v63 = (v26 - 1) & v26;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void *sub_22C806D64(uint64_t (*a1)(char *), void *a2, uint64_t a3, uint64_t (*a4)(void), char *a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v47 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v10 = a4(0);
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  sub_22C807C50();
  v18 = v17 >> 6;
  v19 = 8 * (v17 >> 6);
  if (v20 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v45 = v15;
    v46 = v10;
    v38 = a5;
    v40 = &v38;
    MEMORY[0x28223BE20](v16);
    v42 = v18;
    v39 = &v38 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_22C88FAFC(0, v18, v39);
    v41 = 0;
    v19 = 0;
    v48 = a3;
    v22 = *(a3 + 56);
    a3 += 56;
    v21 = v22;
    v23 = 1 << *(a3 - 24);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v21;
    v10 = (v23 + 63) >> 6;
    v43 = v12 + 16;
    v44 = v12 + 8;
    while (v25)
    {
      v26 = __clz(__rbit64(v25));
      v49 = (v25 - 1) & v25;
LABEL_12:
      v18 = v26 | (v19 << 6);
      v15 = v12;
      a5 = v45;
      (*(v12 + 2))(v45, *(v48 + 48) + *(v12 + 9) * v18, v46);
      v29 = v50;
      v30 = v47(a5);
      v50 = v29;
      if (v29)
      {
        v35 = sub_22C807C28();
        v36(v35);

        swift_willThrow();
        return a2;
      }

      a6 = v30;
      v31 = sub_22C807C28();
      v32(v31);
      v25 = v49;
      if (a6)
      {
        *(v39 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        if (__OFADD__(v41++, 1))
        {
          __break(1u);
          return (v38)(v39);
        }
      }
    }

    v27 = v19;
    while (1)
    {
      v19 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v19 >= v10)
      {
        return (v38)(v39);
      }

      v28 = *(a3 + 8 * v19);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v49 = (v28 - 1) & v28;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v37 = swift_slowAlloc();
  a2 = sub_22C805CC0(v37, v18, a3, v47, a2, a6);

  sub_22C369B50();
  MEMORY[0x2318B9880]();
  return a2;
}

void *sub_22C8070D4(uint64_t (*a1)(void *), void *a2, uint64_t a3)
{
  v4 = v3;
  v32 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v33 = v4;
    v30 = &v28;
    MEMORY[0x28223BE20](a1);
    v28 = v8;
    v29 = (&v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_22C88FAFC(0, v8, v29);
    v31 = 0;
    v10 = 0;
    v8 = a3 + 56;
    v11 = 1 << *(a3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v9 = v12 & *(a3 + 56);
    v13 = (v11 + 63) >> 6;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v4 = a3;
      v18 = *(a3 + 48) + 24 * v17;
      v20 = *v18;
      v19 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      v34[0] = v20;
      v34[1] = v19;
      v35 = v18;

      v21 = v33;
      v22 = v32(v34);
      v33 = v21;
      if (v21)
      {

        swift_willThrow();
        return a2;
      }

      v23 = v22;

      if (v23)
      {
        *(v29 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_17:
          sub_22C7ED290(v29, v28, v31, a3);
          return v25;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(v8 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  a2 = sub_22C805CC0(v27, v8, a3, v32, a2, sub_22C7ED9B0);

  MEMORY[0x2318B9880](v27, -1, -1);
  return a2;
}

uint64_t sub_22C8073A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C8074AC()
{
  result = qword_27D9C03F0;
  if (!qword_27D9C03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C03F0);
  }

  return result;
}

unint64_t sub_22C807500()
{
  result = qword_27D9C03F8;
  if (!qword_27D9C03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C03F8);
  }

  return result;
}

uint64_t sub_22C807574(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_22C36D548(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22C36C730(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_22C80760C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C80766C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_22C8076AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C807748(uint64_t a1)
{
  result = sub_22C90377C();
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, qword_281431738, &protocol descriptor for ToolRetrievalSearchProvider);
    if (v3 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_28142FAE8, MEMORY[0x277D1DB80]);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C807818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90377C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C8078DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C90377C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_22C807988(uint64_t a1)
{
  sub_22C90377C();
  if (v1 <= 0x3F)
  {
    sub_22C457168(319, qword_281431738, &protocol descriptor for ToolRetrievalSearchProvider);
    if (v2 <= 0x3F)
    {
      sub_22C436620();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolRetrievalStageError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C807B30()
{
  result = qword_27D9C0408;
  if (!qword_27D9C0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0408);
  }

  return result;
}

unint64_t sub_22C807B84()
{
  result = qword_27D9C0410;
  if (!qword_27D9C0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9C0410);
  }

  return result;
}

uint64_t sub_22C807D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = sub_22C387610();
  v6(v5);
  sub_22C8090D4();
  v7 = a3();
  sub_22C36A3EC(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19, v20, v21, v22);
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_22C807D84(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_22C597858(a2 - result, 0);
      if (sub_22C3D1B64(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t sub_22C807E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v6 = sub_22C387610();
  v8 = v7(v6);
  v9 = a3(0);
  v10 = sub_22C369914(v9);
  v18 = sub_22C372E24(v10, v11, v12, v13, v14, v15, v16, v17, v29, v31);
  v19 = a4(v18);
  sub_22C36A3EC(v19, v20, v21, v22, v23, v24, v25, v26, v30, v32, v33, v34, v35, v36);
  if (!v27)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v8;
}

void *sub_22C807F04(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = sub_22C387610();
  v3 = sub_22C597A48(v1, v2);
  v4 = _s14TypedCandidateVMa(0);
  v5 = sub_22C369914(v4);
  v13 = sub_22C372E24(v5, v6, v7, v8, v9, v10, v11, v12, v24, v26);
  sub_22C3D1BEC(v13);
  sub_22C36A3EC(v14, v15, v16, v17, v18, v19, v20, v21, v25, v27, v28, v29, v30, v31);
  if (!v22)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22C807FA0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  sub_22C387610();
  sub_22C5977C8();
  sub_22C8090D4();
  sub_22C3D1388();
  sub_22C36A3EC(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14, v15, v16, v17);
  if (!v10)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

IntelligenceFlowPlannerRuntime::UIControlToolRetriever __swiftcall UIControlToolRetriever.init()()
{
  v1 = v0;
  v2 = sub_22C9063DC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_22C901F3C();

  if (v16)
  {
    v10 = 0x3FE999999999999ALL;
  }

  else
  {
    v10 = v15;
    sub_22C903FCC();
    v11 = sub_22C9063CC();
    v12 = sub_22C90AACC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v10;
      _os_log_impl(&dword_22C366000, v11, v12, "Control tool retrieval threshold: %f", v13, 0xCu);
      sub_22C3699EC();
    }

    (*(v4 + 8))(v7, v2);
  }

  *v1 = v10;
  v1[1] = 0x3FA999999999999ALL;
  result.timeoutInSecs = v9;
  result.threshold = v8;
  return result;
}

uint64_t UIControlToolRetriever.search(query:appBundleIds:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  sub_22C369914(v2);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v138 = &v125 - v4;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v147 = v6;
  v148 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v133 = v7;
  v9 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v135 = &v125 - v10;
  sub_22C36BA0C();
  v130 = sub_22C90377C();
  sub_22C369824();
  v129 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C3698A8();
  v128 = v13;
  sub_22C36BA0C();
  v127 = sub_22C9036EC();
  sub_22C369824();
  v125 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C3698A8();
  v126 = v16;
  sub_22C36BA0C();
  sub_22C9037EC();
  sub_22C369824();
  v139 = v18;
  v140 = v17;
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  v132 = v19;
  MEMORY[0x28223BE20](v20);
  v134 = &v125 - v21;
  sub_22C36BA0C();
  v136 = sub_22C90384C();
  sub_22C369824();
  v142 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22C3698E4();
  v131 = v24;
  MEMORY[0x28223BE20](v25);
  v141 = &v125 - v26;
  v27 = sub_22C3A5908(&qword_27D9BD978, &unk_22C919DB0);
  sub_22C369914(v27);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v28);
  v137 = &v125 - v29;
  v30 = sub_22C3A5908(&qword_27D9BF248, &qword_22C926400);
  sub_22C369914(v30);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v31);
  v33 = &v125 - v32;
  v34 = sub_22C3A5908(&qword_27D9C0418, &qword_22C9275C8);
  sub_22C369914(v34);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  v37 = &v125 - v36;
  v145 = sub_22C903B8C();
  sub_22C369824();
  v143 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  v144 = v40;
  v41 = sub_22C3A5908(&qword_27D9BDBE0, &qword_22C9275D0);
  sub_22C369914(v41);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v42);
  v44 = &v125 - v43;
  v45 = sub_22C3A5908(&qword_27D9BB670, &unk_22C90FA40);
  sub_22C369914(v45);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v46);
  v48 = &v125 - v47;
  v49 = sub_22C90399C();
  sub_22C369824();
  v149 = v50;
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  v146 = v52;
  sub_22C9043BC();
  swift_allocObject();
  sub_22C9043AC();

  sub_22C807FA0(v53);
  v54 = sub_22C90435C();

  sub_22C58B5AC(v54, v48);

  if (sub_22C370B74(v48, 1, v49) == 1)
  {
    v55 = &qword_27D9BB670;
    v56 = &unk_22C90FA40;
    v57 = v48;
LABEL_11:
    sub_22C376B84(v57, v55, v56);
LABEL_12:
    sub_22C3AF220();
    return v71;
  }

  v58 = v149;
  v59 = v146;
  (*(v149 + 32))();
  sub_22C90397C();
  v60 = sub_22C9038BC();
  if (sub_22C370B74(v44, 1, v60) == 1)
  {
    (*(v58 + 8))(v59, v49);
    v55 = &qword_27D9BDBE0;
    v56 = &qword_22C9275D0;
    v57 = v44;
    goto LABEL_11;
  }

  sub_22C90387C();
  v62 = v61;
  sub_22C36BBA8();
  (*(v63 + 8))(v44, v60);
  if (!v62)
  {
LABEL_19:
    v80 = sub_22C8090C0();
    v81(v80);
    goto LABEL_12;
  }

  sub_22C9038EC();
  v64 = sub_22C903BCC();
  if (sub_22C370B74(v33, 1, v64) == 1)
  {
    v65 = sub_22C8090C0();
    v66(v65);

    sub_22C376B84(v33, &qword_27D9BF248, &qword_22C926400);
    sub_22C36C640(v37, 1, 1, v145);
LABEL_10:
    v55 = &qword_27D9C0418;
    v56 = &qword_22C9275C8;
    v57 = v37;
    goto LABEL_11;
  }

  sub_22C903BBC();
  sub_22C36BBA8();
  (*(v67 + 8))(v33, v64);
  v68 = v145;
  if (sub_22C370B74(v37, 1, v145) == 1)
  {
    v69 = sub_22C8090C0();
    v70(v69);

    goto LABEL_10;
  }

  v75 = v143;
  v74 = v144;
  (*(v143 + 32))(v144, v37, v68);
  v76 = sub_22C903B5C();
  v78 = v77;

  v79 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v79 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (!v79)
  {

    (*(v75 + 8))(v74, v68);
    goto LABEL_19;
  }

  sub_22C903B7C();
  sub_22C903B6C();

  sub_22C903B5C();
  v82 = v137;
  sub_22C90398C();
  v83 = v82;
  v84 = sub_22C90352C();
  if (sub_22C370B74(v83, 1, v84) == 1)
  {
    sub_22C376B84(v83, &qword_27D9BD978, &unk_22C919DB0);
    v85 = 0.0;
  }

  else
  {
    sub_22C90351C();
    v85 = v86;
    sub_22C36BBA8();
    (*(v87 + 8))(v83, v84);
  }

  v88 = v141;
  v89 = v142;
  sub_22C90380C();
  v90 = *(v89 + 16);
  v91 = v126;
  v92 = v136;
  v90(v126, v88, v136);
  (*(v125 + 104))(v91, *MEMORY[0x277D1ECF8], v127);
  (*(v129 + 104))(v128, *MEMORY[0x277D1ED38], v130);
  v93 = v134;
  sub_22C90370C();
  sub_22C3A5908(&qword_27D9BAC90, &unk_22C90D530);
  v94 = v139;
  v95 = (*(v139 + 80) + 32) & ~*(v139 + 80);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_22C90F800;
  v97 = v96 + v95;
  v98 = v140;
  (*(v94 + 16))(v97, v93, v140);
  sub_22C903FCC();
  v99 = v131;
  v90(v131, v88, v92);
  v100 = sub_22C9063CC();
  v101 = sub_22C90AACC();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v150[0] = v103;
    *v102 = 136315394;
    v104 = sub_22C9037FC();
    v106 = v105;
    v107 = v99;
    v108 = *(v142 + 8);
    v108(v107, v136);
    v109 = sub_22C36F9F4(v104, v106, v150);

    *(v102 + 4) = v109;
    *(v102 + 12) = 2048;
    *(v102 + 14) = v85;
    _os_log_impl(&dword_22C366000, v100, v101, "UIControlToolRetriever: selectedTool %s scored %f", v102, 0x16u);
    sub_22C36FF94(v103);
    v94 = v139;
    sub_22C3699EC();
    v98 = v140;
    sub_22C3699EC();

    (*(v147 + 8))(v135, v148);
    v110 = sub_22C37515C();
    v111(v110);
    v108(v141, v136);
    v112 = v146;
    v113 = v143;
    v114 = v144;
  }

  else
  {

    v115 = *(v142 + 8);
    v116 = v136;
    v115(v99, v136);
    (*(v147 + 8))(v135, v148);
    v117 = sub_22C37515C();
    v118(v117);
    v115(v141, v116);
    v113 = v143;
    v112 = v146;
    v114 = v144;
  }

  v119 = v138;
  sub_22C58B908(v96, v138);

  if (sub_22C370B74(v119, 1, v98) == 1)
  {
    sub_22C376B84(v119, &qword_27D9BD2A8, &qword_22C920540);
    sub_22C3AF220();
    v72 = v120;
  }

  else
  {
    v121 = v132;
    (*(v94 + 32))(v132, v119, v98);
    sub_22C3A5908(&qword_27D9BAC90, &unk_22C90D530);
    v122 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_22C90F800;
    (*(v94 + 16))(v123 + v122, v121, v98);
    sub_22C3AF220();
    v72 = v124;
    (*(v94 + 8))(v121, v98);
  }

  (*(v113 + 8))(v114, v145);
  (*(v149 + 8))(v112, v49);
  return v72;
}

void static AppDirectedToolHelper.getAppDirectedApps(spanMatches:toolContext:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v84 = a3;
  v5 = sub_22C903CCC();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v90 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  v89 = &v79 - v11;
  sub_22C369930();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v79 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = &v79 - v16;
  sub_22C80E0F0(MEMORY[0x277D84FA0], &v92);
  if (a2)
  {
    v82 = a1;
    static AppDirectedToolHelper.getOnScreenAppBundleIDs(toolContext:)(a2);
    sub_22C378840();
    v20 = v19 & v18;
    v22 = (v21 + 63) >> 6;
    v87 = v7 + 88;
    v88 = v7 + 16;
    sub_22C375170(*MEMORY[0x277D1F0D8]);
    v81 = v23;
    v91 = v24;

    v25 = 0;
    v83 = MEMORY[0x277D84F90];
LABEL_3:
    v26 = v25;
    if (!v20)
    {
      goto LABEL_5;
    }

    do
    {
      v25 = v26;
LABEL_8:
      v20 &= v20 - 1;
      sub_22C80AD24();
      v27 = *(v7 + 16);
      v27(v17);
      (v27)(v15, v17, v5);
      v28 = sub_22C37170C();
      v30 = v29(v28);
      if (v30 == v86)
      {
        v33 = sub_22C37170C();
        v34(v33);
        v35 = *v15;
        v80 = v15[1];

        (*v85)(v17, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_22C36D270();
          sub_22C595DF0(v42, v43, v44, v45);
          v83 = v46;
        }

        v37 = *(v83 + 16);
        v36 = *(v83 + 24);
        v38 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v79 = v37 + 1;
          sub_22C595DF0(v36 > 1, v37 + 1, 1, v83);
          v38 = v79;
          v83 = v47;
        }

        v39 = v83;
        *(v83 + 16) = v38;
        v40 = v39 + 24 * v37;
        v41 = v80;
        *(v40 + 32) = v35;
        *(v40 + 40) = v41;
        *(v40 + 48) = 1;
        goto LABEL_3;
      }

      v31 = *v85;
      (*v85)(v17, v5);
      v32 = sub_22C37170C();
      (v31)(v32);
      v26 = v25;
    }

    while (v20);
LABEL_5:
    while (1)
    {
      v25 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        sub_22C80E33C(v83);

        a1 = v82;
        goto LABEL_17;
      }

      v20 = *(a2 + 8 * v25);
      ++v26;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    if (!a1)
    {
LABEL_31:
      *v84 = v92;
      return;
    }

    static AppDirectedToolHelper.getSpanAppBundleIDs(spanMatches:)(a1);
    sub_22C378840();
    v50 = v49 & v48;
    v52 = (v51 + 63) >> 6;
    v87 = v7 + 88;
    v88 = v7 + 16;
    sub_22C375170(*MEMORY[0x277D1F0D8]);
    v82 = v53;
    v91 = v54;

    v55 = 0;
    v83 = MEMORY[0x277D84F90];
    while (1)
    {
      v56 = v55;
      if (!v50)
      {
        break;
      }

LABEL_23:
      v50 &= v50 - 1;
      sub_22C80AD24();
      v57 = *(v7 + 16);
      v58 = v89;
      v57(v89);
      v59 = v90;
      (v57)(v90, v58, v5);
      v60 = sub_22C37170C();
      v62 = v61(v60);
      if (v62 == v86)
      {
        v65 = sub_22C37170C();
        v66(v65);
        v67 = *v59;
        v68 = v59[1];

        (*v85)(v58, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_22C36D270();
          sub_22C595DF0(v73, v74, v75, v76);
          v83 = v77;
        }

        v70 = *(v83 + 16);
        v69 = *(v83 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_22C595DF0(v69 > 1, v70 + 1, 1, v83);
          v83 = v78;
        }

        v71 = v83;
        *(v83 + 16) = v70 + 1;
        v72 = v71 + 24 * v70;
        *(v72 + 32) = v67;
        *(v72 + 40) = v68;
        *(v72 + 48) = 2;
      }

      else
      {
        v63 = *v85;
        (*v85)(v58, v5);
        v64 = sub_22C37170C();
        (v63)(v64);
      }
    }

    while (1)
    {
      v55 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v55 >= v52)
      {

        sub_22C80E33C(v83);

        goto LABEL_31;
      }

      v50 = *(a2 + 8 * v55);
      ++v56;
      if (v50)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
}

uint64_t static AppDirectedToolHelper.getOnScreenAppBundleIDs(toolContext:)(uint64_t a1)
{
  v107 = sub_22C9063DC();
  sub_22C369824();
  v106 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v105 = v5 - v4;
  sub_22C36BA0C();
  v121 = sub_22C903CCC();
  sub_22C369824();
  v111 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v110 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  v109 = &v98 - v10;
  sub_22C36BA0C();
  v120 = sub_22C90926C();
  sub_22C369824();
  v99 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v108 = v14 - v13;
  v15 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v15 - 8);
  v130 = &v98 - v16;
  sub_22C36BA0C();
  v17 = sub_22C90931C();
  sub_22C369824();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22C3698E4();
  v119 = v21;
  sub_22C369930();
  MEMORY[0x28223BE20](v22);
  v24 = &v98 - v23;
  v25 = sub_22C90355C();
  sub_22C369824();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v29 = sub_22C90399C();
  sub_22C369824();
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v34 = v33 - v32;
  v35 = MEMORY[0x277D84FA0];
  v132 = MEMORY[0x277D84FA0];
  v36 = a1;
  v37 = *(a1 + 16);
  if (v37)
  {
    v123 = v24;
    v118 = v17;
    v39 = *(v31 + 16);
    v38 = v31 + 16;
    v40 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v128 = *(v38 + 56);
    v129 = v39;
    v127 = v27 + 88;
    v126 = *MEMORY[0x277D1EAB8];
    v122 = *MEMORY[0x277D72A58];
    v115 = v19 + 88;
    v116 = (v19 + 16);
    v114 = *MEMORY[0x277D72970];
    v113 = (v19 + 8);
    v104 = v19 + 96;
    v103 = v99 + 32;
    v102 = *MEMORY[0x277D1F0D8];
    v101 = v111 + 104;
    v100 = v111 + 8;
    v99 += 8;
    v117 = v25;
    v124 = v29;
    v125 = v38;
    v112 = v38 - 8;
    do
    {
      v129(v34, v40, v29);
      sub_22C90394C();
      v41 = sub_22C36CA88();
      v43 = v42(v41);
      if (v43 == v126)
      {
        v44 = sub_22C36CA88();
        v45(v44);
        v46 = v130;
        sub_22C90391C();
        v47 = sub_22C9093BC();
        if (sub_22C370B74(v46, 1, v47) == 1)
        {
          v48 = sub_22C388A8C();
          v29 = v124;
          v49(v48, v124);
          sub_22C3770B0(v130, &qword_27D9BB908, &qword_22C910960);
        }

        else
        {
          v54 = *(v47 - 8);
          v55 = (*(v54 + 88))(v130, v47);
          if (v55 == v122)
          {
            (*(v54 + 96))(v130, v47);
            v56 = swift_projectBox();
            v57 = *v116;
            v58 = v123;
            v59 = v118;
            (*v116)(v123, v56, v118);

            v60 = v119;
            v61 = v58;
            v62 = v59;
            v57(v119, v61, v59);
            v63 = sub_22C37170C();
            v65 = v64(v63);
            if (v65 == v114)
            {
              sub_22C36BA4C();
              v66(v60, v59);
              sub_22C36BA4C();
              v67 = v108;
              v68(v108, v60, v120);
              v69 = sub_22C90924C();
              v111 = v70;
              v71 = sub_22C90390C();
              v72 = v110;
              v73 = v111;
              *v110 = v69;
              v72[1] = v73;
              v72[2] = v71;
              v72[3] = v74;
              sub_22C36BA4C();
              v75(v72, v102, v121);
              v76 = v109;
              sub_22C6A5D9C();
              sub_22C36BA4C();
              v77(v76, v121);
              sub_22C36BA4C();
              v78(v67, v120);
              (*v113)(v123, v62);
              v79 = sub_22C388A8C();
              v29 = v124;
              v80(v79, v124);
            }

            else
            {
              v111 = *v113;
              (v111)(v123, v59);
              v84 = sub_22C388A8C();
              v85 = v124;
              v86(v84, v124);
              v29 = v85;
              (v111)(v60, v59);
            }
          }

          else
          {
            v81 = sub_22C388A8C();
            v82 = v124;
            v83(v81, v124);
            (*(v54 + 8))(v130, v47);
            v29 = v82;
          }
        }
      }

      else
      {
        v50 = sub_22C388A8C();
        v51(v50, v29);
        v52 = sub_22C36CA88();
        v53(v52);
      }

      v40 += v128;
      --v37;
    }

    while (v37);
    v35 = v132;
  }

  v87 = v107;
  v88 = v105;
  sub_22C90400C();

  v89 = sub_22C9063CC();
  v90 = sub_22C90AABC();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *v91 = 136315394;
    *(v91 + 4) = sub_22C36F9F4(0xD000000000000025, 0x800000022C935FA0, &v131);
    *(v91 + 12) = 2080;
    sub_22C80AD0C();
    sub_22C80ACC4(v92, v93, MEMORY[0x277D1F0E8]);
    v94 = sub_22C90A8CC();
    v96 = sub_22C36F9F4(v94, v95, &v131);

    *(v91 + 14) = v96;
    _os_log_impl(&dword_22C366000, v89, v90, "%s returning inFocusAppBundleIDs %s", v91, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v106 + 8))(v88, v87);
  return v35;
}

uint64_t static AppDirectedToolHelper.getSpanAppBundleIDs(spanMatches:)(uint64_t a1)
{
  v2 = sub_22C36CA88();
  v4 = sub_22C3A5908(v2, v3);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v41 - v5);
  v7 = sub_22C903CCC();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C3698E4();
  v50 = v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - v13;
  sub_22C36BA0C();
  v14 = sub_22C9063DC();
  sub_22C369824();
  v48 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v46 = v9;
  v47 = v18 - v17;
  v19 = 0;
  v20 = *(a1 + 16);
  v49 = (v9 + 32);
  v21 = MEMORY[0x277D84F90];
  while (v20 != v19)
  {
    v22 = *(sub_22C9039FC() - 8);
    sub_22C80A470(a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v6);
    if (sub_22C370B74(v6, 1, v7) == 1)
    {
      sub_22C3770B0(v6, &qword_27D9C0420, &qword_22C927648);
      ++v19;
    }

    else
    {
      v43 = v21;
      v44 = v14;
      v23 = *v49;
      v24 = v45;
      (*v49)(v45, v6, v7);
      v42 = v23;
      v23(v50, v24, v7);
      v21 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C36D270();
        sub_22C595D28();
        v21 = v27;
      }

      v25 = *(v21 + 16);
      v26 = v25 + 1;
      if (v25 >= *(v21 + 24) >> 1)
      {
        v43 = v25 + 1;
        sub_22C595D28();
        v26 = v43;
        v21 = v28;
      }

      ++v19;
      *(v21 + 16) = v26;
      v42((v21 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v25), v50, v7);
      v14 = v44;
    }
  }

  sub_22C3AE56C();
  v30 = v29;
  v31 = v47;
  sub_22C90400C();

  v32 = sub_22C9063CC();
  v33 = sub_22C90AABC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v34 = 136315394;
    *(v34 + 4) = sub_22C36F9F4(0xD000000000000021, 0x800000022C935FD0, v51);
    *(v34 + 12) = 2080;
    sub_22C80AD0C();
    sub_22C80ACC4(v35, v36, MEMORY[0x277D1F0E8]);
    v37 = sub_22C90A8CC();
    v39 = sub_22C36F9F4(v37, v38, v51);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_22C366000, v32, v33, "%s returning appNameSpans %s", v34, 0x16u);
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v48 + 8))(v31, v14);
  return v30;
}

uint64_t sub_22C80A470@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_22C3A5908(&qword_27D9BDA90, &unk_22C91A460);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v54[-v4];
  v61 = sub_22C90361C();
  v57 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22C90952C();
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22C3A5908(&qword_27D9BEC60, &qword_22C920510);
  MEMORY[0x28223BE20](v8);
  v10 = &v54[-v9];
  v11 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54[-v12];
  v14 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v54[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v54[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v54[-v21];
  v59 = a1;
  sub_22C9039CC();
  v23 = sub_22C9093BC();
  if (sub_22C370B74(v13, 1, v23) == 1)
  {
    sub_22C3770B0(v13, &qword_27D9BB908, &qword_22C910960);
    v24 = 1;
  }

  else
  {
    sub_22C90935C();
    (*(*(v23 - 8) + 8))(v13, v23);
    v24 = 0;
  }

  sub_22C36C640(v22, v24, 1, v6);
  v25 = sub_22C9094EC();
  v26 = swift_allocBox();
  (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D72C98], v25);
  *v20 = v26;
  (*(v63 + 104))(v20, *MEMORY[0x277D72D50], v6);
  sub_22C36C640(v20, 0, 1, v6);
  v28 = *(v8 + 48);
  sub_22C80AC54(v22, v10);
  sub_22C80AC54(v20, &v10[v28]);
  if (sub_22C370B74(v10, 1, v6) == 1)
  {
    sub_22C3770B0(v20, &qword_27D9BB0C0, &qword_22C90D960);
    sub_22C3770B0(v22, &qword_27D9BB0C0, &qword_22C90D960);
    if (sub_22C370B74(&v10[v28], 1, v6) == 1)
    {
      sub_22C3770B0(v10, &qword_27D9BB0C0, &qword_22C90D960);
LABEL_11:
      v36 = sub_22C9039DC();
      v37 = v60;
      sub_22C58B384(v36, v60);

      v38 = v61;
      if (sub_22C370B74(v37, 1, v61) != 1)
      {
        v44 = v56;
        v43 = v57;
        (*(v57 + 32))(v56, v37, v38);
        v45 = sub_22C9035FC();
        v47 = v46;
        v48 = sub_22C90357C();
        v50 = v49;
        (*(v43 + 8))(v44, v38);
        v51 = v62;
        *v62 = v45;
        v51[1] = v47;
        v51[2] = v48;
        v51[3] = v50;
        v52 = *MEMORY[0x277D1F0D8];
        v53 = sub_22C903CCC();
        (*(*(v53 - 8) + 104))(v51, v52, v53);
        v40 = v51;
        v41 = 0;
        v39 = v53;
        return sub_22C36C640(v40, v41, 1, v39);
      }

      v29 = &qword_27D9BDA90;
      v30 = &unk_22C91A460;
      v31 = v37;
      goto LABEL_13;
    }

LABEL_9:
    v29 = &qword_27D9BEC60;
    v30 = &qword_22C920510;
    v31 = v10;
LABEL_13:
    sub_22C3770B0(v31, v29, v30);
    goto LABEL_14;
  }

  sub_22C80AC54(v10, v17);
  if (sub_22C370B74(&v10[v28], 1, v6) == 1)
  {
    sub_22C3770B0(v20, &qword_27D9BB0C0, &qword_22C90D960);
    sub_22C3770B0(v22, &qword_27D9BB0C0, &qword_22C90D960);
    (*(v63 + 8))(v17, v6);
    goto LABEL_9;
  }

  v32 = v63;
  v33 = &v10[v28];
  v34 = v58;
  (*(v63 + 32))(v58, v33, v6);
  sub_22C80ACC4(&qword_28142FA78, MEMORY[0x277D72D58], MEMORY[0x277D72D70]);
  v55 = sub_22C90A0BC();
  v35 = *(v32 + 8);
  v35(v34, v6);
  sub_22C3770B0(v20, &qword_27D9BB0C0, &qword_22C90D960);
  sub_22C3770B0(v22, &qword_27D9BB0C0, &qword_22C90D960);
  v35(v17, v6);
  sub_22C3770B0(v10, &qword_27D9BB0C0, &qword_22C90D960);
  if (v55)
  {
    goto LABEL_11;
  }

LABEL_14:
  v39 = sub_22C903CCC();
  v40 = v62;
  v41 = 1;
  return sub_22C36C640(v40, v41, 1, v39);
}

_BYTE *storeEnumTagSinglePayload for AppDirectedToolHelper(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C80AC54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB0C0, &qword_22C90D960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C80ACC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PlannerSpanMatchService.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22C907D8C();
  *(v0 + 112) = sub_22C907D7C();
  return v0;
}

uint64_t PlannerSpanMatchService.init()()
{
  swift_defaultActor_initialize();
  sub_22C907D8C();
  *(v0 + 112) = sub_22C907D7C();
  return v0;
}

uint64_t static PlannerSpanMatchService.isEnabled()()
{
  v0 = sub_22C90363C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D1EBE0], v0);
  v4 = sub_22C90362C();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_22C80AEB8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = sub_22C9089DC();
  v2[19] = v3;
  sub_22C3699B8(v3);
  v2[20] = v4;
  v2[21] = sub_22C3699D4();
  v5 = sub_22C9063DC();
  v2[22] = v5;
  sub_22C3699B8(v5);
  v2[23] = v6;
  v2[24] = sub_22C3699D4();
  sub_22C3A5908(&qword_27D9BEEA8, &qword_22C9214D0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = sub_22C3A5908(&qword_27D9BEED0, &unk_22C922F60);
  v2[28] = sub_22C3699D4();
  v7 = sub_22C908A0C();
  v2[29] = v7;
  sub_22C3699B8(v7);
  v2[30] = v8;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v9 = sub_22C90880C();
  v2[33] = v9;
  sub_22C3699B8(v9);
  v2[34] = v10;
  v2[35] = sub_22C3699D4();
  v11 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22C80B0D0(uint64_t a1)
{
  v2 = *(v1 + 272);
  sub_22C90878C();
  v3 = sub_22C9087DC();
  *(v1 + 288) = *(v2 + 8);
  *(v1 + 296) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4 = sub_22C36BAFC();
  v5(v4);
  *(v1 + 120) = v3;
  *(v1 + 304) = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  *(v1 + 312) = sub_22C3AC13C();
  sub_22C907ECC();

  v7 = *(v1 + 104);
  v6 = *(v1 + 112);
  *(v1 + 320) = v7;
  *(v1 + 328) = v6;
  if (v6)
  {
    v8 = swift_task_alloc();
    *(v1 + 336) = v8;
    *v8 = v1;
    v8[1] = sub_22C80B314;

    return sub_22C80BD50(v7, v6);
  }

  else
  {
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v10 = *(v1 + 88);
    v11 = *(v1 + 72);
    *v12 = *(v1 + 56);
    *(v12 + 16) = v11;
    *(v12 + 32) = v10;
    v13 = swift_willThrow();
    sub_22C373AB0(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29, v30, v1, v31, v32);

    sub_22C369A24();

    return v21();
  }
}

uint64_t sub_22C80B314()
{
  v2 = *v1;
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369A30();
  *v5 = v4;

  if (v0)
  {

    sub_22C369A24();

    return v6();
  }

  else
  {

    v8 = sub_22C37BB20();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_22C80B73C()
{
  v2 = *v1;
  sub_22C369A30();
  *v4 = v3;
  v5 = *v1;
  sub_22C369A30();
  *v6 = v5;
  *(v8 + 368) = v7;
  *(v8 + 376) = v0;

  v9 = *(v2 + 144);

  if (v0)
  {
    v10 = sub_22C80BB40;
  }

  else
  {
    v10 = sub_22C80B884;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22C80B884()
{
  v1 = v0[46];
  if (*(v1 + 16))
  {
    v20 = v0[43];
    v2 = v0[31];
    v3 = v0[30];
    v19 = v0[29];
    v4 = v0[20];
    v5 = v0[21];
    v6 = v0[19];
    v7 = v0[17];
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    sub_22C3B27D8(sub_22C80C38C, v8, v1);

    sub_22C90679C();
    (*(v4 + 104))(v5, *MEMORY[0x277D1E788], v6);
    v9 = v2;
    sub_22C90893C();
    (*(v4 + 8))(v5, v6);
    sub_22C3A5908(&qword_27D9BAE10, &unk_22C91DB10);
    v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22C90F800;
    v20(v11 + v10, v9, v19);
  }

  else
  {

    sub_22C90404C();
    v12 = sub_22C9063CC();
    v13 = sub_22C90AACC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22C366000, v12, v13, "No spans found. Returning nil transcript event", v14, 2u);
      sub_22C3699EC();
    }

    v15 = sub_22C36BAFC();
    v16(v15);
    v11 = MEMORY[0x277D84F90];
  }

  (*(v0[30] + 8))(v0[32], v0[29]);

  v17 = v0[1];

  return v17(v11);
}

uint64_t sub_22C80BC04(uint64_t a1)
{
  v2 = sub_22C9039FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C901FAC();
  MEMORY[0x28223BE20](v6 - 8);
  sub_22C9087AC();
  sub_22C90882C();

  (*(v3 + 16))(v5, a1, v2);
  return sub_22C90820C();
}

uint64_t sub_22C80BD50(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22C9063DC();
  v3[5] = v4;
  sub_22C3699B8(v4);
  v3[6] = v5;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = sub_22C37BB20();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C80BE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_22C372634();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  sub_22C90404C();

  v25 = sub_22C9063CC();
  v26 = sub_22C90AACC();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v22[6];
  if (v27)
  {
    v30 = v22[2];
    v29 = v22[3];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    a11 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_22C36F9F4(v30, v29, &a11);
    _os_log_impl(&dword_22C366000, v25, v26, "Finding Span Matches for utterance: %s", v31, 0xCu);
    sub_22C36FF94(v32);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  v33 = *(v28 + 8);
  v34 = sub_22C36BAFC();
  v33(v34);
  v22[9] = v33;
  v45 = *MEMORY[0x277D1E240] + MEMORY[0x277D1E240];
  v35 = swift_task_alloc();
  v22[10] = v35;
  *v35 = v22;
  v35[1] = sub_22C80BFB4;
  sub_22C36D5F8();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, v45, a11, a12, a13, a14);
}