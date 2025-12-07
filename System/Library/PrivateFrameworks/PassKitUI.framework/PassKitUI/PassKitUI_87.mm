void sub_1BD933D50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a4;
  v46 = type metadata accessor for UnifiedMerchantTokenData(0);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v43 = a2;
  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v18 = a3 - v43;
  if (a3 - v43 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_72;
  }

  v19 = (a2 - a1) / v17;
  v50 = a1;
  v49 = v47;
  if (v19 >= v18 / v17)
  {
    v22 = v18 / v17 * v17;
    if (v47 < v43 || v43 + v22 <= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v47 != v43)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = v47 + v22;
    if (v22 >= 1)
    {
      v29 = -v17;
      v30 = v47 + v22;
      v42 = -v17;
      do
      {
        v40 = v28;
        v31 = v43;
        v43 += v29;
        while (1)
        {
          if (v31 <= a1)
          {
            v50 = v31;
            v48 = v40;
            goto LABEL_69;
          }

          v32 = a3;
          v41 = v28;
          v33 = v42;
          v34 = v30 + v42;
          v35 = v44;
          sub_1BD930FE0(v30 + v42, v44, type metadata accessor for UnifiedMerchantTokenData);
          v36 = v45;
          sub_1BD930FE0(v43, v45, type metadata accessor for UnifiedMerchantTokenData);
          v37 = *(v35 + 32) == *(v36 + 32) && *(v35 + 40) == *(v36 + 40);
          v38 = v37 ? 0 : sub_1BE053B84();
          a3 = v32 + v33;
          sub_1BD935C74(v45, type metadata accessor for UnifiedMerchantTokenData);
          sub_1BD935C74(v44, type metadata accessor for UnifiedMerchantTokenData);
          if (v38)
          {
            break;
          }

          v28 = v30 + v33;
          if (v32 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v32 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v30 += v33;
          if (v34 <= v47)
          {
            v43 = v31;
            goto LABEL_68;
          }
        }

        if (v32 < v31 || a3 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
          v28 = v41;
        }

        else
        {
          v28 = v41;
          if (v32 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v29 = v42;
      }

      while (v30 > v47);
    }

LABEL_68:
    v50 = v43;
    v48 = v28;
  }

  else
  {
    v20 = v19 * v17;
    if (v47 < a1 || a1 + v20 <= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v21 = v43;
    }

    else
    {
      v21 = v43;
      if (v47 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v23 = v47 + v20;
    v48 = v47 + v20;
    if (v20 >= 1 && v21 < a3)
    {
      while (1)
      {
        sub_1BD930FE0(v21, v15, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD930FE0(v47, v12, type metadata accessor for UnifiedMerchantTokenData);
        if (*(v15 + 4) == *(v12 + 4) && *(v15 + 5) == *(v12 + 5))
        {
          break;
        }

        v26 = sub_1BE053B84();
        sub_1BD935C74(v12, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD935C74(v15, type metadata accessor for UnifiedMerchantTokenData);
        if ((v26 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v21 || a1 >= v21 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v21 += v17;
LABEL_38:
        a1 += v17;
        v50 = a1;
        if (v47 >= v23 || v21 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_1BD935C74(v12, type metadata accessor for UnifiedMerchantTokenData);
      sub_1BD935C74(v15, type metadata accessor for UnifiedMerchantTokenData);
LABEL_30:
      v27 = v47 + v17;
      if (a1 < v47 || a1 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v47)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v49 = v27;
      v47 = v27;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_1BD935180(&v50, &v49, &v48, type metadata accessor for UnifiedMerchantTokenData);
}

void sub_1BD9342FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for UnifiedMerchantTokenData(0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v38 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v44 = v11;
  v16 = (a2 - a1) / v14;
  v53 = a1;
  v52 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a2;
    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = a4 + v18;
      v40 = v27;
      v41 = a4;
      do
      {
        v38 = v26;
        v29 = v43;
        v42 = v43;
        v43 += v27;
        while (1)
        {
          if (v29 <= a1)
          {
            v53 = v29;
            v51 = v38;
            goto LABEL_59;
          }

          v31 = a3;
          v39 = v26;
          a3 += v27;
          v32 = v28 + v27;
          v33 = v45;
          sub_1BD930FE0(v32, v45, type metadata accessor for UnifiedMerchantTokenData);
          v34 = v46;
          sub_1BD930FE0(v43, v46, type metadata accessor for UnifiedMerchantTokenData);
          v35 = *(v33 + 40);
          v49 = *(v33 + 32);
          v50 = v35;
          v36 = *(v34 + 40);
          v47 = *(v34 + 32);
          v48 = v36;
          sub_1BD0DDEBC();
          v37 = sub_1BE0535B4();
          sub_1BD935C74(v34, type metadata accessor for UnifiedMerchantTokenData);
          sub_1BD935C74(v33, type metadata accessor for UnifiedMerchantTokenData);
          if (v37 == -1)
          {
            break;
          }

          v26 = v32;
          if (v31 < v28 || a3 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = v32;
          v29 = v42;
          v30 = v32 > v41;
          v27 = v40;
          if (!v30)
          {
            v43 = v42;
            goto LABEL_58;
          }
        }

        if (v31 < v42 || a3 >= v42)
        {
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          v27 = v40;
        }

        else
        {
          v26 = v39;
          v27 = v40;
          if (v31 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v41);
    }

LABEL_58:
    v53 = v43;
    v51 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v17;
    v51 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = v46;
      do
      {
        v21 = a3;
        v22 = v45;
        sub_1BD930FE0(a2, v45, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD930FE0(a4, v20, type metadata accessor for UnifiedMerchantTokenData);
        v23 = *(v22 + 40);
        v49 = *(v22 + 32);
        v50 = v23;
        v24 = *(v20 + 40);
        v47 = *(v20 + 32);
        v48 = v24;
        sub_1BD0DDEBC();
        v25 = sub_1BE0535B4();
        sub_1BD935C74(v20, type metadata accessor for UnifiedMerchantTokenData);
        sub_1BD935C74(v22, type metadata accessor for UnifiedMerchantTokenData);
        if (v25 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v21;
          }

          else
          {
            a3 = v21;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v21;
          }

          else
          {
            a3 = v21;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v53 = a1;
      }

      while (a4 < v43 && a2 < a3);
    }
  }

LABEL_59:
  sub_1BD935180(&v53, &v52, &v51, type metadata accessor for UnifiedMerchantTokenData);
}

void sub_1BD93485C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178, &qword_1BE106238);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v108 = v105 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v112 = v105 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v113 = v105 - v17;
  v115 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  MEMORY[0x1EEE9AC00](v115);
  v19 = v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v114 = v105 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v116 = v105 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_65;
  }

  v28 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v27 != -1)
  {
    v29 = (a2 - a1) / v27;
    v125 = a1;
    v124 = a4;
    v105[1] = v4;
    if (v29 >= v28 / v27)
    {
      v31 = v28 / v27 * v27;
      if (a4 < a2 || a2 + v31 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v67 = a4 + v31;
      if (v31 >= 1)
      {
        v106 = a4;
        v107 = v11;
        v68 = -v27;
        v69 = a4 + v31;
        v117 = a1;
        v109 = v68;
        do
        {
          v105[0] = v67;
          v70 = a2;
          a2 += v68;
          v118 = a2;
          v111 = v70;
          while (1)
          {
            if (v70 <= a1)
            {
              v125 = v70;
              v123 = v105[0];
              goto LABEL_63;
            }

            v110 = v67;
            v71 = v68;
            v116 = v69;
            v112 = v69 + v68;
            v113 = a3;
            v72 = v114;
            sub_1BD930FE0(v69 + v68, v114, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            sub_1BD930FE0(a2, v19, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            v73 = v108;
            sub_1BD0DE19C(v72, v108, &qword_1EBD59178, &qword_1BE106238);
            v74 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
            v75 = *(*(v74 - 8) + 48);
            if (v75(v73, 1, v74) == 1)
            {
              goto LABEL_69;
            }

            v76 = v19;
            v77 = (v73 + *(v74 + 28));
            v78 = v73;
            v80 = *v77;
            v79 = v77[1];
            sub_1BE048C84();
            sub_1BD935C74(v78, type metadata accessor for MerchantTokenListViewModel.SectionCard);
            v121 = v80;
            v122 = v79;
            v81 = v107;
            sub_1BD0DE19C(v76, v107, &qword_1EBD59178, &qword_1BE106238);
            if (v75(v81, 1, v74) == 1)
            {
              goto LABEL_70;
            }

            v82 = v113;
            v83 = v113 + v71;
            v84 = (v81 + *(v74 + 28));
            v85 = *v84;
            v86 = v84[1];
            sub_1BE048C84();
            sub_1BD935C74(v81, type metadata accessor for MerchantTokenListViewModel.SectionCard);
            v119 = v85;
            v120 = v86;
            sub_1BD0DDEBC();
            v87 = sub_1BE0535B4();
            v79, v88, v89, v90, v91, v92, v93, v94;
            v86, v95, v96, v97, v98, v99, v100, v101;
            sub_1BD935C74(v76, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            sub_1BD935C74(v114, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
            a2 = v118;
            v102 = v106;
            v19 = v76;
            if (v87 == -1)
            {
              break;
            }

            v103 = v112;
            v67 = v112;
            a1 = v117;
            a3 = v83;
            if (v82 < v116 || v83 >= v116)
            {
              swift_arrayInitWithTakeFrontToBack();
              v68 = v109;
            }

            else
            {
              v104 = v82 == v116;
              v68 = v109;
              if (!v104)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v69 = v67;
            v70 = v111;
            if (v103 <= v102)
            {
              a2 = v111;
              goto LABEL_62;
            }
          }

          a1 = v117;
          a3 = v82 + v71;
          if (v82 < v111 || v83 >= v111)
          {
            swift_arrayInitWithTakeFrontToBack();
            v68 = v109;
            v67 = v110;
          }

          else
          {
            v104 = v82 == v111;
            v68 = v109;
            v67 = v110;
            if (!v104)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v69 = v116;
        }

        while (v116 > v102);
      }

LABEL_62:
      v125 = a2;
      v123 = v67;
    }

    else
    {
      v30 = v29 * v27;
      v111 = v24;
      if (a4 < a1 || a1 + v30 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v114 = a4 + v30;
      v123 = a4 + v30;
      if (v30 >= 1 && a2 < a3)
      {
        v109 = v27;
        v110 = a3;
        do
        {
          v117 = a1;
          v118 = a2;
          v33 = a2;
          v34 = v116;
          sub_1BD930FE0(v33, v116, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          v35 = v111;
          sub_1BD930FE0(a4, v111, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          v36 = v34;
          v37 = v113;
          sub_1BD0DE19C(v36, v113, &qword_1EBD59178, &qword_1BE106238);
          v38 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
          v39 = *(*(v38 - 8) + 48);
          if (v39(v37, 1, v38) == 1)
          {
            goto LABEL_67;
          }

          v40 = (v37 + *(v38 + 28));
          v41 = v37;
          v43 = *v40;
          v42 = v40[1];
          sub_1BE048C84();
          sub_1BD935C74(v41, type metadata accessor for MerchantTokenListViewModel.SectionCard);
          v121 = v43;
          v122 = v42;
          v44 = v112;
          sub_1BD0DE19C(v35, v112, &qword_1EBD59178, &qword_1BE106238);
          if (v39(v44, 1, v38) == 1)
          {
            goto LABEL_68;
          }

          v45 = (v44 + *(v38 + 28));
          v46 = *v45;
          v47 = v45[1];
          sub_1BE048C84();
          sub_1BD935C74(v44, type metadata accessor for MerchantTokenListViewModel.SectionCard);
          v119 = v46;
          v120 = v47;
          sub_1BD0DDEBC();
          v48 = sub_1BE0535B4();
          v42, v49, v50, v51, v52, v53, v54, v55;
          v47, v56, v57, v58, v59, v60, v61, v62;
          sub_1BD935C74(v35, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          sub_1BD935C74(v116, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          a2 = v118;
          if (v48 == -1)
          {
            v63 = v109;
            v64 = v110;
            v66 = v117;
            if (v117 < v118 || v117 >= v118 + v109)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v117 != v118)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v63;
          }

          else
          {
            v63 = v109;
            v64 = v110;
            v65 = a4 + v109;
            v66 = v117;
            if (v117 < a4 || v117 >= v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v117 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v124 = v65;
            a4 += v63;
          }

          a1 = v66 + v63;
          v125 = a1;
        }

        while (a4 < v114 && a2 < v64);
      }
    }

LABEL_63:
    sub_1BD935180(&v125, &v124, &v123, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
    return;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_1BD935180(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1BD935298(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49BE0, &qword_1BE0DFB00);
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

uint64_t sub_1BD935400(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1BE048C84();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59110, &qword_1BE1061A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59210, &qword_1BE1065D8);
  sub_1BD0DE4F4(&qword_1EBD59290, &qword_1EBD59110, &qword_1BE1061A8, MEMORY[0x1E69E6338]);
  sub_1BD935600();
  sub_1BD928A24(&qword_1EBD59298, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection, &unk_1BE1063E8);
  return sub_1BE0519D4();
}

unint64_t sub_1BD93557C()
{
  result = qword_1EBD59200;
  if (!qword_1EBD59200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD591F8, &qword_1BE1065D0);
    sub_1BD935600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59200);
  }

  return result;
}

unint64_t sub_1BD935600()
{
  result = qword_1EBD59208;
  if (!qword_1EBD59208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59210, &qword_1BE1065D8);
    sub_1BD0DE4F4(&qword_1EBD59218, &qword_1EBD59220, &qword_1BE1065E0, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59208);
  }

  return result;
}

uint64_t objectdestroyTm_113()
{
  v1 = type metadata accessor for MerchantTokenList(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v2[2], v10, v11, v12, v13, v14, v15, v16;
  v17 = v1[6];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD590E8, &qword_1BE106188);
  (*(*(v18 - 8) + 8))(v2 + v17, v18);
  v19 = (v2 + v1[7]);
  *v19, v20, v21, v22, v23, v24, v25, v26;
  v19[1], v27, v28, v29, v30, v31, v32, v33;
  v34 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40C30, &qword_1BE0C9228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = sub_1BE04E784();
    (*(*(v42 - 8) + 8))(v2 + v34, v42);
  }

  else
  {
    *(v2 + v34), v35, v36, v37, v38, v39, v40, v41;
  }

  *(v2 + v1[9] + 8), v43, v44, v45, v46, v47, v48, v49;
  *(v2 + v1[10] + 8), v50, v51, v52, v53, v54, v55, v56;

  return swift_deallocObject();
}

void sub_1BD935898(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for MerchantTokenList(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1BD92FD20(a1, a2, v6);
}

unint64_t sub_1BD935918()
{
  result = qword_1EBD59250;
  if (!qword_1EBD59250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD591D8, &qword_1BE1065A8);
    sub_1BD9359A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59250);
  }

  return result;
}

unint64_t sub_1BD9359A4()
{
  result = qword_1EBD59258;
  if (!qword_1EBD59258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59230, &qword_1BE1065E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD591E0, &qword_1BE1065B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD591E8, &qword_1BE1065B8);
    sub_1BE04FB94();
    sub_1BD0DE4F4(&qword_1EBD59228, &qword_1EBD591E8, &qword_1BE1065B8, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD59260, &qword_1EBD59238, &qword_1BE1065F0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59258);
  }

  return result;
}

unint64_t sub_1BD935B28()
{
  result = qword_1EBD59268;
  if (!qword_1EBD59268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59110, &qword_1BE1061A8);
    sub_1BD928A24(&qword_1EBD59270, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection, &unk_1BE106420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59268);
  }

  return result;
}

uint64_t sub_1BD935BDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD930C28();
}

uint64_t sub_1BD935C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD935CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MerchantTokenCell.ImageState(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59358, &qword_1BE1067F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1BD930FE0(a1, &v20 - v12, type metadata accessor for MerchantTokenCell.ImageState);
  sub_1BD930FE0(a2, &v13[v15], type metadata accessor for MerchantTokenCell.ImageState);
  v16 = *(v5 + 48);
  v17 = v16(v13, 3, v4);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (v16(&v13[v15], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v16(&v13[v15], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1BD0DE53C(v13, &qword_1EBD59358, &qword_1BE1067F0);
    v18 = 0;
    return v18 & 1;
  }

  if (!v17)
  {
    sub_1BD930FE0(v13, v10, type metadata accessor for MerchantTokenCell.ImageState);
    if (!v16(&v13[v15], 3, v4))
    {
      sub_1BD93641C(&v13[v15], v7, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      v18 = sub_1BD3D8E1C(v10, v7);
      sub_1BD935C74(v7, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      sub_1BD935C74(v10, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
      sub_1BD935C74(v13, type metadata accessor for MerchantTokenCell.ImageState);
      return v18 & 1;
    }

    sub_1BD935C74(v10, type metadata accessor for UnifiedMerchantTokenData.MerchantTokenImage);
    goto LABEL_11;
  }

  if (v16(&v13[v15], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1BD935C74(v13, type metadata accessor for MerchantTokenCell.ImageState);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1BD93600C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  if ((sub_1BE04A9E4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (v10)
    {
      v11 = *v7 == *v9 && v8 == v10;
      if (v11 || (sub_1BE053B84() & 1) != 0)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_14:
  v12 = *(v5 + 28);
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v13 == *v15 && v14 == v15[1])
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD93610C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantTokenListViewModel.SectionCard(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59178, &qword_1BE106238);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v21 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59360, &qword_1BE1067F8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1BD0DE19C(a1, &v21 - v12, &qword_1EBD59178, &qword_1BE106238);
  sub_1BD0DE19C(a2, &v13[v15], &qword_1EBD59178, &qword_1BE106238);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &qword_1EBD59178, &qword_1BE106238);
LABEL_9:
      v19 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
      v17 = sub_1BD3FE048(*(a1 + *(v19 + 20)), *(a2 + *(v19 + 20)));
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1BD0DE19C(v13, v10, &qword_1EBD59178, &qword_1BE106238);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1BD935C74(v10, type metadata accessor for MerchantTokenListViewModel.SectionCard);
LABEL_6:
    sub_1BD0DE53C(v13, &qword_1EBD59360, &qword_1BE1067F8);
    goto LABEL_7;
  }

  sub_1BD93641C(&v13[v15], v7, type metadata accessor for MerchantTokenListViewModel.SectionCard);
  v18 = sub_1BD93600C(v10, v7);
  sub_1BD935C74(v7, type metadata accessor for MerchantTokenListViewModel.SectionCard);
  sub_1BD935C74(v10, type metadata accessor for MerchantTokenListViewModel.SectionCard);
  sub_1BD0DE53C(v13, &qword_1EBD59178, &qword_1BE106238);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1BD93641C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD936514(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_1BD9365AC()
{
  result = qword_1EBD592E0;
  if (!qword_1EBD592E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD592D0, &qword_1BE1066A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD592E8, &qword_1BE1066A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD592F0, &qword_1BE1066B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD592F8, &qword_1BE1066B8);
    sub_1BD0DE4F4(&qword_1EBD59300, &qword_1EBD592F0, &qword_1BE1066B0, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD59308, &qword_1EBD592F8, &qword_1BE1066B8, MEMORY[0x1E697C9F0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD928A24(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD592E0);
  }

  return result;
}

uint64_t sub_1BD9367A0(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for MerchantTokenList(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(a1(0) - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(v2 + v5, v8);
}

uint64_t sub_1BD936890()
{
  v2 = *(type metadata accessor for MerchantTokenCell(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD92639C(v4, v5, v0 + v3);
}

unint64_t sub_1BD936988()
{
  result = qword_1EBD59398;
  if (!qword_1EBD59398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59388, &unk_1BE106818);
    sub_1BD0DE4F4(&qword_1EBD593A0, &qword_1EBD59390, &unk_1BE106828, &unk_1BE10F338);
    sub_1BD936A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59398);
  }

  return result;
}

unint64_t sub_1BD936A40()
{
  result = qword_1EBD593A8;
  if (!qword_1EBD593A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD593B0, &qword_1BE106838);
    sub_1BD223C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD593A8);
  }

  return result;
}

uint64_t sub_1BD936ACC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return sub_1BE048964();
  }

  return result;
}

void sub_1BD936AD8(id x0_0, SEL x1_0, id x2_0, id x3_0, id x4_0, id x5_0, id x6_0, id x7_0)
{
  if ((x3_0 & 1) == 0)
  {
    x0_0, x1_0, x2_0, x3_0, x4_0, x5_0, x6_0, x7_0;
  }
}

unint64_t sub_1BD936AE4()
{
  result = qword_1EBD593D0;
  if (!qword_1EBD593D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD593C0, &unk_1BE106848);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD593D0);
  }

  return result;
}

void sub_1BD936B9C(uint64_t a1)
{
  v3 = *(type metadata accessor for MerchantTokenNavigationStack(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD928A6C(a1, v4);
}

uint64_t objectdestroy_169Tm_0()
{
  v1 = type metadata accessor for MerchantTokenNavigationStack(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE04E664();
    (*(*(v11 - 8) + 8))(v0 + v2, v11);
  }

  else
  {
    *v3, v4, v5, v6, v7, v8, v9, v10;
  }

  *(v3 + *(v1 + 20)), v12, v13, v14, v15, v16, v17, v18;
  v19 = (v3 + *(v1 + 24));
  *v19, v20, v21, v22, v23, v24, v25, v26;
  v19[1], v27, v28, v29, v30, v31, v32, v33;

  return swift_deallocObject();
}

uint64_t sub_1BD936D70()
{
  v2 = *(type metadata accessor for MerchantTokenNavigationStack(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD126968;

  return sub_1BD929440(v0 + v3);
}

unint64_t sub_1BD936ED0()
{
  result = qword_1EBD59410;
  if (!qword_1EBD59410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59400, &unk_1BE1068F8);
    sub_1BD0DE4F4(&qword_1EBD59408, &qword_1EBD593F8, &unk_1BE1068E8, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59410);
  }

  return result;
}

uint64_t sub_1BD936FE0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

void sub_1BD93705C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MerchantTokenNavigationStack(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD92967C(a1, a2, v6);
}

void sub_1BD9370DC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 72);
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
  sub_1BE048C84();
  v3, v4, v5, v6, v7, v8, v9, v10;
}

unint64_t sub_1BD93711C()
{
  result = qword_1EBD59438;
  if (!qword_1EBD59438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59440, &qword_1BE106920);
    sub_1BD0DE4F4(&qword_1EBD59370, &qword_1EBD59368, &qword_1BE106800, MEMORY[0x1E6981880]);
    sub_1BD928A24(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59438);
  }

  return result;
}

unint64_t sub_1BD937204()
{
  result = qword_1EBD59448;
  if (!qword_1EBD59448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59450, &qword_1BE106928);
    sub_1BD936988();
    sub_1BD223C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59448);
  }

  return result;
}

void *sub_1BD9372DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - v7;
  v9 = *(v1 + 8);
  v48 = *v1;
  v10 = *(v1 + 16);
  v11 = v9;
  sub_1BD937AB4(v10, v57);
  v47[1] = *(v1 + 32);
  v47[2] = *(v1 + 48);
  v12 = swift_allocObject();
  v13 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = *(v1 + 48);
  v14 = sub_1BE052434();
  v51 = v15;
  v52 = v14;
  v16 = sub_1BE052434();
  v49 = v17;
  v50 = v16;
  v18 = type metadata accessor for PaymentOfferActionExplanationView(0);
  v19 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  sub_1BD937E8C(v8, v5);
  v20 = v10;
  v21 = v11;
  v22 = v48;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE051694();
  sub_1BD937EFC(v8);
  v23 = a1 + *(v18 + 68);
  *v23 = swift_getKeyPath();
  *(v23 + 8) = 0;
  *a1 = v22;
  *(a1 + 8) = v21;
  v24 = v57[1];
  *(a1 + 16) = v57[0];
  *(a1 + 32) = v24;
  *(a1 + 96) = v58;
  v25 = v57[4];
  *(a1 + 64) = v57[3];
  *(a1 + 80) = v25;
  *(a1 + 48) = v57[2];
  *(a1 + 104) = 0;
  *(a1 + 128) = sub_1BD937E3C;
  *(a1 + 136) = v12;
  *(a1 + 144) = 1795;
  v26 = v22;
  v27 = [v21 identifier];
  if (!v27)
  {
    sub_1BE052434();
    v29 = v28;
    v27 = sub_1BE052404();
    v29, v30, v31, v32, v33, v34, v35, v36;
  }

  v37 = [v26 preferredLocalizationLanguageForCriteriaIdentifier_];

  v38 = sub_1BE052434();
  v40 = v39;

  *(a1 + 112) = v38;
  *(a1 + 120) = v40;
  v53 = 0;
  result = sub_1BE051944();
  v42 = v55;
  v43 = v56;
  v44 = a1 + *(v18 + 64);
  *v44 = v54;
  *(v44 + 8) = v42;
  *(v44 + 16) = v43;
  v45 = v51;
  *(a1 + 152) = v52;
  *(a1 + 160) = v45;
  v46 = v49;
  *(a1 + 168) = v50;
  *(a1 + 176) = v46;
  *(a1 + 184) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return result;
}

id sub_1BD9375F4@<X0>(uint64_t *a1@<X8>)
{
  v48 = sub_1BE051584();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - v11;
  v13 = *MEMORY[0x1E69B8088];
  v14 = *(v4 + 104);
  v14(&v43 - v11, v13, v3, v10);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v16 = result;
  v45 = sub_1BE04B6F4();
  v44 = v17;

  v18 = *(v4 + 8);
  v18(v12, v3);
  (v14)(v8, v13, v3);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = result;
  v20 = sub_1BE04B6F4();
  v43 = v21;

  v18(v8, v3);
  v22 = v49;
  (v14)(v49, v13, v3);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v24 = sub_1BE04B6F4();
    v25 = v22;
    v27 = v26;

    v18(v25, v3);
    v28 = PKPassKitUIBundle();
    v29 = sub_1BE0515F4();
    v30 = v47;
    v31 = v46;
    v32 = v48;
    (*(v47 + 104))(v46, *MEMORY[0x1E6981630], v48);
    v33 = sub_1BE0515E4();
    v29, v34, v35, v36, v37, v38, v39, v40;
    (*(v30 + 8))(v31, v32);
    sub_1BE051CD4();
    sub_1BE04E5E4();

    *&v56[38] = v59;
    *&v56[22] = v58;
    *&v56[6] = v57;
    v53 = *v56;
    v50 = v33;
    v51 = 0;
    v52 = 1;
    v54 = *&v56[16];
    *v55 = *&v56[32];
    *&v55[14] = *(&v59 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EBB0, &qword_1BE0C4600);
    sub_1BD23F914();
    result = sub_1BE0518D4();
    v41 = v44;
    *a1 = v45;
    a1[1] = v41;
    v42 = v43;
    a1[2] = v20;
    a1[3] = v42;
    a1[4] = v24;
    a1[5] = v27;
    a1[6] = 0;
    a1[7] = 0;
    a1[8] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1BD937AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE051584();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  if (!a1)
  {
    result = sub_1BD9375F4(&v38);
    v32 = v38;
    v15 = v39;
    v17 = *v40;
    v29 = *&v40[8];
    v30 = *&v40[24];
    v31 = *&v40[40];
    v28 = 1;
    LOBYTE(v35) = 1;
    goto LABEL_5;
  }

  (*(v9 + 104))(v12, *MEMORY[0x1E69B8088], v8, v10);
  v33 = a1;
  result = PKPassKitBundle();
  if (result)
  {
    v14 = result;
    v15 = sub_1BE04B6F4();
    v17 = v16;

    (*(v9 + 8))(v12, v8);
    v18 = PKPassKitUIBundle();
    v19 = sub_1BE0515F4();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v20 = sub_1BE0515E4();
    v19, v21, v22, v23, v24, v25, v26, v27;
    (*(v5 + 8))(v7, v4);
    sub_1BE051CD4();
    sub_1BE04E5E4();

    *&v34[22] = v36;
    *&v34[38] = v37;
    *&v34[6] = v35;
    *&v40[2] = *v34;
    v38 = v20;
    v39 = 0;
    *v40 = 1;
    *&v40[18] = *&v34[16];
    *&v40[34] = *&v34[32];
    *&v40[48] = *(&v37 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EBB0, &qword_1BE0C4600);
    sub_1BD23F914();
    result = sub_1BE0518D4();
    v28 = 0;
    LOBYTE(v38) = 0;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = v33;
LABEL_5:
    *a2 = v32;
    *(a2 + 8) = v15;
    *(a2 + 16) = v17;
    *(a2 + 24) = v29;
    *(a2 + 40) = v30;
    *(a2 + 56) = v31;
    *(a2 + 72) = result;
    *(a2 + 80) = v28;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD937E3C(char a1)
{
  v2 = 40;
  if (a1 == 4)
  {
    v2 = 24;
  }

  return (*(v1 + 16 + v2))();
}

uint64_t sub_1BD937E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD937EFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD937F64()
{
  result = qword_1EBD57B20;
  if (!qword_1EBD57B20)
  {
    type metadata accessor for PaymentOfferActionExplanationView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD57B20);
  }

  return result;
}

uint64_t sub_1BD937FBC(char a1, uint64_t a2)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 3;
      break;
    case 2:
      if (PKSystemApertureIsAvailable())
      {
        goto LABEL_2;
      }

      if (*(v2 + 225))
      {
        result = 5;
      }

      else
      {
        result = 1;
      }

      break;
    case 3:
      if ((PKUserIntentIsAvailable() & (a2 == 1)) != 0)
      {
        result = 2;
      }

      else
      {
        result = 0;
      }

      break;
    case 5:
    case 6:
    case 7:
      v5 = PKSystemApertureIsAvailable() == 0;
      v6 = 4;
      goto LABEL_11;
    case 8:
      v5 = PKSystemApertureIsAvailable() == 0;
      v6 = 12;
LABEL_11:
      if (v5)
      {
        result = v6;
      }

      else
      {
        result = 7;
      }

      break;
    case 10:
    case 11:
    case 15:
    case 16:
LABEL_2:
      result = 7;
      break;
    case 12:
      result = 11;
      break;
    case 13:
      result = 10;
      break;
    case 14:
      result = 6;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BD93808C(unsigned __int8 a1, uint64_t a2, char a3)
{
  v7 = sub_1BE04C884();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

  if (a2 == 1 && a1 == 3)
  {
    LOBYTE(v15) = 1;
    return v15 & 1;
  }

  v16 = v12;
  sub_1BE04C794();
  (*(v8 + 104))(v10, *MEMORY[0x1E69BC9B8], v16);
  sub_1BD70C564();
  sub_1BE0526E4();
  sub_1BE0526E4();
  v17 = *(v8 + 8);
  v17(v10, v16);
  v17(v14, v16);
  if (v20[1] != v20[0] || (*(v3 + 225) & 1) != 0)
  {
LABEL_7:
    LOBYTE(v15) = 0;
    return v15 & 1;
  }

  IsAvailable = PKHomeButtonIsAvailable();
  LOBYTE(v15) = 0;
  if ((IsAvailable & 1) == 0 && a1 <= 5u)
  {
    v15 = 0x25u >> a1;
  }

  return v15 & 1;
}

void sub_1BD93825C(uint64_t a1, void *a2)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 13)
  {
    if ((a1 - 14) >= 2)
    {
      if (a1 != 16)
      {
        if (a1 != 19)
        {
          goto LABEL_10;
        }

        goto LABEL_23;
      }

      v10 = 2;
LABEL_36:
      *(v2 + 80) = v10;
      return;
    }

    if (sub_1BD938A08(a2))
    {
      goto LABEL_10;
    }

LABEL_23:
    v10 = 3;
    goto LABEL_36;
  }

  if (a1 != 3)
  {
    if (a1 == 12)
    {
      v10 = 1;
      goto LABEL_36;
    }

LABEL_10:
    *(v2 + 80) = 0;
    return;
  }

  if (!a2 || (v11 = v7, objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_35:
    v10 = 4;
    goto LABEL_36;
  }

  v13 = v12;
  *(v2 + 80) = 4;
  v14 = a2;
  v15 = [v13 status];
  if ((v15 - 5) < 3)
  {

    v10 = 3;
    goto LABEL_36;
  }

  if (v15 == 8)
  {
    *(v2 + 80) = 3;
    v16 = [*(v2 + 264) paymentRequest];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 originatingURL];

      if (v18)
      {
        sub_1BE04A9F4();

        v19 = sub_1BE04A9C4();
        (*(v6 + 8))(v9, v11);
      }

      else
      {
        v19 = 0;
      }

      v24 = PKPaymentSheetShowExpressProvisioning();

      if (!v24)
      {
        goto LABEL_32;
      }

      v25 = [*(v2 + 264) pass];
      if (v25 || (v25 = [*(v2 + 264) peerPaymentPass]) != 0)
      {

LABEL_32:
        return;
      }

      v26 = [*(v2 + 264) paymentRequest];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 requestType];

        if (v28)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v30 = v13;
  v20 = [v30 error];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1BD938BD4(v20);

    if (v22 <= 0xBu && ((1 << v22) & 0x988) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {

    v23 = v30;
  }
}

void sub_1BD9385A4(uint64_t a1, void *a2)
{
  v5 = sub_1BE04AA64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 14) < 2)
  {
    goto LABEL_4;
  }

  if (a1 != 3)
  {
    if (a1 != 19)
    {
      v17 = *(v2 + 72);
      *(v2 + 64) = 0;
      *(v2 + 72) = 0;
      goto LABEL_9;
    }

LABEL_4:
    v17 = *(v2 + 72);
    *(v2 + 64) = xmmword_1BE106A20;
LABEL_9:

    v17, v8, v9, v10, v11, v12, v13, v14;
    return;
  }

  v18 = v7;
  v19 = 0xEF6B72616D6E6F69;
  v20 = 0x74616D616C637865;
  if (a2 && (objc_opt_self(), (v21 = swift_dynamicCastObjCClass()) != 0))
  {
    v43 = v21;
    v22 = a2;
    v20 = sub_1BD9388D0();
    v19 = v8;
  }

  else
  {
    v43 = 0;
  }

  v23 = *(v2 + 72);
  *(v2 + 64) = v20;
  *(v2 + 72) = v19;
  v23, v8, v9, v10, v11, v12, v13, v14;
  if (v43)
  {
    if ([v43 status] == 8)
    {
      v24 = [*(v2 + 264) paymentRequest];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 originatingURL];

        if (v26)
        {
          sub_1BE04A9F4();

          v27 = sub_1BE04A9C4();
          (*(v6 + 8))(v16, v18);
        }

        else
        {
          v27 = 0;
        }

        v29 = PKPaymentSheetShowExpressProvisioning();

        if (!v29)
        {
          goto LABEL_26;
        }

        v30 = [*(v2 + 264) pass];
        if (v30 || (v30 = [*(v2 + 264) peerPaymentPass]) != 0)
        {

LABEL_26:
          return;
        }

        v31 = [*(v2 + 264) paymentRequest];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 requestType];

          if (!v33)
          {
            v41 = *(v2 + 72);
            *(v2 + 64) = 0xD00000000000001ALL;
            *(v2 + 72) = 0x80000001BE125F50;
            v41, v34, v35, v36, v37, v38, v39, v40;
          }

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v28 = v43;
  }
}

uint64_t sub_1BD9388D0()
{
  v1 = v0;
  v2 = 0x74616D616C637865;
  v3 = [v1 error];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BD938BD4(v3);
    if (v5 <= 0xD)
    {
      if (((1 << v5) & 0x3F88) != 0)
      {

        return v2;
      }

      if (((1 << v5) & 0x30) != 0)
      {

        return 0x6163746964657263;
      }

      if (v5 == 6)
      {

        return 0x662E6E6F73726570;
      }
    }

    if (v5 == 2)
    {

      return 0xD00000000000001ALL;
    }

    else
    {

      return 0x69662E6573756F68;
    }
  }

  return v2;
}

uint64_t sub_1BD938A08(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v2 = result;
      v3 = v1;
      if ([v2 error])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0, &qword_1BE0BFD10);
        sub_1BD8B8208();
        if (swift_dynamicCast())
        {
          v4 = [v39 domain];
          v5 = sub_1BE052434();
          v7 = v6;

          v9 = sub_1BE052434();
          v15 = v8;
          if (v5 == v9 && v7 == v8)
          {
            v7, v8, v9, v10, v11, v12, v13, v14;
            v15, v16, v17, v18, v19, v20, v21, v22;
LABEL_9:
            if ([v39 code] == -2008 || objc_msgSend(v39, sel_code) == -2009)
            {

              return 1;
            }

            v38 = [v39 code];

            return v38 == -2015;
          }

          v23 = sub_1BE053B84();
          v7, v24, v25, v26, v27, v28, v29, v30;
          v15, v31, v32, v33, v34, v35, v36, v37;
          if (v23)
          {
            goto LABEL_9;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD938BD4(uint64_t a1)
{
  v1 = sub_1BE04A844();
  v2 = [v1 code];
  if (v2 > -3006)
  {
    if (v2 <= -3004)
    {
      goto LABEL_15;
    }

    switch(v2)
    {
      case -3003:
        v4 = sub_1BD34C150();

        return v4 & 1;
      case -3002:

        return 5;
      case -3000:

        return 4;
    }
  }

  else
  {
    if (v2 > -3011)
    {
      if (v2 != -3010 && v2 != -3007 && v2 != -3006)
      {
        goto LABEL_20;
      }

LABEL_15:

      return 6;
    }

    if (v2 == -3013)
    {

      return 3;
    }

    if (v2 == -3012)
    {

      return 2;
    }
  }

LABEL_20:
  v5 = v2;

  if (v5 > -3012)
  {
    result = 7;
    if (v5 != -3011 && v5 != -3001)
    {
      if (v5 == -1001)
      {
        return 8;
      }

      return 13;
    }
  }

  else
  {
    if (v5 == -3017)
    {
      return 11;
    }

    if (v5 != -3016)
    {
      if (v5 == -3015)
      {
        return 9;
      }

      return 13;
    }

    return 10;
  }

  return result;
}

uint64_t type metadata accessor for MoneyTransferButton(uint64_t a1)
{
  result = qword_1EBD361C8;
  if (!qword_1EBD361C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD938DA0(uint64_t a1)
{
  sub_1BD2D63D4(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v2 <= 0x3F)
    {
      sub_1BD249694(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD938E78()
{
  result = qword_1EBD59458;
  if (!qword_1EBD59458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59458);
  }

  return result;
}

uint64_t sub_1BD938ECC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1BE04ED74();
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MoneyTransferButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59478, &qword_1BE106C18);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59480, &unk_1BE106C20);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  sub_1BD1837AC(v2, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_1BD93A870(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v38 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59488, &qword_1BE106C30);
  sub_1BD93A940();
  sub_1BE051704();
  sub_1BE04ED64();
  sub_1BD0DE4F4(&qword_1EBD59568, &qword_1EBD59478, &qword_1BE106C18, MEMORY[0x1E697D680]);
  sub_1BD93B55C(&qword_1EBD59570, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v19 = v35;
  sub_1BE050894();
  (*(v36 + 8))(v6, v19);
  (*(v11 + 8))(v13, v10);
  v20 = sub_1BD93A294();
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20 & 1;
  v23 = &v16[*(v14 + 36)];
  *v23 = KeyPath;
  v23[1] = sub_1BD10DF54;
  v23[2] = v22;
  sub_1BE052434();
  v25 = v24;
  sub_1BD93B250();
  sub_1BE050DE4();
  v25, v26, v27, v28, v29, v30, v31, v32;
  return sub_1BD0DE53C(v16, &qword_1EBD59480, &unk_1BE106C20);
}

void *sub_1BD9392E8@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v121 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59580, &qword_1BE106D78);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v99 - v4;
  v6 = sub_1BE04E354();
  v114 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v113 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v112 = &v99 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59588, &qword_1BE106D80);
  v117 = *(v10 - 8);
  v118 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v99 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594D0, &qword_1BE106C58);
  MEMORY[0x1EEE9AC00](v115);
  v13 = &v99 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594C0, &qword_1BE106C50);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v99 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59498, &qword_1BE106C38);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v99 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59590, &qword_1BE106D88);
  MEMORY[0x1EEE9AC00](v18);
  if (a1[1])
  {
    v21 = sub_1BE04F504();
    sub_1BD93A628(&v129);
    v22 = v130;
    v23 = *(&v130 + 1);
    v24 = v131;
    v25 = BYTE8(v131);
    v26 = v129;
    LOBYTE(v122) = 1;
    LOBYTE(v147[0]) = v130;
    v146 = BYTE8(v131);
    *v5 = v21;
    *(v5 + 1) = 0;
    v5[16] = 1;
    *(v5 + 24) = v26;
    v5[40] = v22;
    *(v5 + 6) = v23;
    *(v5 + 7) = v24;
    *(v5 + 32) = v25;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59550, &qword_1BE106CA0);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A0, &qword_1BE106C40);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A8, &qword_1BE106C48);
    v29 = sub_1BD93AA74();
    v30 = sub_1BD93AE8C();
    v31 = sub_1BD93AFFC();
    *&v129 = v15;
    *(&v129 + 1) = MEMORY[0x1E6981CD8];
    *&v130 = v27;
    *(&v130 + 1) = v28;
    *&v131 = v29;
    *(&v131 + 1) = MEMORY[0x1E6981CD0];
    *&v132 = v30;
    *(&v132 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_1BD93B16C();
    return sub_1BE04F9A4();
  }

  else
  {
    v100 = v6;
    v105 = v17;
    v106 = v5;
    v104 = &v99 - v19;
    v107 = v20;
    v109 = v15;
    v110 = v18;
    v111 = v3;
    *&v129 = sub_1BD93A464();
    *(&v129 + 1) = v33;
    sub_1BD0DDEBC();
    v34 = sub_1BE0506C4();
    v108 = a1;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = sub_1BE050464();
    v43 = sub_1BE0505F4();
    v102 = v44;
    v103 = v43;
    v46 = v45;
    v101 = v47;
    v42, v44, v45, v47, v48, v49, v50, v51;
    sub_1BD0DDF10(v35, v37, (v39 & 1), v52, v53, v54, v55, v56);
    v41, v57, v58, v59, v60, v61, v62, v63;
    KeyPath = swift_getKeyPath();
    LOBYTE(v35) = sub_1BE050234();
    sub_1BE051C54();
    sub_1BE04E1F4();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v146 = v46 & 1;
    v144 = 1;
    v143 = 0;
    sub_1BE051CD4();
    sub_1BE04EE54();
    *&v145[55] = v147[3];
    *&v145[71] = v147[4];
    *&v145[87] = v147[5];
    *&v145[103] = v148;
    *&v145[7] = v147[0];
    *&v145[23] = v147[1];
    *&v145[39] = v147[2];
    *&v122 = v103;
    *(&v122 + 1) = v102;
    LOBYTE(v123) = v46 & 1;
    *(&v123 + 1) = v101;
    v124 = KeyPath;
    LOBYTE(v125) = 1;
    BYTE8(v125) = v35;
    *&v126 = v66;
    *(&v126 + 1) = v68;
    *&v127 = v70;
    *(&v127 + 1) = v72;
    v128[0] = 0;
    *&v128[65] = *&v145[64];
    *&v128[81] = *&v145[80];
    *&v128[97] = *&v145[96];
    *&v128[112] = *(&v148 + 1);
    *&v128[1] = *v145;
    *&v128[17] = *&v145[16];
    *&v128[33] = *&v145[32];
    *&v128[49] = *&v145[48];
    sub_1BE051C64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594D8, &qword_1BE106C60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594E0, &qword_1BE106C68);
    sub_1BD93AD4C();
    v73 = v108;
    sub_1BD93AE08(&qword_1EBD59500, &qword_1EBD594E0, &qword_1BE106C68, sub_1BD93AD4C);
    v74 = v116;
    sub_1BE0510C4();
    v139 = *&v128[64];
    v140 = *&v128[80];
    v141 = *&v128[96];
    v142 = *&v128[112];
    v135 = *v128;
    v136 = *&v128[16];
    v137 = *&v128[32];
    v138 = *&v128[48];
    v131 = v124;
    v132 = v125;
    v133 = v126;
    v134 = v127;
    v129 = v122;
    v130 = v123;
    sub_1BD93B3C8(&v129);
    v75 = sub_1BE050464();
    v76 = swift_getKeyPath();
    (*(v117 + 32))(v13, v74, v118);
    v77 = &v13[*(v115 + 36)];
    *v77 = v76;
    v77[1] = v75;
    v78 = v13;
    if (*v73 == 1)
    {
      v79 = sub_1BE051464();
      v80 = v109;
    }

    else
    {
      type metadata accessor for MoneyTransferButton(0);
      v81 = v112;
      sub_1BD70A078(v112);
      v83 = v113;
      v82 = v114;
      v84 = v100;
      (*(v114 + 104))(v113, *MEMORY[0x1E697DBB8], v100);
      v85 = sub_1BE04E344();
      v86 = *(v82 + 8);
      v86(v83, v84);
      v86(v81, v84);
      v80 = v109;
      if (v85)
      {
        v87 = sub_1BE051424();
      }

      else
      {
        v87 = sub_1BE0513F4();
      }

      v79 = v87;
    }

    v88 = swift_getKeyPath();
    v89 = v120;
    sub_1BD0DE204(v78, v120, &qword_1EBD594D0, &qword_1BE106C58);
    v90 = (v89 + *(v119 + 36));
    *v90 = v88;
    v90[1] = v79;
    v91 = sub_1BD939ECC();
    LOBYTE(v88) = sub_1BE0501D4();
    v92 = v105;
    sub_1BD0DE204(v89, v105, &qword_1EBD594C0, &qword_1BE106C50);
    v93 = v92 + *(v80 + 36);
    *v93 = v91;
    *(v93 + 8) = v88;
    sub_1BE051C64();
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594A0, &qword_1BE106C40);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594A8, &qword_1BE106C48);
    v120 = sub_1BD93AA74();
    *&v98 = sub_1BD93AE8C();
    *(&v98 + 1) = sub_1BD93AFFC();
    v95 = v104;
    sub_1BE0510B4();
    sub_1BD0DE53C(v92, &qword_1EBD59498, &qword_1BE106C38);
    v96 = v107;
    v97 = v110;
    (*(v107 + 16))(v106, v95, v110);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59550, &qword_1BE106CA0);
    *&v122 = v80;
    *(&v122 + 1) = MEMORY[0x1E6981CD8];
    *&v123 = v94;
    *(&v123 + 1) = v119;
    *&v124 = v120;
    *(&v124 + 1) = MEMORY[0x1E6981CD0];
    v125 = v98;
    swift_getOpaqueTypeConformance2();
    sub_1BD93B16C();
    sub_1BE04F9A4();
    return (*(v96 + 8))(v95, v97);
  }
}

uint64_t sub_1BD939DB8@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[11];
  v22 = a1[10];
  v23 = v3;
  v24 = a1[12];
  v25 = *(a1 + 26);
  v4 = a1[7];
  v18 = a1[6];
  v19 = v4;
  v5 = a1[9];
  v20 = a1[8];
  v21 = v5;
  v6 = a1[3];
  v14 = a1[2];
  v15 = v6;
  v7 = a1[5];
  v16 = a1[4];
  v17 = v7;
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  sub_1BE051CD4();
  sub_1BE04EE54();
  __src[10] = v22;
  __src[11] = v23;
  __src[12] = v24;
  *&__src[13] = v25;
  __src[6] = v18;
  __src[7] = v19;
  __src[8] = v20;
  __src[9] = v21;
  __src[2] = v14;
  __src[3] = v15;
  __src[4] = v16;
  __src[5] = v17;
  __src[0] = v12;
  __src[1] = v13;
  memcpy(a2, __src, 0x148uLL);
  return sub_1BD93B430(&v12, v10);
}

uint64_t sub_1BD939ECC()
{
  v1 = sub_1BE04E354();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = *v0;
  type metadata accessor for MoneyTransferButton(0);
  sub_1BD70A078(v7);
  (*(v2 + 104))(v4, *MEMORY[0x1E697DBB8], v1);
  v9 = sub_1BE04E344();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v7, v1);
  if (v8 == 1)
  {
    if (v9 & 1) != 0 && (sub_1BD93A294())
    {
      v11 = [objc_opt_self() tertiarySystemFillColor];
    }

    else
    {
      v11 = [objc_opt_self() systemFillColor];
    }

    v13 = v11;
    return sub_1BE0511C4();
  }

  else if (v9)
  {
    return sub_1BE0513F4();
  }

  else
  {
    return sub_1BE051424();
  }
}

uint64_t sub_1BD93A090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59518, &qword_1BE106C80) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1BE04F684();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59528, &unk_1BE106C88) + 36)) = 0;
  sub_1BD0C5514(a1, a2);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594A0, &qword_1BE106C40) + 36);
  v7(v8, v5, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E010, &qword_1BE0C2EE0);
  *(v8 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1BD93A1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD0C5514(a1, a2);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59540, &qword_1BE106C98) + 36)) = 0;
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594A8, &qword_1BE106C48) + 36));
  v4 = *(sub_1BE04EDE4() + 20);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1BE04F684();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  __asm { FMOV            V0.2D, #14.0 }

  *v3 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50, &unk_1BE0B7D20);
  *&v3[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1BD93A294()
{
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(&v38);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  v17 = v38;
  if (!*v0)
  {
    if (([v38 supportsOneTimeDeposit] & 1) == 0)
    {
      v18 = [v17 supportsOneTimeDepositWithAppleCash];
LABEL_10:

      return v18 ^ 1;
    }

LABEL_11:

    return 0;
  }

  if (*v0 == 1)
  {
    if ([v38 supportsOneTimeWithdrawal] & 1) != 0 || (objc_msgSend(v17, sel_supportsOneTimeWithdrawalWithAppleCash))
    {
      v19 = swift_getKeyPath();
      v20 = swift_getKeyPath();
      sub_1BE04D8B4(&v38);
      v19, v21, v22, v23, v24, v25, v26, v27;
      v20, v28, v29, v30, v31, v32, v33, v34;
      v35 = v38;
      if (v38)
      {
        v36 = [v38 currentBalance];

        if (v36)
        {
          v18 = [v36 pk_isPositiveNumber];

          goto LABEL_10;
        }
      }

      goto LABEL_11;
    }

    return 1;
  }

  else
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

id sub_1BD93A464()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v6;
  v9 = *MEMORY[0x1E69B80E0];
  v10 = *(v2 + 104);
  if (*v0)
  {
    v10(v4, v9, v1, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
      v8 = v4;
LABEL_6:

      (*(v2 + 8))(v8, v1);
      return v13;
    }

    __break(1u);
  }

  else
  {
    v10(&v14 - v6, v9, v1, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD93A628(uint64_t a1@<X8>)
{
  sub_1BD93A464();
  sub_1BD0DDEBC();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (sub_1BD93A294())
  {
    v9 = sub_1BE0513E4();
  }

  else
  {
    v9 = sub_1BE0513C4();
  }

  v10 = v9;
  v11 = sub_1BE050564();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v10, v12, v14, v16, v18, v19, v20, v21;
  sub_1BD0DDF10(v2, v4, (v6 & 1), v22, v23, v24, v25, v26);
  v8, v27, v28, v29, v30, v31, v32, v33;
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_1BD0D7F18(v11, v13, v15 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v11, v13, (v15 & 1), v34, v35, v36, v37, v38);
  v17, v39, v40, v41, v42, v43, v44, v45;
}

unint64_t sub_1BD93A750()
{
  result = qword_1EBD59460;
  if (!qword_1EBD59460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59460);
  }

  return result;
}

unint64_t sub_1BD93A7A8()
{
  result = qword_1EBD59468;
  if (!qword_1EBD59468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59468);
  }

  return result;
}

unint64_t sub_1BD93A800()
{
  result = qword_1EBD59470;
  if (!qword_1EBD59470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59470);
  }

  return result;
}

uint64_t sub_1BD93A870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoneyTransferButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD93A940()
{
  result = qword_1EBD59490;
  if (!qword_1EBD59490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59488, &qword_1BE106C30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59498, &qword_1BE106C38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A0, &qword_1BE106C40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A8, &qword_1BE106C48);
    sub_1BD93AA74();
    sub_1BD93AE8C();
    sub_1BD93AFFC();
    swift_getOpaqueTypeConformance2();
    sub_1BD93B16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59490);
  }

  return result;
}

unint64_t sub_1BD93AA74()
{
  result = qword_1EBD594B0;
  if (!qword_1EBD594B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59498, &qword_1BE106C38);
    sub_1BD93AB2C();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD594B0);
  }

  return result;
}

unint64_t sub_1BD93AB2C()
{
  result = qword_1EBD594B8;
  if (!qword_1EBD594B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594C0, &qword_1BE106C50);
    sub_1BD93ABE4();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD594B8);
  }

  return result;
}

unint64_t sub_1BD93ABE4()
{
  result = qword_1EBD594C8;
  if (!qword_1EBD594C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594D0, &qword_1BE106C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594D8, &qword_1BE106C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594E0, &qword_1BE106C68);
    sub_1BD93AD4C();
    sub_1BD93AE08(&qword_1EBD59500, &qword_1EBD594E0, &qword_1BE106C68, sub_1BD93AD4C);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD594C8);
  }

  return result;
}

unint64_t sub_1BD93AD7C()
{
  result = qword_1EBD594F0;
  if (!qword_1EBD594F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594F8, &unk_1BE106C70);
    sub_1BD1B9C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD594F0);
  }

  return result;
}

uint64_t sub_1BD93AE08(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD93AE8C()
{
  result = qword_1EBD59508;
  if (!qword_1EBD59508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A0, &qword_1BE106C40);
    sub_1BD93AF44();
    sub_1BD0DE4F4(&qword_1EBD3E008, &qword_1EBD3E010, &qword_1BE0C2EE0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59508);
  }

  return result;
}

unint64_t sub_1BD93AF44()
{
  result = qword_1EBD59510;
  if (!qword_1EBD59510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59518, &qword_1BE106C80);
    sub_1BD93AA74();
    sub_1BD0DE4F4(&qword_1EBD59520, &qword_1EBD59528, &unk_1BE106C88, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59510);
  }

  return result;
}

unint64_t sub_1BD93AFFC()
{
  result = qword_1EBD59530;
  if (!qword_1EBD59530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD594A8, &qword_1BE106C48);
    sub_1BD93B0B4();
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50, &unk_1BE0B7D20, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59530);
  }

  return result;
}

unint64_t sub_1BD93B0B4()
{
  result = qword_1EBD59538;
  if (!qword_1EBD59538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59540, &qword_1BE106C98);
    sub_1BD93AA74();
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8, &qword_1BE0DC350, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59538);
  }

  return result;
}

unint64_t sub_1BD93B16C()
{
  result = qword_1EBD59548;
  if (!qword_1EBD59548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59550, &qword_1BE106CA0);
    sub_1BD0DE4F4(&qword_1EBD59558, &qword_1EBD59560, &qword_1BE106CA8, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8, &qword_1BE0DC350, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59548);
  }

  return result;
}

unint64_t sub_1BD93B250()
{
  result = qword_1EBD59578;
  if (!qword_1EBD59578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59480, &unk_1BE106C20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59478, &qword_1BE106C18);
    sub_1BE04ED74();
    sub_1BD0DE4F4(&qword_1EBD59568, &qword_1EBD59478, &qword_1BE106C18, MEMORY[0x1E697D680]);
    sub_1BD93B55C(&qword_1EBD59570, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59578);
  }

  return result;
}

uint64_t sub_1BD93B3C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594D8, &qword_1BE106C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD93B430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD594D8, &qword_1BE106C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD93B4A0()
{
  result = qword_1EBD59598;
  if (!qword_1EBD59598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD595A0, &unk_1BE106E20);
    sub_1BD93B250();
    sub_1BD93B55C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD59598);
  }

  return result;
}

uint64_t sub_1BD93B55C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *AutoFillHeroAnimationView.init()(uint64_t a1)
{
  v2 = OBJC_IVAR___PKAutoFillHeroAnimationView_layerColorConfigurationSets;
  *(v1 + v2) = sub_1BD93C878(a1);
  v3 = sub_1BDA81390(0xD000000000000015, 0x80000001BE140B90, 2);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondarySystemBackgroundColor];
  [v5 setBackgroundColor_];
  v215 = v5;

  v218 = sub_1BD93C024();
  v7 = [objc_opt_self() monospacedDigitSystemFontOfSize:40.0 weight:*MEMORY[0x1E69DB970]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40058, &qword_1BE0C7360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001BE140BB0;
  *(inited + 48) = v7;
  v214 = v7;
  v9 = sub_1BD1AC2D0(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD40060, &qword_1BE0C7368);
  v10 = 0;
  while (1)
  {
    v216 = v10;
    v11 = &unk_1F3B8F8F0 + 16 * v10;
    v13 = *(v11 + 4);
    v12 = *(v11 + 5);
    sub_1BE048C84();
    sub_1BE053834();
    0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
    *&v223 = v13;
    *(&v223 + 1) = v12;
    MEMORY[0x1BFB3F610](0xD000000000000015, 0x80000001BE140BD0);
    v21 = sub_1BD93C2EC(v13, v12, 1);
    v12, v22, v23, v24, v25, v26, v27, v28;
    v219 = *(v21 + 2);
    if (v219)
    {
      break;
    }

LABEL_2:
    v10 = v216 + 1;
    v21, v29, v30, v31, v32, v33, v34, v35;
    if (v216 == 2)
    {
      sub_1BDA820BC(v9);
      v9, v55, v56, v57, v58, v59, v60, v61;
      v62 = sub_1BD1AACF8(MEMORY[0x1E69E7CC0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1BE0B69E0;
      v64 = MEMORY[0x1E69E65A8];
      *(v63 + 56) = MEMORY[0x1E69E6530];
      *(v63 + 64) = v64;
      *(v63 + 32) = sub_1BD9489DC(0x2710uLL);
      v65 = sub_1BE052454();
      v67 = v66;
      *(&v224 + 1) = MEMORY[0x1E69E6158];
      *&v223 = v65;
      *(&v223 + 1) = v66;
      sub_1BD1B6140(&v223, &v221);
      sub_1BE048C84();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v220[0] = v62;
      sub_1BD1DAD20(&v221, 0xD000000000000014, 0x80000001BE140BB0, isUniquelyReferenced_nonNull_native);
      v69 = v62;
      v70 = HIBYTE(v67) & 0xF;
      if ((v67 & 0x2000000000000000) == 0)
      {
        v70 = v65 & 0xFFFFFFFFFFFFLL;
      }

      *&v223 = v65;
      *(&v223 + 1) = v67;
      *&v224 = 0;
      *(&v224 + 1) = v70;
      v71 = sub_1BE052594();
      if (v72)
      {
        v79 = v71;
        v80 = v72;
        v81 = 0;
        while (1)
        {
          if (__OFADD__(v81, 1))
          {
            goto LABEL_65;
          }

          *&v221 = 0;
          *(&v221 + 1) = 0xE000000000000000;
          sub_1BE053834();
          MEMORY[0x1BFB3F610](0xD000000000000030, 0x80000001BE140BF0);
          *&v220[0] = v81 + 1;
          v91 = sub_1BE053B24();
          v93 = v92;
          MEMORY[0x1BFB3F610](v91);
          v93, v94, v95, v96, v97, v98, v99, v100;
          MEMORY[0x1BFB3F610](0x6C616E6946, 0xE500000000000000);
          v101 = v221;
          v222 = MEMORY[0x1E69E6158];
          *&v221 = v79;
          *(&v221 + 1) = v80;
          sub_1BD1B6140(&v221, v220);
          v102 = swift_isUniquelyReferenced_nonNull_native();
          v103 = sub_1BD148F70(v101, *(&v101 + 1));
          v111 = v69[2];
          v112 = (v104 & 1) == 0;
          v48 = __OFADD__(v111, v112);
          v113 = v111 + v112;
          if (v48)
          {
            goto LABEL_66;
          }

          v114 = v104;
          if (v69[3] < v113)
          {
            break;
          }

          if (v102)
          {
            goto LABEL_30;
          }

          v117 = v103;
          sub_1BD5060D0();
          v103 = v117;
          if (v114)
          {
LABEL_22:
            v82 = v103;
            *(&v101 + 1), v104, v105, v106, v107, v108, v109, v110;
            v83 = (v69[7] + 32 * v82);
            __swift_destroy_boxed_opaque_existential_0(v83, v84, v85, v86, v87, v88, v89, v90);
            sub_1BD1B6140(v220, v83);
            goto LABEL_23;
          }

LABEL_31:
          v69[(v103 >> 6) + 8] |= 1 << v103;
          *(v69[6] + 16 * v103) = v101;
          sub_1BD1B6140(v220, (v69[7] + 32 * v103));
          v115 = v69[2];
          v48 = __OFADD__(v115, 1);
          v116 = v115 + 1;
          if (v48)
          {
            goto LABEL_67;
          }

          v69[2] = v116;
LABEL_23:
          v79 = sub_1BE052594();
          v80 = v72;
          ++v81;
          if (!v72)
          {
            goto LABEL_35;
          }
        }

        sub_1BD5000BC(v113, v102);
        v103 = sub_1BD148F70(v101, *(&v101 + 1));
        if ((v114 & 1) != (v104 & 1))
        {
          goto LABEL_68;
        }

LABEL_30:
        if (v114)
        {
          goto LABEL_22;
        }

        goto LABEL_31;
      }

LABEL_35:
      *(&v223 + 1), v72, v73, v74, v75, v76, v77, v78;
      v118 = 0;
      while (1)
      {
        v217 = v118;
        v119 = &unk_1F3B8F8F0 + 16 * v118;
        v121 = *(v119 + 4);
        v120 = *(v119 + 5);
        *&v223 = 0;
        *(&v223 + 1) = 0xE000000000000000;
        sub_1BE048C84();
        sub_1BE053834();
        *(&v223 + 1), v122, v123, v124, v125, v126, v127, v128;
        *&v223 = v121;
        *(&v223 + 1) = v120;
        MEMORY[0x1BFB3F610](0xD000000000000015, 0x80000001BE140BD0);
        v129 = *(&v223 + 1);
        v130 = sub_1BD93C2EC(v223, *(&v223 + 1), 1);
        v129, v131, v132, v133, v134, v135, v136, v137;
        v145 = *(v130 + 2);
        if (v145)
        {
          break;
        }

LABEL_36:
        v130, v138, v139, v140, v141, v142, v143, v144;
        v118 = v217 + 1;
        if (v217 == 2)
        {
          swift_arrayDestroy();
          sub_1BDA82510(v69);
          v188 = *&v215[OBJC_IVAR___PKAutoFillHeroAnimationView_layerColorConfigurationSets];
          v189 = *&v215[OBJC_IVAR___PKStyledMicaView_layerColorConfigurationSets];
          *&v215[OBJC_IVAR___PKStyledMicaView_layerColorConfigurationSets] = v188;
          swift_bridgeObjectRetain_n();
          v189, v190, v191, v192, v193, v194, v195, v196;
          v197 = [v215 traitCollection];
          v198 = [v197 userInterfaceStyle];

          sub_1BDA81874(v188, v198);
          v69, v199, v200, v201, v202, v203, v204, v205;

          v188, v206, v207, v208, v209, v210, v211, v212;
          return v215;
        }
      }

      v146 = 0;
      while (2)
      {
        if (v146 >= *(v130 + 2))
        {
          goto LABEL_61;
        }

        v155 = &v130[16 * v146 + 32];
        v156 = *v155;
        v157 = v155[1];
        v158 = v69[2];
        sub_1BE048C84();
        if (v158)
        {
          v159 = sub_1BD148F70(v156, v157);
          if (v160)
          {
            sub_1BD038CD0(v69[7] + 32 * v159, &v223);
            v157, v161, v162, v163, v164, v165, v166, v167;
            sub_1BD0DE53C(&v223, &qword_1EBD3EC90, &unk_1BE0BC6B0);
LABEL_40:
            if (++v146 == v145)
            {
              goto LABEL_36;
            }

            continue;
          }
        }

        break;
      }

      v223 = 0u;
      v224 = 0u;
      sub_1BD0DE53C(&v223, &qword_1EBD3EC90, &unk_1BE0BC6B0);
      *&v221 = 0;
      MEMORY[0x1BFB45F40](&v221, 8);
      v168 = v221;
      if ((10 * v221) <= 5)
      {
        do
        {
          *&v221 = 0;
          MEMORY[0x1BFB45F40](&v221, 8);
          v168 = v221;
        }

        while ((10 * v221) < 6);
      }

      *&v221 = (v168 * 0xAuLL) >> 64;
      v169 = sub_1BE053B24();
      *(&v224 + 1) = MEMORY[0x1E69E6158];
      *&v223 = v169;
      *(&v223 + 1) = v170;
      sub_1BD1B6140(&v223, &v221);
      v171 = swift_isUniquelyReferenced_nonNull_native();
      *&v220[0] = v69;
      v179 = sub_1BD148F70(v156, v157);
      v180 = v69[2];
      v181 = (v172 & 1) == 0;
      v182 = v180 + v181;
      if (__OFADD__(v180, v181))
      {
        goto LABEL_63;
      }

      v183 = v172;
      if (v69[3] < v182)
      {
        sub_1BD5000BC(v182, v171);
        v184 = sub_1BD148F70(v156, v157);
        if ((v183 & 1) != (v172 & 1))
        {
          goto LABEL_68;
        }

        v179 = v184;
        if ((v183 & 1) == 0)
        {
          goto LABEL_54;
        }

LABEL_39:
        v157, v172, v173, v174, v175, v176, v177, v178;
        v69 = *&v220[0];
        v147 = (*(*&v220[0] + 56) + 32 * v179);
        __swift_destroy_boxed_opaque_existential_0(v147, v148, v149, v150, v151, v152, v153, v154);
        sub_1BD1B6140(&v221, v147);
        goto LABEL_40;
      }

      if (v171)
      {
        if (v172)
        {
          goto LABEL_39;
        }
      }

      else
      {
        sub_1BD5060D0();
        if (v183)
        {
          goto LABEL_39;
        }
      }

LABEL_54:
      v69 = *&v220[0];
      *(*&v220[0] + 8 * (v179 >> 6) + 64) |= 1 << v179;
      v185 = (v69[6] + 16 * v179);
      *v185 = v156;
      v185[1] = v157;
      sub_1BD1B6140(&v221, (v69[7] + 32 * v179));
      v186 = v69[2];
      v48 = __OFADD__(v186, 1);
      v187 = v186 + 1;
      if (v48)
      {
        goto LABEL_64;
      }

      v69[2] = v187;
      goto LABEL_40;
    }
  }

  v36 = 0;
  v37 = (v21 + 40);
  while (v36 < *(v21 + 2))
  {
    v42 = *(v37 - 1);
    v41 = *v37;
    sub_1BE048C84();
    v43 = v218;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *&v223 = v9;
    v45 = sub_1BD148F70(v42, v41);
    v46 = v9[2];
    v47 = (v29 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      goto LABEL_60;
    }

    v50 = v29;
    if (v9[3] < v49)
    {
      sub_1BD504148(v49, v44);
      v45 = sub_1BD148F70(v42, v41);
      if ((v50 & 1) != (v29 & 1))
      {
        goto LABEL_68;
      }

LABEL_13:
      if (v50)
      {
        goto LABEL_5;
      }

      goto LABEL_14;
    }

    if (v44)
    {
      goto LABEL_13;
    }

    v54 = v45;
    sub_1BD508430();
    v45 = v54;
    if (v50)
    {
LABEL_5:
      v38 = v45;
      v41, v29, v30, v31, v32, v33, v34, v35;
      v9 = v223;
      v39 = *(v223 + 56);
      v40 = *(v39 + 8 * v38);
      *(v39 + 8 * v38) = v43;

      goto LABEL_6;
    }

LABEL_14:
    v9 = v223;
    *(v223 + 8 * (v45 >> 6) + 64) |= 1 << v45;
    v51 = (v9[6] + 16 * v45);
    *v51 = v42;
    v51[1] = v41;
    *(v9[7] + 8 * v45) = v43;
    v52 = v9[2];
    v48 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v48)
    {
      goto LABEL_62;
    }

    v9[2] = v53;
LABEL_6:
    ++v36;
    v37 += 2;
    if (v219 == v36)
    {
      goto LABEL_2;
    }
  }

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
LABEL_68:
  result = sub_1BE053C14();
  __break(1u);
  return result;
}

id sub_1BD93C024()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = [v0 fontDescriptorWithDesign_];

  if (v1)
  {
    v2 = [v1 fontDescriptorWithSize_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40068, &unk_1BE106F50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    v4 = *MEMORY[0x1E69DB8F0];
    *(inited + 32) = *MEMORY[0x1E69DB8F0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40070, &unk_1BE0C7400);
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1BE0B69E0;
    v6 = *MEMORY[0x1E69DB990];
    *(v5 + 32) = *MEMORY[0x1E69DB990];
    v7 = *MEMORY[0x1E69DB980];
    *(v5 + 40) = *MEMORY[0x1E69DB980];
    v8 = v4;
    v9 = v6;
    v10 = sub_1BD1ABFCC(v5);
    swift_setDeallocating();
    sub_1BD0DE53C(v5 + 32, &qword_1EBD40078, &unk_1BE106F60);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40080, &unk_1BE0C7410);
    *(inited + 40) = v10;
    v11 = sub_1BD1AC0BC(inited);
    swift_setDeallocating();
    sub_1BD0DE53C(inited + 32, &qword_1EBD3BF50, &unk_1BE106F70);
    type metadata accessor for AttributeName(0);
    sub_1BD948B20();
    v12 = sub_1BE052224();
    v11, v13, v14, v15, v16, v17, v18, v19;
    v20 = [v2 fontDescriptorByAddingAttributes_];

    if (v20)
    {
      v21 = [objc_opt_self() fontWithDescriptor:v20 size:15.0];

      return v21;
    }
  }

  else
  {
    v7 = *MEMORY[0x1E69DB980];
  }

  v23 = [objc_opt_self() systemFontOfSize:15.0 weight:v7];

  return v23;
}

char *sub_1BD93C2EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 1;
  do
  {
    for (i = 1; i != 4; ++i)
    {
      sub_1BE053834();
      sub_1BE048C84();
      0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
      MEMORY[0x1BFB3F610](0x6967694473746F44, 0xEA00000000003074);
      v16 = sub_1BE053B24();
      v18 = v17;
      MEMORY[0x1BFB3F610](v16);
      v18, v19, v20, v21, v22, v23, v24, v25;
      MEMORY[0x1BFB3F610](0x6575716553657250, 0xEC0000003065636ELL);
      v26 = sub_1BE053B24();
      v28 = v27;
      MEMORY[0x1BFB3F610](v26);
      v28, v29, v30, v31, v32, v33, v34, v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1BD03B038(0, *(v4 + 2) + 1, 1, v4, v36, v37, v38, v39);
      }

      v41 = *(v4 + 2);
      v40 = *(v4 + 3);
      if (v41 >= v40 >> 1)
      {
        v4 = sub_1BD03B038((v40 > 1), v41 + 1, 1, v4, v36, v37, v38, v39);
      }

      *(v4 + 2) = v41 + 1;
      v42 = &v4[16 * v41];
      *(v42 + 4) = a1;
      *(v42 + 5) = a2;
    }

    for (j = 1; j != 4; ++j)
    {
      sub_1BE053834();
      sub_1BE048C84();
      0xE000000000000000, v44, v45, v46, v47, v48, v49, v50;
      MEMORY[0x1BFB3F610](0xD000000000000011, 0x80000001BE140C80);
      v51 = sub_1BE053B24();
      v53 = v52;
      MEMORY[0x1BFB3F610](v51);
      v53, v54, v55, v56, v57, v58, v59, v60;
      MEMORY[0x1BFB3F610](0x6575716553657250, 0xEC0000003065636ELL);
      v61 = sub_1BE053B24();
      v63 = v62;
      MEMORY[0x1BFB3F610](v61);
      v63, v64, v65, v66, v67, v68, v69, v70;
      v76 = *(v4 + 2);
      v75 = *(v4 + 3);
      if (v76 >= v75 >> 1)
      {
        v4 = sub_1BD03B038((v75 > 1), v76 + 1, 1, v4, v71, v72, v73, v74);
      }

      *(v4 + 2) = v76 + 1;
      v77 = &v4[16 * v76];
      *(v77 + 4) = a1;
      *(v77 + 5) = a2;
    }

    if (a3)
    {
      sub_1BE053834();
      sub_1BE048C84();
      0xE000000000000000, v78, v79, v80, v81, v82, v83, v84;
      MEMORY[0x1BFB3F610](0xD000000000000011, 0x80000001BE140C80);
      v85 = sub_1BE053B24();
      v87 = v86;
      MEMORY[0x1BFB3F610](v85);
      v87, v88, v89, v90, v91, v92, v93, v94;
      MEMORY[0x1BFB3F610](0x6C616E6946, 0xE500000000000000);
      v100 = *(v4 + 2);
      v99 = *(v4 + 3);
      if (v100 >= v99 >> 1)
      {
        v4 = sub_1BD03B038((v99 > 1), v100 + 1, 1, v4, v95, v96, v97, v98);
      }

      *(v4 + 2) = v100 + 1;
      v6 = &v4[16 * v100];
      *(v6 + 4) = a1;
      *(v6 + 5) = a2;
    }
  }

  while (v5++ != 4);
  return v4;
}

CGSize __swiftcall AutoFillHeroAnimationView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Height = CGRectGetHeight(v18);
  v12.n128_u64[0] = 3.0;
  v13.n128_f64[0] = Height / 3.0;
  PKFloatRoundToPixel(v13, v12);
  v15 = v14;
  v16 = width;
  result.height = v15;
  result.width = v16;
  return result;
}

unint64_t sub_1BD93C878(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
  v2 = [v1 CGColor];

  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v4 = [v3 &selRef__disclosureChevronImage_];

  v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v650 = [v5 &selRef__disclosureChevronImage_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.62 green:0.62 blue:0.69 alpha:0.0];
  v643 = [v6 &selRef__disclosureChevronImage_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.62 green:0.62 blue:0.69 alpha:1.0];
  v594 = [v7 &selRef__disclosureChevronImage_];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.86 green:0.86 blue:0.86 alpha:0.0];
  v647 = [v8 &selRef__disclosureChevronImage_];

  v9 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.86 green:0.86 blue:0.86 alpha:1.0];
  v644 = [v9 &selRef__disclosureChevronImage_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.03 green:0.64 blue:0.93 alpha:1.0];
  v661 = [v10 &selRef__disclosureChevronImage_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.03 green:0.64 blue:0.93 alpha:0.5];
  v652 = [v11 &selRef__disclosureChevronImage_];

  v12 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.03 green:0.64 blue:0.93 alpha:0.0];
  v648 = [v12 &selRef__disclosureChevronImage_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.31 green:0.67 blue:0.95 alpha:1.0];
  v14 = [v13 &selRef__disclosureChevronImage_];

  v15 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.2 green:0.55 blue:0.8 alpha:1.0];
  v16 = [v15 &selRef__disclosureChevronImage_];

  v17 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.82 green:0.93 blue:1.0 alpha:0.5];
  v670 = [v17 &selRef__disclosureChevronImage_];

  v18 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.49 blue:0.94 alpha:0.12];
  v668 = [v18 &selRef__disclosureChevronImage_];

  v19 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.33 green:0.75 blue:0.95 alpha:1.0];
  v653 = [v19 &selRef__disclosureChevronImage_];

  v20 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.38 green:0.76 blue:0.95 alpha:1.0];
  v646 = [v20 &selRef__disclosureChevronImage_];

  v21 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.18 green:0.63 blue:0.88 alpha:1.0];
  v600 = [v21 &selRef__disclosureChevronImage_];

  v22 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.73 green:0.73 blue:0.73 alpha:1.0];
  v656 = [v22 &selRef__disclosureChevronImage_];

  v23 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.99 green:0.99 blue:1.0 alpha:1.0];
  v662 = [v23 &selRef__disclosureChevronImage_];

  v24 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.96 green:0.96 blue:0.98 alpha:1.0];
  v666 = [v24 &selRef__disclosureChevronImage_];

  v25 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.21 green:0.21 blue:0.22 alpha:1.0];
  v664 = [v25 &selRef__disclosureChevronImage_];

  v26 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.16 green:0.16 blue:0.17 alpha:1.0];
  v663 = [v26 &selRef__disclosureChevronImage_];

  v27 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.65 blue:0.99 alpha:1.0];
  v608 = [v27 &selRef__disclosureChevronImage_];

  v28 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.1];
  v657 = [v28 &selRef__disclosureChevronImage_];

  v29 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.07];
  v645 = [v29 &selRef__disclosureChevronImage_];

  v30 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.79 blue:0.02 alpha:1.0];
  v613 = [v30 &selRef__disclosureChevronImage_];

  v31 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.84 blue:? alpha:?];
  v641 = [v31 &selRef__disclosureChevronImage_];

  v32 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.86 blue:0.38 alpha:1.0];
  v606 = [v32 &selRef__disclosureChevronImage_];

  v33 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.89 green:0.74 blue:0.31 alpha:1.0];
  v604 = [v33 &selRef__disclosureChevronImage_];

  v34 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.36 blue:0.28 alpha:1.0];
  v638 = [v34 &selRef__disclosureChevronImage_];

  v35 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.99 green:0.5 blue:0.44 alpha:1.0];
  v640 = [v35 &selRef__disclosureChevronImage_];

  v36 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.59 blue:0.54 alpha:1.0];
  v616 = [v36 &selRef__disclosureChevronImage_];

  v37 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.87 green:0.41 blue:0.4 alpha:1.0];
  v615 = [v37 &selRef__disclosureChevronImage_];

  v38 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.99 green:0.99 blue:1.0 alpha:0.06];
  v660 = [v38 &selRef__disclosureChevronImage_];

  v39 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.96 green:0.96 blue:0.98 alpha:0.4];
  v659 = [v39 &selRef__disclosureChevronImage_];

  v40 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v41 = [v40 &selRef__disclosureChevronImage_];

  v42 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.2];
  v658 = [v42 &selRef__disclosureChevronImage_];

  v43 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.25];
  v639 = [v43 &selRef__disclosureChevronImage_];

  v44 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.3];
  v45 = [v44 &selRef__disclosureChevronImage_];

  v46 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
  v654 = [v46 &selRef__disclosureChevronImage_];

  v47 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.6];
  v655 = [v47 &selRef__disclosureChevronImage_];

  v48 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];
  v596 = [v48 &selRef__disclosureChevronImage_];

  v49 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.5 green:0.5 blue:0.5 alpha:0.0];
  v595 = [v49 &selRef__disclosureChevronImage_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40098, &unk_1BE0C7430);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1BE106E30;
  *(v50 + 32) = 0x79614C20746F6F52;
  *(v50 + 40) = 0xEA00000000007265;
  v637 = v2;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  *v672 = v2;
  memset(&v672[8], 0, 48);
  *&v672[56] = v2;
  v673 = 0u;
  v674 = 0u;
  v675 = 0u;
  v677 = 0u;
  v678 = 0u;
  v679 = 0u;
  v676 = v2;
  v680 = v2;
  v681 = 0u;
  v682 = 0u;
  v683 = 0u;
  sub_1BD289374(v672, v2645);
  sub_1BD2893D0(&v676);
  v51 = v674;
  *(v50 + 112) = v673;
  *(v50 + 128) = v51;
  *(v50 + 144) = v675;
  v52 = *&v672[16];
  *(v50 + 48) = *v672;
  *(v50 + 64) = v52;
  v53 = *&v672[48];
  *(v50 + 80) = *&v672[32];
  *(v50 + 96) = v53;
  *(v50 + 160) = 0xD000000000000018;
  *(v50 + 168) = 0x80000001BE140CA0;
  v636 = v4;
  v635 = v14;
  v634 = v16;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v684 = v14;
  memset(&v685[8], 0, 32);
  *v685 = v4;
  *&v685[40] = v16;
  *&v686 = 0;
  *(&v686 + 1) = v4;
  v687 = 0u;
  v688 = 0u;
  v689[0] = v14;
  v689[1] = 0;
  v690 = 0u;
  v691 = 0u;
  v689[2] = v4;
  v692 = v16;
  v693 = 0;
  v694 = v4;
  v696 = 0u;
  v695 = 0u;
  sub_1BD289374(&v684, v2645);
  sub_1BD2893D0(v689);
  v54 = v687;
  *(v50 + 240) = v686;
  *(v50 + 256) = v54;
  *(v50 + 272) = v688;
  v55 = *v685;
  *(v50 + 176) = v684;
  *(v50 + 192) = v55;
  v56 = *&v685[32];
  *(v50 + 208) = *&v685[16];
  *(v50 + 224) = v56;
  *(v50 + 288) = 0xD000000000000022;
  *(v50 + 296) = 0x80000001BE140CC0;
  v633 = v670;
  v632 = v668;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v697 = v670;
  memset(&v698[8], 0, 32);
  *v698 = v4;
  *&v698[40] = v668;
  *&v699 = 0;
  *(&v699 + 1) = v4;
  v700 = 0u;
  v701 = 0u;
  v702[0] = v670;
  v702[1] = 0;
  v703 = 0u;
  v704 = 0u;
  v702[2] = v4;
  v705 = v668;
  v706 = 0;
  v707 = v4;
  v709 = 0u;
  v708 = 0u;
  sub_1BD289374(&v697, v2645);
  sub_1BD2893D0(v702);
  v57 = v700;
  *(v50 + 368) = v699;
  *(v50 + 384) = v57;
  *(v50 + 400) = v701;
  v58 = *v698;
  *(v50 + 304) = v697;
  *(v50 + 320) = v58;
  v59 = *&v698[32];
  *(v50 + 336) = *&v698[16];
  *(v50 + 352) = v59;
  *(v50 + 416) = 0xD000000000000020;
  *(v50 + 424) = 0x80000001BE140CF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD400A0, qword_1BE106F80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1BE0B6CA0;
  *(v60 + 32) = v45;
  *(v60 + 40) = v41;
  v61 = v45;
  v62 = v41;
  v63 = v61;
  v64 = v62;
  v65 = v63;
  v66 = v64;
  v631 = v65;
  v67 = v66;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1BE0B6CA0;
  *(v68 + 32) = v655;
  *(v68 + 40) = v41;
  v630 = v655;
  v629 = v67;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v712 = 0u;
  v711 = 0u;
  v710 = 0u;
  memset(&v713[8], 0, 48);
  *v713 = v60;
  *&v713[56] = v68;
  memset(v714, 0, sizeof(v714));
  v716 = 0u;
  v717 = 0u;
  v718 = 0u;
  v715 = v60;
  v719 = v68;
  sub_1BD289374(&v710, v2645);
  sub_1BD2893D0(v714);
  v69 = *&v713[32];
  *(v50 + 496) = *&v713[16];
  *(v50 + 512) = v69;
  *(v50 + 528) = *&v713[48];
  v70 = v711;
  *(v50 + 432) = v710;
  *(v50 + 448) = v70;
  v71 = *v713;
  *(v50 + 464) = v712;
  *(v50 + 480) = v71;
  *(v50 + 544) = 0x6C6C69466F747561;
  *(v50 + 552) = 0xEA00000000003130;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v720 = v2;
  memset(&v721[8], 0, 32);
  *v721 = v4;
  *&v721[40] = v2;
  *&v722 = 0;
  *(&v722 + 1) = v4;
  v723 = 0u;
  v724 = 0u;
  v725[0] = v2;
  v725[1] = 0;
  v726 = 0u;
  v727 = 0u;
  v725[2] = v4;
  v728 = v2;
  v729 = 0;
  v730 = v4;
  v732 = 0u;
  v731 = 0u;
  sub_1BD289374(&v720, v2645);
  sub_1BD2893D0(v725);
  v72 = v723;
  *(v50 + 624) = v722;
  *(v50 + 640) = v72;
  *(v50 + 656) = v724;
  v73 = *v721;
  *(v50 + 560) = v720;
  *(v50 + 576) = v73;
  v74 = *&v721[32];
  *(v50 + 592) = *&v721[16];
  *(v50 + 608) = v74;
  *(v50 + 672) = 0xD00000000000001BLL;
  *(v50 + 680) = 0x80000001BE140D20;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v669 = v2;
  v733 = v2;
  memset(&v734[8], 0, 32);
  *v734 = v4;
  *&v734[40] = v2;
  *&v735 = 0;
  *(&v735 + 1) = v4;
  v736 = 0u;
  v737 = 0u;
  v738[0] = v2;
  v738[1] = 0;
  v739 = 0u;
  v740 = 0u;
  v738[2] = v4;
  v741 = v2;
  v742 = 0;
  v743 = v4;
  v745 = 0u;
  v744 = 0u;
  sub_1BD289374(&v733, v2645);
  sub_1BD2893D0(v738);
  v75 = v736;
  *(v50 + 752) = v735;
  *(v50 + 768) = v75;
  *(v50 + 784) = v737;
  v76 = *v734;
  *(v50 + 688) = v733;
  *(v50 + 704) = v76;
  v77 = *&v734[32];
  *(v50 + 720) = *&v734[16];
  *(v50 + 736) = v77;
  *(v50 + 800) = 0xD000000000000019;
  *(v50 + 808) = 0x80000001BE140D40;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1BE0B6CA0;
  *(v78 + 32) = v662;
  *(v78 + 40) = v666;
  v79 = v662;
  v80 = v666;
  v81 = v79;
  v82 = v80;
  v628 = v81;
  v627 = v82;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1BE0B6CA0;
  *(v83 + 32) = v664;
  *(v83 + 40) = v663;
  v84 = v664;
  v85 = v663;
  v86 = v84;
  v87 = v85;
  v626 = v86;
  v625 = v87;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v748 = 0u;
  v747 = 0u;
  v746 = 0u;
  memset(&v749[8], 0, 48);
  *v749 = v78;
  *&v749[56] = v83;
  memset(v750, 0, sizeof(v750));
  v752 = 0u;
  v753 = 0u;
  v754 = 0u;
  v751 = v78;
  v755 = v83;
  sub_1BD289374(&v746, v2645);
  sub_1BD2893D0(v750);
  v88 = *&v749[32];
  *(v50 + 880) = *&v749[16];
  *(v50 + 896) = v88;
  *(v50 + 912) = *&v749[48];
  v89 = v747;
  *(v50 + 816) = v746;
  *(v50 + 832) = v89;
  v90 = *v749;
  *(v50 + 848) = v748;
  *(v50 + 864) = v90;
  *(v50 + 928) = 0xD00000000000001BLL;
  *(v50 + 936) = 0x80000001BE140D60;
  v624 = v657;
  v623 = v646;
  v622 = v653;
  v621 = v645;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  *&v756 = v646;
  *(&v756 + 1) = v657;
  memset(&v757[8], 0, 32);
  *v757 = v4;
  *&v757[40] = v653;
  *&v758 = v645;
  *(&v758 + 1) = v4;
  v759 = 0u;
  v760 = 0u;
  v761[0] = v646;
  v761[1] = v657;
  v762 = 0u;
  v763 = 0u;
  v761[2] = v4;
  v764 = v653;
  v765 = v645;
  v766 = v4;
  v768 = 0u;
  v767 = 0u;
  sub_1BD289374(&v756, v2645);
  sub_1BD2893D0(v761);
  v91 = v759;
  *(v50 + 1008) = v758;
  *(v50 + 1024) = v91;
  *(v50 + 1040) = v760;
  v92 = *v757;
  *(v50 + 944) = v756;
  *(v50 + 960) = v92;
  v93 = *&v757[32];
  *(v50 + 976) = *&v757[16];
  *(v50 + 992) = v93;
  *(v50 + 1056) = 0xD000000000000023;
  *(v50 + 1064) = 0x80000001BE140D80;
  v620 = v656;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v769 = v656;
  memset(&v770[8], 0, 32);
  *v770 = v4;
  *&v770[40] = v656;
  *&v771 = 0;
  *(&v771 + 1) = v4;
  v772 = 0u;
  v773 = 0u;
  v774[0] = v656;
  v774[1] = 0;
  v775 = 0u;
  v776 = 0u;
  v774[2] = v4;
  v777 = v656;
  v778 = 0;
  v779 = v4;
  v781 = 0u;
  v780 = 0u;
  sub_1BD289374(&v769, v2645);
  sub_1BD2893D0(v774);
  v94 = *&v770[16];
  *(v50 + 1120) = *&v770[32];
  v95 = v772;
  *(v50 + 1136) = v771;
  *(v50 + 1152) = v95;
  *(v50 + 1168) = v773;
  v96 = *v770;
  *(v50 + 1072) = v769;
  *(v50 + 1088) = v96;
  *(v50 + 1104) = v94;
  *(v50 + 1184) = 0xD000000000000037;
  *(v50 + 1192) = 0x80000001BE140DB0;
  v97 = v594;
  v98 = v643;
  v99 = v97;
  v100 = v98;
  v101 = v99;
  v102 = v100;
  v103 = v101;
  v104 = v102;
  v105 = v103;
  v106 = v104;
  v107 = v105;
  v108 = v106;
  v619 = v107;
  v618 = v108;
  v109 = v644;
  v110 = v647;
  v111 = v109;
  v112 = v110;
  v113 = v111;
  v114 = v112;
  v115 = v113;
  v116 = v114;
  v117 = v115;
  v118 = v116;
  v119 = v117;
  v120 = v118;
  v617 = v119;
  v614 = v120;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v782[8], 0, 32);
  *v782 = v643;
  *&v782[40] = v594;
  *&v783 = 0;
  *(&v783 + 1) = v647;
  v784 = 0u;
  v785 = 0u;
  v786 = v644;
  v788 = 0u;
  v789 = 0u;
  v787 = v643;
  v790 = v594;
  v791 = 0;
  v792 = v647;
  v793 = 0u;
  v794 = 0u;
  v795 = v644;
  v796 = 0;
  sub_1BD289374(v782, v2645);
  sub_1BD2893D0(&v787);
  v121 = *&v782[32];
  *(v50 + 1248) = v783;
  v122 = v785;
  *(v50 + 1264) = v784;
  *(v50 + 1280) = v122;
  *(v50 + 1296) = v786;
  v123 = *&v782[16];
  *(v50 + 1200) = *v782;
  *(v50 + 1216) = v123;
  *(v50 + 1232) = v121;
  *(v50 + 1312) = 0xD000000000000037;
  *(v50 + 1320) = 0x80000001BE140DF0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v797[8], 0, 32);
  *v797 = v643;
  *&v797[40] = v594;
  *&v798 = 0;
  *(&v798 + 1) = v647;
  v799 = 0u;
  v800 = 0u;
  v801 = v644;
  v803 = 0u;
  v804 = 0u;
  v802 = v643;
  v805 = v594;
  v806 = 0;
  v807 = v647;
  v808 = 0u;
  v809 = 0u;
  v810 = v644;
  v811 = 0;
  sub_1BD289374(v797, v2645);
  sub_1BD2893D0(&v802);
  v124 = *&v797[32];
  *(v50 + 1376) = v798;
  v125 = v800;
  *(v50 + 1392) = v799;
  *(v50 + 1408) = v125;
  *(v50 + 1424) = v801;
  v126 = *&v797[16];
  *(v50 + 1328) = *v797;
  *(v50 + 1344) = v126;
  *(v50 + 1360) = v124;
  *(v50 + 1440) = 0xD000000000000037;
  *(v50 + 1448) = 0x80000001BE140E30;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v812[8], 0, 32);
  *v812 = v643;
  *&v812[40] = v594;
  *&v813 = 0;
  *(&v813 + 1) = v647;
  v814 = 0u;
  v815 = 0u;
  v816 = v644;
  v818 = 0u;
  v819 = 0u;
  v817 = v643;
  v820 = v594;
  v821 = 0;
  v822 = v647;
  v823 = 0u;
  v824 = 0u;
  v825 = v644;
  v826 = 0;
  sub_1BD289374(v812, v2645);
  sub_1BD2893D0(&v817);
  v127 = *&v812[32];
  *(v50 + 1504) = v813;
  v128 = v815;
  *(v50 + 1520) = v814;
  *(v50 + 1536) = v128;
  *(v50 + 1552) = v816;
  v129 = *&v812[16];
  *(v50 + 1456) = *v812;
  *(v50 + 1472) = v129;
  *(v50 + 1488) = v127;
  *(v50 + 1568) = 0xD00000000000002FLL;
  *(v50 + 1576) = 0x80000001BE140E70;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v827 = v594;
  memset(&v828[8], 0, 32);
  *v828 = v4;
  *&v828[40] = v644;
  *&v829 = 0;
  *(&v829 + 1) = v4;
  v830 = 0u;
  v831 = 0u;
  v832[0] = v594;
  v832[1] = 0;
  v833 = 0u;
  v834 = 0u;
  v832[2] = v4;
  v835 = v644;
  v836 = 0;
  v837 = v4;
  v839 = 0u;
  v838 = 0u;
  sub_1BD289374(&v827, v2645);
  sub_1BD2893D0(v832);
  v130 = *&v828[16];
  *(v50 + 1632) = *&v828[32];
  v131 = v830;
  *(v50 + 1648) = v829;
  *(v50 + 1664) = v131;
  *(v50 + 1680) = v831;
  v132 = *v828;
  *(v50 + 1584) = v827;
  *(v50 + 1600) = v132;
  *(v50 + 1616) = v130;
  *(v50 + 1696) = 0xD000000000000037;
  *(v50 + 1704) = 0x80000001BE140EA0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v840[8], 0, 32);
  *v840 = v643;
  *&v840[40] = v594;
  *&v841 = 0;
  *(&v841 + 1) = v647;
  v842 = 0u;
  v843 = 0u;
  v844 = v644;
  v846 = 0u;
  v847 = 0u;
  v845 = v643;
  v848 = v594;
  v849 = 0;
  v850 = v647;
  v851 = 0u;
  v852 = 0u;
  v853 = v644;
  v854 = 0;
  sub_1BD289374(v840, v2645);
  sub_1BD2893D0(&v845);
  v133 = *&v840[32];
  *(v50 + 1760) = v841;
  v134 = v843;
  *(v50 + 1776) = v842;
  *(v50 + 1792) = v134;
  *(v50 + 1808) = v844;
  v135 = *&v840[16];
  *(v50 + 1712) = *v840;
  *(v50 + 1728) = v135;
  *(v50 + 1744) = v133;
  *(v50 + 1824) = 0xD000000000000037;
  *(v50 + 1832) = 0x80000001BE140EE0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v855[8], 0, 32);
  *v855 = v643;
  *&v855[40] = v594;
  *&v856 = 0;
  *(&v856 + 1) = v647;
  v857 = 0u;
  v858 = 0u;
  v859 = v644;
  v861 = 0u;
  v862 = 0u;
  v860 = v643;
  v863 = v594;
  v864 = 0;
  v865 = v647;
  v866 = 0u;
  v867 = 0u;
  v868 = v644;
  v869 = 0;
  sub_1BD289374(v855, v2645);
  sub_1BD2893D0(&v860);
  v136 = *&v855[32];
  *(v50 + 1888) = v856;
  v137 = v858;
  *(v50 + 1904) = v857;
  *(v50 + 1920) = v137;
  *(v50 + 1936) = v859;
  v138 = *&v855[16];
  *(v50 + 1840) = *v855;
  *(v50 + 1856) = v138;
  *(v50 + 1872) = v136;
  *(v50 + 1952) = 0xD000000000000037;
  *(v50 + 1960) = 0x80000001BE140F20;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v870[8], 0, 32);
  *v870 = v643;
  *&v870[40] = v594;
  *&v871 = 0;
  *(&v871 + 1) = v647;
  v872 = 0u;
  v873 = 0u;
  v874 = v644;
  v876 = 0u;
  v877 = 0u;
  v875 = v643;
  v878 = v594;
  v879 = 0;
  v880 = v647;
  v881 = 0u;
  v882 = 0u;
  v883 = v644;
  v884 = 0;
  sub_1BD289374(v870, v2645);
  sub_1BD2893D0(&v875);
  v139 = *&v870[32];
  *(v50 + 2016) = v871;
  v140 = v873;
  *(v50 + 2032) = v872;
  *(v50 + 2048) = v140;
  *(v50 + 2064) = v874;
  v141 = *&v870[16];
  *(v50 + 1968) = *v870;
  *(v50 + 1984) = v141;
  *(v50 + 2000) = v139;
  *(v50 + 2080) = 0xD00000000000002FLL;
  *(v50 + 2088) = 0x80000001BE140F60;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v885 = v594;
  memset(&v886[8], 0, 32);
  *v886 = v4;
  *&v886[40] = v644;
  *&v887 = 0;
  *(&v887 + 1) = v4;
  v888 = 0u;
  v889 = 0u;
  v890[0] = v594;
  v890[1] = 0;
  v891 = 0u;
  v892 = 0u;
  v890[2] = v4;
  v893 = v644;
  v894 = 0;
  v895 = v4;
  v897 = 0u;
  v896 = 0u;
  sub_1BD289374(&v885, v2645);
  sub_1BD2893D0(v890);
  v142 = *&v886[16];
  *(v50 + 2144) = *&v886[32];
  v143 = v888;
  *(v50 + 2160) = v887;
  *(v50 + 2176) = v143;
  *(v50 + 2192) = v889;
  v144 = *v886;
  *(v50 + 2096) = v885;
  *(v50 + 2112) = v144;
  *(v50 + 2128) = v142;
  *(v50 + 2208) = 0xD000000000000037;
  *(v50 + 2216) = 0x80000001BE140F90;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v898[8], 0, 32);
  *v898 = v643;
  *&v898[40] = v594;
  *&v899 = 0;
  *(&v899 + 1) = v647;
  v900 = 0u;
  v901 = 0u;
  v902 = v644;
  v904 = 0u;
  v905 = 0u;
  v903 = v643;
  v906 = v594;
  v907 = 0;
  v908 = v647;
  v909 = 0u;
  v910 = 0u;
  v911 = v644;
  v912 = 0;
  sub_1BD289374(v898, v2645);
  sub_1BD2893D0(&v903);
  v145 = *&v898[32];
  *(v50 + 2272) = v899;
  v146 = v901;
  *(v50 + 2288) = v900;
  *(v50 + 2304) = v146;
  *(v50 + 2320) = v902;
  v147 = *&v898[16];
  *(v50 + 2224) = *v898;
  *(v50 + 2240) = v147;
  *(v50 + 2256) = v145;
  *(v50 + 2336) = 0xD000000000000037;
  *(v50 + 2344) = 0x80000001BE140FD0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v913[8], 0, 32);
  *v913 = v643;
  *&v913[40] = v594;
  *&v914 = 0;
  *(&v914 + 1) = v647;
  v915 = 0u;
  v916 = 0u;
  v917 = v644;
  v919 = 0u;
  v920 = 0u;
  v918 = v643;
  v921 = v594;
  v922 = 0;
  v923 = v647;
  v924 = 0u;
  v925 = 0u;
  v926 = v644;
  v927 = 0;
  sub_1BD289374(v913, v2645);
  sub_1BD2893D0(&v918);
  v148 = *&v913[32];
  *(v50 + 2400) = v914;
  v149 = v916;
  *(v50 + 2416) = v915;
  *(v50 + 2432) = v149;
  *(v50 + 2448) = v917;
  v150 = *&v913[16];
  *(v50 + 2352) = *v913;
  *(v50 + 2368) = v150;
  *(v50 + 2384) = v148;
  *(v50 + 2464) = 0xD000000000000037;
  *(v50 + 2472) = 0x80000001BE141010;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v928[8], 0, 32);
  *v928 = v643;
  *&v928[40] = v594;
  *&v929 = 0;
  *(&v929 + 1) = v647;
  v930 = 0u;
  v931 = 0u;
  v932 = v644;
  v934 = 0u;
  v935 = 0u;
  v933 = v643;
  v936 = v594;
  v937 = 0;
  v938 = v647;
  v939 = 0u;
  v940 = 0u;
  v941 = v644;
  v942 = 0;
  sub_1BD289374(v928, v2645);
  sub_1BD2893D0(&v933);
  v151 = *&v928[32];
  *(v50 + 2528) = v929;
  v152 = v931;
  *(v50 + 2544) = v930;
  *(v50 + 2560) = v152;
  *(v50 + 2576) = v932;
  v153 = *&v928[16];
  *(v50 + 2480) = *v928;
  *(v50 + 2496) = v153;
  *(v50 + 2512) = v151;
  *(v50 + 2592) = 0xD00000000000002FLL;
  *(v50 + 2600) = 0x80000001BE141050;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v943 = v594;
  memset(&v944[8], 0, 32);
  *v944 = v4;
  *&v944[40] = v644;
  *&v945 = 0;
  *(&v945 + 1) = v4;
  v946 = 0u;
  v947 = 0u;
  v948[0] = v594;
  v948[1] = 0;
  v949 = 0u;
  v950 = 0u;
  v948[2] = v4;
  v951 = v644;
  v952 = 0;
  v953 = v4;
  v955 = 0u;
  v954 = 0u;
  sub_1BD289374(&v943, v2645);
  sub_1BD2893D0(v948);
  v154 = *&v944[16];
  *(v50 + 2656) = *&v944[32];
  v155 = v946;
  *(v50 + 2672) = v945;
  *(v50 + 2688) = v155;
  *(v50 + 2704) = v947;
  v156 = *v944;
  *(v50 + 2608) = v943;
  *(v50 + 2624) = v156;
  *(v50 + 2640) = v154;
  *(v50 + 2720) = 0xD000000000000037;
  *(v50 + 2728) = 0x80000001BE141080;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v956[8], 0, 32);
  *v956 = v643;
  *&v956[40] = v594;
  *&v957 = 0;
  *(&v957 + 1) = v647;
  v958 = 0u;
  v959 = 0u;
  v960 = v644;
  v962 = 0u;
  v963 = 0u;
  v961 = v643;
  v964 = v594;
  v965 = 0;
  v966 = v647;
  v967 = 0u;
  v968 = 0u;
  v969 = v644;
  v970 = 0;
  sub_1BD289374(v956, v2645);
  sub_1BD2893D0(&v961);
  v157 = *&v956[32];
  *(v50 + 2784) = v957;
  v158 = v959;
  *(v50 + 2800) = v958;
  *(v50 + 2816) = v158;
  *(v50 + 2832) = v960;
  v159 = *&v956[16];
  *(v50 + 2736) = *v956;
  *(v50 + 2752) = v159;
  *(v50 + 2768) = v157;
  *(v50 + 2848) = 0xD000000000000037;
  *(v50 + 2856) = 0x80000001BE1410C0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v971[8], 0, 32);
  *v971 = v643;
  *&v971[40] = v594;
  *&v972 = 0;
  *(&v972 + 1) = v647;
  v973 = 0u;
  v974 = 0u;
  v975 = v644;
  v977 = 0u;
  v978 = 0u;
  v976 = v643;
  v979 = v594;
  v980 = 0;
  v981 = v647;
  v982 = 0u;
  v983 = 0u;
  v984 = v644;
  v985 = 0;
  sub_1BD289374(v971, v2645);
  sub_1BD2893D0(&v976);
  v160 = *&v971[32];
  *(v50 + 2912) = v972;
  v161 = v974;
  *(v50 + 2928) = v973;
  *(v50 + 2944) = v161;
  *(v50 + 2960) = v975;
  v162 = *&v971[16];
  *(v50 + 2864) = *v971;
  *(v50 + 2880) = v162;
  *(v50 + 2896) = v160;
  *(v50 + 2976) = 0xD000000000000037;
  *(v50 + 2984) = 0x80000001BE141100;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v986[8], 0, 32);
  *v986 = v643;
  *&v986[40] = v594;
  *&v987 = 0;
  *(&v987 + 1) = v647;
  v988 = 0u;
  v989 = 0u;
  v990 = v644;
  v992 = 0u;
  v993 = 0u;
  v991 = v643;
  v994 = v594;
  v995 = 0;
  v996 = v647;
  v997 = 0u;
  v998 = 0u;
  v999 = v644;
  v1000 = 0;
  sub_1BD289374(v986, v2645);
  sub_1BD2893D0(&v991);
  v163 = *&v986[32];
  *(v50 + 3040) = v987;
  v164 = v989;
  *(v50 + 3056) = v988;
  *(v50 + 3072) = v164;
  *(v50 + 3088) = v990;
  v165 = *&v986[16];
  *(v50 + 2992) = *v986;
  *(v50 + 3008) = v165;
  *(v50 + 3024) = v163;
  *(v50 + 3104) = 0xD00000000000002FLL;
  *(v50 + 3112) = 0x80000001BE141140;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1001 = v594;
  memset(&v1002[8], 0, 32);
  *v1002 = v4;
  *&v1002[40] = v644;
  *&v1003 = 0;
  *(&v1003 + 1) = v4;
  v1004 = 0u;
  v1005 = 0u;
  v1006[0] = v594;
  v1006[1] = 0;
  v1007 = 0u;
  v1008 = 0u;
  v1006[2] = v4;
  v1009 = v644;
  v1010 = 0;
  v1011 = v4;
  v1013 = 0u;
  v1012 = 0u;
  sub_1BD289374(&v1001, v2645);
  sub_1BD2893D0(v1006);
  v166 = *&v1002[16];
  *(v50 + 3168) = *&v1002[32];
  v167 = v1004;
  *(v50 + 3184) = v1003;
  *(v50 + 3200) = v167;
  *(v50 + 3216) = v1005;
  v168 = *v1002;
  *(v50 + 3120) = v1001;
  *(v50 + 3136) = v168;
  *(v50 + 3152) = v166;
  *(v50 + 3232) = 0xD00000000000003ELL;
  *(v50 + 3240) = 0x80000001BE141170;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1014[8], 0, 32);
  *v1014 = v643;
  *&v1014[40] = v594;
  *&v1015 = 0;
  *(&v1015 + 1) = v647;
  v1016 = 0u;
  v1017 = 0u;
  v1018 = v644;
  v1020 = 0u;
  v1021 = 0u;
  v1019 = v643;
  v1022 = v594;
  v1023 = 0;
  v1024 = v647;
  v1025 = 0u;
  v1026 = 0u;
  v1027 = v644;
  v1028 = 0;
  sub_1BD289374(v1014, v2645);
  sub_1BD2893D0(&v1019);
  v169 = *&v1014[32];
  *(v50 + 3296) = v1015;
  v170 = v1017;
  *(v50 + 3312) = v1016;
  *(v50 + 3328) = v170;
  *(v50 + 3344) = v1018;
  v171 = *&v1014[16];
  *(v50 + 3248) = *v1014;
  *(v50 + 3264) = v171;
  *(v50 + 3280) = v169;
  *(v50 + 3360) = 0xD00000000000003ELL;
  *(v50 + 3368) = 0x80000001BE1411B0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1029[8], 0, 32);
  *v1029 = v643;
  *&v1029[40] = v594;
  *&v1030 = 0;
  *(&v1030 + 1) = v647;
  v1031 = 0u;
  v1032 = 0u;
  v1033 = v644;
  v1035 = 0u;
  v1036 = 0u;
  v1034 = v643;
  v1037 = v594;
  v1038 = 0;
  v1039 = v647;
  v1040 = 0u;
  v1041 = 0u;
  v1042 = v644;
  v1043 = 0;
  sub_1BD289374(v1029, v2645);
  sub_1BD2893D0(&v1034);
  v172 = *&v1029[32];
  *(v50 + 3424) = v1030;
  v173 = v1032;
  *(v50 + 3440) = v1031;
  *(v50 + 3456) = v173;
  *(v50 + 3472) = v1033;
  v174 = *&v1029[16];
  *(v50 + 3376) = *v1029;
  *(v50 + 3392) = v174;
  *(v50 + 3408) = v172;
  *(v50 + 3488) = 0xD00000000000003ELL;
  *(v50 + 3496) = 0x80000001BE1411F0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1044[8], 0, 32);
  *v1044 = v643;
  *&v1044[40] = v594;
  *&v1045 = 0;
  *(&v1045 + 1) = v647;
  v1046 = 0u;
  v1047 = 0u;
  v1048 = v644;
  v1050 = 0u;
  v1051 = 0u;
  v1049 = v643;
  v1052 = v594;
  v1053 = 0;
  v1054 = v647;
  v1055 = 0u;
  v1056 = 0u;
  v1057 = v644;
  v1058 = 0;
  sub_1BD289374(v1044, v2645);
  sub_1BD2893D0(&v1049);
  v175 = *&v1044[32];
  *(v50 + 3552) = v1045;
  v176 = v1047;
  *(v50 + 3568) = v1046;
  *(v50 + 3584) = v176;
  *(v50 + 3600) = v1048;
  v177 = *&v1044[16];
  *(v50 + 3504) = *v1044;
  *(v50 + 3520) = v177;
  *(v50 + 3536) = v175;
  *(v50 + 3616) = 0xD000000000000036;
  *(v50 + 3624) = 0x80000001BE141230;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1059[8], 0, 32);
  *v1059 = v643;
  *&v1059[40] = v594;
  *&v1060 = 0;
  *(&v1060 + 1) = v647;
  v1061 = 0u;
  v1062 = 0u;
  v1063 = v644;
  v1065 = 0u;
  v1066 = 0u;
  v1064 = v643;
  v1067 = v594;
  v1068 = 0;
  v1069 = v647;
  v1070 = 0u;
  v1071 = 0u;
  v1072 = v644;
  v1073 = 0;
  sub_1BD289374(v1059, v2645);
  sub_1BD2893D0(&v1064);
  v178 = *&v1059[32];
  *(v50 + 3680) = v1060;
  v179 = v1062;
  *(v50 + 3696) = v1061;
  *(v50 + 3712) = v179;
  *(v50 + 3728) = v1063;
  v180 = *&v1059[16];
  *(v50 + 3632) = *v1059;
  *(v50 + 3648) = v180;
  *(v50 + 3664) = v178;
  *(v50 + 3744) = 0xD00000000000003ELL;
  *(v50 + 3752) = 0x80000001BE141270;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1074[8], 0, 32);
  *v1074 = v643;
  *&v1074[40] = v594;
  *&v1075 = 0;
  *(&v1075 + 1) = v647;
  v1076 = 0u;
  v1077 = 0u;
  v1078 = v644;
  v1080 = 0u;
  v1081 = 0u;
  v1079 = v643;
  v1082 = v594;
  v1083 = 0;
  v1084 = v647;
  v1085 = 0u;
  v1086 = 0u;
  v1087 = v644;
  v1088 = 0;
  sub_1BD289374(v1074, v2645);
  sub_1BD2893D0(&v1079);
  v181 = *&v1074[32];
  *(v50 + 3808) = v1075;
  v182 = v1077;
  *(v50 + 3824) = v1076;
  *(v50 + 3840) = v182;
  *(v50 + 3856) = v1078;
  v183 = *&v1074[16];
  *(v50 + 3760) = *v1074;
  *(v50 + 3776) = v183;
  *(v50 + 3792) = v181;
  *(v50 + 3872) = 0xD00000000000003ELL;
  *(v50 + 3880) = 0x80000001BE1412B0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1089[8], 0, 32);
  *v1089 = v643;
  *&v1089[40] = v594;
  *&v1090 = 0;
  *(&v1090 + 1) = v647;
  v1091 = 0u;
  v1092 = 0u;
  v1093 = v644;
  v1095 = 0u;
  v1096 = 0u;
  v1094 = v643;
  v1097 = v594;
  v1098 = 0;
  v1099 = v647;
  v1100 = 0u;
  v1101 = 0u;
  v1102 = v644;
  v1103 = 0;
  sub_1BD289374(v1089, v2645);
  sub_1BD2893D0(&v1094);
  v184 = *&v1089[32];
  *(v50 + 3936) = v1090;
  v185 = v1092;
  *(v50 + 3952) = v1091;
  *(v50 + 3968) = v185;
  *(v50 + 3984) = v1093;
  v186 = *&v1089[16];
  *(v50 + 3888) = *v1089;
  *(v50 + 3904) = v186;
  *(v50 + 3920) = v184;
  *(v50 + 4000) = 0xD00000000000003ELL;
  *(v50 + 4008) = 0x80000001BE1412F0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1104[8], 0, 32);
  *v1104 = v643;
  *&v1104[40] = v594;
  *&v1105 = 0;
  *(&v1105 + 1) = v647;
  v1106 = 0u;
  v1107 = 0u;
  v1108 = v644;
  v1110 = 0u;
  v1111 = 0u;
  v1109 = v643;
  v1112 = v594;
  v1113 = 0;
  v1114 = v647;
  v1115 = 0u;
  v1116 = 0u;
  v1117 = v644;
  v1118 = 0;
  sub_1BD289374(v1104, v2645);
  sub_1BD2893D0(&v1109);
  v187 = *&v1104[32];
  *(v50 + 4064) = v1105;
  v188 = v1107;
  *(v50 + 4080) = v1106;
  *(v50 + 4096) = v188;
  *(v50 + 4112) = v1108;
  v189 = *&v1104[16];
  *(v50 + 4016) = *v1104;
  *(v50 + 4032) = v189;
  *(v50 + 4048) = v187;
  *(v50 + 4128) = 0xD000000000000036;
  *(v50 + 4136) = 0x80000001BE141330;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1119[8], 0, 32);
  *v1119 = v643;
  *&v1119[40] = v594;
  *&v1120 = 0;
  *(&v1120 + 1) = v647;
  v1121 = 0u;
  v1122 = 0u;
  v1123 = v644;
  v1125 = 0u;
  v1126 = 0u;
  v1124 = v643;
  v1127 = v594;
  v1128 = 0;
  v1129 = v647;
  v1130 = 0u;
  v1131 = 0u;
  v1132 = v644;
  v1133 = 0;
  sub_1BD289374(v1119, v2645);
  sub_1BD2893D0(&v1124);
  v190 = *&v1119[32];
  *(v50 + 4192) = v1120;
  v191 = v1122;
  *(v50 + 4208) = v1121;
  *(v50 + 4224) = v191;
  *(v50 + 4240) = v1123;
  v192 = *&v1119[16];
  *(v50 + 4144) = *v1119;
  *(v50 + 4160) = v192;
  *(v50 + 4176) = v190;
  *(v50 + 4256) = 0xD00000000000003ELL;
  *(v50 + 4264) = 0x80000001BE141370;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1134[8], 0, 32);
  *v1134 = v643;
  *&v1134[40] = v594;
  *&v1135 = 0;
  *(&v1135 + 1) = v647;
  v1136 = 0u;
  v1137 = 0u;
  v1138 = v644;
  v1140 = 0u;
  v1141 = 0u;
  v1139 = v643;
  v1142 = v594;
  v1143 = 0;
  v1144 = v647;
  v1145 = 0u;
  v1146 = 0u;
  v1147 = v644;
  v1148 = 0;
  sub_1BD289374(v1134, v2645);
  sub_1BD2893D0(&v1139);
  v193 = *&v1134[32];
  *(v50 + 4320) = v1135;
  v194 = v1137;
  *(v50 + 4336) = v1136;
  *(v50 + 4352) = v194;
  *(v50 + 4368) = v1138;
  v195 = *&v1134[16];
  *(v50 + 4272) = *v1134;
  *(v50 + 4288) = v195;
  *(v50 + 4304) = v193;
  *(v50 + 4384) = 0xD00000000000003ELL;
  *(v50 + 4392) = 0x80000001BE1413B0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1149[8], 0, 32);
  *v1149 = v643;
  *&v1149[40] = v594;
  *&v1150 = 0;
  *(&v1150 + 1) = v647;
  v1151 = 0u;
  v1152 = 0u;
  v1153 = v644;
  v1155 = 0u;
  v1156 = 0u;
  v1154 = v643;
  v1157 = v594;
  v1158 = 0;
  v1159 = v647;
  v1160 = 0u;
  v1161 = 0u;
  v1162 = v644;
  v1163 = 0;
  sub_1BD289374(v1149, v2645);
  sub_1BD2893D0(&v1154);
  v196 = *&v1149[32];
  *(v50 + 4448) = v1150;
  v197 = v1152;
  *(v50 + 4464) = v1151;
  *(v50 + 4480) = v197;
  *(v50 + 4496) = v1153;
  v198 = *&v1149[16];
  *(v50 + 4400) = *v1149;
  *(v50 + 4416) = v198;
  *(v50 + 4432) = v196;
  *(v50 + 4512) = 0xD00000000000003ELL;
  *(v50 + 4520) = 0x80000001BE1413F0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1164[8], 0, 32);
  *v1164 = v643;
  *&v1164[40] = v594;
  *&v1165 = 0;
  *(&v1165 + 1) = v647;
  v1166 = 0u;
  v1167 = 0u;
  v1168 = v644;
  v1170 = 0u;
  v1171 = 0u;
  v1169 = v643;
  v1172 = v594;
  v1173 = 0;
  v1174 = v647;
  v1175 = 0u;
  v1176 = 0u;
  v1177 = v644;
  v1178 = 0;
  sub_1BD289374(v1164, v2645);
  sub_1BD2893D0(&v1169);
  v199 = *&v1164[32];
  *(v50 + 4576) = v1165;
  v200 = v1167;
  *(v50 + 4592) = v1166;
  *(v50 + 4608) = v200;
  *(v50 + 4624) = v1168;
  v201 = *&v1164[16];
  *(v50 + 4528) = *v1164;
  *(v50 + 4544) = v201;
  *(v50 + 4560) = v199;
  *(v50 + 4640) = 0xD000000000000036;
  *(v50 + 4648) = 0x80000001BE141430;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1179[8], 0, 32);
  *v1179 = v643;
  *&v1179[40] = v594;
  *&v1180 = 0;
  *(&v1180 + 1) = v647;
  v1181 = 0u;
  v1182 = 0u;
  v1183 = v644;
  v1185 = 0u;
  v1186 = 0u;
  v1184 = v643;
  v1187 = v594;
  v1188 = 0;
  v1189 = v647;
  v1190 = 0u;
  v1191 = 0u;
  v1192 = v644;
  v1193 = 0;
  sub_1BD289374(v1179, v2645);
  sub_1BD2893D0(&v1184);
  v202 = *&v1179[32];
  *(v50 + 4704) = v1180;
  v203 = v1182;
  *(v50 + 4720) = v1181;
  *(v50 + 4736) = v203;
  *(v50 + 4752) = v1183;
  v204 = *&v1179[16];
  *(v50 + 4656) = *v1179;
  *(v50 + 4672) = v204;
  *(v50 + 4688) = v202;
  *(v50 + 4768) = 0xD00000000000003ELL;
  *(v50 + 4776) = 0x80000001BE141470;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1194[8], 0, 32);
  *v1194 = v643;
  *&v1194[40] = v594;
  *&v1195 = 0;
  *(&v1195 + 1) = v647;
  v1196 = 0u;
  v1197 = 0u;
  v1198 = v644;
  v1200 = 0u;
  v1201 = 0u;
  v1199 = v643;
  v1202 = v594;
  v1203 = 0;
  v1204 = v647;
  v1205 = 0u;
  v1206 = 0u;
  v1207 = v644;
  v1208 = 0;
  sub_1BD289374(v1194, v2645);
  sub_1BD2893D0(&v1199);
  v205 = *&v1194[32];
  *(v50 + 4832) = v1195;
  v206 = v1197;
  *(v50 + 4848) = v1196;
  *(v50 + 4864) = v206;
  *(v50 + 4880) = v1198;
  v207 = *&v1194[16];
  *(v50 + 4784) = *v1194;
  *(v50 + 4800) = v207;
  *(v50 + 4816) = v205;
  *(v50 + 4896) = 0xD00000000000003ELL;
  *(v50 + 4904) = 0x80000001BE1414B0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1209[8], 0, 32);
  *v1209 = v643;
  *&v1209[40] = v594;
  *&v1210 = 0;
  *(&v1210 + 1) = v647;
  v1211 = 0u;
  v1212 = 0u;
  v1213 = v644;
  v1215 = 0u;
  v1216 = 0u;
  v1214 = v643;
  v1217 = v594;
  v1218 = 0;
  v1219 = v647;
  v1220 = 0u;
  v1221 = 0u;
  v1222 = v644;
  v1223 = 0;
  sub_1BD289374(v1209, v2645);
  sub_1BD2893D0(&v1214);
  v208 = *&v1209[32];
  *(v50 + 4960) = v1210;
  v209 = v1212;
  *(v50 + 4976) = v1211;
  *(v50 + 4992) = v209;
  *(v50 + 5008) = v1213;
  v210 = *&v1209[16];
  *(v50 + 4912) = *v1209;
  *(v50 + 4928) = v210;
  *(v50 + 4944) = v208;
  *(v50 + 5024) = 0xD00000000000003ELL;
  *(v50 + 5032) = 0x80000001BE1414F0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1224[8], 0, 32);
  *v1224 = v643;
  *&v1224[40] = v594;
  *&v1225 = 0;
  *(&v1225 + 1) = v647;
  v1226 = 0u;
  v1227 = 0u;
  v1228 = v644;
  v1230 = 0u;
  v1231 = 0u;
  v1229 = v643;
  v1232 = v594;
  v1233 = 0;
  v1234 = v647;
  v1235 = 0u;
  v1236 = 0u;
  v1237 = v644;
  v1238 = 0;
  sub_1BD289374(v1224, v2645);
  sub_1BD2893D0(&v1229);
  v211 = *&v1224[32];
  *(v50 + 5088) = v1225;
  v212 = v1227;
  *(v50 + 5104) = v1226;
  *(v50 + 5120) = v212;
  *(v50 + 5136) = v1228;
  v213 = *&v1224[16];
  *(v50 + 5040) = *v1224;
  *(v50 + 5056) = v213;
  *(v50 + 5072) = v211;
  *(v50 + 5152) = 0xD000000000000036;
  *(v50 + 5160) = 0x80000001BE141530;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1239[8], 0, 32);
  *v1239 = v643;
  *&v1239[40] = v594;
  *&v1240 = 0;
  *(&v1240 + 1) = v647;
  v1241 = 0u;
  v1242 = 0u;
  v1243 = v644;
  v1245 = 0u;
  v1246 = 0u;
  v1244 = v643;
  v1247 = v594;
  v1248 = 0;
  v1249 = v647;
  v1250 = 0u;
  v1251 = 0u;
  v1252 = v644;
  v1253 = 0;
  sub_1BD289374(v1239, v2645);
  sub_1BD2893D0(&v1244);
  v214 = *&v1239[32];
  *(v50 + 5216) = v1240;
  v215 = v1242;
  *(v50 + 5232) = v1241;
  *(v50 + 5248) = v215;
  *(v50 + 5264) = v1243;
  v216 = *&v1239[16];
  *(v50 + 5168) = *v1239;
  *(v50 + 5184) = v216;
  *(v50 + 5200) = v214;
  *(v50 + 5280) = 0xD000000000000015;
  *(v50 + 5288) = 0x80000001BE141570;
  v612 = v652;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1254[8], 0, 48);
  *v1254 = v652;
  *&v1254[56] = v652;
  v1255 = 0u;
  v1256 = 0u;
  v1257 = 0u;
  v1259 = 0u;
  v1260 = 0u;
  v1261 = 0u;
  v1258 = v652;
  v1262 = v652;
  v1263 = 0u;
  v1264 = 0u;
  v1265 = 0u;
  sub_1BD289374(v1254, v2645);
  sub_1BD2893D0(&v1258);
  v217 = *&v1254[32];
  *(v50 + 5344) = *&v1254[48];
  v218 = v1256;
  *(v50 + 5360) = v1255;
  *(v50 + 5376) = v218;
  *(v50 + 5392) = v1257;
  v219 = *&v1254[16];
  *(v50 + 5296) = *v1254;
  *(v50 + 5312) = v219;
  *(v50 + 5328) = v217;
  *(v50 + 5408) = 0xD000000000000014;
  *(v50 + 5416) = 0x80000001BE141590;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1266 = v4;
  memset(&v1267[8], 0, 32);
  *v1267 = v4;
  *&v1267[40] = v4;
  *&v1268 = 0;
  *(&v1268 + 1) = v4;
  v1269 = 0u;
  v1270 = 0u;
  v1271[0] = v4;
  v1271[1] = 0;
  v1272 = 0u;
  v1273 = 0u;
  v1271[2] = v4;
  v1274 = v4;
  v1275 = 0;
  v1276 = v4;
  v1278 = 0u;
  v1277 = 0u;
  sub_1BD289374(&v1266, v2645);
  sub_1BD2893D0(v1271);
  v220 = *&v1267[16];
  *(v50 + 5472) = *&v1267[32];
  v221 = v1269;
  *(v50 + 5488) = v1268;
  *(v50 + 5504) = v221;
  *(v50 + 5520) = v1270;
  v222 = *v1267;
  *(v50 + 5424) = v1266;
  *(v50 + 5440) = v222;
  *(v50 + 5456) = v220;
  *(v50 + 5536) = 0xD000000000000020;
  *(v50 + 5544) = 0x80000001BE1415B0;
  v611 = v661;
  v610 = v608;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1279 = v661;
  memset(&v1280[8], 0, 32);
  *v1280 = v4;
  *&v1280[40] = v608;
  *&v1281 = 0;
  *(&v1281 + 1) = v4;
  v1282 = 0u;
  v1283 = 0u;
  v1284[0] = v661;
  v1284[1] = 0;
  v1285 = 0u;
  v1286 = 0u;
  v1284[2] = v4;
  v1287 = v608;
  v1288 = 0;
  v1289 = v4;
  v1291 = 0u;
  v1290 = 0u;
  sub_1BD289374(&v1279, v2645);
  sub_1BD2893D0(v1284);
  v223 = *&v1280[16];
  *(v50 + 5600) = *&v1280[32];
  v224 = v1282;
  *(v50 + 5616) = v1281;
  *(v50 + 5632) = v224;
  *(v50 + 5648) = v1283;
  v225 = *v1280;
  *(v50 + 5552) = v1279;
  *(v50 + 5568) = v225;
  *(v50 + 5584) = v223;
  *(v50 + 5664) = 0xD00000000000001ELL;
  *(v50 + 5672) = 0x80000001BE1415E0;
  v226 = swift_allocObject();
  *(v226 + 16) = xmmword_1BE0B6CA0;
  *(v226 + 32) = v660;
  *(v226 + 40) = v659;
  v227 = v660;
  v228 = v659;
  v229 = v227;
  v230 = v228;
  v609 = v229;
  v607 = v230;
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_1BE0B6CA0;
  *(v231 + 32) = v41;
  *(v231 + 40) = v658;
  v605 = v658;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1294 = 0u;
  v1293 = 0u;
  v1292 = 0u;
  memset(&v1295[8], 0, 48);
  *v1295 = v226;
  *&v1295[56] = v231;
  memset(v1296, 0, sizeof(v1296));
  v1298 = 0u;
  v1299 = 0u;
  v1300 = 0u;
  v1297 = v226;
  v1301 = v231;
  sub_1BD289374(&v1292, v2645);
  sub_1BD2893D0(v1296);
  v232 = v1294;
  *(v50 + 5728) = *v1295;
  v233 = *&v1295[32];
  *(v50 + 5744) = *&v1295[16];
  *(v50 + 5760) = v233;
  *(v50 + 5776) = *&v1295[48];
  v234 = v1293;
  *(v50 + 5680) = v1292;
  *(v50 + 5696) = v234;
  *(v50 + 5712) = v232;
  *(v50 + 5792) = 0xD000000000000017;
  *(v50 + 5800) = 0x80000001BE141600;
  v603 = v654;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  *&v1302 = v669;
  *(&v1302 + 1) = v654;
  memset(&v1303[8], 0, 32);
  *v1303 = v4;
  *&v1303[40] = v669;
  *&v1304 = v45;
  *(&v1304 + 1) = v4;
  v1305 = 0u;
  v1306 = 0u;
  v1307[0] = v669;
  v1307[1] = v654;
  v1308 = 0u;
  v1309 = 0u;
  v1307[2] = v4;
  v1310 = v669;
  v1311 = v45;
  v1312 = v4;
  v1314 = 0u;
  v1313 = 0u;
  sub_1BD289374(&v1302, v2645);
  sub_1BD2893D0(v1307);
  v235 = *&v1303[16];
  *(v50 + 5856) = *&v1303[32];
  v236 = v1305;
  *(v50 + 5872) = v1304;
  *(v50 + 5888) = v236;
  *(v50 + 5904) = v1306;
  v237 = *v1303;
  *(v50 + 5808) = v1302;
  *(v50 + 5824) = v237;
  *(v50 + 5840) = v235;
  *(v50 + 5920) = 0x6143746964657263;
  *(v50 + 5928) = 0xEA00000000006472;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1315 = v669;
  memset(&v1316[8], 0, 32);
  *v1316 = v4;
  *&v1316[40] = v669;
  *&v1317 = 0;
  *(&v1317 + 1) = v4;
  v1318 = 0u;
  v1319 = 0u;
  v1320[0] = v669;
  v1320[1] = 0;
  v1321 = 0u;
  v1322 = 0u;
  v1320[2] = v4;
  v1323 = v669;
  v1324 = 0;
  v1325 = v4;
  v1327 = 0u;
  v1326 = 0u;
  sub_1BD289374(&v1315, v2645);
  sub_1BD2893D0(v1320);
  v238 = *&v1316[16];
  *(v50 + 5984) = *&v1316[32];
  v239 = v1318;
  *(v50 + 6000) = v1317;
  *(v50 + 6016) = v239;
  *(v50 + 6032) = v1319;
  v240 = *v1316;
  *(v50 + 5936) = v1315;
  *(v50 + 5952) = v240;
  *(v50 + 5968) = v238;
  *(v50 + 6048) = 0xD000000000000014;
  *(v50 + 6056) = 0x80000001BE141620;
  v602 = v600;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1328 = v600;
  memset(&v1329[8], 0, 32);
  *v1329 = v4;
  *&v1329[40] = v600;
  *&v1330 = 0;
  *(&v1330 + 1) = v4;
  v1331 = 0u;
  v1332 = 0u;
  v1333[0] = v600;
  v1333[1] = 0;
  v1334 = 0u;
  v1335 = 0u;
  v1333[2] = v4;
  v1336 = v600;
  v1337 = 0;
  v1338 = v4;
  v1340 = 0u;
  v1339 = 0u;
  sub_1BD289374(&v1328, v2645);
  sub_1BD2893D0(v1333);
  v241 = *&v1329[16];
  *(v50 + 6112) = *&v1329[32];
  v242 = v1331;
  *(v50 + 6128) = v1330;
  *(v50 + 6144) = v242;
  *(v50 + 6160) = v1332;
  v243 = *v1329;
  *(v50 + 6064) = v1328;
  *(v50 + 6080) = v243;
  *(v50 + 6096) = v241;
  *(v50 + 6176) = 0xD000000000000019;
  *(v50 + 6184) = 0x80000001BE141640;
  v244 = swift_allocObject();
  *(v244 + 16) = xmmword_1BE0B6CA0;
  *(v244 + 32) = v4;
  *(v244 + 40) = v650;
  v245 = v650;
  v246 = swift_allocObject();
  *(v246 + 16) = xmmword_1BE0B6CA0;
  *(v246 + 32) = v4;
  *(v246 + 40) = v650;
  v601 = v245;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1343 = 0u;
  v1342 = 0u;
  v1341 = 0u;
  memset(&v1344[8], 0, 48);
  *v1344 = v244;
  *&v1344[56] = v246;
  memset(v1345, 0, sizeof(v1345));
  v1347 = 0u;
  v1348 = 0u;
  v1349 = 0u;
  v1346 = v244;
  v1350 = v246;
  sub_1BD289374(&v1341, v2645);
  sub_1BD2893D0(v1345);
  v247 = v1343;
  *(v50 + 6240) = *v1344;
  v248 = *&v1344[32];
  *(v50 + 6256) = *&v1344[16];
  *(v50 + 6272) = v248;
  *(v50 + 6288) = *&v1344[48];
  v249 = v1342;
  *(v50 + 6192) = v1341;
  *(v50 + 6208) = v249;
  *(v50 + 6224) = v247;
  *(v50 + 6304) = 0xD000000000000018;
  *(v50 + 6312) = 0x80000001BE141660;
  v599 = v648;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1351 = v648;
  memset(&v1352[8], 0, 32);
  *v1352 = v650;
  *&v1352[40] = v648;
  *&v1353 = 0;
  *(&v1353 + 1) = v650;
  v1354 = 0u;
  v1355 = 0u;
  v1356[0] = v648;
  v1356[1] = 0;
  v1357 = 0u;
  v1358 = 0u;
  v1356[2] = v650;
  v1359 = v648;
  v1360 = 0;
  v1361 = v650;
  v1363 = 0u;
  v1362 = 0u;
  sub_1BD289374(&v1351, v2645);
  sub_1BD2893D0(v1356);
  v250 = *&v1352[16];
  *(v50 + 6368) = *&v1352[32];
  v251 = v1354;
  *(v50 + 6384) = v1353;
  *(v50 + 6400) = v251;
  *(v50 + 6416) = v1355;
  v252 = *v1352;
  *(v50 + 6320) = v1351;
  *(v50 + 6336) = v252;
  *(v50 + 6352) = v250;
  *(v50 + 6432) = 0xD000000000000015;
  *(v50 + 6440) = 0x80000001BE141680;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1364 = v648;
  memset(&v1365[8], 0, 32);
  *v1365 = v4;
  *&v1365[40] = v648;
  *&v1366 = 0;
  *(&v1366 + 1) = v4;
  v1367 = 0u;
  v1368 = 0u;
  v1369[0] = v648;
  v1369[1] = 0;
  v1370 = 0u;
  v1371 = 0u;
  v1369[2] = v4;
  v1372 = v648;
  v1373 = 0;
  v1374 = v4;
  v1376 = 0u;
  v1375 = 0u;
  sub_1BD289374(&v1364, v2645);
  sub_1BD2893D0(v1369);
  v253 = *&v1365[16];
  *(v50 + 6496) = *&v1365[32];
  v254 = v1367;
  *(v50 + 6512) = v1366;
  *(v50 + 6528) = v254;
  *(v50 + 6544) = v1368;
  v255 = *v1365;
  *(v50 + 6448) = v1364;
  *(v50 + 6464) = v255;
  *(v50 + 6480) = v253;
  *(v50 + 6560) = 0xD00000000000001ELL;
  *(v50 + 6568) = 0x80000001BE1416A0;
  v256 = swift_allocObject();
  *(v256 + 16) = xmmword_1BE0B6CA0;
  *(v256 + 32) = v4;
  *(v256 + 40) = v596;
  v598 = v596;
  v257 = swift_allocObject();
  *(v257 + 16) = xmmword_1BE0B6CA0;
  *(v257 + 32) = v4;
  *(v257 + 40) = v596;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1379 = 0u;
  v1378 = 0u;
  v1377 = 0u;
  memset(&v1380[8], 0, 48);
  *v1380 = v256;
  *&v1380[56] = v257;
  memset(v1381, 0, sizeof(v1381));
  v1383 = 0u;
  v1384 = 0u;
  v1385 = 0u;
  v1382 = v256;
  v1386 = v257;
  sub_1BD289374(&v1377, v2645);
  sub_1BD2893D0(v1381);
  v258 = v1379;
  *(v50 + 6624) = *v1380;
  v259 = *&v1380[32];
  *(v50 + 6640) = *&v1380[16];
  *(v50 + 6656) = v259;
  *(v50 + 6672) = *&v1380[48];
  v260 = v1378;
  *(v50 + 6576) = v1377;
  *(v50 + 6592) = v260;
  *(v50 + 6608) = v258;
  *(v50 + 6688) = 0xD000000000000014;
  *(v50 + 6696) = 0x80000001BE1416C0;
  v597 = v595;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1387 = v595;
  memset(&v1388[8], 0, 32);
  *v1388 = v4;
  *&v1388[40] = v595;
  *&v1389 = 0;
  *(&v1389 + 1) = v4;
  v1390 = 0u;
  v1391 = 0u;
  v1392[0] = v595;
  v1392[1] = 0;
  v1393 = 0u;
  v1394 = 0u;
  v1392[2] = v4;
  v1395 = v595;
  v1396 = 0;
  v1397 = v4;
  v1399 = 0u;
  v1398 = 0u;
  sub_1BD289374(&v1387, v2645);
  sub_1BD2893D0(v1392);
  v261 = *&v1388[16];
  *(v50 + 6752) = *&v1388[32];
  v262 = v1390;
  *(v50 + 6768) = v1389;
  *(v50 + 6784) = v262;
  *(v50 + 6800) = v1391;
  v263 = *v1388;
  *(v50 + 6704) = v1387;
  *(v50 + 6720) = v263;
  *(v50 + 6736) = v261;
  *(v50 + 6816) = 0xD00000000000001CLL;
  *(v50 + 6824) = 0x80000001BE1416E0;
  v264 = swift_allocObject();
  *(v264 + 16) = xmmword_1BE0B98E0;
  *(v264 + 32) = v41;
  *(v264 + 40) = v650;
  *(v264 + 48) = v41;
  *(v264 + 56) = v41;
  v265 = swift_allocObject();
  *(v265 + 16) = xmmword_1BE0B98E0;
  *(v265 + 32) = v41;
  *(v265 + 40) = v650;
  *(v265 + 48) = v41;
  *(v265 + 56) = v41;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1402 = 0u;
  v1401 = 0u;
  v1400 = 0u;
  memset(&v1403[8], 0, 48);
  *v1403 = v264;
  *&v1403[56] = v265;
  memset(v1404, 0, sizeof(v1404));
  v1406 = 0u;
  v1407 = 0u;
  v1408 = 0u;
  v1405 = v264;
  v1409 = v265;
  sub_1BD289374(&v1400, v2645);
  sub_1BD2893D0(v1404);
  v266 = v1402;
  *(v50 + 6880) = *v1403;
  v267 = *&v1403[32];
  *(v50 + 6896) = *&v1403[16];
  *(v50 + 6912) = v267;
  *(v50 + 6928) = *&v1403[48];
  v268 = v1401;
  *(v50 + 6832) = v1400;
  *(v50 + 6848) = v268;
  *(v50 + 6864) = v266;
  *(v50 + 6944) = 0xD000000000000010;
  *(v50 + 6952) = 0x80000001BE141700;
  v269 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.65 green:0.65 blue:0.65 alpha:1.0];
  v270 = [v269 CGColor];
  0, v271, v272, v273, v274, v275, v276, v277;

  v278 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.65 green:0.65 blue:0.65 alpha:1.0];
  v279 = [v278 CGColor];
  0, v280, v281, v282, v283, v284, v285, v286;

  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  *&v1410 = v648;
  *(&v1410 + 1) = v270;
  memset(&v1411[8], 0, 32);
  *v1411 = v4;
  *&v1411[40] = v648;
  *&v1412 = v279;
  *(&v1412 + 1) = v4;
  v1413 = 0u;
  v1414 = 0u;
  v1415[0] = v648;
  v1415[1] = v270;
  v1415[2] = v4;
  v1416 = 0u;
  v1417 = 0u;
  v1418 = v648;
  v1419 = v279;
  v1420 = v4;
  v1422 = 0u;
  v1421 = 0u;
  sub_1BD289374(&v1410, v2645);
  sub_1BD2893D0(v1415);
  v287 = *&v1411[16];
  *(v50 + 7008) = *&v1411[32];
  v288 = v1413;
  *(v50 + 7024) = v1412;
  *(v50 + 7040) = v288;
  *(v50 + 7056) = v1414;
  v289 = *v1411;
  *(v50 + 6960) = v1410;
  *(v50 + 6976) = v289;
  *(v50 + 6992) = v287;
  *(v50 + 7072) = 0xD000000000000010;
  *(v50 + 7080) = 0x80000001BE141720;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1429 = 0u;
  v1428 = 0u;
  v1427 = 0u;
  v1426 = 0u;
  v1425 = 0u;
  v1424 = 0u;
  v1423 = 0u;
  memset(v1430, 0, sizeof(v1430));
  sub_1BD289374(&v1423, v2645);
  sub_1BD2893D0(v1430);
  v290 = v1425;
  *(v50 + 7136) = v1426;
  v291 = v1428;
  *(v50 + 7152) = v1427;
  *(v50 + 7168) = v291;
  *(v50 + 7184) = v1429;
  v292 = v1424;
  *(v50 + 7088) = v1423;
  *(v50 + 7104) = v292;
  *(v50 + 7120) = v290;
  *(v50 + 7200) = 0xD000000000000014;
  *(v50 + 7208) = 0x80000001BE140BB0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1432 = 0u;
  v1431 = 0u;
  *&v1433 = 0;
  *(&v1433 + 1) = v650;
  v1434 = 0u;
  v1435 = 0u;
  v1436 = 0u;
  v1437 = v650;
  memset(v1438, 0, sizeof(v1438));
  v1439 = 0;
  v1440 = v650;
  v1441 = 0u;
  v1442 = 0u;
  v1443 = 0u;
  v1444 = v650;
  v1445 = 0;
  sub_1BD289374(&v1431, v2645);
  sub_1BD2893D0(v1438);
  v293 = v1433;
  *(v50 + 7264) = v1434;
  v294 = v1436;
  *(v50 + 7280) = v1435;
  *(v50 + 7296) = v294;
  *(v50 + 7312) = v1437;
  v295 = v1432;
  *(v50 + 7216) = v1431;
  *(v50 + 7232) = v295;
  *(v50 + 7248) = v293;
  *(v50 + 7328) = 0xD000000000000015;
  *(v50 + 7336) = 0x80000001BE141740;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1446 = v650;
  memset(&v1447[8], 0, 32);
  *v1447 = v4;
  *&v1447[40] = v650;
  *&v1448 = 0;
  *(&v1448 + 1) = v4;
  v1449 = 0u;
  v1450 = 0u;
  v1451[0] = v650;
  v1451[1] = 0;
  v1452 = 0u;
  v1453 = 0u;
  v1451[2] = v4;
  v1454 = v650;
  v1455 = 0;
  v1456 = v4;
  v1458 = 0u;
  v1457 = 0u;
  sub_1BD289374(&v1446, v2645);
  sub_1BD2893D0(v1451);
  v296 = *&v1447[16];
  *(v50 + 7392) = *&v1447[32];
  v297 = v1449;
  *(v50 + 7408) = v1448;
  *(v50 + 7424) = v297;
  *(v50 + 7440) = v1450;
  v298 = *v1447;
  *(v50 + 7344) = v1446;
  *(v50 + 7360) = v298;
  *(v50 + 7376) = v296;
  *(v50 + 7456) = 0xD000000000000015;
  *(v50 + 7464) = 0x80000001BE141760;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1459 = v650;
  memset(&v1460[8], 0, 32);
  *v1460 = v4;
  *&v1460[40] = v650;
  *&v1461 = 0;
  *(&v1461 + 1) = v4;
  v1462 = 0u;
  v1463 = 0u;
  v1464[0] = v650;
  v1464[1] = 0;
  v1465 = 0u;
  v1466 = 0u;
  v1464[2] = v4;
  v1467 = v650;
  v1468 = 0;
  v1469 = v4;
  v1471 = 0u;
  v1470 = 0u;
  sub_1BD289374(&v1459, v2645);
  sub_1BD2893D0(v1464);
  v299 = *&v1460[16];
  *(v50 + 7520) = *&v1460[32];
  v300 = v1462;
  *(v50 + 7536) = v1461;
  *(v50 + 7552) = v300;
  *(v50 + 7568) = v1463;
  v301 = *v1460;
  *(v50 + 7472) = v1459;
  *(v50 + 7488) = v301;
  *(v50 + 7504) = v299;
  *(v50 + 7584) = 0xD000000000000015;
  *(v50 + 7592) = 0x80000001BE141780;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1472 = v650;
  memset(&v1473[8], 0, 32);
  *v1473 = v4;
  *&v1473[40] = v650;
  *&v1474 = 0;
  *(&v1474 + 1) = v4;
  v1475 = 0u;
  v1476 = 0u;
  v1477[0] = v650;
  v1477[1] = 0;
  v1478 = 0u;
  v1479 = 0u;
  v1477[2] = v4;
  v1480 = v650;
  v1481 = 0;
  v1482 = v4;
  v1484 = 0u;
  v1483 = 0u;
  sub_1BD289374(&v1472, v2645);
  sub_1BD2893D0(v1477);
  v302 = *&v1473[16];
  *(v50 + 7648) = *&v1473[32];
  v303 = v1475;
  *(v50 + 7664) = v1474;
  *(v50 + 7680) = v303;
  *(v50 + 7696) = v1476;
  v304 = *v1473;
  *(v50 + 7600) = v1472;
  *(v50 + 7616) = v304;
  *(v50 + 7632) = v302;
  *(v50 + 7712) = 0xD000000000000015;
  *(v50 + 7720) = 0x80000001BE1417A0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1485 = v650;
  memset(&v1486[8], 0, 32);
  *v1486 = v4;
  *&v1486[40] = v650;
  *&v1487 = 0;
  *(&v1487 + 1) = v4;
  v1488 = 0u;
  v1489 = 0u;
  v1490[0] = v650;
  v1490[1] = 0;
  v1491 = 0u;
  v1492 = 0u;
  v1490[2] = v4;
  v1493 = v650;
  v1494 = 0;
  v1495 = v4;
  v1497 = 0u;
  v1496 = 0u;
  sub_1BD289374(&v1485, v2645);
  sub_1BD2893D0(v1490);
  v305 = *&v1486[16];
  *(v50 + 7776) = *&v1486[32];
  v306 = v1488;
  *(v50 + 7792) = v1487;
  *(v50 + 7808) = v306;
  *(v50 + 7824) = v1489;
  v307 = *v1486;
  *(v50 + 7728) = v1485;
  *(v50 + 7744) = v307;
  *(v50 + 7760) = v305;
  *(v50 + 7840) = 0x6C6C69466F747561;
  *(v50 + 7848) = 0xEA00000000003230;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1498 = v669;
  memset(&v1499[8], 0, 32);
  *v1499 = v4;
  *&v1499[40] = v669;
  *&v1500 = 0;
  *(&v1500 + 1) = v4;
  v1501 = 0u;
  v1502 = 0u;
  v1503[0] = v669;
  v1503[1] = 0;
  v1504 = 0u;
  v1505 = 0u;
  v1503[2] = v4;
  v1506 = v669;
  v1507 = 0;
  v1508 = v4;
  v1510 = 0u;
  v1509 = 0u;
  sub_1BD289374(&v1498, v2645);
  sub_1BD2893D0(v1503);
  v308 = *&v1499[16];
  *(v50 + 7904) = *&v1499[32];
  v309 = v1501;
  *(v50 + 7920) = v1500;
  *(v50 + 7936) = v309;
  *(v50 + 7952) = v1502;
  v310 = *v1499;
  *(v50 + 7856) = v1498;
  *(v50 + 7872) = v310;
  *(v50 + 7888) = v308;
  *(v50 + 7968) = 0xD00000000000001BLL;
  *(v50 + 7976) = 0x80000001BE1417C0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1511 = v669;
  memset(&v1512[8], 0, 32);
  *v1512 = v4;
  *&v1512[40] = v669;
  *&v1513 = 0;
  *(&v1513 + 1) = v4;
  v1514 = 0u;
  v1515 = 0u;
  v1516[0] = v669;
  v1516[1] = 0;
  v1517 = 0u;
  v1518 = 0u;
  v1516[2] = v4;
  v1519 = v669;
  v1520 = 0;
  v1521 = v4;
  v1523 = 0u;
  v1522 = 0u;
  sub_1BD289374(&v1511, v2645);
  sub_1BD2893D0(v1516);
  v311 = *&v1512[16];
  *(v50 + 8032) = *&v1512[32];
  v312 = v1514;
  *(v50 + 8048) = v1513;
  *(v50 + 8064) = v312;
  *(v50 + 8080) = v1515;
  v313 = *v1512;
  *(v50 + 7984) = v1511;
  *(v50 + 8000) = v313;
  *(v50 + 8016) = v311;
  *(v50 + 8096) = 0xD000000000000019;
  *(v50 + 8104) = 0x80000001BE1417E0;
  v314 = swift_allocObject();
  *(v314 + 16) = xmmword_1BE0B6CA0;
  *(v314 + 32) = v662;
  *(v314 + 40) = v666;
  v315 = swift_allocObject();
  *(v315 + 16) = xmmword_1BE0B6CA0;
  *(v315 + 32) = v664;
  *(v315 + 40) = v663;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1526 = 0u;
  v1525 = 0u;
  v1524 = 0u;
  memset(&v1527[8], 0, 48);
  *v1527 = v314;
  *&v1527[56] = v315;
  memset(v1528, 0, sizeof(v1528));
  v1530 = 0u;
  v1531 = 0u;
  v1532 = 0u;
  v1529 = v314;
  v1533 = v315;
  sub_1BD289374(&v1524, v2645);
  sub_1BD2893D0(v1528);
  v316 = v1526;
  *(v50 + 8160) = *v1527;
  v317 = *&v1527[32];
  *(v50 + 8176) = *&v1527[16];
  *(v50 + 0x2000) = v317;
  *(v50 + 8208) = *&v1527[48];
  v318 = v1525;
  *(v50 + 8112) = v1524;
  *(v50 + 8128) = v318;
  *(v50 + 8144) = v316;
  *(v50 + 8224) = 0xD00000000000001BLL;
  *(v50 + 8232) = 0x80000001BE141800;
  v651 = v606;
  v649 = v604;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  *&v1534 = v606;
  *(&v1534 + 1) = v657;
  memset(&v1535[8], 0, 32);
  *v1535 = v4;
  *&v1535[40] = v604;
  *&v1536 = v657;
  *(&v1536 + 1) = v4;
  v1537 = 0u;
  v1538 = 0u;
  v1539[0] = v606;
  v1539[1] = v657;
  v1540 = 0u;
  v1541 = 0u;
  v1539[2] = v4;
  v1542 = v604;
  v1543 = v657;
  v1544 = v4;
  v1546 = 0u;
  v1545 = 0u;
  sub_1BD289374(&v1534, v2645);
  sub_1BD2893D0(v1539);
  v319 = *&v1535[16];
  *(v50 + 8288) = *&v1535[32];
  v320 = v1537;
  *(v50 + 8304) = v1536;
  *(v50 + 8320) = v320;
  *(v50 + 8336) = v1538;
  v321 = *v1535;
  *(v50 + 8240) = v1534;
  *(v50 + 8256) = v321;
  *(v50 + 8272) = v319;
  *(v50 + 8352) = 0xD000000000000023;
  *(v50 + 8360) = 0x80000001BE141820;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1547 = v656;
  memset(&v1548[8], 0, 32);
  *v1548 = v4;
  *&v1548[40] = v656;
  *&v1549 = 0;
  *(&v1549 + 1) = v4;
  v1550 = 0u;
  v1551 = 0u;
  v1552[0] = v656;
  v1552[1] = 0;
  v1553 = 0u;
  v1554 = 0u;
  v1552[2] = v4;
  v1555 = v656;
  v1556 = 0;
  v1557 = v4;
  v1559 = 0u;
  v1558 = 0u;
  sub_1BD289374(&v1547, v2645);
  sub_1BD2893D0(v1552);
  v322 = *&v1548[16];
  *(v50 + 8416) = *&v1548[32];
  v323 = v1550;
  *(v50 + 8432) = v1549;
  *(v50 + 8448) = v323;
  *(v50 + 8464) = v1551;
  v324 = *v1548;
  *(v50 + 8368) = v1547;
  *(v50 + 8384) = v324;
  *(v50 + 8400) = v322;
  *(v50 + 8480) = 0xD000000000000037;
  *(v50 + 8488) = 0x80000001BE141850;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1560[8], 0, 32);
  *v1560 = v643;
  *&v1560[40] = v594;
  *&v1561 = 0;
  *(&v1561 + 1) = v647;
  v1562 = 0u;
  v1563 = 0u;
  v1564 = v644;
  v1566 = 0u;
  v1567 = 0u;
  v1565 = v643;
  v1568 = v594;
  v1569 = 0;
  v1570 = v647;
  v1571 = 0u;
  v1572 = 0u;
  v1573 = v644;
  v1574 = 0;
  sub_1BD289374(v1560, v2645);
  sub_1BD2893D0(&v1565);
  v325 = *&v1560[32];
  *(v50 + 8544) = v1561;
  v326 = v1563;
  *(v50 + 8560) = v1562;
  *(v50 + 8576) = v326;
  *(v50 + 8592) = v1564;
  v327 = *&v1560[16];
  *(v50 + 8496) = *v1560;
  *(v50 + 8512) = v327;
  *(v50 + 8528) = v325;
  *(v50 + 8608) = 0xD000000000000037;
  *(v50 + 8616) = 0x80000001BE141890;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1575[8], 0, 32);
  *v1575 = v643;
  *&v1575[40] = v594;
  *&v1576 = 0;
  *(&v1576 + 1) = v647;
  v1577 = 0u;
  v1578 = 0u;
  v1579 = v644;
  v1581 = 0u;
  v1582 = 0u;
  v1580 = v643;
  v1583 = v594;
  v1584 = 0;
  v1585 = v647;
  v1586 = 0u;
  v1587 = 0u;
  v1588 = v644;
  v1589 = 0;
  sub_1BD289374(v1575, v2645);
  sub_1BD2893D0(&v1580);
  v328 = *&v1575[32];
  *(v50 + 8672) = v1576;
  v329 = v1578;
  *(v50 + 8688) = v1577;
  *(v50 + 8704) = v329;
  *(v50 + 8720) = v1579;
  v330 = *&v1575[16];
  *(v50 + 8624) = *v1575;
  *(v50 + 8640) = v330;
  *(v50 + 8656) = v328;
  *(v50 + 8736) = 0xD000000000000037;
  *(v50 + 8744) = 0x80000001BE1418D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1590[8], 0, 32);
  *v1590 = v643;
  *&v1590[40] = v594;
  *&v1591 = 0;
  *(&v1591 + 1) = v647;
  v1592 = 0u;
  v1593 = 0u;
  v1594 = v644;
  v1596 = 0u;
  v1597 = 0u;
  v1595 = v643;
  v1598 = v594;
  v1599 = 0;
  v1600 = v647;
  v1601 = 0u;
  v1602 = 0u;
  v1603 = v644;
  v1604 = 0;
  sub_1BD289374(v1590, v2645);
  sub_1BD2893D0(&v1595);
  v331 = *&v1590[32];
  *(v50 + 8800) = v1591;
  v332 = v1593;
  *(v50 + 8816) = v1592;
  *(v50 + 8832) = v332;
  *(v50 + 8848) = v1594;
  v333 = *&v1590[16];
  *(v50 + 8752) = *v1590;
  *(v50 + 8768) = v333;
  *(v50 + 8784) = v331;
  *(v50 + 8864) = 0xD00000000000002FLL;
  *(v50 + 8872) = 0x80000001BE141910;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1605 = v594;
  memset(&v1606[8], 0, 32);
  *v1606 = v4;
  *&v1606[40] = v644;
  *&v1607 = 0;
  *(&v1607 + 1) = v4;
  v1608 = 0u;
  v1609 = 0u;
  v1610[0] = v594;
  v1610[1] = 0;
  v1611 = 0u;
  v1612 = 0u;
  v1610[2] = v4;
  v1613 = v644;
  v1614 = 0;
  v1615 = v4;
  v1617 = 0u;
  v1616 = 0u;
  sub_1BD289374(&v1605, v2645);
  sub_1BD2893D0(v1610);
  v334 = *&v1606[16];
  *(v50 + 8928) = *&v1606[32];
  v335 = v1608;
  *(v50 + 8944) = v1607;
  *(v50 + 8960) = v335;
  *(v50 + 8976) = v1609;
  v336 = *v1606;
  *(v50 + 8880) = v1605;
  *(v50 + 8896) = v336;
  *(v50 + 8912) = v334;
  *(v50 + 8992) = 0xD000000000000037;
  *(v50 + 9000) = 0x80000001BE141940;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1618[8], 0, 32);
  *v1618 = v643;
  *&v1618[40] = v594;
  *&v1619 = 0;
  *(&v1619 + 1) = v647;
  v1620 = 0u;
  v1621 = 0u;
  v1622 = v644;
  v1624 = 0u;
  v1625 = 0u;
  v1623 = v643;
  v1626 = v594;
  v1627 = 0;
  v1628 = v647;
  v1629 = 0u;
  v1630 = 0u;
  v1631 = v644;
  v1632 = 0;
  sub_1BD289374(v1618, v2645);
  sub_1BD2893D0(&v1623);
  v337 = *&v1618[32];
  *(v50 + 9056) = v1619;
  v338 = v1621;
  *(v50 + 9072) = v1620;
  *(v50 + 9088) = v338;
  *(v50 + 9104) = v1622;
  v339 = *&v1618[16];
  *(v50 + 9008) = *v1618;
  *(v50 + 9024) = v339;
  *(v50 + 9040) = v337;
  *(v50 + 9120) = 0xD000000000000037;
  *(v50 + 9128) = 0x80000001BE141980;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1633[8], 0, 32);
  *v1633 = v643;
  *&v1633[40] = v594;
  *&v1634 = 0;
  *(&v1634 + 1) = v647;
  v1635 = 0u;
  v1636 = 0u;
  v1637 = v644;
  v1639 = 0u;
  v1640 = 0u;
  v1638 = v643;
  v1641 = v594;
  v1642 = 0;
  v1643 = v647;
  v1644 = 0u;
  v1645 = 0u;
  v1646 = v644;
  v1647 = 0;
  sub_1BD289374(v1633, v2645);
  sub_1BD2893D0(&v1638);
  v340 = *&v1633[32];
  *(v50 + 9184) = v1634;
  v341 = v1636;
  *(v50 + 9200) = v1635;
  *(v50 + 9216) = v341;
  *(v50 + 9232) = v1637;
  v342 = *&v1633[16];
  *(v50 + 9136) = *v1633;
  *(v50 + 9152) = v342;
  *(v50 + 9168) = v340;
  *(v50 + 9248) = 0xD000000000000037;
  *(v50 + 9256) = 0x80000001BE1419C0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1648[8], 0, 32);
  *v1648 = v643;
  *&v1648[40] = v594;
  *&v1649 = 0;
  *(&v1649 + 1) = v647;
  v1650 = 0u;
  v1651 = 0u;
  v1652 = v644;
  v1654 = 0u;
  v1655 = 0u;
  v1653 = v643;
  v1656 = v594;
  v1657 = 0;
  v1658 = v647;
  v1659 = 0u;
  v1660 = 0u;
  v1661 = v644;
  v1662 = 0;
  sub_1BD289374(v1648, v2645);
  sub_1BD2893D0(&v1653);
  v343 = *&v1648[32];
  *(v50 + 9312) = v1649;
  v344 = v1651;
  *(v50 + 9328) = v1650;
  *(v50 + 9344) = v344;
  *(v50 + 9360) = v1652;
  v345 = *&v1648[16];
  *(v50 + 9264) = *v1648;
  *(v50 + 9280) = v345;
  *(v50 + 9296) = v343;
  *(v50 + 9376) = 0xD00000000000002FLL;
  *(v50 + 9384) = 0x80000001BE141A00;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1663 = v594;
  memset(&v1664[8], 0, 32);
  *v1664 = v4;
  *&v1664[40] = v644;
  *&v1665 = 0;
  *(&v1665 + 1) = v4;
  v1666 = 0u;
  v1667 = 0u;
  v1668[0] = v594;
  v1668[1] = 0;
  v1669 = 0u;
  v1670 = 0u;
  v1668[2] = v4;
  v1671 = v644;
  v1672 = 0;
  v1673 = v4;
  v1675 = 0u;
  v1674 = 0u;
  sub_1BD289374(&v1663, v2645);
  sub_1BD2893D0(v1668);
  v346 = *&v1664[16];
  *(v50 + 9440) = *&v1664[32];
  v347 = v1666;
  *(v50 + 9456) = v1665;
  *(v50 + 9472) = v347;
  *(v50 + 9488) = v1667;
  v348 = *v1664;
  *(v50 + 9392) = v1663;
  *(v50 + 9408) = v348;
  *(v50 + 9424) = v346;
  *(v50 + 9504) = 0xD000000000000037;
  *(v50 + 9512) = 0x80000001BE141A30;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1676[8], 0, 32);
  *v1676 = v643;
  *&v1676[40] = v594;
  *&v1677 = 0;
  *(&v1677 + 1) = v647;
  v1678 = 0u;
  v1679 = 0u;
  v1680 = v644;
  v1682 = 0u;
  v1683 = 0u;
  v1681 = v643;
  v1684 = v594;
  v1685 = 0;
  v1686 = v647;
  v1687 = 0u;
  v1688 = 0u;
  v1689 = v644;
  v1690 = 0;
  sub_1BD289374(v1676, v2645);
  sub_1BD2893D0(&v1681);
  v349 = *&v1676[32];
  *(v50 + 9568) = v1677;
  v350 = v1679;
  *(v50 + 9584) = v1678;
  *(v50 + 9600) = v350;
  *(v50 + 9616) = v1680;
  v351 = *&v1676[16];
  *(v50 + 9520) = *v1676;
  *(v50 + 9536) = v351;
  *(v50 + 9552) = v349;
  *(v50 + 9632) = 0xD000000000000037;
  *(v50 + 9640) = 0x80000001BE141A70;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1691[8], 0, 32);
  *v1691 = v643;
  *&v1691[40] = v594;
  *&v1692 = 0;
  *(&v1692 + 1) = v647;
  v1693 = 0u;
  v1694 = 0u;
  v1695 = v644;
  v1697 = 0u;
  v1698 = 0u;
  v1696 = v643;
  v1699 = v594;
  v1700 = 0;
  v1701 = v647;
  v1702 = 0u;
  v1703 = 0u;
  v1704 = v644;
  v1705 = 0;
  sub_1BD289374(v1691, v2645);
  sub_1BD2893D0(&v1696);
  v352 = *&v1691[32];
  *(v50 + 9696) = v1692;
  v353 = v1694;
  *(v50 + 9712) = v1693;
  *(v50 + 9728) = v353;
  *(v50 + 9744) = v1695;
  v354 = *&v1691[16];
  *(v50 + 9648) = *v1691;
  *(v50 + 9664) = v354;
  *(v50 + 9680) = v352;
  *(v50 + 9760) = 0xD000000000000037;
  *(v50 + 9768) = 0x80000001BE141AB0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1706[8], 0, 32);
  *v1706 = v643;
  *&v1706[40] = v594;
  *&v1707 = 0;
  *(&v1707 + 1) = v647;
  v1708 = 0u;
  v1709 = 0u;
  v1710 = v644;
  v1712 = 0u;
  v1713 = 0u;
  v1711 = v643;
  v1714 = v594;
  v1715 = 0;
  v1716 = v647;
  v1717 = 0u;
  v1718 = 0u;
  v1719 = v644;
  v1720 = 0;
  sub_1BD289374(v1706, v2645);
  sub_1BD2893D0(&v1711);
  v355 = *&v1706[32];
  *(v50 + 9824) = v1707;
  v356 = v1709;
  *(v50 + 9840) = v1708;
  *(v50 + 9856) = v356;
  *(v50 + 9872) = v1710;
  v357 = *&v1706[16];
  *(v50 + 9776) = *v1706;
  *(v50 + 9792) = v357;
  *(v50 + 9808) = v355;
  *(v50 + 9888) = 0xD00000000000002FLL;
  *(v50 + 9896) = 0x80000001BE141AF0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1721 = v594;
  memset(&v1722[8], 0, 32);
  *v1722 = v4;
  *&v1722[40] = v644;
  *&v1723 = 0;
  *(&v1723 + 1) = v4;
  v1724 = 0u;
  v1725 = 0u;
  v1726[0] = v594;
  v1726[1] = 0;
  v1727 = 0u;
  v1728 = 0u;
  v1726[2] = v4;
  v1729 = v644;
  v1730 = 0;
  v1731 = v4;
  v1733 = 0u;
  v1732 = 0u;
  sub_1BD289374(&v1721, v2645);
  sub_1BD2893D0(v1726);
  v358 = *&v1722[16];
  *(v50 + 9952) = *&v1722[32];
  v359 = v1724;
  *(v50 + 9968) = v1723;
  *(v50 + 9984) = v359;
  *(v50 + 10000) = v1725;
  v360 = *v1722;
  *(v50 + 9904) = v1721;
  *(v50 + 9920) = v360;
  *(v50 + 9936) = v358;
  *(v50 + 10016) = 0xD000000000000037;
  *(v50 + 10024) = 0x80000001BE141B20;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1734[8], 0, 32);
  *v1734 = v643;
  *&v1734[40] = v594;
  *&v1735 = 0;
  *(&v1735 + 1) = v647;
  v1736 = 0u;
  v1737 = 0u;
  v1738 = v644;
  v1740 = 0u;
  v1741 = 0u;
  v1739 = v643;
  v1742 = v594;
  v1743 = 0;
  v1744 = v647;
  v1745 = 0u;
  v1746 = 0u;
  v1747 = v644;
  v1748 = 0;
  sub_1BD289374(v1734, v2645);
  sub_1BD2893D0(&v1739);
  v361 = *&v1734[32];
  *(v50 + 10080) = v1735;
  v362 = v1737;
  *(v50 + 10096) = v1736;
  *(v50 + 10112) = v362;
  *(v50 + 10128) = v1738;
  v363 = *&v1734[16];
  *(v50 + 10032) = *v1734;
  *(v50 + 10048) = v363;
  *(v50 + 10064) = v361;
  *(v50 + 10144) = 0xD000000000000037;
  *(v50 + 10152) = 0x80000001BE141B60;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1749[8], 0, 32);
  *v1749 = v643;
  *&v1749[40] = v594;
  *&v1750 = 0;
  *(&v1750 + 1) = v647;
  v1751 = 0u;
  v1752 = 0u;
  v1753 = v644;
  v1755 = 0u;
  v1756 = 0u;
  v1754 = v643;
  v1757 = v594;
  v1758 = 0;
  v1759 = v647;
  v1760 = 0u;
  v1761 = 0u;
  v1762 = v644;
  v1763 = 0;
  sub_1BD289374(v1749, v2645);
  sub_1BD2893D0(&v1754);
  v364 = *&v1749[32];
  *(v50 + 10208) = v1750;
  v365 = v1752;
  *(v50 + 10224) = v1751;
  *(v50 + 10240) = v365;
  *(v50 + 10256) = v1753;
  v366 = *&v1749[16];
  *(v50 + 10160) = *v1749;
  *(v50 + 10176) = v366;
  *(v50 + 10192) = v364;
  *(v50 + 10272) = 0xD000000000000037;
  *(v50 + 10280) = 0x80000001BE141BA0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1764[8], 0, 32);
  *v1764 = v643;
  *&v1764[40] = v594;
  *&v1765 = 0;
  *(&v1765 + 1) = v647;
  v1766 = 0u;
  v1767 = 0u;
  v1768 = v644;
  v1770 = 0u;
  v1771 = 0u;
  v1769 = v643;
  v1772 = v594;
  v1773 = 0;
  v1774 = v647;
  v1775 = 0u;
  v1776 = 0u;
  v1777 = v644;
  v1778 = 0;
  sub_1BD289374(v1764, v2645);
  sub_1BD2893D0(&v1769);
  v367 = *&v1764[32];
  *(v50 + 10336) = v1765;
  v368 = v1767;
  *(v50 + 10352) = v1766;
  *(v50 + 10368) = v368;
  *(v50 + 10384) = v1768;
  v369 = *&v1764[16];
  *(v50 + 10288) = *v1764;
  *(v50 + 10304) = v369;
  *(v50 + 10320) = v367;
  *(v50 + 10400) = 0xD00000000000002FLL;
  *(v50 + 10408) = 0x80000001BE141BE0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v1779 = v594;
  memset(&v1780[8], 0, 32);
  *v1780 = v4;
  *&v1780[40] = v644;
  *&v1781 = 0;
  *(&v1781 + 1) = v4;
  v1782 = 0u;
  v1783 = 0u;
  v1784[0] = v594;
  v1784[1] = 0;
  v1785 = 0u;
  v1786 = 0u;
  v1784[2] = v4;
  v1787 = v644;
  v1788 = 0;
  v1789 = v4;
  v1791 = 0u;
  v1790 = 0u;
  sub_1BD289374(&v1779, v2645);
  sub_1BD2893D0(v1784);
  v370 = *&v1780[16];
  *(v50 + 10464) = *&v1780[32];
  v371 = v1782;
  *(v50 + 10480) = v1781;
  *(v50 + 10496) = v371;
  *(v50 + 10512) = v1783;
  v372 = *v1780;
  *(v50 + 10416) = v1779;
  *(v50 + 10432) = v372;
  *(v50 + 10448) = v370;
  *(v50 + 10528) = 0xD00000000000003ELL;
  *(v50 + 10536) = 0x80000001BE141C10;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1792[8], 0, 32);
  *v1792 = v643;
  *&v1792[40] = v594;
  *&v1793 = 0;
  *(&v1793 + 1) = v647;
  v1794 = 0u;
  v1795 = 0u;
  v1796 = v644;
  v1798 = 0u;
  v1799 = 0u;
  v1797 = v643;
  v1800 = v594;
  v1801 = 0;
  v1802 = v647;
  v1803 = 0u;
  v1804 = 0u;
  v1805 = v644;
  v1806 = 0;
  sub_1BD289374(v1792, v2645);
  sub_1BD2893D0(&v1797);
  v373 = *&v1792[32];
  *(v50 + 10592) = v1793;
  v374 = v1795;
  *(v50 + 10608) = v1794;
  *(v50 + 10624) = v374;
  *(v50 + 10640) = v1796;
  v375 = *&v1792[16];
  *(v50 + 10544) = *v1792;
  *(v50 + 10560) = v375;
  *(v50 + 10576) = v373;
  *(v50 + 10656) = 0xD00000000000003ELL;
  *(v50 + 10664) = 0x80000001BE141C50;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1807[8], 0, 32);
  *v1807 = v643;
  *&v1807[40] = v594;
  *&v1808 = 0;
  *(&v1808 + 1) = v647;
  v1809 = 0u;
  v1810 = 0u;
  v1811 = v644;
  v1813 = 0u;
  v1814 = 0u;
  v1812 = v643;
  v1815 = v594;
  v1816 = 0;
  v1817 = v647;
  v1818 = 0u;
  v1819 = 0u;
  v1820 = v644;
  v1821 = 0;
  sub_1BD289374(v1807, v2645);
  sub_1BD2893D0(&v1812);
  v376 = *&v1807[32];
  *(v50 + 10720) = v1808;
  v377 = v1810;
  *(v50 + 10736) = v1809;
  *(v50 + 10752) = v377;
  *(v50 + 10768) = v1811;
  v378 = *&v1807[16];
  *(v50 + 10672) = *v1807;
  *(v50 + 10688) = v378;
  *(v50 + 10704) = v376;
  *(v50 + 10784) = 0xD00000000000003ELL;
  *(v50 + 10792) = 0x80000001BE141C90;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1822[8], 0, 32);
  *v1822 = v643;
  *&v1822[40] = v594;
  *&v1823 = 0;
  *(&v1823 + 1) = v647;
  v1824 = 0u;
  v1825 = 0u;
  v1826 = v644;
  v1828 = 0u;
  v1829 = 0u;
  v1827 = v643;
  v1830 = v594;
  v1831 = 0;
  v1832 = v647;
  v1833 = 0u;
  v1834 = 0u;
  v1835 = v644;
  v1836 = 0;
  sub_1BD289374(v1822, v2645);
  sub_1BD2893D0(&v1827);
  v379 = *&v1822[32];
  *(v50 + 10848) = v1823;
  v380 = v1825;
  *(v50 + 10864) = v1824;
  *(v50 + 10880) = v380;
  *(v50 + 10896) = v1826;
  v381 = *&v1822[16];
  *(v50 + 10800) = *v1822;
  *(v50 + 10816) = v381;
  *(v50 + 10832) = v379;
  *(v50 + 10912) = 0xD000000000000036;
  *(v50 + 10920) = 0x80000001BE141CD0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1837[8], 0, 32);
  *v1837 = v643;
  *&v1837[40] = v594;
  *&v1838 = 0;
  *(&v1838 + 1) = v647;
  v1839 = 0u;
  v1840 = 0u;
  v1841 = v644;
  v1843 = 0u;
  v1844 = 0u;
  v1842 = v643;
  v1845 = v594;
  v1846 = 0;
  v1847 = v647;
  v1848 = 0u;
  v1849 = 0u;
  v1850 = v644;
  v1851 = 0;
  sub_1BD289374(v1837, v2645);
  sub_1BD2893D0(&v1842);
  v382 = *&v1837[32];
  *(v50 + 10976) = v1838;
  v383 = v1840;
  *(v50 + 10992) = v1839;
  *(v50 + 11008) = v383;
  *(v50 + 11024) = v1841;
  v384 = *&v1837[16];
  *(v50 + 10928) = *v1837;
  *(v50 + 10944) = v384;
  *(v50 + 10960) = v382;
  *(v50 + 11040) = 0xD00000000000003ELL;
  *(v50 + 11048) = 0x80000001BE141D10;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1852[8], 0, 32);
  *v1852 = v643;
  *&v1852[40] = v594;
  *&v1853 = 0;
  *(&v1853 + 1) = v647;
  v1854 = 0u;
  v1855 = 0u;
  v1856 = v644;
  v1858 = 0u;
  v1859 = 0u;
  v1857 = v643;
  v1860 = v594;
  v1861 = 0;
  v1862 = v647;
  v1863 = 0u;
  v1864 = 0u;
  v1865 = v644;
  v1866 = 0;
  sub_1BD289374(v1852, v2645);
  sub_1BD2893D0(&v1857);
  v385 = *&v1852[32];
  *(v50 + 11104) = v1853;
  v386 = v1855;
  *(v50 + 11120) = v1854;
  *(v50 + 11136) = v386;
  *(v50 + 11152) = v1856;
  v387 = *&v1852[16];
  *(v50 + 11056) = *v1852;
  *(v50 + 11072) = v387;
  *(v50 + 11088) = v385;
  *(v50 + 11168) = 0xD00000000000003ELL;
  *(v50 + 11176) = 0x80000001BE141D50;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1867[8], 0, 32);
  *v1867 = v643;
  *&v1867[40] = v594;
  *&v1868 = 0;
  *(&v1868 + 1) = v647;
  v1869 = 0u;
  v1870 = 0u;
  v1871 = v644;
  v1873 = 0u;
  v1874 = 0u;
  v1872 = v643;
  v1875 = v594;
  v1876 = 0;
  v1877 = v647;
  v1878 = 0u;
  v1879 = 0u;
  v1880 = v644;
  v1881 = 0;
  sub_1BD289374(v1867, v2645);
  sub_1BD2893D0(&v1872);
  v388 = *&v1867[32];
  *(v50 + 11232) = v1868;
  v389 = v1870;
  *(v50 + 11248) = v1869;
  *(v50 + 11264) = v389;
  *(v50 + 11280) = v1871;
  v390 = *&v1867[16];
  *(v50 + 11184) = *v1867;
  *(v50 + 11200) = v390;
  *(v50 + 11216) = v388;
  *(v50 + 11296) = 0xD00000000000003ELL;
  *(v50 + 11304) = 0x80000001BE141D90;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1882[8], 0, 32);
  *v1882 = v643;
  *&v1882[40] = v594;
  *&v1883 = 0;
  *(&v1883 + 1) = v647;
  v1884 = 0u;
  v1885 = 0u;
  v1886 = v644;
  v1888 = 0u;
  v1889 = 0u;
  v1887 = v643;
  v1890 = v594;
  v1891 = 0;
  v1892 = v647;
  v1893 = 0u;
  v1894 = 0u;
  v1895 = v644;
  v1896 = 0;
  sub_1BD289374(v1882, v2645);
  sub_1BD2893D0(&v1887);
  v391 = *&v1882[32];
  *(v50 + 11360) = v1883;
  v392 = v1885;
  *(v50 + 11376) = v1884;
  *(v50 + 11392) = v392;
  *(v50 + 11408) = v1886;
  v393 = *&v1882[16];
  *(v50 + 11312) = *v1882;
  *(v50 + 11328) = v393;
  *(v50 + 11344) = v391;
  *(v50 + 11424) = 0xD000000000000036;
  *(v50 + 11432) = 0x80000001BE141DD0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1897[8], 0, 32);
  *v1897 = v643;
  *&v1897[40] = v594;
  *&v1898 = 0;
  *(&v1898 + 1) = v647;
  v1899 = 0u;
  v1900 = 0u;
  v1901 = v644;
  v1903 = 0u;
  v1904 = 0u;
  v1902 = v643;
  v1905 = v594;
  v1906 = 0;
  v1907 = v647;
  v1908 = 0u;
  v1909 = 0u;
  v1910 = v644;
  v1911 = 0;
  sub_1BD289374(v1897, v2645);
  sub_1BD2893D0(&v1902);
  v394 = *&v1897[32];
  *(v50 + 11488) = v1898;
  v395 = v1900;
  *(v50 + 11504) = v1899;
  *(v50 + 11520) = v395;
  *(v50 + 11536) = v1901;
  v396 = *&v1897[16];
  *(v50 + 11440) = *v1897;
  *(v50 + 11456) = v396;
  *(v50 + 11472) = v394;
  *(v50 + 11552) = 0xD00000000000003ELL;
  *(v50 + 11560) = 0x80000001BE141E10;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1912[8], 0, 32);
  *v1912 = v643;
  *&v1912[40] = v594;
  *&v1913 = 0;
  *(&v1913 + 1) = v647;
  v1914 = 0u;
  v1915 = 0u;
  v1916 = v644;
  v1918 = 0u;
  v1919 = 0u;
  v1917 = v643;
  v1920 = v594;
  v1921 = 0;
  v1922 = v647;
  v1923 = 0u;
  v1924 = 0u;
  v1925 = v644;
  v1926 = 0;
  sub_1BD289374(v1912, v2645);
  sub_1BD2893D0(&v1917);
  v397 = *&v1912[32];
  *(v50 + 11616) = v1913;
  v398 = v1915;
  *(v50 + 11632) = v1914;
  *(v50 + 11648) = v398;
  *(v50 + 11664) = v1916;
  v399 = *&v1912[16];
  *(v50 + 11568) = *v1912;
  *(v50 + 11584) = v399;
  *(v50 + 11600) = v397;
  *(v50 + 11680) = 0xD00000000000003ELL;
  *(v50 + 11688) = 0x80000001BE141E50;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1927[8], 0, 32);
  *v1927 = v643;
  *&v1927[40] = v594;
  *&v1928 = 0;
  *(&v1928 + 1) = v647;
  v1929 = 0u;
  v1930 = 0u;
  v1931 = v644;
  v1933 = 0u;
  v1934 = 0u;
  v1932 = v643;
  v1935 = v594;
  v1936 = 0;
  v1937 = v647;
  v1938 = 0u;
  v1939 = 0u;
  v1940 = v644;
  v1941 = 0;
  sub_1BD289374(v1927, v2645);
  sub_1BD2893D0(&v1932);
  v400 = *&v1927[32];
  *(v50 + 11744) = v1928;
  v401 = v1930;
  *(v50 + 11760) = v1929;
  *(v50 + 11776) = v401;
  *(v50 + 11792) = v1931;
  v402 = *&v1927[16];
  *(v50 + 11696) = *v1927;
  *(v50 + 11712) = v402;
  *(v50 + 11728) = v400;
  *(v50 + 11808) = 0xD00000000000003ELL;
  *(v50 + 11816) = 0x80000001BE141E90;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1942[8], 0, 32);
  *v1942 = v643;
  *&v1942[40] = v594;
  *&v1943 = 0;
  *(&v1943 + 1) = v647;
  v1944 = 0u;
  v1945 = 0u;
  v1946 = v644;
  v1948 = 0u;
  v1949 = 0u;
  v1947 = v643;
  v1950 = v594;
  v1951 = 0;
  v1952 = v647;
  v1953 = 0u;
  v1954 = 0u;
  v1955 = v644;
  v1956 = 0;
  sub_1BD289374(v1942, v2645);
  sub_1BD2893D0(&v1947);
  v403 = *&v1942[32];
  *(v50 + 11872) = v1943;
  v404 = v1945;
  *(v50 + 11888) = v1944;
  *(v50 + 11904) = v404;
  *(v50 + 11920) = v1946;
  v405 = *&v1942[16];
  *(v50 + 11824) = *v1942;
  *(v50 + 11840) = v405;
  *(v50 + 11856) = v403;
  *(v50 + 11936) = 0xD000000000000036;
  *(v50 + 11944) = 0x80000001BE141ED0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1957[8], 0, 32);
  *v1957 = v643;
  *&v1957[40] = v594;
  *&v1958 = 0;
  *(&v1958 + 1) = v647;
  v1959 = 0u;
  v1960 = 0u;
  v1961 = v644;
  v1963 = 0u;
  v1964 = 0u;
  v1962 = v643;
  v1965 = v594;
  v1966 = 0;
  v1967 = v647;
  v1968 = 0u;
  v1969 = 0u;
  v1970 = v644;
  v1971 = 0;
  sub_1BD289374(v1957, v2645);
  sub_1BD2893D0(&v1962);
  v406 = *&v1957[32];
  *(v50 + 12000) = v1958;
  v407 = v1960;
  *(v50 + 12016) = v1959;
  *(v50 + 12032) = v407;
  *(v50 + 12048) = v1961;
  v408 = *&v1957[16];
  *(v50 + 11952) = *v1957;
  *(v50 + 11968) = v408;
  *(v50 + 11984) = v406;
  *(v50 + 12064) = 0xD00000000000003ELL;
  *(v50 + 12072) = 0x80000001BE141F10;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1972[8], 0, 32);
  *v1972 = v643;
  *&v1972[40] = v594;
  *&v1973 = 0;
  *(&v1973 + 1) = v647;
  v1974 = 0u;
  v1975 = 0u;
  v1976 = v644;
  v1978 = 0u;
  v1979 = 0u;
  v1977 = v643;
  v1980 = v594;
  v1981 = 0;
  v1982 = v647;
  v1983 = 0u;
  v1984 = 0u;
  v1985 = v644;
  v1986 = 0;
  sub_1BD289374(v1972, v2645);
  sub_1BD2893D0(&v1977);
  v409 = *&v1972[32];
  *(v50 + 12128) = v1973;
  v410 = v1975;
  *(v50 + 12144) = v1974;
  *(v50 + 12160) = v410;
  *(v50 + 12176) = v1976;
  v411 = *&v1972[16];
  *(v50 + 12080) = *v1972;
  *(v50 + 12096) = v411;
  *(v50 + 12112) = v409;
  *(v50 + 12192) = 0xD00000000000003ELL;
  *(v50 + 12200) = 0x80000001BE141F50;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v1987[8], 0, 32);
  *v1987 = v643;
  *&v1987[40] = v594;
  *&v1988 = 0;
  *(&v1988 + 1) = v647;
  v1989 = 0u;
  v1990 = 0u;
  v1991 = v644;
  v1993 = 0u;
  v1994 = 0u;
  v1992 = v643;
  v1995 = v594;
  v1996 = 0;
  v1997 = v647;
  v1998 = 0u;
  v1999 = 0u;
  v2000 = v644;
  v2001 = 0;
  sub_1BD289374(v1987, v2645);
  sub_1BD2893D0(&v1992);
  v412 = *&v1987[32];
  *(v50 + 12256) = v1988;
  v413 = v1990;
  *(v50 + 12272) = v1989;
  *(v50 + 12288) = v413;
  *(v50 + 12304) = v1991;
  v414 = *&v1987[16];
  *(v50 + 12208) = *v1987;
  *(v50 + 12224) = v414;
  *(v50 + 12240) = v412;
  *(v50 + 12320) = 0xD00000000000003ELL;
  *(v50 + 12328) = 0x80000001BE141F90;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2002[8], 0, 32);
  *v2002 = v643;
  *&v2002[40] = v594;
  *&v2003 = 0;
  *(&v2003 + 1) = v647;
  v2004 = 0u;
  v2005 = 0u;
  v2006 = v644;
  v2008 = 0u;
  v2009 = 0u;
  v2007 = v643;
  v2010 = v594;
  v2011 = 0;
  v2012 = v647;
  v2013 = 0u;
  v2014 = 0u;
  v2015 = v644;
  v2016 = 0;
  sub_1BD289374(v2002, v2645);
  sub_1BD2893D0(&v2007);
  v415 = *&v2002[32];
  *(v50 + 12384) = v2003;
  v416 = v2005;
  *(v50 + 12400) = v2004;
  *(v50 + 12416) = v416;
  *(v50 + 12432) = v2006;
  v417 = *&v2002[16];
  *(v50 + 12336) = *v2002;
  *(v50 + 12352) = v417;
  *(v50 + 12368) = v415;
  *(v50 + 12448) = 0xD000000000000036;
  *(v50 + 12456) = 0x80000001BE141FD0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2017[8], 0, 32);
  *v2017 = v643;
  *&v2017[40] = v594;
  *&v2018 = 0;
  *(&v2018 + 1) = v647;
  v2019 = 0u;
  v2020 = 0u;
  v2021 = v644;
  v2023 = 0u;
  v2024 = 0u;
  v2022 = v643;
  v2025 = v594;
  v2026 = 0;
  v2027 = v647;
  v2028 = 0u;
  v2029 = 0u;
  v2030 = v644;
  v2031 = 0;
  sub_1BD289374(v2017, v2645);
  sub_1BD2893D0(&v2022);
  v418 = *&v2017[32];
  *(v50 + 12512) = v2018;
  v419 = v2020;
  *(v50 + 12528) = v2019;
  *(v50 + 12544) = v419;
  *(v50 + 12560) = v2021;
  v420 = *&v2017[16];
  *(v50 + 12464) = *v2017;
  *(v50 + 12480) = v420;
  *(v50 + 12496) = v418;
  *(v50 + 12576) = 0xD000000000000020;
  *(v50 + 12584) = 0x80000001BE142010;
  v642 = v613;
  0, v421, v422, v423, v424, v425, v426, v427;
  v428 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.99 green:0.73 blue:0.04 alpha:1.0];
  v429 = [v428 CGColor];
  0, v430, v431, v432, v433, v434, v435, v436;

  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2032 = v613;
  memset(&v2033[8], 0, 32);
  *v2033 = v4;
  *&v2033[40] = v429;
  *&v2034 = 0;
  *(&v2034 + 1) = v4;
  v2035 = 0u;
  v2036 = 0u;
  v2037[0] = v613;
  v2037[1] = 0;
  v2038 = 0u;
  v2039 = 0u;
  v2037[2] = v4;
  v2040 = v429;
  v2041 = 0;
  v2042 = v4;
  v2044 = 0u;
  v2043 = 0u;
  sub_1BD289374(&v2032, v2645);
  sub_1BD2893D0(v2037);
  v437 = *&v2033[16];
  *(v50 + 12640) = *&v2033[32];
  v438 = v2035;
  *(v50 + 12656) = v2034;
  *(v50 + 12672) = v438;
  *(v50 + 12688) = v2036;
  v439 = *v2033;
  *(v50 + 12592) = v2032;
  *(v50 + 12608) = v439;
  *(v50 + 12624) = v437;
  *(v50 + 12704) = 0xD00000000000001ELL;
  *(v50 + 12712) = 0x80000001BE142040;
  v440 = swift_allocObject();
  *(v440 + 16) = xmmword_1BE0B6CA0;
  *(v440 + 32) = v660;
  *(v440 + 40) = v659;
  v441 = swift_allocObject();
  *(v441 + 16) = xmmword_1BE0B6CA0;
  *(v441 + 32) = v41;
  *(v441 + 40) = v658;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2047 = 0u;
  v2046 = 0u;
  v2045 = 0u;
  memset(&v2048[8], 0, 48);
  *v2048 = v440;
  *&v2048[56] = v441;
  memset(v2049, 0, sizeof(v2049));
  v2051 = 0u;
  v2052 = 0u;
  v2053 = 0u;
  v2050 = v440;
  v2054 = v441;
  sub_1BD289374(&v2045, v2645);
  sub_1BD2893D0(v2049);
  v442 = v2047;
  *(v50 + 12768) = *v2048;
  v443 = *&v2048[32];
  *(v50 + 12784) = *&v2048[16];
  *(v50 + 12800) = v443;
  *(v50 + 12816) = *&v2048[48];
  v444 = v2046;
  *(v50 + 12720) = v2045;
  *(v50 + 12736) = v444;
  *(v50 + 12752) = v442;
  *(v50 + 12832) = 0xD000000000000017;
  *(v50 + 12840) = 0x80000001BE142060;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  *&v2055 = v669;
  *(&v2055 + 1) = v654;
  memset(&v2056[8], 0, 32);
  *v2056 = v4;
  *&v2056[40] = v669;
  *&v2057 = v45;
  *(&v2057 + 1) = v4;
  v2058 = 0u;
  v2059 = 0u;
  v2060[0] = v669;
  v2060[1] = v654;
  v2061 = 0u;
  v2062 = 0u;
  v2060[2] = v4;
  v2063 = v669;
  v2064 = v45;
  v2065 = v4;
  v2067 = 0u;
  v2066 = 0u;
  sub_1BD289374(&v2055, v2645);
  sub_1BD2893D0(v2060);
  v445 = *&v2056[16];
  *(v50 + 12896) = *&v2056[32];
  v446 = v2058;
  *(v50 + 12912) = v2057;
  *(v50 + 12928) = v446;
  *(v50 + 12944) = v2059;
  v447 = *v2056;
  *(v50 + 12848) = v2055;
  *(v50 + 12864) = v447;
  *(v50 + 12880) = v445;
  *(v50 + 12960) = 0x6C6C69466F747561;
  *(v50 + 12968) = 0xEA00000000003330;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2068 = v669;
  memset(&v2069[8], 0, 32);
  *v2069 = v4;
  *&v2069[40] = v669;
  *&v2070 = 0;
  *(&v2070 + 1) = v4;
  v2071 = 0u;
  v2072 = 0u;
  v2073[0] = v669;
  v2073[1] = 0;
  v2074 = 0u;
  v2075 = 0u;
  v2073[2] = v4;
  v2076 = v669;
  v2077 = 0;
  v2078 = v4;
  v2080 = 0u;
  v2079 = 0u;
  sub_1BD289374(&v2068, v2645);
  sub_1BD2893D0(v2073);
  v448 = *&v2069[16];
  *(v50 + 13024) = *&v2069[32];
  v449 = v2071;
  *(v50 + 13040) = v2070;
  *(v50 + 13056) = v449;
  *(v50 + 13072) = v2072;
  v450 = *v2069;
  *(v50 + 12976) = v2068;
  *(v50 + 12992) = v450;
  *(v50 + 13008) = v448;
  *(v50 + 13088) = 0xD00000000000001BLL;
  *(v50 + 13096) = 0x80000001BE142080;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2081 = v669;
  memset(&v2082[8], 0, 32);
  *v2082 = v4;
  *&v2082[40] = v669;
  *&v2083 = 0;
  *(&v2083 + 1) = v4;
  v2084 = 0u;
  v2085 = 0u;
  v2086[0] = v669;
  v2086[1] = 0;
  v2087 = 0u;
  v2088 = 0u;
  v2086[2] = v4;
  v2089 = v669;
  v2090 = 0;
  v2091 = v4;
  v2093 = 0u;
  v2092 = 0u;
  sub_1BD289374(&v2081, v2645);
  sub_1BD2893D0(v2086);
  v451 = *&v2082[16];
  *(v50 + 13152) = *&v2082[32];
  v452 = v2084;
  *(v50 + 13168) = v2083;
  *(v50 + 13184) = v452;
  *(v50 + 13200) = v2085;
  v453 = *v2082;
  *(v50 + 13104) = v2081;
  *(v50 + 13120) = v453;
  *(v50 + 13136) = v451;
  *(v50 + 13216) = 0xD000000000000019;
  *(v50 + 13224) = 0x80000001BE1420A0;
  v454 = swift_allocObject();
  *(v454 + 16) = xmmword_1BE0B6CA0;
  *(v454 + 32) = v662;
  *(v454 + 40) = v666;
  v455 = swift_allocObject();
  *(v455 + 16) = xmmword_1BE0B6CA0;
  *(v455 + 32) = v664;
  *(v455 + 40) = v663;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2096 = 0u;
  v2095 = 0u;
  v2094 = 0u;
  memset(&v2097[8], 0, 48);
  *v2097 = v454;
  *&v2097[56] = v455;
  memset(v2098, 0, sizeof(v2098));
  v2100 = 0u;
  v2101 = 0u;
  v2102 = 0u;
  v2099 = v454;
  v2103 = v455;
  sub_1BD289374(&v2094, v2645);
  sub_1BD2893D0(v2098);
  v456 = v2096;
  *(v50 + 13280) = *v2097;
  v457 = *&v2097[32];
  *(v50 + 13296) = *&v2097[16];
  *(v50 + 13312) = v457;
  *(v50 + 13328) = *&v2097[48];
  v458 = v2095;
  *(v50 + 13232) = v2094;
  *(v50 + 13248) = v458;
  *(v50 + 13264) = v456;
  *(v50 + 13344) = 0xD00000000000001BLL;
  *(v50 + 13352) = 0x80000001BE1420C0;
  v667 = v616;
  v665 = v615;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  *&v2104 = v616;
  *(&v2104 + 1) = v657;
  memset(&v2105[8], 0, 32);
  *v2105 = v4;
  *&v2105[40] = v615;
  *&v2106 = v657;
  *(&v2106 + 1) = v4;
  v2107 = 0u;
  v2108 = 0u;
  v2109[0] = v616;
  v2109[1] = v657;
  v2110 = 0u;
  v2111 = 0u;
  v2109[2] = v4;
  v2112 = v615;
  v2113 = v657;
  v2114 = v4;
  v2116 = 0u;
  v2115 = 0u;
  sub_1BD289374(&v2104, v2645);
  sub_1BD2893D0(v2109);
  v459 = *&v2105[16];
  *(v50 + 13408) = *&v2105[32];
  v460 = v2107;
  *(v50 + 13424) = v2106;
  *(v50 + 13440) = v460;
  *(v50 + 13456) = v2108;
  v461 = *v2105;
  *(v50 + 13360) = v2104;
  *(v50 + 13376) = v461;
  *(v50 + 13392) = v459;
  *(v50 + 13472) = 0xD000000000000023;
  *(v50 + 13480) = 0x80000001BE1420E0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2117 = v656;
  memset(&v2118[8], 0, 32);
  *v2118 = v4;
  *&v2118[40] = v656;
  *&v2119 = 0;
  *(&v2119 + 1) = v4;
  v2120 = 0u;
  v2121 = 0u;
  v2122[0] = v656;
  v2122[1] = 0;
  v2123 = 0u;
  v2124 = 0u;
  v2122[2] = v4;
  v2125 = v656;
  v2126 = 0;
  v2127 = v4;
  v2129 = 0u;
  v2128 = 0u;
  sub_1BD289374(&v2117, v2645);
  sub_1BD2893D0(v2122);
  v462 = *&v2118[16];
  *(v50 + 13536) = *&v2118[32];
  v463 = v2120;
  *(v50 + 13552) = v2119;
  *(v50 + 13568) = v463;
  *(v50 + 13584) = v2121;
  v464 = *v2118;
  *(v50 + 13488) = v2117;
  *(v50 + 13504) = v464;
  *(v50 + 13520) = v462;
  *(v50 + 13600) = 0xD000000000000037;
  *(v50 + 13608) = 0x80000001BE142110;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2130[8], 0, 32);
  *v2130 = v643;
  *&v2130[40] = v594;
  *&v2131 = 0;
  *(&v2131 + 1) = v647;
  v2132 = 0u;
  v2133 = 0u;
  v2134 = v644;
  v2136 = 0u;
  v2137 = 0u;
  v2135 = v643;
  v2138 = v594;
  v2139 = 0;
  v2140 = v647;
  v2141 = 0u;
  v2142 = 0u;
  v2143 = v644;
  v2144 = 0;
  sub_1BD289374(v2130, v2645);
  sub_1BD2893D0(&v2135);
  v465 = *&v2130[32];
  *(v50 + 13664) = v2131;
  v466 = v2133;
  *(v50 + 13680) = v2132;
  *(v50 + 13696) = v466;
  *(v50 + 13712) = v2134;
  v467 = *&v2130[16];
  *(v50 + 13616) = *v2130;
  *(v50 + 13632) = v467;
  *(v50 + 13648) = v465;
  *(v50 + 13728) = 0xD000000000000037;
  *(v50 + 13736) = 0x80000001BE142150;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2145[8], 0, 32);
  *v2145 = v643;
  *&v2145[40] = v594;
  *&v2146 = 0;
  *(&v2146 + 1) = v647;
  v2147 = 0u;
  v2148 = 0u;
  v2149 = v644;
  v2151 = 0u;
  v2152 = 0u;
  v2150 = v643;
  v2153 = v594;
  v2154 = 0;
  v2155 = v647;
  v2156 = 0u;
  v2157 = 0u;
  v2158 = v644;
  v2159 = 0;
  sub_1BD289374(v2145, v2645);
  sub_1BD2893D0(&v2150);
  v468 = *&v2145[32];
  *(v50 + 13792) = v2146;
  v469 = v2148;
  *(v50 + 13808) = v2147;
  *(v50 + 13824) = v469;
  *(v50 + 13840) = v2149;
  v470 = *&v2145[16];
  *(v50 + 13744) = *v2145;
  *(v50 + 13760) = v470;
  *(v50 + 13776) = v468;
  *(v50 + 13856) = 0xD000000000000037;
  *(v50 + 13864) = 0x80000001BE142190;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2160[8], 0, 32);
  *v2160 = v643;
  *&v2160[40] = v594;
  *&v2161 = 0;
  *(&v2161 + 1) = v647;
  v2162 = 0u;
  v2163 = 0u;
  v2164 = v644;
  v2166 = 0u;
  v2167 = 0u;
  v2165 = v643;
  v2168 = v594;
  v2169 = 0;
  v2170 = v647;
  v2171 = 0u;
  v2172 = 0u;
  v2173 = v644;
  v2174 = 0;
  sub_1BD289374(v2160, v2645);
  sub_1BD2893D0(&v2165);
  v471 = *&v2160[32];
  *(v50 + 13920) = v2161;
  v472 = v2163;
  *(v50 + 13936) = v2162;
  *(v50 + 13952) = v472;
  *(v50 + 13968) = v2164;
  v473 = *&v2160[16];
  *(v50 + 13872) = *v2160;
  *(v50 + 13888) = v473;
  *(v50 + 13904) = v471;
  *(v50 + 13984) = 0xD00000000000002FLL;
  *(v50 + 13992) = 0x80000001BE1421D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2175 = v594;
  memset(&v2176[8], 0, 32);
  *v2176 = v4;
  *&v2176[40] = v644;
  *&v2177 = 0;
  *(&v2177 + 1) = v4;
  v2178 = 0u;
  v2179 = 0u;
  v2180[0] = v594;
  v2180[1] = 0;
  v2181 = 0u;
  v2182 = 0u;
  v2180[2] = v4;
  v2183 = v644;
  v2184 = 0;
  v2185 = v4;
  v2187 = 0u;
  v2186 = 0u;
  sub_1BD289374(&v2175, v2645);
  sub_1BD2893D0(v2180);
  v474 = *&v2176[16];
  *(v50 + 14048) = *&v2176[32];
  v475 = v2178;
  *(v50 + 14064) = v2177;
  *(v50 + 14080) = v475;
  *(v50 + 14096) = v2179;
  v476 = *v2176;
  *(v50 + 14000) = v2175;
  *(v50 + 14016) = v476;
  *(v50 + 14032) = v474;
  *(v50 + 14112) = 0xD000000000000037;
  *(v50 + 14120) = 0x80000001BE142200;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2188[8], 0, 32);
  *v2188 = v643;
  *&v2188[40] = v594;
  *&v2189 = 0;
  *(&v2189 + 1) = v647;
  v2190 = 0u;
  v2191 = 0u;
  v2192 = v644;
  v2194 = 0u;
  v2195 = 0u;
  v2193 = v643;
  v2196 = v594;
  v2197 = 0;
  v2198 = v647;
  v2199 = 0u;
  v2200 = 0u;
  v2201 = v644;
  v2202 = 0;
  sub_1BD289374(v2188, v2645);
  sub_1BD2893D0(&v2193);
  v477 = *&v2188[32];
  *(v50 + 14176) = v2189;
  v478 = v2191;
  *(v50 + 14192) = v2190;
  *(v50 + 14208) = v478;
  *(v50 + 14224) = v2192;
  v479 = *&v2188[16];
  *(v50 + 14128) = *v2188;
  *(v50 + 14144) = v479;
  *(v50 + 14160) = v477;
  *(v50 + 14240) = 0xD000000000000037;
  *(v50 + 14248) = 0x80000001BE142240;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2203[8], 0, 32);
  *v2203 = v643;
  *&v2203[40] = v594;
  *&v2204 = 0;
  *(&v2204 + 1) = v647;
  v2205 = 0u;
  v2206 = 0u;
  v2207 = v644;
  v2209 = 0u;
  v2210 = 0u;
  v2208 = v643;
  v2211 = v594;
  v2212 = 0;
  v2213 = v647;
  v2214 = 0u;
  v2215 = 0u;
  v2216 = v644;
  v2217 = 0;
  sub_1BD289374(v2203, v2645);
  sub_1BD2893D0(&v2208);
  v480 = *&v2203[32];
  *(v50 + 14304) = v2204;
  v481 = v2206;
  *(v50 + 14320) = v2205;
  *(v50 + 14336) = v481;
  *(v50 + 14352) = v2207;
  v482 = *&v2203[16];
  *(v50 + 14256) = *v2203;
  *(v50 + 14272) = v482;
  *(v50 + 14288) = v480;
  *(v50 + 14368) = 0xD000000000000037;
  *(v50 + 14376) = 0x80000001BE142280;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2218[8], 0, 32);
  *v2218 = v643;
  *&v2218[40] = v594;
  *&v2219 = 0;
  *(&v2219 + 1) = v647;
  v2220 = 0u;
  v2221 = 0u;
  v2222 = v644;
  v2224 = 0u;
  v2225 = 0u;
  v2223 = v643;
  v2226 = v594;
  v2227 = 0;
  v2228 = v647;
  v2229 = 0u;
  v2230 = 0u;
  v2231 = v644;
  v2232 = 0;
  sub_1BD289374(v2218, v2645);
  sub_1BD2893D0(&v2223);
  v483 = *&v2218[32];
  *(v50 + 14432) = v2219;
  v484 = v2221;
  *(v50 + 14448) = v2220;
  *(v50 + 14464) = v484;
  *(v50 + 14480) = v2222;
  v485 = *&v2218[16];
  *(v50 + 14384) = *v2218;
  *(v50 + 14400) = v485;
  *(v50 + 14416) = v483;
  *(v50 + 14496) = 0xD00000000000002FLL;
  *(v50 + 14504) = 0x80000001BE1422C0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2233 = v594;
  memset(&v2234[8], 0, 32);
  *v2234 = v4;
  *&v2234[40] = v644;
  *&v2235 = 0;
  *(&v2235 + 1) = v4;
  v2236 = 0u;
  v2237 = 0u;
  v2238[0] = v594;
  v2238[1] = 0;
  v2239 = 0u;
  v2240 = 0u;
  v2238[2] = v4;
  v2241 = v644;
  v2242 = 0;
  v2243 = v4;
  v2245 = 0u;
  v2244 = 0u;
  sub_1BD289374(&v2233, v2645);
  sub_1BD2893D0(v2238);
  v486 = *&v2234[16];
  *(v50 + 14560) = *&v2234[32];
  v487 = v2236;
  *(v50 + 14576) = v2235;
  *(v50 + 14592) = v487;
  *(v50 + 14608) = v2237;
  v488 = *v2234;
  *(v50 + 14512) = v2233;
  *(v50 + 14528) = v488;
  *(v50 + 14544) = v486;
  *(v50 + 14624) = 0xD000000000000037;
  *(v50 + 14632) = 0x80000001BE1422F0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2246[8], 0, 32);
  *v2246 = v643;
  *&v2246[40] = v594;
  *&v2247 = 0;
  *(&v2247 + 1) = v647;
  v2248 = 0u;
  v2249 = 0u;
  v2250 = v644;
  v2252 = 0u;
  v2253 = 0u;
  v2251 = v643;
  v2254 = v594;
  v2255 = 0;
  v2256 = v647;
  v2257 = 0u;
  v2258 = 0u;
  v2259 = v644;
  v2260 = 0;
  sub_1BD289374(v2246, v2645);
  sub_1BD2893D0(&v2251);
  v489 = *&v2246[32];
  *(v50 + 14688) = v2247;
  v490 = v2249;
  *(v50 + 14704) = v2248;
  *(v50 + 14720) = v490;
  *(v50 + 14736) = v2250;
  v491 = *&v2246[16];
  *(v50 + 14640) = *v2246;
  *(v50 + 14656) = v491;
  *(v50 + 14672) = v489;
  *(v50 + 14752) = 0xD000000000000037;
  *(v50 + 14760) = 0x80000001BE142330;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2261[8], 0, 32);
  *v2261 = v643;
  *&v2261[40] = v594;
  *&v2262 = 0;
  *(&v2262 + 1) = v647;
  v2263 = 0u;
  v2264 = 0u;
  v2265 = v644;
  v2267 = 0u;
  v2268 = 0u;
  v2266 = v643;
  v2269 = v594;
  v2270 = 0;
  v2271 = v647;
  v2272 = 0u;
  v2273 = 0u;
  v2274 = v644;
  v2275 = 0;
  sub_1BD289374(v2261, v2645);
  sub_1BD2893D0(&v2266);
  v492 = *&v2261[32];
  *(v50 + 14816) = v2262;
  v493 = v2264;
  *(v50 + 14832) = v2263;
  *(v50 + 14848) = v493;
  *(v50 + 14864) = v2265;
  v494 = *&v2261[16];
  *(v50 + 14768) = *v2261;
  *(v50 + 14784) = v494;
  *(v50 + 14800) = v492;
  *(v50 + 14880) = 0xD000000000000037;
  *(v50 + 14888) = 0x80000001BE142370;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2276[8], 0, 32);
  *v2276 = v643;
  *&v2276[40] = v594;
  *&v2277 = 0;
  *(&v2277 + 1) = v647;
  v2278 = 0u;
  v2279 = 0u;
  v2280 = v644;
  v2282 = 0u;
  v2283 = 0u;
  v2281 = v643;
  v2284 = v594;
  v2285 = 0;
  v2286 = v647;
  v2287 = 0u;
  v2288 = 0u;
  v2289 = v644;
  v2290 = 0;
  sub_1BD289374(v2276, v2645);
  sub_1BD2893D0(&v2281);
  v495 = *&v2276[32];
  *(v50 + 14944) = v2277;
  v496 = v2279;
  *(v50 + 14960) = v2278;
  *(v50 + 14976) = v496;
  *(v50 + 14992) = v2280;
  v497 = *&v2276[16];
  *(v50 + 14896) = *v2276;
  *(v50 + 14912) = v497;
  *(v50 + 14928) = v495;
  *(v50 + 15008) = 0xD00000000000002FLL;
  *(v50 + 15016) = 0x80000001BE1423B0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2291 = v594;
  memset(&v2292[8], 0, 32);
  *v2292 = v4;
  *&v2292[40] = v644;
  *&v2293 = 0;
  *(&v2293 + 1) = v4;
  v2294 = 0u;
  v2295 = 0u;
  v2296[0] = v594;
  v2296[1] = 0;
  v2297 = 0u;
  v2298 = 0u;
  v2296[2] = v4;
  v2299 = v644;
  v2300 = 0;
  v2301 = v4;
  v2303 = 0u;
  v2302 = 0u;
  sub_1BD289374(&v2291, v2645);
  sub_1BD2893D0(v2296);
  v498 = *&v2292[16];
  *(v50 + 15072) = *&v2292[32];
  v499 = v2294;
  *(v50 + 15088) = v2293;
  *(v50 + 15104) = v499;
  *(v50 + 15120) = v2295;
  v500 = *v2292;
  *(v50 + 15024) = v2291;
  *(v50 + 15040) = v500;
  *(v50 + 15056) = v498;
  *(v50 + 15136) = 0xD000000000000037;
  *(v50 + 15144) = 0x80000001BE1423E0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2304[8], 0, 32);
  *v2304 = v643;
  *&v2304[40] = v594;
  *&v2305 = 0;
  *(&v2305 + 1) = v647;
  v2306 = 0u;
  v2307 = 0u;
  v2308 = v644;
  v2310 = 0u;
  v2311 = 0u;
  v2309 = v643;
  v2312 = v594;
  v2313 = 0;
  v2314 = v647;
  v2315 = 0u;
  v2316 = 0u;
  v2317 = v644;
  v2318 = 0;
  sub_1BD289374(v2304, v2645);
  sub_1BD2893D0(&v2309);
  v501 = *&v2304[32];
  *(v50 + 15200) = v2305;
  v502 = v2307;
  *(v50 + 15216) = v2306;
  *(v50 + 15232) = v502;
  *(v50 + 15248) = v2308;
  v503 = *&v2304[16];
  *(v50 + 15152) = *v2304;
  *(v50 + 15168) = v503;
  *(v50 + 15184) = v501;
  *(v50 + 15264) = 0xD000000000000037;
  *(v50 + 15272) = 0x80000001BE142420;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2319[8], 0, 32);
  *v2319 = v643;
  *&v2319[40] = v594;
  *&v2320 = 0;
  *(&v2320 + 1) = v647;
  v2321 = 0u;
  v2322 = 0u;
  v2323 = v644;
  v2325 = 0u;
  v2326 = 0u;
  v2324 = v643;
  v2327 = v594;
  v2328 = 0;
  v2329 = v647;
  v2330 = 0u;
  v2331 = 0u;
  v2332 = v644;
  v2333 = 0;
  sub_1BD289374(v2319, v2645);
  sub_1BD2893D0(&v2324);
  v504 = *&v2319[32];
  *(v50 + 15328) = v2320;
  v505 = v2322;
  *(v50 + 15344) = v2321;
  *(v50 + 15360) = v505;
  *(v50 + 15376) = v2323;
  v506 = *&v2319[16];
  *(v50 + 15280) = *v2319;
  *(v50 + 15296) = v506;
  *(v50 + 15312) = v504;
  *(v50 + 15392) = 0xD000000000000037;
  *(v50 + 15400) = 0x80000001BE142460;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2334[8], 0, 32);
  *v2334 = v643;
  *&v2334[40] = v594;
  *&v2335 = 0;
  *(&v2335 + 1) = v647;
  v2336 = 0u;
  v2337 = 0u;
  v2338 = v644;
  v2340 = 0u;
  v2341 = 0u;
  v2339 = v643;
  v2342 = v594;
  v2343 = 0;
  v2344 = v647;
  v2345 = 0u;
  v2346 = 0u;
  v2347 = v644;
  v2348 = 0;
  sub_1BD289374(v2334, v2645);
  sub_1BD2893D0(&v2339);
  v507 = *&v2334[32];
  *(v50 + 15456) = v2335;
  v508 = v2337;
  *(v50 + 15472) = v2336;
  *(v50 + 15488) = v508;
  *(v50 + 15504) = v2338;
  v509 = *&v2334[16];
  *(v50 + 15408) = *v2334;
  *(v50 + 15424) = v509;
  *(v50 + 15440) = v507;
  *(v50 + 15520) = 0xD00000000000002FLL;
  *(v50 + 15528) = 0x80000001BE1424A0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2349 = v594;
  memset(&v2350[8], 0, 32);
  *v2350 = v4;
  *&v2350[40] = v644;
  *&v2351 = 0;
  *(&v2351 + 1) = v4;
  v2352 = 0u;
  v2353 = 0u;
  v2354[0] = v594;
  v2354[1] = 0;
  v2355 = 0u;
  v2356 = 0u;
  v2354[2] = v4;
  v2357 = v644;
  v2358 = 0;
  v2359 = v4;
  v2361 = 0u;
  v2360 = 0u;
  sub_1BD289374(&v2349, v2645);
  sub_1BD2893D0(v2354);
  v510 = *&v2350[16];
  *(v50 + 15584) = *&v2350[32];
  v511 = v2352;
  *(v50 + 15600) = v2351;
  *(v50 + 15616) = v511;
  *(v50 + 15632) = v2353;
  v512 = *v2350;
  *(v50 + 15536) = v2349;
  *(v50 + 15552) = v512;
  *(v50 + 15568) = v510;
  *(v50 + 15648) = 0xD00000000000003ELL;
  *(v50 + 15656) = 0x80000001BE1424D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2362[8], 0, 32);
  *v2362 = v643;
  *&v2362[40] = v594;
  *&v2363 = 0;
  *(&v2363 + 1) = v647;
  v2364 = 0u;
  v2365 = 0u;
  v2366 = v644;
  v2368 = 0u;
  v2369 = 0u;
  v2367 = v643;
  v2370 = v594;
  v2371 = 0;
  v2372 = v647;
  v2373 = 0u;
  v2374 = 0u;
  v2375 = v644;
  v2376 = 0;
  sub_1BD289374(v2362, v2645);
  sub_1BD2893D0(&v2367);
  v513 = *&v2362[32];
  *(v50 + 15712) = v2363;
  v514 = v2365;
  *(v50 + 15728) = v2364;
  *(v50 + 15744) = v514;
  *(v50 + 15760) = v2366;
  v515 = *&v2362[16];
  *(v50 + 15664) = *v2362;
  *(v50 + 15680) = v515;
  *(v50 + 15696) = v513;
  *(v50 + 15776) = 0xD00000000000003ELL;
  *(v50 + 15784) = 0x80000001BE142510;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2377[8], 0, 32);
  *v2377 = v643;
  *&v2377[40] = v594;
  *&v2378 = 0;
  *(&v2378 + 1) = v647;
  v2379 = 0u;
  v2380 = 0u;
  v2381 = v644;
  v2383 = 0u;
  v2384 = 0u;
  v2382 = v643;
  v2385 = v594;
  v2386 = 0;
  v2387 = v647;
  v2388 = 0u;
  v2389 = 0u;
  v2390 = v644;
  v2391 = 0;
  sub_1BD289374(v2377, v2645);
  sub_1BD2893D0(&v2382);
  v516 = *&v2377[32];
  *(v50 + 15840) = v2378;
  v517 = v2380;
  *(v50 + 15856) = v2379;
  *(v50 + 15872) = v517;
  *(v50 + 15888) = v2381;
  v518 = *&v2377[16];
  *(v50 + 15792) = *v2377;
  *(v50 + 15808) = v518;
  *(v50 + 15824) = v516;
  *(v50 + 15904) = 0xD00000000000003ELL;
  *(v50 + 15912) = 0x80000001BE142550;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2392[8], 0, 32);
  *v2392 = v643;
  *&v2392[40] = v594;
  *&v2393 = 0;
  *(&v2393 + 1) = v647;
  v2394 = 0u;
  v2395 = 0u;
  v2396 = v644;
  v2398 = 0u;
  v2399 = 0u;
  v2397 = v643;
  v2400 = v594;
  v2401 = 0;
  v2402 = v647;
  v2403 = 0u;
  v2404 = 0u;
  v2405 = v644;
  v2406 = 0;
  sub_1BD289374(v2392, v2645);
  sub_1BD2893D0(&v2397);
  v519 = *&v2392[32];
  *(v50 + 15968) = v2393;
  v520 = v2395;
  *(v50 + 15984) = v2394;
  *(v50 + 16000) = v520;
  *(v50 + 16016) = v2396;
  v521 = *&v2392[16];
  *(v50 + 15920) = *v2392;
  *(v50 + 15936) = v521;
  *(v50 + 15952) = v519;
  *(v50 + 16032) = 0xD000000000000036;
  *(v50 + 16040) = 0x80000001BE142590;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2407[8], 0, 32);
  *v2407 = v643;
  *&v2407[40] = v594;
  *&v2408 = 0;
  *(&v2408 + 1) = v647;
  v2409 = 0u;
  v2410 = 0u;
  v2411 = v644;
  v2413 = 0u;
  v2414 = 0u;
  v2412 = v643;
  v2415 = v594;
  v2416 = 0;
  v2417 = v647;
  v2418 = 0u;
  v2419 = 0u;
  v2420 = v644;
  v2421 = 0;
  sub_1BD289374(v2407, v2645);
  sub_1BD2893D0(&v2412);
  v522 = *&v2407[32];
  *(v50 + 16096) = v2408;
  v523 = v2410;
  *(v50 + 16112) = v2409;
  *(v50 + 16128) = v523;
  *(v50 + 16144) = v2411;
  v524 = *&v2407[16];
  *(v50 + 16048) = *v2407;
  *(v50 + 16064) = v524;
  *(v50 + 16080) = v522;
  *(v50 + 16160) = 0xD00000000000003ELL;
  *(v50 + 16168) = 0x80000001BE1425D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2422[8], 0, 32);
  *v2422 = v643;
  *&v2422[40] = v594;
  *&v2423 = 0;
  *(&v2423 + 1) = v647;
  v2424 = 0u;
  v2425 = 0u;
  v2426 = v644;
  v2428 = 0u;
  v2429 = 0u;
  v2427 = v643;
  v2430 = v594;
  v2431 = 0;
  v2432 = v647;
  v2433 = 0u;
  v2434 = 0u;
  v2435 = v644;
  v2436 = 0;
  sub_1BD289374(v2422, v2645);
  sub_1BD2893D0(&v2427);
  v525 = *&v2422[32];
  *(v50 + 16224) = v2423;
  v526 = v2425;
  *(v50 + 16240) = v2424;
  *(v50 + 16256) = v526;
  *(v50 + 16272) = v2426;
  v527 = *&v2422[16];
  *(v50 + 16176) = *v2422;
  *(v50 + 16192) = v527;
  *(v50 + 16208) = v525;
  *(v50 + 16288) = 0xD00000000000003ELL;
  *(v50 + 16296) = 0x80000001BE142610;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2437[8], 0, 32);
  *v2437 = v643;
  *&v2437[40] = v594;
  *&v2438 = 0;
  *(&v2438 + 1) = v647;
  v2439 = 0u;
  v2440 = 0u;
  v2441 = v644;
  v2443 = 0u;
  v2444 = 0u;
  v2442 = v643;
  v2445 = v594;
  v2446 = 0;
  v2447 = v647;
  v2448 = 0u;
  v2449 = 0u;
  v2450 = v644;
  v2451 = 0;
  sub_1BD289374(v2437, v2645);
  sub_1BD2893D0(&v2442);
  v528 = *&v2437[32];
  *(v50 + 16352) = v2438;
  v529 = v2440;
  *(v50 + 16368) = v2439;
  *(v50 + 0x4000) = v529;
  *(v50 + 16400) = v2441;
  v530 = *&v2437[16];
  *(v50 + 16304) = *v2437;
  *(v50 + 16320) = v530;
  *(v50 + 16336) = v528;
  *(v50 + 16416) = 0xD00000000000003ELL;
  *(v50 + 16424) = 0x80000001BE142650;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2452[8], 0, 32);
  *v2452 = v643;
  *&v2452[40] = v594;
  *&v2453 = 0;
  *(&v2453 + 1) = v647;
  v2454 = 0u;
  v2455 = 0u;
  v2456 = v644;
  v2458 = 0u;
  v2459 = 0u;
  v2457 = v643;
  v2460 = v594;
  v2461 = 0;
  v2462 = v647;
  v2463 = 0u;
  v2464 = 0u;
  v2465 = v644;
  v2466 = 0;
  sub_1BD289374(v2452, v2645);
  sub_1BD2893D0(&v2457);
  v531 = *&v2452[32];
  *(v50 + 16480) = v2453;
  v532 = v2455;
  *(v50 + 16496) = v2454;
  *(v50 + 16512) = v532;
  *(v50 + 16528) = v2456;
  v533 = *&v2452[16];
  *(v50 + 16432) = *v2452;
  *(v50 + 16448) = v533;
  *(v50 + 16464) = v531;
  *(v50 + 16544) = 0xD000000000000036;
  *(v50 + 16552) = 0x80000001BE142690;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2467[8], 0, 32);
  *v2467 = v643;
  *&v2467[40] = v594;
  *&v2468 = 0;
  *(&v2468 + 1) = v647;
  v2469 = 0u;
  v2470 = 0u;
  v2471 = v644;
  v2473 = 0u;
  v2474 = 0u;
  v2472 = v643;
  v2475 = v594;
  v2476 = 0;
  v2477 = v647;
  v2478 = 0u;
  v2479 = 0u;
  v2480 = v644;
  v2481 = 0;
  sub_1BD289374(v2467, v2645);
  sub_1BD2893D0(&v2472);
  v534 = *&v2467[32];
  *(v50 + 16608) = v2468;
  v535 = v2470;
  *(v50 + 16624) = v2469;
  *(v50 + 16640) = v535;
  *(v50 + 16656) = v2471;
  v536 = *&v2467[16];
  *(v50 + 16560) = *v2467;
  *(v50 + 16576) = v536;
  *(v50 + 16592) = v534;
  *(v50 + 16672) = 0xD00000000000003ELL;
  *(v50 + 16680) = 0x80000001BE1426D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2482[8], 0, 32);
  *v2482 = v643;
  *&v2482[40] = v594;
  *&v2483 = 0;
  *(&v2483 + 1) = v647;
  v2484 = 0u;
  v2485 = 0u;
  v2486 = v644;
  v2488 = 0u;
  v2489 = 0u;
  v2487 = v643;
  v2490 = v594;
  v2491 = 0;
  v2492 = v647;
  v2493 = 0u;
  v2494 = 0u;
  v2495 = v644;
  v2496 = 0;
  sub_1BD289374(v2482, v2645);
  sub_1BD2893D0(&v2487);
  v537 = *&v2482[32];
  *(v50 + 16736) = v2483;
  v538 = v2485;
  *(v50 + 16752) = v2484;
  *(v50 + 16768) = v538;
  *(v50 + 16784) = v2486;
  v539 = *&v2482[16];
  *(v50 + 16688) = *v2482;
  *(v50 + 16704) = v539;
  *(v50 + 16720) = v537;
  *(v50 + 16800) = 0xD00000000000003ELL;
  *(v50 + 16808) = 0x80000001BE142710;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2497[8], 0, 32);
  *v2497 = v643;
  *&v2497[40] = v594;
  *&v2498 = 0;
  *(&v2498 + 1) = v647;
  v2499 = 0u;
  v2500 = 0u;
  v2501 = v644;
  v2503 = 0u;
  v2504 = 0u;
  v2502 = v643;
  v2505 = v594;
  v2506 = 0;
  v2507 = v647;
  v2508 = 0u;
  v2509 = 0u;
  v2510 = v644;
  v2511 = 0;
  sub_1BD289374(v2497, v2645);
  sub_1BD2893D0(&v2502);
  v540 = *&v2497[32];
  *(v50 + 16864) = v2498;
  v541 = v2500;
  *(v50 + 16880) = v2499;
  *(v50 + 16896) = v541;
  *(v50 + 16912) = v2501;
  v542 = *&v2497[16];
  *(v50 + 16816) = *v2497;
  *(v50 + 16832) = v542;
  *(v50 + 16848) = v540;
  *(v50 + 16928) = 0xD00000000000003ELL;
  *(v50 + 16936) = 0x80000001BE142750;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2512[8], 0, 32);
  *v2512 = v643;
  *&v2512[40] = v594;
  *&v2513 = 0;
  *(&v2513 + 1) = v647;
  v2514 = 0u;
  v2515 = 0u;
  v2516 = v644;
  v2518 = 0u;
  v2519 = 0u;
  v2517 = v643;
  v2520 = v594;
  v2521 = 0;
  v2522 = v647;
  v2523 = 0u;
  v2524 = 0u;
  v2525 = v644;
  v2526 = 0;
  sub_1BD289374(v2512, v2645);
  sub_1BD2893D0(&v2517);
  v543 = *&v2512[32];
  *(v50 + 16992) = v2513;
  v544 = v2515;
  *(v50 + 17008) = v2514;
  *(v50 + 17024) = v544;
  *(v50 + 17040) = v2516;
  v545 = *&v2512[16];
  *(v50 + 16944) = *v2512;
  *(v50 + 16960) = v545;
  *(v50 + 16976) = v543;
  *(v50 + 17056) = 0xD000000000000036;
  *(v50 + 17064) = 0x80000001BE142790;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2527[8], 0, 32);
  *v2527 = v643;
  *&v2527[40] = v594;
  *&v2528 = 0;
  *(&v2528 + 1) = v647;
  v2529 = 0u;
  v2530 = 0u;
  v2531 = v644;
  v2533 = 0u;
  v2534 = 0u;
  v2532 = v643;
  v2535 = v594;
  v2536 = 0;
  v2537 = v647;
  v2538 = 0u;
  v2539 = 0u;
  v2540 = v644;
  v2541 = 0;
  sub_1BD289374(v2527, v2645);
  sub_1BD2893D0(&v2532);
  v546 = *&v2527[32];
  *(v50 + 17120) = v2528;
  v547 = v2530;
  *(v50 + 17136) = v2529;
  *(v50 + 17152) = v547;
  *(v50 + 17168) = v2531;
  v548 = *&v2527[16];
  *(v50 + 17072) = *v2527;
  *(v50 + 17088) = v548;
  *(v50 + 17104) = v546;
  *(v50 + 17184) = 0xD00000000000003ELL;
  *(v50 + 17192) = 0x80000001BE1427D0;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2542[8], 0, 32);
  *v2542 = v643;
  *&v2542[40] = v594;
  *&v2543 = 0;
  *(&v2543 + 1) = v647;
  v2544 = 0u;
  v2545 = 0u;
  v2546 = v644;
  v2548 = 0u;
  v2549 = 0u;
  v2547 = v643;
  v2550 = v594;
  v2551 = 0;
  v2552 = v647;
  v2553 = 0u;
  v2554 = 0u;
  v2555 = v644;
  v2556 = 0;
  sub_1BD289374(v2542, v2645);
  sub_1BD2893D0(&v2547);
  v549 = *&v2542[32];
  *(v50 + 17248) = v2543;
  v550 = v2545;
  *(v50 + 17264) = v2544;
  *(v50 + 17280) = v550;
  *(v50 + 17296) = v2546;
  v551 = *&v2542[16];
  *(v50 + 17200) = *v2542;
  *(v50 + 17216) = v551;
  *(v50 + 17232) = v549;
  *(v50 + 17312) = 0xD00000000000003ELL;
  *(v50 + 17320) = 0x80000001BE142810;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2557[8], 0, 32);
  *v2557 = v643;
  *&v2557[40] = v594;
  *&v2558 = 0;
  *(&v2558 + 1) = v647;
  v2559 = 0u;
  v2560 = 0u;
  v2561 = v644;
  v2563 = 0u;
  v2564 = 0u;
  v2562 = v643;
  v2565 = v594;
  v2566 = 0;
  v2567 = v647;
  v2568 = 0u;
  v2569 = 0u;
  v2570 = v644;
  v2571 = 0;
  sub_1BD289374(v2557, v2645);
  sub_1BD2893D0(&v2562);
  v552 = *&v2557[32];
  *(v50 + 17376) = v2558;
  v553 = v2560;
  *(v50 + 17392) = v2559;
  *(v50 + 17408) = v553;
  *(v50 + 17424) = v2561;
  v554 = *&v2557[16];
  *(v50 + 17328) = *v2557;
  *(v50 + 17344) = v554;
  *(v50 + 17360) = v552;
  *(v50 + 17440) = 0xD00000000000003ELL;
  *(v50 + 17448) = 0x80000001BE142850;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2572[8], 0, 32);
  *v2572 = v643;
  *&v2572[40] = v594;
  *&v2573 = 0;
  *(&v2573 + 1) = v647;
  v2574 = 0u;
  v2575 = 0u;
  v2576 = v644;
  v2578 = 0u;
  v2579 = 0u;
  v2577 = v643;
  v2580 = v594;
  v2581 = 0;
  v2582 = v647;
  v2583 = 0u;
  v2584 = 0u;
  v2585 = v644;
  v2586 = 0;
  sub_1BD289374(v2572, v2645);
  sub_1BD2893D0(&v2577);
  v555 = *&v2572[32];
  *(v50 + 17504) = v2573;
  v556 = v2575;
  *(v50 + 17520) = v2574;
  *(v50 + 17536) = v556;
  *(v50 + 17552) = v2576;
  v557 = *&v2572[16];
  *(v50 + 17456) = *v2572;
  *(v50 + 17472) = v557;
  *(v50 + 17488) = v555;
  *(v50 + 17568) = 0xD000000000000036;
  *(v50 + 17576) = 0x80000001BE142890;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  memset(&v2587[8], 0, 32);
  *v2587 = v643;
  *&v2587[40] = v594;
  *&v2588 = 0;
  *(&v2588 + 1) = v647;
  v2589 = 0u;
  v2590 = 0u;
  v2591 = v644;
  v2593 = 0u;
  v2594 = 0u;
  v2592 = v643;
  v2595 = v594;
  v2596 = 0;
  v2597 = v647;
  v2598 = 0u;
  v2599 = 0u;
  v2600 = v644;
  v2601 = 0;
  sub_1BD289374(v2587, v2645);
  sub_1BD2893D0(&v2592);
  v558 = *&v2587[32];
  *(v50 + 17632) = v2588;
  v559 = v2590;
  *(v50 + 17648) = v2589;
  *(v50 + 17664) = v559;
  *(v50 + 17680) = v2591;
  v560 = *&v2587[16];
  *(v50 + 17584) = *v2587;
  *(v50 + 17600) = v560;
  *(v50 + 17616) = v558;
  *(v50 + 17696) = 0xD000000000000020;
  *(v50 + 17704) = 0x80000001BE1428D0;
  v561 = v638;
  0, v562, v563, v564, v565, v566, v567, v568;
  v569 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.96 green:0.29 blue:0.24 alpha:1.0];
  v570 = [v569 CGColor];
  0, v571, v572, v573, v574, v575, v576, v577;

  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2602 = v638;
  memset(&v2603[8], 0, 32);
  *v2603 = v4;
  *&v2603[40] = v570;
  *&v2604 = 0;
  *(&v2604 + 1) = v4;
  v2605 = 0u;
  v2606 = 0u;
  v2607[0] = v638;
  v2607[1] = 0;
  v2608 = 0u;
  v2609 = 0u;
  v2607[2] = v4;
  v2610 = v570;
  v2611 = 0;
  v2612 = v4;
  v2614 = 0u;
  v2613 = 0u;
  sub_1BD289374(&v2602, v2645);
  sub_1BD2893D0(v2607);
  v578 = *&v2603[16];
  *(v50 + 17760) = *&v2603[32];
  v579 = v2605;
  *(v50 + 17776) = v2604;
  *(v50 + 17792) = v579;
  *(v50 + 17808) = v2606;
  v580 = *v2603;
  *(v50 + 17712) = v2602;
  *(v50 + 17728) = v580;
  *(v50 + 17744) = v578;
  *(v50 + 17824) = 0xD00000000000001ELL;
  *(v50 + 17832) = 0x80000001BE142900;
  v581 = swift_allocObject();
  *(v581 + 16) = xmmword_1BE0B6CA0;
  *(v581 + 32) = v660;
  *(v581 + 40) = v659;
  v582 = swift_allocObject();
  *(v582 + 16) = xmmword_1BE0B6CA0;
  *(v582 + 32) = v41;
  *(v582 + 40) = v658;
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2617 = 0u;
  v2616 = 0u;
  v2615 = 0u;
  memset(&v2618[8], 0, 48);
  *v2618 = v581;
  *&v2618[56] = v582;
  memset(v2619, 0, sizeof(v2619));
  v2621 = 0u;
  v2622 = 0u;
  v2623 = 0u;
  v2620 = v581;
  v2624 = v582;
  sub_1BD289374(&v2615, v2645);
  sub_1BD2893D0(v2619);
  v583 = v2617;
  *(v50 + 17888) = *v2618;
  v584 = *&v2618[32];
  *(v50 + 17904) = *&v2618[16];
  *(v50 + 17920) = v584;
  *(v50 + 17936) = *&v2618[48];
  v585 = v2616;
  *(v50 + 17840) = v2615;
  *(v50 + 17856) = v585;
  *(v50 + 17872) = v583;
  *(v50 + 17952) = 0xD000000000000017;
  *(v50 + 17960) = 0x80000001BE142920;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  *&v2625 = v669;
  *(&v2625 + 1) = v654;
  memset(&v2626[8], 0, 32);
  *v2626 = v4;
  *&v2626[40] = v669;
  *&v2627 = v45;
  *(&v2627 + 1) = v4;
  v2628 = 0u;
  v2629 = 0u;
  v2630[0] = v669;
  v2630[1] = v654;
  v2631 = 0u;
  v2632 = 0u;
  v2630[2] = v4;
  v2633 = v669;
  v2634 = v45;
  v2635 = v4;
  v2637 = 0u;
  v2636 = 0u;
  sub_1BD289374(&v2625, v2645);
  sub_1BD2893D0(v2630);
  v586 = *&v2626[16];
  *(v50 + 18016) = *&v2626[32];
  v587 = v2628;
  *(v50 + 18032) = v2627;
  *(v50 + 18048) = v587;
  *(v50 + 18064) = v2629;
  v588 = *v2626;
  *(v50 + 17968) = v2625;
  *(v50 + 17984) = v588;
  *(v50 + 18000) = v586;
  *(v50 + 18080) = 0xD000000000000011;
  *(v50 + 18088) = 0x80000001BE142940;
  swift_bridgeObjectRelease_n();
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  sub_1BD2892F8(1, 0, 0, 0, 0, 0, 0);
  v2638 = 0uLL;
  *&v2639 = 0;
  *(&v2639 + 1) = v4;
  v2640 = 0u;
  v2641 = 0u;
  v2642 = 0u;
  v2643 = v4;
  v2644 = 0uLL;
  memset(v2645, 0, 24);
  v2645[3] = v4;
  v2646 = 0u;
  v2647 = 0u;
  v2648 = 0u;
  v2652 = 0;
  v2651 = 0;
  v2649 = v4;
  v2650 = 0;
  sub_1BD289374(&v2638, v671);
  sub_1BD2893D0(v2645);
  v589 = v2640;
  *(v50 + 18144) = v2641;
  v590 = v2643;
  *(v50 + 18160) = v2642;
  *(v50 + 18176) = v590;
  *(v50 + 18192) = v2644;
  v591 = v2639;
  *(v50 + 18096) = v2638;
  *(v50 + 18112) = v591;
  *(v50 + 18128) = v589;
  v592 = sub_1BD1ABCFC(v50);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BE60, &unk_1BE0C7440);
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return v592;
}

id AutoFillHeroAnimationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *sub_1BD9483BC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BD1B6140(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1BD948428(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

_OWORD *sub_1BD948470(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1BD1B6140(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1BD9484EC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1BE0492B4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1BD9485A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1BD9485F4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_1BD948680(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 48 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  *(v6 + 25) = *(a4 + 25);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1BD9486DC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1BD948720(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_1BD948790(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_1BD948AB8(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1BD948854(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_1BD948908(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1BD1B6150(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1BD948974(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1BD1B6140(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1BD9489DC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1BFB45F40](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1BFB45F40](&v3, 8);
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

uint64_t sub_1BD948AB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD948B20()
{
  result = qword_1EBD38278;
  if (!qword_1EBD38278)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38278);
  }

  return result;
}

void sub_1BD948C74(uint64_t a1, void *a2)
{
  v3 = v2;
  v75 = a2;
  v73 = a1;
  v79 = *MEMORY[0x1E69E9840];
  v74 = sub_1BE04BAC4();
  v72 = *(v74 - 1);
  MEMORY[0x1EEE9AC00](v74);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04B944();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1BD9491D8();
  sub_1BE052434();
  v11 = v10;
  v12 = sub_1BE04BB74();
  v11, v13, v14, v15, v16, v17, v18, v19;
  v20 = sub_1BE04BBD4();
  sub_1BE04BB04();
  v21 = sub_1BE04B8E4();
  (*(v7 + 8))(v9, v6);
  sub_1BE04BC34();
  v22 = sub_1BE04B9A4();
  (v72)[1](v5, v74);
  v23 = *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_credential];
  v24 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_product];
  v25 = v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_allowManualEntry];
  v26 = objc_allocWithZone(PKNewPaymentCredentialProvisioningViewController);
  v74 = v12;
  v70 = v12;
  v27 = v71;
  v72 = v23;
  v28 = [v26 initWithProvisioningController:v20 webService:v21 context:v22 paymentCredential:v23 setupProduct:v24 allowsManualEntry:v25 reporter:v70];

  [v28 setFlowItemDelegate_];
  KeyPath = swift_getKeyPath();
  LOBYTE(v24) = sub_1BD1882F8(v3, KeyPath);
  KeyPath, v30, v31, v32, v33, v34, v35, v36;
  [v28 setHasRemainingCredentialsToProvision_];
  v37 = swift_getKeyPath();
  LOBYTE(v24) = sub_1BD188324(v3, v37);
  v37, v38, v39, v40, v41, v42, v43, v44;
  [v28 setShowSkipButton_];
  [v28 setCoordinator_];
  v45 = [v28 fieldsModel];
  if (!v45)
  {
    v45 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  }

  swift_unknownObjectWeakAssign();
  v46 = type metadata accessor for PKProvisioningFieldsUIRendererObjWrapper();
  v47 = objc_allocWithZone(v46);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v78.receiver = v47;
  v78.super_class = v46;
  v48 = v28;
  v49 = objc_msgSendSuper2(&v78, sel_init);
  LOBYTE(key[0]) = 0;
  objc_setAssociatedObject(v48, key, v49, 1);

  *&v27[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = &off_1F3BC1D90;
  swift_unknownObjectWeakAssign();
  v50 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_viewController];
  *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_viewController] = v28;

  if ([v72 isPrecursorCredential])
  {
    key[4] = v73;
    v77 = v75;
    key[0] = MEMORY[0x1E69E9820];
    key[1] = 1107296256;
    key[2] = sub_1BD976224;
    key[3] = &block_descriptor_11_0;
    v51 = _Block_copy(key);
    v52 = v77;
    sub_1BE048964();
    v52, v53, v54, v55, v56, v57, v58, v59;
    [v48 preflightWithCompletion_];

    _Block_release(v51);
  }

  else
  {
    v60 = swift_allocObject();
    v61 = v73;
    v60[2] = v48;
    v60[3] = v61;
    v60[4] = v75;
    v62 = v48;
    sub_1BE048964();
    sub_1BD814B5C(v45, 10, sub_1BD949C38, v60);
    v60, v63, v64, v65, v66, v67, v68, v69;
  }
}

char *sub_1BD9491D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v1 = sub_1BE04C384();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B69E0;
  v5 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_credential);
  *(v4 + v3) = v5;
  (*(v2 + 104))(v4 + v3, *MEMORY[0x1E69B82A8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0, &unk_1BE0FF0F0);
  sub_1BE04B944();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_context);
  v7 = v5;
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  v8 = sub_1BE04C394();
  v9 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_previouslyAcceptedTerms);
  v10 = type metadata accessor for ProvisioningUICoordinator();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
  v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v6;
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v8;
  swift_unknownObjectWeakAssign();
  *(v12 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = v9;
  sub_1BE048964();
  sub_1BE048964();
  *&v11[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
  v22.receiver = v11;
  v22.super_class = v10;
  v13 = objc_msgSendSuper2(&v22, sel_init);
  v8, v14, v15, v16, v17, v18, v19, v20;
  *&v13[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BC6980;
  swift_unknownObjectWeakAssign();
  return v13;
}

void sub_1BD949570(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14[4] = a3;
  v15 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BD976224;
  v14[3] = &block_descriptor_14_4;
  v5 = _Block_copy(v14);
  v6 = v15;
  sub_1BE048964();
  v6, v7, v8, v9, v10, v11, v12, v13;
  [a2 preflightWithCompletion_];
  _Block_release(v5);
}

uint64_t sub_1BD949628(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(a1, &off_1F3BC6990, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD9496B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD9496EC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD94973C()
{
  v0 = sub_1BD949878();
  sub_1BD28B498(v0);
  return v0;
}

uint64_t sub_1BD949878()
{
  v1 = v0;
  v2 = sub_1BE051F54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051FA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE051FC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_isShowingViewController] = 1;
  if (*&v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_provisionedPasses])
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v33 = v3;
    v34 = v5;
    v31 = sub_1BE052D54();
    sub_1BE051FB4();
    sub_1BE051FF4();
    v32 = *(v10 + 8);
    v32(v12, v9);
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    aBlock[4] = sub_1BD949C30;
    v37 = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_214;
    v17 = _Block_copy(aBlock);
    v18 = v37;
    v19 = v1;
    v18, v20, v21, v22, v23, v24, v25, v26;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD14EC84();
    v30 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD14ECDC();
    v27 = v35;
    sub_1BE053664();
    v28 = v31;
    MEMORY[0x1BFB3FD90](v15, v8, v27, v17);
    _Block_release(v17);

    (*(v33 + 8))(v27, v2);
    (*(v6 + 8))(v8, v34);
    v32(v15, v30);
  }

  return *&v1[OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_viewController];
}

void sub_1BD949C44(void *a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    sub_1BD0E5E8C(0, qword_1EBD45AD0, 0x1E69B90E8);
    sub_1BD412688();
    swift_willThrowTypedImpl();
    v3 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_provisionedPasses);
  *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_provisionedPasses) = v3;

  if (*(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_isShowingViewController) == 1)
  {
    v6 = v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      sub_1BD8659A4(v2, &off_1F3BC6990, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1BD949D28()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_product);
  if (v2)
  {
    v3 = type metadata accessor for PaymentSetupProductManualEntryFlowSection();
    v4 = objc_allocWithZone(v3);
    v5 = OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod;
    *&v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedMethod] = 0;
    *&v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v6 = &v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_identifier];
    *v6 = 0xD00000000000001DLL;
    v6[1] = 0x80000001BE12CB20;
    v7 = v2;
    *&v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_context] = sub_1BE04BC14();
    *&v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_product] = v7;
    v8 = *&v4[v5];
    *&v4[v5] = 0;
    v9 = v7;

    v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_allowSecondaryManualEntry] = 0;
    v4[OBJC_IVAR____TtC9PassKitUI41PaymentSetupProductManualEntryFlowSection_selectedTransferCard] = 0;
    v18.receiver = v4;
    v18.super_class = v3;
    v10 = objc_msgSendSuper2(&v18, sel_init);

    v11 = &off_1F3B9F388;
  }

  else
  {
    v12 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
    v13 = sub_1BE048964();
    v10 = sub_1BD87126C(v13, 0, 0);
    v11 = &off_1F3BC0AB0;
  }

  v14 = v1 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCredentialFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v1, &off_1F3BC6990, v10, v11, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void sub_1BD949F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v8 = sub_1BE04E644();
  sub_1BE050884();
  v8, v9, v10, v11, v12, v13, v14, v15;
}

uint64_t sub_1BD94A008(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD59618, &qword_1BE1070F8);
  sub_1BE051694();
  return v2;
}

id sub_1BD94A050(uint64_t a1)
{
  v3 = sub_1BE04F3D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 92);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v10 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v17 = sub_1BD25D6D4(v8, 0, v11, v12, v13, v14, v15, v16);
    (*(v4 + 8))(v6, v3, v17);
    v8 = v33;
    if (!v33)
    {
      goto LABEL_10;
    }
  }

  v18 = [v8 scene];

  if (v18)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = [v19 screen];

      if (v20)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

LABEL_10:
  v21 = sub_1BD9550F0();
  sub_1BE048964();
  v20 = sub_1BE04CD74();
  v21, v22, v23, v24, v25, v26, v27, v28;
  if (!v20)
  {
    return v20;
  }

LABEL_11:
  v29 = v20;
  result = [v29 displayIdentity];
  if (result)
  {
    v31 = result;
    v20 = [result isMainDisplay];

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD94A28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD59678, &unk_1BE107180);
  v127 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v126 = &v107 - v3;
  v138 = *(a1 - 8);
  v134 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v131 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600, &qword_1BE0D4A30);
  v125 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v130 = &v107 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59688, &qword_1BE107190);
  v123 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59690, &qword_1BE107198);
  v124 = a1;
  v7 = *(a1 + 24);
  v136 = *(a1 + 16);
  v137 = v7;
  type metadata accessor for AppProtectionShieldView(255, v136, v7, v8);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD59698, &unk_1BE1071A0);
  v9 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596A0, &qword_1BE0EFB88);
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50060, &qword_1BE0EFB90);
  v10 = sub_1BE04EBD4();
  v120 = sub_1BE04FCF4();
  WitnessTable = swift_getWitnessTable();
  v175 = MEMORY[0x1E697EBF8];
  v172 = swift_getWitnessTable();
  v173 = MEMORY[0x1E697EBE0];
  v11 = swift_getWitnessTable();
  v12 = sub_1BD0DE4F4(&qword_1EBD36750, &qword_1EBD59698, &unk_1BE1071A0, MEMORY[0x1E697F940]);
  v170 = v11;
  v171 = v12;
  v119 = v9;
  v13 = swift_getWitnessTable();
  v122 = v13;
  v14 = sub_1BD0DE4F4(&qword_1EBD50058, &unk_1EBD596A0, &qword_1BE0EFB88, MEMORY[0x1E6980CF8]);
  v168 = v13;
  v169 = v14;
  v15 = swift_getWitnessTable();
  v121 = MEMORY[0x1E697DDB0];
  v16 = sub_1BD0DE4F4(&unk_1EBD596B0, &qword_1EBD50060, &qword_1BE0EFB90, MEMORY[0x1E697DDB0]);
  v166 = v15;
  v167 = v16;
  v118 = v10;
  v17 = swift_getWitnessTable();
  v18 = sub_1BD9548B0(&qword_1EBD50068, MEMORY[0x1E697FF20], MEMORY[0x1E697FF18]);
  v19 = v120;
  v152 = v10;
  v153 = v120;
  v154 = v17;
  v155 = v18;
  swift_getOpaqueTypeMetadata2();
  v20 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596C0, &unk_1BE0E1690);
  sub_1BE04EBD4();
  type metadata accessor for AuthorizationSheet.SheetShape(255, v136, v137, v21);
  swift_getWitnessTable();
  sub_1BE04E4C4();
  v22 = sub_1BE04EBD4();
  v152 = v118;
  v153 = v19;
  v154 = v17;
  v155 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v165 = MEMORY[0x1E697E070];
  v23 = v20;
  v24 = swift_getWitnessTable();
  v25 = sub_1BD0DE4F4(&unk_1EBD36700, &unk_1EBD596C0, &unk_1BE0E1690, MEMORY[0x1E6980468]);
  v26 = v122;
  v162 = v122;
  v163 = v25;
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v160 = v27;
  v161 = v28;
  v29 = swift_getWitnessTable();
  v152 = v119;
  v153 = MEMORY[0x1E6981CD8];
  v154 = v23;
  v155 = v22;
  v156 = v26;
  v157 = MEMORY[0x1E6981CD0];
  v158 = v24;
  v159 = v29;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  v123 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596D0, &unk_1BE1071B0);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD51F60, &qword_1BE0C3580);
  sub_1BE04EBD4();
  sub_1BE04F9B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596E0, &unk_1BE1071C0);
  sub_1BE04EBD4();
  v30 = swift_getWitnessTable();
  v31 = MEMORY[0x1E697F548];
  v32 = sub_1BD0DE4F4(&qword_1EBD36768, &unk_1EBD596D0, &unk_1BE1071B0, MEMORY[0x1E697F548]);
  v150 = v30;
  v151 = v32;
  v33 = swift_getWitnessTable();
  v148 = v33;
  v149 = MEMORY[0x1E697E8E8];
  v34 = swift_getWitnessTable();
  v35 = sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, v31);
  v146 = v34;
  v147 = v35;
  v144 = swift_getWitnessTable();
  v145 = v33;
  v36 = swift_getWitnessTable();
  v37 = sub_1BD0DE4F4(&qword_1EBD36718, &unk_1EBD596E0, &unk_1BE1071C0, MEMORY[0x1E697FDC0]);
  v142 = v36;
  v143 = v37;
  swift_getWitnessTable();
  sub_1BE04E814();
  sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD596F0, &unk_1BE0C9F40);
  sub_1BE04EBD4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD596F8, &qword_1BE1071D0);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v38 = sub_1BE051874();
  v112 = v38;
  v121 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v108 = &v107 - v39;
  v40 = MEMORY[0x1E695C068];
  v41 = sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600, &qword_1BE0D4A30, MEMORY[0x1E695C068]);
  v114 = v41;
  v113 = swift_getWitnessTable();
  v152 = v133;
  v153 = v38;
  v154 = v41;
  v155 = v113;
  v42 = sub_1BE04EE14();
  v116 = v42;
  v123 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v129 = &v107 - v43;
  v44 = sub_1BD0DE4F4(&qword_1EBD36948, &unk_1EBD59678, &unk_1BE107180, v40);
  v118 = v44;
  v122 = MEMORY[0x1E697C278];
  v117 = swift_getWitnessTable();
  v152 = v135;
  v153 = v42;
  v154 = v44;
  v155 = v117;
  v45 = sub_1BE04EE14();
  v46 = *(v45 - 8);
  v119 = v45;
  v120 = v46;
  MEMORY[0x1EEE9AC00](v45);
  v111 = &v107 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v115 = &v107 - v49;
  sub_1BE04F7B4();
  sub_1BE04F4F4();
  v51 = v136;
  v50 = v137;
  v139 = v136;
  v140 = v137;
  v52 = v132;
  v141 = v132;
  sub_1BE051864();
  v53 = v124;
  v54 = sub_1BD9550F0();
  sub_1BE048964();
  sub_1BE04CD04();
  v54, v55, v56, v57, v58, v59, v60, v61;
  v62 = v138;
  v110 = *(v138 + 16);
  v63 = v131;
  v110(v131, v52, v53);
  v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v65 = swift_allocObject();
  *(v65 + 2) = v51;
  *(v65 + 3) = v50;
  v66 = *(v62 + 32);
  v138 = v62 + 32;
  v109 = v66;
  v66(&v65[v64], v63, v53);
  v67 = v130;
  v68 = v112;
  v69 = v133;
  v70 = v108;
  sub_1BE051154();
  v65, v71, v72, v73, v74, v75, v76, v77;
  (*(v125 + 8))(v67, v69);
  (*(v121 + 8))(v70, v68);
  v78 = v132;
  v79 = sub_1BD9550F0();
  sub_1BE048964();
  v80 = v126;
  sub_1BE04CD34();
  v79, v81, v82, v83, v84, v85, v86, v87;
  v88 = v131;
  v110(v131, v78, v53);
  v89 = v64;
  v90 = swift_allocObject();
  v91 = v137;
  *(v90 + 2) = v136;
  *(v90 + 3) = v91;
  v109(&v90[v89], v88, v53);
  v92 = v111;
  v93 = v116;
  v94 = v135;
  v95 = v129;
  sub_1BE051154();
  v90, v96, v97, v98, v99, v100, v101, v102;
  (*(v127 + 8))(v80, v94);
  (*(v123 + 8))(v95, v93);
  v103 = v119;
  swift_getWitnessTable();
  v104 = v115;
  sub_1BD147308();
  v105 = *(v120 + 8);
  v105(v92, v103);
  sub_1BD147308();
  return (v105)(v104, v103);
}