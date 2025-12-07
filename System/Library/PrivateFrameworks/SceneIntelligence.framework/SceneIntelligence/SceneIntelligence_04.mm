__n128 sub_21DE7D71C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v7 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = *(type metadata accessor for EventDateTimeComponents(0) + 36);
  v5 = sub_21DEC6A20();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  result = v7;
  *a2 = v7;
  a2[1].n128_u64[0] = v3;
  a2[1].n128_u64[1] = -1;
  a2[2].n128_u64[0] = -1;
  return result;
}

uint64_t EventDateTimeComponents.computeDate()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21DEC6910();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_21DEC68F0();
  v9 = type metadata accessor for EventDateTimeComponents(0);
  sub_21DE73DA4(v5, v9, &off_282F278E8, v8);
  (*(v3 + 8))(v5, v2);
  v10 = *(v3 + 48);
  if (v10(v8, 1, v2) != 1)
  {
    return (*(v3 + 32))(a1, v8, v2);
  }

  sub_21DEC68F0();
  result = (v10)(v8, 1, v2);
  if (result != 1)
  {
    return sub_21DE5CD00(v8, &qword_27CE94358, &qword_21DED08A0);
  }

  return result;
}

uint64_t EventDateTimeComponents.computeDate(currentDate:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for EventDateTimeComponents(0);
  sub_21DE73DA4(a1, v7, &off_282F278E8, v6);
  v8 = sub_21DEC6910();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_21DE5CD00(v6, &qword_27CE94358, &qword_21DED08A0);
  sub_21DE81950();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_21DE7DAE4(__int128 *a1)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943C8, &unk_21DED0A60);
  MEMORY[0x28223BE20](v78);
  v81 = &v64 - v3;
  v4 = sub_21DEC69D0();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v74 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21DEC69F0();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94358, &qword_21DED08A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v79 = &v64 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v80 = &v64 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  v20 = sub_21DEC6910();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v71 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v64 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v82 = &v64 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v64 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v83 = &v64 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = (&v64 - v34);
  sub_21DEC68D0();
  if (*(v1 + 3) != *(a1 + 3) || *(v1 + 4) != *(a1 + 4))
  {
    goto LABEL_5;
  }

  v36 = *(v1 + 2);
  v84 = *v1;
  v85 = v36;
  sub_21DE73DA4(v35, &type metadata for EventDateComponents, &off_282F27888, v19);
  v70 = *(v21 + 48);
  if (v70(v19, 1, v20) == 1)
  {
    sub_21DE5CD00(v19, &qword_27CE94358, &qword_21DED08A0);
LABEL_5:
    (*(v21 + 8))(v35, v20);
    goto LABEL_6;
  }

  v67 = v7;
  v68 = v21;
  v39 = *(v21 + 32);
  v39(v31, v19, v20);
  v40 = v83;
  v41 = v31;
  v42 = v39;
  v39(v83, v41, v20);
  v43 = *(a1 + 2);
  v84 = *a1;
  v85 = v43;
  v69 = v21 + 48;
  sub_21DE73DA4(v35, &type metadata for EventDateComponents, &off_282F27888, v17);
  if (v70(v17, 1, v20) == 1)
  {
    sub_21DE5CD00(v17, &qword_27CE94358, &qword_21DED08A0);
    v44 = v40;
    v45 = *(v68 + 8);
    v45(v44, v20);
    v45(v35, v20);
  }

  else
  {
    v42(v26, v17, v20);
    v46 = v82;
    v66 = v21 + 32;
    v65 = v42;
    v42(v82, v26, v20);
    v47 = v67;
    sub_21DEC69B0();
    v49 = v76;
    v48 = v77;
    v50 = v74;
    (*(v76 + 104))(v74, *MEMORY[0x277CC9968], v77);
    v51 = v80;
    sub_21DEC69A0();
    v52 = v50;
    v53 = v51;
    (*(v49 + 8))(v52, v48);
    (*(v73 + 8))(v47, v75);
    v54 = v68;
    v55 = v79;
    (*(v68 + 16))(v79, v40, v20);
    (*(v54 + 56))(v55, 0, 1, v20);
    v56 = *(v78 + 48);
    v57 = v81;
    sub_21DE5C6E4(v53, v81, &qword_27CE94358, &qword_21DED08A0);
    sub_21DE5C6E4(v55, v57 + v56, &qword_27CE94358, &qword_21DED08A0);
    if (v70(v57, 1, v20) == 1)
    {
      sub_21DE5CD00(v55, &qword_27CE94358, &qword_21DED08A0);
      sub_21DE5CD00(v53, &qword_27CE94358, &qword_21DED08A0);
      v58 = *(v54 + 8);
      v58(v46, v20);
      v58(v83, v20);
      v58(v35, v20);
      if (v70((v57 + v56), 1, v20) == 1)
      {
        sub_21DE5CD00(v57, &qword_27CE94358, &qword_21DED08A0);
        v37 = 1;
        return v37 & 1;
      }
    }

    else
    {
      v59 = v72;
      sub_21DE5C6E4(v57, v72, &qword_27CE94358, &qword_21DED08A0);
      if (v70((v57 + v56), 1, v20) != 1)
      {
        v61 = v57 + v56;
        v62 = v71;
        v65(v71, v61, v20);
        sub_21DE81CA4(&qword_27CE943D0, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v37 = sub_21DEC6D70();
        v63 = *(v54 + 8);
        v63(v62, v20);
        sub_21DE5CD00(v55, &qword_27CE94358, &qword_21DED08A0);
        sub_21DE5CD00(v53, &qword_27CE94358, &qword_21DED08A0);
        v63(v82, v20);
        v63(v83, v20);
        v63(v35, v20);
        v63(v59, v20);
        sub_21DE5CD00(v57, &qword_27CE94358, &qword_21DED08A0);
        return v37 & 1;
      }

      sub_21DE5CD00(v55, &qword_27CE94358, &qword_21DED08A0);
      sub_21DE5CD00(v53, &qword_27CE94358, &qword_21DED08A0);
      v60 = *(v54 + 8);
      v60(v82, v20);
      v60(v83, v20);
      v60(v35, v20);
      v60(v59, v20);
    }

    sub_21DE5CD00(v57, &qword_27CE943C8, &unk_21DED0A60);
  }

LABEL_6:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_21DE7E474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for EventDateTimeComponents(0) - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  if (*(v8 + 16) < 2uLL)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943D8, &qword_21DED3400);
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }

  else
  {
    v27 = v8;

    sub_21DE7FB80(&v27);
    v11 = v27;
    v12 = v27[2];
    if (v12)
    {
      for (i = 1; v12 != i; ++i)
      {
        if (i >= v11[2])
        {
          __break(1u);
          goto LABEL_15;
        }

        v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v15 = *(v4 + 72);
        sub_21DE77950(&v14[v15 * i], v10);
        sub_21DE77950(&v14[v15 * (i - 1)], v7);
        v16 = sub_21DE7DAE4(v7);
        sub_21DE779B4(v7);
        sub_21DE779B4(v10);
        if ((v16 & 1) == 0)
        {

          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943D8, &qword_21DED3400);
          return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
        }
      }

      v21 = v11[2];
      if (!v21)
      {
        goto LABEL_16;
      }

      v22 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      sub_21DE77950(v22, v10);
      sub_21DE77950(v22 + *(v4 + 72) * (v21 - 1), v7);

      v26 = *v7;
      v23 = *(v7 + 2);
      sub_21DE779B4(v7);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943D8, &qword_21DED3400);
      v25 = a2 + *(v24 + 48);
      sub_21DE77A74(v10, a2);
      *v25 = v26;
      *(v25 + 16) = v23;
      return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
    }

    else
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_21DE7E79C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_21DEC7010();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_21DE7EF64(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_21DE7EF64((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_21DEC6FF0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_21DEC6EB0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_21DEC6EB0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_21DEC7010();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_21DE7EF64(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_21DEC7010();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_21DE7EF64(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_21DE7EF64((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_21DEC6EB0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_21DE7EB5C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a9@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v17 = v10;
  v13 = a6;
  v18 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v18 != v14)
  {
    v9 = a4;
    v16 = MEMORY[0x277D84F90];
    v11 = a5;
    do
    {
      v19 = v11 >> 14;
      if (v11 >> 14 == v14)
      {
        break;
      }

      v41 = a1;
      v48 = v17;
      v43 = v16;
      v16 = a7;
      while (1)
      {
        while (1)
        {
          v47[0] = sub_21DEC71F0();
          v47[1] = v20;
          v21 = v48;
          v22 = a3(v47);
          v48 = v21;
          if (v21)
          {

            return v16;
          }

          v23 = v22;

          if (v23)
          {
            break;
          }

          v16 = a7;
          v19 = sub_21DEC71D0() >> 14;
          if (v19 == v14)
          {
            v16 = v43;
            goto LABEL_28;
          }
        }

        result = v11;
        if (v11 >> 14 != v19 || (a2 & 1) == 0)
        {
          break;
        }

        v16 = a7;
        v11 = sub_21DEC71D0();
        v19 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v16 = v43;
          goto LABEL_28;
        }
      }

      if (v19 < v11 >> 14)
      {
        __break(1u);
        return result;
      }

      v44 = sub_21DEC7210();
      v39 = v26;
      v40 = v25;
      v38 = v27;
      v16 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_21DE7EF64(0, *(v43 + 2) + 1, 1, v43);
      }

      v29 = *(v16 + 2);
      v28 = *(v16 + 3);
      if (v29 >= v28 >> 1)
      {
        v16 = sub_21DE7EF64((v28 > 1), v29 + 1, 1, v16);
      }

      *(v16 + 2) = v29 + 1;
      v30 = &v16[32 * v29];
      *(v30 + 4) = v44;
      *(v30 + 5) = v40;
      *(v30 + 6) = v39;
      *(v30 + 7) = v38;
      v11 = sub_21DEC71D0();
      a1 = v41;
      v17 = v48;
    }

    while (*(v16 + 2) != v41);
LABEL_28:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v16;
    }

    if (v14 >= v11 >> 14)
    {
      v9 = sub_21DEC7210();
      v11 = v34;
      v13 = v35;
      v14 = v36;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
LABEL_34:
      v12 = v15 + 1;
      if (v15 < a9 >> 1)
      {
LABEL_35:
        *(v16 + 2) = v12;
        v37 = &v16[32 * v15];
        *(v37 + 4) = v9;
        *(v37 + 5) = v11;
        *(v37 + 6) = v13;
        *(v37 + 7) = v14;
        return v16;
      }

LABEL_38:
      v16 = sub_21DE7EF64((a9 > 1), v12, 1, v16);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v16 = sub_21DE7EF64(0, *(v16 + 2) + 1, 1, v16);
    goto LABEL_33;
  }

  if (v18 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v18)
    {
      v9 = sub_21DEC7210();
      v11 = v31;
      v13 = v32;
      v14 = v33;

      v16 = sub_21DE7EF64(0, 1, 1, MEMORY[0x277D84F90]);
      v15 = *(v16 + 2);
      a9 = *(v16 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x277D84F90];
}

char *sub_21DE7EF64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94428, &qword_21DED0E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21DE7F070(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94408, &qword_21DED0E38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unsigned __int8 *sub_21DE7F174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_21DE81CEC();

  result = sub_21DEC7000();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_21DE7F70C(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21DEC7370();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21DE7F70C(uint64_t a1, unint64_t a2)
{
  v2 = sub_21DEC7010();
  v6 = sub_21DE7F78C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21DE7F78C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21DEC71E0();
    if (!v9 || (v10 = v9, v11 = sub_21DE56984(v9, 0), v12 = sub_21DE7F8E4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_21DEC6E70();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21DEC6E70();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21DEC7370();
LABEL_4:

  return sub_21DEC6E70();
}

unint64_t sub_21DE7F8E4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21DE7FB04(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21DEC6F90();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21DEC7370();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21DE7FB04(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21DEC6F60();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_21DE7FB04(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21DEC6FC0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223D4B300](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_21DE7FB80(uint64_t *a1)
{
  v2 = *(type metadata accessor for EventDateTimeComponents(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21DE81110(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21DE7FC28(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21DE7FC28(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21DEC75E0();
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
        type metadata accessor for EventDateTimeComponents(0);
        v6 = sub_21DEC7090();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for EventDateTimeComponents(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21DE7FFA0(v8, v9, a1, v4);
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
    return sub_21DE7FD54(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21DE7FD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = type metadata accessor for EventDateTimeComponents(0);
  v8 = MEMORY[0x28223BE20](v43);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v36 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v36 - v16);
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v37 = v19;
    v23 = v18 + v19 * a3;
LABEL_6:
    v41 = v20;
    v42 = a3;
    v39 = v23;
    v40 = v22;
    v24 = v22;
    while (1)
    {
      sub_21DE77950(v23, v17);
      sub_21DE77950(v20, v13);
      v25 = *v17 < *v13;
      if (*v17 == *v13)
      {
        v26 = v17[1];
        v27 = v13[1];
        v25 = v26 < v27;
        if (v26 == v27)
        {
          v28 = v17[2];
          v29 = v13[2];
          v25 = v28 < v29;
          if (v28 == v29)
          {
            v30 = v17[3];
            v31 = v13[3];
            v25 = v30 < v31;
            if (v30 == v31)
            {
              v32 = v17[4];
              v33 = v13[4];
              v25 = v32 < v33;
              if (v32 == v33)
              {
                sub_21DE779B4(v13);
                result = sub_21DE779B4(v17);
LABEL_5:
                a3 = v42 + 1;
                v20 = v41 + v37;
                v22 = v40 - 1;
                v23 = v39 + v37;
                if (v42 + 1 == v38)
                {
                  return result;
                }

                goto LABEL_6;
              }
            }
          }
        }
      }

      v34 = v25;
      sub_21DE779B4(v13);
      result = sub_21DE779B4(v17);
      if ((v34 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v18)
      {
        break;
      }

      sub_21DE77A74(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_21DE77A74(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21DE7FFA0(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v145 = a1;
  v158 = type metadata accessor for EventDateTimeComponents(0);
  v152 = *(v158 - 8);
  v8 = MEMORY[0x28223BE20](v158);
  v148 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v157 = &v139 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v139 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v139 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v149 = (&v139 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v141 = (&v139 - v22);
  result = MEMORY[0x28223BE20](v21);
  v26 = (&v139 - v24);
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_123:
    v30 = *v145;
    if (!*v145)
    {
      goto LABEL_161;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_125:
      v159 = v29;
      v134 = *(v29 + 16);
      if (v134 >= 2)
      {
        while (*a3)
        {
          v135 = v29;
          v29 = *(v29 + 16 * v134);
          v136 = v135;
          v137 = *&v135[16 * v134 + 24];
          sub_21DE80970(*a3 + *(v152 + 72) * v29, *a3 + *(v152 + 72) * *&v135[16 * v134 + 16], *a3 + *(v152 + 72) * v137, v30);
          if (v5)
          {
          }

          if (v137 < v29)
          {
            goto LABEL_148;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v136 = sub_21DE80F4C(v136);
          }

          if (v134 - 2 >= *(v136 + 2))
          {
            goto LABEL_149;
          }

          v138 = &v136[16 * v134];
          *v138 = v29;
          v138[1] = v137;
          v159 = v136;
          result = sub_21DE80EC0(v134 - 1);
          v29 = v159;
          v134 = *(v159 + 16);
          if (v134 <= 1)
          {
          }
        }

        goto LABEL_159;
      }
    }

LABEL_155:
    result = sub_21DE80F4C(v29);
    v29 = result;
    goto LABEL_125;
  }

  v155 = v25;
  v140 = a4;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v153 = a3;
  v142 = &v139 - v24;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 < v27)
    {
      v150 = v27;
      v32 = *a3;
      v33 = *(v152 + 72);
      a3 = v28 + 1;
      sub_21DE77950(v32 + v33 * v31, v26);
      v146 = v30;
      v154 = v33;
      v34 = v32 + v33 * v30;
      v35 = v141;
      sub_21DE77950(v34, v141);
      v36 = v35;
      v37 = *v26 == *v35;
      v38 = *v26 < *v35;
      v144 = v5;
      if (v37)
      {
        v39 = v26[1];
        v40 = v35[1];
        v41 = v39 < v40;
        v42 = v146;
        if (v39 == v40)
        {
          v43 = v26[2];
          v44 = v36[2];
          v41 = v43 < v44;
          if (v43 == v44)
          {
            v45 = v26[3];
            v46 = v36[3];
            v41 = v45 < v46;
            if (v45 == v46)
            {
              v41 = v26[4] < v36[4];
            }
          }
        }

        v47 = v41;
        LODWORD(v151) = v47;
      }

      else
      {
        v48 = v38;
        LODWORD(v151) = v48;
        v42 = v146;
      }

      v143 = v29;
      sub_21DE779B4(v36);
      result = sub_21DE779B4(v26);
      v49 = v42 + 2;
      v50 = v154 * (v42 + 2);
      v51 = v32 + v50;
      v52 = a3;
      v53 = v154 * a3;
      v54 = v32 + v154 * a3;
      do
      {
        v55 = v49;
        v56 = v52;
        v5 = v53;
        v29 = v50;
        if (v49 >= v150)
        {
          break;
        }

        v156 = v49;
        v57 = v155;
        sub_21DE77950(v51, v155);
        v58 = v149;
        sub_21DE77950(v54, v149);
        v59 = v58;
        v60 = *v57 < *v58;
        if (*v57 == *v58)
        {
          v61 = v57[1];
          v62 = v58[1];
          v60 = v61 < v62;
          if (v61 == v62)
          {
            v63 = v57[2];
            v64 = v58[2];
            v60 = v63 < v64;
            if (v63 == v64)
            {
              v65 = v57[3];
              v66 = v58[3];
              v60 = v65 < v66;
              if (v65 == v66)
              {
                v60 = v57[4] < v58[4];
              }
            }
          }
        }

        a3 = v60;
        sub_21DE779B4(v59);
        result = sub_21DE779B4(v155);
        v55 = v156;
        v49 = v156 + 1;
        v51 += v154;
        v54 += v154;
        v52 = v56 + 1;
        v53 = v5 + v154;
        v50 = v29 + v154;
      }

      while (v151 == a3);
      if (v151)
      {
        v30 = v146;
        if (v55 < v146)
        {
          goto LABEL_152;
        }

        if (v146 >= v55)
        {
          v31 = v55;
          v29 = v143;
          v5 = v144;
          a3 = v153;
          goto LABEL_46;
        }

        v67 = v146 * v154;
        do
        {
          if (v30 != v56)
          {
            v68 = *v153;
            if (!*v153)
            {
              goto LABEL_158;
            }

            v156 = v68 + v67;
            sub_21DE77A74(v68 + v67, v148);
            if (v67 < v5 || v156 >= v68 + v29)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v67 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_21DE77A74(v148, v68 + v5);
          }

          ++v30;
          v5 -= v154;
          v29 -= v154;
          v67 += v154;
          v38 = v30 < v56--;
        }

        while (v38);
      }

      v31 = v55;
      v29 = v143;
      v5 = v144;
      a3 = v153;
      v30 = v146;
    }

LABEL_46:
    v69 = *(a3 + 8);
    if (v31 < v69)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_151;
      }

      if (v31 - v30 < v140)
      {
        break;
      }
    }

LABEL_72:
    if (v31 < v30)
    {
      goto LABEL_150;
    }

    v156 = v31;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21DE7F070(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v89 = *(v29 + 16);
    v88 = *(v29 + 24);
    v90 = v89 + 1;
    v28 = v156;
    if (v89 >= v88 >> 1)
    {
      result = sub_21DE7F070((v88 > 1), v89 + 1, 1, v29);
      v28 = v156;
      v29 = result;
    }

    *(v29 + 16) = v90;
    v91 = v29 + 16 * v89;
    *(v91 + 32) = v30;
    *(v91 + 40) = v28;
    v30 = *v145;
    if (!*v145)
    {
      goto LABEL_160;
    }

    if (v89)
    {
      while (1)
      {
        a3 = v90 - 1;
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v92 = *(v29 + 32);
          v93 = *(v29 + 40);
          v102 = __OFSUB__(v93, v92);
          v94 = v93 - v92;
          v95 = v102;
LABEL_92:
          if (v95)
          {
            goto LABEL_139;
          }

          v108 = (v29 + 16 * v90);
          v110 = *v108;
          v109 = v108[1];
          v111 = __OFSUB__(v109, v110);
          v112 = v109 - v110;
          v113 = v111;
          if (v111)
          {
            goto LABEL_142;
          }

          v114 = (v29 + 32 + 16 * a3);
          v116 = *v114;
          v115 = v114[1];
          v102 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v102)
          {
            goto LABEL_145;
          }

          if (__OFADD__(v112, v117))
          {
            goto LABEL_146;
          }

          if (v112 + v117 >= v94)
          {
            if (v94 < v117)
            {
              a3 = v90 - 2;
            }

            goto LABEL_113;
          }

          goto LABEL_106;
        }

        v118 = (v29 + 16 * v90);
        v120 = *v118;
        v119 = v118[1];
        v102 = __OFSUB__(v119, v120);
        v112 = v119 - v120;
        v113 = v102;
LABEL_106:
        if (v113)
        {
          goto LABEL_141;
        }

        v121 = v29 + 16 * a3;
        v123 = *(v121 + 32);
        v122 = *(v121 + 40);
        v102 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v102)
        {
          goto LABEL_144;
        }

        if (v124 < v112)
        {
          goto LABEL_3;
        }

LABEL_113:
        v129 = a3 - 1;
        if (a3 - 1 >= v90)
        {
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*v153)
        {
          goto LABEL_157;
        }

        v130 = v29;
        v131 = v29 + 32;
        v29 = *(v29 + 32 + 16 * v129);
        v132 = *(v131 + 16 * a3 + 8);
        sub_21DE80970(*v153 + *(v152 + 72) * v29, *v153 + *(v152 + 72) * *(v131 + 16 * a3), *v153 + *(v152 + 72) * v132, v30);
        if (v5)
        {
        }

        if (v132 < v29)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = sub_21DE80F4C(v130);
        }

        if (v129 >= *(v130 + 2))
        {
          goto LABEL_136;
        }

        v133 = &v130[16 * v129];
        *(v133 + 4) = v29;
        *(v133 + 5) = v132;
        v159 = v130;
        result = sub_21DE80EC0(a3);
        v29 = v159;
        v90 = *(v159 + 16);
        v28 = v156;
        if (v90 <= 1)
        {
          goto LABEL_3;
        }
      }

      v96 = v29 + 32 + 16 * v90;
      v97 = *(v96 - 64);
      v98 = *(v96 - 56);
      v102 = __OFSUB__(v98, v97);
      v99 = v98 - v97;
      if (v102)
      {
        goto LABEL_137;
      }

      v101 = *(v96 - 48);
      v100 = *(v96 - 40);
      v102 = __OFSUB__(v100, v101);
      v94 = v100 - v101;
      v95 = v102;
      if (v102)
      {
        goto LABEL_138;
      }

      v103 = (v29 + 16 * v90);
      v105 = *v103;
      v104 = v103[1];
      v102 = __OFSUB__(v104, v105);
      v106 = v104 - v105;
      if (v102)
      {
        goto LABEL_140;
      }

      v102 = __OFADD__(v94, v106);
      v107 = v94 + v106;
      if (v102)
      {
        goto LABEL_143;
      }

      if (v107 >= v99)
      {
        v125 = (v29 + 32 + 16 * a3);
        v127 = *v125;
        v126 = v125[1];
        v102 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v102)
        {
          goto LABEL_147;
        }

        if (v94 < v128)
        {
          a3 = v90 - 2;
        }

        goto LABEL_113;
      }

      goto LABEL_92;
    }

LABEL_3:
    a3 = v153;
    v27 = v153[1];
    v26 = v142;
    if (v28 >= v27)
    {
      goto LABEL_123;
    }
  }

  v70 = v30 + v140;
  if (__OFADD__(v30, v140))
  {
    goto LABEL_153;
  }

  if (v70 >= v69)
  {
    v70 = *(a3 + 8);
  }

  if (v70 < v30)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v31 == v70)
  {
    goto LABEL_72;
  }

  v143 = v29;
  v144 = v5;
  v71 = *a3;
  v72 = *(v152 + 72);
  v73 = *a3 + v72 * (v31 - 1);
  v74 = -v72;
  v146 = v30;
  v147 = v72;
  v75 = v30 - v31;
  v76 = v71 + v31 * v72;
  v150 = v70;
LABEL_57:
  v156 = v31;
  v77 = v76;
  v151 = v75;
  v154 = v73;
  while (1)
  {
    sub_21DE77950(v77, v17);
    sub_21DE77950(v73, v14);
    v78 = *v17 < *v14;
    if (*v17 == *v14)
    {
      v79 = v17[1];
      v80 = v14[1];
      v78 = v79 < v80;
      if (v79 == v80)
      {
        v81 = v17[2];
        v82 = v14[2];
        v78 = v81 < v82;
        if (v81 == v82)
        {
          v83 = v17[3];
          v84 = v14[3];
          v78 = v83 < v84;
          if (v83 == v84)
          {
            v85 = v17[4];
            v86 = v14[4];
            v78 = v85 < v86;
            if (v85 == v86)
            {
              sub_21DE779B4(v14);
              sub_21DE779B4(v17);
LABEL_56:
              v31 = v156 + 1;
              v73 = v154 + v147;
              v75 = v151 - 1;
              v76 += v147;
              if (v156 + 1 == v150)
              {
                v31 = v150;
                v29 = v143;
                v5 = v144;
                v30 = v146;
                goto LABEL_72;
              }

              goto LABEL_57;
            }
          }
        }
      }
    }

    a3 = v78;
    sub_21DE779B4(v14);
    result = sub_21DE779B4(v17);
    if ((a3 & 1) == 0)
    {
      goto LABEL_56;
    }

    if (!v71)
    {
      break;
    }

    a3 = v157;
    sub_21DE77A74(v77, v157);
    swift_arrayInitWithTakeFrontToBack();
    sub_21DE77A74(a3, v73);
    v73 += v74;
    v77 += v74;
    if (__CFADD__(v75++, 1))
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
  return result;
}

uint64_t sub_21DE80970(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v66 = type metadata accessor for EventDateTimeComponents(0);
  v8 = MEMORY[0x28223BE20](v66);
  v9 = MEMORY[0x28223BE20](v8);
  v65 = (&v60 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v60 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v60 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_82;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_83;
  }

  v21 = (a2 - a1) / v19;
  v69 = a1;
  v68 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    v63 = v15;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v23;
    if (v23 >= 1)
    {
      v37 = -v19;
      v38 = a4 + v23;
      v64 = -v19;
      do
      {
        v60 = v36;
        v39 = a2;
        a2 += v37;
        v62 = v39;
        while (1)
        {
          if (v39 <= a1)
          {
            v69 = v39;
            v67 = v60;
            goto LABEL_80;
          }

          v40 = a3;
          v41 = a4;
          v42 = v38 + v37;
          v43 = a2;
          v44 = v65;
          sub_21DE77950(v38 + v37, v65);
          v45 = v43;
          v46 = v43;
          v47 = v63;
          sub_21DE77950(v46, v63);
          v48 = v47;
          v49 = *v44 == *v47;
          v50 = *v44 < *v47;
          v61 = v36;
          if (v49)
          {
            v51 = v44[1];
            v52 = v47[1];
            v53 = v51 < v52;
            v54 = v64;
            if (v51 == v52)
            {
              v55 = v44[2];
              v56 = v47[2];
              v53 = v55 < v56;
              if (v55 == v56)
              {
                v57 = v44[3];
                v58 = v47[3];
                v53 = v57 < v58;
                if (v57 == v58)
                {
                  v53 = v44[4] < v47[4];
                }
              }
            }

            v59 = v53;
          }

          else
          {
            v59 = v50;
            v54 = v64;
          }

          a3 = v40 + v54;
          sub_21DE779B4(v48);
          sub_21DE779B4(v65);
          a2 = v45;
          if (v59)
          {
            break;
          }

          v36 = v42;
          a4 = v41;
          if (v40 < v38 || a3 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v40 != v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v38 = v42;
          v37 = v64;
          v39 = v62;
          if (v42 <= v41)
          {
            a2 = v62;
            goto LABEL_79;
          }
        }

        a4 = v41;
        if (v40 < v62 || a3 >= v62)
        {
          swift_arrayInitWithTakeFrontToBack();
          v36 = v61;
        }

        else
        {
          v36 = v61;
          if (v40 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v37 = v64;
      }

      while (v38 > v41);
    }

LABEL_79:
    v69 = a2;
    v67 = v36;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v22;
    v67 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      do
      {
        sub_21DE77950(a2, v17);
        sub_21DE77950(a4, v13);
        v26 = *v17 < *v13;
        if (*v17 == *v13 && (v27 = v17[1], v28 = v13[1], v26 = v27 < v28, v27 == v28) && (v29 = v17[2], v30 = v13[2], v26 = v29 < v30, v29 == v30) && (v31 = v17[3], v32 = v13[3], v26 = v31 < v32, v31 == v32) && (v33 = v17[4], v34 = v13[4], v26 = v33 < v34, v33 == v34))
        {
          sub_21DE779B4(v13);
          sub_21DE779B4(v17);
        }

        else
        {
          v35 = v26;
          sub_21DE779B4(v13);
          sub_21DE779B4(v17);
          if (v35)
          {
            if (a1 < a2 || a1 >= a2 + v19)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v19;
            goto LABEL_42;
          }
        }

        if (a1 < a4 || a1 >= a4 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v68 = a4 + v19;
        a4 += v19;
LABEL_42:
        a1 += v19;
        v69 = a1;
      }

      while (a4 < v24 && a2 < a3);
    }
  }

LABEL_80:
  sub_21DE80F60(&v69, &v68, &v67);
  return 1;
}

uint64_t sub_21DE80EC0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21DE80F4C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21DE80F60(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for EventDateTimeComponents(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_21DE81044(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_21DEC7370();
  }

  result = sub_21DE81D40(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

void *sub_21DE81124(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94410, &qword_21DED0E40);
  v10 = *(type metadata accessor for EventDateTimeComponents(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for EventDateTimeComponents(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_21DE812FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94438, &unk_21DED0E60);
    v3 = sub_21DEC72C0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_21DEC7760();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

BOOL _s17SceneIntelligence19EventDateComponentsV1loiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 == v5;
  v7 = v3 < v5;
  if (v6)
  {
    v7 = a1[2] < a2[2];
  }

  v6 = v2 == v4;
  v8 = v2 < v4;
  if (v6)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

unint64_t sub_21DE81464()
{
  result = qword_27CE943B8;
  if (!qword_27CE943B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943B8);
  }

  return result;
}

uint64_t type metadata accessor for EventDateTimeComponents(uint64_t a1)
{
  result = qword_27CE9BA00;
  if (!qword_27CE9BA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL _s17SceneIntelligence23EventDateTimeComponentsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_21DEC6A20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94418, &qword_21DED0E48);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  if (*a1 != *a2 || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4])
  {
    return 0;
  }

  v15 = v12;
  v16 = *(type metadata accessor for EventDateTimeComponents(0) + 36);
  v17 = *(v15 + 48);
  sub_21DE5C6E4(a1 + v16, v14, &qword_27CE94360, &qword_21DED08A8);
  sub_21DE5C6E4(a2 + v16, &v14[v17], &qword_27CE94360, &qword_21DED08A8);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_21DE5C6E4(v14, v10, &qword_27CE94360, &qword_21DED08A8);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v17], v4);
      sub_21DE81CA4(&qword_27CE94420, MEMORY[0x277CC9A70], MEMORY[0x277CC9A88]);
      v20 = sub_21DEC6D70();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_21DE5CD00(v14, &qword_27CE94360, &qword_21DED08A8);
      return (v20 & 1) != 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_21DE5CD00(v14, &qword_27CE94418, &qword_21DED0E48);
    return 0;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_21DE5CD00(v14, &qword_27CE94360, &qword_21DED08A8);
  return 1;
}

BOOL _s17SceneIntelligence23EventDateTimeComponentsV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v3 = a1[1];
    v4 = a2[1];
    v2 = v3 < v4;
    if (v3 == v4)
    {
      v5 = a1[2];
      v6 = a2[2];
      v2 = v5 < v6;
      if (v5 == v6)
      {
        v7 = a1[3];
        v8 = a2[3];
        v2 = v7 < v8;
        if (v7 == v8)
        {
          return a1[4] < a2[4];
        }
      }
    }
  }

  return v2;
}

uint64_t sub_21DE818E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94360, &qword_21DED08A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DE81950()
{
  result = qword_27CE943C0;
  if (!qword_27CE943C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943C0);
  }

  return result;
}

unint64_t sub_21DE819A8()
{
  result = qword_27CE943E0;
  if (!qword_27CE943E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943E0);
  }

  return result;
}

unint64_t sub_21DE81A04()
{
  result = qword_27CE943E8;
  if (!qword_27CE943E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943E8);
  }

  return result;
}

unint64_t sub_21DE81A5C()
{
  result = qword_27CE943F0;
  if (!qword_27CE943F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE943F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventDateComponents(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EventDateComponents(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

void sub_21DE81BB4(uint64_t a1)
{
  sub_21DE81C3C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_21DE81C3C(uint64_t a1)
{
  if (!qword_27CE94400)
  {
    sub_21DEC6A20();
    v1 = sub_21DEC71C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE94400);
    }
  }
}

uint64_t sub_21DE81CA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21DE81CEC()
{
  result = qword_27CE94440;
  if (!qword_27CE94440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94440);
  }

  return result;
}

uint64_t sub_21DE81D40(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_21DE7FB04(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_21DEC6F80();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_21DE7FB04(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_21DE7FB04(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_21DEC6F80();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_21DE82204()
{
  v0 = sub_21DE98EB8(&unk_282F27C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94950, &qword_21DED33E0);
  result = swift_arrayDestroy();
  qword_27CE9BA18 = v0;
  return result;
}

SceneIntelligence::STXContentType_optional __swiftcall STXContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t STXContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746361746E6F63;
  v3 = 0x4C676E696B726170;
  v4 = 0x7473694C6D657469;
  if (v1 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E657665;
  if (v1 != 1)
  {
    v5 = 1768319351;
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

uint64_t sub_21DE8238C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x796C696144;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x796C68746E6F4DLL;
    }

    else
    {
      v4 = 1701736270;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x796C6B656557;
    }

    else
    {
      v4 = 0x796C696144;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x796C68746E6F4DLL;
  if (a2 != 2)
  {
    v8 = 1701736270;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x796C6B656557;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DEC7610();
  }

  return v11 & 1;
}

uint64_t sub_21DE824B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646E6F4DLL;
  v3 = a1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746153;
  if (a1 != 5)
  {
    v6 = 0x7961646E7553;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756854;
  if (a1 != 3)
  {
    v8 = 0x796164697246;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657554;
  if (a1 != 1)
  {
    v10 = 0x616473656E646557;
    v9 = 0xE900000000000079;
  }

  if (a1)
  {
    v4 = v9;
  }

  else
  {
    v10 = 0x7961646E6F4DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v13 = 0xE800000000000000;
        v2 = 0x7961647372756854;
      }

      else
      {
        v13 = 0xE600000000000000;
        v2 = 0x796164697246;
      }

      goto LABEL_31;
    }

    if (a2 == 5)
    {
      v13 = 0xE800000000000000;
      v2 = 0x7961647275746153;
      goto LABEL_31;
    }

    v2 = 0x7961646E7553;
LABEL_30:
    v13 = 0xE600000000000000;
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    v13 = 0xE700000000000000;
    v2 = 0x79616473657554;
  }

  else
  {
    v2 = 0x616473656E646557;
    v13 = 0xE900000000000079;
  }

LABEL_31:
  if (v11 == v2 && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_21DEC7610();
  }

  return v14 & 1;
}

uint64_t sub_21DE82690(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007473694C20;
  v3 = 0x676E6970706F6853;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6F44206F54;
    }

    else
    {
      v5 = 0x726568744FLL;
    }

    v6 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x6569646572676E49;
    }

    else
    {
      v5 = 0x676E6970706F6853;
    }

    if (v4)
    {
      v6 = 0xEB0000000073746ELL;
    }

    else
    {
      v6 = 0xED00007473694C20;
    }
  }

  v7 = 0x6F44206F54;
  if (a2 != 2)
  {
    v7 = 0x726568744FLL;
  }

  if (a2)
  {
    v3 = 0x6569646572676E49;
    v2 = 0xEB0000000073746ELL;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21DEC7610();
  }

  return v10 & 1;
}

uint64_t sub_21DE827DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x4C676E696B726170;
  v5 = 0xEF6E6F697461636FLL;
  v6 = 0xE800000000000000;
  v7 = 0x7473694C6D657469;
  if (a1 != 4)
  {
    v7 = 0x746361736E617274;
    v6 = 0xEB000000006E6F69;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x746E657665;
  if (a1 != 1)
  {
    v9 = 1768319351;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x746361746E6F63;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEF6E6F697461636FLL;
      if (v10 != 0x4C676E696B726170)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x7473694C6D657469)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB000000006E6F69;
      if (v10 != 0x746361736E617274)
      {
LABEL_34:
        v13 = sub_21DEC7610();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x746E657665)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1768319351)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x746361746E6F63)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_21DE829DC(unsigned __int8 a1)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE82AEC(uint64_t a1)
{
  sub_21DEC6E90();
}

uint64_t sub_21DE82BEC(uint64_t a1, unsigned __int8 a2)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE82CF8(uint64_t a1, unsigned __int8 a2)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

void sub_21DE82E18(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746361746E6F63;
  v5 = 0xEF6E6F697461636FLL;
  v6 = 0x4C676E696B726170;
  v7 = 0xE800000000000000;
  v8 = 0x7473694C6D657469;
  if (v2 != 4)
  {
    v8 = 0x746361736E617274;
    v7 = 0xEB000000006E6F69;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x746E657665;
  if (v2 != 1)
  {
    v10 = 1768319351;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_21DE82F40()
{
  v1 = *v0;
  sub_21DEC72F0();

  v2 = MEMORY[0x223D4B400](v1, MEMORY[0x277D837D0]);
  MEMORY[0x223D4B2A0](v2);

  return 0xD00000000000001CLL;
}

uint64_t sub_21DE82FC8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  STXContentType.init(rawValue:)(v6);
  v7 = v9;
  if (v9 == 6)
  {
    result = sub_21DEA0B7C(a1, a2);
    if (result == 2)
    {
      v7 = -8;
    }

    else
    {
      v7 = result & 1 | 0x80;
    }
  }

  else
  {
  }

  *a3 = v7;
  return result;
}

uint64_t sub_21DE83058@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC77C0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94448, &qword_21DED0E80);
  sub_21DE83418();
  sub_21DEC7660();
  v28 = a2;
  v5 = v29;
  v6 = v29 + 64;
  v7 = 1 << *(v29 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v29 + 64);
  v10 = (v7 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v31 = MEMORY[0x277D84F90];
  if (v9)
  {
LABEL_13:
    while (1)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = (*(v5 + 48) + ((v12 << 10) | (16 * v15)));
      v18 = *v16;
      v17 = v16[1];

      v19 = sub_21DEC7470();
      if (v19 > 2)
      {
        break;
      }

      if (v19)
      {
        if (v19 == 1)
        {

          v14 = 1;
          goto LABEL_26;
        }

        if (v19 == 2)
        {

          v14 = 2;
          goto LABEL_26;
        }

LABEL_6:
        result = sub_21DEA0B7C(v18, v17);
        if (result != 2)
        {
          v14 = result & 1 | 0x80;
LABEL_26:
          v27 = v14;
          goto LABEL_27;
        }

        if (!v9)
        {
          goto LABEL_8;
        }
      }

      else
      {

        v27 = 0;
LABEL_27:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_21DE98530(0, *(v31 + 2) + 1, 1, v31);
        }

        result = v31;
        v21 = *(v31 + 2);
        v20 = *(v31 + 3);
        if (v21 >= v20 >> 1)
        {
          result = sub_21DE98530((v20 > 1), v21 + 1, 1, v31);
        }

        *(result + 16) = v21 + 1;
        v31 = result;
        *(result + v21 + 32) = v27;
        if (!v9)
        {
          goto LABEL_8;
        }
      }
    }

    switch(v19)
    {
      case 3:

        v14 = 3;
        goto LABEL_26;
      case 4:

        v14 = 4;
        goto LABEL_26;
      case 5:

        v14 = 5;
        goto LABEL_26;
    }

    goto LABEL_6;
  }

  while (1)
  {
LABEL_8:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_13;
    }
  }

  if (!*(v31 + 2))
  {

    v23 = *(v5 + 16);
    if (v23)
    {
      v24 = sub_21DE987FC(*(v5 + 16), 0);
      v25 = sub_21DE98A98(&v29, v24 + 4, v23, v5);
      sub_21DE98BF0(v29);
      if (v25 == v23)
      {
LABEL_41:
        sub_21DE98BF8();
        swift_allocError();
        *v26 = v24;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0(v30);
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }

      __break(1u);
    }

    v24 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  result = v31;
  if (*(v31 + 2))
  {
    v22 = v31[32];

    __swift_destroy_boxed_opaque_existential_0(v30);
    *v28 = v22;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_21DE83418()
{
  result = qword_27CE94450;
  if (!qword_27CE94450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94448, &qword_21DED0E80);
    sub_21DE834A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94450);
  }

  return result;
}

unint64_t sub_21DE834A4()
{
  result = qword_27CE94458;
  if (!qword_27CE94458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94458);
  }

  return result;
}

void sub_21DE8351C(uint64_t *a1@<X8>)
{
  if (*v1 < 0)
  {
    *a1 = 0x7461636572706564;
    a1[1] = 0xEA00000000006465;
  }

  else
  {
    v2 = *v1;
    v3 = 0x746361746E6F63;
    v4 = 0xEF6E6F697461636FLL;
    v5 = 0x4C676E696B726170;
    v6 = 0xE800000000000000;
    v7 = 0x7473694C6D657469;
    if (v2 != 4)
    {
      v7 = 0x746361736E617274;
      v6 = 0xEB000000006E6F69;
    }

    if (v2 != 3)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xE500000000000000;
    v9 = 0x746E657665;
    if (v2 != 1)
    {
      v9 = 1768319351;
      v8 = 0xE400000000000000;
    }

    if (*v1)
    {
      v3 = v9;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (*v1 <= 2u)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }

    if (*v1 <= 2u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }

    *a1 = v10;
    a1[1] = v11;
  }
}

void *sub_21DE8360C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 88))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE83668(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 96);

  return v3(&v5);
}

uint64_t sub_21DE836D0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);
}

uint64_t sub_21DE8371C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t sub_21DE83768()
{
  v33 = 0;
  v34 = 0xE000000000000000;
  v1 = (*(*v0 + 88))(&v32);
  v2 = v32 >> 61;
  if ((v32 >> 61) <= 2)
  {
    if (v2)
    {
      v11 = v32 & 0x1FFFFFFFFFFFFFFFLL;
      if (v2 == 1)
      {
        v12 = (*(*v11 + 368))(v1);
        MEMORY[0x223D4B2A0](v12);

        v13 = sub_21DEBCBBC();
        v6 = sub_21DEBCBC4(v13, 10, 0xE100000000000000);
        v8 = v14;

        v9 = 0x746361746E6F63;
        v10 = 0xE700000000000000;
      }

      else
      {
        v24 = (*(*v11 + 144))(v1);
        MEMORY[0x223D4B2A0](v24);

        v25 = sub_21DEBCBBC();
        v6 = sub_21DEBCBC4(v25, 10, 0xE100000000000000);
        v8 = v26;

        v9 = 1768319319;
        v10 = 0xE400000000000000;
      }

      goto LABEL_13;
    }

    v18 = (*(*v32 + 144))(v1);
    MEMORY[0x223D4B2A0](v18);

    v19 = sub_21DEBCBBC();
    v20 = sub_21DEBCBC4(v19, 10, 0xE100000000000000);
    v22 = v21;

    v23 = sub_21DEBCAD8(0x746E657665, 0xE500000000000000, v20, v22);
    MEMORY[0x223D4B2A0](v23);
  }

  else
  {
    if (v2 <= 4)
    {
      v3 = v32 & 0x1FFFFFFFFFFFFFFFLL;
      if (v2 == 3)
      {
        v4 = (*(*v3 + 144))(v1);
        MEMORY[0x223D4B2A0](v4);

        v5 = sub_21DEBCBBC();
        v6 = sub_21DEBCBC4(v5, 10, 0xE100000000000000);
        v8 = v7;

        v9 = 0x4C676E696B726150;
        v10 = 0xEF6E6F697461636FLL;
      }

      else
      {
        v27 = (*(*v3 + 184))(v1);
        MEMORY[0x223D4B2A0](v27);

        v28 = sub_21DEBCBBC();
        v6 = sub_21DEBCBC4(v28, 10, 0xE100000000000000);
        v8 = v29;

        v9 = 0x7473694C6D657469;
        v10 = 0xE800000000000000;
      }

      goto LABEL_13;
    }

    if (v2 == 5)
    {
      v15 = (*(*(v32 & 0x1FFFFFFFFFFFFFFFLL) + 208))(v1);
      MEMORY[0x223D4B2A0](v15);

      v16 = sub_21DEBCBBC();
      v6 = sub_21DEBCBC4(v16, 10, 0xE100000000000000);
      v8 = v17;

      v9 = 0x746361736E617274;
      v10 = 0xEB000000006E6F69;
LABEL_13:
      v30 = sub_21DEBCAD8(v9, v10, v6, v8);
      MEMORY[0x223D4B2A0](v30);
    }
  }

  return v33;
}

uint64_t sub_21DE83B7C()
{
  v1 = (*(*v0 + 88))(&v7);
  v2 = v7 >> 61;
  if ((v7 >> 61) <= 2)
  {
    if (!v2)
    {
      v5 = (*(*v7 + 152))(v1);
LABEL_14:

      return v5 & 1;
    }

    v3 = v7 & 0x1FFFFFFFFFFFFFFFLL;
    if (v2 == 1)
    {
      v4 = (*(*v3 + 376))(v1);
      goto LABEL_13;
    }

LABEL_4:
    v4 = (*(*v3 + 152))(v1);
LABEL_13:
    v5 = v4;
    goto LABEL_14;
  }

  if (v2 <= 4)
  {
    v3 = v7 & 0x1FFFFFFFFFFFFFFFLL;
    if (v2 != 3)
    {
      v4 = (*(*v3 + 176))(v1);
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  if (v2 == 5)
  {
    v4 = (*(*(v7 & 0x1FFFFFFFFFFFFFFFLL) + 216))(v1);
    goto LABEL_13;
  }

  return 0;
}

uint64_t TextContentItem.ItemType.isValid.getter()
{
  v1 = *v0;
  v2 = v1 >> 61;
  if ((v1 >> 61) <= 2)
  {
    if (v2)
    {
      v1 &= 0x1FFFFFFFFFFFFFFFuLL;
      if (v2 == 1)
      {
        v3 = (*(*v1 + 376))();
        return v3 & 1;
      }
    }

LABEL_4:
    v3 = (*(*v1 + 152))();
    return v3 & 1;
  }

  if (v2 <= 4)
  {
    v1 &= 0x1FFFFFFFFFFFFFFFuLL;
    if (v2 != 3)
    {
      v3 = (*(*v1 + 176))();
      return v3 & 1;
    }

    goto LABEL_4;
  }

  if (v2 == 5)
  {
    v3 = (*(*(v1 & 0x1FFFFFFFFFFFFFFFLL) + 216))();
    return v3 & 1;
  }

  return 0;
}

uint64_t TextContentItem.__allocating_init(itemType:)(void *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t TextContentItem.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  TextContentItem.init(from:)(a1);
  return v2;
}

uint64_t TextContentItem.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEC77C0();
  if (v2)
  {
    type metadata accessor for TextContentItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_21DE98C70();
    sub_21DEC7660();
    *(v1 + 16) = v5;
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE84004(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_21DEC7800();
  (*(*v1 + 88))(&v5, v2);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_21DE98CC4();
  sub_21DEC76C0();

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_21DE840E0()
{
  v1 = *v0;
  v2 = 0x746E657665;
  v3 = 0x4C676E696B726170;
  v4 = 0x7473694C6D657469;
  if (v1 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746361746E6F63;
  if (v1 != 1)
  {
    v5 = 1768319351;
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

uint64_t sub_21DE841A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE98FCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE841D8(uint64_t a1)
{
  v2 = sub_21DE991D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE84214(uint64_t a1)
{
  v2 = sub_21DE991D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TextContentItem.ItemType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = sub_21DEC6D20();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94478, &qword_21DED0E88);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  sub_21DE5CC9C(a1, v42);
  sub_21DE83058(v42, &v43);
  if (v2)
  {
    v40 = 0;
    v12 = sub_21DEBD114();
    (*(v5 + 16))(v7, v12, v41);
    v13 = v2;
    v14 = sub_21DEC6D00();
    v15 = sub_21DEC71B0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v39 = a1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v38 = a2;
      v19 = v18;
      v42[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v20 = sub_21DEC7710();
      v22 = sub_21DE56544(v20, v21, v42);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_21DE0D000, v14, v15, "Cannot decode text item: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      v23 = v19;
      a2 = v38;
      MEMORY[0x223D4D340](v23, -1, -1);
      v24 = v17;
      a1 = v39;
      MEMORY[0x223D4D340](v24, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v41);
    v26 = 0xC000000000000000;
    goto LABEL_7;
  }

  v41 = v9;
  v25 = v43;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE991D0();
  sub_21DEC77E0();
  if ((v25 & 0x80) == 0)
  {
    if (v25 > 2)
    {
      if (v25 == 3)
      {
        type metadata accessor for ParkingLocation();
        v43 = 3;
        sub_21DE9A87C(&qword_27CE94498, v34, type metadata accessor for ParkingLocation, &protocol conformance descriptor for ParkingLocation);
        sub_21DEC7510();
        (*(v41 + 8))(v11, v8);
        v26 = v42[0] | 0x6000000000000000;
      }

      else
      {
        v30 = v41;
        if (v25 == 4)
        {
          type metadata accessor for ItemList();
          v43 = 4;
          sub_21DE9A87C(&qword_27CE94490, v31, type metadata accessor for ItemList, &protocol conformance descriptor for ItemList);
          sub_21DEC7510();
          (*(v30 + 8))(v11, v8);
          v26 = v42[0] | 0x8000000000000000;
        }

        else
        {
          type metadata accessor for FinancialTransaction();
          v43 = 5;
          sub_21DE9A87C(&qword_27CE94488, v36, type metadata accessor for FinancialTransaction, &protocol conformance descriptor for FinancialTransaction);
          sub_21DEC7510();
          (*(v30 + 8))(v11, v8);
          v26 = v42[0] | 0xA000000000000000;
        }
      }
    }

    else if (v25)
    {
      v28 = v41;
      if (v25 == 1)
      {
        type metadata accessor for Event();
        v43 = 0;
        sub_21DE9A87C(&qword_27CE944A8, v29, type metadata accessor for Event, &protocol conformance descriptor for Event);
        sub_21DEC7510();
        (*(v28 + 8))(v11, v8);
        v26 = v42[0];
      }

      else
      {
        type metadata accessor for Wifi();
        v43 = 2;
        sub_21DE9A87C(&qword_27CE944A0, v35, type metadata accessor for Wifi, &protocol conformance descriptor for Wifi);
        sub_21DEC7510();
        (*(v28 + 8))(v11, v8);
        v26 = v42[0] | 0x4000000000000000;
      }
    }

    else
    {
      type metadata accessor for Contact();
      v43 = 1;
      sub_21DE9A87C(&qword_27CE944B0, v33, type metadata accessor for Contact, &protocol conformance descriptor for Contact);
      sub_21DEC7510();
      (*(v41 + 8))(v11, v8);
      v26 = v42[0] | 0x2000000000000000;
    }

LABEL_7:
    *a2 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_21DEA0BD0(a1, v25 & 1, v42);
  (*(v41 + 8))(v11, v8);
  v32 = v42[0];
  if ((~v42[0] & 0xF000000000000007) == 0)
  {
    v32 = 0xC000000000000000;
  }

  *a2 = v32;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TextContentItem.ItemType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE944B8, &qword_21DED0E90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE991D0();
  sub_21DEC7810();
  v8 = v7 >> 61;
  if ((v7 >> 61) <= 2)
  {
    if (v8)
    {
      v16 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      if (v8 == 1)
      {
        v15 = 1;
        type metadata accessor for Contact();
        v10 = &unk_27CE944E8;
        v11 = type metadata accessor for Contact;
        v12 = &protocol conformance descriptor for Contact;
      }

      else
      {
        v15 = 2;
        type metadata accessor for Wifi();
        v10 = &unk_27CE944D8;
        v11 = type metadata accessor for Wifi;
        v12 = &protocol conformance descriptor for Wifi;
      }
    }

    else
    {
      v16 = v7;
      v15 = 0;
      type metadata accessor for Event();
      v10 = &unk_27CE944E0;
      v11 = type metadata accessor for Event;
      v12 = &protocol conformance descriptor for Event;
    }

    goto LABEL_13;
  }

  if (v8 <= 4)
  {
    v16 = v7 & 0x1FFFFFFFFFFFFFFFLL;
    if (v8 == 3)
    {
      v15 = 3;
      type metadata accessor for ParkingLocation();
      v10 = &unk_27CE944D0;
      v11 = type metadata accessor for ParkingLocation;
      v12 = &protocol conformance descriptor for ParkingLocation;
    }

    else
    {
      v15 = 4;
      type metadata accessor for ItemList();
      v10 = &unk_27CE944C8;
      v11 = type metadata accessor for ItemList;
      v12 = &protocol conformance descriptor for ItemList;
    }

    goto LABEL_13;
  }

  if (v8 == 5)
  {
    v16 = v7 & 0x1FFFFFFFFFFFFFFFLL;
    v15 = 5;
    type metadata accessor for FinancialTransaction();
    v10 = &unk_27CE944C0;
    v11 = type metadata accessor for FinancialTransaction;
    v12 = &protocol conformance descriptor for FinancialTransaction;
LABEL_13:
    sub_21DE9A87C(v10, v9, v11, v12);
    sub_21DEC75D0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t TextContentItem.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_21DE84D88@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::SubEvent::DateTimeElement::Recurrence::Frequency_optional __swiftcall SubEvent.DateTimeElement.Recurrence.Frequency.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubEvent.DateTimeElement.Recurrence.Frequency.rawValue.getter()
{
  v1 = 0x796C696144;
  v2 = 0x796C68746E6F4DLL;
  if (*v0 != 2)
  {
    v2 = 1701736270;
  }

  if (*v0)
  {
    v1 = 0x796C6B656557;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21DE84F2C()
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE84FE0(uint64_t a1)
{
  sub_21DEC6E90();
}

uint64_t sub_21DE85080(uint64_t a1)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

void sub_21DE8513C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x796C696144;
  v4 = 0xE700000000000000;
  v5 = 0x796C68746E6F4DLL;
  if (*v1 != 2)
  {
    v5 = 1701736270;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x796C6B656557;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

SceneIntelligence::SubEvent::DateTimeElement::Recurrence::Weekday_optional __swiftcall SubEvent.DateTimeElement.Recurrence.Weekday.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SubEvent.DateTimeElement.Recurrence.Weekday.rawValue.getter()
{
  v1 = 0x7961646E6F4DLL;
  v2 = *v0;
  v3 = 0x7961647275746153;
  if (v2 != 5)
  {
    v3 = 0x7961646E7553;
  }

  v4 = 0x7961647372756854;
  if (v2 != 3)
  {
    v4 = 0x796164697246;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657554;
  if (v2 != 1)
  {
    v5 = 0x616473656E646557;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21DE853B8(uint64_t a1)
{
  sub_21DEC6E90();
}

void sub_21DE854CC(uint64_t *a1@<X8>)
{
  v2 = 0x7961646E6F4DLL;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746153;
  if (v3 != 5)
  {
    v6 = 0x7961646E7553;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756854;
  if (v3 != 3)
  {
    v8 = 0x796164697246;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657554;
  if (v3 != 1)
  {
    v10 = 0x616473656E646557;
    v9 = 0xE900000000000079;
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11;
}

unint64_t sub_21DE8565C()
{
  v1 = 0x6854664F73796164;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636E657571657266;
  }
}

uint64_t sub_21DE856CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE992FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE856F4(uint64_t a1)
{
  v2 = sub_21DE9942C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE85730(uint64_t a1)
{
  v2 = sub_21DE9942C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21DE8576C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE857C8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 120))(&v4);
}

uint64_t sub_21DE85820@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8586C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_21DE858C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8590C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);

  return v4(v2, v3);
}

double sub_21DE85974@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 184))(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_21DE859D8(__int128 *a1, uint64_t *a2)
{
  v2 = *(a1 + 2);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return (*(*v3 + 192))(&v5);
}

__n128 sub_21DE85A38@<Q0>(__n128 *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[4].n128_u64[0];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_21DE85A84(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  swift_beginAccess();
  v2[6] = v3;
  v2[7] = v4;
  v2[8] = v5;
  v6 = EventDateComponents.dateString.getter();
  return (*(*v2 + 168))(v6);
}

uint64_t (*sub_21DE85B10(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DE85B64;
}

uint64_t sub_21DE85B64(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = EventDateComponents.dateString.getter();
    return (*(*v5 + 168))(v6);
  }

  return result;
}

uint64_t sub_21DE85BDC()
{
  (*(*v0 + 112))(&v4);
  if (v4 > 2u)
  {

    v2 = 0;
  }

  else
  {
    v1 = sub_21DEC7610();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_21DE85CBC()
{
  v1 = v0;
  v36 = 0;
  v37 = 0xE000000000000000;
  (*(*v0 + 112))(&v34);
  v2 = 0xE500000000000000;
  v3 = 0x796C696144;
  v4 = 0xE700000000000000;
  v5 = 0x796C68746E6F4DLL;
  if (v34 != 2)
  {
    v5 = 1701736270;
    v4 = 0xE400000000000000;
  }

  if (v34)
  {
    v3 = 0x796C6B656557;
    v2 = 0xE600000000000000;
  }

  if (v34 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v34 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v8 = sub_21DEBCAD8(0x636E657571657266, 0xE900000000000079, v6, v7);
  MEMORY[0x223D4B2A0](v8);

  v34 = 0;
  v35 = 0xE000000000000000;
  v10 = (*(*v0 + 136))(v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 32;
    do
    {
      v13 = *(v10 + v12);
      v14 = 0x7961646E7553;
      if (v13 == 5)
      {
        v14 = 0x7961647275746153;
        v15 = 0xE800000000000000;
      }

      else
      {
        v15 = 0xE600000000000000;
      }

      v16 = 0x7961647372756854;
      if (v13 == 3)
      {
        v17 = 0xE800000000000000;
      }

      else
      {
        v16 = 0x796164697246;
        v17 = 0xE600000000000000;
      }

      if (*(v10 + v12) <= 4u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0x616473656E646557;
      if (v13 == 1)
      {
        v18 = 0x79616473657554;
      }

      v19 = 0xE900000000000079;
      if (v13 == 1)
      {
        v19 = 0xE700000000000000;
      }

      if (!*(v10 + v12))
      {
        v18 = 0x7961646E6F4DLL;
        v19 = 0xE600000000000000;
      }

      if (*(v10 + v12) <= 2u)
      {
        v20 = v18;
      }

      else
      {
        v20 = v14;
      }

      if (*(v10 + v12) <= 2u)
      {
        v21 = v19;
      }

      else
      {
        v21 = v15;
      }

      MEMORY[0x223D4B2A0](v20, v21);

      MEMORY[0x223D4B2A0](10, 0xE100000000000000);

      ++v12;
      --v11;
    }

    while (v11);

    v23 = v34;
    v22 = v35;
  }

  else
  {

    v23 = 0;
    v22 = 0xE000000000000000;
  }

  v24 = sub_21DEBCBBC();
  v25 = sub_21DEBCBC4(v24, v23, v22);
  v27 = v26;

  v28 = sub_21DEBCAD8(0x6854664F73796164, 0xED00006B65655765, v25, v27);
  MEMORY[0x223D4B2A0](v28);

  v30 = (*(*v1 + 160))(v29);
  v32 = sub_21DEBCAD8(0xD000000000000011, 0x800000021DED9DE0, v30, v31);
  MEMORY[0x223D4B2A0](v32);

  return v36;
}

uint64_t SubEvent.DateTimeElement.Recurrence.__allocating_init(frequency:daysOfTheWeek:recurrenceEndDate:)(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  SubEvent.DateTimeElement.Recurrence.init(frequency:daysOfTheWeek:recurrenceEndDate:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SubEvent.DateTimeElement.Recurrence.init(frequency:daysOfTheWeek:recurrenceEndDate:)(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(v4 + 16) = *a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;

  v7._countAndFlagsBits = a3;
  v7._object = a4;
  EventDateComponents.init(string:)(v7);
  if (v8)
  {

    v12.value = 0;
    v12.is_nil = 1;
    v13.value = 0;
    v13.is_nil = 1;
    v14.value = 0;
    v14.is_nil = 1;
    EventDateComponents.init(year:month:day:)(v12, v13, v14);
  }

  *(v4 + 48) = v10;
  *(v4 + 64) = v11;
  return v4;
}

uint64_t SubEvent.DateTimeElement.Recurrence.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SubEvent.DateTimeElement.Recurrence.init(from:)(a1);
  return v2;
}

void *SubEvent.DateTimeElement.Recurrence.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE944F0, &qword_21DED0E98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9942C();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for SubEvent.DateTimeElement.Recurrence();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v26 = 0;
    sub_21DE994A4();
    sub_21DEC74E0();
    v9 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94508, &qword_21DED0EA0);
    v26 = 1;
    sub_21DE994F8();
    sub_21DEC74E0();
    v11 = v23;
    if (!v23)
    {
      v11 = MEMORY[0x277D84F90];
    }

    *(v1 + 24) = v11;
    if (v9 == 4)
    {
      if (*(v11 + 16))
      {
        v12 = 1;
      }

      else
      {
        v12 = 3;
      }

      *(v1 + 16) = v12;
    }

    else
    {
      *(v1 + 16) = v9;
    }

    LOBYTE(v23) = 2;
    v13 = sub_21DEC74A0();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v3[4] = v15;
    v3[5] = v16;

    v17._countAndFlagsBits = v15;
    v17._object = v16;
    v30 = EventDateComponents.init(string:)(v17);
    if (v18)
    {

      v27.value = 0;
      v27.is_nil = 1;
      v28.value = 0;
      v28.is_nil = 1;
      v29.value = 0;
      v29.is_nil = 1;
      v31 = EventDateComponents.init(year:month:day:)(v27, v28, v29);
      (*(v6 + 8))(v8, v5, v31.day);
      v19 = v23;
      v20 = v24;
      v21 = v25;
    }

    else
    {
      v19 = v23;
      v20 = v24;
      v21 = v25;
      (*(v6 + 8))(v8, v5, v30.day);
    }

    v3[6] = v19;
    v3[7] = v20;
    v3[8] = v21;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DE8646C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94520, &qword_21DED0EA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9942C();
  v9 = sub_21DEC7810();
  (*(*v3 + 112))(&v18, v9);
  v17[1] = 0;
  sub_21DE995D0();
  v10 = sub_21DEC75D0();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = (*(*v3 + 136))(v10);
  v17[0] = 1;
  sub_21DE99624();
  sub_21DE6C7F4(v12, v17, v5, &type metadata for SubEvent.DateTimeElement.Recurrence.Weekday);

  v14 = (*(*v3 + 160))(v13);
  v16[12] = 2;
  sub_21DE6C7C8(v14, v15);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_21DE866EC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE867B0()
{
  v1 = 0x65746144646E65;
  if (*v0 != 1)
  {
    v1 = 0x6E65727275636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_21DE86814@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE99678(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE8683C(uint64_t a1)
{
  v2 = sub_21DE99804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE86878(uint64_t a1)
{
  v2 = sub_21DE99804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE868B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE86900(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_21DE86968@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE869B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);

  return v4(v2, v3);
}

uint64_t sub_21DE86A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDateTimeComponents(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DE77950(a1, v6);
  return (*(**a2 + 176))(v6);
}

uint64_t sub_21DE86B18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventDateTimeComponents(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents;
  swift_beginAccess();
  sub_21DE997A0(a1, v2 + v7);
  swift_endAccess();
  sub_21DE77950(v2 + v7, v6);
  v8 = EventDateTimeComponents.dateString.getter();
  v10 = v9;
  sub_21DE779B4(v6);
  (*(*v2 + 128))(v8, v10);
  return sub_21DE779B4(a1);
}

uint64_t (*sub_21DE86C20(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for EventDateTimeComponents(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  swift_beginAccess();
  return sub_21DE86CE0;
}

void sub_21DE86CE0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    sub_21DE77950(v5 + v3[5], v3[4]);
    v6 = EventDateTimeComponents.dateString.getter();
    v8 = v7;
    sub_21DE779B4(v4);
    (*(*v5 + 128))(v6, v8);
  }

  free(v4);

  free(v3);
}

uint64_t sub_21DE86DE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDateTimeComponents(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DE77950(a1, v6);
  return (*(**a2 + 200))(v6);
}

uint64_t sub_21DE86E9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_21DE77950(v2 + v4, a2);
}

uint64_t sub_21DE86EF0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventDateTimeComponents(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents;
  swift_beginAccess();
  sub_21DE997A0(a1, v2 + v7);
  swift_endAccess();
  sub_21DE77950(v2 + v7, v6);
  v8 = EventDateTimeComponents.dateString.getter();
  v10 = v9;
  sub_21DE779B4(v6);
  (*(*v2 + 152))(v8, v10);
  return sub_21DE779B4(a1);
}

uint64_t (*sub_21DE86FF8(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for EventDateTimeComponents(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  swift_beginAccess();
  return sub_21DE870B8;
}

void sub_21DE870B8(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    sub_21DE77950(v5 + v3[5], v3[4]);
    v6 = EventDateTimeComponents.dateString.getter();
    v8 = v7;
    sub_21DE779B4(v4);
    (*(*v5 + 152))(v6, v8);
  }

  free(v4);

  free(v3);
}

uint64_t sub_21DE87178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE871C4(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 224);

  return v2(v3);
}

uint64_t sub_21DE87260(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_recurrence;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_21DE87318()
{
  v1 = (*(*v0 + 120))();
  v21 = sub_21DEBCAD8(0x7461447472617473, 0xE900000000000065, v1, v2);
  v3 = (*(*v0 + 144))();
  v5 = sub_21DEBCAD8(0x65746144646E65, 0xE700000000000000, v3, v4);
  MEMORY[0x223D4B2A0](v5);

  v7 = *(*v0 + 216);
  v8 = v7(v6);
  v9 = (*(*v8 + 208))(v8);

  if (v9)
  {
    v11 = v7(v10);
    v12 = (*(*v11 + 216))(v11);
    v14 = v13;

    MEMORY[0x223D4B2A0](v12, v14);

    MEMORY[0x223D4B2A0](41, 0xE100000000000000);
    v15 = sub_21DEBCBBC();
    v16 = sub_21DEBCBC4(v15, 10, 0xE100000000000000);
    v18 = v17;

    v19 = sub_21DEBCAD8(0x6E65727275636572, 0xEA00000000006563, v16, v18);
    MEMORY[0x223D4B2A0](v19);
  }

  return v21;
}

BOOL sub_21DE87530()
{
  v1 = type metadata accessor for EventDateTimeComponents(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 168))(v2);
  v5 = EventDateTimeComponents.isValid.getter();
  sub_21DE779B4(v4);
  return v5;
}

uint64_t SubEvent.DateTimeElement.__allocating_init(startDate:endDate:recurrence:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  SubEvent.DateTimeElement.init(startDate:endDate:recurrence:)(a1, a2, a3, a4, a5);
  return v10;
}

void *SubEvent.DateTimeElement.init(startDate:endDate:recurrence:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v27 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = type metadata accessor for EventDateTimeComponents(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v26 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v25 - v20;
  v5[2] = a1;
  v5[3] = a2;
  v25 = a3;
  v5[4] = a3;
  v5[5] = a4;

  EventDateTimeComponents.init(string:)(a1, a2, v15);
  v22 = *(v17 + 56);
  v22(v15, 0, 1, v16);
  sub_21DE77A74(v15, v21);
  sub_21DE77A74(v21, v5 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents);
  EventDateTimeComponents.init(string:)(v25, a4, v13);
  v22(v13, 0, 1, v16);
  v23 = v26;
  sub_21DE77A74(v13, v26);
  sub_21DE77A74(v23, v5 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents);
  *(v5 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_recurrence) = v27;
  return v5;
}

uint64_t SubEvent.DateTimeElement.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SubEvent.DateTimeElement.init(from:)(a1);
  return v2;
}

void *SubEvent.DateTimeElement.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v46 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v42 - v5;
  v7 = type metadata accessor for EventDateTimeComponents(0);
  v47 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94538, &qword_21DED0EB8);
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_21DE99804();
  v17 = v49;
  sub_21DEC77E0();
  if (v17)
  {
    v18 = v51;
    type metadata accessor for SubEvent.DateTimeElement(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v45 = v12;
    v49 = v10;
    LOBYTE(v52) = 0;
    v19 = sub_21DEC74A0();
    v21 = v20;
    v22 = v19;
    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    LOBYTE(v52) = 1;
    v24 = sub_21DEC74A0();
    v18 = v51;
    v43 = v15;
    v44 = v13;
    if (v21)
    {
      v26 = v22;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    v51[2] = v26;
    v18[3] = v23;
    if (v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    v42 = v27;
    v18[4] = v27;
    v18[5] = v28;

    EventDateTimeComponents.init(string:)(v26, v23, v6);
    v29 = *(v47 + 56);
    v30 = v7;
    v29(v6, 0, 1, v7);
    v31 = v45;
    sub_21DE77A74(v6, v45);
    v32 = v46;
    v46 = OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents;
    sub_21DE77A74(v31, v18 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents);
    EventDateTimeComponents.init(string:)(v42, v28, v32);
    v29(v32, 0, 1, v30);
    v33 = v49;
    sub_21DE77A74(v32, v49);
    v34 = v43;
    sub_21DE77A74(v33, v18 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents);
    type metadata accessor for SubEvent.DateTimeElement.Recurrence();
    LOBYTE(v52) = 2;
    sub_21DE9A87C(&qword_27CE94548, v35, type metadata accessor for SubEvent.DateTimeElement.Recurrence, &protocol conformance descriptor for SubEvent.DateTimeElement.Recurrence);
    sub_21DEC74E0();
    v37 = v54;
    if (v54)
    {
      (*(v48 + 8))(v34, v44);
    }

    else
    {
      v37 = swift_allocObject();
      *(v37 + 16) = 3;
      *(v37 + 24) = MEMORY[0x277D84F90];
      *(v37 + 32) = 0;
      *(v37 + 40) = 0xE000000000000000;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v58 = EventDateComponents.init(string:)(v38);
      v40 = v48;
      if (v39)
      {

        v55.value = 0;
        v55.is_nil = 1;
        v56.value = 0;
        v56.is_nil = 1;
        v57.value = 0;
        v57.is_nil = 1;
        v59 = EventDateComponents.init(year:month:day:)(v55, v56, v57);
        (*(v40 + 8))(v34, v44, v59.day);
      }

      else
      {
        (*(v48 + 8))(v34, v44, v58.day);
      }

      v41 = v53;
      *(v37 + 48) = v52;
      *(v37 + 64) = v41;
      v18 = v51;
    }

    *(v18 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_recurrence) = v37;
  }

  __swift_destroy_boxed_opaque_existential_0(v50);
  return v18;
}

uint64_t sub_21DE88184(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventDateTimeComponents(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94550, &qword_21DED0EC0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99804();
  v11 = sub_21DEC7810();
  v12 = (*(*v2 + 120))(v11);
  v30 = 0;
  v13 = v28[0];
  sub_21DE6C8D8(v12, v14, &v30, 1);
  if (v13)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {

    (*(*v2 + 192))(v16);
    v17 = EventDateTimeComponents.isValid.getter();
    v18 = sub_21DE779B4(v6);
    if (v17)
    {
      v19 = (*(*v2 + 144))(v18);
      v21 = v20;
      v29[0] = 1;
      v22 = sub_21DE56BF8();
      sub_21DE6C8D8(v19, v21, v29, v22 & 1);
    }

    v23 = *(*v2 + 216);
    v24 = v23(v18);
    v25 = (*(*v24 + 208))(v24);

    if (v25)
    {
      v28[1] = v23(v26);
      v29[1] = 2;
      type metadata accessor for SubEvent.DateTimeElement.Recurrence();
      sub_21DE9A87C(&qword_27CE94558, v27, type metadata accessor for SubEvent.DateTimeElement.Recurrence, &protocol conformance descriptor for SubEvent.DateTimeElement.Recurrence);
      sub_21DEC75D0();
    }

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t SubEvent.DateTimeElement.deinit()
{

  sub_21DE779B4(v0 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents);
  sub_21DE779B4(v0 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents);

  return v0;
}

uint64_t SubEvent.DateTimeElement.__deallocating_deinit()
{

  sub_21DE779B4(v0 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_startDateComponents);
  sub_21DE779B4(v0 + OBJC_IVAR____TtCC17SceneIntelligence8SubEvent15DateTimeElement_endDateComponents);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21DE8861C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 264))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE886E8()
{
  v1 = *v0;
  v2 = 0x746954746E657665;
  v3 = 0x6E6F697461636F6CLL;
  v4 = 0x7365746F6ELL;
  if (v1 != 3)
  {
    v4 = 7107189;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D695465746164;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21DE88788@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE998A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE887B0(uint64_t a1)
{
  v2 = sub_21DE99A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE887EC(uint64_t a1)
{
  v2 = sub_21DE99A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE88828@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE88874(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_21DE888DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE88928(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t sub_21DE889B4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_21DE889FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE88A48(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 176);

  return v4(v2, v3);
}

uint64_t sub_21DE88AB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE88AFC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 200);

  return v4(v2, v3);
}

uint64_t sub_21DE88B64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE88BB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 224);

  return v4(v2, v3);
}

uint64_t sub_21DE88C18()
{
  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_21DE88C64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t sub_21DE88D08()
{
  v1 = v0;
  v2 = (*(*v0 + 120))();
  v24 = sub_21DEBCAD8(0x656C746974, 0xE500000000000000, v2, v3);
  v4 = (*(*v0 + 144))();
  v5 = (*(*v4 + 240))();
  MEMORY[0x223D4B2A0](v5);

  v6 = sub_21DEBCBBC();
  v7 = sub_21DEBCBC4(v6, 10, 0xE100000000000000);
  v9 = v8;

  v10 = sub_21DEBCAD8(0x656D695465746164, 0xEF746E656D656C45, v7, v9);
  MEMORY[0x223D4B2A0](v10);

  v12 = (*(*v1 + 168))(v11);
  v14 = sub_21DEBCAD8(0x6E6F697461636F6CLL, 0xE800000000000000, v12, v13);
  MEMORY[0x223D4B2A0](v14);

  v16 = (*(*v1 + 192))(v15);
  v18 = sub_21DEBCAD8(0x7365746F6ELL, 0xE500000000000000, v16, v17);
  MEMORY[0x223D4B2A0](v18);

  v20 = (*(*v1 + 216))(v19);
  v22 = sub_21DEBCAD8(7107189, 0xE300000000000000, v20, v21);
  MEMORY[0x223D4B2A0](v22);

  return v24;
}

uint64_t sub_21DE88F64()
{
  v1 = (*(*v0 + 144))();
  v2 = (*(*v1 + 248))(v1);

  return v2 & 1;
}

uint64_t sub_21DE88FDC(uint64_t a1)
{
  type metadata accessor for SubEvent.DateTimeElement.Recurrence();
  v1 = swift_allocObject();
  *(v1 + 16) = 3;
  *(v1 + 24) = MEMORY[0x277D84F90];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  EventDateComponents.init(string:)(v2);
  if (v3)
  {

    v8.value = 0;
    v8.is_nil = 1;
    v9.value = 0;
    v9.is_nil = 1;
    v10.value = 0;
    v10.is_nil = 1;
    EventDateComponents.init(year:month:day:)(v8, v9, v10);
  }

  *(v1 + 48) = v6;
  *(v1 + 64) = v7;
  type metadata accessor for SubEvent.DateTimeElement(0);
  v4 = swift_allocObject();
  SubEvent.DateTimeElement.init(startDate:endDate:recurrence:)(0, 0xE000000000000000, 0, 0xE000000000000000, v1);
  return v4;
}

void *SubEvent.__allocating_init(title:dateTimeElement:location:notes:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  result[10] = a9;
  return result;
}

void *SubEvent.init(title:dateTimeElement:location:notes:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  v9[7] = a6;
  v9[8] = a7;
  v9[9] = a8;
  v9[10] = a9;
  return v9;
}

uint64_t SubEvent.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SubEvent.init(from:)(a1);
  return v2;
}

void *SubEvent.init(from:)(void *a1)
{
  v3 = sub_21DEC6770();
  v80 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94560, &unk_21DED0EC8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - v8;
  v10 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21DE99A60();
  sub_21DEC77E0();
  if (v1)
  {
    v14 = v82;
    v13 = v83;
LABEL_4:
    type metadata accessor for SubEvent();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v81 = v5;
  v79 = v3;
  LOBYTE(v84) = 0;
  v11 = sub_21DEC74A0();
  if (v12)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v12)
  {
    v17 = v12;
  }

  v13 = v83;
  v83[2] = v16;
  v13[3] = v17;
  type metadata accessor for SubEvent.DateTimeElement(0);
  LOBYTE(v84) = 1;
  sub_21DE9A87C(&qword_27CE94570, 255, type metadata accessor for SubEvent.DateTimeElement, &protocol conformance descriptor for SubEvent.DateTimeElement);
  sub_21DEC74E0();
  v14 = v82;
  v18 = v7;
  v78 = v9;
  v19 = v87;
  if (!v87)
  {
    type metadata accessor for SubEvent.DateTimeElement.Recurrence();
    v20 = swift_allocObject();
    *(v20 + 16) = 3;
    *(v20 + 24) = MEMORY[0x277D84F90];
    *(v20 + 32) = 0;
    *(v20 + 40) = 0xE000000000000000;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    EventDateComponents.init(string:)(v21);
    if (v22)
    {

      v88.value = 0;
      v88.is_nil = 1;
      v89.value = 0;
      v89.is_nil = 1;
      v90.value = 0;
      v90.is_nil = 1;
      EventDateComponents.init(year:month:day:)(v88, v89, v90);
    }

    v23 = v85;
    *(v20 + 48) = v84;
    *(v20 + 64) = v23;
    v19 = swift_allocObject();
    SubEvent.DateTimeElement.init(startDate:endDate:recurrence:)(0, 0xE000000000000000, 0, 0xE000000000000000, v20);
    v18 = v7;
  }

  v13[4] = v19;
  LOBYTE(v84) = 2;
  v24 = sub_21DEC74A0();
  v25 = 0;
  *&v84 = 124;
  *(&v84 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v24);
  *(&v72 - 2) = &v84;
  v28 = sub_21DE7E79C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE81448, (&v72 - 4), v26, v27, &v72);
  v76 = 0;
  v77 = v18;
  v29 = *(v28 + 16);
  if (v29)
  {
    v74 = 0;
    v75 = v6;
    v87 = MEMORY[0x277D84F90];
    sub_21DE52560(0, v29, 0);
    v30 = v87;
    v31 = v80 + 1;
    v73 = v28;
    v32 = (v28 + 56);
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;
      v84 = *(v32 - 3);
      v85 = v33;
      v86 = v34;

      sub_21DEC6760();
      sub_21DE99AD8();
      v35 = sub_21DEC7230();
      v37 = v36;
      (*v31)(v81, v79);

      v87 = v30;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_21DE52560((v38 > 1), v39 + 1, 1);
        v30 = v87;
      }

      *(v30 + 16) = v39 + 1;
      v40 = v30 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v32 += 4;
      --v29;
    }

    while (v29);

    v14 = v82;
    v13 = v83;
    v25 = v74;
    v6 = v75;
    v18 = v77;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  *&v84 = v30;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
  v42 = sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40, MEMORY[0x277D83958]);
  v74 = v41;
  v43 = v42;
  v44 = sub_21DEC6D60();
  v46 = v45;

  v13[5] = v44;
  v13[6] = v46;
  LOBYTE(v84) = 3;
  v47 = v78;
  v48 = v76;
  v49 = sub_21DEC74A0();
  if (v48)
  {
    (*(v18 + 8))(v47, v6);

    if (!v25)
    {
    }

    goto LABEL_4;
  }

  v76 = v43;
  if (v50)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0;
  }

  if (v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = 0xE000000000000000;
  }

  v13[7] = v51;
  v13[8] = v52;
  LOBYTE(v84) = 4;
  v53 = sub_21DEC74A0();
  *&v84 = 124;
  *(&v84 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v53);
  *(&v72 - 2) = &v84;
  v56 = sub_21DE7E79C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE821E8, (&v72 - 4), v54, v55, &v72);
  v57 = *(v56 + 16);
  if (v57)
  {
    v75 = v6;
    v87 = MEMORY[0x277D84F90];
    sub_21DE52560(0, v57, 0);
    v58 = v87;
    ++v80;
    v73 = v56;
    v59 = (v56 + 56);
    do
    {
      v60 = *(v59 - 1);
      v61 = *v59;
      v84 = *(v59 - 3);
      v85 = v60;
      v86 = v61;

      sub_21DEC6760();
      sub_21DE99AD8();
      v62 = sub_21DEC7230();
      v64 = v63;
      (*v80)(v81, v79);

      v87 = v58;
      v66 = *(v58 + 16);
      v65 = *(v58 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_21DE52560((v65 > 1), v66 + 1, 1);
        v58 = v87;
      }

      *(v58 + 16) = v66 + 1;
      v67 = v58 + 16 * v66;
      *(v67 + 32) = v62;
      *(v67 + 40) = v64;
      v59 += 4;
      --v57;
    }

    while (v57);

    v14 = v82;
    v13 = v83;
    v6 = v75;
    v68 = v58;
  }

  else
  {

    v68 = MEMORY[0x277D84F90];
  }

  *&v84 = v68;
  v69 = sub_21DEC6D60();
  v71 = v70;

  (*(v77 + 8))(v78, v6);
  v13[9] = v69;
  v13[10] = v71;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v13;
}

uint64_t sub_21DE89A70(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94580, &qword_21DED0ED8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99A60();
  v9 = sub_21DEC7810();
  v10 = (*(*v3 + 120))(v9);
  v31 = 0;
  sub_21DE6C7C8(v10, v11);
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v13 = *(*v3 + 144);
    v14 = v13(v12);
    v15 = (*(*v14 + 248))(v14);

    if (v15)
    {
      v26[1] = v13(v16);
      v27 = 1;
      type metadata accessor for SubEvent.DateTimeElement(0);
      sub_21DE9A87C(&qword_27CE94588, 255, type metadata accessor for SubEvent.DateTimeElement, &protocol conformance descriptor for SubEvent.DateTimeElement);
      sub_21DEC75D0();
    }

    v17 = (*(*v3 + 168))(v16);
    v30 = 2;
    sub_21DE6C7C8(v17, v18);

    v20 = (*(*v3 + 192))(v19);
    v29 = 3;
    sub_21DE6C7C8(v20, v21);

    v24 = (*(*v3 + 216))(v23);
    v28 = 4;
    sub_21DE6C7C8(v24, v25);
    (*(v6 + 8))(v8, v5);
  }
}

void *SubEvent.deinit()
{

  return v0;
}

uint64_t SubEvent.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_21DE89EB4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 264))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE89FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657645646C696863 && a2 == 0xEB0000000073746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DE8A02C(uint64_t a1)
{
  v2 = sub_21DE99B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE8A068(uint64_t a1)
{
  v2 = sub_21DE99B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE8A0A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8A0F0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t sub_21DE8A17C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_21DE8A1C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8A210(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t sub_21DE8A2A4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

char *sub_21DE8A2EC()
{
  v1 = (*(*v0 + 96))();
  v2 = (*(*v1 + 240))(v1);

  v25 = v2;

  MEMORY[0x223D4B2A0](10, 0xE100000000000000);

  v4 = (*(*v0 + 120))(v3);
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
    sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40, MEMORY[0x277D83958]);
    v16 = sub_21DEC6D60();
    v18 = v17;

    MEMORY[0x223D4B2A0](v16, v18);

    v19 = sub_21DEBCBBC();
    v20 = sub_21DEBCBC4(v19, 10, 0xE100000000000000);
    v22 = v21;

    v23 = sub_21DEBCAD8(0x657645646C696863, 0xEB0000000073746ELL, v20, v22);
    MEMORY[0x223D4B2A0](v23);

    return v25;
  }

  v6 = sub_21DEC7400();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  v24 = MEMORY[0x277D84F90];
  result = sub_21DE52560(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D4B690](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = (*(*v9 + 240))();
      v12 = v11;

      v14 = *(v24 + 16);
      v13 = *(v24 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21DE52560((v13 > 1), v14 + 1, 1);
      }

      ++v8;
      *(v24 + 16) = v14 + 1;
      v15 = v24 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v6 != v8);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

BOOL sub_21DE8A60C()
{
  v1 = v0;
  v2 = (*(*v0 + 96))();
  v3 = (*(*v2 + 144))(v2);

  v5 = (*(*v3 + 248))(v4);

  if (v5)
  {
    return 1;
  }

  v8 = (*(*v1 + 120))(v6);
  v9 = v8;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_18:
    v11 = sub_21DEC7400();
  }

  else
  {
    v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  do
  {
    v7 = v11 != v12;
    if (v11 == v12)
    {
      break;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x223D4B690](v12, v9);
      if (__OFADD__(v12, 1))
      {
LABEL_14:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v13 = *(v9 + 8 * v12 + 32);

      if (__OFADD__(v12, 1))
      {
        goto LABEL_14;
      }
    }

    v14 = (*(*v13 + 248))();

    ++v12;
  }

  while ((v14 & 1) == 0);

  return v7;
}

uint64_t Event.__allocating_init(mainEvent:childEvents:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t Event.init(mainEvent:childEvents:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t Event.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Event.init(from:)(a1);
  return v2;
}

uint64_t Event.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94590, &qword_21DED0EE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  sub_21DE5CC9C(a1, v13);
  type metadata accessor for SubEvent();
  v9 = swift_allocObject();
  SubEvent.init(from:)(v13);
  if (v2)
  {
    type metadata accessor for Event();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v9;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21DE99B2C();
    sub_21DEC77E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945A0, &qword_21DED0EE8);
    sub_21DE99B80();
    sub_21DEC74E0();
    v11 = v13[0];
    if (!v13[0])
    {
      v11 = MEMORY[0x277D84F90];
    }

    *(v3 + 24) = v11;
    sub_21DEA2820(a1);
    sub_21DE8B4CC();
    sub_21DE8AE24();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DE8AACC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945B8, &qword_21DED0EF0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = *(*(*v1 + 96))(v6);
  (*(v9 + 272))(a1);

  v27 = v2;
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21DE99B2C();
    v26 = v8;
    v11 = sub_21DEC7810();
    v12 = (*(*v1 + 120))(v11);
    v13 = v12;
    v28 = MEMORY[0x277D84F90];
    if (v12 >> 62)
    {
      goto LABEL_17;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      while (1)
      {
        v24 = v5;
        v25 = v4;
        v15 = 0;
        v4 = v13 & 0xC000000000000001;
        v5 = v13 & 0xFFFFFFFFFFFFFF8;
        while (v4)
        {
          v16 = MEMORY[0x223D4B690](v15, v13);
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v18 = v28;
            v5 = v24;
            v4 = v25;
            goto LABEL_19;
          }

LABEL_10:
          if ((*(*v16 + 248))())
          {
            sub_21DEC7380();
            sub_21DEC73A0();
            sub_21DEC73B0();
            sub_21DEC7390();
          }

          else
          {
          }

          ++v15;
          if (v17 == v14)
          {
            goto LABEL_15;
          }
        }

        if (v15 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v14 = sub_21DEC7400();
        if (!v14)
        {
          goto LABEL_18;
        }
      }

      v16 = *(v13 + 8 * v15 + 32);

      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:
    v18 = MEMORY[0x277D84F90];
LABEL_19:

    v19 = type metadata accessor for SubEvent();
    sub_21DE9A87C(&qword_27CE945C0, v20, type metadata accessor for SubEvent, &protocol conformance descriptor for SubEvent);
    v21 = v19;
    v22 = v26;
    sub_21DE6C7F4(v18, v23, v4, v21);
    (*(v5 + 8))(v22, v4);
  }

  return result;
}

uint64_t sub_21DE8AE24()
{
  v1 = type metadata accessor for EventDateTimeComponents(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v44 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x28223BE20](v2);
  v48 = &v44 - v5;
  MEMORY[0x28223BE20](v4);
  v45 = &v44 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94960, &qword_21DED33F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DED0E70;
  *(inited + 32) = (*(*v0 + 96))();
  v8 = (*(*v0 + 120))();
  v49.n128_u64[0] = inited;
  sub_21DE98880(v8);
  v9 = v49.n128_u64[0];
  v49.n128_u64[0] = MEMORY[0x277D84F90];
  if (v9 >> 62)
  {
LABEL_39:
    v10 = sub_21DEC7400();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D4B690](v12, v9);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v11 = v49.n128_u64[0];
          break;
        }
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_39;
        }

        v13 = *(v9 + 8 * v12 + 32);

        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_17;
        }
      }

      v15 = (*(*v13 + 144))();
      v16 = (*(*v15 + 216))(v15);

      (*(*v16 + 112))(&v51, v17);

      if (v51 > 1u || v51)
      {
        v18 = sub_21DEC7610();

        if ((v18 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      else
      {
      }

      sub_21DEC7380();
      sub_21DEC73A0();
      sub_21DEC73B0();
      sub_21DEC7390();
LABEL_7:
      ++v12;
      if (v14 == v10)
      {
        goto LABEL_18;
      }
    }
  }

  v20 = v45;
  if ((v11 & 0x8000000000000000) == 0 && (v11 & 0x4000000000000000) == 0)
  {
    v21 = *(v11 + 16);
    if (v21)
    {
      goto LABEL_22;
    }
  }

  result = sub_21DEC7400();
  v21 = result;
  if (!result)
  {
  }

LABEL_22:
  if (v21 >= 1)
  {
    v22 = 0;
    v46 = v11 & 0xC000000000000001;
    v47 = v11;
    do
    {
      if (v46)
      {
        v23 = MEMORY[0x223D4B690](v22, v11);
      }

      else
      {
        v23 = *(v11 + 8 * v22 + 32);
      }

      v24 = *(*v23 + 144);
      v25 = v24();
      (*(*v25 + 168))(v25);

      v27 = (v24)(v26);
      (*(*v27 + 192))(v27);

      v29 = (v24)(v28);
      v30 = (*(*v29 + 216))(v29);

      (*(*v30 + 184))(&v49, v31);

      v32 = v49;
      v33 = v20;
      v34 = v50;
      if (EventDateTimeComponents.isValid.getter())
      {
        if (sub_21DE7CF2C() || EventDateTimeComponents.isValid.getter() && (static EventDateTimeComponents.== infix(_:_:)() & 1) == 0 || (v49 = v32, v50 = v34, !EventDateComponents.isValid.getter()))
        {
          v11 = v47;
          v20 = v45;
        }

        else
        {
          v35 = v24();
          v49 = v32;
          v50 = v34;
          v36 = v44;
          v37 = sub_21DE7D71C(&v49, v44);
          (*(*v35 + 200))(v36, v37);

          v39 = (v24)(v38);
          type metadata accessor for SubEvent.DateTimeElement.Recurrence();
          v40 = swift_allocObject();
          v40[1].n128_u8[0] = 3;
          v40[1].n128_u64[1] = MEMORY[0x277D84F90];
          v40[2].n128_u64[0] = 0;
          v40[2].n128_u64[1] = 0xE000000000000000;
          v41._countAndFlagsBits = 0;
          v41._object = 0xE000000000000000;
          v55 = EventDateComponents.init(string:)(v41);
          if (v42)
          {

            v52.value = 0;
            v52.is_nil = 1;
            v53.value = 0;
            v53.is_nil = 1;
            v54.value = 0;
            v54.is_nil = 1;
            v55 = EventDateComponents.init(year:month:day:)(v52, v53, v54);
          }

          v43 = v50;
          v11 = v47;
          v20 = v45;
          v40[3] = v49;
          v40[4].n128_u64[0] = v43;
          (*(*v39 + 224))(v40, v55.month, v55.day);
        }
      }

      else
      {
        v11 = v47;
        v20 = v33;
      }

      ++v22;

      sub_21DE779B4(v48);
      sub_21DE779B4(v20);
    }

    while (v21 != v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_21DE8B4CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94970, &qword_21DED33F8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v196 = &v192 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v207 = &v192 - v9;
  MEMORY[0x28223BE20](v8);
  v206 = &v192 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943D8, &qword_21DED3400);
  v208 = *(v11 - 1);
  v12 = MEMORY[0x28223BE20](v11);
  v205 = &v192 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v198 = &v192 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v197 = &v192 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v192 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v200 = &v192 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v214 = &v192 - v24;
  MEMORY[0x28223BE20](v23);
  v215 = &v192 - v25;
  v221 = type metadata accessor for EventDateTimeComponents(0);
  v218 = *(v221 - 8);
  v26 = MEMORY[0x28223BE20](v221);
  v199 = &v192 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v213 = &v192 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v209 = &v192 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v216 = &v192 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v210 = &v192 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v192 - v37;
  v39 = (*v0 + 96);
  v204 = *v39;
  v203 = v39;
  v40 = v204(v36);
  v41 = (*(*v40 + 144))(v40);

  (*(*v41 + 168))(v42);

  v43 = EventDateTimeComponents.isValid.getter();
  *&v220 = v38;
  result = sub_21DE779B4(v38);
  if (v43)
  {
    return result;
  }

  v45 = (*v1 + 120);
  v202 = *v45;
  v201 = v45;
  v46 = v202(result);
  v47 = v46;
  if (v46 >> 62)
  {
    goto LABEL_115;
  }

  v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v194 = v19;
  v195 = v11;
  v193 = v5;
  if (!v48)
  {
LABEL_54:

    v107 = v202(v106);
    v108 = v107;
    if (v107 >> 62)
    {
      v47 = sub_21DEC7400();
    }

    else
    {
      v47 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v109 = v218;
    v219 = v1;
    if (v47)
    {
      v110 = 0;
      v212 = (v108 & 0xC000000000000001);
      v211 = v108 & 0xFFFFFFFFFFFFFF8;
      v11 = (v218 + 56);
      v19 = v218 + 48;
      v217 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v212)
        {
          v111 = MEMORY[0x223D4B690](v110, v108);
          v5 = (v110 + 1);
          if (__OFADD__(v110, 1))
          {
            goto LABEL_110;
          }
        }

        else
        {
          if (v110 >= *(v211 + 16))
          {
            goto LABEL_111;
          }

          v111 = *(v108 + 8 * v110 + 32);

          v5 = (v110 + 1);
          if (__OFADD__(v110, 1))
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
            v48 = sub_21DEC7400();
            goto LABEL_4;
          }
        }

        v112 = v47;
        v113 = *(*v111 + 144);

        v115 = v113(v114);
        v116 = v220;
        (*(*v115 + 168))(v115);
        v117 = v116;
        v118 = v215;
        sub_21DE77A74(v117, v215);

        v119 = v221;
        (*v11)(v118, 0, 1, v221);

        if ((*v19)(v118, 1, v119) == 1)
        {
          sub_21DE5CD00(v118, &qword_27CE94250, &qword_21DED0EB0);
          v109 = v218;
          v1 = v219;
        }

        else
        {
          v120 = v210;
          sub_21DE77A74(v118, v210);
          sub_21DE77A74(v120, v216);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v218;
          v1 = v219;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v217 = sub_21DE98624(0, v217[2] + 1, 1, v217);
          }

          v123 = v217[2];
          v122 = v217[3];
          if (v123 >= v122 >> 1)
          {
            v217 = sub_21DE98624((v122 > 1), v123 + 1, 1, v217);
          }

          v124 = v216;
          v125 = v217;
          v217[2] = v123 + 1;
          sub_21DE77A74(v124, v125 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v123);
        }

        ++v110;
        v47 = v112;
        if (v5 == v112)
        {
          goto LABEL_75;
        }
      }
    }

    v217 = MEMORY[0x277D84F90];
LABEL_75:

    v47 = v1;
    v127 = v202(v126);
    v128 = v127;
    if (v127 >> 62)
    {
      v19 = sub_21DEC7400();
    }

    else
    {
      v19 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v19)
    {
      v129 = 0;
      v215 = v128 & 0xFFFFFFFFFFFFFF8;
      v216 = v128 & 0xC000000000000001;
      v212 = (v109 + 56);
      v11 = (v109 + 48);
      v130 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v216)
        {
          v131 = MEMORY[0x223D4B690](v129, v128);
          v5 = (v129 + 1);
          if (__OFADD__(v129, 1))
          {
            goto LABEL_112;
          }
        }

        else
        {
          if (v129 >= *(v215 + 16))
          {
            goto LABEL_113;
          }

          v131 = *(v128 + 8 * v129 + 32);

          v5 = (v129 + 1);
          if (__OFADD__(v129, 1))
          {
            goto LABEL_112;
          }
        }

        v132 = *(*v131 + 144);

        v47 = v132(v133);
        v134 = v220;
        (*(*v47 + 192))(v47);
        v135 = v214;
        sub_21DE77A74(v134, v214);

        v136 = v221;
        (*v212)(v135, 0, 1, v221);

        if ((*v11)(v135, 1, v136) == 1)
        {
          sub_21DE5CD00(v135, &qword_27CE94250, &qword_21DED0EB0);
          v1 = v219;
        }

        else
        {
          v137 = v209;
          sub_21DE77A74(v135, v209);
          sub_21DE77A74(v137, v213);
          v138 = swift_isUniquelyReferenced_nonNull_native();
          v1 = v219;
          if ((v138 & 1) == 0)
          {
            v130 = sub_21DE98624(0, v130[2] + 1, 1, v130);
          }

          v140 = v130[2];
          v139 = v130[3];
          v47 = v140 + 1;
          if (v140 >= v139 >> 1)
          {
            v130 = sub_21DE98624((v139 > 1), v140 + 1, 1, v130);
          }

          v130[2] = v47;
          sub_21DE77A74(v213, v130 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v140);
        }

        ++v129;
        if (v5 == v19)
        {
          goto LABEL_94;
        }
      }
    }

    v130 = MEMORY[0x277D84F90];
LABEL_94:

    v141 = v206;
    sub_21DE7E474(v217, v206);

    v143 = v208 + 48;
    v142 = *(v208 + 48);
    v144 = v195;
    if (v142(v141, 1, v195) == 1)
    {

      v145 = v141;
      return sub_21DE5CD00(v145, &qword_27CE94970, &qword_21DED33F8);
    }

    v146 = v194;
    sub_21DE9ED58(v141, v194);
    v147 = v207;
    sub_21DE7E474(v130, v207);
    v148 = v147;

    v149 = v142(v147, 1, v144);
    v150 = v193;
    if (v149 == 1)
    {
LABEL_97:
      v151 = v204;
      v152 = (v204)();
      v153 = (*(*v152 + 144))(v152);

      v154 = v198;
      sub_21DE5C6E4(v146, v198, &qword_27CE943D8, &qword_21DED3400);
      (*(*v153 + 176))(v154);

      v156 = v151(v155);
      v157 = (*(*v156 + 144))();

      sub_21DE5C6E4(v207, v150, &qword_27CE94970, &qword_21DED33F8);
      v158 = v142(v150, 1, v144);
      v159 = v218;
      v160 = (v218 + 56);
      if (v158 == 1)
      {
        sub_21DE5CD00(v150, &qword_27CE94970, &qword_21DED33F8);
        v161 = v200;
        v162 = v221;
        (*(v159 + 56))(v200, 1, 1, v221);
        v163 = v199;
        EventDateTimeComponents.init(year:month:day:hours:minutes:)(0, 1, 0, 1, 0, 1, 0, 1, v199, 0, 1);
        v164 = (*(v159 + 48))(v161, 1, v162);
        v165 = MEMORY[0x277D84F90];
        if (v164 != 1)
        {
          sub_21DE5CD00(v161, &qword_27CE94250, &qword_21DED0EB0);
        }
      }

      else
      {
        v168 = v200;
        sub_21DE77A74(v150, v200);
        (*v160)(v168, 0, 1, v221);
        v163 = v199;
        sub_21DE77A74(v168, v199);
        v165 = MEMORY[0x277D84F90];
      }

      (*(*v157 + 200))(v163);

      v170 = v204(v169);
      v171 = (*(*v170 + 144))(v170);

      v172 = v194;
      v173 = v205;
      sub_21DE5C6E4(v194, v205, &qword_27CE943D8, &qword_21DED3400);
      v174 = v173 + *(v144 + 12);
      v175 = *(v174 + 16);
      v222 = *v174;
      v223 = v175;
      v176 = EventDateComponents.dateString.getter();
      v178 = v177;
      type metadata accessor for SubEvent.DateTimeElement.Recurrence();
      v179 = swift_allocObject();
      *(v179 + 16) = 0;
      *(v179 + 24) = v165;
      *(v179 + 32) = v176;
      *(v179 + 40) = v178;

      v180._countAndFlagsBits = v176;
      v180._object = v178;
      EventDateComponents.init(string:)(v180);
      if (v181)
      {

        v227.value = 0;
        v227.is_nil = 1;
        v228.value = 0;
        v228.is_nil = 1;
        v229.value = 0;
        v229.is_nil = 1;
        EventDateComponents.init(year:month:day:)(v227, v228, v229);
      }

      v182 = v226;
      *(v179 + 48) = v225;
      *(v179 + 64) = v182;
      sub_21DE779B4(v205);
      (*(*v171 + 224))(v179);

      v183 = (*(*v1 + 136))(&v222);
      *v184 = v165;

      v183(&v222, 0);
      sub_21DE5CD00(v172, &qword_27CE943D8, &qword_21DED3400);
      v145 = v207;
      return sub_21DE5CD00(v145, &qword_27CE94970, &qword_21DED33F8);
    }

    v166 = v196;
    sub_21DE5C6E4(v147, v196, &qword_27CE94970, &qword_21DED33F8);
    v208 = v143;
    if (v142(v166, 1, v144) == 1)
    {
      sub_21DE5CD00(v166, &qword_27CE94970, &qword_21DED33F8);
      v167 = v197;
      sub_21DE5C6E4(v146, v197, &qword_27CE943D8, &qword_21DED3400);
      sub_21DE779B4(v167);
    }

    else
    {
      v185 = v166 + *(v144 + 12);
      v220 = *v185;
      v186 = *(v185 + 16);
      sub_21DE779B4(v166);
      v187 = v146;
      v188 = v146;
      v189 = v197;
      sub_21DE5C6E4(v188, v197, &qword_27CE943D8, &qword_21DED3400);
      v190 = v189 + *(v144 + 12);
      v191 = *(v190 + 16);
      v222 = v220;
      v223 = v186;
      v224 = 0;
      v225 = *v190;
      v226 = v191;
      sub_21DE81A04();
      LOBYTE(v186) = sub_21DEC6D70();
      sub_21DE779B4(v189);
      v146 = v187;
      if (v186)
      {
        goto LABEL_97;
      }
    }

    sub_21DE5CD00(v146, &qword_27CE943D8, &qword_21DED3400);
    v145 = v148;
    return sub_21DE5CD00(v145, &qword_27CE94970, &qword_21DED33F8);
  }

  v49 = 0;
  v219 = v47 & 0xC000000000000001;
  v217 = (v47 & 0xFFFFFFFFFFFFFF8);
  v212 = v47;
  v211 = v48;
  while (1)
  {
    if (v219)
    {
      v50 = MEMORY[0x223D4B690](v49, v47);
      v5 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v49 >= v217[2])
      {
        goto LABEL_114;
      }

      v50 = *(v47 + 8 * v49 + 32);

      v5 = (v49 + 1);
      if (__OFADD__(v49, 1))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v51 = *(*v50 + 120);
    v52 = v51();
    v54 = v53;

    v56 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v56 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {
      v57 = (v51)(v55);
      v59 = v58;
      v60 = (*(*v1 + 96))();
      v61 = (*(*v60 + 120))(v60);
      v63 = v62;

      if (v57 == v61 && v59 == v63)
      {
      }

      else
      {
        v65 = sub_21DEC7610();

        if ((v65 & 1) == 0)
        {
          goto LABEL_72;
        }
      }
    }

    v66 = *(*v50 + 168);
    v67 = v66(v55);
    v69 = v68;

    v71 = HIBYTE(v69) & 0xF;
    if ((v69 & 0x2000000000000000) == 0)
    {
      v71 = v67 & 0xFFFFFFFFFFFFLL;
    }

    if (v71)
    {
      v72 = v66(v70);
      v74 = v73;
      v75 = (*(*v1 + 96))();
      v76 = (*(*v75 + 168))();
      v78 = v77;

      if (v72 == v76 && v74 == v78)
      {
      }

      else
      {
        v80 = sub_21DEC7610();

        if ((v80 & 1) == 0)
        {
          goto LABEL_72;
        }
      }
    }

    v81 = *(*v50 + 216);
    v82 = v81(v70);
    v84 = v83;

    v86 = HIBYTE(v84) & 0xF;
    if ((v84 & 0x2000000000000000) == 0)
    {
      v86 = v82 & 0xFFFFFFFFFFFFLL;
    }

    if (v86)
    {
      break;
    }

LABEL_42:
    v11 = *(*v50 + 192);
    v96 = v11(v85);
    v19 = v97;

    v99 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v99 = v96 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99)
    {
      goto LABEL_7;
    }

    v19 = v11(v98);
    v101 = v100;
    v102 = (*(*v1 + 96))();
    v11 = (*(*v102 + 192))();
    v104 = v103;

    if (v19 == v11 && v101 == v104)
    {

LABEL_7:

      goto LABEL_8;
    }

    v19 = sub_21DEC7610();

    if ((v19 & 1) == 0)
    {
    }

LABEL_8:
    ++v49;
    v47 = v212;
    if (v5 == v211)
    {
      goto LABEL_54;
    }
  }

  v87 = v81(v85);
  v89 = v88;
  v90 = (*(*v1 + 96))();
  v91 = (*(*v90 + 216))();
  v93 = v92;

  if (v87 == v91 && v89 == v93)
  {

    goto LABEL_42;
  }

  v95 = sub_21DEC7610();

  if (v95)
  {
    goto LABEL_42;
  }

LABEL_72:
}

uint64_t Event.deinit()
{

  return v0;
}

uint64_t Event.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21DE8CB48@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::Contact::ContactKind_optional __swiftcall Contact.ContactKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

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

  *v2 = v5;
  return result;
}

uint64_t Contact.ContactKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x617A696E6167726FLL;
  }

  else
  {
    return 0x6E6F73726570;
  }
}

uint64_t sub_21DE8CCBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x617A696E6167726FLL;
  }

  else
  {
    v3 = 0x6E6F73726570;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v5 = 0x617A696E6167726FLL;
  }

  else
  {
    v5 = 0x6E6F73726570;
  }

  if (*a2)
  {
    v6 = 0xEC0000006E6F6974;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DEC7610();
  }

  return v8 & 1;
}

uint64_t sub_21DE8CD68()
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE8CDF0(uint64_t a1)
{
  sub_21DEC6E90();
}

uint64_t sub_21DE8CE64(uint64_t a1)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE8CEE8@<X0>(char *a2@<X8>)
{
  v3 = sub_21DEC7470();

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

void sub_21DE8CF48(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F73726570;
  if (*v1)
  {
    v2 = 0x617A696E6167726FLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEC0000006E6F6974;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21DE8D04C()
{
  if (*v0)
  {
    return 0x6E6F6870656C6574;
  }

  else
  {
    return 0x6D614E746E696F70;
  }
}

uint64_t sub_21DE8D084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E746E696F70 && a2 == 0xE900000000000065;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6870656C6574 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21DE8D168(uint64_t a1)
{
  v2 = sub_21DE99C34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE8D1A4(uint64_t a1)
{
  v2 = sub_21DE99C34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE8D1E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8D22C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_21DE8D294@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8D2E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

BOOL sub_21DE8D348()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = (*(*v0 + 120))(v4);
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v9 != 0;
}

uint64_t sub_21DE8D408()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;
  v5 = (*(*v0 + 120))();

  return sub_21DEBCAD8(v1, v3, v5, v4);
}

uint64_t Contact.ContactPoint.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Contact.ContactPoint.init(from:)(a1);
  return v2;
}

void *Contact.ContactPoint.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945C8, &qword_21DED0EF8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99C34();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for Contact.ContactPoint();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = 0;
    v8 = sub_21DEC74A0();
    v10 = v9;
    if (v9)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v1[2] = v11;
    v1[3] = v12;
    v23 = 1;

    v13 = sub_21DEC74A0();
    if (v14)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    v1[4] = v16;
    v1[5] = v17;
    if (v10)
    {

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v18 = sub_21DEA2250(a1);
      if (v19)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0xE000000000000000;
      }

      (*(v5 + 8))(v7, v4);
      swift_beginAccess();
      v1[2] = v20;
      v1[3] = v21;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE8D778(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945D8, &qword_21DED0F00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99C34();
  v9 = sub_21DEC7810();
  (*(*v3 + 96))(v9);
  v12[15] = 0;
  sub_21DEC7590();
  if (!v2)
  {

    (*(*v3 + 120))(v10);
    v12[14] = 1;
    sub_21DEC7590();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_21DE8D95C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 160))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE8DA20()
{
  v1 = *v0;
  v2 = 0x746565727473;
  v3 = 0x6574617473;
  v4 = 0x6F436C6174736F70;
  if (v1 != 3)
  {
    v4 = 0x7972746E756F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2037672291;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21DE8DAB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE99CAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE8DAE4(uint64_t a1)
{
  v2 = sub_21DE99E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE8DB20(uint64_t a1)
{
  v2 = sub_21DE99E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE8DB5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8DBA8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_21DE8DC10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8DC5C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);

  return v4(v2, v3);
}

uint64_t sub_21DE8DCC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8DD10(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 176);

  return v4(v2, v3);
}

uint64_t sub_21DE8DD78()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_21DE8DDC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_21DE8DE18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8DE64(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 200);

  return v4(v2, v3);
}

uint64_t sub_21DE8DECC()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_21DE8DF18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_21DE8DFBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8E008(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 224);

  return v4(v2, v3);
}

uint64_t sub_21DE8E070()
{
  swift_beginAccess();
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_21DE8E0BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

BOOL sub_21DE8E160()
{
  v1 = (*(*v0 + 120))();
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    return 1;
  }

  v6 = (*(*v0 + 144))(v4);
  v8 = v7;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    return 1;
  }

  v11 = (*(*v0 + 168))(v9);
  v13 = v12;

  v15 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    return 1;
  }

  v16 = (*(*v0 + 192))(v14);
  v18 = v17;

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    return 1;
  }

  v22 = (*(*v0 + 216))(v19);
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  return v25 != 0;
}

uint64_t sub_21DE8E2F8()
{
  v1 = (*(*v0 + 120))();
  v19 = sub_21DEBCAD8(0x746565727453, 0xE600000000000000, v1, v2);
  v3 = (*(*v0 + 144))();
  v5 = sub_21DEBCAD8(2037672259, 0xE400000000000000, v3, v4);
  MEMORY[0x223D4B2A0](v5);

  v7 = (*(*v0 + 168))(v6);
  v9 = sub_21DEBCAD8(0x6574617453, 0xE500000000000000, v7, v8);
  MEMORY[0x223D4B2A0](v9);

  v11 = (*(*v0 + 192))(v10);
  v13 = sub_21DEBCAD8(0x63206C6174736F50, 0xEB0000000065646FLL, v11, v12);
  MEMORY[0x223D4B2A0](v13);

  v15 = (*(*v0 + 216))(v14);
  v17 = sub_21DEBCAD8(0x7972746E756F43, 0xE700000000000000, v15, v16);
  MEMORY[0x223D4B2A0](v17);

  return v19;
}

uint64_t Contact.Address.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Contact.Address.init(from:)(a1);
  return v2;
}

void *Contact.Address.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945E0, &qword_21DED0F08);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99E5C();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for Contact.Address();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = 0;
    v8 = sub_21DEC74A0();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v1[2] = v10;
    v1[3] = v11;
    v33 = 1;
    v12 = sub_21DEC74A0();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v1[4] = v14;
    v1[5] = v15;
    v32 = 2;
    v16 = sub_21DEC74A0();
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v1[6] = v18;
    v1[7] = v19;
    v31 = 3;
    v20 = sub_21DEC74A0();
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v1[8] = v22;
    v1[9] = v23;
    v30 = 4;
    v24 = sub_21DEC74A0();
    if (v25)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    if (v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    (*(v5 + 8))(v7, v4);
    v1[10] = v27;
    v1[11] = v28;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

void *Contact.Address.__allocating_init(street:city:state:postalCode:country:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  result[10] = a9;
  result[11] = a10;
  return result;
}

void *Contact.Address.init(street:city:state:postalCode:country:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v10[7] = a6;
  v10[8] = a7;
  v10[9] = a8;
  v10[10] = a9;
  v10[11] = a10;
  return v10;
}

uint64_t sub_21DE8E8F8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945F0, &qword_21DED0F10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99E5C();
  v9 = sub_21DEC7810();
  v10 = (*(*v3 + 120))(v9);
  v25[15] = 0;
  sub_21DE6C7C8(v10, v11);
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v13 = (*(*v3 + 144))(v12);
    v25[14] = 1;
    sub_21DE6C7C8(v13, v14);

    v16 = (*(*v3 + 168))(v15);
    v25[13] = 2;
    sub_21DE6C7C8(v16, v17);

    v19 = (*(*v3 + 192))(v18);
    v25[12] = 3;
    sub_21DE6C7C8(v19, v20);

    v23 = (*(*v3 + 216))(v22);
    v25[11] = 4;
    sub_21DE6C7C8(v23, v24);
    (*(v6 + 8))(v8, v5);
  }
}

void *Contact.Address.deinit()
{

  return v0;
}

uint64_t Contact.Address.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_21DE8EC7C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 256))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE8ED48()
{
  if (*v0)
  {
    return 0x656C646E6168;
  }

  else
  {
    return 0x6D726F6674616C70;
  }
}

uint64_t sub_21DE8ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21DE8EE58(uint64_t a1)
{
  v2 = sub_21DE99ED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE8EE94(uint64_t a1)
{
  v2 = sub_21DE99ED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE8EED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8EF1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_21DE8EF84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8EFD0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

BOOL sub_21DE8F038()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = (*(*v0 + 120))(v4);
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  return v9 != 0;
}

uint64_t sub_21DE8F0F8()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;
  v5 = (*(*v0 + 120))();

  return sub_21DEBCAD8(v1, v3, v5, v4);
}

uint64_t Contact.SocialMedia.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Contact.SocialMedia.init(from:)(a1);
  return v2;
}

void *Contact.SocialMedia.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945F8, &qword_21DED0F18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99ED4();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for Contact.SocialMedia();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v8 = sub_21DEC74A0();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = 0xE000000000000000;
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v1[2] = v10;
    v1[3] = v12;
    v18 = 1;
    v13 = sub_21DEC74A0();
    if (v14)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    if (v14)
    {
      v11 = v14;
    }

    (*(v5 + 8))(v7, v4);
    v1[4] = v16;
    v1[5] = v11;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE8F3D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94608, &qword_21DED0F20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE99ED4();
  v9 = sub_21DEC7810();
  (*(*v3 + 96))(v9);
  v12[15] = 0;
  sub_21DEC7590();
  if (!v2)
  {

    (*(*v3 + 120))(v10);
    v12[14] = 1;
    sub_21DEC7590();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_21DE8F5B4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 160))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_21DE8F678(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4B746361746E6F63;
    v6 = 0x656C746954626F6ALL;
    if (a1 != 2)
    {
      v6 = 0x726F46736B726F77;
    }

    if (a1)
    {
      v5 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736C69616D65;
    v2 = 1936487029;
    if (a1 != 7)
    {
      v2 = 0x654D6C6169636F73;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x50746361746E6F63;
    if (a1 != 4)
    {
      v3 = 0x73736572646461;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21DE8F7A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE99F4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE8F7D4(uint64_t a1)
{
  v2 = sub_21DE9A234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE8F810(uint64_t a1)
{
  v2 = sub_21DE9A234();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21DE8F84C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE8F8A8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 160))(&v4);
}

uint64_t sub_21DE8F900@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8F94C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 184);

  return v4(v2, v3);
}

uint64_t sub_21DE8F9B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8FA00(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_21DE8FA70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE8FABC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 232);

  return v4(v2, v3);
}

uint64_t sub_21DE8FB28()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_21DE8FB78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_21DE8FBCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8FC18(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 256);

  return v2(v3);
}

uint64_t sub_21DE8FCAC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_21DE8FCF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8FD48(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 280);

  return v2(v3);
}

uint64_t sub_21DE8FDDC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t sub_21DE8FE24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8FE78(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 304);

  return v2(v3);
}

uint64_t sub_21DE8FF0C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_21DE8FFA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE8FFF8(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 328);

  return v2(v3);
}

uint64_t sub_21DE9008C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t sub_21DE90124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE90178(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 352);

  return v2(v3);
}

uint64_t sub_21DE9020C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}