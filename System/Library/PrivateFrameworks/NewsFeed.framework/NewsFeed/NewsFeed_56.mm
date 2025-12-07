void sub_1D6047B58(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF2C470)
  {
    type metadata accessor for FormatNodeStateData.Data(255);
    v2 = sub_1D726393C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF2C470);
    }
  }
}

uint64_t sub_1D6047BB0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6047BF8(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF3BFD8)
  {
    type metadata accessor for FormatAccessibilityLayoutValue();
    sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
    v2 = sub_1D7259FAC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF3BFD8);
    }
  }
}

double sub_1D6047C90(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D6047CA8(result, a2 & 1);
  }

  return v2;
}

double sub_1D6047CA8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D6047CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6047D1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatAnimationNodeGroupAnimation.mediaTiming.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 136);
  v12[6] = *(v1 + 120);
  v13[0] = v3;
  *(v13 + 9) = *(v1 + 145);
  v4 = *(v1 + 40);
  v5 = *(v1 + 72);
  v12[2] = *(v1 + 56);
  v12[3] = v5;
  v12[4] = *(v1 + 88);
  v12[5] = v2;
  v12[0] = *(v1 + 24);
  v12[1] = v4;
  v6 = *(v1 + 104);
  v7 = *(v1 + 136);
  a1[6] = *(v1 + 120);
  a1[7] = v7;
  *(a1 + 121) = *(v1 + 145);
  v8 = *(v1 + 40);
  v9 = *(v1 + 72);
  a1[2] = *(v1 + 56);
  a1[3] = v9;
  a1[4] = *(v1 + 88);
  a1[5] = v6;
  *a1 = *(v1 + 24);
  a1[1] = v8;
  return sub_1D6047E28(v12, &v11);
}

uint64_t sub_1D6047E28(uint64_t a1, uint64_t a2)
{
  sub_1D6047E8C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6047E8C()
{
  if (!qword_1EDF10BF0)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF10BF0);
    }
  }
}

__n128 FormatAnimationNodeGroupAnimation.__allocating_init(animations:mediaTiming:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = a2[4];
  *(v4 + 104) = a2[5];
  v6 = a2[7];
  *(v4 + 120) = a2[6];
  *(v4 + 136) = v6;
  *(v4 + 145) = *(a2 + 121);
  v7 = *a2;
  *(v4 + 40) = a2[1];
  result = a2[2];
  v9 = a2[3];
  *(v4 + 56) = result;
  *(v4 + 72) = v9;
  *(v4 + 88) = v5;
  *(v4 + 16) = a1;
  *(v4 + 24) = v7;
  return result;
}

uint64_t FormatAnimationNodeGroupAnimation.init(animations:mediaTiming:)(uint64_t a1, __int128 *a2)
{
  v3 = a2[4];
  *(v2 + 104) = a2[5];
  v4 = a2[7];
  *(v2 + 120) = a2[6];
  *(v2 + 136) = v4;
  *(v2 + 145) = *(a2 + 121);
  v5 = *a2;
  *(v2 + 40) = a2[1];
  v6 = a2[3];
  *(v2 + 56) = a2[2];
  *(v2 + 72) = v6;
  *(v2 + 88) = v3;
  *(v2 + 16) = a1;
  *(v2 + 24) = v5;
  return v2;
}

uint64_t sub_1D6047F98(uint64_t a1)
{
  v3 = v2;
  v24 = [objc_allocWithZone(MEMORY[0x1E6979308]) init];
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    *&v37 = MEMORY[0x1E69E7CC0];
    result = sub_1D7263ECC();
    v7 = 0;
    while (v7 < *(v4 + 16))
    {
      v8 = *(v4 + 32 + 8 * v7) >> 62;
      if (v8)
      {
        if (v8 == 1)
        {

          v9 = v3;
          v10 = sub_1D694B308(a1);
        }

        else
        {

          v9 = v3;
          v10 = sub_1D6047F98(a1);
        }

        v11 = v10;
        v3 = v9;

        if (v9)
        {
LABEL_14:

          return v5;
        }
      }

      else
      {

        v11 = sub_1D6AACBAC(a1);

        if (v3)
        {
          goto LABEL_14;
        }
      }

      ++v7;

      v12 = *(v11 + 16);

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      result = sub_1D7263EAC();
      if (v5 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_1D6048660();
    v13 = sub_1D726265C();

    [v24 setAnimations_];

    v14 = *(v1 + 120);
    v42 = *(v1 + 104);
    v43 = v14;
    v44[0] = *(v1 + 136);
    *(v44 + 9) = *(v1 + 145);
    v15 = *(v1 + 40);
    v16 = *(v1 + 72);
    v39 = *(v1 + 56);
    v40 = v16;
    v41 = *(v1 + 88);
    v37 = *(v1 + 24);
    v38 = v15;
    type metadata accessor for FormatAnimation();
    v5 = swift_allocObject();
    v17 = *(v1 + 120);
    v35[5] = *(v1 + 104);
    v35[6] = v17;
    v36[0] = *(v1 + 136);
    *(v36 + 9) = *(v1 + 145);
    v18 = *(v1 + 40);
    v19 = *(v1 + 72);
    v35[2] = *(v1 + 56);
    v35[3] = v19;
    v35[4] = *(v1 + 88);
    v35[0] = *(v1 + 24);
    v35[1] = v18;
    sub_1D68137D4(a1, v35);
    if (v3)
    {

      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v5 + 16) = v24;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0xE000000000000000;
      *(v5 + 56) = 0u;
      *(v5 + 72) = 0u;
      v33 = v43;
      v34[0] = v44[0];
      *(v34 + 9) = *(v44 + 9);
      v29 = v39;
      v30 = v40;
      v31 = v41;
      v32 = v42;
      v27 = v37;
      v28 = v38;
      if (sub_1D60486AC(&v27) == 1 || (v20 = v28) == 0)
      {
        *(v5 + 40) = 0;
        *(v5 + 48) = 1;
      }

      else
      {
        v21 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext(0);
        v26 = v24;

        v22 = v21();
        v23 = sub_1D5E02AFC(v22, v20);

        *(v5 + 40) = v23;
        *(v5 + 48) = 0;
      }
    }

    return v5;
  }

  return result;
}

uint64_t FormatAnimationNodeGroupAnimation.deinit()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 136);
  v6[6] = *(v0 + 120);
  v7[0] = v2;
  *(v7 + 9) = *(v0 + 145);
  v3 = *(v0 + 40);
  v4 = *(v0 + 72);
  v6[2] = *(v0 + 56);
  v6[3] = v4;
  v6[4] = *(v0 + 88);
  v6[5] = v1;
  v6[0] = *(v0 + 24);
  v6[1] = v3;
  sub_1D6048FE4(v6, sub_1D6047E8C);
  return v0;
}

uint64_t FormatAnimationNodeGroupAnimation.__deallocating_deinit()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 136);
  v6[6] = *(v0 + 120);
  v7[0] = v2;
  *(v7 + 9) = *(v0 + 145);
  v3 = *(v0 + 40);
  v4 = *(v0 + 72);
  v6[2] = *(v0 + 56);
  v6[3] = v4;
  v6[4] = *(v0 + 88);
  v6[5] = v1;
  v6[0] = *(v0 + 24);
  v6[1] = v3;
  sub_1D6048FE4(v6, sub_1D6047E8C);
  return swift_deallocClassInstance();
}

uint64_t sub_1D60484A4(uint64_t a1)
{
  result = sub_1D6048598(&qword_1EC882BC0, &protocol conformance descriptor for FormatAnimationNodeGroupAnimation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D604850C(void *a1)
{
  a1[1] = sub_1D6048598(&qword_1EC882BC8, &protocol conformance descriptor for FormatAnimationNodeGroupAnimation);
  a1[2] = sub_1D6048598(&qword_1EC882BD0, &protocol conformance descriptor for FormatAnimationNodeGroupAnimation);
  result = sub_1D6048598(&qword_1EC882BD8, &protocol conformance descriptor for FormatAnimationNodeGroupAnimation);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6048598(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatAnimationNodeGroupAnimation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D60485D8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D666223C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D6048660()
{
  result = qword_1EC882BE0;
  if (!qword_1EC882BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC882BE0);
  }

  return result;
}

uint64_t sub_1D60486AC(unint64_t *a1)
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

void *sub_1D60486D0(__int128 *a1, uint64_t a2)
{
  sub_1D5EA74B8(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[7];
  v104 = a1[6];
  v105 = v9;
  v106 = a1[8];
  v107 = *(a1 + 18);
  v10 = a1[3];
  v100 = a1[2];
  v101 = v10;
  v11 = a1[5];
  v102 = a1[4];
  v103 = v11;
  v12 = a1[1];
  v98 = *a1;
  v99 = v12;
  v13 = MEMORY[0x1E69E6F90];
  sub_1D6048F4C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  v70 = xmmword_1D7273AE0;
  v62 = v14;
  *(v14 + 16) = xmmword_1D7273AE0;
  sub_1D6048F4C(0, &qword_1EC880490, sub_1D5EA74B8, v13);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v72 = *(v5 + 72);
  v73 = v15;
  v63 = swift_allocObject();
  *(v63 + 16) = v70;
  sub_1D6048F4C(0, &qword_1EC8803C0, sub_1D5E4F38C, v13);
  v71 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v70;
  v18 = a1[7];
  v88[6] = a1[6];
  v88[7] = v18;
  v88[8] = a1[8];
  v89 = *(a1 + 18);
  v19 = a1[3];
  v88[2] = a1[2];
  v88[3] = v19;
  v20 = a1[5];
  v88[4] = a1[4];
  v88[5] = v20;
  v21 = a1[1];
  v88[0] = *a1;
  v88[1] = v21;
  if (a2)
  {
    v22 = *(a2 + 120);
    v81 = *(a2 + 104);
    v82 = v22;
    v83[0] = *(a2 + 136);
    *(v83 + 9) = *(a2 + 145);
    v23 = *(a2 + 56);
    v77 = *(a2 + 40);
    v78 = v23;
    v24 = *(a2 + 88);
    v79 = *(a2 + 72);
    v80 = v24;
    v76 = *(a2 + 24);
    sub_1D6047E28(&v76, v86);
    v96 = v82;
    v97[0] = v83[0];
    *(v97 + 9) = *(v83 + 9);
    v92 = v78;
    v93 = v79;
    v94 = v80;
    v95 = v81;
    v90 = v76;
    v91 = v77;
  }

  else
  {
    sub_1D6048FB0(&v90);
  }

  v25 = sub_1D6814648(v88, &v90);
  v86[6] = v96;
  v87[0] = v97[0];
  *(v87 + 9) = *(v97 + 9);
  v86[2] = v92;
  v86[3] = v93;
  v86[4] = v94;
  v86[5] = v95;
  v86[0] = v90;
  v86[1] = v91;
  sub_1D6048FE4(v86, sub_1D6047E8C);
  *(v17 + 56) = &type metadata for FormatInspection;
  *(v17 + 64) = &off_1F51E3FD0;
  *(v17 + 32) = v25;
  v26 = sub_1D5F62BFC(v17);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v17 + 32));
  swift_deallocClassInstance();
  v27 = sub_1D7073500(v26);

  v28 = v63;
  v29 = v73;
  sub_1D711AD20(1701869908, 0xE400000000000000, v27, 0x70756F7247, 0xE500000000000000, (v63 + v73));
  v30 = type metadata accessor for FormatInspectionItem(0);
  v31 = *(v30 - 8);
  v69 = *(v31 + 56);
  *&v70 = v30;
  v68 = v31 + 56;
  v69(v28 + v29, 0, 1);
  v32 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v33 = *(a2 + 16);

    v34 = *(v33 + 16);
    if (v34)
    {
      goto LABEL_6;
    }

LABEL_21:

    v38 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *&v76 = v63;
    sub_1D6986D54(v38);
    sub_1D6795150(0x6F6974616D696E41, 0xE90000000000006ELL, 0, 0, v76, &v76);

    v58 = v62;
    *(v62 + 56) = &type metadata for FormatInspectionGroup;
    *(v58 + 64) = &off_1F518B2C0;
    v59 = swift_allocObject();
    *(v58 + 32) = v59;
    v60 = v77;
    *(v59 + 16) = v76;
    *(v59 + 32) = v60;
    *(v59 + 48) = v78;
    v61 = sub_1D7073500(v58);
    swift_setDeallocating();
    sub_1D6048FE4(v58 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    return v61;
  }

  v33 = MEMORY[0x1E69E7CC0];
  v34 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v34)
  {
    goto LABEL_21;
  }

LABEL_6:
  v85 = v32;
  result = sub_1D69972A4(0, v34, 0);
  v36 = 0;
  v37 = *(v33 + 16);
  v66 = v8;
  v67 = v37;
  v38 = v85;
  v64 = v34;
  v65 = v33;
  while (v67 != v36)
  {
    if (v36 >= *(v33 + 16))
    {
      goto LABEL_24;
    }

    v39 = *(v33 + 8 * v36 + 32);

    *&v76 = 0x6F6974616D696E41;
    *(&v76 + 1) = 0xEA0000000000206ELL;
    v74[0] = ++v36;
    v40 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v40);

    v41 = v76;
    v42 = swift_allocObject();
    v43 = v39 >> 62;
    if (v39 >> 62)
    {
      v44 = *((v39 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v82 = v104;
      v83[0] = v105;
      v83[1] = v106;
      v84 = v107;
      v78 = v100;
      v79 = v101;
      v80 = v102;
      v81 = v103;
      v76 = v98;
      v77 = v99;
      if (v43 == 1)
      {

        v45 = sub_1D694C4CC(&v76, v44);
      }

      else
      {

        v45 = sub_1D60486D0(&v76, v44);
      }
    }

    else
    {
      v46 = *(v39 + 16);
      v82 = v104;
      v83[0] = v105;
      v83[1] = v106;
      v84 = v107;
      v78 = v100;
      v79 = v101;
      v80 = v102;
      v81 = v103;
      v76 = v98;
      v77 = v99;

      v45 = sub_1D6AAD820(&v76, v46);
    }

    v47 = v45;

    v42[7] = &type metadata for FormatInspection;
    v42[8] = &off_1F51E3FD0;
    v42[4] = v47;
    v75 = MEMORY[0x1E69E7CC0];
    sub_1D6997338(0, 1, 0);
    v48 = v75;
    sub_1D5B68374((v42 + 4), v74);
    sub_1D5E4F38C();
    sub_1D5E4F358(0);
    swift_dynamicCast();
    v75 = v48;
    v50 = *(v48 + 16);
    v49 = *(v48 + 24);
    if (v50 >= v49 >> 1)
    {
      sub_1D6997338((v49 > 1), v50 + 1, 1);
      v48 = v75;
    }

    *(v48 + 16) = v50 + 1;
    v51 = v48 + 40 * v50;
    v52 = v76;
    v53 = v77;
    *(v51 + 64) = v78;
    *(v51 + 32) = v52;
    *(v51 + 48) = v53;
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(v42 + 4);
    swift_deallocClassInstance();
    v54 = sub_1D7073500(v48);

    v55 = v66;
    sub_1D711AD20(v41, *(&v41 + 1), v54, 0, 0, v66);
    (v69)(v55, 0, 1, v70);

    v85 = v38;
    v57 = *(v38 + 16);
    v56 = *(v38 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_1D69972A4((v56 > 1), v57 + 1, 1);
      v38 = v85;
    }

    *(v38 + 16) = v57 + 1;
    result = sub_1D5E4F52C(v55, v38 + v73 + v57 * v72);
    v33 = v65;
    if (v64 == v36)
    {

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1D6048F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1D6048FB0(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_1D6048FE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D6049044()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_opt_self() defaultSessionConfiguration];
    v4 = [objc_opt_self() sessionWithConfiguration_];

    v5 = *(v0 + 16);
    *(v0 + 16) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1D60490E8()
{
  v1 = *v0;
  v2 = sub_1D725891C();
  v86 = *(v2 - 8);
  v87 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v85 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7257C7C();
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v90 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D604FF7C(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v89 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v73 - v17;
  v19 = sub_1D72585BC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v94 = &v73 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v73 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v95 = &v73 - v34;
  if (qword_1EC87D698 != -1)
  {
    swift_once();
  }

  v35 = qword_1EC885608;
  sub_1D604F8FC(&qword_1EC882C38, v33, type metadata accessor for DebugNewsroomService, &unk_1D72924E8);
  v88 = v35;
  v96 = v1;
  sub_1D725964C();
  v36 = v99;
  v37 = v100;

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
    goto LABEL_16;
  }

  if (qword_1EC87D6A0 != -1)
  {
    swift_once();
  }

  v84 = qword_1EC885610;
  sub_1D725964C();
  v39 = v99;
  v40 = v100;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v80 = v23;
    if (qword_1EC87D690 != -1)
    {
      swift_once();
    }

    v83 = v0;
    sub_1D725964C();
    v97 = v98;
    v42 = v94;
    sub_1D5E4ADC8(v94);
    sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v99 = sub_1D72644BC();
    v100 = v43;
    v44 = v20;
    v45 = v20 + 8;
    v46 = *(v20 + 8);
    v46(v42, v19);
    MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
    sub_1D725855C();

    v81 = *(v44 + 48);
    v82 = v44 + 48;
    result = v81(v18, 1, v19);
    v91 = v19;
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v48 = *(v44 + 32);
      v49 = v91;
      v79 = v44 + 32;
      v78 = v48;
      v48(v30, v18, v91);
      v50 = v95;
      sub_1D725849C();
      v46(v30, v49);
      v51 = v93;
      v52 = swift_allocBox();
      v54 = v53;
      sub_1D7257BCC();
      v55 = v92;
      if ((*(v92 + 48))(v11, 1, v51) == 1)
      {
        sub_1D5BFC5B8(v11, sub_1D604FF7C);
        swift_deallocBox();
        type metadata accessor for DebugNewsroomServiceError(0);
        sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
        swift_allocError();
        v56 = v91;
        (*(v44 + 16))(v57, v50, v91);
        swift_storeEnumTagMultiPayload();
        sub_1D60502C0(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
        swift_allocObject();
        v58 = sub_1D725BAFC();
        v46(v50, v56);
      }

      else
      {
        v75 = v46;
        v76 = v52;
        v74 = v44;
        v77 = v45;
        (*(v55 + 32))(v54, v11, v51);
        sub_1D5B5BEC0(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
        sub_1D7257B5C();
        *(swift_allocObject() + 16) = xmmword_1D7270C10;
        v59 = v83;
        sub_1D725964C();
        sub_1D7257B2C();

        sub_1D725964C();
        sub_1D7257B2C();

        sub_1D7257B7C();
        v60 = *(v55 + 16);
        v61 = v90;
        v60(v90, v54, v51);
        v62 = v89;
        sub_1D7257BDC();
        (*(v55 + 8))(v61, v51);
        if (v81(v62, 1, v91) == 1)
        {
          sub_1D5BFC5B8(v62, sub_1D5B4D3E0);
          type metadata accessor for DebugNewsroomServiceError(0);
          sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
          swift_allocError();
          v60(v63, v54, v51);
          swift_storeEnumTagMultiPayload();
          sub_1D60502C0(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          v58 = sub_1D725BAFC();
          v75(v95, v91);
        }

        else
        {
          v64 = v80;
          v65 = v91;
          v78(v80, v62, v91);
          sub_1D72577EC();
          v66 = swift_allocBox();
          (*(v74 + 16))(v94, v64, v65);
          sub_1D72577AC();
          sub_1D725774C();
          v67 = [objc_opt_self() sharedHTTPCookieStorage];
          v68 = v85;
          sub_1D72587BC();
          v69 = sub_1D725881C();
          (*(v86 + 8))(v68, v87);
          [v67 removeCookiesSinceDate_];

          MEMORY[0x1EEE9AC00](v70, v71);
          *(&v73 - 4) = v59;
          *(&v73 - 3) = v66;
          *(&v73 - 2) = v76;
          sub_1D60502C0(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          v58 = sub_1D725BBAC();
          v72 = v75;
          v75(v64, v65);
          v72(v95, v65);
        }
      }

      return v58;
    }
  }

  else
  {
LABEL_16:
    type metadata accessor for DebugNewsroomServiceError(0);
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    sub_1D60502C0(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BAFC();
  }

  return result;
}

void sub_1D6049E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a3;
  v12 = sub_1D72577EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &aBlock[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_projectBox();

  v19 = sub_1D6049044();
  swift_beginAccess();
  (*(v13 + 16))(v16, v18, v12);
  v20 = sub_1D725776C();
  (*(v13 + 8))(v16, v12);
  v21 = swift_allocObject();
  v21[2] = v24;
  v21[3] = a4;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = sub_1D5DF743C;
  v21[7] = v17;
  aBlock[4] = sub_1D604FFBC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D60B572C;
  aBlock[3] = &block_descriptor_23;
  v22 = _Block_copy(aBlock);

  v23 = [v19 dataTaskWithRequest:v20 completionHandler:v22];
  _Block_release(v22);

  [v23 resume];
}

void sub_1D604A080(uint64_t a1, unint64_t a2, void *a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(__n128), uint64_t a10)
{
  v80 = a2;
  v81 = a3;
  v78 = a10;
  v79 = a1;
  v82 = a9;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7257C7C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D72577EC();
  v23 = swift_projectBox();
  v24 = swift_projectBox();
  if (a4)
  {
    v25 = a4;
    a5(a4);
    v26 = a4;

LABEL_4:

    return;
  }

  v75 = v22;
  v76 = a6;
  v70 = v21;
  v71 = v18;
  v72 = v17;
  v73 = v16;
  v28 = v79;
  v27 = v80;
  v77 = a5;
  v74 = v24;
  v29 = v81;
  if (!v81 || (objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) == 0))
  {
    type metadata accessor for DebugNewsroomServiceError(0);
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
    v57 = swift_allocError();
    v59 = v58;
    sub_1D604F9B8(0);
    v61 = *(v60 + 64);
    *v59 = v29;
    *(v59 + 1) = v28;
    *(v59 + 2) = v27;
    swift_beginAccess();
    (*(*(v75 - 8) + 16))(&v59[v61], v23);
    swift_storeEnumTagMultiPayload();
    v62 = v29;
    v63 = sub_1D5F13DE4(v28, v27);
    (v77)(v57, v63);

    return;
  }

  v31 = v30;
  v81 = v29;
  v32 = [v31 allHeaderFields];
  v33 = sub_1D7261D3C();

  sub_1D71BCCC4(v33);
  v35 = v34;

  if (!v35)
  {
    type metadata accessor for DebugNewsroomServiceError(0);
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
    v64 = swift_allocError();
    v66 = v65;
    v67 = [v31 allHeaderFields];
    v68 = sub_1D7261D3C();

    *v66 = v68;
    swift_storeEnumTagMultiPayload();
    v77(v64);

    v26 = v81;

    goto LABEL_4;
  }

  v36 = sub_1D7261D2C();
  v37 = v74;
  swift_beginAccess();
  v38 = v70;
  v39 = v71;
  v40 = v37;
  v41 = v72;
  (*(v71 + 16))(v70, v40, v72);
  v42 = v73;
  sub_1D7257BDC();
  (*(v39 + 8))(v38, v41);
  v43 = sub_1D72585BC();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    goto LABEL_25;
  }

  v45 = objc_opt_self();
  v46 = sub_1D725844C();
  (*(v44 + 8))(v42, v43);
  v47 = [v45 cookiesWithResponseHeaderFields:v36 forURL:v46];

  sub_1D5B5A498(0, &qword_1EC882C00, 0x1E696AC58);
  v48 = sub_1D726267C();

  if (v48 >> 62)
  {
    v49 = sub_1D7263BFC();
    v50 = v82;
    if (v49)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = v82;
    if (v49)
    {
LABEL_11:
      v51 = objc_opt_self();
      if (v49 >= 1)
      {
        v52 = v51;
        v53 = 0;
        do
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x1DA6FB460](v53, v48);
          }

          else
          {
            v54 = *(v48 + 8 * v53 + 32);
          }

          v55 = v54;
          ++v53;
          v56 = [v52 sharedHTTPCookieStorage];
          [v56 setCookie_];

          v50 = v82;
        }

        while (v49 != v53);
        goto LABEL_22;
      }

      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }
  }

LABEL_22:

  (v50)(v69);
}

uint64_t sub_1D604A700(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v73 = *v3;
  v7 = sub_1D72577EC();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v68 = v9;
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v70 = &v63 - v12;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v74 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v66 = &v63 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v67 = &v63 - v26;
  v27 = sub_1D725895C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60502C0(0, &qword_1EC882C70, &type metadata for MIMEPart, MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D7270C10;

  v33 = sub_1D6011D6C(a1, a2);
  *(v32 + 32) = 0x7461642D6D726F66;
  *(v32 + 40) = 0xE900000000000061;
  *(v32 + 48) = xmmword_1D72924A0;
  *(v32 + 64) = 0u;
  *(v32 + 80) = 0u;
  *(v32 + 96) = v33;
  *(v32 + 104) = v34;
  v36 = *a3;
  v35 = a3[1];
  v37 = a3[4];
  v38 = a3[5];
  v39 = a3[2];
  v40 = a3[3];
  *(v32 + 112) = 0x7461642D6D726F66;
  *(v32 + 120) = 0xE900000000000061;
  *(v32 + 128) = xmmword_1D72924B0;
  *(v32 + 144) = v36;
  *(v32 + 152) = v35;
  *(v32 + 160) = v37;
  *(v32 + 168) = v38;
  *(v32 + 176) = v39;
  *(v32 + 184) = v40;
  v77 = 0x646565467377654ELL;
  v78 = 0xE90000000000002DLL;

  sub_1D5E3E824(v39, v40);
  sub_1D725894C();
  v41 = sub_1D725893C();
  v43 = v42;
  (*(v28 + 8))(v31, v27);
  MEMORY[0x1DA6F9910](v41, v43);

  v44 = v78;
  v65 = v77;
  v45 = qword_1EC87D690;

  if (v45 != -1)
  {
    swift_once();
  }

  sub_1D604F8FC(&qword_1EC882C38, v46, type metadata accessor for DebugNewsroomService, &unk_1D72924E8);
  sub_1D725964C();
  v75 = v76;
  sub_1D5E4ADC8(v20);
  sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v77 = sub_1D72644BC();
  v78 = v47;
  v48 = *(v17 + 8);
  v48(v20, v16);
  MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
  v49 = v74;
  sub_1D725855C();

  result = (*(v17 + 48))(v49, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v51 = v66;
    (*(v17 + 32))(v66, v49, v16);
    v52 = v16;
    v53 = v67;
    sub_1D725849C();
    v64 = v52;
    v73 = v48;
    v48(v51, v52);
    (*(v17 + 16))(v20, v53, v52);
    v54 = v70;
    sub_1D72577AC();
    sub_1D725774C();
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_1D7263D4C();

    v77 = 0xD00000000000001ELL;
    v78 = 0x80000001D73C6940;
    v55 = v65;
    MEMORY[0x1DA6F9910](v65, v44);

    sub_1D72577DC();

    sub_1D604AEA0(v55, v44, v32);

    sub_1D72577CC();
    sub_1D604E2FC(v54);
    v57 = v71;
    v56 = v72;
    v58 = v69;
    (*(v71 + 16))(v69, v54, v72);
    v59 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v60 = swift_allocObject();
    (*(v57 + 32))(v60 + v59, v58, v56);
    v61 = sub_1D725B92C();
    v62 = sub_1D725BA8C();

    (*(v57 + 8))(v54, v56);
    v73(v53, v64);
    return v62;
  }

  return result;
}

uint64_t sub_1D604AEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1DA6F9910]();
  MEMORY[0x1DA6F9910](2573, 0xE200000000000000);
  v4 = sub_1D6011D6C(11565, 0xE200000000000000);
  v34 = v5;
  v35 = v4;
  v40 = xmmword_1D728EF50;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v12 = v7[2];
      v13 = v7[4];
      v36 = v7[1];
      v37 = v7[3];
      v14 = v7[5];
      v15 = v7[6];

      v38 = v15;
      sub_1D5E3E824(v14, v15);
      sub_1D72586AC();
      sub_1D7263D4C();

      v39[0] = 0xD000000000000015;
      v39[1] = 0x80000001D73C6960;

      MEMORY[0x1DA6F9910](v8, v9);

      v16 = sub_1D6011D6C(0xD000000000000015, 0x80000001D73C6960);
      v18 = v17;
      sub_1D72586AC();
      sub_1D5B952F8(v16, v18);
      if (v11)
      {
        strcpy(v39, "; name=");
        BYTE1(v39[1]) = 0;
        WORD1(v39[1]) = 0;
        HIDWORD(v39[1]) = -402653184;

        MEMORY[0x1DA6F9910](v10, v11);

        MEMORY[0x1DA6F9910](34, 0xE100000000000000);
        v19 = sub_1D6011D6C(v39[0], v39[1]);
        v21 = v20;
        sub_1D72586AC();
        sub_1D5B952F8(v19, v21);
      }

      if (v12)
      {
        strcpy(v39, "; filename=");
        BYTE5(v39[1]) = 0;
        HIWORD(v39[1]) = -5120;

        MEMORY[0x1DA6F9910](v36, v12);

        MEMORY[0x1DA6F9910](34, 0xE100000000000000);
        v22 = sub_1D6011D6C(v39[0], v39[1]);
        v24 = v23;
        sub_1D72586AC();
        sub_1D5B952F8(v22, v24);
      }

      if (qword_1EC87DBE0 != -1)
      {
        swift_once();
      }

      sub_1D72586AC();
      if (v13)
      {

        sub_1D7263D4C();

        strcpy(v39, "Content-Type: ");
        HIBYTE(v39[1]) = -18;
        MEMORY[0x1DA6F9910](v37, v13);

        v25 = sub_1D6011D6C(v39[0], v39[1]);
        v27 = v26;
        sub_1D72586AC();
        sub_1D5B952F8(v25, v27);
        sub_1D72586AC();
      }

      sub_1D72586AC();
      sub_1D72586AC();
      sub_1D72586AC();

      sub_1D5B952F8(v14, v38);
      v7 += 10;
      --v6;
    }

    while (v6);
  }

  MEMORY[0x1DA6F9910](a1, a2);
  MEMORY[0x1DA6F9910](11565, 0xE200000000000000);
  v28 = sub_1D6011D6C(11565, 0xE200000000000000);
  v30 = v29;
  sub_1D72586AC();
  sub_1D5B952F8(v35, v34);
  sub_1D5B952F8(v28, v30);
  return v40;
}

uint64_t sub_1D604B2A4(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v35 = &v33 - v19;
  v20 = sub_1D72577EC();
  v36 = *(v20 - 8);
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  sub_1D604F8FC(&qword_1EC882C38, v22, type metadata accessor for DebugNewsroomService, &unk_1D72924E8);
  sub_1D725964C();
  v34 = v2;
  v25 = v42;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_1D7263D4C();

  v40 = 0xD00000000000001ALL;
  v41 = 0x80000001D73C68C0;
  MEMORY[0x1DA6F9910](a1, v38);
  v38 = v40;
  v39 = v25;
  sub_1D5E4ADC8(v12);
  sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v40 = sub_1D72644BC();
  v41 = v26;
  v27 = *(v9 + 8);
  v27(v12, v8);
  MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
  sub_1D725855C();

  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    sub_1D725849C();

    v27(v16, v8);
    sub_1D72577AC();
    v29 = sub_1D725774C();
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v33 - 2) = v34;
    *(&v33 - 1) = v24;
    sub_1D725BDCC();
    v31 = sub_1D725B92C();
    sub_1D604FC94(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomContainer);
    v32 = sub_1D725BA8C();

    (*(v36 + 8))(v24, v37);
    return v32;
  }

  return result;
}

uint64_t sub_1D604B77C(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v35 = &v33 - v19;
  v20 = sub_1D72577EC();
  v36 = *(v20 - 8);
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  sub_1D604F8FC(&qword_1EC882C38, v22, type metadata accessor for DebugNewsroomService, &unk_1D72924E8);
  sub_1D725964C();
  v34 = v2;
  v25 = v42;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_1D7263D4C();

  v40 = 0xD000000000000019;
  v41 = 0x80000001D73C68E0;
  MEMORY[0x1DA6F9910](a1, v38);
  v38 = v40;
  v39 = v25;
  sub_1D5E4ADC8(v12);
  sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v40 = sub_1D72644BC();
  v41 = v26;
  v27 = *(v9 + 8);
  v27(v12, v8);
  MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
  sub_1D725855C();

  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    sub_1D725849C();

    v27(v16, v8);
    sub_1D72577AC();
    v29 = sub_1D725774C();
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v33 - 2) = v34;
    *(&v33 - 1) = v24;
    sub_1D725BDCC();
    v31 = sub_1D725B92C();
    sub_1D604FE18(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomContainer);
    v32 = sub_1D725BA8C();

    (*(v36 + 8))(v24, v37);
    return v32;
  }

  return result;
}

void *sub_1D604BC54(void *a1, char *a2)
{
  v56 = a2;
  v3 = v2;
  v55 = *v3;
  v5 = sub_1D72577EC();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v44 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v44 - v24;
  v26 = v57;
  sub_1D604C220(v56);
  if (v26)
  {
    return a1;
  }

  v56 = v8;
  v57 = a1;
  v45 = v21;
  v46 = v25;
  v50 = v17;
  v51 = v12;
  v52 = v14;
  v47 = v27;
  v48 = v28;
  v49 = 0;
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  sub_1D604F8FC(&qword_1EC882C38, v28, type metadata accessor for DebugNewsroomService, &unk_1D72924E8);
  v55 = v3;
  sub_1D725964C();
  v29 = v61;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1D7263D4C();

  v58 = 0xD00000000000001ALL;
  v59 = 0x80000001D73C68C0;
  MEMORY[0x1DA6F9910](*v57, v57[1]);
  v44 = v58;
  v60 = v29;
  v30 = v50;
  sub_1D5E4ADC8(v50);
  sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v31 = v13;
  v58 = sub_1D72644BC();
  v59 = v32;
  v33 = v52;
  v57 = *(v52 + 8);
  (v57)(v30, v13);
  MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
  v34 = v51;
  sub_1D725855C();

  result = (*(v33 + 48))(v34, 1, v31);
  v36 = v56;
  if (result != 1)
  {
    v37 = v45;
    (*(v33 + 32))(v45, v34, v31);
    v38 = v46;
    sub_1D725849C();

    (v57)(v37, v31);
    (*(v33 + 16))(v30, v38, v31);
    sub_1D72577AC();
    sub_1D725774C();
    sub_1D72577DC();
    v39 = v47;
    v40 = v48;
    sub_1D5E3E824(v47, v48);
    v41 = sub_1D72577CC();
    MEMORY[0x1EEE9AC00](v41, v42);
    *(&v44 - 2) = v55;
    *(&v44 - 1) = v36;
    sub_1D725BDCC();
    v43 = sub_1D725B92C();
    sub_1D604FC94(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomContainer);
    a1 = sub_1D725BA8C();

    sub_1D5B952F8(v39, v40);
    (v57)(v38, v31);
    (*(v53 + 8))(v36, v54);
    return a1;
  }

  __break(1u);
  return result;
}

void sub_1D604C220(uint64_t a1)
{
  v3 = v1;
  v23[4] = *MEMORY[0x1E69E9840];
  sub_1D72578EC();
  swift_allocObject();
  sub_1D72578DC();
  type metadata accessor for DebugNewsroomLayoutData(0);
  sub_1D604F8FC(&qword_1EC882C68, 255, type metadata accessor for DebugNewsroomLayoutData, &unk_1D72B0368);
  v4 = sub_1D72578BC();
  v6 = v5;

  if (!v2)
  {
    v7 = objc_opt_self();
    v8 = sub_1D725865C();
    v23[0] = 0;
    v9 = [v7 JSONObjectWithData:v8 options:0 error:v23];

    if (v9)
    {
      v10 = v23[0];
      sub_1D7263AEC();
      swift_unknownObjectRelease();
      sub_1D604FD34();
      if (swift_dynamicCast())
      {
        sub_1D604FC94(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomContainer);
        v12 = *(v3 + *(v11 + 40));
        if (v12[2])
        {
          v13 = sub_1D5B69D90(0xD000000000000017, 0x80000001D73C6900);
          if (v14)
          {
            v23[0] = *(v12[7] + 8 * v13);
            swift_unknownObjectRetain();
            if (swift_dynamicCast())
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v23[0] = v22;
              sub_1D6050034(v22, sub_1D604FFEC, 0, isUniquelyReferenced_nonNull_native, v23);

              v16 = sub_1D7261D2C();

              v17 = swift_isUniquelyReferenced_nonNull_native();
              v23[0] = v12;
              sub_1D6D79510(v16, 0xD000000000000017, 0x80000001D73C6900, v17);
              v18 = sub_1D7261D2C();

              v23[0] = 0;
              v19 = [v7 dataWithJSONObject:v18 options:0 error:v23];

              v20 = v23[0];
              if (v19)
              {
                sub_1D725867C();
                sub_1D5B952F8(v4, v6);

                return;
              }

              v21 = v20;
              goto LABEL_10;
            }
          }
        }
      }

      type metadata accessor for DebugNewsroomServiceError(0);
      sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    }

    v21 = v23[0];
LABEL_10:
    sub_1D725829C();

LABEL_13:
    swift_willThrow();
    sub_1D5B952F8(v4, v6);
  }
}

void sub_1D604C660(uint64_t a1)
{
  v3 = v1;
  v23[4] = *MEMORY[0x1E69E9840];
  sub_1D72578EC();
  swift_allocObject();
  sub_1D72578DC();
  type metadata accessor for DebugNewsroomThemeData(0);
  sub_1D604F8FC(&qword_1EC882C78, 255, type metadata accessor for DebugNewsroomThemeData, &unk_1D729FE08);
  v4 = sub_1D72578BC();
  v6 = v5;

  if (!v2)
  {
    v7 = objc_opt_self();
    v8 = sub_1D725865C();
    v23[0] = 0;
    v9 = [v7 JSONObjectWithData:v8 options:0 error:v23];

    if (v9)
    {
      v10 = v23[0];
      sub_1D7263AEC();
      swift_unknownObjectRelease();
      sub_1D604FD34();
      if (swift_dynamicCast())
      {
        sub_1D604FE18(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomContainer);
        v12 = *(v3 + *(v11 + 40));
        if (v12[2])
        {
          v13 = sub_1D5B69D90(0xD000000000000016, 0x80000001D73C6980);
          if (v14)
          {
            v23[0] = *(v12[7] + 8 * v13);
            swift_unknownObjectRetain();
            if (swift_dynamicCast())
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v23[0] = v22;
              sub_1D6050034(v22, sub_1D604FFEC, 0, isUniquelyReferenced_nonNull_native, v23);

              v16 = sub_1D7261D2C();

              v17 = swift_isUniquelyReferenced_nonNull_native();
              v23[0] = v12;
              sub_1D6D79510(v16, 0xD000000000000016, 0x80000001D73C6980, v17);
              v18 = sub_1D7261D2C();

              v23[0] = 0;
              v19 = [v7 dataWithJSONObject:v18 options:0 error:v23];

              v20 = v23[0];
              if (v19)
              {
                sub_1D725867C();
                sub_1D5B952F8(v4, v6);

                return;
              }

              v21 = v20;
              goto LABEL_10;
            }
          }
        }
      }

      type metadata accessor for DebugNewsroomServiceError(0);
      sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    }

    v21 = v23[0];
LABEL_10:
    sub_1D725829C();

LABEL_13:
    swift_willThrow();
    sub_1D5B952F8(v4, v6);
  }
}

void *sub_1D604CAA0(void *a1, char *a2)
{
  v56 = a2;
  v3 = v2;
  v55 = *v3;
  v5 = sub_1D72577EC();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v44 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v44 - v24;
  v26 = v57;
  sub_1D604C660(v56);
  if (v26)
  {
    return a1;
  }

  v56 = v8;
  v57 = a1;
  v45 = v21;
  v46 = v25;
  v50 = v17;
  v51 = v12;
  v52 = v14;
  v47 = v27;
  v48 = v28;
  v49 = 0;
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  sub_1D604F8FC(&qword_1EC882C38, v28, type metadata accessor for DebugNewsroomService, &unk_1D72924E8);
  v55 = v3;
  sub_1D725964C();
  v29 = v61;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1D7263D4C();

  v58 = 0xD000000000000019;
  v59 = 0x80000001D73C68E0;
  MEMORY[0x1DA6F9910](*v57, v57[1]);
  v44 = v58;
  v60 = v29;
  v30 = v50;
  sub_1D5E4ADC8(v50);
  sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v31 = v13;
  v58 = sub_1D72644BC();
  v59 = v32;
  v33 = v52;
  v57 = *(v52 + 8);
  (v57)(v30, v13);
  MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
  v34 = v51;
  sub_1D725855C();

  result = (*(v33 + 48))(v34, 1, v31);
  v36 = v56;
  if (result != 1)
  {
    v37 = v45;
    (*(v33 + 32))(v45, v34, v31);
    v38 = v46;
    sub_1D725849C();

    (v57)(v37, v31);
    (*(v33 + 16))(v30, v38, v31);
    sub_1D72577AC();
    sub_1D725774C();
    sub_1D72577DC();
    v39 = v47;
    v40 = v48;
    sub_1D5E3E824(v47, v48);
    v41 = sub_1D72577CC();
    MEMORY[0x1EEE9AC00](v41, v42);
    *(&v44 - 2) = v55;
    *(&v44 - 1) = v36;
    sub_1D725BDCC();
    v43 = sub_1D725B92C();
    sub_1D604FE18(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomContainer);
    a1 = sub_1D725BA8C();

    sub_1D5B952F8(v39, v40);
    (v57)(v38, v31);
    (*(v53 + 8))(v36, v54);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D604D06C(uint64_t a1, void *a2)
{
  v4 = sub_1D72577EC();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D72585BC();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v7);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v65 = &v63 - v14;
  v15 = sub_1D725BD1C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D3A7E0(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v63 - v32;
  v34 = *(v16 + 16);
  v71 = a1;
  v34(&v63 - v32, a1, v15, v31);
  (*(v16 + 56))(v33, 0, 1, v15);
  v35 = *(type metadata accessor for DebugNewsroomLayoutData(0) + 52);
  v36 = *(v21 + 56);
  sub_1D604FD98(v33, v24, sub_1D5B5C268);
  sub_1D604FD98(a2 + v35, &v24[v36], sub_1D5B5C268);
  v37 = *(v16 + 48);
  if (v37(v24, 1, v15) != 1)
  {
    sub_1D604FD98(v24, v28, sub_1D5B5C268);
    if (v37(&v24[v36], 1, v15) != 1)
    {
      (*(v16 + 32))(v19, &v24[v36], v15);
      sub_1D604F8FC(&qword_1EDF178B8, 255, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
      v38 = sub_1D7261FBC();
      v39 = *(v16 + 8);
      v39(v19, v15);
      sub_1D5BFC5B8(v33, sub_1D5B5C268);
      v39(v28, v15);
      sub_1D5BFC5B8(v24, sub_1D5B5C268);
      if ((v38 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_1D5BFC5B8(v33, sub_1D5B5C268);
    (*(v16 + 8))(v28, v15);
LABEL_6:
    sub_1D5BFC5B8(v24, sub_1D5D3A7E0);
    goto LABEL_10;
  }

  sub_1D5BFC5B8(v33, sub_1D5B5C268);
  if (v37(&v24[v36], 1, v15) != 1)
  {
    goto LABEL_6;
  }

  sub_1D5BFC5B8(v24, sub_1D5B5C268);
LABEL_8:
  v40 = a2[8];
  if (v40)
  {
    v41 = a2[7];
    sub_1D5B5BEC0(0, &qword_1EC882BF0, sub_1D604F944, MEMORY[0x1E69D6B18]);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v40;

    sub_1D725BABC();
    v43 = sub_1D725B92C();
    v44 = sub_1D725BB6C();

    return v44;
  }

LABEL_10:
  v46 = a2[13];
  if (v46)
  {
    v47 = sub_1D725BC9C();
    if (*(v46 + 16))
    {
      v49 = sub_1D5B69D90(v47, v48);
      v51 = v50;

      if (v51)
      {
        v52 = v66;
        v53 = *(v46 + 56) + *(v66 + 72) * v49;
        v54 = *(v66 + 16);
        v55 = v63;
        v56 = v68;
        v54(v63, v53, v68);
        v57 = v65;
        (*(v52 + 32))(v65, v55, v56);
        v54(v64, v57, v56);
        v58 = v67;
        sub_1D72577AC();
        sub_1D725774C();
        sub_1D604E2FC(v58);
        v59 = sub_1D725B92C();
        sub_1D604F944(0);
        sub_1D725BA8C();

        v60 = sub_1D725B92C();
        v61 = sub_1D725BB6C();

        (*(v69 + 8))(v58, v70);
        (*(v52 + 8))(v57, v56);
        return v61;
      }
    }

    else
    {
    }
  }

  type metadata accessor for DebugNewsroomServiceError(0);
  sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
  swift_allocError();
  sub_1D604F88C(a2, v62, &qword_1EC880FD8, type metadata accessor for DebugNewsroomContainer, sub_1D604FC94);
  swift_storeEnumTagMultiPayload();
  sub_1D5B5BEC0(0, &qword_1EC882BF0, sub_1D604F944, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

uint64_t sub_1D604D8F8(uint64_t a1, void *a2)
{
  v4 = sub_1D72577EC();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D72585BC();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v7);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v65 = &v63 - v14;
  v15 = sub_1D725BD1C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D3A7E0(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v63 - v32;
  v34 = *(v16 + 16);
  v71 = a1;
  v34(&v63 - v32, a1, v15, v31);
  (*(v16 + 56))(v33, 0, 1, v15);
  v35 = *(type metadata accessor for DebugNewsroomThemeData(0) + 48);
  v36 = *(v21 + 56);
  sub_1D604FD98(v33, v24, sub_1D5B5C268);
  sub_1D604FD98(a2 + v35, &v24[v36], sub_1D5B5C268);
  v37 = *(v16 + 48);
  if (v37(v24, 1, v15) != 1)
  {
    sub_1D604FD98(v24, v28, sub_1D5B5C268);
    if (v37(&v24[v36], 1, v15) != 1)
    {
      (*(v16 + 32))(v19, &v24[v36], v15);
      sub_1D604F8FC(&qword_1EDF178B8, 255, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B50]);
      v38 = sub_1D7261FBC();
      v39 = *(v16 + 8);
      v39(v19, v15);
      sub_1D5BFC5B8(v33, sub_1D5B5C268);
      v39(v28, v15);
      sub_1D5BFC5B8(v24, sub_1D5B5C268);
      if ((v38 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_1D5BFC5B8(v33, sub_1D5B5C268);
    (*(v16 + 8))(v28, v15);
LABEL_6:
    sub_1D5BFC5B8(v24, sub_1D5D3A7E0);
    goto LABEL_10;
  }

  sub_1D5BFC5B8(v33, sub_1D5B5C268);
  if (v37(&v24[v36], 1, v15) != 1)
  {
    goto LABEL_6;
  }

  sub_1D5BFC5B8(v24, sub_1D5B5C268);
LABEL_8:
  v40 = a2[6];
  if (v40)
  {
    v41 = a2[5];
    sub_1D5B5BEC0(0, &qword_1EC882BF0, sub_1D604F944, MEMORY[0x1E69D6B18]);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v40;

    sub_1D725BABC();
    v43 = sub_1D725B92C();
    v44 = sub_1D725BB6C();

    return v44;
  }

LABEL_10:
  v46 = a2[12];
  if (v46)
  {
    v47 = sub_1D725BC9C();
    if (*(v46 + 16))
    {
      v49 = sub_1D5B69D90(v47, v48);
      v51 = v50;

      if (v51)
      {
        v52 = v66;
        v53 = *(v46 + 56) + *(v66 + 72) * v49;
        v54 = *(v66 + 16);
        v55 = v63;
        v56 = v68;
        v54(v63, v53, v68);
        v57 = v65;
        (*(v52 + 32))(v65, v55, v56);
        v54(v64, v57, v56);
        v58 = v67;
        sub_1D72577AC();
        sub_1D725774C();
        sub_1D604E2FC(v58);
        v59 = sub_1D725B92C();
        sub_1D604F944(0);
        sub_1D725BA8C();

        v60 = sub_1D725B92C();
        v61 = sub_1D725BB6C();

        (*(v69 + 8))(v58, v70);
        (*(v52 + 8))(v57, v56);
        return v61;
      }
    }

    else
    {
    }
  }

  type metadata accessor for DebugNewsroomServiceError(0);
  sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
  swift_allocError();
  sub_1D604F88C(a2, v62, &qword_1EC880FE8, type metadata accessor for DebugNewsroomContainer, sub_1D604FE18);
  swift_storeEnumTagMultiPayload();
  sub_1D5B5BEC0(0, &qword_1EC882BF0, sub_1D604F944, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

void sub_1D604E184(uint64_t a1, unint64_t a2)
{
  type metadata accessor for FormatJSONDecoder(0);
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FormatFile(0);

  v6 = sub_1D6011D6C(a1, a2);
  v8 = v7;
  sub_1D604F8FC(&qword_1EDF34750, 255, type metadata accessor for FormatFile, &protocol conformance descriptor for FormatFile);
  sub_1D725A69C();
  sub_1D5B952F8(v6, v8);

  if (!v3)
  {
    sub_1D604F944(0);
    swift_storeEnumTagMultiPayload();
  }
}

id sub_1D604E2A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  sub_1D604F944(0);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1D604E2FC(uint64_t a1)
{
  v2 = sub_1D72577EC();
  swift_allocBox();
  (*(*(v2 - 8) + 16))(v3, a1, v2);
  v4 = [objc_opt_self() sharedHTTPCookieStorage];
  v5 = [v4 cookies];

  if (v5)
  {
    sub_1D5B5A498(0, &qword_1EC882C00, 0x1E696AC58);
    sub_1D726267C();
  }

  v6 = objc_opt_self();
  sub_1D5B5A498(0, &qword_1EC882C00, 0x1E696AC58);
  v7 = sub_1D726265C();

  v8 = [v6 requestHeaderFieldsWithCookies_];

  sub_1D7261D3C();
  v9 = sub_1D725778C();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1D60502C0(0, &qword_1EC882C08, MEMORY[0x1E6969080], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v11 = sub_1D725BBAC();

  return v11;
}

void sub_1D604E51C()
{
  type metadata accessor for FormatJSONDecoder(0);
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FormatFile(0);
  sub_1D604F8FC(&qword_1EDF34750, 255, type metadata accessor for FormatFile, &protocol conformance descriptor for FormatFile);
  sub_1D725A69C();

  if (!v2)
  {
    sub_1D604F944(0);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D604E610@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  sub_1D72620CC();
  result = sub_1D726209C();
  if (v8)
  {
    *a3 = result;
    a3[1] = v8;
  }

  else
  {
    type metadata accessor for DebugNewsroomServiceError(0);
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
    swift_allocError();
    v10 = v9;
    v11 = sub_1D72577EC();
    (*(*(v11 - 8) + 16))(v10, a2, v11);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D604E774(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D72577EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  sub_1D604E2FC(a2);
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = sub_1D725B92C();
  v10 = sub_1D725BA8C();

  return v10;
}

void sub_1D604E8E8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[4] = *MEMORY[0x1E69E9840];
  sub_1D604FC74(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_1D6011D6C(a1, a2);
  v13 = v12;
  v14 = objc_opt_self();
  v15 = sub_1D725865C();
  v24[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:v24];

  if (!v16)
  {
    v19 = v24[0];
    sub_1D725829C();

LABEL_7:
    swift_willThrow();
    sub_1D5B952F8(v11, v13);
    return;
  }

  v17 = v24[0];
  sub_1D7263AEC();
  swift_unknownObjectRelease();
  sub_1D604FD34();
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for DebugNewsroomServiceError(0);
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

  v18 = v23;
  sub_1D725A6CC();
  swift_allocObject();
  sub_1D725A6BC();
  sub_1D604F8FC(&qword_1EC882C50, 255, sub_1D604FC74, &unk_1D72A9A80);
  sub_1D725A69C();
  sub_1D5B952F8(v11, v13);

  if (v3)
  {
  }

  else
  {
    sub_1D604FC94(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomContainer);
    v21 = v20;
    v22 = *(v20 + 36);
    sub_1D604FF14(v10, a3 + v22, sub_1D604FC74);
    sub_1D604FD98(a3 + v22, a3, type metadata accessor for DebugNewsroomLayoutData);
    *(a3 + *(v21 + 40)) = v18;
  }
}

void sub_1D604EC2C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[4] = *MEMORY[0x1E69E9840];
  sub_1D604FEF4(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_1D6011D6C(a1, a2);
  v13 = v12;
  v14 = objc_opt_self();
  v15 = sub_1D725865C();
  v24[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:v24];

  if (!v16)
  {
    v19 = v24[0];
    sub_1D725829C();

LABEL_7:
    swift_willThrow();
    sub_1D5B952F8(v11, v13);
    return;
  }

  v17 = v24[0];
  sub_1D7263AEC();
  swift_unknownObjectRelease();
  sub_1D604FD34();
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for DebugNewsroomServiceError(0);
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

  v18 = v23;
  sub_1D725A6CC();
  swift_allocObject();
  sub_1D725A6BC();
  sub_1D604F8FC(&qword_1EC882C60, 255, sub_1D604FEF4, &unk_1D72A9A80);
  sub_1D725A69C();
  sub_1D5B952F8(v11, v13);

  if (v3)
  {
  }

  else
  {
    sub_1D604FE18(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomContainer);
    v21 = v20;
    v22 = *(v20 + 36);
    sub_1D604FF14(v10, a3 + v22, sub_1D604FEF4);
    sub_1D604FD98(a3 + v22, a3, type metadata accessor for DebugNewsroomThemeData);
    *(a3 + *(v21 + 40)) = v18;
  }
}

void sub_1D604EF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1D72577EC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_projectBox();

  v18 = sub_1D6049044();
  swift_beginAccess();
  (*(v12 + 16))(v15, v17, v11);
  v19 = sub_1D725776C();
  (*(v12 + 8))(v15, v11);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a6;
  v20[5] = sub_1D604F980;
  v20[6] = v16;
  aBlock[4] = sub_1D604F988;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D60B572C;
  aBlock[3] = &block_descriptor_16;
  v21 = _Block_copy(aBlock);

  v22 = [v18 dataTaskWithRequest:v19 completionHandler:v21];
  _Block_release(v21);

  [v22 resume];
}

void sub_1D604F1CC(uint64_t a1, unint64_t a2, void *a3, void *a4, void (*a5)(void *, double), uint64_t a6, uint64_t a7, void (*a8)(uint64_t, unint64_t, double))
{
  v13 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v15 = sub_1D72577EC();
  v16 = swift_projectBox();
  if (a4)
  {
    type metadata accessor for DebugNewsroomServiceError(0);
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
    v17 = swift_allocError();
    v19 = v18;
    sub_1D604FBC4(0);
    v21 = *(v20 + 48);
    *v19 = a4;
    swift_beginAccess();
    (*(*(v15 - 8) + 16))(&v19[v21], v16, v15);
    swift_storeEnumTagMultiPayload();
    v22 = a4;
    v23 = a4;
    (a5)(v17);

LABEL_9:
    return;
  }

  v51 = v15;
  if (!a3 || (objc_opt_self(), (v24 = swift_dynamicCastObjCClass()) == 0))
  {
    type metadata accessor for DebugNewsroomServiceError(0);
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
    a4 = swift_allocError();
    v30 = v29;
    sub_1D604F9B8(0);
    v32 = *(v31 + 64);
    *v30 = a3;
    *(v30 + 1) = a1;
    *(v30 + 2) = a2;
    swift_beginAccess();
    (*(*(v51 - 8) + 16))(&v30[v32], v16);
    swift_storeEnumTagMultiPayload();
    v33 = a3;
    v34 = sub_1D5F13DE4(a1, a2);
    a5(a4, v34);
    goto LABEL_9;
  }

  v25 = v24;
  v50 = a3;
  if ([v25 statusCode] == 200)
  {
    if (a2 >> 60 != 15)
    {
      v43 = sub_1D5E3E824(a1, a2);
      a8(a1, a2, v43);
      sub_1D5B952E4(a1, a2);

      goto LABEL_19;
    }

    type metadata accessor for DebugNewsroomServiceError(0);
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
    v26 = swift_allocError();
    v28 = v27;
    swift_beginAccess();
    (*(*(v15 - 8) + 16))(v28, v16);
    swift_storeEnumTagMultiPayload();
    (a5)(v26);
    goto LABEL_18;
  }

  if (a2 >> 60 == 15)
  {
LABEL_17:
    type metadata accessor for DebugNewsroomServiceError(0);
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
    v26 = swift_allocError();
    v45 = v44;
    sub_1D604FAD0(0);
    v47 = *(v46 + 64);
    v48 = [v25 statusCode];
    *(v45 + 1) = 0;
    *(v45 + 2) = 0;
    *v45 = v48;
    swift_beginAccess();
    (*(*(v15 - 8) + 16))(&v45[v47], v16, v15);
    swift_storeEnumTagMultiPayload();
    (a5)(v26);
LABEL_18:

    goto LABEL_19;
  }

  sub_1D5E3E824(a1, a2);
  sub_1D72620CC();
  sub_1D604FB70();
  v35 = sub_1D72620AC();
  if (!v36)
  {
    sub_1D5B952E4(a1, a2);
    goto LABEL_17;
  }

  v37 = v36;
  v49 = v35;
  type metadata accessor for DebugNewsroomServiceError(0);
  sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError, &unk_1D732186C);
  v38 = swift_allocError();
  v40 = v39;
  sub_1D604FAD0(0);
  v42 = *(v41 + 64);
  *v40 = [v25 &selRef_cancelAllOperations];
  *(v40 + 1) = v49;
  *(v40 + 2) = v37;
  swift_beginAccess();
  (*(*(v51 - 8) + 16))(&v40[v42], v16, v51);
  swift_storeEnumTagMultiPayload();
  (a5)(v38);

  sub_1D5B952E4(a1, a2);
LABEL_19:
}

uint64_t sub_1D604F88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D604F8FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D604F9B8(uint64_t a1)
{
  if (!qword_1EC882C10)
  {
    sub_1D604FA68(255);
    sub_1D60502C0(255, &qword_1EDF18A90, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    sub_1D72577EC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC882C10);
    }
  }
}

void sub_1D604FA68(uint64_t a1)
{
  if (!qword_1EC882C18)
  {
    sub_1D5B5A498(255, &unk_1EC881750, 0x1E696AF70);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882C18);
    }
  }
}

void sub_1D604FAD0(uint64_t a1)
{
  if (!qword_1EC882C20)
  {
    sub_1D60502C0(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D72577EC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC882C20);
    }
  }
}

unint64_t sub_1D604FB70()
{
  result = qword_1EC882C28;
  if (!qword_1EC882C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882C28);
  }

  return result;
}

void sub_1D604FBC4(uint64_t a1)
{
  if (!qword_1EC882C30)
  {
    sub_1D5BA6EF4();
    sub_1D72577EC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882C30);
    }
  }
}

void sub_1D604FC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DebugNewsroomLayoutData(255);
    v7 = sub_1D604F8FC(&qword_1EC880FE0, 255, type metadata accessor for DebugNewsroomLayoutData, &unk_1D72B03B8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D604FD34()
{
  if (!qword_1EC882C48)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882C48);
    }
  }
}

uint64_t sub_1D604FD98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D604FE18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DebugNewsroomThemeData(255);
    v7 = sub_1D604F8FC(qword_1EC880FF0, 255, type metadata accessor for DebugNewsroomThemeData, &unk_1D729FE58);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D604FF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D604FFEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return swift_unknownObjectRetain();
}

void sub_1D6050034(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v43 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v35 = v6;
  while (v9)
  {
    v38 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v42[0] = *v15;
    v42[1] = v16;
    v42[2] = v17;

    swift_unknownObjectRetain();
    a2(&v39, v42);
    swift_unknownObjectRelease();

    v18 = v39;
    v19 = v40;
    v20 = v41;
    v21 = *v43;
    v23 = sub_1D5B69D90(v39, v40);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v38 & 1) == 0)
      {
        sub_1D6D815C8();
      }
    }

    else
    {
      sub_1D6D6C1D0(v26, v38 & 1);
      v28 = sub_1D5B69D90(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v43;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v35;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1D5B87E38(a1);

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v38 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1D726493C();
  __break(1u);
}

void sub_1D60502C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_9Tm()
{
  v1 = sub_1D72577EC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void FCRecipe.traits.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 thumbnailExtraLarge];
  if (v3 || (v3 = [v1 thumbnailLarge]) != 0 || (v3 = objc_msgSend(v1, sel_thumbnailMedium)) != 0 || (v3 = objc_msgSend(v1, sel_thumbnailSmall)) != 0)
  {
    v4 = 0x4000000000104;
    v5 = v3;
    [v3 thumbnailSize];
    v7 = v6;
    v9 = v8;

    v10 = v7 / v9;
    if (v7 / v9 > 0.9)
    {
      v11 = v10 > 1.1 || v10 <= 0.9;
      v12 = 256;
      if (!v11)
      {
        v12 = 768;
      }

      v4 = v12 + 0x4000000000104;
    }
  }

  else
  {
    v4 = 0x4000000000000;
  }

  *a1 = v4;
}

id FCRecipe.thumbnailForMinimumSize(size:scale:)(double a1, double a2, double a3)
{
  if (a1 * a3 == 0.0 && a2 * a3 == 0.0)
  {
    return 0;
  }

  v5 = [v3 thumbnailSmall];
  if (!v5)
  {
    v5 = [v3 thumbnailMedium];
    if (!v5)
    {
      v7 = [v3 thumbnailLarge];
      if (v7)
      {
        v6 = v7;
        [v7 thumbnailSize];
        if (FCSizeIsLargerThanEqualToSize())
        {
          v8 = [v3 thumbnailSmall];

          return v8;
        }

        goto LABEL_11;
      }

      v5 = [v3 thumbnailExtraLarge];
      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  v6 = v5;
  [v5 thumbnailSize];
  if (FCSizeIsLargerThanEqualToSize())
  {
    return v6;
  }

LABEL_11:

LABEL_12:
  result = [v3 thumbnailExtraLarge];
  if (!result)
  {
    result = [v3 thumbnailLarge];
    if (!result)
    {
      result = [v3 thumbnailMedium];
      if (!result)
      {
        return [v3 thumbnailSmall];
      }
    }
  }

  return result;
}

void sub_1D6050728()
{
  v1 = [v0 thumbnailExtraLarge];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 thumbnailAssetHandle];

    if (!v3)
    {
      __break(1u);
      goto LABEL_21;
    }

    v4 = [v3 filePath];

    if (v4)
    {
      v5 = &selRef_thumbnailExtraLarge;
LABEL_17:

      v15 = [v0 *v5];
      return;
    }
  }

  v6 = [v0 thumbnailLarge];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 thumbnailAssetHandle];

  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = [v8 filePath];

  if (v4)
  {
    v5 = &selRef_thumbnailLarge;
    goto LABEL_17;
  }

LABEL_9:
  v9 = [v0 thumbnailMedium];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [v9 thumbnailAssetHandle];

  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = [v11 filePath];

  if (v4)
  {
    v5 = &selRef_thumbnailMedium;
    goto LABEL_17;
  }

LABEL_13:
  v12 = [v0 thumbnailSmall];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = [v12 thumbnailAssetHandle];

  if (!v14)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v4 = [v14 filePath];

  if (v4)
  {
    v5 = &selRef_thumbnailSmall;
    goto LABEL_17;
  }
}

uint64_t sub_1D6050928@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 identifier];
  if (!v4)
  {
    sub_1D726207C();
    v4 = sub_1D726203C();
  }

  v5 = [v2 articles];
  sub_1D5B5D6A0();
  v6 = sub_1D726267C();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA6FB460](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
    swift_unknownObjectRetain();
  }

  v9 = [v8 identifier];
  swift_unknownObjectRelease();
  if (!v9)
  {
    sub_1D726207C();
    v9 = sub_1D726203C();
LABEL_12:
  }

  v10 = [objc_opt_self() nss:v4 NewsURLForRecipeID:v9 articleID:?];

  sub_1D72584EC();
  v11 = sub_1D72585BC();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, 0, 1, v11);
}

uint64_t sub_1D6050B0C()
{

  return swift_deallocClassInstance();
}

char *sub_1D6050B78(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel;
  v13 = *&v11[OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel];
  v14 = v11;
  [v14 addSubview_];
  [*&v11[v12] setTextAlignment_];
  [*&v11[v12] setNumberOfLines_];

  return v14;
}

id GapOfflineView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GapOfflineView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

id GapOfflineView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D6050E64()
{
  sub_1D5BBAE78(&qword_1EDF31C90, &protocol conformance descriptor for GapOfflineView);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t FormatPostPurchaseData.postPurchaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatPostPurchaseData(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6051024(v1, v6);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 2, v7))
  {
    v9 = 1;
  }

  else
  {
    (*(v8 + 32))(a1, v6, v7);
    v9 = 0;
  }

  return (*(v8 + 56))(a1, v9, 1, v7);
}

uint64_t type metadata accessor for FormatPostPurchaseData(uint64_t a1)
{
  result = qword_1EDF281D0;
  if (!qword_1EDF281D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6051024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPostPurchaseData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60510B0(uint64_t a1)
{
  v1 = sub_1D72585BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1D6051108(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v60 = *(v2 + 16);
  if (!v60)
  {

    v55 = a2;
    v4 = MEMORY[0x1E69E7CC8];
    goto LABEL_28;
  }

  v3 = 0;
  v59 = v2 + 32;
  v4 = MEMORY[0x1E69E7CC8];
  v58 = v2;
  do
  {
    v5 = (v59 + 104 * v3);
    v6 = v5[2];
    v7 = *v5;
    v71[1] = v5[1];
    v71[2] = v6;
    v71[0] = v7;
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[5];
    v72 = *(v5 + 12);
    v71[4] = v9;
    v71[5] = v10;
    v71[3] = v8;
    v11 = *&v71[0];
    v61 = v3 + 1;
    v12 = v5[5];
    v62[4] = v5[4];
    v62[5] = v12;
    v63 = *(v5 + 12);
    v13 = v5[1];
    v62[0] = *v5;
    v62[1] = v13;
    v14 = v5[3];
    v62[2] = v5[2];
    v62[3] = v14;
    sub_1D6053088(v71, &v64);
    sub_1D6053088(v71, &v64);
    sub_1D60514A8(v62, &v64);
    v77 = v68;
    v78 = v69;
    v79 = v70;
    v73 = v64;
    v74 = v65;
    v75 = v66;
    v76 = v67;

    sub_1D60530E4(v71);
    v15 = 0;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    if (v18)
    {
      goto LABEL_9;
    }

    while (1)
    {
LABEL_10:
      v32 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        sub_1D726493C();
        __break(1u);
        return;
      }

      if (v32 >= v19)
      {
        break;
      }

      v18 = *(v11 + 56 + 8 * v32);
      ++v15;
      if (v18)
      {
        while (1)
        {
          v33 = (*(v11 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v18)))));
          v35 = *v33;
          v34 = v33[1];

          sub_1D6053138(&v73, &v64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v62[0] = v4;
          v37 = sub_1D5B69D90(v35, v34);
          v39 = v4[2];
          v40 = (v38 & 1) == 0;
          v41 = __OFADD__(v39, v40);
          v42 = v39 + v40;
          if (v41)
          {
            goto LABEL_30;
          }

          v43 = v38;
          if (v4[3] >= v42)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v54 = v37;
              sub_1D6D81784();
              v37 = v54;
            }
          }

          else
          {
            sub_1D6D6C4CC(v42, isUniquelyReferenced_nonNull_native);
            v37 = sub_1D5B69D90(v35, v34);
            if ((v43 & 1) != (v44 & 1))
            {
              goto LABEL_32;
            }
          }

          v18 &= v18 - 1;
          if (v43)
          {
            break;
          }

          v4 = *&v62[0];
          *(*&v62[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v45 = (v4[6] + 16 * v37);
          *v45 = v35;
          v45[1] = v34;
          v46 = (v4[7] + 112 * v37);
          v48 = v78;
          v47 = v79;
          v49 = v77;
          v46[3] = v76;
          v46[4] = v49;
          v46[5] = v48;
          v46[6] = v47;
          v51 = v74;
          v50 = v75;
          *v46 = v73;
          v46[1] = v51;
          v46[2] = v50;
          v52 = v4[2];
          v41 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v41)
          {
            goto LABEL_31;
          }

          v4[2] = v53;
          v15 = v32;
          if (!v18)
          {
            goto LABEL_10;
          }

LABEL_9:
          v32 = v15;
        }

        v20 = v37;

        v4 = *&v62[0];
        v21 = (*(*&v62[0] + 56) + 112 * v20);
        v23 = v21[1];
        v22 = v21[2];
        v64 = *v21;
        v65 = v23;
        v66 = v22;
        v24 = v21[6];
        v26 = v21[3];
        v25 = v21[4];
        v69 = v21[5];
        v70 = v24;
        v67 = v26;
        v68 = v25;
        v27 = v76;
        v28 = v77;
        v29 = v79;
        v21[5] = v78;
        v21[6] = v29;
        v21[3] = v27;
        v21[4] = v28;
        v30 = v73;
        v31 = v75;
        v21[1] = v74;
        v21[2] = v31;
        *v21 = v30;
        sub_1D6053170(&v64);
        v15 = v32;
        if (v18)
        {
          goto LABEL_9;
        }
      }
    }

    sub_1D6053170(&v73);

    v3 = v61;
    if (v61 == v60)
    {
      goto LABEL_26;
    }
  }

  while (v61 < *(v58 + 16));
  __break(1u);
LABEL_26:

  v55 = a2;
LABEL_28:
  *v55 = v4;
}

void sub_1D60514A8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9 = a1[8];
  v15 = a1[9];
  v10 = a1[11];
  v21 = a1[10];
  v22 = a1[1];
  v16 = a1[12];
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v27 = v8;

  sub_1D60531A0(v4, v5);
  sub_1D6052B40(&v22, &v28);
  v19 = v29;
  v20 = v28;
  v18 = v30;
  v17 = v31;
  if (v7)
  {

    sub_1D60531A0(v15, v21);

    sub_1D5D559EC(v4, v5, v6, v8);
    sub_1D60531E4(v7, v9, v15, v21, v10, v16);
    v22 = v7;
    v23 = v9;
    v24 = v15;
    v25 = v21;
    v26 = v10;
    v27 = v16;
    sub_1D6052B40(&v22, &v28);
    v11 = v28;
    v12 = v29;
    v13 = v30;
    v14 = v31;
  }

  else
  {

    sub_1D5D559EC(v4, v5, v6, v8);
    sub_1D60531E4(0, v9, v15, v21, v10, v16);
    v14 = 0;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a2 = v20;
  *(a2 + 16) = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v17;
  *(a2 + 56) = v11;
  *(a2 + 72) = v12;
  *(a2 + 88) = v13;
  *(a2 + 104) = v14;
}

uint64_t SportsEmbedConfiguration.embedConfigs(tagId:embedConfigKind:groupType:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  v71 = *v5;
  v11 = sub_1D6051F7C(a1, a2, a4, a5);
  v12 = a3 >> 61;
  if (v11)
  {
    v13 = v11;
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v14 = qword_1EDFFC538;
    sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    v16 = v15;
    *(v15 + 16) = xmmword_1D7279970;
    if (v12 <= 2)
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v18 = 0xE700000000000000;
          v17 = 0x74656B63617242;
        }

        else
        {
          v18 = 0xEA00000000007265;
          v17 = 0x79616C502079654BLL;
        }
      }

      else
      {
        v18 = 0xE900000000000065;
        v17 = 0x726F635320786F42;
      }
    }

    else if (v12 > 4)
    {
      if (v12 == 5)
      {
        v18 = 0xE800000000000000;
        v17 = 0x676E69646E617453;
      }

      else
      {
        v18 = 0xE500000000000000;
        v17 = 0x65726F6353;
      }
    }

    else if (v12 == 3)
    {
      v17 = 0x6F635320656E694CLL;
      v18 = 0xEA00000000006572;
    }

    else
    {
      v17 = 0x52207972756A6E49;
      v18 = 0xED000074726F7065;
    }

    v36 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v37 = sub_1D5B7E2C0();
    v16[8] = v37;
    v16[4] = v17;
    v16[5] = v18;
    v38 = *(v13 + 16);
    v39 = MEMORY[0x1E69E65A8];
    v16[12] = MEMORY[0x1E69E6530];
    v16[13] = v39;
    v16[9] = v38;
    v16[17] = v36;
    v16[18] = v37;
    v16[14] = v10;
    v16[15] = a2;

    v40 = sub_1D7262EDC();
    sub_1D725C30C("Sports %{public}@ config found %ld embed configs for %{public}@", 63, 2, &dword_1D5B42000, v14, v40, v16);
    goto LABEL_61;
  }

  if (v12 == 1)
  {
    sub_1D5E4CF90(0);
    sub_1D725BE8C();
    v19 = *(v71 + 64);
    swift_unknownObjectRetain();

    if (v19)
    {
      v70 = v10;
      v20 = [v19 identifier];
      v21 = sub_1D726207C();
      v22 = v19;
      v24 = v23;

      v13 = sub_1D605202C(v21, v24, a4, a5);

      if (v13)
      {
        if (qword_1EDF05878 != -1)
        {
          swift_once();
        }

        v25 = qword_1EDFFC538;
        sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1D7274590;
        v27 = MEMORY[0x1E69E6158];
        *(v26 + 56) = MEMORY[0x1E69E6158];
        v28 = sub_1D5B7E2C0();
        *(v26 + 64) = v28;
        *(v26 + 32) = 0x74656B63617242;
        *(v26 + 40) = 0xE700000000000000;
        v29 = *(v13 + 16);
        v30 = MEMORY[0x1E69E65A8];
        *(v26 + 96) = MEMORY[0x1E69E6530];
        *(v26 + 104) = v30;
        *(v26 + 72) = v29;
        *(v26 + 136) = v27;
        *(v26 + 144) = v28;
        *(v26 + 112) = v70;
        *(v26 + 120) = a2;

        v31 = [v22 identifier];
        v32 = sub_1D726207C();
        v34 = v33;

        *(v26 + 176) = v27;
        *(v26 + 184) = v28;
        *(v26 + 152) = v32;
        *(v26 + 160) = v34;
        v35 = sub_1D7262EDC();
        sub_1D725C30C("Sports %{public}@ config found %ld embed configs for %{public}@ for children of %{public}@", 90, 2, &dword_1D5B42000, v25, v35, v26, v70);
LABEL_60:
        swift_unknownObjectRelease();
LABEL_61:

        return v13;
      }

      swift_unknownObjectRelease();
      v10 = v70;
    }
  }

  v41 = 0xE900000000000065;
  v42 = SportsEmbedConfigurationKind.leagueTag.getter(a3);
  if (v42)
  {
    v43 = v42;
    v44 = [v42 identifier];
    v45 = sub_1D726207C();
    v47 = v46;

    v13 = sub_1D605202C(v45, v47, a4, a5);

    if (v13)
    {
      if (qword_1EDF05878 != -1)
      {
        swift_once();
      }

      v48 = qword_1EDFFC538;
      sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v49 = swift_allocObject();
      v50 = v49;
      *(v49 + 16) = xmmword_1D7274590;
      v51 = 0xE900000000000065;
      if (v12 <= 2)
      {
        if (v12)
        {
          if (v12 == 1)
          {
            v51 = 0xE700000000000000;
            v52 = 0x74656B63617242;
          }

          else
          {
            v51 = 0xEA00000000007265;
            v52 = 0x79616C502079654BLL;
          }
        }

        else
        {
          v52 = 0x726F635320786F42;
        }
      }

      else if (v12 > 4)
      {
        if (v12 == 5)
        {
          v51 = 0xE800000000000000;
          v52 = 0x676E69646E617453;
        }

        else
        {
          v51 = 0xE500000000000000;
          v52 = 0x65726F6353;
        }
      }

      else if (v12 == 3)
      {
        v52 = 0x6F635320656E694CLL;
        v51 = 0xEA00000000006572;
      }

      else
      {
        v52 = 0x52207972756A6E49;
        v51 = 0xED000074726F7065;
      }

      v60 = MEMORY[0x1E69E6158];
      *(v49 + 56) = MEMORY[0x1E69E6158];
      v61 = sub_1D5B7E2C0();
      v50[8] = v61;
      v50[4] = v52;
      v50[5] = v51;
      v62 = *(v13 + 16);
      v63 = MEMORY[0x1E69E65A8];
      v50[12] = MEMORY[0x1E69E6530];
      v50[13] = v63;
      v50[9] = v62;
      v50[17] = v60;
      v50[18] = v61;
      v50[14] = v10;
      v50[15] = a2;

      v64 = [v43 identifier];
      v65 = sub_1D726207C();
      v67 = v66;

      v50[22] = v60;
      v50[23] = v61;
      v50[19] = v65;
      v50[20] = v67;
      v68 = sub_1D7262EDC();
      sub_1D725C30C("Sports %{public}@ config found %ld embed configs for %{public}@ for children of %{public}@", 90, 2, &dword_1D5B42000, v48, v68, v50, v48);
      goto LABEL_60;
    }

    swift_unknownObjectRelease();
    v41 = 0xE900000000000065;
  }

  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v53 = qword_1EDFFC538;
  sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v54 = swift_allocObject();
  v55 = v54;
  *(v54 + 16) = xmmword_1D7270C10;
  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        v41 = 0xE700000000000000;
        v56 = 0x74656B63617242;
      }

      else
      {
        v41 = 0xEA00000000007265;
        v56 = 0x79616C502079654BLL;
      }
    }

    else
    {
      v56 = 0x726F635320786F42;
    }
  }

  else if (v12 > 4)
  {
    if (v12 == 5)
    {
      v41 = 0xE800000000000000;
      v56 = 0x676E69646E617453;
    }

    else
    {
      v41 = 0xE500000000000000;
      v56 = 0x65726F6353;
    }
  }

  else if (v12 == 3)
  {
    v56 = 0x6F635320656E694CLL;
    v41 = 0xEA00000000006572;
  }

  else
  {
    v56 = 0x52207972756A6E49;
    v41 = 0xED000074726F7065;
  }

  v57 = MEMORY[0x1E69E6158];
  *(v54 + 56) = MEMORY[0x1E69E6158];
  v58 = sub_1D5B7E2C0();
  v55[4] = v56;
  v55[5] = v41;
  v55[12] = v57;
  v55[13] = v58;
  v55[8] = v58;
  v55[9] = v10;
  v55[10] = a2;

  v59 = sub_1D7262EDC();
  sub_1D725C30C("Sports %{public}@ config not found for %{public}@", 49, 2, &dword_1D5B42000, v53, v59, v55);

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6051F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (!*(v5 + 16))
  {
    return 0;
  }

  v8 = sub_1D5B69D90(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = (*(v5 + 56) + 112 * v8);
  v11 = v10[1];
  v12 = *(v11 + 16);
  v13 = *v10;

  if (v12)
  {

    v14 = sub_1D5B69D90(a3, a4);
    if (v15)
    {
      v16 = *(*(v11 + 56) + 8 * v14);

      v13 = v16;
    }
  }

  return v13;
}

uint64_t sub_1D605202C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (!*(v5 + 16))
  {
    return 0;
  }

  v8 = sub_1D5B69D90(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = (*(v5 + 56) + 112 * v8);
  v12 = v10[7];
  v11 = v10[8];
  v13 = v10[9];
  v14 = v10[10];
  if (v12)
  {
    v29 = v10[7];
    v15 = v10[8];
    v25 = v10[9];
    v26 = v10[10];
    v27 = v10[11];
    v28 = v10[12];
  }

  else
  {
    v28 = v10[5];
    v17 = v10[3];
    v27 = v10[4];
    v15 = v10[1];
    v18 = v10[2];
    v29 = *v10;
    v23 = v10[9];
    v24 = v10[8];

    v25 = v18;
    v26 = v17;
    sub_1D60531A0(v18, v17);

    v13 = v23;
    v11 = v24;
  }

  v19 = *(v15 + 16);
  sub_1D6053258(v12, v11, v13, v14);
  if (v19 && (v20 = sub_1D5B69D90(a3, a4), (v21 & 1) != 0))
  {
    v22 = *(*(v15 + 56) + 8 * v20);

    v29 = v22;
  }

  else
  {
  }

  sub_1D5D559EC(v25, v26, v27, v28);

  return v29;
}

void SportsEmbedConfiguration.recordConfig(tagId:embedConfigKind:groupType:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = 0xE900000000000065;
  sub_1D6052874(a1, a2, a4, a5, &v54);
  if (*(&v54 + 1))
  {
    v52 = v54;
    v50 = v55;
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDFFC538;
    sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7270C10;
    v15 = a3 >> 61;
    if ((a3 >> 61) <= 2)
    {
      if (v15)
      {
        if (v15 == 1)
        {
          v12 = 0xE700000000000000;
          v16 = 0x74656B63617242;
        }

        else
        {
          v12 = 0xEA00000000007265;
          v16 = 0x79616C502079654BLL;
        }
      }

      else
      {
        v16 = 0x726F635320786F42;
      }
    }

    else if (v15 > 4)
    {
      if (v15 == 5)
      {
        v12 = 0xE800000000000000;
        v16 = 0x676E69646E617453;
      }

      else
      {
        v12 = 0xE500000000000000;
        v16 = 0x65726F6353;
      }
    }

    else if (v15 == 3)
    {
      v16 = 0x6F635320656E694CLL;
      v12 = 0xEA00000000006572;
    }

    else
    {
      v16 = 0x52207972756A6E49;
      v12 = 0xED000074726F7065;
    }

    v30 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v31 = v14;
    v32 = sub_1D5B7E2C0();
    v31[4] = v16;
    v31[5] = v12;
    v31[12] = v30;
    v31[13] = v32;
    v31[8] = v32;
    v31[9] = a1;
    v31[10] = a2;

    v33 = sub_1D7262EDC();
    sub_1D725C30C("Sports %{public}@ config found record config for %{public}@", 59, 2, &dword_1D5B42000, v13, v33, v31);

    v35 = v50;
    v34 = v52;
LABEL_26:
    a6[1] = v35;
    goto LABEL_49;
  }

  v17 = SportsEmbedConfigurationKind.leagueTag.getter(a3);
  if (v17)
  {
    v18 = v17;
    v53 = a6;
    v19 = [v17 identifier];
    v20 = sub_1D726207C();
    v22 = v21;

    sub_1D6052980(v20, v22, a4, a5, &v54);

    if (*(&v54 + 1))
    {
      v51 = v54;
      v49 = v55;
      if (qword_1EDF05878 != -1)
      {
        swift_once();
      }

      v23 = qword_1EDFFC538;
      sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1D7279970;
      v25 = MEMORY[0x1E69E6158];
      *(v24 + 56) = MEMORY[0x1E69E6158];
      v26 = sub_1D5B7E2C0();
      v27 = v26;
      *(v24 + 64) = v26;
      *(v24 + 32) = a1;
      *(v24 + 40) = a2;
      v28 = a3 >> 61;
      a6 = v53;
      if ((a3 >> 61) <= 2)
      {
        if (v28)
        {
          if (v28 == 1)
          {
            v12 = 0xE700000000000000;
            v29 = 0x74656B63617242;
          }

          else
          {
            v12 = 0xEA00000000007265;
            v29 = 0x79616C502079654BLL;
          }
        }

        else
        {
          v29 = 0x726F635320786F42;
        }
      }

      else if (v28 > 4)
      {
        if (v28 == 5)
        {
          v12 = 0xE800000000000000;
          v29 = 0x676E69646E617453;
        }

        else
        {
          v12 = 0xE500000000000000;
          v29 = 0x65726F6353;
        }
      }

      else if (v28 == 3)
      {
        v29 = 0x6F635320656E694CLL;
        v12 = 0xEA00000000006572;
      }

      else
      {
        v29 = 0x52207972756A6E49;
        v12 = 0xED000074726F7065;
      }

      *(v24 + 96) = v25;
      *(v24 + 104) = v26;
      *(v24 + 72) = v29;
      *(v24 + 80) = v12;

      v44 = [v18 identifier];
      v45 = sub_1D726207C();
      v47 = v46;

      *(v24 + 136) = v25;
      *(v24 + 144) = v27;
      *(v24 + 112) = v45;
      *(v24 + 120) = v47;
      v48 = sub_1D7262EDC();
      sub_1D725C30C("Sports %{public}@ config found record config for %{public}@ for children of %{public}@", 86, 2, &dword_1D5B42000, v23, v48, v24);

      swift_unknownObjectRelease();
      v35 = v49;
      v34 = v51;
      goto LABEL_26;
    }

    swift_unknownObjectRelease();
    a6 = v53;
  }

  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDFFC538;
  sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D7270C10;
  v38 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (v38)
    {
      if (v38 == 1)
      {
        v12 = 0xE700000000000000;
        v39 = 0x74656B63617242;
      }

      else
      {
        v12 = 0xEA00000000007265;
        v39 = 0x79616C502079654BLL;
      }
    }

    else
    {
      v39 = 0x726F635320786F42;
    }
  }

  else if (v38 > 4)
  {
    if (v38 == 5)
    {
      v12 = 0xE800000000000000;
      v39 = 0x676E69646E617453;
    }

    else
    {
      v12 = 0xE500000000000000;
      v39 = 0x65726F6353;
    }
  }

  else if (v38 == 3)
  {
    v39 = 0x6F635320656E694CLL;
    v12 = 0xEA00000000006572;
  }

  else
  {
    v39 = 0x52207972756A6E49;
    v12 = 0xED000074726F7065;
  }

  v40 = MEMORY[0x1E69E6158];
  *(v37 + 56) = MEMORY[0x1E69E6158];
  v41 = v37;
  v42 = sub_1D5B7E2C0();
  v41[4] = v39;
  v41[5] = v12;
  v41[12] = v40;
  v41[13] = v42;
  v41[8] = v42;
  v41[9] = a1;
  v41[10] = a2;

  v43 = sub_1D7262EDC();
  sub_1D725C30C("Sports %{public}@ config did not find record config for %{public}@", 66, 2, &dword_1D5B42000, v36, v43, v41);

  v34 = 0uLL;
  a6[1] = 0u;
LABEL_49:
  *a6 = v34;
}

void sub_1D6052874(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *v5;
  if (*(v7 + 16) && (v10 = sub_1D5B69D90(a1, a2), (v11 & 1) != 0))
  {
    v12 = (*(v7 + 56) + 112 * v10);
    v13 = v12[2];
    v14 = v12[3];
    v15 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    v18 = *(v17 + 16);
    sub_1D60531A0(v13, v14);
    if (v18)
    {

      v19 = sub_1D5B69D90(a3, a4);
      if (v20)
      {
        v21 = (*(v17 + 56) + 32 * v19);
        v23 = *v21;
        v22 = v21[1];
        v25 = v21[2];
        v24 = v21[3];

        sub_1D5D559EC(v13, v14, v15, v16);
        *a5 = v23;
        a5[1] = v22;
        a5[2] = v25;
        a5[3] = v24;
        return;
      }
    }

    *a5 = v13;
    a5[1] = v14;
    a5[2] = v15;
    a5[3] = v16;
  }

  else
  {
    *a5 = 0u;
    *(a5 + 1) = 0u;
  }
}

void sub_1D6052980(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *v5;
  if (*(v7 + 16) && (v10 = sub_1D5B69D90(a1, a2), (v11 & 1) != 0))
  {
    v12 = (*(v7 + 56) + 112 * v10);
    v14 = v12[7];
    v13 = v12[8];
    v15 = v12[9];
    v16 = v12[10];
    if (v14)
    {
      v31 = v12[9];
      v32 = v12[10];
      v33 = v12[11];
      v34 = v12[12];
      v17 = v12[13];
    }

    else
    {
      v17 = v12[6];
      v18 = v12[3];
      v33 = v12[4];
      v34 = v12[5];
      v19 = v12[2];
      v29 = v12[9];
      v30 = v12[8];
      v28 = v12[10];

      v31 = v19;
      v32 = v18;
      sub_1D60531A0(v19, v18);

      v16 = v28;
      v15 = v29;
      v13 = v30;
    }

    v20 = *(v17 + 16);
    sub_1D6053258(v14, v13, v15, v16);
    if (v20 && (v21 = sub_1D5B69D90(a3, a4), (v22 & 1) != 0))
    {
      v23 = (*(v17 + 56) + 32 * v21);
      v25 = *v23;
      v24 = v23[1];
      v27 = v23[2];
      v26 = v23[3];

      sub_1D5D559EC(v31, v32, v33, v34);

      *a5 = v25;
      a5[1] = v24;
      a5[2] = v27;
      a5[3] = v26;
    }

    else
    {
      sub_1D60531A0(v31, v32);

      sub_1D5D559EC(v31, v32, v33, v34);

      *a5 = v31;
      a5[1] = v32;
      a5[2] = v33;
      a5[3] = v34;
    }
  }

  else
  {
    *a5 = 0u;
    *(a5 + 1) = 0u;
  }
}

void sub_1D6052B40(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];

  sub_1D60531A0(v4, v5);
  v50 = v2;

  v53 = v5;
  v54 = v4;
  v51 = v7;
  v52 = v6;
  sub_1D5D559EC(v4, v5, v6, v7);
  v57 = *(v3 + 16);
  if (!v57)
  {
    v11 = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC8];
LABEL_30:

    *a2 = v50;
    a2[1] = v10;
    a2[2] = v54;
    a2[3] = v53;
    a2[4] = v52;
    a2[5] = v51;
    a2[6] = v11;
    return;
  }

  v8 = 0;
  v9 = (v3 + 80);
  v10 = MEMORY[0x1E69E7CC8];
  v11 = MEMORY[0x1E69E7CC8];
  v56 = v3;
  while (v8 < *(v3 + 16))
  {
    v61 = v11;
    v58 = v8;
    v16 = *(v9 - 6);
    v15 = *(v9 - 5);
    v17 = *(v9 - 4);
    v18 = *(v9 - 3);
    v20 = *(v9 - 2);
    v19 = *(v9 - 1);
    v21 = *v9;

    v59 = v18;
    v60 = v19;
    sub_1D60531A0(v18, v20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v16;
    v24 = sub_1D5B69D90(v16, v15);
    v26 = v10[2];
    v27 = (v23 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_32;
    }

    v29 = v23;
    if (v10[3] >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v23)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D6D81768(v25);
        if (v29)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1D6D6C4B0(v28, isUniquelyReferenced_nonNull_native, v25);
      v30 = sub_1D5B69D90(v62, v15);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_36;
      }

      v24 = v30;
      if (v29)
      {
LABEL_14:
        *(v10[7] + 8 * v24) = v17;

        v11 = v61;
        if (!v20)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    v10[(v24 >> 6) + 8] |= 1 << v24;
    v32 = (v10[6] + 16 * v24);
    *v32 = v62;
    v32[1] = v15;
    *(v10[7] + 8 * v24) = v17;
    v33 = v10[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_34;
    }

    v10[2] = v35;

    v11 = v61;
    if (!v20)
    {
LABEL_3:

      v12 = v59;
      v13 = v60;
      v14 = 0;
LABEL_4:
      sub_1D5D559EC(v12, v14, v13, v21);
      goto LABEL_5;
    }

LABEL_19:

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v37 = sub_1D5B69D90(v62, v15);
    v39 = v11[2];
    v40 = (v38 & 1) == 0;
    v34 = __OFADD__(v39, v40);
    v41 = v39 + v40;
    if (v34)
    {
      goto LABEL_33;
    }

    v42 = v38;
    if (v11[3] < v41)
    {
      sub_1D6D6C1E8(v41, v36);
      v37 = sub_1D5B69D90(v62, v15);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_36;
      }

LABEL_24:
      if (v42)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    if (v36)
    {
      goto LABEL_24;
    }

    v45 = v37;
    sub_1D6D815E0();
    v37 = v45;
    if (v42)
    {
LABEL_25:
      v44 = (v11[7] + 32 * v37);
      *v44 = v59;
      v44[1] = v20;
      v44[2] = v60;
      v44[3] = v21;

      v12 = v59;
      v14 = v20;
      v13 = v60;
      goto LABEL_4;
    }

LABEL_27:
    v11[(v37 >> 6) + 8] |= 1 << v37;
    v46 = (v11[6] + 16 * v37);
    *v46 = v62;
    v46[1] = v15;
    v47 = (v11[7] + 32 * v37);
    *v47 = v59;
    v47[1] = v20;
    v47[2] = v60;
    v47[3] = v21;

    sub_1D5D559EC(v59, v20, v60, v21);
    v48 = v11[2];
    v34 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v34)
    {
      goto LABEL_35;
    }

    v11[2] = v49;
LABEL_5:
    v3 = v56;
    v8 = v58 + 1;
    v9 += 7;
    if (v57 == v58 + 1)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_1D726493C();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed31SportsEmbedConfigResourceRecordVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed29SportsEmbedGroupConfiguration33_7DB1C8B1ED2AE3FE9CBBCB017D4368DFLLVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D6052FD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1D605301C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D60531A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1D60531E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {

    sub_1D5D559EC(a3, a4, a5, a6);
  }
}

uint64_t sub_1D6053258(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    sub_1D60531A0(a3, a4);
  }

  return result;
}

uint64_t FormatOptionExpression.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatOptionExpression.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v29 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = *(v1 + 16);
  if (v15 < 0)
  {
    v24 = a1[3];
    v36 = a1[4];
    v29[1] = __swift_project_boxed_opaque_existential_1(a1, v24);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
    (*(*(v25 - 8) + 16))(v7, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v27 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v27, v28);
    v29[-4] = v12;
    v29[-3] = v13;
    LOBYTE(v29[-2]) = v14;
    BYTE1(v29[-2]) = BYTE1(v14) & 1;
    sub_1D5D2BEC4(v7, sub_1D60564D0, &v29[-6], v24, v36);
    result = sub_1D5D2CEC8(v7, type metadata accessor for FormatVersionRequirement);
    if (!v2)
    {
      *&v30 = v12;
      *(&v30 + 1) = v13;
      LOWORD(v31) = v14 & 0x1FF;
      return FormatOptionExpression.Exists.encode(to:)(a1);
    }
  }

  else
  {
    v16 = v1[3];
    *&v33 = *v1;
    *(&v33 + 1) = v13;
    *&v34 = v14;
    *(&v34 + 1) = v16;
    v35 = v15 & 0xFF01;
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v19 = sub_1D725BD1C();
    v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
    (*(*(v19 - 8) + 16))(v11, v20, v19);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v21 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v21, v22);
    v29[-2] = &v33;
    sub_1D5D2BEC4(v11, sub_1D60564F0, &v29[-4], v17, v18);
    result = sub_1D5D2CEC8(v11, type metadata accessor for FormatVersionRequirement);
    if (!v2)
    {
      v30 = v33;
      v31 = v34;
      v32 = v35;
      return FormatOptionExpression.Compare.encode(to:)(a1);
    }
  }

  return result;
}

unint64_t sub_1D6053694(void *a1)
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](*a1, a1[1]);
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t FormatOptionExpression.Compare.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v70 - v8;
  sub_1D60564F8(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  v17 = *(v1 + 16);
  v79 = *(v1 + 24);
  v80 = v17;
  v90 = *(v1 + 32);
  v77 = *(v1 + 33);
  v18 = a1[3];
  v19 = a1[4];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = sub_1D5C57C00();
  sub_1D5D2EE70(&type metadata for FormatOptionExpression.Compare, &type metadata for FormatOptionExpression.Compare.CodingKeys, v21, v18, &type metadata for FormatOptionExpression.Compare, &type metadata for FormatOptionExpression.Compare.CodingKeys, &type metadata for FormatVersions.JazzkonC, v19, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v75 = v23;
  v76 = v22;
  v73 = v24 + 16;
  v74 = v25;
  (v25)(v9);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v87 = v15;
  v88 = v16;
  v91 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v29 = swift_allocObject();
  v84 = &v70;
  *(v29 + 16) = 0;
  *(v29 + 24) = v27;
  *(v29 + 32) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v86 = v9;
  *(&v70 - 4) = sub_1D5B4AA6C;
  *(&v70 - 3) = 0;
  v68 = sub_1D60577EC;
  v69 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v71 = v27;
  *(v32 + 24) = v27;
  *(v32 + 32) = v28;
  sub_1D5C57B9C(0, &qword_1EDF02640, MEMORY[0x1E69E6F58]);
  v34 = v33;
  v35 = sub_1D6056578();
  swift_retain_n();
  v82 = v35;
  v83 = v34;
  v36 = sub_1D72647CC();
  v37 = v14;
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = 0;
  v39 = &v37[*(v11 + 36)];
  v41 = *(v39 + 3);
  v40 = *(v39 + 4);
  v42 = __swift_project_boxed_opaque_existential_1(v39, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v70 - 4) = sub_1D60565EC;
  *(&v70 - 3) = (&v70 - 6);
  v46 = v85;
  v47 = v86;
  v68 = sub_1D60577EC;
  v69 = v32;
  sub_1D5D2BC70(v86, sub_1D60566B0, v48, sub_1D60565EC, (&v70 - 6), v41, v40);
  if (v46)
  {
    sub_1D5D2CEC8(v47, type metadata accessor for FormatVersionRequirement);

    v49 = v37;
  }

  else
  {
    v85 = v28;

    sub_1D72647EC();
    v49 = v37;
    sub_1D5D2CEC8(v47, type metadata accessor for FormatVersionRequirement);

    v87 = v80;
    v88 = v79;
    v89 = v90;
    sub_1D5C58190(v80, v79, v90);
    FormatOptionCompareValue.encode(to:)(v81);
    sub_1D5C581A4(v87, v88, v89);
    v50 = v78;
    v74(v78, v75, v76);
    swift_storeEnumTagMultiPayload();
    v51 = v77;
    LOBYTE(v87) = v77;
    if (FormatOperator.rawValue.getter() == 0x6C61757165 && v52 == 0xE500000000000000)
    {
    }

    else
    {
      v86 = 0;
      v53 = sub_1D72646CC();

      if ((v53 & 1) == 0)
      {
        v55 = swift_allocObject();
        *(v55 + 16) = 2;
        *(v55 + 24) = v71;
        *(v55 + 32) = v85;

        v56 = sub_1D72647CC();
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *(v57 + 24) = 2;
        v58 = *(v39 + 3);
        v59 = *(v39 + 4);
        v60 = __swift_project_boxed_opaque_existential_1(v39, v58);
        MEMORY[0x1EEE9AC00](v60, v61);
        MEMORY[0x1EEE9AC00](v62, v63);
        *(&v70 - 4) = sub_1D5B4AA6C;
        *(&v70 - 3) = 0;
        v68 = sub_1D60566B8;
        v69 = v55;
        v64 = v86;
        v66 = sub_1D5D2F7A4(v50, sub_1D60566B0, v65, sub_1D60565EC, (&v70 - 6), v58, v59);
        if (v64)
        {
          sub_1D5D2CEC8(v50, type metadata accessor for FormatVersionRequirement);

          return sub_1D5D2CEC8(v49, sub_1D60564F8);
        }

        v67 = v66;

        if (v67)
        {
          LOBYTE(v87) = 2;
          v91 = v51;
          sub_1D60566E4();
          sub_1D72647EC();
        }
      }
    }

    sub_1D5D2CEC8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CEC8(v49, sub_1D60564F8);
}

unint64_t sub_1D6053EE4(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](a1, a2);
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

double sub_1D6053F74@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v80 = a2;
  sub_1D5D27D64(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v74 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v72 - v13;
  v15 = type metadata accessor for FormatOption(0);
  v78 = *(v15 - 8);
  v79 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v73 = (&v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v75 = (&v72 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v72 = (&v72 - v27);
  v28 = *v2;
  v29 = *(v2 + 8);
  v30 = *(v2 + 16);
  v76 = *(v2 + 24);
  v77 = v30;
  v31 = *(v2 + 32);
  v32 = a1;
  sub_1D725A7EC();

  v83 = MEMORY[0x1E69E7CD0];
  sub_1D6F62DA8(v28, v29, &v83);
  LOBYTE(a1) = v33;

  if (a1)
  {
    v34 = *MEMORY[0x1E69D6B30];
    v35 = sub_1D725BC7C();
    (*(*(v35 - 8) + 104))(v80, v34, v35);
    return result;
  }

  if (v31 < 0)
  {
    sub_1D6057620();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v40 = v77;
    *(inited + 32) = v77;
    v41 = v31;
    v42 = sub_1D5E26E28(inited);
    swift_setDeallocating();

    FormatOptionCollection.subscript.getter(v28, v29, v7);
    sub_1D60576D0(v28, v29, v40, v76, v41);
    v44 = v78;
    v43 = v79;
    v45 = *(v78 + 48);
    if (v45(v7, 1, v79) == 1)
    {

      sub_1D5F873CC(v7);
      v46 = 1;
      v47 = v74;
    }

    else
    {
      v53 = v73;
      sub_1D5D247E0(v7, v73);
      v83 = v53[2];

      FormatOptionValue.type.getter(v54, &v82);
      if ((sub_1D6183C84(v82, v42) & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError(0);
        sub_1D6057738(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v63 = v62;
        v65 = *v53;
        v64 = v53[1];
        v83 = v53[2];

        FormatOptionValue.type.getter(v66, &v82);
        v67 = v82;
        *v63 = v65;
        *(v63 + 8) = v64;
        *(v63 + 16) = v67;
        *(v63 + 24) = v42;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D5D2CEC8(v53, type metadata accessor for FormatOption);
        return result;
      }

      swift_bridgeObjectRelease_n();
      v47 = v74;
      sub_1D5D247E0(v53, v74);
      v46 = 0;
    }

    (*(v44 + 56))(v47, v46, 1, v43);
    v45(v47, 1, v43);
    sub_1D725BC1C();
    sub_1D5F873CC(v47);
    return result;
  }

  if (qword_1EDF1AD88 != -1)
  {
    swift_once();
  }

  v37 = qword_1EDF1AD90;
  v38 = v32;

  FormatOptionCollection.subscript.getter(v28, v29, v14);
  if ((*(v78 + 48))(v14, 1, v79) == 1)
  {
    sub_1D5F873CC(v14);
    if (*(v32 + 48))
    {

      sub_1D725BC1C();
    }

    else
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D6057738(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v55 = v28;
      v55[1] = v29;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    v48 = v75;
    sub_1D5D247E0(v14, v75);
    v83 = v48[2];

    FormatOptionValue.type.getter(v49, &v82);
    if (sub_1D6183C84(v82, v37))
    {

      sub_1D5D247E0(v48, v24);
      v50 = v24;
      v51 = v72;
      sub_1D5D247E0(v50, v72);
      v52 = v81;
      sub_1D6B755A8(v38, &v83);
      if (!v52)
      {
        v68 = v83;
        v70 = v76;
        v69 = v77;
        sub_1D5C58190(v77, v76, v31 & 1);
        sub_1D6054840(v38, v69, v70, v31 & 1, &OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options, sub_1D6B755A8, &v83);
        sub_1D5C581A4(v69, v70, v31 & 1);
        v71 = v83;
        v83 = v68;
        v82 = v71;
        sub_1D6BE54C8(&v82, *(v38 + 16), *v51, v51[1]);
        sub_1D6054BB8(v68, v71, BYTE1(v31));
        sub_1D725BC1C();
      }

      sub_1D5D2CEC8(v51, type metadata accessor for FormatOption);
    }

    else
    {
      type metadata accessor for FormatDerivedDataError(0);
      sub_1D6057738(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      v57 = v56;
      v59 = *v48;
      v58 = v48[1];
      v83 = v48[2];

      FormatOptionValue.type.getter(v60, &v82);
      v61 = v82;
      *v57 = v59;
      *(v57 + 8) = v58;
      *(v57 + 16) = v61;
      *(v57 + 24) = v37;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D5D2CEC8(v48, type metadata accessor for FormatOption);
    }
  }

  return result;
}

uint64_t sub_1D6054840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, __n128)@<X5>, void *a7@<X8>)
{
  v40 = a5;
  v41 = a3;
  v9 = v7;
  v42 = a1;
  sub_1D5D27D64(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for FormatOption(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v23 = MEMORY[0x1EEE9AC00](v20, v21);
  v25 = (&v37 - v24);
  if ((a4 & 1) == 0)
  {
    return a6(v42, a2, v23);
  }

  v38 = v22;
  v39 = a6;
  v26 = v41;

  FormatOptionCollection.subscript.getter(a2, v26, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D5F873CC(v16);
    type metadata accessor for FormatLayoutError(0);
    sub_1D6057738(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v27 = a2;
    v27[1] = v26;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    sub_1D5C581A4(a2, v26, 1);
    sub_1D5D247E0(v16, v25);
    v30 = *v25;
    v29 = v25[1];
    v31 = v25[2];

    (v39)(&v43, v42, v31);
    if (v9)
    {

      return sub_1D5D2CEC8(v25, type metadata accessor for FormatOption);
    }

    else
    {
      v32 = v43;
      v33 = v38;
      *v38 = v30;
      *(v33 + 1) = v29;
      *(v33 + 2) = v32;
      *(v33 + 3) = 1;
      v34 = *(v17 + 28);
      v35 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v35 - 8) + 56))(&v33[v34], 1, 1, v35);
      sub_1D5D2CEC8(v25, type metadata accessor for FormatOption);
      v36 = *(v33 + 2);

      result = sub_1D5D2CEC8(v33, type metadata accessor for FormatOption);
      *a7 = v36;
    }
  }

  return result;
}

uint64_t sub_1D6054BB8(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v11 = a1;
  v10 = a2;
  if (a3 > 5u)
  {
    if (a3 <= 8u)
    {
      if (a3 != 6)
      {
        if (a3 != 7)
        {
          goto LABEL_5;
        }

        goto LABEL_9;
      }

LABEL_16:
      v3 = static FormatOptionValue.== infix(_:_:)(&v11, &v10);
      return v3 & 1;
    }

    if (a3 != 9)
    {
      if (a3 != 10)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

LABEL_17:
    v8 = a2;
    v9 = a1;
    v5 = &v8;
    v6 = &v9;
    goto LABEL_18;
  }

  if (a3 > 2u)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
LABEL_12:
        v8 = a2;
        v9 = a1;
        v5 = &v9;
        v6 = &v8;
LABEL_18:
        v4 = static FormatOptionValue.< infix(_:_:)(v5, v6);
        goto LABEL_19;
      }

LABEL_15:
      v8 = a2;
      v9 = a1;
      v3 = static FormatOptionValue.< infix(_:_:)(&v8, &v9);
      return v3 & 1;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if (a3 == 1)
  {
LABEL_9:
    v4 = static FormatOptionValue.== infix(_:_:)(&v11, &v10);
LABEL_19:
    v3 = v4 ^ 1;
    return v3 & 1;
  }

LABEL_5:
  v3 = static FormatOptionValue.< infix(_:_:)(&v11, &v10);
  return v3 & 1;
}

BOOL sub_1D6054CA0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 5u)
  {
    if (a3 <= 8u)
    {
      if (a3 != 6)
      {
        if (a3 != 7)
        {
          goto LABEL_5;
        }

LABEL_9:
        sub_1D725891C();
        sub_1D6057738(&qword_1EDF45B10, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        return (sub_1D7261FBC() & 1) == 0;
      }

LABEL_16:
      sub_1D725891C();
      sub_1D6057738(&qword_1EDF45B10, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v3 = sub_1D7261FBC();
      return v3 & 1;
    }

    if (a3 != 9)
    {
      if (a3 != 10)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

LABEL_17:
    sub_1D725891C();
    sub_1D6057738(&qword_1EDF3C3C0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v3 = sub_1D7261F7C();
    return v3 & 1;
  }

  if (a3 > 2u)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
LABEL_12:
        sub_1D725891C();
        sub_1D6057738(&qword_1EDF3C3C0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v3 = sub_1D7261F6C();
        return v3 & 1;
      }

LABEL_15:
      sub_1D725891C();
      sub_1D6057738(&qword_1EDF3C3C0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v3 = sub_1D7261F4C();
      return v3 & 1;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_1D725891C();
  sub_1D6057738(&qword_1EDF3C3C0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v3 = sub_1D7261F5C();
  return v3 & 1;
}

BOOL FormatOperator.evaluate<A>(lhs:rhs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = *v5;
  if (v6 > 5)
  {
    if (*v5 <= 8u)
    {
      if (v6 != 6)
      {
        if (v6 != 7)
        {
          goto LABEL_5;
        }

        return (sub_1D7261FBC() & 1) == 0;
      }

LABEL_16:
      v7 = sub_1D7261FBC();
      return v7 & 1;
    }

    if (v6 != 9)
    {
      if (v6 != 10)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

LABEL_17:
    v7 = sub_1D7261F7C();
    return v7 & 1;
  }

  if (*v5 > 2u)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
LABEL_12:
        v7 = sub_1D7261F6C();
        return v7 & 1;
      }

LABEL_15:
      v7 = sub_1D7261F4C();
      return v7 & 1;
    }

    goto LABEL_17;
  }

  if (!*v5)
  {
    goto LABEL_16;
  }

  if (v6 == 1)
  {
    return (sub_1D7261FBC() & 1) == 0;
  }

LABEL_5:
  v7 = sub_1D7261F5C();
  return v7 & 1;
}

uint64_t sub_1D6055060(uint64_t a1)
{
  v40 = a1;
  sub_1D5D27D64(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for FormatOption(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v38 - v20;
  v22 = *v1;
  v23 = *(v1 + 8);
  v24 = *(v1 + 16);
  v38 = *(v1 + 24);
  v39 = *(v1 + 32);
  if (v39 < 0)
  {
    v27 = v19;

    v28 = (v15 + 48);
    if ((v24 & 0x100) != 0)
    {
      FormatOptionCollection.subscript.getter(v22, v23, v5);
      sub_1D60576D0(v22, v23, v24, v38, v39);
      v26 = (*v28)(v5, 1, v14) == 1;
      sub_1D5F873CC(v5);
    }

    else
    {
      FormatOptionCollection.subscript.getter(v22, v23, v9);
      sub_1D60576D0(v22, v23, v24, v38, v39);
      if ((*v28)(v9, 1, v14) == 1)
      {
        sub_1D5F873CC(v9);
      }

      else
      {
        v32 = sub_1D5D247E0(v9, v27);
        v42 = *(v27 + 16);
        FormatOptionValue.type.getter(v32, &v41);
        LOBYTE(v42) = v24;
        v33 = FormatOptionType.rawValue.getter();
        v35 = v34;
        if (v33 == FormatOptionType.rawValue.getter() && v35 == v36)
        {

          sub_1D5D2CEC8(v27, type metadata accessor for FormatOption);
          v26 = 1;
          return v26 & 1;
        }

        v37 = sub_1D72646CC();

        sub_1D5D2CEC8(v27, type metadata accessor for FormatOption);
        if (v37)
        {
          v26 = 1;
          return v26 & 1;
        }
      }

      v26 = 0;
    }
  }

  else
  {
    v25 = v40;

    FormatOptionCollection.subscript.getter(v22, v23, v13);

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1D5F873CC(v13);
      v26 = 0;
    }

    else
    {
      sub_1D5D247E0(v13, v21);
      sub_1D6B744A8(v25, &v42);
      v29 = v42;
      v30 = BYTE1(v39);
      sub_1D6054840(v25, v24, v38, v39 & 1, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options, sub_1D6B744A8, &v42);
      v26 = sub_1D6054BB8(v29, v42, v30);

      sub_1D5D2CEC8(v21, type metadata accessor for FormatOption);
    }
  }

  return v26 & 1;
}

uint64_t FormatOptionExpression.Compare.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatOptionExpression.Compare.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1D5C58190(v2, v3, v4);
}

uint64_t sub_1D60555BC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D605567C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6055728(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D60557E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D60575D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6055814(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xE800000000000000;
  v5 = 0x726F74617265706FLL;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6974706FLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x65756C6176;
    v2 = 0xE500000000000000;
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

unint64_t sub_1D6055890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D60575D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D60558B8(uint64_t a1)
{
  v2 = sub_1D5C57C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60558F4(uint64_t a1)
{
  v2 = sub_1D5C57C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatOptionExpression.Exists.identifier.getter()
{
  v1 = *v0;

  return v1;
}

NewsFeed::FormatOptionExpression::Exists::Operator_optional __swiftcall FormatOptionExpression.Exists.Operator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

uint64_t FormatOptionExpression.Exists.Operator.rawValue.getter()
{
  if (*v0)
  {
    return 0x7473697845746F6ELL;
  }

  else
  {
    return 0x737473697865;
  }
}

uint64_t sub_1D6055A50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473697845746F6ELL;
  }

  else
  {
    v3 = 0x737473697865;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x7473697845746F6ELL;
  }

  else
  {
    v5 = 0x737473697865;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
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
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6055AF8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6055B7C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6055BEC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6055C6C(uint64_t *a1@<X8>)
{
  v2 = 0x737473697865;
  if (*v1)
  {
    v2 = 0x7473697845746F6ELL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1D6055D1C(uint64_t *a1, __n128 a2)
{
  v5 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *v2;
  v10 = v2[1];
  v12 = v2[2];
  v13 = *(v2 + 16);
  if (v13 < 0)
  {
    v17 = *(v7 + 28);
    v18 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v18 - 8) + 56))(&v9[v17], 1, 1, v18);
    *v9 = v11;
    *(v9 + 1) = v10;
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    *(v9 + 2) = v12;
    v9[40] = 0;
    *(v9 + 6) = MEMORY[0x1E69E7CC0];
    v19 = swift_allocBox();
    sub_1D5EB9A4C(v9, v20, v21);

    sub_1D6C4D24C(v19 | 0x1000000000000000);

    sub_1D5D2CEC8(v9, type metadata accessor for FormatDerivedDataOption);
    sub_1D6057620();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = v12;
    v23 = sub_1D5E26E28(inited);
    swift_setDeallocating();
    v24 = swift_allocObject();
    *(v24 + 16) = v11;
    *(v24 + 24) = v10;
    *(v24 + 32) = v23;
    *(v24 + 40) = 0;

    sub_1D6C4D24C(v24 | 0x3000000000000000);
  }

  else
  {
    v14 = v2[3];
    if (v13)
    {

      v15 = sub_1D6056020(a1, v12, v14);
      sub_1D5C581A4(v12, v14, 1);
      if (!v3)
      {
        v16 = swift_allocObject();
        *(v16 + 16) = v11;
        *(v16 + 24) = v10;
        *(v16 + 32) = v15;
        *(v16 + 40) = 0;

        sub_1D6C4D24C(v16 | 0x3000000000000000);
      }
    }

    else
    {
      v32 = v2[2];

      FormatOptionValue.type.getter(v25, &v31);
      v26 = v31;
      sub_1D6057620();
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_1D7273AE0;
      *(v27 + 32) = v26;
      v28 = sub_1D5E26E28(v27);
      swift_setDeallocating();
      v29 = swift_allocObject();
      *(v29 + 16) = v11;
      *(v29 + 24) = v10;
      *(v29 + 32) = v28;
      *(v29 + 40) = 0;

      sub_1D6C4D24C(v29 | 0x3000000000000000);

      sub_1D5C581A4(v12, v14, 0);
      v32 = v12;
      sub_1D629C93C(a1);
    }
  }
}

uint64_t sub_1D6056020(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v13 = MEMORY[0x1E69E7CD0];

  sub_1D6C4DDF4(a2, a3, &v13, v6, v11);
  v7 = v3;

  if (!v3)
  {
    if (v12 <= 1u)
    {
      v8 = v11[0];
      if (!v12)
      {
        sub_1D6057620();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        *(inited + 32) = v8;
        v7 = sub_1D5E26E28(inited);
        swift_setDeallocating();
        return v7;
      }

      sub_1D6057670(v11[0], v11[1], v11[2], 1);
    }

    if (qword_1EDF1AD88 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDF1AD90;
  }

  return v7;
}

uint64_t FormatOperator.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 6648940;
    v8 = 29799;
    if (v1 != 10)
    {
      v8 = 6648935;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 29029;
    v10 = 7431534;
    if (v1 != 7)
    {
      v10 = 29804;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6C61757165;
    v3 = 0x6E6168547373656CLL;
    v4 = 0x5472657461657267;
    if (v1 != 4)
    {
      v4 = 0xD000000000000012;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6C61757145746F6ELL;
    if (v1 != 1)
    {
      v5 = 0x6E6168547373656CLL;
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
}

uint64_t sub_1D60562C4()
{
  v0 = FormatOperator.rawValue.getter();
  v2 = v1;
  if (v0 == FormatOperator.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6056360()
{
  sub_1D7264A0C();
  FormatOperator.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D60563C8(uint64_t a1)
{
  FormatOperator.rawValue.getter();
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D605642C(uint64_t a1)
{
  sub_1D7264A0C();
  FormatOperator.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6056490@<X0>(uint64_t *a1@<X8>)
{
  result = FormatOperator.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1D60564F8(uint64_t a1)
{
  if (!qword_1EDF087A8)
  {
    sub_1D5C57B9C(255, &qword_1EDF02640, MEMORY[0x1E69E6F58]);
    v3 = v2;
    v4 = sub_1D6056578();
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF087A8);
    }
  }
}

unint64_t sub_1D6056578()
{
  result = qword_1EDF02648;
  if (!qword_1EDF02648)
  {
    sub_1D5C57B9C(255, &qword_1EDF02640, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02648);
  }

  return result;
}

uint64_t sub_1D60565F8(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1D5D27D64(0, &qword_1EDF01CF0, sub_1D5D29154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatOptionExpression.Compare.CodingKeys;
  *(inited + 64) = sub_1D5C57C00();
  *(inited + 32) = v3;

  sub_1D5D291B8(inited);
  return a1;
}

unint64_t sub_1D60566E4()
{
  result = qword_1EDF11B68;
  if (!qword_1EDF11B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B68);
  }

  return result;
}

uint64_t _s8NewsFeed22FormatOptionExpressionO6ExistsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 17);
  v3 = *(a2 + 17);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_25;
  }

  v5 = FormatOptionType.rawValue.getter();
  v7 = v6;
  if (v5 != FormatOptionType.rawValue.getter() || v7 != v8)
  {
    v9 = sub_1D72646CC();

    if (v9)
    {
      goto LABEL_10;
    }

LABEL_25:
    v14 = 0;
    return v14 & 1;
  }

LABEL_10:
  if (v2)
  {
    v10 = 0x7473697845746F6ELL;
  }

  else
  {
    v10 = 0x737473697865;
  }

  if (v2)
  {
    v11 = 0xE900000000000073;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v3)
  {
    v12 = 0x7473697845746F6ELL;
  }

  else
  {
    v12 = 0x737473697865;
  }

  if (v3)
  {
    v13 = 0xE900000000000073;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D72646CC();
  }

  return v14 & 1;
}

uint64_t _s8NewsFeed22FormatOptionExpressionO7CompareV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    if ((v8 & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((v8 & 1) != 0 || (v16 = v6, v17 = v2, (static FormatOptionValue.== infix(_:_:)(&v17, &v16) & 1) == 0))
  {
LABEL_15:
    v14 = 0;
    return v14 & 1;
  }

  LOBYTE(v17) = v5;
  LOBYTE(v16) = v9;
  v10 = FormatOperator.rawValue.getter();
  v12 = v11;
  if (v10 == FormatOperator.rawValue.getter() && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D72646CC();
  }

  return v14 & 1;
}

uint64_t _s8NewsFeed22FormatOptionExpressionO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 16);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 16);
  if (v6 < 0)
  {
    if (v11 < 0)
    {
      v21 = *a1;
      v22 = v2;
      LOWORD(v23) = v5 & 0x1FF;
      v16 = v8;
      v17 = v7;
      LOWORD(v18) = v10 & 0x1FF;
      sub_1D6057780(v8, v7, v10, v9, v11);
      sub_1D6057780(v3, v2, v5, v4, v6);
      sub_1D6057780(v3, v2, v5, v4, v6);
      sub_1D6057780(v8, v7, v10, v9, v11);
      exists = _s8NewsFeed22FormatOptionExpressionO6ExistsV2eeoiySbAE_AEtFZ_0(&v21, &v16);
      goto LABEL_7;
    }
  }

  else if ((v11 & 0x80000000) == 0)
  {
    v21 = *a1;
    v22 = v2;
    v23 = v5;
    v24 = v4;
    v25 = v6 & 0xFF01;
    v16 = v8;
    v17 = v7;
    v18 = v10;
    v19 = v9;
    v20 = v11 & 0xFF01;
    sub_1D6057780(v8, v7, v10, v9, v11);
    sub_1D6057780(v3, v2, v5, v4, v6);
    sub_1D6057780(v3, v2, v5, v4, v6);
    sub_1D6057780(v8, v7, v10, v9, v11);
    exists = _s8NewsFeed22FormatOptionExpressionO7CompareV2eeoiySbAE_AEtFZ_0(&v21, &v16);
LABEL_7:
    v15 = exists;
    sub_1D60576D0(v3, v2, v5, v4, v6);
    sub_1D60576D0(v8, v7, v10, v9, v11);
    sub_1D60576D0(v8, v7, v10, v9, v11);
    sub_1D60576D0(v3, v2, v5, v4, v6);
    v13 = v15;
    return v13 & 1;
  }

  sub_1D6057780(*a1, v2, v5, v4, v6);
  sub_1D6057780(v8, v7, v10, v9, v11);
  sub_1D60576D0(v3, v2, v5, v4, v6);
  sub_1D60576D0(v8, v7, v10, v9, v11);
  v13 = 0;
  return v13 & 1;
}

unint64_t sub_1D6056C98()
{
  result = qword_1EC882C88;
  if (!qword_1EC882C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882C88);
  }

  return result;
}

unint64_t sub_1D6056CEC()
{
  result = qword_1EC882C90;
  if (!qword_1EC882C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882C90);
  }

  return result;
}

unint64_t sub_1D6056D40()
{
  result = qword_1EC882C98;
  if (!qword_1EC882C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882C98);
  }

  return result;
}

unint64_t sub_1D6056D98()
{
  result = qword_1EC882CA0;
  if (!qword_1EC882CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CA0);
  }

  return result;
}

unint64_t sub_1D6056E18()
{
  result = qword_1EC882CA8;
  if (!qword_1EC882CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CA8);
  }

  return result;
}

unint64_t sub_1D6056E6C(uint64_t a1)
{
  result = sub_1D6056E94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6056E94()
{
  result = qword_1EC882CB0;
  if (!qword_1EC882CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CB0);
  }

  return result;
}

unint64_t sub_1D6056F28()
{
  result = qword_1EDF0DAA0;
  if (!qword_1EDF0DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DAA0);
  }

  return result;
}

unint64_t sub_1D6056F7C(uint64_t a1)
{
  result = sub_1D6056FA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6056FA4()
{
  result = qword_1EC882CB8;
  if (!qword_1EC882CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CB8);
  }

  return result;
}

unint64_t sub_1D6057038()
{
  result = qword_1EC882CC0;
  if (!qword_1EC882CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CC0);
  }

  return result;
}

unint64_t sub_1D605708C()
{
  result = qword_1EC882CC8;
  if (!qword_1EC882CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CC8);
  }

  return result;
}

unint64_t sub_1D60570E0()
{
  result = qword_1EC882CD0;
  if (!qword_1EC882CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CD0);
  }

  return result;
}

unint64_t sub_1D6057174()
{
  result = qword_1EDF0DA98;
  if (!qword_1EDF0DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA98);
  }

  return result;
}

unint64_t sub_1D60571C8()
{
  result = qword_1EC882CD8;
  if (!qword_1EC882CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CD8);
  }

  return result;
}

unint64_t sub_1D6057220()
{
  result = qword_1EC882CE0;
  if (!qword_1EC882CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CE0);
  }

  return result;
}

uint64_t sub_1D60572A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D60572DC()
{
  result = qword_1EC882CE8;
  if (!qword_1EC882CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CE8);
  }

  return result;
}

unint64_t sub_1D6057330(uint64_t a1)
{
  result = sub_1D6057358();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6057358()
{
  result = qword_1EC882CF0;
  if (!qword_1EC882CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CF0);
  }

  return result;
}

uint64_t sub_1D60573EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D60574B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1D60574FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6057580()
{
  result = qword_1EC882CF8;
  if (!qword_1EC882CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882CF8);
  }

  return result;
}

unint64_t sub_1D60575D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_1D6057620()
{
  if (!qword_1EDF198A0)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF198A0);
    }
  }
}

double sub_1D6057670(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1D6057684(a1, a2, a3, a4);
  }

  return result;
}

double sub_1D6057684(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

void sub_1D60576D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{

  if ((a5 & 0x8000) == 0)
  {

    sub_1D5C581A4(a3, a4, a5 & 1);
  }
}

uint64_t sub_1D6057738(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D6057780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (a5 < 0)
  {
  }

  else
  {
    v6 = a5;

    return sub_1D5C58190(a3, a4, v6 & 1);
  }
}

uint64_t _s8NewsFeed26FormatFrameExpressionLogicO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if (v5 >> 6)
  {
    if (v5 >> 6 == 1)
    {
      if ((v9 & 0xC0) != 0x40)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    if ((v9 & 0xC0) == 0x80)
    {
      v17 = *a1;
      v18 = v2;
      v19 = v4;
      v20 = v5 & 1;
      v13 = v7;
      v14 = v6;
      v15 = v8;
      v16 = v9 & 1;
      sub_1D6057D14(v7, v6, v8, v9);
      sub_1D6057D14(v3, v2, v4, v5);
      sub_1D6057D14(v3, v2, v4, v5);
      sub_1D6057D14(v7, v6, v8, v9);
      v10 = _s8NewsFeed35FormatFrameExpressionLogicTextLinesV2eeoiySbAC_ACtFZ_0(&v17, &v13);
      goto LABEL_9;
    }

LABEL_10:
    sub_1D6057D14(*a1, v2, v4, v5);
    sub_1D6057D14(v7, v6, v8, v9);
    sub_1D6057D74(v3, v2, v4, v5);
    sub_1D6057D74(v7, v6, v8, v9);
    v11 = 0;
    return v11 & 1;
  }

  if (v9 >= 0x40)
  {
    goto LABEL_10;
  }

LABEL_6:
  v17 = *a1;
  v18 = v2;
  v13 = v7;
  v14 = v6;
  sub_1D6057D14(v7, v6, v8, v9);
  sub_1D6057D14(v3, v2, v4, v5);
  sub_1D6057D14(v3, v2, v4, v5);
  sub_1D6057D14(v7, v6, v8, v9);
  v10 = _s8NewsFeed30FormatTextNodeAlternativeLogicO0D5LinesV2eeoiySbAE_AEtFZ_0(&v17, &v13);
LABEL_9:
  v11 = v10;
  sub_1D6057D74(v3, v2, v4, v5);
  sub_1D6057D74(v7, v6, v8, v9);
  sub_1D6057D74(v7, v6, v8, v9);
  sub_1D6057D74(v3, v2, v4, v5);
  return v11 & 1;
}

unint64_t sub_1D6057A5C(uint64_t a1)
{
  result = sub_1D6057A84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6057A84()
{
  result = qword_1EC882D00;
  if (!qword_1EC882D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882D00);
  }

  return result;
}

unint64_t sub_1D6057AD8(void *a1)
{
  a1[1] = sub_1D6057B10();
  a1[2] = sub_1D6057B64();
  result = sub_1D6057BB8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6057B10()
{
  result = qword_1EDF0B548;
  if (!qword_1EDF0B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B548);
  }

  return result;
}

unint64_t sub_1D6057B64()
{
  result = qword_1EDF0B550;
  if (!qword_1EDF0B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B550);
  }

  return result;
}

unint64_t sub_1D6057BB8()
{
  result = qword_1EC882D08;
  if (!qword_1EC882D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882D08);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D6057C2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 4;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1D6057C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = 0;
      *(result + 8) = 16 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1D6057CDC(uint64_t a1, char a2)
{
  v2 = *(a1 + 24) & 1 | (a2 << 6);
  result = vandq_s8(*(a1 + 8), xmmword_1D72933D0);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

double sub_1D6057D14(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
    }
  }

  else
  {
  }

  return result;
}

double sub_1D6057D74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
    }
  }

  else
  {
  }

  return result;
}

void sub_1D6057DD4(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D72593CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v46 = *a1;
  v47 = v9;
  v10 = a1[3];
  v48 = a1[2];
  v49 = v10;
  v11 = a1[5];
  v50 = a1[4];
  v51 = v11;
  v12 = v46;
  if (!v46)
  {
    goto LABEL_9;
  }

  if (v46 == 1)
  {
LABEL_10:
    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v13 = *(&v46 + 1);
  if (!*(&v46 + 1) || (v14 = v47) == 0 || (v15 = *(&v47 + 1)) == 0 || !v48)
  {
LABEL_9:
    sub_1D6060924(&v46);
    goto LABEL_10;
  }

  v16 = *(&v48 + 1);
  v43 = *(&v49 + 1);
  v44 = v49;
  v34 = *(&v50 + 1);
  v42 = v50;
  v17 = *(&v51 + 1);
  v45 = v51;
  v40 = v48;

  v41 = v15;

  v37 = v14;

  v18 = MEMORY[0x1E69E7CC0];
  v19 = sub_1D5BFC85C(MEMORY[0x1E69E7CC0], &qword_1EDF1A380, MEMORY[0x1E69E6530]);
  sub_1D6059F40(0);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  v21 = v44;
  v36 = v20;
  v38 = v17;
  v39 = v16;
  if (v44)
  {

    v22 = v43;

    v23 = v42;

    v24 = v34;

    v35 = v21;
  }

  else
  {

    v22 = v43;

    v24 = v34;

    sub_1D72593BC();
    sub_1D5E3A4FC(0);
    v25 = swift_allocObject();
    (*(v5 + 32))(v25 + *(*v25 + 112), v8, v4);
    v26 = *(*v25 + 120);
    v35 = v25;
    *(v25 + v26) = MEMORY[0x1E69E7CC0];
    v23 = v42;
  }

  if (v22)
  {
    swift_retain_n();
    v42 = v22;
    if (v23)
    {
      goto LABEL_14;
    }
  }

  else
  {
    swift_retain_n();
    sub_1D72593BC();
    sub_1D5E3A4FC(0);
    v32 = swift_allocObject();
    (*(v5 + 32))(v32 + *(*v32 + 112), v8, v4);
    v33 = *(*v32 + 120);
    v42 = v32;
    *(v32 + v33) = MEMORY[0x1E69E7CC0];
    if (v23)
    {
LABEL_14:

      if (v24)
      {
        goto LABEL_15;
      }

LABEL_22:

      sub_1D72593BC();
      sub_1D5E3A4FC(0);
      v24 = swift_allocObject();
      (*(v5 + 32))(v24 + *(*v24 + 112), v8, v4);
      *(v24 + *(*v24 + 120)) = MEMORY[0x1E69E7CC0];
      v27 = v45;
      if (v45)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  sub_1D72593BC();
  sub_1D5E3A4FC(0);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + *(*v23 + 112), v8, v4);
  *(v23 + *(*v23 + 120)) = MEMORY[0x1E69E7CC0];
  if (!v24)
  {
    goto LABEL_22;
  }

LABEL_15:

  v27 = v45;
  if (!v45)
  {
LABEL_16:
    sub_1D5E3A600();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = MEMORY[0x1E69E7CC0];
  }

LABEL_17:
  sub_1D6060924(&v46);

  v28 = v38;
  if (!v38)
  {
    sub_1D5E3A600();
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = MEMORY[0x1E69E7CC0];
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  v29 = v36;
  *(a2 + 16) = v37;
  *(a2 + 24) = v29;
  v30 = v40;
  *(a2 + 32) = v41;
  *(a2 + 40) = v30;
  v31 = v35;
  *(a2 + 48) = v39;
  *(a2 + 56) = v31;
  *(a2 + 64) = v42;
  *(a2 + 72) = v23;
  *(a2 + 80) = v24;
  *(a2 + 88) = v27;
  *(a2 + 96) = v28;
}

uint64_t static FeedGroupGroupingRules.noRules.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D72593CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E3A600();
  v8 = v7;
  v9 = swift_allocObject();
  v33 = v9;
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = 1000;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v32 = v11;
  *(v11 + 16) = 1000;
  *(v11 + 24) = v10;
  v28 = v8;
  v12 = swift_allocObject();
  v31 = v12;
  *(v12 + 16) = 1000;
  *(v12 + 24) = v10;
  v13 = sub_1D5BFC85C(v10, &qword_1EDF1A380, MEMORY[0x1E69E6530]);
  sub_1D6059F40(0);
  v14 = swift_allocObject();
  v30 = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  v15 = swift_allocObject();
  v29 = v15;
  *(v15 + 16) = 1000;
  *(v15 + 24) = v10;
  sub_1D605A160(0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0x3FF0000000000000;
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  *(v16 + 40) = 0;
  *(v16 + 48) = MEMORY[0x1E69E7CD0];
  *(v16 + 56) = v10;
  sub_1D72593BC();
  sub_1D5E3A4FC(0);
  v17 = swift_allocObject();
  v18 = *(v3 + 32);
  v18(v17 + *(*v17 + 112), v6, v2);
  *(v17 + *(*v17 + 120)) = v10;
  sub_1D72593BC();
  v19 = swift_allocObject();
  v20 = v2;
  v18(v19 + *(*v19 + 112), v6, v2);
  *(v19 + *(*v19 + 120)) = MEMORY[0x1E69E7CC0];
  sub_1D72593BC();
  v21 = swift_allocObject();
  v18(v21 + *(*v21 + 112), v6, v20);
  *(v21 + *(*v21 + 120)) = MEMORY[0x1E69E7CC0];
  sub_1D72593BC();
  v22 = swift_allocObject();
  v18(v22 + *(*v22 + 112), v6, v20);
  v23 = MEMORY[0x1E69E7CC0];
  *(v22 + *(*v22 + 120)) = MEMORY[0x1E69E7CC0];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v23;
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v23;
  v26 = v32;
  *a1 = v33;
  a1[1] = v26;
  v27 = v30;
  a1[2] = v31;
  a1[3] = v27;
  a1[4] = v29;
  a1[5] = v16;
  a1[6] = 0;
  a1[7] = v17;
  a1[8] = v19;
  a1[9] = v21;
  a1[10] = v22;
  a1[11] = v24;
  a1[12] = result;
  return result;
}

double FeedGroupGroupingRules.merge(with:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v34 = a1[3];
  v23 = a1[4];
  v24 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v9 = a1[8];
  v8 = a1[9];
  v10 = a1[10];
  v22 = a1[11];
  v25 = v2[2];
  v26 = v2[1];
  v33 = v2[4];
  v31 = v2[7];
  v32 = v2[5];
  v29 = v2[9];
  v30 = v2[8];
  v27 = v2[11];
  v28 = v2[10];
  v19 = v2[6];
  v20 = v2[12];
  if (*a1)
  {
    v21 = *a1;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:

    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v21 = *v2;

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v26 = v4;
  if (v5)
  {
LABEL_4:
    v25 = v5;
    goto LABEL_8;
  }

LABEL_7:

LABEL_8:

  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1D5BFC85C(MEMORY[0x1E69E7CC0], &qword_1EDF1A380, MEMORY[0x1E69E6530]);
  sub_1D6059F40(0);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  if (v34)
  {
    v33 = v34;
  }

  else
  {
  }

  if (v23)
  {
    v14 = v10;
    v32 = v23;
  }

  else
  {

    v14 = v10;
  }

  v15 = v24;
  if (v24)
  {
    if (v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v15 = v19;

    v14 = v10;
    if (v6)
    {
LABEL_16:
      v31 = v6;
      if (v7)
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }

  v14 = v10;
  if (v7)
  {
LABEL_17:
    v30 = v7;
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_23:

    v14 = v10;
    if (v8)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

LABEL_22:

  v14 = v10;
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_18:
  v29 = v9;
  if (v8)
  {
LABEL_19:
    v28 = v8;
    goto LABEL_25;
  }

LABEL_24:

  v14 = v10;
LABEL_25:
  if (v14)
  {
    v27 = v14;
  }

  else
  {
  }

  v16 = v15;
  if (v22)
  {
    v17 = v22;
  }

  else
  {
    v17 = v20;
  }

  *a2 = v21;
  a2[1] = v26;
  a2[2] = v25;
  a2[3] = v13;
  a2[4] = v33;
  a2[5] = v32;
  a2[6] = v16;
  a2[7] = v31;
  a2[8] = v30;
  a2[9] = v29;
  a2[10] = v28;
  a2[11] = v27;
  a2[12] = v17;

  return result;
}

uint64_t FeedGroupGroupingRules.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v73 = a2;
  v3 = sub_1D72593CC();
  v75 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2BC18(0, &qword_1EDF03BC0, sub_1D605A2E0, &type metadata for FeedGroupGroupingRules.CodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v74 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v55 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D605A2E0();
  v12 = v76;
  sub_1D7264B0C();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v70 = v6;
  v71 = v3;
  v68 = a1;
  sub_1D5E3A600();
  LOBYTE(v83) = 0;
  sub_1D5BABC90(&qword_1EDF36700, sub_1D5E3A600, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  v14 = v11;
  sub_1D726421C();
  if (v84)
  {
    v66 = v84;
  }

  else
  {
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E7CC0];
    *(v15 + 16) = 1000;
    *(v15 + 24) = v16;
    v66 = v15;
  }

  LOBYTE(v83) = 1;
  v17 = v8;
  sub_1D726421C();
  if (v84)
  {
    v64 = v84;
  }

  else
  {
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 16) = 1000;
    *(v18 + 24) = v19;
    v64 = v18;
  }

  LOBYTE(v83) = 2;
  sub_1D726421C();
  v67 = 0;
  if (v84)
  {
    v63 = v84;
  }

  else
  {
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E7CC0];
    *(v20 + 16) = 1000;
    *(v20 + 24) = v21;
    v63 = v20;
  }

  sub_1D6059F40(0);
  LOBYTE(v83) = 3;
  sub_1D5BABC90(&qword_1EDF13E58, sub_1D6059F40, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  sub_1D726421C();
  if (v84)
  {
    v62 = v84;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v23 = sub_1D5BFC85C(MEMORY[0x1E69E7CC0], &qword_1EDF1A380, MEMORY[0x1E69E6530]);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v22;
    v62 = v24;
  }

  LOBYTE(v83) = 4;
  sub_1D726421C();
  if (v84)
  {
    v61 = v84;
  }

  else
  {
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E7CC0];
    *(v25 + 16) = 1000;
    *(v25 + 24) = v26;
    v61 = v25;
  }

  sub_1D605A160(0);
  LOBYTE(v83) = 5;
  sub_1D5BABC90(&qword_1EDF13EA0, sub_1D605A160, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  sub_1D726421C();
  if (v84)
  {
    v60 = v84;
  }

  else
  {
    v27 = swift_allocObject();
    *(v27 + 16) = 0x3FF0000000000000;
    *(v27 + 24) = 0;
    *(v27 + 32) = 1;
    *(v27 + 40) = 0;
    v28 = MEMORY[0x1E69E7CC0];
    *(v27 + 48) = MEMORY[0x1E69E7CD0];
    *(v27 + 56) = v28;
    v60 = v27;
  }

  sub_1D605A334();
  LOBYTE(v83) = 6;
  sub_1D5BABC90(&qword_1EDF36710, sub_1D605A334, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  sub_1D726421C();
  v59 = v84;
  sub_1D5E3A4FC(0);
  LOBYTE(v82) = 7;
  sub_1D5BABC90(&qword_1EDF13ED8, sub_1D5E3A4FC, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  sub_1D726421C();
  v29 = v83;
  LOBYTE(v81) = 8;
  sub_1D726421C();
  v72 = v82;
  LOBYTE(v80) = 9;
  sub_1D726421C();
  v58 = v81;
  LOBYTE(v79) = 10;
  sub_1D726421C();
  v76 = v80;
  LOBYTE(v78) = 11;
  sub_1D726421C();
  v30 = v79;
  v77 = 12;
  sub_1D726421C();
  v69 = v30;
  v57 = v78;
  if (v29)
  {
    v65 = v29;
    v31 = v70;
    v32 = v71;
  }

  else
  {
    v31 = v70;
    sub_1D72593BC();
    v33 = swift_allocObject();
    v32 = v71;
    (*(v75 + 32))(v33 + *(*v33 + 112), v31, v71);
    v34 = *(*v33 + 120);
    v65 = v33;
    *(v33 + v34) = MEMORY[0x1E69E7CC0];
    v30 = v69;
  }

  v35 = v72;
  v36 = v76;
  if (v72)
  {

    v56 = v35;
  }

  else
  {

    sub_1D72593BC();
    v37 = swift_allocObject();
    v38 = v31;
    v39 = v37;
    (*(v75 + 32))(v37 + *(*v37 + 112), v38, v32);
    v36 = v76;
    v40 = *(*v39 + 120);
    v56 = v39;
    *(v39 + v40) = MEMORY[0x1E69E7CC0];
  }

  v41 = v58;
  if (v58)
  {

    v42 = v41;
  }

  else
  {

    v43 = v70;
    sub_1D72593BC();
    v42 = swift_allocObject();
    v30 = v69;
    (*(v75 + 32))(v42 + *(*v42 + 112), v43, v71);
    v36 = v76;
    *(v42 + *(*v42 + 120)) = MEMORY[0x1E69E7CC0];
  }

  v44 = v57;
  if (v36)
  {

    v45 = v36;
    if (v30)
    {
      goto LABEL_32;
    }

LABEL_35:
    v30 = swift_allocObject();
    v47 = MEMORY[0x1E69E7CC0];
    *(v30 + 16) = 0;
    *(v30 + 24) = v47;
    if (v44)
    {
      goto LABEL_33;
    }

LABEL_36:

    (*(v74 + 8))(v14, v17);
    v44 = swift_allocObject();
    v48 = MEMORY[0x1E69E7CC0];
    *(v44 + 16) = 0;
    *(v44 + 24) = v48;
    goto LABEL_37;
  }

  v46 = v70;
  sub_1D72593BC();
  v45 = swift_allocObject();
  v30 = v69;
  (*(v75 + 32))(v45 + *(*v45 + 112), v46, v71);
  *(v45 + *(*v45 + 120)) = MEMORY[0x1E69E7CC0];
  if (!v30)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (!v44)
  {
    goto LABEL_36;
  }

LABEL_33:

  (*(v74 + 8))(v14, v17);
LABEL_37:
  v49 = v73;
  v50 = v63;
  v51 = v64;
  *v73 = v66;
  v49[1] = v51;
  v49[2] = v50;
  v52 = v61;
  v49[3] = v62;
  v49[4] = v52;
  v53 = v59;
  v49[5] = v60;
  v49[6] = v53;
  v54 = v56;
  v49[7] = v65;
  v49[8] = v54;
  v49[9] = v42;
  v49[10] = v45;
  v49[11] = v30;
  v49[12] = v44;
  return __swift_destroy_boxed_opaque_existential_1(v68);
}

unint64_t sub_1D6059470(char a1)
{
  result = 0x7669446369706F74;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 8:
      result = 0xD000000000000023;
      break;
    case 9:
      result = 0xD000000000000025;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_1D6059624@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D605EEB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D605964C(uint64_t a1)
{
  v2 = sub_1D605A2E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6059688(uint64_t a1)
{
  v2 = sub_1D605A2E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupGroupingRules.encode(to:)(void *a1)
{
  sub_1D5C2BC18(0, &qword_1EDF028D0, sub_1D605A2E0, &type metadata for FeedGroupGroupingRules.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v29 = v1[2];
  v30 = v9;
  v12 = v1[5];
  v27 = v1[4];
  v28 = v11;
  v13 = v1[7];
  v25 = v1[6];
  v26 = v12;
  v14 = v1[9];
  v23 = v1[8];
  v24 = v13;
  v15 = v1[11];
  v21 = v1[10];
  v22 = v14;
  v19 = v1[12];
  v20 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D605A2E0();

  sub_1D7264B5C();
  v33 = v10;
  v32 = 0;
  sub_1D5E3A600();
  sub_1D5BABC90(&qword_1EDF13E08, sub_1D5E3A600, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  v16 = v31;
  sub_1D726443C();
  if (v16)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v17 = v29;

    v33 = v30;
    v32 = 1;
    sub_1D726443C();
    v33 = v17;
    v32 = 2;
    sub_1D726443C();
    v33 = v28;
    v32 = 3;
    sub_1D6059F40(0);
    sub_1D5BABC90(&qword_1EDF13E60, sub_1D6059F40, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D726443C();
    v33 = v27;
    v32 = 4;
    sub_1D726443C();
    v33 = v26;
    v32 = 5;
    sub_1D605A160(0);
    sub_1D5BABC90(&qword_1EDF13EA8, sub_1D605A160, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D726443C();
    v33 = v25;
    v32 = 6;
    sub_1D605A334();
    sub_1D5BABC90(&qword_1EDF13E10, sub_1D605A334, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D72643BC();
    v33 = v24;
    v32 = 7;
    sub_1D5E3A4FC(0);
    sub_1D5BABC90(&qword_1EDF13EE0, sub_1D5E3A4FC, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    v31 = v4;
    sub_1D726443C();
    v33 = v23;
    v32 = 8;
    sub_1D726443C();
    v33 = v22;
    v32 = 9;
    sub_1D726443C();
    v33 = v21;
    v32 = 10;
    sub_1D726443C();
    v33 = v20;
    v32 = 11;
    sub_1D726443C();
    v33 = v19;
    v32 = 12;
    sub_1D726443C();
    return (*(v5 + 8))(v8, v31);
  }
}

unint64_t sub_1D6059D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60608B0(0, &qword_1EDF1A3B8, sub_1D60603A0, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D6059E44(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D5B69D90(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D6059F40(uint64_t a1)
{
  if (!qword_1EDF13E48)
  {
    sub_1D5BBDECC(255, &qword_1EDF1B810, MEMORY[0x1E69E6530], MEMORY[0x1E69E5E28]);
    v5[0] = v2;
    v5[1] = sub_1D605A044(&unk_1EDF05678, MEMORY[0x1E69E6190], MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    v5[2] = sub_1D605A044(&qword_1EDF05690, MEMORY[0x1E69E6160], MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
    v5[3] = sub_1D605A0CC();
    v3 = type metadata accessor for FeedGroupKnobsRuleValue(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDF13E48);
    }
  }
}

uint64_t sub_1D605A044(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BBDECC(255, &qword_1EDF1B810, MEMORY[0x1E69E6530], MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D605A0CC()
{
  result = qword_1EDF05688;
  if (!qword_1EDF05688)
  {
    sub_1D5BBDECC(255, &qword_1EDF1B810, MEMORY[0x1E69E6530], MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05688);
  }

  return result;
}

void sub_1D605A160(uint64_t a1)
{
  if (!qword_1EDF13E90)
  {
    v4[0] = &type metadata for FeedGroupTopicDiversityRequirements;
    v4[1] = sub_1D605A1E4();
    v4[2] = sub_1D605A238();
    v4[3] = sub_1D605A28C();
    v2 = type metadata accessor for FeedGroupKnobsRuleValue(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF13E90);
    }
  }
}

unint64_t sub_1D605A1E4()
{
  result = qword_1EDF13148;
  if (!qword_1EDF13148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13148);
  }

  return result;
}

unint64_t sub_1D605A238()
{
  result = qword_1EDF13160;
  if (!qword_1EDF13160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13160);
  }

  return result;
}

unint64_t sub_1D605A28C()
{
  result = qword_1EDF13158;
  if (!qword_1EDF13158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13158);
  }

  return result;
}

unint64_t sub_1D605A2E0()
{
  result = qword_1EDF14228;
  if (!qword_1EDF14228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14228);
  }

  return result;
}

void sub_1D605A334()
{
  if (!qword_1EDF36708)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E63B0];
    v4[1] = MEMORY[0x1E69E63E8];
    v4[2] = MEMORY[0x1E69E63C0];
    v4[3] = MEMORY[0x1E69E63E0];
    v2 = type metadata accessor for FeedGroupKnobsRuleValue(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF36708);
    }
  }
}

unint64_t sub_1D605A3B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF04000, &type metadata for SportsTaxonomyGraphNode, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605A4CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF1A4F8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605A62C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60608B0(0, &qword_1EDF03F40, sub_1D5B9EE48, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605A7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1D60608B0(0, a2, a3, MEMORY[0x1E69E6EC8]);
    v7 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = a4(v9, v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605A92C(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF1B648, type metadata accessor for PuzzleStatistic);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EDF04060, type metadata accessor for PuzzleStatistic, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF1B648, type metadata accessor for PuzzleStatistic);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for PuzzleStatistic(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for PuzzleStatistic);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605AB54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF04010, &type metadata for FormatPuzzleStatistic, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v7;
      v15[1] = v8;
      v15[2] = v9;
      v15[3] = v10;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605AD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D6060548(0, &qword_1EC895A50, &qword_1EDF1AE20, &qword_1EDF3C6B0, 0x1E69B5578);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605AE4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605FD20(0);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605AF40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60608B0(0, &qword_1EDF1A328, sub_1D605FE1C, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      sub_1D5EE6588(v7);
      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B0B0(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF1B638, type metadata accessor for FormatCompilerProperty);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882E00, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF1B638, type metadata accessor for FormatCompilerProperty);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for FormatCompilerProperty(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for FormatCompilerProperty);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B2D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D60607E0(0);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 16);
      v6 = *(i - 1);
      v7 = *i;
      v8 = v6;
      result = sub_1D6D62820(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 16 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B3C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D6060548(0, &unk_1EC882E98, &qword_1EDF04A60, &qword_1EDF04670, 0x1E69B5520);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B514(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BFFDBC(0, &qword_1EDF1A4B8, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType, sub_1D5B49474);
    v3 = sub_1D726412C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D5C16A40(v4, &v13, &unk_1EC882EA8, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
      v5 = v13;
      v6 = v14;
      result = sub_1D5B69D90(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D5B63F14(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B66C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF040E0, &type metadata for FeedItemAuxiliary, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v9 = i[2];
      v10 = i[3];
      v11 = i[4];
      v12 = i[5];

      result = sub_1D5B69D90(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v9;
      v16[3] = v10;
      v16[4] = v11;
      v16[5] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605B7D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D5BBDECC(0, &qword_1EDF1A3F0, &type metadata for FormatStateMachineBinding, MEMORY[0x1E69E6EC8]);
  v3 = sub_1D726412C();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_1D5BE12C0(&v27, v26, &qword_1EC882DF8, MEMORY[0x1E69E6158], &type metadata for FormatStateMachineBinding);
  result = sub_1D5B69D90(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 96);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_1D5BE12C0(&v27, v26, &qword_1EC882DF8, MEMORY[0x1E69E6158], &type metadata for FormatStateMachineBinding);
    result = sub_1D5B69D90(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D605BA24(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1D5BBDECC(0, &qword_1EC882D78, &type metadata for GenericDataVisualizationResponseItem, MEMORY[0x1E69E6EC8]);
    v5 = sub_1D726412C();

    for (i = (a1 + 64); ; i += 5)
    {
      v7 = *(i - 4);
      v8 = *(i - 3);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;

      result = a2(v7, v8);
      if (v13)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v5[6] + 16 * result);
      *v14 = v7;
      v14[1] = v8;
      v15 = (v5[7] + 24 * result);
      *v15 = v10;
      v15[1] = v9;
      v15[2] = v11;
      v16 = v5[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v5[2] = v18;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605BB84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1D5BFFDBC(0, a2, a3, a4, sub_1D5B5A498);
    v6 = sub_1D726412C();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_1D5B69D90(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605BCD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F460(0, &unk_1EC882D20, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    v3 = sub_1D726412C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605BE04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D5BBDECC(0, &qword_1EDF04050, &type metadata for PuzzleTypeStats, MEMORY[0x1E69E6EC8]);
  v3 = sub_1D726412C();

  v4 = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = v4;
  v5 = *(a1 + 80);
  v27 = *(a1 + 64);
  v28 = v5;
  v29 = *(a1 + 96);
  v7 = *(&v25 + 1);
  v6 = v25;
  sub_1D5BE12C0(&v25, v24, &qword_1EC882D48, MEMORY[0x1E69E6158], &type metadata for PuzzleTypeStats);
  result = sub_1D5B69D90(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  v11 = MEMORY[0x1E69E6158];
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v6;
    v12[1] = v7;
    v13 = (v3[7] + (result << 6));
    v14 = v26;
    v15 = v27;
    v16 = v29;
    v13[2] = v28;
    v13[3] = v16;
    *v13 = v14;
    v13[1] = v15;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = v10 + 5;
    v21 = v10[1];
    v25 = *v10;
    v26 = v21;
    v22 = v10[3];
    v27 = v10[2];
    v28 = v22;
    v29 = v10[4];
    v7 = *(&v25 + 1);
    v6 = v25;
    sub_1D5BE12C0(&v25, v24, &qword_1EC882D48, v11, &type metadata for PuzzleTypeStats);
    result = sub_1D5B69D90(v6, v7);
    v10 = v20;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D605C00C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D605F594(0, &qword_1EC882D40, sub_1D5B81B04, MEMORY[0x1E69E7360], MEMORY[0x1E69E7370]);
  v3 = sub_1D726412C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D5C5E034(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D5C5E034(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D605C134(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F534();
    v3 = sub_1D726412C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D5C5E034(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605C204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D605F4D4();
    v3 = sub_1D726412C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D5C5E034(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605C2D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BFFDBC(0, &qword_1EC882EF0, &unk_1EC895A00, MEMORY[0x1E69E5E78], sub_1D5B49474);
    v3 = sub_1D726412C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D5C16A40(v4, &v13, &unk_1EC882F00, &unk_1EC895A00, MEMORY[0x1E69E5E78]);
      v5 = v13;
      v6 = v14;
      result = sub_1D5B69D90(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D5B63F14(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D605C430(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EC882DA8, type metadata accessor for DebugFormatWorkspace);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882DB0, type metadata accessor for DebugFormatWorkspace, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EC882DA8, type metadata accessor for DebugFormatWorkspace);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for DebugFormatWorkspace(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for DebugFormatWorkspace);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D605C684(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  a2(0);
  v6 = sub_1D726412C();
  LOBYTE(v7) = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = a3(v7);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v6;
  }

  v11 = v9;
  result = v8;
  v13 = (a1 + 56);
  while (1)
  {
    *(v6 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v6[6] + v11) = v7;
    *(v6[7] + 8 * v11) = result;
    v14 = v6[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v6[2] = v16;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v17 = v13 + 2;
    v7 = *(v13 - 8);
    v18 = *v13;

    v11 = a3(v7);
    v13 = v17;
    result = v18;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed0B18GroupGroupingRulesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2, __n128 a3)
{
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v4 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v36 = a1[7];
  v37 = a1[6];
  v34 = a1[8];
  v32 = a1[9];
  v30 = a1[10];
  v28 = a1[11];
  v26 = a1[12];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  v38 = a2[6];
  v35 = a2[7];
  v33 = a2[8];
  v31 = a2[9];
  v29 = a2[10];
  v27 = a2[11];
  v25 = a2[12];
  sub_1D635E760(*(*a1 + 24), *(*a2 + 24));
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  if (*(v4 + 16) != *(v8 + 16))
  {
    return 0;
  }

  sub_1D635E760(*(v4 + 24), *(v8 + 24));
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 16) != *(v9 + 16))
  {
    return 0;
  }

  sub_1D635E760(*(v3 + 24), *(v9 + 24));
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D5E2D074(*(v5 + 16), *(v11 + 16)) & 1) == 0)
  {
    return 0;
  }

  sub_1D635F338(*(v5 + 24), *(v11 + 24));
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (*(v6 + 16) != *(v10 + 16))
  {
    return 0;
  }

  sub_1D635E760(*(v6 + 24), *(v10 + 24));
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  sub_1D6EC7100(v7, v12);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    if (*(v37 + 16) != *(v38 + 16))
    {
      return 0;
    }

    v19 = *(v37 + 24);
    v20 = *(v38 + 24);

    sub_1D635E9D0(v19, v20);
    LOBYTE(v19) = v21;

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  sub_1D72593CC();
  sub_1D5BABC90(&unk_1EDF188C0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E34B8]);
  if ((sub_1D7261FBC() & 1) != 0 && (sub_1D635D780(*(v36 + *(*v36 + 120)), *(v35 + *(*v35 + 120))) & 1) != 0 && (sub_1D7261FBC() & 1) != 0 && (sub_1D635D780(*(v34 + *(*v34 + 120)), *(v33 + *(*v33 + 120))) & 1) != 0 && (sub_1D7261FBC() & 1) != 0 && (sub_1D635D780(*(v32 + *(*v32 + 120)), *(v31 + *(*v31 + 120))) & 1) != 0 && (sub_1D7261FBC() & 1) != 0 && (sub_1D635D780(*(v30 + *(*v30 + 120)), *(v29 + *(*v29 + 120))) & 1) != 0 && *(v28 + 16) == *(v27 + 16))
  {
    sub_1D635E760(*(v28 + 24), *(v27 + 24));
    if ((v22 & 1) != 0 && *(v26 + 16) == *(v25 + 16))
    {
      sub_1D635E760(*(v26 + 24), *(v25 + 24));
      if (v23)
      {
        return 1;
      }
    }
  }

  return 0;
}