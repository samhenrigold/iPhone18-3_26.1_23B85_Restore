void sub_20BAB24B8(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v52 = a1;
  v2 = sub_20C133134();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C1327F4();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C132E94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  sub_20C132E64();
  sub_20C132D64();
  v15 = *(v9 + 8);
  v46 = v9 + 8;
  v47 = v8;
  v44 = v15;
  v15(v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A88, &unk_20C15E4B0);
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = swift_allocObject();
  v41 = xmmword_20C14F980;
  *(v17 + 16) = xmmword_20C14F980;
  v18 = *(v3 + 104);
  v18(v17 + v16, *MEMORY[0x277CC9968], v2);
  sub_20BE8D12C(v17);
  swift_setDeallocating();
  v19 = *(v3 + 8);
  v43 = v2;
  v19(v17 + v16, v2);
  swift_deallocClassInstance();
  v45 = v14;
  sub_20C133054();

  v20 = sub_20C132774();
  LOBYTE(v16) = v21;
  (*(v50 + 8))(v7, v51);
  if ((v16 & 1) == 0)
  {
    if (v20 == 1)
    {
      v22 = *(v48 + 72);
      v23 = *(v48 + 80);
      __swift_project_boxed_opaque_existential_1((v48 + 48), v22);
      v25 = 0xD00000000000002BLL;
      v24 = 0x800000020C1A5ED0;
      goto LABEL_11;
    }

    if (!v20)
    {
      v22 = *(v48 + 72);
      v23 = *(v48 + 80);
      __swift_project_boxed_opaque_existential_1((v48 + 48), v22);
      v24 = 0x800000020C1A5F00;
      v25 = 0xD000000000000028;
LABEL_11:
      sub_20B5E107C(v25, v24, v22, v23);
      goto LABEL_12;
    }
  }

  v27 = v42;
  v26 = v43;
  v18(v42, *MEMORY[0x277CC99B8], v43);
  v28 = sub_20C133144();
  v19(v27, v26);
  v29 = v28 - 1;
  if (__OFSUB__(v28, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v30 = v48;
  v31 = [*(v48 + 16) weekdaySymbols];
  if (v31)
  {
    v32 = v31;
    v33 = MEMORY[0x277D837D0];
    v34 = sub_20C13CC74();

    if ((v29 & 0x8000000000000000) == 0)
    {
      if (v29 < *(v34 + 16))
      {
        v35 = v34 + 16 * v29;
        v36 = *(v35 + 32);
        v37 = *(v35 + 40);

        v38 = v30[9];
        v39 = v30[10];
        __swift_project_boxed_opaque_existential_1(v30 + 6, v38);
        sub_20B5E107C(0xD000000000000028, 0x800000020C1A5EA0, v38, v39);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
        v40 = swift_allocObject();
        *(v40 + 16) = v41;
        *(v40 + 56) = v33;
        *(v40 + 64) = sub_20B5D91B8();
        *(v40 + 32) = v36;
        *(v40 + 40) = v37;
        sub_20C13C994();

LABEL_12:
        v44(v45, v47);
        return;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_20BAB29F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_20BEC6B94(ObjectType, a2);
  v7 = *(v2 + 72);
  v8 = *(v2 + 80);
  __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
  v9 = "COMPLETION_TOTAL_ACTIVE_KJ";
  v10 = 0xD00000000000001CLL;
  if (v6 != 1)
  {
    v9 = "TEMPLATE_WORKOUT_DURATION_RANGE";
    v10 = 0xD00000000000001ALL;
  }

  if (v6)
  {
    v11 = v9;
  }

  else
  {
    v11 = "COMPLETION_TOTAL_ACTIVE_KCAL";
  }

  if (v6)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xD00000000000001BLL;
  }

  return sub_20B5E107C(v12, v11 | 0x8000000000000000, v7, v8);
}

uint64_t sub_20BAB2AB4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D83B88];
    v6 = MEMORY[0x277D83C10];
    *(v4 + 16) = xmmword_20C14F980;
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = a1;
    v7 = v2[9];
    v8 = v2[10];
    __swift_project_boxed_opaque_existential_1(v2 + 6, v7);
    v9 = 0x554E494D5F4D554ELL;
    v10 = 0xEB00000000534554;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_20C14F320;
    v12 = MEMORY[0x277D83B88];
    v13 = MEMORY[0x277D83C10];
    *(v4 + 56) = MEMORY[0x277D83B88];
    *(v4 + 64) = v13;
    *(v4 + 32) = a1;
    *(v4 + 96) = v12;
    *(v4 + 104) = v13;
    *(v4 + 72) = a2;
    v7 = v2[9];
    v8 = v2[10];
    __swift_project_boxed_opaque_existential_1(v2 + 6, v7);
    v10 = 0x800000020C1A5E20;
    v9 = 0xD00000000000001FLL;
  }

  v14 = sub_20B5E10B0(v9, v10, v4, v7, v8);

  return v14;
}

uint64_t sub_20BAB2C10(uint64_t a1)
{
  v37 = a1;
  v1 = sub_20C132CB4();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C132CF4();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C132D24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C132D44();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v31 - v22;
  MEMORY[0x20F2EA170](v21);
  sub_20C132D14();
  sub_20C132D34();
  (*(v7 + 8))(v9, v6);
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_20C132CE4();
  sub_20C132C94();
  (*(v32 + 8))(v5, v33);
  v24(v16, v10);
  v25 = v34;
  sub_20C132CA4();
  sub_20C132C84();
  (*(v35 + 8))(v25, v36);
  v24(v19, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14F980;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_20B5D91B8();
  sub_20BAB680C(&qword_27C762280, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_20C132E74();
  v27 = v38[9];
  v28 = v38[10];
  __swift_project_boxed_opaque_existential_1(v38 + 6, v27);
  v29 = sub_20B5E10B0(0xD00000000000001ELL, 0x800000020C1A5E00, v26, v27, v28);

  v24(v23, v10);
  return v29;
}

uint64_t sub_20BAB306C(uint64_t a1)
{
  v37 = a1;
  v1 = sub_20C132CB4();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C132CF4();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C132D24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C132D44();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v31 - v22;
  MEMORY[0x20F2EA170](v21);
  sub_20C132D14();
  sub_20C132D34();
  (*(v7 + 8))(v9, v6);
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_20C132CE4();
  sub_20C132C94();
  (*(v32 + 8))(v5, v33);
  v24(v16, v10);
  v25 = v34;
  sub_20C132CA4();
  sub_20C132C84();
  (*(v35 + 8))(v25, v36);
  v24(v19, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14F980;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_20B5D91B8();
  sub_20BAB680C(&qword_27C762280, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_20C132E74();
  v27 = v38[9];
  v28 = v38[10];
  __swift_project_boxed_opaque_existential_1(v38 + 6, v27);
  v29 = sub_20B5E10B0(0xD00000000000001FLL, 0x800000020C1A5DE0, v26, v27, v28);

  v24(v23, v10);
  return v29;
}

uint64_t sub_20BAB34C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C133154();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20BAB6494(a1);
  sub_20C133014();
  if (sub_20C133044())
  {
    [v8 setFormattingContext_];
    v9 = sub_20C132DE4();
    v10 = [v8 stringFromDate_];

    v11 = sub_20C13C954();
    v13 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_20C14F980;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_20B5D91B8();
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    v15 = v2[9];
    v16 = v2[10];
    __swift_project_boxed_opaque_existential_1(v2 + 6, v15);
    v17 = sub_20B5E10B0(0x41445F5941444F54, 0xEA00000000004554, v14, v15, v16);
  }

  else
  {
    if (sub_20C133074())
    {
      [v8 setFormattingContext_];
      v18 = sub_20C132DE4();
      v19 = [v8 stringFromDate_];

      v20 = sub_20C13C954();
      v22 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_20C14F980;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_20B5D91B8();
      *(v23 + 32) = v20;
      *(v23 + 40) = v22;
      v24 = v2[9];
      v25 = v2[10];
      __swift_project_boxed_opaque_existential_1(v2 + 6, v24);
      v17 = sub_20B5E10B0(0x574F52524F4D4F54, 0xED0000455441445FLL, v23, v24, v25);
    }

    else
    {
      [v8 setFormattingContext_];
      v26 = sub_20C132DE4();
      v27 = [v8 stringFromDate_];

      v17 = sub_20C13C954();
    }
  }

  (*(v5 + 8))(v7, v4);
  return v17;
}

uint64_t sub_20BAB381C(unsigned __int8 a1, uint64_t a2)
{
  if (a1 <= 2u)
  {
    v5 = 0xE700000000000000;
    v6 = 0x59414453455554;
    if (a1 != 1)
    {
      v6 = 0x414453454E444557;
      v5 = 0xE900000000000059;
    }

    if (a1)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0x5941444E4F4DLL;
    }

    if (a1)
    {
      v3 = v5;
    }

    else
    {
      v3 = 0xE600000000000000;
    }

    if (!a2)
    {
      goto LABEL_25;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v4 = 0x5941445255544153;
    }

    else
    {
      v4 = 0x5941444E5553;
    }

    if (a1 == 5)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }

    if (!a2)
    {
      goto LABEL_25;
    }
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x5941445352554854;
    if (!a2)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x594144495246;
    if (!a2)
    {
LABEL_25:
      sub_20C13DC94();

      v13 = v4;
      v14 = v3;
      v8 = 0xD000000000000016;
      v7 = 0x800000020C1A5DC0;
      goto LABEL_26;
    }
  }

  sub_20C13DC94();

  v13 = v4;
  v14 = v3;
  v7 = 0x800000020C1A5DA0;
  v8 = 0xD000000000000013;
LABEL_26:
  MEMORY[0x20F2F4230](v8, v7);
  v9 = v2[9];
  v10 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v9);
  v11 = sub_20B5E107C(v13, v14, v9, v10);

  return v11;
}

void sub_20BAB39FC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = sub_20BEDECF0(*(a1 + 16), 0);
    v7 = sub_20BEE29EC(&v22, v6 + 32, v3, a1);
    v8 = v22;

    sub_20B583EDC(v8);
    if (v7 != v3)
    {
LABEL_17:
      __break(1u);

      __break(1u);
      return;
    }

    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v22 = v6;
  sub_20BAB68C4(&v22);
  v9 = v22;
  v10 = *(v22 + 2);
  if (v10)
  {
    v22 = v4;
    sub_20B526D44(0, v10, 0);
    v11 = 0;
    v3 = v22;
    v12 = *(v9 + 2);
    while (v12 != v11)
    {
      if (v11 >= *(v9 + 2))
      {
        goto LABEL_16;
      }

      v13 = sub_20BAB381C(v9[v11 + 32], v11);
      v22 = v3;
      v16 = *(v3 + 2);
      v15 = *(v3 + 3);
      if (v16 >= v15 >> 1)
      {
        v18 = v13;
        v19 = v14;
        sub_20B526D44((v15 > 1), v16 + 1, 1);
        v14 = v19;
        v13 = v18;
        v3 = v22;
      }

      ++v11;
      *(v3 + 2) = v16 + 1;
      v17 = &v3[16 * v16];
      *(v17 + 4) = v13;
      *(v17 + 5) = v14;
      if (v10 == v11)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_14:
  v22 = v3;
  v20 = v2[9];
  v21 = v2[10];
  __swift_project_boxed_opaque_existential_1(v2 + 6, v20);
  sub_20B5E107C(0xD000000000000011, 0x800000020C1A5D80, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);
  sub_20B6D6ABC(&qword_27C766B60, &qword_27C765218, &qword_20C15F3D0, MEMORY[0x277D83958]);
  sub_20C13C824();
}

uint64_t sub_20BAB3C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = sub_20C132894();
  MEMORY[0x28223BE20](v34);
  v35 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0, &unk_20C166B80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  v7 = sub_20C13C8D4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_20C13C8F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  v15 = sub_20C133154();
  v32 = *(v15 - 8);
  v33 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20BAB6494(a1);
  sub_20C133014();
  v19 = sub_20C133044();
  v30 = v18;
  v31 = v17;
  if (v19)
  {
    [v18 setFormattingContext_];
    v20 = sub_20C132DE4();
    v21 = [v18 stringFromDate_];

    sub_20C13C954();
    sub_20C13C8C4();
  }

  else
  {
    if (sub_20C133074())
    {
      [v18 setFormattingContext_];
    }

    else
    {
      [v18 setFormattingContext_];
    }

    v22 = sub_20C132DE4();
    v23 = [v18 stringFromDate_];

    sub_20C13C954();
    sub_20C13C8C4();
  }

  sub_20C13C8B4();
  sub_20C13C8A4();

  sub_20C13C8B4();
  sub_20C13C8E4();
  (*(v9 + 16))(v11, v14, v8);
  v28[1] = "Localizable-kahana";
  v29 = v8;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  v26 = sub_20C132FD4();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  swift_getKeyPath();
  v37 = MEMORY[0x277D84F90];
  sub_20BAB680C(&qword_27C769D40, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769D48, &qword_20C16A878);
  sub_20B6D6ABC(&qword_27C769D50, &qword_27C769D48, &qword_20C16A878, MEMORY[0x277D83970]);
  sub_20C13DA94();
  sub_20BAB6764();
  sub_20C132914();

  (*(v9 + 8))(v14, v29);
  return (*(v32 + 8))(v31, v33);
}

uint64_t sub_20BAB42C0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v4 = sub_20C132D24();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C132CF4();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C132CB4();
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C132D44();
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v20);
  v55 = &v50 - v21;
  v22 = sub_20C133154();
  v61 = *(v22 - 8);
  v62 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133014();
  v25 = sub_20C133044();
  v26 = sub_20BAB0344(a2);
  v27 = sub_20B717EA4(v26);

  v28 = *(v27 + 16);

  if (v28 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v28;
  }

  v30 = v29 - 1;
  if (v25)
  {
    v31 = "MORROW_AND_OTHERS";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D83B88];
    *(v32 + 16) = xmmword_20C14F980;
    v34 = MEMORY[0x277D83C10];
    *(v32 + 56) = v33;
    *(v32 + 64) = v34;
    *(v32 + 32) = v30;
    v35 = 0xD00000000000001ELL;
  }

  else if (sub_20C133074())
  {
    v31 = "STERDAY_AND_OTHERS";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
    v32 = swift_allocObject();
    v36 = MEMORY[0x277D83B88];
    *(v32 + 16) = xmmword_20C14F980;
    v37 = MEMORY[0x277D83C10];
    *(v32 + 56) = v36;
    *(v32 + 64) = v37;
    *(v32 + 32) = v30;
    v35 = 0xD000000000000021;
  }

  else
  {
    if ((sub_20C133084() & 1) == 0)
    {
      MEMORY[0x20F2EA170]();
      sub_20C132CA4();
      sub_20C132C84();
      (*(v51 + 8))(v10, v8);
      v41 = v60;
      v42 = *(v59 + 8);
      v42(v13, v60);
      v43 = v52;
      sub_20C132CD4();
      sub_20C132C94();
      (*(v53 + 8))(v43, v54);
      v42(v16, v41);
      v44 = v56;
      sub_20C132D14();
      v45 = v55;
      sub_20C132D34();
      (*(v57 + 8))(v44, v58);
      v42(v19, v41);
      sub_20BAB680C(&qword_27C762280, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
      sub_20C132E74();
      v46 = v64;
      v47 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_20C14F320;
      v49 = MEMORY[0x277D83C10];
      *(v48 + 56) = MEMORY[0x277D83B88];
      *(v48 + 64) = v49;
      *(v48 + 32) = v30;
      *(v48 + 96) = MEMORY[0x277D837D0];
      *(v48 + 104) = sub_20B5D91B8();
      *(v48 + 72) = v46;
      *(v48 + 80) = v47;
      sub_20BAB4978(0xD00000000000001CLL, 0x800000020C1A5CC0, v48, v63);

      v42(v45, v41);
      return (*(v61 + 8))(v24, v62);
    }

    v31 = "SCHEDULED_FOR_DAY_AND_OTHERS";
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
    v32 = swift_allocObject();
    v38 = MEMORY[0x277D83B88];
    *(v32 + 16) = xmmword_20C14F980;
    v39 = MEMORY[0x277D83C10];
    *(v32 + 56) = v38;
    *(v32 + 64) = v39;
    *(v32 + 32) = v30;
    v35 = 0xD000000000000022;
  }

  sub_20BAB4978(v35, (v31 | 0x8000000000000000), v32, v63);

  return (*(v61 + 8))(v24, v62);
}

void sub_20BAB4978(unint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a2;
  v102 = a3;
  v93 = a1;
  v78 = a4;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769D28, &qword_20C16A830);
  v88 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v73 - v5;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769D30, &qword_20C16A838);
  MEMORY[0x28223BE20](v97);
  v82 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v73 - v8;
  MEMORY[0x28223BE20](v9);
  v107 = &v73 - v10;
  v105 = sub_20C1328E4();
  v100 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v104 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_20C1328D4();
  v89 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C1328F4();
  v90 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  KeyPath = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769D38, &unk_20C16A840) - 8;
  MEMORY[0x28223BE20](v92);
  v103 = &v73 - v15;
  v91 = sub_20C132894();
  MEMORY[0x28223BE20](v91);
  v86 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FEB0, &unk_20C166B80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v73 - v18;
  v80 = sub_20C132924();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v106 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v73 - v22;
  v24 = sub_20C13C8F4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v73 - v29;
  v31 = v4[9];
  v32 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v31);
  sub_20B5E107C(v93, v101, v31, v32);
  sub_20C13C994();

  sub_20C13C904();
  v75 = v25;
  v33 = *(v25 + 16);
  v74 = v30;
  v76 = v24;
  v33(v27, v30, v24);
  v34 = sub_20C132FD4();
  (*(*(v34 - 8) + 56))(v19, 1, 1, v34);
  swift_getKeyPath();
  v110 = MEMORY[0x277D84F90];
  sub_20BAB680C(&qword_27C769D40, MEMORY[0x277CC8B58], MEMORY[0x277CC8B60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769D48, &qword_20C16A878);
  v35 = v107;
  sub_20B6D6ABC(&qword_27C769D50, &qword_27C769D48, &qword_20C16A878, MEMORY[0x277D83970]);
  sub_20C13DA94();
  v93 = sub_20BAB6764();
  sub_20C132914();
  v36 = objc_opt_self();
  v37 = *MEMORY[0x277D76918];
  v84 = [v36 preferredFontForTextStyle_];
  v38 = objc_opt_self();
  v83 = [v38 lightTextColor];
  v39 = v38;
  v40 = v103;
  v102 = [v39 whiteColor];
  v101 = [v36 preferredFontForTextStyle_];
  (*(v79 + 16))(v106, v23, v80);
  v41 = KeyPath;
  v77 = v23;
  sub_20C132904();
  v42 = v90;
  (v90[2])(v40, v41, v13);
  v43 = *(v92 + 44);
  v44 = sub_20BAB680C(&qword_27C769D60, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  sub_20C13D024();
  (v42[1])(v41, v13);
  ++v100;
  v90 = (v89 + 2);
  ++v89;
  ++v88;
  v94 = v13;
  v92 = v43;
  v91 = v44;
  while (1)
  {
    v52 = v104;
    sub_20C13D074();
    sub_20BAB680C(&qword_27C769D68, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v53 = v105;
    v54 = sub_20C13C894();
    (*v100)(v52, v53);
    if (v54)
    {
      break;
    }

    v55 = sub_20C13D0A4();
    v56 = v95;
    v57 = v96;
    (*v90)(v95);
    v55(&v110, 0);
    sub_20C13D084();
    sub_20C1328C4();
    swift_getKeyPath();
    v58 = v98;
    sub_20C1328B4();

    (*v89)(v56, v57);
    swift_getKeyPath();
    sub_20BAB67B8();
    v59 = v99;
    sub_20C132A64();

    (*v88)(v58, v59);
    v60 = v110;
    if (v110 == 2)
    {
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v109 = v102;
      v45 = v102;
      sub_20B6D6ABC(&qword_27C769D78, &qword_27C769D30, &qword_20C16A838, MEMORY[0x277D83D30]);
      v46 = sub_20C132954();
      sub_20C132864();
      sub_20BAB680C(&qword_27C7664B0, MEMORY[0x277D74A38], MEMORY[0x277D74A30]);
      v47 = sub_20C1329F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7664B8, &unk_20C1669B0);
      sub_20B81F8C0();
      sub_20C132A74();
      v47(v108, 0);

      v46(&v110, 0);
      swift_getKeyPath();
      swift_getKeyPath();
      v109 = v101;
      v48 = v101;
      v49 = sub_20C132954();
      v50 = sub_20C1329F4();
      sub_20B81F86C();
      sub_20C132A74();
      v50(v108, 0);
      v35 = v107;

      v49(&v110, 0);
      v51 = v35;
    }

    else
    {
      v61 = v81;
      sub_20BAB6854(v35, v81);
      swift_getKeyPath();
      v85 = swift_getKeyPath();
      v62 = v83;
      if ((v60 & 1) == 0)
      {
        v62 = v102;
      }

      v109 = v62;
      v63 = v84;
      if ((v60 & 1) == 0)
      {
        v63 = v101;
      }

      KeyPath = v63;
      v64 = v62;
      v86 = sub_20B6D6ABC(&qword_27C769D78, &qword_27C769D30, &qword_20C16A838, MEMORY[0x277D83D30]);
      v65 = sub_20C132954();
      sub_20C132864();
      sub_20BAB680C(&qword_27C7664B0, MEMORY[0x277D74A38], MEMORY[0x277D74A30]);
      v66 = sub_20C1329F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7664B8, &unk_20C1669B0);
      sub_20B81F8C0();
      sub_20C132A74();
      v66(v108, 0);

      v65(&v110, 0);
      sub_20B520158(v61, &qword_27C769D30, &qword_20C16A838);
      v67 = v82;
      sub_20BAB6854(v107, v82);
      swift_getKeyPath();
      swift_getKeyPath();
      v109 = KeyPath;
      v68 = KeyPath;
      v69 = sub_20C132954();
      v35 = v107;
      v70 = sub_20C1329F4();
      sub_20B81F86C();
      sub_20C132A74();
      v70(v108, 0);

      v69(&v110, 0);
      sub_20B520158(v67, &qword_27C769D30, &qword_20C16A838);
      v51 = v35;
    }

    sub_20B520158(v51, &qword_27C769D30, &qword_20C16A838);
    v40 = v103;
  }

  sub_20B520158(v40, &qword_27C769D38, &unk_20C16A840);
  v71 = v79;
  v72 = v80;
  (*(v79 + 8))(v77, v80);
  (*(v75 + 8))(v74, v76);
  (*(v71 + 32))(v78, v106, v72);
}

uint64_t sub_20BAB5A08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EAD0, &unk_20C1664E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v41 - v1;
  v3 = sub_20C133154();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_20C132E94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v41 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  sub_20C133014();
  sub_20C1372E4();
  v18 = *(v4 + 8);
  v42 = v3;
  v18(v6, v3);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &qword_27C762AC0, &qword_20C14FC90);
    sub_20C1372F4();
    v19 = sub_20C133594();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v2, 1, v19) == 1)
    {
      sub_20B520158(v2, &qword_27C76EAD0, &unk_20C1664E0);
      v21 = v44[9];
      v22 = v44[10];
      __swift_project_boxed_opaque_existential_1(v44 + 6, v21);
      return sub_20B5E107C(0x4C504D4F435F4F4ELL, 0xEE00534E4F495445, v21, v22);
    }

    else
    {
      sub_20C133014();
      v30 = v41;
      sub_20C133564();
      v18(v6, v42);
      (*(v20 + 8))(v2, v19);
      v31 = v11;
      v32 = v43;
      v33 = v10;
      (*(v11 + 32))(v43, v30, v10);
      sub_20C132D44();
      sub_20BAB680C(&qword_27C762280, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
      v34 = v44;
      sub_20C132E74();
      v35 = v45;
      v36 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_20C14F980;
      *(v37 + 56) = MEMORY[0x277D837D0];
      *(v37 + 64) = sub_20B5D91B8();
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      v38 = v34[9];
      v39 = v34[10];
      __swift_project_boxed_opaque_existential_1(v34 + 6, v38);
      v23 = sub_20B5E10B0(0xD000000000000015, 0x800000020C1A5C80, v37, v38, v39);

      (*(v31 + 8))(v32, v33);
    }
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    sub_20C132D44();
    sub_20BAB680C(&qword_27C762280, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
    v24 = v44;
    sub_20C132E74();
    v25 = v45;
    v26 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20C14F980;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_20B5D91B8();
    *(v27 + 32) = v25;
    *(v27 + 40) = v26;
    v28 = v24[9];
    v29 = v24[10];
    __swift_project_boxed_opaque_existential_1(v24 + 6, v28);
    v23 = sub_20B5E10B0(0xD000000000000017, 0x800000020C1A5CA0, v27, v28, v29);

    (*(v11 + 8))(v17, v10);
  }

  return v23;
}

uint64_t sub_20BAB6038(uint64_t a1)
{
  v37 = a1;
  v1 = sub_20C132CB4();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20C132CF4();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C132D24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C132D44();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v31 - v22;
  MEMORY[0x20F2EA170](v21);
  sub_20C132D14();
  sub_20C132D34();
  (*(v7 + 8))(v9, v6);
  v24 = *(v11 + 8);
  v24(v13, v10);
  sub_20C132CD4();
  sub_20C132C94();
  (*(v32 + 8))(v5, v33);
  v24(v16, v10);
  v25 = v34;
  sub_20C132CA4();
  sub_20C132C84();
  (*(v35 + 8))(v25, v36);
  v24(v19, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14F980;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_20B5D91B8();
  sub_20BAB680C(&qword_27C762280, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_20C132E74();
  v27 = v38[9];
  v28 = v38[10];
  __swift_project_boxed_opaque_existential_1(v38 + 6, v27);
  v29 = sub_20B5E10B0(0xD000000000000023, 0x800000020C1A5C50, v26, v27, v28);

  v24(v23, v10);
  return v29;
}

id sub_20BAB6494(uint64_t a1)
{
  v2 = v1;
  v3 = 0x64204D4D4D4DLL;
  v4 = sub_20C132FD4();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C133154();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  sub_20C133014();
  if (sub_20C133044())
  {
    v21 = 0x64204D4D4D4DLL;
  }

  else
  {
    if ((sub_20C133074() & 1) == 0)
    {
      v3 = 0x4D4D202C45454545;
    }

    v21 = v3;
  }

  v14 = *(v8 + 8);
  v14(v13, v7);
  v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v20 = v7;
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  sub_20C138CE4();
  sub_20C132EF4();
  v16 = sub_20C132F54();
  (*(v22 + 8))(v6, v23);
  [v15 setLocale_];

  sub_20C133014();
  v17 = sub_20C133094();
  v14(v10, v20);
  [v15 setCalendar_];

  v18 = sub_20C13C914();

  [v15 setLocalizedDateFormatFromTemplate_];

  return v15;
}

unint64_t sub_20BAB6764()
{
  result = qword_27C769D58;
  if (!qword_27C769D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769D58);
  }

  return result;
}

unint64_t sub_20BAB67B8()
{
  result = qword_27C769D70;
  if (!qword_27C769D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769D70);
  }

  return result;
}

uint64_t sub_20BAB680C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BAB6854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769D30, &qword_20C16A838);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20BAB68C4(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20B6A1014(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = sub_20C13DF84();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v18 = v1;
      v17 = v2;
      v9 = v2 + 33;
      v10 = -1;
      for (i = 1; i != v3; ++i)
      {
        v12 = v10;
        v13 = v9;
        do
        {
          v14 = sub_20C137F94();
          if (v14 >= sub_20C137F94())
          {
            break;
          }

          v15 = *v13;
          *v13 = *(v13 - 1);
          *--v13 = v15;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        --v10;
      }

      v1 = v18;
      v2 = v17;
    }
  }

  else
  {
    v6 = v4;
    v7 = (v3 >> 1);
    if (v3 >= 2)
    {
      v8 = sub_20C13CCD4();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v19[0] = (v8 + 32);
    v19[1] = v7;
    sub_20BAB6A40(v19, v5, v21, v20, v6);
    *(v8 + 16) = 0;
  }

  *v1 = v2;
}

void sub_20BAB6A40(unsigned __int8 **a1, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v7 = a4[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_92:
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_124:
      v9 = sub_20B6A07A0(v9);
    }

    v83 = *(v9 + 2);
    if (v83 >= 2)
    {
      while (*a4)
      {
        v84 = *&v9[16 * v83];
        v85 = *&v9[16 * v83 + 24];
        sub_20BAB702C((*a4 + v84), (*a4 + *&v9[16 * v83 + 16]), (*a4 + v85), v10, v82);
        if (v6)
        {
          goto LABEL_102;
        }

        if (v85 < v84)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_20B6A07A0(v9);
        }

        if (v83 - 2 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v86 = &v9[16 * v83];
        *v86 = v84;
        *(v86 + 1) = v85;
        sub_20B6A0714(v83 - 1);
        v83 = *(v9 + 2);
        if (v83 <= 1)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_128;
    }

LABEL_102:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if ((v8 + 1) < v7)
    {
      v90 = v6;
      v12 = v8;
      v13 = sub_20C137F94();
      v14 = sub_20C137F94();
      v93 = v7;
      v15 = v7 - 2;
      v88 = v8;
      while (v15 != v12)
      {
        v16 = sub_20C137F94();
        ++v12;
        if (v13 < v14 == v16 >= sub_20C137F94())
        {
          v17 = (v12 + 1);
          goto LABEL_11;
        }
      }

      v17 = v93;
LABEL_11:
      v6 = v90;
      if (v13 >= v14)
      {
        v11 = v17;
        v10 = v88;
      }

      else
      {
        v10 = v88;
        if (v17 < v88)
        {
          goto LABEL_121;
        }

        if (v88 < v17)
        {
          v18 = (v17 - 1);
          v19 = v88;
          do
          {
            if (v19 != v18)
            {
              v22 = *a4;
              if (!*a4)
              {
                goto LABEL_127;
              }

              v20 = v19[v22];
              v19[v22] = v18[v22];
              v18[v22] = v20;
            }
          }

          while (++v19 < v18--);
        }

        v11 = v17;
      }
    }

    v23 = a4[1];
    if (v11 < v23)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_120;
      }

      if (v11 - v10 < a5)
      {
        v24 = &v10[a5];
        if (__OFADD__(v10, a5))
        {
          goto LABEL_122;
        }

        if (v24 >= v23)
        {
          v24 = a4[1];
        }

        if (v24 < v10)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v11 != v24)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v11 < v10)
    {
      goto LABEL_119;
    }

    v35 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_20BC05740(0, *(v9 + 2) + 1, 1, v9);
    }

    v37 = *(v9 + 2);
    v36 = *(v9 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v9 = sub_20BC05740((v36 > 1), v37 + 1, 1, v9);
    }

    *(v9 + 2) = v38;
    v39 = &v9[16 * v37];
    *(v39 + 4) = v10;
    *(v39 + 5) = v11;
    v40 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    v8 = v11;
    if (v37)
    {
      v6 = v35;
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v9 + 4);
          v43 = *(v9 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_61:
          if (v45)
          {
            goto LABEL_108;
          }

          v58 = &v9[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_111;
          }

          v64 = &v9[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_115;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v68 = &v9[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_75:
        if (v63)
        {
          goto LABEL_110;
        }

        v71 = &v9[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v74 < v62)
        {
          goto LABEL_4;
        }

LABEL_82:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
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
          goto LABEL_123;
        }

        if (!*a4)
        {
          goto LABEL_126;
        }

        v10 = *&v9[16 * v79 + 32];
        v80 = *&v9[16 * v41 + 40];
        sub_20BAB702C(&v10[*a4], (*a4 + *&v9[16 * v41 + 32]), (*a4 + v80), v40, v34);
        if (v6)
        {
          goto LABEL_102;
        }

        if (v80 < v10)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_20B6A07A0(v9);
        }

        if (v79 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v81 = &v9[16 * v79];
        *(v81 + 4) = v10;
        *(v81 + 5) = v80;
        sub_20B6A0714(v41);
        v38 = *(v9 + 2);
        if (v38 <= 1)
        {
          goto LABEL_4;
        }
      }

      v46 = &v9[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_106;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_107;
      }

      v53 = &v9[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_109;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_112;
      }

      if (v57 >= v49)
      {
        v75 = &v9[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_116;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v6 = v35;
LABEL_4:
    v7 = a4[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v89 = v10;
  v91 = v6;
  v25 = *a4;
  v26 = (*a4 + v11);
  v27 = &v10[-v11];
  v94 = v24;
LABEL_33:
  v28 = v11;
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = sub_20C137F94();
    if (v31 >= sub_20C137F94())
    {
LABEL_32:
      v11 = v28 + 1;
      ++v26;
      --v27;
      if (v28 + 1 != v94)
      {
        goto LABEL_33;
      }

      v11 = v94;
      v10 = v89;
      v6 = v91;
      goto LABEL_40;
    }

    if (!v25)
    {
      break;
    }

    v32 = *v30;
    *v30 = *(v30 - 1);
    *--v30 = v32;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
    }
  }

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
}

uint64_t sub_20BAB702C(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4, __n128 a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v11 = &v5[v10];
    if (v10 >= 1 && v7 > v8)
    {
      do
      {
        v23 = v7;
        v16 = v7 - 1;
        --v6;
        v17 = v11;
        v18 = v11;
        while (1)
        {
          v19 = v5;
          v20 = v6 + 1;
          --v18;
          v7 = v16;
          v21 = sub_20C137F94();
          if (v21 < sub_20C137F94())
          {
            break;
          }

          if (v20 < v17 || v6 >= v17)
          {
            *v6 = *v18;
          }

          --v6;
          v17 = v18;
          v5 = v19;
          v16 = v7;
          if (v18 <= v19)
          {
            v11 = v18;
            v7 = v23;
            goto LABEL_40;
          }
        }

        if (v20 < v23 || v6 >= v23)
        {
          *v6 = *v7;
        }

        v5 = v19;
        v11 = v17;
      }

      while (v17 > v5 && v7 > v8);
      if (v7 == v5)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v7 != v5)
    {
LABEL_42:
      memmove(v7, v5, v11 - v5);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v9);
    }

    v11 = &v5[v9];
    if (v9 >= 1 && v7 < v6)
    {
      while (1)
      {
        v12 = sub_20C137F94();
        if (v12 >= sub_20C137F94())
        {
          v15 = v5 + 1;
          v14 = v5;
          v13 = v7;
          if (v8 < v5)
          {
            ++v5;
          }

          else
          {
            ++v5;
            if (v8 < v15)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v13 = v7 + 1;
          v14 = v7;
          if (v8 >= v7 && v8 < v13)
          {
            goto LABEL_16;
          }
        }

        *v8 = *v14;
LABEL_16:
        ++v8;
        if (v5 < v11)
        {
          v7 = v13;
          if (v13 < v6)
          {
            continue;
          }
        }

        break;
      }
    }

    v7 = v8;
    if (v8 != v5)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v7 >= v11)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_20BAB7294()
{
  v0 = 1919431217;
  v1 = sub_20C132FD4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() autoupdatingCurrentLocale];
  sub_20C132F84();

  v6 = objc_opt_self();
  v7 = sub_20C13C914();
  v8 = sub_20C132F54();
  v9 = [v6 dateFormatFromTemplate:v7 options:0 locale:v8];

  if (!v9 || (v10 = sub_20C13C954(), v12 = v11, v9, v15[2] = v10, v15[3] = v12, v15[0] = 97, v15[1] = 0xE100000000000000, sub_20B5F6EB0(), v13 = sub_20C13DA34(), , (v13 & 1) == 0))
  {
    v0 = 1919431730;
  }

  (*(v2 + 8))(v4, v1);
  return v0;
}

uint64_t sub_20BAB7464()
{
  result = [objc_opt_self() autoupdatingCurrentLocale];
  if (result)
  {
    v1 = result;
    v2 = [result numberingSystem];

    v3 = sub_20C13C954();
    v5 = v4;

    v6 = v3 == 1650553441 && v5 == 0xE400000000000000;
    if (v6 || (sub_20C13DFF4() & 1) != 0)
    {
      v7 = 0x636962617241;

      return v7;
    }

    if (v3 == 1635149156 && v5 == 0xE400000000000000)
    {
    }

    else
    {
      v9 = sub_20C13DFF4();

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    return 0x6167616E61766544;
  }

  __break(1u);
  return result;
}

uint64_t _s9SeymourUI30NotificationConsentNameBuilderV08makeFileE08platform11rightToLeftSS0A4Core8PlatformO_SbtFZ_0(char a1, char a2)
{
  if (a1)
  {
    if (a1 != 1)
    {
      result = sub_20C13DE24();
      __break(1u);
      return result;
    }

    v3 = 0x74656C626154;
  }

  else
  {
    v3 = 0x656E6F685069;
  }

  v13 = v3;

  MEMORY[0x20F2F4230](95, 0xE100000000000000);

  v4 = sub_20BAB7294();
  v6 = v5;

  MEMORY[0x20F2F4230](v4, v6);

  MEMORY[0x20F2F4230](95, 0xE100000000000000);

  if (a2)
  {
    v7 = 5002322;
  }

  else
  {
    v7 = 5395532;
  }

  MEMORY[0x20F2F4230](v7, 0xE300000000000000);

  v8 = sub_20BAB7464();
  if (v9)
  {
    v10 = v8;
    v11 = v9;

    MEMORY[0x20F2F4230](95, 0xE100000000000000);

    MEMORY[0x20F2F4230](v10, v11);
  }

  return v13;
}

unsigned __int8 *sub_20BAB77B4(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v4[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 1;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_styleProvider];
  sub_20BAB940C(v28);
  v13 = v28[9];
  *(v12 + 8) = v28[8];
  *(v12 + 9) = v13;
  *(v12 + 20) = v29;
  v14 = v28[5];
  *(v12 + 4) = v28[4];
  *(v12 + 5) = v14;
  v15 = v28[7];
  *(v12 + 6) = v28[6];
  *(v12 + 7) = v15;
  v16 = v28[1];
  *v12 = v28[0];
  *(v12 + 1) = v16;
  v17 = v28[3];
  *(v12 + 2) = v28[2];
  *(v12 + 3) = v17;
  *(v12 + 168) = xmmword_20C16A960;
  *(v12 + 184) = xmmword_20C16A970;
  *&v4[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_behaviors] = MEMORY[0x277D84FA0];
  v4[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_isBeyondScrollBoundary] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_presenter] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_queueCount] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_visualEffectView] = 0;
  QueueButton = type metadata accessor for UpNextQueueButton();
  v27.receiver = v4;
  v27.super_class = QueueButton;
  v19 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = *MEMORY[0x277D76838];
  v21 = v19;
  [v21 setMaximumContentSizeCategory_];
  v22 = v21;
  sub_20BAB7F94();
  v23 = sub_20C13D874();
  (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  sub_20C13D894();

  sub_20BAB83CC();
  sub_20BAB8C50();
  sub_20BAB8EF0(*(v22 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_isBeyondScrollBoundary), 0);
  LODWORD(v24) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v24];
  [v22 addTarget:v22 action:sel_primaryActionTriggered_ forControlEvents:0x2000];

  return v22;
}

uint64_t sub_20BAB7A78(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_presenter;
  *(v2 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_presenter) = a1;

  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = 40;
    if (a2)
    {
      v6 = 24;
    }

    *(v5 + v6) = &off_2822C8C58;
    swift_unknownObjectWeakAssign();
  }

  return sub_20BAB8C50();
}

id sub_20BAB7B08(char *a1, char a2, uint64_t a3)
{
  [a1 setAlpha_];
  v6 = *&a1[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_visualEffectView];
  if (v6)
  {
    v7 = 0.0;
    if (a2)
    {
      v7 = 1.0;
    }

    [v6 setAlpha_];
  }

  return [a1 setTintColor_];
}

void sub_20BAB7B8C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_visualEffectView;
  if (!*&v0[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_visualEffectView])
  {
    v2 = [objc_allocWithZone(type metadata accessor for RoundedVisualEffectView()) initWithEffect_];
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 setUserInteractionEnabled_];

    v3 = *&v0[v1];
    *&v0[v1] = v2;
    v4 = v2;

    v5 = v4;
    [v0 insertSubview:v5 atIndex:0];
    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20C14FE90;
    v8 = [v5 leadingAnchor];
    v9 = [v0 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(v7 + 32) = v10;
    v11 = [v5 trailingAnchor];

    v12 = [v0 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v7 + 40) = v13;
    v14 = [v5 topAnchor];

    v15 = [v0 topAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v7 + 48) = v16;
    v17 = [v5 bottomAnchor];

    v18 = [v0 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v7 + 56) = v19;
    sub_20B5E29D0();
    v20 = sub_20C13CC54();

    [v6 activateConstraints_];
  }
}

void sub_20BAB7E98(int a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_visualEffectView;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_visualEffectView);
  if (v4)
  {
    v7 = v4;
    if ((([v7 isHidden] ^ a1) & 1) == 0)
    {
      v5 = 1.0;
      if (a1)
      {
        v5 = 0.0;
      }

      [v7 setAlpha_];
    }

    [v7 setHidden_];
  }

  else if (a1)
  {
    sub_20BAB7B8C();
    v6 = *(v1 + v3);
    if (v6)
    {

      [v6 setAlpha_];
    }
  }
}

uint64_t sub_20BAB7F94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F20, &unk_20C157D00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16[-v2 - 8];
  v4 = sub_20C13D664();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_20C13D814();
  v8 = v0 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_styleProvider;
  sub_20C13D6B4();
  (*(v5 + 104))(v7, *MEMORY[0x277D74FD8], v4);
  sub_20C13D674();
  sub_20BAB8578(*(v0 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_queueCount));
  sub_20C13D804();
  sub_20C13D684();
  v9 = *(v8 + 128);
  v17 = *(v8 + 112);
  v18 = v9;
  v19 = *(v8 + 144);
  v20 = *(v8 + 160);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = v18;
  *(v11 + 24) = v17;
  *(v11 + 40) = v12;
  *(v11 + 56) = v19;
  *(v11 + 72) = v20;
  sub_20B7B2490(&v17, v16);
  sub_20C13C074();
  v13 = sub_20C13C064();
  (*(*(v13 - 8) + 56))(v3, 0, 1, v13);
  return sub_20C13D7B4();
}

double sub_20BAB8204(uint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_presenter);
  if (v8)
  {

    sub_20C13B444();
    sub_20C13BB64();
    (*(v4 + 8))(v7, v3);
    v9 = *(v8 + 48);
    if (v9)
    {
      v10 = *(v8 + 56);

      v9(a1);

      sub_20B583ECC(v9, v10);
    }

    else
    {
    }
  }

  return result;
}

void sub_20BAB83CC()
{
  [v0 setContentVerticalAlignment_];
  [v0 setContentHorizontalAlignment_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C151490;
  v3 = [v0 widthAnchor];
  v4 = [v0 heightAnchor];
  v5 = [v3 constraintGreaterThanOrEqualToAnchor_];

  *(v2 + 32) = v5;
  v6 = [v0 heightAnchor];
  v7 = [v6 constraintEqualToConstant_];

  *(v2 + 40) = v7;
  sub_20B5E29D0();
  v8 = sub_20C13CC54();

  [v1 activateConstraints_];
}

id sub_20BAB8578(uint64_t a1)
{
  v2 = [v1 traitCollection];
  v3 = sub_20B7C6A74(v2);

  v4 = [objc_opt_self() configurationWithFont:v3 scale:1];

  v5 = v4;
  v6 = sub_20C13C914();

  v7 = [objc_opt_self() smm:v6 systemImageNamed:v5 withConfiguration:?];

  return v7;
}

void sub_20BAB86BC(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = Strong, v7 = [Strong traitCollection], v6, v7))
  {
    v8 = sub_20C1329B4();
    (*(*(v8 - 8) + 16))(a3, a1, v8);
    swift_getKeyPath();
    swift_getKeyPath();
    v11[4] = sub_20B7C6A74(v7);
    sub_20C132864();
    sub_20B81F814();
    v9 = sub_20C132974();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7664B8, &unk_20C1669B0);
    sub_20B81F86C();
    sub_20C132A74();
    v9(v11, 0);
  }

  else
  {
    v10 = sub_20C1329B4();
    (*(*(v10 - 8) + 16))(a3, a1, v10);
  }
}

id sub_20BAB8878(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UpNextQueueButton();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for WorkoutPlanArtworkTile(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPlanArtworkTile(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_20BAB8B08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_20BAB8B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20BAB8BD4()
{
  result = qword_27C769DB8;
  if (!qword_27C769DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769DB8);
  }

  return result;
}

void sub_20BAB8C28(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_isBeyondScrollBoundary) != v2)
  {
    *(v1 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_isBeyondScrollBoundary) = v2;
    sub_20BAB8EF0(v2, 1);
  }
}

uint64_t sub_20BAB8C50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v16 - v5;
  v7 = sub_20C13D874();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13D884();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_20B7839B4(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_queueCount;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_queueCount);
  if (v13 >= 1)
  {
    v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_presenter);
    if (v14)
    {
      v15 = v14[18];
      v16[0] = v14[19];
      __swift_project_boxed_opaque_existential_1(v14 + 15, v15);
      v16[1] = v13;

      sub_20C138CA4();
    }
  }

  sub_20C13D824();
  sub_20BAB8578(*(v0 + v12));
  sub_20C13D804();
  (*(v8 + 16))(v3, v10, v7);
  (*(v8 + 56))(v3, 0, 1, v7);
  sub_20C13D894();
  return (*(v8 + 8))(v10, v7);
}

void sub_20BAB8EF0(char a1, char a2)
{
  v4 = 0.0;
  if (v2[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] == 1)
  {
    if ((a1 & 1) == 0)
    {
      v5 = a1;
      v6 = sub_20B8DD120();
      a1 = v5;
      if ((v6 & 1) == 0)
      {
        if (sub_20B8DD120())
        {
          v4 = 0.0;
        }

        else
        {
          v4 = 1.0;
        }

        goto LABEL_17;
      }
    }

    if (*&v2[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_queueCount] <= 0)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }
  }

  if ((a1 & 1) == 0)
  {
LABEL_17:
    v7 = 1;
    goto LABEL_18;
  }

  if (sub_20B8DD120() & 1) == 0 || (v7 = 1, (sub_20B8DD120()))
  {
    v7 = 0;
    if (sub_20B8DD120())
    {
      v7 = sub_20B8DD120() ^ 1;
    }
  }

  if ((sub_20B8DD120() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (sub_20B8DD120())
  {
LABEL_19:
    v8 = 24;
    goto LABEL_21;
  }

  v8 = 48;
LABEL_21:
  v20 = *&v2[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_styleProvider + v8];
  if (a2)
  {
    v9 = v7 & 1;
    sub_20BAB7E98(v9);
    if ([v2 isHidden])
    {
      if (v4 > 0.0)
      {
        [v2 setAlpha_];
        [v2 setHidden_];
      }
    }

    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = v4;
    *(v11 + 32) = v9;
    *(v11 + 40) = v20;
    v25 = sub_20BAB92BC;
    v26 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_20B7B548C;
    v24 = &block_descriptor_77;
    v12 = _Block_copy(&aBlock);
    v13 = v20;
    v14 = v2;

    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v14;
    v25 = sub_20BAB92D0;
    v26 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_20B5E3874;
    v24 = &block_descriptor_39_2;
    v16 = _Block_copy(&aBlock);
    v17 = v14;

    [v10 animateWithDuration:v12 animations:v16 completion:0.2];
    _Block_release(v16);
    _Block_release(v12);
  }

  else
  {
    [v2 setAlpha_];
    [v2 setHidden_];
    v18 = OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_visualEffectView;
    if ((v7 & 1) != 0 && !*&v2[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_visualEffectView])
    {
      sub_20BAB7B8C();
      v18 = OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_visualEffectView;
    }

    v19 = *&v2[v18];
    if (v19)
    {
      [v19 setHidden_];
    }

    [v2 setTintColor_];
  }
}

void sub_20BAB92D0()
{
  if (*(v0 + 16) == 0.0)
  {
    v1 = *(v0 + 24);
    [v1 alpha];
    if (v2 == 0.0)
    {
      [v1 setHidden_];

      [v1 setAlpha_];
    }
  }
}

char *sub_20BAB9360(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for UpNextQueueButton();
  v6 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_20BAB7A78(a1, a3);
  *&v6[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_behaviors] = a2;

  v7 = v6[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_isBeyondScrollBoundary];

  sub_20BAB8EF0(v7, 0);
  return v6;
}

id sub_20BAB940C@<X0>(uint64_t a1@<X8>)
{
  v11 = [objc_opt_self() effectWithStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v3 = [objc_opt_self() whiteColor];
  v4 = *MEMORY[0x277D76918];
  v5 = *MEMORY[0x277D76838];
  v6 = MEMORY[0x277D84FA0];
  v12 = MEMORY[0x277D84FA0];
  v7 = *MEMORY[0x277D76838];
  sub_20B6FF83C(v13, 1);
  v13[0] = 1;
  v8 = v7;
  v10 = v4;
  sub_20B6FF83C(v13, 1);
  *a1 = v11;
  strcpy((a1 + 8), "fitness.stacks");
  *(a1 + 23) = -18;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0xD000000000000013;
  *(a1 + 40) = 0x800000020C19DA40;
  *(a1 + 48) = v3;
  *(a1 + 56) = 0;
  *(a1 + 64) = v5;
  *(a1 + 72) = v10;
  *(a1 + 80) = 0;
  *(a1 + 84) = 2305;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = v12;
  *(a1 + 112) = 0;
  *(a1 + 120) = v5;
  *(a1 + 128) = v10;
  *(a1 + 136) = 0;
  *(a1 + 140) = 2305;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  *(a1 + 160) = v6;

  return v10;
}

void sub_20BAB95D4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible) = 1;
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_styleProvider;
  sub_20BAB940C(v7);
  v2 = v7[9];
  *(v1 + 128) = v7[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v8;
  v3 = v7[5];
  *(v1 + 64) = v7[4];
  *(v1 + 80) = v3;
  v4 = v7[7];
  *(v1 + 96) = v7[6];
  *(v1 + 112) = v4;
  v5 = v7[1];
  *v1 = v7[0];
  *(v1 + 16) = v5;
  v6 = v7[3];
  *(v1 + 32) = v7[2];
  *(v1 + 48) = v6;
  *(v1 + 168) = xmmword_20C16A960;
  *(v1 + 184) = xmmword_20C16A970;
  *(v0 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_behaviors) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_isBeyondScrollBoundary) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_presenter) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_queueCount) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_visualEffectView) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BAB9738(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_20BAB9780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20BAB9800(char a1, int a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C554();
  v53 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(sub_20C136D44() + 16);

  if (v12)
  {
    v51 = v10;
    v50 = a2;
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_mediaTagStringBuilder), *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_mediaTagStringBuilder + 24));
    sub_20C136D44();
    v13 = sub_20C138544();

    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_storefrontLocalizer), *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_storefrontLocalizer + 24));
    v14 = sub_20C138D34();
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    *(v17 + 33) = a1 & 1;
    *(v17 + 40) = v14;
    *(v17 + 48) = v16;
    v18 = v13;
    *(v17 + 56) = sub_20C136D54();
    *(v17 + 64) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_20C14F980;
    v21 = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_displaysSeparatorBelow);
    *(v20 + 32) = v17 | 0x2000000000000002;
    v54 = 0uLL;
    LOBYTE(v55) = 1;
    *(&v55 + 1) = 0;
    *&v56 = 0;
    BYTE8(v56) = 0x80;
    BYTE9(v56) = v21;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    LOBYTE(v60) = 0;
    *(&v60 + 1) = v20;
    *&v61[0] = MEMORY[0x277D84F90];
    *(v61 + 8) = 0u;
    *(&v61[1] + 8) = 0u;
    *(&v61[2] + 1) = 0;
    v62 = 2;
    nullsub_1();
    v22 = v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row;
    v23 = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 144);
    v63[8] = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 128);
    v63[9] = v23;
    v64 = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 160);
    v24 = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 80);
    v63[4] = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 64);
    v63[5] = v24;
    v25 = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 112);
    v63[6] = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 96);
    v63[7] = v25;
    v26 = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 16);
    v63[0] = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row);
    v63[1] = v26;
    v27 = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 48);
    v63[2] = *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 32);
    v63[3] = v27;
    v28 = v61[2];
    *(v22 + 128) = v61[1];
    *(v22 + 144) = v28;
    *(v22 + 160) = v62;
    v29 = v59;
    *(v22 + 64) = v58;
    *(v22 + 80) = v29;
    v30 = v61[0];
    *(v22 + 96) = v60;
    *(v22 + 112) = v30;
    v31 = v55;
    *v22 = v54;
    *(v22 + 16) = v31;
    v32 = v57;
    *(v22 + 32) = v56;
    *(v22 + 48) = v32;

    sub_20B634408(v63);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v34 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61D190(v3, Strong);
      if (v36)
      {
        v38 = v36;
        v48 = v35;
        v49 = v37;
        sub_20B5E2E18();
        v39 = sub_20C13D374();
        v40 = v52;
        v41 = v53;
        *v52 = v39;
        v42 = v51;
        (*(v41 + 104))(v40, *MEMORY[0x277D85200], v51);
        v43 = sub_20C13C584();
        (*(v41 + 8))(v40, v42);
        if ((v43 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B6208F8(v48, v38, v49, v3, v50 & 1, v34);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_20C13B534();
    v44 = sub_20C13BB74();
    v45 = sub_20C13D1F4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_20B517000, v44, v45, "[ExpandingTextEditorialSectionShelf] Empty summary tags. Hiding shelf.", v46, 2u);
      MEMORY[0x20F2F6A40](v46, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_20BAB9D10()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 32);
  v11[3] = v7;
  sub_20B634408(v11);

  v8 = OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_item;
  v9 = sub_20C136D64();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_storefrontLocalizer));
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandingTextEditorialSectionShelf(uint64_t a1)
{
  result = qword_27C769DE0;
  if (!qword_27C769DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BAB9EBC(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = sub_20C136D64();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20BAB9FB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BABA030@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
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

uint64_t sub_20BABA0EC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_canonicalIdentifier);

  return v1;
}

uint64_t sub_20BABA12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v7 = v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_row;
  sub_20B5D8060(v22);
  v8 = v22[9];
  *(v7 + 128) = v22[8];
  *(v7 + 144) = v8;
  *(v7 + 160) = v23;
  v9 = v22[5];
  *(v7 + 64) = v22[4];
  *(v7 + 80) = v9;
  v10 = v22[7];
  *(v7 + 96) = v22[6];
  *(v7 + 112) = v10;
  v11 = v22[1];
  *v7 = v22[0];
  *(v7 + 16) = v11;
  v12 = v22[3];
  *(v7 + 32) = v22[2];
  *(v7 + 48) = v12;
  *(v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_displaysSeparatorBelow) = 0;
  v13 = sub_20C135DB4();
  v14 = (v3 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_canonicalIdentifier);
  *v14 = v13;
  v14[1] = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_item;
  v17 = sub_20C136D64();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v4 + v16, a2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v21, v4 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  v19 = sub_20C135E14();
  (*(*(v19 - 8) + 8))(a3, v19);
  (*(v18 + 8))(a2, v17);
  sub_20B51C710(v21, v4 + OBJC_IVAR____TtC9SeymourUI34ExpandingTextEditorialSectionShelf_storefrontLocalizer);
  return v4;
}

uint64_t sub_20BABA33C(unint64_t a1)
{
  v40 = sub_20C13BB84();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C134F24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x12)
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x21);
    v17 = sub_20C136664();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    v18 = MEMORY[0x277D513E0];
    if (!v16)
    {
      v18 = MEMORY[0x277D513E8];
    }

    (*(v7 + 104))(v9, *v18, v6);
    v19 = v13[6];
    v20 = sub_20C132C14();
    (*(*(v20 - 8) + 56))(&v15[v19], 1, 1, v20);
    v21 = v13[8];
    v22 = sub_20C135ED4();
    (*(*(v22 - 8) + 56))(&v15[v21], 1, 1, v22);
    v23 = v13[10];
    v24 = *MEMORY[0x277D51768];
    v25 = sub_20C1352E4();
    (*(*(v25 - 8) + 104))(&v15[v23], v24, v25);
    v26 = v13[11];
    v27 = sub_20C136E94();
    (*(*(v27 - 8) + 56))(&v15[v26], 1, 1, v27);
    v28 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    sub_20BABA860(v12, v15);
    (*(v7 + 32))(&v15[v13[5]], v9, v6);
    *&v15[v13[7]] = xmmword_20C16AC20;
    v29 = &v15[v13[9]];
    *v29 = 0;
    *(v29 + 1) = 0;
    *&v15[v13[12]] = v28;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FDB4(v1, v15, Strong);
      swift_unknownObjectRelease();
    }

    sub_20BAB9800(1, 1);
    return sub_20B68D110(v15);
  }

  else
  {
    sub_20C13B534();

    v32 = sub_20C13BB74();
    v33 = sub_20C13D1D4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = a1;
      v42 = v35;
      *v34 = 136446210;

      v36 = sub_20C13C9D4();
      v38 = sub_20B51E694(v36, v37, &v42);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_20B517000, v32, v33, "Expanding text shelf action triggered for item: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x20F2F6A40](v35, -1, -1);
      MEMORY[0x20F2F6A40](v34, -1, -1);
    }

    return (*(v3 + 8))(v5, v40);
  }
}

uint64_t sub_20BABA860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_20BABA8E0@<X0>(void *a1@<X8>)
{
  v2 = *MEMORY[0x277D76938];
  v3 = objc_opt_self();
  v4 = v2;
  result = [v3 secondaryLabelColor];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v2;
  a1[3] = 0x90100000000;
  a1[4] = 0;
  a1[5] = 1;
  a1[6] = MEMORY[0x277D84FA0];
  a1[7] = result;
  return result;
}

void sub_20BABA988(uint64_t a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    if (!a2)
    {
      sub_20C1387F4();
      if (qword_27C7606D0 != -1)
      {
        swift_once();
      }

      sub_20C1387F4();
      v2 = qword_27C7606E0;
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      return;
    }

LABEL_19:
    sub_20C13DE24();
    __break(1u);
    return;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      return;
    }

    goto LABEL_19;
  }

  if (qword_27C7606C8 != -1)
  {
    swift_once();
  }

  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v2 = qword_27C7606E0;
LABEL_12:
  if (v2 != -1)
  {
    swift_once();
  }
}

uint64_t sub_20BABAB80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_20BABABD0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 2 * -a2;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_20BABAC48()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v42 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C134914();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for SessionHeartUIState(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for SessionHeartRateView.State(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_state;
  swift_beginAccess();
  sub_20BABC09C(&v1[v20], v19, type metadata accessor for SessionHeartRateView.State);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769DF8, &qword_20C16AEB0);
  if ((*(*(v21 - 8) + 48))(v19, 1, v21) == 1)
  {
    v22 = *&v1[OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_label];
    v23 = sub_20C13C914();
    [v22 setText_];

    [v1 accessibilityDidUpdateHeartRate:1 lastKnownHR:0];
    return [v1 invalidateIntrinsicContentSize];
  }

  sub_20BABC104(v19, v16);
  sub_20BABC09C(v16, v13, type metadata accessor for SessionHeartUIState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v26 = v43;
    v25 = v44;
    if (EnumCaseMultiPayload)
    {
      (*(v43 + 32))(v7, v13, v44);
      v31 = *&v1[OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_label];
      sub_20C1348A4();
      sub_20BB09168(&v45, v32);

      v39 = sub_20C13C914();

      [v31 setText_];

      [v31 setAlpha_];
      sub_20C1348A4();
      v40 = sub_20C138374();
      [v1 accessibilityDidUpdateHeartRate:0 lastKnownHR:v40];

      (*(v26 + 8))(v7, v25);
    }

    else
    {
      (*(v43 + 32))(v10, v13, v44);
      v27 = *&v1[OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_label];
      sub_20C1348A4();
      sub_20BB09168(&v45, v28);

      v37 = sub_20C13C914();

      [v27 setText_];

      [v27 setAlpha_];
      sub_20C1348A4();
      v38 = sub_20C138374();
      [v1 accessibilityDidUpdateHeartRate:1 lastKnownHR:v38];

      (*(v26 + 8))(v10, v25);
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v29 = *&v1[OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_label];
    v30 = sub_20C13C914();
    [v29 setText_];

    [v1 accessibilityDidUpdateHeartRate:1 lastKnownHR:0];
LABEL_13:
    sub_20BABC168(v16, type metadata accessor for SessionHeartUIState);
    return [v1 invalidateIntrinsicContentSize];
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_20C13B534();
    v33 = sub_20C13BB74();
    v34 = sub_20C13D1F4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_20B517000, v33, v34, "Unknown heart rate state encountered", v35, 2u);
      MEMORY[0x20F2F6A40](v35, -1, -1);
    }

    (*(v42 + 8))(v4, v2);
    return sub_20BABC168(v16, type metadata accessor for SessionHeartUIState);
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

char *sub_20BABB3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_heartView;
  v9 = [objc_allocWithZone(type metadata accessor for BeatingHeartView(0)) initWithFrame_];
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v10];
  *&v4[v8] = v9;
  v11 = OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_label;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v12 setAdjustsFontForContentSizeCategory_];
  v13 = sub_20C1380F4();
  v14 = sub_20BA6D744(v13);
  [v12 setFont_];

  v15 = [objc_opt_self() whiteColor];
  [v12 setTextColor_];

  v16 = v12;
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v17];
  type metadata accessor for UILayoutPriority(0);
  v33 = 1144750080;
  v32 = 1065353216;
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v18) = v34;
  [v16 setContentHuggingPriority:1 forAxis:v18];

  *&v4[v11] = v16;
  *&v4[OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_presenter] = a1;
  v19 = &v4[OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_metricBuilder];
  *v19 = a2;
  *(v19 + 1) = a3;
  v20 = OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_state;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769DF8, &qword_20C16AEB0);
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  v31.receiver = v4;
  v31.super_class = type metadata accessor for SessionHeartRateView(0);

  swift_unknownObjectRetain();
  v22 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v22 setClipsToBounds_];
  *(a1 + 24) = &off_2822C9070;
  swift_unknownObjectWeakAssign();
  v23 = OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_label;
  [v22 addSubview_];
  v24 = *&v22[v23];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = objc_opt_self();
  v27 = v24;
  v28 = [v26 bundleForClass_];
  sub_20C132964();

  v29 = sub_20C13C914();

  [v27 setText_];

  [v22 addSubview_];

  swift_unknownObjectRelease();
  return v22;
}

id sub_20BABB76C()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for SessionHeartRateView(0);
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_label];
  [v2 sizeToFit];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_heartView];
  [v3 sizeToFit];
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI16BeatingHeartView_beatingImage];
  if (v4)
  {
    [v4 _contentInsets];
    v6 = v5;
    v7 = [objc_opt_self() mainScreen];
    [v7 scale];
    v9 = v8;

    v10 = v6 * v9;
  }

  else
  {
    v10 = 6.0;
  }

  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_])
  {
    [v2 smu_firstLineCapFrameOriginY];
    v12 = v11 - v10;
    [v3 frame];
    [v3 setFrame_];
    [v3 frame];
    MaxX = CGRectGetMaxX(v19);
    [v2 frame];
    return [v2 setFrame_];
  }

  else
  {
    [v2 bounds];
    [v2 setFrame_];
    [v2 frame];
    v15 = CGRectGetMaxX(v20);
    [v2 smu_firstLineCapFrameOriginY];
    v17 = v16 - v10;
    [v3 frame];
    return [v3 setFrame_];
  }
}

id sub_20BABBA14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionHeartRateView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BABBB04(uint64_t a1, double a2)
{
  result = type metadata accessor for SessionHeartRateView.State(319);
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BABBBDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SessionHeartRateView.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SessionHeartUIState(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C11AFFC(a1);
  sub_20BABC09C(a1, v13, type metadata accessor for SessionHeartUIState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_5;
    }

    sub_20C13B534();
    v19 = sub_20C13BB74();
    v20 = sub_20C13D1F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20B517000, v19, v20, "Unknown heart rate state encountered", v21, 2u);
      MEMORY[0x20F2F6A40](v21, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (EnumCaseMultiPayload < 2)
    {
      v15 = sub_20C134914();
      (*(*(v15 - 8) + 8))(v13, v15);
LABEL_5:
      sub_20BABC09C(a1, v10, type metadata accessor for SessionHeartUIState);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769DF8, &qword_20C16AEB0);
      (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
      v17 = OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_state;
      swift_beginAccess();
      sub_20BABC038(v10, v2 + v17);
      swift_endAccess();
      sub_20BABAC48();
      return sub_20BABC168(v10, type metadata accessor for SessionHeartRateView.State);
    }

    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

uint64_t sub_20BABBF98(uint64_t a1)
{
  sub_20BABBFF0();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_20BABBFF0()
{
  if (!qword_281102D90[0])
  {
    v0 = type metadata accessor for SessionHeartUIState(0);
    if (!v1)
    {
      atomic_store(v0, qword_281102D90);
    }
  }
}

uint64_t sub_20BABC038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionHeartRateView.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BABC09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BABC104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionHeartUIState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BABC168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_20BABC1C8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_heartView;
  v3 = [objc_allocWithZone(type metadata accessor for BeatingHeartView(0)) initWithFrame_];
  LODWORD(v4) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v4];
  *(v1 + v2) = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI20SessionHeartRateView_label;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v6 setAdjustsFontForContentSizeCategory_];
  v7 = sub_20C1380F4();
  v8 = sub_20BA6D744(v7);
  [v6 setFont_];

  v9 = [objc_opt_self() whiteColor];
  [v6 setTextColor_];

  v10 = v6;
  LODWORD(v11) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v11];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v12) = v13;
  [v10 setContentHuggingPriority:1 forAxis:v12];

  *(v1 + v5) = v10;
  sub_20C13DE24();
  __break(1u);
}

double sub_20BABC3A0()
{
  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v0 = qword_27C799F40;
  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  result = *&qword_27C799F50;
  *&xmmword_27C769E00 = 0;
  *(&xmmword_27C769E00 + 1) = v0;
  qword_27C769E10 = 0;
  qword_27C769E18 = qword_27C799F50;
  return result;
}

char *sub_20BABC444(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &unk_281104000;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView];
  v13 = &selRef_setDescriptionTextHighlightColor_;
  v14 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  inited = &selRef_setDescriptionTextHighlightColor_;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *v12 = v14;
  *(v12 + 1) = &off_2822B63E8;
  v16 = sub_20C1380F4();
  if (v16 > 1)
  {
    if (v16 != 3)
    {
      result = sub_20C13DE24();
      __break(1u);
      return result;
    }

LABEL_6:
    type metadata accessor for EditorialCollectionContainerView();
    v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    goto LABEL_7;
  }

  if (v16)
  {
    goto LABEL_6;
  }

  if (qword_27C7608F8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v17 = type metadata accessor for EditorialCollectionContainerView();
    v65 = *&qword_27C769E10;
    v66 = xmmword_27C769E00;
    v18 = [objc_allocWithZone(v17) v13[219]];
    v19 = &v18[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_environmentInsets];
    *v19 = v66;
    *(v19 + 1) = v65;
    v19[32] = 0;
LABEL_7:
    [v18 *(inited + 2560)];
    *&v4[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_containerView] = v18;
    v20 = *MEMORY[0x277CDA138];
    v21 = _UISolariumEnabled();
    v22 = 4.0;
    if (v21)
    {
      v22 = 16.0;
    }

    v23 = &v4[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_layout];
    *v23 = 0x3FE5555555555555;
    *(v23 + 1) = v20;
    *(v23 + 2) = v22;
    v24 = type metadata accessor for EditorialCollectionBrickRowCell(0);
    v71.receiver = v4;
    v71.super_class = v24;
    v25 = objc_msgSendSuper2(&v71, v13[219], a1, a2, a3, a4);
    v26 = v11[323];
    v27 = *&v25[v26];
    v28 = v25;
    v29 = [v27 layer];
    v30 = &v28[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_layout];
    [v29 setCornerCurve_];

    v31 = [*&v25[v26] layer];
    [v31 setCornerRadius_];

    v32 = [v28 contentView];
    v13 = &selRef_setDescriptionTextHighlightColor_;
    [v32 addSubview_];

    v33 = OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_containerView;
    v34 = *&v28[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_containerView];
    v35 = *&v25[v26];
    v36 = *&v34[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_recencyIconView];
    v37 = *(v36 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView);
    *(v36 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView) = v35;
    v38 = v34;
    v39 = v35;

    v11 = [v28 contentView];
    [v11 addSubview_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C151490;
    v40 = *&v25[v26];
    *(inited + 32) = v40;
    v67 = v33;
    v41 = *&v28[v33];
    *(inited + 40) = v41;
    v70 = MEMORY[0x277D84F90];
    v42 = v40;
    v43 = v41;
    sub_20BB5E668(0, 2, 0);
    v4 = v70;
    if ((inited & 0xC000000000000001) != 0)
    {
      v44 = v30;
      v45 = MEMORY[0x20F2F5430](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v44 = v30;
      v45 = *(inited + 32);
    }

    v46 = v45;
    v68 = v45;
    v11 = 0;
    sub_20BABCB40(&v68, v28, &v69);

    v13 = v69;
    v48 = *(v4 + 2);
    v47 = *(v4 + 3);
    if (v48 >= v47 >> 1)
    {
      sub_20BB5E668((v47 > 1), v48 + 1, 1);
      v4 = v70;
    }

    *(v4 + 2) = v48 + 1;
    *&v4[8 * v48 + 32] = v13;
    if ((inited & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x20F2F5430](1, inited);
      goto LABEL_19;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v49 = *(inited + 40);
LABEL_19:
  v50 = v49;
  v68 = v49;
  sub_20BABCB40(&v68, v28, &v69);

  v51 = v69;
  v70 = v4;
  v53 = *(v4 + 2);
  v52 = *(v4 + 3);
  if (v53 >= v52 >> 1)
  {
    sub_20BB5E668((v52 > 1), v53 + 1, 1);
    v4 = v70;
  }

  *(v4 + 2) = v53 + 1;
  *&v4[8 * v53 + 32] = v51;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_20B853E04(v4);
  v55 = v54;

  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_20C14F580;
  v57 = [*&v28[v67] heightAnchor];
  v58 = [v28 contentView];

  v59 = [v58 widthAnchor];
  v60 = [v57 constraintEqualToAnchor:v59 multiplier:*v44];

  type metadata accessor for UILayoutPriority(0);
  LODWORD(v69) = 1148846080;
  LODWORD(v68) = 1065353216;
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v61) = v70;
  [v60 setPriority_];
  *(v56 + 32) = v60;
  v62 = objc_opt_self();
  v70 = v55;
  sub_20B8D9310(v56);
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v63 = sub_20C13CC54();

  [v62 activateConstraints_];

  return v28;
}

void sub_20BABCB40(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20C14FE90;
  v7 = [v5 leadingAnchor];
  v8 = [a2 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v6 + 32) = v10;
  v11 = [v5 trailingAnchor];
  v12 = [a2 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v6 + 40) = v14;
  v15 = [v5 topAnchor];
  v16 = [a2 contentView];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v6 + 48) = v18;
  v19 = [v5 bottomAnchor];
  v20 = [a2 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v6 + 56) = v22;
  *a3 = v6;
}

id sub_20BABCF90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialCollectionBrickRowCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EditorialCollectionBrickRowCell(uint64_t a1)
{
  result = qword_281100920;
  if (!qword_281100920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BABD0AC(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BABD178(uint64_t a1)
{
  v2 = sub_20C13C4C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView + 8);
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView);

    ObjectType = swift_getObjectType();
    v11 = (*(v7 + 112))(ObjectType, v7);

    if (v11)
    {
      (*(v3 + 104))(v5, *MEMORY[0x277D851C0], v2);

      sub_20BD519D8(v11, v5, sub_20BABEC54, a1);

      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_20BABD318(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_containerView);

    v6 = *&v5[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_recencyIconView];
    [*&v6[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView] setImage_];
    [v6 setNeedsLayout];
  }
}

double sub_20BABD3C4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BABD410@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BABD468(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BABD4E8(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v209 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v191 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v189 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v190 = &v163 - v8;
  v188 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v163 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v163 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v202 = *(v16 - 8);
  v203 = v16;
  v17 = *(v202 + 64);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v201 = &v163 - v19;
  v196 = sub_20C1391C4();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v197 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_20C138A64();
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v200 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v22 - 8);
  v194 = &v163 - v23;
  v24 = sub_20C13C554();
  v207 = *(v24 - 8);
  v208 = v24;
  MEMORY[0x28223BE20](v24);
  v206 = (&v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v213 = sub_20C137C24();
  v215 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v210 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v26;
  MEMORY[0x28223BE20](v27);
  v214 = &v163 - v28;
  v29 = sub_20C136CD4();
  v205 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v212 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134E44();
  MEMORY[0x28223BE20](v31 - 8);
  v211 = &v163 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134014();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x20)
  {
    v176 = v15;
    v173 = v17;
    v174 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v185 = v29;
    v175 = v12;
    v37 = v1;
    v38 = v35;
    v39 = &v163 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
    v41 = swift_projectBox();
    v42 = v41 + *(v40 + 64);
    v43 = *v42;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    v46 = *(v42 + 24);
    v48 = *(v42 + 32);
    v47 = *(v42 + 40);
    v186 = v34;
    v49 = *(v34 + 16);
    v187 = v38;
    v50 = v37;
    v49(v39, v41, v38);
    v182 = v43;
    v179 = v44;
    v51 = v45;
    v183 = v46;

    v181 = v48;

    v180 = v47;

    v52 = v211;
    v184 = v39;
    sub_20C133F04();
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_retain_n();
    v178 = sub_20C138054();
    v209 = v54;
    v55 = v212;
    sub_20C134E34();
    v56 = v214;
    sub_20C136CB4();
    v177 = sub_20C136CC4();
    v193 = v57;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v58 = sub_20C13D374();
    v60 = v206;
    v59 = v207;
    *v206 = v58;
    v61 = v208;
    (*(v59 + 13))(v60, *MEMORY[0x277D85200], v208);
    LOBYTE(v39) = sub_20C13C584();
    result = (*(v59 + 1))(v60, v61);
    if (v39)
    {
      v63 = v56;
      v64 = v55;
      v208 = v53;
      v66 = *&v50[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView];
      v65 = *&v50[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v66 setContentMode_];
      if (sub_20BA66C54())
      {
        v206 = v51;
        v68 = swift_allocObject();
        v207 = v50;
        swift_unknownObjectWeakInit();
        v69 = v215;
        v70 = *(v215 + 16);
        v71 = v213;
        v169 = v215 + 16;
        v167 = v70;
        v70(v210, v63, v213);
        v72 = *(v69 + 80);
        v73 = (v72 + 24) & ~v72;
        v164 = v204 + 7;
        v74 = (v204 + 7 + v73) & 0xFFFFFFFFFFFFFFF8;
        v171 = v65;
        v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
        v76 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
        v170 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
        v168 = v72;
        v77 = swift_allocObject();
        v172 = ObjectType;
        v78 = v77;
        *(v77 + 16) = v68;
        v79 = *(v69 + 32);
        v166 = v69 + 32;
        v165 = v79;
        v79(v77 + v73, v210, v71);
        v80 = (v78 + v74);
        v81 = v193;
        *v80 = v177;
        v80[1] = v81;
        v82 = (v78 + v75);
        v83 = v208;
        v84 = v209;
        *v82 = v178;
        v82[1] = v84;
        *(v78 + v76) = 2;
        v85 = v78 + v170;
        *v85 = MEMORY[0x277D84F90];
        *(v85 + 8) = 0;
        v86 = (v78 + ((v76 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v86 = sub_20BABEA04;
        v86[1] = v83;
        v87 = v171;
        v88 = *(v171 + 152);

        v89 = v172;
        v88(sub_20BABEA0C, v78, v172, v87);

        [v66 bounds];
        if (v90 <= 0.0 || (v92 = v91, v91 <= 0.0))
        {

          v51 = v206;
          v116 = v213;
          v63 = v214;
          v117 = v185;
          v52 = v211;
          v64 = v212;
          v130 = v182;
          v129 = v179;
        }

        else
        {
          v93 = v90;
          v94 = v66;
          v170 = ~v168;
          (*(v87 + 120))(0, v89, v87);
          v95 = v194;
          v96 = v213;
          v97 = v214;
          v98 = v167;
          v167(v194, v214, v213);
          v99 = v98;
          (*(v215 + 56))(v95, 0, 1, v96);
          (*(v87 + 16))(v95, v89, v87);
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v100 = sub_20C13D5A4();
          [v94 setBackgroundColor_];

          v101 = v96;
          (*(v87 + 176))(COERCE_DOUBLE(*&v93), COERCE_DOUBLE(*&v92), 0, v89, v87);
          v102 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v103 = v210;
          v99(v210, v97, v96);
          v104 = (v168 + 16) & v170;
          v105 = (v164 + v104) & 0xFFFFFFFFFFFFFFF8;
          v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
          v107 = swift_allocObject();
          v165(v107 + v104, v103, v101);
          *(v107 + v105) = v102;
          v63 = v97;
          v108 = (v107 + v106);
          *v108 = v93;
          v108[1] = v92;
          v194 = v107;
          v109 = (v107 + ((v106 + 23) & 0xFFFFFFFFFFFFFFF8));
          v110 = v208;
          *v109 = sub_20BABEA04;
          v109[1] = v110;
          v111 = v101;
          v167(v103, v63, v101);
          (*(v195 + 104))(v197, *MEMORY[0x277D542A8], v196);

          v112 = v200;
          sub_20C138A54();
          v113 = v176;
          sub_20B5F1E60(v112, v176);
          v115 = v202;
          v114 = v203;
          if ((*(v202 + 48))(v113, 1, v203) == 1)
          {
            sub_20B520158(v113, &unk_27C766670, &unk_20C151580);
            sub_20BA1DB54();
            sub_20BABD178(v110);

            (*(v198 + 8))(v112, v199);
            v116 = v101;
            v117 = v185;
            v64 = v212;
          }

          else
          {
            v131 = v103;
            v197 = *(v115 + 32);
            (v197)(v201, v113, v114);
            v132 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v167(v131, v63, v111);
            v133 = (v168 + 40) & v170;
            v134 = v133 + v204;
            v135 = (v133 + v204) & 0xFFFFFFFFFFFFFFF8;
            v136 = swift_allocObject();
            *(v136 + 2) = v132;
            v136[3] = v93;
            v136[4] = v92;
            v165(v136 + v133, v131, v111);
            *(v136 + v134) = 0;
            v137 = v136 + v135;
            *(v137 + 1) = sub_20BABEA04;
            *(v137 + 2) = v110;
            v138 = swift_allocObject();
            *(v138 + 16) = sub_20BABEBA0;
            *(v138 + 24) = v136;
            v139 = v202;
            v140 = v174;
            v141 = v203;
            (*(v202 + 16))(v174, v201, v203);
            v142 = v139;
            v143 = (*(v139 + 80) + 16) & ~*(v139 + 80);
            v144 = (v173 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
            v145 = swift_allocObject();
            (v197)(v145 + v143, v140, v141);
            v146 = (v145 + v144);
            *v146 = sub_20B5F67A4;
            v146[1] = v138;

            v147 = v190;
            sub_20C137C94();
            v148 = swift_allocObject();
            v149 = v194;
            *(v148 + 16) = sub_20BABEAE4;
            *(v148 + 24) = v149;
            v150 = swift_allocObject();
            *(v150 + 16) = sub_20B5F67D4;
            *(v150 + 24) = v148;
            v151 = v191;
            v152 = v189;
            v153 = v192;
            (*(v191 + 16))(v189, v147, v192);
            v154 = (*(v151 + 80) + 16) & ~*(v151 + 80);
            v155 = (v188 + v154 + 7) & 0xFFFFFFFFFFFFFFF8;
            v156 = swift_allocObject();
            (*(v151 + 32))(v156 + v154, v152, v153);
            v157 = (v156 + v155);
            *v157 = sub_20B5DF204;
            v157[1] = v150;

            v158 = v175;
            sub_20C137C94();
            v159 = *(v151 + 8);
            v159(v147, v153);
            v160 = sub_20C137CB4();
            v161 = swift_allocObject();
            *(v161 + 16) = 0;
            *(v161 + 24) = 0;
            v160(sub_20B52347C, v161);
            v63 = v214;

            v159(v158, v153);
            (*(v142 + 8))(v201, v203);
            (*(v198 + 8))(v200, v199);
            v64 = v212;
            v116 = v213;
            v117 = v185;
          }

          v52 = v211;
          v130 = v182;
          v129 = v179;
          v51 = v206;
        }
      }

      else
      {

        v116 = v213;
        v117 = v185;
        v129 = v179;
        v130 = v182;
      }

      (*(v215 + 8))(v63, v116);
      (*(v205 + 8))(v64, v117);

      sub_20B62A2AC(v52);

      v162 = v184;
      sub_20B9008E8(v184, v130, v51);

      return (*(v186 + 8))(v162, v187);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v118 = v1;
    v119 = sub_20C13BB74();
    v120 = sub_20C13D1D4();

    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v216 = a1;
      v217 = v123;
      *v121 = 138543618;
      *(v121 + 4) = v118;
      *v122 = v118;
      *(v121 + 12) = 2082;
      v124 = sub_20B5F66D0();
      v125 = v118;
      v126 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v124);
      v128 = sub_20B51E694(v126, v127, &v217);

      *(v121 + 14) = v128;
      _os_log_impl(&dword_20B517000, v119, v120, "Attempted to configure %{public}@ with item: %{public}s", v121, 0x16u);
      sub_20B520158(v122, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v122, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x20F2F6A40](v123, -1, -1);
      MEMORY[0x20F2F6A40](v121, -1, -1);
    }

    return (*(v209 + 8))(v5, v3);
  }

  return result;
}

void sub_20BABEA0C()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA5C784(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BABEAE4(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63910(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BABEBA0(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F314C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

void sub_20BABEC5C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView);
  v4 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *v3 = v4;
  v3[1] = &off_2822B63E8;
  v5 = sub_20C1380F4();
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      goto LABEL_11;
    }
  }

  else if (!v5)
  {
    if (qword_27C7608F8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for EditorialCollectionContainerView();
    v13 = *&qword_27C769E10;
    v14 = xmmword_27C769E00;
    v7 = [objc_allocWithZone(v6) initWithFrame_];
    v8 = &v7[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_environmentInsets];
    *v8 = v14;
    *(v8 + 1) = v13;
    v8[32] = 0;
    goto LABEL_8;
  }

  type metadata accessor for EditorialCollectionContainerView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_8:
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_containerView) = v7;
  v9 = *MEMORY[0x277CDA138];
  v10 = _UISolariumEnabled();
  v11 = 4.0;
  if (v10)
  {
    v11 = 16.0;
  }

  v12 = v0 + OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_layout;
  *v12 = 0x3FE5555555555555;
  *(v12 + 8) = v9;
  *(v12 + 16) = v11;
  while (1)
  {
LABEL_11:
    sub_20C13DE24();
    __break(1u);
  }
}

uint64_t sub_20BABEED8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BABEF20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_20BABF064()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F18, &unk_20C16B190);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for ActionLoadingButton();
  v21.receiver = v0;
  v21.super_class = v13;
  objc_msgSendSuper2(&v21, sel_intrinsicContentSize);
  v15 = v14;
  sub_20C13D884();
  v16 = sub_20C13D874();
  v17 = *(*(v16 - 8) + 48);
  if (v17(v6, 1, v16))
  {
    sub_20B520158(v6, &qword_27C764C60, &unk_20C156F50);
    v18 = sub_20C132924();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  }

  else
  {
    sub_20C13D6F4();
    sub_20B520158(v6, &qword_27C764C60, &unk_20C156F50);
  }

  sub_20BAC1DF0(v12, v15 + -32.0);
  sub_20B520158(v12, &qword_27C764F18, &unk_20C16B190);
  sub_20C13D884();
  if (v17(v3, 1, v16))
  {
    sub_20B520158(v3, &qword_27C764C60, &unk_20C156F50);
    v19 = sub_20C132924();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  }

  else
  {
    sub_20C13D734();
    sub_20B520158(v3, &qword_27C764C60, &unk_20C156F50);
  }

  sub_20BAC1DF0(v9, v15 + -32.0);
  sub_20B520158(v9, &qword_27C764F18, &unk_20C16B190);
  return v15;
}

char *sub_20BABF3BC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_currentState];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  v11 = OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_indefiniteSpinner;
  v12 = objc_allocWithZone(type metadata accessor for IndefiniteSpinnerView());
  v13 = sub_20B7F1EE8(2.0);
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v11] = v13;
  v14 = &v5[OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_layout];
  *v14 = xmmword_20C16AFE0;
  *(v14 + 1) = xmmword_20C16AFF0;
  *(v14 + 2) = xmmword_20C16B000;
  v15 = &v5[OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_defaults];
  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v17 = [objc_opt_self() systemBackgroundColor];
  *v15 = v16;
  *(v15 + 1) = v17;
  *&v5[OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_baseForegroundColor] = 0;
  v29.receiver = v5;
  v29.super_class = type metadata accessor for ActionLoadingButton();
  v18 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v19 = &v18[OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_defaults];
  v20 = *&v18[OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_defaults];
  v21 = v18;
  [v21 setTintColor_];
  v22 = *(v19 + 1);
  v23 = *&v21[OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_baseForegroundColor];
  *&v21[OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_baseForegroundColor] = v22;
  v24 = v22;

  sub_20BAC0D5C();
  sub_20BAC1198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766578, &qword_20C15C968);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20C14F980;
  v26 = sub_20C13C054();
  v27 = MEMORY[0x277D74DB8];
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  sub_20C13D584();

  swift_unknownObjectRelease();

  return v21;
}

id sub_20BABF65C()
{
  v21[4] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for ActionLoadingButton();
  v20.receiver = v0;
  v20.super_class = v10;
  objc_msgSendSuper2(&v20, sel_tintColorDidChange);
  if ([v0 tintAdjustmentMode] != 2)
  {
    sub_20C13D884();
    v13 = sub_20C13D874();
    if ((*(*(v13 - 8) + 48))(v3, 1, v13))
    {
      sub_20B52F9E8(v3, v6, &qword_27C764C60, &unk_20C156F50);
      sub_20C13D894();
      v12 = v3;
      return sub_20B520158(v12, &qword_27C764C60, &unk_20C156F50);
    }

    v17 = [v0 tintColor];
    v18 = sub_20C13D634();
    sub_20C13BCD4();
    v18(v21, 0);
    return sub_20C13D894();
  }

  sub_20C13D884();
  v11 = sub_20C13D874();
  if ((*(*(v11 - 8) + 48))(v9, 1, v11))
  {
    sub_20B52F9E8(v9, v6, &qword_27C764C60, &unk_20C156F50);
    sub_20C13D894();
    v12 = v9;
    return sub_20B520158(v12, &qword_27C764C60, &unk_20C156F50);
  }

  result = [v0 tintColor];
  if (result)
  {
    v15 = result;
    v21[0] = 0.0;
    v19 = 0.0;
    [result getWhite:v21 alpha:&v19];
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v21[0] alpha:v19 * 0.8];

    v16 = sub_20C13D634();
    sub_20C13BCD4();
    v16(v21, 0);
    return sub_20C13D894();
  }

  __break(1u);
  return result;
}

uint64_t sub_20BABF9FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F20, &unk_20C157D00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = sub_20C13D874();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActionLoadingButton();
  v18.receiver = v0;
  v18.super_class = v14;
  objc_msgSendSuper2(&v18, sel_updateConfiguration);
  sub_20C13D884();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20B520158(v9, &qword_27C764C60, &unk_20C156F50);
  }

  (*(v11 + 32))(v13, v9, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20C13C074();
  v16 = sub_20C13C064();
  v17 = *(*(v16 - 8) + 56);
  v17(v3, 0, 1, v16);
  sub_20C13D7B4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20C13C074();
  v17(v3, 0, 1, v16);
  sub_20C13D7C4();
  (*(v11 + 16))(v6, v13, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_20C13D894();
  return (*(v11 + 8))(v13, v10);
}

double sub_20BABFD64@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_20C1329B4();
  (*(*(v5 - 8) + 16))(a3, a1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_baseForegroundColor);
    v8 = Strong;
    v9 = v7;
  }

  else
  {
    v7 = 0;
  }

  v12[4] = v7;
  sub_20C132864();
  sub_20BAC1DA8(&qword_27C7664B0, MEMORY[0x277D74A38], MEMORY[0x277D74A30]);
  v10 = sub_20C132974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7664B8, &unk_20C1669B0);
  sub_20B81F8C0();
  sub_20C132A74();
  v10(v12, 0);

  return result;
}

uint64_t sub_20BABFFB8(uint64_t a1, uint64_t a2, void (*a3)(double), void (*a4)(char *), void (*a5)(void, void))
{
  v36 = a5;
  v37 = a4;
  v38 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F18, &unk_20C16B190);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = sub_20C1329B4();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_20C132924();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    (v38)(v25, 1.0);
    sub_20C132934();
    sub_20C13D884();
    v26 = sub_20C13D874();
    if (!(*(*(v26 - 8) + 48))(v19, 1, v26))
    {
      v30 = v35;
      (*(v22 + 16))(v35, v24, v21);
      (*(v22 + 56))(v30, 0, 1, v21);
      v37(v30);
      sub_20C13D894();
      return (*(v22 + 8))(v24, v21);
    }

    sub_20B52F9E8(v19, v16, &qword_27C764C60, &unk_20C156F50);
    sub_20C13D894();
    (*(v22 + 8))(v24, v21);
    v27 = v19;
  }

  else
  {
    sub_20C13D884();
    v28 = sub_20C13D874();
    v29 = *(*(v28 - 8) + 48);
    if (v29(v13, 1, v28))
    {
      sub_20B52F9E8(v13, v16, &qword_27C764C60, &unk_20C156F50);
      sub_20C13D894();
      sub_20B520158(v13, &qword_27C764C60, &unk_20C156F50);
    }

    else
    {
      v32 = v35;
      (*(v22 + 56))(v35, 1, 1, v21);
      v37(v32);
      sub_20C13D894();
    }

    v33 = v36;
    sub_20C13D884();
    if (!v29(v10, 1, v28))
    {
      v33(0, 0);
      return sub_20C13D894();
    }

    sub_20B52F9E8(v10, v16, &qword_27C764C60, &unk_20C156F50);
    sub_20C13D894();
    v27 = v10;
  }

  return sub_20B520158(v27, &qword_27C764C60, &unk_20C156F50);
}

uint64_t sub_20BAC0500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v27 = a1;
  v4 = v3;
  v29 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769E50, &qword_20C16B090);
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769E58, &qword_20C16B098);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = sub_20C1329B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_20C1329A4();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_20B81F8C0();
  sub_20C132984();

  v18 = *(v12 + 8);
  v18(v14, v11);
  v19 = [*(v4 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_defaults + 8) colorWithAlphaComponent_];
  v32 = v19;
  sub_20C132994();

  (*(v8 + 8))(v10, v7);
  v30 = swift_getKeyPath();
  swift_getKeyPath();
  sub_20B81F86C();
  v20 = v25;
  sub_20C132984();

  v18(v17, v11);
  v21 = sub_20BAC0864(*v27);
  v32 = v21;
  v22 = v26;
  sub_20C132994();

  return (*(v28 + 8))(v20, v22);
}

id sub_20BAC0864(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [v2 maximumContentSizeCategory];
  if (v6)
  {
    v7 = v6;
    v8 = sub_20C13D434();
    if (v8)
    {
      v9 = v5;
    }

    else
    {
      v9 = v7;
    }

    if (v8)
    {
      v5 = v7;
    }
  }

  v10 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v11 = [objc_opt_self() preferredFontForTextStyle:a1 compatibleWithTraitCollection:v10];

  return v11;
}

id sub_20BAC096C()
{
  v1 = v0;
  v2 = sub_20C1329B4();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  sub_20C13D884();
  v13 = sub_20C13D874();
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13))
  {
    goto LABEL_4;
  }

  v15 = sub_20C13D6E4();
  v17 = v16;
  v18 = sub_20C132924();
  if ((*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v15(v30, 0);
LABEL_4:
    sub_20B52F9E8(v12, v9, &qword_27C764C60, &unk_20C156F50);
    sub_20C13D894();
    sub_20B520158(v12, &qword_27C764C60, &unk_20C156F50);
    goto LABEL_5;
  }

  v24 = v27;
  v26 = v15;
  sub_20BAC048C(v27, 1.0);
  sub_20C132884();
  (*(v28 + 8))(v24, v29);
  v26(v30, 0);
  sub_20C13D894();
LABEL_5:
  sub_20C13D884();
  if (!v14(v6, 1, v13))
  {
    v19 = sub_20C13D724();
    v21 = v20;
    v22 = sub_20C132924();
    if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
    {
      v25 = v27;
      sub_20BAC04F4(v27, 1.0);
      sub_20C132884();
      (*(v28 + 8))(v25, v29);
      v19(v30, 0);
      sub_20C13D894();
      return [v1 invalidateIntrinsicContentSize];
    }

    v19(v30, 0);
  }

  sub_20B52F9E8(v6, v9, &qword_27C764C60, &unk_20C156F50);
  sub_20C13D894();
  sub_20B520158(v6, &qword_27C764C60, &unk_20C156F50);
  return [v1 invalidateIntrinsicContentSize];
}

uint64_t sub_20BAC0D5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v31 = sub_20C13D6C4();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13D664();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13D874();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13D834();
  (*(v9 + 104))(v11, *MEMORY[0x277D74FC0], v8);
  sub_20C13D674();
  v16 = sub_20C13D634();
  sub_20C13BCB4();
  v16(v32, 0);
  sub_20C13D6B4();
  (*(v5 + 104))(v7, *MEMORY[0x277D74FF0], v31);
  sub_20C13D6D4();
  sub_20C13D694();
  (*(v13 + 16))(v4, v15, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  sub_20C13D894();
  v17 = [v1 titleLabel];
  if (v17)
  {
    v18 = v17;
    [v17 setAdjustsFontForContentSizeCategory_];
  }

  v19 = [v1 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 setNumberOfLines_];
  }

  v21 = [v1 subtitleLabel];
  if (v21)
  {
    v22 = v21;
    [v21 setAdjustsFontForContentSizeCategory_];
  }

  v23 = [v1 subtitleLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setNumberOfLines_];
  }

  v25 = [v1 titleLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setTextAlignment_];
  }

  v27 = [v1 subtitleLabel];
  if (v27)
  {
    v28 = v27;
    [v27 setTextAlignment_];
  }

  return (*(v13 + 8))(v15, v12);
}

void sub_20BAC1198()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_indefiniteSpinner];
  [v2 setTintColor_];
  [v0 addSubview_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C150050;
  v5 = [v0 heightAnchor];
  v6 = [v5 constraintGreaterThanOrEqualToConstant_];

  type metadata accessor for UILayoutPriority(0);
  sub_20BAC1DA8(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  sub_20C13BBA4();
  LODWORD(v7) = v20;
  [v6 setPriority_];
  *(v4 + 32) = v6;
  v8 = [v2 centerXAnchor];
  v9 = [v1 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v2 widthAnchor];
  v12 = [v2 heightAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v2 centerYAnchor];
  v15 = [v1 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  v17 = [v2 heightAnchor];
  v18 = [v17 constraintEqualToConstant_];

  *(v4 + 64) = v18;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v19 = sub_20C13CC54();

  [v3 activateConstraints_];
}

id sub_20BAC14B8()
{
  v1 = v0;
  v2 = sub_20C1329B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60, &unk_20C156F50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = [v0 buttonType];
  if ([v1 isHighlighted])
  {
    v17 = 0.8;
  }

  else
  {
    v17 = 1.0;
  }

  if (!v16)
  {

    return [v1 setAlpha_];
  }

  v32 = v5;
  v33 = v3;
  v34 = v2;
  sub_20C13D884();
  v18 = sub_20C13D874();
  v19 = *(*(v18 - 8) + 48);
  if (!v19(v15, 1, v18))
  {
    v20 = sub_20C13D6E4();
    v22 = v21;
    v23 = sub_20C132924();
    if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
    {
      v29 = v32;
      v31 = v20;
      sub_20BAC048C(v32, v17);
      sub_20C132884();
      (*(v33 + 8))(v29, v34);
      v31(v35, 0);
      sub_20C13D894();
      goto LABEL_9;
    }

    v20(v35, 0);
  }

  sub_20B52F9E8(v15, v11, &qword_27C764C60, &unk_20C156F50);
  sub_20C13D894();
  sub_20B520158(v15, &qword_27C764C60, &unk_20C156F50);
LABEL_9:
  sub_20C13D884();
  if (v19(v8, 1, v18))
  {
LABEL_12:
    sub_20B52F9E8(v8, v11, &qword_27C764C60, &unk_20C156F50);
    sub_20C13D894();
    return sub_20B520158(v8, &qword_27C764C60, &unk_20C156F50);
  }

  v24 = sub_20C13D724();
  v26 = v25;
  v27 = sub_20C132924();
  if ((*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    v24(v35, 0);
    goto LABEL_12;
  }

  v30 = v32;
  sub_20BAC04F4(v32, v17);
  sub_20C132884();
  (*(v33 + 8))(v30, v34);
  v24(v35, 0);
  return sub_20C13D894();
}

id sub_20BAC192C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ActionLoadingButton();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_20BAC1A24(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_currentState);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_currentState);
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_currentState + 8);
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_currentState + 16);
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_currentState + 24);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_currentState + 32);
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_currentState + 40);
  if (v5 == 1)
  {
    if (a1[1] == 1)
    {
      sub_20B7F2560();
      return;
    }

    goto LABEL_5;
  }

  v10 = a1[1];
  if (v10 == 1)
  {
    goto LABEL_5;
  }

  v22 = a1[2];
  v23 = a1[3];
  v25 = a1[4];
  v24 = a1[5];
  if (v5)
  {
    if (!v10)
    {
      goto LABEL_5;
    }

    if (v4 != *a1 || v5 != v10)
    {
      v33 = a1[4];
      v34 = a1[5];
      v32 = a1[2];
      v27 = sub_20C13DFF4();
      v22 = v32;
      v25 = v33;
      v24 = v34;
      if ((v27 & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_5;
  }

  if (v7)
  {
    if (!v23)
    {
      goto LABEL_5;
    }

    if (v6 != v22 || v7 != v23)
    {
      v35 = v24;
      v29 = v25;
      v30 = sub_20C13DFF4();
      v25 = v29;
      v24 = v35;
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else if (v23)
  {
    goto LABEL_5;
  }

  if (!v9)
  {
    if (!v24)
    {
      return;
    }

    goto LABEL_5;
  }

  if (!v24 || (v8 == v25 ? (v31 = v9 == v24) : (v31 = 0), !v31 && (sub_20C13DFF4() & 1) == 0))
  {
LABEL_5:
    v11 = *(a1 + 1);
    *v3 = *a1;
    v3[1] = v11;
    v3[2] = *(a1 + 2);
    sub_20BAC1C94(a1, v36);
    v12 = sub_20BAC1CF0(v4, v5);
    v13 = a1[1];
    if (v13 == 1)
    {
      sub_20B7F2560();
      sub_20BABFF38(0, 0);
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v17 = a1[2];
      v16 = a1[3];
      v18 = *a1;
      v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_indefiniteSpinner);
      v19[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_isAnimating] = 0;
      [v19 setHidden_];
      v20 = *&v19[OBJC_IVAR____TtC9SeymourUI21IndefiniteSpinnerView_spinnerLayer];
      v21 = sub_20C13C914();
      [v20 removeAnimationForKey_];

      sub_20BABFF38(v18, v13);
      v14 = v17;
      v15 = v16;
    }

    sub_20BABFF78(v14, v15);
  }
}

double sub_20BAC1CF0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_20BAC1DA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BAC1DF0(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F18, &unk_20C16B190);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_20C132924();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  sub_20B52F9E8(a1, v6, &qword_27C764F18, &unk_20C16B190);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_20B520158(v6, &qword_27C764F18, &unk_20C16B190);
  }

  (*(v8 + 32))(v13, v6, v7);
  sub_20B51C88C(0, &qword_281100520, 0x277CCA898);
  (*(v8 + 16))(v10, v13, v7);
  v15 = sub_20C13D3C4();
  [v15 boundingRectWithSize:1 options:0 context:{a2, 1.79769313e308}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v25.origin.x = v17;
  v25.origin.y = v19;
  v25.size.width = v21;
  v25.size.height = v23;
  CGRectGetHeight(v25);
  return (*(v8 + 8))(v13, v7);
}

void sub_20BAC2058()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_currentState);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v3 = OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_indefiniteSpinner;
  v4 = objc_allocWithZone(type metadata accessor for IndefiniteSpinnerView());
  v5 = sub_20B7F1EE8(2.0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v3) = v5;
  v6 = (v1 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_layout);
  *v6 = xmmword_20C16AFE0;
  v6[1] = xmmword_20C16AFF0;
  v6[2] = xmmword_20C16B000;
  v7 = (v1 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_defaults);
  v8 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v9 = [objc_opt_self() systemBackgroundColor];
  *v7 = v8;
  v7[1] = v9;
  *(v1 + OBJC_IVAR____TtC9SeymourUI19ActionLoadingButton_baseForegroundColor) = 0;
  sub_20C13DE24();
  __break(1u);
}

BOOL WorkoutPlanScheduleEditableItem.hasScheduledItem.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  sub_20B7C645C(v0 + *(v4 + 24), v3);
  v5 = sub_20C136864();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_20BAC227C(v3);
  return v6;
}

uint64_t sub_20BAC227C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20BAC247C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NoIntrinsicImageView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_20BAC24D4()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v52 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v56 = *(v58 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v59 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v57 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v16 = sub_20C137C24();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_display;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v54 = v11;
    v21 = *(v20 + 8);
    ObjectType = swift_getObjectType();
    (*(v21 + 16))(ObjectType, v21);
    swift_unknownObjectRelease();
    sub_20C1344C4();
    sub_20C138D44();
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      v53 = v17;
      (*(v17 + 32))(v19, v15, v16);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_artworkImageLoader), *(v1 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_artworkImageLoader + 24));
      v38 = v10;
      v52 = v10;
      sub_20C138B14();
      v39 = swift_allocObject();
      swift_weakInit();
      v40 = swift_allocObject();
      *(v40 + 16) = sub_20BAC2FA4;
      *(v40 + 24) = v39;
      v41 = v55;
      v42 = v56;
      v43 = v58;
      (*(v56 + 16))(v55, v38, v58);
      v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v45 = swift_allocObject();
      (*(v42 + 32))(v45 + v44, v41, v43);
      v46 = (v45 + ((v7 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v46 = sub_20BAC2FC0;
      v46[1] = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
      v47 = v57;
      sub_20C137C94();
      (*(v42 + 8))(v52, v43);
      v48 = v54;
      v49 = sub_20C137CB4();
      v50 = swift_allocObject();
      *(v50 + 16) = 0;
      *(v50 + 24) = 0;
      v49(sub_20B52347C, v50);

      (*(v59 + 8))(v47, v48);
      v31 = *(v53 + 8);
      v32 = v19;
      v37 = v16;
      return v31(v32, v37);
    }

    sub_20B91BC2C(v15);
    v23 = v60;
    sub_20C13B534();

    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v63 = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_20B51E694(0xD00000000000001CLL, 0x800000020C1A6490, &v63);
      *(v26 + 12) = 2082;
      sub_20BAC2F4C();
      v28 = sub_20C13DFA4();
      v30 = sub_20B51E694(v28, v29, &v63);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_20B517000, v24, v25, "%{public}s unable to find artwork for %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v27, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    v31 = *(v61 + 8);
    v32 = v23;
  }

  else
  {
    sub_20C13B534();
    v33 = sub_20C13BB74();
    v34 = sub_20C13D1D4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v63 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_20B51E694(0xD00000000000001CLL, 0x800000020C1A6490, &v63);
      _os_log_impl(&dword_20B517000, v33, v34, "%{public}s couldn't get background image size to fetch artwork", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x20F2F6A40](v36, -1, -1);
      MEMORY[0x20F2F6A40](v35, -1, -1);
    }

    v31 = *(v61 + 8);
    v32 = v4;
  }

  v37 = v62;
  return v31(v32, v37);
}

void sub_20BAC2CAC(uint64_t *a1@<X0>, char *a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v6 = Strong + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_display, v7 = swift_unknownObjectWeakLoadStrong(), v8 = *(v6 + 8), , v7))
  {
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v4, ObjectType, v8);
    swift_unknownObjectRelease();
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  *a3 = v10;
}

uint64_t sub_20BAC2D84()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_catalogWorkout;
  v2 = sub_20C1344C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_artworkImageLoader));
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_display);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionBackgroundPresenter(uint64_t a1)
{
  result = qword_27C769E70;
  if (!qword_27C769E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BAC2E9C(uint64_t a1)
{
  result = sub_20C1344C4();
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

unint64_t sub_20BAC2F4C()
{
  result = qword_27C769BF0;
  if (!qword_27C769BF0)
  {
    sub_20C1344C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769BF0);
  }

  return result;
}

uint64_t sub_20BAC2FC8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E106C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20BAC3084(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_display + 8) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  sub_20B51C710(v8, v2 + 16);
  v4 = OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_catalogWorkout;
  v5 = sub_20C1344C4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70, &unk_20C155A70);
  sub_20C133AA4();
  sub_20B51C710(v8, v2 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_artworkImageLoader);
  sub_20C133AA4();
  (*(v6 + 8))(a2, v5);
  *(v2 + OBJC_IVAR____TtC9SeymourUI26SessionBackgroundPresenter_platform) = v8[0];
  return v2;
}

id UIStackView.withAlignment(_:)(uint64_t a1)
{
  [v1 setAlignment_];

  return v3;
}

id UIStackView.withAxis(_:)(uint64_t a1)
{
  [v1 setAxis_];

  return v3;
}

id UIStackView.withSpacing(_:)()
{
  [v0 setSpacing_];

  return v2;
}

id UIStackView.withDistribution(_:)(uint64_t a1)
{
  [v1 setDistribution_];

  return v3;
}

id UIStackView.withLayoutMarginsRelativeArrangement(_:)(char a1)
{
  [v1 setLayoutMarginsRelativeArrangement_];

  return v3;
}

uint64_t sub_20BAC3350()
{
  sub_20C13E164();
  sub_20C13E184();
  sub_20C13CA64();
  sub_20C134744();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

double sub_20BAC33E8(uint64_t a1)
{
  sub_20C13E184();
  sub_20C13CA64();
  sub_20C134744();
  sub_20C13CA64();

  return result;
}

uint64_t sub_20BAC3470(uint64_t a1)
{
  sub_20C13E164();
  sub_20C13E184();
  sub_20C13CA64();
  sub_20C134744();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BAC3504(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && (*(a1 + 1) == *(a2 + 1) ? (v3 = *(a1 + 2) == *(a2 + 2)) : (v3 = 0), v3 || (sub_20C13DFF4() & 1) != 0))
  {
    v4 = sub_20C134744();
    v6 = v5;
    if (v4 == sub_20C134744() && v6 == v7)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_20C13DFF4();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_20BAC35D8()
{
  result = qword_27C769E80;
  if (!qword_27C769E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769E80);
  }

  return result;
}

uint64_t sub_20BAC362C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BAC3674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BAC36C8()
{
  v1 = v0;
  v2 = sub_20C138094();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = (&v20 - v10);
  *v11 = 0xD000000000000013;
  v11[1] = 0x800000020C1A6500;
  swift_storeEnumTagMultiPayload();
  *v8 = 3;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_storefrontLocalizer + 24));
  *v5 = sub_20C138D34();
  v5[1] = v12;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
  v13 = *(v3 + 72);
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20C1517D0;
  v16 = v15 + v14;
  sub_20B634348(v5, v16);
  sub_20B634348(v8, v16 + v13);
  sub_20B634348(v11, v16 + 2 * v13);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_mediaTagStringBuilder + 24));
  v17 = sub_20C138544();

  v18 = MEMORY[0x277D53BC8];
  sub_20BAC543C(v5, MEMORY[0x277D53BC8]);
  sub_20BAC543C(v8, v18);
  sub_20BAC543C(v11, v18);
  return v17;
}

void sub_20BAC394C()
{
  v1 = v0;
  v2 = sub_20C134734();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_hasDetail) = 1;
  sub_20C135CB4();
  v6 = sub_20C1346E4();
  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = sub_20B8D8288(8, 0, 1, v6);

  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_storefrontLocalizer + 24));
    v7 = sub_20C138D34();
    v8 = (v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_title);
    *v8 = v7;
    v8[1] = v9;

    *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_sortModes) = &unk_28228DBD8;
  }

  sub_20BAC3D84();
}

void sub_20BAC3ADC()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_hasDetail) == 1)
  {
    v6 = v3;
    v30 = 0uLL;
    LOBYTE(v31) = 1;
    *(&v31 + 1) = 0;
    *&v32 = 0;
    WORD4(v32) = 128;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    LOBYTE(v36) = 0;
    *(&v36 + 1) = MEMORY[0x277D84F90];
    *&v37[0] = MEMORY[0x277D84F90];
    *(v37 + 8) = 0u;
    *(&v37[1] + 8) = 0u;
    *(&v37[2] + 1) = 0;
    v38 = 2;
    nullsub_1();
    v7 = v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row;
    v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 144);
    v39[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 128);
    v39[9] = v8;
    v40 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 160);
    v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 80);
    v39[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 64);
    v39[5] = v9;
    v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 112);
    v39[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 96);
    v39[7] = v10;
    v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 16);
    v39[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row);
    v39[1] = v11;
    v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 48);
    v39[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 32);
    v39[3] = v12;
    v13 = v37[2];
    *(v7 + 128) = v37[1];
    *(v7 + 144) = v13;
    *(v7 + 160) = v38;
    v14 = v35;
    *(v7 + 64) = v34;
    *(v7 + 80) = v14;
    v15 = v37[0];
    *(v7 + 96) = v36;
    *(v7 + 112) = v15;
    v16 = v31;
    *v7 = v30;
    *(v7 + 16) = v16;
    v17 = v33;
    *(v7 + 32) = v32;
    *(v7 + 48) = v17;
    sub_20B520158(v39, &qword_27C762340, &unk_20C150290);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
      {
        v19 = Strong;
        sub_20B61DC20(v0, Strong);
        if (v21)
        {
          v23 = v20;
          v24 = v21;
          v25 = v22;
          v26 = v0;
          sub_20B5E2E18();
          *v5 = sub_20C13D374();
          v27 = v6;
          (*(v2 + 104))(v5, *MEMORY[0x277D85200], v6);
          v28 = sub_20C13C584();
          (*(v2 + 8))(v5, v27);
          if ((v28 & 1) == 0)
          {
            __break(1u);
            return;
          }

          sub_20B621288(v23, v24, v25, v26, 1, v19);
        }

        else
        {
          sub_20C0C2D50(0);
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_20BAC3D84()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8, &unk_20C187A60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v67 - v6;
  v8 = sub_20C135524();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810, &unk_20C16B440);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v67 - v13;
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_hasDetail) == 1)
  {
    v77 = v9;
    v68 = v4;
    v69 = v2;
    v70 = v1;
    v15 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_filter;
    swift_beginAccess();
    v76 = v0;
    sub_20B52F9E8(v0 + v15, v14, &qword_27C766810, &unk_20C16B440);
    v16 = sub_20B84A8F0(v14);
    v17 = v76;
    sub_20B520158(v14, &qword_27C766810, &unk_20C16B440);
    if (!v16)
    {
      v18 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_filterResult;
      swift_beginAccess();
      sub_20B52F9E8(v17 + v18, v7, &qword_27C769EC8, &unk_20C187A60);
      v19 = v77;
      if ((*(v77 + 48))(v7, 1, v8) == 1)
      {
        sub_20B520158(v7, &qword_27C769EC8, &unk_20C187A60);
      }

      else
      {
        v20 = (*(v19 + 32))(v11, v7, v8);
        v21 = sub_20BB110D4(v20);
        (*(v19 + 8))(v11, v8);
        if (v21)
        {
          sub_20BAC3ADC();
          return;
        }
      }
    }

    v22 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_sortModes;
    v23 = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_sortModes);
    v24 = *(v23 + 16);
    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v67 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_sortModes;
      *&v87[0] = MEMORY[0x277D84F90];

      sub_20BB5E6A8(0, v24, 0);
      v74 = (v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_storefrontLocalizer);
      v75 = v23;
      v25 = *&v87[0];
      v72 = 0x800000020C1953B0;
      v73 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_activeSortMode;
      v71 = 0x800000020C1953D0;
      v26 = 32;
      do
      {
        v27 = *(v23 + v26);
        v28 = sub_20C134744();
        v30 = v29;
        if (v28 == sub_20C134744() && v30 == v31)
        {
          LODWORD(v77) = 1;
        }

        else
        {
          LODWORD(v77) = sub_20C13DFF4();
        }

        __swift_project_boxed_opaque_existential_1(v74, v74[3]);
        v33 = sub_20C138D34();
        v35 = v34;

        *&v87[0] = v25;
        v37 = *(v25 + 16);
        v36 = *(v25 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_20BB5E6A8((v36 > 1), v37 + 1, 1);
          v25 = *&v87[0];
        }

        *(v25 + 16) = v37 + 1;
        v38 = v25 + 32 * v37;
        *(v38 + 32) = v77 & 1;
        *(v38 + 40) = v33;
        *(v38 + 48) = v35;
        *(v38 + 56) = v27;
        ++v26;
        --v24;
        v23 = v75;
        v17 = v76;
      }

      while (v24);

      v22 = v67;
    }

    v39 = swift_allocObject();
    v40 = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_title + 8);
    *(v39 + 16) = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_title);
    *(v39 + 24) = v40;

    *(v39 + 32) = sub_20BAC36C8();
    *(v39 + 40) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14F980;
    *(v41 + 32) = v39 | 0x7000000000000000;
    v42 = *(v17 + v22);
    v43 = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_activeSortMode);
    v78 = 0uLL;
    LOBYTE(v79) = v43;
    *(&v79 + 1) = 0;
    *&v80 = 0;
    WORD4(v80) = 128;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    LOBYTE(v84) = 0;
    *(&v84 + 1) = v41;
    *&v85[0] = v42;
    *(v85 + 8) = 0u;
    *(&v85[1] + 8) = 0u;
    *(&v85[2] + 1) = 0;
    v86 = 2;
    nullsub_1();
    v44 = v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row;
    v45 = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 144);
    v87[8] = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 128);
    v87[9] = v45;
    v88 = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 160);
    v46 = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 80);
    v87[4] = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 64);
    v87[5] = v46;
    v47 = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 112);
    v87[6] = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 96);
    v87[7] = v47;
    v48 = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 16);
    v87[0] = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row);
    v87[1] = v48;
    v49 = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 48);
    v87[2] = *(v17 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 32);
    v87[3] = v49;
    v50 = v85[2];
    *(v44 + 128) = v85[1];
    *(v44 + 144) = v50;
    *(v44 + 160) = v86;
    v51 = v83;
    *(v44 + 64) = v82;
    *(v44 + 80) = v51;
    v52 = v85[0];
    *(v44 + 96) = v84;
    *(v44 + 112) = v52;
    v53 = v79;
    *v44 = v78;
    *(v44 + 16) = v53;
    v54 = v81;
    *(v44 + 32) = v80;
    *(v44 + 48) = v54;

    sub_20B520158(v87, &qword_27C762340, &unk_20C150290);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v56 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61DC20(v17, Strong);
      if (v58)
      {
        v60 = v58;
        v61 = v59;
        v77 = v57;
        sub_20B5E2E18();
        v62 = sub_20C13D374();
        v64 = v68;
        v63 = v69;
        *v68 = v62;
        v65 = v70;
        (*(v63 + 104))(v64, *MEMORY[0x277D85200], v70);
        v66 = sub_20C13C584();
        (*(v63 + 8))(v64, v65);
        if ((v66 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B621288(v77, v60, v61, v17, 1, v56);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BAC45C8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_storefrontLocalizer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_mediaTagStringBuilder));
  v3 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_filter, &qword_27C766810, &unk_20C16B440);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_filterResult, &qword_27C769EC8, &unk_20C187A60);
  return v0;
}

uint64_t sub_20BAC4770()
{
  sub_20BAC45C8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FilterResultHeaderShelf(uint64_t a1)
{
  result = qword_27C769EA8;
  if (!qword_27C769EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BAC481C(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20C134EC4();
    if (v2 <= 0x3F)
    {
      sub_20BAC49F0(319, &qword_27C769EB8, MEMORY[0x277D504B0]);
      if (v3 <= 0x3F)
      {
        sub_20BAC49F0(319, &qword_27C769EC0, MEMORY[0x277D51980]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20BAC49F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_20BAC4A44(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8, &unk_20C187A60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810, &unk_20C16B440);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-v7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (MEMORY[0x20F2EC610](a1, Strong + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_filterRoot))
    {
      v12 = type metadata accessor for FilterResultUpdated(0);
      v13 = *(v12 + 20);
      v14 = sub_20C133E24();
      v15 = *(v14 - 8);
      (*(v15 + 16))(v8, a1 + v13, v14);
      (*(v15 + 56))(v8, 0, 1, v14);
      v16 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_filter;
      swift_beginAccess();
      sub_20B5DF2D4(v8, v11 + v16, &qword_27C766810, &unk_20C16B440);
      swift_endAccess();
      v17 = *(v12 + 24);
      v18 = sub_20C135524();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v5, a1 + v17, v18);
      (*(v19 + 56))(v5, 0, 1, v18);
      v20 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_filterResult;
      swift_beginAccess();
      sub_20B5DF2D4(v5, v11 + v20, &qword_27C769EC8, &unk_20C187A60);
      swift_endAccess();
      sub_20BAC3D84();
    }
  }

  return result;
}

uint64_t sub_20BAC4CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BAC4D60@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row + 32);
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

uint64_t sub_20BAC4E1C()
{
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BAC53E4();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BAC4F00(char a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_activeSortMode) = a1;
  sub_20BAC3D84();
  swift_getObjectType();
  sub_20B8495D0();
  return sub_20C13A764();
}

uint64_t sub_20BAC4F80(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v31 - v8;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v10 = v3 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_row;
  sub_20B5D8060(v32);
  v11 = v32[9];
  *(v10 + 128) = v32[8];
  *(v10 + 144) = v11;
  *(v10 + 160) = v33;
  v12 = v32[5];
  *(v10 + 64) = v32[4];
  *(v10 + 80) = v12;
  v13 = v32[7];
  *(v10 + 96) = v32[6];
  *(v10 + 112) = v13;
  v14 = v32[1];
  *v10 = v32[0];
  *(v10 + 16) = v14;
  v15 = v32[3];
  *(v10 + 32) = v32[2];
  *(v10 + 48) = v15;
  *(v3 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_hasDetail) = 0;
  v16 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_filter;
  v17 = sub_20C133E24();
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_filterResult;
  v19 = sub_20C135524();
  (*(*(v19 - 8) + 56))(v3 + v18, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_eventHub) = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v31, v3 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v31, v3 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_mediaTagStringBuilder);
  v20 = OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_filterRoot;
  v21 = sub_20C134EC4();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v4 + v20, a2, v21);
  *(v4 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_activeSortMode) = a3;
  if (sub_20C134EB4())
  {
    sub_20C134E84();
    v23 = sub_20C135C84();
    if ((*(*(v23 - 8) + 48))(v9, 1, v23) == 1)
    {
      sub_20B520158(v9, &unk_27C7629B0, &unk_20C1510C0);
      v24 = &unk_2822872F8;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_20BAC543C(v9, MEMORY[0x277D52060]);
      v24 = &unk_2822872F8;
      if (EnumCaseMultiPayload == 10)
      {
        v24 = &unk_2822872D0;
      }
    }
  }

  else
  {
    v24 = &unk_282287320;
  }

  *(v4 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_sortModes) = v24;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_subscriptionToken) = sub_20C13A914();
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_storefrontLocalizer), *(v4 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_storefrontLocalizer + 24));
  v26 = sub_20C138D34();
  v28 = v27;
  (*(v22 + 8))(a2, v21);
  v29 = (v4 + OBJC_IVAR____TtC9SeymourUI23FilterResultHeaderShelf_title);
  *v29 = v26;
  v29[1] = v28;
  return v4;
}

unint64_t sub_20BAC53E4()
{
  result = qword_27C7710D0;
  if (!qword_27C7710D0)
  {
    type metadata accessor for FilterResultUpdated(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7710D0);
  }

  return result;
}

uint64_t sub_20BAC543C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_20BAC549C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(type metadata accessor for ButtonAction(0) + 28);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8, &unk_20C14FBA0) + 48);
  v8 = sub_20C138B94();
  (*(*(v8 - 8) + 16))(v6, a1, v8);
  v9 = sub_20C138894();
  (*(*(v9 - 8) + 16))(v6 + v7, a2, v9);
  type metadata accessor for ButtonAction.ActionType(0);
  swift_storeEnumTagMultiPayload();
  v10 = sub_20C138B64();
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = v10;
  *(a3 + 40) = v12;
  return result;
}

uint64_t sub_20BAC55A4(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v17[3], v17[4]);
    v15 = sub_20B51E694(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v8, v9, "AnalyticsConsentNavigating failed to fetch service subscription with error: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20BAC5780(id *a1)
{
  if ([*a1 ams:*MEMORY[0x277CEE150] accountFlagValueForAccountFlag:?])
  {
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    return sub_20B8006F4(v7);
  }

  result = swift_dynamicCast();
  if (result & 1) != 0 && (v4)
  {
    v2 = sub_20C13B8A4();
    sub_20BAC5D30(&qword_27C762380, MEMORY[0x277D4FA90]);
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, *MEMORY[0x277D4FA80], v2);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_20BAC58C8(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v34 - v7;
  v9 = sub_20C13B8A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D4FA80], v9, v11);
  sub_20BAC5D30(&qword_27C764BB0, MEMORY[0x277D4FA78]);
  v14 = sub_20C135D14();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    sub_20C13B524();
    v15 = a1;
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136446210;
      swift_getErrorValue();
      v20 = MEMORY[0x20F2F5850](v34[2], v34[3]);
      v22 = sub_20B51E694(v20, v21, &v35);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_20B517000, v16, v17, "[104756909] Skipping analytics consent due to age condition error: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    sub_20C13B524();
    v24 = a1;
    v25 = sub_20C13BB74();
    v26 = sub_20C13D1D4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136446210;
      swift_getErrorValue();
      v29 = MEMORY[0x20F2F5850](v34[6], v34[7]);
      v31 = sub_20B51E694(v29, v30, &v35);
      v34[0] = v2;
      v32 = v31;

      *(v27 + 4) = v32;
      _os_log_impl(&dword_20B517000, v25, v26, "[104756909] AnalyticsConsentNavigating failed to query opt in privacy preference with error: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v27, -1, -1);

      (*(v3 + 8))(v5, v34[0]);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    *(swift_allocObject() + 16) = a1;
    v33 = a1;
    return sub_20C137CA4();
  }
}

uint64_t sub_20BAC5D30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20C13B8A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_20BAC5D74(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_20C137EA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_20C13A7D4();
    sub_20C132E84();
    (*(v6 + 8))(v8, v5);
    v12 = sub_20C132E94();
    (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
    v13 = OBJC_IVAR____TtC9SeymourUI23SessionPowerLogObserver_startDate;
    swift_beginAccess();
    sub_20BAC70D4(v4, v11 + v13);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20BAC5F38(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C137EA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13AA14();
    sub_20BAC6044(v5);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_20BAC6044(void *a1)
{
  v96 = a1;
  v2 = sub_20C13BB84();
  v91 = *(v2 - 8);
  v92 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0, &unk_20C1523C0);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v83 - v8;
  v9 = sub_20C136544();
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x28223BE20](v9);
  v84 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100, &unk_20C152450);
  MEMORY[0x28223BE20](v11 - 8);
  v87 = &v83 - v12;
  v13 = sub_20C134B64();
  v88 = *(v13 - 8);
  v89 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v83 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v83 - v20;
  v22 = sub_20C132E94();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v94 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v83 - v26;
  v28 = OBJC_IVAR____TtC9SeymourUI23SessionPowerLogObserver_startDate;
  swift_beginAccess();
  v29 = v1 + v28;
  v30 = v22;
  sub_20BAC6DEC(v29, v21);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    v92 = v23;
    (*(v23 + 32))(v27, v21, v22);
    v35 = sub_20C1371F4();
    v95 = v27;
    if (v35)
    {
      sub_20C137D74();
      v36 = sub_20C133D84();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v18, 1, v36) == 1)
      {
        sub_20B520158(v18, &unk_27C765120, &unk_20C152470);
      }

      else
      {
        sub_20C133D34();
        (*(v37 + 8))(v18, v36);
        v38 = sub_20C134B54();
        v40 = v39;
        v42 = v41;
        (*(v88 + 8))(v15, v89);
        v99[0] = v38;
        v99[1] = v40;
        v100 = v42 & 1;
        v97 = 0uLL;
        v98 = 1;
        sub_20B64BD18();
        sub_20B64BD6C();
        LOBYTE(v38) = sub_20C133BF4();
        sub_20B583F4C(v99[0], v99[1], v100);
        if (v38)
        {
          v43 = v87;
          sub_20C137DF4();
          v44 = sub_20C135274();
          v45 = *(v44 - 8);
          if ((*(v45 + 48))(v43, 1, v44) == 1)
          {
            sub_20B520158(v43, &unk_27C765100, &unk_20C152450);
            v46 = 1;
          }

          else
          {
            v77 = v84;
            sub_20C135244();
            (*(v45 + 8))(v43, v44);
            v78 = sub_20C136534();
            v80 = v79;
            v82 = v81;
            (*(v85 + 8))(v77, v86);
            v99[0] = v78;
            v99[1] = v80;
            v100 = v82 & 1;
            v97 = 0uLL;
            v98 = 1;
            sub_20B64B3D8();
            sub_20B64B42C();
            LODWORD(v78) = sub_20C133BF4();
            sub_20B583F4C(v99[0], v99[1], v100);
            v46 = v78 ^ 1;
          }

          LODWORD(v91) = v46;
LABEL_12:
          v47 = v93;
          sub_20C137E44();
          v48 = sub_20C136484();
          v49 = *(v48 - 8);
          v50 = *(v49 + 48);
          v51 = v50(v47, 1, v48);
          v83 = v30;
          if (v51 == 1)
          {
            v52 = v47;
          }

          else
          {
            v54 = sub_20C136474();
            v55 = v47;
            v57 = v56;
            v58 = *(v49 + 8);
            v58(v55, v48);
            v99[0] = v54;
            LOBYTE(v99[1]) = v57 & 1;
            *&v97 = 1;
            BYTE8(v97) = 1;
            sub_20B64BC70();
            sub_20B64BCC4();
            if ((sub_20C133BF4() & 1) == 0)
            {
              v53 = 0;
              goto LABEL_20;
            }

            v59 = v90;
            sub_20C137E44();
            if (v50(v59, 1, v48) != 1)
            {
              v60 = sub_20C136464();
              v62 = v61;
              v64 = v63;
              v58(v59, v48);
              v99[0] = v60;
              v99[1] = v62;
              v100 = v64 & 1;
              v97 = xmmword_20C1522F0;
              v98 = 1;
              sub_20B64BBC8();
              sub_20B64BC1C();
              v53 = sub_20C133BF4();
              sub_20B583F4C(v99[0], v99[1], v100);
              goto LABEL_20;
            }

            v52 = v59;
          }

          sub_20B520158(v52, &unk_27C765CB0, &unk_20C1523C0);
          v53 = 0;
LABEL_20:
          v96 = sub_20C13C914();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EF0, &qword_20C16B4B8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20C152DF0;
          v99[0] = 0x7472617473;
          v99[1] = 0xE500000000000000;
          sub_20C13DC04();
          sub_20C132E44();
          v66 = MEMORY[0x277D839F8];
          *(inited + 96) = MEMORY[0x277D839F8];
          *(inited + 72) = v67;
          v99[0] = 6581861;
          v99[1] = 0xE300000000000000;
          sub_20C13DC04();
          v68 = v94;
          sub_20C132E84();
          sub_20C132E44();
          v70 = v69;
          v71 = *(v92 + 8);
          v72 = v83;
          v71(v68, v83);
          *(inited + 168) = v66;
          *(inited + 144) = v70;
          v99[0] = 0x7365726F6373;
          v99[1] = 0xE600000000000000;
          sub_20C13DC04();
          v73 = MEMORY[0x277D839B0];
          *(inited + 240) = MEMORY[0x277D839B0];
          v74 = v53 & 1;
          *(inited + 216) = v74 & v91;
          strcpy(v99, "watchConnected");
          HIBYTE(v99[1]) = -18;
          sub_20C13DC04();
          *(inited + 312) = v73;
          *(inited + 288) = v74;
          sub_20B529B54(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FB40, qword_20C16B4C0);
          swift_arrayDestroy();
          v75 = sub_20C13C744();

          v76 = v96;
          SMUPowerLogEvent(v96, v75, 0);

          return (v71)(v95, v72);
        }
      }
    }

    LODWORD(v91) = 0;
    goto LABEL_12;
  }

  sub_20B520158(v21, &qword_27C762AC0, &qword_20C14FC90);
  sub_20C13B534();
  v31 = sub_20C13BB74();
  v32 = sub_20C13D1F4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_20B517000, v31, v32, "Start Date is nil, so we never got a SessionActivated Event.", v33, 2u);
    MEMORY[0x20F2F6A40](v33, -1, -1);
  }

  return (*(v91 + 8))(v4, v92);
}

uint64_t sub_20BAC6BA0()
{

  v1 = OBJC_IVAR____TtC9SeymourUI23SessionPowerLogObserver_activityTypeBehavior;
  v2 = sub_20C137254();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23SessionPowerLogObserver_startDate, &qword_27C762AC0, &qword_20C14FC90);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionPowerLogObserver(uint64_t a1)
{
  result = qword_27C769EE0;
  if (!qword_27C769EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BAC6CB8(uint64_t a1)
{
  sub_20C137254();
  if (v1 <= 0x3F)
  {
    sub_20BAC6D94(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BAC6D94(uint64_t a1)
{
  if (!qword_27C76BB60)
  {
    sub_20C132E94();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C76BB60);
    }
  }
}

uint64_t sub_20BAC6DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BAC6E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = OBJC_IVAR____TtC9SeymourUI23SessionPowerLogObserver_startDate;
  v7 = sub_20C132E94();
  (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC9SeymourUI23SessionPowerLogObserver_activityTypeBehavior;
  v9 = sub_20C137254();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4 + v8, a3, v9);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + 16) = sub_20C13A914();
  swift_getObjectType();
  sub_20C13A7E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_20C13AA24();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  (*(v10 + 8))(a3, v9);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v4;
}

uint64_t sub_20BAC70D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double WorkoutPlanPreferencesViewController.resignActiveObserver.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double WorkoutPlanPreferencesViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

id WorkoutPlanPreferencesViewController.preferredContentSize.getter()
{
  ObjectType = swift_getObjectType();
  v2 = sub_20C138104();
  result = sub_20C138104();
  if (v2 != result)
  {
    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, sel_preferredContentSize);
  }

  return result;
}

id WorkoutPlanPreferencesViewController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

void (*WorkoutPlanPreferencesViewController.preferredContentSize.modify(objc_super **a1))(double **a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  v4[4].receiver = v2;
  ObjectType = swift_getObjectType();
  v5[4].super_class = ObjectType;
  v7 = sub_20C138104();
  if (v7 == sub_20C138104())
  {
    v8 = 0x4087E00000000000;
    v9 = 0x4083800000000000;
  }

  else
  {
    v5[1].receiver = v2;
    v5[1].super_class = ObjectType;
    objc_msgSendSuper2(v5 + 1, sel_preferredContentSize);
  }

  v5->receiver = v9;
  v5->super_class = v8;
  return sub_20B7C3AA4;
}

char *WorkoutPlanPreferencesViewController.__allocating_init(dependencies:pageContext:pageNavigator:modalityReferences:preferenceType:selectedModalityPreferences:)(uint64_t a1, void *a2, uint64_t a3, void *a4, char *a5, _BYTE *a6, uint64_t a7)
{
  v15 = a4[3];
  v16 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v18 = sub_20BAC90A0(a1, a2, a3, v17, a5, a6, a7, v7, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v18;
}

char *WorkoutPlanPreferencesViewController.init(dependencies:pageContext:pageNavigator:modalityReferences:preferenceType:selectedModalityPreferences:)(uint64_t a1, void *a2, uint64_t a3, void *a4, char *a5, _BYTE *a6, uint64_t a7)
{
  v15 = a4[3];
  v14 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_20BAC8DE4(a1, a2, a3, v19, a5, a6, a7, v23[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v21;
}

void sub_20BAC7728(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_primaryActionButton);
    if (v5)
    {
      v6 = v5;

      [v6 setEnabled_];
      v4 = v6;
    }
  }
}

Swift::Void __swiftcall WorkoutPlanPreferencesViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_20B794144(0);
  sub_20BAC7940();
  sub_20B795FC0();
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BAC91C4();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20BEF8B88();
}

void sub_20BAC7940()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_onCancelButtonTapped_];
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_workoutPlanStringBuilder];
  v5 = v4[9];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v5);
  sub_20B5E107C(0x455441445055, 0xE600000000000000, v5, v6);
  v23[3] = ObjectType;
  v23[0] = v1;
  v7 = v1;
  v8 = sub_20C13C914();

  if (ObjectType)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v23, ObjectType);
    v10 = *(ObjectType - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_20C13DFD4();
    (*(v10 + 8))(v13, ObjectType);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v16 = [v15 initWithTitle:v8 style:2 target:v14 action:{sel_onUpdateButtonTapped_, v23[0]}];

  swift_unknownObjectRelease();
  [v16 setEnabled_];
  v17 = *&v7[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_primaryActionButton];
  *&v7[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_primaryActionButton] = v16;
  v18 = v16;

  v19 = [v7 navigationItem];
  [v19 setLeftBarButtonItem_];

  v20 = [v7 navigationItem];
  [v20 setRightBarButtonItem_];

  v21 = [v7 navigationItem];
  v22 = sub_20BAC842C();
  [v21 setTitleView_];
}

Swift::Void __swiftcall WorkoutPlanPreferencesViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidAppear_, a1);
  type metadata accessor for WorkoutPlanPreferencesPageDataProvider(0);
  sub_20BAC9A14(&qword_27C769F20, 255, type metadata accessor for WorkoutPlanPreferencesPageDataProvider, &unk_20C1831C8);
  sub_20C138C54();
  sub_20BAC9A14(&qword_27C769F28, v4, type metadata accessor for WorkoutPlanPreferencesViewController, &protocol conformance descriptor for WorkoutPlanPreferencesViewController);
  sub_20BAC9A14(&qword_27C769F30, v5, type metadata accessor for WorkoutPlanPreferencesViewController, &protocol conformance descriptor for WorkoutPlanPreferencesViewController);
  sub_20C139364();
}

Swift::Void __swiftcall WorkoutPlanPreferencesViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, sel_viewWillDisappear_, a1, v7);
  v15 = v2;
  sub_20C132E84();
  sub_20BAC9A14(&qword_27C769F28, v10, type metadata accessor for WorkoutPlanPreferencesViewController, &protocol conformance descriptor for WorkoutPlanPreferencesViewController);
  sub_20C139274();
  (*(v6 + 8))(v9, v5);
  v11 = [v2 navigationController];
  if (v11)
  {
    v12 = v11;
    if ([v11 isBeingDismissed])
    {
      v15 = v2;
      sub_20BAC9A14(&qword_27C769F38, v13, type metadata accessor for WorkoutPlanPreferencesViewController, &protocol conformance descriptor for WorkoutPlanPreferencesViewController);
      sub_20C138C74();
    }
  }
}

Swift::Void __swiftcall WorkoutPlanPreferencesViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1);
  sub_20BAC9A14(&qword_27C769F28, v3, type metadata accessor for WorkoutPlanPreferencesViewController, &protocol conformance descriptor for WorkoutPlanPreferencesViewController);
  sub_20BAC9A14(&qword_27C769F30, v4, type metadata accessor for WorkoutPlanPreferencesViewController, &protocol conformance descriptor for WorkoutPlanPreferencesViewController);
  sub_20C139374();
}

Swift::Void __swiftcall WorkoutPlanPreferencesViewController.viewDidLayoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v1 = *(*&v0[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_page);
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
  v3 = v1;
  [v2 bounds];
  sub_20B9D8614(v4, v5, v6, v7);
}

id sub_20BAC842C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = *MEMORY[0x277D769D0];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontDescriptorWithTextStyle:v1 compatibleWithTraitCollection:0];
  v4 = [v3 fontDescriptorWithSymbolicTraits_];
  if (v4)
  {
    v5 = v4;

    v3 = v5;
  }

  v6 = objc_opt_self();
  v7 = [v6 fontWithDescriptor:v3 size:0.0];

  [v0 setFont_];
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  v9 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  v10 = [v2 preferredFontDescriptorWithTextStyle:v1 compatibleWithTraitCollection:0];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = [v6 fontWithDescriptor:v10 size:0.0];

  [v8 setFont_];
  v14 = *(v28 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_workoutPlanStringBuilder);
  v15 = v14[9];
  v16 = v14[10];
  __swift_project_boxed_opaque_existential_1(v14 + 6, v15);
  sub_20B5E107C(0xD000000000000020, 0x800000020C1A6610, v15, v16);
  v17 = sub_20C13C914();

  [v0 setText_];

  if (*(v28 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_preferenceType))
  {
    v18 = 0x5352454E49415254;
  }

  else
  {
    v18 = 0x434953554DLL;
  }

  if (*(v28 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_preferenceType))
  {
    v19 = 0xE800000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v20 = v14[9];
  v21 = v14[10];
  __swift_project_boxed_opaque_existential_1(v14 + 6, v20);
  sub_20B5E107C(v18, v19, v20, v21);

  v22 = sub_20C13C914();

  [v8 setText_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C151490;
  *(v23 + 32) = v0;
  *(v23 + 40) = v8;
  v24 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B5E5C28();
  v25 = sub_20C13CC54();

  v26 = [v24 initWithArrangedSubviews_];

  [v26 setAxis_];
  [v26 setAlignment_];

  return v26;
}

id WorkoutPlanPreferencesViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WorkoutPlanPreferencesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_20BAC8AA8@<D0>(void *a1@<X8>)
{
  *a1 = *(*v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider);

  return result;
}

uint64_t sub_20BAC8AD8@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider) + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20BAC8B90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider);
  v4 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_20BAC8C1C()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double sub_20BAC8C64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BAC8D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = sub_20BAC9A14(&qword_27C769F28, v5, type metadata accessor for WorkoutPlanPreferencesViewController, &protocol conformance descriptor for WorkoutPlanPreferencesViewController);

  return a3(ObjectType, v6, a2);
}

char *sub_20BAC8DE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, _BYTE *a6, uint64_t a7, _BYTE *a8, uint64_t a9, uint64_t a10)
{
  ObjectType = swift_getObjectType();
  v31[3] = a9;
  v31[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, a4, a9);
  LOBYTE(a4) = *a6;
  *&a8[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_resignActiveObserver] = 0;
  *&a8[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_primaryActionButton] = 0;
  a8[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_visibility] = 1;
  *&a8[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a8[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_eventHub] = v30;
  sub_20B51CC64(v31, &a8[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_pageNavigator]);
  sub_20C133AA4();
  a8[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_platform] = v30;
  a8[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_preferenceType] = a4;
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *&a8[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_workoutPlanStringBuilder] = v30;
  LOBYTE(v30) = a4;
  type metadata accessor for WorkoutPlanPreferencesPageDataProvider(0);
  swift_allocObject();

  v20 = sub_20BEF9C2C(v19, a5, a2, a3, &v30, a7);

  *&a8[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider] = v20;
  v29.receiver = a8;
  v29.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v29, sel_initWithNibName_bundle_, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(v31);
  v22 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider;
  *(*&v21[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider] + 24) = &off_2822C9800;
  swift_unknownObjectWeakAssign();
  v23 = *&v21[v22];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *(v23 + 32);
  v26 = *(v23 + 40);
  *(v23 + 32) = sub_20BAC9AC4;
  *(v23 + 40) = v24;

  swift_retain_n();
  sub_20B583ECC(v25, v26);

  return v21;
}

char *sub_20BAC90A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char *a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v22 = a7;
  v15 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = objc_allocWithZone(v18);
  (*(v15 + 16))(v17, a4, a9);
  return sub_20BAC8DE4(a1, a2, a3, v17, a5, v21, v22, v19, a9, a10);
}

unint64_t sub_20BAC91C4()
{
  result = qword_27C769F18;
  if (!qword_27C769F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769F18);
  }

  return result;
}

id sub_20BAC9274()
{
  ObjectType = swift_getObjectType();
  v23 = sub_20C1333A4();
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_20C1352E4();
  v22 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v0;
  v25 = v0;
  (*(v12 + 104))(v15, *MEMORY[0x277D51468], v11, v13);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  v16 = sub_20C135ED4();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = v23;
  (*(v1 + 16))(v3, *&v0[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_metricPage, v23);
  sub_20BAC9A14(&unk_27C769F70, v18, type metadata accessor for WorkoutPlanPreferencesViewController, &protocol conformance descriptor for WorkoutPlanPreferencesViewController);
  sub_20C138D94();
  (*(v1 + 8))(v3, v17);
  sub_20BAC9A5C(v6);
  (*(v8 + 8))(v10, v22);
  (*(v12 + 8))(v15, v11);
  return [v21 dismissViewControllerAnimated:1 completion:0];
}

id sub_20BAC9638()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_20C1333A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_20C1352E4();
  v22 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C134F24();
  v13 = *(v23 - 8);
  v14 = MEMORY[0x28223BE20](v23);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1;
  v25 = v1;
  (*(v13 + 104))(v16, *MEMORY[0x277D51460], v14);
  (*(v10 + 104))(v12, *MEMORY[0x277D51768], v9);
  v17 = sub_20C135ED4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  (*(v3 + 16))(v5, *&v1[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_metricPage, v2);
  sub_20BAC9A14(&unk_27C769F70, v18, type metadata accessor for WorkoutPlanPreferencesViewController, &protocol conformance descriptor for WorkoutPlanPreferencesViewController);
  sub_20C138D94();
  (*(v3 + 8))(v5, v2);
  sub_20BAC9A5C(v8);
  (*(v10 + 8))(v12, v22);
  (*(v13 + 8))(v16, v23);
  sub_20BEF7D7C();
  return [v21 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_20BAC9A14(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20BAC9A5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20BAC9AD4(uint64_t a1)
{
  result = sub_20BAC9AFC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_20BAC9AFC()
{
  result = qword_27C764AF8;
  if (!qword_27C764AF8)
  {
    sub_20C1370C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764AF8);
  }

  return result;
}

char *sub_20BAC9C08(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v231 = objc_opt_self();
  v233 = ObjCClassFromMetadata;
  v11 = [v231 bundleForClass_];
  sub_20C132964();

  v12 = sub_20C13C914();
  [v9 setText_];

  v13 = objc_opt_self();
  v14 = [v13 whiteColor];
  [v9 setTextColor_];

  v15 = *MEMORY[0x277D76A20];
  v238 = *MEMORY[0x277D74368];
  v229 = objc_opt_self();
  v16 = [v229 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
  v17 = [v16 fontDescriptorWithSymbolicTraits_];
  if (v17)
  {
    v18 = v17;

    v16 = v18;
  }

  v19 = [v16 fontDescriptorWithDesign_];
  if (v19)
  {
    v20 = v19;

    v16 = v20;
  }

  v21 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_titleLabel;
  v236 = objc_opt_self();
  v22 = [v236 fontWithDescriptor:v16 size:0.0];

  [v9 setFont_];
  [v9 setNumberOfLines_];
  LODWORD(v23) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v24];
  v25 = sub_20C13C914();
  [v9 setAccessibilityIdentifier_];

  *&v4[v21] = v9;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v27 = [v13 secondaryLabelColor];
  [v26 setTextColor_];

  v28 = [v229 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v29 = [v28 fontDescriptorWithSymbolicTraits_];
  if (v29)
  {
    v30 = v29;

    v28 = v30;
  }

  v31 = [v28 fontDescriptorWithDesign_];
  if (v31)
  {
    v32 = v31;

    v28 = v32;
  }

  v33 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_subtitleLabel;
  v34 = [v236 fontWithDescriptor:v28 size:0.0];

  [v26 setFont_];
  [v26 setNumberOfLines_];
  LODWORD(v35) = 1148846080;
  [v26 setContentCompressionResistancePriority:0 forAxis:v35];
  LODWORD(v36) = 1148846080;
  [v26 setContentCompressionResistancePriority:1 forAxis:v36];

  *&v4[v33] = v26;
  v37 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = [v231 bundleForClass_];
  sub_20C132964();

  v39 = sub_20C13C914();
  [v37 setText_];

  v40 = [v13 secondaryLabelColor];
  [v37 setTextColor_];

  v41 = *MEMORY[0x277D76940];
  v42 = [v229 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:0];
  v43 = [v42 fontDescriptorWithSymbolicTraits_];
  v44 = v4;
  if (v43)
  {
    v45 = v43;

    v42 = v45;
  }

  v227 = v41;
  v46 = [v42 fontDescriptorWithDesign_];
  if (v46)
  {
    v47 = v46;

    v42 = v47;
  }

  v48 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeTitleLabel;
  v49 = [v236 fontWithDescriptor:v42 size:0.0];

  [v37 setFont_];
  LODWORD(v50) = 1148846080;
  [v37 setContentCompressionResistancePriority:0 forAxis:v50];
  LODWORD(v51) = 1148846080;
  [v37 setContentCompressionResistancePriority:1 forAxis:v51];

  *&v4[v48] = v37;
  v52 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeDetailLabel;
  v53 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v53 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v54) = 1148846080;
  [v53 setContentCompressionResistancePriority:0 forAxis:v54];
  LODWORD(v55) = 1148846080;
  [v53 setContentCompressionResistancePriority:1 forAxis:v55];

  *&v4[v52] = v53;
  v56 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v56 setTranslatesAutoresizingMaskIntoConstraints_];
  v57 = [v13 secondaryLabelColor];
  [v56 setTextColor_];

  v58 = [v229 preferredFontDescriptorWithTextStyle:v227 compatibleWithTraitCollection:0];
  v59 = [v58 fontDescriptorWithSymbolicTraits_];
  if (v59)
  {
    v60 = v59;

    v58 = v60;
  }

  v61 = [v58 fontDescriptorWithDesign_];
  if (v61)
  {
    v62 = v61;

    v58 = v62;
  }

  v63 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalEnergyTitleLabel;
  v64 = [v236 fontWithDescriptor:v58 size:0.0];

  [v56 setFont_];
  LODWORD(v65) = 1148846080;
  [v56 setContentCompressionResistancePriority:0 forAxis:v65];
  LODWORD(v66) = 1148846080;
  [v56 setContentCompressionResistancePriority:1 forAxis:v66];

  *&v4[v63] = v56;
  v67 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalEnergyDetailLabel;
  v68 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v68 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v69) = 1148846080;
  [v68 setContentCompressionResistancePriority:0 forAxis:v69];
  LODWORD(v70) = 1148846080;
  [v68 setContentCompressionResistancePriority:1 forAxis:v70];

  *&v4[v67] = v68;
  v71 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v71 setTranslatesAutoresizingMaskIntoConstraints_];
  v72 = [v231 bundleForClass_];
  sub_20C132964();

  v73 = sub_20C13C914();
  [v71 setText_];

  v74 = [v13 secondaryLabelColor];
  [v71 setTextColor_];

  v75 = [v229 preferredFontDescriptorWithTextStyle:v227 compatibleWithTraitCollection:0];
  v76 = [v75 fontDescriptorWithSymbolicTraits_];
  if (v76)
  {
    v77 = v76;

    v75 = v77;
  }

  v78 = [v75 fontDescriptorWithDesign_];
  if (v78)
  {
    v79 = v78;

    v75 = v79;
  }

  v80 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalDistanceTitleLabel;
  v81 = [v236 fontWithDescriptor:v75 size:0.0];

  [v71 setFont_];
  LODWORD(v82) = 1148846080;
  [v71 setContentCompressionResistancePriority:0 forAxis:v82];
  LODWORD(v83) = 1148846080;
  [v71 setContentCompressionResistancePriority:1 forAxis:v83];

  *&v44[v80] = v71;
  v84 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalDistanceDetailLabel;
  v85 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v85 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v86) = 1148846080;
  [v85 setContentCompressionResistancePriority:0 forAxis:v86];
  LODWORD(v87) = 1148846080;
  [v85 setContentCompressionResistancePriority:1 forAxis:v87];

  *&v44[v84] = v85;
  v88 = &v44[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_onDoneButtonTapped];
  *v88 = 0;
  *(v88 + 1) = 0;
  v89 = &v44[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_onSaveButtonTapped];
  *v89 = 0;
  *(v89 + 1) = 0;
  v90 = [v231 bundleForClass_];
  v91 = sub_20C132964();
  v93 = v92;

  v94 = type metadata accessor for TVButtonTextContentView();
  v95 = objc_allocWithZone(v94);
  v96 = TVButtonTextContentView.init(title:)(v91, v93);
  v97 = [v13 blackColor];
  sub_20BB87C88(v97);

  v98 = [v13 whiteColor];
  sub_20BB87D08(v98);

  v99 = *&v96[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
  if (_UISolariumEnabled())
  {
    v100 = [v236 smu:*MEMORY[0x277D76938] preferredFontForTextStyle:8 variant:?];
  }

  else
  {
    v100 = [v236 preferredFontForTextStyle_];
  }

  v101 = v100;
  [v99 setFont_];

  v102 = v96;
  v103 = _UISolariumEnabled();
  v104 = type metadata accessor for TVButton();
  v224 = v102;
  v105 = sub_20BB87F6C(v102, v103, 0, objc_allocWithZone(v104), 0.0, 0.0, 0.0, 0.0);
  v106 = [v13 whiteColor];
  [*&v105[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v106 forState:8];

  v107 = v105;
  v108 = sub_20C13C914();
  [v107 setAccessibilityIdentifier_];

  *&v44[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_doneButton] = v107;
  v109 = [v231 bundleForClass_];
  v110 = sub_20C132964();
  v112 = v111;

  v113 = objc_allocWithZone(v94);
  v114 = TVButtonTextContentView.init(title:)(v110, v112);
  v115 = [v13 blackColor];
  sub_20BB87C88(v115);

  v116 = [v13 whiteColor];
  sub_20BB87D08(v116);

  v117 = *&v114[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
  if (_UISolariumEnabled())
  {
    v118 = [v236 smu:*MEMORY[0x277D76938] preferredFontForTextStyle:8 variant:?];
  }

  else
  {
    v118 = [v236 preferredFontForTextStyle_];
  }

  v119 = v118;
  [v117 setFont_];

  v223 = v114;
  v120 = _UISolariumEnabled();
  v121 = sub_20BB87F6C(v223, v120, 0, objc_allocWithZone(v104), 0.0, 0.0, 0.0, 0.0);
  v122 = [v13 whiteColor];
  [*&v121[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v122 forState:8];

  v123 = v121;
  v124 = sub_20C13C914();
  [v123 setAccessibilityIdentifier_];

  *&v44[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_saveButton] = v123;
  v240.receiver = v44;
  v240.super_class = type metadata accessor for TVSummaryQueueCompleteView();
  v125 = objc_msgSendSuper2(&v240, sel_initWithFrame_, a1, a2, a3, a4);
  v126 = [v13 secondarySystemBackgroundColor];
  v127 = [objc_opt_self() currentTraitCollection];
  v128 = sub_20C13D3B4();
  v129 = [v126 resolvedColorWithTraitCollection_];

  [v125 setBackgroundColor_];
  v130 = v125;
  v131 = [v130 layer];
  [v131 setCornerRadius_];

  v228 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeTitleLabel;
  [*&v130[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeTitleLabel] setHidden_];
  v226 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeDetailLabel;
  [*&v130[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeDetailLabel] setHidden_];
  v230 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalEnergyTitleLabel;
  [*&v130[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalEnergyTitleLabel] setHidden_];
  v234 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalEnergyDetailLabel;
  [*&v130[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalEnergyDetailLabel] setHidden_];
  v232 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalDistanceTitleLabel;
  [*&v130[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalDistanceTitleLabel] setHidden_];
  v220 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalDistanceDetailLabel;
  [*&v130[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalDistanceDetailLabel] setHidden_];
  v221 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_doneButton;
  [*&v130[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_doneButton] addTarget:v130 action:sel_doneButtonTapped forControlEvents:0x2000];
  v237 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_saveButton;
  v132 = *&v130[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_saveButton];
  [v132 addTarget:v130 action:sel_saveButtonTapped forControlEvents:0x2000];

  v133 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v133 setTranslatesAutoresizingMaskIntoConstraints_];
  v135 = *MEMORY[0x277D768C8];
  v134 = *(MEMORY[0x277D768C8] + 8);
  v136 = *(MEMORY[0x277D768C8] + 16);
  v137 = *(MEMORY[0x277D768C8] + 24);
  v138 = [v133 leadingAnchor];
  v139 = [v130 leadingAnchor];
  v140 = [v138 constraintEqualToAnchor:v139 constant:v134];

  LODWORD(v141) = 1148846080;
  [v140 setPriority_];
  v142 = v140;
  v143 = [v133 trailingAnchor];
  v144 = [v130 trailingAnchor];
  v145 = [v143 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v146) = 1148846080;
  [v145 setPriority_];
  v147 = v145;
  v225 = v133;
  v148 = [v133 topAnchor];
  v149 = [v130 &selRef_setLineBreakMode_];
  v150 = [v148 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v151) = 1148846080;
  [v150 setPriority_];
  v152 = [v133 bottomAnchor];
  v153 = [v130 &selRef_secondaryLabel + 5];
  v154 = [v152 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v155) = 1148846080;
  [v154 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v222 = swift_allocObject();
  *(v222 + 16) = xmmword_20C14FE90;
  *(v222 + 32) = v142;
  *(v222 + 40) = v147;
  *(v222 + 48) = v150;
  *(v222 + 56) = v154;

  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_20C14F580;
  v157 = *&v130[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_titleLabel];
  *(v156 + 32) = v157;
  v158 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v159 = v157;
  v160 = sub_20C13CC54();

  v161 = [v158 initWithArrangedSubviews_];

  v162 = v161;
  [v162 setTranslatesAutoresizingMaskIntoConstraints_];
  [v162 setAxis_];
  [v162 setAlignment_];
  v239 = v162;
  [v162 setDistribution_];
  v163 = swift_allocObject();
  *(v163 + 16) = xmmword_20C151DF0;
  *(v163 + 32) = v162;
  v219 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_subtitleLabel;
  v164 = *&v130[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_subtitleLabel];
  *(v163 + 40) = v164;
  v165 = *&v130[v228];
  *(v163 + 48) = v165;
  v166 = *&v130[v226];
  *(v163 + 56) = v166;
  v167 = *&v230[v130];
  *(v163 + 64) = v167;
  v168 = *&v234[v130];
  *(v163 + 72) = v168;
  v169 = *&v130[v232];
  *(v163 + 80) = v169;
  v170 = *&v220[v130];
  *(v163 + 88) = v170;
  v171 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v172 = v164;
  v173 = v165;
  v174 = v166;
  v175 = v167;
  v176 = v168;
  v177 = v169;
  v178 = v170;
  v179 = sub_20C13CC54();

  v180 = [v171 initWithArrangedSubviews_];

  v181 = v180;
  [v181 setTranslatesAutoresizingMaskIntoConstraints_];
  [v181 setSpacing_];
  [v181 setAxis_];
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_20C151490;
  v183 = *&v130[v221];
  *(v182 + 32) = v183;
  v184 = *&v237[v130];
  *(v182 + 40) = v184;
  v185 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v186 = v183;
  v187 = v184;
  v188 = sub_20C13CC54();

  v189 = [v185 initWithArrangedSubviews_];

  v190 = v189;
  [v190 setTranslatesAutoresizingMaskIntoConstraints_];
  [v190 setSpacing_];
  [v190 setAxis_];
  [v130 addSubview_];
  [v225 addSubview_];
  [v225 addSubview_];
  [v181 setCustomSpacing:v239 afterView:4.0];
  [v181 setCustomSpacing:*&v130[v219] afterView:60.0];
  [v181 setCustomSpacing:*&v130[v228] afterView:0.0];
  [v181 setCustomSpacing:*&v130[v226] afterView:40.0];
  [v181 setCustomSpacing:*&v230[v130] afterView:0.0];
  [v181 setCustomSpacing:*&v234[v130] afterView:40.0];
  [v181 setCustomSpacing:*&v130[v232] afterView:0.0];
  v235 = objc_opt_self();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150060;
  v192 = [*&v130[v221] widthAnchor];
  v193 = [v192 constraintEqualToConstant_];

  *(inited + 32) = v193;
  v194 = [*&v237[v130] widthAnchor];
  v195 = [v194 constraintEqualToConstant_];

  *(inited + 40) = v195;
  v196 = [v181 topAnchor];
  v197 = [v225 topAnchor];
  v198 = [v196 constraintEqualToAnchor:v197 constant:40.0];

  *(inited + 48) = v198;
  v199 = [v181 leadingAnchor];
  v200 = [v225 leadingAnchor];
  v201 = [v199 constraintEqualToAnchor:v200 constant:40.0];

  *(inited + 56) = v201;
  v202 = [v181 trailingAnchor];
  v203 = [v225 trailingAnchor];
  v204 = [v202 constraintEqualToAnchor:v203 constant:-40.0];

  *(inited + 64) = v204;
  v205 = [v181 bottomAnchor];
  v206 = [v190 topAnchor];
  v207 = [v205 constraintLessThanOrEqualToAnchor_];

  *(inited + 72) = v207;
  v208 = [v190 leadingAnchor];
  v209 = [v181 leadingAnchor];
  v210 = [v208 constraintEqualToAnchor_];

  *(inited + 80) = v210;
  v211 = [v190 trailingAnchor];
  v212 = [v181 trailingAnchor];

  v213 = [v211 constraintEqualToAnchor_];
  *(inited + 88) = v213;
  v214 = [v190 bottomAnchor];

  v215 = [v130 bottomAnchor];
  v216 = [v214 constraintEqualToAnchor:v215 constant:-40.0];

  *(inited + 96) = v216;
  sub_20B8D9310(inited);
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v217 = sub_20C13CC54();

  [v235 activateConstraints_];

  return v130;
}

id sub_20BACB92C(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalEnergyTitleLabel);
  v5 = [a1 string];
  if (!v5)
  {
    sub_20C13C954();
    v5 = sub_20C13C914();
  }

  [v4 setText_];

  v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalEnergyDetailLabel);
  [v6 setAttributedText_];
  [v4 setHidden_];

  return [v6 setHidden_];
}

id sub_20BACBA1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSummaryQueueCompleteView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BACBB68()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v82 = objc_opt_self();
  v83 = ObjCClassFromMetadata;
  v3 = [v82 bundleForClass_];
  sub_20C132964();

  v4 = sub_20C13C914();
  [v1 setText_];

  v84 = objc_opt_self();
  v5 = [v84 whiteColor];
  [v1 setTextColor_];

  v6 = *MEMORY[0x277D76A20];
  v85 = *MEMORY[0x277D74368];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:0];
  v9 = [v8 fontDescriptorWithSymbolicTraits_];
  if (v9)
  {
    v10 = v9;

    v8 = v10;
  }

  v11 = [v8 fontDescriptorWithDesign_];
  if (v11)
  {
    v12 = v11;

    v8 = v12;
  }

  v13 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_titleLabel;
  v14 = objc_opt_self();
  v15 = [v14 fontWithDescriptor:v8 size:0.0];

  [v1 setFont_];
  [v1 setNumberOfLines_];
  LODWORD(v16) = 1148846080;
  [v1 setContentCompressionResistancePriority:0 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v17];
  v18 = sub_20C13C914();
  [v1 setAccessibilityIdentifier_];

  *(v0 + v13) = v1;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [v84 secondaryLabelColor];
  [v19 setTextColor_];

  v21 = [v7 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v22 = [v21 fontDescriptorWithSymbolicTraits_];
  if (v22)
  {
    v23 = v22;

    v21 = v23;
  }

  v24 = [v21 fontDescriptorWithDesign_];
  if (v24)
  {
    v25 = v24;

    v21 = v25;
  }

  v26 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_subtitleLabel;
  v27 = [v14 fontWithDescriptor:v21 size:0.0];

  [v19 setFont_];
  [v19 setNumberOfLines_];
  LODWORD(v28) = 1148846080;
  [v19 setContentCompressionResistancePriority:0 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v29];

  *(v0 + v26) = v19;
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  v31 = [v82 bundleForClass_];
  sub_20C132964();

  v32 = sub_20C13C914();
  [v30 setText_];

  v33 = [v84 secondaryLabelColor];
  [v30 setTextColor_];

  v34 = *MEMORY[0x277D76940];
  v35 = [v7 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = [v35 fontDescriptorWithDesign_];
  if (v38)
  {
    v39 = v38;

    v35 = v39;
  }

  v40 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeTitleLabel;
  v41 = [v14 fontWithDescriptor:v35 size:0.0];

  [v30 setFont_];
  LODWORD(v42) = 1148846080;
  [v30 setContentCompressionResistancePriority:0 forAxis:v42];
  LODWORD(v43) = 1148846080;
  [v30 setContentCompressionResistancePriority:1 forAxis:v43];

  *(v0 + v40) = v30;
  v44 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeDetailLabel;
  v45 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v46) = 1148846080;
  [v45 setContentCompressionResistancePriority:0 forAxis:v46];
  LODWORD(v47) = 1148846080;
  [v45 setContentCompressionResistancePriority:1 forAxis:v47];

  *(v0 + v44) = v45;
  v48 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v48 setTranslatesAutoresizingMaskIntoConstraints_];
  v49 = [v84 secondaryLabelColor];
  [v48 setTextColor_];

  v50 = [v7 preferredFontDescriptorWithTextStyle:v34 compatibleWithTraitCollection:0];
  v51 = [v50 fontDescriptorWithSymbolicTraits_];
  if (v51)
  {
    v52 = v51;

    v50 = v52;
  }

  v53 = [v50 fontDescriptorWithDesign_];
  if (v53)
  {
    v54 = v53;

    v50 = v54;
  }

  v55 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalEnergyTitleLabel;
  v56 = [v14 fontWithDescriptor:v50 size:0.0];

  [v48 setFont_];
  LODWORD(v57) = 1148846080;
  [v48 setContentCompressionResistancePriority:0 forAxis:v57];
  LODWORD(v58) = 1148846080;
  [v48 setContentCompressionResistancePriority:1 forAxis:v58];

  *(v0 + v55) = v48;
  v59 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalEnergyDetailLabel;
  v60 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v60 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v61) = 1148846080;
  [v60 setContentCompressionResistancePriority:0 forAxis:v61];
  LODWORD(v62) = 1148846080;
  [v60 setContentCompressionResistancePriority:1 forAxis:v62];

  *(v0 + v59) = v60;
  v63 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v63 setTranslatesAutoresizingMaskIntoConstraints_];
  v64 = [v82 bundleForClass_];
  sub_20C132964();

  v65 = sub_20C13C914();
  [v63 setText_];

  v66 = [v84 secondaryLabelColor];
  [v63 setTextColor_];

  v67 = [v7 preferredFontDescriptorWithTextStyle:v34 compatibleWithTraitCollection:0];
  v68 = [v67 fontDescriptorWithSymbolicTraits_];
  if (v68)
  {
    v69 = v68;

    v67 = v69;
  }

  v70 = [v67 fontDescriptorWithDesign_];
  if (v70)
  {
    v71 = v70;

    v67 = v71;
  }

  v72 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalDistanceTitleLabel;
  v73 = [v14 fontWithDescriptor:v67 size:0.0];

  [v63 setFont_];
  LODWORD(v74) = 1148846080;
  [v63 setContentCompressionResistancePriority:0 forAxis:v74];
  LODWORD(v75) = 1148846080;
  [v63 setContentCompressionResistancePriority:1 forAxis:v75];

  *(v0 + v72) = v63;
  v76 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalDistanceDetailLabel;
  v77 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v77 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v78) = 1148846080;
  [v77 setContentCompressionResistancePriority:0 forAxis:v78];
  LODWORD(v79) = 1148846080;
  [v77 setContentCompressionResistancePriority:1 forAxis:v79];

  *(v0 + v76) = v77;
  v80 = (v0 + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_onDoneButtonTapped);
  *v80 = 0;
  v80[1] = 0;
  v81 = (v0 + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_onSaveButtonTapped);
  *v81 = 0;
  v81[1] = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BACC76C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC9SeymourUI21SessionRingsPresenter_activityRings;
  v4 = sub_20C133D84();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v5 = v11[0];
  v6 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768850, &qword_20C176E30);
  sub_20C133AA4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + 48) = sub_20C13A914();
  sub_20B51CC64(v11, v10);
  type metadata accessor for SessionRingCompletionObserver(0);
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = sub_20C0E23B8(v7, v6, v10);
  swift_unknownObjectRelease();
  *(v2 + OBJC_IVAR____TtC9SeymourUI21SessionRingsPresenter_ringCompletionObserver) = v8;
  sub_20BACC910(v5, v6);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v2;
}

uint64_t sub_20BACC910(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_20C13ABE4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  sub_20C13A7E4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769FF0, &unk_20C16B890);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C769FF8, &qword_27C769FF0, &unk_20C16B890, &unk_20C18CF68);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A000, &qword_20C17BF60);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C76A008, &qword_27C76A000, &qword_20C17BF60, &unk_20C18CF68);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A010, &qword_20C16B8A0);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C76A018, &qword_27C76A010, &qword_20C16B8A0, &unk_20C18CF68);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76A020, &qword_20C17BF40);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C76A028, &qword_27C76A020, &qword_20C17BF40, &unk_20C18CF68);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767308, &qword_20C160550);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767310, &qword_27C767308, &qword_20C160550, &unk_20C18CF68);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767318, &qword_20C160558);
  swift_allocObject();
  swift_weakInit();
  sub_20B6D6ABC(&qword_27C767320, &qword_27C767318, &qword_20C160558, &unk_20C178168);
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_20BACCEAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C133D84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13ABC4();
    sub_20BACD748(v5);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_20BACCFB8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_20C133D84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C137EA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13A7D4();
    sub_20C137D74();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      (*(v10 + 8))(v12, v9);
      return sub_20B7829D8(v4);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      sub_20BACD748(v8);

      (*(v6 + 8))(v8, v5);
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

double sub_20BACD230(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 24);
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(a2, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v7 + 40);
      v11 = swift_getObjectType();
      (*(v10 + 16))(a2, v11, v10);
      swift_unknownObjectRelease();
    }

    [type metadata accessor for AccessibilitySessionRingsPresenter() *a3];
  }

  return result;
}

void sub_20BACD328(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C133D14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13AB64();
  v7 = sub_20C133CE4();
  v9 = v8;
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v19[0] = v7;
  v19[1] = v9;
  v20 = v11 & 1;
  v21 = 4;
  sub_20B8C38A0();
  sub_20B8C38F4();
  LOBYTE(v6) = sub_20C133C04();
  sub_20B583F4C(v7, v9, v11 & 1);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767308, &qword_20C160550) + 28));
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v13 + 24);
        ObjectType = swift_getObjectType();
        (*(v15 + 24))(ObjectType, v15, v14);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v13 + 40);
        v18 = swift_getObjectType();
        (*(v17 + 24))(v18, v17, v14);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_20BACD538(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C133D14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13AB64();
  v7 = sub_20C133CE4();
  v9 = v8;
  v11 = v10;
  (*(v4 + 8))(v6, v3);
  v19[0] = v7;
  v19[1] = v9;
  v20 = v11 & 1;
  v21 = 4;
  sub_20B8C38A0();
  sub_20B8C38F4();
  LOBYTE(v6) = sub_20C133C04();
  sub_20B583F4C(v7, v9, v11 & 1);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767318, &qword_20C160558) + 28));
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v13 + 24);
        ObjectType = swift_getObjectType();
        (*(v15 + 32))(ObjectType, v15, v14);
        swift_unknownObjectRelease();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v13 + 40);
        v18 = swift_getObjectType();
        (*(v17 + 32))(v18, v17, v14);
        swift_unknownObjectRelease();
      }
    }
  }
}

double sub_20BACD748(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_20C133D84();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC9SeymourUI21SessionRingsPresenter_activityRings;
  swift_beginAccess();
  sub_20BACDB88(v6, v2 + v9);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(a1, 1, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v2 + 40);
    v14 = swift_getObjectType();
    (*(v13 + 40))(a1, 1, v14, v13);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BACD8FC()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  sub_20B7829D8(v0 + OBJC_IVAR____TtC9SeymourUI21SessionRingsPresenter_activityRings);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionRingsPresenter(uint64_t a1)
{
  result = qword_27C769FE0;
  if (!qword_27C769FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BACD9DC(uint64_t a1)
{
  sub_20BACDA88(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BACDA88(uint64_t a1)
{
  if (!qword_27C766DC8)
  {
    sub_20C133D84();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C766DC8);
    }
  }
}

id sub_20BACDB30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessibilitySessionRingsPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BACDB88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BACDCB8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0, &qword_20C14FCC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = (*(a2 + 8))(a1, a2);
  *(inited + 40) = v5;
  v6 = sub_20BE8C2E8(inited);
  swift_setDeallocating();
  sub_20B5D9804(inited + 32);
  return v6;
}

unint64_t sub_20BACDD80()
{
  result = qword_27C76A030;
  if (!qword_27C76A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A030);
  }

  return result;
}

void sub_20BACDDD4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_imageView;
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v11 = [v10 layer];
  [v11 setCornerRadius_];

  [v10 setClipsToBounds_];
  [v10 setContentMode_];
  [v10 setClipsToBounds_];
  LODWORD(v12) = 1148846080;
  [v10 setContentCompressionResistancePriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v10 setContentCompressionResistancePriority:1 forAxis:v13];

  *&v4[v9] = v10;
  v14 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v14 setLineWidth_];
  v15 = [objc_opt_self() keyColors];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 nonGradientTextColor];

    if (v17)
    {
      v18 = OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_borderLayer;
      v19 = [v17 CGColor];
      [v14 setStrokeColor_];

      v20 = [objc_opt_self() clearColor];
      v21 = [v20 CGColor];
      [v14 setFillColor_];

      *&v4[v18] = v14;
      v26.receiver = v4;
      v26.super_class = type metadata accessor for SummaryTrainerView();
      v22 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
      v23 = *&v22[OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_imageView];
      v24 = v22;
      [v24 addSubview_];
      v25 = [v24 layer];
      [v25 addSublayer_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_20BACE114()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SummaryTrainerView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_imageView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_borderLayer];
  [v0 bounds];
  [v2 setFrame_];
  [v2 bounds];
  v7 = [objc_opt_self() bezierPathWithRoundedRect:v3 cornerRadius:{v4, v5, v6, 45.0}];
  v8 = [v7 CGPath];

  [v2 setPath_];
}

id sub_20BACE290()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryTrainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BACE334()
{
  v1 = OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = [v2 layer];
  [v3 setCornerRadius_];

  [v2 setClipsToBounds_];
  [v2 setContentMode_];
  [v2 setClipsToBounds_];
  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v2 setContentCompressionResistancePriority:1 forAxis:v5];

  *(v0 + v1) = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  [v6 setLineWidth_];
  v7 = [objc_opt_self() keyColors];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  v9 = [v7 nonGradientTextColor];

  if (!v9)
  {
    __break(1u);
  }

  v10 = OBJC_IVAR____TtC9SeymourUI18SummaryTrainerView_borderLayer;
  v11 = [v9 CGColor];
  [v6 setStrokeColor_];

  v12 = [objc_opt_self() clearColor];
  v13 = [v12 CGColor];
  [v6 setFillColor_];

  *(v0 + v10) = v6;
  sub_20C13DE24();
  __break(1u);
}

double NavigationSharingURLInfo.copyWith(url:referrerURL:sourceApplication:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v35 = a4;
  v36 = a3;
  v33 = a2;
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = sub_20C132C14();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B6A6860(a1, v16);
  v21 = *(v18 + 48);
  if (v21(v16, 1, v17) == 1)
  {
    v22 = v6;
    (*(v18 + 16))(v20, v6, v17);
    if (v21(v16, 1, v17) != 1)
    {
      sub_20B9E801C(v16);
    }
  }

  else
  {
    v22 = v6;
    (*(v18 + 32))(v20, v16, v17);
  }

  sub_20B6A6860(v33, v10);
  v23 = v21(v10, 1, v17);
  v24 = v35;
  if (v23 == 1)
  {
    v25 = type metadata accessor for NavigationSharingURLInfo(0);
    sub_20B6A6860(v22 + *(v25 + 20), v13);
    if (v21(v10, 1, v17) != 1)
    {
      sub_20B9E801C(v10);
    }
  }

  else
  {
    (*(v18 + 32))(v13, v10, v17);
    (*(v18 + 56))(v13, 0, 1, v17);
  }

  v26 = v24;
  v27 = v36;
  if (!v24)
  {
    v28 = (v22 + *(type metadata accessor for NavigationSharingURLInfo(0) + 24));
    v27 = *v28;
    v26 = v28[1];
  }

  v29 = v34;
  (*(v18 + 32))(v34, v20, v17);
  v30 = type metadata accessor for NavigationSharingURLInfo(0);
  sub_20B6A69B4(v13, v29 + *(v30 + 20));
  v31 = (v29 + *(v30 + 24));
  *v31 = v27;
  v31[1] = v26;

  return result;
}

char *sub_20BACE8CC(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20, &unk_20C15DB90);
  MEMORY[0x28223BE20](v9 - 8);
  v101 = &v101 - v10;
  v11 = sub_20C13BC44();
  v102 = *(v11 - 1);
  v103 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13BBC4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_itemInfo;
  v19 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_avatarViewController;
  *&v4[v20] = [objc_allocWithZone(SMUAvatarViewController) init];
  v21 = &v4[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_layout];
  __asm { FMOV            V1.2D, #5.0 }

  *v21 = xmmword_20C16B9A0;
  *(v21 + 1) = _Q1;
  *(v21 + 2) = vdupq_n_s64(0x404C000000000000uLL);
  *(v21 + 6) = 0x4030000000000000;
  v27 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_stackView;
  v28 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v27] = v28;
  v29 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_accountStackView;
  v30 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v29] = v30;
  v31 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_titleLabel;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v31] = v32;
  v33 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_subtitleLabel;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v33] = v34;
  v35 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_userImageView;
  v36 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v35] = v36;
  v37 = type metadata accessor for AccountSettingAvatarRowCell(0);
  v108.receiver = v4;
  v108.super_class = v37;
  v38 = objc_msgSendSuper2(&v108, sel_initWithFrame_, a1, a2, a3, a4);
  v39 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v40 = v38;
  v41 = [v39 init];
  v42 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.21 alpha:1.0];
  v104 = v41;
  [v41 setBackgroundColor_];

  v43 = v40;
  [v43 setSelectedBackgroundView_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28, &unk_20C15AA40);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  (*(v15 + 104))(v17, *MEMORY[0x277D74A98], v14);
  v44 = sub_20C13BBF4();
  (*(*(v44 - 8) + 56))(v101, 1, 1, v44);
  v45 = v43;
  sub_20C13BC34();
  sub_20C13BC04();
  (v102)[1](v13, v103);
  (*(v15 + 8))(v17, v14);
  sub_20C13D464();

  v46 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.11 alpha:1.0];
  [v45 setBackgroundColor_];

  v47 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_stackView;
  [*&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_stackView] setAlignment_];
  [*&v45[v47] setAxis_];
  v48 = [v45 contentView];
  [v48 addSubview_];

  v49 = [*&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_avatarViewController] view];
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  v50 = [v49 layer];
  [v50 setShouldRasterize_];

  v51 = [v49 layer];
  v52 = [objc_opt_self() mainScreen];
  [v52 scale];
  v54 = v53;

  [v51 setRasterizationScale_];
  v55 = *&v45[v47];
  v103 = v49;
  [v55 addArrangedSubview_];
  v56 = &v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_layout];
  [*&v45[v47] setCustomSpacing:v49 afterView:*&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_layout + 48]];
  v57 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_accountStackView;
  [*&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_accountStackView] setAlignment_];
  [*&v45[v57] setAxis_];
  [*&v45[v57] setDistribution_];
  [*&v45[v47] &selRef:*&v45[v57] setEnabled:?];
  v58 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_titleLabel;
  v59 = *&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_titleLabel];
  v60 = objc_opt_self();
  v61 = v59;
  v62 = [v60 whiteColor];
  [v61 setTextColor_];

  v63 = *&v45[v58];
  v64 = objc_opt_self();
  v65 = *MEMORY[0x277D76918];
  v66 = v63;
  v67 = [v64 preferredFontForTextStyle_];
  [v66 setFont_];

  [*&v45[v57] addArrangedSubview_];
  v68 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_subtitleLabel;
  v69 = *&v45[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_subtitleLabel];
  v70 = [v60 whiteColor];
  [v69 setTextColor_];

  v71 = *MEMORY[0x277D76968];
  v72 = *&v45[v68];
  v73 = [v64 preferredFontForTextStyle_];
  [v72 setFont_];

  [*&v45[v57] addArrangedSubview_];
  v102 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_20C150AE0;
  v75 = [*&v45[v47] leadingAnchor];
  v76 = [v45 contentView];
  v77 = [v76 leadingAnchor];

  v78 = [v75 constraintEqualToAnchor:v77 constant:v56[1]];
  *(v74 + 32) = v78;
  v79 = [*&v45[v47] trailingAnchor];
  v80 = [v45 contentView];
  v81 = [v80 trailingAnchor];

  v82 = [v79 constraintEqualToAnchor:v81 constant:-v56[3]];
  *(v74 + 40) = v82;
  v83 = [*&v45[v47] topAnchor];
  v84 = [v45 contentView];
  v85 = [v84 topAnchor];

  v86 = [v83 constraintEqualToAnchor:v85 constant:*v56];
  *(v74 + 48) = v86;
  v87 = [*&v45[v47] bottomAnchor];
  v88 = [v45 contentView];

  v89 = [v88 bottomAnchor];
  v90 = [v87 constraintEqualToAnchor:v89 constant:-v56[2]];

  type metadata accessor for UILayoutPriority(0);
  v105 = 1065353216;
  v106 = 1148846080;
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v91) = v107;
  [v90 setPriority_];
  *(v74 + 56) = v90;
  v92 = [*&v45[v47] heightAnchor];
  v93 = [v92 constraintGreaterThanOrEqualToConstant_];

  *(v74 + 64) = v93;
  v94 = v103;
  v95 = [v103 widthAnchor];
  v96 = [v95 constraintEqualToConstant_];

  *(v74 + 72) = v96;
  v97 = [v94 heightAnchor];
  v98 = [v97 constraintEqualToConstant_];

  *(v74 + 80) = v98;
  sub_20B5E29D0();
  v99 = sub_20C13CC54();

  [v102 activateConstraints_];

  return v45;
}

id sub_20BACF72C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountSettingAvatarRowCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccountSettingAvatarRowCell(uint64_t a1)
{
  result = qword_2811012E8;
  if (!qword_2811012E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BACF874(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BACF940(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BACF98C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BACF9E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BACFA48(uint64_t *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 >> 57) & 0x78 | a1 & 7)
  {
    sub_20C13B534();

    v8 = v1;
    v9 = sub_20C13BB74();
    v10 = sub_20C13D1D4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v31 = v3;
      v12 = v11;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = a1;
      v33 = v14;
      *v12 = 138543618;
      *(v12 + 4) = v8;
      *v13 = v8;
      *(v12 + 12) = 2082;
      v15 = sub_20B5F66D0();
      v16 = v8;
      v17 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v15);
      v19 = sub_20B51E694(v17, v18, &v33);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_20B517000, v9, v10, "Attempted to configure %{public}@ with item: %{public}s", v12, 0x16u);
      sub_20B520158(v13, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x20F2F6A40](v14, -1, -1);
      MEMORY[0x20F2F6A40](v12, -1, -1);

      (*(v4 + 8))(v7, v31);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }
  }

  else
  {
    v20 = a1[2];
    v21 = a1[4];
    v22 = a1[6];
    v23 = *&v1[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_avatarViewController];
    [v23 setContact_];
    v24 = [v23 view];
    [v24 setHidden_];

    v25 = *&v1[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_titleLabel];
    if (v21)
    {
      v26 = sub_20C13C914();
    }

    else
    {
      v26 = 0;
    }

    [v25 setText_];

    v27 = *&v1[OBJC_IVAR____TtC9SeymourUI27AccountSettingAvatarRowCell_subtitleLabel];
    if (v22)
    {
      v28 = sub_20C13C914();
    }

    else
    {
      v28 = 0;
    }

    v31 = v28;
    [v27 setText_];
    v29 = v31;
  }
}