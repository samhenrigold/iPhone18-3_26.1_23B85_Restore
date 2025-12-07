uint64_t sub_19A47374C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
  }

  *&v79 = a1;

  sub_19A472AC0(&v79);
  result = v79;
  if (v1)
  {
  }

  v3 = 0;
  v4 = *(v79 + 16);
  v5 = v4;
  while (v5 == v3)
  {
    v53 = 0;
    v56 = v4;
LABEL_42:
    v50 = *(result + 16);
    if (v4 == v50)
    {
      return result;
    }

    if (v53 <= 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = v53 - 1;
    }

    v5 = v56 + 2;
    if (v56 >= v50 - 1)
    {
      v5 = *(result + 16);
    }

    v4 = *(result + 16);
    if (v5 < v3)
    {
      __break(1u);
      goto LABEL_50;
    }
  }

  v56 = v4;
  v52 = v3 + 1;
  v53 = 0;
  v6 = v5;
  v55 = v4;
  v66 = v5;
  v67 = v3;
LABEL_9:
  v7 = v6 << 6;
  v8 = result - 96;
  v9 = v6;
  v68 = result;
  v61 = result - 96;
  v63 = v6;
  while (v3 < v9 && v6 <= v5)
  {
    v10 = v9 - 1;
    if (v9 == 1)
    {
      goto LABEL_41;
    }

    if (v9 - 2 < 0)
    {
      goto LABEL_51;
    }

    v11 = *(result + 16);
    if (v9 - 2 >= v11)
    {
      goto LABEL_52;
    }

    v12 = (v8 + v7);
    v13 = *(v8 + v7);
    v14 = *(v8 + v7 + 16);
    v15 = *(v8 + v7 + 48);
    v77 = *(v8 + v7 + 32);
    v78 = v15;
    v75 = v13;
    v76 = v14;
    if (v10 >= v11)
    {
      goto LABEL_53;
    }

    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[7];
    v81 = v12[6];
    v82 = v18;
    v79 = v16;
    v80 = v17;
    v19 = *(&v18 + 1);
    v20 = v78;
    v21 = v78 >> 14;
    v22 = *(&v18 + 1) >> 14;
    if (v78 >> 14 < *(&v18 + 1) >> 14)
    {
      v23 = v82 >> 14;
      v24 = *(&v78 + 1) >> 14;
      if (v82 >> 14 < *(&v78 + 1) >> 14 && v21 != v24 && v23 != v22)
      {
        v58 = v82;
        v59 = *(&v78 + 1);
        v60 = *(&v75 + 1);
        if (v75 == v79)
        {
          v57 = v79;
LABEL_25:
          if (v23 < v21)
          {
            v20 = v58;
          }

          if (v22 >= v24)
          {
            v25 = v19;
          }

          else
          {
            v25 = v59;
          }

          v54 = v80;
          v51 = v76;
          v26 = v77;
          v62 = v25;
          v64 = *(&v77 + 1);
          *&v70[0] = *(&v76 + 1);
          sub_19A37820C(&v75, &v71);
          sub_19A37820C(&v79, &v71);

          sub_19A470688(v27);
          sub_19A472F48(*&v70[0]);
          v29 = v28;

          *&v69[0] = v26;

          sub_19A470688(v30);
          sub_19A472F48(*&v69[0]);
          v32 = v31;

          v83 = v64;

          sub_19A470688(v33);
          sub_19A472F48(v83);
          v65 = v34;

          sub_19A378268(&v79);
          result = sub_19A378268(&v75);
          if (v62 >> 14 < v20 >> 14)
          {
            goto LABEL_54;
          }

          *&v71 = v57;
          *(&v71 + 1) = v60;
          LODWORD(v72) = v51 | v54;
          *(&v72 + 1) = v29;
          *&v73 = v32;
          *(&v73 + 1) = v65;
          *&v74 = v20;
          v35 = v9 - 2;
          *(&v74 + 1) = v62;
          result = v68;
          if (v56 != v55)
          {
            v35 = v56 - 1;
            if (__OFSUB__(v56, 1))
            {
              goto LABEL_57;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v36 = v68;
          }

          else
          {
            result = sub_19A32E4DC(v68);
            v36 = result;
          }

          if ((v9 - 2) < *(v36 + 16))
          {
            v37 = (v36 + v7);
            v38 = *(v36 + v7 - 96);
            v39 = *(v36 + v7 - 80);
            v40 = *(v36 + v7 - 48);
            v69[2] = *(v36 + v7 - 64);
            v69[3] = v40;
            v69[0] = v38;
            v69[1] = v39;
            v41 = v71;
            v42 = v72;
            v43 = v74;
            *(v37 - 4) = v73;
            *(v37 - 3) = v43;
            *(v37 - 6) = v41;
            *(v37 - 5) = v42;
            v44 = v36;
            sub_19A37820C(&v71, v70);
            result = sub_19A378268(v69);
            v45 = *(v44 + 16);
            if (v10 >= v45)
            {
              goto LABEL_56;
            }

            v46 = v45 - 1;
            v47 = *(v37 - 2);
            v48 = *(v37 - 1);
            v49 = v37[1];
            v70[2] = *v37;
            v70[3] = v49;
            v70[0] = v47;
            v70[1] = v48;
            memmove(v37 - 2, v37 + 2, (v45 - v9) << 6);
            *(v44 + 16) = v46;
            sub_19A378268(&v71);
            sub_19A378268(v70);
            result = v44;
            v6 = v9 - 1;
            v53 = v9 - 2;
            v56 = v35;
            v5 = v66;
            v3 = v67;
            if (v52 == v9)
            {
              v56 = v35;
              v53 = v9 - 2;
LABEL_41:
              v4 = v55;
              goto LABEL_42;
            }

            goto LABEL_9;
          }

          goto LABEL_55;
        }

        v57 = v75;
        if (sub_19A573F1C())
        {
          goto LABEL_25;
        }

        v3 = v67;
        result = v68;
        v6 = v63;
        v5 = v66;
        v8 = v61;
      }
    }

    v7 -= 64;
    --v9;
    if (v3 == v10)
    {
      goto LABEL_41;
    }
  }

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
  return result;
}

void sub_19A473BF0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1F98, &qword_19A588FB8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = v36 - v4;
  v50 = type metadata accessor for PromptEdit(0);
  v46 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v44 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = v36 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v41 = v36 - v9;
  if (a1[2])
  {
    v55 = a1;

    sub_19A472C2C(&v55);
    v10 = v55;
    if (v1)
    {
    }

    else
    {
      v11 = 0;
      v42 = v55[2];
      v43 = (v46 + 48);
      v12 = v42;
      v36[1] = 0;
      while (v12 == v11)
      {
        v40 = 0;
        v14 = v42;
LABEL_34:
        v35 = v10[2];
        if (v42 == v35)
        {
          return;
        }

        if (v40 <= 0)
        {
          v11 = 0;
        }

        else
        {
          v11 = v40 - 1;
        }

        if (v14 >= v35 - 1)
        {
          v12 = v10[2];
        }

        else
        {
          v12 = v14 + 2;
        }

        v42 = v10[2];
        if (v12 < v11)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      v40 = 0;
      v38 = v11 + 1;
      v13 = v12;
      v14 = v42;
LABEL_9:
      v15 = v13;
      v52 = v10;
      v53 = v14;
      while (v11 < v15 && v13 <= v12)
      {
        v16 = v15 - 1;
        if (v15 == 1)
        {
          goto LABEL_34;
        }

        v17 = v15 - 2;
        if (v15 - 2 < 0)
        {
          goto LABEL_44;
        }

        v18 = v10[2];
        if (v17 >= v18)
        {
          goto LABEL_45;
        }

        v49 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v19 = v10 + v49;
        v20 = *(v46 + 72);
        v48 = v20 * v17;
        sub_19A41CCE0(&v19[v20 * v17], v54);
        if (v16 >= v18)
        {
          goto LABEL_46;
        }

        v51 = v15 - 2;
        v21 = v15 - 1;
        v47 = v15;
        v22 = v12;
        v23 = v11;
        v24 = v20 * v16;
        v25 = v44;
        sub_19A41CCE0(&v19[v24], v44);
        v26 = v54;
        v27 = v45;
        sub_19A4742C4(v25, v45);
        sub_19A47897C(v25);
        sub_19A47897C(v26);
        if ((*v43)(v27, 1, v50) != 1)
        {
          v39 = v21;
          v37 = v20;
          sub_19A4789D8(v27, v41);
          v29 = v52;
          v40 = v51;
          v30 = v51;
          v11 = v23;
          v12 = v22;
          v31 = v47;
          if (v53 != v42)
          {
            v30 = v53 - 1;
            if (__OFSUB__(v53, 1))
            {
              goto LABEL_49;
            }
          }

          v53 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_19A32E4F0(v29);
          }

          if (v51 < v29[2])
          {
            v32 = v29;
            v33 = v29 + v49;
            sub_19A478A3C(v41, &v33[v48]);
            v34 = v32[2];
            if (v39 >= v34)
            {
              goto LABEL_48;
            }

            sub_19A47897C(&v33[v24]);
            if (v37 > 0 || &v33[v24] >= &v33[v24 + v37 + (v34 - v31) * v37])
            {
              swift_arrayInitWithTakeFrontToBack();
              v10 = v32;
            }

            else
            {
              v10 = v32;
              if (v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v10[2] = v34 - 1;
            sub_19A47897C(v41);
            v13 = v39;
            v14 = v53;
            if (v38 == v31)
            {
              v40 = v51;
              goto LABEL_34;
            }

            goto LABEL_9;
          }

          goto LABEL_47;
        }

        sub_19A2F3FA0(v27, &qword_1EAFA1F98, &qword_19A588FB8);
        v15 = v21;
        v11 = v23;
        v28 = v23 == v21;
        v10 = v52;
        v14 = v53;
        v12 = v22;
        if (v28)
        {
          goto LABEL_34;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
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
    }
  }

  else
  {
  }
}

uint64_t sub_19A474074(uint64_t a1)
{
  if (!*(a1 + 16))
  {
  }

  v33 = a1;

  sub_19A472CD4(&v33);
  result = v33;
  if (v1)
  {
  }

  v3 = 0;
  v4 = *(v33 + 2);
  v5 = v4;
  v6 = v4;
LABEL_6:
  v7 = 0;
  v8 = v4;
  v9 = v5;
  v10 = v5;
  v31 = v4;
  while (2)
  {
    v11 = 16 * v9;
    v12 = result + 24;
    do
    {
      if (v3 == v10)
      {
LABEL_45:
        if (v4 == v6)
        {
          return result;
        }

        if (v7 <= 0)
        {
          v3 = 0;
        }

        else
        {
          v3 = v7 - 1;
        }

        if (v8 >= (v6 - 1))
        {
          v5 = v6;
        }

        else
        {
          v5 = v8 + 2;
        }

        v4 = v6;
        if (v5 < v3)
        {
          __break(1u);
          return result;
        }

        goto LABEL_6;
      }

      if (v3 >= v10 || v9 > v5)
      {
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
        goto LABEL_61;
      }

      v13 = v10--;
      if (!v10)
      {
        goto LABEL_45;
      }

      v14 = v13 - 2;
      if ((v13 - 2) < 0)
      {
        goto LABEL_56;
      }

      if (v14 >= v6)
      {
        goto LABEL_57;
      }

      if (v10 >= v6)
      {
        goto LABEL_58;
      }

      v15 = v11;
      v16 = *(result + v11);
      v17 = *(v12 + v11 - 16);
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        goto LABEL_59;
      }

      v19 = *(v12 + v11 - 8);
      v20 = *(v12 + v11);
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_60;
      }

      if (v16 >= v19 && v16 < v22 || v19 >= v16 && v19 < v18)
      {
        if (v18 <= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v18;
        }

        if (v16 >= v19)
        {
          v24 = *(v12 + v11 - 8);
        }

        else
        {
          v24 = *(result + v11);
        }

        v25 = v23 - v24;
        if (!__OFSUB__(v23, v24))
        {
          goto LABEL_38;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v11 -= 16;
    }

    while (v18 != v19);
    if (v19 <= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v19;
    }

    if (v16 >= v19)
    {
      v24 = v19;
    }

    else
    {
      v24 = v16;
    }

    v25 = v26 - v24;
    if (!__OFSUB__(v26, v24))
    {
LABEL_38:
      v27 = v13 - 2;
      if (v8 != v4)
      {
        v27 = v8 - 1;
        if (__OFSUB__(v8, 1))
        {
          goto LABEL_64;
        }
      }

      v32 = v27;
      v28 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_19A32E64C(v28);
        v28 = result;
      }

      v29 = *(v28 + 16);
      if (v14 < v29)
      {
        v30 = (v28 + v15);
        *v30 = v24;
        v30[1] = v25;
        if (v10 < v29)
        {
          v6 = v29 - 1;
          memmove(v30 + 2, v30 + 4, 16 * (v29 - v13));
          result = v28;
          *(v28 + 16) = v6;
          v4 = v31;
          v8 = v32;
          v7 = v13 - 2;
          v9 = v10;
          continue;
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    break;
  }

LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_19A4742C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0770, &unk_19A586330);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v74 - v7;
  v8 = sub_19A570B9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v82 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v81 = (&v74 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v74 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v74 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020, &unk_19A579C70);
  MEMORY[0x1EEE9AC00](v26);
  v74 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v74 - v29;
  v89 = v3;
  sub_19A33546C(v3, &v74 - v29, &qword_1EAFA0020, &unk_19A579C70);
  v86 = v9;
  v31 = *(v9 + 16);
  v32 = a1;
  v31(v25, a1, v8);
  v33 = sub_19A478AA0();
  v34 = sub_19A572C1C();
  v87 = v33;
  v35 = v26;
  if (v34)
  {
    v36 = sub_19A572BFC();
  }

  else
  {
    v36 = 0;
  }

  v37 = v86;
  v38 = v25;
  v39 = *(v86 + 8);
  v39(v38, v8);
  sub_19A2F3FA0(v30, &qword_1EAFA0020, &unk_19A579C70);
  v40 = v32;
  v41 = v89;
  v83 = v32;
  if ((v36 & 1) == 0)
  {
    v69 = v74;
    v70 = v89;
    sub_19A33546C(v32, v74, &qword_1EAFA0020, &unk_19A579C70);
    v71 = v75;
    v31(v75, v70, v8);
    if (sub_19A572C1C())
    {
      v72 = sub_19A572BFC();
      v39(v71, v8);
      sub_19A2F3FA0(v69, &qword_1EAFA0020, &unk_19A579C70);
      v37 = v86;
      v40 = v83;
      v41 = v89;
      if (v72)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v39(v71, v8);
      sub_19A2F3FA0(v69, &qword_1EAFA0020, &unk_19A579C70);
    }

    v73 = type metadata accessor for PromptEdit(0);
    return (*(*(v73 - 8) + 56))(v84, 1, 1, v73);
  }

LABEL_5:
  v86 = v35;
  v42 = v79;
  v43 = v41;
  v31(v79, v41, v8);
  v44 = v80;
  v31(v80, v40, v8);
  v45 = sub_19A572BFC();
  v46 = (v45 & 1) == 0;
  if (v45)
  {
    v47 = v42;
  }

  else
  {
    v47 = v44;
  }

  if (v46)
  {
    v44 = v42;
  }

  v39(v47, v8);
  v48 = v43;
  v49 = v39;
  v50 = *(v37 + 32);
  (v50)(v88, v44, v8);
  v51 = v48 + *(v86 + 36);
  v52 = v40;
  v53 = v86;
  v54 = v81;
  v31(v81, v51, v8);
  v55 = v52 + *(v53 + 36);
  v56 = v82;
  v31(v82, v55, v8);
  if (sub_19A572C0C())
  {
    v57 = v54;
  }

  else
  {
    v57 = v56;
  }

  v58 = v88;
  v82 = v49;
  (v49)(v57, v8);
  v59 = v85;
  v81 = v50;
  v50();
  result = sub_19A572C1C();
  if (result)
  {
    v61 = v76;
    v31(v76, v58, v8);
    v62 = v78;
    v31((v61 + *(v78 + 48)), v59, v8);
    v63 = v77;
    sub_19A33546C(v61, v77, &qword_1EAFA0770, &unk_19A586330);
    v64 = *(v62 + 48);
    v65 = v84;
    v66 = v81;
    (v81)(v84, v63, v8);
    v67 = v82;
    (v82)(v63 + v64, v8);
    sub_19A478AF8(v61, v63);
    (v66)(v65 + *(v86 + 36), v63 + *(v62 + 48), v8);
    (v67)(v63, v8);
    v68 = type metadata accessor for PromptEdit(0);
    sub_19A570AFC();
    (v67)(v85, v8);
    (v67)(v88, v8);
    return (*(*(v68 - 8) + 56))(v65, 0, 1, v68);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A474A3C(unsigned int a1)
{
  v2 = sub_19A572E2C();
  v4 = v3;
  v5 = sub_19A572E2C();
  v7 = v6;
  v8 = sub_19A572E2C();
  v10 = v9;
  v11 = sub_19A572E2C();
  v13 = v12;
  if (sub_19A47567C(v2, v4) & 1) != 0 && (sub_19A47567C(v5, v7) & 1) != 0 && (sub_19A47567C(v8, v10) & 1) != 0 && (sub_19A47567C(v11, v13))
  {
    MEMORY[0x19A900A50](39, 0xE100000000000000);
    sub_19A572B7C();

    sub_19A572B7C();

    sub_19A572B7C();

    sub_19A572B7C();

    MEMORY[0x19A900A50](39, 0xE100000000000000);
    return 0;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1F90, &qword_19A588FB0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_19A576E10;
    v16 = MEMORY[0x1E69E65A8];
    *(v15 + 56) = MEMORY[0x1E69E6530];
    *(v15 + 64) = v16;
    *(v15 + 32) = a1;
    return sub_19A572D3C();
  }
}

uint64_t sub_19A474D68@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1FA8, &qword_19A588FC8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C38, &qword_19A581280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1FB0, &unk_19A588FD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_19A57112C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = [objc_opt_self() _deviceLanguage];
  if (v19)
  {
    v26 = v4;
    v27 = a1;
    v20 = v19;
    sub_19A572CFC();

    sub_19A57103C();
    sub_19A5710DC();
    v21 = sub_19A5710BC();
    if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
    {
      sub_19A2F3FA0(v11, &qword_1EAFA1FB0, &unk_19A588FD0);
      sub_19A57107C();
      v22 = sub_19A57106C();
      (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
      v23 = sub_19A5710CC();
      (*(*(v23 - 8) + 56))(v26, 1, 1, v23);
      sub_19A5710EC();
      sub_19A5710DC();
      v24 = *(v13 + 8);
      v24(v15, v12);
      sub_19A57108C();
      return (v24)(v18, v12);
    }

    else
    {

      sub_19A2F3FA0(v11, &qword_1EAFA1FB0, &unk_19A588FD0);
      return (*(v13 + 32))(v27, v18, v12);
    }
  }

  else
  {

    return sub_19A5710EC();
  }
}

uint64_t sub_19A475168()
{
  v0 = sub_19A57110C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0C38, &qword_19A581280);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  sub_19A57111C();
  sub_19A5710FC();
  (*(v1 + 8))(v3, v0);
  v7 = sub_19A57106C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_19A2F3FA0(v6, &qword_1EAFA0C38, &qword_19A581280);
    v9 = 0;
  }

  else
  {
    v10 = sub_19A57105C();
    v12 = v11;
    (*(v8 + 8))(v6, v7);
    if (v10 == 24938 && v12 == 0xE200000000000000)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_19A573F1C();
    }
  }

  return v9 & 1;
}

void sub_19A475378()
{
  v0 = sub_19A572CCC();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_1EAFCA140 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19A4753F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A57093C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A572D6C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_19A572D4C();
  v9 = sub_19A572C3C();
  if (!v2)
  {
    v21[2] = 0;
    v24 = v9;
    v25 = v10;
    sub_19A57090C();
    v23 = sub_19A2F4450();
    v11 = sub_19A5737EC();
    v13 = *(v5 + 8);
    v12 = v5 + 8;
    v22 = v13;
    v13(v7, v4);

    v14 = *(v11 + 16);
    if (v14)
    {
      v21[3] = v12;
      v26 = MEMORY[0x1E69E7CC0];
      sub_19A3225C0(0, v14, 0);
      v3 = v26;
      v21[1] = v11;
      v15 = (v11 + 40);
      do
      {
        v16 = *v15;
        v24 = *(v15 - 1);
        v25 = v16;

        sub_19A57088C();
        v17 = sub_19A5737EC();
        v22(v7, v4);

        v26 = v3;
        v19 = *(v3 + 16);
        v18 = *(v3 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_19A3225C0((v18 > 1), v19 + 1, 1);
          v3 = v26;
        }

        *(v3 + 16) = v19 + 1;
        *(v3 + 8 * v19 + 32) = v17;
        v15 += 2;
        --v14;
      }

      while (v14);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

unint64_t sub_19A47567C(unint64_t a1, unint64_t a2)
{
  if (sub_19A572B8C() & 1) != 0 || (sub_19A572B9C() & 1) != 0 || (sub_19A572B6C())
  {
    return 1;
  }

  if ((sub_19A572B5C() & 1) == 0)
  {
    return 0;
  }

  result = sub_19A478580(a1, a2);
  if ((result & 0x100000000) == 0)
  {
    return (result - 14) <= 0xFFFFFFFB && (result - 8232) >= 2 && result != 133;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A47571C()
{
  v0 = sub_19A57093C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  __swift_allocate_value_buffer(v7, qword_1EAFCA258);
  v8 = __swift_project_value_buffer(v0, qword_1EAFCA258);
  sub_19A57092C();
  sub_19A5708AC();
  sub_19A57091C();
  (*(v1 + 8))(v3, v0);
  sub_19A5708EC();
  return (*(v1 + 32))(v8, v6, v0);
}

uint64_t sub_19A475860()
{
  v0 = sub_19A57093C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  __swift_allocate_value_buffer(v7, qword_1EAFCA1B8);
  __swift_project_value_buffer(v0, qword_1EAFCA1B8);
  sub_19A5708CC();
  sub_19A5708BC();
  sub_19A5708DC();
  v8 = *(v1 + 8);
  v8(v3, v0);
  return (v8)(v6, v0);
}

uint64_t sub_19A475990(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v13 = 0;
    return v13 & 1;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFFLL;
  v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;

  for (i = 0; i < v2; i += v11)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_19A57394C();
      v11 = v10;
      goto LABEL_15;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = v5;
      v9 = v16 + i;
    }

    else
    {
      v8 = v6;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v8 = sub_19A573A0C();
      }

      v9 = (v8 + i);
    }

    if ((*v9 & 0x80000000) == 0)
    {
LABEL_14:
      v11 = 1;
      goto LABEL_15;
    }

    v14 = (__clz(*v9 ^ 0xFF) - 24);
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 4;
      }
    }

    else
    {
      if (v14 == 1)
      {
        goto LABEL_14;
      }

      v11 = 2;
    }

LABEL_15:
    if (qword_1EAF9F160 != -1)
    {
      swift_once();
    }

    v12 = sub_19A57093C();
    __swift_project_value_buffer(v12, qword_1EAFCA1B8);
    v13 = sub_19A5708FC();
    if ((v13 & 1) == 0)
    {
      break;
    }
  }

  return v13 & 1;
}

uint64_t sub_19A475B74()
{
  v1 = *(*v0 + 88);
  v2 = sub_19A57378C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_19A475C14()
{
  sub_19A475B74();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResultBox(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for ResultBox);
}

{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for ResultBox);
}

void *sub_19A475CC8(void *result)
{
  if (result)
  {
    v5 = result;
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0, &qword_19A578CC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0500, qword_19A5811E0);
    if (swift_dynamicCast())
    {
      sub_19A2EA460(v3, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      v2 = sub_19A5709EC();
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      return v2;
    }

    else
    {
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_19A2F3FA0(v3, &qword_1EAFA0508, &qword_19A57AA20);
      return 0;
    }
  }

  return result;
}

uint64_t sub_19A475DC8()
{
  result = *v0 + 999983;
  if (*v0 >= 0xFFFFFFFFFFF0BDD1)
  {
    __break(1u);
  }

  else
  {
    *v0 = result;
  }

  return result;
}

unint64_t sub_19A475DE8()
{
  v1 = 0x5851F42D4C957F2DLL * *v0 + 0x14057B7EF767814FLL;
  v2 = __ROR4__((*v0 >> 45) ^ (*v0 >> 27), *v0 >> 59);
  *v0 = 0x5851F42D4C957F2DLL * v1 + 0x14057B7EF767814FLL;
  return __ROR4__((v1 >> 45) ^ (v1 >> 27), v1 >> 59) | (v2 << 32);
}

void sub_19A475E4C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_19A573EBC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for PromptEdit(0);
        v6 = sub_19A5730DC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PromptEdit(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_19A476CDC(v8, v9, a1, v4);
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
    sub_19A475F78(0, v2, 1, a1);
  }
}

void sub_19A475F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = type metadata accessor for PromptEdit(0);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v26 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v22;
    v29 = v21;
    while (1)
    {
      sub_19A41CCE0(v22, v16);
      sub_19A41CCE0(v19, v12);
      v23 = sub_19A570B7C();
      sub_19A47897C(v12);
      sub_19A47897C(v16);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v21 = v29 - 1;
        v22 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_19A4789D8(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      sub_19A4789D8(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_19A47616C(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_19A34DDAC(v9);
    }

    v86 = v9 + 16;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = &v9[16 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_19A477A8C((*a3 + 24 * *v88), (*a3 + 24 * *v90), *a3 + 24 * v91, a1);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v91 < v89)
        {
          goto LABEL_112;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_113;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_114;
        }

        v87 = *v86 - 1;
        memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 24 * v8);
      v12 = 24 * v10;
      v13 = (*a3 + 24 * v10);
      v15 = *v13;
      v14 = v13 + 6;
      v16 = v11 >> 14;
      v17 = v15 >> 14;
      v18 = v10 + 2;
      while (v6 != v18)
      {
        v19 = *v14;
        v14 += 3;
        v20 = (v16 < v17) ^ (v19 >> 14 >= v11 >> 14);
        ++v18;
        v11 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v18 - 1;
          if (v16 >= v17)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v16 >= v17)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 0;
        v22 = 24 * v8;
        v23 = v10;
        do
        {
          if (v23 != v8 + v21 - 1)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v29 + v12);
            v25 = v29 + v22;
            v26 = *(v24 + 2);
            v27 = *v24;
            v28 = *(v25 - 8);
            *v24 = *(v25 - 24);
            *(v24 + 2) = v28;
            *(v25 - 24) = v27;
            *(v25 - 8) = v26;
          }

          ++v23;
          --v21;
          v22 -= 24;
          v12 += 24;
        }

        while (v23 < v8 + v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_19A31CF2C(0, *(v9 + 2) + 1, 1, v9);
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v9 = sub_19A31CF2C((v39 > 1), v40 + 1, 1, v9);
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v10;
    *(v42 + 5) = v8;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v9 + 4);
          v46 = *(v9 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_103;
          }

          v61 = &v9[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_106;
          }

          v67 = &v9[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_110;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v71 = &v9[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_71:
        if (v66)
        {
          goto LABEL_105;
        }

        v74 = &v9[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_108;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_78:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v83 = *&v9[16 * v82 + 32];
        v84 = *&v9[16 * v44 + 40];
        sub_19A477A8C((*a3 + 24 * v83), (*a3 + 24 * *&v9[16 * v44 + 32]), *a3 + 24 * v84, v43);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v84 < v83)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_19A34DDAC(v9);
        }

        if (v82 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v85 = &v9[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        sub_19A34DD20(v44);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v9[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_101;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_102;
      }

      v56 = &v9[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_104;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_107;
      }

      if (v60 >= v52)
      {
        v78 = &v9[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_111;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 24 * v8 - 24;
  v32 = v10 - v8;
LABEL_30:
  v33 = *(v30 + 24 * v8);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33 >> 14 >= *v35 >> 14)
    {
LABEL_29:
      ++v8;
      v31 += 24;
      --v32;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 32);
    v37 = *(v35 + 40);
    *(v35 + 24) = *v35;
    *(v35 + 40) = *(v35 + 16);
    *v35 = v33;
    *(v35 + 8) = v36;
    *(v35 + 16) = v37;
    v35 -= 24;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_19A47673C(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_19A34DDAC(v9);
    }

    v93 = v9 + 16;
    v94 = *(v9 + 2);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = &v9[16 * v94];
        v96 = *v95;
        v97 = &v93[2 * v94];
        v98 = v97[1];
        sub_19A477CD0((*a3 + (*v95 << 6)), (*a3 + (*v97 << 6)), (*a3 + (v98 << 6)), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v98 < v96)
        {
          goto LABEL_112;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_113;
        }

        *v95 = v96;
        *(v95 + 1) = v98;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_114;
        }

        v94 = *v93 - 1;
        memmove(v97, v97 + 2, 16 * v99);
        *v93 = v94;
        if (v94 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + (v8 << 6) + 48);
      v12 = v10 << 6;
      v13 = *a3 + (v10 << 6);
      v14 = v11 >> 14;
      v15 = *(v13 + 48) >> 14;
      v16 = v10 + 2;
      v17 = (v13 + 176);
      while (v6 != v16)
      {
        v18 = *v17;
        v17 += 8;
        v19 = (v14 < v15) ^ (v18 >> 14 >= v11 >> 14);
        ++v16;
        v11 = v18;
        if ((v19 & 1) == 0)
        {
          v8 = v16 - 1;
          if (v14 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v14 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v20 = (v8 << 6) - 64;
        v21 = v8;
        v22 = v10;
        do
        {
          if (v22 != --v21)
          {
            v32 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v23 = (v32 + v12);
            v24 = (v32 + v20);
            v26 = v23[2];
            v25 = v23[3];
            v28 = *v23;
            v27 = v23[1];
            v29 = v24[3];
            v31 = *v24;
            v30 = v24[1];
            v23[2] = v24[2];
            v23[3] = v29;
            *v23 = v31;
            v23[1] = v30;
            *v24 = v28;
            v24[1] = v27;
            v24[2] = v26;
            v24[3] = v25;
          }

          ++v22;
          v20 -= 64;
          v12 += 64;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_19A31CF2C(0, *(v9 + 2) + 1, 1, v9);
    }

    v47 = *(v9 + 2);
    v46 = *(v9 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v9 = sub_19A31CF2C((v46 > 1), v47 + 1, 1, v9);
    }

    *(v9 + 2) = v48;
    v49 = &v9[16 * v47];
    *(v49 + 4) = v10;
    *(v49 + 5) = v8;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v9 + 4);
          v53 = *(v9 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_57:
          if (v55)
          {
            goto LABEL_103;
          }

          v68 = &v9[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_106;
          }

          v74 = &v9[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_110;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v78 = &v9[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_71:
        if (v73)
        {
          goto LABEL_105;
        }

        v81 = &v9[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_108;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_78:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v90 = *&v9[16 * v89 + 32];
        v91 = *&v9[16 * v51 + 40];
        sub_19A477CD0((*a3 + (v90 << 6)), (*a3 + (*&v9[16 * v51 + 32] << 6)), (*a3 + (v91 << 6)), v50);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v91 < v90)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_19A34DDAC(v9);
        }

        if (v89 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v92 = &v9[16 * v89];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        sub_19A34DD20(v51);
        v48 = *(v9 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v9[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_101;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_102;
      }

      v63 = &v9[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_104;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_107;
      }

      if (v67 >= v59)
      {
        v85 = &v9[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_111;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v33 = *a3;
  v34 = *a3 + (v8 << 6);
  v35 = v10 - v8;
LABEL_30:
  v36 = v35;
  v37 = v34;
  while (1)
  {
    if (*(v37 + 48) >> 14 >= *(v37 - 16) >> 14)
    {
LABEL_29:
      ++v8;
      v34 += 64;
      --v35;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v33)
    {
      break;
    }

    v38 = (v37 - 64);
    v40 = *(v37 + 32);
    v39 = *(v37 + 48);
    v42 = *v37;
    v41 = *(v37 + 16);
    v43 = *(v37 - 48);
    *v37 = *(v37 - 64);
    *(v37 + 16) = v43;
    v44 = *(v37 - 16);
    *(v37 + 32) = *(v37 - 32);
    *(v37 + 48) = v44;
    *v38 = v42;
    v38[1] = v41;
    v37 -= 64;
    v38[2] = v40;
    v38[3] = v39;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

void sub_19A476CDC(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v99 = a1;
  v110 = type metadata accessor for PromptEdit(0);
  v106 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v101 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v95 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v95 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v95 - v16;
  v108 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_97:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_136;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v90 = a4;
    }

    else
    {
LABEL_130:
      v90 = sub_19A34DDAC(a4);
    }

    v111 = v90;
    a4 = *(v90 + 2);
    if (a4 >= 2)
    {
      while (*v108)
      {
        v91 = *&v90[16 * a4];
        v92 = v90;
        v93 = *&v90[16 * a4 + 24];
        sub_19A477EF4(*v108 + *(v106 + 72) * v91, *v108 + *(v106 + 72) * *&v90[16 * a4 + 16], *v108 + *(v106 + 72) * v93, v5);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v93 < v91)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_19A34DDAC(v92);
        }

        if (a4 - 2 >= *(v92 + 2))
        {
          goto LABEL_124;
        }

        v94 = &v92[16 * a4];
        *v94 = v91;
        *(v94 + 1) = v93;
        v111 = v92;
        sub_19A34DD20(a4 - 1);
        v90 = v111;
        a4 = *(v111 + 2);
        if (a4 <= 1)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_134;
    }

LABEL_108:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v98 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v102 = v20;
    if (v22 >= v18)
    {
      v28 = v22;
    }

    else
    {
      v23 = *v108;
      v105 = v23;
      v24 = *(v106 + 72);
      v5 = v23 + v24 * v22;
      sub_19A41CCE0(v5, v17);
      sub_19A41CCE0(v23 + v24 * v21, v14);
      v25 = sub_19A570B7C();
      sub_19A47897C(v14);
      sub_19A47897C(v17);
      v97 = v21;
      a4 = v21 + 2;
      v107 = v24;
      v26 = v105 + v24 * (v21 + 2);
      while (v18 != a4)
      {
        sub_19A41CCE0(v26, v17);
        sub_19A41CCE0(v5, v14);
        v27 = sub_19A570B7C() & 1;
        sub_19A47897C(v14);
        sub_19A47897C(v17);
        ++a4;
        v26 += v107;
        v5 += v107;
        if ((v25 & 1) != v27)
        {
          v28 = a4 - 1;
          goto LABEL_11;
        }
      }

      v28 = v18;
      v21 = v97;
      if ((v25 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (v28 < v97)
      {
        goto LABEL_127;
      }

      if (v97 < v28)
      {
        v96 = v6;
        v29 = v107 * (v28 - 1);
        v30 = v28;
        v31 = v28 * v107;
        v105 = v28;
        v32 = v97 * v107;
        do
        {
          if (v21 != --v30)
          {
            v33 = *v108;
            if (!*v108)
            {
              goto LABEL_133;
            }

            v5 = v33 + v32;
            sub_19A4789D8(v33 + v32, v101);
            if (v32 < v29 || v5 >= v33 + v31)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v32 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_19A4789D8(v101, v33 + v29);
          }

          ++v21;
          v29 -= v107;
          v31 -= v107;
          v32 += v107;
        }

        while (v21 < v30);
        v6 = v96;
        v21 = v97;
        a4 = v98;
        v28 = v105;
      }

      else
      {
LABEL_24:
        a4 = v98;
      }
    }

    v34 = v108[1];
    if (v28 < v34)
    {
      if (__OFSUB__(v28, v21))
      {
        goto LABEL_126;
      }

      if (v28 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_128;
        }

        if ((v21 + a4) >= v34)
        {
          v35 = v108[1];
        }

        else
        {
          v35 = v21 + a4;
        }

        if (v35 < v21)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v28 != v35)
        {
          break;
        }
      }
    }

    v36 = v28;
    if (v28 < v21)
    {
      goto LABEL_125;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v102;
    }

    else
    {
      v20 = sub_19A31CF2C(0, *(v102 + 2) + 1, 1, v102);
    }

    a4 = *(v20 + 2);
    v37 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v37 >> 1)
    {
      v20 = sub_19A31CF2C((v37 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v38 = &v20[16 * a4];
    *(v38 + 4) = v21;
    *(v38 + 5) = v36;
    v39 = *v99;
    if (!*v99)
    {
      goto LABEL_135;
    }

    v103 = v36;
    if (a4)
    {
      while (1)
      {
        v40 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v41 = *(v20 + 4);
          v42 = *(v20 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_55:
          if (v44)
          {
            goto LABEL_114;
          }

          v57 = &v20[16 * v5];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_117;
          }

          v63 = &v20[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_121;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v67 = &v20[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_69:
        if (v62)
        {
          goto LABEL_116;
        }

        v70 = &v20[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_119;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v40 - 1;
        if (v40 - 1 >= v5)
        {
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
          goto LABEL_129;
        }

        if (!*v108)
        {
          goto LABEL_132;
        }

        v78 = v20;
        v79 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v40 + 40];
        sub_19A477EF4(*v108 + *(v106 + 72) * v79, *v108 + *(v106 + 72) * *&v20[16 * v40 + 32], *v108 + *(v106 + 72) * v5, v39);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v79)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_19A34DDAC(v78);
        }

        if (a4 >= *(v78 + 2))
        {
          goto LABEL_111;
        }

        v80 = &v78[16 * a4];
        *(v80 + 4) = v79;
        *(v80 + 5) = v5;
        v111 = v78;
        sub_19A34DD20(v40);
        v20 = v111;
        v5 = *(v111 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v20[16 * v5 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_112;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_113;
      }

      v52 = &v20[16 * v5];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_115;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_118;
      }

      if (v56 >= v48)
      {
        v74 = &v20[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_122;
        }

        if (v43 < v77)
        {
          v40 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v18 = v108[1];
    v19 = v103;
    a4 = v98;
    if (v103 >= v18)
    {
      goto LABEL_97;
    }
  }

  v96 = v6;
  v97 = v21;
  v81 = *v108;
  v82 = *(v106 + 72);
  v83 = *v108 + v82 * (v28 - 1);
  v84 = -v82;
  v85 = v21 - v28;
  v105 = v28;
  v100 = v82;
  a4 = v81 + v28 * v82;
  v103 = v35;
LABEL_87:
  v5 = a4;
  v104 = v85;
  v107 = v83;
  v86 = v83;
  while (1)
  {
    sub_19A41CCE0(v5, v17);
    sub_19A41CCE0(v86, v14);
    v87 = sub_19A570B7C();
    sub_19A47897C(v14);
    sub_19A47897C(v17);
    if ((v87 & 1) == 0)
    {
LABEL_86:
      v83 = v107 + v100;
      v85 = v104 - 1;
      a4 += v100;
      v36 = v103;
      if (++v105 != v103)
      {
        goto LABEL_87;
      }

      v6 = v96;
      v21 = v97;
      if (v103 < v97)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v81)
    {
      break;
    }

    v88 = v109;
    sub_19A4789D8(v5, v109);
    swift_arrayInitWithTakeFrontToBack();
    sub_19A4789D8(v88, v86);
    v86 += v84;
    v5 += v84;
    if (__CFADD__(v85++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_19A477514(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_19A34DDAC(v8);
    }

    v79 = v8 + 16;
    v80 = *(v8 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v8[16 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_19A47837C((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_19A31CF2C(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v33 = *(v8 + 3);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      v8 = sub_19A31CF2C((v33 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v34;
    v35 = v8 + 32;
    v36 = &v8[16 * v5 + 32];
    *v36 = v9;
    *(v36 + 1) = v7;
    v88 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 4);
          v38 = *(v8 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v8[16 * v34];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = &v35[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = &v8[16 * v34];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = &v35[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
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

        v74 = &v35[16 * v5 - 16];
        v75 = *v74;
        v76 = &v35[16 * v5];
        v77 = *(v76 + 1);
        sub_19A47837C((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        v78 = *(v8 + 2);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        memmove(&v35[16 * v5], v76 + 16, 16 * (v78 - 1 - v5));
        *(v8 + 2) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = &v35[16 * v34];
      v42 = *(v41 - 8);
      v43 = *(v41 - 7);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 6);
      v45 = *(v41 - 5);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v8[16 * v34];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = &v35[16 * v5];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
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

uint64_t sub_19A477A8C(char *__dst, char *__src, unint64_t a3, char *a4)
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
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
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

      if (*v6 >> 14 < *v4 >> 14)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 >> 14 < *v16 >> 14)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_19A477CD0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v6 + 6) >> 14 < *(v4 + 6) >> 14)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 64;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 64;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *v15;
    v18 = *(v15 + 1);
    v19 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v19;
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_24:
    v5 -= 64;
    do
    {
      v20 = v5 + 64;
      if (*(v14 - 2) >> 14 < *(v6 - 2) >> 14)
      {
        v25 = v6 - 64;
        if (v20 != v6)
        {
          v26 = *v25;
          v27 = *(v6 - 3);
          v28 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v28;
          *v5 = v26;
          *(v5 + 1) = v27;
        }

        if (v14 <= v4 || (v6 -= 64, v25 <= v7))
        {
          v6 = v25;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v14 - 64;
      if (v20 != v14)
      {
        v22 = *v21;
        v23 = *(v14 - 3);
        v24 = *(v14 - 1);
        *(v5 + 2) = *(v14 - 2);
        *(v5 + 3) = v24;
        *v5 = v22;
        *(v5 + 1) = v23;
      }

      v5 -= 64;
      v14 -= 64;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_35:
  v29 = v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v29 & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, v29 >> 6 << 6);
  }

  return 1;
}

void sub_19A477EF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v41 = type metadata accessor for PromptEdit(0);
  MEMORY[0x1EEE9AC00](v41);
  v42 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
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
          sub_19A41CCE0(v30, v11);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v42;
          sub_19A41CCE0(v32, v42);
          v35 = sub_19A570B7C();
          v36 = v34;
          v11 = v33;
          sub_19A47897C(v36);
          sub_19A47897C(v33);
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
        sub_19A41CCE0(a2, v11);
        v20 = v42;
        sub_19A41CCE0(a4, v42);
        v21 = sub_19A570B7C();
        sub_19A47897C(v20);
        sub_19A47897C(v11);
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
  sub_19A376284(&v46, &v45, &v44);
}

uint64_t sub_19A47837C(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
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
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

unint64_t sub_19A478580(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_19A4786D0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_19A57394C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_19A573A0C() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_19A4786D0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_19A478768(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_19A4787DC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_19A478768(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_19A478900(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_19A4787DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_19A573A0C();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_19A478900(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_19A572F3C();
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
    v5 = MEMORY[0x19A900A90](15, a1 >> 16);
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

uint64_t sub_19A47897C(uint64_t a1)
{
  v2 = type metadata accessor for PromptEdit(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A4789D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptEdit(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A478A3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptEdit(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A478AA0()
{
  result = qword_1EAF9F8E8;
  if (!qword_1EAF9F8E8)
  {
    sub_19A570B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F8E8);
  }

  return result;
}

uint64_t sub_19A478AF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0770, &unk_19A586330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A478B68()
{
  result = qword_1EAFA1FA0;
  if (!qword_1EAFA1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1FA0);
  }

  return result;
}

void ClientIdentity.init()(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processName];
  v4 = sub_19A572CFC();
  v6 = v5;

  LODWORD(v3) = [v2 processIdentifier];
  v7 = getuid();

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 20) = v7;
}

uint64_t ClientIdentity.name.getter()
{
  v1 = *v0;

  return v1;
}

void ClientIdentity.init(processInfo:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 processName];
  v5 = sub_19A572CFC();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = [a1 processIdentifier];
  LODWORD(v4) = getuid();

  *(a2 + 20) = v4;
}

uint64_t ClientIdentity.init(pid:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  result = getuid();
  *(a2 + 20) = result;
  return result;
}

uint64_t ClientIdentity.init(pid:name:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 8) = a3;
  *(a4 + 16) = a1;
  result = getuid();
  *(a4 + 20) = result;
  return result;
}

uint64_t ClientIdentity.init(pid:name:uid:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = result;
  *(a5 + 20) = a4;
  return result;
}

void ClientIdentity.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1FB8, &qword_19A589030);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A478FB4();
  sub_19A57417C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v19 = 0;
    v9 = sub_19A573CFC();
    v11 = v10;
    v12 = v9;
    v18 = 1;
    v16 = sub_19A573D5C();
    v17 = 2;
    v13 = sub_19A573CEC();
    v14 = v13;
    if ((v13 & 0x100000000) != 0)
    {
      v14 = getuid();
    }

    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v16;
    *(a2 + 20) = v14;

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }
}

unint64_t sub_19A478FB4()
{
  result = qword_1EAFA1FC0;
  if (!qword_1EAFA1FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1FC0);
  }

  return result;
}

uint64_t ClientIdentity.debugDescription.getter()
{
  if (v0[1])
  {
    v4 = 34;
    MEMORY[0x19A900A50](*v0);
    MEMORY[0x19A900A50](2629666, 0xE300000000000000);
    v1 = sub_19A573EDC();
    MEMORY[0x19A900A50](v1);

    MEMORY[0x19A900A50](41, 0xE100000000000000);
  }

  else
  {
    v4 = 0x20737365636F7270;
    v2 = sub_19A573EDC();
    MEMORY[0x19A900A50](v2);
  }

  return v4;
}

uint64_t sub_19A4790F8()
{
  v1 = 6580592;
  if (*v0 != 1)
  {
    v1 = 6580597;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_19A479144@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A479948(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A47916C(uint64_t a1)
{
  v2 = sub_19A478FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4791A8(uint64_t a1)
{
  v2 = sub_19A478FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientIdentity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1FC8, &qword_19A589038);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  LODWORD(v5) = *(v1 + 20);
  v11 = *(v1 + 16);
  v9[1] = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A478FB4();
  sub_19A5741AC();
  v14 = 0;
  v7 = v10;
  sub_19A573DCC();
  if (v7)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_19A573E8C();
  v12 = 2;
  sub_19A573E9C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ClientIdentity.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_19A5740DC();
    sub_19A572E4C();
  }

  else
  {
    sub_19A5740DC();
  }

  sub_19A5740EC();
  return sub_19A5740EC();
}

uint64_t ClientIdentity.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_19A5740BC();
  sub_19A5740DC();
  if (v1)
  {
    sub_19A572E4C();
  }

  sub_19A5740EC();
  sub_19A5740EC();
  return sub_19A57410C();
}

uint64_t sub_19A4794DC()
{
  v1 = *(v0 + 8);
  sub_19A5740BC();
  sub_19A5740DC();
  if (v1)
  {
    sub_19A572E4C();
  }

  sub_19A5740EC();
  sub_19A5740EC();
  return sub_19A57410C();
}

uint64_t sub_19A479570(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_19A5740DC();
    sub_19A572E4C();
  }

  else
  {
    sub_19A5740DC();
  }

  sub_19A5740EC();
  return sub_19A5740EC();
}

uint64_t sub_19A4795E8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_19A5740BC();
  sub_19A5740DC();
  if (v2)
  {
    sub_19A572E4C();
  }

  sub_19A5740EC();
  sub_19A5740EC();
  return sub_19A57410C();
}

BOOL _s16VisualGeneration14ClientIdentityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v7 = *(a2 + 20);
  if (!v3)
  {
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v5 == v8;
    }

    if (v12)
    {
      return v4 == v7;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v6)
  {
    if (v5 == v8)
    {
      return v4 == v7;
    }

    return 0;
  }

  v10 = sub_19A573F1C();
  result = 0;
  if ((v10 & 1) != 0 && v5 == v8)
  {
    return v4 == v7;
  }

  return result;
}

unint64_t sub_19A47971C()
{
  result = qword_1EAFA1FD0;
  if (!qword_1EAFA1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1FD0);
  }

  return result;
}

uint64_t sub_19A479770(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_19A4797CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_19A479844()
{
  result = qword_1EAFA1FD8;
  if (!qword_1EAFA1FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1FD8);
  }

  return result;
}

unint64_t sub_19A47989C()
{
  result = qword_1EAFA1FE0;
  if (!qword_1EAFA1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1FE0);
  }

  return result;
}

unint64_t sub_19A4798F4()
{
  result = qword_1EAFA1FE8;
  if (!qword_1EAFA1FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1FE8);
  }

  return result;
}

uint64_t sub_19A479948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6580597 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_19A479A5C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8, &qword_19A577310);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01D0, &unk_19A5790F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020, &unk_19A579C70);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v21 = &v20 - v12;
  v13 = sub_19A570C7C();
  MEMORY[0x1EEE9AC00](v13 - 8);

  sub_19A570C6C();
  sub_19A570BFC();
  v24[0] = 0x7D74706D6F72707BLL;
  v24[1] = 0xE800000000000000;
  v14 = sub_19A57112C();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  sub_19A570BEC();
  sub_19A33679C();
  sub_19A2F4450();
  sub_19A570D8C();
  sub_19A2F3FA0(v6, &qword_1EAF9FDC8, &qword_19A577310);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_1EAFA01D0;
    v16 = &unk_19A5790F0;
    v17 = v9;
  }

  else
  {
    v18 = v21;
    sub_19A3367F4(v9, v21);
    sub_19A336864();
    sub_19A570AEC();
    v15 = &qword_1EAFA0020;
    v16 = &unk_19A579C70;
    v17 = v18;
  }

  sub_19A2F3FA0(v17, v15, v16);
  return sub_19A2F132C(v24);
}

BOOL sub_19A479D88(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_19A4AE77C();
  v5 = sub_19A4108E8(v3, v4);

  if (!v5)
  {
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 1;
  }

  return sub_19A4108E8(v3, a2);
}

double sub_19A479E14@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  sub_19A4ADDA8(&v8, a3, a4);
  sub_19A479A5C(a1, a5);

  return result;
}

uint64_t ResourcesUnavailableError.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

void sub_19A479EE8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000019A59AC60 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_19A479F7C(uint64_t a1)
{
  v2 = sub_19A47A130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A479FB8(uint64_t a1)
{
  v2 = sub_19A47A130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResourcesUnavailableError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1FF0, &qword_19A5892A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47A130();
  sub_19A5741AC();
  sub_19A573E2C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_19A47A130()
{
  result = qword_1EAFA1FF8;
  if (!qword_1EAFA1FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1FF8);
  }

  return result;
}

uint64_t ResourcesUnavailableError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2000, &qword_19A5892A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47A130();
  sub_19A57417C();
  if (!v2)
  {
    v9 = sub_19A573CFC();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_19A47A2F8(void *a1)
{
  a1[1] = sub_19A47A330();
  a1[2] = sub_19A47A384();
  result = sub_19A379E50();
  a1[3] = result;
  return result;
}

unint64_t sub_19A47A330()
{
  result = qword_1EAFA2008;
  if (!qword_1EAFA2008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2008);
  }

  return result;
}

unint64_t sub_19A47A384()
{
  result = qword_1EAFA2010;
  if (!qword_1EAFA2010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2010);
  }

  return result;
}

uint64_t sub_19A47A3F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1FF0, &qword_19A5892A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47A130();
  sub_19A5741AC();
  sub_19A573E2C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_19A47A554()
{
  result = qword_1EAFA2018;
  if (!qword_1EAFA2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2018);
  }

  return result;
}

unint64_t sub_19A47A5AC()
{
  result = qword_1EAFA2020;
  if (!qword_1EAFA2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2020);
  }

  return result;
}

unint64_t sub_19A47A604()
{
  result = qword_1EAFA2028;
  if (!qword_1EAFA2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2028);
  }

  return result;
}

unint64_t sub_19A47A658()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_19A47A6B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A484AB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A47A6D8(uint64_t a1)
{
  v2 = sub_19A47A914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47A714(uint64_t a1)
{
  v2 = sub_19A47A914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeneratorError.VersionTriple.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2030, &qword_19A589520);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47A914();
  sub_19A5741AC();
  v14 = 0;
  v9 = v11[5];
  sub_19A573E2C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_19A573DCC();
  v12 = 2;
  sub_19A573DCC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_19A47A914()
{
  result = qword_1EAFA2038;
  if (!qword_1EAFA2038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2038);
  }

  return result;
}

void GeneratorError.VersionTriple.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2040, &qword_19A589528);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47A914();
  sub_19A57417C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v24 = 0;
    v9 = sub_19A573CFC();
    v11 = v10;
    v21 = v9;
    v23 = 1;
    v19 = sub_19A573C8C();
    v20 = v12;
    v22 = 2;
    v13 = sub_19A573C8C();
    v15 = v14;
    v16 = v13;
    (*(v6 + 8))(v8, v5);
    v17 = v20;
    *a2 = v21;
    a2[1] = v11;
    a2[2] = v19;
    a2[3] = v17;
    a2[4] = v16;
    a2[5] = v15;

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }
}

uint64_t GeneratorError.ExternalResponseInformation.responseMessage.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_19A47AC4C()
{
  if (*v0)
  {
    return 0x65736E6F70736572;
  }

  else
  {
    return 0x6F746172656E6567;
  }
}

void sub_19A47AC98(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F746172656E6567 && a2 == 0xE900000000000072;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEF6567617373654DLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_19A47AD84(uint64_t a1)
{
  v2 = sub_19A47AFA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47ADC0(uint64_t a1)
{
  v2 = sub_19A47AFA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeneratorError.ExternalResponseInformation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2048, &qword_19A589530);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47AFA0();
  sub_19A5741AC();
  v14 = v8;
  v13 = 0;
  sub_19A47AFF4();
  sub_19A573E7C();
  if (!v2)
  {
    v12 = 1;
    sub_19A573E2C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_19A47AFA0()
{
  result = qword_1EAFA2050;
  if (!qword_1EAFA2050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2050);
  }

  return result;
}

unint64_t sub_19A47AFF4()
{
  result = qword_1EAFA2058;
  if (!qword_1EAFA2058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2058);
  }

  return result;
}

uint64_t GeneratorError.ExternalResponseInformation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2060, &qword_19A589538);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47AFA0();
  sub_19A57417C();
  if (!v2)
  {
    v16 = 0;
    sub_19A47B208();
    sub_19A573D4C();
    v9 = v17;
    v15 = 1;
    v11 = sub_19A573CFC();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_19A47B208()
{
  result = qword_1EAFA2068;
  if (!qword_1EAFA2068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2068);
  }

  return result;
}

uint64_t GeneratorError.ExternalErrorInformation.errorDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeneratorError.ExternalErrorInformation(0) + 24));

  return v1;
}

uint64_t GeneratorError.ExternalErrorInformation.userInfoStrings.getter()
{
  type metadata accessor for GeneratorError.ExternalErrorInformation(0);
}

uint64_t sub_19A47B374()
{
  if (*v0)
  {
    return 0x696B726F7774656ELL;
  }

  else
  {
    return 0x696D694C65746172;
  }
}

void sub_19A47B3BC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696D694C65746172 && a2 == 0xEB00000000646574;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x696B726F7774656ELL && a2 == 0xEA0000000000676ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_19A47B4A4(uint64_t a1)
{
  v2 = sub_19A47BB98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47B4E0(uint64_t a1)
{
  v2 = sub_19A47BB98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A47B51C(uint64_t a1)
{
  v2 = sub_19A47BBEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47B558(uint64_t a1)
{
  v2 = sub_19A47BBEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A47B594(uint64_t a1)
{
  v2 = sub_19A47BCA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47B5D0(uint64_t a1)
{
  v2 = sub_19A47BCA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeneratorError.ExternalErrorInformation.ResponseType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2070, &qword_19A589548);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v24 - v3;
  v28 = type metadata accessor for GeneratorError.ExternalErrorInformation.NetworkingInfo(0);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2078, &qword_19A589550);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v25 = type metadata accessor for GeneratorError.ExternalErrorInformation.RateLimitInfo(0);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2080, &qword_19A589558);
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47BB98();
  sub_19A5741AC();
  sub_19A47D8B4(v33, v12, type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType);
  v16 = (v13 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v29;
    sub_19A47BC40(v12, v29, type metadata accessor for GeneratorError.ExternalErrorInformation.NetworkingInfo);
    v36 = 1;
    sub_19A47BBEC();
    v18 = v30;
    v19 = v34;
    sub_19A573DAC();
    sub_19A47BCFC(&qword_1EAFA2098, type metadata accessor for GeneratorError.ExternalErrorInformation.NetworkingInfo, &protocol conformance descriptor for GeneratorError.ExternalErrorInformation.NetworkingInfo);
    v20 = v32;
    sub_19A573E7C();
    (*(v31 + 8))(v18, v20);
    sub_19A47BD44(v17, type metadata accessor for GeneratorError.ExternalErrorInformation.NetworkingInfo);
    return (*v16)(v15, v19);
  }

  else
  {
    sub_19A47BC40(v12, v9, type metadata accessor for GeneratorError.ExternalErrorInformation.RateLimitInfo);
    v35 = 0;
    sub_19A47BCA8();
    v22 = v34;
    sub_19A573DAC();
    sub_19A47BCFC(&qword_1EAFA20A8, type metadata accessor for GeneratorError.ExternalErrorInformation.RateLimitInfo, &protocol conformance descriptor for GeneratorError.ExternalErrorInformation.RateLimitInfo);
    v23 = v27;
    sub_19A573E7C();
    (*(v26 + 8))(v7, v23);
    sub_19A47BD44(v9, type metadata accessor for GeneratorError.ExternalErrorInformation.RateLimitInfo);
    return (*v16)(v15, v22);
  }
}

unint64_t sub_19A47BB98()
{
  result = qword_1EAFA2088;
  if (!qword_1EAFA2088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2088);
  }

  return result;
}

unint64_t sub_19A47BBEC()
{
  result = qword_1EAFA2090;
  if (!qword_1EAFA2090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2090);
  }

  return result;
}

uint64_t sub_19A47BC40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_19A47BCA8()
{
  result = qword_1EAFA20A0;
  if (!qword_1EAFA20A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA20A0);
  }

  return result;
}

uint64_t sub_19A47BCFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A47BD44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t GeneratorError.ExternalErrorInformation.ResponseType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA20B0, &qword_19A589560);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA20B8, &qword_19A589568);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA20C0, &unk_19A589570);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_19A47BB98();
  v19 = v51;
  sub_19A57417C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  v40 = v11;
  v41 = v14;
  v21 = v49;
  v20 = v50;
  v42 = 0;
  v39 = v17;
  v51 = v9;
  v22 = v48;
  v23 = sub_19A573D7C();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_19A344188();
  v26 = v6;
  v27 = v8;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v32 = sub_19A5739FC();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700, &qword_19A579CF0);
    *v34 = v51;
    sub_19A573C7C();
    sub_19A5739DC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v25 & 1) == 0)
  {
    v57 = 0;
    sub_19A47BCA8();
    v36 = v42;
    sub_19A573C5C();
    if (!v36)
    {
      type metadata accessor for GeneratorError.ExternalErrorInformation.RateLimitInfo(0);
      sub_19A47BCFC(&qword_1EAFA20D0, type metadata accessor for GeneratorError.ExternalErrorInformation.RateLimitInfo, &protocol conformance descriptor for GeneratorError.ExternalErrorInformation.RateLimitInfo);
      v30 = v41;
      v37 = v46;
      sub_19A573D4C();
      (*(v45 + 8))(v21, v37);
      (*(v22 + 8))(v8, v6);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v57 = 1;
  sub_19A47BBEC();
  v28 = v20;
  v29 = v42;
  sub_19A573C5C();
  if (v29)
  {
LABEL_8:
    (*(v22 + 8))(v27, v6);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  type metadata accessor for GeneratorError.ExternalErrorInformation.NetworkingInfo(0);
  sub_19A47BCFC(&qword_1EAFA20C8, type metadata accessor for GeneratorError.ExternalErrorInformation.NetworkingInfo, &protocol conformance descriptor for GeneratorError.ExternalErrorInformation.NetworkingInfo);
  v30 = v40;
  v31 = v44;
  sub_19A573D4C();
  (*(v47 + 8))(v28, v31);
  (*(v22 + 8))(v27, v26);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v38 = v39;
  sub_19A47BC40(v30, v39, type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType);
  sub_19A47BC40(v38, v43, type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType);
  return __swift_destroy_boxed_opaque_existential_0Tm(v52);
}

uint64_t sub_19A47C498(uint64_t a1)
{
  v2 = sub_19A47C554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47C4D4(uint64_t a1)
{
  v2 = sub_19A47C554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_19A47C554()
{
  result = qword_1EAFA20E0;
  if (!qword_1EAFA20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA20E0);
  }

  return result;
}

uint64_t GeneratorError.ExternalErrorInformation.RateLimitInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1510, &qword_19A589580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA20F0, &qword_19A589590);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for GeneratorError.ExternalErrorInformation.RateLimitInfo(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47C554();
  sub_19A57417C();
  if (!v2)
  {
    v13 = v16;
    sub_19A570FBC();
    sub_19A47BCFC(&qword_1EAFA20F8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_19A573CDC();
    (*(v17 + 8))(v9, v7);
    sub_19A3351B8(v6, v12, &qword_1EAFA1510, &qword_19A589580);
    sub_19A47BC40(v12, v13, type metadata accessor for GeneratorError.ExternalErrorInformation.RateLimitInfo);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void sub_19A47C878(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7466417972746572 && a2 == 0xEE00657461447265)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_19A47C908(uint64_t a1)
{
  v2 = sub_19A47CB44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47C944(uint64_t a1)
{
  v2 = sub_19A47CB44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A47C9C4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_19A5741AC();
  sub_19A570FBC();
  sub_19A47BCFC(&qword_1EAFA20E8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_19A573E1C();
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_19A47CB44()
{
  result = qword_1EAFA2108;
  if (!qword_1EAFA2108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2108);
  }

  return result;
}

uint64_t GeneratorError.ExternalErrorInformation.NetworkingInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1510, &qword_19A589580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2110, &qword_19A5895A0);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for GeneratorError.ExternalErrorInformation.NetworkingInfo(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47CB44();
  sub_19A57417C();
  if (!v2)
  {
    v13 = v16;
    sub_19A570FBC();
    sub_19A47BCFC(&qword_1EAFA20F8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_19A573CDC();
    (*(v17 + 8))(v9, v7);
    sub_19A3351B8(v6, v12, &qword_1EAFA1510, &qword_19A589580);
    sub_19A47BC40(v12, v13, type metadata accessor for GeneratorError.ExternalErrorInformation.NetworkingInfo);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19A47CE68(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_19A5741AC();
  sub_19A570FBC();
  sub_19A47BCFC(&qword_1EAFA20E8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_19A573E1C();
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_19A47CFE8()
{
  v1 = 0x6F746172656E6567;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    v1 = 0x65736E6F70736572;
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

uint64_t sub_19A47D080@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A484BDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A47D0A8(uint64_t a1)
{
  v2 = sub_19A47D3A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47D0E4(uint64_t a1)
{
  v2 = sub_19A47D3A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GeneratorError.ExternalErrorInformation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2118, &unk_19A5895A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47D3A0();
  sub_19A5741AC();
  v16 = *v3;
  v15 = 0;
  sub_19A47AFF4();
  sub_19A573E7C();
  if (!v2)
  {
    v9 = type metadata accessor for GeneratorError.ExternalErrorInformation(0);
    v14 = 1;
    type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType(0);
    sub_19A47BCFC(&qword_1EAFA2128, type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType, &protocol conformance descriptor for GeneratorError.ExternalErrorInformation.ResponseType);
    sub_19A573E1C();
    v13 = 2;
    sub_19A573DCC();
    v12 = *&v3[*(v9 + 28)];
    v11[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1290, &qword_19A582DF0);
    sub_19A40DDEC(&qword_1EAF9E918, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_19A573E7C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_19A47D3A0()
{
  result = qword_1EAFA2120;
  if (!qword_1EAFA2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2120);
  }

  return result;
}

void GeneratorError.ExternalErrorInformation.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1578, &qword_19A589540);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2130, &unk_19A5895B8);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for GeneratorError.ExternalErrorInformation(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A47D3A0();
  v12 = v25;
  sub_19A57417C();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v25 = a1;
    v21 = v9;
    v13 = v23;
    v30 = 0;
    sub_19A47B208();
    v14 = v24;
    sub_19A573D4C();
    v15 = v11;
    *v11 = v31;
    type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType(0);
    v29 = 1;
    sub_19A47BCFC(&qword_1EAFA2138, type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType, &protocol conformance descriptor for GeneratorError.ExternalErrorInformation.ResponseType);
    sub_19A573CDC();
    v16 = v21;
    sub_19A3351B8(v5, v15 + *(v21 + 20), &qword_1EAFA1578, &qword_19A589540);
    v28 = 2;
    v17 = sub_19A573C8C();
    v18 = (v15 + *(v16 + 24));
    *v18 = v17;
    v18[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1290, &qword_19A582DF0);
    v27 = 3;
    sub_19A40DDEC(&qword_1ED823F88, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_19A573D4C();
    v20 = v25;
    (*(v13 + 8))(v8, v14);
    *(v15 + *(v16 + 28)) = v26;
    sub_19A47D8B4(v15, v22, type metadata accessor for GeneratorError.ExternalErrorInformation);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    sub_19A47BD44(v15, type metadata accessor for GeneratorError.ExternalErrorInformation);
  }
}

uint64_t sub_19A47D84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1578, &qword_19A589540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A47D8B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void GeneratorError.errorDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1578, &qword_19A589540);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v57 = type metadata accessor for GeneratorError.ExternalErrorInformation(0);
  MEMORY[0x1EEE9AC00](v57);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v50 - v18;
  v19 = type metadata accessor for GeneratorError(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_19A47D8B4(v0, v21, type metadata accessor for GeneratorError);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
    case 4u:
    case 5u:
    case 8u:
      sub_19A572C8C();
      sub_19A572C7C();
      sub_19A572C6C();

      sub_19A572C7C();
      goto LABEL_30;
    case 6u:
      v46 = v21[2];
      sub_19A572C8C();
      sub_19A572C7C();
      sub_19A572C6C();

      sub_19A572C7C();
      v58 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8, &qword_19A57A790);
      sub_19A331C2C();
      sub_19A572BEC();

      sub_19A572C6C();

      sub_19A572C7C();
LABEL_30:
      sub_19A572CAC();
      goto LABEL_31;
    case 7u:
      v26 = *v21;
      v27 = *(*v21 + 16);
      if (!v27)
      {

        v29 = MEMORY[0x1E69E7CC0];
LABEL_37:
        v58 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8, &qword_19A57A790);
        sub_19A331C2C();
        v47 = sub_19A572BEC();
        v49 = v48;

        v58 = 8283;
        v59 = 0xE200000000000000;
        MEMORY[0x19A900A50](v47, v49);

        MEMORY[0x19A900A50](23840, 0xE200000000000000);

        sub_19A572C8C();
        sub_19A572C7C();
        sub_19A572C6C();

        sub_19A572C7C();
        sub_19A572CAC();
        sub_19A5710EC();
LABEL_32:
        sub_19A572D7C();
        return;
      }

      v60 = MEMORY[0x1E69E7CC0];
      sub_19A322580(0, v27, 0);
      v28 = 0;
      v29 = v60;
      v51 = "he external generator ";
      v52 = v27;
      v30 = (v26 + 72);
      v53 = v26;
      while (v28 < *(v26 + 16))
      {
        v32 = *(v30 - 5);
        v31 = *(v30 - 4);
        v34 = *(v30 - 3);
        v33 = *(v30 - 2);
        v35 = *v30;
        v57 = *(v30 - 1);
        v58 = 0;
        v59 = 0xE000000000000000;

        swift_bridgeObjectRetain_n();

        sub_19A57395C();

        v58 = 40;
        v59 = 0xE100000000000000;
        MEMORY[0x19A900A50](v32, v31);
        MEMORY[0x19A900A50](0x746E65696C63202CLL, 0xEB0000000020203ALL);
        if (v33)
        {
          v36 = v34;
        }

        else
        {
          v36 = 7104878;
        }

        if (v33)
        {
          v37 = v33;
        }

        else
        {
          v37 = 0xE300000000000000;
        }

        MEMORY[0x19A900A50](v36, v37);

        MEMORY[0x19A900A50](0xD000000000000016, v51 | 0x8000000000000000);
        if (v35)
        {
          v38 = v57;
        }

        else
        {
          v38 = 7104878;
        }

        if (v35)
        {
          v39 = v35;
        }

        else
        {
          v39 = 0xE300000000000000;
        }

        MEMORY[0x19A900A50](v38, v39);

        MEMORY[0x19A900A50](41, 0xE100000000000000);

        v40 = v58;
        v41 = v59;
        v60 = v29;
        v43 = *(v29 + 16);
        v42 = *(v29 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_19A322580((v42 > 1), v43 + 1, 1);
          v29 = v60;
        }

        ++v28;
        *(v29 + 16) = v43 + 1;
        v44 = v29 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        v30 += 6;
        v26 = v53;
        if (v52 == v28)
        {

          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      return;
    case 9u:
      sub_19A572C8C();
      sub_19A572C7C();
      sub_19A572C6C();

      sub_19A572C7C();
      sub_19A572CAC();
      sub_19A5710EC();
      goto LABEL_32;
    case 0xAu:
      sub_19A572C8C();
      sub_19A572C7C();
      sub_19A572C6C();

      sub_19A572C7C();
      sub_19A572C6C();

      sub_19A572C7C();
      goto LABEL_28;
    case 0xBu:
      sub_19A47BC40(v21, v8, type metadata accessor for GeneratorError.ExternalErrorInformation);
      v22 = *(v57 + 20);
      sub_19A33546C(&v8[v22], v6, &qword_1EAFA1578, &qword_19A589540);
      v23 = type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType(0);
      v24 = *(*(v23 - 8) + 48);
      v25 = v24(v6, 1, v23);
      sub_19A47D84C(v6);
      if (v25 == 1)
      {
        goto LABEL_35;
      }

      sub_19A33546C(&v8[v22], v3, &qword_1EAFA1578, &qword_19A589540);
      if (v24(v3, 1, v23) == 1)
      {
        goto LABEL_39;
      }

      sub_19A572DAC();
LABEL_35:
      sub_19A572C8C();
      sub_19A572C7C();
      sub_19A572C6C();

      sub_19A572C7C();
      sub_19A572C6C();

      sub_19A572C7C();

      sub_19A572C6C();

      sub_19A572C7C();
      sub_19A572CAC();
      sub_19A5710EC();
      sub_19A572D7C();
      sub_19A47BD44(v8, type metadata accessor for GeneratorError.ExternalErrorInformation);
      return;
    case 0xCu:
      sub_19A572C4C();
LABEL_31:
      sub_19A5710EC();
      goto LABEL_32;
    default:
      v45 = *v21;
      sub_19A572C8C();
      sub_19A572C7C();
      LOBYTE(v58) = v45;
      sub_19A572DAC();
      sub_19A572C6C();

      sub_19A572C7C();
      sub_19A572C6C();

      sub_19A572C7C();
LABEL_28:
      sub_19A572CAC();
      sub_19A5710EC();
      goto LABEL_32;
  }
}

unint64_t sub_19A47E740(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000021;
      break;
    case 2:
    case 7:
    case 8:
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000026;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_19A47E888@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A484D5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A47E8BC(uint64_t a1)
{
  v2 = sub_19A48220C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47E8F8(uint64_t a1)
{
  v2 = sub_19A48220C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A47E950(uint64_t a1)
{
  v2 = sub_19A48235C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47E98C(uint64_t a1)
{
  v2 = sub_19A48235C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_19A47E9E4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x666E49726F727265 && a2 == 0xE90000000000006FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_19A47EA74(uint64_t a1)
{
  v2 = sub_19A482260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47EAB0(uint64_t a1)
{
  v2 = sub_19A482260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A47EAEC()
{
  if (*v0)
  {
    return 0x736E6F73616572;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_19A47EB2C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000019A59B170 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_19A573F1C();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_19A47EC14(uint64_t a1)
{
  v2 = sub_19A4824AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47EC50(uint64_t a1)
{
  v2 = sub_19A4824AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_19A47ECA8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x800000019A59B190 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_19A47ED3C(uint64_t a1)
{
  v2 = sub_19A4825FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47ED78(uint64_t a1)
{
  v2 = sub_19A4825FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A47EDB4(uint64_t a1)
{
  v2 = sub_19A482554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47EDF0(uint64_t a1)
{
  v2 = sub_19A482554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A47EE2C(uint64_t a1)
{
  v2 = sub_19A482404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47EE68(uint64_t a1)
{
  v2 = sub_19A482404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_19A47EEC4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xEC0000006F666E49)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_19A47EF50(uint64_t a1)
{
  v2 = sub_19A4822B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47EF8C(uint64_t a1)
{
  v2 = sub_19A4822B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_19A47EFC8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F746172656E6567 && a2 == 0xE900000000000072)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_19A47F058(uint64_t a1)
{
  v2 = sub_19A4823B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47F094(uint64_t a1)
{
  v2 = sub_19A4823B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A47F0D0(uint64_t a1)
{
  v2 = sub_19A482500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47F10C(uint64_t a1)
{
  v2 = sub_19A482500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A47F148(uint64_t a1)
{
  v2 = sub_19A4825A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47F184(uint64_t a1)
{
  v2 = sub_19A4825A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A47F1C0(uint64_t a1)
{
  v2 = sub_19A4826F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47F1FC(uint64_t a1)
{
  v2 = sub_19A4826F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A47F238(uint64_t a1)
{
  v2 = sub_19A4826A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47F274(uint64_t a1)
{
  v2 = sub_19A4826A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_19A47F2B0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_19A573F1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000019A59B190 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_19A47F38C(uint64_t a1)
{
  v2 = sub_19A482650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A47F3C8(uint64_t a1)
{
  v2 = sub_19A482650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double GeneratorError.encode(to:)(void *a1)
{
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2140, &qword_19A5895C8);
  v86 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v74 - v2;
  v109 = type metadata accessor for GeneratorError.ExternalErrorInformation(0);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2148, &qword_19A5895D0);
  v85 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v74 - v4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2150, &qword_19A5895D8);
  v84 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v74 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2158, &qword_19A5895E0);
  v82 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v74 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2160, &qword_19A5895E8);
  v81 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v74 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2168, &qword_19A5895F0);
  v83 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v101 = &v74 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2170, &qword_19A5895F8);
  v80 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v74 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2178, &qword_19A589600);
  v79 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v74 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2180, &qword_19A589608);
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v87 = &v74 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2188, &qword_19A589610);
  v77 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v88 = &v74 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2190, &qword_19A589618);
  v78 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v74 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2198, &qword_19A589620);
  v76 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v15 = &v74 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA21A0, &qword_19A589628);
  v75 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  v19 = type metadata accessor for GeneratorError(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA21A8, &qword_19A589630);
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v23 = &v74 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A48220C();
  v117 = v23;
  sub_19A5741AC();
  sub_19A47D8B4(v114, v21, type metadata accessor for GeneratorError);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v59 = *v21;
      LOBYTE(v118) = 1;
      sub_19A4826A4();
      v60 = v115;
      v61 = v117;
      sub_19A573DAC();
      LOBYTE(v118) = v59;
      v121 = 0;
      sub_19A38B0D4();
      v62 = v89;
      v63 = v116;
      sub_19A573E7C();
      if (v63)
      {

        (*(v76 + 8))(v15, v62);
        v64 = *(v113 + 8);
        v65 = v61;
      }

      else
      {
        LOBYTE(v118) = 1;
        sub_19A573E2C();

        (*(v76 + 8))(v15, v62);
        v64 = *(v113 + 8);
        v65 = v117;
      }

      v64(v65, v60);
      return result;
    case 2u:
      v48 = *v21;
      LOBYTE(v118) = 2;
      sub_19A482650();
      v49 = v91;
      v25 = v115;
      v26 = v117;
      sub_19A573DAC();
      LOBYTE(v118) = v48;
      v121 = 0;
      sub_19A38B0D4();
      v16 = v94;
      v50 = v116;
      sub_19A573E7C();
      if (!v50)
      {
        LOBYTE(v118) = 1;
        sub_19A573E2C();
      }

      v51 = &v110;
      goto LABEL_20;
    case 3u:
      LOBYTE(v118) = 3;
      sub_19A4825FC();
      v52 = v88;
      v25 = v115;
      v26 = v117;
      sub_19A573DAC();
      v53 = v93;
      sub_19A573E2C();

      (*(v77 + 8))(v52, v53);
      goto LABEL_22;
    case 4u:
      LOBYTE(v118) = 5;
      sub_19A482554();
      v36 = v95;
      v25 = v115;
      v26 = v117;
      sub_19A573DAC();
      v37 = v96;
      sub_19A573E2C();

      v38 = &v111;
      goto LABEL_17;
    case 5u:
      LOBYTE(v118) = 6;
      sub_19A482500();
      v36 = v97;
      v25 = v115;
      v26 = v117;
      sub_19A573DAC();
      v37 = v98;
      sub_19A573E2C();

      v38 = &v112;
LABEL_17:
      (*(*(v38 - 32) + 8))(v36, v37);
      goto LABEL_22;
    case 6u:
      v66 = *(v21 + 2);
      LOBYTE(v118) = 7;
      sub_19A4824AC();
      v49 = v101;
      v25 = v115;
      v26 = v117;
      sub_19A573DAC();
      LOBYTE(v118) = 0;
      v16 = v104;
      v67 = v116;
      sub_19A573E2C();
      if (v67)
      {

        v51 = &v115;
LABEL_20:
        v28 = *(*(v51 - 32) + 8);
        v29 = v49;
LABEL_21:
        v28(v29, v16);
LABEL_22:
        (*(v113 + 8))(v26, v25);
      }

      else
      {

        v118 = v66;
        v121 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8, &qword_19A57A790);
        sub_19A48286C(&qword_1EAFA0BE0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
        sub_19A573E7C();
        (*(v83 + 8))(v49, v16);
LABEL_30:
        (*(v113 + 8))(v26, v25);
LABEL_31:
      }

      return result;
    case 7u:
      v54 = *v21;
      LOBYTE(v118) = 8;
      sub_19A482404();
      v55 = v99;
      v56 = v115;
      v57 = v117;
      sub_19A573DAC();
      v118 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA21F0, &qword_19A589638);
      sub_19A4827A0(&qword_1EAFA21F8, sub_19A482458, MEMORY[0x1E69E6300]);
      v58 = v102;
      sub_19A573E7C();
      (*(v81 + 8))(v55, v58);
      (*(v113 + 8))(v57, v56);
      goto LABEL_31;
    case 8u:
      v73 = *v21;
      LOBYTE(v118) = 9;
      sub_19A4823B0();
      v43 = v100;
      v44 = v115;
      v45 = v117;
      sub_19A573DAC();
      LOBYTE(v118) = v73;
      sub_19A47AFF4();
      v46 = v103;
      sub_19A573E7C();
      v47 = &v114;
      goto LABEL_25;
    case 9u:
      v42 = *v21;
      LOBYTE(v118) = 10;
      sub_19A48235C();
      v43 = v105;
      v44 = v115;
      v45 = v117;
      sub_19A573DAC();
      LOBYTE(v118) = v42;
      sub_19A47AFF4();
      v46 = v106;
      sub_19A573E7C();
      v47 = &v116;
LABEL_25:
      (*(*(v47 - 32) + 8))(v43, v46);
      (*(v113 + 8))(v45, v44);
      return result;
    case 0xAu:
      v68 = *v21;
      v70 = *(v21 + 1);
      v69 = *(v21 + 2);
      LOBYTE(v118) = 11;
      sub_19A4822B4();
      v71 = v107;
      v25 = v115;
      v26 = v117;
      sub_19A573DAC();
      LOBYTE(v118) = v68;
      v119 = v70;
      v120 = v69;
      sub_19A482308();
      v72 = v108;
      sub_19A573E7C();
      (*(v85 + 8))(v71, v72);
      goto LABEL_30;
    case 0xBu:
      v30 = v110;
      sub_19A47BC40(v21, v110, type metadata accessor for GeneratorError.ExternalErrorInformation);
      LOBYTE(v118) = 12;
      sub_19A482260();
      v31 = v111;
      v32 = v115;
      v33 = v117;
      sub_19A573DAC();
      sub_19A47BCFC(&qword_1EAFA21C0, type metadata accessor for GeneratorError.ExternalErrorInformation, &protocol conformance descriptor for GeneratorError.ExternalErrorInformation);
      v34 = v112;
      sub_19A573E7C();
      (*(v86 + 8))(v31, v34);
      sub_19A47BD44(v30, type metadata accessor for GeneratorError.ExternalErrorInformation);
      (*(v113 + 8))(v33, v32);
      return result;
    case 0xCu:
      LOBYTE(v118) = 4;
      sub_19A4825A8();
      v39 = v87;
      v40 = v115;
      v41 = v117;
      sub_19A573DAC();
      (*(v90 + 8))(v39, v92);
      (*(v113 + 8))(v41, v40);
      return result;
    default:
      v24 = *v21;
      LOBYTE(v118) = 0;
      sub_19A4826F8();
      v25 = v115;
      v26 = v117;
      sub_19A573DAC();
      LOBYTE(v118) = v24;
      v121 = 0;
      sub_19A38B0D4();
      v27 = v116;
      sub_19A573E7C();
      if (!v27)
      {
        LOBYTE(v118) = 1;
        sub_19A573E2C();
      }

      v28 = *(v75 + 8);
      v29 = v18;
      goto LABEL_21;
  }
}

uint64_t GeneratorError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v206 = a2;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2248, &qword_19A589640);
  v180 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194);
  v205 = &v157 - v3;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2250, &qword_19A589648);
  v179 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v199 = &v157 - v4;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2258, &qword_19A589650);
  v178 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v204 = &v157 - v5;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2260, &qword_19A589658);
  v177 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v203 = &v157 - v6;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2268, &qword_19A589660);
  v175 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v201 = &v157 - v7;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2270, &qword_19A589668);
  v176 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v202 = &v157 - v8;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2278, &qword_19A589670);
  v174 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v200 = &v157 - v9;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2280, &qword_19A589678);
  v212 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v198 = &v157 - v10;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2288, &qword_19A589680);
  v186 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v197 = &v157 - v11;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2290, &qword_19A589688);
  v172 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v196 = &v157 - v12;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2298, &qword_19A589690);
  v173 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v211 = &v157 - v13;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA22A0, &qword_19A589698);
  v171 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v209 = &v157 - v14;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA22A8, &qword_19A5896A0);
  v170 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v195 = &v157 - v15;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA22B0, &qword_19A5896A8);
  v213 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v17 = &v157 - v16;
  v214 = type metadata accessor for GeneratorError(0);
  MEMORY[0x1EEE9AC00](v214);
  v181 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v169 = &v157 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v167 = &v157 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v166 = &v157 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v168 = (&v157 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v163 = (&v157 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v165 = (&v157 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v164 = (&v157 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v157 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v157 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v157 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v157 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v157 - v46;
  v48 = a1[3];
  v215 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_19A48220C();
  v208 = v17;
  v49 = v216;
  sub_19A57417C();
  if (v49)
  {
    goto LABEL_8;
  }

  v161 = v35;
  v158 = v44;
  v159 = v41;
  v160 = v38;
  v50 = v209;
  v52 = v211;
  v51 = v212;
  v216 = 0;
  v53 = v214;
  v162 = v47;
  v54 = v210;
  v55 = v208;
  v56 = sub_19A573D7C();
  v57 = (2 * *(v56 + 16)) | 1;
  v220 = v56;
  v221 = v56 + 32;
  v222 = 0;
  v223 = v57;
  v58 = sub_19A343324();
  if (v222 != v223 >> 1)
  {
LABEL_6:
    v63 = sub_19A5739FC();
    swift_allocError();
    v65 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700, &qword_19A579CF0);
    *v65 = v53;
    sub_19A573C7C();
    sub_19A5739DC();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8], v63);
    swift_willThrow();
    (*(v213 + 8))(v55, v54);
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    v66 = v215;
    return __swift_destroy_boxed_opaque_existential_0Tm(v66);
  }

  v53 = v207;
  switch(v58)
  {
    case 0:
      LOBYTE(v217) = 0;
      sub_19A4826F8();
      v59 = v195;
      v60 = v216;
      sub_19A573C5C();
      if (v60)
      {
        goto LABEL_33;
      }

      v224 = 0;
      sub_19A38B850();
      v61 = v182;
      sub_19A573D4C();
      v62 = v213;
      v132 = v217;
      v224 = 1;
      v133 = sub_19A573CFC();
      v134 = v59;
      v135 = v54;
      v137 = v136;
      (*(v170 + 8))(v134, v61);
      (*(v62 + 8))(v55, v135);
      swift_unknownObjectRelease();
      v138 = v158;
      *v158 = v132;
      *(v138 + 1) = v133;
      *(v138 + 2) = v137;
      goto LABEL_40;
    case 1:
      LOBYTE(v217) = 1;
      sub_19A4826A4();
      v96 = v50;
      v97 = v216;
      sub_19A573C5C();
      if (v97)
      {
        goto LABEL_33;
      }

      v98 = v54;
      v224 = 0;
      sub_19A38B850();
      v99 = v184;
      sub_19A573D4C();
      v139 = v217;
      v224 = 1;
      v154 = sub_19A573CFC();
      v156 = v155;
      (*(v171 + 8))(v96, v99);
      (*(v213 + 8))(v55, v98);
      swift_unknownObjectRelease();
      v138 = v159;
      *v159 = v139;
      *(v138 + 1) = v154;
      *(v138 + 2) = v156;
LABEL_40:
      swift_storeEnumTagMultiPayload();
      v153 = v138;
      goto LABEL_38;
    case 2:
      LOBYTE(v217) = 2;
      sub_19A482650();
      v81 = v216;
      sub_19A573C5C();
      if (v81)
      {
        goto LABEL_33;
      }

      v224 = 0;
      sub_19A38B850();
      v82 = v183;
      sub_19A573D4C();
      v83 = v213;
      v126 = v217;
      v224 = 1;
      v127 = sub_19A573CFC();
      v128 = v82;
      v146 = v127;
      v148 = v147;
      (*(v173 + 8))(v52, v128);
      (*(v83 + 8))(v55, v54);
      swift_unknownObjectRelease();
      v149 = v160;
      *v160 = v126;
      v149[1] = v146;
      v149[2] = v148;
      goto LABEL_37;
    case 3:
      LOBYTE(v217) = 3;
      sub_19A4825FC();
      v84 = v196;
      v85 = v216;
      sub_19A573C5C();
      if (v85)
      {
        goto LABEL_33;
      }

      v86 = v185;
      v87 = sub_19A573CFC();
      v88 = v213;
      v129 = v87;
      v131 = v130;
      (*(v172 + 8))(v84, v86);
      (*(v88 + 8))(v55, v54);
      swift_unknownObjectRelease();
      v149 = v161;
      *v161 = v129;
      v149[1] = v131;
      goto LABEL_37;
    case 4:
      LOBYTE(v217) = 4;
      sub_19A4825A8();
      v72 = v197;
      v73 = v216;
      sub_19A573C5C();
      if (v73)
      {
        goto LABEL_33;
      }

      (*(v186 + 8))(v72, v53);
      (*(v213 + 8))(v55, v54);
      swift_unknownObjectRelease();
      v74 = v162;
      swift_storeEnumTagMultiPayload();
      goto LABEL_39;
    case 5:
      v100 = v51;
      LOBYTE(v217) = 5;
      sub_19A482554();
      v101 = v198;
      v102 = v216;
      sub_19A573C5C();
      if (v102)
      {
        goto LABEL_33;
      }

      v103 = v187;
      v104 = sub_19A573CFC();
      v105 = v213;
      v140 = *(v100 + 8);
      v141 = v104;
      v143 = v142;
      v140(v101, v103);
      (*(v105 + 8))(v55, v54);
      swift_unknownObjectRelease();
      v149 = v164;
      *v164 = v141;
      v149[1] = v143;
      goto LABEL_37;
    case 6:
      LOBYTE(v217) = 6;
      sub_19A482500();
      v106 = v200;
      v107 = v216;
      sub_19A573C5C();
      if (v107)
      {
        goto LABEL_33;
      }

      v108 = v188;
      v109 = sub_19A573CFC();
      v110 = v213;
      v145 = v144;
      (*(v174 + 8))(v106, v108);
      (*(v110 + 8))(v55, v54);
      swift_unknownObjectRelease();
      v149 = v165;
      *v165 = v109;
      v149[1] = v145;
LABEL_37:
      swift_storeEnumTagMultiPayload();
      v153 = v149;
      goto LABEL_38;
    case 7:
      LOBYTE(v217) = 7;
      sub_19A4824AC();
      v89 = v202;
      v90 = v216;
      sub_19A573C5C();
      if (v90)
      {
        goto LABEL_33;
      }

      LOBYTE(v217) = 0;
      v91 = v190;
      v92 = sub_19A573CFC();
      v93 = v213;
      v95 = v94;
      v216 = v92;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8, &qword_19A57A790);
      v224 = 1;
      sub_19A48286C(&qword_1ED823F40, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
      sub_19A573D4C();
      (*(v176 + 8))(v89, v91);
      (*(v93 + 8))(v55, v54);
      swift_unknownObjectRelease();
      v151 = v217;
      v152 = v163;
      *v163 = v216;
      v152[1] = v95;
      v152[2] = v151;
      swift_storeEnumTagMultiPayload();
      v153 = v152;
      goto LABEL_38;
    case 8:
      LOBYTE(v217) = 8;
      sub_19A482404();
      v115 = v201;
      v116 = v216;
      sub_19A573C5C();
      if (v116)
      {
        goto LABEL_33;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA21F0, &qword_19A589638);
      sub_19A4827A0(&qword_1EAFA22C8, sub_19A482818, MEMORY[0x1E69E6330]);
      v121 = v189;
      sub_19A573D4C();
      v122 = v213;
      (*(v175 + 8))(v115, v121);
      (*(v122 + 8))(v55, v54);
      swift_unknownObjectRelease();
      v125 = v168;
      *v168 = v217;
      goto LABEL_36;
    case 9:
      LOBYTE(v217) = 9;
      sub_19A4823B0();
      v77 = v203;
      v78 = v216;
      sub_19A573C5C();
      if (v78)
      {
        goto LABEL_33;
      }

      sub_19A47B208();
      v79 = v191;
      sub_19A573D4C();
      v80 = v213;
      (*(v177 + 8))(v77, v79);
      (*(v80 + 8))(v55, v54);
      swift_unknownObjectRelease();
      v125 = v166;
      *v166 = v217;
      goto LABEL_36;
    case 10:
      LOBYTE(v217) = 10;
      sub_19A48235C();
      v111 = v204;
      v112 = v216;
      sub_19A573C5C();
      if (v112)
      {
        goto LABEL_33;
      }

      sub_19A47B208();
      v113 = v192;
      sub_19A573D4C();
      v114 = v213;
      (*(v178 + 8))(v111, v113);
      (*(v114 + 8))(v55, v54);
      swift_unknownObjectRelease();
      v125 = v167;
      *v167 = v217;
      goto LABEL_36;
    case 11:
      LOBYTE(v217) = 11;
      sub_19A4822B4();
      v68 = v199;
      v69 = v216;
      sub_19A573C5C();
      if (v69)
      {
LABEL_33:
        (*(v213 + 8))(v55, v54);
        goto LABEL_7;
      }

      sub_19A48274C();
      v70 = v193;
      sub_19A573D4C();
      v71 = v213;
      (*(v179 + 8))(v68, v70);
      (*(v71 + 8))(v55, v54);
      swift_unknownObjectRelease();
      v123 = v218;
      v124 = v219;
      v125 = v169;
      *v169 = v217;
      *(v125 + 1) = v123;
      *(v125 + 2) = v124;
LABEL_36:
      swift_storeEnumTagMultiPayload();
      v153 = v125;
      goto LABEL_38;
    case 12:
      LOBYTE(v217) = 12;
      sub_19A482260();
      v75 = v205;
      v76 = v216;
      sub_19A573C5C();
      if (v76)
      {
        (*(v213 + 8))(v55, v54);
        swift_unknownObjectRelease();
        v66 = v215;
        return __swift_destroy_boxed_opaque_existential_0Tm(v66);
      }

      type metadata accessor for GeneratorError.ExternalErrorInformation(0);
      sub_19A47BCFC(&qword_1EAFA22B8, type metadata accessor for GeneratorError.ExternalErrorInformation, &protocol conformance descriptor for GeneratorError.ExternalErrorInformation);
      v117 = v181;
      v118 = v75;
      v119 = v194;
      sub_19A573D4C();
      v120 = v213;
      (*(v180 + 8))(v118, v119);
      (*(v120 + 8))(v55, v54);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v153 = v117;
LABEL_38:
      v74 = v162;
      sub_19A47BC40(v153, v162, type metadata accessor for GeneratorError);
LABEL_39:
      v150 = v215;
      sub_19A47BC40(v74, v206, type metadata accessor for GeneratorError);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v150);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

unint64_t sub_19A48220C()
{
  result = qword_1EAFA21B0;
  if (!qword_1EAFA21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA21B0);
  }

  return result;
}

unint64_t sub_19A482260()
{
  result = qword_1EAFA21B8;
  if (!qword_1EAFA21B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA21B8);
  }

  return result;
}

unint64_t sub_19A4822B4()
{
  result = qword_1EAFA21C8;
  if (!qword_1EAFA21C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA21C8);
  }

  return result;
}

unint64_t sub_19A482308()
{
  result = qword_1EAFA21D0;
  if (!qword_1EAFA21D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA21D0);
  }

  return result;
}

unint64_t sub_19A48235C()
{
  result = qword_1EAFA21D8;
  if (!qword_1EAFA21D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA21D8);
  }

  return result;
}

unint64_t sub_19A4823B0()
{
  result = qword_1EAFA21E0;
  if (!qword_1EAFA21E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA21E0);
  }

  return result;
}

unint64_t sub_19A482404()
{
  result = qword_1EAFA21E8;
  if (!qword_1EAFA21E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA21E8);
  }

  return result;
}

unint64_t sub_19A482458()
{
  result = qword_1EAFA2200;
  if (!qword_1EAFA2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2200);
  }

  return result;
}

unint64_t sub_19A4824AC()
{
  result = qword_1EAFA2208;
  if (!qword_1EAFA2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2208);
  }

  return result;
}

unint64_t sub_19A482500()
{
  result = qword_1EAFA2210;
  if (!qword_1EAFA2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2210);
  }

  return result;
}

unint64_t sub_19A482554()
{
  result = qword_1EAFA2218;
  if (!qword_1EAFA2218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2218);
  }

  return result;
}

unint64_t sub_19A4825A8()
{
  result = qword_1EAFA2220;
  if (!qword_1EAFA2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2220);
  }

  return result;
}

unint64_t sub_19A4825FC()
{
  result = qword_1EAFA2228;
  if (!qword_1EAFA2228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2228);
  }

  return result;
}

unint64_t sub_19A482650()
{
  result = qword_1EAFA2230;
  if (!qword_1EAFA2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2230);
  }

  return result;
}

unint64_t sub_19A4826A4()
{
  result = qword_1EAFA2238;
  if (!qword_1EAFA2238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2238);
  }

  return result;
}

unint64_t sub_19A4826F8()
{
  result = qword_1EAFA2240;
  if (!qword_1EAFA2240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2240);
  }

  return result;
}

unint64_t sub_19A48274C()
{
  result = qword_1EAFA22C0;
  if (!qword_1EAFA22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA22C0);
  }

  return result;
}

uint64_t sub_19A4827A0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA21F0, &qword_19A589638);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A482818()
{
  result = qword_1EAFA22D0;
  if (!qword_1EAFA22D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA22D0);
  }

  return result;
}

uint64_t sub_19A48286C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF9FCD8, &qword_19A57A790);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A482920(void *a1)
{
  a1[1] = sub_19A47BCFC(&qword_1EAFA22D8, type metadata accessor for GeneratorError, &protocol conformance descriptor for GeneratorError);
  a1[2] = sub_19A47BCFC(&qword_1EAFA22E0, type metadata accessor for GeneratorError, &protocol conformance descriptor for GeneratorError);
  result = sub_19A47BCFC(&unk_1EAFA1A00, type metadata accessor for GeneratorError, &protocol conformance descriptor for GeneratorError);
  a1[3] = result;
  return result;
}

void sub_19A4829CC(uint64_t a1)
{
  sub_19A482AE0();
  if (v1 <= 0x3F)
  {
    sub_19A482B44();
    if (v2 <= 0x3F)
    {
      sub_19A482B74();
      if (v3 <= 0x3F)
      {
        sub_19A482BA4(319);
        if (v4 <= 0x3F)
        {
          sub_19A482E80(319, &qword_1EAF9F118, &type metadata for GeneratorError.VersionTriple, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_19A482C1C();
            if (v6 <= 0x3F)
            {
              sub_19A482C4C();
              if (v7 <= 0x3F)
              {
                sub_19A482C7C();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_19A482AE0()
{
  if (!qword_1EAF9F860)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EAF9F860);
    }
  }
}

uint64_t sub_19A482B44()
{
  result = qword_1EAF9F148;
  if (!qword_1EAF9F148)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EAF9F148);
  }

  return result;
}

uint64_t sub_19A482B74()
{
  result = qword_1EAF9F168;
  if (!qword_1EAF9F168)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EAF9F168);
  }

  return result;
}

void sub_19A482BA4(uint64_t a1)
{
  if (!qword_1EAF9F150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF9FCD8, &qword_19A57A790);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EAF9F150);
    }
  }
}

ValueMetadata *sub_19A482C1C()
{
  result = qword_1EAF9F4A0;
  if (!qword_1EAF9F4A0)
  {
    result = &type metadata for ExternalGeneratorType;
    atomic_store(&type metadata for ExternalGeneratorType, &qword_1EAF9F4A0);
  }

  return result;
}

ValueMetadata *sub_19A482C4C()
{
  result = qword_1EAF9F7A8;
  if (!qword_1EAF9F7A8)
  {
    result = &type metadata for GeneratorError.ExternalResponseInformation;
    atomic_store(&type metadata for GeneratorError.ExternalResponseInformation, &qword_1EAF9F7A8);
  }

  return result;
}

void sub_19A482C7C()
{
  if (!qword_1EAF9F7C0)
  {
    v0 = type metadata accessor for GeneratorError.ExternalErrorInformation(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F7C0);
    }
  }
}

uint64_t sub_19A482CD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19A482D1C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_19A482D94(uint64_t a1)
{
  sub_19A482FC8(319, &qword_1EAF9F7E8, type metadata accessor for GeneratorError.ExternalErrorInformation.ResponseType);
  if (v1 <= 0x3F)
  {
    sub_19A482E80(319, &qword_1ED8255C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_19A482ED0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_19A482E80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_19A482ED0()
{
  if (!qword_1EAF9F180)
  {
    v0 = sub_19A572B1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F180);
    }
  }
}

uint64_t sub_19A482F2C(uint64_t a1)
{
  result = type metadata accessor for GeneratorError.ExternalErrorInformation.RateLimitInfo(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GeneratorError.ExternalErrorInformation.NetworkingInfo(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_19A482FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19A57378C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_35Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1510, &qword_19A589580);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_36Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1510, &qword_19A589580);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_19A483138(uint64_t a1)
{
  sub_19A482FC8(319, &qword_1EAF9F8E0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for GeneratorError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GeneratorError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_19A483464()
{
  result = qword_1EAFA22E8;
  if (!qword_1EAFA22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA22E8);
  }

  return result;
}

unint64_t sub_19A4834BC()
{
  result = qword_1EAFA22F0;
  if (!qword_1EAFA22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA22F0);
  }

  return result;
}

unint64_t sub_19A483514()
{
  result = qword_1EAFA22F8;
  if (!qword_1EAFA22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA22F8);
  }

  return result;
}

unint64_t sub_19A48356C()
{
  result = qword_1EAFA2300;
  if (!qword_1EAFA2300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2300);
  }

  return result;
}

unint64_t sub_19A4835C4()
{
  result = qword_1EAFA2308;
  if (!qword_1EAFA2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2308);
  }

  return result;
}

unint64_t sub_19A48361C()
{
  result = qword_1EAFA2310;
  if (!qword_1EAFA2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2310);
  }

  return result;
}

unint64_t sub_19A483674()
{
  result = qword_1EAFA2318;
  if (!qword_1EAFA2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2318);
  }

  return result;
}

unint64_t sub_19A4836CC()
{
  result = qword_1EAFA2320;
  if (!qword_1EAFA2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2320);
  }

  return result;
}

unint64_t sub_19A483724()
{
  result = qword_1EAFA2328;
  if (!qword_1EAFA2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2328);
  }

  return result;
}

unint64_t sub_19A48377C()
{
  result = qword_1EAFA2330;
  if (!qword_1EAFA2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2330);
  }

  return result;
}

unint64_t sub_19A4837D4()
{
  result = qword_1EAFA2338;
  if (!qword_1EAFA2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2338);
  }

  return result;
}

unint64_t sub_19A48382C()
{
  result = qword_1EAFA2340;
  if (!qword_1EAFA2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2340);
  }

  return result;
}

unint64_t sub_19A483884()
{
  result = qword_1EAFA2348;
  if (!qword_1EAFA2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2348);
  }

  return result;
}

unint64_t sub_19A4838DC()
{
  result = qword_1EAFA2350;
  if (!qword_1EAFA2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2350);
  }

  return result;
}

unint64_t sub_19A483934()
{
  result = qword_1EAFA2358;
  if (!qword_1EAFA2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2358);
  }

  return result;
}

unint64_t sub_19A48398C()
{
  result = qword_1EAFA2360;
  if (!qword_1EAFA2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2360);
  }

  return result;
}

unint64_t sub_19A4839E4()
{
  result = qword_1EAFA2368;
  if (!qword_1EAFA2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2368);
  }

  return result;
}

unint64_t sub_19A483A3C()
{
  result = qword_1EAFA2370;
  if (!qword_1EAFA2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2370);
  }

  return result;
}

unint64_t sub_19A483A94()
{
  result = qword_1EAFA2378;
  if (!qword_1EAFA2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2378);
  }

  return result;
}

unint64_t sub_19A483AEC()
{
  result = qword_1EAFA2380;
  if (!qword_1EAFA2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2380);
  }

  return result;
}

unint64_t sub_19A483B44()
{
  result = qword_1EAFA2388;
  if (!qword_1EAFA2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2388);
  }

  return result;
}

unint64_t sub_19A483B9C()
{
  result = qword_1EAFA2390;
  if (!qword_1EAFA2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2390);
  }

  return result;
}

unint64_t sub_19A483BF4()
{
  result = qword_1EAFA2398;
  if (!qword_1EAFA2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2398);
  }

  return result;
}

unint64_t sub_19A483C4C()
{
  result = qword_1EAFA23A0;
  if (!qword_1EAFA23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23A0);
  }

  return result;
}

unint64_t sub_19A483CA4()
{
  result = qword_1EAFA23A8;
  if (!qword_1EAFA23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23A8);
  }

  return result;
}

unint64_t sub_19A483CFC()
{
  result = qword_1EAFA23B0;
  if (!qword_1EAFA23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23B0);
  }

  return result;
}

unint64_t sub_19A483D54()
{
  result = qword_1EAFA23B8;
  if (!qword_1EAFA23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23B8);
  }

  return result;
}

unint64_t sub_19A483DAC()
{
  result = qword_1EAFA23C0;
  if (!qword_1EAFA23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23C0);
  }

  return result;
}

unint64_t sub_19A483E04()
{
  result = qword_1EAFA23C8;
  if (!qword_1EAFA23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23C8);
  }

  return result;
}

unint64_t sub_19A483E5C()
{
  result = qword_1EAFA23D0;
  if (!qword_1EAFA23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23D0);
  }

  return result;
}

unint64_t sub_19A483EB4()
{
  result = qword_1EAFA23D8;
  if (!qword_1EAFA23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23D8);
  }

  return result;
}

unint64_t sub_19A483F0C()
{
  result = qword_1EAFA23E0;
  if (!qword_1EAFA23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23E0);
  }

  return result;
}

unint64_t sub_19A483F64()
{
  result = qword_1EAFA23E8;
  if (!qword_1EAFA23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23E8);
  }

  return result;
}

unint64_t sub_19A483FBC()
{
  result = qword_1EAFA23F0;
  if (!qword_1EAFA23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23F0);
  }

  return result;
}

unint64_t sub_19A484014()
{
  result = qword_1EAFA23F8;
  if (!qword_1EAFA23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA23F8);
  }

  return result;
}

unint64_t sub_19A48406C()
{
  result = qword_1EAFA2400;
  if (!qword_1EAFA2400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2400);
  }

  return result;
}

unint64_t sub_19A4840C4()
{
  result = qword_1EAFA2408;
  if (!qword_1EAFA2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2408);
  }

  return result;
}

unint64_t sub_19A48411C()
{
  result = qword_1EAFA2410;
  if (!qword_1EAFA2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2410);
  }

  return result;
}

unint64_t sub_19A484174()
{
  result = qword_1EAFA2418;
  if (!qword_1EAFA2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2418);
  }

  return result;
}

unint64_t sub_19A4841CC()
{
  result = qword_1EAFA2420;
  if (!qword_1EAFA2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2420);
  }

  return result;
}

unint64_t sub_19A484224()
{
  result = qword_1EAFA2428;
  if (!qword_1EAFA2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2428);
  }

  return result;
}

unint64_t sub_19A48427C()
{
  result = qword_1EAFA2430;
  if (!qword_1EAFA2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2430);
  }

  return result;
}

unint64_t sub_19A4842D4()
{
  result = qword_1EAFA2438;
  if (!qword_1EAFA2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2438);
  }

  return result;
}

unint64_t sub_19A48432C()
{
  result = qword_1EAFA2440;
  if (!qword_1EAFA2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2440);
  }

  return result;
}

unint64_t sub_19A484384()
{
  result = qword_1EAFA2448;
  if (!qword_1EAFA2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2448);
  }

  return result;
}

unint64_t sub_19A4843DC()
{
  result = qword_1EAFA2450;
  if (!qword_1EAFA2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2450);
  }

  return result;
}

unint64_t sub_19A484434()
{
  result = qword_1EAFA2458;
  if (!qword_1EAFA2458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2458);
  }

  return result;
}

unint64_t sub_19A48448C()
{
  result = qword_1EAFA2460;
  if (!qword_1EAFA2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2460);
  }

  return result;
}

unint64_t sub_19A4844E4()
{
  result = qword_1EAFA2468;
  if (!qword_1EAFA2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2468);
  }

  return result;
}

unint64_t sub_19A48453C()
{
  result = qword_1EAFA2470;
  if (!qword_1EAFA2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2470);
  }

  return result;
}

unint64_t sub_19A484594()
{
  result = qword_1EAFA2478;
  if (!qword_1EAFA2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2478);
  }

  return result;
}

unint64_t sub_19A4845EC()
{
  result = qword_1EAFA2480;
  if (!qword_1EAFA2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2480);
  }

  return result;
}

unint64_t sub_19A484644()
{
  result = qword_1EAFA2488;
  if (!qword_1EAFA2488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2488);
  }

  return result;
}

unint64_t sub_19A48469C()
{
  result = qword_1EAFA2490;
  if (!qword_1EAFA2490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2490);
  }

  return result;
}

unint64_t sub_19A4846F4()
{
  result = qword_1EAFA2498;
  if (!qword_1EAFA2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA2498);
  }

  return result;
}

unint64_t sub_19A48474C()
{
  result = qword_1EAFA24A0;
  if (!qword_1EAFA24A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA24A0);
  }

  return result;
}

unint64_t sub_19A4847A4()
{
  result = qword_1EAFA24A8;
  if (!qword_1EAFA24A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA24A8);
  }

  return result;
}

unint64_t sub_19A4847FC()
{
  result = qword_1EAFA24B0;
  if (!qword_1EAFA24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA24B0);
  }

  return result;
}

unint64_t sub_19A484854()
{
  result = qword_1EAFA24B8;
  if (!qword_1EAFA24B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA24B8);
  }

  return result;
}

unint64_t sub_19A4848AC()
{
  result = qword_1EAFA24C0;
  if (!qword_1EAFA24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA24C0);
  }

  return result;
}

unint64_t sub_19A484904()
{
  result = qword_1EAFA24C8;
  if (!qword_1EAFA24C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA24C8);
  }

  return result;
}

unint64_t sub_19A48495C()
{
  result = qword_1EAFA24D0;
  if (!qword_1EAFA24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA24D0);
  }

  return result;
}

unint64_t sub_19A4849B4()
{
  result = qword_1EAFA24D8;
  if (!qword_1EAFA24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA24D8);
  }

  return result;
}

unint64_t sub_19A484A0C()
{
  result = qword_1EAFA24E0;
  if (!qword_1EAFA24E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA24E0);
  }

  return result;
}

unint64_t sub_19A484A64()
{
  result = qword_1EAFA24E8;
  if (!qword_1EAFA24E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA24E8);
  }

  return result;
}

uint64_t sub_19A484AB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000019A59AF50 == a2;
  if (v3 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019A59AF70 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000019A59AF90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_19A484BDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F746172656E6567 && a2 == 0xE900000000000072;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065707954 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019A59AFB0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xEF73676E69727453)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_19A484D5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x800000019A59AFD0 == a2;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x800000019A59AFF0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000019A59B020 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000019A59B040 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000019A59B060 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000019A59B080 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019A597150 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000019A59B0A0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000019A59B0C0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000026 && 0x800000019A59B0E0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000019A59B110 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x800000019A59B130 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000019A59B150 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_19A48517C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[12] = a1;
  v4[15] = type metadata accessor for ImageGenerator.Result(0);
  v4[16] = swift_task_alloc();
  v5 = sub_19A57102C();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A485270, 0, 0);
}

uint64_t sub_19A485270()
{
  sub_19A432070();
  v1 = v0[13];
  type metadata accessor for UnsupportedArchitectureImageGenerator();
  v2 = swift_allocObject();
  v0[20] = v2;
  *(v2 + 16) = xmmword_19A57FCB0;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v3)
  {
    v5 = &off_1F0DAE380;
    v6 = &type metadata for ImageGeneratorDelegateOperationProgressHandler;
    v7 = v3;
    v8 = v4;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    v5 = 0;
    v0[4] = 0;
  }

  v9 = v0[18];
  v10 = v0[19];
  v11 = v0[17];
  v12 = v0[14];
  v13 = v0[12];
  v0[2] = v7;
  v0[3] = v8;
  v0[5] = v6;
  v0[6] = v5;
  (*(v9 + 16))(v10, v12 + OBJC_IVAR____TtC16VisualGeneration50InProcessUnsupportedArchitectureGeneratorOperation__id, v11);
  v0[10] = type metadata accessor for InProcessUnsupportedArchitectureGeneratorOperation(0);
  v0[11] = &off_1F0DB3530;
  v0[7] = v12;
  sub_19A2E0A50(v3, v4);

  v14 = swift_task_alloc();
  v0[21] = v14;
  v14[2] = v10;
  v14[3] = v10;
  v14[4] = v0 + 7;
  v14[5] = v0 + 2;
  v14[6] = v2;
  v14[7] = v13;
  v15 = swift_task_alloc();
  v0[22] = v15;
  *v15 = v0;
  v15[1] = sub_19A4854AC;
  v17 = v0[15];
  v16 = v0[16];

  return MEMORY[0x1EEE6DD58](v16, v17, v17, 0, 0, &unk_19A57EAF0, v14, v17);
}

uint64_t sub_19A4854AC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_19A48568C;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
    v3 = sub_19A4855D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A4855D0()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];

  (*(v3 + 8))(v1, v2);
  v5 = *v4;

  sub_19A433FE8(v4);
  sub_19A348174((v0 + 2));

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_19A48568C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  sub_19A348174((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A485744()
{
  v1 = OBJC_IVAR____TtC16VisualGeneration50InProcessUnsupportedArchitectureGeneratorOperation__id;
  v2 = sub_19A57102C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InProcessUnsupportedArchitectureGeneratorOperation(uint64_t a1)
{
  result = qword_1EAF9F238;
  if (!qword_1EAF9F238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A485834@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InProcessUnsupportedArchitectureGeneratorOperation(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC16VisualGeneration50InProcessUnsupportedArchitectureGeneratorOperation__id;
  v6 = sub_19A57102C();
  result = (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  *a2 = v4;
  return result;
}

uint64_t sub_19A4858C0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_19A4858E8, 0, 0);
}

uint64_t sub_19A4858E8()
{
  sub_19A432070();
  sub_19A39AA50(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_19A485974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_19A34B5BC;

  return sub_19A48517C(a1, v7, a3);
}

uint64_t sub_19A485A1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_19A2F4500(a1, WitnessTable);
}

uint64_t sub_19A485A70@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16VisualGeneration50InProcessUnsupportedArchitectureGeneratorOperation__id;
  v5 = sub_19A57102C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A485B34(uint64_t a1)
{
  *(a1 + 8) = sub_19A485C10(&qword_1EAF9F258, type metadata accessor for InProcessUnsupportedArchitectureGeneratorOperation, &unk_19A58B478);
  result = sub_19A485C10(&qword_1EAF9F260, type metadata accessor for InProcessUnsupportedArchitectureGeneratorOperation, &unk_19A58B440);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19A485BB8(uint64_t a1)
{
  result = sub_19A485C10(&qword_1EAF9F250, type metadata accessor for InProcessUnsupportedArchitectureGeneratorOperation, &unk_19A58B4D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19A485C10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t GenerationState.save(to:)(uint64_t a1)
{
  v2 = sub_19A57081C();
  MEMORY[0x1EEE9AC00](v2);
  sub_19A57087C();
  swift_allocObject();
  sub_19A57086C();
  sub_19A489610(&qword_1EAFA1268, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1270, &unk_19A58B540);
  sub_19A40C42C();
  sub_19A57388C();
  sub_19A57082C();
  type metadata accessor for GenerationState(0);
  sub_19A489610(&qword_1EAFA24F0, type metadata accessor for GenerationState, &protocol conformance descriptor for GenerationState);
  v3 = sub_19A57083C();
  if (!v1)
  {
    v6 = v3;
    v7 = v4;
    sub_19A570F3C();
    sub_19A33EFC4(v6, v7);
  }
}

uint64_t static GenerationState.load(from:)(uint64_t a1)
{
  result = sub_19A570ECC();
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    sub_19A5707EC();
    swift_allocObject();
    sub_19A5707DC();
    type metadata accessor for GenerationState(0);
    sub_19A489610(&qword_1EAFA24F8, type metadata accessor for GenerationState, &protocol conformance descriptor for GenerationState);
    sub_19A5707BC();

    return sub_19A33EFC4(v4, v5);
  }

  return result;
}

uint64_t GenerationState.WebUIConfigurationError.hashValue.getter()
{
  v1 = *v0;
  sub_19A5740BC();
  MEMORY[0x19A901C40](v1);
  return sub_19A57410C();
}

void GenerationState.equivalentWebUIConfiguration(generationModelSpec:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v315 = a1;
  v344 = a2;
  v339 = sub_19A570A9C();
  MEMORY[0x1EEE9AC00](v339);
  v5 = &v294 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AugmentedPrompt(0);
  v352 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v294 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19A570B9C();
  v332 = *(v9 - 8);
  v333 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v319 = &v294 - v13;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020, &unk_19A579C70);
  MEMORY[0x1EEE9AC00](v321);
  v322 = &v294 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80, &unk_19A57B720);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v348 = (&v294 - v16);
  v351 = sub_19A570B4C();
  v324 = *(v351 - 8);
  MEMORY[0x1EEE9AC00](v351);
  *&v350 = &v294 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0768, &unk_19A57BFD0);
  MEMORY[0x1EEE9AC00](v329);
  v318 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v349 = &v294 - v20;
  v354 = sub_19A570B5C();
  v334 = *(v354 - 8);
  MEMORY[0x1EEE9AC00](v354);
  v323 = &v294 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v328 = &v294 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v331 = &v294 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2500, &qword_19A58B550);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v316 = &v294 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v325 = &v294 - v29;
  v353 = sub_19A570B2C();
  v337 = *(v353 - 8);
  MEMORY[0x1EEE9AC00](v353);
  v341 = &v294 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v340 = &v294 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v314 = &v294 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v347 = &v294 - v36;
  MEMORY[0x1EEE9AC00](v37);
  *&v346 = &v294 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v317 = &v294 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0778, &unk_19A57BFE0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v326 = &v294 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v320 = &v294 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v335 = &v294 - v46;
  v336 = sub_19A570BEC();
  v338 = *(v336 - 8);
  MEMORY[0x1EEE9AC00](v336);
  v327 = &v294 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v330 = &v294 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v342 = &v294 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0288, &qword_19A579960);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v356 = &v294 - v53;
  v54 = type metadata accessor for NamedEntityData.NamedEntityType(0);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v365 = &v294 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v343 = *(v361 - 8);
  MEMORY[0x1EEE9AC00](v361);
  v345 = &v294 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = type metadata accessor for Concept(0);
  v364 = *(v362 - 1);
  MEMORY[0x1EEE9AC00](v362);
  v363 = (&v294 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v360 = type metadata accessor for NamedEntityData(0);
  MEMORY[0x1EEE9AC00](v360);
  v366 = &v294 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = sub_19A571EDC();
  v59 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359);
  v358 = &v294 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(type metadata accessor for GenerationState(0) + 28);
  v357 = v2;
  v62 = v2 + v61;
  v63 = type metadata accessor for GenerationRecipe(0);
  v64 = *&v62[*(v63 + 24)];
  if (!*(v64 + 16))
  {
    goto LABEL_4;
  }

  v65 = v63;
  v312 = v5;
  LOBYTE(v372[0]) = *(v64 + 32);
  v66 = sub_19A39BD48();
  v67 = sub_19A4AD7C8(v372, v66 & 1, *&v62[v65[21] + 24] != 0);
  v313 = v65;
  if (v3)
  {

LABEL_4:
    sub_19A4893D4();
    swift_allocError();
    *v68 = 0;
LABEL_27:
    swift_willThrow();
    return;
  }

  v310 = v62;
  v311 = v8;
  v306 = v11;
  v308 = v6;
  v69 = v67;
  v70 = type metadata accessor for AppleDiffusionResourceFactory(0);
  v71 = static AppleDiffusionResourceFactory.shared(reset:)(0);
  v303 = 0;
  v72 = *(v71 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_adapterMetadata);
  v73 = v71;

  if (!*(v72 + 16) || (v74 = sub_19A31FBD4(v69), (v75 & 1) == 0))
  {

    sub_19A4893D4();
    swift_allocError();
    *v113 = 1;
    goto LABEL_27;
  }

  v76 = *(v72 + 56) + 360 * v74;
  v77 = *(v76 + 248);
  v79 = *(v76 + 264);
  v78 = *(v76 + 272);
  v297 = *(v76 + 256);
  v298 = v79;
  v300 = v78;
  v296 = *(v76 + 280);
  v302 = *(v76 + 290);
  v307 = v77;

  isUniquelyReferenced_nonNull_native = sub_19A39B584();
  v81 = isUniquelyReferenced_nonNull_native;
  v82 = *(isUniquelyReferenced_nonNull_native + 16);
  v299 = v70;
  if (!v82)
  {
    v301 = MEMORY[0x1E69E7CC0];
    v88 = v366;
    v89 = v365;
    goto LABEL_29;
  }

  v83 = 0;
  v304 = (v59 + 8);
  v84 = isUniquelyReferenced_nonNull_native + 64;
  v301 = MEMORY[0x1E69E7CC0];
  v305 = isUniquelyReferenced_nonNull_native;
  v294 = isUniquelyReferenced_nonNull_native + 64;
  v295 = v82;
  do
  {
    v85 = v82 - v83;
    v86 = (v84 + 40 * v83);
    while (1)
    {
      if (v83 >= *(v81 + 16))
      {
        __break(1u);
LABEL_248:
        __break(1u);
        goto LABEL_249;
      }

      v355 = v85;
      v90 = *(v86 - 1);
      v91 = *v86;
      v92 = objc_allocWithZone(MEMORY[0x1E695F658]);
      v93 = v90;
      v94 = v91;
      v95 = v93;

      v96 = [v92 initWithCVPixelBuffer_];
      v97 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      [v96 extent];
      v69 = [v97 createCGImage:v96 fromRect:?];

      v88 = v366;
      if (!v69)
      {
        goto LABEL_13;
      }

      Mutable = CFDataCreateMutable(0, 0);
      if (Mutable)
      {
        break;
      }

LABEL_12:

LABEL_13:

      v86 += 5;
      ++v83;
      v85 = v355 - 1;
      v89 = v365;
      if (v355 == 1)
      {
        goto LABEL_29;
      }
    }

    v99 = Mutable;
    v309 = v94;
    v100 = v358;
    sub_19A571ECC();
    sub_19A571EBC();
    (*v304)(v100, v359);
    v101 = sub_19A572CCC();

    v87 = CGImageDestinationCreateWithData(v99, v101, 1uLL, 0);

    if (!v87)
    {
      v87 = v99;
      v81 = v305;
LABEL_11:

      v88 = v366;
      goto LABEL_12;
    }

    CGImageDestinationAddImage(v87, v69, 0);
    v102 = CGImageDestinationFinalize(v87);
    v81 = v305;
    if (!v102)
    {

      goto LABEL_11;
    }

    v103 = v99;
    v104 = sub_19A570F2C();
    v106 = v105;

    v107 = sub_19A570F1C();
    v69 = v108;

    sub_19A33EFC4(v104, v106);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_19A31CE20(0, *(v301 + 2) + 1, 1, v301);
      v301 = isUniquelyReferenced_nonNull_native;
    }

    v81 = v305;
    v84 = v294;
    v82 = v295;
    v110 = *(v301 + 2);
    v109 = *(v301 + 3);
    if (v110 >= v109 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_19A31CE20((v109 > 1), v110 + 1, 1, v301);
      v301 = isUniquelyReferenced_nonNull_native;
    }

    ++v83;
    v111 = v301;
    *(v301 + 2) = v110 + 1;
    v112 = &v111[16 * v110];
    *(v112 + 4) = v107;
    *(v112 + 5) = v69;
    v88 = v366;
    v89 = v365;
  }

  while (v355 != 1);
LABEL_29:

  v114 = &v310[v313[23]];
  v115 = *(v114 + 3);
  if (v115)
  {
    v372[0] = *(v114 + 3);
    LOBYTE(v372[1]) = 2;
    v116 = v115;

    v117 = sub_19A4CEB54();
    if (v118 >> 60 == 15)
    {

      v309 = 0;
      v358 = 0;
    }

    else
    {
      v120 = v117;
      v121 = v118;
      v309 = sub_19A570F1C();
      v358 = v122;

      isUniquelyReferenced_nonNull_native = sub_19A33EFB0(v120, v121);
    }

    if (*(v114 + 3))
    {
      v372[0] = *(v114 + 8);
      LOBYTE(v372[1]) = 2;
      v123 = v372[0];

      v124 = sub_19A4CEB54();
      if (v125 >> 60 == 15)
      {

        v305 = 0;
        v355 = 0;
      }

      else
      {
        v126 = v124;
        v127 = v125;
        v305 = sub_19A570F1C();
        v355 = v128;

        isUniquelyReferenced_nonNull_native = sub_19A33EFB0(v126, v127);
      }

      v119 = v311;
      v88 = v366;
      v83 = v345;
    }

    else
    {
      v305 = 0;
      v355 = 0;
      v119 = v311;
      v83 = v345;
      v88 = v366;
    }

    v89 = v365;
  }

  else
  {
    v358 = 0;
    v309 = 0;
    v305 = 0;
    v355 = 0;
    v119 = v311;
    v83 = v345;
  }

  v129 = *&v310[v313[24]];
  v359 = *(v129 + 16);
  if (!v359)
  {
    goto LABEL_56;
  }

  v69 = 0;
  v130 = v129 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
  v131 = (v343 + 48);
  v132 = v363;
  while (2)
  {
    if (v69 >= *(v129 + 16))
    {
      goto LABEL_248;
    }

    sub_19A489658(v130 + *(v364 + 72) * v69, v132, type metadata accessor for Concept);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v133 = type metadata accessor for Concept;
      v134 = v132;
      goto LABEL_44;
    }

    sub_19A4896C0(v132, v88, type metadata accessor for NamedEntityData);
    sub_19A489658(v88 + *(v360 + 20), v89, type metadata accessor for NamedEntityData.NamedEntityType);
    if ((*v131)(v89, 1, v361) == 1)
    {
      sub_19A489728(v88, type metadata accessor for NamedEntityData);
      v133 = type metadata accessor for NamedEntityData.NamedEntityType;
      v134 = v89;
LABEL_44:
      isUniquelyReferenced_nonNull_native = sub_19A489728(v134, v133);
LABEL_45:
      ++v69;
      v132 = v363;
      if (v359 == v69)
      {
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  sub_19A4896C0(v89, v83, type metadata accessor for NamedEntityData.PhotosPersonData);
  sub_19A488D88(v372);
  v135 = v83;
  v83 = LOBYTE(v372[1]);
  if (LOBYTE(v372[1]) == 255)
  {
    sub_19A489728(v135, type metadata accessor for NamedEntityData.PhotosPersonData);
    v136 = v366;
    isUniquelyReferenced_nonNull_native = sub_19A489728(v366, type metadata accessor for NamedEntityData);
    v83 = v135;
    v88 = v136;
    v89 = v365;
    goto LABEL_45;
  }

  v137 = v372[0];
  v138 = sub_19A4CEB54();
  if (v139 >> 60 != 15)
  {
    v140 = v138;
    v141 = v139;

    v142 = sub_19A570F1C();
    v144 = v143;
    sub_19A33EFB0(v140, v141);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0, &qword_19A57A800);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_19A576E10;
    *(v145 + 32) = v142;
    *(v145 + 40) = v144;
    v301 = v145;
  }

  sub_19A335458(v137, v83);
  sub_19A489728(v345, type metadata accessor for NamedEntityData.PhotosPersonData);
  sub_19A489728(v366, type metadata accessor for NamedEntityData);
LABEL_55:
  v119 = v311;
LABEL_56:
  v146 = *&v310[v313[14]];
  if (v146)
  {

    goto LABEL_58;
  }

  v151 = *&v310[v313[25]];
  if (!*(v151 + 16))
  {
    v359 = 0;
    v361 = 0;
    v360 = 0;
LABEL_71:
    v150 = v303;
    goto LABEL_72;
  }

  v83 = *(v151 + 64);
  v119 = *(v151 + 56);

  v152 = sub_19A39D424();
  if (!v152)
  {

LABEL_70:
    v359 = 0;
    v361 = 0;
    v360 = 0;
    v119 = v311;
    goto LABEL_71;
  }

  if (!*(v152 + 16))
  {

    goto LABEL_70;
  }

  v153 = *(v152 + 64);

  v154 = v303;
  static AppleDiffusionResourceFactory.shared(reset:)(0);
  if (v154)
  {

    goto LABEL_246;
  }

  v146 = 0;
  v257 = sub_19A31A2EC(v315);
  v258 = AppleDiffusionResourceFactory.areModelResourcesCurrent(_:)(v257);

  v259 = v258;
  v260 = *(v258 + 16);
  if (!v260)
  {

    goto LABEL_243;
  }

  LOBYTE(v166) = 1;
  v261 = 32;
  while (2)
  {
    if ((v166 & 1) == 0)
    {
      if (v260 == 1)
      {

LABEL_245:

LABEL_246:

        sub_19A4893D4();
        swift_allocError();
        *v293 = 2;
        swift_willThrow();

        return;
      }

      v166 = 0;
      goto LABEL_211;
    }

    v166 = *(v259 + v261);
    if (v260 != 1)
    {
LABEL_211:
      ++v261;
      if (!--v260)
      {
        goto LABEL_252;
      }

      continue;
    }

    break;
  }

  if ((v166 & 1) == 0)
  {
    goto LABEL_245;
  }

LABEL_243:
  sub_19A571B9C();
  v69 = v119;
  v73 = 0;
  isUniquelyReferenced_nonNull_native = sub_19A571B8C();
LABEL_249:
  v303 = v73;
  v146 = isUniquelyReferenced_nonNull_native;

  v119 = v311;
LABEL_58:
  sub_19A57087C();
  swift_allocObject();

  sub_19A57086C();
  v372[0] = v146;
  sub_19A571B9C();
  sub_19A489610(&qword_1EAFA0FC0, MEMORY[0x1E69E0578], MEMORY[0x1E69E0580]);
  v147 = v303;
  v148 = sub_19A57083C();
  v360 = v146;
  if (v147)
  {

    v359 = 0;
    v361 = 0;
  }

  else
  {
    v155 = v148;
    v156 = v149;
    v83 = 0;

    v359 = sub_19A570F1C();
    v361 = v157;

    sub_19A33EFC4(v155, v156);
  }

  v150 = 0;
LABEL_72:
  v158 = static AppleDiffusionResourceFactory.shared(reset:)(0);
  v153 = v150;
  if (v150)
  {

    sub_19A489428(v371);
    memcpy(v372, v371, 0x168uLL);
    v153 = 0;
  }

  else
  {
    v159 = *(v158 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_baseModelComponentMetadata);

    if (*(v159 + 16) && (v160 = sub_19A31FCAC(0), (v161 & 1) != 0))
    {
      memcpy(v367, (*(v159 + 56) + 360 * v160), sizeof(v367));
      sub_19A4895B4(v367, v372);

      memcpy(v371, v367, sizeof(v371));
      nullsub_2();
    }

    else
    {

      sub_19A489428(v371);
    }

    memcpy(v372, v371, 0x168uLL);
  }

  v162 = v307;
  if (!v307)
  {
    v362 = 0;
LABEL_141:
    v179 = (v302 & 1) == 0 && (v296 & 1) == 0 && (v300 & 0x7FFFFFFF00000000) != 0;
    memcpy(v371, v372, sizeof(v371));
    if (sub_19A489468(v371) == 1 || (v166 = v371[31], , sub_19A2F3FA0(v372, &qword_1EAFA2510, &unk_19A58F1F0), !v166))
    {
      v188 = v356;
      goto LABEL_182;
    }

    v357 = v153;
    v365 = *(v166 + 2);
    if (!v365)
    {
LABEL_180:

      v119 = v311;
      v188 = v356;
      v153 = v357;
      goto LABEL_182;
    }

    v180 = 0;
    v181 = 7168876;
    v345 = 0x800000019A596540;
    if (v179)
    {
      v181 = 0x737265705F6D636CLL;
    }

    v366 = v181;
    if (v179)
    {
      v153 = 0xE800000000000000;
    }

    else
    {
      v153 = 0xE300000000000000;
    }

    v182 = (v166 + 60);
    while (1)
    {
      if (v180 >= *(v166 + 2))
      {
        goto LABEL_251;
      }

      v119 = *(v182 - 20);
      v83 = *(v182 - 12);
      v183 = *v182;
      v184 = *(v182 - 28);
      LODWORD(v364) = *(v182 - 1);
      LODWORD(v363) = v183;
      if (v184 <= 4)
      {
        if (v184 <= 1)
        {
          if (v184)
          {
            v146 = 0xE90000000000006ELL;
          }

          else
          {
            v146 = 0xE400000000000000;
          }
        }

        else if (v184 == 2)
        {
          v146 = 0xE800000000000000;
        }

        else
        {
          if (v184 != 3)
          {
            v146 = 0xE300000000000000;
            v186 = 7168876;
            goto LABEL_175;
          }

          v146 = 0xE500000000000000;
        }
      }

      else if (v184 > 7)
      {
        if (v184 == 8)
        {
          v146 = 0xE800000000000000;
          v186 = 0x737265705F6D636CLL;
LABEL_175:
          if (v186 == v366 && v146 == v153)
          {

LABEL_193:

            v146 = v311;
            v153 = v357;
            if (!v83)
            {
              goto LABEL_216;
            }

            v166 = v362;
            if (!v362)
            {

              v362 = 0;
              goto LABEL_216;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_253;
            }

            goto LABEL_196;
          }

          goto LABEL_177;
        }

        if (v184 != 9)
        {
          goto LABEL_179;
        }

        v146 = v345;
      }

      else
      {
        v185 = 0xEE00656C62626972;
        if (v184 == 6)
        {
          v185 = 0xE600000000000000;
        }

        if (v184 == 5)
        {
          v146 = 0xEC0000006E6F6974;
        }

        else
        {
          v146 = v185;
        }
      }

LABEL_177:
      v187 = sub_19A573F1C();

      if (v187)
      {
        goto LABEL_193;
      }

LABEL_179:
      ++v180;
      v182 += 32;
      if (v365 == v180)
      {
        goto LABEL_180;
      }
    }
  }

  v163 = *(v307 + 2);
  if (!v163)
  {
    v362 = MEMORY[0x1E69E7CC0];
    goto LABEL_140;
  }

  v164 = 0;
  v364 = 0x800000019A596540;
  v165 = (v307 + 60);
  v345 = v163 - 1;
  v362 = MEMORY[0x1E69E7CC0];
  v363 = (v307 + 60);
  v366 = v163;
  while (2)
  {
    v357 = v153;
    v166 = &v165[4 * v164];
    v167 = v164;
LABEL_95:
    if (v167 < *(v162 + 2))
    {
      v83 = *(v166 - 12);
      if (v83)
      {
        v171 = *(v166 - 28);
        v172 = *(v166 - 20);
        v146 = *(v166 - 1);
        LODWORD(v365) = *v166;
        if (v171 <= 4)
        {
          if (v171 <= 1)
          {
            if (v171)
            {
              v153 = 0xE90000000000006ELL;
            }

            else
            {
              v153 = 0xE400000000000000;
            }

            goto LABEL_116;
          }

          if (v171 == 2)
          {
            v153 = 0xE800000000000000;
            goto LABEL_116;
          }

          if (v171 == 3)
          {
            v153 = 0xE500000000000000;
            goto LABEL_116;
          }

          v83 = 0xE300000000000000;
LABEL_118:
          v163 = v366;
        }

        else
        {
          if (v171 > 7)
          {
            if (v171 == 8)
            {
              v153 = 0xE800000000000000;
            }

            else
            {
              if (v171 != 9)
              {

                v163 = v366;
LABEL_131:
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v362 = sub_19A31ED34(0, *(v362 + 2) + 1, 1, v362);
                }

                v119 = v311;
                v176 = *(v362 + 2);
                v175 = *(v362 + 3);
                v162 = v307;
                if (v176 >= v175 >> 1)
                {
                  v362 = sub_19A31ED34((v175 > 1), v176 + 1, 1, v362);
                  v162 = v307;
                }

                v164 = v167 + 1;
                v177 = v362;
                *(v362 + 2) = v176 + 1;
                v178 = &v177[24 * v176];
                *(v178 + 4) = v172;
                *(v178 + 5) = v83;
                *(v178 + 12) = v146;
                v178[52] = v365;
                v153 = v357;
                v165 = v363;
                if (v345 == v167)
                {
LABEL_140:

                  goto LABEL_141;
                }

                continue;
              }

              v153 = v364;
            }
          }

          else
          {
            v173 = 0xEE00656C62626972;
            if (v171 == 6)
            {
              v173 = 0xE600000000000000;
            }

            if (v171 == 5)
            {
              v153 = 0xEC0000006E6F6974;
            }

            else
            {
              v153 = v173;
            }
          }

LABEL_116:
          v174 = sub_19A573F1C();
          swift_bridgeObjectRetain_n();

          if (v174)
          {
LABEL_117:

            goto LABEL_118;
          }

          if (v171 <= 4)
          {
            v168 = 0xE300000000000000;
            if (v171 == 3)
            {
              v168 = 0xE500000000000000;
            }

            if (v171 == 2)
            {
              v168 = 0xE800000000000000;
            }

            v169 = 0xE90000000000006ELL;
            if (!v171)
            {
              v169 = 0xE400000000000000;
            }

            if (v171 <= 1)
            {
              v153 = v169;
            }

            else
            {
              v153 = v168;
            }
          }

          else if (v171 <= 6)
          {
            if (v171 == 5)
            {
              v153 = 0xEC0000006E6F6974;
            }

            else
            {
              v153 = 0xE600000000000000;
            }
          }

          else if (v171 == 7)
          {
            v153 = 0xEE00656C62626972;
          }

          else
          {
            if (v171 == 8)
            {

              goto LABEL_117;
            }

            v153 = v364;
          }

          v170 = sub_19A573F1C();

          v163 = v366;
          if ((v170 & 1) == 0)
          {
            goto LABEL_131;
          }
        }

        v119 = v311;
        v162 = v307;
      }

      ++v167;
      v166 += 32;
      if (v163 == v167)
      {
        v153 = v357;
        goto LABEL_140;
      }

      goto LABEL_95;
    }

    break;
  }

  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  v166 = sub_19A31ED34(0, *(v166 + 2) + 1, 1, v166);
LABEL_196:
  v219 = *(v166 + 2);
  v218 = *(v166 + 3);
  v362 = v166;
  if (v219 >= v218 >> 1)
  {
    v362 = sub_19A31ED34((v218 > 1), v219 + 1, 1, v362);
  }

  v220 = v363;
  v221 = v362;
  *(v362 + 2) = v219 + 1;
  v222 = &v221[24 * v219];
  *(v222 + 4) = v119;
  *(v222 + 5) = v83;
  *(v222 + 12) = v364;
  v222[52] = v220;
LABEL_216:
  v188 = v356;
  v119 = v146;
LABEL_182:
  sub_19A36C3E0(v188);
  if (v153)
  {

    v189 = 1;
  }

  else
  {
    v189 = 0;
  }

  v190 = v352;
  v191 = v356;
  v192 = v308;
  (*(v352 + 56))(v356, v189, 1, v308);
  if (sub_19A39BD48())
  {
    v194 = v190 + 48;
    v193 = *(v190 + 48);
    if (!(v193)(v191, 1, v192))
    {
      v307 = v193;
      v315 = v194;
      v195 = v338;
      v196 = v330;
      v197 = v336;
      (*(v338 + 16))(v330, v191, v336);
      v198 = v342;
      (*(v195 + 32))(v342, v196, v197);
      if (*(v301 + 2) | v361)
      {
        v303 = *(v332 + 56);
        v304 = (v332 + 56);
        (v303)(v335, 1, 1, v333);
        v199 = v331;
        sub_19A570B6C();
        v200 = *(v334 + 16);
        v201 = v354;
        v299 = v334 + 16;
        v296 = v200;
        v200(v328, v199, v354);
        v202 = MEMORY[0x1E69687C8];
        v203 = sub_19A489610(&qword_1ED825318, MEMORY[0x1E69687C8], MEMORY[0x1E69687D8]);
        v204 = v349;
        v295 = v203;
        sub_19A572FAC();
        v205 = *(v329 + 36);
        v366 = sub_19A489610(&qword_1ED825310, v202, MEMORY[0x1E69687E0]);
        v364 = v324 + 8;
        v357 = (v337 + 16);
        v365 = (v337 + 32);
        v363 = (v337 + 8);
        v330 = v205;
        while (1)
        {
          v206 = v350;
          sub_19A57341C();
          v207 = sub_19A489610(&qword_1ED825320, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
          v208 = v351;
          v345 = v207;
          v209 = sub_19A572C2C();
          v343 = *v364;
          (v343)(v206, v208);
          if (v209)
          {
            sub_19A2F3FA0(v204, &qword_1EAFA0768, &unk_19A57BFD0);
            v223 = *(v334 + 8);
            v223(v331, v201);
            v224 = 1;
            v213 = v353;
            v225 = v325;
            goto LABEL_201;
          }

          v210 = sub_19A57345C();
          v211 = v346;
          v212 = v353;
          (*v357)(v346);
          v210(v367, 0);
          v213 = v212;
          sub_19A57342C();
          v214 = *v365;
          v215 = v347;
          (*v365)(v347, v211, v213);
          sub_19A342038();
          v216 = v348;
          sub_19A570B3C();
          v217 = sub_19A57102C();
          if ((*(*(v217 - 8) + 48))(v216, 1, v217) != 1)
          {
            break;
          }

          (*v363)(v215, v213);
          sub_19A2F3FA0(v216, &qword_1EAF9FD80, &unk_19A57B720);
          v201 = v354;
          v204 = v349;
        }

        sub_19A2F3FA0(v349, &qword_1EAFA0768, &unk_19A57BFD0);
        v223 = *(v334 + 8);
        v223(v331, v354);
        sub_19A2F3FA0(v216, &qword_1EAF9FD80, &unk_19A57B720);
        v225 = v325;
        v214(v325, v215, v213);
        v224 = 0;
LABEL_201:
        v226 = v337;
        v227 = (v337 + 56);
        v228 = *(v337 + 56);
        v228(v225, v224, 1, v213);
        v229 = *(v226 + 48);
        v337 = v226 + 48;
        v348 = v229;
        if (v229(v225, 1, v213) == 1)
        {
          *&v346 = v228;
          v347 = v227;
          v331 = v223;
          sub_19A2F3FA0(v225, &qword_1EAFA2500, &qword_19A58B550);
          v230 = v323;
          sub_19A570B6C();
          v296(v328, v230, v354);
          v231 = v318;
          sub_19A572FAC();
          v232 = *(v329 + 36);
          v233 = v350;
          sub_19A57341C();
          v234 = v231;
          v235 = v351;
          v236 = sub_19A572C2C();
          (v343)(v233, v235);
          if (v236)
          {
LABEL_206:
            sub_19A2F3FA0(v234, &qword_1EAFA0768, &unk_19A57BFD0);
            (v331)(v323, v354);
            v246 = 1;
            v247 = v353;
            v248 = v316;
          }

          else
          {
            v349 = v232;
            while (1)
            {
              v237 = sub_19A57345C();
              v238 = v340;
              v239 = v353;
              (*v357)(v340);
              v237(v367, 0);
              sub_19A57342C();
              v240 = *v365;
              v241 = v341;
              (*v365)(v341, v238, v239);
              sub_19A378428();
              v242 = v241;
              sub_19A570B3C();
              if ((v367[4] & 1) == 0)
              {
                break;
              }

              (*v363)(v241, v353);
              v243 = v350;
              sub_19A57341C();
              v244 = v351;
              v245 = sub_19A572C2C();
              (v343)(v243, v244);
              if (v245)
              {
                goto LABEL_206;
              }
            }

            sub_19A2F3FA0(v234, &qword_1EAFA0768, &unk_19A57BFD0);
            (v331)(v323, v354);
            v248 = v316;
            v247 = v353;
            v240(v316, v242, v353);
            v246 = 0;
          }

          (v346)(v248, v246, 1, v247);
          v262 = v348(v248, 1, v247);
          v119 = v311;
          v253 = v332;
          v254 = v333;
          v255 = v306;
          v256 = v326;
          if (v262 == 1)
          {
            sub_19A2F3FA0(v248, &qword_1EAFA2500, &qword_19A58B550);
            v251 = v335;
          }

          else
          {
            v263 = v314;
            (*v365)(v314, v248, v247);
            v264 = v322;
            sub_19A570B1C();
            (*v363)(v263, v353);
            v251 = v335;
            sub_19A2F3FA0(v335, &qword_1EAFA0778, &unk_19A57BFE0);
            v265 = v320;
            (*(v253 + 16))(v320, v264 + *(v321 + 36), v254);
            sub_19A2F3FA0(v264, &qword_1EAFA0020, &unk_19A579C70);
            (v303)(v265, 0, 1, v254);
            v266 = v265;
            v255 = v306;
            sub_19A489544(v266, v251);
          }
        }

        else
        {
          v249 = v317;
          (*v365)(v317, v225, v213);
          v250 = v322;
          sub_19A570B1C();
          (*v363)(v249, v213);
          v251 = v335;
          sub_19A2F3FA0(v335, &qword_1EAFA0778, &unk_19A57BFE0);
          v252 = v320;
          v253 = v332;
          v254 = v333;
          (*(v332 + 16))(v320, v250 + *(v321 + 36), v333);
          sub_19A2F3FA0(v250, &qword_1EAFA0020, &unk_19A579C70);
          (v303)(v252, 0, 1, v254);
          sub_19A489544(v252, v251);
          v119 = v311;
          v255 = v306;
          v256 = v326;
        }

        sub_19A4894D4(v251, v256);
        if ((*(v253 + 48))(v256, 1, v254) == 1)
        {
          sub_19A2F3FA0(v256, &qword_1EAFA0778, &unk_19A57BFE0);
          v267 = v327;
          sub_19A570ACC();
          sub_19A570A5C();
          sub_19A489610(&qword_1ED825300, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
          v268 = v336;
          sub_19A570BCC();
          (*(v253 + 8))(v255, v254);
          v269 = *(v338 + 8);
          v269(v267, v268);
        }

        else
        {
          v270 = v319;
          (*(v253 + 32))(v319, v256, v254);
          v271 = v327;
          sub_19A570ACC();
          sub_19A489610(&qword_1ED825300, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
          v268 = v336;
          sub_19A570BCC();
          v269 = *(v338 + 8);
          v269(v271, v268);
          (*(v253 + 8))(v270, v254);
        }

        sub_19A2F3FA0(v335, &qword_1EAFA0778, &unk_19A57BFE0);
        v272 = v356;
        if ((v307)(v356, 1, v308))
        {
          v269(v342, v268);
        }

        else
        {
          (*(v338 + 40))(v272, v342, v268);
        }
      }

      else
      {
        (*(v195 + 8))(v198, v197);
      }
    }
  }

  v273 = sub_19A39BD48();
  v274 = v356;
  if ((*(v352 + 48))(v356, 1, v308))
  {
    v366 = 0;
    v365 = 0;
  }

  else
  {
    sub_19A489658(v274, v119, type metadata accessor for AugmentedPrompt);
    sub_19A570A4C();
    sub_19A489610(&qword_1ED825330, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
    v366 = sub_19A572F7C();
    v365 = v275;
    sub_19A489728(v119, type metadata accessor for AugmentedPrompt);
  }

  v276 = v310;
  v277 = &v310[v313[7]];
  v278 = v277[8];
  v364 = *&v310[v313[5] + 40];
  if (v278 == 1)
  {
    v357 = sub_19A489348(0x8000000000000000);
  }

  else
  {
    v357 = *v277;
  }

  v279 = &v276[v313[15]];
  LODWORD(v351) = *(v279 + 32);
  v280 = &v276[v313[30]];
  v281 = *v280;
  v282 = *(v280 + 1);
  v348 = v282;
  v349 = v281;
  v283 = *(v280 + 2);
  v284 = *(v280 + 3);
  v285 = *(v280 + 4);
  v347 = v285;
  v352 = v280[44];
  v354 = *(v280 + 10);
  v286 = v302;
  if (v302)
  {
    v287 = 0;
  }

  else
  {
    v287 = v297;
  }

  LODWORD(v353) = v287;
  if (v302)
  {
    v288 = 0;
  }

  else
  {
    v288 = v298;
  }

  v363 = v288;
  v289 = v302 | v300;
  v290 = v273 & 1;
  v291 = v279[1];
  v350 = *v279;
  v346 = v291;
  sub_19A48948C(v281, v282, v283, v284, v285);
  v292 = v362;

  v373 = 0;
  v370 = 0;
  v369 = v351;
  v374 = v286;
  v368 = v289 & 1;
  v367[0] = v290;
  *&v367[8] = 0xD000000000000012;
  *&v367[16] = 0x800000019A59B200;
  *&v367[24] = v366;
  *&v367[32] = v365;
  *&v367[40] = v364;
  v367[48] = 0;
  *&v367[56] = v357;
  v367[64] = 0;
  *&v367[72] = v301;
  *&v367[80] = 0;
  *&v367[88] = 0;
  *&v367[96] = v309;
  *&v367[104] = v358;
  *&v367[112] = v305;
  *&v367[120] = v355;
  *&v367[128] = v359;
  *&v367[136] = v361;
  *&v367[160] = v346;
  *&v367[144] = v350;
  v367[176] = v351;
  *&v367[184] = v349;
  *&v367[192] = v348;
  *&v367[200] = v283;
  *&v367[208] = v284;
  *&v367[216] = v347;
  v367[228] = v352;
  *&v367[224] = v354;
  *&v367[232] = v292;
  *&v367[240] = v353;
  v367[244] = v286;
  *&v367[248] = xmmword_19A58B530;
  *&v367[264] = v363;
  v367[272] = v289 & 1;
  *&v367[273] = 257;
  nullsub_2();
  memcpy(v344, v367, 0x113uLL);
  sub_19A2F3FA0(v356, &qword_1EAFA0288, &qword_19A579960);
}