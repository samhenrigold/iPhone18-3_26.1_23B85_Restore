uint64_t sub_22C43E54C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  v9 = *MEMORY[0x277D1D7C8];
  (*(v5 + 8))(v7, v4);
  if (v8 == v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_22C90750C();
    *(v10 + 24) = v11;
    *a2 = v10;
    (*(v5 + 104))(a2, v8, v4);
    v12 = a2;
    v13 = 0;
  }

  else
  {
    v12 = a2;
    v13 = 1;
  }

  return sub_22C36C640(v12, v13, 1, v4);
}

uint64_t sub_22C43E6DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C9063DC();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C903F7C();
  v26 = *(v5 + 16);
  v26(v7, a1, v4);
  v11 = sub_22C9063CC();
  v12 = sub_22C90AADC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a2;
    v14 = v13;
    v23 = swift_slowAlloc();
    v29 = v23;
    *v14 = 136380675;
    sub_22C43EDF4();
    v15 = sub_22C90B47C();
    v25 = a1;
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = sub_22C36F9F4(v15, v17, &v29);
    a1 = v25;

    *(v14 + 4) = v18;
    _os_log_impl(&dword_22C366000, v11, v12, "❗️ [PromptMapperResolver] Unknown Expr type: %{private}s - skipping transformations. Please file a radar on Full Planner", v14, 0xCu);
    v19 = v23;
    sub_22C36FF94(v23);
    MEMORY[0x2318B9880](v19, -1, -1);
    v20 = v14;
    a2 = v24;
    MEMORY[0x2318B9880](v20, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  (*(v27 + 8))(v10, v28);
  return (v26)(a2, a1, v4);
}

void sub_22C43E9A0()
{
  sub_22C370030();
  v3 = v2;
  v30 = v4;
  sub_22C9014CC();
  sub_22C369824();
  v27 = v6;
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v29 = v7;
  v8 = sub_22C3A5908(&qword_27D9BC288, &qword_22C912620);
  v9 = sub_22C369914(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  sub_22C36D6DC();
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_22C907F9C();
  sub_22C369824();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v19 = *(v0 + 24);
  if (*(v19 + 16))
  {

    sub_22C628874();
    if (v21)
    {
      (*(v15 + 16))(v18, *(v19 + 56) + *(v15 + 72) * v20, v13);

      v22 = sub_22C379FC8();
      v23(v22);
      sub_22C36C640(v30, 0, 1, v13);
      goto LABEL_7;
    }
  }

  sub_22C90712C();
  if (!v1)
  {
    (*(v27 + 16))(v29, v3, v28);
    v24 = sub_22C36CC9C();
    sub_22C43ECAC(v24, v25);
    swift_beginAccess();
    sub_22C602E50();
    swift_endAccess();
    sub_22C43ED1C(v12, v30);
  }

LABEL_7:
  sub_22C36FB20();
}

uint64_t sub_22C43EC2C()
{

  return v0;
}

uint64_t sub_22C43EC54()
{
  sub_22C43EC2C();

  return swift_deallocClassInstance();
}

uint64_t sub_22C43ECAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC288, &qword_22C912620);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C43ED1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC288, &qword_22C912620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C43ED8C(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C43EDF4()
{
  result = qword_27D9BC188;
  if (!qword_27D9BC188)
  {
    sub_22C902D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC188);
  }

  return result;
}

uint64_t sub_22C43EE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a2;
  v74 = a3;
  v71 = sub_22C902D0C();
  v82 = *(v71 - 8);
  v4 = MEMORY[0x28223BE20](v71);
  v80 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v55 - v6;
  v56 = sub_22C902C5C();
  v55 = *(v56 - 1);
  MEMORY[0x28223BE20](v56);
  v70 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C902C4C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  v14 = sub_22C902C9C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = &v55 - v19;
  sub_22C3A5908(&qword_27D9BC240, &unk_22C9126E0);
  result = sub_22C90B1CC();
  v21 = v14;
  v22 = result;
  v23 = 0;
  v72 = a1;
  v24 = *(a1 + 64);
  v58 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v57 = (v25 + 63) >> 6;
  v63 = v9 + 16;
  v64 = v15 + 16;
  v75 = v15;
  v65 = (v82 + 8);
  v66 = (v9 + 8);
  v60 = result + 64;
  v69 = v9;
  v59 = (v9 + 32);
  v68 = result;
  v79 = v8;
  v62 = v13;
  if (v27)
  {
    while (1)
    {
      v28 = v21;
      v29 = __clz(__rbit64(v27));
      v76 = (v27 - 1) & v27;
LABEL_10:
      v82 = v29 | (v23 << 6);
      v32 = v72;
      v33 = v75;
      v34 = v82;
      v35 = *(v75 + 72) * v82;
      v36 = v67;
      (*(v75 + 16))(v67, *(v72 + 48) + v35, v28);
      v37 = *(v32 + 56);
      v38 = *(v69 + 16);
      v77 = *(v69 + 72) * v34;
      v39 = v62;
      v38(v62, v37 + v77, v79);
      v40 = *(v33 + 32);
      v40(v18, v36, v28);
      v41 = v70;
      sub_22C902C3C();
      v42 = v80;
      sub_22C902C1C();
      v43 = v81;
      sub_22C439F24(v42, v73, v74, v44, v45, v46, v47, v48, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v81 = v43;
      if (v43)
      {
        break;
      }

      (*v65)(v80, v71);
      v49 = v61;
      sub_22C902C2C();
      v50 = v79;
      (*v66)(v39, v79);
      *(v60 + ((v82 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v82;
      v51 = *(v68 + 48) + v35;
      v22 = v68;
      v40(v51, v18, v28);
      result = (*v59)(*(v22 + 56) + v77, v49, v50);
      v52 = *(v22 + 16);
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_17;
      }

      v21 = v28;
      *(v22 + 16) = v54;
      v27 = v76;
      if (!v76)
      {
        goto LABEL_5;
      }
    }

    (*v65)(v80, v71);
    (*(v55 + 8))(v41, v56);
    v22 = v68;

    (*(v75 + 8))(v18, v28);
    (*v66)(v39, v79);
    return v22;
  }

  else
  {
LABEL_5:
    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v57)
      {
        return v22;
      }

      v31 = *(v58 + 8 * v23);
      ++v30;
      if (v31)
      {
        v28 = v21;
        v29 = __clz(__rbit64(v31));
        v76 = (v31 - 1) & v31;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C43F46C(uint64_t a1, uint64_t a2)
{
  v81 = sub_22C902D0C();
  v90 = *(v81 - 8);
  v4 = MEMORY[0x28223BE20](v81);
  v89 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v62 - v6;
  v64 = sub_22C902C5C();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v80 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C902C4C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = sub_22C902C9C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v77 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v76 = &v62 - v18;
  sub_22C3A5908(&qword_27D9BC240, &unk_22C9126E0);
  v19 = sub_22C90B1CC();
  v20 = a2;
  v21 = v13;
  v22 = v19;
  v82 = a1;
  v23 = *(a1 + 64);
  v66 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v65 = (v24 + 63) >> 6;
  v72 = v9 + 16;
  v73 = v15 + 16;
  v83 = v15;
  v71 = v15 + 32;
  v74 = (v90 + 8);
  v75 = (v9 + 8);
  v68 = v19 + 64;
  v79 = v9;
  v67 = (v9 + 32);
  v90 = v20;

  v28 = 0;
  v78 = v22;
  v70 = v8;
  if (v26)
  {
    while (1)
    {
      v29 = v14;
      v30 = __clz(__rbit64(v26));
      v84 = (v26 - 1) & v26;
LABEL_10:
      v33 = v30 | (v28 << 6);
      v35 = v82;
      v34 = v83;
      v36 = *(v82 + 48);
      v37 = *(v83 + 16);
      v86 = *(v83 + 72) * v33;
      v38 = v76;
      v37(v76, v36 + v86, v29);
      v39 = *(v35 + 56);
      v40 = *(v79 + 72);
      v87 = v33;
      v41 = v40 * v33;
      v42 = *(v79 + 16);
      v85 = v41;
      v42(v21, v39 + v41, v8);
      v43 = *(v34 + 32);
      v44 = v77;
      v43(v77, v38, v29);
      v45 = v90;
      swift_bridgeObjectRetain_n();
      v46 = v21;
      v47 = v80;
      sub_22C902C3C();
      v48 = v89;
      sub_22C902C1C();
      v49 = v91;
      sub_22C43B5B0(v48, v45, v50, v51, v52, v53, v54, v55, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
      v91 = v49;
      if (v49)
      {
        break;
      }

      (*v74)(v89, v81);
      v56 = v69;
      sub_22C902C2C();

      v57 = v44;
      v8 = v70;
      (*v75)(v46, v70);
      *(v68 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
      v58 = v78;
      v43((*(v78 + 48) + v86), v57, v29);
      v22 = v58;
      result = (*v67)(*(v58 + 56) + v85, v56, v8);
      v59 = *(v58 + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_17;
      }

      v21 = v46;
      v14 = v29;
      *(v22 + 16) = v61;
      v26 = v84;
      if (!v84)
      {
        goto LABEL_5;
      }
    }

    (*v74)(v89, v81);
    (*(v63 + 8))(v47, v64);
    v22 = v78;

    (*(v83 + 8))(v44, v29);
    (*v75)(v46, v70);
LABEL_14:
    swift_bridgeObjectRelease_n();
    return v22;
  }

  else
  {
LABEL_5:
    v31 = v28;
    while (1)
    {
      v28 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v28 >= v65)
      {
        goto LABEL_14;
      }

      v32 = *(v66 + 8 * v28);
      ++v31;
      if (v32)
      {
        v29 = v14;
        v30 = __clz(__rbit64(v32));
        v84 = (v32 - 1) & v32;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C43FAEC(uint64_t a1)
{
  v76 = sub_22C902D0C();
  v81 = *(v76 - 8);
  v2 = MEMORY[0x28223BE20](v76);
  v84 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v82 = &v60 - v4;
  v61 = sub_22C902C5C();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v75 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22C902C4C();
  v6 = *(v83 - 8);
  v7 = MEMORY[0x28223BE20](v83);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - v9;
  v11 = sub_22C902C9C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v60 - v16;
  sub_22C3A5908(&qword_27D9BC240, &unk_22C9126E0);
  result = sub_22C90B1CC();
  v18 = v11;
  v19 = result;
  v20 = 0;
  v77 = a1;
  v21 = a1;
  v22 = v10;
  v23 = *(v21 + 64);
  v63 = v21 + 64;
  v24 = 1 << *(v21 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v62 = (v24 + 63) >> 6;
  v67 = v6 + 16;
  v68 = v12 + 16;
  v78 = v12;
  v69 = (v81 + 8);
  v70 = (v6 + 8);
  v73 = result;
  v74 = v6;
  v64 = (v6 + 32);
  v65 = result + 64;
  v72 = v15;
  if (v26)
  {
    while (1)
    {
      v27 = v18;
      v28 = __clz(__rbit64(v26));
      v79 = (v26 - 1) & v26;
LABEL_10:
      v31 = v28 | (v20 << 6);
      v32 = v77;
      v33 = v78;
      v34 = *(v77 + 48);
      v35 = *(v78 + 16);
      v81 = *(v78 + 72) * v31;
      v36 = v71;
      v35(v71, v34 + v81, v27);
      v37 = *(v32 + 56);
      v38 = *(v74 + 16);
      v80 = *(v74 + 72) * v31;
      v38(v22, v37 + v80, v83);
      v39 = *(v33 + 32);
      v40 = v72;
      v39(v72, v36, v27);
      v41 = v22;
      v42 = v75;
      sub_22C902C3C();
      v43 = v84;
      sub_22C902C1C();
      v44 = v85;
      sub_22C43CE88(v43, v45, v46, v47, v48, v49, v50, v51, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
      v85 = v44;
      if (v44)
      {
        break;
      }

      (*v69)(v84, v76);
      v52 = v66;
      sub_22C902C2C();
      v53 = v31;
      v54 = v83;
      (*v70)(v41, v83);
      *(v65 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      v55 = v73;
      v39((*(v73 + 48) + v81), v40, v27);
      v56 = v52;
      v19 = v55;
      result = (*v64)(*(v55 + 56) + v80, v56, v54);
      v57 = *(v55 + 16);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (v58)
      {
        goto LABEL_17;
      }

      v22 = v41;
      v18 = v27;
      *(v19 + 16) = v59;
      v26 = v79;
      if (!v79)
      {
        goto LABEL_5;
      }
    }

    (*v69)(v84, v76);
    (*(v60 + 8))(v42, v61);
    v19 = v73;

    (*(v78 + 8))(v40, v27);
    (*v70)(v41, v83);
    return v19;
  }

  else
  {
LABEL_5:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v62)
      {
        return v19;
      }

      v30 = *(v63 + 8 * v20);
      ++v29;
      if (v30)
      {
        v27 = v18;
        v28 = __clz(__rbit64(v30));
        v79 = (v30 - 1) & v30;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C4400F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a2;
  v48 = a3;
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - v9;
  sub_22C3A5908(&qword_27D9BC338, &qword_22C9126D8);
  result = sub_22C90B1CC();
  v11 = 0;
  v45 = v5;
  v46 = a1;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v43 = v5 + 16;
  v44 = (v5 + 8);
  v50 = result;
  v42 = result + 64;
  v40 = v13;
  v41 = (v5 + 32);
  while (1)
  {
    v19 = v49;
    if (!v17)
    {
      v22 = v11;
      while (1)
      {
        v11 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v11 >= v18)
        {
          return v50;
        }

        v23 = *(v40 + 8 * v11);
        ++v22;
        if (v23)
        {
          v20 = v8;
          v21 = __clz(__rbit64(v23));
          v51 = (v23 - 1) & v23;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v20 = v8;
    v21 = __clz(__rbit64(v17));
    v51 = (v17 - 1) & v17;
LABEL_11:
    v24 = v21 | (v11 << 6);
    v25 = (*(v46 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v45 + 72) * v24;
    (*(v45 + 16))(v49, *(v46 + 56) + v28, v4);

    v29 = v52;
    sub_22C439F24(v19, v47, v48, v30, v31, v32, v33, v34, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    v52 = v29;
    if (v29)
    {
      break;
    }

    (*v44)(v19, v4);
    *(v42 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v35 = v50;
    v36 = (*(v50 + 48) + 16 * v24);
    *v36 = v26;
    v36[1] = v27;
    result = (*v41)(*(v35 + 56) + v28, v20, v4);
    v37 = *(v35 + 16);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_17;
    }

    v8 = v20;
    *(v35 + 16) = v39;
    v17 = v51;
  }

  (*v44)(v19, v4);
  return v50;
}

uint64_t sub_22C4403D8(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 3:
    case 4:
    case 5:
    case 6:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C440418(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v45 - v9;
  sub_22C3A5908(&qword_27D9BC338, &qword_22C9126D8);
  v10 = sub_22C90B1CC();
  v11 = v10;
  v52 = v5;
  v53 = a1;
  v14 = *(a1 + 64);
  v13 = a1 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v49 = v5 + 16;
  v50 = (v5 + 8);
  v48 = v10 + 64;
  v46 = v13;
  v47 = (v5 + 32);
  v55 = a2;

  v20 = 0;
  v51 = v11;
  while (1)
  {
    v21 = v54;
    if (!v17)
    {
      v24 = v20;
      while (1)
      {
        v20 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v20 >= v18)
        {
          goto LABEL_15;
        }

        v25 = *(v46 + 8 * v20);
        ++v24;
        if (v25)
        {
          v22 = v8;
          v23 = __clz(__rbit64(v25));
          v56 = (v25 - 1) & v25;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v22 = v8;
    v23 = __clz(__rbit64(v17));
    v56 = (v17 - 1) & v17;
LABEL_11:
    v26 = v23 | (v20 << 6);
    v27 = (*(v53 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v52 + 72) * v26;
    (*(v52 + 16))(v54, *(v53 + 56) + v30, v4);
    v31 = v55;

    v32 = v31;
    v33 = v57;
    sub_22C43B5B0(v21, v32, v34, v35, v36, v37, v38, v39, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    v57 = v33;
    if (v33)
    {
      break;
    }

    (*v50)(v21, v4);
    *(v48 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v40 = v51;
    v41 = (*(v51 + 48) + 16 * v26);
    v11 = v51;
    *v41 = v28;
    v41[1] = v29;
    result = (*v47)(*(v40 + 56) + v30, v22, v4);
    v42 = *(v11 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_17;
    }

    v8 = v22;
    *(v11 + 16) = v44;
    v17 = v56;
  }

  v11 = v51;

  (*v50)(v21, v4);
LABEL_15:
  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_22C440730(uint64_t a1)
{
  v2 = sub_22C902D0C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - v7;
  sub_22C3A5908(&qword_27D9BC338, &qword_22C9126D8);
  result = sub_22C90B1CC();
  v9 = 0;
  v45 = v3;
  v46 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v43 = v3 + 16;
  v44 = (v3 + 8);
  v48 = result;
  v42 = result + 64;
  v40 = v11;
  v41 = (v3 + 32);
  while (1)
  {
    v17 = v47;
    if (!v15)
    {
      v20 = v9;
      while (1)
      {
        v9 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v9 >= v16)
        {
          return v48;
        }

        v21 = *(v40 + 8 * v9);
        ++v20;
        if (v21)
        {
          v18 = v6;
          v19 = __clz(__rbit64(v21));
          v49 = (v21 - 1) & v21;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v18 = v6;
    v19 = __clz(__rbit64(v15));
    v49 = (v15 - 1) & v15;
LABEL_11:
    v22 = v19 | (v9 << 6);
    v23 = (*(v46 + 48) + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = *(v45 + 72) * v22;
    (*(v45 + 16))(v47, *(v46 + 56) + v26, v2);

    v27 = v51;
    sub_22C43CE88(v17, v28, v29, v30, v31, v32, v33, v34, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
    v51 = v27;
    if (v27)
    {
      break;
    }

    (*v44)(v17, v2);
    *(v42 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v35 = v48;
    v36 = (*(v48 + 48) + 16 * v22);
    *v36 = v24;
    v36[1] = v25;
    result = (*v41)(*(v35 + 56) + v26, v18, v2);
    v37 = *(v35 + 16);
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_17;
    }

    v6 = v18;
    *(v35 + 16) = v39;
    v15 = v49;
  }

  (*v44)(v17, v2);
  return v48;
}

uint64_t sub_22C440A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v60 = sub_22C902D0C();
  v4 = *(v60 - 8);
  v5 = MEMORY[0x28223BE20](v60);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v50 - v8;
  v9 = sub_22C902C9C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v50 - v14;
  sub_22C3A5908(&qword_27D9BC1F8, &qword_22C9126D0);
  result = sub_22C90B1CC();
  v16 = result;
  v17 = 0;
  v64 = a1;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v51 = ((v21 + 63) >> 6);
  v52 = v19;
  v56 = v4 + 16;
  v57 = v10 + 16;
  v67 = v10;
  v58 = (v4 + 8);
  v63 = v4;
  v53 = (v4 + 32);
  v54 = result + 64;
  v61 = result;
  v55 = v10 + 32;
  if (v23)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v23));
      v68 = (v23 - 1) & v23;
LABEL_10:
      v27 = v24 | (v17 << 6);
      v28 = v64;
      v29 = *(v64 + 48);
      v30 = v67;
      v31 = *(v67 + 16);
      v70 = *(v67 + 72) * v27;
      v32 = v59;
      v31(v59, v29 + v70, v9);
      v33 = *(v28 + 56);
      v34 = v27;
      v35 = *(v63 + 16);
      v69 = *(v63 + 72) * v27;
      v36 = v9;
      v37 = v62;
      v38 = v60;
      v35(v62, v33 + v69, v60);
      v39 = *(v30 + 32);
      v39(v13, v32, v36);
      v40 = v71;
      sub_22C439F24(v37, v65, v66, v41, v42, v43, v44, v45, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
      v71 = v40;
      if (v40)
      {
        break;
      }

      (*v58)(v37, v38);
      *(v54 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v46 = v61;
      v39((*(v61 + 48) + v70), v13, v36);
      v16 = v46;
      result = (*v53)(*(v46 + 56) + v69, v7, v38);
      v47 = *(v46 + 16);
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_17;
      }

      v9 = v36;
      *(v16 + 16) = v49;
      v23 = v68;
      if (!v68)
      {
        goto LABEL_5;
      }
    }

    v16 = v61;

    (*(v67 + 8))(v13, v36);
    (*v58)(v37, v38);
    return v16;
  }

  else
  {
LABEL_5:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v17 >= v51)
      {
        return v16;
      }

      v26 = *(v52 + 8 * v17);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v68 = (v26 - 1) & v26;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C440E3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C902D0C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v55 - v9;
  v10 = sub_22C902C9C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = &v55 - v15;
  sub_22C3A5908(&qword_27D9BC1F8, &qword_22C9126D0);
  v16 = sub_22C90B1CC();
  v69 = a1;
  v70 = v11;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v56 = (v20 + 63) >> 6;
  v57 = v18;
  v62 = v5 + 16;
  v63 = v11 + 16;
  v61 = v11 + 32;
  v23 = v16;
  v64 = (v5 + 8);
  v68 = v5;
  v58 = (v5 + 32);
  v59 = v16 + 64;
  v71 = a2;
  v24 = v4;

  v26 = 0;
  v66 = v23;
  v60 = v24;
  if (v22)
  {
    while (1)
    {
      v27 = __clz(__rbit64(v22));
      v72 = (v22 - 1) & v22;
LABEL_10:
      v30 = v27 | (v26 << 6);
      v32 = v69;
      v31 = v70;
      v33 = *(v69 + 48);
      v34 = *(v70 + 16);
      v74 = *(v70 + 72) * v30;
      v35 = v65;
      v34(v65, v33 + v74, v10);
      v36 = *(v32 + 56);
      v37 = v30;
      v38 = *(v68 + 16);
      v73 = *(v68 + 72) * v30;
      v39 = v10;
      v40 = v67;
      v41 = v60;
      v38(v67, v36 + v73, v60);
      v42 = *(v31 + 32);
      v42(v14, v35, v39);
      v43 = v71;

      v44 = v43;
      v45 = v75;
      sub_22C43B5B0(v40, v44, v46, v47, v48, v49, v50, v51, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
      v75 = v45;
      if (v45)
      {
        break;
      }

      (*v64)(v40, v41);
      *(v59 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      v23 = v66;
      v42((*(v66 + 48) + v74), v14, v39);
      result = (*v58)(*(v23 + 56) + v73, v8, v41);
      v52 = *(v23 + 16);
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_17;
      }

      v10 = v39;
      *(v23 + 16) = v54;
      v22 = v72;
      if (!v72)
      {
        goto LABEL_5;
      }
    }

    v23 = v66;

    (*(v70 + 8))(v14, v39);
    (*v64)(v40, v41);
LABEL_15:
    swift_bridgeObjectRelease_n();
    return v23;
  }

  else
  {
LABEL_5:
    v28 = v26;
    while (1)
    {
      v26 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v26 >= v56)
      {
        goto LABEL_15;
      }

      v29 = *(v57 + 8 * v26);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v72 = (v29 - 1) & v29;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C44128C(uint64_t a1)
{
  v2 = sub_22C902D0C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = &v53 - v7;
  v8 = sub_22C902C9C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v61 = &v53 - v13;
  sub_22C3A5908(&qword_27D9BC1F8, &qword_22C9126D0);
  result = sub_22C90B1CC();
  v15 = 0;
  v66 = a1;
  v67 = v9;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v53 = (v19 + 63) >> 6;
  v54 = v17;
  v58 = v3 + 16;
  v59 = v9 + 16;
  v60 = (v3 + 8);
  v56 = result + 64;
  v57 = v9 + 32;
  v65 = v3;
  v55 = (v3 + 32);
  v62 = result;
  v63 = v12;
  if (v21)
  {
    while (1)
    {
      v22 = v2;
      v23 = __clz(__rbit64(v21));
      v68 = (v21 - 1) & v21;
LABEL_10:
      v26 = v23 | (v15 << 6);
      v28 = v66;
      v27 = v67;
      v29 = *(v66 + 48);
      v30 = *(v67 + 16);
      v70 = *(v67 + 72) * v26;
      v31 = v61;
      v30(v61, v29 + v70, v8);
      v32 = *(v28 + 56);
      v33 = v26;
      v34 = *(v65 + 16);
      v69 = *(v65 + 72) * v26;
      v35 = v8;
      v36 = v64;
      v34(v64, v32 + v69, v22);
      v37 = v22;
      v38 = *(v27 + 32);
      v39 = v63;
      v38(v63, v31, v35);
      v40 = v71;
      sub_22C43CE88(v36, v41, v42, v43, v44, v45, v46, v47, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
      v71 = v40;
      if (v40)
      {
        break;
      }

      (*v60)(v36, v37);
      *(v56 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      v48 = v62;
      v38((*(v62 + 48) + v70), v39, v35);
      result = (*v55)(*(v48 + 56) + v69, v6, v37);
      v49 = *(v48 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_17;
      }

      result = v48;
      v2 = v37;
      v8 = v35;
      *(result + 16) = v51;
      v21 = v68;
      if (!v68)
      {
        goto LABEL_5;
      }
    }

    v52 = v62;

    (*(v67 + 8))(v39, v35);
    (*v60)(v36, v37);
    return v52;
  }

  else
  {
LABEL_5:
    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v53)
      {
        return result;
      }

      v25 = *(v54 + 8 * v15);
      ++v24;
      if (v25)
      {
        v22 = v2;
        v23 = __clz(__rbit64(v25));
        v68 = (v25 - 1) & v25;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_22C4416E8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 152) = &a2 - a1;

  return sub_22C901FAC();
}

uint64_t sub_22C441778(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = 0;
  *(result + 32) = 4;
  *v2 = result;
  return result;
}

uint64_t sub_22C44184C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C441820();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C441874()
{
  v0 = sub_22C36BA00();
  v3 = sub_22C573484(v0, v1, v2);
  v4 = sub_22C36BA00();
  sub_22C5736FC(v4, v5, v3);

  return sub_22C36BA00();
}

uint64_t sub_22C4418CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C441874();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C4418F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C90F870;
  MEMORY[0x2318B7850](a1, a2);
  *(v8 + 32) = 0x203A74706D6F7250;
  *(v8 + 40) = 0xE800000000000000;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    a3 = 7104878;
    v9 = 0xE300000000000000;
  }

  MEMORY[0x2318B7850](a3, v9);

  *(v8 + 48) = 0x3A72616D6D617247;
  *(v8 + 56) = 0xE900000000000020;
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3F035C();
  v10 = sub_22C90A04C();

  return v10;
}

uint64_t sub_22C441A78(uint64_t *a1)
{
  v1 = *a1;

  PromptGrammar.description.getter();
  return v1;
}

uint64_t sub_22C441AD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C441A78(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_22C441B08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = a3;
  switch(a3)
  {
    case 1u:
      result = 1;
      break;
    case 2u:
      result = 2;
      break;
    case 3u:
      result = 3;
      break;
    case 4u:
      result = 5;
      break;
    case 5u:
      result = qword_22C912A50[a1];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C441B64(uint64_t a1)
{
  v2 = sub_22C442068();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C441BA0(uint64_t a1)
{
  v2 = sub_22C442068();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C441C04()
{
  v1 = v0;
  v2 = sub_22C90654C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D1DAA8] || v6 == *MEMORY[0x277D1D9F8] || v6 == *MEMORY[0x277D1DAC0] || v6 == *MEMORY[0x277D1DAA0] || v6 == *MEMORY[0x277D1DA98])
  {
    goto LABEL_15;
  }

  if (v6 == *MEMORY[0x277D1DA50] || v6 == *MEMORY[0x277D1DA78] || v6 == *MEMORY[0x277D1DA30] || v6 == *MEMORY[0x277D1DA08] || v6 == *MEMORY[0x277D1DA10] || v6 == *MEMORY[0x277D1DA70] || v6 == *MEMORY[0x277D1DA88] || v6 == *MEMORY[0x277D1DAD8] || v6 == *MEMORY[0x277D1DAD0] || v6 == *MEMORY[0x277D1DA48] || v6 == *MEMORY[0x277D1DAE8] || v6 == *MEMORY[0x277D1D9F0] || v6 == *MEMORY[0x277D1DA90] || v6 == *MEMORY[0x277D1DAC8] || v6 == *MEMORY[0x277D1DAB0] || v6 == *MEMORY[0x277D1DA80])
  {
    goto LABEL_63;
  }

  if (v6 == *MEMORY[0x277D1DAE0] || v6 == *MEMORY[0x277D1DAB8])
  {
LABEL_15:
    v11 = 0;
LABEL_64:
    (*(v3 + 8))(v5, v2);
    return v11;
  }

  if (v6 == *MEMORY[0x277D1DA18] || v6 == *MEMORY[0x277D1DA00] || v6 == *MEMORY[0x277D1DA58] || v6 == *MEMORY[0x277D1DA28])
  {
LABEL_63:
    v11 = 1;
    goto LABEL_64;
  }

  if (v6 == *MEMORY[0x277D1DA40])
  {
    return 0;
  }

  if (v6 == *MEMORY[0x277D1DA20] || v6 == *MEMORY[0x277D1DA38])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277D1DAF0] || v6 == *MEMORY[0x277D1DA68])
  {
    return 0;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C441F48(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_22C441F64(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C441FA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_22C441FE8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_22C442014()
{
  result = qword_27D9BC340;
  if (!qword_27D9BC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC340);
  }

  return result;
}

unint64_t sub_22C442068()
{
  result = qword_27D9BC348;
  if (!qword_27D9BC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC348);
  }

  return result;
}

void sub_22C4420BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  v21 = sub_22C901FAC();
  sub_22C369824();
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v23 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v23 - 8);
  sub_22C386FC8(v24, v29);
  if (sub_22C370B74(v20, 1, v21) != 1)
  {
    v25 = sub_22C382F64();
    v26(v25);
    sub_22C4515C4();
    v27 = sub_22C370120();
    v28(v27, v21);
  }

  sub_22C36FB20();
}

void sub_22C4423A8(uint64_t result, uint64_t a2)
{
  v5 = 0;
  v6 = *(result + 16);
  v7 = MEMORY[0x277D84F90];
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v8 = *(sub_22C90769C() - 8);
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    sub_22C450D6C((result + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v5), a2, &v15);
    if (v2)
    {

      return;
    }

    v10 = v15;
    ++v5;
    if ((~v15 & 0xF000000000000007) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C591324();
        v7 = v13;
      }

      v11 = *(v7 + 16);
      v12 = v11 + 1;
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_22C591324();
        v12 = v11 + 1;
        v7 = v14;
      }

      *(v7 + 16) = v12;
      *(v7 + 8 * v11 + 32) = v10;
      v5 = v9;
    }
  }
}

uint64_t sub_22C442520(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_22C3B7168(0, v1, 0);
  v2 = v34;
  result = sub_22C36C88C();
  v7 = result;
  v8 = 0;
  v9 = v3 + 64;
  v27 = v3 + 72;
  v28 = v1;
  v29 = v3 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_24;
      }

      v30 = v6;
      v31 = v8;
      v32 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = v3;
      v13 = *v11;
      v14 = v11[1];
      v15 = *(v34 + 16);
      v16 = *(v34 + 24);
      v33 = v15 + 1;
      result = swift_bridgeObjectRetain_n();
      if (v15 >= v16 >> 1)
      {
        result = sub_22C3B7168((v16 > 1), v33, 1);
      }

      *(v34 + 16) = v33;
      v17 = (v34 + 32 * v15);
      v17[4] = v13;
      v17[5] = v14;
      v17[6] = v13;
      v17[7] = v14;
      v18 = 1 << *(v12 + 32);
      if (v7 >= v18)
      {
        goto LABEL_25;
      }

      v9 = v29;
      v19 = *(v29 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v3 = v12;
      if (*(v12 + 36) != v32)
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v21 = v28;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v21 = v28;
        v24 = (v27 + 8 * v10);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_22C3A5038(v7, v32, v30 & 1);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_18;
          }
        }

        result = sub_22C3A5038(v7, v32, v30 & 1);
      }

LABEL_18:
      v8 = v31 + 1;
      if (v31 + 1 == v21)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v3 + 36);
      v7 = v18;
      if (v18 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22C442770(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v2, 0);
    v3 = v13;
    v5 = *(sub_22C901FAC() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    while (1)
    {
      sub_22C3716C0();
      sub_22C4429E4();
      if (v1)
      {
        break;
      }

      v9 = v8;
      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_22C3B63D4(v10 > 1, v11 + 1, 1);
      }

      *(v13 + 16) = v11 + 1;
      *(v13 + 8 * v11 + 32) = v9;
      v6 += v7;
      if (!--v2)
      {
        return v3;
      }
    }
  }

  return v3;
}

void *sub_22C4428C0()
{
  result = sub_22C3AD928(&unk_283FAECD0);
  off_27D9BC350 = result;
  return result;
}

void *sub_22C4428E8()
{
  result = sub_22C3AD928(&unk_283FAED20);
  off_27D9BC358 = result;
  return result;
}

void *sub_22C442910()
{
  if (qword_27D9BA628 != -1)
  {
    swift_once();
  }

  v1 = sub_22C4A02A8(v0, &unk_283FAEC30);

  if (qword_27D9BA630 != -1)
  {
    swift_once();
  }

  sub_22C3CCB98(v2);
  result = sub_22C3AD928(v1);
  off_27D9BC360 = result;
  return result;
}

void sub_22C4429E4()
{
  sub_22C370030();
  v65 = v1;
  v58 = v2;
  v59 = v3;
  v57 = v4;
  v55 = v5;
  v7 = v6;
  sub_22C90654C();
  sub_22C369824();
  v60 = v9;
  v61 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  v56 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = sub_22C901FAC();
  sub_22C369824();
  v62 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v54 - v21;
  v23 = sub_22C9070DC();
  sub_22C369824();
  v63 = v24;
  MEMORY[0x28223BE20](v25);
  sub_22C369838();
  v28 = v27 - v26;
  v29 = type metadata accessor for StatefulExpressionParser(0);
  v30 = v29[12];
  v64 = v0;
  v54 = v30;
  if (*(*(v0 + v30) + 16) && (sub_22C628274(), (v31 & 1) != 0))
  {
  }

  else
  {
    v32 = v64;
    sub_22C60539C(v7, *(v64 + v29[13]));
    if (sub_22C370B74(v22, 1, v23) == 1)
    {
      sub_22C36DD28(v22, &qword_27D9BAA18, &qword_22C911C40);
      type metadata accessor for PromptTreeIdentifier.Label(0);
      swift_allocBox();
      v34 = v33;
      v35 = swift_allocBox();
      (*(v62 + 16))(v36, v7, v14);
      *v34 = v35;
      v37 = *MEMORY[0x277D1D798];
      sub_22C902D0C();
      sub_22C36985C();
      (*(v38 + 104))(v34, v37);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      (*(v63 + 32))(v28, v22, v23);
      v39 = (v32 + v29[10]);
      v40 = v39[3];
      v41 = v39[4];
      sub_22C374168(v39, v40);
      v42 = v65;
      v43 = (*(v41 + 8))(v28, v40, v41);
      if (v42)
      {
        v45 = sub_22C385574();
        v46(v45);
      }

      else
      {
        if (v43 == 2)
        {
          sub_22C90702C();
          sub_22C442ED0(v13, v19);
          (*(v60 + 8))(v13, v61);
          sub_22C3716C0();
          sub_22C4429E4();
          v47 = sub_22C457440();
          v49(v47, v48);
        }

        else
        {
          v44 = v56;
          sub_22C90702C();
          sub_22C443628(v44, v55, v57, v58, v59);
          (*(v60 + 8))(v44, v61);
        }

        v50 = v64;
        v51 = v54;
        swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v50 + v51);
        sub_22C62D218();
        *(v50 + v51) = v66;
        v52 = sub_22C385574();
        v53(v52);
      }
    }
  }

  sub_22C36FB20();
}

uint64_t sub_22C442ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_22C90734C();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C90832C();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v54 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v50 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v48 - v10;
  v11 = sub_22C90654C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v48 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v48 - v22;
  v24 = *(v12 + 16);
  v24(&v48 - v22, a1, v11);
  v25 = (*(v12 + 88))(v23, v11);
  if (v25 == *MEMORY[0x277D1DAA8])
  {
    v24(v21, v23, v11);
    (*(v12 + 96))(v21, v11);
    v26 = sub_22C906F2C();
    v27 = *(v26 - 8);
    if ((*(v27 + 88))(v21, v26) == *MEMORY[0x277D1DEE8])
    {
      (*(v27 + 96))(v21, v26);
      v28 = *v21;
      if (*(*v21 + 16) == 1)
      {
        v29 = v53;
        sub_22C58B0E0(v28, v53);

        v30 = sub_22C901FAC();
        if (sub_22C370B74(v29, 1, v30) != 1)
        {
          (*(*(v30 - 8) + 32))(v57, v29, v30);
          return (*(v12 + 8))(v23, v11);
        }

        sub_22C36DD28(v29, &qword_27D9BC030, &unk_22C911CC0);
      }

      else
      {
      }
    }

    else
    {
      (*(v27 + 8))(v21, v26);
    }

    goto LABEL_17;
  }

  if (v25 == *MEMORY[0x277D1D9F8])
  {
    v24(v15, v23, v11);
    (*(v12 + 96))(v15, v11);
    v31 = sub_22C901FAC();
    (*(*(v31 - 8) + 32))(v57, v15, v31);
    return (*(v12 + 8))(v23, v11);
  }

  if (v25 == *MEMORY[0x277D1DA48])
  {
    v24(v18, v23, v11);
    (*(v12 + 96))(v18, v11);
    v32 = v54;
    v33 = v55;
    v34 = v56;
    v35 = (*(v55 + 32))(v54, v18, v56);
    v36 = *(MEMORY[0x2318B57A0](v35) + 16);

    if (v36 != 1)
    {
LABEL_13:
      sub_22C442014();
      swift_allocError();
      *v41 = xmmword_22C912A70;
      *(v41 + 16) = 5;
      swift_willThrow();
      (*(v33 + 8))(v32, v34);
      return (*(v12 + 8))(v23, v11);
    }

    v38 = MEMORY[0x2318B57A0](v37);
    v39 = v50;
    sub_22C6053E0(v38, v50);

    v40 = sub_22C901FAC();
    if (sub_22C370B74(v39, 1, v40) == 1)
    {
      sub_22C36DD28(v39, &qword_27D9BC030, &unk_22C911CC0);
      goto LABEL_13;
    }

    (*(v33 + 8))(v32, v34);
    (*(*(v40 - 8) + 32))(v57, v39, v40);
  }

  else
  {
    if (v25 != *MEMORY[0x277D1DAE8])
    {
LABEL_17:
      sub_22C442014();
      swift_allocError();
      *v46 = xmmword_22C912A70;
      *(v46 + 16) = 5;
      swift_willThrow();
      return (*(v12 + 8))(v23, v11);
    }

    v24(v15, v23, v11);
    (*(v12 + 96))(v15, v11);
    v43 = v51;
    v42 = v52;
    v44 = v49;
    v45 = (*(v51 + 32))(v49, v15, v52);
    MEMORY[0x2318B4800](v45);
    (*(v43 + 8))(v44, v42);
  }

  return (*(v12 + 8))(v23, v11);
}

uint64_t sub_22C443628(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v1155 = a5;
  v1149 = a4;
  v1171 = a3;
  v1160 = a2;
  v1195 = a1;
  v5 = sub_22C90815C();
  v1071 = *(v5 - 8);
  v1072 = v5;
  MEMORY[0x28223BE20](v5);
  v1070 = &v1059 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90840C();
  v1077 = *(v7 - 8);
  v1078 = v7;
  MEMORY[0x28223BE20](v7);
  v1076 = &v1059 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C907D0C();
  v1074 = *(v9 - 8);
  v1075 = v9;
  MEMORY[0x28223BE20](v9);
  v1073 = &v1059 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1133 = sub_22C90808C();
  v1132 = *(v1133 - 8);
  MEMORY[0x28223BE20](v1133);
  v1131 = &v1059 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1128 = sub_22C9080AC();
  v1127 = *(v1128 - 8);
  MEMORY[0x28223BE20](v1128);
  v1126 = &v1059 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9080EC();
  v1067 = *(v13 - 8);
  v1068 = v13;
  MEMORY[0x28223BE20](v13);
  v1066 = &v1059 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C906FBC();
  v1079 = *(v15 - 8);
  v1080 = v15;
  MEMORY[0x28223BE20](v15);
  v1081 = &v1059 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C90731C();
  v1082 = *(v17 - 8);
  v1083 = v17;
  MEMORY[0x28223BE20](v17);
  v1084 = &v1059 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22C906AFC();
  v1088 = *(v19 - 8);
  v1089 = v19;
  MEMORY[0x28223BE20](v19);
  v1087 = &v1059 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C906F5C();
  v1090 = *(v21 - 8);
  v1091 = v21;
  MEMORY[0x28223BE20](v21);
  v1092 = &v1059 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22C9071EC();
  v1095 = *(v23 - 8);
  v1096 = v23;
  MEMORY[0x28223BE20](v23);
  v1094 = &v1059 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v1069 = &v1059 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v1065 = &v1059 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v1130 = &v1059 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v1122 = &v1059 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v1064 = &v1059 - v35;
  MEMORY[0x28223BE20](v34);
  v1097 = &v1059 - v36;
  v37 = sub_22C906CDC();
  v1098 = *(v37 - 8);
  v1099 = v37;
  MEMORY[0x28223BE20](v37);
  v1100 = &v1059 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22C907BDC();
  v1102 = *(v39 - 8);
  v1103 = v39;
  MEMORY[0x28223BE20](v39);
  v1101 = &v1059 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22C90734C();
  v1106 = *(v41 - 8);
  v1107 = v41;
  MEMORY[0x28223BE20](v41);
  v1105 = &v1059 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22C90832C();
  v1110 = *(v43 - 8);
  v1111 = v43;
  MEMORY[0x28223BE20](v43);
  v1109 = &v1059 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22C90726C();
  v1112 = *(v45 - 8);
  v1113 = v45;
  MEMORY[0x28223BE20](v45);
  v1114 = &v1059 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22C9072EC();
  v1117 = *(v47 - 8);
  v1118 = v47;
  MEMORY[0x28223BE20](v47);
  v1115 = &v1059 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_22C906B3C();
  v1119 = *(v49 - 8);
  v1120 = v49;
  MEMORY[0x28223BE20](v49);
  v1121 = &v1059 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1125 = sub_22C9069FC();
  v1124 = *(v1125 - 8);
  MEMORY[0x28223BE20](v1125);
  v1123 = &v1059 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1136 = type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender(0);
  v1137 = *(v1136 - 8);
  MEMORY[0x28223BE20](v1136);
  v1139 = (&v1059 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1158 = sub_22C9083DC();
  v1165 = *(v1158 - 8);
  MEMORY[0x28223BE20](v1158);
  v1157 = &v1059 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1175 = sub_22C906D7C();
  v1174 = *(v1175 - 8);
  MEMORY[0x28223BE20](v1175);
  v1181 = &v1059 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v56 = MEMORY[0x28223BE20](v55 - 8);
  v1162 = &v1059 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v1154 = &v1059 - v59;
  MEMORY[0x28223BE20](v58);
  v1164 = &v1059 - v60;
  v1180 = sub_22C906D9C();
  v1191 = *(v1180 - 8);
  v61 = MEMORY[0x28223BE20](v1180);
  v1173 = &v1059 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v1179 = &v1059 - v63;
  v1190 = sub_22C906DDC();
  v1189 = *(v1190 - 8);
  MEMORY[0x28223BE20](v1190);
  v1178 = &v1059 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1185 = sub_22C906FCC();
  v1184 = *(v1185 - 8);
  MEMORY[0x28223BE20](v1185);
  v1183 = &v1059 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1188 = sub_22C906FFC();
  v1187 = *(v1188 - 1);
  MEMORY[0x28223BE20](v1188);
  v1186 = &v1059 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1145 = sub_22C90769C();
  v1144 = *(v1145 - 8);
  v67 = MEMORY[0x28223BE20](v1145);
  v1134 = &v1059 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v1142 = &v1059 - v69;
  v1148 = sub_22C906ACC();
  v1147 = *(v1148 - 8);
  MEMORY[0x28223BE20](v1148);
  v1143 = &v1059 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1192 = sub_22C901FAC();
  v1194 = *(v1192 - 8);
  v71 = MEMORY[0x28223BE20](v1192);
  v1063 = &v1059 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v1062 = &v1059 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v1061 = &v1059 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v1086 = &v1059 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v1085 = &v1059 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v1093 = &v1059 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v1104 = &v1059 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v1108 = &v1059 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v1116 = &v1059 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v1153 = &v1059 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v1146 = &v1059 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v1159 = &v1059 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v1135 = &v1059 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v1161 = &v1059 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v1152 = &v1059 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v1156 = &v1059 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v1172 = &v1059 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v1141 = &v1059 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v1163 = &v1059 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v1182 = &v1059 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v113 = &v1059 - v112;
  MEMORY[0x28223BE20](v111);
  v1176 = &v1059 - v114;
  v1138 = sub_22C902D0C();
  v1177 = *(v1138 - 8);
  MEMORY[0x28223BE20](v1138);
  v1129 = (&v1059 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1167 = sub_22C90759C();
  v1168 = *(v1167 - 8);
  MEMORY[0x28223BE20](v1167);
  v1166 = &v1059 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22C906F2C();
  v118 = *(v117 - 8);
  v119 = MEMORY[0x28223BE20](v117);
  v121 = (&v1059 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v119);
  v123 = &v1059 - v122;
  v124 = sub_22C90654C();
  v125 = *(v124 - 8);
  v126 = MEMORY[0x28223BE20](v124);
  v1150 = (&v1059 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = MEMORY[0x28223BE20](v126);
  v1140 = (&v1059 - v129);
  v130 = MEMORY[0x28223BE20](v128);
  v1151 = &v1059 - v131;
  MEMORY[0x28223BE20](v130);
  v133 = &v1059 - v132;
  (*(v125 + 16))(&v1059 - v132, v1195, v124);
  v134 = *(v125 + 88);
  v1170 = v125 + 88;
  v1169 = v134;
  v135 = v134(v133, v124);
  v136 = *MEMORY[0x277D1DAA8];
  if (v135 != *MEMORY[0x277D1DAA8])
  {
    v1195 = v124;
    if (v135 == *MEMORY[0x277D1D9F8])
    {
      (*(v125 + 96))(v133, v1195);
      v147 = v1194;
      v148 = v1192;
      (*(v1194 + 32))(v113, v133, v1192);
      v149 = v1196;
      sub_22C4429E4();
      if (!v149)
      {
        v123 = v150;
      }

      (*(v147 + 8))(v113, v148);
      return v123;
    }

    if (v135 == *MEMORY[0x277D1DAC0])
    {
      (*(v125 + 96))(v133, v1195);
      v165 = v1187;
      v166 = v1186;
      v167 = v133;
      v168 = v1188;
      (*(v1187 + 32))(v1186, v167, v1188);
      v169 = swift_allocObject();
      v123 = v1183;
      sub_22C906DCC();
      v170 = sub_22C47D004();
      v172 = v171;
      (*(v1184 + 8))(v123, v1185);
      *(v169 + 16) = v170;
      *(v169 + 24) = v172;
      v173 = v1182;
      sub_22C906FDC();
      v174 = v1196;
      sub_22C4429E4();
      if (v174)
      {

        (*(v1194 + 8))(v173, v1192);
      }

      else
      {
        v229 = v175;
        (*(v1194 + 8))(v173, v1192);
        v123 = sub_22C47D60C(v169, v229);
      }

      (*(v165 + 8))(v166, v168);
      return v123;
    }

    if (v135 == *MEMORY[0x277D1DAA0])
    {
      v193 = v125;
      (*(v125 + 96))(v133, v1195);
      v194 = v1178;
      (*(v1189 + 32))(v1178, v133, v1190);
      v195 = v1179;
      sub_22C906DCC();
      v196 = v1191;
      v197 = v1173;
      v198 = v1180;
      (*(v1191 + 104))(v1173, *MEMORY[0x277D1DE38], v1180);
      v199 = sub_22C906D8C();
      v200 = *(v196 + 8);
      v200(v197, v198);
      v1191 = v196 + 8;
      v200(v195, v198);
      v123 = v1172;
      if (v199)
      {
        v201 = *(v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 52));
        v202 = v1163;
        sub_22C906DAC();
        v203 = v1164;
        sub_22C60539C(v202, v201);
        v1188 = *(v1194 + 8);
        (v1188)(v202, v1192);
        v204 = sub_22C9070DC();
        if (sub_22C370B74(v203, 1, v204) == 1)
        {
          sub_22C36DD28(v203, &qword_27D9BAA18, &qword_22C911C40);
        }

        else
        {
          v249 = v1151;
          sub_22C90702C();
          (*(*(v204 - 8) + 8))(v203, v204);
          v250 = v193;
          v251 = v1195;
          v252 = v1169(v249, v1195);
          v253 = *MEMORY[0x277D1DA98];
          (*(v250 + 8))(v249, v251);
          v194 = v1178;
          if (v252 == v253)
          {
            v254 = v1141;
            sub_22C906DBC();
            v255 = v1196;
            sub_22C4429E4();
            if (!v255)
            {
              v123 = v256;
            }

            (v1188)(v254, v1192);
            (*(v1189 + 8))(v194, v1190);
            return v123;
          }
        }
      }

      sub_22C906DAC();
      v257 = v1196;
      sub_22C4429E4();
      if (v257)
      {
        (*(v1194 + 8))(v123, v1192);
        (*(v1189 + 8))(v194, v1190);
      }

      else
      {
        v259 = v258;
        v260 = *(v1194 + 8);
        v1194 += 8;
        v1195 = v260;
        v260(v123, v1192);
        v123 = swift_allocObject();
        v261 = v1179;
        sub_22C906DCC();
        v262 = sub_22C47D10C();
        v1196 = 0;
        v264 = v263;
        v200(v261, v1180);
        v265 = v194;
        *(v123 + 16) = v262;
        *(v123 + 24) = v264;
        v266 = sub_22C47D60C(v259, v123);

        v267 = v1156;
        sub_22C906DBC();
        v268 = v1196;
        sub_22C4429E4();
        if (v268)
        {

          (v1195)(v267, v1192);
        }

        else
        {
          v328 = v269;
          (v1195)(v267, v1192);
          v123 = sub_22C47D60C(v266, v328);
        }

        (*(v1189 + 8))(v265, v1190);
      }

      return v123;
    }

    if (v135 == *MEMORY[0x277D1DA98])
    {
      LODWORD(v1191) = v136;
      v1190 = *(v125 + 96);
      (v1190)(v133, v1195);
      (*(v1174 + 32))(v1181, v133, v1175);
      v224 = v1193;
      if (*(v1193 + 1) == 1)
      {
        v225 = *(v224 + *(type metadata accessor for StatefulExpressionParser(0) + 52));
        v226 = v1152;
        sub_22C906D6C();
        v227 = v1154;
        sub_22C60539C(v226, v225);
        (*(v1194 + 8))(v226, v1192);
        v228 = sub_22C9070DC();
        if (sub_22C370B74(v227, 1, v228) == 1)
        {
          sub_22C36DD28(v227, &qword_27D9BAA18, &qword_22C911C40);
        }

        else
        {
          v291 = v1140;
          sub_22C90702C();
          (*(*(v228 - 8) + 8))(v227, v228);
          v292 = v1195;
          v293 = v1169(v291, v1195);
          if (v293 == v1191)
          {
            (v1190)(v291, v292);
            v292 = v117;
            if ((*(v118 + 88))(v291, v117) == *MEMORY[0x277D1DED0])
            {
              (*(v118 + 96))(v291, v117);
              v1194 = *v291;
              type metadata accessor for PromptTreeIdentifier.Label(0);
              v1195 = swift_allocBox();
              v295 = v294;
              v296 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
              v297 = swift_allocBox();
              v299 = v298;
              v300 = *(v296 + 48);
              v301 = swift_allocBox();
              v302 = v1181;
              MEMORY[0x2318B4220]();
              (*(v1174 + 8))(v302, v1175);
              *v299 = v301;
              v303 = *(v1177 + 104);
              v304 = v1138;
              v303(v299, *MEMORY[0x277D1D798], v1138);
              v305 = swift_allocObject();
              *(v305 + 16) = v1194;
              *(v305 + 24) = 0;
              *(v305 + 32) = 1;
              *(v299 + v300) = v305;
              v303((v299 + v300), *MEMORY[0x277D1D7E8], v304);
              *v295 = v297;
              v303(v295, *MEMORY[0x277D1D7D0], v304);
              swift_storeEnumTagMultiPayload();
              return v1195 | 0x2000000000000000;
            }

            v357 = v118;
          }

          else
          {
            v357 = v125;
          }

          (*(v357 + 8))(v291, v292);
        }

        v224 = v1193;
      }

      v1189 = v125 + 96;
      v402 = *(v224 + *(type metadata accessor for StatefulExpressionParser(0) + 52));
      v403 = v1161;
      sub_22C906D6C();
      v404 = v1162;
      sub_22C60539C(v403, v402);
      v405 = *(v1194 + 8);
      v1194 += 8;
      v405(v403, v1192);
      v406 = sub_22C9070DC();
      if (sub_22C370B74(v404, 1, v406) == 1)
      {
        v407 = sub_22C36DD28(v404, &qword_27D9BAA18, &qword_22C911C40);
        v408 = v1196;
      }

      else
      {
        v409 = v1150;
        sub_22C90702C();
        (*(*(v406 - 8) + 8))(v404, v406);
        v410 = v1195;
        v411 = v1169(v409, v1195);
        v408 = v1196;
        if (v411 == v1191)
        {
          (v1190)(v409, v410);
          v412 = v117;
          v413 = (*(v118 + 88))(v409, v117);
          v414 = v1192;
          if (v413 == *MEMORY[0x277D1DEF8])
          {
            v415 = (*(v118 + 96))(v409, v412);
            v1195 = *v409;
            v123 = v1135;
            v416 = v1181;
            MEMORY[0x2318B4220](v415);
            sub_22C4429E4();
            if (v408)
            {

              v405(v123, v414);
LABEL_129:
              (*(v1174 + 8))(v416, v1175);
              return v123;
            }

            v441 = v417;
            v405(v123, v414);
            v1198 = 46;
            v1199 = 0xE100000000000000;
            v442 = sub_22C90A2CC();
            v444 = v443;

            MEMORY[0x2318B7850](v442, v444);

            v445 = v1198;
            v446 = v1199;
            v447 = swift_allocObject();
            *(v447 + 16) = v445;
            *(v447 + 24) = v446;
            v123 = sub_22C47D60C(v441, v447);

            v431 = *(v1174 + 8);
            v432 = v416;
LABEL_137:
            v431(v432, v1175);
            return v123;
          }

          v407 = (*(v118 + 8))(v409, v412);
LABEL_127:
          v418 = v1159;
          v416 = v1181;
          MEMORY[0x2318B4220](v407);
          sub_22C4429E4();
          v123 = v1194;
          if (v408)
          {
            v405(v418, v414);
            goto LABEL_129;
          }

          v420 = v419;
          v405(v418, v414);
          v421 = swift_allocObject();
          *(v421 + 16) = 91;
          *(v421 + 24) = 0xE100000000000000;
          v422 = sub_22C47D60C(v420, v421);
          v423 = v1181;

          v424 = v1146;
          sub_22C906D6C();
          sub_22C4429E4();
          v427 = v426;
          v405(v424, v414);
          v428 = v423;
          v429 = sub_22C47D60C(v422, v427);

          v430 = swift_allocObject();
          *(v430 + 16) = 93;
          *(v430 + 24) = 0xE100000000000000;
          v123 = sub_22C47D60C(v429, v430);

          v431 = *(v1174 + 8);
          v432 = v428;
          goto LABEL_137;
        }

        v407 = (*(v125 + 8))(v409, v410);
      }

      v414 = v1192;
      goto LABEL_127;
    }

    if (v135 == *MEMORY[0x277D1DA50])
    {
      (*(v125 + 96))(v133, v1195);
      v232 = v1157;
      v233 = v133;
      v234 = v1158;
      (*(v1165 + 32))(v1157, v233, v1158);
      v235 = *(v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 56));
      v236 = v1153;
      MEMORY[0x2318B5880]();
      v237 = sub_22C6056F4(v236, v235);
      v239 = v238;
      v123 = v1194 + 8;
      v240 = *(v1194 + 8);
      v241 = v236;
      v242 = v1192;
      v243 = v240(v241, v1192);
      v244 = v1196;
      if (!v239)
      {
        v349 = v1176;
        MEMORY[0x2318B5880](v243);
        v350 = sub_22C901F9C();
        v240(v349, v242);
        sub_22C442014();
        swift_allocError();
        *v351 = v350;
        *(v351 + 8) = 0;
        *(v351 + 16) = 3;
        swift_willThrow();
        (*(v1165 + 8))(v232, v234);
        return v123;
      }

      v245 = sub_22C44BD38(v237, v239);
      if (v244)
      {
        (*(v1165 + 8))(v1157, v1158);
        goto LABEL_195;
      }

      v386 = v246;
      v387 = v247;
      v388 = v248;
      v1196 = v245;

      v390 = v1139;
      v391 = v1157;
      MEMORY[0x2318B5880](v389);
      type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
      swift_storeEnumTagMultiPayload();
      *v390 = 0;
      v390[1] = 0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C592B20();
        v387 = v713;
      }

      v392 = *(v387 + 16);
      v393 = v1196;
      if (v392 >= *(v387 + 24) >> 1)
      {
        sub_22C592B20();
        v387 = v714;
      }

      *(v387 + 16) = v392 + 1;
      sub_22C456AA8(v1139, v387 + ((*(v1137 + 80) + 32) & ~*(v1137 + 80)) + *(v1137 + 72) * v392, type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender);
      v394 = sub_22C9083CC();
      v440 = sub_22C44EB34(v393, v386, v387, v388, v394);
      (*(v1165 + 8))(v391, v1158);

      return v440;
    }

    v272 = v1196;
    if (v135 == *MEMORY[0x277D1DA78])
    {
      (*(v125 + 96))(v133, v1195);
      v273 = v1147;
      v274 = v1143;
      v275 = v1148;
      (*(v1147 + 32))(v1143, v133, v1148);
      v276 = v1142;
      sub_22C906ABC();
      v277 = sub_22C90768C();
      v279 = v278;
      v280 = v276;
      v281 = v1145;
      v1191 = *(v1144 + 8);
      (v1191)(v280, v1145);
      v1195 = sub_22C44BD38(v277, v279);
      v1194 = v283;
      v1192 = v284;
      if (v272)
      {
        v285 = *(v273 + 8);
        v123 = v273 + 8;
        v285(v274, v275);
        goto LABEL_195;
      }

      v395 = v282;

      v123 = sub_22C906A8C();
      v396 = v1134;
      sub_22C906ABC();
      v397 = sub_22C90768C();
      v1196 = 0;
      v399 = v398;
      (v1191)(v396, v281);
      v1191 = v123;
      v400 = v1196;
      v401 = sub_22C44E188(v1195, v1194, v1192, v395, v123, v397, v399);
      if (!v400)
      {
        v123 = v401;
      }

      (*(v1147 + 8))(v274, v1148);

      return v123;
    }

    if (v135 == *MEMORY[0x277D1DA30])
    {
      v307 = swift_allocObject();
      *(v307 + 16) = 0;
      *(v307 + 24) = 0xE000000000000000;
      sub_22C591324();
      v309 = v308;
      v310 = *(v308 + 16);
      v311 = v1193;
      if (v310 >= *(v308 + 24) >> 1)
      {
        sub_22C591324();
        v309 = v690;
      }

      *(v309 + 16) = v310 + 1;
      *(v309 + 8 * v310 + 32) = v307;
      v312 = (v311 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v313 = v312[4];
      v1194 = v312[3];
      *&v1193 = v313;
      sub_22C374168(v312, v1194);
      v314 = v1168;
      v315 = v1166;
      v316 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E0A8], v1167);
      v1194 = (*(v1193 + 8))(v315, v1194);
      v318 = v317;
      (*(v314 + 8))(v315, v316);
      v319 = swift_allocObject();
      *(v319 + 16) = v1194;
      *(v319 + 24) = v318;
      v321 = *(v309 + 16);
      v320 = *(v309 + 24);

      v1059 = v125;
      if (v321 >= v320 >> 1)
      {
        sub_22C591324();
        v309 = v691;
      }

      *(v309 + 16) = v321 + 1;
      *(v309 + 8 * v321 + 32) = v319;

      v322 = swift_allocObject();
      *(v322 + 16) = 10536;
      *(v322 + 24) = 0xE200000000000000;
      v323 = *(v309 + 16);
      if (v323 >= *(v309 + 24) >> 1)
      {
        sub_22C591324();
        v309 = v692;
      }

      v324 = v1195;
      *(v309 + 16) = v323 + 1;
      *(v309 + 8 * v323 + 32) = v322;
      v325 = sub_22C3DB9B0(v309);

      v326 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v327 = swift_allocObject();
      *(v327 + 16) = v325;
      *(v326 + 16) = v327;
      v123 = v326 | 0x6000000000000000;
      (*(v1059 + 8))(v133, v324);
      return v123;
    }

    v358 = v1193;
    if (v135 == *MEMORY[0x277D1DA08])
    {
      (*(v125 + 96))(v133, v1195);
      v359 = v1132;
      v360 = v1131;
      v361 = v1133;
      (*(v1132 + 32))(v1131, v133, v1133);
      v123 = v1130;
      sub_22C906CBC();
      sub_22C4420BC(v123, v358, v362, v363, v364, v365, v366, v367, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, v1067, v1068, v1069, v1070);
      if (!v272)
      {
        v369 = v368;
        v1196 = 0;
        sub_22C36DD28(v123, &qword_27D9BC030, &unk_22C911CC0);
        if ((~v369 & 0xF000000000000007) == 0)
        {
          v369 = swift_allocObject();
          *(v369 + 16) = 0;
          *(v369 + 24) = 0xE000000000000000;
        }

        v1195 = v369;
        sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22C90D070;
        v371 = swift_allocObject();
        v372 = (v358 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
        v373 = v372[3];
        v374 = v372[4];
        sub_22C374168(v372, v373);
        v375 = v1168;
        v376 = v1166;
        v377 = v1167;
        (*(v1168 + 104))(v1166, *MEMORY[0x277D1E080], v1167);
        v378 = (*(v374 + 8))(v376, v373, v374);
        v380 = v379;
        (*(v375 + 8))(v376, v377);
        *(v371 + 16) = v378;
        *(v371 + 24) = v380;
        *(inited + 32) = v371;
        v381 = swift_allocObject();
        v1198 = 40;
        v1199 = 0xE100000000000000;
        *(v381 + 16) = sub_22C90A49C();
        *(v381 + 24) = v382;
        v383 = v1195;
        *(inited + 40) = v381;
        *(inited + 48) = v383;
        v384 = swift_allocObject();
        v1198 = 41;
        v1199 = 0xE100000000000000;

        *(v384 + 16) = sub_22C90A49C();
        *(v384 + 24) = v385;
        *(inited + 56) = v384;
        v123 = sub_22C47D6D8(inited);

        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1132 + 8))(v1131, v1133);
        return v123;
      }

      goto LABEL_135;
    }

    if (v135 == *MEMORY[0x277D1DA10])
    {
      (*(v125 + 96))(v133, v1195);
      v359 = v1127;
      v360 = v1126;
      v361 = v1128;
      (*(v1127 + 32))(v1126, v133, v1128);
      v123 = v1122;
      sub_22C906CBC();
      sub_22C4420BC(v123, v358, v433, v434, v435, v436, v437, v438, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, v1067, v1068, v1069, v1070);
      if (!v272)
      {
        v489 = v439;
        v1196 = 0;
        sub_22C36DD28(v123, &qword_27D9BC030, &unk_22C911CC0);
        if ((~v489 & 0xF000000000000007) == 0)
        {
          v489 = swift_allocObject();
          *(v489 + 16) = 0;
          *(v489 + 24) = 0xE000000000000000;
        }

        v1195 = v489;
        sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
        v490 = swift_allocObject();
        *(v490 + 16) = xmmword_22C90D070;
        v491 = swift_allocObject();
        v492 = (v358 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
        v493 = v492[3];
        v494 = v492[4];
        sub_22C374168(v492, v493);
        v495 = v1168;
        v496 = v1166;
        v497 = v1167;
        (*(v1168 + 104))(v1166, *MEMORY[0x277D1E088], v1167);
        v498 = (*(v494 + 8))(v496, v493, v494);
        v500 = v499;
        (*(v495 + 8))(v496, v497);
        *(v491 + 16) = v498;
        *(v491 + 24) = v500;
        *(v490 + 32) = v491;
        v501 = swift_allocObject();
        v1198 = 40;
        v1199 = 0xE100000000000000;
        *(v501 + 16) = sub_22C90A49C();
        *(v501 + 24) = v502;
        v503 = v1195;
        *(v490 + 40) = v501;
        *(v490 + 48) = v503;
        v504 = swift_allocObject();
        v1198 = 41;
        v1199 = 0xE100000000000000;

        *(v504 + 16) = sub_22C90A49C();
        *(v504 + 24) = v505;
        *(v490 + 56) = v504;
        v123 = sub_22C47D6D8(v490);

        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1127 + 8))(v1126, v1128);
        return v123;
      }

LABEL_135:
      sub_22C36DD28(v123, &qword_27D9BC030, &unk_22C911CC0);
      (*(v359 + 8))(v360, v361);
      return v123;
    }

    if (v135 == *MEMORY[0x277D1DA70])
    {
      (*(v125 + 96))(v133, v1195);
      (*(v1124 + 32))(v1123, v133, v1125);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v1195 = swift_allocObject();
      *(v1195 + 16) = xmmword_22C90D070;
      v123 = swift_allocObject();
      v452 = (v358 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v453 = v452[3];
      v454 = v452[4];
      sub_22C374168(v452, v453);
      v455 = v1168;
      v456 = v1166;
      v457 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E0C0], v1167);
      v458 = (*(v454 + 8))(v456, v453, v454);
      v460 = v459;
      v461 = v456;
      v462 = v1195;
      v463 = v457;
      v464 = v1123;
      (*(v455 + 8))(v461, v463);
      *(v123 + 16) = v458;
      *(v123 + 24) = v460;
      v462[4] = v123;
      v465 = swift_allocObject();
      v1198 = 40;
      v1199 = 0xE100000000000000;
      *(v465 + 16) = sub_22C90A49C();
      *(v465 + 24) = v466;
      v462[5] = v465;
      v467 = MEMORY[0x2318B3EC0]();
      v468 = sub_22C442770(v467);
      if (!v272)
      {
        v528 = v468;

        v529 = sub_22C3DB9B0(v528);

        v530 = sub_22C47D588(8236, 0xE200000000000000, v529);

        v531 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        v532 = swift_allocObject();
        *(v532 + 16) = v530;
        *(v531 + 16) = v532;
        v462[6] = v531 | 0x6000000000000000;
        v533 = swift_allocObject();
        v1198 = 41;
        v1199 = 0xE100000000000000;
        *(v533 + 16) = sub_22C90A49C();
        *(v533 + 24) = v534;
        v462[7] = v533;
        v535 = sub_22C3DB9B0(v462);
        v536 = swift_allocObject();
        v537 = swift_allocObject();
        *(v537 + 16) = v535;
        *(v536 + 16) = v537;
        v123 = v536 | 0x6000000000000000;
        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1124 + 8))(v464, v1125);
        return v123;
      }

      (*(v1124 + 8))(v464, v1125);

      v462[2] = 0;
      swift_setDeallocating();
      goto LABEL_146;
    }

    if (v135 == *MEMORY[0x277D1DA88])
    {
      (*(v125 + 96))(v133, v1195);
      (*(v1119 + 32))(v1121, v133, v1120);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v1195 = swift_allocObject();
      *(v1195 + 16) = xmmword_22C90D070;
      v469 = swift_allocObject();
      v470 = (v358 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v471 = v470[3];
      v472 = v470[4];
      sub_22C374168(v470, v471);
      v473 = v1168;
      v474 = v1166;
      v475 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E0D0], v1167);
      v476 = *(v472 + 8);
      v477 = v472;
      v478 = v1195;
      v479 = v476(v474, v471, v477);
      v481 = v480;
      v482 = v475;
      v483 = v1121;
      (*(v473 + 8))(v474, v482);
      *(v469 + 16) = v479;
      *(v469 + 24) = v481;
      v478[4] = v469;
      v484 = swift_allocObject();
      v123 = 0xE100000000000000;
      v1198 = 40;
      v1199 = 0xE100000000000000;
      *(v484 + 16) = sub_22C90A49C();
      *(v484 + 24) = v485;
      v478[5] = v484;
      v486 = v1116;
      MEMORY[0x2318B3FE0]();
      sub_22C4429E4();
      v488 = (v1194 + 8);
      if (!v272)
      {
        v566 = v487;
        (*v488)(v486, v1192);
        v478[6] = v566;
        v567 = swift_allocObject();
        *(v567 + 16) = 91;
        *(v567 + 24) = 0xE100000000000000;
        sub_22C591324();
        v569 = v568;
        v570 = *(v568 + 16);
        if (v570 >= *(v568 + 24) >> 1)
        {
          sub_22C591324();
          v569 = v825;
        }

        *(v569 + 16) = v570 + 1;
        *(v569 + 8 * v570 + 32) = v567;
        v571 = sub_22C906B2C();
        v572 = swift_allocObject();
        v1198 = v571;
        *(v572 + 16) = sub_22C90B47C();
        *(v572 + 24) = v573;
        v574 = *(v569 + 16);
        if (v574 >= *(v569 + 24) >> 1)
        {
          sub_22C591324();
          v569 = v826;
        }

        *(v569 + 16) = v574 + 1;
        *(v569 + 8 * v574 + 32) = v572;
        v575 = swift_allocObject();
        *(v575 + 16) = 10589;
        *(v575 + 24) = 0xE200000000000000;
        v576 = *(v569 + 16);
        if (v576 >= *(v569 + 24) >> 1)
        {
          sub_22C591324();
          v569 = v827;
        }

        *(v569 + 16) = v576 + 1;
        *(v569 + 8 * v576 + 32) = v575;
        v577 = sub_22C3DB9B0(v569);

        v578 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        v579 = swift_allocObject();
        *(v579 + 16) = v577;
        *(v578 + 16) = v579;
        v478[7] = v578 | 0x6000000000000000;
        v580 = sub_22C3DB9B0(v478);
        v581 = swift_allocObject();
        v582 = swift_allocObject();
        *(v582 + 16) = v580;
        *(v581 + 16) = v582;
        v123 = v581 | 0x6000000000000000;
        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1119 + 8))(v1121, v1120);
        return v123;
      }

      (*v488)(v486, v1192);
      (*(v1119 + 8))(v483, v1120);

      v478[2] = 0;
      swift_setDeallocating();
LABEL_146:
      sub_22C58FFB0();
      return v123;
    }

    if (v135 == *MEMORY[0x277D1DAD8])
    {
      (*(v125 + 96))(v133, v1195);
      v506 = v1115;
      (*(v1117 + 32))(v1115, v133, v1118);
      v507 = type metadata accessor for StatefulExpressionParser(0);
      v508 = v507;
      if (*(v358 + *(v507 + 60)) != 1)
      {
        v586 = (v358 + *(v507 + 36));
        v587 = v586[3];
        v588 = v586[4];
        sub_22C374168(v586, v587);
        v589 = v1168;
        v590 = v1166;
        v591 = v1167;
        (*(v1168 + 104))(v1166, *MEMORY[0x277D1E108], v1167);
        v592 = (*(v588 + 8))(v590, v587, v588);
        v594 = v593;
        v595 = *(v589 + 8);
        v123 = v589 + 8;
        v595(v590, v591);
        v1198 = v592;
        v1199 = v594;
        v596 = MEMORY[0x2318B7850](40, 0xE100000000000000);
        v598 = v1198;
        v597 = v1199;
        v599 = v1108;
        MEMORY[0x2318B47A0](v596);
        sub_22C4429E4();
        if (v272)
        {

          (*(v1194 + 8))(v599, v1192);
        }

        else
        {
          v622 = v600;
          (*(v1194 + 8))(v599, v1192);
          v623 = swift_allocObject();
          *(v623 + 16) = v598;
          *(v623 + 24) = v597;
          v624 = sub_22C47D60C(v623, v622);

          v625 = swift_allocObject();
          *(v625 + 16) = 41;
          *(v625 + 24) = 0xE100000000000000;
          v123 = sub_22C47D60C(v624, v625);
        }

        (*(v1117 + 8))(v506, v1118);
        return v123;
      }

      v509 = swift_allocObject();
      *(v509 + 16) = 0;
      *(v509 + 24) = 0xE000000000000000;
      sub_22C591324();
      v511 = v510;
      v512 = *(v510 + 16);
      if (v512 >= *(v510 + 24) >> 1)
      {
        sub_22C591324();
        v511 = v835;
      }

      *(v511 + 16) = v512 + 1;
      *(v511 + 8 * v512 + 32) = v509;
      v513 = (v1193 + *(v508 + 36));
      v514 = v513[3];
      v515 = v513[4];
      sub_22C374168(v513, v514);
      v516 = v1168;
      v517 = v1166;
      v518 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E0A0], v1167);
      v519 = (*(v515 + 8))(v517, v514, v515);
      v521 = v520;
      (*(v516 + 8))(v517, v518);
      v522 = swift_allocObject();
      *(v522 + 16) = v519;
      *(v522 + 24) = v521;
      v524 = *(v511 + 16);
      v523 = *(v511 + 24);

      if (v524 >= v523 >> 1)
      {
        sub_22C591324();
        v511 = v836;
      }

      *(v511 + 16) = v524 + 1;
      *(v511 + 8 * v524 + 32) = v522;

      v525 = swift_allocObject();
      *(v525 + 16) = 10536;
      *(v525 + 24) = 0xE200000000000000;
      v526 = *(v511 + 16);
      if (v526 >= *(v511 + 24) >> 1)
      {
        sub_22C591324();
        v511 = v837;
      }

      *(v511 + 16) = v526 + 1;
      *(v511 + 8 * v526 + 32) = v525;
      v527 = sub_22C3DB9B0(v511);

      (*(v1117 + 8))(v1115, v1118);
      goto LABEL_172;
    }

    if (v135 == *MEMORY[0x277D1DAD0])
    {
      (*(v125 + 96))(v133, v1195);
      (*(v1112 + 32))(v1114, v133, v1113);
      v538 = swift_allocObject();
      *(v538 + 16) = 0;
      *(v538 + 24) = 0xE000000000000000;
      sub_22C591324();
      v540 = v539;
      v541 = *(v539 + 16);
      if (v541 >= *(v539 + 24) >> 1)
      {
        sub_22C591324();
        v540 = v838;
      }

      *(v540 + 16) = v541 + 1;
      *(v540 + 8 * v541 + 32) = v538;
      v542 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v543 = v542[3];
      v544 = v542[4];
      sub_22C374168(v542, v543);
      v545 = v1168;
      v546 = v1166;
      v547 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E100], v1167);
      v548 = (*(v544 + 8))(v546, v543, v544);
      v550 = v549;
      (*(v545 + 8))(v546, v547);
      v551 = swift_allocObject();
      *(v551 + 16) = v548;
      *(v551 + 24) = v550;
      v553 = *(v540 + 16);
      v552 = *(v540 + 24);

      if (v553 >= v552 >> 1)
      {
        sub_22C591324();
        v540 = v839;
      }

      *(v540 + 16) = v553 + 1;
      *(v540 + 8 * v553 + 32) = v551;

      v554 = swift_allocObject();
      *(v554 + 16) = 40;
      *(v554 + 24) = 0xE100000000000000;
      v555 = *(v540 + 16);
      if (v555 >= *(v540 + 24) >> 1)
      {
        sub_22C591324();
        v540 = v840;
      }

      *(v540 + 16) = v555 + 1;
      *(v540 + 8 * v555 + 32) = v554;
      sub_22C90724C();
      v556 = sub_22C90A2AC();
      v558 = v557;

      v559 = swift_allocObject();
      *(v559 + 16) = v556;
      *(v559 + 24) = v558;
      v561 = *(v540 + 16);
      v560 = *(v540 + 24);

      if (v561 >= v560 >> 1)
      {
        sub_22C591324();
        v540 = v841;
      }

      *(v540 + 16) = v561 + 1;
      *(v540 + 8 * v561 + 32) = v559;

      v562 = swift_allocObject();
      *(v562 + 16) = 41;
      *(v562 + 24) = 0xE100000000000000;
      v563 = *(v540 + 16);
      if (v563 >= *(v540 + 24) >> 1)
      {
        sub_22C591324();
        v540 = v842;
      }

      *(v540 + 16) = v563 + 1;
      *(v540 + 8 * v563 + 32) = v562;
      v527 = sub_22C3DB9B0(v540);

      (*(v1112 + 8))(v1114, v1113);
      goto LABEL_172;
    }

    if (v135 == *MEMORY[0x277D1DA48])
    {
      (*(v125 + 96))(v133, v1195);
      v601 = v1109;
      (*(v1110 + 32))(v1109, v133, v1111);
      v602 = v1196;
      v603 = sub_22C44EC84(v601);
      if (!v602)
      {
        v123 = v603;
      }

      (*(v1110 + 8))(v1109, v1111);
      return v123;
    }

    if (v135 == *MEMORY[0x277D1DAE8])
    {
      (*(v125 + 96))(v133, v1195);
      (*(v1106 + 32))(v1105, v133, v1107);
      v607 = type metadata accessor for StatefulExpressionParser(0);
      v123 = v1193;
      v608 = (v1193 + *(v607 + 36));
      v609 = v608[3];
      v610 = v608[4];
      sub_22C374168(v608, v609);
      v611 = v1168;
      v612 = v1166;
      v613 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E118], v1167);
      v614 = (*(v610 + 8))(v612, v609, v610);
      v616 = v615;
      (*(v611 + 8))(v612, v613);
      v1198 = v614;
      v1199 = v616;
      v617 = MEMORY[0x2318B7850](40, 0xE100000000000000);
      v619 = v1198;
      v618 = v1199;
      MEMORY[0x2318B4800](v617);
      v620 = v1196;
      sub_22C4429E4();
      if (v620)
      {

        (*(v1194 + 8))(v1104, v1192);
      }

      else
      {
        v645 = v621;
        (*(v1194 + 8))(v1104, v1192);
        v646 = swift_allocObject();
        *(v646 + 16) = v619;
        *(v646 + 24) = v618;
        v647 = sub_22C47D60C(v646, v645);

        v648 = swift_allocObject();
        *(v648 + 16) = 41;
        *(v648 + 24) = 0xE100000000000000;
        v123 = sub_22C47D60C(v647, v648);
      }

      (*(v1106 + 8))(v1105, v1107);
      return v123;
    }

    if (v135 == *MEMORY[0x277D1D9F0])
    {
      (*(v125 + 96))(v133, v1195);
      v626 = (*(v1102 + 32))(v1101, v133, v1103);
      v627 = MEMORY[0x2318B50A0](v626);
      v628 = v1196;
      sub_22C4423A8(v627, v1193);
      v1192 = v629;
      v1196 = v628;
      if (v628)
      {
        (*(v1102 + 8))(v1101, v1103);
        goto LABEL_195;
      }

      v1191 = sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v664 = swift_allocObject();
      *(v664 + 16) = xmmword_22C90D070;
      v665 = swift_allocObject();
      v666 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v667 = v666[3];
      v668 = v666[4];
      sub_22C374168(v666, v667);
      v669 = v1168;
      v670 = v1166;
      v671 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E068], v1167);
      v672 = (*(v668 + 8))(v670, v667, v668);
      v674 = v673;
      (*(v669 + 8))(v670, v671);
      *(v665 + 16) = v672;
      *(v665 + 24) = v674;
      *(v664 + 32) = v665;
      v675 = swift_allocObject();
      v1198 = 40;
      v1199 = 0xE100000000000000;
      *(v675 + 16) = sub_22C90A49C();
      *(v675 + 24) = v676;
      v1190 = v664;
      *(v664 + 40) = v675;
      v1194 = *(v1192 + 16);
      if (v1194)
      {
        v1197[0] = MEMORY[0x277D84F90];
        sub_22C3B63D4(0, v1194, 0);
        v677 = 32;
        v1195 = v1197[0];
        v1193 = xmmword_22C90FB40;
        do
        {
          v678 = *(v1192 + v677);
          v679 = swift_allocObject();
          *(v679 + 16) = v1193;
          v680 = swift_allocObject();
          v1198 = 34;
          v1199 = 0xE100000000000000;

          *(v680 + 16) = sub_22C90A49C();
          *(v680 + 24) = v681;
          *(v679 + 32) = v680;
          *(v679 + 40) = v678;
          v682 = swift_allocObject();
          v1198 = 34;
          v1199 = 0xE100000000000000;

          *(v682 + 16) = sub_22C90A49C();
          *(v682 + 24) = v683;
          *(v679 + 48) = v682;
          v684 = sub_22C3DB9B0(v679);

          swift_setDeallocating();
          sub_22C58FFB0();
          v685 = swift_allocObject();
          sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
          v686 = swift_allocObject();
          *(v686 + 16) = v684;
          *(v685 + 16) = v686;
          v1197[0] = v1195;
          v688 = *(v1195 + 16);
          v687 = *(v1195 + 24);
          if (v688 >= v687 >> 1)
          {
            sub_22C3B63D4(v687 > 1, v688 + 1, 1);
            v1195 = v1197[0];
          }

          v689 = v1195;
          *(v1195 + 16) = v688 + 1;
          *(v689 + 8 * v688 + 32) = v685 | 0x6000000000000000;
          v677 += 8;
          --v1194;
        }

        while (v1194);
      }

      else
      {

        v1195 = MEMORY[0x277D84F90];
      }

      v719 = sub_22C3DB9B0(v1195);

      v720 = sub_22C47D588(8236, 0xE200000000000000, v719);

      v721 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v722 = swift_allocObject();
      *(v722 + 16) = v720;
      *(v721 + 16) = v722;
      v723 = v1190;
      *(v1190 + 48) = v721 | 0x6000000000000000;
      v724 = swift_allocObject();
      v1198 = 41;
      v1199 = 0xE100000000000000;
      *(v724 + 16) = sub_22C90A49C();
      *(v724 + 24) = v725;
      *(v723 + 56) = v724;
      v123 = sub_22C47D6D8(v723);
      swift_setDeallocating();
      sub_22C58FFB0();
      (*(v1102 + 8))(v1101, v1103);
      return v123;
    }

    if (v135 == *MEMORY[0x277D1DA90])
    {
      (*(v125 + 96))(v133, v1195);
      (*(v1098 + 32))(v1100, v133, v1099);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v630 = swift_allocObject();
      *(v630 + 16) = xmmword_22C90D070;
      v631 = swift_allocObject();
      v632 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v633 = v632[3];
      v634 = v632[4];
      sub_22C374168(v632, v633);
      v635 = v1168;
      v636 = v1166;
      v637 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E0D8], v1167);
      v638 = (*(v634 + 8))(v636, v633, v634);
      v640 = v639;
      (*(v635 + 8))(v636, v637);
      *(v631 + 16) = v638;
      *(v631 + 24) = v640;
      *(v630 + 32) = v631;
      v641 = swift_allocObject();
      v1198 = 40;
      v1199 = 0xE100000000000000;
      *(v641 + 16) = sub_22C90A49C();
      *(v641 + 24) = v642;
      *(v630 + 40) = v641;
      v123 = v1097;
      sub_22C906CBC();
      v643 = v1196;
      v644 = sub_22C442238(v123, v1193);
      if (!v643)
      {
        v715 = v644;
        sub_22C36DD28(v1097, &qword_27D9BC030, &unk_22C911CC0);
        if ((~v715 & 0xF000000000000007) == 0)
        {
          v715 = swift_allocObject();
          v1198 = 0;
          v1199 = 0xE000000000000000;
          *(v715 + 16) = sub_22C90A49C();
          *(v715 + 24) = v716;
        }

        *(v630 + 48) = v715;
        v717 = swift_allocObject();
        v1198 = 41;
        v1199 = 0xE100000000000000;
        *(v717 + 16) = sub_22C90A49C();
        *(v717 + 24) = v718;
        *(v630 + 56) = v717;
        v123 = sub_22C47D6D8(v630);
        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1098 + 8))(v1100, v1099);
        return v123;
      }

      sub_22C36DD28(v1097, &qword_27D9BC030, &unk_22C911CC0);
      (*(v1098 + 8))(v1100, v1099);

      goto LABEL_199;
    }

    if (v135 == *MEMORY[0x277D1DAC8])
    {
      (*(v125 + 96))(v133, v1195);
      (*(v1095 + 32))(v1094, v133, v1096);
      v649 = type metadata accessor for StatefulExpressionParser(0);
      v123 = v1193;
      v650 = (v1193 + *(v649 + 36));
      v651 = v650[3];
      v652 = v650[4];
      sub_22C374168(v650, v651);
      v653 = v1168;
      v654 = v1166;
      v655 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E0F8], v1167);
      v656 = (*(v652 + 8))(v654, v651, v652);
      v658 = v657;
      (*(v653 + 8))(v654, v655);
      v1198 = v656;
      v1199 = v658;
      v659 = MEMORY[0x2318B7850](40, 0xE100000000000000);
      v661 = v1198;
      v660 = v1199;
      MEMORY[0x2318B46A0](v659);
      v662 = v1196;
      sub_22C4429E4();
      if (v662)
      {

        (*(v1194 + 8))(v1093, v1192);
      }

      else
      {
        v741 = v663;
        (*(v1194 + 8))(v1093, v1192);
        v742 = swift_allocObject();
        *(v742 + 16) = v661;
        *(v742 + 24) = v660;
        v743 = sub_22C47D60C(v742, v741);

        v744 = swift_allocObject();
        *(v744 + 16) = 41;
        *(v744 + 24) = 0xE100000000000000;
        v123 = sub_22C47D60C(v743, v744);
      }

      (*(v1095 + 8))(v1094, v1096);
      return v123;
    }

    if (v135 == *MEMORY[0x277D1DAB0])
    {
      (*(v125 + 96))(v133, v1195);
      (*(v1090 + 32))(v1092, v133, v1091);
      v693 = type metadata accessor for StatefulExpressionParser(0);
      v694 = v693;
      if (*(v1193 + *(v693 + 64)) != 1)
      {
        v123 = v1193;
        v745 = (v1193 + *(v693 + 36));
        v746 = v745[3];
        v747 = v745[4];
        sub_22C374168(v745, v746);
        v748 = v1168;
        v749 = v1166;
        v750 = v1167;
        (*(v1168 + 104))(v1166, *MEMORY[0x277D1E0E8], v1167);
        v751 = (*(v747 + 8))(v749, v746, v747);
        v753 = v752;
        (*(v748 + 8))(v749, v750);
        v1198 = v751;
        v1199 = v753;
        v754 = MEMORY[0x2318B7850](40, 0xE100000000000000);
        v756 = v1198;
        v755 = v1199;
        MEMORY[0x2318B4410](v754);
        v757 = v1196;
        sub_22C4429E4();
        if (v757)
        {

          (*(v1194 + 8))(v1085, v1192);
        }

        else
        {
          v791 = v758;
          (*(v1194 + 8))(v1085, v1192);
          v792 = swift_allocObject();
          *(v792 + 16) = v756;
          *(v792 + 24) = v755;
          v793 = sub_22C47D60C(v792, v791);

          v794 = swift_allocObject();
          *(v794 + 16) = 41;
          *(v794 + 24) = 0xE100000000000000;
          v123 = sub_22C47D60C(v793, v794);
        }

        (*(v1090 + 8))(v1092, v1091);
        return v123;
      }

      v695 = swift_allocObject();
      *(v695 + 16) = 0;
      *(v695 + 24) = 0xE000000000000000;
      sub_22C591324();
      v697 = v696;
      v698 = *(v696 + 16);
      if (v698 >= *(v696 + 24) >> 1)
      {
        sub_22C591324();
        v697 = v1029;
      }

      *(v697 + 16) = v698 + 1;
      *(v697 + 8 * v698 + 32) = v695;
      v699 = (v1193 + *(v694 + 36));
      v700 = v699[3];
      v701 = v699[4];
      sub_22C374168(v699, v700);
      v702 = v1168;
      v703 = v1166;
      v704 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E090], v1167);
      v705 = (*(v701 + 8))(v703, v700, v701);
      v707 = v706;
      (*(v702 + 8))(v703, v704);
      v708 = swift_allocObject();
      *(v708 + 16) = v705;
      *(v708 + 24) = v707;
      v710 = *(v697 + 16);
      v709 = *(v697 + 24);

      if (v710 >= v709 >> 1)
      {
        sub_22C591324();
        v697 = v1030;
      }

      *(v697 + 16) = v710 + 1;
      *(v697 + 8 * v710 + 32) = v708;

      v711 = swift_allocObject();
      *(v711 + 16) = 10536;
      *(v711 + 24) = 0xE200000000000000;
      v712 = *(v697 + 16);
      if (v712 >= *(v697 + 24) >> 1)
      {
        sub_22C591324();
        v697 = v1031;
      }

      *(v697 + 16) = v712 + 1;
      *(v697 + 8 * v712 + 32) = v711;
      v527 = sub_22C3DB9B0(v697);

      (*(v1090 + 8))(v1092, v1091);
      goto LABEL_172;
    }

    if (v135 == *MEMORY[0x277D1DA80])
    {
      (*(v125 + 96))(v133, v1195);
      (*(v1088 + 32))(v1087, v133, v1089);
      v726 = type metadata accessor for StatefulExpressionParser(0);
      v123 = v1193;
      v727 = (v1193 + *(v726 + 36));
      v728 = v727[3];
      v729 = v727[4];
      sub_22C374168(v727, v728);
      v730 = v1168;
      v731 = v1166;
      v732 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E0C8], v1167);
      v733 = (*(v729 + 8))(v731, v728, v729);
      v735 = v734;
      (*(v730 + 8))(v731, v732);
      v1198 = v733;
      v1199 = v735;
      v736 = MEMORY[0x2318B7850](40, 0xE100000000000000);
      v738 = v1198;
      v737 = v1199;
      MEMORY[0x2318B3FB0](v736);
      v739 = v1196;
      sub_22C4429E4();
      if (v739)
      {

        (*(v1194 + 8))(v1086, v1192);
      }

      else
      {
        v787 = v740;
        (*(v1194 + 8))(v1086, v1192);
        v788 = swift_allocObject();
        *(v788 + 16) = v738;
        *(v788 + 24) = v737;
        v789 = sub_22C47D60C(v788, v787);

        v790 = swift_allocObject();
        *(v790 + 16) = 41;
        *(v790 + 24) = 0xE100000000000000;
        v123 = sub_22C47D60C(v789, v790);
      }

      (*(v1088 + 8))(v1087, v1089);
      return v123;
    }

    if (v135 == *MEMORY[0x277D1DAE0])
    {
      (*(v125 + 96))(v133, v1195);
      (*(v1082 + 32))(v1084, v133, v1083);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v630 = swift_allocObject();
      *(v630 + 16) = xmmword_22C90D070;
      v123 = swift_allocObject();
      v759 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v760 = v759[3];
      v761 = v759[4];
      sub_22C374168(v759, v760);
      v762 = v1168;
      v763 = v1166;
      v764 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E110], v1167);
      v765 = (*(v761 + 8))(v763, v760, v761);
      v767 = v766;
      (*(v762 + 8))(v763, v764);
      *(v123 + 16) = v765;
      *(v123 + 24) = v767;
      *(v630 + 32) = v123;
      v768 = swift_allocObject();
      v1198 = 40;
      v1199 = 0xE100000000000000;
      *(v768 + 16) = sub_22C90A49C();
      *(v768 + 24) = v769;
      *(v630 + 40) = v768;
      v770 = MEMORY[0x2318B47E0]();
      v771 = v1196;
      v772 = sub_22C442770(v770);
      if (!v771)
      {
        v804 = v772;

        v805 = sub_22C3DB9B0(v804);

        v806 = sub_22C47D588(8236, 0xE200000000000000, v805);

        v807 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        v808 = swift_allocObject();
        *(v808 + 16) = v806;
        *(v807 + 16) = v808;
        *(v630 + 48) = v807 | 0x6000000000000000;
        v809 = swift_allocObject();
        v1198 = 41;
        v1199 = 0xE100000000000000;
        *(v809 + 16) = sub_22C90A49C();
        *(v809 + 24) = v810;
        *(v630 + 56) = v809;
        v123 = sub_22C47D6D8(v630);
        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1082 + 8))(v1084, v1083);
        return v123;
      }

      (*(v1082 + 8))(v1084, v1083);
    }

    else
    {
      if (v135 != *MEMORY[0x277D1DAB8])
      {
        if (v135 == *MEMORY[0x277D1DA18])
        {
          (*(v125 + 96))(v133, v1195);
          (*(v1067 + 32))(v1066, v133, v1068);
          v795 = v1064;
          sub_22C906CBC();
          v796 = v1196;
          sub_22C4420BC(v795, v1193, v797, v798, v799, v800, v801, v802, v1059, v1060, v1061, v1062, v1063, v1064, v1065, v1066, v1067, v1068, v1069, v1070);
          v1195 = v803;
          v1196 = v796;
          if (v796)
          {
            sub_22C36DD28(v1064, &qword_27D9BC030, &unk_22C911CC0);
            (*(v1067 + 8))(v1066, v1068);
          }

          else
          {
            sub_22C36DD28(v1064, &qword_27D9BC030, &unk_22C911CC0);
            if ((~v1195 & 0xF000000000000007) == 0)
            {
              v856 = swift_allocObject();
              *(v856 + 16) = 0;
              *(v856 + 24) = 0xE000000000000000;
              v1195 = v856;
            }

            sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
            v857 = swift_allocObject();
            *(v857 + 16) = xmmword_22C90D070;
            v858 = swift_allocObject();
            v859 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
            v860 = v859[3];
            v861 = v859[4];
            sub_22C374168(v859, v860);
            v862 = v1168;
            v863 = v1166;
            v864 = v1167;
            (*(v1168 + 104))(v1166, *MEMORY[0x277D1E0E0], v1167);
            v865 = (*(v861 + 8))(v863, v860, v861);
            v867 = v866;
            (*(v862 + 8))(v863, v864);
            *(v858 + 16) = v865;
            *(v858 + 24) = v867;
            *(v857 + 32) = v858;
            v868 = swift_allocObject();
            v1198 = 40;
            v1199 = 0xE100000000000000;
            *(v868 + 16) = sub_22C90A49C();
            *(v868 + 24) = v869;
            v870 = v1195;
            *(v857 + 40) = v868;
            *(v857 + 48) = v870;
            v871 = swift_allocObject();
            v1198 = 41;
            v1199 = 0xE100000000000000;

            *(v871 + 16) = sub_22C90A49C();
            *(v871 + 24) = v872;
            *(v857 + 56) = v871;
            v123 = sub_22C47D6D8(v857);

            swift_setDeallocating();
            sub_22C58FFB0();
            (*(v1067 + 8))(v1066, v1068);
          }

          return v123;
        }

        if (v135 == *MEMORY[0x277D1DA00])
        {
          (*(v125 + 96))(v133, v1195);
          (*(v1074 + 32))(v1073, v133, v1075);
          v811 = swift_allocObject();
          *(v811 + 16) = 0;
          *(v811 + 24) = 0xE000000000000000;
          sub_22C591324();
          v813 = v812;
          v814 = *(v812 + 16);
          v815 = v814 + 1;
          if (v814 >= *(v812 + 24) >> 1)
          {
            goto LABEL_343;
          }

          while (1)
          {
            *(v813 + 16) = v815;
            *(v813 + 8 * v814 + 32) = v811;
            v816 = MEMORY[0x2318B49F0]();
            v818 = v817;
            v819 = swift_allocObject();
            *(v819 + 16) = v816;
            *(v819 + 24) = v818;
            v821 = *(v813 + 16);
            v820 = *(v813 + 24);

            if (v821 >= v820 >> 1)
            {
              sub_22C591324();
              v813 = v1033;
            }

            *(v813 + 16) = v821 + 1;
            *(v813 + 8 * v821 + 32) = v819;

            v822 = swift_allocObject();
            *(v822 + 16) = 61;
            *(v822 + 24) = 0xE100000000000000;
            v123 = *(v813 + 16);
            if (v123 >= *(v813 + 24) >> 1)
            {
              sub_22C591324();
              v813 = v1034;
            }

            *(v813 + 16) = v123 + 1;
            *(v813 + 8 * v123 + 32) = v822;
            MEMORY[0x2318B51B0]();
            v823 = v1196;
            sub_22C4429E4();
            if (v823)
            {
              break;
            }

            v886 = v824;
            (*(v1194 + 8))(v1061, v1192);
            v887 = *(v813 + 16);
            if (v887 >= *(v813 + 24) >> 1)
            {
              sub_22C591324();
              v813 = v1038;
            }

            *(v813 + 16) = v887 + 1;
            *(v813 + 8 * v887 + 32) = v886;
            v888 = swift_allocObject();
            *(v888 + 16) = 0;
            *(v888 + 24) = 0xE000000000000000;
            v814 = *(v813 + 16);
            if (v814 >= *(v813 + 24) >> 1)
            {
              sub_22C591324();
              v813 = v1039;
            }

            *(v813 + 16) = v814 + 1;
            *(v813 + 8 * v814 + 32) = v888;
            v889 = sub_22C3DB9B0(v813);

            v890 = swift_allocObject();
            sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
            v891 = swift_allocObject();
            *(v891 + 16) = v889;
            *(v890 + 16) = v891;
            v892 = v1065;
            sub_22C907CEC();
            v1195 = sub_22C442238(v892, v1193);
            sub_22C36DD28(v1065, &qword_27D9BC030, &unk_22C911CC0);
            if ((~v1195 & 0xF000000000000007) != 0)
            {
              v920 = v1195;
              v1198 = v1195;
              sub_22C451774(&v1198, MEMORY[0x277D1E058], v1197);
              sub_22C4546F8(v920);
              v1195 = v1197[0];
            }

            v921 = v1069;
            sub_22C907CFC();
            v1194 = sub_22C442238(v921, v1193);
            v1196 = 0;
            sub_22C36DD28(v1069, &qword_27D9BC030, &unk_22C911CC0);
            if ((~v1194 & 0xF000000000000007) != 0)
            {
              v986 = v1194;
              v1198 = v1194;
              v987 = v1196;
              sub_22C451774(&v1198, MEMORY[0x277D1E060], v1197);
              v1196 = v987;
              sub_22C4546F8(v986);
              v1194 = v1197[0];
            }

            sub_22C3A5908(&qword_27D9BC368, &unk_22C912AA0);
            v988 = swift_initStackObject();
            v811 = sub_22C48036C(v988, 3);
            v989 = v1195;
            *v990 = v890 | 0x6000000000000000;
            v990[1] = v989;
            v815 = v1194;
            v990[2] = v1194;

            sub_22C454710(v989);
            sub_22C454710(v815);
            v991 = 0;
            v992 = MEMORY[0x277D84F90];
            while (1)
            {
              if (v991 == 3)
              {

                v1191 = sub_22C47D738(8236, 0xE200000000000000, v992);

                sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
                v996 = swift_initStackObject();
                v1192 = sub_22C48036C(v996, 4);
                v1190 = v997;
                v998 = swift_allocObject();
                v999 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
                v1001 = v999[3];
                v1000 = v999[4];
                sub_22C374168(v999, v1001);
                v1002 = v1168;
                v1003 = v1166;
                v1004 = v1167;
                (*(v1168 + 104))(v1166, *MEMORY[0x277D1E070], v1167);
                v1005 = (*(v1000 + 8))(v1003, v1001, v1000);
                v1007 = v1006;
                (*(v1002 + 8))(v1003, v1004);
                *(v998 + 16) = v1005;
                *(v998 + 24) = v1007;
                v1008 = v1190;
                *v1190 = v998;
                v1009 = swift_allocObject();
                v1198 = 40;
                v1199 = 0xE100000000000000;
                *(v1009 + 16) = sub_22C90A49C();
                *(v1009 + 24) = v1010;
                v1008[1] = v1009;
                v1008[2] = v1191;
                v1011 = swift_allocObject();
                v1198 = 41;
                v1199 = 0xE100000000000000;

                *(v1011 + 16) = sub_22C90A49C();
                *(v1011 + 24) = v1012;
                v1008[3] = v1011;
                v123 = sub_22C47D6D8(v1192);

                sub_22C4546F8(v1195);
                sub_22C4546F8(v1194);

                (*(v1074 + 8))(v1073, v1075);
                return v123;
              }

              if (v991 >= *(v811 + 16))
              {
                break;
              }

              v814 = *(v811 + 8 * v991++ + 32);
              if ((~v814 & 0xF000000000000007) != 0)
              {

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_22C591324();
                  v992 = v994;
                }

                v993 = *(v992 + 16);
                v815 = v993 + 1;
                if (v993 >= *(v992 + 24) >> 1)
                {
                  sub_22C591324();
                  v992 = v995;
                }

                *(v992 + 16) = v815;
                *(v992 + 8 * v993 + 32) = v814;
              }
            }

            __break(1u);
LABEL_343:
            sub_22C591324();
            v813 = v1032;
          }

          (*(v1194 + 8))(v1061, v1192);
          (*(v1074 + 8))(v1073, v1075);
          goto LABEL_195;
        }

        if (v135 == *MEMORY[0x277D1DA58])
        {
          (*(v125 + 96))(v133, v1195);
          (*(v1077 + 32))(v1076, v133, v1078);
          v843 = swift_allocObject();
          *(v843 + 16) = 0;
          *(v843 + 24) = 0xE000000000000000;
          sub_22C591324();
          v845 = v844;
          v846 = *(v844 + 16);
          if (v846 >= *(v844 + 24) >> 1)
          {
            sub_22C591324();
            v845 = v1035;
          }

          *(v845 + 16) = v846 + 1;
          *(v845 + 8 * v846 + 32) = v843;
          v847 = MEMORY[0x2318B4A10]();
          v849 = v848;
          v850 = swift_allocObject();
          *(v850 + 16) = v847;
          *(v850 + 24) = v849;
          v852 = *(v845 + 16);
          v851 = *(v845 + 24);

          if (v852 >= v851 >> 1)
          {
            sub_22C591324();
            v845 = v1036;
          }

          *(v845 + 16) = v852 + 1;
          *(v845 + 8 * v852 + 32) = v850;

          v853 = swift_allocObject();
          *(v853 + 16) = 61;
          *(v853 + 24) = 0xE100000000000000;
          v123 = *(v845 + 16);
          if (v123 >= *(v845 + 24) >> 1)
          {
            sub_22C591324();
            v845 = v1037;
          }

          *(v845 + 16) = v123 + 1;
          *(v845 + 8 * v123 + 32) = v853;
          MEMORY[0x2318B58C0]();
          v854 = v1196;
          sub_22C4429E4();
          v117 = v854;
          if (v854)
          {
            (*(v1194 + 8))(v1062, v1192);
            (*(v1077 + 8))(v1076, v1078);

            return v123;
          }

          v121 = v855;
          (*(v1194 + 8))(v1062, v1192);
          v123 = *(v845 + 16);
          v125 = v123 + 1;
          if (v123 < *(v845 + 24) >> 1)
          {
            goto LABEL_286;
          }

          goto LABEL_345;
        }

        if (v135 == *MEMORY[0x277D1DA28])
        {
          (*(v125 + 96))(v133, v1195);
          (*(v1071 + 32))(v1070, v133, v1072);
          v873 = swift_allocObject();
          *(v873 + 16) = 0;
          *(v873 + 24) = 0xE000000000000000;
          sub_22C591324();
          v875 = v874;
          v876 = *(v874 + 16);
          if (v876 >= *(v874 + 24) >> 1)
          {
            sub_22C591324();
            v875 = v1040;
          }

          *(v875 + 16) = v876 + 1;
          *(v875 + 8 * v876 + 32) = v873;
          v877 = sub_22C9074FC();
          v879 = v878;
          v880 = swift_allocObject();
          *(v880 + 16) = v877;
          *(v880 + 24) = v879;
          v882 = *(v875 + 16);
          v881 = *(v875 + 24);

          if (v882 >= v881 >> 1)
          {
            sub_22C591324();
            v875 = v1041;
          }

          *(v875 + 16) = v882 + 1;
          *(v875 + 8 * v882 + 32) = v880;

          v883 = swift_allocObject();
          *(v883 + 16) = 61;
          *(v883 + 24) = 0xE100000000000000;
          v123 = *(v875 + 16);
          if (v123 >= *(v875 + 24) >> 1)
          {
            sub_22C591324();
            v875 = v1042;
          }

          *(v875 + 16) = v123 + 1;
          *(v875 + 8 * v123 + 32) = v883;
          MEMORY[0x2318B5620]();
          v884 = v1196;
          sub_22C4429E4();
          v1196 = v884;
          if (v884)
          {
            (*(v1194 + 8))(v1063, v1192);
            (*(v1071 + 8))(v1070, v1072);
            goto LABEL_195;
          }

          v937 = v885;
          (*(v1194 + 8))(v1063, v1192);
          v938 = *(v875 + 16);
          if (v938 >= *(v875 + 24) >> 1)
          {
            sub_22C591324();
            v875 = v1051;
          }

          *(v875 + 16) = v938 + 1;
          *(v875 + 8 * v938 + 32) = v937;
          v939 = swift_allocObject();
          *(v939 + 16) = 0;
          *(v939 + 24) = 0xE000000000000000;
          v940 = *(v875 + 16);
          if (v940 >= *(v875 + 24) >> 1)
          {
            sub_22C591324();
            v875 = v1052;
          }

          *(v875 + 16) = v940 + 1;
          *(v875 + 8 * v940 + 32) = v939;
          v941 = sub_22C3DB9B0(v875);

          v942 = swift_allocObject();
          sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
          v943 = swift_allocObject();
          *(v943 + 16) = v941;
          v1195 = v942;
          *(v942 + 16) = v943;
          v1194 = v942 | 0x6000000000000000;
          sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
          v944 = swift_initStackObject();
          *(v944 + 16) = xmmword_22C90D070;
          v945 = swift_allocObject();
          v946 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
          v947 = v946[3];
          v948 = v946[4];
          sub_22C374168(v946, v947);
          v949 = v1168;
          v950 = v1166;
          v951 = v1167;
          (*(v1168 + 104))(v1166, *MEMORY[0x277D1E078], v1167);
          v952 = (*(v948 + 8))(v950, v947, v948);
          v954 = v953;
          (*(v949 + 8))(v950, v951);
          *(v945 + 16) = v952;
          *(v945 + 24) = v954;
          *(v944 + 32) = v945;
          v955 = swift_allocObject();
          v1198 = 40;
          v1199 = 0xE100000000000000;
          *(v955 + 16) = sub_22C90A49C();
          *(v955 + 24) = v956;
          v957 = v1194;
          *(v944 + 40) = v955;
          *(v944 + 48) = v957;
          v958 = swift_allocObject();
          v1198 = 41;
          v1199 = 0xE100000000000000;

          *(v958 + 16) = sub_22C90A49C();
          *(v958 + 24) = v959;
          *(v944 + 56) = v958;
          v123 = sub_22C47D6D8(v944);

          swift_setDeallocating();
          sub_22C58FFB0();
          (*(v1071 + 8))(v1070, v1072);
          return v123;
        }

        if (v135 == *MEMORY[0x277D1DA40])
        {
          v893 = swift_allocObject();
          *(v893 + 16) = 0;
          *(v893 + 24) = 0xE000000000000000;
          sub_22C591324();
          v895 = v894;
          v896 = *(v894 + 16);
          if (v896 >= *(v894 + 24) >> 1)
          {
            sub_22C591324();
            v895 = v1050;
          }

          *(v895 + 16) = v896 + 1;
          *(v895 + 8 * v896 + 32) = v893;
          v897 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
          v898 = v897[3];
          v899 = v897[4];
          sub_22C374168(v897, v898);
          v900 = MEMORY[0x277D1E0B0];
        }

        else
        {
          if (v135 != *MEMORY[0x277D1DA20])
          {
            if (v135 == *MEMORY[0x277D1DA38])
            {
              v123 = swift_allocObject();
              v1198 = 59;
              v1199 = 0xE100000000000000;
              *(v123 + 16) = sub_22C90A49C();
              *(v123 + 24) = v985;
              return v123;
            }

            if (v135 == *MEMORY[0x277D1DAF0])
            {
              sub_22C442014();
              swift_allocError();
              *v1013 = 0;
              *(v1013 + 8) = 0;
              *(v1013 + 16) = 5;
              swift_willThrow();
              return v123;
            }

            if (v135 == *MEMORY[0x277D1DA68])
            {
              v1014 = swift_allocObject();
              *(v1014 + 16) = 0;
              *(v1014 + 24) = 0xE000000000000000;
              sub_22C591324();
              v1016 = v1015;
              v1017 = *(v1015 + 16);
              if (v1017 >= *(v1015 + 24) >> 1)
              {
                sub_22C591324();
                v1016 = v1056;
              }

              *(v1016 + 16) = v1017 + 1;
              *(v1016 + 8 * v1017 + 32) = v1014;
              v1018 = sub_22C90750C();
              v1020 = v1019;
              v1021 = swift_allocObject();
              *(v1021 + 16) = v1018;
              *(v1021 + 24) = v1020;
              v1023 = *(v1016 + 16);
              v1022 = *(v1016 + 24);

              if (v1023 >= v1022 >> 1)
              {
                sub_22C591324();
                v1016 = v1057;
              }

              *(v1016 + 16) = v1023 + 1;
              *(v1016 + 8 * v1023 + 32) = v1021;

              v1024 = swift_allocObject();
              *(v1024 + 16) = 0;
              *(v1024 + 24) = 0xE000000000000000;
              v1025 = *(v1016 + 16);
              if (v1025 >= *(v1016 + 24) >> 1)
              {
                sub_22C591324();
                v1016 = v1058;
              }

              *(v1016 + 16) = v1025 + 1;
              *(v1016 + 8 * v1025 + 32) = v1024;
              v1026 = sub_22C3DB9B0(v1016);

              v1027 = swift_allocObject();
              sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
              v1028 = swift_allocObject();
              *(v1028 + 16) = v1026;
              *(v1027 + 16) = v1028;
              return v1027 | 0x6000000000000000;
            }

            goto LABEL_344;
          }

          v922 = swift_allocObject();
          *(v922 + 16) = 0;
          *(v922 + 24) = 0xE000000000000000;
          sub_22C591324();
          v895 = v923;
          v924 = *(v923 + 16);
          if (v924 >= *(v923 + 24) >> 1)
          {
            sub_22C591324();
            v895 = v1055;
          }

          *(v895 + 16) = v924 + 1;
          *(v895 + 8 * v924 + 32) = v922;
          v925 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
          v898 = v925[3];
          v899 = v925[4];
          sub_22C374168(v925, v898);
          v900 = MEMORY[0x277D1E098];
        }

        v926 = v1168;
        v927 = v1166;
        v928 = v1167;
        (*(v1168 + 104))(v1166, *v900, v1167);
        v929 = (*(v899 + 8))(v927, v898, v899);
        v931 = v930;
        (*(v926 + 8))(v927, v928);
        v932 = swift_allocObject();
        *(v932 + 16) = v929;
        *(v932 + 24) = v931;
        v934 = *(v895 + 16);
        v933 = *(v895 + 24);

        if (v934 >= v933 >> 1)
        {
          sub_22C591324();
          v895 = v1048;
        }

        *(v895 + 16) = v934 + 1;
        *(v895 + 8 * v934 + 32) = v932;

        v935 = swift_allocObject();
        *(v935 + 16) = 10536;
        *(v935 + 24) = 0xE200000000000000;
        v936 = *(v895 + 16);
        if (v936 >= *(v895 + 24) >> 1)
        {
          sub_22C591324();
          v895 = v1049;
        }

        *(v895 + 16) = v936 + 1;
        *(v895 + 8 * v936 + 32) = v935;
        v527 = sub_22C3DB9B0(v895);

LABEL_172:
        v564 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        v565 = swift_allocObject();
        *(v565 + 16) = v527;
        *(v564 + 16) = v565;
        return v564 | 0x6000000000000000;
      }

      (*(v125 + 96))(v133, v1195);
      (*(v1079 + 32))(v1081, v133, v1080);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v630 = swift_allocObject();
      *(v630 + 16) = xmmword_22C90D070;
      v123 = swift_allocObject();
      v773 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
      v774 = v773[3];
      v775 = v773[4];
      sub_22C374168(v773, v774);
      v776 = v1168;
      v777 = v1166;
      v778 = v1167;
      (*(v1168 + 104))(v1166, *MEMORY[0x277D1E0F0], v1167);
      v779 = (*(v775 + 8))(v777, v774, v775);
      v781 = v780;
      (*(v776 + 8))(v777, v778);
      *(v123 + 16) = v779;
      *(v123 + 24) = v781;
      *(v630 + 32) = v123;
      v782 = swift_allocObject();
      v1198 = 40;
      v1199 = 0xE100000000000000;
      *(v782 + 16) = sub_22C90A49C();
      *(v782 + 24) = v783;
      *(v630 + 40) = v782;
      v784 = MEMORY[0x2318B4480]();
      v785 = v1196;
      v786 = sub_22C442770(v784);
      if (!v785)
      {
        v828 = v786;

        v829 = sub_22C3DB9B0(v828);

        v830 = sub_22C47D588(8236, 0xE200000000000000, v829);

        v831 = swift_allocObject();
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        v832 = swift_allocObject();
        *(v832 + 16) = v830;
        *(v831 + 16) = v832;
        *(v630 + 48) = v831 | 0x6000000000000000;
        v833 = swift_allocObject();
        v1198 = 41;
        v1199 = 0xE100000000000000;
        *(v833 + 16) = sub_22C90A49C();
        *(v833 + 24) = v834;
        *(v630 + 56) = v833;
        v123 = sub_22C47D6D8(v630);
        swift_setDeallocating();
        sub_22C58FFB0();
        (*(v1079 + 8))(v1081, v1080);
        return v123;
      }

      (*(v1079 + 8))(v1081, v1080);
    }

LABEL_199:

    *(v630 + 16) = 0;
    swift_setDeallocating();
    goto LABEL_146;
  }

  v137 = MEMORY[0x277D1DED0];
  v138 = *(v125 + 96);
  v125 += 96;
  v138(v133, v124);
  (*(v118 + 32))(v123, v133, v117);
  (*(v118 + 16))(v121, v123, v117);
  v139 = (*(v118 + 88))(v121, v117);
  v140 = v117;
  v141 = v118;
  v142 = v123;
  if (v139 == *MEMORY[0x277D1DED8])
  {
    (*(v118 + 96))(v121, v140);
    v143 = *v121;
    v123 = swift_allocObject();
    v144 = (v118 + 8);
    if (v143 == 1)
    {
      v145 = 1702195796;
      v146 = 0xE400000000000000;
    }

    else
    {
      v145 = 0x65736C6146;
      v146 = 0xE500000000000000;
    }

    v1198 = v145;
    v1199 = v146;
    v176 = sub_22C90A49C();
    v178 = v177;
    (*v144)(v142, v140);
    *(v123 + 16) = v176;
    *(v123 + 24) = v178;
    return v123;
  }

  if (v139 == *v137)
  {
    v1195 = v123;
    (*(v118 + 96))(v121, v140);
    v151 = *v121;
    v152 = swift_allocObject();
    *(v152 + 16) = 0;
    *(v152 + 24) = 0xE000000000000000;
    sub_22C591324();
    v154 = v153;
    v155 = *(v153 + 16);
    if (v155 >= *(v153 + 24) >> 1)
    {
      sub_22C591324();
      v154 = v583;
    }

    *(v154 + 16) = v155 + 1;
    *(v154 + 8 * v155 + 32) = v152;
    v156 = swift_allocObject();
    v1198 = v151;
    *(v156 + 16) = sub_22C90B47C();
    *(v156 + 24) = v157;
    v158 = *(v154 + 16);
    if (v158 >= *(v154 + 24) >> 1)
    {
      sub_22C591324();
      v154 = v584;
    }

    v159 = v1195;
    *(v154 + 16) = v158 + 1;
    *(v154 + 8 * v158 + 32) = v156;
    v160 = swift_allocObject();
    *(v160 + 16) = 0;
    *(v160 + 24) = 0xE000000000000000;
    v161 = *(v154 + 16);
    if (v161 >= *(v154 + 24) >> 1)
    {
      sub_22C591324();
      v154 = v585;
    }

    *(v154 + 16) = v161 + 1;
    *(v154 + 8 * v161 + 32) = v160;
    v162 = sub_22C3DB9B0(v154);

    (*(v141 + 8))(v159, v140);
    v163 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v164 = swift_allocObject();
    *(v164 + 16) = v162;
    *(v163 + 16) = v164;
    return v163 | 0x6000000000000000;
  }

  v179 = v140;
  v180 = v1196;
  if (v139 == *MEMORY[0x277D1DEF0])
  {
    (*(v118 + 96))(v121, v179);
    v181 = swift_allocObject();
    *(v181 + 16) = 0;
    *(v181 + 24) = 0xE000000000000000;
    sub_22C591324();
    v183 = v182;
    v184 = *(v182 + 16);
    if (v184 >= *(v182 + 24) >> 1)
    {
      sub_22C591324();
      v183 = v604;
    }

    *(v183 + 16) = v184 + 1;
    *(v183 + 8 * v184 + 32) = v181;
    v185 = swift_allocObject();
    *(v185 + 16) = sub_22C90A84C();
    *(v185 + 24) = v186;
    v187 = *(v183 + 16);
    if (v187 >= *(v183 + 24) >> 1)
    {
      sub_22C591324();
      v183 = v605;
    }

    *(v183 + 16) = v187 + 1;
    *(v183 + 8 * v187 + 32) = v185;
    v188 = swift_allocObject();
    *(v188 + 16) = 0;
    *(v188 + 24) = 0xE000000000000000;
    v189 = *(v183 + 16);
    if (v189 >= *(v183 + 24) >> 1)
    {
      sub_22C591324();
      v183 = v606;
    }

    *(v183 + 16) = v189 + 1;
    *(v183 + 8 * v189 + 32) = v188;
    v190 = sub_22C3DB9B0(v183);

    (*(v141 + 8))(v142, v179);
    v191 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v192 = swift_allocObject();
    *(v192 + 16) = v190;
    *(v191 + 16) = v192;
    return v191 | 0x6000000000000000;
  }

  v205 = *MEMORY[0x277D1DEF8];
  v1060 = v118;
  if (v139 == v205)
  {
    v1195 = v123;
    v206 = v179;
    (*(v118 + 96))(v121, v179);
    v207 = v121[1];
    v1194 = *v121;
    v1192 = v207;
    v208 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
    v209 = v208[3];
    v210 = v208[4];
    sub_22C374168(v208, v209);
    v211 = v1168;
    v212 = v1166;
    v213 = v1167;
    (*(v1168 + 104))(v1166, *MEMORY[0x277D1E100], v1167);
    v214 = (*(v210 + 8))(v212, v209, v210);
    v216 = v215;
    (*(v211 + 8))(v212, v213);
    if (!v1171)
    {

      v219 = v206;
      v220 = v1060;
      v221 = v1195;
      v286 = v1194;
      v222 = v1192;
LABEL_99:
      (*(v220 + 8))(v221, v219);
      v352 = swift_allocObject();
      *(v352 + 16) = v286;
      *(v352 + 24) = v222;
      v353 = swift_allocObject();
      *(v353 + 16) = 2;
      *(v353 + 24) = 1;
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      v354 = swift_allocObject();
      *(v354 + 16) = v352;
      *(v353 + 32) = v354;
      v355 = swift_allocObject();
      *(v355 + 16) = 3;
      *(v355 + 24) = 1;
      v356 = swift_allocObject();
      *(v356 + 16) = v353 | 0xA000000000000000;
      *(v355 + 32) = v356;
      return v355 | 0xA000000000000000;
    }

    if (v214 == v1160 && v216 == v1171)
    {

      v219 = v206;
      v220 = v1060;
      v223 = v1155;
      v221 = v1195;
      v222 = v1192;
      if (!v1155)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v218 = sub_22C90B4FC();

      v219 = v206;
      v220 = v1060;
      v221 = v1195;
      v222 = v1192;
      if ((v218 & 1) == 0)
      {
        goto LABEL_98;
      }

      v223 = v1155;
      if (!v1155)
      {
        goto LABEL_98;
      }
    }

    v287 = sub_22C90756C();
    v1198 = v1149;
    v1199 = v223;
    MEMORY[0x28223BE20](v287);
    *(&v1059 - 2) = &v1198;
    v288 = sub_22C5EC08C(sub_22C3AC11C, (&v1059 - 4), v287);

    if (v288)
    {
      v286 = sub_22C90A2CC();
      v290 = v289;

      v222 = v290;
      v221 = v1195;
      goto LABEL_99;
    }

    v221 = v1195;
LABEL_98:
    v286 = v1194;
    goto LABEL_99;
  }

  v117 = v1193;
  if (v139 != *MEMORY[0x277D1DEE8])
  {
    if (v139 == *MEMORY[0x277D1DF00])
    {
      v270 = v1060;
      (*(v1060 + 96))(v121, v179);
      v271 = sub_22C44B8C8(*v121, v121[1], v1160, v1171);
      if (!v180)
      {
        v123 = v271;
        (*(v270 + 8))(v142, v179);

        return v123;
      }

      (*(v270 + 8))(v123, v179);
LABEL_195:

      return v123;
    }

    if (v139 == *MEMORY[0x277D1DEE0])
    {
      sub_22C442014();
      swift_allocError();
      *v306 = 0;
      *(v306 + 8) = 0;
      *(v306 + 16) = 5;
      swift_willThrow();
      (*(v1060 + 8))(v123, v179);
      return v123;
    }

LABEL_344:
    sub_22C90B4EC();
    __break(1u);
LABEL_345:
    sub_22C591324();
    v845 = v1043;
LABEL_286:
    *(v845 + 16) = v125;
    *(v845 + 8 * v123 + 32) = v121;
    v901 = swift_allocObject();
    *(v901 + 16) = 0;
    *(v901 + 24) = 0xE000000000000000;
    v902 = *(v845 + 16);
    if (v902 >= *(v845 + 24) >> 1)
    {
      sub_22C591324();
      v845 = v1044;
    }

    *(v845 + 16) = v902 + 1;
    *(v845 + 8 * v902 + 32) = v901;
    v903 = sub_22C3DB9B0(v845);

    v904 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v905 = swift_allocObject();
    *(v905 + 16) = v903;
    v906 = v904;
    *(v904 + 16) = v905;
    v907 = swift_allocObject();
    *(v907 + 16) = 0;
    *(v907 + 24) = 0xE000000000000000;
    sub_22C591324();
    v123 = v908;
    v909 = *(v908 + 16);
    if (v909 >= *(v908 + 24) >> 1)
    {
      sub_22C591324();
      v123 = v1045;
    }

    *(v123 + 16) = v909 + 1;
    *(v123 + 8 * v909 + 32) = v907;
    v910 = MEMORY[0x2318B4A20]();
    v912 = v911;
    v913 = swift_allocObject();
    *(v913 + 16) = v910;
    *(v913 + 24) = v912;
    v915 = *(v123 + 16);
    v914 = *(v123 + 24);

    if (v915 >= v914 >> 1)
    {
      sub_22C591324();
      v123 = v1046;
    }

    *(v123 + 16) = v915 + 1;
    *(v123 + 8 * v915 + 32) = v913;

    v916 = swift_allocObject();
    *(v916 + 16) = 23357;
    *(v916 + 24) = 0xE200000000000000;
    v917 = *(v123 + 16);
    if (v917 >= *(v123 + 24) >> 1)
    {
      sub_22C591324();
      v123 = v1047;
    }

    *(v123 + 16) = v917 + 1;
    *(v123 + 8 * v917 + 32) = v916;
    v918 = sub_22C9083FC();
    v919 = sub_22C442770(v918);
    v1196 = v117;
    if (v117)
    {
      (*(v1077 + 8))(v1076, v1078);

      goto LABEL_195;
    }

    v960 = v919;

    v961 = sub_22C47D738(8236, 0xE200000000000000, v960);

    v962 = *(v123 + 16);
    if (v962 >= *(v123 + 24) >> 1)
    {
      sub_22C591324();
      v123 = v1053;
    }

    *(v123 + 16) = v962 + 1;
    *(v123 + 8 * v962 + 32) = v961;
    v963 = swift_allocObject();
    *(v963 + 16) = 93;
    *(v963 + 24) = 0xE100000000000000;
    v964 = *(v123 + 16);
    if (v964 >= *(v123 + 24) >> 1)
    {
      sub_22C591324();
      v123 = v1054;
    }

    *(v123 + 16) = v964 + 1;
    *(v123 + 8 * v964 + 32) = v963;
    v965 = sub_22C3DB9B0(v123);

    v966 = swift_allocObject();
    v967 = swift_allocObject();
    *(v967 + 16) = v965;
    *(v966 + 16) = v967;
    v1194 = v966;
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v968 = swift_initStackObject();
    *(v968 + 16) = xmmword_22C90F870;
    *(v968 + 32) = v906 | 0x6000000000000000;
    *(v968 + 40) = v966 | 0x6000000000000000;
    v1195 = v906;

    v1192 = sub_22C47D738(8236, 0xE200000000000000, v968);
    swift_setDeallocating();
    sub_22C58FFB0();
    v969 = swift_initStackObject();
    *(v969 + 16) = xmmword_22C90D070;
    v970 = swift_allocObject();
    v971 = (v1193 + *(type metadata accessor for StatefulExpressionParser(0) + 36));
    v973 = v971[3];
    v972 = v971[4];
    sub_22C374168(v971, v973);
    v974 = v1168;
    v975 = v1166;
    v976 = v1167;
    (*(v1168 + 104))(v1166, *MEMORY[0x277D1E0B8], v1167);
    v977 = (*(v972 + 8))(v975, v973, v972);
    v979 = v978;
    (*(v974 + 8))(v975, v976);
    *(v970 + 16) = v977;
    *(v970 + 24) = v979;
    *(v969 + 32) = v970;
    v980 = swift_allocObject();
    v1198 = 40;
    v1199 = 0xE100000000000000;
    *(v980 + 16) = sub_22C90A49C();
    *(v980 + 24) = v981;
    v982 = v1192;
    *(v969 + 40) = v980;
    *(v969 + 48) = v982;
    v983 = swift_allocObject();
    v1198 = 41;
    v1199 = 0xE100000000000000;

    *(v983 + 16) = sub_22C90A49C();
    *(v983 + 24) = v984;
    *(v969 + 56) = v983;
    v123 = sub_22C47D6D8(v969);

    swift_setDeallocating();
    sub_22C58FFB0();
    (*(v1077 + 8))(v1076, v1078);
    return v123;
  }

  v230 = v1060;
  (*(v1060 + 96))(v121, v179);
  v123 = *v121;
  v231 = sub_22C442770(*v121);
  if (v180)
  {
    (*(v230 + 8))(v142, v179);
    goto LABEL_195;
  }

  v1195 = v142;
  v329 = sub_22C3DB9B0(v231);

  v330 = sub_22C47D588(8236, 0xE200000000000000, v329);

  v331 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v332 = swift_allocObject();
  *(v332 + 16) = v330;
  *(v331 + 16) = v332;
  v333 = swift_allocObject();
  *(v333 + 16) = 91;
  *(v333 + 24) = 0xE100000000000000;
  v334 = sub_22C47D60C(v333, v331 | 0x6000000000000000);

  v335 = swift_allocObject();
  *(v335 + 16) = 93;
  *(v335 + 24) = 0xE100000000000000;
  v1185 = sub_22C47D60C(v334, v335);

  v1196 = &v1059;
  v1186 = v123;
  v1198 = v123;
  MEMORY[0x28223BE20](v336);
  *(&v1059 - 2) = v117;
  sub_22C3A5908(&qword_27D9BB090, &unk_22C90D930);
  sub_22C3D32C8(&qword_27D9BC370, &qword_27D9BB090, &unk_22C90D930, MEMORY[0x277D83970]);
  if (sub_22C90A4FC())
  {
    v1196 = 0;
    v337 = v1186;
    v338 = *(v1186 + 2);
    if (v338)
    {
      v1184 = v179;
      v1198 = MEMORY[0x277D84F90];
      sub_22C3B69C4(0, v338, 0);
      *&v1193 = *(v1194 + 16);
      v339 = v1198;
      v340 = &v337[(*(v1194 + 80) + 32) & ~*(v1194 + 80)];
      v1191 = *(v1194 + 72);
      v1194 += 16;
      v1190 = v1194 + 16;
      LODWORD(v1189) = *MEMORY[0x277D1D798];
      v1188 = (v1177 + 104);
      v1187 = v1177 + 32;
      v341 = v1138;
      v342 = v1129;
      do
      {
        v343 = v1176;
        v344 = v1192;
        (v1193)(v1176, v340, v1192);
        v345 = swift_allocBox();
        (*v1190)(v346, v343, v344);
        *v342 = v345;
        (*v1188)(v342, v1189, v341);
        v1198 = v339;
        v348 = *(v339 + 16);
        v347 = *(v339 + 24);
        if (v348 >= v347 >> 1)
        {
          sub_22C3B69C4(v347 > 1, v348 + 1, 1);
          v342 = v1129;
          v339 = v1198;
        }

        *(v339 + 16) = v348 + 1;
        (*(v1177 + 32))(v339 + ((*(v1177 + 80) + 32) & ~*(v1177 + 80)) + *(v1177 + 72) * v348, v342, v341);
        v340 += v1191;
        --v338;
      }

      while (v338);
      (*(v1060 + 8))(v1195, v1184);
    }

    else
    {

      (*(v1060 + 8))(v1195, v179);
      v339 = MEMORY[0x277D84F90];
      v341 = v1138;
    }

    type metadata accessor for PromptTreeIdentifier.Label(0);
    v448 = swift_allocBox();
    v450 = v449;
    v451 = swift_allocObject();
    *(v451 + 16) = v339;
    *(v451 + 24) = 0;
    *(v451 + 32) = 4;
    *v450 = v451;
    (*(v1177 + 104))(v450, *MEMORY[0x277D1D7E8], v341);
    swift_storeEnumTagMultiPayload();
    return v448 | 0x2000000000000000;
  }

  else
  {
    (*(v1060 + 8))(v1195, v179);

    return v1185;
  }
}

uint64_t sub_22C44B8C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    goto LABEL_4;
  }

  sub_22C44BD38(a3, a4);
  if (v4)
  {

LABEL_4:
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0xE000000000000000;
    sub_22C591324();
    v10 = v9;
    v11 = *(v9 + 16);
    v12 = v11 + 1;
    if (v11 >= *(v9 + 24) >> 1)
    {
      sub_22C591324();
      v10 = v34;
    }

    *(v10 + 16) = v12;
    *(v10 + 8 * v11 + 32) = v8;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v14 = *(v10 + 24);
    v15 = v11 + 2;

    if ((v11 + 2) > (v14 >> 1))
    {
      sub_22C591324();
      v10 = v35;
    }

    *(v10 + 16) = v15;
    *(v10 + 8 * v12 + 32) = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0xE000000000000000;
    if ((v11 + 3) > *(v10 + 24) >> 1)
    {
      sub_22C591324();
      v10 = v36;
    }

    *(v10 + 16) = v11 + 3;
    *(v10 + 8 * v15 + 32) = v16;
    v17 = sub_22C3DB9B0(v10);

    goto LABEL_11;
  }

  sub_22C6054B8(a1, a2, v7);
  if (!v21)
  {

    goto LABEL_4;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0xE000000000000000;
  sub_22C591324();
  v24 = v23;
  v25 = *(v23 + 16);
  if (v25 >= *(v23 + 24) >> 1)
  {
    sub_22C591324();
    v24 = v37;
  }

  *(v24 + 16) = v25 + 1;
  *(v24 + 8 * v25 + 32) = v22;
  v26 = sub_22C90A2AC();
  v28 = v27;

  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v28;
  v30 = *(v24 + 16);
  v31 = *(v24 + 24);

  if (v30 >= v31 >> 1)
  {
    sub_22C591324();
    v24 = v38;
  }

  *(v24 + 16) = v30 + 1;
  *(v24 + 8 * v30 + 32) = v29;

  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0xE000000000000000;
  v33 = *(v24 + 16);
  if (v33 >= *(v24 + 24) >> 1)
  {
    sub_22C591324();
    v24 = v39;
  }

  *(v24 + 16) = v33 + 1;
  *(v24 + 8 * v33 + 32) = v32;
  v17 = sub_22C3DB9B0(v24);

LABEL_11:
  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C44BCBC(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + *(type metadata accessor for StatefulExpressionParser(0) + 52)) + 16))
  {

    sub_22C628274();
    v3 = v2;

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t *sub_22C44BD38(uint64_t a1, void *a2)
{
  v323 = a2;
  v4 = sub_22C9099FC();
  v292 = *(v4 - 8);
  v293 = v4;
  MEMORY[0x28223BE20](v4);
  *(&v291 + 1) = &v279 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_22C908DAC();
  v320 = *(v322 - 1);
  MEMORY[0x28223BE20](v322);
  v297 = (&v279 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v316 = sub_22C9063DC();
  v281 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v317 = &v279 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v327 = &v279 - v9;
  v10 = sub_22C909A3C();
  v11 = *(v10 - 8);
  v324 = v10;
  v325 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v315 = &v279 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v326 = &v279 - v14;
  v15 = sub_22C90941C();
  v16 = *(v15 - 8);
  v303 = v15;
  v304 = v16;
  MEMORY[0x28223BE20](v15);
  v280 = &v279 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_22C90998C();
  v298 = *(v306 - 8);
  MEMORY[0x28223BE20](v306);
  v305 = &v279 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_22C90981C();
  v282 = *(v314 - 1);
  v19 = MEMORY[0x28223BE20](v314);
  v302 = &v279 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v288 = &v279 - v21;
  v295 = sub_22C3A5908(&qword_27D9BC398, &qword_22C912AC8);
  v22 = MEMORY[0x28223BE20](v295);
  v294 = (&v279 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v22);
  v287 = &v279 - v25;
  MEMORY[0x28223BE20](v24);
  v296 = (&v279 - v26);
  v27 = sub_22C90977C();
  v284 = *(v27 - 8);
  v285 = v27;
  MEMORY[0x28223BE20](v27);
  v283 = &v279 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for RenderableTool(0);
  v29 = MEMORY[0x28223BE20](v307);
  v286 = &v279 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v318 = &v279 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v301 = (&v279 - v34);
  MEMORY[0x28223BE20](v33);
  v289 = (&v279 - v35);
  v36 = sub_22C908D6C();
  v328 = *(v36 - 8);
  *&v329 = v36;
  MEMORY[0x28223BE20](v36);
  v342 = (&v279 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v312 = sub_22C908EAC();
  v321 = *(v312 - 8);
  MEMORY[0x28223BE20](v312);
  v313 = &v279 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v279 - v40;
  v42 = sub_22C908ABC();
  v43 = *(v42 - 1);
  v44 = MEMORY[0x28223BE20](v42);
  v300 = &v279 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v279 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v279 - v49;
  *&v310 = type metadata accessor for StatefulExpressionParser(0);
  v51 = *(v310 + 24);
  v319 = v2;
  v290 = v51;
  v52 = a1;
  v53 = v323;
  sub_22C908ACC();
  if (sub_22C370B74(v41, 1, v42) == 1)
  {
    sub_22C36DD28(v41, &qword_27D9BC0B0, &unk_22C912AD0);
    sub_22C442014();
    swift_allocError();
    *v54 = v52;
    *(v54 + 8) = v53;
    *(v54 + 16) = 2;
    swift_willThrow();

    return v42;
  }

  v279 = v52;
  (*(v43 + 32))(v50, v41, v42);
  v56 = (v43 + 16);
  v55 = *(v43 + 16);
  v299 = v50;
  v55(v48, v50, v42);
  v57 = v48;
  v58 = v43 + 88;
  v59 = *(v43 + 88);
  *&v291 = v57;
  v60 = v59();
  v61 = *MEMORY[0x277D1E8E0];
  v62 = v60 == *MEMORY[0x277D1E8E0] || v60 == *MEMORY[0x277D1E8C8];
  v63 = MEMORY[0x277D84F90];
  v309 = v42;
  v311 = v43;
  if (v62)
  {
    v290 = v59;
    *(&v291 + 1) = v43 + 88;
    v292 = v55;
    v293 = (v43 + 16);
    LODWORD(v297) = v61;
    v64 = v42;
    v65 = v321;
    v66 = v327;
  }

  else
  {
    if (v60 == *MEMORY[0x277D1E8D0])
    {
      v67 = v291;
      (*(v311 + 96))(v291, v309);
      v68 = v320;
      v42 = v297;
      v69 = v322;
      (*(v320 + 32))(v297, v67, v322);
      v70 = *(&v291 + 1);
      sub_22C908D7C();
      v71 = v319;
      v72 = sub_22C908A1C();
      (*(v292 + 1))(v70, v293);
      if (v72 && (v73 = *(v72 + 16), , v73))
      {
        v74 = v310;
        v75 = &v71[*(v310 + 28)];
        v76 = v75[3];
        v328 = v75[4];
        *&v329 = v76;
        v342 = sub_22C374168(v75, v76);
        v327 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
        v77 = v286;
        sub_22C908D7C();
        v78 = *MEMORY[0x277D1ECE8];
        v79 = sub_22C9036EC();
        (*(*(v79 - 8) + 104))(v77, v78, v79);
        sub_22C9037DC();
        *&v334 = v63;
        sub_22C457274(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
        v42 = &qword_27D9BB828;
        sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
        sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
        sub_22C90AE4C();
        swift_storeEnumTagMultiPayload();
        v80 = v308;
        (*(v328 + 32))(&v338, v77, *&v71[*(v74 + 44)], v329);
        if (v80)
        {
          sub_22C456BD8(v77, type metadata accessor for RenderableTool);
        }

        else
        {
          v308 = 0;
          sub_22C456BD8(v77, type metadata accessor for RenderableTool);
          v334 = v338;
          v335 = v339;
          v336 = v340;
          v337 = v341;
          v210 = *(&v338 + 1);
          v209 = v338;
          v211 = v339;
          v212 = v340;
          v213 = BYTE8(v340);
          sub_22C456C30(v338, *(&v338 + 1), v339, *(&v339 + 1), v340, SBYTE8(v340));
          sub_22C3E022C(&v334);
          if (v213 != 1)
          {

            v42 = v209;
            sub_22C909F0C();
            sub_22C909F0C();
            sub_22C456CE4(v209, v210, v211, *(&v211 + 1), v212, 0);
            (*(v320 + 8))(v297, v322);
            (*(v311 + 8))(v299, v309);
            return v42;
          }

          LOBYTE(v332[0]) = v209;
          sub_22C3E01D8();
          swift_willThrowTypedImpl();
          sub_22C442014();
          swift_allocError();
          *v214 = v209;
          *(v214 + 8) = 0;
          *(v214 + 16) = 4;
          swift_willThrow();
        }

        (*(v320 + 8))(v297, v322);
      }

      else
      {
        sub_22C442014();
        swift_allocError();
        v100 = v323;
        *v101 = v279;
        *(v101 + 8) = v100;
        *(v101 + 16) = 2;
        swift_willThrow();
        v102 = *(v68 + 8);

        v102(v42, v69);
      }

      goto LABEL_69;
    }

    v292 = v55;
    if (v60 != *MEMORY[0x277D1E8D8])
    {
      goto LABEL_110;
    }

    v81 = v291;
    (*(v311 + 96))(v291, v309);
    v64 = sub_22C908A7C();
    v43 = *(v64 - 8);
    v82 = (*(v43 + 88))(v81, v64);
    v65 = v321;
    v66 = v327;
    if (v82 != *MEMORY[0x277D1E8B8])
    {
      goto LABEL_110;
    }

    v290 = v59;
    *(&v291 + 1) = v58;
    v293 = v56;
    LODWORD(v297) = v61;
  }

  v83 = v291;
  (*(v43 + 96))(v291, v64);
  v84 = v313;
  v85 = v83;
  v86 = v312;
  (*(v65 + 32))(v313, v85, v312);
  v87 = v65;
  if (*v319 != 1)
  {
LABEL_29:
    v105 = v300;
    v106 = v309;
    v292(v300, v299, v309);
    v107 = (v290)(v105, v106);
    v108 = *(v311 + 8);
    v311 += 8;
    v300 = v108;
    (v108)(v105, v106);
    sub_22C3A5908(&qword_27D9BB818, qword_22C910430);
    v109 = v318;
    (*(v87 + 16))(v318, v84, v86);
    v110 = sub_22C9036EC();
    if (v107 == v297)
    {
      v111 = MEMORY[0x277D1ECE0];
    }

    else
    {
      v111 = MEMORY[0x277D1ECD0];
    }

    (*(*(v110 - 8) + 104))(v109, *v111, v110);
    sub_22C9037DC();
    *&v338 = MEMORY[0x277D84F90];
    sub_22C457274(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    v112 = v318;
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
    sub_22C90AE4C();
    v113 = v319;
    v114 = v310;
    swift_storeEnumTagMultiPayload();
    v42 = v301;
    sub_22C456AA8(v112, v301, type metadata accessor for RenderableTool);
    v115 = &v113[*(v114 + 28)];
    v116 = v115[3];
    v117 = v115[4];
    sub_22C374168(v115, v116);
    v118 = *&v113[*(v114 + 44)];
    v119 = v308;
    (*(v117 + 32))(&v338, v42, v118, v116, v117);
    v120 = v321;
    v121 = v313;
    v122 = v119;
    if (v119)
    {
      goto LABEL_35;
    }

    v334 = v338;
    v335 = v339;
    v336 = v340;
    v337 = v341;
    v123 = BYTE8(v340);
    v290 = *(&v338 + 1);
    v297 = v338;
    v291 = v339;
    v292 = v340;
    sub_22C456C30(v338, *(&v338 + 1), v339, *(&v339 + 1), v340, SBYTE8(v340));
    sub_22C3E022C(&v334);
    if (v123)
    {
      v124 = v297;
      LOBYTE(v332[0]) = v297;
      sub_22C3E01D8();
      swift_willThrowTypedImpl();
      sub_22C442014();
      swift_allocError();
      *v125 = v124;
      *(v125 + 8) = 0;
      *(v125 + 16) = 4;
      swift_willThrow();
LABEL_35:
      sub_22C456BD8(v42, type metadata accessor for RenderableTool);
      (*(v120 + 8))(v121, v312);
      (v300)(v299, v309);
      return v42;
    }

    v143 = v115[3];
    v142 = v115[4];
    sub_22C374168(v115, v143);

    v144 = sub_22C4B9B90(MEMORY[0x277D84F90]);
    (*(v142 + 16))(v332, v42, v144, v118, v143, v142);

    v331[0] = v332[0];
    v331[1] = v332[1];
    v331[2] = v332[2];
    v331[3] = v333;
    v156 = v333;

    sub_22C3E022C(v331);
    v157 = (v156 + 64);
    v158 = 1 << *(v156 + 32);
    v159 = -1;
    if (v158 < 64)
    {
      v159 = ~(-1 << v158);
    }

    v160 = v159 & *(v156 + 64);
    v161 = (v158 + 63) >> 6;
    *&v329 = v282 + 16;
    v342 = (v282 + 8);
    v320 = v156;

    v162 = MEMORY[0x277D84F98];
    v308 = 0;
    v318 = (v156 + 64);
    *&v310 = v161;
    v163 = MEMORY[0x277D84F90];
    while (1)
    {
      v293 = v162;
      if (!v160)
      {
        while (1)
        {
          v164 = v122 + 1;
          if (__OFADD__(v122, 1))
          {
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

          if (v164 >= v161)
          {
            break;
          }

          v160 = *&v157[8 * v164];
          ++v122;
          if (v160)
          {
            v122 = v164;
            goto LABEL_51;
          }
        }

        v198 = sub_22C908DCC();
        v199 = *(v198 + 16);
        if (v199)
        {
          v330 = v163;
          sub_22C3B6FE8(0, v199, 0);
          v200 = v330;
          v201 = v198 + ((*(v282 + 80) + 32) & ~*(v282 + 80));
          v328 = *(v282 + 72);
          v202 = *(v282 + 16);
          v322 = v198;
          v323 = v202;
          v203 = v280;
          do
          {
            v204 = v302;
            v205 = v314;
            v206 = (v323)(v302, v201, v314);
            MEMORY[0x2318B6CE0](v206);
            (*v342)(v204, v205);
            v330 = v200;
            v208 = *(v200 + 16);
            v207 = *(v200 + 24);
            if (v208 >= v207 >> 1)
            {
              sub_22C3B6FE8(v207 > 1, v208 + 1, 1);
              v200 = v330;
            }

            *(v200 + 16) = v208 + 1;
            (*(v304 + 32))(v200 + ((*(v304 + 80) + 32) & ~*(v304 + 80)) + *(v304 + 72) * v208, v203, v303);
            v201 += v328;
            --v199;
          }

          while (v199);

          v66 = v327;
        }

        else
        {

          v200 = MEMORY[0x277D84F90];
        }

        MEMORY[0x28223BE20](v222);
        v223 = v319;
        *(&v279 - 2) = v319;
        v224 = v308;
        v225 = sub_22C8F46F4(sub_22C456D98, (&v279 - 4), v200);

        MEMORY[0x28223BE20](v226);
        *(&v279 - 2) = v223;
        v227 = sub_22C604C2C(MEMORY[0x277D84F90], sub_22C456DB4, (&v279 - 4), v225);

        v229 = v312;
        v230 = v321;
        v303 = *(v227 + 16);
        if (!v303)
        {

LABEL_99:
          (*(v230 + 8))(v313, v229);
          v42 = v297;
          sub_22C456CE4(v297, v290, v291, *(&v291 + 1), v292, 0);
          sub_22C456BD8(v301, type metadata accessor for RenderableTool);
          (v300)(v299, v309);
          return v42;
        }

        v308 = v224;
        v231 = 0;
        v302 = (v227 + ((*(v298 + 80) + 32) & ~*(v298 + 80)));
        v296 = (v298 + 16);
        v232 = v324;
        *&v329 = v325 + 8;
        v314 = (v281 + 8);
        v294 = (v298 + 8);
        v233 = MEMORY[0x277D84F98];
        *&v228 = 136315138;
        v310 = v228;
        v234 = v317;
        v319 = (v325 + 16);
        v295 = v227;
        while (2)
        {
          v307 = v233;
          if (v231 < *(v227 + 16))
          {
            v235 = v231;
            v236 = (*(v298 + 16))(v305, &v302[*(v298 + 72) * v231], v306);
            v304 = v235 + 1;
            v237 = MEMORY[0x2318B6E50](v236);
            v238 = 0;
            v323 = *(v237 + 16);
            v322 = MEMORY[0x277D84F98];
            v239 = v326;
            v320 = v237;
            while (v323 != v238)
            {
              if (v238 >= *(v237 + 16))
              {
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
                goto LABEL_103;
              }

              v240 = v237 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
              v241 = *(v325 + 72);
              v342 = v238;
              v242 = *(v325 + 16);
              v242(v239, v240 + v241 * v238, v232);
              sub_22C909A1C();
              v243 = v232;
              v244 = sub_22C90993C();
              v245 = sub_22C370B74(v66, 1, v244);
              v328 = v329 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              if (v245 == 1)
              {
                sub_22C36DD28(v66, &qword_27D9BC390, &qword_22C912AC0);
                sub_22C903F7C();
                v246 = v315;
                v242(v315, v239, v243);
                v247 = v234;
                v248 = sub_22C9063CC();
                v249 = sub_22C90AACC();
                if (os_log_type_enabled(v248, v249))
                {
                  v250 = swift_slowAlloc();
                  v251 = swift_slowAlloc();
                  v330 = v251;
                  *v250 = v310;
                  v252 = sub_22C909A2C();
                  v254 = v253;
                  v255 = *v329;
                  (*v329)(v246, v324);
                  v256 = sub_22C36F9F4(v252, v254, &v330);
                  v230 = v321;

                  *(v250 + 4) = v256;
                  sub_22C36FF94(v251);
                  MEMORY[0x2318B9880](v251, -1, -1);
                  v257 = v250;
                  v232 = v324;
                  MEMORY[0x2318B9880](v257, -1, -1);

                  v234 = v317;
                  (*v314)(v317, v316);
                }

                else
                {
                  v232 = v243;

                  v255 = *v329;
                  (*v329)(v246, v232);
                  (*v314)(v247, v316);
                  v234 = v247;
                }

                v66 = v327;
              }

              else
              {
                v258 = sub_22C9098BC();
                v318 = v259;
                (*(*(v244 - 8) + 8))(v66, v244);
                v260 = sub_22C909A2C();
                v262 = v261;
                v263 = v322;
                swift_isUniquelyReferenced_nonNull_native();
                v330 = v263;
                v264 = sub_22C36E2BC(v260, v262);
                if (__OFADD__(*(v263 + 16), (v265 & 1) == 0))
                {
                  goto LABEL_101;
                }

                v266 = v264;
                v267 = v265;
                sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
                if (sub_22C90B15C())
                {
                  v268 = sub_22C36E2BC(v260, v262);
                  v230 = v321;
                  v234 = v317;
                  if ((v267 & 1) != (v269 & 1))
                  {
                    goto LABEL_109;
                  }

                  v266 = v268;
                }

                else
                {
                  v230 = v321;
                  v234 = v317;
                }

                v270 = v330;
                v322 = v330;
                if (v267)
                {
                  v271 = (v330[7] + 16 * v266);
                  v272 = v318;
                  *v271 = v258;
                  v271[1] = v272;
                }

                else
                {
                  v330[(v266 >> 6) + 8] |= 1 << v266;
                  v273 = (v270[6] + 16 * v266);
                  *v273 = v260;
                  v273[1] = v262;
                  v274 = (v270[7] + 16 * v266);
                  v275 = v318;
                  *v274 = v258;
                  v274[1] = v275;
                  v276 = v270[2];
                  v194 = __OFADD__(v276, 1);
                  v277 = v276 + 1;
                  if (v194)
                  {
                    goto LABEL_102;
                  }

                  v270[2] = v277;
                }

                v255 = *v329;
                v66 = v327;
                v232 = v324;
              }

              v239 = v326;
              v255(v326, v232);
              v238 = v342 + 1;
              v237 = v320;
            }

            v278 = v308;
            v233 = sub_22C451FD8(v322, v307);
            v308 = v278;
            (*v294)(v305, v306);
            v231 = v304;
            v227 = v295;
            if (v304 != v303)
            {
              continue;
            }

            v229 = v312;
            goto LABEL_99;
          }

          break;
        }

LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

LABEL_51:
      v165 = __clz(__rbit64(v160)) | (v122 << 6);
      v166 = *(v320 + 56);
      v167 = (*(v320 + 48) + 16 * v165);
      v169 = *v167;
      v168 = v167[1];
      v170 = v166 + *(*(type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0) - 8) + 72) * v165;
      v171 = v295;
      v172 = v296;
      sub_22C456B78(v170, v296 + *(v295 + 48), type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
      *v172 = v169;
      v172[1] = v168;
      v173 = v287;
      sub_22C3E8FB4(v172, v287, &qword_27D9BC398, &qword_22C912AC8);

      v174 = *(v171 + 48);
      v175 = v288;
      v176 = v314;
      (*v329)(v288, v173 + v174, v314);
      sub_22C456BD8(v173 + v174, type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
      v177 = sub_22C9097DC();
      v179 = v178;
      (*v342)(v175, v176);
      v180 = v294;
      sub_22C3E8FB4(v172, v294, &qword_27D9BC398, &qword_22C912AC8);
      v181 = v180[1];
      v322 = *v180;
      v328 = v181;
      v182 = v293;
      swift_isUniquelyReferenced_nonNull_native();
      v330 = v182;
      v323 = v177;
      v183 = sub_22C36E2BC(v177, v179);
      if (__OFADD__(*(v182 + 16), (v184 & 1) == 0))
      {
        goto LABEL_106;
      }

      v185 = v183;
      v186 = v184;
      sub_22C3A5908(&qword_27D9BC3A0, &qword_22C922690);
      if (sub_22C90B15C())
      {
        v187 = sub_22C36E2BC(v323, v179);
        v66 = v327;
        if ((v186 & 1) != (v188 & 1))
        {
          goto LABEL_109;
        }

        v185 = v187;
        if (v186)
        {
LABEL_58:

          v162 = v330;
          v196 = (v330[7] + 16 * v185);
          v197 = v328;
          *v196 = v322;
          v196[1] = v197;

          sub_22C36DD28(v296, &qword_27D9BC398, &qword_22C912AC8);
          goto LABEL_59;
        }
      }

      else
      {
        v66 = v327;
        if (v186)
        {
          goto LABEL_58;
        }
      }

      v162 = v330;
      v330[(v185 >> 6) + 8] |= 1 << v185;
      v189 = (v162[6] + 16 * v185);
      v190 = v322;
      *v189 = v323;
      v189[1] = v179;
      v191 = (v162[7] + 16 * v185);
      v192 = v328;
      *v191 = v190;
      v191[1] = v192;
      sub_22C36DD28(v296, &qword_27D9BC398, &qword_22C912AC8);
      v193 = v162[2];
      v194 = __OFADD__(v193, 1);
      v195 = v193 + 1;
      if (v194)
      {
        goto LABEL_107;
      }

      v162[2] = v195;
LABEL_59:
      v163 = MEMORY[0x277D84F90];
      v157 = v318;
      v160 &= v160 - 1;
      sub_22C456BD8(v294 + *(v295 + 48), type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
      v161 = v310;
    }
  }

  v88 = sub_22C908DEC();
  v89 = 0;
  v90 = *(v88 + 16);
  v322 = (v328 + 16);
  v323 = v90;
  v320 = v328 + 88;
  v91 = *MEMORY[0x277D72188];
  v92 = *MEMORY[0x277D72178];
  v93 = (v328 + 8);
  v94 = v342;
  while (1)
  {
    if (v323 == v89)
    {
      v89 = v323;
      goto LABEL_27;
    }

    v95 = v328;
    v96 = v88;
    v97 = v88 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v89;
    v98 = v329;
    (*(v328 + 16))(v94, v97, v329);
    v99 = (*(v95 + 88))(v94, v98);
    if (v99 == v91)
    {
      break;
    }

    if (v99 == v92)
    {
      goto LABEL_26;
    }

    (*v93)(v342, v329);
    ++v89;
    v88 = v96;
  }

  (*v93)(v342, v329);
LABEL_26:
  v88 = v96;
LABEL_27:
  v103 = *(v88 + 16);
  v104 = v321;
  v66 = v327;
  if (v89 == v103)
  {

    v86 = v312;
    v84 = v313;
    v87 = v104;
    goto LABEL_29;
  }

  v126 = v319;
  if (v89 >= v103)
  {
    goto LABEL_105;
  }

  if (!sub_22C4AF1C0())
  {

    v127 = v310;
    v128 = &v126[*(v310 + 28)];
    v129 = v128[3];
    v130 = v128[4];
    sub_22C374168(v128, v129);
    sub_22C3A5908(&qword_27D9BABC0, &unk_22C90D460);
    v131 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v132 = swift_allocObject();
    v329 = xmmword_22C90F800;
    *(v132 + 16) = xmmword_22C90F800;
    v133 = v132 + v131;
    v134 = v312;
    (*(v104 + 16))(v133, v313, v312);
    v135 = v289;
    *v289 = v132;
    v136 = v135;
    swift_storeEnumTagMultiPayload();
    v137 = *(v127 + 44);
    v138 = v126;
    v139 = *&v126[v137];
    v140 = v308;
    (*(v130 + 32))(&v338, v136, v139, v129, v130);
    if (v140)
    {
      sub_22C456BD8(v136, type metadata accessor for RenderableTool);
      v141 = *(v104 + 8);
      v42 = (v104 + 8);
      v141(v313, v134);
      (*(v311 + 8))(v299, v309);
      return v42;
    }

    v308 = 0;
    sub_22C456BD8(v136, type metadata accessor for RenderableTool);
    v334 = v338;
    v335 = v339;
    v336 = v340;
    v337 = v341;
    LODWORD(v342) = BYTE8(v340);
    v297 = v338;
    v327 = v339;
    v328 = *(&v338 + 1);
    v325 = v340;
    v326 = *(&v339 + 1);
    sub_22C456C30(v338, *(&v338 + 1), v339, *(&v339 + 1), v340, SBYTE8(v340));
    sub_22C3E022C(&v334);
    sub_22C374168(&v138[*(v310 + 32)], *&v138[*(v310 + 32) + 24]);
    v145 = v283;
    v146 = v313;
    sub_22C47FCDC();
    v147 = sub_22C9096FC();
    v148 = MEMORY[0x28223BE20](v147);
    *(&v279 - 2) = v145;
    sub_22C4FB170(v148, v149, sub_22C436434, (&v279 - 4), v139);

    v150 = *(v104 + 8);
    v42 = (v104 + 8);
    v150(v146, v312);
    (*(v284 + 8))(v145, v285);
    sub_22C90A28C();

    v151 = sub_22C90A2AC();
    v153 = v152;

    if (v342 != 1)
    {
      v216 = v297;

      sub_22C909F0C();
      sub_22C3A5908(&qword_27D9BC3A8, &qword_22C91DBE0);
      v217 = (type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender(0) - 8);
      v218 = (*(*v217 + 80) + 32) & ~*(*v217 + 80);
      v219 = swift_allocObject();
      *(v219 + 16) = v329;
      v220 = (v219 + v218);
      v221 = (v220 + v217[7]);
      *v221 = v151;
      v221[1] = v153;
      type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
      swift_storeEnumTagMultiPayload();
      *v220 = xmmword_22C912A80;
      sub_22C909F0C();
      sub_22C456CE4(v216, v328, v327, v326, v325, 0);
      (*(v311 + 8))(v299, v309);
      return v216;
    }

    v154 = v297;
    LOBYTE(v332[0]) = v297;
    sub_22C3E01D8();
    swift_willThrowTypedImpl();
    sub_22C442014();
    swift_allocError();
    *v155 = v154;
    *(v155 + 8) = 0;
    *(v155 + 16) = 4;
    swift_willThrow();
LABEL_69:
    (*(v311 + 8))(v299, v309);
    return v42;
  }

LABEL_108:
  __break(1u);
LABEL_109:
  sub_22C90B54C();
  __break(1u);
LABEL_110:
  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C44E188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v112 = a7;
  v111 = a6;
  v120 = a2;
  v107 = a1;
  v119 = sub_22C3A5908(&qword_27D9BAA30, &unk_22C911F70);
  v9 = MEMORY[0x28223BE20](v119);
  v129 = (&v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v118 = &v105 - v11;
  v12 = type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  v17 = *(v16 - 8);
  v130 = v16;
  v131 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v110 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v117 = (&v105 - v21);
  MEMORY[0x28223BE20](v20);
  v28 = (&v105 - v27);
  v29 = *(a3 + 16);
  v30 = MEMORY[0x277D84F90];
  v121 = a5;
  if (v29)
  {
    v132 = MEMORY[0x277D84F90];
    sub_22C3B70F8(0, v29, 0, v22, v23, v24, v25, v26);
    v30 = v132;
    v31 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v32 = *(v13 + 72);
    do
    {
      sub_22C456B78(v31, v15, type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender);
      v33 = *(v130 + 48);
      *v28 = *v15;
      sub_22C456AA8(v15 + *(v12 + 20), v28 + v33, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
      v132 = v30;
      v40 = *(v30 + 16);
      v39 = *(v30 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_22C3B70F8(v39 > 1, v40 + 1, 1, v34, v35, v36, v37, v38);
        v30 = v132;
      }

      *(v30 + 16) = v40 + 1;
      sub_22C456B08(v28, v30 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v40);
      v31 += v32;
      --v29;
    }

    while (v29);
    a5 = v121;
  }

  v41 = *(a5 + 16);
  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v106 = v30;
    v132 = MEMORY[0x277D84F90];
    sub_22C3B70F8(0, v41, 0, v22, v23, v24, v25, v26);
    v43 = v132;
    v46 = sub_22C6339F8();
    v47 = 0;
    v48 = a5 + 64;
    v114 = v44;
    v109 = a5 + 72;
    v115 = v41;
    v116 = a5 + 64;
    while ((v46 & 0x8000000000000000) == 0 && v46 < 1 << *(a5 + 32))
    {
      if ((*(v48 + 8 * (v46 >> 6)) & (1 << v46)) == 0)
      {
        goto LABEL_45;
      }

      if (*(a5 + 36) != v44)
      {
        goto LABEL_46;
      }

      v125 = 1 << v46;
      v126 = v46 >> 6;
      v123 = v47;
      v124 = v44;
      v122 = v45;
      v128 = v43;
      v49 = v119;
      v50 = *(v119 + 48);
      v51 = *(a5 + 56);
      v52 = (*(a5 + 48) + 16 * v46);
      v54 = *v52;
      v53 = v52[1];
      v55 = sub_22C901FAC();
      v56 = *(v55 - 8);
      v57 = v51 + *(v56 + 72) * v46;
      v41 = (v56 + 16);
      v58 = v118;
      v127 = *(v56 + 16);
      v127(&v118[v50], v57, v55);
      v59 = v129;
      *v129 = v54;
      v59[1] = v53;
      v60 = *(v49 + 48);
      (*(v56 + 32))(v59 + v60, &v58[v50], v55);
      v61 = v120;
      v62 = *(v120 + 16);

      if (v62)
      {
        v63 = sub_22C36E2BC(v54, v53);
        if (v64)
        {
          v65 = (*(v61 + 56) + 16 * v63);
          v54 = *v65;
          v53 = v65[1];
        }
      }

      v66 = v129;
      v67 = v55;
      v68 = v117;
      v127(v117 + *(v130 + 48), v129 + v60, v67);
      type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
      swift_storeEnumTagMultiPayload();
      *v68 = v54;
      v68[1] = v53;
      sub_22C36DD28(v66, &qword_27D9BAA30, &unk_22C911F70);
      v43 = v128;
      v132 = v128;
      v75 = *(v128 + 16);
      v74 = *(v128 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_22C3B70F8(v74 > 1, v75 + 1, 1, v69, v70, v71, v72, v73);
        v43 = v132;
      }

      *(v43 + 16) = v75 + 1;
      sub_22C456B08(v68, v43 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v75);
      a5 = v121;
      v76 = 1 << *(v121 + 32);
      if (v46 >= v76)
      {
        goto LABEL_47;
      }

      v48 = v116;
      v77 = *(v116 + 8 * v126);
      if ((v77 & v125) == 0)
      {
        goto LABEL_48;
      }

      if (*(v121 + 36) != v124)
      {
        goto LABEL_49;
      }

      v78 = v77 & (-2 << (v46 & 0x3F));
      if (v78)
      {
        v76 = __clz(__rbit64(v78)) | v46 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v79 = v126 << 6;
        v80 = v126 + 1;
        v81 = (v109 + 8 * v126);
        while (v80 < (v76 + 63) >> 6)
        {
          v83 = *v81++;
          v82 = v83;
          v79 += 64;
          ++v80;
          if (v83)
          {
            sub_22C3A5038(v46, v124, v122 & 1);
            v76 = __clz(__rbit64(v82)) + v79;
            goto LABEL_28;
          }
        }

        sub_22C3A5038(v46, v124, v122 & 1);
      }

LABEL_28:
      v45 = 0;
      v47 = v123 + 1;
      v46 = v76;
      v44 = v114;
      v41 = v115;
      if ((v123 + 1) == v115)
      {
        v30 = v106;
        v42 = MEMORY[0x277D84F90];
        goto LABEL_31;
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
    __break(1u);
    goto LABEL_50;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_31:
  v132 = v30;
  sub_22C3CE2A8(v43);

  v84 = v108;
  sub_22C454768(&v132);
  v41 = v84;
  if (v84)
  {
    goto LABEL_51;
  }

  v85 = v132;
  v86 = *(v132 + 16);
  if (v86)
  {
    v132 = v42;
    sub_22C3B63D4(0, v86, 0);
    v87 = 0;
    v88 = v132;
    v128 = v85 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    while (v87 < *(v85 + 16))
    {
      v89 = v110;
      sub_22C3E8FB4(v128 + *(v131 + 72) * v87, v110, &qword_27D9BB0D0, &qword_22C90D970);
      v90 = sub_22C452208(*v89, *(v89 + 8), v89 + *(v130 + 48), v113, v111, v112);
      if (v41)
      {

        sub_22C36DD28(v89, &qword_27D9BB0D0, &qword_22C90D970);

        return v85;
      }

      v91 = v90;
      v129 = 0;
      sub_22C36DD28(v89, &qword_27D9BB0D0, &qword_22C90D970);
      v132 = v88;
      v93 = *(v88 + 16);
      v92 = *(v88 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_22C3B63D4(v92 > 1, v93 + 1, 1);
        v88 = v132;
      }

      ++v87;
      *(v88 + 16) = v93 + 1;
      *(v88 + 8 * v93 + 32) = v91;
      v41 = v129;
      if (v86 == v87)
      {

        goto LABEL_42;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:

    __break(1u);
    return result;
  }

  v88 = MEMORY[0x277D84F90];
LABEL_42:
  v94 = sub_22C3DB9B0(v88);

  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_22C912A90;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v96 = swift_allocObject();
  *(v96 + 16) = v94;
  *(v95 + 32) = v96;
  v97 = v95 | 0x8000000000000000;
  v98 = swift_allocObject();
  v99 = swift_allocObject();
  *(v99 + 16) = v97;
  *(v98 + 16) = v99;
  v100 = swift_allocObject();
  *(v100 + 16) = 40;
  *(v100 + 24) = 0xE100000000000000;
  v101 = sub_22C47D60C(v107, v100);

  v102 = sub_22C47D60C(v101, v98 | 0x6000000000000000);

  v103 = swift_allocObject();
  *(v103 + 16) = 41;
  *(v103 + 24) = 0xE100000000000000;
  v85 = sub_22C47D60C(v102, v103);

  return v85;
}

uint64_t sub_22C44EB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v15 = MEMORY[0x277D84F98];
  v12 = *(a5 + 16);
  while (v12 != v11)
  {
    v13 = *(sub_22C90839C() - 8);
    sub_22C453354(&v15, a5 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11++, a1, a2);
    if (v5)
    {

      return a4;
    }
  }

  a4 = sub_22C44E188(a1, a2, a3, a4, v15, 0, 0);

  return a4;
}

void (*sub_22C44EC84(char *a1))(void, void)
{
  v325 = sub_22C90827C();
  v323 = *(v325 - 8);
  MEMORY[0x28223BE20](v325);
  v324 = &v271 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22C9070DC();
  v314 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v302 = &v271 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C90759C();
  v307 = *(v5 - 8);
  v308 = v5;
  MEMORY[0x28223BE20](v5);
  v306 = &v271 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v310 = &v271 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v297 = (&v271 - v11);
  MEMORY[0x28223BE20](v10);
  v13 = &v271 - v12;
  v320 = sub_22C90654C();
  v317 = *(v320 - 1);
  v14 = MEMORY[0x28223BE20](v320);
  v300 = (&v271 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v303 = &v271 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v301 = &v271 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v309 = &v271 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v319 = &v271 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v304 = &v271 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v305 = &v271 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v296 = &v271 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v271 - v30;
  v32 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v318 = &v271 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v299 = &v271 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v271 - v37;
  v39 = sub_22C901FAC();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v311 = &v271 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v312 = &v271 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v315 = &v271 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v298 = &v271 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v271 - v50;
  v321 = a1;
  v52 = MEMORY[0x2318B57A0](v49);
  sub_22C9074DC();
  sub_22C6053E0(v52, v38);
  v53 = v39;

  v54 = sub_22C370B74(v38, 1, v39);
  v313 = v3;
  if (v54 == 1)
  {
    v55 = sub_22C36DD28(v38, &qword_27D9BC030, &unk_22C911CC0);
    v56 = v40;
  }

  else
  {
    v57 = v39;
    v294 = *(v40 + 32);
    v294(v51, v38, v39);
    v291 = type metadata accessor for StatefulExpressionParser(0);
    v58 = *&v322[v291[13]];
    sub_22C60539C(v51, v58);
    v56 = v40;
    if (sub_22C370B74(v13, 1, v3) != 1)
    {
      v292 = v51;
      v295 = v40;
      v293 = v57;
      sub_22C90702C();
      v61 = *(v314 + 8);
      v61(v13, v3);
      v62 = v317;
      v63 = v317[11];
      v59 = v320;
      v64 = (v63)(v31, v320);
      if (v64 == *MEMORY[0x277D1DAA8])
      {
        LODWORD(v288) = v64;
        v289 = v63;
        v290 = v61;
        v66 = v62[12];
        v65 = (v62 + 12);
        v287 = v66;
        v66(v31, v59);
        v67 = sub_22C906F2C();
        v68 = *(v67 - 8);
        v69 = *(v68 + 88);
        v286 = (v68 + 88);
        v285 = v69;
        v70 = v69(v31, v67);
        if (v70 == *MEMORY[0x277D1DED8])
        {
          LODWORD(v284) = v70;
          v71 = *(v68 + 96);
          v283 = v68 + 96;
          v282 = v71;
          v72 = v71(v31, v67);
          if (*v31 != 1)
          {
            v281 = v65;
            v280 = v68;
            v216 = MEMORY[0x2318B57A0](v72);
            sub_22C9074EC();
            v217 = v299;
            sub_22C6053E0(v216, v299);

            v218 = v293;
            if (sub_22C370B74(v217, 1, v293) == 1)
            {
              v56 = v295;
              (*(v295 + 8))(v292, v218);
              v219 = &qword_27D9BC030;
              v220 = &unk_22C911CC0;
              v221 = v217;
            }

            else
            {
              v279 = v67;
              v222 = v298;
              v294(v298, v217, v218);
              v223 = v297;
              sub_22C60539C(v222, v58);
              v224 = v313;
              if (sub_22C370B74(v223, 1, v313) != 1)
              {
                v227 = v296;
                sub_22C90702C();
                v290(v223, v224);
                v228 = v289(v227, v59);
                if (v228 == v288)
                {
                  v287(v227, v59);
                  v229 = v279;
                  v230 = v285(v227, v279);
                  v53 = v293;
                  v56 = v295;
                  v231 = v227;
                  v74 = v318;
                  v73 = v319;
                  v93 = v292;
                  if (v230 != v284)
                  {
                    v267 = *(v295 + 8);
                    v267(v298, v293);
                    v267(v292, v53);
                    v55 = (*(v280 + 8))(v296, v229);
                    goto LABEL_85;
                  }

                  v232 = v282(v231, v229);
                  if ((*v231 & 1) == 0)
                  {
                    goto LABEL_84;
                  }

                  v233 = MEMORY[0x2318B57A0](v232);
                  v234 = v316;
                  v325 = sub_22C456764(v233);
                  v318 = v234;

                  v235 = swift_allocObject();
                  v236 = &v322[v291[9]];
                  v237 = *(v236 + 3);
                  v238 = *(v236 + 4);
                  sub_22C374168(v236, v237);
                  LODWORD(v324) = *MEMORY[0x277D1E120];
                  v239 = v307;
                  v240 = v308;
                  v320 = *(v307 + 104);
                  v323 = v307 + 104;
                  v241 = v306;
                  v320(v306);
                  v242 = (*(v238 + 8))(v241, v237, v238);
                  v244 = v243;
                  v319 = *(v239 + 8);
                  v245 = (v319)(v241, v240);
                  v317 = v235;
                  *(v235 + 16) = v242;
                  *(v235 + 24) = v244;
                  v246 = MEMORY[0x2318B57A0](v245);
                  v247 = v318;
                  v248 = sub_22C442520(v246);
                  v321 = v247;

                  v249 = sub_22C453604(v248);
                  v250 = sub_22C909F0C();
                  v251 = *(v236 + 3);
                  v252 = *(v236 + 4);
                  sub_22C374168(v236, v251);
                  v253 = v308;
                  (v320)(v241, v324, v308);
                  v254 = (*(v252 + 8))(v241, v251, v252);
                  v256 = v255;
                  v257 = v241;
                  v258 = v317;
                  (v319)(v257, v253);
                  v259 = v321;
                  v260 = sub_22C44E188(v258, v249, MEMORY[0x277D84F90], v250, v325, v254, v256);
                  if (v259)
                  {

                    v261 = *(v295 + 8);
                    v78 = v293;
                    v261(v298, v293);
                    v261(v292, v78);
                  }

                  else
                  {
                    v78 = v260;

                    v269 = *(v295 + 8);
                    v270 = v293;
                    v269(v298, v293);
                    v269(v292, v270);
                  }

                  return v78;
                }

                v56 = v295;
                v266 = *(v295 + 8);
                v53 = v293;
                v266(v222, v293);
                v266(v292, v53);
                v55 = (v317[1])(v227, v59);
                goto LABEL_6;
              }

              v56 = v295;
              v225 = *(v295 + 8);
              v225(v222, v218);
              v225(v292, v218);
              v219 = &qword_27D9BAA18;
              v220 = &qword_22C911C40;
              v221 = v223;
            }

            v55 = sub_22C36DD28(v221, v219, v220);
            v60 = v322;
            v53 = v218;
            goto LABEL_14;
          }

          v56 = v295;
          v53 = v293;
          v55 = (*(v295 + 8))(v292, v293);
        }

        else
        {
          v56 = v295;
          v53 = v293;
          (*(v295 + 8))(v292, v293);
          v55 = (*(v68 + 8))(v31, v67);
        }
      }

      else
      {
        v56 = v295;
        v53 = v293;
        (*(v295 + 8))(v292, v293);
        v55 = (v62[1])(v31, v59);
      }

      v60 = v322;
      goto LABEL_14;
    }

    (*(v40 + 8))(v51, v57);
    v55 = sub_22C36DD28(v13, &qword_27D9BAA18, &qword_22C911C40);
    v53 = v57;
  }

  v59 = v320;
LABEL_6:
  v60 = v322;
LABEL_14:
  v74 = v318;
  v73 = v319;
  while (1)
  {
    v75 = MEMORY[0x2318B57A0](v55);
    sub_22C90755C();
    sub_22C6053E0(v75, v74);

    if (sub_22C370B74(v74, 1, v53) == 1)
    {
      sub_22C36DD28(v74, &qword_27D9BC030, &unk_22C911CC0);
      goto LABEL_17;
    }

    v78 = v315;
    (*(v56 + 32))(v315, v74, v53);
    v110 = type metadata accessor for StatefulExpressionParser(0);
    v319 = *(v110 + 52);
    v111 = v310;
    sub_22C60539C(v78, *&v60[v319]);
    v112 = v313;
    if (sub_22C370B74(v111, 1, v313) == 1)
    {
      sub_22C36DD28(v111, &qword_27D9BAA18, &qword_22C911C40);
LABEL_57:
      sub_22C442014();
      swift_allocError();
      *v172 = xmmword_22C912340;
      *(v172 + 16) = 5;
      swift_willThrow();
      (*(v56 + 8))(v78, v53);
      return v78;
    }

    v291 = v110;
    v113 = v304;
    sub_22C90702C();
    v114 = *(v314 + 8);
    v298 = (v314 + 8);
    v297 = v114;
    v114(v111, v112);
    v115 = v317;
    v116 = v317[4];
    v117 = v305;
    v296 = (v317 + 4);
    v294 = v116;
    v116(v305, v113, v59);
    v74 = (v115 + 2);
    v293 = v115[2];
    v293(v73, v117, v59);
    v292 = v115[11];
    v118 = (v292)(v73, v59);
    v119 = *MEMORY[0x277D1DAA8];
    LODWORD(v318) = v118;
    if (v118 != v119)
    {
      v170 = v115[1];
      v170(v117, v59);
      v170(v73, v59);
LABEL_56:
      v78 = v315;
      goto LABEL_57;
    }

    v120 = v115[12];
    v287 = (v115 + 12);
    v286 = v120;
    v120(v73, v59);
    v121 = sub_22C906F2C();
    v299 = *(v121 - 1);
    v122 = *(v299 + 88);
    v285 = (v299 + 88);
    v284 = v122;
    if (v122(v73, v121) != *MEMORY[0x277D1DEE8])
    {
      (v115[1])(v117, v320);
      (*(v299 + 8))(v73, v121);
      goto LABEL_56;
    }

    v123 = *(v299 + 96);
    v282 = v121;
    v278 = v299 + 96;
    v277 = v123;
    v123(v73, v121);
    v124 = *v73;
    v276 = *(*v73 + 16);
    v295 = v56;
    if (v276)
    {
      v275 = v115 + 2;
      v274 = v115 + 11;
      v125 = 0;
      v281 = v124 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v310 = (v56 + 16);
      v273 = v314 + 16;
      LODWORD(v290) = *MEMORY[0x277D1DEF8];
      v126 = v299;
      v272 = (v299 + 104);
      v271 = (v115 + 13);
      v317 = v115 + 1;
      v280 = v56 + 8;
      v127 = v303;
      v74 = v320;
      v279 = v124;
      while (v125 < *(v124 + 16))
      {
        v283 = *(v295 + 72);
        v304 = *(v295 + 16);
        (v304)(v312, v281 + v283 * v125, v53);
        v128 = v322;
        v129 = *&v322[v319];
        if (!*(v129 + 16) || (sub_22C628274(), (v131 & 1) == 0))
        {

          v226 = v317;
LABEL_80:
          sub_22C442014();
          v78 = swift_allocError();
          *v263 = xmmword_22C912340;
          *(v263 + 16) = 5;
          swift_willThrow();
          v264 = *v280;
          (*v280)(v312, v53);
          (*v226)(v305, v74);
          v264(v315, v53);
          return v78;
        }

        v289 = v125;
        v132 = v313;
        v133 = *(v129 + 56) + *(v314 + 72) * v130;
        v134 = v302;
        (*(v314 + 16))(v302, v133, v313);
        v135 = v301;
        sub_22C90702C();
        v297(v134, v132);
        v136 = v309;
        v294(v309, v135, v74);
        v293(v127, v136, v74);
        v137 = (v292)(v127, v74);
        if (v137 != v318)
        {
          v226 = v317;
          v262 = *v317;
          (*v317)(v309, v74);

          v262(v127, v74);
          goto LABEL_80;
        }

        v286(v127, v74);
        v138 = v282;
        v139 = v284(v127, v282);
        if (v139 != v290)
        {
          v226 = v317;
          (*v317)(v309, v74);

          (*(v126 + 8))(v127, v138);
          goto LABEL_80;
        }

        v277(v127, v138);
        v140 = v74;
        v141 = v138;
        v142 = v311;
        (v304)(v311, v312, v53);
        v143 = sub_22C90A2CC();
        v145 = v144;

        v146 = v300;
        *v300 = v143;
        *(v146 + 8) = v145;
        (*v272)(v146, v290, v141);
        (*v271)(v146, v318, v140);
        v147 = v316;
        v148 = sub_22C443628(v146, 0, 0, 0, 0);
        v316 = v147;
        if (v147)
        {

          v265 = *v317;
          (*v317)(v146, v140);
          v78 = *v280;
          (*v280)(v142, v53);
          v265(v309, v140);
          v78(v312, v53);
          v265(v305, v140);
          v78(v315, v53);
          return v78;
        }

        v149 = v148;
        v150 = v128;
        v151 = *v317;
        (*v317)(v146, v140);
        v152 = v291[12];
        swift_isUniquelyReferenced_nonNull_native();
        v153 = *&v150[v152];
        v326 = v153;
        sub_22C628274();
        if (__OFADD__(*(v153 + 16), (v155 & 1) == 0))
        {
          goto LABEL_88;
        }

        v156 = v154;
        v157 = v155;
        sub_22C3A5908(&qword_27D9BC3B8, &qword_22C912B00);
        v158 = sub_22C90B15C();
        v288 = v151;
        if (v158)
        {
          sub_22C628274();
          v161 = v320;
          if ((v157 & 1) != (v160 & 1))
          {
            goto LABEL_90;
          }

          v156 = v159;
        }

        else
        {
          v161 = v320;
        }

        v162 = v289;
        v163 = v326;
        v127 = v303;
        if (v157)
        {
          *(*(v326 + 56) + 8 * v156) = v149;
        }

        else
        {
          *(v326 + 8 * (v156 >> 6) + 64) |= 1 << v156;
          (v304)(v163[6] + v156 * v283, v311, v53);
          *(v163[7] + 8 * v156) = v149;
          v164 = v163[2];
          v165 = __OFADD__(v164, 1);
          v166 = v164 + 1;
          if (v165)
          {
            goto LABEL_89;
          }

          v163[2] = v166;
        }

        v125 = v162 + 1;
        v167 = *v280;
        (*v280)(v311, v53);
        v74 = v161;
        v168 = v161;
        v59 = v288;
        v288(v309, v168);
        v167(v312, v53);
        *&v322[v152] = v163;
        v126 = v299;
        v124 = v279;
        if (v276 == v125)
        {

          v117 = v305;
          v169 = v74;
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      result = sub_22C90B54C();
      __break(1u);
      return result;
    }

    v59 = v115[1];
    v169 = v320;
LABEL_67:
    (v59)(v117, v169);
    (*(v295 + 8))(v315, v53);
    v60 = v322;
LABEL_17:
    v76 = *(sub_22C9082EC() + 16);

    v73 = MEMORY[0x277D84F90];
    if (!v76)
    {
      v325 = MEMORY[0x277D84F90];
      goto LABEL_60;
    }

    v78 = sub_22C9082EC();
    v79 = v316;
    sub_22C4536B8(v78, v80, v81, v82, v83, v84, v85, v86, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
    v88 = v87;

    if (v79)
    {
      return v78;
    }

    v316 = 0;
    v53 = v88[2];
    if (!v53)
    {
      break;
    }

    v328 = v73;
    sub_22C3B5E2C(0, v53, 0, v89, v90, v91, v92);
    v56 = 0;
    v320 = (v88 + ((*(v323 + 80) + 32) & ~*(v323 + 80)));
    v93 = v328;
    v318 = (v323 + 8);
    v319 = v323 + 16;
    v317 = v88;
    while (v56 < v88[2])
    {
      v94 = v53;
      (*(v323 + 16))(v324, v320 + *(v323 + 72) * v56, v325);
      sub_22C90825C();
      v95 = sub_22C90A2CC();
      v97 = v96;

      sub_22C90826C();
      if (v98)
      {

        v99 = sub_22C90A2CC();
        v73 = 0xE100000000000000;
        v326 = 58;
        v327 = 0xE100000000000000;
        MEMORY[0x2318B7850](v99);
        swift_bridgeObjectRelease_n();

        v101 = v326;
        v100 = v327;
      }

      else
      {
        v101 = 0;
        v100 = 0xE000000000000000;
        v73 = 0xE100000000000000;
      }

      v326 = 34;
      v327 = 0xE100000000000000;
      MEMORY[0x2318B7850](v95, v97);

      MEMORY[0x2318B7850](v101, v100);

      MEMORY[0x2318B7850](34, 0xE100000000000000);

      v102 = v326;
      v74 = v327;
      (*v318)(v324, v325);
      v328 = v93;
      v59 = v93[2];
      v107 = v93[3];
      if (v59 >= v107 >> 1)
      {
        sub_22C3B5E2C(v107 > 1, v59 + 1, 1, v103, v104, v105, v106);
        v93 = v328;
      }

      ++v56;
      v93[2] = v59 + 1;
      v108 = &v93[2 * v59];
      *(v108 + 4) = v102;
      *(v108 + 5) = v74;
      v53 = v94;
      v109 = v94 == v56;
      v88 = v317;
      if (v109)
      {

        v171 = v322;
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_84:
    v268 = *(v56 + 8);
    v268(v298, v53);
    v55 = (v268)(v93, v53);
LABEL_85:
    v60 = v322;
  }

  v171 = v60;

  v93 = MEMORY[0x277D84F90];
LABEL_59:
  v326 = v93;
  sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
  sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0, MEMORY[0x277D83958]);
  v173 = sub_22C90A04C();
  v175 = v174;

  v326 = 91;
  v327 = 0xE100000000000000;
  MEMORY[0x2318B7850](v173, v175);

  MEMORY[0x2318B7850](93, 0xE100000000000000);
  v176 = v326;
  v177 = v327;
  sub_22C3A5908(&qword_27D9BC3A8, &qword_22C91DBE0);
  v178 = (type metadata accessor for StatefulExpressionParser.ToolData.ShadowParameterRender(0) - 8);
  v179 = (*(*v178 + 80) + 32) & ~*(*v178 + 80);
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_22C90F800;
  v325 = v180;
  v181 = (v180 + v179);
  v182 = sub_22C90755C();
  v184 = v183;
  v185 = (v181 + v178[7]);
  *v185 = v176;
  v185[1] = v177;
  type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
  v77 = swift_storeEnumTagMultiPayload();
  *v181 = v182;
  v181[1] = v184;
  v60 = v171;
LABEL_60:
  v186 = MEMORY[0x2318B57A0](v77);
  v187 = v316;
  v188 = sub_22C442520(v186);
  v324 = v187;

  v189 = sub_22C453604(v188);
  swift_isUniquelyReferenced_nonNull_native();
  v326 = v189;
  sub_22C62D0D4();
  v323 = v326;
  v190 = swift_allocObject();
  v191 = &v60[*(type metadata accessor for StatefulExpressionParser(0) + 36)];
  v192 = *(v191 + 3);
  v193 = *(v191 + 4);
  sub_22C374168(v191, v192);
  LODWORD(v320) = *MEMORY[0x277D1E100];
  v195 = v307;
  v194 = v308;
  v319 = *(v307 + 104);
  v196 = v306;
  (v319)(v306);
  v197 = (*(v193 + 8))(v196, v192, v193);
  v199 = v198;
  v318 = *(v195 + 8);
  v200 = v194;
  (v318)(v196, v194);
  v317 = v190;
  *(v190 + 16) = v197;
  *(v190 + 24) = v199;
  v316 = sub_22C909F0C();
  v201 = MEMORY[0x2318B57A0]();
  v202 = *(v191 + 3);
  v203 = *(v191 + 4);
  sub_22C374168(v191, v202);
  (v319)(v196, v320, v200);
  v204 = *(v203 + 8);
  v205 = v203;
  v206 = v323;
  v207 = v204(v196, v202, v205);
  v209 = v208;
  v210 = v196;
  v211 = v317;
  (v318)(v210, v200);
  v212 = v324;
  v213 = v207;
  v78 = v322;
  v214 = sub_22C44E188(v211, v206, v325, v316, v201, v213, v209);
  if (!v212)
  {
    v78 = v214;
  }

  return v78;
}

void sub_22C450D6C(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v54 = a1;
  v53 = a3;
  v46 = type metadata accessor for RenderableTool(0);
  MEMORY[0x28223BE20](v46);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22C908EAC();
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C908AEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_22C908ABC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v49 = type metadata accessor for StatefulExpressionParser(0);
  v20 = v49[6];
  v21 = *(v7 + 16);
  v50 = a2;
  v21(v9, a2 + v20, v6);
  sub_22C908ADC();
  (*(v7 + 8))(v9, v6);
  if (sub_22C370B74(v12, 1, v13) == 1)
  {
    sub_22C36DD28(v12, &qword_27D9BC0B0, &unk_22C912AD0);
LABEL_7:
    *v53 = 0xF000000000000007;
    return;
  }

  (*(v14 + 32))(v19, v12, v13);
  (*(v14 + 16))(v17, v19, v13);
  v22 = v14;
  if ((*(v14 + 88))(v17, v13) != *MEMORY[0x277D1E8E0])
  {
    v36 = *(v14 + 8);
    v36(v19, v13);
    v36(v17, v13);
    goto LABEL_7;
  }

  v54 = v19;
  (*(v14 + 96))(v17, v13);
  v23 = v48;
  v24 = v51;
  v25 = v17;
  v26 = v52;
  (*(v48 + 32))(v51, v25, v52);
  sub_22C378A4C(v50 + v49[7], &v61);
  v45 = v62;
  v43 = v63;
  v44 = sub_22C374168(&v61, v62);
  v42 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v27 = v47;
  (*(v23 + 16))(v47, v24, v26);
  v28 = *MEMORY[0x277D1ECE0];
  v29 = sub_22C9036EC();
  (*(*(v29 - 8) + 104))(v27, v28, v29);
  sub_22C9037DC();
  *&v56[0] = MEMORY[0x277D84F90];
  sub_22C457274(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
  v30 = v22;
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  v31 = v27;
  sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
  sub_22C90AE4C();
  swift_storeEnumTagMultiPayload();
  v32 = *(v50 + v49[11]);
  v33 = v43;
  v34 = *(v43 + 32);

  v35 = v64;
  v34(&v57, v31, v32, v45, v33);
  if (v35)
  {

    sub_22C456BD8(v31, type metadata accessor for RenderableTool);
    (*(v23 + 8))(v51, v52);
  }

  else
  {
    sub_22C456BD8(v31, type metadata accessor for RenderableTool);

    v56[0] = v57;
    v56[1] = v58;
    v56[2] = v59;
    v56[3] = v60;
    v37 = v57;
    v38 = v58;
    v39 = v59;
    v40 = BYTE8(v59);
    sub_22C456C30(v57, *(&v57 + 1), v58, *(&v58 + 1), v59, SBYTE8(v59));
    sub_22C3E022C(v56);
    if ((v40 & 1) == 0)
    {
      (*(v48 + 8))(v51, v52);
      (*(v30 + 8))(v54, v13);
      sub_22C36FF94(&v61);

      sub_22C456CE4(v37, *(&v37 + 1), v38, *(&v38 + 1), v39, 0);
      *v53 = v37;
      return;
    }

    v55 = v37;
    sub_22C3E01D8();
    swift_willThrowTypedImpl();
    sub_22C442014();
    swift_allocError();
    *v41 = v37;
    *(v41 + 8) = 0;
    *(v41 + 16) = 4;
    swift_willThrow();
    (*(v48 + 8))(v51, v52);
  }

  (*(v30 + 8))(v54, v13);
  sub_22C36FF94(&v61);
}

void sub_22C4515C4()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  sub_22C36A83C();
  v5 = swift_allocObject();
  *(v5 + 16) = 0x3D7972657571;
  *(v5 + 24) = 0xE600000000000000;
  sub_22C591324();
  v7 = v6;
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    sub_22C36FC14(v8 > 1, v9 + 1);
    v7 = v18;
  }

  *(v7 + 16) = v9 + 1;
  *(v7 + 8 * v9 + 32) = v5;
  sub_22C3716C0();
  sub_22C4429E4();
  if (v0)
  {

    *v2 = v0;
  }

  else
  {
    v11 = v10;
    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_22C36FC14(v12 > 1, v13 + 1);
      v7 = v19;
    }

    *(v7 + 16) = v13 + 1;
    *(v7 + 8 * v13 + 32) = v11;
    sub_22C36A83C();
    v14 = swift_allocObject();
    sub_22C457420(v14);
    if ((v13 + 2) > *(v7 + 24) >> 1)
    {
      sub_22C3726E0();
      sub_22C591324();
    }

    v15 = sub_22C372170();

    sub_22C369AEC();
    v16 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v16 + 16) = v17;
    *v4 = v16 | 0x6000000000000000;
  }

  sub_22C36FB20();
}

uint64_t sub_22C451774@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  sub_22C36A83C();
  v7 = swift_allocObject();
  sub_22C457420(v7);
  sub_22C591324();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10 >= *(v8 + 24) >> 1)
  {
    sub_22C3726E0();
    sub_22C591324();
    v9 = v27;
  }

  *(v9 + 16) = v10 + 1;
  *(v9 + 8 * v10 + 32) = v3;
  v11 = a2();
  v13 = v12;
  sub_22C36A83C();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  v16 = *(v9 + 16);
  v15 = *(v9 + 24);

  if (v16 >= v15 >> 1)
  {
    sub_22C3726E0();
    sub_22C591324();
    v9 = v28;
  }

  *(v9 + 16) = v16 + 1;
  *(v9 + 8 * v16 + 32) = v14;

  sub_22C36A83C();
  v17 = swift_allocObject();
  *(v17 + 16) = 61;
  *(v17 + 24) = 0xE100000000000000;
  v19 = *(v9 + 16);
  v18 = *(v9 + 24);
  v20 = v18 >> 1;
  v21 = v19 + 1;
  if (v18 >> 1 <= v19)
  {
    sub_22C36FC14(v18 > 1, v19 + 1);
    v9 = v29;
    v18 = *(v29 + 24);
    v20 = v18 >> 1;
  }

  *(v9 + 16) = v21;
  *(v9 + 8 * v19 + 32) = v17;
  if (v20 < (v19 + 2))
  {
    sub_22C36FC14(v18 > 1, v19 + 2);
    v9 = v30;
  }

  *(v9 + 16) = v19 + 2;
  *(v9 + 8 * v21 + 32) = v6;
  sub_22C36A83C();
  v22 = swift_allocObject();
  sub_22C457420(v22);
  v23 = *(v9 + 24);

  if ((v19 + 3) > (v23 >> 1))
  {
    sub_22C3726E0();
    sub_22C591324();
  }

  v24 = sub_22C372170();

  sub_22C369AEC();
  v25 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  result = swift_allocObject();
  *(result + 16) = v24;
  *(v25 + 16) = result;
  *a3 = v25 | 0x6000000000000000;
  return result;
}

void *sub_22C4519BC@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_22C9093DC();
  v7[2] = a2;
  result = sub_22C806C54(sub_22C456E14, v7, v5);
  *a3 = result;
  return result;
}

uint64_t sub_22C451A28(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StatefulExpressionParser(0);
  sub_22C4F6400();
  return v2 & 1;
}

uint64_t sub_22C451A78(uint64_t *a1, uint64_t a2)
{
  v42 = a2;
  v35 = a1;
  v34 = sub_22C90998C();
  v36 = *(v34 - 8);
  v2 = MEMORY[0x28223BE20](v34);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v33 = &v33 - v4;
  v41 = sub_22C90077C();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22C908A8C();
  v8 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_22C90947C();
  v37 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v39 = &v33 - v18;
  type metadata accessor for StatefulExpressionParser(0);
  v19 = sub_22C908B2C();
  MEMORY[0x2318B6010](v19);
  v20 = v43;
  sub_22C908B1C();
  if (v20)
  {

    (*(v5 + 8))(v7, v41);
    (*(v8 + 8))(v10, v40);
    sub_22C36C640(v13, 1, 1, v14);
    return sub_22C36DD28(v13, &qword_27D9BC3B0, &unk_22C912AF0);
  }

  else
  {
    v22 = v36;
    (*(v5 + 8))(v7, v41);
    (*(v8 + 8))(v10, v40);
    sub_22C36C640(v13, 0, 1, v14);
    v23 = v37;
    v24 = v39;
    (*(v37 + 32))(v39, v13, v14);
    (*(v23 + 16))(v17, v24, v14);
    if ((*(v23 + 88))(v17, v14) == *MEMORY[0x277D72B48])
    {
      (*(v23 + 96))(v17, v14);
      v25 = v22;
      v43 = *(v22 + 32);
      v26 = v33;
      v27 = v17;
      v28 = v34;
      v43(v33, v27, v34);
      (*(v22 + 16))(v38, v26, v28);
      v29 = v35;
      sub_22C3D0F80();
      v30 = *(*v29 + 16);
      sub_22C3D1144(v30);
      (*(v25 + 8))(v26, v28);
      (*(v23 + 8))(v39, v14);
      v31 = *v29;
      *(v31 + 16) = v30 + 1;
      result = (v43)(v31 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v30, v38, v28);
      *v29 = v31;
    }

    else
    {
      v32 = *(v23 + 8);
      v32(v39, v14);
      return (v32)(v17, v14);
    }
  }

  return result;
}

uint64_t sub_22C451FD8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22C4561B4(a1, sub_22C456DD0, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_22C45205C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v17 - v8);
  sub_22C3E8FB4(a1, &v17 - v8, &qword_27D9BB0D0, &qword_22C90D970);
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
  }

  else
  {
    v11 = 0;
    v10 = 0xE000000000000000;
  }

  sub_22C456BD8(v9 + *(v4 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  sub_22C3E8FB4(a2, v7, &qword_27D9BB0D0, &qword_22C90D970);
  v12 = v7[1];
  if (v12)
  {
    v13 = *v7;
  }

  else
  {
    v13 = 0;
    v12 = 0xE000000000000000;
  }

  sub_22C456BD8(v7 + *(v4 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  if (v11 == v13 && v10 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_22C90B4FC();
  }

  return v15 & 1;
}

uint64_t sub_22C452208(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v68 = a2;
  v63 = a5;
  v64 = a6;
  v69 = a4;
  v8 = type metadata accessor for StatefulExpressionParser(0);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22C901FAC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v65 = &v60 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  v18 = type metadata accessor for StatefulExpressionParser.ToolData.Argument(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v60 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = (&v60 - v25);
  v72 = a3;
  sub_22C456B78(a3, &v60 - v25, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v17, v26, v10);
    v27 = v69;
    v28 = v67;
    sub_22C4429E4();
    if (v28)
    {
      (*(v11 + 8))(v17, v10);
      return v27;
    }

    v36 = v29;
    v61 = a1;
    v63 = v10;
    v64 = v11;
    (*(v11 + 8))(v17);
    v35 = v36;
  }

  else
  {
    v61 = a1;
    v63 = v10;
    v64 = v11;
    v30 = *v26;
    v31 = v26[1];
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    v33 = swift_allocObject();
    *(v33 + 16) = 3;
    *(v33 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v33 + 32) = v34;
    v35 = v33 | 0xA000000000000000;
  }

  sub_22C456B78(v72, v24, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v37 = v64;
    v38 = v65;
    v39 = v63;
    (*(v64 + 32))(v65, v24, v63);
    v40 = v66;
    sub_22C456B78(v69, v66, type metadata accessor for StatefulExpressionParser);
    v41 = sub_22C4528A0(v38);
    sub_22C456BD8(v40, type metadata accessor for StatefulExpressionParser);
    if (v41)
    {
      v42 = v37;
      v43 = v39;
      if (v68)
      {
        v70 = v61;
        v71 = v68;

        MEMORY[0x2318B7850](0x3D646E657478655FLL, 0xE800000000000000);
        v44 = v70;
        v45 = v71;
      }

      else
      {
        v44 = 0;
        v45 = 0xE000000000000000;
      }

      v57 = v65;
      v58 = swift_allocObject();
      *(v58 + 16) = v44;
      *(v58 + 24) = v45;
      v27 = sub_22C47D60C(v58, v35);

      (*(v42 + 8))(v57, v43);
      return v27;
    }

    (*(v37 + 8))(v38, v39);
  }

  else
  {
    sub_22C456BD8(v24, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
    v37 = v64;
  }

  sub_22C456B78(v72, v21, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = v62;
    v46 = v63;
    (*(v37 + 32))(v62, v21, v63);
    v48 = v66;
    sub_22C456B78(v69, v66, type metadata accessor for StatefulExpressionParser);
    v49 = sub_22C452C70(v47);
    sub_22C456BD8(v48, type metadata accessor for StatefulExpressionParser);
    if (v49)
    {
      v27 = swift_allocObject();
      v70 = 0;
      v71 = 0xE000000000000000;
      v50 = sub_22C90A49C();
      v51 = v37;
      v53 = v52;

      (*(v51 + 8))(v47, v46);
      *(v27 + 16) = v50;
      *(v27 + 24) = v53;
      return v27;
    }

    (*(v37 + 8))(v47, v46);
  }

  else
  {
    sub_22C456BD8(v21, type metadata accessor for StatefulExpressionParser.ToolData.Argument);
  }

  if (v68)
  {
    v70 = v61;
    v71 = v68;

    MEMORY[0x2318B7850](61, 0xE100000000000000);
    v54 = v70;
    v55 = v71;
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
  }

  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  *(v56 + 24) = v55;
  v27 = sub_22C47D60C(v56, v35);

  return v27;
}

uint64_t sub_22C4528A0(uint64_t a1)
{
  v3 = sub_22C906D9C();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_22C90654C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22C906DDC();
  v28 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StatefulExpressionParser(0);
  sub_22C60539C(a1, *(v1 + *(v19 + 52)));
  v20 = sub_22C9070DC();
  if (sub_22C370B74(v11, 1, v20) == 1)
  {
    sub_22C36DD28(v11, &qword_27D9BAA18, &qword_22C911C40);
  }

  else
  {
    sub_22C90702C();
    (*(*(v20 - 8) + 8))(v11, v20);
    if ((*(v13 + 88))(v15, v12) == *MEMORY[0x277D1DAA0])
    {
      (*(v13 + 96))(v15, v12);
      v21 = v28;
      (*(v28 + 32))(v18, v15, v16);
      sub_22C906DCC();
      v23 = v29;
      v22 = v30;
      (*(v29 + 104))(v6, *MEMORY[0x277D1DE38], v30);
      v24 = sub_22C906D8C();
      v25 = *(v23 + 8);
      v25(v6, v22);
      v25(v8, v22);
      (*(v21 + 8))(v18, v16);
      if (v24)
      {
        return 1;
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
    }
  }

  return 0;
}

uint64_t sub_22C452C70(uint64_t a1)
{
  v2 = sub_22C90654C();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v44 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22C90700C();
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22C3A5908(&qword_27D9BC378, &unk_22C912AB0);
  MEMORY[0x28223BE20](v6);
  v8 = &v39[-v7];
  v9 = sub_22C3A5908(&qword_27D9BC380, &qword_22C922FC0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v45 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v39[-v15];
  v17 = sub_22C9070DC();
  v47 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v39[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v39[-v21];
  v23 = *(v1 + *(type metadata accessor for StatefulExpressionParser(0) + 52));
  if (!*(v23 + 16))
  {
    return 0;
  }

  sub_22C628274();
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v26 = *(v23 + 56);
  v27 = v47;
  (*(v47 + 16))(v20, v26 + *(v47 + 72) * v24, v17);
  (*(v27 + 32))(v22, v20, v17);
  sub_22C90701C();
  v28 = v46;
  (*(v46 + 104))(v14, *MEMORY[0x277D1DF20], v4);
  sub_22C36C640(v14, 0, 1, v4);
  v29 = *(v6 + 48);
  sub_22C3E8FB4(v16, v8, &qword_27D9BC380, &qword_22C922FC0);
  sub_22C3E8FB4(v14, &v8[v29], &qword_27D9BC380, &qword_22C922FC0);
  if (sub_22C370B74(v8, 1, v4) != 1)
  {
    v30 = v45;
    sub_22C3E8FB4(v8, v45, &qword_27D9BC380, &qword_22C922FC0);
    if (sub_22C370B74(&v8[v29], 1, v4) != 1)
    {
      v31 = &v8[v29];
      v32 = v41;
      (*(v28 + 32))(v41, v31, v4);
      sub_22C457274(&qword_27D9BC388, MEMORY[0x277D1DF28], MEMORY[0x277D1DF30]);
      v40 = sub_22C90A0BC();
      v33 = *(v28 + 8);
      v33(v32, v4);
      sub_22C36DD28(v14, &qword_27D9BC380, &qword_22C922FC0);
      sub_22C36DD28(v16, &qword_27D9BC380, &qword_22C922FC0);
      v33(v45, v4);
      sub_22C36DD28(v8, &qword_27D9BC380, &qword_22C922FC0);
      if (v40)
      {
        goto LABEL_11;
      }

LABEL_9:
      (*(v47 + 8))(v22, v17);
      return 0;
    }

    sub_22C36DD28(v14, &qword_27D9BC380, &qword_22C922FC0);
    sub_22C36DD28(v16, &qword_27D9BC380, &qword_22C922FC0);
    (*(v28 + 8))(v30, v4);
LABEL_8:
    sub_22C36DD28(v8, &qword_27D9BC378, &unk_22C912AB0);
    goto LABEL_9;
  }

  sub_22C36DD28(v14, &qword_27D9BC380, &qword_22C922FC0);
  sub_22C36DD28(v16, &qword_27D9BC380, &qword_22C922FC0);
  if (sub_22C370B74(&v8[v29], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_22C36DD28(v8, &qword_27D9BC380, &qword_22C922FC0);
LABEL_11:
  v34 = v44;
  sub_22C90702C();
  (*(v47 + 8))(v22, v17);
  v36 = v42;
  v35 = v43;
  if ((*(v42 + 88))(v34, v43) == *MEMORY[0x277D1DAA8] && ((*(v36 + 96))(v34, v35), v35 = sub_22C906F2C(), v36 = *(v35 - 8), (*(v36 + 88))(v34, v35) == *MEMORY[0x277D1DEE8]))
  {
    (*(v36 + 96))(v34, v35);
    v37 = *(*v34 + 16);

    if (!v37)
    {
      return 1;
    }
  }

  else
  {
    (*(v36 + 8))(v34, v35);
  }

  return 0;
}

void sub_22C453354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[1] = a1;
  v5 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  v8 = sub_22C90833C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C90825C();
  v14 = sub_22C6054B8(v12, v13, a4);
  v16 = v15;

  if (v16)
  {
    v30 = v14;
    v31 = v16;
    sub_22C90837C();
    v17 = (*(v9 + 88))(v11, v8);
    v18 = *MEMORY[0x277D1E400];
    (*(v9 + 8))(v11, v8);
    if (v17 == v18)
    {
      MEMORY[0x2318B7850](0x646E657478655FLL, 0xE700000000000000);
    }

    v19 = sub_22C90836C();
    if ((v20 & 1) == 0)
    {
      v28 = 91;
      v29 = 0xE100000000000000;
      v32 = v19;
      v21 = sub_22C90B47C();
      MEMORY[0x2318B7850](v21);

      MEMORY[0x2318B7850](93, 0xE100000000000000);
      MEMORY[0x2318B7850](v28, v29);
    }

    sub_22C90838C();
    v22 = sub_22C901FAC();
    sub_22C36C640(v7, 0, 1, v22);
    sub_22C602B1C();
  }

  else
  {
    v23 = sub_22C90825C();
    v25 = v24;
    sub_22C442014();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    *(v26 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_22C453604(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9BC3C0, qword_22C912B08);
    v1 = sub_22C90B1EC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_22C456470(v2, 1, &v4);

  return v4;
}

void sub_22C4536B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v219 = sub_22C9063DC();
  sub_22C369824();
  v218 = v25;
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v220 = v28 - v27;
  v242 = sub_22C90827C();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA58();
  v239 = v38;
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v217 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v229 = &v217 - v44;
  v45 = *(v24 + 16);
  v46 = MEMORY[0x277D84F90];
  v232 = v30;
  v233 = v24;
  v234 = v45;
  v237 = v42;
  if (v45)
  {
    sub_22C37F748();
    *&v244 = v46;
    sub_22C3B5E2C(0, v45, 0, v47, v48, v49, v50);
    v46 = v244;
    v240 = *(v30 + 16);
    v241 = v30 + 16;
    v51 = v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v238 = *(v30 + 72);
    v52 = (v30 + 8);
    do
    {
      v53 = sub_22C3773A4();
      v54 = v242;
      v240(v53);
      v55 = sub_22C90825C();
      v57 = v56;
      (*v52)(&v244, v54);
      *&v244 = v46;
      v58 = *(v46 + 16);
      sub_22C3705DC();
      if (v60)
      {
        sub_22C369AB0(v59);
        sub_22C3726E0();
        sub_22C3B5E2C(v62, v63, v64, v65, v66, v67, v68);
        v46 = v244;
      }

      *(v46 + 16) = v20;
      v61 = v46 + 16 * v58;
      *(v61 + 32) = v55;
      *(v61 + 40) = v57;
      v51 += v238;
      --v45;
    }

    while (v45);
    v42 = v237;
  }

  v69 = 0;
  v222 = MEMORY[0x277D84F90];
  v70 = v231;
LABEL_8:
  v71 = (&unk_283FAEC30 + 16 * v69 + 40);
  while (v69 != 8)
  {
    if (v69 > 7)
    {
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v72 = *(v71 - 1);
    v70 = *v71;
    *&v244 = v72;
    *(&v244 + 1) = v70;
    MEMORY[0x28223BE20](v43);
    *(&v217 - 2) = &v244;

    if (sub_22C5EC08C(sub_22C457404, (&v217 - 4), v46))
    {
      v73 = v222;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a10 = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = sub_22C377BA0();
        sub_22C3B5E2C(v75, v76, v77, v78, v79, v80, v81);
        v73 = a10;
      }

      v83 = *(v73 + 16);
      v82 = *(v73 + 24);
      if (v83 >= v82 >> 1)
      {
        v85 = sub_22C369AB0(v82);
        sub_22C3B5E2C(v85, v83 + 1, 1, v86, v87, v88, v89);
        v73 = a10;
      }

      ++v69;
      *(v73 + 16) = v83 + 1;
      v222 = v73;
      v84 = v73 + 16 * v83;
      *(v84 + 32) = v72;
      *(v84 + 40) = v70;
      sub_22C381240();
      v42 = v237;
      goto LABEL_8;
    }

    v71 += 2;
    ++v69;
    sub_22C381240();
    v42 = v237;
  }

  v90 = v222;
  v223 = *(v222 + 16);
  if (!v223)
  {
    sub_22C37F748();

    v241 = MEMORY[0x277D84F90];
    v92 = v232;
    v93 = v233;
    goto LABEL_40;
  }

  v91 = 0;
  v221 = v222 + 32;
  v92 = v232;
  v93 = v233;
  v240 = (v232 + 16);
  v94 = (v232 + 8);
  v235 = (v232 + 32);
  v241 = MEMORY[0x277D84F90];
  do
  {
    if (v91 >= *(v90 + 16))
    {
      goto LABEL_120;
    }

    v95 = v234;
    if (!v234)
    {
      goto LABEL_37;
    }

    sub_22C37F748();
    v225 = v96;
    v97 = (v221 + 16 * v96);
    v98 = *v97;
    v70 = v97[1];
    sub_22C457430();
    v236 = v99;
    v100 = v93 + v99;
    v101 = *(v92 + 72);
    v102 = *(v92 + 16);

    v103 = v95;
    v238 = v98;
    do
    {
      v102(v42, v100, v242);
      v105 = sub_22C90825C() == v98 && v104 == v70;
      if (v105)
      {
      }

      else
      {
        v106 = sub_22C90B4FC();

        if ((v106 & 1) == 0)
        {
          (*v94)(v42, v242);
          goto LABEL_35;
        }
      }

      v102(v239, v42, v242);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C5927FC();
        v241 = v113;
      }

      v108 = *(v241 + 16);
      v107 = *(v241 + 24);
      if (v108 >= v107 >> 1)
      {
        sub_22C369AB0(v107);
        sub_22C5927FC();
        v241 = v114;
      }

      v109 = v42;
      v110 = v242;
      (*v94)(v109, v242);
      v111 = v241;
      *(v241 + 16) = v108 + 1;
      v112 = v110;
      v42 = v237;
      (*v235)(v111 + v236 + v108 * v101, v239, v112);
LABEL_35:
      v100 += v101;
      --v103;
      v98 = v238;
    }

    while (v103);

    v92 = v232;
    v93 = v233;
    sub_22C381240();
    v90 = v222;
    v91 = v225;
LABEL_37:
    ++v91;
  }

  while (v91 != v223);
  sub_22C37F748();

LABEL_40:
  v115 = 0;
  v240 = (v92 + 16);
  v238 = (v92 + 32);
  v236 = MEMORY[0x277D84F90];
  v239 = (v92 + 8);
  while (v115 != v234)
  {
    sub_22C36BC18();
    (*(v92 + 16))(v70, v116 + v93 * v115, v242);
    if (qword_27D9BA628 != -1)
    {
      swift_once();
    }

    ++v115;
    v117 = off_27D9BC350;
    v118 = sub_22C90825C();
    v120 = v119;
    if (*(v117 + 2))
    {
      v121 = v118;
      sub_22C90B62C();
      sub_22C909FFC();
      v122 = sub_22C90B66C();
      v123 = ~(-1 << v117[32]);
      do
      {
        v124 = v122 & v123;
        if (((*&v117[(((v122 & v123) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v122 & v123)) & 1) == 0)
        {
          v92 = v232;
          goto LABEL_58;
        }

        v125 = (*(v117 + 6) + 16 * v124);
        if (*v125 == v121 && v125[1] == v120)
        {
          break;
        }

        v127 = sub_22C90B4FC();
        v122 = v124 + 1;
      }

      while ((v127 & 1) == 0);

      v128 = *v238;
      (*v238)(v226, v231, v242);
      v129 = v236;
      v130 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v129;
      if ((v130 & 1) == 0)
      {
        v131 = sub_22C377BA0();
        sub_22C3B7040(v131, v132, v133);
        v129 = a10;
      }

      v135 = *(v129 + 16);
      v134 = *(v129 + 24);
      v70 = (v135 + 1);
      if (v135 >= v134 >> 1)
      {
        v137 = sub_22C369AB0(v134);
        sub_22C3B7040(v137, v135 + 1, 1);
        v129 = a10;
      }

      *(v129 + 16) = v70;
      v236 = v129;
      sub_22C374A68();
      v128();
      v92 = v232;
      v93 = v233;
      sub_22C381240();
    }

    else
    {
LABEL_58:

      sub_22C3704B8();
      v70 = v231;
      v136(v231, v242);
      v93 = v233;
    }
  }

  v138 = 0;
  v237 = MEMORY[0x277D84F90];
LABEL_60:
  v139 = v234;
  while (v138 != v139)
  {
    sub_22C36BC18();
    v141 = v230;
    (*(v92 + 16))(v230, v140 + v93 * v138, v242);
    if (qword_27D9BA638 != -1)
    {
      swift_once();
    }

    ++v138;
    v142 = off_27D9BC360;
    sub_22C90825C();
    v144 = v143;
    if (v142[2])
    {
      sub_22C90B62C();
      sub_22C909FFC();
      sub_22C90B66C();
      sub_22C37F0BC();
      do
      {
        sub_22C37FD0C();
        if ((v145 & 1) == 0)
        {
          v141 = v230;
          goto LABEL_74;
        }

        sub_22C37B9BC();
        v147 = v105 && v146 == v144;
      }

      while (!v147 && (sub_22C90B4FC() & 1) == 0);

      sub_22C3704B8();
      v158(v230, v242);
      v92 = v232;
      v93 = v233;
      goto LABEL_60;
    }

LABEL_74:

    v148 = *v238;
    (*v238)(v224, v141, v242);
    v149 = v237;
    v150 = swift_isUniquelyReferenced_nonNull_native();
    a10 = v149;
    v139 = v234;
    if ((v150 & 1) == 0)
    {
      v151 = sub_22C377BA0();
      sub_22C3B7040(v151, v152, v153);
      v149 = a10;
    }

    sub_22C3705DC();
    if (v60)
    {
      v155 = sub_22C3732A0(v154);
      sub_22C3B7040(v155, v156, v157);
      v149 = a10;
    }

    *(v149 + 16) = v142;
    v237 = v149;
    sub_22C374A68();
    v148();
    v92 = v232;
    v93 = v233;
  }

  *&v244 = v237;

  sub_22C3CE2D0(v159);
  v160 = 0;
  v161 = MEMORY[0x277D84F90];
  v235 = v244;
  v162 = v228;
  while (v160 != v139)
  {
    sub_22C36BC18();
    (*(v92 + 16))(v162, v163 + v93 * v160, v242);
    if (qword_27D9BA630 != -1)
    {
      swift_once();
    }

    ++v160;
    v164 = off_27D9BC358;
    sub_22C90825C();
    v166 = v165;
    if (v164[2])
    {
      v237 = v161;
      sub_22C90B62C();
      sub_22C909FFC();
      sub_22C90B66C();
      sub_22C37F0BC();
      do
      {
        sub_22C37FD0C();
        if ((v167 & 1) == 0)
        {
          v92 = v232;
          v161 = v237;
          goto LABEL_98;
        }

        sub_22C37B9BC();
        v169 = v105 && v168 == v166;
      }

      while (!v169 && (sub_22C90B4FC() & 1) == 0);

      v170 = *v238;
      v162 = v228;
      (*v238)(v227, v228, v242);
      v161 = v237;
      v171 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v161;
      if ((v171 & 1) == 0)
      {
        v172 = sub_22C377BA0();
        sub_22C3B7040(v172, v173, v174);
        v162 = v228;
        v161 = a10;
      }

      v139 = v234;
      sub_22C3705DC();
      if (v60)
      {
        v177 = sub_22C3732A0(v175);
        sub_22C3B7040(v177, v178, v179);
        v162 = v228;
        v161 = a10;
      }

      *(v161 + 16) = v164;
      sub_22C374A68();
      v170();
      v92 = v232;
      v93 = v233;
    }

    else
    {
LABEL_98:

      sub_22C3704B8();
      v162 = v228;
      v176(v228, v242);
      v93 = v233;
      v139 = v234;
    }
  }

  v243 = v236;
  sub_22C3CE2D0(v235);
  sub_22C3CE2D0(v161);
  v180 = MEMORY[0x277D84F90];
  v181 = v243;
  v238 = v243;
  if (v139)
  {
    a10 = MEMORY[0x277D84F90];
    sub_22C3B7118(0);
    v182 = a10;
    sub_22C457430();
    v184 = v93 + v183;
    v185 = *(v92 + 72);
    v186 = *(v92 + 16);
    do
    {
      v187 = sub_22C3773A4();
      v188 = v242;
      v186(v187);
      v189 = sub_22C90825C();
      v245 = MEMORY[0x277D837D0];
      *&v244 = v189;
      *(&v244 + 1) = v190;
      sub_22C3704B8();
      v191(&a10, v188);
      a10 = v182;
      v192 = *(v182 + 16);
      sub_22C3705DC();
      if (v60)
      {
        v194 = sub_22C3732A0(v193);
        sub_22C3B7118(v194);
        v182 = a10;
      }

      *(v182 + 16) = v181;
      sub_22C456E34(&v244, (v182 + 32 * v192 + 32));
      v184 += v185;
      --v139;
    }

    while (v139);
    v92 = v232;
    v181 = v238;
  }

  else
  {
    v182 = MEMORY[0x277D84F90];
  }

  sub_22C456E44();
  v195 = sub_22C454660(v182);
  v196 = v181[2];
  if (v196)
  {
    a10 = v180;
    sub_22C3B7118(0);
    v197 = 0;
    v198 = a10;
    sub_22C457430();
    v200 = v181 + v199;
    while (v197 < v181[2])
    {
      v201 = &v200[*(v92 + 72) * v197];
      v202 = *(v92 + 16);
      v203 = v229;
      v204 = v92;
      v205 = v242;
      v202(v229, v201, v242);
      v206 = sub_22C90825C();
      v245 = MEMORY[0x277D837D0];
      *&v244 = v206;
      *(&v244 + 1) = v207;
      (*(v204 + 8))(v203, v205);
      a10 = v198;
      v208 = *(v198 + 16);
      sub_22C3705DC();
      if (v60)
      {
        v210 = sub_22C3732A0(v209);
        sub_22C3B7118(v210);
        v198 = a10;
      }

      ++v197;
      *(v198 + 16) = v204;
      sub_22C456E34(&v244, (v198 + 32 * v208 + 32));
      v92 = v232;
      v181 = v238;
      if (v196 == v197)
      {

        goto LABEL_114;
      }
    }

LABEL_121:
    __break(1u);
  }

  else
  {

    v198 = MEMORY[0x277D84F90];
LABEL_114:
    v211 = sub_22C454660(v198);
    v212 = sub_22C90ABFC();

    if ((v212 & 1) == 0)
    {

      sub_22C903F7C();
      v213 = sub_22C9063CC();
      v214 = sub_22C90AADC();
      if (os_log_type_enabled(v213, v214))
      {
        v215 = swift_slowAlloc();
        *v215 = 0;
        _os_log_impl(&dword_22C366000, v213, v214, "Names of sorted search properties do not equal names of sorted reordered search properties", v215, 2u);
        MEMORY[0x2318B9880](v215, -1, -1);
      }

      (*(v218 + 8))(v220, v219);
      sub_22C442014();
      swift_allocError();
      *v216 = xmmword_22C912340;
      *(v216 + 16) = 5;
      swift_willThrow();
    }

    sub_22C36FB20();
  }
}

id sub_22C454660(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_22C90A5DC();

  v3 = [v1 initWithArray_];

  return v3;
}

uint64_t sub_22C4546F8(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_22C454710(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_22C454768(uint64_t *a1)
{
  v2 = *(sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C348();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C45481C(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C45481C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
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
        sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C454D2C(v8, v9, a1, v4);
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
    return sub_22C454964(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C454964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  v8 = MEMORY[0x28223BE20](v51);
  v48 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = (&v39 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v39 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  result = MEMORY[0x28223BE20](v15);
  v21 = &v39 - v20;
  v41 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v46 = -v23;
    v47 = v22;
    v25 = a1 - a3;
    v40 = v23;
    v26 = v22 + v23 * a3;
    v49 = &v39 - v20;
    while (2)
    {
      v44 = v24;
      v45 = a3;
      v42 = v26;
      v43 = v25;
      v27 = v25;
      while (1)
      {
        sub_22C3E8FB4(v26, v21, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C3E8FB4(v24, v17, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C3E8FB4(v21, v14, &qword_27D9BB0D0, &qword_22C90D970);
        v28 = v14[1];
        if (v28)
        {
          v29 = *v14;
        }

        else
        {
          v29 = 0;
          v28 = 0xE000000000000000;
        }

        sub_22C456BD8(v14 + *(v51 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
        v30 = v17;
        v31 = v50;
        sub_22C3E8FB4(v17, v50, &qword_27D9BB0D0, &qword_22C90D970);
        v32 = v31;
        v33 = v31[1];
        if (v33)
        {
          v34 = *v31;
        }

        else
        {
          v34 = 0;
          v33 = 0xE000000000000000;
        }

        sub_22C456BD8(v32 + *(v51 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
        if (v29 == v34 && v28 == v33)
        {
          break;
        }

        v36 = sub_22C90B4FC();

        v17 = v30;
        sub_22C36DD28(v30, &qword_27D9BB0D0, &qword_22C90D970);
        v21 = v49;
        result = sub_22C36DD28(v49, &qword_27D9BB0D0, &qword_22C90D970);
        if (v36)
        {
          if (!v47)
          {
            __break(1u);
            return result;
          }

          v37 = v48;
          sub_22C456B08(v26, v48);
          swift_arrayInitWithTakeFrontToBack();
          result = sub_22C456B08(v37, v24);
          v24 += v46;
          v26 += v46;
          if (!__CFADD__(v27++, 1))
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      v17 = v30;
      sub_22C36DD28(v30, &qword_27D9BB0D0, &qword_22C90D970);
      v21 = v49;
      result = sub_22C36DD28(v49, &qword_27D9BB0D0, &qword_22C90D970);
LABEL_20:
      a3 = v45 + 1;
      v24 = v44 + v40;
      v25 = v43 - 1;
      v26 = v42 + v40;
      if (v45 + 1 != v41)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C454D2C(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v148 = a1;
  v170 = sub_22C3A5908(&qword_27D9BB0D0, &qword_22C90D970);
  v158 = *(v170 - 8);
  v6 = MEMORY[0x28223BE20](v170);
  v151 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v165 = &v143 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v166 = (&v143 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v143 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v143 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v169 = &v143 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v154 = (&v143 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v153 = (&v143 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v163 = &v143 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v160 = &v143 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v28);
  v159 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_128:
    v34 = *v148;
    if (!*v148)
    {
      goto LABEL_172;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_130;
    }

    goto LABEL_166;
  }

  v145 = &v143 - v29;
  v146 = v30;
  v144 = a4;
  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  v167 = v14;
  v168 = v17;
  while (1)
  {
    v34 = v32++;
    if (v32 < v31)
    {
      v156 = v31;
      v157 = v32;
      v161 = v33;
      v35 = *v159;
      v36 = *(v158 + 72);
      v37 = *v159 + v36 * v32;
      v38 = v145;
      sub_22C3E8FB4(v37, v145, &qword_27D9BB0D0, &qword_22C90D970);
      v164 = v35;
      v39 = v35 + v36 * v34;
      v40 = v38;
      v41 = v146;
      sub_22C3E8FB4(v39, v146, &qword_27D9BB0D0, &qword_22C90D970);
      v42 = v162;
      LODWORD(v155) = sub_22C45205C(v40, v41);
      v162 = v42;
      if (v42)
      {
        sub_22C36DD28(v41, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C36DD28(v40, &qword_27D9BB0D0, &qword_22C90D970);
LABEL_141:

        return;
      }

      sub_22C36DD28(v41, &qword_27D9BB0D0, &qword_22C90D970);
      sub_22C36DD28(v40, &qword_27D9BB0D0, &qword_22C90D970);
      v147 = v34;
      v43 = v34 + 2;
      v44 = v164 + v36 * (v34 + 2);
      v45 = v156;
      v32 = v157;
      v46 = v36;
      v164 = v36;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v45)
        {
          break;
        }

        v48 = v32;
        v49 = v160;
        sub_22C3E8FB4(v44, v160, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C3E8FB4(v37, v163, &qword_27D9BB0D0, &qword_22C90D970);
        v50 = v153;
        sub_22C3E8FB4(v49, v153, &qword_27D9BB0D0, &qword_22C90D970);
        v51 = v50[1];
        if (v51)
        {
          v52 = *v50;
        }

        else
        {
          v52 = 0;
          v51 = 0xE000000000000000;
        }

        sub_22C456BD8(v50 + *(v170 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
        v53 = v154;
        sub_22C3E8FB4(v163, v154, &qword_27D9BB0D0, &qword_22C90D970);
        v54 = v53;
        v55 = v53[1];
        if (v55)
        {
          v56 = *v53;
        }

        else
        {
          v56 = 0;
          v55 = 0xE000000000000000;
        }

        sub_22C456BD8(v54 + *(v170 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
        if (v52 == v56 && v51 == v55)
        {
          v58 = 0;
        }

        else
        {
          v58 = sub_22C90B4FC();
        }

        v14 = v167;

        sub_22C36DD28(v163, &qword_27D9BB0D0, &qword_22C90D970);
        sub_22C36DD28(v160, &qword_27D9BB0D0, &qword_22C90D970);
        v59 = v155 ^ v58;
        v46 = v164;
        v44 += v164;
        v37 += v164;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v17 = v168;
        v45 = v156;
        if (v59)
        {
          goto LABEL_22;
        }
      }

      v32 = v45;
LABEL_22:
      if (v155)
      {
        v34 = v147;
        if (v32 < v147)
        {
          goto LABEL_165;
        }

        if (v147 >= v32)
        {
          v33 = v161;
        }

        else
        {
          if (v45 >= v47)
          {
            v60 = v47;
          }

          else
          {
            v60 = v45;
          }

          v61 = v46 * (v60 - 1);
          v62 = v32;
          v63 = v46 * v60;
          v64 = v147 * v46;
          v157 = v62;
          v65 = v147;
          do
          {
            if (v65 != --v62)
            {
              v66 = *v159;
              if (!*v159)
              {
                goto LABEL_170;
              }

              sub_22C456B08(v66 + v64, v151);
              v67 = v64 < v61 || v66 + v64 >= v66 + v63;
              if (v67)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v64 != v61)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22C456B08(v151, v66 + v61);
              v46 = v164;
            }

            ++v65;
            v61 -= v46;
            v63 -= v46;
            v64 += v46;
          }

          while (v65 < v62);
          v33 = v161;
          v14 = v167;
          v17 = v168;
          v32 = v157;
        }
      }

      else
      {
        v33 = v161;
        v34 = v147;
      }
    }

    v68 = v159[1];
    if (v32 < v68)
    {
      if (__OFSUB__(v32, v34))
      {
        goto LABEL_162;
      }

      if (v32 - v34 < v144)
      {
        break;
      }
    }

LABEL_73:
    if (v32 < v34)
    {
      goto LABEL_161;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v33 + 2) + 1, 1, v33);
      v33 = v132;
    }

    v87 = v33;
    v88 = *(v33 + 2);
    v161 = v87;
    v89 = *(v87 + 24);
    v90 = v88 + 1;
    if (v88 >= v89 >> 1)
    {
      sub_22C590218(v89 > 1, v88 + 1, 1, v161);
      v161 = v133;
    }

    v91 = v161;
    *(v161 + 16) = v90;
    v92 = v91 + 32;
    v93 = (v91 + 32 + 16 * v88);
    *v93 = v34;
    v93[1] = v32;
    v164 = *v148;
    if (!v164)
    {
      goto LABEL_171;
    }

    if (v88)
    {
      v33 = v161;
      while (1)
      {
        v94 = v90 - 1;
        v95 = (v92 + 16 * (v90 - 1));
        v96 = &v33[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v33 + 4);
          v98 = *(v33 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_94:
          if (v100)
          {
            goto LABEL_148;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_151;
          }

          v116 = v95[1];
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_154;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_156;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        if (v90 < 2)
        {
          goto LABEL_150;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_109:
        if (v115)
        {
          goto LABEL_153;
        }

        v121 = *v95;
        v120 = v95[1];
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_155;
        }

        if (v122 < v114)
        {
          goto LABEL_125;
        }

LABEL_116:
        if (v94 - 1 >= v90)
        {
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
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
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
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*v159)
        {
          goto LABEL_168;
        }

        v34 = v32;
        v126 = (v92 + 16 * (v94 - 1));
        v127 = *v126;
        v128 = v92 + 16 * v94;
        v129 = *(v128 + 8);
        v130 = v162;
        sub_22C4559A0(*v159 + *(v158 + 72) * *v126, *v159 + *(v158 + 72) * *v128, *v159 + *(v158 + 72) * v129, v164);
        v162 = v130;
        if (v130)
        {
          goto LABEL_141;
        }

        if (v129 < v127)
        {
          goto LABEL_143;
        }

        v131 = *(v161 + 16);
        if (v94 > v131)
        {
          goto LABEL_144;
        }

        *v126 = v127;
        v126[1] = v129;
        if (v94 >= v131)
        {
          goto LABEL_145;
        }

        v90 = v131 - 1;
        sub_22C56BFF0((v128 + 16), v131 - 1 - v94, (v92 + 16 * v94));
        v33 = v161;
        *(v161 + 16) = v131 - 1;
        v17 = v168;
        v32 = v34;
        if (v131 <= 2)
        {
          goto LABEL_125;
        }
      }

      v101 = v92 + 16 * v90;
      v102 = *(v101 - 64);
      v103 = *(v101 - 56);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_146;
      }

      v106 = *(v101 - 48);
      v105 = *(v101 - 40);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_147;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_149;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_152;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = v95[1];
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_160;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_94;
    }

    v33 = v161;
LABEL_125:
    v31 = v159[1];
    v14 = v167;
    if (v32 >= v31)
    {
      goto LABEL_128;
    }
  }

  v69 = v34 + v144;
  if (__OFADD__(v34, v144))
  {
    goto LABEL_163;
  }

  if (v69 >= v68)
  {
    v69 = v159[1];
  }

  if (v69 < v34)
  {
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    v33 = sub_22C56BFD8();
LABEL_130:
    v134 = v33 + 16;
    v135 = *(v33 + 2);
    while (v135 >= 2)
    {
      if (!*v159)
      {
        goto LABEL_169;
      }

      v136 = v33;
      v137 = &v33[16 * v135];
      v138 = *v137;
      v139 = &v134[2 * v135];
      v140 = *(v139 + 1);
      v141 = v162;
      sub_22C4559A0(*v159 + *(v158 + 72) * *v137, *v159 + *(v158 + 72) * *v139, *v159 + *(v158 + 72) * v140, v34);
      v162 = v141;
      if (v141)
      {
        break;
      }

      if (v140 < v138)
      {
        goto LABEL_157;
      }

      if (v135 - 2 >= *v134)
      {
        goto LABEL_158;
      }

      *v137 = v138;
      *(v137 + 1) = v140;
      v142 = *v134 - v135;
      if (*v134 < v135)
      {
        goto LABEL_159;
      }

      v135 = *v134 - 1;
      sub_22C56BFF0(v139 + 16, v142, v139);
      *v134 = v135;
      v33 = v136;
    }

    goto LABEL_141;
  }

  if (v32 == v69)
  {
    goto LABEL_73;
  }

  v161 = v33;
  v70 = *v159;
  v71 = *(v158 + 72);
  v72 = *v159 + v71 * (v32 - 1);
  v73 = -v71;
  v147 = v34;
  v74 = v34 - v32;
  v164 = v70;
  v149 = v71;
  v150 = v69;
  v75 = v70 + v32 * v71;
LABEL_53:
  v156 = v72;
  v157 = v32;
  v152 = v75;
  v155 = v74;
  v76 = v72;
  while (1)
  {
    v77 = v169;
    sub_22C3E8FB4(v75, v169, &qword_27D9BB0D0, &qword_22C90D970);
    sub_22C3E8FB4(v76, v17, &qword_27D9BB0D0, &qword_22C90D970);
    sub_22C3E8FB4(v77, v14, &qword_27D9BB0D0, &qword_22C90D970);
    v78 = v14[1];
    if (v78)
    {
      v79 = *v14;
    }

    else
    {
      v79 = 0;
      v78 = 0xE000000000000000;
    }

    sub_22C456BD8(v14 + *(v170 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
    v80 = v166;
    sub_22C3E8FB4(v17, v166, &qword_27D9BB0D0, &qword_22C90D970);
    v81 = v80;
    v82 = v80[1];
    if (v82)
    {
      v83 = *v80;
    }

    else
    {
      v83 = 0;
      v82 = 0xE000000000000000;
    }

    sub_22C456BD8(v81 + *(v170 + 48), type metadata accessor for StatefulExpressionParser.ToolData.Argument);
    if (v79 == v83 && v78 == v82)
    {

      v17 = v168;
      sub_22C36DD28(v168, &qword_27D9BB0D0, &qword_22C90D970);
      sub_22C36DD28(v169, &qword_27D9BB0D0, &qword_22C90D970);
LABEL_70:
      v14 = v167;
LABEL_71:
      v32 = v157 + 1;
      v72 = v156 + v149;
      v74 = v155 - 1;
      v75 = v152 + v149;
      if (v157 + 1 == v150)
      {
        v32 = v150;
        v33 = v161;
        v34 = v147;
        goto LABEL_73;
      }

      goto LABEL_53;
    }

    v85 = sub_22C90B4FC();

    v17 = v168;
    sub_22C36DD28(v168, &qword_27D9BB0D0, &qword_22C90D970);
    sub_22C36DD28(v169, &qword_27D9BB0D0, &qword_22C90D970);
    if ((v85 & 1) == 0)
    {
      goto LABEL_70;
    }

    v14 = v167;
    if (!v164)
    {
      break;
    }

    v86 = v165;
    sub_22C456B08(v75, v165);
    swift_arrayInitWithTakeFrontToBack();
    sub_22C456B08(v86, v76);
    v76 += v73;
    v75 += v73;
    v67 = __CFADD__(v74++, 1);
    if (v67)
    {
      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
}