uint64_t sub_24FF231D8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24FF23260@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24FF25B18(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_24FF2328C()
{
  sub_24FF266C4();
  sub_24FF61BE8();
  v0 = sub_24FF26764();

  return sub_24FF24B70(v0, v1, v2);
}

uint64_t sub_24FF232C4()
{
  sub_24FF266C4();
  sub_24FF61BE8();
  v0 = sub_24FF26714();

  return sub_24FF24B98(v0, v1, v2, v3);
}

uint64_t sub_24FF232FC()
{
  sub_24FF266C4();
  sub_24FF61C18();
  v0 = sub_24FF26764();

  return sub_24FF24B70(v0, v1, v2);
}

uint64_t sub_24FF23334()
{
  sub_24FF266C4();
  sub_24FF61C18();
  v0 = sub_24FF26714();

  return sub_24FF24B98(v0, v1, v2, v3);
}

uint64_t sub_24FF2336C()
{
  sub_24FF266C4();
  sub_24FF619B8();
  v0 = sub_24FF26764();

  return sub_24FF24B70(v0, v1, v2);
}

uint64_t sub_24FF233A4()
{
  sub_24FF266C4();
  sub_24FF619B8();
  v0 = sub_24FF26714();

  return sub_24FF24B98(v0, v1, v2, v3);
}

uint64_t sub_24FF23620(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24FF236C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24FF61898();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_24FF24B70(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_24FF23770(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24FF61898();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_24FF24B98(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24FF23874()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24FF238B4()
{
  sub_24FF277EC();
  v1 = sub_24FF25460(&qword_27F3B4310, &qword_24FF63BF0);
  sub_24FF2552C();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_24FF25460(&qword_27F3B4388, &qword_24FF63D48);
  sub_24FF2552C();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_24FF277D4();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_24FF239F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24FF23A58()
{
  sub_24FF277EC();
  v1 = sub_24FF61B88();
  sub_24FF2552C();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = v4 + *(v5 + 64);
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  v7 = sub_24FF61F98();
  sub_24FF2552C();
  v9 = v8;
  v10 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_24FF277D4();

  return MEMORY[0x2821FE8E8](v11, v12, v13);
}

uint64_t sub_24FF23BB0()
{
  sub_24FF4AF68(&qword_27F3B42F0, &qword_24FF63AF0);
  v1 = sub_24FF61F98();
  sub_24FF2552C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_24FF23CB8()
{
  sub_24FF277EC();
  v1 = sub_24FF61898();
  sub_24FF2552C();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (type metadata accessor for FieldStreamingSupport(0) - 8);
  v8 = (v6 + *(*v7 + 80) + 8) & ~*(*v7 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  sub_24FF25460(&qword_27F3B43E0, &qword_24FF63E10);
  sub_24FF26754();
  (*(v9 + 8))(v0 + v8);
  v10 = v7[7];
  sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
  sub_24FF26754();
  (*(v11 + 8))(v0 + v8 + v10);
  sub_24FF277D4();

  return MEMORY[0x2821FE8E8](v12, v13, v14);
}

uint64_t sub_24FF23EA8()
{

  sub_24FF5FA20();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24FF23EE4()
{

  sub_24FF5FA20();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24FF23F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24FF61898();
  sub_24FF5FAA8();
  if (*(v7 + 84) == a2)
  {

    return sub_24FF24B70(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_24FF23FC0()
{
  sub_24FF5FAB4();
  sub_24FF61898();
  sub_24FF5FAA8();
  if (*(v5 + 84) == v3)
  {

    sub_24FF24B98(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_24FF24058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24FF25460(&qword_27F3B43E0, &qword_24FF63E10);
  sub_24FF5FAA8();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    v8 = sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
    v9 = a1 + *(a3 + 20);
  }

  return sub_24FF24B70(v9, a2, v8);
}

uint64_t sub_24FF24108()
{
  sub_24FF5FAB4();
  sub_24FF25460(&qword_27F3B43E0, &qword_24FF63E10);
  sub_24FF5FAA8();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v6 = sub_24FF25460(&qword_27F3B43E8, &qword_24FF63E20);
    v7 = v1 + *(v2 + 20);
  }

  return sub_24FF24B98(v7, v0, v0, v6);
}

uint64_t sub_24FF241B4()
{

  sub_24FF5F914();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24FF241E8()
{

  sub_24FF5F914();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_24FF242B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18[1] = a6;
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v15 = swift_allocBox();
  (*(v12 + 16))(v14, v6, a3);
  sub_24FF61F28();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = a1;
  v16[7] = a2;

  return sub_24FF61FE8();
}

uint64_t sub_24FF24420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a1;
  v7[6] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[11] = AssociatedTypeWitness;
  v9 = sub_24FF62028();
  v7[12] = v9;
  v7[13] = *(v9 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = *(AssociatedTypeWitness - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_getAssociatedTypeWitness();
  v7[18] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_24FF245B0, 0, 0);
}

uint64_t sub_24FF245B0()
{
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_24FF24698;
  v3 = v0[17];
  v4 = v0[14];

  return MEMORY[0x282200308](v4, v3, AssociatedConformanceWitness);
}

uint64_t sub_24FF24698()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24FF24938;
  }

  else
  {
    swift_endAccess();
    v2 = sub_24FF247B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24FF247B4()
{
  v2 = v0 + 11;
  v1 = v0[11];
  v3 = v0[14];
  v4 = sub_24FF24B70(v3, 1, v1);
  v5 = v0[16];
  if (v4 == 1)
  {
    v6 = v0 + 13;
    v2 = v0 + 12;
    v7 = 1;
    v8 = v3;
  }

  else
  {
    v6 = v0 + 15;
    v7 = v0[20];
    v9 = v0[6];
    (*(v0[15] + 32))(v0[16], v3, v1);
    v9(v5);
    if (v7)
    {
      (*(v0[15] + 8))(v0[16], v0[11]);

      sub_24FF24BC0();
      goto LABEL_7;
    }

    v8 = v0[16];
  }

  v11 = v0[9];
  v12 = v0[5];
  (*(*v6 + 8))(v8, *v2);
  sub_24FF24B98(v12, v7, 1, v11);

  sub_24FF24BC0();
LABEL_7:

  return v10();
}

uint64_t sub_24FF24938()
{
  swift_endAccess();

  sub_24FF24BC0();

  return v0();
}

uint64_t sub_24FF249AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24FF24A80;

  return sub_24FF24420(a1, v7, v9, v8, v4, v5, v6);
}

uint64_t sub_24FF24A80()
{

  sub_24FF24BC0();

  return v0();
}

char *sub_24FF24BCC(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v3 = sub_24FF25460(&qword_27F3B3E10, &qword_24FF62750);
  MEMORY[0x28223BE20](v3 - 8);
  v89 = &v80 - v4;
  v100 = sub_24FF61B88();
  sub_24FF2552C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_24FF25518();
  v88 = v8;
  sub_24FF25540();
  MEMORY[0x28223BE20](v9);
  v99 = &v80 - v10;
  v11 = sub_24FF61968();
  sub_24FF2552C();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_24FF25518();
  v94 = v15;
  sub_24FF25540();
  MEMORY[0x28223BE20](v16);
  v105 = &v80 - v17;
  sub_24FF25540();
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  v21 = sub_24FF61978();
  sub_24FF2552C();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_24FF25518();
  v98 = v25;
  sub_24FF25540();
  MEMORY[0x28223BE20](v26);
  v87 = &v80 - v27;
  sub_24FF25540();
  MEMORY[0x28223BE20](v28);
  v101 = &v80 - v29;
  sub_24FF25540();
  MEMORY[0x28223BE20](v30);
  v32 = &v80 - v31;
  sub_24FF61B68();
  v96 = *(v23 + 88);
  v97 = v23 + 88;
  if (v96(v32, v21) != *MEMORY[0x277D0DC68])
  {
    (*(v23 + 8))(v32, v21);
    return 0;
  }

  v91 = v6;
  v33 = *(v23 + 96);
  v95 = v21;
  v86 = v23 + 96;
  v85 = v33;
  v33(v32, v21);
  v34 = *(*v32 + 16);

  v36 = 0;
  v103 = *(v34 + 16);
  v106 = (v13 + 8);
  v107 = v13 + 16;
  v93 = (v13 + 32);
  v81 = MEMORY[0x277D84F90];
  v102 = a2;
  while (v103 != v36)
  {
    if (v36 >= *(v34 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v37 = v23;
    v38 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v39 = *(v13 + 72);
    (*(v13 + 16))(v20, v34 + v38 + v39 * v36, v11);
    if (sub_24FF61948() == v104 && v40 == a2)
    {
    }

    else
    {
      v42 = sub_24FF62158();

      if ((v42 & 1) == 0)
      {
        result = (*v106)(v20, v11);
        ++v36;
        goto LABEL_11;
      }
    }

    v43 = *v93;
    (*v93)(v94, v20, v11);
    v44 = v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v44;
    v92 = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24FF5C9E4(0, *(v44 + 16) + 1, 1);
      v44 = v108;
    }

    v47 = *(v44 + 16);
    v46 = *(v44 + 24);
    v48 = (v47 + 1);
    if (v47 >= v46 >> 1)
    {
      v90 = (v47 + 1);
      sub_24FF5C9E4((v46 > 1), v47 + 1, 1);
      v48 = v90;
      v44 = v108;
    }

    ++v36;
    *(v44 + 16) = v48;
    v81 = v44;
    result = (v92)(v44 + v38 + v47 * v39, v94, v11);
LABEL_11:
    a2 = v102;
    v23 = v37;
  }

  v50 = *(v81 + 16);
  if (v50)
  {
    v51 = v81 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v52 = *(v13 + 72);
    v103 = *(v13 + 16);
    LODWORD(v94) = *MEMORY[0x277D0DC60];
    v93 = (v23 + 8);
    v83 = (v23 + 32);
    v82 = (v23 + 16);
    v49 = MEMORY[0x277D84F90];
    v92 = (v91 + 8);
    v91 = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v95;
    v84 = v11;
    while (1)
    {
      v103(v105, v51, v11);
      sub_24FF61958();
      v54 = v99;
      sub_24FF61B78();
      v55 = v98;
      sub_24FF61B68();
      v56 = v96(v55, v53);
      if (v56 == v94)
      {
        v85(v55, v53);
        v57 = swift_projectBox();
        v58 = v89;
        sub_24FF254A8(v57, v89);
        v59 = *v83;
        v90 = v49;
        v60 = v50;
        v61 = v52;
        v62 = v101;
        v63 = v87;
        v59(v87, v58, v53);

        (*v82)(v62, v63, v53);
        v64 = v54;
        v65 = v88;
        v52 = v61;
        v50 = v60;
        v49 = v90;
        sub_24FF61B78();
        v66 = v53;
        v67 = sub_24FF61B58();
        v68 = *v92;
        v69 = v65;
        v70 = v100;
        (*v92)(v69, v100);
        v71 = v63;
        v11 = v84;
        (*v93)(v71, v66);
      }

      else
      {
        (*v93)(v55, v53);
        v67 = sub_24FF61B58();
        v68 = *v92;
        v64 = v54;
        v70 = v100;
      }

      v68(v64, v70);
      result = (*v106)(v105, v11);
      v72 = *(v67 + 16);
      v73 = *(v49 + 2);
      v74 = v73 + v72;
      if (__OFADD__(v73, v72))
      {
        goto LABEL_44;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v74 > *(v49 + 3) >> 1)
      {
        if (v73 <= v74)
        {
          v75 = v73 + v72;
        }

        else
        {
          v75 = v73;
        }

        result = sub_24FF4B214(result, v75, 1, v49);
        v49 = result;
      }

      if (*(v67 + 16))
      {
        if ((*(v49 + 3) >> 1) - *(v49 + 2) < v72)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        v53 = v95;
        if (v72)
        {
          v76 = *(v49 + 2);
          v77 = __OFADD__(v76, v72);
          v78 = v76 + v72;
          if (v77)
          {
            goto LABEL_47;
          }

          *(v49 + 2) = v78;
        }
      }

      else
      {

        v53 = v95;
        if (v72)
        {
          goto LABEL_45;
        }
      }

      v51 += v52;
      if (!--v50)
      {

        goto LABEL_40;
      }
    }
  }

  v49 = MEMORY[0x277D84F90];
LABEL_40:
  v79 = v102;
  if (!*(v49 + 2))
  {

    sub_24FF25460(&qword_27F3B3E18, &qword_24FF62758);
    v49 = swift_allocObject();
    *(v49 + 1) = xmmword_24FF62740;
    *(v49 + 4) = v104;
    *(v49 + 5) = v79;
  }

  return v49;
}

uint64_t sub_24FF25460(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24FF254A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24FF25460(&qword_27F3B3E10, &qword_24FF62750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF255F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24FF255A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24FF2561C(uint64_t a1)
{
  v2 = sub_24FF257FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FF25658(uint64_t a1)
{
  v2 = sub_24FF257FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _GenerativeFunctionOverridableInternals_CompletionPrompt.encode(to:)(void *a1)
{
  sub_24FF25460(&qword_27F3B3E20, &qword_24FF627B0);
  sub_24FF2552C();
  sub_24FF26800();
  MEMORY[0x28223BE20](v2);
  sub_24FF257B8(a1, a1[3]);
  v3 = sub_24FF257FC();
  sub_24FF26834(&type metadata for _GenerativeFunctionOverridableInternals_CompletionPrompt.CodingKeys, v4, v3);
  sub_24FF61BE8();
  sub_24FF266D4();
  v7 = sub_24FF2601C(v5, v6, MEMORY[0x277D42D48]);
  sub_24FF26774(v7, v8);
  v9 = sub_24FF26820();
  return v10(v9);
}

void *sub_24FF257B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24FF257FC()
{
  result = qword_27F3B3E28;
  if (!qword_27F3B3E28)
  {
    result = swift_getWitnessTable(asc_24FF62B04, &type metadata for _GenerativeFunctionOverridableInternals_CompletionPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F3B3E28);
  }

  return result;
}

uint64_t _GenerativeFunctionOverridableInternals_CompletionPrompt.init(from:)@<X0>(uint64_t a1@<X8>)
{
  sub_24FF267D8(a1);
  sub_24FF61BE8();
  sub_24FF2552C();
  MEMORY[0x28223BE20](v3);
  sub_24FF26704();
  sub_24FF25460(&qword_27F3B3E38, &qword_24FF627B8);
  sub_24FF2552C();
  sub_24FF26800();
  MEMORY[0x28223BE20](v4);
  v5 = sub_24FF267EC();
  v6 = type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt(v5);
  MEMORY[0x28223BE20](v6 - 8);
  sub_24FF26704();
  v9 = v8 - v7;
  sub_24FF257B8(v1, v1[3]);
  v10 = sub_24FF257FC();
  sub_24FF267B4(&type metadata for _GenerativeFunctionOverridableInternals_CompletionPrompt.CodingKeys, v11, v10);
  if (!v2)
  {
    sub_24FF266D4();
    v14 = sub_24FF2601C(v12, v13, MEMORY[0x277D42D50]);
    sub_24FF26728(v14, v15);
    v16 = sub_24FF2679C();
    v17(v16);
    v18 = sub_24FF2680C();
    v19(v18);
    sub_24FF26064(v9, v21, type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt);
  }

  return sub_24FF25A6C(v1);
}

uint64_t sub_24FF25A6C(void *a1)
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

uint64_t sub_24FF25B18(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_24FF62158();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_24FF25B8C()
{
  sub_24FF621F8();
  MEMORY[0x25305CD50](0);
  return sub_24FF62218();
}

uint64_t sub_24FF25BD0(uint64_t a1)
{
  sub_24FF621F8();
  MEMORY[0x25305CD50](0);
  return sub_24FF62218();
}

uint64_t sub_24FF25C10(uint64_t a1)
{
  v2 = sub_24FF25DAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24FF25C4C(uint64_t a1)
{
  v2 = sub_24FF25DAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.encode(to:)(void *a1)
{
  sub_24FF25460(&qword_27F3B3E48, &qword_24FF627C0);
  sub_24FF2552C();
  sub_24FF26800();
  MEMORY[0x28223BE20](v2);
  sub_24FF257B8(a1, a1[3]);
  v3 = sub_24FF25DAC();
  sub_24FF26834(&type metadata for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.CodingKeys, v4, v3);
  sub_24FF61C18();
  sub_24FF266EC();
  v7 = sub_24FF2601C(v5, v6, MEMORY[0x277D42D80]);
  sub_24FF26774(v7, v8);
  v9 = sub_24FF26820();
  return v10(v9);
}

unint64_t sub_24FF25DAC()
{
  result = qword_27F3B3E50;
  if (!qword_27F3B3E50)
  {
    result = swift_getWitnessTable(aU, &type metadata for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F3B3E50);
  }

  return result;
}

uint64_t _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.init(from:)@<X0>(uint64_t a1@<X8>)
{
  sub_24FF267D8(a1);
  sub_24FF61C18();
  sub_24FF2552C();
  MEMORY[0x28223BE20](v3);
  sub_24FF26704();
  sub_24FF25460(&qword_27F3B3E60, &qword_24FF627C8);
  sub_24FF2552C();
  sub_24FF26800();
  MEMORY[0x28223BE20](v4);
  v5 = sub_24FF267EC();
  v6 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt(v5);
  MEMORY[0x28223BE20](v6 - 8);
  sub_24FF26704();
  v9 = v8 - v7;
  sub_24FF257B8(v1, v1[3]);
  v10 = sub_24FF25DAC();
  sub_24FF267B4(&type metadata for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.CodingKeys, v11, v10);
  if (!v2)
  {
    sub_24FF266EC();
    v14 = sub_24FF2601C(v12, v13, MEMORY[0x277D42D88]);
    sub_24FF26728(v14, v15);
    v16 = sub_24FF2679C();
    v17(v16);
    v18 = sub_24FF2680C();
    v19(v18);
    sub_24FF26064(v9, v21, type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt);
  }

  return sub_24FF25A6C(v1);
}

uint64_t sub_24FF2601C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FF26064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  sub_24FF26754();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_24FF2610C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1(0);
  sub_24FF26754();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t sub_24FF2618C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  a2(0);
  sub_24FF26754();
  v7 = *(v6 + 32);

  return v7(a3, a1, v5);
}

uint64_t sub_24FF262BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FF2630C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _GenerativeFunctionOverrideHelpers(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_24FF263F0(_BYTE *result, int a2, int a3)
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

unint64_t sub_24FF264A0()
{
  result = qword_27F3B3E70;
  if (!qword_27F3B3E70)
  {
    result = swift_getWitnessTable(byte_24FF629D4, &type metadata for _GenerativeFunctionOverridableInternals_CompletionPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F3B3E70);
  }

  return result;
}

unint64_t sub_24FF264F8()
{
  result = qword_27F3B3E78;
  if (!qword_27F3B3E78)
  {
    result = swift_getWitnessTable("=v-2$5", &type metadata for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F3B3E78);
  }

  return result;
}

unint64_t sub_24FF26550()
{
  result = qword_27F3B3E80;
  if (!qword_27F3B3E80)
  {
    result = swift_getWitnessTable(byte_24FF629FC, &type metadata for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F3B3E80);
  }

  return result;
}

unint64_t sub_24FF265A8()
{
  result = qword_27F3B3E88;
  if (!qword_27F3B3E88)
  {
    result = swift_getWitnessTable(byte_24FF62A24, &type metadata for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F3B3E88);
  }

  return result;
}

unint64_t sub_24FF26600()
{
  result = qword_27F3B3E90;
  if (!qword_27F3B3E90)
  {
    result = swift_getWitnessTable(asc_24FF62944, &type metadata for _GenerativeFunctionOverridableInternals_CompletionPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F3B3E90);
  }

  return result;
}

unint64_t sub_24FF26658()
{
  result = qword_27F3B3E98;
  if (!qword_27F3B3E98)
  {
    result = swift_getWitnessTable(aM, &type metadata for _GenerativeFunctionOverridableInternals_CompletionPrompt.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F3B3E98);
  }

  return result;
}

uint64_t sub_24FF26728(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDA28](v2, a2, v3, v2, a1);
}

uint64_t sub_24FF26774(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FDB68](v4, a2, v3, v2, a1);
}

uint64_t sub_24FF267B4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FE4E0](a1, a1, a3, v3, v4);
}

uint64_t sub_24FF26834(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FE508](a1, a1, a3, v3, v4);
}

uint64_t static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)()
{
  v2 = sub_24FF27798();
  type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt(v2);
  sub_24FF26754();
  MEMORY[0x28223BE20](v3);
  sub_24FF26704();
  v6 = v5 - v4;
  sub_24FF61C18();
  sub_24FF26754();
  (*(v7 + 16))(v6, v0);
  sub_24FF61848();
  swift_allocObject();
  sub_24FF61838();
  v8 = sub_24FF27398(&qword_27F3B3EA0, type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt, protocol conformance descriptor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt);
  sub_24FF277B0(v8);
  sub_24FF2771C();

  if (!v1)
  {
  }

  return sub_24FF2776C();
}

{
  v2 = sub_24FF27798();
  type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt(v2);
  sub_24FF26754();
  MEMORY[0x28223BE20](v3);
  sub_24FF26704();
  v6 = v5 - v4;
  sub_24FF61BE8();
  sub_24FF26754();
  (*(v7 + 16))(v6, v0);
  sub_24FF61848();
  swift_allocObject();
  sub_24FF61838();
  v8 = sub_24FF27398(&qword_27F3B3EA8, type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt, protocol conformance descriptor for _GenerativeFunctionOverridableInternals_CompletionPrompt);
  sub_24FF277B0(v8);
  sub_24FF27744();

  if (!v1)
  {
  }

  return sub_24FF2776C();
}

uint64_t sub_24FF26ABC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_24FF26754();
  (*(v3 + 8))(a1);
  return a1;
}

void static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:)(uint64_t a1)
{
  sub_24FF277EC();
  v4 = sub_24FF27828(v1, v2, v3);
  sub_24FF2552C();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_24FF26704();
  v10 = v9 - v8;
  v11 = sub_24FF61BE8();
  sub_24FF2552C();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_24FF276F4();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  sub_24FF61CB8();
  sub_24FF61BD8();
  sub_24FF27704();
  sub_24FF27398(v21, v22, MEMORY[0x277D42D38]);
  sub_24FF61C68();
  (*(v6 + 8))(v10, v4);
  sub_24FF61C78();
  v23 = *(v13 + 8);
  v23(v17, v11);
  sub_24FF61C88();

  v23(v20, v11);
  sub_24FF277D4();
}

{
  sub_24FF277EC();
  sub_24FF27828(v2, v3, v4);
  sub_24FF2552C();
  v23 = v6;
  v24 = v5;
  MEMORY[0x28223BE20](v5);
  sub_24FF26704();
  v9 = v8 - v7;
  v10 = sub_24FF61C18();
  sub_24FF2552C();
  v22 = v11;
  MEMORY[0x28223BE20](v12);
  sub_24FF276F4();
  sub_24FF27788();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  sub_24FF25460(&qword_27F3B3EB0, &unk_24FF62B60);
  sub_24FF61CB8();
  sub_24FF61CB8();
  sub_24FF61C08();
  sub_24FF276DC();
  sub_24FF27398(v19, v20, MEMORY[0x277D42D70]);
  sub_24FF2781C();
  sub_24FF61C68();
  (*(v23 + 8))(v9, v24);
  sub_24FF2781C();
  sub_24FF61C98();

  v21 = *(v22 + 8);
  v21(v1, v10);
  sub_24FF2781C();
  sub_24FF61C78();
  v21(v16, v10);
  sub_24FF2781C();
  sub_24FF61C88();

  v21(v18, v10);
  sub_24FF277D4();
}

void static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingVariables:bindingConfigurations:)(uint64_t a1)
{
  sub_24FF277EC();
  v22[2] = v3;
  v22[3] = v2;
  v22[1] = v4;
  v5 = sub_24FF61CA8();
  sub_24FF2552C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_24FF26704();
  v11 = v10 - v9;
  v12 = sub_24FF61BE8();
  sub_24FF2552C();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_24FF276F4();
  sub_24FF27788();
  MEMORY[0x28223BE20](v16);
  v18 = v22 - v17;
  sub_24FF61BD8();
  sub_24FF27704();
  sub_24FF27398(v19, v20, MEMORY[0x277D42D38]);
  sub_24FF61C68();
  (*(v7 + 8))(v11, v5);
  sub_24FF61C78();
  v21 = *(v14 + 8);
  v21(v1, v12);
  sub_24FF61C88();
  v21(v18, v12);
  sub_24FF277D4();
}

void static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)(uint64_t a1)
{
  sub_24FF277EC();
  v29[4] = v2;
  v29[5] = v1;
  v29[2] = v3;
  v29[3] = v4;
  v29[1] = v5;
  v6 = sub_24FF61CA8();
  sub_24FF2552C();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_24FF26704();
  v12 = v11 - v10;
  v13 = sub_24FF61C18();
  sub_24FF2552C();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_24FF276F4();
  v19 = (v17 - v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v29 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v29 - v24;
  sub_24FF61C08();
  sub_24FF276DC();
  sub_24FF27398(v26, v27, MEMORY[0x277D42D70]);
  sub_24FF27804();
  sub_24FF61C68();
  (*(v8 + 8))(v12, v6);
  sub_24FF27804();
  sub_24FF61C98();
  v28 = *(v15 + 8);
  v28(v19, v13);
  sub_24FF27804();
  sub_24FF61C78();
  v28(v23, v13);
  sub_24FF27804();
  sub_24FF61C88();
  v28(v25, v13);
  sub_24FF277D4();
}

uint64_t sub_24FF27398(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:)(uint64_t a1)
{
  sub_24FF277EC();
  v29 = v2;
  v30 = v3;
  v28 = v4;
  v31 = v5;
  v27 = sub_24FF61CA8();
  sub_24FF2552C();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_24FF26704();
  v11 = v10 - v9;
  v12 = sub_24FF61C18();
  sub_24FF2552C();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_24FF276F4();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  sub_24FF27788();
  MEMORY[0x28223BE20](v20);
  v22 = &v26 - v21;
  sub_24FF61CB8();
  sub_24FF61C08();
  sub_24FF276DC();
  sub_24FF27398(v23, v24, MEMORY[0x277D42D70]);
  sub_24FF27810();
  sub_24FF61C68();
  (*(v7 + 8))(v11, v27);
  sub_24FF27810();
  sub_24FF61C98();
  v25 = *(v14 + 8);
  v25(v18, v12);
  sub_24FF27810();
  sub_24FF61C78();
  v25(v1, v12);
  sub_24FF27810();
  sub_24FF61C88();

  v25(v22, v12);
  sub_24FF277D4();
}

_BYTE *storeEnumTagSinglePayload for _GenerativeFunctionOverrideHelpers(_BYTE *result, int a2, int a3)
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

uint64_t sub_24FF2771C()
{

  return sub_24FF26ABC(v0, type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt);
}

uint64_t sub_24FF27744()
{

  return sub_24FF26ABC(v0, type metadata accessor for _GenerativeFunctionOverridableInternals_CompletionPrompt);
}

uint64_t sub_24FF277B0(uint64_t a1)
{

  return MEMORY[0x28211B658](v1, v2, a1);
}

uint64_t sub_24FF27828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 96) = a2;
  *(v3 - 88) = a3;

  return sub_24FF61CA8();
}

uint64_t *sub_24FF27888(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_24FF278EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24FF27944(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_24FF61BC8();
  sub_24FF27888(v5, a2);
  sub_24FF278EC(v5, a2);
  return sub_24FF61BB8();
}

uint64_t sub_24FF279BC()
{
  v0 = sub_24FF61C38();
  sub_24FF27888(v0, qword_27F3B3EB8);
  sub_24FF278EC(v0, qword_27F3B3EB8);
  return sub_24FF61C48();
}

uint64_t ChatLanguageModelProviding.respond(to:parameters:)()
{
  sub_24FF2BC7C();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  sub_24FF2BD98(v5, v6, v7, v8);
  v1[26] = sub_24FF61C18();
  sub_24FF2552C();
  v1[27] = v9;
  v1[28] = sub_24FF2C24C();
  v10 = swift_task_alloc();
  v1[30] = sub_24FF2C234(v10);
  sub_24FF2BA84();
  v13 = sub_24FF2B9FC(v11, v12, MEMORY[0x277D42D70]);
  v14 = sub_24FF2BB88(v13);
  v1[32] = v14;
  sub_24FF2BA9C(v14);
  v1[33] = v15;
  v16 = sub_24FF2C21C();
  v1[35] = sub_24FF2C204(v16);
  v1[36] = sub_24FF2BEF8();
  v1[37] = sub_24FF2BE24();
  v17 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_24FF27DF0()
{
  sub_24FF2BC7C();
  v2 = *v1;
  sub_24FF2BB08();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 312) = v0;

  (*(v2[33] + 8))(v2[35], v2[32]);
  sub_24FF2BBB0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF27F44()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF25A6C((v0 + 16));

  sub_24FF24BC0();
  sub_24FF2C004();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_24FF27FE4()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  v2 = *v1;
  v3 = *v1;
  sub_24FF2BACC();
  *v4 = v3;
  *v4 = *v1;
  v3[41] = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    sub_24FF2C18C();

    sub_24FF2C14C();
    sub_24FF2C004();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t sub_24FF28188()
{
  sub_24FF2BC30();
  sub_24FF25A6C((v0 + 16));
  sub_24FF2C0A4();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF2822C()
{
  sub_24FF2BC30();
  sub_24FF2C0A4();

  sub_24FF24BC0();

  return v0();
}

uint64_t sub_24FF282C8(uint64_t a1)
{
  v2 = sub_24FF25460(&qword_27F3B3ED8, &qword_24FF62BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_24FF28348(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t ChatLanguageModelProviding.respond<A>(to:)()
{
  sub_24FF2BC70();
  v0[12] = sub_24FF2C03C(v1, v2, v3, v4, v5, v6);
  sub_24FF2552C();
  v0[13] = v7;
  v0[14] = sub_24FF2BE24();
  sub_24FF2BA84();
  v10 = sub_24FF2B9FC(v8, v9, MEMORY[0x277D42D70]);
  v0[15] = v10;
  v11 = sub_24FF2BB64(v10);
  v0[16] = v11;
  sub_24FF2BA9C(v11);
  v0[17] = v12;
  v0[18] = sub_24FF2BE24();
  v13 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  sub_24FF2BC70();
  sub_24FF2BC48(v1, v2, v3, v4, v5);
  v0[11] = sub_24FF61C18();
  sub_24FF2BA84();
  v8 = sub_24FF2B9FC(v6, v7, MEMORY[0x277D42D70]);
  v0[12] = v8;
  v9 = sub_24FF2BB64(v8);
  v0[13] = v9;
  sub_24FF2BA9C(v9);
  v0[14] = v10;
  v0[15] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF28470()
{
  (*(v0 + 56))();
  sub_24FF2BC94(*(v0 + 88), *(v0 + 144));
  v1 = sub_24FF2BD88();
  v2(v1);
  v3 = sub_24FF2BADC();
  sub_24FF28330(v3, v4, v5);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 152) = v6;
  *v6 = v7;
  v6[1] = sub_24FF285B4;
  sub_24FF2BDA8();
  sub_24FF2C1EC();

  return GenerativeConfigurationRunnable<>.run(returning:)(v8);
}

uint64_t sub_24FF285B4()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  v2 = *v1;
  sub_24FF2BACC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {
    v4 = sub_24FF2C10C();
    v5(v4);
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    v10 = sub_24FF2C10C();
    v11(v10);

    sub_24FF2C0E4();
    sub_24FF2C004();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_24FF28750()
{
  sub_24FF2BC70();

  sub_24FF24BC0();

  return v0();
}

uint64_t sub_24FF2888C()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BBE0();
  v1 = sub_24FF2BADC();
  sub_24FF28330(v1, v2, v3);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v4;
  *v4 = v5;
  sub_24FF2BB44(v4);
  sub_24FF2C004();

  return GenerativeConfigurationRunnable<>.run(returning:)(v6);
}

uint64_t sub_24FF2892C()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  *(v3 + 136) = v0;

  v7 = sub_24FF2BC60();
  v8(v7);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    sub_24FF24BC0();
    sub_24FF2C004();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_24FF28AA0()
{
  sub_24FF2BC70();

  sub_24FF24BC0();

  return v0();
}

uint64_t ChatLanguageModelProvidingStreamable.streamResponse(to:parameters:)()
{
  sub_24FF2BC7C();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  sub_24FF2BD98(v5, v6, v7, v8);
  v1[26] = sub_24FF61C18();
  sub_24FF2552C();
  v1[27] = v9;
  v1[28] = sub_24FF2C24C();
  v10 = swift_task_alloc();
  v1[30] = sub_24FF2C234(v10);
  sub_24FF2BA84();
  v13 = sub_24FF2B9FC(v11, v12, MEMORY[0x277D42D70]);
  v14 = sub_24FF2BB88(v13);
  v1[32] = v14;
  sub_24FF2BA9C(v14);
  v1[33] = v15;
  v16 = sub_24FF2C21C();
  v1[35] = sub_24FF2C204(v16);
  v1[36] = sub_24FF2BEF8();
  v1[37] = sub_24FF2BE24();
  v17 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_24FF28ECC()
{
  sub_24FF2BC7C();
  v2 = *v1;
  sub_24FF2BB08();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 312) = v0;

  (*(v2[33] + 8))(v2[35], v2[32]);
  sub_24FF2BBB0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24FF29020()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  v2 = *v1;
  v3 = *v1;
  sub_24FF2BACC();
  *v4 = v3;
  *v4 = *v1;
  v3[41] = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    sub_24FF2C18C();

    sub_24FF2C14C();
    sub_24FF2C004();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

uint64_t ChatLanguageModelProvidingStreamable.streamResponse<A>(to:)()
{
  sub_24FF2BC70();
  v0[12] = sub_24FF2C03C(v1, v2, v3, v4, v5, v6);
  sub_24FF2552C();
  v0[13] = v7;
  v0[14] = sub_24FF2BE24();
  sub_24FF2BA84();
  v10 = sub_24FF2B9FC(v8, v9, MEMORY[0x277D42D70]);
  v0[15] = v10;
  v11 = sub_24FF2BB64(v10);
  v0[16] = v11;
  sub_24FF2BA9C(v11);
  v0[17] = v12;
  v0[18] = sub_24FF2BE24();
  v13 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

{
  sub_24FF2BC70();
  sub_24FF2BC48(v1, v2, v3, v4, v5);
  v0[11] = sub_24FF61C18();
  sub_24FF2BA84();
  v8 = sub_24FF2B9FC(v6, v7, MEMORY[0x277D42D70]);
  v0[12] = v8;
  v9 = sub_24FF2BB64(v8);
  v0[13] = v9;
  sub_24FF2BA9C(v9);
  v0[14] = v10;
  v0[15] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF292EC()
{
  (*(v0 + 56))();
  sub_24FF2BC94(*(v0 + 88), *(v0 + 144));
  v1 = sub_24FF2BD88();
  v2(v1);
  v3 = sub_24FF2BADC();
  sub_24FF291C4(v3, v4, v5);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 152) = v6;
  *v6 = v7;
  v6[1] = sub_24FF29430;
  sub_24FF2BDA8();
  sub_24FF2C1EC();

  return GenerativeConfigurationRunnable<>.run(returning:)(v8);
}

uint64_t sub_24FF29430()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  v2 = *v1;
  sub_24FF2BACC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {
    v4 = sub_24FF2C10C();
    v5(v4);
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    v10 = sub_24FF2C10C();
    v11(v10);

    sub_24FF2C0E4();
    sub_24FF2C004();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

uint64_t sub_24FF296A0()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BBE0();
  v1 = sub_24FF2BADC();
  sub_24FF291C4(v1, v2, v3);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v4;
  *v4 = v5;
  sub_24FF2BB44(v4);
  sub_24FF2C004();

  return GenerativeConfigurationRunnable<>.run(returning:)(v6);
}

uint64_t sub_24FF29740()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  *(v3 + 136) = v0;

  v7 = sub_24FF2BC60();
  v8(v7);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    sub_24FF24BC0();
    sub_24FF2C004();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t CompletionLanguageModelProviding.complete(prompt:parameters:)()
{
  sub_24FF2BC70();
  sub_24FF2C0F8(v1, v2, v3, v4, v5, v6, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[10] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[11] = v9;
  v0[12] = sub_24FF2BE24();
  v10 = sub_24FF61C28();
  v0[13] = v10;
  sub_24FF2BA9C(v10);
  v0[14] = v11;
  v0[15] = sub_24FF2BE24();
  v12 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_24FF299BC()
{
  sub_24FF2BC7C();
  sub_24FF2C0B0();
  v3 = v2();
  if (v0)
  {

    sub_24FF2BB34();

    return v4();
  }

  else
  {
    (*(v1 + 40))(v3);
    swift_task_alloc();
    sub_24FF2BC3C();
    *(v1 + 128) = v6;
    *v6 = v7;
    sub_24FF2BE5C(v6);

    return sub_24FF29D00();
  }
}

uint64_t sub_24FF29ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  sub_24FF2BC88();
  v15 = v14;
  sub_24FF2BB08();
  *v16 = v15;
  v17 = *v13;
  sub_24FF2BACC();
  *v18 = v17;
  *(v15 + 136) = v12;

  v19 = sub_24FF2BDC4();
  v20(v19);
  v21 = sub_24FF2BDB4();
  v22(v21);
  if (v12)
  {
    sub_24FF2BBB0();
    sub_24FF2BCF4();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {

    sub_24FF2BBC0();
    sub_24FF2BCF4();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_24FF29C98()
{
  sub_24FF2BC70();

  sub_24FF24BC0();

  return v0();
}

uint64_t sub_24FF29D00()
{
  sub_24FF2BC7C();
  v1[22] = v2;
  v1[23] = v0;
  sub_24FF2BD98(v3, v4, v5, v6);
  v7 = sub_24FF61C28();
  v1[24] = v7;
  sub_24FF2BA9C(v7);
  v1[25] = v8;
  v1[26] = sub_24FF2BE24();
  v1[27] = sub_24FF61BE8();
  sub_24FF2552C();
  v1[28] = v9;
  v10 = sub_24FF2C24C();
  v1[30] = sub_24FF2C234(v10);
  sub_24FF2BAF0();
  v13 = sub_24FF2B9FC(v11, v12, MEMORY[0x277D42D38]);
  v14 = sub_24FF2BB88(v13);
  v1[32] = v14;
  sub_24FF2BA9C(v14);
  v1[33] = v15;
  v16 = sub_24FF2C21C();
  v1[35] = sub_24FF2C204(v16);
  v17 = sub_24FF2BEF8();
  v1[36] = v17;
  sub_24FF2BA9C(v17);
  v1[37] = v18;
  v1[38] = sub_24FF2BE24();
  v19 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_24FF2A0C0()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2[35];
  v4 = v2[33];
  v5 = v2[32];
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 320) = v0;

  (*(v4 + 8))(v3, v5);
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2A21C()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF25A6C((v0 + 16));

  sub_24FF24BC0();
  sub_24FF2C004();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_24FF2A2BC()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  *(v3 + 336) = v0;

  v7 = sub_24FF2BC60();
  v8(v7);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_24FF2C1AC();

    sub_24FF24BC0();
    sub_24FF2C004();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_24FF2A458()
{
  sub_24FF2BC30();
  sub_24FF25A6C((v0 + 16));
  sub_24FF2C0A4();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF2A4FC()
{
  sub_24FF2BC30();
  sub_24FF2C0A4();

  sub_24FF24BC0();

  return v0();
}

uint64_t CompletionLanguageModelProviding.complete<A>(prompt:)()
{
  sub_24FF2BC70();
  v7 = sub_24FF2BFA4(v1, v2, v3, v4, v5, v6);
  v0[9] = v7;
  sub_24FF2BA9C(v7);
  v0[10] = v8;
  v0[11] = sub_24FF2BE24();
  v9 = sub_24FF61C28();
  v0[12] = v9;
  sub_24FF2BA9C(v9);
  v0[13] = v10;
  v0[14] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF2A680()
{
  sub_24FF2BC7C();
  sub_24FF2C0B0();
  v2();
  if (v0)
  {

    sub_24FF2BB34();

    return v3();
  }

  else
  {
    sub_24FF2C16C();
    swift_task_alloc();
    sub_24FF2BC3C();
    *(v1 + 120) = v5;
    *v5 = v6;
    sub_24FF2BE3C(v5);

    return sub_24FF29D00();
  }
}

uint64_t sub_24FF2A768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  sub_24FF2BC88();
  v15 = v14;
  sub_24FF2BB08();
  *v16 = v15;
  v17 = *v13;
  sub_24FF2BACC();
  *v18 = v17;
  *(v15 + 128) = v12;

  v19 = sub_24FF2BDC4();
  v20(v19);
  v21 = sub_24FF2BDB4();
  v22(v21);
  if (v12)
  {
    sub_24FF2BBB0();
    sub_24FF2BCF4();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {

    sub_24FF2BBC0();
    sub_24FF2BCF4();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_24FF2A934()
{
  sub_24FF2BC70();

  sub_24FF24BC0();

  return v0();
}

uint64_t CompletionLanguageModelProviding.complete<A>(prompt:)(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = sub_24FF2BB18();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24FF2A9C4()
{
  sub_24FF2BC70();
  *(v0 + 16) = 0x6F77206F6C6C6568;
  *(v0 + 24) = 0xEB00000000646C72;
  sub_24FF61988();
  sub_24FF24BC0();

  return v1();
}

uint64_t CompletionLanguageModelProvidingStreamable.streamCompletion(of:parameters:)()
{
  sub_24FF2BC70();
  sub_24FF2C0F8(v1, v2, v3, v4, v5, v6, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[10] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[11] = v9;
  v0[12] = sub_24FF2BE24();
  v10 = sub_24FF61C28();
  v0[13] = v10;
  sub_24FF2BA9C(v10);
  v0[14] = v11;
  v0[15] = sub_24FF2BE24();
  v12 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_24FF2AB58()
{
  sub_24FF2BC7C();
  sub_24FF2C0B0();
  v3 = v2();
  if (v0)
  {

    sub_24FF2BB34();

    return v4();
  }

  else
  {
    (*(v1 + 40))(v3);
    swift_task_alloc();
    sub_24FF2BC3C();
    *(v1 + 128) = v6;
    *v6 = v7;
    sub_24FF2BE5C(v6);

    return sub_24FF2AE34();
  }
}

uint64_t sub_24FF2AC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  sub_24FF2BC88();
  v15 = v14;
  sub_24FF2BB08();
  *v16 = v15;
  v17 = *v13;
  sub_24FF2BACC();
  *v18 = v17;
  *(v15 + 136) = v12;

  v19 = sub_24FF2BDC4();
  v20(v19);
  v21 = sub_24FF2BDB4();
  v22(v21);
  if (v12)
  {
    sub_24FF2BBB0();
    sub_24FF2BCF4();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {

    sub_24FF2BBC0();
    sub_24FF2BCF4();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_24FF2AE34()
{
  sub_24FF2BC7C();
  v1[22] = v2;
  v1[23] = v0;
  sub_24FF2BD98(v3, v4, v5, v6);
  v7 = sub_24FF61C28();
  v1[24] = v7;
  sub_24FF2BA9C(v7);
  v1[25] = v8;
  v1[26] = sub_24FF2BE24();
  v1[27] = sub_24FF61BE8();
  sub_24FF2552C();
  v1[28] = v9;
  v10 = sub_24FF2C24C();
  v1[30] = sub_24FF2C234(v10);
  sub_24FF2BAF0();
  v13 = sub_24FF2B9FC(v11, v12, MEMORY[0x277D42D38]);
  v14 = sub_24FF2BB88(v13);
  v1[32] = v14;
  sub_24FF2BA9C(v14);
  v1[33] = v15;
  v16 = sub_24FF2C21C();
  v1[35] = sub_24FF2C204(v16);
  v17 = sub_24FF2BEF8();
  v1[36] = v17;
  sub_24FF2BA9C(v17);
  v1[37] = v18;
  v1[38] = sub_24FF2BE24();
  v19 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_24FF2B1F4()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  v3 = v2[35];
  v4 = v2[33];
  v5 = v2[32];
  v6 = *v1;
  sub_24FF2BACC();
  *v7 = v6;
  *(v8 + 320) = v0;

  (*(v4 + 8))(v3, v5);
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2B350()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF2BB08();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  *(v3 + 336) = v0;

  v7 = sub_24FF2BC60();
  v8(v7);
  if (v0)
  {
    sub_24FF2BBD4();
    sub_24FF2C004();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_24FF2C1AC();

    sub_24FF24BC0();
    sub_24FF2C004();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t CompletionLanguageModelProvidingStreamable.streamCompletion<A>(of:)()
{
  sub_24FF2BC70();
  v7 = sub_24FF2BFA4(v1, v2, v3, v4, v5, v6);
  v0[9] = v7;
  sub_24FF2BA9C(v7);
  v0[10] = v8;
  v0[11] = sub_24FF2BE24();
  v9 = sub_24FF61C28();
  v0[12] = v9;
  sub_24FF2BA9C(v9);
  v0[13] = v10;
  v0[14] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  sub_24FF2BC70();
  sub_24FF2BC48(v1, v2, v3, v4, v5);
  v0[11] = sub_24FF61BE8();
  sub_24FF2BAF0();
  v8 = sub_24FF2B9FC(v6, v7, MEMORY[0x277D42D38]);
  v0[12] = v8;
  v9 = sub_24FF2BB64(v8);
  v0[13] = v9;
  sub_24FF2BA9C(v9);
  v0[14] = v10;
  v0[15] = sub_24FF2BE24();
  v11 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_24FF2B5D4()
{
  sub_24FF2BC7C();
  sub_24FF2C0B0();
  v2();
  if (v0)
  {

    sub_24FF2BB34();

    return v3();
  }

  else
  {
    sub_24FF2C16C();
    swift_task_alloc();
    sub_24FF2BC3C();
    *(v1 + 120) = v5;
    *v5 = v6;
    sub_24FF2BE3C(v5);

    return sub_24FF2AE34();
  }
}

uint64_t sub_24FF2B6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF2BFCC();
  sub_24FF2C098();
  sub_24FF2BC88();
  v15 = v14;
  sub_24FF2BB08();
  *v16 = v15;
  v17 = *v13;
  sub_24FF2BACC();
  *v18 = v17;
  *(v15 + 128) = v12;

  v19 = sub_24FF2BDC4();
  v20(v19);
  v21 = sub_24FF2BDB4();
  v22(v21);
  if (v12)
  {
    sub_24FF2BBB0();
    sub_24FF2BCF4();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {

    sub_24FF2BBC0();
    sub_24FF2BCF4();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_24FF2B95C()
{
  sub_24FF2C084();
  sub_24FF2BC30();
  sub_24FF2BBE0();
  v1 = sub_24FF2BADC();
  sub_24FF2BA44(v1, v2, v3);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v4;
  *v4 = v5;
  sub_24FF2BB44(v4);
  sub_24FF2C004();

  return GenerativeConfigurationRunnable<>.run(returning:)(v6);
}

uint64_t sub_24FF2B9FC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24FF2BAAC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_24FF2BB64(uint64_t a1)
{
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v2;
  v3[5] = a1;

  return type metadata accessor for GenerativeConfigurationRunnable(0, (v3 + 2));
}

uint64_t sub_24FF2BB88(uint64_t a1)
{
  v3[31] = a1;
  v3[14] = v1;
  v3[15] = v2;
  v3[16] = v1;
  v3[17] = a1;

  return type metadata accessor for GenerativeConfigurationRunnable(0, (v3 + 14));
}

uint64_t sub_24FF2BBE0()
{
  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[12];

  return GenerativeConfigurationProtocol.with<A>(model:)(v3, v4, v5, v6, v2);
}

uint64_t sub_24FF2BC0C(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_24FF2BC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a2;
  v6[8] = a3;
  v6[6] = a1;
  return 255;
}

uint64_t sub_24FF2BC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return GenerativeConfigurationProtocol.with<A>(model:)(a1, v3, v4, v2, a2);
}

uint64_t sub_24FF2BCB0()
{
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;

  return sub_24FF282C8((v0 + 4));
}

uint64_t sub_24FF2BD10()
{
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;

  return sub_24FF282C8((v0 + 4));
}

uint64_t sub_24FF2BD30()
{
  v1 = *(v0 + 208);
  sub_24FF28348((v0 + 64), (v0 + 16));
  sub_24FF257B8((v0 + 16), *(v0 + 40));
  return v1;
}

uint64_t sub_24FF2BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return 0;
}

uint64_t sub_24FF2BDF0()
{

  return sub_24FF61C38();
}

uint64_t sub_24FF2BE24()
{

  return swift_task_alloc();
}

uint64_t sub_24FF2BE9C()
{

  return sub_24FF61C38();
}

uint64_t sub_24FF2BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return MEMORY[0x2821A3E18](a1, v14, v16, v13, v15, a12, v12);
}

uint64_t sub_24FF2BEF8()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24FF2BF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return MEMORY[0x2821A3E18](a1, a11, v15, v13, v14, a13, a12);
}

uint64_t sub_24FF2BF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return GenerativeConfigurationProtocol.with<A>(model:)(v9, v12, v10, v11, a9);
}

uint64_t sub_24FF2BFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;

  return sub_24FF62028();
}

uint64_t sub_24FF2C018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return GenerativeConfigurationProtocol.with<A>(model:)(a9, v12, v10, v11, a10);
}

uint64_t sub_24FF2C03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a3;
  v7[9] = a4;
  v7[6] = a1;
  v7[7] = a2;

  return sub_24FF61C18();
}

uint64_t sub_24FF2C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return GenerativeConfigurationProtocol.with<A>(model:)(a11, v13, v14, v12, a12);
}

uint64_t sub_24FF2C0F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = result;
  v8[3] = a2;
  return result;
}

uint64_t sub_24FF2C16C()
{
  v3 = *(v1 + 48);

  return sub_24FF24B98(v0, 1, 1, v3);
}

uint64_t sub_24FF2C18C()
{
}

uint64_t sub_24FF2C1AC()
{
}

uint64_t sub_24FF2C1CC()
{
}

uint64_t sub_24FF2C204(uint64_t a1)
{
  *(v1 + 272) = a1;

  return swift_task_alloc();
}

uint64_t sub_24FF2C21C()
{

  return swift_task_alloc();
}

uint64_t sub_24FF2C234(uint64_t a1)
{
  *(v1 + 232) = a1;

  return swift_task_alloc();
}

uint64_t sub_24FF2C24C()
{

  return swift_task_alloc();
}

uint64_t GenerativeConfigurationProtocol.with<A>(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24FF32294();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_24FF26704();
  v15 = v14 - v13;
  sub_24FF32294();
  MEMORY[0x28223BE20](v16);
  sub_24FF26704();
  (*(v19 + 16))(v18 - v17, v20, a2);
  (*(v11 + 16))(v15, a1, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_24FF2C734(v15, AssociatedTypeWitness, a3, a2, a4, a5);
}

uint64_t GenerativeConfigurationRunnable<>.run(returning:)(uint64_t a1)
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114();
  v1 = swift_task_alloc();
  v2 = sub_24FF321C0(v1);
  *v2 = v3;
  sub_24FF320D8(v2);
  sub_24FF325DC();

  return MEMORY[0x282166040](v4);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114();
  v1 = swift_task_alloc();
  v2 = sub_24FF321C0(v1);
  *v2 = v3;
  sub_24FF320D8(v2);
  sub_24FF325DC();

  return MEMORY[0x282166070](v4);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114();
  v1 = swift_task_alloc();
  v2 = sub_24FF321C0(v1);
  *v2 = v3;
  sub_24FF320D8(v2);
  sub_24FF325DC();

  return MEMORY[0x282166050](v4);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114();
  v1 = swift_task_alloc();
  v2 = sub_24FF321C0(v1);
  *v2 = v3;
  sub_24FF320D8(v2);
  sub_24FF325DC();

  return MEMORY[0x2821660A8](v4);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114();
  v1 = swift_task_alloc();
  v2 = sub_24FF321C0(v1);
  *v2 = v3;
  sub_24FF320D8(v2);
  sub_24FF325DC();

  return MEMORY[0x282166080](v4);
}

{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return sub_24FF320C8();
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF32114();
  v1 = swift_task_alloc();
  v2 = sub_24FF321C0(v1);
  *v2 = v3;
  sub_24FF320D8(v2);
  sub_24FF325DC();

  return MEMORY[0x282166058](v4);
}

{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return sub_24FF320C8();
}

uint64_t sub_24FF2C5C0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v1 = *v0;
  sub_24FF2BACC();
  *v2 = v1;

  sub_24FF24BC0();

  return v3();
}

uint64_t sub_24FF2C734@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_24FF3232C();
  (*(v13 + 32))(a7);
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v14 = type metadata accessor for GenerativeConfigurationRunnable(0, v16);
  return (*(*(a4 - 8) + 32))(a7 + *(v14 + 52), a2, a4);
}

uint64_t GenerativeConfigurationProtocol.withModel<A>(model:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  sub_24FF32294();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_24FF26704();
  v16 = v15 - v14;
  result = v17();
  if (!v6)
  {
    GenerativeConfigurationProtocol.with<A>(model:)(v16, a3, a4, a5, x8_0);
    return (*(v12 + 8))(v16, a4);
  }

  return result;
}

uint64_t GenerativeConfigurationRunnable<>.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF32660(v1, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24FF3219C(AssociatedTypeWitness);
  *(v0 + 72) = v4;
  *(v0 + 80) = sub_24FF2BE24();
  v5 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  sub_24FF2BC70();
  sub_24FF32570(v1, v2, v3, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[8] = v6;
  v0[9] = sub_24FF2BE24();
  v7 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  sub_24FF2BC70();
  sub_24FF32660(v1, v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24FF3219C(AssociatedTypeWitness);
  *(v0 + 72) = v4;
  *(v0 + 80) = sub_24FF2BE24();
  v5 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

{
  sub_24FF2BC70();
  sub_24FF32570(v1, v2, v3, v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[8] = v6;
  v0[9] = sub_24FF2BE24();
  v7 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2CA70()
{
  sub_24FF2BC70();
  sub_24FF2C50C(v0[7], *(v0[4] + 32), v0[5]);
  v1 = swift_task_alloc();
  v2 = sub_24FF321FC(v1);
  *v2 = v3;
  v4 = sub_24FF32540(v2);

  return GenerativeConfigurationRunnable<>.run(returning:)(v4);
}

uint64_t sub_24FF2CB00()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2CBF8()
{
  sub_24FF2BC7C();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF61A18();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF32604();
  v2 = sub_24FF32440();

  return v3(v2);
}

uint64_t sub_24FF2CCA0()
{
  sub_24FF2BC70();

  sub_24FF24BC0();

  return v0();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(returning:)()
{
  sub_24FF2BC70();
  sub_24FF324AC(v1, v2, v3, v4, v5, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[11] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[12] = v8;
  v0[13] = sub_24FF2BE24();
  v9 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  sub_24FF2BC70();
  sub_24FF324AC(v1, v2, v3, v4, v5, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[11] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[12] = v8;
  v0[13] = sub_24FF2BE24();
  v9 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2CDB0()
{
  sub_24FF2BC70();
  v1 = sub_24FF32638();
  sub_24FF2C50C(v1, v2, v3);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 112) = v4;
  *v4 = v5;
  v6 = sub_24FF32468(v4);

  return GenerativeConfigurationRunnable<>.run(returning:)(v6);
}

uint64_t sub_24FF2CE3C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2CF34()
{
  sub_24FF2BC30();
  sub_24FF326B0();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF61A18();
  v1 = sub_24FF321EC();
  v3 = v2(v1);
  sub_24FF32490(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, v18);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v11;
  *v11 = v12;
  v13 = sub_24FF323A0(v11);

  return v14(v13);
}

uint64_t sub_24FF2D054()
{
  sub_24FF2BC7C();
  v1 = *v0;
  sub_24FF2BACC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24FF2D160()
{
  sub_24FF2BC70();

  sub_24FF24BC0();

  return v0();
}

uint64_t sub_24FF2D264()
{
  sub_24FF2BC70();
  v0 = swift_task_alloc();
  v1 = sub_24FF321FC(v0);
  *v1 = v2;
  v3 = sub_24FF3264C(v1);

  return GenerativeConfigurationRunnable<>.run(returning:)(v3, v4);
}

uint64_t sub_24FF2D2E4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2D3DC()
{
  sub_24FF2BC7C();
  sub_24FF257B8((v0 + 16), *(v0 + 40));
  sub_24FF32440();
  sub_24FF61A18();
  sub_24FF25A6C((v0 + 16));
  sub_24FF32604();
  v1 = sub_24FF32270();

  return v2(v1);
}

uint64_t GenerativeConfigurationRunnable<>.run(returning:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_24FF320C8();
}

uint64_t sub_24FF2D4A4(uint64_t a1, uint64_t a2)
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v3 = sub_24FF32250();
  v4 = sub_24FF32484(v3);
  v8 = sub_24FF323C8(v4, v5, v6, v7, MEMORY[0x277D0DD08]);
  sub_24FF325C4(v8);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v2 + 40) = v9;
  *v9 = v10;
  sub_24FF320F8(v9);
  sub_24FF325DC();

  return MEMORY[0x282166050](v11);
}

uint64_t sub_24FF2D568()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    sub_24FF24BC0();

    return v10();
  }
}

uint64_t sub_24FF2D67C()
{
  sub_24FF2BC70();
  sub_24FF2D738(*(v0 + 16));
  sub_24FF24BC0();

  return v1();
}

uint64_t *sub_24FF2D6D8(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_24FF2D738(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x25305D1B0);
  }

  return result;
}

uint64_t sub_24FF2D7A0(uint64_t a1, uint64_t a2)
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v3 = sub_24FF32250();
  v4 = sub_24FF32484(v3);
  v8 = sub_24FF323C8(v4, v5, v6, v7, MEMORY[0x277D0DD68]);
  sub_24FF325C4(v8);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v2 + 40) = v9;
  *v9 = v10;
  sub_24FF320F8(v9);
  sub_24FF325DC();

  return MEMORY[0x282166080](v11);
}

uint64_t sub_24FF2D864()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    sub_24FF2BBD4();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    sub_24FF24BC0();

    return v10();
  }
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(type:returning:)()
{
  sub_24FF2BC70();
  sub_24FF322A4(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_24FF619A8();
  sub_24FF3219C(v8);
  *(v0 + 72) = v9;
  *(v0 + 80) = sub_24FF2BE24();
  v10 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  sub_24FF2BC70();
  sub_24FF322A4(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_24FF619A8();
  sub_24FF3219C(v8);
  *(v0 + 72) = v9;
  *(v0 + 80) = sub_24FF2BE24();
  v10 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  sub_24FF2BC70();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[6] = v5;
  v1[7] = v6;
  v7 = *(v6 + 24);
  v1[2] = v3;
  v1[3] = v7;
  v1[4] = v2;
  v1[5] = v4;
  v8 = type metadata accessor for CompletionOneShotGenerableResponseOutput(0, (v1 + 2));
  v1[12] = v8;
  sub_24FF2BA9C(v8);
  v1[13] = v9;
  v1[14] = sub_24FF2BE24();
  v10 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  sub_24FF2BC70();
  sub_24FF32588(v1, v2, v3, v4, v5, v6);
  v7 = sub_24FF619A8();
  v0[7] = v7;
  sub_24FF2BA9C(v7);
  v0[8] = v8;
  v0[9] = sub_24FF2BE24();
  v9 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  sub_24FF2BC70();
  v1[6] = v2;
  v1[7] = v0;
  sub_24FF324D8(v3, v5, v4, v5, v6);
  sub_24FF61938();
  v7 = sub_24FF619A8();
  sub_24FF3219C(v7);
  v1[9] = v8;
  v1[10] = sub_24FF2BE24();
  v9 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  sub_24FF2BC70();
  sub_24FF322A4(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_24FF619E8();
  sub_24FF3219C(v8);
  *(v0 + 72) = v9;
  *(v0 + 80) = sub_24FF2BE24();
  v10 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  sub_24FF2BC70();
  sub_24FF32588(v1, v2, v3, v4, v5, v6);
  v7 = sub_24FF619E8();
  v0[7] = v7;
  sub_24FF2BA9C(v7);
  v0[8] = v8;
  v0[9] = sub_24FF2BE24();
  v9 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  sub_24FF2BC70();
  v1[6] = v2;
  v1[7] = v0;
  sub_24FF324D8(v3, v5, v4, v5, v6);
  sub_24FF61938();
  v7 = sub_24FF619E8();
  sub_24FF3219C(v7);
  v1[9] = v8;
  v1[10] = sub_24FF2BE24();
  v9 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF2DA14()
{
  sub_24FF2BC70();
  v0 = swift_task_alloc();
  v1 = sub_24FF321FC(v0);
  *v1 = v2;
  v3 = sub_24FF321D0(v1);

  return GenerativeConfigurationRunnable<>.run<A>(type:returning:)(v3);
}

uint64_t sub_24FF2DA94()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2DB8C()
{
  sub_24FF2BC7C();
  sub_24FF32624();
  sub_24FF61998();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(type:returning:)(uint64_t a1)
{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF3220C();
  v1 = swift_task_alloc();
  v2 = sub_24FF321C0(v1);
  *v2 = v3;
  sub_24FF32130(v2);
  sub_24FF32418();

  return MEMORY[0x282166090](v4);
}

{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF3227C(v2);
  v3 = sub_24FF619A8();
  v1[3] = v3;
  sub_24FF2BA9C(v3);
  v1[4] = v4;
  v5 = sub_24FF2BE24();
  sub_24FF32610(v5);
  swift_task_alloc();
  sub_24FF2BC3C();
  v1[6] = v6;
  *v6 = v7;
  sub_24FF32374(v6);
  sub_24FF32418();

  return MEMORY[0x282165B10](v8);
}

{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF3220C();
  v1 = swift_task_alloc();
  v2 = sub_24FF321C0(v1);
  *v2 = v3;
  sub_24FF32130(v2);
  sub_24FF32418();

  return MEMORY[0x282165B08](v4);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3227C(v2);
  v3 = sub_24FF619E8();
  v1[3] = v3;
  sub_24FF2BA9C(v3);
  v1[4] = v4;
  v1[5] = sub_24FF2BE24();
  swift_task_alloc();
  sub_24FF2BC3C();
  v1[6] = v5;
  *v5 = v6;
  sub_24FF32230(v5);
  sub_24FF325DC();

  return GenerativeConfigurationRunnable<>.run<A>(returning:)(v7, v8);
}

{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF3227C(v2);
  v3 = sub_24FF619E8();
  v1[3] = v3;
  sub_24FF2BA9C(v3);
  v1[4] = v4;
  v5 = sub_24FF2BE24();
  sub_24FF32610(v5);
  swift_task_alloc();
  sub_24FF2BC3C();
  v1[6] = v6;
  *v6 = v7;
  sub_24FF32374(v6);
  sub_24FF32418();

  return MEMORY[0x282165B00](v8);
}

{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF3220C();
  v1 = swift_task_alloc();
  v2 = sub_24FF321C0(v1);
  *v2 = v3;
  sub_24FF32130(v2);
  sub_24FF32418();

  return MEMORY[0x282165AF8](v4);
}

uint64_t sub_24FF2DD60()
{
  sub_24FF2BC70();
  v0 = swift_task_alloc();
  v1 = sub_24FF321FC(v0);
  *v1 = v2;
  sub_24FF321D0(v1);

  return GenerativeConfigurationRunnable<>.run<A>(type:returning:)();
}

uint64_t sub_24FF2DDE0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2DF98()
{
  sub_24FF2BC70();
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[15] = v2;
  *v2 = v3;
  v2[1] = sub_24FF2E030;
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  return GenerativeConfigurationRunnable<>.run<A>(type:returning:)(v4, v1, v8, v6, v7, v5);
}

uint64_t sub_24FF2E030()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 128) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2E128()
{
  sub_24FF2BC7C();
  v1 = *(v0 + 112);
  v2 = *(v0 + 48);
  sub_24FF619A8();
  sub_24FF26754();
  (*(v3 + 16))(v2, v1);
  v4 = sub_24FF32270();
  v5(v4);

  sub_24FF321B0();

  return v6();
}

uint64_t sub_24FF2E1E0()
{
  sub_24FF2BC70();

  sub_24FF24BC0();

  return v0();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(type:returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_24FF619A8();
  sub_24FF3269C(v7);
  v6[8] = swift_getAssociatedTypeWitness();
  v6[9] = swift_getTupleTypeMetadata2();
  sub_24FF32294();
  v6[10] = v8;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v9 = swift_task_alloc();
  sub_24FF32688(v9);
  v10 = swift_task_alloc();
  v6[14] = v10;
  *v10 = v6;
  v11 = sub_24FF32348(v10);

  return MEMORY[0x2821660C0](v11);
}

uint64_t sub_24FF2E3E8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2E4E0()
{
  v4 = sub_24FF322BC();
  v5(v4);
  v6 = sub_24FF3244C();
  v7(v6);
  sub_24FF322F4();
  sub_24FF324E8(v8, type metadata accessor for CompletionOneShotGenerableResponseOutput, v9, v14, v15, v16, v17, v18, v19);
  sub_24FF3232C();
  (*(v10 + 8))(v1, v3);
  sub_24FF3232C();
  (*(v11 + 8))(v0 + v20, v2);

  sub_24FF321B0();

  return v12();
}

uint64_t sub_24FF2E618()
{
  sub_24FF2BC70();

  sub_24FF24BC0();

  return v0();
}

uint64_t sub_24FF2E728()
{
  sub_24FF2BC70();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 80) = v1;
  *v1 = v2;
  v3 = sub_24FF32510(v1);

  return GenerativeConfigurationRunnable<>.run<A>(returning:)(v3, v4, v5, v6);
}

uint64_t sub_24FF2E7AC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2E8A4()
{
  sub_24FF2BC7C();
  sub_24FF326F4();
  sub_24FF61998();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF2E91C()
{
  sub_24FF2BC70();

  sub_24FF24BC0();

  return v0();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_24FF320C8();
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_24FF320C8();
}

uint64_t sub_24FF2E994()
{
  sub_24FF2BC7C();
  sub_24FF326C4();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 56) = v1;
  *v1 = v2;
  v3 = sub_24FF323F4(v1);

  return MEMORY[0x282166090](v3);
}

uint64_t sub_24FF2EA30()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v1 = *v0;
  sub_24FF2BACC();
  *v2 = v1;

  sub_24FF24BC0();

  return v3();
}

uint64_t sub_24FF2EBFC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2ECF4()
{
  sub_24FF2BC7C();
  sub_24FF61998();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF2ED74()
{
  sub_24FF2BC70();

  sub_24FF24BC0();

  return v0();
}

uint64_t sub_24FF2EE84()
{
  sub_24FF2BC70();
  v0 = swift_task_alloc();
  v1 = sub_24FF321FC(v0);
  *v1 = v2;
  v3 = sub_24FF321D0(v1);

  return GenerativeConfigurationRunnable<>.run<A>(type:returning:)(v3);
}

uint64_t sub_24FF2F04C()
{
  sub_24FF2BC70();
  sub_24FF2BA44(v0[6], *(v0[3] + 32), v0[4]);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[10] = v1;
  *v1 = v2;
  v3 = sub_24FF32528(v1);

  return GenerativeConfigurationRunnable<>.run(returning:)(v3);
}

uint64_t sub_24FF2F0E0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2F1D8()
{
  sub_24FF2BC7C();
  sub_24FF32674();
  swift_getAssociatedConformanceWitness();
  sub_24FF61AE8();
  v0 = sub_24FF32270();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF2F290(uint64_t a1, uint64_t a2)
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v3 = sub_24FF32250();
  v4 = sub_24FF32484(v3);
  v8 = sub_24FF323C8(v4, v5, v6, v7, MEMORY[0x277D0DDA8]);
  sub_24FF325C4(v8);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v2 + 40) = v9;
  *v9 = v10;
  sub_24FF320F8(v9);
  sub_24FF325DC();

  return MEMORY[0x2821660A8](v11);
}

uint64_t sub_24FF2F404()
{
  sub_24FF2BC70();
  sub_24FF28330(v0[7], *(v0[4] + 32), v0[5]);
  v1 = swift_task_alloc();
  v2 = sub_24FF321FC(v1);
  *v2 = v3;
  v4 = sub_24FF32540(v2);

  return GenerativeConfigurationRunnable<>.run(returning:)(v4);
}

uint64_t sub_24FF2F494()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2F58C()
{
  sub_24FF2BC7C();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF619F8();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF32604();
  v2 = sub_24FF32440();

  return v3(v2);
}

uint64_t sub_24FF2F6E8()
{
  sub_24FF2BC70();
  v1 = sub_24FF32638();
  sub_24FF28330(v1, v2, v3);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 112) = v4;
  *v4 = v5;
  v6 = sub_24FF32468(v4);

  return GenerativeConfigurationRunnable<>.run(returning:)(v6);
}

uint64_t sub_24FF2F774()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2F86C()
{
  sub_24FF2BC30();
  sub_24FF326B0();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF619F8();
  v1 = sub_24FF321EC();
  v3 = v2(v1);
  sub_24FF32490(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, v18);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v11;
  *v11 = v12;
  v13 = sub_24FF323A0(v11);

  return v14(v13);
}

uint64_t sub_24FF2FA34()
{
  sub_24FF2BC70();
  v0 = swift_task_alloc();
  v1 = sub_24FF321FC(v0);
  *v1 = v2;
  v3 = sub_24FF3264C(v1);

  return GenerativeConfigurationRunnable<>.run(returning:)(v3, v4);
}

uint64_t sub_24FF2FAB4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF2FBAC()
{
  sub_24FF2BC7C();
  sub_24FF257B8((v0 + 16), *(v0 + 40));
  sub_24FF32440();
  sub_24FF619F8();
  sub_24FF25A6C((v0 + 16));
  sub_24FF32604();
  v1 = sub_24FF32270();

  return v2(v1);
}

uint64_t sub_24FF2FC50(uint64_t a1, uint64_t a2)
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v3 = sub_24FF32250();
  v4 = sub_24FF32484(v3);
  v8 = sub_24FF323C8(v4, v5, v6, v7, MEMORY[0x277D0DCF0]);
  sub_24FF325C4(v8);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v2 + 40) = v9;
  *v9 = v10;
  sub_24FF320F8(v9);
  sub_24FF325DC();

  return MEMORY[0x282166040](v11);
}

uint64_t sub_24FF2FD2C(uint64_t a1, uint64_t a2)
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v3 = sub_24FF32250();
  v4 = sub_24FF32484(v3);
  v8 = sub_24FF323C8(v4, v5, v6, v7, MEMORY[0x277D0DD28]);
  sub_24FF325C4(v8);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v2 + 40) = v9;
  *v9 = v10;
  sub_24FF320F8(v9);
  sub_24FF325DC();

  return MEMORY[0x282166058](v11);
}

uint64_t sub_24FF2FEA4()
{
  sub_24FF2BC70();
  sub_24FF291C4(v0[6], *(v0[3] + 32), v0[4]);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[10] = v1;
  *v1 = v2;
  v3 = sub_24FF32528(v1);

  return GenerativeConfigurationRunnable<>.run(returning:)(v3);
}

uint64_t sub_24FF2FF38()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF30030()
{
  sub_24FF2BC7C();
  sub_24FF32674();
  swift_getAssociatedConformanceWitness();
  sub_24FF61A78();
  v0 = sub_24FF32270();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF300E8(uint64_t a1, uint64_t a2)
{
  sub_24FF325F0();
  sub_24FF2BC30();
  sub_24FF3215C();
  v3 = sub_24FF32250();
  v4 = sub_24FF32484(v3);
  v8 = sub_24FF323C8(v4, v5, v6, v7, MEMORY[0x277D0DD48]);
  sub_24FF325C4(v8);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v2 + 40) = v9;
  *v9 = v10;
  sub_24FF320F8(v9);
  sub_24FF325DC();

  return MEMORY[0x282166070](v11);
}

uint64_t sub_24FF30248()
{
  sub_24FF2BC70();
  v1 = swift_task_alloc();
  v2 = sub_24FF321FC(v1);
  *v2 = v3;
  v2[1] = sub_24FF302DC;
  v4 = *(v0 + 80);
  v5 = *(v0 + 24);

  return GenerativeConfigurationRunnable<>.run<A>(returning:)(v4, v5);
}

uint64_t sub_24FF302DC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF303D4()
{
  sub_24FF2BC7C();
  sub_24FF32624();
  sub_24FF619D8();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(returning:)(uint64_t a1, uint64_t a2)
{
  sub_24FF32558();
  sub_24FF32434();
  sub_24FF324C8();
  v2 = swift_task_alloc();
  v3 = sub_24FF321C0(v2);
  *v3 = v4;
  sub_24FF32130(v3);
  sub_24FF32418();

  return MEMORY[0x282166060](v5);
}

{
  sub_24FF325F0();
  sub_24FF2BC30();
  v2[6] = v3;
  v2[7] = v4;
  v6 = *(v5 + 24);
  v2[2] = v4;
  v2[3] = v6;
  v2[4] = v7;
  v2[5] = v8;
  v9 = type metadata accessor for ChatOneShotGenerableResponseOutput(0, (v2 + 2));
  sub_24FF3219C(v9);
  v2[9] = v10;
  v2[10] = sub_24FF2BE24();
  v11 = swift_task_alloc();
  v12 = sub_24FF321FC(v11);
  *v12 = v13;
  sub_24FF32230(v12);
  sub_24FF325DC();

  return GenerativeConfigurationRunnable<>.run<A>(returning:)(v14, v15, v16, v17, v18);
}

uint64_t sub_24FF3050C@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  a2(0, *(a1 + 16));
  sub_24FF26754();
  v7 = *(v6 + 16);

  return v7(a3, v3, v5);
}

uint64_t sub_24FF3058C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  swift_getAssociatedTypeWitness();
  sub_24FF26754();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_24FF30608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void *))
{
  sub_24FF324C8();
  v16 = v15;
  v18(0, v17);
  sub_24FF26754();
  (*(v19 + 32))(v16, v10);
  v23[0] = v8;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  v20 = *(a8(0, v23) + 52);
  swift_getAssociatedTypeWitness();
  sub_24FF26754();
  return (*(v21 + 32))(v16 + v20, v9);
}

uint64_t sub_24FF307E8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF308E0()
{
  sub_24FF2BC7C();
  sub_24FF619D8();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF30A5C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF30B54()
{
  sub_24FF2BC7C();
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  sub_24FF619E8();
  sub_24FF26754();
  (*(v3 + 16))(v2, v1);
  v4 = sub_24FF32270();
  v5(v4);

  sub_24FF321B0();

  return v6();
}

uint64_t GenerativeConfigurationRunnable<>.run<A>(returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24FF324D8(a1, a2, a3, a4, a5);
  v6 = sub_24FF619E8();
  sub_24FF3269C(v6);
  v5[8] = swift_getAssociatedTypeWitness();
  v5[9] = swift_getTupleTypeMetadata2();
  sub_24FF32294();
  v5[10] = v7;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  sub_24FF32688(v8);
  v9 = swift_task_alloc();
  v5[14] = v9;
  *v9 = v5;
  v10 = sub_24FF32348(v9);

  return MEMORY[0x282166098](v10);
}

uint64_t sub_24FF30DAC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF30EA4()
{
  v4 = sub_24FF322BC();
  v5(v4);
  v6 = sub_24FF3244C();
  v7(v6);
  sub_24FF32310();
  sub_24FF324E8(v8, type metadata accessor for ChatOneShotGenerableResponseOutput, v9, v14, v15, v16, v17, v18, v19);
  sub_24FF3232C();
  (*(v10 + 8))(v1, v3);
  sub_24FF3232C();
  (*(v11 + 8))(v0 + v20, v2);

  sub_24FF321B0();

  return v12();
}

uint64_t sub_24FF3107C()
{
  sub_24FF2BC70();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 80) = v1;
  *v1 = v2;
  v3 = sub_24FF32510(v1);

  return GenerativeConfigurationRunnable<>.run<A>(returning:)(v3, v4, v5, v6);
}

uint64_t sub_24FF31100()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF311F8()
{
  sub_24FF2BC7C();
  sub_24FF326F4();
  sub_24FF619D8();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF3128C()
{
  sub_24FF2BC7C();
  sub_24FF326C4();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 56) = v1;
  *v1 = v2;
  v3 = sub_24FF323F4(v1);

  return MEMORY[0x282166060](v3);
}

uint64_t sub_24FF31414()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF315C0()
{
  sub_24FF2BC70();
  v0 = swift_task_alloc();
  v1 = sub_24FF321FC(v0);
  *v1 = v2;
  v3 = sub_24FF321D0(v1);

  return GenerativeConfigurationRunnable<>.run<A>(type:returning:)(v3);
}

uint64_t sub_24FF31640()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF317CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24FF31858(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_24FF24B70(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_24FF31A20(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 32);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_24FF24B98(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t dispatch thunk of GenerativeResultDecodable.init(promptOutput:)(uint64_t a1)
{
  sub_24FF32434();
  sub_24FF324C8();
  v7 = (*(v1 + 8) + **(v1 + 8));
  v2 = swift_task_alloc();
  v3 = sub_24FF321C0(v2);
  *v3 = v4;
  v5 = sub_24FF32230(v3);

  return v7(v5);
}

uint64_t sub_24FF31E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = (a4)(319, *(a1 + 16), a3);
  if (v5 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24FF31F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v7 = a4(0, *(a3 + 16));
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = a1;
  }

  else
  {
    v8 = sub_24FF325A0();
    v9 = a1 + *(a3 + 52);
  }

  return sub_24FF24B70(v9, a2, v8);
}

uint64_t sub_24FF31FD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v9 = a5(0, *(a4 + 16));
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = a1;
  }

  else
  {
    v10 = sub_24FF325A0();
    v11 = a1 + *(a4 + 52);
  }

  return sub_24FF24B98(v11, a2, a2, v10);
}

uint64_t sub_24FF32130(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v2;
  return v3;
}

uint64_t sub_24FF32250()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24FF322A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[6] = a7;
  v8[7] = v7;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return 0;
}

uint64_t sub_24FF32348(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  return v4;
}

uint64_t sub_24FF32374(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v2;
  return v3;
}

uint64_t sub_24FF323C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_24FF323F4(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  *(v4 + 16) = v3;
  return result;
}

uint64_t sub_24FF324AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = result;
  v7[5] = a3;
  v7[10] = *(a3 + 24);
  return result;
}

uint64_t sub_24FF324D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a3;
  return 255;
}

uint64_t sub_24FF324E8@<X0>(uint64_t a1@<X6>, uint64_t (*a2)(void, void *)@<X7>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_24FF30608(v9, v10 + a3, v11, a9, a8, a7, a1, a2);
}

uint64_t sub_24FF32570(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = result;
  v5[3] = a3;
  v5[6] = *(a3 + 24);
  return result;
}

uint64_t sub_24FF32588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return 0;
}

uint64_t sub_24FF325A0()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t *sub_24FF325C4(uint64_t a1)
{
  v1[4] = a1;

  return sub_24FF2D6D8(v1);
}

uint64_t sub_24FF32660(uint64_t result, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = result;
  v3[7] = *(result + 24);
  return result;
}

uint64_t sub_24FF3269C(uint64_t result)
{
  *(v1 + 48) = result;
  *(v3 + 56) = *(v2 + 24);
  return result;
}

uint64_t CompletionPrompt.tokenCount<A>(with:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_24FF61BE8();
  sub_24FF329E8(qword_280B16660, MEMORY[0x277D42D40], MEMORY[0x277D42D38]);
  *v1 = v0;
  v2 = sub_24FF32A34();

  return MEMORY[0x2821660B8](v2);
}

uint64_t sub_24FF327F8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t ChatMessagesPrompt.tokenCount<A>(with:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_24FF61C18();
  sub_24FF329E8(&qword_280B16658, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
  *v1 = v0;
  v2 = sub_24FF32A34();

  return MEMORY[0x282166088](v2);
}

uint64_t sub_24FF329E8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CompletionPrompt.overestimatedTokenCount<A>(with:)()
{
  sub_24FF32D2C();
  sub_24FF61BE8();
  sub_24FF32CDC();
  sub_24FF329E8(v0, v1, MEMORY[0x277D42D38]);
  sub_24FF32D0C();
  return sub_24FF61B48();
}

uint64_t CompletionPrompt.tokenCountOverestimated<A>(with:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_24FF61BE8();
  sub_24FF32CDC();
  sub_24FF329E8(v2, v3, MEMORY[0x277D42D38]);
  *v1 = v0;
  v4 = sub_24FF32A34();

  return MEMORY[0x2821660F8](v4);
}

uint64_t ChatMessagesPrompt.overestimatedTokenCount<A>(with:)()
{
  sub_24FF32D2C();
  sub_24FF61C18();
  sub_24FF32CF4();
  sub_24FF329E8(v0, v1, MEMORY[0x277D42D70]);
  sub_24FF32D0C();
  return sub_24FF61B28();
}

uint64_t ChatMessagesPrompt.tokenCountOverestimated<A>(with:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_24FF61C18();
  sub_24FF32CF4();
  sub_24FF329E8(v2, v3, MEMORY[0x277D42D70]);
  *v1 = v0;
  v4 = sub_24FF32A34();

  return MEMORY[0x2821660E8](v4);
}

uint64_t sub_24FF32D44()
{
  v0 = sub_24FF61C38();
  sub_24FF27888(v0, qword_27F3B3EE0);
  sub_24FF278EC(v0, qword_27F3B3EE0);
  return sub_24FF61C48();
}

uint64_t CompletionPromptRunConfig.Typed.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A5C4(v1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[9] = v3;
  v0[10] = sub_24FF2BE24();
  v4 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  sub_24FF2BC7C();
  sub_24FF3A1CC(v1, v2, v3);
  v0[21] = sub_24FF61BE8();
  sub_24FF2552C();
  v0[22] = v4;
  v5 = sub_24FF2BE24();
  sub_24FF3A340(v5);
  sub_24FF32CDC();
  v8 = sub_24FF329E8(v6, v7, MEMORY[0x277D42D38]);
  v9 = sub_24FF3A140(v8);
  v0[26] = v9;
  sub_24FF2BA9C(v9);
  v0[27] = v10;
  v11 = sub_24FF2C21C();
  v12 = sub_24FF3A69C(v11);
  v13 = sub_24FF3A310(v12);
  v15 = sub_24FF3A714(v13, v14);
  v0[31] = v15;
  sub_24FF2BA9C(v15);
  v0[32] = v16;
  v0[33] = sub_24FF2BE24();
  v17 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_24FF32E70()
{
  sub_24FF2BC70();
  sub_24FF3309C(v0[7], v0[6]);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[11] = v1;
  *v1 = v2;
  sub_24FF3A61C(v1);

  return CompletionPromptRunConfig.Typed.run(returning:)();
}

uint64_t sub_24FF32EFC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF32FF4()
{
  sub_24FF2BC7C();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF61A18();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF32604();
  v2 = sub_24FF32440();

  return v3(v2);
}

uint64_t sub_24FF333C8()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 280) = v0;

  v7 = sub_24FF32440();
  v8(v7);
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF33518()
{
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF3A134();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  *(v3 + 296) = v0;

  v7 = sub_24FF2BC60();
  v8(v7);
  if (!v0)
  {
    sub_24FF3A460();

    sub_24FF321B0();
    sub_24FF2C004();

    __asm { BRAA            X1, X16 }
  }

  sub_24FF2BBD4();
  sub_24FF2C004();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t CompletionPromptRunConfig.Typed.run<A>(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A434(v1, v2, v3, v4, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[11] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[12] = v7;
  v0[13] = sub_24FF2BE24();
  v8 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24FF3375C()
{
  sub_24FF2BC70();
  sub_24FF3309C(v0[10], v0[9]);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[14] = v1;
  *v1 = v2;
  sub_24FF3A57C(v1);

  return CompletionPromptRunConfig.Typed.run(returning:)();
}

uint64_t sub_24FF337E8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF338E0()
{
  sub_24FF2BC30();
  sub_24FF3A5AC();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF61A18();
  v1 = sub_24FF321EC();
  v3 = v2(v1);
  sub_24FF32490(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, v18);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v11;
  *v11 = v12;
  v13 = sub_24FF3A410(v11);

  return v14(v13);
}

uint64_t CompletionPromptRunConfig.TypedStreamable.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A4EC(v1, v2, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[8] = v5;
  v0[9] = sub_24FF2BE24();
  v6 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  sub_24FF2BC7C();
  sub_24FF3A1CC(v1, v2, v3);
  v0[21] = sub_24FF61BE8();
  sub_24FF2552C();
  v0[22] = v4;
  v5 = sub_24FF2BE24();
  sub_24FF3A340(v5);
  sub_24FF32CDC();
  v8 = sub_24FF329E8(v6, v7, MEMORY[0x277D42D38]);
  v9 = sub_24FF3A140(v8);
  v0[26] = v9;
  sub_24FF2BA9C(v9);
  v0[27] = v10;
  v11 = sub_24FF2C21C();
  v12 = sub_24FF3A69C(v11);
  v13 = sub_24FF3A310(v12);
  v15 = sub_24FF3A714(v13, v14);
  v0[31] = v15;
  sub_24FF2BA9C(v15);
  v0[32] = v16;
  v0[33] = sub_24FF2BE24();
  v17 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_24FF33AE4()
{
  sub_24FF2BC70();
  sub_24FF33D08(v0[6], v0[5]);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[10] = v1;
  *v1 = v2;
  sub_24FF3A630(v1);

  return CompletionPromptRunConfig.TypedStreamable.run(returning:)();
}

uint64_t sub_24FF33B70()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF33C68()
{
  sub_24FF2BC7C();
  sub_24FF3A5F4();
  swift_getAssociatedConformanceWitness();
  sub_24FF61AE8();
  v0 = sub_24FF32270();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF34034()
{
  sub_24FF2BC7C();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 280) = v0;

  v7 = sub_24FF32440();
  v8(v7);
  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF34184()
{
  sub_24FF2BC7C();
  sub_24FF25A6C((v0 + 16));

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF3420C()
{
  sub_24FF2BC30();
  sub_24FF2BC88();
  v3 = v2;
  sub_24FF3A134();
  *v4 = v3;
  v5 = *v1;
  sub_24FF2BACC();
  *v6 = v5;
  *(v3 + 296) = v0;

  v7 = sub_24FF2BC60();
  v8(v7);
  if (!v0)
  {
    sub_24FF3A460();

    sub_24FF321B0();
    sub_24FF2C004();

    __asm { BRAA            X1, X16 }
  }

  sub_24FF2BBD4();
  sub_24FF2C004();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_24FF3439C()
{
  sub_24FF2BC7C();
  sub_24FF25A6C((v0 + 16));

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF34428()
{
  sub_24FF2BC7C();

  sub_24FF24BC0();

  return v0();
}

uint64_t CompletionPromptRunConfig.Untyped.run(returning:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v3 = sub_24FF2BB18();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF344D4()
{
  sub_24FF2BC70();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 88) = v1;
  *v1 = v2;
  sub_24FF3264C(v1);

  return CompletionPromptRunConfig.Untyped.run(returning:)();
}

uint64_t CompletionPromptRunConfig.Untyped.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A350(v2, v3);
  v4 = sub_24FF25460(&qword_27F3B3EF8, &qword_24FF62EC8);
  sub_24FF3A330(v4);
  v5 = sub_24FF2C21C();
  v1[19] = sub_24FF3A6B4(v5);
  v1[20] = *(v0 + 16);
  sub_24FF32294();
  v1[21] = v6;
  v1[22] = sub_24FF2BE24();
  v7 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF348C0()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 192) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF349B8()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 152), &qword_27F3B3EF8, &qword_24FF62EC8);
  sub_24FF3A508();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF34A34()
{
  sub_24FF2BC7C();
  sub_24FF3A6E4();
  sub_24FF37EE0(v0, &qword_27F3B3EF8, &qword_24FF62EC8);
  sub_24FF3A380();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF34ABC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 208) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF34BB4()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 144), &qword_27F3B3EF8, &qword_24FF62EC8);
  sub_24FF3A548();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF34C30()
{
  sub_24FF2BC7C();
  sub_24FF3A6CC();
  sub_24FF37EE0(v0, &qword_27F3B3EF8, &qword_24FF62EC8);
  sub_24FF3A498();

  sub_24FF24BC0();

  return v1();
}

uint64_t CompletionPromptRunConfig.UntypedStreamable.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A350(v2, v3);
  v4 = sub_24FF25460(&qword_27F3B3F00, &qword_24FF62ED8);
  sub_24FF3A330(v4);
  v5 = sub_24FF2C21C();
  v1[19] = sub_24FF3A6B4(v5);
  v1[20] = *(v0 + 16);
  sub_24FF32294();
  v1[21] = v6;
  v1[22] = sub_24FF2BE24();
  v7 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF35048()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 192) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF35140()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 152), &qword_27F3B3F00, &qword_24FF62ED8);
  sub_24FF3A508();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF351BC()
{
  sub_24FF2BC7C();
  sub_24FF3A6E4();
  sub_24FF37EE0(v0, &qword_27F3B3F00, &qword_24FF62ED8);
  sub_24FF3A380();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF35244()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 208) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF3533C()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 144), &qword_27F3B3F00, &qword_24FF62ED8);
  sub_24FF3A548();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF353B8()
{
  sub_24FF2BC7C();
  sub_24FF3A6CC();
  sub_24FF37EE0(v0, &qword_27F3B3F00, &qword_24FF62ED8);
  sub_24FF3A498();

  sub_24FF24BC0();

  return v1();
}

void CompletionPrompt.with<A>(model:completionParameters:modelType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24FF35528();
}

{
  sub_24FF35528();
}

uint64_t CompletionPrompt.withModel<A>(modelType:model:completionParameters:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_24FF382F4(a1, a2, a3, a4, a5, a6, a7, MEMORY[0x277D0DD18], MEMORY[0x277D0D988], CompletionPrompt.with<A>(model:completionParameters:modelType:));
}

{
  return sub_24FF382F4(a1, a2, a3, a4, a5, a6, a7, MEMORY[0x277D0DDB0], MEMORY[0x277D0DE40], CompletionPrompt.with<A>(model:completionParameters:modelType:));
}

void CompletionPrompt.with<A, B>(model:modelType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24FF35734();
}

{
  sub_24FF35734();
}

uint64_t CompletionPrompt.withModel<A, B>(modelType:model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_24FF38668(a1, a2, a3, a4, a5, a6, CompletionPrompt.with<A, B>(model:modelType:));
}

{
  return sub_24FF38668(a1, a2, a3, a4, a5, a6, CompletionPrompt.with<A, B>(model:modelType:));
}

void sub_24FF35528()
{
  sub_24FF277EC();
  sub_24FF3A2D0(v4, v5, v6, v7);
  sub_24FF2552C();
  sub_24FF26800();
  MEMORY[0x28223BE20](v8);
  sub_24FF3A5DC();
  sub_24FF32294();
  MEMORY[0x28223BE20](v9);
  sub_24FF26704();
  sub_24FF61BE8();
  sub_24FF2552C();
  MEMORY[0x28223BE20](v10);
  sub_24FF26704();
  v12 = sub_24FF3A3C4(v11);
  v13(v12);
  v14 = sub_24FF3A688();
  v15(v14);
  v16 = sub_24FF3A674();
  v17(v16);
  sub_24FF39EBC();
  sub_24FF3A21C();
  sub_24FF36DBC(v18, v19, v20, v2, v0, v21, v22, v1, v3, v23, v24, v25);
  sub_24FF3A65C();
  sub_24FF277D4();
}

void sub_24FF35734()
{
  sub_24FF277EC();
  sub_24FF3A3D8(v2, v3, v4, v5, v6, v7, v8);
  sub_24FF26800();
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  sub_24FF32294();
  MEMORY[0x28223BE20](v12);
  sub_24FF26704();
  sub_24FF3A5DC();
  sub_24FF61BE8();
  sub_24FF2552C();
  MEMORY[0x28223BE20](v13);
  sub_24FF26704();
  v15 = sub_24FF3A594(v14);
  v16(v15);
  v17 = sub_24FF3A608();
  v18(v17);
  sub_24FF24B98(v11, 1, 1, v1);
  sub_24FF39EBC();
  sub_24FF3A4C0(v19, v20, v21, v22, v23, v24, v25, v26, v0, v27, v28[0], v28[1]);
  sub_24FF3A65C();
  sub_24FF277D4();
}

void CompletionPrompt.with<A>(model:completionParameters:modelType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24FF35A14();
}

{
  sub_24FF35A14();
}

void *CompletionPrompt.withModel<A>(modelType:model:completionParameters:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  return sub_24FF388F4(a1, a2, a3, a4, a5, CompletionPrompt.with<A>(model:completionParameters:modelType:));
}

{
  return sub_24FF388F4(a1, a2, a3, a4, a5, CompletionPrompt.with<A>(model:completionParameters:modelType:));
}

void CompletionPrompt.with<A>(model:modelType:)(uint64_t a1, uint64_t a2)
{
  sub_24FF35C08();
}

{
  sub_24FF35C08();
}

void *CompletionPrompt.withModel<A>(modelType:model:)(void *(*a1)(void *__return_ptr), uint64_t a2, uint64_t a3)
{
  return sub_24FF38B04(a1, a2, a3, CompletionPrompt.with<A>(model:modelType:));
}

{
  return sub_24FF38B04(a1, a2, a3, CompletionPrompt.with<A>(model:modelType:));
}

void sub_24FF35A14()
{
  sub_24FF277EC();
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_24FF32294();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_24FF26704();
  v21 = v20 - v19;
  v22(0);
  sub_24FF2552C();
  sub_24FF26800();
  MEMORY[0x28223BE20](v23);
  sub_24FF3A538();
  (*(v24 + 16))(v1, v7);
  sub_24FF38A78(v13, v26);
  (*(v17 + 16))(v21, v11, v9);
  sub_24FF37F38(v26, v21, v9, v6, v4, v25, v15);
  sub_24FF277D4();
}

void sub_24FF35C08()
{
  sub_24FF277EC();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v0;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_24FF62028();
  sub_24FF26754();
  sub_24FF26800();
  MEMORY[0x28223BE20](v18);
  sub_24FF3A538();
  v9(0);
  sub_24FF2552C();
  sub_24FF26800();
  MEMORY[0x28223BE20](v19);
  v21 = sub_24FF3A3C4(v20);
  v22(v21, v10);
  sub_24FF38A78(v14, v23);
  sub_24FF24B98(v1, 1, 1, v12);
  sub_24FF37F38(v23, v1, v17, v7, v5, v3, v16);
  sub_24FF277D4();
}

uint64_t ChatMessagesPromptRunConfig.Typed.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A5C4(v1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[9] = v3;
  v0[10] = sub_24FF2BE24();
  v4 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

{
  sub_24FF2BC7C();
  sub_24FF3A1CC(v1, v2, v3);
  v0[21] = sub_24FF61C18();
  sub_24FF2552C();
  v0[22] = v4;
  v5 = sub_24FF2BE24();
  sub_24FF3A340(v5);
  sub_24FF32CF4();
  v8 = sub_24FF329E8(v6, v7, MEMORY[0x277D42D70]);
  v9 = sub_24FF3A140(v8);
  v0[26] = v9;
  sub_24FF2BA9C(v9);
  v0[27] = v10;
  v11 = sub_24FF2C21C();
  v12 = sub_24FF3A69C(v11);
  v13 = sub_24FF3A310(v12);
  v15 = sub_24FF3A714(v13, v14);
  v0[31] = v15;
  sub_24FF2BA9C(v15);
  v0[32] = v16;
  v0[33] = sub_24FF2BE24();
  v17 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_24FF35E3C()
{
  sub_24FF2BC70();
  sub_24FF36068(v0[7], v0[6]);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[11] = v1;
  *v1 = v2;
  sub_24FF3A61C(v1);

  return ChatMessagesPromptRunConfig.Typed.run(returning:)();
}

uint64_t sub_24FF35EC8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 96) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF35FC0()
{
  sub_24FF2BC7C();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF619F8();
  v0 = sub_24FF321EC();
  v1(v0);

  sub_24FF32604();
  v2 = sub_24FF32440();

  return v3(v2);
}

uint64_t ChatMessagesPromptRunConfig.Typed.run<A>(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A434(v1, v2, v3, v4, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[11] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[12] = v7;
  v0[13] = sub_24FF2BE24();
  v8 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_24FF36448()
{
  sub_24FF2BC70();
  sub_24FF36068(v0[10], v0[9]);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[14] = v1;
  *v1 = v2;
  sub_24FF3A57C(v1);

  return ChatMessagesPromptRunConfig.Typed.run(returning:)();
}

uint64_t sub_24FF364D4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF365CC()
{
  sub_24FF2BC30();
  sub_24FF3A5AC();
  swift_getAssociatedConformanceWitness();
  sub_24FF323E4();
  sub_24FF619F8();
  v1 = sub_24FF321EC();
  v3 = v2(v1);
  sub_24FF32490(v3, v4, v5, v6, v7, v8, v9, v10, v16, v17, v18);
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 128) = v11;
  *v11 = v12;
  v13 = sub_24FF3A410(v11);

  return v14(v13);
}

uint64_t sub_24FF36740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  sub_24FF26754();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t ChatMessagesPromptRunConfig.TypedStreamable.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A4EC(v1, v2, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[7] = AssociatedTypeWitness;
  sub_24FF2BA9C(AssociatedTypeWitness);
  v0[8] = v5;
  v0[9] = sub_24FF2BE24();
  v6 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

{
  sub_24FF2BC7C();
  sub_24FF3A1CC(v1, v2, v3);
  v0[21] = sub_24FF61C18();
  sub_24FF2552C();
  v0[22] = v4;
  v5 = sub_24FF2BE24();
  sub_24FF3A340(v5);
  sub_24FF32CF4();
  v8 = sub_24FF329E8(v6, v7, MEMORY[0x277D42D70]);
  v9 = sub_24FF3A140(v8);
  v0[26] = v9;
  sub_24FF2BA9C(v9);
  v0[27] = v10;
  v11 = sub_24FF2C21C();
  v12 = sub_24FF3A69C(v11);
  v13 = sub_24FF3A310(v12);
  v15 = sub_24FF3A714(v13, v14);
  v0[31] = v15;
  sub_24FF2BA9C(v15);
  v0[32] = v16;
  v0[33] = sub_24FF2BE24();
  v17 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_24FF3686C()
{
  sub_24FF2BC70();
  sub_24FF36A90(v0[6], v0[5]);
  swift_task_alloc();
  sub_24FF2BC3C();
  v0[10] = v1;
  *v1 = v2;
  sub_24FF3A630(v1);

  return ChatMessagesPromptRunConfig.TypedStreamable.run(returning:)();
}

uint64_t sub_24FF368F8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 88) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF369F0()
{
  sub_24FF2BC7C();
  sub_24FF3A5F4();
  swift_getAssociatedConformanceWitness();
  sub_24FF61A78();
  v0 = sub_24FF32270();
  v1(v0);

  sub_24FF321B0();

  return v2();
}

uint64_t sub_24FF36DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24FF277EC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24(0);
  sub_24FF26754();
  (*(v25 + 32))(v23, v21);
  v26 = v13(0, v17, v15);
  (*(*(v17 - 8) + 32))(v23 + *(v26 + 36), v19, v17);
  swift_getAssociatedTypeWitness();
  sub_24FF26754();
  sub_24FF277D4();

  return v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t ChatMessagesPromptRunConfig.Untyped.run(returning:)(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v3 = sub_24FF2BB18();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_24FF36F10()
{
  sub_24FF2BC70();
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v0 + 88) = v1;
  *v1 = v2;
  sub_24FF3264C(v1);

  return ChatMessagesPromptRunConfig.Untyped.run(returning:)();
}

uint64_t ChatMessagesPromptRunConfig.Untyped.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A350(v2, v3);
  v4 = sub_24FF25460(&qword_27F3B3F08, &qword_24FF62F18);
  sub_24FF3A330(v4);
  v5 = sub_24FF2C21C();
  v1[19] = sub_24FF3A6B4(v5);
  v1[20] = *(v0 + 16);
  sub_24FF32294();
  v1[21] = v6;
  v1[22] = sub_24FF2BE24();
  v7 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF372FC()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 192) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF373F4()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 152), &qword_27F3B3F08, &qword_24FF62F18);
  sub_24FF3A508();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF37470()
{
  sub_24FF2BC7C();
  sub_24FF3A6E4();
  sub_24FF37EE0(v0, &qword_27F3B3F08, &qword_24FF62F18);
  sub_24FF3A380();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF374F8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 208) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF375F0()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 144), &qword_27F3B3F08, &qword_24FF62F18);
  sub_24FF3A548();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF3766C()
{
  sub_24FF2BC7C();
  sub_24FF3A6CC();
  sub_24FF37EE0(v0, &qword_27F3B3F08, &qword_24FF62F18);
  sub_24FF3A498();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF376F4@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1(0);
  sub_24FF26754();
  v6 = *(v5 + 16);

  return v6(a2, v2, v4);
}

uint64_t ChatMessagesPromptRunConfig.UntypedStreamable.run(returning:)()
{
  sub_24FF2BC70();
  sub_24FF3A350(v2, v3);
  v4 = sub_24FF25460(qword_27F3B3F10, &qword_24FF62F28);
  sub_24FF3A330(v4);
  v5 = sub_24FF2C21C();
  v1[19] = sub_24FF3A6B4(v5);
  v1[20] = *(v0 + 16);
  sub_24FF32294();
  v1[21] = v6;
  v1[22] = sub_24FF2BE24();
  v7 = sub_24FF2BB18();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF37AE8()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 192) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF37BE0()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 152), qword_27F3B3F10, &qword_24FF62F28);
  sub_24FF3A508();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF37C5C()
{
  sub_24FF2BC7C();
  sub_24FF3A6E4();
  sub_24FF37EE0(v0, qword_27F3B3F10, &qword_24FF62F28);
  sub_24FF3A380();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF37CE4()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 208) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF37DDC()
{
  sub_24FF2BC70();
  sub_24FF37EE0(*(v0 + 144), qword_27F3B3F10, &qword_24FF62F28);
  sub_24FF3A548();

  sub_24FF321B0();

  return v1();
}

uint64_t sub_24FF37E58()
{
  sub_24FF2BC7C();
  sub_24FF3A6CC();
  sub_24FF37EE0(v0, qword_27F3B3F10, &qword_24FF62F28);
  sub_24FF3A498();

  sub_24FF24BC0();

  return v1();
}

uint64_t sub_24FF37EE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_24FF25460(a2, a3);
  sub_24FF26754();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_24FF37F38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(void)@<X4>, uint64_t (*a5)(void, uint64_t)@<X5>, void (*a6)(uint64_t, uint64_t)@<X6>, uint64_t a7@<X8>)
{
  a4(0);
  sub_24FF26754();
  v13 = sub_24FF3A454();
  v14(v13);
  v15 = a5(0, a3);
  a6(a1, a7 + *(v15 + 28));
  v16 = *(*(a3 - 8) + 32);
  v17 = a7 + *(v15 + 32);

  return v16(v17, a2, a3);
}

void ChatMessagesPrompt.with<A>(model:chatParameters:modelType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24FF38110();
}

{
  sub_24FF38110();
}

uint64_t ChatMessagesPrompt.withModel<A>(modelType:model:chatParameters:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  return sub_24FF382F4(a1, a2, a3, a4, a5, a6, a7, MEMORY[0x277D0DD00], MEMORY[0x277D0D960], ChatMessagesPrompt.with<A>(model:chatParameters:modelType:));
}

{
  return sub_24FF382F4(a1, a2, a3, a4, a5, a6, a7, MEMORY[0x277D0DD58], MEMORY[0x277D0D980], ChatMessagesPrompt.with<A>(model:chatParameters:modelType:));
}

void ChatMessagesPrompt.with<A, B>(model:modelType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24FF384DC();
}

{
  sub_24FF384DC();
}

uint64_t ChatMessagesPrompt.withModel<A, B>(modelType:model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_24FF38668(a1, a2, a3, a4, a5, a6, ChatMessagesPrompt.with<A, B>(model:modelType:));
}

{
  return sub_24FF38668(a1, a2, a3, a4, a5, a6, ChatMessagesPrompt.with<A, B>(model:modelType:));
}

void sub_24FF38110()
{
  sub_24FF277EC();
  sub_24FF3A2D0(v4, v5, v6, v7);
  sub_24FF2552C();
  sub_24FF26800();
  MEMORY[0x28223BE20](v8);
  sub_24FF3A5DC();
  sub_24FF32294();
  MEMORY[0x28223BE20](v9);
  sub_24FF26704();
  sub_24FF61C18();
  sub_24FF2552C();
  MEMORY[0x28223BE20](v10);
  sub_24FF26704();
  v12 = sub_24FF3A3C4(v11);
  v13(v12);
  v14 = sub_24FF3A688();
  v15(v14);
  v16 = sub_24FF3A674();
  v17(v16);
  sub_24FF39EA4();
  sub_24FF3A21C();
  sub_24FF36DBC(v18, v19, v20, v2, v0, v21, v22, v1, v3, v23, v24, v25);
  sub_24FF3A65C();
  sub_24FF277D4();
}

uint64_t sub_24FF382F4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_24FF2552C();
  v24 = v15;
  sub_24FF26800();
  MEMORY[0x28223BE20](v16);
  sub_24FF3A538();
  sub_24FF32294();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_24FF26704();
  v22 = v21 - v20;
  result = a2();
  if (!v10)
  {
    a4(result);
    a10(v22, v11);
    (*(v24 + 8))(v11, AssociatedTypeWitness);
    return (*(v18 + 8))(v22, a6);
  }

  return result;
}

void sub_24FF384DC()
{
  sub_24FF277EC();
  sub_24FF3A3D8(v2, v3, v4, v5, v6, v7, v8);
  sub_24FF26800();
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  sub_24FF32294();
  MEMORY[0x28223BE20](v12);
  sub_24FF26704();
  sub_24FF3A5DC();
  sub_24FF61C18();
  sub_24FF2552C();
  MEMORY[0x28223BE20](v13);
  sub_24FF26704();
  v15 = sub_24FF3A594(v14);
  v16(v15);
  v17 = sub_24FF3A608();
  v18(v17);
  sub_24FF24B98(v11, 1, 1, v1);
  sub_24FF39EA4();
  sub_24FF3A4C0(v19, v20, v21, v22, v23, v24, v25, v26, v0, v27, v28[0], v28[1]);
  sub_24FF3A65C();
  sub_24FF277D4();
}

uint64_t sub_24FF38668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  sub_24FF32294();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_24FF26704();
  v14 = v13 - v12;
  result = v15();
  if (!v7)
  {
    a7(v14);
    return (*(v10 + 8))(v14, a4);
  }

  return result;
}

void ChatMessagesPrompt.with<A>(model:chatParameters:modelType:)()
{
  sub_24FF35A14();
}

{
  sub_24FF35A14();
}

void *ChatMessagesPrompt.withModel<A>(modelType:model:chatParameters:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  return sub_24FF388F4(a1, a2, a3, a4, a5, ChatMessagesPrompt.with<A>(model:chatParameters:modelType:));
}

{
  return sub_24FF388F4(a1, a2, a3, a4, a5, ChatMessagesPrompt.with<A>(model:chatParameters:modelType:));
}

void ChatMessagesPrompt.with<A>(model:modelType:)()
{
  sub_24FF35C08();
}

{
  sub_24FF35C08();
}

void *ChatMessagesPrompt.withModel<A>(modelType:model:)(void *(*a1)(void *__return_ptr), uint64_t a2, uint64_t a3)
{
  return sub_24FF38B04(a1, a2, a3, ChatMessagesPrompt.with<A>(model:modelType:));
}

{
  return sub_24FF38B04(a1, a2, a3, ChatMessagesPrompt.with<A>(model:modelType:));
}

void *sub_24FF388F4(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t))
{
  v18 = a3;
  sub_24FF32294();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_24FF26704();
  v14 = v13 - v12;
  result = v15(v17);
  if (!v6)
  {
    v18(result);
    a6(v17, v14, a5);
    (*(v10 + 8))(v14, a5);
    return sub_24FF25A6C(v17);
  }

  return result;
}

uint64_t sub_24FF38A78(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  sub_24FF3232C();
  (*v3)(a2);
  return a2;
}

void *sub_24FF38B04(void *(*a1)(void *__return_ptr), uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  result = a1(v8);
  if (!v4)
  {
    a4(v8, a3);
    return sub_24FF25A6C(v8);
  }

  return result;
}

uint64_t dispatch thunk of PromptRunResultDecodable.init(promptOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(a5 + 8) + **(a5 + 8));
  swift_task_alloc();
  sub_24FF2BC3C();
  *(v5 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_24FF2C5C0;

  return v14(a1, a2, a3, a4, a5);
}

_BYTE *sub_24FF38E7C(_BYTE *result, int a2, int a3)
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

uint64_t sub_24FF38FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    AssociatedTypeWitness = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

void sub_24FF390D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void))
{
  v17 = a4(0);
  v6 = *(v17 - 8);
  v7 = *(*(a3 + 16) - 8);
  if (*(v7 + 84) <= *(v6 + 84))
  {
    v8 = *(*(v17 - 8) + 84);
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v9 + 84) <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  if (!a2)
  {
    goto LABEL_25;
  }

  if (a2 > v10)
  {
    v11 = ((*(v7 + 64) + *(v9 + 80) + ((*(v6 + 64) + *(v7 + 80)) & ~*(v7 + 80))) & ~*(v9 + 80)) + *(v9 + 64);
    if (v11 > 3)
    {
      goto LABEL_10;
    }

    v12 = ((a2 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v12))
    {
      if (*(a1 + v11))
      {
        goto LABEL_25;
      }
    }

    else if (v12 > 0xFF)
    {
      if (*(a1 + v11))
      {
        goto LABEL_25;
      }
    }

    else if (v12 >= 2)
    {
LABEL_10:
      if (*(a1 + v11))
      {
        goto LABEL_25;
      }
    }

    if (v10)
    {
      goto LABEL_22;
    }

LABEL_25:
    sub_24FF3A560();
    return;
  }

LABEL_22:
  sub_24FF3A560();

  sub_24FF24B70(v13, v14, v15);
}

void sub_24FF393EC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v26 = a5(0);
  v6 = *(v26 - 8);
  v7 = *(*(a4 + 16) - 8);
  if (*(v7 + 84) <= *(v6 + 84))
  {
    v8 = *(*(v26 - 8) + 84);
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v9 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v9 + 84) <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = ((*(v7 + 64) + *(v9 + 80) + ((*(v6 + 64) + *(v7 + 80)) & ~*(v7 + 80))) & ~*(v9 + 80)) + *(v9 + 64);
  v12 = 8 * v11;
  if (a3 <= v10)
  {
    v15 = 0;
    v13 = a1;
    v14 = a2;
  }

  else
  {
    v13 = a1;
    v14 = a2;
    if (v11 <= 3)
    {
      v18 = ((a3 - v10 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  if (v10 < v14)
  {
    v16 = ~v10 + v14;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(v13, v11);
        if (v11 == 3)
        {
          *v13 = v20;
          v13[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *v13 = v20;
        }

        else
        {
          *v13 = v16;
        }
      }
    }

    else
    {
      bzero(v13, v11);
      *v13 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        v13[v11] = v17;
        goto LABEL_43;
      case 2:
        *&v13[v11] = v17;
        goto LABEL_43;
      case 3:
        goto LABEL_44;
      case 4:
        *&v13[v11] = v17;
        goto LABEL_43;
      default:
        goto LABEL_43;
    }
  }

  switch(v15)
  {
    case 1:
      v13[v11] = 0;
      if (v14)
      {
        goto LABEL_34;
      }

      goto LABEL_43;
    case 2:
      *&v13[v11] = 0;
      if (!v14)
      {
        goto LABEL_43;
      }

      goto LABEL_34;
    case 3:
LABEL_44:
      __break(1u);
      return;
    case 4:
      *&v13[v11] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (v14)
      {
LABEL_34:
        sub_24FF3A560();

        sub_24FF24B98(v21, v22, v23, v24);
      }

      else
      {
LABEL_43:
        sub_24FF3A560();
      }

      return;
  }
}

uint64_t sub_24FF397DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_getExtendedExistentialTypeMetadata();
    result = swift_checkMetadataState();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24FF39890(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_24FF3A4B4();
  v8 = v7(v6);
  v9 = *(*(v8 - 8) + 84);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(*(v8 - 8) + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(v8 - 8) + 64);
  v16 = *(v11 + 80);
  v17 = *(v11 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v18 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v16) + v17;
  v19 = 8 * v18;
  if (v18 > 3)
  {
    goto LABEL_10;
  }

  v22 = ((a2 - v14 + ~(-1 << v19)) >> v19) + 1;
  if (HIWORD(v22))
  {
    v20 = *(v3 + v18);
    if (v20)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v22 <= 0xFF)
    {
      if (v22 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v20 = *(v3 + v18);
      if (!*(v3 + v18))
      {
        goto LABEL_28;
      }

LABEL_18:
      v23 = (v20 - 1) << v19;
      if (v18 > 3)
      {
        v23 = 0;
      }

      if (v18)
      {
        if (v18 <= 3)
        {
          v24 = v18;
        }

        else
        {
          v24 = 4;
        }

        switch(v24)
        {
          case 2:
            v25 = *v3;
            break;
          case 3:
            v25 = *v3 | (*(v3 + 2) << 16);
            break;
          case 4:
            v25 = *v3;
            break;
          default:
            v25 = *v3;
            break;
        }
      }

      else
      {
        v25 = 0;
      }

      return v14 + (v25 | v23) + 1;
    }

    v20 = *(v3 + v18);
    if (*(v3 + v18))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v9 == v14)
  {
    v26 = v3;
    v12 = *(*(v8 - 8) + 84);
    v10 = v8;
LABEL_35:

    return sub_24FF24B70(v26, v12, v10);
  }

  v27 = (v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v13 & 0x80000000) != 0)
  {
    v26 = (v27 + v16 + 40) & ~v16;
    goto LABEL_35;
  }

  v28 = *(v27 + 24);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void sub_24FF39AE8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_24FF3A4B4();
  v10 = v9(v8);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(*(v10 - 8) + 84);
  v14 = *(v12 + 84);
  if (v13 <= v14)
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = *(*(v10 - 8) + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(*(v10 - 8) + 64);
  v18 = *(v12 + 80);
  v19 = ((v18 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v18) + *(v12 + 64);
  v20 = 8 * v19;
  if (a3 <= v16)
  {
    v21 = 0;
  }

  else if (v19 <= 3)
  {
    v26 = ((a3 - v16 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v26))
    {
      v21 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v21 = v27;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v16 >= a2)
  {
    switch(v21)
    {
      case 1:
        *(v4 + v19) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *(v4 + v19) = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_50:
        __break(1u);
        return;
      case 4:
        *(v4 + v19) = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v13 == v16)
        {
          v31 = v4;
          v32 = a2;
          v14 = v13;
          v11 = v10;
        }

        else
        {
          v33 = (v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
          if ((v15 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *(v33 + 8) = 0u;
              *(v33 + 24) = 0u;
              *v33 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v33 + 24) = (a2 - 1);
            }

            return;
          }

          v31 = (v33 + v18 + 40) & ~v18;
          v32 = a2;
        }

        sub_24FF24B98(v31, v32, v14, v11);
        break;
    }
  }

  else
  {
    v22 = ~v16 + a2;
    if (v19 < 4)
    {
      v25 = (v22 >> v20) + 1;
      if (v19)
      {
        v28 = v22 & ~(-1 << v20);
        v29 = sub_24FF32440();
        bzero(v29, v30);
        if (v19 == 3)
        {
          *v4 = v28;
          *(v4 + 2) = BYTE2(v28);
        }

        else if (v19 == 2)
        {
          *v4 = v28;
        }

        else
        {
          *v4 = v22;
        }
      }
    }

    else
    {
      v23 = sub_24FF32440();
      bzero(v23, v24);
      *v4 = v22;
      v25 = 1;
    }

    switch(v21)
    {
      case 1:
        *(v4 + v19) = v25;
        break;
      case 2:
        *(v4 + v19) = v25;
        break;
      case 3:
        goto LABEL_50;
      case 4:
        *(v4 + v19) = v25;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_24FF39E84(uint64_t a1)
{

  return swift_once();
}

double sub_24FF39EF8()
{
  result = 0.0;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  return result;
}

uint64_t *sub_24FF39F78()
{
  v4 = (v0 + *(v2 + 28));
  v8 = *(v4 + 3);
  sub_24FF257B8(v4, v4[3]);
  v5 = v3 + *(v1 + 52);
  *(v5 + 24) = v8;

  return sub_24FF2D6D8(v5);
}

uint64_t *sub_24FF39FCC()
{
  v4 = (v2 + *(v0 + 28));
  v8 = *(v4 + 3);
  sub_24FF257B8(v4, v4[3]);
  v5 = v1 + *(v3 + 52);
  *(v5 + 24) = v8;

  return sub_24FF2D6D8(v5);
}

double sub_24FF3A090()
{
  result = 0.0;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  return result;
}

uint64_t sub_24FF3A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return MEMORY[0x2821A3E18](v11, v12, v13, v14, a1, a11, a10);
}

uint64_t sub_24FF3A0DC()
{
  v7 = v1 + *(v2 + 36);

  return GenerativeConfigurationProtocol.with<A>(model:)(v7, v0, v5, v4, v3);
}

uint64_t sub_24FF3A108()
{

  return sub_24FF61C38();
}

uint64_t sub_24FF3A140(uint64_t a1)
{
  v3[25] = a1;
  v3[14] = v2;
  v3[15] = v1;
  v3[16] = v2;
  v3[17] = a1;

  return type metadata accessor for GenerativeConfigurationRunnable(0, (v3 + 14));
}

uint64_t sub_24FF3A168()
{
  v7 = v0 + *(v5 + 36);

  return GenerativeConfigurationProtocol.with<A>(model:)(v7, v3, v2, v1, v4);
}

uint64_t sub_24FF3A190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return MEMORY[0x2821A3E18](a1, a10, v13, v14, v15, a13, a12);
}

uint64_t sub_24FF3A1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[18] = a1;
  return 0;
}

uint64_t sub_24FF3A228()
{

  return sub_24FF61C38();
}

uint64_t sub_24FF3A26C()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24FF3A28C()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24FF3A2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  *(v6 - 96) = a5;
  *(v6 - 88) = a4;
  *(v6 - 120) = v5;
  *(v6 - 112) = a1;
  *(v6 - 104) = a2;

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_24FF3A310(uint64_t result)
{
  *(v2 + 232) = result;
  *(v2 + 240) = *(v1 + 24);
  return result;
}

uint64_t sub_24FF3A340(uint64_t result)
{
  *(v2 + 184) = result;
  *(v2 + 192) = *(v1 + 16);
  return result;
}

uint64_t sub_24FF3A350(uint64_t result, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = result;
  return result;
}

uint64_t sub_24FF3A380()
{
  sub_24FF25A6C((v0 + 16));
}

uint64_t sub_24FF3A3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 96) = a6;
  *(v7 - 88) = a7;
  *(v7 - 104) = a5;

  return sub_24FF62028();
}

uint64_t sub_24FF3A434(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[4] = result;
  v6[9] = *(a3 + 24);
  v6[10] = *(a3 + 16);
  return result;
}

uint64_t sub_24FF3A460()
{
}

uint64_t sub_24FF3A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_24FF3A498()
{
}

uint64_t sub_24FF3A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *(v16 - 104);
  v19 = *(v16 - 96);
  v20 = *(v16 - 88);

  return sub_24FF36DBC(v13, v12, v15, v14, v18, a6, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_24FF3A4EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = result;
  v4[5] = *(a3 + 24);
  v4[6] = *(a3 + 16);
  return result;
}

uint64_t sub_24FF3A508()
{
  sub_24FF25A6C((v0 + 16));
}

uint64_t sub_24FF3A548()
{
}

uint64_t sub_24FF3A5C4(uint64_t result)
{
  v2[4] = result;
  v2[5] = v1;
  v2[6] = *(result + 24);
  v2[7] = *(result + 16);
  return result;
}

uint64_t sub_24FF3A69C(uint64_t a1)
{
  *(v1 + 224) = a1;

  return swift_task_alloc();
}

uint64_t sub_24FF3A6B4(uint64_t a1)
{
  *(v1 + 144) = a1;

  return swift_task_alloc();
}

uint64_t sub_24FF3A6CC()
{
  v2 = *(v0 + 112);

  return sub_24FF2D738(v2);
}

uint64_t sub_24FF3A6E4()
{
  v2 = *(v0 + 112);

  return sub_24FF2D738(v2);
}

uint64_t *sub_24FF3A6FC(uint64_t a1)
{
  v1[4] = a1;

  return sub_24FF2D6D8(v1);
}

uint64_t sub_24FF3A714(uint64_t a1, uint64_t a2)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t CompletionPrompt.render<A>(with:)()
{
  sub_24FF3AA28();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_24FF61BE8();
  sub_24FF329E8(qword_280B16660, MEMORY[0x277D42D40], MEMORY[0x277D42D38]);
  *v1 = v0;
  v2 = sub_24FF3AA04();

  return MEMORY[0x2821660A0](v2);
}

uint64_t sub_24FF3A81C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ChatMessagesPrompt.render<A>(with:)()
{
  sub_24FF3AA28();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  sub_24FF61C18();
  sub_24FF329E8(&qword_280B16658, MEMORY[0x277D42D78], MEMORY[0x277D42D70]);
  *v1 = v0;
  v2 = sub_24FF3AA04();

  return MEMORY[0x282166068](v2);
}

uint64_t type metadata accessor for JsonObjectFieldContainer(uint64_t a1)
{
  result = qword_280B16038;
  if (!qword_280B16038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24FF3AA90(uint64_t a1)
{
  result = sub_24FF61898();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

GenerativeFunctions::JsonStreamDescriptor __swiftcall JsonStreamDescriptor.init(fieldType:fields:)(GenerativeFunctions::JsonObjectFieldType fieldType, Swift::OpaquePointer fields)
{
  *v2 = *fieldType;
  *(v2 + 8) = fields;
  result.fields = fields;
  result.fieldType = fieldType;
  return result;
}

uint64_t static JsonStreamDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(v2 + 16) != *(v3 + 16) || (sub_24FF3ACE0(*(a2 + 8), v2) & 1) != 0)
  {
    return 0;
  }

  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v27 = v2;
  while (v8)
  {
LABEL_13:
    if (!*(v3 + 16))
    {
      goto LABEL_16;
    }

    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = *(v2 + 48);
    v14 = *(v2 + 56) + 16 * v12;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = (v13 + 16 * v12);
    v18 = *v17;
    v19 = v17[1];

    v20 = sub_24FF3AFE0(v18, v19, sub_24FF3B0E8);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v8 &= v8 - 1;
    v23 = *(v3 + 56) + 16 * v20;
    v24 = *v23;
    v25 = *(v23 + 8);
    v30[0] = v15;
    v31 = v16;
    v28[0] = v24;
    v29 = v25;
    v26 = static JsonStreamDescriptor.== infix(_:_:)(v30, v28);

    v2 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_16:

      return 0;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24FF3ACE0(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v6 = ~(-1 << v4);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 64);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v5 = ~(-1 << v9);
  }

  v10 = v5 & *(a1 + 64);
  v11 = (v4 + 63) >> 6;
  v12 = (v9 + 63) >> 6;

  v26 = a1;

  v14 = 0;
  v15 = 0;
  v25 = v3;
  if (v7)
  {
    while (1)
    {
      v16 = v14;
LABEL_12:
      v17 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v18 = (*(a2 + 48) + ((v16 << 10) | (16 * v17)));
      v19 = v18[1];
      v28 = *v18;

      if (!v10)
      {
        goto LABEL_13;
      }

LABEL_18:
      v21 = (*(v26 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v10)))));
      v23 = *v21;
      v22 = v21[1];

      if (!v19)
      {
        break;
      }

      if (!v22)
      {
        goto LABEL_28;
      }

      v24 = v28 == v23 && v19 == v22;
      if (!v24 && (sub_24FF62158() & 1) == 0)
      {

        return 0;
      }

      v10 &= v10 - 1;

      v3 = v25;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

LABEL_30:

    if (v22)
    {
LABEL_31:

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    while (1)
    {
LABEL_8:
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v11)
      {
        break;
      }

      v7 = *(v3 + 8 * v16);
      ++v14;
      if (v7)
      {
        v14 = v16;
        goto LABEL_12;
      }
    }

    v7 = 0;
    v28 = 0;
    v19 = 0;
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_13:
    while (1)
    {
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v20 >= v12)
      {
        if (v19)
        {
LABEL_28:

          goto LABEL_31;
        }

        v22 = 0;
        goto LABEL_30;
      }

      v10 = *(v8 + 8 * v20);
      ++v15;
      if (v10)
      {
        v15 = v20;
        goto LABEL_18;
      }
    }

LABEL_36:
    __break(1u);
  }

  return result;
}

__n128 sub_24FF3AF30(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24FF3AF3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24FF3AF7C(uint64_t result, int a2, int a3)
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

uint64_t sub_24FF3AFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_24FF621F8();
  sub_24FF61D88();
  v5 = sub_24FF62218();

  return a3(a1, a2, v5);
}

unint64_t sub_24FF3B064(uint64_t a1)
{
  sub_24FF61898();
  sub_24FF3B344(&qword_280B16630, MEMORY[0x277CC9600]);
  v2 = sub_24FF61CD8();

  return sub_24FF3B19C(a1, v2);
}

unint64_t sub_24FF3B0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_24FF62158() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_24FF3B19C(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_24FF61898();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_24FF3B344(&qword_280B16628, MEMORY[0x277CC9610]);
    v9 = sub_24FF61D38();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_24FF3B344(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_24FF61898();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t JsonObjectFieldType.hashValue.getter()
{
  v1 = *v0;
  sub_24FF621F8();
  MEMORY[0x25305CD50](v1);
  return sub_24FF62218();
}

uint64_t sub_24FF3B41C(uint64_t a1)
{
  v2 = *v1;
  sub_24FF621F8();
  MEMORY[0x25305CD50](v2);
  return sub_24FF62218();
}

uint64_t static JsonValueContainer.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_16;
      }

      v23 = sub_24FF32440();
      sub_24FF3B658(v23, v24, 1);
      v25 = sub_24FF3D2AC();
      sub_24FF3B658(v25, v26, 1);
      v18 = LOBYTE(v5) ^ LOBYTE(v2) ^ 1;
      return v18 & 1;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_16;
      }

      v14 = sub_24FF32440();
      sub_24FF3B658(v14, v15, 2);
      v16 = sub_24FF3D2AC();
      sub_24FF3B658(v16, v17, 2);
      v18 = *&v2 == *&v5;
      return v18 & 1;
    case 3:
      if (v7 != 3)
      {
        goto LABEL_16;
      }

      v19 = sub_24FF32440();
      sub_24FF3B658(v19, v20, 3);
      v21 = sub_24FF3D2AC();
      sub_24FF3B658(v21, v22, 3);
      v18 = v2 == v5;
      return v18 & 1;
    case 4:
      if (v7 != 4 || (v6 | *&v5) != 0)
      {
        goto LABEL_16;
      }

      v9 = sub_24FF32440();
      sub_24FF3B658(v9, v10, 4);
      v11 = 0;
      v12 = 0;
      v13 = 4;
      goto LABEL_23;
    default:
      if (*(a2 + 16))
      {

LABEL_16:
        v27 = sub_24FF3D2AC();
        sub_24FF3B644(v27, v28, v7);
        v29 = sub_24FF32440();
        sub_24FF3B658(v29, v30, v4);
        v31 = sub_24FF3D2AC();
        sub_24FF3B658(v31, v32, v7);
        v18 = 0;
      }

      else
      {
        v33 = *a1;
        if (*&v2 != *&v5 || v3 != v6)
        {
          v35 = sub_24FF62158();
          v36 = sub_24FF3D2AC();
          sub_24FF3B644(v36, v37, 0);
          v38 = sub_24FF3D26C();
          sub_24FF3B644(v38, v39, v40);
          v41 = sub_24FF3D26C();
          sub_24FF3B658(v41, v42, v43);
          v44 = sub_24FF3D2AC();
          sub_24FF3B658(v44, v45, 0);
          return v35 & 1;
        }

        sub_24FF3B644(*&v33, v3, 0);
        v47 = sub_24FF3D26C();
        sub_24FF3B644(v47, v48, v49);
        v50 = sub_24FF3D26C();
        sub_24FF3B658(v50, v51, v52);
        v11 = sub_24FF3D26C();
LABEL_23:
        sub_24FF3B658(v11, v12, v13);
        v18 = 1;
      }

      return v18 & 1;
  }
}

uint64_t sub_24FF3B644(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_24FF3B658(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t static JsonStreamEvent.== infix(_:_:)(uint64_t a1, char *a2)
{
  v208 = a2;
  v206 = a1;
  v2 = type metadata accessor for JsonFieldValueEvent(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24FF25518();
  v195 = v3;
  sub_24FF25540();
  MEMORY[0x28223BE20](v4);
  v197 = v191 - v5;
  v209 = sub_24FF61898();
  v207 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  sub_24FF25518();
  v199 = v6;
  sub_24FF25540();
  MEMORY[0x28223BE20](v7);
  sub_24FF3D27C();
  v200 = v8;
  sub_24FF25540();
  MEMORY[0x28223BE20](v9);
  sub_24FF3D27C();
  v201 = v10;
  sub_24FF25540();
  MEMORY[0x28223BE20](v11);
  sub_24FF3D27C();
  v194 = v12;
  sub_24FF25540();
  MEMORY[0x28223BE20](v13);
  sub_24FF3D27C();
  v196 = v14;
  sub_24FF25540();
  MEMORY[0x28223BE20](v15);
  sub_24FF3D27C();
  v198 = v16;
  sub_24FF25540();
  MEMORY[0x28223BE20](v17);
  sub_24FF3D27C();
  v192 = v18;
  sub_24FF25540();
  MEMORY[0x28223BE20](v19);
  sub_24FF3D27C();
  v191[2] = v20;
  sub_24FF25540();
  MEMORY[0x28223BE20](v21);
  sub_24FF3D27C();
  v193 = v22;
  sub_24FF25540();
  MEMORY[0x28223BE20](v23);
  sub_24FF3D27C();
  v203 = v24;
  sub_24FF25540();
  MEMORY[0x28223BE20](v25);
  sub_24FF3D27C();
  v202 = v26;
  sub_24FF25540();
  MEMORY[0x28223BE20](v27);
  sub_24FF3D27C();
  v191[1] = v28;
  sub_24FF25540();
  MEMORY[0x28223BE20](v29);
  v191[0] = v191 - v30;
  v31 = type metadata accessor for JsonStreamEvent(0);
  sub_24FF26754();
  MEMORY[0x28223BE20](v32);
  sub_24FF25518();
  v205 = v33;
  sub_24FF25540();
  MEMORY[0x28223BE20](v34);
  sub_24FF3D27C();
  v204 = v35;
  sub_24FF25540();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = v191 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = v191 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = v191 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = v191 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = v191 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = v191 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = v191 - v55;
  v57 = sub_24FF25460(&qword_27F3B4298, &unk_24FF632A0);
  v58 = MEMORY[0x28223BE20](v57 - 8);
  v60 = v191 - v59;
  v61 = v191 + *(v58 + 56) - v59;
  sub_24FF3C614(v206, v191 - v59);
  v62 = v208;
  v208 = v61;
  sub_24FF3C614(v62, v61);
  v63 = v60;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v133 = sub_24FF3D2A0();
      sub_24FF3C614(v133, v54);
      if (sub_24FF3D2F0() == 1)
      {
        v134 = v207;
        sub_24FF3D330();
        sub_24FF3D318();
        v135();
        v75 = sub_24FF61878();
        v136 = *(v134 + 8);
        v137 = sub_24FF3D324();
        v136(v137);
        v138 = v54;
        v139 = v31;
        goto LABEL_38;
      }

      sub_24FF3D2B8();
      v66 = v54;
      goto LABEL_56;
    case 2u:
      v80 = sub_24FF3D2A0();
      sub_24FF3C614(v80, v51);
      v81 = *(sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0) + 48);
      v83 = *&v51[v81];
      v82 = *&v51[v81 + 8];
      v84 = v208;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        sub_24FF3D2B8();
        v66 = v51;
        goto LABEL_56;
      }

      v85 = *&v84[v81];
      v86 = *&v84[v81 + 8];
      v206 = v85;
      v87 = v207;
      v88 = v209;
      (*(v207 + 32))(v202, v84, v209);
      v89 = sub_24FF61878();
      v90 = *(v87 + 8);
      v91 = v90(v51, v88);
      if ((v89 & 1) == 0)
      {
        v181 = sub_24FF3D30C();
        (v90)(v181);
        goto LABEL_64;
      }

      if (v83 != v206 || v82 != v86)
      {
        v94 = sub_24FF3D33C(v91, v92, v206);
        v90(v202, v88);
        goto LABEL_21;
      }

      v90(v202, v88);
      goto LABEL_69;
    case 3u:
      v95 = sub_24FF3D2A0();
      sub_24FF3C614(v95, v48);
      v96 = *(sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0) + 48);
      v98 = *&v48[v96];
      v97 = *&v48[v96 + 8];
      v99 = v208;
      sub_24FF3D324();
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        sub_24FF3D2B8();
        v66 = v48;
        goto LABEL_56;
      }

      v100 = *&v99[v96];
      v101 = *&v99[v96 + 8];
      v206 = v100;
      v102 = v207;
      v103 = v203;
      v104 = v209;
      (*(v207 + 32))(v203, v99, v209);
      v105 = sub_24FF61878();
      v106 = *(v102 + 8);
      v107 = v106(v48, v104);
      if ((v105 & 1) == 0)
      {
        v106(v103, v104);
LABEL_64:

        goto LABEL_74;
      }

      if (v98 == v206 && v97 == v101)
      {
        v106(v203, v104);
LABEL_69:

        goto LABEL_70;
      }

      v94 = sub_24FF3D33C(v107, v108, v206);
      v106(v203, v104);
LABEL_21:

      if (v94)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    case 4u:
      v67 = sub_24FF3D2A0();
      sub_24FF3C614(v67, v45);
      v68 = *(sub_24FF25460(&qword_27F3B42A8, &unk_24FF632B0) + 48);
      if (sub_24FF3D2C4() != 4)
      {
        sub_24FF3C6E0(&v45[v68], type metadata accessor for JsonFieldValueEvent);
        sub_24FF3D2B8();
        v66 = v45;
        goto LABEL_56;
      }

      sub_24FF3D2E0();
      v69 = v193;
      sub_24FF3D318();
      v70();
      v71 = v197;
      sub_24FF3C738(&v45[v68], v197);
      v72 = v195;
      sub_24FF3C738(&v56[v68], v195);
      v73 = sub_24FF61878();
      v74 = *(v54 + 1);
      v74(v45, v31);
      if (v73)
      {
        v75 = static JsonFieldValueEvent.== infix(_:_:)(v71, v72);
        sub_24FF3D288();
        sub_24FF3C6E0(v72, v76);
        v77 = sub_24FF3D330();
        sub_24FF3C6E0(v77, v78);
        v79 = v69;
        goto LABEL_35;
      }

      sub_24FF3D288();
      sub_24FF3C6E0(v72, v178);
      v179 = sub_24FF3D330();
      sub_24FF3C6E0(v179, v180);
      v74(v69, v31);
      goto LABEL_74;
    case 5u:
      v140 = sub_24FF3D2A0();
      sub_24FF3C614(v140, v42);
      if (sub_24FF3D2C4() != 5)
      {
        sub_24FF3D2B8();
        v66 = v42;
        goto LABEL_56;
      }

      sub_24FF3D2E0();
      sub_24FF3D318();
      v141();
      v75 = sub_24FF61878();
      v74 = *(v54 + 1);
      v142 = sub_24FF3D324();
      (v74)(v142);
      v79 = v42;
LABEL_35:
      v74(v79, v31);
      goto LABEL_60;
    case 6u:
      v143 = sub_24FF3D2A0();
      sub_24FF3C614(v143, v39);
      if (sub_24FF3D2F0() != 6)
      {
        sub_24FF3D2B8();
        v66 = v39;
        goto LABEL_56;
      }

      v144 = v207;
      v145 = v192;
      v146 = v209;
      (*(v207 + 32))(v192, v42, v209);
      v75 = sub_24FF61878();
      v136 = *(v144 + 8);
      (v136)(v145, v146);
      v138 = v39;
      v139 = v146;
LABEL_38:
      (v136)(v138, v139);
      goto LABEL_60;
    case 7u:
      v110 = sub_24FF3D2A0();
      v111 = v204;
      sub_24FF3C614(v110, v204);
      v112 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
      v113 = *(v112 + 48);
      v114 = *(v112 + 64);
      v116 = *(v111 + v114);
      v115 = *(v111 + v114 + 8);
      if (sub_24FF3D2C4() != 7)
      {

        v170 = *(v207 + 8);
        v171 = v209;
        v170(v111 + v113, v209);
        v170(v111, v171);
        goto LABEL_57;
      }

      v117 = *&v56[v114 + 8];
      v202 = *&v56[v114];
      v203 = v116;
      v205 = v117;
      v206 = v115;
      v118 = v207;
      v119 = v111;
      v120 = *(v207 + 32);
      v121 = v198;
      v122 = v209;
      v120(v198, v56, v209);
      v120(v196, (v111 + v113), v122);
      v123 = &v56[v113];
      v124 = v194;
      v120(v194, v123, v122);
      v125 = v121;
      v126 = sub_24FF61878();
      v127 = *(v118 + 8);
      v127(v119, v122);
      if ((v126 & 1) == 0 || (v128 = v205, v129 = v124, (sub_24FF61878() & 1) == 0))
      {

        v127(v124, v122);
        v185 = sub_24FF3D30C();
        (v127)(v185);
        v127(v125, v122);
        goto LABEL_74;
      }

      if (v203 != v202 || v206 != v128)
      {
        v131 = sub_24FF62158();
        v127(v129, v122);
        v132 = sub_24FF3D30C();
        (v127)(v132);
        v127(v125, v122);

        goto LABEL_47;
      }

      v127(v124, v122);
      v188 = sub_24FF3D30C();
      (v127)(v188);
      v127(v125, v122);

      goto LABEL_70;
    case 8u:
      v147 = v205;
      sub_24FF3C614(v60, v205);
      v148 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
      v149 = *(v148 + 48);
      v150 = *(v148 + 64);
      v152 = *(v147 + v150);
      v151 = *(v147 + v150 + 8);
      if (sub_24FF3D2C4() != 8)
      {

        v172 = *(v207 + 8);
        v173 = v209;
        v172(v147 + v149, v209);
        v172(v147, v173);
        goto LABEL_57;
      }

      v206 = v151;
      v153 = *&v56[v150 + 8];
      v202 = *&v56[v150];
      v203 = v152;
      v204 = v153;
      v154 = v207;
      v155 = *(v207 + 32);
      v156 = v201;
      v157 = v209;
      v155(v201, v56, v209);
      v158 = v200;
      v155(v200, (v147 + v149), v157);
      v159 = &v56[v149];
      v160 = v199;
      v155(v199, v159, v157);
      v161 = v156;
      v162 = sub_24FF61878();
      v163 = *(v154 + 8);
      v163(v147, v157);
      if (v162)
      {
        v164 = v204;
        v60 = v63;
        v165 = v158;
        v166 = v160;
        if (sub_24FF61878())
        {
          if (v203 == v202 && v206 == v164)
          {
            v189 = v160;
            v190 = v209;
            v163(v189, v209);
            v163(v158, v190);
            v163(v161, v190);

LABEL_70:
          }

          else
          {
            v131 = sub_24FF62158();
            v168 = v166;
            v169 = v209;
            v163(v168, v209);
            v163(v158, v169);
            v163(v161, v169);

LABEL_47:

            if ((v131 & 1) == 0)
            {
              goto LABEL_74;
            }
          }

LABEL_71:
          sub_24FF3D254();
          sub_24FF3C6E0(v60, v184);
          v75 = 1;
          return v75 & 1;
        }

        v186 = v209;
        v163(v160, v209);
        v163(v165, v186);
        v163(v161, v186);
LABEL_74:
        sub_24FF3D254();
        v183 = v60;
        goto LABEL_75;
      }

      v163(v160, v157);
      v163(v158, v157);
      v163(v156, v157);
      sub_24FF3D254();
      v183 = v63;
LABEL_75:
      sub_24FF3C6E0(v183, v182);
LABEL_76:
      v75 = 0;
      return v75 & 1;
    default:
      v64 = sub_24FF3D2A0();
      sub_24FF3C614(v64, v56);
      if (!sub_24FF3D2F0())
      {
        sub_24FF3D2E0();
        sub_24FF3D330();
        sub_24FF3D318();
        v174();
        v75 = sub_24FF61878();
        v175 = *(v54 + 1);
        v176 = sub_24FF3D324();
        v175(v176);
        (v175)(v56, v31);
LABEL_60:
        sub_24FF3D254();
        sub_24FF3C6E0(v60, v177);
        return v75 & 1;
      }

      sub_24FF3D2B8();
      v66 = v56;
LABEL_56:
      v65(v66, v209);
LABEL_57:
      sub_24FF3C678(v60);
      goto LABEL_76;
  }
}

uint64_t static JsonStreamField.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24FF62158();
  }
}

uint64_t sub_24FF3C614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JsonStreamEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24FF3C678(uint64_t a1)
{
  v2 = sub_24FF25460(&qword_27F3B4298, &unk_24FF632A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24FF3C6E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_24FF26754();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24FF3C738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JsonFieldValueEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static JsonFieldValueEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_24FF61878() & 1) != 0 && ((v4 = type metadata accessor for JsonFieldValueEvent(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_24FF62158()) && (v10 = v4[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = *(a1 + v10 + 16), v23[0] = v11, v23[1] = v12, v24 = v13, v14 = a2 + v10, v16 = *(v14 + 8), v17 = *(v14 + 16), v21[0] = *v14, v15 = v21[0], v21[1] = v16, v22 = v17, sub_24FF3B644(v11, v12, v13), sub_24FF3B644(v21[0], v16, v17), v18 = static JsonValueContainer.== infix(_:_:)(v23, v21), sub_24FF3B658(v15, v16, v17), sub_24FF3B658(v11, v12, v13), (v18)))
  {
    v19 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t JsonFieldValueEvent.objectID.getter@<X0>(uint64_t a1@<X8>)
{
  sub_24FF61898();
  sub_24FF26754();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t JsonFieldValueEvent.field.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JsonFieldValueEvent(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t JsonFieldValueEvent.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JsonFieldValueEvent(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_24FF3B644(v4, v5, v6);
}

int *JsonFieldValueEvent.init(objectID:field:value:isArrayElement:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *a3;
  v11 = a3[1];
  v12 = *(a3 + 16);
  sub_24FF61898();
  sub_24FF26754();
  (*(v13 + 32))(a5, a1);
  result = type metadata accessor for JsonFieldValueEvent(0);
  v15 = (a5 + result[5]);
  *v15 = v8;
  v15[1] = v9;
  v16 = a5 + result[6];
  *v16 = v10;
  *(v16 + 8) = v11;
  *(v16 + 16) = v12;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t JsonStreamField.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JsonStreamField.hashValue.getter()
{
  sub_24FF621F8();
  sub_24FF61D88();
  return sub_24FF62218();
}

uint64_t sub_24FF3CB3C(uint64_t a1)
{
  sub_24FF621F8();
  sub_24FF61D88();
  return sub_24FF62218();
}

unint64_t sub_24FF3CB88()
{
  result = qword_27F3B42B8;
  if (!qword_27F3B42B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JsonObjectFieldType, &type metadata for JsonObjectFieldType, v0, v1);
    atomic_store(result, &qword_27F3B42B8);
  }

  return result;
}

unint64_t sub_24FF3CBE0()
{
  result = qword_27F3B42C0;
  if (!qword_27F3B42C0)
  {
    result = swift_getWitnessTable(")m-2T0", &type metadata for JsonStreamField, v0, v1);
    atomic_store(result, &qword_27F3B42C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JsonNull(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for JsonObjectFieldType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JsonObjectFieldType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24FF3CE64(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_24FF3CE80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24FF3CE94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_24FF3CED4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24FF3CF18(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24FF3CF40(uint64_t a1)
{
  sub_24FF3CFF8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_24FF3D040(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_24FF3D0AC(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_24FF3D120(319);
      v2 = v7;
      if (v8 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_24FF3CFF8()
{
  if (!qword_280B16648)
  {
    v0 = sub_24FF61898();
    if (!v1)
    {
      atomic_store(v0, &qword_280B16648);
    }
  }
}

void sub_24FF3D040(uint64_t a1)
{
  if (!qword_280B16640)
  {
    sub_24FF61898();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B16640);
    }
  }
}

void sub_24FF3D0AC(uint64_t a1)
{
  if (!qword_280B16650)
  {
    sub_24FF61898();
    type metadata accessor for JsonFieldValueEvent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B16650);
    }
  }
}

void sub_24FF3D120(uint64_t a1)
{
  if (!qword_280B16638)
  {
    sub_24FF61898();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280B16638);
    }
  }
}

uint64_t sub_24FF3D1B8(uint64_t a1)
{
  result = sub_24FF61898();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24FF3D2C4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_24FF3D2F0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_24FF3D33C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_24FF62158();
}

uint64_t sub_24FF3D36C()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v4 = *(v1 + 16);
  v2 = v1 + 16;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *(v2 + 16 * v3);

  return v5;
}

uint64_t sub_24FF3D3D4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  v4 = *(v3 + 16);
  v5 = sub_24FF61898();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a1, v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_24FF24B98(a1, v7, 1, v6);
}

uint64_t sub_24FF3D48C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v4 - 1;
    v6 = sub_24FF61898();
    (*(*(v6 - 8) + 16))(a1, v3 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a1;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_24FF61898();
    v7 = a1;
    v8 = 1;
  }

  return sub_24FF24B98(v7, v8, 1, v9);
}

uint64_t sub_24FF3D568()
{
  *(v1 + 64) = v0;
  sub_24FF2BBD4();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_24FF3D594()
{
  sub_24FF2BC7C();
  v1 = *(v0 + 64);
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v5 = *(v1 + 64);
  v4 = *(v1 + 72);
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  v6 = *(v1 + 104);
  v7 = *(v1 + 80);
  *(v1 + 80) = v6;
  sub_24FF420E0(v2, v3, v6);
  sub_24FF42074(v5, v4, v7);
  sub_24FF427A4(v1 + 16, v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_24FF3D66C;

  return sub_24FF42DB0(v0 + 40);
}

uint64_t sub_24FF3D66C()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v3 + 80) = v0;

  if (!v0)
  {
    swift_endAccess();
  }

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24FF3D774()
{
  sub_24FF2BC70();
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  *(v1 + 88) = *(v0 + 40);
  v5 = *(v1 + 104);
  *(v1 + 104) = v2;
  sub_24FF42074(v3, v4, v5);
  sub_24FF24BC0();

  return v6();
}

uint64_t sub_24FF3D7E4()
{
  swift_endAccess();
  if (qword_280B15CC8 != -1)
  {
    sub_24FF423E0(&qword_280B15CC8);
  }

  v1 = *(v0 + 80);
  v2 = sub_24FF61BC8();
  sub_24FF278EC(v2, qword_280B16948);
  MEMORY[0x25305D050](v1);
  v3 = sub_24FF61BA8();
  v4 = sub_24FF62018();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = sub_24FF42770();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x25305D050](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_24FF22000, v3, v4, "Error while retrieving next token: %@", v6, 0xCu);
    sub_24FF422D0(v7, &qword_27F3B42E0, qword_24FF63700);
    sub_24FF42670();
    sub_24FF42634();
  }

  v9 = *(v0 + 80);
  v10 = *(v0 + 64);

  sub_24FF257B8((v10 + 24), *(v10 + 48));
  v11 = sub_24FF32440();
  v12(v11);

  sub_24FF24BC0();

  return v13();
}

uint64_t sub_24FF3D988()
{
  sub_24FF2BC70();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24FF3DA18;

  return sub_24FF3DC30(0);
}

uint64_t sub_24FF3DA18()
{
  sub_24FF2BC70();
  sub_24FF2BC88();
  sub_24FF3218C();
  *v3 = v2;
  v4 = *v1;
  sub_24FF2BACC();
  *v5 = v4;
  *(v6 + 32) = v0;

  sub_24FF2BBD4();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24FF3DB10()
{
  sub_24FF2BC7C();
  sub_24FF257B8((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  v1 = sub_24FF32440();
  v2(v1);
  sub_24FF24BC0();

  return v3();
}

uint64_t sub_24FF3DB98()
{
  sub_24FF2BC7C();
  v1 = *(v0 + 32);
  sub_24FF257B8((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  v2 = sub_24FF32440();
  v3(v2);

  sub_24FF24BC0();

  return v4();
}

uint64_t sub_24FF3DC30(char a1)
{
  *(v2 + 232) = v1;
  *(v2 + 209) = a1;
  sub_24FF25460(&qword_27F3B42C8, &qword_24FF641A0);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = type metadata accessor for JsonStreamEvent(0);
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  v3 = sub_24FF61898();
  *(v2 + 296) = v3;
  *(v2 + 304) = *(v3 - 8);
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();
  *(v2 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24FF3DDD4, 0, 0);
}

uint64_t sub_24FF3DDD4(uint64_t a1)
{
  v124 = v1;
  v3 = *(v1 + 232);
  v4 = *(v3 + 64);
  *(v1 + 368) = v4;
  v5 = *(v3 + 72);
  *(v1 + 376) = v5;
  v6 = *(v3 + 80);
  *(v1 + 210) = v6;
  if ((v6 - 5) < 2)
  {
    v123[0] = 0;
    v123[1] = 0xE000000000000000;
    v11 = sub_24FF426DC();
    sub_24FF420B4(v11, v12, v13);
    sub_24FF62098();
    *(v1 + 216) = 0;
    *(v1 + 224) = 0xE000000000000000;
    sub_24FF42734();
    MEMORY[0x25305C910](0xD000000000000021);
    *(v1 + 192) = v4;
    *(v1 + 200) = v5;
    *(v1 + 208) = v6;
    sub_24FF620E8();
    v14 = sub_24FF426DC();
    sub_24FF42074(v14, v15, v16);
    v17 = *(v1 + 216);
    v18 = *(v1 + 224);
    v19 = sub_24FF4227C();
    v120 = sub_24FF4271C(&type metadata for JsonStreamParser.ParserError, v19);
    *v20 = v17;
    v20[1] = v18;
    sub_24FF426C0(v120, v20);
    sub_24FF424C0();

    sub_24FF24BC0();
    goto LABEL_10;
  }

  if (v6 != 7)
  {
    if (v6 == 255)
    {
      if (qword_280B15CC8 != -1)
      {
        sub_24FF423E0(&qword_280B15CC8);
      }

      v7 = sub_24FF61BC8();
      sub_24FF278EC(v7, qword_280B16948);
      v8 = sub_24FF61BA8();
      v9 = sub_24FF62008();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_24FF22000, v8, v9, "Reached end of stream", v10, 2u);
        sub_24FF42670();
      }

      sub_24FF42484();
      sub_24FF42788();

      sub_24FF321B0();
LABEL_10:
      sub_24FF42618();

      __asm { BRAA            X1, X16 }
    }

    goto LABEL_22;
  }

  if (!(v4 ^ 2 | v5))
  {
    v44 = *(v1 + 256);
    swift_beginAccess();
    sub_24FF4CDBC(*(v3 + 120), v44);
    v45 = sub_24FF4281C();
    v2(v45);

    v46 = *(*(v3 + 120) + 16);
    *(v1 + 424) = v46;
    if (v46)
    {
      v47 = *(v1 + 296);
      v49 = *(v1 + 248);
      v48 = *(v1 + 256);
      sub_24FF420F4(*(v1 + 232) + 24, v1 + 16);
      v119 = *(v1 + 48);
      v121 = *(v1 + 40);
      sub_24FF257B8((v1 + 16), v121);
      sub_24FF42158(v48, v49);
      result = sub_24FF24B70(v49, 1, v47);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v50 = *(v1 + 328);
        v52 = *(v1 + 296);
        v51 = *(v1 + 304);
        v53 = *(v1 + 280);
        v54 = *(v1 + 248);
        v55 = sub_24FF25460(&qword_27F3B42A0, &unk_24FF641C0);
        v56 = *(v55 + 48);
        (*(v51 + 32))(v53, v54, v52);
        v57 = *(v51 + 16);
        v57(v53 + v56, v50, v52);
        result = sub_24FF3D36C();
        if (v58)
        {
          v59 = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v60 = *(v1 + 280);
          v61 = (v60 + *(v55 + 64));
          *v61 = result;
          v61[1] = v58;
          swift_storeEnumTagMultiPayload();
          (*(v119 + 8))(v60, v121);
          sub_24FF421C8(v60);
          sub_24FF25A6C((v1 + 16));
LABEL_44:
          *(v1 + 432) = v57;
          v108 = *(v1 + 328);
          v109 = *(v1 + 296);
          sub_24FF5BAF4();
          sub_24FF427DC();
          v110 = sub_24FF425B8();
          *(v1 + 440) = v59;
          v57(v110, v108, v109);
          *(v3 + 120) = v3 + 120;
          v111 = swift_task_alloc();
          *(v1 + 448) = v111;
          *v111 = v1;
          v111[1] = sub_24FF3ECBC;
          sub_24FF42618();

          return sub_24FF402AC();
        }
      }

      __break(1u);
      return result;
    }

    if (qword_280B15CC8 != -1)
    {
      sub_24FF423E0(&qword_280B15CC8);
    }

    v76 = *(v1 + 304);
    v77 = sub_24FF61BC8();
    sub_24FF278EC(v77, qword_280B16948);
    v79 = *(v76 + 16);
    v78 = v76 + 16;
    v57 = v79;
    v122 = v78 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v80 = sub_24FF4259C();
    (v79)(v80);
    v81 = sub_24FF61BA8();
    v82 = sub_24FF62008();
    v83 = os_log_type_enabled(v81, v82);
    v84 = *(v1 + 304);
    if (v83)
    {
      sub_24FF42770();
      v116 = sub_24FF42688();
      v123[0] = v116;
      *v82 = 136315138;
      sub_24FF42224();
      v85 = sub_24FF62148();
      v78 = v86;
      v87 = sub_24FF425F4();
      v88(v87);
      v89 = sub_24FF5BBE0(v85, v78, v123);

      *(v82 + 4) = v89;
      sub_24FF426A4(&dword_24FF22000, v90, v82, "Starting to parse all fields for array with id=%s");
      sub_24FF25A6C(v116);
      sub_24FF42670();
      sub_24FF42634();
    }

    else
    {

      v102 = sub_24FF425F4();
      v103(v102);
    }

    sub_24FF425E0();
    sub_24FF257B8((v104 + 24), v78);
    v105 = sub_24FF42604();
    (v57)(v105);
    sub_24FF427BC();
    swift_storeEnumTagMultiPayload();
    v106 = sub_24FF4251C();
    v107(v106);
    sub_24FF421C8(v84);
    v59 = v122;
    goto LABEL_44;
  }

  if (v4 | v5)
  {
LABEL_22:
    v37 = sub_24FF426DC();
    sub_24FF420B4(v37, v38, v39);
    v40 = swift_task_alloc();
    *(v1 + 464) = v40;
    *v40 = v1;
    sub_24FF42758(v40);
    sub_24FF42618();

    return sub_24FF40A68(v41);
  }

  v23 = sub_24FF4281C();
  v2(v23);

  swift_beginAccess();
  v24 = *(*(v3 + 120) + 16);
  *(v1 + 384) = v24;
  if (v24)
  {
    v25 = *(v1 + 304);
    v117 = *(v1 + 296);
    v118 = *(v1 + 360);
    v26 = *(v1 + 288);
    v27 = *(v1 + 232);
    v28 = sub_24FF3D36C();
    if (v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0x24746F6F7224;
    }

    v31 = 0xE600000000000000;
    if (v29)
    {
      v31 = v29;
    }

    v113 = v31;
    v114 = v30;
    v32 = v27[6];
    v33 = v27[7];
    sub_24FF257B8(v27 + 3, v32);
    v34 = (v26 + *(sub_24FF25460(&qword_27F3B42B0, &qword_24FF641D0) + 48));
    v35 = *(v25 + 16);
    v36 = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v26, v118, v117);
    *v34 = v114;
    v34[1] = v113;
    swift_storeEnumTagMultiPayload();
    (*(v33 + 8))(v26, v32, v33);
  }

  else
  {
    if (qword_280B15CC8 != -1)
    {
      sub_24FF423E0(&qword_280B15CC8);
    }

    v62 = *(v1 + 304);
    v63 = sub_24FF61BC8();
    sub_24FF278EC(v63, qword_280B16948);
    v65 = *(v62 + 16);
    v64 = v62 + 16;
    v35 = v65;
    v66 = v64 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v67 = sub_24FF4259C();
    (v65)(v67);
    v68 = sub_24FF61BA8();
    v69 = sub_24FF62008();
    if (os_log_type_enabled(v68, v69))
    {
      sub_24FF42770();
      v115 = sub_24FF42688();
      v123[0] = v115;
      *v69 = 136315138;
      sub_24FF42224();
      v70 = sub_24FF62148();
      v66 = v71;
      v72 = sub_24FF425F4();
      v73(v72);
      v74 = sub_24FF5BBE0(v70, v66, v123);

      *(v69 + 4) = v74;
      sub_24FF426A4(&dword_24FF22000, v75, v69, "Starting to parse all fields for object with id=%s");
      sub_24FF25A6C(v115);
      sub_24FF42670();
      sub_24FF42634();
    }

    else
    {

      v91 = sub_24FF425F4();
      v92(v91);
    }

    sub_24FF425E0();
    sub_24FF257B8((v93 + 24), v66);
    v94 = sub_24FF42604();
    (v35)(v94);
    sub_24FF427BC();
    swift_storeEnumTagMultiPayload();
    v95 = sub_24FF4251C();
    v96(v95);
    v36 = v64 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  *(v1 + 392) = v35;
  v97 = *(v1 + 360);
  v98 = *(v1 + 296);
  sub_24FF421C8(*(v1 + 288));
  sub_24FF5BAF4();
  sub_24FF427DC();
  v99 = sub_24FF425B8();
  *(v1 + 400) = v36;
  v35(v99, v97, v98);
  *(v3 + 120) = v3 + 120;
  v100 = swift_task_alloc();
  *(v1 + 408) = v100;
  *v100 = v1;
  sub_24FF42758(v100);
  sub_24FF42618();

  return sub_24FF3F6DC();
}