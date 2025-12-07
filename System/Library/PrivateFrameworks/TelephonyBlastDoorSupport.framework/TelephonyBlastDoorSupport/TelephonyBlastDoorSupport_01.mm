void sub_26D1C5CD8(char a1, uint64_t a2)
{
  sub_26D1DFCC0(a1 & 1, a2);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v8 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v9 = v8 == 0x6574636172616863 && v7 == 0xEE00636974736972;
      if (v9 || (v10 = v5, v11 = sub_26D22E964(), v5 = v10, (v11 & 1) != 0))
      {
        v12 = v5;
        v13 = sub_26D1E1120();
        v14 = sub_26D1CBDF8(v13, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

        sub_26D1CC03C(v14);

        sub_26D22D5A4();

        return;
      }

      sub_26D1B7F48();
      v6 = swift_allocError();
      *v18 = v8;
      *(v18 + 8) = v7;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      if (a1)
      {
        v15 = 0x524556524553;
      }

      else
      {
        v15 = 0x544C5541464544;
      }

      if (a1)
      {
        v16 = 0xE600000000000000;
      }

      else
      {
        v16 = 0xE700000000000000;
      }

      sub_26D1B7F48();
      v6 = swift_allocError();
      *v17 = v15;
      *(v17 + 8) = v16;
      *(v17 + 16) = 0;
      *(v17 + 24) = 1;
      swift_willThrow();
    }
  }

  v19 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_27;
  }

  if (v26 != 7)
  {
    sub_26D1B7E60(v23, v24, v25, v26);
LABEL_27:

    swift_willThrow();
    return;
  }

  if (a1)
  {
    v20 = 0x524556524553;
  }

  else
  {
    v20 = 0x544C5541464544;
  }

  if (a1)
  {
    v21 = 0xE600000000000000;
  }

  else
  {
    v21 = 0xE700000000000000;
  }

  MEMORY[0x26D6B6C70](v20, v21);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70]();

  sub_26D1B7F48();
  swift_allocError();
  *v22 = 0xD000000000000015;
  *(v22 + 8) = 0x800000026D23B050;
  *(v22 + 16) = v25;
  *(v22 + 24) = 7;
  swift_willThrow();
}

void sub_26D1C6094(uint64_t a1)
{
  sub_26D1E68AC(a1);
  v4 = v1;
  if (!v1)
  {
    if (v2)
    {
      v6 = *&v3[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v5 = *&v3[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v7 = v6 == 0x6574636172616863 && v5 == 0xEE00636974736972;
      if (v7 || (v8 = v3, v9 = sub_26D22E964(), v3 = v8, (v9 & 1) != 0))
      {
        v10 = v3;
        sub_26D1EC370(v10);

        return;
      }

      sub_26D1B7F48();
      v4 = swift_allocError();
      *v12 = v6;
      *(v12 + 8) = v5;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      sub_26D1B7F48();
      v4 = swift_allocError();
      *v11 = xmmword_26D230450;
      *(v11 + 16) = 0;
      *(v11 + 24) = 1;
      swift_willThrow();
    }
  }

  v13 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {
    if (v18 == 7)
    {

      MEMORY[0x26D6B6C70]();

      sub_26D1B7F48();
      swift_allocError();
      *v14 = 0xD00000000000001FLL;
      *(v14 + 8) = 0x800000026D23B2A0;
      *(v14 + 16) = v17;
      *(v14 + 24) = 7;
      swift_willThrow();

      return;
    }

    sub_26D1B7E60(v15, v16, v17, v18);
  }

  swift_willThrow();
}

void sub_26D1C6300(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26D1E636C(a1);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v8 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v9 = v8 == 0x6574636172616863 && v7 == 0xEE00636974736972;
      if (v9 || (v10 = v5, v11 = sub_26D22E964(), v5 = v10, (v11 & 1) != 0))
      {
        v12 = v5;
        sub_26D1D9334(v12, a2);

        return;
      }

      sub_26D1B7F48();
      v6 = swift_allocError();
      *v14 = v8;
      *(v14 + 8) = v7;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      sub_26D1B7F48();
      v6 = swift_allocError();
      *v13 = xmmword_26D230460;
      *(v13 + 16) = 0;
      *(v13 + 24) = 1;
      swift_willThrow();
    }
  }

  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {
    if (v20 == 7)
    {

      MEMORY[0x26D6B6C70]();

      sub_26D1B7F48();
      swift_allocError();
      *v16 = 0xD00000000000001CLL;
      *(v16 + 8) = 0x800000026D23B0A0;
      *(v16 + 16) = v19;
      *(v16 + 24) = 7;
      swift_willThrow();

      return;
    }

    sub_26D1B7E60(v17, v18, v19, v20);
  }

  swift_willThrow();
}

void sub_26D1C656C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  sub_26D1D7E44(a1, a2);
  v7 = v3;
  if (!v3)
  {
    v9 = *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v8 = *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v10 = v9 == 0x6574636172616863 && v8 == 0xEE00636974736972;
    if (v10 || (v11 = v6, v12 = sub_26D22E964(), v6 = v11, (v12 & 1) != 0))
    {
      v13 = v6;
      sub_26D1D7ED8(v13, a3);

      return;
    }

    sub_26D1B7F48();
    v7 = swift_allocError();
    *v14 = v9;
    *(v14 + 8) = v8;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    swift_willThrow();
  }

  v31 = v7;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (!swift_dynamicCast())
  {
    goto LABEL_29;
  }

  if (v30 != 7)
  {
    sub_26D1B7E60(v27, v28, v29, v30);
LABEL_29:

    swift_willThrow();
    return;
  }

  v16 = 0xE600000000000000;
  v17 = 0x666552707041;
  v18 = 0xEE006F746F725074;
  v19 = 0x726F70736E617274;
  if (v4 != 5)
  {
    v19 = 0x6C61565F64697575;
    v18 = 0xEA00000000006575;
  }

  v20 = 0xE800000000000000;
  v21 = 0x656D614E72657355;
  if (v4 != 3)
  {
    v21 = 0x64775072657355;
    v20 = 0xE700000000000000;
  }

  if (v4 <= 4u)
  {
    v19 = v21;
    v18 = v20;
  }

  v22 = 0xE800000000000000;
  v23 = 0x6570795468747541;
  if (v4 != 1)
  {
    v23 = 0x6D6C616552;
    v22 = 0xE500000000000000;
  }

  if (v4)
  {
    v17 = v23;
    v16 = v22;
  }

  if (v4 <= 2u)
  {
    v24 = v17;
  }

  else
  {
    v24 = v19;
  }

  if (v4 <= 2u)
  {
    v25 = v16;
  }

  else
  {
    v25 = v18;
  }

  MEMORY[0x26D6B6C70](v24, v25);

  MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

  MEMORY[0x26D6B6C70]();

  sub_26D1B7F48();
  swift_allocError();
  *v26 = 0xD000000000000015;
  *(v26 + 8) = 0x800000026D23B050;
  *(v26 + 16) = v29;
  *(v26 + 24) = 7;
  swift_willThrow();
}

void sub_26D1C68BC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_26D1E75D0(a1, a2);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v8 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v9 = v8 == 0x6574636172616863 && v7 == 0xEE00636974736972;
      if (v9 || (v10 = v5, v11 = sub_26D22E964(), v5 = v10, (v11 & 1) != 0))
      {
        v12 = v5;
        sub_26D1C1EFC(v12);

        return;
      }

      sub_26D1B7F48();
      v6 = swift_allocError();
      *v17 = v8;
      *(v17 + 8) = v7;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      v13 = sub_26D1D9FBC(v3);
      v15 = v14;
      sub_26D1B7F48();
      v6 = swift_allocError();
      *v16 = v13;
      *(v16 + 8) = v15;
      *(v16 + 16) = 0;
      *(v16 + 24) = 1;
      swift_willThrow();
    }
  }

  v18 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {
    if (v24 == 7)
    {

      v19 = sub_26D1D9FBC(v3);
      MEMORY[0x26D6B6C70](v19);

      MEMORY[0x26D6B6C70](3038503, 0xE300000000000000);

      MEMORY[0x26D6B6C70]();

      sub_26D1B7F48();
      swift_allocError();
      *v20 = 0xD000000000000015;
      *(v20 + 8) = 0x800000026D23B050;
      *(v20 + 16) = v23;
      *(v20 + 24) = 7;
      swift_willThrow();

      return;
    }

    sub_26D1B7E60(v21, v22, v23, v24);
  }

  swift_willThrow();
}

uint64_t sub_26D1C6B84(unint64_t a1, uint64_t a2)
{
  v5 = sub_26D22CCE4();
  v85 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D22D574();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v68 - v13;
  v15 = sub_26D1C59C8(a1 & 1, a2);
  if (v2)
  {
    return a1;
  }

  v74 = v14;
  v75 = v12;
  if (!v15)
  {
LABEL_34:
    if (a1)
    {
      v62 = 0x524556524553;
    }

    else
    {
      v62 = 0x544C5541464544;
    }

    if (a1)
    {
      a1 = 0xE600000000000000;
    }

    else
    {
      a1 = 0xE700000000000000;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v63 = v62;
    *(v63 + 8) = a1;
    *(v63 + 16) = 0;
    *(v63 + 24) = 1;
    swift_willThrow();
    return a1;
  }

  v16 = *(v15 + 16);
  if (!v16)
  {

    goto LABEL_34;
  }

  v70 = v5;
  v80 = v7;
  v82 = 0;
  v91 = MEMORY[0x277D84F90];
  v17 = v15;
  sub_26D1E4904(0, v16, 0);
  v18 = 0;
  a1 = v91;
  v81 = v17;
  v73 = v17 + 32;
  v84 = xmmword_26D22F360;
  v86 = v9;
  v87 = v8;
  v72 = v16;
  v71 = (v9 + 32);
  while (1)
  {
    if (v18 >= *(v81 + 16))
    {
      goto LABEL_49;
    }

    v79 = a1;
    v19 = v73 + 24 * v18;
    v21 = *(v19 + 8);
    v20 = *(v19 + 16);
    v22 = &v20[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v23 = *&v20[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 0x6574636172616863 && *&v20[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xEE00636974736972;
    if (!v23 && (sub_26D22E964() & 1) == 0)
    {
      a1 = v20;

      v65 = *v22;
      v64 = *(v22 + 1);
      sub_26D1B7F48();
      swift_allocError();
      *v66 = v65;
      *(v66 + 8) = v64;
      *(v66 + 16) = 0;
      *(v66 + 24) = 0;
      swift_willThrow();

      goto LABEL_44;
    }

    v24 = v20;

    v78 = v24;
    v25 = v82;
    v26 = sub_26D1E1120();
    if (v25)
    {

      a1 = v78;

LABEL_44:

      return a1;
    }

    v76 = v18;
    v77 = v21;
    v82 = 0;
    v27 = MEMORY[0x277D84F98];
    v89 = *(v26 + 2);
    v90 = MEMORY[0x277D84F98];
    if (v89)
    {
      break;
    }

LABEL_28:

    v55 = v82;
    sub_26D1DB4B0(0, v27, v80);
    if (v55)
    {

      a1 = v78;

      goto LABEL_44;
    }

    sub_26D1CB948(1u, v27);
    sub_26D1C76D8(2, 0, v27);

    v56 = v75;
    sub_26D22D564();
    v82 = 0;
    v57 = v78;

    v58 = *v71;
    v59 = v74;
    (*v71)(v74, v56, v8);
    a1 = v79;
    v91 = v79;
    v61 = *(v79 + 16);
    v60 = *(v79 + 24);
    if (v61 >= v60 >> 1)
    {
      sub_26D1E4904((v60 > 1), v61 + 1, 1);
      a1 = v91;
    }

    v18 = v76 + 1;
    *(a1 + 16) = v61 + 1;
    v58((a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v61), v59, v8);
    if (v18 == v72)
    {
      goto LABEL_44;
    }
  }

  v28 = 0;
  v29 = (v26 + 48);
  v88 = v26;
  while (v28 < *(v26 + 2))
  {
    v31 = *(v29 - 2);
    v32 = *(v29 - 1);
    v33 = *v29;
    swift_bridgeObjectRetain_n();
    v34 = v33;
    v36 = sub_26D1BDEEC(v31, v32);
    v37 = v27[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_47;
    }

    v40 = v35;
    if (v27[3] < v39)
    {
      sub_26D1E31AC(v39, 1);
      v27 = v90;
      v41 = sub_26D1BDEEC(v31, v32);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_50;
      }

      v36 = v41;
    }

    if (v40)
    {

      v43 = v27[7];
      v44 = *(v43 + 8 * v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v43 + 8 * v36) = v44;
      v83 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_26D22B9C4(0, *(v44 + 2) + 1, 1, v44);
        *(v43 + 8 * v36) = v44;
      }

      v47 = *(v44 + 2);
      v46 = *(v44 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v69 = v47 + 1;
        v49 = sub_26D22B9C4((v46 > 1), v47 + 1, 1, v44);
        v48 = v69;
        v44 = v49;
        *(v83 + 8 * v36) = v49;
      }

      v8 = v87;
      *(v44 + 2) = v48;
      v30 = &v44[24 * v47];
      *(v30 + 4) = v31;
      *(v30 + 5) = v32;
      *(v30 + 6) = v34;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07F0, &qword_26D230D00);
      v50 = swift_allocObject();
      *(v50 + 16) = v84;
      *(v50 + 32) = v31;
      *(v50 + 40) = v32;
      *(v50 + 48) = v34;
      v27[(v36 >> 6) + 8] |= 1 << v36;
      v51 = (v27[6] + 16 * v36);
      *v51 = v31;
      v51[1] = v32;
      *(v27[7] + 8 * v36) = v50;
      v52 = v27[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_48;
      }

      v27[2] = v54;
      v8 = v87;
    }

    ++v28;
    v29 += 3;
    v26 = v88;
    v9 = v86;
    if (v89 == v28)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

void sub_26D1C73A8(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_26D1DE934(a1, a3);
  if (v4)
  {
    v10 = sub_26D1D9E4C(v6);
    MEMORY[0x26D6B6C70](v10);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v11 = 0x6D616E5B6D726170;
    *(v11 + 8) = 0xEB00000000273D65;
    *(v11 + 16) = v4;
    *(v11 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v12 = v9;
    sub_26D1C5478(1, a2 | 2, v12, &qword_2804E0890, &qword_26D230770, MEMORY[0x277CC9260], MEMORY[0x277CC9248], a4);
  }

  else
  {
    v13 = sub_26D22CCE4();
    (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_26D1C7558(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DE934(a1, a3);
  if (v3)
  {
    v8 = sub_26D1D9E4C(v5);
    MEMORY[0x26D6B6C70](v8);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v9 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v10 = 0x6D616E5B6D726170;
    *(v10 + 8) = 0xEB00000000273D65;
    *(v10 + 16) = v3;
    *(v10 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v12 = v7;
    v9 = sub_26D1C2B9C(1, a2 | 2u, v12);
  }

  else
  {
    return 2;
  }

  return v9;
}

uint64_t sub_26D1C76D8(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DEE5C(a1, a3);
  if (v3)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v8 = 0x64692D707061;
      }

      else
      {
        v8 = 0x69766F72702D6469;
      }

      if (v5 == 1)
      {
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xEB00000000726564;
      }
    }

    else
    {
      v9 = 0xE400000000000000;
      v8 = 1852076390;
    }

    MEMORY[0x26D6B6C70](v8, v9);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v13 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v11 = 0x6D616E5B6D726170;
    *(v11 + 8) = 0xEB00000000273D65;
    *(v11 + 16) = v3;
    *(v11 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v10 = v7;
    v13 = sub_26D1C2B9C(1, a2 | 2u, v10);
  }

  else
  {
    return 2;
  }

  return v13;
}

void sub_26D1C7860(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_26D1DEF48(a1, a3);
  if (v4)
  {
    v10 = 0xEF746F6F524E4451;
    v11 = 0x466F666E69746F42;
    v12 = 0x800000026D23B220;
    v13 = 0xD000000000000018;
    v14 = 0xEE00656C62617369;
    v15 = 0x4479636176697250;
    if (v6 != 4)
    {
      v15 = 0x4D746F6274616843;
      v14 = 0xEE00686365546773;
    }

    if (v6 != 3)
    {
      v13 = v15;
      v12 = v14;
    }

    if (v6 != 1)
    {
      v11 = 0xD000000000000014;
      v10 = 0x800000026D23B240;
    }

    if (!v6)
    {
      v11 = 0xD000000000000010;
      v10 = 0x800000026D23B260;
    }

    if (v6 <= 2u)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    if (v6 <= 2u)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v18 = 0x6D616E5B6D726170;
    *(v18 + 8) = 0xEB00000000273D65;
    *(v18 + 16) = v4;
    *(v18 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v19 = v9;
    sub_26D1C5478(1, a2 | 2, v19, &qword_2804E0890, &qword_26D230770, MEMORY[0x277CC9260], MEMORY[0x277CC9248], a4);
  }

  else
  {
    v20 = sub_26D22CCE4();
    (*(*(v20 - 8) + 56))(a4, 1, 1, v20);
  }
}

uint64_t sub_26D1C7AF0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DEF48(a1, a3);
  if (v3)
  {
    v8 = 0xEF746F6F524E4451;
    v9 = 0x466F666E69746F42;
    v10 = 0x800000026D23B220;
    v11 = 0xD000000000000018;
    v12 = 0xEE00656C62617369;
    v13 = 0x4479636176697250;
    if (v5 != 4)
    {
      v13 = 0x4D746F6274616843;
      v12 = 0xEE00686365546773;
    }

    if (v5 != 3)
    {
      v11 = v13;
      v10 = v12;
    }

    if (v5 != 1)
    {
      v9 = 0xD000000000000014;
      v8 = 0x800000026D23B240;
    }

    if (!v5)
    {
      v9 = 0xD000000000000010;
      v8 = 0x800000026D23B260;
    }

    if (v5 <= 2u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    if (v5 <= 2u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v16 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v17 = 0x6D616E5B6D726170;
    *(v17 + 8) = 0xEB00000000273D65;
    *(v17 + 16) = v3;
    *(v17 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v19 = v7;
    v16 = sub_26D1C2B9C(1, a2 | 2u, v19);
  }

  else
  {
    return 2;
  }

  return v16;
}

void sub_26D1C7D10(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_26D1DEF48(a1, a3);
  if (v4)
  {
    v10 = 0xEF746F6F524E4451;
    v11 = 0x466F666E69746F42;
    v12 = 0x800000026D23B220;
    v13 = 0xD000000000000018;
    v14 = 0xEE00656C62617369;
    v15 = 0x4479636176697250;
    if (v6 != 4)
    {
      v15 = 0x4D746F6274616843;
      v14 = 0xEE00686365546773;
    }

    if (v6 != 3)
    {
      v13 = v15;
      v12 = v14;
    }

    if (v6 != 1)
    {
      v11 = 0xD000000000000014;
      v10 = 0x800000026D23B240;
    }

    if (!v6)
    {
      v11 = 0xD000000000000010;
      v10 = 0x800000026D23B260;
    }

    if (v6 <= 2u)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    if (v6 <= 2u)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v18 = 0x6D616E5B6D726170;
    *(v18 + 8) = 0xEB00000000273D65;
    *(v18 + 16) = v4;
    *(v18 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v19 = v9;
    sub_26D1C2DB8(1, a2 | 2, v19, a4);
  }

  else
  {
    v20 = sub_26D22D584();
    (*(*(v20 - 8) + 56))(a4, 1, 1, v20);
  }
}

uint64_t sub_26D1C7F68(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DF280(a1, a3);
  if (v3)
  {
    v8 = 0xED00007972697078;
    v9 = 0x456F666E49706163;
    v10 = 0xD00000000000001DLL;
    v11 = 0x800000026D23B120;
    v12 = 0x800000026D23B100;
    v13 = 0xD000000000000013;
    if (v5 != 4)
    {
      v13 = 0x44746C7561666564;
      v12 = 0xEB00000000637369;
    }

    if (v5 != 3)
    {
      v10 = v13;
      v11 = v12;
    }

    if (v5 != 1)
    {
      v9 = 0xD000000000000010;
      v8 = 0x800000026D23B140;
    }

    if (!v5)
    {
      v9 = 0xD00000000000001DLL;
      v8 = 0x800000026D23B160;
    }

    if (v5 <= 2u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    if (v5 <= 2u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v11;
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v16 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v17 = 0x6D616E5B6D726170;
    *(v17 + 8) = 0xEB00000000273D65;
    *(v17 + 16) = v3;
    *(v17 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v19 = v7;
    v16 = sub_26D1C2B9C(1, a2 | 2u, v19);
  }

  else
  {
    return 2;
  }

  return v16;
}

unint64_t sub_26D1C8174(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DF280(a1, a3);
  if (v3)
  {
    v8 = 0xED00007972697078;
    v9 = 0x456F666E49706163;
    v10 = 0xD00000000000001DLL;
    v11 = 0x800000026D23B120;
    v12 = 0x800000026D23B100;
    v13 = 0xD000000000000013;
    if (v5 != 4)
    {
      v13 = 0x44746C7561666564;
      v12 = 0xEB00000000637369;
    }

    if (v5 != 3)
    {
      v10 = v13;
      v11 = v12;
    }

    if (v5 != 1)
    {
      v9 = 0xD000000000000010;
      v8 = 0x800000026D23B140;
    }

    if (!v5)
    {
      v9 = 0xD00000000000001DLL;
      v8 = 0x800000026D23B160;
    }

    if (v5 <= 2u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v10;
    }

    if (v5 <= 2u)
    {
      v15 = v8;
    }

    else
    {
      v15 = v11;
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v16 = 0x6D616E5B6D726170;
    sub_26D1B7F48();
    swift_allocError();
    *v17 = 0x6D616E5B6D726170;
    *(v17 + 8) = 0xEB00000000273D65;
    *(v17 + 16) = v3;
    *(v17 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v18 = v7;
    v16 = sub_26D1C2CA4(1, a2 | 2u, v18);
  }

  else
  {
    return 0;
  }

  return v16;
}

void sub_26D1C838C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_26D1DF280(a1, a3);
  if (v4)
  {
    v10 = 0xED00007972697078;
    v11 = 0x456F666E49706163;
    v12 = 0xD00000000000001DLL;
    v13 = 0x800000026D23B120;
    v14 = 0x800000026D23B100;
    v15 = 0xD000000000000013;
    if (v6 != 4)
    {
      v15 = 0x44746C7561666564;
      v14 = 0xEB00000000637369;
    }

    if (v6 != 3)
    {
      v12 = v15;
      v13 = v14;
    }

    if (v6 != 1)
    {
      v11 = 0xD000000000000010;
      v10 = 0x800000026D23B140;
    }

    if (!v6)
    {
      v11 = 0xD00000000000001DLL;
      v10 = 0x800000026D23B160;
    }

    if (v6 <= 2u)
    {
      v16 = v11;
    }

    else
    {
      v16 = v12;
    }

    if (v6 <= 2u)
    {
      v17 = v10;
    }

    else
    {
      v17 = v13;
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v18 = 0x6D616E5B6D726170;
    *(v18 + 8) = 0xEB00000000273D65;
    *(v18 + 16) = v4;
    *(v18 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v19 = v9;
    sub_26D1C30FC(1, a2 | 2, v19, a4);
  }

  else
  {
    v20 = sub_26D22D824();
    (*(*(v20 - 8) + 56))(a4, 1, 1, v20);
  }
}

unint64_t sub_26D1C85D0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DF3E8(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (v5 <= 3u)
    {
      v18 = 0xEA0000000000657ALL;
      v19 = 0x69536E7261577466;
      v20 = 0xEB00000000747065;
      v21 = 0x6363417475417466;
      if (v5 != 2)
      {
        v21 = 0x5343505454487466;
        v20 = 0xEB00000000495255;
      }

      if (v5)
      {
        v19 = 0x46657A695378614DLL;
        v18 = 0xED00007254656C69;
      }

      if (v5 <= 1u)
      {
        v15 = v19;
      }

      else
      {
        v15 = v21;
      }

      if (v5 <= 1u)
      {
        v16 = v18;
      }

      else
      {
        v16 = v20;
      }
    }

    else
    {
      v9 = 0xEB00000000647750;
      v10 = 0x5343505454487466;
      v11 = 0xEE006B6361626C6CLL;
      v12 = 0x6146505454487466;
      if (v5 != 7)
      {
        v12 = 0xD000000000000016;
        v11 = 0x800000026D23B280;
      }

      if (v5 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0x4C44505454487466;
      v14 = 0xEB00000000495255;
      if (v5 != 4)
      {
        v13 = 0x5343505454487466;
        v14 = 0xEC00000072657355;
      }

      if (v5 <= 5u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v10;
      }

      if (v5 <= 5u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v9;
      }
    }

    MEMORY[0x26D6B6C70](v15, v16);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v22 = 0x6D616E5B6D726170;
    *(v22 + 8) = 0xEB00000000273D65;
    *(v22 + 16) = v3;
    *(v22 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v17 = v7;
    v8 = sub_26D1C2CA4(1, a2 | 2u, v17);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t sub_26D1C8878(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DF3E8(a1, a3);
  if (v3)
  {
    if (v5 <= 3u)
    {
      v17 = 0xEA0000000000657ALL;
      v18 = 0x69536E7261577466;
      v19 = 0xEB00000000747065;
      v20 = 0x6363417475417466;
      if (v5 != 2)
      {
        v20 = 0x5343505454487466;
        v19 = 0xEB00000000495255;
      }

      if (v5)
      {
        v18 = 0x46657A695378614DLL;
        v17 = 0xED00007254656C69;
      }

      if (v5 <= 1u)
      {
        v14 = v18;
      }

      else
      {
        v14 = v20;
      }

      if (v5 <= 1u)
      {
        v15 = v17;
      }

      else
      {
        v15 = v19;
      }
    }

    else
    {
      v8 = 0xEB00000000647750;
      v9 = 0x5343505454487466;
      v10 = 0xEE006B6361626C6CLL;
      v11 = 0x6146505454487466;
      if (v5 != 7)
      {
        v11 = 0xD000000000000016;
        v10 = 0x800000026D23B280;
      }

      if (v5 != 6)
      {
        v9 = v11;
        v8 = v10;
      }

      v12 = 0x4C44505454487466;
      v13 = 0xEB00000000495255;
      if (v5 != 4)
      {
        v12 = 0x5343505454487466;
        v13 = 0xEC00000072657355;
      }

      if (v5 <= 5u)
      {
        v14 = v12;
      }

      else
      {
        v14 = v9;
      }

      if (v5 <= 5u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v8;
      }
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v23 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v21 = 0x6D616E5B6D726170;
    *(v21 + 8) = 0xEB00000000273D65;
    *(v21 + 16) = v3;
    *(v21 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v16 = v7;
    v23 = sub_26D1C2B9C(1, a2 | 2u, v16);
  }

  else
  {
    return 2;
  }

  return v23;
}

void sub_26D1C8B10(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_26D1DF3E8(a1, a3);
  if (v4)
  {
    if (v6 <= 3u)
    {
      v19 = 0xEA0000000000657ALL;
      v20 = 0x69536E7261577466;
      v21 = 0xEB00000000747065;
      v22 = 0x6363417475417466;
      if (v6 != 2)
      {
        v22 = 0x5343505454487466;
        v21 = 0xEB00000000495255;
      }

      if (v6)
      {
        v20 = 0x46657A695378614DLL;
        v19 = 0xED00007254656C69;
      }

      if (v6 <= 1u)
      {
        v16 = v20;
      }

      else
      {
        v16 = v22;
      }

      if (v6 <= 1u)
      {
        v17 = v19;
      }

      else
      {
        v17 = v21;
      }
    }

    else
    {
      v10 = 0xEB00000000647750;
      v11 = 0x5343505454487466;
      v12 = 0xEE006B6361626C6CLL;
      v13 = 0x6146505454487466;
      if (v6 != 7)
      {
        v13 = 0xD000000000000016;
        v12 = 0x800000026D23B280;
      }

      if (v6 != 6)
      {
        v11 = v13;
        v10 = v12;
      }

      v14 = 0x4C44505454487466;
      v15 = 0xEB00000000495255;
      if (v6 != 4)
      {
        v14 = 0x5343505454487466;
        v15 = 0xEC00000072657355;
      }

      if (v6 <= 5u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v11;
      }

      if (v6 <= 5u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v10;
      }
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = 0x6D616E5B6D726170;
    *(v23 + 8) = 0xEB00000000273D65;
    *(v23 + 16) = v4;
    *(v23 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v18 = v9;
    sub_26D1C5478(1, a2 | 2, v18, &qword_2804E0890, &qword_26D230770, MEMORY[0x277CC9260], MEMORY[0x277CC9248], a4);
  }

  else
  {
    v24 = sub_26D22CCE4();
    (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }
}

uint64_t sub_26D1C8E18(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DF3E8(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (v5 <= 3u)
    {
      v18 = 0xEA0000000000657ALL;
      v19 = 0x69536E7261577466;
      v20 = 0xEB00000000747065;
      v21 = 0x6363417475417466;
      if (v5 != 2)
      {
        v21 = 0x5343505454487466;
        v20 = 0xEB00000000495255;
      }

      if (v5)
      {
        v19 = 0x46657A695378614DLL;
        v18 = 0xED00007254656C69;
      }

      if (v5 <= 1u)
      {
        v15 = v19;
      }

      else
      {
        v15 = v21;
      }

      if (v5 <= 1u)
      {
        v16 = v18;
      }

      else
      {
        v16 = v20;
      }
    }

    else
    {
      v9 = 0xEB00000000647750;
      v10 = 0x5343505454487466;
      v11 = 0xEE006B6361626C6CLL;
      v12 = 0x6146505454487466;
      if (v5 != 7)
      {
        v12 = 0xD000000000000016;
        v11 = 0x800000026D23B280;
      }

      if (v5 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0x4C44505454487466;
      v14 = 0xEB00000000495255;
      if (v5 != 4)
      {
        v13 = 0x5343505454487466;
        v14 = 0xEC00000072657355;
      }

      if (v5 <= 5u)
      {
        v15 = v13;
      }

      else
      {
        v15 = v10;
      }

      if (v5 <= 5u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v9;
      }
    }

    MEMORY[0x26D6B6C70](v15, v16);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v22 = 0x6D616E5B6D726170;
    *(v22 + 8) = 0xEB00000000273D65;
    *(v22 + 16) = v3;
    *(v22 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v17 = v7;
    v8 = sub_26D1C2A8C(1, a2 | 2u, v17);
  }

  else
  {
    return 0;
  }

  return v8;
}

unint64_t sub_26D1C90BC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DF5E4(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (v5)
    {
      if (v5 == 1)
      {
        v9 = 0x766F686374697753;
      }

      else
      {
        v9 = 0x7265646F6C707865;
      }

      if (v5 == 1)
      {
        v10 = 0xEE00657A69537265;
      }

      else
      {
        v10 = 0xEC0000006972752DLL;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      v9 = 0x657A695378614DLL;
    }

    MEMORY[0x26D6B6C70](v9, v10);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v12 = 0x6D616E5B6D726170;
    *(v12 + 8) = 0xEB00000000273D65;
    *(v12 + 16) = v3;
    *(v12 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v11 = v7;
    v8 = sub_26D1C2CA4(1, a2 | 2u, v11);
  }

  else
  {
    return 0;
  }

  return v8;
}

void sub_26D1C926C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_26D1DF7A8(a1, a3);
  if (v4)
  {
    v10 = 0xEA00000000006666;
    v11 = 0x4F61746144736D6DLL;
    if (v6 != 2)
    {
      v11 = 0x61746144636E7973;
      v10 = 0xEB0000000066664FLL;
    }

    v12 = 0x800000026D23B2E0;
    if (v6)
    {
      v12 = 0x800000026D23B2C0;
    }

    if (v6 <= 1u)
    {
      v13 = 0xD000000000000013;
    }

    else
    {
      v13 = v11;
    }

    if (v6 <= 1u)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
    }

    MEMORY[0x26D6B6C70](v13, v14);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v15 = 0x6D616E5B6D726170;
    *(v15 + 8) = 0xEB00000000273D65;
    *(v15 + 16) = v4;
    *(v15 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v16 = v9;
    sub_26D1C3440(1, a2 | 2, v16, a4);
  }

  else
  {
    v17 = sub_26D22D934();
    (*(*(v17 - 8) + 56))(a4, 1, 1, v17);
  }
}

void sub_26D1C94E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, id)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = a1;
  sub_26D1DF8C8(a1, a3);
  if (v6)
  {
    if (v10 <= 3u)
    {
      v23 = 0xEC000000676E696CLL;
      v24 = 0x6C616E6769537370;
      v25 = 0x6964654D54527370;
      v26 = 0xE900000000000061;
      if (v10 != 2)
      {
        v25 = 0xD000000000000013;
        v26 = 0x800000026D23B0E0;
      }

      if (v10)
      {
        v24 = 0x616964654D7370;
        v23 = 0xE700000000000000;
      }

      if (v10 <= 1u)
      {
        v20 = v24;
      }

      else
      {
        v20 = v25;
      }

      if (v10 <= 1u)
      {
        v21 = v23;
      }

      else
      {
        v21 = v26;
      }
    }

    else
    {
      v14 = 0xEE00676E696C6C61;
      v15 = 0x6E67695369666977;
      v16 = 0x6964654D69666977;
      v17 = 0xE900000000000061;
      if (v10 != 7)
      {
        v16 = 0x654D545269666977;
        v17 = 0xEB00000000616964;
      }

      if (v10 != 6)
      {
        v15 = v16;
        v14 = v17;
      }

      v18 = 0xEE00676E696D616FLL;
      v19 = 0x52616964654D7370;
      if (v10 != 4)
      {
        v19 = 0xD000000000000010;
        v18 = 0x800000026D23B0C0;
      }

      if (v10 <= 5u)
      {
        v20 = v19;
      }

      else
      {
        v20 = v15;
      }

      if (v10 <= 5u)
      {
        v21 = v18;
      }

      else
      {
        v21 = v14;
      }
    }

    MEMORY[0x26D6B6C70](v20, v21);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v27 = 0x6D616E5B6D726170;
    *(v27 + 8) = 0xEB00000000273D65;
    *(v27 + 16) = v6;
    *(v27 + 24) = 7;
    swift_willThrow();
  }

  else if (v12)
  {
    v22 = v13;
    a4(1, a2 | 2, v22);
  }

  else
  {
    v28 = a5(0);
    (*(*(v28 - 8) + 56))(a6, 1, 1, v28);
  }
}

uint64_t sub_26D1C98C4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  if (*(a2 + 16) && (v8 = sub_26D1BDEEC(0x4449707041, 0xE500000000000000), (v9 & 1) != 0) && (v10 = *(*(a2 + 56) + 8 * v8), *(v10 + 16)))
  {
    v11 = *(v10 + 48);

    v12 = v11;
    sub_26D1C4ABC(1, a1 | 2, v12, a3);

    if (v4)
    {
      sub_26D1B7F48();
      swift_allocError();
      *v14 = 0xD000000000000012;
      *(v14 + 8) = 0x800000026D23B380;
      *(v14 + 16) = v4;
      *(v14 + 24) = 7;
      return swift_willThrow();
    }
  }

  else
  {
    v15 = sub_26D22D514();
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  return result;
}

unint64_t sub_26D1C9A0C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DFFB0(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (v5 <= 3u)
    {
      v18 = 0xED000067734D656ELL;
      v19 = 0x6F6C61646E617453;
      v20 = 0x800000026D23B200;
      if (v5 == 2)
      {
        v21 = 0xD000000000000014;
      }

      else
      {
        v21 = 0xD000000000000013;
      }

      if (v5 != 2)
      {
        v20 = 0x800000026D23B1E0;
      }

      if (v5)
      {
        v19 = 1952540739;
        v18 = 0xE400000000000000;
      }

      if (v5 <= 1u)
      {
        v15 = v19;
      }

      else
      {
        v15 = v21;
      }

      if (v5 <= 1u)
      {
        v16 = v18;
      }

      else
      {
        v16 = v20;
      }
    }

    else
    {
      v9 = 0xEC00000072656673;
      v10 = 0x6E617254656C6946;
      v11 = 0xE700000000000000;
      v12 = 0x746F6274616843;
      if (v5 != 7)
      {
        v12 = 0xD00000000000001DLL;
        v11 = 0x800000026D23B180;
      }

      if (v5 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0x800000026D23B1C0;
      v14 = 0xD000000000000019;
      if (v5 != 4)
      {
        v14 = 0xD000000000000013;
        v13 = 0x800000026D23B1A0;
      }

      if (v5 <= 5u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      if (v5 <= 5u)
      {
        v16 = v13;
      }

      else
      {
        v16 = v9;
      }
    }

    MEMORY[0x26D6B6C70](v15, v16);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v22 = 0x6D616E5B6D726170;
    *(v22 + 8) = 0xEB00000000273D65;
    *(v22 + 16) = v3;
    *(v22 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v17 = v7;
    v8 = sub_26D1C2CA4(1, a2 | 2u, v17);
  }

  else
  {
    return 0;
  }

  return v8;
}

void sub_26D1C9C8C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_26D1DFFB0(a1, a3);
  if (v4)
  {
    if (v6 <= 3u)
    {
      v19 = 0xED000067734D656ELL;
      v20 = 0x6F6C61646E617453;
      v21 = 0x800000026D23B200;
      if (v6 == 2)
      {
        v22 = 0xD000000000000014;
      }

      else
      {
        v22 = 0xD000000000000013;
      }

      if (v6 != 2)
      {
        v21 = 0x800000026D23B1E0;
      }

      if (v6)
      {
        v20 = 1952540739;
        v19 = 0xE400000000000000;
      }

      if (v6 <= 1u)
      {
        v16 = v20;
      }

      else
      {
        v16 = v22;
      }

      if (v6 <= 1u)
      {
        v17 = v19;
      }

      else
      {
        v17 = v21;
      }
    }

    else
    {
      v10 = 0xEC00000072656673;
      v11 = 0x6E617254656C6946;
      v12 = 0xE700000000000000;
      v13 = 0x746F6274616843;
      if (v6 != 7)
      {
        v13 = 0xD00000000000001DLL;
        v12 = 0x800000026D23B180;
      }

      if (v6 != 6)
      {
        v11 = v13;
        v10 = v12;
      }

      v14 = 0x800000026D23B1C0;
      v15 = 0xD000000000000019;
      if (v6 != 4)
      {
        v15 = 0xD000000000000013;
        v14 = 0x800000026D23B1A0;
      }

      if (v6 <= 5u)
      {
        v16 = v15;
      }

      else
      {
        v16 = v11;
      }

      if (v6 <= 5u)
      {
        v17 = v14;
      }

      else
      {
        v17 = v10;
      }
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = 0x6D616E5B6D726170;
    *(v23 + 8) = 0xEB00000000273D65;
    *(v23 + 16) = v4;
    *(v23 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v18 = v9;
    sub_26D1C4DF0(1, a2 | 2, v18, a4);
  }

  else
  {
    v24 = sub_26D22D6B4();
    (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }
}

uint64_t sub_26D1C9F34(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DFFB0(a1, a3);
  if (v3)
  {
    if (v5 <= 3u)
    {
      v17 = 0xED000067734D656ELL;
      v18 = 0x6F6C61646E617453;
      v19 = 0x800000026D23B200;
      if (v5 == 2)
      {
        v20 = 0xD000000000000014;
      }

      else
      {
        v20 = 0xD000000000000013;
      }

      if (v5 != 2)
      {
        v19 = 0x800000026D23B1E0;
      }

      if (v5)
      {
        v18 = 1952540739;
        v17 = 0xE400000000000000;
      }

      if (v5 <= 1u)
      {
        v14 = v18;
      }

      else
      {
        v14 = v20;
      }

      if (v5 <= 1u)
      {
        v15 = v17;
      }

      else
      {
        v15 = v19;
      }
    }

    else
    {
      v8 = 0xEC00000072656673;
      v9 = 0x6E617254656C6946;
      v10 = 0xE700000000000000;
      v11 = 0x746F6274616843;
      if (v5 != 7)
      {
        v11 = 0xD00000000000001DLL;
        v10 = 0x800000026D23B180;
      }

      if (v5 != 6)
      {
        v9 = v11;
        v8 = v10;
      }

      v12 = 0x800000026D23B1C0;
      v13 = 0xD000000000000019;
      if (v5 != 4)
      {
        v13 = 0xD000000000000013;
        v12 = 0x800000026D23B1A0;
      }

      if (v5 <= 5u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v9;
      }

      if (v5 <= 5u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v8;
      }
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v23 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v21 = 0x6D616E5B6D726170;
    *(v21 + 8) = 0xEB00000000273D65;
    *(v21 + 16) = v3;
    *(v21 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v16 = v7;
    v23 = sub_26D1C2B9C(1, a2 | 2u, v16);
  }

  else
  {
    return 2;
  }

  return v23;
}

uint64_t sub_26D1CA1A4(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1DFFB0(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (v5 <= 3u)
    {
      v18 = 0xED000067734D656ELL;
      v19 = 0x6F6C61646E617453;
      v20 = 0x800000026D23B200;
      if (v5 == 2)
      {
        v21 = 0xD000000000000014;
      }

      else
      {
        v21 = 0xD000000000000013;
      }

      if (v5 != 2)
      {
        v20 = 0x800000026D23B1E0;
      }

      if (v5)
      {
        v19 = 1952540739;
        v18 = 0xE400000000000000;
      }

      if (v5 <= 1u)
      {
        v15 = v19;
      }

      else
      {
        v15 = v21;
      }

      if (v5 <= 1u)
      {
        v16 = v18;
      }

      else
      {
        v16 = v20;
      }
    }

    else
    {
      v9 = 0xEC00000072656673;
      v10 = 0x6E617254656C6946;
      v11 = 0xE700000000000000;
      v12 = 0x746F6274616843;
      if (v5 != 7)
      {
        v12 = 0xD00000000000001DLL;
        v11 = 0x800000026D23B180;
      }

      if (v5 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0x800000026D23B1C0;
      v14 = 0xD000000000000019;
      if (v5 != 4)
      {
        v14 = 0xD000000000000013;
        v13 = 0x800000026D23B1A0;
      }

      if (v5 <= 5u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      if (v5 <= 5u)
      {
        v16 = v13;
      }

      else
      {
        v16 = v9;
      }
    }

    MEMORY[0x26D6B6C70](v15, v16);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v22 = 0x6D616E5B6D726170;
    *(v22 + 8) = 0xEB00000000273D65;
    *(v22 + 16) = v3;
    *(v22 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v17 = v7;
    v8 = sub_26D1C2A8C(1, a2 | 2u, v17);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t sub_26D1CA420(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1E019C(a1, a3);
  if (v3)
  {
    v8 = v3;
    if (v5 <= 3u)
    {
      v18 = 0xE800000000000000;
      v19 = 0x6874754174616843;
      if (v5 != 2)
      {
        v19 = 0x61684370756F7247;
        v18 = 0xED00006874754174;
      }

      v20 = 0xD000000000000010;
      v21 = 0x800000026D23B360;
      if (v5)
      {
        v20 = 0xD00000000000001BLL;
        v21 = 0x800000026D23B340;
      }

      if (v5 <= 1u)
      {
        v15 = v20;
      }

      else
      {
        v15 = v19;
      }

      if (v5 <= 1u)
      {
        v16 = v21;
      }

      else
      {
        v16 = v18;
      }
    }

    else
    {
      v9 = 0xEE00687475416873;
      v10 = 0x7550636F6C6F6567;
      v11 = 0x800000026D23B300;
      v12 = 7632965;
      if (v5 == 7)
      {
        v12 = 0xD000000000000010;
      }

      else
      {
        v11 = 0xE300000000000000;
      }

      if (v5 != 6)
      {
        v10 = v12;
        v9 = v11;
      }

      v13 = 0xE600000000000000;
      v14 = 0xD000000000000011;
      if (v5 == 4)
      {
        v14 = 0x687475417466;
      }

      else
      {
        v13 = 0x800000026D23B320;
      }

      if (v5 <= 5u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      if (v5 <= 5u)
      {
        v16 = v13;
      }

      else
      {
        v16 = v9;
      }
    }

    MEMORY[0x26D6B6C70](v15, v16);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v22 = 0x6D616E5B6D726170;
    *(v22 + 8) = 0xEB00000000273D65;
    *(v22 + 16) = v3;
    *(v22 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v17 = v7;
    v8 = sub_26D1C2A8C(1, a2 | 2u, v17);
  }

  else
  {
    return 0;
  }

  return v8;
}

void sub_26D1CA694(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_26D1E019C(a1, a3);
  if (v4)
  {
    if (v6 <= 3u)
    {
      v19 = 0xE800000000000000;
      v20 = 0x6874754174616843;
      if (v6 != 2)
      {
        v20 = 0x61684370756F7247;
        v19 = 0xED00006874754174;
      }

      v21 = 0xD000000000000010;
      v22 = 0x800000026D23B360;
      if (v6)
      {
        v21 = 0xD00000000000001BLL;
        v22 = 0x800000026D23B340;
      }

      if (v6 <= 1u)
      {
        v16 = v21;
      }

      else
      {
        v16 = v20;
      }

      if (v6 <= 1u)
      {
        v17 = v22;
      }

      else
      {
        v17 = v19;
      }
    }

    else
    {
      v10 = 0xEE00687475416873;
      v11 = 0x7550636F6C6F6567;
      v12 = 0x800000026D23B300;
      v13 = 7632965;
      if (v6 == 7)
      {
        v13 = 0xD000000000000010;
      }

      else
      {
        v12 = 0xE300000000000000;
      }

      if (v6 != 6)
      {
        v11 = v13;
        v10 = v12;
      }

      v14 = 0xE600000000000000;
      v15 = 0xD000000000000011;
      if (v6 == 4)
      {
        v15 = 0x687475417466;
      }

      else
      {
        v14 = 0x800000026D23B320;
      }

      if (v6 <= 5u)
      {
        v16 = v15;
      }

      else
      {
        v16 = v11;
      }

      if (v6 <= 5u)
      {
        v17 = v14;
      }

      else
      {
        v17 = v10;
      }
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = 0x6D616E5B6D726170;
    *(v23 + 8) = 0xEB00000000273D65;
    *(v23 + 16) = v4;
    *(v23 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v18 = v9;
    sub_26D1C5134(1, a2 | 2, v18, a4);
  }

  else
  {
    v24 = sub_26D22D634();
    (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }
}

uint64_t sub_26D1CA934(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1E019C(a1, a3);
  if (v3)
  {
    if (v5 <= 3u)
    {
      v17 = 0xE800000000000000;
      v18 = 0x6874754174616843;
      if (v5 != 2)
      {
        v18 = 0x61684370756F7247;
        v17 = 0xED00006874754174;
      }

      v19 = 0xD000000000000010;
      v20 = 0x800000026D23B360;
      if (v5)
      {
        v19 = 0xD00000000000001BLL;
        v20 = 0x800000026D23B340;
      }

      if (v5 <= 1u)
      {
        v14 = v19;
      }

      else
      {
        v14 = v18;
      }

      if (v5 <= 1u)
      {
        v15 = v20;
      }

      else
      {
        v15 = v17;
      }
    }

    else
    {
      v8 = 0xEE00687475416873;
      v9 = 0x7550636F6C6F6567;
      v10 = 0x800000026D23B300;
      v11 = 7632965;
      if (v5 == 7)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v10 = 0xE300000000000000;
      }

      if (v5 != 6)
      {
        v9 = v11;
        v8 = v10;
      }

      v12 = 0xE600000000000000;
      v13 = 0xD000000000000011;
      if (v5 == 4)
      {
        v13 = 0x687475417466;
      }

      else
      {
        v12 = 0x800000026D23B320;
      }

      if (v5 <= 5u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v9;
      }

      if (v5 <= 5u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v8;
      }
    }

    MEMORY[0x26D6B6C70](v14, v15);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v23 = 0xEB00000000273D65;
    sub_26D1B7F48();
    swift_allocError();
    *v21 = 0x6D616E5B6D726170;
    *(v21 + 8) = 0xEB00000000273D65;
    *(v21 + 16) = v3;
    *(v21 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v16 = v7;
    v23 = sub_26D1C2B9C(1, a2 | 2u, v16);
  }

  else
  {
    return 2;
  }

  return v23;
}

void sub_26D1CAB9C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_26D1E75B8(a1, a3);
  if (v4)
  {
    v10 = 0xE600000000000000;
    v11 = 0x666552707041;
    v12 = 0xEE006F746F725074;
    v13 = 0x726F70736E617274;
    if (v6 != 5)
    {
      v13 = 0x6C61565F64697575;
      v12 = 0xEA00000000006575;
    }

    v14 = 0xE800000000000000;
    v15 = 0x656D614E72657355;
    if (v6 != 3)
    {
      v15 = 0x64775072657355;
      v14 = 0xE700000000000000;
    }

    if (v6 <= 4u)
    {
      v13 = v15;
      v12 = v14;
    }

    v16 = 0xE800000000000000;
    v17 = 0x6570795468747541;
    if (v6 != 1)
    {
      v17 = 0x6D6C616552;
      v16 = 0xE500000000000000;
    }

    if (v6)
    {
      v11 = v17;
      v10 = v16;
    }

    if (v6 <= 2u)
    {
      v18 = v11;
    }

    else
    {
      v18 = v13;
    }

    if (v6 <= 2u)
    {
      v19 = v10;
    }

    else
    {
      v19 = v12;
    }

    MEMORY[0x26D6B6C70](v18, v19);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v20 = 0x6D616E5B6D726170;
    *(v20 + 8) = 0xEB00000000273D65;
    *(v20 + 16) = v4;
    *(v20 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v21 = v9;
    sub_26D1C5478(1, a2 | 2, v21, &qword_2804E0890, &qword_26D230770, MEMORY[0x277CC9260], MEMORY[0x277CC9248], a4);
  }

  else
  {
    v22 = sub_26D22CCE4();
    (*(*(v22 - 8) + 56))(a4, 1, 1, v22);
  }
}

uint64_t sub_26D1CAE24(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1;
  sub_26D1E75B8(a1, a3);
  if (v3)
  {
    v8 = 0xE600000000000000;
    v9 = 0x666552707041;
    v10 = 0xEE006F746F725074;
    v11 = 0x726F70736E617274;
    if (v5 != 5)
    {
      v11 = 0x6C61565F64697575;
      v10 = 0xEA00000000006575;
    }

    v12 = 0xE800000000000000;
    v13 = 0x656D614E72657355;
    if (v5 != 3)
    {
      v13 = 0x64775072657355;
      v12 = 0xE700000000000000;
    }

    if (v5 <= 4u)
    {
      v11 = v13;
      v10 = v12;
    }

    v14 = 0xE800000000000000;
    v15 = 0x6570795468747541;
    if (v5 != 1)
    {
      v15 = 0x6D6C616552;
      v14 = 0xE500000000000000;
    }

    if (v5)
    {
      v9 = v15;
      v8 = v14;
    }

    if (v5 <= 2u)
    {
      v16 = v9;
    }

    else
    {
      v16 = v11;
    }

    if (v5 <= 2u)
    {
      v17 = v8;
    }

    else
    {
      v17 = v10;
    }

    MEMORY[0x26D6B6C70](v16, v17);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v18 = 0x6D616E5B6D726170;
    sub_26D1B7F48();
    swift_allocError();
    *v19 = 0x6D616E5B6D726170;
    *(v19 + 8) = 0xEB00000000273D65;
    *(v19 + 16) = v3;
    *(v19 + 24) = 7;
    swift_willThrow();
  }

  else if (v6)
  {
    v21 = v7;
    v18 = sub_26D1C2A8C(1, a2 | 2u, v21);
  }

  else
  {
    return 0;
  }

  return v18;
}

void sub_26D1CB048(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_26D1E75B8(a1, a3);
  if (v4)
  {
    v10 = 0xE600000000000000;
    v11 = 0x666552707041;
    v12 = 0xEE006F746F725074;
    v13 = 0x726F70736E617274;
    if (v6 != 5)
    {
      v13 = 0x6C61565F64697575;
      v12 = 0xEA00000000006575;
    }

    v14 = 0xE800000000000000;
    v15 = 0x656D614E72657355;
    if (v6 != 3)
    {
      v15 = 0x64775072657355;
      v14 = 0xE700000000000000;
    }

    if (v6 <= 4u)
    {
      v13 = v15;
      v12 = v14;
    }

    v16 = 0xE800000000000000;
    v17 = 0x6570795468747541;
    if (v6 != 1)
    {
      v17 = 0x6D6C616552;
      v16 = 0xE500000000000000;
    }

    if (v6)
    {
      v11 = v17;
      v10 = v16;
    }

    if (v6 <= 2u)
    {
      v18 = v11;
    }

    else
    {
      v18 = v13;
    }

    if (v6 <= 2u)
    {
      v19 = v10;
    }

    else
    {
      v19 = v12;
    }

    MEMORY[0x26D6B6C70](v18, v19);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v20 = 0x6D616E5B6D726170;
    *(v20 + 8) = 0xEB00000000273D65;
    *(v20 + 16) = v4;
    *(v20 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v21 = v9;
    sub_26D1C5478(1, a2 | 2, v21, &qword_2804E0828, &qword_26D2304A0, MEMORY[0x277CC95F0], MEMORY[0x277CC95C8], a4);
  }

  else
  {
    v22 = sub_26D22CE74();
    (*(*(v22 - 8) + 56))(a4, 1, 1, v22);
  }
}

void sub_26D1CB2D0(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  sub_26D1E75D0(a1, a3);
  if (v4)
  {
    v10 = sub_26D1D9FBC(v6);
    MEMORY[0x26D6B6C70](v10);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v11 = 0x6D616E5B6D726170;
    *(v11 + 8) = 0xEB00000000273D65;
    *(v11 + 16) = v4;
    *(v11 + 24) = 7;
    swift_willThrow();
  }

  else if (v8)
  {
    v12 = v9;
    sub_26D1C4ABC(1, a2 | 2, v12, a4);
  }

  else
  {
    v13 = sub_26D22D514();
    (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
  }
}

uint64_t sub_26D1CB488(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  a4(a1, a3);
  if (v5)
  {
    v11 = v5;
    v12 = a5(a1);
    MEMORY[0x26D6B6C70](v12);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v13 = 0x6D616E5B6D726170;
    *(v13 + 8) = 0xEB00000000273D65;
    *(v13 + 16) = v5;
    *(v13 + 24) = 7;
    swift_willThrow();
  }

  else if (v9)
  {
    v15 = v10;
    v11 = sub_26D1C2A8C(1, a2 | 2u, v15);
  }

  else
  {
    return 0;
  }

  return v11;
}

unint64_t sub_26D1CB628(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  a4(a1, a3);
  if (v5)
  {
    v11 = v5;
    v12 = a5(a1);
    MEMORY[0x26D6B6C70](v12);

    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    sub_26D1B7F48();
    swift_allocError();
    *v13 = 0x6D616E5B6D726170;
    *(v13 + 8) = 0xEB00000000273D65;
    *(v13 + 16) = v5;
    *(v13 + 24) = 7;
    swift_willThrow();
  }

  else if (v9)
  {
    v14 = v10;
    v11 = sub_26D1C2CA4(1, a2 | 2u, v14);
  }

  else
  {
    return 0;
  }

  return v11;
}

void sub_26D1CB788(void *a1)
{
  v3 = sub_26D22D5B4();
  MEMORY[0x28223BE20](v3);
  v4 = a1;
  v5 = sub_26D1E25A8();
  if (!v1)
  {
    v6 = sub_26D1CBDF8(v5, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

    sub_26D1C5CD8(0, v6);
    sub_26D1C6B84(1uLL, v6);

    sub_26D22D864();
  }
}

char *sub_26D1CB948(unsigned __int8 a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07C8, &qword_26D230178);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v36 - v6;
  v8 = sub_26D22D514();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D1C5900(a1, a2);
  if (v2)
  {
    return v11;
  }

  v13 = v12;
  v43 = v7;
  if (!v12)
  {
LABEL_14:
    v31 = *&aFqdn[8 * a1];
    v32 = *&aIdProvi[8 * a1 + 8];
    sub_26D1B7F48();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = v32;
    *(v33 + 16) = 0;
    *(v33 + 24) = 1;
    swift_willThrow();
    return v11;
  }

  v14 = *(v12 + 16);
  if (!v14)
  {

    goto LABEL_14;
  }

  v39 = v11;
  v36[1] = 0;
  v49 = MEMORY[0x277D84F90];
  result = sub_26D1E47E4(0, v14, 0);
  v16 = 0;
  v11 = v49;
  v40 = v9;
  v41 = (v9 + 48);
  v17 = (v13 + 48);
  v42 = v13;
  v37 = (v9 + 32);
  v38 = v14;
  while (v16 < *(v13 + 16))
  {
    v44 = v16;
    v46 = v11;
    v11 = *(v17 - 1);
    v18 = *(*v17 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
    v19 = *(v18 + 16);
    v20 = *v17;
    v45 = v11;

    if (!v19)
    {
      goto LABEL_16;
    }

    v21 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
    if ((v22 & 1) == 0)
    {

LABEL_16:

      sub_26D1B7F48();
      swift_allocError();
      *v34 = xmmword_26D230470;
      *(v34 + 16) = 0;
      *(v34 + 24) = 2;
      swift_willThrow();

LABEL_18:

      return v11;
    }

    v23 = (*(v18 + 56) + 16 * v21);
    v24 = *v23;
    v25 = v23[1];

    v47 = v24;
    v48 = v25;
    sub_26D1CC4AC(&qword_2804E0808, MEMORY[0x277CF2358], MEMORY[0x277CF2360]);
    swift_bridgeObjectRetain_n();
    v26 = v43;
    sub_26D22E554();
    if ((*v41)(v26, 1, v8) == 1)
    {

      sub_26D1B950C(v26, &qword_2804E07C8, &qword_26D230178);
      sub_26D1B7F48();
      swift_allocError();
      *v35 = v24;
      *(v35 + 8) = v25;
      *(v35 + 16) = 0;
      *(v35 + 24) = 3;
      swift_willThrow();

      goto LABEL_18;
    }

    swift_bridgeObjectRelease_n();

    v27 = *v37;
    v28 = v39;
    (*v37)(v39, v26, v8);
    v11 = v46;
    v49 = v46;
    v30 = *(v46 + 2);
    v29 = *(v46 + 3);
    if (v30 >= v29 >> 1)
    {
      sub_26D1E47E4((v29 > 1), v30 + 1, 1);
      v11 = v49;
    }

    v16 = v44 + 1;
    *(v11 + 2) = v30 + 1;
    result = v27(&v11[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30], v28, v8);
    v17 += 3;
    v13 = v42;
    if (v38 == v16)
    {

      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_26D1CBDF8(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

void *sub_26D1CC03C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07C8, &qword_26D230178);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v34 - v4;
  v5 = sub_26D22D514();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v8 = sub_26D1BDEEC(0x64692D707061, 0xE600000000000000);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(a1 + 56) + 8 * v8);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v34 = v1;
  v46 = MEMORY[0x277D84F90];

  result = sub_26D1E47E4(0, v11, 0);
  v14 = 0;
  v12 = v46;
  v37 = v10;
  v38 = (v40 + 48);
  v15 = (v10 + 48);
  v35 = (v40 + 32);
  v36 = v11;
  while (v14 < *(v10 + 16))
  {
    v43 = v14;
    v16 = v5;
    v17 = *(v15 - 1);
    v18 = *(*v15 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
    v19 = *(v18 + 16);
    v20 = *v15;

    if (!v19)
    {
      goto LABEL_16;
    }

    v21 = sub_26D1BDEEC(0x65756C6176, 0xE500000000000000);
    if ((v22 & 1) == 0)
    {

LABEL_16:

      sub_26D1B7F48();
      swift_allocError();
      *v32 = xmmword_26D230470;
      *(v32 + 16) = 0;
      *(v32 + 24) = 2;
      swift_willThrow();

LABEL_18:

      return v12;
    }

    v41 = v17;
    v42 = v12;
    v23 = v7;
    v24 = (*(v18 + 56) + 16 * v21);
    v25 = *v24;
    v12 = v24[1];

    v44 = v25;
    v45 = v12;
    sub_26D1CC4AC(&qword_2804E0808, MEMORY[0x277CF2358], MEMORY[0x277CF2360]);
    swift_bridgeObjectRetain_n();
    v26 = v39;
    v27 = v16;
    sub_26D22E554();
    if ((*v38)(v26, 1, v16) == 1)
    {

      sub_26D1B950C(v26, &qword_2804E07C8, &qword_26D230178);
      sub_26D1B7F48();
      swift_allocError();
      *v33 = v25;
      *(v33 + 8) = v12;
      *(v33 + 16) = 0;
      *(v33 + 24) = 3;
      swift_willThrow();

      goto LABEL_18;
    }

    swift_bridgeObjectRelease_n();

    v28 = *v35;
    v29 = v23;
    (*v35)(v23, v26, v27);
    v12 = v42;
    v46 = v42;
    v31 = *(v42 + 16);
    v30 = *(v42 + 24);
    v5 = v27;
    if (v31 >= v30 >> 1)
    {
      sub_26D1E47E4((v30 > 1), v31 + 1, 1);
      v12 = v46;
    }

    v14 = v43 + 1;
    *(v12 + 16) = v31 + 1;
    result = v28((v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v31), v29, v5);
    v15 += 3;
    v10 = v37;
    v7 = v29;
    if (v36 == v14)
    {

      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26D1CC4AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26D1CC4F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v35 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A30, &qword_26D2306E0);
  v31 = *(v39 - 8);
  v4 = MEMORY[0x28223BE20](v39);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - v7;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v36 = a1;

  v14 = 0;
  v34 = v6;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v11)) | (v15 << 6);
      v17 = *(v36 + 56);
      v18 = (*(v36 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = sub_26D22D1D4();
      v22 = *(v21 - 8);
      v23 = v17 + *(v22 + 72) * v16;
      v24 = v33;
      (*(v22 + 16))(&v33[*(v39 + 48)], v23, v21);
      *v24 = v20;
      v24[1] = v19;
      v25 = v34;
      sub_26D1D76D0(v24, v34, &qword_2804E0A30, &qword_26D2306E0);
      v26 = *v35;
      v27 = v35[1];
      v28 = v25[1];
      v37 = *v25;
      v38 = v28;

      MEMORY[0x26D6B6C70](46, 0xE100000000000000);
      LOBYTE(v26) = sub_26D1CE630(v37, v38, v26, v27);

      if (v26)
      {
        break;
      }

      v11 &= v11 - 1;
      result = sub_26D1B950C(v25, &qword_2804E0A30, &qword_26D2306E0);
      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v29 = v32;
    sub_26D1D76D0(v25, v32, &qword_2804E0A30, &qword_26D2306E0);
    return (*(v31 + 56))(v29, 0, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        return (*(v31 + 56))(v32, 1, 1, v39);
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26D1CC7EC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = sub_26D22D1D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

char *sub_26D1CC9C0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A20, &qword_26D2306D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_26D22D174();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = &v24 - v13;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v25 = v12;
  v28 = (v12 + 32);
  v29 = (v12 + 48);
  v15 = (a1 + 56);
  v33 = MEMORY[0x277D84F90];
  v24 = v11;
  v26 = a2;
  while (1)
  {
    v16 = *(v15 - 1);
    v17 = *v15;
    v30 = *(v15 - 3);
    v31 = v16;
    v32 = v17;

    sub_26D1CDB98(&v30, a2, v7);
    if (v2)
    {
      break;
    }

    if ((*v29)(v7, 1, v8) == 1)
    {
      sub_26D1B950C(v7, &qword_2804E0A20, &qword_26D2306D0);
    }

    else
    {
      v18 = v27;
      v19 = *v28;
      (*v28)(v27, v7, v8);
      v19(v11, v18, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_26D22BE38(0, *(v33 + 2) + 1, 1, v33);
      }

      v21 = *(v33 + 2);
      v20 = *(v33 + 3);
      if (v21 >= v20 >> 1)
      {
        v33 = sub_26D22BE38((v20 > 1), v21 + 1, 1, v33);
      }

      v22 = v33;
      *(v33 + 2) = v21 + 1;
      v11 = v24;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v24, v8);
      a2 = v26;
    }

    v15 += 4;
    if (!--v14)
    {
      return v33;
    }
  }

  return v33;
}

uint64_t sub_26D1CCCC0()
{
  v0 = sub_26D22E404();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D22E3F4();
  v4 = sub_26D22E3D4();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_2804E08E8 = v4;
    unk_2804E08F0 = v6;
  }

  return result;
}

uint64_t sub_26D1CCDC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0968, &qword_26D230628);
  __swift_allocate_value_buffer(v0, qword_2804E08F8);
  __swift_project_value_buffer(v0, qword_2804E08F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0990, &qword_26D230680);
  return sub_26D22CEB4();
}

uint64_t sub_26D1CCE54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A78, &qword_26D230710);
  __swift_allocate_value_buffer(v0, qword_2804E0910);
  __swift_project_value_buffer(v0, qword_2804E0910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A98, &qword_26D230768);
  return sub_26D22CEB4();
}

void CPIMMessageUnpacker.unpack(from:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CPIMMessageUnpacker.Error(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v18 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  sub_26D1BCB48(a1, a2);
  sub_26D1CD124(a1, a2, a3);
  if (v3)
  {
    v19 = v3;
    v16 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
    if (swift_dynamicCast())
    {

      sub_26D1CD52C(v15, v13);
      sub_26D1CD590(v13, v10);
      sub_26D22E2E4();
      sub_26D1D7614(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
      swift_allocError();
      sub_26D2029BC(v10, v17);
      swift_willThrow();
      sub_26D1CD5F4(v13);
    }

    else
    {

      swift_willThrow();
    }
  }
}

uint64_t type metadata accessor for CPIMMessageUnpacker.Error(uint64_t a1)
{
  result = qword_2804E0930;
  if (!qword_2804E0930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D1CD124@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v6 = sub_26D22D184();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22D1E4();
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataParser();
  inited = swift_initStackObject();
  v13 = 0;
  inited[2] = a1;
  inited[3] = a2;
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_7;
    }

    v13 = *(a1 + 16);
    v15 = *(a1 + 24);
  }

  else
  {
    if (!v14)
    {
      goto LABEL_7;
    }

    v13 = a1;
    v15 = a1 >> 32;
  }

  sub_26D1BCB48(a1, a2);
  if (v15 < v13)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  inited[4] = v13;
  if (qword_2804E0458 != -1)
  {
LABEL_18:
    swift_once();
  }

  v17 = qword_2804E08E8;
  v16 = unk_2804E08F0;
  v18 = sub_26D1D7B6C();
  if ((v20 & 1) != 0 || (v21 = sub_26D1BE908(v17, v16, v18, v19, 0, inited[2], inited[3]), !v22))
  {
    type metadata accessor for CPIMMessageUnpacker.Error(0);
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
    swift_allocError();
    *v26 = v9;
    v26[1] = 0x7320726564616548;
    v27 = 0xEE006E6F69746365;
    goto LABEL_14;
  }

  inited[4] = v23;
  v24 = sub_26D1D56B8(v21, v22);
  if (v3)
  {
LABEL_15:
    sub_26D1BCB9C(a1, a2);
    swift_setDeallocating();
    return sub_26D1BCB9C(inited[2], inited[3]);
  }

  v32[1] = v24;
  sub_26D1D7B6C();
  if (v25)
  {

    type metadata accessor for CPIMMessageUnpacker.Error(0);
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
    swift_allocError();
    *v26 = v9;
    v26[1] = 0x20746E65746E6F43;
    v27 = 0xEF6E6F6974636573;
LABEL_14:
    v26[2] = v27;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_15;
  }

  v29 = sub_26D22CD54();
  v31 = v30;
  sub_26D1BCB48(v29, v30);
  sub_26D1CF9A4(v29, v31, v8);
  sub_26D22D164();
  swift_setDeallocating();
  sub_26D1BCB9C(inited[2], inited[3]);
  sub_26D1BCB9C(v29, v31);
  sub_26D1BCB9C(a1, a2);
  return (*(v33 + 32))(v34, v11, v9);
}

uint64_t sub_26D1CD52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPIMMessageUnpacker.Error(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D1CD590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CPIMMessageUnpacker.Error(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D1CD5F4(uint64_t a1)
{
  v2 = type metadata accessor for CPIMMessageUnpacker.Error(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26D1CD718(uint64_t a1)
{
  sub_26D1CD790(319);
  if (v1 <= 0x3F)
  {
    sub_26D1CD804(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26D1CD790(uint64_t a1)
{
  if (!qword_2804E0940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E0948, &qword_26D2305B0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2804E0940);
    }
  }
}

void sub_26D1CD804(uint64_t a1)
{
  if (!qword_2804E0950)
  {
    sub_26D22D064();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E04D8, &unk_26D22F490);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2804E0950);
    }
  }
}

uint64_t sub_26D1CD890(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0x2D746E65746E6F43;
  }

  if (v2)
  {
    v4 = 0xEC00000065707954;
  }

  else
  {
    v4 = 0x800000026D23A0B0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0x2D746E65746E6F43;
  }

  if (*a2)
  {
    v6 = 0x800000026D23A0B0;
  }

  else
  {
    v6 = 0xEC00000065707954;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D1CD944()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1CD9D4(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1CDA50(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1CDADC@<X0>(char *a2@<X8>)
{
  v3 = sub_26D22E854();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_26D1CDB3C(unint64_t *a1@<X8>)
{
  v2 = 0x800000026D23A0B0;
  v3 = 0x2D746E65746E6F43;
  if (*v1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xEC00000065707954;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_26D1CDB98@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a2;
  v103 = a3;
  v4 = sub_26D22D1D4();
  v107 = *(v4 - 8);
  v108 = v4;
  MEMORY[0x28223BE20](v4);
  v93 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D22D024();
  v96 = *(v6 - 8);
  v97 = v6;
  MEMORY[0x28223BE20](v6);
  v95 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A20, &qword_26D2306D0);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = &v90 - v9;
  v10 = sub_26D22D174();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v98 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v100 = &v90 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A28, &qword_26D2306D8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v90 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A30, &qword_26D2306E0);
  v18 = *(v112 - 8);
  v19 = MEMORY[0x28223BE20](v112);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v90 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A38, &qword_26D2306E8);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v92 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v94 = &v90 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v104 = &v90 - v30;
  MEMORY[0x28223BE20](v29);
  v109 = &v90 - v31;
  v32 = *a1;
  v33 = a1[1];
  v35 = a1[2];
  v34 = a1[3];

  v36 = sub_26D1D4E58(v32, v33, v35, v34);
  if (!v37)
  {
    return (*(v11 + 56))(v103, 1, 1, v10);
  }

  v40 = v36;
  v41 = v37;
  v91 = v10;
  v111[0] = v36;
  v111[1] = v37;
  v101 = v38;
  v102 = v39;
  v111[2] = v38;
  v111[3] = v39;

  v43 = v110;
  sub_26D1CC4F4(v42, v111, v17);
  v110 = v43;

  v44 = (*(v18 + 48))(v17, 1, v112);
  v99 = v11;
  if (v44 == 1)
  {
    sub_26D1B950C(v17, &qword_2804E0A28, &qword_26D2306D8);
    v45 = 1;
    v47 = v107;
    v46 = v108;
    v48 = v109;
  }

  else
  {
    sub_26D1D76D0(v17, v23, &qword_2804E0A30, &qword_26D2306E0);
    sub_26D1D7738(v23, v21, &qword_2804E0A30, &qword_26D2306E0);
    v50 = *(v112 + 48);

    v51 = sub_26D22E464();

    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      return result;
    }

    v47 = v107;
    v46 = v108;
    (*(v107 + 8))(&v21[v50], v108);
    v53 = sub_26D1D5088(v52, v40, v41);
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v40 = MEMORY[0x26D6B6C10](v53, v55, v57, v59);
    v61 = v60;

    sub_26D1D76D0(v23, v21, &qword_2804E0A30, &qword_26D2306E0);

    v48 = v109;
    (*(v47 + 32))(v109, &v21[*(v112 + 48)], v46);
    v45 = 0;
    v41 = v61;
  }

  v62 = *(v47 + 56);
  v62(v48, v45, 1, v46);
  v63 = v104;
  sub_26D1D7738(v48, v104, &qword_2804E0A38, &qword_26D2306E8);

  v64 = v102;

  v65 = v105;
  v66 = v110;
  sub_26D1CE78C(v40, v41, v101, v64, v63, v105);
  if (v66)
  {
    sub_26D1B950C(v48, &qword_2804E0A38, &qword_26D2306E8);
  }

  else
  {
    v112 = v41;
    v67 = v99;
    v68 = v91;
    if ((*(v99 + 48))(v65, 1, v91) == 1)
    {
      sub_26D1B950C(v48, &qword_2804E0A38, &qword_26D2306E8);
      sub_26D1B950C(v65, &qword_2804E0A20, &qword_26D2306D0);
      (*(v67 + 56))(v103, 1, 1, v68);
    }

    else
    {
      v69 = *(v67 + 32);
      v70 = v100;
      v105 = v69;
      (v69)(v100, v65, v68);
      v71 = v98;
      v72 = v99;
      (*(v99 + 16))(v98, v70, v68);
      if ((*(v72 + 88))(v71, v68) == *MEMORY[0x277CF1EA0])
      {
        v110 = 0;
        (*(v72 + 96))(v71, v68);
        v73 = v71;
        v74 = v95;
        v75 = v96;
        v76 = v97;
        (*(v96 + 32))(v95, v73, v97);
        v77 = sub_26D22CFF4();
        if (v78)
        {
          v101 = v77;
          v104 = v78;
          v79 = sub_26D22D1B4();
          MEMORY[0x28223BE20](v79);
          *(&v90 - 2) = v74;
          v80 = v94;
          v81 = v110;
          sub_26D1CC7EC(sub_26D1D76B0, v79, v94);
          v110 = v81;

          v83 = v107;
          v82 = v108;
          v84 = v74;
          if ((*(v107 + 48))(v80, 1, v108) == 1)
          {
            sub_26D1B950C(v109, &qword_2804E0A38, &qword_26D2306E8);
          }

          else
          {
            v85 = v93;
            (*(v83 + 32))(v93, v80, v82);
            v86 = v92;
            (*(v83 + 16))(v92, v85, v82);
            v62(v86, 0, 1, v82);
            sub_26D1CEF38(v86, v101, v104);
            (*(v83 + 8))(v85, v82);
            v80 = v109;
          }

          v88 = v96;
          v87 = v97;
          sub_26D1B950C(v80, &qword_2804E0A38, &qword_26D2306E8);
          (*(v88 + 8))(v84, v87);
          v68 = v91;
        }

        else
        {
          sub_26D1B950C(v109, &qword_2804E0A38, &qword_26D2306E8);
          (*(v75 + 8))(v74, v76);
        }

        v72 = v99;
      }

      else
      {
        sub_26D1B950C(v48, &qword_2804E0A38, &qword_26D2306E8);
        (*(v72 + 8))(v71, v68);
      }

      v89 = v103;
      (v105)(v103, v100, v68);
      (*(v72 + 56))(v89, 0, 1, v68);
    }
  }
}

uint64_t sub_26D1CE630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_26D22E4A4();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_26D22E4A4();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_26D22E964();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_26D22E4A4();
      v7 = v9;
    }

    while (v9);
  }

  sub_26D22E4A4();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_26D1CE78C@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v61 = a3;
  v63 = a4;
  v59 = a1;
  v60 = a2;
  v58 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A20, &qword_26D2306D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v49 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A38, &qword_26D2306E8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49 - v17;
  v19 = sub_26D22D1D4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v49 - v24;
  v26 = sub_26D22D174();
  v56 = *(v26 - 8);
  v57 = v26;
  MEMORY[0x28223BE20](v26);
  v54 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D1D7738(a5, v18, &qword_2804E0A38, &qword_26D2306E8);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    v33 = v25;
    v34 = v59;
    v35 = v60;
    v51 = a5;
    v36 = v61;
    v37 = v62;
    (*(v20 + 32))(v33, v18, v19);
    v38 = *(v20 + 16);
    v50 = v33;
    v38(v23, v33, v19);
    v39 = (*(v20 + 88))(v23, v19);
    if (v39 == *MEMORY[0x277CF1EE0])
    {
      v40 = v55;
      sub_26D1D0DBC(v35, v36, v63, v55);
      if (!v37)
      {
        sub_26D1B950C(v51, &qword_2804E0A38, &qword_26D2306E8);
        (*(v20 + 8))(v50, v19);
        v31 = v56;
        v30 = v57;
        if ((*(v56 + 48))(v40, 1, v57))
        {
          v32 = v40;
          goto LABEL_16;
        }

        v42 = v40;
LABEL_20:
        v45 = v58;
        v47 = *(v31 + 32);
        v48 = v54;
        v47(v54, v42, v30);
        v47(v45, v48, v30);
        v44 = 0;
        return (*(v31 + 56))(v45, v44, 1, v30);
      }

LABEL_11:
      v43 = v50;
      sub_26D1B950C(v51, &qword_2804E0A38, &qword_26D2306E8);
      return (*(v20 + 8))(v43, v19);
    }

    v41 = v35;
    if (v39 == *MEMORY[0x277CF1ED8])
    {
      v42 = v53;
      sub_26D1D1870(v34, v36, v53);
      if (v37)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v39 != *MEMORY[0x277CF1ED0])
      {

        sub_26D1B950C(v51, &qword_2804E0A38, &qword_26D2306E8);
        v46 = *(v20 + 8);
        v46(v50, v19);
        v46(v23, v19);
        v44 = 1;
        v30 = v57;
        v45 = v58;
        v31 = v56;
        return (*(v31 + 56))(v45, v44, 1, v30);
      }

      v42 = v52;
      sub_26D1D1B88(v34, v41, v36, v63, v52);
      if (v37)
      {
        goto LABEL_11;
      }
    }

    sub_26D1B950C(v51, &qword_2804E0A38, &qword_26D2306E8);
    (*(v20 + 8))(v50, v19);
    v31 = v56;
    v30 = v57;
    if ((*(v56 + 48))(v42, 1, v57))
    {
      v32 = v42;
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  sub_26D1B950C(v18, &qword_2804E0A38, &qword_26D2306E8);
  v28 = v62;
  sub_26D1D0074(v59, v60, v61, v63, v15);
  result = sub_26D1B950C(a5, &qword_2804E0A38, &qword_26D2306E8);
  if (v28)
  {
    return result;
  }

  v31 = v56;
  v30 = v57;
  if (!(*(v56 + 48))(v15, 1, v57))
  {
    v42 = v15;
    goto LABEL_20;
  }

  v32 = v15;
LABEL_16:
  sub_26D1B950C(v32, &qword_2804E0A20, &qword_26D2306D0);
  v44 = 1;
  v45 = v58;
  return (*(v31 + 56))(v45, v44, 1, v30);
}

uint64_t sub_26D1CEDF8()
{
  v0 = sub_26D22CCE4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D22D004();
  v4 = sub_26D22CC64();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v4 == sub_26D22D1C4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1CEF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A38, &qword_26D2306E8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_26D22D1D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_26D1B950C(a1, &qword_2804E0A38, &qword_26D2306E8);
    sub_26D1D4A64(a2, a3, v9);

    return sub_26D1B950C(v9, &qword_2804E0A38, &qword_26D2306E8);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_26D203360(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_26D1CF110(uint64_t a1, uint64_t a2)
{
  sub_26D1B1F48();
  v2 = byte_287E99778;
  v3 = sub_26D22E6D4();

  if (v3 && (v2 = byte_287E99779, v4 = sub_26D22E6D4(), , v4))
  {

    return 2;
  }

  else
  {
  }

  return v2;
}

void *sub_26D1CF24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v25 = a3;
  v3 = sub_26D22D064();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09B8, &qword_26D2306A8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v23 = &v22 - v10;
  sub_26D1D7614(&qword_2804E09F0, MEMORY[0x277CF1D40], MEMORY[0x277CF1D50]);
  result = sub_26D22E764();
  v12 = v35;
  v13 = *(v35 + 16);
  if (v13)
  {
    v14 = 0;
    v26 = v4 + 16;
    while (v14 < *(v12 + 16))
    {
      (*(v4 + 16))(v6, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v3);
      sub_26D1D7614(&qword_2804E09F8, MEMORY[0x277CF1D40], MEMORY[0x277CF1D48]);
      sub_26D22E544();
      v31 = v33;
      v32 = v34;
      v29 = v27;
      v30 = v28;
      sub_26D1B1F48();
      v15 = sub_26D22E6D4();

      if (!v15)
      {

        v17 = v23;
        (*(v4 + 32))(v23, v6, v3);
        v16 = 0;
        goto LABEL_8;
      }

      ++v14;
      result = (*(v4 + 8))(v6, v3);
      if (v13 == v14)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v16 = 1;
    v17 = v23;
LABEL_8:
    v18 = *(v4 + 56);
    v18(v17, v16, 1, v3);

    v19 = v24;
    sub_26D1D76D0(v17, v24, &qword_2804E09B8, &qword_26D2306A8);
    if ((*(v4 + 48))(v19, 1, v3) == 1)
    {
      sub_26D1B950C(v19, &qword_2804E09B8, &qword_26D2306A8);
      v20 = 1;
      v21 = v25;
    }

    else
    {
      v21 = v25;
      (*(v4 + 32))(v25, v19, v3);
      v20 = 0;
    }

    return (v18)(v21, v20, 1, v3);
  }

  return result;
}

void *sub_26D1CF5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v25 = a3;
  v3 = sub_26D22D074();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0998, &qword_26D230688);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v23 = &v22 - v10;
  sub_26D1D7614(&qword_2804E09D0, MEMORY[0x277CF1D60], MEMORY[0x277CF1D78]);
  result = sub_26D22E764();
  v12 = v35;
  v13 = *(v35 + 16);
  if (v13)
  {
    v14 = 0;
    v26 = v4 + 16;
    while (v14 < *(v12 + 16))
    {
      (*(v4 + 16))(v6, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, v3);
      sub_26D1D7614(&qword_2804E09D8, MEMORY[0x277CF1D60], MEMORY[0x277CF1D70]);
      sub_26D22E544();
      v31 = v33;
      v32 = v34;
      v29 = v27;
      v30 = v28;
      sub_26D1B1F48();
      v15 = sub_26D22E6D4();

      if (!v15)
      {

        v17 = v23;
        (*(v4 + 32))(v23, v6, v3);
        v16 = 0;
        goto LABEL_8;
      }

      ++v14;
      result = (*(v4 + 8))(v6, v3);
      if (v13 == v14)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v16 = 1;
    v17 = v23;
LABEL_8:
    v18 = *(v4 + 56);
    v18(v17, v16, 1, v3);

    v19 = v24;
    sub_26D1D76D0(v17, v24, &qword_2804E0998, &qword_26D230688);
    if ((*(v4 + 48))(v19, 1, v3) == 1)
    {
      sub_26D1B950C(v19, &qword_2804E0998, &qword_26D230688);
      v20 = 1;
      v21 = v25;
    }

    else
    {
      v21 = v25;
      (*(v4 + 32))(v25, v19, v3);
      v20 = 0;
    }

    return (v18)(v21, v20, 1, v3);
  }

  return result;
}

uint64_t *sub_26D1CF9A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v75 = sub_26D22D0A4();
  v74 = *(v75 - 8);
  v6 = MEMORY[0x28223BE20](v75);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v57 - v9;
  v11 = sub_26D22D184();
  v72 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0960, &qword_26D230620);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  sub_26D1BCB48(a1, a2);
  v20 = sub_26D1D5B80(a1, a2);
  if (v3)
  {
    v23 = a1;
    v24 = a2;
    return sub_26D1BCB9C(v23, v24);
  }

  v67 = v10;
  v68 = v11;
  v69 = v8;
  v70 = v17;
  v71 = a2;
  v25 = v75;
  v66 = v13;
  v26 = v22;
  v27 = v21;
  v28 = v20;

  sub_26D1BCB48(v27, v26);
  sub_26D1D37D4(v28, v27, v26, v19);
  v63 = v28;
  v64 = v27;
  v65 = v26;
  v30 = v74;
  v31 = *(v74 + 48);
  v32 = v25;
  v61 = v74 + 48;
  v62 = v31;
  if (v31(v19, 1, v25) == 1)
  {
    sub_26D1B950C(v19, &qword_2804E0960, &qword_26D230620);
    v33 = v63;

    v34 = v64;
    v35 = v65;
    sub_26D1BCB48(v64, v65);
    result = sub_26D1D65A0(v33, v34, v35);
    v36 = v68;
    if (!result)
    {
      v52 = v71;
      type metadata accessor for CPIMMessageUnpacker.Error(0);
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
      swift_allocError();
      *v53 = v36;
      v53[1] = 0xD000000000000014;
      v53[2] = 0x800000026D23B3A0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26D1BCB9C(a1, v52);

      v23 = v64;
      v24 = v65;
      return sub_26D1BCB9C(v23, v24);
    }

    v57 = a1;
    v59 = result[2];
    if (v59)
    {
      v38 = 0;
      v58 = (v30 + 32);
      v39 = (result + 6);
      v60 = MEMORY[0x277D84F90];
      while (v38 < result[2])
      {
        v40 = result;
        v41 = v38;
        v42 = *(v39 - 1);
        v43 = *v39;
        v44 = *(v39 - 2);

        sub_26D1BCB48(v42, v43);
        v45 = v70;
        sub_26D1D37D4(v44, v42, v43, v70);
        if (v62(v45, 1, v32) == 1)
        {
          sub_26D1B950C(v45, &qword_2804E0960, &qword_26D230620);
        }

        else
        {
          v46 = *v58;
          v47 = v67;
          (*v58)(v67, v45, v32);
          v46(v69, v47, v32);
          v48 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_26D22BFA8(0, v48[2] + 1, 1, v48);
          }

          v50 = v48[2];
          v49 = v48[3];
          if (v50 >= v49 >> 1)
          {
            v48 = sub_26D22BFA8((v49 > 1), v50 + 1, 1, v48);
          }

          v48[2] = v50 + 1;
          v51 = (*(v74 + 80) + 32) & ~*(v74 + 80);
          v60 = v48;
          (v46)(v48 + v51 + *(v74 + 72) * v50);
        }

        v38 = v41 + 1;
        v39 += 3;
        result = v40;
        if (v59 == v41 + 1)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {
      v60 = MEMORY[0x277D84F90];
LABEL_22:

      sub_26D1BCB9C(v64, v65);
      sub_26D1BCB9C(v57, v71);
      v54 = v66;
      *v66 = v60;
      v55 = v72;
      v56 = v68;
      (*(v72 + 104))(v54, *MEMORY[0x277CF1EB0], v68);
      return (*(v55 + 32))(v73, v54, v56);
    }
  }

  else
  {

    sub_26D1BCB9C(v64, v65);
    sub_26D1BCB9C(a1, v71);
    v37 = v73;
    (*(v30 + 32))(v73, v19, v32);
    return (*(v72 + 104))(v37, *MEMORY[0x277CF1EC0], v68);
  }

  return result;
}

uint64_t sub_26D1D0074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v58 = a1;
  v59 = a4;
  v57 = a3;
  v54 = a5;
  v6 = sub_26D22CE34();
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D22CFD4();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D22CFB4();
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26D22D1A4();
  v55 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26D22D174();
  v52 = *(v16 - 8);
  v53 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v46 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v46 - v27;
  MEMORY[0x28223BE20](v26);
  v50 = &v46 - v29;

  v30 = sub_26D1D4E0C(v58, a2);
  if (v30 <= 1)
  {
    v58 = v13;
    v35 = v55;
    v34 = v56;
    if (v30)
    {
      v40 = v60;
      sub_26D1D5138(v57, v59);

      if (v40)
      {
        return result;
      }

      sub_26D22CFA4();
      (*(v34 + 32))(v25, v12, v10);
      v33 = MEMORY[0x277CF1E88];
      v19 = v25;
    }

    else
    {
      v36 = v60;
      sub_26D1D5138(v57, v59);

      if (v36)
      {
        return result;
      }

      sub_26D22D194();
      (*(v35 + 32))(v28, v15, v58);
      v33 = MEMORY[0x277CF1E80];
      v19 = v28;
    }
  }

  else if (v30 == 2)
  {
    v37 = v59;

    v38 = v60;
    sub_26D1BCF54(v57, v37, v51);

    if (v38)
    {
      return result;
    }

    v39 = v49;
    sub_26D22CFC4();
    (*(v47 + 32))(v22, v39, v48);
    v33 = MEMORY[0x277CF1E90];
    v19 = v22;
  }

  else
  {
    if (v30 != 3)
    {

      return (*(v52 + 56))(v54, 1, 1, v53);
    }

    v31 = v60;
    result = sub_26D1D0614(a2, v19);
    if (v31)
    {
      return result;
    }

    v33 = MEMORY[0x277CF1EA0];
  }

  v42 = v52;
  v41 = v53;
  (*(v52 + 104))(v19, *v33, v53);
  v43 = *(v42 + 32);
  v44 = v50;
  v43(v50, v19, v41);
  v45 = v54;
  v43(v54, v44, v41);
  return (*(v42 + 56))(v45, 0, 1, v41);
}

uint64_t sub_26D1D0614@<X0>(uint64_t a1@<X1>, uint64_t a4@<X8>)
{
  v43 = a1;
  v36[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = v36 - v5;
  v6 = sub_26D22CCE4();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v36[0] = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0AA0, &qword_26D230778);
  v41 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0AA8, &qword_26D230780);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0AB0, &qword_26D230788);
  v38 = *(v19 - 8);
  v39 = v19;
  MEMORY[0x28223BE20](v19);
  v51 = v36 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0AB8, &qword_26D230790);
  sub_26D22CEB4();
  sub_26D22E534();
  sub_26D1D7A6C(&qword_2804E0AC0, &qword_2804E0AA0, &qword_26D230778, MEMORY[0x277D85AC0]);
  v40 = v15;
  sub_26D22CEA4();
  v21 = v42;
  sub_26D22CEC4();
  if (v21)
  {

    v22 = *(v41 + 8);
    v22(v13, v10);
    v22(v40, v10);
    v24 = v38;
    v23 = v39;
    (*(v38 + 56))(v18, 1, 1, v39);
  }

  else
  {

    v25 = *(v41 + 8);
    v25(v13, v10);
    v25(v40, v10);
    v24 = v38;
    v23 = v39;
  }

  v26 = (*(v24 + 48))(v18, 1, v23);
  v28 = v45;
  v27 = v46;
  v29 = v44;
  if (v26 == 1)
  {
    sub_26D1B950C(v18, &qword_2804E0AA8, &qword_26D230780);
    type metadata accessor for CPIMMessageUnpacker.Error(0);
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
    swift_allocError();
    v31 = v30;
    *v30 = sub_26D22D024();
    v31[1] = 0xD000000000000011;
    v31[2] = 0x800000026D23B570;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    (*(v24 + 32))(v51, v18, v23);
    swift_getKeyPath();
    sub_26D22CEE4();

    MEMORY[0x26D6B6C10](v47, v48, v49, v50);

    v33 = v37;
    sub_26D22CCD4();

    if ((*(v28 + 48))(v33, 1, v27) == 1)
    {
      sub_26D1B950C(v33, &qword_2804E0890, &qword_26D230770);
      type metadata accessor for CPIMMessageUnpacker.Error(0);
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
      swift_allocError();
      v35 = v34;
      *v34 = sub_26D22D024();
      v35[1] = 0xD000000000000018;
      v35[2] = 0x800000026D23B590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      (*(v28 + 32))(v29, v33, v27);
      swift_getKeyPath();
      sub_26D22CEE4();

      MEMORY[0x26D6B6C10](v47, v48, v49, v50);

      (*(v28 + 16))(v36[0], v29, v27);
      sub_26D22D014();
      (*(v28 + 8))(v29, v27);
    }

    return (*(v24 + 8))(v51, v23);
  }
}

uint64_t sub_26D1D0DBC@<X0>(char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v30 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A40, &qword_26D2306F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_26D22D0C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_26D22D174();
  v13 = *(v29 - 8);
  v14 = MEMORY[0x28223BE20](v29);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;

  v19 = sub_26D22E854();

  if (v19)
  {
    if (v19 == 1)
    {
      v20 = v33;
      result = sub_26D1D1370(a2, v31, v32, v16);
      if (v20)
      {
        return result;
      }

      v33 = 0;
      v22 = v29;
      (*(v13 + 104))(v16, *MEMORY[0x277CF1E78], v29);
      v23 = *(v13 + 32);
      v23(v18, v16, v22);
      goto LABEL_11;
    }
  }

  else
  {
    v24 = v33;
    result = sub_26D1D1138(a2, v31, v32, v8);
    if (v24)
    {
      return result;
    }

    v33 = 0;
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v27 = *(v10 + 32);
      v27(v12, v8, v9);
      v27(v18, v12, v9);
      v22 = v29;
      (*(v13 + 104))(v18, *MEMORY[0x277CF1E50], v29);
      v23 = *(v13 + 32);
LABEL_11:
      v28 = v30;
      v23(v30, v18, v22);
      v26 = v28;
      v25 = 0;
      return (*(v13 + 56))(v26, v25, 1, v22);
    }

    sub_26D1B950C(v8, &qword_2804E0A40, &qword_26D2306F0);
  }

  v25 = 1;
  v22 = v29;
  v26 = v30;
  return (*(v13 + 56))(v26, v25, 1, v22);
}

uint64_t sub_26D1D1138@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v27 = a1;
  v24 = a4;
  v23 = sub_26D22D0C4();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D22CAD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2;
  v26 = a3;

  sub_26D22CAB4();
  sub_26D1B1F48();
  v14 = sub_26D22E6B4();
  v16 = v15;

  (*(v11 + 8))(v13, v10);

  if (sub_26D22C4CC(v14, v16))
  {
    result = sub_26D22D0B4();
    if (v4)
    {
      return result;
    }

    v19 = v23;
    v18 = v24;
    (*(v7 + 32))(v24, v9, v23);
    v20 = v19;
    v21 = v18;
    v22 = 0;
  }

  else
  {

    v22 = 1;
    v20 = v23;
    v21 = v24;
  }

  return (*(v7 + 56))(v21, v22, 1, v20);
}

uint64_t sub_26D1D1370@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a4;
  v43 = a1;
  v39 = sub_26D22CAD4();
  v35 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A48, &qword_26D2306F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_26D22D144();
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A50, &qword_26D230700);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  *&v40 = a2;
  *(&v40 + 1) = a3;

  sub_26D22CEB4();
  sub_26D1D77A0();
  sub_26D1D7A6C(&qword_2804E0A60, &qword_2804E0A50, &qword_26D230700, MEMORY[0x277D85AC0]);
  v16 = sub_26D22E384();

  (*(v13 + 8))(v15, v12);

  v36 = *(v16 + 16);
  if (v36)
  {
    v18 = 0;
    v34 = (v32 + 48);
    ++v35;
    v33 = (v32 + 32);
    v19 = (v16 + 56);
    v43 = MEMORY[0x277D84F90];
    while (v18 < *(v16 + 16))
    {
      v20 = v16;
      v21 = *(v19 - 1);
      v22 = *v19;
      v40 = *(v19 - 3);
      v41 = v21;
      v42 = v22;

      v23 = v10;
      v24 = v9;
      v25 = v38;
      sub_26D22CAB4();
      sub_26D1D756C();
      sub_26D22E6B4();
      v26 = v25;
      v9 = v24;
      v10 = v23;
      (*v35)(v26, v39);
      sub_26D22D134();

      if ((*v34)(v9, 1, v23) == 1)
      {
        result = sub_26D1B950C(v9, &qword_2804E0A48, &qword_26D2306F8);
        v16 = v20;
      }

      else
      {
        v27 = *v33;
        (*v33)(v37, v9, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_26D22BFD0(0, *(v43 + 2) + 1, 1, v43);
        }

        v16 = v20;
        v29 = *(v43 + 2);
        v28 = *(v43 + 3);
        if (v29 >= v28 >> 1)
        {
          v43 = sub_26D22BFD0((v28 > 1), v29 + 1, 1, v43);
        }

        v30 = v43;
        *(v43 + 2) = v29 + 1;
        result = v27(&v30[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29], v37, v10);
      }

      ++v18;
      v19 += 4;
      if (v36 == v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
LABEL_13:

    return sub_26D22D154();
  }

  return result;
}

uint64_t sub_26D1D1870@<X0>(char *a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v26 = a3;
  v27 = a1;
  v29 = a5;
  v28 = sub_26D22D174();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A68, &qword_26D230708);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_26D22D044();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  if (sub_26D22E854())
  {
  }

  else
  {
    v27 = v7;

    sub_26D22D034();

    if (!(*(v12 + 48))(v10, 1, v11))
    {
      v22 = *(v12 + 32);
      v22(v15, v10, v11);
      v22(v17, v15, v11);
      v23 = v27;
      v22(v27, v17, v11);
      v24 = v28;
      (*(v5 + 104))(v23, *MEMORY[0x277CF1E58], v28);
      v25 = v29;
      (*(v5 + 32))(v29, v23, v24);
      v20 = v24;
      v19 = v25;
      v18 = 0;
      return (*(v5 + 56))(v19, v18, 1, v20);
    }

    sub_26D1B950C(v10, &qword_2804E0A68, &qword_26D230708);
  }

  v18 = 1;
  v20 = v28;
  v19 = v29;
  return (*(v5 + 56))(v19, v18, 1, v20);
}

uint64_t sub_26D1D1B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v68 = a4;
  v67 = a3;
  v72 = a1;
  v64 = a5;
  v6 = sub_26D22D0E4();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v59 = &v52 - v9;
  v10 = sub_26D22D104();
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D22CAD4();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26D22D124();
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26D22D174();
  v62 = *(v18 - 8);
  v63 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v52 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v52 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v52 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v52 - v32;
  MEMORY[0x28223BE20](v31);
  v61 = &v52 - v34;

  v35 = v72;
  v72 = a2;
  v36 = sub_26D1D4DC0(v35, a2);
  if (v36 <= 2u)
  {
    if (v36)
    {
      if (v36 == 1)
      {
        v70 = v67;
        v71 = v68;

        sub_26D22CAB4();
        sub_26D1B1F48();
        sub_26D22E6B4();

        (*(v65 + 8))(v14, v66);

        v37 = v58;
        v38 = v69;
        result = sub_26D22D0F4();
        if (v38)
        {
          return result;
        }

        (*(v54 + 32))(v30, v37, v55);
        v40 = MEMORY[0x277CF1E68];
        v21 = v30;
      }

      else
      {
        v70 = v67;
        v71 = v68;

        sub_26D22CAB4();
        sub_26D1B1F48();
        sub_26D22E6B4();

        (*(v65 + 8))(v14, v66);

        v45 = v59;
        v46 = v69;
        result = sub_26D22D0D4();
        if (v46)
        {
          return result;
        }

        (*(v56 + 32))(v27, v45, v57);
        v40 = MEMORY[0x277CF1E60];
        v21 = v27;
      }
    }

    else
    {
      v70 = v67;
      v71 = v68;

      sub_26D22CAB4();
      sub_26D1B1F48();
      sub_26D22E6B4();

      (*(v65 + 8))(v14, v66);

      v42 = v69;
      result = sub_26D22D114();
      if (v42)
      {
        return result;
      }

      (*(v53 + 32))(v33, v17, v15);
      v40 = MEMORY[0x277CF1E70];
      v21 = v33;
    }

    goto LABEL_16;
  }

  if (v36 == 3)
  {
    v70 = v67;
    v71 = v68;

    sub_26D22CAB4();
    sub_26D1B1F48();
    sub_26D22E6B4();

    (*(v65 + 8))(v14, v66);

    v43 = v60;
    v44 = v69;
    result = sub_26D22D0D4();
    if (v44)
    {
      return result;
    }

    (*(v56 + 32))(v24, v43, v57);
    v40 = MEMORY[0x277CF1E60];
    v21 = v24;
    goto LABEL_16;
  }

  if (v36 == 4)
  {
    v41 = v69;
    result = sub_26D1D22FC(v36, v72, v67, v68);
    if (v41)
    {
      return result;
    }

    v40 = MEMORY[0x277CF1E98];
LABEL_16:
    v48 = v62;
    v47 = v63;
    (*(v62 + 104))(v21, *v40, v63);
    v49 = *(v48 + 32);
    v50 = v61;
    v49(v61, v21, v47);
    v51 = v64;
    v49(v64, v50, v47);
    return (*(v48 + 56))(v51, 0, 1, v47);
  }

  return (*(v62 + 56))(v64, 1, 1, v63);
}

unsigned __int8 *sub_26D1D22FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26D22CAD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a3;
  v44 = a4;

  sub_26D22CAB4();
  sub_26D1B1F48();
  v10 = sub_26D22E6B4();
  v12 = v11;

  (*(v7 + 8))(v9, v6);

  v14 = HIBYTE(v12) & 0xF;
  v15 = v10 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v16 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_64;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    v45 = 0;
    sub_26D1B9900(v10, v12, 10);
    v41 = v42;
    goto LABEL_63;
  }

  if ((v12 & 0x2000000000000000) != 0)
  {
    v43 = v10;
    v44 = v12 & 0xFFFFFFFFFFFFFFLL;
    if (v10 == 43)
    {
      if (v14)
      {
        if (--v14)
        {
          v30 = 0;
          v31 = &v43 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              break;
            }

            v30 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v14)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_72:
      __break(1u);
      return result;
    }

    if (v10 != 45)
    {
      if (v14)
      {
        v37 = 0;
        v38 = &v43;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v37;
          if ((v37 * 10) >> 64 != (10 * v37) >> 63)
          {
            break;
          }

          v37 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          v38 = (v38 + 1);
          if (!--v14)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v14)
    {
      if (--v14)
      {
        v22 = 0;
        v23 = &v43 + 1;
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
          if (!--v14)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {
    result = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_26D22E7A4();
  }

  v17 = *result;
  if (v17 == 43)
  {
    if (v15 < 1)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v14 = v15 - 1;
    if (v15 != 1)
    {
      v26 = 0;
      if (result)
      {
        v27 = result + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            goto LABEL_61;
          }

          v29 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            goto LABEL_61;
          }

          v26 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            goto LABEL_61;
          }

          ++v27;
          if (!--v14)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_53;
    }

LABEL_61:
    LOBYTE(v14) = 1;
    goto LABEL_62;
  }

  if (v17 != 45)
  {
    if (v15)
    {
      v34 = 0;
      if (result)
      {
        while (1)
        {
          v35 = *result - 48;
          if (v35 > 9)
          {
            goto LABEL_61;
          }

          v36 = 10 * v34;
          if ((v34 * 10) >> 64 != (10 * v34) >> 63)
          {
            goto LABEL_61;
          }

          v34 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            goto LABEL_61;
          }

          ++result;
          if (!--v15)
          {
            goto LABEL_53;
          }
        }
      }

      goto LABEL_53;
    }

    goto LABEL_61;
  }

  if (v15 < 1)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v14 = v15 - 1;
  if (v15 == 1)
  {
    goto LABEL_61;
  }

  v18 = 0;
  if (result)
  {
    v19 = result + 1;
    while (1)
    {
      v20 = *v19 - 48;
      if (v20 > 9)
      {
        goto LABEL_61;
      }

      v21 = 10 * v18;
      if ((v18 * 10) >> 64 != (10 * v18) >> 63)
      {
        goto LABEL_61;
      }

      v18 = v21 - v20;
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_61;
      }

      ++v19;
      if (!--v14)
      {
        goto LABEL_62;
      }
    }
  }

LABEL_53:
  LOBYTE(v14) = 0;
LABEL_62:
  v45 = v14;
  v41 = v14;
LABEL_63:

  if (v41)
  {
LABEL_64:
    sub_26D1D77F4();
    swift_allocError();
    return swift_willThrow();
  }

  return sub_26D22CFE4();
}

void sub_26D1D2738(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v127 = a2;
  v128 = a3;
  v119 = a4;
  v126 = type metadata accessor for CPIMMessageUnpacker.Error(0);
  v5 = MEMORY[0x28223BE20](v126);
  v123 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v125 = &v102 - v7;
  v8 = sub_26D22DA84();
  v114 = *(v8 - 8);
  v115 = v8;
  MEMORY[0x28223BE20](v8);
  v113 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D22DAC4();
  v116 = *(v10 - 8);
  v117 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v111 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = &v102 - v13;
  v120 = sub_26D22D094();
  v118 = *(v120 - 8);
  v14 = MEMORY[0x28223BE20](v120);
  v103 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v104 = &v102 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v105 = &v102 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v106 = &v102 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v107 = &v102 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v108 = &v102 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v109 = &v102 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v110 = &v102 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v102 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v102 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v102 - v36;
  v38 = sub_26D22E404();
  MEMORY[0x28223BE20](v38 - 8);
  v39 = sub_26D22D064();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v102 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v40 + 16);
  v130 = a1;
  v121 = v43;
  v122 = v40 + 16;
  v43(v42, a1, v39);
  v44 = *(v40 + 88);
  v129 = v39;
  v45 = v44(v42, v39);
  if (v45 == *MEMORY[0x277CF1D18])
  {
    sub_26D22E3F4();
    v46 = v127;
    v47 = v128;
    sub_26D22E3E4();
    if (v48)
    {

      v49 = v124;
      sub_26D1B3EB4(v46, v47);
      v50 = v49;
      v51 = v130;
      v52 = v40;
      if (v49)
      {
LABEL_4:
        v53 = v125;
        goto LABEL_12;
      }

      (*(v40 + 8))(v130, v129);
      sub_26D1BCB9C(v46, v47);
      v73 = MEMORY[0x277CF1DF0];
LABEL_24:
      v74 = v118;
      v75 = v120;
      (*(v118 + 104))(v37, *v73, v120);
      (*(v74 + 32))(v119, v37, v75);
      return;
    }

    goto LABEL_9;
  }

  v46 = v127;
  v54 = v128;
  if (v45 == *MEMORY[0x277CF1CE8])
  {
    sub_26D22E3F4();
    v47 = v54;
    sub_26D22E3E4();
    if (v55)
    {

      v56 = v124;
      sub_26D1B3154(v46, v54);
      v50 = v56;
      v51 = v130;
      if (!v56)
      {
        (*(v40 + 8))(v130, v129);
        sub_26D1BCB9C(v46, v54);
        v57 = v118;
        v58 = v120;
        (*(v118 + 104))(v35, *MEMORY[0x277CF1D98], v120);
        (*(v57 + 32))(v119, v35, v58);
        return;
      }

      goto LABEL_10;
    }

LABEL_9:
    sub_26D1D75C0();
    v50 = swift_allocError();
    swift_willThrow();
    v51 = v130;
LABEL_10:
    v52 = v40;
LABEL_11:
    v53 = v125;
    goto LABEL_12;
  }

  if (v45 == *MEMORY[0x277CF1D00])
  {
    sub_26D22E3F4();
    v47 = v54;
    sub_26D22E3E4();
    v52 = v40;
    if (v67)
    {

      (*(v114 + 104))(v113, *MEMORY[0x277CF2AB8], v115);
      v68 = v112;
      sub_26D22DA94();
      v69 = v124;
      ChatbotRootMessageUnpacker.unpack(from:with:)(v46, v54, v32);
      v50 = v69;
      v53 = v125;
      if (!v69)
      {
        sub_26D1BCB9C(v46, v54);
        (*(v40 + 8))(v130, v129);
        (*(v116 + 8))(v68, v117);
        v86 = v118;
        v87 = v120;
        (*(v118 + 104))(v32, *MEMORY[0x277CF1DC8], v120);
        (*(v86 + 32))(v119, v32, v87);
        return;
      }

      (*(v116 + 8))(v68, v117);
      v51 = v130;
      goto LABEL_12;
    }

    sub_26D1D75C0();
    v50 = swift_allocError();
    swift_willThrow();
    v51 = v130;
    goto LABEL_4;
  }

  v52 = v40;
  if (v45 == *MEMORY[0x277CF1CE0])
  {
    sub_26D22E3F4();
    v47 = v54;
    sub_26D22E3E4();
    v51 = v130;
    v53 = v125;
    if (v70)
    {

      (*(v114 + 104))(v113, *MEMORY[0x277CF2AB8], v115);
      v71 = v111;
      sub_26D22DA94();
      v37 = v110;
      v72 = v124;
      ChatbotRootMessageUnpacker.unpack(from:with:)(v46, v47, v110);
      v50 = v72;
      if (!v72)
      {
        sub_26D1BCB9C(v46, v47);
        (*(v40 + 8))(v51, v129);
        (*(v116 + 8))(v71, v117);
        v73 = MEMORY[0x277CF1D80];
        goto LABEL_24;
      }

      (*(v116 + 8))(v71, v117);
      goto LABEL_12;
    }

LABEL_39:
    sub_26D1D75C0();
    v50 = swift_allocError();
    swift_willThrow();
    goto LABEL_12;
  }

  v51 = v130;
  v53 = v125;
  if (v45 == *MEMORY[0x277CF1CF0])
  {
    sub_26D22E3F4();
    v76 = v46;
    v47 = v54;
    sub_26D22E3E4();
    if (v77)
    {

      v78 = v109;
      v79 = v124;
      sub_26D1B4668(v109);
      v50 = v79;
      if (!v79)
      {
        (*(v52 + 8))(v51, v129);
        sub_26D1BCB9C(v76, v54);
        v92 = v118;
        v93 = v120;
        (*(v118 + 104))(v78, *MEMORY[0x277CF1DA8], v120);
        (*(v92 + 32))(v119, v78, v93);
        return;
      }

      v46 = v76;
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  if (v45 == *MEMORY[0x277CF1D38])
  {
    sub_26D22E3F4();
    v47 = v54;
    v80 = sub_26D22E3E4();
    if (v81)
    {
      v82 = v80;
      v83 = v81;
      (*(v52 + 8))(v51, v129);
      sub_26D1BCB9C(v46, v54);
      v85 = v118;
      v84 = v119;
      *v119 = v82;
      v84[1] = v83;
      (*(v85 + 104))();
      return;
    }

    goto LABEL_39;
  }

  if (v45 == *MEMORY[0x277CF1D30])
  {
    sub_26D22E3F4();
    v47 = v54;
    sub_26D22E3E4();
    if (!v88)
    {
      goto LABEL_39;
    }

    v37 = v108;
    v89 = v124;
    sub_26D1B4D68(v108);
    v50 = v89;
    if (!v89)
    {
      (*(v40 + 8))(v51, v129);
      sub_26D1BCB9C(v46, v47);
      v73 = MEMORY[0x277CF1E00];
      goto LABEL_24;
    }
  }

  else
  {
    if (v45 == *MEMORY[0x277CF1D28])
    {
      sub_26D22E3F4();
      v47 = v54;
      sub_26D22E3E4();
      if (v90)
      {

        v37 = v107;
        v91 = v124;
        sub_26D1B546C(v107);
        v50 = v91;
        if (!v91)
        {
          (*(v40 + 8))(v51, v129);
          sub_26D1BCB9C(v46, v47);
          v73 = MEMORY[0x277CF1E20];
          goto LABEL_24;
        }

        goto LABEL_12;
      }

      goto LABEL_39;
    }

    if (v45 == *MEMORY[0x277CF1D08])
    {
      sub_26D22E3F4();
      v47 = v54;
      sub_26D22E3E4();
      if (v94)
      {

        v37 = v106;
        v95 = v124;
        sub_26D1B2A4C(v106);
        v50 = v95;
        if (!v95)
        {
          (*(v40 + 8))(v51, v129);
          sub_26D1BCB9C(v46, v47);
          v73 = MEMORY[0x277CF1DD8];
          goto LABEL_24;
        }

        goto LABEL_12;
      }

      goto LABEL_39;
    }

    if (v45 == *MEMORY[0x277CF1D20])
    {
      v47 = v128;
      sub_26D1BCB48(v127, v128);
      v37 = v105;
      v96 = v124;
      sub_26D22D274();
      v50 = v96;
      if (!v96)
      {
        (*(v40 + 8))(v51, v129);
        sub_26D1BCB9C(v46, v47);
        v73 = MEMORY[0x277CF1E10];
        goto LABEL_24;
      }
    }

    else
    {
      v97 = v124;
      if (v45 == *MEMORY[0x277CF1CF8])
      {
        v47 = v128;
        sub_26D1BCB48(v127, v128);
        v37 = v104;
        sub_26D22D544();
        v50 = v97;
        if (!v97)
        {
          (*(v52 + 8))(v51, v129);
          sub_26D1BCB9C(v46, v47);
          v73 = MEMORY[0x277CF1DB0];
          goto LABEL_24;
        }
      }

      else
      {
        if (v45 != *MEMORY[0x277CF1D10])
        {
          sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
          v50 = swift_allocError();
          v99 = v98;
          v100 = sub_26D22D054();
          *v99 = v120;
          v99[1] = v100;
          v99[2] = v101;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v52 + 8))(v42, v129);
          v47 = v54;
          goto LABEL_11;
        }

        v47 = v128;
        sub_26D1BCB48(v127, v128);
        v37 = v103;
        sub_26D22D2C4();
        v50 = v97;
        if (!v97)
        {
          (*(v52 + 8))(v51, v129);
          sub_26D1BCB9C(v46, v47);
          v73 = MEMORY[0x277CF1DE0];
          goto LABEL_24;
        }
      }
    }
  }

LABEL_12:
  v131 = v50;
  v59 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    v60 = v123;
    sub_26D1CD52C(v53, v123);
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
    swift_allocError();
    sub_26D1CD590(v60, v61);
    swift_willThrow();
    sub_26D1BCB9C(v46, v47);
    (*(v52 + 8))(v51, v129);
    sub_26D1CD5F4(v60);
  }

  else
  {

    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
    swift_allocError();
    v63 = v62;
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09E0, &unk_26D2306B0) + 48);
    v65 = v51;
    v66 = v129;
    v121(v63, v65, v129);
    *(v63 + v64) = v50;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_26D1BCB9C(v46, v47);
    (*(v52 + 8))(v130, v66);
  }
}

uint64_t sub_26D1D37D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v158 = a2;
  v157 = a3;
  v148 = a4;
  v167 = *MEMORY[0x277D85DE8];
  v5 = sub_26D22D094();
  MEMORY[0x28223BE20](v5 - 8);
  v143 = (&v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_26D22D0A4();
  v147 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v141 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_26D22D074();
  v150 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v137 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0998, &qword_26D230688);
  v151 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v138 = &v133 - v10;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09A0, &qword_26D230690);
  MEMORY[0x28223BE20](v139);
  v140 = &v133 - v11;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09A8, &qword_26D230698);
  MEMORY[0x28223BE20](v144);
  v13 = &v133 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09B0, &qword_26D2306A0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v142 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v149 = &v133 - v18;
  MEMORY[0x28223BE20](v17);
  v154 = &v133 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09B8, &qword_26D2306A8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v133 - v21;
  v155 = sub_26D22D064();
  v153 = *(v155 - 8);
  v23 = MEMORY[0x28223BE20](v155);
  v25 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v146 = &v133 - v27;
  MEMORY[0x28223BE20](v26);
  v156 = &v133 - v28;
  v29 = sub_26D22CAD4();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v133 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v33 = sub_26D1E30E4(0), (v34 & 1) == 0))
  {
    type metadata accessor for CPIMMessageUnpacker.Error(0);
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
    v57 = swift_allocError();
    *v58 = v7;
    v58[1] = 0xD00000000000001DLL;
    v58[2] = 0x800000026D23B3C0;
    swift_storeEnumTagMultiPayload();
    v159 = v57;
    swift_willThrow();

    return sub_26D1BCB9C(v158, v157);
  }

  v135 = v7;
  v35 = (*(a1 + 56) + 16 * v33);
  v37 = *v35;
  v36 = v35[1];

  sub_26D1D4974(59, 0xE100000000000000, v37, v36);
  v136 = a1;
  v134 = v25;
  if ((v38 & 1) == 0)
  {
    v39 = sub_26D22E534();
    v41 = v40;
    v43 = v42;
    v133 = v13;
    v45 = v44;

    v162 = v39;
    v163 = v41;
    v164 = v43;
    v165 = v45;
    a1 = v136;
    sub_26D22CAB4();
    sub_26D1D756C();
    v37 = sub_26D22E6B4();
    v36 = v46;
    (*(v30 + 8))(v32, v29);
    v13 = v133;
  }

  v47 = v156;
  sub_26D1CF24C(v37, v36, v22);
  v48 = v153;
  v49 = v155;
  v50 = (*(v153 + 48))(v22, 1, v155);
  v51 = v152;
  if (v50 == 1)
  {

    sub_26D1BCB9C(v158, v157);
    sub_26D1B950C(v22, &qword_2804E09B8, &qword_26D2306A8);
    v52 = 1;
    v53 = v135;
    v54 = v148;
    v55 = v147;
    return (*(v55 + 56))(v54, v52, 1, v53);
  }

  (*(v48 + 32))(v47, v22, v49);
  if (*(a1 + 16))
  {
    v59 = 1;
    v60 = sub_26D1E30E4(1);
    v61 = v151;
    if (v62)
    {
      v63 = (*(v136 + 56) + 16 * v60);
      v65 = *v63;
      v64 = v63[1];

      sub_26D1CF5F8(v65, v64, v154);
      v59 = 0;
    }
  }

  else
  {
    v59 = 1;
    v61 = v151;
  }

  v66 = *(v61 + 56);
  v67 = v154;
  v68 = v145;
  v66(v154, v59, 1, v145);
  v70 = v149;
  v69 = v150;
  (*(v150 + 104))(v149, *MEMORY[0x277CF1D58], v51);
  (*(v69 + 56))(v70, 0, 1, v51);
  v66(v70, 0, 1, v68);
  v71 = *(v144 + 48);
  v72 = v67;
  v73 = v151;
  sub_26D1D7738(v72, v13, &qword_2804E09B0, &qword_26D2306A0);
  sub_26D1D7738(v70, &v13[v71], &qword_2804E09B0, &qword_26D2306A0);
  v74 = *(v73 + 48);
  if (v74(v13, 1, v68) == 1)
  {
    sub_26D1B950C(v70, &qword_2804E09B0, &qword_26D2306A0);
    v75 = v74(&v13[v71], 1, v68);
    v76 = v146;
    v77 = v48;
    if (v75 == 1)
    {
LABEL_15:
      sub_26D1B950C(v13, &qword_2804E09B0, &qword_26D2306A0);
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v84 = v142;
  sub_26D1D7738(v13, v142, &qword_2804E09B0, &qword_26D2306A0);
  v77 = v48;
  if (v74(&v13[v71], 1, v68) == 1)
  {
    sub_26D1B950C(v70, &qword_2804E09B0, &qword_26D2306A0);
    sub_26D1B950C(v84, &qword_2804E0998, &qword_26D230688);
    v76 = v146;
LABEL_21:
    sub_26D1B950C(v13, &qword_2804E09A8, &qword_26D230698);
LABEL_22:
    v85 = v155;
    v86 = v157;
    v87 = v158;
    sub_26D1BCB48(v158, v157);
    goto LABEL_57;
  }

  v88 = *(v139 + 48);
  v89 = v84;
  v90 = v140;
  sub_26D1D76D0(v89, v140, &qword_2804E0998, &qword_26D230688);
  sub_26D1D76D0(&v13[v71], v90 + v88, &qword_2804E0998, &qword_26D230688);
  v91 = *(v150 + 48);
  if (v91(v90, 1, v51) == 1)
  {
    sub_26D1B950C(v149, &qword_2804E09B0, &qword_26D2306A0);
    v92 = v91(v90 + v88, 1, v51);
    v76 = v146;
    if (v92 == 1)
    {
      sub_26D1B950C(v90, &qword_2804E0998, &qword_26D230688);
      goto LABEL_15;
    }

    goto LABEL_40;
  }

  v104 = v138;
  sub_26D1D7738(v90, v138, &qword_2804E0998, &qword_26D230688);
  if (v91(v90 + v88, 1, v51) == 1)
  {
    sub_26D1B950C(v149, &qword_2804E09B0, &qword_26D2306A0);
    (*(v150 + 8))(v104, v51);
    v76 = v146;
LABEL_40:
    sub_26D1B950C(v90, &qword_2804E09A0, &qword_26D230690);
    sub_26D1B950C(v13, &qword_2804E09B0, &qword_26D2306A0);
    v77 = v48;
    goto LABEL_22;
  }

  v129 = v150;
  v130 = v137;
  (*(v150 + 32))(v137, v90 + v88, v51);
  sub_26D1D7614(&qword_2804E09C0, MEMORY[0x277CF1D60], MEMORY[0x277CF1D68]);
  v131 = sub_26D22E3A4();
  v132 = *(v129 + 8);
  v132(v130, v51);
  sub_26D1B950C(v149, &qword_2804E09B0, &qword_26D2306A0);
  v132(v104, v51);
  sub_26D1B950C(v90, &qword_2804E0998, &qword_26D230688);
  sub_26D1B950C(v13, &qword_2804E09B0, &qword_26D2306A0);
  v76 = v146;
  v77 = v48;
  if ((v131 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_16:
  v165 = MEMORY[0x277CC9318];
  v166 = MEMORY[0x277CC9300];
  v162 = v158;
  v163 = v157;
  v78 = __swift_project_boxed_opaque_existential_1(&v162, MEMORY[0x277CC9318]);
  v79 = *v78;
  v80 = v78[1];
  v81 = v80 >> 62;
  if ((v80 >> 62) > 1)
  {
    if (v81 != 2)
    {
      memset(v160, 0, 14);
      sub_26D1BCB48(v158, v157);
      v82 = v160;
      v83 = v160;
      goto LABEL_53;
    }

    v93 = *(v79 + 16);
    v94 = *(v79 + 24);
    sub_26D1BCB48(v158, v157);
    v95 = sub_26D22CBB4();
    if (v95)
    {
      v96 = sub_26D22CBE4();
      if (__OFSUB__(v93, v96))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v95 += v93 - v96;
    }

    v97 = __OFSUB__(v94, v93);
    v98 = v94 - v93;
    if (!v97)
    {
      v99 = sub_26D22CBD4();
      if (v99 >= v98)
      {
        v100 = v98;
      }

      else
      {
        v100 = v99;
      }

      v101 = &v95[v100];
      if (v95)
      {
        v102 = v101;
      }

      else
      {
        v102 = 0;
      }

      v103 = v159;
      sub_26D21DA50(v95, v102, v161);
      v159 = v103;
      v77 = v153;
      goto LABEL_54;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v81)
  {
    v105 = v79;
    v106 = v79 >> 32;
    v107 = v106 - v105;
    if (v106 >= v105)
    {
      sub_26D1BCB48(v158, v157);
      v108 = sub_26D22CBB4();
      if (!v108)
      {
LABEL_45:
        v77 = v153;
        v110 = sub_26D22CBD4();
        if (v110 >= v107)
        {
          v111 = v107;
        }

        else
        {
          v111 = v110;
        }

        v112 = (v111 + v108);
        if (v108)
        {
          v83 = v112;
        }

        else
        {
          v83 = 0;
        }

        v82 = v108;
        goto LABEL_53;
      }

      v109 = sub_26D22CBE4();
      if (!__OFSUB__(v105, v109))
      {
        v108 += v105 - v109;
        goto LABEL_45;
      }

LABEL_65:
      __break(1u);
    }

    __break(1u);
    goto LABEL_63;
  }

  v160[0] = *v78;
  LOWORD(v160[1]) = v80;
  BYTE2(v160[1]) = BYTE2(v80);
  BYTE3(v160[1]) = BYTE3(v80);
  BYTE4(v160[1]) = BYTE4(v80);
  BYTE5(v160[1]) = BYTE5(v80);
  sub_26D1BCB48(v158, v157);
  v82 = v160;
  v83 = v160 + BYTE6(v80);
LABEL_53:
  v113 = v159;
  sub_26D21DA50(v82, v83, v161);
  v159 = v113;
LABEL_54:
  v114 = v161[0];
  v115 = v161[1];
  __swift_destroy_boxed_opaque_existential_1(&v162);
  v87 = sub_26D22CD04();
  v86 = v116;
  sub_26D1BCB9C(v114, v115);
  if (v86 >> 60 == 15)
  {
    type metadata accessor for CPIMMessageUnpacker.Error(0);
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
    v117 = swift_allocError();
    *v118 = v135;
    v118[1] = 0xD00000000000002CLL;
    v118[2] = 0x800000026D23B4A0;
    swift_storeEnumTagMultiPayload();
    v159 = v117;
    swift_willThrow();

    sub_26D1BCB9C(v158, v157);
    sub_26D1B950C(v154, &qword_2804E09B0, &qword_26D2306A0);
    return (*(v77 + 8))(v156, v155);
  }

  v85 = v155;
LABEL_57:
  v119 = *(v77 + 16);
  v120 = v77;
  v121 = v156;
  v122 = v85;
  v119(v76, v156, v85);
  v123 = v134;
  v119(v134, v121, v122);
  sub_26D1BCB48(v87, v86);
  v124 = v159;
  sub_26D1D2738(v123, v87, v86, v143);
  v159 = v124;
  if (!v124)
  {
    v126 = v141;
    sub_26D22D084();
    v159 = 0;

    sub_26D1BCB9C(v158, v157);
    sub_26D1BCB9C(v87, v86);
    sub_26D1B950C(v154, &qword_2804E09B0, &qword_26D2306A0);
    (*(v120 + 8))(v156, v122);
    v55 = v147;
    v127 = v148;
    v128 = v135;
    (*(v147 + 32))(v148, v126, v135);
    v54 = v127;
    v53 = v128;
    v52 = 0;
    return (*(v55 + 56))(v54, v52, 1, v53);
  }

  sub_26D1BCB9C(v158, v157);
  sub_26D1BCB9C(v87, v86);
  v125 = *(v120 + 8);
  v125(v76, v122);
  sub_26D1B950C(v154, &qword_2804E09B0, &qword_26D2306A0);
  return (v125)(v121, v122);
}

unint64_t sub_26D1D4974(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_26D22E514() != a1 || v9 != a2)
  {
    v10 = sub_26D22E964();

    if (v10)
    {
      return v8;
    }

    v8 = sub_26D22E474();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_26D1D4A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_26D1BDEEC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26D203870();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_26D22D1D4();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_26D1D4BD4(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_26D22D1D4();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_26D1D4BD4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26D22E714() + 1) & ~v5;
    while (1)
    {
      sub_26D22E9E4();

      sub_26D22E454();
      v9 = sub_26D22EA04();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_26D22D1D4() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26D1D4DC0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1D4E0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26D1D4E58(unint64_t a1, unint64_t a2, char *a3, uint64_t a4)
{
  v7 = sub_26D22CAD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = 58;
  *(&v23 + 1) = 0xE100000000000000;
  v22 = &v23;
  v11 = sub_26D1ED4A0(1, 1, sub_26D1D7848, v21, a1, a2, a3, &v23);
  if (*(v11 + 2) == 2)
  {
    v12 = *(v11 + 6);
    v13 = *(v11 + 7);
    v23 = *(v11 + 2);
    v24 = v12;
    v25 = v13;
    v14 = v11;

    sub_26D22CAB4();
    sub_26D1D756C();
    v20 = sub_26D22E6B4();
    v15 = *(v8 + 8);
    v15(v10, v7);

    if (*(v14 + 2) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v19 = *(v14 + 4);
      v17 = *(v14 + 10);
      v18 = *(v14 + 11);

      v23 = v19;
      v24 = v17;
      v25 = v18;
      sub_26D22CAB4();
      sub_26D22E6B4();
      v15(v10, v7);

      return v20;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

unint64_t sub_26D1D5088(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

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
  result = sub_26D22E484();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_26D22E534();
}

char *sub_26D1D5138(uint64_t a1, unint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A78, &qword_26D230710);
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A80, &qword_26D230718);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A88, &qword_26D230720);
  v19 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v17[0] = v17 - v8;
  if (qword_2804E0468 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_2804E0910);
  sub_26D22E534();
  sub_26D1D7A6C(&qword_2804E0A90, &qword_2804E0A78, &qword_26D230710, MEMORY[0x277D85AC0]);
  sub_26D22CEA4();
  v9 = v17[1];
  sub_26D22CEC4();
  if (v9)
  {

    (*(v18 + 8))(v4, v2);
    (*(v19 + 56))(v7, 1, 1, v24);
LABEL_6:
    sub_26D1B950C(v7, &qword_2804E0A80, &qword_26D230718);
    type metadata accessor for CPIMMessageUnpacker.Error(0);
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
    swift_allocError();
    *v12 = &type metadata for CPIMMessageUnpacker.RawHeader;
    strcpy((v12 + 8), "Bad URI format");
    *(v12 + 23) = -18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v7;
  }

  (*(v18 + 8))(v4, v2);

  v10 = v19;
  v11 = v24;
  if ((*(v19 + 48))(v7, 1, v24) == 1)
  {
    goto LABEL_6;
  }

  v14 = v17[0];
  (*(v10 + 32))(v17[0], v7, v11);
  swift_getKeyPath();
  sub_26D22CEE4();

  v15 = v23;
  if (v23 || (swift_getKeyPath(), sub_26D22CEE4(), , (v15 = v23) != 0))
  {
    v7 = MEMORY[0x26D6B6C10](v20, v21, v22, v15);

    (*(v10 + 8))(v14, v11);
  }

  else
  {
    type metadata accessor for CPIMMessageUnpacker.Error(0);
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
    swift_allocError();
    *v16 = &type metadata for CPIMMessageUnpacker.RawHeader;
    v16[1] = 0xD000000000000011;
    v16[2] = 0x800000026D23B4D0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v10 + 8))(v14, v11);
  }

  return v7;
}

char *sub_26D1D56B8(uint64_t a1, uint64_t a2)
{
  v17[0] = a1;
  v17[1] = a2;
  sub_26D1D765C();
  v16 = sub_26D22E5D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A10, &unk_26D2306C0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A18, &unk_26D234350);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26D230530;
  v6 = (v5 + v4);
  v7 = *(v2 + 48);
  *v6 = 1852075369;
  *(v6 + 1) = 0xE400000000000000;
  v8 = *MEMORY[0x277CF1EE0];
  v9 = sub_26D22D1D4();
  v10 = *(*(v9 - 8) + 104);
  v10(&v6[v7], v8, v9);
  v11 = &v6[v3];
  v12 = *(v2 + 48);
  *v11 = 7562098;
  *(v11 + 1) = 0xE300000000000000;
  v10(&v6[v3 + v12], *MEMORY[0x277CF1ED8], v9);
  v13 = sub_26D203C5C(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v17[0] = v13;
  v14 = sub_26D1CC9C0(v16, v17);

  return v14;
}

unint64_t sub_26D1D58F8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v7 = *(result + 40);
  v8 = *(result + 48);
  v9 = *(result + 32);
  v10 = *a3;

  result = sub_26D1E30E4(v9);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_26D1E3A80(v15, i & 1);
    result = sub_26D1E30E4(v9);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_26D22E984();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + result) = v9;
    v25 = (v18[7] + 16 * result);
    *v25 = v7;
    v25[1] = v8;
    v26 = v18[2];
    v14 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v27;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v24 = result;
  sub_26D203708();
  result = v24;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = 16 * result;
  v20 = (v18[7] + 16 * result);
  v22 = *v20;
  v21 = v20[1];

  v23 = (v18[7] + v19);
  *v23 = v22;
  v23[1] = v21;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 72); ; i += 3)
    {
      v7 = *(i - 1);
      v6 = *i;
      v8 = *(i - 16);
      v33 = *a3;

      result = sub_26D1E30E4(v8);
      v35 = v33[2];
      v36 = (v34 & 1) == 0;
      v14 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v14)
      {
        break;
      }

      v9 = v34;
      if (v33[3] < v37)
      {
        sub_26D1E3A80(v37, 1);
        result = sub_26D1E30E4(v8);
        if ((v9 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v9)
      {
        v28 = 16 * result;
        v29 = (v3[7] + 16 * result);
        v31 = *v29;
        v30 = v29[1];

        v32 = (v3[7] + v28);
        *v32 = v31;
        v32[1] = v30;
      }

      else
      {
        v3[(result >> 6) + 8] |= 1 << result;
        *(v3[6] + result) = v8;
        v39 = (v3[7] + 16 * result);
        *v39 = v7;
        v39[1] = v6;
        v40 = v3[2];
        v14 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v3[2] = v41;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t sub_26D1D5B80(uint64_t a1, unint64_t a2)
{
  v4 = sub_26D22CAD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataParser();
  inited = swift_initStackObject();
  v9 = 0;
  v89 = a1;
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  v10 = a2 >> 62;
  v90 = v7;
  if ((a2 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v11 = inited;
      v12 = v89;
      v9 = *(v89 + 16);
      v13 = *(v89 + 24);
LABEL_6:
      sub_26D1BCB48(v12, a2);
      inited = v11;
      if (v13 < v9)
      {
        goto LABEL_66;
      }
    }
  }

  else if (v10)
  {
    v11 = inited;
    v12 = v89;
    v9 = v89;
    v13 = v89 >> 32;
    goto LABEL_6;
  }

  v88 = a2;
  *(inited + 32) = v9;
  if (qword_2804E0458 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v14 = qword_2804E08E8;
    v15 = unk_2804E08F0;
    v16 = inited;
    v17 = sub_26D1D7B6C();
    if ((v19 & 1) != 0 || (v20 = sub_26D1BE908(v14, v15, v17, v18, 0, v16[2], v16[3]), !v21))
    {
      type metadata accessor for CPIMMessageUnpacker.Error(0);
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
      swift_allocError();
      *v71 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMessage;
      strcpy((v71 + 8), "Header section");
      *(v71 + 23) = -18;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26D1BCB9C(v89, v88);
      swift_setDeallocating();
      sub_26D1BCB9C(v16[2], v16[3]);
      return v14;
    }

    v84 = v16;
    v16[4] = v22;
    *&v99 = v20;
    *(&v99 + 1) = v21;
    v102 = 2573;
    v103 = 0xE200000000000000;
    sub_26D1D765C();
    v23 = sub_26D22E5D4();

    inited = v23;
    v24 = *(v23 + 16);
    if (!v24)
    {
      break;
    }

    v25 = 0;
    v26 = v23 + 32;
    v87 = (v5 + 8);
    v85 = MEMORY[0x277D84F90];
    v95 = v23;
    v96 = v4;
    v93 = v23 + 32;
    v94 = v24;
    while (v25 < *(inited + 16))
    {
      v27 = (v26 + 32 * v25);
      v28 = *v27;
      v5 = v27[1];
      ++v25;
      v29 = v5 >> 14;
      if (v5 >> 14 == *v27 >> 14)
      {
LABEL_14:
        if (v25 == v24)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v97 = v25;
        inited = swift_bridgeObjectRetain_n();
        v30 = v28;
        v31 = MEMORY[0x277D84F90];
        do
        {
          v32 = v30 >> 14;
          if (v30 >> 14 == v29)
          {
            break;
          }

          v98 = v31;
          while (1)
          {
            v104 = v30;
            while (sub_26D22E684() != 58 || v33 != 0xE100000000000000)
            {
              v34 = sub_26D22E964();

              if (v34)
              {
                goto LABEL_27;
              }

              inited = sub_26D22E664();
              v32 = inited >> 14;
              if (inited >> 14 == v29)
              {
                v4 = v96;
                v31 = v98;
                v30 = v104;
                goto LABEL_36;
              }
            }

LABEL_27:
            if (v104 >> 14 != v32)
            {
              break;
            }

            inited = sub_26D22E664();
            v30 = inited;
            v32 = inited >> 14;
            if (inited >> 14 == v29)
            {
              v4 = v96;
              v31 = v98;
              goto LABEL_36;
            }
          }

          if (v32 < v104 >> 14)
          {
            __break(1u);
            goto LABEL_69;
          }

          v104 = sub_26D22E694();
          v92 = v35;
          *&v91 = v36;
          v83 = v37;
          v31 = v98;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_26D22BBBC(0, *(v31 + 2) + 1, 1, v31);
          }

          v39 = *(v31 + 2);
          v38 = *(v31 + 3);
          if (v39 >= v38 >> 1)
          {
            v31 = sub_26D22BBBC((v38 > 1), v39 + 1, 1, v31);
          }

          *(v31 + 2) = v39 + 1;
          v40 = &v31[32 * v39];
          v41 = v92;
          *(v40 + 4) = v104;
          *(v40 + 5) = v41;
          v42 = v83;
          *(v40 + 6) = v91;
          *(v40 + 7) = v42;
          inited = sub_26D22E664();
          v30 = inited;
          v4 = v96;
        }

        while (*(v31 + 2) != 1);
LABEL_36:
        if (v30 >> 14 == v29)
        {

          if (*(v31 + 2) != 2)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (v29 < v30 >> 14)
          {
            goto LABEL_64;
          }

          v5 = sub_26D22E694();
          v44 = v43;
          v46 = v45;
          v48 = v47;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_26D22BBBC(0, *(v31 + 2) + 1, 1, v31);
          }

          v50 = *(v31 + 2);
          v49 = *(v31 + 3);
          if (v50 >= v49 >> 1)
          {
            v31 = sub_26D22BBBC((v49 > 1), v50 + 1, 1, v31);
          }

          *(v31 + 2) = v50 + 1;
          v51 = &v31[32 * v50];
          *(v51 + 4) = v5;
          *(v51 + 5) = v44;
          *(v51 + 6) = v46;
          *(v51 + 7) = v48;
          if (v50 != 1)
          {
LABEL_12:

LABEL_13:

            v24 = v94;
            inited = v95;
            v25 = v97;
            v26 = v93;
            goto LABEL_14;
          }
        }

        v52 = *(v31 + 6);
        v53 = *(v31 + 7);
        v99 = *(v31 + 2);
        v100 = v52;
        v101 = v53;

        v5 = v4;
        v54 = v90;
        sub_26D22CAB4();
        v98 = sub_26D1D756C();
        v55 = sub_26D22E6B4();
        v104 = v56;
        v4 = v87;
        v57 = *v87;
        (*v87)(v54, v5);

        if (*(v31 + 2) < 2uLL)
        {
          goto LABEL_65;
        }

        v91 = *(v31 + 4);
        v92 = v55;
        v58 = *(v31 + 10);
        v59 = *(v31 + 11);

        v99 = v91;
        v100 = v58;
        v101 = v59;
        sub_26D22CAB4();
        v60 = sub_26D22E6B4();
        v5 = v61;
        v62 = v54;
        v63 = v96;
        v57(v62, v96);

        v64 = sub_26D1CF110(v92, v104);

        v4 = v63;
        if (v64 == 2)
        {
          goto LABEL_13;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v95;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = sub_26D22BE60(0, v85[2] + 1, 1, v85);
        }

        v68 = v85[2];
        v67 = v85[3];
        if (v68 >= v67 >> 1)
        {
          v85 = sub_26D22BE60((v67 > 1), v68 + 1, 1, v85);
        }

        inited = v66;
        v69 = v85;
        v85[2] = v68 + 1;
        v70 = &v69[3 * v68];
        *(v70 + 32) = v64 & 1;
        v70[5] = v60;
        v70[6] = v5;
        v26 = v93;
        v24 = v94;
        v25 = v97;
        if (v97 == v94)
        {
          goto LABEL_56;
        }
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v82 = inited;
    swift_once();
    inited = v82;
  }

  v85 = MEMORY[0x277D84F90];
LABEL_56:

  v73 = v85;
  if (v85[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A08, &qword_26D230E30);
    v74 = sub_26D22E844();
  }

  else
  {
    v74 = MEMORY[0x277D84F98];
  }

  *&v99 = v74;
  v75 = v86;
  sub_26D1D58F8(v73, 1, &v99);
  v5 = v75;
  if (!v75)
  {

    v14 = v99;
    v76 = v84;
    sub_26D1D7B6C();
    if (v77)
    {
      type metadata accessor for CPIMMessageUnpacker.Error(0);
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
      swift_allocError();
      *v78 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMessage;
      strcpy((v78 + 8), "Body section");
      *(v78 + 21) = 0;
      *(v78 + 22) = -5120;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26D1BCB9C(v89, v88);
      swift_setDeallocating();
      sub_26D1BCB9C(v76[2], v76[3]);
    }

    else
    {
      v79 = sub_26D22CD54();
      v81 = v80;
      swift_setDeallocating();
      sub_26D1BCB9C(v76[2], v76[3]);
      sub_26D1BCB9C(v89, v88);

      sub_26D1BCB48(v79, v81);

      sub_26D1BCB9C(v79, v81);
    }

    return v14;
  }

LABEL_69:

  __break(1u);
  return result;
}

uint64_t *sub_26D1D65A0(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v87 = a2;
  v7 = sub_26D22E404();
  v8 = *(v7 - 8);
  v83 = v7;
  v84 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0968, &qword_26D230628);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0970, &qword_26D230630);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v71 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0978, &qword_26D230638);
  v18 = *(v86 - 1);
  MEMORY[0x28223BE20](v86);
  v85 = (&v71 - v19);
  if (!a1[2] || (v96 = a1, sub_26D1E30E4(0), a1 = v96, (v20 & 1) == 0))
  {
    type metadata accessor for CPIMMessageUnpacker.Error(0);
    sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
    swift_allocError();
    *v22 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMultipartMessage;
    v22[1] = 0xD00000000000001DLL;
    v22[2] = 0x800000026D23B3C0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_26D1BCB9C(v87, a3);
    return a1;
  }

  v81 = a3;
  v82 = v18;
  v21 = qword_2804E0460;

  if (v21 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_2804E08F8);
  sub_26D1D7A6C(&qword_2804E0980, &qword_2804E0968, &qword_26D230628, MEMORY[0x277D85AC0]);
  sub_26D22CEA4();
  sub_26D22E534();
  sub_26D22CED4();
  if (v4)
  {

    sub_26D1BCB9C(v87, v81);
    (*(v12 + 8))(v14, v11);
    (*(v82 + 56))(v17, 1, 1, v86);
LABEL_10:
    sub_26D1B950C(v17, &qword_2804E0970, &qword_26D230630);
    return 0;
  }

  (*(v12 + 8))(v14, v11);

  v23 = v82;
  v24 = v86;
  if ((*(v82 + 48))(v17, 1, v86) == 1)
  {

    sub_26D1BCB9C(v87, v81);
    goto LABEL_10;
  }

  v26 = *(v23 + 32);
  a1 = v85;
  v26(v85, v17, v24);
  swift_getKeyPath();
  sub_26D22CEE4();

  v27 = v95;
  v28 = v81;
  if (v95)
  {
    v29 = v93;
    v30 = v94;
    v31 = v92;
    v32 = v84;
  }

  else
  {
    swift_getKeyPath();
    sub_26D22CEE4();

    v27 = v95;
    v32 = v84;
    if (!v95)
    {

      type metadata accessor for CPIMMessageUnpacker.Error(0);
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
      swift_allocError();
      *v68 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMultipartMessage;
      v68[1] = 0xD000000000000012;
      v68[2] = 0x800000026D23B3E0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_26D1BCB9C(v87, v28);
      (*(v82 + 8))(a1, v24);
      return a1;
    }

    v29 = v93;
    v30 = v94;
    v31 = v92;
  }

  v92 = 11565;
  v93 = 0xE200000000000000;
  v80 = v29;
  v84 = v30;
  v33 = MEMORY[0x26D6B6C10](v31);
  MEMORY[0x26D6B6C70](v33);

  MEMORY[0x26D6B6C70](2573, 0xE200000000000000);
  sub_26D22E3F4();
  v77 = sub_26D22E3D4();
  v35 = v34;

  v36 = v83;
  v79 = *(v32 + 8);
  result = v79(v10, v83);
  v78 = v35;
  if (v35 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v92 = 757926413;
  v93 = 0xE400000000000000;
  v37 = MEMORY[0x26D6B6C10](v31, v80, v84, v27);
  MEMORY[0x26D6B6C70](v37);

  MEMORY[0x26D6B6C70](2573, 0xE200000000000000);
  sub_26D22E3F4();
  v75 = sub_26D22E3D4();
  v39 = v38;

  result = v79(v10, v36);
  v76 = v39;
  if (v39 >> 60 == 15)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v92 = 757926413;
  v93 = 0xE400000000000000;
  v40 = MEMORY[0x26D6B6C10](v31, v80, v84, v27);
  v42 = v41;

  MEMORY[0x26D6B6C70](v40, v42);

  MEMORY[0x26D6B6C70](11565, 0xE200000000000000);
  sub_26D22E3F4();
  v84 = sub_26D22E3D4();
  v44 = v43;

  result = v79(v10, v36);
  if (v44 >> 60 != 15)
  {

    v45 = v87;
    v46 = v81;
    v90 = v87;
    v91 = v81;
    v48 = v77;
    v47 = v78;
    v88 = v77;
    v89 = v78;
    sub_26D1BCB48(v87, v81);
    sub_26D1BEAE4();
    sub_26D22CAF4();
    a1 = v86;
    if (v94 == 1)
    {
      type metadata accessor for CPIMMessageUnpacker.Error(0);
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
      swift_allocError();
      *v49 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMultipartMessage;
      v49[1] = 0xD00000000000001ALL;
      v49[2] = 0x800000026D23B400;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26D1BE640(v84, v44);
      sub_26D1BE640(v75, v76);
      sub_26D1BE640(v48, v47);
      sub_26D1BCB9C(v45, v46);

      sub_26D1BCB9C(v45, v46);
      (*(v82 + 8))(v85, a1);
      return a1;
    }

    v50 = v44;
    v51 = v93;
    v90 = v45;
    v91 = v46;
    v88 = v84;
    v89 = v50;
    a1 = &v90;
    result = sub_26D22CAF4();
    if (v94 == 1)
    {
      type metadata accessor for CPIMMessageUnpacker.Error(0);
      sub_26D1D7614(&qword_2804E0958, type metadata accessor for CPIMMessageUnpacker.Error, &unk_26D2305E0);
      swift_allocError();
      *v52 = &type metadata for CPIMMessageUnpacker.RawEncapsulatedMultipartMessage;
      v52[1] = 0xD000000000000016;
      v52[2] = 0x800000026D23B420;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26D1BE640(v84, v50);
      sub_26D1BE640(v75, v76);
      sub_26D1BE640(v48, v47);
      sub_26D1BCB9C(v45, v46);

      sub_26D1BCB9C(v45, v46);
      (*(v82 + 8))(v85, v86);
      return a1;
    }

    v83 = v50;
    if (v92 >= v51)
    {
      v53 = sub_26D22CD54();
      v55 = v54;
      v92 = v53;
      v93 = v54;
      v56 = v75;
      v90 = v75;
      v91 = v76;
      sub_26D1D7518();
      v57 = sub_26D22E5D4();
      v58 = *(v57 + 16);
      if (!v58)
      {

        sub_26D1BE640(v84, v83);
        sub_26D1BE640(v56, v76);
        sub_26D1BE640(v77, v78);
        sub_26D1BCB9C(v53, v55);
        sub_26D1BCB9C(v45, v46);

        sub_26D1BCB9C(v45, v46);
        (*(v82 + 8))(v85, v86);
        return MEMORY[0x277D84F90];
      }

      v79 = v53;
      v80 = v55;
      v92 = MEMORY[0x277D84F90];
      result = sub_26D1E498C(0, v58, 0);
      v59 = 0;
      a1 = v92;
      v60 = (v57 + 40);
      while (v59 < *(v57 + 16))
      {
        v61 = *(v60 - 1);
        v62 = *v60;
        sub_26D1BCB48(v61, *v60);
        result = sub_26D1D5B80(v61, v62);
        v92 = a1;
        v66 = a1[2];
        v65 = a1[3];
        if (v66 >= v65 >> 1)
        {
          v74 = result;
          v73 = v63;
          v72 = v64;
          sub_26D1E498C((v65 > 1), v66 + 1, 1);
          v64 = v72;
          v63 = v73;
          result = v74;
          a1 = v92;
        }

        ++v59;
        a1[2] = v66 + 1;
        v67 = &a1[3 * v66];
        v67[4] = result;
        v67[5] = v63;
        v67[6] = v64;
        v60 += 2;
        if (v58 == v59)
        {
          (*(v82 + 8))(v85, v86);
          sub_26D1BE640(v84, v83);
          sub_26D1BE640(v75, v76);
          sub_26D1BE640(v77, v78);
          sub_26D1BCB9C(v79, v80);

          v69 = v87;
          v70 = v81;
          sub_26D1BCB9C(v87, v81);

          sub_26D1BCB9C(v69, v70);
          return a1;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_26D1D732C(uint64_t a1)
{
  v2 = sub_26D22D064();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x277CF1D18])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x277CF1CE8])
  {
    return 8;
  }

  if (v4 == *MEMORY[0x277CF1D00] || v4 == *MEMORY[0x277CF1CE0])
  {
    return 10;
  }

  if (v4 == *MEMORY[0x277CF1CF0])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x277CF1D38])
  {
    return 16;
  }

  if (v4 == *MEMORY[0x277CF1D30])
  {
    return 0;
  }

  if (v4 == *MEMORY[0x277CF1D28])
  {
    return 5;
  }

  if (v4 == *MEMORY[0x277CF1D08])
  {
    return 7;
  }

  if (v4 == *MEMORY[0x277CF1D20])
  {
    return 13;
  }

  if (v4 == *MEMORY[0x277CF1CF8])
  {
    return 14;
  }

  if (v4 != *MEMORY[0x277CF1D10])
  {
    (*(v3 + 8))(a1, v2);
    return 16;
  }

  return 15;
}

unint64_t sub_26D1D7518()
{
  result = qword_2804E0988;
  if (!qword_2804E0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0988);
  }

  return result;
}

unint64_t sub_26D1D756C()
{
  result = qword_2804E09C8;
  if (!qword_2804E09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E09C8);
  }

  return result;
}

unint64_t sub_26D1D75C0()
{
  result = qword_2804E09E8;
  if (!qword_2804E09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E09E8);
  }

  return result;
}

uint64_t sub_26D1D7614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26D1D765C()
{
  result = qword_2804E0A00;
  if (!qword_2804E0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0A00);
  }

  return result;
}

uint64_t sub_26D1D76D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26D1D7738(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_26D1D77A0()
{
  result = qword_2804E0A58;
  if (!qword_2804E0A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0A58);
  }

  return result;
}

unint64_t sub_26D1D77F4()
{
  result = qword_2804E0A70;
  if (!qword_2804E0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0A70);
  }

  return result;
}

uint64_t sub_26D1D7848(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_26D22E964() & 1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D1D78AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26D1D78F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_26D1D7980(uint64_t *a1, int a2)
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

uint64_t sub_26D1D79C8(uint64_t result, int a2, int a3)
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

uint64_t sub_26D1D7A6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_26D1D7AB8()
{
  result = qword_2804E0AD8;
  if (!qword_2804E0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0AD8);
  }

  return result;
}

unint64_t sub_26D1D7B10()
{
  result = qword_2804E0AE0;
  if (!qword_2804E0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0AE0);
  }

  return result;
}

uint64_t sub_26D1D7B6C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      if (v1 < 0)
      {
        goto LABEL_12;
      }

      return 0;
    }

    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    if (!v4)
    {
      if (v1 < BYTE6(v2))
      {
        goto LABEL_12;
      }

      return 0;
    }

    v6 = v3;
    v5 = v3 >> 32;
  }

  if (v5 < v6)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (v1 >= v5)
  {
    return 0;
  }

LABEL_12:
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    v8 = BYTE6(v2);
    v9 = v3;
    v10 = v3 >> 32;
    if (v4)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (v4)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v11 < v1)
  {
    goto LABEL_26;
  }

  result = v0[4];
  if (v11 < v12)
  {
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_26D1D7C38()
{
  sub_26D1BCB9C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_26D1D7C94(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  result = sub_26D1E019C(a1, a2);
  if (!v2 && !v5)
  {
    if (v3 <= 3u)
    {
      v8 = 0xE800000000000000;
      v9 = 0x6874754174616843;
      if (v3 != 2)
      {
        v9 = 0x61684370756F7247;
        v8 = 0xED00006874754174;
      }

      v10 = 0xD000000000000010;
      v11 = 0x800000026D23B360;
      if (v3)
      {
        v10 = 0xD00000000000001BLL;
        v11 = 0x800000026D23B340;
      }

      if (v3 <= 1u)
      {
        v6 = v10;
      }

      else
      {
        v6 = v9;
      }

      if (v3 <= 1u)
      {
        v7 = v11;
      }

      else
      {
        v7 = v8;
      }
    }

    else if (v3 <= 5u)
    {
      if (v3 == 4)
      {
        v6 = 0x687475417466;
      }

      else
      {
        v6 = 0xD000000000000011;
      }

      if (v3 == 4)
      {
        v7 = 0xE600000000000000;
      }

      else
      {
        v7 = 0x800000026D23B320;
      }
    }

    else if (v3 == 6)
    {
      v7 = 0xEE00687475416873;
      v6 = 0x7550636F6C6F6567;
    }

    else if (v3 == 7)
    {
      v6 = 0xD000000000000010;
      v7 = 0x800000026D23B300;
    }

    else
    {
      v7 = 0xE300000000000000;
      v6 = 7632965;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v12 = v6;
    *(v12 + 8) = v7;
    *(v12 + 16) = 0;
    *(v12 + 24) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26D1D7E44(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  result = sub_26D1E75B8(a1, a2);
  if (!v2 && !v5)
  {
    v6 = *&aAppref[8 * v3];
    v7 = *&aTransporuuidVa[8 * v3 + 16];
    sub_26D1B7F48();
    swift_allocError();
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_26D1D7ED8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0830, &qword_26D2304A8);
  MEMORY[0x28223BE20](v4 - 8);
  v138 = &v113 - v5;
  v126 = sub_26D22D984();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v127 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0840, &qword_26D2304B0);
  MEMORY[0x28223BE20](v7 - 8);
  v128 = &v113 - v8;
  v137 = sub_26D22D9D4();
  v130 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v129 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0850, &qword_26D2304B8);
  MEMORY[0x28223BE20](v10 - 8);
  v133 = &v113 - v11;
  v12 = sub_26D22D9A4();
  v131 = *(v12 - 8);
  v132 = v12;
  MEMORY[0x28223BE20](v12);
  v134 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0860, &qword_26D2304C0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v136 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v144 = &v113 - v17;
  v143 = sub_26D22D9C4();
  v141 = *(v143 - 8);
  v18 = MEMORY[0x28223BE20](v143);
  v135 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v142 = &v113 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0870, &qword_26D2304C8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v139 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v146 = (&v113 - v24);
  v145 = sub_26D22D9B4();
  v147 = *(v145 - 8);
  v25 = MEMORY[0x28223BE20](v145);
  v140 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v113 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0880, &qword_26D2304D0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v148 = (&v113 - v33);
  v34 = sub_26D22D994();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v113 - v39;
  v41 = a1;
  v42 = sub_26D1E1120();
  if (v2)
  {

    return;
  }

  v117 = v32;
  v123 = v41;
  v118 = v38;
  v121 = v34;
  v119 = v35;
  v122 = v40;
  v120 = v28;
  v43 = sub_26D1D99E0(v42, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v44 = v148;
  sub_26D1C9468(0, 0, v43, v148);
  v45 = v119;
  v47 = v119 + 48;
  v46 = *(v119 + 48);
  v48 = v121;
  v49 = v46(v44, 1, v121);
  v116 = v46;
  if (v49 == 1)
  {
    (*(v45 + 104))(v122, *MEMORY[0x277CF29A8], v48);
    v50 = v46(v44, 1, v48);
    v51 = v120;
    v52 = v147;
    if (v50 != 1)
    {
      sub_26D1B950C(v44, &qword_2804E0880, &qword_26D2304D0);
    }
  }

  else
  {
    (*(v45 + 32))(v122, v44, v48);
    v51 = v120;
    v52 = v147;
  }

  v53 = v146;
  sub_26D1C94A8(1, 0, v43, v146);
  v115 = v47;
  v148 = v43;
  v55 = *(v52 + 48);
  v56 = v145;
  if ((v55)(v53, 1, v145) == 1)
  {
    (*(v52 + 104))(v51, *MEMORY[0x277CF29D8], v56);
    if ((v55)(v53, 1, v56) != 1)
    {
      sub_26D1B950C(v53, &qword_2804E0870, &qword_26D2304C8);
    }
  }

  else
  {
    (*(v52 + 32))(v51, v53, v56);
  }

  v57 = v144;
  sub_26D1C97C4(2, 0, v148, v144);
  v146 = v55;
  v58 = v141;
  v59 = v141 + 48;
  v60 = *(v141 + 48);
  v61 = v143;
  v62 = v60(v57, 1, v143);
  v114 = v60;
  if (v62 == 1)
  {
    (*(v58 + 104))(v142, *MEMORY[0x277CF29F0], v61);
    v63 = v60(v57, 1, v61);
    v64 = v59;
    if (v63 != 1)
    {
      sub_26D1B950C(v57, &qword_2804E0860, &qword_26D2304C0);
    }
  }

  else
  {
    (*(v58 + 32))(v142, v57, v61);
    v64 = v59;
  }

  v65 = v117;
  sub_26D1C9468(3, 0, v148, v117);
  v66 = v118;
  v144 = v64;
  v67 = v121;
  v68 = v116;
  v69 = v65;
  if (v116(v65, 1, v121) == 1)
  {
    (*(v119 + 104))(v66, *MEMORY[0x277CF29A8], v67);
    v70 = v68(v65, 1, v67);
    v71 = v140;
    if (v70 != 1)
    {
      sub_26D1B950C(v69, &qword_2804E0880, &qword_26D2304D0);
    }
  }

  else
  {
    (*(v119 + 32))(v66, v65, v67);
    v71 = v140;
  }

  v72 = v139;
  sub_26D1C94A8(4, 0, v148, v139);
  v73 = v145;
  v74 = v146;
  if ((v146)(v72, 1, v145) == 1)
  {
    (*(v147 + 104))(v71, *MEMORY[0x277CF29D8], v73);
    v75 = v74(v72, 1, v73);
    v76 = v137;
    v77 = v138;
    if (v75 != 1)
    {
      sub_26D1B950C(v72, &qword_2804E0870, &qword_26D2304C8);
    }
  }

  else
  {
    (*(v147 + 32))(v71, v72, v73);
    v76 = v137;
    v77 = v138;
  }

  v78 = v136;
  sub_26D1C97C4(5, 0, v148, v136);
  v79 = v143;
  v80 = v114;
  if (v114(v78, 1, v143) == 1)
  {
    v81 = v78;
    (*(v141 + 104))(v135, *MEMORY[0x277CF29F0], v79);
    v82 = v80(v78, 1, v79);
    v83 = v134;
    if (v82 != 1)
    {
      sub_26D1B950C(v81, &qword_2804E0860, &qword_26D2304C0);
    }
  }

  else
  {
    (*(v141 + 32))(v135, v78, v79);
    v83 = v134;
  }

  v84 = v133;
  sub_26D1C9804(6, 0, v148, v133);
  v146 = 0;
  v86 = v131;
  v85 = v132;
  v87 = *(v131 + 48);
  if (v87(v84, 1, v132) == 1)
  {
    (*(v86 + 104))(v83, *MEMORY[0x277CF29C0], v85);
    v88 = v87(v84, 1, v85);
    v89 = v145;
    v90 = v129;
    v91 = v130;
    v92 = v123;
    if (v88 != 1)
    {
      sub_26D1B950C(v84, &qword_2804E0850, &qword_26D2304B8);
    }
  }

  else
  {
    (*(v86 + 32))(v83, v84, v85);
    v89 = v145;
    v90 = v129;
    v91 = v130;
    v92 = v123;
  }

  v93 = v128;
  v94 = v146;
  sub_26D1C9844(7, 0, v148, v128);
  v146 = v94;
  if (v94)
  {

    (*(v131 + 8))(v83, v132);
    v95 = *(v141 + 8);
    v96 = v143;
    v95(v135, v143);
    v97 = *(v147 + 8);
    v97(v140, v89);
    v98 = v89;
    v99 = *(v119 + 8);
    v100 = v121;
    v99(v118, v121);
    v95(v142, v96);
    v97(v120, v98);
    v101 = v122;
    v102 = v100;
LABEL_39:
    v99(v101, v102);
    return;
  }

  v103 = *(v91 + 48);
  if (v103(v93, 1, v76) == 1)
  {
    (*(v91 + 104))(v90, *MEMORY[0x277CF2A08], v76);
    if (v103(v93, 1, v76) != 1)
    {
      sub_26D1B950C(v128, &qword_2804E0840, &qword_26D2304B0);
    }
  }

  else
  {
    (*(v91 + 32))(v90, v93, v76);
  }

  v104 = v146;
  sub_26D1C9884(8, 0, v148, v77);
  v146 = v104;
  if (v104)
  {

    v105 = v123;

    (*(v130 + 8))(v90, v76);
    (*(v131 + 8))(v83, v132);
    v106 = *(v141 + 8);
    v107 = v143;
    v106(v135, v143);
    v108 = *(v147 + 8);
    v109 = v145;
    v108(v140, v145);
    v99 = *(v119 + 8);
    v110 = v121;
    v99(v118, v121);
    v106(v142, v107);
    v108(v120, v109);
    v101 = v122;
    v102 = v110;
    goto LABEL_39;
  }

  v111 = *(v125 + 48);
  if (v111(v77, 1, v126) == 1)
  {
    v112 = v126;
    (*(v125 + 104))(v127, *MEMORY[0x277CF2990], v126);
    if (v111(v138, 1, v112) != 1)
    {
      sub_26D1B950C(v138, &qword_2804E0830, &qword_26D2304A8);
    }
  }

  else
  {
    (*(v125 + 32))(v127, v138, v126);
  }

  sub_26D22D9E4();
  v54 = v123;
}

void sub_26D1D9334(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0828, &qword_26D2304A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v34 - v4;
  v6 = sub_26D22D9F4();
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v34 - v10;
  v12 = sub_26D22D5F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = v44;
  v18 = sub_26D1E1120();
  if (v17)
  {

LABEL_4:
    return;
  }

  v35 = v5;
  v36 = v8;
  v34[4] = v6;
  v38 = v11;
  v39 = v12;
  v44 = v15;
  v37 = v13;
  v19 = sub_26D1D99E0(v18, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v20 = sub_26D1E25A8();

  v21 = sub_26D1D99E0(v20, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

  sub_26D1E6390(0, v19);
  v23 = v22;
  sub_26D1E75B8(1u, v19);
  if (!v24)
  {
    sub_26D1B7F48();
    v30 = swift_allocError();
    *v31 = xmmword_26D230AE0;
    *(v31 + 16) = 0;
    *(v31 + 24) = 1;
    swift_willThrow();
    v42 = 0x6D616E5B6D726170;
    v43 = 0xEB00000000273D65;
    MEMORY[0x26D6B6C70](0x6570795468747541, 0xE800000000000000);
    MEMORY[0x26D6B6C70](23847, 0xE200000000000000);
    v26 = v42;
    v27 = v43;
    sub_26D1B7F48();
    swift_allocError();
    *v28 = v26;
    *(v28 + 8) = v27;
    *(v28 + 16) = v30;
    *(v28 + 24) = 7;
    swift_willThrow();

    goto LABEL_4;
  }

  v29 = v25;
  sub_26D1DA8D0(1, 1, v29);

  sub_26D1CAB9C(2, 0, v19, v38);
  sub_26D1CAE24(3, 0, v19);
  v34[3] = v32;
  v34[1] = sub_26D1CAE24(4, 0, v19);
  v34[2] = v33;
  sub_26D1C656C(5, v21, v36);
  v34[0] = v23;

  sub_26D1CB048(6, 0, v19, v35);

  sub_26D22D5E4();
}

void *sub_26D1D99E0(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

uint64_t ChatbotInfoUnpacker.unpack(from:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22CA54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26D22CAA4();
  swift_allocObject();
  sub_26D22CA94();
  *v5 = sub_26D1FE858;
  v5[1] = 0;
  (*(v3 + 104))(v5, *MEMORY[0x277CC86C8], v2);
  sub_26D22CA64();
  sub_26D22CA74();
  sub_26D22DED4();
  sub_26D1D9DF8(&qword_2804E0AE8, &protocol conformance descriptor for Chatbot.Info);
  sub_26D22CA84();
}

uint64_t sub_26D1D9DF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26D22DED4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26D1D9E4C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    if (a1 == 8)
    {
      v5 = 0x6767697254736663;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0x657A695378614DLL;
    if (a1 != 5)
    {
      v6 = 0x6F76655274616843;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7463662D666E6F63;
    v2 = 0x7065636341747541;
    v3 = 0x6C644972656D6954;
    if (a1 == 3)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_26D1D9FBC(char a1)
{
  result = 0x4449707041;
  switch(a1)
  {
    case 1:
      result = 1701667150;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x31545F72656D6954;
      break;
    case 4:
      result = 0x32545F72656D6954;
      break;
    case 5:
      result = 0x34545F72656D6954;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x7972746552676552;
      break;
    case 13:
      result = 7632965;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26D1DA188@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v9 = 0xE300000000000000;
        v10 = 7107189;
      }

      else if (a1 == 7)
      {
        v9 = 0xE500000000000000;
        v10 = 0x6C69746E75;
      }

      else
      {
        v9 = 0x800000026D23A140;
        v10 = 0xD000000000000011;
      }

      goto LABEL_20;
    }

    if (a1 != 4)
    {
      v9 = 0xEC00000065707974;
      v10 = 0x2D746E65746E6F63;
      goto LABEL_20;
    }

    v10 = 0x6D616E2D656C6966;
LABEL_17:
    v9 = 0xE900000000000065;
    goto LABEL_20;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v10 = 0xD000000000000010;
      v9 = 0x800000026D23A100;
      goto LABEL_20;
    }

    v10 = 0x7A69732D656C6966;
    goto LABEL_17;
  }

  if (a1)
  {
    v10 = 1701869940;
  }

  else
  {
    v10 = 1635017060;
  }

  v9 = 0xE400000000000000;
LABEL_20:
  v11 = *(a2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v11 + 16))
  {
LABEL_25:
    sub_26D1B7F48();
    swift_allocError();
    v19 = 2;
    goto LABEL_26;
  }

  v12 = sub_26D1BDEEC(v10, v9);
  if ((v13 & 1) == 0)
  {

    goto LABEL_25;
  }

  v14 = (*(v11 + 56) + 16 * v12);
  v10 = *v14;
  v15 = v14[1];

  sub_26D22CCD4();
  v16 = sub_26D22CCE4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_26D1B950C(v8, &qword_2804E0890, &qword_26D230770);
    sub_26D1B7F48();
    swift_allocError();
    v19 = 4;
    v9 = v15;
LABEL_26:
    *v18 = v10;
    *(v18 + 8) = v9;
    *(v18 + 16) = 0;
    *(v18 + 24) = v19;
    return swift_willThrow();
  }

  return (*(v17 + 32))(a3, v8, v16);
}