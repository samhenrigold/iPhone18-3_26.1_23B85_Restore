void sub_22F1FE384(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_22F73F690();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          LOBYTE(v34) = sub_22F740DB0();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        LOBYTE(v21) = sub_22F740DB0();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_22F3B662C(&v54, &v53, &v52);
}

void sub_22F1FE978(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v42 = _s29IntermediateTimeExtendedTokenVMa(0);
  MEMORY[0x28223BE20](v42);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v43 - a2;
  if (v43 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v46 = a1;
  v45 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37[1] = v4;
    v22 = a4 + v17;
    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = v22;
      v39 = v23;
      v40 = a4;
      do
      {
        v37[0] = v25;
        v26 = a2;
        v27 = a2 + v23;
        while (1)
        {
          v29 = v43;
          if (v26 <= a1)
          {
            v46 = v26;
            v44 = v37[0];
            goto LABEL_59;
          }

          v38 = v25;
          v43 += v23;
          v30 = v24 + v23;
          sub_22F202F68(v30, v11);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v41;
          sub_22F202F68(v32, v41);
          v35 = sub_22F73F5D0();
          v36 = v34;
          v11 = v33;
          sub_22F202FCC(v36);
          sub_22F202FCC(v33);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v43 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v39;
          if (!v28)
          {
            a2 = v26;
            goto LABEL_58;
          }
        }

        if (v29 < v26 || v43 >= v26)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          v23 = v39;
        }

        else
        {
          v25 = v38;
          v23 = v39;
          a2 = v31;
          if (v29 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_58:
    v46 = a2;
    v44 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v44 = a4 + v16;
    if (v16 >= 1 && a2 < v43)
    {
      do
      {
        sub_22F202F68(a2, v11);
        v20 = v41;
        sub_22F202F68(a4, v41);
        v21 = sub_22F73F5D0();
        sub_22F202FCC(v20);
        sub_22F202FCC(v11);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v46 = a1;
      }

      while (a4 < v18 && a2 < v43);
    }
  }

LABEL_59:
  sub_22F3B66B0(&v46, &v45, &v44);
}

void sub_22F1FEE00(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = _s29IntermediateTimeExtendedTokenVMa(0);
  MEMORY[0x28223BE20](v49);
  v48 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v47 = (&v43 - v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v43 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = (&v43 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_73;
  }

  v20 = (a2 - a1) / v18;
  v52 = a1;
  v51 = a4;
  if (v20 >= v19 / v18)
  {
    v23 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = a4 + v23;
    if (v23 >= 1)
    {
      v31 = -v18;
      v32 = a4 + v23;
      do
      {
        v43 = v30;
        v33 = a2;
        v34 = a2 + v31;
        v45 = v33;
        v46 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v52 = v33;
            v30 = v43;
            goto LABEL_69;
          }

          v35 = a3;
          v44 = v30;
          v36 = v31;
          v37 = v32 + v31;
          v38 = v32 + v31;
          v39 = v47;
          sub_22F202F68(v38, v47);
          v40 = v48;
          sub_22F202F68(v34, v48);
          v41 = *v39 == *v40 && v39[1] == v40[1];
          v42 = v41 ? 0 : sub_22F742040();
          a3 = v35 + v36;
          sub_22F202FCC(v48);
          sub_22F202FCC(v47);
          if (v42)
          {
            break;
          }

          v30 = v37;
          if (v35 < v32 || a3 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v37;
            v34 = v46;
          }

          else
          {
            v34 = v46;
            if (v35 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v30 = v37;
            }
          }

          v32 = v30;
          v31 = v36;
          v33 = v45;
          if (v37 <= a4)
          {
            v52 = v45;
            goto LABEL_69;
          }
        }

        if (v35 < v45 || a3 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v36;
        }

        else
        {
          a2 = v46;
          v31 = v36;
          if (v35 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v32 > a4);
    }

    v52 = a2;
LABEL_69:
    v50 = v30;
  }

  else
  {
    v21 = a2;
    v22 = v20 * v18;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v22;
    v50 = a4 + v22;
    if (v22 >= 1 && v21 < a3)
    {
      v26 = v21;
      while (1)
      {
        v27 = v26;
        sub_22F202F68(v26, v16);
        sub_22F202F68(a4, v13);
        if (*v16 == *v13 && v16[1] == v13[1])
        {
          break;
        }

        v29 = sub_22F742040();
        sub_22F202FCC(v13);
        sub_22F202FCC(v16);
        if ((v29 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (a1 < v27 || a1 >= v27 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v26 = v27 + v18;
LABEL_39:
        a1 += v18;
        v52 = a1;
        if (a4 >= v24 || v26 >= a3)
        {
          goto LABEL_70;
        }
      }

      sub_22F202FCC(v13);
      sub_22F202FCC(v16);
LABEL_31:
      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v51 = a4 + v18;
      a4 += v18;
      v26 = v27;
      goto LABEL_39;
    }
  }

LABEL_70:
  sub_22F3B66B0(&v52, &v51, &v50);
}

void sub_22F1FF2EC(unint64_t a1, char *a2, char *a3, char *a4)
{
  v70 = sub_22F740120();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = &a2[-a1] / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = &a4[v21];
    if (v21 < 1)
    {
      v43 = &a4[v21];
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = &a4[v21];
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = &a2[v41];
          v68 = &a2[v41];
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_22F740110();
            v51 = v50;
            if (v49 == sub_22F740110() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_22F742040();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = &a4[v20];
    v71 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_22F740110();
        v31 = v30;
        if (v29 == sub_22F740110() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_22F742040();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = &v65[v25];
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 = &v65[a4];
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_22F3B66C8(&v73, &v72, &v71);
}

void *sub_22F1FF988(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2528, &unk_22F77A320);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_22F740120();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v31 = &v26 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_22F73FDA0() - 8);
  v33 = (v11 + 48);
  v28 = v11;
  v17 = (v11 + 32);
  v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v32 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v29 = a2;
  v30 = a3;
  v27 = v17;
  while (1)
  {
    sub_22F1F6928(a2, a3, v9);
    if (v3)
    {
      break;
    }

    if ((*v33)(v9, 1, v10) == 1)
    {
      sub_22F120ADC(v9, &qword_27DAB2528, &unk_22F77A320);
    }

    else
    {
      v20 = *v17;
      v21 = v31;
      (*v17)(v31, v9, v10);
      v20(v34, v21, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22F13EA3C(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_22F13EA3C((v22 > 1), v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      v24 = v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23;
      v17 = v27;
      v20(v24, v34, v10);
      a2 = v29;
      a3 = v30;
    }

    v18 += v32;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_22F1FFCAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = objc_opt_self();
  v13 = sub_22F73F5B0();
  v14 = [v12 components:8 fromDate:v13];

  if (v14)
  {
    sub_22F73F1B0();

    v15 = sub_22F73F270();
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  }

  else
  {
    v15 = sub_22F73F270();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  sub_22F2030D4(v8, v11);
  sub_22F73F270();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v11, 1, v15) == 1)
  {
    sub_22F120ADC(v11, &qword_27DAB1EB8, &unk_22F77A2D0);
LABEL_7:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v22 = sub_22F740B90();
    __swift_project_value_buffer(v22, qword_2810B4D00);
    v23 = sub_22F740B70();
    v24 = sub_22F7415E0();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "monthAndYear: Couldn't extract month from date!";
LABEL_11:
    _os_log_impl(&dword_22F0FC000, v23, v24, v26, v25, 2u);
    MEMORY[0x2319033A0](v25, -1, -1);
LABEL_12:

    return 0;
  }

  v36 = v2;
  v35 = sub_22F73F210();
  v19 = v18;
  v20 = v11;
  v21 = *(v16 + 8);
  v21(v20, v15);
  if (v19)
  {
    goto LABEL_7;
  }

  v28 = sub_22F73F5B0();
  v29 = [v12 components:4 fromDate:v28];

  if (v29)
  {
    v30 = v36;
    sub_22F73F1B0();

    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v36;
  }

  (*(v16 + 56))(v30, v31, 1, v15);
  sub_22F2030D4(v30, v5);
  if (v17(v5, 1, v15) == 1)
  {
    sub_22F120ADC(v5, &qword_27DAB1EB8, &unk_22F77A2D0);
LABEL_19:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v34 = sub_22F740B90();
    __swift_project_value_buffer(v34, qword_2810B4D00);
    v23 = sub_22F740B70();
    v24 = sub_22F7415E0();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_12;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = "monthAndYear: Couldn't extract year from date!";
    goto LABEL_11;
  }

  sub_22F73F1F0();
  v33 = v32;
  v21(v5, v15);
  if (v33)
  {
    goto LABEL_19;
  }

  return v35;
}

void *sub_22F200178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0BC8, &unk_22F77A300);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = _s29IntermediateTimeExtendedTokenVMa(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 72);
    v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v21;
    v15 = (v9 + 48);
    v16 = MEMORY[0x277D84F90];
    v22 = v7;
    v23 = v5;
    do
    {
      sub_22F1F92EC(v4);
      if ((*v15)(v4, 1, v5) == 1)
      {
        sub_22F120ADC(v4, &qword_27DAB0BC8, &unk_22F77A300);
      }

      else
      {
        sub_22F202F04(v4, v11);
        sub_22F202F04(v11, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_22F13EA64(0, v16[2] + 1, 1, v16);
        }

        v18 = v16[2];
        v17 = v16[3];
        if (v18 >= v17 >> 1)
        {
          v16 = sub_22F13EA64((v17 > 1), v18 + 1, 1, v16);
        }

        v16[2] = v18 + 1;
        v7 = v22;
        sub_22F202F04(v22, v16 + v21 + v18 * v13);
        v5 = v23;
      }

      v14 += v13;
      --v12;
    }

    while (v12);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v24 = v16;

  sub_22F1FAE28(&v24);

  return v24;
}

uint64_t sub_22F200404(uint64_t a1)
{
  v45 = _s29IntermediateTimeExtendedTokenVMa(0);
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v41 - v5;
  MEMORY[0x28223BE20](v6);
  v46 = &v41 - v7;
  v8 = 0;
  v49 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  while (v9 != v8)
  {
    v10 = v8 + 1;
    sub_22F1F9B54(&v49, a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8);
    v8 = v10;
  }

  v11 = v49;
  v12 = v49[2];
  if (v12)
  {
    v13 = sub_22F10B454(v49[2], 0);
    sub_22F11B0C0(&v49, v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v12, v11);
    v44 = v14;
    v15 = v49;
    swift_bridgeObjectRetain_n();
    sub_22F0FF590(v15);
    if (v44 == v12)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v13 = MEMORY[0x277D84F90];
LABEL_8:
  v49 = v13;
  sub_22F1FAF0C(&v49);
  swift_bridgeObjectRelease_n();
  v16 = v49;
  v17 = v49[2];
  if (v17 > 3)
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v18 = sub_22F740B90();
    __swift_project_value_buffer(v18, qword_2810B4D00);
    v19 = sub_22F740B70();
    v20 = sub_22F7415F0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v17;
      _os_log_impl(&dword_22F0FC000, v19, v20, "Too many years (%ld), opting for Over the Years token instead.", v21, 0xCu);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    v22 = *(v16 + 16);
    if (v22)
    {
      v23 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v24 = v46;
      sub_22F202F68(v16 + v23, v46);
      v44 = *(v2 + 72);
      v25 = v47;
      sub_22F202F68(v16 + v23 + v44 * (v22 - 1), v47);

      v26 = sub_22F7404E0();
      v42 = v27;
      v43 = v26;
      v28 = v45;
      v29 = *(v45 + 28);
      v30 = *MEMORY[0x277D3C728];
      v31 = sub_22F740890();
      v32 = v48;
      (*(*(v31 - 8) + 104))(&v48[v29], v30, v31);
      v33 = *(v28 + 32);
      v34 = sub_22F73F690();
      v35 = *(*(v34 - 8) + 16);
      v35(v32 + v33, v24 + v33, v34);
      v35(v32 + *(v28 + 36), v25 + *(v28 + 36), v34);
      v36 = v42;
      *v32 = v43;
      *(v32 + 8) = v36;
      *(v32 + 16) = 0;
      *(v32 + 24) = 1;
      *(v32 + 32) = 0;
      *(v32 + 40) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0720, &unk_22F771730);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_22F771340;
      sub_22F202F04(v32, v16 + v23);
      sub_22F202FCC(v25);
      sub_22F202FCC(v24);
    }

    else
    {
      v37 = sub_22F740B70();
      v38 = sub_22F7415E0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_22F0FC000, v37, v38, "Could not get first and last time token!", v39, 2u);
        MEMORY[0x2319033A0](v39, -1, -1);
      }
    }
  }

  return v16;
}

uint64_t sub_22F2008E8(uint64_t a1)
{
  v2 = sub_22F73F990();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0668, &unk_22F77A310);
    v9 = sub_22F741AD0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_22F20308C(&qword_2810AC6D0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v15 = sub_22F740D40();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v17 * v13, v2);
          sub_22F20308C(&unk_2810AC6C0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_22F740DE0();
          v24 = *v14;
          (*v14)(v5, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22F200C0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  MEMORY[0x28223BE20](v2 - 8);
  v275 = &v246 - v3;
  v274 = sub_22F73F270();
  v261 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v297 = &v246 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = sub_22F740890();
  v5 = *(v279 - 8);
  MEMORY[0x28223BE20](v279);
  v296 = &v246 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_22F740270();
  v260 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v295 = &v246 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_22F740120();
  v276 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v9 = &v246 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2518, &qword_22F77A2E8);
  MEMORY[0x28223BE20](v287);
  v286 = (&v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v285 = (&v246 - v12);
  MEMORY[0x28223BE20](v13);
  v284 = (&v246 - v14);
  MEMORY[0x28223BE20](v15);
  v283 = &v246 - v16;
  v301 = _s29IntermediateTimeExtendedTokenVMa(0);
  v269 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v271 = (&v246 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = &v246 - v19;
  MEMORY[0x28223BE20](v21);
  v290 = &v246 - v22;
  MEMORY[0x28223BE20](v23);
  v265 = &v246 - v24;
  MEMORY[0x28223BE20](v25);
  v299 = &v246 - v26;
  MEMORY[0x28223BE20](v27);
  v264 = &v246 - v28;
  MEMORY[0x28223BE20](v29);
  v289 = &v246 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v246 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v246 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v246 - v38;
  v303 = sub_22F73F690();
  v288 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v41 = &v246 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  *&v292 = &v246 - v43;
  MEMORY[0x28223BE20](v44);
  v300 = &v246 - v45;
  MEMORY[0x28223BE20](v46);
  v294 = &v246 - v47;
  MEMORY[0x28223BE20](v48);
  v302 = &v246 - v49;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2520, &unk_22F77A2F0);
  *&v50 = MEMORY[0x28223BE20](v281).n128_u64[0];
  v280 = &v246 - v51;
  if ([a1 count] < 1)
  {
    if (qword_2810A9418 == -1)
    {
LABEL_34:
      v118 = sub_22F740B90();
      __swift_project_value_buffer(v118, qword_2810B4D00);
      v119 = sub_22F740B70();
      v120 = sub_22F7415C0();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 0;
        _os_log_impl(&dword_22F0FC000, v119, v120, "No moments passed into generateTimeCollectionExtendedTokens, returning", v121, 2u);
        MEMORY[0x2319033A0](v121, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_134:
    swift_once();
    goto LABEL_34;
  }

  v258 = v39;
  v257 = v36;
  v259 = v5;
  v282 = v41;
  v304 = v33;
  v270 = v9;
  v52 = MEMORY[0x277D84F90];
  v313 = MEMORY[0x277D84F90];
  v53 = swift_allocObject();
  *(v53 + 16) = &v313;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_22F203278;
  *(v54 + 24) = v53;
  v263 = v53;
  v311 = sub_22F202EE0;
  v312 = v54;
  aBlock = MEMORY[0x277D85DD0];
  v308 = 1107296256;
  v309 = sub_22F358104;
  v310 = &block_descriptor_30;
  v55 = _Block_copy(&aBlock);

  [a1 enumerateLocalStartDatesUsingBlock_];
  _Block_release(v55);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
    goto LABEL_132;
  }

  v306 = v52;
  v56 = swift_allocObject();
  *(v56 + 16) = &v306;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_22F202EE8;
  *(v57 + 24) = v56;
  v262 = v56;
  v311 = sub_22F20328C;
  v312 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v308 = 1107296256;
  v309 = sub_22F358104;
  v310 = &block_descriptor_40_0;
  v58 = _Block_copy(&aBlock);

  [a1 enumerateLocalEndDatesUsingBlock_];
  _Block_release(v58);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v60 = v313;
  v61 = *(v313 + 2);
  v62 = v306;
  if (v61 != *(v306 + 16))
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v122 = sub_22F740B90();
    __swift_project_value_buffer(v122, qword_2810B4D00);
    v123 = sub_22F740B70();
    v124 = sub_22F7415E0();
    if (!os_log_type_enabled(v123, v124))
    {
      goto LABEL_102;
    }

    v125 = swift_slowAlloc();
    *v125 = 0;
    v126 = "Moment nodes in collection had a different number of start and end dates!";
    goto LABEL_101;
  }

  v63 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D3C750];
  v293 = v20;
  if (!v61)
  {
    v256 = 0x7FFFFFFFFFFFFFFFLL;
    v255 = 0x8000000000000000;
    v66 = v269;
    goto LABEL_44;
  }

  v65 = 0;
  v291 = v288 + 16;
  v267 = (v288 + 32);
  v278 = (v288 + 8);
  v254 = *MEMORY[0x277D3C750];
  v253 = (v259 + 104);
  v252 = v61 - 1;
  v255 = 0x8000000000000000;
  v256 = 0x7FFFFFFFFFFFFFFFLL;
  v66 = v269;
  v277 = v60;
  v268 = v62;
  v266 = v61;
LABEL_7:
  v67 = v65;
  v298 = v63;
  while (1)
  {
    if (v67 >= *(v60 + 2))
    {
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
      goto LABEL_133;
    }

    v70 = (*(v288 + 80) + 32) & ~*(v288 + 80);
    v71 = *(v288 + 72) * v67;
    v72 = *(v288 + 16);
    v72(v302, &v60[v70 + v71], v303);
    v73 = v62[2];
    if (v67 == v73)
    {
      break;
    }

    if (v67 >= v73)
    {
      goto LABEL_128;
    }

    v74 = v62 + v70;
    v75 = *(v281 + 48);
    v76 = *v267;
    v77 = v280;
    v78 = v303;
    (*v267)(v280, v302, v303);
    v72(&v77[v75], &v74[v71], v78);
    v76(v294, v77, v78);
    v76(v300, &v77[v75], v78);
    v79 = sub_22F1FFCAC();
    if ((v81 & 1) == 0)
    {
      v82 = v79;
      v83 = v80;
      v84 = sub_22F1FFCAC();
      if ((v86 & 1) == 0)
      {
        v92 = v85;
        v251 = v84;
        v305 = v82;
        aBlock = sub_22F742010();
        v308 = v93;
        MEMORY[0x231900B10](32, 0xE100000000000000);
        v305 = v83;
        v94 = sub_22F742010();
        MEMORY[0x231900B10](v94);

        v95 = v308;
        v250 = aBlock;
        v96 = v301;
        v97 = v258;
        v98 = &v258[*(v301 + 28)];
        v249 = *v253;
        v249(v98, v254, v279);
        v99 = v303;
        v72((v97 + *(v96 + 32)), v294, v303);
        v72((v97 + *(v96 + 36)), v300, v99);
        *v97 = v250;
        *(v97 + 8) = v95;
        *(v97 + 16) = v82;
        *(v97 + 24) = 0;
        v250 = v83;
        *(v97 + 32) = v83;
        *(v97 + 40) = 0;
        v63 = v298;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_22F13EA64(0, v63[2] + 1, 1, v63);
        }

        v66 = v269;
        v60 = v277;
        v101 = v63[2];
        v100 = v63[3];
        if (v101 >= v100 >> 1)
        {
          v63 = sub_22F13EA64((v100 > 1), v101 + 1, 1, v63);
        }

        v63[2] = v101 + 1;
        v102 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v103 = *(v66 + 72);
        sub_22F202F04(v258, v63 + v102 + v103 * v101);
        if (v82 == v251)
        {
          v104 = *v278;
          v105 = v303;
          (*v278)(v300, v303);
          v104(v294, v105);
          v62 = v268;
        }

        else
        {
          v248 = v103;
          v298 = v102;
          v305 = v251;
          aBlock = sub_22F742010();
          v308 = v106;
          MEMORY[0x231900B10](32, 0xE100000000000000);
          v305 = v92;
          v107 = sub_22F742010();
          MEMORY[0x231900B10](v107);

          v108 = v308;
          v247 = aBlock;
          v109 = v301;
          v110 = v257;
          v249(&v257[*(v301 + 28)], v254, v279);
          v111 = v303;
          v72((v110 + *(v109 + 32)), v294, v303);
          v72((v110 + *(v109 + 36)), v300, v111);
          *v110 = v247;
          *(v110 + 8) = v108;
          *(v110 + 16) = v251;
          *(v110 + 24) = 0;
          *(v110 + 32) = v92;
          *(v110 + 40) = 0;
          v113 = v63[2];
          v112 = v63[3];
          v251 = v113 + 1;
          if (v113 >= v112 >> 1)
          {
            v63 = sub_22F13EA64((v112 > 1), v113 + 1, 1, v63);
          }

          v62 = v268;
          v114 = *v278;
          v115 = v303;
          (*v278)(v300, v303);
          v114(v294, v115);
          v63[2] = v251;
          sub_22F202F04(v257, v298 + v63 + v113 * v248);
          v66 = v269;
        }

        v65 = v67 + 1;
        v116 = v256;
        if (v250 < v256)
        {
          v116 = v250;
        }

        v256 = v116;
        v117 = v255;
        if (v92 > v255)
        {
          v117 = v92;
        }

        v255 = v117;
        v64 = MEMORY[0x277D3C750];
        if (v252 == v67)
        {
          goto LABEL_44;
        }

        goto LABEL_7;
      }
    }

    v63 = v298;
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v87 = sub_22F740B90();
    __swift_project_value_buffer(v87, qword_2810B4D00);
    v88 = sub_22F740B70();
    v89 = sub_22F7415E0();
    v90 = os_log_type_enabled(v88, v89);
    v60 = v277;
    if (v90)
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_22F0FC000, v88, v89, "Couldn't extract month and/or year from date!", v91, 2u);
      MEMORY[0x2319033A0](v91, -1, -1);
    }

    ++v67;

    v68 = *v278;
    v69 = v303;
    (*v278)(v300, v303);
    v68(v294, v69);
    v62 = v268;
    if (v266 == v67)
    {
      goto LABEL_43;
    }
  }

  (*v278)(v302, v303);
LABEL_43:
  v64 = MEMORY[0x277D3C750];
LABEL_44:

  v294 = v63[2];
  if (!v294)
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v224 = sub_22F740B90();
    __swift_project_value_buffer(v224, qword_2810B4D00);
    v123 = sub_22F740B70();
    v124 = sub_22F7415E0();
    if (!os_log_type_enabled(v123, v124))
    {
      goto LABEL_102;
    }

    v125 = swift_slowAlloc();
    *v125 = 0;
    v126 = "No intermediate time tokens created from moment node collection, returning!";
LABEL_101:
    _os_log_impl(&dword_22F0FC000, v123, v124, v126, v125, 2u);
    MEMORY[0x2319033A0](v125, -1, -1);
LABEL_102:

    return MEMORY[0x277D84F90];
  }

  v127 = 0;
  v280 = (v288 + 16);
  LODWORD(v278) = *v64;
  v277 = (v259 + 104);
  v268 = (v288 + 8);
  v128 = MEMORY[0x277D84F98];
  v298 = v63;
  do
  {
    if (v127 >= v63[2])
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v300 = ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v129 = *(v66 + 72);
    v130 = v304;
    sub_22F202F68(&v300[v63 + v129 * v127], v304);
    v131 = *v130;
    v132 = v130[1];
    v133 = *(v128 + 16);

    if (v133)
    {
      v134 = sub_22F1229E8(v131, v132);
      if (v135)
      {
        v136 = *(v128 + 56);
        v302 = v129;
        v137 = v264;
        sub_22F202F68(v136 + v134 * v129, v264);
        v138 = v289;
        sub_22F202F04(v137, v289);
        v139 = v301;
        v140 = *(v301 + 32);
        v288 = v132;
        v141 = v138 + v140;
        v142 = v304 + v140;
        v281 = sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v291 = v131;
        v143 = v303;
        v144 = sub_22F740DB0();
        v145 = *v280;
        if (v144)
        {
          v146 = v142;
        }

        else
        {
          v146 = v141;
        }

        v145(v292, v146, v143);
        v147 = v139[9];
        v148 = v138 + v147;
        v149 = v304;
        v150 = v304 + v147;
        if (sub_22F740DC0())
        {
          v151 = v150;
        }

        else
        {
          v151 = v148;
        }

        v152 = v282;
        v145(v282, v151, v143);
        v153 = v265;
        (*v277)(&v265[v139[7]], v278, v279);
        v145(v153 + v139[8], v292, v143);
        v154 = v143;
        v155 = v291;
        v145(v153 + v139[9], v152, v154);
        v156 = *(v149 + 16);
        v157 = *(v149 + 24);
        v158 = *(v149 + 32);
        v159 = *(v149 + 40);
        v160 = v288;
        *v153 = v155;
        *(v153 + 8) = v160;
        *(v153 + 16) = v156;
        *(v153 + 24) = v157;
        *(v153 + 32) = v158;
        *(v153 + 40) = v159;
        sub_22F202F04(v153, v290);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v128;
        v162 = v160;
        v163 = sub_22F1229E8(v155, v160);
        v165 = *(v128 + 16);
        v166 = (v164 & 1) == 0;
        v167 = __OFADD__(v165, v166);
        v168 = v165 + v166;
        if (v167)
        {
          goto LABEL_130;
        }

        v169 = v164;
        if (*(v128 + 24) >= v168)
        {
          v63 = v298;
          v66 = v269;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v188 = v163;
            sub_22F1353B8();
            v163 = v188;
            v128 = aBlock;
            if (v169)
            {
              goto LABEL_73;
            }

            goto LABEL_75;
          }
        }

        else
        {
          sub_22F1275D0(v168, isUniquelyReferenced_nonNull_native);
          v163 = sub_22F1229E8(v155, v160);
          v63 = v298;
          v66 = v269;
          if ((v169 & 1) != (v170 & 1))
          {
            goto LABEL_135;
          }
        }

        v128 = aBlock;
        if (v169)
        {
LABEL_73:
          sub_22F203028(v290, *(v128 + 56) + v163 * v302);

LABEL_77:
          v192 = *v268;
          v193 = v303;
          (*v268)(v282, v303);
          v192(v292, v193);
          sub_22F202FCC(v289);
          v183 = v302;
          goto LABEL_48;
        }

LABEL_75:
        *(v128 + 8 * (v163 >> 6) + 64) |= 1 << v163;
        v189 = (*(v128 + 48) + 16 * v163);
        *v189 = v155;
        v189[1] = v162;
        sub_22F202F04(v290, *(v128 + 56) + v163 * v302);
        v190 = *(v128 + 16);
        v167 = __OFADD__(v190, 1);
        v191 = v190 + 1;
        if (v167)
        {
          goto LABEL_131;
        }

        *(v128 + 16) = v191;
        goto LABEL_77;
      }
    }

    v171 = v63;
    sub_22F202F68(v304, v299);
    v172 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v128;
    v173 = v131;
    v174 = v131;
    v175 = v132;
    v176 = sub_22F1229E8(v174, v132);
    v178 = *(v128 + 16);
    v179 = (v177 & 1) == 0;
    v167 = __OFADD__(v178, v179);
    v180 = v178 + v179;
    if (v167)
    {
      goto LABEL_120;
    }

    v181 = v177;
    if (*(v128 + 24) >= v180)
    {
      if ((v172 & 1) == 0)
      {
        v187 = v176;
        sub_22F1353B8();
        v176 = v187;
      }
    }

    else
    {
      sub_22F1275D0(v180, v172);
      v176 = sub_22F1229E8(v173, v175);
      if ((v181 & 1) != (v182 & 1))
      {
LABEL_135:
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }
    }

    v183 = v129;
    v128 = aBlock;
    if (v181)
    {
      sub_22F203028(v299, *(aBlock + 56) + v176 * v129);
    }

    else
    {
      *(aBlock + 8 * (v176 >> 6) + 64) |= 1 << v176;
      v184 = (*(v128 + 48) + 16 * v176);
      *v184 = v173;
      v184[1] = v175;
      sub_22F202F04(v299, *(v128 + 56) + v176 * v129);
      v185 = *(v128 + 16);
      v167 = __OFADD__(v185, 1);
      v186 = v185 + 1;
      if (v167)
      {
        goto LABEL_129;
      }

      *(v128 + 16) = v186;
    }

    v63 = v171;
LABEL_48:
    ++v127;
    sub_22F202FCC(v304);
  }

  while (v294 != v127);
  v194 = *(v128 + 16);
  if (v194)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_22F1467B8(0, v194, 0);
    v195 = aBlock;
    v196 = v128 + 64;
    v197 = sub_22F741980();
    v198 = 0;
    v304 = *(v128 + 36);
    v290 = v128 + 72;
    v302 = v183;
    v291 = v194;
    *&v292 = v128 + 64;
    while ((v197 & 0x8000000000000000) == 0 && v197 < 1 << *(v128 + 32))
    {
      v201 = v197 >> 6;
      if ((*(v196 + 8 * (v197 >> 6)) & (1 << v197)) == 0)
      {
        goto LABEL_122;
      }

      if (v304 != *(v128 + 36))
      {
        goto LABEL_123;
      }

      v299 = 1 << v197;
      v294 = v198;
      v202 = v183;
      v303 = v195;
      v203 = v287;
      v204 = *(v287 + 48);
      v205 = (*(v128 + 48) + 16 * v197);
      v207 = *v205;
      v206 = v205[1];
      v208 = v283;
      sub_22F202F68(*(v128 + 56) + v202 * v197, &v283[v204]);
      v209 = v284;
      *v284 = v207;
      *(v209 + 8) = v206;
      sub_22F202F04(&v208[v204], v209 + *(v203 + 48));
      v210 = v285;
      sub_22F13BA9C(v209, v285, &qword_27DAB2518, &qword_22F77A2E8);
      v211 = v210[1];
      v212 = *(v203 + 48);
      v213 = v286;
      *v286 = *v210;
      v213[1] = v211;
      sub_22F202F04(v210 + v212, v213 + v212);
      sub_22F202F68(v213 + v212, v293);

      v214 = v213;
      v195 = v303;
      sub_22F120ADC(v214, &qword_27DAB2518, &qword_22F77A2E8);
      sub_22F120ADC(v209, &qword_27DAB2518, &qword_22F77A2E8);
      aBlock = v195;
      v216 = *(v195 + 16);
      v215 = *(v195 + 24);
      if (v216 >= v215 >> 1)
      {
        sub_22F1467B8((v215 > 1), v216 + 1, 1);
        v195 = aBlock;
      }

      *(v195 + 16) = v216 + 1;
      v183 = v302;
      sub_22F202F04(v293, &v300[v195 + v216 * v302]);
      v199 = 1 << *(v128 + 32);
      if (v197 >= v199)
      {
        goto LABEL_124;
      }

      v196 = v292;
      v217 = *(v292 + 8 * v201);
      if ((v217 & v299) == 0)
      {
        goto LABEL_125;
      }

      if (v304 != *(v128 + 36))
      {
        goto LABEL_126;
      }

      v218 = v217 & (-2 << (v197 & 0x3F));
      if (v218)
      {
        v199 = __clz(__rbit64(v218)) | v197 & 0x7FFFFFFFFFFFFFC0;
        v200 = v291;
      }

      else
      {
        v219 = v201 << 6;
        v220 = v201 + 1;
        v221 = (v290 + 8 * v201);
        v200 = v291;
        while (v220 < (v199 + 63) >> 6)
        {
          v223 = *v221++;
          v222 = v223;
          v219 += 64;
          ++v220;
          if (v223)
          {
            sub_22F107D18(v197, v304, 0);
            v199 = __clz(__rbit64(v222)) + v219;
            goto LABEL_81;
          }
        }

        sub_22F107D18(v197, v304, 0);
      }

LABEL_81:
      v198 = v294 + 1;
      v197 = v199;
      if (v294 + 1 == v200)
      {

        goto LABEL_107;
      }
    }

    goto LABEL_121;
  }

  v195 = MEMORY[0x277D84F90];
LABEL_107:
  if (v256 == v255 && *(v195 + 16) <= 5uLL)
  {
    v227 = sub_22F200178(v195);
  }

  else
  {
    v227 = sub_22F200404(v195);
  }

  v228 = v227;

  v229 = *(v228 + 16);
  if (v229)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_22F146774(0, v229, 0);
    v225 = aBlock;
    v265 = v228;
    v230 = &v300[v228];
    LODWORD(v269) = *MEMORY[0x277D3C2B0];
    v268 = (v260 + 104);
    LODWORD(v304) = *MEMORY[0x277CC9988];
    LODWORD(v303) = *MEMORY[0x277CC9998];
    LODWORD(v300) = *MEMORY[0x277CC9968];
    LODWORD(v299) = *MEMORY[0x277CC9980];
    v267 = (v261 + 56);
    v266 = v276 + 32;
    LODWORD(v294) = *MEMORY[0x277CC99A0];
    LODWORD(v293) = *MEMORY[0x277CC99A8];
    v292 = xmmword_22F777170;
    v302 = v183;
    do
    {
      v290 = v229;
      v291 = v225;
      v289 = v230;
      v231 = v271;
      sub_22F202F68(v230, v271);
      v232 = v231[1];
      v288 = *v231;
      v287 = v232;
      (*v268)(v295, v269, v273);
      (*v277)(v296, v278, v279);
      v286 = *(v301 + 32);
      v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
      v233 = sub_22F73F990();
      v234 = *(v233 - 8);
      v235 = *(v234 + 72);
      v236 = *(v234 + 80);
      v283 = (((v236 + 32) & ~v236) + 6 * v235);
      v285 = ((v236 + 32) & ~v236);
      v237 = swift_allocObject();
      *(v237 + 16) = v292;
      v238 = v237 + ((v236 + 32) & ~v236);
      v239 = *(v234 + 104);
      v239(v238, v304, v233);
      v239(v238 + v235, v303, v233);
      v280 = (2 * v235);
      v239(v238 + 2 * v235, v300, v233);
      v282 = 3 * v235;
      v239(v238 + 3 * v235, v299, v233);
      v239(v238 + 4 * v235, v294, v233);
      v281 = 5 * v235;
      v239(v238 + 5 * v235, v293, v233);

      sub_22F2008E8(v237);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22F7405A0();

      v240 = swift_allocObject();
      *(v240 + 16) = v292;
      v241 = v285 + v240;
      v239(v285 + v240, v304, v233);
      v239(&v241[v235], v303, v233);
      v239(&v280[v241], v300, v233);
      v239(&v241[v282], v299, v233);
      v239(&v241[4 * v235], v294, v233);
      v239(&v241[v281], v293, v233);
      v225 = v291;
      sub_22F2008E8(v240);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v242 = v275;
      sub_22F7405A0();

      (*v267)(v242, 0, 1, v274);
      v243 = v270;
      sub_22F740100();
      sub_22F202FCC(v231);
      aBlock = v225;
      v245 = *(v225 + 16);
      v244 = *(v225 + 24);
      if (v245 >= v244 >> 1)
      {
        sub_22F146774((v244 > 1), v245 + 1, 1);
        v225 = aBlock;
      }

      *(v225 + 16) = v245 + 1;
      (*(v276 + 32))(v225 + ((*(v276 + 80) + 32) & ~*(v276 + 80)) + *(v276 + 72) * v245, v243, v272);
      v230 = &v302[v289];
      v229 = v290 - 1;
    }

    while (v290 != 1);
  }

  else
  {

    v225 = MEMORY[0x277D84F90];
  }

  return v225;
}

uint64_t _s29IntermediateTimeExtendedTokenVMa(uint64_t a1)
{
  result = qword_27DAB2530;
  if (!qword_27DAB2530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F202F04(uint64_t a1, uint64_t a2)
{
  v4 = _s29IntermediateTimeExtendedTokenVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F202F68(uint64_t a1, uint64_t a2)
{
  v4 = _s29IntermediateTimeExtendedTokenVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F202FCC(uint64_t a1)
{
  v2 = _s29IntermediateTimeExtendedTokenVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F203028(uint64_t a1, uint64_t a2)
{
  v4 = _s29IntermediateTimeExtendedTokenVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F20308C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22F2030D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22F20316C(uint64_t a1)
{
  sub_22F203218();
  if (v1 <= 0x3F)
  {
    sub_22F740890();
    if (v2 <= 0x3F)
    {
      sub_22F73F690();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22F203218()
{
  if (!qword_27DAB2540)
  {
    v0 = sub_22F741860();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAB2540);
    }
  }
}

void *sub_22F203290(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v119 = a1;
  v106 = sub_22F73F7A0();
  v7 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24B8, &qword_22F779E68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v99 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  MEMORY[0x28223BE20](v12 - 8);
  isUniquelyReferenced_nonNull_native = &v99 - v13;
  v15 = sub_22F73F7C0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Song(0);
  v118 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v120 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v115 = &v99 - v21;
  MEMORY[0x28223BE20](v22);
  v116 = &v99 - v23;
  MEMORY[0x28223BE20](v24);
  v117 = &v99 - v25;
  MEMORY[0x28223BE20](v26);
  v113 = &v99 - v27;
  if (qword_2810A9B78 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v28 = qword_2810B4E60;
    *&v29 = CACurrentMediaTime();
    sub_22F1B560C("Locale Music Ranker", 19, 2u, v29, 0, v28, v121);
    v30 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_inferredUserLanguageCodes);
    if (v30)
    {
      a2 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode);
      if (a2)
      {
        break;
      }
    }

    v4 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_configuration + 336);
    if (qword_2810A9460 != -1)
    {
LABEL_88:
      swift_once();
    }

    v47 = sub_22F740B90();
    __swift_project_value_buffer(v47, qword_2810B4D90);
    v48 = sub_22F740B70();
    a2 = sub_22F7415C0();
    if (os_log_type_enabled(v48, a2))
    {
      isUniquelyReferenced_nonNull_native = swift_slowAlloc();
      *isUniquelyReferenced_nonNull_native = 134217984;
      *(isUniquelyReferenced_nonNull_native + 4) = v4;
      _os_log_impl(&dword_22F0FC000, v48, a2, "[MemoriesMusic] LocaleMusicRanker producing default scores of %f because the graph is not available.", isUniquelyReferenced_nonNull_native, 0xCu);
      MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
    }

    v15 = v119 + 56;
    v49 = 1 << *(v119 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v18 = v50 & *(v119 + 56);
    v7 = (v49 + 63) >> 6;

    v51 = 0;
    v16 = MEMORY[0x277D84F98];
    if (v18)
    {
      while (1)
      {
        a3 = v51;
LABEL_33:
        v11 = *(v118 + 72);
        v52 = v115;
        sub_22F15CAA0(*(v119 + 48) + v11 * (__clz(__rbit64(v18)) | (a3 << 6)), v115);
        v53 = v52;
        v54 = v120;
        sub_22F15CB04(v53, v120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122 = v16;
        a2 = v16;
        v55 = sub_22F122A14(v54);
        v57 = v16[2];
        v58 = (v56 & 1) == 0;
        v45 = __OFADD__(v57, v58);
        v59 = v57 + v58;
        if (v45)
        {
          break;
        }

        v60 = v56;
        if (v16[3] >= v59)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            a2 = &v122;
            isUniquelyReferenced_nonNull_native = v55;
            sub_22F134678();
            v55 = isUniquelyReferenced_nonNull_native;
          }
        }

        else
        {
          sub_22F125F5C(v59, isUniquelyReferenced_nonNull_native);
          a2 = v122;
          v55 = sub_22F122A14(v120);
          if ((v60 & 1) != (v61 & 1))
          {
            goto LABEL_89;
          }
        }

        v18 &= v18 - 1;
        v16 = v122;
        if (v60)
        {
          *(v122[7] + 4 * v55) = v4;
          sub_22F15CBD8(v120);
          v51 = a3;
          if (!v18)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v122[(v55 >> 6) + 8] |= 1 << v55;
          v62 = v55;
          a2 = v120;
          sub_22F15CAA0(v120, v16[6] + v55 * v11);
          *(v16[7] + 4 * v62) = v4;
          sub_22F15CBD8(a2);
          v63 = v16[2];
          v45 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v45)
          {
            goto LABEL_84;
          }

          v16[2] = v64;
          v51 = a3;
          if (!v18)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
LABEL_30:
      while (1)
      {
        a3 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (a3 >= v7)
        {
          goto LABEL_75;
        }

        v18 = *(v15 + 8 * a3);
        ++v51;
        if (v18)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  v99 = v16;
  v109 = a3;
  v110 = v7;
  v104 = v18;
  v115 = v15;
  v103 = isUniquelyReferenced_nonNull_native;
  v102 = v11;
  v31 = (v30 + 7);
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v7 = v33 & v30[7];
  v16 = ((v32 + 63) >> 6);

  v34 = 0;
  v15 = v116;
  v120 = (v30 + 7);
  v111 = v30;
  while (v7)
  {
    v18 = v34;
LABEL_14:
    v35 = (v30[6] + ((v18 << 10) | (16 * __clz(__rbit64(v7)))));
    a3 = *v35;
    v11 = v35[1];

    v15 = swift_isUniquelyReferenced_nonNull_native();
    v122 = a2;
    isUniquelyReferenced_nonNull_native = sub_22F1229E8(a3, v11);
    v37 = a2[2];
    v38 = (v36 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      goto LABEL_82;
    }

    v40 = v36;
    if (a2[3] >= v39)
    {
      if ((v15 & 1) == 0)
      {
        sub_22F1350D0();
      }
    }

    else
    {
      sub_22F127068(v39, v15);
      v41 = sub_22F1229E8(a3, v11);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_90;
      }

      isUniquelyReferenced_nonNull_native = v41;
    }

    v15 = v116;
    v7 &= v7 - 1;
    if (v40)
    {

      a2 = v122;
      *(v122[7] + 4 * isUniquelyReferenced_nonNull_native) = 0;
    }

    else
    {
      a2 = v122;
      v122[(isUniquelyReferenced_nonNull_native >> 6) + 8] |= 1 << isUniquelyReferenced_nonNull_native;
      v43 = (a2[6] + 16 * isUniquelyReferenced_nonNull_native);
      *v43 = a3;
      v43[1] = v11;
      *(a2[7] + 4 * isUniquelyReferenced_nonNull_native) = 0;
      v44 = a2[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      a2[2] = v46;
    }

    v34 = v18;
    v30 = v111;
    v31 = v120;
  }

  while (1)
  {
    v18 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_79;
    }

    if (v18 >= v16)
    {
      break;
    }

    v7 = *(v31 + 8 * v18);
    ++v34;
    if (v7)
    {
      goto LABEL_14;
    }
  }

  v4 = *(v109 + OBJC_IVAR___PGMusicCuratorContext_configuration + 336);
  v65 = v119 + 56;
  v66 = 1 << *(v119 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v11 = v67 & *(v119 + 56);
  v68 = (v66 + 63) >> 6;
  v111 = (v99 + 6);
  v101 = (v99 + 4);
  v100 = (v110 + 8);
  ++v99;

  v69 = 0;
  v16 = MEMORY[0x277D84F98];
  v7 = v103;
  v109 = v68;
  v110 = v65;
  v112 = a2;
  while (v11)
  {
    v18 = v69;
LABEL_55:
    v70 = *(v119 + 48);
    v120 = *(v118 + 72);
    v71 = v113;
    sub_22F15CAA0(v70 + v120 * (__clz(__rbit64(v11)) | (v18 << 6)), v113);
    v72 = v71;
    v73 = v117;
    sub_22F15CB04(v72, v117);
    sub_22F15CAA0(v73, v15);
    sub_22F203FB4(v73 + *(v114 + 60), v7);
    a3 = v115;
    if ((*v111)(v7, 1, v115) == 1)
    {
      sub_22F120ADC(v7, &qword_27DAB0C90, &unk_22F785B70);
    }

    else
    {
      v74 = v104;
      (*v101)(v104, v7, a3);
      v75 = v105;
      sub_22F73F7B0();
      v76 = v102;
      sub_22F73F790();
      (*v100)(v75, v106);
      v77 = sub_22F73F710();
      v78 = *(v77 - 8);
      if ((*(v78 + 48))(v76, 1, v77) == 1)
      {
        (*v99)(v74, a3);
        sub_22F120ADC(v76, &qword_27DAB24B8, &qword_22F779E68);
        v79 = v4;
        v7 = v103;
        v15 = v116;
        goto LABEL_65;
      }

      v80 = sub_22F73F700();
      a3 = v81;
      (*(v78 + 8))(v76, v77);
      v82 = v112;
      if (v112[2])
      {
        v83 = sub_22F1229E8(v80, a3);
        v85 = v84;

        v86 = *v99;
        v7 = v103;
        v15 = v116;
        if (v85)
        {
          v79 = *(v82[7] + 4 * v83);
          v86(v104, v115);
          goto LABEL_65;
        }
      }

      else
      {

        v86 = *v99;
        v7 = v103;
        v15 = v116;
      }

      v86(v104, v115);
    }

    v79 = v4;
LABEL_65:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v16;
    a2 = v16;
    v87 = sub_22F122A14(v15);
    v89 = v16[2];
    v90 = (v88 & 1) == 0;
    v45 = __OFADD__(v89, v90);
    v91 = v89 + v90;
    if (v45)
    {
      goto LABEL_83;
    }

    v92 = v88;
    if (v16[3] >= v91)
    {
      a2 = v112;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a3 = v112;
        isUniquelyReferenced_nonNull_native = v87;
        sub_22F134678();
        a2 = a3;
        v87 = isUniquelyReferenced_nonNull_native;
      }
    }

    else
    {
      sub_22F125F5C(v91, isUniquelyReferenced_nonNull_native);
      v87 = sub_22F122A14(v15);
      if ((v92 & 1) != (v93 & 1))
      {
LABEL_89:
        sub_22F7420C0();
        __break(1u);
LABEL_90:
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }

      a2 = v112;
    }

    v11 &= v11 - 1;
    v16 = v122;
    if (v92)
    {
      *(v122[7] + 4 * v87) = v79;
      sub_22F15CBD8(v15);
      sub_22F15CBD8(v117);
    }

    else
    {
      v122[(v87 >> 6) + 8] |= 1 << v87;
      v94 = v87;
      sub_22F15CAA0(v15, v16[6] + v87 * v120);
      *(v16[7] + 4 * v94) = v79;
      sub_22F15CBD8(v15);
      sub_22F15CBD8(v117);
      v95 = v16[2];
      v45 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v45)
      {
        goto LABEL_87;
      }

      v16[2] = v96;
    }

    v69 = v18;
    v68 = v109;
    v65 = v110;
  }

  while (1)
  {
    v18 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      goto LABEL_80;
    }

    if (v18 >= v68)
    {
      break;
    }

    v11 = *(v65 + 8 * v18);
    ++v69;
    if (v11)
    {
      goto LABEL_55;
    }
  }

LABEL_75:

  sub_22F1B2BBC(0);
  v97 = v108;
  sub_22F7416A0();

  if (v97)
  {
  }

  return v16;
}

uint64_t sub_22F203FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F204024(uint64_t a1)
{
  v3 = type metadata accessor for Song(0);
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v28 = v1;
  v36 = MEMORY[0x277D84F90];
  sub_22F146454(0, v5, 0);
  v6 = v36;
  v7 = a1 + 56;
  result = sub_22F741980();
  v9 = result;
  v10 = 0;
  v29 = a1 + 64;
  v30 = v5;
  v31 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v34 = *(a1 + 36);
    v14 = v32;
    sub_22F15CAA0(*(a1 + 48) + *(v33 + 72) * v9, v32);
    v35 = Song.compactDescription.getter();
    v16 = v15;
    result = sub_22F15CBD8(v14);
    v36 = v6;
    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    v19 = v6;
    if (v18 >= v17 >> 1)
    {
      result = sub_22F146454((v17 > 1), v18 + 1, 1);
      v19 = v36;
    }

    *(v19 + 16) = v18 + 1;
    v20 = v19 + 16 * v18;
    *(v20 + 32) = v35;
    *(v20 + 40) = v16;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v31;
    v21 = *(v31 + 8 * v13);
    if ((v21 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v19;
    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v9 & 0x3F));
    if (v22)
    {
      v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v12 = v30;
    }

    else
    {
      v23 = v13 << 6;
      v24 = v13 + 1;
      v12 = v30;
      v25 = (v29 + 8 * v13);
      while (v24 < (v11 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_22F107D18(v9, v34, 0);
          v11 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v9, v34, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v12)
    {
      return v6;
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
  __break(1u);
  return result;
}

uint64_t sub_22F2042E4(uint64_t a1)
{
  v3 = type metadata accessor for Song(0);
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v24 = v1;
  v32 = MEMORY[0x277D84F90];
  sub_22F146454(0, v5, 0);
  v6 = v32;
  v31 = a1 + 56;
  result = sub_22F741980();
  v8 = result;
  v9 = 0;
  v25 = a1 + 64;
  v26 = v5;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v31 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v29 = *(a1 + 36);
    v12 = v27;
    sub_22F15CAA0(*(a1 + 48) + *(v28 + 72) * v8, v27);
    v13 = v12[1];
    v30 = *v12;

    result = sub_22F15CBD8(v12);
    v32 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_22F146454((v14 > 1), v15 + 1, 1);
      v6 = v32;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 16 * v15;
    *(v16 + 32) = v30;
    *(v16 + 40) = v13;
    v10 = 1 << *(a1 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v17 = *(v31 + 8 * v11);
    if ((v17 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v8 & 0x3F));
    if (v18)
    {
      v10 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (v25 + 8 * v11);
      while (v20 < (v10 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_22F107D18(v8, v29, 0);
          v10 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v8, v29, 0);
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v26)
    {
      return v6;
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
  __break(1u);
  return result;
}

unint64_t sub_22F2045A0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2548, &qword_22F77A418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F779720;
  *(inited + 32) = 0x657469726F766166;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 48) = v2;
  *(inited + 56) = 0x6C6C696863;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v1;
  *(inited + 80) = 0x7055746567;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = v4;
  strcpy((inited + 104), "humanCurated");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = v3;
  strcpy((inited + 128), "MusicForTime");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = v6;
  *(inited + 152) = 0x6D617A616873;
  *(inited + 160) = 0xE600000000000000;
  *(inited + 168) = v5;
  strcpy((inited + 176), "musicForArtist");
  *(inited + 191) = -18;
  *(inited + 192) = v7;

  v9 = sub_22F14EE44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2550, &unk_22F77A420);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_22F204754@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v10 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  if (*(a1 + 16) <= *(*v2 + 16) >> 3)
  {
    v14 = *v2;

    sub_22F3E7DB0(a1);
    v12 = v14;
  }

  else
  {

    v12 = sub_22F1E7F80(a1, v5);
  }

  if (*(a1 + 16) <= *(v6 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
  }

  else
  {
    v6 = sub_22F1E7F80(a1, v6);
  }

  if (*(a1 + 16) <= *(v8 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
  }

  else
  {
    v8 = sub_22F1E7F80(a1, v8);
  }

  if (*(a1 + 16) <= *(v7 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
  }

  else
  {
    v7 = sub_22F1E7F80(a1, v7);
  }

  if (*(a1 + 16) <= *(v10 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
  }

  else
  {
    v10 = sub_22F1E7F80(a1, v10);
  }

  if (*(a1 + 16) <= *(v9 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
  }

  else
  {
    v9 = sub_22F1E7F80(a1, v9);
  }

  if (*(a1 + 16) <= *(v11 + 16) >> 3)
  {
    sub_22F3E7DB0(a1);
    result = v11;
  }

  else
  {
    result = sub_22F1E7F80(a1, v11);
  }

  *a2 = v12;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v10;
  a2[5] = v9;
  a2[6] = result;
  return result;
}

uint64_t MusicCurator.MusicElection.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v26 = v0[3];
  v27 = v0[4];
  v28 = v0[5];
  v29 = v0[6];
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000002DLL, 0x800000022F791F00);
  sub_22F204024(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v4 = sub_22F740DA0();
  v6 = v5;

  MEMORY[0x231900B10](v4, v6);

  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F791F30);
  sub_22F204024(v2);
  v7 = sub_22F740DA0();
  v9 = v8;

  MEMORY[0x231900B10](v7, v9);

  MEMORY[0x231900B10](0xD00000000000001DLL, 0x800000022F791F50);
  sub_22F204024(v3);
  v10 = sub_22F740DA0();
  v12 = v11;

  MEMORY[0x231900B10](v10, v12);

  MEMORY[0x231900B10](0xD000000000000016, 0x800000022F791F70);
  sub_22F204024(v26);
  v13 = sub_22F740DA0();
  v15 = v14;

  MEMORY[0x231900B10](v13, v15);

  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F791F90);
  sub_22F204024(v27);
  v16 = sub_22F740DA0();
  v18 = v17;

  MEMORY[0x231900B10](v16, v18);

  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F791FB0);
  sub_22F204024(v28);
  v19 = sub_22F740DA0();
  v21 = v20;

  MEMORY[0x231900B10](v19, v21);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F791FD0);
  sub_22F204024(v29);
  v22 = sub_22F740DA0();
  v24 = v23;

  MEMORY[0x231900B10](v22, v24);

  MEMORY[0x231900B10](10, 0xE100000000000000);
  return 0;
}

uint64_t MusicCurator.MusicElection.jsonDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v27 = v0[4];
  v28 = v0[5];
  v29 = v0[6];
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F791FF0);
  sub_22F2042E4(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v5 = sub_22F740DA0();
  v7 = v6;

  MEMORY[0x231900B10](v5, v7);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F792010);
  sub_22F2042E4(v2);
  v8 = sub_22F740DA0();
  v10 = v9;

  MEMORY[0x231900B10](v8, v10);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F792030);
  sub_22F2042E4(v4);
  v11 = sub_22F740DA0();
  v13 = v12;

  MEMORY[0x231900B10](v11, v13);

  MEMORY[0x231900B10](0xD000000000000016, 0x800000022F792050);
  sub_22F2042E4(v3);
  v14 = sub_22F740DA0();
  v16 = v15;

  MEMORY[0x231900B10](v14, v16);

  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F792070);
  sub_22F2042E4(v27);
  v17 = sub_22F740DA0();
  v19 = v18;

  MEMORY[0x231900B10](v17, v19);

  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F792090);
  sub_22F2042E4(v28);
  v20 = sub_22F740DA0();
  v22 = v21;

  MEMORY[0x231900B10](v20, v22);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F7920B0);
  sub_22F2042E4(v29);
  v23 = sub_22F740DA0();
  v25 = v24;

  MEMORY[0x231900B10](v23, v25);

  MEMORY[0x231900B10](8194653, 0xE300000000000000);
  return 0;
}

uint64_t static MusicCurator.electMusic(for:context:musicForYouFavoritesElector:musicForYouChillElector:musicForYouGetUpElector:musicForTopicElector:musicForTimeElector:musicForMomentElector:musicForPerformerElector:progressReporter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v43 = a1;
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v14 = qword_2810B4E90;
  *&v15 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - Election", 25, 2u, v15, 0, v14, v42);
  sub_22F7416F0();
  v16 = sub_22F7416D0();
  v18 = v17;
  v20 = v19;
  v21 = (*(a3 + 16))(v43, a2, v16);
  if (v33)
  {
    v43 = v33;
  }

  else
  {
    v22 = v20;
    v34 = v21;
    v31 = (*(a4 + 16))(v43, a2, v18);
    v29 = (*(a5 + 16))(v43, a2, v20);
    v27 = (*(a8 + 16))(v43, a2);
    v25 = (*(a10 + 16))(v43, a2);
    v23 = (*(a12 + 16))(v43, a2);
    v36 = (*(a14 + 16))(v43, a2);
    sub_22F7416A0();
    v43 = 0;
    sub_22F1B2BBC(0);

    *a6 = v34;
    a6[1] = v31;
    a6[2] = v29;
    a6[3] = v27;
    a6[4] = v25;
    a6[5] = v23;
    a6[6] = v36;
  }

  return result;
}

void _s11PhotosGraph12MusicCuratorC0C8ElectionV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v18 = a2[6];
  v19 = a1[6];
  sub_22F122420(*a1, *a2);
  if (v12)
  {
    sub_22F122420(v2, v7);
    if (v13)
    {
      sub_22F122420(v4, v9);
      if (v14)
      {
        sub_22F122420(v3, v8);
        if (v15)
        {
          sub_22F122420(v6, v11);
          if (v16)
          {
            sub_22F122420(v5, v10);
            if (v17)
            {

              sub_22F122420(v19, v18);
            }
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_22F2057CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22F205814(uint64_t result, int a2, int a3)
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

uint64_t GraphBuilder.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 112);
  *(v2 + 16) = v3;
  *(v2 + 24) = a1;
  v4 = v3;
  return v2;
}

uint64_t GraphBuilder.init(with:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 16) = v2;
  *(v1 + 24) = a1;
  v3 = v2;
  return v1;
}

uint64_t sub_22F2058D8()
{
  v1[4] = v0;
  v1[5] = *v0;
  v2 = sub_22F73F470();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F2059CC, 0, 0);
}

uint64_t sub_22F2059CC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = *(v0[4] + 24);
  v0[10] = v4;
  v5 = OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL;
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);

  return MEMORY[0x2822009F8](sub_22F205A6C, v4, 0);
}

uint64_t sub_22F205A6C()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_22F205B34;
  v2 = MEMORY[0x277D837D0];

  return MEMORY[0x282181580](v0 + 16, &unk_22F7821C0, 0, v2);
}

uint64_t sub_22F205B34()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_22F205E68;
  }

  else
  {
    v4 = sub_22F205C60;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F205C60()
{
  v1 = v0[3];
  v0[15] = v0[2];
  v0[16] = v1;
  return MEMORY[0x2822009F8](sub_22F205C84, 0, 0);
}

uint64_t sub_22F205C84()
{
  v20 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 32);
  v7 = *(v6 + 16);
  (*(v0 + 88))(v4, *(v0 + 72), *(v0 + 48));
  v19[3] = v5;
  v19[4] = &off_2843E5190;
  v19[0] = v6;
  v8 = type metadata accessor for PhotoKitInputStream();
  swift_allocObject();
  v9 = v7;

  v10 = sub_22F281C54(v9, v2, v1, v4, v19);
  v11 = *(v0 + 72);
  if (v3)
  {
    (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = v10;
    v15 = *(v0 + 56);
    v16 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2590, &unk_22F77A520);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22F771340;
    *(v17 + 56) = v8;
    *(v17 + 64) = &off_2843E9240;
    *(v17 + 32) = v14;
    (*(v15 + 8))(v11, v16);

    v18 = *(v0 + 8);

    return v18(v17);
  }
}

uint64_t sub_22F205E84()
{
  (*(v0[7] + 8))(v0[9], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22F205F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x2822009F8](sub_22F205F28, 0, 0);
}

uint64_t sub_22F205F28()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_22F205FCC;
  v2 = *(v0 + 56);

  return sub_22F281FAC(v2);
}

uint64_t sub_22F205FCC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22F206100, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22F206100()
{
  v16 = v0;
  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_22F740B90();
  __swift_project_value_buffer(v2, qword_2810B4CB0);
  v3 = v1;
  v4 = sub_22F740B70();
  v5 = sub_22F7415E0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_22F7420F0();
    v12 = sub_22F145F20(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_22F0FC000, v4, v5, "[IncrementalRebuild] Failed to start input stream with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2319033A0](v9, -1, -1);
    MEMORY[0x2319033A0](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_22F2062C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F206368, 0, 0);
}

uint64_t sub_22F206368()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v22 = **(v0 + 112);
    v3 = v1 + 32;
    v4 = sub_22F741320();
    v5 = *(v4 - 8);
    v21 = *(v5 + 56);
    v6 = (v5 + 48);
    v20 = (v5 + 8);
    do
    {
      v10 = *(v0 + 128);
      v9 = *(v0 + 136);
      v21(v9, 1, 1, v4);
      sub_22F15C30C(v3, v0 + 16);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      sub_22F100260((v0 + 16), v11 + 32);
      sub_22F20B494(v9, v10);
      v13 = (*v6)(v10, 1, v4);
      v14 = *(v0 + 128);
      if (v13 == 1)
      {
        sub_22F120ADC(*(v0 + 128), &qword_27DAB07C0, &qword_22F77A4F0);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22F741310();
        (*v20)(v14, v4);
        if (*v12)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_22F7412D0();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:

      if (v16 | v15)
      {
        v7 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v15;
        *(v0 + 80) = v16;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 136);
      *(v0 + 88) = 1;
      *(v0 + 96) = v7;
      *(v0 + 104) = v22;
      swift_task_create();

      sub_22F120ADC(v8, &qword_27DAB07C0, &qword_22F77A4F0);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_22F20663C()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  v2 = *v1;
  *(v0 + 56) = *v1;

  return MEMORY[0x2822009F8](sub_22F2066AC, v2, 0);
}

uint64_t sub_22F2066AC()
{
  v1 = *(v0 + 56);
  *(v1 + 136) = 1;
  v2 = *(v1 + 128);
  *(v0 + 64) = v2;
  return MEMORY[0x2822009F8](sub_22F2066D8, v2, 0);
}

uint64_t sub_22F2066D8(__n128 a1)
{
  v2 = (v1[8] + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token);
  v3 = v2[3];
  if (v3)
  {
    v5 = *v2;
    v4 = v2[1];
    v6 = v2[2];
    sub_22F73F350();
    swift_allocObject();
    sub_22F15C3C4(v5, v4);

    sub_22F73F340();
    v1[2] = v5;
    v1[3] = v4;
    v1[4] = v6;
    v1[5] = v3;
    sub_22F20B504();
    v7 = sub_22F73F330();
    v9 = v8;

    sub_22F73F520();
    sub_22F133BF0(v7, v9);
    a1.n128_f64[0] = sub_22F20AD9C(v5, v4, v6, v3);
  }

  v10 = v1[1];

  return v10(a1);
}

uint64_t GraphBuilder.invalidateGraph()()
{
  v1[3] = v0;
  v2 = sub_22F73EE60();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_22F206970;

  return sub_22F2058D8();
}

uint64_t sub_22F206970(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22F206AFC, 0, 0);
  }
}

uint64_t sub_22F206AFC()
{
  v1 = *(v0[8] + 16);
  v0[9] = v1;
  if (v1)
  {
    v0[10] = objc_opt_self();
    v0[11] = 0;
    v2 = v0[8];
    if (!v2[2])
    {
      __break(1u);
    }

    v3 = *(*__swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]) + 128);
    v0[12] = v3;

    v4 = sub_22F206C20;
    v5 = v3;
  }

  else
  {

    v5 = *(v0[3] + 24);
    v0[13] = v5;
    v4 = sub_22F206F78;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22F206C20()
{
  v1 = [*(v0 + 80) defaultManager];
  v2 = sub_22F73F3F0();
  *(v0 + 16) = 0;
  v3 = [v1 removeItemAtURL:v2 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = v4;

LABEL_5:

    return MEMORY[0x2822009F8](sub_22F206E4C, 0, 0);
  }

  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = v4;
  v10 = sub_22F73F370();

  swift_willThrow();
  v11 = v10;
  sub_22F73EE40();
  sub_22F2072C8();
  LOBYTE(v9) = sub_22F73F2E0();

  (*(v7 + 8))(v6, v8);
  if (v9)
  {

    goto LABEL_5;
  }

  swift_willThrow();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22F206E4C()
{
  v1 = v0[11] + 1;
  if (v1 == v0[9])
  {

    v2 = *(v0[3] + 24);
    v0[13] = v2;
    v3 = sub_22F206F78;
  }

  else
  {
    v0[11] = v1;
    v4 = v0[8];
    if (v1 >= *(v4 + 16))
    {
      __break(1u);
    }

    v5 = *(*__swift_project_boxed_opaque_existential_1((v4 + 40 * v1 + 32), *(v4 + 40 * v1 + 56)) + 128);
    v0[12] = v5;

    v3 = sub_22F206C20;
    v2 = v5;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_22F206F78()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_22F207068;
  v2 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282181588](v1, &unk_22F7821D0, 0, v2);
}

uint64_t sub_22F207068()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_22F207238;
  }

  else
  {
    v2 = sub_22F2071A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F2071A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F207238()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_22F2072C8()
{
  result = qword_27DAB2560;
  if (!qword_27DAB2560)
  {
    sub_22F73EE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2560);
  }

  return result;
}

void sub_22F207320(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277D22BB8]) init];
  v3 = [objc_opt_self() any];
  v4 = [a1 nodeIdentifiersMatchingFilter_];

  [v2 removeNodesForIdentifiers_];
  v7[0] = 0;
  if ([a1 performChangesAndWait:v2 error:v7])
  {
    v5 = v7[0];
  }

  else
  {
    v6 = v7[0];
    sub_22F73F370();

    swift_willThrow();
  }
}

uint64_t GraphBuilder.consumeInputStreamUpdates()()
{
  *(v1 + 328) = v0;
  *(v1 + 336) = *v0;
  return MEMORY[0x2822009F8](sub_22F2074A0, 0, 0);
}

uint64_t sub_22F2074A0()
{
  type metadata accessor for InputStreamUpdateQueue();
  v1 = swift_allocObject();
  *(v0 + 344) = v1;
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84F90];
  v2 = swift_task_alloc();
  *(v0 + 352) = v2;
  *v2 = v0;
  v2[1] = sub_22F20755C;

  return sub_22F2058D8();
}

uint64_t sub_22F20755C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_22F208578;
  }

  else
  {
    v4 = sub_22F207670;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F207670()
{
  v1 = v0[45];
  sub_22F20A89C(v1, v0[43]);
  v2 = *(v1 + 16);
  if (v2)
  {
    swift_beginAccess();
    v0[47] = v2;
    v3 = v0[43];

    return MEMORY[0x2822009F8](sub_22F2077C0, v3, 0);
  }

  else
  {
    v4 = v0[45];
    v5 = swift_task_alloc();
    v0[63] = v5;
    *(v5 + 16) = v4;
    v6 = swift_task_alloc();
    v0[64] = v6;
    *v6 = v0;
    v6[1] = sub_22F2083CC;
    v7 = MEMORY[0x277D84F78] + 8;
    v8 = MEMORY[0x277D84F78] + 8;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v6, v7, v8, 0, 0, &unk_22F77A450, v5, v9);
  }
}

uint64_t sub_22F2077C0()
{
  v1 = *(v0 + 344);
  v4 = *(v1 + 112);
  v3 = (v1 + 112);
  v2 = v4;
  v5 = *(v4 + 16);
  if (v5)
  {
    swift_beginAccess();
    sub_22F20AC1C((v2 + 32), v0 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v2;
    if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > *(v2 + 3) >> 1)
    {
      v7 = *(v0 + 344);
      v2 = sub_22F13EEEC(isUniquelyReferenced_nonNull_native, v5, 1, v2);
      *(v7 + 112) = v2;
    }

    v8 = *(v0 + 344);
    sub_22F20AC78((v2 + 32));
    v9 = *(v2 + 2);
    memmove(v2 + 32, v2 + 120, 88 * v9 - 88);
    *(v2 + 2) = v9 - 1;
    *(v8 + 112) = v2;
    swift_endAccess();
  }

  else
  {
    *(v0 + 184) = 0;
    *(v0 + 168) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 104) = 0u;
  }

  return MEMORY[0x2822009F8](sub_22F2078F0, 0, 0);
}

uint64_t sub_22F2078F0()
{
  v29 = v0;
  if (*(v0 + 104))
  {
    v1 = v0 + 16;
    v2 = *(v0 + 152);
    *(v0 + 48) = *(v0 + 136);
    *(v0 + 64) = v2;
    *(v0 + 80) = *(v0 + 168);
    *(v0 + 96) = *(v0 + 184);
    v3 = *(v0 + 120);
    *(v0 + 16) = *(v0 + 104);
    *(v0 + 32) = v3;
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v4 = sub_22F740B90();
    __swift_project_value_buffer(v4, qword_2810B4CB0);
    sub_22F20AC1C(v0 + 16, v0 + 192);
    v5 = sub_22F740B70();
    v6 = sub_22F7415C0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136315138;
      v9 = sub_22F2509A0();
      v11 = v10;
      sub_22F20AC78(v0 + 192);
      v12 = sub_22F145F20(v9, v11, &v28);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_22F0FC000, v5, v6, "[IncrementalRebuild] GraphBuilder received update -> %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x2319033A0](v8, -1, -1);
      MEMORY[0x2319033A0](v7, -1, -1);
    }

    else
    {

      sub_22F20AC78(v0 + 192);
    }

    if (*(*v1 + 16) || *(*(v0 + 24) + 16))
    {
      v16 = *(v0 + 336);
      v17 = *(*(v0 + 328) + 24);
      *(v0 + 424) = v17;
      v18 = swift_task_alloc();
      *(v0 + 432) = v18;
      *(v18 + 16) = v1;
      *(v18 + 24) = v16;
      v19 = sub_22F207E50;
      v14 = v17;
LABEL_17:

      return MEMORY[0x2822009F8](v19, v14, 0);
    }

    v14 = *(*__swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88)) + 128);
    *(v0 + 384) = v14;
    *(v0 + 392) = *(v0 + 32);
    v26 = *(v0 + 56);
    *(v0 + 408) = *(v0 + 48);
    *(v0 + 416) = v26;
    v15 = sub_22F207C58;
LABEL_16:
    v19 = v15;
    goto LABEL_17;
  }

  sub_22F120ADC(v0 + 104, &qword_27DAB2568, &qword_22F77A458);
  v13 = *(v0 + 376);
  if (v13 > 0)
  {
    *(v0 + 376) = v13;
    v14 = *(v0 + 344);
    v15 = sub_22F2077C0;
    goto LABEL_16;
  }

  v20 = *(v0 + 360);
  v21 = swift_task_alloc();
  *(v0 + 504) = v21;
  *(v21 + 16) = v20;
  v22 = swift_task_alloc();
  *(v0 + 512) = v22;
  *v22 = v0;
  v22[1] = sub_22F2083CC;
  v23 = MEMORY[0x277D84F78] + 8;
  v31 = MEMORY[0x277D84F78] + 8;
  v24 = MEMORY[0x277D84F78] + 8;
  v25 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v22, v23, v24, 0, 0, &unk_22F77A450, v21, v25);
}

uint64_t sub_22F207C58()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 392);
  v3 = (*(v0 + 384) + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v0 + 400);
  *v3 = v2;
  *(v3 + 1) = v8;
  v3[3] = v1;
  sub_22F15C3C4(v2, v8);

  sub_22F20AD9C(v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_22F207D18, 0, 0);
}

uint64_t sub_22F207D18()
{
  v1 = v0[47];
  sub_22F20AC78((v0 + 2));
  if (v1 < 2)
  {
    v3 = v0[45];
    v4 = swift_task_alloc();
    v0[63] = v4;
    *(v4 + 16) = v3;
    v5 = swift_task_alloc();
    v0[64] = v5;
    *v5 = v0;
    v5[1] = sub_22F2083CC;
    v6 = MEMORY[0x277D84F78] + 8;
    v7 = MEMORY[0x277D84F78] + 8;
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v5, v6, v7, 0, 0, &unk_22F77A450, v4, v8);
  }

  else
  {
    v0[47] = v1 - 1;
    v2 = v0[43];

    return MEMORY[0x2822009F8](sub_22F2077C0, v2, 0);
  }
}

uint64_t sub_22F207E50()
{
  v1 = v0[54];
  v2 = swift_task_alloc();
  v0[55] = v2;
  *(v2 + 16) = sub_22F20ACCC;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[56] = v3;
  *v3 = v0;
  v3[1] = sub_22F207F40;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282181588](v3, &unk_22F77A468, v2, v4);
}

uint64_t sub_22F207F40()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 424);
    v4 = sub_22F2082E4;
  }

  else
  {

    v4 = sub_22F20806C;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F20806C()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88)) + 128);
  *(v0 + 464) = v1;
  *(v0 + 472) = *(v0 + 32);
  v2 = *(v0 + 56);
  *(v0 + 488) = *(v0 + 48);
  *(v0 + 496) = v2;

  return MEMORY[0x2822009F8](sub_22F2080F4, v1, 0);
}

uint64_t sub_22F2080F4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  v3 = (*(v0 + 464) + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v0 + 480);
  *v3 = v2;
  *(v3 + 1) = v8;
  v3[3] = v1;
  sub_22F15C3C4(v2, v8);

  sub_22F20AD9C(v4, v5, v6, v7);

  return MEMORY[0x2822009F8](sub_22F2081B4, 0, 0);
}

uint64_t sub_22F2081B4()
{
  sub_22F20AC78((v0 + 2));
  if (v0[47] < 1)
  {
    v2 = v0[45];
    v3 = swift_task_alloc();
    v0[63] = v3;
    *(v3 + 16) = v2;
    v4 = swift_task_alloc();
    v0[64] = v4;
    *v4 = v0;
    v4[1] = sub_22F2083CC;
    v5 = MEMORY[0x277D84F78] + 8;
    v6 = MEMORY[0x277D84F78] + 8;
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v4, v5, v6, 0, 0, &unk_22F77A450, v3, v7);
  }

  else
  {
    v1 = v0[43];

    return MEMORY[0x2822009F8](sub_22F2077C0, v1, 0);
  }
}

uint64_t sub_22F2082E4()
{

  return MEMORY[0x2822009F8](sub_22F208360, 0, 0);
}

uint64_t sub_22F208360()
{

  sub_22F20AC78(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_22F2083CC()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_22F208514, 0, 0);
  }
}

uint64_t sub_22F208514()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F208578()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22F2085DC(void *a1, uint64_t *a2)
{
  v258 = *MEMORY[0x277D85DE8];
  v3 = [objc_allocWithZone(MEMORY[0x277D22BB8]) init];
  v217 = a2;
  v4 = *a2;
  v247 = *(*a2 + 16);
  v238 = v3;
  if (v247)
  {
    v5 = 0;
    v6 = (v4 + 56);
    v7 = MEMORY[0x277D84F98];
    v243 = v4;
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        goto LABEL_186;
      }

      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v251 = *(v6 - 24);
      if (*(v7 + 2) && (v11 = sub_22F122E8C(*(v6 - 24)), (v12 & 1) != 0))
      {
        v13 = *(*(v7 + 7) + 8 * v11);
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_22F13EDE0(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_22F13EDE0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[32 * v15];
      v16[32] = v251;
      *(v16 + 5) = v8;
      *(v16 + 6) = v9;
      *(v16 + 7) = v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v257 = v7;
      v19 = sub_22F122E8C(v251);
      v20 = *(v7 + 2);
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_187;
      }

      v23 = v18;
      if (*(v7 + 3) >= v22)
      {

        if (isUniquelyReferenced_nonNull_native)
        {
          v7 = v257;
          if (v23)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_22F135A08();
          v7 = v257;
          if (v23)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_22F127F9C(v22, isUniquelyReferenced_nonNull_native);
        v24 = sub_22F122E8C(v251);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_201;
        }

        v19 = v24;

        v7 = v257;
        if (v23)
        {
LABEL_3:
          *(*(v7 + 7) + 8 * v19) = v13;

          goto LABEL_4;
        }
      }

      *&v7[8 * (v19 >> 6) + 64] |= 1 << v19;
      *(*(v7 + 6) + v19) = v251;
      *(*(v7 + 7) + 8 * v19) = v13;
      v26 = *(v7 + 2);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_190;
      }

      *(v7 + 2) = v28;
LABEL_4:
      ++v5;
      v6 += 4;
      v4 = v243;
      if (v247 == v5)
      {
        goto LABEL_26;
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_26:
  v223 = v7 + 64;
  v29 = 1 << v7[32];
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v7 + 8);
  v32 = (v29 + 63) >> 6;
  v228 = v7;

  v33 = 0;
  v34 = MEMORY[0x277D84F98];
  v218 = v32;
  v35 = v7 + 64;
  if (!v31)
  {
    goto LABEL_31;
  }

  while (2)
  {
    v36 = v33;
    v37 = v228;
LABEL_35:
    v219 = v36;
    v38 = __clz(__rbit64(v31)) | (v36 << 6);
    v39 = *(*(v37 + 6) + v38);
    v40 = *(*(v37 + 7) + 8 * v38);
    v232 = v31;
    v248 = *(v40 + 16);
    if (!v248)
    {

LABEL_58:

      v63 = MEMORY[0x277D84F90];
      goto LABEL_59;
    }

    v244 = *(*(v37 + 6) + v38);

    v41 = 0;
    v42 = (v40 + 56);
    v252 = v40;
    do
    {
      if (v41 >= *(v40 + 16))
      {
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
      }

      v44 = *(v42 - 24);
      v46 = *(v42 - 2);
      v45 = *(v42 - 1);
      v47 = *v42;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v48 = v34;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      v257 = v48;
      v50 = sub_22F1229E8(v46, v45);
      v52 = *(v48 + 2);
      v53 = (v51 & 1) == 0;
      v27 = __OFADD__(v52, v53);
      v54 = v52 + v53;
      if (v27)
      {
        goto LABEL_185;
      }

      v55 = v51;
      if (*(v48 + 3) < v54)
      {
        sub_22F127CB8(v54, v49);
        v50 = sub_22F1229E8(v46, v45);
        if ((v55 & 1) != (v56 & 1))
        {
          goto LABEL_200;
        }

LABEL_45:
        v34 = v257;
        if (v55)
        {
          goto LABEL_37;
        }

        goto LABEL_46;
      }

      if (v49)
      {
        goto LABEL_45;
      }

      v61 = v50;
      sub_22F13586C();
      v50 = v61;
      v34 = v257;
      if (v55)
      {
LABEL_37:
        v43 = *(v34 + 7) + 32 * v50;
        *v43 = v44;
        *(v43 + 8) = v46;
        *(v43 + 16) = v45;
        *(v43 + 24) = v47;

        goto LABEL_38;
      }

LABEL_46:
      *&v34[8 * (v50 >> 6) + 64] |= 1 << v50;
      v57 = (*(v34 + 6) + 16 * v50);
      *v57 = v46;
      v57[1] = v45;
      v58 = *(v34 + 7) + 32 * v50;
      *v58 = v44;
      *(v58 + 8) = v46;
      *(v58 + 16) = v45;
      *(v58 + 24) = v47;

      v59 = *(v34 + 2);
      v27 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v27)
      {
        goto LABEL_188;
      }

      *(v34 + 2) = v60;
LABEL_38:
      ++v41;
      v42 += 4;
      v40 = v252;
    }

    while (v248 != v41);
    v62 = *(v252 + 16);
    if (!v62)
    {
      v31 = v232;
      v39 = v244;
      goto LABEL_58;
    }

    v257 = MEMORY[0x277D84F90];
    sub_22F146454(0, v62, 0);
    v63 = v257;
    v64 = (v252 + 48);
    do
    {
      v66 = *(v64 - 1);
      v65 = *v64;
      v257 = v63;
      v68 = *(v63 + 2);
      v67 = *(v63 + 3);

      if (v68 >= v67 >> 1)
      {
        sub_22F146454((v67 > 1), v68 + 1, 1);
        v63 = v257;
      }

      *(v63 + 2) = v68 + 1;
      v69 = &v63[16 * v68];
      *(v69 + 4) = v66;
      *(v69 + 5) = v65;
      v64 += 4;
      --v62;
    }

    while (v62);

    v31 = v232;
    v39 = v244;
LABEL_59:

    v70 = sub_22F20AE74(v39, v63);
    if (v241)
    {
      goto LABEL_183;
    }

    v71 = v70;

    v222 = v71;
    v220 = [a1 nodeIdentifiersMatchingFilter_];
    v221 = [objc_allocWithZone(MEMORY[0x277D22BD8]) initWithIdentifiers:v220 graph:a1];
    v72 = [v221 allObjects];
    type metadata accessor for Node();
    v73 = sub_22F741180();

    if (!(v73 >> 62))
    {
      v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v236 = v34;
      if (v74)
      {
        goto LABEL_62;
      }

LABEL_106:
      v242 = MEMORY[0x277D84F90];
LABEL_107:
      v31 &= v31 - 1;

      v136 = sub_22F1515F8(v63);

      v137 = sub_22F1E94F0(v242, v136);

      v138 = 0;
      v140 = v137 + 56;
      v139 = *(v137 + 56);
      v254 = v137;
      v141 = 1 << *(v137 + 32);
      if (v141 < 64)
      {
        v142 = ~(-1 << v141);
      }

      else
      {
        v142 = -1;
      }

      v143 = v142 & v139;
      v144 = (v141 + 63) >> 6;
      if ((v142 & v139) != 0)
      {
        while (1)
        {
          v145 = v31;
          v146 = v138;
LABEL_116:
          if (!*(v236 + 2))
          {
            break;
          }

          v147 = (*(v254 + 48) + ((v146 << 10) | (16 * __clz(__rbit64(v143)))));
          v148 = *v147;
          v149 = v147[1];

          v150 = sub_22F1229E8(v148, v149);
          v152 = v151;

          if ((v152 & 1) == 0)
          {
            break;
          }

          v153 = *(v236 + 7) + 32 * v150;
          v155 = *(v153 + 8);
          v154 = *(v153 + 16);
          v156 = *(v153 + 24);
          v157 = *v153;

          v159 = sub_22F20B12C(v157, v155, v154, v158, v156);
          v143 &= v143 - 1;

          [v238 insertNode_];
          swift_unknownObjectRelease();
          v138 = v146;
          v31 = v145;
          if (!v143)
          {
            goto LABEL_112;
          }
        }

        sub_22F20B070();
        swift_allocError();
        *v214 = 4;
        swift_willThrow();

        return;
      }

      while (1)
      {
LABEL_112:
        v146 = v138 + 1;
        if (__OFADD__(v138, 1))
        {
          goto LABEL_189;
        }

        if (v146 >= v144)
        {
          break;
        }

        v143 = *(v140 + 8 * v146);
        ++v138;
        if (v143)
        {
          v145 = v31;
          goto LABEL_116;
        }
      }

      v32 = v218;
      v33 = v219;
      v34 = MEMORY[0x277D84F98];
      v35 = v223;
      if (!v31)
      {
LABEL_31:
        v37 = v228;
        while (1)
        {
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_192;
          }

          if (v36 >= v32)
          {
            break;
          }

          v31 = *&v35[8 * v36];
          ++v33;
          if (v31)
          {
            goto LABEL_35;
          }
        }

        v160 = v217[1];
        v250 = *(v160 + 16);
        if (!v250)
        {
          v163 = MEMORY[0x277D84F98];
LABEL_148:
          v186 = v163 + 64;
          v187 = 1 << v163[32];
          v188 = -1;
          if (v187 < 64)
          {
            v188 = ~(-1 << v187);
          }

          v189 = v188 & *(v163 + 8);
          v190 = (v187 + 63) >> 6;

          v191 = 0;
          v256 = v163;
          v240 = v163 + 64;
          v237 = v190;
          while (v189)
          {
LABEL_157:
            v199 = __clz(__rbit64(v189)) | (v191 << 6);
            v200 = *(*(v163 + 6) + v199);
            v201 = *(*(v163 + 7) + 8 * v199);
            v202 = *(v201 + 16);
            if (v202)
            {
              v257 = MEMORY[0x277D84F90];

              sub_22F146454(0, v202, 0);
              v203 = v257;
              v204 = (v201 + 48);
              do
              {
                v205 = *(v204 - 1);
                v206 = *v204;
                v257 = v203;
                v208 = *(v203 + 2);
                v207 = *(v203 + 3);

                if (v208 >= v207 >> 1)
                {
                  sub_22F146454((v207 > 1), v208 + 1, 1);
                  v203 = v257;
                }

                *(v203 + 2) = v208 + 1;
                v209 = &v203[16 * v208];
                *(v209 + 4) = v205;
                *(v209 + 5) = v206;
                v204 += 4;
                --v202;
              }

              while (v202);
            }

            else
            {
              v203 = MEMORY[0x277D84F90];
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22F771340;
            *(inited + 32) = 0xD000000000000010;
            *(inited + 40) = 0x800000022F792110;
            *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
            *(inited + 48) = v203;

            sub_22F14EA28(inited);
            swift_setDeallocating();
            sub_22F120ADC(inited + 32, &unk_27DAB2FD0, &qword_22F77A4D0);
            if (v200 != 1 && v200 != 2)
            {

              sub_22F20B070();
              swift_allocError();
              *v211 = 1;
              swift_willThrow();

              goto LABEL_181;
            }

            v189 &= v189 - 1;
            v192 = objc_allocWithZone(MEMORY[0x277D22BE0]);
            v193 = sub_22F741160();
            v194 = sub_22F741160();
            v195 = sub_22F740C80();

            v196 = [v192 initWithRequiredLabels:v193 optionalLabels:v194 properties:v195];

            v197 = [a1 nodeIdentifiersMatchingFilter_];
            [v238 removeNodesForIdentifiers_];

            v163 = v256;
            v186 = v240;
            v190 = v237;
          }

          while (1)
          {
            v198 = v191 + 1;
            if (__OFADD__(v191, 1))
            {
              goto LABEL_193;
            }

            if (v198 >= v190)
            {
              break;
            }

            v189 = *&v186[8 * v198];
            ++v191;
            if (v189)
            {
              v191 = v198;
              goto LABEL_157;
            }
          }

          v257 = 0;
          if ([a1 performChangesAndWait:v238 error:&v257])
          {
            v212 = v257;
          }

          else
          {
            v213 = v257;
            sub_22F73F370();

            swift_willThrow();
          }

          return;
        }

        v161 = 0;
        v162 = (v160 + 56);
        v163 = MEMORY[0x277D84F98];
        v246 = v217[1];
        while (2)
        {
          if (v161 >= *(v160 + 16))
          {
            goto LABEL_194;
          }

          v164 = *(v162 - 24);
          v165 = *(v162 - 2);
          v166 = *(v162 - 1);
          v167 = *v162;
          if (*(v163 + 2) && (v168 = sub_22F122E8C(*(v162 - 24)), (v169 & 1) != 0))
          {
            v170 = *(*(v163 + 7) + 8 * v168);
          }

          else
          {
            v170 = MEMORY[0x277D84F90];
          }

          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v255 = v166;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v170 = sub_22F13EDE0(0, *(v170 + 2) + 1, 1, v170);
          }

          v172 = *(v170 + 2);
          v171 = *(v170 + 3);
          if (v172 >= v171 >> 1)
          {
            v170 = sub_22F13EDE0((v171 > 1), v172 + 1, 1, v170);
          }

          *(v170 + 2) = v172 + 1;
          v173 = &v170[32 * v172];
          v173[32] = v164;
          *(v173 + 5) = v165;
          *(v173 + 6) = v255;
          *(v173 + 7) = v167;
          v174 = swift_isUniquelyReferenced_nonNull_native();
          v257 = v163;
          v176 = sub_22F122E8C(v164);
          v177 = *(v163 + 2);
          v178 = (v175 & 1) == 0;
          v179 = v177 + v178;
          if (__OFADD__(v177, v178))
          {
            goto LABEL_195;
          }

          v180 = v175;
          if (*(v163 + 3) >= v179)
          {

            if (v174)
            {
              v163 = v257;
              if ((v180 & 1) == 0)
              {
                goto LABEL_142;
              }
            }

            else
            {
              sub_22F135A08();
              v163 = v257;
              if ((v180 & 1) == 0)
              {
                goto LABEL_142;
              }
            }
          }

          else
          {
            sub_22F127F9C(v179, v174);
            v181 = sub_22F122E8C(v164);
            if ((v180 & 1) != (v182 & 1))
            {
              goto LABEL_201;
            }

            v176 = v181;

            v163 = v257;
            if ((v180 & 1) == 0)
            {
LABEL_142:
              *&v163[8 * (v176 >> 6) + 64] |= 1 << v176;
              *(*(v163 + 6) + v176) = v164;
              *(*(v163 + 7) + 8 * v176) = v170;
              v183 = *(v163 + 2);
              v27 = __OFADD__(v183, 1);
              v184 = v183 + 1;
              if (v27)
              {
                goto LABEL_199;
              }

              *(v163 + 2) = v184;
              goto LABEL_125;
            }
          }

          *(*(v163 + 7) + 8 * v176) = v170;

LABEL_125:
          ++v161;
          v162 += 4;
          v160 = v246;
          if (v250 == v161)
          {
            goto LABEL_148;
          }

          continue;
        }
      }

      continue;
    }

    break;
  }

  v74 = sub_22F741A00();
  v236 = v34;
  if (!v74)
  {
    goto LABEL_106;
  }

LABEL_62:
  v75 = 0;
  v230 = v73 & 0xFFFFFFFFFFFFFF8;
  v231 = v73 & 0xC000000000000001;
  v229 = v73 + 32;
  v242 = MEMORY[0x277D84F90];
  v225 = v73;
  v226 = v63;
  v224 = v74;
  while (2)
  {
    if (v231)
    {
      v78 = MEMORY[0x2319016F0](v75, v73);
    }

    else
    {
      if (v75 >= *(v230 + 16))
      {
        goto LABEL_198;
      }

      v78 = *(v229 + 8 * v75);
    }

    v79 = v78;
    v27 = __OFADD__(v75, 1);
    v80 = v75 + 1;
    if (v27)
    {
      goto LABEL_197;
    }

    v81 = *&v78[OBJC_IVAR____TtC11PhotosGraph4Node_properties];
    if (!*(v81 + 2))
    {
      goto LABEL_174;
    }

    v234 = v80;
    v82 = v81;

    v83 = sub_22F1229E8(0xD000000000000010, 0x800000022F792110);
    if ((v84 & 1) == 0)
    {

LABEL_174:

      goto LABEL_176;
    }

    v239 = v82;
    v85 = *(*(v82 + 7) + 8 * v83);
    objc_opt_self();
    v86 = swift_dynamicCastObjCClass();
    if (!v86)
    {

LABEL_176:

      sub_22F20B070();
      swift_allocError();
      *v215 = 3;
      swift_willThrow();

LABEL_180:
      goto LABEL_181;
    }

    v87 = v86;
    v235 = v85;
    v88 = [v87 value];
    v89 = sub_22F740E20();
    v91 = v90;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v242 = sub_22F13E1A8(0, *(v242 + 2) + 1, 1, v242);
    }

    v93 = *(v242 + 2);
    v92 = *(v242 + 3);
    if (v93 >= v92 >> 1)
    {
      v242 = sub_22F13E1A8((v92 > 1), v93 + 1, 1, v242);
    }

    *(v242 + 2) = v93 + 1;
    v94 = &v242[16 * v93];
    *(v94 + 4) = v89;
    *(v94 + 5) = v91;
    if (!*(v34 + 2))
    {

LABEL_178:

      sub_22F20B070();
      swift_allocError();
      *v216 = 4;
      swift_willThrow();
LABEL_179:

      goto LABEL_180;
    }

    sub_22F1229E8(v89, v91);
    v96 = v95;

    if ((v96 & 1) == 0)
    {
      goto LABEL_178;
    }

    sub_22F2139E0(v97);
    v99 = v98;

    sub_22F209C70(v99);
    v101 = v100;

    if (!v101 || (v102 = objc_opt_self(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00), v103 = sub_22F740C80(), , v104 = [v102 kgPropertiesWithMAProperties_], v103, !v104))
    {

      sub_22F20B070();
      swift_allocError();
      *v185 = 2;
      swift_willThrow();

      goto LABEL_179;
    }

    v233 = v79;
    sub_22F20B0E0();
    v105 = sub_22F740CA0();

    v106 = v239;

    v107 = swift_isUniquelyReferenced_nonNull_native();
    v257 = v239;
    v108 = v105 + 64;
    v109 = -1 << *(v105 + 32);
    if (-v109 < 64)
    {
      v110 = ~(-1 << -v109);
    }

    else
    {
      v110 = -1;
    }

    v111 = v110 & *(v105 + 64);
    v112 = (63 - v109) >> 6;
    v245 = v105;

    v113 = 0;
LABEL_86:
    if (v111)
    {
      v253 = v107;
      v116 = v113;
      goto LABEL_93;
    }

    v117 = v113;
LABEL_89:
    v116 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      __break(1u);
LABEL_183:

      swift_bridgeObjectRelease_n();
LABEL_181:

      return;
    }

    if (v116 >= v112)
    {
      sub_22F0FF590(v245);

      sub_22F15C0E8(v239, v106);
      v135 = v134;

      if (v135)
      {
      }

      else
      {
        v76 = v233;
        sub_22F213C6C(v106);

        v77 = sub_22F740C80();

        [v238 updateNode:v76 newProperties:v77];
      }

      v34 = v236;
      v31 = v232;
      v73 = v225;
      v63 = v226;

      v75 = v234;
      if (v234 == v224)
      {
        goto LABEL_107;
      }

      continue;
    }

    break;
  }

  v111 = *(v108 + 8 * v116);
  ++v117;
  if (!v111)
  {
    goto LABEL_89;
  }

  v253 = v107;
LABEL_93:
  v118 = __clz(__rbit64(v111)) | (v116 << 6);
  v119 = (*(v245 + 48) + 16 * v118);
  v121 = *v119;
  v120 = v119[1];
  v122 = *(*(v245 + 56) + 8 * v118);

  v249 = v122;
  v124 = sub_22F1229E8(v121, v120);
  v125 = *(v106 + 2);
  v126 = (v123 & 1) == 0;
  v127 = v125 + v126;
  if (__OFADD__(v125, v126))
  {
    goto LABEL_191;
  }

  v128 = v123;
  if (*(v106 + 3) >= v127)
  {
    if ((v253 & 1) == 0)
    {
      sub_22F135858();
    }

LABEL_99:
    v111 &= v111 - 1;
    v106 = v257;
    if (v128)
    {

      v114 = *(v257 + 7);
      v115 = *(v114 + 8 * v124);
      *(v114 + 8 * v124) = v249;
    }

    else
    {
      *&v257[8 * (v124 >> 6) + 64] |= 1 << v124;
      v131 = (*(v106 + 6) + 16 * v124);
      *v131 = v121;
      v131[1] = v120;
      *(*(v106 + 7) + 8 * v124) = v249;
      v132 = *(v106 + 2);
      v27 = __OFADD__(v132, 1);
      v133 = v132 + 1;
      if (v27)
      {
        goto LABEL_196;
      }

      *(v106 + 2) = v133;
    }

    v107 = 1;
    v113 = v116;
    goto LABEL_86;
  }

  sub_22F127CA4(v127, v253 & 1);
  v129 = sub_22F1229E8(v121, v120);
  if ((v128 & 1) == (v130 & 1))
  {
    v124 = v129;
    goto LABEL_99;
  }

LABEL_200:
  sub_22F7420C0();
  __break(1u);
LABEL_201:
  sub_22F7420C0();
  __break(1u);
}

void sub_22F209C70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3170, &qword_22F770B68);
    v2 = sub_22F741DF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_22F13A100(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    sub_22F107D08(v22, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = sub_22F1229E8(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + 8 * v8) = v20;
      swift_unknownObjectRelease();
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + 8 * v15) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

uint64_t sub_22F209ED4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [a1 nodeIdentifiersMatchingFilter_];
  v6 = [objc_allocWithZone(MEMORY[0x277D22BD8]) initWithIdentifiers:v5 graph:a1];
  *a3 = MEMORY[0x277D84F90];
  v7 = sub_22F740DF0();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22F20AE2C;
  *(v9 + 24) = v8;
  v12[4] = sub_22F20AE34;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22F107F34;
  v12[3] = &block_descriptor_8;
  v10 = _Block_copy(v12);

  [v6 enumeratePropertyValuesForKey:v7 withBlock:v10];

  _Block_release(v10);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F20A0B4(int a1, id a2, uint64_t a3, uint64_t *a4)
{
  [a2 kgPropertyValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v6;
    if ((result & 1) == 0)
    {
      result = sub_22F13E1A8(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
      *a4 = result;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      result = sub_22F13E1A8((v7 > 1), v8 + 1, 1, v6);
      v6 = result;
      *a4 = result;
    }

    *(v6 + 16) = v8 + 1;
    v9 = v6 + 16 * v8;
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
  }

  return result;
}

uint64_t sub_22F20A1B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_22F20A200, 0, 0);
}

uint64_t sub_22F20A200()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v0[3] + 24);
  v0[5] = v3;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  return MEMORY[0x2822009F8](sub_22F20A288, v3, 0);
}

uint64_t sub_22F20A288()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = sub_22F20B0C4;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22F20A378;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282181588](v3, &unk_22F77A4E0, v2, v4);
}

uint64_t sub_22F20A378()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_22F20A4BC;
  }

  else
  {

    v4 = sub_22F20A4A4;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F20A4BC()
{

  return MEMORY[0x2822009F8](sub_22F20A52C, 0, 0);
}

void sub_22F20A544(void *a1, uint64_t a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277D22BB8]) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    while (1)
    {
      v14 = *v6++;
      v13 = v14;
      if (v14 != 1 && v13 != 2)
      {
        break;
      }

      v7 = objc_allocWithZone(MEMORY[0x277D22BE0]);
      v8 = sub_22F741160();
      v9 = sub_22F741160();
      v10 = sub_22F740C80();
      v11 = [v7 initWithRequiredLabels:v8 optionalLabels:v9 properties:v10];

      v12 = [a1 nodeIdentifiersMatchingFilter_];
      [v4 removeNodesForIdentifiers_];

      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    sub_22F20B070();
    swift_allocError();
    *v15 = 1;
  }

  else
  {
LABEL_7:
    v18[0] = 0;
    if ([a1 performChangesAndWait:v4 error:v18])
    {
      v16 = v18[0];

      return;
    }

    v17 = v18[0];
    sub_22F73F370();
  }

  swift_willThrow();
}

uint64_t GraphBuilder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F20A7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22F20A7FC, 0, 0);
}

uint64_t sub_22F20A7FC()
{
  v1 = *(v0 + 32);
  v2 = sub_22F73FA80();
  v1();

  v3 = *(v0 + 8);

  return v3();
}

void sub_22F20A89C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + 32;
    v11 = sub_22F741320();
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    v23 = v12 + 56;
    v24 = v13;
    v21 = (v12 + 8);
    v22 = (v12 + 48);
    v13(v8, 1, 1, v11);
    while (1)
    {
      sub_22F15C30C(v10, v30);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      sub_22F100260(v30, (v14 + 4));
      v14[9] = v25;
      sub_22F20B494(v8, v5);
      v15 = (*v22)(v5, 1, v11);

      if (v15 == 1)
      {
        sub_22F120ADC(v5, &qword_27DAB07C0, &qword_22F77A4F0);
      }

      else
      {
        sub_22F741310();
        (*v21)(v5, v11);
      }

      v16 = v14[2];
      swift_unknownObjectRetain();

      if (v16)
      {
        swift_getObjectType();
        v17 = sub_22F7412D0();
        v19 = v18;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      sub_22F120ADC(v8, &qword_27DAB07C0, &qword_22F77A4F0);
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_22F77A510;
      *(v20 + 24) = v14;
      if (v19 | v17)
      {
        v26 = 0;
        v27 = 0;
        v28 = v17;
        v29 = v19;
      }

      swift_task_create();

      v10 += 40;
      if (!--v9)
      {
        break;
      }

      v24(v8, 1, 1, v11);
    }
  }
}

uint64_t sub_22F20AB6C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F12094C;

  return sub_22F2062C0(a1, a2, v6);
}

uint64_t sub_22F20ACE8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F20B7C0;

  return sub_22F20A7D8(a1, a2, v7, v6);
}

double sub_22F20AD9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_22F133BF0(a1, a2);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_22F20AE74(unsigned __int8 a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = MEMORY[0x277D84F98];
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:

    sub_22F20B070();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F771340;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000022F792110;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(inited + 48) = a2;

  v5 = sub_22F14EA28(inited);
  swift_setDeallocating();
  sub_22F120ADC(inited + 32, &unk_27DAB2FD0, &qword_22F77A4D0);
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = objc_allocWithZone(MEMORY[0x277D22BE0]);
  v8 = sub_22F741160();
  v9 = sub_22F741160();
  v10 = sub_22F740C80();

  v5 = [v6 initWithRequiredLabels:v8 optionalLabels:v9 properties:v10];

  return v5;
}

unint64_t sub_22F20B070()
{
  result = qword_27DAB2570;
  if (!qword_27DAB2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2570);
  }

  return result;
}

unint64_t sub_22F20B0E0()
{
  result = qword_27DAB2580;
  if (!qword_27DAB2580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB2580);
  }

  return result;
}

id sub_22F20B12C(char a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5)
{
  sub_22F2139E0(a5);
  sub_22F209C70(v6);
  v8 = v7;

  if (!v8 || (v9 = objc_opt_self(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00), v10 = sub_22F740C80(), , v11 = [v9 kgPropertiesWithMAProperties_], v10, !v11))
  {
    v21 = 2;
LABEL_7:
    sub_22F20B070();
    swift_allocError();
    *v22 = v21;
    return swift_willThrow();
  }

  sub_22F20B0E0();
  v12 = sub_22F740CA0();

  v13 = objc_allocWithZone(MEMORY[0x277D22BF0]);
  v14 = sub_22F740DF0();
  v15 = [v13 initWithValue_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v12;
  sub_22F131244(v15, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native);
  if (!a1)
  {

    v21 = 1;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v17 = sub_22F1515F8(&unk_2843DAD30);
    sub_22F1DF3B0(&unk_2843DAD50);
    v18 = type metadata accessor for Node();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC11PhotosGraph4Node_identifier] = 0;
    *&v19[OBJC_IVAR____TtC11PhotosGraph4Node_labels] = v17;
    *&v19[OBJC_IVAR____TtC11PhotosGraph4Node_properties] = v12;
    return objc_msgSendSuper2(&v27, sel_init, v26.receiver, v26.super_class, v19, v18);
  }

  else
  {
    v23 = sub_22F1515F8(&unk_2843DAD00);
    sub_22F1DF3B0(&unk_2843DAD20);
    v24 = type metadata accessor for Node();
    v25 = objc_allocWithZone(v24);
    *&v25[OBJC_IVAR____TtC11PhotosGraph4Node_identifier] = 0;
    *&v25[OBJC_IVAR____TtC11PhotosGraph4Node_labels] = v23;
    *&v25[OBJC_IVAR____TtC11PhotosGraph4Node_properties] = v12;
    return objc_msgSendSuper2(&v26, sel_init, v25, v24, v27.receiver, v27.super_class);
  }
}

uint64_t sub_22F20B3E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22F20B7C0;

  return sub_22F20661C(a1, v4, v5, v1 + 32);
}

uint64_t sub_22F20B494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F20B504()
{
  result = qword_27DAB2588;
  if (!qword_27DAB2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2588);
  }

  return result;
}

uint64_t sub_22F20B558(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22F12094C;

  return sub_22F205F08(a1, v4, v5, (v1 + 4), v6);
}

uint64_t getEnumTagSinglePayload for GraphBuilder.GraphBuilderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphBuilder.GraphBuilderError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F20B76C()
{
  result = qword_27DAB2598;
  if (!qword_27DAB2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2598);
  }

  return result;
}

uint64_t MusicMaestro.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

id sub_22F20B8AC(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t (*a7)(id, id, id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a7(v10, v11, v12);

  return v13;
}

id MusicMaestro.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicMaestro.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicMaestro.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_22F20BA80(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB25B0, &qword_22F77A6D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = &v38 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EC0, &qword_22F7867E0);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v38 - v8;
  v44 = type metadata accessor for MaestroRanker(0);
  MEMORY[0x28223BE20](v44);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MusicMaestro - curateMusicForNormalizedSupportedKeywordsByAssetCollectionLocalIdentifier", 88, 2u, 0, 1, qword_2810B4E90, v47);
  v12 = sub_22F7416B0();
  v14 = v13;
  v15 = [a1 columnLabels];
  if (!v15)
  {
    sub_22F20C580();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

LABEL_15:
    sub_22F1B2BBC(0);

    return v9;
  }

  v41 = v11;
  v42 = v6;
  v43 = v5;
  v40 = a1;
  v16 = v14;
  v17 = v15;
  sub_22F741180();

  v18 = [a2 name];
  if (v18)
  {
    v19 = v18;
    sub_22F740E20();
  }

  v21 = sub_22F741550();
  if (v2)
  {

    goto LABEL_15;
  }

  v22 = v21;

  if (!v22)
  {
    sub_22F20C580();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();

    goto LABEL_15;
  }

  v23 = v12;
  sub_22F7416A0();
  v39 = v16;
  v25 = v22;
  v26 = [v25 matrix];
  v27 = [v26 wrapper];

  sub_22F73FB80();
  result = [v25 rowLabels];
  if (result)
  {
    v29 = result;
    v30 = sub_22F741180();

    v31 = v46;
    v32 = v48;
    sub_22F73FCB0();
    v33 = v43;
    v34 = sub_22F73FCA0();
    v38 = v25;

    result = (*(v42 + 8))(v31, v33);
    v35 = v41;
    if (v34 == *(v30 + 16))
    {
      (*(v45 + 32))(v41, v9, v32);
      *(v35 + *(v44 + 20)) = v30;
      v9 = sub_22F1A7C44(v40);
      v36 = v39;
      sub_22F7416A0();
      v37 = v38;
      sub_22F20C5D4(v35);

      sub_22F1B2BBC(0);

      return v9;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_22F20BFD4(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  if (qword_2810A9BD0 != -1)
  {
LABEL_39:
    swift_once();
  }

  sub_22F1B560C("MusicMaestro - curateMusicForNormalizedKeywordsByAssetCollectionLocalIdentifier", 79, 2u, 0, 1, qword_2810B4E90, v42);
  v8 = [a2 columnLabels];
  if (!v8)
  {
    goto LABEL_27;
  }

  v9 = v8;
  v10 = sub_22F741180();

  v11 = [a1 columnLabels];
  if (!v11)
  {

LABEL_27:
    sub_22F20C580();
    swift_allocError();
    *v29 = 0;
    goto LABEL_28;
  }

  v37 = a1;
  v38 = v4;
  v36 = a2;
  v12 = v11;
  v13 = sub_22F741180();

  v14 = sub_22F1515F8(v13);

  a3 = v10;
  v41 = *(v10 + 16);
  if (!v41)
  {
    goto LABEL_29;
  }

  a1 = 0;
  v40 = v10 + 32;
  v4 = v14 + 56;
  v15 = MEMORY[0x277D84F90];
  v39 = a3;
  do
  {
    v16 = a1;
    while (1)
    {
      if (v16 >= *(a3 + 2))
      {
        __break(1u);
        goto LABEL_39;
      }

      a1 = (v16 + 1);
      if (*(v14 + 16))
      {
        break;
      }

LABEL_8:
      v16 = a1;
      if (a1 == v41)
      {
        goto LABEL_29;
      }
    }

    v17 = (v40 + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    sub_22F742170();

    sub_22F740D60();
    v20 = sub_22F7421D0();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if (((*(v4 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_7:

      goto LABEL_8;
    }

    a2 = ~v21;
    while (1)
    {
      v23 = (*(v14 + 48) + 16 * v22);
      v24 = *v23 == v18 && v23[1] == v19;
      if (v24 || (sub_22F742040() & 1) != 0)
      {
        break;
      }

      v22 = (v22 + 1) & a2;
      if (((*(v4 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22F146454(0, *(v15 + 16) + 1, 1);
      v15 = v43;
    }

    v27 = *(v15 + 16);
    v26 = *(v15 + 24);
    a2 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      sub_22F146454((v26 > 1), v27 + 1, 1);
      v15 = v43;
    }

    *(v15 + 16) = a2;
    v28 = v15 + 16 * v27;
    *(v28 + 32) = v18;
    *(v28 + 40) = v19;
    a3 = v39;
  }

  while (a1 != v41);
LABEL_29:

  a3 = v37;
  v30 = [v37 name];
  if (v30)
  {
    v31 = v30;
    sub_22F740E20();
  }

  v32 = sub_22F741550();
  if (!v38)
  {
    v34 = v32;

    if (v34)
    {
      a3 = sub_22F20BA80(v34, v36);

      sub_22F1B2BBC(0);

      return a3;
    }

    sub_22F20C580();
    swift_allocError();
    *v35 = 1;
LABEL_28:
    swift_willThrow();
    goto LABEL_33;
  }

LABEL_33:
  sub_22F1B2BBC(0);

  return a3;
}

uint64_t *sub_22F20C400(uint64_t *a1)
{
  sub_22F741690();
  if (!v1)
  {
    v3 = sub_22F741520();
    if (*(v3 + 16) && (v4 = sub_22F1229E8(*a1, a1[1]), (v5 & 1) != 0))
    {
      a1 = *(*(v3 + 56) + 8 * v4);

      sub_22F7416A0();
    }

    else
    {

      sub_22F7416A0();
      sub_22F20C580();
      swift_allocError();
      *v6 = 2;
      swift_willThrow();
    }
  }

  return a1;
}

unint64_t sub_22F20C4F8()
{
  result = qword_27DAB25A0;
  if (!qword_27DAB25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB25A0);
  }

  return result;
}

unint64_t sub_22F20C580()
{
  result = qword_27DAB25A8;
  if (!qword_27DAB25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB25A8);
  }

  return result;
}

uint64_t sub_22F20C5D4(uint64_t a1)
{
  v2 = type metadata accessor for MaestroRanker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22F20C630(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v24 - v4;
  v6 = [a1 name];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22F740E20();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = [a1 localIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_22F740E20();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = sub_22F73F090();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = type metadata accessor for GraphSearchEntity(0);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR___PGGraphSearchEntity_type] = 1300;
  v19 = &v18[OBJC_IVAR___PGGraphSearchEntity_label];
  *v19 = v8;
  v19[1] = v10;
  v20 = &v18[OBJC_IVAR___PGGraphSearchEntity_identifier];
  *v20 = v13;
  v20[1] = v15;
  *&v18[OBJC_IVAR___PGGraphSearchEntity_confidence] = 0;
  *&v18[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = 0;
  v21 = &v18[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
  *v21 = 0;
  *(v21 + 1) = 0;
  sub_22F1EDD04(v5, &v18[OBJC_IVAR___PGGraphSearchEntity_dateInterval]);
  *&v18[OBJC_IVAR___PGGraphSearchEntity_synonyms] = MEMORY[0x277D84F90];
  v24.receiver = v18;
  v24.super_class = v17;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  sub_22F1EDFCC(v5);
  return v22;
}

id sub_22F20C84C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v22 - v4;
  v6 = [a1 name];
  v7 = sub_22F740E20();
  v9 = v8;

  v10 = [a1 localIdentifier];
  v11 = sub_22F740E20();
  v13 = v12;

  v14 = sub_22F73F090();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = type metadata accessor for GraphSearchEntity(0);
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR___PGGraphSearchEntity_type] = 1330;
  v17 = &v16[OBJC_IVAR___PGGraphSearchEntity_label];
  *v17 = v7;
  v17[1] = v9;
  v18 = &v16[OBJC_IVAR___PGGraphSearchEntity_identifier];
  *v18 = v11;
  v18[1] = v13;
  *&v16[OBJC_IVAR___PGGraphSearchEntity_confidence] = 0;
  *&v16[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = 0;
  v19 = &v16[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_22F1EDD04(v5, &v16[OBJC_IVAR___PGGraphSearchEntity_dateInterval]);
  *&v16[OBJC_IVAR___PGGraphSearchEntity_synonyms] = MEMORY[0x277D84F90];
  v22.receiver = v16;
  v22.super_class = v15;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  sub_22F1EDFCC(v5);
  return v20;
}

uint64_t DataSampler.__allocating_init(_:samplingPolicy:positivesOversamplingFactor:negativesOversamplingFactor:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  DataSampler.init(_:samplingPolicy:positivesOversamplingFactor:negativesOversamplingFactor:)(a1, a2, a3, a4);
  return v8;
}

{
  v6 = *a2;
  sub_22F741280();
  sub_22F740CD0();
  swift_getWitnessTable();
  v7 = sub_22F741290();
  v8 = swift_allocObject();
  result = sub_22F740830();
  if (a3 < 1 || a4 <= 0)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    *(v8 + 32) = a3;
    *(v8 + 40) = a4;
    return v8;
  }

  return result;
}

uint64_t DataSampler.init(_:samplingPolicy:positivesOversamplingFactor:negativesOversamplingFactor:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  result = sub_22F740830();
  if (a3 < 1 || a4 < 1)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = a1;
    *(v4 + 24) = v8;
    *(v4 + 32) = a3;
    *(v4 + 40) = a4;
    return v4;
  }

  return result;
}

uint64_t DataSampler.SamplingPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F20CCE4(uint64_t a1)
{
  sub_22F742170();
  DataSampler.SamplingPolicy.hash(into:)();
  return sub_22F7421D0();
}

uint64_t sub_22F20CD20(uint64_t a1)
{
  v2 = *v1;
  v11 = v1[2];
  v9[1] = *(v2 + 80);
  v10 = a1;
  v3 = sub_22F741280();
  v4 = sub_22F741280();

  WitnessTable = swift_getWitnessTable();
  v7 = sub_22F26FD00(sub_22F20F874, v9, v4, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  return v7;
}

uint64_t sub_22F20CE18@<X0>(uint64_t *a5@<X8>)
{
  sub_22F741280();

  swift_getWitnessTable();
  result = sub_22F741B90();
  *a5 = result;
  return result;
}

uint64_t sub_22F20CEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22F741280();
  swift_getWitnessTable();
  return sub_22F7410C0() & 1;
}

void sub_22F20CF44(uint64_t a1, uint64_t a2, float (*a3)(uint64_t, char *), uint64_t a4)
{
  v5 = v4;
  v57 = a3;
  v58 = a4;
  v64 = a1;
  v7 = *v5;
  v8 = *(*v5 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v53 = &v45 - v10;
  v52 = sub_22F741860();
  v11 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v56 = (&v45 - v12);
  v13 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = &v45 - v17;
  v18 = sub_22F73FE50();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v59 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = TupleTypeMetadata2;
  v68 = sub_22F740C60();
  v21 = v5[2];
  v47 = v18;
  v46 = v19;
  v48 = v11;
  v49 = v13;
  if (a2)
  {

    v22 = sub_22F20CD20(a2);

    v21 = v22;
  }

  else
  {
  }

  v66 = v21;
  MEMORY[0x28223BE20](v23);
  v24 = *(v7 + 88);
  *(&v45 - 2) = v8;
  *(&v45 - 1) = v24;
  v63 = v24;
  sub_22F741280();
  v25 = sub_22F741280();

  swift_getWitnessTable();
  v54 = v25;
  v26 = sub_22F741B90();

  v67 = v26;
  v27 = sub_22F741230();

  v28 = v60;
  if (v27)
  {
    sub_22F20E164(v26, v59);
    v29 = qword_27DAB25B8;
    if (sub_22F741230() >= 1)
    {
      v61 = (v49 + 1);
      v55 = (v49 + 6);
      v50 = (v49 + 4);
      v49 += 2;
      ++v48;
      v62 = v29;
      while (sub_22F741230() < v64)
      {
        if (v5[3])
        {
          swift_beginAccess();
          v30 = vcvts_n_f32_u32(sub_22F20F3F4(0x1000001uLL), 0x18uLL) + 0.0;
          swift_endAccess();
          sub_22F20F4CC(v30);
        }

        else
        {
          v31 = sub_22F741230();
          if (v31 < 0)
          {
            goto LABEL_25;
          }

          v32 = v31;
          swift_beginAccess();
          if (!v32)
          {
            goto LABEL_26;
          }

          sub_22F20F35C(v32);
          swift_endAccess();
        }

        sub_22F7412B0();
        v33 = v66;
        v34 = sub_22F741230();
        if (v34 < 0)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        v35 = v34;
        swift_beginAccess();
        if (!v35)
        {
          goto LABEL_24;
        }

        sub_22F20F35C(v35);
        swift_endAccess();
        v36 = sub_22F7412B0();
        v66 = v33;
        MEMORY[0x28223BE20](v36);
        v37 = v63;
        *(&v45 - 4) = v8;
        *(&v45 - 3) = v37;
        *(&v45 - 2) = v28;
        swift_getWitnessTable();
        v38 = sub_22F741B90();
        if (sub_22F741230() < 1)
        {

          sub_22F741250();

          (*v61)(v28, v8);
        }

        else
        {
          v39 = v56;
          sub_22F20E430(v28, v38, v57, v58, v56);

          if ((*v55)(v39, 1, v8) == 1)
          {
            (*v48)(v39, v52);
            (*v61)(v28, v8);
          }

          else
          {
            v40 = v51;
            (*v50)(v51, v39, v8);
            v41 = *(v65 + 48);
            v42 = *v49;
            v43 = v53;
            (*v49)(v53, v60, v8);
            v42(&v43[v41], v40, v8);
            v28 = v60;
            sub_22F741280();
            sub_22F741240();
            v44 = *v61;
            (*v61)(v40, v8);
            v44(v28, v8);
          }
        }

        if (sub_22F741230() <= 0)
        {
          break;
        }
      }
    }

    (*(v46 + 8))(v59, v47);
  }

  else
  {
  }
}

void sub_22F20D754(uint64_t a1, uint64_t a2, float (*a3)(void, void), uint64_t a4)
{
  v70 = a3;
  v71 = a4;
  v73 = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v63 = &v52 - v9;
  v62 = sub_22F741860();
  v10 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v12 = &v52 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x28223BE20](v14);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  v56 = sub_22F73FE50();
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v64 = &v52 - v21;
  v75 = TupleTypeMetadata2;
  v78[2] = sub_22F740C60();
  v74 = v10;
  v69 = v13;
  if (a2)
  {
    v22 = a2;
    v23 = v4;
    v24 = sub_22F20CD20(v22);
  }

  else
  {
    v23 = v4;
  }

  v77 = v24;
  MEMORY[0x28223BE20](v24);
  v25 = *(v6 + 88);
  *(&v52 - 2) = v7;
  *(&v52 - 1) = v25;
  v72 = v25;
  v26 = sub_22F741280();
  v27 = sub_22F741280();
  swift_getWitnessTable();
  v76 = v27;
  v28 = sub_22F741B90();
  if (sub_22F741230() >= 2)
  {
    sub_22F20E164(v28, v64);
    v29 = qword_27DAB25B8;
    v30 = sub_22F741230();
    if (v30 >= 1)
    {
      v31 = v30;
      v65 = (v69 + 48);
      v60 = (v69 + 32);
      v59 = (v69 + 16);
      v67 = (v69 + 8);
      v58 = (v74 + 8);
      v54 = (v57 + 8);
      v53 = (v57 + 32);
      v66 = v12;
      v74 = v26;
      v68 = v29;
LABEL_8:
      v69 = v28;
      while (sub_22F741230() < v73)
      {
        v78[0] = v28;
        if (v23[3])
        {
          swift_beginAccess();

          v32 = vcvts_n_f32_u32(sub_22F20F3F4(0x1000001uLL), 0x18uLL) + 0.0;
          swift_endAccess();
          sub_22F20F4CC(v32);
        }

        else
        {
          swift_beginAccess();

          sub_22F20F35C(v31);
          swift_endAccess();
        }

        sub_22F741250();
        v33 = sub_22F741230();
        if (v33 < 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v34 = v33;
        swift_beginAccess();
        if (!v34)
        {
          goto LABEL_23;
        }

        sub_22F20F35C(v34);
        swift_endAccess();
        sub_22F7412B0();

        v77 = v78[0];
        MEMORY[0x28223BE20](v35);
        v36 = v18;
        v37 = v72;
        *(&v52 - 4) = v7;
        *(&v52 - 3) = v37;
        *(&v52 - 2) = v18;
        swift_getWitnessTable();
        v38 = sub_22F741060();

        v78[0] = v38;

        v39 = sub_22F741230();

        if (v39 < 1)
        {

          v77 = v69;
          MEMORY[0x28223BE20](v46);
          v47 = v72;
          *(&v52 - 4) = v7;
          *(&v52 - 3) = v47;
          *(&v52 - 2) = v36;
          v48 = sub_22F741060();

          v49 = v55;
          sub_22F20E164(v48, v55);
          v50 = v64;
          v51 = v56;
          (*v54)(v64, v56);
          (*v53)(v50, v49, v51);
          (*v67)(v36, v7);
          v31 = sub_22F741230();
          v28 = v48;
          v18 = v36;
          if (v31 > 0)
          {
            goto LABEL_8;
          }

          break;
        }

        v40 = v66;
        sub_22F20EA20(v36, v78, v70, v71, v66);

        v18 = v36;
        if ((*v65)(v40, 1, v7) == 1)
        {
          (*v58)(v40, v62);
          (*v67)(v36, v7);
        }

        else
        {
          v41 = v61;
          (*v60)(v61, v40, v7);
          v42 = *(v75 + 48);
          v43 = *v59;
          v44 = v63;
          (*v59)(v63, v36, v7);
          v43(&v44[v42], v41, v7);
          sub_22F741280();
          v18 = v36;
          sub_22F741240();
          v45 = *v67;
          (*v67)(v41, v7);
          v45(v36, v7);
        }

        v28 = v69;
        v31 = sub_22F741230();
        if (v31 <= 0)
        {
          break;
        }
      }
    }

    (*(v57 + 8))(v64, v56);
  }

  else
  {
  }
}

void sub_22F20E094(uint64_t *a6@<X8>)
{
  sub_22F741280();

  swift_getWitnessTable();
  v7 = sub_22F741B90();
  if (sub_22F741230() < 1)
  {

    v7 = 0;
  }

  *a6 = v7;
}

uint64_t sub_22F20E164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22F73FE50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23[0] = a1;
  v19 = *(v6 + 80);
  sub_22F741280();
  v11 = sub_22F741280();

  swift_getWitnessTable();
  v12 = sub_22F741B90();
  v13 = sub_22F741230();
  v14 = 0.0;
  sub_22F73FE30();
  if (v13 < 1)
  {

    return (*(v8 + 32))(a2, v10, v7);
  }

  else
  {
    v23[0] = v12;
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x231900C20](&v20, v11, WitnessTable);

    v22 = v20;
    sub_22F741D90();
    sub_22F741D60();
    sub_22F741D80();
    sub_22F741D70();
    while (v21)
    {
      v16 = sub_22F741230();

      v14 = v14 + v16;
      sub_22F73FE80();
      sub_22F741D70();
    }

    sub_22F73FDC0();
    return (*(v8 + 8))(v10, v7);
  }
}

void sub_22F20E430(uint64_t a1@<X0>, uint64_t a2@<X1>, float (*a3)(uint64_t, char *)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v51 = a4;
  v49 = a1;
  v9 = *(*v5 + 80);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v38 - v11;
  v48 = sub_22F741860();
  v13 = *(v48 - 8);
  v14 = MEMORY[0x28223BE20](v48);
  v15 = *(v10 + 56);
  v47 = &v38 - v16;
  v44 = v15;
  v45 = v10 + 56;
  v15(v14);
  v50 = a3;
  if (!a3 || (v17 = v5[4], v17 < 2))
  {
    v23 = sub_22F741230();
    if ((v23 & 0x8000000000000000) == 0)
    {
      v24 = v23;
      swift_beginAccess();
      if (v24)
      {
        sub_22F20F35C(v24);
        swift_endAccess();
        sub_22F7412B0();
        (*(v13 + 8))(v47, v48);
        (v44)(a5, 0, 1, v9);
        return;
      }

      goto LABEL_24;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = sub_22F741230();
  v38 = a5;
  v39 = v13;
  if (v17 < v18)
  {
    v52 = a2;
    swift_beginAccess();
    sub_22F741280();
    sub_22F740840();
    swift_getWitnessTable();
    sub_22F20F7E0();
    v19 = sub_22F7410B0();
    swift_endAccess();
    v52 = v19;
    swift_getWitnessTable();
    sub_22F741500();
    v20 = v53;
    v21 = v54;
    v22 = v55;
LABEL_10:
    swift_unknownObjectRetain_n();
    v28 = sub_22F741930();
    swift_unknownObjectRelease();
    v29 = sub_22F741950();
    v46 = v28;
    if (v28 == v29)
    {
LABEL_14:
      swift_unknownObjectRelease();
      sub_22F107E14(v50, v51);
      swift_unknownObjectRelease();
      (*(v39 + 32))(v38, v47, v48);
      return;
    }

    sub_22F741940();
    if (v46 >= v21)
    {
      v43 = v22 >> 1;
      if ((v22 >> 1) > v46)
      {
        v30 = (v39 + 8);
        v41 = (v10 + 32);
        v42 = v10 + 16;
        v31 = v46 + 1;
        (*(v10 + 16))(v12, v20 + *(v10 + 72) * v46, v9);
        v32 = v50(v49, v12);
        v33 = *v30;
        v34 = v47;
        v40 = v30;
        v33(v47, v48);
        (*(v10 + 32))(v34, v12, v9);
        (v44)(v34, 0, 1, v9);
        if (v31 == sub_22F741950())
        {
          goto LABEL_14;
        }

        while (1)
        {
          sub_22F741940();
          if (v46 < v21 || v43 <= v31)
          {
            break;
          }

          (*(v10 + 16))(v12, v20 + *(v10 + 72) * v31, v9);
          v35 = v50(v49, v12);
          if (v32 < v35)
          {
            (*(v10 + 8))(v12, v9);
          }

          else
          {
            v36 = v35;
            v37 = v47;
            (*v40)(v47, v48);
            (*v41)(v37, v12, v9);
            (v44)(v37, 0, 1, v9);
            v32 = v36;
          }

          if (++v31 == sub_22F741950())
          {
            goto LABEL_14;
          }
        }
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    sub_22F7412A0();
    v20 = v25;
    v21 = v26;
    v22 = v27;
    goto LABEL_10;
  }

LABEL_25:
  __break(1u);
}

void sub_22F20EA20(uint64_t a1@<X0>, uint64_t *a2@<X1>, float (*a3)(void, void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v76 = a1;
  v11 = *(*v5 + 80);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](a1);
  v65 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v66 = sub_22F73FE50();
  v17 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v77 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22F741860();
  v60 = *(v70 - 8);
  v19 = MEMORY[0x28223BE20](v70);
  v20 = *(v12 + 56);
  v69 = &v58 - v21;
  v68 = v12 + 56;
  v67 = v20;
  v20(v19);
  v22 = *(v6 + 40);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v59 = a5;
    if (!v22)
    {
LABEL_33:
      (*(v60 + 32))(v59, v69, v70);
      return;
    }

    v23 = 0;
    v75 = *(v6 + 24);
    v62 = (v17 + 8);
    if (a3)
    {
      v24 = v22 == 1;
    }

    else
    {
      v24 = 1;
    }

    v25 = !v24;
    v73 = v25;
    v61 = (v12 + 8);
    v63 = (v60 + 8);
    v64 = (v12 + 32);
    v26 = 1;
    v27 = 0.0;
    v79 = a3;
    v80 = a4;
    v74 = v11;
    v71 = v22;
    v72 = a2;
    v81 = v16;
    while (1)
    {
      v82 = v23;
      v32 = *a2;
      LODWORD(v83) = v26;
      if (v75)
      {
        sub_22F20E164(v32, v77);
        swift_beginAccess();
        sub_22F740840();
        sub_22F20F7E0();
          ;
        }

        v34 = vcvts_n_f32_u64(HIDWORD(i), 0x18uLL) + 0.0;
        swift_endAccess();
        v35 = v77;
        sub_22F20F4CC(v34);
        v37 = v36;
        (*v62)(v35, v66);
      }

      else
      {
        sub_22F741280();
        v38 = sub_22F741230();
        if (v38 < 0)
        {
          goto LABEL_37;
        }

        v39 = v38;
        swift_beginAccess();
        if (!v39)
        {
          goto LABEL_38;
        }

        sub_22F740840();
        sub_22F20F7E0();
        v40 = sub_22F740D30();
        v37 = (v40 * v39) >> 64;
        if (v39 > v40 * v39)
        {
          v41 = -v39 % v39;
          if (v41 > v40 * v39)
          {
            do
            {
              v42 = sub_22F740D30();
            }

            while (v41 > v42 * v39);
            v37 = (v42 * v39) >> 64;
          }
        }

        swift_endAccess();
      }

      v43 = sub_22F741280();
      sub_22F7412B0();
      v44 = sub_22F741230();
      if (v44 < 0)
      {
        break;
      }

      v45 = v44;
      swift_beginAccess();
      if (!v45)
      {
        goto LABEL_36;
      }

      v78 = v37;
      sub_22F740840();
      sub_22F20F7E0();
      v46 = sub_22F740D30();
      if (v45 > v46 * v45)
      {
        v47 = -v45 % v45;
        if (v47 > v46 * v45)
        {
            ;
          }
        }
      }

      swift_endAccess();
      v48 = v81;
      v49 = v74;
      sub_22F7412B0();

      if (!v73)
      {
        (*v63)(v69, v70);
        v57 = v59;
        (*v64)(v59, v48, v49);
        (v67)(v57, 0, 1, v49);
        return;
      }

      v50 = v80;

      v51 = v79;
      v52 = v79(v76, v48);
      if (v83 & 1 | (v52 >= v27))
      {
        v28 = v52;
        v29 = v69;
        (*v63)(v69, v70);
        sub_22F107E14(v51, v50);
        (*v64)(v29, v48, v49);
        (v67)(v29, 0, 1, v49);
        v27 = v28;
        v30 = v71;
        a2 = v72;
        v31 = v82;
      }

      else
      {
        sub_22F741280();
        v53 = v72;
        sub_22F7411E0();
        sub_22F20F308(v78, *v53, v43);
        v54 = v65;
        sub_22F741250();
        v83 = *v61;
        v83(v54, v49);
        GEOLocationCoordinate2DMake();
        sub_22F7412B0();
        v55 = sub_22F741230();

        if (!v55)
        {
          sub_22F741250();
        }

        v56 = sub_22F741230();
        sub_22F107E14(v79, v80);
        v83(v81, v49);
        a2 = v53;
        v30 = v71;
        v31 = v82;
        if (!v56)
        {
          goto LABEL_33;
        }
      }

      v26 = 0;
      v23 = v31 + 1;
      if (v23 == v30)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

uint64_t DataSampler.deinit()
{

  v1 = qword_27DAB25B8;
  v2 = sub_22F740840();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DataSampler.__deallocating_deinit()
{
  DataSampler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22F20F308(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_22F20F35C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_22F740840();
    sub_22F20F7E0();
    v2 = sub_22F740D30();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = sub_22F740D30();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22F20F3F4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    sub_22F740840();
    sub_22F20F7E0();
    v3 = sub_22F740D30() * v2;
    if (v3 < v1)
    {
        ;
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22F20F4CC(float a1)
{
  v2 = sub_22F73FDF0();
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    v4 = 0;
    while (v3 >= v4)
    {
      if (__OFSUB__(v3, v4))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v5 = v4 + (v3 - v4) / 2;
      if (__OFADD__(v4, (v3 - v4) / 2))
      {
        goto LABEL_16;
      }

      sub_22F73FE70();
      if (v6 == a1)
      {
        return;
      }

      sub_22F73FE70();
      if (v7 >= a1)
      {
        v3 = v5 - 1;
        if (__OFSUB__(v5, 1))
        {
          __break(1u);
          return;
        }
      }

      else
      {
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_17;
        }
      }
    }
  }
}

uint64_t sub_22F20F634(uint64_t a1)
{
  result = sub_22F740840();
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

unint64_t sub_22F20F7E0()
{
  result = qword_27DAB26C0;
  if (!qword_27DAB26C0)
  {
    sub_22F740840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB26C0);
  }

  return result;
}

uint64_t MaestroKeywordManager.__allocating_init(keywordProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_22F100260(a1, v2 + 16);
  return v2;
}

uint64_t MaestroKeywordManager.songs<A>(from:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v143 = a2;
  v9 = sub_22F741860();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v111 - v11;
  v142 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22F741230() < 1)
  {
    v21 = sub_22F741280();
    v22 = MEMORY[0x277D837D0];
    swift_getTupleTypeMetadata2();
    v23 = sub_22F7411F0();
    v20 = sub_22F210EE4(v23, v22, v21, MEMORY[0x277D837E0]);

    return v20;
  }

  v140 = v10;
  v141 = v9;
  swift_beginAccess();
  v16 = *(v4 + 40);
  v17 = *(v4 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v4 + 16, v16);
  v18 = (*(v17 + 8))(v16, v17);
  v20 = v19;
  swift_endAccess();
  if (v20)
  {
    v145 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    return v20;
  }

  v24 = [v18 rowLabels];
  if (!v24)
  {
    goto LABEL_32;
  }

  v139 = v12;
  v135 = v15;
  v137 = v18;
  v25 = v24;
  v138 = sub_22F741180();

  v147 = a1;
  v26 = sub_22F740C50();
  v136 = &v111;
  v144 = v26;
  MEMORY[0x28223BE20](v26);
  *(&v111 - 2) = a3;
  *(&v111 - 1) = a4;
  v133 = a4;
  v27 = sub_22F741280();
  sub_22F740CE0();
  WitnessTable = swift_getWitnessTable();
  v134 = v27;
  v128 = WitnessTable;
  v29 = v138;
  sub_22F741090();
  v30 = v145;
  sub_22F740CC0();

  swift_getWitnessTable();
  sub_22F7414A0();
  v145 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F211764();
  sub_22F741440();
  v20 = sub_22F741460();

  if (v20 < 1)
  {

    if (qword_2810A9460 == -1)
    {
LABEL_10:
      v32 = sub_22F740B90();
      __swift_project_value_buffer(v32, qword_2810B4D90);

      v33 = sub_22F740B70();
      v34 = sub_22F7415C0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 134217984;
        *(v35 + 4) = sub_22F741230();

        _os_log_impl(&dword_22F0FC000, v33, v34, "[MemoriesMusic] None of the %ld input songs are in the Maestro data set", v35, 0xCu);
        MEMORY[0x2319033A0](v35, -1, -1);
      }

      else
      {
      }

      v61 = v137;
      v62 = MEMORY[0x277D837D0];
      v63 = v134;
      swift_getTupleTypeMetadata2();
      v64 = sub_22F7411F0();
      v20 = sub_22F210EE4(v64, v62, v63, MEMORY[0x277D837E0]);

      sub_22F21173C(v61);
      return v20;
    }

LABEL_78:
    swift_once();
    goto LABEL_10;
  }

  v18 = v137;
  v31 = sub_22F741550();
  if (v5)
  {

LABEL_33:
    sub_22F21173C(v18);
    return v20;
  }

  if (!v31)
  {
LABEL_31:

LABEL_32:
    sub_22F2116E8();
    swift_allocError();
    *v65 = 1;
    swift_willThrow();
    goto LABEL_33;
  }

  v20 = v31;
  v36 = [v31 columnLabels];
  if (!v36)
  {

    goto LABEL_31;
  }

  v127 = v30;
  v112 = v20;
  v37 = v36;
  v38 = sub_22F741180();

  v39 = *(v38 + 16);
  v143 = 0;
  v136 = v39;
  if (v39)
  {
    v40 = 0;
    v41 = (v38 + 40);
    v42 = MEMORY[0x277D84F98];
    while (v40 < *(v38 + 16))
    {
      v46 = *(v41 - 1);
      v47 = *v41;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v145 = v42;
      v49 = sub_22F13A8F4(v40);
      v51 = v42[2];
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_75;
      }

      v55 = v50;
      if (v42[3] >= v54)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = v49;
          sub_22F135B64();
          v49 = v60;
        }
      }

      else
      {
        sub_22F12822C(v54, isUniquelyReferenced_nonNull_native);
        v49 = sub_22F13A8F4(v40);
        if ((v55 & 1) != (v56 & 1))
        {
          goto LABEL_81;
        }
      }

      v42 = v145;
      if (v55)
      {
        v43 = (*(v145 + 56) + 16 * v49);
        v44 = v145;
        *v43 = v46;
        v43[1] = v47;

        v42 = v44;
      }

      else
      {
        *(v145 + 8 * (v49 >> 6) + 64) |= 1 << v49;
        *(v42[6] + 8 * v49) = v40;
        v57 = (v42[7] + 16 * v49);
        *v57 = v46;
        v57[1] = v47;

        v58 = v42[2];
        v53 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v53)
        {
          goto LABEL_77;
        }

        v42[2] = v59;
      }

      v45 = v139;
      ++v40;
      v41 += 2;
      if (v136 == v40)
      {
        goto LABEL_36;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v42 = MEMORY[0x277D84F98];
  v45 = v139;
LABEL_36:
  v130 = v42;

  v124 = sub_22F741490();
  v129 = sub_22F740C50();
  v119 = [v112 matrix];
  v67 = [v119 rows];
  if ((v67 & 0x8000000000000000) == 0)
  {
    v68 = v67;
    v69 = v135;
    v70 = v138;
    if (!v67)
    {
      v120 = 0;
      v136 = 0;
      v121 = 0;
      v71 = 0;
LABEL_70:

      v147 = v129;

      v144 = sub_22F740C50();
      MEMORY[0x28223BE20](v144);
      v109 = v133;
      *(&v111 - 2) = a3;
      *(&v111 - 1) = v109;
      sub_22F740CE0();
      sub_22F740CE0();
      swift_getWitnessTable();
      sub_22F741090();

      sub_22F21173C(v137);
      swift_bridgeObjectRelease_n();
      sub_22F107E14(v120, v136);
      sub_22F107E14(v121, v71);
      return v145;
    }

    v120 = 0;
    v136 = 0;
    v121 = 0;
    v71 = 0;
    v72 = 0;
    v126 = v138 + 32;
    v125 = (v142 + 48);
    v117 = (v142 + 32);
    v113 = v142 + 16;
    v115 = (v142 + 8);
    v116 = (v140 + 8);
    v132 = v129;
    v114 = v67;
    while (v72 < *(v70 + 16))
    {
      v73 = (v126 + 16 * v72);
      v74 = v73[1];
      v145 = *v73;
      v146 = v74;

      sub_22F740D10();

      v75 = (*v125)(v45, 1, a3);
      v140 = v72;
      if (v75 == 1)
      {
        (*v116)(v45, v141);
      }

      else
      {
        v131 = v71;
        (*v117)(v69, v45, a3);
        v76 = [v119 row_];
        v77 = [v76 array];

        sub_22F170D8C();
        v78 = sub_22F741180();

        if (v78 >> 62)
        {
          v79 = sub_22F741A00();
          v80 = v130;
          if (v79)
          {
LABEL_45:
            v81 = 0;
            v82 = v129;
            while (1)
            {
              v129 = v82;
              v20 = v81;
              while (1)
              {
                if ((v78 & 0xC000000000000001) != 0)
                {
                  v83 = MEMORY[0x2319016F0](v20, v78);
                }

                else
                {
                  if (v20 >= *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_73;
                  }

                  v83 = *(v78 + 8 * v20 + 32);
                }

                v84 = v83;
                v81 = v20 + 1;
                if (__OFADD__(v20, 1))
                {
                  __break(1u);
LABEL_73:
                  __break(1u);
                  goto LABEL_74;
                }

                [v83 floatValue];
                if (v85 > 0.0)
                {
                  break;
                }

                ++v20;
                if (v81 == v79)
                {
                  goto LABEL_67;
                }
              }

              if (!v80[2] || (v86 = sub_22F13A8F4(v20), (v87 & 1) == 0))
              {

                sub_22F2116E8();
                swift_allocError();
                *v110 = 2;
                swift_willThrow();

                sub_22F21173C(v137);
                (*v115)(v135, a3);
                sub_22F107E14(v120, v136);
                sub_22F107E14(v121, v131);
                return v20;
              }

              v88 = (v130[7] + 16 * v86);
              v89 = v88[1];
              v122 = *v88;
              v129 = v89;
              v90 = swift_allocObject();
              v123 = v90;
              v91 = v133;
              *(v90 + 16) = a3;
              *(v90 + 24) = v91;

              sub_22F107E14(v120, v136);
              sub_22F210E70(a3, a3);
              v92 = v142;
              swift_allocObject();
              v93 = sub_22F7411A0();
              (*(v92 + 16))(v94, v135, a3);
              v147 = v93;
              v95 = swift_allocObject();
              v96 = v133;
              v95[2] = a3;
              v95[3] = v96;
              v118 = v95;
              v97 = v123;
              v95[4] = sub_22F2117E4;
              v95[5] = v97;
              sub_22F107E14(v121, v131);
              v98 = v132;
              LODWORD(v131) = swift_isUniquelyReferenced_nonNull_native();
              v145 = v98;
              v136 = sub_22F1229E8(v122, v129);
              v99 = *(v98 + 16);
              LODWORD(v132) = v100;
              if (__OFADD__(v99, (v100 & 1) == 0))
              {
                break;
              }

              sub_22F741C80();
              v101 = sub_22F741C60();
              v82 = v145;
              if (v101)
              {
                v102 = sub_22F1229E8(v122, v129);
                v104 = v132;
                if ((v132 & 1) != (v103 & 1))
                {
                  goto LABEL_82;
                }

                v105 = v102;
              }

              else
              {
                v105 = v136;
                v104 = v132;
              }

              if ((v104 & 1) == 0)
              {
                v136 = v105;
                v144 = (*(v118 + 32))();
                v145 = v122;
                v146 = v129;

                sub_22F741C70();
              }

              sub_22F741480();

              v121 = sub_22F2117F0;
              v120 = sub_22F2117E4;
              v106 = v118;
              v131 = v118;
              v107 = v123;
              v136 = v123;
              v132 = v82;
              v129 = v82;
              v80 = v130;
              if (v81 == v79)
              {
                goto LABEL_68;
              }
            }

            __break(1u);
            goto LABEL_80;
          }
        }

        else
        {
          v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v80 = v130;
          if (v79)
          {
            goto LABEL_45;
          }
        }

LABEL_67:
        v106 = v131;
        v82 = v132;
        v107 = v136;
LABEL_68:
        v108 = v106;

        v69 = v135;
        (*v115)(v135, a3);
        v132 = v82;
        v136 = v107;
        v71 = v108;
        v70 = v138;
        v45 = v139;
        v68 = v114;
      }

      v72 = v140 + 1;
      if (v140 + 1 == v68)
      {
        goto LABEL_70;
      }
    }

    goto LABEL_76;
  }

LABEL_80:
  __break(1u);
LABEL_81:
  sub_22F7420C0();
  __break(1u);
LABEL_82:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F2109F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22F741860();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v16 - v9;
  v11 = (*(a4 + 16))(a3, a4, v8);
  v13 = v12;
  v14 = *(a3 - 8);
  (*(v14 + 16))(v10, a2, a3);
  (*(v14 + 56))(v10, 0, 1, a3);
  v16[0] = v11;
  v16[1] = v13;
  sub_22F740CE0();
  return sub_22F740D20();
}

uint64_t sub_22F210B48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_22F741490();

  swift_getWitnessTable();
  sub_22F741290();
  sub_22F741280();
  sub_22F740CE0();
  return sub_22F740D20();
}

uint64_t MaestroKeywordManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_22F210C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F740D40();

  return sub_22F210CE8(a1, v6, a2, a3);
}

unint64_t sub_22F210CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_22F740DE0();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_22F210E70(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

unint64_t sub_22F210EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_22F741230())
  {
    sub_22F741E00();
    v13 = sub_22F741DF0();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_22F741230();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_22F741210())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_22F741B30();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_22F210C8C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

char *sub_22F2111D0(uint64_t a1)
{
  v3 = v1;
  if (qword_2810A9BD0 != -1)
  {
    goto LABEL_28;
  }

LABEL_2:
  v5 = qword_2810B4E90;
  *&v6 = CACurrentMediaTime();
  sub_22F1B560C("MaestroKeywordDataFrameCreation", 31, 2u, v6, 0, v5, v41);
  sub_22F741690();
  if (v3)
  {
    goto LABEL_3;
  }

  v2 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v3 = v2;
  for (i = a1; v11; v3 = v40)
  {
LABEL_12:
    v15 = __clz(__rbit64(v11)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(*(a1 + 56) + 4 * v15);
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_22F13E1A8(0, *(v2 + 2) + 1, 1, v2);
    }

    v21 = *(v2 + 2);
    v20 = *(v2 + 3);
    if (v21 >= v20 >> 1)
    {
      v2 = sub_22F13E1A8((v20 > 1), v21 + 1, 1, v2);
    }

    *(v2 + 2) = v21 + 1;
    v22 = &v2[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v18;
    v23 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v24) = v19;
    [v23 initWithFloat_];

    MEMORY[0x231900D00](v25);
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    v11 &= v11 - 1;
    sub_22F741220();
    a1 = i;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_2;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22F771340;
  *(v26 + 32) = v3;
  v27 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v28 = sub_22F741160();

  v29 = [v27 initWithArray_];

  v30 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v31 = v29;
  v32 = sub_22F741160();
  v33 = sub_22F741160();

  v2 = [v30 initWithName:0 rowLabels:v32 columnLabels:v33 matrix:v31];

  if (v2)
  {
    sub_22F7416A0();

    sub_22F1B2BBC(0);
  }

  else
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v34 = sub_22F740B90();
    __swift_project_value_buffer(v34, qword_2810B4D90);
    v35 = sub_22F740B70();
    v36 = sub_22F7415E0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22F0FC000, v35, v36, "[MemoriesMusic] - MaestroKeywordManager failed to create keyword data frame", v37, 2u);
      MEMORY[0x2319033A0](v37, -1, -1);
    }

    sub_22F2116E8();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();

LABEL_3:
    sub_22F1B2BBC(0);
  }

  return v2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_22F2116E8()
{
  result = qword_27DAB26C8;
  if (!qword_27DAB26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB26C8);
  }

  return result;
}

unint64_t sub_22F211764()
{
  result = qword_27DAB26D0;
  if (!qword_27DAB26D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB26D0);
  }

  return result;
}

uint64_t sub_22F2117F0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

unint64_t sub_22F211898()
{
  result = qword_27DAB26D8;
  if (!qword_27DAB26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB26D8);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EspressoEventLabeler.init()(PhotosGraph::EspressoEventLabeler *__return_ptr retstr)
{
  v3 = _s11PhotosGraph26EventLabelingConfigurationC10bundlePathSSSgvgZ_0();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = objc_allocWithZone(PGEventLabelerE5Model);
    v8 = sub_22F212148(v5, v6);
    if (!v1)
    {
      retstr->model.super.isa = v8;
    }
  }

  else
  {
    sub_22F176594();
    swift_allocError();
    swift_willThrow();
  }
}

id EspressoEventLabeler.featureNames()()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v8[0] = 0;
  v2 = [v1 inputNamesWithError_];
  v3 = v8[0];
  if (v2)
  {
    v4 = v2;
    v5 = sub_22F741420();
    v6 = v3;
  }

  else
  {
    v5 = v8[0];
    sub_22F73F370();

    swift_willThrow();
  }

  return v5;
}

char *EspressoEventLabeler.label(event:progressReporter:)(void *a1)
{
  v3 = v2;
  v39 = *MEMORY[0x277D85DE8];
  v5 = *v1;
  v6 = sub_22F7416B0();
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 16))(v6, v9, v10);
  if (v2)
  {
  }

  else
  {
    if (qword_27DAAFD88 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v11 = qword_27DAD0E78;
      *&v12 = CACurrentMediaTime();
      sub_22F1B560C("EspressoEventLabeler", 20, 2u, v12, 0, v11, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
      v13 = sub_22F740C80();

      v36[0] = 0;
      v5 = [v5 computeWithFeatures:v13 error:v36];

      v14 = v36[0];
      if (!v5)
      {
        break;
      }

      v33 = v6;
      v34 = v8;
      sub_22F170D8C();
      v15 = sub_22F740CA0();
      v16 = v14;

      v17 = 1 << *(v15 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v15 + 64);
      v20 = (v17 + 63) >> 6;

      v6 = 0;
      v5 = MEMORY[0x277D84F90];
      while (v19)
      {
LABEL_13:
        v22 = __clz(__rbit64(v19)) | (v6 << 6);
        v23 = *(v15 + 48) + 16 * v22;
        v24 = *(*(v15 + 56) + 8 * v22);
        v26 = *v23;
        v25 = *(v23 + 8);
        v19 &= v19 - 1;
        v36[0] = v26;
        v36[1] = v25;
        v36[2] = v24;
        sub_22F211E50(v36, v37);
        v8 = LOBYTE(v37[0]);
        if (LOBYTE(v37[0]) != 23)
        {
          v27 = v37[1];
          v35 = v3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_22F13E7BC(0, *(v5 + 2) + 1, 1, v5);
          }

          v29 = *(v5 + 2);
          v28 = *(v5 + 3);
          if (v29 >= v28 >> 1)
          {
            v5 = sub_22F13E7BC((v28 > 1), v29 + 1, 1, v5);
          }

          *(v5 + 2) = v29 + 1;
          v30 = &v5[16 * v29];
          v30[32] = v8;
          *(v30 + 5) = v27;
          v3 = v35;
        }
      }

      while (1)
      {
        v21 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v21 >= v20)
        {

          sub_22F7416A0();
          sub_22F1B2BBC(0);

          return v5;
        }

        v19 = *(v15 + 64 + 8 * v21);
        ++v6;
        if (v19)
        {
          v6 = v21;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

    v31 = v36[0];
    sub_22F73F370();

    swift_willThrow();
    sub_22F1B2BBC(1);
  }

  return v5;
}

void sub_22F211E50(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v5 = sub_22F740B90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = qword_27DAAFCC0;

  v29 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = off_27DAB14F0;
  if (*(off_27DAB14F0 + 2) && (v14 = sub_22F1229E8(v10, v9), (v15 & 1) != 0))
  {
    v16 = v14;

    v17 = *(v13[7] + v16);
    v18 = v29;
    [v29 doubleValue];
    v20 = v19;

    v21 = v30;
    *v30 = v17;
    v21[1] = v20;
  }

  else
  {
    if (qword_27DAAFD88 != -1)
    {
      swift_once();
    }

    sub_22F1B3158(v8);

    v22 = sub_22F740B70();
    v23 = sub_22F7415E0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v3;
      v26 = v25;
      v31 = v25;
      *v24 = 136315138;
      v27 = sub_22F145F20(v10, v9, &v31);

      *(v24 + 4) = v27;
      _os_log_impl(&dword_22F0FC000, v22, v23, "[EspressoEventLabeler] Espresso model returned output with unknown event label: %s.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x2319033A0](v26, -1, -1);
      MEMORY[0x2319033A0](v24, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    *v30 = xmmword_22F77A900;
  }
}

id sub_22F212148(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22F740DF0();

  v8[0] = 0;
  v4 = [v2 initWithFilePath:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_22F73F370();

    swift_willThrow();
  }

  return v4;
}

unint64_t sub_22F212238()
{
  result = qword_27DAB26F0;
  if (!qword_27DAB26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB26F0);
  }

  return result;
}

uint64_t sub_22F21228C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_22F7400A0() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_22F21F158(&unk_2810A94E0, MEMORY[0x277D3C148], MEMORY[0x277D3C158]);
  v7 = 0;
  while ((sub_22F740DE0() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_22F2123AC(unsigned __int8 a1, unint64_t a2, unint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  v25 = a2;
  if ((a3 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(a2 + 16);
    }
  }

  else if (v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 >> 32;
  v8 = a1;
  v23 = a2 >> 16;
  v24 = a2 >> 8;
  v21 = HIDWORD(a2);
  v22 = a2 >> 24;
  v19 = HIWORD(a2);
  v20 = a2 >> 40;
  v17 = v6;
  v18 = HIBYTE(a2);
  if (v5 > 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = BYTE6(a3);
  if (v5)
  {
    v9 = a2 >> 32;
  }

  while (v6 != v9)
  {
    if (v5 == 2)
    {
      if (v6 < *(a2 + 16))
      {
        goto LABEL_36;
      }

      if (v6 >= *(a2 + 24))
      {
        goto LABEL_38;
      }

      v14 = sub_22F73F170();
      if (!v14)
      {
        goto LABEL_43;
      }

      v11 = v14;
      v15 = sub_22F73F190();
      v13 = v6 - v15;
      if (__OFSUB__(v6, v15))
      {
        goto LABEL_40;
      }

      goto LABEL_25;
    }

    if (v5 == 1)
    {
      if (v6 < v25 || v6 >= v7)
      {
        goto LABEL_37;
      }

      v10 = sub_22F73F170();
      if (!v10)
      {
        goto LABEL_42;
      }

      v11 = v10;
      v12 = sub_22F73F190();
      v13 = v6 - v12;
      if (__OFSUB__(v6, v12))
      {
        goto LABEL_39;
      }

LABEL_25:
      if (*(v11 + v13) == v8)
      {
        return v6;
      }

      goto LABEL_29;
    }

    if (v6 >= BYTE6(a3))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v26[0] = a2;
    v26[1] = v24;
    v26[2] = v23;
    v26[3] = v22;
    v26[4] = v21;
    v26[5] = v20;
    v26[6] = v19;
    v26[7] = v18;
    v27 = a3;
    v28 = BYTE2(a3);
    v29 = BYTE3(a3);
    v30 = BYTE4(a3);
    v31 = BYTE5(a3);
    if (v26[v6] == v8)
    {
      return v6;
    }

LABEL_29:
    ++v6;
    if (v5 <= 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    if (v5 != 2)
    {
      if (!v17)
      {
        return 0;
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v9 = *(a2 + 24);
  }

  return 0;
}

uint64_t sub_22F212614(unsigned __int8 a1, uint64_t a2)
{
  v18 = *(a2 + 16);
  v2 = 0;
  if (v18)
  {
    v3 = a2 + 32;
    v4 = 0xE600000000000000;
    v5 = a1;
    while (1)
    {
      v6 = *(v3 + v2);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v9 = 0x6557664F74726170;
          v10 = 0xEA00000000006B65;
        }

        else
        {
          if (v6 == 4)
          {
            v9 = 0x616559664F796164;
          }

          else
          {
            v9 = 0x6144664F74726170;
          }

          if (v6 == 4)
          {
            v10 = 0xE900000000000072;
          }

          else
          {
            v10 = 0xE900000000000079;
          }
        }
      }

      else
      {
        if (v6 == 1)
        {
          v7 = 0x6E6F73616573;
        }

        else
        {
          v7 = 0x59664F6567646577;
        }

        if (v6 == 1)
        {
          v8 = 0xE600000000000000;
        }

        else
        {
          v8 = 0xEB00000000726165;
        }

        if (*(v3 + v2))
        {
          v9 = v7;
        }

        else
        {
          v9 = 1918985593;
        }

        if (*(v3 + v2))
        {
          v10 = v8;
        }

        else
        {
          v10 = 0xE400000000000000;
        }
      }

      v11 = 0xE900000000000079;
      v12 = 0x616559664F796164;
      if (v5 == 4)
      {
        v11 = 0xE900000000000072;
      }

      else
      {
        v12 = 0x6144664F74726170;
      }

      if (v5 == 3)
      {
        v12 = 0x6557664F74726170;
        v11 = 0xEA00000000006B65;
      }

      if (v5 == 1)
      {
        v13 = 0x6E6F73616573;
      }

      else
      {
        v13 = 0x59664F6567646577;
      }

      if (v5 != 1)
      {
        v4 = 0xEB00000000726165;
      }

      if (!v5)
      {
        v13 = 1918985593;
        v4 = 0xE400000000000000;
      }

      v14 = v5 <= 2 ? v13 : v12;
      v15 = v5 <= 2 ? v4 : v11;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_22F742040();

      if (v16)
      {
        return v2;
      }

      ++v2;
      v4 = 0xE600000000000000;
      if (v18 == v2)
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_22F21282C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6557664F74726170;
  v5 = 0xEA00000000006B65;
  v6 = 0x616559664F796164;
  v7 = 0xE900000000000072;
  if (a1 != 4)
  {
    v6 = 0x6144664F74726170;
    v7 = 0xE900000000000079;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6E6F73616573;
  if (a1 != 1)
  {
    v9 = 0x59664F6567646577;
    v8 = 0xEB00000000726165;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1918985593;
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
      v12 = 0xEA00000000006B65;
      if (v10 != 0x6557664F74726170)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE900000000000072;
      if (v10 != 0x616559664F796164)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000079;
      if (v10 != 0x6144664F74726170)
      {
LABEL_34:
        v13 = sub_22F742040();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6E6F73616573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB00000000726165;
      if (v10 != 0x59664F6567646577)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1918985593)
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