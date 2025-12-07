uint64_t sub_22BD5B764()
{
  v1 = sub_22BDB96E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 128);
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  sub_22BDB96C4();
  (*(v2 + 8))(v4, v1);
  sub_22BDB98D4();
}

uint64_t sub_22BD5B890(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  type metadata accessor for EventPayloadWithPreassignedID(0);
  return a1;
}

void sub_22BD5B954()
{
  sub_22BB30F94();
  v1 = v0;
  v3 = v2;
  v4 = sub_22BB30F68();
  v52 = v5(v4);
  sub_22BB30444();
  v7 = v6;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  v51 = &v44 - v9;
  v10 = *v0;
  v11 = sub_22BB37074();
  sub_22BBE6DE0(v11, v12);
  v49 = v3;
  v13 = sub_22BDBB514();
  if (!v10[2])
  {
LABEL_30:

LABEL_31:
    *v1 = v13;
    sub_22BB314EC();
    return;
  }

  v14 = 0;
  v15 = v10 + 8;
  sub_22BD5FC48();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v45 = v0;
  v46 = (v7 + 16);
  v47 = v10;
  v48 = v7;
  v50 = (v7 + 32);
  if ((v17 & v16) == 0)
  {
LABEL_4:
    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v14 >= v20)
      {
        break;
      }

      ++v22;
      if (v15[v14])
      {
        sub_22BD61734();
        v18 = v24 & v23;
        goto LABEL_9;
      }
    }

    if ((v49 & 1) == 0)
    {

      v1 = v45;
      goto LABEL_31;
    }

    sub_22BD61774();
    v1 = v45;
    if (v39 != v40)
    {
      sub_22BD638D4();
      *v15 = v41;
    }

    else
    {
      v42 = sub_22BD61724();
      sub_22BBC0B54(v42, v43, v15);
    }

    v10[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_9:
    v25 = v21 | (v14 << 6);
    v26 = v10[7];
    v27 = (v10[6] + 16 * v25);
    v29 = *v27;
    v28 = v27[1];
    v30 = *(v48 + 72);
    v31 = v26 + v30 * v25;
    if (v49)
    {
      (*v50)(v51, v31, v52);
    }

    else
    {
      (*v46)(v51, v31, v52);
    }

    sub_22BDBB814();
    sub_22BDBAC54();
    sub_22BDBB834();
    sub_22BD60BF0();
    sub_22BD63668();
    if (v32)
    {
      break;
    }

    sub_22BD64BCC();
LABEL_22:
    sub_22BD638E0(v33);
    v38 = (v13[6] + 16 * v37);
    *v38 = v29;
    v38[1] = v28;
    (*v50)((v13[7] + v30 * v37), v51, v52);
    ++v13[2];
    v10 = v47;
    if (!v18)
    {
      goto LABEL_4;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v32)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    if (v13[v34 + 8] != -1)
    {
      sub_22BD64BB8();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22BD5BC2C()
{
  sub_22BB30F94();
  sub_22BBC0518();
  v3 = sub_22BDB7B44();
  sub_22BB30444();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = v8 - v7;
  sub_22BB93D5C();
  sub_22BBE6DE0(&qword_27D8E6648, &qword_22BDCE5D8);
  v10 = sub_22BB37494();
  v12 = sub_22BB6FF00(v10, v11);
  if (!*(v1 + 16))
  {
LABEL_30:

LABEL_31:
    *v0 = v12;
    sub_22BB314EC();
    return;
  }

  v35 = v0;
  v13 = 0;
  v14 = (v1 + 64);
  sub_22BD5FC48();
  sub_22BD63058();
  if (!v2)
  {
LABEL_4:
    v15 = v13;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v13 >= v9)
      {
        break;
      }

      ++v15;
      if (v14[v13])
      {
        sub_22BD61734();
        v2 = v17 & v16;
        goto LABEL_9;
      }
    }

    if ((v36 & 1) == 0)
    {

      v0 = v35;
      goto LABEL_31;
    }

    sub_22BD61774();
    v0 = v35;
    if (v30 != v31)
    {
      sub_22BD638D4();
      *v14 = v32;
    }

    else
    {
      v33 = sub_22BD61724();
      sub_22BBC0B54(v33, v34, v14);
    }

    *(v1 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_22BBB63F4();
LABEL_9:
    sub_22BD638B4();
    if (v18)
    {
      v19 = sub_22BD61C30();
      v20(v19);
    }

    else
    {
      v21 = sub_22BD61C30();
      v22(v21);
    }

    sub_22BB3B194(&qword_27D8E3070, MEMORY[0x277D1D608]);
    sub_22BB69A84();
    v1 = v3;
    sub_22BDBABA4();
    sub_22BD60BF0();
    sub_22BD63668();
    if (v23)
    {
      break;
    }

    sub_22BD61144();
LABEL_22:
    sub_22BB72B90();
    v28 = sub_22BD63030(v27);
    v29(v28);
    sub_22BD635FC();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v23)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    if (*(v5 + 8 * v24) != -1)
    {
      sub_22BB9748C();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22BD5BEA8()
{
  sub_22BB30F94();
  sub_22BBC0518();
  v3 = sub_22BDB4C34();
  sub_22BB30444();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = v8 - v7;
  sub_22BB93D5C();
  sub_22BBE6DE0(&qword_27D8E6688, &qword_22BDCE630);
  v10 = sub_22BB37494();
  v12 = sub_22BB6FF00(v10, v11);
  if (!*(v1 + 16))
  {
LABEL_30:

LABEL_31:
    *v0 = v12;
    sub_22BB314EC();
    return;
  }

  v36 = v0;
  v13 = 0;
  v14 = (v1 + 64);
  sub_22BD5FC48();
  sub_22BD63058();
  if (!v2)
  {
LABEL_4:
    v15 = v13;
    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v13 >= v9)
      {
        break;
      }

      ++v15;
      if (v14[v13])
      {
        sub_22BD61734();
        v2 = v17 & v16;
        goto LABEL_9;
      }
    }

    if ((v37 & 1) == 0)
    {

      v0 = v36;
      goto LABEL_31;
    }

    sub_22BD61774();
    v0 = v36;
    if (v31 != v32)
    {
      sub_22BD638D4();
      *v14 = v33;
    }

    else
    {
      v34 = sub_22BD61724();
      sub_22BBC0B54(v34, v35, v14);
    }

    *(v1 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_22BBB63F4();
LABEL_9:
    sub_22BD638B4();
    if (v18)
    {
      v19 = sub_22BD61C30();
      v20(v19);
    }

    else
    {
      v21 = sub_22BD61C30();
      v22(v21);
    }

    sub_22BB52EBC();
    sub_22BB3B194(&qword_28142DD18, v23);
    sub_22BB69A84();
    v1 = v3;
    sub_22BDBABA4();
    sub_22BD60BF0();
    sub_22BD63668();
    if (v24)
    {
      break;
    }

    sub_22BD61144();
LABEL_22:
    sub_22BB72B90();
    v29 = sub_22BD63030(v28);
    v30(v29);
    sub_22BD635FC();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (*(v5 + 8 * v25) != -1)
    {
      sub_22BB9748C();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22BD5C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  sub_22BB30F68();
  v79 = sub_22BDB4C34();
  sub_22BB30444();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22BB305A8();
  v78 = v29;
  v30 = sub_22BB2F120();
  type metadata accessor for FeedbackLearning.CandidateParameter(v30);
  sub_22BB30444();
  v81 = v32;
  v82 = v31;
  MEMORY[0x28223BE20](v31);
  sub_22BB30560();
  v80 = v33;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v34);
  v36 = &v73 - v35;
  v37 = *v20;
  sub_22BBE6DE0(&qword_27D8E4020, &qword_22BDC1828);
  sub_22BB95B5C();
  v83 = v25;
  v38 = sub_22BDBB514();
  if (!v37[2])
  {
LABEL_36:

LABEL_37:
    *v23 = v38;
    sub_22BB314EC();
    return;
  }

  v86 = v36;
  v74 = v20;
  v39 = 0;
  v40 = v37 + 8;
  sub_22BD5FC48();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  v75 = v27 + 8;
  v76 = v27 + 32;
  v46 = v38 + 8;
  v77 = v37;
  if ((v42 & v41) == 0)
  {
LABEL_4:
    v48 = v39;
    while (1)
    {
      v39 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v39 >= v45)
      {
        break;
      }

      ++v48;
      if (v40[v39])
      {
        sub_22BD61734();
        v43 = v50 & v49;
        goto LABEL_9;
      }
    }

    if ((v83 & 1) == 0)
    {

      v23 = v74;
      goto LABEL_37;
    }

    sub_22BD61774();
    v23 = v74;
    if (v68 != v69)
    {
      sub_22BD638D4();
      *v40 = v70;
    }

    else
    {
      v71 = sub_22BD61724();
      sub_22BBC0B54(v71, v72, v40);
    }

    v37[2] = 0;
    goto LABEL_36;
  }

  while (1)
  {
    sub_22BD64878();
LABEL_9:
    v51 = v47 | (v39 << 6);
    v85 = *(v81 + 72);
    if (v83)
    {
      sub_22BB6BF2C();
      sub_22BB3A518(v52, v53);
      v84 = *(v37[7] + 8 * v51);
    }

    else
    {
      sub_22BB6BF2C();
      sub_22BB335C0(v54, v55);
      v84 = *(v37[7] + 8 * v51);
    }

    sub_22BDBB814();
    v56 = sub_22BB34FB8();
    sub_22BB335C0(v56, v57);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        MEMORY[0x2318A57F0](3);
        v37 = v77;
        sub_22BDBAC54();

        break;
      case 2u:
        v63 = 0;
        goto LABEL_16;
      case 3u:
        v63 = 1;
LABEL_16:
        MEMORY[0x2318A57F0](v63);
        break;
      default:
        v58 = sub_22BB34FB8();
        v59(v58);
        MEMORY[0x2318A57F0](2);
        sub_22BB52EBC();
        sub_22BB3B194(&qword_28142DD18, v60);
        sub_22BDBABB4();
        v61 = sub_22BB34FB8();
        v62(v61);
        break;
    }

    sub_22BDBB834();
    sub_22BD60BF0();
    sub_22BD63668();
    if (v64)
    {
      break;
    }

    sub_22BD61144();
LABEL_28:
    *(v46 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (&a19 + 96);
    sub_22BB3A518(v86, v38[6] + v85 * v87);
    *(v38[7] + 8 * v87) = v84;
    ++v38[2];
    if (!v43)
    {
      goto LABEL_4;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v64)
    {
      if (v66)
      {
        break;
      }
    }

    if (v65 == v67)
    {
      v65 = 0;
    }

    if (v46[v65] != -1)
    {
      sub_22BB9748C();
      goto LABEL_28;
    }
  }

LABEL_39:
  __break(1u);
}

void sub_22BD5C5AC()
{
  sub_22BB30F94();
  v1 = v0;
  v2 = sub_22BB30F68();
  v3 = type metadata accessor for FeedbackLearning.FlowExpressionValue(v2);
  v4 = sub_22BB30434(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BB305A8();
  v49 = v5;
  sub_22BB2F120();
  v6 = sub_22BDB4C34();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB305A8();
  v48 = v10;
  v11 = *v0;
  sub_22BBE6DE0(&qword_27D8E6148, &qword_22BDCD6A8);
  v12 = sub_22BB31F54();
  v14 = sub_22BB6FF00(v12, v13);
  if (!*(v11 + 16))
  {
LABEL_30:

LABEL_31:
    *v1 = v14;
    sub_22BB314EC();
    return;
  }

  v15 = 0;
  v16 = (v11 + 64);
  sub_22BD5FC48();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v43 = v8;
  v46 = (v8 + 32);
  v22 = v14 + 64;
  v44 = v11;
  if ((v18 & v17) == 0)
  {
LABEL_4:
    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v15 >= v21)
      {
        break;
      }

      ++v23;
      if (v16[v15])
      {
        sub_22BD61734();
        v19 = v25 & v24;
        goto LABEL_9;
      }
    }

    if ((v45 & 1) == 0)
    {

      v1 = v0;
      goto LABEL_31;
    }

    sub_22BD61774();
    v1 = v0;
    if (v38 != v39)
    {
      sub_22BD638D4();
      *v16 = v40;
    }

    else
    {
      v41 = sub_22BD61724();
      sub_22BBC0B54(v41, v42, v16);
    }

    *(v11 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_22BBB63F4();
LABEL_9:
    v47 = *(v8 + 72);
    v26 = sub_22BB73F44();
    v27(v26);
    if (v45)
    {
      sub_22BD64BA4();
      sub_22BD627F4();
      sub_22BB3A518(v28, v49);
    }

    else
    {
      v29 = sub_22BD64BA4();
      sub_22BB335C0(v29, v49);
    }

    sub_22BB52EBC();
    sub_22BB3B194(&qword_28142DD18, v30);
    sub_22BB69A84();
    sub_22BDBABA4();
    sub_22BD60BF0();
    sub_22BD63668();
    if (v31)
    {
      break;
    }

    sub_22BD61144();
LABEL_22:
    sub_22BB72B90();
    *(v22 + v35) |= v36;
    (*v46)(*(v14 + 48) + v47 * v8, v48, v6);
    sub_22BD627F4();
    sub_22BB3A518(v49, v37);
    ++*(v14 + 16);
    v8 = v43;
    v11 = v44;
    if (!v19)
    {
      goto LABEL_4;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v31)
    {
      if (v33)
      {
        break;
      }
    }

    if (v32 == v34)
    {
      v32 = 0;
    }

    if (*(v22 + 8 * v32) != -1)
    {
      sub_22BB9748C();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_22BD5C910()
{
  sub_22BB30F94();
  sub_22BBC0518();
  v4 = sub_22BDB4C34();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB30560();
  v48 = v8;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v9);
  v43 = &v38 - v10;
  sub_22BB93D5C();
  sub_22BBE6DE0(&qword_27D8E6118, &qword_22BDCD670);
  sub_22BB37494();
  v44 = v2;
  v49 = sub_22BDBB514();
  if (!*(v1 + 16))
  {
LABEL_27:

LABEL_28:
    *v0 = v49;
    sub_22BB314EC();
    return;
  }

  v39 = v0;
  v11 = 0;
  v12 = (v1 + 64);
  sub_22BD5FC48();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v40 = v6 + 16;
  v41 = v1;
  v42 = v6;
  v45 = (v6 + 32);
  v18 = v49 + 64;
  if (!v15)
  {
LABEL_4:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v11 >= v17)
      {
        break;
      }

      ++v19;
      if (v12[v11])
      {
        sub_22BD61734();
        v47 = v21 & v20;
        goto LABEL_9;
      }
    }

    if ((v44 & 1) == 0)
    {

      v0 = v39;
      goto LABEL_28;
    }

    sub_22BD61774();
    v0 = v39;
    if (v33 != v34)
    {
      sub_22BD638D4();
      *v12 = v35;
    }

    else
    {
      v36 = sub_22BD61724();
      sub_22BBC0B54(v36, v37, v12);
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v47 = (v15 - 1) & v15;
LABEL_9:
    v46 = *(v42 + 72);
    v22 = sub_22BB70078();
    (v2)(v22);
    v23 = sub_22BD648A0();
    (v2)(v23);
    sub_22BB52EBC();
    sub_22BB3B194(&qword_28142DD18, v24);
    sub_22BB69A84();
    sub_22BDBABA4();
    sub_22BD60BF0();
    sub_22BD63668();
    if (v25)
    {
      break;
    }

    sub_22BD64BCC();
LABEL_19:
    sub_22BD638E0(v26);
    v2 = v49;
    v31 = v46 * v30;
    v32 = *v45;
    (*v45)(*(v49 + 48) + v46 * v30, v3, v4);
    v32(*(v2 + 56) + v31, v48, v4);
    ++*(v2 + 16);
    v1 = v41;
    v15 = v47;
    if (!v47)
    {
      goto LABEL_4;
    }
  }

  sub_22BD60BDC();
  while (1)
  {
    sub_22BB97184();
    if (v25)
    {
      if (v28)
      {
        break;
      }
    }

    if (v27 == v29)
    {
      v27 = 0;
    }

    if (*(v18 + 8 * v27) != -1)
    {
      sub_22BD64BB8();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_22BD5CC44()
{
  sub_22BB30F94();
  sub_22BBC0518();
  v49 = sub_22BDB89F4();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  v48 = v6;
  sub_22BB2F120();
  v7 = sub_22BDB4C34();
  sub_22BB30444();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  v50 = v11;
  sub_22BB93D5C();
  sub_22BBE6DE0(&qword_27D8E6110, &unk_22BDCE620);
  sub_22BB37494();
  v44 = v2;
  v12 = sub_22BDBB514();
  v13 = v12;
  if (*(v1 + 16))
  {
    v14 = 0;
    v15 = v9;
    v16 = (v1 + 64);
    v17 = 1 << *(v1 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v1 + 64);
    v20 = (v17 + 63) >> 6;
    v42 = (v15 + 16);
    v43 = v1;
    v45 = (v4 + 32);
    v46 = (v15 + 32);
    v21 = v12 + 64;
    while (v19)
    {
      sub_22BD64878();
LABEL_13:
      v47 = *(v23 + 72);
      v27 = *(v1 + 48) + v47 * (v22 | (v14 << 6));
      if (v44)
      {
        (*v46)(v50, v27, v7);
        sub_22BD6488C();
        (*(v28 + 32))(v48);
      }

      else
      {
        (*v42)(v50, v27, v7);
        sub_22BD6488C();
        (*(v29 + 16))(v48);
      }

      sub_22BB52EBC();
      sub_22BB3B194(&qword_28142DD18, v30);
      sub_22BB69A84();
      sub_22BDBABA4();
      sub_22BD60BF0();
      sub_22BD63668();
      if (v31)
      {
        sub_22BD60BDC();
        while (1)
        {
          sub_22BB97184();
          if (v31)
          {
            if (v33)
            {
              break;
            }
          }

          if (v32 == v34)
          {
            v32 = 0;
          }

          if (*(v21 + 8 * v32) != -1)
          {
            sub_22BB9748C();
            goto LABEL_26;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      sub_22BD61144();
LABEL_26:
      sub_22BB72B90();
      *(v21 + v35) |= v36;
      (*v46)(v13[6] + v47 * v50, v50, v7);
      (*v45)(v13[7] + v1 * v50, v48, v49);
      ++v13[2];
      v1 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v14 >= v20)
      {
        break;
      }

      ++v24;
      if (v16[v14])
      {
        sub_22BD61734();
        v19 = v26 & v25;
        goto LABEL_13;
      }
    }

    if (v44)
    {
      sub_22BD61774();
      if (v37 != v38)
      {
        sub_22BD638D4();
        *v16 = v39;
      }

      else
      {
        v40 = sub_22BD61724();
        sub_22BBC0B54(v40, v41, v16);
      }

      *(v1 + 16) = 0;
    }
  }

  *v0 = v13;
  sub_22BB314EC();
}

uint64_t sub_22BD5CFEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22BBE6DE0(&qword_27D8E65A8, &qword_22BDCE4A8);
  v36 = v4;
  result = sub_22BDBB514();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_22BBC0B54(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
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
    v19 = *(v5 + 56);
    v20 = (*(v5 + 48) + 16 * v18);
    v21 = v20[1];
    v22 = (v19 + 16 * v18);
    v23 = v22[1];
    v37 = *v20;
    v38 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    sub_22BB97200();
    result = sub_22BDBABA4();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v37;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v38;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_22BD5D2A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_22BBE6DE0(&qword_27D8E6580, &qword_22BDCE480);
  v34 = v4;
  result = sub_22BDBB514();
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
      sub_22BBC0B54(0, (v32 + 63) >> 6, v9);
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

    sub_22BDBB814();
    sub_22BDBAC54();
    result = sub_22BDBB834();
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

uint64_t sub_22BD5D600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  v3 = sub_22BD60F04();
  sub_22BB3B194(v3, v4);
  return sub_22BDBABD4() & 1;
}

uint64_t sub_22BD5D684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_22BDBB6D4() & 1;
  }
}

uint64_t sub_22BD5D6C8(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v30 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    sub_22BB72B1C(v7, v6);
    v13 = v12;
    v14 = v10[2];
    v15 = (v11 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_17;
    }

    v17 = v11;
    if (v10[3] >= v16)
    {
      if ((a2 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E65B0, &qword_22BDCE4B0);
        sub_22BDBB4B4();
      }
    }

    else
    {
      sub_22BD5CFEC(v16, a2 & 1);
      sub_22BB72B1C(v7, v6);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v13 = v18;
    }

    v20 = *a3;
    if (v17)
    {

      v21 = (v20[7] + 16 * v13);
      *v21 = v8;
      v21[1] = v9;
    }

    else
    {
      v20[(v13 >> 6) + 8] |= 1 << v13;
      v22 = (v20[6] + 16 * v13);
      *v22 = v7;
      v22[1] = v6;
      v23 = (v20[7] + 16 * v13);
      *v23 = v8;
      v23[1] = v9;
      v24 = v20[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v20[2] = v26;
    }

    v4 = v30 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

void sub_22BD5D89C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_22BD5E968(a1, a2, a3, v49);
  v40 = v49[0];
  v6 = v49[3];
  v7 = v49[4];
  v39 = v49[5];
  v37 = (v49[2] + 64) >> 6;
  v38 = v49[1];

  for (i = v6; ; v6 = i)
  {
    v9 = v7;
    if (!v7)
    {
      v10 = v6;
      while (1)
      {
        i = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (i >= v37)
        {
          sub_22BBCD888();

          return;
        }

        v9 = *(v38 + 8 * i);
        ++v10;
        if (v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_22BDBB744();
      __break(1u);
      goto LABEL_25;
    }

LABEL_7:
    v11 = (i << 10) | (16 * __clz(__rbit64(v9)));
    v12 = (*(v40 + 48) + v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v40 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];
    v45 = v13;
    v46 = v14;
    v47 = v16;
    v48 = v17;

    v39(&v42, &v45);

    v18 = v42;
    v19 = v43;
    v20 = v44;
    v45 = v42;
    v46 = v43;
    v21 = *a5;
    v23 = sub_22BD8446C(v42, v43);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_22;
    }

    v27 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (a4)
    {
      if (v22)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_22BBE6DE0(&qword_27D8E6588, &qword_22BDCE488);
      sub_22BDBB4B4();
      if (v27)
      {
        goto LABEL_17;
      }
    }

LABEL_14:
    v30 = *a5;
    *(*a5 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v31 = (v30[6] + 16 * v23);
    *v31 = v18;
    v31[1] = v19;
    *(v30[7] + 8 * v23) = v20;
    v32 = v30[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_23;
    }

    v7 = (v9 - 1) & v9;
    v30[2] = v34;
    a4 = 1;
  }

  sub_22BD5D2A4(v26, a4 & 1);
  v28 = sub_22BD8446C(v18, v19);
  if ((v27 & 1) != (v29 & 1))
  {
    goto LABEL_24;
  }

  v23 = v28;
  if ((v27 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v35 = swift_allocError();
  swift_willThrow();

  v50 = v35;
  v36 = v35;
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22BBCD888();

    return;
  }

LABEL_25:
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_22BDBB334();
  MEMORY[0x2318A4C40](0xD00000000000001BLL, 0x800000022BDD3D70);
  sub_22BDBB474();
  MEMORY[0x2318A4C40](39, 0xE100000000000000);
  sub_22BDBB4D4();
  __break(1u);
}

uint64_t sub_22BD5DC78(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == -1)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    sub_22BD5EC9C(result, a2, a3 & 1);
    return v3;
  }

  return result;
}

unint64_t sub_22BD5DCCC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      sub_22BDB9B54();
      sub_22BB2F330();
      return (*(v6 + 16))(a3, a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22BD5DD64@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      v6 = *(type metadata accessor for EventPayloadWithPreassignedID(0) - 8);
      return sub_22BB335C0(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD5DE58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *v3;
  v8 = (*v3 + 16);
  v9 = *v8;
  v10 = sub_22BDB89F4();
  if (v9 >= a2)
  {
    v21 = *(*(v10 - 8) + 80);
    sub_22BBE6DE0(&qword_27D8E6680, &unk_22BDCE610);
    v13 = swift_allocObject();
    v22 = *(v7 + 24);
    *(v13 + 16) = v9;
    *(v13 + 24) = v22;
    if (v22 >= 1)
    {
      sub_22BD5E544(v13 + 16, v13 + ((v21 + 40) & ~v21), v8, v7 + ((v21 + 40) & ~v21), MEMORY[0x277D1DF58]);
    }
  }

  else
  {
    sub_22BDB6014();
    if (v6)
    {
      v11 = *(v7 + 24);
      v12 = sub_22BBE6DE0(&qword_27D8E6680, &unk_22BDCE610);
      v13 = sub_22BD6433C(v12);
      v14 = sub_22BD616B4();
      *(v13 + 16) = sub_22BB89514(v14);
      *(v13 + 24) = v11;
      *(v13 + 32) = 0;
      if (v11 >= 1)
      {
        sub_22BD63F38();
        sub_22BD5E654(v15, v16, v17, v18, v19, v20);
        *(v7 + 24) = 0;
      }
    }

    else
    {
      v23 = sub_22BBE6DE0(&qword_27D8E6680, &unk_22BDCE610);
      v13 = sub_22BD6433C(v23);
      v24 = sub_22BD616B4();
      v25 = sub_22BB89514(v24);
      v26 = *(v7 + 24);
      *(v13 + 16) = v25;
      *(v13 + 24) = v26;
      *(v13 + 32) = 0;
      if (v26 >= 1)
      {
        sub_22BD63F38();
        sub_22BD5E790(v27, v28, v29, v30, v31);
      }
    }
  }

  *v4 = v13;
  return result;
}

uint64_t sub_22BD5E0A4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = (*v3 + 16);
  v9 = *v8;
  v10 = type metadata accessor for SessionCoordinatorCommand(0);
  v11 = v10;
  if (v9 >= a2)
  {
    v15 = *(*(v10 - 8) + 80);
    sub_22BBE6DE0(&qword_27D8E6590, &qword_22BDCE490);
    v14 = swift_allocObject();
    v16 = *(v7 + 24);
    *(v14 + 16) = v9;
    *(v14 + 24) = v16;
    if (v16 >= 1)
    {
      sub_22BD5E544(v14 + 16, v14 + ((v15 + 40) & ~v15), v8, v7 + ((v15 + 40) & ~v15), type metadata accessor for SessionCoordinatorCommand);
    }
  }

  else
  {
    sub_22BDB6014();
    v12 = *(*(v11 - 8) + 80);
    if (a1)
    {
      v13 = *(v7 + 24);
      sub_22BBE6DE0(&qword_27D8E6590, &qword_22BDCE490);
      v14 = swift_allocObject();
      *(v14 + 16) = sub_22BB89514(type metadata accessor for SessionCoordinatorCommand);
      *(v14 + 24) = v13;
      *(v14 + 32) = 0;
      if (v13 >= 1)
      {
        sub_22BD5E654(v14 + 16, v14 + ((v12 + 40) & ~v12), v8, v7 + ((v12 + 40) & ~v12), type metadata accessor for SessionCoordinatorCommand, sub_22BD278A4);
        *(v7 + 24) = 0;
      }
    }

    else
    {
      sub_22BBE6DE0(&qword_27D8E6590, &qword_22BDCE490);
      v14 = swift_allocObject();
      v17 = sub_22BB89514(type metadata accessor for SessionCoordinatorCommand);
      v18 = *(v7 + 24);
      *(v14 + 16) = v17;
      *(v14 + 24) = v18;
      *(v14 + 32) = 0;
      if (v18 >= 1)
      {
        sub_22BD5E790(v14 + 16, v14 + ((v12 + 40) & ~v12), v8, v7 + ((v12 + 40) & ~v12), type metadata accessor for SessionCoordinatorCommand);
      }
    }
  }

  *v4 = v14;
  return result;
}

void *sub_22BD5E348(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        sub_22BDB89F4();
        sub_22BB2F330();
        result = (*(v10 + 16))(a2 + *(v10 + 72) * v5, a3);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_22BD5E440(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *v4;
  a1(0);
  v7 = *(v6 + 16);
  v8 = sub_22BB3FBBC();
  sub_22BBE6DE0(v8, v9);
  v10 = swift_allocObject();
  v11 = *(v6 + 24);
  *(v10 + 16) = v7;
  *(v10 + 24) = v11;
  if (v11 >= 1)
  {
    sub_22BD63F38();
    sub_22BD5E544(v12, v13, v14, v15, a4);
  }

  *v4 = v10;
  return result;
}

void sub_22BD5E544(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  a5(0);
  if (v6 < v8)
  {
    v9 = v8 - v6;
    if (!__OFSUB__(v8, v6))
    {
      v10 = v6;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v8;
LABEL_6:
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v6 < v8 && v9 >= 1)
  {
    if (v11)
    {
      sub_22BB313A8();
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_22BD5E654(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v6 = a3[2];
  v7 = *a3 - v6;
  if (__OFSUB__(*a3, v6))
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = a3[1];
  v10 = *(a5(0) - 8);
  if (v7 < v9)
  {
    v11 = v9 - v7;
    if (!__OFSUB__(v9, v7))
    {
      v12 = v7;
      v13 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = 0;
  v11 = 0;
  v12 = v9;
LABEL_6:
  if (v11)
  {
    v14 = v7 < v9;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v10 + 72);
  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v12 >= 1)
  {
    if (a4)
    {
      v17 = a4 + v15 * v6;
      v18 = a2;
      v19 = a6;
      a6(v17, v12, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = 0;
  v19 = a6;
  v18 = a2;
LABEL_16:
  if (v7 < v9 && v11 >= 1)
  {
    if (v16)
    {
      v19(v16, v11, v18 + v15 * v12);
      return;
    }

LABEL_26:
    __break(1u);
  }
}

void sub_22BD5E790(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  a5(0);
  if (v6 < v8)
  {
    v9 = v8 - v6;
    if (!__OFSUB__(v8, v6))
    {
      v10 = v6;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v8;
LABEL_6:
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v6 < v8 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_22BD5E8B8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    result = type metadata accessor for SessionCoordinatorCommand(0);
    if (v6 <= a3)
    {
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD5E968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

uint64_t sub_22BD5E9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22BD5DC78(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

unint64_t sub_22BD5EA68()
{
  result = qword_27D8E6450;
  if (!qword_27D8E6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6450);
  }

  return result;
}

uint64_t sub_22BD5EABC()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v0 = sub_22BBE6DE0(&qword_27D8E6478, &qword_22BDCE328);
  sub_22BB2F0C8(v0);
  sub_22BD63FC8();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v2[1] = sub_22BB3C48C;
  sub_22BB37834();
  sub_22BB3A1C0();

  return sub_22BD490F8(v4, v5, v6, v7, v8);
}

unint64_t sub_22BD5EBE0()
{
  result = qword_27D8E6550;
  if (!qword_27D8E6550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6550);
  }

  return result;
}

uint64_t sub_22BD5EC9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22BD5ECA8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6038, &qword_22BDD0300);
  sub_22BB2F0C8(v2);
  v4 = sub_22BD61764(*(v3 + 80));

  return sub_22BD755E0(v4, a1);
}

uint64_t sub_22BD5ED74(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  sub_22BB2F0C8(v2);
  v4 = sub_22BD61764(*(v3 + 80));

  return a2(v4);
}

void *sub_22BD5EE84@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SpanMetadata(0);
  sub_22BB2F0C8(v2);
  v4 = sub_22BD61764(*(v3 + 80));

  return sub_22BD751B4(v4, a1);
}

uint64_t sub_22BD5EEE8()
{
  v1 = type metadata accessor for SpanMetadata(0);
  sub_22BD61DE0();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v1 + 24);
  v5 = sub_22BDB43E4();
  sub_22BD623FC();
  if (!sub_22BB3AA28(v6, v7, v8))
  {
    sub_22BB30474();
    (*(v9 + 8))(v3 + v4, v5);
  }

  v10 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v10);
}

uint64_t sub_22BD5F000@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for SpanMetadata(0);
  sub_22BB2F0C8(v2);
  v4 = sub_22BD61764(*(v3 + 80));

  return sub_22BD751C0(v4, a1);
}

uint64_t sub_22BD5F0C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22BD5F170(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v3 = sub_22BBE6DE0(a1, a2);
  sub_22BB2F0C8(v3);
  v5 = sub_22BD61764(*(v4 + 80));

  return a3(v5);
}

uint64_t sub_22BD5F238@<X0>(_DWORD *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_22BD5F2A8()
{
  v0 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BB2F0C8(v0);
  sub_22BD61764(*(v1 + 80));

  return sub_22BD74940();
}

uint64_t sub_22BD5F32C()
{
  sub_22BB35458();
  v1 = sub_22BDB5B44();
  sub_22BB30434(v1);
  sub_22BBC3AC8();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_22BB3C48C;
  sub_22BD62E70();
  sub_22BB33430();

  return sub_22BD46670(v3, v4, v5, v6, v7, v8, v9);
}

_BYTE *storeEnumTagSinglePayload for ClientSessionManager.SessionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22BD5F5F4()
{
  result = qword_27D8E6690;
  if (!qword_27D8E6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E6690);
  }

  return result;
}

uint64_t sub_22BD5F670(uint64_t result)
{
  *(result + 16) = sub_22BD5F1E4;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD5F68C(uint64_t result)
{
  *(result + 16) = sub_22BD5F668;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD5F6BC(uint64_t result)
{
  *(result + 16) = sub_22BD5EE84;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD5F6EC(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD5F704(uint64_t result)
{
  *(result + 16) = sub_22BB89C78;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD5F71C(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

void sub_22BD5F8B4()
{
  v2 = *(*(v1 - 144) + 3200);
  *(v1 - 176) = v0;
  *(v1 - 168) = v2;
}

uint64_t sub_22BD5F900()
{
  v2 = v0[556];
  *(v1 - 168) = v0[441];
  *(v1 - 160) = v2;
  *(v1 - 152) = v0[436];
  return v0[346];
}

uint64_t sub_22BD5F9A0(uint64_t result)
{
  v2[220] = 0;
  v2[217] = result;
  *v1 = 514;
  v2[221] = v1 + 1;
  v2[173] = sub_22BB89C08;
  return result;
}

uint64_t sub_22BD5F9D4(uint64_t result)
{
  v2[305] = 0;
  v2[306] = result;
  *v1 = 514;
  v2[304] = v1 + 1;
  v2[179] = sub_22BB89BF0;
  return result;
}

uint64_t sub_22BD5FA08()
{

  return sub_22BB34648();
}

void sub_22BD5FA30()
{
  v2 = v0[432];
  *(v1 - 160) = v0[428];
  *(v1 - 152) = v2;
  v3 = v0[400];
  *(v1 - 176) = v0[402];
  *(v1 - 168) = v3;
}

uint64_t sub_22BD5FA78(uint64_t result)
{
  v2[261] = 0;
  v2[262] = result;
  *v1 = 514;
  v2[260] = v1 + 1;
  v2[137] = sub_22BB89C08;
  return result;
}

void sub_22BD5FADC()
{
  v2 = *(v0 + 3456);
  v3 = *(v0 + 3424);
  *(v1 - 160) = *(*(v1 - 144) + 2768);
  *(v1 - 152) = v2;
  *(v1 - 176) = *(*(v1 - 144) + 2752);
  *(v1 - 168) = v3;
}

uint64_t sub_22BD5FB20(uint64_t a1)
{
  *(a1 + 16) = sub_22BB89C78;
  *(a1 + 24) = v2;
  return v1;
}

uint64_t sub_22BD5FB4C(uint64_t a1)
{
  *(v3 + 2120) = 0;
  *(v3 + 2112) = a1;
  *v2 = 258;
  *(v3 + 2152) = v2 + 1;
  *(v3 + 1144) = sub_22BB89C08;
  *(v3 + 1152) = v1;

  return sub_22BB67984((v3 + 1144), v3 + 2152, v3 + 2120, v3 + 2112);
}

BOOL sub_22BD5FBA4()
{

  return sub_22BD728EC(sub_22BD5EE20, v0, v1);
}

void sub_22BD5FBE8()
{

  sub_22BD47668(sub_22BD757CC, 0, v0);
}

void sub_22BD5FC18()
{

  sub_22BD47668(sub_22BD757C0, 0, v0);
}

void sub_22BD5FC78(_WORD *a1@<X8>)
{
  *a1 = 514;
  *(v1 + 1680) = a1 + 1;
  *(v1 + 1464) = sub_22BB89C08;
}

void sub_22BD5FCEC()
{
  STACK[0x200] = v0[471];
  STACK[0x208] = v0[470];
  STACK[0x210] = v0[469];
  STACK[0x218] = v0[468];
  STACK[0x220] = v0[467];
  STACK[0x228] = v0[464];
  STACK[0x230] = v0[461];
  STACK[0x238] = v0[460];
  STACK[0x240] = v0[459];
  STACK[0x248] = v0[458];
  STACK[0x250] = v0[457];
  STACK[0x258] = v0[456];
  STACK[0x260] = v0[455];
  STACK[0x268] = v0[454];
  STACK[0x270] = v0[453];
  STACK[0x278] = v0[452];
  STACK[0x280] = v0[448];
  STACK[0x288] = v0[447];
  STACK[0x290] = v0[446];
  STACK[0x298] = v0[445];
  STACK[0x2A0] = v0[444];
  STACK[0x2A8] = v0[443];
  STACK[0x2B0] = v0[440];
  STACK[0x2B8] = v0[439];
  STACK[0x2C0] = v0[438];
  STACK[0x2C8] = v0[435];
  STACK[0x2D0] = v0[434];
  STACK[0x2D8] = v0[432];
  STACK[0x2E0] = v0[431];
  STACK[0x2E8] = v0[427];
  STACK[0x2F0] = v0[426];
  STACK[0x2F8] = v0[425];
  STACK[0x300] = v0[424];
  STACK[0x308] = v0[420];
  STACK[0x310] = v0[419];
  STACK[0x318] = v0[417];
  STACK[0x320] = v0[416];
  STACK[0x328] = v0[413];
  STACK[0x330] = v0[412];
  STACK[0x338] = v0[411];
  STACK[0x340] = v0[410];
  STACK[0x348] = v0[409];
  STACK[0x350] = v0[408];
  STACK[0x358] = v0[407];
  STACK[0x360] = v0[406];
  STACK[0x368] = v0[402];
  STACK[0x370] = v0[399];
  STACK[0x378] = v0[398];
  STACK[0x380] = v0[395];
  STACK[0x390] = v0[394];
}

uint64_t sub_22BD5FFD4()
{

  return sub_22BB335C0(v0, v1);
}

uint64_t sub_22BD60000(uint64_t a1)
{
  *(a1 + 16) = sub_22BB89C78;
  *(a1 + 24) = v1;
}

uint64_t sub_22BD6002C(uint64_t a1)
{
  *(a1 + 16) = sub_22BB89C78;
  *(a1 + 24) = v1;
}

uint64_t sub_22BD60058(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

uint64_t sub_22BD60084()
{

  return sub_22BB335C0(v0, v1);
}

uint64_t sub_22BD600B0()
{

  return sub_22BD594AC(sub_22BD76D24, 0, v0);
}

uint64_t sub_22BD600DC()
{
  v3 = v0[587];
  v4 = v0[586];
  v5 = v0[583];
  *(v1 - 152) = v0[579];
  v6 = *(*(v1 - 144) + 2480);
  v7 = *(*(v1 - 144) + 2496);

  return sub_22BB96708(v7, v5, v6, v4, v3);
}

uint64_t sub_22BD6018C(uint64_t result)
{
  *(result + 16) = sub_22BB8AE24;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD601AC(uint64_t result)
{
  *(result + 16) = sub_22BB89784;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD601E4(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

uint64_t sub_22BD60264(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD602C4(uint64_t result)
{
  *(result + 16) = sub_22BB8AE24;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD602E0(uint64_t result)
{
  *(result + 16) = sub_22BD5F098;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60310(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD6032C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60348(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60364(uint64_t result)
{
  *(result + 16) = sub_22BB8AE24;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60380(uint64_t result)
{
  *(result + 16) = sub_22BD5EBC0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD6039C(uint64_t result)
{
  *(result + 16) = sub_22BD5EB94;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD603B8(uint64_t result)
{
  *(result + 16) = sub_22BD5F660;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD603D4(uint64_t result)
{
  *(result + 16) = sub_22BB89C78;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD603F0(uint64_t result)
{
  *(result + 16) = sub_22BD5F65C;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD6040C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60444()
{
  *(v0 + 1352) = sub_22BB89C08;
  *(v0 + 1360) = *(v1 - 200);

  return sub_22BB67984((v0 + 1352), v0 + 1584, v0 + 1744, v0 + 1752);
}

void sub_22BD60480()
{
  v2 = *(*(v1 - 144) + 3200);
  *(v1 - 176) = v0;
  *(v1 - 168) = v2;
}

uint64_t sub_22BD6049C(uint64_t result)
{
  *(result + 16) = sub_22BB89C78;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD6052C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60544(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 48) = sub_22BB89C08;
  return result;
}

uint64_t sub_22BD6055C(uint64_t result)
{
  *(result + 16) = sub_22BD5F090;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60574(uint64_t result)
{
  *(result + 16) = sub_22BD5F238;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD605A4(uint64_t result)
{
  *(result + 16) = sub_22BD5F108;
  *(result + 24) = v1;
  return result;
}

void sub_22BD605D4()
{
  v1 = *(*(v0 - 144) + 2632);
  *(v0 - 176) = *(*(v0 - 144) + 2640);
  *(v0 - 168) = v1;
}

uint64_t sub_22BD60634(uint64_t result)
{
  *(result + 16) = sub_22BB8AE80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60664(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD606DC(uint64_t result)
{
  *(result + 16) = sub_22BB700AC;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD6076C(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60810()
{
  *(v1 + 1352) = sub_22BB89C08;
  *(v1 + 1360) = v0;

  return sub_22BB67984((v1 + 1352), v1 + 1584, v1 + 1744, v1 + 1752);
}

uint64_t sub_22BD60848()
{
  *(v1 + 1464) = sub_22BB89C7C;
  *(v1 + 1472) = v0;

  return sub_22BB67984((v1 + 1464), v1 + 1680, v1 + 1688, v1 + 1696);
}

void sub_22BD60880()
{
  v4 = *(v1 + 4672);
  *(v2 - 160) = *(v1 + 4680);
  *(v2 - 152) = v4;
  *(v2 - 136) = v0 + 1;

  sub_22BB93884();
}

uint64_t sub_22BD608D0()
{
  *(v1 + 1496) = sub_22BB89C7C;
  *(v1 + 1504) = v0;

  return sub_22BB67984((v1 + 1496), v1 + 1648, v1 + 1656, v1 + 1664);
}

void sub_22BD60928()
{
  *(v2 - 176) = *(v1 + 4900);
  *(v2 - 160) = *(*(v2 - 144) + 4432);
  *(v2 - 152) = v0;
}

void sub_22BD60954(uint64_t a1@<X8>)
{
  *(v3 - 240) = a1;
  *(v3 - 176) = v2[400];
  *(v3 - 168) = v1;
  STACK[0x478] = v2[399];
  STACK[0x468] = v2[396];
}

uint64_t sub_22BD60980(uint64_t a1)
{
  *(a1 + 16) = sub_22BB89C80;
  *(a1 + 24) = v1;

  return swift_allocObject();
}

void sub_22BD609DC()
{
  v2 = *(v0 + 3512);
  *(v1 - 160) = *(v0 + 3560);
  *(v1 - 152) = v2;
}

uint64_t sub_22BD60A50(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

uint64_t sub_22BD60A8C()
{
  v1 = v0[3];
  sub_22BB69FEC(v0, v1);
  return v1;
}

uint64_t sub_22BD60B44(uint64_t result)
{
  v2 = (v1 + *(result + 80));
  v4 = *v2;
  v3 = v2[1];
  STACK[0x340] = v4;
  STACK[0x348] = v3;
  return result;
}

uint64_t sub_22BD60C28(uint64_t a1, uint64_t a2)
{
  v3 = v2[477];
  sub_22BB336D0(v2[468], a2, 1, v2[414]);
  return v3;
}

uint64_t sub_22BD60CC4(void *a1)
{
  v1 = a1[3];
  sub_22BB69FEC(a1, v1);
  return v1;
}

void sub_22BD60D14(_WORD *a1@<X8>)
{
  *a1 = 258;
  *(v1 + 2424) = a1 + 1;
  *(v1 + 1448) = sub_22BB89C08;
}

uint64_t sub_22BD60D38()
{
  sub_22BB938EC(v0, *(v1 + 16));

  return sub_22BDB99D4();
}

uint64_t sub_22BD60E34@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984((a1 + 1368), a1 + 2352, a1 + 2344, a1 + 2312);
}

uint64_t sub_22BD60E6C(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  return swift_allocObject();
}

uint64_t sub_22BD60ED8(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD60F14()
{

  return sub_22BB67984((v0 + 1416), v0 + 2320, v0 + 2328, v0 + 2336);
}

unint64_t sub_22BD60F34(unint64_t a1)
{
  v4 = *(v2 + 3280);

  return sub_22BB929E0(a1, v1, v4);
}

uint64_t sub_22BD60F68()
{
}

uint64_t sub_22BD60FD4(uint64_t a1)
{

  return swift_allocObject();
}

void sub_22BD6109C()
{
  *(v1 - 136) = v0[432];
  v2 = v0[428];
  *(v1 - 160) = v0[429];
  *(v1 - 152) = v2;
}

uint64_t sub_22BD6119C@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984((a1 + 1016), a1 + 1904, a1 + 1912, a1 + 1920);
}

uint64_t sub_22BD611BC@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984((a1 + 984), a1 + 1936, a1 + 1944, a1 + 1952);
}

uint64_t sub_22BD611DC@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984((a1 + 1032), a1 + 2000, a1 + 2008, a1 + 2016);
}

uint64_t sub_22BD611FC()
{

  return sub_22BB67984((v0 + 1496), v0 + 1648, v0 + 1656, v0 + 1664);
}

uint64_t sub_22BD6122C()
{

  return sub_22BB67984((v0 + 952), v0 + 1624, v0 + 1592, v0 + 2456);
}

uint64_t sub_22BD6124C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 2816);
  sub_22BB336D0(v3, a2, 1, *(v2 + 2992));
  return v3;
}

uint64_t sub_22BD61280()
{
  *(v1 - 232) = v0[336];
  *(v1 - 176) = v0[335];
  *(v1 - 248) = v0[310];

  return sub_22BDB5C24();
}

uint64_t sub_22BD61330()
{

  return swift_allocObject();
}

uint64_t sub_22BD61364(uint64_t a1)
{
  *(v1 - 152) = *(*(v1 - 144) + 3944);

  return sub_22BDB63E4();
}

void sub_22BD61390()
{
  v2 = *(v0 + 3456);
  *(v1 - 160) = *(v0 + 3424);
  *(v1 - 152) = v2;
}

uint64_t sub_22BD614B8()
{
  *v1 = v0;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BD6156C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_22BB899C0(a1, a2, a3);
}

uint64_t sub_22BD616CC(uint64_t a1)
{
  *(v2 - 152) = *(v1 + 3440);

  return sub_22BDB63E4();
}

uint64_t sub_22BD617D4(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  return swift_allocObject();
}

uint64_t sub_22BD617F4(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  return swift_allocObject();
}

BOOL sub_22BD61814()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 168);

  return os_log_type_enabled(v3, v2);
}

uint64_t sub_22BD61834()
{

  return sub_22BDBAF34();
}

uint64_t sub_22BD61854()
{
  sub_22BB336D0(v1, 1, 1, v0);

  return sub_22BD80A04();
}

uint64_t sub_22BD61894()
{
}

double sub_22BD618C4()
{

  swift_beginAccess();
  return result;
}

double sub_22BD618EC()
{
  *(v0 + 16) = 1;

  swift_beginAccess();
  return result;
}

uint64_t sub_22BD61914@<X0>(uint64_t a2@<X8>)
{
  *(*(v2 + 2496) + *(v2 + 4504)) = a2;

  return sub_22BDB63E4();
}

void sub_22BD6193C()
{

  JUMPOUT(0x2318A6080);
}

uint64_t sub_22BD61958()
{

  return swift_allocObject();
}

void sub_22BD61974()
{
  v0[29] = v1;
  v0[30] = sub_22BB89C08;
  v0[31] = STACK[0x3F8];
  v0[32] = sub_22BB89C7C;
  v0[33] = v2;
  v0[34] = sub_22BB89C08;
}

uint64_t sub_22BD619D4()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD619F0()
{

  return swift_slowAlloc();
}

void sub_22BD61A24()
{
  *(v1 - 216) = v0[1231];
  *(v1 - 200) = v0[1230];
  *(v1 - 208) = v0[1229];
}

void sub_22BD61A78()
{
  v0[1231] = *(v1 - 216);
  v0[1230] = *(v1 - 200);
  v0[1229] = *(v1 - 208);
}

void sub_22BD61ADC()
{
  v3 = *(v0 + 3456);
  *(v1 - 176) = *(v0 + 3424);
  *(v1 - 168) = v3;
  v4 = *(v1 - 152);
}

void sub_22BD61B68(unint64_t a1@<X8>)
{
  STACK[0x3A0] = a1;
  STACK[0x3A8] = v1[390];
  STACK[0x3B0] = v1[387];
  STACK[0x3B8] = v1[384];
  STACK[0x3C0] = v1[383];
  STACK[0x3C8] = v1[382];
  STACK[0x3D0] = v1[379];
  STACK[0x3D8] = v1[378];
  STACK[0x3E0] = v1[377];
  STACK[0x3E8] = v1[373];
  STACK[0x3F0] = v1[372];
  STACK[0x400] = v1[369];
}

void sub_22BD61C8C()
{
  v2 = *(v0 + 4304);
  *(v1 - 160) = *(v0 + 4352);
  *(v1 - 152) = v2;
}

void sub_22BD61CA0()
{
  v3 = *(v1 + 4240);
  *(v2 - 176) = v0;
  *(v2 - 168) = v3;
}

void sub_22BD61D18()
{
  v2 = *(v0 + 4256);
  *(v1 - 168) = *(v0 + 4224);
  *(v1 - 160) = v2;
}

void *sub_22BD61D54()
{
  *v1 = v0;
  v1[1] = 0;
  v1[2] = 0xE000000000000000;
  return v1;
}

void sub_22BD61E40()
{
  v0[25] = v1;
  v0[26] = sub_22BB89C7C;
  v0[27] = STACK[0x328];
  v0[28] = sub_22BB89C08;
}

uint64_t sub_22BD61E70()
{

  return sub_22BB67984((v0 + 1256), v0 + 1848, v0 + 1840, v0 + 1808);
}

uint64_t sub_22BD61E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return sub_22BDBABD4();
}

uint64_t sub_22BD61EC8()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD61EE4()
{

  return swift_arrayDestroy();
}

void *sub_22BD61FCC()
{
  STACK[0x3F0] = ~v0;
  v2 = *(v1 - 144);
  STACK[0x448] = v2[478];
  STACK[0x440] = v2[473];
  STACK[0x460] = v2[466];
  STACK[0x458] = v2[465];
  STACK[0x3E8] = v2[376];
  STACK[0x3F8] = v2[312];
  return v2 + 175;
}

uint64_t sub_22BD62028()
{
  *(v1 - 160) = *(v0 + 3944);
}

uint64_t sub_22BD6204C()
{
  *(v1 - 168) = *(v0 + 4024);
}

double sub_22BD62070()
{
  *(v0 + 16) = 0;

  swift_beginAccess();
  return result;
}

uint64_t sub_22BD620AC(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;

  return swift_allocObject();
}

uint64_t sub_22BD620D0()
{
}

uint64_t sub_22BD620F4()
{

  return swift_allocObject();
}

double sub_22BD62110()
{

  swift_beginAccess();
  return result;
}

void sub_22BD62140()
{

  JUMPOUT(0x2318A6080);
}

unint64_t sub_22BD6215C(unint64_t result)
{
  v1[297] = 0;
  STACK[0x358] = result;
  v1[298] = result;
  STACK[0x360] = v2;
  *v2 = 1538;
  v1[296] = v2 + 1;
  v1[189] = sub_22BB89C08;
  return result;
}

void sub_22BD62190()
{
  *(v3 - 160) = *(v2 + 3584);
  *(v3 - 152) = v1;
  v4 = *(*(v3 - 144) + 3488);
  *(v3 - 176) = v0;
  *(v3 - 168) = v4;
}

BOOL sub_22BD62224()
{
  v3 = *(v1 - 152);

  return os_log_type_enabled(v0, v3);
}

uint64_t sub_22BD622A0()
{
  LODWORD(STACK[0x448]) = *(v1 + 4884);
  STACK[0x478] = *(v1 + 3216);
  v4 = *(v1 + 3200);
  *(v2 - 256) = *(v1 + 3208);
  *(v2 - 248) = v4;
  STACK[0x450] = *(v1 + 3192);
  STACK[0x440] = *(v1 + 3168);
  STACK[0x460] = *(v1 + 2480);
  STACK[0x468] = v0;

  return sub_22BDB8444();
}

uint64_t sub_22BD62384()
{
  *(v0 - 168) = *(v0 - 104);

  return sub_22BB67968(22);
}

uint64_t sub_22BD623A0()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD62464()
{

  return swift_slowAlloc();
}

void sub_22BD624D0(_WORD *a1@<X8>)
{
  *a1 = 1026;
  *(v1 + 2320) = a1 + 1;
  *(v1 + 1416) = sub_22BB89C08;
}

void sub_22BD62524(_WORD *a1@<X8>)
{
  *a1 = 514;
  *(v1 + 2352) = a1 + 1;
  *(v1 + 1368) = sub_22BB89C08;
}

void sub_22BD62548()
{
  *v0 = 1538;
  *(v1 + 2368) = v0 + 1;
  *(v1 + 1512) = sub_22BB89C08;
}

void sub_22BD6259C()
{
  v2 = v0[55];
  *(v1 - 232) = v0[56];
  *(v1 - 224) = v2;
  v4 = v0[50];
  v3 = v0[51];
  *(v1 - 216) = v0[54];
  *(v1 - 208) = v3;
  v6 = v0[48];
  v5 = v0[49];
  *(v1 - 200) = v4;
  *(v1 - 192) = v5;
  v7 = v0[45];
  *(v1 - 184) = v6;
  *(v1 - 176) = v7;
  v8 = v0[41];
  *(v1 - 168) = v0[42];
  *(v1 - 160) = v8;
}

uint64_t sub_22BD62608()
{

  return swift_allocObject();
}

void sub_22BD6264C()
{
  STACK[0x440] = v0[424];
  STACK[0x448] = v0[421];
  STACK[0x3E8] = v0[363];
  STACK[0x3F0] = v0[361];
}

uint64_t sub_22BD626D0(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD626EC(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD62708(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD62730()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD6274C()
{
  result = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22BB89C08;
  return result;
}

uint64_t sub_22BD62774(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_22BD62790()
{
  result = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22BB89C08;
  return result;
}

uint64_t sub_22BD627AC()
{
  *(v2 + 16) = v1;
  v4 = (v2 + v0[7]);
  v5 = STACK[0x348];
  *v4 = STACK[0x340];
  v4[1] = v5;
  *(v2 + v0[8]) = STACK[0x2C0];
  *(v2 + v0[9]) = 0;
  *(v2 + v0[10]) = 0;

  return type metadata accessor for SessionCoordinatorResponseCallback(0);
}

uint64_t sub_22BD62B54(uint64_t result)
{
  *(result + 16) = sub_22BD5F654;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD62BD8()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD62BF4()
{

  return swift_slowAlloc();
}

double sub_22BD62C40()
{

  swift_beginAccess();
  return result;
}

uint64_t sub_22BD62C60()
{

  return sub_22BB50D0C(v0 + v2, v1);
}

void sub_22BD62C80()
{
  v4 = v1[33];
  v3 = v1[34];
  *(v2 - 136) = v0;
  *(v2 - 128) = v3;
  v5 = v1[32];
  *(v2 - 120) = v4;
  *(v2 - 112) = v5;
  *(v2 - 104) = v1[29];
  *(v2 - 88) = v1[25];
}

uint64_t sub_22BD62CC4()
{
  v4 = *(v2 + 3808);
  v5 = *(v2 + 3792);

  return sub_22BB6BEE0(v5, v4, v1, v0);
}

uint64_t sub_22BD62CF0()
{
}

void sub_22BD62D10(uint64_t a1@<X8>)
{
  *(v3 - 160) = v1;
  *(v3 - 152) = a1;
  *(v3 - 256) = *(v2 + 3168);
}

uint64_t sub_22BD62D3C()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD62D5C()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD62D7C()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD62D9C()
{
  v2 = *(v0 + 4296);

  return sub_22BB58C0C(v2);
}

unint64_t sub_22BD62DBC()
{
  v4 = *(v1 + 256);
  *(v0 + 16) = v2;
  return v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3;
}

unint64_t sub_22BD62E00()
{
  v4 = *(v2 - 168);

  return sub_22BB929E0(v0, v4, v1);
}

uint64_t sub_22BD62E2C(uint64_t result)
{
  *(v1 - 120) = 0;
  *(v1 - 112) = result;
  return result;
}

uint64_t sub_22BD62E50()
{

  return sub_22BB32FA4((v0 + 136));
}

uint64_t sub_22BD62E88(uint64_t a1)
{

  return sub_22BB3A518(v1, a1 + v2);
}

uint64_t sub_22BD62EA8()
{
}

uint64_t sub_22BD62EF4(uint64_t a1)
{
  v1[37] = v3;
  v1[38] = sub_22BB89C7C;
  v1[39] = v2;
}

uint64_t sub_22BD62FC4()
{
  *(v1 - 176) = *(v0 + 4528);
}

uint64_t sub_22BD63008(unint64_t a1, unint64_t a2)
{
  STACK[0x458] = a1;
  STACK[0x450] = a2;
  STACK[0x448] = *(v2 + 40);
  STACK[0x440] = *(v2 + 56);
  return v3;
}

void sub_22BD63058()
{
  *(v2 - 144) = v1 + 16;
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;
  *(v2 - 112) = v1 + 32;
}

double sub_22BD6308C()
{

  swift_beginAccess();
  return result;
}

uint64_t sub_22BD630D4()
{

  return swift_allocObject();
}

void sub_22BD63120(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 160);

  _os_log_impl(a1, v8, v4, a4, v5, 0x16u);
}

uint64_t sub_22BD63154()
{
}

uint64_t sub_22BD63178()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD631C0(uint64_t result)
{
  *(v2 + 1792) = result;
  *(v2 + 4744) = *(v1 + 16);
  return result;
}

uint64_t sub_22BD631E4()
{
  *(v1 - 160) = *(v0 + 4016);
}

uint64_t sub_22BD63228(uint64_t a1)
{
  *(v2 - 168) = *(v1 + 4528);

  return sub_22BDB63E4();
}

uint64_t sub_22BD6324C()
{
}

uint64_t sub_22BD63270()
{
}

void sub_22BD632D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 168);

  _os_log_impl(a1, v8, v5, a4, v4, 0x16u);
}

uint64_t sub_22BD6341C(uint64_t a1, uint64_t a2)
{

  return sub_22BB3AA28(a2, 1, v2);
}

uint64_t sub_22BD63440(uint64_t result)
{
  *(v1 + 1688) = 0;
  *(v1 + 1696) = result;
  return result;
}

uint64_t sub_22BD634EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 3592);

  return swift_allocBox(v13, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_22BD63524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(v11 + 3592);

  return swift_allocBox(v13, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_22BD6355C()
{
  STACK[0x3F0] = v0[491];
  STACK[0x440] = v0[407];
  STACK[0x3F8] = v0[403];
  v2 = STACK[0x448];
}

void sub_22BD63594()
{
  STACK[0x438] = v1[492];
  STACK[0x3F8] = v1[479];
  *(v2 - 176) = v1[407];
  STACK[0x448] = v1[403];
}

uint64_t sub_22BD635D8()
{
  *(v2 - 176) = ~v1;
  result = *(v0 + 3256);
  *(v2 - 160) = *(*(v0 + 3232) + 32);
  return result;
}

void sub_22BD63674()
{
  STACK[0x460] = v1;
  *(v3 - 176) = v0;
  *(v3 - 160) = v2;
}

void sub_22BD636C8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22BD636E0()
{
  v3 = *(v1 - 168);

  return sub_22BB717B8(v0 - 1, v3);
}

uint64_t sub_22BD636FC()
{

  return sub_22BDB6634();
}

double sub_22BD63718()
{

  swift_beginAccess();
  return result;
}

uint64_t sub_22BD6374C()
{

  return swift_allocObject();
}

uint64_t sub_22BD63768()
{
  STACK[0x470] = v0;
}

int *sub_22BD6379C()
{
  v7 = STACK[0x428];
  v8 = STACK[0x450];
  v9 = *(v5 - 160);

  return sub_22BBBFDF8(v0, v7, v8, v2, v3, v4, v9, v1);
}

void sub_22BD637D0()
{
}

uint64_t sub_22BD63804()
{
}

uint64_t sub_22BD63820()
{

  return swift_slowAlloc();
}

double sub_22BD6383C(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  return result;
}

uint64_t sub_22BD63858(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22BD63870()
{

  return swift_slowAlloc();
}

void sub_22BD63900()
{
  v2 = *(v0 + 4328);
  v3 = v2[1];
  *(v1 - 168) = *v2;
  *(v0 + 4568) = v3;
}

uint64_t sub_22BD639EC()
{

  return sub_22BDB77A4();
}

uint64_t sub_22BD63A1C()
{
  *(v2 - 136) = v0;

  return sub_22BB954F0(v1);
}

uint64_t sub_22BD63A4C()
{
  STACK[0x470] = v0;
}

uint64_t sub_22BD63A7C()
{
  STACK[0x470] = v0;
  *(v2 - 136) = *(v1 + 4256);
  STACK[0x450] = *(v1 + 4224);
}

uint64_t sub_22BD63AAC(uint64_t a1, uint64_t a2)
{

  return sub_22BB3CD70(a1, a2, v2, v3);
}

uint64_t sub_22BD63AC4()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD63ADC()
{

  return sub_22BDB8444();
}

uint64_t sub_22BD63AFC(uint64_t a1)
{

  return sub_22BDB6124();
}

BOOL sub_22BD63B1C()
{
  *(v2 - 160) = v1;

  return os_log_type_enabled(v1, v0);
}

void sub_22BD63B3C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

void sub_22BD63B54(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_22BD63B6C(uint64_t a1)
{

  return sub_22BDB9B24();
}

uint64_t sub_22BD63BBC()
{
}

uint64_t sub_22BD63BF4(uint64_t a1)
{

  return sub_22BDB63E4();
}

uint64_t sub_22BD63C10()
{

  return swift_allocObject();
}

uint64_t sub_22BD63C38()
{
}

uint64_t sub_22BD63C54()
{
}

void sub_22BD63C7C(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{
  v8 = *(v6 - 136);

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v8, 0x20u);
}

void sub_22BD63C98()
{
  v2 = *(v0 + 4632);
  *(v1 - 160) = *(v0 + 4576);
  *(v1 - 152) = v2;
}

uint64_t sub_22BD63CDC(uint64_t a1)
{

  return sub_22BBC08A0(a1, v2, v1, (v3 + 80));
}

void sub_22BD63D1C()
{

  sub_22BB4F9D8(v0, v1);
}

BOOL sub_22BD63D5C()
{
  v3 = *(v1 - 168);

  return os_log_type_enabled(v3, v0);
}

uint64_t sub_22BD63D78(uint64_t a1)
{
  *(v3 + 4544) = a1;
  result = v2;
  *(v4 - 240) = v1 + 8;
  return result;
}

uint64_t sub_22BD63DA0()
{
}

void sub_22BD63DC8()
{
  STACK[0x470] = v0[473];
  *(v1 - 256) = v0[466];
  STACK[0x478] = v0[465];
}

uint64_t sub_22BD63DF0()
{
}

uint64_t sub_22BD63E0C(uint64_t a1)
{

  return sub_22BD443E4(a1, (v1 + 1880));
}

uint64_t sub_22BD63E28(uint64_t a1)
{

  return sub_22BDBAE54();
}

uint64_t sub_22BD63E44(uint64_t a1)
{

  return sub_22BDBAE54();
}

uint64_t sub_22BD63E60()
{
}

uint64_t sub_22BD63E94(uint64_t a1)
{
  *(v3 + 1880) = a1;
  v5 = *(v1 + v2);

  return sub_22BB954F8(v5);
}

uint64_t sub_22BD63EB0(uint64_t a1)
{

  return sub_22BB73F58(a1, (v1 - 104));
}

void sub_22BD63EC8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x3Eu);
}

void sub_22BD63EE0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22BD63EF8()
{
}

uint64_t sub_22BD63F10()
{
}

void sub_22BD63F58(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_22BD63F90(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

uint64_t sub_22BD64028(uint64_t result)
{
  *(v2 - 168) = v1;
  *(result + 16) = v1;
  return result;
}

uint64_t sub_22BD64038(uint64_t result)
{
  *(v2 + 1992) = v1;
  *(v2 + 1960) = result;
  return result;
}

void sub_22BD64048(void *a1, uint64_t a2, os_signpost_type_t a3, os_signpost_id_t a4)
{
  v8 = *(v6 - 152);
  v9 = STACK[0x458];

  _os_signpost_emit_with_name_impl(a1, v8, a3, a4, v9, v4, v5, 0x16u);
}

uint64_t sub_22BD64070@<X0>(uint64_t a1@<X8>)
{
  *(v3 + a1) = v1;
  *(v3 + *(v2 + 36)) = 0;
  *(v3 + *(v2 + 40)) = 0;

  return type metadata accessor for SessionCoordinatorResponseCallback(0);
}

void sub_22BD64098()
{
  *(v1 - 168) = *(v0 + 3912);
  STACK[0x458] = *(v0 + 3832);
  v3 = STACK[0x470];
}

id sub_22BD640C0()
{
  *(v1 - 160) = v0;

  return v0;
}

uint64_t sub_22BD640D8()
{
}

uint64_t sub_22BD640F0()
{
}

uint64_t sub_22BD64138(uint64_t result)
{
  *(v1 + 1896) = 0;
  *(v1 + 1888) = result;
  return result;
}

uint64_t sub_22BD641EC(uint64_t result)
{
  *(v1 + 1720) = 0;
  *(v1 + 1704) = result;
  return result;
}

uint64_t sub_22BD6433C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22BD64360()
{

  return sub_22BDB5E14();
}

uint64_t sub_22BD6437C()
{
  *(v1 - 160) = *(v0 + 3832);
}

uint64_t sub_22BD643A0()
{
  STACK[0x400] = v1;
  STACK[0x408] = v0;

  return sub_22BB67968(32);
}

uint64_t sub_22BD643C4()
{
  *(v2 - 208) = v1;

  return sub_22BD7577C(v1, v0);
}

uint64_t sub_22BD643E0()
{
}

uint64_t sub_22BD643FC()
{
  STACK[0x470] = v0;
}

uint64_t sub_22BD64420()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD6443C()
{
}

uint64_t sub_22BD64454()
{
}

void sub_22BD64478(uint64_t a1@<X8>)
{
  *(v1 + 184) = a1;

  sub_22BB69CB4(0, v2, 0);
}

uint64_t sub_22BD6449C()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD644B8()
{
  v3 = *v1;

  return sub_22BD81270(v0, v3);
}

uint64_t sub_22BD644D4(uint64_t a1)
{

  return sub_22BB6BEE0(v1, a1 + v2, v3, v4);
}

uint64_t sub_22BD644F8()
{
  *(v1 - 232) = v0;
}

uint64_t sub_22BD6451C()
{
}

uint64_t sub_22BD64538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_22BDB8F24();
}

uint64_t sub_22BD6455C()
{

  return sub_22BDBAF34();
}

uint64_t sub_22BD64580(uint64_t a1)
{

  return sub_22BDB7774();
}

uint64_t sub_22BD6459C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *a2 = v25;

  return v26, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25;
}

uint64_t sub_22BD645B8()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22BD645D4(uint64_t a1)
{
  *(a1 + 16) = v1;
}

int *sub_22BD645F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v7 - 160);

  return sub_22BBBFDF8(a1, a2, a3, v4, v5, v6, v9, a4);
}

uint64_t sub_22BD64614@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB3A518(v1, v2 + a1);
}

uint64_t sub_22BD6462C()
{
}

uint64_t sub_22BD64644()
{
}

void sub_22BD6465C(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 0x16u);
}

uint64_t sub_22BD64674(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  return sub_22BB89E44(v2, a2);
}

uint64_t sub_22BD6468C(uint64_t a1)
{

  return sub_22BDB63E4();
}

uint64_t sub_22BD646A4(uint64_t a1)
{

  return sub_22BDB5BA4();
}

uint64_t sub_22BD646BC(uint64_t a1)
{

  return sub_22BDBB244();
}

void sub_22BD646D4()
{

  JUMPOUT(0x23189FC40);
}

void sub_22BD646EC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x20u);
}

uint64_t sub_22BD64704()
{

  return swift_slowAlloc();
}

uint64_t sub_22BD6471C(uint64_t a1, uint64_t (*a2)(unint64_t), uint64_t a3)
{

  return sub_22BB6FA18(a1, a2, a3);
}

uint64_t sub_22BD64734()
{

  return sub_22BD44098(v0);
}

uint64_t sub_22BD6474C()
{
}

uint64_t sub_22BD64764()
{
}

void sub_22BD648E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *v10;
  *v11 = a10;
  *v10 = v11 + 1;
}

void sub_22BD648F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v12 = *v11;
  *v12 = a11;
  *v11 = v12 + 1;
}

uint64_t sub_22BD64A48()
{
  sub_22BB32FA4((v0 + 136));

  return sub_22BB32FA4((v0 + 96));
}

uint64_t sub_22BD64A74(uint64_t result)
{
  *(v1 + 2256) = 0;
  *(v1 + 2264) = result;
  return result;
}

uint64_t sub_22BD64ADC(uint64_t result)
{
  v1 = STACK[0x3D8];
  *(result + 16) = STACK[0x438];
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BD64B60(uint64_t result)
{
  *(v1 - 120) = 0;
  *(v1 - 112) = result;
  return result;
}

unint64_t sub_22BD64C88()
{
  STACK[0x3E0] = v0;
  STACK[0x3F0] = v2;
  STACK[0x3E8] = v1;
  return v2 + v1;
}

uint64_t sub_22BD64CB4(uint64_t result)
{
  *(v1 + 1840) = 0;
  *(v1 + 1808) = result;
  return result;
}

uint64_t sub_22BD64CE4(uint64_t result)
{
  *(v2 + 2240) = v1;
  *(v2 + 2208) = result;
  return result;
}

uint64_t sub_22BD64E04(uint64_t result)
{
  *(v1 + 1656) = 0;
  *(v1 + 1664) = result;
  return result;
}

uint64_t sub_22BD64E10()
{

  return sub_22BB67984((v0 + 1080), v0 + 2104, v0 + 2072, v0 + 2064);
}

uint64_t sub_22BD64E30()
{
}

uint64_t sub_22BD64E50()
{

  return sub_22BDBABE4();
}

uint64_t sub_22BD64E70()
{
}

uint64_t sub_22BD64E90()
{
  *(v2 - 200) = v0;
  *(v2 - 176) = v1;

  return sub_22BB67968(22);
}

uint64_t sub_22BD64EB0()
{
  *(v2 - 200) = v1;
  *(v2 - 176) = v0;

  return sub_22BB67968(22);
}

uint64_t sub_22BD64ED0()
{
}

uint64_t sub_22BD64EF0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 168) = a1;
}

uint64_t sub_22BD64F10(uint64_t a1)
{
  *(v2 + 16) = v1 & 1;
  *(*(v3 - 216) + 16) = v1 & 1;

  return sub_22BDB8404();
}

BOOL sub_22BD64F30()
{
  v1 = LODWORD(STACK[0x308]);
  v2 = STACK[0x300];

  return os_log_type_enabled(v2, v1);
}

uint64_t sub_22BD64F50(uint64_t a1)
{

  return sub_22BDB6104();
}

uint64_t sub_22BD64F70(uint64_t a1)
{

  return sub_22BDB63E4();
}

uint64_t sub_22BD64F90()
{
  STACK[0x458] = *(v0 - 104);
}

uint64_t sub_22BD64FB0()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BD64FD0()
{

  return sub_22BB67968(12);
}

uint64_t sub_22BD64FF0()
{
  v1 = STACK[0x3E8] + STACK[0x458];
  v2 = STACK[0x440];

  return sub_22BB335C0(v1, v2);
}

uint64_t sub_22BD65010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56) + 80 * a2;

  return sub_22BD5F464(v4, v2 + 16);
}

uint64_t sub_22BD65030()
{
}

uint64_t sub_22BD65050()
{

  return sub_22BB67984((v0 + 1368), v0 + 2352, v0 + 2344, v0 + 2312);
}

uint64_t sub_22BD65070@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984((a1 + 1144), a1 + 2152, a1 + 2120, a1 + 2112);
}

uint64_t sub_22BD65090(uint64_t a1)
{

  return sub_22BDB63E4();
}

uint64_t sub_22BD650B0()
{
}

uint64_t sub_22BD650D0(uint64_t a1)
{
  *(v3 - 168) = a1;

  return sub_22BB3A518(v2, a1 + v1);
}

uint64_t sub_22BD650F0@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 152) = a1;
}

uint64_t sub_22BD65110(uint64_t a1)
{
  *(v2 - 240) = a1;
  *(v2 - 136) = v1;
}

uint64_t sub_22BD65130(uint64_t a1)
{

  return sub_22BB3A518(v1, a1 + v2);
}

uint64_t sub_22BD65150()
{

  return sub_22BB67984((v0 + 1512), v0 + 2368, v0 + 2376, v0 + 2384);
}

uint64_t sub_22BD65170@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 160) = a1;
}

void sub_22BD65188()
{
  v2 = *(v0 + 2056);
}

uint64_t sub_22BD651A0()
{
}

uint64_t sub_22BD651B8(uint64_t a1)
{

  return sub_22BDB63E4();
}

id sub_22BD651D0()
{
  *(v1 + 2056) = v0;

  return v0;
}

uint64_t sub_22BD651E8()
{

  return sub_22BB382E8(v0, v1 + 176);
}

uint64_t sub_22BD65200(uint64_t a1)
{

  return sub_22BDB6124();
}

uint64_t sub_22BD65218()
{
}

uint64_t sub_22BD65230()
{

  return sub_22BDB9A34();
}

uint64_t sub_22BD65248()
{
}

uint64_t sub_22BD65260()
{

  return swift_endAccess();
}

uint64_t sub_22BD65278()
{
}

uint64_t sub_22BD65290(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  return sub_22BB89E44(v2, a2);
}

uint64_t sub_22BD652A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  return sub_22BB89E44(v2, a2);
}

uint64_t sub_22BD652C0()
{
}

uint64_t sub_22BD652D8(uint64_t a1)
{

  return sub_22BB3A518(v1, a1 + v2);
}

uint64_t sub_22BD652F0(uint64_t a1)
{

  return sub_22BDB63E4();
}

uint64_t sub_22BD65308(uint64_t a1)
{

  return sub_22BDB63E4();
}

uint64_t sub_22BD65320(uint64_t a1)
{

  return sub_22BDB63E4();
}

uint64_t sub_22BD65338()
{
}

uint64_t sub_22BD65350()
{
  *(v1 - 160) = v0;

  return sub_22BB67968(22);
}

uint64_t sub_22BD65368(uint64_t a1)
{

  return sub_22BDB63E4();
}

void sub_22BD65380(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 0x16u);
}

void sub_22BD65398()
{

  JUMPOUT(0x23189FBE0);
}

uint64_t sub_22BD653B0()
{

  return sub_22BB67968(22);
}

void sub_22BD653C8()
{

  JUMPOUT(0x23189FCA0);
}

uint64_t sub_22BD653E0()
{
}

void sub_22BD653F8()
{

  JUMPOUT(0x23189FD90);
}

void sub_22BD65410(void *a1, NSObject *a2, os_signpost_type_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, a2, a3, a4, a5, a6, v6, 0x16u);
}

uint64_t sub_22BD65428()
{

  return sub_22BB67968(22);
}

uint64_t sub_22BD65440()
{

  return sub_22BDB5B94();
}

void sub_22BD65458(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x22u);
}

uint64_t sub_22BD65470()
{
}

uint64_t sub_22BD65488()
{
}

uint64_t sub_22BD654A0(uint64_t a1)
{

  return sub_22BB72E80(a1);
}

void sub_22BD654B8()
{
  v2 = *(v0 + 2304);
}

uint64_t sub_22BD654D0(uint64_t a1)
{

  return sub_22BDB63E4();
}

id sub_22BD654E8()
{
  *(v1 + 2304) = v0;

  return v0;
}

uint64_t sub_22BD65500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{

  return v25, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25;
}

uint64_t sub_22BD65518(uint64_t a1)
{

  return sub_22BB72E80(a1);
}

uint64_t sub_22BD65530()
{

  return sub_22BB690EC(v0, v1 + 136);
}

uint64_t sub_22BD65548()
{

  return sub_22BB67968(22);
}

uint64_t sub_22BD655B4(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_22BDBB414();
    v9 = sub_22BDB7BD4();
    sub_22BB30434(v9);
    v11 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    while (1)
    {
      a1(&v14, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_22BDBB3F4();
      sub_22BDBB424();
      sub_22BDBB434();
      sub_22BDBB404();
      v11 += v13;
      if (!--v6)
      {
        return v15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BD657C0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  v11 = v7;
  v13 = a4(0);
  sub_22BB30434(v13);
  v15 = v14;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v16);
  sub_22BB36FD8();
  v17 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    return v18;
  }

  v31 = MEMORY[0x277D84F90];
  v19 = sub_22BB97C48();
  (a5)(v19);
  v18 = v31;
  v20 = a6(0);
  sub_22BB30434(v20);
  v22 = a3 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v28 = *(v23 + 72);
  while (1)
  {
    a1(v22);
    if (v11)
    {
      break;
    }

    v11 = 0;
    v25 = *(v31 + 16);
    v24 = *(v31 + 24);
    if (v25 >= v24 >> 1)
    {
      a5(v24 > 1, v25 + 1, 1);
    }

    *(v31 + 16) = v25 + 1;
    sub_22BB2F390();
    sub_22BD72308(v8, v31 + v26 + *(v15 + 72) * v25, a7);
    v22 += v28;
    if (!--v17)
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD659A4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for FeedbackLearning.FlowExpressionValue(0);
  v7 = sub_22BB30434(v6);
  v9 = v8;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = *(a3 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v23 = MEMORY[0x277D84F90];
  sub_22BD28408(0, v13, 0);
  v14 = v23;
  sub_22BB2F390();
  v21 = v15;
  v16 = a3 + v15;
  v17 = *(v9 + 72);
  while (1)
  {
    a1(v16);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v19 = *(v23 + 16);
    v18 = *(v23 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_22BD28408(v18 > 1, v19 + 1, 1);
    }

    *(v23 + 16) = v19 + 1;
    sub_22BD72308(v12, v23 + v21 + v19 * v17, type metadata accessor for FeedbackLearning.FlowExpressionValue);
    v16 += v17;
    if (!--v13)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD65B38(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v10 = v6;
  v27 = a4(0);
  sub_22BB30444();
  v13 = v12;
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v14);
  sub_22BB36FD8();
  v15 = *(a3 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v29 = MEMORY[0x277D84F90];
  v17 = sub_22BB97C48();
  (a5)(v17);
  v16 = v29;
  v18 = a6(0);
  sub_22BB30434(v18);
  v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v26 = *(v21 + 72);
  while (1)
  {
    a1(v20);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v23 = *(v29 + 16);
    v22 = *(v29 + 24);
    if (v23 >= v22 >> 1)
    {
      a5(v22 > 1, v23 + 1, 1);
    }

    *(v29 + 16) = v23 + 1;
    sub_22BB2F390();
    (*(v13 + 32))(v29 + v24 + *(v13 + 72) * v23, v7, v27);
    v20 += v26;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BD65D2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *v4;
  v8 = *sub_22BB69FEC(a4, a4[3]);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_22BBF90EC;
  v10 = sub_22BB39478();

  return sub_22BD6F274(v10, v11, a3, v8, v7);
}

uint64_t sub_22BD65E0C()
{
  sub_22BB34E84();
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  v1[1] = sub_22BBF90EC;

  return sub_22BD65EE0();
}

uint64_t sub_22BD65EE0()
{
  sub_22BB2F35C();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  v1[12] = v7;
  v1[13] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[20] = AssociatedTypeWitness;
  sub_22BB30434(AssociatedTypeWitness);
  v1[21] = v10;
  v1[22] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v1[23] = v11;
  sub_22BB30434(v11);
  v1[24] = v12;
  v1[25] = swift_task_alloc();
  v13 = sub_22BDB9C14();
  v1[26] = v13;
  sub_22BB30434(v13);
  v1[27] = v14;
  v1[28] = swift_task_alloc();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

void sub_22BD66084()
{
  v1 = v0[18];
  v2 = sub_22BB39478();
  v3(v2);
  v4 = *(v1 + 72);
  sub_22BB7592C();
  v0[5] = swift_getAssociatedTypeWitness();
  sub_22BB2F0E0();
  v0[6] = swift_getAssociatedConformanceWitness();
  sub_22BB8B8A0(v0 + 2, v5, v6, v7, v8, v9, v10, v11);
  v12 = sub_22BB39478();
  v4(v12);
  v13 = sub_22BB39478();
  v14(v13);
  v15 = sub_22BB39478();
  v16(v15);
  v17 = sub_22BB39478();
  v18(v17);
  v19 = swift_task_alloc();
  v0[29] = v19;
  sub_22BB2F0E0();
  sub_22BB72E5C();
  swift_getAssociatedConformanceWitness();
  sub_22BB2F0E0();
  swift_getAssociatedConformanceWitness();
  *v19 = v0;
  v19[1] = sub_22BD662FC;
  sub_22BB31534();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BD665FC(uint64_t a1)
{
  v2 = sub_22BDB9B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BBE6DE0(&qword_27D8E3510, &qword_22BDBEF70);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_22BD27AF0(0, v9, 0);
    v10 = v20;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22BD27AF0(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v15 + 1;
      sub_22BBDB5D0(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, &qword_27D8E3510, &qword_22BDBEF70);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void sub_22BD66840()
{
  sub_22BB30F94();
  v4 = v3;
  sub_22BBE6DE0(&qword_27D8E60D8, &unk_22BDCD620);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB89D4C();
  sub_22BBE6DE0(&qword_27D8E42E0, &unk_22BDD03F0);
  sub_22BB30444();
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v6);
  sub_22BB3B818();
  if (v1)
  {
    v7 = sub_22BBDB908();
    sub_22BBDB3C4(v7, v8, v9);
    sub_22BB58B20();
    do
    {
      sub_22BBBEE60(v4, v0, &qword_27D8E60D8, &unk_22BDCD620);
      sub_22BB3B710();
      sub_22BB36A9C();
      if (v10)
      {
        sub_22BB95BB8();
        sub_22BBDB3C4(v13, v14, v15);
      }

      v11 = sub_22BB38E98();
      sub_22BBDB5D0(v11, v12, &qword_27D8E42E0, &unk_22BDD03F0);
      v4 += v2;
      --v1;
    }

    while (v1);
  }

  sub_22BB314EC();
}

uint64_t sub_22BD669F8(uint64_t a1)
{
  result = sub_22BB3A770(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_22BD6F1D8(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_22BD66B50(uint64_t a1)
{
  v4 = sub_22BB3A770(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_22BD6F1D8(v4, 1, sub_22BB8C414);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_22BD725C0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_22BD66CB4(uint64_t a1)
{
  result = sub_22BB3A770(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v6;
  sub_22BD6F1D8(result, 1, v5);
  v11 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v12 = (*(v11 + 24) >> 1) - *(v11 + 16);
  result = sub_22BBE6DE0(v10, v9);
  if (v12 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v11;
    return result;
  }

  v13 = *(v11 + 16);
  v8 = __OFADD__(v13, v1);
  v14 = v13 + v1;
  if (!v8)
  {
    *(v11 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_22BD66DBC()
{
  sub_22BB30F94();
  v54 = v1;
  v55 = v2;
  sub_22BB35760();
  v51 = sub_22BDB82C4();
  sub_22BB30444();
  v49 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = v6 - v5;
  sub_22BDB43E4();
  sub_22BB30444();
  v52 = v9;
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22BB30574();
  v50 = v11 - v10;
  v12 = sub_22BDB9B14();
  sub_22BB30444();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v18 = v17 - v16;
  v19 = sub_22BBE6DE0(&qword_27D8E66F0, &qword_22BDCE7B8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - v23;
  v25 = sub_22BDB8F54();
  sub_22BB30444();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22BB30574();
  sub_22BB36FD8();
  (*(v14 + 16))(v18, v0, v12);
  v29 = (*(v14 + 88))(v18, v12);
  if (v29 == *MEMORY[0x277D1E710])
  {
    v30 = MEMORY[0x277D1E198];
LABEL_11:
    (*(v27 + 104))(v22, *v30, v25);
    v31 = 0;
    goto LABEL_12;
  }

  if (v29 == *MEMORY[0x277D1E728])
  {
    v30 = MEMORY[0x277D1E1A8];
    goto LABEL_11;
  }

  if (v29 == *MEMORY[0x277D1E730])
  {
    v30 = MEMORY[0x277D1E1A0];
    goto LABEL_11;
  }

  if (v29 == *MEMORY[0x277D1E750])
  {
    v30 = MEMORY[0x277D1E188];
    goto LABEL_11;
  }

  if (v29 == *MEMORY[0x277D1E810])
  {
    v30 = MEMORY[0x277D1E190];
    goto LABEL_11;
  }

  v31 = 1;
LABEL_12:
  sub_22BB336D0(v22, v31, 1, v25);
  (*(v14 + 8))(v18, v12);
  sub_22BBDB5D0(v22, v24, &qword_27D8E66F0, &qword_22BDCE7B8);
  sub_22BB31814(v24, 1, v25);
  if (v32)
  {
    sub_22BB325EC(v24, &qword_27D8E66F0, &qword_22BDCE7B8);
    type metadata accessor for ExecutorLogging(0);
    sub_22BB30B28();
  }

  else
  {
    v33 = *(v27 + 32);
    v34 = sub_22BB2F12C();
    (v33)(v34);
    sub_22BDB8E54();
    sub_22BD725D4();
    v35();
    v36 = v49;
    v37 = v51;
    (*(v49 + 104))(v7, *MEMORY[0x277D1DC98], v51);
    v38 = v50;
    v39 = v54;
    sub_22BDB8E44();
    (*(v36 + 8))(v7, v37);
    v40 = v55;
    sub_22BD725D4();
    v33();
    v41 = type metadata accessor for ExecutorLogging(0);
    v42 = *(v41 + 24);
    sub_22BDB9774();
    sub_22BB30ED8();
    (*(v43 + 16))(v40 + v42, v39);
    (*(v52 + 32))(v40 + *(v41 + 20), v38, v53);
    sub_22BB331C8();
    v47 = v41;
  }

  sub_22BB336D0(v44, v45, v46, v47);
  sub_22BB314EC();
}

uint64_t sub_22BD672A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  sub_22BBE6DE0(&qword_27D8E2F60, &unk_22BDBD960);
  v4[20] = swift_task_alloc();
  v5 = sub_22BDB4C84();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_22BDB5404();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  v7 = sub_22BDB8E14();
  v4[27] = v7;
  v4[28] = *(v7 - 8);
  v4[29] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E3A80, &qword_22BDC0608);
  v4[30] = swift_task_alloc();
  v8 = sub_22BDB90B4();
  v4[31] = v8;
  v4[32] = *(v8 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v4[35] = swift_task_alloc();
  v4[36] = type metadata accessor for QueryResultPayload(0);
  v4[37] = swift_task_alloc();
  v9 = sub_22BDB7734();
  v4[38] = v9;
  v4[39] = *(v9 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v10 = sub_22BDB7754();
  v4[43] = v10;
  v4[44] = *(v10 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v11 = sub_22BDB6774();
  v4[47] = v11;
  v4[48] = *(v11 - 8);
  v4[49] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v12 = sub_22BDB77D4();
  v4[52] = v12;
  v4[53] = *(v12 - 8);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v13 = sub_22BDB4C34();
  v4[57] = v13;
  v4[58] = *(v13 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v14 = sub_22BDBA5C4();
  v4[63] = v14;
  v4[64] = *(v14 - 8);
  v4[65] = swift_task_alloc();
  v15 = sub_22BDBA594();
  v4[66] = v15;
  v4[67] = *(v15 - 8);
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v16 = sub_22BDB9014();
  v4[71] = v16;
  v4[72] = *(v16 - 8);
  v4[73] = swift_task_alloc();
  v17 = sub_22BDB88E4();
  v4[74] = v17;
  v4[75] = *(v17 - 8);
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v4[78] = swift_task_alloc();
  v18 = sub_22BDB9B54();
  v4[79] = v18;
  v4[80] = *(v18 - 8);
  v4[81] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E66B8, &qword_22BDCE788);
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v19 = sub_22BDB8C14();
  v4[85] = v19;
  v4[86] = *(v19 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v20 = sub_22BDB43E4();
  v4[89] = v20;
  v4[90] = *(v20 - 8);
  v4[91] = swift_task_alloc();
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v21 = sub_22BDB9D04();
  v4[94] = v21;
  v4[95] = *(v21 - 8);
  v4[96] = swift_task_alloc();
  v22 = sub_22BDB9774();
  v4[97] = v22;
  v4[98] = *(v22 - 8);
  v4[99] = swift_task_alloc();
  v4[100] = swift_task_alloc();
  v23 = sub_22BDB9564();
  v4[101] = v23;
  v4[102] = *(v23 - 8);
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v24 = sub_22BDB9B14();
  v4[106] = v24;
  v4[107] = *(v24 - 8);
  v4[108] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD67CB8, 0, 0);
}

uint64_t sub_22BD67CB8(uint64_t a1)
{
  v1499 = v1;
  sub_22BDB9B24();
  v2 = sub_22BB30AE4();
  v4 = v3(v2);
  if (v4 == *MEMORY[0x277D1E710])
  {
    v5 = v1[108];
    sub_22BD725A0();
    v6 = v1[105];
    v7 = v1[102];
    v8 = v1[101];
    (*(v9 + 96))(v5);
    (*(v7 + 32))(v6, v5, v8);
    sub_22BDB96A4();
    v10 = sub_22BDB9744();
    v11 = sub_22BB331D4();
    v12(v11);
    v1[15] = v10;
    v13 = sub_22BB2F0E0();
    sub_22BBE6DE0(v13, v14);
    sub_22BB31DE0();
    sub_22BB7592C();
    sub_22BBB5F9C(v15, v16, v17, v18);
    v19 = sub_22BDB90E4();

    if (v19)
    {
      sub_22BDB63F4();
      v20 = sub_22BB34900();
      v21(v20);
      v22 = sub_22BDB77C4();
      v23 = sub_22BDBB134();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v1[102];
      v26 = v1[101];
      v27 = v1[56];
      v29 = v1[52];
      v28 = v1[53];
      if (v24)
      {
        swift_slowAlloc();
        v1488 = sub_22BB38198();
        v1498[0] = v1488;
        *v29 = 136315138;
        sub_22BD721F4(&qword_27D8E66E0, MEMORY[0x277D1E5C0], MEMORY[0x277D1E5D8]);
        sub_22BDBB684();
        v30 = v25 + 8;
        v31 = sub_22BB38BE8();
        v32(v31);
        v33 = sub_22BB5138C();
        v36 = sub_22BB32EE0(v33, v34, v35);

        *(v29 + 4) = v36;
        sub_22BB3E308(&dword_22BB2C000, v37, v38, "Executor: Skipping action execution due to safety mode being enabled: %s");
        sub_22BB32FA4(v1488);
        sub_22BB30AF0();
        sub_22BB30AF0();

LABEL_22:
        (*(v28 + 8))(v27, v29);
        v149 = v1[107];
        v150 = v1[106];
        sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
        sub_22BBADC5C();
        v151 = swift_allocObject();
        *(v151 + 16) = xmmword_22BDBCBD0;
        sub_22BDB8CF4();
        (*(v149 + 104))(v151 + v30, *MEMORY[0x277D1E7A8], v150);
        v152 = sub_22BB30AE4();
        v26(v152);
        goto LABEL_34;
      }

LABEL_21:

      v30 = v25 + 8;
      v147 = sub_22BB38BE8();
      v148(v147);
      goto LABEL_22;
    }

    v68 = swift_task_alloc();
    v1[115] = v68;
    *v68 = v1;
    v68[1] = sub_22BD69C3C;
    sub_22BB36C48();

    return sub_22BD6C648(v69, v70, v71, v72);
  }

  if (v4 == *MEMORY[0x277D1E728])
  {
    v39 = v1[108];
    sub_22BD725A0();
    v40 = v1[88];
    v41 = v1[86];
    v42 = v1[85];
    v43 = v1[84];
    v1494 = v1[83];
    (*(v44 + 96))(v39);
    (*(v41 + 32))(v40, v39, v42);
    sub_22BDB96A4();
    v45 = sub_22BDB9744();
    v46 = sub_22BB30AE4();
    v47(v46);
    v1[13] = v45;
    v48 = swift_task_alloc();
    *(v48 + 16) = v40;
    v49 = sub_22BB2F3F0();
    sub_22BBE6DE0(v49, v50);
    v51 = sub_22BBE6DE0(&qword_27D8E66D0, &qword_22BDCE798);
    sub_22BB35554();
    sub_22BBB5F9C(v52, v53, &unk_22BDBD950, v54);
    sub_22BD725D4();
    sub_22BDB9074();

    v48, v55, v56, v57, v58, v59, v60, v61, v626, v674, v722, v770, v818, v866, v914, v962, v1010, v1058, v1106, v1154, v1202, v1250, v1298, v1346, v1394;
    sub_22BBBEE60(v43, v1494, &qword_27D8E66B8, &qword_22BDCE788);
    v62 = sub_22BB3A190();
    sub_22BB31814(v62, v63, v51);
    if (v164)
    {
      v64 = v1[79];
      sub_22BB325EC(v1[83], &qword_27D8E66B8, &qword_22BDCE788);
      sub_22BB30B28();
      sub_22BB336D0(v65, v66, v67, v64);
    }

    else
    {
      v153 = v1[102];
      v154 = v1[101];
      v155 = v1[83];
      v156 = v1[79];
      v157 = v1[78];
      v158 = *(v51 + 48);
      v159 = *(v1[80] + 32);
      sub_22BB7592C();
      v159();
      sub_22BB331C8();
      sub_22BB336D0(v160, v161, v162, v156);
      v163 = *(v153 + 8);
      v1[121] = v163;
      v1[122] = (v153 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v163(v155 + v158, v154);
      sub_22BB31814(v157, 1, v156);
      if (!v164)
      {
        v574 = v1[82];
        (v159)(v1[81], v1[78], v1[79]);
        v575 = sub_22BB2F3F0();
        sub_22BBBEE60(v575, v576, v577, v578);
        v579 = sub_22BB3AA28(v574, 1, v51);
        v580 = v1[80];
        v581 = v1[79];
        if (v579 == 1)
        {
          v582 = v1[101];
          v583 = v1[82];
          (*(v580 + 8))(v1[81], v1[79]);
          sub_22BB325EC(v583, &qword_27D8E66B8, &qword_22BDCE788);
          v584 = sub_22BB34170();
          sub_22BB336D0(v584, v585, v586, v582);
        }

        else
        {
          v613 = v1[101];
          v614 = v1[82];
          v615 = *(v51 + 48);
          v616 = *(v1[102] + 32);
          v616(v1[30], v614 + v615, v613);
          sub_22BB331C8();
          sub_22BB336D0(v617, v618, v619, v613);
          v620 = *(v580 + 8);
          v1[123] = v620;
          v1[124] = (v580 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v620(v614, v581);
          v621 = sub_22BB3A190();
          sub_22BB31814(v621, v622, v613);
          if (!v164)
          {
            v616(v1[103], v1[30], v1[101]);
            v623 = swift_task_alloc();
            v1[125] = v623;
            *v623 = v1;
            v623[1] = sub_22BD6A9D4;
            sub_22BB36C48();

            return sub_22BC5B99C(v624);
          }

          v620(v1[81], v1[79]);
        }

        v165 = v1[30];
        v166 = &qword_27D8E3A80;
        v167 = &qword_22BDC0608;
        goto LABEL_26;
      }
    }

    v165 = v1[78];
    v166 = &unk_27D8E69E0;
    v167 = &qword_22BDC1660;
LABEL_26:
    sub_22BB325EC(v165, v166, v167);
    sub_22BDB63F4();
    v168 = sub_22BB34900();
    v169(v168);
    v170 = sub_22BDB77C4();
    v171 = sub_22BDBB114();
    v172 = os_log_type_enabled(v170, v171);
    v173 = v1[87];
    v174 = v1[86];
    v175 = v1[85];
    if (v172)
    {
      v176 = v1[62];
      v178 = v1[57];
      v177 = v1[58];
      v1497 = v1[55];
      v1478 = v1[53];
      v1482 = v1[52];
      swift_slowAlloc();
      v1474 = sub_22BB38198();
      v1498[0] = v1474;
      *v175 = 136315138;
      v1470 = v171;
      sub_22BDB8BF4();
      sub_22BD721F4(&qword_27D8E2F68, MEMORY[0x277D1C338], MEMORY[0x277D1C368]);
      v179 = sub_22BDBB684();
      v181 = v180;
      (*(v177 + 8))(v176, v178);
      v1491 = *(v174 + 8);
      v1491(v173, v175);
      v182 = sub_22BB32EE0(v179, v181, v1498);

      *(v175 + 4) = v182;
      _os_log_impl(&dword_22BB2C000, v170, v1470, "Executor: Ignoring cancellation request since there's no actionCreated event for %s", v175, 0xCu);
      sub_22BB32FA4(v1474);
      sub_22BB30AF0();
      sub_22BB30AF0();

      (*(v1478 + 8))(v1497, v1482);
    }

    else
    {

      v1491 = *(v174 + 8);
      v1491(v173, v175);
      v208 = sub_22BB2F3F0();
      v209(v208);
    }

    v210 = v1[107];
    v1471 = v1[88];
    v1475 = v1[106];
    v1479 = v1[84];
    v1483 = v1[85];
    v212 = v1[25];
    v211 = v1[26];
    v213 = v1[23];
    v1460 = v1[89];
    v1463 = v1[24];
    v214 = v1[22];
    v1458 = v1[21];
    sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
    sub_22BB3E234();
    v217 = v216 & ~v215;
    v218 = swift_allocObject();
    *(v218 + 16) = xmmword_22BDBCBD0;
    sub_22BB30B28();
    sub_22BB336D0(v219, v220, v221, v1460);
    (*(v214 + 104))(v213, *MEMORY[0x277D1C3B0], v1458);
    sub_22BDB4CC4();
    (*(v212 + 104))(v211, *MEMORY[0x277D1CBE8], v1463);
    sub_22BDB53F4();
    sub_22BB30B28();
    sub_22BB336D0(v222, v223, v224, v225);
    sub_22BB2F324();
    sub_22BDB90A4();
    sub_22BDB96C4();
    sub_22BDB98D4();

    sub_22BDB8BF4();
    sub_22BB31B20();
    sub_22BDB87C4();
    (*(v210 + 104))(v218 + v217, *MEMORY[0x277D1E798], v1475);
    sub_22BB325EC(v1479, &qword_27D8E66B8, &qword_22BDCE788);
    v1491(v1471, v1483);
    goto LABEL_34;
  }

  if (v4 == *MEMORY[0x277D1E730])
  {
    v75 = v1[108];
    sub_22BD725A0();
    v1473 = v1[92];
    v1477 = v1[93];
    v1481 = v1[91];
    v1485 = v1[90];
    v76 = v1[89];
    v1489 = v1[50];
    v1495 = v1[51];
    v1462 = v1[48];
    v1465 = v1[47];
    v1469 = v1[49];
    (*(v77 + 96))(v75);
    v78 = sub_22BB33728();
    v79(v78);
    sub_22BDB9B34();
    v80 = sub_22BDB9A14();
    v81 = sub_22BDB8434();
    v83 = sub_22BD81020(v81, v82, v80);
    v85 = v84;

    v86 = v85 & 1;
    if (v85)
    {
      v87 = 0;
    }

    else
    {
      v87 = v83;
    }

    sub_22BDB9964();
    v88 = sub_22BDB9A24();
    v1451 = v89;
    v1452 = v88;
    v90 = type metadata accessor for ExecutorSELFContext(0);
    v1[5] = v90;
    sub_22BB32D00();
    v1[6] = sub_22BD721F4(v91, v92, &unk_22BDBEBFC);
    v100 = sub_22BB8B8A0(v1 + 2, v93, v94, v95, v96, v97, v98, v99);
    v101 = v90[8];
    v102 = v100 + v90[7];
    sub_22BB30B28();
    v1449 = v76;
    sub_22BB336D0(v103, v104, v105, v76);
    v1455 = v90[5];
    sub_22BDB43D4();
    v106 = v76;
    v107 = *(v1485 + 16);
    v107(v100 + v90[6], v1477, v106);
    v1457 = v87;
    *v102 = v87;
    v102[8] = v86;
    sub_22BD72114(v1495, v100 + v101);
    v108 = (v100 + v90[10]);
    *v108 = v1452;
    v108[1] = v1451;
    sub_22BDB6764();
    sub_22BDB6744();
    v107(v1473, v1477, v1449);
    sub_22BDB6754();
    v109 = v90[9];
    sub_22BDB6724();
    v110 = type metadata accessor for ExecutorSELFLogEmitter();
    v1453 = swift_allocObject();
    v107(v1473, v100 + v1455, v1449);
    v107(v1481, v100 + v109, v1449);
    sub_22BBBEE60(v1495, v1489, &qword_27D8E3218, &qword_22BDBE390);
    v111 = type metadata accessor for ExecutorSELFLoggerASync(0);
    v112 = sub_22BB34ED4(v111);
    v107((v112 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_componentId), v1481, v1449);
    v113 = type metadata accessor for ExecutorSELFLoggerSync(0);
    v114 = sub_22BB34ED4(v113);
    *(v114 + 5) = v110;
    *(v114 + 6) = &off_283F74E60;
    *(v114 + 2) = v1453;
    v115 = *(v1485 + 32);
    v115(&v114[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId], v1473, v1449);
    v115(&v114[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_componentId], v1481, v1449);
    v116 = &v114[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId];
    *v116 = v1457;
    v116[8] = v86;
    sub_22BBDB5D0(v1489, &v114[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_ifRequestId], &qword_27D8E3218, &qword_22BDBE390);
    *(v112 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_logger) = v114;
    v100[3] = v111;
    v100[4] = &off_283F74C80;
    *v100 = v112;
    (*(v1462 + 8))(v1469, v1465);
    sub_22BB325EC(v1495, &qword_27D8E3218, &qword_22BDBE390);
    (*(v1485 + 8))(v1477, v1449);
    sub_22BDB6134();
    sub_22BDB7724();
    v117 = sub_22BDB7744();
    v118 = sub_22BDBB1D4();
    if (sub_22BDBB244())
    {
      v119 = sub_22BB37F30();
      *v119 = 0;
      v120 = sub_22BDB7714();
      _os_signpost_emit_with_name_impl(&dword_22BB2C000, v117, v118, v120, "IF.Executor.runQuery", "", v119, 2u);
      sub_22BB30AF0();
    }

    v121 = v1[80];
    v122 = v1[46];
    v124 = v1[43];
    v123 = v1[44];
    v125 = v1[41];
    v126 = v1[42];
    v128 = v1[38];
    v127 = v1[39];
    v1490 = v1[18];
    v1496 = v1[79];
    v1486 = v1[16];

    (*(v127 + 16))(v125, v126, v128);
    v129 = sub_22BDB77A4();
    sub_22BB34ED4(v129);
    sub_22BB3A190();
    v1[118] = sub_22BDB7794();
    v130 = sub_22BB2F12C();
    v131(v130);
    (*(v123 + 8))(v122, v124);
    updated = type metadata accessor for EventScopedProgressUpdateHandler(0);
    v1[10] = updated;
    sub_22BB72F80();
    v135 = sub_22BD721F4(v133, v134, &unk_22BDCE83C);
    v143 = sub_22BD725E0(v135, v136, v137, v138, v139, v140, v141, v142);
    (*(v121 + 16))(v143, v1486, v1496);
    sub_22BB69088(v1490, v143 + *(updated + 20));
    swift_task_alloc();
    sub_22BB30B34();
    v1[119] = v144;
    *v144 = v145;
    v144[1] = sub_22BD6A174;
    sub_22BB36C48();

    return sub_22BC5B09C();
  }

  if (v4 != *MEMORY[0x277D1E750])
  {
    v587 = v1[108];
    sub_22BD725A0();
    if (v589 == v590)
    {
      (*(v588 + 96))(v587);
      v591 = sub_22BB2F324();
      v592(v591);
      sub_22BDB8FF4();
      sub_22BDB9004();
      swift_task_alloc();
      sub_22BB30B34();
      v1[111] = v593;
      *v593 = v594;
      v593[1] = sub_22BD69520;
      sub_22BB36C48();

      return sub_22BC5CF28(v595, v596, v597);
    }

    (*(v588 + 8))(v587);
LABEL_34:
    v226 = v1[105];
    v227 = v1[104];
    v228 = v1[103];
    v229 = v1[100];
    v230 = v1[99];
    v231 = v1[96];
    v232 = v1[93];
    v233 = v1[92];
    v234 = v1[91];
    sub_22BB35CD4();
    v1454 = v1[46];
    v1456 = v1[45];
    v1459 = v1[42];
    v1461 = v1[41];
    v1464 = v1[40];
    v1466 = v1[37];
    v1467 = v1[35];
    v1468 = v1[34];
    v1472 = v1[33];
    v1476 = v1[30];
    v1480 = v1[29];
    v1484 = v1[26];
    v1487 = v1[23];
    v1493 = v1[20];
    v235, v236, v237, v238, v239, v240, v241, v242, v626, v674, v722, v770, v818, v866, v914, v962, v1010, v1058, v1106, v1154, v1202, v1250, v1298, v1346, v1394;
    v226, v243, v244, v245, v246, v247, v248, v249, v627, v675, v723, v771, v819, v867, v915, v963, v1011, v1059, v1107, v1155, v1203, v1251, v1299, v1347, v1395;
    v227, v250, v251, v252, v253, v254, v255, v256, v628, v676, v724, v772, v820, v868, v916, v964, v1012, v1060, v1108, v1156, v1204, v1252, v1300, v1348, v1396;
    v228, v257, v258, v259, v260, v261, v262, v263, v629, v677, v725, v773, v821, v869, v917, v965, v1013, v1061, v1109, v1157, v1205, v1253, v1301, v1349, v1397;
    v229, v264, v265, v266, v267, v268, v269, v270, v630, v678, v726, v774, v822, v870, v918, v966, v1014, v1062, v1110, v1158, v1206, v1254, v1302, v1350, v1398;
    v230, v271, v272, v273, v274, v275, v276, v277, v631, v679, v727, v775, v823, v871, v919, v967, v1015, v1063, v1111, v1159, v1207, v1255, v1303, v1351, v1399;
    v231, v278, v279, v280, v281, v282, v283, v284, v632, v680, v728, v776, v824, v872, v920, v968, v1016, v1064, v1112, v1160, v1208, v1256, v1304, v1352, v1400;
    v232, v285, v286, v287, v288, v289, v290, v291, v633, v681, v729, v777, v825, v873, v921, v969, v1017, v1065, v1113, v1161, v1209, v1257, v1305, v1353, v1401;
    v233, v292, v293, v294, v295, v296, v297, v298, v634, v682, v730, v778, v826, v874, v922, v970, v1018, v1066, v1114, v1162, v1210, v1258, v1306, v1354, v1402;
    v234, v299, v300, v301, v302, v303, v304, v305, v635, v683, v731, v779, v827, v875, v923, v971, v1019, v1067, v1115, v1163, v1211, v1259, v1307, v1355, v1403;
    v684, v306, v307, v308, v309, v310, v311, v312, v636, v684, v732, v780, v828, v876, v924, v972, v1020, v1068, v1116, v1164, v1212, v1260, v1308, v1356, v1404;
    v733, v313, v314, v315, v316, v317, v318, v319, v637, v685, v733, v781, v829, v877, v925, v973, v1021, v1069, v1117, v1165, v1213, v1261, v1309, v1357, v1405;
    v782, v320, v321, v322, v323, v324, v325, v326, v638, v686, v734, v782, v830, v878, v926, v974, v1022, v1070, v1118, v1166, v1214, v1262, v1310, v1358, v1406;
    v831, v327, v328, v329, v330, v331, v332, v333, v639, v687, v735, v783, v831, v879, v927, v975, v1023, v1071, v1119, v1167, v1215, v1263, v1311, v1359, v1407;
    v880, v334, v335, v336, v337, v338, v339, v340, v640, v688, v736, v784, v832, v880, v928, v976, v1024, v1072, v1120, v1168, v1216, v1264, v1312, v1360, v1408;
    v929, v341, v342, v343, v344, v345, v346, v347, v641, v689, v737, v785, v833, v881, v929, v977, v1025, v1073, v1121, v1169, v1217, v1265, v1313, v1361, v1409;
    v978, v348, v349, v350, v351, v352, v353, v354, v642, v690, v738, v786, v834, v882, v930, v978, v1026, v1074, v1122, v1170, v1218, v1266, v1314, v1362, v1410;
    v1027, v355, v356, v357, v358, v359, v360, v361, v643, v691, v739, v787, v835, v883, v931, v979, v1027, v1075, v1123, v1171, v1219, v1267, v1315, v1363, v1411;
    v1076, v362, v363, v364, v365, v366, v367, v368, v644, v692, v740, v788, v836, v884, v932, v980, v1028, v1076, v1124, v1172, v1220, v1268, v1316, v1364, v1412;
    v1125, v369, v370, v371, v372, v373, v374, v375, v645, v693, v741, v789, v837, v885, v933, v981, v1029, v1077, v1125, v1173, v1221, v1269, v1317, v1365, v1413;
    v1174, v376, v377, v378, v379, v380, v381, v382, v646, v694, v742, v790, v838, v886, v934, v982, v1030, v1078, v1126, v1174, v1222, v1270, v1318, v1366, v1414;
    v1223, v383, v384, v385, v386, v387, v388, v389, v647, v695, v743, v791, v839, v887, v935, v983, v1031, v1079, v1127, v1175, v1223, v1271, v1319, v1367, v1415;
    v1272, v390, v391, v392, v393, v394, v395, v396, v648, v696, v744, v792, v840, v888, v936, v984, v1032, v1080, v1128, v1176, v1224, v1272, v1320, v1368, v1416;
    v1321, v397, v398, v399, v400, v401, v402, v403, v649, v697, v745, v793, v841, v889, v937, v985, v1033, v1081, v1129, v1177, v1225, v1273, v1321, v1369, v1417;
    v1370, v404, v405, v406, v407, v408, v409, v410, v650, v698, v746, v794, v842, v890, v938, v986, v1034, v1082, v1130, v1178, v1226, v1274, v1322, v1370, v1418;
    v1419, v411, v412, v413, v414, v415, v416, v417, v651, v699, v747, v795, v843, v891, v939, v987, v1035, v1083, v1131, v1179, v1227, v1275, v1323, v1371, v1419;
    v1442, v418, v419, v420, v421, v422, v423, v424, v652, v700, v748, v796, v844, v892, v940, v988, v1036, v1084, v1132, v1180, v1228, v1276, v1324, v1372, v1420;
    v1443, v425, v426, v427, v428, v429, v430, v431, v653, v701, v749, v797, v845, v893, v941, v989, v1037, v1085, v1133, v1181, v1229, v1277, v1325, v1373, v1421;
    v1444, v432, v433, v434, v435, v436, v437, v438, v654, v702, v750, v798, v846, v894, v942, v990, v1038, v1086, v1134, v1182, v1230, v1278, v1326, v1374, v1422;
    v1445, v439, v440, v441, v442, v443, v444, v445, v655, v703, v751, v799, v847, v895, v943, v991, v1039, v1087, v1135, v1183, v1231, v1279, v1327, v1375, v1423;
    v1446, v446, v447, v448, v449, v450, v451, v452, v656, v704, v752, v800, v848, v896, v944, v992, v1040, v1088, v1136, v1184, v1232, v1280, v1328, v1376, v1424;
    v1447, v453, v454, v455, v456, v457, v458, v459, v657, v705, v753, v801, v849, v897, v945, v993, v1041, v1089, v1137, v1185, v1233, v1281, v1329, v1377, v1425;
    v1448, v460, v461, v462, v463, v464, v465, v466, v658, v706, v754, v802, v850, v898, v946, v994, v1042, v1090, v1138, v1186, v1234, v1282, v1330, v1378, v1426;
    v1450, v467, v468, v469, v470, v471, v472, v473, v659, v707, v755, v803, v851, v899, v947, v995, v1043, v1091, v1139, v1187, v1235, v1283, v1331, v1379, v1427;
    v1454, v474, v475, v476, v477, v478, v479, v480, v660, v708, v756, v804, v852, v900, v948, v996, v1044, v1092, v1140, v1188, v1236, v1284, v1332, v1380, v1428;
    v1456, v481, v482, v483, v484, v485, v486, v487, v661, v709, v757, v805, v853, v901, v949, v997, v1045, v1093, v1141, v1189, v1237, v1285, v1333, v1381, v1429;
    v1459, v488, v489, v490, v491, v492, v493, v494, v662, v710, v758, v806, v854, v902, v950, v998, v1046, v1094, v1142, v1190, v1238, v1286, v1334, v1382, v1430;
    v1461, v495, v496, v497, v498, v499, v500, v501, v663, v711, v759, v807, v855, v903, v951, v999, v1047, v1095, v1143, v1191, v1239, v1287, v1335, v1383, v1431;
    v1464, v502, v503, v504, v505, v506, v507, v508, v664, v712, v760, v808, v856, v904, v952, v1000, v1048, v1096, v1144, v1192, v1240, v1288, v1336, v1384, v1432;
    v1466, v509, v510, v511, v512, v513, v514, v515, v665, v713, v761, v809, v857, v905, v953, v1001, v1049, v1097, v1145, v1193, v1241, v1289, v1337, v1385, v1433;
    v1467, v516, v517, v518, v519, v520, v521, v522, v666, v714, v762, v810, v858, v906, v954, v1002, v1050, v1098, v1146, v1194, v1242, v1290, v1338, v1386, v1434;
    v1468, v523, v524, v525, v526, v527, v528, v529, v667, v715, v763, v811, v859, v907, v955, v1003, v1051, v1099, v1147, v1195, v1243, v1291, v1339, v1387, v1435;
    v1472, v530, v531, v532, v533, v534, v535, v536, v668, v716, v764, v812, v860, v908, v956, v1004, v1052, v1100, v1148, v1196, v1244, v1292, v1340, v1388, v1436;
    v1476, v537, v538, v539, v540, v541, v542, v543, v669, v717, v765, v813, v861, v909, v957, v1005, v1053, v1101, v1149, v1197, v1245, v1293, v1341, v1389, v1437;
    v1480, v544, v545, v546, v547, v548, v549, v550, v670, v718, v766, v814, v862, v910, v958, v1006, v1054, v1102, v1150, v1198, v1246, v1294, v1342, v1390, v1438;
    v1484, v551, v552, v553, v554, v555, v556, v557, v671, v719, v767, v815, v863, v911, v959, v1007, v1055, v1103, v1151, v1199, v1247, v1295, v1343, v1391, v1439;
    v1487, v558, v559, v560, v561, v562, v563, v564, v672, v720, v768, v816, v864, v912, v960, v1008, v1056, v1104, v1152, v1200, v1248, v1296, v1344, v1392, v1440;
    v1493, v565, v566, v567, v568, v569, v570, v571, v673, v721, v769, v817, v865, v913, v961, v1009, v1057, v1105, v1153, v1201, v1249, v1297, v1345, v1393, v1441;
    sub_22BD725AC();
    sub_22BB36C48();

    __asm { BRAA            X2, X16 }
  }

  v183 = v1[108];
  sub_22BD725A0();
  v184 = v1[98];
  (*(v185 + 96))(v183);
  v186 = sub_22BB39744();
  v187(v186);
  sub_22BDB96A4();
  v188 = sub_22BDB9744();
  v1[109] = *(v184 + 8);
  v1[110] = (v184 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v189 = sub_22BB30AE4();
  v190(v189);
  v1[12] = v188;
  v191 = sub_22BB2F324();
  sub_22BBE6DE0(v191, v192);
  sub_22BB31DE0();
  sub_22BBB5F9C(v193, &qword_27D8E2F48, &unk_22BDBD950, v194);
  v195 = sub_22BDB90E4();

  if (v195)
  {
    sub_22BDB63F4();
    v196 = sub_22BB34900();
    v197(v196);
    v22 = sub_22BDB77C4();
    v198 = sub_22BDBB134();
    v199 = os_log_type_enabled(v22, v198);
    v25 = v1[75];
    v26 = v1[74];
    v28 = v1[53];
    v27 = v1[54];
    v29 = v1[52];
    if (v199)
    {
      swift_slowAlloc();
      v1492 = sub_22BB38198();
      v1498[0] = v1492;
      *v29 = 136315138;
      sub_22BD721F4(&qword_27D8E66C8, MEMORY[0x277D1DEC0], MEMORY[0x277D1DEC8]);
      sub_22BDBB684();
      v30 = v25 + 8;
      v200 = sub_22BB38BE8();
      v201(v200);
      v202 = sub_22BB5138C();
      v205 = sub_22BB32EE0(v202, v203, v204);

      *(v29 + 4) = v205;
      sub_22BB3E308(&dword_22BB2C000, v206, v207, "Executor: Skipping undo/redo execution due to safety mode being enabled: %s");
      sub_22BB32FA4(v1492);
      sub_22BB30AF0();
      sub_22BB30AF0();

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  sub_22BDB6134();
  sub_22BDB7724();
  v599 = sub_22BDB7744();
  v600 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v601 = sub_22BB37F30();
    *v601 = 0;
    v602 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v599, v600, v602, "IF.Executor.undoRedo", "", v601, 2u);
    sub_22BB30AF0();
  }

  v604 = v1[40];
  v603 = v1[41];
  v606 = v1[38];
  v605 = v1[39];

  (*(v605 + 16))(v603, v604, v606);
  v607 = sub_22BDB77A4();
  sub_22BB34ED4(v607);
  sub_22BB3A190();
  v1[127] = sub_22BDB7794();
  (*(v605 + 8))(v604, v606);
  v608 = sub_22BB331D4();
  v609(v608);
  sub_22BDB96A4();
  swift_task_alloc();
  sub_22BB30B34();
  v1[128] = v610;
  *v610 = v611;
  v610[1] = sub_22BD6B1AC;
  sub_22BB36C48();

  return sub_22BC5BC5C();
}

uint64_t sub_22BD6B8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v97 = a4;
  v108 = a2;
  v109 = a1;
  v107 = a5;
  v6 = sub_22BDB9B54();
  v103 = *(v6 - 8);
  v104 = v6;
  MEMORY[0x28223BE20](v6);
  v93 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB77D4();
  v98 = *(v8 - 8);
  v99 = v8;
  MEMORY[0x28223BE20](v8);
  v105 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  MEMORY[0x28223BE20](v10 - 8);
  v92 = &v82 - v11;
  v12 = sub_22BDB87F4();
  v95 = *(v12 - 8);
  v96 = v12;
  MEMORY[0x28223BE20](v12);
  v94 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BBE6DE0(&qword_27D8E2F60, &unk_22BDBD960);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = &v82 - v15;
  v88 = sub_22BDB5404();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22BDB90B4();
  v89 = *(v102 - 1);
  v18 = MEMORY[0x28223BE20](v102);
  v91 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v100 = &v82 - v20;
  v21 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v82 - v22;
  v24 = sub_22BDB9B14();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v82 - v29;
  v31 = sub_22BDB4C34();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v86 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v85 = &v82 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v82 - v37;
  v111 = a3;
  sub_22BDB9B24();
  sub_22BD6E990(v23);
  v110 = v25;
  v39 = *(v25 + 8);
  v40 = v30;
  v41 = v25 + 8;
  v101 = v24;
  v39(v40, v24);
  v42 = sub_22BB3AA28(v23, 1, v31);
  v106 = v39;
  if (v42 == 1)
  {
    v43 = v28;
    v44 = v101;
    sub_22BB325EC(v23, &qword_27D8E27C0, &qword_22BDBCDF0);
    sub_22BDB63F4();
    v45 = v93;
    (*(v103 + 16))(v93, v111, v104);
    v46 = sub_22BDB77C4();
    v47 = sub_22BDBB114();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v112 = v102;
      *v48 = 136315138;
      sub_22BDB9B24();
      sub_22BD721F4(&qword_27D8E6368, MEMORY[0x277D1E870], MEMORY[0x277D1E878]);
      v49 = v44;
      v50 = sub_22BDBB684();
      v52 = v51;
      v53 = v28;
      v54 = v106;
      v106(v53, v49);
      (*(v103 + 8))(v45, v104);
      v55 = sub_22BB32EE0(v50, v52, &v112);

      *(v48 + 4) = v55;
      _os_log_impl(&dword_22BB2C000, v46, v47, "Unable to find statement ID for event: %s", v48, 0xCu);
      v56 = v102;
      sub_22BB32FA4(v102);
      MEMORY[0x2318A6080](v56, -1, -1);
      MEMORY[0x2318A6080](v48, -1, -1);

      (*(v98 + 8))(v105, v99);
      v57 = v108;
      v58 = v110;
    }

    else
    {

      (*(v103 + 8))(v45, v104);
      (*(v98 + 8))(v105, v99);
      v57 = v108;
      v49 = v44;
      v58 = v110;
      v54 = v106;
    }

    type metadata accessor for RuntimeError(0);
    sub_22BD721F4(&qword_27D8E2F58, type metadata accessor for RuntimeError, &qword_22BDBF300);
    swift_allocError();
    *v77 = v109;
    v77[1] = v57;
    swift_storeEnumTagMultiPayload();

    sub_22BDB4BA4();
    v78 = *MEMORY[0x277D1DCE0];
    v79 = sub_22BDB8314();
    (*(*(v79 - 8) + 104))(v43, v78, v79);
    v80 = *MEMORY[0x277D1DC58];
    v81 = sub_22BDB8294();
    (*(*(v81 - 8) + 104))(v43, v80, v81);
    (*(v58 + 104))(v43, *MEMORY[0x277D1E718], v49);
    sub_22BDB9A54();
    return v54(v43, v49);
  }

  else
  {
    v83 = v32;
    v59 = *(v32 + 32);
    v84 = v38;
    v59(v38, v23, v31);

    sub_22BDB5474();
    v60 = *MEMORY[0x277D1CD18];
    v61 = sub_22BDB5484();
    (*(*(v61 - 8) + 104))(v17, v60, v61);
    v62 = *MEMORY[0x277D1CC20];
    v63 = sub_22BDB5414();
    (*(*(v63 - 8) + 104))(v17, v62, v63);
    (*(v87 + 104))(v17, *MEMORY[0x277D1CBA0], v88);
    v64 = sub_22BDB53F4();
    sub_22BB336D0(v90, 1, 1, v64);
    v65 = v100;
    sub_22BDB90A4();
    v66 = v92;
    sub_22BDB8F24();
    v67 = sub_22BDB43E4();
    sub_22BB336D0(v66, 0, 1, v67);
    v68 = v89;
    (*(v89 + 16))(v91, v65, v102);
    sub_22BDB96C4();
    sub_22BDB98D4();

    v69 = v31;
    v70 = v83;
    v71 = v84;
    (*(v83 + 16))(v86, v84, v69);
    v109 = v41;
    v72 = v94;
    sub_22BDB87C4();
    v74 = v95;
    v73 = v96;
    (*(v95 + 16))(v28, v72, v96);
    v75 = v101;
    (*(v110 + 104))(v28, *MEMORY[0x277D1E798], v101);
    sub_22BDB9A54();
    v106(v28, v75);
    (*(v74 + 8))(v72, v73);
    (*(v68 + 8))(v100, v102);
    return (*(v70 + 8))(v71, v69);
  }
}

void sub_22BD6C488()
{
  sub_22BB30F94();
  v1 = sub_22BDB8334();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = v6 - v5;
  v8 = sub_22BDB8134();
  sub_22BB30444();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v14 = v13 - v12;
  sub_22BDB8E54();
  sub_22BD72588();
  sub_22BDB8F54();
  sub_22BB30ED8();
  (*(v15 + 16))(v14, v0);
  (*(v10 + 104))(v14, *MEMORY[0x277D1DB40], v8);
  sub_22BDB4234();
  sub_22BDB8324();
  type metadata accessor for ExecutorLogging(0);
  sub_22BDB8E34();
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
  sub_22BB314EC();
}

uint64_t sub_22BD6C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_22BDB8634();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = sub_22BDB5AD4();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v8 = sub_22BDB9564();
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420);
  v5[28] = swift_task_alloc();
  v9 = sub_22BDB8E14();
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();
  v10 = sub_22BDB90B4();
  v5[32] = v10;
  v5[33] = *(v10 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  v5[37] = swift_task_alloc();
  v11 = sub_22BDB4C34();
  v5[38] = v11;
  v5[39] = *(v11 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v12 = sub_22BDB9774();
  v5[44] = v12;
  v5[45] = *(v12 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = type metadata accessor for ActionExecutionResult(0);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v13 = sub_22BDB7734();
  v5[51] = v13;
  v5[52] = *(v13 - 8);
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v14 = sub_22BDB7754();
  v5[55] = v14;
  v5[56] = *(v14 - 8);
  v5[57] = swift_task_alloc();
  v15 = sub_22BDB6774();
  v5[58] = v15;
  v5[59] = *(v15 - 8);
  v5[60] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v16 = sub_22BDB43E4();
  v5[63] = v16;
  v5[64] = *(v16 - 8);
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BD6CC1C, 0, 0);
}

uint64_t sub_22BD6CC1C(uint64_t a1)
{
  v81 = v1[69];
  v79 = v1[68];
  v3 = v1[63];
  v2 = v1[64];
  v74 = v2;
  v75 = v1[67];
  v83 = v1[61];
  v85 = v1[62];
  v80 = v1[60];
  v76 = v1[59];
  v77 = v1[58];
  sub_22BDB9B34();
  v4 = sub_22BDB9A14();
  v5 = sub_22BDB8434();
  v7 = sub_22BD81020(v5, v6, v4);
  v9 = v8;

  v78 = v9 & 1;
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  sub_22BDB9964();
  v11 = sub_22BDB9A24();
  v70 = v12;
  v71 = v11;
  v13 = type metadata accessor for ExecutorSELFContext(0);
  v1[5] = v13;
  sub_22BB32D00();
  v1[6] = sub_22BD721F4(v14, v15, &unk_22BDBEBFC);
  v23 = sub_22BB8B8A0(v1 + 2, v16, v17, v18, v19, v20, v21, v22);
  v24 = v13[8];
  v25 = v23 + v13[7];
  sub_22BB30B28();
  sub_22BB336D0(v26, v27, v28, v3);
  v73 = v13[5];
  sub_22BDB43D4();
  v29 = v13[6];
  v30 = *(v2 + 16);
  v1[70] = v30;
  v1[71] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v30(v23 + v29, v81, v3);
  *v25 = v10;
  v25[8] = v78;
  sub_22BD72114(v85, v23 + v24);
  v31 = (v23 + v13[10]);
  *v31 = v71;
  v31[1] = v70;
  sub_22BDB6764();
  sub_22BDB6744();
  v32 = v3;
  v30(v79, v81, v3);
  sub_22BDB6754();
  v33 = v13[9];
  sub_22BDB6724();
  v34 = type metadata accessor for ExecutorSELFLogEmitter();
  v72 = sub_22BB3E424(v34);
  v30(v79, v23 + v73, v3);
  v30(v75, v23 + v33, v3);
  sub_22BBBEE60(v85, v83, &qword_27D8E3218, &qword_22BDBE390);
  v35 = type metadata accessor for ExecutorSELFLoggerASync(0);
  v36 = sub_22BB34ED4(v35);
  v30((v36 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_componentId), v75, v3);
  v37 = type metadata accessor for ExecutorSELFLoggerSync(0);
  v38 = sub_22BB34ED4(v37);
  *(v38 + 5) = v80;
  *(v38 + 6) = &off_283F74E60;
  *(v38 + 2) = v72;
  v39 = OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId;
  v40 = *(v74 + 32);
  v1[72] = v40;
  v1[73] = (v74 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v40(&v38[v39], v79, v32);
  v40(&v38[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_componentId], v75, v32);
  v41 = &v38[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId];
  *v41 = v10;
  v41[8] = v78;
  sub_22BBDB5D0(v83, &v38[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_ifRequestId], &qword_27D8E3218, &qword_22BDBE390);
  *(v36 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_logger) = v38;
  v23[3] = v35;
  v23[4] = &off_283F74C80;
  *v23 = v36;
  (*(v76 + 8))(v80, v77);
  sub_22BB325EC(v85, &qword_27D8E3218, &qword_22BDBE390);
  v42 = *(v74 + 8);
  v1[74] = v42;
  v1[75] = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v81, v32);
  sub_22BDB6134();
  sub_22BDB7724();
  v43 = sub_22BDB7744();
  v44 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v45 = sub_22BB37F30();
    *v45 = 0;
    v46 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v43, v44, v46, "IF.Executor.runAction", "", v45, 2u);
    sub_22BB30AF0();
  }

  v47 = v1[56];
  v49 = v1[54];
  v48 = v1[55];
  v51 = v1[52];
  v50 = v1[53];
  v52 = v1[51];
  v53 = v1[16];
  v86 = v1[17];
  v82 = v1[57];
  v84 = v1[15];

  (*(v51 + 16))(v50, v49, v52);
  v54 = sub_22BDB77A4();
  sub_22BB34ED4(v54);
  sub_22BB3A190();
  v1[76] = sub_22BDB7794();
  (*(v51 + 8))(v49, v52);
  (*(v47 + 8))(v82, v48);
  sub_22BDB96A4();
  updated = type metadata accessor for EventScopedProgressUpdateHandler(0);
  v1[10] = updated;
  sub_22BB72F80();
  v58 = sub_22BD721F4(v56, v57, &unk_22BDCE814);
  sub_22BD725E0(v58, v59, v60, v61, v62, v63, v64, v65);
  sub_22BB35760();
  v1[77] = sub_22BDB9B54();
  sub_22BB314BC();
  v1[78] = v66;
  (*(v66 + 16))(v53, v84);
  sub_22BB69088(v86, v53 + *(updated + 20));
  swift_task_alloc();
  sub_22BB30B34();
  v1[79] = v67;
  *v67 = v68;
  v67[1] = sub_22BD6D220;

  return sub_22BC5A618();
}

uint64_t sub_22BD6D364(uint64_t a1)
{
  v2 = v1[81];
  v4 = v1[37];
  v3 = v1[38];
  sub_22BDB96A4();
  v5 = sub_22BDB9744();
  v6 = sub_22BB30AE4();
  (v2)(v6);
  v1[12] = v5;
  v1440 = (v1 + 2);
  v7 = sub_22BB345A8();
  v9 = sub_22BBE6DE0(v7, v8);
  sub_22BB31DE0();
  sub_22BBB5F9C(v10, &qword_27D8E2F48, &unk_22BDBD950, v11);
  sub_22BB33728();
  sub_22BDB9164();

  if (sub_22BB3AA28(v4, 1, v3) == 1)
  {
    v13 = v1[37];
    v12 = v1[38];
    sub_22BDB8174();
    sub_22BB31814(v13, 1, v12);
    if (!v14)
    {
      sub_22BB325EC(v1[37], &qword_27D8E27C0, &qword_22BDBCDF0);
    }
  }

  else
  {
    (*(v1[39] + 32))(v1[43], v1[37], v1[38]);
  }

  sub_22BD722A4(v1[50], v1[49]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v249 = v1[49];
      v250 = v1[46];
      v1431 = v1[44];
      v1433 = v1[81];
      v251 = v1[33];
      v252 = v1[34];
      v253 = v1[32];
      v1435 = v1[28];
      v1429 = *v249;
      v1438 = v249[1];
      v254 = sub_22BBE6DE0(&qword_27D8E3320, &unk_22BDBE540);
      (*(v251 + 32))(v252, v249 + *(v254 + 48), v253);
      sub_22BDB96A4();
      v255 = sub_22BDB9744();
      v1433(v250, v1431);
      v1[13] = v255;
      sub_22BB33728();
      sub_22BDB90D4();

      v256 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
      sub_22BB31814(v1435, 1, v256);
      if (!v14)
      {
        v466 = v1[78];
        v1088 = v1[77];
        v1421 = v1[74];
        v1422 = v1[75];
        v1436 = v1[72];
        v1420 = v1[71];
        v1309 = v1[70];
        v1199 = v1[68];
        v923 = v1[66];
        v467 = v1[63];
        v1423 = v1[50];
        v1424 = v1[62];
        v1426 = v1[43];
        v868 = v1[42];
        v978 = v1[41];
        v1089 = v1[40];
        v1427 = v1[39];
        v1425 = v1[38];
        v813 = v1[36];
        v1428 = v1[33];
        v468 = v1[31];
        v1430 = v1[32];
        v1432 = v1[34];
        v469 = v1[30];
        v470 = v1[28];
        v1144 = v1[21];
        v471 = *(v256 + 48);
        v1254 = v1[20];
        v1365 = v1[19];
        v648 = v1[29];
        v703 = v1[16];
        v483 = v1[15];
        v538 = v1[14];
        sub_22BDB8F24();
        (*(v466 + 8))(v470 + v471, v1088);
        v472 = sub_22BB2F12C();
        v473 = v467;
        v593 = v467;
        v1436(v472);
        sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
        v758 = sub_22BDB9B14();
        sub_22BB30444();
        v1437 = v474;
        v1033 = *(v475 + 72);
        v476 = (*(v474 + 80) + 32) & ~*(v474 + 80);
        v477 = swift_allocObject();
        *(v477 + 16) = xmmword_22BDBCBC0;
        v478 = v477 + v476;
        sub_22BDB8F24();
        sub_22BB331C8();
        sub_22BB336D0(v479, v480, v481, v473);
        sub_22BDB9544();
        sub_22BDB8E04();
        (*(v469 + 8))(v468, v648);
        (*(v1428 + 16))(v813, v1432, v1430);
        v29 = v703;
        sub_22BDB96C4();
        sub_22BDB98D4();

        sub_22BDB8174();
        (*(v1427 + 16))(v1089, v1426, v1425);
        v23 = v478;
        sub_22BDB87B4();
        v482 = *(v1437 + 104);
        v1434 = v1437 + 104;
        v17 = v758;
        v482(v478, *MEMORY[0x277D1E798], v758);
        v28 = v1199;
        v1309(v1199, v923, v593);
        sub_22BDB96C4();
        sub_22BDB98D4();

        sub_22BDB8594();
        (*(v1254 + 104))(v1144, *MEMORY[0x277D1DDD0], v1365);
        sub_22BDB8B24();
        v482(v478 + v1033, *MEMORY[0x277D1E778], v758);
        v1421(v923, v593);
        (*(v1428 + 8))(v1432, v1430);
        (*(v1427 + 8))(v1426, v1425);
        sub_22BB324E4();
        goto LABEL_10;
      }

      v257 = v1[38];
      v258 = v1[39];
      v260 = v1[33];
      v259 = v1[34];
      v261 = v1[32];
      v262 = v1[28];

      sub_22BB325EC(v262, &qword_27D8E6518, &unk_22BDCE420);
      type metadata accessor for ExecutorError(0);
      sub_22BD721F4(&qword_27D8E2948, type metadata accessor for ExecutorError, &unk_22BDBE4C8);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v260 + 8))(v259, v261);
      v263 = sub_22BB33728();
      v264(v263);
      sub_22BB324E4();
      sub_22BD721A4();
      v265 = v1[69];
      v266 = v1[68];
      v267 = v1[67];
      v268 = v1[66];
      sub_22BB387D0();
      sub_22BD6E704();

      sub_22BB325EC(v1440, &dword_27D8E2F50, &unk_22BDBDEA0);
      v265, v269, v270, v271, v272, v273, v274, v275, v483, v538, v593, v648, v703, v758, v813, v868, v923, v978, v1033, v1089, v1144, v1199, v1254, v1309, v1365;
      v266, v276, v277, v278, v279, v280, v281, v282, v511, v566, v621, v676, v731, v786, v841, v896, v951, v1006, v1061, v1117, v1172, v1227, v1282, v1338, v1393;
      v267, v283, v284, v285, v286, v287, v288, v289, v512, v567, v622, v677, v732, v787, v842, v897, v952, v1007, v1062, v1118, v1173, v1228, v1283, v1339, v1394;
      v268, v290, v291, v292, v293, v294, v295, v296, v513, v568, v623, v678, v733, v788, v843, v898, v953, v1008, v1063, v1119, v1174, v1229, v1284, v1340, v1395;
      v258 + 8, v297, v298, v299, v300, v301, v302, v303, v514, v569, v624, v679, v734, v789, v844, v899, v954, v1009, v1064, v1120, v1175, v1230, v1285, v1341, v1396;
      v261, v304, v305, v306, v307, v308, v309, v310, v515, v570, v625, v680, v735, v790, v845, v900, v955, v1010, v1065, v1121, v1176, v1231, v1286, v1342, v1397;
      v259, v311, v312, v313, v314, v315, v316, v317, v516, v571, v626, v681, v736, v791, v846, v901, v956, v1011, v1066, v1122, v1177, v1232, v1287, v1343, v1398;
      v257, v318, v319, v320, v321, v322, v323, v324, v517, v572, v627, v682, v737, v792, v847, v902, v957, v1012, v1067, v1123, v1178, v1233, v1288, v1344, v1399;
      v1124, v325, v326, v327, v328, v329, v330, v331, v518, v573, v628, v683, v738, v793, v848, v903, v958, v1013, v1068, v1124, v1179, v1234, v1289, v1345, v1400;
      v1180, v332, v333, v334, v335, v336, v337, v338, v519, v574, v629, v684, v739, v794, v849, v904, v959, v1014, v1069, v1125, v1180, v1235, v1290, v1346, v1401;
      v1236, v339, v340, v341, v342, v343, v344, v345, v520, v575, v630, v685, v740, v795, v850, v905, v960, v1015, v1070, v1126, v1181, v1236, v1291, v1347, v1402;
      v1292, v346, v347, v348, v349, v350, v351, v352, v521, v576, v631, v686, v741, v796, v851, v906, v961, v1016, v1071, v1127, v1182, v1237, v1292, v1348, v1403;
      v1349, v353, v354, v355, v356, v357, v358, v359, v522, v577, v632, v687, v742, v797, v852, v907, v962, v1017, v1072, v1128, v1183, v1238, v1293, v1349, v1404;
      v1405, v360, v361, v362, v363, v364, v365, v366, v523, v578, v633, v688, v743, v798, v853, v908, v963, v1018, v1073, v1129, v1184, v1239, v1294, v1350, v1405;
      v1420, v367, v368, v369, v370, v371, v372, v373, v524, v579, v634, v689, v744, v799, v854, v909, v964, v1019, v1074, v1130, v1185, v1240, v1295, v1351, v1406;
      v1421, v374, v375, v376, v377, v378, v379, v380, v525, v580, v635, v690, v745, v800, v855, v910, v965, v1020, v1075, v1131, v1186, v1241, v1296, v1352, v1407;
      v1422, v381, v382, v383, v384, v385, v386, v387, v526, v581, v636, v691, v746, v801, v856, v911, v966, v1021, v1076, v1132, v1187, v1242, v1297, v1353, v1408;
      v1423, v388, v389, v390, v391, v392, v393, v394, v527, v582, v637, v692, v747, v802, v857, v912, v967, v1022, v1077, v1133, v1188, v1243, v1298, v1354, v1409;
      v1424, v395, v396, v397, v398, v399, v400, v401, v528, v583, v638, v693, v748, v803, v858, v913, v968, v1023, v1078, v1134, v1189, v1244, v1299, v1355, v1410;
      v1425, v402, v403, v404, v405, v406, v407, v408, v529, v584, v639, v694, v749, v804, v859, v914, v969, v1024, v1079, v1135, v1190, v1245, v1300, v1356, v1411;
      v1426, v409, v410, v411, v412, v413, v414, v415, v530, v585, v640, v695, v750, v805, v860, v915, v970, v1025, v1080, v1136, v1191, v1246, v1301, v1357, v1412;
      v1427, v416, v417, v418, v419, v420, v421, v422, v531, v586, v641, v696, v751, v806, v861, v916, v971, v1026, v1081, v1137, v1192, v1247, v1302, v1358, v1413;
      v1428, v423, v424, v425, v426, v427, v428, v429, v532, v587, v642, v697, v752, v807, v862, v917, v972, v1027, v1082, v1138, v1193, v1248, v1303, v1359, v1414;
      v1429, v430, v431, v432, v433, v434, v435, v436, v533, v588, v643, v698, v753, v808, v863, v918, v973, v1028, v1083, v1139, v1194, v1249, v1304, v1360, v1415;
      v1431, v437, v438, v439, v440, v441, v442, v443, v534, v589, v644, v699, v754, v809, v864, v919, v974, v1029, v1084, v1140, v1195, v1250, v1305, v1361, v1416;
      v1433, v444, v445, v446, v447, v448, v449, v450, v535, v590, v645, v700, v755, v810, v865, v920, v975, v1030, v1085, v1141, v1196, v1251, v1306, v1362, v1417;
      v1435, v451, v452, v453, v454, v455, v456, v457, v536, v591, v646, v701, v756, v811, v866, v921, v976, v1031, v1086, v1142, v1197, v1252, v1307, v1363, v1418;
      v1438, v458, v459, v460, v461, v462, v463, v464, v537, v592, v647, v702, v757, v812, v867, v922, v977, v1032, v1087, v1143, v1198, v1253, v1308, v1364, v1419;
      sub_22BB2F09C();

      return v465();
    case 2u:
      sub_22BB384E0();
      v23 = v1[27];
      v17 = v1[25];
      v32 = sub_22BB32E90();
      v33(v32);
      sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
      sub_22BD72588();
      v29 = sub_22BDB9B14();
      sub_22BB30444();
      v35 = v34;
      sub_22BB73BF0();
      v28 = swift_allocObject();
      v36 = sub_22BB3E4F8(v28, xmmword_22BDBCBD0);
      v37(v36);
      v38 = MEMORY[0x277D1E710];
      goto LABEL_9;
    case 3u:
      sub_22BB384E0();
      v23 = v1[24];
      v17 = v1[22];
      v39 = sub_22BB32E90();
      v40(v39);
      sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
      sub_22BD72588();
      v29 = sub_22BDB9B14();
      sub_22BB30444();
      v35 = v41;
      sub_22BB73BF0();
      v28 = swift_allocObject();
      v42 = sub_22BB3E4F8(v28, xmmword_22BDBCBD0);
      v43(v42);
      v38 = MEMORY[0x277D1E828];
LABEL_9:
      (*(v35 + 104))(v28 + v9, *v38, v29);
      v44 = sub_22BB331D4();
      v45(v44);
      (*(v2 + 8))(v1434, v1 + 12);
      sub_22BB324E4();
LABEL_10:
      sub_22BD721A4();
      goto LABEL_11;
    default:
      v15 = v1[62];
      v1310 = v1[63];
      v16 = v1[49];
      v1432 = v1[50];
      v1428 = v1[43];
      v1429 = v16;
      v1424 = v1[42];
      v1425 = v1[41];
      v1439 = v1[40];
      v1426 = v1[39];
      v1427 = v1[38];
      v17 = v1[36];
      v1434 = v17;
      v1421 = v1[35];
      v18 = v1[32];
      v19 = v1[33];
      v1438 = v18;
      v21 = v1[30];
      v20 = v1[31];
      v1365 = v1[29];
      v1422 = v1[16];
      v1430 = *(sub_22BBE6DE0(&qword_27D8E2F98, &qword_22BDBD998) + 48);
      v1199 = v19;
      (*(v19 + 32))(v17, v16, v18);
      sub_22BBE6DE0(&qword_27D8E66C0, &qword_22BDCE790);
      sub_22BD72588();
      v1423 = sub_22BDB9B14();
      sub_22BB30444();
      v1420 = v22;
      sub_22BBADC5C();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_22BDBCBD0;
      v1254 = v15;
      sub_22BDB8F24();
      sub_22BB331C8();
      sub_22BB336D0(v24, v25, v26, v1310);
      sub_22BDB9544();
      v1309 = sub_22BDB8E04();
      v1144 = v27;
      (*(v21 + 8))(v20, v1365);
      (*(v19 + 16))(v1421, v17, v18);
      sub_22BDB96C4();
      v28 = v1424;
      sub_22BDB98D4();

      v29 = v1425;
      sub_22BDB8174();
      (*(v1426 + 16))(v1439, v1428, v1427);
      sub_22BDB87B4();
      (*(v1420 + 104))(v23 + v17, *MEMORY[0x277D1E798], v1423);
      (*(v1199 + 8))(v17, v1438);
      v30 = sub_22BB2F3F0();
      v31(v30);
      sub_22BB324E4();
      sub_22BD721A4();
      sub_22BB325EC(v1429 + v1430, &qword_27D8E32A0, &qword_22BDCE7B0);
LABEL_11:
      v46 = v1[69];
      v47 = v1[68];
      v48 = v1[67];
      v49 = v1[66];
      sub_22BB387D0();
      sub_22BD6E704();

      sub_22BB325EC(v1440, &dword_27D8E2F50, &unk_22BDBDEA0);
      v46, v50, v51, v52, v53, v54, v55, v56, v483, v538, v593, v648, v703, v758, v813, v868, v923, v978, v1033, v1089, v1144, v1199, v1254, v1309, v1365;
      v47, v57, v58, v59, v60, v61, v62, v63, v484, v539, v594, v649, v704, v759, v814, v869, v924, v979, v1034, v1090, v1145, v1200, v1255, v1311, v1366;
      v48, v64, v65, v66, v67, v68, v69, v70, v485, v540, v595, v650, v705, v760, v815, v870, v925, v980, v1035, v1091, v1146, v1201, v1256, v1312, v1367;
      v49, v71, v72, v73, v74, v75, v76, v77, v486, v541, v596, v651, v706, v761, v816, v871, v926, v981, v1036, v1092, v1147, v1202, v1257, v1313, v1368;
      v29, v78, v79, v80, v81, v82, v83, v84, v487, v542, v597, v652, v707, v762, v817, v872, v927, v982, v1037, v1093, v1148, v1203, v1258, v1314, v1369;
      v28, v85, v86, v87, v88, v89, v90, v91, v488, v543, v598, v653, v708, v763, v818, v873, v928, v983, v1038, v1094, v1149, v1204, v1259, v1315, v1370;
      v17, v92, v93, v94, v95, v96, v97, v98, v489, v544, v599, v654, v709, v764, v819, v874, v929, v984, v1039, v1095, v1150, v1205, v1260, v1316, v1371;
      v23, v99, v100, v101, v102, v103, v104, v105, v490, v545, v600, v655, v710, v765, v820, v875, v930, v985, v1040, v1096, v1151, v1206, v1261, v1317, v1372;
      v1097, v106, v107, v108, v109, v110, v111, v112, v491, v546, v601, v656, v711, v766, v821, v876, v931, v986, v1041, v1097, v1152, v1207, v1262, v1318, v1373;
      v1153, v113, v114, v115, v116, v117, v118, v119, v492, v547, v602, v657, v712, v767, v822, v877, v932, v987, v1042, v1098, v1153, v1208, v1263, v1319, v1374;
      v1209, v120, v121, v122, v123, v124, v125, v126, v493, v548, v603, v658, v713, v768, v823, v878, v933, v988, v1043, v1099, v1154, v1209, v1264, v1320, v1375;
      v1265, v127, v128, v129, v130, v131, v132, v133, v494, v549, v604, v659, v714, v769, v824, v879, v934, v989, v1044, v1100, v1155, v1210, v1265, v1321, v1376;
      v1322, v134, v135, v136, v137, v138, v139, v140, v495, v550, v605, v660, v715, v770, v825, v880, v935, v990, v1045, v1101, v1156, v1211, v1266, v1322, v1377;
      v1378, v141, v142, v143, v144, v145, v146, v147, v496, v551, v606, v661, v716, v771, v826, v881, v936, v991, v1046, v1102, v1157, v1212, v1267, v1323, v1378;
      v1420, v148, v149, v150, v151, v152, v153, v154, v497, v552, v607, v662, v717, v772, v827, v882, v937, v992, v1047, v1103, v1158, v1213, v1268, v1324, v1379;
      v1421, v155, v156, v157, v158, v159, v160, v161, v498, v553, v608, v663, v718, v773, v828, v883, v938, v993, v1048, v1104, v1159, v1214, v1269, v1325, v1380;
      v1422, v162, v163, v164, v165, v166, v167, v168, v499, v554, v609, v664, v719, v774, v829, v884, v939, v994, v1049, v1105, v1160, v1215, v1270, v1326, v1381;
      v1423, v169, v170, v171, v172, v173, v174, v175, v500, v555, v610, v665, v720, v775, v830, v885, v940, v995, v1050, v1106, v1161, v1216, v1271, v1327, v1382;
      v1424, v176, v177, v178, v179, v180, v181, v182, v501, v556, v611, v666, v721, v776, v831, v886, v941, v996, v1051, v1107, v1162, v1217, v1272, v1328, v1383;
      v1425, v183, v184, v185, v186, v187, v188, v189, v502, v557, v612, v667, v722, v777, v832, v887, v942, v997, v1052, v1108, v1163, v1218, v1273, v1329, v1384;
      v1426, v190, v191, v192, v193, v194, v195, v196, v503, v558, v613, v668, v723, v778, v833, v888, v943, v998, v1053, v1109, v1164, v1219, v1274, v1330, v1385;
      v1427, v197, v198, v199, v200, v201, v202, v203, v504, v559, v614, v669, v724, v779, v834, v889, v944, v999, v1054, v1110, v1165, v1220, v1275, v1331, v1386;
      v1428, v204, v205, v206, v207, v208, v209, v210, v505, v560, v615, v670, v725, v780, v835, v890, v945, v1000, v1055, v1111, v1166, v1221, v1276, v1332, v1387;
      v1429, v211, v212, v213, v214, v215, v216, v217, v506, v561, v616, v671, v726, v781, v836, v891, v946, v1001, v1056, v1112, v1167, v1222, v1277, v1333, v1388;
      v1430, v218, v219, v220, v221, v222, v223, v224, v507, v562, v617, v672, v727, v782, v837, v892, v947, v1002, v1057, v1113, v1168, v1223, v1278, v1334, v1389;
      v1432, v225, v226, v227, v228, v229, v230, v231, v508, v563, v618, v673, v728, v783, v838, v893, v948, v1003, v1058, v1114, v1169, v1224, v1279, v1335, v1390;
      v1434, v232, v233, v234, v235, v236, v237, v238, v509, v564, v619, v674, v729, v784, v839, v894, v949, v1004, v1059, v1115, v1170, v1225, v1280, v1336, v1391;
      v1438, v239, v240, v241, v242, v243, v244, v245, v510, v565, v620, v675, v730, v785, v840, v895, v950, v1005, v1060, v1116, v1171, v1226, v1281, v1337, v1392;
      v246 = sub_22BD725AC();

      return v247(v246);
  }
}

void sub_22BD6E164()
{
  sub_22BB32FA4(v0 + 7);
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[61];
  v7 = v0[62];
  v8 = v0[60];
  v207 = v0[57];
  v235 = v0[54];
  v263 = v0[53];
  v291 = v0[50];
  v319 = v0[49];
  v347 = v0[47];
  v375 = v0[46];
  v403 = v0[43];
  v431 = v0[42];
  v459 = v0[41];
  v487 = v0[40];
  v515 = v0[37];
  v543 = v0[36];
  v571 = v0[35];
  v599 = v0[34];
  v627 = v0[31];
  v655 = v0[28];
  v683 = v0[27];
  v684 = v0[24];
  v685 = v0[21];
  sub_22BD6E704();

  sub_22BB325EC((v0 + 2), &dword_27D8E2F50, &unk_22BDBDEA0);
  v1, v9, v10, v11, v12, v13, v14, v15, v207, v235, v263, v291, v319, v347, v375, v403, v431, v459, v487, v515, v543, v571, v599, v627, v655;
  v2, v16, v17, v18, v19, v20, v21, v22, v208, v236, v264, v292, v320, v348, v376, v404, v432, v460, v488, v516, v544, v572, v600, v628, v656;
  v3, v23, v24, v25, v26, v27, v28, v29, v209, v237, v265, v293, v321, v349, v377, v405, v433, v461, v489, v517, v545, v573, v601, v629, v657;
  v4, v30, v31, v32, v33, v34, v35, v36, v210, v238, v266, v294, v322, v350, v378, v406, v434, v462, v490, v518, v546, v574, v602, v630, v658;
  v5, v37, v38, v39, v40, v41, v42, v43, v211, v239, v267, v295, v323, v351, v379, v407, v435, v463, v491, v519, v547, v575, v603, v631, v659;
  v7, v44, v45, v46, v47, v48, v49, v50, v212, v240, v268, v296, v324, v352, v380, v408, v436, v464, v492, v520, v548, v576, v604, v632, v660;
  v6, v51, v52, v53, v54, v55, v56, v57, v213, v241, v269, v297, v325, v353, v381, v409, v437, v465, v493, v521, v549, v577, v605, v633, v661;
  v8, v58, v59, v60, v61, v62, v63, v64, v214, v242, v270, v298, v326, v354, v382, v410, v438, v466, v494, v522, v550, v578, v606, v634, v662;
  v215, v65, v66, v67, v68, v69, v70, v71, v215, v243, v271, v299, v327, v355, v383, v411, v439, v467, v495, v523, v551, v579, v607, v635, v663;
  v244, v72, v73, v74, v75, v76, v77, v78, v216, v244, v272, v300, v328, v356, v384, v412, v440, v468, v496, v524, v552, v580, v608, v636, v664;
  v273, v79, v80, v81, v82, v83, v84, v85, v217, v245, v273, v301, v329, v357, v385, v413, v441, v469, v497, v525, v553, v581, v609, v637, v665;
  v302, v86, v87, v88, v89, v90, v91, v92, v218, v246, v274, v302, v330, v358, v386, v414, v442, v470, v498, v526, v554, v582, v610, v638, v666;
  v331, v93, v94, v95, v96, v97, v98, v99, v219, v247, v275, v303, v331, v359, v387, v415, v443, v471, v499, v527, v555, v583, v611, v639, v667;
  v360, v100, v101, v102, v103, v104, v105, v106, v220, v248, v276, v304, v332, v360, v388, v416, v444, v472, v500, v528, v556, v584, v612, v640, v668;
  v389, v107, v108, v109, v110, v111, v112, v113, v221, v249, v277, v305, v333, v361, v389, v417, v445, v473, v501, v529, v557, v585, v613, v641, v669;
  v418, v114, v115, v116, v117, v118, v119, v120, v222, v250, v278, v306, v334, v362, v390, v418, v446, v474, v502, v530, v558, v586, v614, v642, v670;
  v447, v121, v122, v123, v124, v125, v126, v127, v223, v251, v279, v307, v335, v363, v391, v419, v447, v475, v503, v531, v559, v587, v615, v643, v671;
  v476, v128, v129, v130, v131, v132, v133, v134, v224, v252, v280, v308, v336, v364, v392, v420, v448, v476, v504, v532, v560, v588, v616, v644, v672;
  v505, v135, v136, v137, v138, v139, v140, v141, v225, v253, v281, v309, v337, v365, v393, v421, v449, v477, v505, v533, v561, v589, v617, v645, v673;
  v534, v142, v143, v144, v145, v146, v147, v148, v226, v254, v282, v310, v338, v366, v394, v422, v450, v478, v506, v534, v562, v590, v618, v646, v674;
  v563, v149, v150, v151, v152, v153, v154, v155, v227, v255, v283, v311, v339, v367, v395, v423, v451, v479, v507, v535, v563, v591, v619, v647, v675;
  v592, v156, v157, v158, v159, v160, v161, v162, v228, v256, v284, v312, v340, v368, v396, v424, v452, v480, v508, v536, v564, v592, v620, v648, v676;
  v621, v163, v164, v165, v166, v167, v168, v169, v229, v257, v285, v313, v341, v369, v397, v425, v453, v481, v509, v537, v565, v593, v621, v649, v677;
  v650, v170, v171, v172, v173, v174, v175, v176, v230, v258, v286, v314, v342, v370, v398, v426, v454, v482, v510, v538, v566, v594, v622, v650, v678;
  v679, v177, v178, v179, v180, v181, v182, v183, v231, v259, v287, v315, v343, v371, v399, v427, v455, v483, v511, v539, v567, v595, v623, v651, v679;
  v683, v184, v185, v186, v187, v188, v189, v190, v232, v260, v288, v316, v344, v372, v400, v428, v456, v484, v512, v540, v568, v596, v624, v652, v680;
  v684, v191, v192, v193, v194, v195, v196, v197, v233, v261, v289, v317, v345, v373, v401, v429, v457, v485, v513, v541, v569, v597, v625, v653, v681;
  v685, v198, v199, v200, v201, v202, v203, v204, v234, v262, v290, v318, v346, v374, v402, v430, v458, v486, v514, v542, v570, v598, v626, v654, v682;
  sub_22BB2F09C();
  sub_22BB385C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22BD6E368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v35 = a3;
  v4 = sub_22BDB4C34();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = sub_22BDB9B14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BDB9564();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  sub_22BDB9B24();
  if ((*(v11 + 88))(v13, v10) != *MEMORY[0x277D1E710])
  {
    (*(v11 + 8))(v13, v10);
LABEL_6:
    v28 = sub_22BBE6DE0(&qword_27D8E66D0, &qword_22BDCE798);
    v26 = v35;
    v27 = 1;
    return sub_22BB336D0(v26, v27, 1, v28);
  }

  (*(v11 + 96))(v13, v10);
  v30 = *(v15 + 32);
  v30(v17, v13, v14);
  sub_22BDB8174();
  sub_22BDB8BF4();
  v18 = sub_22BDB4C04();
  v19 = *(v33 + 8);
  v20 = v7;
  v21 = v34;
  v19(v20, v34);
  v19(v9, v21);
  if ((v18 & 1) == 0)
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_6;
  }

  v22 = sub_22BBE6DE0(&qword_27D8E66D0, &qword_22BDCE798);
  v23 = *(v22 + 48);
  v24 = sub_22BDB9B54();
  v25 = v35;
  (*(*(v24 - 8) + 16))(v35, v31, v24);
  v30((v25 + v23), v17, v14);
  v26 = v25;
  v27 = 0;
  v28 = v22;
  return sub_22BB336D0(v26, v27, 1, v28);
}

void sub_22BD6E704()
{
  sub_22BB30F94();
  v24 = v1;
  v2 = sub_22BDB7764();
  sub_22BB30444();
  v23 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  sub_22BB36FD8();
  v25 = sub_22BDB7734();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  v10 = v9 - v8;
  v11 = sub_22BDB7754();
  sub_22BB30444();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v17 = v16 - v15;
  sub_22BDB6134();
  v18 = sub_22BDB7744();
  sub_22BDB7774();
  v22 = sub_22BDBB1C4();
  if (sub_22BDBB244())
  {

    sub_22BDB77B4();

    if ((*(v23 + 88))(v0, v2) == *MEMORY[0x277D85B00])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v23 + 8))(v0, v2);
      v19 = "";
    }

    v20 = sub_22BB37F30();
    *v20 = 0;
    v21 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v18, v22, v21, v24, v19, v20, 2u);
    sub_22BB30AF0();
  }

  (*(v6 + 8))(v10, v25);
  (*(v13 + 8))(v17, v11);
  sub_22BB314EC();
}

uint64_t sub_22BD6E990@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_22BDB9014();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v31 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22BDB88E4();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BDB8C14();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BDB9D04();
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB9564();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22BDB9B14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, v39, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == *MEMORY[0x277D1E710])
  {
    (*(v16 + 96))(v18, v15);
    (*(v12 + 32))(v14, v18, v11);
    v20 = v40;
    sub_22BDB8174();
    (*(v12 + 8))(v14, v11);
    v21 = sub_22BDB4C34();
    v22 = v20;
  }

  else
  {
    v23 = v40;
    if (v19 == *MEMORY[0x277D1E728])
    {
      (*(v16 + 96))(v18, v15);
      v24 = v38;
      (*(v38 + 32))(v7, v18, v5);
      sub_22BDB8C04();
      return (*(v24 + 8))(v7, v5);
    }

    if (v19 == *MEMORY[0x277D1E730])
    {
      (*(v16 + 96))(v18, v15);
      v26 = v37;
      (*(v37 + 32))(v10, v18, v8);
      sub_22BDB8174();
      (*(v26 + 8))(v10, v8);
    }

    else
    {
      if (v19 == *MEMORY[0x277D1E750])
      {
        (*(v16 + 96))(v18, v15);
        v27 = v34;
        v28 = v35;
        v29 = v36;
        (*(v35 + 32))(v34, v18, v36);
        sub_22BDB88A4();
      }

      else
      {
        if (v19 != *MEMORY[0x277D1E810])
        {
          v30 = sub_22BDB4C34();
          sub_22BB336D0(v23, 1, 1, v30);
          return (*(v16 + 8))(v18, v15);
        }

        (*(v16 + 96))(v18, v15);
        v27 = v31;
        v28 = v32;
        v29 = v33;
        (*(v32 + 32))(v31, v18, v33);
        sub_22BDB8FE4();
      }

      (*(v28 + 8))(v27, v29);
    }

    v21 = sub_22BDB4C34();
    v22 = v23;
  }

  return sub_22BB336D0(v22, 0, 1, v21);
}

void sub_22BD6EFA4()
{
  sub_22BB30F94();
  v22 = v1;
  v3 = v2;
  v5 = v4;
  v6 = sub_22BDB9884();
  sub_22BB30444();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22BB30574();
  v12 = v11 - v10;
  v13 = sub_22BDB98C4();
  sub_22BB30444();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v19 = v18 - v17;
  updated = type metadata accessor for EventScopedProgressUpdateHandler(0);
  sub_22BB69FEC((v0 + *(updated + 20)), *(v0 + *(updated + 20) + 24));
  v3(0);
  sub_22BB30ED8();
  (*(v21 + 16))(v12, v5);
  (*(v8 + 104))(v12, *v22, v6);
  sub_22BDB9A84();
  (*(v8 + 8))(v12, v6);
  sub_22BD78EFC(v19);
  (*(v15 + 8))(v19, v13);
  sub_22BB314EC();
}

uint64_t sub_22BD6F19C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_22BDBB4F4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_22BD6F1D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_22BD6F250(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BD6F274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[57] = a3;
  v5[58] = a5;
  v5[55] = a1;
  v5[56] = a2;
  v7 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
  v5[59] = v7;
  v5[60] = *(v7 - 8);
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  v8 = sub_22BDB80E4();
  v5[63] = v8;
  v5[64] = *(v8 - 8);
  v5[65] = swift_task_alloc();
  v5[66] = type metadata accessor for RuntimeError(0);
  v5[67] = swift_task_alloc();
  v9 = sub_22BDB7614();
  v5[68] = v9;
  v5[69] = *(v9 - 8);
  v5[70] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E3510, &qword_22BDBEF70);
  v5[71] = swift_task_alloc();
  v10 = sub_22BDB6774();
  v5[72] = v10;
  v5[73] = *(v10 - 8);
  v5[74] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v11 = sub_22BDB43E4();
  v5[77] = v11;
  v5[78] = *(v11 - 8);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v5[81] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E6698, &unk_22BDCE748);
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v12 = sub_22BDB9B14();
  v5[86] = v12;
  v5[87] = *(v12 - 8);
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v13 = sub_22BDB9B54();
  v5[91] = v13;
  v5[92] = *(v13 - 8);
  v5[93] = swift_task_alloc();
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = sub_22BBE6DE0(&qword_27D8E60D8, &unk_22BDCD620);
  v5[97] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E66A0, &unk_22BDCE758);
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v14 = sub_22BDB9774();
  v5[100] = v14;
  v5[101] = *(v14 - 8);
  v5[102] = swift_task_alloc();
  v5[5] = type metadata accessor for SessionCoordinatorResponseCallback(0);
  v5[6] = &off_283F80930;
  v5[2] = a4;

  return MEMORY[0x2822009F8](sub_22BD6F7CC, 0, 0);
}

uint64_t sub_22BD6F7CC(uint64_t a1)
{
  v2 = v1[101];
  v3 = MEMORY[0x277D84F90];
  v1[52] = MEMORY[0x277D84F90];
  sub_22BDB96A4();
  v4 = sub_22BDB9744();
  v7 = *(v2 + 8);
  v5 = v2 + 8;
  v6 = v7;
  v1[103] = v7;
  v1[104] = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = sub_22BB30AE4();
  v7(v8);
  v1[53] = v4;
  v1[105] = OBJC_IVAR____TtC23IntelligenceFlowRuntime8Executor__isFirstAcceptSinceLoad;
  v9 = sub_22BB2F324();
  sub_22BBE6DE0(v9, v10);
  sub_22BB35554();
  sub_22BBB5F9C(v11, v12, &unk_22BDBD950, v13);
  v14 = sub_22BDB9064();

  v15 = *(v14 + 16);
  v793 = v1;
  if (v15)
  {
    v785 = v6;
    v787 = v5;
    v16 = v1[92];
    v17 = v1[60];
    v791 = v1[59];
    sub_22BD27B30(0, v15, 0);
    v18 = v3;
    sub_22BB2F390();
    v758 = v14;
    v20 = v14 + v19;
    v789 = *(v17 + 72);
    v21 = (v16 + 8);
    v3 = &qword_22BDCE740;
    do
    {
      v22 = v1[91];
      v23 = v1[61];
      sub_22BB8DC7C();
      sub_22BB72E5C();
      sub_22BBBEE60(v24, v25, v26, v27);
      sub_22BB72E5C();
      sub_22BBDB5D0(v28, v29, v30, v31);
      v32 = *v23;
      (*v21)(&v23[*(v791 + 48)], v22);
      v34 = *(v18 + 16);
      v33 = *(v18 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_22BD27B30((v33 > 1), v34 + 1, 1);
      }

      *(v18 + 16) = v34 + 1;
      *(v18 + 8 * v34 + 32) = v32;
      v20 += v789;
      --v15;
      v1 = v793;
    }

    while (v15);

    v6 = v785;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v1[106] = sub_22BD1D2D0(v18);
  sub_22BDB96A4();
  v35 = sub_22BDB9744();
  v1[107] = v35;
  v36 = sub_22BB30AE4();
  result = v6(v36);
  v38 = 0;
  v39 = 0;
  v40 = *(v35 + 16);
  *(v1 + 236) = *MEMORY[0x277D1E710];
  *(v1 + 237) = *MEMORY[0x277D1E728];
  *(v1 + 238) = *MEMORY[0x277D1E730];
  *(v1 + 239) = *MEMORY[0x277D1E750];
  *(v1 + 240) = *MEMORY[0x277D1E810];
  *(v1 + 241) = *MEMORY[0x277D1E840];
  *(v1 + 242) = *MEMORY[0x277D1DCE0];
  *(v1 + 243) = *MEMORY[0x277D1DC58];
  *(v1 + 244) = *MEMORY[0x277D1E718];
  *(v1 + 245) = *MEMORY[0x277D1D9D0];
  v1[108] = v40;
LABEL_9:
  if (v39 != v40)
  {
    if (v39 >= v40)
    {
      __break(1u);
    }

    else
    {
      v6 = (v39 + 1);
      if (!__OFADD__(v39, 1))
      {
        if (v38 == v40)
        {
          ++v39;
          goto LABEL_14;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          if (v38 < *(v1[107] + 16))
          {
            sub_22BB94EA0();
            v5 = v38 + 1;
            sub_22BB370D0();
            v48 = sub_22BB588AC();
            v49(v48);
            v50 = sub_22BBE6DE0(&qword_27D8E66A8, &unk_22BDCE768);
            v51 = sub_22BB36968(v50);
            v52(v51);
            sub_22BB331C8();
            sub_22BB336D0(v53, v54, v55, v3);
            v43 = 0;
            ++v38;
            ++v39;
            goto LABEL_18;
          }

          goto LABEL_62;
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  while (1)
  {
LABEL_14:
    v41 = sub_22BB30AE4();
    sub_22BBE6DE0(v41, v42);
    v43 = 1;
    v44 = sub_22BB34170();
    sub_22BB336D0(v44, v45, v46, v47);
LABEL_18:
    v1[110] = v39;
    v1[109] = v38;
    LODWORD(v791) = v43;
    *(v1 + 984) = v43;
    v56 = sub_22BB8D28C();
    sub_22BBDB5D0(v56, v57, &qword_27D8E66A0, &unk_22BDCE758);
    v58 = sub_22BB30AE4();
    v60 = sub_22BBE6DE0(v58, v59);
    sub_22BB3B428(v60);
    if (v82)
    {
      v146 = v1[105];
      sub_22BB37E0C();
      sub_22BB381D8();
      v147 = v1[58];

      sub_22BB69FEC(v1 + 2, v1[5]);
      sub_22BB31254();

      *(v147 + v146) = 0;
      sub_22BB32FA4(v1 + 2);
      &unk_22BDCE768, v148, v149, v150, v151, v152, v153, v154, v332, v358, v384, v410, v436, v462, v488, v514, v541, v568, v596, v623, v650, v677, v704, v731, v758;
      &qword_27D8E66A8, v155, v156, v157, v158, v159, v160, v161, v333, v359, v385, v411, v437, v463, v489, v516, v543, v571, v598, v625, v652, v679, v706, v733, v760;
      v6, v162, v163, v164, v165, v166, v167, v168, v334, v360, v386, v412, v438, v464, v490, v517, v544, v572, v599, v626, v653, v680, v707, v734, v761;
      v38, v169, v170, v171, v172, v173, v174, v175, v335, v361, v387, v413, v439, v465, v491, v518, v545, v573, v600, v627, v654, v681, v708, v735, v762;
      v5, v176, v177, v178, v179, v180, v181, v182, v336, v362, v388, v414, v440, v466, v492, v519, v546, v574, v601, v628, v655, v682, v709, v736, v763;
      v363, v183, v184, v185, v186, v187, v188, v189, v337, v363, v389, v415, v441, v467, v493, v520, v547, v575, v602, v629, v656, v683, v710, v737, v764;
      v390, v190, v191, v192, v193, v194, v195, v196, v338, v364, v390, v416, v442, v468, v494, v521, v548, v576, v603, v630, v657, v684, v711, v738, v765;
      v417, v197, v198, v199, v200, v201, v202, v203, v339, v365, v391, v417, v443, v469, v495, v522, v549, v577, v604, v631, v658, v685, v712, v739, v766;
      v444, v204, v205, v206, v207, v208, v209, v210, v340, v366, v392, v418, v444, v470, v496, v523, v550, v578, v605, v632, v659, v686, v713, v740, v767;
      v471, v211, v212, v213, v214, v215, v216, v217, v341, v367, v393, v419, v445, v471, v497, v524, v551, v579, v606, v633, v660, v687, v714, v741, v768;
      v498, v218, v219, v220, v221, v222, v223, v224, v342, v368, v394, v420, v446, v472, v498, v525, v552, v580, v607, v634, v661, v688, v715, v742, v769;
      v526, v225, v226, v227, v228, v229, v230, v231, v343, v369, v395, v421, v447, v473, v499, v526, v553, v581, v608, v635, v662, v689, v716, v743, v770;
      v554, v232, v233, v234, v235, v236, v237, v238, v344, v370, v396, v422, v448, v474, v500, v527, v554, v582, v609, v636, v663, v690, v717, v744, v771;
      v583, v239, v240, v241, v242, v243, v244, v245, v345, v371, v397, v423, v449, v475, v501, v528, v555, v583, v610, v637, v664, v691, v718, v745, v772;
      v611, v246, v247, v248, v249, v250, v251, v252, v346, v372, v398, v424, v450, v476, v502, v529, v556, v584, v611, v638, v665, v692, v719, v746, v773;
      v639, v253, v254, v255, v256, v257, v258, v259, v347, v373, v399, v425, v451, v477, v503, v530, v557, v585, v612, v639, v666, v693, v720, v747, v774;
      v667, v260, v261, v262, v263, v264, v265, v266, v348, v374, v400, v426, v452, v478, v504, v531, v558, v586, v613, v640, v667, v694, v721, v748, v775;
      v695, v267, v268, v269, v270, v271, v272, v273, v349, v375, v401, v427, v453, v479, v505, v532, v559, v587, v614, v641, v668, v695, v722, v749, v776;
      v723, v274, v275, v276, v277, v278, v279, v280, v350, v376, v402, v428, v454, v480, v506, v533, v560, v588, v615, v642, v669, v696, v723, v750, v777;
      v751, v281, v282, v283, v284, v285, v286, v287, v351, v377, v403, v429, v455, v481, v507, v534, v561, v589, v616, v643, v670, v697, v724, v751, v778;
      v779, v288, v289, v290, v291, v292, v293, v294, v352, v378, v404, v430, v456, v482, v508, v535, v562, v590, v617, v644, v671, v698, v725, v752, v779;
      v785, v295, v296, v297, v298, v299, v300, v301, v353, v379, v405, v431, v457, v483, v509, v536, v563, v591, v618, v645, v672, v699, v726, v753, v780;
      v787, v302, v303, v304, v305, v306, v307, v308, v354, v380, v406, v432, v458, v484, v510, v537, v564, v592, v619, v646, v673, v700, v727, v754, v781;
      v789, v309, v310, v311, v312, v313, v314, v315, v355, v381, v407, v433, v459, v485, v511, v538, v565, v593, v620, v647, v674, v701, v728, v755, v782;
      v791, v316, v317, v318, v319, v320, v321, v322, v356, v382, v408, v434, v460, v486, v512, v539, v566, v594, v621, v648, v675, v702, v729, v756, v783;
      v793, v323, v324, v325, v326, v327, v328, v329, v357, v383, v409, v435, v461, v487, v513, v540, v567, v595, v622, v649, v676, v703, v730, v757, v784;
      sub_22BB2F09C();
      sub_22BB53C84();

      __asm { BRAA            X1, X16 }
    }

    v789 = v38;
    v61 = v39;
    v62 = *(v1 + 236);
    sub_22BB53DF8();
    v63 = v1[87];
    v64 = sub_22BB37394();
    v65(v64);
    sub_22BDB9B24();
    v66 = sub_22BB8995C();
    v67(v66);
    v69 = *(v63 + 88);
    v68 = v63 + 88;
    v70 = v69(v6, v43);
    if (v70 == v62)
    {
      sub_22BBC78C4();
LABEL_21:
      v39 = v61;
      v71 = sub_22BB31464();
      (v38)(v71);
      if (*(v68 + 16))
      {
        sub_22BB7201C();
        sub_22BB542C4();
        while (1)
        {
          sub_22BB33578();
          if ((v72 & 1) == 0)
          {
            break;
          }

          sub_22BB3B130();
          if (v82)
          {
            v89 = sub_22BB518BC();
            (v38)(v89);
            goto LABEL_47;
          }
        }
      }

      v86 = sub_22BB518BC();
      (v38)(v86);
      goto LABEL_45;
    }

    if (v70 == *(v1 + 237))
    {
      break;
    }

    sub_22BB3FCEC();
    v68 = v80 + 8;
    v38 = *(v80 + 8);
    v82 = v77 == v81 || v77 == v79;
    if (v82 || v77 == v78)
    {
      goto LABEL_21;
    }

    if (v77 == *(v1 + 241))
    {
      goto LABEL_29;
    }

    v84 = sub_22BB36E78();
    (v38)(v84, v43);
    v85 = sub_22BB345A8();
    (v38)(v85);
    v39 = v61;
LABEL_45:
    v87 = sub_22BB33814();
    result = v88(v87);
    v40 = v1[108];
    v38 = v789;
    if ((v43 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_22BBC78C4();
LABEL_29:
  v73 = sub_22BB36E78();
  v5 = v1[56];
  v74 = v1[57];
  (v38)(v73, v43);
  v75 = sub_22BB345A8();
  (v38)(v75);
  v76 = v3 >= v5 && v3 < v74;
  v39 = v61;
  if (!v76)
  {
    goto LABEL_45;
  }

LABEL_47:
  v1[113] = v38;
  sub_22BB69B5C();
  v542 = v91;
  v569 = v90;
  v786 = v793[81];
  v788 = v793[80];
  v597 = v793[79];
  v790 = v793[78];
  v705 = v793[77];
  v678 = v793[76];
  v792 = v793[75];
  v759 = v793[74];
  v624 = v793[73];
  v651 = v793[72];
  v93 = v92 + 8;
  v94 = v793[55];
  sub_22BB31630();
  sub_22BDB9B24();
  sub_22BB3CE30();
  sub_22BDB96A4();
  sub_22BB39678();
  v95 = sub_22BB39744();
  v542(v95);
  v793[114] = v93 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v38)(v5, v569);
  sub_22BB31630();
  sub_22BDB9B34();
  v96 = sub_22BDB9A14();
  v97 = sub_22BDB8434();
  sub_22BD81020(v97, v98, v96);
  sub_22BB3FE44();

  v732 = v3 & 1;
  if (v3)
  {
    v99 = 0;
  }

  else
  {
    v99 = v94;
  }

  sub_22BDB9964();
  v100 = sub_22BDB9A24();
  v515 = v101;
  v102 = type metadata accessor for ExecutorSELFContext(0);
  v793[10] = v102;
  sub_22BB32D00();
  v793[11] = sub_22BD721F4(v103, v104, &unk_22BDBEBFC);
  v112 = sub_22BB8B8A0(v793 + 7, v105, v106, v107, v108, v109, v110, v111);
  v113 = v102[8];
  v114 = v112 + v102[7];
  sub_22BB30B28();
  sub_22BB336D0(v115, v116, v117, v705);
  sub_22BDB43D4();
  v118 = *(v790 + 16);
  v118(v112 + v102[6], v786, v705);
  v570 = v99;
  *v114 = v99;
  v114[8] = v732;
  sub_22BD72114(v678, v112 + v113);
  v119 = (v112 + v102[10]);
  *v119 = v100;
  v119[1] = v515;
  sub_22BDB6764();
  sub_22BDB6744();
  v120 = sub_22BB8DC7C();
  (v118)(v120);
  sub_22BDB6754();
  v121 = v102[9];
  sub_22BDB6724();
  v122 = type metadata accessor for ExecutorSELFLogEmitter();
  sub_22BB3E424(v122);
  v123 = sub_22BB70468();
  (v118)(v123);
  v118(v597, v112 + v121, v705);
  sub_22BBBEE60(v678, v792, &qword_27D8E3218, &qword_22BDBE390);
  v124 = type metadata accessor for ExecutorSELFLoggerASync(0);
  v125 = sub_22BB34ED4(v124);
  v118((v125 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_componentId), v597, v705);
  v126 = type metadata accessor for ExecutorSELFLoggerSync(0);
  v127 = sub_22BB34ED4(v126);
  *(v127 + 5) = v759;
  *(v127 + 6) = &off_283F74E60;
  *(v127 + 2) = v515;
  v128 = *(v790 + 32);
  v128(&v127[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId], v788, v705);
  v128(&v127[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_componentId], v597, v705);
  v129 = &v127[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId];
  *v129 = v570;
  v129[8] = v732;
  sub_22BBDB5D0(v792, &v127[OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_ifRequestId], &qword_27D8E3218, &qword_22BDBE390);
  *(v125 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_logger) = v127;
  v112[3] = v124;
  v112[4] = &off_283F74C80;
  *v112 = v125;
  (*(v624 + 8))(v759, v651);
  sub_22BB325EC(v678, &qword_27D8E3218, &qword_22BDBE390);
  (*(v790 + 8))(v786, v705);
  sub_22BBBEE60((v793 + 7), (v793 + 12), &dword_27D8E2F50, &unk_22BDBDEA0);
  v130 = v793[15];
  if (v130)
  {
    v131 = v793[86];
    v132 = v793[71];
    v133 = sub_22BB69FEC(v793 + 12, v130);
    sub_22BB69088(v133, (v793 + 47));
    sub_22BB71F68(v793 + 47);
    sub_22BB331C8();
    sub_22BB336D0(v134, v135, v136, v131);
    sub_22BDB7604();
    v137 = sub_22BB2F5C8();
    v138(v137);
    v139 = sub_22BB331D4();
    v140(v139);
    sub_22BB325EC(v132, &qword_27D8E3510, &qword_22BDBEF70);
    sub_22BB32FA4(v793 + 47);
    sub_22BB32FA4(v793 + 12);
  }

  else
  {
    sub_22BB325EC((v793 + 12), &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  v141 = swift_task_alloc();
  v793[115] = v141;
  *v141 = v793;
  sub_22BB32840(v141);
  sub_22BB53C84();

  return sub_22BD672A4(v142, v143, v144);
}

uint64_t sub_22BD70564()
{
  v2 = *(v0 + 928);
  v3 = *(v0 + 760);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  v7 = sub_22BD65B38(sub_22BD7223C, v6, v2, MEMORY[0x277D1E890], sub_22BB6FF1C, MEMORY[0x277D1E870]);
  v6, v8, v9, v10, v11, v12, v13, v14, v319, v346, v373, v400, v427, v454, v481, v509, v537, v566, v595, v623, v650, v678, v706, v734, v762;
  sub_22BD669F8(v7);
  sub_22BBBEE60(v4, v5, &qword_27D8E6698, &unk_22BDCE748);
  v15 = type metadata accessor for ExecutorLogging(0);
  sub_22BB31814(v5, 1, v15);
  if (v77)
  {
    sub_22BB325EC(*(v0 + 672), &qword_27D8E6698, &unk_22BDCE748);
  }

  else
  {
    v16 = *(v0 + 980);
    v4 = *(v0 + 520);
    v17 = *(v0 + 504);
    v18 = *(v0 + 512);
    sub_22BDB8E54();
    sub_22BD72588();
    sub_22BDB8F54();
    sub_22BB30ED8();
    v19 = sub_22BB39478();
    v20(v19);
    (*(v18 + 104))(v4, v16, v17);
    sub_22BDB8E24();
    v1 = (v18 + 8);
    v21 = sub_22BB331D4();
    v22(v21);
    sub_22BB37848();
    sub_22BD721A4();
  }

  sub_22BBBEE60(v0 + 56, v0 + 296, &dword_27D8E2F50, &unk_22BDBDEA0);
  v23 = *(v0 + 320);
  v24 = *(v0 + 928);
  v25 = *(v0 + 680);
  if (v23)
  {
    v4 = *(v0 + 544);
    v26 = sub_22BB69FEC((v0 + 296), v23);
    sub_22BB69088(v26, v0 + 336);
    v3 = *(v0 + 368);
    v1 = sub_22BB69FEC((v0 + 336), *(v0 + 360));
    sub_22BD665FC(v24);

    sub_22BDB7604();
    sub_22BB72E5C();
    v27();

    v28 = sub_22BB2F0E0();
    v29(v28);
    sub_22BB325EC(v25, &qword_27D8E6698, &unk_22BDCE748);
    sub_22BB32FA4((v0 + 336));
    sub_22BB32FA4((v0 + 296));
  }

  else
  {
    sub_22BB325EC(*(v0 + 680), &qword_27D8E6698, &unk_22BDCE748);

    sub_22BB325EC(v0 + 296, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  sub_22BB325EC(v0 + 56, &dword_27D8E2F50, &unk_22BDBDEA0);
  v30 = sub_22BB2F324();
  result = v31(v30);
  v33 = *(v0 + 880);
  v34 = *(v0 + 872);
  if ((*(v0 + 984) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v36 = sub_22BB5138C();
  sub_22BBE6DE0(v36, v37);
  v38 = 1;
  v39 = sub_22BB34170();
  sub_22BB336D0(v39, v40, v41, v42);
  while (1)
  {
    *(v0 + 880) = v33;
    v798 = v34;
    *(v0 + 872) = v34;
    LODWORD(v796) = v38;
    *(v0 + 984) = v38;
    v51 = sub_22BB8D28C();
    sub_22BBDB5D0(v51, v52, &qword_27D8E66A0, &unk_22BDCE758);
    v53 = sub_22BB5138C();
    v55 = sub_22BBE6DE0(v53, v54);
    sub_22BB3B428(v55);
    if (v77)
    {
      v133 = *(v0 + 840);
      sub_22BB37E0C();
      sub_22BB381D8();
      v134 = *(v0 + 464);

      sub_22BB69FEC((v0 + 16), *(v0 + 40));
      sub_22BB31254();

      *(v134 + v133) = 0;
      sub_22BB32FA4((v0 + 16));
      v38, v135, v136, v137, v138, v139, v140, v141, v320, v347, v374, v401, v428, v455, v482, v510, v538, v567, v596, v624, v651, v679, v707, v735, v763;
      &unk_22BDCE768, v142, v143, v144, v145, v146, v147, v148, v321, v348, v375, v402, v429, v456, v484, v512, v541, v570, v598, v625, v653, v681, v709, v737, v765;
      &qword_27D8E66A8, v149, v150, v151, v152, v153, v154, v155, v322, v349, v376, v403, v430, v457, v485, v513, v542, v571, v599, v626, v654, v682, v710, v738, v766;
      v33, v156, v157, v158, v159, v160, v161, v162, v323, v350, v377, v404, v431, v458, v486, v514, v543, v572, v600, v627, v655, v683, v711, v739, v767;
      v1, v163, v164, v165, v166, v167, v168, v169, v324, v351, v378, v405, v432, v459, v487, v515, v544, v573, v601, v628, v656, v684, v712, v740, v768;
      v352, v170, v171, v172, v173, v174, v175, v176, v325, v352, v379, v406, v433, v460, v488, v516, v545, v574, v602, v629, v657, v685, v713, v741, v769;
      v380, v177, v178, v179, v180, v181, v182, v183, v326, v353, v380, v407, v434, v461, v489, v517, v546, v575, v603, v630, v658, v686, v714, v742, v770;
      v408, v184, v185, v186, v187, v188, v189, v190, v327, v354, v381, v408, v435, v462, v490, v518, v547, v576, v604, v631, v659, v687, v715, v743, v771;
      v436, v191, v192, v193, v194, v195, v196, v197, v328, v355, v382, v409, v436, v463, v491, v519, v548, v577, v605, v632, v660, v688, v716, v744, v772;
      v464, v198, v199, v200, v201, v202, v203, v204, v329, v356, v383, v410, v437, v464, v492, v520, v549, v578, v606, v633, v661, v689, v717, v745, v773;
      v493, v205, v206, v207, v208, v209, v210, v211, v330, v357, v384, v411, v438, v465, v493, v521, v550, v579, v607, v634, v662, v690, v718, v746, v774;
      v522, v212, v213, v214, v215, v216, v217, v218, v331, v358, v385, v412, v439, v466, v494, v522, v551, v580, v608, v635, v663, v691, v719, v747, v775;
      v552, v219, v220, v221, v222, v223, v224, v225, v332, v359, v386, v413, v440, v467, v495, v523, v552, v581, v609, v636, v664, v692, v720, v748, v776;
      v582, v226, v227, v228, v229, v230, v231, v232, v333, v360, v387, v414, v441, v468, v496, v524, v553, v582, v610, v637, v665, v693, v721, v749, v777;
      v611, v233, v234, v235, v236, v237, v238, v239, v334, v361, v388, v415, v442, v469, v497, v525, v554, v583, v611, v638, v666, v694, v722, v750, v778;
      v639, v240, v241, v242, v243, v244, v245, v246, v335, v362, v389, v416, v443, v470, v498, v526, v555, v584, v612, v639, v667, v695, v723, v751, v779;
      v668, v247, v248, v249, v250, v251, v252, v253, v336, v363, v390, v417, v444, v471, v499, v527, v556, v585, v613, v640, v668, v696, v724, v752, v780;
      v697, v254, v255, v256, v257, v258, v259, v260, v337, v364, v391, v418, v445, v472, v500, v528, v557, v586, v614, v641, v669, v697, v725, v753, v781;
      v726, v261, v262, v263, v264, v265, v266, v267, v338, v365, v392, v419, v446, v473, v501, v529, v558, v587, v615, v642, v670, v698, v726, v754, v782;
      v755, v268, v269, v270, v271, v272, v273, v274, v339, v366, v393, v420, v447, v474, v502, v530, v559, v588, v616, v643, v671, v699, v727, v755, v783;
      v784, v275, v276, v277, v278, v279, v280, v281, v340, v367, v394, v421, v448, v475, v503, v531, v560, v589, v617, v644, v672, v700, v728, v756, v784;
      v790, v282, v283, v284, v285, v286, v287, v288, v341, v368, v395, v422, v449, v476, v504, v532, v561, v590, v618, v645, v673, v701, v729, v757, v785;
      v792, v289, v290, v291, v292, v293, v294, v295, v342, v369, v396, v423, v450, v477, v505, v533, v562, v591, v619, v646, v674, v702, v730, v758, v786;
      v794, v296, v297, v298, v299, v300, v301, v302, v343, v370, v397, v424, v451, v478, v506, v534, v563, v592, v620, v647, v675, v703, v731, v759, v787;
      v796, v303, v304, v305, v306, v307, v308, v309, v344, v371, v398, v425, v452, v479, v507, v535, v564, v593, v621, v648, v676, v704, v732, v760, v788;
      v798, v310, v311, v312, v313, v314, v315, v316, v345, v372, v399, v426, v453, v480, v508, v536, v565, v594, v622, v649, v677, v705, v733, v761, v789;
      sub_22BB2F09C();
      sub_22BB53C84();

      __asm { BRAA            X1, X16 }
    }

    v794 = v33;
    v56 = *(v0 + 944);
    sub_22BB53DF8();
    v57 = *(v0 + 696);
    v58 = sub_22BB37394();
    v59(v58);
    sub_22BDB9B24();
    v60 = sub_22BB8995C();
    v61(v60);
    v62 = (*(v57 + 88))(&qword_27D8E66A8, v4);
    if (v62 == v56)
    {
      sub_22BBC78C4();
      goto LABEL_20;
    }

    if (v62 == *(v0 + 948))
    {
      sub_22BBC78C4();
      goto LABEL_28;
    }

    sub_22BB3FCEC();
    v1 = (v75 + 8);
    v33 = *(v75 + 8);
    v77 = v72 == v76 || v72 == v74;
    if (!v77 && v72 != v73)
    {
      break;
    }

LABEL_20:
    v63 = sub_22BB31464();
    v33(v63);
    if (*(v56 + 16))
    {
      sub_22BB7201C();
      sub_22BB542C4();
      while (1)
      {
        sub_22BB33578();
        if ((v64 & 1) == 0)
        {
          break;
        }

        sub_22BB3B130();
        if (v77)
        {
          v81 = sub_22BB518BC();
          v33(v81);
          goto LABEL_46;
        }
      }
    }

    v69 = sub_22BB518BC();
    v33(v69);
LABEL_35:
    v70 = sub_22BB33814();
    result = v71(v70);
    v33 = v794;
    v34 = v798;
    if (v38)
    {
      goto LABEL_13;
    }

LABEL_8:
    v35 = *(v0 + 864);
    if (v33 == v35)
    {
      goto LABEL_13;
    }

    if (v33 >= v35)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      return result;
    }

    v1 = (v33 + 1);
    if (__OFADD__(v33, 1))
    {
      goto LABEL_59;
    }

    if (v34 == v35)
    {
      v33 = (v33 + 1);
      goto LABEL_13;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    if (v34 >= *(*(v0 + 856) + 16))
    {
      goto LABEL_61;
    }

    sub_22BB94EA0();
    sub_22BB370D0();
    v43 = sub_22BB588AC();
    v44(v43);
    v45 = sub_22BBE6DE0(&qword_27D8E66A8, &unk_22BDCE768);
    v46 = sub_22BB36968(v45);
    v47(v46);
    sub_22BB331C8();
    sub_22BB336D0(v48, v49, v50, v3);
    v38 = 0;
    ++v34;
    v33 = (v33 + 1);
  }

  if (v72 != *(v0 + 964))
  {
    v79 = sub_22BB36E78();
    (v33)(v79, v4);
    v80 = sub_22BB345A8();
    v33(v80);
    goto LABEL_35;
  }

LABEL_28:
  v65 = sub_22BB36E78();
  v1 = *(v0 + 448);
  v66 = *(v0 + 456);
  (v33)(v65, v4);
  v67 = sub_22BB345A8();
  v33(v67);
  if (v3 < v1 || v3 >= v66)
  {
    goto LABEL_35;
  }

LABEL_46:
  *(v0 + 904) = v33;
  v568 = *(v0 + 824);
  sub_22BB69B5C();
  v597 = v82;
  v791 = *(v0 + 648);
  v793 = *(v0 + 640);
  v652 = *(v0 + 632);
  v795 = *(v0 + 624);
  v736 = *(v0 + 616);
  v797 = *(v0 + 600);
  v799 = *(v0 + 608);
  v764 = *(v0 + 592);
  v680 = *(v0 + 584);
  v708 = *(v0 + 576);
  v83 = *(v0 + 440);
  sub_22BB31630();
  sub_22BDB9B24();
  sub_22BB3CE30();
  sub_22BDB96A4();
  sub_22BB39678();
  v84 = sub_22BB39744();
  v568(v84);
  v85 = sub_22BBCBFAC();
  (v33)(v85, v597);
  sub_22BB31630();
  sub_22BDB9B34();
  v86 = sub_22BDB9A14();
  v87 = sub_22BDB8434();
  sub_22BD81020(v87, v88, v86);
  sub_22BB3FE44();

  if (v3)
  {
    v89 = 0;
  }

  else
  {
    v89 = v83;
  }

  sub_22BDB9964();
  v90 = sub_22BDB9A24();
  v511 = v91;
  v539 = v90;
  v92 = type metadata accessor for ExecutorSELFContext(0);
  *(v0 + 80) = v92;
  sub_22BB32D00();
  v95 = sub_22BD721F4(v93, v94, &unk_22BDBEBFC);
  v103 = sub_22BD725E0(v95, v96, v97, v98, v99, v100, v101, v102);
  v483 = v92[8];
  v104 = v103 + v92[7];
  sub_22BB30B28();
  sub_22BB336D0(v105, v106, v107, v736);
  v569 = v92[5];
  sub_22BDB43D4();
  v108 = sub_22BB72244(v92[6]);
  (v3)(v108);
  *v104 = v89;
  v104[8] = v3 & 1;
  sub_22BD72114(v799, v103 + v483);
  v109 = (v103 + v92[10]);
  *v109 = v539;
  v109[1] = v511;
  sub_22BDB6764();
  sub_22BDB6744();
  v110 = sub_22BB8DC7C();
  (v3)(v110);
  sub_22BDB6754();
  v111 = v92[9];
  sub_22BDB6724();
  v112 = type metadata accessor for ExecutorSELFLogEmitter();
  v540 = sub_22BB3E424(v112);
  (v3)(v793, v103 + v569, v736);
  (v3)(v652, v103 + v111, v736);
  sub_22BBBEE60(v799, v797, &qword_27D8E3218, &qword_22BDBE390);
  v113 = type metadata accessor for ExecutorSELFLoggerASync(0);
  v114 = sub_22BB34ED4(v113);
  sub_22BB70C54();
  (v3)();
  v115 = type metadata accessor for ExecutorSELFLoggerSync(0);
  v116 = sub_22BB34ED4(v115);
  v116[5] = v764;
  v116[6] = &off_283F74E60;
  v116[2] = v540;
  v117 = sub_22BB39418(v116, OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId);
  (v795)(v117);
  sub_22BB70C54();
  (v795)();
  v118 = v116 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId;
  *v118 = v89;
  v118[8] = v3 & 1;
  sub_22BBDB5D0(v797, v116 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_ifRequestId, &qword_27D8E3218, &qword_22BDBE390);
  *(v114 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_logger) = v116;
  v103[3] = v113;
  v103[4] = &off_283F74C80;
  *v103 = v114;
  (*(v680 + 8))(v764, v708);
  sub_22BB325EC(v799, &qword_27D8E3218, &qword_22BDBE390);
  (*(v795 + 8))(v791, v736);
  v119 = sub_22BBBEE60(v0 + 56, v0 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
  v120 = *(v0 + 120);
  if (v120)
  {
    sub_22BBC7FC0(v119, v120);
    sub_22BB71F68((v0 + 376));
    sub_22BB331C8();
    sub_22BB336D0(v121, v122, v123, &qword_22BDBE390);
    sub_22BDB7604();
    v124 = sub_22BB2F5C8();
    v125(v124);
    v126 = sub_22BB331D4();
    v127(v126);
    sub_22BB325EC(v114, &qword_27D8E3510, &qword_22BDBEF70);
    sub_22BB32FA4((v0 + 376));
    sub_22BB32FA4((v0 + 96));
  }

  else
  {
    sub_22BB325EC(v0 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  v128 = swift_task_alloc();
  *(v0 + 920) = v128;
  *v128 = v0;
  sub_22BB32840(v128);
  sub_22BB6BEAC();
  sub_22BB53C84();

  return sub_22BD672A4(v129, v130, v131);
}

uint64_t sub_22BD71138()
{
  v2 = *(v0 + 936);
  *(v0 + 432) = v2;
  v3 = v2;
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v15 = *(v0 + 936);
    v814 = *(v0 + 904);
    v20 = *(v0 + 976);
    v1 = *(v0 + 972);
    v21 = *(v0 + 968);
    v22 = *(v0 + 704);
    v23 = *(v0 + 696);
    v24 = *(v0 + 688);

    v25 = v15;
    sub_22BDB4BA4();
    sub_22BDB8314();
    sub_22BB30ED8();
    (*(v26 + 104))(v22, v21);
    sub_22BDB8294();
    sub_22BB30ED8();
    (*(v27 + 104))(v22, v1);
    (*(v23 + 104))(v22, v20, v24);
    sub_22BDB9A54();
    v28 = sub_22BB30AE4();
    v814(v28);
    v29 = *(v0 + 416);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_12;
    }

    goto LABEL_79;
  }

  v4 = *(v0 + 536);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_22BD721A4();
    goto LABEL_11;
  }

  v5 = *(v0 + 440);

  v7 = *v4;
  v6 = v4[1];
  sub_22BB7592C();
  sub_22BD6B8AC(v8, v9, v10, v5, v11);
  v12 = *(v0 + 416);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BD72594();
    sub_22BD8F6E4();
    v12 = v355;
  }

  v13 = *(v12 + 16);
  if (v13 >= *(v12 + 24) >> 1)
  {
    sub_22BD72594();
    sub_22BD8F6E4();
    v12 = v356;
  }

  v14 = *(v0 + 680);
  v15 = *(v0 + 664);
  *(v12 + 16) = v13 + 1;
  sub_22BB97804();
  v18(v17 + v16 * v13);
  *(v0 + 416) = v12;
  sub_22BBBEE60(v14, v15, &qword_27D8E6698, &unk_22BDCE748);
  v19 = type metadata accessor for ExecutorLogging(0);
  sub_22BB3B428(v19);
  if (v107)
  {
    sub_22BB325EC(*(v0 + 664), &qword_27D8E6698, &unk_22BDCE748);
  }

  else
  {
    v48 = *(v0 + 980);
    v49 = *(v0 + 664);
    v15 = *(v0 + 520);
    v1 = *(v0 + 504);
    v50 = *(v0 + 512);
    sub_22BDB8E54();
    sub_22BDB8F54();
    sub_22BB30ED8();
    (*(v51 + 16))(v15, v49);
    (*(v50 + 104))(v15, v48, v1);
    sub_22BDB8E24();
    (*(v50 + 8))(v15, v1);
    sub_22BB37848();
    sub_22BD721A4();
  }

  sub_22BBBEE60(v0 + 56, v0 + 216, &dword_27D8E2F50, &unk_22BDBDEA0);
  v52 = *(v0 + 240);
  v31 = *(v0 + 680);
  if (v52)
  {
    v53 = *(v0 + 560);
    v54 = *(v0 + 552);
    v817 = *(v0 + 544);
    v55 = sub_22BB69FEC((v0 + 216), v52);
    sub_22BB69088(v55, v0 + 256);
    v1 = *(v0 + 280);
    v56 = *(v0 + 288);
    v15 = sub_22BB69FEC((v0 + 256), v1);
    sub_22BD721F4(&qword_27D8E2F58, type metadata accessor for RuntimeError, &qword_22BDBF300);
    v57 = swift_allocError();
    v58 = v6;
    v59 = v57;
    *v60 = v7;
    v60[1] = v58;
    swift_storeEnumTagMultiPayload();
    sub_22BDB7604();
    (*(v56 + 216))(v59, v53, v1, v56);
    (*(v54 + 8))(v53, v817);
    sub_22BB325EC(v31, &qword_27D8E6698, &unk_22BDCE748);

    sub_22BB32FA4((v0 + 256));
    sub_22BB32FA4((v0 + 216));
  }

  else
  {
    sub_22BB325EC(*(v0 + 680), &qword_27D8E6698, &unk_22BDCE748);

    sub_22BB325EC(v0 + 216, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  while (1)
  {
    sub_22BB325EC(v0 + 56, &dword_27D8E2F50, &unk_22BDBDEA0);
    v61 = sub_22BB2F324();
    v62(v61);
    v63 = *(v0 + 880);
    v64 = *(v0 + 872);
    if (*(v0 + 984))
    {
      break;
    }

LABEL_25:
    v65 = *(v0 + 864);
    if (v63 == v65)
    {
      break;
    }

    if (v63 >= v65)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v1 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      goto LABEL_76;
    }

    if (v64 == v65)
    {
      v63 = (v63 + 1);
      break;
    }

    if ((v64 & 0x8000000000000000) != 0)
    {
      goto LABEL_77;
    }

    if (v64 < *(*(v0 + 856) + 16))
    {
      sub_22BB94EA0();
      sub_22BB370D0();
      v73 = sub_22BB588AC();
      v74(v73);
      v75 = sub_22BBE6DE0(&qword_27D8E66A8, &unk_22BDCE768);
      v76 = sub_22BB36968(v75);
      v77(v76);
      sub_22BB331C8();
      sub_22BB336D0(v78, v79, v80, v15);
      v68 = 0;
      ++v64;
      v63 = (v63 + 1);
      goto LABEL_34;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    sub_22BD72594();
    sub_22BD8F6E4();
    v29 = v353;
LABEL_12:
    v30 = *(v29 + 16);
    if (v30 >= *(v29 + 24) >> 1)
    {
      sub_22BD72594();
      sub_22BD8F6E4();
      v29 = v354;
    }

    v31 = *(v0 + 656);
    *(v29 + 16) = v30 + 1;
    sub_22BB97804();
    v34(v33 + v32 * v30);
    *(v0 + 416) = v29;
    v35 = sub_22BB2F0E0();
    sub_22BBBEE60(v35, v36, v37, v38);
    v39 = type metadata accessor for ExecutorLogging(0);
    sub_22BB31814(v31, 1, v39);
    if (v107)
    {
      sub_22BB325EC(*(v0 + 656), &qword_27D8E6698, &unk_22BDCE748);
    }

    else
    {
      sub_22BD6C488();
      sub_22BB37848();
      sub_22BD721A4();
    }

    sub_22BBBEE60(v0 + 56, v0 + 136, &dword_27D8E2F50, &unk_22BDBDEA0);
    v40 = *(v0 + 160);
    v41 = *(v0 + 936);
    v42 = *(v0 + 680);
    if (v40)
    {
      v31 = *(v0 + 560);
      v43 = sub_22BB69FEC((v0 + 136), v40);
      sub_22BB69088(v43, v0 + 176);
      v15 = *(v0 + 200);
      v1 = *(v0 + 208);
      sub_22BB69FEC((v0 + 176), v15);
      sub_22BDB7604();
      v44 = sub_22BB2F0E0();
      v45(v44);

      v46 = sub_22BB331D4();
      v47(v46);
      sub_22BB325EC(v42, &qword_27D8E6698, &unk_22BDCE748);
      sub_22BB32FA4((v0 + 176));
      sub_22BB32FA4((v0 + 136));
    }

    else
    {
      sub_22BB325EC(*(v0 + 680), &qword_27D8E6698, &unk_22BDCE748);

      sub_22BB325EC(v0 + 136, &dword_27D8E2F50, &unk_22BDBDEA0);
    }
  }

  while (2)
  {
    v66 = sub_22BB5138C();
    sub_22BBE6DE0(v66, v67);
    v68 = 1;
    v69 = sub_22BB34170();
    sub_22BB336D0(v69, v70, v71, v72);
LABEL_34:
    *(v0 + 880) = v63;
    v818 = v64;
    *(v0 + 872) = v64;
    *(v0 + 984) = v68;
    v81 = sub_22BB8D28C();
    sub_22BBDB5D0(v81, v82, &qword_27D8E66A0, &unk_22BDCE758);
    v83 = sub_22BB5138C();
    v85 = sub_22BBE6DE0(v83, v84);
    sub_22BB3B428(v85);
    if (v107)
    {
      v165 = *(v0 + 840);
      sub_22BB37E0C();
      v357 = v167;
      v383 = v166;
      v409 = *(v0 + 720);
      v435 = *(v0 + 712);
      v461 = *(v0 + 704);
      v488 = *(v0 + 680);
      v515 = *(v0 + 672);
      v542 = *(v0 + 664);
      v569 = *(v0 + 656);
      v596 = *(v0 + 648);
      v622 = *(v0 + 640);
      v649 = *(v0 + 632);
      v676 = *(v0 + 608);
      v703 = *(v0 + 600);
      v730 = *(v0 + 592);
      v757 = *(v0 + 568);
      v784 = *(v0 + 560);
      v810 = *(v0 + 536);
      v813 = *(v0 + 520);
      v816 = *(v0 + 496);
      v820 = *(v0 + 488);
      v168 = *(v0 + 464);

      sub_22BB69FEC((v0 + 16), *(v0 + 40));
      sub_22BB31254();

      *(v168 + v165) = 0;
      sub_22BB32FA4((v0 + 16));
      v68, v169, v170, v171, v172, v173, v174, v175, v357, v383, v409, v435, v461, v488, v515, v542, v569, v596, v622, v649, v676, v703, v730, v757, v784;
      &unk_22BDCE768, v176, v177, v178, v179, v180, v181, v182, v358, v384, v410, v436, v462, v489, v516, v543, v570, v597, v623, v650, v677, v704, v731, v758, v785;
      &qword_27D8E66A8, v183, v184, v185, v186, v187, v188, v189, v359, v385, v411, v437, v463, v490, v517, v544, v571, v598, v624, v651, v678, v705, v732, v759, v786;
      v63, v190, v191, v192, v193, v194, v195, v196, v360, v386, v412, v438, v464, v491, v518, v545, v572, v599, v625, v652, v679, v706, v733, v760, v787;
      v1, v197, v198, v199, v200, v201, v202, v203, v361, v387, v413, v439, v465, v492, v519, v546, v573, v600, v626, v653, v680, v707, v734, v761, v788;
      v362, v204, v205, v206, v207, v208, v209, v210, v362, v388, v414, v440, v466, v493, v520, v547, v574, v601, v627, v654, v681, v708, v735, v762, v789;
      v389, v211, v212, v213, v214, v215, v216, v217, v363, v389, v415, v441, v467, v494, v521, v548, v575, v602, v628, v655, v682, v709, v736, v763, v790;
      v416, v218, v219, v220, v221, v222, v223, v224, v364, v390, v416, v442, v468, v495, v522, v549, v576, v603, v629, v656, v683, v710, v737, v764, v791;
      v443, v225, v226, v227, v228, v229, v230, v231, v365, v391, v417, v443, v469, v496, v523, v550, v577, v604, v630, v657, v684, v711, v738, v765, v792;
      v470, v232, v233, v234, v235, v236, v237, v238, v366, v392, v418, v444, v470, v497, v524, v551, v578, v605, v631, v658, v685, v712, v739, v766, v793;
      v498, v239, v240, v241, v242, v243, v244, v245, v367, v393, v419, v445, v471, v498, v525, v552, v579, v606, v632, v659, v686, v713, v740, v767, v794;
      v526, v246, v247, v248, v249, v250, v251, v252, v368, v394, v420, v446, v472, v499, v526, v553, v580, v607, v633, v660, v687, v714, v741, v768, v795;
      v554, v253, v254, v255, v256, v257, v258, v259, v369, v395, v421, v447, v473, v500, v527, v554, v581, v608, v634, v661, v688, v715, v742, v769, v796;
      v582, v260, v261, v262, v263, v264, v265, v266, v370, v396, v422, v448, v474, v501, v528, v555, v582, v609, v635, v662, v689, v716, v743, v770, v797;
      v610, v267, v268, v269, v270, v271, v272, v273, v371, v397, v423, v449, v475, v502, v529, v556, v583, v610, v636, v663, v690, v717, v744, v771, v798;
      v637, v274, v275, v276, v277, v278, v279, v280, v372, v398, v424, v450, v476, v503, v530, v557, v584, v611, v637, v664, v691, v718, v745, v772, v799;
      v665, v281, v282, v283, v284, v285, v286, v287, v373, v399, v425, v451, v477, v504, v531, v558, v585, v612, v638, v665, v692, v719, v746, v773, v800;
      v693, v288, v289, v290, v291, v292, v293, v294, v374, v400, v426, v452, v478, v505, v532, v559, v586, v613, v639, v666, v693, v720, v747, v774, v801;
      v721, v295, v296, v297, v298, v299, v300, v301, v375, v401, v427, v453, v479, v506, v533, v560, v587, v614, v640, v667, v694, v721, v748, v775, v802;
      v749, v302, v303, v304, v305, v306, v307, v308, v376, v402, v428, v454, v480, v507, v534, v561, v588, v615, v641, v668, v695, v722, v749, v776, v803;
      v777, v309, v310, v311, v312, v313, v314, v315, v377, v403, v429, v455, v481, v508, v535, v562, v589, v616, v642, v669, v696, v723, v750, v777, v804;
      v805, v316, v317, v318, v319, v320, v321, v322, v378, v404, v430, v456, v482, v509, v536, v563, v590, v617, v643, v670, v697, v724, v751, v778, v805;
      v810, v323, v324, v325, v326, v327, v328, v329, v379, v405, v431, v457, v483, v510, v537, v564, v591, v618, v644, v671, v698, v725, v752, v779, v806;
      v813, v330, v331, v332, v333, v334, v335, v336, v380, v406, v432, v458, v484, v511, v538, v565, v592, v619, v645, v672, v699, v726, v753, v780, v807;
      v816, v337, v338, v339, v340, v341, v342, v343, v381, v407, v433, v459, v485, v512, v539, v566, v593, v620, v646, v673, v700, v727, v754, v781, v808;
      v820, v344, v345, v346, v347, v348, v349, v350, v382, v408, v434, v460, v486, v513, v540, v567, v594, v621, v647, v674, v701, v728, v755, v782, v809;
      sub_22BB2F09C();
      sub_22BB385C0();

      __asm { BRAA            X1, X16 }
    }

    v811 = v63;
    v86 = *(v0 + 944);
    sub_22BB53DF8();
    v87 = *(v0 + 696);
    v88 = sub_22BB37394();
    v89(v88);
    sub_22BDB9B24();
    v90 = sub_22BB8995C();
    v91(v90);
    v92 = (*(v87 + 88))(&qword_27D8E66A8, v31);
    if (v92 == v86)
    {
      sub_22BBC78C4();
      goto LABEL_37;
    }

    if (v92 != *(v0 + 948))
    {
      sub_22BB3FCEC();
      v1 = v105 + 8;
      v63 = *(v105 + 8);
      v107 = v102 == v106 || v102 == v104;
      if (v107 || v102 == v103)
      {
LABEL_37:
        v93 = sub_22BB31464();
        v63(v93);
        if (*(v86 + 16))
        {
          sub_22BB7201C();
          sub_22BB542C4();
          while (1)
          {
            sub_22BB33578();
            if ((v94 & 1) == 0)
            {
              break;
            }

            sub_22BB3B130();
            if (v107)
            {
              v111 = sub_22BB518BC();
              v63(v111);
              goto LABEL_63;
            }
          }
        }

        v99 = sub_22BB518BC();
        v63(v99);
      }

      else
      {
        if (v102 == *(v0 + 964))
        {
          goto LABEL_45;
        }

        v109 = sub_22BB36E78();
        (v63)(v109, v31);
        v110 = sub_22BB345A8();
        v63(v110);
      }

LABEL_52:
      v100 = sub_22BB33814();
      v101(v100);
      v63 = v811;
      v64 = v818;
      if ((v68 & 1) == 0)
      {
        goto LABEL_25;
      }

      continue;
    }

    break;
  }

  sub_22BBC78C4();
LABEL_45:
  v95 = sub_22BB36E78();
  v1 = *(v0 + 448);
  v96 = *(v0 + 456);
  (v63)(v95, v31);
  v97 = sub_22BB345A8();
  v63(v97);
  if (v15 < v1 || v15 >= v96)
  {
    goto LABEL_52;
  }

LABEL_63:
  *(v0 + 904) = v63;
  v568 = *(v0 + 824);
  sub_22BB69B5C();
  v595 = v112;
  v783 = *(v0 + 648);
  v648 = *(v0 + 632);
  v812 = *(v0 + 624);
  v729 = *(v0 + 616);
  v815 = *(v0 + 600);
  v819 = *(v0 + 608);
  v756 = *(v0 + 592);
  v675 = *(v0 + 584);
  v702 = *(v0 + 576);
  v113 = *(v0 + 440);
  sub_22BB31630();
  sub_22BDB9B24();
  sub_22BB3CE30();
  sub_22BDB96A4();
  sub_22BB39678();
  v114 = sub_22BB39744();
  v568(v114);
  v115 = sub_22BBCBFAC();
  (v63)(v115, v595);
  sub_22BB31630();
  sub_22BDB9B34();
  v116 = sub_22BDB9A14();
  v117 = sub_22BDB8434();
  sub_22BD81020(v117, v118, v116);
  sub_22BB3FE44();

  if (v15)
  {
    v119 = 0;
  }

  else
  {
    v119 = v113;
  }

  sub_22BDB9964();
  v120 = sub_22BDB9A24();
  v514 = v121;
  v541 = v120;
  v122 = type metadata accessor for ExecutorSELFContext(0);
  *(v0 + 80) = v122;
  sub_22BB32D00();
  v125 = sub_22BD721F4(v123, v124, &unk_22BDBEBFC);
  v133 = sub_22BD725E0(v125, v126, v127, v128, v129, v130, v131, v132);
  v487 = v122[8];
  v134 = v133 + v122[7];
  sub_22BB30B28();
  sub_22BB336D0(v135, v136, v137, v729);
  sub_22BDB43D4();
  v138 = sub_22BB72244(v122[6]);
  (v15)(v138);
  *v134 = v119;
  v134[8] = v15 & 1;
  sub_22BD72114(v819, v133 + v487);
  v139 = (v133 + v122[10]);
  *v139 = v541;
  v139[1] = v514;
  sub_22BDB6764();
  sub_22BDB6744();
  v140 = sub_22BB8DC7C();
  (v15)(v140);
  sub_22BDB6754();
  v141 = v122[9];
  sub_22BDB6724();
  v142 = type metadata accessor for ExecutorSELFLogEmitter();
  sub_22BB3E424(v142);
  v143 = sub_22BB70468();
  (v15)(v143);
  (v15)(v648, v133 + v141, v729);
  sub_22BBBEE60(v819, v815, &qword_27D8E3218, &qword_22BDBE390);
  v144 = type metadata accessor for ExecutorSELFLoggerASync(0);
  v145 = sub_22BB34ED4(v144);
  sub_22BB70C54();
  (v15)();
  v146 = type metadata accessor for ExecutorSELFLoggerSync(0);
  v147 = sub_22BB34ED4(v146);
  v147[5] = v756;
  v147[6] = &off_283F74E60;
  v147[2] = v541;
  v148 = sub_22BB39418(v147, OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_contextId);
  (v812)(v148);
  sub_22BB70C54();
  (v812)();
  v149 = v147 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_spanId;
  *v149 = v119;
  v149[8] = v15 & 1;
  sub_22BBDB5D0(v815, v147 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB122ExecutorSELFLoggerSync_ifRequestId, &qword_27D8E3218, &qword_22BDBE390);
  *(v145 + OBJC_IVAR____TtC23IntelligenceFlowRuntimeP33_89CD97183C5E4ADF54611AC981638AB123ExecutorSELFLoggerASync_logger) = v147;
  v133[3] = v144;
  v133[4] = &off_283F74C80;
  *v133 = v145;
  (*(v675 + 8))(v756, v702);
  sub_22BB325EC(v819, &qword_27D8E3218, &qword_22BDBE390);
  (*(v812 + 8))(v783, v729);
  v150 = sub_22BBBEE60(v0 + 56, v0 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
  v151 = *(v0 + 120);
  if (v151)
  {
    sub_22BBC7FC0(v150, v151);
    sub_22BB71F68((v0 + 376));
    sub_22BB331C8();
    sub_22BB336D0(v152, v153, v154, &qword_22BDBE390);
    sub_22BDB7604();
    v155 = sub_22BB2F5C8();
    v156(v155);
    v157 = sub_22BB331D4();
    v158(v157);
    sub_22BB325EC(v145, &qword_27D8E3510, &qword_22BDBEF70);
    sub_22BB32FA4((v0 + 376));
    sub_22BB32FA4((v0 + 96));
  }

  else
  {
    sub_22BB325EC(v0 + 96, &dword_27D8E2F50, &unk_22BDBDEA0);
  }

  v159 = swift_task_alloc();
  *(v0 + 920) = v159;
  *v159 = v0;
  sub_22BB32840(v159);
  sub_22BB6BEAC();
  sub_22BB385C0();

  return sub_22BD672A4(v160, v161, v162);
}

uint64_t sub_22BD72114(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD721A4()
{
  v1 = sub_22BB35760();
  v2(v1);
  sub_22BB31F70();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22BD721F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BD722A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionExecutionResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BD72308(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BB30ED8();
  v4 = sub_22BB31F54();
  v5(v4);
  return a2;
}

uint64_t sub_22BD72388(uint64_t a1)
{
  result = sub_22BDB9B54();
  if (v2 <= 0x3F)
  {
    result = sub_22BD7240C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22BD7240C()
{
  result = qword_27D8E6720;
  if (!qword_27D8E6720)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8E6720);
  }

  return result;
}

uint64_t sub_22BD72490(uint64_t a1)
{
  result = sub_22BDB8F54();
  if (v2 <= 0x3F)
  {
    result = sub_22BDB43E4();
    if (v3 <= 0x3F)
    {
      result = sub_22BDB9774();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BD7252C(uint64_t a1)
{
  result = sub_22BD721F4(&qword_27D8E66E8, type metadata accessor for EventScopedProgressUpdateHandler, &unk_22BDCE814);
  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_22BD725E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a1;

  return sub_22BB8B8A0((v8 + 56), a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22BD726E8(uint64_t (*a1)(uint64_t *))
{
  sub_22BB37860();
  result = sub_22BBC20A8(v3);
  v5 = result;
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      return v5 != v7;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2318A5340](v6, v2);
      v8 = result;
    }

    else
    {
      if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v2 + 8 * v6 + 32);
    }

    if (__OFADD__(v7, 1))
    {
      break;
    }

    v11 = v8;
    v9 = a1(&v11);

    if (!v1)
    {
      v6 = v7 + 1;
      if ((v9 & 1) == 0)
      {
        continue;
      }
    }

    return v5 != v7;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

BOOL sub_22BD7283C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

BOOL sub_22BD7291C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_22BB37860();
  v8 = v7;
  v9 = 0;
  v11 = *(v10 + 16);
  do
  {
    v12 = v9;
    if (v11 == v9)
    {
      break;
    }

    v13 = *(a4(0) - 8);
    v14 = v8(v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12);
    if (v4)
    {
      break;
    }

    v9 = v12 + 1;
  }

  while ((v14 & 1) == 0);
  return v11 != v12;
}

__n128 SessionPersistenceManager.init(id:transactionStream:transactionStreamFilters:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22BB35D58();
  sub_22BB6A1A8(v8, v10, v9);
  v11 = [BiomeLibrary() IntelligenceFlow];
  swift_unknownObjectRelease();
  v12 = [v11 Transcript];
  swift_unknownObjectRelease();
  v13 = [v12 Datastream];
  swift_unknownObjectRelease();
  v14 = [v13 source];

  sub_22BB6B8A8(a1);
  v15 = type metadata accessor for SessionPersistenceManager(0);
  *(a4 + v15[5]) = v14;
  v16 = a4 + v15[6];
  result = *a2;
  v18 = *(a2 + 16);
  *v16 = *a2;
  *(v16 + 16) = v18;
  *(v16 + 32) = *(a2 + 32);
  *(a4 + v15[7]) = a3;
  return result;
}

uint64_t sub_22BD72B10()
{
  sub_22BB69FEC(v0, v0[3]);
  sub_22BB371E4();
  return sub_22BDB7684();
}

uint64_t sub_22BD72B60()
{
  sub_22BB35760();
  v1 = sub_22BDB43E4();
  sub_22BB30444();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BB30574();
  v7 = v6 - v5;
  v0();
  sub_22BB31E04();
  sub_22BBBE8A4(v8, v9, MEMORY[0x277CC9628]);
  sub_22BDBB684();
  sub_22BB3A788();
  (*(v3 + 8))(v7, v1);
  return sub_22BB31F54();
}

void sub_22BD72C80(uint64_t a1)
{
  sub_22BDB5664();
  if (v1 <= 0x3F)
  {
    sub_22BD72D8C();
    if (v2 <= 0x3F)
    {
      sub_22BD72DD0(319, qword_28142A2D0, &qword_27D8E6750, &qword_22BDCE8D0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22BD72DD0(319, &qword_281428840, &qword_27D8E6758, qword_22BDCE8D8, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_22BD72D8C()
{
  result = qword_281428760;
  if (!qword_281428760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281428760);
  }

  return result;
}

void sub_22BD72DD0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22BBEB2E0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for IFRequestTelemetryFilterOnlyPRToExecutorAndRG(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22BD72F18()
{
  sub_22BB3A794();
  sub_22BB69FEC(v0, v0[3]);
  v1 = sub_22BB52ED4();
  v2 = sub_22BB37580(v1);
  *v2 = v3;
  v4 = sub_22BB33E88(v2);

  return v6(v4);
}

uint64_t sub_22BD72FD0()
{
  sub_22BB2F0D4();
  sub_22BB36984(v0, v1, v2, v3, &off_2818A80F8, v4);
  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BD73034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v44 = a1;
  v39 = a4;
  v41 = a2;
  v43 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BB30444();
  v42 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v38 - v10;
  v40 = sub_22BDB9C14();
  sub_22BB30444();
  v38 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22BB37C88();
  v17(v16);
  v18 = sub_22BB37C88();
  v20 = v19(v18);
  v21 = sub_22BB37C88();
  v22(v21);
  v23 = *(a5 + 72);
  v45[3] = swift_getAssociatedTypeWitness();
  v45[4] = swift_getAssociatedConformanceWitness();
  sub_22BB8B8A0(v45, v24, v25, v26, v27, v28, v29, v30);
  v31 = sub_22BB37C88();
  v23(v31);
  v32 = sub_22BB37C88();
  v33(v32);
  v34 = v39;
  v35 = *(v39 + 24);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35(v44, v15, v20, v46, v45, v11, AssociatedTypeWitness, AssociatedConformanceWitness, v41, v34);

  (*(v42 + 8))(v11, AssociatedTypeWitness);
  sub_22BB32FA4(v46);
  (*(v38 + 8))(v15, v40);
  return sub_22BB32FA4(v45);
}

uint64_t sub_22BD73314()
{
  sub_22BB2F0D4();
  sub_22BB36984(v0, v1, v2, v3, &off_2818A8138, v4);
  sub_22BB2F09C();

  return v5();
}

uint64_t sub_22BD73378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a3;
  v5[11] = a5;
  v5[8] = a1;
  v5[9] = a2;
  v7 = sub_22BDB9B14();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_22BDB8774();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v9 = sub_22BDB77D4();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v10 = sub_22BDB80D4();
  v5[21] = v10;
  v5[22] = *(v10 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v11 = *(sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420) - 8);
  v5[27] = v11;
  v5[28] = *(v11 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v5[31] = swift_task_alloc();
  v12 = sub_22BDB9774();
  v5[32] = v12;
  v5[33] = *(v12 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v13 = sub_22BDB9B54();
  v5[36] = v13;
  v5[37] = *(v13 - 8);
  v5[38] = swift_task_alloc();
  v5[5] = type metadata accessor for SessionCoordinatorResponseCallback(0);
  v5[6] = &off_283F80930;
  v5[2] = a4;

  return MEMORY[0x2822009F8](sub_22BD73710, 0, 0);
}

uint64_t sub_22BD73710()
{
  sub_22BB38EBC();
  sub_22BDB9744();
  v7 = sub_22BB58B3C();
  v6(v7);
  sub_22BB8EC88(v5, v4, v1);
  sub_22BB69B78();
  sub_22BB36E88();
  swift_unknownObjectRelease();
  result = sub_22BB3AA28(v3, 1, v0);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_22BB30E1C();
    v10(v9);
    sub_22BDB96A4();
    v11 = sub_22BDB9744();
    v12 = sub_22BB30AE4();
    v6(v12);
    *(v2 + 56) = v11;
    sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
    sub_22BB8F3FC();
    sub_22BDB90D4();

    v13 = swift_task_alloc();
    *(v2 + 312) = v13;
    *v13 = v2;
    sub_22BB373C0(v13);

    return sub_22BD31F98();
  }

  return result;
}

uint64_t sub_22BD739A0()
{
  v2 = v0[40];
  v3 = v0[29];
  v5 = v0[27];
  v4 = v0[28];
  v6 = sub_22BBDB920();
  sub_22BB69338();
  v7 = swift_allocObject();
  sub_22BB53E14(v7);
  v8 = *v6;
  sub_22BD790CC(v2, sub_22BD741FC, v1);

  v9 = sub_22BB324FC();
  sub_22BB58728(v9, &qword_27D8E6518, &unk_22BDCE420);
  (*(v3 + 8))(v6, v1);
  sub_22BB32FA4(v0 + 2);
  v6, v10, v11, v12, v13, v14, v15, v16, v103, v116, v129, v142, v155, v168, v181, v194, v207, v220, v233, v246, v259, v272, v285, v0, v310;
  &qword_27D8E6518, v17, v18, v19, v20, v21, v22, v23, v104, v117, v130, v143, v156, v169, v182, v195, v208, v221, v234, v247, v260, v273, v286, v298, v311;
  &unk_22BDCE420, v24, v25, v26, v27, v28, v29, v30, v105, v118, v131, v144, v157, v170, v183, v196, v209, v222, v235, v248, v261, v274, v287, v299, v312;
  v8, v31, v32, v33, v34, v35, v36, v37, v106, v119, v132, v145, v158, v171, v184, v197, v210, v223, v236, v249, v262, v275, v288, v300, v313;
  v4, v38, v39, v40, v41, v42, v43, v44, v107, v120, v133, v146, v159, v172, v185, v198, v211, v224, v237, v250, v263, v276, v289, v301, v314;
  v5, v45, v46, v47, v48, v49, v50, v51, v108, v121, v134, v147, v160, v173, v186, v199, v212, v225, v238, v251, v264, v277, v290, v302, v315;
  v2, v52, v53, v54, v55, v56, v57, v58, v109, v122, v135, v148, v161, v174, v187, v200, v213, v226, v239, v252, v265, v278, v291, v303, v316;
  v123, v59, v60, v61, v62, v63, v64, v65, v110, v123, v136, v149, v162, v175, v188, v201, v214, v227, v240, v253, v266, v279, v292, v304, v317;
  v137, v66, v67, v68, v69, v70, v71, v72, v111, v124, v137, v150, v163, v176, v189, v202, v215, v228, v241, v254, v267, v280, v293, v305, v318;
  v151, v73, v74, v75, v76, v77, v78, v79, v112, v125, v138, v151, v164, v177, v190, v203, v216, v229, v242, v255, v268, v281, v294, v306, v319;
  v165, v80, v81, v82, v83, v84, v85, v86, v113, v126, v139, v152, v165, v178, v191, v204, v217, v230, v243, v256, v269, v282, v295, v307, v320;
  v179, v87, v88, v89, v90, v91, v92, v93, v114, v127, v140, v153, v166, v179, v192, v205, v218, v231, v244, v257, v270, v283, v296, v308, v321;
  v193, v94, v95, v96, v97, v98, v99, v100, v115, v128, v141, v154, v167, v180, v193, v206, v219, v232, v245, v258, v271, v284, v297, v309, v322;
  sub_22BB2F09C();

  return v101();
}

uint64_t sub_22BD73B34()
{
  v3 = sub_22BB37870();
  v4(v3);
  v5 = sub_22BB38250();
  v6(v5);
  sub_22BB30AE4();
  v7 = sub_22BDBAC14();
  v9 = v8;
  sub_22BDB63D4();

  v10 = sub_22BDB77C4();
  v11 = sub_22BDBB114();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[19];
  v14 = v0[20];
  v15 = v0[18];
  if (v12)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v285 = v2;
    *(v1 + 4) = sub_22BB370E8(4.8149e-34, v2, v16, v17, v18, v19, v20, v21, v22, v151, v167, v181, v194, v207, v220, v233, v246, v259, v272);
    sub_22BB3B450(&dword_22BB2C000, v23, v24, "Planner failed to process new Transcript: %s");
    sub_22BB32FA4(v2);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  (*(v13 + 8))(v14, v15);
  sub_22BB32D18();
  v26 = v25[28];
  v152 = v25[29];
  v27 = sub_22BB69FEC(v25 + 25, v26);
  v28 = sub_22BDB9C64();
  v10->isa = (v13 + 8);
  v10[1].isa = v2;
  (*(v7 + 104))(v10, *MEMORY[0x277D1DEA8], v9);
  v29 = sub_22BDB9C74();
  sub_22BB94EB8(v29, v30, v31, v32, v33, v34, v35, v36, v152);

  v37 = sub_22BBDB920();
  v38 = sub_22BBE6DE0(&qword_27D8E5FD0, &unk_22BDCEA40);
  v46 = sub_22BB36344(v38, v39, v40, v41, v42, v43, v44, v45, v153, v167);
  v47 = sub_22BB3440C(v46, xmmword_22BDBCBD0);
  v48(v47);
  v49 = *MEMORY[0x277D1DC50];
  sub_22BDB8294();
  sub_22BB2F330();
  (*(v50 + 104))(v1, v49);
  v51 = sub_22BB2F5E8();
  v52(v51);
  v53 = v233;
  sub_22BDB9A54();
  v54 = sub_22BB3A310();
  v55(v54);
  sub_22BB366C4();

  v56 = sub_22BB542E0();
  v57(v56);
  sub_22BB31E1C();
  sub_22BB58728(v233, &qword_27D8E6518, &unk_22BDCE420);
  (v27[1])(v28, v26);
  sub_22BB32FA4(v0 + 2);
  v28, v58, v59, v60, v61, v62, v63, v64, v154, v168, v181, v194, v207, v220, v233, v246, v259, v272, v285, v298, v311, v324, v337, v350, v363;
  v1, v65, v66, v67, v68, v69, v70, v71, v155, v169, v182, v195, v208, v221, v234, v247, v260, v273, v286, v299, v312, v325, v338, v351, v364;
  v2, v72, v73, v74, v75, v76, v77, v78, v156, v170, v183, v196, v209, v222, v235, v248, v261, v274, v287, v300, v313, v326, v339, v352, v365;
  v9, v79, v80, v81, v82, v83, v84, v85, v157, v171, v184, v197, v210, v223, v236, v249, v262, v275, v288, v301, v314, v327, v340, v353, v366;
  v53, v86, v87, v88, v89, v90, v91, v92, v158, v172, v185, v198, v211, v224, v237, v250, v263, v276, v289, v302, v315, v328, v341, v354, v367;
  v37, v93, v94, v95, v96, v97, v98, v99, v159, v173, v186, v199, v212, v225, v238, v251, v264, v277, v290, v303, v316, v329, v342, v355, v368;
  v46, v100, v101, v102, v103, v104, v105, v106, v160, v174, v187, v200, v213, v226, v239, v252, v265, v278, v291, v304, v317, v330, v343, v356, v369;
  v214, v107, v108, v109, v110, v111, v112, v113, v161, v175, v188, v201, v214, v227, v240, v253, v266, v279, v292, v305, v318, v331, v344, v357, v370;
  v228, v114, v115, v116, v117, v118, v119, v120, v162, v176, v189, v202, v215, v228, v241, v254, v267, v280, v293, v306, v319, v332, v345, v358, v371;
  v242, v121, v122, v123, v124, v125, v126, v127, v163, v177, v190, v203, v216, v229, v242, v255, v268, v281, v294, v307, v320, v333, v346, v359, v372;
  v256, v128, v129, v130, v131, v132, v133, v134, v164, v178, v191, v204, v217, v230, v243, v256, v269, v282, v295, v308, v321, v334, v347, v360, v373;
  v270, v135, v136, v137, v138, v139, v140, v141, v165, v179, v192, v205, v218, v231, v244, v257, v270, v283, v296, v309, v322, v335, v348, v361, v374;
  v284, v142, v143, v144, v145, v146, v147, v148, v166, v180, v193, v206, v219, v232, v245, v258, v271, v284, v297, v310, v323, v336, v349, v362, v375;
  sub_22BB2F09C();

  return v149();
}

uint64_t sub_22BD73E70()
{
  v3 = sub_22BB37870();
  v4(v3);
  v5 = sub_22BB38250();
  v6(v5);
  sub_22BB30AE4();
  v7 = sub_22BDBAC14();
  v9 = v8;
  sub_22BDB63D4();

  v10 = sub_22BDB77C4();
  v11 = sub_22BDBB114();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[19];
  v14 = v0[20];
  v15 = v0[18];
  if (v12)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v285 = v2;
    *(v1 + 4) = sub_22BB370E8(4.8149e-34, v2, v16, v17, v18, v19, v20, v21, v22, v151, v167, v181, v194, v207, v220, v233, v246, v259, v272);
    sub_22BB3B450(&dword_22BB2C000, v23, v24, "Planner failed to process new Transcript: %s");
    sub_22BB32FA4(v2);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  (*(v13 + 8))(v14, v15);
  sub_22BB32D18();
  v26 = v25[18];
  v152 = v25[19];
  v27 = sub_22BB69FEC(v25 + 15, v26);
  v28 = sub_22BDB9C64();
  v10->isa = (v13 + 8);
  v10[1].isa = v2;
  (*(v7 + 104))(v10, *MEMORY[0x277D1DEA8], v9);
  v29 = sub_22BDB9C74();
  sub_22BB94EB8(v29, v30, v31, v32, v33, v34, v35, v36, v152);

  v37 = sub_22BBDB920();
  v38 = sub_22BBE6DE0(&qword_27D8E5FD0, &unk_22BDCEA40);
  v46 = sub_22BB36344(v38, v39, v40, v41, v42, v43, v44, v45, v153, v167);
  v47 = sub_22BB3440C(v46, xmmword_22BDBCBD0);
  v48(v47);
  v49 = *MEMORY[0x277D1DC50];
  sub_22BDB8294();
  sub_22BB2F330();
  (*(v50 + 104))(v1, v49);
  v51 = sub_22BB2F5E8();
  v52(v51);
  v53 = v233;
  sub_22BDB9A54();
  v54 = sub_22BB3A310();
  v55(v54);
  sub_22BB366C4();

  v56 = sub_22BB542E0();
  v57(v56);
  sub_22BB31E1C();
  sub_22BB58728(v233, &qword_27D8E6518, &unk_22BDCE420);
  (v27[1])(v28, v26);
  sub_22BB32FA4(v0 + 2);
  v28, v58, v59, v60, v61, v62, v63, v64, v154, v168, v181, v194, v207, v220, v233, v246, v259, v272, v285, v298, v311, v324, v337, v350, v363;
  v1, v65, v66, v67, v68, v69, v70, v71, v155, v169, v182, v195, v208, v221, v234, v247, v260, v273, v286, v299, v312, v325, v338, v351, v364;
  v2, v72, v73, v74, v75, v76, v77, v78, v156, v170, v183, v196, v209, v222, v235, v248, v261, v274, v287, v300, v313, v326, v339, v352, v365;
  v9, v79, v80, v81, v82, v83, v84, v85, v157, v171, v184, v197, v210, v223, v236, v249, v262, v275, v288, v301, v314, v327, v340, v353, v366;
  v53, v86, v87, v88, v89, v90, v91, v92, v158, v172, v185, v198, v211, v224, v237, v250, v263, v276, v289, v302, v315, v328, v341, v354, v367;
  v37, v93, v94, v95, v96, v97, v98, v99, v159, v173, v186, v199, v212, v225, v238, v251, v264, v277, v290, v303, v316, v329, v342, v355, v368;
  v46, v100, v101, v102, v103, v104, v105, v106, v160, v174, v187, v200, v213, v226, v239, v252, v265, v278, v291, v304, v317, v330, v343, v356, v369;
  v214, v107, v108, v109, v110, v111, v112, v113, v161, v175, v188, v201, v214, v227, v240, v253, v266, v279, v292, v305, v318, v331, v344, v357, v370;
  v228, v114, v115, v116, v117, v118, v119, v120, v162, v176, v189, v202, v215, v228, v241, v254, v267, v280, v293, v306, v319, v332, v345, v358, v371;
  v242, v121, v122, v123, v124, v125, v126, v127, v163, v177, v190, v203, v216, v229, v242, v255, v268, v281, v294, v307, v320, v333, v346, v359, v372;
  v256, v128, v129, v130, v131, v132, v133, v134, v164, v178, v191, v204, v217, v230, v243, v256, v269, v282, v295, v308, v321, v334, v347, v360, v373;
  v270, v135, v136, v137, v138, v139, v140, v141, v165, v179, v192, v205, v218, v231, v244, v257, v270, v283, v296, v309, v322, v335, v348, v361, v374;
  v284, v142, v143, v144, v145, v146, v147, v148, v166, v180, v193, v206, v219, v232, v245, v258, v271, v284, v297, v310, v323, v336, v349, v362, v375;
  sub_22BB2F09C();

  return v149();
}