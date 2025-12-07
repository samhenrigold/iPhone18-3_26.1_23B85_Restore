id sub_2379EC52C(void *a1)
{
  v1 = a1;
  v2 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v3 = sub_237C0893C();

  sub_237A254DC();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2383DCAF0](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 integerValue];

  v7 = [v1 shape];
  v8 = sub_237C0893C();

  sub_237A254DC();
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x2383DCAF0](2, v8);
  }

  else
  {
    v9 = *(v8 + 48);
  }

  v10 = v9;

  v79 = [v10 integerValue];

  sub_2379EEE10();
  OUTLINED_FUNCTION_5_2();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_2379EEE10();
  OUTLINED_FUNCTION_5_2();
  v18 = v17;
  v86 = v19;
  v21 = v20;

  sub_2379EEE10();
  OUTLINED_FUNCTION_5_2();
  v81 = v22;
  v84 = v23;
  v25 = v24;

  v89 = &unk_284AC0158;
  sub_2379EEE10();
  OUTLINED_FUNCTION_5_2();
  v80 = v26;
  v82 = v27;
  v83 = v28;

  v77 = v6;
  v78 = v1;
  if (v6 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_237C0B660;
    if (v14 > 0 || v16 < 2)
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    *(v29 + 32) = (*v12 * 3.1416) / 180.0;
    v31 = OUTLINED_FUNCTION_25_1();
    *(v31 + 16) = xmmword_237C0B660;
    if (v86 > 0 || v21 < 2)
    {
      goto LABEL_74;
    }

    v33 = v31;
    *(v31 + 32) = *v18;
    v34 = OUTLINED_FUNCTION_25_1();
    *(v34 + 16) = xmmword_237C0B660;
    if (v84 > 0 || v25 < 2)
    {
      goto LABEL_75;
    }

    *(v34 + 32) = *v81;
    v89 = v34;
    v36 = OUTLINED_FUNCTION_25_1();
    *(v36 + 16) = xmmword_237C0B660;
    if (v82 > 0 || v83 < 2)
    {
      goto LABEL_78;
    }

    *(v36 + 32) = *v80;
LABEL_59:
    v88 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACD8, &qword_237C0BA90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE0, &qword_237C0BA98);
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_237C0B670;
    v51 = OUTLINED_FUNCTION_7_2();
    v52 = sub_2379EE8E0(v51, v33);

    *(v50 + 32) = v52;
    v53 = OUTLINED_FUNCTION_6_1();
    v54 = *(v53 + 16);
    if (v54)
    {
      v87 = MEMORY[0x277D84F90];
      sub_237AC8CD4();
      v55 = v87;
      v56 = *(v87 + 16);
      v57 = 32;
      do
      {
        v58 = *(v53 + v57);
        v59 = *(v87 + 24);
        if (v56 >= v59 >> 1)
        {
          OUTLINED_FUNCTION_106(v59);
          sub_237AC8CD4();
        }

        *(v87 + 16) = v56 + 1;
        *(v87 + 4 * v56 + 32) = -v58;
        v57 += 4;
        ++v56;
        --v54;
      }

      while (v54);

      v6 = v77;
      v1 = v78;
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
    }

    v60 = sub_2379EE8E0(v55, v33);

    *(v50 + 40) = v60;
    *(inited + 32) = v50;
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_237C0B670;
    v62 = OUTLINED_FUNCTION_6_1();
    v63 = sub_2379EE8E0(v62, v33);

    *(v61 + 32) = v63;
    v64 = OUTLINED_FUNCTION_7_2();

    v65 = sub_2379EE8E0(v64, v33);

    *(v61 + 40) = v65;
    *(inited + 40) = v61;
    v66 = [v1 shape];
    v67 = sub_237C0893C();

    v68 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v69 = sub_237AC8938(v67, 65600);
    v70 = [v69 dataPointer];
    v71 = [v1 dataPointer];
    v72 = [v1 count];
    if ((v72 - 0x1000000000000000) >> 61 == 7)
    {
      memcpy(v70, v71, 8 * v72);
      v73 = v69;
      v74 = sub_237C08D4C();
      sub_2379EE378(v74, v75, v6, v79, v1, inited, &v89, &v88);
      swift_setDeallocating();
      sub_237B90888();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v73;
    }

    __break(1u);
    goto LABEL_71;
  }

  if (v14 > 0 || v16 < 2)
  {
    goto LABEL_72;
  }

  if (v16 < 4)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v39 = sub_2379EE1A0(v6, *v12, v12[1]);
  v40 = *(v39 + 16);
  if (v40)
  {
    v89 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v41 = v89;
    v42 = v89[2];
    v43 = 32;
    do
    {
      v44 = *(v39 + v43);
      v89 = v41;
      v45 = v41[3];
      if (v42 >= v45 >> 1)
      {
        OUTLINED_FUNCTION_106(v45);
        sub_237AC8CD4();
        v41 = v89;
      }

      v41[2] = v42 + 1;
      *(v41 + v42 + 8) = (v44 * 3.1416) / 180.0;
      v43 += 4;
      ++v42;
      --v40;
    }

    while (v40);

    v6 = v77;
  }

  else
  {
  }

  if (v86 > 0 || v21 < 2)
  {
    goto LABEL_76;
  }

  if (v21 < 4)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v47 = sub_2379EE1A0(v6, *v18, v18[1]);
  if (v84 > 0 || v25 < 2)
  {
    goto LABEL_79;
  }

  if (v25 < 4)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v33 = v47;
  v89 = sub_2379EE1A0(v6, *v81, v81[1]);
  if (v82 > 0 || v83 < 2)
  {
    goto LABEL_81;
  }

  if (v83 >= 4)
  {
    v36 = sub_2379EE1A0(v6, *v80, v80[1]);
    goto LABEL_59;
  }

LABEL_82:
  __break(1u);
  OUTLINED_FUNCTION_0_2();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_2379ECD1C(id a1)
{
  sub_2379EEF50(-0.1, 0.1);
  v3 = v2;
  sub_2379EEF50(-0.1, 0.1);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_24_1();
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v7 = sub_237C0893C();

  OUTLINED_FUNCTION_3_4();
  if (v6)
  {
    goto LABEL_62;
  }

  v8 = *(v7 + 32);
  while (1)
  {
    OUTLINED_FUNCTION_20_0();
    v9 = [v6 integerValue];

    v10 = OUTLINED_FUNCTION_24_1();
    v11 = sub_237C0893C();

    OUTLINED_FUNCTION_13_0();
    if (v10)
    {
      MEMORY[0x2383DCAF0](2, v11);
    }

    else
    {
      v12 = *(v11 + 48);
    }

    OUTLINED_FUNCTION_20_0();
    v50 = [v10 integerValue];

    v13 = OUTLINED_FUNCTION_24_1();
    v14 = sub_237C0893C();

    v15 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v16 = OUTLINED_FUNCTION_8_2();
    if (v14)
    {
      break;
    }

    v17 = v16;
    v18 = sub_237C08D4C();
    v20 = v19;
    a1 = a1;
    v21 = sub_237C08D4C();
    if (v22)
    {
      if (v20)
      {
        OUTLINED_FUNCTION_19_1(v21, v22);
      }
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      break;
    }

    v49 = v9;
    if (!v9)
    {
      return v17;
    }

    if ((v50 & 0x8000000000000000) != 0)
    {
      goto LABEL_65;
    }

    v23 = 0;
    while (!v50)
    {
LABEL_48:
      if (++v23 == v49)
      {
        return v17;
      }
    }

    v24 = 0;
    while (1)
    {
      v25 = OUTLINED_FUNCTION_14_1();
      v6 = OUTLINED_FUNCTION_16_0(v25);

      if ((v6 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_27_0();
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (!v26)
        {
          goto LABEL_51;
        }

        v27 = *(v6 + 32);
      }

      OUTLINED_FUNCTION_15_1();
      v6 = [v20 integerValue];

      v28 = v23 * v6;
      if ((v23 * v6) >> 64 != (v23 * v6) >> 63)
      {
        break;
      }

      v29 = OUTLINED_FUNCTION_14_1();
      v6 = OUTLINED_FUNCTION_16_0(v29);

      if ((v6 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
        if (!v30)
        {
          goto LABEL_53;
        }

        v31 = *(v6 + 48);
      }

      OUTLINED_FUNCTION_15_1();
      v6 = [v20 integerValue];

      OUTLINED_FUNCTION_11_1();
      if (!v33)
      {
        goto LABEL_52;
      }

      v34 = __OFADD__(v28, v32);
      v35 = v28 + v32;
      if (v34)
      {
        goto LABEL_54;
      }

      v36 = OUTLINED_FUNCTION_14_1();
      v6 = OUTLINED_FUNCTION_16_0(v36);

      if ((v6 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_27_0();
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (!v37)
        {
          goto LABEL_56;
        }

        v38 = *(v6 + 32);
      }

      OUTLINED_FUNCTION_15_1();
      v6 = [v20 integerValue];

      v39 = v23 * v6;
      if ((v23 * v6) >> 64 != (v23 * v6) >> 63)
      {
        goto LABEL_55;
      }

      v40 = OUTLINED_FUNCTION_14_1();
      v6 = OUTLINED_FUNCTION_16_0(v40);

      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2383DCAF0](1, v6);
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (v41 < 2)
        {
          goto LABEL_58;
        }

        v42 = *(v6 + 40);
      }

      OUTLINED_FUNCTION_15_1();
      v6 = [v20 integerValue];

      v34 = __OFADD__(v39, v6);
      v43 = (v39 + v6);
      if (v34)
      {
        goto LABEL_57;
      }

      v44 = OUTLINED_FUNCTION_14_1();
      v6 = OUTLINED_FUNCTION_16_0(v44);

      if ((v6 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
        if (!v30)
        {
          goto LABEL_60;
        }

        v45 = *(v6 + 48);
      }

      OUTLINED_FUNCTION_15_1();
      v6 = [v20 integerValue];

      OUTLINED_FUNCTION_11_1();
      if (!v33)
      {
        goto LABEL_59;
      }

      v34 = __OFADD__(v43, v46);
      v47 = &v43[v46];
      if (v34)
      {
        goto LABEL_61;
      }

      ++v24;
      *(v18 + 8 * v35) = v3 + *(v18 + 8 * v35);
      *(v18 + 8 * v47) = v5 + *(v18 + 8 * v47);
      if (v50 == v24)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
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
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    OUTLINED_FUNCTION_23_1();
  }

  OUTLINED_FUNCTION_0_2();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_2379ED1C8(id a1)
{
  sub_2379EEF50(0.8, 1.2);
  v3 = v2;
  v4 = OUTLINED_FUNCTION_24_1();
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v5 = sub_237C0893C();

  OUTLINED_FUNCTION_3_4();
  if (v4)
  {
    goto LABEL_62;
  }

  v6 = *(v5 + 32);
  while (1)
  {
    OUTLINED_FUNCTION_20_0();
    v7 = [v4 integerValue];

    v8 = OUTLINED_FUNCTION_24_1();
    v9 = sub_237C0893C();

    OUTLINED_FUNCTION_13_0();
    if (v8)
    {
      MEMORY[0x2383DCAF0](2, v9);
    }

    else
    {
      v10 = *(v9 + 48);
    }

    OUTLINED_FUNCTION_20_0();
    v48 = [v8 integerValue];

    v11 = OUTLINED_FUNCTION_24_1();
    v12 = sub_237C0893C();

    v13 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v14 = OUTLINED_FUNCTION_8_2();
    if (v12)
    {
      break;
    }

    v15 = v14;
    v16 = sub_237C08D4C();
    v18 = v17;
    a1 = a1;
    v19 = sub_237C08D4C();
    if (v20)
    {
      if (v18)
      {
        OUTLINED_FUNCTION_19_1(v19, v20);
      }
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      break;
    }

    v47 = v7;
    if (!v7)
    {
      return v15;
    }

    if ((v48 & 0x8000000000000000) != 0)
    {
      goto LABEL_65;
    }

    v21 = 0;
    while (!v48)
    {
LABEL_48:
      if (++v21 == v47)
      {
        return v15;
      }
    }

    v22 = 0;
    while (1)
    {
      v23 = OUTLINED_FUNCTION_14_1();
      v4 = OUTLINED_FUNCTION_16_0(v23);

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_27_0();
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (!v24)
        {
          goto LABEL_51;
        }

        v25 = *(v4 + 32);
      }

      OUTLINED_FUNCTION_15_1();
      v4 = [v18 integerValue];

      v26 = v21 * v4;
      if ((v21 * v4) >> 64 != (v21 * v4) >> 63)
      {
        break;
      }

      v27 = OUTLINED_FUNCTION_14_1();
      v4 = OUTLINED_FUNCTION_16_0(v27);

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
        if (!v28)
        {
          goto LABEL_53;
        }

        v29 = *(v4 + 48);
      }

      OUTLINED_FUNCTION_15_1();
      v4 = [v18 integerValue];

      OUTLINED_FUNCTION_11_1();
      if (!v31)
      {
        goto LABEL_52;
      }

      v32 = __OFADD__(v26, v30);
      v33 = v26 + v30;
      if (v32)
      {
        goto LABEL_54;
      }

      v34 = OUTLINED_FUNCTION_14_1();
      v4 = OUTLINED_FUNCTION_16_0(v34);

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_27_0();
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (!v35)
        {
          goto LABEL_56;
        }

        v36 = *(v4 + 32);
      }

      OUTLINED_FUNCTION_15_1();
      v4 = [v18 integerValue];

      v37 = v21 * v4;
      if ((v21 * v4) >> 64 != (v21 * v4) >> 63)
      {
        goto LABEL_55;
      }

      v38 = OUTLINED_FUNCTION_14_1();
      v4 = OUTLINED_FUNCTION_16_0(v38);

      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2383DCAF0](1, v4);
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (v39 < 2)
        {
          goto LABEL_58;
        }

        v40 = *(v4 + 40);
      }

      OUTLINED_FUNCTION_15_1();
      v4 = [v18 integerValue];

      v32 = __OFADD__(v37, v4);
      v41 = (v37 + v4);
      if (v32)
      {
        goto LABEL_57;
      }

      v42 = OUTLINED_FUNCTION_14_1();
      v4 = OUTLINED_FUNCTION_16_0(v42);

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
        if (!v28)
        {
          goto LABEL_60;
        }

        v43 = *(v4 + 48);
      }

      OUTLINED_FUNCTION_15_1();
      v4 = [v18 integerValue];

      OUTLINED_FUNCTION_11_1();
      if (!v31)
      {
        goto LABEL_59;
      }

      v32 = __OFADD__(v41, v44);
      v45 = &v41[v44];
      if (v32)
      {
        goto LABEL_61;
      }

      ++v22;
      *(v16 + 8 * v33) = v3 * *(v16 + 8 * v33);
      *(v16 + 8 * v45) = v3 * *(v16 + 8 * v45);
      if (v48 == v22)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
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
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    OUTLINED_FUNCTION_23_1();
  }

  OUTLINED_FUNCTION_0_2();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_2379ED654(void *a1)
{
  sub_2379EEF50(0.0, 0.2);
  sub_2379EEF50(0.0, 1.0);
  v3 = v2;
  v4 = &off_278A42000;
  v5 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v6 = sub_237C0893C();

  OUTLINED_FUNCTION_3_4();
  if (v5)
  {
    goto LABEL_85;
  }

  v7 = *(v6 + 32);
  while (1)
  {
    OUTLINED_FUNCTION_20_0();
    [v5 integerValue];

    v8 = [a1 *(v4 + 1856)];
    v9 = sub_237C0893C();

    sub_237A254DC();
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2383DCAF0](1, v9);
    }

    else
    {
      v10 = *(v9 + 40);
    }

    v11 = v10;

    v5 = [v11 integerValue];

    v12 = [a1 *(v4 + 1856)];
    v13 = sub_237C0893C();

    v4 = v13 & 0xC000000000000001;
    sub_237A254DC();
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2383DCAF0](2, v13);
    }

    else
    {
      v14 = *(v13 + 48);
    }

    v15 = v14;

    v16 = [v15 integerValue];

    v17 = v5 * v16;
    if ((v5 * v16) >> 64 != (v5 * v16) >> 63)
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    OUTLINED_FUNCTION_28_0();
    if (!(v20 ^ v21 | v19))
    {
      goto LABEL_89;
    }

    if (v18 <= -9.22337204e18)
    {
      goto LABEL_90;
    }

    if (v18 >= 9.22337204e18)
    {
      goto LABEL_91;
    }

    v22 = v18;
    v68 = a1;
    a1 = sub_2379EE878();
    if (v22 < 1)
    {
      break;
    }

    if (!v17)
    {
      goto LABEL_93;
    }

    if (v17 < 0)
    {
      goto LABEL_94;
    }

    while (1)
    {
      v23 = a1[2];
      if (v17 > v23)
      {
        break;
      }

      v24 = v23 / v17;
      v4 = v23 / v17 - 1;
      if (v23 / v17 == 1)
      {
        goto LABEL_70;
      }

      v70[0] = 0;
      MEMORY[0x2383DD970](v70, 8);
      v25 = (v70[0] * v4) >> 64;
      if (v4 > v70[0] * v4)
      {
        v26 = (1 - v24) % v4;
        if (v26 > v70[0] * v4)
        {
          do
          {
            v70[0] = 0;
            MEMORY[0x2383DD970](v70, 8);
          }

          while (v26 > v70[0] * v4);
          v25 = (v70[0] * v4) >> 64;
        }
      }

      v27 = v25 + 1;
      v28 = (v25 + 1) * v17;
      if (((v25 + 1) * v17) >> 64 != v28 >> 63)
      {
        goto LABEL_71;
      }

      v29 = v25 * v17;
      if ((v25 * v17) >> 64 != (v25 * v17) >> 63)
      {
        goto LABEL_72;
      }

      v30 = v28 + v17;
      if (__OFADD__(v28, v17))
      {
        goto LABEL_73;
      }

      v5 = v17;
      if (v30 < v28)
      {
        goto LABEL_74;
      }

      if (v28 < 0)
      {
        goto LABEL_75;
      }

      v31 = a1[2];
      if (v31 < v28 || v31 < v30)
      {
        goto LABEL_76;
      }

      v33 = a1 + 4;
      if (v31 == v17)
      {

        v34 = a1;
      }

      else
      {
        v34 = MEMORY[0x277D84F90];
        if (v30 != v28)
        {
          v4 = 8 * v17;
          if (v17 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
            v34 = swift_allocObject();
            _swift_stdlib_malloc_size(v34);
            OUTLINED_FUNCTION_29_1();
            v34[2] = v17;
            v34[3] = v53;
          }

          memcpy(v34 + 4, &v33[v28], 8 * v17);
        }
      }

      v35 = v29 + v17;
      if (__OFADD__(v29, v17))
      {
        goto LABEL_77;
      }

      v5 = v17;
      if (v35 < v29)
      {
        goto LABEL_78;
      }

      if (v29 < 0)
      {
        goto LABEL_79;
      }

      v36 = a1[2];
      if (v36 < v29 || v36 < v35)
      {
        goto LABEL_80;
      }

      if (v36 == v17)
      {

        v38 = a1;
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
        if (v35 != v29)
        {
          v4 = 8 * v17;
          if (v17 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
            v38 = swift_allocObject();
            _swift_stdlib_malloc_size(v38);
            OUTLINED_FUNCTION_29_1();
            v38[2] = v17;
            v38[3] = v54;
          }

          memcpy(v38 + 4, &v33[v29], 8 * v17);
        }
      }

      if (v17 > v38[2])
      {
        goto LABEL_81;
      }

      if (v17 > v34[2])
      {
        goto LABEL_82;
      }

      v69 = v22;
      sub_237BC0EDC(0, 1, 1, MEMORY[0x277D84F90]);
      v40 = v39;
      v41 = *(v39 + 16);
      v5 = 32;
      v42 = v17;
      do
      {
        v43 = *(v38 + v5);
        v44 = *(v34 + v5);
        v45 = *(v40 + 24);
        if (v41 >= v45 >> 1)
        {
          v46 = OUTLINED_FUNCTION_106(v45);
          sub_237BC0EDC(v46, v41 + 1, 1, v40);
          v40 = v47;
        }

        *(v40 + 16) = v41 + 1;
        *(v40 + 8 * v41 + 32) = v43 + v3 * (v44 - v43);
        v5 += 8;
        ++v41;
        --v42;
      }

      while (v42);

      v4 = a1[2];
      if (v4 < v27)
      {
        goto LABEL_83;
      }

      v48 = *(v40 + 16);
      v49 = v4 + v48;
      if (__OFADD__(v4, v48))
      {
        goto LABEL_84;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = a1;
      if (!isUniquelyReferenced_nonNull_native || v49 > a1[3] >> 1)
      {
        if (v4 <= v49)
        {
          v51 = v4 + v48;
        }

        else
        {
          v51 = v4;
        }

        sub_237BC0EDC(isUniquelyReferenced_nonNull_native, v51, 1, a1);
        a1 = v52;
        v71 = v52;
      }

      sub_2379EEFC8(v27, v27, v48, v40);
      --v22;
      if (v69 <= 1)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
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
    OUTLINED_FUNCTION_23_1();
  }

LABEL_65:
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v56 = OUTLINED_FUNCTION_26_0(v55);
  *(v56 + 16) = xmmword_237C0BA30;
  if (!v17)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    OUTLINED_FUNCTION_0_2();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v57 = v56;
  *(v56 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v57 + 40) = sub_237C08CDC();
  *(v57 + 48) = sub_237C08CDC();
  v58 = [v68 strides];
  sub_237C0893C();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237BC0EDC(0, a1[2], 0, a1);
  }

  v59 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  OUTLINED_FUNCTION_21_1();
  v66 = sub_2379EEB64(v60, v61, v62, v63, v64, v65);

  return v66;
}

id sub_2379EDD18(void *a1)
{
  sub_2379EEF50(0.0, 0.2);
  v2 = &off_278A42000;
  v3 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v4 = sub_237C0893C();

  sub_237A254DC();
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  v5 = *(v4 + 32);
  while (1)
  {
    v6 = v5;

    [v6 integerValue];

    v7 = [a1 *(v2 + 1856)];
    v8 = sub_237C0893C();

    sub_237A254DC();
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2383DCAF0](1, v8);
    }

    else
    {
      v9 = *(v8 + 40);
    }

    v10 = v9;

    v11 = [v10 integerValue];

    v12 = [a1 *(v2 + 1856)];
    v13 = sub_237C0893C();

    sub_237A254DC();
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2383DCAF0](2, v13);
    }

    else
    {
      v14 = *(v13 + 48);
    }

    v15 = v14;

    v16 = [v15 integerValue];

    v2 = v11 * v16;
    if ((v11 * v16) >> 64 != (v11 * v16) >> 63)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      OUTLINED_FUNCTION_0_2();
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_28_0();
    if (!(v19 ^ v20 | v18))
    {
      goto LABEL_50;
    }

    if (v17 <= -9.22337204e18)
    {
      goto LABEL_51;
    }

    if (v17 >= 9.22337204e18)
    {
      goto LABEL_52;
    }

    v21 = v17;
    v22 = sub_2379EE878();
    if (v21 < 1)
    {
      break;
    }

    if (!v2)
    {
      goto LABEL_54;
    }

    while (1)
    {
      v23 = *(v22 + 16) / v2;
      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!v23)
      {
        goto LABEL_40;
      }

      v49[0] = 0;
      MEMORY[0x2383DD970](v49, 8);
      v24 = (v49[0] * v23) >> 64;
      if (v23 > v49[0] * v23)
      {
        v25 = -v23 % v23;
        if (v25 > v49[0] * v23)
        {
          do
          {
            v49[0] = 0;
            MEMORY[0x2383DD970](v49, 8);
          }

          while (v25 > v49[0] * v23);
          v24 = (v49[0] * v23) >> 64;
        }
      }

      v26 = v24 + v2;
      if (__OFADD__(v24, v2))
      {
        goto LABEL_41;
      }

      v27 = -v2;
      if (v24 > v26)
      {
        goto LABEL_42;
      }

      v28 = *(v22 + 16);
      if (v28 < v26)
      {
        goto LABEL_43;
      }

      v29 = v28 - v2;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v29 > *(v22 + 24) >> 1)
      {
        if (v28 <= v29)
        {
          v31 = v28 - v2;
        }

        else
        {
          v31 = v28;
        }

        sub_237BC0EDC(isUniquelyReferenced_nonNull_native, v31, 1, v22);
        v22 = v32;
      }

      if (v24 != v26)
      {
        memmove((v22 + 32 + 8 * v24), (v22 + 32 + 8 * v26), 8 * (*(v22 + 16) - v26));
        v33 = *(v22 + 16);
        v20 = __OFADD__(v33, v27);
        v34 = v33 - v2;
        if (v20)
        {
          goto LABEL_45;
        }

        *(v22 + 16) = v34;
      }

      if (v21-- <= 1)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    OUTLINED_FUNCTION_23_1();
  }

LABEL_35:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v37 = OUTLINED_FUNCTION_26_0(v36);
  *(v37 + 16) = xmmword_237C0BA30;
  if (!v2)
  {
    goto LABEL_53;
  }

  v38 = v37;
  *(v37 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v38 + 40) = sub_237C08CDC();
  *(v38 + 48) = sub_237C08CDC();
  v39 = [a1 strides];
  sub_237C0893C();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_237BC0EDC(0, *(v22 + 16), 0, v22);
  }

  v40 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  OUTLINED_FUNCTION_21_1();
  v47 = sub_2379EEB64(v41, v42, v43, v44, v45, v46);

  return v47;
}

uint64_t sub_2379EE1A0(uint64_t result, float a2, float a3)
{
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  if (result < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = (a3 - a2) / v3;
    v9 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v7 = 0;
    result = v9;
    v8 = *(v9 + 16);
    do
    {
      v10 = result;
      if (v8 >= *(result + 24) >> 1)
      {
        sub_237AC8CD4();
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 4 * v8++ + 32) = (v6 * v7++) + a2;
    }

    while (v4 != v7);
  }

  return result;
}

uint64_t sub_2379EE298(uint64_t a1, float (*a2)(float))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_237AC8CD4();
    v3 = v11;
    v6 = (a1 + 32);
    v7 = *(v11 + 16);
    do
    {
      v8 = *v6;
      if (v7 >= *(v11 + 24) >> 1)
      {
        sub_237AC8CD4();
      }

      v9 = a2(v8);
      *(v11 + 16) = v7 + 1;
      *(v11 + 4 * v7 + 32) = v9;
      ++v6;
      ++v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_2379EE378(uint64_t a1, int a2, uint64_t a3, uint64_t a4, id a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (a3 < 0)
  {
    goto LABEL_62;
  }

  if (a3)
  {
    if (a4 < 0)
    {
LABEL_63:
      __break(1u);
      return;
    }

    v10 = 0;
    while (!a4)
    {
LABEL_42:
      if (++v10 == a3)
      {
        return;
      }
    }

    if (a6[2] >= 2uLL)
    {
      v11 = 0;
      v59 = a6[5];
      v60 = a6[4];
      while (1)
      {
        v12 = [a5 strides];
        sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
        v13 = sub_237C0893C();

        sub_237A254DC();
        v14 = (v13 & 0xC000000000000001) != 0 ? MEMORY[0x2383DCAF0](0, v13) : *(v13 + 32);
        v15 = v14;

        v16 = [v15 integerValue];

        v17 = v10 * v16;
        if ((v10 * v16) >> 64 != (v10 * v16) >> 63)
        {
          break;
        }

        v18 = [a5 strides];
        v19 = sub_237C0893C();

        sub_237A254DC();
        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x2383DCAF0](2, v19);
        }

        else
        {
          v20 = *(v19 + 48);
        }

        v21 = v20;

        v22 = [v21 integerValue];

        v23 = v11 * v22;
        if ((v11 * v22) >> 64 != (v11 * v22) >> 63)
        {
          goto LABEL_45;
        }

        v24 = __OFADD__(v17, v23);
        v25 = v17 + v23;
        if (v24)
        {
          goto LABEL_46;
        }

        v26 = [a5 strides];
        v27 = sub_237C0893C();

        sub_237A254DC();
        if ((v27 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x2383DCAF0](0, v27);
        }

        else
        {
          v28 = *(v27 + 32);
        }

        v29 = v28;

        v30 = [v29 integerValue];

        v31 = v10 * v30;
        if ((v10 * v30) >> 64 != (v10 * v30) >> 63)
        {
          goto LABEL_47;
        }

        v32 = [a5 strides];
        v33 = sub_237C0893C();

        sub_237A254DC();
        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x2383DCAF0](1, v33);
        }

        else
        {
          v34 = *(v33 + 40);
        }

        v35 = v34;

        v36 = [v35 integerValue];

        v24 = __OFADD__(v31, v36);
        v37 = &v36[v31];
        if (v24)
        {
          goto LABEL_48;
        }

        v38 = [a5 strides];
        v39 = sub_237C0893C();

        sub_237A254DC();
        if ((v39 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x2383DCAF0](2, v39);
        }

        else
        {
          v40 = *(v39 + 48);
        }

        v41 = v40;

        v42 = [v41 integerValue];

        v43 = v11 * v42;
        if ((v11 * v42) >> 64 != (v11 * v42) >> 63)
        {
          goto LABEL_49;
        }

        v24 = __OFADD__(v37, v43);
        v44 = &v37[v43];
        if (v24)
        {
          goto LABEL_50;
        }

        v45 = v60[2];
        if (!v45)
        {
          goto LABEL_51;
        }

        v46 = v60[4];
        if (v10 >= *(v46 + 16))
        {
          goto LABEL_52;
        }

        if (v45 == 1)
        {
          goto LABEL_53;
        }

        v47 = v60[5];
        if (v10 >= *(v47 + 16))
        {
          goto LABEL_54;
        }

        if (v10 >= *(*a7 + 16))
        {
          goto LABEL_55;
        }

        v48 = v59[2];
        if (!v48)
        {
          goto LABEL_56;
        }

        v49 = v59[4];
        if (v10 >= *(v49 + 16))
        {
          goto LABEL_57;
        }

        if (v48 == 1)
        {
          goto LABEL_58;
        }

        v50 = v59[5];
        if (v10 >= *(v50 + 16))
        {
          goto LABEL_59;
        }

        if (v10 >= *(*a8 + 16))
        {
          goto LABEL_60;
        }

        ++v11;
        v51 = *(a1 + 8 * v25);
        v52 = *(a1 + 8 * v44);
        v53 = *(*a7 + 4 * v10 + 32) + ((*(v46 + 4 * v10 + 32) * v51) + (*(v47 + 4 * v10 + 32) * v52));
        v54 = *(*a8 + 4 * v10 + 32) + ((*(v49 + 4 * v10 + 32) * v51) + (*(v50 + 4 * v10 + 32) * v52));
        *(a1 + 8 * v25) = v53;
        *(a1 + 8 * v44) = v54;
        if (a4 == v11)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
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
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }
}

uint64_t sub_2379EE878()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  sub_237C08BDC();
  return v1;
}

uint64_t sub_2379EE8E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v24 = MEMORY[0x277D84F90];
  sub_237AC8CD4();
  result = v24;
  v22 = a2;
  v23 = v4;
  v21 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v25 = result;
    v15 = *(result + 16);
    if (v15 >= *(result + 24) >> 1)
    {
      v20 = v12;
      sub_237AC8CD4();
      v12 = v20;
      result = v25;
    }

    --v11;
    *(result + 16) = v15 + 1;
    *(result + 4 * v15 + 32) = v13 * v14;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v23 != v6)
      {
        if (v6 >= v23)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v16 = *(v21 + 32 + 4 * v6);
        v17 = *(v22 + 32 + 4 * v6);
        v26 = result;
        v18 = *(result + 16);
        if (v18 >= *(result + 24) >> 1)
        {
          v19 = v12;
          sub_237AC8CD4();
          v12 = v19;
          result = v26;
        }

        *(result + 16) = v18 + 1;
        *(result + 4 * v18 + 32) = v16 * v17;
        ++v6;
      }

      return result;
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
  return result;
}

void *sub_2379EEAB4@<X0>(id a1@<X2>, void *result@<X0>, void *a3@<X8>)
{
  if (result)
  {
    result = sub_2379E007C(result, [a1 count]);
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2379EEB10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_2379EEB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  aBlock[6] = *MEMORY[0x277D85DE8];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v12 = sub_237C0892C();

  v13 = sub_237C0892C();

  if (a5)
  {
    aBlock[4] = a5;
    aBlock[5] = a6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2379EEB10;
    aBlock[3] = &block_descriptor;
    v14 = _Block_copy(aBlock);
  }

  else
  {
    v14 = 0;
  }

  aBlock[0] = 0;
  v15 = [v7 initWithDataPointer:a1 shape:v12 dataType:a3 strides:v13 deallocator:v14 error:aBlock];
  _Block_release(v14);

  if (v15)
  {
    v16 = aBlock[0];
  }

  else
  {
    v17 = aBlock[0];
    sub_237C0593C();

    swift_willThrow();
  }

  return v15;
}

unint64_t sub_2379EED24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_2379EED84(*(a2 + 16));
  if (result < v2)
  {
    return *(a2 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_2379EED84(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2383DD970](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2383DD970](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2379EEE10()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v14 = 0;
      MEMORY[0x2383DD970](&v14, 8);
      v5 = (v14 * v2) >> 64;
      if (v2 > v14 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v14 * v2)
        {
          do
          {
            v14 = 0;
            MEMORY[0x2383DD970](&v14, 8);
          }

          while (v6 > v14 * v2);
          v5 = (v14 * v2) >> 64;
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

        v9 = *(v1 + 32 + 4 * v4);
        v10 = *(v1 + 32 + 4 * v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237A1FCDC();
          v1 = v11;
        }

        v12 = *(v1 + 16);
        if (v4 >= v12)
        {
          goto LABEL_22;
        }

        *(v1 + 32 + 4 * v4) = v10;
        if (v7 >= v12)
        {
          goto LABEL_23;
        }

        *(v1 + 32 + 4 * v7) = v9;
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

void sub_2379EEF50(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_2379EED84(0x20000000000001uLL);
  }
}

uint64_t sub_2379EEFC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  if (!v7)
  {
    goto LABEL_7;
  }

  v11 = *(v9 + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
    goto LABEL_15;
  }

  result = sub_237A1DC9C((v9 + 32 + 8 * a2), v13, &v10[8 * a3]);
  v14 = *(v9 + 16);
  v12 = __OFADD__(v14, v7);
  v15 = v14 + v7;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v15;
LABEL_7:
  if (a3 >= 1)
  {
    if (*(a4 + 16) == a3)
    {
      memcpy(v10, (a4 + 32), 8 * a3);
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_1_1(unint64_t a1@<X8>)
{

  sub_237BC0EB4(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return sub_237A254DC();
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return sub_237A59760();
}

uint64_t OUTLINED_FUNCTION_6_1()
{
  v2 = MEMORY[0x277D860E8];

  return sub_2379EE298(v0, v2);
}

uint64_t OUTLINED_FUNCTION_7_2()
{
  v2 = MEMORY[0x277D86000];

  return sub_2379EE298(v0, v2);
}

id OUTLINED_FUNCTION_8_2()
{

  return sub_237AC8938(v0, 65600);
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return sub_237A254DC();
}

id OUTLINED_FUNCTION_14_1()
{

  return [v1 (v0 + 1415)];
}

uint64_t OUTLINED_FUNCTION_15_1()
{
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1)
{

  return sub_237C0893C();
}

void *OUTLINED_FUNCTION_19_1(void *__src, uint64_t a2)
{
  if (a2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = a2;
  }

  return memcpy(v2, __src, 8 * v5);
}

uint64_t OUTLINED_FUNCTION_20_0()
{
}

void OUTLINED_FUNCTION_22_1()
{

  JUMPOUT(0x2383DCAF0);
}

void OUTLINED_FUNCTION_23_1()
{

  JUMPOUT(0x2383DCAF0);
}

id OUTLINED_FUNCTION_24_1()
{

  return [v1 (v0 + 3219)];
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_27_0()
{

  JUMPOUT(0x2383DCAF0);
}

uint64_t sub_2379EF394()
{

  return swift_deallocClassInstance();
}

uint64_t MLImageClassifier.CustomFeatureExtractor.modelPath.getter()
{
  sub_237C05ADC();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_37_0();

  return v1(v0);
}

uint64_t MLImageClassifier.CustomFeatureExtractor.modelPath.setter()
{
  sub_237C05ADC();
  OUTLINED_FUNCTION_4();
  v0 = OUTLINED_FUNCTION_30();

  return v1(v0);
}

uint64_t MLImageClassifier.CustomFeatureExtractor.outputName.getter()
{
  OUTLINED_FUNCTION_31_0();

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLImageClassifier.CustomFeatureExtractor.outputName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_0();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t MLImageClassifier.CustomFeatureExtractor.init(modelPath:outputName:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_31_0();
  v7 = (a3 + v6);
  sub_237C05ADC();
  OUTLINED_FUNCTION_4();
  v8 = OUTLINED_FUNCTION_90();
  result = v9(v8);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

void sub_2379EF614()
{
  v1 = v0;
  v2 = (v0 + *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20));
  v3 = v2[1];
  if (v3 && ((v4 = *v2 & 0xFFFFFFFFFFFFLL, (v3 & 0x2000000000000000) != 0) ? (v5 = HIBYTE(v3) & 0xF) : (v5 = v4), !v5))
  {
    OUTLINED_FUNCTION_20_1();
    v10 = 0xD000000000000034;
  }

  else
  {
    v6 = [objc_opt_self() defaultManager];
    sub_237C05A9C();
    v7 = sub_237C086BC();

    v8 = [v6 isReadableFileAtPath_];

    if (v8)
    {
      return;
    }

    sub_237C08EDC();

    strcpy(v13, "The model at ");
    HIWORD(v13[1]) = -4864;
    v9 = sub_237C05A9C();
    MEMORY[0x2383DC360](v9);

    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000011);
    v10 = v13[0];
    v1 = v13[1];
  }

  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v11 = swift_allocError();
  *v12 = v10;
  v12[1] = v1;
  OUTLINED_FUNCTION_52(v11, v12);
}

uint64_t sub_2379EF7A4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_237C0733C();
  v2[6] = v3;
  OUTLINED_FUNCTION_1(v3);
  v2[7] = v4;
  v2[8] = OUTLINED_FUNCTION_19();
  v5 = sub_237C06B0C();
  v2[9] = v5;
  OUTLINED_FUNCTION_1(v5);
  v2[10] = v6;
  v2[11] = OUTLINED_FUNCTION_19();
  v7 = sub_237C075DC();
  v2[12] = v7;
  OUTLINED_FUNCTION_1(v7);
  v2[13] = v8;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD38, &qword_237C0BBC0);
  OUTLINED_FUNCTION_20(v9);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v10 = sub_237C0754C();
  v2[20] = v10;
  OUTLINED_FUNCTION_1(v10);
  v2[21] = v11;
  v2[22] = OUTLINED_FUNCTION_19();
  v12 = sub_237C07F1C();
  v2[23] = v12;
  OUTLINED_FUNCTION_1(v12);
  v2[24] = v13;
  v2[25] = OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](sub_2379EF9F0);
}

uint64_t sub_2379EF9F0()
{
  sub_2379F0310(*(v0 + 200));
  sub_2379F1FC0();
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_2379EFB70;
  v2 = *(v0 + 200);

  return sub_237A4288C(v2);
}

uint64_t sub_2379EFB70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_2379F022C;
  }

  else
  {
    v4 = sub_2379EFC84;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2379EFC84()
{
  v1 = v0[19];
  v2 = sub_237C07E8C();
  sub_237B3B424(v2, v1);

  v3 = sub_237C07B9C();
  result = OUTLINED_FUNCTION_17_0(v1);
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  sub_237C07B6C();
  if ((*(v8 + 88))(v6, v7) != *MEMORY[0x277D25120])
  {
    v33 = v0[16];
    v34 = *(v0[13] + 8);
    v34(v0[15], v0[12]);
    OUTLINED_FUNCTION_18_2();
    v36 = *(v35 + 8);
    v37 = OUTLINED_FUNCTION_30();
    v36(v37);
    sub_237C08EDC();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000027);
    v38 = sub_237C07E8C();
    sub_237B3B424(v38, v33);

    result = OUTLINED_FUNCTION_17_0(v33);
    if (!v5)
    {
      v39 = v0[24];
      v61 = v0[25];
      v57 = v0[27];
      v59 = v0[23];
      v40 = v0[14];
      v41 = v0[12];
      sub_237C07B6C();
      v42 = OUTLINED_FUNCTION_30();
      v36(v42);
      sub_237C0907C();
      v34(v40, v41);
      v43 = OUTLINED_FUNCTION_8_3();
      MEMORY[0x2383DC360](v43, 0xE90000000000002ELL);
      v45 = v0[2];
      v44 = v0[3];
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v46 = swift_allocError();
      *v47 = v45;
      v47[1] = v44;
      OUTLINED_FUNCTION_2_4(v46, v47);
      swift_willThrow();

      (*(v39 + 8))(v61, v59);
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  v14 = v0[15];
  (*(v0[13] + 96))(v14, v0[12]);
  (*(v10 + 32))(v9, v14, v11);
  OUTLINED_FUNCTION_18_2();
  v16 = *(v15 + 8);
  v16(v12, v3);
  sub_237C0752C();
  sub_237C0753C();
  sub_237C06AFC();
  v17 = sub_237C07E8C();
  sub_237B3B424(v17, v13);

  result = OUTLINED_FUNCTION_17_0(v13);
  if (v5)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v0[17];
  sub_237C07B4C();
  v19 = OUTLINED_FUNCTION_30();
  (v16)(v19);
  v20 = sub_237C07EBC();
  sub_237B3B424(v20, v18);

  result = OUTLINED_FUNCTION_17_0(v18);
  if (v5)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v22 = v0[27];
  v21 = v0[28];
  sub_237C07B4C();
  v23 = OUTLINED_FUNCTION_30();
  (v16)(v23);
  [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v24 = v22;
  sub_237C0732C();
  v25 = v0[27];
  v27 = v0[24];
  v26 = v0[25];
  v28 = v0[22];
  v29 = v0[21];
  v58 = v0[20];
  v60 = v0[23];
  if (!v21)
  {
    v50 = v0[10];
    v49 = v0[11];
    v55 = v0[9];
    v56 = v0[25];
    v52 = v0[6];
    v51 = v0[7];
    v53 = v0[22];
    v54 = v0[8];
    sub_237C06B4C();

    (*(v51 + 8))(v54, v52);
    (*(v50 + 8))(v49, v55);
    (*(v29 + 8))(v53, v58);
    (*(v27 + 8))(v56, v60);

    OUTLINED_FUNCTION_8();
    goto LABEL_10;
  }

  v30 = v0[10];
  v31 = v0[11];
  v32 = v0[9];

  (*(v30 + 8))(v31, v32);
  (*(v29 + 8))(v28, v58);
  (*(v27 + 8))(v26, v60);
LABEL_9:
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_8();
LABEL_10:

  return v48();
}

uint64_t sub_2379F022C()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  OUTLINED_FUNCTION_15_2();

  OUTLINED_FUNCTION_8();

  return v1();
}

uint64_t sub_2379F0310@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v201 = a1;
  v197 = sub_237C0757C();
  OUTLINED_FUNCTION_0();
  v196 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v195 = v6 - v5;
  OUTLINED_FUNCTION_41_0();
  v200 = sub_237C075AC();
  OUTLINED_FUNCTION_0();
  v199 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v198 = v10 - v9;
  OUTLINED_FUNCTION_41_0();
  v193 = sub_237C0778C();
  OUTLINED_FUNCTION_0();
  v192 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v191 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD40, &qword_237C0BBC8);
  v16 = OUTLINED_FUNCTION_20(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v19);
  v206 = &v184[-v20];
  OUTLINED_FUNCTION_41_0();
  v210 = sub_237C07A8C();
  OUTLINED_FUNCTION_0();
  v220 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v23);
  v205 = &v184[-v24];
  OUTLINED_FUNCTION_41_0();
  v214 = sub_237C075DC();
  OUTLINED_FUNCTION_0();
  v219 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v27);
  v211 = &v184[-v28];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD38, &qword_237C0BBC0);
  v30 = OUTLINED_FUNCTION_20(v29);
  MEMORY[0x28223BE20](v30);
  v212 = &v184[-v31];
  OUTLINED_FUNCTION_41_0();
  v216 = sub_237C07BDC();
  OUTLINED_FUNCTION_0();
  v203 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_0();
  v204 = v35 - v34;
  OUTLINED_FUNCTION_41_0();
  v209 = sub_237C07C5C();
  OUTLINED_FUNCTION_0();
  v207 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_0();
  v208 = v39 - v38;
  OUTLINED_FUNCTION_41_0();
  v213 = sub_237C07B1C();
  OUTLINED_FUNCTION_0();
  v215 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_0();
  v44 = v43 - v42;
  sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v217 = v46;
  v218 = v45;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v47);
  v49 = &v184[-v48];
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_2_0();
  v51 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_0();
  v57 = v56 - v55;
  v58 = OUTLINED_FUNCTION_23_2();
  v59(v58);
  v60 = v221;
  result = sub_237C07D8C();
  if (v60)
  {
    return result;
  }

  v62 = v44;
  v186 = 0;
  v63 = v57;
  v64 = v215;
  v65 = v216;
  v187 = v2;
  v189 = v51;
  v66 = v63;
  sub_237C07E3C();
  v67 = v217;
  v68 = v218;
  v69 = (*(v217 + 88))(v49, v218);
  v185 = *MEMORY[0x277D25318];
  if (v69 == v185)
  {
    v70 = OUTLINED_FUNCTION_9_1();
    v71(v70);
    v72 = v213;
    (*(v64 + 32))(v62, v49, v213);
    v221 = sub_237C07B0C();
    v188 = sub_237C075EC();
    (*(v64 + 8))(v62, v72);
    v73 = v189;
  }

  else if (v69 == *MEMORY[0x277D25398])
  {
    v74 = OUTLINED_FUNCTION_9_1();
    v75(v74);
    v76 = OUTLINED_FUNCTION_30();
    v77(v76);
    v221 = sub_237C07C4C();
    v188 = sub_237C07C0C();
    v78 = OUTLINED_FUNCTION_30();
    v79(v78);
    v73 = v189;
  }

  else
  {
    v73 = v189;
    if (v69 != *MEMORY[0x277D25388])
    {
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      swift_allocError();
      OUTLINED_FUNCTION_10_1();
      *v129 = v128 + 57;
      v129[1] = 0x8000000237C17470;
      OUTLINED_FUNCTION_2_4(v130, v129);
      swift_willThrow();
      (*(v53 + 8))(v66, v73);
      return (*(v67 + 8))(v49, v68);
    }

    v80 = OUTLINED_FUNCTION_9_1();
    v81(v80);
    v83 = v203;
    v82 = v204;
    v84 = OUTLINED_FUNCTION_30();
    v85(v84);
    v221 = sub_237C07BCC();
    v188 = sub_237C07BBC();
    (*(v83 + 8))(v82, v65);
  }

  v86 = v66;
  v87 = *(sub_237C07E8C() + 16);

  if (v87 != 1)
  {

    OUTLINED_FUNCTION_19_2();
    v222 = 0;
    v223 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000002CLL, 0x8000000237C174E0);
    v111 = *(sub_237C07E8C() + 16);

    v224 = v111;
    v112 = sub_237C0924C();
    MEMORY[0x2383DC360](v112);

    v113 = OUTLINED_FUNCTION_8_3();
    MEMORY[0x2383DC360](v113, 0xE90000000000002ELL);
    v114 = v222;
    v115 = v223;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v116 = swift_allocError();
    *v117 = v114;
    v117[1] = v115;
    OUTLINED_FUNCTION_2_4(v116, v117);
    swift_willThrow();
    return (*(v53 + 8))(v66, v73);
  }

  v88 = v53;
  v89 = sub_237C07E8C();
  v90 = v212;
  sub_237B3B424(v89, v212);

  v91 = sub_237C07B9C();
  if (__swift_getEnumTagSinglePayload(v90, 1, v91) == 1)
  {
    __break(1u);
    goto LABEL_57;
  }

  sub_237C07B6C();
  v92 = OUTLINED_FUNCTION_23_2();
  if (v93(v92) != *MEMORY[0x277D25120])
  {

    OUTLINED_FUNCTION_19_2();
    v118 = OUTLINED_FUNCTION_23_2();
    v119(v118);
    OUTLINED_FUNCTION_18_2();
    v120 = OUTLINED_FUNCTION_30();
    v121(v120);
    OUTLINED_FUNCTION_20_1();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    OUTLINED_FUNCTION_10_1();
    *v123 = v122 - 15;
    v123[1] = v91;
    OUTLINED_FUNCTION_2_4(v124, v123);
    swift_willThrow();
    v125 = OUTLINED_FUNCTION_24_2();
    return v127(v125, v126);
  }

  v94 = OUTLINED_FUNCTION_23_2();
  v95(v94);
  v211 = *(v91 - 8);
  v96 = OUTLINED_FUNCTION_30();
  v97(v96);
  v98 = (v187 + *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20));
  v99 = v98[1];
  if (v99)
  {
    v213 = v53;
    v100 = 0;
    v101 = *v98;
    v103 = v220;
    v102 = v221;
    v104 = *(v221 + 16);
    v215 = v86;
    v216 = v220 + 16;
    v105 = (v220 + 8);
    v106 = v210;
    v107 = v205;
    while (1)
    {
      if (v104 == v100)
      {

        OUTLINED_FUNCTION_19_2();
        OUTLINED_FUNCTION_20_1();
        sub_2379E8AF0();
        OUTLINED_FUNCTION_50();
        swift_allocError();
        OUTLINED_FUNCTION_10_1();
        *v135 = v136;
        v135[1] = v99;
        OUTLINED_FUNCTION_2_4(v137, v135);
        swift_willThrow();
        return (*(v213 + 8))(v215, v189);
      }

      if (v100 >= *(v102 + 16))
      {
        break;
      }

      (*(v103 + 16))(v107, v102 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v100, v106);
      v109 = sub_237C079CC() == v101 && v99 == v108;
      if (v109)
      {

        (*v105)(v107, v106);
LABEL_27:
        sub_237A481B4(0, v100 + 1);
        v99 = v138;
        v140 = v139;
        v142 = v141;

        if ((v142 & 1) == 0)
        {
LABEL_28:
          v143 = OUTLINED_FUNCTION_37_0();
          sub_237A55EA8(v143, v144, v140, v142);
          v146 = v145;
          v134 = v189;
          v86 = v215;
          v131 = v210;
          v88 = v213;
          v132 = v206;
LABEL_35:
          swift_unknownObjectRelease();
          v133 = v146;
          goto LABEL_36;
        }

        sub_237C092CC();
        swift_unknownObjectRetain_n();
        v147 = swift_dynamicCastClass();
        v134 = v189;
        v86 = v215;
        v88 = v213;
        if (!v147)
        {
          swift_unknownObjectRelease();
          v147 = MEMORY[0x277D84F90];
        }

        v148 = *(v147 + 16);

        if (__OFSUB__(v142 >> 1, v140))
        {
          __break(1u);
        }

        else if (v148 == (v142 >> 1) - v140)
        {
          v149 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v133 = v149;
          v131 = v210;
          v132 = v206;
          if (v133)
          {
            goto LABEL_36;
          }

          v146 = MEMORY[0x277D84F90];
          goto LABEL_35;
        }

        swift_unknownObjectRelease_n();
        goto LABEL_28;
      }

      v110 = sub_237C0929C();

      (*v105)(v107, v106);
      if (v110)
      {
        goto LABEL_27;
      }

      ++v100;
      v103 = v220;
      v102 = v221;
    }

    __break(1u);
    goto LABEL_53;
  }

  v131 = v210;
  v132 = v206;
  v133 = v221;
  v134 = v189;
LABEL_36:
  if (!*(v133 + 16))
  {

    OUTLINED_FUNCTION_19_2();
    OUTLINED_FUNCTION_20_1();
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    OUTLINED_FUNCTION_10_1();
    *v173 = v174 - 1;
    v173[1] = v99;
LABEL_49:
    OUTLINED_FUNCTION_2_4(v172, v173);
    swift_willThrow();
    v127 = *(v88 + 8);
    v125 = v86;
    v126 = v134;
    return v127(v125, v126);
  }

  v221 = v133;
  sub_237A9A9FC(v133, v132);
  OUTLINED_FUNCTION_16_1(v132);
  if (v109)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v150 = sub_237C0767C();
  v151 = *(v220 + 8);
  v151(v132, v131);
  v152 = *(v150 + 16);

  if (v152 != 1)
  {
    v222 = 0;
    v223 = 0xE000000000000000;
    sub_237C08EDC();
    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000031);
    OUTLINED_FUNCTION_26_1();
    sub_237A9A9FC(v221, v175);
    OUTLINED_FUNCTION_16_1(v150);
    if (v109)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_19_2();
    v176 = v150;
    v177 = sub_237C0767C();
    v151(v176, v131);
    v178 = *(v177 + 16);

    v224 = v178;
    v179 = sub_237C0924C();
    MEMORY[0x2383DC360](v179);

    v180 = OUTLINED_FUNCTION_8_3();
    MEMORY[0x2383DC360](v180, 0xE90000000000002ELL);
    v181 = v222;
    v182 = v223;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v172 = swift_allocError();
    *v173 = v181;
    v173[1] = v182;
    goto LABEL_49;
  }

  v222 = 0;
  v223 = 0xE000000000000000;
  OUTLINED_FUNCTION_26_1();
  v153 = v221;
  sub_237A9A9FC(v221, v154);
  OUTLINED_FUNCTION_16_1(v150);
  if (v109)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v155 = v150;
  v156 = sub_237C079CC();
  v158 = v157;
  v151(v155, v131);
  MEMORY[0x2383DC360](v156, v158);

  MEMORY[0x2383DC360](0x6E657474616C46, 0xE700000000000000);
  v216 = v222;
  OUTLINED_FUNCTION_26_1();
  sub_237A9A9FC(v153, v159);
  OUTLINED_FUNCTION_16_1(v156);
  if (v109)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v160 = sub_237C0767C();
  v151(v156, v131);
  if (!*(v160 + 16))
  {
LABEL_61:

    __break(1u);
    return result;
  }

  (*(v192 + 104))(v191, *MEMORY[0x277D25188], v193);
  sub_237C07A1C();

  v161 = OUTLINED_FUNCTION_37_0();
  v162(v161);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    sub_237BC108C();
    v221 = v183;
  }

  v163 = v200;
  v164 = v199;
  v165 = v221;
  v166 = *(v221 + 16);
  v167 = v202;
  if (v166 >= *(v221 + 24) >> 1)
  {
    sub_237BC108C();
  }

  v221 = v165;
  *(v165 + 16) = v166 + 1;
  (*(v220 + 32))(v165 + ((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v166, v167, v210);
  OUTLINED_FUNCTION_26_1();
  sub_237C0759C();
  (*(v196 + 104))(v195, *MEMORY[0x277D25100], v197);
  sub_237C0758C();
  sub_237C07F0C();
  sub_237C07DFC();
  sub_237C07E0C();
  sub_237C07E8C();
  sub_237C07E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  *(swift_allocObject() + 16) = xmmword_237C0B660;
  v168 = v194;
  (*(v164 + 16))(v194, v167, v163);
  (*(v219 + 104))(v168, *MEMORY[0x277D250A0], v214);
  sub_237C07B3C();
  sub_237C07ECC();
  v169 = v190;
  sub_237C07AEC();
  (*(v217 + 104))(v169, v185, v218);
  sub_237C07E4C();
  (*(v164 + 8))(v167, v163);
  v170 = OUTLINED_FUNCTION_24_2();
  return v171(v170);
}

uint64_t sub_2379F1674()
{
  v1 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v2 = OUTLINED_FUNCTION_20(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v7 = OUTLINED_FUNCTION_25_2();
  sub_2379F1A00(v7, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    sub_2379F1A64(v0, v5);
    sub_2379EF614();
    return sub_2379F1AC8(v5);
  }

  else if ((*(v0 + 8) & 1) == 0)
  {
    result = sub_2379F1828(*v0, &unk_284AC0190);
    if ((result & 1) == 0)
    {
      sub_237C08EDC();

      v10 = sub_237C0924C();
      MEMORY[0x2383DC360](v10);

      OUTLINED_FUNCTION_21_2();
      MEMORY[0x2383DC360](0xD000000000000012);
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v11 = swift_allocError();
      *v12 = 0x6E6F697369766552;
      v12[1] = 0xE900000000000020;
      return OUTLINED_FUNCTION_52(v11, v12);
    }
  }

  return result;
}

BOOL sub_2379F1828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t MLImageClassifier.FeatureExtractorType.description.getter()
{
  v0 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_90();
  sub_2379F1A00(v9, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return 0x697250656E656353;
  }

  sub_2379F1A64(v8, v4);
  OUTLINED_FUNCTION_12_2(*(v4 + *(v0 + 20) + 8));
  v11 = OUTLINED_FUNCTION_90();
  MEMORY[0x2383DC360](v11);

  v12 = v14;
  sub_2379F1AC8(v4);
  return v12;
}

uint64_t sub_2379F19C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2379F1A00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379F1A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379F1AC8(uint64_t a1)
{
  v2 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MLImageClassifier.FeatureExtractorType.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_25_2();
  sub_2379F1A00(v8, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v11 = OUTLINED_FUNCTION_90();
    sub_2379F1A64(v11, v12);
    v13 = (v6 + *(v2 + 20));
    v14 = v13[1];
    if (v14)
    {
      v15 = *v13;
      v16 = v13[1];
    }

    else
    {
      v16 = 0x8000000237C17420;
      v15 = 0xD000000000000015;
    }

    OUTLINED_FUNCTION_12_2(v14);
    MEMORY[0x2383DC360](v15, v16);

    v18 = v19;
    v17 = v20;
    result = sub_2379F1AC8(v6);
  }

  else
  {
    v17 = 0xEA0000000000746ELL;
    v18 = 0x697250656E656353;
  }

  a1[3] = MEMORY[0x277D837D0];
  *a1 = v18;
  a1[1] = v17;
  return result;
}

void sub_2379F1C84(uint64_t a1)
{
  sub_2379F1CF8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MLImageClassifier.CustomFeatureExtractor(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2379F1CF8()
{
  if (!qword_27DE9AD10)
  {
    sub_2379F1F74(0, &qword_27DE9AD18, MEMORY[0x277D83B88]);
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9AD10);
    }
  }
}

uint64_t sub_2379F1D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C05ADC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2379F1E34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_237C05ADC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_2379F1EE0(uint64_t a1)
{
  sub_237C05ADC();
  if (v1 <= 0x3F)
  {
    sub_2379F1F74(319, &qword_27DE9AD30, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2379F1F74(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_237C08D2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2379F1FC0()
{
  result = qword_27DE9AA38;
  if (!qword_27DE9AA38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AA38);
  }

  return result;
}

double OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1)
{
  strcpy((v1 - 64), "Custom model: ");
  *(v1 - 49) = -18;
}

uint64_t OUTLINED_FUNCTION_15_2()
{
}

uint64_t OUTLINED_FUNCTION_19_2()
{
}

uint64_t sub_2379F21A4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v50 = *a3;
  v51 = *a1;
  v54 = 0;
  v55 = 0xE000000000000000;
  HIDWORD(v49) = v7;
  LOBYTE(v52) = v7;
  if (MLDataTable.size.getter() < 1)
  {
    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000017);
    goto LABEL_30;
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = (a2 + 40);
  while (1)
  {
    v10 = *v9;
    v57 = *(v9 - 1);
    if ((v49 & 0x100000000) != 0)
    {
      v11 = v9;
      v12 = v10;

      v13 = MEMORY[0x2383DDAC0](0);
      if (!v13)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        swift_unexpectedError();
        __break(1u);
        JUMPOUT(0x2379F25E0);
      }

      v14 = v13;
      v15 = type metadata accessor for CMLSequence();
      v16 = OUTLINED_FUNCTION_11_2(v15);
      *(v16 + 16) = v14;
      *(v16 + 24) = 1;
      v17 = MEMORY[0x2383DDAC0](0);
      if (!v17)
      {
        goto LABEL_36;
      }

      v18 = v17;
      v19 = OUTLINED_FUNCTION_11_2(v15);
      *(v19 + 16) = v18;
      *(v19 + 24) = 1;
      v20 = MEMORY[0x277D84F98];
      v21 = v12;
      v9 = v11;
    }

    else
    {
      v22 = *(v6[2] + 16);
      v47 = v10;

      v23 = sub_237B104A0(v22, 0);
      if (v4)
      {

        v24 = MEMORY[0x2383DDAC0](0);
        if (!v24)
        {
          goto LABEL_37;
        }

        v25 = v24;
        v4 = 0;
      }

      else
      {
        v25 = v23;
        if (!v23)
        {
          goto LABEL_38;
        }
      }

      v26 = type metadata accessor for CMLSequence();
      v27 = OUTLINED_FUNCTION_11_2(v26);
      *(v27 + 16) = v25;
      *(v27 + 24) = 1;

      sub_237B6C208(&v51);
      sub_2379DBC9C(v6, 0);

      v20 = sub_237B6C2FC(v28, v29, v30, v31, v32, v33, v34, v35, v47, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, vars0, vars8);
      sub_2379DBC9C(v6, 0);
      v21 = v48;
    }

    if (*(v20 + 16))
    {
      v36 = sub_237ACAC78(v57, v21);
      if (v37)
      {
        break;
      }
    }

    if (v50 != 7)
    {
      goto LABEL_29;
    }

LABEL_26:

    v9 += 2;
    if (!--v8)
    {
      goto LABEL_30;
    }
  }

  v38 = sub_237A2E9C8(*(*(v20 + 56) + 8 * v36));
  if (v4)
  {
    goto LABEL_39;
  }

  sub_237AFC548(v38, &v51);

  v39 = v53;
  switch(v53)
  {
    case 1:
      v39 = 1;
      break;
    case 2:
      sub_2379E8CE8(v51, v52, 2);
      v39 = 2;
      break;
    case 3:
      sub_2379E8CE8(v51, v52, 3);
      v39 = 3;
      break;
    case 4:
      sub_2379E8CE8(v51, v52, 4);
      v39 = 4;
      break;
    case 5:
      sub_2379E8CE8(v51, v52, 5);
      v39 = 5;
      break;
    case 6:
      v39 = 6;
      break;
    default:
      break;
  }

  if (v39 == v50)
  {
    goto LABEL_26;
  }

LABEL_29:
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](v57, v21);

  MEMORY[0x2383DC360](0x7369206570797420, 0xEF206120746F6E20);
  sub_237BF1D0C(v50);
  MEMORY[0x2383DC360](2606, 0xE200000000000000);
  MEMORY[0x2383DC360](v51, v52);

LABEL_30:
  v41 = v54;
  v40 = v55;
  v42 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v42 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {
  }

  v43 = sub_237C08C3C();
  sub_237BABE74(v41, v40, v43);

  sub_2379E8AF0();
  v44 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  *v45 = v41;
  v45[1] = v40;
  return OUTLINED_FUNCTION_2_5(v44, v45);
}

void sub_2379F25FC()
{
  OUTLINED_FUNCTION_74();
  v35 = v1;
  v36 = v2;
  v4 = v3;
  v6 = v5;
  v34 = v7;
  v8 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  if (sub_237C0594C())
  {
    if (sub_237C059CC())
    {
      v37 = v4;
      (*(v10 + 104))(v14, *MEMORY[0x277CC91D8], v8);
      sub_2379F3408();
      sub_237C05ACC();
      (*(v10 + 8))(v14, v8);
      v23 = v34;
      v22 = v35;
      v24 = v36;
      sub_237C05A3C();
      (*(v17 + 8))(v21, v15);
      OUTLINED_FUNCTION_4_5();
      sub_237C08EDC();
      OUTLINED_FUNCTION_8_4();
      MEMORY[0x2383DC360](0xD000000000000041, 0x8000000237C17700);
      v25 = sub_237C059DC();
      MEMORY[0x2383DC360](v25);

      MEMORY[0x2383DC360](11815, 0xE200000000000000);
      sub_237C08C1C();
      v26 = OUTLINED_FUNCTION_7_3();
      sub_237BABE74(v26, v4, v27);
    }

    else
    {
      v23 = v34;
      (*(v17 + 16))(v34, v6, v15);
      v22 = v35;
      v24 = v36;
    }

    if (sub_237C0597C() == v22 && v29 == v24)
    {
    }

    else
    {
      v31 = sub_237C0929C();

      if ((v31 & 1) == 0)
      {
        OUTLINED_FUNCTION_4_5();
        sub_237C08EDC();
        OUTLINED_FUNCTION_8_4();
        MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C17780);
        MEMORY[0x2383DC360](v22, v24);
        MEMORY[0x2383DC360](0xD000000000000033, 0x8000000237C177A0);
        sub_237C08C1C();
        v32 = OUTLINED_FUNCTION_7_3();
        sub_237BABE74(v32, v37, v33);

        sub_237C05A0C();
      }
    }

    sub_237A5BED8(v23, 0);
    if (v0)
    {
      (*(v17 + 8))(v23, v15);
    }
  }

  else
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v28 = 0xD000000000000027;
    *(v28 + 8) = 0x8000000237C17750;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_2379F29AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = a1;

  v8 = sub_237A9AA14(v7, v6);
  if (v9)
  {
    if (v8 == 47 && v9 == 0xE100000000000000)
    {
    }

    else
    {
      v11 = sub_237C0929C();

      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    MEMORY[0x2383DC360](0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    MEMORY[0x2383DC360](a3, a4);

    sub_237C08EDC();
    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000041);
    MEMORY[0x2383DC360](a3, a4);
    MEMORY[0x2383DC360](11815, 0xE200000000000000);
    sub_237C08C1C();
    v12 = OUTLINED_FUNCTION_7_3();
    sub_237BABE74(v12, 0xE000000000000000, v13);

    v7 = a1;
    v6 = a2;
  }

LABEL_10:
  sub_2379F33C4();
  v14 = sub_2379E3E14(v7, v6);
  v15 = [v14 stringByExpandingTildeInPath];

  sub_237C086EC();
  sub_237C059BC();
}

void sub_2379F2B84()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v4 = v3;
  v27 = v5;
  if (*(v0 + 8))
  {
    v6 = MEMORY[0x2383DDAC0](0);
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = type metadata accessor for CMLSequence();
    v9 = OUTLINED_FUNCTION_11_2(v8);
    v10 = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = 1;
  }

  else
  {
    v11 = *v0;

    sub_237B6C208(&v25);
    sub_2379DBC9C(v11, 0);
    v10 = v25;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  v12 = *(v2 + 16);
  v13 = (v2 + 40);
  if (v12)
  {
    while (1)
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v23 = v15;
      v24 = v14;
      MEMORY[0x28223BE20](v9);
      v22[2] = &v23;

      if ((sub_237AC1AB8(sub_2379F345C, v22, v10) & 1) == 0)
      {
        break;
      }

      v13 += 2;
      if (!--v12)
      {
        goto LABEL_8;
      }
    }

    v23 = 0;
    v24 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](v27, v4);
    OUTLINED_FUNCTION_0_3();
    MEMORY[0x2383DC360](v15, v14);

    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000024);
    MEMORY[0x2383DC360](v23, v24);

    v12 = v25;
    v16 = v26;
  }

  else
  {
LABEL_8:
    v16 = 0xE000000000000000;
  }

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    sub_237C08C3C();
    v18 = OUTLINED_FUNCTION_7_3();
    sub_237BABE74(v18, v16, v19);

    sub_2379E8AF0();
    v20 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v21 = v12;
    v21[1] = v16;
    OUTLINED_FUNCTION_2_5(v20, v21);
  }

  else
  {
  }

  OUTLINED_FUNCTION_73();
}

void sub_2379F2DA4()
{
  OUTLINED_FUNCTION_74();
  v38 = v0;
  v39 = v1;
  v3 = v2;
  v45 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v43 = v8 - v7;
  v9 = sub_237C05D8C();
  v10 = *(v9 + 16);
  if (v10)
  {
    v37 = v3;
    v44 = MEMORY[0x277D84F90];
    sub_237AC8A74();
    v11 = v44;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v41 = *(v12 + 56);
    v42 = v13;
    v40 = (v12 - 8);
    do
    {
      v15 = v12;
      v42(v43, v14, v45);
      v16 = sub_237C0600C();
      v18 = v17;
      (*v40)(v43, v45);
      v19 = *(v44 + 16);
      if (v19 >= *(v44 + 24) >> 1)
      {
        sub_237AC8A74();
      }

      *(v44 + 16) = v19 + 1;
      v20 = v44 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;
      v14 += v41;
      --v10;
      v12 = v15;
    }

    while (v10);

    v3 = v37;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v21 = sub_237B42F98(v11);
  v22 = 0;
  v23 = *(v3 + 16);
  v24 = v3 + 32;
LABEL_9:
  if (v22 == v23)
  {
  }

  else
  {
    v25 = (v24 + 16 * v22);
    v27 = *v25;
    v26 = v25[1];
    if (*(v21 + 16))
    {
      ++v22;
      sub_237C093CC();

      sub_237C0878C();
      v28 = sub_237C0940C();
      v29 = ~(-1 << *(v21 + 32));
      while (1)
      {
        v30 = v28 & v29;
        if (((*(v21 + 56 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
        {
          break;
        }

        v31 = (*(v21 + 48) + 16 * v30);
        if (*v31 != v27 || v31[1] != v26)
        {
          v33 = sub_237C0929C();
          v28 = v30 + 1;
          if ((v33 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    sub_237C08EDC();
    MEMORY[0x2383DC360](v38, v39);
    OUTLINED_FUNCTION_0_3();
    MEMORY[0x2383DC360](v27, v26);

    OUTLINED_FUNCTION_21_2();
    MEMORY[0x2383DC360](0xD000000000000023);
    v34 = sub_237C08C3C();
    sub_237BABE74(0, 0xE000000000000000, v34);
    sub_2379E8AF0();
    v35 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v36 = 0;
    v36[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_2_5(v35, v36);
  }

  OUTLINED_FUNCTION_73();
}

void sub_2379F30EC()
{
  OUTLINED_FUNCTION_74();
  v30 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  sub_237C05C9C();
  if (v16)
  {
    OUTLINED_FUNCTION_4_5();
    sub_237C08EDC();
    OUTLINED_FUNCTION_8_4();
    MEMORY[0x2383DC360](v2, v30);
    OUTLINED_FUNCTION_0_3();
    MEMORY[0x2383DC360](v8, v6);
    OUTLINED_FUNCTION_21_2();
    v18 = 0xD000000000000023;
  }

  else
  {
    sub_237C05D5C();
    v19 = sub_237C05FFC();
    (*(v11 + 8))(v15, v9);
    v20 = *(v4 + 16);
    v21 = 32;
    while (v20)
    {
      v22 = *(v4 + v21);
      v21 += 8;
      --v20;
      if (v22 == v19)
      {
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_4_5();
    sub_237C08EDC();
    OUTLINED_FUNCTION_8_4();
    MEMORY[0x2383DC360](v2, v30);
    OUTLINED_FUNCTION_0_3();
    MEMORY[0x2383DC360](v8, v6);
    MEMORY[0x2383DC360](0xD00000000000002FLL, 0x8000000237C176D0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD58, &qword_237C0BBD8);
    v24 = MEMORY[0x2383DC4F0](v4, v23);
    MEMORY[0x2383DC360](v24);

    v18 = 46;
    v17 = 0xE100000000000000;
  }

  MEMORY[0x2383DC360](v18, v17);
  v25 = sub_237C08C3C();
  sub_237BABE74(v28, v29, v25);
  sub_2379E8AF0();
  v26 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  *v27 = v28;
  v27[1] = v29;
  OUTLINED_FUNCTION_2_5(v26, v27);
LABEL_9:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_2379F3308()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D83A90];
  v2 = MEMORY[0x277D839F8];
  *(v0 + 16) = xmmword_237C0B680;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = MEMORY[0x277D83B88];
  sub_2379F30EC();
}

unint64_t sub_2379F33C4()
{
  result = qword_27DE9AD60;
  if (!qword_27DE9AD60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AD60);
  }

  return result;
}

unint64_t sub_2379F3408()
{
  result = qword_27DE9AD68;
  if (!qword_27DE9AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AD68);
  }

  return result;
}

void OUTLINED_FUNCTION_0_3()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1)
{

  return swift_allocError();
}

void OUTLINED_FUNCTION_8_4()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_2379F3528()
{
  v0 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = NSTemporaryDirectory();
  sub_237C086EC();

  sub_237C059BC();

  sub_237C05A2C();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_2379F364C()
{
  v1 = v0;
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379F3528();
  sub_237C05A9C();
  v8 = sub_237C086BC();

  v9 = [v1 fileExistsAtPath_];

  if ((v9 & 1) == 0)
  {
    v10 = sub_237C059EC();
    type metadata accessor for FileAttributeKey(0);
    sub_2379F3828();
    v11 = sub_237C085AC();
    v17[0] = 0;
    v12 = sub_2379F3880(v10, 1, v11, v17, v1);

    if (v12)
    {
      v13 = *(v4 + 8);
      v14 = v17[0];
      return v13(v7, v2);
    }

    v16 = v17[0];
    sub_237C0593C();

    swift_willThrow();
  }

  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_2379F3828()
{
  result = qword_27DE9A960;
  if (!qword_27DE9A960)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A960);
  }

  return result;
}

id sub_2379F3880(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for FileAttributeKey(0);
  sub_2379F3828();
  v9 = sub_237C0855C();

  v10 = [a5 createDirectoryAtURL:a1 withIntermediateDirectories:a2 & 1 attributes:v9 error:a4];

  return v10;
}

uint64_t sub_2379F3924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, void *a4@<X8>)
{
  v9 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379F56D8(a1, v11, type metadata accessor for MLHandActionClassifier.DataSource);
  result = sub_2379F3A10(v11);
  if (!v4)
  {
    sub_2379F3AA8(a2, a4, a3);
  }

  return result;
}

uint64_t sub_2379F3A10(uint64_t a1)
{
  MLHandActionClassifier.DataSource.videosWithAnnotations()(&v7);
  result = sub_2379F5740(a1, type metadata accessor for MLHandActionClassifier.DataSource);
  if (!v1)
  {
    v4 = v7;
    v5 = v8;
    result = swift_allocObject();
    v6 = MEMORY[0x277D84F90];
    *(result + 32) = MEMORY[0x277D84F90];
    *(result + 40) = v6;
    *(result + 48) = v6;
    *(result + 56) = v6;
    *(result + 16) = v4;
    *(result + 24) = v5;
  }

  return result;
}

uint64_t sub_2379F3AA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v5 = v4;
  v210 = a1;
  v199 = a2;
  v212 = sub_237C05ADC();
  v229 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v238 = &v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_237C05BFC();
  v226 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v225 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _TablePrinter(0);
  MEMORY[0x28223BE20](v9);
  v209 = (&v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v217 = (&v197 - v12);
  v13 = *(v3 + 16);
  v215 = v3;
  v14 = *(v3 + 24);
  v234 = v13;
  v235 = v14;
  sub_2379DBCF4(v13, v14);
  MLDataTable.size.getter();
  v15 = sub_237A018D0();
  sub_2379DBC9C(v13, v14);
  if (qword_27DE9A608 != -1)
  {
LABEL_102:
    swift_once();
  }

  v227 = v5;
  v16 = sub_237C0829C();
  v221 = __swift_project_value_buffer(v16, qword_27DEACD98);
  v17 = sub_237C0827C();
  v18 = sub_237C08C1C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v15;
    _os_log_impl(&dword_2379D3000, v17, v18, "Processing %ld annotated video clips", v19, 0xCu);
    MEMORY[0x2383DD950](v19, -1, -1);
  }

  v20 = v9[5];
  v21 = v217;
  sub_237C05BEC();
  *v21 = v15;
  sub_2379F5634();
  v22 = sub_237C08D0C();
  v23 = v9[6];
  v200 = v22;
  *(v21 + v23) = v22;
  v24 = (v21 + v9[7]);
  *v24 = 0xD000000000000015;
  v24[1] = 0x8000000237C178B0;
  v25 = v225;
  sub_237C05BEC();
  v26 = *(v226 + 40);
  v208 = v20;
  v26(v21 + v20, v25, v228);
  sub_237BABFB8();
  sub_237BAC25C(0);
  v27 = *(v215 + 16);
  v28 = *(v215 + 24);
  v234 = v27;
  v235 = v28;
  v236 = 0;
  v237 = 0;
  sub_2379DBCF4(v27, v28);
  v29 = 0;
  v30 = 0;
  v211 = (v229 + 8);
  v31 = *MEMORY[0x277CC08F0];
  v32 = *(MEMORY[0x277CC08F0] + 8);
  v206 = *(MEMORY[0x277CC08F0] + 16);
  v207 = v31;
  v33 = *MEMORY[0x277CC0888];
  v34 = *(MEMORY[0x277CC0888] + 8);
  v204 = *(MEMORY[0x277CC0888] + 16);
  v205 = v33;
  *&v35 = 136315138;
  v202 = v35;
  *&v35 = 134218242;
  v201 = v35;
  *(&v35 + 1) = 2;
  v214 = xmmword_237C0B660;
  *&v35 = 134218498;
  v203 = v35;
  LODWORD(v226) = v28;
  v213 = v27;
  while (1)
  {
    v233.value = v27;
    LOBYTE(v233.timescale) = v28 & 1;
    if (v30 == MLDataTable.size.getter())
    {
      sub_2379DBC9C(v27, v28 & 1);
      sub_237C08C1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
      v165 = swift_allocObject();
      *(v165 + 16) = v214;
      v166 = MEMORY[0x277D83C10];
      *(v165 + 56) = MEMORY[0x277D83B88];
      *(v165 + 64) = v166;
      *(v165 + 32) = 3;
      sub_237C0826C("event: %lu", v197);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0BC00;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      v168 = v215;
      v169 = swift_beginAccess();
      v233.value = v168[5];
      MEMORY[0x28223BE20](v169);
      *(&v197 - 2) = &v233;

      v170 = sub_237BBDC94(sub_2379F5678);
      v172 = v171;

      *(inited + 48) = v170;
      *(inited + 56) = v172 & 1;
      *(inited + 64) = 0x5F6E6F6973736573;
      *(inited + 72) = 0xEA00000000006469;
      v233.value = v168[6];
      MEMORY[0x28223BE20](v173);
      *(&v197 - 2) = &v233;

      v174 = sub_237BBDC94(sub_2379F5698);
      v176 = v175;

      *(inited + 80) = v174;
      *(inited + 88) = v176 & 1;
      *(inited + 96) = 0x746E696F7079656BLL;
      *(inited + 104) = 0xE900000000000073;
      v177 = swift_beginAccess();
      v232[0] = v168[4];
      MEMORY[0x28223BE20](v177);
      *(&v197 - 2) = v232;

      v178 = sub_237BBDC94(sub_2379F56B8);
      v180 = v179;

      *(inited + 112) = v178;
      *(inited + 120) = v180 & 1;
      *(inited + 128) = 0x7461506F65646976;
      *(inited + 136) = 0xE900000000000068;
      v181 = swift_beginAccess();
      v230 = v168[7];
      MEMORY[0x28223BE20](v181);
      *(&v197 - 2) = &v230;

      v182 = sub_237BBDC94(sub_2379F57A0);
      v184 = v183;

      *(inited + 144) = v182;
      *(inited + 152) = v184 & 1;
      v185 = sub_237C085AC();
      v186 = v227;
      sub_237B6CB9C(v185, &v230);
      if (!v186)
      {
        v187 = v231;
        v188 = v199;
        *v199 = v230;
        *(v188 + 8) = v187;
      }

      return sub_2379F5740(v217, type metadata accessor for _TablePrinter);
    }

    MLDataTable.Rows.subscript.getter(v30, &v233.value);
    value = v233.value;
    v36 = *&v233.timescale;
    epoch = v233.epoch;
    v39 = sub_237B6A8E8(v30);
    v236 = v39;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      sub_2379E8CE8(v222, v223, 2);

      sub_2379E8CE8(value, &v234, 2);
      sub_2379E8CE8(v9, (v29 + 1), 2);

      (*v211)(v238, v212);
      goto LABEL_97;
    }

    v237 = v29 + 1;
    if (!*(v36 + 16))
    {
      goto LABEL_95;
    }

    v40 = v39;
    v41 = sub_237ACAC78(0x7461506F65646976, 0xE900000000000068);
    if ((v42 & 1) == 0)
    {
      goto LABEL_95;
    }

    v216 = v29 + 1;
    v224 = v40;
    v229 = v29;
    v43 = v227;
    v44 = sub_237A2E9C8(*(*(v36 + 56) + 8 * v41));
    v5 = v43;
    if (v43)
    {
      goto LABEL_105;
    }

    sub_237AFC548(v44, &v233);
    v46 = v233.value;
    v45 = *&v233.timescale;
    v47 = v233.epoch;
    if (LOBYTE(v233.epoch) != 2)
    {
      v163 = v233.value;
      v164 = *&v233.timescale;
LABEL_94:
      sub_2379E8CE8(v163, v164, v47);
      v29 = v229;
LABEL_95:
      v233.value = 0;
      *&v233.timescale = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000029, 0x8000000237C178D0);
      v232[0] = v29;
      v189 = sub_237C0924C();
      MEMORY[0x2383DC360](v189);

      MEMORY[0x2383DC360](0x6C626174206E6920, 0xE900000000000065);
      v190 = v233.value;
      v191 = *&v233.timescale;
      sub_2379E8AF0();
      swift_allocError();
      *v192 = v190;
      *(v192 + 8) = v191;
      *(v192 + 16) = 0u;
      *(v192 + 32) = 0u;
      *(v192 + 48) = 0;
      swift_willThrow();

LABEL_96:

LABEL_97:
      sub_2379DBC9C(v234, v235);
      return sub_2379F5740(v217, type metadata accessor for _TablePrinter);
    }

    if (!*(v36 + 16) || (v48 = sub_237ACAC78(0x6C6562616CLL, 0xE500000000000000), (v49 & 1) == 0))
    {
      v163 = v46;
      v164 = v45;
      v47 = 2;
      goto LABEL_94;
    }

    v50 = sub_237A2E9C8(*(*(v36 + 56) + 8 * v48));
    sub_237AFC548(v50, &v233);
    v222 = v233.value;
    v223 = *&v233.timescale;
    v51 = v233.epoch;
    if (LOBYTE(v233.epoch) != 2)
    {
      sub_2379E8CE8(v46, v45, 2);
      v163 = v222;
      v164 = v223;
      v47 = v51;
      goto LABEL_94;
    }

    v228 = epoch;
    v220 = value;
    v52 = [objc_opt_self() defaultManager];
    v53 = sub_237C086BC();
    v54 = [v52 fileExistsAtPath_];

    if ((v54 & 1) == 0)
    {
      sub_2379E8CE8(v222, v223, 2);
      v233.value = 0;
      *&v233.timescale = 0xE000000000000000;
      sub_237C08EDC();

      v233.value = 0xD000000000000018;
      *&v233.timescale = 0x8000000237C17900;
      MEMORY[0x2383DC360](v46, v45);
      sub_2379E8CE8(v46, v45, 2);
      v194 = v233.value;
      v195 = *&v233.timescale;
      sub_2379E8AF0();
      swift_allocError();
      *v196 = v194;
      *(v196 + 8) = v195;
      *(v196 + 16) = 0u;
      *(v196 + 32) = 0u;
      *(v196 + 48) = 0;
      swift_willThrow();

      goto LABEL_96;
    }

    sub_237C059BC();
    v225 = sub_237C059DC();
    v227 = v55;
    if (v226)
    {
      break;
    }

    v60 = v213;
    sub_2379DBCF4(v213, 0);
    sub_237B6C208(v232);
    sub_2379DBC9C(v60, 0);
    v59 = v232[0];
LABEL_19:
    v233.value = 0x7472617473;
    *&v233.timescale = 0xE500000000000000;
    MEMORY[0x28223BE20](v58);
    *(&v197 - 2) = &v233;
    v61 = sub_237AC1AB8(sub_2379F345C, &(&v197)[-4], v59);

    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!*(v36 + 16))
    {
      goto LABEL_35;
    }

    v63 = sub_237ACAC78(0x7472617473, 0xE500000000000000);
    if (v64)
    {
      v65 = sub_237A2E9C8(*(*(v36 + 56) + 8 * v63));
      sub_237AFC548(v65, &v233);
      v66 = v233.value;
      if (LOBYTE(v233.epoch) == 1)
      {
        v67 = *&v233.value;
        if (*&v233.value < 0.0)
        {

          v68 = sub_237C0827C();
          v69 = sub_237C08C1C();
          sub_2379E8CE8(v46, v45, 2);
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v219 = v68;
            v71 = v70;
            v72 = v69;
            v73 = swift_slowAlloc();
            v233.value = v73;
            *v71 = v201;
            *(v71 + 4) = v66;
            *(v71 + 12) = 2080;
            *(v71 + 14) = sub_237BAAC6C(v46, v45, &v233.value);
            v74 = v72;
            v75 = v219;
            v76 = v219;
            v77 = "Start time %f specified in video file %s is negative, using 0.0 automatically.";
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        goto LABEL_41;
      }

      sub_2379E8CE8(v233.value, *&v233.timescale, v233.epoch);
    }

    if (!*(v36 + 16))
    {
      goto LABEL_35;
    }

    v78 = sub_237ACAC78(0x7472617473, 0xE500000000000000);
    if ((v79 & 1) == 0)
    {
      goto LABEL_31;
    }

    v80 = sub_237A2E9C8(*(*(v36 + 56) + 8 * v78));
    sub_237AFC548(v80, &v233);
    v81 = v233.value;
    if (LOBYTE(v233.epoch))
    {
      sub_2379E8CE8(v233.value, *&v233.timescale, v233.epoch);
LABEL_31:
      if (!*(v36 + 16) || (v82 = sub_237ACAC78(0x7472617473, 0xE500000000000000), (v83 & 1) == 0))
      {
LABEL_35:
        v219 = v46;
LABEL_36:
        v89 = v227;

        v90 = sub_237C0827C();
        v91 = sub_237C08C3C();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v233.value = v93;
          *v92 = v202;
          *(v92 + 4) = sub_237BAAC6C(v225, v89, &v233.value);
          _os_log_impl(&dword_2379D3000, v90, v91, "Unsupported start time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping start time for file %s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          MEMORY[0x2383DD950](v93, -1, -1);
          MEMORY[0x2383DD950](v92, -1, -1);
        }

        v94 = v206;
        v95 = v207;
        *&v96 = v32;
        v218 = v96;
        v46 = v219;
        goto LABEL_48;
      }

      v84 = sub_237A2E9C8(*(*(v36 + 56) + 8 * v82));
      sub_237AFC548(v84, &v233);
      v86 = v233.value;
      v85 = *&v233.timescale;
      if (LOBYTE(v233.epoch) != 2)
      {
        v219 = v46;
        sub_2379E8CE8(v233.value, *&v233.timescale, v233.epoch);
        goto LABEL_36;
      }

      sub_237AB1AE0(v233.value, *&v233.timescale);
      v88 = v87;
      sub_2379E8CE8(v86, v85, 2);
      v67 = v88;
      goto LABEL_41;
    }

    if (v233.value < 0)
    {

      v68 = sub_237C0827C();
      v98 = sub_237C08C1C();
      sub_2379E8CE8(v46, v45, 2);
      if (os_log_type_enabled(v68, v98))
      {
        v99 = swift_slowAlloc();
        v219 = v68;
        v71 = v99;
        v100 = v98;
        v73 = swift_slowAlloc();
        v233.value = v73;
        *v71 = v201;
        *(v71 + 4) = v81;
        *(v71 + 12) = 2080;
        *(v71 + 14) = sub_237BAAC6C(v46, v45, &v233.value);
        v74 = v100;
        v75 = v219;
        v76 = v219;
        v77 = "Start time %ld specified in video file %s is negative, using 0.0 automatically.";
LABEL_45:
        _os_log_impl(&dword_2379D3000, v76, v74, v77, v71, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v73);
        MEMORY[0x2383DD950](v73, -1, -1);
        MEMORY[0x2383DD950](v71, -1, -1);

LABEL_47:
        v94 = v206;
        v95 = v207;
        *&v62 = v32;
        v218 = v62;
        goto LABEL_48;
      }

LABEL_46:

      goto LABEL_47;
    }

    v67 = v233.value;
LABEL_41:
    CMTimeMakeWithSeconds(&v233, v67, 1000);
    v95 = v233.value;
    *&v97 = *&v233.timescale;
    v218 = v97;
    v94 = v233.epoch;
LABEL_48:
    v219 = v94;
    if (v226)
    {
      v101 = MEMORY[0x2383DDAC0](0);
      if (!v101)
      {
        goto LABEL_104;
      }

      v102 = v101;
      type metadata accessor for CMLSequence();
      v103 = swift_allocObject();
      v104 = v103;
      *(v103 + 16) = v102;
      *(v103 + 24) = 1;
    }

    else
    {
      v105 = v213;
      sub_2379DBCF4(v213, 0);
      sub_237B6C208(v232);
      sub_2379DBC9C(v105, 0);
      v104 = v232[0];
    }

    v233.value = 6581861;
    *&v233.timescale = 0xE300000000000000;
    MEMORY[0x28223BE20](v103);
    *(&v197 - 2) = &v233;
    v15 = sub_237AC1AB8(sub_2379F57B8, &(&v197)[-4], v104);

    if ((v15 & 1) == 0)
    {
      goto LABEL_81;
    }

    if (!*(v36 + 16))
    {
      goto LABEL_64;
    }

    v106 = sub_237ACAC78(6581861, 0xE300000000000000);
    if (v107)
    {
      v108 = sub_237A2E9C8(*(*(v36 + 56) + 8 * v106));
      sub_237AFC548(v108, &v233);
      v109 = v233.value;
      if (LOBYTE(v233.epoch) == 1)
      {
        if (*&v233.value >= 0.0)
        {
          sub_2379E8CE8(v46, v45, 2);
          v140 = *&v109;
          goto LABEL_76;
        }

        v110 = sub_237C0827C();
        v15 = sub_237C08C1C();
        sub_2379E8CE8(v46, v45, 2);
        if (os_log_type_enabled(v110, v15))
        {
          v111 = swift_slowAlloc();
          LODWORD(v198) = v15;
          v15 = v111;
          v112 = swift_slowAlloc();
          v197 = v110;
          v113 = v112;
          v233.value = v112;
          *v15 = v201;
          *(v15 + 4) = *&v109;
          *(v15 + 12) = 2080;
          v114 = sub_237BAAC6C(v46, v45, &v233.value);
          sub_2379E8CE8(v46, v45, 2);
          *(v15 + 14) = v114;
          v115 = v198;
          v116 = v197;
          v117 = v197;
          v118 = "End time %f specified in video file %s is negative, using end of file automatically.";
          goto LABEL_79;
        }

        goto LABEL_80;
      }

      sub_2379E8CE8(v233.value, *&v233.timescale, v233.epoch);
    }

    if (*(v36 + 16) && (v119 = sub_237ACAC78(6581861, 0xE300000000000000), (v120 & 1) != 0))
    {
      v121 = sub_237A2E9C8(*(*(v36 + 56) + 8 * v119));
      sub_237AFC548(v121, &v233);
      v122 = v233.value;
      v123 = v233.epoch;
      if (!LOBYTE(v233.epoch))
      {
        if ((v233.value & 0x8000000000000000) == 0)
        {
          sub_2379E8CE8(v46, v45, 2);
          v140 = v122;
LABEL_76:
          CMTimeMakeWithSeconds(&v233, v140, 1000);
          v134 = v233.value;
          v135 = *&v233.timescale;
          v136 = v233.epoch;
LABEL_83:
          v9 = v227;
          goto LABEL_84;
        }

        v198 = v233.value;

        v110 = sub_237C0827C();
        v141 = sub_237C08C1C();
        sub_2379E8CE8(v46, v45, 2);
        if (os_log_type_enabled(v110, v141))
        {
          v15 = swift_slowAlloc();
          v142 = swift_slowAlloc();
          v197 = v110;
          v113 = v142;
          v233.value = v142;
          *v15 = v201;
          *(v15 + 4) = v198;
          *(v15 + 12) = 2080;
          v198 = sub_237BAAC6C(v46, v45, &v233.value);
          sub_2379E8CE8(v46, v45, 2);
          *(v15 + 14) = v198;
          v115 = v141;
          v116 = v197;
          v117 = v197;
          v118 = "End time %ld specified in video file %s is negative, using end of file automatically.";
LABEL_79:
          _os_log_impl(&dword_2379D3000, v117, v115, v118, v15, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v113);
          MEMORY[0x2383DD950](v113, -1, -1);
          MEMORY[0x2383DD950](v15, -1, -1);

LABEL_82:
          v136 = v204;
          v134 = v205;
          v135 = v34;
          goto LABEL_83;
        }

LABEL_80:

LABEL_81:
        sub_2379E8CE8(v46, v45, 2);
        goto LABEL_82;
      }

      v15 = *&v233.timescale;
      sub_2379E8CE8(v46, v45, 2);
      v124 = v122;
      v125 = v15;
      v126 = v123;
    }

    else
    {
LABEL_64:
      v124 = v46;
      v125 = v45;
      v126 = 2;
    }

    sub_2379E8CE8(v124, v125, v126);
    v9 = v227;
    if (*(v36 + 16))
    {
      v127 = sub_237ACAC78(6581861, 0xE300000000000000);
      if (v128)
      {
        v129 = sub_237A2E9C8(*(*(v36 + 56) + 8 * v127));
        sub_237AFC548(v129, &v233);
        v131 = v233.value;
        v130 = *&v233.timescale;
        if (LOBYTE(v233.epoch) == 2)
        {
          sub_237AB1AE0(v233.value, *&v233.timescale);
          v133 = v132;
          sub_2379E8CE8(v131, v130, 2);
          CMTimeMakeWithSeconds(&v233, v133, 1000);
          v134 = v233.value;
          v135 = *&v233.timescale;
          v136 = v233.epoch;
          goto LABEL_84;
        }

        sub_2379E8CE8(v233.value, *&v233.timescale, v233.epoch);
      }
    }

    v137 = sub_237C0827C();
    v138 = sub_237C08C3C();

    if (os_log_type_enabled(v137, v138))
    {
      v15 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v233.value = v139;
      *v15 = v202;
      *(v15 + 4) = sub_237BAAC6C(v225, v9, &v233.value);
      _os_log_impl(&dword_2379D3000, v137, v138, "Unsupported end time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping end time for file %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v139);
      MEMORY[0x2383DD950](v139, -1, -1);
      MEMORY[0x2383DD950](v15, -1, -1);
    }

    v136 = v204;
    v134 = v205;
    v135 = v34;
LABEL_84:
    v143 = sub_237AB1D68(v238, v95, v218, v219, v134, v135, v136, a3);
    v144 = v143;
    v145 = v229;
    if (__OFADD__(v229, v210))
    {
      __break(1u);
      goto LABEL_102;
    }

    v227 = 0;
    v146 = v143[2];
    v147 = sub_237AC7A20(v229 + v210, v146);
    v148 = sub_237AC7988(v222, v223, v146);
    v149 = sub_237AC7988(v225, v9, v146);
    swift_beginAccess();
    sub_237A967C4(v144);
    swift_endAccess();
    sub_237A96880(v147);
    swift_beginAccess();
    sub_237A96708(v148);
    swift_endAccess();
    swift_beginAccess();
    sub_237A96708(v149);
    swift_endAccess();
    v150 = v217;
    sub_237BAC25C(v145);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
    v151 = swift_allocObject();
    *(v151 + 16) = v214;
    sub_237C05BCC();
    *(v151 + 56) = MEMORY[0x277D839F8];
    *(v151 + 64) = MEMORY[0x277D83A80];
    *(v151 + 32) = -v152;
    v9 = sub_237C0871C();
    v154 = v153;
    v155 = v150;
    v156 = v209;
    sub_2379F56D8(v155, v209, type metadata accessor for _TablePrinter);
    v157 = sub_237C0827C();
    v158 = sub_237C08C2C();
    if (os_log_type_enabled(v157, v158))
    {
      v159 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v233.value = v160;
      *v159 = v203;
      *(v159 + 4) = v216;
      *(v159 + 12) = 2048;
      v161 = v156;
      v162 = *v156;
      sub_2379F5740(v161, type metadata accessor for _TablePrinter);
      *(v159 + 14) = v162;
      *(v159 + 22) = 2080;
      v9 = sub_237BAAC6C(v9, v154, &v233.value);

      *(v159 + 24) = v9;
      _os_log_impl(&dword_2379D3000, v157, v158, "Extracted features from %ld out of %ld annotated video clips, elapsed time: %s", v159, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v160);
      MEMORY[0x2383DD950](v160, -1, -1);
      MEMORY[0x2383DD950](v159, -1, -1);
    }

    else
    {
      sub_2379F5740(v156, type metadata accessor for _TablePrinter);
    }

    (*v211)(v238, v212);
    v30 = v224;
    v27 = v234;
    LOBYTE(v28) = v235;
    v29 = v229 + 1;
  }

  v56 = MEMORY[0x2383DDAC0](0);
  if (v56)
  {
    v57 = v56;
    type metadata accessor for CMLSequence();
    v58 = swift_allocObject();
    v59 = v58;
    *(v58 + 16) = v57;
    *(v58 + 24) = 1;
    goto LABEL_19;
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_2379F54E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  inited = swift_initStackObject();
  v11 = MEMORY[0x277D84F90];
  *(inited + 32) = MEMORY[0x277D84F90];
  *(inited + 40) = v11;
  *(inited + 48) = v11;
  *(inited + 56) = v11;
  *(inited + 16) = v8;
  *(inited + 24) = v9;
  result = sub_2379DBCF4(v8, v9);
  if (!v4)
  {
    sub_2379F3AA8(a2, a3, a4);
  }

  return result;
}

uint64_t sub_2379F5598()
{
  sub_2379DBC9C(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t sub_2379F55DC()
{
  sub_2379F5598();

  return swift_deallocClassInstance();
}

unint64_t sub_2379F5634()
{
  result = qword_27DE9AD70;
  if (!qword_27DE9AD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9AD70);
  }

  return result;
}

uint64_t sub_2379F56D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2379F5740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for _MLDevice(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for _MLDevice(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2379F5934);
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

uint64_t sub_2379F5980(uint64_t a1, uint64_t a2)
{
  v2 = sub_237C0916C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2379F59D4(char a1)
{
  if (a1)
  {
    return 7696483;
  }

  else
  {
    return 1869903201;
  }
}

uint64_t sub_2379F5A58(uint64_t a1)
{
  v1 = a1;
  sub_237C093CC();
  v2 = sub_237BA03C8(v1);
  OUTLINED_FUNCTION_1_2(v2, v3, v4);

  return sub_237C0940C();
}

uint64_t sub_2379F5AC0(uint64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  sub_237C093CC();
  a2(v5, a1);
  return sub_237C0940C();
}

uint64_t sub_2379F5B10(uint64_t a1, uint64_t a2)
{
  sub_237C093CC();
  sub_237C0878C();
  return sub_237C0940C();
}

uint64_t sub_2379F5B68(uint64_t a1, char a2)
{
  sub_237C0878C();
}

uint64_t sub_2379F5BC4(uint64_t a1, char a2)
{
  sub_237C0878C();
}

uint64_t sub_2379F5CB4(uint64_t a1, uint64_t a2)
{
  sub_237BA03C8(a2);
  sub_237C0878C();
}

uint64_t sub_2379F5D08(uint64_t a1, char a2)
{
  sub_237C0878C();
}

uint64_t sub_2379F5DDC(uint64_t a1, char a2)
{
  sub_237C0878C();
}

uint64_t sub_2379F5E44(void *a1, char a2)
{
  switch(a2)
  {
    case 5:
    case 7:
    case 9:
    case 10:
      OUTLINED_FUNCTION_0_4();
      break;
    default:
      break;
  }

  sub_237C0878C();
}

uint64_t sub_2379F5FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237C093CC();
  sub_237C0878C();
  return sub_237C0940C();
}

uint64_t sub_2379F6048(uint64_t a1, char a2)
{
  sub_237C093CC();
  sub_237C0878C();

  return sub_237C0940C();
}

uint64_t sub_2379F60D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_237C093CC();
  v3 = sub_237BA03C8(v2);
  OUTLINED_FUNCTION_1_2(v3, v4, v5);

  return sub_237C0940C();
}

uint64_t sub_2379F613C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_237C093CC();
  a3(v6, a2);
  return sub_237C0940C();
}

uint64_t sub_2379F6188(uint64_t a1, char a2)
{
  sub_237C093CC();
  sub_237C0878C();

  return sub_237C0940C();
}

uint64_t sub_2379F61F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2379F5980(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2379F6228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2379F59D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2379F6258()
{
  result = qword_27DE9AD88;
  if (!qword_27DE9AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AD88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_237C0878C();
}

uint64_t sub_2379F62E4(uint64_t a1)
{
  v2 = sub_2379F6D14();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2379F6320(uint64_t a1)
{
  v2 = sub_2379F6D14();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t MLCreateError.failureReason.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 48);
  if (v3 < 3)
  {
    v4 = OUTLINED_FUNCTION_3_5();
    sub_2379F6420(v4, v5, v6, v7, v8, v9, v10);
  }

  return OUTLINED_FUNCTION_3_5();
}

void sub_2379F6420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >= 3u)
  {
    if (a7 != 3)
    {
      return;
    }
  }
}

unint64_t MLCreateError.errorDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  switch(*(v0 + 48))
  {
    case 1:
      OUTLINED_FUNCTION_0_5();
      sub_237C08EDC();

      OUTLINED_FUNCTION_1_3();
      v6 = v11 + 2;
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_0_5();
      sub_237C08EDC();

      OUTLINED_FUNCTION_1_3();
      goto LABEL_10;
    case 3:
      OUTLINED_FUNCTION_0_5();
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD000000000000039, 0x8000000237C17A10);
      v8 = OUTLINED_FUNCTION_3_5();
      MEMORY[0x2383DC360](v8);
      MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17A50);
      MEMORY[0x2383DC360](v1, v2);
      MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C17A70);
      MEMORY[0x2383DC360](v3, v4);
      v9 = 46;
      v10 = 0xE100000000000000;
      goto LABEL_11;
    case 4:
      if (v1 | *(v0 + 8) | *v0 | v2 | v3 | v4)
      {
        return 0xD000000000000051;
      }

      else
      {
        return 0xD00000000000001CLL;
      }

    default:
      OUTLINED_FUNCTION_0_5();
      sub_237C08EDC();

      OUTLINED_FUNCTION_1_3();
      v6 = v5 + 5;
LABEL_10:
      v12 = v6;
      v9 = OUTLINED_FUNCTION_3_5();
LABEL_11:
      MEMORY[0x2383DC360](v9, v10);
      return v12;
  }
}

uint64_t MLCreateError.errorCode.getter()
{
  result = v0[3].u8[0];
  switch(v0[3].i8[0])
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      v2 = vorrq_s8(v0[1], v0[2]);
      if (*&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL)) | v0->i64[1] | v0->i64[0])
      {
        result = 5;
      }

      else
      {
        result = 3;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t MLCreateError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD90, &qword_237C0BD18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B670;
  *(inited + 32) = sub_237C086EC();
  *(inited + 40) = v1;
  OUTLINED_FUNCTION_2_6();
  v2 = MLCreateError.errorDescription.getter();
  if (v3)
  {
    v4 = MEMORY[0x277D837D0];
  }

  else
  {
    v2 = 0;
    v4 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = sub_237C086EC();
  *(inited + 88) = v5;
  OUTLINED_FUNCTION_2_6();
  v8 = MLCreateError.failureReason.getter(v6, v7);
  if (v9)
  {
    v10 = MEMORY[0x277D837D0];
  }

  else
  {
    v8 = 0;
    v10 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v8;
  *(inited + 104) = v9;
  *(inited + 120) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
  v11 = sub_237C085AC();
  v12 = sub_2379F6890(v11);

  return v12;
}

uint64_t sub_2379F6890(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_2379F6DD8(v17, &qword_27DE9A998, &unk_237C0C100))
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (i << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2379F6D68(*(a1 + 56) + 32 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_2379F6D68(&v35, &v28);
    if (v29)
    {
      sub_2379DAD24(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_2379DAD24(v33, v30);
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_237AC01E0(v16 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v18 = v31;
      sub_237C093CC();
      sub_237C0878C();
      result = sub_237C0940C();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_28;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + 16 * v23) = v18;
      sub_2379DAD24(v30, (*(v2 + 56) + 32 * v23));
      ++*(v2 + 16);
      v17 = v32;
    }

    else
    {

      sub_2379F6DD8(&v34, &qword_27DE9ADA0, &qword_237C0BF18);
      v17 = &v28;
    }
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_2379F6B84()
{
  v1 = *v0;
  v2 = *(v0 + 48);
  if (v2 <= 2)
  {
    sub_2379F6420(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v2);
    return v1;
  }

  result = MLCreateError.errorDescription.getter();
  if (v4)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_8CreateML13MLCreateErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 48) & 7;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2379F6C48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 49))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 <= 4)
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

uint64_t sub_2379F6C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2379F6CDC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_2379F6D14()
{
  result = qword_27DE9AD98;
  if (!qword_27DE9AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AD98);
  }

  return result;
}

uint64_t sub_2379F6D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379F6DD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2379F6EA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_237C086EC();
  v4 = v3;
  if (v2 == sub_237C086EC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_27_1(v2);
  }

  return v7 & 1;
}

uint64_t sub_2379F6F18(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 7696483;
  }

  else
  {
    v3 = 1869903201;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 7696483;
  }

  else
  {
    v5 = 1869903201;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_2379F6F9C(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000064657ALL;
  v3 = 0x696C616974696E69;
  v4 = a1;
  v5 = 0x696C616974696E69;
  v6 = 0xEB0000000064657ALL;
  switch(v4)
  {
    case 1:
      v7 = 0x636172747865;
      goto LABEL_6;
    case 2:
      v6 = 0xE800000000000000;
      v5 = 0x676E696E69617274;
      break;
    case 3:
      v7 = 0x61756C617665;
LABEL_6:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      v6 = 0xEA0000000000676ELL;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_60_0();
      v6 = 0xEB00000000676E69;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = 0x636172747865;
      goto LABEL_12;
    case 2:
      v2 = 0xE800000000000000;
      OUTLINED_FUNCTION_57_0();
      break;
    case 3:
      v8 = 0x61756C617665;
LABEL_12:
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      v2 = 0xEA0000000000676ELL;
      break;
    case 4:
      v3 = 0x636E657265666E69;
      v2 = 0xEB00000000676E69;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_237C0929C();
  }

  return v10 & 1;
}

uint64_t sub_2379F7138(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_237BA03C8(a1);
  v5 = v4;
  if (v3 == sub_237BA03C8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_2379F71B0(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x54746E656D656C65;
  v4 = a1;
  v5 = 0x54746E656D656C65;
  v6 = 0xEB00000000657079;
  switch(v4)
  {
    case 1:
      v6 = 0xE400000000000000;
      v5 = 1702521203;
      break;
    case 2:
      v5 = 0x69726F6765746163;
      v6 = 0xEA00000000007365;
      break;
    case 3:
      v5 = 0x7470697263736564;
      v6 = 0xEB0000000073726FLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1702521203;
      break;
    case 2:
      v3 = 0x69726F6765746163;
      v2 = 0xEA00000000007365;
      break;
    case 3:
      v3 = 0x7470697263736564;
      v2 = 0xEB0000000073726FLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_237C0929C();
  }

  return v8 & 1;
}

uint64_t sub_2379F732C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6574694C6E6E63;
  }

  else
  {
    v3 = 7237219;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x6574694C6E6E63;
  }

  else
  {
    v5 = 7237219;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1(v3);
  }

  return v8 & 1;
}

uint64_t sub_2379F73B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_237C0929C();
  }
}

uint64_t sub_2379F73D4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1936945004;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = "stylizedImageURL";
  v6 = 1936945004;
  switch(v4)
  {
    case 1:
      v6 = 0x4C746E65746E6F63;
      v3 = 0xEB0000000073736FLL;
      break;
    case 2:
      v6 = 0x736F4C656C797473;
      v3 = 0xE900000000000073;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v6 = 0x7963617275636361;
      break;
    case 4:
      v6 = 0x69746164696C6176;
      v3 = 0xEE0073736F4C6E6FLL;
      break;
    case 5:
      OUTLINED_FUNCTION_24_3();
      v6 = v9 | 2;
      break;
    case 6:
      v6 = 0xD000000000000010;
      v3 = 0x8000000237C16BF0;
      break;
    case 7:
      OUTLINED_FUNCTION_24_3();
      v6 = v8 | 4;
      break;
    case 8:
      v6 = 0x456D756D6978616DLL;
      v3 = 0xEC000000726F7272;
      break;
    case 9:
      OUTLINED_FUNCTION_24_3();
      v6 = v7 | 0xE;
      break;
    case 10:
      OUTLINED_FUNCTION_24_3();
      v6 = v10 | 6;
      break;
    default:
      break;
  }

  v11 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x4C746E65746E6F63;
      v11 = 0xEB0000000073736FLL;
      break;
    case 2:
      v2 = 0x736F4C656C797473;
      v11 = 0xE900000000000073;
      break;
    case 3:
      v11 = 0xE800000000000000;
      v2 = 0x7963617275636361;
      break;
    case 4:
      v2 = 0x69746164696C6176;
      v11 = 0xEE0073736F4C6E6FLL;
      break;
    case 5:
      OUTLINED_FUNCTION_22_2();
      v2 = v14 | 2;
      break;
    case 6:
      v2 = 0xD000000000000010;
      v11 = (v5 - 32) | 0x8000000000000000;
      break;
    case 7:
      OUTLINED_FUNCTION_22_2();
      v2 = v13 | 4;
      break;
    case 8:
      v2 = 0x456D756D6978616DLL;
      v11 = 0xEC000000726F7272;
      break;
    case 9:
      OUTLINED_FUNCTION_22_2();
      v2 = v12 | 0xE;
      break;
    case 10:
      OUTLINED_FUNCTION_22_2();
      v2 = v15 | 6;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v11)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_27_1(v6);
  }

  return v17 & 1;
}

id MLRandomForestRegressor.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLRandomForestRegressor(0) + 20));

  return v1;
}

uint64_t type metadata accessor for MLRandomForestRegressor(uint64_t a1)
{
  result = qword_27DE9ADE8;
  if (!qword_27DE9ADE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLRandomForestRegressor.model.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLRandomForestRegressor(v2) + 20);

  *(v1 + v3) = v0;
}

void (*MLRandomForestRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLRandomForestRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

void sub_2379F7824(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a1;
  if (a2)
  {
    v6 = v5;

    *(v3 + v4) = v6;
  }

  else
  {

    *(v3 + v4) = v5;
  }
}

uint64_t MLRandomForestRegressor.targetColumn.getter()
{
  type metadata accessor for MLRandomForestRegressor(0);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLRandomForestRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLRandomForestRegressor(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*MLRandomForestRegressor.targetColumn.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLRandomForestRegressor(v0);
  return nullsub_1;
}

uint64_t MLRandomForestRegressor.featureColumns.getter()
{
  type metadata accessor for MLRandomForestRegressor(0);
}

uint64_t MLRandomForestRegressor.featureColumns.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLRandomForestRegressor(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

void (*MLRandomForestRegressor.featureColumns.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLRandomForestRegressor(v0);
  return nullsub_1;
}

uint64_t MLRandomForestRegressor.modelParameters.getter()
{
  v2 = OUTLINED_FUNCTION_146();
  v3 = v1 + *(type metadata accessor for MLRandomForestRegressor(v2) + 32);

  return sub_2379F7A5C(v3, v0);
}

id MLRandomForestRegressor.trainingMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLRandomForestRegressor(v0);
  v2 = OUTLINED_FUNCTION_40_1(*(v1 + 36));

  return sub_2379F7AF4(v2, v3, v4);
}

id sub_2379F7AF4(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

id MLRandomForestRegressor.validationMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLRandomForestRegressor(v0);
  v2 = OUTLINED_FUNCTION_40_1(*(v1 + 40));

  return sub_2379F7AF4(v2, v3, v4);
}

uint64_t sub_2379F7B3C()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9ADA8);
  v1 = __swift_project_value_buffer(v0, qword_27DE9ADA8);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLRandomForestRegressor._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A568 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_project_value_buffer(v2, qword_27DE9ADA8);
  OUTLINED_FUNCTION_3_6();
  return sub_2379FC008(v3, a1, v4);
}

void MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v127 = v0;
  v2 = v1;
  v128 = v3;
  v133 = v4;
  v125 = v5;
  v139 = v6;
  v8 = v7;
  v131 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = OUTLINED_FUNCTION_21_3(v13 - v12);
  v15 = type metadata accessor for TreeRegressorModel(v14);
  v16 = OUTLINED_FUNCTION_1(v15);
  v116 = v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_134();
  v118 = v18;
  v117 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_58();
  v22 = OUTLINED_FUNCTION_21_3(v21);
  v121 = type metadata accessor for TreeRegressor(v22);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = OUTLINED_FUNCTION_21_3(v25 - v24);
  type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(v26);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  v33 = &v110 - v32;
  v132 = sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v134 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v37);
  v39 = &v110 - v38;
  v40 = type metadata accessor for MLRandomForestRegressor(0);
  v41 = v8 + *(v40 + 36);
  *v41 = 0;
  *(v41 + 8) = 0;
  v129 = v41;
  *(v41 + 16) = 0;
  v115 = v40;
  v42 = *(v40 + 40);
  v119 = v8;
  v43 = v8 + v42;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v44 = swift_allocError();
  *v45 = 0xD0000000000000C0;
  v45[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v44, v45);
  *v43 = v46;
  *(v43 + 8) = 0;
  v126 = v43;
  *(v43 + 16) = 1;
  sub_2379F7A5C(v2, &v137);
  sub_237C071CC();
  sub_237C070DC();
  sub_237C0709C();
  sub_237C070FC();
  sub_237C0715C();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237C0711C();
  sub_237C0713C();
  sub_2379F88C4(&v137);
  v130 = v2;
  sub_2379FC864(v2, &v135, &qword_27DE9A998, &unk_237C0C100);
  if (v136)
  {
    v47 = *(v28 + 48);
    sub_2379DAD24(&v135, &v137);
    swift_dynamicCast();
    v48 = v127;
    sub_237AB9730(v33, &v33[v47], v139);
    if (v48)
    {

      OUTLINED_FUNCTION_44_0();

      OUTLINED_FUNCTION_51_0();
      (*(v10 + 8))(v139, v131);
      v49 = OUTLINED_FUNCTION_61_0();
      v50(v49);
      OUTLINED_FUNCTION_6_3();
      sub_2379FC8C0();
    }

    else
    {
      v127 = v10;
      OUTLINED_FUNCTION_6_3();
      sub_2379FC8C0();
      v51 = v125;
      v52 = v133;
      sub_237B19700(v33, v125, v133, v128);
      v110 = v28;
      v54 = v53;

      v128 = v33;
      v111 = 0;
      v55 = v134;
      v56 = v132;
      (*(v134 + 16))(v124, v39, v132);
      v57 = v123;
      *v123 = v51;
      v57[1] = v52;
      OUTLINED_FUNCTION_80();
      v57[2] = v54;
      v57[3] = v54;
      v57[4] = 0xD000000000000013;
      v57[5] = v58;
      v59(v120, v124, v56);
      v121 = v54;
      swift_bridgeObjectRetain_n();

      v60 = v56;
      sub_237C06CEC();
      v63 = *(v55 + 8);
      v62 = v55 + 8;
      v61 = v63;
      v63(v124, v56);
      v64 = v128;
      v65 = v122;
      v66 = v111;
      sub_237A0CAB0();
      if (!v66)
      {
        v124 = v61;
        v134 = v62;
        v69 = sub_237A37A64();
        v70 = v130;
        if ((v69 & 1) == 0)
        {
          v71 = OUTLINED_FUNCTION_44_0();
          v72 = v114;
          sub_2379FC864(v71, v114, v73, v74);
          v75 = *(v110 + 48);
          v76 = sub_237C05D3C();
          (*(v127 + 8))(v72, v131);
          v65 = v122;
          sub_237A37AEC(0, 0xD000000000000015, 0x8000000237C17C00, v76);
          sub_2379D9054(v72 + v75, &qword_27DE9A9A0, &qword_237C0BF60);
        }

        v77 = v115;
        v78 = v119;
        v79 = (v119 + v115[6]);
        v80 = v133;
        *v79 = v125;
        v79[1] = v80;
        v125 = v77[8];
        sub_2379F7A5C(v70, v78 + v125);
        *(v78 + v77[7]) = v121;
        OUTLINED_FUNCTION_2_7();
        v81 = v118;
        sub_2379FC008(v65, v118, v82);
        v83 = (*(v116 + 80) + 16) & ~*(v116 + 80);
        swift_allocObject();
        OUTLINED_FUNCTION_10_2();
        sub_2379FC914(v81, v84 + v83, v85);
        sub_2379DD56C();
        v87 = v86;

        *(v78 + v77[5]) = v87;
        OUTLINED_FUNCTION_2_7();
        sub_2379FC008(v65, v78, v88);
        v89 = v128;
        sub_237A478AC(v128, &v137);
        v90 = v137;
        v91 = v138;
        v92 = v129;
        sub_2379F8918(*v129, *(v129 + 8), *(v129 + 16));
        *v92 = v90;
        *(v92 + 16) = v91;
        v93 = v113;
        sub_2379FC864(v89, v113, &qword_27DE9ADC0, &unk_237C0BF40);
        v94 = *(v110 + 48);
        v95 = v131;
        if (__swift_getEnumTagSinglePayload(v93 + v94, 1, v131) == 1)
        {
          OUTLINED_FUNCTION_51_0();
          v96 = *(v127 + 8);
          v96(v139, v95);
          OUTLINED_FUNCTION_0_6();
          sub_2379FC8C0();
          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_52_0();
          sub_2379D9054(v89, &qword_27DE9ADC0, &unk_237C0BF40);
          v97 = OUTLINED_FUNCTION_9_2();
          v98(v97);
          sub_2379D9054(v93 + v94, &qword_27DE9A9A0, &qword_237C0BF60);
          v96(v93, v95);
        }

        else
        {
          v99 = v127;
          v100 = v112;
          (*(v127 + 32))(v112, v93 + v94, v95);
          v101 = *(v99 + 8);
          v101(v93, v95);
          sub_237A478AC(v100, &v137);
          sub_2379F88C4(v130);
          v101(v139, v95);
          v101(v100, v95);
          OUTLINED_FUNCTION_0_6();
          sub_2379FC8C0();
          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_52_0();
          v102 = OUTLINED_FUNCTION_44_0();
          sub_2379D9054(v102, v103, v104);
          v105 = OUTLINED_FUNCTION_9_2();
          v106(v105);
          v107 = v137;
          v108 = v138;
          v109 = v126;
          sub_2379F8918(*v126, *(v126 + 8), *(v126 + 16));
          *v109 = v107;
          *(v109 + 16) = v108;
        }

        goto LABEL_10;
      }

      OUTLINED_FUNCTION_51_0();
      v67 = OUTLINED_FUNCTION_12_3();
      v68(v67);
      OUTLINED_FUNCTION_1_4();
      sub_2379FC8C0();
      sub_2379D9054(v64, &qword_27DE9ADC0, &unk_237C0BF40);
      v61(v39, v60);
    }

    sub_2379F8918(*v129, *(v129 + 8), *(v129 + 16));
    sub_2379F8918(*v126, *(v126 + 8), *(v126 + 16));
LABEL_10:
    OUTLINED_FUNCTION_73();
    return;
  }

  __break(1u);
}

void sub_2379F8918(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_2379F8924(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2379F89CC;

  return sub_237B91530();
}

uint64_t sub_2379F89CC()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t sub_2379F8B04()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for TreeRegressorModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_2379F8924(v5);
}

uint64_t MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_237C05DBC();
  v8 = OUTLINED_FUNCTION_20(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  LOBYTE(v10) = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  sub_237A70ED4(&v13, v11);
  sub_2379F7A5C(a5, &v13);
  MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:)();
  return sub_2379F88C4(a5);
}

void MLRandomForestRegressor.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v70 = v0;
  v2 = v1;
  v4 = v3;
  v63 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v61 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_58();
  v62 = v8;
  v9 = type metadata accessor for TreeRegressorModel(0);
  v10 = OUTLINED_FUNCTION_1(v9);
  v65 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_134();
  v66 = v13;
  v67 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  v71 = v15;
  sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v68 = v17;
  v69 = v16;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - v19;
  type metadata accessor for TreeRegressor(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = (v23 - v22);
  v25 = type metadata accessor for MLRandomForestRegressor(0);
  v26 = v4 + *(v25 + 36);
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  v60 = v25;
  v27 = *(v25 + 40);
  v64 = v4;
  v28 = v4 + v27;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v29 = swift_allocError();
  *v30 = 0xD0000000000000C0;
  v30[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v29, v30);
  *v28 = v31;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  switch(*(v2 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 2:

      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_60_0();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_57_0();
  v32 = sub_237C0929C();

  if ((v32 & 1) == 0)
  {
    OUTLINED_FUNCTION_50();
    v41 = swift_allocError();
    *v42 = 0xD000000000000042;
    v42[1] = 0x8000000237C17C20;
    OUTLINED_FUNCTION_23_3(v41, v42);
    swift_willThrow();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_9;
  }

LABEL_5:
  sub_237C071CC();
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_80();
  v24[2] = v33;
  v24[3] = v33;
  v24[4] = 0xD000000000000013;
  v24[5] = v34;
  v36 = v68;
  v35 = v69;
  v37 = OUTLINED_FUNCTION_58_0();
  v38(v37);
  sub_237C06CEC();
  (*(v36 + 8))(v20, v35);
  sub_2379FBDFC();
  v39 = v70;
  v40 = v71;
  sub_237C0743C();
  if (v39)
  {
    OUTLINED_FUNCTION_5_3();
    sub_2379FC8C0();
    OUTLINED_FUNCTION_1_4();
LABEL_9:
    sub_2379FC8C0();
    sub_2379F8918(*v26, *(v26 + 8), *(v26 + 16));
    sub_2379F8918(*v28, *(v28 + 8), *(v28 + 16));
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_7();
  v43 = v67;
  sub_2379FC008(v40, v67, v44);
  v45 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  swift_allocObject();
  OUTLINED_FUNCTION_10_2();
  sub_2379FC914(v43, v46 + v45, v47);
  sub_2379DD56C();
  v49 = v48;

  v50 = v60;
  v51 = v64;
  *(v64 + *(v60 + 20)) = v49;
  OUTLINED_FUNCTION_2_7();
  sub_2379FC008(v40, v51, v52);
  v54 = v62;
  v53 = v63;
  *v62 = 0;
  *(v54 + 8) = 0;
  *(v54 + 16) = 256;
  swift_storeEnumTagMultiPayload();
  v55 = v50;
  v56 = v51 + *(v50 + 32);
  *v56 = 0u;
  *(v56 + 16) = 0u;
  *(v56 + 96) = 0;
  *(v56 + 104) = 0;
  *(v56 + 88) = 0;
  *(v56 + 32) = xmmword_237C0BF20;
  *(v56 + 48) = xmmword_237C0BF30;
  *(v56 + 64) = 42;
  *(v56 + 72) = vdupq_n_s64(0x3FE999999999999AuLL);
  v57 = v61;
  sub_2379FC008(v54, v61, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  v72[3] = v53;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v72);
  sub_2379FC914(v57, boxed_opaque_existential_0, type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData);
  OUTLINED_FUNCTION_6_3();
  sub_2379FC8C0();
  sub_2379DAE54(v72, v56);
  v59 = (v51 + *(v55 + 24));
  *v59 = 0;
  v59[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_5_3();
  sub_2379FC8C0();
  OUTLINED_FUNCTION_0_6();
  sub_2379FC8C0();
  OUTLINED_FUNCTION_1_4();
  sub_2379FC8C0();
  *(v51 + *(v55 + 28)) = MEMORY[0x277D84F90];
LABEL_10:
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_73();
}

uint64_t sub_2379F92CC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2379F9374;

  return sub_237B91530();
}

uint64_t sub_2379F9374()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t sub_2379F94A8()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_8();
  return v1();
}

void static MLRandomForestRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = (v4 - v3);
  v6 = *(v1 + 8);
  v10 = *v1;
  v11 = v6;
  sub_2379DBCF4(v10, v6);
  sub_237A70ED4(&v10, v5);
  static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  v7 = OUTLINED_FUNCTION_58_0();
  v8(v7);
  if (!v0)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADD0, &qword_237C0BF78);
    OUTLINED_FUNCTION_91(v9);
    sub_237BEBEB4();
  }

  OUTLINED_FUNCTION_73();
}

void static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v1 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = (v6 - v5);
  v8 = *(v0 + 8);
  v9 = *v0;
  v10 = v8;
  sub_2379DBCF4(v9, v8);
  sub_237A70ED4(&v9, v7);
  static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v45 = v1;
  v3 = v2;
  v47 = v4;
  v44 = v5;
  v43 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters(0);
  v10 = OUTLINED_FUNCTION_20(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v12);
  v13 = sub_237C071DC();
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_0();
  v46 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = v40 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v40 - v26;
  v28 = v3;
  sub_2379FC864(v3, &v51, &qword_27DE9A998, &unk_237C0C100);
  if (v52)
  {
    v29 = *(v19 + 48);
    sub_2379DAD24(&v51, &v48);
    swift_dynamicCast();
    sub_237AB9730(v27, &v27[v29], v8);
    OUTLINED_FUNCTION_6_3();
    sub_2379FC8C0();
    if (!v0)
    {
      sub_2379FC864(v27, v24, &qword_27DE9ADC0, &unk_237C0BF40);
      v40[1] = *(v19 + 48);
      v30 = v46;
      sub_2379FC864(v27, v46, &qword_27DE9ADC0, &unk_237C0BF40);
      v53 = *(v19 + 48);
      sub_2379F7A5C(v28, &v48);

      v31 = v44;

      sub_237C071CC();
      sub_237C070DC();
      sub_237C0709C();
      sub_237C070FC();
      sub_237C0715C();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237C0711C();
      sub_237C0713C();
      sub_2379F88C4(&v48);
      OUTLINED_FUNCTION_3_6();
      v32 = v42;
      sub_2379FC008(v45, v42, v33);
      v34 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v34);
      sub_237B1A5B0(v24, v30 + v53, v43, v31, v47, v17, v32);
      OUTLINED_FUNCTION_46();
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      v36 = (*(v35 + 8))(v46);
      OUTLINED_FUNCTION_64_0(v36, &qword_27DE9A9A0, &qword_237C0BF60);
      v49 = v34;
      v50 = &off_284AC4B18;
      *&v48 = v32;
      OUTLINED_FUNCTION_3_6();
      v37 = v41;
      sub_2379FC008(v45, v41, v38);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADD8, &unk_237C0BF80);
      OUTLINED_FUNCTION_91(v39);

      sub_2379E3E9C(&v48, v37, 0);
      sub_2379D9054(v27, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLRandomForestRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADD0, &qword_237C0BF78);
  OUTLINED_FUNCTION_91(v1);

  sub_237BEBEB4();
}

void static MLRandomForestRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static MLRandomForestRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v6)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADD0, &qword_237C0BF78);
    OUTLINED_FUNCTION_91(v7);
    sub_237BEBEB4();
  }
}

void static MLRandomForestRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-1] - v8;
  OUTLINED_FUNCTION_3_6();
  sub_2379FC008(a1, v9, v10);
  v11 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v11);
  v12 = sub_237B1A4D0(v9);
  if (!v1)
  {
    v18[3] = v11;
    v18[4] = &off_284AC4B18;
    v18[0] = v12;
    OUTLINED_FUNCTION_3_6();
    v13 = OUTLINED_FUNCTION_58_0();
    sub_2379FC008(v13, v14, v15);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADD8, &unk_237C0BF80);
    OUTLINED_FUNCTION_91(v16);
    sub_2379E3E9C(v18, v6, 0);
  }
}

uint64_t sub_2379F9D84(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE08, &qword_237C0C070);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-v15 - 8];
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    a4(v12);
    return sub_2379D9054(v12, &qword_27DE9AE08, &qword_237C0C070);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_dynamicCast();
    v19 = v22;
    v20 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = a4;
    v21[6] = a5;

    sub_237BBAEC8(0, 0, v16, &unk_237C0C080, v21);
  }
}

uint64_t sub_2379F9F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE08, &qword_237C0C070);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2379FA034);
}

uint64_t sub_2379FA034()
{
  OUTLINED_FUNCTION_9();

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2379FA0D4;

  return sub_2379FA34C();
}

uint64_t sub_2379FA0D4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2379FA1D0()
{
  v2 = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_37_0();
  sub_2379FC7F4(v3, v4);
  OUTLINED_FUNCTION_47_0();
  v1(v2);
  sub_2379D9054(v2, &qword_27DE9AE08, &qword_237C0C070);

  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t sub_2379FA290()
{
  **(v1 + 56) = *(v1 + 80);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_47_0();
  v2(v0);
  sub_2379D9054(v0, &qword_27DE9AE08, &qword_237C0C070);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_2379FA34C()
{
  OUTLINED_FUNCTION_9();
  v0[36] = v1;
  v0[37] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v3);
  v0[38] = OUTLINED_FUNCTION_19();
  v4 = type metadata accessor for MLRandomForestRegressor(0);
  v0[39] = v4;
  OUTLINED_FUNCTION_20(v4);
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v5);
  v0[42] = OUTLINED_FUNCTION_19();
  v6 = sub_237C071DC();
  v0[43] = v6;
  OUTLINED_FUNCTION_1(v6);
  v0[44] = v7;
  v0[45] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v8);
  v0[46] = OUTLINED_FUNCTION_19();
  v9 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v0[47] = v9;
  OUTLINED_FUNCTION_20(v9);
  v0[48] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2379FA4D4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 296);
  v4 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess();
  sub_2379FC864(v3 + v4, v1, &qword_27DE9AE18, &qword_237C0DEE0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v8 = *(v0 + 360);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  v11 = *(v0 + 336);
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  sub_2379FC914(*(v0 + 368), v6, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379FC864(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237A36B5C(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v16 = *v14;
  v15 = v14[1];
  *(v0 + 392) = v15;
  v17 = *(v6 + v7[7]);
  *(v0 + 400) = v17;
  v18 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model;
  swift_beginAccess();
  sub_2379FC864(v13 + v18, v12, &qword_27DE9AE10, &qword_237C0C090);
  v19 = type metadata accessor for TreeRegressorModel(0);
  result = __swift_getEnumTagSinglePayload(v12, 1, v19);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v21 = *(v0 + 312);
  v20 = *(v0 + 320);
  sub_2379F7A5C(v0 + 16, v0 + 128);
  v22 = v21[9];
  *(v0 + 432) = v22;
  v23 = v20 + v22;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  v24 = v21[10];
  *(v0 + 436) = v24;
  v25 = v20 + v24;
  sub_2379E8AF0();

  OUTLINED_FUNCTION_50();
  v26 = swift_allocError();
  *v27 = 0xD0000000000000C0;
  v27[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v26, v27);
  *v25 = v28;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  *(v20 + v21[7]) = v17;
  v29 = (v20 + v21[6]);
  *v29 = v16;
  v29[1] = v15;
  v30 = swift_task_alloc();
  *(v0 + 408) = v30;
  *v30 = v0;
  v30[1] = sub_2379FA790;

  return sub_237B91530();
}

uint64_t sub_2379FA790()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 416) = v0;

  if (!v0)
  {
    *(v5 + 424) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2379FA8A0()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[37];
  *(v1 + *(v3 + 20)) = v0[53];
  OUTLINED_FUNCTION_10_2();
  sub_2379FC914(v6, v1, v7);
  memcpy((v1 + *(v3 + 32)), v0 + 16, 0x70uLL);
  sub_2379FC914(v1, v2, type metadata accessor for MLRandomForestRegressor);
  result = sub_2379FC914(v2, v4, type metadata accessor for MLRandomForestRegressor);
  v9 = v5 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  v10 = *(v5 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v10 == 255)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[39];
    v13 = v0[36];
    v12 = v0[37];
    v15 = *v9;
    v14 = *(v9 + 8);
    v16 = v10 & 1;
    sub_2379F7AF4(*v9, v14, v10 & 1);
    sub_2379F88C4((v0 + 2));
    OUTLINED_FUNCTION_17_1();
    sub_2379FC8C0();
    v17 = v13 + *(v11 + 36);
    sub_2379F8918(*v17, *(v17 + 8), *(v17 + 16));
    *v17 = v15;
    *(v17 + 8) = v14;
    *(v17 + 16) = v16;
    v19 = *(v12 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    v18 = *(v12 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
    v20 = *(v12 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16);
    sub_2379FC970(v19, v18, *(v12 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16));

    if (v20 != 255)
    {
      v21 = v0[36] + *(v0[39] + 40);
      sub_2379F8918(*v21, *(v21 + 8), *(v21 + 16));
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20 & 1;
    }

    OUTLINED_FUNCTION_8();

    return v22();
  }

  return result;
}

uint64_t sub_2379FAA98()
{
  v1 = *(v0 + 320);
  v2 = v1 + *(v0 + 432);
  v3 = v1 + *(v0 + 436);
  sub_2379F88C4(v0 + 128);
  OUTLINED_FUNCTION_0_6();
  sub_2379FC8C0();

  sub_2379F8918(*v2, *(v2 + 8), *(v2 + 16));
  sub_2379F8918(*v3, *(v3 + 8), *(v3 + 16));

  sub_2379F88C4(v0 + 16);
  OUTLINED_FUNCTION_17_1();
  sub_2379FC8C0();

  OUTLINED_FUNCTION_8();

  return v4();
}

void MLRandomForestRegressor.predictions(from:)()
{
  v1 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  type metadata accessor for MLRandomForestRegressor(0);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v0)
  {
    OUTLINED_FUNCTION_11();
    sub_237A47CE0(v8, v9);
    sub_237C05DFC();
    (*(v3 + 8))(v7, v1);
  }
}

uint64_t MLRandomForestRegressor.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = (v9 - v8);
  v11 = sub_237C0602C();
  v12 = OUTLINED_FUNCTION_20(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = *(a1 + 8);
  v18 = *a1;
  v19 = v16;
  sub_2379DBCF4(v18, v16);
  sub_237A70ED4(&v18, v10);
  MLRandomForestRegressor.predictions(from:)();
  if (v2)
  {
    return (*(v6 + 8))(v10, v4);
  }

  (*(v6 + 8))(v10, v4);
  return sub_237A72900(v15, 1, v1);
}

void *MLRandomForestRegressor.evaluation(on:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_146();
  v5 = type metadata accessor for MLRandomForestRegressor(v4);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v7 = (v2 + *(v5 + 24));
  v8 = v7[1];
  *(inited + 32) = *v7;
  *(inited + 40) = v8;

  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  return sub_237A478AC(a1, v1);
}

uint64_t MLRandomForestRegressor.evaluation(on:)(uint64_t a1)
{
  v2 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  sub_2379DBCF4(v11, v9);
  sub_237A70ED4(&v11, v8);
  MLRandomForestRegressor.evaluation(on:)(v8);
  return (*(v4 + 8))(v8, v2);
}

void MLRandomForestRegressor.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v55 = v0;
  v3 = v2;
  v4 = type metadata accessor for TreeRegressorModel(0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v20 = v3;
  v23 = v22 - v21;
  memcpy(v54, v20, 0x48uLL);
  sub_2379F25FC();
  if (!v1)
  {
    v44 = v11;
    v46 = v18;
    OUTLINED_FUNCTION_2_7();
    sub_2379FC008(v55, v8, v24);
    v25 = *(&v54[0] + 1);
    if (*(&v54[0] + 1))
    {
      v26 = *&v54[0];
      v27 = *(&v54[1] + 1);
      v28 = *&v54[1];
      v29 = v54[2];
      v30 = *(&v54[3] + 1);
      v31 = *&v54[3];
      v32 = *&v54[4];
    }

    else
    {
      v33 = v23;
      v34 = NSFullUserName();
      v26 = sub_237C086EC();
      v25 = v35;

      v23 = v33;
      v32 = 0;
      v27 = 0x8000000237C17C90;
      v28 = 0xD000000000000033;
      v29 = 0uLL;
      v30 = 0xE100000000000000;
      v31 = 49;
    }

    v49[0] = v26;
    v49[1] = v25;
    v49[2] = v28;
    v49[3] = v27;
    v50 = v29;
    v51 = v31;
    v52 = v30;
    v53 = v32;
    sub_2379FC864(v54, v48, &qword_27DE9ADE0, &unk_237C0BF90);
    OUTLINED_FUNCTION_19_3();
    sub_2379FB6D0(v49, v36, v37, v38, v39, v40, v41, v42, v43, v15, v44, v46, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5], v48[6], v48[7]);
    OUTLINED_FUNCTION_0_6();
    sub_2379FC8C0();
    sub_2379FC064(v49);
    sub_237C07E5C();
    (*(v45 + 8))(v15, v9);
    (*(v47 + 8))(v23, v16);
  }

  OUTLINED_FUNCTION_73();
}

void sub_2379FB3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  a10 = MEMORY[0x277D84F98];
  sub_237BA3350(&a10, v26);
  if (v20)
  {
  }

  else
  {

    sub_237C07DCC();
    sub_237C07DBC();
    sub_237C07E6C();
    v28 = *(v24 + 64);
    sub_237C07EAC();
    if (!v28)
    {
      sub_237C085AC();
    }

    sub_237C07EFC();
    v29 = a10;
    v30 = sub_237C07EDC();
    OUTLINED_FUNCTION_18_3();
    sub_2379FC634(v29, v31, 0, v32);
    v33 = OUTLINED_FUNCTION_53_0();
    v30(v33);
    sub_237BAC418();
    v34 = OUTLINED_FUNCTION_65_0();
    v36 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_2(isUniquelyReferenced_nonNull_native);
    *v36 = v46;
    v38 = OUTLINED_FUNCTION_53_0();
    v34(v38);
    if (*(sub_237C07DAC() + 16))
    {
      OUTLINED_FUNCTION_46_0(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_16_2();
      do
      {
        v39 = OUTLINED_FUNCTION_36_1();
        v40(v39);
        sub_237C07DFC();
        v41 = OUTLINED_FUNCTION_54_0();
        v42(v41);
        OUTLINED_FUNCTION_56_0();
        if (v44)
        {
          sub_237AC8A34(v43 > 1, v29, 1);
          v36 = v47;
        }

        OUTLINED_FUNCTION_30_2();
      }

      while (!v45);
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    sub_2379FBD74(v36);

    sub_237C07E0C();
  }

  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_73();
}

void sub_2379FB6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v24(&a10);
  if (!v20)
  {

    sub_237C07DCC();
    sub_237C07DBC();
    sub_237C07E6C();
    v28 = *(v26 + 64);
    sub_237C07EAC();
    if (!v28)
    {
      sub_237C085AC();
    }

    sub_237C07EFC();
    v29 = sub_237C07EDC();
    OUTLINED_FUNCTION_18_3();
    sub_2379FC634(v30, v31, 0, v32);
    v33 = OUTLINED_FUNCTION_53_0();
    v29(v33);
    sub_237BAC418();
    v34 = OUTLINED_FUNCTION_65_0();
    v36 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_26_2(isUniquelyReferenced_nonNull_native);
    *v36 = v46;
    v38 = OUTLINED_FUNCTION_53_0();
    v34(v38);
    if (*(sub_237C07DAC() + 16))
    {
      OUTLINED_FUNCTION_46_0(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_16_2();
      do
      {
        v39 = OUTLINED_FUNCTION_36_1();
        v40(v39);
        sub_237C07DFC();
        v41 = OUTLINED_FUNCTION_54_0();
        v42(v41);
        OUTLINED_FUNCTION_56_0();
        if (v44)
        {
          sub_237AC8A34(v43 > 1, v28, 1);
          v36 = v47;
        }

        OUTLINED_FUNCTION_30_2();
      }

      while (!v45);
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    sub_2379FBD74(v36);

    sub_237C07E0C();
  }

  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLRandomForestRegressor.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v24[1] = v3;
  v25 = v2;
  v5 = v4;
  v6 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  v17 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  memcpy(v26, v5, sizeof(v26));
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v8 + 104))(v12, *MEMORY[0x277CC91D8], v6);

  sub_237C05ABC();
  MLRandomForestRegressor.write(to:metadata:)();
  (*(v19 + 8))(v23, v17);
  OUTLINED_FUNCTION_73();
}

unint64_t MLRandomForestRegressor.description.getter()
{
  v1 = type metadata accessor for MLRandomForestRegressor(0);
  v2 = MLRandomForestRegressor.ModelParameters.description.getter();
  v4 = v3;
  v5 = MLRegressorMetrics.description.getter();
  v7 = v6;
  v8 = *(v0 + *(v1 + 40) + 16);
  v9 = MLRegressorMetrics.description.getter();
  v11 = v10;
  OUTLINED_FUNCTION_80();
  MEMORY[0x2383DC360](v2, v4);

  OUTLINED_FUNCTION_80();
  v15 = v12;
  MEMORY[0x2383DC360](v5, v7);
  MEMORY[0x2383DC360](0xD00000000000001ELL, v15);

  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_80();
    v16 = v13;
    MEMORY[0x2383DC360](v9, v11);
    MEMORY[0x2383DC360](0xD000000000000020, v16);
  }

  return 0xD000000000000022;
}

id MLRandomForestRegressor.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  v3 = MLRandomForestRegressor.description.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_2379FBD74(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2379FBDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_2379FBDFC()
{
  result = qword_27DE9ADC8;
  if (!qword_27DE9ADC8)
  {
    type metadata accessor for TreeRegressor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9ADC8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for TreeRegressorModel(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 16))
  {
  }

  v3 = *(v1 + 24);
  sub_237C0701C();
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(v2 + v3);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2379FBF4C()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for TreeRegressorModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_2379F92CC(v5);
}

uint64_t sub_2379FC008(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

id sub_2379FC0B8@<X0>(void *a1@<X8>)
{
  result = MLRandomForestRegressor.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2379FC0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for TreeRegressorModel(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2379FC1B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TreeRegressorModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2379FC260(uint64_t a1)
{
  type metadata accessor for TreeRegressorModel(319);
  if (v1 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
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

void sub_2379FC328()
{
  if (!qword_27DE9ADF8)
  {
    v0 = sub_237C089DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9ADF8);
    }
  }
}

uint64_t sub_2379FC378(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  sub_237AC1704(v49);
  v6 = v49[1];
  v7 = v49[3];
  v8 = v49[4];
  v41 = v49[5];
  v42 = v49[0];
  v9 = (v49[2] + 64) >> 6;

  v39 = v9;
  v40 = v6;
  if (v8)
  {
    while (1)
    {
      v43 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v42 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v42 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v48[0] = v14;
      v48[1] = v15;
      v48[2] = v17;
      v48[3] = v18;

      v41(&v44, v48);

      v19 = v44;
      v20 = v45;
      v21 = v46;
      v22 = v47;
      v23 = *v50;
      v25 = sub_237ACAC78(v44, v45);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v28 = v24;
      if (v23[3] >= v26 + v27)
      {
        if ((v43 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE00, &qword_237C0C068);
          sub_237C090BC();
        }
      }

      else
      {
        sub_237AC03B4();
        v29 = sub_237ACAC78(v19, v20);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_24;
        }

        v25 = v29;
      }

      v8 &= v8 - 1;
      v31 = *v50;
      if (v28)
      {

        v32 = (v31[7] + 16 * v25);
        *v32 = v21;
        v32[1] = v22;
      }

      else
      {
        v31[(v25 >> 6) + 8] |= 1 << v25;
        v33 = (v31[6] + 16 * v25);
        *v33 = v19;
        v33[1] = v20;
        v34 = (v31[7] + 16 * v25);
        *v34 = v21;
        v34[1] = v22;
        v35 = v31[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_23;
        }

        v31[2] = v37;
      }

      a4 = 1;
      v7 = v10;
      v9 = v39;
      v6 = v40;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_2379E925C(v42);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v43 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_2379FC634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_2379FC378(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_2379FC6A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237AC1404(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_2379FC6EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2379FC734(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_2379F9F78(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_2379FC7F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE08, &qword_237C0C070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379FC864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

uint64_t sub_2379FC8C0()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2379FC914(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

id sub_2379FC970(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2379F7AF4(result, a2, a3 & 1);
  }

  return result;
}

void OUTLINED_FUNCTION_16_2()
{
  v2 = *(v1 - 152);
  v3 = *(v2 + 16);
  *(v1 - 176) = v0;
  *(v1 - 152) = *(v2 + 72);
  *(v1 - 144) = v3;
}

double OUTLINED_FUNCTION_23_3(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_2(uint64_t a1)
{
  *(v2 - 120) = *v1;

  return sub_237B40C78();
}

uint64_t OUTLINED_FUNCTION_27_1(uint64_t a1)
{

  return sub_237C0929C();
}

uint64_t OUTLINED_FUNCTION_40_1@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  result = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *v1 = *v3;
  *(v1 + 8) = v5;
  *(v1 + 16) = v6;
  return result;
}

void OUTLINED_FUNCTION_46_0(uint64_t a1@<X8>)
{
  *(v2 - 112) = a1;

  sub_237AC8A34(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_47_0()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return sub_2379FC7F4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return sub_237C05DBC();
}

uint64_t OUTLINED_FUNCTION_51_0()
{
  v2 = *(v0 - 272);

  return sub_2379F88C4(v2);
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return sub_2379FC8C0();
}

uint64_t OUTLINED_FUNCTION_64_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 72) + *(v3 - 296);

  return sub_2379D9054(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_65_0()
{

  return sub_237C07EDC();
}

uint64_t type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9AE20;
  if (!qword_27DE9AE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2379FCDC0(uint64_t a1)
{
  sub_2379EA11C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MLImageClassifier.DataSource(319);
    if (v2 <= 0x3F)
    {
      sub_2379FCE48(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2379FCE48(uint64_t a1)
{
  if (!qword_27DE9AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE38, &unk_237C12D50);
    v1 = sub_237C085DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9AE30);
    }
  }
}

uint64_t sub_2379FCEBC(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for MLImageClassifier.DataSource(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379FD060(v3, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2379FD0C4(v10, v7);
      sub_237B82504();
      sub_2379FD128(v7);
      if (!v2)
      {
        goto LABEL_4;
      }

      break;
    case 2u:
LABEL_4:

      break;
    default:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
      sub_237C085AC();
      break;
  }

  return a1;
}

uint64_t sub_2379FD060(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379FD0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLImageClassifier.DataSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379FD128(uint64_t a1)
{
  v2 = type metadata accessor for MLImageClassifier.DataSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2379FD198(uint64_t a1, uint64_t a2, int *a3)
{
  sub_237C05DBC();
  OUTLINED_FUNCTION_135();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_135();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v12 = a3[5];
LABEL_10:
    v9 = a1 + v12;
    goto LABEL_11;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v8 = sub_237C071DC();
    v12 = a3[8];
    goto LABEL_10;
  }

  v13 = *(a1 + a3[6] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2379FD2C8(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(a1 + a4[6] + 8) = (a2 - 1);
        return;
      }

      v10 = sub_237C071DC();
      v14 = a4[8];
    }

    v11 = a1 + v14;
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t type metadata accessor for PersistentParametersForTreeBasedMethods(uint64_t a1)
{
  result = qword_27DE9AE40;
  if (!qword_27DE9AE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2379FD42C(uint64_t a1)
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
        sub_237C071DC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2379FD4E8(uint64_t a1)
{
  if (!qword_27DE9AE50)
  {
    sub_237C05DBC();
    v1 = sub_237C08D2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9AE50);
    }
  }
}

uint64_t sub_2379FD540@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v165 = *MEMORY[0x277D85DE8];
  v147 = sub_237C05FAC();
  OUTLINED_FUNCTION_0();
  v152 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_3(v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_237C05E5C();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v142 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v12);
  v13 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v144 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v17);
  v154 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v156 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v21);
  v23 = v131 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v131 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v131 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v131 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v131 - v34;
  v36 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v37 = *(v36 + 20);
  v157 = a2;
  v155 = v37;
  v150 = v13;
  __swift_storeEnumTagSinglePayload(&a2[v37], 1, 1, v13);
  sub_237C05A2C();
  v38 = v153;
  v39 = sub_237C05B1C();
  v153 = v38;
  if (v38)
  {
    v41 = *(v156 + 8);
    v42 = v154;
    v41(a1, v154);
    v41(v35, v42);
    v43 = v157;
    return sub_2379D9054(v43 + v155, &qword_27DE9A9A0, &qword_237C0BF60);
  }

  v44 = v39;
  v45 = v40;
  v134 = v26;
  v133 = v23;
  v135 = v29;
  v136 = v32;
  v141 = v36;
  v140 = a1;
  v46 = v156;
  v47 = *(v156 + 8);
  v48 = v154;
  v47(v35, v154);
  v49 = objc_opt_self();
  v50 = v45;
  v51 = v44;
  v43 = sub_237C05B6C();
  *&v160 = 0;
  v52 = [v49 propertyListWithData:v43 options:0 format:0 error:&v160];

  v53 = v160;
  if (!v52)
  {
    v43 = v53;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v51, v50);
    v101 = OUTLINED_FUNCTION_7_4(&v166);
    (v47)(v101);
LABEL_32:
    OUTLINED_FUNCTION_13_1();
    return sub_2379D9054(v43 + v155, &qword_27DE9A9A0, &qword_237C0BF60);
  }

  v137 = v51;
  v138 = v50;
  v139 = v47;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(&v162, &v160);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  if ((OUTLINED_FUNCTION_2_8(v54, v55, v56, v54) & 1) == 0)
  {
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v102, 0xD000000000000037);
    OUTLINED_FUNCTION_6_4();
    v103 = OUTLINED_FUNCTION_3_7();
    (*(v104 - 256))(v103);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    goto LABEL_32;
  }

  v57 = v158;
  sub_237AC9A74(v158, &v160, 0x746567726174, 0xE600000000000000);
  if (!v161)
  {

    sub_2379D9054(&v160, &qword_27DE9A998, &unk_237C0C100);
    OUTLINED_FUNCTION_13_1();
LABEL_40:
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v105, 0xD000000000000034);
    OUTLINED_FUNCTION_6_4();
    v106 = OUTLINED_FUNCTION_3_7();
    (*(v107 - 256))(v106);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    return sub_2379D9054(v43 + v155, &qword_27DE9A9A0, &qword_237C0BF60);
  }

  if ((OUTLINED_FUNCTION_2_8(v58, v59, v60, MEMORY[0x277D837D0]) & 1) == 0)
  {
    goto LABEL_38;
  }

  v62 = v158;
  v61 = v159;
  OUTLINED_FUNCTION_15_3("selectedFeatures");
  if (!v161)
  {
LABEL_35:

    sub_2379D9054(&v160, &qword_27DE9A998, &unk_237C0C100);
LABEL_39:
    v43 = v157;
    goto LABEL_40;
  }

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  if ((OUTLINED_FUNCTION_2_8(v63, v64, v65, v63) & 1) == 0)
  {
LABEL_37:

LABEL_38:

    goto LABEL_39;
  }

  v132 = v62;
  v66 = v158;
  OUTLINED_FUNCTION_22_3(0x617265744978616DLL, 0xED0000736E6F6974);
  if (!v161)
  {
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_2_8(v67, v68, v69, MEMORY[0x277D83B88]) & 1) == 0)
  {
LABEL_36:

    goto LABEL_37;
  }

  v131[3] = v158;
  sub_237AC9A74(v57, &v160, 0x687470654478616DLL, 0xE800000000000000);
  if (!v161)
  {
LABEL_34:

    goto LABEL_35;
  }

  if ((OUTLINED_FUNCTION_2_8(v70, v71, v72, MEMORY[0x277D83B88]) & 1) == 0)
  {
    goto LABEL_36;
  }

  v131[2] = v158;
  OUTLINED_FUNCTION_15_3("minLossReduction");
  if (!v161)
  {
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_2_8(v73, v74, v75, MEMORY[0x277D839F8]) & 1) == 0)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_22_3(0x646C6968436E696DLL, 0xEE00746867696557);
  if (!v161)
  {
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_2_8(v76, v77, v78, MEMORY[0x277D839F8]) & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_237AC9A74(v57, &v160, 0x65536D6F646E6172, 0xEA00000000006465);
  if (!v161)
  {
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_2_8(v79, v80, v81, MEMORY[0x277D83B88]) & 1) == 0)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_22_3(0x6173627553776F72, 0xEC000000656C706DLL);
  if (!v161)
  {
LABEL_43:

    sub_2379D9054(&v160, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_44;
  }

  if ((OUTLINED_FUNCTION_2_8(v82, v83, v84, MEMORY[0x277D839F8]) & 1) == 0)
  {
LABEL_42:

LABEL_44:
    v43 = v157;
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_22_3(0x75536E6D756C6F63, 0xEF656C706D617362);
  if (!v161)
  {
    goto LABEL_43;
  }

  if ((OUTLINED_FUNCTION_2_8(v85, v86, v87, MEMORY[0x277D839F8]) & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_237AC9A74(v57, &v160, 0x657A695370657473, 0xE800000000000000);
  if (!v161)
  {
    goto LABEL_43;
  }

  if ((OUTLINED_FUNCTION_2_8(v88, v89, v90, MEMORY[0x277D839F8]) & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_237AC9A74(v57, &v160, 0xD000000000000013, 0x8000000237C17E00);
  if (!v161)
  {
    goto LABEL_43;
  }

  if ((OUTLINED_FUNCTION_2_8(v91, v92, v93, MEMORY[0x277D83B88]) & 1) == 0)
  {
    goto LABEL_42;
  }

  v131[1] = v158;
  v94 = v141;
  v95 = v157;
  v96 = &v157[*(v141 + 24)];
  *v96 = v132;
  *(v96 + 1) = v61;
  *&v95[*(v94 + 28)] = v66;
  v97 = *(v94 + 32);
  sub_237C071CC();
  OUTLINED_FUNCTION_17_2();
  sub_237C0715C();
  OUTLINED_FUNCTION_17_2();
  sub_237C070FC();
  OUTLINED_FUNCTION_17_2();
  sub_237C0719C();
  OUTLINED_FUNCTION_17_2();
  sub_237C0717C();
  OUTLINED_FUNCTION_17_2();
  sub_237C070BC();
  sub_237C0711C();
  sub_237C0713C();
  sub_237C070DC();
  v132 = v97;
  sub_237C071BC();
  sub_237AC9A74(v57, &v160, 0xD000000000000011, 0x8000000237C17E20);

  if (v161)
  {
    if (OUTLINED_FUNCTION_2_8(v98, v99, v100, MEMORY[0x277D83B88]))
    {
      sub_237C0709C();
    }
  }

  else
  {
    sub_2379D9054(&v160, &qword_27DE9A998, &unk_237C0C100);
  }

  v109 = v136;
  sub_237C05A2C();
  OUTLINED_FUNCTION_9_3();
  sub_237C05A2C();
  v110 = *(v46 + 16);
  v156 = v46 + 16;
  (v110)(v134, v109, v48);
  OUTLINED_FUNCTION_4_6();
  v111 = v153;
  sub_237C05CDC();
  v153 = v111;
  if (v111)
  {
    (v110)(v143, v136, v48);
    v151 = sub_2379FEDE4(MEMORY[0x277D84F90]);
    sub_237B9068C(&unk_284ABFD58);
    sub_237B9068C(&unk_284ABFE18);
    sub_237B9068C(&unk_284ABFE78);
    v112 = *(v152 + 104);
    LODWORD(v149) = *MEMORY[0x277CE1918];
    v152 += 104;
    v134 = v112;
    v112(v148);
    sub_237C05E4C();
    OUTLINED_FUNCTION_4_6();
    sub_237C05CAC();
    v117 = OUTLINED_FUNCTION_19_4();
    v118(v117, v146, v150);
    v119 = OUTLINED_FUNCTION_11_3(&v167);
    v110(v119);
    v156 = sub_2379FEDE4(MEMORY[0x277D84F90]);
    sub_237B9068C(&unk_284ABFD58);
    sub_237B9068C(&unk_284ABFE18);
    sub_237B9068C(&unk_284ABFE78);
    v134(v148, v149, v147);
    sub_237C05E4C();
    OUTLINED_FUNCTION_4_6();
    sub_237C05CAC();
    OUTLINED_FUNCTION_6_4();

    v125 = OUTLINED_FUNCTION_3_7();
    v127 = *(v126 - 256);
    v127(v125);
    v128 = OUTLINED_FUNCTION_7_4(&v163);
    v127(v128);
    v129 = OUTLINED_FUNCTION_7_4(v164);
    v127(v129);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    v130 = v145;
    OUTLINED_FUNCTION_21_4(v145);
    v151 = v130;
  }

  else
  {
    v113 = OUTLINED_FUNCTION_19_4();
    v114(v113, v149, v150);
    v115 = OUTLINED_FUNCTION_11_3(&v161);
    v110(v115);
    OUTLINED_FUNCTION_4_6();
    v116 = v153;
    sub_237C05CDC();
    if (v116)
    {
    }

    OUTLINED_FUNCTION_6_4();
    v120 = OUTLINED_FUNCTION_3_7();
    v122 = *(v121 - 256);
    v122(v120);
    v123 = OUTLINED_FUNCTION_7_4(&v163);
    v122(v123);
    v124 = OUTLINED_FUNCTION_7_4(v164);
    v122(v124);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    OUTLINED_FUNCTION_21_4(v151);
  }

  return sub_2379FEFE4(v151, &v157[v155]);
}

uint64_t sub_2379FE55C(uint64_t a1)
{
  v78 = a1;
  v2 = v1;
  v85 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v66 - v4;
  sub_237C05E7C();
  OUTLINED_FUNCTION_0();
  v74 = v5;
  v75 = v6;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v69 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v73 = v9;
  sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v79 = v10;
  v80 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  v68 = v12;
  MEMORY[0x28223BE20](v13);
  v72 = &v66 - v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_58();
  v76 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C0C0;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v18 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v19 = (v1 + *(v18 + 24));
  v20 = v19[1];
  v21 = MEMORY[0x277D837D0];
  *(inited + 48) = *v19;
  *(inited + 56) = v20;
  *(inited + 72) = v21;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000237C17DC0;
  v22 = *(v2 + *(v18 + 28));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  *(inited + 96) = v22;
  *(inited + 120) = v23;
  strcpy((inited + 128), "maxIterations");
  *(inited + 142) = -4864;
  v70 = v18;

  v24 = sub_237C0714C();
  v25 = MEMORY[0x277D83B88];
  *(inited + 144) = v24;
  *(inited + 168) = v25;
  *(inited + 176) = 0x687470654478616DLL;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 192) = sub_237C070EC();
  *(inited + 216) = v25;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x8000000237C17DE0;
  sub_237C0718C();
  v26 = MEMORY[0x277D839F8];
  *(inited + 240) = v27;
  *(inited + 264) = v26;
  strcpy((inited + 272), "minChildWeight");
  *(inited + 287) = -18;
  sub_237C0716C();
  *(inited + 288) = v28;
  *(inited + 312) = v26;
  *(inited + 320) = 0x65536D6F646E6172;
  *(inited + 328) = 0xEA00000000006465;
  *(inited + 336) = sub_237C070AC();
  *(inited + 360) = v25;
  strcpy((inited + 368), "rowSubsample");
  *(inited + 381) = 0;
  *(inited + 382) = -5120;
  sub_237C0710C();
  *(inited + 384) = v29;
  *(inited + 408) = v26;
  *(inited + 416) = 0x75536E6D756C6F63;
  *(inited + 424) = 0xEF656C706D617362;
  sub_237C0712C();
  *(inited + 432) = v30;
  *(inited + 456) = v26;
  *(inited + 464) = 0x657A695370657473;
  *(inited + 472) = 0xE800000000000000;
  sub_237C070CC();
  *(inited + 480) = v31;
  *(inited + 504) = v26;
  *(inited + 512) = 0xD000000000000013;
  *(inited + 520) = 0x8000000237C17E00;
  v32 = sub_237C071AC();
  *(inited + 552) = v25;
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  *(inited + 528) = v34;
  v35 = sub_237C085AC();
  if (sub_237C0708C() != 1)
  {
    v36 = sub_237C0708C();
    v84 = v25;
    *&v83 = v36;
    sub_2379DAD24(&v83, v82);
    swift_isUniquelyReferenced_nonNull_native();
    v81 = v35;
    sub_237B40B6C(v82, 0xD000000000000011, 0x8000000237C17E20);
  }

  v37 = objc_opt_self();
  v38 = sub_237C0855C();

  *&v83 = 0;
  v39 = [v37 dataWithPropertyList:v38 format:200 options:0 error:&v83];

  v40 = v83;
  v42 = v79;
  v41 = v80;
  if (v39)
  {
    v43 = sub_237C05B7C();
    v45 = v44;

    v46 = v76;
    sub_237C05A2C();
    v47 = v77;
    sub_237C05B9C();
    if (v47)
    {
      (*(v41 + 8))(v46, v42);
      return sub_2379E86D4(v43, v45);
    }

    else
    {
      v76 = *(v41 + 8);
      v77 = v45;
      v76(v46, v42);
      v50 = v72;
      sub_237C05A2C();
      OUTLINED_FUNCTION_10_3();
      v51 = v73;
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_12_4(v52, v53, v54, v55);
      v67 = sub_237C05DBC();
      sub_237C05C6C();
      v56 = v75 + 8;
      v73 = *(v75 + 8);
      v73(v51, v74);
      v80 = v41 + 8;
      v57 = v76;
      v76(v50, v42);
      v58 = v71;
      sub_2379D8FF4(v2 + *(v70 + 20), v71, &qword_27DE9A9A0, &qword_237C0BF60);
      v59 = v67;
      if (__swift_getEnumTagSinglePayload(v58, 1, v67) == 1)
      {
        sub_2379E86D4(v43, v77);
        return sub_2379D9054(v58, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        v75 = v56;
        OUTLINED_FUNCTION_9_3();
        v60 = v68;
        sub_237C05A2C();
        OUTLINED_FUNCTION_10_3();
        v61 = v69;
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_12_4(v62, v63, v64, v65);
        sub_237C05C6C();
        sub_2379E86D4(v43, v77);
        v73(v61, v74);
        v57(v60, v79);
        return (*(*(v59 - 8) + 8))(v58, v59);
      }
    }
  }

  else
  {
    v49 = v40;
    sub_237C0593C();

    return swift_willThrow();
  }
}

uint64_t sub_2379FED88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2379FEDE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE68, &qword_237C0C110);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = (v27 - v6);
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84F98];
LABEL_9:

    return v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE70, &qword_237C0C118);
  v8 = sub_237C0912C();
  v9 = v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = *(v2 + 48);
  v12 = v8 + 64;
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v27[1] = a1;
  v14 = a1 + v13;
  v15 = *(v4 + 72);

  while (1)
  {
    sub_2379D8FF4(v14, v7, &qword_27DE9AE68, &qword_237C0C110);
    v16 = *v7;
    v17 = v7[1];
    result = sub_2379FF054(*v7, v17);
    if (v19)
    {
      break;
    }

    v20 = result;
    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v21 = (v9[6] + 16 * result);
    *v21 = v16;
    v21[1] = v17;
    v22 = v9[7];
    sub_237C05FAC();
    OUTLINED_FUNCTION_4();
    result = (*(v23 + 32))(v22 + *(v23 + 72) * v20, v7 + v11);
    v24 = v9[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_12;
    }

    v9[2] = v26;
    v14 += v15;
    if (!--v10)
    {

      return v9;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2379FEFE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2379FF054(uint64_t a1, uint64_t a2)
{
  sub_237C093CC();
  sub_237C0878C();
  v4 = sub_237C0940C();

  return sub_2379FF0CC(a1, a2, v4);
}

unint64_t sub_2379FF0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_237C0929C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  v2 = *(v0 - 392);
  v3 = *(v0 - 384);

  return sub_2379E86D4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_12_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237C05E6C();
}

double OUTLINED_FUNCTION_15_3@<D0>(uint64_t a1@<X8>)
{

  return sub_237AC9A74(v1, (v2 - 192), 0xD000000000000010, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_18_4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_21_4(uint64_t a1)
{
  v4 = *(v2 - 272);

  return __swift_storeEnumTagSinglePayload(a1, v1, 1, v4);
}

double OUTLINED_FUNCTION_22_3(uint64_t a1, uint64_t a2)
{

  return sub_237AC9A74(v2, (v3 - 192), a1, a2);
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

uint64_t sub_2379FF358(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_2379FF398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2379FF400@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v106 = a2;
  v116 = *MEMORY[0x277D85DE8];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  OUTLINED_FUNCTION_0();
  v102 = v3;
  MEMORY[0x28223BE20](v4);
  v105 = v83 - v5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0();
  v97 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v99 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v103 = v83 - v11;
  v12 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  v98 = v22 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v83 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v83 - v28;
  sub_237A2B3A8(v113);
  v113[11] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_9();
  sub_237C05A2C();
  OUTLINED_FUNCTION_3_8();
  v107 = a1;
  sub_237C05A2C();
  sub_237C081EC();
  v108 = v29;
  v30 = sub_237A5C0AC(v29, v17);
  v31 = *(v14 + 8);
  v31(v17, v12);
  if ((v30 & 1) == 0)
  {
    v33 = v108;
LABEL_7:
    v37 = OUTLINED_FUNCTION_4_7();
    (v30)(v37);
    (v30)(v26, v18);
    (v30)(v33, v18);
    memcpy(v111, v113, sizeof(v111));
    memcpy(v112, v113, sizeof(v112));
    sub_237A0030C(v111, &v110);
    sub_237A00344(v112);
    return memcpy(v106, v111, 0x60uLL);
  }

  sub_237C081DC();
  v101 = v26;
  v30 = sub_237A5C0AC(v26, v17);
  v31(v17, v12);
  if ((v30 & 1) == 0)
  {
    v33 = v108;
    v26 = v101;
    goto LABEL_7;
  }

  v33 = v108;
  v32 = v109;
  v34 = sub_237C05B1C();
  if (v32)
  {
    v36 = OUTLINED_FUNCTION_4_7();
    (v30)(v36);
    (v30)(v101, v18);
    (v30)(v33, v18);
  }

  else
  {
    v39 = v34;
    v40 = v35;
    sub_237C057CC();
    swift_allocObject();
    v41 = sub_237C057BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE78, &qword_237C0C1F8);
    sub_237A00F3C(&qword_27DE9AE90, sub_237A00FB4, MEMORY[0x277D83978]);
    sub_237C057AC();
    v42 = v40;
    v26 = v101;
    v85 = v42;
    v96 = v112[0];
    (*(v20 + 16))(v98, v101, v18);
    v43 = sub_237C05B1C();
    sub_237A2BF3C(v43, v44, v114);
    v90 = v39;
    v45 = *(v20 + 8);
    v83[1] = v20 + 8;
    v83[2] = v41;
    v83[0] = v45;
    v45(v98, v18);
    sub_237A01008(v114, v113);
    v46 = sub_237C08C2C();
    sub_2379F5634();
    v47 = v96;

    v48 = sub_237C08CFC();
    if (os_log_type_enabled(v48, v46))
    {
      v49 = swift_slowAlloc();
      LODWORD(v109) = v46;
      v50 = v49;
      *v49 = 134217984;
      *(v49 + 4) = *(v47 + 16);

      _os_log_impl(&dword_2379D3000, v48, v109, "Reading AnnotatedFeatureStore with %ld elements", v50, 0xCu);
      MEMORY[0x2383DD950](v50, -1, -1);
    }

    else
    {
    }

    v51 = 0;
    v88 = (v97 + 2);
    v87 = (v97 + 1);
    v86 = v102 + 32;
    v52 = (v47 + 48);
    v53 = MEMORY[0x277D84F90];
    v89 = v115;
    v54 = (v115 + 48);
    v30 = v90;
    v109 = 0;
    while (1)
    {
      v55 = *(v96 + 16);
      if (v51 == v55)
      {

        sub_2379E86D4(v30, v85);

        goto LABEL_7;
      }

      if (v51 >= v55)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
      }

      if (v51 >= *(v89 + 16))
      {
        goto LABEL_58;
      }

      if (*(v54 - 3) != 2)
      {
        break;
      }

      v94 = v53;
      v95 = v54;
      v57 = *(v52 - 2);
      v56 = *(v52 - 1);
      v58 = *v52;
      v60 = *(v54 - 1);
      v59 = *v54;
      v61 = v60 >> 2;
      v97 = v52;
      v98 = v51;
      v93 = v56;
      switch(v113[1] >> 62)
      {
        case 1:
          v91 = v59;
          v69 = SLODWORD(v113[0]);
          if (SLODWORD(v113[0]) > v113[0] >> 32)
          {
            goto LABEL_60;
          }

          v92 = v57;

          v84 = v58;

          v70 = sub_237C0581C();
          if (!v70)
          {
            goto LABEL_36;
          }

          v71 = sub_237C0583C();
          if (__OFSUB__(v69, v71))
          {
            goto LABEL_66;
          }

          v70 += v69 - v71;
LABEL_36:
          sub_237C0582C();
          if (v70)
          {
            v26 = v101;
            if (v91 < 0)
            {
              goto LABEL_67;
            }

            v72 = (v70 + v91);
          }

          else
          {
            v72 = 0;
            v26 = v101;
          }

          if ((v60 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v60 >= 4)
          {
            v75 = v72;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
            v62 = swift_allocObject();
            _swift_stdlib_malloc_size(v62);
            OUTLINED_FUNCTION_1_5();
            v62[2] = v61;
            v62[3] = v76;
            memcpy(v62 + 4, v75, v60 & 0x7FFFFFFFFFFFFFFCLL);
          }

          else
          {
            v62 = MEMORY[0x277D84F90];
          }

          v64 = v84;
LABEL_50:
          v112[0] = v62;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
          sub_237A010B8();
          v77 = v103;
          sub_237C082BC();
          (*v88)(v99, v77, v104);
          v112[0] = v93;
          v112[1] = v64;

          sub_237C06C6C();

          v53 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_237BC1880();
            v53 = v79;
          }

          v33 = v108;
          v78 = *(v53 + 16);
          if (v78 >= *(v53 + 24) >> 1)
          {
            sub_237BC1880();
            v53 = v80;
          }

          (*v87)(v103, v104);
          *(v53 + 16) = v78 + 1;
          (*(v102 + 32))(v53 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v78, v105, v100);
          v113[11] = v53;
          v52 = v97 + 3;
          v54 = v95 + 8;
          v51 = v98 + 1;
          v30 = v90;
          break;
        case 2:
          v91 = v59;
          v92 = v57;
          v84 = v60 >> 2;
          v63 = *(v113[0] + 16);

          v64 = v58;

          v65 = sub_237C0581C();
          if (!v65)
          {
            goto LABEL_25;
          }

          v66 = sub_237C0583C();
          if (__OFSUB__(v63, v66))
          {
            goto LABEL_64;
          }

          v65 += v63 - v66;
LABEL_25:
          sub_237C0582C();
          if (v65)
          {
            v26 = v101;
            if (v91 < 0)
            {
              goto LABEL_65;
            }

            v67 = (v65 + v91);
          }

          else
          {
            v67 = 0;
            v26 = v101;
          }

          if ((v60 & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          if (v60 >= 4)
          {
            v73 = v67;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
            v62 = swift_allocObject();
            _swift_stdlib_malloc_size(v62);
            OUTLINED_FUNCTION_1_5();
            v62[2] = v84;
            v62[3] = v74;
            memcpy(v62 + 4, v73, v60 & 0x7FFFFFFFFFFFFFFCLL);
          }

          else
          {
            v62 = MEMORY[0x277D84F90];
          }

          goto LABEL_50;
        case 3:
          *(v112 + 6) = 0;
          v112[0] = 0;
          v26 = v101;
          if (((v59 | v60) & 0x8000000000000000) != 0)
          {
            goto LABEL_61;
          }

          v62 = MEMORY[0x277D84F90];
          if (v60 >= 4)
          {
            goto LABEL_30;
          }

          goto LABEL_31;
        default:
          v112[0] = v113[0];
          LODWORD(v112[1]) = v113[1];
          WORD2(v112[1]) = WORD2(v113[1]);
          if (((v59 | v60) & 0x8000000000000000) != 0)
          {
            goto LABEL_59;
          }

          v62 = MEMORY[0x277D84F90];
          v26 = v101;
          if (v60 < 4)
          {
            goto LABEL_31;
          }

LABEL_30:
          v91 = v59;
          v92 = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
          v62 = swift_allocObject();
          _swift_stdlib_malloc_size(v62);
          OUTLINED_FUNCTION_1_5();
          v62[2] = v61;
          v62[3] = v68;
          memcpy(v62 + 4, v112 + v91, v60 & 0xFFFFFFFFFFFFFFFCLL);
LABEL_31:

          v64 = v58;
          goto LABEL_50;
      }
    }

    sub_237A01064();
    swift_allocError();
    *v81 = 2;
    swift_willThrow();

    sub_2379E86D4(v30, v85);
    v82 = v83[0];
    (v83[0])(v107, v18);
    v82(v26, v18);
    v82(v33, v18);
  }

  memcpy(v112, v113, sizeof(v112));
  return sub_237A00344(v112);
}