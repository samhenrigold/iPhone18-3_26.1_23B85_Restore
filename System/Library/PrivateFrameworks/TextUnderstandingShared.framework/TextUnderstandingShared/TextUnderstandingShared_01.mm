uint64_t sub_26EF87D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26EF8D6B4();
  v5 = swift_allocObject();
  sub_26EF8D708(v3, v5 + 16);
  return sub_26EF9C350();
}

uint64_t sub_26EF87E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF9C300();
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  swift_unknownObjectWeakLoadStrong();
  v10 = v3[6];
  v11 = v7;

  sub_26EF87F20(v6, MEMORY[0x277D84F90], v11, v8, v9, v10, v14);
  type metadata accessor for TrialDecoderImpl.KeyedContainer(0, a2, a3, v12);
  swift_getWitnessTable();
  return sub_26EF9C690();
}

uint64_t sub_26EF87F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[6] = a7;
  swift_unknownObjectWeakInit();

  return swift_unknownObjectRelease();
}

uint64_t sub_26EF87F70@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for TrialDecoderImpl.UnkeyedContainer;
  a1[4] = sub_26EF880C0();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = 0;
  *(result + 32) = 257;
  *(result + 40) = 0;
  return result;
}

unint64_t sub_26EF87FDC@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for TrialDecoderImpl.SingleValueContainer;
  result = sub_26EF8806C();
  a1[4] = result;
  *a1 = MEMORY[0x277D84F90];
  return result;
}

unint64_t sub_26EF8806C()
{
  result = qword_2806CFE28;
  if (!qword_2806CFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CFE28);
  }

  return result;
}

unint64_t sub_26EF880C0()
{
  result = qword_2806CFE30;
  if (!qword_2806CFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CFE30);
  }

  return result;
}

BOOL sub_26EF88114(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_26EF9C8C0();
  v4 = sub_26EF9C130();

  v5 = sub_26EF9C130();
  v6 = [v3 levelForFactor:v4 withNamespaceName:v5];

  if (v6)
  {
  }

  return v6 != 0;
}

uint64_t sub_26EF881B4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_26EF9C8C0();
  v4 = sub_26EF9C130();

  v5 = sub_26EF9C130();
  v6 = [v3 levelForFactor:v4 withNamespaceName:v5];

  if (v6)
  {
    v7 = [v6 BOOLeanValue];
  }

  else
  {
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000020, 0x800000026EFA1F40);
    sub_26EF9C750();
    v7 = 0;
    sub_26EF8D8D8();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 0;
    swift_willThrow();
  }

  return v7 & 1;
}

uint64_t sub_26EF8830C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_26EF9C8C0();
  v4 = sub_26EF9C130();

  v5 = sub_26EF9C130();
  v6 = [v3 levelForFactor:v4 withNamespaceName:v5];

  if (v6 && (v7 = [v6 stringValue], v6, v7))
  {
    v8 = sub_26EF9C160();

    return v8;
  }

  else
  {
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000020, 0x800000026EFA1F40);
    sub_26EF9C750();
    sub_26EF8D8D8();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }
}

void sub_26EF884A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_26EF9C8C0();
  v4 = sub_26EF9C130();

  v5 = sub_26EF9C130();
  v6 = [v3 levelForFactor:v4 withNamespaceName:v5];

  if (v6)
  {
    [v6 doubleValue];
  }

  else
  {
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD00000000000001FLL, 0x800000026EFA1F20);
    sub_26EF9C750();
    sub_26EF8D8D8();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0xE000000000000000;
    *(v7 + 16) = 0;
    swift_willThrow();
  }
}

void sub_26EF88608(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v45 = *(v5 - 8);
  v46 = v2;
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = sub_26EF9C030();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v46;
  sub_26EF884A4(a1, a2);
  if (!v15)
  {
    v44 = v8;
    v17 = v45;
    v46 = v12;
    if (fabs(v16) <= 3.40282347e38)
    {
      v42 = 0;
      v43 = v11;
      v21 = v14;
      sub_26EF9C020();
      v22 = v17;
      v23 = *(v17 + 16);
      v24 = v10;
      v25 = a1;
      v26 = v5;
      v27 = v23;
      v23(v10, v25, v5);
      v28 = sub_26EF9C010();
      v29 = sub_26EF9C370();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v41 = v21;
        v40 = v29;
        v31 = v30;
        v39 = swift_slowAlloc();
        v47 = v39;
        *v31 = 136315138;
        v32 = v44;
        v27(v44, v24, v26);
        v33 = *(v22 + 8);
        v33(v24, v26);
        v34 = sub_26EF9C6A0();
        v36 = v35;
        v33(v32, v26);
        v37 = sub_26EF7E624(v34, v36, &v47);

        *(v31 + 4) = v37;
        _os_log_impl(&dword_26EF75000, v28, v40, "Decoded factor %s into Float so be aware of possible precision loss", v31, 0xCu);
        v38 = v39;
        sub_26EF79770(v39);
        MEMORY[0x2743859D0](v38, -1, -1);
        MEMORY[0x2743859D0](v31, -1, -1);

        (*(v46 + 8))(v41, v43);
      }

      else
      {
        (*(v22 + 8))(v24, v26);

        (*(v46 + 8))(v21, v43);
      }
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000017, 0x800000026EFA1F00);
      sub_26EF9C340();
      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v18 = v47;
      v19 = v48;
      sub_26EF8D8D8();
      swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v19;
      *(v20 + 16) = 0;
      swift_willThrow();
    }
  }
}

id sub_26EF88A3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_26EF88B94(a1, a2);
  v4 = v3;
  if (!v2 && v3 + 0x7FFFFFFFFFFFFFFFLL > 0xFFFFFFFFFFFFFFFDLL)
  {
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
    sub_26EF9C750();
    MEMORY[0x2743848A0](0xD000000000000015, 0x800000026EFA1EE0);
    v5 = sub_26EF9C6A0();
    MEMORY[0x2743848A0](v5);

    MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
    sub_26EF8D8D8();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0xE000000000000000;
    *(v6 + 16) = 0;
    swift_willThrow();
  }

  return v4;
}

id sub_26EF88B94(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  sub_26EF9C8C0();
  v4 = sub_26EF9C130();

  v5 = sub_26EF9C130();
  v6 = [v3 levelForFactor:v4 withNamespaceName:v5];

  if (v6)
  {
    v7 = [v6 longValue];

    return v7;
  }

  else
  {
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD00000000000001ELL, 0x800000026EFA1DE0);
    sub_26EF9C750();
    sub_26EF8D8D8();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 0;
    return swift_willThrow();
  }
}

id sub_26EF88CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v4;
    if (v4 + 127 >= 0xFE)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000016, 0x800000026EFA1EC0);
      v5 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v5);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v6 = 0;
      *(v6 + 8) = 0xE000000000000000;
      *(v6 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

id sub_26EF88E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v4;
    if (v4 + 0x7FFF >= 0xFFFE)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000017, 0x800000026EFA1EA0);
      v5 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v5);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v6 = 0;
      *(v6 + 8) = 0xE000000000000000;
      *(v6 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

id sub_26EF88FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v4;
    if (v4 + 0x7FFFFFFF >= 0xFFFFFFFE)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000017, 0x800000026EFA1E80);
      v5 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v5);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v6 = 0;
      *(v6 + 8) = 0xE000000000000000;
      *(v6 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

id sub_26EF89114(uint64_t a1, uint64_t a2)
{
  result = sub_26EF88B94(a1, a2);
  if (!v2)
  {
    if (result > 0)
    {
      __break(1u);
    }

    else
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000016, 0x800000026EFA1E60);
      v4 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v4);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      sub_26EF8D8D8();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 0xE000000000000000;
      *(v5 + 16) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

id sub_26EF89264(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v4;
    if (v4 >= 0xFF)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000017, 0x800000026EFA1E40);
      v5 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v5);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v6 = 0;
      *(v6 + 8) = 0xE000000000000000;
      *(v6 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

id sub_26EF893B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v4;
    if (v4 >= 0xFFFF)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000018, 0x800000026EFA1E20);
      v5 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v5);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v6 = 0;
      *(v6 + 8) = 0xE000000000000000;
      *(v6 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

id sub_26EF89508(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF88B94(a1, a2);
  if (!v3)
  {
    v2 = v4;
    if (v4 >= 0xFFFFFFFF)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000018, 0x800000026EFA1E00);
      v5 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v5);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      v2 = 0;
      sub_26EF8D8D8();
      swift_allocError();
      *v6 = 0;
      *(v6 + 8) = 0xE000000000000000;
      *(v6 + 16) = 0;
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_26EF8965C(uint64_t a1, uint64_t a2)
{
  result = sub_26EF88B94(a1, a2);
  if (!v2)
  {
    if (result < 0)
    {
      sub_26EF9C5E0();
      MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1D80);
      sub_26EF9C750();
      MEMORY[0x2743848A0](0xD000000000000018, 0x800000026EFA1DA0);
      v4 = sub_26EF9C6A0();
      MEMORY[0x2743848A0](v4);

      MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1DC0);
      sub_26EF8D8D8();
      swift_allocError();
      *v5 = 0;
      *(v5 + 8) = 0xE000000000000000;
      *(v5 + 16) = 0;
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_26EF897A8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v103 = a2;
  v116 = *MEMORY[0x277D85DE8];
  v5 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  MEMORY[0x28223BE20](v5 - 8);
  v106 = &v94 - v6;
  v7 = sub_26EF784C0(&qword_2806CFE40, &qword_26EF9EB20);
  MEMORY[0x28223BE20](v7 - 8);
  v100 = &v94 - v8;
  v9 = sub_26EF9BE40();
  v101 = *(v9 - 8);
  v102 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v98 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v99 = &v94 - v12;
  v13 = sub_26EF9C030();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v107 = a1;
  v104 = v18;
  v105 = v17;
  v19 = sub_26EF9C8C0();
  v21 = v20;
  v22 = *(v2 + 16);
  v23 = sub_26EF9C130();
  v24 = sub_26EF9C130();
  v25 = [v22 levelForFactor:v23 withNamespaceName:v24];

  if (!v25)
  {
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_26EF9C5E0();

    v114 = 0xD00000000000002ALL;
    v115 = 0x800000026EFA1C70;
    MEMORY[0x2743848A0](v19, v21);

    v55 = v114;
    v56 = v115;
    sub_26EF8D8D8();
    v57 = swift_allocError();
    *v58 = v55;
    *(v58 + 8) = v56;
    *(v58 + 16) = 0;
    v110 = v57;
    swift_willThrow();
    return;
  }

  v26 = v25;
  v109 = v19;
  v27 = [v25 levelOneOfCase];
  sub_26EF9C020();

  v28 = sub_26EF9C010();
  v29 = sub_26EF9C370();

  v30 = os_log_type_enabled(v28, v29);
  v108 = v21;
  if (v30)
  {
    v97 = v26;
    v95 = v27 == 100;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v96 = v27;
    v33 = v32;
    v114 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_26EF7E624(v109, v21, &v114);
    *(v31 + 12) = 1024;
    *(v31 + 14) = v95;
    v34 = v97;
    _os_log_impl(&dword_26EF75000, v28, v29, "Factor %s is interpreted as file(%{BOOL}d)", v31, 0x12u);
    sub_26EF79770(v33);
    v35 = v33;
    v27 = v96;
    MEMORY[0x2743859D0](v35, -1, -1);
    v36 = v31;
    v26 = v34;
    MEMORY[0x2743859D0](v36, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v37 = &selRef_fileValue;
  if (v27 != 100)
  {
    v37 = &selRef_directoryValue;
  }

  v38 = [v26 *v37];
  if (!v38)
  {
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_26EF9C5E0();

    v114 = 0xD00000000000001CLL;
    v115 = 0x800000026EFA1CA0;
    v59 = v26;
    MEMORY[0x2743848A0](v109, v108);

    v60 = v114;
    v61 = v115;
    sub_26EF8D8D8();
    v62 = swift_allocError();
    *v63 = v60;
    *(v63 + 8) = v61;
    *(v63 + 16) = 0;
    v110 = v62;
    swift_willThrow();

    return;
  }

  v39 = v38;
  v40 = [v39 hasAsset];
  v42 = v108;
  v41 = v109;
  if ((v40 & 1) == 0 && ![v39 isOnDemand])
  {
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_26EF9C5E0();
    v84 = v26;
    MEMORY[0x2743848A0](0xD00000000000001CLL, 0x800000026EFA1CA0);
    MEMORY[0x2743848A0](v41, v42);

    MEMORY[0x2743848A0](0xD000000000000047, 0x800000026EFA1CC0);
    v85 = v114;
    v86 = v115;
    sub_26EF8D8D8();
    v87 = swift_allocError();
    *v88 = v85;
    *(v88 + 8) = v86;
    *(v88 + 16) = 0;
    v110 = v87;
    swift_willThrow();

    goto LABEL_41;
  }

  v43 = v26;
  if (![v39 hasPath])
  {
    v64 = sub_26EF9C330();
    sub_26EF78FAC(v106, 1, 1, v64);
    v65 = v107;
    v66 = *(v107 - 8);
    (*(v66 + 16))(&v114, v3, v107);
    v67 = swift_allocObject();
    v67[2] = 0;
    v67[3] = 0;
    v68 = v104;
    v67[4] = v105;
    v67[5] = v68;
    (*(v66 + 32))(v67 + 6, &v114, v65);
    v67[13] = v41;
    v67[14] = v42;

    sub_26EF90E54();

    v114 = 0;
    v115 = 0xE000000000000000;
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD00000000000001CLL, 0x800000026EFA1CA0);
    MEMORY[0x2743848A0](v41, v42);

    MEMORY[0x2743848A0](0xD00000000000004CLL, 0x800000026EFA1D10);
    v69 = v114;
    v70 = v115;
    sub_26EF8D8D8();
    v71 = swift_allocError();
    *v72 = v69;
    *(v72 + 8) = v70;
    *(v72 + 16) = 0;
    v110 = v71;
    swift_willThrow();

LABEL_41:
LABEL_44:

    return;
  }

  v111 = v27 != 100;
  v44 = [objc_opt_self() defaultManager];
  v45 = [v39 path];
  if (!v45)
  {
    __break(1u);
    return;
  }

  v46 = v45;
  v47 = [v44 fileExistsAtPath:v45 isDirectory:&v111];

  if (!v47 || (((v27 == 100) ^ v111) & 1) == 0 || (v48 = [v39 path]) == 0)
  {
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD00000000000001CLL, 0x800000026EFA1CA0);
    MEMORY[0x2743848A0](v41, v42);

    MEMORY[0x2743848A0](0xD000000000000014, 0x800000026EFA1D60);
    if (v47)
    {
      v73 = 1702195828;
    }

    else
    {
      v73 = 0x65736C6166;
    }

    if (v47)
    {
      v74 = 0xE400000000000000;
    }

    else
    {
      v74 = 0xE500000000000000;
    }

    MEMORY[0x2743848A0](v73, v74);

    MEMORY[0x2743848A0](0x6365726944736920, 0xEE00282079726F74);
    if (v111)
    {
      v75 = 1702195828;
    }

    else
    {
      v75 = 0x65736C6166;
    }

    if (v111)
    {
      v76 = 0xE400000000000000;
    }

    else
    {
      v76 = 0xE500000000000000;
    }

    MEMORY[0x2743848A0](v75, v76);

    MEMORY[0x2743848A0](540877088, 0xE400000000000000);
    if (v27 == 100)
    {
      v77 = 0x65736C6166;
    }

    else
    {
      v77 = 1702195828;
    }

    if (v27 == 100)
    {
      v78 = 0xE500000000000000;
    }

    else
    {
      v78 = 0xE400000000000000;
    }

    MEMORY[0x2743848A0](v77, v78);

    MEMORY[0x2743848A0](0x20687461702029, 0xE700000000000000);
    v79 = [v39 path];
    if (v79)
    {
      v80 = v79;
      v81 = sub_26EF9C160();
      v83 = v82;
    }

    else
    {
      v81 = 0;
      v83 = 0;
    }

    v112 = v81;
    v113 = v83;
    sub_26EF784C0(&qword_2806CFD40, &qword_26EF9EE00);
    v89 = sub_26EF9C1A0();
    MEMORY[0x2743848A0](v89);

    v90 = v114;
    v91 = v115;
    sub_26EF8D8D8();
    v92 = swift_allocError();
    *v93 = v90;
    *(v93 + 8) = v91;
    *(v93 + 16) = 0;
    v110 = v92;
    swift_willThrow();

    goto LABEL_44;
  }

  v49 = v48;

  sub_26EF9C160();

  v51 = v101;
  v50 = v102;
  v52 = MEMORY[0x277CC91D0];
  if (v27 != 100)
  {
    v52 = MEMORY[0x277CC91C0];
  }

  v53 = v99;
  (*(v101 + 104))(v99, *v52, v102);
  (*(v51 + 16))(v98, v53, v50);
  v54 = sub_26EF9BE60();
  sub_26EF78FAC(v100, 1, 1, v54);
  sub_26EF9BE50();

  (*(v51 + 8))(v53, v50);
}

uint64_t sub_26EF8A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_26EF9C030();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF8A3B4, 0, 0);
}

uint64_t sub_26EF8A3B4()
{
  v21 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = *(v0[2] + 48);
    ObjectType = swift_getObjectType();
    v19 = (*(v2 + 8) + **(v2 + 8));
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_26EF8A64C;
    v6 = v0[3];
    v5 = v0[4];

    return v19(v6, v5, ObjectType, v2);
  }

  else
  {
    sub_26EF9C020();

    v8 = sub_26EF9C010();
    v9 = sub_26EF9C390();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    if (v10)
    {
      v15 = v0[3];
      v14 = v0[4];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_26EF7E624(v15, v14, &v20);
      _os_log_impl(&dword_26EF75000, v8, v9, "Factor downloader is nil unable to request download for factor %s", v16, 0xCu);
      sub_26EF79770(v17);
      MEMORY[0x2743859D0](v17, -1, -1);
      MEMORY[0x2743859D0](v16, -1, -1);
    }

    (*(v12 + 8))(v11, v13);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_26EF8A64C()
{

  return MEMORY[0x2822009F8](sub_26EF8A748, 0, 0);
}

uint64_t sub_26EF8A748()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

void sub_26EF8A7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v5;
  v11 = sub_26EF9BE60();
  if (MEMORY[0x28223BE20](v11) == a1 && !*(*(v7 + 8) + 16))
  {
    sub_26EF897A8(a3, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (!v6)
    {
      swift_dynamicCast();
    }
  }

  else
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000011, 0x800000026EFA1C50);
    v18[3] = a4;
    swift_getMetatypeMetadata();
    v13 = sub_26EF9C1C0();
    MEMORY[0x2743848A0](v13);

    MEMORY[0x2743848A0](0x656B20726F66203ELL, 0xEA00000000002079);
    sub_26EF9C750();
    MEMORY[0x2743848A0](0x50676E69646F6320, 0xEC00000020687461);
    v14 = *(v7 + 8);
    v15 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
    v16 = MEMORY[0x274384940](v14, v15);
    MEMORY[0x2743848A0](v16);

    sub_26EF8D8D8();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0xE000000000000000;
    *(v17 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_26EF8A9C4(uint64_t a1)
{
  sub_26EF8D8D8();
  swift_allocError();
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x800000026EFA1C30;
  *(v1 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_26EF8AA2C(uint64_t a1)
{
  sub_26EF8D8D8();
  swift_allocError();
  *v1 = 0xD000000000000020;
  *(v1 + 8) = 0x800000026EFA1C00;
  *(v1 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_26EF8AA94(uint64_t a1)
{
  sub_26EF8D8D8();
  swift_allocError();
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x800000026EFA1BE0;
  *(v1 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_26EF8AAFC(uint64_t a1)
{
  sub_26EF8D8D8();
  swift_allocError();
  *v1 = 0xD00000000000001FLL;
  *(v1 + 8) = 0x800000026EFA1BC0;
  *(v1 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_26EF8AD60()
{
  result = sub_26EF9C7B0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8ADB0()
{
  result = sub_26EF9C7C0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8AE58()
{
  result = sub_26EF9C7F0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8AEA8()
{
  result = sub_26EF9C7D0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8AFD0()
{
  result = sub_26EF9C800();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8B020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_26EF8B0E8()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA1B60);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  swift_willThrow();
  return 0;
}

uint64_t sub_26EF8B1CC()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000063, 0x800000026EFA1580);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B2AC()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000006ALL, 0x800000026EFA1510);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B38C()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000060, 0x800000026EFA14A0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B46C()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000058, 0x800000026EFA1B00);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  swift_willThrow();
  return 0;
}

uint64_t sub_26EF8B550()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ALL, 0x800000026EFA1AA0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B630()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ALL, 0x800000026EFA1A40);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B710()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000059, 0x800000026EFA19E0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B7F0()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000057, 0x800000026EFA1980);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B8D0()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000058, 0x800000026EFA1920);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8B9B0()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000059, 0x800000026EFA18C0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BA90()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000059, 0x800000026EFA1860);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BB70()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000059, 0x800000026EFA1800);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BC50()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000058, 0x800000026EFA17A0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BD30()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000059, 0x800000026EFA1740);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BE10()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ALL, 0x800000026EFA16E0);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BEF0()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ALL, 0x800000026EFA1680);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8BFD0()
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ALL, 0x800000026EFA1620);
  v1 = *v0;
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](v1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8C0B0(uint64_t a1, uint64_t a2)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000023, 0x800000026EFA15F0);
  swift_getMetatypeMetadata();
  v3 = sub_26EF9C1C0();
  MEMORY[0x2743848A0](v3);

  MEMORY[0x2743848A0](0xD000000000000030, 0x800000026EFA0F20);
  v4 = *v2;
  v5 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v6 = MEMORY[0x274384940](v4, v5);
  MEMORY[0x2743848A0](v6);

  sub_26EF8D8D8();
  swift_allocError();
  *v7 = 0;
  *(v7 + 8) = 0xE000000000000000;
  *(v7 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_26EF8C3E8()
{
  result = sub_26EF9C6D0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8C438()
{
  result = sub_26EF9C6E0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8C4E0()
{
  result = sub_26EF9C710();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8C530()
{
  result = sub_26EF9C6F0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8C658()
{
  result = sub_26EF9C720();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_26EF8C6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_26EF8C748(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005CLL, 0x800000026EFA1440);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  swift_willThrow();
  return 0;
}

uint64_t sub_26EF8C828(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ELL, 0x800000026EFA13E0);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8C904(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ELL, 0x800000026EFA1380);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8C9E0(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA1320);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CABC(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005BLL, 0x800000026EFA12C0);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CB98(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005CLL, 0x800000026EFA1260);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CC74(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA1200);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CD50(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA11A0);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CE2C(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA1140);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CF08(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005CLL, 0x800000026EFA10E0);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8CFE4(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005DLL, 0x800000026EFA1080);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8D0C0(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ELL, 0x800000026EFA1020);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8D19C(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ELL, 0x800000026EFA0FC0);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8D278(uint64_t a1)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD00000000000005ELL, 0x800000026EFA0F60);
  v2 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v3 = MEMORY[0x274384940](a1, v2);
  MEMORY[0x2743848A0](v3);

  sub_26EF8D8D8();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0xE000000000000000;
  *(v4 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_26EF8D354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0xD000000000000027, 0x800000026EFA0EF0);
  swift_getMetatypeMetadata();
  v4 = sub_26EF9C1C0();
  MEMORY[0x2743848A0](v4);

  MEMORY[0x2743848A0](0xD000000000000030, 0x800000026EFA0F20);
  v5 = sub_26EF784C0(&qword_2806CFE38, &unk_26EF9EB10);
  v6 = MEMORY[0x274384940](a2, v5);
  MEMORY[0x2743848A0](v6);

  sub_26EF8D8D8();
  swift_allocError();
  *v7 = 0;
  *(v7 + 8) = 0xE000000000000000;
  *(v7 + 16) = 2;
  return swift_willThrow();
}

unint64_t sub_26EF8D6B4()
{
  result = qword_280E140D8[0];
  if (!qword_280E140D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E140D8);
  }

  return result;
}

uint64_t sub_26EF8D740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_26EF8D788(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26EF8D794(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26EF8D7D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26EF8D834(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26EF8D874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26EF8D8D8()
{
  result = qword_280E140D0;
  if (!qword_280E140D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E140D0);
  }

  return result;
}

uint64_t sub_26EF8D92C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[13];
  v7 = v1[14];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26EF8DA04;

  return sub_26EF8A2F0(a1, v4, v5, (v1 + 6), v6, v7);
}

uint64_t sub_26EF8DA04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

__n128 sub_26EF8DB04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26EF8DB18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_26EF8DB58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t TUSCache.__allocating_init(capacity:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TUSCache.init(capacity:)(a1);
  return v2;
}

uint64_t TUSCache.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  sub_26EF76E94();
  v46 = v5;
  v48 = *(v6 + 80);
  v7 = *(v48 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  sub_26EF76E94();
  v12 = *(v11 + 88);
  sub_26EF9C4D0();
  sub_26EF76D10();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  sub_26EF76D10();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v45 - v24;
  v26 = *(v14 + 16);
  v50 = a1;
  v47 = v27;
  v26(v17, a1);
  if (sub_26EF7EC68(v17, 1, v12) == 1)
  {
    v28 = *(v14 + 8);
    v29 = v47;
    v28(v17, v47);
    v30 = *(v3 + 16);
    v31 = v48;
    type metadata accessor for WrappedKey(0, v48, *(v46 + 96), v32);
    v33 = sub_26EF76D48();
    v34(v33);
    v35 = sub_26EF8E1C0(v10);
    [v30 removeObjectForKey_];

    (*(v7 + 8))(a1, v31);
    return (v28)(v50, v29);
  }

  else
  {
    (*(v19 + 32))(v25, v17, v12);
    type metadata accessor for WrappedValue(0, v12, v37, v38);
    (*(v19 + 16))(v23, v25, v12);
    v39 = sub_26EF8E61C(v23);
    v45 = *(v3 + 16);
    v40 = v48;
    type metadata accessor for WrappedKey(0, v48, *(v46 + 96), v41);
    v42 = sub_26EF76D48();
    v43(v42);
    v44 = sub_26EF8E1C0(v10);
    [v45 setObject:v39 forKey:v44];

    (*(v7 + 8))(a1, v40);
    (*(v14 + 8))(v50, v47);
    return (*(v19 + 8))(v25, v12);
  }
}

uint64_t TUSCache.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26EF76E94();
  v6 = v5;
  v8 = *(v7 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = *(v2 + 16);
  sub_26EF76E94();
  type metadata accessor for WrappedKey(0, v8, *(v14 + 96), v15);
  (*(v9 + 16))(v12, a1, v8);
  v16 = sub_26EF8E1C0(v12);
  v17 = [v13 objectForKey_];

  if (v17)
  {
    v18 = *(v6 + 88);
    (*(*(v18 - 8) + 16))(a2, &v17[*(*v17 + 88)], v18);

    v19 = a2;
    v20 = 0;
    v21 = v18;
  }

  else
  {
    v21 = *(v6 + 88);
    v19 = a2;
    v20 = 1;
  }

  return sub_26EF78FAC(v19, v20, 1, v21);
}

id sub_26EF8E1F4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)], a1, v4);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t sub_26EF8E2F0(void *a1)
{
  v1 = a1;
  v2 = sub_26EF8E324();

  return v2;
}

uint64_t sub_26EF8E394(uint64_t a1)
{
  swift_getObjectType();
  sub_26EF8EF38(a1, v5);
  if (!v6)
  {
    sub_26EF8EED0(v5);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_26EF9C120();

  return v2 & 1;
}

uint64_t sub_26EF8E4B4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_26EF9C570();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_26EF8E394(v8);

  sub_26EF8EED0(v8);
  return v6 & 1;
}

id sub_26EF8E580()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26EF8E73C()
{
  v0 = sub_26EF8E6CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t **TUSCache.init(capacity:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_26EF784C0(&qword_2806CFE48, qword_26EF9EC30);
  type metadata accessor for WrappedKey(0, v4[10], v4[12], v5);
  type metadata accessor for WrappedValue(0, v4[11], v6, v7);
  v8 = sub_26EF8E888();
  v2[2] = v8;
  [v8 setCountLimit_];
  return v2;
}

id sub_26EF8E888()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_26EF8E8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 24);
  v7 = sub_26EF9C4D0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a3, v6);
  (*(v8 + 16))(v11, a1, v7);
  return TUSCache.subscript.setter(v11, v13);
}

void (*TUSCache.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = sub_26EF86BB0(0x48uLL);
  *a1 = v5;
  *v5 = v2;
  v6 = *v2;
  v7 = sub_26EF9C4D0();
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  v5[3] = sub_26EF86BB0(v9);
  v10 = sub_26EF86BB0(v9);
  v5[4] = v10;
  v5[5] = *(v6 + 80);
  sub_26EF76D10();
  v12 = v11;
  v5[6] = v11;
  v14 = *(v13 + 64);
  v5[7] = sub_26EF86BB0(v14);
  v5[8] = sub_26EF86BB0(v14);
  (*(v12 + 16))();
  TUSCache.subscript.getter(a2, v10);
  return sub_26EF8EBC4;
}

void sub_26EF8EBC4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    TUSCache.subscript.setter(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    TUSCache.subscript.setter(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t TUSCache.__deallocating_deinit()
{
  TUSCache.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26EF8ED1C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26EF8EDB0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26EF8EED0(uint64_t a1)
{
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EF8EF38(uint64_t a1, uint64_t a2)
{
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF8EFCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_26EF9C410();
  sub_26EF90D8C(v4, a2);
  sub_26EF90BEC(v4, a2);
  return sub_26EF9C400();
}

uint64_t sub_26EF8F024@<X0>(uint64_t a1@<X8>)
{
  sub_26EF90E48();
  v4 = *(v3 + 96);
  swift_beginAccess();
  sub_26EF90E48();
  sub_26EF9C4D0();
  sub_26EF76EA0();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_26EF8F0C0(uint64_t a1)
{
  sub_26EF90E48();
  v4 = *(v3 + 96);
  swift_beginAccess();
  sub_26EF90E48();
  sub_26EF9C4D0();
  sub_26EF76EA0();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_26EF8F1A4()
{
  v1 = *(*v0 + 80);
  v2 = sub_26EF9C4D0();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_26EF9C030();
  sub_26EF76CFC();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_26EF810E0();
  v11 = v10 - v9;
  sub_26EF9C020();
  v12 = sub_26EF9C010();
  v13 = sub_26EF9C370();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v1;
    v29 = v16;
    *v15 = 136315138;
    swift_getMetatypeMetadata();
    v17 = sub_26EF9C1C0();
    v19 = sub_26EF7E624(v17, v18, &v29);
    v26 = v5;
    v20 = v4;
    v21 = v1;
    v22 = v19;

    *(v15 + 4) = v22;
    v1 = v21;
    v4 = v20;
    _os_log_impl(&dword_26EF75000, v12, v13, "Purging TUSLazyPurgeable of type %s due to memory pressure", v15, 0xCu);
    sub_26EF79770(v16);
    MEMORY[0x2743859D0](v16, -1, -1);
    MEMORY[0x2743859D0](v15, -1, -1);

    (*(v27 + 8))(v11, v26);
  }

  else
  {

    (*(v7 + 8))(v11, v5);
  }

  sub_26EF78FAC(v4, 1, 1, v1);
  v23 = sub_26EF8F0C0(v4);
  if (sub_26EF8F164(v23, v24))
  {
    swift_getObjectType();
    sub_26EF9C440();
    swift_unknownObjectRelease();
  }

  return sub_26EF8F180(0);
}

uint64_t sub_26EF8F418()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_26EF9C040();
  sub_26EF76CFC();
  v53 = v4;
  MEMORY[0x28223BE20](v5);
  sub_26EF810E0();
  v51 = v7 - v6;
  sub_26EF76AD4();
  v52 = sub_26EF9C070();
  sub_26EF76CFC();
  v50 = v8;
  MEMORY[0x28223BE20](v9);
  sub_26EF810E0();
  v49 = v11 - v10;
  sub_26EF76AD4();
  v12 = sub_26EF9C410();
  sub_26EF76CFC();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_26EF810E0();
  v48 = v17 - v16;
  v18 = *(v2 + 80);
  v19 = sub_26EF9C4D0();
  sub_26EF76CFC();
  v21 = v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v46 - v26;
  sub_26EF8F024(&v46 - v26);
  LODWORD(v2) = sub_26EF7EC68(v27, 1, v18);
  v28 = (*(v21 + 8))(v27, v19);
  if (v2 == 1)
  {
    sub_26EF90DF4();
    (*(v1 + *(v30 + 104)))();
    sub_26EF78FAC(v25, 0, 1, v18);
    v28 = sub_26EF8F0C0(v25);
  }

  if (!sub_26EF8F164(v28, v29))
  {
    v47 = v3;
    v46 = sub_26EF797BC(0, &unk_280E13E90, 0x277D85CA0);
    sub_26EF784C0(&unk_2806CFED8, &qword_26EF9EDC0);
    v31 = *(v14 + 72);
    v32 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26EF9ECF0;
    v34 = v33 + v32;
    sub_26EF9C3E0();
    sub_26EF9C3F0();
    if (qword_280E13ED0 != -1)
    {
      swift_once();
    }

    v35 = sub_26EF90BEC(v12, qword_280E13EE0);
    v36 = *(v14 + 16);
    v36(v34 + 2 * v31, v35, v12);
    if (qword_280E13EA8 != -1)
    {
      swift_once();
    }

    v37 = sub_26EF90BEC(v12, qword_280E13EB8);
    v36(v34 + 3 * v31, v37, v12);
    aBlock[0] = v33;
    sub_26EF90C44(&qword_280E13EA0, MEMORY[0x277D85298], MEMORY[0x277D852A8]);
    sub_26EF784C0(&qword_2806CFEE8, &qword_26EF9EDC8);
    sub_26EF90C8C(&qword_280E13F10, &qword_2806CFEE8, &qword_26EF9EDC8);
    v38 = v48;
    sub_26EF9C580();
    sub_26EF90DF4();
    sub_26EF9C420();
    (*(v14 + 8))(v38, v12);
    swift_getObjectType();
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v18;
    *(v40 + 24) = v39;
    aBlock[4] = sub_26EF90C24;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26EF8FB9C;
    aBlock[3] = &unk_287F04738;
    v41 = _Block_copy(aBlock);

    v42 = v49;
    sub_26EF9C050();
    v43 = v51;
    sub_26EF8FBE0();
    sub_26EF9C430();
    _Block_release(v41);
    (*(v53 + 8))(v43, v47);
    (*(v50 + 8))(v42, v52);

    sub_26EF9C450();
    v44 = swift_unknownObjectRetain();
    sub_26EF8F180(v44);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_26EF8FA28(uint64_t a1)
{
  v1 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_26EF9C330();
    sub_26EF78FAC(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_26EF90E54();
  }

  return result;
}

uint64_t sub_26EF8FB44()
{
  sub_26EF76E54();
  sub_26EF8F1A4();
  sub_26EF90E3C();

  return v0();
}

uint64_t sub_26EF8FB9C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26EF8FBE0()
{
  sub_26EF9C040();
  sub_26EF90C44(qword_280E13F38, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_26EF784C0(&unk_2806CFEF0, &unk_26EF9EDD0);
  sub_26EF90C8C(&unk_280E13F28, &unk_2806CFEF0, &unk_26EF9EDD0);
  return sub_26EF9C580();
}

uint64_t TUSLazyPurgeable.__allocating_init(initialize:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TUSLazyPurgeable.init(initialize:)(a1, a2);
  return v4;
}

char *TUSLazyPurgeable.init(initialize:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = *v2;
  sub_26EF9C3B0();
  sub_26EF76CFC();
  v44 = v6;
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  sub_26EF810E0();
  v43 = v8 - v7;
  sub_26EF76AD4();
  v42 = sub_26EF9C490();
  sub_26EF76EA0();
  MEMORY[0x28223BE20](v9);
  sub_26EF810E0();
  v41 = v11 - v10;
  sub_26EF76AD4();
  v12 = sub_26EF9C070();
  MEMORY[0x28223BE20](v12 - 8);
  sub_26EF810E0();
  v13 = sub_26EF9BEF0();
  sub_26EF76CFC();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_26EF810E0();
  v19 = v18 - v17;
  v20 = *(v4 + 80);
  v21 = sub_26EF9C4D0();
  sub_26EF76CFC();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v39 - v25;
  swift_defaultActor_initialize();
  sub_26EF90DF4();
  v28 = *(v27 + 96);
  sub_26EF78FAC(&v3[v28], 1, 1, v20);
  sub_26EF90DF4();
  *&v3[*(v29 + 120)] = 0;
  sub_26EF78FAC(v26, 1, 1, v20);
  swift_beginAccess();
  (*(v23 + 40))(&v3[v28], v26, v21);
  swift_endAccess();
  sub_26EF90DF4();
  v31 = &v3[*(v30 + 104)];
  v32 = v40;
  *v31 = v39;
  v31[1] = v32;
  sub_26EF797BC(0, &qword_280E14380, 0x277D85C90);
  v46 = 0;
  v47 = 0xE000000000000000;

  sub_26EF9C5E0();

  v46 = 0xD000000000000023;
  v47 = 0x800000026EFA1FF0;
  sub_26EF9BEE0();
  v33 = sub_26EF9BED0();
  v35 = v34;
  (*(v15 + 8))(v19, v13);
  MEMORY[0x2743848A0](v33, v35);

  sub_26EF9C060();
  v46 = MEMORY[0x277D84F90];
  sub_26EF90C44(&qword_280E14388, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  sub_26EF784C0(&unk_2806CFE60, qword_26EF9ED00);
  sub_26EF90C8C(&qword_280E14398, &unk_2806CFE60, qword_26EF9ED00);
  sub_26EF9C580();
  (*(v44 + 104))(v43, *MEMORY[0x277D85268], v45);
  v36 = sub_26EF9C4A0();

  sub_26EF90DF4();
  *&v3[*(v37 + 112)] = v36;
  return v3;
}

char *TUSLazyPurgeable.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (*(v0 + *(*v0 + 120)))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_26EF9C440();
    swift_unknownObjectRelease();
    v2 = *v0;
  }

  v3 = *(v2 + 96);
  sub_26EF9C4D0();
  sub_26EF76EA0();
  (*(v4 + 8))(v1 + v3);
  sub_26EF90DF4();

  sub_26EF90DF4();

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v1;
}

uint64_t TUSLazyPurgeable.__deallocating_deinit()
{
  TUSLazyPurgeable.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26EF902CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return MEMORY[0x2822009F8](sub_26EF90318, v3, 0);
}

uint64_t sub_26EF90318()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_26EF8F418();
  v3 = *(*v1 + 96);
  swift_beginAccess();
  result = sub_26EF7EC68(v1 + v3, 1, *(v2 + 80));
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v0 + 48))(v1 + v3);
    swift_endAccess();
    sub_26EF90E3C();

    return v5();
  }

  return result;
}

uint64_t sub_26EF903F4()
{
  sub_26EF76E54();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *(*v0 + 80);
  sub_26EF9C4D0();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF9049C, v0, 0);
}

uint64_t sub_26EF9049C()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_26EF8F418();
  sub_26EF8F024(v1);
  result = sub_26EF7EC68(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = (v0[3] + *v0[3]);
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_26EF905CC;
    v5 = v0[7];
    v6 = v0[2];

    return v7(v6, v5);
  }

  return result;
}

uint64_t sub_26EF905CC()
{
  sub_26EF76E54();
  v2 = *v1;
  sub_26EF76B18();
  *v3 = v2;
  v2[9] = v0;

  if (v0)
  {
    v4 = v2[5];

    return MEMORY[0x2822009F8](sub_26EF9072C, v4, 0);
  }

  else
  {
    (*(*(v2[6] - 8) + 8))(v2[7]);

    sub_26EF90E3C();

    return v5();
  }
}

uint64_t sub_26EF9072C()
{
  sub_26EF76E54();
  (*(*(*(v0 + 48) - 8) + 8))(*(v0 + 56));

  sub_26EF90E3C();

  return v1();
}

uint64_t sub_26EF907E0(uint64_t a1)
{
  result = sub_26EF9C4D0();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of TUSLazyPurgeable.run<A>(_:)()
{
  sub_26EF90E20();
  v0 = swift_task_alloc();
  v1 = sub_26EF76B28(v0);
  *v1 = v2;
  v3 = sub_26EF90E00(v1);

  return v4(v3);
}

{
  sub_26EF90E20();
  v0 = swift_task_alloc();
  v1 = sub_26EF76B28(v0);
  *v1 = v2;
  v3 = sub_26EF90E00(v1);

  return v4(v3);
}

uint64_t sub_26EF90B08()
{
  sub_26EF76E54();
  v1 = *v0;
  sub_26EF76B18();
  *v2 = v1;

  sub_26EF90E3C();

  return v3();
}

uint64_t sub_26EF90BEC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26EF90C2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26EF90C44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26EF90C8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_26EF7948C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26EF90CE0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_26EF76B28(v6);
  *v7 = v8;
  v7[1] = sub_26EF90B08;

  return sub_26EF8FB24(a1, v3, v4, v5);
}

uint64_t *sub_26EF90D8C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_26EF90E54()
{
  sub_26EF76E7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  sub_26EF97520(v8);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  sub_26EF96DE4(v5, v22 - v10);
  v12 = sub_26EF9C330();
  v13 = sub_26EF7EC68(v11, 1, v12);

  if (v13 == 1)
  {
    sub_26EF97330(v11, &unk_2806CFF00, &qword_26EF9EE10);
  }

  else
  {
    sub_26EF9C320();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(v1 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26EF9C310();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v18 = sub_26EF9C1D0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = v3;
      *(v19 + 24) = v1;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v20 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v22[1] = 7;
      v22[2] = v20;
      v22[3] = v18;
      swift_task_create();

      sub_26EF97330(v5, &unk_2806CFF00, &qword_26EF9EE10);

      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_26EF97330(v5, &unk_2806CFF00, &qword_26EF9EE10);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v1;
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  swift_task_create();
LABEL_14:
  sub_26EF85944();
}

uint64_t sub_26EF91110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25[-1] - v12;
  v26[0] = a4;
  v26[1] = a5;
  sub_26EF96DE4(a3, &v25[-1] - v12);
  v14 = sub_26EF9C330();
  v15 = sub_26EF7EC68(v13, 1, v14);

  if (v15 == 1)
  {
    sub_26EF97330(v13, &unk_2806CFF00, &qword_26EF9EE10);
  }

  else
  {
    sub_26EF9C320();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26EF9C310();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26EF9C1D0();
      sub_26EF95E64(v20 + 32, v26, a6, v25);

      v21 = v25[0];
      sub_26EF97330(a3, &unk_2806CFF00, &qword_26EF9EE10);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26EF97330(a3, &unk_2806CFF00, &qword_26EF9EE10);
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a4;
  v22[4] = a5;
  if (v19 | v17)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v17;
    v25[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26EF91390()
{
  v0 = sub_26EF9C3B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26EF9C490();
  MEMORY[0x28223BE20](v4);
  v5 = sub_26EF9C070();
  MEMORY[0x28223BE20](v5 - 8);
  sub_26EF797BC(0, &qword_280E14380, 0x277D85C90);
  sub_26EF9C060();
  v7[1] = MEMORY[0x277D84F90];
  sub_26EF97274();
  sub_26EF784C0(&unk_2806CFE60, qword_26EF9ED00);
  sub_26EF972CC();
  sub_26EF9C580();
  (*(v1 + 104))(v3, *MEMORY[0x277D85268], v0);
  result = sub_26EF9C4A0();
  qword_280E13FC8 = result;
  return result;
}

uint64_t sub_26EF915D8()
{
  sub_26EF9C890();
  MEMORY[0x274384EF0](0);
  return sub_26EF9C8B0();
}

uint64_t sub_26EF91628(uint64_t a1)
{
  sub_26EF9C890();
  MEMORY[0x274384EF0](0);
  return sub_26EF9C8B0();
}

void *TUSTrialAssets.rolloutIdentifiers.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

void *TUSTrialAssets.experimentIdentifiers.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));
  v3 = v2;
  return v2;
}

void sub_26EF916F4()
{
  sub_26EF76E7C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_26EF76D10();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_26EF810E0();
  (*(v11 + 16))(v14 - v13, v7, v15);
  sub_26EF784C0(&qword_2806CFF38, &qword_26EF9F0B0);
  if (swift_dynamicCast())
  {
    sub_26EF97388(v21, v23);
    v16 = v24;
    v17 = v25;
    sub_26EF973A0(v23, v24);
    (*(v17 + 8))(v16, v17);
    (*(v11 + 8))(v7, v1);
    sub_26EF973F0(v23, v21);
    swift_dynamicCast();
    sub_26EF79770(v23);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_26EF97330(v21, &qword_2806CFF40, qword_26EF9F0B8);
    (*(v11 + 32))(v9, v7, v1);
  }

  v20 = type metadata accessor for TUSTrialAssets(0, v1, v18, v19);
  *(v9 + *(v20 + 28)) = v5;
  *(v9 + *(v20 + 32)) = v3;
  sub_26EF85944();
}

void TUSTrialAssets.description.getter()
{
  sub_26EF76E7C();
  v2 = v1;
  v36 = *(v1 + 16);
  sub_26EF76D10();
  v35 = v3;
  MEMORY[0x28223BE20](v4);
  sub_26EF810E0();
  v7 = v6 - v5;
  v9 = v0;
  v10 = *(v0 + *(v8 + 28));
  if (v10)
  {
    v11 = v10;
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000021, 0x800000026EFA20E0);
    v12 = [v11 rolloutId];
    v13 = sub_26EF9C160();
    v15 = v14;

    MEMORY[0x2743848A0](v13, v15);

    MEMORY[0x2743848A0](0x6D796F6C70656420, 0xEF203A6449746E65);
    [v11 deploymentId];
    v16 = sub_26EF9C6A0();
    MEMORY[0x2743848A0](v16);

    MEMORY[0x2743848A0](0x50726F7463616620, 0xEF203A64496B6361);
    v17 = [v11 factorPackId];
    v18 = sub_26EF9C160();
    v20 = v19;

    MEMORY[0x2743848A0](v18, v20);

    MEMORY[0x2743848A0](41, 0xE100000000000000);
  }

  v21 = *(v9 + *(v2 + 32));
  if (v21)
  {
    v22 = v21;
    sub_26EF9C5E0();
    MEMORY[0x2743848A0](0xD000000000000027, 0x800000026EFA20B0);
    v23 = [v22 experimentId];
    v24 = sub_26EF9C160();
    v26 = v25;

    MEMORY[0x2743848A0](v24, v26);

    MEMORY[0x2743848A0](0x656D746165727420, 0xEE00203A6449746ELL);
    v27 = [v22 treatmentId];
    v28 = sub_26EF9C160();
    v30 = v29;

    MEMORY[0x2743848A0](v28, v30);

    MEMORY[0x2743848A0](0x6D796F6C70656420, 0xEF203A6449746E65);
    [v22 deploymentId];
    v31 = sub_26EF9C6A0();
    MEMORY[0x2743848A0](v31);

    MEMORY[0x2743848A0](41, 0xE100000000000000);
  }

  sub_26EF9C5E0();
  MEMORY[0x2743848A0](0x3A73726F74636166, 0xE900000000000020);
  (*(v35 + 16))(v7, v9, v36);
  v32 = sub_26EF9C1A0();
  MEMORY[0x2743848A0](v32);

  MEMORY[0x2743848A0](0xD000000000000015, 0x800000026EFA2070);
  sub_26EF784C0(&qword_2806CFD40, &qword_26EF9EE00);
  v33 = sub_26EF9C1A0();
  MEMORY[0x2743848A0](v33);

  MEMORY[0x2743848A0](0xD000000000000018, 0x800000026EFA2090);
  v34 = sub_26EF9C1A0();
  MEMORY[0x2743848A0](v34);

  sub_26EF85944();
}

uint64_t sub_26EF91D90@<X0>(uint64_t a1@<X8>)
{
  sub_26EF90E48();
  v4 = *(v3 + 104);
  sub_26EF975CC(v1 + v4, v5);
  sub_26EF90E48();
  sub_26EF9761C(v7, *(v6 + 80), v8, v9);
  sub_26EF76EA0();
  return (*(v10 + 16))(a1, v1 + v4);
}

uint64_t sub_26EF91E1C(uint64_t a1)
{
  sub_26EF90E48();
  v4 = *(v3 + 104);
  sub_26EF97604(v1 + v4, v11);
  sub_26EF90E48();
  sub_26EF9761C(v6, *(v5 + 80), v7, v8);
  sub_26EF76EA0();
  (*(v9 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_26EF91EB4()
{
  sub_26EF9748C();
  sub_26EF975CC(v0 + *(v1 + 112), v2);
}

uint64_t sub_26EF91EF8(uint64_t a1)
{
  sub_26EF9748C();
  v4 = *(v3 + 112);
  swift_beginAccess();
  *(v1 + v4) = a1;
}

uint64_t sub_26EF91F58@<X0>(uint64_t a1@<X8>)
{
  sub_26EF9748C();
  v4 = *(v3 + 120);
  sub_26EF975CC(v1 + v4, v5);
  sub_26EF9BEC0();
  sub_26EF76EA0();
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t sub_26EF91FD4(uint64_t a1)
{
  sub_26EF9748C();
  v4 = *(v3 + 120);
  sub_26EF97604(v1 + v4, v7);
  sub_26EF9BEC0();
  sub_26EF76EA0();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_26EF9205C@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v167 = a1;
  v158 = *v2;
  v4 = v158[10];
  v152 = sub_26EF9C4D0();
  sub_26EF76CFC();
  v151 = v5;
  sub_26EF974E4();
  MEMORY[0x28223BE20](v6);
  v157 = &v140 - v7;
  sub_26EF76AD4();
  sub_26EF9C030();
  sub_26EF76CFC();
  v165 = v9;
  v166 = v8;
  MEMORY[0x28223BE20](v8);
  sub_26EF80088();
  sub_26EF974D4();
  MEMORY[0x28223BE20](v10);
  sub_26EF8007C();
  v155 = v11;
  sub_26EF80050();
  MEMORY[0x28223BE20](v12);
  sub_26EF8007C();
  v159 = v13;
  sub_26EF80050();
  MEMORY[0x28223BE20](v14);
  sub_26EF8007C();
  sub_26EF974D4();
  MEMORY[0x28223BE20](v15);
  v148 = &v140 - v16;
  sub_26EF76D10();
  v162 = v17;
  MEMORY[0x28223BE20](v18);
  sub_26EF80088();
  v160 = v19 - v20;
  sub_26EF80050();
  MEMORY[0x28223BE20](v21);
  sub_26EF8007C();
  sub_26EF974D4();
  MEMORY[0x28223BE20](v22);
  sub_26EF8007C();
  v156 = v23;
  sub_26EF80050();
  MEMORY[0x28223BE20](v24);
  v161 = &v140 - v25;
  sub_26EF76AD4();
  v26 = sub_26EF9BEC0();
  sub_26EF76CFC();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  sub_26EF80088();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v140 - v34;
  v163 = v4;
  v38 = type metadata accessor for TUSTrialAssets(255, v4, v36, v37);
  v39 = sub_26EF975E8(v38);
  sub_26EF76CFC();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  sub_26EF80088();
  sub_26EF974D4();
  MEMORY[0x28223BE20](v43);
  v45 = &v140 - v44;
  sub_26EF91D90(&v140 - v44);
  v164 = v1;
  LODWORD(v4) = sub_26EF7EC68(v45, 1, v1);
  v46 = *(v41 + 8);
  v149 = v39;
  v46(v45, v39);
  if (v4 == 1)
  {
    sub_26EF9BEB0();
    sub_26EF91F58(v32);
    sub_26EF9BEA0();
    v48 = v47;
    v50 = v28 + 8;
    v49 = *(v28 + 8);
    v49(v32, v26);
    if (v48 < 86400.0)
    {
      v51 = sub_26EF97570();
      (v49)(v51);
LABEL_19:
      sub_26EF97498();
      return sub_26EF78FAC(v114, v115, v116, v164);
    }

    v53 = v3;
    v147 = v49;
    (*(v28 + 16))(v32, v35, v26);
    sub_26EF91FD4(v32);
    v54 = *(v3 + (*v3)[18]);
    [v54 refresh];
    v55 = (v3 + (*v3)[17]);
    v56 = *v55;
    v57 = v55[1];
    v168[0] = v54;
    v168[1] = v56;
    v145 = v56;
    v168[2] = v57;
    v169 = &off_287F048A0;
    swift_unknownObjectWeakInit();
    v58 = v158[11];
    v158 = v54;
    v59 = v57;

    v60 = v161;
    v61 = v163;
    sub_26EF87C90(v163, v163, v58);
    v146 = v35;
    sub_26EF92FDC(v168);
    if ((*(v53 + (*v53)[22]))(v60))
    {
      sub_26EF97680();
      v62();
      v63 = sub_26EF9C130();
      v64 = v158;
      v65 = [v158 rolloutIdentifiersWithNamespaceName_];

      v66 = sub_26EF9C130();
      v67 = [v64 experimentIdentifiersWithNamespaceName_];

      v68 = v154;
      sub_26EF916F4();
      sub_26EF78FAC(v68, 0, 1, v164);
      sub_26EF91E1C(v68);
      v69 = v148;
      sub_26EF9C020();

      v70 = sub_26EF9C010();
      v71 = sub_26EF9C370();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = sub_26EF800C0();
        v73 = sub_26EF76D7C();
        v74 = v162;
        v142 = v50;
        v75 = v73;
        v168[0] = v73;
        *v72 = 136315138;
        sub_26EF91D90(v68);
        v76 = sub_26EF9C1C0();
        v78 = sub_26EF7E624(v76, v77, v168);

        *(v72 + 4) = v78;
        _os_log_impl(&dword_26EF75000, v70, v71, "We successfully decoded struct %s", v72, 0xCu);
        sub_26EF79770(v75);
        sub_26EF974F0();
        sub_26EF76AF4();

        (*(v165 + 8))(v69, v166);
        (*(v74 + 8))(v161, v163);
        sub_26EF97660();
        v79();
LABEL_24:
        v52 = v167;
        return sub_26EF91D90(v52);
      }

      (*(v165 + 8))(v69, v166);
      (*(v162 + 8))(v161, v61);
    }

    else
    {
      v142 = v50;
      sub_26EF9C020();
      v80 = v162;
      v81 = *(v162 + 16);
      sub_26EF97680();
      v81();
      v82 = sub_26EF9C010();
      LODWORD(v148) = sub_26EF9C390();
      v83 = os_log_type_enabled(v82, v148);
      v143 = v26;
      if (v83)
      {
        v84 = sub_26EF800C0();
        v141 = sub_26EF76D7C();
        v168[0] = v141;
        *v84 = 136315138;
        v85 = sub_26EF97514();
        (v81)(v85);
        v86 = sub_26EF9C1C0();
        v88 = v87;
        v140 = *(v80 + 8);
        v89 = sub_26EF9764C();
        v90(v89);
        v91 = sub_26EF7E624(v86, v88, v168);

        *(v84 + 4) = v91;
        v60 = v161;
        _os_log_impl(&dword_26EF75000, v82, v148, "Validation for factors %s returned false, attempting to fall back to default factors loader", v84, 0xCu);
        sub_26EF79770(v141);
        sub_26EF76AF4();
        sub_26EF76AF4();

        v92 = v140;
      }

      else
      {

        v92 = *(v80 + 8);
        v93 = sub_26EF9764C();
        v92(v93);
      }

      (*(v165 + 8))(v150, v166);
      sub_26EF96224();
      v94 = swift_allocError();
      swift_willThrow();
      (v92)(v60, v61);
      v95 = v159;
      v144 = v59;
      sub_26EF9C020();

      v96 = v94;
      v97 = sub_26EF9C010();
      v98 = sub_26EF9C390();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = sub_26EF9757C();
        v100 = swift_slowAlloc();
        v101 = sub_26EF76D7C();
        v168[0] = v101;
        *v99 = 136315394;
        v102 = v145;
        v103 = v144;
        *(v99 + 4) = sub_26EF7E624(v145, v144, v168);
        *(v99 + 12) = 2112;
        v104 = v94;
        v105 = _swift_stdlib_bridgeErrorToNSError();
        *(v99 + 14) = v105;
        *v100 = v105;
        _os_log_impl(&dword_26EF75000, v97, v98, "Unable to instantiate assets for %s due to: %@", v99, 0x16u);
        sub_26EF97330(v100, &qword_2806CFF10, &qword_26EF9EE08);
        sub_26EF76AF4();
        sub_26EF79770(v101);
        v61 = v163;
        sub_26EF76AF4();
        sub_26EF76AF4();

        v161 = *(v165 + 8);
        (v161)(v159, v166);
        v106 = v158;
      }

      else
      {

        v161 = *(v165 + 8);
        (v161)(v95, v166);
        v102 = v145;
        v106 = v158;
        v103 = v144;
      }

      v107 = v157;
      (*(v53 + (*v53)[23]))(v106, v102, v103);
      if (sub_26EF7EC68(v107, 1, v61) == 1)
      {
        (*(v151 + 8))(v107, v152);
        v108 = v153;
        sub_26EF9C020();

        v109 = sub_26EF9C010();
        v110 = sub_26EF9C370();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = sub_26EF800C0();
          v112 = sub_26EF76D7C();
          v168[0] = v112;
          *v111 = 136315138;
          *(v111 + 4) = sub_26EF7E624(v102, v144, v168);
          _os_log_impl(&dword_26EF75000, v109, v110, "Unable to instantiate default assets for %s", v111, 0xCu);
          sub_26EF79770(v112);
          sub_26EF76AF4();
          sub_26EF76AF4();
        }

        (v161)(v108, v166);
        sub_26EF76AE0();
        sub_26EF97660();
        v113();
        goto LABEL_19;
      }

      v118 = sub_26EF97514();
      v119(v118);
      sub_26EF97680();
      v120();
      v121 = sub_26EF9C130();
      v122 = [v106 rolloutIdentifiersWithNamespaceName_];

      v123 = sub_26EF9C130();
      v124 = [v106 experimentIdentifiersWithNamespaceName_];

      v125 = v102;
      v126 = v154;
      sub_26EF916F4();
      sub_26EF78FAC(v126, 0, 1, v164);
      sub_26EF91E1C(v126);
      v127 = v155;
      sub_26EF9C020();

      v128 = sub_26EF9C010();
      v129 = sub_26EF9C370();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = sub_26EF9757C();
        v168[0] = sub_26EF801A8();
        *v130 = 136315394;
        *(v130 + 4) = sub_26EF7E624(v125, v103, v168);
        *(v130 + 12) = 2080;
        sub_26EF91D90(v126);
        v131 = sub_26EF9C1C0();
        v133 = sub_26EF7E624(v131, v132, v168);

        *(v130 + 14) = v133;
        _os_log_impl(&dword_26EF75000, v128, v129, "Instantiated default assets for %s using: %s", v130, 0x16u);
        swift_arrayDestroy();
        sub_26EF974F0();
        sub_26EF76AF4();

        (v161)(v155, v166);
        v134 = sub_26EF976B4();
        v135(v134);
        sub_26EF76AE0();
        sub_26EF97660();
        v136();
        goto LABEL_24;
      }

      (v161)(v127, v166);
      v137 = sub_26EF976B4();
      v138(v137);
      sub_26EF76AE0();
    }

    sub_26EF97660();
    v139();
    goto LABEL_24;
  }

  v52 = v167;
  return sub_26EF91D90(v52);
}

uint64_t TUSTrialNamespaceManager.__allocating_init(namespaceName:trialProjectID:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_26EF976A0();
  v11 = swift_allocObject();
  sub_26EF97570();
  sub_26EF9768C();
  TUSTrialNamespaceManager.init(namespaceName:trialProjectID:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(v12, v13, v14, v15, v16, v17, v18, a8, a9, a10, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, vars0, vars8);
  return v11;
}

void TUSTrialNamespaceManager.init(namespaceName:trialProjectID:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_26EF76E7C();
  v112 = v23;
  v111 = v24;
  v103 = v25;
  v27 = v26;
  v109 = v28;
  v110 = a22;
  v104 = a21;
  v105 = v29;
  v30 = *v22;
  v31 = *v22;
  v107 = v32;
  v108 = v31;
  v33 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  sub_26EF97520(v33);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v34);
  v102 = &v101 - v35;
  sub_26EF76AD4();
  v36 = sub_26EF9BEC0();
  sub_26EF76CFC();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  sub_26EF810E0();
  v42 = v41 - v40;
  v106 = *(v30 + 80);
  v45 = type metadata accessor for TUSTrialAssets(255, v106, v43, v44);
  v46 = sub_26EF9C4D0();
  sub_26EF76CFC();
  v48 = v47;
  sub_26EF974E4();
  MEMORY[0x28223BE20](v49);
  v51 = &v101 - v50;
  swift_defaultActor_initialize();
  sub_26EF9748C();
  v53 = *(v52 + 104);
  sub_26EF97498();
  sub_26EF78FAC(v54, v55, v56, v45);
  sub_26EF9748C();
  *&v22[*(v57 + 128)] = 0x40F5180000000000;
  sub_26EF97498();
  sub_26EF78FAC(v58, v59, v60, v45);
  sub_26EF97604(&v22[v53], v113);
  v61 = *(v48 + 40);
  v101 = v46;
  v61(&v22[v53], v51, v46);
  swift_endAccess();
  sub_26EF9748C();
  *&v22[*(v62 + 112)] = MEMORY[0x277D84F98];
  sub_26EF9BE90();
  sub_26EF9748C();
  (*(v38 + 32))(&v22[*(v63 + 120)], v42, v36);
  if (qword_280E13FC0 != -1)
  {
    sub_26EF974B4(&qword_280E13FC0);
  }

  v64 = qword_280E13FC8;
  sub_26EF9748C();
  *&v22[*(v65 + 168)] = v64;
  sub_26EF9748C();
  v67 = &v22[*(v66 + 136)];
  v68 = v109;
  *v67 = v109;
  *(v67 + 1) = v27;
  v69 = objc_opt_self();
  v70 = v64;

  v71 = [v69 client];
  sub_26EF9748C();
  *&v22[*(v72 + 144)] = v73;
  sub_26EF9748C();
  v22[*(v74 + 152)] = v103 & 1;
  sub_26EF9748C();
  *&v22[*(v75 + 160)] = v107;
  sub_26EF9748C();
  v77 = &v22[*(v76 + 176)];
  v78 = v112;
  *v77 = v105;
  *(v77 + 1) = v78;
  sub_26EF9748C();
  v80 = &v22[*(v79 + 184)];
  v81 = v110;
  *v80 = v82;
  *(v80 + 1) = v81;
  v84 = v83;

  [v71 refresh];
  sub_26EF9748C();
  v86 = *&v22[*(v85 + 144)];
  sub_26EF97570();
  v87 = sub_26EF9C130();
  v88 = swift_allocObject();
  swift_weakInit();
  v89 = swift_allocObject();
  *(v89 + 16) = v106;
  *(v89 + 24) = *(v108 + 88);
  *(v89 + 32) = v88;
  *(v89 + 40) = v68;
  *(v89 + 48) = v27;
  v90 = v111;
  *(v89 + 56) = v111 & 1;
  v113[4] = sub_26EF96278;
  v113[5] = v89;
  v113[0] = MEMORY[0x277D85DD0];
  v113[1] = 1107296256;
  v113[2] = sub_26EF937F0;
  v113[3] = &unk_287F047D8;
  v91 = _Block_copy(v113);

  [v86 addUpdateHandlerForNamespaceName:v87 usingBlock:v91];
  _Block_release(v91);
  swift_unknownObjectRelease();

  if (v90)
  {
    sub_26EF9C330();
    v92 = v102;
    sub_26EF97498();
    sub_26EF78FAC(v93, v94, v95, v96);
    sub_26EF976C8();
    v97 = swift_allocObject();
    sub_26EF976D4(v97);
    v98 = sub_26EF97548();
    sub_26EF91110(v98, v99, v92, v100, v91, v101);
  }

  else
  {
  }

  sub_26EF85944();
}

uint64_t sub_26EF93630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for TUSTrialAssets(255, *(*a4 + 80), a3, a4);
  v7 = sub_26EF9C4D0();
  *(v5 + 24) = v7;
  *(v5 + 32) = *(v7 - 8);
  *(v5 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF93718, a4, 0);
}

uint64_t sub_26EF93718()
{
  sub_26EF9752C();
  v1 = *(v0 + 48);
  sub_26EF943B0();
  if (v1 == 1)
  {
    sub_26EF9205C(*(v0 + 40));
    v2 = sub_26EF97514();
    v3(v2);

    return MEMORY[0x2822009F8](sub_26EF97464, 0, 0);
  }

  else
  {

    sub_26EF90E3C();

    return v4();
  }
}

uint64_t sub_26EF937F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_26EF93850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_26EF97468, a4, 0);
}

uint64_t TUSTrialNamespaceManager.__allocating_init(namespaceName:trialClient:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_26EF976A0();
  v10 = swift_allocObject();
  sub_26EF9768C();
  TUSTrialNamespaceManager.init(namespaceName:trialClient:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(v11, v12, v13, v14, v15, v16, v17, a8, a9, a10, v19, a8, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return v10;
}

void TUSTrialNamespaceManager.init(namespaceName:trialClient:isInSpectatorMode:shouldEagerlyGetAssets:downloadOptions:factorsValidator:defaultFactorsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_26EF76E7C();
  v113 = v24;
  v107 = v25;
  v108 = v26;
  v112 = v27;
  v103 = v28;
  v30 = v29;
  v110 = v31;
  v111 = a22;
  v104 = a21;
  v105 = v32;
  v109 = *v23;
  v33 = v109;
  v34 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  sub_26EF97520(v34);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v35);
  v102 = &v101 - v36;
  sub_26EF76AD4();
  v37 = sub_26EF9BEC0();
  sub_26EF76CFC();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  sub_26EF810E0();
  v43 = v42 - v41;
  v106 = *(v33 + 80);
  v46 = type metadata accessor for TUSTrialAssets(255, v106, v44, v45);
  v47 = sub_26EF975E8(v46);
  sub_26EF76CFC();
  v49 = v48;
  sub_26EF974E4();
  MEMORY[0x28223BE20](v50);
  v52 = &v101 - v51;
  swift_defaultActor_initialize();
  sub_26EF9748C();
  v54 = *(v53 + 104);
  sub_26EF97498();
  sub_26EF78FAC(v55, v56, v57, v22);
  sub_26EF9748C();
  *&v23[*(v58 + 128)] = 0x40F5180000000000;
  sub_26EF97498();
  sub_26EF78FAC(v59, v60, v61, v22);
  sub_26EF97604(&v23[v54], v114);
  v62 = *(v49 + 40);
  v101 = v47;
  v62(&v23[v54], v52, v47);
  swift_endAccess();
  sub_26EF9748C();
  *&v23[*(v63 + 112)] = MEMORY[0x277D84F98];
  sub_26EF9BE90();
  sub_26EF9748C();
  (*(v39 + 32))(&v23[*(v64 + 120)], v43, v37);
  if (qword_280E13FC0 != -1)
  {
    sub_26EF974B4(&qword_280E13FC0);
  }

  sub_26EF9748C();
  *&v23[*(v65 + 168)] = v66;
  sub_26EF9748C();
  v68 = &v23[*(v67 + 136)];
  v69 = v110;
  *v68 = v110;
  *(v68 + 1) = v30;
  sub_26EF9748C();
  v72 = v107;
  v71 = v108;
  *&v23[*(v70 + 144)] = v107;
  sub_26EF9748C();
  v23[*(v73 + 152)] = v103 & 1;
  sub_26EF9748C();
  *&v23[*(v74 + 160)] = v71;
  sub_26EF9748C();
  v76 = &v23[*(v75 + 176)];
  v77 = v113;
  *v76 = v105;
  *(v76 + 1) = v77;
  sub_26EF9748C();
  v79 = &v23[*(v78 + 184)];
  v80 = v111;
  *v79 = v81;
  *(v79 + 1) = v80;
  v83 = v82;

  v84 = v72;
  v85 = v71;

  [v84 refresh];
  v86 = sub_26EF9C130();
  v87 = swift_allocObject();
  swift_weakInit();
  v88 = swift_allocObject();
  *(v88 + 16) = v106;
  *(v88 + 24) = *(v109 + 88);
  *(v88 + 32) = v87;
  *(v88 + 40) = v69;
  *(v88 + 48) = v30;
  v89 = v112;
  *(v88 + 56) = v112 & 1;
  v114[4] = sub_26EF96380;
  v114[5] = v88;
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 1107296256;
  v114[2] = sub_26EF937F0;
  v114[3] = &unk_287F04850;
  v90 = _Block_copy(v114);

  v91 = [v84 addUpdateHandlerForNamespaceName:v86 usingBlock:v90];
  _Block_release(v90);
  swift_unknownObjectRelease();

  if (v89)
  {
    sub_26EF9C330();
    v92 = v102;
    sub_26EF97498();
    sub_26EF78FAC(v93, v94, v95, v96);
    sub_26EF976C8();
    v97 = swift_allocObject();
    sub_26EF976D4(v97);
    v98 = sub_26EF97548();
    sub_26EF91110(v98, v99, v92, v100, v90, v101);
  }

  else
  {
  }

  sub_26EF85944();
}

void sub_26EF93E40()
{
  sub_26EF76E7C();
  v1 = v0;
  v3 = v2;
  v33 = v4;
  v6 = v5;
  v7 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  sub_26EF97520(v7);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v8);
  v9 = sub_26EF9C030();
  sub_26EF76CFC();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_26EF810E0();
  v15 = v14 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v32 = v9;
    sub_26EF9C020();

    swift_unknownObjectRetain();
    v18 = sub_26EF9C010();
    v19 = sub_26EF9C370();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v31 = v1;
      v20 = sub_26EF9757C();
      v34[0] = sub_26EF801A8();
      *v20 = 136315394;
      *(v20 + 4) = sub_26EF7E624(v33, v3, v34);
      *(v20 + 12) = 2080;
      v21 = [v6 description];
      v22 = sub_26EF9C160();
      v24 = v23;

      v25 = sub_26EF7E624(v22, v24, v34);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_26EF75000, v18, v19, "TrialNamespaceManager for Trial namespace %s received new configuration for %s", v20, 0x16u);
      swift_arrayDestroy();
      sub_26EF76AF4();
      v1 = v31;
      sub_26EF76AF4();
    }

    (*(v11 + 8))(v15, v32);
    sub_26EF9C330();
    sub_26EF97498();
    sub_26EF78FAC(v26, v27, v28, v29);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = v17;
    *(v30 + 40) = v1 & 1;
    sub_26EF90E54();
  }

  sub_26EF85944();
}

uint64_t sub_26EF94120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 48) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for TUSTrialAssets(255, *(*a4 + 80), a3, a4);
  v7 = sub_26EF9C4D0();
  *(v5 + 24) = v7;
  *(v5 + 32) = *(v7 - 8);
  *(v5 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF94208, a4, 0);
}

uint64_t sub_26EF94208()
{
  sub_26EF9752C();
  v1 = *(v0 + 48);
  sub_26EF943B0();
  if (v1 == 1)
  {
    sub_26EF9205C(*(v0 + 40));
    v2 = sub_26EF97514();
    v3(v2);

    return MEMORY[0x2822009F8](sub_26EF942E0, 0, 0);
  }

  else
  {

    sub_26EF90E3C();

    return v4();
  }
}

uint64_t sub_26EF942E0()
{
  sub_26EF76E54();

  sub_26EF90E3C();

  return v0();
}

uint64_t sub_26EF94338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_26EF94358, a4, 0);
}

uint64_t sub_26EF94358()
{
  sub_26EF76E54();
  sub_26EF9205C(*(v0 + 16));
  sub_26EF90E3C();

  return v1();
}

uint64_t sub_26EF943B0()
{
  v1 = *v0;
  v2 = sub_26EF9BEC0();
  v3 = sub_26EF97520(v2);
  MEMORY[0x28223BE20](v3);
  sub_26EF810E0();
  v6 = v5 - v4;
  v9 = type metadata accessor for TUSTrialAssets(255, *(v1 + 80), v7, v8);
  v10 = sub_26EF975E8(v9);
  sub_26EF97520(v10);
  sub_26EF974E4();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_26EF97498();
  sub_26EF78FAC(v14, v15, v16, v1);
  sub_26EF91E1C(v13);
  sub_26EF9BE90();
  sub_26EF91FD4(v6);
  return sub_26EF91EF8(MEMORY[0x277D84F98]);
}

uint64_t TUSTrialNamespaceManager.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 104);
  sub_26EF9761C(a1, *(*v4 + 80), a3, a4);
  sub_26EF76EA0();
  (*(v6 + 8))(v4 + v5);
  sub_26EF9748C();

  sub_26EF9748C();
  v8 = *(v7 + 120);
  sub_26EF9BEC0();
  sub_26EF76EA0();
  (*(v9 + 8))(v4 + v8);
  sub_26EF9748C();

  sub_26EF9748C();

  sub_26EF9748C();
  sub_26EF9748C();

  sub_26EF9748C();

  sub_26EF9748C();

  swift_defaultActor_destroy();
  return v4;
}

uint64_t TUSTrialNamespaceManager.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TUSTrialNamespaceManager.deinit(a1, a2, a3, a4);

  return MEMORY[0x282200960](v4);
}

uint64_t sub_26EF94660()
{
  sub_26EF76E54();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  sub_26EF9748C();
  v1[8] = v4;
  v5 = sub_26EF9C030();
  v1[9] = v5;
  v1[10] = *(v5 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v6 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  sub_26EF97520(v6);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF9479C, v0, 0);
}

uint64_t sub_26EF9479C()
{
  v93 = v0;
  sub_26EF91EB4();
  sub_26EF97680();
  v4 = sub_26EF7B030(v1, v2, v3);

  if (v4)
  {

    sub_26EF9C020();

    v5 = sub_26EF9C010();
    v6 = sub_26EF9C380();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[7];
      v88 = v0[6];
      v8 = v0[5];
      v9 = sub_26EF9757C();
      v92 = sub_26EF801A8();
      *v9 = 136315394;
      v10 = sub_26EF7E624(*(v7 + *(*v7 + 136)), *(v7 + *(*v7 + 136) + 8), &v92);
      sub_26EF97538(v10);
      *(v9 + 14) = sub_26EF7E624(v8, v88, &v92);
      _os_log_impl(&dword_26EF75000, v5, v6, "Skipping download %s for factor %s since task has already kicked off for this", v9, 0x16u);
      sub_26EF975B0();
      sub_26EF76AF4();
      sub_26EF974F0();
    }

    v11 = sub_26EF97514();
    v12(v11);
  }

  else
  {
    v15 = *(v0[7] + *(*v0[7] + 144));
    v16 = sub_26EF9C130();
    v17 = sub_26EF9C130();
    v18 = [v15 levelForFactor:v16 withNamespaceName:v17];

    if (v18)
    {
      v19 = [v18 levelOneOfCase];
      v20 = &selRef_fileValue;
      if (v19 != 100)
      {
        v20 = &selRef_directoryValue;
      }

      v21 = [v18 *v20];
      if (v21)
      {
        v22 = v21;
        if ([v21 isOnDemand])
        {
          v23 = v0[7];
          v24 = v0[8];
          v26 = v0[5];
          v25 = v0[6];
          sub_26EF9C330();
          sub_26EF97498();
          sub_26EF78FAC(v27, v28, v29, v30);
          type metadata accessor for TUSTrialNamespaceManager(255, *(v24 + 80), *(v24 + 88), v31);
          WitnessTable = swift_getWitnessTable();
          v33 = swift_allocObject();
          v33[2] = v23;
          v33[3] = WitnessTable;
          v33[4] = v23;
          v33[5] = v26;
          v33[6] = v25;
          swift_retain_n();

          sub_26EF97548();
          sub_26EF90E54();
          v34 = *(*v23 + 112);
          sub_26EF97604(v23 + v34, (v0 + 2));
          swift_isUniquelyReferenced_nonNull_native();
          v92 = *(v23 + v34);
          v35 = sub_26EF97570();
          sub_26EF96C60(v35, v36, v25, v37);
          *(v23 + v34) = v92;
          swift_endAccess();
        }

        else
        {
          sub_26EF9C020();

          v69 = sub_26EF9C010();
          v70 = sub_26EF9C390();

          v71 = os_log_type_enabled(v69, v70);
          v72 = v0[14];
          v74 = v0[9];
          v73 = v0[10];
          if (v71)
          {
            v84 = v0[5];
            v86 = v0[6];
            v91 = v0[9];
            v75 = sub_26EF9757C();
            v76 = sub_26EF801A8();
            v92 = v76;
            *v75 = 136315394;
            *(v75 + 4) = sub_26EF97594(v76, v77, v78, v79, v80, v81, v82, v83);
            *(v75 + 12) = 2080;
            *(v75 + 14) = sub_26EF7E624(v84, v86, &v92);
            _os_log_impl(&dword_26EF75000, v69, v70, "Namespace %s factor %s is not on demand so we can't explicitly download it", v75, 0x16u);
            sub_26EF975B0();
            sub_26EF76AF4();
            sub_26EF76AF4();

            (*(v73 + 8))(v72, v91);
          }

          else
          {

            (*(v73 + 8))(v72, v74);
          }
        }
      }

      else
      {
        sub_26EF9C020();

        v54 = sub_26EF9C010();
        v55 = sub_26EF9C390();

        v56 = os_log_type_enabled(v54, v55);
        v57 = v0[13];
        v58 = v0[10];
        if (v56)
        {
          v85 = v0[6];
          v90 = v0[13];
          v59 = v0[5];
          v60 = sub_26EF9757C();
          v61 = sub_26EF801A8();
          v92 = v61;
          *v60 = 136315394;
          *(v60 + 4) = sub_26EF97594(v61, v62, v63, v64, v65, v66, v67, v68);
          *(v60 + 12) = 2080;
          *(v60 + 14) = sub_26EF7E624(v59, v85, &v92);
          _os_log_impl(&dword_26EF75000, v54, v55, "Namespace %s factor %s could not get file / directory from level", v60, 0x16u);
          sub_26EF975B0();
          sub_26EF76AF4();
          sub_26EF76AF4();

          (*(v58 + 8))(v90);
        }

        else
        {

          (*(v58 + 8))(v57);
        }
      }
    }

    else
    {
      sub_26EF9C020();

      v38 = sub_26EF9C010();
      v39 = sub_26EF9C390();

      v40 = os_log_type_enabled(v38, v39);
      v41 = v0[12];
      v43 = v0[9];
      v42 = v0[10];
      if (v40)
      {
        v44 = v0[5];
        v87 = v0[6];
        v89 = v0[12];
        v45 = sub_26EF9757C();
        v46 = sub_26EF801A8();
        v92 = v46;
        *v45 = 136315394;
        *(v45 + 4) = sub_26EF97594(v46, v47, v48, v49, v50, v51, v52, v53);
        *(v45 + 12) = 2080;
        *(v45 + 14) = sub_26EF7E624(v44, v87, &v92);
        _os_log_impl(&dword_26EF75000, v38, v39, "Namespace %s factor %s does not have level", v45, 0x16u);
        swift_arrayDestroy();
        sub_26EF76AF4();
        sub_26EF76AF4();

        (*(v42 + 8))(v89, v43);
      }

      else
      {

        (*(v42 + 8))(v41, v43);
      }
    }
  }

  sub_26EF90E3C();

  return v13();
}

uint64_t sub_26EF94ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[25] = a5;
  v6[26] = a6;
  v6[24] = a4;
  v8 = sub_26EF9C030();
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26EF94FB8, a4, 0);
}

uint64_t sub_26EF94FB8(uint64_t a1)
{
  v26 = v1;
  v2 = v1[24];
  if (*(v2 + *(*v2 + 152)))
  {
    sub_26EF9C020();

    v3 = sub_26EF9C010();
    v4 = sub_26EF9C370();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v1[25];
      v5 = v1[26];
      v7 = sub_26EF800C0();
      v8 = sub_26EF76D7C();
      v25 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_26EF7E624(v6, v5, &v25);
      _os_log_impl(&dword_26EF75000, v3, v4, "Skipping factor %s download since manager is in spectator mode", v7, 0xCu);
      sub_26EF79770(v8);
      sub_26EF76AF4();
      sub_26EF76AF4();
    }

    v9 = sub_26EF97514();
    v10(v9);

    sub_26EF90E3C();

    return v11();
  }

  else
  {
    v13 = v1[25];
    v14 = v1[26];
    v24 = *(v2 + *(*v2 + 144));
    sub_26EF784C0(&qword_2806CFD20, &unk_26EF9DE40);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26EF9E430;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;

    v16 = sub_26EF9C2D0();
    v1[32] = v16;

    v17 = (v2 + *(*v2 + 136));
    v1[33] = *v17;
    v1[34] = v17[1];
    v18 = sub_26EF9C130();
    v1[35] = v18;
    v23 = *(v2 + *(*v2 + 168));
    v19 = *(v2 + *(*v2 + 160));
    sub_26EF976C8();
    v20 = swift_allocObject();
    v20[2] = v2;
    v20[3] = v13;
    v20[4] = v14;
    v1[22] = sub_26EF96EFC;
    v1[23] = v20;
    v1[18] = MEMORY[0x277D85DD0];
    v1[19] = 1107296256;
    v1[20] = sub_26EF95B7C;
    v1[21] = &unk_287F04AF0;
    v21 = _Block_copy(v1 + 18);
    v1[36] = v21;

    v1[2] = v1;
    v1[7] = v1 + 38;
    v1[3] = sub_26EF953EC;
    v22 = swift_continuation_init();
    v1[17] = sub_26EF784C0(&qword_2806CFF30, &unk_26EF9F060);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_26EF95BD0;
    v1[13] = &unk_287F04B18;
    v1[14] = v22;
    [v24 downloadLevelsForFactors:v16 withNamespace:v18 queue:v23 options:v19 progress:v21 completion:v1 + 10];

    return MEMORY[0x282200938](v1 + 2);
  }
}

uint64_t sub_26EF953EC()
{
  sub_26EF76E54();
  sub_26EF97558();
  v1 = v0[6];
  v0[37] = v1;
  v2 = v0[24];
  if (v1)
  {
    v3 = sub_26EF956FC;
  }

  else
  {
    v3 = sub_26EF95504;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_26EF95504()
{
  v21 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 304);
  _Block_release(*(v0 + 288));

  sub_26EF9C020();

  v4 = sub_26EF9C010();
  v5 = sub_26EF9C370();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 224);
    v18 = *(v0 + 216);
    v19 = *(v0 + 248);
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = swift_slowAlloc();
    v20 = sub_26EF801A8();
    *v9 = 136315650;
    v10 = sub_26EF97570();
    v13 = sub_26EF7E624(v10, v11, v12);
    sub_26EF97538(v13);
    *(v9 + 14) = sub_26EF7E624(v8, v7, &v20);
    *(v9 + 22) = 1024;
    *(v9 + 24) = v3;
    _os_log_impl(&dword_26EF75000, v4, v5, "Namespace %s factor %s download success %{BOOL}d", v9, 0x1Cu);
    swift_arrayDestroy();
    sub_26EF76AF4();
    sub_26EF974F0();

    (*(v6 + 8))(v19, v18);
  }

  else
  {

    v14 = sub_26EF97514();
    v15(v14);
  }

  sub_26EF943B0();

  sub_26EF90E3C();

  return v16();
}

uint64_t sub_26EF956FC()
{
  v28 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[32];
  swift_willThrow();
  _Block_release(v2);

  sub_26EF9C020();

  v5 = v1;
  v6 = sub_26EF9C010();
  v7 = sub_26EF9C390();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[37];
  if (v8)
  {
    v10 = v0[33];
    v11 = v0[34];
    v25 = v0[27];
    v26 = v0[29];
    v23 = v0[26];
    v24 = v0[28];
    v12 = v0[25];
    v13 = sub_26EF76D7C();
    v14 = swift_slowAlloc();
    v27[0] = sub_26EF801A8();
    *v13 = 136315650;
    v15 = sub_26EF7E624(v10, v11, v27);
    sub_26EF97538(v15);
    *(v13 + 14) = sub_26EF7E624(v12, v23, v27);
    *(v13 + 22) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v17;
    *v14 = v17;
    _os_log_impl(&dword_26EF75000, v6, v7, "Namespace %s factor %s download error: %@", v13, 0x20u);
    sub_26EF97330(v14, &qword_2806CFF10, &qword_26EF9EE08);
    sub_26EF76AF4();
    swift_arrayDestroy();
    sub_26EF76AF4();
    sub_26EF974F0();

    (*(v24 + 8))(v26, v25);
  }

  else
  {
    v19 = v0[28];
    v18 = v0[29];
    v20 = v0[27];

    (*(v19 + 8))(v18, v20);
  }

  sub_26EF90E3C();

  return v21();
}

uint64_t sub_26EF95968(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_26EF9C030();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF9C020();

  v12 = sub_26EF9C010();
  v13 = sub_26EF9C370();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v18 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_26EF7E624(*(a2 + *(*a2 + 136)), *(a2 + *(*a2 + 136) + 8), &v19);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_26EF7E624(a3, a4, &v19);
    *(v15 + 22) = 2048;
    *(v15 + 24) = v18;
    _os_log_impl(&dword_26EF75000, v12, v13, "Download %s for factor %s download %ld%%", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743859D0](v16, -1, -1);
    MEMORY[0x2743859D0](v15, -1, -1);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_26EF95B7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_26EF95BD0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_26EF96F34((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_26EF95C54(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_26EF95CC0(v9, v4);
  }
}

uint64_t sub_26EF95C54(uint64_t a1, uint64_t a2)
{
  sub_26EF784C0(&qword_2806CFD88, &qword_26EF9E3C8);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_26EF95CE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26EF95D84;

  return sub_26EF94660();
}

uint64_t sub_26EF95D84()
{
  sub_26EF76E54();
  sub_26EF97558();
  v1 = *v0;
  sub_26EF76B18();
  *v2 = v1;

  sub_26EF90E3C();

  return v3();
}

uint64_t sub_26EF95E64@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF95F50(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26EF9745C;

  return v6(a1);
}

uint64_t sub_26EF96048(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26EF96140;

  return v6(a1);
}

uint64_t sub_26EF96140()
{
  sub_26EF76E54();
  sub_26EF97558();
  v1 = *v0;
  sub_26EF76B18();
  *v2 = v1;

  sub_26EF90E3C();

  return v3();
}

unint64_t sub_26EF96224()
{
  result = qword_2806CFF18;
  if (!qword_2806CFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CFF18);
  }

  return result;
}

uint64_t sub_26EF96298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26EF962B0()
{
  sub_26EF9752C();
  sub_26EF974A4();
  v1 = swift_task_alloc();
  v2 = sub_26EF76B28(v1);
  *v2 = v3;
  v4 = sub_26EF97474(v2);

  return sub_26EF93850(v4, v5, v6, v0);
}

uint64_t sub_26EF96340()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_26EF963DC()
{
  sub_26EF9752C();
  sub_26EF974A4();
  v1 = swift_task_alloc();
  v2 = sub_26EF76B28(v1);
  *v2 = v3;
  v4 = sub_26EF97474(v2);

  return sub_26EF94338(v4, v5, v6, v0);
}

void sub_26EF96488(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_26EF96890(319, &qword_280E13E70, &qword_280E13E78, 0x277D737D8);
    if (v2 <= 0x3F)
    {
      sub_26EF96890(319, &qword_280E13E60, &qword_280E13E68, 0x277D736D0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26EF96558(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return sub_26EF7EC68(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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

void sub_26EF966A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v17 = a2;
            }
          }

          else
          {

            sub_26EF78FAC(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
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
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_26EF96890(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_26EF797BC(255, a3, a4);
    v5 = sub_26EF9C4D0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26EF968E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TUSTrialAssets(255, *(a1 + 80), a3, a4);
  result = sub_26EF9C4D0();
  if (v5 <= 0x3F)
  {
    result = sub_26EF9BEC0();
    if (v6 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TUSTrialNameSpaceError(_BYTE *result, int a2, int a3)
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

unint64_t sub_26EF96B60()
{
  result = qword_2806CFF20;
  if (!qword_2806CFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CFF20);
  }

  return result;
}

uint64_t sub_26EF96BB4()
{
  sub_26EF97564();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = swift_task_alloc();
  v5 = sub_26EF76B28(v4);
  *v5 = v6;
  v7 = sub_26EF97474(v5);

  return sub_26EF94ED8(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_26EF96C60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_26EF78F34(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_26EF784C0(&qword_2806CFF28, &qword_26EF9F038);
  if ((sub_26EF9C620() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_26EF78F34(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_26EF9C840();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_26EF96D9C(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_26EF96D9C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_26EF96DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF784C0(&unk_2806CFF00, &qword_26EF9EE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF96E54()
{
  sub_26EF9752C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_26EF76B28(v3);
  *v4 = v5;
  v4[1] = sub_26EF97460;
  v6 = sub_26EF76DB0();

  return v7(v6, v2, v1);
}

void *sub_26EF96F34(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26EF96F78()
{
  sub_26EF97564();
  sub_26EF9766C();
  v2 = swift_task_alloc();
  v3 = sub_26EF76B28(v2);
  *v3 = v4;
  v5 = sub_26EF97474(v3);

  return sub_26EF94120(v5, v6, v7, v1, v0);
}

uint64_t sub_26EF97014()
{
  sub_26EF97564();
  sub_26EF974A4();
  v3 = swift_task_alloc();
  v4 = sub_26EF76B28(v3);
  *v4 = v5;
  v4[1] = sub_26EF97460;
  v6 = sub_26EF76DB0();

  return v7(v6, v2, v0, v1);
}

uint64_t sub_26EF970C4()
{
  sub_26EF97564();
  sub_26EF974A4();
  v3 = swift_task_alloc();
  v4 = sub_26EF76B28(v3);
  *v4 = v5;
  v4[1] = sub_26EF95D84;
  v6 = sub_26EF76DB0();

  return v7(v6, v2, v0, v1);
}

uint64_t sub_26EF97174(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t sub_26EF971D8()
{
  sub_26EF97564();
  sub_26EF9766C();
  v2 = swift_task_alloc();
  v3 = sub_26EF76B28(v2);
  *v3 = v4;
  v5 = sub_26EF97474(v3);

  return sub_26EF93630(v5, v6, v7, v1, v0);
}

unint64_t sub_26EF97274()
{
  result = qword_280E14388;
  if (!qword_280E14388)
  {
    sub_26EF9C490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E14388);
  }

  return result;
}

unint64_t sub_26EF972CC()
{
  result = qword_280E14398;
  if (!qword_280E14398)
  {
    sub_26EF7948C(&unk_2806CFE60, qword_26EF9ED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E14398);
  }

  return result;
}

uint64_t sub_26EF97330(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_26EF784C0(a2, a3);
  sub_26EF76EA0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26EF97388(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26EF973A0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_26EF973F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26EF974B4(uint64_t a1)
{

  return swift_once();
}

void sub_26EF974F0()
{

  JUMPOUT(0x2743859D0);
}

uint64_t sub_26EF97538(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t sub_26EF9757C()
{

  return swift_slowAlloc();
}

unint64_t sub_26EF97594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_26EF7E624(v9, v8, va);
}

uint64_t sub_26EF975B0()
{

  return swift_arrayDestroy();
}

uint64_t sub_26EF975CC(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_26EF975E8(uint64_t a1)
{

  return sub_26EF9C4D0();
}

uint64_t sub_26EF97604(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_26EF9761C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TUSTrialAssets(255, a2, a3, a4);

  return sub_26EF9C4D0();
}

uint64_t sub_26EF976D4(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

id sub_26EF976F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26EF9C130();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

void __swiftcall WordPieceTokenizer.init()(TextUnderstandingShared::WordPieceTokenizer_optional *__return_ptr retstr)
{
  sub_26EF9C030();
  sub_26EF76D64();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_26EF97E00();
  sub_26EF797BC(0, &qword_2806CFC10, 0x277CCA8D8);
  v5 = sub_26EF976F4(0xD000000000000021, 0x800000026EFA0B20);
  if (v5 && (v6 = sub_26EF97CAC(0x6365697064726F77, 0xEE006261636F7665, 1701409396, 0xE400000000000000, v5), v7))
  {
    WordPieceTokenizer.init(path:)(&v11, *&v6);

    if (v11.value.tokenizer.super.isa)
    {
      retstr->value.tokenizer.super.isa = v11.value.tokenizer.super.isa;
      return;
    }
  }

  else
  {
    sub_26EF9C020();
    v8 = sub_26EF9C010();
    v9 = sub_26EF9C390();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_26EF75000, v8, v9, "Could not find file wordpiecevocab.trie", v10, 2u);
      MEMORY[0x2743859D0](v10, -1, -1);
    }

    (*(v3 + 8))();
  }

  retstr->value.tokenizer.super.isa = 0;
}

void __swiftcall WordPieceTokenizer.init(path:)(TextUnderstandingShared::WordPieceTokenizer_optional *__return_ptr retstr, Swift::String path)
{
  object = path._object;
  countAndFlagsBits = path._countAndFlagsBits;
  sub_26EF9C030();
  sub_26EF76D64();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_26EF97E00();
  sub_26EF797BC(0, &unk_280E13E80, off_279DBB258);

  v8 = sub_26EF97B38(countAndFlagsBits, object);
  if (v8)
  {
    v9 = v8;

    v10 = [objc_allocWithZone(WordPieceTokenizerObjc) initWithVocab_];
  }

  else
  {
    sub_26EF9C020();

    v11 = sub_26EF9C010();
    v12 = sub_26EF9C390();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      v15 = sub_26EF7E624(countAndFlagsBits, object, &v16);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_26EF75000, v11, v12, "Could not create burst trie dictionary for path %s", v13, 0xCu);
      sub_26EF79770(v14);
      MEMORY[0x2743859D0](v14, -1, -1);
      MEMORY[0x2743859D0](v13, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))();
    v10 = 0;
  }

  retstr->value.tokenizer.super.isa = v10;
}

id sub_26EF97B38(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26EF9C130();

  v4 = [v2 initWithPath_];

  return v4;
}

void __swiftcall WordPieceTokenizer.encode(text:)(TextUnderstandingShared::TokenizerOutput *__return_ptr retstr, Swift::String text)
{
  v4 = *v2;
  v15 = sub_26EF9C1B0();
  v16 = v5;
  v14 = sub_26EF76DBC();
  v13 = MEMORY[0x277D837D0];
  v6 = sub_26EF9C530();
  v8 = v7;

  v9 = sub_26EF9C130();
  v10 = [v4 tokenize:v9 withLength:{512, v13, v14, v14, v14, 32, 0xE100000000000000, 10, 0xE100000000000000, v15, v16}];

  [v4 padId];
  v17.super.isa = v10;
  v17._tokenIds = v6;
  v17._tokenRanges = v8;
  TokenizerOutput.init(tokenizerOutputObjc:padId:processedInput:)(retstr, v17, v12, v11);
}

uint64_t sub_26EF97CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_26EF9C130();

  v7 = sub_26EF9C130();

  v8 = [a5 pathForResource:v6 ofType:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_26EF9C160();

  return v9;
}

uint64_t sub_26EF97D74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26EF97DB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26EF987A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id *sub_26EF987CC(id *result)
{
  v28 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if ([result[30] containsIndex:result[23]])
    {
      v2 = [v1[31] lastObject];
      v3 = sub_26EF98BE0(v1);
      v29.location = [v2 range];
      v30.location = v3;
      v30.length = 0;
      v4 = NSUnionRange(v29, v30);
      v5 = [_TXHtmlParserHyperlink alloc];
      v6 = [v2 url];
      v7 = [(_TXHtmlParserHyperlink *)v5 initWithURL:v6 range:v4.location, v4.length];
      v8 = [(_TXHtmlParserHyperlink *)v7 range];
      if (HIDWORD(v8))
      {
        v10 = 0;
      }

      else
      {
        v10 = HIDWORD(v9) == 0;
      }

      if (v10)
      {
        CFArrayAppendValue(v1[33], (v8 | (v9 << 32)));
        v11 = v1[32];
        v12 = [(_TXHtmlParserHyperlink *)v7 url];
        [v11 addObject:v12];
      }

      [v1[31] removeLastObject];
      [v1[30] removeIndex:v1[23]];
    }

    result = [v1[24] containsIndex:v1[23]];
    if (result)
    {
      v13 = [v1[26] lastObject];
      v14 = [v13 unsignedIntegerValue];

      v15 = v1[14];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v16 = [v1[27] lastObject];
      v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = &v15[-v14];
        v20 = *v24;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v23 + 1) + 8 * i);
            [v22 addIndexesInRange:{v14, v19}];
            [v1[25] removeObject:v22];
          }

          v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v18);
      }

      [v1[24] removeIndex:v1[23]];
      [v1[26] removeLastObject];
      result = [v1[27] removeLastObject];
    }

    v1[23] = v1[23] - 1;
  }

  return result;
}

void sub_26EF98A34(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 128) length])
    {
      v2 = objc_autoreleasePoolPush();
      v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:*(a1 + 128) encoding:4];
      if (v3)
      {
        if ((*(a1 + 145) & 1) == 0)
        {
          v6 = v3;
          v4 = _PASCollapseWhitespaceAndStrip();

          v3 = v4;
        }

        v7 = v3;
        if ([(__CFString *)v3 length])
        {
          *(a1 + 120) = 0;
        }
      }

      else
      {
        v7 = &stru_287F04D80;
      }

      objc_autoreleasePoolPop(v2);
    }

    else
    {
      v7 = &stru_287F04D80;
    }

    if ((*(a1 + 120) & 1) == 0)
    {
      [*(a1 + 24) addObject:v7];
      v5 = *(a1 + 112) + [(__CFString *)v7 length];
      *(a1 + 120) = 1;
      *(a1 + 112) = v5 + 1;
    }

    [*(a1 + 128) setLength:0];
  }
}

_TXHtmlParserHyperlink *sub_26EF98B4C(uint64_t a1, CFIndex a2)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), a2);
  v6 = [[_TXHtmlParserHyperlink alloc] initWithURL:v4 range:ValueAtIndex, HIDWORD(ValueAtIndex)];

  return v6;
}

uint64_t sub_26EF98BE0(uint64_t a1)
{
  v2 = *(a1 + 112);
  if ([*(a1 + 128) length])
  {
    v3 = [MEMORY[0x277CCACA8] _pas_stringWithDataNoCopy:*(a1 + 128) encoding:4 nullTerminated:0];
    if (v3)
    {
      v4 = v3;
      if (![v3 length] || (*(a1 + 145) & 1) != 0)
      {
        v6 = v4;
      }

      else
      {
        v5 = [v4 characterAtIndex:{objc_msgSend(v4, "length") - 1}];
        v6 = _PASCollapseWhitespaceAndStrip();

        v2 += [v6 length];
        if ([v6 length] && objc_msgSend(v6, "characterAtIndex:", objc_msgSend(v6, "length") - 1) != v5)
        {
          ++v2;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v2;
}

uint64_t sub_26EF98CC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = a4 - 1;
    while (1)
    {
      v10 = *(*(v6[5] + 8) + 24);
      v11 = *(a2 + v8);
      if (v10 > 3)
      {
        if (v10 > 5)
        {
          if (v10 == 6)
          {
            result = (v11 & 0x80000000) != 0 ? __maskrune(*(a2 + v8), 0x4000uLL) : *(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x4000u;
            v10 = v11 == 62 ? 7 : 0;
            if (result)
            {
              v10 = 6;
            }
          }
        }

        else
        {
          v15 = (v11 & 0xFFFFFFDF) == 0x4D ? 5 : 0;
          v16 = (v11 & 0xFFFFFFDF) == 0x4C ? 6 : 0;
          v10 = v10 == 4 ? v15 : v16;
        }
      }

      else
      {
        if ((v11 & 0xFFFFFFDF) == 0x48)
        {
          v12 = 3;
        }

        else
        {
          v12 = 0;
        }

        v13 = 4 * ((v11 & 0xFFFFFFDF) == 84);
        if (v10 == 2)
        {
          v13 = v12;
        }

        v14 = v11 == 60;
        if (v10)
        {
          v14 = 2 * (v11 == 47);
        }

        v10 = v10 <= 1 ? v14 : v13;
      }

      *(*(v6[5] + 8) + 24) = v10;
      v17 = *(v6[5] + 8);
      v18 = *(v17 + 24);
      if (v18 == 7)
      {
        break;
      }

      if (v8 == v9 || (v8 - v7) > 0x7CF)
      {
        goto LABEL_35;
      }

      ++v8;
LABEL_42:
      if (v8 == a4)
      {
        return result;
      }
    }

    *(v17 + 24) = 0;
LABEL_35:
    *(v6[4] + 176) = v6[7] + v7;
    *(v6[4] + 8) = a2 + v7;
    *(v6[4] + 16) = ++v8 - v7;
    v19 = v6[4];
    v20 = *(v19 + 16);
    if (v20 >> 31)
    {
      __assert_rtn("[_TXHtmlParser _consumeHtmlDataEnumerator:]_block_invoke", "_TXHtmlParser.m", 343, "_chunkLength <= INT_MAX");
    }

    result = htmlParseChunk(*(v19 + 136), *(v19 + 8), v20, v18 == 7);
    if (v18 == 7)
    {
      result = sub_26EF98ECC(v6[4]);
      *(*(v6[6] + 8) + 24) = v8;
    }

    v7 = v8;
    goto LABEL_42;
  }

  return result;
}

void *sub_26EF98ECC(void *user_data)
{
  if (user_data)
  {
    v1 = user_data;
    if (user_data[17])
    {
      MEMORY[0x274385270]();
    }

    PushParserCtxt = htmlCreatePushParserCtxt(&stru_282040928, v1, 0, 0, 0, XML_CHAR_ENCODING_UTF8);
    v1[17] = PushParserCtxt;

    return htmlCtxtUseOptions(PushParserCtxt, 2164993);
  }

  return user_data;
}

void sub_26EF98F3C(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (v5 && a3 && a2 && (v5[18] & 1) == 0)
  {
    v6 = v5;
    [v5[16] appendBytes:a2 length:a3];
    v5 = v6;
  }
}

void sub_26EF98FA8(void *a1, uint64_t a2)
{
  v6 = a1;
  if (!strcmp(a2, "title") || !strcmp(a2, "script") || !strcmp(a2, "style"))
  {
    v4 = v6;
    if (v6)
    {
      v6[144] = 0;
    }
  }

  else if (*a2 == 98 && *(a2 + 1) == 114 && !*(a2 + 2))
  {
    v4 = v6;
    if (v6)
    {
      v6[120] = 0;
      sub_26EF98A34(v6);
      v4 = v6;
    }
  }

  else
  {
    v3 = htmlTagLookup(a2);
    v4 = v6;
    if (v3)
    {
      if (!v3->isinline)
      {
        v5 = strcmp(a2, "pre");
        sub_26EF98A34(v6);
        v4 = v6;
        if (v6)
        {
          if (!v5 && v6[145] == 1)
          {
            v6[145] = 0;
          }
        }
      }
    }
  }

  sub_26EF987CC(v4);
}

void sub_26EF990CC(void *a1, uint64_t a2, uint64_t a3)
{
  v109 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    ++v5[23];
  }

  if (!strcmp(a2, "title") || !strcmp(a2, "script") || !strcmp(a2, "style"))
  {
    if (v6)
    {
      *(v6 + 144) = 1;
    }
  }

  else if (*a2 != 98 || *(a2 + 1) != 114 || *(a2 + 2))
  {
    v7 = htmlTagLookup(a2);
    if (v7)
    {
      if (!v7->isinline)
      {
        v8 = strcmp(a2, "pre");
        if (v6 && !v8)
        {
          *(v6 + 145) = 1;
        }

        sub_26EF98A34(v6);
        if (!strcmp(a2, "table"))
        {
          if (!v6)
          {
            goto LABEL_155;
          }

          v24 = *(v6 + 160);
        }

        else
        {
          if (strcmp(a2, "blockquote"))
          {
            if (!strcmp(a2, "div"))
            {
              if (a3)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v9 = strcmp(a2, "pre");
              if (a3 && !v9)
              {
LABEL_19:
                v10 = *a3;
                while (1)
                {
                  if (!strcmp(v10, "class"))
                  {
                    v12 = *(a3 + 8);
                    if (v12)
                    {
                      if (!strcmp(a2, "div") && (strstr(v12, "gmail_quote") || strstr(v12, "yahoo_quoted") || !strcmp(v12, "domino-section")))
                      {
                        goto LABEL_100;
                      }

                      v92 = 0u;
                      v93 = 0u;
                      v90 = 0u;
                      v91 = 0u;
                      v13 = [&unk_287F060E8 countByEnumeratingWithState:&v90 objects:buffer count:16];
                      if (v13)
                      {
                        break;
                      }
                    }
                  }

LABEL_21:
                  v11 = *(a3 + 16);
                  a3 += 16;
                  v10 = v11;
                  if (!v11)
                  {
                    goto LABEL_155;
                  }
                }

                v14 = v13;
                v15 = *v91;
LABEL_30:
                v16 = 0;
                while (1)
                {
                  if (*v91 != v15)
                  {
                    objc_enumerationMutation(&unk_287F060E8);
                  }

                  if (strstr(v12, [*(*(&v90 + 1) + 8 * v16) UTF8String]))
                  {
                    break;
                  }

                  if (v14 == ++v16)
                  {
                    v14 = [&unk_287F060E8 countByEnumeratingWithState:&v90 objects:buffer count:16];
                    if (v14)
                    {
                      goto LABEL_30;
                    }

                    goto LABEL_21;
                  }
                }

                if (!v6)
                {
                  goto LABEL_155;
                }

                v24 = *(v6 + 168);
                goto LABEL_105;
              }
            }

            if (*a2 == 104 && *(a2 + 1) == 114 && a3 && !*(a2 + 2))
            {
              v52 = *a3;
              v51 = (a3 + 16);
              v50 = v52;
              while (1)
              {
                if (*v50 == 105 && v50[1] == 100 && !v50[2])
                {
                  v53 = *(v51 - 1);
                  if (v53)
                  {
                    if (!strcmp(v53, "stopSpelling"))
                    {
                      break;
                    }
                  }
                }

                v54 = *v51;
                v51 += 2;
                v50 = v54;
                if (!v54)
                {
                  goto LABEL_155;
                }
              }

              if (v6 && *(v6 + 224) == 0x7FFFFFFFFFFFFFFFLL)
              {
                *(v6 + 224) = *(v6 + 112);
              }
            }

            goto LABEL_155;
          }

LABEL_100:
          if (!v6)
          {
            goto LABEL_155;
          }

          v24 = *(v6 + 152);
        }

LABEL_105:
        sub_26EF99A1C(v6, v24);
        goto LABEL_155;
      }
    }
  }

  if (*a2 != 97 || !a3 || *(a2 + 1))
  {
    goto LABEL_155;
  }

  while (1)
  {
    v17 = objc_autoreleasePoolPush();
    if (!strcmp(*a3, "href"))
    {
      break;
    }

    objc_autoreleasePoolPop(v17);
    v18 = *(a3 + 16);
    a3 += 16;
    if (!v18)
    {
      goto LABEL_155;
    }
  }

  v19 = *(a3 + 8);
  if (!v19)
  {
    goto LABEL_154;
  }

  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v19 encoding:4];
  if (!v20)
  {
    goto LABEL_153;
  }

  v21 = 0x277CBE000uLL;
  v22 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v20];
  if (v22)
  {
    v23 = v22;
    goto LABEL_142;
  }

  v25 = objc_autoreleasePoolPush();
  v26 = v20;
  v27 = objc_opt_self();

  if (!v27)
  {
    goto LABEL_102;
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  *buffer = 0u;
  v95 = 0u;
  Length = CFStringGetLength(v26);
  theString = v26;
  v105 = 0;
  v106 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v26);
  CStringPtr = 0;
  v103 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v26, 0x600u);
  }

  v107 = 0;
  v108 = 0;
  v104 = CStringPtr;
  if (Length <= 0)
  {
LABEL_102:

    goto LABEL_141;
  }

  v85 = v26;
  v86 = v25;
  v87 = v20;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 64;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v37 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v33 >= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = v33;
    }

    v39 = v106;
    if (v106 <= v33)
    {
      goto LABEL_85;
    }

    if (v103)
    {
      v40 = &v103[v105];
LABEL_62:
      v41 = v40[v33];
      goto LABEL_65;
    }

    if (!v104)
    {
      if (v108 <= v33 || v32 > v33)
      {
        v46 = v38 + v31;
        v47 = v34 - v38;
        v48 = v33 - v38;
        v88 = v35;
        v49 = v48 + 64;
        if (v48 + 64 >= v106)
        {
          v49 = v106;
        }

        v107 = v48;
        v108 = v49;
        if (v106 >= v47)
        {
          v39 = v47;
        }

        v110.location = v48 + v105;
        v110.length = v39 + v46;
        CFStringGetCharacters(theString, v110, buffer);
        v35 = v88;
        v32 = v107;
      }

      v40 = &buffer[-v32];
      goto LABEL_62;
    }

    v41 = v104[v105 + v33];
LABEL_65:
    if (v41 == 35)
    {
      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v37 = v33;
      }
    }

    else if (v41 == 63)
    {
      if (v37 == 0x7FFFFFFFFFFFFFFFLL && v36 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = v33;
      }
    }

    else if (v41 == 47 && v36 == 0x7FFFFFFFFFFFFFFFLL && v37 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = 0x7FFFFFFFFFFFFFFFLL;
      if (v35 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v36 = 0x7FFFFFFFFFFFFFFFLL;
        v35 = v33;
      }

      else
      {
        if (v33 == v35 + 1)
        {
          v35 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v36 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

LABEL_85:
    ++v33;
    --v31;
    ++v34;
  }

  while (Length != v33);
  v89 = v35;
  v26 = v85;

  if (v37 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v84 = [(__CFString *)v85 length]- (v37 + 1);
    v55 = [(__CFString *)v85 substringWithRange:v37 + 1];
    v56 = [MEMORY[0x277CCA900] URLFragmentAllowedCharacterSet];
    v57 = [v55 stringByAddingPercentEncodingWithAllowedCharacters:v56];

    if (v57)
    {
      v58 = [(__CFString *)v85 stringByReplacingCharactersInRange:v37 + 1 withString:v84, v57];

      v26 = v58;
    }
  }

  if (v36 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = [(__CFString *)v26 length];
    if (v37 >= v59)
    {
      v60 = v59;
    }

    else
    {
      v60 = v37;
    }

    v61 = v60 - (v36 + 1);
    v62 = [(__CFString *)v26 substringWithRange:v36 + 1, v61];
    v63 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v64 = [v62 stringByAddingPercentEncodingWithAllowedCharacters:v63];

    if (v64)
    {
      v65 = [(__CFString *)v26 stringByReplacingCharactersInRange:v36 + 1 withString:v61, v64];

      v26 = v65;
    }
  }

  if (v89 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = v86;
    v20 = v87;
    v21 = 0x277CBE000;
  }

  else
  {
    if (v37 >= v36)
    {
      v66 = v36;
    }

    else
    {
      v66 = v37;
    }

    v67 = [(__CFString *)v26 length];
    if (v66 >= v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = v66;
    }

    v69 = v68 - (v89 + 1);
    v70 = [(__CFString *)v26 substringWithRange:v89 + 1, v69];
    v71 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
    v72 = [v70 stringByAddingPercentEncodingWithAllowedCharacters:v71];

    if (v72)
    {
      v73 = [(__CFString *)v26 stringByReplacingCharactersInRange:v89 + 1 withString:v69, v72];

      v26 = v73;
    }

    v25 = v86;
    v20 = v87;
    v21 = 0x277CBE000uLL;
  }

LABEL_141:
  v74 = [(__CFString *)v26 stringByReplacingOccurrencesOfString:@" " withString:@"%20" options:2 range:0, [(__CFString *)v26 length]];

  v23 = [objc_alloc(*(v21 + 3008)) initWithString:v74];
  objc_autoreleasePoolPop(v25);
  if (v23)
  {
LABEL_142:
    v75 = [v23 host];
    if ([v75 compare:@"apple.com" options:3] && objc_msgSend(v75, "rangeOfString:options:", @".apple.com", 15) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v76 = v75;
      if ([v76 compare:@"icloud.com" options:3])
      {
        v77 = [v76 rangeOfString:@".icloud.com" options:15];

        if (v77 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!v6)
          {
LABEL_152:

            goto LABEL_153;
          }

LABEL_151:
          v78 = *(v6 + 240);
          v79 = *(v6 + 184);
          v80 = v23;
          [v78 addIndex:v79];
          v81 = sub_26EF98BE0(v6);
          v82 = *(v6 + 248);
          v83 = [[_TXHtmlParserHyperlink alloc] initWithURL:v80 range:v81, 0];

          [v82 addObject:v83];
          goto LABEL_152;
        }

LABEL_150:
        [*(v6 + 232) addObject:v23];
        goto LABEL_151;
      }
    }

    goto LABEL_150;
  }

LABEL_153:

LABEL_154:
  objc_autoreleasePoolPop(v17);
LABEL_155:
}

void sub_26EF99A1C(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([*(a1 + 200) containsObject:?] & 1) == 0)
  {
    if (([*(a1 + 192) containsIndex:*(a1 + 184)] & 1) == 0)
    {
      [*(a1 + 192) addIndex:*(a1 + 184)];
      v3 = *(a1 + 208);
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 112)];
      [v3 addObject:v4];

      v5 = *(a1 + 216);
      v6 = objc_opt_new();
      [v5 addObject:v6];
    }

    [*(a1 + 200) addObject:v8];
    v7 = [*(a1 + 216) lastObject];
    [v7 addObject:v8];
  }
}

void sub_26EF9A59C()
{
  v0 = objc_autoreleasePoolPush();
  v3 = -257;
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v3 length:2];
  v2 = qword_2806D0D10;
  qword_2806D0D10 = v1;

  objc_autoreleasePoolPop(v0);
}

id sub_26EF9A658()
{
  if (qword_280E14440 != -1)
  {
    dispatch_once(&qword_280E14440, &unk_287F04C60);
  }

  v1 = qword_280E14448;

  return v1;
}

void sub_26EF9A6AC()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:"" length:1];
  v2 = qword_280E14448;
  qword_280E14448 = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_26EF9A808(uint64_t a1, uint64_t a2, NSRange range1, _BYTE *a4)
{
  length = range1.length;
  location = range1.location;
  v15 = *(a1 + 48);
  v14.location = location;
  v14.length = length;
  v9 = NSIntersectionRange(v14, v15);
  if (v9.length)
  {
    if (v9.length == *(a1 + 64))
    {
      [*(a1 + 32) addObject:*(a1 + 40)];
      *a4 = 1;
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277CBEA90]);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_26EF9A910;
      v12[3] = &unk_279DBB808;
      v13 = *(a1 + 40);
      v11 = [v10 initWithBytesNoCopy:a2 length:v9.length deallocator:v12];
      [*(a1 + 32) addObject:v11];
    }
  }
}

void sub_26EF9A9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26EF9AA08(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if (CFStringCompare(v5, *(a1 + 40), 0) == kCFCompareEqualTo)
  {
    *(*(*(a1 + 32) + 8) + 24) = LXEntryGetTokenID();
    *a3 = 1;
  }

  CFRelease(v5);
}

void sub_26EF9B6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 192), 8);
  _Block_object_dispose((v30 - 160), 8);
  _Block_object_dispose((v30 - 128), 8);
  _Block_object_dispose((v30 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_26EF9B72C(uint64_t a1, UTF32Char theChar, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  if (theChar - 0x10000 < 0x100000)
  {
LABEL_2:
    v12 = 4;
    goto LABEL_9;
  }

  if ((theChar - 2048) >> 11 >= 0x1F)
  {
    if (theChar - 128 >= 0x780)
    {
      if (theChar >= 0x80)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          v32[0] = 67109120;
          v32[1] = theChar;
          _os_log_fault_impl(&dword_26EF75000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "WordPieceTokenizer: Invalid UTF32 character %u", v32, 8u);
        }

        goto LABEL_2;
      }

      v12 = 1;
    }

    else
    {
      v12 = 2;
    }
  }

  else
  {
    v12 = 3;
  }

LABEL_9:
  if (*(a1 + 80) != *(*(*(a1 + 40) + 8) + 24))
  {
    v13 = v11 + v10;
    IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(*(a1 + 88), theChar);
    if (theChar == 176 || IsLongCharacterMember)
    {
      *(*(*(a1 + 48) + 8) + 24) += v12;
      *(*(*(a1 + 56) + 8) + 24) += a5;
    }

    else
    {
      if (*(*(*(a1 + 56) + 8) + 24))
      {
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 24);
        v17 = *(a1 + 80);
        v18 = v16;
        if (v17 > v16)
        {
          v19 = *(*(*(a1 + 48) + 8) + 24);
          v20 = (*(a1 + 96) + 16 * v16);
          *v20 = *(*(*(a1 + 64) + 8) + 24);
          v20[1] = v19;
          v15 = *(*(a1 + 40) + 8);
          v16 = *(v15 + 24);
          v17 = *(a1 + 80);
          v18 = v16;
        }

        if (v17 <= v18)
        {
          v23 = 0;
        }

        else
        {
          v21 = *(*(*(a1 + 56) + 8) + 24);
          v22 = (*(a1 + 104) + 16 * v18);
          *v22 = *(*(*(a1 + 72) + 8) + 24);
          v22[1] = v21;
          v15 = *(*(a1 + 40) + 8);
          v16 = *(v15 + 24);
          v23 = 1;
        }

        *(v15 + 24) = v16 + v23;
      }

      if (!CFCharacterSetIsLongCharacterMember(*(a1 + 112), theChar))
      {
        v24 = *(*(a1 + 40) + 8);
        v25 = *(v24 + 24);
        v26 = *(a1 + 80);
        v27 = v25;
        if (v26 > v25)
        {
          v28 = (*(a1 + 96) + 16 * v25);
          *v28 = v13;
          v28[1] = v12;
          v24 = *(*(a1 + 40) + 8);
          v25 = *(v24 + 24);
          v26 = *(a1 + 80);
          v27 = v25;
        }

        if (v26 <= v27)
        {
          v30 = 0;
        }

        else
        {
          v29 = (*(a1 + 104) + 16 * v27);
          *v29 = a4;
          v29[1] = a5;
          v24 = *(*(a1 + 40) + 8);
          v25 = *(v24 + 24);
          v30 = 1;
        }

        *(v24 + 24) = v25 + v30;
      }

      *(*(*(a1 + 64) + 8) + 24) = v12 + v13;
      *(*(*(a1 + 72) + 8) + 24) = a4 + a5;
      *(*(*(a1 + 48) + 8) + 24) = 0;
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    v31 = *(*(a1 + 32) + 8);
    *(v31 + 32) = v13;
    *(v31 + 40) = v12;
  }
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}