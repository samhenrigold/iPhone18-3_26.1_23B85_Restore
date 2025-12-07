void sub_1BD5A1F44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v92 = sub_1BE049B04();
  v8 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v83 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v68 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00);
  MEMORY[0x1EEE9AC00](v86);
  v89 = (&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v88 = (&v68 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v68 - v23;
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (a2 - a1 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_130;
  }

  v26 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v25 != -1)
  {
    v27 = (a2 - a1) / v25;
    v95 = a1;
    v94 = a4;
    if (v27 < v26 / v25)
    {
      v28 = v27 * v25;
      if (a4 < a1 || a1 + v28 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v83 = (a4 + v28);
      v93 = a4 + v28;
      if (v28 >= 1 && a2 < a3)
      {
        v88 = (v8 + 88);
        v89 = (v8 + 16);
        LODWORD(v87) = *MEMORY[0x1E6967AA0];
        LODWORD(v81) = *MEMORY[0x1E6967A68];
        LODWORD(v80) = *MEMORY[0x1E6967AB8];
        LODWORD(v79) = *MEMORY[0x1E6967A98];
        LODWORD(v78) = *MEMORY[0x1E6967AB0];
        v77 = *MEMORY[0x1E6967A78];
        v74 = (v8 + 8);
        v31 = *MEMORY[0x1E6967A88];
        v75 = *MEMORY[0x1E6967AC8];
        LODWORD(v76) = v31;
        v82 = a3;
        do
        {
          v32 = v25;
          v33 = a2;
          v34 = v90;
          sub_1BD5A0764(a2, v90);
          sub_1BD5A0764(a4, v21);
          v35 = *v89;
          v36 = v84;
          v37 = v92;
          (*v89)(v84, v34, v92);
          v38 = *v88;
          v39 = (*v88)(v36, v37);
          v91 = a4;
          if (v39 == v87)
          {
            v40 = 7;
          }

          else if (v39 == v81)
          {
            v40 = 5;
          }

          else if (v39 == v80)
          {
            v40 = 4;
          }

          else if (v39 == v79)
          {
            v40 = 3;
          }

          else if (v39 == v78)
          {
            v40 = 1;
          }

          else if (v39 == v77)
          {
            v40 = 0;
          }

          else if (v39 == v76)
          {
            v40 = 6;
          }

          else if (v39 == v75)
          {
            v40 = 2;
          }

          else
          {
            (*v74)(v84, v92);
            v40 = 8;
          }

          v41 = v85;
          v42 = v21;
          v43 = v21;
          v44 = v92;
          v35(v85, v43, v92);
          v45 = v38(v41, v44);
          if (v45 == v87)
          {
            v46 = 7;
            a2 = v33;
            v25 = v32;
            v21 = v42;
          }

          else
          {
            a2 = v33;
            v21 = v42;
            if (v45 == v81)
            {
              v46 = 5;
              v25 = v32;
            }

            else
            {
              v25 = v32;
              if (v45 == v80)
              {
                v46 = 4;
              }

              else if (v45 == v79)
              {
                v46 = 3;
              }

              else if (v45 == v78)
              {
                v46 = 1;
              }

              else if (v45 == v77)
              {
                v46 = 0;
              }

              else if (v45 == v76)
              {
                v46 = 6;
              }

              else if (v45 == v75)
              {
                v46 = 2;
              }

              else
              {
                (*v74)(v85, v92);
                v46 = 8;
              }
            }
          }

          sub_1BD0DE53C(v21, &qword_1EBD49BE0, &qword_1BE0DFB00);
          sub_1BD0DE53C(v90, &qword_1EBD49BE0, &qword_1BE0DFB00);
          if (v40 >= v46)
          {
            a4 = v91 + v25;
            if (a1 < v91 || a1 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v47 = v82;
            }

            else
            {
              v47 = v82;
              if (a1 != v91)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v94 = a4;
          }

          else
          {
            a4 = v91;
            if (a1 < a2 || a1 >= a2 + v25)
            {
              swift_arrayInitWithTakeFrontToBack();
              a2 += v25;
              v47 = v82;
            }

            else
            {
              v47 = v82;
              if (a1 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              a2 += v25;
            }
          }

          a1 += v25;
          v95 = a1;
        }

        while (a4 < v83 && a2 < v47);
      }

      goto LABEL_128;
    }

    v29 = v26 / v25 * v25;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v29;
    if (v29 < 1)
    {
LABEL_127:
      v95 = a2;
      v93 = v48;
LABEL_128:
      sub_1BD935298(&v95, &v94, &v93);
      return;
    }

    v80 = a1;
    v49 = -v25;
    v90 = (v8 + 16);
    v87 = (v8 + 88);
    LODWORD(v85) = *MEMORY[0x1E6967AA0];
    v77 = *MEMORY[0x1E6967A68];
    v75 = *MEMORY[0x1E6967AB8];
    LODWORD(v74) = *MEMORY[0x1E6967A98];
    v73 = *MEMORY[0x1E6967AB0];
    v71 = *MEMORY[0x1E6967A78];
    v68 = (v8 + 8);
    v70 = *MEMORY[0x1E6967A88];
    v50 = a4 + v29;
    v69 = *MEMORY[0x1E6967AC8];
    v91 = a4;
    v78 = -v25;
LABEL_74:
    v72 = v48;
    v51 = a2;
    a2 += v49;
    v82 = v51;
    v79 = a2;
    while (1)
    {
      if (v51 <= v80)
      {
        v95 = v51;
        v93 = v72;
        goto LABEL_128;
      }

      v52 = a3;
      v76 = v48;
      v53 = v50 + v49;
      v54 = v88;
      sub_1BD5A0764(v50 + v49, v88);
      sub_1BD5A0764(a2, v89);
      v55 = *v90;
      v56 = v81;
      v57 = v54;
      v58 = v92;
      (*v90)(v81, v57, v92);
      v59 = *v87;
      v60 = (*v87)(v56, v58);
      if (v60 == v85)
      {
        break;
      }

      if (v60 == v77)
      {
        v61 = 5;
        goto LABEL_88;
      }

      if (v60 == v75)
      {
        v61 = 4;
        goto LABEL_88;
      }

      if (v60 == v74)
      {
        v61 = 3;
        goto LABEL_88;
      }

      if (v60 == v73)
      {
        v61 = 1;
        goto LABEL_88;
      }

      if (v60 != v71)
      {
        if (v60 == v70)
        {
          v61 = 6;
        }

        else if (v60 == v69)
        {
          v61 = 2;
        }

        else
        {
          (*v68)(v81, v92);
          v61 = 8;
        }

        goto LABEL_88;
      }

      v84 = 0;
LABEL_89:
      v62 = v83;
      v63 = v92;
      v55(v83, v89, v92);
      v64 = v59(v62, v63);
      if (v64 == v85)
      {
        v65 = 7;
        v66 = v78;
        a2 = v79;
      }

      else
      {
        a2 = v79;
        if (v64 == v77)
        {
          v65 = 5;
          v66 = v78;
        }

        else
        {
          v66 = v78;
          if (v64 == v75)
          {
            v65 = 4;
          }

          else if (v64 == v74)
          {
            v65 = 3;
          }

          else if (v64 == v73)
          {
            v65 = 1;
          }

          else if (v64 == v71)
          {
            v65 = 0;
          }

          else if (v64 == v70)
          {
            v65 = 6;
          }

          else if (v64 == v69)
          {
            v65 = 2;
          }

          else
          {
            v67 = v78;
            (*v68)(v83, v92);
            v66 = v67;
            v65 = 8;
          }
        }
      }

      v49 = v66;
      a3 = v52 + v66;
      sub_1BD0DE53C(v89, &qword_1EBD49BE0, &qword_1BE0DFB00);
      sub_1BD0DE53C(v88, &qword_1EBD49BE0, &qword_1BE0DFB00);
      if (v84 < v65)
      {
        if (v52 < v82 || a3 >= v82)
        {
          swift_arrayInitWithTakeFrontToBack();
          v48 = v76;
        }

        else
        {
          v48 = v76;
          if (v52 != v82)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v50 <= v91)
        {
          goto LABEL_127;
        }

        goto LABEL_74;
      }

      v48 = v53;
      v51 = v82;
      if (v52 < v50 || a3 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v52 != v50)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v50 = v53;
      if (v53 <= v91)
      {
        a2 = v51;
        goto LABEL_127;
      }
    }

    v61 = 7;
LABEL_88:
    v84 = v61;
    goto LABEL_89;
  }

LABEL_131:
  __break(1u);
}

BOOL sub_1BD5A2AF0(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_1BE049B04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a1, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = *MEMORY[0x1E6967AA0];
  if (v13 == *MEMORY[0x1E6967AA0])
  {
    v15 = 7;
  }

  else if (v13 == *MEMORY[0x1E6967A68])
  {
    v15 = 5;
  }

  else if (v13 == *MEMORY[0x1E6967AB8])
  {
    v15 = 4;
  }

  else if (v13 == *MEMORY[0x1E6967A98])
  {
    v15 = 3;
  }

  else if (v13 == *MEMORY[0x1E6967AB0])
  {
    v15 = 1;
  }

  else if (v13 == *MEMORY[0x1E6967A78])
  {
    v15 = 0;
  }

  else if (v13 == *MEMORY[0x1E6967A88])
  {
    v15 = 6;
  }

  else if (v13 == *MEMORY[0x1E6967AC8])
  {
    v15 = 2;
  }

  else
  {
    (*(v4 + 8))(v10, v3);
    v15 = 8;
  }

  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v14)
  {
    v17 = 7;
  }

  else if (v16 == *MEMORY[0x1E6967A68])
  {
    v17 = 5;
  }

  else if (v16 == *MEMORY[0x1E6967AB8])
  {
    v17 = 4;
  }

  else if (v16 == *MEMORY[0x1E6967A98])
  {
    v17 = 3;
  }

  else if (v16 == *MEMORY[0x1E6967AB0])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x1E6967A78])
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x1E6967A88])
  {
    v17 = 6;
  }

  else if (v16 == *MEMORY[0x1E6967AC8])
  {
    v17 = 2;
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v17 = 8;
  }

  return v15 < v17;
}

void sub_1BD5A2E3C(uint64_t a1)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4B880, &unk_1BE0D4CA0);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00);
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - v7;
  v9 = *(a1 + *(type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending(0) + 24));
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v79[0] = MEMORY[0x1E69E7CC0];
    sub_1BD53220C(0, v10, 0);
    v11 = v79[0];
    v12 = v9 + 64;
    v13 = sub_1BE053674();
    v14 = 0;
    v15 = *(v9 + 36);
    v63 = v9 + 72;
    v64 = v10;
    v67 = v9 + 64;
    v68 = v8;
    v65 = v15;
    v66 = v9;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v9 + 32))
    {
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      if (v15 != *(v9 + 36))
      {
        goto LABEL_23;
      }

      v75 = 1 << v13;
      v76 = v13 >> 6;
      v74 = v14;
      v17 = v73;
      v18 = *(v73 + 48);
      v19 = *(v9 + 48);
      v20 = sub_1BE049B04();
      v21 = *(v20 - 8);
      v22 = v21;
      v23 = v19 + *(v21 + 72) * v13;
      v77 = *(v21 + 16);
      v78 = v11;
      v24 = v71;
      v77(v71, v23, v20);
      v25 = *(v9 + 56);
      v26 = sub_1BE0493F4();
      v27 = *(v26 - 8);
      (*(v27 + 16))(&v24[v18], v25 + *(v27 + 72) * v13, v26);
      v28 = v72;
      (*(v22 + 32))(v72, v24, v20);
      v29 = *(v17 + 48);
      v30 = v68;
      (*(v27 + 32))(v28 + v29, &v24[v18], v26);
      v31 = *(v70 + 48);
      v77(v30, v28, v20);
      sub_1BE0493C4();
      v32 = sub_1BE053344();
      [v32 doubleValue];
      v34 = v33;

      v35 = v30;
      *(v30 + v31) = v34;
      v11 = v78;
      sub_1BD0DE53C(v28, &unk_1EBD4B880, &unk_1BE0D4CA0);
      v79[0] = v11;
      v1 = v11[2];
      v36 = v11[3];
      if (v1 >= v36 >> 1)
      {
        sub_1BD53220C((v36 > 1), v1 + 1, 1);
        v11 = v79[0];
      }

      v11[2] = v1 + 1;
      sub_1BD5A3384(v35, v11 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v1);
      v9 = v66;
      v12 = v67;
      v16 = 1 << *(v66 + 32);
      if (v13 >= v16)
      {
        goto LABEL_24;
      }

      v42 = *(v67 + 8 * v76);
      if ((v42 & v75) == 0)
      {
        goto LABEL_25;
      }

      LODWORD(v15) = v65;
      if (v65 != *(v66 + 36))
      {
        goto LABEL_26;
      }

      v43 = v42 & (-2 << (v13 & 0x3F));
      if (v43)
      {
        v16 = __clz(__rbit64(v43)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v44 = v76 << 6;
        v45 = v76 + 1;
        v46 = (v63 + 8 * v76);
        while (v45 < (v16 + 63) >> 6)
        {
          v47 = *v46++;
          v1 = v47;
          v44 += 64;
          ++v45;
          if (v47)
          {
            sub_1BD20DE9C(v13, v65, 0, v37, v38, v39, v40, v41);
            v16 = __clz(__rbit64(v1)) + v44;
            goto LABEL_4;
          }
        }

        sub_1BD20DE9C(v13, v65, 0, v37, v38, v39, v40, v41);
      }

LABEL_4:
      v14 = v74 + 1;
      v13 = v16;
      if (v74 + 1 == v64)
      {
        goto LABEL_20;
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

    v79[0], v55, v56, v57, v58, v59, v60, v61;
    __break(1u);
  }

  else
  {
LABEL_20:
    v79[0] = v11;
    sub_1BE048C84();
    sub_1BD5A07D4(v79);
    v11, v48, v49, v50, v51, v52, v53, v54;
  }
}

uint64_t sub_1BD5A3384(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5A3420(char a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6[0] = a1;
  v7 = a2;
  v8 = a4;
  v9 = a5;
  return MEMORY[0x1BFB3E0D0](v6, a3, &type metadata for RoundedRectangleViewModifier);
}

uint64_t sub_1BD5A3460@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a6@<D1>)
{
  v43 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B890, &qword_1BE0E3B90);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B898, &unk_1BE0E3B98);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - v15;
  v17 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v20 + 28);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1BE04F684();
  (*(*(v23 - 8) + 104))(v19 + v21, v22, v23);
  *v19 = a6;
  v19[1] = a6;
  v24 = &v16[*(v14 + 44)];
  sub_1BD1E4B10(v19, v24);
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20) + 36)) = 256;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8A0, &qword_1BE0E3BA8);
  (*(*(v25 - 8) + 16))(v16, a1, v25);
  sub_1BE04E3F4();
  sub_1BD1E4B10(v19, v12);
  v26 = *&v44 * 0.5;
  v27 = &v12[*(v10 + 76)];
  sub_1BD1E4B10(v19, v27);
  *(v27 + *(sub_1BE04EDD4() + 20)) = v26;
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8A8, &qword_1BE0E3BB0) + 36);
  v29 = v45;
  *v28 = v44;
  *(v28 + 16) = v29;
  *(v28 + 32) = v46;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8B0, &qword_1BE0E3BB8);
  *(v27 + *(v30 + 52)) = a3;
  *(v27 + *(v30 + 56)) = 256;
  sub_1BE048964();
  v31 = sub_1BE051CD4();
  v33 = v32;
  v34 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8B8, &qword_1BE0E3BC0) + 36));
  *v34 = v31;
  v34[1] = v33;
  v35 = sub_1BE051CD4();
  v37 = v36;
  sub_1BD1E4B74(v19);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8C0, &qword_1BE0E3BC8);
  v39 = v43;
  v40 = v43 + *(v38 + 36);
  sub_1BD088A48(v12, v40);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B8C8, &unk_1BE0E3BD0) + 36));
  *v41 = v35;
  v41[1] = v37;
  return sub_1BD5A37E0(v16, v39);
}

uint64_t sub_1BD5A37E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B898, &unk_1BE0E3B98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD5A3850()
{
  result = qword_1EBD4B8D0;
  if (!qword_1EBD4B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B8C0, &qword_1BE0E3BC8);
    sub_1BD5A3908();
    sub_1BD0DE4F4(&qword_1EBD4B8E8, &qword_1EBD4B8C8, &unk_1BE0E3BD0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B8D0);
  }

  return result;
}

unint64_t sub_1BD5A3908()
{
  result = qword_1EBD4B8D8;
  if (!qword_1EBD4B8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B898, &unk_1BE0E3B98);
    sub_1BD0DE4F4(&qword_1EBD4B8E0, &qword_1EBD4B8A0, &qword_1BE0E3BA8, MEMORY[0x1E697FDF8]);
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B8D8);
  }

  return result;
}

double sub_1BD5A39EC(uint64_t a1)
{
  v1 = sub_1BE051C54();
  result = 10.0;
  if (v1)
  {
    return 26.0;
  }

  return result;
}

id sub_1BD5A3B28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddBankAccountInformationView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1BD5A3BE4()
{
  result = qword_1EBD4B908;
  if (!qword_1EBD4B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B908);
  }

  return result;
}

void *sub_1BD5A3C44@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = type metadata accessor for AddBankAccountInformationView.Coordinator();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_fundingSourceAdded] = 0;
  v7 = &v6[OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_completionAction];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;
  sub_1BE048964();
  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD5A3CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5A3DB4();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD5A3D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5A3DB4();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD5A3D8C(uint64_t a1)
{
  sub_1BD5A3DB4();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD5A3DB4()
{
  result = qword_1EBD4B910;
  if (!qword_1EBD4B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B910);
  }

  return result;
}

id sub_1BD5A3E08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69B86A8]) initWithType_];
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v46);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  v21 = v46;
  v22 = [v46 type];
  if (v22 == 4)
  {
LABEL_6:
    result = [v21 savingsDetails];
    if (result)
    {
      v26 = result;
      v25 = [result countryCode];

      if (v25)
      {
        goto LABEL_8;
      }

LABEL_9:
      v28 = 0xE200000000000000;
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  if (v22 != 1)
  {
    goto LABEL_9;
  }

  result = [v21 creditDetails];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v24 = result;
  v25 = [result countryCode];

  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_8:
  sub_1BE052434();
  v28 = v27;

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B918, &unk_1BE0E3D50);
  sub_1BE050154();
  v29 = v46;
  v30 = objc_allocWithZone(PKAddBankAccountInformationViewController);
  v31 = v21;
  v32 = v4;
  v33 = sub_1BE052404();
  v28, v34, v35, v36, v37, v38, v39, v40;
  v41 = [v30 initWithDelegate:v29 bankInformation:v32 accountCountryCode:v33 featureAccount:v31];

  if (v41)
  {
    [v41 setOfferKeychainPreFill_];
    v42 = v41;
  }

  else
  {
    v42 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  }

  v43 = objc_allocWithZone(PKNavigationController);
  v44 = v41;
  v45 = [v43 initWithRootViewController_];

  return v45;
}

uint64_t sub_1BD5A40B4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NavigationController();
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

uint64_t static SetupHeaderView.Configuration.Plain(title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = -64;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  sub_1BE048C84();

  return sub_1BE048C84();
}

uint64_t static SetupHeaderView.Configuration.Symbol(name:symbolColor:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = 0;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048964();

  return sub_1BE048C84();
}

uint64_t static SetupHeaderView.Configuration.Icon(name:bundle:pdf:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 | 0x40;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  sub_1BE048C84();
  sub_1BE048C84();
  v10 = a3;

  return sub_1BE048C84();
}

uint64_t SetupHeaderView.Configuration.CardSize.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

uint64_t static SetupHeaderView.Configuration.CardArt(pass:size:title:subtitle:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a2;
  *a7 = a1;
  *(a7 + 8) = v8;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0x80;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  sub_1BE048C84();
  v9 = a1;

  return sub_1BE048C84();
}

__n128 SetupHeaderView.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t SetupHeaderView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v5 = v2[3];
  v8[2] = v2[2];
  v8[3] = v5;
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B920, &qword_1BE0E3DC0);
  return sub_1BD5A43A8(v8, a2 + *(v6 + 44));
}

uint64_t sub_1BD5A43A8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B958, &qword_1BE0E4138);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = a1[1];
  v71 = *a1;
  v72 = v8;
  v9 = a1[3];
  v73 = a1[2];
  v74 = v9;
  v66 = &v60 - v10;
  sub_1BD5A485C((&v60 - v10));
  v11 = *a1;
  v12 = *(a1 + 1);
  v13 = *(a1 + 2);
  v14 = *(a1 + 24);
  v15 = *(a1 + 4);
  v16 = *(a1 + 5);
  v17 = *(a1 + 6);
  v18 = *(a1 + 7);
  *&v71 = v15;
  *(&v71 + 1) = v16;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v65 = sub_1BE0506C4();
  v64 = v19;
  v21 = v20;
  v63 = v22;
  v62 = sub_1BE0501E4();
  if ((v14 >> 6 == 2 || v14 >> 6 == 3 && !(v12 | v11 | v13) && v14 == 192) && qword_1EBD36DC8 != -1)
  {
    swift_once();
  }

  sub_1BE04E1F4();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v21 & 1;
  v78 = v21 & 1;
  v77 = 0;
  if (v18)
  {
    *&v71 = v17;
    *(&v71 + 1) = v18;
    sub_1BE048C84();
    v32 = sub_1BE0506C4();
    v34 = v33;
    v36 = v35;
    v38 = v37 & 1;
    sub_1BD0D7F18(v32, v33, v37 & 1);
    sub_1BE048C84();
  }

  else
  {
    v32 = 0;
    v34 = 0;
    v38 = 0;
    v36 = 0;
  }

  v39 = v66;
  sub_1BD0DE19C(v66, v6, &qword_1EBD4B958, &qword_1BE0E4138);
  sub_1BD0DE19C(v6, a2, &qword_1EBD4B958, &qword_1BE0E4138);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B960, &qword_1BE0E4140);
  v41 = (a2 + *(v40 + 48));
  v42 = v65;
  *&v67 = v65;
  v43 = a2;
  v44 = v64;
  *(&v67 + 1) = v64;
  LOBYTE(v68) = v31;
  v61 = v31;
  v45 = v63;
  *(&v68 + 1) = v63;
  v46 = v62;
  LOBYTE(v69) = v62;
  *(&v69 + 1) = v24;
  *v70 = v26;
  *&v70[8] = v28;
  *&v70[16] = v30;
  v70[24] = 0;
  v47 = v68;
  *v41 = v67;
  v41[1] = v47;
  v48 = *v70;
  v41[2] = v69;
  v41[3] = v48;
  *(v41 + 57) = *&v70[9];
  v49 = *(v40 + 64);
  v60 = v6;
  v50 = (v43 + v49);
  sub_1BD0DE19C(&v67, &v71, &qword_1EBD3FF20, &unk_1BE0CF800);
  sub_1BD1969AC(v32, v34, v38, v36);
  sub_1BD1969F0(v32, v34, v38, v36, v51, v52, v53, v54);
  *v50 = v32;
  v50[1] = v34;
  v50[2] = v38;
  v50[3] = v36;
  sub_1BD0DE53C(v39, &qword_1EBD4B958, &qword_1BE0E4138);
  sub_1BD1969F0(v32, v34, v38, v36, v55, v56, v57, v58);
  *&v71 = v42;
  *(&v71 + 1) = v44;
  LOBYTE(v72) = v61;
  *(&v72 + 1) = v45;
  LOBYTE(v73) = v46;
  *(&v73 + 1) = v24;
  *&v74 = v26;
  *(&v74 + 1) = v28;
  v75 = v30;
  v76 = 0;
  sub_1BD0DE53C(&v71, &qword_1EBD3FF20, &unk_1BE0CF800);
  return sub_1BD0DE53C(v60, &qword_1EBD4B958, &qword_1BE0E4138);
}

unint64_t sub_1BD5A47A8()
{
  result = qword_1EBD4B928;
  if (!qword_1EBD4B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B928);
  }

  return result;
}

void sub_1BD5A485C(void *a1@<X8>)
{
  v100 = a1;
  v96 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v96);
  v3 = (v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = v93 - v5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B968, &qword_1BE0E4148);
  MEMORY[0x1EEE9AC00](v95);
  v8 = v93 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B970, &qword_1BE0E4150);
  MEMORY[0x1EEE9AC00](v99);
  v97 = v93 - v9;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B978, &qword_1BE0E4158);
  MEMORY[0x1EEE9AC00](v98);
  v15 = v93 - v14;
  v16 = *v1;
  v17 = *(v1 + 8);
  v18 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = v19 >> 6;
  if (v19 >> 6 <= 1)
  {
    if (!v20)
    {
      v21 = *(v1 + 16);
      sub_1BE048964();
      sub_1BE048C84();
      v22 = sub_1BE0515A4();
      v101 = v22;
      v102 = v21;
      v103 = 1;
      sub_1BE048964();
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B9B0, &qword_1BE0E4170);
      sub_1BD5A59F0();
      sub_1BE04F9A4();
      v23 = v105;
      *v15 = v104;
      v15[16] = v23;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B998, &qword_1BE0E4168);
      sub_1BD5A5964();
      sub_1BD5A5AD0();
      sub_1BE04F9A4();
      v21, v24, v25, v26, v27, v28, v29, v30;
      v22, v31, v32, v33, v34, v35, v36, v37;
      return;
    }

    if (v19)
    {
      if (v18)
      {
        v50 = *v1;
        v51 = *v1;
        v52 = *(v1 + 8);
        v53 = *(v1 + 16);
        sub_1BD5A5738(v51, v52, v18, v19);
        v94 = v53;
        v54 = v53;
        v93[1] = v50;
        v55 = sub_1BE052404();
        v56 = sub_1BE052404();
        v57 = v54;
        v58 = [v54 URLForResource:v55 withExtension:v56];

        if (v58)
        {
          sub_1BE04A9F4();

          v58 = sub_1BE04A9C4();
          (*(v11 + 8))(v13, v10);
        }

        if (qword_1EBD36D88 != -1)
        {
          swift_once();
        }

        v59 = *&qword_1EBDAB4E8;
        v60 = unk_1EBDAB4F0;
        v61 = PKUIScreenScale();
        v62 = PKUIImageFromPDF(v58, v59, v60, v61);

        if (v62)
        {
          v63 = v62;
          v64 = sub_1BE051544();
          v101 = v64;
          LOBYTE(v102) = 0;
          sub_1BE048964();
          sub_1BE04F9A4();
          v17, v65, v66, v67, v68, v69, v70, v71;
          v64, v72, v73, v74, v75, v76, v77, v78;

LABEL_19:
          v91 = BYTE8(v104);
          *v8 = v104;
          v8[8] = v91;
          swift_storeEnumTagMultiPayload();
          swift_retain_n();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B980, &qword_1BE0E4160);
          sub_1BD5A5884();
          sub_1BD25BEA8();
          v92 = v97;
          sub_1BE04F9A4();
          sub_1BD0DE19C(v92, v15, &qword_1EBD4B970, &qword_1BE0E4150);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B998, &qword_1BE0E4168);
          sub_1BD5A5964();
          sub_1BD5A5AD0();
          sub_1BE04F9A4();

          sub_1BD0DE53C(v92, &qword_1EBD4B970, &qword_1BE0E4150);
          return;
        }

        v82 = v94;
LABEL_18:
        v57 = v82;
        sub_1BE048C84();
        v101 = sub_1BE0515F4();
        LOBYTE(v102) = 1;
        sub_1BE04F9A4();
        v17, v84, v85, v86, v87, v88, v89, v90;
        goto LABEL_19;
      }

      v80 = *v1;
      v81 = *(v1 + 8);
      v82 = 0;
      v83 = 0;
    }

    else
    {
      v80 = *v1;
      v81 = *(v1 + 8);
      v82 = *(v1 + 16);
      v83 = v18;
    }

    sub_1BD5A5738(v80, v81, v83, v19);
    goto LABEL_18;
  }

  if (v20 == 2)
  {
    v94 = *(v1 + 16);
    v38 = v16;
    v39 = v16;
    v40 = PKOBKCardHeaderViewSize(v17);
    v41 = v96;
    *(v3 + *(v96 + 24)) = v39;
    type metadata accessor for WrappedPass(0);
    swift_storeEnumTagMultiPayload();
    v42 = v39;
    PKPassFrontFaceContentSize();
    v3[3] = v40;
    v3[4] = v40 * (v44 / v43);
    *v3 = sub_1BD70C870;
    v3[1] = 0.0;
    *(v3 + 16) = 0;
    *(v3 + *(v41 + 28)) = 1;
    *(v3 + *(v41 + 32)) = 1911;
    sub_1BD5A57BC(v3, v6);
    sub_1BD5A5820(v6, v8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B980, &qword_1BE0E4160);
    sub_1BD5A5884();
    sub_1BD25BEA8();
    v45 = v97;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v45, v15, &qword_1EBD4B970, &qword_1BE0E4150);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B998, &qword_1BE0E4168);
    sub_1BD5A5964();
    sub_1BD5A5AD0();
    sub_1BE04F9A4();
    sub_1BD5A5B5C(v38, v17, v94, v19, v46, v47, v48, v49);
    sub_1BD0DE53C(v45, &qword_1EBD4B970, &qword_1BE0E4150);
    sub_1BD3A38BC(v6);
  }

  else
  {
    v101 = 0;
    v102 = 0;
    v103 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B9B0, &qword_1BE0E4170);
    sub_1BD5A59F0();
    sub_1BE04F9A4();
    v79 = v105;
    *v15 = v104;
    v15[16] = v79;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B998, &qword_1BE0E4168);
    sub_1BD5A5964();
    sub_1BD5A5AD0();
    sub_1BE04F9A4();
  }
}

uint64_t sub_1BD5A50FC@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v5 = v2[3];
  v8[2] = v2[2];
  v8[3] = v5;
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B920, &qword_1BE0E3DC0);
  return sub_1BD5A43A8(v8, a2 + *(v6 + 44));
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI15SetupHeaderViewV13ConfigurationV11ContentTypeO(uint64_t a1)
{
  v1 = *(a1 + 24) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1BD5A5190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD5A51D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD5A5248(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 25))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BD5A529C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1BD5A5308(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 24) = *(result + 24) & 1 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    *(result + 24) = -64;
  }

  return result;
}

uint64_t sub_1BD5A5348(void **a1, void **a2, __n128 a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  v44[0] = *a1;
  v44[1] = v3;
  v44[2] = v5;
  v45 = v6;
  v46 = v8;
  v47 = v7;
  v48 = v9;
  v11 = v6 >> 6;
  v49 = v10;
  if (v6 >> 6 <= 1)
  {
    if (v11)
    {
      if (v10 & 0xC0) == 0x40 && (v4 == v8 && v3 == v7 || (sub_1BE053B84()))
      {
        if (v5)
        {
          if (!v9)
          {
            v12 = v8;
            v13 = v7;
            v34 = 0;
            goto LABEL_29;
          }

          sub_1BD0E5E8C(0, &qword_1EBD35DA8, 0x1E696AAE8);
          sub_1BD5A5738(v8, v7, v9, v10);
          sub_1BD5A5738(v4, v3, v5, v6);
          v31 = v9;
          v32 = v5;
          v33 = sub_1BE053074();
          sub_1BD0DE53C(v44, &qword_1EBD4B950, &qword_1BE0E4130);

          if ((v33 & 1) == 0)
          {
LABEL_30:
            v30 = 0;
            return v30 & 1;
          }
        }

        else
        {
          sub_1BD5A5738(v8, v7, v9, v10);
          sub_1BD5A5738(v4, v3, 0, v6);
          v43 = v9;
          sub_1BD0DE53C(v44, &qword_1EBD4B950, &qword_1BE0E4130);
          if (v9)
          {

            goto LABEL_30;
          }
        }

        v30 = v10 ^ v6 ^ 1;
        return v30 & 1;
      }
    }

    else if (v10 < 0x40 && (v4 == v8 && v3 == v7 || (sub_1BE053B84() & 1) != 0))
    {
      v12 = v8;
      v13 = v7;
      if (!v5)
      {
        sub_1BD5A5738(v8, v7, v9, v10);
        sub_1BD5A5738(v4, v3, 0, v6);
        sub_1BE048964();
        sub_1BD0DE53C(v44, &qword_1EBD4B950, &qword_1BE0E4130);
        if (!v9)
        {
LABEL_36:
          v30 = 1;
          return v30 & 1;
        }

        v9, v36, v37, v38, v39, v40, v41, v42;
        goto LABEL_30;
      }

      if (v9)
      {
        sub_1BD5A5738(v8, v7, v9, v10);
        sub_1BD5A5738(v4, v3, v5, v6);
        sub_1BE048964();
        sub_1BE048964();
        v14 = sub_1BE051394();
        v9, v15, v16, v17, v18, v19, v20, v21;
        sub_1BD0DE53C(v44, &qword_1EBD4B950, &qword_1BE0E4130);
        v5, v22, v23, v24, v25, v26, v27, v28;
        if (v14)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      v34 = 0;
      goto LABEL_29;
    }

LABEL_28:
    v12 = v8;
    v13 = v7;
    v34 = v9;
LABEL_29:
    sub_1BD5A5738(v12, v13, v34, v10);
    sub_1BD5A5738(v4, v3, v5, v6);
    sub_1BD0DE53C(v44, &qword_1EBD4B950, &qword_1BE0E4130);
    goto LABEL_30;
  }

  if (v11 == 2)
  {
    if ((v10 & 0xC0) != 0x80)
    {
      goto LABEL_28;
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
    sub_1BD5A5738(v8, v7, v9, v10);
    sub_1BD5A5738(v4, v3, v5, v6);
    v29 = sub_1BE053074();
    sub_1BD0DE53C(v44, &qword_1EBD4B950, &qword_1BE0E4130);
    v30 = v7 == v3;
    if ((v29 & 1) == 0)
    {
      v30 = 0;
    }
  }

  else
  {
    if (v10 < 0xC0 || v7 | v8 | v9 || v10 != 192)
    {
      goto LABEL_28;
    }

    sub_1BD0DE53C(v44, &qword_1EBD4B950, &qword_1BE0E4130);
    v30 = 1;
  }

  return v30 & 1;
}

id sub_1BD5A5738(id result, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {

      return result;
    }
  }

  else
  {
    if (a4 >> 6)
    {
      v4 = a3;
    }

    else
    {
      sub_1BE048964();
    }

    return sub_1BE048C84();
  }

  return result;
}

uint64_t sub_1BD5A57BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5A5820(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD5A5884()
{
  result = qword_1EBD4B988;
  if (!qword_1EBD4B988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B980, &qword_1BE0E4160);
    sub_1BD50CBB4();
    sub_1BD5A5910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B988);
  }

  return result;
}

unint64_t sub_1BD5A5910()
{
  result = qword_1EBD4B990;
  if (!qword_1EBD4B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B990);
  }

  return result;
}

unint64_t sub_1BD5A5964()
{
  result = qword_1EBD4B9A0;
  if (!qword_1EBD4B9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B998, &qword_1BE0E4168);
    sub_1BD5A59F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9A0);
  }

  return result;
}

unint64_t sub_1BD5A59F0()
{
  result = qword_1EBD4B9A8;
  if (!qword_1EBD4B9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B9B0, &qword_1BE0E4170);
    sub_1BD5A5A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9A8);
  }

  return result;
}

unint64_t sub_1BD5A5A7C()
{
  result = qword_1EBD4B9B8;
  if (!qword_1EBD4B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9B8);
  }

  return result;
}

unint64_t sub_1BD5A5AD0()
{
  result = qword_1EBD4B9C0;
  if (!qword_1EBD4B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B970, &qword_1BE0E4150);
    sub_1BD5A5884();
    sub_1BD25BEA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9C0);
  }

  return result;
}

void sub_1BD5A5B5C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 != 2)
    {
      return;
    }
  }

  else
  {
    if (!(a4 >> 6))
    {
      a2, a2, a3, a4, a5, a6, a7, a8;

      a3, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    a2, a2, a3, a4, a5, a6, a7, a8;
    a1 = a3;
  }
}

uint64_t sub_1BD5A5BF8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a1[3];
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 == v4)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (sub_1BE053B84() & 1) == 0 || ((v2 ^ v4))
  {
    return 0;
  }

LABEL_7:

  return sub_1BD3FE590(v3, v5);
}

id sub_1BD5A5C94(void *a1)
{
  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  sub_1BD1C4810(v17, &v15);
  if (!*(&v16 + 1))
  {

    sub_1BD14EC0C(&v15);
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  sub_1BD5A5E50();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_11;
  }

  result = [v14 couponCode];
  if (result)
  {
    v3 = result;
    v4 = sub_1BE052434();

    [v14 isAwaitingCouponCodeUpdate];
    result = [v14 errors];
    if (result)
    {
      v5 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
      v6 = sub_1BE052744();

      sub_1BD3F00D4(v6);
      v6, v7, v8, v9, v10, v11, v12, v13;
LABEL_12:
      sub_1BD14EC0C(v17);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD5A5E50()
{
  result = qword_1EBD4B9C8;
  if (!qword_1EBD4B9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4B9C8);
  }

  return result;
}

uint64_t sub_1BD5A5E9C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[56])
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

uint64_t sub_1BD5A5EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1BD5A5F54()
{
  result = qword_1EBD59840;
  if (!qword_1EBD59840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59840);
  }

  return result;
}

uint64_t sub_1BD5A5FA8(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v4 = type metadata accessor for AdaptiveHStack.SubviewMeasurement(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v26[1] = v2;
  v28 = MEMORY[0x1E69E7CC0];
  result = sub_1BD53222C(0, v8, 0);
  v9 = v28;
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = a1 + v11;
  v13 = *(v5 + 72);
  while (1)
  {
    v14 = *(v12 + v4[8]);
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v14 >= *(*v27 + 16))
    {
      goto LABEL_10;
    }

    v15 = v4[10];
    v16 = *(v12 + v4[11]);
    v17 = *(v12 + v15);
    v18 = *(*v27 + 8 * v14 + 32) - v16 + *(v12 + v15 + 8);
    v19 = sub_1BE04E724();
    (*(*(v19 - 8) + 16))(v7, v12, v19);
    v20 = v4[6];
    v21 = *(v12 + v4[7]);
    v22 = *(v12 + v4[9]);
    *&v7[v4[5]] = *(v12 + v4[5]);
    *&v7[v4[6]] = *(v12 + v20);
    *&v7[v4[7]] = v21;
    *&v7[v4[8]] = v14;
    *&v7[v4[9]] = v22;
    v23 = &v7[v4[10]];
    *v23 = v17;
    *(v23 + 1) = v18;
    *&v7[v4[11]] = v16;
    v28 = v9;
    v25 = *(v9 + 16);
    v24 = *(v9 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_1BD53222C((v24 > 1), v25 + 1, 1);
      v9 = v28;
    }

    *(v9 + 16) = v25 + 1;
    result = sub_1BD5A79DC(v7, v9 + v11 + v25 * v13);
    v12 += v13;
    if (!--v8)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void sub_1BD5A6200(void *a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1BE04E854();
  sub_1BD5A7878();
  sub_1BE052AD4();
  sub_1BE052B04();
  if (v21 != v20)
  {
    if (a4)
    {
      v10 = INFINITY;
    }

    else
    {
      v10 = *&a3;
    }

    if (a2)
    {
      v11 = INFINITY;
    }

    else
    {
      v11 = *&a1;
    }

    v12 = sub_1BD5A631C(a1, a2 & 1, a3, a4 & 1, a5);
    sub_1BD5A6BF8(v12, 0, 0.0, 0.0, v11, v10);
    v12, v13, v14, v15, v16, v17, v18, v19;
  }
}

uint64_t sub_1BD5A631C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v116) = a2;
  v110 = *&a1;
  v109 = sub_1BE04E4B4();
  v104 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v102 - v8;
  v121 = sub_1BE04E724();
  v102 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  *&v115 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdaptiveHStack.SubviewMeasurement(0);
  v118 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v102 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v102 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v102 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v102 - v22);
  v24 = sub_1BE04E854();
  v25 = sub_1BD5A7878();
  v120 = v24;
  v26 = sub_1BE052AE4();
  if (v26)
  {
    v34 = v26;
    v124 = MEMORY[0x1E69E7CC0];
    sub_1BD53222C(0, v26 & ~(v26 >> 63), 0);
    v35 = v25;
    v36 = v124;
    v117 = v35;
    result = sub_1BE052AD4();
    if (v34 < 0)
    {
      goto LABEL_43;
    }

    v105 = v14;
    *&v112 = v102 + 16;
    v38 = v110;
    v111 = (v102 + 32);
    v114 = a5;
    v113 = v23;
    do
    {
      v39 = sub_1BE052B34();
      v40 = v115;
      (**&v112)(*&v115);
      v39(v123, 0);
      sub_1BE04EDA4();
      LOBYTE(v123[0]) = v41 & 1;
      v122 = v42 & 1;
      sub_1BE04E6F4();
      v44 = v43;
      v46 = v45;
      if (v116)
      {
        v47 = v36;
      }

      else
      {
        v47 = v36;
        if (v43 > v38)
        {
          LOBYTE(v123[0]) = 0;
          v122 = 1;
          sub_1BE04E6F4();
          v44 = v48;
          v46 = v49;
        }
      }

      (*v111)(v20, COERCE_DOUBLE(*&v40), v121);
      v50 = &v20[v10[5]];
      *v50 = v44;
      *(v50 + 1) = v46;
      v51 = &v20[v10[6]];
      *v51 = 0;
      *(v51 + 1) = 0;
      *&v20[v10[7]] = 0;
      *&v20[v10[8]] = 0;
      *&v20[v10[9]] = 0;
      v52 = &v20[v10[10]];
      *v52 = 0;
      *(v52 + 1) = 0;
      *&v20[v10[11]] = 0;
      v124 = v47;
      v54 = v47[2];
      v53 = v47[3];
      if (v54 >= v53 >> 1)
      {
        sub_1BD53222C((v53 > 1), v54 + 1, 1);
        v47 = v124;
      }

      v47[2] = v54 + 1;
      v36 = v47;
      sub_1BD5A79DC(v20, v47 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v54);
      sub_1BE052B14();
      --v34;
      v23 = v113;
    }

    while (v34);
    v110 = *&v47;
    v14 = v105;
  }

  else
  {
    v110 = MEMORY[0x1E69E7CC0];
  }

  v55 = *(*&v110 + 16);
  v56 = v119;
  if (!v55)
  {
    *&v110, v27, v28, v29, v30, v31, v32, v33;
    return MEMORY[0x1E69E7CC0];
  }

  v57 = (v23 + v10[5]);
  v117 = (*(v118 + 80) + 32) & ~*(v118 + 80);
  v58 = (*&v110 + v117);
  v59 = *(v118 + 72);
  v60 = 0.0;
  v61 = (*&v110 + v117);
  v118 = v55;
  v62 = 0.0;
  do
  {
    sub_1BD5A791C(v61, v23);
    v63 = v57[1];
    if (v62 <= *v57)
    {
      v62 = *v57;
    }

    sub_1BD5A7980(v23);
    if (v60 <= v63)
    {
      v60 = v63;
    }

    v61 += v59;
    --v55;
  }

  while (v55);
  v123[0] = MEMORY[0x1E69E7CC0];
  sub_1BD53222C(0, v118, 0);
  v64 = 0;
  v65 = v123[0];
  LODWORD(v114) = *v56;
  v105 = (v102 + 8);
  ++v104;
  v113 = (v102 + 16);
  v102 = -v59;
  v66 = *(v56 + 6);
  v112 = *(v56 + 5);
  v111 = v66;
  v116 = v59;
  v115 = v60;
  v103 = v17;
  while (1)
  {
    result = sub_1BD5A791C(v58, v14);
    if (!v64)
    {
      v74 = 0;
LABEL_27:
      v120 = v74;
      goto LABEL_28;
    }

    if ((v56[24] & 1) == 0)
    {
      v74 = *(v56 + 2);
      goto LABEL_27;
    }

    if ((v64 - 1) >= *(*&v110 + 16))
    {
      break;
    }

    v67 = v106;
    sub_1BD5A791C(&v58[v102], v106);
    v68 = v107;
    sub_1BE04E714();
    (*v105)(v67, v121);
    v69 = v108;
    sub_1BE04E714();
    sub_1BE04E4A4();
    v120 = v70;
    v71 = *v104;
    v72 = v69;
    v73 = v109;
    (*v104)(v72, v109);
    v71(v68, v73);
    v17 = v103;
LABEL_28:
    v75 = v60;
    v76 = v62;
    if ((v114 & 1) == 0)
    {
      v77 = (v14 + v10[5]);
      v76 = *v77;
      v75 = v77[1];
    }

    if (v76 > v112)
    {
      v78 = v76;
    }

    else
    {
      v78 = v112;
    }

    if (v75 > *&v111)
    {
      v79 = v75;
    }

    else
    {
      v79 = *&v111;
    }

    (*v113)(v17, v14, v121);
    v80 = v14 + v10[5];
    v82 = *v80;
    v81 = *(v80 + 1);
    v83 = *(v14 + v10[8]);
    v84 = *(v14 + v10[9]);
    v85 = v14 + v10[10];
    v87 = *v85;
    v86 = *(v85 + 1);
    v88 = *(v14 + v10[11]);
    sub_1BD5A7980(v14);
    v89 = &v17[v10[5]];
    *v89 = v82;
    *(v89 + 1) = v81;
    v90 = &v17[v10[6]];
    *v90 = v78;
    v90[1] = v79;
    *&v17[v10[7]] = v120;
    *&v17[v10[8]] = v83;
    *&v17[v10[9]] = v84;
    v91 = &v17[v10[10]];
    *v91 = v87;
    *(v91 + 1) = v86;
    *&v17[v10[11]] = v88;
    v123[0] = v65;
    v93 = *(v65 + 16);
    v92 = *(v65 + 24);
    if (v93 >= v92 >> 1)
    {
      sub_1BD53222C((v92 > 1), v93 + 1, 1);
      v65 = v123[0];
    }

    ++v64;
    *(v65 + 16) = v93 + 1;
    v94 = v116;
    sub_1BD5A79DC(v17, v65 + v117 + v93 * v116);
    v58 += v94;
    v56 = v119;
    v60 = v115;
    if (v118 == v64)
    {
      *&v110, v95, v96, v97, v98, v99, v100, v101;
      return v65;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_1BD5A6BF8(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v170 = a2;
  v177 = sub_1BE04E724();
  v13 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = COERCE_DOUBLE(sub_1BE04EA64());
  v15 = *(*&v175 - 8);
  MEMORY[0x1EEE9AC00](*&v175);
  v174 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AdaptiveHStack.SubviewMeasurement(0);
  v18 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v159 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v168 = &v158 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v158 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v158 - v26;
  v181.origin.x = a3;
  v181.origin.y = a4;
  v181.size.width = a5;
  v181.size.height = a6;
  MinX = CGRectGetMinX(v181);
  v164.origin.x = a3;
  v182.origin.x = a3;
  v164.origin.y = a4;
  v182.origin.y = a4;
  v164.size.width = a5;
  v182.size.width = a5;
  v164.size.height = a6;
  v182.size.height = a6;
  MinY = CGRectGetMinY(v182);
  v35 = *(a1 + 16);
  v160 = v18;
  v167 = v13;
  if (v35)
  {
    v180 = MEMORY[0x1E69E7CC0];
    v169 = v15;
    sub_1BD53222C(0, v35, 0);
    v166 = v7;
    v36 = *(v7 + 8);
    v37 = v180;
    v172 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v173 = v36;
    v38 = a1 + v172;
    v171 = *(v18 + 72);
    ++v169;
    v39 = v13 + 2;
    do
    {
      sub_1BD5A791C(v38, v24);
      v40 = &v24[v17[5]];
      v41 = *v40;
      v42 = *(v40 + 1);
      LOBYTE(v178) = 0;
      v179 = 0;
      v43 = v174;
      sub_1BE04E6E4();
      v44 = MEMORY[0x1BFB3BB00](*&v173);
      (*v169)(v43, COERCE_DOUBLE(*&v175));
      (*v39)(v27, v24, v177);
      v45 = &v24[v17[6]];
      v46 = *v45;
      v47 = *(v45 + 1);
      v48 = *&v24[v17[7]];
      v49 = *&v24[v17[8]];
      v50 = *&v24[v17[9]];
      v51 = &v24[v17[10]];
      v52 = *v51;
      v53 = *(v51 + 1);
      sub_1BD5A7980(v24);
      v54 = &v27[v17[5]];
      *v54 = v41;
      *(v54 + 1) = v42;
      v55 = &v27[v17[6]];
      *v55 = v46;
      *(v55 + 1) = v47;
      *&v27[v17[7]] = v48;
      *&v27[v17[8]] = v49;
      *&v27[v17[9]] = v50;
      v56 = &v27[v17[10]];
      *v56 = v52;
      *(v56 + 1) = v53;
      *&v27[v17[11]] = v44;
      v180 = v37;
      v58 = *(v37 + 2);
      v57 = *(v37 + 3);
      if (v58 >= v57 >> 1)
      {
        sub_1BD53222C((v57 > 1), v58 + 1, 1);
        v37 = v180;
      }

      *(v37 + 2) = v58 + 1;
      v59 = v171;
      sub_1BD5A79DC(v27, &v37[v172 + v58 * *&v171]);
      v38 += *&v59;
      --v35;
    }

    while (v35);
    *&v60 = MEMORY[0x1E69E7CC0];
    v7 = v166;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
    *&v60 = MEMORY[0x1E69E7CC0];
  }

  v180 = v60;
  v61 = *(v37 + 2);
  if (v61)
  {
    v178 = v60;
    v161 = *(v7 + 32);
    sub_1BD53222C(0, v61, 0);
    v62 = 0;
    v63 = 0;
    v64 = v178;
    v65 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v169 = (v167 + 2);
    v167 += 4;
    v165 = *(v160 + 72);
    v166 = v65;
    v171 = 0.0;
    v66 = 0.0;
    v67 = 0.0;
    v68 = 0.0;
    while (1)
    {
      v69 = *&v37[v65 + v17[7]];
      v70 = &v37[v65 + v17[6]];
      v72 = *v70;
      v71 = v70[1];
      if (v63)
      {
        v73 = v68 + v69;
        if (CGRectGetWidth(v164) >= v73 + v72)
        {
          v76 = v73;
          goto LABEL_17;
        }

        v74 = __OFADD__(v63++, 1);
        if (v74)
        {
          goto LABEL_57;
        }

        v75 = v161;
      }

      else
      {
        v75 = 0.0;
        v63 = 1;
      }

      v62 = 0;
      v171 = v171 + v66 + v75;
      v66 = 0.0;
      v76 = 0.0;
LABEL_17:
      v174 = v63;
      v74 = __OFSUB__(v63, 1);
      v77 = v63 - 1;
      if (v74)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return;
      }

      v78 = *&v37[v17[11] + v65];
      v79 = *(v60 + 2);
      if (v79 == v77)
      {
        v84 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v60 = COERCE_DOUBLE(sub_1BD1D7E30(0, v77 + 1, 1, v60, v80, v81, v82, v83));
        }

        v86 = *(v60 + 2);
        v85 = *(v60 + 3);
        v87 = v60;
        if (v86 >= v85 >> 1)
        {
          *&v87 = COERCE_DOUBLE(sub_1BD1D7E30((v85 > 1), v86 + 1, 1, v60, v80, v81, v82, v83));
        }

        *(v87 + 2) = v86 + 1;
        v60 = v87;
        v88 = v78;
      }

      else
      {
        if (v77 >= v79)
        {
          goto LABEL_55;
        }

        v89 = &v60[8 * v77];
        if (*(v89 + 4) > v78)
        {
          v88 = *(v89 + 4);
        }

        else
        {
          v88 = *&v37[v17[11] + v65];
        }

        v84 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          *&v60 = COERCE_DOUBLE(sub_1BD500008(v60, v90, v91, v92, v93, v94, v95, v96));
        }

        v86 = v77;
        if (v77 >= *(v60 + 2))
        {
          goto LABEL_56;
        }
      }

      v172 = *&v78;
      v173 = v66;
      v175 = v67;
      *&v60[8 * v86 + 32] = v88;
      if (v62 <= 0)
      {
        v69 = 0.0;
      }

      (*v169)(v176, &v37[v65], v177);
      v97 = &v37[v65 + v17[5]];
      v99 = *v97;
      v98 = *(v97 + 1);
      if (v170)
      {
        v100 = MinX + v76;
        v101 = v76;
        v102 = MinY + v171;
      }

      else
      {
        v103 = &v37[v65 + v17[10]];
        v101 = v76;
        v100 = *v103;
        v102 = v103[1];
      }

      v64 = v84;
      v104 = v168;
      (*v167)(v168, v176, v177);
      v105 = (v104 + v17[5]);
      *v105 = v99;
      v105[1] = v98;
      v106 = (v104 + v17[6]);
      *v106 = v72;
      v106[1] = v71;
      *(v104 + v17[7]) = v69;
      *(v104 + v17[8]) = v77;
      *(v104 + v17[9]) = v62;
      v107 = (v104 + v17[10]);
      *v107 = v100;
      v107[1] = v102;
      *(v104 + v17[11]) = v172;
      v68 = v72 + v101;
      v67 = v175;
      if (v175 <= v72 + v101)
      {
        v67 = v72 + v101;
      }

      v66 = v173;
      if (v173 <= v71)
      {
        v66 = v71;
      }

      v74 = __OFADD__(v62++, 1);
      if (v74)
      {
        goto LABEL_54;
      }

      v175 = *&v60;
      v178 = v64;
      v109 = *(v64 + 2);
      v108 = *(v64 + 3);
      if (v109 >= v108 >> 1)
      {
        sub_1BD53222C((v108 > 1), v109 + 1, 1);
        v64 = v178;
      }

      *(v64 + 2) = v109 + 1;
      v110 = v165;
      sub_1BD5A79DC(v104, &v64[v166 + v109 * v165]);
      v65 += v110;
      --v61;
      v63 = v174;
      *&v60 = v175;
      if (!v61)
      {
        v37, v111, v112, v113, v114, v115, v116, v117;
        v180 = v60;
        if (v170)
        {
          goto LABEL_48;
        }

        v60, v118, v119, v120, v121, v122, v123, v124;
        v64, v125, v126, v127, v128, v129, v130, v131;
        return;
      }
    }
  }

  v37, v28, v29, v30, v31, v32, v33, v34;
  if (v170)
  {
    v64 = MEMORY[0x1E69E7CC0];
    v175 = MEMORY[0x1E69E7CC0];
LABEL_48:
    v132 = sub_1BD5A5FA8(v64, &v180);
    v64, v133, v134, v135, v136, v137, v138, v139;
    v147 = v132[2];
    v148 = v159;
    if (v147)
    {
      v149 = v132 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
      v150 = *(v160 + 72);
      do
      {
        sub_1BD5A791C(v149, v148);
        sub_1BE051E54();
        LOBYTE(v178) = 0;
        v179 = 0;
        sub_1BE04E704();
        sub_1BD5A7980(v148);
        v149 += v150;
        --v147;
      }

      while (v147);
    }

    *&v175, v140, v141, v142, v143, v144, v145, v146;
    v132, v151, v152, v153, v154, v155, v156, v157;
  }
}

void sub_1BD5A75C8(void *a1, char a2, uint64_t a3, char a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  sub_1BE04E854();
  sub_1BD5A7878();
  sub_1BE052AD4();
  sub_1BE052B04();
  if (v27 != v26)
  {
    v18 = sub_1BD5A631C(a1, a2 & 1, a3, a4 & 1, a5);
    sub_1BD5A6BF8(v18, 1, a6, a7, a8, a9);
    v18, v19, v20, v21, v22, v23, v24, v25;
  }
}

void (*sub_1BD5A7794(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BE04E0F4();
  return sub_1BD122AB4;
}

unint64_t sub_1BD5A7824()
{
  result = qword_1EBD4B9D0;
  if (!qword_1EBD4B9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9D0);
  }

  return result;
}

unint64_t sub_1BD5A7878()
{
  result = qword_1EBD4B9D8;
  if (!qword_1EBD4B9D8)
  {
    sub_1BE04E854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9D8);
  }

  return result;
}

uint64_t type metadata accessor for AdaptiveHStack.SubviewMeasurement(uint64_t a1)
{
  result = qword_1EBD4B9E0;
  if (!qword_1EBD4B9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD5A791C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveHStack.SubviewMeasurement(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5A7980(uint64_t a1)
{
  v2 = type metadata accessor for AdaptiveHStack.SubviewMeasurement(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD5A79DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveHStack.SubviewMeasurement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BD5A7A68(uint64_t a1)
{
  sub_1BE04E724();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id PKAccountRewardsSummaryCollectionViewCell.configure(rewardsTierSummary:)(void *a1)
{
  [v1 setDirectionalLayoutMargins_];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_1BE048964();
  v5 = a1;
  sub_1BE052E74();
  v3, v6, v7, v8, v9, v10, v11, v12;

  return [v1 setNeedsUpdateConfiguration];
}

void sub_1BD5A7BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v6 = v5;
    v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B9F0, &unk_1BE0E42F8);
    v8[4] = sub_1BD5A7EF4();
    __swift_allocate_boxed_opaque_existential_1(v8);
    sub_1BD5A7F58();
    v7 = v6;
    sub_1BE04FCE4();
    MEMORY[0x1BFB3FEF0](v8);
  }
}

id sub_1BD5A7D08@<X0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  v4 = [a1 contentView];
  [v4 directionalLayoutMargins];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  sub_1BE051694();
  *a3 = a2;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v10;
  *(a3 + 32) = v12;
  *(a3 + 40) = v15;
  *(a3 + 48) = v16;

  return a2;
}

unint64_t sub_1BD5A7EF4()
{
  result = qword_1EBD4B9F8;
  if (!qword_1EBD4B9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4B9F0, &unk_1BE0E42F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4B9F8);
  }

  return result;
}

unint64_t sub_1BD5A7F58()
{
  result = qword_1EBD4BA00;
  if (!qword_1EBD4BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BA00);
  }

  return result;
}

uint64_t sub_1BD5A801C()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB2E0);
  __swift_project_value_buffer(v6, qword_1EBDAB2E0);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD5A822C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v1[3] = swift_task_alloc();
  v2 = sub_1BE04AA64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1BE04A3B4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_1BE0528A4();
  v1[10] = sub_1BE052894();
  v5 = sub_1BE052844();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD5A83B4, v5, v4);
}

uint64_t sub_1BD5A83B4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 24);
  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v5 = sub_1BE052434();
  MEMORY[0x1BFB37400](v5);
  sub_1BE04A364();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v13 = *(v1 + 24);
    *(v1 + 80), v6, v7, v8, v9, v10, v11, v12;
    sub_1BD226BBC(v13);
    v15 = *(v1 + 64);
    v14 = *(v1 + 72);
    v16 = *(v1 + 56);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v15 + 8))(v14, v16);

    v17 = *(v1 + 8);

    return v17();
  }

  else
  {
    (*(*(v1 + 40) + 32))(*(v1 + 48), *(v1 + 24), *(v1 + 32));
    v19 = swift_task_alloc();
    *(v1 + 104) = v19;
    *v19 = v1;
    v19[1] = sub_1BD5A85BC;
    v20 = *(v1 + 48);

    return sub_1BD0D7A54(v20);
  }
}

uint64_t sub_1BD5A85BC(char a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BD5A86E4, v4, v3);
}

uint64_t sub_1BD5A86E4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 112);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  if (v9 == 1)
  {
    v11 = *(v8 + 64);
    v10 = *(v8 + 72);
    v13 = *(v8 + 48);
    v12 = *(v8 + 56);
    v14 = *(v8 + 32);
    v15 = *(v8 + 40);
    sub_1BE048774();
    (*(v15 + 8))(v13, v14);
    (*(v11 + 8))(v10, v12);
  }

  else
  {
    (*(*(v8 + 40) + 8))(*(v8 + 48), *(v8 + 32));
    v18 = *(v8 + 64);
    v17 = *(v8 + 72);
    v19 = *(v8 + 56);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v18 + 8))(v17, v19);
  }

  v16 = *(v8 + 8);

  return v16();
}

uint64_t sub_1BD5A8864@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB2E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD5A890C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD5A822C(a1);
}

id sub_1BD5A89B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v59);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  v21 = v59;
  v22 = [v59 primaryString];

  [a1 setPrimaryString_];
  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  sub_1BE04D8B4(&v59);
  v23, v25, v26, v27, v28, v29, v30, v31;
  v24, v32, v33, v34, v35, v36, v37, v38;
  v39 = v59;
  v40 = [v59 secondaryString];

  [a1 setSecondaryString_];
  [a1 setShowsDisclosureView_];
  v41 = swift_getKeyPath();
  v42 = swift_getKeyPath();
  sub_1BE04D8B4(&v59);
  v41, v43, v44, v45, v46, v47, v48, v49;
  v42, v50, v51, v52, v53, v54, v55, v56;
  v57 = v59;
  [a1 setPrimaryImage_];

  return [a1 setStrokeImage_];
}

uint64_t sub_1BD5A8B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5A8CC8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD5A8BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5A8CC8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD5A8C48(uint64_t a1)
{
  sub_1BD5A8CC8();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD5A8C74()
{
  result = qword_1EBD4BA18;
  if (!qword_1EBD4BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BA18);
  }

  return result;
}

unint64_t sub_1BD5A8CC8()
{
  result = qword_1EBD4BA20;
  if (!qword_1EBD4BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BA20);
  }

  return result;
}

uint64_t sub_1BD5A8D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5A8DBC, 0, 0);
}

uint64_t sub_1BD5A8DBC()
{
  v1 = v0[21];
  v2 = [objc_allocWithZone(MEMORY[0x1E698F6A0]) init];
  v0[23] = v2;
  v3 = sub_1BE052404();
  v0[24] = v3;
  v1, v4, v5, v6, v7, v8, v9, v10;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD5A8F24;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BA28, &unk_1BE0E45C0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD16F63C;
  v0[13] = &block_descriptor_131;
  v0[14] = v11;
  [v2 fetchBrandWithIdentifier:v3 serviceType:5 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD5A8F24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1BD5A918C;
  }

  else
  {
    v2 = sub_1BD5A9034;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD5A9034()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  v4 = [v2 brandId];
  v5 = sub_1BE052434();
  v7 = v6;

  *v3 = v5;
  v3[1] = v7;
  v3[2] = sub_1BD5A9214();
  v3[3] = v8;
  v9 = [v2 logoURL];
  if (v9)
  {
    v10 = v9;
    sub_1BE04A9F4();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(v0 + 176);
  v13 = *(v0 + 152);
  v14 = sub_1BE04AA64();
  (*(*(v14 - 8) + 56))(v12, v11, 1, v14);
  v15 = type metadata accessor for IdentityWebPresentmentBrand(0);
  sub_1BD226B4C(v12, v13 + *(v15 + 24));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1BD5A918C(uint64_t a1)
{
  v2 = v1[24];
  v3 = v1[23];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1BD5A9214()
{
  v1 = [v0 localizedNames];
  v2 = sub_1BE052244();

  v10 = v2[2];
  if (v10)
  {
    v11 = sub_1BD1D9FA0(v2[2], 0);
    v2 = sub_1BD5EDB0C(&v126, (v11 + 4), v10, v2);
    sub_1BD0D45FC(v126, v127, v128, v129, v130, v12, v13, v14);
    if (v2 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v2, v3, v4, v5, v6, v7, v8, v9;
  v11 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v15 = objc_opt_self();
  v16 = sub_1BE052724();
  v11, v17, v18, v19, v20, v21, v22, v23;
  v24 = sub_1BE04B034();
  v25 = sub_1BE052724();
  v24, v26, v27, v28, v29, v30, v31, v32;
  v33 = [v15 preferredLocalizationsFromArray:v16 forPreferences:v25];

  v34 = sub_1BE052744();
  v42 = v34[2];
  if (v42)
  {
    v43 = 0;
    v44 = v34 + 5;
    v45 = v42 - 1;
    while (1)
    {
      v47 = *(v44 - 1);
      v46 = *v44;
      sub_1BE048C84();
      v48 = [v125 localizedNames];
      v49 = sub_1BE052244();

      if (v49[2])
      {
        v57 = sub_1BD148F70(v47, v46);
        v59 = v58;
        v46, v58, v60, v61, v62, v63, v64, v65;
        if (v59)
        {
          v102 = *(v49[7] + 16 * v57);
          sub_1BE048C84();
          v34, v110, v111, v112, v113, v114, v115, v116;
          v49, v117, v118, v119, v120, v121, v122, v123;
          return v102;
        }

        v73 = v49;
      }

      else
      {
        v49, v50, v51, v52, v53, v54, v55, v56;
        v73 = v46;
      }

      v73, v66, v67, v68, v69, v70, v71, v72;
      if (v45 == v43)
      {
        break;
      }

      ++v43;
      v44 += 2;
      if (v43 >= v34[2])
      {
        __break(1u);
        break;
      }
    }
  }

  v34, v35, v36, v37, v38, v39, v40, v41;
  v74 = [v125 localizedNames];
  v75 = sub_1BE052244();

  v76 = v75[2];
  if (v76)
  {
    v77 = sub_1BD1D9FA0(v75[2], 0);
    v78 = sub_1BD5ED9B4(&v126, v77 + 4, v76, v75);
    v79 = v126;
    v80 = v127;
    v81 = v128;
    v82 = v129;
    v83 = v130;
    sub_1BE048C84();
    sub_1BD0D45FC(v79, v80, v81, v82, v83, v84, v85, v86);
    if (v78 == v76)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v77 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v126 = v77;
  sub_1BD5A9C58(&v126);
  v75, v87, v88, v89, v90, v91, v92, v93;
  v101 = v126;
  if (*(v126 + 2))
  {
    v102 = *(v126 + 4);
    sub_1BE048C84();
    v101, v103, v104, v105, v106, v107, v108, v109;
  }

  else
  {
    v126, v94, v95, v96, v97, v98, v99, v100;
    return 0;
  }

  return v102;
}

uint64_t type metadata accessor for IdentityWebPresentmentBrand(uint64_t a1)
{
  result = qword_1EBD4BA30;
  if (!qword_1EBD4BA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD5A95D0(uint64_t a1)
{
  v2 = sub_1BE04AA64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1BE052524();
  if (*(v1 + 24))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  v9 = type metadata accessor for IdentityWebPresentmentBrand(0);
  sub_1BD38F438(v1 + *(v9 + 24), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1BE053D24();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1BE053D24();
  sub_1BD5AAAFC(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BE052294();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BD5A97E4()
{
  v1 = sub_1BE04AA64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1BE053D04();
  sub_1BE052524();
  if (*(v0 + 24))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  v8 = type metadata accessor for IdentityWebPresentmentBrand(0);
  sub_1BD38F438(v0 + *(v8 + 24), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1BE053D24();
    sub_1BD5AAAFC(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1BE052294();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1BE053D64();
}

uint64_t sub_1BD5A9A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1BE053D04();
  sub_1BE052524();
  if (*(v2 + 24))
  {
    sub_1BE053D24();
    sub_1BE052524();
  }

  else
  {
    sub_1BE053D24();
  }

  sub_1BD38F438(v2 + *(a2 + 24), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1BE053D24();
    sub_1BD5AAAFC(&qword_1EBD44E50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1BE052294();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1BE053D64();
}

void sub_1BD5A9C58(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BD5ED718(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = *(v2 + 2);
  v11[0] = (v2 + 32);
  v11[1] = v10;
  sub_1BD5A9CC4(v11);
  *a1 = v2;
}

void sub_1BD5A9CC4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      if (v2 <= 1)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v9 = sub_1BE0527B4();
        *(v9 + 16) = v2 / 2;
      }

      v18[0] = (v9 + 32);
      v18[1] = (v2 / 2);
      v10 = v9;
      sub_1BD5A9E8C(v18, v19, a1, v8, v4, v5, v6, v7);
      v10[2] = 0;
      v10, v11, v12, v13, v14, v15, v16, v17;
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
    sub_1BD5A9DBC(0, v2, 1, a1);
  }
}

uint64_t sub_1BD5A9DBC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1BE053B84(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BD5A9E8C(char **a1, const char *a2, uint64_t *a3, char *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v98 = a3;
  v9 = v8;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v13 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v12 = sub_1BD5ED6C8(v12, a2, a3, a4, a5, a6, a7, a8);
    }

    v87 = v12 + 16;
    v88 = *(v12 + 2);
    if (v88 >= 2)
    {
      while (*v98)
      {
        v89 = &v12[16 * v88];
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1BD5AA468((*v98 + 16 * *v89), (*v98 + 16 * *v91), (*v98 + 16 * v92), v13);
        if (v9)
        {
          goto LABEL_115;
        }

        if (v92 < v90)
        {
          goto LABEL_130;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_131;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_132;
        }

        v88 = *v87 - 1;
        memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:
    v12, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  v96 = a4;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11++;
    if (v11 < v10)
    {
      v14 = (*v98 + 16 * v11);
      a2 = v14[1];
      v15 = *v98 + 16 * v13;
      a3 = *v15;
      a4 = *(v15 + 8);
      if (*v14 == *v15 && a2 == a4)
      {
        v17 = 0;
      }

      else
      {
        v17 = sub_1BE053B84();
      }

      v11 = v13 + 2;
      if (v13 + 2 < v10)
      {
        v18 = v15 + 24;
        v19 = v15 + 24;
        do
        {
          a4 = *v18;
          v20 = *(v19 + 16);
          v19 += 16;
          a2 = v20;
          a3 = *(v18 - 8);
          if (*(v18 + 8) == a3 && a2 == a4)
          {
            if (v17)
            {
              goto LABEL_24;
            }
          }

          else if ((v17 ^ sub_1BE053B84()))
          {
            goto LABEL_23;
          }

          ++v11;
          v18 = v19;
        }

        while (v10 != v11);
        v11 = v10;
      }

LABEL_23:
      if (v17)
      {
LABEL_24:
        if (v11 < v13)
        {
          goto LABEL_135;
        }

        if (v13 < v11)
        {
          v22 = 0;
          v23 = 16 * v11;
          v24 = 16 * v13;
          v25 = v13;
          do
          {
            if (v25 != v11 + v22 - 1)
            {
              v30 = *v98;
              if (!*v98)
              {
                goto LABEL_141;
              }

              v26 = (v30 + v24);
              v27 = v30 + v23;
              v28 = *v26;
              v29 = v26[1];
              *v26 = *(v27 - 16);
              *(v27 - 16) = v28;
              *(v27 - 8) = v29;
            }

            ++v25;
            --v22;
            v23 -= 16;
            v24 += 16;
          }

          while (v25 < v11 + v22);
        }
      }
    }

    v31 = v98[1];
    if (v11 < v31)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_134;
      }

      if (v11 - v13 < v96)
      {
        break;
      }
    }

LABEL_55:
    if (v11 < v13)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1BD1D7844(0, *(v12 + 2) + 1, 1, v12, a5, a6, a7, a8);
    }

    v42 = *(v12 + 2);
    v41 = *(v12 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v12 = sub_1BD1D7844((v41 > 1), v42 + 1, 1, v12, a5, a6, a7, a8);
    }

    *(v12 + 2) = v43;
    v44 = &v12[16 * v42];
    *(v44 + 4) = v13;
    *(v44 + 5) = v11;
    v45 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v12 + 4);
          v48 = *(v12 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_75:
          if (v50)
          {
            goto LABEL_121;
          }

          v63 = &v12[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_124;
          }

          v69 = &v12[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_128;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v73 = &v12[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_89:
        if (v68)
        {
          goto LABEL_123;
        }

        v76 = &v12[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_126;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_96:
        v13 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_123:
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
          goto LABEL_137;
        }

        if (!*v98)
        {
          goto LABEL_140;
        }

        v84 = *&v12[16 * v13 + 32];
        v85 = *&v12[16 * v46 + 40];
        sub_1BD5AA468((*v98 + 16 * v84), (*v98 + 16 * *&v12[16 * v46 + 32]), (*v98 + 16 * v85), v45);
        if (v9)
        {
          goto LABEL_115;
        }

        if (v85 < v84)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1BD5ED6C8(v12, a2, a3, a4, a5, a6, a7, a8);
        }

        if (v13 >= *(v12 + 2))
        {
          goto LABEL_118;
        }

        v86 = &v12[16 * v13];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        sub_1BD5ED63C(v46);
        v43 = *(v12 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v12[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_119;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_120;
      }

      v58 = &v12[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_122;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_125;
      }

      if (v62 >= v54)
      {
        v80 = &v12[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_129;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v10 = v98[1];
    if (v11 >= v10)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v13, v96))
  {
    goto LABEL_136;
  }

  v95 = v9;
  if (&v96[v13] >= v31)
  {
    v9 = v98[1];
  }

  else
  {
    v9 = &v96[v13];
  }

  if (v9 < v13)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v11 == v9)
  {
LABEL_54:
    v9 = v95;
    goto LABEL_55;
  }

  v32 = *v98;
  v33 = *v98 + 16 * v11;
  v94 = v13;
  v34 = (v13 - v11);
LABEL_43:
  v35 = v32 + 16 * v11;
  v36 = *v35;
  a2 = *(v35 + 8);
  v37 = v34;
  v38 = v33;
  while (1)
  {
    a3 = *(v38 - 16);
    a4 = *(v38 - 8);
    v39 = v36 == a3 && a2 == a4;
    if (v39 || (sub_1BE053B84() & 1) == 0)
    {
LABEL_42:
      ++v11;
      v33 += 16;
      --v34;
      if (v11 != v9)
      {
        goto LABEL_43;
      }

      v11 = v9;
      v13 = v94;
      goto LABEL_54;
    }

    if (!v32)
    {
      break;
    }

    v36 = *v38;
    a2 = *(v38 + 8);
    *v38 = *(v38 - 16);
    *(v38 - 8) = a2;
    *(v38 - 16) = v36;
    v38 -= 16;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

uint64_t sub_1BD5AA468(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1BE053B84() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1BE053B84() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_1BD5AA6B8(uint64_t a1)
{
  sub_1BD1C86BC();
  if (v1 <= 0x3F)
  {
    sub_1BD3F7300(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_1BD5AA794(void *a1, void *a2)
{
  v4 = sub_1BE04AA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44E78, &unk_1BE0E4690);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (*a1 != *a2 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[3];
  v15 = a2[3];
  if (v14)
  {
    if (!v15 || (a1[2] != a2[2] || v14 != v15) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = *(type metadata accessor for IdentityWebPresentmentBrand(0) + 24);
  v17 = *(v11 + 48);
  sub_1BD38F438(a1 + v16, v13);
  sub_1BD38F438(a2 + v16, &v13[v17]);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1BD38F438(v13, v10);
    if (v18(&v13[v17], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_15;
    }

    (*(v5 + 32))(v7, &v13[v17], v4);
    sub_1BD5AAAFC(&qword_1EBD5AAF0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
    v20 = sub_1BE052334();
    v21 = *(v5 + 8);
    v21(v7, v4);
    v21(v10, v4);
    sub_1BD0DE53C(v13, &unk_1EBD3CF70, &qword_1BE0BA000);
    return (v20 & 1) != 0;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
LABEL_15:
    sub_1BD0DE53C(v13, &qword_1EBD44E78, &unk_1BE0E4690);
    return 0;
  }

  sub_1BD0DE53C(v13, &unk_1EBD3CF70, &qword_1BE0BA000);
  return 1;
}

uint64_t sub_1BD5AAAFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD5AAB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BD5AAB80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1BD5AABC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD5AAC74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0, &qword_1BE0C42E0);
  sub_1BE051914();
  return v1;
}

uint64_t sub_1BD5AACD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a1;
  v92 = a3;
  swift_getWitnessTable();
  v5 = sub_1BE04FC14();
  v6 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v8 = *(a2 + 24);
  v96 = v5;
  v97 = v6;
  v98 = WitnessTable;
  v99 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v82 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v81 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v79 - v12;
  v93 = v5;
  v96 = v5;
  v97 = v6;
  v90 = WitnessTable;
  v91 = v6;
  v98 = WitnessTable;
  v99 = v8;
  v89 = v8;
  v13 = swift_getOpaqueTypeMetadata2();
  v79 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  v19 = sub_1BE04F3D4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v13;
  v88 = OpaqueTypeMetadata2;
  v23 = sub_1BE04F9B4();
  v86 = *(v23 - 8);
  v87 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v79 - v24;
  v101 = *(v3 + 48);
  v25 = *(v3 + 40);
  v100 = v25;
  if (v101 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v52 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD5AB484(&v100);
    (*(v20 + 8))(v22, v19);
    if (v96 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v53 = sub_1BD5AAC74();
    v55 = v54;
    v56 = swift_checkMetadataState();
    v30 = v89;
    v31 = v90;
    v32 = v91;
    sub_1BE051114();
    v55, v57, v58, v59, v60, v61, v62, v63;
    v53, v64, v65, v66, v67, v68, v69, v70;
    v96 = v56;
    v97 = v32;
    v98 = v31;
    v99 = v30;
    swift_getOpaqueTypeConformance2();
    v71 = v83;
    sub_1BD147308();
    v72 = *(v79 + 8);
    v72(v15, v71);
    sub_1BD147308();
    v96 = v56;
    v97 = v32;
    v98 = v31;
    v99 = v30;
    swift_getOpaqueTypeConformance2();
    v73 = v85;
    sub_1BD13A700(v15, v71);
    v72(v15, v71);
    v72(v18, v71);
    v51 = v73;
    goto LABEL_6;
  }

  if (v25)
  {
    goto LABEL_5;
  }

LABEL_3:
  v26 = sub_1BD5AAC74();
  v28 = v27;
  v29 = swift_checkMetadataState();
  v30 = v89;
  v31 = v90;
  v32 = v91;
  v33 = v81;
  sub_1BE050F64();
  v28, v34, v35, v36, v37, v38, v39, v40;
  v26, v41, v42, v43, v44, v45, v46, v47;
  v96 = v29;
  v97 = v32;
  v98 = v31;
  v99 = v30;
  swift_getOpaqueTypeConformance2();
  v48 = v80;
  v49 = v88;
  sub_1BD147308();
  v50 = *(v82 + 8);
  v50(v33, v49);
  sub_1BD147308();
  v96 = v29;
  v97 = v32;
  v98 = v31;
  v99 = v30;
  swift_getOpaqueTypeConformance2();
  v51 = v85;
  sub_1BD13A7F8(v33, v83, v49);
  v50(v33, v49);
  v50(v48, v49);
LABEL_6:
  v74 = v93;
  v96 = v93;
  v97 = v32;
  v98 = v31;
  v99 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = v74;
  v97 = v32;
  v98 = v31;
  v99 = v30;
  v76 = swift_getOpaqueTypeConformance2();
  v94 = OpaqueTypeConformance2;
  v95 = v76;
  v77 = v87;
  swift_getWitnessTable();
  sub_1BD147308();
  return (*(v86 + 8))(v51, v77);
}

uint64_t sub_1BD5AB484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5C6E0, &qword_1BE0C3590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD5AB67C()
{
  v1 = v0;
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B944();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProvisioningCarKeyCredentialViewController();
  v103.receiver = v0;
  v103.super_class = v10;
  objc_msgSendSuper2(&v103, sel_loadView);
  v11 = [v0 headerView];
  if (!v11)
  {
LABEL_13:
    v82 = [v1 dockView];
    if (v82)
    {
      v83 = v82;
      v84 = [v82 footerView];

      if (v84)
      {
        v85 = [v84 skipCardButton];
        if (v85)
        {
          v86 = v85;
          [v85 addTarget:v1 action:sel_setUpLaterButtonPressed forControlEvents:0x2000];
          (*(v3 + 104))(v5, *MEMORY[0x1E69B80D8], v2);
          v87 = PKPassKitBundle();
          if (v87)
          {
            v88 = v87;
            sub_1BE04B6F4();
            v90 = v89;

            (*(v3 + 8))(v5, v2);
            v91 = sub_1BE052404();
            v90, v92, v93, v94, v95, v96, v97, v98;
            [v86 setTitle:v91 forState:0];

            return;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  v13 = sub_1BE052404();
  v14 = PKUIImageNamed(v13);

  v100 = v14;
  [v12 setImageViewImage:v14 withSize:0 animated:{130.0, 82.0}];
  v15 = v12;
  [v15 sizeToFit];
  v16 = [v1 tableView];
  if (v16)
  {
    v17 = v16;
    [v15 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v104.origin.x = v19;
    v104.origin.y = v21;
    v104.size.width = v23;
    v104.size.height = v25;
    [v17 _tableHeaderHeightDidChangeToHeight_];

    sub_1BE04BB94();
    v26 = sub_1BE04B934();
    (*(v7 + 8))(v9, v6);
    v27 = [v26 secureElementIdentifiers];
    swift_unknownObjectRelease();
    if (!v27 || (v35 = sub_1BE052744(), v27, v43 = sub_1BD3FD334(v35, v36, v37, v38, v39, v40, v41, v42), v35, v44, v45, v46, v47, v48, v49, v50, !v43))
    {
      0, v28, v29, v30, v31, v32, v33, v34;
      v43 = MEMORY[0x1E69E7CC0];
    }

    v51 = [*&v1[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_credential] underlyingPaymentPass];
    if (v51)
    {
      v52 = v51;
      v53 = sub_1BE052724();
      v43, v54, v55, v56, v57, v58, v59, v60;
      v61 = [v52 remoteAssetsDownloadedForSEIDs_];

      if (v61)
      {
        v62 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        *(v63 + 24) = v52;
        *(v63 + 32) = v15;
        *(v63 + 40) = xmmword_1BE0E47C0;
        aBlock[4] = sub_1BD5ADF10;
        v102 = v63;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BD126964;
        aBlock[3] = &block_descriptor_132;
        v64 = _Block_copy(aBlock);
        v65 = v102;
        v66 = v15;
        v67 = v52;
        v65, v68, v69, v70, v71, v72, v73, v74;
        [v67 loadImageSetAsync:0 preheat:1 withCompletion:v64];

        _Block_release(v64);
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {

      v43, v75, v76, v77, v78, v79, v80, v81;
    }

    v67 = v100;
    goto LABEL_12;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1BD5ABC60(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  v9 = sub_1BE051F54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BE051FA4();
  v13 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v16 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = v17;
  aBlock[4] = sub_1BD5ADF20;
  v34 = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_21_3;
  v20 = _Block_copy(aBlock);
  v21 = v34;
  v22 = a2;
  v23 = a3;
  v21, v24, v25, v26, v27, v28, v29, v30;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v12, v20);
  _Block_release(v20);

  (*(v10 + 8))(v12, v9);
  return (*(v13 + 8))(v15, v32);
}

void sub_1BD5ABF60(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v8 = [objc_allocWithZone(PKPassView) initWithPass:a1 content:5 suppressedContent:4087];
  if (v8)
  {
    v14 = v8;
    v9 = [v8 snapshotOfFrontFace];
    if (v9)
    {
      v10 = v9;
      [a2 setImageViewImage:v9 withSize:0 animated:{a4, a5}];
      [a2 sizeToFit];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        v13 = [Strong tableView];

        if (!v13)
        {
          __break(1u);
          return;
        }

        [a2 bounds];
        [v13 _tableHeaderHeightDidChangeToHeight_];
      }
    }

    else
    {
    }
  }
}

void sub_1BD5AC110()
{
  [v0 setHidesBackButton:1 animated:0];
  v1 = [v0 navigationItem];
  v13 = [v1 leftBarButtonItem];

  v2 = v13;
  if (!v13)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v0 action:sel_cancel];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BE0B7020;
    *(v4 + 32) = v3;
    sub_1BD0E5E8C(0, &qword_1EBD41C40, 0x1E69DC708);
    v5 = v3;
    v14 = sub_1BE052724();
    v4, v6, v7, v8, v9, v10, v11, v12;
    [v0 _setLeftBarButtonItems_animated_];

    v2 = v14;
  }
}

void sub_1BD5AC264()
{
  v1 = [v0 navigationController];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = [v0 navigationController];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = [v2 viewControllers];

  sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
  v5 = sub_1BE052744();

  v13 = v5;
  if (v5 >> 62)
  {
    v15 = v5;
    v14 = sub_1BE053704();
    v13 = v15;
  }

  else
  {
    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13, v6, v7, v8, v9, v10, v11, v12;
  if (v14 >= 2)
  {
LABEL_6:
    [v0 setHidesBackButton:0 animated:0];

    [v0 _setLeftBarButtonItems_animated_];
  }
}

void sub_1BD5AC3B8(char *a1, uint64_t a2, void (*a3)(void))
{
  v3 = *&a1[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator];
  if (v3)
  {
    v6 = a1;
    v5 = v3;
    a3();
  }
}

id sub_1BD5AC460(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ProvisioningCarKeyCredentialViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1BD5AC694()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v12 = *(v2 + 104);
  v12(&v40 - v10, *MEMORY[0x1E69B8038], v1, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v40 = v16;
    v41 = v15;

    v17 = *(v2 + 8);
    v17(v11, v1);
    v18 = [*(v0 + OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_credential) longDescription];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1BE052434();
      v22 = v21;

      v30 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v30 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        (v12)(v7, *MEMORY[0x1E69B80D8], v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1BE0B69E0;
        *(v31 + 56) = MEMORY[0x1E69E6158];
        *(v31 + 64) = sub_1BD110550();
        *(v31 + 32) = v20;
        *(v31 + 40) = v22;
        sub_1BE04B714();
        v31, v32, v33, v34, v35, v36, v37, v38;
        v4 = v7;
LABEL_10:
        v17(v4, v1);
        return v41;
      }

      v22, v23, v24, v25, v26, v27, v28, v29;
    }

    (v12)(v4, *MEMORY[0x1E69B80D8], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v39 = result;
      sub_1BE04B6F4();

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD5ACAD0(unsigned __int8 *a1, int a2)
{
  v5 = sub_1BE04BAC4();
  v207 = *(v5 - 8);
  v208 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v206 = v195 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v205 = v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v195 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v204 = v195 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v195 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v203 = v195 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v202 = v195 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v200 = v195 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v201 = v195 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v199 = v195 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v198 = v195 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v195 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v195 - v34;
  v36 = *a1;
  v212 = v2;
  sub_1BD5AC694();
  v209 = v39;
  v210 = a2;
  v211 = v38;
  if ((a2 & 1) == 0)
  {
    v66 = v36 == 12;
    if (v36 == 12)
    {
      v67 = v7;
      v68 = *MEMORY[0x1E69B80D8];
      v69 = *(v8 + 104);
      v69(v12, v68, v67);
      v70 = PKPassKitBundle();
      if (!v70)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v71 = v70;
      v203 = sub_1BE04B6F4();
      v204 = v72;

      v73 = *(v8 + 8);
      v73(v12, v67);
      v74 = sub_1BE052404();
      v75 = v206;
      sub_1BE04BC34();
      LOBYTE(v71) = sub_1BE04BAB4();
      (*(v207 + 8))(v75, v208);
      v76 = PKDeviceSpecificLocalizedStringKeyForKey(v74, v71 & 1);

      if (!v76)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      sub_1BE052434();
      v78 = v77;

      v79 = v205;
      v69(v205, v68, v67);
      v80 = PKPassKitBundle();
      if (!v80)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v81 = v80;
      sub_1BE04B6F4();
      v82 = v79;
      v84 = v83;
      v78, v83, v85, v86, v87, v88, v89, v90;

      v73(v82, v67);
      v55 = v212;
      [v212 showCheckmarkAnimated_];
      v91 = v204;
      v92 = sub_1BE052404();
      v91, v93, v94, v95, v96, v97, v98, v99;
      v100 = sub_1BE052404();
      v84, v101, v102, v103, v104, v105, v106, v107;
      [v55 hideActivitySpinnerWithTitle:v92 subtitle:v100 animated:0];

      [v55 endUserInteraction];
      v108 = v210;
      v109 = v211;
      v110 = v209;
    }

    else
    {
      v109 = v211;
      sub_1BE048C84();
      v110 = v209;
      sub_1BE048C84();
      v111 = sub_1BE052404();
      v110, v112, v113, v114, v115, v116, v117, v118;
      if (v109)
      {
        v119 = sub_1BE052404();
        v109, v120, v121, v122, v123, v124, v125, v126;
      }

      else
      {
        v119 = 0;
      }

      v55 = v212;
      v108 = v210;
      [v212 hideActivitySpinnerWithTitle:v111 subtitle:v119 animated:1];
    }

    sub_1BD5AC264();
    goto LABEL_56;
  }

  v40 = v38;
  v205 = v37;
  v41 = *MEMORY[0x1E69B80D8];
  v196 = *(v8 + 104);
  v196(v35, v41, v7);
  sub_1BE048C84();
  v42 = PKPassKitBundle();
  if (!v42)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v43 = v42;
  v197 = sub_1BE04B6F4();
  v45 = v44;

  v46 = *(v8 + 8);
  v195[1] = v8 + 8;
  (v46)(v35, v7);
  v54 = 0;
  if (v36 > 9)
  {
    if (v36 == 10)
    {
      v195[0] = v45;
      v40, v47, v48, v49, v50, v51, v52, v53;
      v196(v17, *MEMORY[0x1E69B80D0], v7);
      v129 = PKPassKitCoreBundle();
      if (!v129)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v59 = v129;
      v205 = sub_1BE04B6F4();
      v40 = v130;
      v54 = 0;
      v32 = v17;
      v55 = v212;
      goto LABEL_50;
    }

    if (v36 == 11)
    {
      v203 = v46;
      v133 = v7;
      v40, v47, v48, v49, v50, v51, v52, v53;
      v134 = sub_1BE052404();
      v135 = v206;
      sub_1BE04BC34();
      v136 = sub_1BE04BAB4();
      (*(v207 + 8))(v135, v208);
      v137 = PKDeviceSpecificLocalizedStringKeyForKey(v134, v136 & 1);

      v195[0] = v45;
      if (v137)
      {
        sub_1BE052434();
        v139 = v138;
      }

      else
      {
        v139 = 0x80000001BE12F470;
      }

      v32 = v204;
      v196(v204, *MEMORY[0x1E69B80D0], v133);
      v147 = PKPassKitCoreBundle();
      v55 = v212;
      if (!v147)
      {
        goto LABEL_70;
      }

      v59 = v147;
      v205 = sub_1BE04B6F4();
      v40 = v148;
      v139, v148, v149, v150, v151, v152, v153, v154;
      v54 = 0;
      v7 = v133;
      v46 = v203;
      goto LABEL_50;
    }

    v55 = v212;
    if (v36 != 12)
    {
LABEL_25:
      v195[0] = v45;
      v211, v47, v48, v49, v50, v51, v52, v53;
      v32 = v203;
      v196(v203, *MEMORY[0x1E69B80D0], v7);
      v127 = PKPassKitCoreBundle();
      if (!v127)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v59 = v127;
      v205 = sub_1BE04B6F4();
      v40 = v128;
      v54 = 0;
      goto LABEL_50;
    }

LABEL_51:
    v158 = sub_1BE052404();
    v45, v159, v160, v161, v162, v163, v164, v165;
    if (v40)
    {
      v166 = sub_1BE052404();
      v40, v167, v168, v169, v170, v171, v172, v173;
    }

    else
    {
      v166 = 0;
    }

    v108 = v210;
    v109 = v211;
    v110 = v209;
    [v55 showActivitySpinnerWithTitle:v158 subtitle:{v166, v195[0]}];

    if ((v54 & 1) == 0)
    {
      sub_1BD5AC264();
      v174 = 0;
      LOBYTE(v66) = 0;
      goto LABEL_58;
    }

    sub_1BD5AC110();
    v66 = 0;
LABEL_56:
    v174 = !v66;
LABEL_58:
    [v55 _setNavigationBarEnabled_animated_];
    [v55 _setPrimaryButtonEnabled_];
    v175 = [v55 dockView];
    if (v175)
    {
      v183 = v175;
      v110, v176, v177, v178, v179, v180, v181, v182;
      v109, v184, v185, v186, v187, v188, v189, v190;
      [v183 setButtonsEnabled_];

      return;
    }

    __break(1u);
    goto LABEL_63;
  }

  v55 = v212;
  if (v36 == 4)
  {
    goto LABEL_51;
  }

  if (v36 == 6)
  {
    v195[0] = v45;
    v211, v47, v48, v49, v50, v51, v52, v53;
    v196(v32, *MEMORY[0x1E69B8038], v7);
    v131 = PKPassKitBundle();
    if (!v131)
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v59 = v131;
    v205 = sub_1BE04B6F4();
    v40 = v132;
    v54 = 1;
    goto LABEL_50;
  }

  if (v36 != 7)
  {
    goto LABEL_25;
  }

  v56 = v46;
  v195[0] = v45;
  v211, v47, v48, v49, v50, v51, v52, v53;
  v57 = [*&v55[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_credential] localAppletSubcredentialPassCredential];
  if (!v57 || (v58 = v57, v59 = [v57 credentialToShare], v58, !v59))
  {
    v140 = sub_1BE04BBC4();
    if (v140 && (v141 = v7, v142 = v140, v143 = [v140 hasFetchedMessageSession], v142, v7 = v141, v143))
    {
      v32 = v200;
      v196(v200, *MEMORY[0x1E69B8038], v141);
      v144 = PKPassKitBundle();
      if (!v144)
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v59 = v144;
    }

    else
    {
      v32 = v202;
      v196(v202, *MEMORY[0x1E69B8038], v7);
      v145 = PKPassKitBundle();
      if (!v145)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v59 = v145;
    }

    v205 = sub_1BE04B6F4();
    v40 = v146;
    goto LABEL_48;
  }

  if (!PKAppletSubcredentialSupportsSharingInAChain())
  {
    v32 = v201;
    v196(v201, *MEMORY[0x1E69B8038], v7);
    v155 = PKPassKitBundle();
    if (!v155)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v156 = v155;
    v205 = sub_1BE04B6F4();
    v40 = v157;

LABEL_48:
    v54 = 1;
    goto LABEL_49;
  }

  v60 = sub_1BE04BBC4();
  if (!v60 || (v208 = v7, v61 = v60, v62 = [v60 hasFetchedMessageSession], v61, v7 = v208, !v62))
  {
    v32 = v199;
    v191 = v7;
    v196(v199, *MEMORY[0x1E69B8038], v7);
    v192 = PKPassKitBundle();
    if (!v192)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v193 = v192;
    v205 = sub_1BE04B6F4();
    v40 = v194;

    v54 = 1;
    v7 = v191;
    goto LABEL_49;
  }

  v32 = v198;
  v196(v198, *MEMORY[0x1E69B8038], v208);
  v63 = PKPassKitBundle();
  if (v63)
  {
    v64 = v63;
    v205 = sub_1BE04B6F4();
    v40 = v65;

    v54 = 1;
    v59 = v64;
    v7 = v208;
LABEL_49:
    v46 = v56;
LABEL_50:

    (v46)(v32, v7);
    v45 = v195[0];
    goto LABEL_51;
  }

LABEL_75:
  __break(1u);
}

void sub_1BD5AD874(id a1)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - v9;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    goto LABEL_5;
  }

  v57 = a1;
  v11 = *MEMORY[0x1E69B80D8];
  v56 = *(v4 + 104);
  v56(v10, v11, v3);
  v12 = PKPassKitBundle();
  if (v12)
  {
    v13 = v12;
    sub_1BE04B6F4();
    v15 = v14;

    v55 = *(v4 + 8);
    v55(v10, v3);
    v16 = sub_1BE052404();
    v15, v17, v18, v19, v20, v21, v22, v23;
    a1 = v57;
    [v57 setLocalizedTitle_];

    v56(v6, v11, v3);
    v24 = PKPassKitBundle();
    if (v24)
    {
      v25 = v24;
      sub_1BE04B6F4();
      v27 = v26;

      v55(v6, v3);
      v28 = sub_1BE052404();
      v27, v29, v30, v31, v32, v33, v34, v35;
      [a1 setLocalizedMessage_];

LABEL_5:
      sub_1BD0E5E8C(0, &qword_1EBD3D280, 0x1E69DC650);
      v36 = swift_allocObject();
      v36[2] = v1;
      v37 = swift_allocObject();
      v37[2] = v1;
      v38 = v1;
      v39 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, 0, 0, PKEdgeInsetsMake, 0, sub_1BD5ADCD4, v36, sub_1BD5ADCDC, v37);
      v36, v40, v41, v42, v43, v44, v45, v46;
      v37, v47, v48, v49, v50, v51, v52, v53;
      [v38 presentViewController:v39 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD5ADBE0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD3188FC();
  }
}

void sub_1BD5ADC3C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 fieldsModel];
    if (v4)
    {
      v5 = v4;
      sub_1BD317B18(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BD5ADCE4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04B944();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_coordinator] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_provisioningContext] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI42ProvisioningCarKeyCredentialViewController_credential] = a2;
  sub_1BE048964();
  v14 = a2;
  sub_1BE04BB94();
  v15 = sub_1BE04B8E4();
  (*(v11 + 8))(v13, v10);
  sub_1BE04BC34();
  v16 = sub_1BE04B9A4();
  (*(v7 + 8))(v9, v6);
  v17 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  v18 = type metadata accessor for ProvisioningCarKeyCredentialViewController();
  v20.receiver = v3;
  v20.super_class = v18;
  v19 = objc_msgSendSuper2(&v20, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v15, v16, 0, v17);

  if (!v19)
  {
    __break(1u);
  }
}

uint64_t sub_1BD5ADFFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BE0B69E0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_context);
  v3 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_provisionedPassesGroups);
  v4 = type metadata accessor for ProvisioningVerificationNoticeFlowItem();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_identifier];
  *v6 = 0xD00000000000001ALL;
  *(v6 + 1) = 0x80000001BE12FFD0;
  *&v5[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v5[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_context] = v2;
  *&v5[OBJC_IVAR____TtC9PassKitUI38ProvisioningVerificationNoticeFlowItem_provisionedPassesGroups] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  sub_1BE048C84();
  sub_1BE048964();
  *(v1 + 32) = objc_msgSendSuper2(&v8, sel_init);
  *(v1 + 40) = &off_1F3BB6830;
  return v1;
}

uint64_t sub_1BD5AE13C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD5AE178(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37ProvisioningBatchPassIngestionSection_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD5AE1C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BD5AE20C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BD5AE25C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BE0C63C0;
  v8 = sub_1BE052404();
  v9 = PKLocalizedBankConnectString(v8);

  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1BD3FB6B0();
  sub_1BE052434();

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  sub_1BE048964();
  sub_1BE048964();
  *(v7 + 32) = sub_1BE0530B4();
  v11 = sub_1BE052404();
  v12 = PKLocalizedBankConnectString(v11);

  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1BE052434();

  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  sub_1BE048964();
  sub_1BE048964();
  *(v7 + 40) = sub_1BE0530B4();
  v14 = sub_1BE052404();
  v15 = PKLocalizedBankConnectString(v14);

  if (v15)
  {
    sub_1BE052434();

    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    *(v16 + 32) = a4;
    sub_1BE048964();
    sub_1BE048964();
    v28 = v16;
    *(v7 + 48) = sub_1BE0530B4();
    v17 = objc_allocWithZone(MEMORY[0x1E69DCF38]);
    v18 = sub_1BE052724();
    v7, v19, v20, v21, v22, v23, v24, v25;
    v26 = [v17 initWithFrame:v18 actions:{0.0, 0.0, 0.0, 0.0, 0, 0, 0, sub_1BD5AE7F0, v28}];

    [v26 _setUseGlass_];
    v30 = a2;
    v31 = a3;
    v32 = a4;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB08, &qword_1BE0E49B8);
    MEMORY[0x1BFB3E970](&v29, v27);
    [v26 setSelectedSegmentIndex_];
    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1BD5AE5EC(void *a1)
{
  v3 = v1[1];
  v4 = *(v1 + 16);
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB08, &qword_1BE0E49B8);
  MEMORY[0x1BFB3E970](&v7, v5);
  return [a1 setSelectedSegmentIndex_];
}

uint64_t sub_1BD5AE658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5AE854();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD5AE6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD5AE854();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD5AE720(uint64_t a1)
{
  sub_1BD5AE854();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD5AE74C()
{
  result = qword_1EBD4BB00;
  if (!qword_1EBD4BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BB00);
  }

  return result;
}

uint64_t objectdestroyTm_63(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 24), v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

unint64_t sub_1BD5AE854()
{
  result = qword_1EBD4BB10;
  if (!qword_1EBD4BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BB10);
  }

  return result;
}

void sub_1BD5AE8E4(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = [*v1 identifier];
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v6 = 0xE900000000000073;
    v4 = 0x657469726F766166;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1BD5AE95C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v77 = sub_1BE04FE84();
  v78 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB18, &qword_1BE0E4BF0);
  v76 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v6 = &v72 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB20, &qword_1BE0E4BF8);
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v85 = &v72 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB28, &qword_1BE0E4C00);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v72 - v8;
  v86 = v2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB30, &qword_1BE0E4C08);
  v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB38, &qword_1BE0E4C10);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB40, &qword_1BE0E4C18);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB48, &qword_1BE0E4C20);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB50, &qword_1BE0E4C28);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB58, &qword_1BE0E4C30);
  v13 = sub_1BD5B2F8C();
  v14 = sub_1BD0DDEBC();
  v15 = MEMORY[0x1E69E6158];
  *&v87 = v12;
  *(&v87 + 1) = MEMORY[0x1E69E6158];
  v88 = v13;
  v89 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v87 = v11;
  *(&v87 + 1) = v15;
  v88 = OpaqueTypeConformance2;
  v89 = v14;
  v17 = swift_getOpaqueTypeConformance2();
  *&v87 = v10;
  *(&v87 + 1) = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB78, &unk_1BE110AC0);
  v20 = sub_1BD0DE4F4(&qword_1EBD4BB80, &qword_1EBD4BB78, &unk_1BE110AC0, MEMORY[0x1E697BEF0]);
  *&v87 = v19;
  *(&v87 + 1) = v20;
  v21 = swift_getOpaqueTypeConformance2();
  *&v87 = v73;
  *(&v87 + 1) = v9;
  v88 = v18;
  v89 = v21;
  swift_getOpaqueTypeConformance2();
  sub_1BE04E934();
  sub_1BE04FE74();
  v22 = sub_1BD0DE4F4(&qword_1EBD4BB88, &qword_1EBD4BB18, &qword_1BE0E4BF0, MEMORY[0x1E697C0C0]);
  v23 = sub_1BD5B37E0(&qword_1EBD39E50, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  v24 = v75;
  v25 = v77;
  sub_1BE0507D4();
  (v78)[1](v4, v25);
  v26 = v24;
  (*(v76 + 8))(v6, v24);
  v92 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB90, &qword_1BE0E4C50);
  sub_1BE0516C4();
  v27 = v87;
  v78 = v88;
  v92 = v87;
  v93 = v88;
  v28 = swift_allocObject();
  v29 = v2[7];
  v28[7] = v2[6];
  v28[8] = v29;
  v28[9] = v2[8];
  v30 = v2[3];
  v28[3] = v2[2];
  v28[4] = v30;
  v31 = v2[5];
  v28[5] = v2[4];
  v28[6] = v31;
  v32 = v2[1];
  v28[1] = *v2;
  v28[2] = v32;
  sub_1BD5B30DC(v2, &v87);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB98, &qword_1BE0E4C58);
  *&v87 = v26;
  *(&v87 + 1) = v25;
  v88 = v22;
  v89 = v23;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_1BD5B3114();
  v71 = sub_1BD5B3168();
  v36 = v79;
  v37 = v80;
  v38 = v85;
  sub_1BE051124();
  *(&v27 + 1), v39, v40, v41, v42, v43, v44, v45;
  v28, v46, v47, v48, v49, v50, v51, v52;
  v27, v53, v54, v55, v56, v57, v58, v59;
  sub_1BD28B4C8(v78);
  (*(v81 + 8))(v38, v37);
  sub_1BE052434();
  v61 = v60;
  *&v87 = v37;
  *(&v87 + 1) = &type metadata for ShippingAddressPicker.Sheet;
  v88 = v33;
  v89 = v34;
  v90 = v35;
  v91 = v71;
  swift_getOpaqueTypeConformance2();
  v62 = v82;
  sub_1BE050DE4();
  v61, v63, v64, v65, v66, v67, v68, v69;
  return (*(v83 + 8))(v36, v62);
}

id sub_1BD5AF0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v156 = sub_1BE04F434();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BD74();
  v166 = *(v4 - 8);
  v167 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v165 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1BE04FA74();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1BE04F3D4();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1BE04FA94();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v170 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04E9A4();
  v10 = *(v9 - 8);
  v163 = v9;
  v164 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB68, &qword_1BE0E4C38);
  v162 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v14 = &v137 - v13;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB58, &qword_1BE0E4C30);
  MEMORY[0x1EEE9AC00](v169);
  v16 = (&v137 - v15);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB50, &qword_1BE0E4C28);
  v144 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v143 = &v137 - v17;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB48, &qword_1BE0E4C20);
  v147 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v145 = &v137 - v18;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB38, &qword_1BE0E4C10);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v137 - v19;
  v20 = *(a1 + 112);
  v160 = *(a1 + 104);
  v159 = v20;
  v158 = *(a1 + 120);
  type metadata accessor for AddressSearchingModel(0);
  sub_1BD5B37E0(&qword_1EBD4BBE0, type metadata accessor for AddressSearchingModel, &unk_1BE0F05E8);
  v21 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  sub_1BE04D8B4(&v175);
  KeyPath, v24, v25, v26, v27, v28, v29, v30;
  v23, v31, v32, v33, v34, v35, v36, v37;

  v39 = v175;
  v38 = v176;
  v176, v40, v41, v42, v43, v44, v45, v46;
  v47 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v47 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v171 = v47 == 0;
  v168 = a1;
  v172 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BBE8, &qword_1BE0E4D98);
  sub_1BD0DE4F4(&qword_1EBD4BBF0, &qword_1EBD4BBE8, &qword_1BE0E4D98, MEMORY[0x1E6981F48]);
  sub_1BE0504E4();
  sub_1BE04E994();
  sub_1BD0DE4F4(&qword_1EBD4BB70, &qword_1EBD4BB68, &qword_1BE0E4C38, MEMORY[0x1E697CD20]);
  v48 = v161;
  v49 = v163;
  sub_1BE051144();
  v164[1](v12, v49);
  (*(v162 + 8))(v14, v48);
  v50 = sub_1BE051274();
  v51 = sub_1BE0501D4();
  v52 = sub_1BE051CD4();
  v53 = *(v169 + 36);
  v164 = v16;
  v54 = v16 + v53;
  *v54 = v50;
  v54[8] = v51;
  *(v54 + 2) = v52;
  *(v54 + 3) = v55;
  v56 = sub_1BE04E3D4();
  v57 = swift_getKeyPath();
  sub_1BE04E974();
  v57, v58, v59, v60, v61, v62, v63, v64;

  v65 = v175;
  v66 = v176;
  v67 = v178;
  if (sub_1BE051C54())
  {
    v180 = *(v168 + 96);
    v68 = *(v168 + 88);
    v179 = v68;
    if (v180 == 1)
    {
      if ((v68 & 1) == 0)
      {
LABEL_6:
        sub_1BE04FA84();
        goto LABEL_9;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v69 = sub_1BE050174();
      sub_1BE04CF84();

      v70 = v137;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v179, &qword_1EBD5C6E0, &qword_1BE0C3590);
      (*(v138 + 8))(v70, v139);
      if ((v173 & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  v71 = v140;
  sub_1BE04FA64();
  sub_1BE04FA54();
  (*(v141 + 8))(v71, v142);
LABEL_9:
  v73 = v165;
  v72 = v166;
  v74 = v167;
  (*(v166 + 104))(v165, *MEMORY[0x1E69B8068], v167);
  result = PKPassKitBundle();
  if (result)
  {
    v76 = result;
    v77 = sub_1BE04B6F4();
    v79 = v78;

    (*(v72 + 8))(v73, v74);
    v173 = v77;
    v174 = v79;
    v80 = sub_1BD5B2F8C();
    v136 = sub_1BD0DDEBC();
    v81 = v143;
    v83 = v169;
    v82 = v170;
    v84 = v164;
    sub_1BE050874();
    v79, v85, v86, v87, v88, v89, v90, v91;
    v67, v92, v93, v94, v95, v96, v97, v98;
    v66, v99, v100, v101, v102, v103, v104, v105;
    v65, v106, v107, v108, v109, v110, v111, v112;
    (*(v148 + 8))(v82, v149);
    sub_1BD0DE53C(v84, &qword_1EBD4BB58, &qword_1BE0E4C30);
    v113 = sub_1BD5B15F0();
    v115 = v114;
    v173 = v113;
    v174 = v114;
    v175 = v83;
    v176 = MEMORY[0x1E69E6158];
    v177 = v80;
    v178 = v136;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v117 = v145;
    v118 = v146;
    sub_1BE050B74();
    v115, v119, v120, v121, v122, v123, v124, v125;
    (*(v144 + 8))(v81, v118);
    v126 = v155;
    v127 = v154;
    v128 = v156;
    (*(v155 + 104))(v154, *MEMORY[0x1E697C438], v156);
    v175 = v118;
    v176 = MEMORY[0x1E69E6158];
    v177 = OpaqueTypeConformance2;
    v178 = v136;
    v129 = swift_getOpaqueTypeConformance2();
    v130 = v151;
    v131 = v150;
    sub_1BE050E84();
    (*(v126 + 8))(v127, v128);
    v132 = (*(v147 + 8))(v117, v131);
    MEMORY[0x1EEE9AC00](v132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB40, &qword_1BE0E4C18);
    v175 = v131;
    v176 = v129;
    swift_getOpaqueTypeConformance2();
    v133 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB78, &unk_1BE110AC0);
    v134 = sub_1BD0DE4F4(&qword_1EBD4BB80, &qword_1EBD4BB78, &unk_1BE110AC0, MEMORY[0x1E697BEF0]);
    v175 = v133;
    v176 = v134;
    swift_getOpaqueTypeConformance2();
    v135 = v153;
    sub_1BE051024();
    return (*(v152 + 8))(v130, v135);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD5AFE70(int a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v128 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BBF8, &qword_1BE0E4DA0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v108 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC00, &qword_1BE0E4DA8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v117 = &v108 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC08, &qword_1BE0E4DB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v108 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC10, &qword_1BE0E4DB8);
  v123 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v113 = &v108 - v18;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC18, &qword_1BE0E4DC0);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v121 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v120 = &v108 - v21;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC20, &qword_1BE0E4DC8);
  MEMORY[0x1EEE9AC00](v114);
  v23 = (&v108 - v22);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC28, &qword_1BE0E4DD0);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v119 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v122 = &v108 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC30, &qword_1BE0E4DD8);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v28);
  v133 = &v108 - v30;
  LODWORD(v115) = a1;
  v132 = v13;
  v131 = v16;
  v130 = v8;
  v129 = v9;
  v118 = v7;
  v127 = v31;
  v116 = v5;
  if (a1)
  {
    v32 = 0;
    v124 = 0;
    v33 = 0;
    v125 = 0;
  }

  else
  {
    type metadata accessor for AddressSearchingModel(0);
    sub_1BD5B37E0(&qword_1EBD4BBE0, type metadata accessor for AddressSearchingModel, &unk_1BE0F05E8);
    sub_1BE04E3C4();
    v34 = v17;
    v35 = swift_allocObject();
    v36 = *(a2 + 112);
    v35[7] = *(a2 + 96);
    v35[8] = v36;
    v35[9] = *(a2 + 128);
    v37 = *(a2 + 48);
    v35[3] = *(a2 + 32);
    v35[4] = v37;
    v38 = *(a2 + 80);
    v35[5] = *(a2 + 64);
    v35[6] = v38;
    v39 = *(a2 + 16);
    v35[1] = *a2;
    v35[2] = v39;
    sub_1BD5B30DC(a2, v138);
    v32 = sub_1BE04E954();
    v124 = v40;
    v41 = v40;
    v125 = v35;
    v17 = v34;
    sub_1BE048964();
    v33 = sub_1BD5B3350;
  }

  v42 = *(a2 + 64);
  v139 = v42;
  v43 = v42 >> 62;
  if (v42 >> 62)
  {
    v44 = sub_1BE053704();
  }

  else
  {
    v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v126 = v32;
  if (v44 && (*(a2 + 56) & 1) == 0 && (v115 & 1) != 0)
  {
    v108 = v17;
    v115 = v33;
    *v23 = sub_1BE051CE4();
    v23[1] = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC50, &qword_1BE0E4DF0);
    sub_1BD5B221C(a2, v23 + *(v46 + 44));
    v138[0] = sub_1BE051274();
    v47 = sub_1BE0518D4();
    *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC58, &qword_1BE0E4DF8) + 36)) = v47;
    v48 = v23 + *(v114 + 36);
    v48[32] = 0;
    *v48 = 0u;
    *(v48 + 1) = 0u;
    sub_1BE04E554();
    sub_1BD5B3550();
    sub_1BE050BB4();
    sub_1BD0DE53C(v23, &qword_1EBD4BC20, &qword_1BE0E4DC8);
    if ((v44 & 0x8000000000000000) != 0)
    {
      v49 = 4;
      if (!v43)
      {
LABEL_14:
        v50 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_19;
      }
    }

    else
    {
      if (v44 >= 4)
      {
        v49 = 4;
      }

      else
      {
        v49 = v44;
      }

      if (!v43)
      {
        goto LABEL_14;
      }
    }

    if (sub_1BE053704() < 0)
    {
      __break(1u);
      goto LABEL_33;
    }

    v50 = sub_1BE053704();
LABEL_19:
    if (v50 >= v49)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        sub_1BD0E8CBC();
        sub_1BE048C84();
        v51 = 0;
        do
        {
          v52 = v51 + 1;
          sub_1BE053864();
          v51 = v52;
        }

        while (v49 != v52);
        if (v43)
        {
          sub_1BD0DE53C(&v139, &qword_1EBD38868, &qword_1BE0E4CA0);
          v53 = sub_1BE0539D4();
LABEL_27:
          v134 = v53;
          v135 = v54;
          v136 = v55;
          v137 = v56;
          swift_getKeyPath();
          v57 = swift_allocObject();
          v58 = *(a2 + 112);
          v57[7] = *(a2 + 96);
          v57[8] = v58;
          v57[9] = *(a2 + 128);
          v59 = *(a2 + 48);
          v57[3] = *(a2 + 32);
          v57[4] = v59;
          v60 = *(a2 + 80);
          v57[5] = *(a2 + 64);
          v57[6] = v60;
          v61 = *(a2 + 16);
          v57[1] = *a2;
          v57[2] = v61;
          sub_1BD5B30DC(a2, v138);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC80, &qword_1BE0E4E48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC88, &unk_1BE0E4E50);
          sub_1BD0DE4F4(&qword_1EBD4BC90, &qword_1EBD4BC80, &qword_1BE0E4E48, MEMORY[0x1E69E6970]);
          sub_1BD5B36F4();
          v62 = v120;
          sub_1BE0519C4();
          v63 = v109;
          v64 = *(v109 + 16);
          v65 = v119;
          v66 = v110;
          v64(v119, v122, v110);
          v67 = v111;
          v114 = *(v111 + 16);
          v68 = v62;
          v69 = v112;
          (v114)(v121, v68, v112);
          v70 = v113;
          v64(v113, v65, v66);
          v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCA0, &qword_1BE0E4E68);
          v72 = v121;
          (v114)(v70 + *(v71 + 48), v121, v69);
          v73 = *(v67 + 8);
          v73(v120, v69);
          v74 = *(v63 + 8);
          v74(v122, v66);
          v73(v72, v69);
          v74(v119, v66);
          v75 = v133;
          sub_1BD0890C0(v70, v133);
          (*(v123 + 56))(v75, 0, 1, v108);
          v33 = v115;
          goto LABEL_28;
        }
      }

      else
      {
        sub_1BE048C84();
      }

      v55 = 0;
      v53 = v42 & 0xFFFFFFFFFFFFFF8;
      v54 = (v42 & 0xFFFFFFFFFFFFFF8) + 32;
      v56 = (2 * v49) | 1;
      goto LABEL_27;
    }

LABEL_33:
    __break(1u);
    return;
  }

  (*(v123 + 56))(v133, 1, 1, v17, v29);
LABEL_28:
  v76 = 1;
  v77 = v131;
  v78 = v130;
  v79 = v129;
  if ((*(a2 + 56) & 1) == 0)
  {
    v80 = swift_allocObject();
    v81 = *(a2 + 112);
    v80[7] = *(a2 + 96);
    v80[8] = v81;
    v80[9] = *(a2 + 128);
    v82 = *(a2 + 48);
    v80[3] = *(a2 + 32);
    v80[4] = v82;
    v83 = *(a2 + 80);
    v80[5] = *(a2 + 64);
    v80[6] = v83;
    v84 = *(a2 + 16);
    v80[1] = *a2;
    v80[2] = v84;
    sub_1BD5B30DC(a2, v138);
    v85 = v118;
    sub_1BE051704();
    v86 = sub_1BE050234();
    v87 = v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41F50, &qword_1BE0E4DE0) + 36);
    *v87 = v86;
    *(v87 + 8) = 0u;
    *(v87 + 24) = 0u;
    *(v87 + 40) = 1;
    v138[0] = sub_1BE051274();
    *(v85 + *(v116 + 36)) = sub_1BE0518D4();
    sub_1BE052434();
    v89 = v88;
    sub_1BD5B3360();
    v90 = v117;
    sub_1BE050DE4();
    v89, v91, v92, v93, v94, v95, v96, v97;
    sub_1BD0DE53C(v85, &qword_1EBD4BBF8, &qword_1BE0E4DA0);
    sub_1BD0DE204(v90, v77, &qword_1EBD4BC00, &qword_1BE0E4DA8);
    v76 = 0;
  }

  (*(v79 + 56))(v77, v76, 1, v78);
  v98 = v133;
  v99 = v127;
  sub_1BD08904C(v133, v127);
  v100 = v132;
  sub_1BD0DE19C(v77, v132, &qword_1EBD4BC08, &qword_1BE0E4DB0);
  v101 = v128;
  v102 = v126;
  v103 = v124;
  *v128 = v126;
  v101[1] = v103;
  v101[2] = v33;
  v104 = v77;
  v105 = v33;
  v106 = v125;
  v101[3] = v125;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BC48, &qword_1BE0E4DE8);
  sub_1BD08904C(v99, v101 + *(v107 + 48));
  sub_1BD0DE19C(v100, v101 + *(v107 + 64), &qword_1EBD4BC08, &qword_1BE0E4DB0);
  sub_1BD5B34D0(v102, v103);
  sub_1BD5B3510(v102, v103, v105, v106);
  sub_1BD0DE53C(v104, &qword_1EBD4BC08, &qword_1BE0E4DB0);
  sub_1BD0DE53C(v98, &qword_1EBD4BC30, &qword_1BE0E4DD8);
  sub_1BD0DE53C(v100, &qword_1EBD4BC08, &qword_1BE0E4DB0);
  sub_1BD0DE53C(v99, &qword_1EBD4BC30, &qword_1BE0E4DD8);
  sub_1BD5B3510(v102, v103, v105, v106);
}

double sub_1BD5B0C48(void *a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    (*(a2 + 72))(a1);
  }

  else
  {
    if (!a1)
    {
      v3 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
      sub_1BE052434();
      v5 = v4;
      v6 = sub_1BE052404();
      v5, v7, v8, v9, v10, v11, v12, v13;
      [v3 setValueSource_];

      a1 = 0;
    }

    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB90, &qword_1BE0E4C50);
    sub_1BE0516B4();
  }

  return result;
}

uint64_t sub_1BD5B0D3C(void **a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4B6C8, &qword_1BE108180);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24[-v5];
  v7 = *a1;
  v8 = swift_allocObject();
  v9 = a2[7];
  *(v8 + 112) = a2[6];
  *(v8 + 128) = v9;
  *(v8 + 144) = a2[8];
  v10 = a2[3];
  *(v8 + 48) = a2[2];
  *(v8 + 64) = v10;
  v11 = a2[5];
  *(v8 + 80) = a2[4];
  *(v8 + 96) = v11;
  v12 = a2[1];
  *(v8 + 16) = *a2;
  *(v8 + 32) = v12;
  *(v8 + 160) = v7;
  v25 = v7;
  sub_1BD5B30DC(a2, v26);
  type metadata accessor for AddressSearchingResults.ResultRow(0);
  sub_1BD5B37E0(&qword_1EBD4B6E8, type metadata accessor for AddressSearchingResults.ResultRow, &unk_1BE1081D0);
  v13 = v7;
  sub_1BE051704();
  v26[0] = sub_1BE051274();
  *&v6[*(v4 + 36)] = sub_1BE0518D4();
  sub_1BE052434();
  v15 = v14;
  sub_1BD598D7C();
  sub_1BE050DE4();
  v15, v16, v17, v18, v19, v20, v21, v22;
  return sub_1BD0DE53C(v6, &qword_1EBD4B6C8, &qword_1BE108180);
}

void sub_1BD5B0F40(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B0A4();
  type metadata accessor for AddressEditingModel(0);
  swift_allocObject();
  v7 = sub_1BD840B14(v6);
  sub_1BE052434();
  v9 = v8;
  v10 = sub_1BE052404();
  v9, v11, v12, v13, v14, v15, v16, v17;
  [a1 setValueSource_];

  v18 = a1;
  sub_1BD84367C(v18);

  v19 = v2[1];
  v57 = *v2;
  v58 = v19;
  v59 = *(v2 + 4);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v57;
  v61 = v58;
  *&v62 = v59;
  sub_1BE048964();
  sub_1BD10D494(&v57, v54);
  sub_1BE04D8C4();
  sub_1BD841418();
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  sub_1BE04D8B4(v54);
  KeyPath, v22, v23, v24, v25, v26, v27, v28;
  v21, v29, v30, v31, v32, v33, v34, v35;
  v70 = v54[10];
  v71 = v54[11];
  v72 = v54[12];
  v66 = v54[6];
  v67 = v54[7];
  v68 = v54[8];
  v69 = v54[9];
  v62 = v54[2];
  v63 = v54[3];
  v64 = v54[4];
  v65 = v54[5];
  v60 = v54[0];
  v61 = v54[1];
  LOBYTE(KeyPath) = sub_1BD4F7DB0();
  sub_1BD4FBC18(&v60);
  if (KeyPath & 1) != 0 && sub_1BD20B8F0(*&v7[OBJC_IVAR____TtC9PassKitUI19AddressEditingModel_postalAddressEditingModel]) && (sub_1BD20BAFC(), (v36))
  {
    (*(v2 + 9))(v18);
    v7, v37, v38, v39, v40, v41, v42, v43;
  }

  else
  {
    v44 = *(v2 + 16);
    v55 = *(v2 + 17);
    v56 = v44;
    *&v54[0] = v44;
    *(&v54[0] + 1) = v55;
    v53[1] = v18;
    v45 = v18;
    sub_1BD0DE19C(&v56, v53, &qword_1EBD4BBD0, &qword_1BE0E4D40);
    sub_1BD0DE19C(&v55, v53, &qword_1EBD4BBD8, &qword_1BE0E4D48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB90, &qword_1BE0E4C50);
    sub_1BE0516B4();
    v7, v46, v47, v48, v49, v50, v51, v52;
    sub_1BD0DE53C(&v56, &qword_1EBD4BBD0, &qword_1BE0E4D40);
    sub_1BD0DE53C(&v55, &qword_1EBD4BBD8, &qword_1BE0E4D48);
  }
}

id sub_1BD5B123C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for AddressSearchingResults.ResultRow(0);
  v4 = *(v3 + 20);
  v5 = *MEMORY[0x1E6980FA8];
  v6 = sub_1BE050554();
  (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
  v7 = *(v3 + 24);
  *(a2 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
  *(a2 + 8) = 0;

  return a1;
}

double sub_1BD5B131C(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  sub_1BE052434();
  v3 = v2;
  v4 = sub_1BE052404();
  v3, v5, v6, v7, v8, v9, v10, v11;
  [v1 setValueSource_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB90, &qword_1BE0E4C50);
  sub_1BE0516B4();
  return result;
}

void sub_1BD5B13D4(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v65[2] = v9;
    v65[3] = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    LOBYTE(v8) = v15;
    v17 = v16;
    v18 = sub_1BE050324();
    v19 = sub_1BE0505F4();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v18, v20, v22, v24, v26, v27, v28, v29;
    sub_1BD0DDF10(v12, v14, (v8 & 1), v30, v31, v32, v33, v34);
    v17, v35, v36, v37, v38, v39, v40, v41;
    v42 = sub_1BE051224();
    v43 = sub_1BE050564();
    v45 = v44;
    LOBYTE(v17) = v46;
    v48 = v47;
    v42, v44, v46, v47, v49, v50, v51, v52;
    sub_1BD0DDF10(v19, v21, (v23 & 1), v53, v54, v55, v56, v57);
    v25, v58, v59, v60, v61, v62, v63, v64;
    *a1 = v43;
    *(a1 + 8) = v45;
    *(a1 + 16) = v17 & 1;
    *(a1 + 24) = v48;
  }

  else
  {
    __break(1u);
  }
}

id sub_1BD5B15F0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v9;
  v12 = *(v0 + 48);
  v13 = *MEMORY[0x1E69B8068];
  v14 = *(v2 + 104);
  if (v12 == 1)
  {
    v14(v7, v13, v1, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
      v11 = v7;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (!v12)
  {
    v14(&v18 - v9, v13, v1, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();
LABEL_9:

      (*(v2 + 8))(v11, v1);
      return v17;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14(v4, v13, v1, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();
    v11 = v4;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BD5B1850(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB78, &unk_1BE110AC0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BE04FB04();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD467F8, &qword_1BE110AD0);
  sub_1BD4588AC();
  sub_1BE04E424();
  v7 = sub_1BD0DE4F4(&qword_1EBD4BB80, &qword_1EBD4BB78, &unk_1BE110AC0, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

id sub_1BD5B1A08@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8, &qword_1BE0D73A0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39[-v10 - 8];
  (*(v4 + 104))(v6, *MEMORY[0x1E69B8068], v3, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_1BE04B6F4();
    v16 = v15;

    (*(v4 + 8))(v6, v3);
    v17 = swift_allocObject();
    v18 = a1[7];
    v17[7] = a1[6];
    v17[8] = v18;
    v17[9] = a1[8];
    v19 = a1[3];
    v17[3] = a1[2];
    v17[4] = v19;
    v20 = a1[5];
    v17[5] = a1[4];
    v17[6] = v20;
    v21 = a1[1];
    v17[1] = *a1;
    v17[2] = v21;
    v40[0] = v14;
    v40[1] = v16;
    MEMORY[0x1EEE9AC00](v17);
    *(&v38 - 4) = v40;
    *(&v38 - 3) = 0x6B72616D78;
    *(&v38 - 2) = 0xE500000000000000;
    sub_1BD5B30DC(a1, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    sub_1BE051704();
    v16, v22, v23, v24, v25, v26, v27, v28;
    sub_1BE052434();
    v30 = v29;
    sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8, &qword_1BE0D73A0, MEMORY[0x1E697D680]);
    sub_1BE050DE4();
    v30, v31, v32, v33, v34, v35, v36, v37;
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD5B1D70(void **a1, __int128 *a2)
{
  v5 = type metadata accessor for FavoritesView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BBC0, &qword_1BE0E4C60);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37[-v9];
  v11 = *a1;
  if (*a1)
  {
    v44 = *(a2 + 40);
    v12 = a2[1];
    v41 = *a2;
    v42 = v12;
    v43 = *(a2 + 4);
    v13 = swift_allocObject();
    v14 = a2[7];
    v13[7] = a2[6];
    v13[8] = v14;
    v13[9] = a2[8];
    v15 = a2[3];
    v13[3] = a2[2];
    v13[4] = v15;
    v16 = a2[5];
    v13[5] = a2[4];
    v13[6] = v16;
    v17 = a2[1];
    v13[1] = *a2;
    v13[2] = v17;
    v18 = swift_allocObject();
    v19 = a2[7];
    v18[7] = a2[6];
    v18[8] = v19;
    v18[9] = a2[8];
    v20 = a2[3];
    v18[3] = a2[2];
    v18[4] = v20;
    v21 = a2[5];
    v18[5] = a2[4];
    v18[6] = v21;
    v22 = a2[1];
    v18[1] = *a2;
    v18[2] = v22;
    v38 = 0;
    v37[7] = 0;
    sub_1BD5B30DC(a2, v39);
    sub_1BD5B30DC(a2, v39);
    v23 = v11;
    sub_1BD0DE19C(&v44, v39, &qword_1EBD4BBC8, &qword_1BE0E4CA8);
    sub_1BD10D494(&v41, v39);
    sub_1BE051694();
    v24 = v41;
    v25 = v42;
    *(v10 + 1) = v44;
    *(v10 + 2) = v24;
    v26 = v39[0];
    v27 = v40;
    v28 = v38;
    *v10 = 0;
    *(v10 + 1) = v11;
    *(v10 + 3) = v25;
    *(v10 + 8) = v43;
    *(v10 + 9) = sub_1BD5B32F8;
    *(v10 + 10) = v13;
    *(v10 + 11) = sub_1BD5B3300;
    *(v10 + 12) = v18;
    *(v10 + 13) = sub_1BDA50324;
    *(v10 + 14) = 0;
    v10[120] = v28;
    v10[128] = v26;
    *(v10 + 17) = v27;
    swift_storeEnumTagMultiPayload();
    sub_1BD5B3224();
    sub_1BD5B37E0(&qword_1EBD4BBB8, type metadata accessor for FavoritesView, &unk_1BE0E35B0);
    return sub_1BE04F9A4();
  }

  else
  {
    *&v41 = *(a2 + 8);
    v30 = v41;
    v31 = swift_allocObject();
    v32 = a2[7];
    *(v31 + 7) = a2[6];
    *(v31 + 8) = v32;
    *(v31 + 9) = a2[8];
    v33 = a2[3];
    *(v31 + 3) = a2[2];
    *(v31 + 4) = v33;
    v34 = a2[5];
    *(v31 + 5) = a2[4];
    *(v31 + 6) = v34;
    v35 = a2[1];
    *(v31 + 1) = *a2;
    *(v31 + 2) = v35;
    *(v7 + *(v5 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
    swift_storeEnumTagMultiPayload();
    *v7 = v30;
    v36 = (v7 + *(v5 + 24));
    *v36 = sub_1BD5B3278;
    v36[1] = v31;
    sub_1BD598AE0(v7, v10);
    swift_storeEnumTagMultiPayload();
    sub_1BD5B30DC(a2, v39);
    sub_1BD0DE19C(&v41, v39, &qword_1EBD38868, &qword_1BE0E4CA0);
    sub_1BD5B3224();
    sub_1BD5B37E0(&qword_1EBD4BBB8, type metadata accessor for FavoritesView, &unk_1BE0E35B0);
    sub_1BE04F9A4();
    return sub_1BD5B329C(v7);
  }
}

uint64_t sub_1BD5B21A4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB90, &qword_1BE0E4C50);
  sub_1BE0516B4();
  return (*(a2 + 72))(a1);
}

uint64_t sub_1BD5B221C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1BE051994();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCA8, &qword_1BE0E4EA8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCB0, &qword_1BE0E4EB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  *v20 = sub_1BE04F504();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCB8, &qword_1BE0E4EB8);
  sub_1BD5B25A4(a1, &v20[*(v21 + 44)]);
  *v14 = sub_1BE04F7B4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCC0, &qword_1BE0E4EC0) + 44)];
  sub_1BE051984();
  v34 = 1;
  v23 = *(v4 + 16);
  v23(v6, v9, v3);
  v24 = v34;
  *v22 = 0;
  v22[8] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCC8, &qword_1BE0E4EC8);
  v23(&v22[*(v25 + 48)], v6, v3);
  v26 = *(v4 + 8);
  v26(v9, v3);
  v26(v6, v3);
  sub_1BD0DE19C(v20, v17, &qword_1EBD4BCB0, &qword_1BE0E4EB0);
  v27 = v32;
  sub_1BD0DE19C(v14, v32, &qword_1EBD4BCA8, &qword_1BE0E4EA8);
  v28 = v33;
  sub_1BD0DE19C(v17, v33, &qword_1EBD4BCB0, &qword_1BE0E4EB0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCD0, &qword_1BE0E4ED0);
  sub_1BD0DE19C(v27, v28 + *(v29 + 48), &qword_1EBD4BCA8, &qword_1BE0E4EA8);
  sub_1BD0DE53C(v14, &qword_1EBD4BCA8, &qword_1BE0E4EA8);
  sub_1BD0DE53C(v20, &qword_1EBD4BCB0, &qword_1BE0E4EB0);
  sub_1BD0DE53C(v27, &qword_1EBD4BCA8, &qword_1BE0E4EA8);
  return sub_1BD0DE53C(v17, &qword_1EBD4BCB0, &qword_1BE0E4EB0);
}

id sub_1BD5B25A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v155 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v142 = *(v2 - 8);
  v143 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v140 = &v132[-v3];
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCD8, &qword_1BE0E4ED8);
  MEMORY[0x1EEE9AC00](v139);
  v141 = &v132[-v4];
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCE0, &qword_1BE0E4EE0);
  v152 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v138 = &v132[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v137 = &v132[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCE8, &qword_1BE0E4EE8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v153 = &v132[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v157 = &v132[-v11];
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v147 = &v132[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v132[-v17];
  v19 = *(v13 + 104);
  v145 = *MEMORY[0x1E69B8068];
  v146 = v13 + 104;
  v144 = v19;
  v19(&v132[-v17], v16);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v22 = sub_1BE04B6F4();
    v24 = v23;

    v25 = *(v13 + 8);
    v151 = v12;
    v136 = v13 + 8;
    v134 = v25;
    v25(v18, v12);
    v158 = v22;
    v159 = v24;
    v135 = sub_1BD0DDEBC();
    v26 = sub_1BE0506C4();
    v28 = v27;
    LOBYTE(v21) = v29;
    v31 = v30;
    v32 = sub_1BE050324();
    v33 = sub_1BE0505F4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v32, v34, v36, v38, v40, v41, v42, v43;
    sub_1BD0DDF10(v26, v28, (v21 & 1), v44, v45, v46, v47, v48);
    v31, v49, v50, v51, v52, v53, v54, v55;
    v56 = sub_1BE051234();
    v57 = sub_1BE050564();
    v149 = v58;
    v150 = v59;
    v61 = v60;
    v56, v58, v60, v59, v62, v63, v64, v65;
    sub_1BD0DDF10(v33, v35, (v37 & 1), v66, v67, v68, v69, v70);
    v39, v71, v72, v73, v74, v75, v76, v77;
    v78 = sub_1BE050204();
    sub_1BE04E1F4();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v87 = v61 & 1;
    v177 = v61 & 1;
    v174 = 0;
    v88 = v155;
    v89 = *(v155 + 64);
    if (v89 >> 62)
    {
      v90 = sub_1BE053704();
    }

    else
    {
      v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v91 = 1;
    v92 = v156;
    v93 = v151;
    if (v90 < 5)
    {
      goto LABEL_7;
    }

    v133 = v61 & 1;
    v94 = v78;
    v95 = v147;
    v144(v147, v145, v151);
    result = PKPassKitBundle();
    if (result)
    {
      v96 = result;
      v97 = sub_1BE04B6F4();
      v99 = v98;

      v134(v95, v93);
      *&v170 = v97;
      *(&v170 + 1) = v99;
      v100 = swift_allocObject();
      v101 = v88[7];
      v100[7] = v88[6];
      v100[8] = v101;
      v100[9] = v88[8];
      v102 = v88[3];
      v100[3] = v88[2];
      v100[4] = v102;
      v103 = v88[5];
      v100[5] = v88[4];
      v100[6] = v103;
      v104 = v88[1];
      v100[1] = *v88;
      v100[2] = v104;
      sub_1BD5B30DC(v88, &v158);
      v105 = v140;
      sub_1BE051744();
      v106 = sub_1BE0511F4();
      KeyPath = swift_getKeyPath();
      v108 = v141;
      (*(v142 + 32))(v141, v105, v143);
      v109 = &v108[*(v139 + 36)];
      *v109 = KeyPath;
      v109[1] = v106;
      LOBYTE(v106) = sub_1BE050224();
      sub_1BE04E1F4();
      v111 = v110;
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v118 = v108;
      v119 = v138;
      sub_1BD0DE204(v118, v138, &qword_1EBD4BCD8, &qword_1BE0E4ED8);
      v120 = &v119[*(v92 + 36)];
      *v120 = v106;
      *(v120 + 1) = v111;
      *(v120 + 2) = v113;
      *(v120 + 3) = v115;
      *(v120 + 4) = v117;
      v120[40] = 0;
      v121 = v119;
      v122 = v137;
      sub_1BD0DE204(v121, v137, &qword_1EBD4BCE0, &qword_1BE0E4EE0);
      sub_1BD0DE204(v122, v157, &qword_1EBD4BCE0, &qword_1BE0E4EE0);
      v91 = 0;
      v78 = v94;
      v87 = v133;
LABEL_7:
      v148 = v78;
      v123 = v157;
      (*(v152 + 56))(v157, v91, 1, v92);
      v124 = v153;
      sub_1BD0DE19C(v123, v153, &qword_1EBD4BCE8, &qword_1BE0E4EE8);
      v125 = v149;
      *&v170 = v57;
      *(&v170 + 1) = v149;
      LOBYTE(v171) = v87;
      *(&v171 + 1) = *v176;
      DWORD1(v171) = *&v176[3];
      v156 = v57;
      v126 = v150;
      *(&v171 + 1) = v150;
      LOBYTE(v172) = v78;
      *(&v172 + 1) = *v175;
      DWORD1(v172) = *&v175[3];
      *(&v172 + 1) = v80;
      *&v173[0] = v82;
      *(&v173[0] + 1) = v84;
      *&v173[1] = v86;
      BYTE8(v173[1]) = 0;
      v127 = v170;
      v128 = v171;
      v129 = v154;
      *(v154 + 57) = *(v173 + 9);
      v130 = v173[0];
      *(v129 + 32) = v172;
      *(v129 + 48) = v130;
      *v129 = v127;
      *(v129 + 16) = v128;
      *(v129 + 80) = 0;
      *(v129 + 88) = 1;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BCF0, &unk_1BE0E4EF0);
      sub_1BD0DE19C(v124, v129 + *(v131 + 64), &qword_1EBD4BCE8, &qword_1BE0E4EE8);
      sub_1BD0DE19C(&v170, &v158, &unk_1EBD3DF90, &qword_1BE0C2E90);
      sub_1BD0DE53C(v123, &qword_1EBD4BCE8, &qword_1BE0E4EE8);
      sub_1BD0DE53C(v124, &qword_1EBD4BCE8, &qword_1BE0E4EE8);
      v158 = v156;
      v159 = v125;
      v160 = v87;
      *v161 = *v176;
      *&v161[3] = *&v176[3];
      v162 = v126;
      v163 = v148;
      *v164 = *v175;
      *&v164[3] = *&v175[3];
      v165 = v80;
      v166 = v82;
      v167 = v84;
      v168 = v86;
      v169 = 0;
      return sub_1BD0DE53C(&v158, &unk_1EBD3DF90, &qword_1BE0C2E90);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI20ShippingContactLabelOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 4;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI21ShippingAddressPickerV5Sheet33_C08B7A738403456556CE3CC2563085A5LLOSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD5B2EAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1BD5B2EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD5B2F8C()
{
  result = qword_1EBD4BB60;
  if (!qword_1EBD4BB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB58, &qword_1BE0E4C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB68, &qword_1BE0E4C38);
    sub_1BE04E9A4();
    sub_1BD0DE4F4(&qword_1EBD4BB70, &qword_1EBD4BB68, &qword_1BE0E4C38, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20, &unk_1BE0E4C40, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BB60);
  }

  return result;
}

unint64_t sub_1BD5B3114()
{
  result = qword_1EBD4BBA0;
  if (!qword_1EBD4BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BBA0);
  }

  return result;
}

unint64_t sub_1BD5B3168()
{
  result = qword_1EBD4BBA8;
  if (!qword_1EBD4BBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB98, &qword_1BE0E4C58);
    sub_1BD5B3224();
    sub_1BD5B37E0(&qword_1EBD4BBB8, type metadata accessor for FavoritesView, &unk_1BE0E35B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BBA8);
  }

  return result;
}

unint64_t sub_1BD5B3224()
{
  result = qword_1EBD4BBB0;
  if (!qword_1EBD4BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BBB0);
  }

  return result;
}

uint64_t sub_1BD5B329C(uint64_t a1)
{
  v2 = type metadata accessor for FavoritesView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD5B3360()
{
  result = qword_1EBD4BC38;
  if (!qword_1EBD4BC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BBF8, &qword_1BE0E4DA0);
    sub_1BD5B3418();
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BC38);
  }

  return result;
}

unint64_t sub_1BD5B3418()
{
  result = qword_1EBD4BC40;
  if (!qword_1EBD4BC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41F50, &qword_1BE0E4DE0);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BC40);
  }

  return result;
}

uint64_t sub_1BD5B34D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;

    return sub_1BE048964();
  }

  return result;
}

void sub_1BD5B3510(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (a2)
  {

    a4, v5, v6, v7, v8, v9, v10, v11;
  }
}

unint64_t sub_1BD5B3550()
{
  result = qword_1EBD4BC60;
  if (!qword_1EBD4BC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BC20, &qword_1BE0E4DC8);
    sub_1BD5B3608();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BC60);
  }

  return result;
}

unint64_t sub_1BD5B3608()
{
  result = qword_1EBD4BC68;
  if (!qword_1EBD4BC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BC58, &qword_1BE0E4DF8);
    sub_1BD0DE4F4(&qword_1EBD4BC70, &qword_1EBD4BC78, qword_1BE0E4E00, MEMORY[0x1E6981880]);
    sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BC68);
  }

  return result;
}

unint64_t sub_1BD5B36F4()
{
  result = qword_1EBD4BC98;
  if (!qword_1EBD4BC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BC88, &unk_1BE0E4E50);
    sub_1BD598D7C();
    sub_1BD5B37E0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BC98);
  }

  return result;
}

uint64_t sub_1BD5B37E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_64(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;

  v23 = *(v8 + 64);
  if (v23 >= 5)
  {
    v23, v16, v17, v18, v19, v20, v21, v22;
  }

  *(v8 + 80), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 96), v24, v25, v26, v27, v28, v29, v30;
  sub_1BD0D4604(*(v8 + 104), *(v8 + 112), v31, v32, v33, v34, v35, v36);
  sub_1BD035CB4(*(v8 + 120), *(v8 + 128), *(v8 + 136), v37, v38, v39, v40, v41);
  v49 = *(v8 + 144);
  if (v49 != 1)
  {
  }

  *(v8 + 152), v42, v43, v44, v45, v46, v47, v48;

  return swift_deallocObject();
}

double sub_1BD5B38C8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BB90, &qword_1BE0E4C50);
  sub_1BE0516B4();
  return result;
}

unint64_t sub_1BD5B391C()
{
  result = qword_1EBD4BCF8;
  if (!qword_1EBD4BCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BD00, &unk_1BE0E4F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB20, &qword_1BE0E4BF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB98, &qword_1BE0E4C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BB18, &qword_1BE0E4BF0);
    sub_1BE04FE84();
    sub_1BD0DE4F4(&qword_1EBD4BB88, &qword_1EBD4BB18, &qword_1BE0E4BF0, MEMORY[0x1E697C0C0]);
    sub_1BD5B37E0(&qword_1EBD39E50, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    swift_getOpaqueTypeConformance2();
    sub_1BD5B3114();
    sub_1BD5B3168();
    swift_getOpaqueTypeConformance2();
    sub_1BD5B37E0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BCF8);
  }

  return result;
}

id sub_1BD5B3B14(void *a1)
{
  [v1 setDirectionalLayoutMargins_];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  sub_1BE048964();
  v5 = a1;
  sub_1BE052E74();
  v3, v6, v7, v8, v9, v10, v11, v12;

  return [v1 setNeedsUpdateConfiguration];
}

void sub_1BD5B3BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BDA8, qword_1BE0E5270);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = PKAccessibilityIDSet(Strong, *MEMORY[0x1E69B9C98]);
    MEMORY[0x1EEE9AC00](v14);
    v17[-2] = a4;
    sub_1BD5B8A64();
    v15 = v13;
    sub_1BE04FCE4();
    sub_1BE050234();
    sub_1BE04FCD4();
    v16 = *(v6 + 8);
    v16(v8, v5);
    sub_1BE0501C4();
    v17[3] = v5;
    v17[4] = sub_1BD0DE4F4(&qword_1EBD4BDB8, &qword_1EBD4BDA8, qword_1BE0E5270, MEMORY[0x1E697C858]);
    __swift_allocate_boxed_opaque_existential_1(v17);
    sub_1BE04FCD4();
    v16(v11, v5);
    MEMORY[0x1BFB3FEF0](v17);
  }
}

uint64_t sub_1BD5B3E4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider);
  type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel(0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  v5 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
  v6 = type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  sub_1BE048964();
  sub_1BE04B5C4();
  *(v4 + 16) = v3;
  result = sub_1BE051694();
  *a2 = v8;
  a2[1] = v9;
  return result;
}

id PKDashboardFinanceKitSpendingSummaryCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PKDashboardFinanceKitSpendingSummaryCell.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = _UISolariumFeatureFlagEnabled();
  v11 = 8.0;
  if (v10)
  {
    v11 = 11.0;
  }

  *&v5[OBJC_IVAR____TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell_verticalPadding] = v11;
  v12 = _UISolariumFeatureFlagEnabled();
  v13 = 12.0;
  if (v12)
  {
    v13 = 15.0;
  }

  *&v5[OBJC_IVAR____TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell_horizontalPadding] = v13;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for PKDashboardFinanceKitSpendingSummaryCell();
  return objc_msgSendSuper2(&v15, sel_initWithFrame_, a2, a3, a4, a5);
}

id PKDashboardFinanceKitSpendingSummaryCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKDashboardFinanceKitSpendingSummaryCell.init(coder:)(void *a1)
{
  v3 = _UISolariumFeatureFlagEnabled();
  v4 = 8.0;
  if (v3)
  {
    v4 = 11.0;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell_verticalPadding] = v4;
  v5 = _UISolariumFeatureFlagEnabled();
  v6 = 12.0;
  if (v5)
  {
    v6 = 15.0;
  }

  *&v1[OBJC_IVAR____TtC9PassKitUI40PKDashboardFinanceKitSpendingSummaryCell_horizontalPadding] = v6;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PKDashboardFinanceKitSpendingSummaryCell();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id PKDashboardFinanceKitSpendingSummaryCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDashboardFinanceKitSpendingSummaryCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD5B43C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD68, &qword_1BE0E5150);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD70, &qword_1BE0E5158);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - v11;
  *v8 = sub_1BE04F7C4();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD78, &qword_1BE0E5160);
  sub_1BD5B4608(a1, a2, &v8[*(v13 + 44)]);
  sub_1BE051C94();
  sub_1BE04EE54();
  sub_1BD0DE204(v8, v12, &qword_1EBD4BD68, &qword_1BE0E5150);
  v14 = &v12[*(v10 + 44)];
  v15 = v21[5];
  *(v14 + 4) = v21[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v21[6];
  v16 = v21[1];
  *v14 = v21[0];
  *(v14 + 1) = v16;
  v17 = v21[3];
  *(v14 + 2) = v21[2];
  *(v14 + 3) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD80, &qword_1BE0E5178) + 36));
  sub_1BE04E7B4();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE0528B4();
  *v19 = &unk_1BE0E5170;
  v19[1] = v18;
  return sub_1BD0DE204(v12, a3, &qword_1EBD4BD70, &qword_1BE0E5158);
}

id sub_1BD5B4608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FinanceKitSpendingSummariesGraphView(0);
  v103 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58, &qword_1BE0E5118);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v95 - v10;
  v107 = type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData(0);
  v12 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v95 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD90, &qword_1BE0E5190);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v104 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v95 - v17;
  v105 = a1;
  v117 = a1;
  v118 = a2;
  v106 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD88, &qword_1BE0E5180);
  sub_1BE0516A4();
  v18 = v111;
  KeyPath = swift_getKeyPath();
  v117 = v18;
  sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel, &unk_1BE0E508C);
  sub_1BE04B594();
  KeyPath, v20, v21, v22, v23, v24, v25, v26;
  LOBYTE(a2) = v18[24];
  v18, v27, v28, v29, v30, v31, v32, v33;
  sub_1BD5B83C4(a2);
  v117 = v34;
  v118 = v35;
  sub_1BD0DDEBC();
  v100 = sub_1BE0506C4();
  v110 = v36;
  v38 = v37;
  v101 = v39;
  v109 = swift_getKeyPath();
  result = PKFontForDesign(*MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC90], 0x8000, 0, *MEMORY[0x1E69DB978]);
  if (result)
  {
    v99 = sub_1BE050484();
    v97 = swift_getKeyPath();
    v108 = v38 & 1;
    v133 = v38 & 1;
    v132 = 0;
    v96 = swift_getKeyPath();
    v117 = v105;
    v118 = v106;
    sub_1BE0516A4();
    v41 = v111;
    v42 = swift_getKeyPath();
    v117 = v41;
    sub_1BE04B594();
    v42, v43, v44, v45, v46, v47, v48, v49;
    v50 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
    swift_beginAccess();
    sub_1BD0DE19C(v41 + v50, v11, &qword_1EBD4BD58, &qword_1BE0E5118);
    v41, v51, v52, v53, v54, v55, v56, v57;
    v58 = (*(v12 + 48))(v11, 1, v107);
    v98 = a3;
    if (v58 == 1)
    {
      sub_1BD0DE53C(v11, &qword_1EBD4BD58, &qword_1BE0E5118);
      v59 = 1;
      v60 = v102;
    }

    else
    {
      v61 = v95;
      sub_1BD5B89F4(v11, v95, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData);
      v117 = v105;
      v118 = v106;
      sub_1BE0516A4();
      v62 = v111;
      v63 = swift_getKeyPath();
      v117 = v62;
      sub_1BE04B594();
      v63, v64, v65, v66, v67, v68, v69, v70;
      v71 = v62[24];
      v62, v72, v73, v74, v75, v76, v77, v78;
      sub_1BD0DE204(v61, &v8[v6[5]], &qword_1EBD38DB8, &unk_1BE0BD340);
      v79 = (v61 + *(v107 + 20));
      v80 = *v79;
      v81 = v79[1];
      v82 = *(v61 + *(v107 + 24));
      *&v8[v6[11]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD473F8, &qword_1BE0E2E80);
      swift_storeEnumTagMultiPayload();
      *v8 = v71;
      v83 = &v8[v6[6]];
      *v83 = v80;
      v83[1] = v81;
      *&v8[v6[7]] = v82;
      v8[v6[8]] = 2;
      v8[v6[9]] = 1;
      v8[v6[10]] = 1;
      v60 = v102;
      sub_1BD5B89F4(v8, v102, type metadata accessor for FinanceKitSpendingSummariesGraphView);
      v59 = 0;
    }

    (*(v103 + 56))(v60, v59, 1, v6);
    v84 = v104;
    sub_1BD0DE19C(v60, v104, &qword_1EBD4BD90, &qword_1BE0E5190);
    v85 = v100;
    *&v111 = v100;
    *(&v111 + 1) = v110;
    LOBYTE(v112) = v108;
    *(&v112 + 1) = *v131;
    DWORD1(v112) = *&v131[3];
    v86 = v101;
    *(&v112 + 1) = v101;
    *&v113 = v109;
    *(&v113 + 1) = 1;
    LOBYTE(v114) = 0;
    *(&v114 + 1) = *v130;
    DWORD1(v114) = *&v130[3];
    v87 = v97;
    *(&v114 + 1) = v97;
    v88 = v99;
    v89 = v96;
    *&v115 = v99;
    *(&v115 + 1) = v96;
    v116 = 0x3FE0000000000000;
    v90 = v115;
    v91 = v98;
    *(v98 + 80) = 0x3FE0000000000000;
    v92 = v113;
    v91[3] = v114;
    v91[4] = v90;
    v93 = v112;
    *v91 = v111;
    v91[1] = v93;
    v91[2] = v92;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD98, &qword_1BE0E5228);
    sub_1BD0DE19C(v84, v91 + *(v94 + 48), &qword_1EBD4BD90, &qword_1BE0E5190);
    sub_1BD0DE19C(&v111, &v117, &qword_1EBD4BDA0, &qword_1BE0E5230);
    sub_1BD0DE53C(v60, &qword_1EBD4BD90, &qword_1BE0E5190);
    sub_1BD0DE53C(v84, &qword_1EBD4BD90, &qword_1BE0E5190);
    v117 = v85;
    v118 = v110;
    v119 = v108;
    *v120 = *v131;
    *&v120[3] = *&v131[3];
    v121 = v86;
    v122 = v109;
    v123 = 1;
    v124 = 0;
    *v125 = *v130;
    *&v125[3] = *&v130[3];
    v126 = v87;
    v127 = v88;
    v128 = v89;
    v129 = 0x3FE0000000000000;
    return sub_1BD0DE53C(&v117, &qword_1EBD4BDA0, &qword_1BE0E5230);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5B4E60()
{
  KeyPath = swift_getKeyPath();
  sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel, &unk_1BE0E508C);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return *(v0 + 24);
}

uint64_t sub_1BD5B4F00@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = v1;
  sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel, &unk_1BE0E508C);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
  swift_beginAccess();
  return sub_1BD0DE19C(v13 + v11, a1, &qword_1EBD4BD58, &qword_1BE0E5118);
}

uint64_t sub_1BD5B4FD8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1BE0528A4();
  v2[7] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD5B5070, v4, v3);
}

uint64_t sub_1BD5B5070()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD88, &qword_1BE0E5180);
  sub_1BE0516A4();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1BD5B5130;

  return sub_1BD5B52D4();
}

uint64_t sub_1BD5B5130()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 72);
  v11 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B5274, v11, v10);
}

uint64_t sub_1BD5B5274(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 56), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD5B52D4()
{
  v1[3] = v0;
  v2 = sub_1BE04D214();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_1BE0528A4();
  v1[7] = sub_1BE052894();
  v4 = sub_1BE052844();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD5B53C8, v4, v3);
}

uint64_t sub_1BD5B53C8()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BD5B53EC, v1, 0);
}

uint64_t sub_1BD5B53EC()
{
  v1 = *(v0 + 80);
  sub_1BD5B81CC(*(v0 + 24), v1, &off_1F3BB0030);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B5464, v1, 0);
}

uint64_t sub_1BD5B5464()
{
  *(v0 + 112) = sub_1BD9FBA80();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B54CC, v1, v2);
}

uint64_t sub_1BD5B54CC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);
  if (*(v2 + 24) != v1)
  {
    KeyPath = swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    *(v0 + 16) = v2;
    sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel, &unk_1BE0E508C);
    sub_1BE04B584();
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
  }

  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_1BD5B5634;

  return sub_1BD9FDE08();
}

uint64_t sub_1BD5B5634()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[8];
    v4 = v2[9];

    return MEMORY[0x1EEE6DFA0](sub_1BD5B5924, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[13] = v5;
    *v5 = v2;
    v5[1] = sub_1BD5B579C;

    return sub_1BD5B6168();
  }
}

uint64_t sub_1BD5B579C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B58BC, v3, v2);
}

uint64_t sub_1BD5B58BC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 56), a2, a3, a4, a5, a6, a7, a8;

  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD5B5924(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 96);
  *(v8 + 56), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D114();
  v10 = v9;
  v11 = sub_1BE04D204();
  v12 = sub_1BE052C34();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v8 + 96);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v14;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_1BD026000, v11, v12, "Failed to setup spending summaries cell with error: %@.", v15, 0xCu);
    sub_1BD0DE53C(v16, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v16, -1, -1);
    MEMORY[0x1BFB45F20](v15, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 40) + 8))(*(v8 + 48), *(v8 + 32));

  v19 = *(v8 + 8);

  return v19();
}

uint64_t sub_1BD5B5AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE04AF64();
  sub_1BD5B8158(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  if ((sub_1BE052334() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  if ((sub_1BE052334() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1BD4001A4(v12, v13);
}

void sub_1BD5B5BDC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel, &unk_1BE0E508C);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + 24);
}

void sub_1BD5B5C84(unsigned __int8 a1)
{
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel, &unk_1BE0E508C);
    sub_1BE04B584();
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD5B5D8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel, &unk_1BE0E508C);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v12, a2, &qword_1EBD4BD58, &qword_1BE0E5118);
}

uint64_t sub_1BD5B5E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58, &qword_1BE0E5118);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BD0DE19C(a1, &v6 - v3, &qword_1EBD4BD58, &qword_1BE0E5118);
  return sub_1BD5B5F10(v4);
}

uint64_t sub_1BD5B5F10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58, &qword_1BE0E5118);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v6, v5, &qword_1EBD4BD58, &qword_1BE0E5118);
  v7 = sub_1BD5B84CC(v5, a1);
  sub_1BD0DE53C(v5, &qword_1EBD4BD58, &qword_1BE0E5118);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v17[-2] = v1;
    v17[-1] = a1;
    v17[2] = v1;
    sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel, &unk_1BE0E508C);
    sub_1BE04B584();
    KeyPath, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    swift_beginAccess();
    sub_1BD5B8870(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1BD0DE53C(a1, &qword_1EBD4BD58, &qword_1BE0E5118);
}

uint64_t sub_1BD5B60FC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData;
  swift_beginAccess();
  sub_1BD5B8870(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1BD5B6168()
{
  v1[4] = v0;
  v2 = sub_1BE04D214();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_1BE04B2D4();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0, &unk_1BE0C7D50);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  v1[14] = swift_task_alloc();
  sub_1BE0528A4();
  v1[15] = sub_1BE052894();
  v5 = sub_1BE052844();
  v1[16] = v5;
  v1[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD5B6360, v5, v4);
}

uint64_t sub_1BD5B6360()
{
  v1 = v0[4];
  KeyPath = swift_getKeyPath();
  v0[18] = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel___observationRegistrar;
  v0[2] = v1;
  v0[19] = sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel, &unk_1BE0E508C);
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = *(v1 + 24);
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_1BD5B6484;
  v13 = v0[13];
  v12 = v0[14];

  return sub_1BD5B6BC4(v12, v13, v10);
}

uint64_t sub_1BD5B6484()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B65A4, v3, v2);
}

uint64_t sub_1BD5B65A4()
{
  v1 = v0[9];
  v2 = v0[4];
  KeyPath = swift_getKeyPath();
  v0[3] = v2;
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = qword_1E80100F8[*(v2 + 24)];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[8];
  v15 = v0[9];
  (*(v1 + 104))(v13, *v11, v14);
  (*(v15 + 32))(v12, v13, v14);
  v16 = swift_task_alloc();
  v0[21] = v16;
  *v16 = v0;
  v16[1] = sub_1BD5B66E0;
  v18 = v0[13];
  v17 = v0[14];
  v20 = v0[11];
  v19 = v0[12];

  return sub_1BD9FC674(v19, v17, v18, v20);
}

uint64_t sub_1BD5B66E0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  (*(v2[9] + 8))(v2[11], v2[8]);
  v3 = v2[17];
  v4 = v2[16];
  if (v0)
  {
    v5 = sub_1BD5B69C8;
  }

  else
  {
    v5 = sub_1BD5B6868;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD5B6868(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 112);
  v11 = *(v8 + 96);
  v10 = *(v8 + 104);
  v12 = *(v8 + 32);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  v13 = swift_task_alloc();
  v13[2] = v12;
  v13[3] = v9;
  v13[4] = v11;
  v14 = sub_1BE051D74();
  sub_1BE04E7D4();
  v14, v15, v16, v17, v18, v19, v20, v21;

  sub_1BD0DE53C(v10, &qword_1EBD402D0, &unk_1BE0C7D50);
  sub_1BD5B88FC(v11, type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model);
  sub_1BD0DE53C(v9, &qword_1EBD38DB8, &unk_1BE0BD340);

  v22 = *(v8 + 8);

  return v22();
}

uint64_t sub_1BD5B69C8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 176);
  v10 = *(v8 + 112);
  v11 = *(v8 + 104);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD0DE53C(v11, &qword_1EBD402D0, &unk_1BE0C7D50);
  sub_1BD0DE53C(v10, &qword_1EBD38DB8, &unk_1BE0BD340);
  sub_1BE04D114();
  v12 = v9;
  v13 = sub_1BE04D204();
  v14 = sub_1BE052C34();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v8 + 176);
  if (v15)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v16;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1BD026000, v13, v14, "Failed to reload spending summaries cell with error: %@.", v17, 0xCu);
    sub_1BD0DE53C(v18, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 48) + 8))(*(v8 + 56), *(v8 + 40));

  v21 = *(v8 + 8);

  return v21();
}

uint64_t sub_1BD5B6BC4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 176) = a3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD402D0, &unk_1BE0C7D50);
  *(v4 + 40) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  sub_1BE0528A4();
  *(v4 + 72) = sub_1BE052894();
  v7 = sub_1BE052844();
  *(v4 + 80) = v7;
  *(v4 + 88) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD5B6D04, v7, v6);
}

uint64_t sub_1BD5B6D04()
{
  v1 = *(v0 + 176);
  v2 = *(*(v0 + 32) + 16);
  *(v0 + 96) = v2;
  if (v1)
  {
    if (v1 == 1)
    {
      v3 = sub_1BD5B7060;
    }

    else
    {
      v3 = sub_1BD5B7368;
    }
  }

  else
  {
    v3 = sub_1BD5B6D58;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1BD5B6D58()
{
  v1 = (v0[12] + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v2 = *v1;
  v0[13] = *v1;
  v3 = v1[1];
  v0[14] = v3;
  v4 = v1[2];
  v0[15] = v4;
  sub_1BD298E60(v2, v3, v4);
  v5 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1BD5B6DE4, v5, v6);
}

void sub_1BD5B6DE4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 104);
  if (v9)
  {
    v10 = *(v8 + 120);
    *(v8 + 112), a2, a3, a4, a5, a6, a7, a8;
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(*(v8 + 56) + 56);
  v18(*(v8 + 24), 1, 1, *(v8 + 48));
  v26 = v9[2];
  v27 = v26 - 2;
  if (v26 >= 2)
  {
    *(v8 + 72), v19, v20, v21, v22, v23, v24, v25;
    if (v26 <= v9[2])
    {
      v36 = *(v8 + 56);
      v37 = *(v8 + 40);
      v50 = *(v8 + 48);
      v38 = *(v8 + 24);
      v39 = v26 - 1;
      v40 = v9 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
      v41 = *(v36 + 72);
      sub_1BD0DE19C(&v40[v41 * v39], *(v8 + 64), &qword_1EBD38DB8, &unk_1BE0BD340);
      sub_1BD0DE19C(&v40[v41 * v27], v37, &qword_1EBD38DB8, &unk_1BE0BD340);
      v9, v42, v43, v44, v45, v46, v47, v48;
      sub_1BD0DE53C(v38, &qword_1EBD402D0, &unk_1BE0C7D50);
      v18(v37, 0, 1, v50);
      sub_1BD0DE204(v37, v38, &qword_1EBD402D0, &unk_1BE0C7D50);
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (!v26)
  {
    sub_1BE053994();
    return;
  }

  *(v8 + 72), v19, v20, v21, v22, v23, v24, v25;
  if (!v9[2])
  {
    goto LABEL_15;
  }

  v28 = *(*(v8 + 56) + 80);
  sub_1BD0DE19C(v9 + ((v28 + 32) & ~v28), *(v8 + 64), &qword_1EBD38DB8, &unk_1BE0BD340);
  v9, v29, v30, v31, v32, v33, v34, v35;
LABEL_10:
  sub_1BD0DE204(*(v8 + 64), *(v8 + 16), &qword_1EBD38DB8, &unk_1BE0BD340);

  v49 = *(v8 + 8);

  v49();
}

uint64_t sub_1BD5B7060()
{
  v1 = (v0[12] + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v2 = *v1;
  v0[16] = *v1;
  v3 = v1[1];
  v0[17] = v3;
  v4 = v1[2];
  v0[18] = v4;
  sub_1BD298E60(v2, v3, v4);
  v5 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1BD5B70EC, v5, v6);
}

void sub_1BD5B70EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 128);
  if (v9)
  {
    v11 = *(v8 + 136);
    v10 = *(v8 + 144);
    v9, a2, a3, a4, a5, a6, a7, a8;
    v10, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(*(v8 + 56) + 56);
  v19(*(v8 + 24), 1, 1, *(v8 + 48));
  v27 = v11[2];
  v28 = v27 - 2;
  if (v27 >= 2)
  {
    *(v8 + 72), v20, v21, v22, v23, v24, v25, v26;
    if (v27 <= v11[2])
    {
      v37 = *(v8 + 56);
      v38 = *(v8 + 40);
      v51 = *(v8 + 48);
      v39 = *(v8 + 24);
      v40 = v27 - 1;
      v41 = v11 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v42 = *(v37 + 72);
      sub_1BD0DE19C(&v41[v42 * v40], *(v8 + 64), &qword_1EBD38DB8, &unk_1BE0BD340);
      sub_1BD0DE19C(&v41[v42 * v28], v38, &qword_1EBD38DB8, &unk_1BE0BD340);
      v11, v43, v44, v45, v46, v47, v48, v49;
      sub_1BD0DE53C(v39, &qword_1EBD402D0, &unk_1BE0C7D50);
      v19(v38, 0, 1, v51);
      sub_1BD0DE204(v38, v39, &qword_1EBD402D0, &unk_1BE0C7D50);
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (!v27)
  {
    sub_1BE053994();
    return;
  }

  *(v8 + 72), v20, v21, v22, v23, v24, v25, v26;
  if (!v11[2])
  {
    goto LABEL_15;
  }

  v29 = *(*(v8 + 56) + 80);
  sub_1BD0DE19C(v11 + ((v29 + 32) & ~v29), *(v8 + 64), &qword_1EBD38DB8, &unk_1BE0BD340);
  v11, v30, v31, v32, v33, v34, v35, v36;
LABEL_10:
  sub_1BD0DE204(*(v8 + 64), *(v8 + 16), &qword_1EBD38DB8, &unk_1BE0BD340);

  v50 = *(v8 + 8);

  v50();
}

uint64_t sub_1BD5B7368()
{
  v1 = (v0[12] + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_availableRanges);
  v2 = *v1;
  v0[19] = *v1;
  v3 = v1[1];
  v0[20] = v3;
  v4 = v1[2];
  v0[21] = v4;
  sub_1BD298E60(v2, v3, v4);
  v5 = v0[10];
  v6 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1BD5B73F4, v5, v6);
}

void sub_1BD5B73F4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 152);
  if (v9)
  {
    v10 = *(v8 + 160);
    v11 = *(v8 + 168);
    v9, a2, a3, a4, a5, a6, a7, a8;
    v10, v12, v13, v14, v15, v16, v17, v18;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(*(v8 + 56) + 56);
  v19(*(v8 + 24), 1, 1, *(v8 + 48));
  v27 = v11[2];
  v28 = v27 - 2;
  if (v27 >= 2)
  {
    *(v8 + 72), v20, v21, v22, v23, v24, v25, v26;
    if (v27 <= v11[2])
    {
      v37 = *(v8 + 56);
      v38 = *(v8 + 40);
      v51 = *(v8 + 48);
      v39 = *(v8 + 24);
      v40 = v27 - 1;
      v41 = v11 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
      v42 = *(v37 + 72);
      sub_1BD0DE19C(&v41[v42 * v40], *(v8 + 64), &qword_1EBD38DB8, &unk_1BE0BD340);
      sub_1BD0DE19C(&v41[v42 * v28], v38, &qword_1EBD38DB8, &unk_1BE0BD340);
      v11, v43, v44, v45, v46, v47, v48, v49;
      sub_1BD0DE53C(v39, &qword_1EBD402D0, &unk_1BE0C7D50);
      v19(v38, 0, 1, v51);
      sub_1BD0DE204(v38, v39, &qword_1EBD402D0, &unk_1BE0C7D50);
      goto LABEL_10;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (!v27)
  {
    sub_1BE053994();
    return;
  }

  *(v8 + 72), v20, v21, v22, v23, v24, v25, v26;
  if (!v11[2])
  {
    goto LABEL_15;
  }

  v29 = *(*(v8 + 56) + 80);
  sub_1BD0DE19C(v11 + ((v29 + 32) & ~v29), *(v8 + 64), &qword_1EBD38DB8, &unk_1BE0BD340);
  v11, v30, v31, v32, v33, v34, v35, v36;
LABEL_10:
  sub_1BD0DE204(*(v8 + 64), *(v8 + 16), &qword_1EBD38DB8, &unk_1BE0BD340);

  v50 = *(v8 + 8);

  v50();
}

uint64_t sub_1BD5B7670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58, &qword_1BE0E5118);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v16 - v6;
  sub_1BD0DE19C(a2, v16 - v6, &qword_1EBD38DB8, &unk_1BE0BD340);
  v8 = type metadata accessor for FinanceKitSpendingSummaryDataProvider.Model(0);
  v9 = sub_1BE0493A4();
  v11 = v10;
  v12 = *(a3 + *(v8 + 28));
  v13 = type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData(0);
  v14 = &v7[*(v13 + 20)];
  *v14 = v9;
  v14[1] = v11;
  *&v7[*(v13 + 24)] = v12;
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  sub_1BE048C84();
  return sub_1BD5B5F10(v7);
}

uint64_t sub_1BD5B77B4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD0DE53C(v8 + OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel__graphData, &qword_1EBD4BD58, &qword_1BE0E5118);
  v9 = OBJC_IVAR____TtCV9PassKitUIP33_41F526504C3CD24CA22831412738213E29FinanceKitSpendingSummaryCell9ViewModel___observationRegistrar;
  v10 = sub_1BE04B5D4();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

void sub_1BD5B78A0(uint64_t a1)
{
  sub_1BD5B7AC4(319, &qword_1EBD4BD38, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BE04B5D4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD5B7A08(uint64_t a1)
{
  sub_1BD0F5C4C(319);
  if (v1 <= 0x3F)
  {
    sub_1BD5B7AC4(319, &qword_1EBD4B270, type metadata accessor for FinanceKitDailyCategorySpendingAggregator.PerCalendarUnitCategorySpending, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD5B7AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BD5B7B44(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 64) = a1;
  sub_1BE0528A4();
  *(v2 + 32) = sub_1BE052894();
  v4 = sub_1BE052844();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD5B7BE0, v4, v3);
}

uint64_t sub_1BD5B7BE0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 64);
  if (*(v1 + 24) != v2)
  {
    KeyPath = swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    *(v0 + 16) = v1;
    sub_1BD5B8158(&qword_1EBD4BD50, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel, &unk_1BE0E508C);
    sub_1BE04B584();
    KeyPath, v5, v6, v7, v8, v9, v10, v11;
  }

  v12 = swift_task_alloc();
  *(v0 + 56) = v12;
  *v12 = v0;
  v12[1] = sub_1BD5B7D48;

  return sub_1BD5B6168();
}

uint64_t sub_1BD5B7D48()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B7E68, v3, v2);
}

uint64_t sub_1BD5B7E68(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  v9 = *(v8 + 8);

  return v9();
}

uint64_t sub_1BD5B7ECC()
{
  v0[2] = sub_1BE0528A4();
  v0[3] = sub_1BE052894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BD5B7F78;

  return sub_1BD5B6168();
}

uint64_t sub_1BD5B7F78()
{

  v1 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD440A84, v1, v0);
}

uint64_t sub_1BD5B80B4(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD5B7B44(a1);
}

uint64_t sub_1BD5B8158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD5B81CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_observers;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v29 = a2;
  if (v7 >> 62)
  {
LABEL_19:
    v8 = sub_1BE053704();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1BE048C84();
  if (v8)
  {
    v16 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1BFB40900](v16, v7);
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v16 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v17 = *(v7 + 8 * v16 + 32);
        sub_1BE048964();
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_14;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v17, v20, v21, v22, v23, v24, v25, v26;
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
          v7, v9, v10, v11, v12, v13, v14, v15;
          return;
        }
      }

      ++v16;
    }

    while (v18 != v8);
  }

  v7, v9, v10, v11, v12, v13, v14, v15;
  type metadata accessor for WeakObserver();
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v28 = swift_beginAccess();
  MEMORY[0x1BFB3F7A0](v28);
  if (*((*(v29 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v29 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BE052774();
  }

  sub_1BE0527C4();
  swift_endAccess();
}

void sub_1BD5B83C4(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_7;
    }

    v1 = sub_1BE052404();
    v2 = PKLocalizedBankConnectString(v1);

    if (v2)
    {
LABEL_8:
      sub_1BE052434();

      return;
    }

    __break(1u);
  }

  v3 = sub_1BE052404();
  v2 = PKLocalizedBankConnectString(v3);

  if (v2)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v4 = sub_1BE052404();
  v2 = PKLocalizedBankConnectString(v4);

  if (v2)
  {
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1BD5B84CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58, &qword_1BE0E5118);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD60, &qword_1BE0E5148);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v24 - v12, &qword_1EBD4BD58, &qword_1BE0E5118);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD4BD58, &qword_1BE0E5118);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD4BD58, &qword_1BE0E5118);
      v17 = 0;
      return v17 & 1;
    }

LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD4BD60, &qword_1BE0E5148);
    v17 = 1;
    return v17 & 1;
  }

  sub_1BD0DE19C(v13, v10, &qword_1EBD4BD58, &qword_1BE0E5118);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1BD5B88FC(v10, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData);
    goto LABEL_6;
  }

  sub_1BD5B89F4(&v13[v15], v7, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData);
  sub_1BE04AF64();
  sub_1BD5B8158(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  if (sub_1BE052334() & 1) != 0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB8, &unk_1BE0BD340), (sub_1BE052334()) && ((v18 = *(v4 + 20), v19 = *&v10[v18], v20 = *&v10[v18 + 8], v21 = &v7[v18], v19 == *v21) ? (v22 = v20 == *(v21 + 1)) : (v22 = 0), v22 || (sub_1BE053B84()))
  {
    v17 = sub_1BD4001A4(*&v10[*(v4 + 24)], *&v7[*(v4 + 24)]) ^ 1;
  }

  else
  {
    v17 = 1;
  }

  sub_1BD5B88FC(v7, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData);
  sub_1BD5B88FC(v10, type metadata accessor for FinanceKitSpendingSummaryCell.ViewModel.GraphData);
  sub_1BD0DE53C(v13, &qword_1EBD4BD58, &qword_1BE0E5118);
  return v17 & 1;
}

uint64_t sub_1BD5B8870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4BD58, &qword_1BE0E5118);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5B88FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD5B895C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD5B4FD8(v2, v3);
}

uint64_t sub_1BD5B89F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD5B8A64()
{
  result = qword_1EBD4BDB0;
  if (!qword_1EBD4BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BDB0);
  }

  return result;
}

unint64_t sub_1BD5B8AB8()
{
  result = qword_1EBD4BDC0;
  if (!qword_1EBD4BDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BD80, &qword_1BE0E5178);
    sub_1BD5B8B74();
    sub_1BD5B8158(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BDC0);
  }

  return result;
}

unint64_t sub_1BD5B8B74()
{
  result = qword_1EBD4BDC8;
  if (!qword_1EBD4BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4BD70, &qword_1BE0E5158);
    sub_1BD0DE4F4(&unk_1EBD4BDD0, &qword_1EBD4BD68, &qword_1BE0E5150, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4BDC8);
  }

  return result;
}

id sub_1BD5B8C48(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_viewController] = 0;
  *&v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_identifier];
  *v6 = 0xD00000000000001BLL;
  *(v6 + 1) = 0x80000001BE130350;
  *&v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_product] = a2;
  *&v2[OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_selectedProduct] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = a2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1BD5B8DF8(void (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v22 = a2;
  v23 = a1;
  v3 = sub_1BE04BA14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BAC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BC34();
  v11 = *(v2 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_product);
  result = [v11 configuration];
  if (result)
  {
    v13 = result;
    v14 = [result type];

    if (v14 == 3)
    {
      sub_1BE04BA24();
      if ((*(v4 + 88))(v6, v3) != *MEMORY[0x1E69B8020])
      {
        (*(v4 + 8))(v6, v3);
        v18 = 0xD000000000000018;
        v19 = 0x80000001BE130390;
        goto LABEL_9;
      }

      (*(v4 + 96))(v6, v3);
      v15 = sub_1BE04B9D4();
      (*(*(v15 - 8) + 8))(v6, v15);
      v16 = sub_1BE04BBD4();
      v17 = [v16 isWatchSupportedForProduct_];

      if (v17)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
LABEL_10:
        v23(v18, v19, 0, v20);
        return (*(v8 + 8))(v10, v7);
      }

      v21 = "product doesn't support watch";
    }

    else
    {
      v21 = "product not a transit product";
    }

    v19 = (v21 - 32) | 0x8000000000000000;
    v18 = 0xD00000000000001DLL;
LABEL_9:
    v20 = 1;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1BD5B90E8(void (*a1)(void), void *a2)
{
  v3 = v2;
  v6 = sub_1BE04B944();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BAC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = [objc_opt_self() watchWebServiceForIssuerProvisioning];
  if (v44)
  {
    v42 = a1;
    v43 = a2;
    v14 = sub_1BE04BBD4();
    sub_1BE04BC34();
    v41 = sub_1BE04B9A4();
    (*(v11 + 8))(v13, v10);
    v15 = *(v3 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_product);
    sub_1BE04BB94();
    v16 = sub_1BE04B8E4();
    (*(v7 + 8))(v9, v6);
    v17 = objc_allocWithZone(PKPaymentSetupDevicePickerViewController);
    v18 = v44;
    v19 = [v17 initWithProvisioningController:v14 context:v41 setupDelegate:0 product:v15 webService:v16 nanoWebService:v44];

    v20 = *(v3 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_viewController);
    *(v3 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_viewController) = v19;
    v21 = v19;

    if (v21)
    {
      [v21 setFlowDelegate_];
      sub_1BE052434();
      v23 = v22;
      v24 = sub_1BE04BB74();
      v23, v25, v26, v27, v28, v29, v30, v31;
      [v21 setReporter_];

      aBlock[4] = v42;
      v46 = v43;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD976224;
      aBlock[3] = &block_descriptor_133;
      v32 = _Block_copy(aBlock);
      v33 = v46;
      sub_1BE048964();
      v33, v34, v35, v36, v37, v38, v39, v40;
      [v21 preflightWithCompletion_];
      _Block_release(v32);
    }

    else
    {
      (v42)(0);
    }
  }

  else
  {
    a1();
  }
}

uint64_t sub_1BD5B9440()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD5B947C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD5B94D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_viewController);
  v2 = v1;
  return v1;
}

id sub_1BD5B9594(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0, &unk_1BE0E7EE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1BE04B944();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = a1;
  sub_1BE04BBE4();
  v11 = sub_1BE04B8D4();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  result = [v10 webService];
  if (result)
  {
    sub_1BE04B914();
    sub_1BE04BBA4();
    v13 = *(v2 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_selectedProduct);
    *(v3 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_selectedProduct) = a2;
    v14 = a2;

    v15 = v3 + OBJC_IVAR____TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v16 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v3, &off_1F3BB0098, ObjectType, v16);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5B97B0(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  sub_1BE052294();
  return sub_1BE053D64();
}

uint64_t sub_1BD5B9814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD5BBDFC();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1BD5B9860@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BD5BB92C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1BD5B9894(uint64_t a1)
{
  v2 = sub_1BD5BBDFC();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1BD5B98D0(uint64_t a1)
{
  v2 = sub_1BD5BBDFC();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1BD5B9928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD5BBDFC();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

char *PKDataReleaseViewController.init(request:delegate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_dataReleaseDelegate;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_dataReleasePresentationController;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_exclusionRect];
  v9 = *(MEMORY[0x1E695F050] + 16);
  *v8 = *MEMORY[0x1E695F050];
  *(v8 + 1) = v9;
  v10 = [objc_allocWithZone(PKDataReleaseContentViewController) initWithRequest_];
  if (v10)
  {
    *&v3[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController] = v10;
    v11 = v10;
    swift_unknownObjectWeakAssign();
    v27.receiver = v3;
    v27.super_class = ObjectType;
    v12 = v11;
    v13 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
    v14 = *&v13[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController];
    v15 = v13;
    [v14 setDelegate_];
    [v15 setModalPresentationStyle_];
    [v15 setTransitioningDelegate_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BE0B7020;
    *(v16 + 32) = v12;
    sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258);
    v17 = v12;
    v18 = sub_1BE052724();
    v16, v19, v20, v21, v22, v23, v24, v25;
    [v15 setViewControllers_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1BD0D4534(&v3[v6]);
    MEMORY[0x1BFB46050](&v3[v7]);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v13;
}

id PKDataReleaseViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PKDataReleaseViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_exclusionRect);
  v2 = *(MEMORY[0x1E695F050] + 16);
  *v1 = *MEMORY[0x1E695F050];
  v1[1] = v2;
  sub_1BE053994();
  __break(1u);
}

Swift::Void __swiftcall PKDataReleaseViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  if ([objc_opt_self() userIntentStyle] == 1)
  {
    sub_1BD5B9E1C();
  }
}

void sub_1BD5B9E1C()
{
  if (!PKUserIntentIsAvailable())
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if ([*&v0[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_contentViewController] shouldShowPhysicalButton])
  {
    v1 = [v0 isBeingDismissed];
    v2 = &Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    if (*&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView])
    {
      v3 = v1 ^ 1;
      if ([*&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView] isAnimating] == v3)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if ((v1 & 1) == 0)
    {
      v3 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    v2 = &Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    v4 = *&Strong[OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView];
    if (v4 && ([v4 isAnimating] & 1) != 0)
    {
      v3 = 0;
LABEL_13:
      [*v2 setAnimating_];
      sub_1BD5BA1C8();
    }
  }

LABEL_14:
}

Swift::Void __swiftcall PKDataReleaseViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, a1);
  if ([v1 isBeingDismissed])
  {
    sub_1BD5B9E1C();
  }
}

id PKDataReleaseViewController._backgroundColorForModalFormSheet.getter()
{
  v0 = [objc_opt_self() blackColor];
  IsAvailable = PKUserIntentIsAvailable();
  v2 = 0.4;
  if (IsAvailable)
  {
    v2 = 0.52;
  }

  v3 = [v0 colorWithAlphaComponent_];

  return v3;
}

void sub_1BD5BA1C8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_physicalButtonView);
    if (v2 && [v2 isAnimating])
    {
      v3 = [objc_opt_self() mainScreen];
      v4 = [v3 fixedCoordinateSpace];

      [v4 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      LAUIPhysicalButtonNormalizedFrame();
      v14.n128_f64[0] = v6 + v10 * v13;
      v16.n128_f64[0] = v8 + v12 * v15;
      v18.n128_f64[0] = v10 * v17;
      v20.n128_u64[0] = 26.0;
      v21.n128_f64[0] = v12 * v19 + 26.0;
      PKRectRoundToPixel(v14, v16, v18, v21, v20);
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = [v0 view];
      if (!v30)
      {
        __break(1u);
        return;
      }

      v31 = v30;
      [v30 convertRect:v4 fromCoordinateSpace:{v23, v25, v27, v29}];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      swift_unknownObjectRelease();
    }

    else
    {
      v33 = *MEMORY[0x1E695F050];
      v35 = *(MEMORY[0x1E695F050] + 8);
      v37 = *(MEMORY[0x1E695F050] + 16);
      v39 = *(MEMORY[0x1E695F050] + 24);
    }

    v40 = &v0[OBJC_IVAR____TtC9PassKitUI27PKDataReleaseViewController_exclusionRect];
    *v40 = v33;
    *(v40 + 1) = v35;
    *(v40 + 2) = v37;
    *(v40 + 3) = v39;
    sub_1BD5BA390();
  }
}

void sub_1BD5BA390()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    if (*(Strong + OBJC_IVAR____TtCC9PassKitUI27PKDataReleaseViewControllerP33_6C482878A6DF466642FA70CF642E4E1022PresentationController_isPresentationTransitionFinished) == 1)
    {
      v1 = swift_allocObject();
      v1[2] = v27;
      v2 = swift_allocObject();
      v2[2] = sub_1BD5BBE6C;
      v2[3] = v1;
      aBlock[4] = sub_1BD267328;
      v29 = v2;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD5B974C;
      aBlock[3] = &block_descriptor_33_3;
      v3 = _Block_copy(aBlock);
      v4 = v29;
      v5 = v27;
      sub_1BE048964();
      v4, v6, v7, v8, v9, v10, v11, v12;
      [v5 animateChanges_];

      _Block_release(v3);
      LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();
      v1, v13, v14, v15, v16, v17, v18, v19;
      v2, v20, v21, v22, v23, v24, v25, v26;
      if (v3)
      {
        __break(1u);
      }
    }

    else
    {
      [Strong invalidateDetents];
    }
  }
}