void sub_22F2BA454(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v50 = a1;
  v49 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v16;
    if (v16 >= 1)
    {
      v24 = -v12;
      v25 = a4 + v16;
      v42 = v24;
      v43 = a4;
      do
      {
        v40 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v44 = v26;
        while (1)
        {
          v29 = v47;
          if (v26 <= a1)
          {
            v50 = v26;
            v48 = v40;
            goto LABEL_58;
          }

          v41 = v23;
          v47 += v24;
          v30 = v25 + v24;
          sub_22F13BA9C(v30, v10, &qword_27DAB10F0, &qword_22F771540);
          v31 = v27;
          v32 = v27;
          v33 = v10;
          v34 = v45;
          sub_22F13BA9C(v32, v45, &qword_27DAB10F0, &qword_22F771540);
          v35 = *(v46 + 48);
          v36 = *(v33 + v35);
          v37 = *(v34 + v35);
          v38 = v34;
          v10 = v33;
          sub_22F120ADC(v38, &qword_27DAB10F0, &qword_22F771540);
          sub_22F120ADC(v33, &qword_27DAB10F0, &qword_22F771540);
          if (v36 < v37)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || v47 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v23 = v30;
            }
          }

          v25 = v23;
          v26 = v44;
          v28 = v30 > v43;
          v24 = v42;
          if (!v28)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        if (v29 < v44 || v47 >= v44)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v42;
        }

        else
        {
          v24 = v42;
          a2 = v31;
          if (v29 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v23 = v41;
      }

      while (v25 > v43);
    }

LABEL_57:
    v50 = a2;
    v48 = v23;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v17 = a4 + v15;
    v48 = a4 + v15;
    if (v15 >= 1 && a2 < v47)
    {
      do
      {
        sub_22F13BA9C(a2, v10, &qword_27DAB10F0, &qword_22F771540);
        v19 = v45;
        sub_22F13BA9C(a4, v45, &qword_27DAB10F0, &qword_22F771540);
        v20 = *(v46 + 48);
        v21 = *&v10[v20];
        v22 = *(v19 + v20);
        sub_22F120ADC(v19, &qword_27DAB10F0, &qword_22F771540);
        sub_22F120ADC(v10, &qword_27DAB10F0, &qword_22F771540);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v12;
          a4 += v12;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
        }

        a1 += v12;
        v50 = a1;
      }

      while (a4 < v17 && a2 < v47);
    }
  }

LABEL_58:
  sub_22F3B66F4(&v50, &v49, &v48);
}

void sub_22F2BA954(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v81 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  MEMORY[0x28223BE20](v7);
  v71 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v70 = (&v69 - v10);
  MEMORY[0x28223BE20](v11);
  v79 = &v69 - v12;
  MEMORY[0x28223BE20](v13);
  v78 = &v69 - v14;
  MEMORY[0x28223BE20](v15);
  v77 = (&v69 - v16);
  MEMORY[0x28223BE20](v17);
  v74 = &v69 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v69 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v69 - v23;
  v26 = *(v25 + 72);
  if (!v26)
  {
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (a2 - a1 == 0x8000000000000000 && v26 == -1)
  {
    goto LABEL_83;
  }

  v27 = v81 - a2;
  if (v81 - a2 != 0x8000000000000000 || v26 != -1)
  {
    v28 = (a2 - a1) / v26;
    v84 = a1;
    v83 = a4;
    v72 = v7;
    v80 = v26;
    if (v28 < v27 / v26)
    {
      v29 = v28 * v26;
      if (a4 < a1 || a1 + v29 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v31 = a4 + v29;
      v82 = a4 + v29;
      if (v29 >= 1 && a2 < v81)
      {
        v79 = a4 + v29;
        while (1)
        {
          sub_22F13BA9C(a2, v24, &qword_27DAB10F0, &qword_22F771540);
          sub_22F13BA9C(a4, v21, &qword_27DAB10F0, &qword_22F771540);
          v33 = *(v7 + 48);
          v34 = *&v24[v33];
          v35 = *&v21[v33];
          if (v35 < v34)
          {
            sub_22F120ADC(v21, &qword_27DAB10F0, &qword_22F771540);
            sub_22F120ADC(v24, &qword_27DAB10F0, &qword_22F771540);
LABEL_23:
            v36 = v80;
            v37 = a2 + v80;
            if (a1 < a2 || a1 >= v37)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_37:
              v36 = v80;
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_37;
            }

            a2 = v37;
            goto LABEL_42;
          }

          if (v34 < v35)
          {
            goto LABEL_31;
          }

          v75 = a2;
          v76 = a4;
          v38 = v74;
          sub_22F13BA9C(v24, v74, &qword_27DAB10F0, &qword_22F771540);
          v40 = *v38;
          v39 = v38[1];

          sub_22F15CBD8(v38);
          v41 = v77;
          sub_22F13BA9C(v21, v77, &qword_27DAB10F0, &qword_22F771540);
          v42 = *v41;
          v43 = v41[1];

          sub_22F15CBD8(v41);
          if (v40 == v42 && v39 == v43)
          {
            break;
          }

          v45 = sub_22F742040();

          sub_22F120ADC(v21, &qword_27DAB10F0, &qword_22F771540);
          sub_22F120ADC(v24, &qword_27DAB10F0, &qword_22F771540);
          a2 = v75;
          a4 = v76;
          v7 = v72;
          v31 = v79;
          if (v45)
          {
            goto LABEL_23;
          }

LABEL_32:
          v36 = v80;
          v44 = a4 + v80;
          if (a1 < a4 || a1 >= v44)
          {
            swift_arrayInitWithTakeFrontToBack();
            goto LABEL_40;
          }

          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_40:
            v36 = v80;
          }

          v83 = v44;
          a4 = v44;
LABEL_42:
          a1 += v36;
          v84 = a1;
          if (a4 >= v31 || a2 >= v81)
          {
            goto LABEL_81;
          }
        }

        a2 = v75;
        a4 = v76;
        v7 = v72;
        v31 = v79;
LABEL_31:
        sub_22F120ADC(v21, &qword_27DAB10F0, &qword_22F771540);
        sub_22F120ADC(v24, &qword_27DAB10F0, &qword_22F771540);
        goto LABEL_32;
      }

      goto LABEL_81;
    }

    v30 = v27 / v26 * v26;
    if (a4 < a2 || a2 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_49:
        if (v30 < 1)
        {
          v48 = a4 + v30;
        }

        else
        {
          v46 = -v26;
          v47 = a4 + v30;
          v76 = a4;
          v48 = a4 + v30;
          v80 = -v26;
          while (2)
          {
            while (1)
            {
              v69 = v48;
              v49 = a2 + v46;
              v74 = a2;
              v75 = a2 + v46;
              while (1)
              {
                v52 = v81;
                if (a2 <= a1)
                {
                  v84 = a2;
                  v82 = v69;
                  goto LABEL_81;
                }

                v73 = v48;
                v77 = (v47 + v46);
                v53 = v78;
                v54 = v7;
                sub_22F13BA9C(v47 + v46, v78, &qword_27DAB10F0, &qword_22F771540);
                v55 = v79;
                sub_22F13BA9C(v49, v79, &qword_27DAB10F0, &qword_22F771540);
                v56 = *(v7 + 48);
                v57 = *(v53 + v56);
                v58 = *(v55 + v56);
                if (v58 >= v57)
                {
                  if (v57 >= v58)
                  {
                    v60 = v70;
                    sub_22F13BA9C(v78, v70, &qword_27DAB10F0, &qword_22F771540);
                    v61 = *v60;
                    v62 = v60[1];

                    sub_22F15CBD8(v60);
                    v63 = v71;
                    sub_22F13BA9C(v79, v71, &qword_27DAB10F0, &qword_22F771540);
                    v64 = *v63;
                    v65 = v63[1];

                    sub_22F15CBD8(v63);
                    if (v61 == v64 && v62 == v65)
                    {
                      v59 = 0;
                    }

                    else
                    {
                      v59 = sub_22F742040();
                    }

                    v46 = v80;

                    v49 = v75;
                    v54 = v72;
                  }

                  else
                  {
                    v59 = 0;
                    v46 = v80;
                  }
                }

                else
                {
                  v59 = 1;
                  v46 = v80;
                }

                v81 = v52 + v46;
                sub_22F120ADC(v79, &qword_27DAB10F0, &qword_22F771540);
                sub_22F120ADC(v78, &qword_27DAB10F0, &qword_22F771540);
                if (v59)
                {
                  break;
                }

                v66 = v77;
                v48 = v77;
                v7 = v54;
                if (v52 < v47 || v81 >= v47)
                {
                  swift_arrayInitWithTakeFrontToBack();
                  v50 = v76;
                }

                else
                {
                  v50 = v76;
                  if (v52 != v47)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                v47 = v48;
                v51 = v66 > v50;
                v46 = v80;
                a2 = v74;
                if (!v51)
                {
                  goto LABEL_79;
                }
              }

              v7 = v54;
              if (v52 < v74 || v81 >= v74)
              {
                break;
              }

              v67 = v52 == v74;
              v68 = v76;
              v48 = v73;
              a2 = v49;
              if (!v67)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              if (v47 <= v68)
              {
                goto LABEL_79;
              }
            }

            a2 = v49;
            swift_arrayInitWithTakeFrontToBack();
            v48 = v73;
            if (v47 > v76)
            {
              continue;
            }

            break;
          }
        }

LABEL_79:
        v84 = a2;
        v82 = v48;
LABEL_81:
        sub_22F3B66F4(&v84, &v83, &v82);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v26 = v80;
    goto LABEL_49;
  }

LABEL_84:
  __break(1u);
}

void sub_22F2BB160(uint64_t a1, float a2)
{
  v4 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_22F2BB520(v9, v6, v4, a2);
      MEMORY[0x2319033A0](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_22F2BB2D4(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_22F2BB2D4(unint64_t *a1, uint64_t a2, uint64_t a3, float a4)
{
  v23 = a2;
  v24 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Song(0);
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v12 = 0;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v12 << 6);
    sub_22F15CAA0(*(a3 + 48) + *(v26 + 72) * v20, v11);
    v21 = *(*(a3 + 56) + 4 * v20);
    sub_22F15CAA0(v11, v8);
    *&v8[*(v6 + 48)] = v21;
    sub_22F120ADC(v8, &qword_27DAB10F0, &qword_22F771540);
    sub_22F15CBD8(v11);
    if (v21 >= a4)
    {
      *(v24 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_15:
        sub_22F1B1778(v24, v23, v25, a3);
        return;
      }
    }
  }

  v18 = v12;
  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= v16)
    {
      goto LABEL_15;
    }

    v19 = *(a3 + 64 + 8 * v12);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_22F2BB520(void *result, uint64_t a2, uint64_t a3, float a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22F2BB2D4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_22F2BB5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548) + 48);
  v6 = *(a1 + v4);
  result = sub_22F15CAA0(a1, a2);
  *(a2 + v5) = v6;
  return result;
}

void sub_22F2BB620(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22F13A100(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_22F107D08(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_22F120ADC(v20, &qword_27DAB2148, &unk_22F778810);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_22F2BB780(uint64_t a1@<X8>)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v37 - v4;
  v5 = type metadata accessor for Song(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14A8, &qword_22F771AC8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v37 - v12;
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v41 = v18;
  v42 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    sub_22F15CAA0(*(v16 + 48) + *(v39 + 72) * v25, v7);
    v26 = *(*(v16 + 56) + 4 * v25);
    v27 = *(v40 + 48);
    v28 = v7;
    v29 = v40;
    sub_22F15CB04(v28, v14);
    *&v14[v27] = v26;
    (*(v3 + 56))(v14, 0, 1, v29);
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v41;
    v1[3] = v23;
    v1[4] = v24;
    v30 = v1[5];
    sub_22F1207AC(v14, v10, &qword_27DAB14A8, &qword_22F771AC8);
    v31 = 1;
    v32 = (*(v3 + 48))(v10, 1, v29);
    v33 = v42;
    if (v32 != 1)
    {
      v34 = v10;
      v35 = v38;
      sub_22F1207AC(v34, v38, &qword_27DAB10F0, &qword_22F771540);
      v30(v35);
      sub_22F120ADC(v35, &qword_27DAB10F0, &qword_22F771540);
      v31 = 0;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548);
    (*(*(v36 - 8) + 56))(v33, v31, 1, v36);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v29 = v40;
        (*(v3 + 56))(&v37 - v12, 1, 1, v40, v13);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F2BBB24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v39 = type metadata accessor for Song(0);
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB31A8, &unk_22F7825A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v42 = a1;
  v43 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v44 = v16;
  v45 = 0;
  v46 = v19 & v17;
  v47 = a2;
  v48 = a3;

  v40 = a3;

  while (1)
  {
    sub_22F2BB780(v14);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10F8, &unk_22F771548);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_22F0FF590(v42);
    }

    v22 = *(v21 + 48);
    sub_22F15CB04(v14, v11);
    v23 = *&v14[v22];
    v24 = *a5;
    v26 = sub_22F122A14(v11);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_22F134678();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v20 = *(v33[7] + 4 * v26);
      sub_22F15CBD8(v11);
      *(v33[7] + 4 * v26) = v20;
      a4 = 1;
    }

    else
    {
      sub_22F125F5C(v29, a4 & 1);
      v31 = sub_22F122A14(v11);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      sub_22F15CB04(v11, v33[6] + *(v41 + 72) * v26);
      *(v33[7] + 4 * v26) = v23;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_20;
      }

      v33[2] = v36;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void *sub_22F2BBE48(uint64_t a1)
{
  v2 = type metadata accessor for Song(0) - 8;
  MEMORY[0x28223BE20](v2);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = a1 + v21;
  v23 = *(v5 + 72);
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = sub_22F15CAA0(v9, v7);
    v13 = *(v7 + 5);
    if (v13)
    {
      v14 = *(v7 + 4);
      v24[0] = v14;
      v24[1] = v13;
      MEMORY[0x28223BE20](v12);
      *(&v21 - 2) = v24;

      if (sub_22F1C0E04(sub_22F15A388, (&v21 - 4), v10))
      {
        sub_22F15CBD8(v7);
      }

      else
      {
        sub_22F15CAA0(v7, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_22F13E558(0, v11[2] + 1, 1, v11);
        }

        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          v11 = sub_22F13E558((v15 > 1), v16 + 1, 1, v11);
        }

        v11[2] = v16 + 1;
        sub_22F15CB04(v22, v11 + v21 + v16 * v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_22F13E1A8(0, *(v10 + 2) + 1, 1, v10);
        }

        v18 = *(v10 + 2);
        v17 = *(v10 + 3);
        if (v18 >= v17 >> 1)
        {
          v10 = sub_22F13E1A8((v17 > 1), v18 + 1, 1, v10);
        }

        sub_22F15CBD8(v7);
        *(v10 + 2) = v18 + 1;
        v19 = &v10[16 * v18];
        *(v19 + 4) = v14;
        *(v19 + 5) = v13;
      }
    }

    else
    {
      sub_22F15CBD8(v7);
    }

    v9 += v23;
    --v8;
  }

  while (v8);

  return v11;
}

id FlexMusicCurationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlexMusicCurationManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FlexMusicCurationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F2BC31C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v70 = a4;
  v69 = a1;
  v7 = type metadata accessor for CollectionCuration(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v20 = MEMORY[0x28223BE20](v17);
  v21 = &v58 - v18;
  v22 = *&a3[OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions];
  if (v22 >> 62)
  {
    v65 = &v58 - v18;
    v63 = v19;
    v56 = sub_22F741A00();
    v19 = v63;
    v21 = v65;
    if (v56)
    {
      goto LABEL_3;
    }

LABEL_15:
    sub_22F7416A0();
    if (!v4)
    {
      v57 = a3;
    }

    return;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_3:
  v67 = v4;
  v68 = a2;
  v64 = a3;
  v65 = v21;
  v66 = v8;
  v60 = v13;
  v63 = v19;
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x2319016F0](0, v22, v20);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v23 = *(v22 + 32);
    swift_unknownObjectRetain();
  }

  v24 = [v23 uid];
  swift_unknownObjectRelease();
  v61 = sub_22F740E20();
  v26 = v25;

  v27 = sub_22F7416B0();
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v30 = swift_allocObject();
  v62 = xmmword_22F771340;
  *(v30 + 16) = xmmword_22F771340;
  v31 = v68;
  *(v30 + 32) = v69;
  *(v30 + 40) = v31;
  sub_22F25F004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22F770DF0;
  *(v32 + 56) = MEMORY[0x277D837D0];
  *(v32 + 64) = sub_22F153470();
  strcpy((v32 + 32), "collectionId");
  *(v32 + 45) = 0;
  *(v32 + 46) = -5120;
  *(v32 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v32 + 104) = sub_22F25F050();
  *(v32 + 72) = v30;

  v33 = sub_22F741560();
  v34 = v67;
  v35 = sub_22F33E998();
  if (v34)
  {

    return;
  }

  v67 = v27;
  v59 = v29;
  v36 = v35;

  if (v36[2])
  {
    v37 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    sub_22F25F0B4(v36 + v37, v16);

    v38 = v65;
    sub_22F25F118(v16, v65);
    v39 = v38;
    v40 = *(v38 + 40);
    if (v40)
    {
      v41 = v39[4];
      v42 = v39;

      FlexMusicCuration.replaceFirstSongInBestSongSuggestions(with:)(v41, v40);

      sub_22F25F17C(v42);
      return;
    }

    v69 = v26;
    v48 = *v39;
    v47 = v39[1];
    v50 = v39[2];
    v49 = v39[3];

    v51 = v60;
    sub_22F73F680();
    *v51 = v48;
    v51[1] = v47;
    v51[2] = v50;
    v51[3] = v49;
    v52 = v69;
    v51[4] = v61;
    v51[5] = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C8, &unk_22F780230);
    v53 = swift_allocObject();
    *(v53 + 16) = v62;
    sub_22F25F0B4(v51, v53 + v37);
    v54 = v59;
    MusicCache.write(collectionCurations:progressReporter:)(v53);
    sub_22F25F17C(v51);

    swift_setDeallocating();
    sub_22F25F17C(v53 + v37);
    swift_deallocClassInstance();
    sub_22F25F17C(v65);
  }

  else
  {

    sub_22F73F680();
    v43 = v68;
    *v10 = v69;
    v10[1] = v43;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v61;
    v10[5] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C8, &unk_22F780230);
    v44 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v62;
    sub_22F25F0B4(v10, v45 + v44);

    v46 = v59;
    MusicCache.write(collectionCurations:progressReporter:)(v45);
    sub_22F25F17C(v10);

    swift_setDeallocating();
    sub_22F25F17C(v45 + v44);
    swift_deallocClassInstance();
  }

  v55 = v64;
}

uint64_t sub_22F2BC97C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v71 = type metadata accessor for Song(0);
  v68 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v75 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v74 = (&v67 - v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1628, &qword_22F772A68);
  MEMORY[0x28223BE20](v12 - 8);
  v73 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v67 - v15;
  if (qword_2810A9AE0 != -1)
  {
    goto LABEL_54;
  }

  while (2)
  {
    v17 = qword_2810B4DF8;
    *&v18 = CACurrentMediaTime();
    sub_22F1B560C("Memory Appropriate Ranker", 25, 2u, v18, 0, v17, v83);
    v69 = a2 + OBJC_IVAR___PGMusicCuratorContext_configuration;
    v19 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 344);
    v20 = -1 << *(a1 + 32);
    v21 = ~v20;
    v22 = -v20;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(a1 + 56);
    v77 = a1;
    v78 = a1 + 56;
    v79 = v21;
    v80 = 0;
    v81 = v24;
    v82 = 0;

    v25 = MEMORY[0x277D84F98];
    v70 = a1;
    while (1)
    {
      v26 = v73;
      sub_22F3D4140(v73);
      sub_22F16FDD4(v26, v16);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1630, &qword_22F772A70);
      if ((*(*(v27 - 8) + 48))(v16, 1, v27) == 1)
      {
        sub_22F0FF590(v77);
        sub_22F1B2BBC(0);
        sub_22F7416A0();

        if (v3)
        {
        }

        return v25;
      }

      sub_22F15CB04(&v16[*(v27 + 48)], v11);
      v28 = &v11[*(v71 + 80)];
      v29 = v28[4];
      v30 = &v11[*(v71 + 84)];
      v31 = v30[4];
      if (v29 == 1 && v31 != 0)
      {
        break;
      }

      v33 = *v30;
      v34 = *v28;
      v35 = *(v69 + 356);
      v36 = *(v69 + 360);
      v37 = v75;
      sub_22F15CAA0(v11, v75);
      if (((v35 <= v34) & ~v29) != 0)
      {
        v38 = 1.0;
      }

      else
      {
        v38 = v19;
      }

      if (v36 > v33)
      {
        v39 = v19;
      }

      else
      {
        v39 = 0.0;
      }

      if ((v35 <= v34) & ~v29 | v31 & 1)
      {
        v40 = v38;
      }

      else
      {
        v40 = v39;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v76 = v25;
      a2 = v25;
      v42 = sub_22F122A14(v37);
      v44 = *(v25 + 16);
      v45 = (v43 & 1) == 0;
      v46 = __OFADD__(v44, v45);
      v47 = v44 + v45;
      if (v46)
      {
        goto LABEL_51;
      }

      a1 = v43;
      if (*(v25 + 24) >= v47)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = v42;
          sub_22F134678();
          v42 = v61;
          v60 = v76;
          if (a1)
          {
LABEL_32:
            *(v60[7] + 4 * v42) = v40;
            sub_22F15CBD8(v75);
            goto LABEL_43;
          }

          goto LABEL_37;
        }
      }

      else
      {
        sub_22F125F5C(v47, isUniquelyReferenced_nonNull_native);
        v42 = sub_22F122A14(v75);
        if ((a1 & 1) != (v48 & 1))
        {
          goto LABEL_55;
        }
      }

      v60 = v76;
      if (a1)
      {
        goto LABEL_32;
      }

LABEL_37:
      v60[(v42 >> 6) + 8] |= 1 << v42;
      a2 = v42;
      v62 = v75;
      sub_22F15CAA0(v75, v60[6] + *(v68 + 72) * v42);
      *(v60[7] + 4 * a2) = v40;
      sub_22F15CBD8(v62);
      v63 = v60[2];
      v46 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v46)
      {
        goto LABEL_52;
      }

LABEL_42:
      v60[2] = v64;
LABEL_43:
      a1 = v70;
      sub_22F741680();
      if (v3)
      {

        sub_22F15CBD8(v11);
        sub_22F0FF590(v77);

        return v25;
      }

      sub_22F15CBD8(v11);
      v25 = v60;
    }

    v49 = v74;
    sub_22F15CAA0(v11, v74);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v25;
    v51 = v49;
    a2 = v25;
    v52 = sub_22F122A14(v51);
    a1 = v52;
    v54 = *(v25 + 16);
    v55 = (v53 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
      continue;
    }

    break;
  }

  v57 = v53;
  if (*(v25 + 24) >= v56)
  {
    if (v50)
    {
      v60 = v76;
      if (v53)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_22F134678();
      v60 = v76;
      if (v57)
      {
LABEL_35:
        *(v60[7] + 4 * a1) = v19;
        sub_22F15CBD8(v74);
        goto LABEL_43;
      }
    }

    goto LABEL_41;
  }

  sub_22F125F5C(v56, v50);
  v58 = sub_22F122A14(v74);
  if ((v57 & 1) == (v59 & 1))
  {
    a1 = v58;
    v60 = v76;
    if (v57)
    {
      goto LABEL_35;
    }

LABEL_41:
    v60[(a1 >> 6) + 8] |= 1 << a1;
    a2 = v74;
    sub_22F15CAA0(v74, v60[6] + *(v68 + 72) * a1);
    *(v60[7] + 4 * a1) = v19;
    sub_22F15CBD8(a2);
    v65 = v60[2];
    v46 = __OFADD__(v65, 1);
    v64 = v65 + 1;
    if (v46)
    {
      goto LABEL_53;
    }

    goto LABEL_42;
  }

LABEL_55:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t Song.init(_:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v321 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v329 = &v314 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  MEMORY[0x28223BE20](v6 - 8);
  v328 = &v314 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v314 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v314 - v12;
  memcpy(v651, v2, sizeof(v651));
  v14 = v2[14];
  v656 = v2[13];
  v657 = v14;
  v658 = v2[15];
  v15 = v2[10];
  *v653 = v2[9];
  *&v653[16] = v15;
  v16 = v2[11];
  v655 = v2[12];
  v654 = v16;
  v17 = v2[6];
  v652[4] = v2[5];
  v652[5] = v17;
  v18 = v2[7];
  v652[7] = v2[8];
  v652[6] = v18;
  v19 = v2[2];
  v652[0] = v2[1];
  v652[1] = v19;
  v20 = v2[3];
  v652[3] = v2[4];
  v652[2] = v20;
  v21 = 0.0;
  if (sub_22F1E1664(v652) == 1)
  {
    goto LABEL_2;
  }

  if (*&v653[16])
  {
    if (*&v653[8] == __PAIR128__(0xE800000000000000, 0x746963696C707865))
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_22F742040();
    }

    v23 = v22 & 1;
    if (v651[172])
    {
      v320 = v22 & 1;
      goto LABEL_11;
    }
  }

  else
  {
    v23 = 2;
    if (v651[172])
    {
LABEL_2:
      v320 = 2;
LABEL_11:
      v319 = 1;
      goto LABEL_13;
    }
  }

  v319 = 0;
  v320 = v23;
  v21 = (*&v651[168] * 0.001);
LABEL_13:
  if ([objc_opt_self() musicCurationShouldUseOldStylePreviewURL])
  {
    v626[12] = *&v651[208];
    v626[13] = *&v651[224];
    v626[14] = *&v651[240];
    v626[8] = *&v651[144];
    v626[9] = *&v651[160];
    v626[11] = *&v651[192];
    v626[10] = *&v651[176];
    v626[4] = *&v651[80];
    v626[5] = *&v651[96];
    v626[7] = *&v651[128];
    v626[6] = *&v651[112];
    v626[0] = *&v651[16];
    v626[1] = *&v651[32];
    v626[3] = *&v651[64];
    v626[2] = *&v651[48];
    if (sub_22F1E1664(v626) != 1 && *&v626[4] && *(*&v626[4] + 16))
    {
      v317 = *(*&v626[4] + 32);
LABEL_22:

      goto LABEL_24;
    }
  }

  else
  {
    v626[12] = *&v651[208];
    v626[13] = *&v651[224];
    v626[14] = *&v651[240];
    v626[8] = *&v651[144];
    v626[9] = *&v651[160];
    v626[11] = *&v651[192];
    v626[10] = *&v651[176];
    v626[4] = *&v651[80];
    v626[5] = *&v651[96];
    v626[7] = *&v651[128];
    v626[6] = *&v651[112];
    v626[0] = *&v651[16];
    v626[1] = *&v651[32];
    v626[3] = *&v651[64];
    v626[2] = *&v651[48];
    if (sub_22F1E1664(v626) != 1)
    {
      v24 = *(&v626[3] + 1);
      if (!*(&v626[3] + 1))
      {
        v317 = 0;
        goto LABEL_24;
      }

      v317 = *&v626[3];
      goto LABEL_22;
    }
  }

  v317 = 0;
  v24 = 0;
LABEL_24:
  v316 = v24;
  v25 = sub_22F73F7C0();
  v26 = *(*(v25 - 8) + 56);
  v26(v13, 1, 1, v25);
  v648 = *&v651[208];
  v649 = *&v651[224];
  v650 = *&v651[240];
  v647[8] = *&v651[144];
  v647[9] = *&v651[160];
  v647[11] = *&v651[192];
  v647[10] = *&v651[176];
  v647[4] = *&v651[80];
  v647[5] = *&v651[96];
  v647[7] = *&v651[128];
  v647[6] = *&v651[112];
  v647[0] = *&v651[16];
  v647[1] = *&v651[32];
  v647[3] = *&v651[64];
  v647[2] = *&v651[48];
  if (sub_22F1E1664(v647) != 1 && *(&v648 + 1))
  {

    sub_22F73F6E0();
    sub_22F2C0884(v13);
    v26(v10, 0, 1, v25);
    sub_22F1207AC(v10, v13, &qword_27DAB0C90, &unk_22F785B70);
  }

  v323 = *&v651[280];
  v315 = *&v651[256];
  v318 = v13;
  if (*&v651[256] == 1 || *&v651[272] < 2uLL || !*(*&v651[272] + 16))
  {
    sub_22F2C0840(v626);
  }

  else
  {
    memcpy(v626, (*&v651[272] + 32), 0x162uLL);
    sub_22F191960(v626, &v571);
  }

  v643 = v626[2];
  v644 = v626[3];
  v645 = v626[4];
  v646 = v626[5];
  v641 = v626[0];
  v642 = v626[1];
  v27 = LODWORD(v626[7]) | (BYTE4(v626[7]) << 32);
  *&v369 = DWORD2(v626[8]) | (BYTE12(v626[8]) << 32);
  *&v370 = DWORD2(v626[11]) | (BYTE12(v626[11]) << 32);
  v639 = v626[13];
  v640 = BYTE4(v626[13]);
  v28 = BYTE5(v626[13]);
  v637 = *(&v626[13] + 6);
  v638 = HIWORD(v626[13]);
  *&v352 = *&v626[14];
  v635 = DWORD2(v626[14]);
  v636 = BYTE12(v626[14]);
  LODWORD(v366) = BYTE13(v626[14]);
  v633 = *(&v626[14] + 14);
  v634 = WORD3(v626[15]);
  v631 = v626[16];
  v632 = BYTE4(v626[16]);
  LODWORD(v364) = BYTE5(v626[16]);
  LODWORD(v367) = BYTE6(v626[16]);
  v29 = DWORD2(v626[17]) | (BYTE12(v626[17]) << 32);
  v630 = v626[22];
  v629 = v626[21];
  v628 = v626[20];
  v627 = v626[19];
  LODWORD(v368) = BYTE5(v626[7]);
  LODWORD(v361) = HIWORD(v626[8]);
  v360 = WORD3(v626[10]);
  LODWORD(v359) = HIWORD(v626[11]);
  LODWORD(v355) = BYTE13(v626[11]);
  v362 = *&v626[17];
  v363 = *(&v626[16] + 1);
  LODWORD(v356) = HIWORD(v626[17]);
  v327 = &v524;
  v348 = v626[6];
  v353 = HIDWORD(v27);
  v30 = WORD3(v626[7]);
  v345 = *(&v626[7] + 8);
  v358 = DWORD1(v369);
  LODWORD(v31) = BYTE13(v626[8]);
  v340 = *(&v626[10] + 8);
  v341 = v626[9];
  v346 = LODWORD(v626[10]) | (BYTE4(v626[10]) << 32);
  v350 = HIDWORD(v346);
  v32 = BYTE5(v626[10]);
  v33 = DWORD1(v370);
  v339 = v626[12];
  v344 = *(&v626[15] + 1);
  LODWORD(v349) = BYTE7(v626[16]);
  v357 = HIDWORD(v29);
  v34 = BYTE13(v626[17]);
  v333 = v626[18];
  v35 = sub_22F19193C(v626);
  LODWORD(v354) = v28;
  v365 = v27;
  if (v35 != 1)
  {
    BYTE4(v457) = v640;
    LODWORD(v457) = v639;
    WORD4(v441) = v638;
    *&v441 = v637;
    BYTE4(v453) = v636;
    LODWORD(v453) = v635;
    WORD4(v390) = v634;
    *&v390 = v633;
    BYTE4(v449) = v632;
    LODWORD(v449) = v631;
    LOWORD(v374) = v630;
    BYTE4(v558) = v640;
    LODWORD(v558) = v639;
    HIWORD(v558) = v638;
    *(&v558 + 6) = v637;
    v559[12] = v636;
    *&v559[8] = v635;
    *&v559[22] = v634;
    v420 = v643;
    v421 = v644;
    v422 = v645;
    v423 = v646;
    v418 = v641;
    v419 = v642;
    v373 = v629;
    v371 = v627;
    v372 = v628;
    v537 = v643;
    v538 = v644;
    v539 = v645;
    v540 = v646;
    v535 = v641;
    v536 = v642;
    *&v559[14] = v633;
    *&v559[32] = v631;
    v559[36] = v632;
    v570 = v630;
    v580 = v368 & 1;
    v585 = v31 & 1;
    v590 = v32 & 1;
    v595 = v355 & 1;
    v599 = v640;
    v598 = v639;
    v602 = v638;
    v601 = v637;
    v605 = v636;
    v604 = v635;
    v608 = v634;
    v607 = v633;
    v611 = v632;
    v610 = v631;
    v619 = v34 & 1;
    v541 = v348;
    LOBYTE(v543) = v353;
    v542 = v27;
    HIBYTE(v543) = v368;
    v544 = v30;
    v545 = v345;
    LOBYTE(v547) = v358;
    v546 = v369;
    HIBYTE(v547) = v31;
    v548 = v361;
    v549 = v341;
    LOBYTE(v551) = v350;
    v550 = v346;
    HIBYTE(v551) = v32;
    v552 = v360;
    v553 = v340;
    LOBYTE(v555) = v33;
    v554 = v370;
    HIBYTE(v555) = v355;
    v556 = v359;
    v557 = v339;
    BYTE5(v558) = v354;
    *v559 = v352;
    v559[13] = v366;
    *&v559[24] = v344;
    v559[37] = v364;
    v559[38] = v367;
    v560 = v349;
    v618 = v357;
    v617 = v29;
    v625 = v630;
    v562 = v29;
    *&v561 = v363;
    *(&v561 + 1) = v362;
    v563 = v357;
    v564 = v34;
    v565 = v356;
    v569 = v629;
    v568 = v628;
    v566 = v333;
    v567 = v627;
    v572 = v642;
    v571 = v641;
    v576 = v646;
    v575 = v645;
    v574 = v644;
    v573 = v643;
    v577 = v348;
    v579 = v353;
    v578 = v365;
    v582 = v345;
    v584 = v358;
    v583 = v369;
    v587 = v341;
    v589 = v350;
    v588 = v346;
    v592 = v340;
    v594 = v33;
    v593 = v370;
    v597 = v339;
    v600 = v354;
    v603 = v352;
    v606 = v366;
    v609 = v344;
    v612 = v364;
    v613 = v367;
    v615 = v363;
    v616 = v362;
    v624 = v629;
    v623 = v628;
    v621 = v333;
    v622 = v627;
    sub_22F18A748(&v535, &v498);
    sub_22F18A780(&v571);
    v398 = v537;
    v399 = v538;
    v400 = v539;
    v401 = v540;
    v396 = v535;
    v397 = v536;
    v36 = v562;
    v37 = v563;
    LODWORD(v27) = v365;
    v38 = v564;
    v500 = v537;
    v501 = v538;
    v502 = v539;
    v503 = v540;
    v498 = v535;
    v499 = v536;
    v504 = v541;
    v506 = v543;
    v505 = v542;
    v508 = v545;
    v510 = v547;
    v509 = v546;
    v512 = v549;
    v514 = v551;
    v513 = v550;
    v516 = v553;
    v518 = v555;
    v517 = v554;
    *&v522[31] = *&v559[31];
    *&v522[16] = *&v559[16];
    *v522 = *v559;
    v520 = v557;
    v521 = v558;
    LOBYTE(v28) = v354;
    v39 = v327;
    *v327 = v561;
    *(v39 + 20) = v37;
    *(v39 + 4) = v36;
    *(v39 + 21) = v38;
    v534 = v570;
    v533 = v569;
    v532 = v568;
    v530 = v566;
    v531 = v567;
    sub_22F18A748(&v535, &v461);
    sub_22F18A780(&v498);
  }

  v322 = &v487;
  v573 = v643;
  v574 = v644;
  v575 = v645;
  v576 = v646;
  v571 = v641;
  v572 = v642;
  v335 = *(&v348 + 1);
  v336 = v348;
  v577 = v348;
  v578 = v27;
  v579 = v353;
  v580 = v368;
  v342 = v30;
  v581 = v30;
  v347 = v345;
  v582 = v345;
  v337 = *(&v345 + 1);
  v583 = v369;
  v584 = v358;
  v585 = v31;
  v586 = v361;
  *&v348 = v341;
  v587 = v341;
  *&v341 = *(&v341 + 1);
  v40 = v346;
  v588 = v346;
  v589 = v350;
  v590 = v32;
  v591 = v360;
  v330 = *(&v340 + 1);
  v331 = v340;
  v592 = v340;
  v593 = v370;
  v594 = v33;
  v595 = v355;
  v596 = v359;
  *&v340 = v339;
  v597 = v339;
  *&v345 = *(&v339 + 1);
  v598 = v639;
  v599 = v640;
  v600 = v28;
  v601 = v637;
  v602 = v638;
  v603 = v352;
  v604 = v635;
  v605 = v636;
  v606 = v366;
  v608 = v634;
  v607 = v633;
  v609 = v344;
  v611 = v632;
  v610 = v631;
  v612 = v364;
  v613 = v367;
  v41 = v349;
  v614 = v349;
  v615 = v363;
  v616 = v362;
  v617 = v29;
  v42 = v28;
  v43 = v357;
  v618 = v357;
  v619 = v34;
  v620 = v356;
  *&v339 = v333;
  v625 = v630;
  v338 = *(&v333 + 1);
  v624 = v629;
  v623 = v628;
  v621 = v333;
  v622 = v627;
  v44 = sub_22F19193C(&v571);
  v45 = v42;
  v46 = v40;
  v47 = v32;
  v343 = v29;
  v48 = v34;
  v49 = v342;
  v50 = v41;
  v51 = v33;
  v52 = v43;
  v332 = v31;
  LODWORD(v333) = v32;
  LODWORD(v351) = v34;
  v334 = v33;
  if (v44 != 1)
  {
    BYTE4(v453) = v640;
    LODWORD(v453) = v639;
    WORD4(v390) = v638;
    *&v390 = v637;
    BYTE4(v449) = v636;
    LODWORD(v449) = v635;
    WORD4(v457) = v634;
    *&v457 = v633;
    v456 = v632;
    v455 = v631;
    LOWORD(v444) = v630;
    BYTE4(v521) = v640;
    LODWORD(v521) = v639;
    HIWORD(v521) = v638;
    *(&v521 + 6) = v637;
    v522[12] = v636;
    *&v522[8] = v635;
    *&v522[22] = v634;
    *&v522[14] = v633;
    *&v522[32] = v631;
    v522[36] = v632;
    v534 = v630;
    HIBYTE(v543) = v368 & 1;
    HIBYTE(v547) = v31 & 1;
    HIBYTE(v551) = v32 & 1;
    HIBYTE(v555) = v355 & 1;
    LODWORD(v558) = v639;
    BYTE4(v558) = v640;
    *(&v558 + 6) = v637;
    HIWORD(v558) = v638;
    *&v559[8] = v635;
    v559[12] = v636;
    *&v559[22] = v634;
    *&v559[14] = v633;
    v559[36] = v632;
    *&v559[32] = v631;
    v564 = v34 & 1;
    v398 = v643;
    v399 = v644;
    v400 = v645;
    v401 = v646;
    v396 = v641;
    v397 = v642;
    v53 = v629;
    v443 = v629;
    v54 = v627;
    v55 = v628;
    v442 = v628;
    v441 = v627;
    v500 = v643;
    v501 = v644;
    v502 = v645;
    v503 = v646;
    v498 = v641;
    v499 = v642;
    v57 = v335;
    v56 = v336;
    *&v504 = v336;
    *(&v504 + 1) = v335;
    v58 = v337;
    v59 = v338;
    v60 = v340;
    v61 = v353;
    LOBYTE(v506) = v353;
    v62 = v365;
    v505 = v365;
    HIBYTE(v506) = v368;
    v507 = v342;
    v63 = v347;
    *&v508 = v347;
    *(&v508 + 1) = v337;
    v64 = v358;
    LOBYTE(v510) = v358;
    v65 = v369;
    v509 = v369;
    HIBYTE(v510) = v31;
    v511 = v361;
    v31 = v348;
    *&v512 = v348;
    v66 = v341;
    *(&v512 + 1) = v341;
    v67 = v350;
    LOBYTE(v514) = v350;
    v513 = v40;
    HIBYTE(v514) = v47;
    v515 = v360;
    v69 = v330;
    v68 = v331;
    *&v516 = v331;
    *(&v516 + 1) = v330;
    LOBYTE(v518) = v51;
    v70 = v370;
    v517 = v370;
    HIBYTE(v518) = v355;
    v519 = v359;
    *&v520 = v340;
    v71 = v344;
    v72 = v345;
    *(&v520 + 1) = v345;
    BYTE5(v521) = v45;
    v73 = v352;
    *v522 = v352;
    v74 = v366;
    v522[13] = v366;
    *&v522[24] = v344;
    v75 = v364;
    v522[37] = v364;
    v76 = v367;
    v522[38] = v367;
    v523 = v50;
    v77 = v362;
    v78 = v363;
    v524 = v363;
    v525 = v362;
    v562 = v343;
    v563 = v357;
    v570 = v630;
    v79 = v327;
    *(v327 + 4) = v343;
    v79 += 2;
    *(v79 + 4) = v357;
    v528 = v351;
    v529 = v356;
    *&v530 = v339;
    *(&v530 + 1) = v59;
    v533 = v53;
    v532 = v55;
    v531 = v54;
    v536 = v397;
    v535 = v396;
    v540 = v401;
    v539 = v400;
    v538 = v399;
    v537 = v398;
    *&v541 = v56;
    *(&v541 + 1) = v57;
    LOBYTE(v543) = v61;
    v542 = v62;
    *&v545 = v63;
    *(&v545 + 1) = v58;
    LOBYTE(v547) = v64;
    v546 = v65;
    *&v549 = v31;
    *(&v549 + 1) = v66;
    LOBYTE(v551) = v67;
    v550 = v46;
    *&v553 = v68;
    *(&v553 + 1) = v69;
    LOBYTE(v555) = v334;
    v554 = v70;
    *&v557 = v60;
    *(&v557 + 1) = v72;
    BYTE5(v558) = v354;
    *v559 = v73;
    v559[13] = v74;
    *&v559[24] = v71;
    v559[37] = v75;
    v559[38] = v76;
    *&v561 = v78;
    *(&v561 + 1) = v77;
    *&v566 = v339;
    *(&v566 + 1) = v59;
    v569 = v443;
    v568 = v442;
    v567 = v441;
    sub_22F18A748(&v498, &v461);
    sub_22F18A780(&v535);
    v373 = v500;
    v374 = v501;
    v375 = v502;
    v376 = v503;
    v371 = v498;
    v372 = v499;
    v80 = *v79;
    v81 = *(v79 + 4);
    v82 = *(v327 + 21);
    v463 = v500;
    v464 = v501;
    v465 = v502;
    v466 = v503;
    v461 = v498;
    v462 = v499;
    v467 = v504;
    v469 = v506;
    v468 = v505;
    v471 = v508;
    v473 = v510;
    v472 = v509;
    v475 = v512;
    v477 = v514;
    v476 = v513;
    v479 = v516;
    v481 = v518;
    v480 = v517;
    *&v485[31] = *&v522[31];
    *&v485[16] = *&v522[16];
    *v485 = *v522;
    v483 = v520;
    v484 = v521;
    v83 = v322;
    *v322 = *v327;
    *(v83 + 20) = v81;
    *(v83 + 4) = v80;
    *(v83 + 21) = v82;
    v497 = v534;
    v496 = v533;
    v495 = v532;
    v493 = v530;
    v494 = v531;
    sub_22F18A748(&v498, &v418);
    sub_22F18A780(&v461);
    v49 = v342;
    v51 = v334;
    v45 = v354;
    v50 = v349;
    v52 = v357;
    v48 = v351;
    v46 = v346;
    LOBYTE(v31) = v332;
    v47 = v333;
  }

  *(&v558 + 6) = v637;
  *&v559[14] = v633;
  LODWORD(v558) = v639;
  BYTE4(v558) = v640;
  HIWORD(v558) = v638;
  *&v559[8] = v635;
  v559[12] = v636;
  *&v559[22] = v634;
  v559[36] = v632;
  *&v559[32] = v631;
  v570 = v630;
  v314 = &v432;
  v537 = v643;
  v538 = v644;
  v539 = v645;
  v540 = v646;
  v535 = v641;
  v536 = v642;
  *&v541 = v336;
  *(&v541 + 1) = v335;
  v542 = v365;
  LOBYTE(v543) = v353;
  HIBYTE(v543) = v368;
  v544 = v49;
  *&v545 = v347;
  *(&v545 + 1) = v337;
  v546 = v369;
  LOBYTE(v547) = v358;
  HIBYTE(v547) = v31;
  v548 = v361;
  *&v549 = v348;
  *(&v549 + 1) = v341;
  v550 = v46;
  v84 = v350;
  LOBYTE(v551) = v350;
  HIBYTE(v551) = v47;
  v552 = v360;
  v86 = v330;
  v85 = v331;
  *&v553 = v331;
  *(&v553 + 1) = v330;
  v87 = v370;
  v554 = v370;
  LOBYTE(v555) = v51;
  HIBYTE(v555) = v355;
  v556 = v359;
  *&v557 = v340;
  *(&v557 + 1) = v345;
  BYTE5(v558) = v45;
  v88 = v352;
  *v559 = v352;
  v89 = v366;
  v559[13] = v366;
  *&v559[24] = v344;
  v90 = v364;
  v559[37] = v364;
  v91 = v367;
  v559[38] = v367;
  v560 = v50;
  *&v561 = v363;
  *(&v561 + 1) = v362;
  v562 = v343;
  v563 = v52;
  v564 = v48;
  v565 = v356;
  *&v566 = v339;
  *(&v566 + 1) = v338;
  v569 = v629;
  v568 = v628;
  v567 = v627;
  v92 = sub_22F19193C(&v535);
  v93 = v87;
  v94 = v88;
  v95 = v90;
  v96 = v358;
  v97 = v84;
  v98 = v341;
  *&v370 = v87;
  LODWORD(v367) = v91;
  if (v92 == 1)
  {
    v99 = v85;
    v325 = 0;
    v324 = 1;
    v326 = 1;
    v327 = 0;
    v100 = v365;
    v101 = v353;
    v102 = v336;
    v103 = v342;
  }

  else
  {
    v104 = v89;
    v105 = v365;
    v106 = v353;
    if (v559[38])
    {
      v326 = 1;
      v327 = 0;
      v107 = v355;
      v108 = v368;
      v109 = v361;
      v110 = v360;
      v111 = v359;
      v112 = v348;
    }

    else
    {
      v107 = v355;
      v108 = v368;
      v109 = v361;
      v110 = v360;
      v112 = v348;
      if (BYTE5(v558))
      {
        v327 = 0;
        v113 = 1;
      }

      else
      {
        v327 = v557;
        v113 = DWORD1(v557) & 1;
      }

      v326 = v113;
      v111 = v359;
    }

    LODWORD(v449) = v639;
    BYTE4(v449) = v640;
    WORD4(v457) = v638;
    *&v457 = v637;
    v455 = v635;
    v456 = v636;
    v453 = v633;
    v454 = v634;
    v451 = v631;
    v452 = v632;
    LOWORD(v393) = v630;
    BYTE4(v484) = v640;
    LODWORD(v484) = v639;
    HIWORD(v484) = v638;
    *(&v484 + 6) = v637;
    v485[12] = v636;
    *&v485[8] = v635;
    *&v485[22] = v634;
    *&v485[14] = v633;
    *&v485[32] = v631;
    v485[36] = v632;
    v497 = v630;
    HIBYTE(v506) = v108 & 1;
    HIBYTE(v510) = v332 & 1;
    HIBYTE(v514) = v333 & 1;
    HIBYTE(v518) = v107 & 1;
    LODWORD(v521) = v639;
    BYTE4(v521) = v640;
    *(&v521 + 6) = v637;
    HIWORD(v521) = v638;
    *&v522[8] = v635;
    v522[12] = v636;
    *&v522[22] = v634;
    *&v522[14] = v633;
    v522[36] = v632;
    *&v522[32] = v631;
    v528 = v351 & 1;
    v373 = v643;
    v374 = v644;
    v375 = v645;
    v376 = v646;
    v371 = v641;
    v372 = v642;
    v114 = v629;
    v392 = v629;
    v115 = v627;
    v116 = v628;
    v390 = v627;
    v391 = v628;
    v463 = v643;
    v464 = v644;
    v465 = v645;
    v466 = v646;
    v461 = v641;
    v462 = v642;
    v117 = v335;
    v118 = v336;
    *&v467 = v336;
    *(&v467 + 1) = v335;
    LOBYTE(v469) = v353;
    v468 = v365;
    HIBYTE(v469) = v108;
    v470 = v342;
    v120 = v346;
    v119 = v347;
    *&v471 = v347;
    v121 = v337;
    *(&v471 + 1) = v337;
    LOBYTE(v473) = v358;
    v122 = v369;
    v472 = v369;
    HIBYTE(v473) = v332;
    v474 = v109;
    *&v475 = v112;
    v123 = v341;
    *(&v475 + 1) = v341;
    LOBYTE(v477) = v97;
    v476 = v346;
    HIBYTE(v477) = v333;
    v478 = v110;
    v124 = v330;
    v99 = v331;
    *&v479 = v331;
    *(&v479 + 1) = v330;
    v125 = v334;
    LOBYTE(v481) = v334;
    v480 = v87;
    HIBYTE(v481) = v107;
    v482 = v111;
    v127 = v343;
    v126 = v344;
    v526 = v343;
    v527 = v357;
    v534 = v630;
    v128 = v340;
    *&v483 = v340;
    v129 = v345;
    *(&v483 + 1) = v345;
    v130 = v97;
    v131 = v354;
    BYTE5(v484) = v354;
    *v485 = v94;
    v485[13] = v104;
    *&v485[24] = v344;
    v485[37] = v95;
    v132 = v367;
    v485[38] = v367;
    v486 = v349;
    LODWORD(v364) = v95;
    v134 = v362;
    v133 = v363;
    v487 = v363;
    v488 = v362;
    v135 = v322;
    *(v322 + 20) = v357;
    *(v135 + 4) = v127;
    v491 = v351;
    v492 = v356;
    *&v493 = v339;
    *(&v493 + 1) = v338;
    v496 = v114;
    v495 = v116;
    v494 = v115;
    v499 = v372;
    v498 = v371;
    v503 = v376;
    v502 = v375;
    v501 = v374;
    v500 = v373;
    *&v504 = v118;
    *(&v504 + 1) = v117;
    v101 = v106;
    LOBYTE(v506) = v106;
    v505 = v105;
    *&v508 = v119;
    *(&v508 + 1) = v121;
    LOBYTE(v510) = v96;
    v509 = v122;
    *&v512 = v112;
    v86 = v124;
    v98 = v123;
    *(&v512 + 1) = v123;
    LOBYTE(v514) = v130;
    v513 = v120;
    *&v516 = v99;
    *(&v516 + 1) = v124;
    LOBYTE(v518) = v125;
    v517 = v370;
    *&v520 = v128;
    *(&v520 + 1) = v129;
    BYTE5(v521) = v131;
    *v522 = v94;
    v522[13] = v104;
    *&v522[24] = v126;
    v522[37] = v364;
    v522[38] = v132;
    v524 = v133;
    v525 = v134;
    *&v530 = v339;
    *(&v530 + 1) = v338;
    v533 = v392;
    v532 = v391;
    v531 = v390;
    sub_22F18A748(&v461, &v418);
    sub_22F18A780(&v498);
    if (v132 & 1) != 0 || (v131)
    {
      v325 = 0;
      v324 = 1;
    }

    else
    {
      v324 = DWORD1(v345) & 1;
      v325 = v345;
    }

    v103 = v342;
    v102 = v336;
    v443 = v463;
    v444 = v464;
    v445 = v465;
    v446 = v466;
    v441 = v461;
    v442 = v462;
    v136 = *(v322 + 4);
    v137 = *(v322 + 20);
    v138 = *(v322 + 21);
    v420 = v463;
    v421 = v464;
    v422 = v465;
    v423 = v466;
    v418 = v461;
    v419 = v462;
    v424 = v467;
    WORD2(v425[0]) = v469;
    LODWORD(v425[0]) = v468;
    *(v425 + 8) = v471;
    WORD6(v425[1]) = v473;
    DWORD2(v425[1]) = v472;
    v426 = v475;
    WORD2(v427[0]) = v477;
    LODWORD(v427[0]) = v476;
    *(v427 + 8) = v479;
    WORD6(v427[1]) = v481;
    DWORD2(v427[1]) = v480;
    *&v430[31] = *&v485[31];
    *&v430[16] = *&v485[16];
    *v430 = *v485;
    v428 = v483;
    v429 = v484;
    v139 = v314;
    *v314 = *v322;
    *(v139 + 20) = v137;
    *(v139 + 4) = v136;
    *(v139 + 21) = v138;
    v440 = v497;
    v439 = v496;
    v438 = v495;
    v436 = v493;
    v437 = v494;
    sub_22F18A748(&v461, &v396);
    sub_22F18A780(&v418);
    v93 = v370;
    v96 = v358;
    v97 = v350;
    v100 = v365;
  }

  *(&v521 + 6) = v637;
  *&v522[14] = v633;
  LODWORD(v521) = v639;
  BYTE4(v521) = v640;
  HIWORD(v521) = v638;
  *&v522[8] = v635;
  v522[12] = v636;
  *&v522[22] = v634;
  v522[36] = v632;
  *&v522[32] = v631;
  v534 = v630;
  v322 = v410;
  v500 = v643;
  v501 = v644;
  v502 = v645;
  v503 = v646;
  v498 = v641;
  v499 = v642;
  *&v504 = v102;
  *(&v504 + 1) = v335;
  v505 = v100;
  LOBYTE(v506) = v101;
  v140 = v368;
  HIBYTE(v506) = v368;
  v507 = v103;
  *&v508 = v347;
  *(&v508 + 1) = v337;
  v509 = v369;
  LOBYTE(v510) = v96;
  HIBYTE(v510) = v332;
  v511 = v361;
  *&v512 = v348;
  *(&v512 + 1) = v98;
  v513 = v346;
  LOBYTE(v514) = v97;
  HIBYTE(v514) = v333;
  v515 = v360;
  *&v516 = v99;
  *(&v516 + 1) = v86;
  v517 = v93;
  LOBYTE(v518) = v334;
  v141 = v355;
  HIBYTE(v518) = v355;
  v519 = v359;
  *&v520 = v340;
  v142 = v344;
  *(&v520 + 1) = v345;
  BYTE5(v521) = v354;
  v143 = v352;
  *v522 = v352;
  v522[13] = v366;
  *&v522[24] = v344;
  v144 = v364;
  v522[37] = v364;
  v145 = v367;
  v522[38] = v367;
  v523 = v349;
  v524 = v363;
  v525 = v362;
  v146 = v343;
  v526 = v343;
  v527 = v357;
  v528 = v351;
  v529 = v356;
  *&v530 = v339;
  *(&v530 + 1) = v338;
  v533 = v629;
  v532 = v628;
  v531 = v627;
  if (sub_22F19193C(&v498) != 1)
  {
    v443 = v643;
    v444 = v644;
    v445 = v645;
    v446 = v646;
    v441 = v641;
    v442 = v642;
    v455 = v639;
    v456 = v640;
    v454 = v638;
    v453 = v637;
    v452 = v636;
    v451 = v635;
    v450 = v634;
    v449 = v633;
    v448 = v632;
    v447 = v631;
    v460 = v630;
    v459 = v629;
    v458 = v628;
    v457 = v627;
    v147 = v353;
    v148 = v341;
    v150 = v330;
    v149 = v331;
    LODWORD(v429) = v639;
    BYTE4(v429) = v640;
    *(&v429 + 6) = v637;
    HIWORD(v429) = v638;
    *&v430[8] = v635;
    v430[12] = v636;
    *&v430[22] = v634;
    *&v430[14] = v633;
    v430[36] = v632;
    *&v430[32] = v631;
    v440 = v630;
    HIBYTE(v469) = v368 & 1;
    HIBYTE(v473) = v332 & 1;
    HIBYTE(v477) = v333 & 1;
    HIBYTE(v481) = v355 & 1;
    LODWORD(v484) = v639;
    BYTE4(v484) = v640;
    *(&v484 + 6) = v637;
    HIWORD(v484) = v638;
    *&v485[8] = v635;
    v485[12] = v636;
    *&v485[22] = v634;
    *&v485[14] = v633;
    v485[36] = v632;
    *&v485[32] = v631;
    v151 = v351;
    v491 = v351 & 1;
    v420 = v643;
    v421 = v644;
    v422 = v645;
    v423 = v646;
    v418 = v641;
    v419 = v642;
    v153 = v335;
    v152 = v336;
    *&v424 = v336;
    *(&v424 + 1) = v335;
    LODWORD(v425[0]) = v365;
    BYTE4(v425[0]) = v353;
    BYTE5(v425[0]) = v368;
    WORD3(v425[0]) = v342;
    *(&v425[0] + 1) = v347;
    v154 = v337;
    *&v425[1] = v337;
    DWORD2(v425[1]) = v369;
    v155 = v356;
    v156 = v358;
    BYTE12(v425[1]) = v358;
    BYTE13(v425[1]) = v332;
    HIWORD(v425[1]) = v361;
    *&v426 = v348;
    *(&v426 + 1) = v341;
    v157 = v346;
    LODWORD(v427[0]) = v346;
    v158 = v350;
    BYTE4(v427[0]) = v350;
    BYTE5(v427[0]) = v333;
    WORD3(v427[0]) = v360;
    *(&v427[0] + 1) = v331;
    *&v427[1] = v330;
    DWORD2(v427[1]) = v370;
    v159 = v334;
    BYTE12(v427[1]) = v334;
    BYTE13(v427[1]) = v355;
    HIWORD(v427[1]) = v359;
    v160 = v340;
    *&v428 = v340;
    v142 = v344;
    v161 = v345;
    *(&v428 + 1) = v345;
    v162 = v354;
    BYTE5(v429) = v354;
    v143 = v352;
    *v430 = v352;
    v163 = v366;
    v430[13] = v366;
    *&v430[24] = v344;
    v144 = v364;
    v430[37] = v364;
    v145 = v367;
    v430[38] = v367;
    v431 = v349;
    v164 = v363;
    v432 = v363;
    v165 = v362;
    v433 = v362;
    v489 = v343;
    v166 = v357;
    v490 = v357;
    v497 = v630;
    v167 = v314;
    v168 = v314;
    *(v314 + 4) = v343;
    v168 += 2;
    *(v168 + 4) = v166;
    LODWORD(v351) = v151;
    v434[5] = v151;
    v435 = v155;
    *&v436 = v339;
    *(&v436 + 1) = v338;
    v439 = v629;
    v438 = v628;
    v437 = v627;
    v462 = v442;
    v461 = v441;
    v466 = v446;
    v465 = v445;
    v464 = v444;
    v463 = v443;
    *&v467 = v152;
    *(&v467 + 1) = v153;
    LOBYTE(v469) = v147;
    v468 = v365;
    *&v471 = v347;
    *(&v471 + 1) = v154;
    LOBYTE(v473) = v156;
    v472 = v369;
    *&v475 = v348;
    *(&v475 + 1) = v148;
    LOBYTE(v477) = v158;
    v476 = v157;
    *&v479 = v149;
    *(&v479 + 1) = v150;
    LOBYTE(v481) = v159;
    v480 = v370;
    *&v483 = v160;
    *(&v483 + 1) = v161;
    BYTE5(v484) = v162;
    *v485 = v143;
    LODWORD(v366) = v163;
    v485[13] = v163;
    *&v485[24] = v142;
    v485[37] = v144;
    v485[38] = v145;
    v487 = v164;
    v488 = v165;
    *&v493 = v339;
    *(&v493 + 1) = v338;
    v496 = v459;
    v495 = v458;
    v494 = v457;
    v141 = v355;
    v140 = v368;
    sub_22F18A748(&v418, &v396);
    sub_22F18A780(&v461);
    v392 = v420;
    v393 = v421;
    v394 = v422;
    v395 = v423;
    v390 = v418;
    v391 = v419;
    v169 = *v168;
    v170 = *(v168 + 4);
    v171 = *(v167 + 21);
    v398 = v420;
    v399 = v421;
    v400 = v422;
    v401 = v423;
    v396 = v418;
    v397 = v419;
    v402 = v424;
    WORD2(v403[0]) = WORD2(v425[0]);
    LODWORD(v403[0]) = v425[0];
    *(v403 + 8) = *(v425 + 8);
    WORD6(v403[1]) = WORD6(v425[1]);
    DWORD2(v403[1]) = DWORD2(v425[1]);
    v404 = v426;
    WORD2(v405[0]) = WORD2(v427[0]);
    LODWORD(v405[0]) = v427[0];
    *(v405 + 8) = *(v427 + 8);
    WORD6(v405[1]) = WORD6(v427[1]);
    DWORD2(v405[1]) = DWORD2(v427[1]);
    *&v408[31] = *&v430[31];
    *&v408[16] = *&v430[16];
    *v408 = *v430;
    v406 = v428;
    v407 = v429;
    v172 = v322;
    *v322 = *v167;
    *(v172 + 20) = v170;
    *(v172 + 4) = v169;
    *(v172 + 21) = v171;
    v417 = v440;
    v416 = v439;
    v415 = v438;
    v413 = v436;
    v414 = v437;
    sub_22F18A748(&v418, &v371);
    sub_22F18A780(&v396);
    v146 = v343;
  }

  *(&v484 + 6) = v637;
  *&v485[14] = v633;
  LODWORD(v484) = v639;
  BYTE4(v484) = v640;
  HIWORD(v484) = v638;
  *&v485[8] = v635;
  v485[12] = v636;
  *&v485[22] = v634;
  v485[36] = v632;
  *&v485[32] = v631;
  v497 = v630;
  v463 = v643;
  v464 = v644;
  v465 = v645;
  v466 = v646;
  v461 = v641;
  v462 = v642;
  *&v467 = v336;
  *(&v467 + 1) = v335;
  v468 = v365;
  LOBYTE(v469) = v353;
  LODWORD(v368) = v140;
  HIBYTE(v469) = v140;
  v470 = v342;
  *&v471 = v347;
  *(&v471 + 1) = v337;
  v472 = v369;
  LOBYTE(v473) = v358;
  HIBYTE(v473) = v332;
  v474 = v361;
  *&v475 = v348;
  *(&v475 + 1) = v341;
  v476 = v346;
  LOBYTE(v477) = v350;
  HIBYTE(v477) = v333;
  v478 = v360;
  *&v479 = v331;
  *(&v479 + 1) = v330;
  v480 = v370;
  LOBYTE(v481) = v334;
  v173 = v141;
  HIBYTE(v481) = v141;
  v482 = v359;
  *&v483 = v340;
  *(&v483 + 1) = v345;
  BYTE5(v484) = v354;
  *v485 = v143;
  v174 = v366;
  v485[13] = v366;
  *&v485[24] = v142;
  v485[37] = v144;
  v485[38] = v145;
  v486 = v349;
  v487 = v363;
  v488 = v362;
  v489 = v146;
  v490 = v357;
  v491 = v351;
  v492 = v356;
  *&v493 = v339;
  *(&v493 + 1) = v338;
  v496 = v629;
  v495 = v628;
  v494 = v627;
  if (sub_22F19193C(&v461) != 1)
  {
    v175 = v174;
    v176 = v142;
    v364 = v385;
    v355 = v434;
    v443 = v643;
    v444 = v644;
    v445 = v645;
    v446 = v646;
    v441 = v641;
    v442 = v642;
    v455 = v639;
    v456 = v640;
    v454 = v638;
    v453 = v637;
    v452 = v636;
    v451 = v635;
    v450 = v634;
    v449 = v633;
    v448 = v632;
    v447 = v631;
    v460 = v630;
    v459 = v629;
    v458 = v628;
    v457 = v627;
    v177 = v173;
    v179 = v362;
    v178 = v363;
    v180 = v348;
    WORD3(v403[0]) = v342;
    HIWORD(v403[1]) = v361;
    WORD3(v405[0]) = v360;
    HIWORD(v405[1]) = v359;
    v409 = v349;
    v412 = v356;
    LODWORD(v407) = v639;
    BYTE4(v407) = v640;
    *(&v407 + 6) = v637;
    HIWORD(v407) = v638;
    *&v408[8] = v635;
    v408[12] = v636;
    *&v408[22] = v634;
    *&v408[14] = v633;
    v408[36] = v632;
    *&v408[32] = v631;
    v417 = v630;
    *&v424 = v336;
    *&v402 = v336;
    *(&v402 + 1) = v335;
    *(&v424 + 1) = v335;
    BYTE4(v403[0]) = v353;
    BYTE4(v425[0]) = v353;
    LODWORD(v403[0]) = v365;
    LODWORD(v425[0]) = v365;
    BYTE5(v403[0]) = v368;
    BYTE5(v425[0]) = v368 & 1;
    *(&v403[0] + 1) = v347;
    *(&v425[0] + 1) = v347;
    v398 = v643;
    v399 = v644;
    v400 = v645;
    v401 = v646;
    v396 = v641;
    v397 = v642;
    *&v403[1] = v337;
    v181 = v369;
    DWORD2(v403[1]) = v369;
    v182 = v358;
    BYTE12(v403[1]) = v358;
    v184 = v332;
    v183 = v333;
    BYTE13(v403[1]) = v332;
    *&v404 = v348;
    v185 = v341;
    *(&v404 + 1) = v341;
    v186 = v346;
    LODWORD(v405[0]) = v346;
    v187 = v350;
    BYTE4(v405[0]) = v350;
    BYTE5(v405[0]) = v333;
    v189 = v330;
    v188 = v331;
    *(&v405[0] + 1) = v331;
    *&v405[1] = v330;
    v190 = v370;
    DWORD2(v405[1]) = v370;
    v191 = v334;
    BYTE12(v405[1]) = v334;
    BYTE13(v405[1]) = v177;
    v192 = v340;
    *&v406 = v340;
    v193 = v345;
    *(&v406 + 1) = v345;
    v194 = v354;
    BYTE5(v407) = v354;
    *v408 = v143;
    v408[13] = v175;
    *&v408[24] = v142;
    v408[37] = v144;
    v408[38] = v145;
    v410[0] = v363;
    v410[1] = v362;
    *&v425[1] = v337;
    v195 = v144;
    v196 = v322;
    v197 = v343;
    *(v322 + 4) = v343;
    v196 += 2;
    v198 = v357;
    *(v196 + 4) = v357;
    v199 = v351;
    v411 = v351;
    v200 = v339;
    *&v413 = v339;
    v201 = v179;
    v202 = v338;
    *(&v413 + 1) = v338;
    v416 = v629;
    v415 = v628;
    v414 = v627;
    v419 = v442;
    v418 = v441;
    v423 = v446;
    v422 = v445;
    v421 = v444;
    v420 = v443;
    BYTE12(v425[1]) = v182;
    DWORD2(v425[1]) = v181;
    BYTE13(v425[1]) = v184 & 1;
    *&v426 = v180;
    *(&v426 + 1) = v185;
    BYTE4(v427[0]) = v187;
    LODWORD(v427[0]) = v186;
    BYTE5(v427[0]) = v183 & 1;
    *(&v427[0] + 1) = v188;
    *&v427[1] = v189;
    BYTE12(v427[1]) = v191;
    DWORD2(v427[1]) = v190;
    BYTE13(v427[1]) = v177 & 1;
    *&v428 = v192;
    *(&v428 + 1) = v193;
    LODWORD(v429) = v455;
    BYTE4(v429) = v456;
    BYTE5(v429) = v194;
    *(&v429 + 6) = v453;
    HIWORD(v429) = v454;
    *v430 = v143;
    *&v430[8] = v451;
    v430[12] = v452;
    v430[13] = v175;
    *&v430[22] = v450;
    *&v430[14] = v449;
    *&v430[24] = v176;
    v430[36] = v448;
    *&v430[32] = v447;
    v430[37] = v195;
    v430[38] = v367;
    v432 = v178;
    v433 = v201;
    v203 = v355;
    *v355 = v197;
    *(v203 + 4) = v198;
    *(v203 + 5) = v199 & 1;
    *&v436 = v200;
    *(&v436 + 1) = v202;
    v440 = v460;
    v439 = v459;
    v438 = v458;
    v437 = v457;
    sub_22F18A748(&v396, &v371);
    sub_22F18A780(&v418);
    v392 = v398;
    v393 = v399;
    v394 = v400;
    v395 = v401;
    v390 = v396;
    v391 = v397;
    v204 = *v196;
    v205 = *(v196 + 4);
    v206 = *(v322 + 21);
    v373 = v398;
    v374 = v399;
    v375 = v400;
    v376 = v401;
    v371 = v396;
    v372 = v397;
    v377 = v402;
    WORD2(v378[0]) = WORD2(v403[0]);
    LODWORD(v378[0]) = v403[0];
    *(v378 + 8) = *(v403 + 8);
    WORD6(v378[1]) = WORD6(v403[1]);
    DWORD2(v378[1]) = DWORD2(v403[1]);
    v379 = v404;
    WORD2(v380[0]) = WORD2(v405[0]);
    LODWORD(v380[0]) = v405[0];
    *(v380 + 8) = *(v405 + 8);
    WORD6(v380[1]) = WORD6(v405[1]);
    DWORD2(v380[1]) = DWORD2(v405[1]);
    *&v384[15] = *&v408[31];
    v383 = *v408;
    *v384 = *&v408[16];
    v381 = v406;
    v382 = v407;
    v207 = v364;
    *v364 = *v322;
    *(v207 + 20) = v205;
    *(v207 + 4) = v204;
    *(v207 + 21) = v206;
    v389 = v417;
    v387 = v415;
    v388 = v416;
    *&v385[24] = v413;
    v386 = v414;
    sub_22F18A780(&v371);
  }

  LODWORD(v363) = 1056293519;
  LOBYTE(v390) = 0;
  LOBYTE(v457) = 0;
  v208 = 0.0;
  v209 = v315;
  if (v315 == 1)
  {
    goto LABEL_59;
  }

  if (v323 < 2)
  {
    v209 = 1;
LABEL_59:
    v360 = v209;
    v358 = 0;
    v359 = 0;
    v361 = 0;
    v362 = 0;
    v213 = 0;
    v210 = 0;
    goto LABEL_113;
  }

  v210 = *(v323 + 16);
  if (!v210)
  {
    v358 = 0;
    v359 = 0;
    v361 = 0;
    v362 = 0;
    v213 = 0;
    goto LABEL_61;
  }

  v211 = *(v323 + 48);
  v418 = *(v323 + 32);
  v419 = v211;
  v212 = *(v323 + 64);
  v421 = *(v323 + 80);
  v420 = v212;
  v422 = *(v323 + 96);
  if (v418 == 1)
  {
    v358 = 0;
    v359 = 0;
    v361 = 0;
    v362 = 0;
    v213 = 0;
    v210 = 0;
LABEL_61:
    v360 = 1;
    goto LABEL_113;
  }

  v214 = v421;
  if (v421)
  {
    v215 = *(v421 + 16);
    if (v215)
    {
      sub_22F1918D4(&v418, &v396);
      *&v396 = MEMORY[0x277D84F90];

      sub_22F1464D4(0, v215, 0);
      v216 = v396;
      *&v370 = v214;
      v217 = (v214 + 56);
      do
      {
        v218 = *(v217 - 6);
        v219 = *(v217 - 2);
        v220 = *(v217 - 2);
        v221 = *v217;
        *&v396 = v216;
        v223 = *(v216 + 16);
        v222 = *(v216 + 24);

        if (v223 >= v222 >> 1)
        {
          sub_22F1464D4((v222 > 1), v223 + 1, 1);
          v216 = v396;
        }

        *(v216 + 16) = v223 + 1;
        v224 = v216 + 24 * v223;
        *(v224 + 32) = v219;
        *(v224 + 40) = v218;
        *(v224 + 44) = v220;
        *(v224 + 48) = v221;
        v217 += 4;
        --v215;
      }

      while (v215);
      v365 = v216;
    }

    else
    {
      sub_22F1918D4(&v418, &v396);
      v365 = MEMORY[0x277D84F90];
    }

    v225 = *(&v421 + 1);
    v226 = *(&v422 + 1);
    v227 = v422;
  }

  else
  {
    v225 = *(&v421 + 1);
    v226 = *(&v422 + 1);
    v227 = v422;
    sub_22F1918D4(&v418, &v396);
    v365 = 0;
  }

  sub_22F1918D4(&v418, &v396);

  sub_22F18B0F4(v227, v226);
  if (v225)
  {
    v228 = *(v225 + 16);
    if (v228)
    {
      *&v396 = MEMORY[0x277D84F90];
      sub_22F1464B4(0, v228, 0);
      v229 = v396;
      *&v370 = v225;
      v230 = (v225 + 48);
      do
      {
        v231 = *(v230 - 2);
        v232 = *(v230 - 2);
        v233 = *v230;
        *&v396 = v229;
        v235 = *(v229 + 16);
        v234 = *(v229 + 24);

        if (v235 >= v234 >> 1)
        {
          sub_22F1464B4((v234 > 1), v235 + 1, 1);
          v229 = v396;
        }

        *(v229 + 16) = v235 + 1;
        v236 = v229 + 24 * v235;
        *(v236 + 32) = v231;
        *(v236 + 40) = v232;
        *(v236 + 48) = v233;
        v230 += 3;
        --v228;
      }

      while (v228);
      v364 = v229;
    }

    else
    {

      v364 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v364 = 0;
  }

  v238 = *(&v422 + 1);
  v237 = v422;
  sub_22F1918D4(&v418, &v396);
  sub_22F13BB74(v237, v238);

  sub_22F18B0F4(v237, v238);
  if (v237)
  {

    v361 = v238;
    sub_22F18B0F4(v237, v238);
  }

  else
  {
    v361 = 0;
  }

  v239 = v422;
  v240 = v418;
  sub_22F1918D4(&v418, &v396);

  sub_22F18B0F4(v239, *(&v239 + 1));
  v208 = 0.0;
  if (v240)
  {
    v241 = v237;
    v242 = *(v240 + 16);
    if (!v242)
    {

      v360 = 1;
LABEL_96:
      v237 = v241;
      goto LABEL_97;
    }

    if (v242 >= 8)
    {
      v243 = v242 & 0x7FFFFFFFFFFFFFF8;
      v244 = v240 + 48;
      v245 = v242 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v208 = (((((((v208 + COERCE_FLOAT(*(v244 - 16))) + COERCE_FLOAT(HIDWORD(*(v244 - 16)))) + COERCE_FLOAT(*(v244 - 8))) + COERCE_FLOAT(HIDWORD(*(v244 - 16)))) + COERCE_FLOAT(*v244)) + COERCE_FLOAT(HIDWORD(*v244))) + COERCE_FLOAT(*(v244 + 8))) + COERCE_FLOAT(HIDWORD(*v244));
        v244 += 32;
        v245 -= 8;
      }

      while (v245);
      if (v242 == v243)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v243 = 0;
    }

    v246 = v242 - v243;
    v247 = (v240 + 4 * v243 + 32);
    do
    {
      v248 = *v247++;
      v208 = v208 + v248;
      --v246;
    }

    while (v246);
LABEL_95:

    v360 = 0;
    v208 = v208 / v242;
    goto LABEL_96;
  }

  v360 = 1;
LABEL_97:
  v249 = v420;
  v250 = DWORD2(v420) | (BYTE12(v420) << 32);
  v251 = v422;
  if (v419)
  {
    v252 = *(v419 + 16);
    if (v252)
    {
      if (v252 >= 8)
      {
        v253 = v252 & 0x7FFFFFFFFFFFFFF8;
        v255 = v419 + 48;
        v254 = 0.0;
        v256 = v252 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v254 = (((((((v254 + COERCE_FLOAT(*(v255 - 16))) + COERCE_FLOAT(HIDWORD(*(v255 - 16)))) + COERCE_FLOAT(*(v255 - 8))) + COERCE_FLOAT(HIDWORD(*(v255 - 16)))) + COERCE_FLOAT(*v255)) + COERCE_FLOAT(HIDWORD(*v255))) + COERCE_FLOAT(*(v255 + 8))) + COERCE_FLOAT(HIDWORD(*v255));
          v255 += 32;
          v256 -= 8;
        }

        while (v256);
        if (v252 == v253)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v253 = 0;
        v254 = 0.0;
      }

      v257 = v252 - v253;
      v258 = (v419 + 4 * v253 + 32);
      do
      {
        v259 = *v258++;
        v254 = v254 + v259;
        --v257;
      }

      while (v257);
LABEL_106:
      *&v363 = v254 / v252;
    }
  }

  v362 = v237;

  sub_22F18B0F4(v251, *(&v251 + 1));
  v260 = v250 & 0x1FFFFFFFFLL;
  if (v249)
  {
    v261 = v249;
  }

  else
  {
    v261 = 0;
  }

  if (!v249)
  {
    v260 = 0;
  }

  v358 = v260;
  v359 = v261;
  v213 = v364;
  v210 = v365;
LABEL_113:
  v262 = *&v651[288];
  v364 = v213;
  v365 = v210;
  if (*&v651[288] >= 2uLL)
  {
    v263 = *(*&v651[288] + 16);
    v264 = MEMORY[0x277D84F90];
    if (v263)
    {
      *&v418 = MEMORY[0x277D84F90];
      sub_22F146494(0, v263, 0);
      v264 = v418;
      v265 = (v262 + 104);
      do
      {
        v266 = *(v265 - 8);
        v368 = *(v265 - 9);
        v267 = *(v265 - 7);
        v268 = *(v265 - 3);
        v369 = *(v265 - 2);
        v370 = v268;
        v269 = *(v265 - 2);
        v270 = *(v265 - 1);
        LODWORD(v367) = *v265;
        v272 = *(v264 + 16);
        v271 = *(v264 + 24);
        *&v418 = v264;
        v366 = v266;
        v273 = v264;

        v264 = v273;
        if (v272 >= v271 >> 1)
        {
          sub_22F146494((v271 > 1), v272 + 1, 1);
          v264 = v418;
        }

        *(v264 + 16) = v272 + 1;
        v274 = v264 + 80 * v272;
        v275 = v366;
        *(v274 + 32) = v368;
        *(v274 + 40) = v275;
        *(v274 + 48) = v267;
        v276 = v370;
        *(v274 + 72) = v369;
        *(v274 + 56) = v276;
        *(v274 + 88) = v269;
        *(v274 + 96) = v270;
        *(v274 + 104) = v367;
        v265 += 80;
        --v263;
      }

      while (v263);
    }

    *&v370 = v264;
  }

  else
  {
    *&v370 = 0;
  }

  v428 = *&v651[208];
  v429 = *&v651[224];
  *v430 = *&v651[240];
  v425[1] = *&v651[144];
  v426 = *&v651[160];
  v427[1] = *&v651[192];
  v427[0] = *&v651[176];
  v422 = *&v651[80];
  v423 = *&v651[96];
  v425[0] = *&v651[128];
  v424 = *&v651[112];
  v418 = *&v651[16];
  v419 = *&v651[32];
  v421 = *&v651[64];
  v420 = *&v651[48];
  if (sub_22F1E1664(&v418) == 1)
  {
    v277 = 0;
  }

  else
  {
    v277 = *&v425[0];
  }

  static MusicKitCatalogSong.unitag(withTag:namespace:fromUnitags:)(0x6972706F72707041, 0xEB00000000657461, 0xD000000000000015, 0x800000022F7986D0, v277, &v396);
  if (v397 == 1)
  {
    v368 = 1;
    *&v369 = 0;
  }

  else
  {
    v368 = DWORD1(v396) & 1;
    *&v369 = v396;
    sub_22F2C08EC(v396, *(&v396 + 1), v397);
  }

  static MusicKitCatalogSong.unitag(withTag:namespace:fromUnitags:)(0x6F72707041746F4ELL, 0xEE00657461697270, 0xD000000000000015, 0x800000022F7986D0, v277, &v441);

  if (v442 == 1)
  {
    v366 = 1;
    v367 = 0;
  }

  else
  {
    v366 = DWORD1(v441) & 1;
    v367 = v441;
    sub_22F2C08EC(v441, *(&v441 + 1), v442);
  }

  v406 = *&v651[208];
  v407 = *&v651[224];
  *v408 = *&v651[240];
  v403[1] = *&v651[144];
  v404 = *&v651[160];
  v405[1] = *&v651[192];
  v405[0] = *&v651[176];
  v400 = *&v651[80];
  v401 = *&v651[96];
  v403[0] = *&v651[128];
  v402 = *&v651[112];
  v396 = *&v651[16];
  v397 = *&v651[32];
  v399 = *&v651[64];
  v398 = *&v651[48];
  if (sub_22F1E1664(&v396) == 1)
  {
    LODWORD(v357) = 0;
    v354 = 0;
    v356 = 0;
    v278 = 0;
    v351 = 0u;
    v352 = 0u;
    LODWORD(v353) = 1;
  }

  else
  {
    v279 = *(&v403[0] + 1);
    v280 = *&v403[1];
    v281 = *&v651[40];
    v282 = *&v651[88];
    v283 = *&v651[96];
    v356 = *&v651[104];
    v278 = *&v651[112];
    LODWORD(v357) = *&v651[120];
    LODWORD(v353) = v651[124];
    v354 = *&v651[232];
    if (*&v651[40])
    {
      v284 = *&v651[56];
      v349 = *&v651[32];
      v350 = *&v651[48];

      *&v285 = v282;
      *(&v285 + 1) = v283;
      v351 = v285;
      *&v285 = v279;
      *(&v285 + 1) = v280;
      v352 = v285;
      goto LABEL_138;
    }

    *&v286 = v282;
    *(&v286 + 1) = v283;
    v351 = v286;
    *&v286 = v279;
    *(&v286 + 1) = v280;
    v352 = v286;
  }

  v381 = *&v651[208];
  v382 = *&v651[224];
  v383 = *&v651[240];
  v378[1] = *&v651[144];
  v379 = *&v651[160];
  v380[0] = *&v651[176];
  v380[1] = *&v651[192];
  v375 = *&v651[80];
  v376 = *&v651[96];
  v377 = *&v651[112];
  v378[0] = *&v651[128];
  v371 = *&v651[16];
  v372 = *&v651[32];
  v373 = *&v651[48];
  v374 = *&v651[64];
  if (sub_22F1E1664(&v371) == 1)
  {
    v355 = v278;
    v349 = 0;
    v350 = 0;
    v284 = 0;
    v281 = 0;
    goto LABEL_139;
  }

  v281 = 0;
  v349 = 0;
  v284 = *(&v373 + 1);
  v350 = v373;
LABEL_138:
  v355 = v278;

LABEL_139:
  v287 = *v651;
  v288 = *&v651[8];
  v289 = v318;
  sub_22F203FB4(v318, v328);

  v290 = v329;
  sub_22F73F680();
  sub_22F2C0884(v289);
  v291 = sub_22F73F690();
  (*(*(v291 - 8) + 56))(v290, 0, 1, v291);
  v381 = *&v651[208];
  v382 = *&v651[224];
  v383 = *&v651[240];
  v378[1] = *&v651[144];
  v379 = *&v651[160];
  v380[0] = *&v651[176];
  v380[1] = *&v651[192];
  v375 = *&v651[80];
  v376 = *&v651[96];
  v377 = *&v651[112];
  v378[0] = *&v651[128];
  v371 = *&v651[16];
  v372 = *&v651[32];
  v373 = *&v651[48];
  v374 = *&v651[64];
  if (sub_22F1E1664(&v371) == 1)
  {
    v292 = 0;
    v293 = 0;
    v294 = 2;
  }

  else
  {
    v294 = v382;
    v292 = *&v651[240];
    v293 = *&v651[248];
  }

  v295 = v361;
  sub_22F18C524(v651);
  v296 = v321;
  *v321 = v287;
  v296[1] = v288;
  v297 = v351;
  *(v296 + 1) = v352;
  *(v296 + 2) = v297;
  v298 = v355;
  v296[6] = v356;
  v296[7] = v298;
  v296[8] = v354;
  LOBYTE(v298) = v319;
  *(v296 + 72) = v320;
  *(v296 + 10) = v21;
  *(v296 + 88) = v298;
  *(v296 + 23) = v357;
  *(v296 + 96) = v353 & 1;
  v299 = v350;
  v296[13] = v349;
  v296[14] = v281;
  v296[15] = v299;
  v296[16] = v284;
  v300 = v316;
  v296[17] = v317;
  v296[18] = v300;
  v301 = type metadata accessor for Song(0);
  sub_22F1207AC(v328, v296 + v301[15], &qword_27DAB0C90, &unk_22F785B70);
  v302 = v296 + v301[26];
  v303 = v364;
  *v302 = v365;
  *(v302 + 1) = v303;
  *(v302 + 2) = v362;
  *(v302 + 3) = v295;
  v304 = v358;
  *(v302 + 4) = v359;
  v302[44] = BYTE4(v304);
  *(v302 + 10) = v304;
  result = sub_22F1207AC(v329, v296 + v301[16], &qword_27DAB0920, &qword_22F770B20);
  *(v296 + v301[17]) = v370;
  v306 = v296 + v301[18];
  *v306 = v363;
  v306[4] = 0;
  v307 = (v296 + v301[19]);
  *v307 = v208;
  *(v307 + 4) = v360;
  v308 = v296 + v301[20];
  v309 = v368;
  *v308 = v369;
  v308[4] = v309;
  v310 = v296 + v301[21];
  *v310 = v367;
  v310[4] = v366;
  v311 = v296 + v301[22];
  *v311 = v325;
  v311[4] = v324;
  v312 = v296 + v301[23];
  *v312 = v327;
  v312[4] = v326;
  *(v296 + v301[24]) = v294;
  v313 = (v296 + v301[25]);
  *v313 = v292;
  v313[1] = v293;
  return result;
}

double sub_22F2C0840(uint64_t a1)
{
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 288) = 2;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 338) = 0u;
  return result;
}

uint64_t sub_22F2C0884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_22F2C08EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

id static PhotosMusicResources.bundle()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v1 = sub_22F740DF0();
  v2 = [v0 initWithPath_];

  if (!v2)
  {
    sub_22F1DF1D0();
    swift_allocError();
    *v3 = 0xD00000000000002DLL;
    *(v3 + 8) = 0x800000022F791680;
    *(v3 + 16) = 0;
    swift_willThrow();
  }

  return v2;
}

void static PhotosMusicResources.exportableAdamIDsURL()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v1 = sub_22F740DF0();
  v2 = [v0 initWithPath_];

  if (v2)
  {
    v3 = sub_22F740DF0();
    v4 = sub_22F740DF0();
    v5 = [v2 URLForResource:v3 withExtension:v4];

    if (v5)
    {
      sub_22F73F430();
    }

    else
    {
      sub_22F1DF1D0();
      swift_allocError();
      *v7 = 0xD000000000000016;
      *(v7 + 8) = 0x800000022F798710;
      *(v7 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_22F1DF1D0();
    swift_allocError();
    *v6 = 0xD00000000000002DLL;
    *(v6 + 8) = 0x800000022F791680;
    *(v6 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t sub_22F2C0BA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F2C0BEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_22F2C0C50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v10 = sub_22F740B90();
  __swift_project_value_buffer(v10, qword_2810B4CE0);

  v11 = sub_22F740B70();
  v12 = sub_22F7415F0();

  if (os_log_type_enabled(v11, v12))
  {
    v34 = v7;
    v13 = swift_slowAlloc();
    v14 = v9;
    v15 = swift_slowAlloc();
    v36 = v15;
    *v13 = 136315138;
    *(v13 + 4) = sub_22F145F20(a1, a2, &v36);
    _os_log_impl(&dword_22F0FC000, v11, v12, "Starting birthday grounding for person %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v16 = v15;
    v9 = v14;
    MEMORY[0x2319033A0](v16, -1, -1);
    v7 = v34;
    MEMORY[0x2319033A0](v13, -1, -1);
  }

  v17 = objc_opt_self();
  v18 = sub_22F740DF0();
  v35 = [v17 personNodesForLocalIdentifier:v18 inGraph:v8];

  v36 = v7;
  v37 = v8;
  v38 = v9;
  v19 = sub_22F2C109C(v35, a3);
  if (*(v19 + 2))
  {

    v20 = sub_22F740B70();
    v21 = sub_22F7415F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 134218242;
      *(v22 + 4) = *(v19 + 2);

      *(v22 + 12) = 2080;
      v24 = sub_22F741430();
      v26 = sub_22F145F20(v24, v25, &v36);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_22F0FC000, v20, v21, "Found %ld actual birthday moments = %s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2319033A0](v23, -1, -1);
      MEMORY[0x2319033A0](v22, -1, -1);

      goto LABEL_11;
    }
  }

  else
  {

    v36 = v7;
    v37 = v8;
    v38 = v9;
    v27 = sub_22F2C1AF0(v35, a3);

    v20 = sub_22F740B70();
    v28 = sub_22F7415F0();
    if (os_log_type_enabled(v20, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 134218242;
      *(v29 + 4) = *(v27 + 16);

      *(v29 + 12) = 2080;
      v31 = sub_22F741430();
      v33 = sub_22F145F20(v31, v32, &v36);

      *(v29 + 14) = v33;
      _os_log_impl(&dword_22F0FC000, v20, v28, "Found %ld potential birthday moments = %s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x2319033A0](v30, -1, -1);
      MEMORY[0x2319033A0](v29, -1, -1);

      goto LABEL_11;
    }
  }

LABEL_11:
  sub_22F7407A0();
}

char *sub_22F2C109C(void *a1, uint64_t a2)
{
  v102 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v97 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v97 - v11;
  v13 = sub_22F73F270();
  v106 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v109 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v108 = &v97 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v97 - v18;
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v105 = &v97 - v22;
  v100 = *(v2 + 8);
  v23 = [a1 birthdayMomentNodes];
  v24 = [v23 uuids];

  v101 = sub_22F741420();
  v25 = [a1 firstNode];
  if (!v25)
  {
    goto LABEL_11;
  }

  v26 = v25;
  v27 = [v25 birthdayDateComponents];
  if (v27)
  {
    v28 = v27;
    sub_22F73F1B0();

    v29 = v26;
    v30 = v106;
    v31 = *(v106 + 32);
    v31(v9, v19, v13);
    v32 = *(v30 + 56);
    v32(v9, 0, 1, v13);
    v31(v12, v9, v13);
    v32(v12, 0, 1, v13);
    v33 = v30;
    v26 = v29;
    v34 = (*(v33 + 48))(v12, 1, v13);
  }

  else
  {
    v35 = *(v106 + 56);
    v36 = 1;
    v35(v9, 1, 1, v13);
    v37 = [v26 potentialBirthdayDateComponents];
    if (v37)
    {
      v38 = v37;
      sub_22F73F1B0();

      v36 = 0;
    }

    v35(v6, v36, 1, v13);
    sub_22F2030D4(v6, v12);
    v39 = *(v106 + 48);
    if (v39(v9, 1, v13) != 1)
    {
      sub_22F120ADC(v9, &qword_27DAB1EB8, &unk_22F77A2D0);
    }

    v34 = v39(v12, 1, v13);
  }

  if (v34 == 1)
  {

    sub_22F120ADC(v12, &qword_27DAB1EB8, &unk_22F77A2D0);
LABEL_11:
    v40 = v102;
    if (!v102)
    {
      return v101;
    }

    v41 = v101;

    v42 = sub_22F1ABBB4(v40, v41);

    return v42;
  }

  v103 = *(v106 + 32);
  v104 = v106 + 32;
  v103(v105, v12, v13);
  v43 = sub_22F73F1F0();
  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v43;
  }

  v107 = v45;
  sub_22F120634(0, &qword_27DAB31B0, off_27887B498);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v46);
  v48 = [ObjCClassFromMetadata nodesInGraph_];
  v49 = [v48 years];

  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v50 = sub_22F741180();

  if (!(v50 >> 62))
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v99 = v26;
    if (v51)
    {
      goto LABEL_18;
    }

LABEL_38:

    v54 = MEMORY[0x277D84F90];
    v60 = *(MEMORY[0x277D84F90] + 16);
    if (!v60)
    {
LABEL_39:

      v70 = objc_opt_self();
      v71 = sub_22F741160();

      v72 = [v70 dateNodesForDateComponents:v71 inGraph:v100];

      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v73 = sub_22F740B90();
      __swift_project_value_buffer(v73, qword_2810B4CE0);
      v74 = v72;
      v75 = sub_22F740B70();
      v76 = sub_22F7415F0();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v110 = v78;
        *v77 = 136315138;
        v79 = [v74 dateNames];
        v80 = MEMORY[0x277D837D0];
        v81 = v74;
        v82 = sub_22F741180();

        v83 = MEMORY[0x231900D40](v82, v80);
        v85 = v84;
        v74 = v81;

        v86 = sub_22F145F20(v83, v85, &v110);

        *(v77 + 4) = v86;
        _os_log_impl(&dword_22F0FC000, v75, v76, "Actual birthday dates = %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x2319033A0](v78, -1, -1);
        MEMORY[0x2319033A0](v77, -1, -1);
      }

      v88 = v101;
      v87 = v102;
      v89 = v99;
      v90 = [v74 momentNodes];
      v91 = [v90 uuids];

      v92 = sub_22F741420();
      v42 = sub_22F144608(v88, v92);
      if (v87)
      {

        v93 = sub_22F1ABBB4(v87, v42);

        v42 = v93;
      }

      v94 = sub_22F740B70();
      v95 = sub_22F7415F0();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 134217984;
        *(v96 + 4) = *(v42 + 16);

        _os_log_impl(&dword_22F0FC000, v94, v95, "Found %ld actual birthday moments", v96, 0xCu);
        MEMORY[0x2319033A0](v96, -1, -1);
      }

      else
      {

        v94 = v74;
      }

      (*(v106 + 8))(v105, v13);
      return v42;
    }

LABEL_29:
    v61 = (v54 + 32);
    v62 = (v106 + 16);
    v63 = MEMORY[0x277D84F90];
    do
    {
      v65 = *v61++;
      if (v65 >= v107)
      {
        v66 = *v62;
        v67 = v108;
        (*v62)(v108, v105, v13);
        sub_22F73F200();
        v66(v109, v67, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_22F13F8B0(0, *(v63 + 2) + 1, 1, v63);
        }

        v69 = *(v63 + 2);
        v68 = *(v63 + 3);
        if (v69 >= v68 >> 1)
        {
          v63 = sub_22F13F8B0((v68 > 1), v69 + 1, 1, v63);
        }

        v64 = v106;
        (*(v106 + 8))(v108, v13);
        *(v63 + 2) = v69 + 1;
        v103(&v63[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v69], v109, v13);
      }

      --v60;
    }

    while (v60);
    goto LABEL_39;
  }

  v51 = sub_22F741A00();
  v99 = v26;
  if (!v51)
  {
    goto LABEL_38;
  }

LABEL_18:
  v98 = v13;
  v110 = MEMORY[0x277D84F90];
  result = sub_22F146558(0, v51 & ~(v51 >> 63), 0);
  if ((v51 & 0x8000000000000000) == 0)
  {
    v53 = 0;
    v54 = v110;
    do
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x2319016F0](v53, v50);
      }

      else
      {
        v55 = *(v50 + 8 * v53 + 32);
      }

      v56 = v55;
      v57 = [v55 integerValue];

      v110 = v54;
      v59 = *(v54 + 16);
      v58 = *(v54 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_22F146558((v58 > 1), v59 + 1, 1);
        v54 = v110;
      }

      ++v53;
      *(v54 + 16) = v59 + 1;
      *(v54 + 8 * v59 + 32) = v57;
    }

    while (v51 != v53);

    v13 = v98;
    v60 = *(v54 + 16);
    if (!v60)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2C1AF0(void *a1, uint64_t a2)
{
  v3 = [a1 firstNode];
  if (!v3)
  {
    return MEMORY[0x277D84FA0];
  }

  v4 = v3;
  v5 = sub_22F2C1C40(v3);
  if (v5)
  {
    v6 = v5;
    if ([v5 isEmpty])
    {
      v7 = MEMORY[0x277D84FA0];
      v8 = v4;
      v4 = v6;
    }

    else
    {
      v9 = [v6 momentNodes];
      v10 = [v9 uuids];

      v7 = sub_22F741420();
      if (a2)
      {

        v11 = sub_22F1ABBB4(a2, v7);

        v8 = v6;
        v7 = v11;
      }

      else
      {
        v8 = v6;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  return v7;
}

char *sub_22F2C1C40(char *a1)
{
  v2 = v1;
  v185 = sub_22F73F870();
  v226 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v184 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v5 - 8);
  v183 = &v174 - v6;
  v189 = sub_22F73F090();
  v223 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v209 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_22F73F990();
  v222 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v217 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_22F73F9B0();
  v227 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v10 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v11 - 8);
  v202 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v181 = &v174 - v14;
  MEMORY[0x28223BE20](v15);
  v192 = &v174 - v16;
  MEMORY[0x28223BE20](v17);
  v200 = &v174 - v18;
  v228 = sub_22F73F690();
  v193 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v201 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v205 = &v174 - v21;
  MEMORY[0x28223BE20](v22);
  v206 = &v174 - v23;
  MEMORY[0x28223BE20](v24);
  v186 = &v174 - v25;
  MEMORY[0x28223BE20](v26);
  v191 = &v174 - v27;
  MEMORY[0x28223BE20](v28);
  v190 = &v174 - v29;
  MEMORY[0x28223BE20](v30);
  v199 = &v174 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v174 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v174 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v174 - v42;
  v44 = sub_22F73F270();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v225 = &v174 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v174 - v48;
  *&v51 = MEMORY[0x28223BE20](v50).n128_u64[0];
  v208 = &v174 - v52;
  v182 = *(v2 + 8);
  v230 = a1;
  v53 = [a1 birthdayDateComponents];
  v216 = v44;
  v188 = v45;
  if (v53)
  {
    v54 = v53;
    sub_22F73F1B0();

    v55 = *(v45 + 32);
    v55(v40, v49, v44);
    v56 = *(v45 + 56);
    v56(v40, 0, 1, v44);
    v55(v43, v40, v44);
    v56(v43, 0, 1, v44);
    v57 = v188;
    v58 = *(v188 + 48);
  }

  else
  {
    v59 = *(v45 + 56);
    v60 = 1;
    v59(v40, 1, 1, v44);
    v61 = [v230 potentialBirthdayDateComponents];
    if (v61)
    {
      v62 = v61;
      sub_22F73F1B0();

      v60 = 0;
    }

    v44 = v216;
    v59(v37, v60, 1, v216);
    sub_22F2030D4(v37, v43);
    v57 = v188;
    v58 = *(v188 + 48);
    if (v58(v40, 1, v44) != 1)
    {
      sub_22F120ADC(v40, &qword_27DAB1EB8, &unk_22F77A2D0);
    }
  }

  v63 = v228;
  if (v58(v43, 1, v44) == 1)
  {
    sub_22F120ADC(v43, &qword_27DAB1EB8, &unk_22F77A2D0);
    if (qword_2810A9400 != -1)
    {
      goto LABEL_80;
    }

    goto LABEL_9;
  }

  (*(v57 + 32))(v208, v43, v44);
  v75 = sub_22F73F1F0();
  if (v76)
  {
    v77 = 0;
  }

  else
  {
    v77 = v75;
  }

  v221 = v77;
  sub_22F120634(0, &qword_27DAB31B0, off_27887B498);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v78);
  v80 = [ObjCClassFromMetadata nodesInGraph_];
  v81 = [v80 years];

  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v82 = sub_22F741180();

  if (v82 >> 62)
  {
    v83 = sub_22F741A00();
  }

  else
  {
    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = v231;
  v229 = v34;
  v230 = v10;
  if (v83)
  {
    v232 = MEMORY[0x277D84F90];
    result = sub_22F146558(0, v83 & ~(v83 >> 63), 0);
    if (v83 < 0)
    {
      __break(1u);
      return result;
    }

    v86 = 0;
    v87 = v232;
    do
    {
      if ((v82 & 0xC000000000000001) != 0)
      {
        v88 = MEMORY[0x2319016F0](v86, v82);
      }

      else
      {
        v88 = *(v82 + 8 * v86 + 32);
      }

      v89 = v88;
      v90 = [v88 integerValue];

      v232 = v87;
      v92 = *(v87 + 16);
      v91 = *(v87 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_22F146558((v91 > 1), v92 + 1, 1);
        v87 = v232;
      }

      ++v86;
      *(v87 + 16) = v92 + 1;
      *(v87 + 8 * v92 + 32) = v90;
      v84 = v231;
      v34 = v229;
    }

    while (v83 != v86);

    v10 = v230;
    v63 = v228;
  }

  else
  {

    v87 = MEMORY[0x277D84F90];
  }

  v94 = *(v87 + 16);
  v95 = &OBJC_IVAR____TtC11PhotosGraph16SingleCollection_futureLookupResults;
  v96 = v216;
  if (!v94)
  {

LABEL_70:
    v157 = objc_opt_self();
    v158 = sub_22F741160();

    v159 = [v157 dateNodesForLocalDates:v158 inGraph:v182];

    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v160 = sub_22F740B90();
    __swift_project_value_buffer(v160, qword_2810B4CE0);
    v161 = v159;
    v162 = sub_22F740B70();
    v163 = sub_22F7415F0();

    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v232 = v165;
      *v164 = *(v95 + 110);
      v166 = [v161 dateNames];
      v167 = MEMORY[0x277D837D0];
      v168 = sub_22F741180();

      v169 = MEMORY[0x231900D40](v168, v167);
      v171 = v170;

      v172 = sub_22F145F20(v169, v171, &v232);

      *(v164 + 4) = v172;
      _os_log_impl(&dword_22F0FC000, v162, v163, "All potential birthday dates = %s", v164, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v165);
      MEMORY[0x2319033A0](v165, -1, -1);
      MEMORY[0x2319033A0](v164, -1, -1);
    }

    (*(v188 + 8))(v208, v216);
    return v161;
  }

  v97 = 0;
  v98 = v87 + 32;
  v194 = (v188 + 16);
  v99 = v227 + 1;
  v227 = (v193 + 48);
  v224 = (v193 + 32);
  v210 = (v193 + 16);
  v215 = *MEMORY[0x277CC9968];
  v214 = (v222 + 104);
  v213 = (v222 + 8);
  v219 = (v193 + 8);
  v180 = *MEMORY[0x277CC98E8];
  v179 = (v226 + 104);
  v178 = (v226 + 8);
  v177 = (v223 + 48);
  v175 = (v223 + 32);
  v174 = (v223 + 8);
  v223 = MEMORY[0x277D84F90];
  v195 = (v188 + 8);
  *&v93 = 136315138;
  v176 = v93;
  v197 = v94;
  v228 = v99;
  v187 = v87;
  v196 = v87 + 32;
  while (v97 < *(v87 + 16))
  {
    if (*(v98 + 8 * v97) < v221)
    {
      goto LABEL_32;
    }

    (*v194)(v225, v208, v96);
    swift_beginAccess();
    sub_22F73F200();
    swift_endAccess();
    sub_22F740600();
    v107 = v200;
    sub_22F73F920();
    v108 = *v99;
    (*v99)(v10, v84);
    v109 = *v227;
    if ((*v227)(v107, 1, v63) != 1)
    {
      v222 = v109;
      v226 = v108;
      v113 = *v224;
      (*v224)(v34, v107, v63);
      v207 = *v210;
      v207(v199, v34, v63);
      v114 = v223;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_22F13E15C(0, *(v114 + 2) + 1, 1, v114);
      }

      v116 = *(v114 + 2);
      v115 = *(v114 + 3);
      if (v116 >= v115 >> 1)
      {
        v114 = sub_22F13E15C((v115 > 1), v116 + 1, 1, v114);
      }

      *(v114 + 2) = v116 + 1;
      v204 = (*(v193 + 80) + 32) & ~*(v193 + 80);
      v203 = *(v193 + 72);
      v113(&v114[v204 + v203 * v116], v199, v63);
      v117 = v230;
      sub_22F740600();
      v119 = v217;
      v118 = v218;
      v212 = *v214;
      v212(v217, v215, v218);
      v120 = v192;
      sub_22F73F940();
      v121 = v118;
      v122 = v120;
      v211 = *v213;
      v211(v119, v121);
      v84 = v231;
      v99 = v228;
      (v226)(v117, v231);
      v123 = (v222)(v122, 1, v63);
      v220 = v113;
      if (v123 == 1)
      {
        sub_22F120ADC(v122, &qword_27DAB0920, &qword_22F770B20);
        v96 = v216;
      }

      else
      {
        v124 = v190;
        v113(v190, v122, v63);
        v207(v191, v124, v63);
        v126 = *(v114 + 2);
        v125 = *(v114 + 3);
        if (v126 >= v125 >> 1)
        {
          v114 = sub_22F13E15C((v125 > 1), v126 + 1, 1, v114);
        }

        v96 = v216;
        (*v219)(v190, v63);
        *(v114 + 2) = v126 + 1;
        v113(&v114[v204 + v126 * v203], v191, v63);
      }

      v127 = v230;
      sub_22F740600();
      v128 = sub_22F73F880();
      v129 = v34;
      v130 = v226;
      (v226)(v127, v84);
      v223 = v114;
      if (v128)
      {
        (*v219)(v129, v63);
        (*v195)(v225, v96);
        v10 = v127;
        v98 = v196;
        v34 = v129;
        v87 = v187;
        v94 = v197;
        goto LABEL_32;
      }

      sub_22F740600();
      v131 = v184;
      v132 = v185;
      (*v179)(v184, v180, v185);
      v133 = v183;
      sub_22F73F810();
      (*v178)(v131, v132);
      v130(v127, v84);
      v134 = v189;
      if ((*v177)(v133, 1, v189) == 1)
      {
        v34 = v229;
        (*v219)(v229, v63);
        sub_22F120ADC(v133, &qword_27DAB40E0, &unk_22F779200);
        v96 = v216;
        (*v195)(v225, v216);
        v84 = v231;
        v10 = v127;
        v94 = v197;
        v98 = v196;
        v99 = v228;
        v87 = v187;
        goto LABEL_32;
      }

      (*v175)(v209, v133, v134);
      sub_22F740600();
      v136 = v217;
      v135 = v218;
      v212(v217, v215, v218);
      v137 = v181;
      sub_22F73F940();
      v211(v136, v135);
      v84 = v231;
      v130(v127, v231);
      v138 = v222;
      if ((v222)(v137, 1, v63) == 1)
      {
        v139 = v186;
        sub_22F73F060();
        v140 = v138(v137, 1, v63);
        v141 = v219;
        v87 = v187;
        if (v140 != 1)
        {
          sub_22F120ADC(v137, &qword_27DAB0920, &qword_22F770B20);
        }
      }

      else
      {
        v139 = v186;
        v220(v186, v137, v63);
        v141 = v219;
        v87 = v187;
      }

      v142 = v206;
      v207(v206, v139, v63);
      v143 = v205;
      sub_22F73F030();
      v198 = sub_22F2C3748(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v144 = sub_22F740DB0();
      v145 = *v141;
      while (1)
      {
        v145(v143, v63);
        if (v144)
        {
          v145(v142, v63);
          v145(v186, v63);
          (*v174)(v209, v189);
          v34 = v229;
          v145(v229, v63);
          goto LABEL_67;
        }

        v146 = v230;
        sub_22F740600();
        v147 = sub_22F73F950();
        v148 = v226;
        (v226)(v146, v84);
        if ((v147 & 1) == 0)
        {
          v207(v201, v142, v63);
          v149 = v223;
          v151 = *(v223 + 2);
          v150 = *(v223 + 3);
          if (v151 >= v150 >> 1)
          {
            v149 = sub_22F13E15C((v150 > 1), v151 + 1, 1, v223);
          }

          *(v149 + 2) = v151 + 1;
          v223 = v149;
          v220(&v149[v204 + v151 * v203], v201, v63);
        }

        v152 = v63;
        v153 = v230;
        sub_22F740600();
        v155 = v217;
        v154 = v218;
        v212(v217, v215, v218);
        v156 = v202;
        v142 = v206;
        sub_22F73F940();
        v211(v155, v154);
        v84 = v231;
        v148(v153, v231);
        v145(v142, v152);
        v63 = v152;
        if ((v222)(v156, 1, v152) == 1)
        {
          break;
        }

        v220(v142, v156, v152);
        v143 = v205;
        sub_22F73F030();
        v144 = sub_22F740DB0();
      }

      v145(v186, v152);
      (*v174)(v209, v189);
      v34 = v229;
      v145(v229, v152);
      sub_22F120ADC(v156, &qword_27DAB0920, &qword_22F770B20);
      goto LABEL_67;
    }

    sub_22F120ADC(v107, &qword_27DAB0920, &qword_22F770B20);
    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v110 = sub_22F740B90();
    __swift_project_value_buffer(v110, qword_2810B4CE0);
    v111 = sub_22F740B70();
    v112 = sub_22F7415F0();
    if (!os_log_type_enabled(v111, v112))
    {

LABEL_67:
      v96 = v216;
      (*v195)(v225, v216);
      goto LABEL_31;
    }

    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v232 = v101;
    *v100 = v176;
    sub_22F2C3748(&qword_27DAB31B8, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v102 = v216;
    v103 = sub_22F742010();
    v105 = sub_22F145F20(v103, v104, &v232);

    *(v100 + 4) = v105;
    _os_log_impl(&dword_22F0FC000, v111, v112, "Invalid birthday date for components: %s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);
    v106 = v101;
    v34 = v229;
    MEMORY[0x2319033A0](v106, -1, -1);
    MEMORY[0x2319033A0](v100, -1, -1);

    v96 = v102;
    v84 = v231;
    (*v195)(v225, v96);
LABEL_31:
    v10 = v230;
    v94 = v197;
    v98 = v196;
    v99 = v228;
LABEL_32:
    if (++v97 == v94)
    {

      v95 = &OBJC_IVAR____TtC11PhotosGraph16SingleCollection_futureLookupResults;
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_80:
  swift_once();
LABEL_9:
  v64 = sub_22F740B90();
  __swift_project_value_buffer(v64, qword_2810B4CE0);
  v65 = v230;
  v66 = sub_22F740B70();
  v67 = sub_22F7415F0();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v232 = v69;
    *v68 = 136315138;
    v70 = [v65 localIdentifier];
    if (v70)
    {
      v71 = v70;
      v72 = sub_22F740E20();
      v74 = v73;
    }

    else
    {
      v74 = 0xE300000000000000;
      v72 = 7104878;
    }

    v173 = sub_22F145F20(v72, v74, &v232);

    *(v68 + 4) = v173;
    _os_log_impl(&dword_22F0FC000, v66, v67, "No birthday date components for personLocalIdentifier %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x2319033A0](v69, -1, -1);
    MEMORY[0x2319033A0](v68, -1, -1);
  }

  return 0;
}

uint64_t sub_22F2C3748(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22F2C37E8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SongSourceEntry();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22F2C3840()
{
  v0 = aSongsource_0[0];

  return v0;
}

void *sub_22F2C3878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  v9[2] = a6;
  v9[3] = a7;
  v9[4] = a5;
  v9[5] = &v10;
  v9[6] = a1;
  v9[8] = a2;
  v9[9] = a3;
  v9[10] = a4;

  return sub_22F35F048(sub_22F2C3988, v9, a1);
}

uint64_t sub_22F2C38E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_22F741680();
  if (v10)
  {
    return result & 1;
  }

  if (!__OFADD__(*a3, 1))
  {
    ++*a3;
    LOBYTE(result) = (*(a10 + 8))(a1, a6, a7, a8, a9);
    return result & 1;
  }

  __break(1u);
  return result;
}

void sub_22F2C39D4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F6544(v2);
  }

  v3 = v2[2];
  v19[0] = (v2 + 4);
  v19[1] = v3;
  v4 = sub_22F742000();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 5);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v12[2] >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          *(v12 + 1) = *(v12 - 2);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 1) = v14;
          *v12 = v15;
          v12[2] = v13;
          v12 -= 6;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 6;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1400, &qword_22F771820);
      v7 = sub_22F741200();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v17[0] = (v7 + 32);
    v17[1] = v6;
    sub_22F2C3B70(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_22F2C3B70(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v94 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_22F3F5F98(v7);
    }

    v85 = v7 + 16;
    v86 = *(v7 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v7[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22F2C4128((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v94);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v92 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 40);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[6];
        v14 += 6;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 24 * v6 - 8;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v26 + v10);
            v21 = (v26 + v17);
            v22 = *v20;
            v23 = v20[1];
            v24 = *(v20 + 4);
            v25 = *v21;
            *v20 = *(v21 - 1);
            v20[2] = v25;
            *(v21 - 2) = v22;
            *(v21 - 1) = v23;
            *v21 = v24;
          }

          ++v19;
          v17 -= 24;
          v10 += 24;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_22F13D970(0, *(v7 + 2) + 1, 1, v7);
    }

    v38 = *(v7 + 2);
    v37 = *(v7 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      v7 = sub_22F13D970((v37 > 1), v38 + 1, 1, v7);
    }

    *(v7 + 2) = v39;
    v40 = v7 + 32;
    v41 = &v7[16 * v38 + 32];
    *v41 = v8;
    *(v41 + 1) = v6;
    v94 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v7 + 4);
          v44 = *(v7 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v7[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v40[16 * v42];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v7[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v40[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v42 - 1 >= v39)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v40[16 * v42 - 16];
        v81 = *v80;
        v82 = &v40[16 * v42];
        v83 = *(v82 + 1);
        sub_22F2C4128((*a3 + 24 * *v80), (*a3 + 24 * *v82), *a3 + 24 * v83, v94);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v42 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = *(v7 + 2);
        if (v42 >= v84)
        {
          goto LABEL_101;
        }

        v39 = v84 - 1;
        memmove(&v40[16 * v42], v82 + 16, 16 * (v84 - 1 - v42));
        *(v7 + 2) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v40[16 * v39];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v7[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v40[16 * v42];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v92;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6 - 24;
  v29 = v8 - v6;
LABEL_30:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 40);
    if (*(v31 + 16) >= v32)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    v35 = *(v31 + 16);
    *(v31 + 24) = *v31;
    *(v31 + 40) = v35;
    *v31 = v34;
    *(v31 + 8) = v33;
    *(v31 + 16) = v32;
    v31 -= 24;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_22F2C4128(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 6 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 6;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 6;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 6;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_9;
  }

  v17 = 6 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v18 = (v5 + 24);
      if (*(v6 - 2) < *(v13 - 2))
      {
        v21 = v6 - 6;
        if (v18 != v6)
        {
          v22 = *v21;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v13 <= v4 || (v6 -= 6, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v19 = v13 - 6;
      if (v18 != v13)
      {
        v20 = *v19;
        *(v5 + 16) = *(v13 - 1);
        *v5 = v20;
      }

      v5 -= 24;
      v13 -= 6;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_31:
  v23 = 6 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23 * 4);
  }

  return 1;
}

char *sub_22F2C4354(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (qword_2810A9AB0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("OrderedScoreRanker - primarySongUIDs", 36, 2u, 0, 1, qword_2810B4DD8, v35);
  v8 = a3 - 1;
  if (a3 >= 1)
  {
    v9 = MEMORY[0x277D84F90];
    v36 = MEMORY[0x277D84F90];
    v10 = a1[2];
    if (v10)
    {
      v30 = v3;
      v9 = sub_22F10B4B4(v10, 0);
      v11 = sub_22F11B390(v34, (v9 + 4), v10, a1);
      v12 = v34[0];
      v8 = v34[1];
      v13 = v34[2];
      v4 = v34[3];
      v14 = v34[4];

      sub_22F0FF590(v12);
      if (v11 != v10)
      {
        __break(1u);
        goto LABEL_29;
      }

      v8 = a3 - 1;
      v5 = v30;
    }

    v34[0] = v9;
    v16 = v5;
    sub_22F2C39D4(v34);
    a1 = v5;
    if (v5)
    {
      goto LABEL_32;
    }

    v33 = a2;
    if (!*(v34[0] + 16))
    {

      v4 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v9 = *(v34[0] + 32);
    a3 = *(v34[0] + 40);

    swift_bridgeObjectRetain_n();

    v4 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
    v13 = *(v4 + 2);
    v15 = *(v4 + 3);
    v14 = v13 + 1;
    if (v13 < v15 >> 1)
    {
LABEL_10:
      *(v4 + 2) = v14;
      v17 = &v4[16 * v13];
      *(v17 + 4) = v9;
      *(v17 + 5) = a3;
      v36 = v4;
      sub_22F1248F8(v9, a3);

      a3 = v8;
LABEL_14:
      sub_22F741690();
      if (a1)
      {

        goto LABEL_27;
      }

      v18 = *(v33 + 16);
      if (v18 < a3)
      {
        a3 = *(v33 + 16);
      }

      if (!a3)
      {

        sub_22F7416A0();
        goto LABEL_27;
      }

      v19 = sub_22F10B4B4(v18, 0);
      v32 = sub_22F11B390(v34, (v19 + 4), v18, v33);
      v16 = v34[0];

      sub_22F0FF590(v16);
      if (v32 == v18)
      {
        v34[0] = v19;
        v16 = 0;
        sub_22F2C39D4(v34);
        v20 = v34[0];
        if (*(v34[0] + 16) >= a3)
        {
          v34[0] = MEMORY[0x277D84F90];
          sub_22F146454(0, a3, 0);
          v21 = v34[0];
          v22 = (v20 + 40);
          do
          {
            v23 = *(v22 - 1);
            v24 = *v22;
            v34[0] = v21;
            v26 = *(v21 + 16);
            v25 = *(v21 + 24);

            if (v26 >= v25 >> 1)
            {
              sub_22F146454((v25 > 1), v26 + 1, 1);
              v21 = v34[0];
            }

            *(v21 + 16) = v26 + 1;
            v27 = v21 + 16 * v26;
            *(v27 + 32) = v23;
            *(v27 + 40) = v24;
            v22 += 3;
            --a3;
          }

          while (a3);

          sub_22F7416A0();
          sub_22F144A14(v21);
          v4 = v36;
          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_32:
      for (i = a1; ; i = v16)
      {

        __break(1u);
      }
    }

LABEL_29:
    v4 = sub_22F13E1A8((v15 > 1), v14, 1, v4);
    goto LABEL_10;
  }

  sub_22F7416A0();
  if (!v3)
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_27:
  sub_22F1B2BBC(0);

  return v4;
}

void *sub_22F2C47B0(void *a1, unint64_t a2)
{
  if (qword_2810A9AB0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("OrderedScoreRanker - secondarySongUIDs", 38, 2u, 0, 1, qword_2810B4DD8, v18);
  sub_22F741690();
  if (v2)
  {
    goto LABEL_4;
  }

  if (a2 < 1 || (v6 = a1[2]) == 0)
  {
    sub_22F7416A0();
    a1 = MEMORY[0x277D84F90];
LABEL_4:
    sub_22F1B2BBC(0);

    return a1;
  }

  if (v6 < a2)
  {
    a2 = a1[2];
  }

  v16 = sub_22F10B4B4(a1[2], 0);
  v19 = sub_22F11B390(&v17, (v16 + 4), v6, a1);
  v7 = v17;

  sub_22F0FF590(v7);
  if (v19 == v6)
  {
    v17 = v16;
    v7 = 0;
    sub_22F2C39D4(&v17);
    v19 = 0;
    v8 = v17;
    if (v17[2] >= a2)
    {
      v17 = MEMORY[0x277D84F90];
      sub_22F146454(0, a2, 0);
      a1 = v17;
      v9 = (v8 + 40);
      do
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v17 = a1;
        v13 = a1[2];
        v12 = a1[3];

        if (v13 >= v12 >> 1)
        {
          sub_22F146454((v12 > 1), v13 + 1, 1);
          a1 = v17;
        }

        a1[2] = v13 + 1;
        v14 = &a1[2 * v13];
        v14[4] = v10;
        v14[5] = v11;
        v9 += 3;
        --a2;
      }

      while (a2);

      v15 = v19;
      sub_22F7416A0();
      if (v15)
      {
      }

      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

double sub_22F2C4A4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_22F2C4AB4()
{
  swift_beginAccess();

  return result;
}

uint64_t CurationPlanner.__allocating_init(curationPlannerContext:)(void *a1)
{
  v2 = swift_allocObject();
  sub_22F740B80();
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  *(v2 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_photoLibrary) = (*(v4 + 24))(v3, v4);
  sub_22F15C30C(a1, v2 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext);
  *(v2 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources) = MEMORY[0x277D84F90];
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t CurationPlanner.init(curationPlannerContext:)(void *a1)
{
  sub_22F740B80();
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  *(v1 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_photoLibrary) = (*(v4 + 24))(v3, v4);
  sub_22F15C30C(a1, v1 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext);
  *(v1 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources) = MEMORY[0x277D84F90];
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t CurationPlanner.__allocating_init(for:graphManager:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_22F2C4DB4;

  return sub_22F2C57F4(a1, a2);
}

uint64_t sub_22F2C4DB4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t CurationPlanner.init(for:graphManager:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_22F2C5E8C;

  return sub_22F2C57F4(a1, a2);
}

void sub_22F2C4F84(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2188, &qword_22F7789A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27[-1] - v4;
  static CurationPlanner.createSourceForItem(curationRecipe:curationPlannerContext:)(a1, v1 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext, &v28);
  if (v29)
  {
    sub_22F162700(&v28, v30);
    sub_22F15C30C(v30, &v28);
    v6 = OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources;
    swift_beginAccess();
    v7 = *(v1 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v6) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_22F13F944(0, v7[2] + 1, 1, v7);
      *(v1 + v6) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_22F13F944((v9 > 1), v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    sub_22F162700(&v28, &v7[5 * v10 + 4]);
    *(v1 + v6) = v7;
    swift_endAccess();
    v11 = v30;
    goto LABEL_11;
  }

  sub_22F120ADC(&v28, &qword_27DAB31D0, &qword_22F782770);
  sub_22F15C30C(a1, v30);
  sub_22F15C30C(a1, &v28);
  v12 = sub_22F740B70();
  v13 = sub_22F7415E0();
  if (!os_log_type_enabled(v12, v13))
  {

    __swift_destroy_boxed_opaque_existential_0(v30);
    v11 = &v28;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v11);
    return;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v27[0] = v15;
  *v14 = 136315394;
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v16 = sub_22F740740();
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_0(v30);
  v19 = sub_22F145F20(v16, v18, v27);

  *(v14 + 4) = v19;
  *(v14 + 12) = 2080;
  __swift_project_boxed_opaque_existential_1(&v28, v29);
  sub_22F740750();
  v20 = sub_22F740460();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v5, 1, v20) == 1)
  {
    sub_22F120ADC(v5, &qword_27DAB2188, &qword_22F7789A0);
    v22 = 0xE300000000000000;
    v23 = 7104878;
  }

  else
  {
    v23 = MEMORY[0x231900000]();
    v22 = v24;
    (*(v21 + 8))(v5, v20);
  }

  __swift_destroy_boxed_opaque_existential_0(&v28);
  v25 = sub_22F145F20(v23, v22, v27);

  *(v14 + 14) = v25;
  _os_log_impl(&dword_22F0FC000, v12, v13, "Unable to create source for item %s. Category: %s", v14, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x2319033A0](v15, -1, -1);
  MEMORY[0x2319033A0](v14, -1, -1);
}

uint64_t static CurationPlanner.createSourceForItem(curationRecipe:curationPlannerContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22F73FF30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB31D8, &qword_22F782778);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v22 - v11;
  v13 = sub_22F73FF50();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F15C30C(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB31E0, &qword_22F782780);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (v17)
  {
    v18(v12, 0, 1, v13);
    (*(v14 + 32))(v16, v12, v13);
    sub_22F73FF40();
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D3BFF8])
    {
      sub_22F15C30C(a1, v23);
      sub_22F15C30C(a2, v22);
      v19 = type metadata accessor for MagicSlotPeopleSource();
      swift_allocObject();
      v20 = MagicSlotPeopleSource.init(for:with:)(v23, v22);
      *(a3 + 24) = v19;
      *(a3 + 32) = &protocol witness table for CollectionSource;
      *a3 = v20;
      return (*(v14 + 8))(v16, v13);
    }

    else
    {
      result = sub_22F741D40();
      __break(1u);
    }
  }

  else
  {
    v18(v12, 1, 1, v13);
    result = sub_22F120ADC(v12, &qword_27DAB31D8, &qword_22F782778);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t CurationPlanner.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext));

  return v0;
}

uint64_t CurationPlanner.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext));

  return swift_deallocClassInstance();
}

uint64_t sub_22F2C57F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22F73F690();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F2C58C4, 0, 0);
}

uint64_t sub_22F2C58C4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  sub_22F740B80();
  v7 = [v4 photoLibrary];
  *(v5 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_photoLibrary) = v7;
  v8 = *(v3 + 16);
  v8(v1, v6, v2);
  if ([v4 isReady])
  {
    v9 = [*(v0 + 24) workingContext];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v14 = *(v0 + 24);
  v15 = *(v0 + 32);
  v24 = *(v0 + 16);
  v8(v10, v11, v12);
  v16 = [v14 photoLibrary];
  v17 = type metadata accessor for GraphCurationPlannerContext(0);
  swift_allocObject();
  v18 = GraphCurationPlannerContext.init(for:with:graphWorkingContext:)(v10, v16, v9);

  v19 = *(v13 + 8);
  v19(v11, v12);
  v20 = (v15 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_curationPlannerContext);
  v20[3] = v17;
  v20[4] = &protocol witness table for GraphCurationPlannerContext;
  *v20 = v18;
  v19(v24, v12);
  *(v15 + OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources) = MEMORY[0x277D84F90];

  v21 = *(v0 + 8);
  v22 = *(v0 + 32);

  return v21(v22);
}

uint64_t type metadata accessor for CurationPlanner(uint64_t a1)
{
  result = qword_2810ABA40;
  if (!qword_2810ABA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2C5B50(uint64_t a1)
{
  result = sub_22F740B90();
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

uint64_t dispatch thunk of CurationPlanner.__allocating_init(for:graphManager:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 144) + **(v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22F2C5D6C;

  return v8(a1, a2);
}

uint64_t sub_22F2C5D6C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_22F2C5E90(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v6 = v5;
  v147 = a2;
  v146 = a1;
  isUniquelyReferenced_nonNull_native = sub_22F740AD0();
  v11 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v13 = v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v14) = *(a3 + 3);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
LABEL_62:
    swift_once();
  }

  v15 = qword_2810A8E88;
  sub_22F740AC0();
  sub_22F740A90();
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v16 = v18;
  v18(v13, isUniquelyReferenced_nonNull_native);
  sub_22F741690();
  if (v6)
  {
    return;
  }

  v140 = v15;
  v138 = a4;
  v136 = v13;
  v142 = v17;
  v145 = 0;
  v141 = a5;
  v21 = sub_22F7416D0();
  v22 = v19;
  v23 = v20;
  if (v14)
  {
    v133 = v16;
    v134 = isUniquelyReferenced_nonNull_native;
    v143 = v19;
    v144 = v20;
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_22F7727B0;
    v25 = MEMORY[0x277D837D0];
    *(v24 + 56) = MEMORY[0x277D837D0];
    v26 = sub_22F153470();
    *(v24 + 64) = v26;
    *(v24 + 32) = 1735290739;
    *(v24 + 40) = 0xE400000000000000;
    v132 = type metadata accessor for SongEntry();
    *(v24 + 96) = v132;
    v27 = sub_22F2C7660();
    v28 = v146;
    *(v24 + 72) = v146;
    *(v24 + 136) = v25;
    *(v24 + 144) = v26;
    v135 = v26;
    v131 = v27;
    *(v24 + 104) = v27;
    *(v24 + 112) = 0x43545565746164;
    *(v24 + 120) = 0xE700000000000000;
    v29 = v147;
    v30 = *(v147 + 16);
    if (v30)
    {
      v139 = v21;
      *&v151 = MEMORY[0x277D84F90];
      v31 = v28;
      sub_22F146454(0, v30, 0);
      v32 = v151;
      v33 = (v29 + 40);
      do
      {
        v35 = *(v33 - 1);
        v34 = *v33;
        *&v151 = v32;
        v37 = *(v32 + 16);
        v36 = *(v32 + 24);

        if (v37 >= v36 >> 1)
        {
          sub_22F146454((v36 > 1), v37 + 1, 1);
          v32 = v151;
        }

        *(v32 + 16) = v37 + 1;
        v38 = v32 + 16 * v37;
        *(v38 + 32) = v35;
        *(v38 + 40) = v34;
        v33 += 10;
        --v30;
      }

      while (v30);
      v21 = v139;
    }

    else
    {
      v40 = v28;
      v32 = MEMORY[0x277D84F90];
    }

    sub_22F25F004();
    *(v24 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    *(v24 + 184) = sub_22F2C76B8(&qword_2810A92D0, MEMORY[0x277CC9C50]);
    *(v24 + 152) = v32;
    v41 = sub_22F741560();
    v42 = v41;
    v43 = v145;
    sub_22F2C7370(v41);
    if (v43)
    {

      return;
    }

    v70 = v21;

    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_22F770DF0;
    v72 = v135;
    *(v71 + 56) = MEMORY[0x277D837D0];
    *(v71 + 64) = v72;
    *(v71 + 32) = 1735290739;
    *(v71 + 40) = 0xE400000000000000;
    v73 = v131;
    *(v71 + 96) = v132;
    *(v71 + 104) = v73;
    *(v71 + 72) = v28;
    v74 = v28;
    v75 = sub_22F741560();
    swift_beginAccess();
    v76 = objc_allocWithZone(MEMORY[0x277CBE428]);
    v77 = v75;

    v78 = sub_22F740DF0();

    v6 = [v76 initWithEntityName_];

    [v6 setPredicate_];
    type metadata accessor for SongPlaybackInfoEntry();
    v123 = sub_22F7417B0();
    sub_22F7416A0();
    v23 = v144;
    v21 = v70;

    v44 = sub_22F1518C0(v123);

    v22 = v143;
    isUniquelyReferenced_nonNull_native = v134;
  }

  else
  {
    v39 = v145;
    sub_22F2C7370(0);
    if (v39)
    {

      return;
    }

    v133 = v16;
    v44 = MEMORY[0x277D84FA0];
  }

  v139 = v21;
  v144 = v23;
  v155 = v44;
  v14 = *(v147 + 16);
  v145 = 0;
  v143 = v22;
  v134 = isUniquelyReferenced_nonNull_native;
  if (!v14)
  {
    a5 = MEMORY[0x277D84F98];
LABEL_32:

    v156 = a5;
    v79 = sub_22F1534D0();
    v80 = v79 + 56;
    v81 = 1 << *(v79 + 32);
    v82 = -1;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    v83 = v82 & *(v79 + 56);
    v132 = (v81 + 63) >> 6;
    v137 = v79;

    v84 = v83;
    v11 = 0;
    v14 = 0;
    isUniquelyReferenced_nonNull_native = v144;
    v6 = v139;
    v13 = v142;
    a4 = v140;
    v135 = v80;
    while (1)
    {
      while (1)
      {
        if (v84)
        {
          v85 = v84;
          v59 = __OFADD__(v11++, 1);
          if (v59)
          {
            goto LABEL_64;
          }
        }

        else
        {
          do
          {
            v86 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
              goto LABEL_61;
            }

            if (v86 >= v132)
            {

              v121 = v145;
              sub_22F7416A0();
              if (v121)
              {
              }

              else
              {
                sub_22F741730();
                v122 = v136;
                sub_22F740AC0();
                sub_22F740A90();

                v133(v122, v134);
              }

              return;
            }

            v85 = *(v80 + 8 * v86);
            ++v14;
          }

          while (!v85);
          v14 = v86;
          v59 = __OFADD__(v11++, 1);
          if (v59)
          {
            goto LABEL_64;
          }
        }

        v84 = (v85 - 1) & v85;
        if (*(v156 + 16))
        {
          v87 = *(v137 + 48);
          v146 = (v85 - 1) & v85;
          v88 = (v87 + ((v14 << 10) | (16 * __clz(__rbit64(v85)))));
          v147 = v11;
          v89 = *v88;
          v90 = v88[1];

          a5 = sub_22F1229E8(v89, v90);
          v92 = v91;
          v11 = v147;

          v84 = v146;
          v80 = v135;
          if (v92)
          {
            break;
          }
        }
      }

      v93 = *(v156 + 56) + 80 * a5;
      v94 = *(v93 + 8);
      v124[1] = *v93;
      v95 = *(v93 + 16);
      v127 = *(v93 + 24);
      v96 = *(v93 + 40);
      v125 = *(v93 + 32);
      v126 = v96;
      v97 = *(v93 + 56);
      v124[2] = *(v93 + 48);
      v98 = *(v93 + 64);
      v128 = *(v93 + 72);
      v99 = *(v95 + 16);
      v131 = v97;
      v130 = v94;
      if (v99)
      {
        v124[0] = v14;
        *&v149[0] = MEMORY[0x277D84F90];

        v129 = v98;

        sub_22F146454(0, v99, 0);
        v100 = *&v149[0];
        v101 = 32;
        do
        {
          v102 = v95;
          v148 = *(v95 + v101);
          v103 = sub_22F742010();
          v105 = v104;
          *&v149[0] = v100;
          v107 = *(v100 + 16);
          v106 = *(v100 + 24);
          if (v107 >= v106 >> 1)
          {
            sub_22F146454((v106 > 1), v107 + 1, 1);
            v100 = *&v149[0];
          }

          *(v100 + 16) = v107 + 1;
          v108 = v100 + 16 * v107;
          *(v108 + 32) = v103;
          *(v108 + 40) = v105;
          v101 += 8;
          --v99;
          v95 = v102;
        }

        while (v99);

        v98 = v129;
        v14 = v124[0];
      }

      else
      {

        v100 = MEMORY[0x277D84F90];
      }

      *&v149[0] = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      sub_22F2C76B8(&qword_2810A92E0, MEMORY[0x277D83958]);
      sub_22F740DA0();
      v129 = v109;

      *&v149[0] = v98;
      sub_22F740DA0();

      v110 = objc_opt_self();
      swift_beginAccess();

      v111 = sub_22F740DF0();

      v112 = v138;
      v113 = [v110 entityForName:v111 inManagedObjectContext:v138];

      if (!v113)
      {

        sub_22F162D98();
        swift_allocError();
        swift_willThrow();

        return;
      }

      v114 = [objc_allocWithZone(type metadata accessor for SongPlaybackInfoEntry()) initWithEntity:v113 insertIntoManagedObjectContext:v112];

      v115 = sub_22F740DF0();

      [v114 setDateUTC_];

      v116 = sub_22F740DF0();
      [v114 setHoursUTC_];

      v117 = sub_22F740DF0();
      [v114 setLastEndReason_];

      [v114 setPlayCount_];
      [v114 setSkipCount_];
      [v114 setPlayDurationInMilliseconds_];
      v118 = sub_22F740DF0();
      [v114 setDevices_];

      [v114 setIgnoreForRecommendations_];

      v119 = v114;
      sub_22F10C6A8(v149, v119);

      v11 = v147;
      isUniquelyReferenced_nonNull_native = v144;
      a5 = v144;
      v120 = v145;
      sub_22F741680();
      v145 = v120;
      if (v120)
      {
        break;
      }

      v6 = v139;
      v13 = v142;
      a4 = v140;
      v80 = v135;
      v84 = v146;
    }

    return;
  }

  v13 = &v151;
  a4 = (v147 + 32);
  a5 = MEMORY[0x277D84F98];
  while (1)
  {
    v52 = a4[1];
    v151 = *a4;
    v152 = v52;
    v53 = a4[3];
    v153 = a4[2];
    *v154 = v53;
    *&v154[9] = *(a4 + 57);
    v11 = *(&v151 + 1);
    v54 = v151;
    sub_22F13A7E4(&v151, v149);
    sub_22F13A7E4(&v151, v149);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148 = a5;
    v55 = sub_22F1229E8(v54, v11);
    v57 = *(a5 + 16);
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v6 = v56;
    if (*(a5 + 24) >= v60)
    {
      break;
    }

    sub_22F1262D8(v60, isUniquelyReferenced_nonNull_native);
    v55 = sub_22F1229E8(v54, v11);
    if ((v6 & 1) != (v61 & 1))
    {
      goto LABEL_65;
    }

LABEL_25:
    if ((v6 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_18:
    a5 = v148;
    v45 = (*(v148 + 56) + 80 * v55);
    v149[0] = *v45;
    v46 = v45[1];
    v47 = v45[2];
    v48 = v45[3];
    *&v150[9] = *(v45 + 57);
    v149[2] = v47;
    *v150 = v48;
    v149[1] = v46;
    v50 = v153;
    v49 = *v154;
    v51 = v152;
    *(v45 + 57) = *&v154[9];
    v45[2] = v50;
    v45[3] = v49;
    v45[1] = v51;
    *v45 = v151;
    sub_22F2C760C(v149);
    sub_22F2C760C(&v151);
LABEL_19:
    a4 += 5;
    if (!--v14)
    {
      goto LABEL_32;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_25;
  }

  v69 = v55;
  sub_22F1348C8();
  v55 = v69;
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_26:
  a5 = v148;
  *(v148 + 8 * (v55 >> 6) + 64) |= 1 << v55;
  v62 = (*(a5 + 48) + 16 * v55);
  *v62 = v54;
  v62[1] = v11;
  v63 = (*(a5 + 56) + 80 * v55);
  v64 = *&v154[9];
  v66 = v153;
  v65 = *v154;
  v63[1] = v152;
  v63[2] = v66;
  v63[3] = v65;
  *(v63 + 57) = v64;
  *v63 = v151;

  sub_22F2C760C(&v151);
  v67 = *(a5 + 16);
  v59 = __OFADD__(v67, 1);
  v68 = v67 + 1;
  if (!v59)
  {
    *(a5 + 16) = v68;
    goto LABEL_19;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  sub_22F7420C0();
  __break(1u);
}

uint64_t MusicCache.readPlaybackInfo(forDateUTC:progressReporter:)()
{
  v2 = MEMORY[0x277D84F90];
  sub_22F7417A0();
  if (v0)
  {
  }

  return v2;
}

void sub_22F2C6FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  if (a2)
  {
    sub_22F25F004();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_22F770DF0;
    v9 = MEMORY[0x277D837D0];
    *(v8 + 56) = MEMORY[0x277D837D0];
    v10 = sub_22F153470();
    *(v8 + 32) = 0x43545565746164;
    *(v8 + 40) = 0xE700000000000000;
    *(v8 + 96) = v9;
    *(v8 + 104) = v10;
    *(v8 + 64) = v10;
    *(v8 + 72) = a1;
    *(v8 + 80) = a2;

    v11 = sub_22F741560();
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();
  v12 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v13 = sub_22F740DF0();

  v14 = [v12 initWithEntityName_];

  [v14 setPredicate_];
  type metadata accessor for SongPlaybackInfoEntry();
  v15 = sub_22F7417B0();
  if (v5)
  {
  }

  else
  {
    v16 = v15;
    sub_22F7416A0();

    if (v16 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
    {
      v18 = 0;
      v33 = v16 & 0xC000000000000001;
      v19 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v33)
        {
          v20 = MEMORY[0x2319016F0](v18, v16);
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v20 = *(v16 + 8 * v18 + 32);
        }

        v21 = v20;
        v22 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        SongPlaybackInfoEntry.playbackInfo()(&v32);
        if (v23)
        {

          goto LABEL_27;
        }

        v30 = *&v32.playCount;
        *v31 = v32.lastEndReason;
        *&v31[9] = *(&v32.lastEndReason._object + 1);
        dateUTC = v32.dateUTC;
        v29 = *&v32.hoursUTC._rawValue;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_22F13E580(0, *(v19 + 2) + 1, 1, v19);
        }

        v25 = *(v19 + 2);
        v24 = *(v19 + 3);
        if (v25 >= v24 >> 1)
        {
          v19 = sub_22F13E580((v24 > 1), v25 + 1, 1, v19);
        }

        *(v19 + 2) = v25 + 1;
        v26 = &v19[80 * v25];
        *(v26 + 2) = dateUTC;
        *(v26 + 89) = *&v31[9];
        *(v26 + 4) = v30;
        *(v26 + 5) = *v31;
        *(v26 + 3) = v29;
        ++v18;
        if (v22 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v19 = MEMORY[0x277D84F90];
LABEL_26:

    *a5 = v19;
LABEL_27:
  }
}

void sub_22F2C7370(uint64_t a1)
{
  sub_22F741690();
  if (!v2)
  {
    v4 = sub_22F7416B0();
    v6 = v5;
    swift_beginAccess();
    v7 = objc_allocWithZone(MEMORY[0x277CBE428]);

    v8 = sub_22F740DF0();

    v9 = [v7 initWithEntityName_];

    [v9 setPredicate_];
    v10 = *(v1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    type metadata accessor for SongPlaybackInfoEntry();
    v11 = sub_22F7417B0();
    sub_22F7416A0();

    if (v11 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {
      v17 = v4;
      v13 = v6;
      if (!i)
      {
        break;
      }

      v14 = 0;
      v6 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2319016F0](v14, v11);
        }

        else
        {
          if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v15;
        v4 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        [v10 deleteObject_];
        if (v11 >> 62)
        {
          sub_22F741A00();
        }

        sub_22F741680();

        ++v14;
        if (v4 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_17:

    sub_22F7416A0();
  }
}

unint64_t sub_22F2C7660()
{
  result = qword_27DAB1E50;
  if (!qword_27DAB1E50)
  {
    type metadata accessor for SongEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1E50);
  }

  return result;
}

uint64_t sub_22F2C76B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void static MusicCurator.extractMusicCurationFeatures(for:graph:context:progressReporter:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_22F2C780C(a1, a2, a3, a4);
}

{
  sub_22F32CFEC(a1, a2, a3, a4);
}

void sub_22F2C780C(id a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v171 = &v154 - v14;
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v172 = qword_2810B4E90;
  sub_22F1B560C("MusicCurator - extractMusicCurationFeaturesForMemory", 52, 2u, 0, 1, qword_2810B4E90, v177);
  v15 = [a1 photoLibrary];
  if (!v15)
  {
    sub_22F2C8DB0();
    swift_allocError();
    *v48 = 0;
    *(v48 + 8) = 3;
    swift_willThrow();
LABEL_69:
    sub_22F1B2BBC(0);

    return;
  }

  v16 = v15;
  v166 = v12;
  v167 = v10;
  v173 = a2;
  v169 = a3;
  v170 = v4;
  v17 = [v15 librarySpecificFetchOptions];
  [v17 setWantsIncrementalChangeDetails_];
  v18 = objc_opt_self();
  v174 = v17;
  v19 = [v18 fetchMomentsBackingMemory:a1 options:v17];
  v20 = [v19 fetchedObjects];

  if (!v20)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v49 = sub_22F740B90();
    __swift_project_value_buffer(v49, qword_2810B4D90);
    v50 = sub_22F740B70();
    v51 = sub_22F7415E0();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v174;
    if (v52)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_22F0FC000, v50, v51, "[MemoriesMusic] [FeatureExtraction] Extracted moments backing asset collection: NO", v54, 2u);
      MEMORY[0x2319033A0](v54, -1, -1);
    }

    sub_22F2C8DB0();
    swift_allocError();
    *v55 = a1;
    *(v55 + 8) = 0;
    swift_willThrow();
    v56 = a1;

    goto LABEL_69;
  }

  v157 = v9;
  sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
  v21 = v16;
  v22 = sub_22F741180();

  v23 = v21;
  v24 = [v21 librarySpecificFetchOptions];
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v25 = swift_allocObject();
  v160 = xmmword_22F771340;
  *(v25 + 16) = xmmword_22F771340;
  *(v25 + 32) = sub_22F740E20();
  *(v25 + 40) = v26;
  v27 = sub_22F741160();

  [v24 setFetchPropertySets_];

  [v24 setWantsIncrementalChangeDetails_];
  v28 = objc_opt_self();
  v168 = v24;
  v29 = [v28 fetchAssetsInAssetCollection:a1 options:v24];
  v30 = [v29 fetchedObjects];

  if (!v30)
  {

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v57 = sub_22F740B90();
    __swift_project_value_buffer(v57, qword_2810B4D90);
    v58 = sub_22F740B70();
    v59 = sub_22F7415E0();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_22F0FC000, v58, v59, "[MemoriesMusic] [FeatureExtraction] Extracted assets backing asset collection: NO", v60, 2u);
      MEMORY[0x2319033A0](v60, -1, -1);
    }

    sub_22F2C8DB0();
    swift_allocError();
    *v61 = a1;
    *(v61 + 8) = 1;
    swift_willThrow();
    v62 = a1;

    goto LABEL_69;
  }

  v175 = v22;
  sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  v162 = sub_22F741180();

  v164 = a1;
  v31 = v173;
  v165 = v23;
  v158 = a4;
  if (v173)
  {
    v32 = v175 & 0xFFFFFFFFFFFFFF8;
    if (v175 >> 62)
    {
      v33 = sub_22F741A00();
    }

    else
    {
      v33 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v163 = v31;
    if (v33)
    {
      v34 = 0;
      v35 = v175 & 0xC000000000000001;
      v36 = MEMORY[0x277D84F90];
      do
      {
        v37 = v34;
        while (1)
        {
          if (v35)
          {
            v38 = MEMORY[0x2319016F0](v37, v175);
            v34 = (v37 + 1);
            if (__OFADD__(v37, 1))
            {
              goto LABEL_90;
            }
          }

          else
          {
            if (v37 >= *(v32 + 16))
            {
              goto LABEL_91;
            }

            v38 = *(v175 + 8 * v37 + 32);
            v34 = (v37 + 1);
            if (__OFADD__(v37, 1))
            {
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }
          }

          v39 = v38;
          v40 = [v39 uuid];
          if (v40)
          {
            break;
          }

          ++v37;
          if (v34 == v33)
          {
            goto LABEL_39;
          }
        }

        v41 = v40;
        v42 = sub_22F740E20();
        v159 = v43;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_22F13E1A8(0, *(v36 + 2) + 1, 1, v36);
        }

        v45 = *(v36 + 2);
        v44 = *(v36 + 3);
        if (v45 >= v44 >> 1)
        {
          v36 = sub_22F13E1A8((v44 > 1), v45 + 1, 1, v36);
        }

        *(v36 + 2) = v45 + 1;
        v46 = &v36[16 * v45];
        v47 = v159;
        *(v46 + 4) = v42;
        *(v46 + 5) = v47;
      }

      while (v34 != v33);
    }

LABEL_39:
    v66 = objc_opt_self();
    v67 = sub_22F741160();

    v68 = v66;
    v69 = v163;
    v63 = [v68 momentNodesForArrayOfUUIDs:v67 inGraph:v163];

    v64 = v165;
    a1 = v164;
    v65 = v174;
  }

  else
  {
    v63 = 0;
    v64 = v23;
    v65 = v174;
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v70 = sub_22F740B90();
  v71 = __swift_project_value_buffer(v70, qword_2810B4D90);
  v72 = v63;
  v159 = v71;
  v73 = sub_22F740B70();
  v74 = sub_22F7415C0();
  v163 = v72;

  v75 = os_log_type_enabled(v73, v74);
  v76 = v173;
  v156 = v63;
  if (v75)
  {
    v77 = v63;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v176[0] = v79;
    *v78 = 136315138;
    if (v77)
    {
      v80 = 5457241;
    }

    else
    {
      v80 = 20302;
    }

    if (v77)
    {
      v81 = 0xE300000000000000;
    }

    else
    {
      v81 = 0xE200000000000000;
    }

    v82 = sub_22F145F20(v80, v81, v176);

    *(v78 + 4) = v82;
    _os_log_impl(&dword_22F0FC000, v73, v74, "[MemoriesMusic] [FeatureExtraction] Extracted moment nodes for moments: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v79);
    v83 = v79;
    v65 = v174;
    MEMORY[0x2319033A0](v83, -1, -1);
    MEMORY[0x2319033A0](v78, -1, -1);
  }

  sub_22F1B560C("MusicCurator - extractMusicCurationFeaturesForMemory - memoryNode", 65, 2u, 0, 1, v172, v178);
  if (!v76)
  {
    goto LABEL_57;
  }

  v33 = v76;
  v76 = [a1 graphMemoryIdentifier];
  if (!v76)
  {

    goto LABEL_57;
  }

  v84 = sub_22F740E20();
  v86 = v85;
  v87 = objc_opt_self();
  inited = swift_initStackObject();
  *(inited + 16) = v160;
  *(inited + 32) = v84;
  *(inited + 40) = v86;

  sub_22F1515F8(inited);
  swift_setDeallocating();
  sub_22F1DF3B0(inited + 32);
  v89 = sub_22F741410();

  v90 = [v87 memoryNodesWithUniqueIdentifiers:v89 inGraph:v33];

  v91 = [v90 anyNode];
  if (v91)
  {

    sub_22F14F6D8(MEMORY[0x277D84F90]);
    v92 = [v164 creationDate];
    if (v92)
    {
      v93 = v92;

      v94 = v171;
      sub_22F73F640();

      v95 = objc_allocWithZone(PGTriggeredMemory);
      sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
      sub_22F73F090();
      sub_22F11FA28(&qword_2810A8EC8, &qword_2810A8ED0, 0x277CCABB0);
      v96 = v91;
      v97 = sub_22F740C80();

      v98 = sub_22F73F5B0();
      v99 = [v95 initWithMemoryNode:v96 validityIntervalByTriggerType:v97 creationDate:v98];

      (*(v167 + 8))(v94, v157);
      v76 = [objc_allocWithZone(PGEnrichedMemory) initWithTriggeredMemory_];

LABEL_55:
      a1 = v164;
LABEL_57:
      sub_22F1B2BBC(0);
      swift_unknownObjectRetain();
      v100 = sub_22F740B70();
      v101 = sub_22F7415C0();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v176[0] = v103;
        *v102 = 136315138;
        if (v76)
        {
          v104 = 5457241;
        }

        else
        {
          v104 = 20302;
        }

        if (v76)
        {
          v105 = 0xE300000000000000;
        }

        else
        {
          v105 = 0xE200000000000000;
        }

        v106 = sub_22F145F20(v104, v105, v176);

        *(v102 + 4) = v106;
        _os_log_impl(&dword_22F0FC000, v100, v101, "[MemoriesMusic] [FeatureExtraction] Extracted memory node from memory: %s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v103);
        MEMORY[0x2319033A0](v103, -1, -1);
        MEMORY[0x2319033A0](v102, -1, -1);
      }

      v107 = v170;
      v108 = v169;
      v109 = [a1 category];
      v110 = [a1 subcategory];
      sub_22F3EC34C(v109, v110, v76, v156, v173, v175, v162, v108);
      if (!v107)
      {

        sub_22F7416A0();

        swift_unknownObjectRelease();

        sub_22F1B2BBC(0);

        return;
      }

      swift_unknownObjectRelease();

      goto LABEL_68;
    }

    __break(1u);
    goto LABEL_99;
  }

  v111 = [v164 photosGraphProperties];
  if (!v111)
  {
    goto LABEL_86;
  }

  v112 = v111;
  v113 = sub_22F740CA0();

  v114 = sub_22F740E20();
  if (!*(v113 + 16))
  {

    goto LABEL_85;
  }

  v116 = sub_22F1229E8(v114, v115);
  v118 = v117;

  if ((v118 & 1) == 0)
  {
LABEL_85:

LABEL_87:
    v134 = sub_22F740B70();
    v135 = sub_22F7415E0();
    v136 = os_log_type_enabled(v134, v135);
    v137 = v164;
    if (v136)
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_22F0FC000, v134, v135, "[MemoriesMusic] [FeatureExtraction] Encoded features from Memory PhotosGraphProperties: NO", v138, 2u);
      MEMORY[0x2319033A0](v138, -1, -1);
    }

    sub_22F2C8DB0();
    swift_allocError();
    *v139 = v137;
    *(v139 + 8) = 2;
    swift_willThrow();
    v140 = v137;

LABEL_68:

    goto LABEL_69;
  }

  sub_22F13A100(*(v113 + 56) + 32 * v116, v176);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_86:

    goto LABEL_87;
  }

  v172 = v76;
  v119 = v179;
  v120 = *(v179 + 2);
  v121 = MEMORY[0x277D84F90];
  v171 = v179;
  if (v120)
  {
    v161 = v33;
    v176[0] = MEMORY[0x277D84F90];
    sub_22F741BD0();
    v122 = v119 + 32;
    do
    {
      v122 += 8;

      sub_22F2143F8(v123);
      v124 = objc_allocWithZone(PGFeature);
      v125 = sub_22F740C80();

      [v124 initWithEncodedFeature_];

      sub_22F741BA0();
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
      --v120;
    }

    while (v120);
    v121 = v176[0];
    v33 = v161;
  }

  sub_22F151E24(v121);

  v126 = [v164 photosGraphProperties];
  if (!v126)
  {
    goto LABEL_94;
  }

  v127 = v126;
  v128 = sub_22F740CA0();

  v129 = sub_22F740E20();
  if (!*(v128 + 16))
  {
LABEL_92:

    goto LABEL_93;
  }

  v131 = sub_22F1229E8(v129, v130);
  v133 = v132;

  if ((v133 & 1) == 0)
  {
LABEL_93:

    goto LABEL_94;
  }

  sub_22F13A100(*(v128 + 56) + 32 * v131, v176);

  if (swift_dynamicCast())
  {
    LODWORD(v160) = v179;
    goto LABEL_95;
  }

LABEL_94:
  LODWORD(v160) = 0;
LABEL_95:
  v141 = v164;
  v155 = [v164 category];
  sub_22F120634(0, &qword_27DAB06F0, off_27887A8D0);
  sub_22F11FA28(&unk_27DAB1270, &qword_27DAB06F0, off_27887A8D0);
  v142 = v33;
  v143 = sub_22F741410();
  v144 = [objc_opt_self() featureNodeCollectionWithFeatures:v143 inGraph:v142];

  v161 = v142;
  sub_22F14F6D8(MEMORY[0x277D84F90]);
  v145 = [v141 creationDate];
  if (v145)
  {
    v146 = v145;

    v147 = v166;
    sub_22F73F640();

    v148 = objc_allocWithZone(PGTriggeredMemory);
    sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
    sub_22F73F090();
    sub_22F11FA28(&qword_2810A8EC8, &qword_2810A8ED0, 0x277CCABB0);
    v149 = sub_22F740C80();

    v150 = sub_22F73F5B0();
    LOBYTE(v153) = v160;
    v151 = v172;
    v152 = [v148 initWithMemoryCategory:v155 memoryCategorySubcategory:0 memoryMomentNodes:v163 memoryFeatureNodes:v144 validityIntervalByTriggerType:v149 creationDate:v150 uniqueMemoryIdentifier:v172 generatedWithFallbackRequirements:v153];

    (*(v167 + 8))(v147, v157);
    v76 = [objc_allocWithZone(PGEnrichedMemory) initWithTriggeredMemory_];

    goto LABEL_55;
  }

LABEL_99:

  __break(1u);
}

unint64_t sub_22F2C8DB0()
{
  result = qword_27DAB31E8;
  if (!qword_27DAB31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB31E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph12MusicCuratorC0cD32FeatureExtractionFromMemoryError33_F260D489A0EF6525E9EAF7AA47C80346LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_22F2C8E20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F2C8E68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_22F2C8EAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

void sub_22F2C8EE4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F6544(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_22F2C8F80(v4);
  *a1 = v2;
}

void sub_22F2C8F80(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1400, &qword_22F771820);
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F2C9188(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F2C9088(0, v2, 1, a1);
  }
}

uint64_t sub_22F2C9088(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = *(v10 + 40);
      v12 = *(v10 + 16);
      if (v11 >= v12)
      {
        if (v12 < v11 || ((result = *v10, *v10 == *(v10 + 24)) ? (v13 = *(v10 + 8) == *(v10 + 32)) : (v13 = 0), v13 || (result = sub_22F742040(), (result & 1) == 0)))
        {
LABEL_4:
          ++v4;
          v7 += 24;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v6)
      {
        break;
      }

      v15 = *(v10 + 24);
      v14 = *(v10 + 32);
      v16 = *(v10 + 40);
      v17 = *(v10 + 16);
      *(v10 + 24) = *v10;
      *(v10 + 40) = v17;
      *v10 = v15;
      *(v10 + 8) = v14;
      *(v10 + 16) = v16;
      v10 -= 24;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F2C9188(float *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_113:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_151;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_145;
    }

    goto LABEL_115;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = *v6 + 24 * v8;
      v13 = *(v12 + 16);
      v14 = *v6 + 24 * v10;
      v15 = *(v14 + 16);
      if (v13 >= v15)
      {
        if (v15 < v13 || (*v14 == *v12 ? (v17 = *(v14 + 8) == *(v12 + 8)) : (v17 = 0), v17))
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_22F742040();
        }
      }

      else
      {
        v16 = 1;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v18 = v11 + 24 * v10 + 32;
        do
        {
          v19 = *(v18 + 32);
          v20 = *(v18 + 8);
          if (v19 < v20)
          {
            if ((v16 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          else if (v20 < v19 || (*(v18 - 8) == *(v18 + 16) ? (v21 = *v18 == *(v18 + 24)) : (v21 = 0), v21))
          {
            if (v16)
            {
              goto LABEL_30;
            }
          }

          else if ((v16 ^ sub_22F742040()))
          {
            goto LABEL_29;
          }

          ++v8;
          v18 += 24;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_29:
      if (v16)
      {
LABEL_30:
        if (v8 < v10)
        {
          goto LABEL_144;
        }

        if (v10 < v8)
        {
          v22 = 24 * v8 - 8;
          v23 = 24 * v10;
          v24 = v8;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v26 = *v6;
              if (!*v6)
              {
                goto LABEL_148;
              }

              v27 = v26 + v23;
              v28 = (v26 + v22);
              v29 = *v27;
              v30 = *(v27 + 8);
              v31 = *(v27 + 16);
              v32 = *v28;
              *v27 = *(v28 - 1);
              *(v27 + 16) = v32;
              *(v28 - 2) = v29;
              *(v28 - 1) = v30;
              *v28 = v31;
            }

            ++v25;
            v22 -= 24;
            v23 += 24;
          }

          while (v25 < v24);
        }
      }
    }

LABEL_37:
    v33 = v6[1];
    if (v8 < v33)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_141;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_62:
    if (v8 < v10)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
    }

    v48 = *(v9 + 2);
    v47 = *(v9 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v9 = sub_22F13D970((v47 > 1), v48 + 1, 1, v9);
    }

    *(v9 + 2) = v49;
    v50 = &v9[16 * v48];
    *(v50 + 4) = v10;
    *(v50 + 5) = v8;
    v51 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v9 + 4);
          v54 = *(v9 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_82:
          if (v56)
          {
            goto LABEL_128;
          }

          v69 = &v9[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_131;
          }

          v75 = &v9[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_135;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v79 = &v9[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_96:
        if (v74)
        {
          goto LABEL_130;
        }

        v82 = &v9[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_133;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_103:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
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
          goto LABEL_143;
        }

        if (!*v6)
        {
          goto LABEL_147;
        }

        v91 = *&v9[16 * v90 + 32];
        v92 = *&v9[16 * v52 + 40];
        sub_22F2C97E4((*v6 + 24 * v91), (*v6 + 24 * *&v9[16 * v52 + 32]), *v6 + 24 * v92, v51);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v92 < v91)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v90 >= *(v9 + 2))
        {
          goto LABEL_125;
        }

        v93 = &v9[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        sub_22F3F5F0C(v52);
        v49 = *(v9 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v9[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_126;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_127;
      }

      v64 = &v9[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_129;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_132;
      }

      if (v68 >= v60)
      {
        v86 = &v9[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_136;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_113;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_142;
  }

  v102 = v5;
  if (v10 + a4 >= v33)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    v9 = sub_22F3F5F98(v9);
LABEL_115:
    v94 = v9 + 16;
    v95 = *(v9 + 2);
    if (v95 >= 2)
    {
      do
      {
        v96 = *v6;
        if (!*v6)
        {
          goto LABEL_149;
        }

        v97 = &v9[16 * v95];
        v6 = *v97;
        v98 = &v94[2 * v95];
        v99 = v98[1];
        sub_22F2C97E4((v96 + 24 * *v97), (v96 + 24 * *v98), v96 + 24 * v99, a1);
        if (v5)
        {
          break;
        }

        if (v99 < v6)
        {
          goto LABEL_137;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_138;
        }

        *v97 = v6;
        *(v97 + 1) = v99;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_139;
        }

        v95 = *v94 - 1;
        memmove(v98, v98 + 2, 16 * v100);
        *v94 = v95;
        v6 = a3;
      }

      while (v95 > 1);
    }

LABEL_122:

    return;
  }

  if (v8 == v5)
  {
LABEL_61:
    v5 = v102;
    goto LABEL_62;
  }

  v34 = *v6;
  v35 = *v6 + 24 * v8 - 24;
  v101 = v10;
  v36 = v10 - v8;
LABEL_48:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = *(v38 + 40);
    v40 = *(v38 + 16);
    if (v39 >= v40)
    {
      if (v40 < v39 || (*v38 == *(v38 + 24) ? (v41 = *(v38 + 8) == *(v38 + 32)) : (v41 = 0), v41 || (sub_22F742040() & 1) == 0))
      {
LABEL_47:
        ++v8;
        v35 += 24;
        --v36;
        if (v8 != v5)
        {
          goto LABEL_48;
        }

        v8 = v5;
        v6 = a3;
        v10 = v101;
        goto LABEL_61;
      }
    }

    if (!v34)
    {
      break;
    }

    v43 = *(v38 + 24);
    v42 = *(v38 + 32);
    v44 = *(v38 + 40);
    v45 = *(v38 + 16);
    *(v38 + 24) = *v38;
    *(v38 + 40) = v45;
    *v38 = v43;
    *(v38 + 8) = v42;
    *(v38 + 16) = v44;
    v38 -= 24;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_47;
    }
  }

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
}

uint64_t sub_22F2C97E4(float *__src, float *__dst, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    v22 = 6 * v11;
    if (a4 != __dst || &__dst[v22] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
      v5 = a3;
    }

    v14 = &v4[v22];
    if (v10 < 24 || v6 <= v7)
    {
      v34 = v6;
    }

    else
    {
      v39 = v4;
LABEL_28:
      v24 = 0;
      v25 = v14;
      v38 = v6 - 6;
      do
      {
        v14 = &v25[v24];
        v26 = (v5 + v24 * 4);
        v27 = v5 + v24 * 4 - 24;
        v28 = v25[v24 - 2];
        v29 = *(v6 - 2);
        if (v28 < v29 || v29 >= v28 && (*(v6 - 3) == *(v14 - 3) ? (v30 = *(v6 - 2) == *(v14 - 2)) : (v30 = 0), !v30 && (v31 = v5, v32 = sub_22F742040(), v5 = v31, v4 = v39, (v32 & 1) != 0)))
        {
          v34 = v6 - 6;
          if (v26 != v6)
          {
            v35 = *v38;
            *(v27 + 16) = *(v6 - 1);
            *v27 = v35;
          }

          if (v14 <= v4 || (v5 = v27, v6 -= 6, v38 <= v7))
          {
            v14 = &v25[v24];
            goto LABEL_47;
          }

          goto LABEL_28;
        }

        if (v26 != v14)
        {
          v33 = *(v14 - 6);
          *(v27 + 16) = *(v14 - 1);
          *v27 = v33;
        }

        v24 -= 6;
        v14 = &v25[v24];
      }

      while (&v25[v24] > v4);
      v34 = v6;
    }
  }

  else
  {
    v12 = 6 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12 * 4);
      v5 = a3;
    }

    v14 = &v4[v12];
    if (v8 >= 24 && v6 < v5)
    {
      while (1)
      {
        v15 = v6[4];
        v16 = v4[4];
        if (v15 < v16)
        {
          break;
        }

        if (v16 >= v15)
        {
          v19 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
          if (!v19)
          {
            v20 = v5;
            v21 = sub_22F742040();
            v5 = v20;
            if (v21)
            {
              break;
            }
          }
        }

        v17 = v4;
        v19 = v7 == v4;
        v4 += 6;
        if (!v19)
        {
          goto LABEL_9;
        }

LABEL_10:
        v7 += 6;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_44;
        }
      }

      v17 = v6;
      v19 = v7 == v6;
      v6 += 6;
      if (v19)
      {
        goto LABEL_10;
      }

LABEL_9:
      v18 = *v17;
      *(v7 + 2) = *(v17 + 2);
      *v7 = v18;
      goto LABEL_10;
    }

LABEL_44:
    v34 = v7;
  }

LABEL_47:
  v36 = 6 * ((v14 - v4) / 24);
  if (v34 != v4 || v34 >= &v4[v36])
  {
    memmove(v34, v4, v36 * 4);
  }

  return 1;
}

uint64_t sub_22F2C9ACC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = sub_22F10B4B4(*(a1 + 16), 0);
    v5 = sub_22F11B390(&v27, (v4 + 4), v3, a1);
    v6 = v27;

    sub_22F0FF590(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v27 = v4;
  v7 = 0;
  sub_22F2C8EE4(&v27);
  v8 = 0;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v27;
  v12 = v10 & *(a1 + 64);
  v13 = (v9 + 63) >> 6;
  v14 = 0.0;
  if (v12)
  {
    while (1)
    {
      v15 = v8;
LABEL_13:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v14 = v14 + *(*(a1 + 56) + ((v15 << 8) | (4 * v16)));
      if (!v12)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);

      __break(1u);
      return result;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(a1 + 64 + 8 * v15);
    ++v8;
    if (v12)
    {
      v8 = v15;
      goto LABEL_13;
    }
  }

  v17 = 0.0;
  sub_22F39251C(0.0, 1.0);
  v19 = *(v11 + 16);
  if (v19)
  {
    v20 = 0;
    v7 = 0;
    v21 = 0;
    v22 = v14 * v18;
    v23 = (v11 + 48);
    while (v20 < *(v11 + 16))
    {
      if (v17 <= v22)
      {
        ++v20;
        v24 = *v23;
        v21 = *(v23 - 2);
        v25 = *(v23 - 1);

        v17 = v17 + v24;
        v23 += 6;
        v7 = v25;
        if (v19 != v20)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    goto LABEL_24;
  }

  v21 = 0;
LABEL_22:

  return v21;
}

uint64_t sub_22F2C9CF4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, NSObject *a5, unint64_t a6)
{
  v7 = v6;
  v40 = a6;
  v36 = a2;
  v12 = sub_22F73FC60();
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9AB0 != -1)
  {
LABEL_41:
    swift_once();
  }

  sub_22F1B560C("RandomizedScoreRanker - primarySongUIDs", 39, 2u, 0, 1, qword_2810B4DD8, v42);
  if (*(a1 + 16) >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = *(a1 + 16);
  }

  if (v16 < 1)
  {
    sub_22F7416A0();
    if (v7)
    {
LABEL_35:
      sub_22F1B2BBC(0);
    }

    else
    {
      sub_22F1B2BBC(0);

      return MEMORY[0x277D84F90];
    }
  }

  v17 = sub_22F1D226C(a4, a5);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v18 = __OFSUB__(0, v17);
    result = -v17;
    if (!v18)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_9:
  v34 = v13;
  v35 = v12;
  v39 = v7;
  sub_22F73FC50();

  v38 = 0;
  v13 = 0;
  v41 = MEMORY[0x277D84F90];
  v12 = qword_2810B4D90;
  do
  {
    while (1)
    {
      if (v13 >= v16)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v7 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        goto LABEL_40;
      }

      v20 = sub_22F2C9ACC(a1, v15);
      if (!v21)
      {
        break;
      }

      v23 = v21;
      v37 = v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_22F13E1A8(0, *(v41 + 2) + 1, 1, v41);
      }

      a3 = *(v41 + 2);
      v24 = *(v41 + 3);
      v25 = v37;
      if (a3 >= v24 >> 1)
      {
        v41 = sub_22F13E1A8((v24 > 1), a3 + 1, 1, v41);
        v25 = v37;
      }

      v26 = v41;
      *(v41 + 2) = a3 + 1;
      v27 = &v26[16 * a3];
      *(v27 + 4) = v25;
      *(v27 + 5) = v23;
      if ((v38 & 1) == 0)
      {

        a1 = v36;

        v25 = v37;
      }

      v28 = sub_22F1229E8(v25, v23);
      if (v29)
      {
        a3 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1350D0();
          a1 = v43;
        }

        sub_22F3B9E10(a3, a1);
      }

      v31 = v39;
      a4 = v40;
      sub_22F741680();
      a5 = v31;
      if (v31)
      {
        (*(v34 + 8))(v15, v35);

        goto LABEL_33;
      }

      v39 = 0;
      v38 = 1;
      ++v13;
      if (v7 == v16)
      {
        goto LABEL_31;
      }
    }

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v22 = sub_22F740B90();
    __swift_project_value_buffer(v22, qword_2810B4D90);
    a5 = sub_22F740B70();
    a4 = sub_22F7415E0();
    if (os_log_type_enabled(a5, a4))
    {
      a3 = swift_slowAlloc();
      *a3 = 0;
      _os_log_impl(&dword_22F0FC000, a5, a4, "[MemoriesMusic] (FlexMusicCurator) Failed to identify weighted random song selection during best song selection.", a3, 2u);
      MEMORY[0x2319033A0](a3, -1, -1);
    }

    ++v13;
  }

  while (v7 != v16);
LABEL_31:

  v32 = v39;
  sub_22F7416A0();
  if (v32)
  {
    (*(v34 + 8))(v15, v35);
LABEL_33:

    goto LABEL_35;
  }

  (*(v34 + 8))(v15, v35);
  sub_22F1B2BBC(0);

  return v41;
}

uint64_t sub_22F2CA1A4(uint64_t a1, char *a2, uint64_t a3, NSObject *a4, NSObject *a5)
{
  v6 = v5;
  v34 = a5;
  v11 = sub_22F73FC60();
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v35 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9AB0 != -1)
  {
LABEL_39:
    swift_once();
  }

  sub_22F1B560C("RandomizedScoreRanker - secondarySongUIDs", 41, 2u, 0, 1, qword_2810B4DD8, v36);
  v14 = *(a1 + 16);
  if (v14 >= a2)
  {
    v14 = a2;
  }

  v33 = v14;
  if (v14 < 1)
  {
    sub_22F7416A0();
    if (v6)
    {
LABEL_34:
      sub_22F1B2BBC(0);
    }

    else
    {
      sub_22F1B2BBC(0);

      return MEMORY[0x277D84F90];
    }

    return a2;
  }

  v15 = sub_22F1D226C(a3, a4);
  if ((v15 & 0x8000000000000000) == 0)
  {
LABEL_8:
    v31 = v12;
    v32 = v11;
    sub_22F73FC50();
    v12 = a1;

    v18 = 0;
    a2 = MEMORY[0x277D84F90];
    v19 = v33;
    do
    {
      if (v18 >= v19)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      a1 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_38;
      }

      v20 = sub_22F2C9ACC(v12, v35);
      if (v21)
      {
        v22 = v20;
        a3 = v21;

        v23 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_22F13E1A8(0, *(a2 + 2) + 1, 1, a2);
        }

        v25 = *(a2 + 2);
        v24 = *(a2 + 3);
        v11 = (v25 + 1);
        if (v25 >= v24 >> 1)
        {
          a2 = sub_22F13E1A8((v24 > 1), v25 + 1, 1, a2);
        }

        *(a2 + 2) = v11;
        v26 = &a2[16 * v25];
        *(v26 + 4) = v22;
        *(v26 + 5) = a3;
        v27 = sub_22F1229E8(v22, a3);
        if (v28)
        {
          v11 = v27;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = v12;
          v6 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F1350D0();
            v12 = v37;
          }

          sub_22F3B9E10(v11, v12);
        }

        else
        {

          v6 = v23;
        }

        v19 = v33;
        a4 = v34;
        sub_22F741680();
        if (v6)
        {
          (*(v31 + 8))(v35, v32);

LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
        if (qword_2810A9460 != -1)
        {
          swift_once();
        }

        v30 = sub_22F740B90();
        __swift_project_value_buffer(v30, qword_2810B4D90);
        a4 = sub_22F740B70();
        a3 = sub_22F7415E0();
        if (os_log_type_enabled(a4, a3))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_22F0FC000, a4, a3, "[MemoriesMusic] (FlexMusicCurator) Failed to identify weighted random during secondary song selection.", v11, 2u);
          MEMORY[0x2319033A0](v11, -1, -1);
        }
      }

      ++v18;
    }

    while (a1 != v19);

    sub_22F7416A0();
    if (v6)
    {
      (*(v31 + 8))(v35, v32);
      goto LABEL_33;
    }

    (*(v31 + 8))(v35, v32);
    sub_22F1B2BBC(0);

    return a2;
  }

  v16 = __OFSUB__(0, v15);
  result = -v15;
  if (!v16)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

double static MusicKitClient.FetchOptions.all(musicKitSource:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0x101010101010101;
  *(a3 + 16) = 0x101010101010101;
  *a3 = 0x101010101010101;
  *(a3 + 24) = xmmword_22F782930;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;

  return result;
}

double static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x10101010101;
  *(a3 + 8) = 0;
  *(a3 + 9) = 16843009;
  *(a3 + 13) = 256;
  *(a3 + 15) = 1;
  *(a3 + 16) = 0;
  *(a3 + 19) = 0;
  *(a3 + 23) = 1;
  *(a3 + 24) = xmmword_22F782940;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;

  return result;
}

double static MusicKitClient.FetchOptions.nonPersonalizedMemoriesCuration(musicKitSource:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x10101010101;
  *(a3 + 8) = 0;
  *(a3 + 9) = 16843009;
  *(a3 + 13) = 256;
  *(a3 + 15) = 1;
  *(a3 + 16) = xmmword_22F782950;
  *(a3 + 32) = 9;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;

  return result;
}

double static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x101000100010101;
  *(a3 + 8) = 1;
  *(a3 + 10) = 0;
  *(a3 + 11) = 0x101010101010101;
  *(a3 + 19) = 257;
  *(a3 + 23) = 0;
  *(a3 + 24) = xmmword_22F782960;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;

  return result;
}

double static MusicKitClient.FetchOptions.augmentedCurationAndDisplay(musicKitSource:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x101010101010101;
  *(a3 + 8) = 1;
  *(a3 + 10) = 0x101010101010101;
  *(a3 + 16) = 0x101010101010101;
  *(a3 + 24) = xmmword_22F782960;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;

  return result;
}

double static MusicKitClient.FetchOptions.identity(musicKitSource:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 257;
  *(a3 + 2) = 1;
  *(a3 + 11) = 0;
  *(a3 + 3) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = xmmword_22F782960;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;

  return result;
}

uint64_t sub_22F2CA7C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F2CA810(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s12FetchOptionsV26FlexMLAnalysisFetchOptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s12FetchOptionsV26FlexMLAnalysisFetchOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s12FetchOptionsV25AudioAnalysisFetchOptionsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s12FetchOptionsV25AudioAnalysisFetchOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t static MusicForYouCacher.cacheMusic(forMomentsInPhotoLibrary:forceCaching:progressReporter:completionHandler:)(void *a1, int a2, void *a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v69 = a4;
  LODWORD(v66) = a2;
  v8 = sub_22F740C00();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - v15;
  v17 = sub_22F7416E0();
  v19 = v18;
  v70 = v20;
  v68 = v21;
  v22 = sub_22F1A26E0(a1);
  v62 = v10;
  v60 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v12;
  v63 = a3;
  v23 = v67;
  v64 = a5;
  v65 = v17;
  v24 = v19;
  v25 = v22;
  v26 = objc_allocWithZone(type metadata accessor for MusicBag());
  v27 = v25;
  v28 = sub_22F1ED5B0(v25);

  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEB00000000756F59, v16);
  v29 = sub_22F2CCB40(v16, v28, v65);
  v59 = v28;
  v58 = v16;
  v30 = v24;
  if (((v29 | v66) & 1) == 0)
  {
    sub_22F7416A0();
    v33 = v65;
    v69(1, 0);

LABEL_6:
    v55 = v58;
    return sub_22F120ADC(v55, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  v31 = v27;
  sub_22F2CD024(v27, v59, v24);
  v33 = v65;
  v34 = v64;
  if (!*(v32 + 16))
  {

    sub_22F7416A0();
    v69(1, 0);

    goto LABEL_6;
  }

  v35 = v62;
  v36 = v32;
  sub_22F740BD0();

  v66 = v36;
  v62 = sub_22F22FB24(v35, v36);
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0x726F46636973756DLL, 0xEB00000000756F59, v71);
  v38 = v60;
  sub_22F13BA9C(v58, v60, &qword_27DAB1DA0, &unk_22F7771B0);
  v39 = v61[80];
  v61 = v30;
  v40 = (v39 + 24) & ~v39;
  v57 = (v13 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = v31;
  v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v23;
  sub_22F1207AC(v38, v45 + v40, &qword_27DAB1DA0, &unk_22F7771B0);
  v46 = v56;
  *(v45 + v57) = v56;
  *(v45 + v41) = v66;
  v48 = v68;
  v47 = v69;
  *(v45 + v42) = v68;
  *(v45 + v43) = v62;
  v49 = v63;
  *(v45 + v44) = v63;
  v50 = (v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v50 = v47;
  v50[1] = v34;
  v51 = v46;
  v52 = v48;

  v53 = v49;

  v54 = v70;
  sub_22F229248(v71, v70, sub_22F2CD8FC, v45);

  v73[0] = v71[0];
  v73[1] = v71[1];
  v73[2] = v71[2];
  v74 = v72;
  sub_22F1D210C(v73);
  v55 = v58;
  return sub_22F120ADC(v55, &qword_27DAB1DA0, &unk_22F7771B0);
}

void sub_22F2CB144(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void *), uint64_t a11)
{
  object = a1;
  v158 = a8;
  countAndFlagsBits = a7;
  v155 = a6;
  v163 = a5;
  v167 = a4;
  LODWORD(v162) = a2;
  v160 = a11;
  v161 = a10;
  v156 = a9;
  v11 = type metadata accessor for Song(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F740AD0();
  v165 = *(v15 - 8);
  v166 = v15;
  MEMORY[0x28223BE20](v15);
  v164 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v145 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v23 - 8);
  v159 = (&v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v27 = &v145 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v145 - v29;
  v31 = type metadata accessor for CacherStatus(0);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  if (v162)
  {
    sub_22F13BA9C(v167, v19, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v32 + 48))(v19, 1, v31) == 1)
    {
      sub_22F120ADC(v19, &qword_27DAB1DA0, &unk_22F7771B0);
      v37 = sub_22F73F690();
      v38 = v159;
      (*(*(v37 - 8) + 56))(v159, 1, 1, v37);
    }

    else
    {
      v38 = v159;
      sub_22F13BA9C(&v19[*(v31 + 20)], v159, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2CE854(v19, type metadata accessor for CacherStatus);
    }

    v40 = v164;
    v41 = *(v31 + 24);
    sub_22F73F680();
    v42 = sub_22F73F690();
    (*(*(v42 - 8) + 56))(&v34[v41], 0, 1, v42);
    *v34 = xmmword_22F782A30;
    sub_22F1207AC(v38, &v34[*(v31 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    v44 = v165;
    v43 = v166;
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v45 = *(v44 + 1);
    v46 = v45(v40, v43);
    MEMORY[0x28223BE20](v46);
    *(&v145 - 4) = 0x726F46636973756DLL;
    *(&v145 - 3) = 0xEB00000000756F59;
    *(&v145 - 2) = v47;
    *(&v145 - 1) = v34;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v45(v40, v43);
    sub_22F7416A0();
    v161(0, object);
    v65 = v34;
    goto LABEL_91;
  }

  v153 = (&v145 - v36);
  sub_22F73F680();
  v39 = sub_22F73F690();
  v162 = *(*(v39 - 8) + 56);
  v162(v30, 0, 1, v39);
  sub_22F13BA9C(v167, v22, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v32 + 48))(v22, 1, v31) == 1)
  {
    sub_22F120ADC(v22, &qword_27DAB1DA0, &unk_22F7771B0);
    v162(v27, 1, 1, v39);
  }

  else
  {
    sub_22F13BA9C(&v22[*(v31 + 24)], v27, &qword_27DAB0920, &qword_22F770B20);
    sub_22F2CE854(v22, type metadata accessor for CacherStatus);
  }

  v48 = v153;
  v150 = xmmword_22F782A30;
  *v153 = xmmword_22F782A30;
  sub_22F1207AC(v30, v48 + *(v31 + 20), &qword_27DAB0920, &qword_22F770B20);
  sub_22F1207AC(v27, v48 + *(v31 + 24), &qword_27DAB0920, &qword_22F770B20);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  v49 = qword_2810A8E88;
  v50 = v164;
  sub_22F740AC0();
  v162 = v49;
  sub_22F740A90();
  v51 = v165 + 8;
  v159 = *(v165 + 1);
  v52 = (v159)(v50, v166);
  v53 = v163;
  v54 = *(v163 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v52);
  *(&v145 - 4) = 0x726F46636973756DLL;
  *(&v145 - 3) = 0xEB00000000756F59;
  *(&v145 - 2) = v53;
  *(&v145 - 1) = v48;
  sub_22F7417A0();
  v167 = 0;
  v149 = v54;
  sub_22F741730();
  sub_22F740AC0();
  sub_22F740A90();
  v165 = v51;
  (v159)(v50, v166);
  v57 = v155;
  v175 = v155;
  v58 = object[2];

  if (v58)
  {
    v148 = sub_22F7416B0();
    v146 = v59;
    v60 = MEMORY[0x277D84F90];
    if (v58 != 1)
    {
      *v170 = MEMORY[0x277D84F90];
      sub_22F146A6C(0, v58 - 1, 0);
      v61 = *v170;
      v62 = *(*v170 + 16);
      for (i = 1; i != v58; ++i)
      {
        *v170 = v61;
        v64 = *(v61 + 24);
        if (v62 >= v64 >> 1)
        {
          sub_22F146A6C((v64 > 1), v62 + 1, 1);
          v61 = *v170;
        }

        *(v61 + 16) = v62 + 1;
        *(v61 + 8 * v62++ + 32) = i / v58;
      }

      v60 = MEMORY[0x277D84F90];
    }

    v67 = sub_22F7416C0();

    v172[0] = object;
    v172[1] = 0;
    v172[2] = v67;
    v172[3] = 0;
    LOBYTE(v172[4]) = 0;
    sub_22F1D2178(object, 0);
    sub_22F227010(v170);
    v69 = *&v170[8];
    if (*&v170[8])
    {
      v70 = *v170;
      v71 = *&v170[24];
      v72 = *&v170[32];
      v73 = *&v170[40];
      *&v68 = 134218498;
      v147 = v68;
      while (1)
      {
        v151 = v72;
        v152 = v70;
        v74 = *(v72 + 16);
        v155 = v73;
        if (v74)
        {
          object = v71;
          v174[0] = v60;
          sub_22F146514(0, v74, 0);
          v60 = v174[0];
          v75 = (v72 + 32);
          do
          {
            memcpy(v170, v75, sizeof(v170));
            memcpy(v169, v75, sizeof(v169));
            sub_22F18C4EC(v170, &v168);
            Song.init(_:)(v169);
            v174[0] = v60;
            v77 = *(v60 + 16);
            v76 = *(v60 + 24);
            if (v77 >= v76 >> 1)
            {
              sub_22F146514((v76 > 1), v77 + 1, 1);
              v60 = v174[0];
            }

            *(v60 + 16) = v77 + 1;
            sub_22F294B10(v14, v60 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v77, type metadata accessor for Song);
            v75 += 296;
            --v74;
          }

          while (v74);
          v78 = v166;
          v73 = v155;
        }

        else
        {
          v78 = v166;
        }

        sub_22F1E3F74(v169);
        memcpy(v170, v169, 0x121uLL);
        v79 = sub_22F1EDAB8(v170);
        v80 = v152;
        if (v79 == 1)
        {
          GEOLocationCoordinate2DMake();

          memcpy(&v168, v169, 0x121uLL);
          GEOLocationCoordinate2DMake();
          v167 = *v140;
          v171 = v167;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
          swift_willThrowTypedImpl();

          goto LABEL_23;
        }

        GEOLocationCoordinate2DMake();
        memcpy(&v168, v169, 0x121uLL);
        GEOLocationCoordinate2DMake();
        memcpy(v173, v81, 0x120uLL);
        v82._countAndFlagsBits = v80;
        v82._object = v69;
        v83 = MusicBagContents.personalMixName(for:)(v82);
        countAndFlagsBits = v83.value._countAndFlagsBits;
        memcpy(v174, v173, 0x120uLL);
        sub_22F162EC8(v174);
        object = v83.value._object;
        if (!v83.value._object)
        {

          sub_22F2CE800();
          v167 = swift_allocError();
          swift_willThrow();

          goto LABEL_81;
        }

        sub_22F164408(v80, v69);

        swift_bridgeObjectRelease_n();

        sub_22F741740();
        v84 = v164;
        sub_22F740AC0();
        sub_22F740A90();
        (v159)(v84, v78);
        v85 = v167;
        sub_22F741690();
        v167 = v85;
        if (v85)
        {

          goto LABEL_84;
        }

        v86 = sub_22F7416E0();
        v88 = v87;
        v90 = v89;
        v92 = v91;
        MEMORY[0x28223BE20](v86);
        v93 = object;
        *(&v145 - 14) = countAndFlagsBits;
        *(&v145 - 13) = v93;
        *(&v145 - 11) = 0;
        *(&v145 - 10) = 0;
        *(&v145 - 12) = v163;
        *(&v145 - 9) = v150;
        v152 = v94;
        *(&v145 - 7) = v94;
        *(&v145 - 6) = v60;
        *(&v145 - 10) = 16777472;
        *(&v145 - 4) = v88;
        *(&v145 - 3) = v95;
        *(&v145 - 2) = v96;
        v97 = v167;
        sub_22F7417A0();
        v167 = v97;
        if (v97)
        {
          break;
        }

        sub_22F741730();
        v98 = v164;
        sub_22F740AC0();
        sub_22F740A90();

        (v159)(v98, v166);
        if (qword_2810A9478 != -1)
        {
          swift_once();
        }

        v99 = sub_22F740B90();
        __swift_project_value_buffer(v99, qword_2810B4DC0);

        v100 = object;

        v101 = sub_22F740B70();
        v102 = sub_22F7415C0();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v173[0] = v104;
          *v103 = v147;
          v105 = *(v60 + 16);

          *(v103 + 4) = v105;

          *(v103 + 12) = 2080;
          v106 = sub_22F145F20(countAndFlagsBits, v100, v173);

          *(v103 + 14) = v106;
          *(v103 + 22) = 2080;
          *(v103 + 24) = sub_22F145F20(0x726F46636973756DLL, 0xEB00000000756F59, v173);
          _os_log_impl(&dword_22F0FC000, v101, v102, "Saving %ld of type %s with category %s", v103, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v104, -1, -1);
          MEMORY[0x2319033A0](v103, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        sub_22F227010(v170);
        v70 = *v170;
        v69 = *&v170[8];
        v71 = *&v170[24];
        v72 = *&v170[32];
        v73 = *&v170[40];
        v60 = MEMORY[0x277D84F90];
        if (!*&v170[8])
        {
          goto LABEL_44;
        }
      }

LABEL_84:

      goto LABEL_23;
    }

LABEL_44:

    v107 = v167;
    sub_22F7416A0();
    v167 = v107;
    if (v107)
    {
      sub_22F2CE854(v153, type metadata accessor for CacherStatus);

      goto LABEL_24;
    }

    v113 = v175;
    if (*(v175 + 2))
    {
      v114 = v175 + 56;
      v115 = 1 << v175[32];
      v116 = -1;
      if (v115 < 64)
      {
        v116 = ~(-1 << v115);
      }

      v117 = v116 & *(v175 + 7);
      v118 = (v115 + 63) >> 6;

      v119 = 0;
      v165 = MEMORY[0x277D84F90];
      v166 = v113;
LABEL_55:
      v120 = v119;
      while (v117)
      {
        v119 = v120;
LABEL_62:
        v121 = (*(v113 + 6) + ((v119 << 10) | (16 * __clz(__rbit64(v117)))));
        v122 = *v121;
        v123 = v121[1];
        v124 = *(*(v158 + 16) + OBJC_IVAR___PGMusicBag_atomicMusicBagContents);
        v125 = *(v124 + 312);

        [v125 lock];
        swift_beginAccess();
        memmove(v170, (v124 + 16), 0x121uLL);
        if (sub_22F1EDB8C(v170) == 1)
        {
          memcpy(v169, (v124 + 16), 0x121uLL);
          sub_22F120ADC(v169, &qword_27DAB2458, &qword_22F782A80);
          MusicBag.fetchMusicBagContents()(&v168);
          v167 = v126;
          if (v126)
          {
            v173[0] = v167;
            sub_22F1EDBA0(v173);
            memcpy(v174, v173, 0x121uLL);
            GEOLocationCoordinate2DMake();
            memcpy((v124 + 16), v174, 0x121uLL);
            v167 = 0;
          }

          else
          {
            sub_22F1EDAA8(&v168);
            memcpy(v174, &v168, 0x121uLL);
            GEOLocationCoordinate2DMake();
            memcpy((v124 + 16), v174, 0x121uLL);
          }
        }

        memcpy(&v168, (v124 + 16), 0x121uLL);
        memmove(v169, (v124 + 16), 0x121uLL);
        if (sub_22F1EDB8C(v169) == 1)
        {
          __break(1u);
          return;
        }

        memcpy(v173, &v168, 0x121uLL);
        swift_endAccess();
        v127 = *(v124 + 312);
        sub_22F13BA9C(v173, v172, &qword_27DAB2448, &unk_22F788C80);
        [v127 unlock];

        memcpy(v174, v169, 0x121uLL);
        if (sub_22F1EDAB8(v174) == 1)
        {
          GEOLocationCoordinate2DMake();

          memcpy(v172, v169, 0x121uLL);
          GEOLocationCoordinate2DMake();
          v167 = *v144;
          v171 = v167;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
          swift_willThrowTypedImpl();

          sub_22F2CE854(v153, type metadata accessor for CacherStatus);

          goto LABEL_14;
        }

        GEOLocationCoordinate2DMake();
        if (qword_2810AB5D8 != -1)
        {
          swift_once();
        }

        v117 &= v117 - 1;
        if (!*(off_2810AB5E0 + 2) || (sub_22F1229E8(v122, v123), (v128 & 1) == 0))
        {
          memcpy(v172, v169, 0x121uLL);
          GEOLocationCoordinate2DMake();
          v130 = *v129;
          if (*(*v129 + 16))
          {
            v131 = sub_22F1229E8(v122, v123);
            if (v132)
            {
              v133 = (*(v130 + 56) + 16 * v131);
              v135 = *v133;
              v134 = v133[1];

              sub_22F120ADC(&v168, &qword_27DAB2458, &qword_22F782A80);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v165 = sub_22F13E1A8(0, *(v165 + 2) + 1, 1, v165);
              }

              v113 = v166;
              v137 = *(v165 + 2);
              v136 = *(v165 + 3);
              if (v137 >= v136 >> 1)
              {
                v165 = sub_22F13E1A8((v136 > 1), v137 + 1, 1, v165);
              }

              v138 = v165;
              *(v165 + 2) = v137 + 1;
              v139 = &v138[16 * v137];
              *(v139 + 4) = v135;
              *(v139 + 5) = v134;
              goto LABEL_55;
            }
          }
        }

        sub_22F120ADC(&v168, &qword_27DAB2458, &qword_22F782A80);
        v120 = v119;
        v113 = v166;
      }

      while (1)
      {
        v119 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          __break(1u);
          goto LABEL_94;
        }

        if (v119 >= v118)
        {
          break;
        }

        v117 = *&v114[8 * v119];
        ++v120;
        if (v117)
        {
          goto LABEL_62;
        }
      }

      v141 = sub_22F1515F8(v165);

      v142 = v146;
      v143 = v167;
      sub_22F2CE2C8(v163, v141);
      v167 = v143;
      if (v143)
      {
        sub_22F2CE854(v153, type metadata accessor for CacherStatus);

        goto LABEL_24;
      }
    }

    else
    {

      v142 = v146;
    }

    v161(1, 0);
  }

  else
  {
    v66 = v167;
    sub_22F2CE2C8(v53, v57);
    v167 = v66;
    if (v66)
    {
LABEL_23:
      sub_22F2CE854(v153, type metadata accessor for CacherStatus);
LABEL_24:

LABEL_14:
      v55 = v167;
      v56 = v167;
      v161(0, v55);

      return;
    }

    v108 = v167;
    sub_22F7416A0();
    v167 = v108;
    if (v108)
    {
LABEL_81:
      sub_22F2CE854(v153, type metadata accessor for CacherStatus);
      goto LABEL_14;
    }

    if (qword_2810A9478 != -1)
    {
LABEL_94:
      swift_once();
    }

    v109 = sub_22F740B90();
    __swift_project_value_buffer(v109, qword_2810B4DC0);
    v110 = sub_22F740B70();
    v111 = sub_22F7415E0();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_22F0FC000, v110, v111, "No songs found in the recommended playlist", v112, 2u);
      MEMORY[0x2319033A0](v112, -1, -1);
    }

    v161(1, 0);
  }

  v65 = v153;
LABEL_91:
  sub_22F2CE854(v65, type metadata accessor for CacherStatus);
}