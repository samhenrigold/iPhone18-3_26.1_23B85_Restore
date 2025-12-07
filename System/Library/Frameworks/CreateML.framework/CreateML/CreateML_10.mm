void sub_237AB0A6C()
{
  OUTLINED_FUNCTION_74();
  v35 = v0;
  v2 = v1;
  v40[3] = *MEMORY[0x277D85DE8];
  v39 = sub_237C05ADC();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v39);
  v6 = *(v3 + 16);
  v6(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v5);
  type metadata accessor for VNImageOption(0);
  sub_237AB6760(&qword_27DE9A7C0, type metadata accessor for VNImageOption, &unk_237C0A678);
  v7 = MEMORY[0x277D84F90];
  v8 = sub_237C085AC();
  v9 = objc_allocWithZone(MEMORY[0x277CE2D50]);
  v38 = sub_237ADAA08(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  OUTLINED_FUNCTION_103();
  v10 = swift_allocObject();
  v37 = v10;
  *(v10 + 16) = v7;
  v34 = v10 + 16;
  OUTLINED_FUNCTION_103();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v36 = (v11 + 16);
  OUTLINED_FUNCTION_103();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = v2;
  v14 = v39;
  (v6)(&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v39);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = (v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = v14;
  v19 = v37;
  (*(v3 + 32))(v17 + v15, &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v20 = v38;
  *(v17 + v16) = v12;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;
  v21 = objc_allocWithZone(MEMORY[0x277CE2C98]);

  v22 = sub_237AB6280(sub_237AB6944, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_237C10D30;
  *(v23 + 32) = v22;
  sub_2379E8EE0(0, &qword_27DE9C768, 0x277CE2DF0);
  v24 = v22;
  OUTLINED_FUNCTION_38_6();
  v25 = sub_237C0892C();

  v40[0] = 0;
  LODWORD(v16) = [v20 performRequests:v25 error:v40];

  v26 = v40[0];
  if (v16)
  {
    v27 = v36;
    OUTLINED_FUNCTION_31_11(v36);
    v28 = *v27;
    if (!v28)
    {
      v32 = v26;

      OUTLINED_FUNCTION_31_11(v34);

      goto LABEL_6;
    }

    swift_willThrow();
    v29 = v26;
    v30 = v28;
  }

  else
  {
    v31 = v40[0];
    sub_237C0593C();

    swift_willThrow();
  }

LABEL_6:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237AB0E94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v10 = a1;
  v11 = sub_237A254D8(a1);
  if (!a2)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v11 == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_89;
  }

  v13 = v11 / a2;
  if (v11 / a2 < 0)
  {
    goto LABEL_86;
  }

  v56 = v3;
  v57 = v11;
  v4 = MEMORY[0x277D84F90];
  v61 = v10 >> 62;
  if (!v13)
  {
LABEL_56:
    v34 = v57 - v13 * a2;
    if (v34 < 1)
    {
      return v4;
    }

    v6 = v4;
    v4 = v13 * a2;
    v5 = v56;
    if ((v13 * a2) >> 64 == (v13 * a2) >> 63)
    {
      v7 = a2 - v34;
      if (!__OFSUB__(a2, v34))
      {
        v64 = MEMORY[0x277D84F90];
        sub_237C08FCC();
        v35 = 0x277CCA000uLL;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_237C08F8C();
        OUTLINED_FUNCTION_30_12();
        sub_237C08FFC();
        sub_237C08F9C();
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_237C08F8C();
        OUTLINED_FUNCTION_30_12();
        sub_237C08FFC();
        sub_237C08F9C();
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        sub_237C08F8C();
        OUTLINED_FUNCTION_30_12();
        sub_237C08FFC();
        sub_237C08F9C();
        v36 = objc_allocWithZone(MEMORY[0x277CBFF48]);
        v37 = sub_237AC8938(v64, 65600);
        if (!v56)
        {
          v7 = v37;
          sub_237AB4E38(v37, 0.0);
          v5 = v57;
          if (v57 >= v4)
          {
            sub_237AB63F8(v4, v10);
            sub_237AB63F8(v57, v10);
            if ((v10 & 0xC000000000000001) == 0 || v4 == v57)
            {
            }

            else
            {
              if (v4 >= v57)
              {
                __break(1u);
                goto LABEL_105;
              }

              sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
              OUTLINED_FUNCTION_38_6();

              v39 = v4;
              do
              {
                v40 = v39 + 1;
                sub_237C08F3C();
                v39 = v40;
              }

              while (v57 != v40);
            }

            if (!v61)
            {
              if (v57 < 0)
              {
                __break(1u);
                goto LABEL_104;
              }

              v41 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
              v35 = (2 * v57) | 1;
              v10 = v4;
              goto LABEL_92;
            }

LABEL_91:

            sub_237C090FC();
            v41 = v45;
            v10 = v46;
            v35 = v47;
            if ((v47 & 1) == 0)
            {
LABEL_75:
              v42 = OUTLINED_FUNCTION_36_4();
              sub_237A55DCC(v42, v43, v10, v35);
              v41 = v44;
              goto LABEL_98;
            }

LABEL_92:
            sub_237C092CC();
            swift_unknownObjectRetain_n();
            v48 = swift_dynamicCastClass();
            if (!v48)
            {
              swift_unknownObjectRelease();
              v48 = MEMORY[0x277D84F90];
            }

            v49 = *(v48 + 16);

            if (!__OFSUB__(v35 >> 1, v10))
            {
              if (v49 == (v35 >> 1) - v10)
              {
                swift_dynamicCastClass();
                OUTLINED_FUNCTION_36_8();
                swift_unknownObjectRelease();
                v5 = v57;
                if (v41)
                {
                  goto LABEL_99;
                }

                v41 = MEMORY[0x277D84F90];
LABEL_98:
                swift_unknownObjectRelease();
LABEL_99:
                sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_237C10D30;
                *(inited + 32) = v7;
                v7 = v7;
                sub_237A96944(inited);
                v36 = sub_2379EB400(v41, 0, 65600);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
LABEL_100:
                  v52 = *(v6 + 16);
                  v51 = *(v6 + 24);
                  if (v52 >= v51 >> 1)
                  {
                    OUTLINED_FUNCTION_106(v51);
                    sub_237BC13C0();
                    v6 = v55;
                  }

                  *(v6 + 16) = v52 + 1;
                  v53 = (v6 + 24 * v52);
                  v53[4] = v36;
                  v53[5] = v4;
                  v4 = v6;
                  v53[6] = v5;
                  return v4;
                }

LABEL_104:
                sub_237BC13C0();
                v6 = v54;
                goto LABEL_100;
              }

              goto LABEL_106;
            }

LABEL_105:
            __break(1u);
LABEL_106:
            swift_unknownObjectRelease();
            v5 = v57;
            goto LABEL_75;
          }

LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        return v4;
      }

      goto LABEL_88;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  v5 = 0;
  v60 = a2;
  v59 = v13;
  while (1)
  {
    v7 = v5 * a2;
    if ((v5 * a2) >> 64 != (v5 * a2) >> 63)
    {
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
      goto LABEL_85;
    }

    v6 = v7 + a2;
    if (__OFADD__(v7, a2))
    {
      goto LABEL_77;
    }

    if (v6 < v7)
    {
      goto LABEL_78;
    }

    if (v61)
    {
      v14 = sub_237C090EC();
    }

    else
    {
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 < v7)
    {
      goto LABEL_79;
    }

    if (v7 < 0)
    {
      goto LABEL_80;
    }

    if (v61)
    {
      v15 = sub_237C090EC();
    }

    else
    {
      v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15 < v6)
    {
      goto LABEL_81;
    }

    if ((v10 & 0xC000000000000001) == 0 || v7 == v6)
    {

      if (!v61)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v7 >= v6)
      {
        goto LABEL_83;
      }

      v16 = v5 * a2;
      do
      {
        v17 = v16 + 1;
        sub_237C08F3C();
        v16 = v17;
        --a2;
      }

      while (a2);
      if (!v61)
      {
LABEL_27:
        v18 = v7;
        v19 = (2 * v6) | 1;
        goto LABEL_30;
      }
    }

    sub_237C090FC();
LABEL_30:
    v62 = v5;
    v63 = v6;
    v20 = v19 >> 1;
    if ((v19 & 1) == 0)
    {
      v6 = v18;
      v5 = v19 >> 1;
      v21 = __OFSUB__(v20, v18);
      v22 = v20 - v18;
      v23 = v21;
      swift_unknownObjectRetain();
      if (v23)
      {
        goto LABEL_82;
      }

      if (v22)
      {
        goto LABEL_36;
      }

LABEL_48:
      swift_unknownObjectRelease();
      v24 = MEMORY[0x277D84F90];
LABEL_49:
      v27 = v62;
      v6 = v63;
LABEL_50:
      swift_unknownObjectRelease();
      goto LABEL_51;
    }

    v6 = v18;
    v58 = v4;
    sub_237C092CC();
    swift_unknownObjectRetain_n();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
      swift_unknownObjectRelease();
      v26 = MEMORY[0x277D84F90];
    }

    v4 = *(v26 + 16);

    v5 = v20;
    v21 = __OFSUB__(v20, v6);
    v22 = v20 - v6;
    if (v21)
    {
      goto LABEL_84;
    }

    if (v4 != v22)
    {
      break;
    }

    v24 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v4 = v58;
    v27 = v62;
    v6 = v63;
    if (!v24)
    {
      v24 = MEMORY[0x277D84F90];
      goto LABEL_50;
    }

LABEL_51:
    v28 = sub_2379EB400(v24, 0, 65600);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237BC13C0();
      v4 = v32;
    }

    v30 = *(v4 + 16);
    v29 = *(v4 + 24);
    if (v30 >= v29 >> 1)
    {
      OUTLINED_FUNCTION_106(v29);
      sub_237BC13C0();
      v4 = v33;
    }

    v5 = v27 + 1;
    *(v4 + 16) = v30 + 1;
    v31 = (v4 + 24 * v30);
    v31[4] = v28;
    v31[5] = v7;
    v31[6] = v6;
    v13 = v59;
    a2 = v60;
    if (v5 == v59)
    {
      goto LABEL_56;
    }
  }

  swift_unknownObjectRelease();
  v4 = v58;
  if (!v22)
  {
    goto LABEL_48;
  }

LABEL_36:
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
    v24 = swift_allocObject();
    v25 = _swift_stdlib_malloc_size(v24);
    v24[2] = v22;
    v24[3] = (2 * ((v25 - 32) / 8)) | 1;
  }

  swift_unknownObjectRelease();
  if (v6 != v5)
  {
    swift_arrayInitWithCopy();
    goto LABEL_49;
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

void sub_237AB166C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  MLDataTable.subscript.getter();
  if (v53)
  {
    v10 = OUTLINED_FUNCTION_117_0();
    sub_2379DBC9C(v10, v11);
LABEL_17:
    v42 = *(a1 + 8);
    v52 = *a1;
    v41 = v52;
    LOBYTE(v53) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B660;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    LOBYTE(v54) = 5;

    sub_2379DBCF4(v41, v42);
    sub_2379F21A4(&v52, inited, &v54);
    sub_2379DBC9C(v52, v53);
    swift_setDeallocating();
    sub_237B9082C();
    return;
  }

  v12 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v12, v13);
  sub_237A60248(&v54);
  v14 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v14, v15);
  v16 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v16, v17);
  if (v54 != 3)
  {
    goto LABEL_17;
  }

  MLDataTable.subscript.getter();
  v18 = v54;
  v19 = v55;
  OUTLINED_FUNCTION_103();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;

  sub_237AC3F10(1, sub_237AB63F0, v20, v18, v19, &v52);

  v21 = OUTLINED_FUNCTION_37_0();
  sub_2379DBC9C(v21, v22);
  v56 = v52;
  v51 = v53;
  MLDataTable.subscript.getter();
  v23 = v52;
  v24 = v53;
  if (v53)
  {
    v25 = -1;
  }

  else
  {

    v25 = sub_237A2F128();
    v26 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v26, v27);
  }

  sub_2379DBC9C(v23, v24);
  sub_237AB08AC(v56, v51, &v54);
  v28 = v54;
  v29 = v55;
  if (v55)
  {
    v30 = -1;
  }

  else
  {
    v31 = OUTLINED_FUNCTION_88();
    sub_2379DBCF4(v31, v32);
    v30 = sub_237A2F128();
    v33 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v33, v34);
  }

  sub_2379DBC9C(v28, v29);
  if (__OFSUB__(v25, v30))
  {
    __break(1u);
LABEL_21:
    v36 = MEMORY[0x2383DCAF0](1, a4);
    goto LABEL_14;
  }

  if (v25 == v30)
  {

    sub_237AB09D4(v56, v51, a2, a3);
    goto LABEL_17;
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_237C08EDC();
  OUTLINED_FUNCTION_28_10();
  MEMORY[0x2383DC360]();
  v54 = (v25 - v30);
  v35 = sub_237C0924C();
  MEMORY[0x2383DC360](v35);

  OUTLINED_FUNCTION_28_10();
  MEMORY[0x2383DC360]();
  v5 = a4 & 0xC000000000000001;
  sub_237A254DC();
  if ((a4 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  v36 = *(a4 + 40);
LABEL_14:
  v37 = v36;
  v38 = [v36 integerValue];

  v54 = v38;
  v39 = sub_237C0924C();
  MEMORY[0x2383DC360](v39);

  MEMORY[0x2383DC360](8236, 0xE200000000000000);
  sub_237A254DC();
  if (v5)
  {
    v40 = MEMORY[0x2383DCAF0](2, a4);
  }

  else
  {
    v40 = *(a4 + 48);
  }

  v44 = v40;
  v45 = [v40 integerValue];

  v54 = v45;
  v46 = sub_237C0924C();
  MEMORY[0x2383DC360](v46);

  OUTLINED_FUNCTION_28_10();
  MEMORY[0x2383DC360](0xD00000000000003CLL);
  v47 = v52;
  v48 = v53;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v49 = swift_allocError();
  *v50 = v47;
  v50[1] = v48;
  OUTLINED_FUNCTION_23_3(v49, v50);
  swift_willThrow();
  sub_2379DBC9C(v56, v51);
}

uint64_t sub_237AB1AE0(uint64_t a1, unint64_t a2)
{
  sub_2379F3408();
  v2 = sub_237C08D8C();
  v3 = v2;
  v4 = v2[2];
  if (v4 == 3)
  {
    v15 = v2[4];
    v16 = v2[5];

    result = sub_237AB553C(v15, v16);
    if (v17)
    {
      goto LABEL_13;
    }

    if (v3[2] >= 2uLL)
    {
      v18 = v3[6];
      v19 = v3[7];

      result = sub_237AB553C(v18, v19);
      if (v20)
      {
        goto LABEL_13;
      }

      if (v3[2] >= 3uLL)
      {
        v26 = v3[8];
        v27 = v3[9];

        result = sub_237AB553C(v26, v27);
        if (v28)
        {
          goto LABEL_14;
        }

        return result;
      }

LABEL_20:
      __break(1u);
      return result;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v5 = v2[4];
      v6 = v2[5];

      result = sub_237AB553C(v5, v6);
      if ((v8 & 1) == 0)
      {
        return result;
      }

LABEL_14:
      sub_237C08EDC();
      OUTLINED_FUNCTION_28_10();
      MEMORY[0x2383DC360](0xD00000000000001FLL);
      v21 = OUTLINED_FUNCTION_13_20();
      MEMORY[0x2383DC360](v21);
      OUTLINED_FUNCTION_28_10();
      MEMORY[0x2383DC360](v22, v23);
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v24 = swift_allocError();
      *v25 = 0;
      v25[1] = 0xE000000000000000;
      OUTLINED_FUNCTION_23_3(v24, v25);
      return swift_willThrow();
    }

LABEL_13:

    goto LABEL_14;
  }

  v9 = v2[4];
  v10 = v2[5];

  result = sub_237AB553C(v9, v10);
  if (v11)
  {
    goto LABEL_13;
  }

  if (v3[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  v12 = v3[6];
  v13 = v3[7];

  result = sub_237AB553C(v12, v13);
  if (v14)
  {
    goto LABEL_14;
  }

  return result;
}

void *sub_237AB1D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v56 = a6;
  v57 = a7;
  v54 = a4;
  v55 = a5;
  v53 = a3;
  v52 = a2;
  v61 = a1;
  v65[6] = *MEMORY[0x277D85DE8];
  v10 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  sub_2379E8EE0(0, &qword_27DE9C750, 0x277CE2E30);
  v16 = *(v12 + 16);
  v16(v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v60 = sub_237AB4EE0(v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_103();
  v17 = swift_allocObject();
  v58 = v17;
  *(v17 + 16) = MEMORY[0x277D84F90];
  v49[0] = v17 + 16;
  OUTLINED_FUNCTION_103();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v51 = (v18 + 16);
  OUTLINED_FUNCTION_103();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v50 = (v19 + 16);
  v16(v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v61, v10);
  v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v21 = (v14 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  (*(v12 + 32))(v22 + v20, v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  *(v22 + v21) = v19;
  v23 = v58;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v58;
  objc_allocWithZone(MEMORY[0x277CE2C98]);

  v59 = v19;

  v24 = sub_237AB6280(sub_237AB6628, v22);
  if (a8 < 0.01)
  {
    v65[0] = 0;
    v65[1] = 0xE000000000000000;
    sub_237C08EDC();
    OUTLINED_FUNCTION_41_8();
    sub_237C08A8C();
    MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C1A5A0);
    a8 = 30.0;
    sub_237C08A8C();
    MEMORY[0x2383DC360](0x776F6E2073706620, 0xE90000000000002ELL);
    sub_237C08C4C();
    v25 = OUTLINED_FUNCTION_36_4();
    sub_237BABE74(v25, v26, v27);
  }

  v28 = [objc_allocWithZone(MEMORY[0x277CE2E38]) init];
  v29 = [objc_allocWithZone(MEMORY[0x277CE2E40]) initWithTimeInterval_];
  [v28 setCadence_];

  v65[0] = 0;
  v30 = v60;
  v31 = [v60 addRequest:v24 processingOptions:v28 error:v65];
  v32 = v65[0];
  if (v31 && (v33 = v65[0], sub_237C08BCC(), v63 = 0, v34 = [v30 analyzeTimeRange:v65 error:&v63], v32 = v63, v34))
  {
    v35 = v50;
    OUTLINED_FUNCTION_31_11(v50);
    if (*v35 < 1)
    {
      v45 = v32;
    }

    else
    {
      v63 = 0;
      v64 = 0xE000000000000000;
      v36 = v32;
      sub_237C08EDC();

      v63 = 0x206F65646956;
      v64 = 0xE600000000000000;
      v37 = sub_237C05A9C();
      MEMORY[0x2383DC360](v37);

      MEMORY[0x2383DC360](0x2073616820, 0xE500000000000000);
      v62[0] = *v35;
      v38 = sub_237C0924C();
      MEMORY[0x2383DC360](v38);

      OUTLINED_FUNCTION_41_8();
      v39 = v63;
      v40 = v64;
      v41 = sub_237C08C1C();
      sub_237BABE74(v39, v40, v41);
    }

    v46 = v51;
    OUTLINED_FUNCTION_31_11(v51);
    v47 = *v46;
    if (!*v46)
    {

      OUTLINED_FUNCTION_31_11(v49[0]);
      v43 = *(v23 + 16);

      return v43;
    }

    swift_willThrow();
    v48 = v47;
    v43 = v28;
  }

  else
  {
    v42 = v32;
    sub_237C0593C();

    swift_willThrow();
    v43 = v24;
    v24 = v30;
    v30 = v28;
  }

  return v43;
}

BOOL sub_237AB2370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_237C08ECC();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

void sub_237AB2468()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v40 = v2;
  v50 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v49 = v7 - v6;
  v8 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v9 = sub_237BA2F3C();
  v10 = v9;
  v45 = *(v9 + 16);
  if (v45)
  {
    v11 = 0;
    v44 = v9 + 32;
    v48 = (v4 + 8);
    v43 = v1;
    v42 = v4;
    v41 = v9;
    while (v11 < *(v10 + 16))
    {
      v12 = (v44 + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(v1 + 16);

      v47 = v13;
      v52 = v14;
      if (v15 && (v16 = sub_237ACAC78(v14, v13), (v17 & 1) != 0))
      {
        v18 = *(*(v1 + 56) + 8 * v16);
      }

      else
      {
        v18 = v8;
      }

      v19 = *(v18 + 16);
      if (v19)
      {
        v46 = v11;
        sub_237AC8A74();
        v20 = v8;
        v21 = v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v51 = *(v4 + 72);
        v22 = *(v4 + 16);
        do
        {
          v22(v49, v21, v50);
          v23 = sub_237C05A9C();
          v25 = v24;
          (*v48)(v49, v50);
          v27 = *(v20 + 16);
          v26 = *(v20 + 24);
          if (v27 >= v26 >> 1)
          {
            OUTLINED_FUNCTION_106(v26);
            sub_237AC8A74();
          }

          *(v20 + 16) = v27 + 1;
          v28 = v20 + 16 * v27;
          *(v28 + 32) = v23;
          *(v28 + 40) = v25;
          v21 += v51;
          --v19;
        }

        while (v19);

        v1 = v43;
        v4 = v42;
        v8 = MEMORY[0x277D84F90];
        v10 = v41;
        v11 = v46;
      }

      else
      {

        v20 = v8;
      }

      v29 = *(v20 + 16);
      if (v29)
      {
        v30 = sub_237C0898C();
        *(v30 + 16) = v29;
        v31 = v29 - 1;
        for (i = 32; ; i += 16)
        {
          v33 = (v30 + i);
          *v33 = v52;
          v33[1] = v47;
          if (!v31)
          {
            break;
          }

          --v31;
        }
      }

      else
      {

        v30 = v8;
      }

      ++v11;
      sub_237A96708(v30);
      sub_237A96708(v20);
      if (v11 == v45)
      {

        v34 = v54;
        v35 = v53;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
    v34 = MEMORY[0x277D84F90];
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    *(inited + 32) = 0x6C6562616CLL;
    *(inited + 40) = 0xE500000000000000;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    *(inited + 72) = v37;
    v38 = sub_237AB66E4();
    *(inited + 48) = v34;
    *(inited + 80) = v38;
    *(inited + 88) = 0x7461506F65646976;
    *(inited + 128) = v37;
    *(inited + 136) = v38;
    *(inited + 96) = 0xE900000000000068;
    *(inited + 104) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
    v39 = sub_237C085AC();
    MLDataTable.init(dictionary:)(v39, v40);
    OUTLINED_FUNCTION_73();
  }
}

uint64_t sub_237AB28BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  OUTLINED_FUNCTION_45_4();
  if (v9)
  {
    goto LABEL_3;
  }

  swift_setDeallocating();
  sub_237B9082C();
  v16 = swift_initStackObject();
  OUTLINED_FUNCTION_5_32(v16, v17, v18, v19, v20, v21, v22, v23, v24, v75, a6, a7, a8, a4, v14, v25);
  v26 = v91;
  *(v27 + 32) = v91;
  *(v27 + 40) = a5;

  OUTLINED_FUNCTION_45_4();
  swift_setDeallocating();
  sub_237B9082C();
  v28 = swift_initStackObject();
  OUTLINED_FUNCTION_5_32(v28, v29, v30, v31, v32, v33, v34, v35, v36, v76, v79, v83, v87, v91, v94, v37);
  *(v38 + 32) = a2;
  *(v38 + 40) = a3;

  OUTLINED_FUNCTION_42_5();
  swift_setDeallocating();
  sub_237B9082C();
  v39 = swift_initStackObject();
  OUTLINED_FUNCTION_5_32(v39, v40, v41, v42, v43, v44, v45, v46, v47, v77, v80, v84, v88, v92, v95, v48);
  *(v49 + 32) = v26;
  *(v49 + 40) = a5;

  OUTLINED_FUNCTION_42_5();
  swift_setDeallocating();
  result = sub_237B9082C();
  v51 = v85;
  if (v85)
  {
    v52 = swift_initStackObject();
    OUTLINED_FUNCTION_5_32(v52, v53, v54, v55, v56, v57, v58, v59, v60, v78, v81, v85, v89, v93, v96, v61);
    *(v62 + 32) = v81;
    *(v62 + 40) = v51;

    OUTLINED_FUNCTION_45_4();
    v63 = v89;
    swift_setDeallocating();
    result = sub_237B9082C();
  }

  else
  {
    v63 = v89;
  }

  if (a9)
  {
    v64 = swift_initStackObject();
    OUTLINED_FUNCTION_5_32(v64, v65, v66, v67, v68, v69, v70, v71, v72, v78, v81, v85, v89, v93, v96, v73);
    *(v74 + 32) = v63;
    *(v74 + 40) = a9;

    OUTLINED_FUNCTION_45_4();
LABEL_3:
    swift_setDeallocating();
    return sub_237B9082C();
  }

  return result;
}

void sub_237AB2B70()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v381 = v3;
  v380 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v379 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v375 = &v369 - v10;
  v378 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v377 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v13);
  v382 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v383 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v369 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v21);
  v23 = &v369 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v369 - v25;
  type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_39_5();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  sub_237AB6644(v2, v29 - v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v383 + 32))(v23, v30, v382);
      sub_237C0822C();
      sub_237A5C58C();
      if (!v0)
      {
        v178 = v85;
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_34_7();
        v179();
        sub_237AB2468();

        OUTLINED_FUNCTION_21_17();
        v206 = *(v205 - 256);
        v411 = v178;
        v412 = v206;
        v384 = v178;
        LOBYTE(v385) = v206;
        v207 = OUTLINED_FUNCTION_37_0();
        v209 = sub_2379DBCF4(v207, v208);
        OUTLINED_FUNCTION_6_32(v209, v210, v211, v212, v213, v214, v215, v216, v369);
        OUTLINED_FUNCTION_35_8();
        v217 = OUTLINED_FUNCTION_37_0();
        sub_2379DBC9C(v217, v278);
        v279 = OUTLINED_FUNCTION_10_26();
        v280(v279);
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_34_7();
      v86();
      v87 = OUTLINED_FUNCTION_10_26();
      v88(v87);
      goto LABEL_53;
    case 2u:
      v81 = v383;
      v82 = v382;
      (*(v383 + 32))(v26, v30, v382);
      sub_237C0822C();
      sub_237A5D608();
      if (!v0)
      {
        v160 = v83;
        OUTLINED_FUNCTION_36_3();
        OUTLINED_FUNCTION_34_7();
        v161();
        sub_237AB2468();

        OUTLINED_FUNCTION_21_17();
        v193 = *(v192 - 256);
        v411 = v160;
        v412 = v193;
        v384 = v160;
        LOBYTE(v385) = v193;
        v194 = OUTLINED_FUNCTION_37_0();
        v196 = sub_2379DBCF4(v194, v195);
        OUTLINED_FUNCTION_6_32(v196, v197, v198, v199, v200, v201, v202, v203, v369);
        OUTLINED_FUNCTION_35_8();
        v204 = OUTLINED_FUNCTION_37_0();
        sub_2379DBC9C(v204, v275);
        v276 = OUTLINED_FUNCTION_4_37();
        v277(v276);
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_36_3();
      OUTLINED_FUNCTION_34_7();
      v84();
      (*(v81 + 8))(v26, v82);
      goto LABEL_53;
    case 3u:
      sub_237A28130(v30);
      goto LABEL_12;
    case 4u:
      v55 = *v30;
      v56 = *(v30 + 8);
      v57 = *(v30 + 16);
      v382 = *(v30 + 24);
      v58 = *(v30 + 32);
      v59 = *(v30 + 40);
      v60 = *(v30 + 48);
      v383 = *(v30 + 56);
      v61 = *(v30 + 64);
      v62 = *(v30 + 72);
      v411 = v55;
      v412 = v56;
      v384 = v55;
      LOBYTE(v385) = v56;
      v63 = OUTLINED_FUNCTION_16_15();
      sub_2379DBCF4(v63, v64);
      v65 = OUTLINED_FUNCTION_16_15();
      sub_2379DBCF4(v65, v66);
      v380 = v57;
      v67 = v57;
      v68 = v382;
      v379 = v58;
      v69 = v58;
      v70 = v59;
      v71 = v59;
      v72 = v60;
      v73 = v60;
      v74 = v383;
      sub_237AB28BC(&v384, v67, v382, v69, v71, v73, v383, v61, v62);
      if (v0)
      {

        v75 = OUTLINED_FUNCTION_16_15();
        sub_2379DBC9C(v75, v76);
        v77 = OUTLINED_FUNCTION_16_15();
        sub_2379DBC9C(v77, v78);
        v79 = OUTLINED_FUNCTION_16_15();
        sub_2379DBC9C(v79, v80);
        goto LABEL_53;
      }

      v375 = v72;
      v376 = v61;
      v377 = v70;
      v106 = v379;
      v378 = v55;
      v107 = OUTLINED_FUNCTION_16_15();
      sub_2379DBC9C(v107, v108);
      if (v74)
      {
        sub_237B6C670(v109, v110, v111, v112, v113, v114, v115, v116, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388);
        OUTLINED_FUNCTION_20_13();
        sub_237B6DAB4(v375, v383, v117, 0xE500000000000000, v118, v119, v120, v121, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380);
        if ((v412 & 1) == 0)
        {
          v122 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v122, v123);
          sub_237B6C588();
          v124 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v124, v125);
        }
      }

      if (v62)
      {
        sub_237B6C670(v109, v110, v111, v112, v113, v114, v115, v116, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388);
        OUTLINED_FUNCTION_29_9(v376, v62, v126, v127, v128, v129, v130, v131, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380);
        if ((v412 & 1) == 0)
        {
          v132 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v132, v133);
          sub_237B6C588();
          v134 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v134, v135);
        }
      }

      sub_237B6C670(v109, v110, v111, v112, v113, v114, v115, v116, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388);
      OUTLINED_FUNCTION_9_26();
      sub_237B6DAB4(v380, v68, v136, 0xE900000000000068, v137, v138, v139, v140, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380);

      v149 = v377;
      if ((v412 & 1) == 0)
      {
        v150 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v150, v151);
        sub_237B6C588();
        v152 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v152, v153);
      }

      sub_237B6C670(v141, v142, v143, v144, v145, v146, v147, v148, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4(v106, v149, v154, 0xE500000000000000, v155, v156, v157, v158, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380);

      OUTLINED_FUNCTION_32_8();
      if (v106)
      {
        v159 = &v411;
      }

      else
      {
        v189 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v189, v190);
        sub_237B6C588();
      }

      v191 = v378;

      sub_2379DBC9C(v191, v56);
      goto LABEL_51;
    case 5u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);

      OUTLINED_FUNCTION_36_3();
      v89(v30, v380);
LABEL_12:
      v90 = MEMORY[0x2383DDC00](0);
      if (!v90)
      {
        __break(1u);
        JUMPOUT(0x237AB406CLL);
      }

      v91 = v90;
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v92 = swift_allocObject();
      *(v92 + 16) = v91;
      type metadata accessor for _DataTable();
      swift_allocObject();
      v411 = sub_237B6C578(v92);
      v412 = 0;
      v93 = sub_237C08C1C();
      sub_237BABE74(0xD0000000000000A7, 0x8000000237C1A6B0, v93);
      goto LABEL_52;
    case 6u:
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
      v95 = (v30 + v94[12]);
      v96 = v95[1];
      v383 = *v95;
      v97 = (v30 + v94[16]);
      v98 = v97[1];
      v382 = *v97;
      v99 = (v30 + v94[20]);
      v100 = v99[1];
      v378 = *v99;
      v101 = (v30 + v94[24]);
      v102 = v101[1];
      v377 = *v101;
      v103 = v379;
      v104 = v375;
      v105 = v380;
      (*(v379 + 32))(v375, v30, v380);
      (*(v103 + 16))(v8, v104, v105);
      sub_237A70684(v8, 0, &v384);
      if (v0)
      {
        (*(v103 + 8))(v104, v105);

        goto LABEL_53;
      }

      v180 = v384;
      v181 = v385;
      v411 = v384;
      v412 = v385;
      sub_2379DBCF4(v384, v385);
      v182 = v377;
      sub_237AB28BC(&v384, v383, v96, v382, v98, v378, v100, v377, v102);
      OUTLINED_FUNCTION_35_8();
      sub_2379DBC9C(v180, v181);
      if (v100)
      {
        sub_237B6C670(v218, v219, v220, v221, v222, v223, v224, v225, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
        OUTLINED_FUNCTION_20_13();
        sub_237B6DAB4(v378, v100, v226, 0xE500000000000000, v227, v228, v229, v230, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378);
        if ((v412 & 1) == 0)
        {
          v231 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v231, v232);
          sub_237B6C588();
          v233 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v233, v234);
        }
      }

      v235 = v379;
      if (v102)
      {
        sub_237B6C670(v218, v219, v220, v221, v222, v223, v224, v225, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
        OUTLINED_FUNCTION_29_9(v182, v102, v236, v237, v238, v239, v240, v241, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378);
        if ((v412 & 1) == 0)
        {
          v242 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v242, v243);
          sub_237B6C588();
          v244 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v244, v245);
        }
      }

      sub_237B6C670(v218, v219, v220, v221, v222, v223, v224, v225, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
      OUTLINED_FUNCTION_9_26();
      sub_237B6DAB4(v383, v96, v246, 0xE900000000000068, v247, v248, v249, v250, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378);

      if ((v412 & 1) == 0)
      {
        v259 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v259, v260);
        sub_237B6C588();
        v261 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v261, v262);
      }

      sub_237B6C670(v251, v252, v253, v254, v255, v256, v257, v258, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4(v382, v98, v263, 0xE500000000000000, v264, v265, v266, v267, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378);

      OUTLINED_FUNCTION_32_8();
      if (v100)
      {
        v268 = &v411;
      }

      else
      {
        v269 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v269, v270);
        sub_237B6C588();
      }

      (*(v235 + 8))(v375, v380);
LABEL_51:
      v271 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v271, v272);
      goto LABEL_52;
    default:
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
      v32 = v31[12];
      v33 = (v30 + v31[16]);
      v35 = *v33;
      v34 = v33[1];
      v377 = v35;
      v380 = v34;
      v36 = (v30 + v31[20]);
      v37 = v36[1];
      v375 = *v36;
      v38 = (v30 + v31[24]);
      v40 = *v38;
      v39 = v38[1];
      v371 = v40;
      v379 = v39;
      v41 = v30 + v31[28];
      v43 = *v41;
      v42 = *(v41 + 8);
      v372 = v43;
      v378 = v42;
      v44 = v383;
      v45 = *(v383 + 32);
      v46 = v376;
      v47 = v382;
      v45(v376, v30, v382);
      v48 = v30 + v32;
      v49 = v374;
      v45(v374, v48, v47);
      v50 = v47;
      v51 = v44;
      (*(v44 + 16))(v18, v49, v50);
      LOBYTE(v384) = 1;
      *(&v384 + 1) = *v410;
      HIDWORD(v384) = *&v410[3];
      v385 = 44;
      v386 = 0xE100000000000000;
      v387 = 0;
      v388 = 0xE000000000000000;
      v389 = 92;
      v390 = 0xE100000000000000;
      v391 = 1;
      *v392 = *v409;
      *&v392[3] = *&v409[3];
      v393 = 34;
      v394 = 0xE100000000000000;
      v395 = 1;
      *v396 = *v408;
      *&v396[3] = *&v408[3];
      v397 = &unk_284ABEBF0;
      v398 = 10;
      v399 = 0xE100000000000000;
      v400 = 0;
      v401 = 0;
      v402 = 1;
      *v403 = *v407;
      *&v403[3] = *&v407[3];
      v404 = 0;
      MLDataTable.init(contentsOf:options:)(v18, &v384, &v405);
      if (v0)
      {
        v52 = *(v44 + 8);
        v53 = OUTLINED_FUNCTION_36_4();
        v52(v53);

        v54 = v46;
LABEL_36:
        (v52)(v54, v50);
        goto LABEL_53;
      }

      v370 = v37;
      v162 = v378;
      v163 = v379;
      v411 = v405;
      v412 = v406;
      v164 = v377;
      v165 = v380;
      MLDataTable.subscript.getter();
      v166 = v384;
      v167 = v385;
      if ((v385 & 1) != 0 || (v168 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v168, v169), v413 = v166, sub_237A60248(&v405), v170 = OUTLINED_FUNCTION_85(), sub_2379DBC9C(v170, v171), v405 != 2))
      {

        v183 = OUTLINED_FUNCTION_30();
        sub_2379DBC9C(v183, v184);
        v384 = 0;
        v385 = 0xE000000000000000;
        sub_237C08EDC();

        v384 = 0x206E6D756C6F43;
        v385 = 0xE700000000000000;
        MEMORY[0x2383DC360](v164, v165);

        MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C1A760);
        OUTLINED_FUNCTION_21_17();
        v186 = *(v185 - 256);
        sub_2379E8AF0();
        OUTLINED_FUNCTION_50();
        v187 = swift_allocError();
        *v188 = v167;
        v188[1] = v186;
        OUTLINED_FUNCTION_23_3(v187, v188);
        swift_willThrow();
        v52 = *(v51 + 8);
        (v52)(v374, v50);
        sub_2379DBC9C(v411, v412);
        v54 = v376;
        goto LABEL_36;
      }

      v172 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v172, v173);
      sub_237A607E0(0, &v384);
      sub_2379DBC9C(v166, 0);
      v174 = v384;
      v175 = v385;
      if (v386 != 2)
      {
        sub_2379E8CE8(v384, v385, v386);
        v174 = 0;
        v175 = 0xE000000000000000;
      }

      v384 = v174;
      v385 = v175;
      sub_237C0883C();
      sub_237C059BC();

      v176 = [objc_opt_self() defaultManager];
      sub_237C05A9C();
      sub_237C086BC();
      OUTLINED_FUNCTION_36_8();

      v177 = [v176 fileExistsAtPath_];

      if (v177)
      {
        OUTLINED_FUNCTION_32_8();
      }

      else
      {
        v281 = OUTLINED_FUNCTION_88();
        sub_2379DBCF4(v281, v282);
        v283 = OUTLINED_FUNCTION_88();
        v285 = sub_2379DFC10(v283, v284);
        MEMORY[0x28223BE20](v285);
        v286 = sub_2379E1FAC(sub_237AB66A8, (&v369 - 4), v285);

        v384 = v286;
        MEMORY[0x28223BE20](v287);
        v367 = &v384;
        v288 = sub_237BBDC94(sub_2379F5678);
        v290 = v289;

        sub_237B6C670(v291, v292, v293, v294, v295, v296, v297, v298, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388);
        v384 = v288;
        LOBYTE(v385) = v290 & 1;
        sub_237B6CF70(&v384, v164, v165);
        sub_2379DBC9C(v384, v385);
        v177 = v411;
        if (v412)
        {
          LOBYTE(v176) = 1;
        }

        else
        {
          v299 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v299, v300);
          sub_237B6C588();
          v301 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v301, v302);
          LOBYTE(v176) = 0;
        }

        v51 = v383;
      }

      v384 = v177;
      LOBYTE(v385) = v176;
      v303 = OUTLINED_FUNCTION_30();
      sub_2379DBCF4(v303, v304);
      sub_237AB28BC(&v384, v164, v165, v375, v370, v371, v163, v372, v162);
      OUTLINED_FUNCTION_35_8();
      v305 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v305, v306);
      if (v163)
      {
        sub_237B6C670(v307, v308, v309, v310, v311, v312, v313, v314, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
        OUTLINED_FUNCTION_20_13();
        sub_237B6DAB4(v371, v163, v315, 0xE500000000000000, v316, v317, v318, v319, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378);
        if ((v412 & 1) == 0)
        {
          v320 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v320, v321);
          sub_237B6C588();
          v322 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v322, v323);
        }
      }

      v324 = v375;
      v325 = v372;
      if (v162)
      {
        sub_237B6C670(v307, v308, v309, v310, v311, v312, v313, v314, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
        OUTLINED_FUNCTION_29_9(v325, v162, v326, v327, v328, v329, v330, v331, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378);
        if ((v412 & 1) == 0)
        {
          v332 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v332, v333);
          sub_237B6C588();
          v334 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v334, v335);
        }
      }

      sub_237B6C670(v307, v308, v309, v310, v311, v312, v313, v314, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
      OUTLINED_FUNCTION_9_26();
      sub_237B6DAB4(v164, v165, v336, 0xE900000000000068, v337, v338, v339, v340, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378);

      if ((v412 & 1) == 0)
      {
        v349 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v349, v350);
        sub_237B6C588();
        v351 = OUTLINED_FUNCTION_85();
        sub_2379DBC9C(v351, v352);
      }

      v353 = v51;
      sub_237B6C670(v341, v342, v343, v344, v345, v346, v347, v348, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
      OUTLINED_FUNCTION_19_17();
      sub_237B6DAB4(v324, v370, v354, 0xE500000000000000, v355, v356, v357, v358, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378);

      OUTLINED_FUNCTION_32_8();
      if (v324)
      {
        v359 = &v411;
      }

      else
      {
        v360 = OUTLINED_FUNCTION_85();
        sub_2379DBCF4(v360, v361);
        sub_237B6C588();
      }

      v362 = v376;
      v363 = v382;

      sub_2379DBC9C(v413, 0);
      v364 = *(v353 + 8);
      v364(v373, v363);
      v364(v374, v363);
      v365 = OUTLINED_FUNCTION_30();
      sub_2379DBC9C(v365, v366);
      v364(v362, v363);
LABEL_52:
      v273 = v412;
      v274 = v381;
      *v381 = v411;
      *(v274 + 8) = v273;
LABEL_53:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237AB4088@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_237C05ADC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C05A2C();
  v7 = sub_237C05A9C();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  a2[1] = v9;
  return result;
}

void sub_237AB4184()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v79 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  type metadata accessor for MLHandActionClassifier.DataSource(0);
  OUTLINED_FUNCTION_39_5();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  sub_237AB6644(v2, v11 - v10);
  v62 = v12;
  if (swift_getEnumCaseMultiPayload() == 3)
  {
LABEL_33:
    sub_237A28130(v62);
    goto LABEL_34;
  }

  sub_237AB2B70();
  if (v0)
  {
    sub_237A28130(v12);
LABEL_34:
    OUTLINED_FUNCTION_73();
    return;
  }

  OUTLINED_FUNCTION_45_3();
  v13 = v73.n128_u64[0];
  v71 = v73.n128_i8[8];
  sub_2379DF938(v73.n128_i8[8], &v77);
  v14 = OUTLINED_FUNCTION_37_0();
  sub_2379DFAE0(v14, v15, v16);
  v17 = OUTLINED_FUNCTION_37_0();
  sub_2379DBC9C(v17, v18);
  v19 = sub_2379DFC10(v73.n128_i64[0], v73.n128_i8[8]);
  v66 = *(v19 + 16);
  if (!v66)
  {

LABEL_32:
    sub_2379DBC9C(v13, v71);
    goto LABEL_33;
  }

  v20 = 0;
  v65 = v19 + 32;
  v21 = MEMORY[0x277D84F98];
  v63 = v19;
  v64 = v73.n128_u64[0];
  while (v20 < *(v19 + 16))
  {
    v72 = *(v65 + 16 * v20);
    v69 = v20;
    v70 = v21;
    if (v71)
    {
      swift_willThrow();

      v73.n128_u64[0] = 0;
      v73.n128_u64[1] = 0xE000000000000000;
      sub_237C08EDC();

      v73.n128_u64[0] = 0xD00000000000001FLL;
      v73.n128_u64[1] = 0x8000000237C199C0;
      v22 = OUTLINED_FUNCTION_45_3();
      MEMORY[0x2383DC360](v22, 0xE500000000000000);
      MEMORY[0x2383DC360](34, 0xE100000000000000);
      v23 = v73;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v24 = swift_allocError();
      *v25 = v23;
      *(v25 + 16) = 0u;
      *(v25 + 32) = 0u;
      *(v25 + 48) = 1;
      v73.n128_u64[0] = v24;

      sub_2379DBCF4(v24, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      v26 = sub_237C0925C();
      if (v26)
      {
        v60 = v26;
        sub_2379DBC9C(v24, 1);
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v60 = swift_allocError();
        *v27 = v24;
      }

      v61 = 1;
      sub_2379DBC9C(v24, 1);
    }

    else
    {
      swift_retain_n();

      OUTLINED_FUNCTION_45_3();
      v40 = sub_237B6ACC0();

      type metadata accessor for _UntypedColumn();
      OUTLINED_FUNCTION_103();
      v41 = swift_allocObject();
      *(v41 + 16) = v40;
      v73 = v72;
      v74 = 2;
      swift_bridgeObjectRetain_n();
      v60 = sub_237A60280(4, v41, &v73);
      OUTLINED_FUNCTION_33_9();
      v61 = 0;
    }

    v73.n128_u64[0] = v13;
    v73.n128_u8[8] = v71;
    v75 = v60;
    v76 = v61;
    MLDataTable.subscript.getter(&v75, &v77);
    sub_2379DBC9C(v75, v76);
    v28 = v77;
    v67 = v78;
    sub_2379DF938(v78, &v73);
    v29 = v73.n128_u64[0];
    v68 = v28;
    if (v73.n128_u8[8])
    {
      v77 = v73.n128_u64[0];
      v30 = OUTLINED_FUNCTION_117_0();
      sub_2379DBCF4(v30, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      v32 = sub_237C0925C();
      if (v32)
      {
        v33 = v32;
        v34 = OUTLINED_FUNCTION_117_0();
        sub_2379DBC9C(v34, v35);
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v33 = swift_allocError();
        *v42 = v29;
      }

      v43 = 1;
      v44 = OUTLINED_FUNCTION_117_0();
      sub_2379DBC9C(v44, v45);
    }

    else
    {
      v36 = *(*(v73.n128_u64[0] + 16) + 16);
      v37 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v37, v38);
      v39 = sub_237B0E068(v36);
      v46 = v39;
      if (!v39)
      {
        goto LABEL_36;
      }

      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      v48 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v48, v49);
      type metadata accessor for _UntypedColumn();
      OUTLINED_FUNCTION_103();
      v33 = swift_allocObject();
      *(v33 + 16) = v47;
      v50 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v50, v51);
      v43 = 0;
    }

    v52 = sub_2379DFC10(v33, v43);
    v53 = *(v52 + 16);
    if (v53)
    {
      v73.n128_u64[0] = MEMORY[0x277D84F90];
      sub_237AC8AF4(0, v53, 0);
      v54 = v73.n128_u64[0];
      v55 = v52 + 40;
      do
      {

        sub_237C059BC();

        v73.n128_u64[0] = v54;
        v57 = *(v54 + 16);
        v56 = *(v54 + 24);
        if (v57 >= v56 >> 1)
        {
          v58 = OUTLINED_FUNCTION_106(v56);
          sub_237AC8AF4(v58, v57 + 1, 1);
          v54 = v73.n128_u64[0];
        }

        *(v54 + 16) = v57 + 1;
        (*(v4 + 32))(v54 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v57, v8, v79);
        v55 += 16;
        --v53;
      }

      while (v53);
    }

    else
    {

      v54 = MEMORY[0x277D84F90];
    }

    v20 = v69 + 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73.n128_u64[0] = v70;
    sub_237B40B0C(v54, v72.n128_i64[0], v72.n128_i64[1], isUniquelyReferenced_nonNull_native);
    sub_2379DBC9C(v68, v67);

    v21 = v73.n128_u64[0];
    v19 = v63;
    v13 = v64;
    if (v69 + 1 == v66)
    {

      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_237AB4868(uint64_t result, uint64_t a2, double a3)
{
  if (result)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else if (a2)
    {
      v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v4 = vdupq_n_s64(a2 - 1);
      v5 = xmmword_237C10D40;
      v6 = (result + 8);
      v7 = vdupq_n_s64(2uLL);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v4, v5));
        if (v8.i8[0])
        {
          *(v6 - 1) = a3;
        }

        if (v8.i8[4])
        {
          *v6 = a3;
        }

        v5 = vaddq_s64(v5, v7);
        v6 += 2;
        v3 -= 2;
      }

      while (v3);
    }
  }

  return result;
}

id sub_237AB48D0(unint64_t a1)
{
  v63[1] = *MEMORY[0x277D85DE8];
  if (sub_237A254D8(a1) < 1)
  {
    v63[0] = MEMORY[0x277D84F90];
    sub_237C08FCC();
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v20 = sub_237C08F8C();
    OUTLINED_FUNCTION_15_18(v20, v21, v22, v23, v24, v25, v26, v27, v55, v59, v63[0]);
    OUTLINED_FUNCTION_13_20();
    sub_237C08FFC();
    sub_237C08F9C();
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v28 = sub_237C08F8C();
    OUTLINED_FUNCTION_15_18(v28, v29, v30, v31, v32, v33, v34, v35, v57, v61, v63[0]);
    OUTLINED_FUNCTION_13_20();
    sub_237C08FFC();
    sub_237C08F9C();
    v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v36 = sub_237C08F8C();
    OUTLINED_FUNCTION_15_18(v36, v37, v38, v39, v40, v41, v42, v43, v58, v62, v63[0]);
    OUTLINED_FUNCTION_13_20();
    sub_237C08FFC();
    sub_237C08F9C();
    v44 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v45 = sub_237AC8938(v63[0], 65600);
    if (!v1)
    {
      v2 = v45;
      v46 = sub_237C08D4C();
      sub_237AB4868(v46, v47, 0.0);
    }
  }

  else
  {
    v4 = sub_237AB4CDC(a1);
    if (!v1)
    {
      v5 = v4;
      if (v4)
      {
        v63[0] = 0;
        v6 = [v4 keypointsMultiArrayAndReturnError_];
        if (v6)
        {
          v2 = v6;
          v7 = v63[0];
          v8 = [v2 shape];
          sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
          v9 = sub_237C0893C();

          v10 = sub_237A254D8(v9);
          if (v10)
          {
            v11 = v10;
            v56 = v5;
            v60 = v2;
            v63[0] = MEMORY[0x277D84F90];
            sub_237AC8A34(0, v10 & ~(v10 >> 63), 0);
            if (v11 < 0)
            {
              __break(1u);
            }

            v12 = 0;
            v13 = v63[0];
            do
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v14 = MEMORY[0x2383DCAF0](v12, v9);
              }

              else
              {
                v14 = *(v9 + 8 * v12 + 32);
              }

              v15 = v14;
              v16 = [v14 integerValue];

              v63[0] = v13;
              v18 = v13[2];
              v17 = v13[3];
              if (v18 >= v17 >> 1)
              {
                v19 = OUTLINED_FUNCTION_106(v17);
                sub_237AC8A34(v19, v18 + 1, 1);
                v13 = v63[0];
              }

              ++v12;
              v13[2] = v18 + 1;
              v13[v18 + 4] = v16;
            }

            while (v11 != v12);

            v5 = v56;
            v2 = v60;
          }

          else
          {

            v13 = MEMORY[0x277D84F90];
          }

          v51 = sub_237AC6FE0(v13, &unk_284AC0A78);

          if (v51)
          {
          }

          else
          {
            sub_2379E8AF0();
            OUTLINED_FUNCTION_50();
            v52 = swift_allocError();
            *v53 = 0xD00000000000002FLL;
            v53[1] = 0x8000000237C1A680;
            OUTLINED_FUNCTION_23_3(v52, v53);
            swift_willThrow();
          }
        }

        else
        {
          v50 = v63[0];
          OUTLINED_FUNCTION_36_8();
          sub_237C0593C();

          swift_willThrow();
        }
      }

      else
      {
        sub_2379E8AF0();
        OUTLINED_FUNCTION_50();
        v48 = swift_allocError();
        *v49 = 0xD00000000000002CLL;
        v49[1] = 0x8000000237C1A650;
        OUTLINED_FUNCTION_23_3(v48, v49);
        swift_willThrow();
      }
    }
  }

  return v2;
}

void *sub_237AB4CDC(unint64_t a1)
{
  v2 = v1;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_17:
  v4 = sub_237C090EC();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  sub_237A254DC();
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2383DCAF0](0, a1);
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = v5;
  v7 = 1;
  while (v4 != v7)
  {
    sub_237A254DC();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2383DCAF0](v7, a1);
    }

    else
    {
      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_237AB51F4(v6);
    if (v2)
    {

      return v6;
    }

    v11 = v10;
    sub_237AB51F4(v9);
    v2 = 0;
    if (v11 < v12)
    {

      ++v7;
      v6 = v9;
    }

    else
    {

      ++v7;
    }
  }

  return v6;
}

uint64_t sub_237AB4E38(void *a1, double a2)
{
  v4 = a1;
  result = sub_237C08D4C();
  if (!v2 && result)
  {
    if (v6 < 0)
    {
      __break(1u);
    }

    else if (v6)
    {
      v7 = (v6 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v8 = vdupq_n_s64(v6 - 1);
      v9 = xmmword_237C10D40;
      v10 = (result + 8);
      v11 = vdupq_n_s64(2uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v8, v9));
        if (v12.i8[0])
        {
          *(v10 - 1) = a2;
        }

        if (v12.i8[4])
        {
          *v10 = a2;
        }

        v9 = vaddq_s64(v9, v11);
        v10 += 2;
        v7 -= 2;
      }

      while (v7);
    }
  }

  return result;
}

id sub_237AB4EE0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_237C059EC();
  v4 = [v2 initWithURL_];

  v5 = sub_237C05ADC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_237AB4F7C(double a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    OUTLINED_FUNCTION_44_7();
    v10 = *(a4 + 16);
    *(a4 + 16) = a3;
    v11 = a3;
    v12 = v10;
  }

  else
  {
    v15 = sub_237AB6530(a2);
    if (v15)
    {
      sub_237B1ED84(v15);
      OUTLINED_FUNCTION_38_6();

      if (v7)
      {
        if (!sub_237A254D8(v7))
        {
          swift_beginAccess();
          v16 = *(a6 + 16);
          v17 = __OFADD__(v16, 1);
          v18 = v16 + 1;
          if (v17)
          {
            __break(1u);
            return;
          }

          *(a6 + 16) = v18;
        }

        v22 = sub_237AB48D0(v7);

        v23 = v22;
        MLDataValue.MultiArrayType.init(_:)(v23);
        swift_beginAccess();
        sub_237A9D17C();
        v24 = *(*(a7 + 16) + 16);
        sub_237A9D238(v24);
        v25 = *(a7 + 16);
        *(v25 + 16) = v24 + 1;
        *(v25 + 8 * v24 + 32) = v26;
        *(a7 + 16) = v25;
        swift_endAccess();

        return;
      }
    }

    sub_237C08EDC();
    MEMORY[0x2383DC360](0xD00000000000003BLL, 0x8000000237C1A5E0);
    sub_237C05ADC();
    sub_237AB6760(&qword_27DE9B3B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v19 = sub_237C0924C();
    MEMORY[0x2383DC360](v19);

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v20 = swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_23_3(v20, v21);
    OUTLINED_FUNCTION_44_7();
    v12 = *(a4 + 16);
    *(a4 + 16) = v20;
  }
}

uint64_t sub_237AB51F4(void *a1)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = sub_237C086BC();
  v39[0] = 0;
  v3 = [a1 recognizedPointsForGroupKey:v2 error:v39];

  v4 = v39[0];
  if (v3)
  {
    type metadata accessor for VNRecognizedPointKey(0);
    sub_2379E8EE0(0, &qword_27DE9C758, 0x277CE2DC0);
    sub_237AB6760(&qword_27DE9A910, type metadata accessor for VNRecognizedPointKey, &unk_237C0B2A4);
    v5 = sub_237C0857C();
    v6 = v4;

    v9 = 0;
    v10 = 1 << *(v5 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    *&v7 = -1.0;
    v35 = v7;
    *&v7 = 0x408F400000000000;
    *&v8 = -1.0;
    v37 = v8;
    v38 = v7;
    v36 = v7;
    while (1)
    {
      v14 = v9;
      if (!v12)
      {
        break;
      }

LABEL_9:
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = *(*(v5 + 56) + ((v9 << 9) | (8 * v15)));
      [v16 confidence];
      if (v17 > 0.2)
      {
        v18 = v16;
        [v18 location];
        v20 = v36;
        if (*&v36 >= v19)
        {
          *&v20 = v19;
        }

        v36 = v20;
        [v18 location];
        v22 = v38;
        if (*&v38 >= v21)
        {
          *&v22 = v21;
        }

        v38 = v22;
        [v18 location];
        v24 = v37;
        if (v23 > *&v37)
        {
          *&v24 = v23;
        }

        v37 = v24;
        [v18 location];
        v26 = v25;

        *(&v27 + 1) = *(&v35 + 1);
        if (v26 > *&v35)
        {
          *&v27 = v26;
          v35 = v27;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v9 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
      }

      if (v9 >= v13)
      {
        break;
      }

      v12 = *(v5 + 64 + 8 * v9);
      ++v14;
      if (v12)
      {
        goto LABEL_9;
      }
    }

    __asm { FMOV            V2.2D, #1.0 }
  }

  else
  {
    v34 = v39[0];
    sub_237C0593C();

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237AB553C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_237AB2370(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

void sub_237AB559C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a1 + 16) == 3)
  {
    v5 = *(a1 + 8);
    v7 = *a1;
    v6 = v7;

    sub_237AB5614(&v7, a2, a3);
    sub_2379E8CE8(v6, v5, 3);
  }

  else
  {
    *a3 = 0;
  }
}

void sub_237AB5614(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  OUTLINED_FUNCTION_38_6();

  v9 = sub_237AC8938(v8, 65600);
  if (!v9)
  {
    goto LABEL_62;
  }

  v10 = v9;
  v11 = sub_237C08D4C();
  sub_237A2E9F4();
  if (sub_237A01878() != 1)
  {

LABEL_62:
    *a3 = 0;
    return;
  }

  v131 = 0;
  v132 = 0;
  v130 = v6;

  v122 = v11;
  while (1)
  {
    sub_237BABD8C(&v127);
    v12 = *(&v127 + 1);
    *v123 = v127;
    if (v129 != 3)
    {
      if (v129 == 255)
      {

        MLDataValue.MultiArrayType.init(_:)(v10);
        *a3 = v127;
        return;
      }

      sub_2379E9268(v127, *(&v127 + 1), v128, v129);

      goto LABEL_69;
    }

    v13 = OUTLINED_FUNCTION_37_6();
    v118 = v14;
    sub_2379E9288(v13, v14, 3);
    sub_237A2E9F4();
    v117 = v12;
    v15 = sub_237A01878();
    sub_237A254DC();
    if (v3)
    {
      v16 = MEMORY[0x2383DCAF0](1, a2);
    }

    else
    {
      v16 = *(a2 + 40);
    }

    v17 = v16;
    v18 = [v16 integerValue];

    if (v15 != v18)
    {

      OUTLINED_FUNCTION_1_39();
      sub_2379E9268(v105, v106, v107, v108);
      OUTLINED_FUNCTION_1_39();
      sub_2379E9268(v109, v110, v111, v112);
      goto LABEL_62;
    }

    sub_2379E9288(v117, v118, 3);
    v115 = a2;
    v116 = a3;
    v120 = v10;
LABEL_9:
    sub_237BABD8C(&v127);
    v19 = *(&v127 + 1);
    *v124 = v127;
    v20 = v129;
    if (v129 == 3)
    {
      break;
    }

    if (v129 != 255)
    {
      v96 = v128;
      sub_2379E9268(v123[0], v117, v118, 3);
      sub_2379E9268(v123[0], v117, v118, 3);
      v97 = v124[0];
      v98 = v19;
      v99 = v96;
      v100 = v20;
LABEL_68:
      sub_2379E9268(v97, v98, v99, v100);

LABEL_69:

      goto LABEL_62;
    }

    OUTLINED_FUNCTION_1_39();
    sub_2379E9268(v80, v81, v82, v83);
    OUTLINED_FUNCTION_1_39();
    sub_2379E9268(v84, v85, v86, v87);
  }

  v21 = OUTLINED_FUNCTION_37_6();
  v119 = v22;
  sub_2379E9288(v21, v22, 3);
  sub_237A2E9F4();
  v125 = v19;
  v23 = sub_237A01878();
  sub_237A254DC();
  if (v3)
  {
    v24 = MEMORY[0x2383DCAF0](2, a2);
  }

  else
  {
    v24 = *(a2 + 48);
  }

  v25 = v24;
  v26 = [v24 integerValue];

  if (v23 != v26)
  {
    sub_2379E9268(v124[0], v125, v119, 3);
    OUTLINED_FUNCTION_1_39();
    sub_2379E9268(v101, v102, v103, v104);
    sub_2379E9268(v124[0], v125, v119, 3);
    OUTLINED_FUNCTION_1_39();
    goto LABEL_68;
  }

  sub_2379E9288(v125, v119, 3);
  v27 = 0;
  while (1)
  {
    while (1)
    {
      if (v27 == sub_237A2E9F4())
      {
        v76 = OUTLINED_FUNCTION_36_4();
        sub_2379E9268(v76, v77, v119, 3);
        v78 = OUTLINED_FUNCTION_36_4();
        sub_2379E9268(v78, v79, v119, 3);

        a2 = v115;
        a3 = v116;
        goto LABEL_9;
      }

      v28 = sub_237A2E9C8(v27);
      switch(sub_237A2E910())
      {
        case 1u:

          sub_237B0E848();
          v56 = v55;

          v31 = 0;
          v30 = v56;
          v32 = 1;
          goto LABEL_35;
        case 2u:

          v30 = sub_237A2DE60();
          v31 = v53;
          v32 = 2;

          goto LABEL_35;
        case 3u:
          v54 = sub_237B0DD68(*(v28 + 16));
          if (!v54)
          {
            goto LABEL_84;
          }

          type metadata accessor for CMLSequence();
          v30 = swift_allocObject();
          v31 = 0;
          *(v30 + 16) = v54;
          *(v30 + 24) = 1;
          v32 = 3;
          goto LABEL_35;
        case 4u:
          v33 = sub_237B0DDC8(*(v28 + 16));
          if (!v33)
          {
            goto LABEL_83;
          }

          type metadata accessor for CMLDictionary();
          *(swift_initStackObject() + 16) = v33;
          v30 = MEMORY[0x277D84F98];
          v126 = MEMORY[0x277D84F98];
          swift_retain_n();
          v34 = 0;
          break;
        case 5u:

          v30 = 0;
          v31 = 0;
          v32 = 6;
          goto LABEL_35;
        case 6u:

          sub_237AC8278(v57, &v127);
          v30 = v127;
          if (!v127)
          {
            goto LABEL_85;
          }

          v31 = 0;
          v32 = 5;
          goto LABEL_35;
        default:
          v29 = *(v28 + 16);

          v30 = sub_237B0ECCC(v29);

          v31 = 0;
          v32 = 0;
          goto LABEL_35;
      }

      while (v34 != sub_237A2EAA4())
      {
        sub_237A2EB64(v34);
        v34 = sub_237B6A974(v34);
        v35 = sub_237A2DE60();
        v37 = v36;

        sub_237AFC548(v38, &v127);

        v39 = v127;
        v121 = v128;
        *&v127 = v35;
        *(&v127 + 1) = v37;
        LOBYTE(v128) = 2;
        v40 = sub_237ACB180(v35, v37, 2);
        v42 = *(v30 + 16);
        v43 = (v41 & 1) == 0;
        v44 = __OFADD__(v42, v43);
        v45 = v42 + v43;
        if (v44)
        {
          goto LABEL_81;
        }

        v46 = v41;
        if (*(v30 + 24) < v45)
        {
          sub_237ABF994(v45, 1);
          v30 = v126;
          v40 = sub_237ACB180(v127, *(&v127 + 1), v128);
          if ((v46 & 1) != (v47 & 1))
          {
            sub_237C0932C();
            __break(1u);
LABEL_88:
            OUTLINED_FUNCTION_50();
            v113 = swift_allocError();
            swift_willThrow();

            v114 = v113;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
            if (swift_dynamicCast())
            {
              sub_237C08EDC();
              MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
              sub_237C0907C();
              MEMORY[0x2383DC360](39, 0xE100000000000000);
              sub_237C090DC();
              __break(1u);
            }

            sub_2379E8CE8(v39, *(&v39 + 1), v121);

            sub_2379E8CE8(v127, *(&v127 + 1), v128);

            goto LABEL_86;
          }
        }

        if (v46)
        {
          goto LABEL_88;
        }

        *(v30 + 8 * (v40 >> 6) + 64) |= 1 << v40;
        v48 = *(v30 + 48) + 24 * v40;
        v49 = v128;
        *v48 = v127;
        *(v48 + 16) = v49;
        v50 = *(v30 + 56) + 24 * v40;
        *v50 = v39;
        *(v50 + 16) = v121;
        v51 = *(v30 + 16);
        v44 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v44)
        {
          goto LABEL_82;
        }

        *(v30 + 16) = v52;
      }

      v32 = 4;

      v31 = 0;
      v10 = v120;
LABEL_35:
      if (v27 >= sub_237A2E9F4())
      {
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

        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);
        while (1)
        {
LABEL_86:
          swift_unexpectedError();
          __break(1u);
        }
      }

      v58 = [v10 strides];
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      v59 = sub_237C0893C();

      if ((v59 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x2383DCAF0](0, v59);
      }

      else
      {
        if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v60 = *(v59 + 32);
      }

      v61 = v60;

      v62 = [v61 integerValue];

      v63 = *v123 * v62;
      if ((*v123 * v62) >> 64 != (*v123 * v62) >> 63)
      {
        goto LABEL_73;
      }

      v64 = [v10 strides];
      v65 = sub_237C0893C();

      if ((v65 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x2383DCAF0](1, v65);
      }

      else
      {
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_76;
        }

        v66 = *(v65 + 40);
      }

      v67 = v66;

      v68 = [v67 integerValue];

      v69 = *v124 * v68;
      if ((*v124 * v68) >> 64 != (*v124 * v68) >> 63)
      {
        goto LABEL_75;
      }

      v3 = v63 + v69;
      if (__OFADD__(v63, v69))
      {
        goto LABEL_77;
      }

      v70 = [v10 strides];
      v71 = sub_237C0893C();

      if ((v71 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2383DCAF0](2, v71);
      }

      else
      {
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
          goto LABEL_79;
        }

        v72 = *(v71 + 48);
      }

      OUTLINED_FUNCTION_36_8();

      v73 = [v70 integerValue];

      v74 = v27 * v73;
      if ((v27 * v73) >> 64 != (v27 * v73) >> 63)
      {
        goto LABEL_78;
      }

      v44 = __OFADD__(v3, v74);
      v75 = v3 + v74;
      if (v44)
      {
        goto LABEL_80;
      }

      ++v27;
      if (v32)
      {
        break;
      }

      *(v122 + 8 * v75) = v30;
    }

    if (v32 != 1)
    {
      break;
    }

    *(v122 + 8 * v75) = v30;
  }

  sub_2379E8CE8(v30, v31, v32);
  sub_2379E9268(v124[0], v125, v119, 3);
  OUTLINED_FUNCTION_1_39();
  sub_2379E9268(v88, v89, v90, v91);
  sub_2379E9268(v124[0], v125, v119, 3);
  OUTLINED_FUNCTION_1_39();
  sub_2379E9268(v92, v93, v94, v95);

  *v116 = 0;
}

id sub_237AB6280(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v6[4] = a1;
    v6[5] = a2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_237AB6330;
    v6[3] = &block_descriptor_6;
    v3 = _Block_copy(v6);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithCompletionHandler_];
  _Block_release(v3);
  return v4;
}

void sub_237AB6330(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_237AB63BC()
{

  OUTLINED_FUNCTION_103();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237AB63F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_237C090EC();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

_BYTE *sub_237AB6450@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

unsigned __int8 *sub_237AB64BC@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[16];
  if (v3 == 255)
  {
    __break(1u);
  }

  else
  {
    v5 = *(result + 3);
    v4 = *(result + 4);
    v7 = *result;
    v6 = *(result + 1);
    *a2 = *result;
    *(a2 + 8) = v6;
    *(a2 + 16) = v3;
    *(a2 + 24) = v5;
    *(a2 + 32) = v4;
    v8 = result[40];
    *(a2 + 40) = v8;
    sub_2379E9288(v7, v6, v3);

    return sub_2379E9288(v5, v4, v8);
  }

  return result;
}

uint64_t sub_237AB6530(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2379E8EE0(0, &qword_27DE9C760, 0x277CE2D70);
  v3 = sub_237C0893C();

  return v3;
}

unsigned __int8 *sub_237AB65A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = *a1;
  v5[0] = v2;
  *(v5 + 9) = *(a1 + 25);
  return sub_237AB64BC(&v4, a2);
}

uint64_t sub_237AB65D4()
{
  OUTLINED_FUNCTION_103();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237AB6644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_237AB66E4()
{
  result = qword_27DE9B528;
  if (!qword_27DE9B528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE60, &qword_237C0D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B528);
  }

  return result;
}

uint64_t sub_237AB6760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_11Tm()
{
  v1 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_237AB688C(void *a1, void *a2)
{
  v5 = *(sub_237C05ADC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_237AB4F7C(v8, a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

__n128 OUTLINED_FUNCTION_5_32(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237AB28BC((v9 - 296), 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, a9);
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_237C08FEC();
}

void OUTLINED_FUNCTION_29_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_237B6DAB4(a1, a2, 6581861, 0xE300000000000000, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_30_12()
{

  return sub_237C08FEC();
}

uint64_t OUTLINED_FUNCTION_31_11(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_9()
{
  sub_2379E8CE8(*(v1 - 144), *(v1 - 136), *(v1 - 128));
  sub_2379DBC9C(v0, 0);
}

void OUTLINED_FUNCTION_41_8()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return sub_2379F21A4(v1 - 152, v0, (v1 - 65));
}

uint64_t OUTLINED_FUNCTION_44_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_45_4()
{

  sub_2379F2B84();
}

uint64_t sub_237AB6BD4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45[7] = a2;
  v50 = a3;
  sub_237C0926C();
  OUTLINED_FUNCTION_0();
  v45[5] = v5;
  v45[6] = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v45[3] = v7 - v6;
  v45[4] = sub_237C060DC();
  OUTLINED_FUNCTION_0();
  v45[2] = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v45[1] = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_66_1();
  v13 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v46 = v14;
  MEMORY[0x28223BE20](v15);
  v48 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v45 - v18;
  MEMORY[0x28223BE20](v20);
  v47 = v45 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = v45 - v23;
  sub_237C0616C();
  OUTLINED_FUNCTION_4();
  v26 = *(v25 + 16);
  v27 = OUTLINED_FUNCTION_4_38();
  v26(v27);
  v28 = OUTLINED_FUNCTION_1_40();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v49 = v24;
  sub_237C0663C();
  v32 = sub_237AC934C(0x10020);
  v33 = OUTLINED_FUNCTION_4_38();
  v26(v33);
  v34 = OUTLINED_FUNCTION_1_40();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v38 = v32;
  sub_237B699C8(v38, v3, v19);
  v39 = v47;
  sub_237C0666C();
  v40 = v46;
  v41 = *(v46 + 8);
  v41(v19, v13);
  v42 = *(v40 + 16);
  v42(v19, v39, v13);
  v43 = v49;
  v42(v48, v49, v13);
  sub_237C0607C();

  v41(v39, v13);
  return (v41)(v43, v13);
}

uint64_t sub_237AB70FC(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v12 - v7;
  [*a1 integerValue];
  type metadata accessor for MLFewShotSoundClassifier(0);
  v9 = sub_237C0616C();
  OUTLINED_FUNCTION_4();
  (*(v10 + 16))(v8, a3, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  return sub_237C0663C();
}

void *sub_237AB7228@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_237C0926C();
  OUTLINED_FUNCTION_0();
  v38 = v7;
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v37 = sub_237C060DC();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_66_1();
  v36 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  v24 = *a1;
  v25 = sub_237AC934C(0x10020);
  if (v3)
  {

    v26 = sub_237C0616C();
    OUTLINED_FUNCTION_4();
    (*(v27 + 16))(v4, a2, v26);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v26);
    sub_237B699C8(v24, v4, v23);
    (*(v12 + 104))(v16, *MEMORY[0x277D2CCC8], v37);
    (*(v38 + 104))(v10, *MEMORY[0x277D84660], v39);
    sub_237C0675C();
    (*(v38 + 8))(v10, v39);
    (*(v12 + 8))(v16, v37);
    return (*(v19 + 8))(v23, v36);
  }

  else
  {
    v29 = v25;
    v30 = sub_237C0616C();
    OUTLINED_FUNCTION_4();
    (*(v31 + 16))(v4, a2, v30);
    v32 = OUTLINED_FUNCTION_1_40();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
    return sub_237B699C8(v29, v4, a3);
  }
}

uint64_t sub_237AB75B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C06DCC();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237AB764C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C06DCC();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AnyTreeClassifier(uint64_t a1)
{
  result = qword_27DE9C770;
  if (!qword_27DE9C770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237AB7718(uint64_t a1)
{
  sub_2379FC328();
  if (v1 <= 0x3F)
  {
    sub_237A0C8CC(319);
    if (v2 <= 0x3F)
    {
      sub_237C06DCC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237AB7814@<X0>(char *a1@<X8>)
{
  v3 = sub_237C0704C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v16 = *(v1 + 32);
  type metadata accessor for AnyTreeClassifier(0);

  sub_237C06D8C();
  *a1 = v11;
  *(a1 + 1) = v10;
  v13 = type metadata accessor for AnyTreeClassifierModel(0);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 2) = 0;
  (*(v5 + 32))(&a1[*(v13 + 24)], v9, v3);
  v14 = &a1[*(v13 + 28)];
  *v14 = v12;
  v14[8] = v16;
}

uint64_t sub_237AB7980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v7);
  v5[10] = swift_task_alloc();
  v8 = sub_237C0602C();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237AB7AF0);
}

uint64_t sub_237AB7AF0()
{
  v1 = v0[2];
  if (!v1[2])
  {
    v9 = v0[3];
    v10 = *(v0[6] + 16);
    v11 = swift_task_alloc();
    *(v11 + 16) = v9;
    v19 = sub_2379E22EC(sub_237A1DC7C, v11, v10);

    v1[2] = v19;
    v1[3] = 0xD000000000000013;
    v1[4] = 0x8000000237C17BE0;
    v1 = v0[2];
  }

  v2 = v1 + *(type metadata accessor for AnyTreeClassifierModel(0) + 28);
  v3 = *v2;
  if (*(*v2 + 16))
  {
    v4 = v2[8];
  }

  else
  {
    v12 = v0[14];
    v14 = v0[10];
    v13 = v0[11];
    sub_237C05DFC();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v13);
    v15 = sub_237B89590(v12, v14);
    v25 = v0[14];
    v16 = v0[11];
    v17 = v0[12];
    v4 = v20;
    v21 = v15;
    sub_2379F6DD8(v0[10], &qword_27DE9AF88, &unk_237C0C700);
    (*(v17 + 8))(v25, v16);

    *v2 = v21;
    v2[8] = v4 & 1;
    v3 = v21;
  }

  sub_237A0D2E0(v0[3]);
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[8];
  v23 = v0[9];
  v24 = v0[7];
  v22 = v0[11];
  sub_237C05DFC();
  sub_237B89BDC(v6, v3, v4 & 1);
  (*(v5 + 8))(v6, v22);
  type metadata accessor for AnyTreeClassifier(0);
  sub_237C06DBC();
  (*(v7 + 8))(v23, v24);

  v8 = v0[1];

  return v8();
}

uint64_t sub_237AB7E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v106 = a6;
  v109 = a2;
  v112 = a1;
  sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v104 = v12;
  v105 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v102 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v98 = v16;
  v99 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v97 = &v92 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C798, &qword_237C10E70);
  OUTLINED_FUNCTION_20(v19);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  v96 = &v92 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  v23 = OUTLINED_FUNCTION_20(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_0();
  v94 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v92 - v27;
  v108 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v103 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18_0();
  v33 = (v31 - v32);
  MEMORY[0x28223BE20](v34);
  v95 = &v92 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v107 = v37;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38);
  v40 = &v92 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA88, &unk_237C0B800);
  OUTLINED_FUNCTION_20(v41);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42);
  *a7 = a3;
  a7[1] = a4;
  v43 = a4;
  a7[2] = a5;
  a7[5] = a5;
  a7[6] = 0xD000000000000013;
  v100 = a7;
  a7[7] = 0x8000000237C17BE0;

  v44 = v112;
  sub_237C05FFC();
  v101 = swift_dynamicCastMetatype();
  if (v101)
  {
    OUTLINED_FUNCTION_9_27(MEMORY[0x277D837D0]);
    v110 = 0;
    v111 = 0xE000000000000000;
    OUTLINED_FUNCTION_3_39(&qword_27DE9B910, &qword_27DE9ACA0, &unk_237C0E0E0);
    OUTLINED_FUNCTION_8_25();
    v46 = v107 + 8;
    v45 = *(v107 + 8);
    v45(v40, v36);
    v47 = sub_237B43058();
    sub_237A7B7A0(v109, v28, &qword_27DE9AF88, &unk_237C0C700);
    v48 = v108;
    if (__swift_getEnumTagSinglePayload(v28, 1, v108) == 1)
    {
      sub_2379F6DD8(v28, &qword_27DE9AF88, &unk_237C0C700);
      v56 = v48;
      v57 = v103;
    }

    else
    {
      v74 = *(v103 + 32);
      v107 = v46;
      v75 = v28;
      v57 = v103;
      v74(v95, v75, v48);
      OUTLINED_FUNCTION_9_27(MEMORY[0x277D837D0]);
      v110 = 0;
      v111 = 0xE000000000000000;
      OUTLINED_FUNCTION_8_25();
      v45(v40, v36);
      v76 = sub_237B43058();
      sub_237AB8620(v76, v47);
      v77 = OUTLINED_FUNCTION_12_23();
      v56 = v108;
      v78(v77, v108);
    }

    sub_237B98EF8(v47, v49, v50, v51, v52, v53, v54, v55, v92, v93);
    v80 = v79;
    v44 = v112;
    v63 = v109;
  }

  else
  {
    v95 = v33;
    v58 = v97;
    v107 = v43;
    v59 = v98;
    v60 = v99;
    if (!swift_dynamicCastMetatype())
    {
      sub_2379E8AF0();
      swift_allocError();
      *v81 = 0xD000000000000025;
      *(v81 + 8) = 0x8000000237C1A840;
      *(v81 + 16) = 0u;
      *(v81 + 32) = 0u;
      *(v81 + 48) = 1;
      swift_willThrow();
      (*(v104 + 8))(v106, v105);
      sub_2379F6DD8(v109, &qword_27DE9AF88, &unk_237C0C700);
      (*(v103 + 8))(v44, v108);
      swift_bridgeObjectRelease_n();
    }

    OUTLINED_FUNCTION_9_27(MEMORY[0x277D83B88]);
    v110 = 0;
    v61 = v60;
    v93 = OUTLINED_FUNCTION_3_39(&qword_27DE9C7A0, &qword_27DE9AB98, &unk_237C0B900);
    sub_237C05EAC();
    v62 = (v59 + 1);
    v98 = v59[1];
    (v98)(v58, v60);
    v107 = sub_237B4351C();
    v63 = v109;
    v64 = v94;
    sub_237A7B7A0(v109, v94, &qword_27DE9AF88, &unk_237C0C700);
    v56 = v108;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v108);
    v57 = v103;
    if (EnumTagSinglePayload == 1)
    {
      sub_2379F6DD8(v64, &qword_27DE9AF88, &unk_237C0C700);
      v73 = v107;
    }

    else
    {
      (*(v103 + 32))();
      v73 = v62;
      sub_237C05FEC();
      v110 = 0;
      sub_237C05EAC();
      (v98)(v58, v61);
      v83 = sub_237B4351C();
      sub_237AB8710(v83, v107);
      v84 = OUTLINED_FUNCTION_12_23();
      v44 = v112;
      v85(v84, v56);
    }

    sub_237B98E78(v73, v66, v67, v68, v69, v70, v71, v72, v92, v93);
    v80 = v86;
  }

  v87 = v101 != 0;

  v88 = v100;
  v100[3] = v80;
  *(v88 + 32) = v87;
  v90 = v104;
  v89 = v105;
  v91 = v106;
  (*(v104 + 16))(v102, v106, v105);
  type metadata accessor for AnyTreeClassifier(0);
  sub_237C06D7C();
  (*(v90 + 8))(v91, v89);
  sub_2379F6DD8(v63, &qword_27DE9AF88, &unk_237C0C700);
  return (*(v57 + 8))(v44, v56);
}

void sub_237AB8620(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v16 = a2;
  v4 = a1 + 56;
  OUTLINED_FUNCTION_5_33();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v3;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      sub_237B4694C(v15, v13, v14);
    }

    while (v7);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_237AB8710(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  v12[1] = a2;
  v4 = a1 + 56;
  OUTLINED_FUNCTION_5_33();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v3;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_237B46EB4(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
    }

    while (v7);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_237AB87DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v90 = a3;
  v91 = a4;
  v93 = a2;
  v88 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v94 = &v71 - v9;
  v97 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v92 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v98 = v13 - v12;
  v85 = sub_237C0704C();
  OUTLINED_FUNCTION_0();
  v87 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v89 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v84 = &v71 - v19;
  MEMORY[0x28223BE20](v20);
  v86 = &v71 - v21;
  v22 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v96 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B040, &unk_237C0DFD0);
  OUTLINED_FUNCTION_0();
  v95 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v71 - v35;
  v37 = *(v5 + 5);
  v38 = *(v5 + 6);
  v39 = *(v5 + 7);
  v100 = a1;
  v40 = v101;
  result = sub_2379E22EC(sub_237A20D00, v99, v37);
  if (!v40)
  {
    v83 = v27;
    v101 = v22;
    v80 = v33;
    v81 = v5;
    v82 = v28;
    v43 = v97;
    v42 = v98;
    v44 = result;

    sub_237A0D2E0(a1);
    v76 = v38;
    v77 = v36;
    v78 = v44;
    v79 = v39;
    v45 = v81;
    v46 = *(v81 + 3);
    v47 = *(v81 + 32);
    v48 = *(v81 + 1);
    v49 = v83;
    v73 = *v81;
    v74 = v48;
    sub_237C05DFC();
    v50 = sub_237B89BDC(v49, v46, v47);
    v51 = v96 + 8;
    v72 = *(v96 + 8);
    v72(v49, v101);
    v52 = v94;
    sub_237A7B7A0(v93, v94, &qword_27DE9A9A0, &qword_237C0BF60);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v43);
    v75 = v47;
    if (EnumTagSinglePayload == 1)
    {
      sub_2379F6DD8(v52, &qword_27DE9A9A0, &qword_237C0BF60);
      type metadata accessor for AnyTreeClassifier(0);
      v54 = v89;
      v55 = v77;
      sub_237C06DAC();
      (*(v95 + 8))(v55, v82);
      v93 = v46;

      v56 = v54;
    }

    else
    {
      v93 = v46;
      v89 = v50;
      v96 = v51;
      (*(v92 + 32))(v42, v52, v43);
      sub_237A0D2E0(v42);
      v57 = v83;
      sub_237C05DFC();
      sub_237B89BDC(v57, v93, v75);
      v72(v57, v101);
      type metadata accessor for AnyTreeClassifier(0);
      v56 = v84;
      sub_237C06D9C();
      v58 = v82;

      v59 = OUTLINED_FUNCTION_11_26();
      v45(v59);
      v60 = OUTLINED_FUNCTION_10_27();
      v61(v60);
      (v45)(v77, v58);
    }

    v62 = v75;
    v63 = v86;
    v64 = *(v87 + 32);
    v65 = v85;
    v64(v86, v56, v85);
    v66 = type metadata accessor for AnyTreeClassifierModel(0);
    v67 = v88;
    v64(v88 + *(v66 + 24), v63, v65);
    v68 = v74;
    *v67 = v73;
    v67[1] = v68;
    v69 = v76;
    v67[2] = v78;
    v67[3] = v69;
    v67[4] = v79;
    v70 = v67 + *(v66 + 28);
    *v70 = v93;
    v70[8] = v62;
  }

  return result;
}

uint64_t sub_237AB8F68(uint64_t a1, uint64_t a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B020, &qword_237C10E50);
  sub_237A0DF54();
  result = sub_237C06CAC();
  if (!v2)
  {
    type metadata accessor for AnyTreeClassifierModel(0);
    __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    sub_237C0704C();
    OUTLINED_FUNCTION_2_43();
    sub_237AB95C8(v5, v6, MEMORY[0x277CC5090]);
    return sub_237C06CAC();
  }

  return result;
}

void *sub_237AB9088@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_237C0704C();
  OUTLINED_FUNCTION_0();
  v18 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v24 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B008, &qword_237C0C9B8);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_2379D9224(&qword_27DE9B010, &qword_27DE9B008, &qword_237C0C9B8, &unk_237C130B8);
  result = sub_237C06C9C();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    OUTLINED_FUNCTION_2_43();
    sub_237AB95C8(v10, v11, MEMORY[0x277CC5098]);
    sub_237C06C9C();
    v13 = *v20;
    v12 = v20[1];
    v14 = type metadata accessor for AnyTreeClassifierModel(0);
    (*(v18 + 32))(&a2[*(v14 + 24)], v24, v4);
    v15 = v20[3];
    v16 = *(v20 + 32);
    *a2 = v13;
    *(a2 + 1) = v12;
    *(a2 + 2) = v21;
    *(a2 + 3) = v22;
    *(a2 + 4) = v23;
    v17 = &a2[*(v14 + 28)];
    *v17 = v15;
    v17[8] = v16;
  }

  return result;
}

void (*sub_237AB92B4(void *a1))(uint64_t ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D0, &unk_237C10E60);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v3[5] = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D8, &unk_237C0FBF8);

  sub_237C05FCC();
  return sub_237A0D94C;
}

uint64_t sub_237AB93D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237AB87DC(a2, a3, a4, a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237AB94DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_237AAA0E8;

  return sub_237AB7980(a1, a2, a3, a4);
}

uint64_t sub_237AB95C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_3_39(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CE18F0];

  return sub_2379D9224(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_8_25()
{

  return sub_237C05EAC();
}

uint64_t OUTLINED_FUNCTION_9_27(uint64_t a1)
{

  return sub_237C05FEC();
}

uint64_t type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9C7A8;
  if (!qword_27DE9C7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237AB9730(uint64_t a1, void *a2, uint64_t a3)
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
  v27 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = (v29 - v28);
  sub_237A36A14(v52, v29 - v28);
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

uint64_t sub_237AB9BB8@<X0>(uint64_t a1@<X8>)
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
  v14 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  sub_237A36A14(v3, v16 - v15);
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
        JUMPOUT(0x237AB9E0CLL);
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

uint64_t sub_237AB9E1C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_237A254D8(a3);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2383DCAF0](i, a3);
      v9 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = v9;
    v10 = a1(&v11);
    if (v3)
    {

      return v9;
    }

    if (v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_237AB9F14(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v142 = a5;
  v132 = a4;
  v126 = a1;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C8, &qword_237C10EB0);
  v123 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v128 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v129 = &v122 - v11;
  MEMORY[0x28223BE20](v12);
  v127 = &v122 - v13;
  v154 = sub_237C0610C();
  v159 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v147 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v141 = &v122 - v16;
  v153 = sub_237C0683C();
  v158 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v146 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v140 = &v122 - v19;
  v145 = sub_237C069CC();
  v157 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v149 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7D0, &qword_237C10EB8);
  v151 = *(v21 - 8);
  v152 = v151;
  MEMORY[0x28223BE20](v21);
  v138 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v144 = (&v122 - v24);
  MEMORY[0x28223BE20](v25);
  v143 = (&v122 - v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7D8, &qword_237C10EC0);
  inited = swift_initStackObject();
  v160 = xmmword_237C0B660;
  *(inited + 16) = xmmword_237C0B660;
  v161 = a2;
  v162 = a3;

  MEMORY[0x2383DC360](0x75746E656D6F6D2ELL, 0xE90000000000006DLL);
  v28 = v162;
  *(inited + 32) = v161;
  *(inited + 40) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
  v29 = swift_allocObject();
  *(v29 + 16) = v160;
  sub_237C0696C();
  *(v29 + 32) = v30;
  *(inited + 48) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  v31 = sub_237C085AC();
  v155 = a2;
  v156 = a3;
  v161 = a2;
  v162 = a3;

  MEMORY[0x2383DC360](0x6E6F6C697370652ELL, 0xE800000000000000);
  v32 = v161;
  v33 = v162;
  v34 = swift_allocObject();
  *(v34 + 16) = v160;
  sub_237C0694C();
  *(v34 + 32) = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v161 = v31;
  sub_237B40F54(v34, v32, v33, isUniquelyReferenced_nonNull_native);

  *&v160 = v161;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7E0, &qword_237C10EC8);
  v37 = v151[9];
  v38 = v145;
  v39 = (*(v152 + 80) + 32) & ~*(v152 + 80);
  v40 = swift_allocObject();
  v122 = xmmword_237C0B670;
  *(v40 + 16) = xmmword_237C0B670;
  v125 = v40;
  v41 = v40 + v39;
  *v41 = 0x74657366666FLL;
  *(v41 + 8) = 0xE600000000000000;
  sub_237C0693C();
  v136 = v37;
  v135 = v41;
  v42 = &v37[v41];
  *v42 = 0x656C616373;
  *(v42 + 1) = 0xE500000000000000;
  v124 = v6;
  v43 = v149;
  sub_237C0691C();
  v44 = v144;
  v45 = 0;
  v46 = 0;
  v139 = v21;
  v134 = v143 + *(v21 + 48);
  v133 = v157 + 32;
  v152 = (v159 + 8);
  v151 = (v158 + 8);
  v137 = (v157 + 8);
  v47 = (v157 + 32);
  do
  {
    LODWORD(v157) = v45;
    v48 = v143;
    sub_2379D8FF4(v135 + v46 * v136, v143, &qword_27DE9C7D0, &qword_237C10EB8);
    v49 = v38;
    v51 = *v48;
    v50 = v48[1];
    v52 = v139;
    v53 = *(v139 + 48);
    *v44 = v51;
    v44[1] = v50;
    v158 = *v47;
    (v158)(v44 + v53, v134, v49);
    v161 = v155;
    v162 = v156;

    v54 = v44;
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v131 = v51;
    v130 = v50;
    MEMORY[0x2383DC360](v51, v50);
    v55 = v162;
    v159 = v161;
    v56 = v138;
    sub_2379D8FF4(v54, v138, &qword_27DE9C7D0, &qword_237C10EB8);

    (v158)(v43, v56 + *(v52 + 48), v49);
    sub_237C0699C();
    v57 = v140;
    MEMORY[0x2383DA550]();
    v58 = v141;
    sub_237C0679C();
    v59 = sub_237C060FC();
    v158 = *v152;
    v60 = (v158)(v58, v154);
    MEMORY[0x28223BE20](v60);
    *(&v122 - 2) = v57;
    v61 = v163;
    v62 = sub_237B64FE0(v59, sub_237AC1620, (&v122 - 2));
    v63 = v57;
    v64 = v159;
    v150 = *v151;
    (v150)(v63, v153);
    v65 = v160;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v65;
    sub_237B40F54(v62, v64, v55, v66);
    v67 = v161;
    if (v142 && (v68 = sub_237ACDA80()) != 0)
    {
      v69 = v68;
    }

    else
    {
      _s13GraphCNNModelVMa(0);
      sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
      v70 = v126;
      v71 = sub_237C063DC();
      MEMORY[0x28223BE20](v71);
      v72 = v149;
      *(&v122 - 2) = v70;
      *(&v122 - 1) = v72;
      v69 = sub_237AB9E1C(sub_237AC165C, (&v122 - 2), v71);

      if (!v69)
      {

        swift_setDeallocating();
        sub_237B908E0();
        v161 = 0;
        v162 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A870);
        MEMORY[0x2383DC360](v155, v156);
        MEMORY[0x2383DC360](0x697373696D202C60, 0xEC0000006020676ELL);
        MEMORY[0x2383DC360](v131, v130);
        MEMORY[0x2383DC360](0x61702079656B2060, 0xEB000000002E6874);
        v118 = v161;
        v119 = v162;
        sub_2379E8AF0();
        swift_allocError();
        *v120 = v118;
        *(v120 + 8) = v119;
        *(v120 + 16) = 0u;
        *(v120 + 32) = 0u;
        *(v120 + 48) = 2;
        swift_willThrow();
        (*v137)(v149, v145);
        sub_2379D9054(v144, &qword_27DE9C7D0, &qword_237C10EB8);
        return v160;
      }
    }

    v38 = v145;
    v73 = sub_237ABEE14(v69, v64, v55);

    v74 = swift_isUniquelyReferenced_nonNull_native();
    v161 = v67;
    sub_237ABF6E0(v73, sub_237AC151C, 0, v74, &v161);
    v163 = v61;
    v43 = v149;
    (*v137)(v149, v38);

    *&v160 = v161;
    v44 = v144;
    sub_2379D9054(v144, &qword_27DE9C7D0, &qword_237C10EB8);
    v45 = 1;
    v46 = 1;
  }

  while ((v157 & 1) == 0);
  swift_setDeallocating();
  sub_237B908E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7F0, &qword_237C10ED0);
  v75 = *(v123 + 72);
  v76 = (*(v123 + 80) + 32) & ~*(v123 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = v122;
  v144 = v77;
  v78 = (v77 + v76);
  v79 = v148;
  *v78 = 0x4D676E696E6E7572;
  *(v78 + 1) = 0xEB000000006E6165;
  sub_237C068CC();
  v157 = v75;
  v149 = v78;
  v80 = &v78[v75];
  *v80 = 0x56676E696E6E7572;
  *(v80 + 1) = 0xEF65636E61697261;
  sub_237C068EC();
  v81 = 0;
  v82 = 0;
  v145 = *(v79 + 48);
  v83 = v129;
  while (1)
  {
    LODWORD(v159) = v81;
    v84 = v127;
    sub_2379D8FF4(&v149[v82 * v157], v127, &qword_27DE9C7C8, &qword_237C10EB0);
    v85 = *v84;
    v86 = *(v84 + 1);
    v87 = *(v148 + 48);
    *v83 = *v84;
    *(v83 + 1) = v86;
    v88 = sub_237C060BC();
    v89 = *(v88 - 8);
    (*(v89 + 32))(&v83[v87], &v84[v145], v88);
    v161 = v155;
    v162 = v156;

    MEMORY[0x2383DC360](46, 0xE100000000000000);
    MEMORY[0x2383DC360](v85, v86);
    v90 = v161;
    v91 = v162;
    v92 = v83;
    v93 = v128;
    sub_2379D8FF4(v92, v128, &qword_27DE9C7C8, &qword_237C10EB0);

    v95 = *(v148 + 48);
    MEMORY[0x2383D9C40](v94);
    (*(v89 + 8))(v93 + v95, v88);
    sub_237C0679C();
    v96 = sub_237C060EC();
    v97 = *(v96 + 16);
    if (v97)
    {
      break;
    }

    v101 = 1;
    v83 = v129;
LABEL_14:
    (v158)(v147, v154);

    MEMORY[0x28223BE20](v102);
    v103 = v146;
    *(&v122 - 2) = v146;
    v104 = v163;
    v105 = sub_237B64FE0(v101, sub_237AC1708, (&v122 - 2));
    v163 = v104;
    (v150)(v103, v153);
    v106 = v160;
    swift_isUniquelyReferenced_nonNull_native();
    v161 = v106;
    v107 = sub_237ACAC78(v90, v91);
    if (__OFADD__(*(v106 + 16), (v108 & 1) == 0))
    {
      goto LABEL_27;
    }

    v109 = v107;
    v110 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7F8, &qword_237C15340);
    if (sub_237C090AC())
    {
      v111 = sub_237ACAC78(v90, v91);
      if ((v110 & 1) != (v112 & 1))
      {
        goto LABEL_29;
      }

      v109 = v111;
    }

    *&v160 = v161;
    if (v110)
    {
      *(*(v160 + 56) + 8 * v109) = v105;
    }

    else
    {
      v113 = v160;
      *(v160 + 8 * (v109 >> 6) + 64) |= 1 << v109;
      v114 = (v113[6] + 16 * v109);
      *v114 = v90;
      v114[1] = v91;
      *(v113[7] + 8 * v109) = v105;
      v115 = v113[2];
      v116 = __OFADD__(v115, 1);
      v117 = v115 + 1;
      if (v116)
      {
        goto LABEL_28;
      }

      *(v160 + 16) = v117;
    }

    sub_2379D9054(v83, &qword_27DE9C7C8, &qword_237C10EB0);
    v81 = 1;
    v82 = 1;
    if (v159)
    {
      swift_setDeallocating();
      sub_237B908F4();
      return v160;
    }
  }

  v98 = (v96 + 32);
  v99 = 1;
  v83 = v129;
  while (1)
  {
    v100 = *v98++;
    v101 = v99 * v100;
    if ((v99 * v100) >> 64 != (v99 * v100) >> 63)
    {
      break;
    }

    v99 = v101;
    if (!--v97)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

char *sub_237ABAF6C(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v140 = a5;
  v137 = a4;
  v148 = a3;
  v149 = a2;
  v133 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C810, &qword_237C12130);
  MEMORY[0x28223BE20](v6 - 8);
  v132 = &v125 - v7;
  v139 = sub_237C069CC();
  v145 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v138 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v135 = &v125 - v10;
  v146 = sub_237C0610C();
  v11 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v131 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v125 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v125 - v17;
  v141 = sub_237C0683C();
  v19 = *(v141 - 1);
  MEMORY[0x28223BE20](v141);
  v136 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v125 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7D8, &qword_237C10EC0);
  inited = swift_initStackObject();
  v147 = xmmword_237C0B670;
  *(inited + 16) = xmmword_237C0B670;
  v152 = a2;
  v153 = v148;

  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  v25 = v153;
  *(inited + 32) = v152;
  *(inited + 40) = v25;
  sub_237C0658C();
  sub_237C0679C();
  v26 = sub_237C060FC();
  v27 = *(v11 + 8);
  v128 = v18;
  v28 = v146;
  v144 = v11 + 8;
  v143 = v27;
  v27(v18, v146);
  v151 = v23;
  v29 = v142;
  v30 = sub_237B64FE0(v26, sub_237AC1708, v150);
  v142 = v29;
  v31 = *(v19 + 8);
  v127 = v23;
  v32 = v141;
  v31(v23, v141);
  *(inited + 48) = v30;
  v152 = v149;
  v153 = v148;

  MEMORY[0x2383DC360](0x2E7468676965772ELL, 0xED00006570616873);
  v33 = v153;
  *(inited + 56) = v152;
  *(inited + 64) = v33;
  v134 = inited;
  v34 = v136;
  sub_237C0658C();
  sub_237C0679C();
  v129 = v19 + 8;
  v126 = v31;
  v31(v34, v32);
  v35 = sub_237AC167C(&qword_27DE9BEE8, MEMORY[0x277D2CCF0], MEMORY[0x277D2CD00]);
  v36 = sub_237C08B3C();
  v130 = v35;
  if (v36)
  {
    v37 = v36;
    v154 = MEMORY[0x277D84F90];
    sub_237AC8B54();
    v38 = v154;
    result = sub_237C08B2C();
    if (v37 < 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v40 = v146;
    do
    {
      v41 = sub_237C08B9C();
      v43 = *v42;
      v41(&v152, 0);
      v154 = v38;
      v44 = *(v38 + 16);
      if (v44 >= *(v38 + 24) >> 1)
      {
        sub_237AC8B54();
        v38 = v154;
      }

      *(v38 + 16) = v44 + 1;
      *(v38 + 8 * v44 + 32) = v43;
      sub_237C08B6C();
      --v37;
    }

    while (v37);
    v143(v15, v40);
  }

  else
  {
    v143(v15, v28);
    v38 = MEMORY[0x277D84F90];
  }

  v45 = v139;
  *(v134 + 9) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  v46 = sub_237C085AC();
  v47 = v135;
  if (v140 && (MEMORY[0x2383DA130](), sub_237C0699C(), v48 = *(v145 + 8), v48(v47, v45), (v49 = sub_237ACDA80()) != 0))
  {
    v50 = v49;
    v51 = v45;
  }

  else
  {
    MEMORY[0x2383DA130]();
    _s13GraphCNNModelVMa(0);
    sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
    v52 = v133;
    v53 = sub_237C063DC();
    MEMORY[0x28223BE20](v53);
    *(&v125 - 2) = v52;
    *(&v125 - 1) = v47;
    v54 = v142;
    v50 = sub_237AB9E1C(sub_237AC16E8, (&v125 - 4), v53);

    v48 = *(v145 + 8);
    v55 = v47;
    v51 = v45;
    v48(v55, v45);
    if (!v50)
    {

      v152 = 0;
      v153 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A870);
      MEMORY[0x2383DC360](v149, v148);
      MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1A8D0);
      v84 = v152;
      v85 = v153;
      sub_2379E8AF0();
      swift_allocError();
      *v86 = v84;
      *(v86 + 8) = v85;
      *(v86 + 16) = 0u;
      *(v86 + 32) = 0u;
      *(v86 + 48) = 2;
      return swift_willThrow();
    }

    v142 = v54;
  }

  v56 = v46;
  v57 = v148;
  v152 = v149;
  v153 = v148;

  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  v136 = v50;
  v58 = sub_237ABEE14(v50, v152, v153);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v152 = v56;
  v60 = v142;
  sub_237ABF6E0(v58, sub_237AC151C, 0, isUniquelyReferenced_nonNull_native, &v152);
  v61 = v152;
  v62 = v132;
  sub_237C0655C();
  if (__swift_getEnumTagSinglePayload(v62, 1, v51) == 1)
  {
    v146 = v60;
    sub_2379D9054(v62, &qword_27DE9C810, &qword_237C12130);
LABEL_31:
    v99 = v149;
    v152 = v149;
    v153 = v57;

    MEMORY[0x2383DC360](0x736564697274732ELL, 0xE800000000000000);
    v100 = v152;
    v101 = v153;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
    v102 = swift_allocObject();
    *(v102 + 16) = v147;
    *(v102 + 32) = sub_237C0656C();
    sub_237C0656C();
    *(v102 + 40) = v103;
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v61;
    sub_237B40F54(v102, v100, v101, v104);

    v105 = v152;
    v152 = v99;
    v153 = v57;

    MEMORY[0x2383DC360](0x676E69646461702ELL, 0xE800000000000000);
    v106 = v152;
    v107 = v153;
    v108 = swift_allocObject();
    *(v108 + 16) = v147;
    *(v108 + 32) = sub_237C065AC();
    sub_237C065AC();
    *(v108 + 40) = v109;
    v110 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v105;
    sub_237B40F54(v108, v106, v107, v110);

    v111 = v152;
    v152 = v99;
    v153 = v57;

    MEMORY[0x2383DC360](0x6F6974616C69642ELL, 0xEA0000000000736ELL);
    v112 = v152;
    v113 = v153;
    v114 = swift_allocObject();
    *(v114 + 16) = v147;
    *(v114 + 32) = sub_237C065BC();
    sub_237C065BC();
    *(v114 + 40) = v115;
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v111;
    sub_237B40F54(v114, v112, v113, v116);

    v117 = v152;
    v152 = v99;
    v153 = v57;

    MEMORY[0x2383DC360](0x6F4370756F72672ELL, 0xEB00000000746E75);
    v118 = v152;
    v119 = v153;
    v120 = swift_allocObject();
    *(v120 + 16) = xmmword_237C0B660;
    *(v120 + 32) = sub_237C0650C();
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v152 = v117;
    sub_237B40F54(v120, v118, v119, v121);

    return v152;
  }

  v134 = v48;
  (*(v145 + 32))(v138, v62, v51);
  v152 = v149;
  v153 = v57;

  v63 = MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
  v64 = v153;
  v135 = v152;
  v65 = v127;
  MEMORY[0x2383DA550](v63);
  v66 = v128;
  sub_237C0679C();
  v67 = sub_237C060FC();
  v68 = v146;
  v69 = (v143)(v66, v146);
  MEMORY[0x28223BE20](v69);
  *(&v125 - 2) = v65;
  v70 = sub_237B64FE0(v67, sub_237AC1708, (&v125 - 4));
  v142 = v60;
  v126(v65, v141);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v152 = v61;
  sub_237B40F54(v70, v135, v64, v71);

  v72 = v152;
  v152 = v149;
  v153 = v57;

  MEMORY[0x2383DC360](0x68732E736169622ELL, 0xEB00000000657061);
  v73 = v153;
  v141 = v152;
  v74 = v131;
  sub_237C069AC();
  v75 = v68;
  v76 = sub_237C08B3C();
  if (v76)
  {
    v77 = v76;
    v132 = v73;
    v135 = v72;
    v154 = MEMORY[0x277D84F90];
    sub_237AC8B54();
    v78 = v154;
    result = sub_237C08B2C();
    if ((v77 & 0x8000000000000000) == 0)
    {
      v79 = v75;
      do
      {
        v80 = sub_237C08B9C();
        v82 = *v81;
        v80(&v152, 0);
        v154 = v78;
        v83 = *(v78 + 16);
        if (v83 >= *(v78 + 24) >> 1)
        {
          sub_237AC8B54();
          v78 = v154;
        }

        *(v78 + 16) = v83 + 1;
        *(v78 + 8 * v83 + 32) = v82;
        sub_237C08B6C();
        --v77;
      }

      while (v77);
      v143(v74, v79);
      v57 = v148;
      v72 = v135;
      v73 = v132;
      goto LABEL_25;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  v143(v74, v68);
  v78 = MEMORY[0x277D84F90];
LABEL_25:
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v152 = v72;
  sub_237B40F54(v78, v141, v73, v87);

  v88 = v152;
  v89 = v138;
  if (v140)
  {
    sub_237C0699C();
    v90 = sub_237ACDA80();
    if (v90)
    {
      v91 = v90;
      v92 = v139;
LABEL_30:
      v152 = v149;
      v153 = v57;

      MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
      v96 = sub_237ABEE14(v91, v152, v153);

      v97 = swift_isUniquelyReferenced_nonNull_native();
      v152 = v88;
      v98 = v142;
      sub_237ABF6E0(v96, sub_237AC151C, 0, v97, &v152);
      v146 = v98;
      v134(v89, v92);

      v61 = v152;
      goto LABEL_31;
    }
  }

  _s13GraphCNNModelVMa(0);
  sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
  v93 = v133;
  v94 = sub_237C063DC();
  MEMORY[0x28223BE20](v94);
  *(&v125 - 2) = v93;
  *(&v125 - 1) = v89;
  v95 = v142;
  v91 = sub_237AB9E1C(sub_237AC16E8, (&v125 - 4), v94);

  v92 = v139;
  if (v91)
  {
    v142 = v95;
    goto LABEL_30;
  }

  v152 = 0;
  v153 = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A870);
  MEMORY[0x2383DC360](v149, v57);
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A8F0);
  v122 = v152;
  v123 = v153;
  sub_2379E8AF0();
  swift_allocError();
  *v124 = v122;
  *(v124 + 8) = v123;
  *(v124 + 16) = 0u;
  *(v124 + 32) = 0u;
  *(v124 + 48) = 2;
  swift_willThrow();

  return (v134)(v89, v92);
}

char *sub_237ABC1A4(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v114 = a5;
  v112 = a4;
  v123 = a2;
  v124 = a3;
  v110 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C810, &qword_237C12130);
  MEMORY[0x28223BE20](v6 - 8);
  v109 = &v101 - v7;
  v117 = sub_237C069CC();
  v121 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v108 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v113 = &v101 - v10;
  v116 = sub_237C0610C();
  v11 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v107 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v101 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v101 - v17;
  v115 = sub_237C0683C();
  v19 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v101 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7D8, &qword_237C10EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B670;
  v127 = a2;
  v128 = v124;

  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  v26 = v128;
  *(inited + 32) = v127;
  *(inited + 40) = v26;
  sub_237C0634C();
  sub_237C0679C();
  v27 = sub_237C060FC();
  v28 = *(v11 + 8);
  v104 = v18;
  v29 = v116;
  v120 = v11 + 8;
  v119 = v28;
  v28(v18, v116);
  v126 = v24;
  v30 = v118;
  v31 = sub_237B64FE0(v27, sub_237AC1708, v125);
  v118 = v30;
  v32 = *(v19 + 8);
  v103 = v24;
  v33 = v115;
  v32(v24, v115);
  *(inited + 48) = v31;
  v127 = v123;
  v128 = v124;

  MEMORY[0x2383DC360](0x2E7468676965772ELL, 0xED00006570616873);
  v34 = v128;
  *(inited + 56) = v127;
  *(inited + 64) = v34;
  v111 = inited;
  sub_237C0634C();
  sub_237C0679C();
  v105 = v19 + 8;
  v102 = v32;
  v32(v21, v33);
  v35 = sub_237AC167C(&qword_27DE9BEE8, MEMORY[0x277D2CCF0], MEMORY[0x277D2CD00]);
  v36 = sub_237C08B3C();
  v106 = v35;
  if (!v36)
  {
    goto LABEL_4;
  }

  v37 = v36;
  v129 = MEMORY[0x277D84F90];
  sub_237AC8B54();
  v38 = v129;
  sub_237C08B2C();
  if (v37 < 0)
  {
    __break(1u);
LABEL_4:
    v119(v15, v29);
    v38 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  do
  {
    v39 = sub_237C08B9C();
    v41 = *v40;
    v39(&v127, 0);
    v129 = v38;
    v42 = *(v38 + 16);
    if (v42 >= *(v38 + 24) >> 1)
    {
      sub_237AC8B54();
      v38 = v129;
    }

    *(v38 + 16) = v42 + 1;
    *(v38 + 8 * v42 + 32) = v41;
    sub_237C08B6C();
    --v37;
  }

  while (v37);
  v119(v15, v29);
LABEL_9:
  v43 = v123;
  *(v111 + 72) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  v44 = sub_237C085AC();
  v45 = v124;
  v46 = v117;
  if (v114 && (v47 = v113, sub_237C0635C(), sub_237C0699C(), v48 = *(v121 + 8), v48(v47, v46), (v49 = sub_237ACDA80()) != 0))
  {
    v50 = v49;
  }

  else
  {
    v51 = v113;
    sub_237C0635C();
    _s13GraphCNNModelVMa(0);
    sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
    v52 = v110;
    v53 = sub_237C063DC();
    v54 = &v101;
    MEMORY[0x28223BE20](v53);
    *(&v101 - 2) = v52;
    *(&v101 - 1) = v51;
    v55 = v118;
    v50 = sub_237AB9E1C(sub_237AC16E8, (&v101 - 4), v53);

    v48 = *(v121 + 8);
    v48(v51, v46);
    if (!v50)
    {

      v127 = 0;
      v128 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A870);
      MEMORY[0x2383DC360](v123, v45);
      MEMORY[0x2383DC360](0xD00000000000001DLL, 0x8000000237C1A8D0);
      v85 = v127;
      v86 = v128;
      sub_2379E8AF0();
      swift_allocError();
      *v87 = v85;
      *(v87 + 8) = v86;
      *(v87 + 16) = 0u;
      *(v87 + 32) = 0u;
      *(v87 + 48) = 2;
      swift_willThrow();
      return v54;
    }

    v118 = v55;
    v43 = v123;
  }

  v127 = v43;
  v128 = v45;

  MEMORY[0x2383DC360](0x7468676965772ELL, 0xE700000000000000);
  v56 = sub_237ABEE14(v50, v127, v128);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v127 = v44;
  v58 = v118;
  sub_237ABF6E0(v56, sub_237AC151C, 0, isUniquelyReferenced_nonNull_native, &v127);
  v54 = v127;
  v59 = v109;
  sub_237C0632C();
  if (__swift_getEnumTagSinglePayload(v59, 1, v46) == 1)
  {

    sub_2379D9054(v59, &qword_27DE9C810, &qword_237C12130);
    return v54;
  }

  v113 = v50;
  v118 = v48;
  (*(v121 + 32))(v108, v59, v46);
  v127 = v43;
  v128 = v45;

  v60 = MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
  v61 = v128;
  v122 = v127;
  v62 = v103;
  MEMORY[0x2383DA550](v60);
  v63 = v104;
  sub_237C0679C();
  v64 = sub_237C060FC();
  v65 = v116;
  v66 = (v119)(v63, v116);
  MEMORY[0x28223BE20](v66);
  *(&v101 - 2) = v62;
  v67 = sub_237B64FE0(v64, sub_237AC1708, (&v101 - 4));
  v111 = v58;
  v102(v62, v115);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v127 = v54;
  v69 = v65;
  v70 = v67;
  v71 = v123;
  sub_237B40F54(v70, v122, v61, v68);

  v72 = v127;
  v127 = v71;
  v128 = v45;

  MEMORY[0x2383DC360](0x68732E736169622ELL, 0xEB00000000657061);
  v73 = v128;
  v122 = v127;
  v74 = v107;
  sub_237C069AC();
  v75 = sub_237C08B3C();
  if (!v75)
  {
    v84 = v71;
    v119(v74, v69);
    v77 = MEMORY[0x277D84F90];
    v83 = v117;
LABEL_24:
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v72;
    sub_237B40F54(v77, v122, v73, v88);

    v89 = v127;
    v54 = v108;
    v90 = v118;
    if (v114 && (sub_237C0699C(), (v91 = sub_237ACDA80()) != 0))
    {
      v92 = v91;
      v93 = v124;
    }

    else
    {
      _s13GraphCNNModelVMa(0);
      sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
      v94 = v110;
      v95 = sub_237C063DC();
      MEMORY[0x28223BE20](v95);
      *(&v101 - 2) = v94;
      *(&v101 - 1) = v54;
      v92 = sub_237AB9E1C(sub_237AC16E8, (&v101 - 4), v95);

      v93 = v124;
      if (!v92)
      {

        v127 = 0;
        v128 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A870);
        MEMORY[0x2383DC360](v84, v93);
        MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C1A8F0);
        v98 = v127;
        v99 = v128;
        sub_2379E8AF0();
        swift_allocError();
        *v100 = v98;
        *(v100 + 8) = v99;
        *(v100 + 16) = 0u;
        *(v100 + 32) = 0u;
        *(v100 + 48) = 2;
        swift_willThrow();

        v90(v54, v117);
        return v54;
      }

      v83 = v117;
    }

    v127 = v84;
    v128 = v93;

    MEMORY[0x2383DC360](0x736169622ELL, 0xE500000000000000);
    v96 = sub_237ABEE14(v92, v127, v128);

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v89;
    sub_237ABF6E0(v96, sub_237AC151C, 0, v97, &v127);
    v90(v54, v83);

    return v127;
  }

  v76 = v75;
  v109 = v73;
  v115 = v72;
  v129 = MEMORY[0x277D84F90];
  sub_237AC8B54();
  v77 = v129;
  result = sub_237C08B2C();
  if ((v76 & 0x8000000000000000) == 0)
  {
    do
    {
      v79 = sub_237C08B9C();
      v81 = *v80;
      v79(&v127, 0);
      v129 = v77;
      v82 = *(v77 + 16);
      if (v82 >= *(v77 + 24) >> 1)
      {
        sub_237AC8B54();
        v77 = v129;
      }

      *(v77 + 16) = v82 + 1;
      *(v77 + 8 * v82 + 32) = v81;
      sub_237C08B6C();
      --v76;
    }

    while (v76);
    v119(v74, v69);
    v83 = v117;
    v84 = v123;
    v72 = v115;
    v73 = v109;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t *sub_237ABD138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v94 = a4;
  v95 = a5;
  v91 = a1;
  v81 = sub_237C0610C();
  v8 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v88 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_237C069CC();
  v10 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v12 = (&v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = sub_237C0683C();
  v13 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_237C060BC();
  v15 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v83 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = MEMORY[0x277D84F98];
  v78 = sub_237C062EC();
  v96 = v5;
  result = sub_237C0640C();
  v18 = result[2];
  v100 = a2;
  v101 = a3;
  v19 = a2;
  v87 = v18;
  if (v18)
  {
    v76 = v15;
    v20 = 0;
    v77 = v13;
    v93 = (v13 + 8);
    v86 = (v10 + 8);
    v80 = "r key path for layer ";
    v79 = (v8 + 8);
    v21 = result + 6;
    v84 = xmmword_237C0B660;
    v90 = v12;
    v85 = result;
    while (v20 < result[2])
    {
      v22 = *(v21 - 2);
      v23 = *(v21 - 1);
      v24 = *v21;
      swift_retain_n();

      swift_getAtKeyPath();
      v97 = v24;

      v26 = v98;
      MEMORY[0x2383DA550](v25);
      sub_237A80418(v26, v22, v23, v19, v101);
      v92 = *v93;
      v92(v26, v99);
      if (v95 && (sub_237C0699C(), (v27 = sub_237ACDA80()) != 0))
      {
        v28 = v27;
      }

      else
      {
        _s13GraphCNNModelVMa(0);
        sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
        v29 = v91;
        v30 = sub_237C063DC();
        v31 = &v76;
        MEMORY[0x28223BE20](v30);
        *(&v76 - 2) = v29;
        *(&v76 - 1) = v12;
        v32 = v102;
        v28 = sub_237AB9E1C(sub_237AC16E8, (&v76 - 4), v30);
        v102 = v32;

        if (!v28)
        {

          v103 = 0;
          v104 = 0xE000000000000000;
          sub_237C08EDC();
          MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C1A910);
          MEMORY[0x2383DC360](v100, v101);
          MEMORY[0x2383DC360](0x74656D6172617020, 0xEB00000000207265);
          MEMORY[0x2383DC360](v22, v23);

          v70 = v103;
          v71 = v104;
          sub_2379E8AF0();
          swift_allocError();
          *v72 = v70;
          *(v72 + 8) = v71;
          *(v72 + 16) = 0u;
          *(v72 + 32) = 0u;
          *(v72 + 48) = 0;
          swift_willThrow();

          (*v86)(v90, v89);
          return v31;
        }

        v12 = v90;
      }

      v33 = v101;
      v103 = v100;
      v104 = v101;

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      MEMORY[0x2383DC360](v22, v23);
      v34 = sub_237ABEE14(v28, v103, v104);

      v35 = v105;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v35;
      v37 = v102;
      sub_237ABF6E0(v34, sub_237AC151C, 0, isUniquelyReferenced_nonNull_native, &v103);
      v102 = v37;
      v31 = v103;
      v105 = v103;
      LOBYTE(v34) = sub_237C0880C();

      if (v34)
      {
        v39 = v98;
        MEMORY[0x2383DA550](v38);
        sub_237C0679C();
        v92(v39, v99);
        v40 = *(sub_237C060EC() + 16);

        if (v40 == 3)
        {
          v41 = 1.0;
        }

        else
        {
          v41 = 0.0;
        }

        v42 = sub_237C0612C();
        v103 = v100;
        v104 = v33;

        MEMORY[0x2383DC360](0x756F4374696E752ELL, 0xEA0000000000746ELL);
        v44 = v103;
        v43 = v104;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
        v45 = swift_allocObject();
        *(v45 + 16) = v84;
        *(v45 + 32) = v42;
        v46 = v105;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v103 = v46;
        sub_237B40F54(v45, v44, v43, v47);

        v48 = v103;
        v103 = 0;
        v104 = 0xE000000000000000;
        v105 = v48;
        sub_237C08EDC();

        v103 = v100;
        v104 = v101;

        MEMORY[0x2383DC360](0xD000000000000010, v80 | 0x8000000000000000);
        v49 = v103;
        v50 = v104;
        v51 = swift_allocObject();
        *(v51 + 16) = v84;
        *(v51 + 32) = v41;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v103 = v48;
        sub_237B40F54(v51, v49, v50, v52);

        v12 = v90;

        (*v79)(v88, v81);
        (*v86)(v12, v89);
        v31 = v103;
        v105 = v103;
      }

      else
      {
        (*v86)(v12, v89);
      }

      ++v20;
      v21 += 3;
      v19 = v100;
      result = v85;
      if (v87 == v20)
      {

        v13 = v77;
        v15 = v76;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v31 = MEMORY[0x277D84F98];
LABEL_18:
  result = sub_237C0639C();
  v97 = result[2];
  if (v97)
  {
    v53 = v19;
    v54 = 0;
    v90 = (v13 + 8);
    v93 = (v15 + 8);
    v55 = (result + 6);
    v92 = result;
    while (v54 < result[2])
    {
      v57 = *(v55 - 2);
      v56 = *(v55 - 1);
      v31 = *v55;
      swift_retain_n();

      swift_getAtKeyPath();

      v59 = v98;
      MEMORY[0x2383D9C40](v58);
      sub_237A80418(v59, v57, v56, v53, v101);
      (*v90)(v59, v99);
      if (v95 && (sub_237C0609C(), (v60 = sub_237ACDA80()) != 0))
      {
        v61 = v60;
      }

      else
      {
        v62 = sub_237C0609C();
        _s13GraphCNNModelVMa(0);
        sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
        v63 = v91;
        v64 = sub_237C063DC();
        MEMORY[0x28223BE20](v64);
        *(&v76 - 2) = v63;
        *(&v76 - 2) = v62;
        v65 = v102;
        v61 = sub_237AB9E1C(sub_237AC16C4, (&v76 - 4), v64);
        v102 = v65;

        if (!v61)
        {

          v103 = 0;
          v104 = 0xE000000000000000;
          sub_237C08EDC();
          MEMORY[0x2383DC360](0xD000000000000025, 0x8000000237C1A910);
          MEMORY[0x2383DC360](v100, v101);
          MEMORY[0x2383DC360](0x74656D6172617020, 0xEB00000000207265);
          MEMORY[0x2383DC360](v57, v56);

          v73 = v103;
          v74 = v104;
          sub_2379E8AF0();
          swift_allocError();
          *v75 = v73;
          *(v75 + 8) = v74;
          *(v75 + 16) = 0u;
          *(v75 + 32) = 0u;
          *(v75 + 48) = 0;
          swift_willThrow();

          (*v93)(v83, v82);
          return v31;
        }

        v53 = v100;
      }

      ++v54;
      v103 = v53;
      v104 = v101;

      MEMORY[0x2383DC360](46, 0xE100000000000000);
      MEMORY[0x2383DC360](v57, v56);

      v66 = sub_237ABEE14(v61, v103, v104);

      v67 = v105;
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v103 = v67;
      v69 = v102;
      sub_237ABF6E0(v66, sub_237AC151C, 0, v68, &v103);
      v102 = v69;
      (*v93)(v83, v82);

      v31 = v103;
      v105 = v103;
      v55 += 3;
      result = v92;
      if (v97 == v54)
      {
        goto LABEL_27;
      }
    }

LABEL_32:
    __break(1u);
    return result;
  }

LABEL_27:

  return v31;
}

void *sub_237ABDDA4(__n128 a1)
{
  v33 = sub_237C069CC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v32 = v6 - v5;
  _s13GraphCNNModelVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  v31 = v11;
  sub_237AC1560(v1 + v11, v10);
  sub_237AC167C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);
  v12 = sub_237C063DC();
  v30 = v10;
  sub_237AC15C4(v10);
  v29 = sub_237A254D8(v12);
  if (v29)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F98];
    v28 = (v3 + 8);
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2383DCAF0](v13, v12);
      }

      else
      {
        if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v15 = *(v12 + 8 * v13 + 32);
      }

      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_237AC1560(v1 + v31, v30);

      swift_getAtKeyPath();

      sub_237AC15C4(v30);
      v17 = sub_237C0699C();
      (*v28)(v32, v33);

      swift_isUniquelyReferenced_nonNull_native();
      v18 = sub_237ACB20C(v17);
      if (__OFADD__(v14[2], (v19 & 1) == 0))
      {
        goto LABEL_21;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C818, &qword_237C10EE8);
      if (sub_237C090AC())
      {
        v22 = sub_237ACB20C(v17);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_24;
        }

        v20 = v22;
      }

      if (v21)
      {
        *(v14[7] + 8 * v20) = v15;
      }

      else
      {
        v14[(v20 >> 6) + 8] |= 1 << v20;
        *(v14[6] + 4 * v20) = v17;
        *(v14[7] + 8 * v20) = v15;

        v24 = v14[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_22;
        }

        v14[2] = v26;
      }

      ++v13;
      if (v16 == v29)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    result = sub_237C0932C();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
LABEL_19:

    return v14;
  }

  return result;
}

uint64_t sub_237ABE134(uint64_t a1, char *a2, __n128 a3)
{
  v5 = v3;
  v99 = a2;
  v7 = sub_237C062EC();
  *&v102 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v72 - v10;
  v87 = sub_237C0638C();
  v90 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v86 = &v72 - v13;
  v93 = sub_237C065CC();
  v14 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v85 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v92 = &v72 - v17;
  v18 = _s13GraphCNNModelVMa(0);
  MEMORY[0x28223BE20](v18 - 8);
  v74 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v78 = &v72 - v21;
  MEMORY[0x28223BE20](v22);
  v84 = &v72 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v72 - v25;
  v101 = sub_237C0697C();
  v27 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v72 - v31;
  v98 = sub_237ABDDA4(v30);
  v96 = a1;
  v103 = sub_237ABECA4();
  v33 = v99;
  v100 = *(v99 + 2);
  v97 = v5;
  v95 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  result = swift_beginAccess();
  v35 = 0;
  v94 = v33 + 32;
  v72 = (v102 + 32);
  v73 = (v102 + 8);
  v76 = (v90 + 4);
  v77 = v90 + 1;
  v82 = (v14 + 32);
  v83 = (v14 + 8);
  v89 = (v27 + 32);
  v90 = (v27 + 8);
  v99 = v32;
  v79 = v7;
  v88 = v26;
  while (1)
  {
    v36 = 0uLL;
    v37 = v100;
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = v101;
    if (v35 == v100)
    {
      goto LABEL_6;
    }

    if (v35 >= v100)
    {
      break;
    }

    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_32;
    }

    *&v106[0] = v35;
    sub_2379E8624(&v94[40 * v35], v106 + 8);
    v36 = v106[0];
    v38 = v106[1];
    v39 = v106[2];
LABEL_6:
    v107[0] = v36;
    v107[1] = v38;
    v107[2] = v39;
    if (!v39)
    {

      return v103;
    }

    v35 = v37;
    v102 = v36;
    sub_237A1FCF0((v107 + 8), v106);
    v104 = 0x5F726579616CLL;
    v105 = 0xE600000000000000;
    v108 = v102;
    v41 = sub_237C0924C();
    MEMORY[0x2383DC360](v41);

    v42 = v104;
    v43 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
    v44 = sub_237C085AC();
    sub_2379E8624(v106, &v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7C0, &qword_237C10EA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v48 = v92;
      v49 = v93;
      if (swift_dynamicCast())
      {

        v50 = v85;
        (*v82)(v85, v48, v49);
        v51 = v84;
        sub_237AC1560(v97 + v95, v84);
        v52 = v98;

        v53 = sub_237ABAF6C(v51, v42, v43, v96, v52);
        if (v4)
        {
          swift_bridgeObjectRelease_n();

          sub_237AC15C4(v51);
          v70 = *v83;
          v71 = v50;
LABEL_27:
          v70(v71, v49);
          goto LABEL_28;
        }

        v44 = v53;

        sub_237AC15C4(v51);
        v54 = *v83;
        v55 = v50;
        goto LABEL_16;
      }

      v56 = v86;
      v49 = v87;
      if (swift_dynamicCast())
      {

        v57 = v81;
        (*v76)(v81, v56, v49);
        v58 = v78;
        sub_237AC1560(v97 + v95, v78);
        v59 = v98;

        v60 = sub_237ABC1A4(v58, v42, v43, v96, v59);
        if (v4)
        {
          swift_bridgeObjectRelease_n();

          sub_237AC15C4(v58);
          v70 = *v77;
          v71 = v57;
          goto LABEL_27;
        }

        v44 = v60;

        sub_237AC15C4(v58);
        v54 = *v77;
        v55 = v57;
LABEL_16:
        v54(v55, v49);
      }

      else
      {
        v63 = v80;
        v64 = v79;
        if (swift_dynamicCast())
        {

          v65 = v75;
          (*v72)(v75, v63, v64);
          v66 = v74;
          sub_237AC1560(v97 + v95, v74);
          v67 = v98;

          v68 = sub_237ABD138(v66, v42, v43, v96, v67);
          if (v4)
          {
            swift_bridgeObjectRelease_n();

            sub_237AC15C4(v66);
            (*v73)(v65, v64);
LABEL_28:
            __swift_destroy_boxed_opaque_existential_1(v106);
            v69 = v103;

            __swift_destroy_boxed_opaque_existential_1(&v104);
            return v69;
          }

          v44 = v68;

          sub_237AC15C4(v66);
          (*v73)(v65, v64);
        }

        else
        {
        }
      }

      v26 = v88;
      goto LABEL_18;
    }

    v45 = v91;
    (*v89)(v91, v32, v40);
    sub_237AC1560(v97 + v95, v26);
    v46 = v98;

    v47 = sub_237AB9F14(v26, v42, v43, v96, v46);
    if (v4)
    {

      swift_bridgeObjectRelease_n();
      sub_237AC15C4(v26);
      (*v90)(v45, v40);
      goto LABEL_28;
    }

    v44 = v47;

    sub_237AC15C4(v26);
    (*v90)(v45, v40);
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(&v104);
    v61 = v103;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v61;
    sub_237ABF6E0(v44, sub_237AC151C, 0, isUniquelyReferenced_nonNull_native, &v104);
    result = __swift_destroy_boxed_opaque_existential_1(v106);
    v103 = v104;
    v32 = v99;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_237ABECA4()
{
  v1 = *(v0 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7D8, &qword_237C10EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  strcpy((inited + 32), "learningRate");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_237C0B660;
  *(v3 + 32) = *v0;
  *(inited + 48) = v3;
  *(inited + 56) = 0x6D75746E656D6F6DLL;
  *(inited + 64) = 0xE800000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_237C0B660;
  *(v4 + 32) = *(v0 + 4);
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000237C1A960;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_237C0B660;
  *(v5 + 32) = v1;
  *(inited + 96) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  return sub_237C085AC();
}

void *sub_237ABEE14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v41 = a3;
  v42 = a1;
  v43 = a2;
  v3 = sub_237C0610C();
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_237C0683C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  v16 = sub_237C085AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C808, &qword_237C10EE0);
  sub_237C0626C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2379D9054(v11, &qword_27DE9B410, &qword_237C0CCC8);
    return v16;
  }

  v39 = v13;
  v40 = v12;
  (*(v13 + 32))(v15, v11, v12);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_237C08EDC();

  v17 = v41;
  v45 = v43;
  v46 = v41;

  MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1A890);
  v18 = v46;
  v42 = v45;
  sub_237C0679C();
  v19 = sub_237C060FC();
  v20 = v44 + 8;
  v38 = *(v44 + 8);
  v21 = v38(v8, v3);
  MEMORY[0x28223BE20](v21);
  *(&v36 - 2) = v15;
  v22 = sub_237B64FE0(v19, sub_237AC1708, (&v36 - 4));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v16;
  sub_237B40F54(v22, v42, v18, isUniquelyReferenced_nonNull_native);

  v42 = v45;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_237C08EDC();

  v45 = v43;
  v46 = v17;

  MEMORY[0x2383DC360](0xD000000000000019, 0x8000000237C1A8B0);
  v24 = v46;
  v43 = v45;
  v25 = v15;
  sub_237C0679C();
  sub_237AC167C(&qword_27DE9BEE8, MEMORY[0x277D2CCF0], MEMORY[0x277D2CD00]);
  v26 = sub_237C08B3C();
  if (!v26)
  {
    v38(v5, v3);
    v28 = MEMORY[0x277D84F90];
LABEL_11:
    v34 = v42;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v45 = v34;
    sub_237B40F54(v28, v43, v24, v35);

    v16 = v45;
    (*(v39 + 8))(v25, v40);
    return v16;
  }

  v27 = v26;
  v47 = MEMORY[0x277D84F90];
  sub_237AC8B54();
  v28 = v47;
  result = sub_237C08B2C();
  if ((v27 & 0x8000000000000000) == 0)
  {
    v37 = v24;
    v41 = v15;
    v44 = v20;
    do
    {
      v30 = sub_237C08B9C();
      v32 = *v31;
      v30(&v45, 0);
      v47 = v28;
      v33 = *(v28 + 16);
      if (v33 >= *(v28 + 24) >> 1)
      {
        sub_237AC8B54();
        v28 = v47;
      }

      *(v28 + 16) = v33 + 1;
      *(v28 + 8 * v33 + 32) = v32;
      sub_237C08B6C();
      --v27;
    }

    while (v27);
    v38(v5, v3);
    v25 = v41;
    v24 = v37;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

BOOL sub_237ABF3D8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = sub_237C069CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  v7 = sub_237C0699C();
  (*(v4 + 8))(v6, v3);
  return v7 == sub_237C0699C();
}

BOOL sub_237ABF4E0(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v5 = sub_237C069CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  v9 = sub_237C0699C();
  (*(v6 + 8))(v8, v5);
  return v9 == a3;
}

uint64_t sub_237ABF5E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = _0 - v2;
  v4 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer;
  swift_beginAccess();
  v5 = sub_2379D8FF4(v0 + v4, v3, &qword_27DE9C7B8, &unk_237C12110);
  sub_237BAFD70(v5, v6, v7, v8, v9, v10, v11, v12, _0[0], _0[1], _0[2], _0[3], _0[4], _0[5], _0[6], _0[7], _0[8], _0[9], _0[10], _0[11]);
  v15 = sub_237ABE134(v3, v13, v14);
  sub_2379D9054(v3, &qword_27DE9C7B8, &unk_237C12110);

  return v15;
}

uint64_t sub_237ABF6E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  sub_237AC14C0(a1, a2, a3, v43);
  v6 = v43[1];
  v7 = v43[3];
  v8 = v43[4];
  v37 = v43[5];
  v38 = v43[0];
  v9 = (v43[2] + 64) >> 6;

  v35 = v9;
  v36 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v38 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v38 + 56) + 8 * v12);
      v42[0] = *v13;
      v42[1] = v14;
      v42[2] = v15;

      v37(&v39, v42);

      v17 = v39;
      v16 = v40;
      v18 = v41;
      v19 = *v44;
      v21 = sub_237ACAC78(v39, v40);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((a4 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7F8, &qword_237C15340);
          sub_237C090BC();
        }
      }

      else
      {
        sub_237AC0748(v24, a4 & 1);
        v26 = sub_237ACAC78(v17, v16);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_23;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v44;
      if (v25)
      {
        v29 = *(v28[7] + 8 * v21);

        *(v28[7] + 8 * v21) = v29;
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v30 = (v28[6] + 16 * v21);
        *v30 = v17;
        v30[1] = v16;
        *(v28[7] + 8 * v21) = v18;
        v31 = v28[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_22;
        }

        v28[2] = v33;
      }

      a4 = 1;
      v7 = v10;
      v9 = v35;
      v6 = v36;
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
        sub_2379E925C(v38);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237ABF994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BD30, &qword_237C0EC60);
  v44 = v4;
  v6 = sub_237C0911C();
  if (!v5[2])
  {
    goto LABEL_38;
  }

  v42 = v2;
  v43 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_0_41();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 64;
  if ((v10 & v9) != 0)
  {
    while (2)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_9:
      v19 = 3 * (v15 | (v7 << 6));
      v20 = v5[7];
      v21 = v5[6] + 8 * v19;
      v22 = *v21;
      v46 = *(v21 + 8);
      v23 = *(v21 + 16);
      v24 = v20 + 8 * v19;
      v26 = *v24;
      v25 = *(v24 + 8);
      v45 = *(v24 + 16);
      if ((v44 & 1) == 0)
      {
        sub_2379E9288(v22, v46, v23);
        sub_2379E9288(v26, v25, v45);
      }

      sub_237C093CC();
      switch(v23)
      {
        case 1:
          if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v28 = v22;
          }

          else
          {
            v28 = 0;
          }

          MEMORY[0x2383DCF90](v28);
          goto LABEL_20;
        case 2:
          sub_237C0878C();
          goto LABEL_20;
        case 3:
          goto LABEL_42;
        case 4:
        case 5:
          OUTLINED_FUNCTION_33_10();
          OUTLINED_FUNCTION_20_14();
          goto LABEL_44;
        case 6:
          v27 = 1;
          goto LABEL_19;
        default:
          v27 = v22;
LABEL_19:
          MEMORY[0x2383DCF70](v27);
LABEL_20:
          sub_237C0940C();
          OUTLINED_FUNCTION_1_41();
          OUTLINED_FUNCTION_22_14();
          if (v29)
          {
            OUTLINED_FUNCTION_7_20();
            do
            {
              OUTLINED_FUNCTION_21_18();
              if (v29 && (v31 & 1) != 0)
              {
                goto LABEL_41;
              }

              OUTLINED_FUNCTION_31_12();
              if (v29)
              {
                v32 = 0;
              }
            }

            while (*(v14 + 8 * v32) == -1);
            OUTLINED_FUNCTION_4_39();
          }

          else
          {
            OUTLINED_FUNCTION_3_40();
          }

          *(v14 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
          v33 = 3 * v30;
          v34 = *(v6 + 48) + 8 * v33;
          *v34 = v22;
          *(v34 + 8) = v46;
          *(v34 + 16) = v23;
          v35 = *(v6 + 56) + 8 * v33;
          *v35 = v26;
          *(v35 + 8) = v25;
          *(v35 + 16) = v45;
          OUTLINED_FUNCTION_11_27();
          v5 = v43;
          if (!v11)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  v16 = v7;
  while (1)
  {
    v7 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_20_14();
LABEL_44:
      sub_237C090DC();
      __break(1u);
      JUMPOUT(0x237ABFCC8);
    }

    if (v7 >= v13)
    {
      break;
    }

    ++v16;
    if (*(v8 + 8 * v7))
    {
      OUTLINED_FUNCTION_8_26();
      v11 = v18 & v17;
      goto LABEL_9;
    }
  }

  if (v44)
  {
    OUTLINED_FUNCTION_6_33();
    v3 = v42;
    if (v37 != v38)
    {
      OUTLINED_FUNCTION_10_28(v36);
    }

    else
    {
      v40 = OUTLINED_FUNCTION_7_26();
      sub_237B468E8(v40, v41, v8);
    }

    v5[2] = 0;
LABEL_38:
  }

  else
  {

    v3 = v42;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_237ABFCE4()
{
  OUTLINED_FUNCTION_26_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C828, &qword_237C10EF8);
  v31 = v1;
  v3 = sub_237C0911C();
  if (!v2[2])
  {
    goto LABEL_36;
  }

  v30 = v2;
  v4 = 0;
  v5 = v2;
  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_38_7();
  if (v1)
  {
    while (2)
    {
      OUTLINED_FUNCTION_36_9();
LABEL_9:
      v11 = v6 | (v4 << 6);
      v12 = v2[7];
      v13 = v2[6] + v11 * v7;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v32 = *(v12 + 8 * v11);
      if ((v31 & 1) == 0)
      {
        sub_2379E9288(v14, v15, v16);
      }

      sub_237C093CC();
      switch(v16)
      {
        case 1:
          if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v18 = v14;
          }

          else
          {
            v18 = 0;
          }

          MEMORY[0x2383DCF90](v18);
          goto LABEL_20;
        case 2:
          sub_237C0878C();
          goto LABEL_20;
        case 3:
          goto LABEL_39;
        case 4:
        case 5:
          OUTLINED_FUNCTION_33_10();
          OUTLINED_FUNCTION_20_14();
          goto LABEL_41;
        case 6:
          v17 = 1;
          goto LABEL_19;
        default:
          v17 = v14;
LABEL_19:
          MEMORY[0x2383DCF70](v17);
LABEL_20:
          sub_237C0940C();
          OUTLINED_FUNCTION_1_41();
          OUTLINED_FUNCTION_22_14();
          if (v19)
          {
            OUTLINED_FUNCTION_7_20();
            do
            {
              OUTLINED_FUNCTION_21_18();
              if (v19 && (v20 & 1) != 0)
              {
                goto LABEL_38;
              }

              OUTLINED_FUNCTION_31_12();
              OUTLINED_FUNCTION_30_13();
            }

            while (v19);
            OUTLINED_FUNCTION_4_39();
          }

          else
          {
            OUTLINED_FUNCTION_3_40();
          }

          OUTLINED_FUNCTION_31_7();
          OUTLINED_FUNCTION_19_18();
          v23 = v22 + 24 * v21;
          *v23 = v14;
          *(v23 + 8) = v15;
          *(v23 + 16) = v16;
          *(*(v3 + 56) + 8 * v21) = v32;
          OUTLINED_FUNCTION_11_27();
          v2 = v30;
          if (!v1)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  v8 = v4;
  while (1)
  {
    v4 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      OUTLINED_FUNCTION_24_16();
      OUTLINED_FUNCTION_20_14();
LABEL_41:
      sub_237C090DC();
      __break(1u);
      JUMPOUT(0x237ABFF9CLL);
    }

    if (v4 >= v0)
    {
      break;
    }

    ++v8;
    if (*(v5 + 8 * v4))
    {
      OUTLINED_FUNCTION_8_26();
      v1 = v10 & v9;
      goto LABEL_9;
    }
  }

  if (v31)
  {
    OUTLINED_FUNCTION_6_33();
    if (v25 != v26)
    {
      OUTLINED_FUNCTION_10_28(v24);
    }

    else
    {
      v27 = OUTLINED_FUNCTION_7_26();
      sub_237B468E8(v27, v28, v5);
    }

    v2[2] = 0;
  }

LABEL_36:

  *v0 = v3;
  return result;
}

void sub_237ABFFB8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C848, &qword_237C10F18);
  v3 = OUTLINED_FUNCTION_42_6(v2);
  if (!v2[2])
  {
LABEL_29:

LABEL_30:
    *v1 = v3;
    return;
  }

  v36 = v0;
  v37 = v2;
  v4 = 0;
  v5 = v2;
  OUTLINED_FUNCTION_0_41();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v11 = v3 + 64;
  if ((v7 & v6) == 0)
  {
LABEL_4:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v10)
      {
        break;
      }

      ++v13;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_8_26();
        v8 = v15 & v14;
        goto LABEL_9;
      }
    }

    if ((v38 & 1) == 0)
    {

      v1 = v36;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_6_33();
    v1 = v36;
    if (v32 != v33)
    {
      OUTLINED_FUNCTION_10_28(v31);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_7_26();
      sub_237B468E8(v34, v35, v5);
    }

    v2[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_9:
    v16 = v12 | (v4 << 6);
    v17 = (v2[6] + 16 * v16);
    v18 = v17[1];
    v39 = *v17;
    v19 = v2[7] + 16 * v16;
    v20 = *v19;
    v21 = *(v19 + 8);
    if ((v38 & 1) == 0)
    {

      sub_2379DBCF4(v20, v21);
    }

    sub_237C093CC();
    sub_237C0878C();
    sub_237C0940C();
    OUTLINED_FUNCTION_1_41();
    OUTLINED_FUNCTION_22_14();
    if (v22)
    {
      break;
    }

    OUTLINED_FUNCTION_3_40();
LABEL_21:
    OUTLINED_FUNCTION_31_7();
    *(v11 + v26) |= v27;
    v29 = (*(v3 + 48) + 16 * v28);
    *v29 = v39;
    v29[1] = v18;
    v30 = *(v3 + 56) + 16 * v28;
    *v30 = v20;
    *(v30 + 8) = v21;
    OUTLINED_FUNCTION_11_27();
    v2 = v37;
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_20();
  while (1)
  {
    OUTLINED_FUNCTION_21_18();
    if (v22)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    if (*(v11 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_4_39();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_237AC01E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C840, &qword_237C10F10);
  OUTLINED_FUNCTION_17_17();
  sub_237C0911C();
  OUTLINED_FUNCTION_34_8();
  if (!v7)
  {
LABEL_30:

    *v2 = a2;
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_40_8();
  if (!v4)
  {
LABEL_4:
    v9 = v8;
    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v2)
      {
        break;
      }

      ++v9;
      if (*(v3 + 8 * v8))
      {
        OUTLINED_FUNCTION_8_26();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_6_33();
      if (v23 != v24)
      {
        OUTLINED_FUNCTION_10_28(v22);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_7_26();
        sub_237B468E8(v25, v26, v3);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_39_6();
LABEL_9:
    OUTLINED_FUNCTION_37_7();
    v14 = (v13 + 32 * v12);
    if (a2)
    {
      sub_2379DAD24(v14, v27);
    }

    else
    {
      sub_2379FED88(v14, v27);
    }

    sub_237C093CC();
    sub_237C0878C();
    sub_237C0940C();
    OUTLINED_FUNCTION_1_41();
    OUTLINED_FUNCTION_22_14();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_3_40();
LABEL_22:
    OUTLINED_FUNCTION_31_7();
    OUTLINED_FUNCTION_25_14(v19);
    sub_2379DAD24(v27, (v21 + 32 * v20));
    OUTLINED_FUNCTION_11_27();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_20();
  while (1)
  {
    OUTLINED_FUNCTION_21_18();
    if (v15)
    {
      if (v17)
      {
        break;
      }
    }

    if (v16 == v18)
    {
      v16 = 0;
    }

    if (*(v5 + 8 * v16) != -1)
    {
      OUTLINED_FUNCTION_4_39();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_237AC03B4()
{
  OUTLINED_FUNCTION_26_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C820, &qword_237C10EF0);
  v3 = OUTLINED_FUNCTION_42_6(v2);
  if (!v2[2])
  {
LABEL_27:

    *v0 = v3;
    return;
  }

  v27 = v2;
  v4 = 0;
  v5 = v2;
  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_38_7();
  if (!v1)
  {
LABEL_4:
    v7 = v4;
    while (1)
    {
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v7;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_8_26();
        v1 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v28)
    {
      OUTLINED_FUNCTION_6_33();
      if (v23 != v24)
      {
        OUTLINED_FUNCTION_10_28(v22);
      }

      else
      {
        v25 = OUTLINED_FUNCTION_7_26();
        sub_237B468E8(v25, v26, v5);
      }

      v2[2] = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_36_9();
LABEL_9:
    v10 = v6 | (v4 << 6);
    v11 = (v2[6] + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (v2[7] + 16 * v10);
    v15 = v14[1];
    v29 = *v14;
    if ((v28 & 1) == 0)
    {
    }

    sub_237C093CC();
    sub_237C0878C();
    sub_237C0940C();
    OUTLINED_FUNCTION_1_41();
    OUTLINED_FUNCTION_22_14();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_3_40();
LABEL_19:
    OUTLINED_FUNCTION_31_7();
    OUTLINED_FUNCTION_19_18();
    v20 = (v19 + 16 * v18);
    *v20 = v12;
    v20[1] = v13;
    v21 = (*(v3 + 56) + 16 * v18);
    *v21 = v29;
    v21[1] = v15;
    OUTLINED_FUNCTION_11_27();
    v2 = v27;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_20();
  while (1)
  {
    OUTLINED_FUNCTION_21_18();
    if (v16)
    {
      if (v17)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_30_13();
    if (!v16)
    {
      OUTLINED_FUNCTION_4_39();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_237AC058C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C838, &qword_237C10F08);
  OUTLINED_FUNCTION_17_17();
  sub_237C0911C();
  OUTLINED_FUNCTION_34_8();
  if (!v7)
  {
LABEL_29:

    *v2 = a2;
    return;
  }

  v28 = v3;
  v8 = 0;
  v9 = v3;
  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_40_8();
  if (!v4)
  {
LABEL_4:
    v10 = v8;
    while (1)
    {
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v2)
      {
        break;
      }

      ++v10;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_8_26();
        v4 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_6_33();
      if (v24 != v25)
      {
        OUTLINED_FUNCTION_10_28(v23);
      }

      else
      {
        v26 = OUTLINED_FUNCTION_7_26();
        sub_237B468E8(v26, v27, v9);
      }

      *(v3 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_39_6();
LABEL_9:
    OUTLINED_FUNCTION_37_7();
    v15 = *(v14 + 8 * v13);
    if ((a2 & 1) == 0)
    {
    }

    sub_237C093CC();
    sub_237C0878C();
    sub_237C0940C();
    OUTLINED_FUNCTION_1_41();
    OUTLINED_FUNCTION_22_14();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_3_40();
LABEL_21:
    OUTLINED_FUNCTION_31_7();
    OUTLINED_FUNCTION_25_14(v20);
    *(v22 + 8 * v21) = v15;
    OUTLINED_FUNCTION_11_27();
    v3 = v28;
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_20();
  while (1)
  {
    OUTLINED_FUNCTION_21_18();
    if (v16)
    {
      if (v18)
      {
        break;
      }
    }

    if (v17 == v19)
    {
      v17 = 0;
    }

    if (*(v5 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_4_39();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_237AC0748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C800, &qword_237C10ED8);
  v34 = v4;
  result = sub_237C0911C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_237B468E8(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_237C093CC();
    sub_237C0878C();
    result = sub_237C0940C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_237AC09EC(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = a2;
  OUTLINED_FUNCTION_15_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEF0, &qword_237C0F050);
  OUTLINED_FUNCTION_17_17();
  sub_237C0911C();
  OUTLINED_FUNCTION_34_8();
  if (v7)
  {
    v8 = 0;
    OUTLINED_FUNCTION_0_41();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
    v14 = v4 + 64;
    if (v11)
    {
LABEL_3:
      OUTLINED_FUNCTION_35_9();
      goto LABEL_9;
    }

LABEL_4:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_40:
        __break(1u);
        JUMPOUT(0x237AC0CC8);
      }

      if (v8 >= v13)
      {
        break;
      }

      ++v16;
      if (v3[v8])
      {
        OUTLINED_FUNCTION_8_26();
        v11 = v18 & v17;
LABEL_9:
        v19 = v15 | (v8 << 6);
        v20 = *(v3[6] + v19);
        v21 = (v3[7] + 40 * v19);
        if (v6)
        {
          sub_237A1FCF0(v21, v34);
        }

        else
        {
          sub_2379E8624(v21, v34);
        }

        sub_237C093CC();
        OUTLINED_FUNCTION_27_8();
        switch(v20)
        {
          case 1:
            OUTLINED_FUNCTION_13_16();
            break;
          case 2:
            OUTLINED_FUNCTION_16_12();
            break;
          case 3:
            OUTLINED_FUNCTION_25_10();
            break;
          case 4:
            OUTLINED_FUNCTION_11_20();
            break;
          case 5:
          case 7:
          case 9:
          case 10:
            OUTLINED_FUNCTION_10_17();
            break;
          case 8:
            OUTLINED_FUNCTION_14_15();
            break;
          default:
            break;
        }

        sub_237C0878C();

        sub_237C0940C();
        OUTLINED_FUNCTION_1_41();
        OUTLINED_FUNCTION_22_14();
        if (v22)
        {
          OUTLINED_FUNCTION_7_20();
          do
          {
            OUTLINED_FUNCTION_21_18();
            if (v22 && (v23 & 1) != 0)
            {
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_31_12();
            if (v22)
            {
              v24 = 0;
            }
          }

          while (*(v14 + 8 * v24) == -1);
          OUTLINED_FUNCTION_4_39();
        }

        else
        {
          OUTLINED_FUNCTION_3_40();
        }

        OUTLINED_FUNCTION_31_7();
        *(v14 + v25) |= v26;
        *(*(v4 + 48) + v27) = v20;
        sub_237A1FCF0(v34, *(v4 + 56) + 40 * v27);
        OUTLINED_FUNCTION_11_27();
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      OUTLINED_FUNCTION_6_33();
      if (v29 != v30)
      {
        OUTLINED_FUNCTION_10_28(v28);
      }

      else
      {
        v32 = OUTLINED_FUNCTION_7_26();
        sub_237B468E8(v32, v33, v3);
      }

      v3[2] = 0;
    }

    v5 = v2;
  }

  else
  {
  }

  *v5 = v4;
  return result;
}

uint64_t sub_237AC0CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v44 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v43 = v9 - v8;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFE8, &qword_237C0F238);
  OUTLINED_FUNCTION_17_17();
  v41 = v4;
  v11 = sub_237C0911C();
  if (!*(v10 + 16))
  {
LABEL_40:

    goto LABEL_41;
  }

  v12 = 0;
  v13 = (v10 + 64);
  v14 = 1 << *(v10 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v10 + 64);
  v17 = (v14 + 63) >> 6;
  v39 = (v6 + 16);
  v40 = v6;
  v42 = (v6 + 32);
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_80();
  v18 = v11 + 8;
  if (v16)
  {
LABEL_6:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    goto LABEL_12;
  }

LABEL_7:
  v20 = v12;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      JUMPOUT(0x237AC10D8);
    }

    if (v12 >= v17)
    {
      break;
    }

    ++v20;
    if (v13[v12])
    {
      OUTLINED_FUNCTION_8_26();
      v16 = v22 & v21;
LABEL_12:
      v23 = v19 | (v12 << 6);
      v24 = *(*(v10 + 48) + v23);
      v25 = *(v40 + 72);
      v26 = *(v10 + 56) + v25 * v23;
      if (v41)
      {
        (*v42)(v43, v26, v44);
      }

      else
      {
        (*v39)(v43, v26, v44);
      }

      sub_237C093CC();
      OUTLINED_FUNCTION_27_8();
      switch(v24)
      {
        case 1:
          OUTLINED_FUNCTION_13_16();
          break;
        case 2:
          OUTLINED_FUNCTION_16_12();
          break;
        case 3:
          OUTLINED_FUNCTION_25_10();
          break;
        case 4:
          OUTLINED_FUNCTION_11_20();
          break;
        case 5:
        case 7:
        case 9:
        case 10:
          OUTLINED_FUNCTION_10_17();
          break;
        case 8:
          OUTLINED_FUNCTION_14_15();
          break;
        default:
          break;
      }

      sub_237C0878C();

      sub_237C0940C();
      OUTLINED_FUNCTION_22_14();
      if (v27)
      {
        OUTLINED_FUNCTION_7_20();
        do
        {
          OUTLINED_FUNCTION_21_18();
          if (v27 && (v28 & 1) != 0)
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_31_12();
          if (v27)
          {
            v29 = 0;
          }
        }

        while (v18[v29] == -1);
        OUTLINED_FUNCTION_4_39();
      }

      else
      {
        OUTLINED_FUNCTION_3_40();
      }

      OUTLINED_FUNCTION_31_7();
      *(v18 + v30) |= v31;
      *(v11[6] + v32) = v24;
      (*v42)(v11[7] + v25 * v32, v43, v44);
      ++v11[2];
      if (v16)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }
  }

  if (v41)
  {
    OUTLINED_FUNCTION_6_33();
    v3 = v2;
    if (v34 != v35)
    {
      *v13 = -1 << v33;
    }

    else
    {
      v37 = OUTLINED_FUNCTION_7_26();
      sub_237B468E8(v37, v38, v10 + 64);
    }

    *(v10 + 16) = 0;
    goto LABEL_40;
  }

  v3 = v2;
LABEL_41:
  *v3 = v11;
  return result;
}

uint64_t sub_237AC1104(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = a2;
  OUTLINED_FUNCTION_15_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C830, &qword_237C10F00);
  OUTLINED_FUNCTION_17_17();
  sub_237C0911C();
  OUTLINED_FUNCTION_34_8();
  if (!v7)
  {
LABEL_35:

    goto LABEL_36;
  }

  v8 = 0;
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 64);
  v12 = (v9 + 63) >> 6;
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_80();
  if (v11)
  {
LABEL_6:
    OUTLINED_FUNCTION_35_9();
    goto LABEL_12;
  }

LABEL_7:
  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      JUMPOUT(0x237AC13D8);
    }

    if (v8 >= v12)
    {
      break;
    }

    ++v14;
    if (*(v3 + 64 + 8 * v8))
    {
      OUTLINED_FUNCTION_8_26();
      v11 = v16 & v15;
LABEL_12:
      v17 = v13 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = *(*(v3 + 56) + 8 * v17);
      sub_237C093CC();
      OUTLINED_FUNCTION_27_8();
      switch(v18)
      {
        case 1:
          OUTLINED_FUNCTION_13_16();
          break;
        case 2:
          OUTLINED_FUNCTION_16_12();
          break;
        case 3:
          OUTLINED_FUNCTION_25_10();
          break;
        case 4:
          OUTLINED_FUNCTION_11_20();
          break;
        case 5:
        case 7:
        case 9:
        case 10:
          OUTLINED_FUNCTION_10_17();
          break;
        case 8:
          OUTLINED_FUNCTION_14_15();
          break;
        default:
          break;
      }

      sub_237C0878C();

      v20 = sub_237C0940C() & ~(-1 << *(v4 + 32));
      if (((-1 << v20) & ~*(v4 + 64 + 8 * (v20 >> 6))) != 0)
      {
        OUTLINED_FUNCTION_3_40();
      }

      else
      {
        OUTLINED_FUNCTION_7_20();
        do
        {
          OUTLINED_FUNCTION_21_18();
          if (v22 && (v21 & 1) != 0)
          {
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_31_12();
          OUTLINED_FUNCTION_30_13();
        }

        while (v22);
        OUTLINED_FUNCTION_4_39();
      }

      OUTLINED_FUNCTION_31_7();
      OUTLINED_FUNCTION_19_18();
      *(v24 + v23) = v18;
      *(*(v4 + 56) + 8 * v23) = v19;
      OUTLINED_FUNCTION_11_27();
      if (v11)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }
  }

  if (v6)
  {
    OUTLINED_FUNCTION_6_33();
    v5 = v2;
    if (v26 != v27)
    {
      OUTLINED_FUNCTION_10_28(v25);
    }

    else
    {
      v29 = OUTLINED_FUNCTION_7_26();
      sub_237B468E8(v29, v30, v3 + 64);
    }

    *(v3 + 16) = 0;
    goto LABEL_35;
  }

  v5 = v2;
LABEL_36:
  *v5 = v4;
  return result;
}

uint64_t sub_237AC1404(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_237AC1450(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_237AC14C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_237AC151C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237AC1450(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_237AC1560(uint64_t a1, uint64_t a2)
{
  v4 = _s13GraphCNNModelVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AC15C4(uint64_t a1)
{
  v2 = _s13GraphCNNModelVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237AC167C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_25_14(uint64_t a1@<X8>)
{
  *(v6 + v1) |= v2;
  v7 = (*(v3 + 48) + 16 * a1);
  *v7 = v4;
  v7[1] = v5;
}

uint64_t OUTLINED_FUNCTION_42_6(uint64_t a1)
{

  return sub_237C0911C();
}

BOOL sub_237AC19D4()
{
  v0 = sub_237A2E9F4();
  v1 = sub_237A017E8(0, v0);
  return OUTLINED_FUNCTION_15_20(v1);
}

BOOL sub_237AC1A4C(__n128 a1)
{
  sub_237C05CFC();
  sub_237A76634(v1);
  sub_237C08B2C();
  sub_237C08B5C();
  return v4 == v3;
}

uint64_t sub_237AC1AB8(uint64_t (*a1)(unint64_t *), uint64_t a2, uint64_t a3)
{

  for (i = 0; ; ++i)
  {
    v6 = sub_237A2E9F4();
    v7 = sub_237A017E8(0, v6);
    if (i == v7)
    {
LABEL_7:

      return i != v7;
    }

    sub_237A2E9C8(i);
    if (v3)
    {
      goto LABEL_9;
    }

    v8 = sub_237A2DE60();
    v10 = v9;

    v11 = sub_237A2E9F4();
    if (i >= sub_237A017E8(0, v11))
    {
      break;
    }

    v15 = v8;
    v16 = v10;
    v12 = a1(&v15);

    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_9:
  swift_unexpectedError();
  __break(1u);

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_237C08EDC();

  v15 = 0xD000000000000022;
  v16 = 0x8000000237C17E70;
  v17 = i;
  v14 = sub_237C0924C();
  MEMORY[0x2383DC360](v14);

  MEMORY[0x2383DC360](46, 0xE100000000000000);
  result = sub_237C090DC();
  __break(1u);
  return result;
}

BOOL sub_237AC1CCC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_237AC1D7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v5 = sub_237B024B4(v4);
  if (v7)
  {
    goto LABEL_36;
  }

  v8 = v6;
  if (*(a1 + 36) != v6)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v9 = v5;
  if (v5 == 1 << *(a1 + 32))
  {

    sub_2379E8FD0(v9, v8, 0);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 255;
    *(a2 + 40) = 0;
    return;
  }

  v47 = a2;
  sub_237AFFB80(v62, v64, v5, v6, 0, a1);
  v11 = v62[0];
  v10 = v62[1];
  v12 = v63;
  v13 = v64[0];
  v66 = v64[1];
  LOBYTE(a2) = v65;
  v14 = sub_237B01EB4(v9, v8, 0, a1);
  v15 = v8;
  v17 = v16;
  v60 = v18;
  sub_2379E8FD0(v9, v15, 0);
  if ((v60 & 1) == 0)
  {
    v58 = v17;
    v59 = a1 + 64;
    v57 = v17;
    v54 = a1;
    v55 = a1 + 72;
    v19 = v17;
LABEL_7:
    v51 = v13;
    v52 = v66;
    v49 = v12;
    v50 = v10;
    v48 = v11;
    v53 = a2;
    if (a2 == 1)
    {
      v20 = *&v13;
    }

    else
    {
      v20 = 0.0;
    }

    v21 = v19;
    while (*(a1 + 36) == v17)
    {
      v22 = 1 << *(a1 + 32);
      if (v14 == v22)
      {

        sub_2379E8FD0(v14, v21, 0);
        *v47 = v48;
        *(v47 + 8) = v50;
        *(v47 + 16) = v49;
        *(v47 + 24) = v51;
        *(v47 + 32) = v52;
        *(v47 + 40) = v53;
        return;
      }

      if ((v14 & 0x8000000000000000) != 0 || v14 >= v22)
      {
        goto LABEL_33;
      }

      if (v17 != v21)
      {
        goto LABEL_34;
      }

      v23 = v14 >> 6;
      v24 = *(v59 + 8 * (v14 >> 6));
      if ((v24 & (1 << v14)) == 0)
      {
        goto LABEL_34;
      }

      v25 = *(a1 + 48) + 24 * v14;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(a1 + 56) + 24 * v14;
      v31 = *v29;
      v30 = *(v29 + 8);
      LODWORD(a2) = *(v29 + 16);
      v32 = v24 & (-2 << (v14 & 0x3F));
      v66 = v30;
      *v61 = v26;
      if (v32)
      {
        v33 = v27;
        v34 = v28;
        v35 = v30;
        sub_2379E9288(v26, v27, v28);
        sub_2379E9288(v31, v35, a2);
        sub_2379E8FD0(v14, v21, 0);
        v14 = __clz(__rbit64(v32)) | v14 & 0x7FFFFFFFFFFFFFC0;
        v36 = v31;
      }

      else
      {
        v56 = v31;
        v37 = v23 << 6;
        v38 = v23 + 1;
        v39 = (v55 + 8 * v23);
        while (v38 < (v22 + 63) >> 6)
        {
          v41 = *v39++;
          v40 = v41;
          v37 += 64;
          ++v38;
          if (v41)
          {
            v33 = v27;
            v34 = v28;
            v42 = v30;
            sub_2379E9288(v26, v27, v28);
            v36 = v56;
            sub_2379E9288(v56, v42, a2);
            sub_2379E8FD0(v14, v21, 0);
            v14 = __clz(__rbit64(v40)) + v37;
            goto LABEL_24;
          }
        }

        v33 = v27;
        v34 = v28;
        v43 = v30;
        sub_2379E9288(v26, v27, v28);
        sub_2379E9288(v31, v43, a2);
        sub_2379E8FD0(v14, v21, 0);
        v14 = v22;
        v36 = v31;
LABEL_24:
        a1 = v54;
      }

      LODWORD(v17) = v58;
      if (a2 == 1)
      {
        v44 = *v61;
        v45 = v33;
        v46 = v34;
        if (v20 < *&v36)
        {
          goto LABEL_30;
        }

        LOBYTE(a2) = 1;
      }

      else
      {
        v44 = *v61;
        v45 = v33;
        v46 = v34;
        if (v20 < 0.0)
        {
LABEL_30:
          v13 = v36;
          v12 = v46;
          v10 = v45;
          v11 = v44;
          sub_2379E8CE8(v48, v50, v49);
          sub_2379E8CE8(v51, v52, v53);
          v19 = v57;
          goto LABEL_7;
        }
      }

      sub_2379E8CE8(v44, v45, v46);
      sub_2379E8CE8(v36, v66, a2);
      v21 = v57;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_37:
  __break(1u);
}

void sub_237AC2170(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X6>, char a6@<W7>, uint64_t a7@<X8>)
{
  OUTLINED_FUNCTION_18_8();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  if (a4)
  {

    v16 = OUTLINED_FUNCTION_21_19();
    sub_2379DBCF4(v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (!sub_237C0925C())
    {
      OUTLINED_FUNCTION_50();
      v7 = swift_allocError();
      *v23 = a3;

      goto LABEL_6;
    }

    OUTLINED_FUNCTION_38_6();

    v18 = OUTLINED_FUNCTION_21_19();
  }

  else
  {

    v20 = OUTLINED_FUNCTION_4_26();
    sub_2379DBCF4(v20, v21);
    v22 = sub_237A2F37C(a5, v15, a6, 0);
    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v7 = swift_allocObject();
    *(v7 + 16) = v22;

    v18 = OUTLINED_FUNCTION_4_26();
  }

  sub_2379DBC9C(v18, v19);
LABEL_6:
  *a7 = v7;
  *(a7 + 8) = a4 & 1;
}

uint64_t sub_237AC22DC(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  if (sub_237A2E988())
  {
    goto LABEL_7;
  }

  v4 = sub_237C08D2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - v6);
  v8 = *(a1 + 16);

  v9 = sub_237B0DDC8(v8);
  if (!v9)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  type metadata accessor for CMLDictionary();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v19[0] = v10;
  v19[1] = sub_237B004D4;
  v19[2] = 0;
  v19[3] = sub_237B02424;
  v19[4] = 0;
  v19[5] = sub_237AB65A0;
  v19[6] = 0;
  *&v15 = MEMORY[0x277D84F98];
  swift_retain_n();
  sub_237B019D8(v19, 1, &v15);

  *v7 = v15;
  if (__swift_getEnumTagSinglePayload(v7, 1, &type metadata for MLDataValue.DictionaryType) == 1)
  {
    (*(v5 + 8))(v7, v4);
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  else
  {
    *(&v16 + 1) = &type metadata for MLDataValue.DictionaryType;
    v17 = &off_284AC46D8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
    (*(off_284AC4530 + 4))(boxed_opaque_existential_0, v7, &type metadata for MLDataValue.DictionaryType);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C850, qword_237C10F20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v18 = 0;
  }

  a2(&v15, &v18);
  if (*(&v15 + 1))
  {
    v12 = sub_237B297D0(v15, *(&v15 + 1));
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v12 = sub_237A2E78C();
  }

  return v12;
}

uint64_t sub_237AC2718(uint64_t result, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v3 = result;
  if (result)
  {

    a2(&v4, &v3);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237AC2770(uint64_t result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v4[0] = result;
  v4[1] = a2;
  if (a2)
  {

    a3(&v5, v4);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(id *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v247 = a5;
  v243 = a6;
  v244 = a2;
  v245 = a3;
  v242 = a7;
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v237 = v11;
  v238 = v10;
  MEMORY[0x28223BE20](v10);
  v239 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v236 = &v220 - v14;
  sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v240 = v16;
  v241 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v220 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MLClassifierMetrics(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = (&v220 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *a1;
  v23 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  v246 = xmmword_237C0B660;
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = a4;
  *(inited + 40) = v247;
  OUTLINED_FUNCTION_20_15();

  v25 = v248;
  sub_2379F2B84();
  v248 = v25;
  if (v25 || (v235 = a4, v232 = v21, v233 = v18, swift_setDeallocating(), sub_237B9082C(), OUTLINED_FUNCTION_20_15(), v26 = swift_initStackObject(), OUTLINED_FUNCTION_9_28(v26), v28 = v244, v27 = v245, *(v29 + 32) = v244, *(v29 + 40) = v27, , v30 = v248, sub_2379F2B84(), (v248 = v30) != 0))
  {
    swift_setDeallocating();
    sub_237B9082C();
    return;
  }

  swift_setDeallocating();
  sub_237B9082C();
  v31 = swift_initStackObject();
  OUTLINED_FUNCTION_9_28(v31);
  *(v32 + 32) = v28;
  *(v32 + 40) = v27;
  OUTLINED_FUNCTION_20_15();
  LOBYTE(v258) = 2;

  OUTLINED_FUNCTION_24_17();
  v248 = 0;
  swift_setDeallocating();
  sub_237B9082C();
  OUTLINED_FUNCTION_20_15();
  v33 = swift_initStackObject();
  OUTLINED_FUNCTION_9_28(v33);
  v34 = v235;
  v35 = v247;
  *(v36 + 32) = v235;
  *(v36 + 40) = v35;
  LOBYTE(v258) = 4;

  OUTLINED_FUNCTION_24_17();
  v248 = 0;
  swift_setDeallocating();
  sub_237B9082C();
  if (!*(v243 + 16))
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v126 = swift_allocError();
    *v127 = 0xD000000000000019;
    v127[1] = 0x8000000237C1ABA0;
    OUTLINED_FUNCTION_23_3(v126, v127);
    *v242 = v128;
    type metadata accessor for MLClassifierMetrics.Contents(0);
    swift_storeEnumTagMultiPayload();
    return;
  }

  v221 = *(v243 + 16);
  v258 = v22;
  v259 = v23;
  v256 = v22;
  v257 = v23;
  sub_2379DBCF4(v22, v23);
  MLDataTable.subscript.getter();
  v252 = v254;
  v253 = v255;
  MLUntypedColumn.dropDuplicates()(&v249, v37);
  sub_2379DBC9C(v252, v253);
  if (v250)
  {
    goto LABEL_80;
  }

  v38 = v249;

  v39 = sub_237A2F128();
  v229 = v38;
  v40 = OUTLINED_FUNCTION_4_26();
  sub_2379DBC9C(v40, v41);
  v231 = v39;
  if (v39 < 0)
  {
    goto LABEL_80;
  }

  if (v231)
  {
    for (i = 0; i != v231; ++i)
    {
      v43 = OUTLINED_FUNCTION_85();
      sub_2379DBCF4(v43, v44);
      sub_237A607E0(i, &v249);
      v45 = OUTLINED_FUNCTION_85();
      sub_2379DBC9C(v45, v46);
      v34 = v249;
      v48 = v250;
      v49 = v251;
      if (v251 != 2)
      {
        goto LABEL_75;
      }

      MEMORY[0x28223BE20](v47);
      *(&v220 - 2) = &v249;
      v50 = v248;
      v51 = sub_237AC1CCC(sub_237A06CFC, (&v220 - 4), v243);
      v248 = v50;
      if (v51)
      {
        sub_2379E8CE8(v34, v48, 2);
      }

      else
      {
        v52 = swift_initStackObject();
        v234 = v22;
        v230 = &v220;
        *(v52 + 16) = v246;
        *(v52 + 32) = v34;
        *(v52 + 40) = v48;
        v256 = v22;
        v53 = v23 & 1;
        v257 = v53;
        v249 = v52;
        MEMORY[0x28223BE20](v52);
        *(&v220 - 2) = &v249;
        v54 = sub_237BBDC94(sub_2379F5678);
        v56 = v55;
        swift_setDeallocating();
        sub_237B9082C();
        v254 = v54;
        v255 = v56 & 1;
        sub_237B6DDE8(1, &v254, v244, v245);
        sub_2379DBC9C(v254, v255);
        sub_2379DBC9C(v234, v53);
        v22 = v249;
        v23 = v250;
      }
    }

    v258 = v22;
    v259 = v23 & 1;
    v35 = v247;
    v34 = v235;
  }

  v249 = v22;
  LOBYTE(v250) = v23 & 1;
  if (!MLDataTable.size.getter())
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v134 = swift_allocError();
    *v135 = 0xD000000000000053;
    v135[1] = 0x8000000237C1AB40;
    OUTLINED_FUNCTION_23_3(v134, v135);
    v136 = OUTLINED_FUNCTION_3_41();
LABEL_66:
    sub_2379DBC9C(v136, v137);
    *v242 = v134;
    type metadata accessor for MLClassifierMetrics.Contents(0);
    goto LABEL_67;
  }

  LOBYTE(v256) = v23 & 1;
  v234 = v22;
  sub_2379DBCF4(v22, v23 & 1);
  v57 = 0;
  v48 = MEMORY[0x277D84950];
  HIDWORD(v227) = v23;
  while (1)
  {
    while (1)
    {
LABEL_18:
      if (v23)
      {
        v58 = v234;
        v249 = v234;
        sub_2379DBCF4(v234, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
        if (sub_237C0925C())
        {
          v59 = OUTLINED_FUNCTION_38_6();
          sub_2379DBC9C(v59, 1);
        }

        else
        {
          OUTLINED_FUNCTION_50();
          v48 = swift_allocError();
          *v71 = v58;
        }

        sub_2379F8918(v48, v228, 1);
        if (!v57)
        {
          goto LABEL_59;
        }

        v72 = MEMORY[0x2383DDAC0](0);
        if (!v72)
        {
          goto LABEL_76;
        }

        v73 = v72;
        v74 = type metadata accessor for CMLSequence();
        v75 = swift_allocObject();
        *(v75 + 16) = v73;
        v230 = v75;
        v23 = 1;
        *(v75 + 24) = 1;
        v76 = MEMORY[0x2383DDAC0](0);
        if (!v76)
        {
          goto LABEL_77;
        }

        v77 = v76;
        v78 = swift_allocObject();
        *(v78 + 16) = v77;
        v231 = v78;
        *(v78 + 24) = 1;
        v249 = v58;
        v79 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
        if (sub_237C0925C())
        {
          v80 = OUTLINED_FUNCTION_38_6();
          sub_2379DBC9C(v80, 1);
        }

        else
        {
          OUTLINED_FUNCTION_50();
          v74 = swift_allocError();
          *v97 = v58;
        }

        sub_2379F8918(v74, v226, 1);
        v94 = 0;
        *&v246 = MEMORY[0x277D84F98];
        v48 = MEMORY[0x277D84950];
      }

      else
      {
        v58 = v234;
        v60 = OUTLINED_FUNCTION_52_5();
        sub_2379DBCF4(v60, v61);
        v62 = v248;
        v63 = sub_237A30330();
        if (v62)
        {
          goto LABEL_81;
        }

        v64 = v63;
        v228 = sub_237A3035C();
        v248 = 0;
        v65 = OUTLINED_FUNCTION_52_5();
        sub_2379DBC9C(v65, v66);
        if (v57 == v64)
        {
LABEL_59:
          sub_2379DBC9C(v58, v256);
          type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
          swift_allocObject();
          v129 = v221;
          v130 = v248;
          v131 = sub_237A3367C(v221);
          v248 = v130;
          if (v130)
          {
            v132 = OUTLINED_FUNCTION_3_41();
          }

          else
          {
            v138 = v131;
            v139 = sub_237A5A36C(v243);
            MLDataTable.subscript.getter();
            v247 = v138;
            v140 = OUTLINED_FUNCTION_5_34();
            sub_237AC3F34(v140, v141, v142, v143, v144, v145, 2, v146);
            v147 = OUTLINED_FUNCTION_84();
            sub_2379DBC9C(v147, v148);
            v149 = v256;
            v150 = v257;
            OUTLINED_FUNCTION_103();
            v151 = swift_allocObject();
            v235 = v139;
            *(v151 + 16) = v139;
            OUTLINED_FUNCTION_18_8();
            v152 = swift_allocObject();
            *(v152 + 16) = sub_237AC4394;
            *(v152 + 24) = v151;

            *&v246 = sub_237AC44DC;
            OUTLINED_FUNCTION_19_19();
            sub_237AC2170(v153, v154, v155, v150, v156, 0, v157);

            sub_2379DBC9C(v149, v150);
            v158 = v249;
            LODWORD(v139) = v250;
            MLDataTable.subscript.getter();
            v159 = OUTLINED_FUNCTION_5_34();
            sub_237AC3F34(v159, v160, v161, v162, v163, v164, 4, v165);
            v166 = OUTLINED_FUNCTION_84();
            sub_2379DBC9C(v166, v167);
            LOBYTE(v151) = v257;
            OUTLINED_FUNCTION_18_8();
            v168 = swift_allocObject();
            *(v168 + 16) = sub_237AC3BC8;
            *(v168 + 24) = 0;
            OUTLINED_FUNCTION_19_19();
            sub_237AC2170(v169, v170, v171, v151, v172, 2, v173);

            v174 = OUTLINED_FUNCTION_84();
            sub_2379DBC9C(v174, v175);
            v176 = v249;
            v177 = v250;
            OUTLINED_FUNCTION_103();
            v178 = swift_allocObject();
            *(v178 + 16) = v235;
            OUTLINED_FUNCTION_18_8();
            v179 = swift_allocObject();
            *(v179 + 16) = sub_237AC4510;
            *(v179 + 24) = v178;

            v245 = v176;
            LODWORD(v244) = v177;
            sub_237AC2170(sub_237AC44EC, v179, v176, v177, v246, 0, &v249);

            v180 = v249;
            LODWORD(v35) = v250;
            sub_2379DBCF4(v249, v250);
            sub_2379DFD2C(v180, v35);
            sub_2379DBCF4(v158, v139);
            v109 = v158;
            LODWORD(v246) = v139;
            sub_2379DFD2C(v158, v139);
            sub_237A337D4();

            v23 = v233;
            sub_237A347A4();
            sub_237A34D48(v23, v129);
            v7 = v181;
            v182 = v243;
            v183 = v248;
            sub_237A33B40(v243, &v249);
            v248 = v183;
            if (!v183)
            {
              v231 = v180;
              LODWORD(v234) = v35;
              v108 = v245;
              LOBYTE(v35) = v244;
              v235 = v109;
              v254 = v249;
              v255 = v250;
              v201 = OUTLINED_FUNCTION_84();
              sub_2379DBCF4(v201, v202);
              sub_237A3444C();
              sub_2379DBC9C(v254, v255);
              v203 = OUTLINED_FUNCTION_84();
              sub_2379DBC9C(v203, v204);
              v48 = v256;
              LOBYTE(v109) = v257;
              v249 = v256;
              LOBYTE(v250) = v257;
              v205 = v248;
              sub_237A34FA0(v23, v182, 0, &v256);
              v248 = v205;
              if (!v205)
              {
                goto LABEL_73;
              }

              v206 = OUTLINED_FUNCTION_3_41();
              sub_2379DBC9C(v206, v207);
              sub_2379DBC9C(v108, v35);

              OUTLINED_FUNCTION_7_27();
              v208(v23);
              goto LABEL_68;
            }

            (*(v240 + 8))(v23, v241);
            v184 = OUTLINED_FUNCTION_3_41();
            sub_2379DBC9C(v184, v185);
            sub_2379DBC9C(v245, v244);

            sub_2379DBC9C(v180, v35);
            v132 = v109;
            v133 = v246;
          }

          sub_2379DBC9C(v132, v133);
          goto LABEL_68;
        }

        v67 = v248;
        v68 = sub_237B104A0(*(*(v58 + 2) + 16), v57);
        if (v67)
        {

          v69 = MEMORY[0x2383DDAC0](0);
          if (!v69)
          {
            goto LABEL_78;
          }

          v70 = v69;
        }

        else
        {
          v70 = v68;
          if (!v68)
          {
            goto LABEL_79;
          }
        }

        type metadata accessor for CMLSequence();
        v81 = swift_allocObject();
        *(v81 + 16) = v70;
        v231 = v81;
        *(v81 + 24) = 1;

        sub_237B6C208(&v249);
        v82 = OUTLINED_FUNCTION_52_5();
        sub_2379DBC9C(v82, v83);
        v230 = v249;

        *&v246 = sub_237B6C2FC(v84, v85, v86, v87, v88, v89, v90, v91, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239);
        v92 = OUTLINED_FUNCTION_52_5();
        sub_2379DBC9C(v92, v93);

        v94 = sub_237A30330();
        v226 = sub_237A3035C();
        v248 = 0;
        v95 = OUTLINED_FUNCTION_52_5();
        sub_2379DBC9C(v95, v96);
        v48 = MEMORY[0x277D84950];
      }

      if (v57 >= v94)
      {
        __break(1u);
LABEL_75:
        sub_2379E8CE8(v34, v48, v49);
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
        swift_unexpectedError();
        __break(1u);
        return;
      }

      ++v57;
      v98 = v246;
      if (!*(v246 + 16))
      {
        goto LABEL_56;
      }

      v99 = sub_237ACAC78(v34, v35);
      if (v100)
      {
        break;
      }

      v48 = MEMORY[0x277D84950];
      v23 = HIDWORD(v227);
    }

    v101 = v248;
    v102 = sub_237A2E9C8(*(*(v98 + 56) + 8 * v99));
    v248 = v101;
    if (v101)
    {
      goto LABEL_81;
    }

    sub_237AFC548(v102, &v249);
    v103 = v249;
    v48 = MEMORY[0x277D84950];
    if (v251 == 4)
    {
      break;
    }

    sub_2379E8CE8(v249, v250, v251);
LABEL_56:

    v23 = HIDWORD(v227);
  }

  v104 = v242;
  if (*(v249 + 2) != v221)
  {
    sub_2379E8CE8(v249, v250, 4);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v197 = swift_allocError();
    *v198 = 0xD000000000000072;
    v198[1] = 0x8000000237C1AA30;
    OUTLINED_FUNCTION_23_3(v197, v198);
    v199 = OUTLINED_FUNCTION_3_41();
    sub_2379DBC9C(v199, v200);

    sub_2379DBC9C(v58, v256);
    *v104 = v197;
    type metadata accessor for MLClassifierMetrics.Contents(0);
LABEL_67:
    swift_storeEnumTagMultiPayload();
LABEL_68:
    sub_2379DBC9C(v258, v259);
    return;
  }

  v222 = v57;
  v223 = v250;
  v105 = v249 + 64;
  v106 = 1 << v249[32];
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  else
  {
    v107 = -1;
  }

  v108 = v107 & *(v249 + 8);
  v109 = ((v106 + 63) >> 6);

  v111 = 0;
  v224 = v103;
  while (v108)
  {
LABEL_51:
    v113 = __clz(__rbit64(v108));
    v108 &= v108 - 1;
    v114 = *(v103 + 6) + 24 * (v113 | (v111 << 6));
    if (*(v114 + 16) == 2)
    {
      v225 = &v220;
      v35 = *(v114 + 8);
      v249 = *v114;
      v23 = v249;
      v250 = v35;
      MEMORY[0x28223BE20](v110);
      *(&v220 - 2) = &v249;
      OUTLINED_FUNCTION_11_28();
      sub_2379E9288(v115, v116, v117);

      v118 = v248;
      v119 = sub_237AC1CCC(sub_237A06D78, (&v220 - 4), v243);
      v248 = v118;
      OUTLINED_FUNCTION_11_28();
      sub_2379E8CE8(v120, v121, v122);
      if (!v119)
      {
        v249 = 0;
        v250 = 0xE000000000000000;
        sub_237C08EDC();
        MEMORY[0x2383DC360](0xD00000000000002ALL, 0x8000000237C1AAB0);

        sub_2379E8CE8(v224, v223, 4);
        MEMORY[0x2383DC360](v23, v35);
        OUTLINED_FUNCTION_11_28();
        sub_2379E8CE8(v186, v187, v188);
        MEMORY[0x2383DC360](0xD000000000000031, 0x8000000237C1AAE0);
        v190 = v249;
        v189 = v250;
        sub_2379E8AF0();
        OUTLINED_FUNCTION_50();
        v134 = swift_allocError();
        *v191 = v190;
        v191[1] = v189;
        OUTLINED_FUNCTION_23_3(v134, v191);

        v192 = OUTLINED_FUNCTION_3_41();
        sub_2379DBC9C(v192, v193);

        OUTLINED_FUNCTION_11_28();
        sub_2379E8CE8(v194, v195, v196);
        v137 = v256;
        v136 = v234;
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_11_28();
      sub_2379E8CE8(v123, v124, v125);
      v48 = MEMORY[0x277D84950];
      v103 = v224;
    }
  }

  while (1)
  {
    v112 = v111 + 1;
    if (__OFADD__(v111, 1))
    {
      break;
    }

    if (v112 >= v109)
    {

      sub_2379E8CE8(v103, v223, 4);

      v35 = v247;
      v34 = v235;
      v57 = v222;
      v23 = HIDWORD(v227);
      goto LABEL_18;
    }

    v108 = *&v105[8 * v112];
    ++v111;
    if (v108)
    {
      v111 = v112;
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_73:
  v209 = v256;
  v210 = v23;
  v211 = v257;
  v256 = v48;
  v257 = v109;
  sub_2379DBCF4(v48, v109);
  v212 = v236;
  sub_237A70ED4(&v256, v236);
  v256 = v209;
  v257 = v211;
  sub_2379DBCF4(v209, v211);
  sub_237A70ED4(&v256, v239);
  v213 = OUTLINED_FUNCTION_3_41();
  sub_2379DBC9C(v213, v214);
  sub_2379DBC9C(v108, v35);

  sub_2379DBC9C(v209, v211);
  OUTLINED_FUNCTION_7_27();
  v215(v210);
  v216 = v232;
  *v232 = 1.0 - v7;
  v217 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v218 = v238;
  v219 = *(v237 + 32);
  v219(v216 + *(v217 + 20), v212, v238);
  v219(v216 + *(v217 + 24), v239, v218);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  sub_2379DBC9C(v258, v259);
  sub_237AC4460(v216, v242);
}

uint64_t sub_237AC3B3C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) == 2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = 0;
    result = 0;
  }

  *a2 = v3;
  a2[1] = result;
  return result;
}

uint64_t sub_237AC3B88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) == 4)
  {
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void sub_237AC3BC8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_237AC1D7C(*a1, v6);
  v3 = v7;
  if (v7 == 255)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v4 = v6[0];
    v5 = v6[1];
    sub_2379E8CE8(v8, v9, v10);
    if (v3 != 2)
    {
      sub_2379E8CE8(v4, v5, v3);
      v4 = 0;
      v5 = 0;
    }

    *a2 = v4;
    a2[1] = v5;
  }
}

uint64_t sub_237AC3C50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_237ACAC78(*result, *(result + 8)), (v5 & 1) != 0))
  {
    v6 = 0;
    v7 = *(*(a2 + 56) + 24 * result);
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  *a3 = v7;
  *(a3 + 8) = v6;
  return result;
}

void static MLRegressorMetrics.__evaluation(on:targetColumn:predictionColumn:)(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_17_18();
  MLDataTable.subscript.getter();
  OUTLINED_FUNCTION_10_29(v3, v4, v5, v6, v7, v8, v9, v10, v63, v65, v67, v69);
  v11 = v72;
  v12 = v73;
  if ((v73 & 1) != 0 || (v13 = OUTLINED_FUNCTION_3_22(), sub_2379DBCF4(v13, v14), sub_237A60248(v71), v15 = OUTLINED_FUNCTION_3_22(), sub_2379DBC9C(v15, v16), v71[0] != 1))
  {
    sub_2379DBC9C(v11, v12);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    OUTLINED_FUNCTION_8_27();
    *v51 = v52;
    v51[1] = 0x8000000237C1ABC0;
    OUTLINED_FUNCTION_23_3(v53, v51);
    swift_willThrow();
    return;
  }

  OUTLINED_FUNCTION_17_18();
  MLDataTable.subscript.getter();
  OUTLINED_FUNCTION_10_29(v17, v18, v19, v20, v21, v22, v23, v24, v64, v66, v68, v70);
  v25 = v72;
  v26 = v73;
  if ((v73 & 1) != 0 || (v27 = OUTLINED_FUNCTION_85(), sub_2379DBCF4(v27, v28), sub_237A60248(v71), v29 = OUTLINED_FUNCTION_85(), sub_2379DBC9C(v29, v30), v71[0] != 1))
  {
    sub_2379DBC9C(v25, v26);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    OUTLINED_FUNCTION_8_27();
    *v55 = v54 + 4;
    v55[1] = 0x8000000237C1ABF0;
    OUTLINED_FUNCTION_23_3(v56, v55);
    swift_willThrow();
    goto LABEL_9;
  }

  v31 = OUTLINED_FUNCTION_3_22();
  sub_2379DBCF4(v31, v32);
  v33 = OUTLINED_FUNCTION_3_22();
  v35 = sub_2379DFE44(v33, v34);
  v36 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v36, v37);
  v38 = OUTLINED_FUNCTION_85();
  v40 = sub_2379DFE44(v38, v39);
  sub_237A3326C(v35, v40);
  v42 = v41;
  v43 = sub_237A3347C(v35, v40);
  v45 = v44;

  if (v45)
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    swift_allocError();
    OUTLINED_FUNCTION_8_27();
    *v47 = v46 + 23;
    v47[1] = 0x8000000237C1AC30;
    OUTLINED_FUNCTION_23_3(v48, v47);
    swift_willThrow();
    v49 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v49, v50);
LABEL_9:
    v57 = OUTLINED_FUNCTION_3_22();
    sub_2379DBC9C(v57, v58);
    return;
  }

  v59 = OUTLINED_FUNCTION_3_22();
  sub_2379DBC9C(v59, v60);
  v61 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v61, v62);
  *a2 = v43;
  *(a2 + 8) = v42;
  *(a2 + 16) = 0;
}

void sub_237AC3F34(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_18_8();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  if (a5)
  {

    v18 = OUTLINED_FUNCTION_21_19();
    sub_2379DBCF4(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    if (!sub_237C0925C())
    {
      OUTLINED_FUNCTION_50();
      v8 = swift_allocError();
      *v25 = a4;

      goto LABEL_6;
    }

    OUTLINED_FUNCTION_38_6();

    v20 = OUTLINED_FUNCTION_21_19();
  }

  else
  {

    v22 = OUTLINED_FUNCTION_4_26();
    sub_2379DBCF4(v22, v23);
    v24 = sub_237A2F37C(a6, v17, a7, a1 & 1);
    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v8 = swift_allocObject();
    *(v8 + 16) = v24;

    v20 = OUTLINED_FUNCTION_4_26();
  }

  sub_2379DBC9C(v20, v21);
LABEL_6:
  *a8 = v8;
  *(a8 + 8) = a5 & 1;
}

uint64_t sub_237AC40A4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{

  sub_237AFC548(v3, v9);
  v4 = v9[0];
  v5 = v9[1];
  v6 = v10;
  a2(&v13, v9);
  if (v13)
  {
    v11 = &type metadata for MLDataValue.MultiArrayType;
    v12 = &off_284AC3CA8;
    v9[0] = v13;
    __swift_project_boxed_opaque_existential_1(v9, &type metadata for MLDataValue.MultiArrayType);
    v7 = sub_237AC85C4();
    sub_2379E8CE8(v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v7 = sub_237A2E78C();
    sub_2379E8CE8(v4, v5, v6);
  }

  return v7;
}

uint64_t sub_237AC4184(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{

  sub_237AFC548(v3, v9);
  v4 = v9[0];
  v5 = v9[1];
  v6 = v10;
  a2(&v13, v9);
  if (v13)
  {
    v11 = &type metadata for MLDataValue.DictionaryType;
    v12 = &off_284AC46D8;
    v9[0] = v13;
    __swift_project_boxed_opaque_existential_1(v9, &type metadata for MLDataValue.DictionaryType);
    v7 = sub_237AFF290();
    sub_2379E8CE8(v4, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {

    type metadata accessor for CMLFeatureValue();
    v7 = sub_237A2E78C();
    sub_2379E8CE8(v4, v5, v6);
  }

  return v7;
}

uint64_t sub_237AC426C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{

  sub_237AFC548(v3, v12);
  v4 = v12[0];
  v5 = v12[1];
  v6 = v13;
  a2(&v10, v12);
  if (v11)
  {
    v7 = sub_237B297D0(v10, v11);
    sub_2379E8CE8(v4, v5, v6);

    return v7;
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v9 = sub_237A2E78C();
    sub_2379E8CE8(v4, v5, v6);
    return v9;
  }
}