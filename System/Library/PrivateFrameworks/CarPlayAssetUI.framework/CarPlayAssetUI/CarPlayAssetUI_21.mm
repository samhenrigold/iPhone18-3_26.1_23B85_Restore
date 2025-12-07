void *Overrides.encode(to:)(void *a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8160, &qword_242F35D10);
  v26 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v26 - v4;
  v6 = *v1;
  v7 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E0A34C(v7, v8, v9);

  v32 = v5;
  result = sub_242F064C0();
  v11 = 0;
  v13 = v6 + 64;
  v12 = *(v6 + 64);
  v31 = v6;
  v14 = 1 << *(v6 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  v27 = v17;
  v28 = v6 + 64;
  while (v16)
  {
LABEL_10:
    v29 = v11;
    v30 = v16;
    v19 = __clz(__rbit64(v16)) | (v11 << 6);
    v20 = (*(v31 + 48) + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    v23 = *(*(v31 + 56) + 8 * v19);
    v34[0] = v22;
    v34[1] = v21;
    v34[2] = 0;
    LOBYTE(v35) = 1;

    result = sub_242F05E30();
    v37 = *(v23 + 16);
    if (v37)
    {
      v24 = 0;
      v25 = v23 + 32;
      while (v24 < *(v23 + 16))
      {
        sub_242C6CF00(v25, v34);
        __swift_project_boxed_opaque_existential_2Tm(v34, v35);
        __swift_mutable_project_boxed_opaque_existential_1(v36, v36[3]);
        sub_242F05FA0();
        if (v2)
        {
          __swift_destroy_boxed_opaque_existential_2Tm(v34);

          (*(v26 + 8))(v32, v33);
          return __swift_destroy_boxed_opaque_existential_2Tm(v36);
        }

        ++v24;
        result = __swift_destroy_boxed_opaque_existential_2Tm(v34);
        v25 += 40;
        if (v37 == v24)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_4:
    v16 = (v30 - 1) & v30;

    result = __swift_destroy_boxed_opaque_existential_2Tm(v36);
    v17 = v27;
    v13 = v28;
    v11 = v29;
  }

  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return (*(v26 + 8))(v32, v33);
    }

    v16 = *(v13 + 8 * v18);
    ++v11;
    if (v16)
    {
      v11 = v18;
      goto LABEL_10;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t Overrides.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v98 = a3;
  v95 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8170, &qword_242F35D18);
  v97 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v84 - v8;
  v10 = sub_242CE7A40(MEMORY[0x277D84F90]);
  v11 = a1;
  v12 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E0A34C(v12, v13, v14);
  sub_242F06480();
  if (v4)
  {

    v15 = a1;
    return __swift_destroy_boxed_opaque_existential_2Tm(v15);
  }

  v94 = v10;
  v16 = v7;
  v96 = v9;
  v17 = MEMORY[0x277D84F90];
  v18 = sub_242CE7A40(MEMORY[0x277D84F90]);
  v19 = sub_242F03920();
  if (sub_242F03920() < 0)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v20 = sub_242F03920();
  if (v19 < 0 || v20 < v19)
  {
    goto LABEL_54;
  }

  v93 = 0;
  v89 = v11;
  v90 = v16;
  v91 = v18;
  if (v19)
  {
    v103[0] = v17;
    sub_242E3BF30(0, v19, 0);
    v21 = 0;
    v22 = v103[0];
    while (1)
    {
      if (v21 >= sub_242F03920())
      {
        __break(1u);
        goto LABEL_53;
      }

      v23 = *a2;
      v24 = sub_242F038D0();
      if (v23 > 0x7FF)
      {
        if (v24 - 2048 >= 0xFFFFFFFFFFFFF801)
        {
          goto LABEL_16;
        }
      }

      else if (v24 >= 0x800)
      {
        if (v23)
        {
LABEL_16:
          sub_242F038A0();
          v25 = sub_242F05080();
          goto LABEL_17;
        }
      }

      else if (v23 != v24)
      {
        goto LABEL_16;
      }

      sub_242F03890();
      sub_242F03880();
      v25 = sub_242F03850();
LABEL_17:
      v27 = v25;
      v28 = v26;
      v103[0] = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_242E3BF30((v29 > 1), v30 + 1, 1);
        v22 = v103[0];
      }

      *(v22 + 16) = v30 + 1;
      v31 = (v22 + 32 * v30);
      v31[4] = v27;
      v31[5] = v28;
      v31[6] = v21;
      v31[7] = a2;
      if (v19 == ++v21)
      {
        v32 = v90;
        v33 = v97;
        v17 = MEMORY[0x277D84F90];
        goto LABEL_23;
      }
    }
  }

  if (*(v17 + 16))
  {
    v32 = v16;
    v33 = v97;
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B18, &qword_242F35D20);
    v34 = sub_242F05CB0();
  }

  else
  {
    v34 = MEMORY[0x277D84F98];
    v32 = v16;
    v33 = v97;
  }

  v103[0] = v34;

  v36 = v93;
  sub_242E0D7EC(v35, 1, v103);
  if (v36)
  {
LABEL_56:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v94 = v103[0];
  v37 = sub_242F05E10();
  v38 = v37;
  v39 = *(v37 + 16);
  if (!v39)
  {
    v71 = v95;
    goto LABEL_46;
  }

  v40 = 0;
  v41 = v37 + 32;
  v87 = v37;
  v86 = v39;
  v85 = v37 + 32;
  while (2)
  {
    if (v40 >= *(v38 + 16))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v93 = v40;
    v42 = v41 + 32 * v40;
    v44 = *v42;
    v43 = *(v42 + 8);
    v45 = *(v42 + 24);
    v46 = *(v42 + 16);
    v104 = v17;
    v88 = v44;
    v99 = v44;
    v100 = v43;
    v101 = v46;
    v102 = v45;
    v92 = v43;

    sub_242F05D00();
    v47 = v94;
    if (!*(v94 + 16) || (v48 = v92, , v49 = sub_242CE519C(v88, v48), v51 = v50, , (v51 & 1) == 0))
    {

      sub_242E0DD68(v78, v79, v80);
      swift_allocError();
      v81 = v92;
      *v82 = v88;
      *(v82 + 8) = v81;
      *(v82 + 16) = 4;
      swift_willThrow();
      (*(v33 + 8))(v96, v32);
      __swift_destroy_boxed_opaque_existential_2Tm(v103);
      goto LABEL_47;
    }

    v52 = v89;
    ++v93;
    v53 = (*(v47 + 56) + 16 * v49);
    v55 = *v53;
    v54 = v53[1];
    v56 = MEMORY[0x277D83A88];
    while (1)
    {
      swift_beginAccess();
      __swift_project_boxed_opaque_existential_2Tm(v103, v103[3]);
      v57 = sub_242F05F90();
      swift_endAccess();
      if (v57)
      {
        break;
      }

      v58 = *v54;
      v59 = sub_242F038D0();
      if (v58 > 0x7FF)
      {
        v60 = v98;
        if (v59 - 2048 < 0xFFFFFFFFFFFFF801)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v60 = v98;
        if (v59 >= 0x800)
        {
          if (!v58)
          {
LABEL_37:
            sub_242F03890();
            sub_242F03880();
            v61 = sub_242F03860();
            goto LABEL_41;
          }
        }

        else if (v58 == v59)
        {
          goto LABEL_37;
        }
      }

      v62 = (sub_242F038A0() + 4);
      v63 = *v62;
      v61 = sub_242F038B0();
      if (!v61)
      {
        v61 = MEMORY[0x245D24E40](v62 + v63, v54);
      }

LABEL_41:
      v64 = dynamic_cast_existential_3_conditional(v61, v61, v56, MEMORY[0x277D83548], MEMORY[0x277D83570]);
      if (!v64)
      {

        v72 = sub_242F038E0();
        v74 = v73;
        sub_242E0DD68(v72, v73, v75);
        swift_allocError();
        *v76 = v72;
        *(v76 + 8) = v74;
        *(v76 + 16) = 0;
        swift_willThrow();
        (*(v97 + 8))(v96, v90);
        __swift_destroy_boxed_opaque_existential_2Tm(v103);
        v15 = v52;
        return __swift_destroy_boxed_opaque_existential_2Tm(v15);
      }

      *&v83 = v65;
      *(&v83 + 1) = v66;
      sub_242E09320(v64, v103, &v104, v55, v54, a2, v64, v60, v83, v67);
    }

    swift_beginAccess();
    v68 = v104;
    v69 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = v69;
    sub_242CDF54C(v68, v88, v92, isUniquelyReferenced_nonNull_native);

    v91 = v99;
    __swift_destroy_boxed_opaque_existential_2Tm(v103);
    v40 = v93;
    v33 = v97;
    v32 = v90;
    v71 = v95;
    v17 = MEMORY[0x277D84F90];
    v38 = v87;
    v41 = v85;
    if (v93 != v86)
    {
      continue;
    }

    break;
  }

LABEL_46:
  (*(v33 + 8))(v96, v32);

  *v71 = v91;
LABEL_47:
  v15 = v89;
  return __swift_destroy_boxed_opaque_existential_2Tm(v15);
}

uint64_t sub_242E09320(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v47 = a4;
  v48 = a5;
  v44 = a3;
  v49 = a7;
  v50 = a9;
  v51 = a10;
  v11 = type metadata accessor for OverrideRule(255, &v49);
  v12 = sub_242F05860();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = *(v11 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  swift_getWitnessTable();
  v25 = v52;
  sub_242F05F80();
  if (v25)
  {
    swift_endAccess();

    (*(v15 + 56))(v14, 1, 1, v11);
    (*(v45 + 8))(v14, v46);
    v26 = sub_242F038E0();
    v28 = v27;
    sub_242E0DD68(v26, v27, v29);
    swift_allocError();
    *v30 = v26;
    *(v30 + 8) = v28;
    *(v30 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    v32 = v18;
    swift_endAccess();
    (*(v15 + 56))(v14, 0, 1, v11);
    (*(v15 + 32))(v24, v14, v11);
    v52 = *(v15 + 16);
    v52(v21, v24, v11);
    v33 = v44;
    swift_beginAccess();
    v34 = *v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v33 = v34;
    v42 = v21;
    v43 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_242C83AF4(0, v34[2] + 1, 1, v34);
      *v33 = v34;
    }

    v37 = v34[2];
    v36 = v34[3];
    if (v37 >= v36 >> 1)
    {
      v34 = sub_242C83AF4((v36 > 1), v37 + 1, 1, v34);
      *v33 = v34;
    }

    v38 = v42;
    v52(v32, v42, v11);
    WitnessTable = swift_getWitnessTable();
    sub_242CCEB08(v37, v32, v33, v11, WitnessTable);
    v40 = *(v15 + 8);
    v40(v38, v11);
    *v33 = v34;
    swift_endAccess();
    return (v40)(v43, v11);
  }
}

uint64_t Overrides<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6)
  {
    v7 = sub_242CDD790(*(*v3 + 16), 0);
    v14 = sub_242CE3FBC();

    sub_242C6548C(v15[0]);
    if (v14 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v15[0] = v7;
  sub_242DBB374(v15);
  v8 = v15[0];
  v9 = *(v15[0] + 2);
  if (v9)
  {
    v10 = 0;
    v11 = (v15[0] + 40);
    while (v10 < *(v8 + 2))
    {
      ++v10;
      v12 = *v11;
      v15[0] = *(v11 - 1);
      v15[1] = v12;

      sub_242E098DC(v15, a1, v5);

      v11 += 2;
      if (v9 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_9:
  }

  return result;
}

void sub_242E098DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  sub_242F04DD0();
  if (*(a3 + 16))
  {
    v7 = sub_242CE519C(v5, v6);
    if (v8)
    {
      v9 = *(*(a3 + 56) + 8 * v7);
      v10 = *(v9 + 16);

      if (v10)
      {
        v11 = 0;
        v12 = v9 + 32;
        while (v11 < *(v9 + 16))
        {
          sub_242C6CF00(v12, v13);
          __swift_project_boxed_opaque_existential_2Tm(v13, v13[3]);
          sub_242F04D90();
          if (v3)
          {
            goto LABEL_11;
          }

          ++v11;
          __swift_destroy_boxed_opaque_existential_2Tm(v13);
          v12 += 40;
          if (v10 == v11)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_11:

        __swift_destroy_boxed_opaque_existential_2Tm(v13);
        __break(1u);
      }

      else
      {
LABEL_8:
      }
    }
  }
}

uint64_t Overrides<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v6[9] = *v2;
  sub_242F06390();
  Overrides<>.hash(into:)(v6, a1, a2);
  return sub_242F063E0();
}

uint64_t sub_242E09A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_242F06390();
  Overrides<>.hash(into:)(v6, a2, v4);
  return sub_242F063E0();
}

uint64_t static Overrides<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a4;
  v49 = a5;
  v47 = a3;
  v5 = *a1;
  v6 = *a2;
  v7 = *(*a1 + 16);
  if (v7 != *(*a2 + 16))
  {
    return 0;
  }

  if (v7)
  {
    v8 = sub_242CDD790(*(*a1 + 16), 0);
    v9 = sub_242CE3FBC();

    sub_242C6548C(v53);
    if (v9 == v7)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v8 = MEMORY[0x277D84F90];
LABEL_6:
  v53 = v8;
  sub_242DBB374(&v53);
  v10 = v53;
  v42 = *(v53 + 2);
  if (!v42)
  {
LABEL_24:

    return 1;
  }

  v11 = 0;
  v44 = v53 + 32;
  v41 = v5;
  v40 = v6;
  v43 = v53;
  while (2)
  {
    if (v11 < *(v10 + 2))
    {
      if (*(v5 + 16))
      {
        v45 = v11;
        v12 = &v44[16 * v11];
        v14 = *v12;
        v13 = v12[1];

        v15 = sub_242CE519C(v14, v13);
        if (v16)
        {
          if (*(v6 + 16))
          {
            v17 = *(*(v5 + 56) + 8 * v15);

            v18 = sub_242CE519C(v14, v13);
            v20 = v19;

            if (v20)
            {
              v21 = *(*(v6 + 56) + 8 * v18);
              v22 = *(v21 + 16);
              v50 = *(v17 + 16);
              if (v50 == v22)
              {
                ++v45;
                v51 = v21;

                v23 = 0;
                v24 = 32;
                v46 = v17;
                while (1)
                {
                  if (v50 == v23)
                  {

                    goto LABEL_23;
                  }

                  v25 = v51;
                  if (v23 >= *(v17 + 16))
                  {
                    __break(1u);
LABEL_29:
                    __break(1u);
                    goto LABEL_30;
                  }

                  sub_242C6CF00(v17 + v24, v52);
                  v26 = *(v25 + 16);
                  if (v23 == v26)
                  {
                    break;
                  }

                  if (v23++ >= v26)
                  {
                    goto LABEL_29;
                  }

                  v27 = v24 + 40;
                  sub_242C65564(v52, &v53);
                  sub_242C6CF00(v25 + v24, v56);
                  v29 = v54;
                  v28 = v55;
                  v30 = __swift_project_boxed_opaque_existential_2Tm(&v53, v54);
                  v10 = &v39;
                  v31 = *(v29 - 8);
                  v32 = MEMORY[0x28223BE20](v30);
                  v34 = &v39 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v31 + 16))(v34, v32);
                  __swift_destroy_boxed_opaque_existential_2Tm(&v53);
                  v35 = *(*(v28 + 24) + 8);
                  v36 = v57;
                  v37 = __swift_project_boxed_opaque_existential_2Tm(v56, v57);
                  LOBYTE(v35) = sub_242E09FC0(v37, v34, v47, v29, v36, v48, v49, v35);
                  __swift_destroy_boxed_opaque_existential_2Tm(v56);
                  (*(v31 + 8))(v34, v29);
                  v24 = v27;
                  v17 = v46;
                  if ((v35 & 1) == 0)
                  {

                    return 0;
                  }
                }

                __swift_destroy_boxed_opaque_existential_2Tm(v52);
LABEL_23:
                v11 = v45;
                v5 = v41;
                v6 = v40;
                v10 = v43;
                if (v45 != v42)
                {
                  continue;
                }

                goto LABEL_24;
              }
            }
          }
        }
      }

      return 0;
    }

    break;
  }

LABEL_30:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_242E09F2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a2[3];
  v14 = __swift_project_boxed_opaque_existential_2Tm(a2, v13);
  return sub_242E09FC0(v14, a1, a3, a4, v13, a5, a6, a7) & 1;
}

uint64_t sub_242E09FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[1] = a8;
  v11 = sub_242F05860();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v28 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v17, a1, a5, v20);
  v24 = swift_dynamicCast();
  v25 = *(v18 + 56);
  if (v24)
  {
    v25(v14, 0, 1, a4);
    (*(v18 + 32))(v22, v14, a4);
    v26 = sub_242F04EE0();
    (*(v18 + 8))(v22, a4);
  }

  else
  {
    v25(v14, 1, 1, a4);
    (*(v12 + 8))(v14, v11);
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t sub_242E0A27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  (*(v8 + 16))(a4, a1);
  result = sub_242E0CCDC(a4, a2, a3);
  if (v4)
  {
    return (*(v8 + 8))(a4, a3);
  }

  return result;
}

unint64_t sub_242E0A34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8168;
  if (!qword_27ECF8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8168);
  }

  return result;
}

double Overridable.setOverride<A>(_:keyPath:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a1;
  v41 = a7;
  v9 = (*a2 + *MEMORY[0x277D84308]);
  v44[0] = v9[1];
  v44[1] = a4;
  v44[2] = a5;
  v44[3] = a6;
  v10 = type metadata accessor for OverrideRule(0, v44);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = *v9;
  v17 = *(*v9 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v36 - v20;
  (*(v17 + 16))(&v36 - v20, v7, v16, v19);
  v22 = *(a3 + 32);
  v40 = a3;
  v22(&v43, v16, a3);
  v23 = v43;
  if (!v43)
  {
    v23 = sub_242CE7A40(MEMORY[0x277D84F90]);
  }

  v44[0] = v23;
  v24 = sub_242E0A750();
  v26 = v25;
  v43 = v23;
  sub_242E0870C(v24, v25, sub_242E0A8B0);
  v43 = v27;
  if (v27)
  {
    v37 = v26;
    v38 = v24;
    v28 = *(v42 + 16);
    v28(v15, v39, v10);
    v29 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_242C83AF4(0, v29[2] + 1, 1, v29);
      v43 = v29;
    }

    v31 = v29[2];
    v30 = v29[3];
    if (v31 >= v30 >> 1)
    {
      v29 = sub_242C83AF4((v30 > 1), v31 + 1, 1, v29);
      v43 = v29;
    }

    v28(v12, v15, v10);
    WitnessTable = swift_getWitnessTable();
    sub_242CCEB08(v31, v12, &v43, v10, WitnessTable);
    (*(v42 + 8))(v15, v10);
    v43 = v29;
    v26 = v37;
    v24 = v38;
  }

  else
  {
    v29 = 0;
  }

  sub_242E082AC(v29, v24, v26);
  v43 = v44[0];
  v33 = v40;
  v34 = *(v40 + 40);

  v34(&v43, v16, v33);
  (*(v17 + 32))(v41, v21, v16);

  return result;
}

uint64_t sub_242E0A750()
{
  sub_242F05B60();
  v0 = sub_242F060F0();
  sub_242C6CB78(v0, v1, v2);
  sub_242F05890();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8288, &unk_242F36150);
  sub_242C7E000(&qword_27ECF8290, &qword_27ECF8288, &unk_242F36150, MEMORY[0x277D83FA0]);
  v3 = sub_242F04E40();

  return v3;
}

uint64_t Overridable.setOverride<A>(_:keyPath:)@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a7;
  v28 = a3;
  v12 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v24 - v14;
  v30 = v12;
  v31 = v16;
  v25 = v16;
  v32 = v17;
  v33 = v18;
  v26 = type metadata accessor for OverrideRule(0, &v30);
  v19 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v21 = &v24 - v20;
  v29 = *a1;
  swift_getAtKeyPath();
  v30 = v12;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  type metadata accessor for OverrideComputedRule(0, &v30);
  sub_242DDB284();
  (*(v13 + 8))(v15, v12);
  v22 = Overridable.setOverride<A>(_:keyPath:)(v21, a2, v28, v25, a5, a6, v27);
  return (*(v19 + 8))(v21, v26, v22);
}

uint64_t sub_242E0AAD8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, char *a4@<X8>)
{
  v6 = v5;
  v72 = a3;
  v71 = a1;
  v65 = a4;
  v8 = *(a2 - 1);
  MEMORY[0x28223BE20](a1);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  v79 = 0;
  v80 = 0xE000000000000000;
  swift_getMetatypeMetadata();
  v13 = sub_242F06580();
  MEMORY[0x245D26660](v13);

  MEMORY[0x245D26660](0x203A646920, 0xE500000000000000);
  v66 = v8;
  v15 = (v8 + 16);
  v14 = *(v8 + 16);
  v73 = v4;
  v67 = v14;
  v14(v12, v4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8228, &qword_242F36108);
  v90 = a2;
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_2Tm(&v86, *(&v87 + 1));
    *(&v83 + 1) = swift_getAssociatedTypeWitness();
    *&v84 = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v82);
    sub_242F05AA0();
    __swift_destroy_boxed_opaque_existential_2Tm(&v86);
    if (*(&v83 + 1))
    {
      sub_242C65564(&v82, &v86);
      goto LABEL_6;
    }
  }

  else
  {
    *&v88 = 0;
    v87 = 0u;
    v86 = 0u;
    sub_242C6D138(&v86, &qword_27ECF8230, &qword_242F36110);
  }

  *(&v87 + 1) = MEMORY[0x277D837D0];
  *&v88 = MEMORY[0x277D837E0];
  *&v86 = 0x6E776F6E6B6E75;
  *(&v86 + 1) = 0xE700000000000000;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8238, &qword_242F36118);
  sub_242F05C20();
  __swift_destroy_boxed_opaque_existential_2Tm(&v86);
  v17 = v79;
  v16 = v80;
  if (qword_27ECEF4D8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v18 = sub_242F039D0();
    v19 = __swift_project_value_buffer(v18, qword_27ED5D328);

    v74 = v19;
    v20 = sub_242F039B0();
    v21 = sub_242F056E0();

    v22 = &unk_242F17000;
    if (os_log_type_enabled(v20, v21))
    {
      v23 = swift_slowAlloc();
      v24 = v15;
      v25 = swift_slowAlloc();
      *&v86 = v25;
      *v23 = 136315138;
      v17 = sub_242C8FD38(v17, v16, &v86);

      *(v23 + 4) = v17;
      _os_log_impl(&dword_242C53000, v20, v21, "Resolving %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v25);
      v26 = v25;
      v15 = v24;
      v22 = &unk_242F17000;
      MEMORY[0x245D287D0](v26, -1, -1);
      MEMORY[0x245D287D0](v23, -1, -1);
    }

    else
    {
    }

    v27 = v69;
    v28 = v90;
    v67(v69, v73, v90);
    v72[4](&v86, v28);
    v64 = v15;
    if (v86)
    {
      sub_242E083A4(v86);
      v30 = v29;
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v31 = sub_242C86440(v30);

    v32 = v6;
    sub_242E0DE90(v90, v31);
    v75 = v33;
    v15 = v6;

    v16 = sub_242F039B0();
    v34 = sub_242F056E0();
    if (!os_log_type_enabled(v16, v34))
    {
      goto LABEL_17;
    }

    v22 = v32;
    v17 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v82 = v15;
    *v17 = 134218242;
    *(v17 + 4) = *(v31 + 16);

    *(v17 + 12) = 2080;
    v35 = *(v31 + 16);
    if (v35)
    {
      v36 = sub_242CDD790(*(v31 + 16), 0);
      v37 = sub_242CE013C(&v86, v36 + 4, v35, v31);
      sub_242C6548C(v86);
      if (v37 != v35)
      {
        __break(1u);
LABEL_17:

        swift_bridgeObjectRelease_n();
        v6 = &v86;
        goto LABEL_21;
      }
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }

    v39 = v34;
    *&v86 = v36;

    sub_242DBB374(&v86);
    if (v32)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0160, &qword_242F0A500);
    sub_242C7E000(&qword_27ECF0168, &qword_27ECF0160, &qword_242F0A500, MEMORY[0x277D83958]);
    v40 = sub_242F04E40();
    v42 = v41;

    v43 = sub_242C8FD38(v40, v42, &v82);

    *(v17 + 14) = v43;
    _os_log_impl(&dword_242C53000, v16, v39, "Found %ld properties with overrides: %s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_2Tm(v15);
    MEMORY[0x245D287D0](v15, -1, -1);
    MEMORY[0x245D287D0](v17, -1, -1);

    v27 = v69;
    v6 = &v86;
    v15 = 0;
    v22 = &unk_242F17000;
LABEL_21:
    v70 = *(v75 + 16);
    if (!v70)
    {
LABEL_31:

      swift_beginAccess();
      v57 = v90;
      v67(v65, v27, v90);
      return (*(v66 + 8))(v27, v57);
    }

    v44 = 0;
    v45 = (v75 + 40);
    *&v38 = *(v22 + 159);
    v68 = v38;
    while (v44 < *(v75 + 16))
    {
      v78 = v44;
      v16 = *(v45 - 1);
      v17 = *v45;
      v77 = v45;
      v46 = sub_242F039B0();
      v47 = sub_242F056E0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v86 = v49;
        *v48 = v68;
        v50 = sub_242F038F0();
        v52 = sub_242C8FD38(v50, v51, &v86);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_242C53000, v46, v47, "Processing field: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(v49);
        v27 = v69;
        MEMORY[0x245D287D0](v49, -1, -1);
        v53 = v48;
        v6 = &v86;
        MEMORY[0x245D287D0](v53, -1, -1);
      }

      swift_beginAccess();
      v54 = sub_242F03900();
      sub_242E0DB84(v54, v16, v17, v17, v54);
      swift_getAtAnyKeyPath();
      swift_endAccess();

      if (!v81)
      {

        sub_242C6D138(&v79, &qword_27ECFC580, &qword_242F36120);
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0;
        goto LABEL_35;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8248, &unk_242F36130);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v85 = 0;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
LABEL_34:

LABEL_35:
        sub_242C6D138(&v82, &qword_27ECF8240, &qword_242F36128);
        v59 = sub_242F038F0();
        v61 = v60;
        sub_242E0DD68(v59, v60, v62);
        swift_allocError();
        *v63 = v59;
        *(v63 + 8) = v61;
        *(v63 + 16) = 3;
        swift_willThrow();
        return (*(v66 + 8))(v27, v90);
      }

      if (!*(&v83 + 1))
      {
        goto LABEL_34;
      }

      sub_242E0ECDC(&v82, &v86);
      v76 = v88;
      v55 = *(&v87 + 1);
      v56 = v89;
      __swift_project_boxed_opaque_existential_2Tm(&v86, *(&v87 + 1));
      sub_242E0E258(v16, v17, v73, v71, v27, v90, v55, v72, v76, *(&v76 + 1), v56);
      if (v15)
      {
        (*(v66 + 8))(v27, v90);

        return __swift_destroy_boxed_opaque_existential_2Tm(&v86);
      }

      v44 = v78 + 1;
      __swift_destroy_boxed_opaque_existential_2Tm(&v86);
      v45 = v77 + 2;
      if (v70 == v44)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  __break(1u);
  return result;
}

double sub_242E0B5F0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(a6 + 32))(&v30, a4, a6);
  if (v30 && (sub_242E0870C(a1, a2, sub_242E0BA90), v15 = v14, , v15))
  {
    if (qword_27ECEF4D8 != -1)
    {
      swift_once();
    }

    v16 = sub_242F039D0();
    __swift_project_value_buffer(v16, qword_27ED5D328);

    v17 = sub_242F039B0();
    v18 = sub_242F056E0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 134218242;
      *(v19 + 4) = *(v15 + 16);

      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_242C8FD38(a1, a2, &v30);
      _os_log_impl(&dword_242C53000, v17, v18, "Evaluating %ld override rule(s) for property: %s", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_2Tm(v20);
      MEMORY[0x245D287D0](v20, -1, -1);
      MEMORY[0x245D287D0](v19, -1, -1);
    }

    else
    {
    }

    v30 = v15;
    MEMORY[0x28223BE20](v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8250, &unk_242F36140);
    sub_242C7E000(&qword_27ECF8258, &qword_27ECF8250, &unk_242F36140, MEMORY[0x277D83970]);
    v29 = sub_242F05150();

    v30 = v29;
    sub_242F053E0();
    swift_getWitnessTable();
    sub_242F05600();
  }

  else
  {
    if (qword_27ECEF4D8 != -1)
    {
      swift_once();
    }

    v22 = sub_242F039D0();
    __swift_project_value_buffer(v22, qword_27ED5D328);

    v23 = sub_242F039B0();
    v24 = sub_242F05700();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_242C8FD38(a1, a2, &v30);
      _os_log_impl(&dword_242C53000, v23, v24, "No override rules found for property: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v26);
      MEMORY[0x245D287D0](v26, -1, -1);
      MEMORY[0x245D287D0](v25, -1, -1);
    }

    v27 = *(*(a5 - 8) + 56);

    v27(a9, 1, 1, a5);
  }

  return result;
}

uint64_t sub_242E0BA98@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X5>, unint64_t a6@<X7>, _BYTE *a7@<X8>, uint64_t a8, uint64_t a9)
{
  v63 = a2;
  v64 = a4;
  v62 = a3;
  v67 = a5;
  v68 = a6;
  v69 = a8;
  v70 = a9;
  v12 = type metadata accessor for OverrideRule(255, &v67);
  v13 = sub_242F05860();
  v58 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x28223BE20](v17);
  v60 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v61 = &v58 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - v25;
  v59 = a1;
  sub_242C6CF00(a1, &v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF02B0, &qword_242F0A788);
  v27 = swift_dynamicCast();
  v28 = *(v16 + 56);
  if (v27)
  {
    v28(v15, 0, 1, v12);
    (*(v16 + 32))(v26, v15, v12);
    OverrideRule.value(in:)(v63, v12, a7);
    if ((*(*(a5 - 1) + 48))(a7, 1, a5) == 1)
    {
      if (qword_27ECEF4D8 != -1)
      {
        swift_once();
      }

      v29 = sub_242F039D0();
      __swift_project_value_buffer(v29, qword_27ED5D328);
      v30 = *(v16 + 16);
      v23 = v60;
      v30(v60, v26, v12);
      v31 = v64;

      v32 = sub_242F039B0();
      v33 = sub_242F05700();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v63 = v26;
        v35 = v34;
        v59 = swift_slowAlloc();
        v67 = v59;
        *v35 = 136315394;
        *(v35 + 4) = sub_242C8FD38(v62, v31, &v67);
        *(v35 + 12) = 2080;
        v30(v61, v23, v12);
        v36 = sub_242F04F90();
        v38 = v37;
        v39 = *(v16 + 8);
        v39(v23, v12);
        v40 = sub_242C8FD38(v36, v38, &v67);

        *(v35 + 14) = v40;
        _os_log_impl(&dword_242C53000, v32, v33, "Override rule did not match environment conditions for %s: %s", v35, 0x16u);
        v41 = v59;
        swift_arrayDestroy();
        MEMORY[0x245D287D0](v41, -1, -1);
        MEMORY[0x245D287D0](v35, -1, -1);

        return (v39)(v63, v12);
      }
    }

    else
    {
      if (qword_27ECEF4D8 != -1)
      {
        swift_once();
      }

      v43 = sub_242F039D0();
      __swift_project_value_buffer(v43, qword_27ED5D328);
      v44 = *(v16 + 16);
      v44(v23, v26, v12);
      v45 = v64;

      v32 = sub_242F039B0();
      v46 = sub_242F056F0();

      if (os_log_type_enabled(v32, v46))
      {
        v47 = swift_slowAlloc();
        v63 = v26;
        v48 = v47;
        v60 = swift_slowAlloc();
        v67 = v60;
        *v48 = 136315394;
        *(v48 + 4) = sub_242C8FD38(v62, v45, &v67);
        *(v48 + 12) = 2080;
        v44(v61, v23, v12);
        v49 = sub_242F04F90();
        v51 = v50;
        v52 = *(v16 + 8);
        v52(v23, v12);
        v53 = sub_242C8FD38(v49, v51, &v67);

        *(v48 + 14) = v53;
        _os_log_impl(&dword_242C53000, v32, v46, "Override rule matched for %s: %s", v48, 0x16u);
        v54 = v60;
        swift_arrayDestroy();
        MEMORY[0x245D287D0](v54, -1, -1);
        MEMORY[0x245D287D0](v48, -1, -1);

        return (v52)(v63, v12);
      }
    }

    v55 = *(v16 + 8);
    v55(v23, v12);
    return (v55)(v26, v12);
  }

  else
  {
    v28(v15, 1, 1, v12);
    (*(v58 + 8))(v15, v13);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_242F05A80();
    v65 = v67;
    v66 = v68;
    MEMORY[0x245D26660](0xD00000000000001ALL, 0x8000000242F5BB00);
    MEMORY[0x245D26660](v62, v64);
    MEMORY[0x245D26660](0xD00000000000001ALL, 0x8000000242F5BB20);
    v67 = a5;
    swift_getMetatypeMetadata();
    v56 = sub_242F04F90();
    MEMORY[0x245D26660](v56);

    MEMORY[0x245D26660](0x757220746F67202CLL, 0xEC000000203A656CLL);
    sub_242C6CF00(v59, &v67);
    v57 = sub_242F04F90();
    MEMORY[0x245D26660](v57);

    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t sub_242E0C254(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Zone(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  v15 = a2;
  result = sub_242DB6258(sub_242E0F058, v13, v5);
  if (!v2)
  {
    v18 = v5;
    v19 = sub_242E0F088(&qword_27ECF8280, type metadata accessor for Zone, &protocol conformance descriptor for Zone);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    sub_242E0EF90(a1, boxed_opaque_existential_1, type metadata accessor for Zone);
    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_2Tm(v17, v18);
    v16[3] = v10;
    v16[4] = v11;
    v12 = __swift_allocate_boxed_opaque_existential_1(v16);
    sub_242E0AAD8(a2, v10, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8218, &qword_242F360F8);
    swift_dynamicCast();
    sub_242E0F0D0(v7, a1, type metadata accessor for Zone);
    return __swift_destroy_boxed_opaque_existential_2Tm(v17);
  }

  return result;
}

uint64_t sub_242E0C418(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Slot(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1;
  v15 = a2;
  result = sub_242DB6258(sub_242E0EF60, v13, v5);
  if (!v2)
  {
    v18 = v5;
    v19 = sub_242E0F088(&qword_27ECF8278, type metadata accessor for Slot, &protocol conformance descriptor for Slot);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    sub_242E0EF90(a1, boxed_opaque_existential_1, type metadata accessor for Slot);
    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_2Tm(v17, v18);
    v16[3] = v10;
    v16[4] = v11;
    v12 = __swift_allocate_boxed_opaque_existential_1(v16);
    sub_242E0AAD8(a2, v10, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8218, &qword_242F360F8);
    swift_dynamicCast();
    sub_242E0F0D0(v7, a1, type metadata accessor for Slot);
    return __swift_destroy_boxed_opaque_existential_2Tm(v17);
  }

  return result;
}

uint64_t sub_242E0C5DC(void *a1, uint64_t a2)
{
  v11[2] = a1;
  v11[3] = a2;
  result = sub_242DB6258(sub_242E0EE84, v11, &type metadata for MeasurementLabelConfiguration);
  if (!v2)
  {
    v6 = memcpy(__dst, a1, sizeof(__dst));
    v16[3] = &type metadata for MeasurementLabelConfiguration;
    v9 = sub_242E0EF0C(v6, v7, v8);
    v16[4] = v9;
    v16[0] = swift_allocObject();
    memcpy((v16[0] + 16), a1, 0x150uLL);
    __swift_project_boxed_opaque_existential_2Tm(v16, &type metadata for MeasurementLabelConfiguration);
    v14[3] = &type metadata for MeasurementLabelConfiguration;
    v14[4] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    sub_242D48DCC(__dst, v13);
    sub_242E0AAD8(a2, &type metadata for MeasurementLabelConfiguration, v9, boxed_opaque_existential_1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8218, &qword_242F360F8);
    swift_dynamicCast();
    memcpy(v12, __src, sizeof(v12));
    memcpy(v13, a1, sizeof(v13));
    sub_242D48E28(v13);
    memcpy(a1, v12, 0x150uLL);
    return __swift_destroy_boxed_opaque_existential_2Tm(v16);
  }

  return result;
}

uint64_t sub_242E0C770(void *a1, uint64_t a2)
{
  v11[2] = a1;
  v11[3] = a2;
  result = sub_242DB6258(sub_242E0EE10, v11, &type metadata for Display);
  if (!v2)
  {
    v6 = memcpy(__dst, a1, sizeof(__dst));
    v16[3] = &type metadata for Display;
    v9 = sub_242E0EE30(v6, v7, v8);
    v16[4] = v9;
    v16[0] = swift_allocObject();
    memcpy((v16[0] + 16), a1, 0x250uLL);
    __swift_project_boxed_opaque_existential_2Tm(v16, &type metadata for Display);
    v14[3] = &type metadata for Display;
    v14[4] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    sub_242C6CDD4(__dst, v13);
    sub_242E0AAD8(a2, &type metadata for Display, v9, boxed_opaque_existential_1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8218, &qword_242F360F8);
    swift_dynamicCast();
    memcpy(v12, __src, sizeof(v12));
    memcpy(v13, a1, sizeof(v13));
    sub_242C6CE30(v13);
    memcpy(a1, v12, 0x250uLL);
    return __swift_destroy_boxed_opaque_existential_2Tm(v16);
  }

  return result;
}

uint64_t sub_242E0C904(uint64_t *a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  result = sub_242DB6258(sub_242E0ED9C, v18, &type metadata for SystemUILayout.ContentArea);
  if (!v2)
  {
    v8 = *a1;
    v9 = a1[5];
    v25[3] = &type metadata for SystemUILayout.ContentArea;
    v10 = sub_242E0EDBC(result, v6, v7);
    v25[4] = v10;
    v11 = swift_allocObject();
    v25[0] = v11;
    *(v11 + 16) = v8;
    v12 = *(a1 + 1);
    *(v11 + 40) = *(a1 + 3);
    *(v11 + 24) = v12;
    *(v11 + 56) = v9;
    __swift_project_boxed_opaque_existential_2Tm(v25, &type metadata for SystemUILayout.ContentArea);
    v21[3] = &type metadata for SystemUILayout.ContentArea;
    v21[4] = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);

    sub_242E0AAD8(a2, &type metadata for SystemUILayout.ContentArea, v10, boxed_opaque_existential_1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8218, &qword_242F360F8);
    swift_dynamicCast();
    v14 = v21[5];
    v15 = v24;
    v16 = v23;
    v17 = v22;

    *a1 = v14;
    *(a1 + 3) = v16;
    *(a1 + 1) = v17;
    a1[5] = v15;
    return __swift_destroy_boxed_opaque_existential_2Tm(v25);
  }

  return result;
}

uint64_t sub_242E0CAA0(uint64_t a1, uint64_t a2)
{
  v25[2] = a1;
  v25[3] = a2;
  result = sub_242DB6258(sub_242E0EC6C, v25, &type metadata for SystemUILayout);
  if (!v2)
  {
    v6 = *(a1 + 80);
    v7 = *(a1 + 112);
    v55 = *(a1 + 96);
    v56 = v7;
    v8 = *(a1 + 16);
    v9 = *(a1 + 48);
    v51 = *(a1 + 32);
    v52 = v9;
    v10 = *(a1 + 48);
    v11 = *(a1 + 80);
    v53 = *(a1 + 64);
    v54 = v11;
    v12 = *(a1 + 16);
    v50[0] = *a1;
    v50[1] = v12;
    v13 = *(a1 + 112);
    v44 = v55;
    v45 = v13;
    v40 = v51;
    v41 = v10;
    v42 = v53;
    v43 = v6;
    v57 = *(a1 + 128);
    v46 = *(a1 + 128);
    v38 = v50[0];
    v39 = v8;
    sub_242E0EBBC(v50, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8218, &qword_242F360F8);
    if (swift_dynamicCast())
    {
      sub_242C65564(&v26, v47);
      v14 = v48;
      v15 = v49;
      __swift_project_boxed_opaque_existential_2Tm(v47, v48);
      v35[3] = v14;
      v35[4] = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
      sub_242E0AAD8(a2, v14, v15, boxed_opaque_existential_1);
      swift_dynamicCast();
      v32 = v44;
      v33 = v45;
      v34 = v46;
      v28 = v40;
      v29 = v41;
      v30 = v42;
      v31 = v43;
      v26 = v38;
      v27 = v39;
      v17 = *(a1 + 112);
      v36[6] = *(a1 + 96);
      v36[7] = v17;
      v37 = *(a1 + 128);
      v18 = *(a1 + 48);
      v36[2] = *(a1 + 32);
      v36[3] = v18;
      v19 = *(a1 + 80);
      v36[4] = *(a1 + 64);
      v36[5] = v19;
      v20 = *(a1 + 16);
      v36[0] = *a1;
      v36[1] = v20;
      sub_242E0EC18(v36);
      v21 = v33;
      *(a1 + 96) = v32;
      *(a1 + 112) = v21;
      *(a1 + 128) = v34;
      v22 = v29;
      *(a1 + 32) = v28;
      *(a1 + 48) = v22;
      v23 = v31;
      *(a1 + 64) = v30;
      *(a1 + 80) = v23;
      v24 = v27;
      *a1 = v26;
      *(a1 + 16) = v24;
      return __swift_destroy_boxed_opaque_existential_2Tm(v47);
    }

    else
    {
      *&v28 = 0;
      v26 = 0u;
      v27 = 0u;
      return sub_242C6D138(&v26, &qword_27ECF8220, &qword_242F36100);
    }
  }

  return result;
}

uint64_t sub_242E0CCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-v11];
  v22 = v14;
  v23 = v13;
  v24 = v15;
  result = sub_242DB6258(sub_242E0ED34, v21, v14);
  if (!v3)
  {
    v31 = 0;
    (*(v7 + 16))(v12, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8218, &qword_242F360F8);
    if (swift_dynamicCast())
    {
      sub_242C65564(&v25, v28);
      v17 = v29;
      v18 = v30;
      __swift_project_boxed_opaque_existential_2Tm(v28, v29);
      *(&v26 + 1) = v17;
      v27 = v18;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
      v20 = v31;
      sub_242E0AAD8(a2, v17, v18, boxed_opaque_existential_1);
      if (v20)
      {
        __swift_deallocate_boxed_opaque_existential_1(&v25);
      }

      else
      {
        swift_dynamicCast();
        (*(v7 + 40))(a1, v9, a3);
      }

      return __swift_destroy_boxed_opaque_existential_2Tm(v28);
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      return sub_242C6D138(&v25, &qword_27ECF8220, &qword_242F36100);
    }
  }

  return result;
}

uint64_t sub_242E0CF00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a5;
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v16 - 8);
  MEMORY[0x28223BE20](v17);
  v30 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  v22 = sub_242F03900();
  v23 = sub_242E0DB84(v22, a2, a3, a3, v22);
  sub_242F05C00();
  if (!swift_dynamicCastClass())
  {
  }

  v31 = v23;
  v24 = *(v13 + 16);
  v29 = a4;
  v24(v15, a4, a6);
  v25 = swift_readAtKeyPath();
  v28 = *(v34 + 16);
  v28(v21);
  v25(v33, 0);
  (*(v13 + 8))(v15, a6);
  sub_242E0CCDC(v21, v32, a7);
  if (v7)
  {
    (*(v34 + 8))(v21, a7);
  }

  else
  {
    (v28)(v30, v21, a7);
    swift_setAtWritableKeyPath();

    return (*(v34 + 8))(v21, a7);
  }
}

uint64_t sub_242E0D1DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F063B0();
  if (v2 != 1)
  {
    MEMORY[0x245D279A0](v1);
  }

  return sub_242F063E0();
}

void sub_242E0D268(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_242F04DD0();
  sub_242F063B0();
  if (v3 != 1)
  {
    MEMORY[0x245D279A0](v2);
  }
}

uint64_t sub_242E0D2CC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_242F06390();
  sub_242F04DD0();
  sub_242F063B0();
  if (v3 != 1)
  {
    MEMORY[0x245D279A0](v2);
  }

  return sub_242F063E0();
}

uint64_t sub_242E0D354@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_242E0D374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_242F05F60();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_242E0D3D0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_242F06110(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_242E0D454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E0A34C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E0D490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E0A34C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_242E0D4CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(__src, v2, sizeof(__src));
  sub_242D48DCC(__dst, v7);
  sub_242E0C5DC(__src, a1);
  if (!v3)
  {
    return memcpy(a2, __src, 0x150uLL);
  }

  memcpy(v7, __src, sizeof(v7));
  return sub_242D48E28(v7);
}

void *sub_242E0D580@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(__src, v2, sizeof(__src));
  sub_242C6CDD4(__dst, v7);
  sub_242E0C770(__src, a1);
  if (!v3)
  {
    return memcpy(a2, __src, 0x250uLL);
  }

  memcpy(v7, __src, sizeof(v7));
  return sub_242C6CE30(v7);
}

double sub_242E0D634@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 40);
  v9 = *v2;
  v10 = *(v2 + 8);
  v11 = *(v2 + 24);
  v12 = v6;

  sub_242E0C904(&v9, a1);
  v7 = v12;
  if (v3)
  {
  }

  else
  {
    *a2 = v9;
    *(a2 + 8) = v10;
    result = *&v11;
    *(a2 + 24) = v11;
    *(a2 + 40) = v7;
  }

  return result;
}

__n128 sub_242E0D6DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 80);
  v7 = *(v2 + 112);
  v34 = *(v2 + 96);
  v35 = v7;
  v8 = *(v2 + 16);
  v9 = *(v2 + 48);
  v30 = *(v2 + 32);
  v31 = v9;
  v10 = *(v2 + 48);
  v11 = *(v2 + 80);
  v32 = *(v2 + 64);
  v33 = v11;
  v12 = *(v2 + 16);
  v29[0] = *v2;
  v29[1] = v12;
  v13 = *(v2 + 112);
  v26 = v34;
  v27 = v13;
  v22 = v30;
  v23 = v10;
  v24 = v32;
  v25 = v6;
  v36 = *(v2 + 128);
  v28 = *(v2 + 128);
  v20 = v29[0];
  v21 = v8;
  sub_242E0EBBC(v29, v18);
  sub_242E0CAA0(&v20, a1);
  if (v3)
  {
    v18[6] = v26;
    v18[7] = v27;
    v19 = v28;
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v18[5] = v25;
    v18[0] = v20;
    v18[1] = v21;
    sub_242E0EC18(v18);
  }

  else
  {
    v15 = v27;
    *(a2 + 96) = v26;
    *(a2 + 112) = v15;
    *(a2 + 128) = v28;
    v16 = v23;
    *(a2 + 32) = v22;
    *(a2 + 48) = v16;
    v17 = v25;
    *(a2 + 64) = v24;
    *(a2 + 80) = v17;
    result = v21;
    *a2 = v20;
    *(a2 + 16) = result;
  }

  return result;
}

void sub_242E0D7EC(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_242CE519C(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_242D07E1C(v15, v4 & 1);
    v10 = sub_242CE519C(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_242F06320();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_242D03340();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ECF1F50, &qword_242F304D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_242F05A80();
    MEMORY[0x245D26660](0xD00000000000001BLL, 0x8000000242F59E10);
    sub_242F05C20();
    MEMORY[0x245D26660](39, 0xE100000000000000);
    sub_242F05C60();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v8 = *(v4 - 1);
      v26 = *v4;
      v27 = *a3;

      v28 = sub_242CE519C(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_242D07E1C(v32, 1);
        v28 = sub_242CE519C(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v8;
      v36[1] = v26;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_242E0DB84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (sub_242F03910())
  {
    v6 = *a3;
    if (*a3 - 2048) < 0xFFFFFFFFFFFFF801 || ((v8 = sub_242F038C0(), v8 < 0x800) ? (v9 = v8 == v6) : (v9 = 0), !v9 ? (v10 = 0) : (v10 = 1), (v6 - 515) < 2 || (v10))
    {
      sub_242F05F70();
    }

    else
    {
      sub_242F05C00();
    }
  }

  else
  {
    sub_242F064E0();
  }

  return sub_242F064D0();
}

uint64_t sub_242E0DC4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *a1;
  v8 = a1[1];
  v9 = sub_242F03900();
  v10 = a4(0);
  return sub_242E0CF00(v9, v7, v8, a2, a3, v10, v9);
}

uint64_t sub_242E0DCD4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if (a6)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (a6 == 3)
        {
          goto LABEL_10;
        }
      }

      else if (a6 == 4)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if (a6 != 2)
    {
      return 0;
    }
  }

LABEL_10:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_242F06110();
  }
}

unint64_t sub_242E0DD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8178;
  if (!qword_27ECF8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8178);
  }

  return result;
}

uint64_t dynamic_cast_existential_3_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (swift_conformsToProtocol2())
      {
        return a1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_242E0DE90(unint64_t *isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v4 = 0;
  v35 = isUniquelyReferenced_nonNull_native + 1;
  v36 = isUniquelyReferenced_nonNull_native + 8;
  v5 = a2 + 56;
  v34 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = v4;
    v7 = *isUniquelyReferenced_nonNull_native;
    if (*isUniquelyReferenced_nonNull_native > 0x7FF)
    {
LABEL_6:
      v8 = v36;
      v9 = 36;
LABEL_7:
      v10 = *(*v8 + v9);
LABEL_8:
      if (v4 == v10)
      {
        return;
      }

      goto LABEL_9;
    }

    if (v7 == 512)
    {
      v8 = v35;
      v9 = 20;
      goto LABEL_7;
    }

    if (!v7)
    {
      goto LABEL_6;
    }

    if (sub_242F038D0() == v7)
    {
      sub_242F03890();
      v10 = sub_242F03870();
      if (sub_242F03870() < 0)
      {
        goto LABEL_55;
      }

      v32 = sub_242F03870();
      if (v10 < 0 || v32 < v10)
      {
        goto LABEL_56;
      }

      goto LABEL_8;
    }

    if (!v4)
    {
      return;
    }

LABEL_9:
    v11 = *isUniquelyReferenced_nonNull_native;
    if (*isUniquelyReferenced_nonNull_native > 0x7FF)
    {
      goto LABEL_12;
    }

    if (v11 == 512)
    {
      v12 = v35;
      v13 = 20;
      goto LABEL_13;
    }

    if (!v11)
    {
LABEL_12:
      v12 = v36;
      v13 = 36;
LABEL_13:
      v14 = *(*v12 + v13);
      goto LABEL_14;
    }

    if (sub_242F038D0() == v11)
    {
      sub_242F03890();
      v14 = sub_242F03870();
      if (sub_242F03870() < 0)
      {
        goto LABEL_57;
      }

      v33 = sub_242F03870();
      if (v14 < 0 || v33 < v14)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_14:
    if (v4 >= v14)
    {
      break;
    }

    v15 = *isUniquelyReferenced_nonNull_native;
    v16 = sub_242F038D0();
    if (v15 > 0x7FF)
    {
      if (v16 - 2048 < 0xFFFFFFFFFFFFF801)
      {
        goto LABEL_20;
      }
    }

    else if (v16 >= 0x800)
    {
      if (!v15)
      {
LABEL_20:
        sub_242F03890();
        sub_242F03880();
        v17 = sub_242F03850();
        goto LABEL_23;
      }
    }

    else if (v15 == v16)
    {
      goto LABEL_20;
    }

    sub_242F038A0();
    v17 = sub_242F05080();
LABEL_23:
    v19 = v17;
    v20 = v18;
    ++v4;
    if (*(a2 + 16) && (sub_242F06390(), sub_242F04DD0(), v21 = sub_242F063E0(), v22 = -1 << *(a2 + 32), v23 = v21 & ~v22, ((*(v5 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
    {
      v24 = ~v22;
      while (1)
      {
        v25 = (*(a2 + 48) + 16 * v23);
        v26 = *v25 == v19 && v25[1] == v20;
        if (v26 || (sub_242F06110() & 1) != 0)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v5 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      v27 = swift_isUniquelyReferenced_nonNull_native();
      v28 = v34;
      if ((v27 & 1) == 0)
      {
        sub_242E3BED0(0, *(v34 + 16) + 1, 1);
        v28 = v34;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_242E3BED0((v29 > 1), v30 + 1, 1);
        v28 = v34;
      }

      *(v28 + 16) = v30 + 1;
      v34 = v28;
      v31 = v28 + 16 * v30;
      *(v31 + 32) = v6;
      *(v31 + 40) = isUniquelyReferenced_nonNull_native;
    }

    else
    {
LABEL_2:
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_242E0E258(NSObject *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v79 = a4;
  v80 = a8;
  v81 = a3;
  v76 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v83 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_242F05860();
  v74 = *(v17 - 8);
  v75 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v69 - v18;
  v78 = *(a7 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v82 = v69 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v69 - v26;
  v28 = sub_242F03900();
  v29 = sub_242E0DB84(v28, a1, a2, a2, v28);
  sub_242F05C00();
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v72 = v30;
    v73 = v27;
    v77 = v29;
    v70 = v22;
    v71 = a5;
    v69[1] = a1;
    v31 = sub_242F038F0();
    v79 = a6;
    v32 = v81;
    sub_242E0B5F0(v31, v33, a6, a7, v80, v19, a11);

    v34 = v78;
    if ((*(v78 + 48))(v19, 1, a7) == 1)
    {

      return (*(v74 + 8))(v19, v75);
    }

    else
    {
      v41 = v73;
      (*(v34 + 32))(v73, v19, a7);
      if (qword_27ECEF4D8 != -1)
      {
        swift_once();
      }

      v42 = sub_242F039D0();
      __swift_project_value_buffer(v42, qword_27ED5D328);
      v43 = v76;
      v44 = v79;
      (*(v76 + 16))(v83, v32, v79);
      v80 = *(v34 + 16);
      v81 = v34 + 16;
      v80(v82, v41, a7);

      v45 = sub_242F039B0();
      v46 = sub_242F056E0();

      LODWORD(v75) = v46;
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v69[0] = v45;
        v48 = v47;
        v74 = swift_slowAlloc();
        v84[0] = v74;
        *v48 = 136315650;
        v49 = sub_242F038F0();
        v50 = v43;
        v52 = sub_242C8FD38(v49, v51, v84);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        v53 = v44;
        v54 = v70;
        v55 = v83;
        swift_getAtKeyPath();
        v56 = sub_242F04F90();
        v58 = v57;
        (*(v50 + 8))(v55, v53);
        v59 = sub_242C8FD38(v56, v58, v84);

        *(v48 + 14) = v59;
        *(v48 + 22) = 2080;
        v60 = v82;
        v80(v54, v82, a7);
        v61 = sub_242F04F90();
        v63 = v62;
        v64 = *(v34 + 8);
        v64(v60, a7);
        v65 = sub_242C8FD38(v61, v63, v84);

        *(v48 + 24) = v65;
        v66 = v69[0];
        _os_log_impl(&dword_242C53000, v69[0], v75, "Override applied for %s: %s → %s", v48, 0x20u);
        v67 = v74;
        swift_arrayDestroy();
        MEMORY[0x245D287D0](v67, -1, -1);
        MEMORY[0x245D287D0](v48, -1, -1);
      }

      else
      {

        v64 = *(v34 + 8);
        v64(v82, a7);
        (*(v43 + 8))(v83, v44);
        v54 = v70;
      }

      v68 = v73;
      v80(v54, v73, a7);
      swift_beginAccess();
      swift_setAtWritableKeyPath();
      swift_endAccess();

      return (v64)(v68, a7);
    }
  }

  else
  {

    v36 = sub_242F038F0();
    v38 = v37;
    sub_242E0DD68(v36, v37, v39);
    swift_allocError();
    *v40 = v36;
    *(v40 + 8) = v38;
    *(v40 + 16) = 2;
    return swift_willThrow();
  }
}

uint64_t sub_242E0E954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_242E0EA00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242E0EA48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

unint64_t sub_242E0EAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8200;
  if (!qword_27ECF8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8200);
  }

  return result;
}

unint64_t sub_242E0EB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8208;
  if (!qword_27ECF8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8208);
  }

  return result;
}

unint64_t sub_242E0EB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8210;
  if (!qword_27ECF8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8210);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x245D287D0);
  }

  return result;
}

uint64_t sub_242E0ECDC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_242E0ED34(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_242F03900();
  return sub_242E0CF00(v7, v5, v6, v3, v4, v2, v7);
}

unint64_t sub_242E0EDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8260;
  if (!qword_27ECF8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8260);
  }

  return result;
}

unint64_t sub_242E0EE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8268;
  if (!qword_27ECF8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8268);
  }

  return result;
}

uint64_t sub_242E0EEA4(uint64_t *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_242F03900();
  return sub_242E0CF00(v8, v6, v7, v5, v4, a2, v8);
}

unint64_t sub_242E0EF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8270;
  if (!qword_27ECF8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8270);
  }

  return result;
}

uint64_t sub_242E0EF90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E0EFF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242E0F088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242E0F0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E0F138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestContentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ConcentricRingsConfiguration.dataIdentifiers.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 6);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 6) = v3;
}

uint64_t ConcentricRingsConfiguration.dataIdentifiers.setter(uint64_t result)
{
  v2 = *(result + 4);
  v3 = *(result + 6);
  *v1 = *result;
  *(v1 + 4) = v2;
  *(v1 + 6) = v3;
  return result;
}

uint64_t ConcentricRingsConfiguration.colorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 56);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t ConcentricRingsConfiguration.colorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  return result;
}

__n128 ConcentricRingsConfiguration.primaryAngleConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 16) = v2;
  result = *(v1 + 88);
  *(a1 + 24) = result;
  return result;
}

__n128 ConcentricRingsConfiguration.primaryAngleConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v2;
  result = *(a1 + 24);
  *(v1 + 88) = result;
  return result;
}

__n128 ConcentricRingsConfiguration.secondaryAngleConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 104);
  *(a1 + 16) = v2;
  result = *(v1 + 128);
  *(a1 + 24) = result;
  return result;
}

__n128 ConcentricRingsConfiguration.secondaryAngleConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v2;
  result = *(a1 + 24);
  *(v1 + 128) = result;
  return result;
}

__n128 ConcentricRingsConfiguration.init(dataIdentifiers:ringsNumber:ringWidth:ringsGap:targetDigiBarWidth:targetDigiBarInset:spacing:inset:colorID:primaryAngleConfiguration:secondaryAngleConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>, float a8@<S1>, float a9@<S2>, float a10@<S3>, float a11@<S4>, float a12@<S5>)
{
  v12 = *(a1 + 4);
  v13 = *(a1 + 6);
  v14 = *(a3 + 16);
  v15 = *(a4 + 16);
  v16 = *(a5 + 16);
  *a6 = *a1;
  *(a6 + 4) = v12;
  *(a6 + 6) = v13;
  *(a6 + 8) = a2;
  *(a6 + 16) = a7;
  *(a6 + 20) = a8;
  *(a6 + 24) = a9;
  *(a6 + 28) = a10;
  *(a6 + 32) = a11;
  *(a6 + 36) = a12;
  *(a6 + 40) = *a3;
  *(a6 + 56) = v14;
  *(a6 + 64) = *a4;
  *(a6 + 80) = v15;
  *(a6 + 88) = *(a4 + 24);
  *(a6 + 104) = *a5;
  *(a6 + 120) = v16;
  result = *(a5 + 24);
  *(a6 + 128) = result;
  return result;
}

unint64_t sub_242E0F4F4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E65644961746164;
    v7 = 0x74646957676E6972;
    v8 = 0x70614773676E6972;
    if (a1 != 3)
    {
      v8 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6D754E73676E6972;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x4449726F6C6F63;
    v2 = 0xD00000000000001BLL;
    if (a1 == 9)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    v4 = 0x676E6963617073;
    if (a1 != 6)
    {
      v4 = 0x7465736E69;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242E0F680@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E10A74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E0F6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E106D4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E0F6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E106D4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ConcentricRingsConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8298, &qword_242F36160);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - v6;
  v8 = *(v2 + 4);
  v9 = *(v2 + 6);
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v54 = *(v2 + 20);
  v55 = v11;
  v12 = *(v2 + 24);
  v52 = *(v2 + 28);
  v53 = v12;
  v13 = *(v2 + 32);
  v50 = *(v2 + 36);
  v51 = v13;
  v14 = *(v2 + 48);
  v57 = *(v2 + 40);
  v58 = v10;
  v56 = v14;
  v65 = *(v2 + 56);
  v15 = *(v2 + 64);
  v16 = *(v2 + 72);
  LODWORD(v10) = *(v2 + 80);
  v17 = *(v2 + 88);
  v18 = *(v2 + 96);
  v19 = *(v2 + 104);
  v20 = *(v2 + 112);
  v48 = *(v2 + 120);
  v49 = v10;
  v21 = *(v2 + 128);
  v22 = *(v2 + 136);
  v23 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E106D4(v23, v24, v25);
  v26 = sub_242F064C0();
  LODWORD(v60) = *v2;
  WORD2(v60) = v8;
  BYTE6(v60) = v9;
  v66 = 0;
  sub_242E10728(v26, v27, v28);
  v29 = v59;
  sub_242F05F20();
  if (v29)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v30 = v65;
  v31 = v56;
  v32 = v57;
  v45 = v18;
  v46 = v17;
  v47 = v16;
  v59 = v15;
  v41 = v22;
  v42 = v21;
  v43 = v20;
  v44 = v19;
  LOBYTE(v60) = 1;
  sub_242F05F00();
  LOBYTE(v60) = 2;
  sub_242F05EF0();
  LOBYTE(v60) = 3;
  sub_242F05EF0();
  LOBYTE(v60) = 4;
  sub_242F05EF0();
  LOBYTE(v60) = 5;
  sub_242F05EF0();
  LOBYTE(v60) = 6;
  sub_242F05EF0();
  LOBYTE(v60) = 7;
  sub_242F05EF0();
  v60 = v32;
  v61 = v31;
  v62 = v30;
  v66 = 8;
  v33 = sub_242C7CE5C(v32, v31, v30);
  sub_242C7DEA0(v33, v34, v35);
  sub_242F05F20();
  v36 = sub_242C7CEB0(v60, v61, v62);
  v60 = v59;
  v61 = v47;
  v62 = v49;
  v63 = v46;
  v64 = v45;
  v66 = 9;
  sub_242CCED74(v36, v37, v38);
  sub_242F05F20();
  v60 = v44;
  v61 = v43;
  v62 = v48;
  v63 = v42;
  v64 = v41;
  v66 = 10;
  sub_242F05F20();
  return (*(v5 + 8))(v7, 0);
}

uint64_t ConcentricRingsConfiguration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 96);
  v12 = *(v1 + 88);
  v13 = *(v1 + 104);
  v16 = *(v1 + 128);
  v14 = *(v1 + 112);
  v15 = *(v1 + 136);
  v4 = PowermeterDataIdentifiers.hash(into:)(a1);
  MEMORY[0x245D279A0](v2, v4);
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  sub_242F063C0();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x245D279D0](*&v5);
  v6 = v10;
  if (v10 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x245D279D0](*&v6);
  sub_242F063B0();
  sub_242C9457C(v12, v11);
  v7 = v13;
  if (v13 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x245D279D0](*&v7);
  v8 = v14;
  if (v14 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x245D279D0](*&v8);
  sub_242F063B0();

  return sub_242C9457C(v16, v15);
}

uint64_t ConcentricRingsConfiguration.hashValue.getter()
{
  sub_242F06390();
  ConcentricRingsConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t ConcentricRingsConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF82B0, &qword_242F36168);
  v5 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v7 = &v51 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E106D4(v8, v9, v10);
  v11 = sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v66 = a2;
  v67 = v5;
  LOBYTE(v68) = 0;
  sub_242E1077C(v11, v12, v13);
  sub_242F05E00();
  v64 = BYTE2(v77);
  v65 = BYTE1(v77);
  v62 = v77;
  v63 = BYTE3(v77);
  v14 = BYTE4(v77);
  v15 = BYTE5(v77);
  v16 = BYTE6(v77);
  LOBYTE(v77) = 1;
  v17 = sub_242F05DE0();
  v59 = v16;
  v60 = v15;
  v61 = v14;
  v58 = v17;
  LOBYTE(v77) = 2;
  sub_242F05DD0();
  v19 = v18;
  LOBYTE(v77) = 3;
  sub_242F05DD0();
  v21 = v20;
  LOBYTE(v77) = 4;
  sub_242F05DD0();
  v23 = v22;
  LOBYTE(v77) = 5;
  sub_242F05DD0();
  v25 = v24;
  LOBYTE(v77) = 6;
  sub_242F05DD0();
  v27 = v26;
  LOBYTE(v77) = 7;
  v28 = sub_242F05DD0();
  v30 = v29;
  LOBYTE(v68) = 8;
  sub_242C7DFAC(v28, v31, v32);
  v33 = sub_242F05E00();
  v34 = v77;
  v35 = v78;
  v57 = v79;
  LOBYTE(v68) = 9;
  sub_242CCEE1C(v33, v36, v37);
  sub_242F05E00();
  v55 = v78;
  v56 = v77;
  v38 = v79;
  v39 = v81;
  v40 = v82;
  v99 = 10;
  sub_242F05E00();
  (*(v67 + 8))(v7, v107);
  v53 = v101;
  v54 = v100;
  v52 = v102;
  v67 = *(&v103 + 1);
  v107 = v103;
  LOBYTE(v14) = v62;
  LOBYTE(v68) = v62;
  BYTE1(v68) = v65;
  BYTE2(v68) = v64;
  BYTE3(v68) = v63;
  BYTE4(v68) = v61;
  BYTE5(v68) = v60;
  BYTE6(v68) = v59;
  v41 = v58;
  *(&v68 + 1) = v58;
  *&v69 = __PAIR64__(v21, v19);
  *(&v69 + 1) = __PAIR64__(v25, v23);
  *&v70 = __PAIR64__(v30, v27);
  v51 = v34;
  *(&v70 + 1) = v34;
  *&v71 = v35;
  BYTE8(v71) = v57;
  *&v72 = v56;
  *(&v72 + 1) = v55;
  LOBYTE(v73) = v38;
  *(&v73 + 1) = v39;
  *&v74 = v40;
  *(&v74 + 1) = v100;
  *&v75 = v101;
  BYTE8(v75) = v102;
  v76 = v103;
  v42 = v68;
  v43 = v69;
  v44 = v71;
  v45 = v66;
  v66[2] = v70;
  v45[3] = v44;
  *v45 = v42;
  v45[1] = v43;
  v46 = v72;
  v47 = v73;
  v48 = v76;
  v45[7] = v75;
  v45[8] = v48;
  v49 = v74;
  v45[5] = v47;
  v45[6] = v49;
  v45[4] = v46;
  sub_242E107D0(&v68, &v77);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  LOBYTE(v77) = v14;
  BYTE1(v77) = v65;
  BYTE2(v77) = v64;
  BYTE3(v77) = v63;
  BYTE4(v77) = v61;
  BYTE5(v77) = v60;
  BYTE6(v77) = v59;
  v78 = v41;
  v79 = v19;
  v80 = v21;
  v81 = __PAIR64__(v25, v23);
  v82 = __PAIR64__(v30, v27);
  v83 = v51;
  v84 = v35;
  v85 = v57;
  *&v86[3] = *(v106 + 3);
  *v86 = v106[0];
  v87 = v56;
  v88 = v55;
  v89 = v38;
  *&v90[3] = *&v105[3];
  *v90 = *v105;
  v91 = v39;
  v92 = v40;
  v93 = v54;
  v94 = v53;
  v95 = v52;
  *v96 = *v104;
  *&v96[3] = *&v104[3];
  v97 = v107;
  v98 = v67;
  return sub_242E10808(&v77);
}

uint64_t sub_242E10360()
{
  sub_242F06390();
  ConcentricRingsConfiguration.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242E103A4(uint64_t a1)
{
  sub_242F06390();
  ConcentricRingsConfiguration.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI28ConcentricRingsConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 6);
  v6 = *(a1 + 8);
  v7 = *(a1 + 32);
  v8 = *(a1 + 36);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v46 = *(a1 + 64);
  v40 = *(a1 + 72);
  v38 = *(a1 + 80);
  v45 = *(a1 + 88);
  v42 = *(a1 + 96);
  v34 = *(a1 + 120);
  v35 = *(a1 + 128);
  v36 = *(a1 + 104);
  v12 = *(a2 + 8);
  v13 = *(a2 + 32);
  v14 = *(a2 + 36);
  v44 = *(a2 + 64);
  v39 = *(a2 + 72);
  v37 = *(a2 + 80);
  v43 = *(a2 + 88);
  v41 = *(a2 + 96);
  v31 = *(a2 + 120);
  v32 = *(a2 + 128);
  v33 = *(a2 + 104);
  LODWORD(v47[0]) = *a1;
  WORD2(v47[0]) = v4;
  BYTE6(v47[0]) = v5;
  v15 = _s14CarPlayAssetUI31DriverAssistanceDataIdentifiersV2eeoiySbAC_ACtFZ_0(v47);
  v16 = 0;
  if ((v15 & 1) != 0 && (~vaddvq_s32(vandq_s8(vceqq_f32(*(a1 + 16), *(a2 + 16)), xmmword_242F0D230)) & 0xF) == 0 && v7 == v13 && v8 == v14 && v6 == v12)
  {
    v47[0] = v9;
    v47[1] = v10;
    v48 = v11;
    v17 = Theme.ColorID.rawValue.getter();
    v19 = v18;
    if (v17 == Theme.ColorID.rawValue.getter() && v19 == v20)
    {

      v16 = 0;
      v21.f64[0] = v46;
      v21.f64[1] = v40;
      v22.f64[0] = v45;
      v22.f64[1] = v42;
      v23.f64[0] = v44;
      v23.f64[1] = v39;
      v24.f64[0] = v43;
      v24.f64[1] = v41;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v21, v23), vceqq_f64(v22, v24)))) & 1) == 0)
      {
        return v16 & 1;
      }
    }

    else
    {
      v25 = sub_242F06110();

      v16 = 0;
      if ((v25 & 1) == 0)
      {
        return v16 & 1;
      }

      v26.f64[0] = v46;
      v26.f64[1] = v40;
      v27.f64[0] = v45;
      v27.f64[1] = v42;
      v28.f64[0] = v44;
      v28.f64[1] = v39;
      v29.f64[0] = v43;
      v29.f64[1] = v41;
      if ((~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v26, v28), vceqq_f64(v27, v29)), xmmword_242F0D230)) & 0xF) != 0)
      {
        return v16 & 1;
      }
    }

    if (((v38 ^ v37) & 1) == 0)
    {
      v16 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v36, v33), vceqq_f64(v35, v32)))) & (v34 ^ v31 ^ 1);
    }
  }

  return v16 & 1;
}

unint64_t sub_242E106D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF82A0;
  if (!qword_27ECF82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF82A0);
  }

  return result;
}

unint64_t sub_242E10728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF82A8;
  if (!qword_27ECF82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF82A8);
  }

  return result;
}

unint64_t sub_242E1077C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF82B8;
  if (!qword_27ECF82B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF82B8);
  }

  return result;
}

unint64_t sub_242E1083C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF82C0;
  if (!qword_27ECF82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF82C0);
  }

  return result;
}

uint64_t sub_242E10890(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 144))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242E108E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_242E10970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF82C8;
  if (!qword_27ECF82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF82C8);
  }

  return result;
}

unint64_t sub_242E109C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF82D0;
  if (!qword_27ECF82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF82D0);
  }

  return result;
}

unint64_t sub_242E10A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF82D8;
  if (!qword_27ECF82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF82D8);
  }

  return result;
}

uint64_t sub_242E10A74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEF73726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D754E73676E6972 && a2 == 0xEB00000000726562 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74646957676E6972 && a2 == 0xE900000000000068 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70614773676E6972 && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5BB40 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5BB60 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7465736E69 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4449726F6C6F63 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000242F5BB80 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F5BBA0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_242E10E04(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_242F03400();
  MEMORY[0x28223BE20](v8);
  v9 = *a1;
  v15 = a2;
  v16 = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v4, a2);
  if (v9 == 2)
  {
    v11 = asLua(codable:)(v14);
  }

  else
  {
    sub_242F03440();
    swift_allocObject();
    sub_242F03430();
    byte_27ECF3A00 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D50, &qword_242F2F500);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_242F0A4E0;
    sub_242F033E0();
    sub_242F033F0();
    v17 = v12;
    sub_242E1443C(&qword_27ECF5D58, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5D60, &qword_242F2F508);
    sub_242DC3C94();
    sub_242F05930();
    sub_242F03410();
    __swift_project_boxed_opaque_existential_2Tm(v14, v15);
    v11 = sub_242F03420();
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v14);
  return v11;
}

id sub_242E110C0(void *a1)
{
  v2 = v1;
  v4 = sub_242F03390();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_242F033A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v22[4] = *a1;
  v22[5] = v9;
  v22[2] = 47;
  v22[3] = 0xE100000000000000;
  v22[0] = 95;
  v22[1] = 0xE100000000000000;
  sub_242C6CB78(v10, v11, v12);
  v13 = sub_242F058D0();
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v22[7] = v2;
    v16 = NSFileWrapper.fileWrapper(named:)(*&v13);
    if (!v16)
    {
      v17 = objc_allocWithZone(MEMORY[0x277CCAA20]);
      sub_242C6CBCC();
      v18 = sub_242F04CC0();
      v2 = [v17 initDirectoryWithFileWrappers_];

      v19 = sub_242F04F00();

      [v2 setPreferredFilename_];

      NSFileWrapper.checkedAddFileWrapper(_:)(v2);
      if (!v20)
      {

        return v2;
      }

      goto LABEL_9;
    }

    v2 = v16;

    if (([v2 isDirectory] & 1) == 0)
    {
      sub_242F03370();
      sub_242CE678C(MEMORY[0x277D84F90]);
      sub_242E1443C(&qword_27ECEFA98, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
      sub_242F035C0();
      sub_242F03310();
      (*(v6 + 8))(v8, v5);
      swift_willThrow();
LABEL_9:
    }
  }

  else
  {

    sub_242F03380();
    sub_242CE678C(MEMORY[0x277D84F90]);
    sub_242E1443C(&qword_27ECEFA98, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_242F035C0();
    sub_242F03310();
    (*(v6 + 8))(v8, v5);
    swift_willThrow();
  }

  return v2;
}

uint64_t asLua(codable:)(void *a1)
{
  v3 = sub_242F04F80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LuaEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = sub_242CE6468(MEMORY[0x277D84F90]);
  byte_27ECF3A00 = 2;
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, v8);
  v11 = inited;
  v12 = sub_242DD6E14(v10, v8, v9);
  if (v1)
  {
    goto LABEL_4;
  }

  v14 = v12;
  v26 = v12;
  v27 = v13;
  v15 = v13;
  v16 = sub_242F04F70();
  sub_242D5FF08(v16, v17, v18);
  result = sub_242F04F50();
  if (v20)
  {
    v21 = result;
    v22 = v20;
    sub_242C6CCC0(v14, v15);
    v26 = 0x206E7275746572;
    v27 = 0xE700000000000000;
    MEMORY[0x245D26660](v21, v22);

    sub_242F04F70();
    v11 = sub_242F04F40();
    v24 = v23;

    result = (*(v4 + 8))(v6, v3);
    if (v24 >> 60 != 15)
    {
LABEL_4:

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DocumentReader.DocumentType.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  MEMORY[0x245D279A0](v1);
  return sub_242F063E0();
}

CarPlayAssetUI::DocumentReader __swiftcall DocumentReader.init(fileWrapper:source:)(CarPlayAssetUI::DocumentReader fileWrapper, CarPlayAssetUI::DocumentReader::DocumentType source)
{
  v3 = *source;
  *v2 = fileWrapper.fileWrapper.super.isa;
  *(v2 + 8) = v3;
  fileWrapper.source = source;
  return fileWrapper;
}

void DocumentReader.document(_:)(uint64_t a1@<X8>)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  NSFileWrapper.data(contentsOf:)(0x2E6567616B636170, 0xEC0000006E6F736ALL);
  if (!v2)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_242F033D0();
    swift_allocObject();
    v11 = sub_242F033C0();
    sub_242E13B90(v11, v12, v13);
    sub_242F033B0();
    v61 = a1;

    v14 = *(v87 + 16);
    if (v14)
    {
      v68 = v10;
      v79 = MEMORY[0x277D84F90];
      *&v66 = v14;
      sub_242E3BC90(0, v14, 0);
      if (*(v87 + 16))
      {
        v88 = v79;
        v15 = v87 + 32;
        v16 = type metadata accessor for DocumentReader.DisplayReader();
        v17 = 0;
        v18 = 1;
        v62 = v16;
        v67 = v8;
        v63 = v5;
        v64 = v87 + 32;
        *&v65 = v87;
        while (1)
        {
          v19 = (v15 + 592 * v17);
          v69 = v18;
          memcpy(v77, v19, sizeof(v77));
          memcpy(v76, v19, sizeof(v76));
          memmove(v78, v19, 0x250uLL);
          memcpy(v72, v78, 0x250uLL);
          v71 = v5;
          swift_allocObject();
          sub_242C6CDD4(v77, v70);
          sub_242C6CDD4(v77, v70);
          v20 = v4;
          sub_242C6CDD4(v78, v70);
          v21 = sub_242E120E8(v72, v20, &v71);
          v22 = v9;
          v23 = *(&v78[1] + 1);
          v75 = &off_28558D348;
          v74 = v16;
          v73[0] = v21;
          v24 = *(*(&v78[1] + 1) + 16);
          if (v24)
          {
            break;
          }

LABEL_11:
          v26 = *&v78[28];
          if (*&v78[28])
          {
            MEMORY[0x28223BE20](v21);
            v60 = v73;
            v9 = v22;
            v27 = sub_242C85E8C(sub_242E13C08, v59, v26);
          }

          else
          {
            v27 = 0;
            v9 = v22;
          }

          v8 = v67;
          v28 = *(&v78[28] + 1);
          *&v76[28] = v27;
          if (*(&v78[28] + 1))
          {
            MEMORY[0x28223BE20](v21);
            v60 = v73;
            v29 = sub_242C85C78(sub_242E13C24, v59, v28);
          }

          else
          {
            v29 = 0;
          }

          *(&v76[28] + 1) = v29;
          v30 = Display.vectorFontManager.modify();
          if (*v31)
          {
            VectorFontManager.restoreAssets(from:)(v73);
          }

          (v30)(v72, 0);
          if ((~BYTE8(v76[5]) & 0xFE) != 0)
          {
            ImageAsset.restore(from:)(v73);
          }

          if ((~LOBYTE(v76[10]) & 0xFE) != 0)
          {
            ImageAsset.restore(from:)(v73);
          }

          if ((~BYTE8(v76[14]) & 0xFE) != 0)
          {
            ImageAsset.restore(from:)(v73);
          }

          if ((~LOBYTE(v76[19]) & 0xFE) != 0)
          {
            ImageAsset.restore(from:)(v73);
          }

          ImageAsset.restore(from:)(v73);
          ImageAsset.restore(from:)(v73);
          v32 = v74;
          v33 = v75;
          __swift_project_boxed_opaque_existential_2Tm(v73, v74);
          v34 = (v33[2])(v32, v33);

          sub_242C6CE30(v77);
          *(&v76[35] + 1) = v34;
          __swift_destroy_boxed_opaque_existential_2Tm(v73);
          memcpy(v72, v76, 0x250uLL);
          v35 = v88;
          v79 = v88;
          v37 = *(v88 + 16);
          v36 = *(v88 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_242E3BC90((v36 > 1), v37 + 1, 1);
            v35 = v79;
          }

          *(v35 + 16) = v37 + 1;
          v88 = v35;
          memcpy((v35 + 592 * v37 + 32), v72, 0x250uLL);
          v17 = v69;
          v15 = v64;
          if (v69 == v66)
          {

            v38 = v88;
            goto LABEL_33;
          }

          v18 = v69 + 1;
          LOBYTE(v5) = v63;
          v16 = v62;
          if (v69 >= *(v65 + 16))
          {
            goto LABEL_37;
          }
        }

        v25 = 0;
        while (1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_242D37ED0(v23);
          }

          if (v25 >= v23[2])
          {
            break;
          }

          type metadata accessor for Layout(0);
          Layout.restoreAssets(from:)(v73);
          ++v25;
          *(&v76[1] + 1) = v23;
          if (v24 == v25)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
      }

LABEL_37:
      __break(1u);
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
LABEL_33:
      v87 = v38;
      NSFileWrapper.data(contentsOf:)(0x736A2E656D656874, 0xEA00000000006E6FLL);
      v40 = v39;
      v42 = v41;
      swift_allocObject();
      v43 = sub_242F033C0();
      sub_242C6CD14(v43, v44, v45);
      sub_242F033B0();

      v68 = *(&v76[0] + 1);
      v69 = *&v76[0];
      v88 = *&v76[3];
      v65 = v76[2];
      v66 = v76[1];
      v46._countAndFlagsBits = 0x736172747845;
      v46._object = 0xE600000000000000;
      v47 = NSFileWrapper.directory(at:creatingIntermediateDirectories:)(v46, 0);
      sub_242C6CCC0(v8, v9);
      sub_242C6CCC0(v40, v42);
      v48 = v84;
      v77[4] = v84;
      v77[5] = v85;
      v49 = v86;
      v77[6] = v86;
      v50 = v87;
      *&v77[7] = v87;
      v51 = v80;
      v52 = v81;
      v77[0] = v80;
      v77[1] = v81;
      v53 = v82;
      v54 = v83;
      v77[2] = v82;
      v77[3] = v83;
      v55 = v61;
      *(v61 + 80) = v85;
      *(v55 + 96) = v49;
      *(v55 + 48) = v54;
      *(v55 + 64) = v48;
      *v55 = v51;
      *(v55 + 16) = v52;
      *(v55 + 32) = v53;
      v56 = MEMORY[0x277D84FA0];
      *(v55 + 112) = v50;
      *(v55 + 120) = v56;
      *(v55 + 128) = MEMORY[0x277D84F98];
      *(v55 + 192) = v47;
      *(v55 + 200) = 0;
      sub_242C66114(v77, v78);
      sub_242E13C40(0, 0, 0, 0, 0, 0);
      v57 = v68;
      *(v55 + 136) = v69;
      *(v55 + 144) = v57;
      v58 = v66;
      *(v55 + 168) = v65;
      *(v55 + 152) = v58;
      *(v55 + 184) = v88;
      v78[4] = v84;
      v78[5] = v85;
      v78[6] = v86;
      *&v78[7] = v87;
      v78[0] = v80;
      v78[1] = v81;
      v78[2] = v82;
      v78[3] = v83;
      sub_242C66414(v78);
    }
  }
}

uint64_t sub_242E120E8(const void *a1, void *a2, _BYTE *a3)
{
  v5 = v3;
  v9 = sub_242F03390();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_242F033A0();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v28[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v29, a1, 0x250uLL);
  LOBYTE(a3) = *a3;
  v13 = v29[1];
  *(v5 + 16) = v29[0];
  *(v5 + 24) = v13;

  sub_242C6CE30(v29);
  *(v5 + 32) = a2;
  *(v5 + 48) = a3;
  v14 = *(v5 + 24);
  v28[0] = *(v5 + 16);
  v28[1] = v14;
  v15 = a2;

  v16 = sub_242E110C0(v28);
  if (v4)
  {

LABEL_8:

    type metadata accessor for DocumentReader.DisplayReader();
    swift_deallocPartialClassInstance();
    return v5;
  }

  v17 = v16;

  v18._object = 0x8000000242F58C10;
  v18._countAndFlagsBits = 0xD000000000000013;
  v27 = v17;
  v19 = NSFileWrapper.fileWrapper(named:)(v18);
  if (!v19)
  {
LABEL_7:
    sub_242F03350();
    sub_242CE678C(MEMORY[0x277D84F90]);
    sub_242E1443C(&qword_27ECEFA98, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_242F035C0();
    sub_242F03310();
    (*(v30 + 8))(v12, v10);
    swift_willThrow();

    goto LABEL_8;
  }

  v20 = v19;
  v21 = [v19 regularFileContents];
  if (!v21)
  {

    goto LABEL_7;
  }

  v22 = v21;
  v23 = sub_242F036B0();
  v25 = v24;

  sub_242F033D0();
  swift_allocObject();
  sub_242F033C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6330, &qword_242F2FF40);
  sub_242E1435C();
  sub_242F033B0();

  sub_242C6CCC0(v23, v25);

  *(v5 + 40) = v28[0];
  return v5;
}

char *sub_242E1245C(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v30 = a1;
  v4 = sub_242F03390();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_242F033A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[3];
  v31[0] = v2[2];
  v31[1] = v9;

  v10 = sub_242E110C0(v31);

  if (!v3)
  {
    v29 = v8;
    v28 = v5;
    v11 = v6;
    v12 = v2[5];
    v13 = v32;
    v14 = v30;
    if (*(v12 + 16) && (v15 = sub_242CE519C(v30, v32), (v16 & 1) != 0))
    {
      v17 = (*(v12 + 56) + 32 * v15);
      v18 = v10;
      v19 = *v17;
      v20 = v17[1];
      swift_bridgeObjectRetain_n();
      v21._countAndFlagsBits = v19;
      v21._object = v20;
      v8 = NSFileWrapper.child(at:)(v21);

      if (v8)
      {

        return v8;
      }

      v24 = v11;
      sub_242F03320();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21C8, &unk_242F2F4F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_242F09510;
      v27 = v19;
      *(inited + 32) = 0x656372756F736572;
      v23 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0xED00006874617020;
      *(inited + 48) = v27;
      *(inited + 56) = v20;
      v10 = v18;
    }

    else
    {
      sub_242F03320();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF21C8, &unk_242F2F4F0);
      inited = swift_initStackObject();
      *(inited + 32) = 0xD000000000000013;
      v23 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 16) = xmmword_242F09510;
      *(inited + 40) = 0x8000000242F5BC90;
      *(inited + 48) = v14;
      *(inited + 56) = v13;

      v24 = v11;
    }

    sub_242CE678C(inited);
    swift_setDeallocating();
    sub_242C6D138(v23, &qword_27ECF21D0, &qword_242F13AD8);
    sub_242E1443C(&qword_27ECEFA98, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    v25 = v29;
    v8 = v28;
    sub_242F035C0();
    sub_242F03310();
    (*(v24 + 8))(v25, v8);
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_242E127E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_242E128CC()
{
  v0 = sub_242F03690();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_27ECF82E0);
  __swift_project_value_buffer(v0, qword_27ECF82E0);
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleURL];

  sub_242F03660();
  sub_242F03640();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_242E12A3C()
{
  v0 = sub_242F03690();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_27ECF82F8);
  __swift_project_value_buffer(v0, qword_27ECF82F8);
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleURL];

  sub_242F03660();
  sub_242F03640();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_242E12BB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_242F03690();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t DocumentWriter.init(fileWrapper:destination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for DocumentWriter(0) + 20);

  return sub_242E13CD0(a2, v4);
}

void DocumentWriter.write(_:)(__int128 *a1)
{
  sub_242E13D54(v3);
  v2[10] = v3[10];
  v2[11] = v3[11];
  v2[12] = v3[12];
  v2[6] = v3[6];
  v2[7] = v3[7];
  v2[8] = v3[8];
  v2[9] = v3[9];
  v2[2] = v3[2];
  v2[3] = v3[3];
  v2[4] = v3[4];
  v2[5] = v3[5];
  v2[0] = v3[0];
  v2[1] = v3[1];
  DocumentWriter.write(_:oldDocument:)(a1, v2);
}

void DocumentWriter.write(_:oldDocument:)(__int128 *a1, __int128 *a2)
{
  v4 = v3;
  v7 = v154;
  v182 = *MEMORY[0x277D85DE8];
  v131 = type metadata accessor for MetadataExporter(0);
  MEMORY[0x28223BE20](v131);
  v133 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8318, &qword_242F36420);
  MEMORY[0x28223BE20](v9 - 8);
  v138 = &v128 - v10;
  v148 = sub_242F03690();
  v144 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v132 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = &v128 - v13;
  MEMORY[0x28223BE20](v14);
  v137 = &v128 - v15;
  MEMORY[0x28223BE20](v16);
  v149 = &v128 - v17;
  v18 = type metadata accessor for DocumentWriter.Destination(0);
  MEMORY[0x28223BE20](v18);
  v134 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v136 = &v128 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v128 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v128 - v26;
  v28 = a1[11];
  v166 = a1[10];
  v167 = v28;
  v29 = a1[7];
  v162 = a1[6];
  v163 = v29;
  v30 = a1[9];
  v164 = a1[8];
  v165 = v30;
  v31 = a1[3];
  v158 = a1[2];
  v159 = v31;
  v32 = a1[5];
  v160 = a1[4];
  v161 = v32;
  v33 = a1[1];
  v156 = *a1;
  v157 = v33;
  v34 = a2[10];
  v35 = a2[11];
  v36 = a2[8];
  v178 = a2[9];
  v179 = v34;
  v37 = a2[12];
  v180 = v35;
  v181 = v37;
  v38 = a2[6];
  v39 = a2[7];
  v40 = a2[4];
  v174 = a2[5];
  v175 = v38;
  v176 = v39;
  v177 = v36;
  v41 = a2[2];
  v42 = a2[3];
  v43 = *a2;
  v170 = a2[1];
  v171 = v41;
  v172 = v42;
  v173 = v40;
  v168 = a1[12];
  v169 = v43;
  v44 = *v2;
  v45 = *(type metadata accessor for DocumentWriter(0) + 20);
  v147 = v2;
  v145 = v45;
  sub_242E13D78(v2 + v45, v27);
  v146 = v18;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v150 = v44;
  if (!EnumCaseMultiPayload)
  {
    LODWORD(v47) = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    LODWORD(v47) = 1;
LABEL_5:
    sub_242C6D138(v27, &qword_27ECF8318, &qword_242F36420);
    v143 = v44;
    goto LABEL_8;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8320, &qword_242F36428);
  v49 = *(v48 + 48);
  v50 = *(v144 + 8);
  v51 = v148;
  v50(&v27[*(v48 + 64)], v148);
  v50(&v27[v49], v51);
  v44 = v150;
  sub_242C6D138(v27, &qword_27ECF8318, &qword_242F36420);
  v52 = v44;
  v53._countAndFlagsBits = 114;
  v53._object = 0xE100000000000000;
  v143 = NSFileWrapper.directory(at:creatingIntermediateDirectories:)(v53, 1);
  if (!v143)
  {
    sub_242F05C60();
    __break(1u);
    return;
  }

  LODWORD(v47) = 2;
LABEL_8:
  v54 = v148;
  sub_242E13D78(v147 + v145, v24);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v130 = v47;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8320, &qword_242F36428);
    v56 = *(v55 + 64);
    v57 = v144;
    v47 = v149;
    (*(v144 + 32))(v149, &v24[*(v55 + 48)], v54);
    v59 = *(v57 + 8);
    v58 = v57 + 8;
    v60 = &v24[v56];
    v61 = v59;
    v59(v60, v54);
    sub_242C6D138(v24, &qword_27ECF8318, &qword_242F36420);
    LOBYTE(v155[0]) = 1;
    v62 = sub_242C6B810(v47, v155);
    if (v3)
    {
      v61(v47, v54);

      return;
    }

    if (v62 >> 62)
    {
      goto LABEL_33;
    }

    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v128 = v61;
    v129 = v58;
    if (v63)
    {
LABEL_14:
      v64 = 0;
      v141 = v62 & 0xFFFFFFFFFFFFFF8;
      v142 = v62 & 0xC000000000000001;
      v139 = v63;
      v140 = v62;
      do
      {
        if (v142)
        {
          v62 = MEMORY[0x245D270D0](v64, v62);
        }

        else
        {
          if (v64 >= *(v141 + 16))
          {
            goto LABEL_32;
          }

          v62 = *(v62 + 8 * v64 + 32);
        }

        v7 = v62;
        v65 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v78 = v62;
          v63 = sub_242F059B0();
          v62 = v78;
          v128 = v61;
          v129 = v58;
          if (!v63)
          {
            break;
          }

          goto LABEL_14;
        }

        v58 = 0;
        v66 = [v62 filename];
        if (!v66)
        {
          __break(1u);
        }

        v67 = v66;
        v68 = sub_242F04F30();
        v61 = v69;

        v70 = [v44 fileWrappers];
        if (v70)
        {
          v71 = v70;
          sub_242C6CBCC();
          v72 = sub_242F04CF0();

          if (*(v72 + 16))
          {
            v73 = sub_242CE519C(v68, v61);
            v75 = v74;

            if (v75)
            {
              v76 = *(*(v72 + 56) + 8 * v73);

              [v150 removeFileWrapper_];

              goto LABEL_26;
            }
          }

          else
          {
          }
        }

LABEL_26:
        v44 = v150;
        NSFileWrapper.checkedAddFileWrapper(_:)(v7);
        v4 = v77;
        if (v77)
        {

          v128(v149, v148);
          return;
        }

        ++v64;
        v62 = v140;
        v7 = v154;
        v47 = v149;
      }

      while (v65 != v139);
    }

    v54 = v148;
    v128(v47, v148);

    LOBYTE(v47) = v130;
  }

  else
  {
    sub_242E13E4C(v24, type metadata accessor for DocumentWriter.Destination);
  }

  v79 = v7[37];
  v7[23] = v7[36];
  v7[24] = v79;
  v80 = v7[39];
  v7[25] = v7[38];
  v81 = v7[33];
  v7[19] = v7[32];
  v7[20] = v81;
  v82 = v7[35];
  v7[21] = v7[34];
  v7[22] = v82;
  v83 = v7[29];
  v7[15] = v7[28];
  v7[16] = v83;
  v84 = v7[31];
  v7[17] = v7[30];
  v7[18] = v84;
  v85 = v7[27];
  v7[13] = v7[26];
  v7[14] = v85;
  v86 = v7[49];
  v7[9] = v7[48];
  v7[10] = v86;
  v87 = v7[51];
  v7[11] = v7[50];
  v7[12] = v87;
  v88 = v7[45];
  v154[5] = v7[44];
  v154[6] = v88;
  v89 = v7[47];
  v7[7] = v7[46];
  v7[8] = v89;
  v90 = v7[40];
  v91 = v7[42];
  v92 = v7[43];
  v154[2] = v7[41];
  v154[3] = v91;
  v154[4] = v92;
  v151 = v44;
  v152 = v47;
  v93 = v143;
  v153 = v143;
  v154[0] = v80;
  v154[1] = v90;
  ArcPackageExporter.update(document:oldDocument:)(v155, v154);
  if (v4)
  {
  }

  else
  {
    v94 = v136;
    sub_242E13D78(v147 + v145, v136);
    v95 = swift_getEnumCaseMultiPayload();
    if (v95)
    {
      v96 = v144;
      if (v95 == 1)
      {
        sub_242E13DDC(v94, v138);
      }

      else
      {
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8320, &qword_242F36428);
        v149 = *(v98 + 48);
        v99 = *(v98 + 64);
        sub_242E13DDC(v94, v138);
        v100 = *(v96 + 8);
        v101 = v94 + v99;
        v44 = v150;
        v100(v101, v54);
        v100(v94 + v149, v54);
        v4 = 0;
      }

      v97 = v137;
    }

    else
    {
      sub_242E13DDC(v94, v138);
      v97 = v137;
      v96 = v144;
    }

    if ((*(v96 + 48))(v138, 1, v54) == 1)
    {

      sub_242C6D138(v138, &qword_27ECF8318, &qword_242F36420);
    }

    else
    {
      v102 = v54;
      v149 = v4;
      v103 = *(v96 + 32);
      v103(v97, v138, v54);
      v104 = v96;
      v105 = sub_242F03630();
      *&v155[0] = 0;
      v106 = v44;
      v107 = [v44 writeToURL:v105 options:1 originalContentsURL:0 error:v155];

      v108 = *&v155[0];
      if (v107)
      {
        v109 = v134;
        sub_242E13D78(v147 + v145, v134);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8320, &qword_242F36428);
          v111 = *(v110 + 48);
          v112 = v135;
          v113 = v148;
          v103(v135, v109 + *(v110 + 64), v148);
          v114 = v144;
          v115 = *(v144 + 8);
          v116 = v108;
          v147 = v115;
          (v115)(v109 + v111, v113);
          sub_242C6D138(v109, &qword_27ECF8318, &qword_242F36420);
          v117 = v132;
          sub_242F03640();
          v118 = v131;
          v119 = *(v114 + 16);
          v120 = v133;
          v119(&v133[*(v131 + 20)], v112, v113);
          v119(&v120[*(v118 + 24)], v117, v113);
          v121 = objc_allocWithZone(MEMORY[0x277CCAA20]);
          sub_242C6CBCC();
          v122 = sub_242F04CC0();
          v123 = [v121 initDirectoryWithFileWrappers_];

          *v120 = v123;
          v155[10] = v166;
          v155[11] = v167;
          v155[12] = v168;
          v155[6] = v162;
          v155[7] = v163;
          v155[8] = v164;
          v155[9] = v165;
          v155[2] = v158;
          v155[3] = v159;
          v155[4] = v160;
          v155[5] = v161;
          v155[0] = v156;
          v155[1] = v157;
          MetadataExporter.write(_:)(v155);

          sub_242E13E4C(v120, type metadata accessor for MetadataExporter);
          v124 = v147;
          (v147)(v117, v113);
          (v124)(v135, v113);
          (v124)(v137, v113);
        }

        else
        {
          v126 = *(v144 + 8);
          v127 = v108;
          v126(v137, v148);

          sub_242E13E4C(v109, type metadata accessor for DocumentWriter.Destination);
        }
      }

      else
      {
        v125 = *&v155[0];
        sub_242F035D0();

        swift_willThrow();
        (*(v104 + 8))(v97, v102);
      }
    }
  }
}

uint64_t DocumentWriter.Destination.outputURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DocumentWriter.Destination(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242E13D78(v2, v6);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return sub_242E13DDC(v6, a1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8320, &qword_242F36428);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  sub_242E13DDC(v6, a1);
  v11 = sub_242F03690();
  v12 = *(*(v11 - 8) + 8);
  v12(&v6[v10], v11);
  return (v12)(&v6[v9], v11);
}

void sub_242E13B0C(__int128 *a1)
{
  sub_242E13D54(v3);
  v2[10] = v3[10];
  v2[11] = v3[11];
  v2[12] = v3[12];
  v2[6] = v3[6];
  v2[7] = v3[7];
  v2[8] = v3[8];
  v2[9] = v3[9];
  v2[2] = v3[2];
  v2[3] = v3[3];
  v2[4] = v3[4];
  v2[5] = v3[5];
  v2[0] = v3[0];
  v2[1] = v3[1];
  DocumentWriter.write(_:oldDocument:)(a1, v2);
}

unint64_t sub_242E13B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8310;
  if (!qword_27ECF8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8310);
  }

  return result;
}

double sub_242E13C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_242E13CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentWriter.Destination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_242E13D54(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_242E13D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentWriter.Destination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E13DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8318, &qword_242F36420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E13E4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_242E13EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8328;
  if (!qword_27ECF8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8328);
  }

  return result;
}

uint64_t sub_242E13FCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_242E14014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242E1409C(uint64_t a1)
{
  result = sub_242C6CBCC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DocumentWriter.Destination(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_242E14120(uint64_t a1)
{
  sub_242E14194();
  if (v1 <= 0x3F)
  {
    sub_242E14234(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_242E14194()
{
  if (!qword_27ECF8350)
  {
    sub_242E141DC(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF8350);
    }
  }
}

void sub_242E141DC(uint64_t a1)
{
  if (!qword_27ECF8358)
  {
    sub_242F03690();
    v1 = sub_242F05860();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF8358);
    }
  }
}

void sub_242E14234(uint64_t a1)
{
  if (!qword_27ECF8360)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8318, &qword_242F36420);
    sub_242F03690();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27ECF8360);
    }
  }
}

unint64_t sub_242E1435C()
{
  result = qword_27ECF8368;
  if (!qword_27ECF8368)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6330, &qword_242F2FF40);
    sub_242E143E8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8368);
  }

  return result;
}

unint64_t sub_242E143E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8370;
  if (!qword_27ECF8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8370);
  }

  return result;
}

uint64_t sub_242E1443C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_242E14484(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

CarPlayAssetUI::AssetType_optional __swiftcall AssetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AssetType.rawValue.getter()
{
  v1 = 1953394534;
  if (*v0 != 1)
  {
    v1 = 0x656372756F736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_242E14588()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242E14620(uint64_t a1)
{
  sub_242F04DD0();

  return result;
}

uint64_t sub_242E146A4(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242E14744(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953394534;
  if (v2 != 1)
  {
    v5 = 0x656372756F736572;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6567616D69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_242E14848(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1953394534;
  if (v2 != 1)
  {
    v4 = 0x656372756F736572;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6567616D69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1953394534;
  if (*a2 != 1)
  {
    v8 = 0x656372756F736572;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6567616D69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_242F06110();
  }

  return v11 & 1;
}

unint64_t sub_242E1497C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8378;
  if (!qword_27ECF8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8378);
  }

  return result;
}

unint64_t sub_242E149D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8380;
  if (!qword_27ECF8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8380);
  }

  return result;
}

unint64_t sub_242E14A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8388;
  if (!qword_27ECF8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8388);
  }

  return result;
}

unint64_t sub_242E14B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8390;
  if (!qword_27ECF8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8390);
  }

  return result;
}

unint64_t sub_242E14B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8398;
  if (!qword_27ECF8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8398);
  }

  return result;
}

unint64_t sub_242E14CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF83A0;
  if (!qword_27ECF83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF83A0);
  }

  return result;
}

double sub_242E14D38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_242D975B4(a1, a2, a3);
  sub_242F04010();
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_242E14D88(uint64_t *a1)
{
  v1 = sub_242CA0064(*a1, a1[1]);
  sub_242D975B4(v1, v2, v3);
  return sub_242F04020();
}

double sub_242E14E2C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v3;
}

_OWORD *sub_242E14E98()
{
  v0[1] = xmmword_242F36940;
  v0[2] = xmmword_242F2DFA0;
  v0[3] = xmmword_242F36950;
  v0[4] = xmmword_242F36960;
  swift_beginAccess();
  sub_242F03A40();
  swift_endAccess();
  swift_beginAccess();
  sub_242F03A40();
  swift_endAccess();
  swift_beginAccess();
  sub_242F03A40();
  swift_endAccess();
  swift_beginAccess();
  sub_242F03A40();
  swift_endAccess();
  return v0;
}

uint64_t sub_242E14FF0(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_242F03A90();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242E150CC(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_242F03A90();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t LayoutTreatment.deinit()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI15LayoutTreatment__saturation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83B0, &qword_242F36980);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14CarPlayAssetUI15LayoutTreatment__blur, v2);
  v3(v0 + OBJC_IVAR____TtC14CarPlayAssetUI15LayoutTreatment__scale, v2);
  v3(v0 + OBJC_IVAR____TtC14CarPlayAssetUI15LayoutTreatment__blackOpacity, v2);
  return v0;
}

uint64_t LayoutTreatment.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI15LayoutTreatment__saturation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83B0, &qword_242F36980);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14CarPlayAssetUI15LayoutTreatment__blur, v2);
  v3(v0 + OBJC_IVAR____TtC14CarPlayAssetUI15LayoutTreatment__scale, v2);
  v3(v0 + OBJC_IVAR____TtC14CarPlayAssetUI15LayoutTreatment__blackOpacity, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_242E1538C@<X0>(void *a1@<X8>)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LayoutView(0);
  sub_242CA321C(v1 + *(v7 + 36), &v10, &qword_27ECF84F0, &qword_242F36CD8);
  if (v11 == 1)
  {
    return sub_242E193EC(&v10, a1);
  }

  sub_242F05710();
  v9 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_242E15504@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LayoutTreatment(0);
  result = sub_242F03A10();
  *a2 = result;
  return result;
}

uint64_t sub_242E15544()
{
  type metadata accessor for LayoutTreatment(0);
  v0 = swift_allocObject();
  sub_242E14E98();
  return v0;
}

uint64_t LayoutView.init(layout:displaySize:displayID:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v27 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C70, &unk_242F2D4A0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = *a2;
  v16 = a2[1];
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  type metadata accessor for ClusterTransitionCoordinator(0);
  sub_242E19234(&qword_27ECF59E8, type metadata accessor for ClusterTransitionCoordinator, &protocol conformance descriptor for ClusterTransitionCoordinator);
  *(a3 + 40) = sub_242F03E60();
  *(a3 + 48) = v17;
  *(a3 + 56) = swift_getKeyPath();
  *(a3 + 64) = 0;
  v18 = type metadata accessor for LayoutView(0);
  v19 = v18[8];
  *(a3 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83D0, &qword_242F57130);
  swift_storeEnumTagMultiPayload();
  v20 = a3 + v18[9];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  sub_242CA321C(v14, v11, &qword_27ECF2C70, &unk_242F2D4A0);
  sub_242F048A0();
  sub_242C6D138(v14, &qword_27ECF2C70, &unk_242F2D4A0);
  v22 = a3 + v18[11];
  *v22 = sub_242E15544;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  result = sub_242E188C0(v27, a3 + v18[12], type metadata accessor for Layout);
  v24 = (a3 + v18[13]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a3 + v18[14]);
  *v25 = v15;
  v25[1] = v16;
  return result;
}

uint64_t LayoutView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for LayoutView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = sub_242F03720();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83D8, &qword_242F36A58);
  MEMORY[0x28223BE20](v11);
  v13 = (&v34 - v12);
  *v13 = sub_242F04A70();
  v13[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83E0, &qword_242F36A60);
  sub_242E15D5C(v2, v13 + *(v15 + 44));
  *&v35 = 0x3A74756F79616CLL;
  *(&v35 + 1) = 0xE700000000000000;
  (*(v8 + 16))(v10, v2 + *(v4 + 56), v7);
  v16 = sub_242F04F90();
  MEMORY[0x245D26660](v16);

  v17 = objc_allocWithZone(MEMORY[0x277CD9E18]);
  v18 = [v17 init];
  v19 = sub_242F04F00();

  [v18 setIdentifier_];

  [v18 setCornerRadius_];
  v20 = sub_242F04A70();
  v22 = v21;
  v23 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83E8, &qword_242F36A68) + 36));
  *v23 = v18;
  v23[1] = v20;
  v23[2] = v22;
  sub_242F04A70();
  sub_242F03C70();
  v24 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83F0, &qword_242F36A70) + 36));
  v25 = v36;
  *v24 = v35;
  v24[1] = v25;
  v24[2] = v37;
  v26 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF83F8, &qword_242F36A78) + 36);
  sub_242E16B70(v26);
  v27 = sub_242F04A70();
  v29 = v28;
  v30 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8400, &qword_242F36A80) + 36));
  *v30 = v27;
  v30[1] = v29;
  *(v13 + *(v11 + 36)) = 0;
  if (*(v2 + 40))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_242F03A80();

    sub_242E19328(v2, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LayoutView);
    v31 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v32 = swift_allocObject();
    sub_242E188C0(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for LayoutView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2FA8, &qword_242F17970);
    sub_242E18988();
    sub_242E18C08();
    sub_242F046C0();

    return sub_242C6D138(v13, &qword_27ECF83D8, &qword_242F36A58);
  }

  else
  {
    type metadata accessor for ClusterTransitionCoordinator(0);
    sub_242E19234(&qword_27ECF59E8, type metadata accessor for ClusterTransitionCoordinator, &protocol conformance descriptor for ClusterTransitionCoordinator);
    result = sub_242F03E50();
    __break(1u);
  }

  return result;
}

uint64_t sub_242E15D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for LayoutView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8540, &qword_242F36D68);
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v24 - v8;
  v9 = sub_242F04000();
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);

  if ((v13 & 1) == 0)
  {
    sub_242F05710();
    v24 = v9;
    v14 = sub_242F04360();
    v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    v15 = j__swift_release(v12);
    (*(v25 + 8))(v11, v24, v15);
    v12 = v29;
  }

  if (v12)
  {
    v16 = a1 + *(v3 + 48);
    v29 = *(v16 + *(type metadata accessor for Layout(0) + 24));
    sub_242E19328(a1, v6, type metadata accessor for LayoutView);
    v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v18 = swift_allocObject();
    sub_242E188C0(v6, v18 + v17, type metadata accessor for LayoutView);
    *(v18 + ((v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4680, &unk_242F26400);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8548, &qword_242F36D70);
    sub_242C7E000(&qword_27ECF8550, &qword_27ECF4680, &unk_242F26400, MEMORY[0x277D83980]);
    sub_242E19628();
    sub_242E19234(&qword_27ECF85C8, type metadata accessor for Zone, &protocol conformance descriptor for Zone);
    v19 = v26;
    sub_242F049A0();
    v21 = v27;
    v20 = v28;
    (*(v7 + 32))(v28, v19, v27);
    v22 = 0;
  }

  else
  {
    v22 = 1;
    v21 = v27;
    v20 = v28;
  }

  return (*(v7 + 56))(v20, v22, 1, v21);
}

uint64_t sub_242E161CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v65 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF84E8, &qword_242F36CD0);
  MEMORY[0x28223BE20](v71);
  v72 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C70, &unk_242F2D4A0);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = &v65 - v13;
  MEMORY[0x28223BE20](v14);
  v69 = &v65 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8568, &qword_242F36D78);
  MEMORY[0x28223BE20](v70);
  v17 = (&v65 - v16);
  v18 = type metadata accessor for Zone(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  sub_242E19328(a1, v20, type metadata accessor for Zone);
  v73 = a2;
  v21 = *(a2 + 40);
  if (v21)
  {
    type metadata accessor for ZoneModel(0);
    swift_allocObject();

    v22 = sub_242D0DD68(v20, v21, a3);
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0, &qword_242F0D080);
    swift_storeEnumTagMultiPayload();
    v23 = (v17 + *(type metadata accessor for ZoneView(0) + 20));
    sub_242E19234(&qword_27ECF2C38, type metadata accessor for ZoneModel, &protocol conformance descriptor for ZoneModel);

    *v23 = sub_242F03DA0();
    v23[1] = v24;
    KeyPath = swift_getKeyPath();
    v26 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8598, &qword_242F36D90) + 36));
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85B0, &qword_242F36D98) + 28);
    v28 = type metadata accessor for LayoutView(0);
    sub_242CA321C(v73 + *(v28 + 48), v26 + v27, &qword_27ECF3028, &qword_242F17A20);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028, &qword_242F17A20);
    (*(*(v29 - 8) + 56))(v26 + v27, 0, 1, v29);
    *v26 = KeyPath;
    v30 = (v68 + *(v18 + 24));
    v31 = *v30;
    v32 = v30[1];
    v33 = v30[2];
    v34 = v30[3];
    v81.origin.x = *v30;
    v81.origin.y = v32;
    v81.size.width = v33;
    v81.size.height = v34;
    CGRectGetWidth(v81);
    v82.origin.x = v31;
    v82.origin.y = v32;
    v82.size.width = v33;
    v82.size.height = v34;
    CGRectGetHeight(v82);
    sub_242F04A70();
    sub_242F03C70();
    v35 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8588, &qword_242F36D88) + 36));
    v36 = v79;
    *v35 = v78;
    v35[1] = v36;
    v35[2] = v80;
    v37 = v31;
    *&v36 = v32;
    v38 = v33;
    v39 = v34;
    MidX = CGRectGetMidX(*(&v36 - 8));
    v83.origin.x = v31;
    v83.origin.y = v32;
    v83.size.width = v33;
    v83.size.height = v34;
    MidY = CGRectGetMidY(v83);
    v42 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8578, &qword_242F36D80) + 36));
    *v42 = MidX;
    v42[1] = MidY;
    type metadata accessor for LayoutTreatment(0);
    sub_242E19234(&qword_27ECF5910, type metadata accessor for LayoutTreatment, &protocol conformance descriptor for LayoutTreatment);
    v43 = sub_242F03BD0();
    v44 = sub_242F03A00();
    v45 = *(v70 + 9);
    v70 = v17;
    v46 = (v17 + v45);
    *v46 = v44;
    v46[1] = v43;
    v47 = v22 + OBJC_IVAR____TtC14CarPlayAssetUI9ZoneModel_zone;
    v48 = v69;
    sub_242CA321C(v47, v69, &qword_27ECFC780, &qword_242F17930);
    v49 = v74;
    v50 = v75;
    (*(v74 + 56))(v48, 0, 1, v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8408, &qword_242F36AD0);
    v51 = v77;
    sub_242F048B0();
    v52 = v72;
    v53 = *(v71 + 48);
    sub_242CA321C(v48, v72, &qword_27ECF2C70, &unk_242F2D4A0);
    sub_242CA321C(v51, v52 + v53, &qword_27ECF2C70, &unk_242F2D4A0);
    v54 = *(v49 + 48);
    if (v54(v52, 1, v50) == 1)
    {

      sub_242C6D138(v51, &qword_27ECF2C70, &unk_242F2D4A0);
      sub_242C6D138(v48, &qword_27ECF2C70, &unk_242F2D4A0);
      if (v54(v52 + v53, 1, v50) == 1)
      {
        sub_242C6D138(v52, &qword_27ECF2C70, &unk_242F2D4A0);
        v55 = 0;
LABEL_9:
        v60 = swift_getKeyPath();
        v61 = swift_allocObject();
        *(v61 + 16) = v55 & 1;
        v62 = v76;
        sub_242CF6B3C(v70, v76, &qword_27ECF8568, &qword_242F36D78);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8548, &qword_242F36D70);
        v64 = (v62 + *(result + 36));
        *v64 = v60;
        v64[1] = sub_242E199D0;
        v64[2] = v61;
        return result;
      }
    }

    else
    {
      v56 = v67;
      sub_242CA321C(v52, v67, &qword_27ECF2C70, &unk_242F2D4A0);
      if (v54(v52 + v53, 1, v50) != 1)
      {
        v57 = v52 + v53;
        v58 = v66;
        sub_242CF6B3C(v57, v66, &qword_27ECFC780, &qword_242F17930);
        sub_242F03720();
        sub_242E19234(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v59 = sub_242F04EE0();

        sub_242C6D138(v58, &qword_27ECFC780, &qword_242F17930);
        sub_242C6D138(v77, &qword_27ECF2C70, &unk_242F2D4A0);
        sub_242C6D138(v48, &qword_27ECF2C70, &unk_242F2D4A0);
        sub_242C6D138(v56, &qword_27ECFC780, &qword_242F17930);
        sub_242C6D138(v52, &qword_27ECF2C70, &unk_242F2D4A0);
        v55 = v59 ^ 1;
        goto LABEL_9;
      }

      sub_242C6D138(v77, &qword_27ECF2C70, &unk_242F2D4A0);
      sub_242C6D138(v48, &qword_27ECF2C70, &unk_242F2D4A0);
      sub_242C6D138(v56, &qword_27ECFC780, &qword_242F17930);
    }

    sub_242C6D138(v52, &qword_27ECF84E8, &qword_242F36CD0);
    v55 = 1;
    goto LABEL_9;
  }

  type metadata accessor for ClusterTransitionCoordinator(0);
  sub_242E19234(&qword_27ECF59E8, type metadata accessor for ClusterTransitionCoordinator, &protocol conformance descriptor for ClusterTransitionCoordinator);
  result = sub_242F03E50();
  __break(1u);
  return result;
}

uint64_t sub_242E16B70@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF84F8, &qword_242F36CE0);
  MEMORY[0x28223BE20](v28);
  v3 = (&v27 - v2);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8500, &qword_242F36CE8);
  MEMORY[0x28223BE20](v29);
  v5 = (&v27 - v4);
  v6 = sub_242F04000();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    v32 = *(v1 + 16);
    v33 = v11;
    sub_242CA0064(v10, v11);
    if (v10)
    {
LABEL_3:
      v12 = v33;
      v13 = type metadata accessor for LayoutView(0);
      v14 = (v1 + *(v13 + 56));
      v16 = *v14;
      v15 = v14[1];
      v31[0] = v16;
      v31[1] = v15;
      v17 = *(v13 + 48);

      v18 = v1 + v17;
      v19 = v1;
      v20 = v10(v31, v18);
      sub_242D0DC4C(v10, v12);

      *v5 = sub_242F04A70();
      v5[1] = v21;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8510, &qword_242F36CF0);
      sub_242E178CC(v20, v19, v5 + *(v22 + 44));
      sub_242CA321C(v5, v3, &qword_27ECF8500, &qword_242F36CE8);
      swift_storeEnumTagMultiPayload();
      sub_242C7E000(&qword_27ECF8508, &qword_27ECF8500, &qword_242F36CE8, MEMORY[0x277CE11A8]);
      sub_242F041C0();

      return sub_242C6D138(v5, &qword_27ECF8500, &qword_242F36CE8);
    }
  }

  else
  {

    sub_242F05710();
    v24 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    v25 = sub_242E188A8(v10, v11, 0);
    (*(v7 + 8))(v9, v6, v25);
    v10 = v32;
    if (v32)
    {
      goto LABEL_3;
    }
  }

  v26 = v1 + *(type metadata accessor for LayoutView(0) + 48);
  *v3 = *(v26 + *(type metadata accessor for Layout(0) + 32));
  swift_storeEnumTagMultiPayload();
  sub_242C7E000(&qword_27ECF8508, &qword_27ECF8500, &qword_242F36CE8, MEMORY[0x277CE11A8]);

  return sub_242F041C0();
}

uint64_t sub_242E16F3C(uint64_t a1)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC780, &qword_242F17930);
  v66 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v3 = &v60 - v2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF84E8, &qword_242F36CD0);
  MEMORY[0x28223BE20](v68);
  v69 = &v60 - v4;
  v5 = type metadata accessor for Zone(0);
  v73 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v64 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2C70, &unk_242F2D4A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v16);
  v65 = &v60 - v17;
  MEMORY[0x28223BE20](v18);
  v71 = &v60 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  sub_242E1538C(&v75);
  SetNeedsFocusUpdateAction.callAsFunction()();
  sub_242E192D4(&v75);
  if (!*(a1 + 40))
  {
    type metadata accessor for ClusterTransitionCoordinator(0);
    sub_242E19234(&qword_27ECF59E8, type metadata accessor for ClusterTransitionCoordinator, &protocol conformance descriptor for ClusterTransitionCoordinator);
    result = sub_242F03E50();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_242F03A80();

  v23 = v75[2];
  v70 = v15;
  v67 = v22;
  v63 = v3;
  if (v23)
  {
    v74 = *(v75 + v23 + 31);
  }

  else
  {

    v74 = 2;
  }

  v24 = v72;
  v25 = type metadata accessor for LayoutView(0);
  v26 = a1 + *(v25 + 48);
  v27 = *(v26 + *(type metadata accessor for Layout(0) + 24));
  v28 = *(v27 + 16);
  if (!v28)
  {
    v34 = 1;
    v35 = v66;
    v27 = v67;
LABEL_26:
    v37 = v35;
    (*(v35 + 56))(v27, v34, 1, v24);
    v38 = *(v25 + 40);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8408, &qword_242F36AD0);
    v66 = v38;
    v40 = v71;
    v73 = v39;
    sub_242F048B0();
    v41 = v69;
    v42 = *(v68 + 48);
    sub_242CA321C(v40, v69, &qword_27ECF2C70, &unk_242F2D4A0);
    v43 = v72;
    sub_242CA321C(v27, v41 + v42, &qword_27ECF2C70, &unk_242F2D4A0);
    v44 = *(v37 + 48);
    v45 = v44(v41, 1, v43);
    v28 = v70;
    if (v45 == 1)
    {
      sub_242C6D138(v40, &qword_27ECF2C70, &unk_242F2D4A0);
      if (v44(v41 + v42, 1, v43) == 1)
      {
        sub_242C6D138(v41, &qword_27ECF2C70, &unk_242F2D4A0);
        goto LABEL_41;
      }
    }

    else
    {
      v46 = v65;
      sub_242CA321C(v41, v65, &qword_27ECF2C70, &unk_242F2D4A0);
      if (v44(v41 + v42, 1, v43) != 1)
      {
        v57 = v41 + v42;
        v58 = v63;
        sub_242CF6B3C(v57, v63, &qword_27ECFC780, &qword_242F17930);
        sub_242F03720();
        sub_242E19234(&qword_27ECF2260, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v59 = sub_242F04EE0();
        sub_242C6D138(v58, &qword_27ECFC780, &qword_242F17930);
        sub_242C6D138(v71, &qword_27ECF2C70, &unk_242F2D4A0);
        sub_242C6D138(v46, &qword_27ECFC780, &qword_242F17930);
        sub_242C6D138(v41, &qword_27ECF2C70, &unk_242F2D4A0);
        if (v59)
        {
          goto LABEL_41;
        }

LABEL_32:
        if (qword_27ECEF4C0 != -1)
        {
          goto LABEL_45;
        }

        goto LABEL_33;
      }

      sub_242C6D138(v71, &qword_27ECF2C70, &unk_242F2D4A0);
      sub_242C6D138(v46, &qword_27ECFC780, &qword_242F17930);
    }

    sub_242C6D138(v41, &qword_27ECF84E8, &qword_242F36CD0);
    goto LABEL_32;
  }

  v60 = v25;
  v61 = v12;
  v62 = a1;
  v12 = 0;
  v29 = v27 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
  if (v74)
  {
    v30 = 0x32656E6F7ALL;
  }

  else
  {
    v30 = 0x31656E6F7ALL;
  }

  while (v12 < *(v27 + 16))
  {
    sub_242E19328(v29 + *(v73 + 72) * v12, v7, type metadata accessor for Zone);
    v31 = v7[*(v5 + 40)];
    if (v31)
    {
      v32 = 0x32656E6F7ALL;
    }

    else
    {
      v32 = 0x31656E6F7ALL;
    }

    if (v31 == 2)
    {
      if (v74 == 2)
      {
        goto LABEL_24;
      }

LABEL_10:

      goto LABEL_11;
    }

    if (v74 == 2)
    {
      goto LABEL_10;
    }

    if (v32 == v30)
    {
      swift_bridgeObjectRelease_n();
LABEL_24:
      v36 = v64;
      sub_242E188C0(v7, v64, type metadata accessor for Zone);
      v27 = v67;
      sub_242CA321C(v36, v67, &qword_27ECFC780, &qword_242F17930);
      sub_242E19390(v36);
      v34 = 0;
      v12 = v61;
LABEL_25:
      v24 = v72;
      v35 = v66;
      v25 = v60;
      goto LABEL_26;
    }

    v33 = sub_242F06110();
    swift_bridgeObjectRelease_n();
    if (v33)
    {
      goto LABEL_24;
    }

LABEL_11:
    ++v12;
    sub_242E19390(v7);
    if (v28 == v12)
    {
      v34 = 1;
      v12 = v61;
      v27 = v67;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_45:
  swift_once();
LABEL_33:
  v47 = sub_242F039D0();
  __swift_project_value_buffer(v47, qword_27ED5D2E0);
  v48 = sub_242F039B0();
  v49 = sub_242F056E0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v75 = v51;
    *v50 = 136315138;
    v52 = 0x31656E6F7ALL;
    if (v74)
    {
      v52 = 0x32656E6F7ALL;
    }

    if (v74 == 2)
    {
      v53 = 0x3E6C696E3CLL;
    }

    else
    {
      v53 = v52;
    }

    v54 = v12;
    v55 = sub_242C8FD38(v53, 0xE500000000000000, &v75);

    *(v50 + 4) = v55;
    v12 = v54;
    _os_log_impl(&dword_242C53000, v48, v49, "Focus moved to zone region %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v51);
    MEMORY[0x245D287D0](v51, -1, -1);
    MEMORY[0x245D287D0](v50, -1, -1);
  }

LABEL_41:
  sub_242CA321C(v27, v28, &qword_27ECF2C70, &unk_242F2D4A0);
  sub_242CA321C(v28, v12, &qword_27ECF2C70, &unk_242F2D4A0);
  sub_242F048C0();
  sub_242C6D138(v28, &qword_27ECF2C70, &unk_242F2D4A0);
  return sub_242C6D138(v27, &qword_27ECF2C70, &unk_242F2D4A0);
}

uint64_t sub_242E178CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v95 = type metadata accessor for LayoutView(0);
  v81 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v82 = v5;
  v83 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8518, &qword_242F36CF8);
  MEMORY[0x28223BE20](v84);
  v86 = (v74 - v6);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8520, &qword_242F36D00);
  v90 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v85 = v74 - v7;
  v87 = type metadata accessor for Zone(0);
  v8 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v79 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v74 - v11;
  MEMORY[0x28223BE20](v13);
  v77 = v74 - v14;
  v78 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = v74 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8528, &qword_242F36D08);
  MEMORY[0x28223BE20](v19 - 8);
  v89 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v92 = v74 - v22;
  v23 = sub_242F04000();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a2;
  v96 = a2;
  LOBYTE(v25) = *(a2 + 8);
  v94 = a1;
  v80 = v18;
  if (v25)
  {
    v88 = v27;
  }

  else
  {

    sub_242F05710();
    v28 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v27, 0);
    (*(v24 + 8))(v26, v23);
    v88 = v102[0];
  }

  v29 = v96 + *(v95 + 44);
  v30 = *v29;
  v31 = *(v29 + 16);
  v32 = type metadata accessor for LayoutTreatment(0);
  v33 = sub_242E19234(&qword_27ECF5910, type metadata accessor for LayoutTreatment, &protocol conformance descriptor for LayoutTreatment);
  sub_242F03BD0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v34 = v102[0];
  sub_242F03BD0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v35 = v102[0];
  sub_242F04B50();
  v37 = v36;
  v39 = v38;

  v76 = v30;
  v75 = v31;
  v74[2] = v32;
  v74[1] = v33;
  sub_242F03BD0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  v40 = v102[0];
  v41 = v96 + *(v95 + 48);
  v42 = *(v41 + *(type metadata accessor for Layout(0) + 24));
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = 0;
    v45 = v87;
    while (1)
    {
      if (v44 >= *(v42 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v46 = *(v8 + 80);
      sub_242E19328(v42 + ((v46 + 32) & ~v46) + *(v8 + 72) * v44, v12, type metadata accessor for Zone);
      if (!v12[*(v45 + 32) + 96])
      {
        break;
      }

      ++v44;
      sub_242E19390(v12);
      if (v43 == v44)
      {
        v47 = 1;
        v48 = v94;
        v49 = v93;
        v50 = v92;
        goto LABEL_14;
      }
    }

    v51 = v77;
    sub_242E188C0(v12, v77, type metadata accessor for Zone);
    v52 = v51;
    v53 = v80;
    sub_242E188C0(v52, v80, type metadata accessor for Zone);
    v95 = sub_242F04730();
    v54 = v96;
    if (*(v96 + 40))
    {
      swift_beginAccess();
      v55 = v84;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2F60, &qword_242F17918);
      v56 = v86;
      sub_242F03A50();
      swift_endAccess();

      v57 = v83;
      sub_242E19328(v54, v83, type metadata accessor for LayoutView);
      v58 = v79;
      sub_242E19328(v53, v79, type metadata accessor for Zone);
      v59 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v60 = (v82 + v46 + v59) & ~v46;
      v61 = v53;
      v62 = swift_allocObject();
      sub_242E188C0(v57, v62 + v59, type metadata accessor for LayoutView);
      sub_242E188C0(v58, v62 + v60, type metadata accessor for Zone);
      *v56 = v95;
      v63 = (v56 + *(v55 + 56));
      *v63 = sub_242E19448;
      v63[1] = v62;
      sub_242F03BD0();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_242F03A80();

      sub_242E19390(v61);
      v64 = v102[0];
      v65 = v85;
      sub_242CF6B3C(v56, v85, &qword_27ECF8518, &qword_242F36CF8);
      v66 = v93;
      *(v65 + *(v93 + 36)) = v64;
      v50 = v92;
      sub_242CF6B3C(v65, v92, &qword_27ECF8520, &qword_242F36D00);
      v49 = v66;
      v47 = 0;
      goto LABEL_13;
    }

LABEL_19:
    type metadata accessor for ClusterTransitionCoordinator(0);
    sub_242E19234(&qword_27ECF59E8, type metadata accessor for ClusterTransitionCoordinator, &protocol conformance descriptor for ClusterTransitionCoordinator);
    result = sub_242F03E50();
    __break(1u);
  }

  else
  {
    v47 = 1;
    v49 = v93;
    v50 = v92;
LABEL_13:
    v48 = v94;
LABEL_14:
    (*(v90 + 56))(v50, v47, 1, v49);
    if (v88)
    {
      v67 = 1.0;
    }

    else
    {
      v67 = 0.0;
    }

    v68 = v89;
    sub_242CA321C(v50, v89, &qword_27ECF8528, &qword_242F36D08);
    *&v97 = v48;
    *(&v97 + 1) = v67;
    *&v98 = v34;
    *(&v98 + 1) = v35;
    *&v99 = v35;
    *(&v99 + 1) = v37;
    *&v100 = v39;
    *(&v100 + 1) = v40;
    v101 = 1;
    v69 = v91;
    *(v91 + 64) = 1;
    v70 = v100;
    v69[2] = v99;
    v69[3] = v70;
    v71 = v98;
    *v69 = v97;
    v69[1] = v71;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8530, &qword_242F36D58);
    sub_242CA321C(v68, v69 + *(v72 + 48), &qword_27ECF8528, &qword_242F36D08);
    sub_242CA321C(&v97, v102, &qword_27ECF8538, &qword_242F36D60);
    sub_242C6D138(v50, &qword_27ECF8528, &qword_242F36D08);
    sub_242C6D138(v68, &qword_27ECF8528, &qword_242F36D08);
    v102[0] = v48;
    *&v102[1] = v67;
    v102[2] = v34;
    v102[3] = v35;
    v102[4] = v35;
    v102[5] = v37;
    v102[6] = v39;
    v102[7] = v40;
    v103 = 1;
    return sub_242C6D138(v102, &qword_27ECF8538, &qword_242F36D60);
  }

  return result;
}

uint64_t sub_242E18494(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_242F04AB0();
  sub_242F03D50();
}

void sub_242E18508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for LayoutView(0);
  type metadata accessor for LayoutTreatment(0);
  sub_242E19234(&qword_27ECF5910, type metadata accessor for LayoutTreatment, &protocol conformance descriptor for LayoutTreatment);
  sub_242F03BD0();
  if (*(a2 + 16))
  {
    sub_242CE5568(a3);
  }

  v5 = MEMORY[0x245D260A0](0.617, 0.8, 0.0);
  MEMORY[0x28223BE20](v5);
  sub_242F03D50();

  v7 = MEMORY[0x245D260A0](v6, 1.542, 0.8, 0.0);
  MEMORY[0x28223BE20](v7);
  sub_242F03D50();
}

uint64_t sub_242E18730(uint64_t a1)
{
  sub_242E199E8(a1, v6);
  v1 = sub_242E199E8(v6, &v5);
  sub_242E19A44(v1, v2, v3);
  sub_242F04020();
  return sub_242E192D4(v6);
}

double sub_242E18790@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_242E1880C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

double sub_242E188A8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_242D0DC4C(result, a2);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_242E188C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E18928()
{
  v1 = *(type metadata accessor for LayoutView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_242E16F3C(v2);
}

unint64_t sub_242E18988()
{
  result = qword_27ECF8410;
  if (!qword_27ECF8410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF83D8, &qword_242F36A58);
    sub_242E18A40();
    sub_242C7E000(&qword_27ECF8458, &qword_27ECF8460, &qword_242F36AE8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8410);
  }

  return result;
}

unint64_t sub_242E18A40()
{
  result = qword_27ECF8418;
  if (!qword_27ECF8418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF83F8, &qword_242F36A78);
    sub_242E19850(&qword_27ECF8420, &qword_27ECF83F0, &qword_242F36A70, sub_242E18B24);
    sub_242C7E000(&qword_27ECF8450, &qword_27ECF8400, &qword_242F36A80, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8418);
  }

  return result;
}

unint64_t sub_242E18B24()
{
  result = qword_27ECF8428;
  if (!qword_27ECF8428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF83E8, &qword_242F36A68);
    sub_242C7E000(&qword_27ECF8430, &qword_27ECF8438, &qword_242F36AD8, MEMORY[0x277CE11A8]);
    sub_242C7E000(&qword_27ECF8440, &qword_27ECF8448, &qword_242F36AE0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8428);
  }

  return result;
}

unint64_t sub_242E18C08()
{
  result = qword_27ECF8468;
  if (!qword_27ECF8468)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF2FA8, &qword_242F17970);
    sub_242CF4A88(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8468);
  }

  return result;
}

void sub_242E18CD0(uint64_t a1)
{
  sub_242E190EC(319, &qword_27ECF8480, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_242E18DD8(uint64_t a1)
{
  sub_242E190EC(319, &qword_27ECF84A0, &type metadata for LayoutOutput, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_242E1913C(319, &qword_27ECF84A8, &qword_27ECF84B0, &qword_242F36BF0, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_242E19000(319);
      if (v3 <= 0x3F)
      {
        sub_242E1913C(319, &qword_27ECF5A10, &qword_27ECF5A18, &qword_242F2F238, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_242E19094(319);
          if (v5 <= 0x3F)
          {
            sub_242E190EC(319, &qword_27ECF84C8, &type metadata for SetNeedsFocusUpdateAction, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_242E1913C(319, &qword_27ECF84D0, &qword_27ECF2C70, &unk_242F2D4A0, MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                sub_242E191A0(319);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Layout(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for CGSize(319);
                    if (v10 <= 0x3F)
                    {
                      sub_242E1927C(319, v10, v11, v12);
                      if (v13 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_242E19000(uint64_t a1)
{
  if (!qword_27ECF84B8)
  {
    type metadata accessor for ClusterTransitionCoordinator(255);
    sub_242E19234(&qword_27ECF59E8, type metadata accessor for ClusterTransitionCoordinator, &protocol conformance descriptor for ClusterTransitionCoordinator);
    v1 = sub_242F03E70();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF84B8);
    }
  }
}

void sub_242E19094(uint64_t a1)
{
  if (!qword_27ECF84C0)
  {
    sub_242F04060();
    v1 = sub_242F03BC0();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF84C0);
    }
  }
}

void sub_242E190EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_242E1913C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_242E191A0(uint64_t a1)
{
  if (!qword_27ECF84D8)
  {
    type metadata accessor for LayoutTreatment(255);
    sub_242E19234(&qword_27ECF5910, type metadata accessor for LayoutTreatment, &protocol conformance descriptor for LayoutTreatment);
    v1 = sub_242F03BE0();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF84D8);
    }
  }
}

uint64_t sub_242E19234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_242E1927C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27ECF84E0)
  {
    v4 = type metadata accessor for TaggedValue(0, &type metadata for Display, MEMORY[0x277D837D0], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27ECF84E0);
    }
  }
}

uint64_t sub_242E19328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E19390(uint64_t a1)
{
  v2 = type metadata accessor for Zone(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242E19448(uint64_t *a1)
{
  v3 = *(type metadata accessor for LayoutView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Zone(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_242E18494(a1, v1 + v4, v7);
}

uint64_t sub_242E1957C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LayoutView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_242E161CC(a1, v2 + v6, v7, a2);
}

unint64_t sub_242E19628()
{
  result = qword_27ECF8558;
  if (!qword_27ECF8558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8548, &qword_242F36D70);
    sub_242E196E0();
    sub_242C7E000(&qword_27ECF6C60, &qword_27ECF6C68, &qword_242F30A40, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8558);
  }

  return result;
}

unint64_t sub_242E196E0()
{
  result = qword_27ECF8560;
  if (!qword_27ECF8560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8568, &qword_242F36D78);
    sub_242E19798();
    sub_242C7E000(&qword_27ECF85B8, &qword_27ECF85C0, &qword_242F36DA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8560);
  }

  return result;
}

unint64_t sub_242E19798()
{
  result = qword_27ECF8570;
  if (!qword_27ECF8570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8578, &qword_242F36D80);
    sub_242E19850(&qword_27ECF8580, &qword_27ECF8588, &qword_242F36D88, sub_242E198D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8570);
  }

  return result;
}

uint64_t sub_242E19850(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E198D4()
{
  result = qword_27ECF8590;
  if (!qword_27ECF8590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8598, &qword_242F36D90);
    sub_242E19234(&qword_27ECF85A0, type metadata accessor for ZoneView, &protocol conformance descriptor for ZoneView);
    sub_242C7E000(&qword_27ECF85A8, &qword_27ECF85B0, &qword_242F36D98, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8590);
  }

  return result;
}

unint64_t sub_242E19A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF85D0;
  if (!qword_27ECF85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF85D0);
  }

  return result;
}

double sub_242E19A98()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return result;
}

uint64_t sub_242E19B14(uint64_t a1, uint64_t *a2)
{
  sub_242E19C98(a1, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242E19C98(v4, &v3);

  sub_242F03A90();
  return sub_242E19D08(v4);
}

double sub_242E19BA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return result;
}

uint64_t sub_242E19C18(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242E19C98(a1, v3);

  sub_242F03A90();
  return sub_242E19D08(a1);
}

uint64_t sub_242E19C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0, &qword_242F3CBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E19D08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0, &qword_242F3CBA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_242E19D70(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_242F03A70();
  return sub_242D173A0;
}

uint64_t sub_242E19E14(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8, &qword_242F36E80);
  sub_242F03A50();
  return swift_endAccess();
}

uint64_t sub_242E19E8C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85F0, &qword_242F36E88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8, &qword_242F36E80);
  sub_242F03A60();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_242E1A010()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8, &qword_242F36E80);
  sub_242F03A50();
  return swift_endAccess();
}

uint64_t sub_242E1A084(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85F0, &qword_242F36E88);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8, &qword_242F36E80);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_242E1A1BC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85F0, &qword_242F36E88);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8, &qword_242F36E80);
  sub_242F03A50();
  swift_endAccess();
  return sub_242D17944;
}

uint64_t InstrumentDataSource.__allocating_init<A>(dataType:input:)(_BYTE *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_242E1A3EC(a1, a2, 0);
  return v4;
}

uint64_t sub_242E1A394(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = swift_allocObject();
  sub_242E1A3EC(a1, a2, v3);
  return v6;
}

uint64_t sub_242E1A3EC(_BYTE *a1, uint64_t a2, char a3)
{
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8, &qword_242F36E80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26[-v10 - 8];
  v12 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_242E19C98(&v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0, &qword_242F3CBA0);
  sub_242F03A40();
  sub_242E19D08(&v27);
  (*(v9 + 32))(v3 + v12, v11, v8);
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables) = MEMORY[0x277D84FA0];
  v13 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v13 = nullsub_2;
  v13[1] = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_identifier) = a1[16];
  v14 = *(*a1 + 112);
  *(&v28 + 1) = *(v7 + 80);
  v15 = *(&v28 + 1);
  v16 = *(v7 + 88);
  v29 = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
  v18 = *(*(v15 - 8) + 16);
  v18(boxed_opaque_existential_1, &a1[v14], v15);
  v19 = v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue;
  v20 = v28;
  *v19 = v27;
  *(v19 + 16) = v20;
  *(v19 + 32) = v29;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) = a3;
  if (a3)
  {
    *(&v28 + 1) = v15;
    v29 = v16;
    v21 = __swift_allocate_boxed_opaque_existential_1(&v27);
    v18(v21, &a1[v14], v15);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242E19C98(&v27, v26);

    sub_242F03A90();
    sub_242E19D08(&v27);
  }

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v22 = swift_allocObject();
  *(v22 + 2) = v15;
  *(v22 + 3) = v16;
  *(v22 + 4) = a2;
  *(v22 + 5) = v3;
  v23 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v23 = sub_242E1AED4;
  v23[1] = v22;

  return v3;
}

double sub_242E1A6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a2;
  sub_242F039E0();
  swift_getWitnessTable();
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();

  return result;
}

uint64_t sub_242E1A830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unownedRetainStrong();
  v10[3] = a3;
  v10[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242E19C98(v10, &v9);
  sub_242F03A90();
  return sub_242E19D08(v10);
}

double sub_242E1A8F8()
{
  if ((*(v0 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 1;
    v1 = *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);

    v1(v2);
  }

  return result;
}

void sub_242E1A96C()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables;
  swift_beginAccess();
  *(v0 + v1) = MEMORY[0x277D84FA0];

  if (*(v0 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) == 1)
  {
    sub_242E19C98(v0 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue, v3);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242E19C98(v3, v2);

    sub_242F03A90();
    sub_242E19D08(v3);
  }

  *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
}

uint64_t InstrumentDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8, &qword_242F36E80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_242E19D08(v0 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue);

  return v0;
}

uint64_t InstrumentDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8, &qword_242F36E80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_242E19D08(v0 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue);

  return swift_deallocClassInstance();
}

uint64_t sub_242E1ABC8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InstrumentDataSource(0);
  result = sub_242F03A10();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for InstrumentDataSource(uint64_t a1)
{
  result = qword_27ECF8620;
  if (!qword_27ECF8620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242E1AC5C(uint64_t a1)
{
  sub_242E1AE70(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_242E1AE70(uint64_t a1)
{
  if (!qword_27ECF8630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF85E0, &qword_242F3CBA0);
    v1 = sub_242F03AB0();
    if (!v2)
    {
      atomic_store(v1, &qword_27ECF8630);
    }
  }
}

uint64_t sub_242E1AEEC()
{

  return swift_deallocClassInstance();
}

void sub_242E1AF58()
{
  v1 = sub_242F05B30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v10, 0, sizeof(v10));
  if (*(v0 + 32))
  {
    sub_242D0C348(v10);
    *(v0 + 16) = 7104878;
    *(v0 + 24) = 0xE300000000000000;

    *(v0 + 32) = 0;
  }

  else
  {

    sub_242F05AF0();
    v5 = sub_242F05B40();
    swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040) + 48);
    v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC580, &qword_242F36120);
    v9 = swift_allocObject();
    *v7 = v9;
    sub_242E1CCC8(v10, v9 + 16);
    (*(v2 + 16))(v7 + v8, v4, v1);
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D841A8], v5);
    swift_willThrow();
    (*(v2 + 8))(v4, v1);
    sub_242D0C348(v10);
  }
}

void sub_242E1B17C(char a1)
{
  v3 = sub_242F05B30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v14, 0, sizeof(v14));
  if (*(v1 + 32) == 1)
  {
    sub_242D0C348(v14);
    v7 = 1702195828;
    if ((a1 & 1) == 0)
    {
      v7 = 0x65736C6166;
    }

    v8 = 0xE500000000000000;
    if (a1)
    {
      v8 = 0xE400000000000000;
    }

    *(v1 + 16) = v7;
    *(v1 + 24) = v8;

    *(v1 + 32) = 0;
  }

  else
  {

    sub_242F05AF0();
    v9 = sub_242F05B40();
    swift_allocError();
    v11 = v10;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040) + 48);
    v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC580, &qword_242F36120);
    v13 = swift_allocObject();
    *v11 = v13;
    sub_242E1CCC8(v14, v13 + 16);
    (*(v4 + 16))(v11 + v12, v6, v3);
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D841A8], v9);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    sub_242D0C348(v14);
  }
}

void sub_242E1B3C4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_242F05B30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x277D837D0];
  v21 = a1;
  v22 = a2;
  if (*(v3 + 32))
  {

    v10 = sub_242D0C348(&v21);
    v21 = 34;
    v22 = 0xE100000000000000;
    v20[4] = a1;
    v20[5] = a2;
    v20[2] = 34;
    v20[3] = 0xE100000000000000;
    v20[0] = 8796;
    v20[1] = 0xE200000000000000;
    sub_242C6CB78(v10, v11, v12);
    v13 = sub_242F058D0();
    MEMORY[0x245D26660](v13);

    MEMORY[0x245D26660](34, 0xE100000000000000);
    v14 = v22;
    *(v3 + 16) = v21;
    *(v3 + 24) = v14;

    *(v3 + 32) = 0;
  }

  else
  {

    sub_242F05AF0();
    v15 = sub_242F05B40();
    swift_allocError();
    v17 = v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040) + 48);
    v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC580, &qword_242F36120);
    v19 = swift_allocObject();
    *v17 = v19;
    sub_242E1CCC8(&v21, v19 + 16);
    (*(v7 + 16))(v17 + v18, v9, v6);
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D841A8], v15);
    swift_willThrow();
    (*(v7 + 8))(v9, v6);
    sub_242D0C348(&v21);
  }
}

void sub_242E1B688(double a1)
{
  v3 = sub_242F05B30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D839F8];
  v14 = a1;
  if (*(v1 + 32) == 1)
  {
    sub_242D0C348(&v14);
    if ((~*&a1 & 0x7FF0000000000000) != 0 || (*&a1 & 0xFFFFFFFFFFFFFLL) == 0)
    {
      v14 = 0.0;
      v15 = 0xE000000000000000;
      sub_242F05480();
      v8 = *&v14;
      v7 = v15;
    }

    else
    {
      v7 = 0xE300000000000000;
      v8 = 3157808;
    }

    *(v1 + 16) = v8;
    *(v1 + 24) = v7;

    *(v1 + 32) = 0;
  }

  else
  {

    sub_242F05AF0();
    v9 = sub_242F05B40();
    swift_allocError();
    v11 = v10;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040) + 48);
    v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC580, &qword_242F36120);
    v13 = swift_allocObject();
    *v11 = v13;
    sub_242E1CCC8(&v14, v13 + 16);
    (*(v4 + 16))(v11 + v12, v6, v3);
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D841A8], v9);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    sub_242D0C348(&v14);
  }
}

void sub_242E1B908(float a1)
{
  v3 = sub_242F05B30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D83A90];
  *&v14 = a1;
  if (*(v1 + 32) == 1)
  {
    sub_242D0C348(&v14);
    if ((~LODWORD(a1) & 0x7F800000) != 0 || (LODWORD(a1) & 0x7FFFFF) == 0)
    {
      v14 = 0;
      v15 = 0xE000000000000000;
      sub_242F054B0();
      v8 = v14;
      v7 = v15;
    }

    else
    {
      v7 = 0xE300000000000000;
      v8 = 3157808;
    }

    *(v1 + 16) = v8;
    *(v1 + 24) = v7;

    *(v1 + 32) = 0;
  }

  else
  {

    sub_242F05AF0();
    v9 = sub_242F05B40();
    swift_allocError();
    v11 = v10;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040) + 48);
    v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC580, &qword_242F36120);
    v13 = swift_allocObject();
    *v11 = v13;
    sub_242E1CCC8(&v14, v13 + 16);
    (*(v4 + 16))(v11 + v12, v6, v3);
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D841A8], v9);
    swift_willThrow();
    (*(v4 + 8))(v6, v3);
    sub_242D0C348(&v14);
  }
}

void sub_242E1BB88(char a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = sub_242F05B30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a2;
  v17[0] = a1;
  if (*(v5 + 32))
  {
    sub_242D0C348(v17);
    v17[0] = a1;
    *(v5 + 16) = sub_242F05F60();
    *(v5 + 24) = v11;

    *(v5 + 32) = 0;
  }

  else
  {

    sub_242F05AF0();
    v12 = sub_242F05B40();
    swift_allocError();
    v14 = v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040) + 48);
    v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC580, &qword_242F36120);
    v16 = swift_allocObject();
    *v14 = v16;
    sub_242E1CCC8(v17, v16 + 16);
    (*(v8 + 16))(v14 + v15, v10, v7);
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D841A8], v12);
    swift_willThrow();
    (*(v8 + 8))(v10, v7);
    sub_242D0C348(v17);
  }
}

void sub_242E1BDC8(__int16 a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = sub_242F05B30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;
  v17[0] = a1;
  if (*(v5 + 32))
  {
    sub_242D0C348(v17);
    v17[0] = a1;
    *(v5 + 16) = sub_242F05F60();
    *(v5 + 24) = v11;

    *(v5 + 32) = 0;
  }

  else
  {

    sub_242F05AF0();
    v12 = sub_242F05B40();
    swift_allocError();
    v14 = v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040) + 48);
    v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC580, &qword_242F36120);
    v16 = swift_allocObject();
    *v14 = v16;
    sub_242E1CCC8(v17, v16 + 16);
    (*(v8 + 16))(v14 + v15, v10, v7);
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D841A8], v12);
    swift_willThrow();
    (*(v8 + 8))(v10, v7);
    sub_242D0C348(v17);
  }
}

void sub_242E1C008(int a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = sub_242F05B30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;
  v17[0] = a1;
  if (*(v5 + 32))
  {
    sub_242D0C348(v17);
    v17[0] = a1;
    *(v5 + 16) = sub_242F05F60();
    *(v5 + 24) = v11;

    *(v5 + 32) = 0;
  }

  else
  {

    sub_242F05AF0();
    v12 = sub_242F05B40();
    swift_allocError();
    v14 = v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040) + 48);
    v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC580, &qword_242F36120);
    v16 = swift_allocObject();
    *v14 = v16;
    sub_242E1CCC8(v17, v16 + 16);
    (*(v8 + 16))(v14 + v15, v10, v7);
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D841A8], v12);
    swift_willThrow();
    (*(v8 + 8))(v10, v7);
    sub_242D0C348(v17);
  }
}

void sub_242E1C248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = sub_242F05B30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = a2;
  v17[0] = a1;
  if (*(v5 + 32))
  {
    sub_242D0C348(v17);
    v17[0] = a1;
    *(v5 + 16) = sub_242F05F60();
    *(v5 + 24) = v11;

    *(v5 + 32) = 0;
  }

  else
  {

    sub_242F05AF0();
    v12 = sub_242F05B40();
    swift_allocError();
    v14 = v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040) + 48);
    v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC580, &qword_242F36120);
    v16 = swift_allocObject();
    *v14 = v16;
    sub_242E1CCC8(v17, v16 + 16);
    (*(v8 + 16))(v14 + v15, v10, v7);
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D841A8], v12);
    swift_willThrow();
    (*(v8 + 8))(v10, v7);
    sub_242D0C348(v17);
  }
}

void sub_242E1C488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = sub_242F05B30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == MEMORY[0x277CC9318] || sub_242E1CC7C() == a2)
  {

    sub_242F05AF0();
    v18 = sub_242F05B40();
    swift_allocError();
    v20 = v19;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040) + 48);
    v20[3] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
    (*(v9 + 16))(v20 + v21, v11, v8);
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D841A8], v18);
    swift_willThrow();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v36 = a2;
    v12 = __swift_allocate_boxed_opaque_existential_1(v35);
    (*(*(a2 - 8) + 16))(v12, a1, a2);
    if (*(v5 + 32) == 1)
    {
      sub_242D0C348(v35);
      v13 = *(v5 + 40);
      v14 = *(v5 + 48);
      v15 = type metadata accessor for _LuaEncoder();
      v16 = swift_allocObject();
      v38 = v4;
      v16[4] = 0;
      v16[2] = v13;
      v16[3] = v14;
      v16[5] = 0;
      v36 = v15;
      v37 = sub_242E1CD38();
      v35[0] = v16;

      v17 = v38;
      sub_242F04D70();
      if (v17)
      {

        __swift_destroy_boxed_opaque_existential_2Tm(v35);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_2Tm(v35);
        if (v16[4])
        {
          v28 = v16[5];
          ObjectType = swift_getObjectType();
          v30 = *(v28 + 8);
          swift_unknownObjectRetain();
          v31 = v30(ObjectType, v28);
          v33 = v32;

          swift_unknownObjectRelease();
        }

        else
        {

          v31 = 0;
          v33 = 0xE000000000000000;
        }

        *(v5 + 16) = v31;
        *(v5 + 24) = v33;
      }

      *(v5 + 32) = 0;
    }

    else
    {

      sub_242F05AF0();
      v23 = sub_242F05B40();
      swift_allocError();
      v25 = v24;
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8640, &unk_242F37040) + 48);
      v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC580, &qword_242F36120);
      v27 = swift_allocObject();
      *v25 = v27;
      sub_242E1CCC8(v35, v27 + 16);
      (*(v9 + 16))(v25 + v26, v11, v8);
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D841A8], v23);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      sub_242D0C348(v35);
    }
  }
}

uint64_t sub_242E1CC4C()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_242E1CC7C()
{
  result = qword_27ECF8638;
  if (!qword_27ECF8638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECF8638);
  }

  return result;
}

uint64_t sub_242E1CCC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFC580, &qword_242F36120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_242E1CD38()
{
  result = qword_27ECF5538;
  if (!qword_27ECF5538)
  {
    type metadata accessor for _LuaEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF5538);
  }

  return result;
}

uint64_t ShadowConfiguration.image.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x1B0uLL);
  memcpy(a1, v1, 0x1B0uLL);
  return sub_242E1CDE4(__dst, v4);
}

void *ShadowConfiguration.image.setter(const void *a1)
{
  memcpy(__dst, v1, 0x1B0uLL);
  sub_242E1CE90(__dst);
  return memcpy(v1, a1, 0x1B0uLL);
}

void ShadowConfiguration.shadowSize.setter(double a1, double a2, double a3, double a4)
{
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = a3;
  v4[57] = a4;
}

void *ShadowConfiguration.init(image:shadowSize:color:offset:blurRadius:cornerRadius:isContinuousCurve:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, double a12@<D7>)
{
  result = memcpy(a4, __src, 0x1B0uLL);
  *(a4 + 432) = a5;
  *(a4 + 440) = a6;
  *(a4 + 448) = a7;
  *(a4 + 456) = a8;
  *(a4 + 464) = a2;
  *(a4 + 472) = a9;
  *(a4 + 480) = a10;
  *(a4 + 488) = a11;
  *(a4 + 496) = a12;
  *(a4 + 504) = a3;
  return result;
}

unint64_t sub_242E1D0E8()
{
  v1 = *v0;
  v2 = 0x6567616D69;
  v3 = 0x615272656E726F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x74657366666FLL;
  if (v1 != 3)
  {
    v4 = 0x6964615272756C62;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6953776F64616873;
  if (v1 != 1)
  {
    v5 = 0x726F6C6F63;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242E1D1D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E1E000(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E1D1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E1D5DC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E1D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E1D5DC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ShadowConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8648, &qword_242F37050);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  memcpy(v39, v1, 0x1B0uLL);
  v7 = *(v1 + 432);
  v32 = *(v1 + 448);
  v33 = v7;
  v31 = *(v1 + 464);
  v8 = *(v1 + 472);
  v9 = *(v1 + 480);
  v11 = *(v1 + 488);
  v10 = *(v1 + 496);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v12 = sub_242E1CDE4(v39, v38);
  sub_242E1D5DC(v12, v13, v14);
  sub_242F064C0();
  v15 = memcpy(v38, v39, sizeof(v38));
  v41 = 0;
  sub_242E1D630(v15, v16, v17);
  v18 = v34;
  sub_242F05F20();
  if (v18)
  {
    memcpy(v37, v38, sizeof(v37));
    sub_242E1CE90(v37);
  }

  else
  {
    v19 = v31;
    memcpy(v37, v38, sizeof(v37));
    v20 = sub_242E1CE90(v37);
    v36 = v32;
    v35 = v33;
    v40 = 1;
    sub_242CF4538(v20, v21, v22);
    v23 = sub_242F05F20();
    *&v35 = v19;
    v40 = 2;
    sub_242C7C594(v23, v24, v25);
    sub_242F05F20();
    *&v35 = v8;
    *(&v35 + 1) = v9;
    v40 = 3;
    type metadata accessor for CGPoint(0);
    sub_242E1DB58(&qword_27ECF5688, MEMORY[0x277CBF2A8]);
    v26 = sub_242F05F20();
    *&v35 = v11;
    v40 = 4;
    sub_242C7DB7C(v26, v27, v28);
    sub_242F05F20();
    *&v35 = v10;
    v40 = 5;
    sub_242F05F20();
    LOBYTE(v35) = 6;
    sub_242F05ED0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_242E1D5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8650;
  if (!qword_27ECF8650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8650);
  }

  return result;
}

unint64_t sub_242E1D630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8658;
  if (!qword_27ECF8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8658);
  }

  return result;
}

void ShadowConfiguration.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8660, &qword_242F37058);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v38[-1] - v7;
  v9 = a1[3];
  v37 = a1;
  v10 = __swift_project_boxed_opaque_existential_2Tm(a1, v9);
  sub_242E1D5DC(v10, v11, v12);
  v13 = sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v37);
  }

  else
  {
    v16 = v6;
    v42[519] = 0;
    sub_242E1DB04(v13, v14, v15);
    v17 = v5;
    sub_242F05E00();
    v18 = memcpy(v42, v41, 0x1B0uLL);
    LOBYTE(v38[0]) = 1;
    sub_242CF43B8(v18, v19, v20);
    v21 = sub_242F05E00();
    v22 = v39[0];
    v23 = v39[1];
    v24 = v39[2];
    v25 = v39[3];
    LOBYTE(v38[0]) = 2;
    sub_242C7C540(v21, v26, v27);
    sub_242F05E00();
    v28 = v39[0];
    type metadata accessor for CGPoint(0);
    LOBYTE(v38[0]) = 3;
    sub_242E1DB58(&qword_27ECF56C8, MEMORY[0x277CBF2B8]);
    v29 = sub_242F05E00();
    v30 = v39[0];
    v31 = v39[1];
    LOBYTE(v38[0]) = 4;
    sub_242C7DBD0(v29, v32, v33);
    sub_242F05E00();
    v34 = v39[0];
    LOBYTE(v38[0]) = 5;
    sub_242F05E00();
    v35 = v39[0];
    v42[518] = 6;
    v36 = sub_242F05DB0();
    (*(v16 + 8))(v8, v17);
    v36 &= 1u;
    memcpy(v38, v42, 0x1B0uLL);
    v38[54] = v22;
    v38[55] = v23;
    v38[56] = v24;
    v38[57] = v25;
    v38[58] = v28;
    v38[59] = v30;
    v38[60] = v31;
    v38[61] = v34;
    v38[62] = v35;
    LOBYTE(v38[63]) = v36;
    memcpy(a2, v38, 0x1F9uLL);
    sub_242C874B8(v38, v39);
    __swift_destroy_boxed_opaque_existential_2Tm(v37);
    memcpy(v39, v42, 0x1B0uLL);
    v39[54] = v22;
    v39[55] = v23;
    v39[56] = v24;
    v39[57] = v25;
    v39[58] = v28;
    v39[59] = v30;
    v39[60] = v31;
    v39[61] = v34;
    v39[62] = v35;
    v40 = v36;
    sub_242C87514(v39);
  }
}

unint64_t sub_242E1DB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8668;
  if (!qword_27ECF8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8668);
  }

  return result;
}

uint64_t sub_242E1DB58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void ShadowConfiguration.restoreAssets(from:)(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    if ((~*(v1 + 224) & 0xFELL) != 0)
    {
      ImageAsset.restore(from:)(a1);
    }

    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
  }
}

void sub_242E1DD04(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    if ((~*(v1 + 224) & 0xFELL) != 0)
    {
      ImageAsset.restore(from:)(a1);
    }

    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
    ImageAsset.restore(from:)(a1);
  }
}

uint64_t sub_242E1DDCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 505))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 464);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242E1DE14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 504) = 0;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 505) = 1;
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
      *(result + 464) = (a2 - 1);
      return result;
    }

    *(result + 505) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242E1DEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8670;
  if (!qword_27ECF8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8670);
  }

  return result;
}

unint64_t sub_242E1DF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8678;
  if (!qword_27ECF8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8678);
  }

  return result;
}

unint64_t sub_242E1DFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF8680;
  if (!qword_27ECF8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8680);
  }

  return result;
}

uint64_t sub_242E1E000(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6953776F64616873 && a2 == 0xEA0000000000657ALL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6964615272756C62 && a2 == 0xEA00000000007375 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5BEB0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void static GradientColor.singleColor(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE50, &unk_242F37640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F09510;
  *(inited + 32) = 0;
  v5 = inited + 32;
  *(inited + 40) = a1;
  v6 = sub_242CE6C84(inited);
  swift_setDeallocating();

  sub_242C6E840(v5);
  v7 = sub_242E1E384(v6);

  if (*(v7 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v8 = sub_242F05CB0();
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v10 = v8;

  sub_242E21B3C(v9, 1, &v10);

  *a2 = v10;
}

uint64_t sub_242E1E384(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  sub_242E3BDD0(0, v1, 0);
  v2 = v27;
  v4 = a1 + 64;
  result = sub_242F05940();
  v6 = result;
  v7 = 0;
  v26 = *(a1 + 36);
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = *(*(a1 + 56) + 8 * v6);

    result = sub_242F05470();
    v14 = *(v27 + 16);
    v13 = *(v27 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_242E3BDD0((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    *(v27 + 16) = v14 + 1;
    v15 = (v27 + 24 * v14);
    v15[4] = result;
    v15[5] = v12;
    v15[6] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v9 = v25;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_242C9E060(v6, v26, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_242C9E060(v6, v26, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
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
  return result;
}

uint64_t static TaggedValue<>.color(_:colorSet:)(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  v5 = off_27ECF8688;
  if (off_27ECF8688)
  {
    v6 = qword_27ECF8690;
    v9[0] = v3;
    v9[1] = v4;
    memcpy(__dst, a2, sizeof(__dst));

    (v5)(v9, __dst);
    return sub_242C655DC(v5, v6);
  }

  else
  {
    result = sub_242F05C60();
    __break(1u);
  }

  return result;
}

uint64_t Theming.palettes(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for Layout(0) + 28));
  v6 = v5[1];
  if (!v6)
  {
    return 0;
  }

  v8[0] = *v5;
  v8[1] = v6;
  return (*(a3 + 24))(v8, a2, a3);
}

double Theming.defaultPalette(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = (a1 + *(type metadata accessor for Layout(0) + 28));
  v8 = v7[1];
  if (v8)
  {
    *&v13[0] = *v7;
    *(&v13[0] + 1) = v8;
    (*(a3 + 16))(v13, a2, a3);
  }

  else
  {
    sub_242CE2D68(v13);
    v10 = v17;
    a4[4] = v16;
    a4[5] = v10;
    a4[6] = v18[0];
    *(a4 + 105) = *(v18 + 9);
    v11 = v13[1];
    *a4 = v13[0];
    a4[1] = v11;
    result = *&v14;
    v12 = v15;
    a4[2] = v14;
    a4[3] = v12;
  }

  return result;
}

uint64_t Theming.defaultWallpaperID(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = type metadata accessor for Layout(0);
  v9 = (a1 + *(result + 28));
  v10 = v9[1];
  if (v10)
  {
    v11[0] = *v9;
    v11[1] = v10;
    return (*(a3 + 8))(v11, a2, a3);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

void GradientColor.init(stops:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_242E1E384(a1);

  if (*(v3 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFE60, &qword_242F37650);
    v4 = sub_242F05CB0();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v6 = v4;

  sub_242E21B3C(v5, 1, &v6);

  *a2 = v6;
}

void sub_242E1E994(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73706F7473 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_242E1EA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E21ED0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E1EA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E21ED0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t GradientColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF86A8, &qword_242F37668);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E21ED0(v8, v9, v10);

  sub_242F064C0();
  v12[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF86B8, &qword_242F37670);
  sub_242E21F24(&qword_27ECF86C0, sub_242C7C594, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_242F05F20();

  return (*(v4 + 8))(v6, v3);
}

uint64_t GradientColor.hashValue.getter()
{
  v1 = *v0;
  sub_242F06390();
  sub_242C793AC(v3, v1);
  return sub_242F063E0();
}

uint64_t GradientColor.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF86C8, &qword_242F37678);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  v9 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E21ED0(v9, v10, v11);
  sub_242F06480();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF86B8, &qword_242F37670);
    sub_242E21F24(&qword_27ECF86D0, sub_242C7C540, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E1EE74()
{
  v1 = *v0;
  sub_242F06390();
  sub_242C793AC(v3, v1);
  return sub_242F063E0();
}

uint64_t sub_242E1EEC4(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  sub_242C793AC(v4, v2);
  return sub_242F063E0();
}

void Theme.ColorID.init(rawValue:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = _s14CarPlayAssetUI5ThemeO7ColorIDO8allCasesSayAEGvgZ_0();
  v6 = v5;
  v28 = *(v5 + 16);
  if (v28)
  {
    v7 = 0;
    v8 = (v5 + 48);
    while (1)
    {
      if (v7 >= *(v6 + 16))
      {
        __break(1u);
        return;
      }

      v9 = *(v8 - 2);
      v10 = *(v8 - 1);
      v11 = *v8;
      if (v11 <= 1)
      {
        v29 = 0;
        v30 = 0xE000000000000000;
        if (*v8)
        {
          MEMORY[0x245D26660](0x2E72616C75646F6DLL, 0xE800000000000000);
        }

        else
        {
          MEMORY[0x245D26660](0x2E6C6169646172, 0xE700000000000000);
        }

        goto LABEL_13;
      }

      if (v11 == 2)
      {
        break;
      }

      if (v11 == 3)
      {
        v29 = 0;
        v30 = 0xE000000000000000;
        MEMORY[0x245D26660](0x2E6E6F6D6D6F63, 0xE700000000000000);
LABEL_13:
        sub_242F05C20();
        goto LABEL_14;
      }

      v29 = 0x2E72656E74726170;
      v30 = 0xE800000000000000;
      sub_242C7CE5C(v9, v10, 4);

      v12 = sub_242F04F90();
      MEMORY[0x245D26660](v12);

LABEL_14:
      if (v29 == a1 && v30 == a2)
      {

LABEL_24:

        *a3 = v9;
        *(a3 + 8) = v10;
        *(a3 + 16) = v11;
        return;
      }

      v13 = sub_242F06110();

      if (v13)
      {

        goto LABEL_24;
      }

      ++v7;
      sub_242C7CEB0(v9, v10, v11);
      v8 += 24;
      if (v28 == v7)
      {
        goto LABEL_18;
      }
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    MEMORY[0x245D26660](0x6964654D7370616DLL, 0xEA00000000002E61);
    goto LABEL_13;
  }

LABEL_18:

  if (sub_242E1F3E8(0x2E72656E74726170, 0xE800000000000000, a1, a2))
  {
    v14 = sub_242F05030();
    v15 = sub_242E2246C(v14, a1, a2);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = MEMORY[0x245D265B0](v15, v17, v19, v21);
    v24 = v23;

    v25 = a3;
    *a3 = v22;
    *(a3 + 8) = v24;
    v26 = 4;
  }

  else
  {

    v25 = a3;
    *a3 = 0;
    *(a3 + 8) = 0;
    v26 = -1;
  }

  *(v25 + 16) = v26;
}

uint64_t Theme.ColorID.rawValue.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 1)
  {
    v4 = 0;
    if (*(v0 + 16))
    {
      MEMORY[0x245D26660](0x2E72616C75646F6DLL, 0xE800000000000000);
    }

    else
    {
      MEMORY[0x245D26660](0x2E6C6169646172, 0xE700000000000000);
    }

    goto LABEL_10;
  }

  if (v1 == 2)
  {
    v4 = 0;
    MEMORY[0x245D26660](0x6964654D7370616DLL, 0xEA00000000002E61);
    goto LABEL_10;
  }

  if (v1 == 3)
  {
    v4 = 0;
    MEMORY[0x245D26660](0x2E6E6F6D6D6F63, 0xE700000000000000);
LABEL_10:
    sub_242F05C20();
    return v4;
  }

  v4 = 0x2E72656E74726170;

  v2 = sub_242F04F90();
  MEMORY[0x245D26660](v2);

  return v4;
}

uint64_t sub_242E1F3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_242F05090();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_242F05090();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_242F06110();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_242F05090();
      v7 = v9;
    }

    while (v9);
  }

  sub_242F05090();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t Theme.ColorID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F06470();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_2Tm(v16, v18);
    v5 = sub_242F06120();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_2Tm(v16);

    Theme.ColorID.init(rawValue:)(v5, v7, v16);
    v11 = v17;
    if (v17 == 255)
    {
      sub_242E224B8(v8, v9, v10);
      swift_allocError();
      *v14 = v5;
      v14[1] = v7;
      swift_willThrow();
    }

    else
    {
      v13 = v16[0];
      v12 = v16[1];

      *a2 = v13;
      *(a2 + 8) = v12;
      *(a2 + 16) = v11;
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t static TaggedValue<>.allCases.getter()
{
  swift_beginAccess();
  v0 = off_27ECF8698;
  if (!off_27ECF8698)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = qword_27ECF86A0;

  v3 = v0(v2);
  sub_242C655DC(v0, v1);
  return v3;
}

uint64_t sub_242E1F728@<X0>(uint64_t *a1@<X8>)
{
  result = _s14CarPlayAssetUI5ThemeO7ColorIDO8allCasesSayAEGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_242E1F75C@<X0>(uint64_t *a1@<X8>)
{
  result = Theme.ColorID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_242E1F784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_242E22F2C(a1, a2, a3);

  return MEMORY[0x2821FC220](a1, a2, v5);
}

uint64_t sub_242E1F7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242E22F2C(a1, a2, a3);

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

uint64_t sub_242E1F8BC()
{
  sub_242F06390();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242E1F934(uint64_t a1)
{
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return result;
}

uint64_t sub_242E1F9A0(uint64_t a1)
{
  sub_242F06390();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t sub_242E1FA14()
{
  v0 = Theme.ColorID.rawValue.getter();
  v2 = v1;
  if (v0 == Theme.ColorID.rawValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_242F06110();
  }

  return v4 & 1;
}

CarPlayAssetUI::Theme::RadialColorID_optional __swiftcall Theme.RadialColorID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F062E0();

  v5 = 0;
  v6 = 35;
  switch(v3)
  {
    case 0:
      goto LABEL_50;
    case 1:
      v5 = 1;
      goto LABEL_50;
    case 2:
      v5 = 2;
      goto LABEL_50;
    case 3:
      v5 = 3;
      goto LABEL_50;
    case 4:
      v5 = 4;
      goto LABEL_50;
    case 5:
      v5 = 5;
      goto LABEL_50;
    case 6:
      v5 = 6;
      goto LABEL_50;
    case 7:
      v5 = 7;
      goto LABEL_50;
    case 8:
      v5 = 8;
      goto LABEL_50;
    case 9:
      v5 = 9;
      goto LABEL_50;
    case 10:
      v5 = 10;
      goto LABEL_50;
    case 11:
      v5 = 11;
      goto LABEL_50;
    case 12:
      v5 = 12;
      goto LABEL_50;
    case 13:
      v5 = 13;
      goto LABEL_50;
    case 14:
      v5 = 14;
      goto LABEL_50;
    case 15:
      v5 = 15;
      goto LABEL_50;
    case 16:
      v5 = 16;
      goto LABEL_50;
    case 17:
      v5 = 17;
      goto LABEL_50;
    case 18:
      v5 = 18;
      goto LABEL_50;
    case 19:
      v5 = 19;
      goto LABEL_50;
    case 20:
      v5 = 20;
      goto LABEL_50;
    case 21:
      v5 = 21;
      goto LABEL_50;
    case 22:
      v5 = 22;
      goto LABEL_50;
    case 23:
      v5 = 23;
      goto LABEL_50;
    case 24:
      v5 = 24;
      goto LABEL_50;
    case 25:
      v5 = 25;
      goto LABEL_50;
    case 26:
      v5 = 26;
      goto LABEL_50;
    case 27:
      v5 = 27;
      goto LABEL_50;
    case 28:
      v5 = 28;
      goto LABEL_50;
    case 29:
      v5 = 29;
      goto LABEL_50;
    case 30:
      v5 = 30;
      goto LABEL_50;
    case 31:
      v5 = 31;
      goto LABEL_50;
    case 32:
      v5 = 32;
      goto LABEL_50;
    case 33:
      v5 = 33;
      goto LABEL_50;
    case 34:
      v5 = 34;
LABEL_50:
      v6 = v5;
      break;
    case 35:
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    default:
      v6 = 53;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t Theme.RadialColorID.rawValue.getter()
{
  result = 0x417972616D697270;
  switch(*v0)
  {
    case 1:
      result = 5294388599723750000;
      break;
    case 2:
    case 0xE:
      result = 0x7261646E6F636573;
      break;
    case 3:
    case 0x10:
    case 0x22:
    case 0x2A:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x756C426B63617274;
      break;
    case 5:
    case 0x11:
    case 0x14:
    case 0x23:
    case 0x2F:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x72657474616C70;
      break;
    case 7:
      result = 0x656E696C646572;
      break;
    case 8:
      result = 0x43656E696C646572;
      break;
    case 9:
      result = 0x50656E696C646572;
      break;
    case 0xA:
      result = 0x44656E696C646572;
      break;
    case 0xB:
      result = 0xD000000000000017;
      break;
    case 0xC:
    case 0x1C:
    case 0x20:
    case 0x2B:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x786554656772616CLL;
      break;
    case 0xF:
      result = 0x65546C6961746564;
      break;
    case 0x12:
      result = 0xD000000000000015;
      break;
    case 0x13:
    case 0x19:
    case 0x25:
    case 0x2C:
    case 0x34:
      result = 0xD000000000000013;
      break;
    case 0x15:
      result = 0xD000000000000015;
      break;
    case 0x16:
    case 0x1A:
      result = 0xD000000000000018;
      break;
    case 0x17:
      result = 0xD00000000000001ALL;
      break;
    case 0x18:
      result = 0xD00000000000001CLL;
      break;
    case 0x1B:
      result = 0x6C6576654C776F6CLL;
      break;
    case 0x1D:
      result = 0x69746341646C6F63;
      break;
    case 0x1E:
      result = 0x63616E49646C6F63;
      break;
    case 0x1F:
      result = 0x6C61636974697263;
      break;
    case 0x21:
      result = 0x6465746361646572;
      break;
    case 0x24:
    case 0x27:
    case 0x2E:
    case 0x33:
      result = 0xD000000000000014;
      break;
    case 0x26:
      result = 0x6954657669746361;
      break;
    case 0x28:
      result = 0xD000000000000016;
      break;
    case 0x29:
      result = 0xD000000000000015;
      break;
    case 0x2D:
      result = 0xD000000000000015;
      break;
    case 0x30:
      result = 0xD000000000000015;
      break;
    case 0x31:
      result = 0x74656D7265776F70;
      break;
    case 0x32:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_242E20260@<X0>(unint64_t *a1@<X8>)
{
  result = Theme.RadialColorID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_242E20338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_242E22ED8(a1, a2, a3);

  return MEMORY[0x2821FC220](a1, a2, v5);
}

uint64_t sub_242E2038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242E22ED8(a1, a2, a3);

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

CarPlayAssetUI::Theme::ModularColorID_optional __swiftcall Theme.ModularColorID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F062E0();

  v5 = 0;
  v6 = 28;
  switch(v3)
  {
    case 0:
      goto LABEL_46;
    case 1:
      v5 = 1;
      goto LABEL_46;
    case 2:
      v5 = 2;
      goto LABEL_46;
    case 3:
      v5 = 3;
      goto LABEL_46;
    case 4:
      v5 = 4;
      goto LABEL_46;
    case 5:
      v5 = 5;
      goto LABEL_46;
    case 6:
      v5 = 6;
      goto LABEL_46;
    case 7:
      v5 = 7;
      goto LABEL_46;
    case 8:
      v5 = 8;
      goto LABEL_46;
    case 9:
      v5 = 9;
      goto LABEL_46;
    case 10:
      v5 = 10;
      goto LABEL_46;
    case 11:
      v5 = 11;
      goto LABEL_46;
    case 12:
      v5 = 12;
      goto LABEL_46;
    case 13:
      v5 = 13;
      goto LABEL_46;
    case 14:
      v5 = 14;
      goto LABEL_46;
    case 15:
      v5 = 15;
      goto LABEL_46;
    case 16:
      v5 = 16;
      goto LABEL_46;
    case 17:
      v5 = 17;
      goto LABEL_46;
    case 18:
      v5 = 18;
      goto LABEL_46;
    case 19:
      v5 = 19;
      goto LABEL_46;
    case 20:
      v5 = 20;
      goto LABEL_46;
    case 21:
      v5 = 21;
      goto LABEL_46;
    case 22:
      v5 = 22;
      goto LABEL_46;
    case 23:
      v5 = 23;
      goto LABEL_46;
    case 24:
      v5 = 24;
      goto LABEL_46;
    case 25:
      v5 = 25;
      goto LABEL_46;
    case 26:
      v5 = 26;
      goto LABEL_46;
    case 27:
      v5 = 27;
LABEL_46:
      v6 = v5;
      break;
    case 28:
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    default:
      v6 = 46;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t Theme.ModularColorID.rawValue.getter()
{
  result = 0x41706F547466656CLL;
  switch(*v0)
  {
    case 1:
      return 0x49706F547466656CLL;
    case 2:
      return 0xD000000000000010;
    case 3:
    case 0x14:
    case 0x19:
    case 0x1B:
      return 0xD000000000000012;
    case 4:
      return 0x706F547468676972;
    case 5:
      return 0xD000000000000010;
    case 6:
    case 0x15:
    case 0x16:
    case 0x29:
      return 0xD000000000000011;
    case 7:
    case 9:
    case 0x1A:
    case 0x20:
    case 0x2D:
      return 0xD000000000000013;
    case 8:
      return 0x756C426B63617274;
    case 0xA:
      return 0x656E696C646572;
    case 0xB:
      return 0x43656E696C646572;
    case 0xC:
      return 0x50656E696C646572;
    case 0xD:
      return 0x44656E696C646572;
    case 0xE:
      return 0xD000000000000017;
    case 0xF:
      return 0xD000000000000010;
    case 0x10:
      v2 = 0x54656772616CLL;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7865000000000000;
    case 0x11:
      v2 = 0x547468676972;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7865000000000000;
    case 0x12:
      return 0x747865547466656CLL;
    case 0x13:
      return 0xD000000000000010;
    case 0x17:
      return 0xD000000000000010;
    case 0x18:
    case 0x1D:
    case 0x21:
      return 0xD000000000000018;
    case 0x1C:
    case 0x2A:
    case 0x2B:
      v3 = 5;
      goto LABEL_32;
    case 0x1E:
      v3 = 10;
LABEL_32:
      result = v3 | 0xD000000000000010;
      break;
    case 0x1F:
      result = 0xD00000000000001CLL;
      break;
    case 0x22:
      result = 0x6C6576654C776F6CLL;
      break;
    case 0x23:
      result = 0xD000000000000010;
      break;
    case 0x24:
      result = 0x69746341646C6F63;
      break;
    case 0x25:
      result = 0x63616E49646C6F63;
      break;
    case 0x26:
      result = 0x6C61636974697263;
      break;
    case 0x27:
      result = 0xD000000000000010;
      break;
    case 0x28:
      result = 0x6465746361646572;
      break;
    case 0x2C:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_242E20AC0@<X0>(unint64_t *a1@<X8>)
{
  result = Theme.ModularColorID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_242E20B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_242E22E84(a1, a2, a3);

  return MEMORY[0x2821FC220](a1, a2, v5);
}

uint64_t sub_242E20BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_242E22E84(a1, a2, a3);

  return MEMORY[0x2821FC228](a1, a4, a2, a5, v10, a3);
}

CarPlayAssetUI::Theme::MapsMediaColorID_optional __swiftcall Theme.MapsMediaColorID.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F062E0();

  v5 = 0;
  v6 = 13;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
LABEL_25:
      v6 = v5;
      break;
    case 13:
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    default:
      v6 = 31;
      break;
  }

  *v2 = v6;
  return result;
}