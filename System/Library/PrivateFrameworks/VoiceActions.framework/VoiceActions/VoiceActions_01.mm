void *sub_2721FC408(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = a2[2];
  sub_2722CB8B0();
  sub_2722CB8C8();
  result = sub_2722CB8D0(v44);
  if (!v3)
  {
    if (a1[2] && *(a1[4] + 16))
    {
      MEMORY[0x28223BE20](result);
      sub_2722CB3F0(sub_272204358);
    }

    sub_2722CB8C8();
    sub_2722CB8D0(v45);
    v60 = v6;
    v41 = v5;
    v8 = *(*v2 + 680);
    v42 = v2;
    v9 = v8(v43);
    MEMORY[0x28223BE20](v9);
    sub_2722CB3F0(sub_2722040AC);
    v40 = v8;
    v9(v43, 0);
    sub_2722CB8C8();
    sub_2722CB8D0(v46);
    v10 = *(MEMORY[0] + 704);
    v11 = v10(v43);
    MEMORY[0x28223BE20](v11);
    sub_2722CB3F0(sub_27220437C);
    v39 = v10;
    v11(v43, 0);
    sub_2722CB8C8();
    sub_2722CB8D0(v47);
    v12 = *(MEMORY[0] + 608);
    v13 = v12(v43);
    MEMORY[0x28223BE20](v13);
    sub_2722CB3F0(sub_27220437C);
    v13(v43, 0);
    sub_2722CB8C8();
    sub_2722CB8D0(v48);
    v38 = *(MEMORY[0] + 632);
    v14 = v38(v43);
    MEMORY[0x28223BE20](v14);
    sub_2722CB3F0(sub_27220437C);
    v14(v43, 0);
    sub_2722CB8C8();
    sub_2722CB8D0(v49);
    v37 = *(*v2 + 656);
    v15 = v37(v43);
    MEMORY[0x28223BE20](v15);
    sub_2722CB3F0(sub_27220437C);
    v16 = v15(v43, 0);
    v17 = (*(*v2 + 496))(v16);
    if (v17)
    {
      result = (*(*v2 + 400))();
      if (v18)
      {
        sub_2722CB8C8();
        sub_2722CB8D0(v50);

        result = (*(*v2 + 448))(v19);
        if (v20)
        {
          sub_2722CB8C8();
          sub_2722CB8D0(v51);

          result = (*(*v2 + 424))(v21);
          if (!result)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return result;
          }

          if (result[2] && *(result[4] + 16))
          {
            MEMORY[0x28223BE20](result);
            sub_2722CB3F0(sub_272204358);
          }

          else
          {
          }

          result = (*(*v2 + 488))(v43);
          if (!*v22)
          {
            goto LABEL_28;
          }

          v23 = result;
          MEMORY[0x28223BE20](result);
          sub_2722CB3F0(sub_27220437C);
          v17 = (v23)(v43, 0);
          goto LABEL_17;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_17:
    (*(*v2 + 856))(v17);
    sub_2722CB8BC();
    sub_2722CB8C8();
    sub_2722CB8D0(v52);

    sub_2722CB8C8();
    sub_2722CB8D0(v55);
    sub_2722CB8C8();
    sub_2722CB8D0(v56);
    sub_2722CB8C8();
    sub_2722CB8D0(v57);
    sub_2722CB8C8();
    sub_2722CB8D0(v58);
    sub_2722CB8C8();
    sub_2722CB8D0(v59);
    v24 = sub_2722CB800(v41);
    v25 = *((*(*v2 + 832))(v24) + 16);

    if (v25)
    {
LABEL_23:
      v30 = (*(*v42 + 848))(v43);
      sub_2722040C8(v52, v31);
      v30(v43, 0);
      v32 = v12(v43);
      MEMORY[0x28223BE20](v32);
      sub_2722CB3F0(sub_272204394);
      v32(v43, 0);
      v33 = v38(v43);
      MEMORY[0x28223BE20](v33);
      sub_2722CB3F0(sub_272204394);
      v33(v43, 0);
      v34 = v37(v43);
      MEMORY[0x28223BE20](v34);
      sub_2722CB3F0(sub_272204394);
      v34(v43, 0);
      v35 = v40(v43);
      MEMORY[0x28223BE20](v35);
      sub_2722CB3F0(sub_272204394);
      v35(v43, 0);
      v36 = v39(v43);
      MEMORY[0x28223BE20](v36);
      sub_2722CB3F0(sub_272204394);
      return v36(v43, 0);
    }

    v26 = v53;
    if ((v53 & 0x8000000000000000) == 0)
    {
      v27 = v54;
      if (v53)
      {
        v28 = sub_272377B5C();
        *(v28 + 16) = v26;
        bzero((v28 + 32), 4 * v26);
      }

      else
      {
        v28 = MEMORY[0x277D84F90];
      }

      v29 = sub_27220392C(v28, v27);

      (*(*v42 + 840))(v29);
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_2721FD3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2721F9FF0();
  v7 = *(a1 + 16);
  v32 = v3;
  v8 = MEMORY[0x277D85000];
  v38 = *(v3 + 160);
  result = (*((*MEMORY[0x277D85000] & *v38) + 0x80))(v6);
  if (!result)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v10 = MEMORY[0x277D84F90];
  if (result >= 1 && v7 != 0)
  {
    v13 = 0;
    v33 = a1 + 32;
    v34 = result;
    v35 = v7;
    while (1)
    {
      v14 = __OFADD__(v13, result) ? ((v13 + result) >> 63) ^ 0x8000000000000000 : v13 + result;
      v15 = *((*v8 & *v38) + 0x88);
      result = v15();
      v16 = v13 + result;
      if (__OFADD__(v13, result))
      {
        break;
      }

      if (v7 < v16)
      {
        v16 = v7;
      }

      if (v16 < v13)
      {
        goto LABEL_41;
      }

      if (v13 < 0)
      {
        goto LABEL_42;
      }

      v17 = v16 - v13;
      v36 = v14;
      v37 = v10;
      if (v16 != v13)
      {
        v39 = MEMORY[0x277D84F90];
        result = sub_2722005AC(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          goto LABEL_43;
        }

        v18 = v39;
        v25 = (v33 + 2 * v13);
        while (v17)
        {
          v26 = *v25;
          v28 = *(v39 + 16);
          v27 = *(v39 + 24);
          v19 = v28 + 1;
          if (v28 >= v27 >> 1)
          {
            result = sub_2722005AC((v27 > 1), v28 + 1, 1);
          }

          *(v39 + 16) = v19;
          *(v39 + 4 * v28 + 32) = v26;
          ++v25;
          if (!--v17)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
        break;
      }

      v18 = MEMORY[0x277D84F90];
      v19 = *(MEMORY[0x277D84F90] + 16);
LABEL_19:
      while (v19 < v15())
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_2721FF8B4(0, *(v18 + 2) + 1, 1, v18);
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        v19 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v18 = sub_2721FF8B4((v20 > 1), v21 + 1, 1, v18);
        }

        *(v18 + 2) = v19;
        *&v18[4 * v21 + 32] = 0;
      }

      v8 = MEMORY[0x277D85000];
      v22 = (*((*MEMORY[0x277D85000] & *v38) + 0x170))(v18);

      v10 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2721FFAC4(0, v37[2] + 1, 1, v37, &qword_280881850, &unk_27237E840, &qword_280881858, &unk_27237C260);
      }

      result = v34;
      v7 = v35;
      v24 = v10[2];
      v23 = v10[3];
      if (v24 >= v23 >> 1)
      {
        v10 = sub_2721FFAC4((v23 > 1), v24 + 1, 1, v10, &qword_280881850, &unk_27237E840, &qword_280881858, &unk_27237C260);
        result = v34;
      }

      v10[2] = v24 + 1;
      v10[v24 + 4] = v22;
      v13 = v36;
      if (v36 >= v35)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_7:
  v12 = (*(*v32 + 944))(v10, a2, a3);
  if (v4)
  {
  }

  v29 = v12;

  return v29;
}

uint64_t sub_2721FD7BC(void *a1, void (*a2)(uint64_t, void *, uint64_t, float), uint64_t a3)
{
  v5 = v4;
  v64 = a3;
  v65 = a2;
  v63 = sub_272376BCC();
  v7 = *(v63 - 8);
  v8 = MEMORY[0x28223BE20](v63);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = MEMORY[0x277D84F90];
  v67 = a1;
  v68 = v3;
  v69 = a1[2];
  v10 = *(v3 + 168);
  v11 = *(*v10 + 248);
  v12 = *v10 + 248;
  v13 = (v11)(v8);
  result = (*(*v10 + 296))();
  v15 = v13 - result;
  if (__OFSUB__(v13, result))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!v15)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v16 = v69;
  if (v15 >= 1 && v69 != 0)
  {
    v19 = 0;
    v60 = v7;
    v61 = (v7 + 8);
    v20 = 0.0;
    v66 = v15;
    while (1)
    {
      v21 = __OFADD__(v19, v15);
      v22 = v19 + v15;
      v23 = v21 ? (v22 >> 63) ^ 0x8000000000000000 : v22;
      result = v11();
      v24 = v19 + result;
      if (__OFADD__(v19, result))
      {
        break;
      }

      if (v16 < v24)
      {
        v24 = v16;
      }

      if (v24 < v19)
      {
        goto LABEL_41;
      }

      if (v19 < 0)
      {
        goto LABEL_42;
      }

      if (v16 == v24 - v19)
      {
        v25 = v67;
      }

      else
      {
        sub_272202180(v67, (v67 + 4), v19, (2 * v24) | 1);
        v25 = v26;
      }

      v70 = v23;
      v71 = v5;
      v27 = v25[2];
      if (v27 < (v11)(v26))
      {
        v28 = *(*v10 + 440);
        while (1)
        {
          result = v28();
          if (result < 0)
          {
            break;
          }

          if (result)
          {
            v29 = result;
            v30 = sub_272377B5C();
            *(v30 + 16) = v29;
            memset_pattern16((v30 + 32), &unk_27237BF00, 4 * v29);
          }

          else
          {
            v30 = MEMORY[0x277D84F90];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_2721FFAC4(0, v25[2] + 1, 1, v25, &qword_280881850, &unk_27237E840, &qword_280881858, &unk_27237C260);
          }

          v32 = v25[2];
          v31 = v25[3];
          v33 = v32 + 1;
          if (v32 >= v31 >> 1)
          {
            v25 = sub_2721FFAC4((v31 > 1), v32 + 1, 1, v25, &qword_280881850, &unk_27237E840, &qword_280881858, &unk_27237C260);
          }

          v25[2] = v33;
          v25[v32 + 4] = v30;
          if (v33 >= v11())
          {
            goto LABEL_31;
          }
        }

        __break(1u);
        break;
      }

LABEL_31:
      v34 = v71;
      v35 = sub_2721FB4A4(v25);
      v5 = v34;
      if (v34)
      {

        return v12;
      }

      v37 = v35;
      v38 = v36;

      v20 = v20 + v38;
      if (*(v37 + 2))
      {

        sub_2721FDE80(v39);
        v76 = v37;
        sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
        sub_272203B18();
        v40 = sub_2723777CC();
        v42 = v41;

        v76 = v40;
        v77 = v42;
        v74 = 8492770;
        v75 = 0xA300000000000000;
        v72 = 32;
        v73 = 0xE100000000000000;
        sub_272203AC4();
        v71 = 0;
        v43 = sub_2723780FC();
        v45 = v44;

        v76 = v43;
        v77 = v45;
        v46 = v62;
        sub_272376B4C();
        v5 = v71;
        v47 = sub_2723780EC();
        v49 = v48;
        (*v61)(v46, v63);

        v65(v47, v49, 0, v20);
      }

      v15 = v66;
      v16 = v69;
      v19 = v70;
      if (v70 >= v69)
      {
        v18 = v78;
        v7 = v60;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v20 = 0.0;
  v18 = MEMORY[0x277D84F90];
LABEL_37:
  v76 = v18;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v50 = sub_2723777CC();
  v52 = v51;

  v76 = v50;
  v77 = v52;
  v74 = 8492770;
  v75 = 0xA300000000000000;
  v72 = 32;
  v73 = 0xE100000000000000;
  sub_272203AC4();
  v53 = sub_2723780FC();
  v55 = v54;

  v76 = v53;
  v77 = v55;
  v56 = v62;
  sub_272376B4C();
  v12 = sub_2723780EC();
  v58 = v57;
  (*(v7 + 8))(v56, v63);

  v65(v12, v58, 1, v20);
  (*(*v68 + 360))(0, 0xE000000000000000);
  return v12;
}

uint64_t sub_2721FDE80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2721FFBF8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2721FDF74()
{
  v0 = sub_27237728C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2722C389C();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_27237725C();
  v6 = sub_272377E7C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v5, v6, "Start-streaming", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_2721F9FF0();
}

void *sub_2721FE0E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_272376BCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2721FB4A4(a1);
  v60 = v13;
  if (!v3)
  {
    v14 = result;
    v15 = v12;
    v59[2] = 0;
    v16 = (*(*v4 + 776))(&v65);
    *v17 = v15 + *v17;
    v18 = v16(&v65, 0);
    v19 = v14[2];
    v20 = *v4;
    v59[1] = v14;
    if (v19)
    {
      (*(v20 + 792))(0);
      v21 = *(*v4 + 752);
      v59[0] = a2;
      swift_bridgeObjectRetain_n();
      v22 = v21(&v65);
      sub_2721FDE80(v14);
      v23 = v22(&v65, 0);
      v65 = (*(*v4 + 736))(v23);
      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      sub_272203B18();
      v24 = sub_2723777CC();
      v26 = v25;

      v65 = v24;
      v66 = v26;
      v63 = 8492770;
      v64 = 0xA300000000000000;
      v61 = 32;
      v62 = 0xE100000000000000;
      sub_272203AC4();
      v27 = sub_2723780FC();
      v29 = v28;

      v65 = v27;
      v66 = v29;
      sub_272376B4C();
      sub_2723780EC();
      (*(v8 + 8))(v10, v7);

      v30 = sub_2723778AC();
      v32 = v31;

      v65 = v30;
      v66 = v32;
      v63 = 0x696D72657465645CLL;
      v64 = 0xEB0000000072656ELL;
      v61 = 0;
      v62 = 0xE000000000000000;
      a2 = v59[0];
      v33 = sub_2723780FC();
      v35 = v34;

      v37 = 0;
    }

    else
    {
      v39 = *(v20 + 736);
      v40 = *(v39(v18) + 16);

      if (v40)
      {
        v59[0] = a2;
        v65 = v39(v36);
        sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
        sub_272203B18();
        v41 = sub_2723777CC();
        v43 = v42;

        v65 = v41;
        v66 = v43;
        v63 = 8492770;
        v64 = 0xA300000000000000;
        v61 = 32;
        v62 = 0xE100000000000000;
        sub_272203AC4();
        v44 = sub_2723780FC();
        v46 = v45;

        v65 = v44;
        v66 = v46;
        sub_272376B4C();
        sub_2723780EC();
        (*(v8 + 8))(v10, v7);

        v47 = sub_2723778AC();
        v49 = v48;

        v65 = v47;
        v66 = v49;
        v63 = 0x696D72657465645CLL;
        v64 = 0xEB0000000072656ELL;
        v61 = 0;
        v62 = 0xE000000000000000;
        v33 = sub_2723780FC();
        v35 = v50;

        v51 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v51 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (v51)
        {
          v52 = (*(*v4 + 808))(v36);
          v53 = *v4;
          a2 = v59[0];
          if (v52)
          {
            v54 = (*(v53 + 784))();
            v55 = *(*v4 + 792);
            if ((v54 & 1) == 0)
            {
              v36 = v55(1);
              v37 = 0;
              goto LABEL_4;
            }

            v55(0);
            (*(*v4 + 360))(0, 0xE000000000000000);
          }

          else
          {
            (*(v53 + 360))(0, 0xE000000000000000);
          }

          v56 = (*(*v4 + 752))(&v65);
          *v57 = MEMORY[0x277D84F90];

          v58 = v56(&v65, 0);
          (*(*v4 + 768))(v58, 0.0);
          v36 = (*(*v4 + 888))(0);
          v37 = 1;
        }

        else
        {
          v37 = 0;
          a2 = v59[0];
        }
      }

      else
      {
        v37 = 0;
        v33 = 0;
        v35 = 0xE000000000000000;
      }
    }

LABEL_4:
    v38 = (*(*v4 + 760))(v36);

    *a2 = v33;
    *(a2 + 8) = v35;
    *(a2 + 16) = v38;
    *(a2 + 20) = v37;
    *(a2 + 24) = v60;
  }

  return result;
}

float sub_2721FE93C()
{
  v1 = v0;
  v2 = sub_272376BCC();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2722C389C();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_27237725C();
  v11 = sub_272377E7C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2721E4000, v10, v11, "Stop-streaming", v12, 2u);
    MEMORY[0x2743C69C0](v12, -1, -1);
  }

  v13 = (*(v6 + 8))(v8, v5);
  v14 = *(*v1 + 736);
  v15 = *(v14(v13) + 16);

  if (v15)
  {
    v33 = v14(v16);
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    sub_272203B18();
    v17 = sub_2723777CC();
    v19 = v18;

    v33 = v17;
    v34 = v19;
    v31 = 8492770;
    v32 = 0xA300000000000000;
    v29 = 32;
    v30 = 0xE100000000000000;
    sub_272203AC4();
    v20 = sub_2723780FC();
    v22 = v21;

    v33 = v20;
    v34 = v22;
    sub_272376B4C();
    sub_2723780EC();
    (*(v27 + 8))(v4, v28);
  }

  v23 = (*(*v1 + 760))(v16);
  v24 = sub_2721F9FF0();
  v14(v24);

  return v23;
}

uint64_t VACTCEncoder.deinit()
{
  sub_272203B7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_272203220(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t VACTCEncoder.__deallocating_deinit()
{
  VACTCEncoder.deinit();

  return swift_deallocClassInstance();
}

void *sub_2721FEE94(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*a3 + 16);
  if (v11 <= a2)
  {
    if (a1)
    {
      return memcpy(a1, (*a3 + 32), 4 * v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = sub_2722C389C();
    (*(v7 + 16))(v10, v12, v6);
    v13 = sub_27237725C();
    v14 = sub_272377E8C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2721E4000, v13, v14, "Input array size exceeds buffer capacity", v15, 2u);
      MEMORY[0x2743C69C0](v15, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    sub_2722032B4();
    swift_allocError();
    *v16 = 0xD000000000000028;
    v16[1] = 0x8000000272388550;
    return swift_willThrow();
  }

  return result;
}

void sub_2721FF070(const void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*a3 + 16);
  if (v10 <= a2)
  {
    if (v10)
    {
      v16 = sub_272377B5C();
      *(v16 + 16) = v10;
      bzero((v16 + 32), 4 * v10);
      if (a1)
      {
LABEL_7:
        memcpy((v16 + 32), a1, 4 * *(*a3 + 16));
        *a3 = v16;

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    return;
  }

  v11 = sub_2722C389C();
  (*(v7 + 16))(v9, v11, v6);
  v12 = sub_27237725C();
  v13 = sub_272377E8C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2721E4000, v12, v13, "Output array size exceeds buffer capacity", v14, 2u);
    MEMORY[0x2743C69C0](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  sub_2722032B4();
  swift_allocError();
  *v15 = 0xD000000000000029;
  v15[1] = 0x80000002723884A0;
  swift_willThrow();
}

void sub_2721FF298(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >= a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (a3)
      {
        v17 = sub_272377B5C();
        *(v17 + 16) = a3;
        bzero((v17 + 32), 4 * a3);
        if (a1)
        {
LABEL_8:
          memcpy((v17 + 32), a1, 4 * a3);
          v19 = v17;
          *a4 = sub_2721F56DC(0, *(*a4 + 16), a4, &v19);

          return;
        }
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
        if (a1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v12 = sub_2722C389C();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_27237725C();
  v14 = sub_272377E8C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2721E4000, v13, v14, "Output array size exceeds buffer capacity", v15, 2u);
    MEMORY[0x2743C69C0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  sub_2722032B4();
  swift_allocError();
  *v16 = 0xD000000000000029;
  v16[1] = 0x80000002723884A0;
  swift_willThrow();
}

unint64_t sub_2721FF4F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

    v7 = sub_272377A5C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2721FF9B8(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_2721FF9B8((a7 > 1), v10, 1, v14);
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
        v19 = sub_272377A2C();
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

        v14 = sub_27237792C();
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
        v18 = sub_27237792C();
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
          v7 = sub_272377A5C();
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

        v14 = sub_2721FF9B8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_272377A5C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2721FF9B8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2721FF9B8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_27237792C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_2721FF8B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881848, &unk_27237C250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2721FF9B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881880, &unk_272383810);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_2721FFAC4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_2721F065C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2721F065C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2721FFBF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881860, &unk_27237C340);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2721FFD04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2721FFDD0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2722041FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2722039C8(v11);
  return v7;
}

unint64_t sub_2721FFDD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2721FFEDC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_27237825C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2721FFEDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2721FFF28(a1, a2);
  sub_272200058(&unk_28817D138);
  return v3;
}

void *sub_2721FFF28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_272200144(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_27237825C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2723779AC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_272200144(v10, 0);
        result = sub_2723781BC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_272200058(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2722001B8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_272200144(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2721F065C(&qword_280881868, &unk_27237C270);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2722001B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881868, &unk_27237C270);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

__n128 sub_2722002C0(__n128 *a1)
{
  v2 = *(v1 + 16);
  v3 = v2[1].n128_u64[0];
  if (v3)
  {
    if (v3 < 8 || (a1 - v2 - 32) < 0x20)
    {
      v4 = 0;
LABEL_5:
      v5 = a1 + v4;
      v6 = &v2[2] + v4;
      v7 = v3 - v4;
      do
      {
        v8 = *v6++;
        result.n128_u32[0] = v8;
        *v5++ = v8;
        --v7;
      }

      while (v7);
      return result;
    }

    v4 = v3 & 0x7FFFFFFFFFFFFFF8;
    v10 = v2 + 3;
    v11 = a1 + 1;
    v12 = v3 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      result = v10[-1];
      v13 = *v10;
      v11[-1] = result;
      *v11 = v13;
      v10 += 2;
      v11 += 2;
      v12 -= 8;
    }

    while (v12);
    if (v3 != v4)
    {
      goto LABEL_5;
    }
  }

  return result;
}

unint64_t sub_27220038C(uint64_t a1, uint64_t a2)
{
  sub_27237874C();
  sub_27237790C();
  v4 = sub_27237878C();

  return sub_272200448(a1, a2, v4);
}

unint64_t sub_272200404(uint64_t a1)
{
  v2 = sub_27237873C();

  return sub_272200500(a1, v2);
}

unint64_t sub_272200448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_27237865C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_272200500(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

char *sub_27220056C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2722005EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27220058C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2722006F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2722005AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2722007FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2722005CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_272200900(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2722005EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881860, &unk_27237C340);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2722006F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2722007FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881848, &unk_27237C250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_272200900(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2721F065C(&qword_280881850, &unk_27237E840);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2721F065C(&qword_280881858, &unk_27237C260);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unsigned __int8 *sub_272200A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_272377A4C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_272200FC0(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_27237825C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_272200FC0(uint64_t a1, unint64_t a2)
{
  v2 = sub_272377A5C();
  v6 = sub_272201040(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_272201040(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_27237805C();
    if (!v9 || (v10 = v9, v11 = sub_272200144(v9, 0), v12 = sub_272201198(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2723778FC();

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
      return sub_2723778FC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_27237825C();
LABEL_4:

  return sub_2723778FC();
}

unint64_t sub_272201198(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2722013B8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2723779DC();
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
          result = sub_27237825C();
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

    result = sub_2722013B8(v12, a6, a7);
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

    result = sub_2723779BC();
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

unint64_t sub_2722013B8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2723779EC();
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
    v5 = MEMORY[0x2743C4B20](15, a1 >> 16);
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

unint64_t sub_272201434(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_272200404(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_2722016EC(v16, isUniquelyReferenced_nonNull_native);
    result = sub_272200404(a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = sub_2723786BC();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = result;
    sub_272201C10();
    result = v20;
    v18 = v10;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v18 = v10;
  if (v4)
  {
LABEL_7:
    v19 = (v18[7] + 16 * result);
    result = *v19;
    *v19 = a1;
    v19[1] = a2;
LABEL_12:
    *v5 = v18;
    return result;
  }

LABEL_10:
  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a3;
  v21 = (v18[7] + 16 * result);
  *v21 = a1;
  v21[1] = a2;
  v22 = v18[2];
  v15 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v15)
  {
    result = 0;
    v18[2] = v23;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_272201588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  result = sub_27220038C(a2, a3);
  v13 = v10[2];
  v14 = __OFADD__(v13, (v12 ^ 1) & 1);
  v15 = v13 + ((v12 ^ 1) & 1);
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v15)
  {
    sub_272201970(v15, isUniquelyReferenced_nonNull_native);
    result = sub_27220038C(a2, a3);
    if ((v4 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    result = sub_2723786BC();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = result;
    sub_272201D78();
    result = v19;
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  if (v4)
  {
LABEL_7:
    v17 = v10[7];
    v18 = *(v17 + 8 * result);
    *(v17 + 8 * result) = a1;
LABEL_12:
    *v5 = v10;
    return v18;
  }

LABEL_10:
  v10[(result >> 6) + 8] |= 1 << result;
  v20 = (v10[6] + 16 * result);
  *v20 = a2;
  v20[1] = a3;
  *(v10[7] + 8 * result) = a1;
  v21 = v10[2];
  v14 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (!v14)
  {
    v10[2] = v22;

    v18 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_2722016EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_280881870, &qword_272383BC0);
  v34 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_27237873C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_272201970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_280881878, &unk_27237C280);
  v34 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_272201C10()
{
  v1 = v0;
  sub_2721F065C(&qword_280881870, &qword_272383BC0);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_272201D78()
{
  v1 = v0;
  sub_2721F065C(&qword_280881878, &unk_27237C280);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_272201EE0(float a1, float a2, float a3)
{
  v6 = a1 <= a2;
  if (a3 > 0.0)
  {
    v6 = a1 >= a2;
  }

  if (!v6)
  {
    v7 = -1;
    do
    {
      v8 = ++v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v9 = a1 + (v8 * a3);
      v10 = v9 <= a2;
      if (a3 > 0.0)
      {
        v10 = v9 >= a2;
      }
    }

    while (!v10);
    if (v7 == -1)
    {
      goto LABEL_18;
    }

    sub_2721F065C(&qword_280881848, &unk_27237C250);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 29;
    }

    v14 = v13 >> 2;
    *(v11 + 2) = v8;
    *(v11 + 3) = 2 * v14;
    v15 = v11 + 8;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v8;
    v17 = -1;
    v18 = a1;
    while (1)
    {
      v19 = v18 <= a2;
      if (a3 > 0.0)
      {
        v19 = v18 >= a2;
      }

      if (v19)
      {
        goto LABEL_47;
      }

      v20 = a1 + ((v17 + 2) * a3);
      *v15++ = v18;
      ++v17;
      v18 = v20;
      if (v7 == v17)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v11 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 24);

  v8 = 0;
  v15 = v11 + 8;
  v16 = v21 >> 1;
  v20 = a1;
LABEL_19:
  v22 = v20 <= a2;
  if (a3 > 0.0)
  {
    v22 = v20 >= a2;
  }

  if (!v22)
  {
    while (!__OFADD__(v8, 1))
    {
      if (!v16)
      {
        v23 = *(v11 + 3);
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_48;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_2721F065C(&qword_280881848, &unk_27237C250);
        v26 = swift_allocObject();
        v27 = j__malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 29;
        }

        v29 = v28 >> 2;
        *(v26 + 2) = v25;
        *(v26 + 3) = 2 * (v28 >> 2);
        v30 = (v26 + 8);
        v31 = *(v11 + 3) >> 1;
        if (*(v11 + 2))
        {
          v32 = v11 + 8;
          if (v26 != v11 || v30 >= v32 + 4 * v31)
          {
            memmove(v26 + 8, v32, 4 * v31);
          }

          *(v11 + 2) = 0;
        }

        v15 = (v30 + 4 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
      }

      v33 = __OFSUB__(v16--, 1);
      if (v33)
      {
        goto LABEL_46;
      }

      *v15++ = v20;
      v20 = a1 + ((v8 + 1) * a3);
      v34 = v20 <= a2;
      if (a3 > 0.0)
      {
        v34 = v20 >= a2;
      }

      ++v8;
      if (v34)
      {
        goto LABEL_40;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_40:
  v35 = *(v11 + 3);
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v33 = __OFSUB__(v36, v16);
    v37 = v36 - v16;
    if (v33)
    {
LABEL_49:
      __break(1u);
      return;
    }

    *(v11 + 2) = v37;
  }
}

void sub_272202180(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_2721F065C(&qword_280881858, &unk_27237C260);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2721F065C(&qword_280881850, &unk_27237E840);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_27220226C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for VABundleUtil();
  static VABundleUtil.bundlePathFallback(path:)(a1, a2);
  if (!v2)
  {
    type metadata accessor for VACTCEncoderConfig();
    v6 = sub_2722042B0();
    sub_272254F78(v6, &v10);

    v5 = v10;
    if (v11)
    {
      if (v10 == 0x8000000000000000)
      {
        sub_27237820C();

        MEMORY[0x2743C4AD0](a1, a2);
        v5 = 0xD00000000000001ALL;
        sub_2722032B4();
        swift_allocError();
        *v7 = 0xD00000000000001ALL;
        v7[1] = 0x8000000272388690;
      }

      else
      {
        sub_272204304();
        swift_allocError();
        *v8 = v5;
      }

      swift_willThrow();
    }
  }

  return v5;
}

unint64_t sub_2722023D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  type metadata accessor for VACTCEncoderConfig();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0xE000000000000000;
  *(v3 + 72) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v3 + 80) = 0xE000000000000000;
  *(v3 + 88) = v4;
  *(v3 + 96) = v4;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0xE000000000000000;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0xE000000000000000;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0xE000000000000000;
  *(v3 + 160) = v4;
  *(v3 + 184) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 200) = 1;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 208) = 0;
  *(v3 + 232) = 1;
  v5 = sub_2721F52A8(0x65467475706E493CLL, 0xEC0000003E737461, v2);
  if (v1)
  {
    goto LABEL_33;
  }

  (*(*v3 + 232))(v5);
  v6 = sub_2721F516C(0xD000000000000011, 0x8000000272388580, v2);
  (*(*v3 + 256))(v6);
  v7 = sub_2721F516C(0xD000000000000018, 0x80000002723885A0, v2);
  (*(*v3 + 280))(v7);
  v8 = sub_2721F516C(0x764F656D6172463CLL, 0xEE003E70616C7265, v2);
  (*(*v3 + 304))(v8);
  v9 = sub_2721F52A8(0x3E6B73614D3CLL, 0xE600000000000000, v2);
  (*(*v3 + 328))(v9);
  v10 = sub_2721F52A8(0xD000000000000010, 0x80000002723885C0, v2);
  (*(*v3 + 352))(v10);
  (*(*v3 + 376))(MEMORY[0x277D84F90]);
  if (!*(v2 + 16) || (v11 = sub_27220038C(0x685365746174533CLL, 0xED00003E73657061), (v12 & 1) == 0) || (sub_2722041FC(*(v2 + 56) + 32 * v11, v70), sub_2721F065C(&qword_280881888, &unk_27237C290), (swift_dynamicCast() & 1) == 0))
  {
LABEL_32:
    sub_2722032B4();
    swift_allocError();
    *v46 = 0xD000000000000026;
    v46[1] = 0x80000002723885E0;
    swift_willThrow();
LABEL_33:

    return v3;
  }

  v63 = v2;
  v66 = v68;
  v65 = *(v68 + 16);
  if (!v65)
  {
LABEL_23:

    v13 = 0xD000000000000026;
    v34 = sub_2721F54A4(0x74537475706E493CLL, 0xED00003E73657461, v63);
    (*(*v3 + 400))(v34);
    (*(*v3 + 424))(0x432C522C31, 0xE500000000000000);
    v35 = sub_2721F516C(0x69447475706E493CLL, 0xEA00000000003E6DLL, v63);
    (*(*v3 + 448))(v35);
    v36 = sub_2721F52A8(0x6D726F666E6F433CLL, 0xEE003E74754F7265, v63);
    (*(*v3 + 472))(v36);
    v37 = sub_2721F52A8(0x74736F504354433CLL, 0xEF3E73726F697265, v63);
    (*(*v3 + 496))(v37);
    v38 = sub_2721F54A4(0x5374757074754F3CLL, 0xEE003E7365746174, v63);
    (*(*v3 + 520))(v38);
    v39 = sub_2721F516C(0x4474757074754F3CLL, 0xEB000000003E6D69, v63);
    (*(*v3 + 544))(v39);
    if (*(v63 + 16) && (v40 = sub_27220038C(0xD000000000000013, 0x8000000272388610), (v41 & 1) != 0))
    {
      sub_2722041FC(*(v63 + 56) + 32 * v40, v70);
      v42 = swift_dynamicCast();
      v43 = v42 == 0;
      if (v42)
      {
        v44 = v68;
      }

      else
      {
        v44 = 0;
      }

      if (v43)
      {
        v45 = 0;
      }

      else
      {
        v45 = v69;
      }
    }

    else
    {
LABEL_37:
      v44 = 0;
      v45 = 0;
    }

    (*(*v3 + 568))(v44, v45);
    if (*(v63 + 16) && (v47 = sub_27220038C(v13 - 17, 0x8000000272388630), (v48 & 1) != 0))
    {
      sub_2722041FC(*(v63 + 56) + 32 * v47, v70);
      v49 = swift_dynamicCast();
      if (v49)
      {
        v50 = v68;
      }

      else
      {
        v50 = 0;
      }

      v51 = v49 ^ 1u;
    }

    else
    {
      v50 = 0;
      v51 = 1;
    }

    (*(*v3 + 592))(v50, v51);
    if (*(v63 + 16) && (v52 = sub_27220038C(v13 - 16, 0x8000000272388650), (v53 & 1) != 0))
    {
      sub_2722041FC(*(v63 + 56) + 32 * v52, v70);
      v54 = swift_dynamicCast();
      v55 = v54 == 0;
      if (v54)
      {
        v56 = v68;
      }

      else
      {
        v56 = 0;
      }

      if (v55)
      {
        v57 = 0;
      }

      else
      {
        v57 = v69;
      }
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    (*(*v3 + 616))(v56, v57);
    if (*(v63 + 16) && (v58 = sub_27220038C(v13 - 13, 0x8000000272388670), (v59 & 1) != 0))
    {
      sub_2722041FC(*(v63 + 56) + 32 * v58, v70);
      v60 = swift_dynamicCast();
      if (v60)
      {
        v61 = v68;
      }

      else
      {
        v61 = 0;
      }

      v62 = v60 ^ 1u;
    }

    else
    {
      v61 = 0;
      v62 = 1;
    }

    (*(*v3 + 640))(v61, v62);
    return v3;
  }

  v13 = 0;
  v64 = v68 + 32;
  while (1)
  {
    if (v13 >= *(v66 + 16))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    sub_2722041FC(v64 + 32 * v13, v70);
    if (!swift_dynamicCast())
    {

      goto LABEL_32;
    }

    v67 = v13;
    v70[0] = v68;
    v70[1] = v69;
    v68 = 44;
    v69 = 0xE100000000000000;
    sub_272203AC4();
    v14 = sub_2723780BC();

    v13 = *(v14 + 16);
    if (v13)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
LABEL_18:
    v26 = (*(*v3 + 384))(v70);
    v28 = v27;
    v29 = *v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v28 = v29;
    v31 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_2721FFAC4(0, v29[2] + 1, 1, v29, &qword_280881898, &qword_27237C2A0, &qword_2808817F0, &unk_27237BF20);
      *v28 = v29;
    }

    v33 = v29[2];
    v32 = v29[3];
    if (v33 >= v32 >> 1)
    {
      v29 = sub_2721FFAC4((v32 > 1), v33 + 1, 1, v29, &qword_280881898, &qword_27237C2A0, &qword_2808817F0, &unk_27237BF20);
      *v28 = v29;
    }

    v29[2] = v33 + 1;
    v13 = v67 + 1;
    v29[v33 + 4] = v31;
    v26(v70, 0);
    if (v67 + 1 == v65)
    {
      goto LABEL_23;
    }
  }

  v70[0] = MEMORY[0x277D84F90];
  sub_27220058C(0, v13, 0);
  v15 = 0;
  v16 = v70[0];
  v17 = (v14 + 40);
  v71 = v13;
  while (1)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_36;
    }

    v19 = *(v17 - 1);
    v18 = *v17;

    result = sub_2721F58F8(v19, v18);
    if (v21)
    {
      break;
    }

    v22 = result;
    v70[0] = v16;
    v24 = *(v16 + 16);
    v23 = *(v16 + 24);
    v25 = v16;
    if (v24 >= v23 >> 1)
    {
      sub_27220058C((v23 > 1), v24 + 1, 1);
      v25 = v70[0];
    }

    ++v15;
    *(v25 + 16) = v24 + 1;
    *(v25 + 8 * v24 + 32) = v22;
    v17 += 2;
    v13 = v71;
    v16 = v25;
    if (v71 == v15)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void *sub_27220300C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_272203050()
{
  result = qword_280884F10[0];
  if (!qword_280884F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280884F10);
  }

  return result;
}

unint64_t sub_2722030A4()
{
  result = qword_2808817E0;
  if (!qword_2808817E0)
  {
    sub_2721F214C(&qword_2808817D8, &qword_27237BF18);
    sub_272203148(&qword_2808817E8, &qword_2808817F0, &unk_27237BF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808817E0);
  }

  return result;
}

uint64_t sub_272203148(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2722031B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_272203220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

unint64_t sub_2722032B4()
{
  result = qword_280881810;
  if (!qword_280881810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881810);
  }

  return result;
}

uint64_t sub_272203364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6165467475706E69 && a2 == 0xEA00000000007374;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172467475706E69 && a2 == 0xEF746E756F43656DLL || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002723881A0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65764F656D617266 && a2 == 0xEC00000070616C72 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1802723693 && a2 == 0xE400000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465626D45736F70 && a2 == 0xEE0074657366664FLL || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6168536574617473 && a2 == 0xEB00000000736570 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174537475706E69 && a2 == 0xEB00000000736574 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002723881F0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D69447475706E69 && a2 == 0xE800000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656D726F666E6F63 && a2 == 0xEC00000074754F72 || (sub_27237865C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6574736F50435463 && a2 == 0xED000073726F6972 || (sub_27237865C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x745374757074756FLL && a2 == 0xEC00000073657461 || (sub_27237865C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x694474757074756FLL && a2 == 0xE90000000000006DLL || (sub_27237865C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000272388240 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000272388260 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000272388280 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002723882A0 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_27220392C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    sub_2721F065C(&qword_280881858, &unk_27237C260);
    v4 = sub_272377B5C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_2722039C8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_272203AC4()
{
  result = qword_280881820;
  if (!qword_280881820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881820);
  }

  return result;
}

unint64_t sub_272203B18()
{
  result = qword_280881830;
  if (!qword_280881830)
  {
    sub_2721F214C(&qword_2808817F8, &unk_27237CA80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881830);
  }

  return result;
}

void sub_272203B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a5)
  {
  }
}

uint64_t getEnumTagSinglePayload for VACTCEncoderConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VACTCEncoderConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_272203F54()
{
  result = qword_2808850A0[0];
  if (!qword_2808850A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808850A0);
  }

  return result;
}

unint64_t sub_272203FAC()
{
  result = qword_2808851B0;
  if (!qword_2808851B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808851B0);
  }

  return result;
}

unint64_t sub_272204004()
{
  result = qword_2808851B8[0];
  if (!qword_2808851B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808851B8);
  }

  return result;
}

uint64_t sub_2722040C8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(*a2 + 16);
  v4 = (*a2 + 32);
  while (v3)
  {
    v5 = *v4++;
    v6 = *(v5 + 16);
    --v3;
    v7 = __OFADD__(v2, v6);
    v2 += v6;
    if (v7)
    {
      __break(1u);
      break;
    }
  }

  MEMORY[0x28223BE20](a1);
  return sub_2722CB3F0(sub_2722041E0);
}

char *sub_272204164(char *result)
{
  v2 = result;
  v3 = 0;
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  while (v5)
  {
    if (!v2)
    {
      __break(1u);
      return result;
    }

    v7 = *v6++;
    v8 = *(v7 + 16);
    result = memcpy(&v2[4 * v3], (v7 + 32), 4 * v8);
    --v5;
    v9 = __OFADD__(v3, v8);
    v3 += v8;
    if (v9)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_2722041FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_272204258(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_27237865C() & 1;
  }
}

unint64_t sub_2722042B0()
{
  result = qword_2808818A8;
  if (!qword_2808818A8)
  {
    type metadata accessor for VACTCEncoderConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808818A8);
  }

  return result;
}

unint64_t sub_272204304()
{
  result = qword_2808818B0;
  if (!qword_2808818B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808818B0);
  }

  return result;
}

uint64_t sub_272204464(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_2722044FC()
{
  v0 = sub_27237728C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2722C389C();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_27237725C();
  v6 = sub_272377E7C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v5, v6, "VANoopVerifier - didStartListening", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void *sub_27220465C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v5 = type metadata accessor for VASingleEnrollmentData(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v65 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

    return static VAVerifierModelOutput.none.getter(v64);
  }

  v60 = result;
  if (!sub_2723783AC())
  {
    return static VAVerifierModelOutput.none.getter(v64);
  }

  v13 = sub_2723783AC();
  result = v60;
LABEL_3:
  v14 = 0xD000000000000018;
  if (v13 > 1)
  {
    v15 = "Unexpected type of input";
    v14 = 0xD00000000000001FLL;
LABEL_16:
    v26 = v15 | 0x8000000000000000;
    sub_2722032B4();
    swift_allocError();
    *v27 = v14;
    v27[1] = v26;
    return swift_willThrow();
  }

  v63 = result;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x2743C5370](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v16 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for VAFeatureExtractingEncoderOutput();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v15 = "Invalid tASR config file: ";
    goto LABEL_16;
  }

  v18 = v17;
  v61[3] = v16;
  if ((*(v17 + 16) & 1) == 0)
  {
    static VAVerifierModelOutput.none.getter(v64);
    return swift_unknownObjectRelease();
  }

  v61[2] = v3;
  v19 = *(*v2 + 120);
  v20 = *(v19() + 16);

  if (v20)
  {
    v22 = *(v18 + 32);
    if (!v22)
    {
      v32 = -3.4028e38;
LABEL_29:
      v38 = (v19)(v21);
      v39 = *(v38 + 16);
      if (v39)
      {
        v63 = (v65 + *(v5 + 24));
        v40 = *(v6 + 80);
        v61[1] = v38;
        v41 = v38 + ((v40 + 32) & ~v40);
        v62 = *(v6 + 72);
        v42 = v39 - 1;
        v43 = MEMORY[0x277D84F90];
        while (1)
        {
          v44 = v65;
          sub_272204F54(v41, v65);
          v45 = *v63;
          v46 = v63[1];

          sub_272204FB8(v44);
          v47 = sub_272241A18();
          v48 = sub_272241A18();
          v49 = sub_272324094();
          v50 = sub_272324094();
          v51 = sub_2721F7EE4();
          LOBYTE(v44) = sub_2721F7EE4();
          v52 = sub_27222CD4C();
          sub_27232409C(v45, v46, v49, v50, v51 & 1, v44 & 1, v52 & 1, 0, v66, v32, v47, v48, 0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_272205014(0, *(v43 + 2) + 1, 1, v43);
          }

          v54 = *(v43 + 2);
          v53 = *(v43 + 3);
          if (v54 >= v53 >> 1)
          {
            v43 = sub_272205014((v53 > 1), v54 + 1, 1, v43);
          }

          *(v43 + 2) = v54 + 1;
          v55 = &v43[80 * v54];
          *(v55 + 2) = v66[0];
          v56 = v66[1];
          v57 = v66[2];
          v58 = v66[4];
          *(v55 + 5) = v66[3];
          *(v55 + 6) = v58;
          *(v55 + 3) = v56;
          *(v55 + 4) = v57;
          if (!v42)
          {
            break;
          }

          --v42;
          v41 += v62;
        }
      }

      else
      {

        v43 = MEMORY[0x277D84F90];
      }

      type metadata accessor for VAKeywordResult();
      v59 = VAKeywordResult.__allocating_init(detections:)(v43);
      sub_2722E45C4(v59, v64);
      return swift_unknownObjectRelease();
    }

    v23 = *(v22 + 16);
    if (v23)
    {
      if (v23 > 7)
      {
        v24 = v23 & 0x7FFFFFFFFFFFFFF8;
        v33 = v22 + 48;
        v25 = 0.0;
        v34 = v23 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v25 = (((((((v25 + COERCE_FLOAT(*(v33 - 16))) + COERCE_FLOAT(HIDWORD(*(v33 - 16)))) + COERCE_FLOAT(*(v33 - 8))) + COERCE_FLOAT(HIDWORD(*(v33 - 16)))) + COERCE_FLOAT(*v33)) + COERCE_FLOAT(HIDWORD(*v33))) + COERCE_FLOAT(*(v33 + 8))) + COERCE_FLOAT(HIDWORD(*v33));
          v33 += 32;
          v34 -= 8;
        }

        while (v34);
        if (v23 == v24)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v24 = 0;
        v25 = 0.0;
      }

      v35 = v23 - v24;
      v36 = (v22 + 4 * v24 + 32);
      do
      {
        v37 = *v36++;
        v25 = v25 + v37;
        --v35;
      }

      while (v35);
    }

    else
    {
      v25 = 0.0;
    }

LABEL_28:
    v32 = (v25 / v23) * -20.0;
    goto LABEL_29;
  }

  v28 = sub_2722C389C();
  (*(v9 + 16))(v12, v28, v63);
  v29 = sub_27237725C();
  v30 = sub_272377E8C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2721E4000, v29, v30, "No enrollments set for this model", v31, 2u);
    MEMORY[0x2743C69C0](v31, -1, -1);
  }

  (*(v9 + 8))(v12, v63);
  static VAVerifierModelOutput.none.getter(v64);
  return swift_unknownObjectRelease();
}

uint64_t VAVADVerifier.deinit()
{
  v0 = VAVerifierModel.deinit();

  return v0;
}

uint64_t VAVADVerifier.__deallocating_deinit()
{
  VAVerifierModel.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAVADVerifier.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  v2 = v1;
  v3 = sub_27237728C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2722C389C();
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_27237725C();
  v9 = sub_272377E7C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2721E4000, v8, v9, "Noop setAudioEnrollments", v10, 2u);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v11 = *(*v2 + 128);

  v11(v12);
}

uint64_t sub_272204F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VASingleEnrollmentData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_272204FB8(uint64_t a1)
{
  v2 = type metadata accessor for VASingleEnrollmentData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_272205014(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_272205298(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 160) = a1;
  return result;
}

uint64_t VAContextEncoder.__allocating_init(config:outputDim:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  VAContextEncoder.init(config:outputDim:)(a1, a2);
  return v4;
}

uint64_t VAContextEncoder.init(config:outputDim:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v2 + 152) = 64;
  v7 = (*(*a1 + 568))();
  if (v3)
  {
    goto LABEL_3;
  }

  v9 = v8;
  v10 = v7;
  type metadata accessor for VABundleUtil();
  v11 = static VABundleUtil.bundlePathFallback(path:)(v10, v9);
  v14 = v13;
  v15 = v11;

  *(v4 + 160) = a2;
  type metadata accessor for VASentencePieceModel();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F98];
  *(v16 + 16) = MEMORY[0x277D84F98];
  *(v16 + 24) = v17;
  *(v16 + 32) = v17;
  *(v16 + 40) = 256;
  *(v4 + 144) = v16;

  sub_272207BA4(v15, v14);

  v19 = (*(*a1 + 224))(v18);
  if (!v20)
  {
    sub_2722032B4();
    swift_allocError();
    *v24 = 0xD00000000000001FLL;
    v24[1] = 0x8000000272388750;
    swift_willThrow();

LABEL_3:

    type metadata accessor for VAContextEncoder();
    swift_deallocPartialClassInstance();
    return v4;
  }

  v21 = v19;
  v22 = v20;
  if ((*(*a1 + 320))())
  {
    type metadata accessor for VAEspressoUtilsV2();
    v23 = sub_2721F7EE4();
    sub_2723195D0(v21, v22, v23 & 1, &v38);
    v30 = v38;
    v31 = v41;

    *(v4 + 96) = v30;
    *(v4 + 104) = v39;
    *(v4 + 120) = v40;
    *(v4 + 136) = v31;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 73) = 0u;
  }

  else
  {
    type metadata accessor for VAEspressoUtils();
    v25 = (*(*a1 + 344))(&v35);
    v34 = v35;
    v26 = (*(*a1 + 368))(v25);
    v28 = v27;
    v29 = sub_2721F7EE4();
    static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(v21, v22, &v34, v26, v28, v29 & 1, v36);

    v32 = v37[0];
    *(v4 + 48) = v36[2];
    *(v4 + 64) = v32;
    *(v4 + 73) = *(v37 + 9);
    v33 = v36[1];
    *(v4 + 16) = v36[0];
    *(v4 + 32) = v33;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
  }

  return v4;
}

uint64_t VASentencePieceModel.__allocating_init(_:)(char a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F98];
  *(result + 16) = MEMORY[0x277D84F98];
  *(result + 24) = v3;
  *(result + 32) = v3;
  *(result + 41) = 1;
  *(result + 40) = a1;
  return result;
}

uint64_t sub_2722057D0()
{
  v2 = v1;
  v3 = (*(**(v0 + 144) + 248))();
  v4 = v3;
  v5 = *(v0 + 48);
  if (v5)
  {
    v6 = *(v0 + 32);
    v19[0] = *(v0 + 16);
    v19[1] = v6;
    v21 = *(v0 + 56);
    v22 = *(v0 + 72);
    v23 = *(v0 + 88);
    v7 = *(v0 + 32);
    v16 = *(v0 + 16);
    v17 = v7;
    *&v18[8] = *(v0 + 56);
    *&v18[24] = *(v0 + 72);
    v18[40] = *(v0 + 88);
    *v18 = v5;
    v8 = *(*v0 + 168);
    v20 = v5;
    sub_272203308(v19, v14);
    v9 = v8(v4, &v16);
    if (!v1)
    {
      v2 = v9;
    }

    v14[2] = *v18;
    v15[0] = *&v18[16];
    *(v15 + 9) = *&v18[25];
    v14[0] = v16;
    v14[1] = v17;
    sub_272204058(v14);
  }

  else
  {
    v10 = *(v0 + 104);
    if (v10)
    {
      v24[0] = *(v0 + 96);
      v24[1] = v10;
      v11 = *(v0 + 128);
      v25 = *(v0 + 112);
      v26 = v11;
      v2 = (*(*v0 + 160))(v3, v24);
    }

    else
    {

      sub_2722032B4();
      swift_allocError();
      *v12 = 0xD000000000000028;
      v12[1] = 0x8000000272388770;
      swift_willThrow();
    }
  }

  return v2;
}

char *sub_2722059EC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (!v3)
  {
    v12 = sub_272377B5C();
    *(v12 + 16) = 64;
    v7 = MEMORY[0x277D84F90];
    v13 = 256;
    goto LABEL_11;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_2722005AC(0, v3, 0);
  v6 = 0;
  v7 = v20;
  v8 = *(v20 + 16);
  do
  {
    v9 = *(a1 + 32 + 8 * v6);
    v10 = *(v20 + 24);
    if (v8 >= v10 >> 1)
    {
      result = sub_2722005AC((v10 > 1), v8 + 1, 1);
    }

    ++v6;
    *(v20 + 16) = v8 + 1;
    *(v20 + 4 * v8++ + 32) = v9;
  }

  while (v3 != v6);
  v11 = 64 - v3;
  if (v3 > 0x40)
  {
    __break(1u);
    return result;
  }

  if (v3 != 64)
  {
    v12 = sub_272377B5C();
    *(v12 + 16) = v11;
    v13 = 4 * v11;
    v2 = v1;
LABEL_11:
    bzero((v12 + 32), v13);
    goto LABEL_12;
  }

  v12 = MEMORY[0x277D84F90];
  v2 = v1;
LABEL_12:

  sub_272207944(v14);
  if (v3)
  {
    v15 = sub_272377B5C();
    *(v15 + 16) = v3;
    memset_pattern16((v15 + 32), &unk_27237C320, 4 * v3);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  sub_272207944(v12);
  v16 = sub_272319394(0x73657361726870, 0xE700000000000000, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
  if (v2)
  {
  }

  else
  {
    (*(*v16 + 624))(v7);

    v17 = sub_272319394(0x6D5F657361726870, 0xEB000000006B7361, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    (*(*v17 + 624))(v15);

    sub_272275B0C();
    v18 = sub_2723194B0(0x626D655F787463, 0xE700000000000000, MEMORY[0x277D83A90], MEMORY[0x277D83AD0]);
    v19 = (*(*v18 + 720))(v18);

    return v19;
  }
}

uint64_t sub_272205D6C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  sub_2722CB8B0();
  sub_2722CB8C8();
  result = sub_2722CB8D0(v11);
  if (!v3)
  {
    sub_2722CB8C8();
    v6 = sub_2722CB8D0(v12);
    MEMORY[0x28223BE20](v6);
    v7 = sub_2722CB3F0(sub_272208A80);
    MEMORY[0x28223BE20](v7);
    sub_2722CB3F0(sub_272208B54);
    sub_2722CB8BC();
    sub_2722CB8C8();
    sub_2722CB8D0(v13);
    v8 = sub_2722CB800(v4);
    result = (*(*v2 + 120))(v8);
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      if (result)
      {
        v9 = result;
        v10 = sub_272377B5C();
        *(v10 + 16) = v9;
        bzero((v10 + 32), 4 * v9);
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      v14 = v10;
      MEMORY[0x28223BE20](result);
      sub_2722CB3F0(sub_272208BE8);
      return v14;
    }
  }

  return result;
}

uint64_t *VAContextEncoder.deinit()
{
  sub_272203B7C(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10]);
  sub_272203220(v0[12], v0[13], v0[14], v0[15], v0[16], v0[17]);

  return v0;
}

uint64_t VAContextEncoder.__deallocating_deinit()
{
  sub_272203B7C(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10]);
  sub_272203220(v0[12], v0[13], v0[14], v0[15], v0[16], v0[17]);

  return swift_deallocClassInstance();
}

uint64_t sub_272206124(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_2722061F4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_272206270(char a1)
{
  result = swift_beginAccess();
  *(v1 + 41) = a1;
  return result;
}

uint64_t VASentencePieceModel.init(_:)(char a1)
{
  v2 = MEMORY[0x277D84F98];
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v1 + 24) = v2;
  *(v1 + 32) = v2;
  *(v1 + 41) = 1;
  *(v1 + 40) = a1;
  return v1;
}

uint64_t sub_272206324()
{
  v1 = (*(*v0 + 184))(v5);
  v3 = v2;

  *v3 = MEMORY[0x277D84F98];
  return v1(v5, 0);
}

uint64_t sub_2722063AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_27237728C();
  v97 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = 8492770;
  v105 = 0xA300000000000000;
  v9 = MEMORY[0x2743C4AD0](a1, a2);
  v11 = v104;
  v10 = v105;
  v12 = *(*v2 + 144);
  v101 = *v2 + 144;
  *&v102 = v12;
  v13 = v12(v9);
  if (*(v13 + 16))
  {
    v14 = sub_27220038C(v11, v10);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 16 * v14);

      sub_2721F065C(&qword_280881860, &unk_27237C340);
      v17 = swift_allocObject();
      v102 = xmmword_27237AF80;
      *(v17 + 16) = xmmword_27237AF80;
      *(v17 + 32) = v11;
      *(v17 + 40) = v10;
      sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
      v18 = swift_allocObject();
      *(v18 + 16) = v102;
      *(v18 + 32) = v16;
      return v17;
    }
  }

  v20 = (*(*v3 + 168))(v19);
  if (*(v20 + 16))
  {
    v21 = sub_27220038C(v11, v10);
    if (v22)
    {
      v23 = v21;

      v17 = *(*(v20 + 56) + 24 * v23);

      goto LABEL_58;
    }
  }

  *&v96 = v8;
  v98 = v6;

  result = sub_27237791C();
  v17 = MEMORY[0x277D84F90];
  v95 = v10;
  v100 = v3;
  if (result)
  {
    v26 = result;
    v104 = MEMORY[0x277D84F90];
    result = sub_27220056C(0, result & ~(result >> 63), 0);
    if (v26 < 0)
    {
      goto LABEL_68;
    }

    v17 = v104;
    do
    {
      v27 = sub_272377A2C();
      v29 = v28;
      v104 = v17;
      v31 = *(v17 + 16);
      v30 = *(v17 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_27220056C((v30 > 1), v31 + 1, 1);
        v17 = v104;
      }

      *(v17 + 16) = v31 + 1;
      v32 = v17 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      result = sub_27237792C();
      --v26;
    }

    while (v26);
  }

  v94 = v11;
  v106 = v17;
  v33 = 0.0;
  while (2)
  {
    v34 = v98;
    v35 = v96;
    v36 = *(v17 + 16);
    v37 = v36 - 1;
    if (v36 == 1)
    {
LABEL_35:
      v62 = v97++;
      v98 = (v62 + 2);
      v63 = (v17 + 40);
      *&v25 = 136315138;
      v96 = v25;
      v99 = v17;
      do
      {
        v64 = *(v63 - 1);
        v65 = *v63;

        if (*((v102)(v66) + 16) && (sub_27220038C(v64, v65), (v67 & 1) != 0))
        {
        }

        else
        {

          v68 = sub_2722C389C();
          (*v98)(v35, v68, v34);

          v69 = sub_27237725C();
          v70 = v35;
          v71 = sub_272377E8C();

          if (os_log_type_enabled(v69, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v104 = v73;
            *v72 = v96;
            v74 = sub_2721FFD04(v64, v65, &v104);

            *(v72 + 4) = v74;
            _os_log_impl(&dword_2721E4000, v69, v71, "Missing key %s", v72, 0xCu);
            sub_2722039C8(v73);
            MEMORY[0x2743C69C0](v73, -1, -1);
            MEMORY[0x2743C69C0](v72, -1, -1);
          }

          else
          {
          }

          (*v97)(v70, v34);
          v35 = v70;
          v17 = v99;
        }

        v63 += 2;
        --v36;
      }

      while (v36);
      v75 = *(v17 + 16);
      v76 = MEMORY[0x277D84F90];
      if (!v75)
      {
LABEL_55:
        v79 = v100;
LABEL_56:
        v88 = v94;
        if (v79[40])
        {
          v89 = *(*v79 + 184);

          v90 = v89(&v104);
          v92 = v91;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = *v92;
          *v92 = 0x8000000000000000;
          sub_27220928C(v17, v76, v88, v95, isUniquelyReferenced_nonNull_native, v33);

          *v92 = v103;
          v90(&v104, 0);
          return v17;
        }

LABEL_58:

        return v17;
      }

      v104 = MEMORY[0x277D84F90];
      result = sub_27220058C(0, v75, 0);
      v77 = 0;
      v76 = v104;
      v78 = (v17 + 40);
      v79 = v100;
      while (v77 < *(v17 + 16))
      {
        v80 = *(v78 - 1);
        v81 = *v78;

        result = (v102)(v82);
        if (!*(result + 16))
        {
          goto LABEL_61;
        }

        v83 = result;
        result = sub_27220038C(v80, v81);
        if ((v84 & 1) == 0)
        {
          goto LABEL_62;
        }

        v85 = *(*(v83 + 56) + 16 * result);

        v104 = v76;
        v87 = *(v76 + 16);
        v86 = *(v76 + 24);
        if (v87 >= v86 >> 1)
        {
          result = sub_27220058C((v86 > 1), v87 + 1, 1);
          v76 = v104;
        }

        ++v77;
        *(v76 + 16) = v87 + 1;
        *(v76 + 8 * v87 + 32) = v85;
        v78 += 2;
        if (v75 == v77)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (!v36)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      break;
    }

    v38 = 0;
    v39 = v17 + 32;
    v40 = (v17 + 56);
    v41 = -1;
    v42 = 3.4028e38;
    do
    {
      if (v38 >= *(v17 + 16))
      {
        __break(1u);
LABEL_54:
        v76 = MEMORY[0x277D84F90];
        goto LABEL_55;
      }

      v43 = *(v40 - 2);
      v44 = *(v40 - 1);
      v45 = *v40;
      v104 = *(v40 - 3);
      v105 = v43;
      swift_bridgeObjectRetain_n();

      MEMORY[0x2743C4AD0](v44, v45);

      v48 = v104;
      v47 = v105;
      v49 = (v102)(v46);
      if (!*(v49 + 16))
      {

LABEL_18:

        goto LABEL_19;
      }

      v50 = sub_27220038C(v48, v47);
      v52 = v51;

      if ((v52 & 1) == 0)
      {
        goto LABEL_18;
      }

      v53 = *(*(v49 + 56) + 16 * v50 + 8);

      if (v53 < v42)
      {
        v42 = v53;
        v41 = v38;
      }

LABEL_19:
      ++v38;
      v40 += 2;
    }

    while (v37 != v38);
    if (v41 == -1)
    {
      v36 = *(v17 + 16);
      v34 = v98;
      v35 = v96;
      if (v36)
      {
        goto LABEL_35;
      }

      goto LABEL_54;
    }

    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

    v54 = *(v17 + 16);
    if (v41 >= v54)
    {
      goto LABEL_65;
    }

    if (v41 + 1 >= v54)
    {
      goto LABEL_66;
    }

    v55 = *(v39 + 16 * v41 + 8);
    v56 = (v39 + 16 * (v41 + 1));
    v57 = *v56;
    v58 = v56[1];
    v104 = *(v39 + 16 * v41);
    v105 = v55;
    swift_bridgeObjectRetain_n();

    MEMORY[0x2743C4AD0](v57, v58);

    v59 = v104;
    v60 = v105;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272208CDC(v17);
      v17 = result;
    }

    if (v41 < *(v17 + 16))
    {
      v61 = v17 + 16 * v41;
      *(v61 + 32) = v59;
      *(v61 + 40) = v60;

      v106 = v17;
      sub_272206C74(v41 + 1);

      v33 = v33 + v42;
      v17 = v106;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_272206C74(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_272208CDC(v3);
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

uint64_t sub_272206D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v99 = 8492770;
  v100 = 0xA300000000000000;
  v4 = MEMORY[0x2743C4AD0]();
  v94 = *(*v2 + 144);
  v5 = v94(v4);
  if (*(v5 + 16))
  {
    v6 = sub_27220038C(8492770, 0xA300000000000000);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);

      sub_2721F065C(&qword_280881860, &unk_27237C340);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_27237AF80;
      *(v9 + 32) = 8492770;
      *(v9 + 40) = 0xA300000000000000;
      sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_27237AF80;
      *(v10 + 32) = v8;
      return v9;
    }
  }

  v12 = (*(*v3 + 168))(v11);
  if (*(v12 + 16))
  {
    v13 = sub_27220038C(8492770, 0xA300000000000000);
    if (v14)
    {
      v15 = v13;

      v9 = *(*(v12 + 56) + 24 * v15);

LABEL_72:

      return v9;
    }
  }

  v16 = sub_27237791C();
  v17 = MEMORY[0x277D84F90];
  v96 = v3;
  if (v16)
  {
    v18 = v16;
    v99 = MEMORY[0x277D84F90];
    result = sub_27220056C(0, v16 & ~(v16 >> 63), 0);
    if (v18 < 0)
    {
      goto LABEL_85;
    }

    v17 = v99;
    do
    {
      v20 = sub_272377A2C();
      v99 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = v20;
        v26 = v21;
        sub_27220056C((v22 > 1), v23 + 1, 1);
        v21 = v26;
        v20 = v25;
        v17 = v99;
      }

      *(v17 + 16) = v23 + 1;
      v24 = v17 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      sub_27237792C();
      --v18;
    }

    while (v18);
  }

  v95 = v17;
  v27 = *(v17 + 16);
  sub_2721F065C(&qword_2808818D0, &qword_27237C358);
  result = sub_272377B5C();
  *(result + 16) = v27 + 1;
  *(result + 32) = 2139095039;
  v28 = (result + 32);
  *(result + 40) = -1;
  v92 = result;
  v90 = (result + 32);
  if (!v27)
  {
    v52 = 0;
    *v28 = 0;
    v98 = MEMORY[0x277D84F90];
LABEL_42:
    v53 = MEMORY[0x277D84F90];
    v54 = 0.0;
    while (1)
    {
      v55 = &v28[4 * v52];
      v56 = *v55;
      v57 = *(v55 + 1);
      if (v57 == -1)
      {
        break;
      }

      if (v52 <= v57)
      {
        goto LABEL_76;
      }

      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_77;
      }

      v58 = *(v95 + 16);
      if (v58 < v57 || v58 < v52)
      {
        goto LABEL_78;
      }

      v99 = v95;
      v100 = v95 + 32;
      v101 = v57;
      v102 = (2 * v52) | 1;
      sub_2721F065C(&qword_2808818C0, &qword_27237C350);
      sub_272209438();

      v60 = sub_2723777CC();
      v62 = v61;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2721FFBF8(0, *(v53 + 16) + 1, 1, v53);
        v53 = result;
      }

      v64 = *(v53 + 16);
      v63 = *(v53 + 24);
      v65 = v92;
      if (v64 >= v63 >> 1)
      {
        result = sub_2721FFBF8((v63 > 1), v64 + 1, 1, v53);
        v53 = result;
        v65 = v92;
      }

      *(v53 + 16) = v64 + 1;
      v66 = v53 + 16 * v64;
      *(v66 + 32) = v60;
      *(v66 + 40) = v62;
      v98 = v53;
      v54 = v54 + v56;
      v52 = v57;
      v28 = v90;
      if (v57 >= *(v65 + 16))
      {
        goto LABEL_79;
      }
    }

    v67 = v54 + v56;
    v68 = v96;
    goto LABEL_59;
  }

  v29 = (result + 56);
  v30 = v27;
  do
  {
    *(v29 - 2) = 2139095039;
    *v29 = -1;
    v29 += 2;
    --v30;
  }

  while (v30);
  if (!*(result + 16))
  {
    goto LABEL_84;
  }

  v31 = 0;
  *(result + 32) = 0;
  *(result + 40) = -1;
  v32 = result + 48;
  v33 = 3;
  while (2)
  {
    result = sub_2721F065C(&qword_2808818C0, &qword_27237C350);
    v34 = *(v95 + 16);
    if (v34 < v27 || v34 <= v31)
    {
      goto LABEL_83;
    }

    v87 = v31 + 1;
    if (v31)
    {
      v36 = 0xE000000000000000;
    }

    else
    {
      v36 = 0xA300000000000000;
    }

    v37 = 8492770;
    if (v31)
    {
      v37 = 0;
    }

    v93 = v37;
    v91 = &v28[4 * v31];
    sub_272209438();
    v88 = v33;
    v89 = v32;
    v38 = v31;
    do
    {
      ++v38;
      v39 = v31;
      v101 = v31;
      v102 = v33;

      v40 = sub_2723777CC();
      v42 = v41;

      v99 = v93;
      v100 = v36;

      MEMORY[0x2743C4AD0](v40, v42);

      v44 = v94(v43);
      if (!*(v44 + 16))
      {

LABEL_31:

        v31 = v39;
        goto LABEL_32;
      }

      v45 = sub_27220038C(v93, v36);
      v47 = v46;

      if ((v47 & 1) == 0)
      {
        goto LABEL_31;
      }

      v48 = *(*(v44 + 56) + 16 * v45 + 8);

      v49 = *(v92 + 16);
      if (v39 >= v49)
      {
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
        goto LABEL_80;
      }

      if (v38 >= v49)
      {
        goto LABEL_75;
      }

      v31 = v39;
      v50 = v48 + *v91;
      if (v50 < *v32)
      {
        *v32 = v50;
        *(v32 + 8) = v39;
      }

LABEL_32:
      v32 += 16;
      v33 += 2;
    }

    while (v27 != v38);
    v32 = v89 + 16;
    v33 = v88 + 2;
    v31 = v87;
    v28 = v90;
    if (v87 != v27)
    {
      continue;
    }

    break;
  }

  v51 = *(v92 + 16);
  v98 = MEMORY[0x277D84F90];
  if (v51)
  {
    v52 = v51 - 1;
    goto LABEL_42;
  }

  v68 = v96;

  v67 = 0.0;
LABEL_59:
  sub_27220759C();
  v9 = v98;
  v69 = *(v98 + 16);
  v70 = MEMORY[0x277D84F90];
  if (!v69)
  {
    v81 = v68;
LABEL_69:
    if (v81[40])
    {
      v82 = *(*v81 + 184);

      v83 = v82(&v99);
      v85 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = *v85;
      *v85 = 0x8000000000000000;
      sub_27220928C(v98, v70, 8492770, 0xA300000000000000, isUniquelyReferenced_nonNull_native, v67);

      *v85 = v97;
      v83(&v99, 0);
    }

    else
    {
    }

    goto LABEL_72;
  }

  v99 = MEMORY[0x277D84F90];
  result = sub_27220058C(0, v69, 0);
  v71 = 0;
  v70 = v99;
  v72 = (v98 + 40);
  while (v71 < *(v98 + 16))
  {
    v73 = *(v72 - 1);
    v74 = *v72;

    result = v94(v75);
    if (!*(result + 16))
    {
      goto LABEL_81;
    }

    v76 = result;
    result = sub_27220038C(v73, v74);
    if ((v77 & 1) == 0)
    {
      goto LABEL_82;
    }

    v78 = *(*(v76 + 56) + 16 * result);

    v99 = v70;
    v80 = *(v70 + 16);
    v79 = *(v70 + 24);
    if (v80 >= v79 >> 1)
    {
      result = sub_27220058C((v79 > 1), v80 + 1, 1);
      v70 = v99;
    }

    ++v71;
    *(v70 + 16) = v80 + 1;
    *(v70 + 8 * v80 + 32) = v78;
    v72 += 2;
    v81 = v96;
    if (v69 == v71)
    {
      goto LABEL_69;
    }
  }

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
  __break(1u);
  return result;
}

void sub_27220759C()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_272208CDC(v1);
  }

  v2 = &v1[16 * v2 + 24];
  v4 = (v1 + 40);
  v5 = 1;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v7 = *(v1 + 2);
    if (v5 - 1 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v3 >= v7)
    {
      goto LABEL_16;
    }

    v8 = *(v4 - 1);
    v9 = *v4;
    v10 = *v2;
    *(v4 - 1) = *(v2 - 8);
    *v4 = v10;
    v11 = *(v1 + 2);

    if (v3 >= v11)
    {
      break;
    }

    *(v2 - 8) = v8;
    *v2 = v9;

LABEL_6:
    --v3;
    v2 -= 16;
    v4 += 2;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

char *sub_272207690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_272376BCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[2] = a1;
  v31[3] = a2;
  sub_272376B4C();
  sub_272203AC4();
  v10 = sub_2723780AC();
  (*(v7 + 8))(v9, v6);
  v11 = *(v10 + 16);
  v31[1] = v10;
  if (!v11)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_22:

    return v14;
  }

  v12 = *(*v3 + 192);
  v13 = (v10 + 40);
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = *(v13 - 1);
    v16 = *v13;

    v19 = v12(v18);
    v20 = *v3;
    if (v19)
    {
      (*(v20 + 232))(v17, v16);
    }

    else
    {
      (*(v20 + 240))(v17, v16);
    }

    v22 = v21;

    v23 = *(v22 + 16);
    v24 = *(v14 + 2);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v25 <= *(v14 + 3) >> 1)
    {
      if (*(v22 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v26 = v24 + v23;
      }

      else
      {
        v26 = v24;
      }

      result = sub_27220897C(result, v26, 1, v14);
      v14 = result;
      if (*(v22 + 16))
      {
LABEL_17:
        v27 = *(v14 + 2);
        if ((*(v14 + 3) >> 1) - v27 < v23)
        {
          goto LABEL_25;
        }

        memcpy(&v14[8 * v27 + 32], (v22 + 32), 8 * v23);

        if (v23)
        {
          v28 = *(v14 + 2);
          v29 = __OFADD__(v28, v23);
          v30 = v28 + v23;
          if (v29)
          {
            goto LABEL_26;
          }

          *(v14 + 2) = v30;
        }

        goto LABEL_4;
      }
    }

    if (v23)
    {
      goto LABEL_24;
    }

LABEL_4:
    v13 += 2;
    if (!--v11)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_272207944(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2721FF8B4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[4 * v7 + 32], v6 + 32, 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_272207A30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(*v1 + 248);
  v4 = (a1 + 40);
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *(v4 - 1);
    v8 = *v4;

    v9 = v3(v7, v8);

    v10 = *(v9 + 16);
    v11 = *(v5 + 2);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 <= *(v5 + 3) >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = v11;
      }

      result = sub_27220897C(result, v13, 1, v5);
      v5 = result;
      if (*(v9 + 16))
      {
LABEL_14:
        v14 = *(v5 + 2);
        if ((*(v5 + 3) >> 1) - v14 < v10)
        {
          goto LABEL_22;
        }

        memcpy(&v5[8 * v14 + 32], (v9 + 32), 8 * v10);

        if (v10)
        {
          v15 = *(v5 + 2);
          v16 = __OFADD__(v15, v10);
          v17 = v15 + v10;
          if (v16)
          {
            goto LABEL_23;
          }

          *(v5 + 2) = v17;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_21;
    }

LABEL_4:
    v4 += 2;
    if (!--v2)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_272207BA4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  v128 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v126 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_27237728C();
  v129 = *(v121 - 8);
  v4 = MEMORY[0x28223BE20](v121);
  v120 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v111 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v111 - v9;
  v11 = type metadata accessor for Sentencepiece_TrainerSpec(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_272376F3C();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = type metadata accessor for Sentencepiece_ModelProto(0);
  MEMORY[0x28223BE20](v15);
  v122 = (&v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_272376D5C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_272376CAC();
  v21 = v127;
  v22 = sub_272376D6C();
  if (v21)
  {
    (*(v18 + 8))(v20, v17);
    return 1;
  }

  v127 = v13;
  v124 = v10;
  v125 = v8;
  v118 = v18;
  v119 = v17;
  v135 = 0;
  memset(v134, 0, sizeof(v134));
  v24 = v22;
  v25 = v23;
  sub_2721F0560(v22, v23);
  sub_272376F2C();
  sub_27220949C();
  v26 = v122;
  sub_27237707C();
  v114 = v24;
  v115 = v25;
  v116 = v20;
  v27 = v129;
  v28 = v129;
  v29 = v127;
  sub_2721E6220(v127);
  v30 = sub_2721E6044();
  sub_272209724(v29, type metadata accessor for Sentencepiece_TrainerSpec);
  v133 = v30;
  v132 = 1;
  sub_2721F2080();
  sub_272377A8C();
  sub_272377A8C();
  v117 = v27;
  if (*&v134[0] == v131)
  {
    v113 = 0;
    v31 = v26;
    v32 = v130;
    (*(*v130 + 200))(1);
    v33 = sub_2722C389C();
    v34 = v124;
    v35 = v121;
    v112 = *(v28 + 16);
    v112(v124, v33, v121);
    v36 = sub_27237725C();
    v37 = sub_272377E7C();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v126;
    if (!v38)
    {
      v41 = v34;
      goto LABEL_11;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2721E4000, v36, v37, "Using BPE segmentation model", v40, 2u);
    v41 = v34;
  }

  else
  {
    sub_2721E6220(v29);
    v42 = sub_2721E6044();
    sub_272209724(v29, type metadata accessor for Sentencepiece_TrainerSpec);
    v133 = v42;
    v132 = 0;
    sub_272377A8C();
    sub_272377A8C();
    v32 = v130;
    v39 = v126;
    if (*&v134[0] != v131)
    {
      *&v134[0] = 0;
      *(&v134[0] + 1) = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000021, 0x80000002723887A0);
      v106 = v122;
      sub_2721E6220(v29);
      v107 = sub_2721E6044();
      sub_272209724(v29, type metadata accessor for Sentencepiece_TrainerSpec);
      LOBYTE(v131) = v107;
      sub_27237836C();
      v108 = v134[0];
      sub_2722094F4();
      swift_allocError();
      *v109 = v108;
      swift_willThrow();
      sub_2721F05C8(v114, v115);
      (*(v118 + 8))(v116, v119);
      sub_272209724(v106, type metadata accessor for Sentencepiece_ModelProto);
      return 1;
    }

    v113 = 0;
    v31 = v122;
    (*(*v130 + 200))(0);
    v43 = sub_2722C389C();
    v35 = v121;
    v112 = *(v117 + 16);
    v112(v125, v43, v121);
    v36 = sub_27237725C();
    v44 = sub_272377E7C();
    if (!os_log_type_enabled(v36, v44))
    {
      v45 = v128;
      v41 = v125;
      goto LABEL_12;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2721E4000, v36, v44, "Using BPE segmentation model", v40, 2u);
    v41 = v125;
  }

  MEMORY[0x2743C69C0](v40, -1, -1);
LABEL_11:
  v45 = v128;
LABEL_12:

  v46 = *(v117 + 8);
  v117 += 8;
  v111 = v46;
  v46(v41, v35);
  v127 = *v31;
  v126 = *(v127 + 2);
  if (!v126)
  {
LABEL_37:
    v96 = sub_2722C389C();
    v98 = v120;
    v97 = v121;
    v112(v120, v96, v121);

    v99 = sub_27237725C();
    v100 = sub_272377E7C();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 134217984;
      v102 = *((*(*v32 + 120))() + 16);

      *(v101 + 4) = v102;

      _os_log_impl(&dword_2721E4000, v99, v100, "Loaded %ld symbols", v101, 0xCu);
      v103 = v101;
      v97 = v121;
      MEMORY[0x2743C69C0](v103, -1, -1);
    }

    else
    {
    }

    v105 = v118;
    v104 = v119;

    sub_2721F05C8(v114, v115);
    v111(v98, v97);
    (*(v105 + 8))(v116, v104);
    sub_272209724(v122, type metadata accessor for Sentencepiece_ModelProto);
    return 1;
  }

  v47 = 0;
  v48 = *(*v32 + 136);
  v124 = *v32 + 136;
  v125 = v48;
  v123 = &v127[(*(v45 + 80) + 32) & ~*(v45 + 80)];
  while (v47 < *(v127 + 2))
  {
    sub_272209548(&v123[*(v45 + 72) * v47], v39);
    v52 = sub_2721E63D4();
    v54 = v53;
    v55 = (v125)(v134);
    v57 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v131 = *v57;
    v59 = v131;
    *v57 = 0x8000000000000000;
    v60 = sub_272200404(v47);
    v62 = v59[2];
    v63 = (v61 & 1) == 0;
    v64 = __OFADD__(v62, v63);
    v65 = v62 + v63;
    if (v64)
    {
      goto LABEL_45;
    }

    v66 = v61;
    if (v59[3] < v65)
    {
      sub_2722016EC(v65, isUniquelyReferenced_nonNull_native);
      v60 = sub_272200404(v47);
      if ((v66 & 1) != (v67 & 1))
      {
        goto LABEL_50;
      }

LABEL_22:
      v68 = v131;
      if (v66)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v70 = v60;
    sub_272201C10();
    v60 = v70;
    v68 = v131;
    if (v66)
    {
LABEL_23:
      v69 = (v68[7] + 16 * v60);
      *v69 = v52;
      v69[1] = v54;

      goto LABEL_27;
    }

LABEL_25:
    v68[(v60 >> 6) + 8] |= 1 << v60;
    *(v68[6] + 8 * v60) = v47;
    v71 = (v68[7] + 16 * v60);
    *v71 = v52;
    v71[1] = v54;
    v72 = v68[2];
    v64 = __OFADD__(v72, 1);
    v73 = v72 + 1;
    if (v64)
    {
      goto LABEL_47;
    }

    v68[2] = v73;
LABEL_27:
    *v57 = v68;

    v55(v134, 0);
    v74 = sub_2721E63D4();
    v76 = v75;
    v77 = sub_2721E63EC();
    v78 = (*(*v130 + 160))(v134);
    v80 = v79;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v131 = *v80;
    v82 = v131;
    *v80 = 0x8000000000000000;
    v83 = sub_27220038C(v74, v76);
    v85 = v82[2];
    v86 = (v84 & 1) == 0;
    v64 = __OFADD__(v85, v86);
    v87 = v85 + v86;
    if (v64)
    {
      goto LABEL_46;
    }

    v88 = v84;
    if (v82[3] < v87)
    {
      sub_272208CF0(v87, v81);
      v83 = sub_27220038C(v74, v76);
      if ((v88 & 1) != (v89 & 1))
      {
        goto LABEL_49;
      }

LABEL_32:
      v90 = -v77;
      if (v88)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    }

    if (v81)
    {
      goto LABEL_32;
    }

    v95 = v83;
    sub_2722095AC();
    v83 = v95;
    v90 = -v77;
    if (v88)
    {
LABEL_14:
      v49 = v83;

      v50 = v131;
      v51 = v131[7] + 16 * v49;
      *v51 = v47;
      *(v51 + 8) = v90;
      goto LABEL_15;
    }

LABEL_33:
    v50 = v131;
    v131[(v83 >> 6) + 8] |= 1 << v83;
    v91 = (v50[6] + 16 * v83);
    *v91 = v74;
    v91[1] = v76;
    v92 = v50[7] + 16 * v83;
    *v92 = v47;
    *(v92 + 8) = v90;
    v93 = v50[2];
    v64 = __OFADD__(v93, 1);
    v94 = v93 + 1;
    if (v64)
    {
      goto LABEL_48;
    }

    v50[2] = v94;
LABEL_15:
    ++v47;
    *v80 = v50;

    v78(v134, 0);
    sub_272209724(v39, type metadata accessor for Sentencepiece_ModelProto.SentencePiece);
    v32 = v130;
    v45 = v128;
    if (v126 == v47)
    {
      goto LABEL_37;
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
  sub_2723786BC();
  __break(1u);
LABEL_50:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

uint64_t sub_2722088B8()
{
  v1 = *((*(*v0 + 144))() + 16);

  return v1;
}

void *VASentencePieceModel.deinit()
{

  return v0;
}

uint64_t VASentencePieceModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_27220897C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_272208A80(float32x4_t *a1)
{
  v2 = *(v1 + 16);
  v3 = v2[1].u64[0];
  if (!v3)
  {
LABEL_17:
    bzero(&a1->f32[v3], 256 - 4 * v3);
    return;
  }

  if (v3 <= 0xB || (&v2[2] + 8 * v3 > a1 ? (v4 = &v2[2] >= &a1->f32[v3]) : (v4 = 1), !v4))
  {
    v5 = 0;
LABEL_13:
    v13 = &a1->f32[v5];
    v14 = &v2[2].i64[v5];
    v15 = v3 - v5;
    do
    {
      v16 = *v14++;
      *v13++ = v16;
      --v15;
    }

    while (v15);
    goto LABEL_15;
  }

  v5 = v3 & 0x7FFFFFFFFFFFFFF8;
  v6 = v2 + 4;
  v7 = a1 + 1;
  v8 = v3 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v10 = v6[-2];
    v9 = v6[-1];
    v12 = *v6;
    v11 = v6[1];
    v6 += 4;
    v7[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v10)), vcvtq_f64_s64(v9));
    *v7 = vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_s64(v12)), vcvtq_f64_s64(v11));
    v7 += 2;
    v8 -= 8;
  }

  while (v8);
  if (v3 != v5)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (v3 <= 0x40)
  {
    if (v3 == 64)
    {
      return;
    }

    goto LABEL_17;
  }

  __break(1u);
}

void sub_272208B54(char *__b)
{
  v3 = *(*(v1 + 16) + 16);
  if (!v3)
  {
    v4 = 0;
LABEL_6:

    bzero(&__b[v4], 256 - v4);
    return;
  }

  v4 = 4 * v3;
  memset_pattern16(__b, &unk_27237C320, 4 * v3);
  if (v3 > 0x40)
  {
    __break(1u);
    return;
  }

  if (v3 != 64)
  {
    goto LABEL_6;
  }
}

char *sub_272208BE8(char *result)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  v4 = *(*v2 + 2);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2722002AC(v3);
  }

  *v2 = v3;
  if (v4 > *(v3 + 2))
  {
    __break(1u);
  }

  else
  {
    v7 = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v3 = sub_2722002AC(v3);
LABEL_6:
  v8 = 0;
  *v2 = v3;
  do
  {
    v9 = *&v5[4 * v8];
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v3;
    if ((result & 1) == 0)
    {
      result = sub_2722002AC(v3);
      v3 = result;
      *v2 = result;
    }

    *&v3[4 * v8 + 32] = v9;
    v3 = *v2;
    ++v8;
  }

  while (v4 != v8);
  return result;
}

uint64_t sub_272208CF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_2808818E0, &unk_27237C4A0);
  v38 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      if ((v38 & 1) == 0)
      {
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v28;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_272208FB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_2808818E8, &qword_27237C4B0);
  v38 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v39 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v39;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_27220928C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, float a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_27220038C(a3, a4);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 < v20 || (a5 & 1) != 0)
    {
      sub_272208FB0(v20, a5 & 1);
      v15 = sub_27220038C(a3, a4);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_2723786BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_272209A4C();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a6;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a3;
  v28[1] = a4;
  v29 = v25[7] + 24 * v15;
  *v29 = a1;
  *(v29 + 8) = a2;
  *(v29 + 16) = a6;
  v30 = v25[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v31;
}

unint64_t sub_272209438()
{
  result = qword_2808818C8;
  if (!qword_2808818C8)
  {
    sub_2721F214C(&qword_2808818C0, &qword_27237C350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808818C8);
  }

  return result;
}

unint64_t sub_27220949C()
{
  result = qword_280881690;
  if (!qword_280881690)
  {
    type metadata accessor for Sentencepiece_ModelProto(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881690);
  }

  return result;
}

unint64_t sub_2722094F4()
{
  result = qword_2808818D8;
  if (!qword_2808818D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808818D8);
  }

  return result;
}

uint64_t sub_272209548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Sentencepiece_ModelProto.SentencePiece(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2722095AC()
{
  v1 = v0;
  sub_2721F065C(&qword_2808818E0, &unk_27237C4A0);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_272209724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_272209784(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_272209790(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2722097D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of VASentencePieceModel.encode(_:)()
{
  return (*(*v0 + 248))();
}

{
  return (*(*v0 + 256))();
}

uint64_t dispatch thunk of VASentencePieceModel.decode(_:)()
{
  return (*(*v0 + 264))();
}

{
  return (*(*v0 + 272))();
}

void *sub_272209A4C()
{
  v1 = v0;
  sub_2721F065C(&qword_2808818E8, &qword_27237C4B0);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = *(v4 + 56) + v17;
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 16) = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

VoiceActions::VATinyASRModelInferenceMode_optional __swiftcall VATinyASRModelInferenceMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_272209C20@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t *sub_272209CFC@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_272209DCC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_272216154(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_272209EA8()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t sub_272209F28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_fuzzyKeywordsWithSpaces;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272209FE0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_blockInferenceRequestPendingFinalResult;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27220A024(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_blockInferenceRequestPendingFinalResult;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_27220A148(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v75 = a5;
  v69 = a4;
  v70 = a3;
  v71 = a1;
  v72 = a2;
  v7 = sub_272377EDC();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_272377ECC();
  MEMORY[0x28223BE20](v65);
  v64 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2723776EC();
  MEMORY[0x28223BE20](v10 - 8);
  v62 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState] = 0;
  v5[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadState] = 0;
  v73 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrDelegate;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal] = 0;
  v12 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotEndOfSpeech;
  type metadata accessor for SharedBool();
  v13 = sub_272244CEC(0, 0x664F646E45746F67, 0xEE00686365657053);
  v61 = v12;
  *&v5[v12] = v13;
  v14 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotFinalResult;
  v15 = sub_272244CEC(0, 0x6C616E6946746F67, 0xEE00746C75736552);
  v60 = v14;
  *&v5[v14] = v15;
  v16 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_shouldResetData;
  v17 = sub_272244CEC(0, 0x6552646C756F6873, 0xEF61746144746573);
  v59 = v16;
  *&v5[v16] = v17;
  v56 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult;
  *&v5[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentTasrResult] = 0;
  v57 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask;
  *&v5[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_sleepTask] = 0;
  v18 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadOutputActor;
  type metadata accessor for VATinyASRSpotter.VADOutputActor();
  v19 = swift_allocObject();
  swift_defaultActor_initialize();
  v58 = v18;
  *&v6[v18] = v19;
  v53 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeStartOfSpeech;
  *&v6[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeStartOfSpeech] = 0;
  v20 = &v6[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeUnblock];
  v20[1] = 0;
  v20[2] = 0;
  *v20 = 0;
  v54 = v20;
  v21 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_fuzzyKeywordsWithSpaces;
  v22 = MEMORY[0x277D84F90];
  v23 = sub_272216188(MEMORY[0x277D84F90]);
  v52 = v21;
  *&v6[v21] = v23;
  v6[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_blockInferenceRequestPendingFinalResult] = 0;
  v49 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadTask;
  *&v6[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadTask] = 0;
  v50 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector;
  *&v6[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector] = 0;
  v24 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate;
  *&v6[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate] = 0;
  v51 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech;
  *&v6[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_audioDuringSpeech] = 0;
  v25 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorAudioOutputStream;
  v26 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v27 = *(*(v26 - 8) + 56);
  v55 = v25;
  v27(&v6[v25], 1, 1, v26);
  v28 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorFeatureOutputStream;
  v29 = sub_2721F065C(&qword_280881908, &qword_27237C4F8);
  v30 = *(*(v29 - 8) + 56);
  v48 = v28;
  v30(&v6[v28], 1, 1, v29);
  v31 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_saveAudioQueue;
  v63 = sub_27221982C(0, &qword_280881910, 0x277D85C78);
  sub_2723776CC();
  v74[0] = v22;
  sub_2722197D4(&qword_280881918, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_2721F065C(&qword_280881920, &qword_27237C500);
  v32 = v75;
  sub_2722199BC(&qword_280881928, &qword_280881920, &qword_27237C500, MEMORY[0x277D83970]);
  v33 = v69;
  sub_27237815C();
  (*(v67 + 104))(v66, *MEMORY[0x277D85260], v68);
  v34 = v70;
  v35 = sub_272377F0C();
  v67 = v31;
  *&v6[v31] = v35;
  swift_unknownObjectWeakAssign();
  v68 = v24;
  *&v6[v24] = v34;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v36 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider;
  v37 = sub_27221629C(v33, &v6[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider]);
  v38 = (*((*MEMORY[0x277D85000] & *v32) + 0xB8))(v37);
  v39 = v38;
  if (v38)
  {
    *&v6[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrConfig] = v38;
    v40 = *(*v38 + 488);

    if (v40(v41))
    {
      type metadata accessor for VATransducer();
    }

    else
    {
      type metadata accessor for VACTCEncoder();
    }

    v43 = v47[1];
    v44 = static VACTCEncoder.build(config:debug:)(v39, 0);
    if (!v43)
    {
      v45 = v71;
      *&v6[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel] = v44;
      sub_272335304(v74);
      v6 = sub_272335390(v45, v75, v74);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      sub_2722039C8(v33);
      return v6;
    }

    sub_2722039C8(v33);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v42 = 0xD000000000000013;
    v42[1] = 0x8000000272388880;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_2722039C8(v33);
  }

  sub_272216300(&v6[v73]);
  sub_2722039C8(&v6[v36]);
  if (v39)
  {
  }

  swift_unknownObjectRelease();

  sub_2721F40F0(&v6[v55], &qword_2808819B8, &qword_27237C508);
  sub_2721F40F0(&v6[v48], &qword_2808819C0, &unk_27237C510);

  type metadata accessor for VATinyASRSpotter(0);
  swift_deallocPartialClassInstance();
  return v6;
}

void *static VATinyASRSpotter.buildForConfig(delegate:tasrDelegate:speechDetectorDelegate:tasrConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VAStrategyProviderPassthrough();
  v9 = sub_2722043D8();
  type metadata accessor for VAConfiguration();
  v10 = static VAConfiguration.buildForTasr(tasrConfig:)(a4);
  v13[3] = v8;
  v13[4] = &protocol witness table for VAStrategyProviderPassthrough;
  v13[0] = v9;
  v11 = objc_allocWithZone(type metadata accessor for VATinyASRSpotter(0));
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_27220A148(a1, a2, a3, v13, v10);
}

unint64_t sub_27220AAF0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for VARuntimeParameters(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((VARuntimeParameters.allKeywordsAreValid.getter() & 1) == 0)
  {
    v3 = 0x80000002723888A0;
    sub_2722032B4();
    swift_allocError();
    v15 = 0xD00000000000006DLL;
LABEL_7:
    *v14 = v15;
    v14[1] = v3;
    swift_willThrow();
    return v3;
  }

  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v1) + 0x78))();
  if (!v12)
  {
    v3 = 0x8000000272388910;
    sub_2722032B4();
    swift_allocError();
    v15 = 0xD000000000000011;
    goto LABEL_7;
  }

  v13 = v12;
  if ((*((*v11 & *v1) + 0x120))())
  {
  }

  else
  {
    type metadata accessor for VARequestContext(0);
    sub_272216374(a1, v10);
    v16 = sub_272232E00(v13, v10);
    (*((*v11 & *v1) + 0x128))(v16);
  }

  (*((*v11 & *v1) + 0x548))(a1);
  if (!v2)
  {
    v17 = sub_272377C3C();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v1;
    v19 = v1;
    v20 = sub_27220E6B4(0, 0, v7, &unk_27237C528, v18, MEMORY[0x277D839B0]);
    v21 = (*((*v11 & *v19) + 0x140))(v20);
    v22 = (*((*v11 & *v19) + 0x138))(v21);
    if (v22)
    {
      v3 = v22;

      return v3;
    }

    v3 = 0x8000000272388930;
    sub_2722032B4();
    swift_allocError();
    *v24 = 0xD00000000000001DLL;
    v24[1] = 0x8000000272388930;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_27220AF08(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_27237728C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_27220AFF8;

  return sub_27220B31C();
}

uint64_t sub_27220AFF8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_27220B17C;
  }

  else
  {
    v2 = sub_27220B10C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27220B10C()
{
  **(v0 + 16) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27220B17C(uint64_t a1)
{
  v2 = v1[7];
  v4 = v1[4];
  v3 = v1[5];
  v5 = v1[3];
  v6 = sub_2722C389C();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_27237725C();
  v9 = sub_272377E8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[7];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2721E4000, v8, v9, "Error processing audio: %@", v11, 0xCu);
    sub_2721F40F0(v12, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v12, -1, -1);
    MEMORY[0x2743C69C0](v11, -1, -1);
  }

  v16 = v1[4];
  v15 = v1[5];
  v17 = v1[3];

  (*(v16 + 8))(v15, v17);
  swift_willThrow();

  v18 = v1[1];

  return v18();
}

uint64_t sub_27220B31C()
{
  v1[10] = v0;
  type metadata accessor for VARuntimeParameters(0);
  v1[11] = swift_task_alloc();
  v2 = sub_27237728C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27220B42C, 0, 0);
}

uint64_t sub_27220B42C()
{
  v1 = v0[10];
  if (*(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState))
  {
    *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 0;
    v1 = v0[10];
  }

  *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_usedPartialAsFinal) = 0;
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))(0);
  v3 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel;
  v0[18] = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel;
  v4 = *(**(v1 + v3) + 968);

  v4(v5);
  v0[19] = 0;

  type metadata accessor for VACircularMatrixBuffer();
  v7 = *(**(*(v1 + v3) + 168) + 248);

  v9 = v7(v8);

  v10 = *(**(*(v1 + v3) + 168) + 440);

  v12 = v10(v11);

  v0[20] = sub_272302780(v9, v12);
  type metadata accessor for VATinyASRFeatureExtract();
  v13 = VATinyASRFeatureExtract.__allocating_init()();
  v0[21] = v13;
  v14 = *(**(*(v1 + v3) + 168) + 248);

  v16 = v14(v15);

  v17 = *(**(*(v1 + v3) + 168) + 296);

  v19 = v17(v18);

  v0[22] = v16 - v19;
  if (__OFSUB__(v16, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v16 - v19 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v21 = v0[10];
  v22 = swift_allocObject();
  v0[23] = v22;
  *(v22 + 16) = 0;
  v23 = (*((*v2 & *v21) + 0x120))();
  v0[24] = v23;
  if (v23)
  {
    v24 = v23;
    v25 = v0[10];
    v26 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeUnblock;
    v0[25] = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_lastModelInputBeforeUnblock;
    v27 = (v25 + v26);
    v27[1] = 0;
    v27[2] = 0;
    *v27 = 0;

    v31 = *v24 + 368;
    v28 = *v31;
    v0[26] = *v31;
    v0[27] = v31 & 0xFFFFFFFFFFFFLL | 0x454C000000000000;
    v32 = (v28 + *v28);
    v29 = swift_task_alloc();
    v0[28] = v29;
    *v29 = v0;
    v29[1] = sub_27220B93C;

    return v32();
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v30 = 0xD000000000000022;
    v30[1] = 0x8000000272388E30;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_27220B93C(char a1)
{
  *(*v1 + 466) = a1;

  return MEMORY[0x2822009F8](sub_27220BA3C, 0, 0);
}

uint64_t sub_27220BA3C(uint64_t a1)
{
  if (*(v1 + 466) == 1)
  {
    v2 = *(v1 + 152);
    v4 = *(v1 + 104);
    v3 = *(v1 + 112);
    v5 = *(v1 + 96);
    v6 = sub_2722C389C();
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_27237725C();
    v8 = sub_272377E7C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2721E4000, v7, v8, "Processing loop done, reset tasr model", v9, 2u);
      MEMORY[0x2743C69C0](v9, -1, -1);
    }

    v10 = *(v1 + 144);
    v12 = *(v1 + 104);
    v11 = *(v1 + 112);
    v13 = *(v1 + 96);
    v14 = *(v1 + 80);

    (*(v12 + 8))(v11, v13);
    v15 = *(**(v14 + v10) + 968);

    v17 = v15(v16);
    *(v1 + 440) = v18;
    if (v2)
    {
      v21 = *(v1 + 168);

      v22 = *(v1 + 8);
LABEL_6:

      return v22();
    }

    v57 = v17;
    v58 = v18;
    v59 = v19;
    v60 = v20;

    v61 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v61 = v57 & 0xFFFFFFFFFFFFLL;
    }

    if (!v61)
    {

      (*((*MEMORY[0x277D85000] & **(v1 + 80)) + 0x220))(0);
      v65 = *(v1 + 168);

      v22 = *(v1 + 8);
      goto LABEL_6;
    }

    v62 = *(v1 + 184);
    swift_beginAccess();
    v63 = *(v62 + 16);
    v64 = swift_task_alloc();
    *(v1 + 448) = v64;
    *v64 = v1;
    v64[1] = sub_27220E018;

    return sub_272217F10(v57, v58, v59 & 1, v63, v60);
  }

  else
  {
    v24 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadOutputActor;
    *(v1 + 232) = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_shouldResetData;
    *(v1 + 240) = v24;
    v25 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotFinalResult;
    *(v1 + 248) = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrConfig;
    *(v1 + 256) = v25;
    v26 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_saveAudioQueue;
    *(v1 + 264) = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_gotEndOfSpeech;
    *(v1 + 272) = v26;
    swift_beginAccess();
    v27 = *(**(*(v1 + 80) + *(v1 + 232)) + 160);

    LOBYTE(v27) = v27(v28);

    if (v27)
    {
      v29 = *(v1 + 136);
      v30 = *(v1 + 96);
      v31 = *(v1 + 104);
      v32 = sub_2722C389C();
      (*(v31 + 16))(v29, v32, v30);
      v33 = sub_27237725C();
      v34 = sub_272377E7C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2721E4000, v33, v34, "Reset state after getting no results for vad output", v35, 2u);
        MEMORY[0x2743C69C0](v35, -1, -1);
      }

      v36 = *(v1 + 232);
      v67 = *(v1 + 240);
      v38 = *(v1 + 184);
      v37 = *(v1 + 192);
      v39 = *(v1 + 160);
      v40 = *(v1 + 136);
      v41 = *(v1 + 96);
      v42 = *(v1 + 104);
      v43 = *(v1 + 80);

      (*(v42 + 8))(v40, v41);
      v44 = *(**&v43[v36] + 168);

      v44(0);

      v45 = *&v43[v67];
      *(v1 + 280) = v45;
      v46 = swift_allocObject();
      *(v1 + 288) = v46;
      v46[2] = v38;
      v46[3] = v37;
      v46[4] = v39;
      v46[5] = v43;
      v47 = *(*v45 + 88);

      v48 = v43;
      v66 = (v47 + *v47);
      v49 = swift_task_alloc();
      *(v1 + 296) = v49;
      *v49 = v1;
      v49[1] = sub_27220C20C;

      return (v66)(&unk_27237CAC8, v46);
    }

    else
    {
      v50 = *(v1 + 184);
      v51 = *(v50 + 16);
      v52 = __CFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        __break(1u);
      }

      else
      {
        v54 = *(v1 + 192);
        *(v50 + 16) = v53;
        v55 = sub_27222CD4C();
        v68 = (*(*v54 + 384) + **(*v54 + 384));
        v56 = swift_task_alloc();
        *(v1 + 312) = v56;
        *v56 = v1;
        v56[1] = sub_27220C480;

        return v68(0, 1, v55 & 1);
      }
    }
  }

  return result;
}

uint64_t sub_27220C20C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_27220E370;
  }

  else
  {

    v2 = sub_27220C330;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_27220C330(uint64_t result)
{
  v3 = v1[23];
  v4 = *(v3 + 16);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v7 = v1[24];
    *(v3 + 16) = v6;
    v8 = sub_27222CD4C();
    v10 = (*(*v7 + 384) + **(*v7 + 384));
    v9 = swift_task_alloc();
    v1[39] = v9;
    *v9 = v1;
    v9[1] = sub_27220C480;

    v10(0, 1, v8 & 1);
  }
}

uint64_t sub_27220C480(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {
    v7 = sub_27220E440;
  }

  else
  {
    *(v6 + 328) = a2;
    *(v6 + 336) = a1;
    v7 = sub_27220C5B4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_27220C5B4()
{
  v81 = v0;
  v1 = *(v0 + 336);
  if (v1)
  {
    v2 = *(v0 + 328);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = *(v0 + 336);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (!*(v3 + 16))
  {
    v10 = *(v0 + 128);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);

    v13 = sub_2722C389C();
    (*(v12 + 16))(v10, v13, v11);
    v14 = sub_27237725C();
    v15 = sub_272377E7C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2721E4000, v14, v15, "processing was stopped, stop predictions", v16, 2u);
      MEMORY[0x2743C69C0](v16, -1, -1);
    }

    v17 = *(v0 + 128);
    v18 = *(v0 + 96);
    v19 = *(v0 + 104);

    (*(v19 + 8))(v17, v18);
    v20 = *(v0 + 320);
    v22 = *(v0 + 104);
    v21 = *(v0 + 112);
    v23 = *(v0 + 96);
    v24 = sub_2722C389C();
    (*(v22 + 16))(v21, v24, v23);
    v25 = sub_27237725C();
    v26 = sub_272377E7C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2721E4000, v25, v26, "Processing loop done, reset tasr model", v27, 2u);
      MEMORY[0x2743C69C0](v27, -1, -1);
    }

    v28 = *(v0 + 144);
    v30 = *(v0 + 104);
    v29 = *(v0 + 112);
    v31 = *(v0 + 96);
    v32 = *(v0 + 80);

    (*(v30 + 8))(v29, v31);
    v33 = *(**(v32 + v28) + 968);

    v35 = v33(v34);
    *(v0 + 440) = v36;
    if (v20)
    {
      v39 = *(v0 + 168);

      v40 = *(v0 + 8);
    }

    else
    {
      v58 = v35;
      v59 = v36;
      v60 = v37;
      v61 = v38;

      v62 = HIBYTE(v59) & 0xF;
      if ((v59 & 0x2000000000000000) == 0)
      {
        v62 = v58 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {
        v63 = *(v0 + 184);
        swift_beginAccess();
        v64 = *(v63 + 16);
        v65 = swift_task_alloc();
        *(v0 + 448) = v65;
        *v65 = v0;
        v65[1] = sub_27220E018;

        return sub_272217F10(v58, v59, v60 & 1, v64, v61);
      }

      (*((*MEMORY[0x277D85000] & **(v0 + 80)) + 0x220))(0);
      v73 = *(v0 + 168);

      v40 = *(v0 + 8);
    }

    return v40();
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & **(v0 + 168)) + 0x170))();

  (*(*v5 + 168))(v7);

  if (!v4)
  {
    __break(1u);
    return result;
  }

  if (*(*(v0 + 184) + 16) % *(v0 + 176))
  {
    goto LABEL_10;
  }

  v41 = *(**(*(v0 + 80) + *(v0 + 248)) + 536);

  v41(&v80, v42);

  *(v0 + 464) = v80;
  *(v0 + 465) = 1;
  sub_272219A30();
  sub_272377A8C();
  v43 = sub_272377A8C();
  if (*(v0 + 64) == *(v0 + 72))
  {
    v44 = *(v0 + 88);
    (*(**(v0 + 192) + 312))(v43);
    v45 = *(v44 + 78);
    v46 = sub_272216BD8(v44);
    if (v45 == 1 && ((*((*v6 & **(v0 + 80)) + 0x498))(v46) & 1) == 0)
    {
      v74 = *(v0 + 184);
      v75 = (*(v0 + 80) + *(v0 + 200));
      v76 = (*(**(v0 + 160) + 176))();
      v77 = *(v74 + 16);
      *v75 = v76;
      v75[1] = v77;
      v75[2] = v2;

LABEL_10:
      *(v0 + 424) = *(v0 + 320);
      v79 = (*(v0 + 208) + **(v0 + 208));
      v9 = swift_task_alloc();
      *(v0 + 432) = v9;
      *v9 = v0;
      v9[1] = sub_27220D7A0;

      return v79();
    }
  }

  v47 = *(v0 + 80);
  v48 = (v47 + *(v0 + 200));
  v49 = *v48;
  if (*v48)
  {
    v51 = v48[1];
    v50 = v48[2];
    v52 = *(v47 + *(v0 + 240));
    *(v0 + 344) = v52;
    v53 = swift_allocObject();
    *(v0 + 352) = v53;
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    *(v0 + 360) = v54;
    v54[2] = v53;
    v54[3] = v49;
    v54[4] = v51;
    v54[5] = v50;
    v55 = *(*v52 + 88);

    v78 = (v55 + *v55);
    v56 = swift_task_alloc();
    *(v0 + 368) = v56;
    *v56 = v0;
    v56[1] = sub_27220D004;
    v57 = &unk_27237CAB8;
  }

  else
  {
    v66 = *(v0 + 184);
    v67 = *(v0 + 160);
    if (*(v0 + 336))
    {
      v68 = *(v0 + 328);
    }

    else
    {
      v68 = 0;
    }

    v69 = *(v47 + *(v0 + 240));
    *(v0 + 384) = v69;
    v70 = swift_allocObject();
    *(v0 + 392) = v70;
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    *(v0 + 400) = v54;
    v54[2] = v70;
    v54[3] = v67;
    v54[4] = v66;
    v54[5] = v68;
    v71 = *(*v69 + 88);

    v78 = (v71 + *v71);
    v72 = swift_task_alloc();
    *(v0 + 408) = v72;
    *v72 = v0;
    v72[1] = sub_27220D3D4;
    v57 = &unk_27237CAA8;
  }

  return (v78)(v57, v54);
}

uint64_t sub_27220D004()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_27220E4FC;
  }

  else
  {

    v2 = sub_27220D134;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27220D134(uint64_t a1)
{
  v2 = v1[15];
  v3 = v1[12];
  v4 = v1[13];
  v5 = sub_2722C389C();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_27237725C();
  v7 = sub_272377E7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "reset model input from before unblock after using it", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  v9 = v1[25];
  v10 = v1[15];
  v11 = v1[12];
  v12 = v1[13];
  v13 = v1[10];

  v14 = (v13 + v9);
  (*(v12 + 8))(v10, v11);
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;

  v15 = v1[23];
  v16 = v1[20];
  if (v1[42])
  {
    v17 = v1[41];
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v1[10] + v1[30]);
  v1[48] = v18;
  v19 = swift_allocObject();
  v1[49] = v19;
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v1[50] = v20;
  v20[2] = v19;
  v20[3] = v16;
  v20[4] = v15;
  v20[5] = v17;
  v21 = *(*v18 + 88);

  v24 = (v21 + *v21);
  v22 = swift_task_alloc();
  v1[51] = v22;
  *v22 = v1;
  v22[1] = sub_27220D3D4;

  return (v24)(&unk_27237CAA8, v20);
}

uint64_t sub_27220D3D4()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_27220E5D8;
  }

  else
  {

    v2 = sub_27220D504;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27220D504()
{
  v1 = *(**(*(v0 + 80) + *(v0 + 256)) + 160);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    v3 = *(**(*(v0 + 80) + *(v0 + 264)) + 160);

    LOBYTE(v3) = v3(v4);

    v5 = *(v0 + 416);
    if (v3)
    {
      v6 = *(v0 + 80);
      v7 = swift_task_alloc();
      v7[2] = v6;
      v7[3] = 0xD000000000000012;
      v7[4] = 0x8000000272388E60;
      sub_272377EEC();
      if (v5)
      {

        v8 = *(v0 + 8);

        return v8();
      }
    }
  }

  else
  {
    v5 = *(v0 + 416);
  }

  *(v0 + 424) = v5;
  v11 = (*(v0 + 208) + **(v0 + 208));
  v10 = swift_task_alloc();
  *(v0 + 432) = v10;
  *v10 = v0;
  v10[1] = sub_27220D7A0;

  return v11();
}

uint64_t sub_27220D7A0(char a1)
{
  *(*v1 + 467) = a1;

  return MEMORY[0x2822009F8](sub_27220D8A0, 0, 0);
}

uint64_t sub_27220D8A0(uint64_t a1)
{
  if (*(v1 + 467))
  {
    v2 = *(v1 + 424);
    v4 = *(v1 + 104);
    v3 = *(v1 + 112);
    v5 = *(v1 + 96);
    v6 = sub_2722C389C();
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_27237725C();
    v8 = sub_272377E7C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2721E4000, v7, v8, "Processing loop done, reset tasr model", v9, 2u);
      MEMORY[0x2743C69C0](v9, -1, -1);
    }

    v10 = *(v1 + 144);
    v12 = *(v1 + 104);
    v11 = *(v1 + 112);
    v13 = *(v1 + 96);
    v14 = *(v1 + 80);

    (*(v12 + 8))(v11, v13);
    v15 = *(**(v14 + v10) + 968);

    v17 = v15(v16);
    *(v1 + 440) = v18;
    if (v2)
    {
      v21 = *(v1 + 168);

      v22 = *(v1 + 8);
LABEL_6:

      return v22();
    }

    v54 = v17;
    v55 = v18;
    v56 = v19;
    v57 = v20;

    v58 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v58 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (!v58)
    {

      (*((*MEMORY[0x277D85000] & **(v1 + 80)) + 0x220))(0);
      v62 = *(v1 + 168);

      v22 = *(v1 + 8);
      goto LABEL_6;
    }

    v59 = *(v1 + 184);
    swift_beginAccess();
    v60 = *(v59 + 16);
    v61 = swift_task_alloc();
    *(v1 + 448) = v61;
    *v61 = v1;
    v61[1] = sub_27220E018;

    return sub_272217F10(v54, v55, v56 & 1, v60, v57);
  }

  else
  {
    v24 = *(**(*(v1 + 80) + *(v1 + 232)) + 160);

    LOBYTE(v24) = v24(v25);

    if (v24)
    {
      v26 = *(v1 + 136);
      v27 = *(v1 + 96);
      v28 = *(v1 + 104);
      v29 = sub_2722C389C();
      (*(v28 + 16))(v26, v29, v27);
      v30 = sub_27237725C();
      v31 = sub_272377E7C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2721E4000, v30, v31, "Reset state after getting no results for vad output", v32, 2u);
        MEMORY[0x2743C69C0](v32, -1, -1);
      }

      v33 = *(v1 + 232);
      v64 = *(v1 + 240);
      v35 = *(v1 + 184);
      v34 = *(v1 + 192);
      v36 = *(v1 + 160);
      v37 = *(v1 + 136);
      v38 = *(v1 + 96);
      v39 = *(v1 + 104);
      v40 = *(v1 + 80);

      (*(v39 + 8))(v37, v38);
      v41 = *(**&v40[v33] + 168);

      v41(0);

      v42 = *&v40[v64];
      *(v1 + 280) = v42;
      v43 = swift_allocObject();
      *(v1 + 288) = v43;
      v43[2] = v35;
      v43[3] = v34;
      v43[4] = v36;
      v43[5] = v40;
      v44 = *(*v42 + 88);

      v45 = v40;
      v63 = (v44 + *v44);
      v46 = swift_task_alloc();
      *(v1 + 296) = v46;
      *v46 = v1;
      v46[1] = sub_27220C20C;

      return (v63)(&unk_27237CAC8, v43);
    }

    else
    {
      v47 = *(v1 + 184);
      v48 = *(v47 + 16);
      v49 = __CFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        __break(1u);
      }

      else
      {
        v51 = *(v1 + 192);
        *(v47 + 16) = v50;
        v52 = sub_27222CD4C();
        v65 = (*(*v51 + 384) + **(*v51 + 384));
        v53 = swift_task_alloc();
        *(v1 + 312) = v53;
        *v53 = v1;
        v53[1] = sub_27220C480;

        return v65(0, 1, v52 & 1);
      }
    }
  }

  return result;
}

uint64_t sub_27220E018()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_27220E2A8;
  }

  else
  {

    v2 = sub_27220E134;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27220E134()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 80)) + 0x220))(0);
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27220E2A8()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27220E370()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27220E440()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27220E4FC()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27220E5D8()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27220E6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2721F07F4(a3, v23 - v10, &qword_2808819D8, &qword_27237CB50);
  v12 = sub_272377C3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_272377BDC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_2723778BC() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_27220E960(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v141 - v5;
  v7 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v148 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v145 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v9;
  MEMORY[0x28223BE20](v8);
  v147 = &v141 - v10;
  v11 = sub_2721F065C(&qword_2808819B8, &qword_27237C508);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v146 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v149 = &v141 - v14;
  v15 = type metadata accessor for VARuntimeParameters(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v165 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v156 = &v141 - v18;
  v19 = sub_27237728C();
  v154 = *(v19 - 8);
  v155 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v152 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v150 = &v141 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v141 - v25;
  v27 = MEMORY[0x277D85000];
  v28 = *((*MEMORY[0x277D85000] & *v1) + 0x120);
  v29 = v28(v24);
  if (!v29)
  {
    sub_2722032B4();
    swift_allocError();
    *v37 = 0xD00000000000001DLL;
    v37[1] = 0x8000000272388950;
    return swift_willThrow();
  }

  v142 = v7;
  v143 = v6;
  v30 = *(*v29 + 344);
  v153 = v29;
  v30(a1);
  v31 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider + 24);
  v32 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider + 32);
  sub_27220300C((v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_strategyProvider), v31);
  v33 = (*(v32 + 8))(v1, &protocol witness table for VAKeywordSpotterBase, a1, v31, v32);
  (*((*v27 & *v1) + 0x158))(v33);
  v151 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrConfig;
  v34 = *(**(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrConfig) + 488);

  LOBYTE(v34) = v34(v35);

  if (v34)
  {
    v141 = a1;
  }

  else
  {
    v39 = mach_absolute_time();
    v40 = *(v1 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel);

    v41 = sub_27234ED24();
    v42 = v157;
    (*(*v40 + 912))(v41);
    if (v42)
    {
    }

    v141 = a1;
    v162 = v1;
    v157 = 0;

    v43 = sub_2722C389C();
    (*(v154 + 16))(v26, v43, v155);
    v44 = sub_27237725C();
    v45 = sub_272377E6C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      type metadata accessor for VARequestContext(0);
      v47 = mach_absolute_time();
      v48 = v47 >= v39;
      v49 = v47 - v39;
      if (!v48)
      {
        goto LABEL_67;
      }

      *(v46 + 4) = sub_2722310BC(v49);
      _os_log_impl(&dword_2721E4000, v44, v45, "Updating context took %f secs", v46, 0xCu);
      MEMORY[0x2743C69C0](v46, -1, -1);
    }

    v36 = (*(v154 + 8))(v26, v155);
    v2 = v162;
  }

  v50 = v28(v36);
  if (!v50)
  {
LABEL_30:
    v87 = *(**(v2 + v151) + 536);

    v87(v167, v88);

    if (LOBYTE(v167[0]))
    {
      if (LOBYTE(v167[0]) == 1)
      {
        *(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector) = 0;

        if (*(v141 + 78) == 1)
        {
          if (*(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) != 3)
          {
            (*((*MEMORY[0x277D85000] & *v2) + 0x4A0))(0);
            v116 = v157;
            sub_27220FC48();
            if (!v116)
            {
            }
          }

          if (((*((*MEMORY[0x277D85000] & *v2) + 0x498))(v89) & 1) == 0)
          {
            v127 = sub_2722C389C();
            (*(v154 + 16))(v150, v127, v155);
            v128 = sub_27237725C();
            v129 = sub_272377E7C();
            if (os_log_type_enabled(v128, v129))
            {
              v130 = swift_slowAlloc();
              *v130 = 0;
              _os_log_impl(&dword_2721E4000, v128, v129, "block inference requested, but waiting for final", v130, 2u);
              MEMORY[0x2743C69C0](v130, -1, -1);
            }

            (*(v154 + 8))(v150, v155);
            (*((*MEMORY[0x277D85000] & *v2) + 0x4A0))(1);
          }

          sub_2722032B4();
          swift_allocError();
          *v90 = 0xD000000000000052;
          v90[1] = 0x8000000272388970;
LABEL_41:
          swift_willThrow();
        }

        v97 = sub_2722C389C();
        (*(v154 + 16))(v152, v97, v155);
        v98 = sub_27237725C();
        v99 = sub_272377E7C();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&dword_2721E4000, v98, v99, "Unblock inference", v100, 2u);
          MEMORY[0x2743C69C0](v100, -1, -1);
        }

        (*(v154 + 8))(v152, v155);
        if (*(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) != 1)
        {
          *(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState) = 1;
        }

        v101 = *(**(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_tasrModel) + 952);

        v101(v102);
      }

      v93 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState;
      if (!*(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState))
      {
        type metadata accessor for VASpeechDetector(0);
        v103 = v151;
        v104 = *(**(v2 + v151) + 272);

        v106 = v104(v105);
        v107 = v2;
        v109 = v108;

        v110 = *(**&v107[v103] + 512);

        v110(&v168, v111);

        LOBYTE(v166[0]) = v168;
        swift_unknownObjectRetain();
        v112 = v106;
        v113 = v107;
        v114 = v157;
        v115 = VASpeechDetector.__allocating_init(modelFilename:featureCount:delegate:)(v112, v109, v166, v107);
        if (!v114)
        {
          v117 = v115;
          *&v107[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector] = v115;

          v118 = v141;
          v119 = *(v141 + 52);
          v120 = sub_2721F7EE4();
          v121 = v149;
          (*(*v117 + 672))(v120 & 1, v119);

          v122 = v148;
          v123 = v142;
          (*(v148 + 56))(v121, 0, 1, v142);
          v124 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorAudioOutputStream;
          swift_beginAccess();
          sub_272216C34(v121, &v107[v124]);
          swift_endAccess();
          v125 = &v107[v124];
          v126 = v146;
          sub_2721F07F4(v125, v146, &qword_2808819B8, &qword_27237C508);
          if ((*(v122 + 48))(v126, 1, v123) == 1)
          {

            result = sub_2721F40F0(v126, &qword_2808819B8, &qword_27237C508);
          }

          else
          {
            v157 = 0;
            v164 = *(v122 + 32);
            v131 = v147;
            (v164)(v147, v126, v123);
            LODWORD(v165) = *(v118 + 76);
            v132 = sub_272377C3C();
            (*(*(v132 - 8) + 56))(v143, 1, 1, v132);
            v133 = v145;
            (*(v122 + 16))(v145, v131, v123);
            v134 = v122;
            v135 = (*(v122 + 80) + 40) & ~*(v122 + 80);
            v136 = v135 + v144;
            v137 = swift_allocObject();
            v137[2] = 0;
            v137[3] = 0;
            v137[4] = v107;
            (v164)(v137 + v135, v133, v123);
            *(v137 + v136) = v165;
            v113 = v107;
            v138 = v107;
            v139 = v143;
            v140 = sub_272215108(0, 0, v143, &unk_27237C538, v137);

            sub_2721F40F0(v139, &qword_2808819D8, &qword_27237CB50);
            (*(v134 + 8))(v147, v123);
            *&v138[OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_vadTask] = v140;
          }

          if (v113[v93] != 1)
          {
            v113[v93] = 1;
          }

          return result;
        }
      }

      v168 = 0;
      v169 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000022, 0x80000002723889D0);
      v92 = *(v2 + v93);
    }

    else
    {
      v91 = OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState;
      if (!*(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_currentState))
      {

        *(v2 + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetector) = 0;

        if (*(v2 + v91) != 1)
        {
          *(v2 + v91) = 1;
        }

        return result;
      }

      v168 = 0;
      v169 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD00000000000001ALL, 0x8000000272388A00);
      v92 = *(v2 + v91);
    }

    LOBYTE(v166[0]) = v92;
    sub_27237836C();
    v94 = v168;
    v95 = v169;
    sub_2722032B4();
    swift_allocError();
    *v96 = v94;
    v96[1] = v95;
    goto LABEL_41;
  }

  v51 = v165;
  (*(*v50 + 312))(v50);

  sub_2722164B8(v51, v156);
  v52 = *MEMORY[0x277D85000] & *v2;
  v160 = *(v52 + 0x490);
  v161 = v52 + 1168;
  v53 = v160(&v168);
  v55 = v54;

  *v55 = MEMORY[0x277D84F98];
  v53(&v168, 0);
  v56 = VARuntimeParameters.keywordsNoThresholds.getter();
  v57 = v56;
  v159 = *(v56 + 2);
  if (!v159)
  {
LABEL_29:
    sub_272216BD8(v156);

    goto LABEL_30;
  }

  v58 = 0;
  v59 = (v56 + 40);
  v162 = v2;
  v158 = v56;
  while (v58 < *(v57 + 2))
  {
    v163 = v59;
    v164 = v58;
    v61 = *v59;
    v165 = *(v59 - 1);
    v168 = v165;
    v169 = v61;
    v167[0] = 95;
    v167[1] = 0xE100000000000000;
    v166[0] = 32;
    v166[1] = 0xE100000000000000;
    sub_272203AC4();

    sub_2723780FC();
    v62 = sub_2723778AC();
    v64 = v63;

    v65 = sub_272216A58(v62, v64);
    v67 = v66;

    v68 = v160(&v168);
    v70 = v69;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167[0] = *v70;
    v72 = v167[0];
    *v70 = 0x8000000000000000;
    v74 = sub_27220038C(v65, v67);
    v75 = *(v72 + 16);
    v76 = (v73 & 1) == 0;
    v77 = v75 + v76;
    if (__OFADD__(v75, v76))
    {
      goto LABEL_65;
    }

    v78 = v73;
    if (*(v72 + 24) >= v77)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v81 = v167[0];
        if (v73)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_272215E14();
        v81 = v167[0];
        if (v78)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_272215B54(v77, isUniquelyReferenced_nonNull_native);
      v79 = sub_27220038C(v65, v67);
      if ((v78 & 1) != (v80 & 1))
      {
        goto LABEL_68;
      }

      v74 = v79;
      v81 = v167[0];
      if (v78)
      {
LABEL_15:
        v60 = (v81[7] + 16 * v74);
        *v60 = v165;
        v60[1] = v61;

        goto LABEL_16;
      }
    }

    v81[(v74 >> 6) + 8] |= 1 << v74;
    v82 = (v81[6] + 16 * v74);
    *v82 = v65;
    v82[1] = v67;
    v83 = (v81[7] + 16 * v74);
    *v83 = v165;
    v83[1] = v61;
    v84 = v81[2];
    v85 = __OFADD__(v84, 1);
    v86 = v84 + 1;
    if (v85)
    {
      goto LABEL_66;
    }

    v81[2] = v86;
LABEL_16:
    v58 = v164 + 1;
    *v70 = v81;
    v68(&v168, 0);
    v2 = v162;
    v59 = v163 + 2;
    v57 = v158;
    if (v159 == v58)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = sub_2723786BC();
  __break(1u);
  return result;
}