uint64_t sub_29E4961AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4FBAA0();
  v76 = *(v4 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v74 = v59 - v8;
  v75 = sub_29E4FB240();
  v66 = *(v75 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v75);
  v67 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v65 = v59 - v11;
  sub_29E49684C(0, &qword_2A1A706D0, sub_29E496A28, MEMORY[0x29EDC9C68]);
  v13 = MEMORY[0x2A1C7C4A8](v12 - 8);
  result = MEMORY[0x2A1C7C4A8](v13);
  v69 = v59 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v68 = v15;
  v63 = v7;
  v64 = a2;
  v17 = 0;
  v60 = a1;
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
  v24 = (v21 + 63) >> 6;
  v59[0] = v19;
  v59[1] = v66 + 16;
  v70 = v76 + 16;
  v72 = (v66 + 32);
  v71 = (v76 + 32);
  v61 = (v66 + 8);
  v62 = (v76 + 8);
  while (v23)
  {
    v73 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
    v32 = v60;
    v34 = v65;
    v33 = v66;
    v35 = v75;
    (*(v66 + 16))(v65, *(v60 + 48) + *(v66 + 72) * v25, v75);
    v36 = *(v32 + 56);
    v37 = v76;
    v38 = v74;
    (*(v76 + 16))(v74, v36 + *(v76 + 72) * v25, v4);
    sub_29E496A28(0);
    v40 = v39;
    v41 = *(v39 + 48);
    v42 = *(v33 + 32);
    v29 = v68;
    v42(v68, v34, v35);
    (*(v37 + 32))(v29 + v41, v38, v4);
    (*(*(v40 - 8) + 56))(v29, 0, 1, v40);
    v28 = v69;
LABEL_17:
    sub_29E496A9C(v29, v28, &qword_2A1A706D0, sub_29E496A28);
    sub_29E496A28(0);
    v43 = (*(*(v40 - 8) + 48))(v28, 1, v40);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = *(v40 + 48);
    v46 = v67;
    v47 = v75;
    (*v72)(v67, v28, v75);
    v48 = v63;
    (*v71)(v63, v28 + v45, v4);
    v49 = v64;
    v50 = sub_29E49ED7C(v46);
    v52 = v51;
    (*v61)(v46, v47);
    if ((v52 & 1) == 0)
    {
      (*v62)(v48, v4);
      return 0;
    }

    v53 = v76;
    v54 = *(v49 + 56) + *(v76 + 72) * v50;
    v55 = v74;
    (*(v76 + 16))(v74, v54, v4);
    sub_29E4BFA6C(&qword_2A184B710, 255, MEMORY[0x29EDC1A38], MEMORY[0x29EDC1A48]);
    v56 = sub_29E4FC680();
    v57 = *(v53 + 8);
    v57(v55, v4);
    result = (v57)(v48, v4);
    v23 = v73;
    if ((v56 & 1) == 0)
    {
      return v44;
    }
  }

  if (v24 <= v17 + 1)
  {
    v26 = v17 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  v29 = v68;
  v28 = v69;
  while (1)
  {
    v30 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v30 >= v24)
    {
      sub_29E496A28(0);
      v40 = v58;
      (*(*(v58 - 8) + 56))(v29, 1, 1, v58);
      v73 = 0;
      v17 = v27;
      goto LABEL_17;
    }

    v31 = *(v59[0] + 8 * v30);
    ++v17;
    if (v31)
    {
      v73 = (v31 - 1) & v31;
      v25 = __clz(__rbit64(v31)) | (v30 << 6);
      v17 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_29E4967E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E49684C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E4968B0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_29E4FCF80() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_29E4FCF80() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

__n128 sub_29E496978(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_29E49698C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_29E4969BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

void sub_29E496A28(uint64_t a1)
{
  if (!qword_2A1A706D8)
  {
    sub_29E4FB240();
    sub_29E4FBAA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A706D8);
    }
  }
}

uint64_t sub_29E496A9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E49684C(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_29E496B6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_29E496BC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29E4FC6F0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29E496C50()
{
  sub_29E4A17A0(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E496CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_29E496DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_29E496F08()
{
  v1 = sub_29E4FB240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E496F90()
{

  return MEMORY[0x2A1C733A0](v0, 41, 7);
}

uint64_t sub_29E496FD0()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497010()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497058()
{

  return MEMORY[0x2A1C733A0](v0, 64, 7);
}

uint64_t sub_29E4970A0()
{

  return MEMORY[0x2A1C733A0](v0, 40, 7);
}

uint64_t sub_29E4970D8()
{
  MEMORY[0x29ED8BEA0](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497110()
{

  return MEMORY[0x2A1C733A0](v0, 48, 7);
}

uint64_t sub_29E4971C4()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E4971FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_29E4972F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E4B6854(0, &qword_2A1A70650, MEMORY[0x29EDC3850], MEMORY[0x29EDC9C68]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_29E497408()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E497440()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E497488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E4C5E10(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_29E497548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_29E4C5E10(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }
}

uint64_t sub_29E49767C()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E4976B8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E4976F8()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E497730()
{
  v1 = sub_29E4FB240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  sub_29E4A1754((v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E497800()
{
  MEMORY[0x29ED8BEA0](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E497838()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497874()
{
  v1 = sub_29E4FB240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_29E497944()
{
  v1 = sub_29E4FBFE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E497A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E4FB7F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_29E4FB1E0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_29E497B04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_29E4FB7F0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_29E4FB1E0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_29E497C74()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497CAC()
{
  v1 = sub_29E4FBAA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2A1C733A0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_29E497D48()
{
  v1 = sub_29E4FBAA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E497E7C()
{

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E497ECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4FB1E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_29E497F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4FB1E0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_29E497FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_29E4FB2A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_29E498054(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_29E4FB2A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_29E498160()
{
  MEMORY[0x29ED8BEA0](v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E498198()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E4981D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_29E4FB240();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_29E498248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_29E4FB240();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_29E4982C4()
{
  swift_weakDestroy();

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29E4982FC()
{

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29E498334(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_29E498380@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v34 - v5;
  sub_29E4A1BE8(0, &qword_2A184B288, MEMORY[0x29EDC9E80]);
  v8 = v7;
  v38 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for SharingProfileInformationWorkPlanInfo(0);
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = 0;
  v39 = v12;
  v15 = *(v12 + 20);
  v16 = sub_29E4FB910();
  v17 = *(*(v16 - 8) + 56);
  v41 = v15;
  v17(v14 + v15, 1, 1, v16);
  v18 = a1[3];
  v40 = a1;
  sub_29E4A1710(a1, v18);
  sub_29E4A1A44();
  sub_29E4FD070();
  if (v2)
  {
    v20 = v41;
    sub_29E4A1754(v40);
    sub_29E4A2278(v14 + v20, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  }

  else
  {
    v19 = v38;
    LOBYTE(v42) = 1;
    sub_29E4A3A90(&unk_2A1A705B0, 255, MEMORY[0x29EDC1958], MEMORY[0x29EDC1970]);
    sub_29E4FCEA0();
    sub_29E4A1A98(v6, v14 + v41);
    LOBYTE(v42) = 2;
    v22 = sub_29E4FCEB0();
    v23 = v39;
    v24 = (v14 + *(v39 + 24));
    *v24 = v22;
    v24[1] = v25;
    LOBYTE(v42) = 3;
    v26 = sub_29E4FCEB0();
    v27 = (v14 + *(v23 + 28));
    *v27 = v26;
    v27[1] = v28;
    v44 = 0;
    sub_29E4A1B2C();
    sub_29E4FCEA0();
    v36 = v8;
    v29 = v43;
    if (v43 >> 60 == 15)
    {
      (*(v19 + 8))(v10, v36);
      v30 = v37;
    }

    else
    {
      v31 = v42;
      sub_29E4A2AD8(0, &qword_2A184B2A0, 0x29EDBA000);
      sub_29E4A2AD8(0, &qword_2A1A70788, 0x29EDBAAA0);
      v35 = v31;
      v32 = sub_29E4FCA20();
      v33 = v37;
      (*(v19 + 8))(v10, v36);
      sub_29E4A1B80(v35, v29);
      v30 = v33;
      *v14 = v32;
    }

    sub_29E4A2E04(v14, v30, type metadata accessor for SharingProfileInformationWorkPlanInfo);
    sub_29E4A1754(v40);
    return sub_29E4A3B6C(v14, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  }
}

uint64_t sub_29E4988EC(void *a1)
{
  v3 = v1;
  v24 = *MEMORY[0x29EDCA608];
  sub_29E4A1BE8(0, &qword_2A184B2A8, MEMORY[0x29EDC9E88]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v21 - v8;
  sub_29E4A1710(a1, a1[3]);
  sub_29E4A1A44();
  sub_29E4FD080();
  v10 = type metadata accessor for SharingProfileInformationWorkPlanInfo(0);
  LOBYTE(v23) = 2;
  sub_29E4FCF30();
  if (v2)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v23 = *(v3 + *(v10 + 28));
  v22 = 3;
  sub_29E4A38CC(0, &qword_2A1A6F260, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
  sub_29E4A1C4C();
  sub_29E4FCF50();
  LOBYTE(v23) = 1;
  sub_29E4FB910();
  sub_29E4A3A90(&qword_2A1A705D0, 255, MEMORY[0x29EDC1958], MEMORY[0x29EDC1960]);
  sub_29E4FCF20();
  v12 = *v3;
  if (!v12)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v13 = objc_opt_self();
  *&v23 = 0;
  v14 = v12;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v23];
  v16 = v23;
  if (!v15)
  {
    v20 = v16;
    sub_29E4FB0E0();

    swift_willThrow();
    return (*(v7 + 8))(v9, v6);
  }

  v17 = sub_29E4FB160();
  v19 = v18;

  *&v23 = v17;
  *(&v23 + 1) = v19;
  v22 = 0;
  sub_29E4A1CE0();
  sub_29E4FCF50();
  (*(v7 + 8))(v9, v6);

  return sub_29E4A1B94(v17, v19);
}

uint64_t sub_29E498C68()
{
  v1 = *v0;
  sub_29E4FD030();
  MEMORY[0x29ED8B670](v1);
  return sub_29E4FD050();
}

uint64_t sub_29E498CDC(uint64_t a1)
{
  v2 = *v1;
  sub_29E4FD030();
  MEMORY[0x29ED8B670](v2);
  return sub_29E4FD050();
}

unint64_t sub_29E498D20()
{
  v1 = 0x737574617473;
  v2 = 0x6D614E6E65766967;
  if (*v0 != 2)
  {
    v2 = 0x614E796C696D6166;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_29E498DA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29E49F3B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29E498DE4(uint64_t a1)
{
  v2 = sub_29E4A1A44();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E498E20(uint64_t a1)
{
  v2 = sub_29E4A1A44();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E498E94(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = *v1;
  v3 = MEMORY[0x29EDC9C68];
  sub_29E4967E8(0, &qword_2A1A70BB0, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = sub_29E4FB460();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_29E4967E8(0, &qword_2A1A705D8, MEMORY[0x29EDC18E8], v3);
  v2[28] = swift_task_alloc();
  sub_29E4967E8(0, &qword_2A1A70650, MEMORY[0x29EDC3850], v3);
  v2[29] = swift_task_alloc();
  sub_29E4967E8(0, &qword_2A1A705E0, MEMORY[0x29EDC1740], v3);
  v2[30] = swift_task_alloc();
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], v3);
  v2[31] = swift_task_alloc();
  v5 = sub_29E4FB880();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v6 = sub_29E4FB7B0();
  v2[37] = v6;
  v2[38] = *(v6 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = type metadata accessor for SharingProfileInformationWorkPlanInfo(0);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  sub_29E4A1594(0);
  v2[46] = v7;
  v2[47] = *(v7 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v8 = sub_29E4FC3C0();
  v2[50] = v8;
  v2[51] = *(v8 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E499354, 0, 0);
}

uint64_t sub_29E499354()
{
  v51 = v0;
  swift_getObjectType();
  sub_29E4A3A90(&qword_2A184B270, v1, type metadata accessor for SharingProfileInformationExecutor, &unk_29E4FE03C);
  sub_29E4FB310();
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[19];
  v7 = *(v0[20] + 32);
  v0[58] = [v7 profileIdentifier];
  sub_29E4FC350();
  v8 = *(v5 + 16);
  v8(v2, v6, v4);
  v8(v3, v6, v4);
  v9 = sub_29E4FC3B0();
  v10 = sub_29E4FC940();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[57];
  v14 = v0[50];
  v13 = v0[51];
  v15 = v0[49];
  v49 = v0[48];
  v17 = v0[46];
  v16 = v0[47];
  if (v11)
  {
    log = v9;
    v18 = v0[45];
    v41 = v0[41];
    v42 = v0[44];
    v48 = v7;
    v19 = v0[21];
    v44 = v10;
    v20 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50[0] = v46;
    *v20 = 136446723;
    v0[18] = v19;
    swift_getMetatypeMetadata();
    v21 = sub_29E4FC700();
    v45 = v14;
    v23 = sub_29E4F68F4(v21, v22, v50);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2081;
    sub_29E4FC2A0();
    v43 = v12;
    v40 = *(v16 + 8);
    v40(v15, v17);
    v24 = (v18 + *(v41 + 24));
    v25 = *v24;
    v26 = v24[1];

    sub_29E4A3B6C(v18, type metadata accessor for SharingProfileInformationWorkPlanInfo);
    v27 = sub_29E4F68F4(v25, v26, v50);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2081;
    sub_29E4FC2A0();
    v28 = (v42 + *(v41 + 28));
    v29 = v13;
    v31 = *v28;
    v30 = v28[1];

    v7 = v48;
    sub_29E4A3B6C(v42, type metadata accessor for SharingProfileInformationWorkPlanInfo);
    if (v30)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    if (!v30)
    {
      v30 = 0xE000000000000000;
    }

    v40(v49, v17);
    v33 = sub_29E4F68F4(v32, v30, v50);

    *(v20 + 24) = v33;
    _os_log_impl(&dword_29E494000, log, v44, "[%{public}s]: Given name %{private}s, family name %{private}s fetched", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v46, -1, -1);
    MEMORY[0x29ED8BDB0](v20, -1, -1);

    v34 = *(v29 + 8);
    v34(v43, v45);
  }

  else
  {

    v35 = *(v16 + 8);
    v35(v49, v17);
    v35(v15, v17);
    v34 = *(v13 + 8);
    v34(v12, v14);
  }

  v0[59] = v34;
  v36 = swift_task_alloc();
  v0[60] = v36;
  *(v36 + 16) = v7;
  v37 = swift_task_alloc();
  v0[61] = v37;
  sub_29E4A38CC(0, &unk_2A1A708F8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
  *v37 = v0;
  v37[1] = sub_29E499970;

  return MEMORY[0x2A1C73C80](v0 + 13, 0, 0, 0xD000000000000012, 0x800000029E501900, sub_29E4A1708, v36, v38);
}

uint64_t sub_29E499970()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_29E49A050;
  }

  else
  {

    v2 = sub_29E499A8C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E499A8C()
{
  v55 = v0;
  *(v0 + 504) = *(v0 + 104);
  *(v0 + 113) = *(v0 + 112);
  sub_29E4FC350();
  v1 = sub_29E4FC3B0();
  v2 = sub_29E4FC940();
  if (os_log_type_enabled(v1, v2))
  {
    v50 = *(v0 + 472);
    v3 = *(v0 + 448);
    v4 = *(v0 + 400);
    v5 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v54 = v7;
    *v6 = 136315138;
    *(v0 + 136) = v5;
    swift_getMetatypeMetadata();
    v8 = sub_29E4FC700();
    v10 = sub_29E4F68F4(v8, v9, &v54);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_29E494000, v1, v2, "[%s]: dsid fetched", v6, 0xCu);
    sub_29E4A1754(v7);
    MEMORY[0x29ED8BDB0](v7, -1, -1);
    MEMORY[0x29ED8BDB0](v6, -1, -1);

    v50(v3, v4);
  }

  else
  {
    v11 = *(v0 + 472);
    v12 = *(v0 + 448);
    v13 = *(v0 + 400);

    v11(v12, v13);
  }

  v14 = *(v0 + 360);
  v15 = *(v0 + 344);
  v51 = *(v0 + 336);
  v16 = *(v0 + 328);
  v47 = *(v0 + 464);
  v48 = *(v0 + 248);
  sub_29E4FC2A0();

  sub_29E4A3B6C(v14, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  sub_29E4FC2A0();

  sub_29E4A3B6C(v15, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  v17 = v47;
  sub_29E4FB870();
  sub_29E4FB7A0();
  sub_29E4FC2A0();
  sub_29E4A22E8(v14 + *(v16 + 20), v48, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  sub_29E4A3B6C(v14, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  sub_29E4FB750();
  sub_29E4FC2A0();
  v18 = *v51;
  v19 = *v51;
  sub_29E4A3B6C(v51, type metadata accessor for SharingProfileInformationWorkPlanInfo);
  if (v18)
  {
    sub_29E4FC350();
    v20 = v19;
    v21 = sub_29E4FC3B0();
    v22 = sub_29E4FC940();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 472);
    v25 = *(v0 + 440);
    v26 = *(v0 + 400);
    if (v23)
    {
      v27 = *(v0 + 168);
      v53 = *(v0 + 400);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v54 = v29;
      *v28 = 136446466;
      *(v0 + 128) = v27;
      swift_getMetatypeMetadata();
      v30 = sub_29E4FC700();
      v32 = sub_29E4F68F4(v30, v31, &v54);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = v20;
      v34 = [v33 description];
      v49 = v25;
      v52 = v24;
      v35 = sub_29E4FC6F0();
      v37 = v36;

      v38 = sub_29E4F68F4(v35, v37, &v54);

      *(v28 + 14) = v38;
      _os_log_impl(&dword_29E494000, v21, v22, "[%{public}s]: received new syncResponse: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v29, -1, -1);
      MEMORY[0x29ED8BDB0](v28, -1, -1);

      v52(v49, v53);
    }

    else
    {

      v24(v25, v26);
    }

    v40 = *(v0 + 232);
    v39 = *(v0 + 240);
    v41 = sub_29E4FB470();
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    v42 = v20;
    sub_29E4FB830();
    v43 = sub_29E4FB820();
    (*(*(v43 - 8) + 56))(v39, 0, 1, v43);
    sub_29E4FB710();
  }

  v44 = swift_task_alloc();
  *(v0 + 512) = v44;
  *v44 = v0;
  v44[1] = sub_29E49A204;
  v45 = *(v0 + 224);

  return sub_29E49C534(v45);
}

uint64_t sub_29E49A050()
{
  v1 = v0[58];

  sub_29E4A1754(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_29E49A204()
{

  if (v0)
  {

    v1 = sub_29E49B9F8;
  }

  else
  {
    v1 = sub_29E49A31C;
  }

  return MEMORY[0x2A1C73D48](v1, 0, 0);
}

uint64_t sub_29E49A31C()
{
  v73 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 224);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_29E4A2278(v3, &qword_2A1A705D8, MEMORY[0x29EDC18E8]);
  }

  else
  {
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    (*(v2 + 32))(v4, v3, v1);
    sub_29E4FC350();
    v6 = *(v2 + 16);
    v6(v5, v4, v1);
    v7 = sub_29E4FC3B0();
    v8 = sub_29E4FC940();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 472);
    v11 = *(v0 + 432);
    v69 = *(v0 + 400);
    if (v9)
    {
      v12 = *(v0 + 288);
      log = v7;
      v14 = *(v0 + 264);
      v13 = *(v0 + 272);
      v68 = *(v0 + 432);
      v15 = *(v0 + 256);
      v66 = v8;
      v16 = *(v0 + 168);
      v67 = *(v0 + 472);
      v17 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v71 = v65;
      v72 = v16;
      *v17 = 136446466;
      swift_getMetatypeMetadata();
      v18 = sub_29E4FC700();
      v20 = sub_29E4F68F4(v18, v19, &v71);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      v6(v12, v13, v15);
      v21 = sub_29E4FC700();
      v23 = v22;
      v24 = *(v14 + 8);
      v24(v13, v15);
      v25 = sub_29E4F68F4(v21, v23, &v71);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_29E494000, log, v66, "[%{public}s]: received new activity move mode state: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v65, -1, -1);
      MEMORY[0x29ED8BDB0](v17, -1, -1);

      v67(v68, v69);
    }

    else
    {
      v27 = *(v0 + 264);
      v26 = *(v0 + 272);
      v28 = *(v0 + 256);

      v24 = *(v27 + 8);
      v24(v26, v28);
      v10(v11, v69);
    }

    v29 = *(v0 + 280);
    v30 = *(v0 + 256);
    v6(*(v0 + 288), v29, v30);
    sub_29E4FB730();
    v24(v29, v30);
  }

  v31 = *(v0 + 192);
  v32 = *(v0 + 200);
  v33 = *(v0 + 184);
  HealthKitProfileInformation.makePluginFeedItem()(v33);
  v34 = *(v32 + 48);
  *(v0 + 520) = v34;
  *(v0 + 528) = (v32 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v34(v33, 1, v31) == 1)
  {
    sub_29E4A2278(*(v0 + 184), &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    if (*(v0 + 113))
    {
      v35 = *(v0 + 464);
      (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));

      sub_29E4A1754((v0 + 16));

      v36 = *(v0 + 8);

      return v36();
    }

    else
    {
      sub_29E4FC350();
      v46 = sub_29E4FC3B0();
      v47 = sub_29E4FC940();
      v48 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 472);
      v50 = *(v0 + 424);
      v51 = *(v0 + 400);
      if (v48)
      {
        v52 = *(v0 + 168);
        v70 = *(v0 + 472);
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v72 = v54;
        *v53 = 136315138;
        *(v0 + 120) = v52;
        swift_getMetatypeMetadata();
        v55 = sub_29E4FC700();
        v57 = sub_29E4F68F4(v55, v56, &v72);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_29E494000, v46, v47, "[%s]: fetching photo", v53, 0xCu);
        sub_29E4A1754(v54);
        MEMORY[0x29ED8BDB0](v54, -1, -1);
        MEMORY[0x29ED8BDB0](v53, -1, -1);

        v70(v50, v51);
      }

      else
      {

        v49(v50, v51);
      }

      v58 = *(v0 + 160);
      v60 = v58[8];
      v59 = v58[9];
      sub_29E4A1710(v58 + 5, v60);
      v61 = swift_task_alloc();
      *(v0 + 560) = v61;
      *v61 = v0;
      v61[1] = sub_29E49B034;
      v62 = *(v0 + 504);
      v63.n128_u64[0] = 30.0;

      return MEMORY[0x2A1C60948](v62, v60, v59, v63);
    }
  }

  else
  {
    v38 = *(v0 + 216);
    v39 = *(v0 + 192);
    v40 = *(v0 + 200);
    (*(v40 + 32))(v38, *(v0 + 184), v39);
    v42 = *(v0 + 40);
    v41 = *(v0 + 48);
    sub_29E4A1710((v0 + 16), v42);
    sub_29E4967E8(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v44 = swift_allocObject();
    *(v0 + 536) = v44;
    *(v44 + 16) = xmmword_29E4FDE40;
    (*(v40 + 16))(v44 + v43, v38, v39);
    v45 = swift_task_alloc();
    *(v0 + 544) = v45;
    *v45 = v0;
    v45[1] = sub_29E49AB48;

    return MEMORY[0x2A1C64D80](v44, v42, v41);
  }
}

uint64_t sub_29E49AB48()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_29E49BF90;
  }

  else
  {
    v2 = sub_29E49AC7C;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E49AC7C()
{
  v24 = v0;
  (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  if (*(v0 + 113))
  {
    v1 = *(v0 + 464);
    (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));

    sub_29E4A1754((v0 + 16));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_29E4FC350();
    v4 = sub_29E4FC3B0();
    v5 = sub_29E4FC940();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 472);
    v8 = *(v0 + 424);
    v9 = *(v0 + 400);
    if (v6)
    {
      v10 = *(v0 + 168);
      v22 = *(v0 + 472);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      *(v0 + 120) = v10;
      swift_getMetatypeMetadata();
      v13 = sub_29E4FC700();
      v15 = sub_29E4F68F4(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_29E494000, v4, v5, "[%s]: fetching photo", v11, 0xCu);
      sub_29E4A1754(v12);
      MEMORY[0x29ED8BDB0](v12, -1, -1);
      MEMORY[0x29ED8BDB0](v11, -1, -1);

      v22(v8, v9);
    }

    else
    {

      v7(v8, v9);
    }

    v16 = *(v0 + 160);
    v18 = v16[8];
    v17 = v16[9];
    sub_29E4A1710(v16 + 5, v18);
    v19 = swift_task_alloc();
    *(v0 + 560) = v19;
    *v19 = v0;
    v19[1] = sub_29E49B034;
    v20 = *(v0 + 504);
    v21.n128_u64[0] = 30.0;

    return MEMORY[0x2A1C60948](v20, v18, v17, v21);
  }
}

uint64_t sub_29E49B034(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 568) = v1;

  if (v1)
  {
    v5 = sub_29E49C17C;
  }

  else
  {
    *(v4 + 576) = a1;
    v5 = sub_29E49B15C;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29E49B15C()
{
  v44 = v0;
  v1 = *(v0 + 576);
  sub_29E4FB6F0();
  v2 = v1;
  sub_29E4FB8A0();

  sub_29E4FC350();
  v3 = sub_29E4FC3B0();
  v4 = sub_29E4FC940();
  if (os_log_type_enabled(v3, v4))
  {
    v41 = *(v0 + 472);
    v39 = *(v0 + 400);
    v40 = *(v0 + 416);
    v5 = *(v0 + 320);
    v38 = *(v0 + 312);
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v8 = *(v0 + 168);
    v42 = v2;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v43[0] = v10;
    v43[1] = v8;
    *v9 = 136446466;
    swift_getMetatypeMetadata();
    v11 = sub_29E4FC700();
    v13 = sub_29E4F68F4(v11, v12, v43);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    swift_beginAccess();
    (*(v6 + 16))(v38, v5, v7);
    v14 = sub_29E4FC700();
    v16 = sub_29E4F68F4(v14, v15, v43);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_29E494000, v3, v4, "[%{public}s]: Created item for feedItem submission: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v10, -1, -1);
    v17 = v9;
    v2 = v42;
    MEMORY[0x29ED8BDB0](v17, -1, -1);

    v41(v40, v39);
  }

  else
  {
    v18 = *(v0 + 472);
    v19 = *(v0 + 416);
    v20 = *(v0 + 400);

    v18(v19, v20);
  }

  v21 = *(v0 + 520);
  v22 = *(v0 + 192);
  v23 = *(v0 + 176);
  swift_beginAccess();
  HealthKitProfileInformation.makePluginFeedItem()(v23);
  if (v21(v23, 1, v22) == 1)
  {
    v24 = *(v0 + 320);
    v25 = *(v0 + 296);
    v26 = *(v0 + 304);
    v27 = *(v0 + 176);

    sub_29E4A2278(v27, &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    (*(v26 + 8))(v24, v25);
    sub_29E4A1754((v0 + 16));

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = *(v0 + 192);
    (*(v31 + 32))(v30, *(v0 + 176), v32);
    v34 = *(v0 + 40);
    v33 = *(v0 + 48);
    sub_29E4A1710((v0 + 16), v34);
    sub_29E4967E8(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v36 = swift_allocObject();
    *(v0 + 584) = v36;
    *(v36 + 16) = xmmword_29E4FDE40;
    (*(v31 + 16))(v36 + v35, v30, v32);
    v37 = swift_task_alloc();
    *(v0 + 592) = v37;
    *v37 = v0;
    v37[1] = sub_29E49B6D0;

    return MEMORY[0x2A1C64D80](v36, v34, v33);
  }
}

uint64_t sub_29E49B6D0()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_29E49C340;
  }

  else
  {
    v2 = sub_29E49B804;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E49B804()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  sub_29E4A1754((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_29E49B9F8()
{
  v36 = v0;
  (*(*(v0 + 264) + 56))(*(v0 + 224), 1, 1, *(v0 + 256));
  sub_29E4A2278(*(v0 + 224), &qword_2A1A705D8, MEMORY[0x29EDC18E8]);
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  HealthKitProfileInformation.makePluginFeedItem()(v3);
  v4 = *(v2 + 48);
  *(v0 + 520) = v4;
  *(v0 + 528) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_29E4A2278(*(v0 + 184), &qword_2A1A70BB0, MEMORY[0x29EDC3840]);
    if (*(v0 + 113))
    {
      v5 = *(v0 + 464);
      (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));

      sub_29E4A1754((v0 + 16));

      v6 = *(v0 + 8);

      return v6();
    }

    else
    {
      sub_29E4FC350();
      v16 = sub_29E4FC3B0();
      v17 = sub_29E4FC940();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 472);
      v20 = *(v0 + 424);
      v21 = *(v0 + 400);
      if (v18)
      {
        v22 = *(v0 + 168);
        v34 = *(v0 + 472);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v35 = v24;
        *v23 = 136315138;
        *(v0 + 120) = v22;
        swift_getMetatypeMetadata();
        v25 = sub_29E4FC700();
        v27 = sub_29E4F68F4(v25, v26, &v35);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_29E494000, v16, v17, "[%s]: fetching photo", v23, 0xCu);
        sub_29E4A1754(v24);
        MEMORY[0x29ED8BDB0](v24, -1, -1);
        MEMORY[0x29ED8BDB0](v23, -1, -1);

        v34(v20, v21);
      }

      else
      {

        v19(v20, v21);
      }

      v28 = *(v0 + 160);
      v30 = v28[8];
      v29 = v28[9];
      sub_29E4A1710(v28 + 5, v30);
      v31 = swift_task_alloc();
      *(v0 + 560) = v31;
      *v31 = v0;
      v31[1] = sub_29E49B034;
      v32 = *(v0 + 504);
      v33.n128_u64[0] = 30.0;

      return MEMORY[0x2A1C60948](v32, v30, v29, v33);
    }
  }

  else
  {
    v8 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    (*(v10 + 32))(v8, *(v0 + 184), v9);
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    sub_29E4A1710((v0 + 16), v12);
    sub_29E4967E8(0, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v14 = swift_allocObject();
    *(v0 + 536) = v14;
    *(v14 + 16) = xmmword_29E4FDE40;
    (*(v10 + 16))(v14 + v13, v8, v9);
    v15 = swift_task_alloc();
    *(v0 + 544) = v15;
    *v15 = v0;
    v15[1] = sub_29E49AB48;

    return MEMORY[0x2A1C64D80](v14, v12, v11);
  }
}

uint64_t sub_29E49BF90()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  sub_29E4A1754((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_29E49C17C()
{
  v1 = v0[58];
  (*(v0[38] + 8))(v0[40], v0[37]);

  sub_29E4A1754(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_29E49C340()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  sub_29E4A1754((v0 + 16));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_29E49C534(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_29E49C5C8;

  return sub_29E49CAB0(0);
}

uint64_t sub_29E49C5C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29E49C6FC, 0, 0);
  }
}

uint64_t sub_29E49C6FC()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = [v1 activityMoveMode];
    v0[6] = v2;
    if (v2 == 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    v4 = [objc_opt_self() predicateForActivitySummariesWithActivityMoveMode_];
    v0[7] = v4;
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_29E49C854;

    return sub_29E49CAB0(v4);
  }

  else
  {
    v7 = v0[2];
    v8 = sub_29E4FB880();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_29E49C854(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_29E49CA44;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_29E49C984;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29E49C984()
{
  v1 = v0[10];
  v2 = v0[5];
  sub_29E4FB860();

  v3 = v0[2];
  v4 = sub_29E4FB880();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_29E49CA44()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E49CAB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_29E4FC610();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E49CB70, 0, 0);
}

uint64_t sub_29E49CB70()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_29E4FC5F0();
  v3 = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_29E49CC30;

  return sub_29E4B1458(v3, 1, 0);
}

uint64_t sub_29E49CC30(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_29E49CE7C;
  }

  else
  {
    v4 = sub_29E49CD44;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29E49CD44()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    result = sub_29E4FCCB0();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    (*(v0[5] + 8))(v0[6], v0[4]);

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x29ED8B3B0](0, v0[8]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[8] + 32);
  }

  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  (*(v5 + 8))(v4, v6);
LABEL_9:

  v7 = v0[1];

  return v7(v3);
}

uint64_t sub_29E49CE7C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_29E49CEFC()
{
  v0 = sub_29E4FC110();
  sub_29E4A19E0(v0, qword_2A184BCB8);
  sub_29E4A18DC(v0, qword_2A184BCB8);
  return sub_29E4FC100();
}

id sub_29E49CF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v5 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v6 = sub_29E4FC110();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A38CC(0, &qword_2A1A70780, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v10 = swift_allocObject();
  v25 = xmmword_29E4FDE50;
  *(v10 + 16) = xmmword_29E4FDE50;
  if (qword_2A184B1C0 != -1)
  {
    swift_once();
  }

  v11 = sub_29E4A18DC(v6, qword_2A184BCB8);
  (*(v7 + 16))(v9, v11, v6);
  sub_29E4A1914(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E4FDE60;
  inited = swift_initStackObject();
  *(inited + 16) = v25;
  sub_29E4A2AD8(0, &qword_2A1A6F1E8, 0x29EDBAD78);
  result = [swift_getObjCClassFromMetadata() activityMoveModeChangeType];
  if (result)
  {
    v15 = OBJC_IVAR____TtCC8Profiles33SharingProfileInformationExecutor7Planner_unanchoredCriteria;
    *(inited + 32) = result;
    sub_29E4D6814(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v12 + 56) = sub_29E4FB6C0();
    *(v12 + 64) = sub_29E4A3A90(&qword_2A1A70620, 255, MEMORY[0x29EDC3BE8], MEMORY[0x29EDC3BE0]);
    sub_29E4A197C((v12 + 32));
    sub_29E4FB6B0();
    *(v12 + 96) = sub_29E4FB630();
    *(v12 + 104) = sub_29E4A3A90(&qword_2A1A70640, 255, MEMORY[0x29EDC3B40], MEMORY[0x29EDC3B38]);
    sub_29E4A197C((v12 + 72));
    sub_29E4FB620();
    v16 = sub_29E4FC2E0();
    *(v12 + 136) = v16;
    v17 = sub_29E4A3A90(&qword_2A1A70488, 255, MEMORY[0x29EDC35C0], MEMORY[0x29EDC35B8]);
    *(v12 + 144) = v17;
    sub_29E4A197C((v12 + 112));
    sub_29E4FC2F0();
    sub_29E4FC2D0();
    *(v12 + 176) = v16;
    *(v12 + 184) = v17;
    sub_29E4A197C((v12 + 152));
    sub_29E4FC2F0();
    sub_29E4FC2D0();
    sub_29E4FC140();
    swift_allocObject();
    *(v10 + 32) = sub_29E4FC120();
    *(v3 + v15) = v10;
    v18 = v23;
    *(v3 + 16) = v22;
    *(v3 + 24) = v18;
    v19 = OBJC_IVAR____TtCC8Profiles33SharingProfileInformationExecutor7Planner_signals;
    v20 = sub_29E4FC190();
    (*(*(v20 - 8) + 32))(v4 + v19, v24, v20);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E49D3D0()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCC8Profiles33SharingProfileInformationExecutor7Planner_signals;
  v2 = sub_29E4FC190();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29E49D4CC@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  a1[3] = ObjectType;
  a1[4] = v6;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t sub_29E49D520@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Profiles33SharingProfileInformationExecutor7Planner_signals;
  v4 = sub_29E4FC190();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E49D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[3] = swift_getObjectType();
  v8[4] = *(v6 + 8);
  v8[0] = v5;
  swift_unknownObjectRetain_n();
  sub_29E4FC330();
  swift_unknownObjectRelease();
  return sub_29E4A1754(v8);
}

uint64_t sub_29E49D6C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E4A3A90(&qword_2A184B2C0, 255, type metadata accessor for SharingProfileInformationExecutor.Planner, &unk_29E4FDFFC);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E49D79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E4A3A90(&qword_2A184B2C0, 255, type metadata accessor for SharingProfileInformationExecutor.Planner, &unk_29E4FDFFC);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29E49D85C()
{
  swift_unknownObjectRelease();

  sub_29E4A1754((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_29E49D8A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29E49D938;

  return sub_29E498E94(a1);
}

uint64_t sub_29E49D938()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29E49DA2C(uint64_t a1)
{
  v3 = sub_29E4FC190();
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 24);
  (*(v7 + 16))(v5, a1);
  type metadata accessor for SharingProfileInformationExecutor.Planner(0);
  v8 = swift_allocObject();
  v9 = swift_unknownObjectRetain();
  sub_29E49CF60(v9, v6, v5);
  return v8;
}

uint64_t sub_29E49DB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E4A3A90(&qword_2A184B280, a2, type metadata accessor for SharingProfileInformationExecutor, &unk_29E4FE090);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

void sub_29E49DBD8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_29E49DC64(uint64_t a1, uint64_t a2)
{
  sub_29E4A17A0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
  v9 = sub_29E4FC6B0();
  v10 = [v8 initWithCategory:2 domainName:v9 healthStore:a2];

  v11 = sub_29E4FC6B0();
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_29E4A1844;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E49DBD8;
  aBlock[3] = &unk_2A24E7B70;
  v14 = _Block_copy(aBlock);

  [v10 numberForKey:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_29E49DE88(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    sub_29E4A17A0(0);
    return sub_29E4FC820();
  }

  else
  {
    if (a1)
    {
      [a1 integerValue];
    }

    sub_29E4A17A0(0);
    return sub_29E4FC830();
  }
}

uint64_t variable initialization expression of SharingRelationshipLatestTransactionDatesInputSignal.protectedState()
{
  v0 = sub_29E4A1068(MEMORY[0x29EDCA190]);
  sub_29E4A12C8(0);
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x29EDCA198];
  *(result + 32) = v0;
  return result;
}

uint64_t variable initialization expression of SharingRelationshipLatestTransactionDatesInputSignal.queue()
{
  v0 = sub_29E4FCA60();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FCA30();
  MEMORY[0x2A1C7C4A8](v4);
  v5 = sub_29E4FC580();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  sub_29E4A2AD8(0, &qword_2A1A70790, 0x29EDCA548);
  sub_29E4FC570();
  v7[1] = MEMORY[0x29EDCA190];
  sub_29E4A3A90(&qword_2A1A6F1C0, 255, MEMORY[0x29EDCA288], MEMORY[0x29EDCA290]);
  sub_29E4967E8(0, &qword_2A1A6F228, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29E4A1350();
  sub_29E4FCC70();
  (*(v1 + 104))(v3, *MEMORY[0x29EDCA2A8], v0);
  return sub_29E4FCA90();
}

BOOL sub_29E49E26C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_29E49E29C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_29E49E2C8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_29E49E3A0(uint64_t a1, id *a2)
{
  result = sub_29E4FC6D0();
  *a2 = 0;
  return result;
}

uint64_t sub_29E49E418(uint64_t a1, id *a2)
{
  v3 = sub_29E4FC6E0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_29E49E498@<X0>(uint64_t *a2@<X8>)
{
  sub_29E4FC6F0();
  v3 = sub_29E4FC6B0();

  *a2 = v3;
  return result;
}

uint64_t sub_29E49E4DC(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B3E0, 255, type metadata accessor for HKError, &unk_29E4FE374);

  return MEMORY[0x2A1C5B390](a1, v2);
}

uint64_t sub_29E49E54C(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B3E0, 255, type metadata accessor for HKError, &unk_29E4FE374);

  return MEMORY[0x2A1C5B388](a1, v2);
}

uint64_t sub_29E49E5C0(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError, &unk_29E4FEA58);

  return MEMORY[0x2A1C5A7C0](a1, v2);
}

uint64_t sub_29E49E638()
{
  v1 = *v0;
  sub_29E4FD030();
  MEMORY[0x29ED8B670](v1);
  return sub_29E4FD050();
}

uint64_t sub_29E49E680(uint64_t a1)
{
  v2 = *v1;
  sub_29E4FD030();
  MEMORY[0x29ED8B670](v2);
  return sub_29E4FD050();
}

uint64_t sub_29E49E6C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_29E4A3A58(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_29E49E720(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError, &unk_29E4FEA58);

  return MEMORY[0x2A1C5A7F0](a1, v2);
}

uint64_t sub_29E49E790(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError, &unk_29E4FEA58);

  return MEMORY[0x2A1C5A7D0](a1, v2);
}

uint64_t sub_29E49E800(void *a1, uint64_t a2)
{
  v4 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError, &unk_29E4FEA58);
  v5 = a1;

  return MEMORY[0x2A1C5A7C8](v5, a2, v4);
}

uint64_t sub_29E49E8B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError, &unk_29E4FEA58);

  return MEMORY[0x2A1C5A7E8](a1, a2, v4);
}

uint64_t sub_29E49E938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E4FD030();
  sub_29E4FC660();
  return sub_29E4FD050();
}

uint64_t sub_29E49E998(uint64_t a1)
{
  v2 = sub_29E4A3A90(&qword_2A184B428, 255, type metadata accessor for Name, &unk_29E4FE544);
  v3 = sub_29E4A3A90(&qword_2A184B430, 255, type metadata accessor for Name, &unk_29E4FE4E4);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E49EA5C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_29E4FC6B0();

  *a2 = v3;
  return result;
}

uint64_t sub_29E49EAA4(uint64_t a1)
{
  v2 = sub_29E4A3A90(&unk_2A184B560, 255, type metadata accessor for OpenURLOptionsKey, &unk_29E4FE9C4);
  v3 = sub_29E4A3A90(&qword_2A184B420, 255, type metadata accessor for OpenURLOptionsKey, &unk_29E4FE648);
  v4 = MEMORY[0x29EDC99C0];

  return MEMORY[0x2A1C72EC8](a1, v2, v3, v4);
}

uint64_t sub_29E49EB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E4A3A90(&qword_2A184B418, 255, type metadata accessor for HKError, &unk_29E4FEA58);

  return MEMORY[0x2A1C5A7D8](a1, a2, a3, v6);
}

uint64_t sub_29E49EBF0()
{
  v0 = sub_29E4FC6F0();
  v1 = MEMORY[0x29ED8AD90](v0);

  return v1;
}

uint64_t sub_29E49EC2C(uint64_t a1)
{
  sub_29E4FC6F0();
  sub_29E4FC730();
}

uint64_t sub_29E49EC80(uint64_t a1)
{
  sub_29E4FC6F0();
  sub_29E4FD030();
  sub_29E4FC730();
  v1 = sub_29E4FD050();

  return v1;
}

uint64_t sub_29E49ECF4(void *a1, uint64_t *a2)
{
  v2 = sub_29E4FC6F0();
  v4 = v3;
  if (v2 == sub_29E4FC6F0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_29E4FCF80();
  }

  return v7 & 1;
}

unint64_t sub_29E49ED7C(uint64_t a1)
{
  sub_29E4FB240();
  sub_29E4A3A90(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
  v2 = sub_29E4FC650();

  return sub_29E49EF68(a1, v2);
}

unint64_t sub_29E49EE18(uint64_t a1, uint64_t a2)
{
  sub_29E4FD030();
  sub_29E4FC730();
  v4 = sub_29E4FD050();

  return sub_29E49F12C(a1, a2, v4);
}

unint64_t sub_29E49EE90(uint64_t a1)
{
  v2 = sub_29E4FCCE0();

  return sub_29E49F1E4(a1, v2);
}

unint64_t sub_29E49EED4(uint64_t a1)
{
  sub_29E4FC6F0();
  sub_29E4FD030();
  sub_29E4FC730();
  v2 = sub_29E4FD050();

  return sub_29E49F2AC(a1, v2);
}

unint64_t sub_29E49EF68(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_29E4FB240();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_29E4A3A90(&qword_2A184B2D0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C20]);
      v15 = sub_29E4FC680();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_29E49F12C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_29E4FCF80())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_29E49F1E4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_29E4A25CC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x29ED8B320](v9, a1);
      sub_29E4A2628(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_29E49F2AC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_29E4FC6F0();
      v8 = v7;
      if (v6 == sub_29E4FC6F0() && v8 == v9)
      {
        break;
      }

      v11 = sub_29E4FCF80();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_29E49F3B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_29E4FCF80() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029E5019F0 == a2 || (sub_29E4FCF80() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_29E4FCF80() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_29E4FCF80();

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

BOOL sub_29E49F528(void **a1, void **a2)
{
  v4 = sub_29E4FB910();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v39 - v9;
  sub_29E4A3AD8(0);
  v12 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v40 = a2;
  v16 = *a2;
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    sub_29E4A2AD8(0, &qword_2A1A70788, 0x29EDBAAA0);
    v17 = v16;
    v18 = v15;
    v19 = sub_29E4FCB40();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v39 = type metadata accessor for SharingProfileInformationWorkPlanInfo(0);
  v20 = *(v39 + 20);
  v21 = *(v12 + 48);
  v22 = MEMORY[0x29EDC1958];
  sub_29E4A22E8(a1 + v20, v14, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v23 = v40 + v20;
  v24 = v40;
  sub_29E4A22E8(v23, &v14[v21], &unk_2A1A705A0, v22);
  v25 = *(v5 + 48);
  if (v25(v14, 1, v4) != 1)
  {
    sub_29E4A22E8(v14, v10, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
    if (v25(&v14[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v21], v4);
      sub_29E4A3A90(&unk_2A1A705C0, 255, MEMORY[0x29EDC1958], MEMORY[0x29EDC1968]);
      v27 = sub_29E4FC680();
      v28 = *(v5 + 8);
      v28(v7, v4);
      v28(v10, v4);
      v24 = v40;
      sub_29E4A2278(v14, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v5 + 8))(v10, v4);
LABEL_11:
    sub_29E4A3B6C(v14, sub_29E4A3AD8);
    return 0;
  }

  if (v25(&v14[v21], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_29E4A2278(v14, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
LABEL_15:
  v29 = v39;
  v30 = *(v39 + 24);
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (v24 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (sub_29E4FCF80() & 1) == 0)
  {
    return 0;
  }

  v34 = *(v29 + 28);
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (v24 + v34);
  v38 = v37[1];
  if (v36)
  {
    return v38 && (*v35 == *v37 && v36 == v38 || (sub_29E4FCF80() & 1) != 0);
  }

  return !v38;
}

uint64_t sub_29E49F9A8(unint64_t a1)
{
  v111 = a1;
  v121 = type metadata accessor for SharingProfileInformationWorkPlanInfo(0);
  MEMORY[0x2A1C7C4A8](v121);
  v120 = (&v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_29E4FC1C0();
  v118 = *(v2 - 8);
  v119 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v116 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FC1E0();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v127 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E4FC230();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v126 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FB240();
  v114 = *(v8 - 8);
  v115 = v8;
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v103 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v113 = &v102 - v11;
  v12 = MEMORY[0x29EDC9C68];
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  v14 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v117 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v104 = &v102 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v123 = (&v102 - v18);
  v19 = MEMORY[0x29EDC34D8];
  sub_29E4967E8(0, &qword_2A1A704D0, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, MEMORY[0x29EDC34D8]);
  v109 = v20;
  v108 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v106 = &v102 - v21;
  v107 = sub_29E4A1D34;
  sub_29E4967E8(0, &qword_2A1A70548, sub_29E4A1D34, v12);
  v23 = MEMORY[0x2A1C7C4A8](v22 - 8);
  v110 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v27 = &v102 - v26;
  MEMORY[0x2A1C7C4A8](v25);
  v128 = &v102 - v28;
  sub_29E4967E8(0, &unk_2A1A704F0, MEMORY[0x29EDC3B60], v19);
  v105 = v29;
  v30 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v32 = &v102 - v31;
  sub_29E4967E8(0, &qword_2A1A70630, MEMORY[0x29EDC3B48], v12);
  v34 = MEMORY[0x2A1C7C4A8](v33 - 8);
  v122 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v34);
  v37 = &v102 - v36;
  v38 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v38 - 8);
  sub_29E4967E8(0, &qword_2A1A704E8, type metadata accessor for EndSharingRelationshipInputSignal, v19);
  v40 = v39;
  v41 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v43 = &v102 - v42;
  sub_29E4967E8(0, &qword_2A1A70530, sub_29E4A1EB4, v12);
  v45 = MEMORY[0x2A1C7C4A8](v44 - 8);
  v102 = &v102 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v45);
  v48 = &v102 - v47;
  sub_29E4FC2F0();
  type metadata accessor for EndSharingRelationshipInputSignal();
  sub_29E4FC180();
  sub_29E4A3A90(qword_2A1A6FC38, 255, type metadata accessor for EndSharingRelationshipInputSignal, &unk_29E4FEF6C);
  v124 = v48;
  v49 = v27;
  sub_29E4FC2C0();
  (*(v41 + 8))(v43, v40);
  sub_29E4FB670();
  sub_29E4FC170();
  sub_29E4A3A90(&qword_2A1A70628, 255, MEMORY[0x29EDC3B60], MEMORY[0x29EDC3B30]);
  v125 = v37;
  sub_29E4FC2C0();
  (*(v30 + 8))(v32, v105);
  sub_29E4FC2F0();
  type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal();
  v50 = v106;
  sub_29E4FC180();
  sub_29E4A3A90(qword_2A1A6F490, 255, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, &unk_29E4FF1B8);
  v51 = v128;
  sub_29E4FC2C0();
  (*(v108 + 8))(v50, v109);
  sub_29E4A22E8(v51, v49, &qword_2A1A70548, v107);
  sub_29E4A1D34(0);
  v53 = v52;
  v54 = *(v52 - 8);
  v55 = *(v54 + 48);
  if (v55(v49, 1, v52) == 1)
  {
    sub_29E4A2278(v49, &qword_2A1A70548, sub_29E4A1D34);
  }

  else
  {
    sub_29E4FC0C0();
    v56 = v129;
    v57 = v130;
    (*(v54 + 8))(v49, v53);

    if (v57)
    {
      v111 = v57;
      goto LABEL_6;
    }
  }

  v56 = 0;
  v111 = 0xE000000000000000;
LABEL_6:
  v58 = v123;
  v60 = v114;
  v59 = v115;
  v61 = v113;
  v62 = v110;
  sub_29E4A22E8(v128, v110, &qword_2A1A70548, sub_29E4A1D34);
  v63 = v55(v62, 1, v53);
  v115 = v56;
  if (v63 == 1)
  {
    sub_29E4A2278(v62, &qword_2A1A70548, sub_29E4A1D34);
    v113 = 0;
    v114 = 0;
  }

  else
  {
    sub_29E4FC0C0();
    v113 = v132;
    v114 = v131;
    (*(v54 + 8))(v62, v53);
  }

  v64 = v122;
  v65 = sub_29E4FB910();
  v66 = *(v65 - 8);
  v67 = *(v66 + 56);
  v122 = (v66 + 56);
  v123 = v67;
  v67(v58, 1, 1, v65);
  swift_getObjectType();
  v68 = sub_29E4FB2C0();
  if (v68)
  {
    v69 = v68;
    v70 = [v68 profileIdentifier];

    v71 = [v70 identifier];
    v72 = v103;
    sub_29E4FB230();

    (*(v60 + 32))(v61, v72, v59);
    v73 = v102;
    sub_29E4A22E8(v124, v102, &qword_2A1A70530, sub_29E4A1EB4);
    sub_29E4A1EB4(0);
    v75 = v74;
    v76 = *(v74 - 8);
    if ((*(v76 + 48))(v73, 1, v74) == 1)
    {
      (*(v60 + 8))(v61, v59);
      sub_29E4A2278(v58, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
      sub_29E4A2278(v73, &qword_2A1A70530, sub_29E4A1EB4);
      v77 = v104;
      v78 = v104;
      v79 = 1;
    }

    else
    {
      v112 = v66;
      sub_29E4FC0C0();
      v80 = v129;
      (*(v76 + 8))(v73, v75);
      if (*(v80 + 16))
      {
        v81 = sub_29E49ED7C(v61);
        v77 = v104;
        if (v82)
        {
          (*(v112 + 16))(v104, *(v80 + 56) + *(v112 + 72) * v81, v65);
          (*(v60 + 8))(v61, v59);
          sub_29E4A2278(v58, &unk_2A1A705A0, MEMORY[0x29EDC1958]);

          v79 = 0;
        }

        else
        {

          (*(v60 + 8))(v61, v59);
          sub_29E4A2278(v58, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
          v79 = 1;
        }
      }

      else
      {

        (*(v60 + 8))(v61, v59);
        sub_29E4A2278(v58, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
        v79 = 1;
        v77 = v104;
      }

      v78 = v77;
    }

    v123(v78, v79, 1, v65);
    sub_29E4A2368(v77, v58);
  }

  sub_29E4967E8(0, &qword_2A184B2C8, sub_29E4A1594, MEMORY[0x29EDC9E90]);
  sub_29E4A1594(0);
  v112 = (*(*(v83 - 8) + 80) + 32) & ~*(*(v83 - 8) + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_29E4FDE40;
  sub_29E4FC220();
  v86 = v118;
  v85 = v119;
  v87 = v116;
  (*(v118 + 104))(v116, *MEMORY[0x29EDC3508], v119);
  sub_29E4FC1D0();
  (*(v86 + 8))(v87, v85);
  sub_29E4A22E8(v125, v64, &qword_2A1A70630, MEMORY[0x29EDC3B48]);
  v88 = sub_29E4FB660();
  v89 = *(v88 - 8);
  if ((*(v89 + 48))(v64, 1, v88) == 1)
  {
    sub_29E4A2278(v64, &qword_2A1A70630, MEMORY[0x29EDC3B48]);
    v90 = 0;
  }

  else
  {
    v90 = sub_29E4FB650();
    (*(v89 + 8))(v64, v88);
  }

  v91 = MEMORY[0x29EDC1958];
  v92 = v117;
  sub_29E4A22E8(v58, v117, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v93 = v58;
  v95 = v120;
  v94 = v121;
  v96 = *(v121 + 20);
  v123(v120 + v96, 1, 1, v65);
  v97 = (v95 + *(v94 + 28));
  *v95 = v90;
  sub_29E4A1A98(v92, v95 + v96);
  v98 = (v95 + *(v94 + 24));
  v99 = v111;
  *v98 = v115;
  v98[1] = v99;
  v100 = v113;
  *v97 = v114;
  v97[1] = v100;
  sub_29E4A3A90(&qword_2A184B258, 255, type metadata accessor for SharingProfileInformationWorkPlanInfo, &unk_29E4FDFD4);
  sub_29E4A3A90(&qword_2A184B260, 255, type metadata accessor for SharingProfileInformationWorkPlanInfo, &unk_29E4FDFAC);
  sub_29E4FC290();
  sub_29E4A2278(v93, &unk_2A1A705A0, v91);
  sub_29E4A2278(v128, &qword_2A1A70548, sub_29E4A1D34);
  sub_29E4A2278(v125, &qword_2A1A70630, MEMORY[0x29EDC3B48]);
  sub_29E4A2278(v124, &qword_2A1A70530, sub_29E4A1EB4);
  return v84;
}

unint64_t sub_29E4A0B9C(uint64_t a1)
{
  sub_29E4A24BC(0, &qword_2A1A70690, MEMORY[0x29EDC1958]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_29E4A23FC(0, &qword_2A184B2E0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9E70]);
    v8 = sub_29E4FCE20();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_29E4A2E6C(v10, v6, &qword_2A1A70690, MEMORY[0x29EDC1958]);
      result = sub_29E49ED7C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_29E4FB240();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_29E4FB910();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E4A0E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v28 = a3;
  sub_29E4A24BC(0, a2, a3);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_29E4A23FC(0, a4, a5, MEMORY[0x29EDC9E70]);
    v15 = sub_29E4FCE20();
    v16 = *(v10 + 48);
    v17 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);

    while (1)
    {
      sub_29E4A2E6C(v17, v13, a2, v28);
      result = sub_29E49ED7C(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_29E4FB240();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E4A1068(uint64_t a1)
{
  sub_29E4A24BC(0, &qword_2A1A70678, MEMORY[0x29EDB9BC8]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_29E4A23FC(0, &qword_2A184B310, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9E70]);
    v8 = sub_29E4FCE20();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_29E4A2E6C(v10, v6, &qword_2A1A70678, MEMORY[0x29EDB9BC8]);
      result = sub_29E49ED7C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_29E4FB240();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_29E4FB1E0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29E4A12C8(uint64_t a1)
{
  if (!qword_2A1A6F130)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_29E4FCDC0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F130);
    }
  }
}

unint64_t sub_29E4A1350()
{
  result = qword_2A1A6F220;
  if (!qword_2A1A6F220)
  {
    sub_29E4967E8(255, &qword_2A1A6F228, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F220);
  }

  return result;
}

uint64_t sub_29E4A1424(uint64_t a1)
{
  result = sub_29E4FC190();
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

uint64_t sub_29E4A1500(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E4A1520(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_29E4A1594(uint64_t a1)
{
  if (!qword_2A184B250)
  {
    type metadata accessor for SharingProfileInformationWorkPlanInfo(255);
    sub_29E4A3A90(&qword_2A184B258, 255, type metadata accessor for SharingProfileInformationWorkPlanInfo, &unk_29E4FDFD4);
    sub_29E4A3A90(&qword_2A184B260, 255, type metadata accessor for SharingProfileInformationWorkPlanInfo, &unk_29E4FDFAC);
    v1 = sub_29E4FC2B0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B250);
    }
  }
}

uint64_t sub_29E4A1688(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_29E4A1710(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_29E4A1754(void *a1)
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

void sub_29E4A17A0(uint64_t a1)
{
  if (!qword_2A184B278)
  {
    sub_29E4A38CC(255, &unk_2A1A708F8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    sub_29E4A2CE8(255, &qword_2A1A70BC8, MEMORY[0x29EDC9F18]);
    v1 = sub_29E4FC840();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B278);
    }
  }
}

uint64_t sub_29E4A1844(void *a1, void *a2)
{
  sub_29E4A17A0(0);

  return sub_29E49DE88(a1, a2);
}

uint64_t sub_29E4A18C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E4A18DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_29E4A1914(uint64_t a1)
{
  if (!qword_2A1A6F0C0)
  {
    sub_29E4A2CE8(255, &qword_2A1A70480, MEMORY[0x29EDC3608]);
    v1 = sub_29E4FCF70();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F0C0);
    }
  }
}

uint64_t *sub_29E4A197C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t *sub_29E4A19E0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_29E4A1A44()
{
  result = qword_2A184B290;
  if (!qword_2A184B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B290);
  }

  return result;
}

uint64_t sub_29E4A1A98(uint64_t a1, uint64_t a2)
{
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E4A1B2C()
{
  result = qword_2A184B298;
  if (!qword_2A184B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B298);
  }

  return result;
}

uint64_t sub_29E4A1B80(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29E4A1B94(result, a2);
  }

  return result;
}

uint64_t sub_29E4A1B94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_29E4A1BE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4A1A44();
    v7 = a3(a1, &type metadata for SharingProfileInformationWorkPlanInfo.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29E4A1C4C()
{
  result = qword_2A184B2B0;
  if (!qword_2A184B2B0)
  {
    sub_29E4A38CC(255, &qword_2A1A6F260, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B2B0);
  }

  return result;
}

unint64_t sub_29E4A1CE0()
{
  result = qword_2A184B2B8;
  if (!qword_2A184B2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B2B8);
  }

  return result;
}

void sub_29E4A1D34(uint64_t a1)
{
  if (!qword_2A1A70550)
  {
    sub_29E4A1DB8();
    sub_29E4A1E0C();
    sub_29E4A1E60();
    v1 = sub_29E4FC0D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70550);
    }
  }
}

unint64_t sub_29E4A1DB8()
{
  result = qword_2A1A703C0;
  if (!qword_2A1A703C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A703C0);
  }

  return result;
}

unint64_t sub_29E4A1E0C()
{
  result = qword_2A1A703D0;
  if (!qword_2A1A703D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A703D0);
  }

  return result;
}

unint64_t sub_29E4A1E60()
{
  result = qword_2A1A703C8;
  if (!qword_2A1A703C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A703C8);
  }

  return result;
}

void sub_29E4A1EB4(uint64_t a1)
{
  if (!qword_2A1A70538)
  {
    sub_29E4A23FC(255, &qword_2A1A6F2F0, MEMORY[0x29EDC1958], MEMORY[0x29EDC98E0]);
    sub_29E4A1F6C();
    sub_29E4A2084();
    sub_29E4A219C();
    v1 = sub_29E4FC0D0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70538);
    }
  }
}

unint64_t sub_29E4A1F6C()
{
  result = qword_2A1A6F2D0;
  if (!qword_2A1A6F2D0)
  {
    sub_29E4A23FC(255, &qword_2A1A6F2F0, MEMORY[0x29EDC1958], MEMORY[0x29EDC98E0]);
    sub_29E4A3A90(&unk_2A1A706A0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C28]);
    sub_29E4A3A90(&unk_2A1A705B0, 255, MEMORY[0x29EDC1958], MEMORY[0x29EDC1970]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F2D0);
  }

  return result;
}

unint64_t sub_29E4A2084()
{
  result = qword_2A1A6F2E0;
  if (!qword_2A1A6F2E0)
  {
    sub_29E4A23FC(255, &qword_2A1A6F2F0, MEMORY[0x29EDC1958], MEMORY[0x29EDC98E0]);
    sub_29E4A3A90(&unk_2A1A706C0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C10]);
    sub_29E4A3A90(&qword_2A1A705D0, 255, MEMORY[0x29EDC1958], MEMORY[0x29EDC1960]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F2E0);
  }

  return result;
}

unint64_t sub_29E4A219C()
{
  result = qword_2A1A6F2D8;
  if (!qword_2A1A6F2D8)
  {
    sub_29E4A23FC(255, &qword_2A1A6F2F0, MEMORY[0x29EDC1958], MEMORY[0x29EDC98E0]);
    sub_29E4A3A90(&unk_2A1A705C0, 255, MEMORY[0x29EDC1958], MEMORY[0x29EDC1968]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A6F2D8);
  }

  return result;
}

uint64_t sub_29E4A2278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4967E8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E4A22E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E4967E8(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E4A2368(uint64_t a1, uint64_t a2)
{
  sub_29E4967E8(0, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E4A23FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29E4FB240();
    v9 = a3(255);
    v10 = sub_29E4A3A90(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v11 = a4(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E4A24BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_29E4FB240();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E4A2534(uint64_t a1)
{
  if (!qword_2A1A70440)
  {
    sub_29E4967E8(255, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
    v1 = sub_29E4FC470();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A70440);
    }
  }
}

unint64_t sub_29E4A267C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E4A2B20(0);
    v3 = sub_29E4FCE20();
    v4 = a1 + 32;

    while (1)
    {
      sub_29E4A2E04(v4, &v11, sub_29E4A2BEC);
      v5 = v11;
      result = sub_29E49EED4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_29E4A2C58(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E4A278C(uint64_t a1)
{
  sub_29E4A2C68(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_29E4A2D44(0);
    v8 = sub_29E4FCE20();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_29E4A2E04(v10, v6, sub_29E4A2C68);
      result = sub_29E49ED7C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_29E4FB240();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_29E498334(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29E4A2968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_29E4A2A60(0);
    v3 = sub_29E4FCE20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_29E49EE18(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

void sub_29E4A2A60(uint64_t a1)
{
  if (!qword_2A184B2E8)
  {
    sub_29E4A2AD8(255, &qword_2A1A708D0, 0x29EDBACE0);
    v1 = sub_29E4FCE30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B2E8);
    }
  }
}

uint64_t sub_29E4A2AD8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29E4A2B20(uint64_t a1)
{
  if (!qword_2A184B2F0)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    sub_29E4A3A90(&unk_2A184B560, 255, type metadata accessor for OpenURLOptionsKey, &unk_29E4FE9C4);
    v1 = sub_29E4FCE30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B2F0);
    }
  }
}

void sub_29E4A2BEC(uint64_t a1)
{
  if (!qword_2A184B2F8)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B2F8);
    }
  }
}

_OWORD *sub_29E4A2C58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_29E4A2C68(uint64_t a1)
{
  if (!qword_2A184B300)
  {
    sub_29E4FB240();
    sub_29E4A2CE8(255, &qword_2A184B790, &protocol descriptor for SummaryTransactionSource);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B300);
    }
  }
}

uint64_t sub_29E4A2CE8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29E4A2D44(uint64_t a1)
{
  if (!qword_2A184B308)
  {
    sub_29E4FB240();
    sub_29E4A2CE8(255, &qword_2A184B790, &protocol descriptor for SummaryTransactionSource);
    sub_29E4A3A90(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v1 = sub_29E4FCE30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B308);
    }
  }
}

uint64_t sub_29E4A2E04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E4A2E6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E4A24BC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for SharingProfileInformationWorkPlanInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingProfileInformationWorkPlanInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_29E4A3138(uint64_t a1)
{
  sub_29E4A3228(319);
  if (v1 <= 0x3F)
  {
    sub_29E4967E8(319, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
    if (v2 <= 0x3F)
    {
      sub_29E4A38CC(319, &qword_2A1A6F260, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E4A3228(uint64_t a1)
{
  if (!qword_2A1A6F180)
  {
    sub_29E4A2AD8(255, &qword_2A1A70788, 0x29EDBAAA0);
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F180);
    }
  }
}

unint64_t sub_29E4A32E0()
{
  result = qword_2A184B368;
  if (!qword_2A184B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B368);
  }

  return result;
}

unint64_t sub_29E4A36C8()
{
  result = qword_2A184B3D0;
  if (!qword_2A184B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B3D0);
  }

  return result;
}

unint64_t sub_29E4A3720()
{
  result = qword_2A184B3D8;
  if (!qword_2A184B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B3D8);
  }

  return result;
}

void sub_29E4A38CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E4A396C()
{
  result = qword_2A184B408;
  if (!qword_2A184B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B408);
  }

  return result;
}

uint64_t sub_29E4A3A58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_29E4A3A90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_29E4A3AD8(uint64_t a1)
{
  if (!qword_2A184B438)
  {
    sub_29E4967E8(255, &unk_2A1A705A0, MEMORY[0x29EDC1958], MEMORY[0x29EDC9C68]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B438);
    }
  }
}

uint64_t sub_29E4A3B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ProfileItemTileViewController(uint64_t a1)
{
  result = qword_2A1A709B8;
  if (!qword_2A1A709B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E4A3C68(uint64_t a1)
{
  sub_29E4A721C(319, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

id sub_29E4A3D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDC7AC8]) init];
  }

  *a5 = v9;
  a5[1] = a1;
  a5[2] = a2;
  v10 = sub_29E4FBD60();
  v11 = MEMORY[0x29EDC2370];
  if (a4)
  {
    v11 = MEMORY[0x29EDC2388];
  }

  (*(*(v10 - 8) + 104))(a5, *v11, v10);

  return a3;
}

uint64_t sub_29E4A3E20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_29E4A721C(0, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v25 - v7;
  sub_29E4FBD70();
  v9 = v27;
  result = sub_29E4A7694(v26, &qword_2A1A70570, &qword_2A1A70578, MEMORY[0x29EDC2808]);
  if (v9)
  {
    sub_29E4FBD70();
    v11 = v27;
    if (v27)
    {
      v12 = sub_29E4A1710(v26, v27);
      v13 = *(v11 - 8);
      MEMORY[0x2A1C7C4A8](v12);
      v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v15);
      v16 = sub_29E4FBE10();
      v18 = v17;
      (*(v13 + 8))(v15, v11);
      sub_29E4A1754(v26);
      if (v18 >> 60 == 15)
      {
LABEL_9:
        v26[0] = 0;
        v26[1] = 0xE000000000000000;
        sub_29E4FCD70();
        v26[0] = ObjectType;
        swift_getMetatypeMetadata();
        v21 = sub_29E4FC700();
        v23 = v22;

        v25[1] = v21;
        v25[2] = v23;
        MEMORY[0x29ED8AD70](0xD000000000000013, 0x800000029E501AC0);
        sub_29E4FBD70();
        sub_29E4A7494(0, &qword_2A1A70570, &qword_2A1A70578, MEMORY[0x29EDC2808]);
        v24 = sub_29E4FC700();
        MEMORY[0x29ED8AD70](v24);

        result = sub_29E4FCDE0();
        __break(1u);
        return result;
      }

      sub_29E4FB780();
      v19 = sub_29E4FB7B0();
      ObjectType = *(v19 - 8);
      (*(ObjectType + 56))(v8, 0, 1, v19);
      v20 = qword_2A1A70D30;
      swift_beginAccess();
      sub_29E4A74EC(v8, v1 + v20);
      swift_endAccess();
      sub_29E4A7270(v1 + v20, v6, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
      if ((*(ObjectType + 48))(v6, 1, v19) != 1)
      {
        sub_29E4A4608(v6);
        sub_29E4A1B80(v16, v18);
        return (*(ObjectType + 8))(v6, v19);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_29E4A42EC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E4FC3C0();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FBD20();
  if (!v24)
  {
    return sub_29E4A7694(&v23, &qword_2A184B480, &qword_2A184B488, MEMORY[0x29EDC2460]);
  }

  sub_29E498334(&v23, v25);
  sub_29E4A76F0(v25, &v23);
  sub_29E4A2CE8(0, &qword_2A184B488, MEMORY[0x29EDC2460]);
  if (swift_dynamicCast())
  {
    v6 = v21[2];
    if (v22 == 1)
    {
      sub_29E4FBD50();
    }

    else
    {
      sub_29E4FBD40();
    }
  }

  else
  {
    sub_29E4FC360();
    v8 = v0;
    v9 = sub_29E4FC3B0();
    v10 = sub_29E4FC930();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21[0] = v12;
      *v11 = 136446466;
      *&v23 = ObjectType;
      swift_getMetatypeMetadata();
      v13 = sub_29E4FC700();
      v15 = sub_29E4F68F4(v13, v14, v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      sub_29E4FBD20();
      v16 = MEMORY[0x29EDC2460];
      sub_29E4A7694(&v23, &qword_2A184B480, &qword_2A184B488, MEMORY[0x29EDC2460]);
      sub_29E4A7494(0, &qword_2A184B480, &qword_2A184B488, v16);
      *&v23 = v17;
      sub_29E4A7754();
      v18 = sub_29E4FC700();
      v20 = sub_29E4F68F4(v18, v19, v21);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_29E494000, v9, v10, "[%{public}s]: Unexpected content provider type: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v12, -1, -1);
      MEMORY[0x29ED8BDB0](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return sub_29E4A1754(v25);
}

void sub_29E4A4608(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E4FB7B0();
  v115 = *(v2 - 1);
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v103 = (&v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v3);
  v114 = &v98 - v5;
  v6 = sub_29E4FC3C0();
  v108 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v116 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FB930();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v106 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A719C(0);
  v118 = v11;
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v113 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v98 - v14;
  sub_29E4A721C(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  v17 = MEMORY[0x2A1C7C4A8](v16 - 8);
  v110 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v98 - v19;
  sub_29E4A721C(0, &qword_2A184B450, MEMORY[0x29EDC19E0]);
  v22 = MEMORY[0x2A1C7C4A8](v21 - 8);
  v105 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v111 = &v98 - v25;
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v112 = &v98 - v27;
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v109 = &v98 - v29;
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v32 = &v98 - v31;
  MEMORY[0x2A1C7C4A8](v30);
  v34 = &v98 - v33;
  v35 = sub_29E4FB770();
  if (v35)
  {
    v100 = v35;
    v115 = v2;
    sub_29E4FB740();
    v36 = sub_29E4FB910();
    v37 = *(v36 - 8);
    v38 = *(v37 + 48);
    ObjectType = v37 + 48;
    v103 = v38;
    v39 = v38(v20, 1, v36);
    v104 = a1;
    v114 = v36;
    v99 = v37;
    if (v39 == 1)
    {
      sub_29E4A73E4(v20, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
      v40 = 1;
    }

    else
    {
      sub_29E4FB900();
      (*(v37 + 8))(v20, v36);
      v40 = 0;
    }

    v55 = v9[7];
    v55(v34, v40, 1, v8);
    v56 = *MEMORY[0x29EDC19D8];
    v57 = v9[13];
    v102 = v9 + 13;
    v101 = v57;
    v57(v32, v56, v8);
    v108 = v55;
    v55(v32, 0, 1, v8);
    v58 = *(v118 + 48);
    v59 = MEMORY[0x29EDC19E0];
    sub_29E4A7270(v34, v15, &qword_2A184B450, MEMORY[0x29EDC19E0]);
    sub_29E4A7270(v32, &v15[v58], &qword_2A184B450, v59);
    v116 = v9;
    v60 = v9[6];
    if (v60(v15, 1, v8) == 1)
    {
      v61 = MEMORY[0x29EDC19E0];
      sub_29E4A73E4(v32, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      sub_29E4A73E4(v34, &qword_2A184B450, v61);
      v62 = v60;
      if (v60(&v15[v58], 1, v8) == 1)
      {
        sub_29E4A73E4(v15, &qword_2A184B450, MEMORY[0x29EDC19E0]);
        v63 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v64 = v109;
      sub_29E4A7270(v15, v109, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      v98 = v60;
      if (v60(&v15[v58], 1, v8) != 1)
      {
        v66 = v116;
        v67 = &v15[v58];
        v68 = v106;
        (*(v116 + 4))(v106, v67, v8);
        sub_29E4A7338();
        v63 = sub_29E4FC680();
        v69 = *(v66 + 1);
        v69(v68, v8);
        v70 = MEMORY[0x29EDC19E0];
        sub_29E4A73E4(v32, &qword_2A184B450, MEMORY[0x29EDC19E0]);
        sub_29E4A73E4(v34, &qword_2A184B450, v70);
        v69(v109, v8);
        sub_29E4A73E4(v15, &qword_2A184B450, v70);
        v62 = v98;
LABEL_16:
        v71 = sub_29E4FB840();
        v73 = v72;
        v120 = &type metadata for ProfileContentProvider;
        v121 = sub_29E4A7640();
        v74 = swift_allocObject();
        v119 = v74;
        *(v74 + 16) = v71;
        *(v74 + 24) = v73;
        v75 = v100;
        *(v74 + 32) = v100;
        *(v74 + 40) = v63 & 1;
        v115 = v75;
        sub_29E4FBD30();
        sub_29E4FBD80();
        v76 = v111;
        if (v63)
        {
          sub_29E4FBD50();
        }

        else
        {
          sub_29E4FBD40();
        }

        v77 = v110;
        sub_29E4FB740();
        v78 = v114;
        v79 = v103(v77, 1, v114);
        v80 = v113;
        if (v79 == 1)
        {
          sub_29E4A73E4(v77, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
          v81 = 1;
          v82 = v112;
        }

        else
        {
          v82 = v112;
          sub_29E4FB900();
          (*(v99 + 8))(v77, v78);
          v81 = 0;
        }

        v83 = v108;
        v108(v82, v81, 1, v8);
        v101(v76, *MEMORY[0x29EDC19D0], v8);
        v83(v76, 0, 1, v8);
        v84 = *(v118 + 48);
        v85 = MEMORY[0x29EDC19E0];
        sub_29E4A7270(v82, v80, &qword_2A184B450, MEMORY[0x29EDC19E0]);
        sub_29E4A7270(v76, v80 + v84, &qword_2A184B450, v85);
        if (v62(v80, 1, v8) == 1)
        {
          v86 = MEMORY[0x29EDC19E0];
          sub_29E4A73E4(v76, &qword_2A184B450, MEMORY[0x29EDC19E0]);
          sub_29E4A73E4(v82, &qword_2A184B450, v86);
          if (v62(v80 + v84, 1, v8) == 1)
          {
            sub_29E4A73E4(v80, &qword_2A184B450, MEMORY[0x29EDC19E0]);
            goto LABEL_29;
          }
        }

        else
        {
          v87 = v105;
          sub_29E4A7270(v80, v105, &qword_2A184B450, MEMORY[0x29EDC19E0]);
          if (v62(v80 + v84, 1, v8) != 1)
          {
            v89 = v82;
            v90 = v116;
            v91 = v80 + v84;
            v92 = v106;
            (*(v116 + 4))(v106, v91, v8);
            sub_29E4A7338();
            v93 = sub_29E4FC680();
            v94 = *(v90 + 1);
            v94(v92, v8);
            v95 = MEMORY[0x29EDC19E0];
            sub_29E4A73E4(v76, &qword_2A184B450, MEMORY[0x29EDC19E0]);
            sub_29E4A73E4(v89, &qword_2A184B450, v95);
            v94(v87, v8);
            sub_29E4A73E4(v80, &qword_2A184B450, v95);
            if (v93)
            {
LABEL_29:
              v96 = [v117 parentViewController];
              if (v96)
              {
                v97 = v96;
                sub_29E4A542C(v97);

                return;
              }
            }

LABEL_31:

            return;
          }

          v88 = MEMORY[0x29EDC19E0];
          sub_29E4A73E4(v76, &qword_2A184B450, MEMORY[0x29EDC19E0]);
          sub_29E4A73E4(v82, &qword_2A184B450, v88);
          (*(v116 + 1))(v87, v8);
        }

        sub_29E4A72DC(v80);
        goto LABEL_31;
      }

      v65 = MEMORY[0x29EDC19E0];
      sub_29E4A73E4(v32, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      sub_29E4A73E4(v34, &qword_2A184B450, v65);
      (*(v116 + 1))(v64, v8);
      v62 = v98;
    }

    sub_29E4A72DC(v15);
    v63 = 0;
    goto LABEL_16;
  }

  v41 = ObjectType;
  v118 = v6;
  sub_29E4FC360();
  v42 = *(v115 + 2);
  v42(v114, a1, v2);
  v43 = sub_29E4FC3B0();
  v44 = sub_29E4FC920();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v122[0] = v46;
    *v45 = 136446466;
    v119 = v41;
    swift_getMetatypeMetadata();
    v47 = sub_29E4FC700();
    v49 = sub_29E4F68F4(v47, v48, v122);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v50 = v114;
    v42(v103, v114, v2);
    v51 = sub_29E4FC700();
    v53 = v52;
    (*(v115 + 1))(v50, v2);
    v54 = sub_29E4F68F4(v51, v53, v122);

    *(v45 + 14) = v54;
    _os_log_impl(&dword_29E494000, v43, v44, "[%{public}s]: No image found in %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v46, -1, -1);
    MEMORY[0x29ED8BDB0](v45, -1, -1);
  }

  else
  {

    (*(v115 + 1))(v114, v2);
  }

  (*(v108 + 1))(v116, v118);
}

uint64_t sub_29E4A542C(void *a1)
{
  v35 = a1;
  v2 = MEMORY[0x29EDC16D8];
  sub_29E4A721C(0, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = v33 - v4;
  v6 = sub_29E4FB240();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v11 = v33 - v10;
  MEMORY[0x2A1C7C4A8](v9);
  v13 = v33 - v12;
  v14 = qword_2A1A70D30;
  swift_beginAccess();
  sub_29E4A7270(v1 + v14, v5, &qword_2A1A70BA8, v2);
  v15 = sub_29E4FB7B0();
  if ((*(*(v15 - 8) + 48))(v5, 1, v15))
  {
    return sub_29E4A73E4(v5, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  }

  v17 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E4FB720();
  sub_29E4A73E4(v5, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  v19 = [v18 identifier];

  sub_29E4FB230();
  v20 = v36;
  v33[0] = *(v36 + 32);
  (v33[0])(v13, v11, v6);
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  v33[1] = qword_2A1A70D38;
  sub_29E4FB050();
  (*(v20 + 16))(v17, v13, v6);
  v21 = v6;
  v22 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v23 = swift_allocObject();
  v34 = v13;
  v24 = v23;
  v25 = v23 + v22;
  v26 = v21;
  (v33[0])(v25, v17, v21);
  v27 = sub_29E4FC6B0();

  aBlock[4] = sub_29E4A756C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E4A5BD8;
  aBlock[3] = &unk_2A24E7D50;
  v28 = _Block_copy(aBlock);

  v29 = [objc_opt_self() actionWithTitle:v27 style:0 handler:v28];
  _Block_release(v28);

  sub_29E4FB050();
  sub_29E4FB050();
  v30 = sub_29E4FC6B0();

  v31 = sub_29E4FC6B0();

  v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

  [v32 addAction_];
  [v35 presentViewController:v32 animated:1 completion:0];

  return (*(v36 + 8))(v34, v26);
}

void sub_29E4A5A04(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4FB240();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E4FBFE0();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a2, v3);
  sub_29E4FBFB0();
  sub_29E4FBF90();
  (*(v8 + 8))(v10, v7);
  sub_29E4FCAB0();
  v11 = objc_allocWithZone(sub_29E4FBAC0());
  v12 = sub_29E4FBAB0();
  sub_29E4A75F4();
  v13 = sub_29E4FC9F0();
  [v13 addOperation_];
}

void sub_29E4A5BD8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_29E4A5C40(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_29E4FC3C0();
  v45 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FB1E0();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E4FB7B0();
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1);
  (*(v9 + 16))(v11, a2, v8);
  v16 = sub_29E4A651C(v14, v11);
  v18 = v17;
  v20 = v19;
  sub_29E4FC380();
  v21 = v18;
  v22 = v20;
  v23 = v16;
  v24 = sub_29E4FC3B0();
  v25 = sub_29E4FC940();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = v5;
    v27 = v26;
    v43 = swift_slowAlloc();
    v47[0] = v43;
    *v27 = 136446466;
    v46[0] = ObjectType;
    swift_getMetatypeMetadata();
    v28 = sub_29E4FC700();
    v30 = v18;
    v31 = v21;
    v32 = sub_29E4F68F4(v28, v29, v47);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v46[0] = v23;
    v46[1] = v30;
    v46[2] = v22;
    v33 = v23;
    v34 = v31;
    v35 = v22;
    v36 = sub_29E4FC700();
    v38 = sub_29E4F68F4(v36, v37, v47);
    v21 = v31;
    v18 = v30;

    *(v27 + 14) = v38;
    _os_log_impl(&dword_29E494000, v24, v25, "[%{public}s]: submitting tap analytics event for: %s", v27, 0x16u);
    v39 = v43;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v39, -1, -1);
    MEMORY[0x29ED8BDB0](v27, -1, -1);

    (*(v45 + 8))(v7, v44);
  }

  else
  {

    (*(v45 + 8))(v7, v5);
  }

  v47[0] = v23;
  v47[1] = v18;
  v47[2] = v22;
  v40 = sub_29E4FB810();
  v41 = sub_29E4FB800();
  v46[3] = v40;
  v46[4] = MEMORY[0x29EDC1710];
  v46[0] = v41;
  sub_29E4A7390();
  sub_29E4FB850();
  sub_29E4A1754(v46);
}

char *sub_29E4A6044(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_29E4FC6F0();
    v6 = qword_2A1A70D30;
    v7 = sub_29E4FB7B0();
    (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
    v8 = a4;
    v9 = sub_29E4FC6B0();
  }

  else
  {
    v10 = qword_2A1A70D30;
    v11 = sub_29E4FB7B0();
    (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
    v12 = a4;
    v9 = 0;
  }

  v15.receiver = a1;
  v15.super_class = type metadata accessor for ProfileItemTileViewController(0);
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v9, a4);

  return v13;
}

char *sub_29E4A6180(char *a1, uint64_t a2, void *a3)
{
  v5 = qword_2A1A70D30;
  v6 = sub_29E4FB7B0();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ProfileItemTileViewController(0);
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_29E4A6284()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileItemTileViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E4A635C(void *a1, uint64_t a2, char a3)
{
  v5 = sub_29E4FB240();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  if ((a3 & 1) == 0)
  {
    sub_29E4A7440();
    v9 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
    v10 = v9;
  }

  v11 = [a1 type];
  v12 = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
  v13 = [a1 identifier];
  sub_29E4FB230();

  sub_29E4FB200();
  (*(v6 + 8))(v8, v5);
  sub_29E4FC6B0();

  return v12;
}

id sub_29E4A651C(uint64_t a1, uint64_t a2)
{
  sub_29E4A721C(0, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_29E4FB1E0();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FB700();
  v11 = (*(v8 + 48))(v6, 1, v7);
  if (v11 == 1)
  {
    sub_29E4A73E4(v6, qword_2A1A70838, MEMORY[0x29EDB9BC8]);
    v12 = 0;
LABEL_7:
    v17 = sub_29E4FB720();
    v18 = sub_29E4A635C(v17, v12, v11 == 1);
    (*(v8 + 8))(a2, v7);
    v19 = sub_29E4FB7B0();
    (*(*(v19 - 8) + 8))(a1, v19);
    return v18;
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_29E4FB180();
  v14 = v13;
  v15 = v13;
  result = (*(v8 + 8))(v10, v7);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v14 < 9.22337204e18)
  {
    v12 = v14;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_29E4A67B4(void *a1)
{
  v2 = v1;
  v71 = a1;
  ObjectType = swift_getObjectType();
  v69 = sub_29E4FB1E0();
  v68 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69);
  v67 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E4FB930();
  v75 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v66 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A719C(0);
  v73 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v76 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A721C(0, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v64 - v9;
  sub_29E4A721C(0, &qword_2A184B450, MEMORY[0x29EDC19E0]);
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v72 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v64 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v74 = &v64 - v17;
  v18 = MEMORY[0x29EDC16D8];
  sub_29E4A721C(0, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  MEMORY[0x2A1C7C4A8](v19 - 8);
  v21 = &v64 - v20;
  v22 = sub_29E4FB7B0();
  v23 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = qword_2A1A70D30;
  swift_beginAccess();
  v70 = v2;
  sub_29E4A7270(v2 + v26, v21, &qword_2A1A70BA8, v18);
  v27 = *(v23 + 48);
  v77 = v22;
  if (v27(v21, 1, v22) != 1)
  {
    (*(v23 + 32))(v25, v21, v77);
    sub_29E4FB740();
    v28 = sub_29E4FB910();
    v29 = *(v28 - 8);
    v30 = v25;
    if ((*(v29 + 48))(v10, 1, v28) == 1)
    {
      sub_29E4A73E4(v10, &unk_2A1A705A0, MEMORY[0x29EDC1958]);
      v31 = 1;
      v32 = v74;
    }

    else
    {
      v32 = v74;
      sub_29E4FB900();
      (*(v29 + 8))(v10, v28);
      v31 = 0;
    }

    v33 = v75;
    v34 = *(v75 + 56);
    v34(v32, v31, 1, v4);
    (*(v33 + 104))(v16, *MEMORY[0x29EDC19D8], v4);
    v34(v16, 0, 1, v4);
    v35 = *(v73 + 48);
    v36 = MEMORY[0x29EDC19E0];
    v37 = v76;
    sub_29E4A7270(v32, v76, &qword_2A184B450, MEMORY[0x29EDC19E0]);
    sub_29E4A7270(v16, v37 + v35, &qword_2A184B450, v36);
    v38 = *(v33 + 48);
    if (v38(v37, 1, v4) == 1)
    {
      v39 = MEMORY[0x29EDC19E0];
      sub_29E4A73E4(v16, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      v40 = v76;
      sub_29E4A73E4(v32, &qword_2A184B450, v39);
      if (v38(v40 + v35, 1, v4) == 1)
      {
        sub_29E4A73E4(v40, &qword_2A184B450, MEMORY[0x29EDC19E0]);
        return (*(v23 + 8))(v30, v77);
      }
    }

    else
    {
      v41 = v72;
      sub_29E4A7270(v37, v72, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      if (v38(v37 + v35, 1, v4) != 1)
      {
        v74 = v30;
        v54 = v75;
        v55 = v37 + v35;
        v56 = v66;
        (*(v75 + 32))(v66, v55, v4);
        sub_29E4A7338();
        v57 = v37;
        v58 = sub_29E4FC680();
        v59 = *(v54 + 8);
        v59(v56, v4);
        v60 = MEMORY[0x29EDC19E0];
        sub_29E4A73E4(v16, &qword_2A184B450, MEMORY[0x29EDC19E0]);
        sub_29E4A73E4(v32, &qword_2A184B450, v60);
        v59(v72, v4);
        v30 = v74;
        sub_29E4A73E4(v57, &qword_2A184B450, v60);
        if (v58)
        {
          return (*(v23 + 8))(v30, v77);
        }

        goto LABEL_11;
      }

      v42 = v41;
      v43 = MEMORY[0x29EDC19E0];
      sub_29E4A73E4(v16, &qword_2A184B450, MEMORY[0x29EDC19E0]);
      v40 = v76;
      sub_29E4A73E4(v32, &qword_2A184B450, v43);
      (*(v75 + 8))(v42, v4);
    }

    sub_29E4A72DC(v40);
LABEL_11:
    v44 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
    v45 = sub_29E4FB590();
    v46 = v23;
    v47 = v44;
    v48 = sub_29E4FB580();
    v49 = sub_29E4FB720();
    [v47 setProfileIdentifier_];

    [v47 resume];
    v50 = v67;
    sub_29E4FB1D0();
    sub_29E4A5C40(v30, v50);
    (*(v68 + 8))(v50, v69);
    sub_29E4FBE30();
    v51 = v47;
    sub_29E4FCA00();
    v79 = v45;
    v80 = MEMORY[0x29EDC3970];
    v78 = v48;

    v52 = sub_29E4FBE20();
    [v71 showViewController:v52 sender:v71];

    v23 = v46;

    return (*(v23 + 8))(v30, v77);
  }

  sub_29E4A73E4(v21, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  v81 = 0;
  v82 = 0xE000000000000000;
  sub_29E4FCD70();
  v81 = ObjectType;
  swift_getMetatypeMetadata();
  v61 = sub_29E4FC700();
  v63 = v62;

  v81 = v61;
  v82 = v63;
  MEMORY[0x29ED8AD70](0xD000000000000022, 0x800000029E501A90);
  result = sub_29E4FCDE0();
  __break(1u);
  return result;
}

void sub_29E4A719C(uint64_t a1)
{
  if (!qword_2A184B448)
  {
    sub_29E4A721C(255, &qword_2A184B450, MEMORY[0x29EDC19E0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A184B448);
    }
  }
}

void sub_29E4A721C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E4FCC30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E4A7270(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E4A721C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E4A72DC(uint64_t a1)
{
  sub_29E4A719C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29E4A7338()
{
  result = qword_2A184B458;
  if (!qword_2A184B458)
  {
    sub_29E4FB930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B458);
  }

  return result;
}

unint64_t sub_29E4A7390()
{
  result = qword_2A184B460;
  if (!qword_2A184B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B460);
  }

  return result;
}

uint64_t sub_29E4A73E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E4A721C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29E4A7440()
{
  result = qword_2A184B468;
  if (!qword_2A184B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B468);
  }

  return result;
}

void sub_29E4A7494(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29E4A2CE8(255, a3, a4);
    v5 = sub_29E4FCC30();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29E4A74EC(uint64_t a1, uint64_t a2)
{
  sub_29E4A721C(0, &qword_2A1A70BA8, MEMORY[0x29EDC16D8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_29E4A756C(uint64_t a1)
{
  v3 = *(sub_29E4FB240() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_29E4A5A04(a1, v4);
}

uint64_t sub_29E4A75DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29E4A75F4()
{
  result = qword_2A184B470;
  if (!qword_2A184B470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A184B470);
  }

  return result;
}

unint64_t sub_29E4A7640()
{
  result = qword_2A184B478;
  if (!qword_2A184B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B478);
  }

  return result;
}

uint64_t sub_29E4A7694(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_29E4A7494(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_29E4A76F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_29E4A7754()
{
  result = qword_2A184B490;
  if (!qword_2A184B490)
  {
    sub_29E4A7494(255, &qword_2A184B480, &qword_2A184B488, MEMORY[0x29EDC2460]);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A184B490);
  }

  return result;
}

uint64_t sub_29E4A77B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_29E4A77FC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_29E4A7850(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29E4A7864(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29E4A78AC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_29E4A7900()
{
  result = qword_2A184B498;
  if (!qword_2A184B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B498);
  }

  return result;
}

unint64_t sub_29E4A7958()
{
  result = qword_2A184B4A0;
  if (!qword_2A184B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B4A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProfileContentProvider.Accessory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProfileContentProvider.Accessory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29E4A7B0C()
{
  result = qword_2A184B4A8;
  if (!qword_2A184B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B4A8);
  }

  return result;
}

uint64_t sub_29E4A7B94@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

char *sub_29E4A7C24(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E4AA218(0, &qword_2A1A70BD0, MEMORY[0x29EDC99B0]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29E4A7D90(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x29EDCA190];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[5 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E4AA1BC(0, a6, a7, 1);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_29E4A7F14(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  sub_29E4A9FF0(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_29E4A8114(void *result, int64_t a2, char a3, void *a4)
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
    sub_29E4AA150(0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E4AA1BC(0, qword_2A1A6FD50, &protocol descriptor for EndSharingRelationshipObserver, 0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_29E4A8264(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_29E4A9FF0(0, a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x29EDCA190];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_29E4AA100();
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_29E4A8388(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E4AA218(0, &qword_2A184B4D0, MEMORY[0x29EDC9AD8]);
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
    v10 = MEMORY[0x29EDCA190];
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

void *sub_29E4A8490(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29E4A9FF0(0, &qword_2A184B4C8, MEMORY[0x29EDC1A38]);
  v4 = *(sub_29E4FBAA0() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_29E4A859C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_29E4A7D90(result, v10, 1, v3, sub_29E4A9E6C, &qword_2A1A70560, MEMORY[0x29EDC34A8]);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_29E4AA1BC(0, &qword_2A1A70560, MEMORY[0x29EDC34A8], 1);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29E4A86D0(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_29E4A7F14(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_2A1A708B8, MEMORY[0x29EDC3840], MEMORY[0x29EDC3840]);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_29E4FB460();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29E4A882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E4FC3C0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v77 - v13;
  swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (!v15 || !a1)
  {
    sub_29E4FC0E0();
    swift_unknownObjectRetain();
    v55 = sub_29E4FC3B0();
    v56 = sub_29E4FC940();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v85[0] = v58;
      *v57 = 136315138;
      *&v82 = a1;
      *(&v82 + 1) = a2;
      sub_29E4AA1BC(0, &qword_2A184B4B0, MEMORY[0x29EDC34B8], 0);
      swift_unknownObjectRetain();
      v59 = sub_29E4FC700();
      v61 = sub_29E4F68F4(v59, v60, v85);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_29E494000, v55, v56, "Profiles plugin cannot provide input signals without a HealthPlatformOrchestrationContext, ignoring context: %s", v57, 0xCu);
      sub_29E4A1754(v58);
      MEMORY[0x29ED8BDB0](v58, -1, -1);
      MEMORY[0x29ED8BDB0](v57, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return MEMORY[0x29EDCA190];
  }

  v16 = v15;
  ObjectType = swift_getObjectType();
  v80 = v16;
  v18 = *(v16 + 16);
  swift_unknownObjectRetain();
  v19 = sub_29E4FB2C0();
  if (!v19)
  {
    sub_29E4FC0E0();
    swift_unknownObjectRetain();
    v62 = sub_29E4FC3B0();
    v63 = sub_29E4FC940();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v85[0] = v65;
      *v64 = 136315138;
      *&v82 = a1;
      *(&v82 + 1) = v80;
      sub_29E4AA1BC(0, &qword_2A184B4B8, MEMORY[0x29EDC36B0], 0);
      swift_unknownObjectRetain();
      v66 = sub_29E4FC700();
      v68 = sub_29E4F68F4(v66, v67, v85);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_29E494000, v62, v63, "Profiles plugin cannot perform work without a health store, ignoring context: %s", v64, 0xCu);
      sub_29E4A1754(v65);
      MEMORY[0x29ED8BDB0](v65, -1, -1);
      MEMORY[0x29ED8BDB0](v64, -1, -1);
    }

    (*(v9 + 8))(v14, v8);
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA190];
  }

  v20 = v19;
  sub_29E4A9E6C(0);
  v77[1] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_29E4FDE60;
  v23 = type metadata accessor for CloudSyncNotificationInputSignal();
  v24 = [v20 profileIdentifier];
  v25 = *(v18 + 8);
  v79 = ObjectType;
  v78 = v25;
  v26 = sub_29E4F49FC(v24, a1, a3, a4, v23, ObjectType, v25);
  *(v22 + 56) = v23;
  *(v22 + 64) = sub_29E4A9FA4(&qword_2A1A6FD00, type metadata accessor for CloudSyncNotificationInputSignal, &unk_29E501480);
  *(v22 + 32) = v26;
  swift_unknownObjectRetain();
  v27 = swift_unknownObjectRetain();
  v28 = _s19HealthOrchestration19ConstantInputSignalC8ProfilesSSRszrlE17searchDestination8observerACySSGAA0dE8Observer_p_tFZ_0(v27, a4);
  sub_29E4A9ED8();
  *(v22 + 96) = v29;
  *(v22 + 104) = sub_29E4A9FA4(&qword_2A1A704B8, sub_29E4A9ED8, MEMORY[0x29EDC3578]);
  *(v22 + 72) = v28;
  v81 = a4;
  if (qword_2A1A6FE18 != -1)
  {
    swift_once();
  }

  v30 = qword_2A1A70C98;
  v31 = type metadata accessor for EndSharingRelationshipManager();
  *(&v83 + 1) = v31;
  v84 = &off_2A24E7F40;
  *&v82 = v30;
  v32 = type metadata accessor for EndSharingRelationshipInputSignal();
  v33 = swift_allocObject();
  v34 = sub_29E4A9F54(&v82, v31);
  MEMORY[0x2A1C7C4A8](v34);
  v36 = (v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = *v36;
  v33[5] = v31;
  v33[6] = &off_2A24E7F40;
  v33[7] = a3;
  v33[2] = v38;
  v33[8] = v81;
  swift_unknownObjectRetain();

  sub_29E4A1754(&v82);
  *(v22 + 136) = v32;
  *(v22 + 144) = sub_29E4A9FA4(qword_2A1A6FC38, type metadata accessor for EndSharingRelationshipInputSignal, &unk_29E4FEF6C);
  *(v22 + 112) = v33;
  v39 = type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal.ObserverShim();
  swift_allocObject();
  v40 = v20;
  v41 = sub_29E4AB11C(v40);
  *(&v83 + 1) = v39;
  v84 = &off_2A24E8010;
  *&v82 = v41;
  v42 = type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal();
  v43 = swift_allocObject();
  v44 = v81;
  v43[2] = a3;
  v43[3] = v44;
  sub_29E498334(&v82, (v43 + 4));
  v43[9] = v40;
  *(v22 + 176) = v42;
  *(v22 + 184) = sub_29E4A9FA4(qword_2A1A6F490, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, &unk_29E4FF1B8);
  *(v22 + 152) = v43;
  v85[0] = v22;
  v45 = type metadata accessor for SharingEntryProfileInformationInputSignal();
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  swift_allocObject();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v46 = v40;
  v47 = a3;
  v48 = a3;
  v49 = v46;
  v50 = sub_29E4B8D8C(a1, v80, v48, v44, v46, &v82);
  if (v50)
  {
    v51 = v50;
    v53 = *(v22 + 16);
    v52 = *(v22 + 24);
    if (v53 >= v52 >> 1)
    {
      v22 = sub_29E4A7D90((v52 > 1), v53 + 1, 1, v22, sub_29E4A9E6C, &qword_2A1A70560, MEMORY[0x29EDC34A8]);
    }

    v54 = &off_29F36A000;
    *(&v83 + 1) = v45;
    v84 = sub_29E4A9FA4(&unk_2A1A6F630, type metadata accessor for SharingEntryProfileInformationInputSignal, &unk_29E4FF930);
    *&v82 = v51;
    *(v22 + 16) = v53 + 1;
    sub_29E498334(&v82, v22 + 40 * v53 + 32);
    v85[0] = v22;
  }

  else
  {
    v54 = &off_29F36A000;
  }

  v70 = [v49 v54[265]];
  if ([v70 type] == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29E4FEDE0;
    v72 = type metadata accessor for ContactStoreGivenFamilyNameInputSignal();
    v73 = swift_allocObject();
    *(v73 + 16) = v47;
    *(v73 + 24) = v44;
    *(inited + 56) = v72;
    *(inited + 64) = sub_29E4A9FA4(qword_2A1A6F908, type metadata accessor for ContactStoreGivenFamilyNameInputSignal, &unk_29E501770);
    *(inited + 32) = v73;
    v74 = type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal();
    swift_unknownObjectRetain_n();
    v75 = swift_unknownObjectRetain();
    v76 = sub_29E4D6084(v75, v47, v44, v74, v79, v78);
    *(inited + 96) = v74;
    *(inited + 104) = sub_29E4A9FA4(qword_2A1A6F3D0, type metadata accessor for SharingRelationshipLatestTransactionDatesInputSignal, &protocol conformance descriptor for SharingRelationshipLatestTransactionDatesInputSignal);
    *(inited + 72) = v76;
    sub_29E4A859C(inited);
    swift_unknownObjectRelease();

    return v85[0];
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v22;
}

uint64_t sub_29E4A920C(uint64_t a1, uint64_t a2)
{
  v65 = sub_29E4FC3C0();
  v4 = *(v65 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v65);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v63 - v8;
  v10 = sub_29E4FB8D0();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (!v14 || !a1)
  {
    sub_29E4FC0E0();
    swift_unknownObjectRetain();
    v20 = sub_29E4FC3B0();
    v21 = sub_29E4FC940();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v72[0] = v23;
      *v22 = 136315138;
      *&v73 = a1;
      *(&v73 + 1) = a2;
      sub_29E4AA1BC(0, &qword_2A184B4B0, MEMORY[0x29EDC34B8], 0);
      swift_unknownObjectRetain();
      v24 = sub_29E4FC700();
      v26 = sub_29E4F68F4(v24, v25, v72);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_29E494000, v20, v21, "Profiles plugin cannot perform work without a HealthPlatformOrchestrationContext, ignoring context: %s", v22, 0xCu);
      sub_29E4A1754(v23);
      MEMORY[0x29ED8BDB0](v23, -1, -1);
      MEMORY[0x29ED8BDB0](v22, -1, -1);
    }

    (*(v4 + 8))(v7, v65);
    return MEMORY[0x29EDCA190];
  }

  v15 = v14;
  swift_getObjectType();
  v64 = v15;
  swift_unknownObjectRetain();
  v16 = sub_29E4FB2C0();
  if (!v16)
  {
    sub_29E4FC0E0();
    swift_unknownObjectRetain();
    v27 = sub_29E4FC3B0();
    v28 = sub_29E4FC940();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v72[0] = v30;
      *v29 = 136315138;
      *&v73 = a1;
      *(&v73 + 1) = v64;
      sub_29E4AA1BC(0, &qword_2A184B4B8, MEMORY[0x29EDC36B0], 0);
      swift_unknownObjectRetain();
      v31 = sub_29E4FC700();
      v33 = sub_29E4F68F4(v31, v32, v72);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_29E494000, v27, v28, "Profiles plugin cannot perform work without a health store, ignoring context: %s", v29, 0xCu);
      sub_29E4A1754(v30);
      MEMORY[0x29ED8BDB0](v30, -1, -1);
      MEMORY[0x29ED8BDB0](v29, -1, -1);
    }

    (*(v4 + 8))(v9, v65);
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA190];
  }

  v17 = v16;
  v18 = [v16 profileIdentifier];
  v19 = [v18 type];
  if (v19 > 2)
  {
    if (v19 != 3)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v19 != 1)
  {
    if (v19 != 2)
    {
LABEL_16:
      swift_unknownObjectRelease();

      return MEMORY[0x29EDCA190];
    }

LABEL_15:
    sub_29E4A9C14(0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_29E4FDE40;
    swift_unknownObjectRetain();
    v35 = v17;
    sub_29E4FB8C0();
    *(&v74 + 1) = v10;
    v75 = MEMORY[0x29EDC1928];
    v36 = sub_29E4A197C(&v73);
    (*(v11 + 32))(v36, v13, v10);
    type metadata accessor for SharingProfileInformationExecutor();
    v37 = swift_allocObject();
    v38 = v64;
    v37[2] = a1;
    v37[3] = v38;
    v37[4] = v35;
    sub_29E498334(&v73, (v37 + 5));
    v39 = sub_29E4A9FA4(&qword_2A184B270, type metadata accessor for SharingProfileInformationExecutor, &unk_29E4FE03C);
    *(v34 + 32) = v37;
    *(v34 + 40) = v39;
    swift_unknownObjectRelease();

    return v34;
  }

  sub_29E4A9C14(0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_29E4FDE60;
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  memset(v72, 0, 40);
  v42 = sub_29E4A9C80();
  swift_unknownObjectRetain();
  v43 = v17;
  v44 = sub_29E4FC9B0();
  v71[3] = v42;
  v71[4] = &off_2A24E8F38;
  v71[0] = v44;
  type metadata accessor for CloudSyncExecutor();
  v45 = swift_allocObject();
  v46 = v64;
  v45[2] = a1;
  v45[3] = v46;
  v45[4] = v43;
  sub_29E4A76F0(v71, (v45 + 5));
  sub_29E4A9D38(&v73, &v66, sub_29E4A9CCC);
  if (v67)
  {
    sub_29E498334(&v66, &v68);
    v47 = v43;
  }

  else
  {
    v48 = [v43 profileIdentifier];
    v49 = type metadata accessor for HealthAppDefaults();
    v50 = swift_allocObject();
    v50[3] = 0xD000000000000010;
    v50[4] = 0x800000029E501D20;
    v50[2] = v48;
    v69 = v49;
    v70 = &off_2A24E8E98;
    *&v68 = v50;
    if (v67)
    {
      sub_29E4A9E0C(&v66, sub_29E4A9CCC);
    }
  }

  sub_29E498334(&v68, (v45 + 10));
  sub_29E4A9D38(v72, &v66, sub_29E4A9DA0);
  if (v67)
  {

    sub_29E4A9E0C(v72, sub_29E4A9DA0);
    sub_29E4A9E0C(&v73, sub_29E4A9CCC);
    sub_29E4A1754(v71);
    sub_29E498334(&v66, &v68);
  }

  else
  {
    v51 = [v43 profileIdentifier];

    v52 = [objc_opt_self() standardUserDefaults];
    v69 = type metadata accessor for DefaultCloudSyncAlertBackoffAlgorithm(0);
    v70 = &off_2A24E91E8;
    v53 = sub_29E4A197C(&v68);
    v53[3] = &type metadata for DefaultCloudSyncAlertBackoffAlgorithmStore;
    v53[4] = &off_2A24E91C8;
    *v53 = v51;
    v53[1] = v52;
    sub_29E4FB280();
    sub_29E4A9E0C(v72, sub_29E4A9DA0);
    sub_29E4A9E0C(&v73, sub_29E4A9CCC);
    sub_29E4A1754(v71);
    if (v67)
    {
      sub_29E4A9E0C(&v66, sub_29E4A9DA0);
    }
  }

  sub_29E498334(&v68, (v45 + 15));
  v54 = sub_29E4A9FA4(&qword_2A1A70220, type metadata accessor for CloudSyncExecutor, &unk_29E500020);
  *(v41 + 32) = v45;
  *(v41 + 40) = v54;
  type metadata accessor for ProfileSearchExecutor();
  v55 = swift_allocObject();
  v56 = v64;
  v55[2] = a1;
  v55[3] = v56;
  v55[4] = v43;
  v57 = sub_29E4A9FA4(&qword_2A1A70080, type metadata accessor for ProfileSearchExecutor, &unk_29E500A80);
  *(v41 + 48) = v55;
  *(v41 + 56) = v57;
  type metadata accessor for PrimaryProfileInformationExecutor();
  v58 = swift_allocObject();
  v58[2] = a1;
  v58[3] = v56;
  v58[4] = v43;
  v59 = sub_29E4A9FA4(&qword_2A1A6FAA0, type metadata accessor for PrimaryProfileInformationExecutor, &unk_29E4FF530);
  *(v41 + 64) = v58;
  *(v41 + 72) = v59;
  type metadata accessor for SharingEntriesExecutor();
  v60 = swift_allocObject();
  v60[2] = a1;
  v60[3] = v56;
  v60[4] = v43;
  v61 = sub_29E4A9FA4(&qword_2A1A6FEF8, type metadata accessor for SharingEntriesExecutor, &unk_29E500F38);
  *(v41 + 80) = v60;
  *(v41 + 88) = v61;
  swift_unknownObjectRetain_n();
  v62 = v43;

  return v41;
}

void sub_29E4A9C14(uint64_t a1)
{
  if (!qword_2A1A6F0B8)
  {
    sub_29E4AA1BC(255, &qword_2A1A70468, MEMORY[0x29EDC3628], 0);
    v1 = sub_29E4FCF70();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F0B8);
    }
  }
}

unint64_t sub_29E4A9C80()
{
  result = qword_2A1A708F0;
  if (!qword_2A1A708F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A708F0);
  }

  return result;
}

void sub_29E4A9CCC(uint64_t a1)
{
  if (!qword_2A1A709C8)
  {
    sub_29E4AA1BC(255, qword_2A1A709D0, &protocol descriptor for CloudSyncResolutionInfoStore, 1);
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A709C8);
    }
  }
}

uint64_t sub_29E4A9D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E4A9DA0(uint64_t a1)
{
  if (!qword_2A1A709A8)
  {
    sub_29E4AA1BC(255, &qword_2A1A709B0, &protocol descriptor for CloudSyncAlertBackoffAlgorithm, 1);
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A709A8);
    }
  }
}

uint64_t sub_29E4A9E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E4A9E6C(uint64_t a1)
{
  if (!qword_2A1A6F0E8)
  {
    sub_29E4AA1BC(255, &qword_2A1A70560, MEMORY[0x29EDC34A8], 1);
    v1 = sub_29E4FCF70();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F0E8);
    }
  }
}

void sub_29E4A9ED8()
{
  if (!qword_2A1A704B0)
  {
    v0 = sub_29E4FC250();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A704B0);
    }
  }
}

uint64_t sub_29E4A9F54(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_29E4A9FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E4A9FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E4FCF70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E4AA044()
{
  result = qword_2A1A6FD40;
  if (!qword_2A1A6FD40)
  {
    sub_29E4AA094(255);
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2A1A6FD40);
  }

  return result;
}

void sub_29E4AA094(uint64_t a1)
{
  if (!qword_2A1A6FD48)
  {
    sub_29E4AA1BC(255, qword_2A1A6FD50, &protocol descriptor for EndSharingRelationshipObserver, 0);
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6FD48);
    }
  }
}

unint64_t sub_29E4AA100()
{
  result = qword_2A1A6F098;
  if (!qword_2A1A6F098)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2A1A6F098);
  }

  return result;
}

void sub_29E4AA150(uint64_t a1)
{
  if (!qword_2A184B4C0)
  {
    sub_29E4AA1BC(255, qword_2A1A6FD50, &protocol descriptor for EndSharingRelationshipObserver, 0);
    v1 = sub_29E4FCF70();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B4C0);
    }
  }
}

uint64_t sub_29E4AA1BC(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_29E4AA218(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_29E4FCF70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E4AA264()
{
  v12 = *v0;
  v1 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29E4A1EB4(0);
  v11 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*sub_29E4A1710(v0 + 2, v0[5]) + 40);
  os_unfair_lock_lock((v6 + 40));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 40));
  swift_getObjectType();
  sub_29E4FC2F0();
  v13 = v7;
  sub_29E4AA6E8(0);
  sub_29E4A1F6C();
  sub_29E4A2084();
  sub_29E4A219C();
  sub_29E4FC0B0();
  v13 = v0;
  sub_29E4AAA58(qword_2A1A6FC38, v8, type metadata accessor for EndSharingRelationshipInputSignal, &unk_29E4FEF6C);
  sub_29E4FC280();
  return (*(v3 + 8))(v5, v11);
}

uint64_t sub_29E4AA4A0()
{
  sub_29E4A1754((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_29E4AA570()
{
  v1 = *(*sub_29E4A1710((*v0 + 16), *(*v0 + 40)) + 40);
  os_unfair_lock_lock(v1 + 10);
  sub_29E4AA798(&v1[4]);
  os_unfair_lock_unlock(v1 + 10);
}

uint64_t sub_29E4AA5E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4AAA58(qword_2A1A6FC38, a2, type metadata accessor for EndSharingRelationshipInputSignal, &unk_29E4FEF6C);

  return MEMORY[0x2A1C64680](a1, v3);
}

void sub_29E4AA6E8(uint64_t a1)
{
  if (!qword_2A1A6F2F0)
  {
    sub_29E4FB240();
    sub_29E4FB910();
    sub_29E4AAA58(&unk_2A1A706B0, 255, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C18]);
    v1 = sub_29E4FC640();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F2F0);
    }
  }
}

uint64_t sub_29E4AA7B4()
{
  v11[1] = *v0;
  v1 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29E4A1EB4(0);
  v11[0] = v2;
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*sub_29E4A1710(v0 + 2, v0[5]) + 40);
  v12 = v0;
  v13 = &off_2A24E7F60;
  os_unfair_lock_lock(v6 + 10);
  sub_29E4AAA3C(&v6[4]);
  os_unfair_lock_unlock(v6 + 10);
  swift_getObjectType();
  sub_29E4FC2F0();
  v7 = *(*sub_29E4A1710(v0 + 2, v0[5]) + 40);
  os_unfair_lock_lock((v7 + 40));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 40));
  v14 = v8;
  sub_29E4AA6E8(0);
  sub_29E4A1F6C();
  sub_29E4A2084();
  sub_29E4A219C();
  sub_29E4FC0B0();
  v14 = v0;
  sub_29E4AAA58(qword_2A1A6FC38, v9, type metadata accessor for EndSharingRelationshipInputSignal, &unk_29E4FEF6C);
  sub_29E4FC280();
  return (*(v3 + 8))(v5, v11[0]);
}

uint64_t sub_29E4AAA58(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_29E4AAAA0()
{
  v1 = [*v0 domainName];
  v2 = sub_29E4FC6F0();

  return v2;
}

uint64_t sub_29E4AAB40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  sub_29E4AD0D8(0, &qword_2A1A6F100, MEMORY[0x29EDC9E88]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v13 - v10;
  sub_29E4A1710(a1, a1[3]);
  sub_29E4AD084();
  sub_29E4FD080();
  v15 = 0;
  sub_29E4FCF00();
  if (!v5)
  {
    v14 = 1;
    sub_29E4FCF00();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_29E4AACC0()
{
  if (*v0)
  {
    return 0x614E796C696D6166;
  }

  else
  {
    return 0x6D614E6E65766967;
  }
}

uint64_t sub_29E4AAD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
  if (v6 || (sub_29E4FCF80() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29E4FCF80();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_29E4AADFC(uint64_t a1)
{
  v2 = sub_29E4AD084();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E4AAE38(uint64_t a1)
{
  v2 = sub_29E4AD084();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E4AAE74@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_29E4ACE90(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t *sub_29E4AAF18(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_29E4FC3C0();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_29E4FC350();
    v10 = sub_29E4FC3B0();
    v11 = sub_29E4FC940();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v23 = a2;
      v13 = v12;
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446210;
      v15 = sub_29E4FD0B0();
      v17 = sub_29E4F68F4(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_29E494000, v10, v11, "[%{public}s] Database unlocked, retrying to send update", v13, 0xCu);
      sub_29E4A1754(v14);
      MEMORY[0x29ED8BDB0](v14, -1, -1);
      v18 = v13;
      a2 = v23;
      MEMORY[0x29ED8BDB0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v19 = a2[3];
    v20 = a2[4];
    v21 = sub_29E4A1710(a2, v19);
    sub_29E4AC368(v21, v9, v19, v20);
  }

  return result;
}

void *sub_29E4AB11C(void *a1)
{
  swift_unknownObjectWeakInit();
  sub_29E4AB794(0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  sub_29E4AB7F4(v11, v3 + 16);
  sub_29E4AB82C(v11);
  v1[4] = v3;
  v1[2] = a1;
  v4 = a1;
  v5 = [v4 profileIdentifier];
  v6 = [v5 type];

  if (v6 == 1)
  {
    v7 = [objc_opt_self() healthAppDefaultsDomainWithHealthStore_];
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x29EDBAC18]);
    v9 = sub_29E4FC6B0();
    v7 = [v8 initWithCategory:3 domainName:v9 healthStore:v4];
  }

  v1[3] = v7;
  return v1;
}

id sub_29E4AB24C(void *a1)
{
  v3 = *(v1 + 32);
  os_unfair_lock_lock(v3 + 6);
  sub_29E4AB8C0(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
  v4 = *(v1 + 24);
  [v4 startObservation_];
  return [a1 didUpdateKeyValueDomain_];
}

uint64_t sub_29E4AB2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(a2 + 24) stopObservation_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_29E4AB350(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(a2 + 24) stopObservation_];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_29E4AB3B8()
{

  return swift_deallocClassInstance();
}

void sub_29E4AB424()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock(v1 + 6);
  sub_29E4AB8A4(&v1[4]);

  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_29E4AB480()
{
  swift_unknownObjectRelease();
  sub_29E4A1754((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_29E4AB510(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E4AB530(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_29E4AB5B0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);
  sub_29E4A1710((*v0 + 32), v2);
  (*(v3 + 16))(v2, v3);
  v4 = v1[7];
  v5 = v1[8];
  sub_29E4A1710(v1 + 4, v4);
  return (*(v5 + 8))(v1, v4, v5);
}

uint64_t sub_29E4AB63C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 64);
  sub_29E4A1710((*v0 + 32), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_29E4AB694(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E4AB85C(qword_2A1A6F490, a2, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, &unk_29E4FF1B8);

  return MEMORY[0x2A1C64680](a1, v3);
}

void sub_29E4AB794(uint64_t a1)
{
  if (!qword_2A1A6F138)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_29E4FCDC0();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F138);
    }
  }
}

uint64_t sub_29E4AB85C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_29E4AB8DC(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_29E4FC3C0();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = MEMORY[0x2A1C7C4A8](v5);
  MEMORY[0x2A1C7C4A8](v6);
  v7 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  sub_29E4A1D34(0);
  v9 = v8;
  v46 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[3] = sub_29E4AD13C();
  v53[4] = &protocol witness table for HKKeyValueDomain;
  v53[0] = a1;
  v12 = a2[9];
  v13 = a1;
  v14 = [v12 profileIdentifier];
  v15 = [v14 type];

  if (v15 != 1)
  {
    v45 = v9;
    v16 = sub_29E4FC9E0();
    v18 = v17;
    v44 = v4;
    v28 = sub_29E4FC9E0();
    v30 = v29;
    swift_getObjectType();
    sub_29E4FC2F0();
    *&v51 = v16;
    *(&v51 + 1) = v18;
    *&v52 = v28;
    *(&v52 + 1) = v30;
    sub_29E4A1DB8();
    sub_29E4A1E0C();
    sub_29E4A1E60();
    sub_29E4FC0B0();
    *&v51 = a2;
    sub_29E4AB85C(qword_2A1A6F490, v31, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, &unk_29E4FF1B8);
LABEL_29:
    sub_29E4FC280();
    (*(v46 + 8))(v11, v45);
    return sub_29E4A1754(v53);
  }

  sub_29E4FC6F0();
  sub_29E4FC9D0();

  if (*(&v52 + 1))
  {
    sub_29E4AD2AC();
    if (swift_dynamicCast())
    {
      v45 = v9;
      v19 = v49;
      v20 = sub_29E4FC6F0();
      if (*(v19 + 16))
      {
        v22 = sub_29E49EE18(v20, v21);
        v24 = v23;

        if (v24)
        {
          sub_29E4AD310(*(v19 + 56) + 32 * v22, &v51);
          v25 = swift_dynamicCast();
          v26 = v49;
          if (!v25)
          {
            v26 = 0;
          }

          v48 = v26;
          if (v25)
          {
            v27 = v50;
          }

          else
          {
            v27 = 0;
          }

LABEL_18:
          v34 = sub_29E4FC6F0();
          if (*(v19 + 16))
          {
            v36 = sub_29E49EE18(v34, v35);
            v38 = v37;

            if (v38)
            {
              sub_29E4AD310(*(v19 + 56) + 32 * v36, &v51);

              v39 = swift_dynamicCast();
              if (v39)
              {
                v40 = v49;
              }

              else
              {
                v40 = 0;
              }

              if (v39)
              {
                v41 = v50;
              }

              else
              {
                v41 = 0;
              }

              goto LABEL_28;
            }
          }

          else
          {
          }

          v40 = 0;
          v41 = 0;
LABEL_28:
          swift_getObjectType();
          sub_29E4FC2F0();
          *&v51 = v48;
          *(&v51 + 1) = v27;
          *&v52 = v40;
          *(&v52 + 1) = v41;
          sub_29E4A1DB8();
          sub_29E4A1E0C();
          sub_29E4A1E60();
          sub_29E4FC0B0();
          *&v51 = a2;
          sub_29E4AB85C(qword_2A1A6F490, v42, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, &unk_29E4FF1B8);
          goto LABEL_29;
        }
      }

      else
      {
      }

      v48 = 0;
      v27 = 0;
      goto LABEL_18;
    }

    v32 = v9;
  }

  else
  {
    v32 = v9;
    sub_29E4AD1FC(&v51);
  }

  swift_getObjectType();
  sub_29E4FC2F0();
  sub_29E4A1DB8();
  sub_29E4A1E0C();
  sub_29E4A1E60();
  v51 = 0u;
  v52 = 0u;
  sub_29E4FC0B0();
  *&v51 = a2;
  sub_29E4AB85C(qword_2A1A6F490, v33, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, &unk_29E4FF1B8);
  sub_29E4FC280();
  (*(v46 + 8))(v11, v32);
  return sub_29E4A1754(v53);
}

uint64_t sub_29E4AC368(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = sub_29E4FC3C0();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = sub_29E4FC300();
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v57 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4A1D34(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v58 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[3] = a3;
  v66[4] = a4;
  sub_29E4A197C(v66);
  (*(*(a3 - 8) + 16))();
  v17 = [a2[9] profileIdentifier];
  v18 = [v17 type];

  if (v18 != 1)
  {
    v54 = v15;
    v55 = v14;
    v56 = v7;
    v20 = a2;
    v21 = *(a4 + 24);
    v22 = v21(0x4E79616C70736964, 0xEB00000000656D61, a3, a4);
    v24 = v23;
    v35 = v21(0x4C79616C70736964, 0xEF656D614E747361, a3, a4);
    v37 = v36;
    swift_getObjectType();
    sub_29E4FC2F0();
    *&v64 = v22;
    *(&v64 + 1) = v24;
    *&v65 = v35;
    *(&v65 + 1) = v37;
    sub_29E4A1DB8();
    sub_29E4A1E0C();
    sub_29E4A1E60();
    v38 = v58;
    sub_29E4FC0B0();
    *&v64 = v20;
    sub_29E4AB85C(qword_2A1A6F490, v39, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, &unk_29E4FF1B8);
LABEL_28:
    sub_29E4FC280();
    (*(v54 + 8))(v38, v55);
    return sub_29E4A1754(v66);
  }

  v19 = sub_29E4FC6F0();
  (*(a4 + 16))(&v64, v19);

  if (*(&v65 + 1))
  {
    sub_29E4AD2AC();
    if (swift_dynamicCast())
    {
      v25 = v62;
      v26 = sub_29E4FC6F0();
      v28 = *(v25 + 16);
      v55 = v14;
      v54 = v15;
      if (v28)
      {
        v29 = sub_29E49EE18(v26, v27);
        v31 = v30;

        if (v31)
        {
          sub_29E4AD310(*(v25 + 56) + 32 * v29, &v64);
          v32 = swift_dynamicCast();
          v33 = v62;
          if (!v32)
          {
            v33 = 0;
          }

          v61 = v33;
          if (v32)
          {
            v34 = v63;
          }

          else
          {
            v34 = 0;
          }

LABEL_17:
          v42 = sub_29E4FC6F0();
          if (*(v25 + 16))
          {
            v44 = a2;
            v45 = sub_29E49EE18(v42, v43);
            v47 = v46;

            if (v47)
            {
              sub_29E4AD310(*(v25 + 56) + 32 * v45, &v64);

              v48 = swift_dynamicCast();
              if (v48)
              {
                v49 = v62;
              }

              else
              {
                v49 = 0;
              }

              if (v48)
              {
                v50 = v63;
              }

              else
              {
                v50 = 0;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v44 = a2;
          }

          v49 = 0;
          v50 = 0;
LABEL_27:
          swift_getObjectType();
          sub_29E4FC2F0();
          *&v64 = v61;
          *(&v64 + 1) = v34;
          *&v65 = v49;
          *(&v65 + 1) = v50;
          sub_29E4A1DB8();
          sub_29E4A1E0C();
          sub_29E4A1E60();
          v38 = v58;
          sub_29E4FC0B0();
          *&v64 = v44;
          sub_29E4AB85C(qword_2A1A6F490, v51, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, &unk_29E4FF1B8);
          goto LABEL_28;
        }
      }

      else
      {
      }

      v61 = 0;
      v34 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    sub_29E4AD1FC(&v64);
  }

  v61 = a2[3];
  swift_getObjectType();
  sub_29E4FC2F0();
  sub_29E4A1DB8();
  sub_29E4A1E0C();
  sub_29E4A1E60();
  v64 = 0u;
  v65 = 0u;
  v40 = v58;
  sub_29E4FC0B0();
  *&v64 = a2;
  sub_29E4AB85C(qword_2A1A6F490, v41, type metadata accessor for HKKeyValueDomainGivenFamilyNameInputSignal, &unk_29E4FF1B8);
  sub_29E4FC280();
  (*(v15 + 8))(v40, v14);
  return sub_29E4A1754(v66);
}

uint64_t sub_29E4ACE90(void *a1)
{
  sub_29E4AD0D8(0, &unk_2A1A6F118, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_29E4A1710(a1, a1[3]);
  sub_29E4AD084();
  sub_29E4FD070();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_29E4FCE80();
    v11 = 1;
    sub_29E4FCE80();
    (*(v5 + 8))(v7, v4);
  }

  sub_29E4A1754(a1);
  return v8;
}

unint64_t sub_29E4AD084()
{
  result = qword_2A1A703E8[0];
  if (!qword_2A1A703E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A703E8);
  }

  return result;
}

void sub_29E4AD0D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E4AD084();
    v7 = a3(a1, &type metadata for GivenFamilyName.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29E4AD13C()
{
  result = qword_2A1A6F1D0;
  if (!qword_2A1A6F1D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A6F1D0);
  }

  return result;
}

unint64_t sub_29E4AD188()
{
  result = qword_2A1A70BC8;
  if (!qword_2A1A70BC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A70BC8);
  }

  return result;
}

uint64_t sub_29E4AD1FC(uint64_t a1)
{
  sub_29E4AD258();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E4AD258()
{
  if (!qword_2A1A6F0A0)
  {
    v0 = sub_29E4FCC30();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F0A0);
    }
  }
}

void sub_29E4AD2AC()
{
  if (!qword_2A1A6F268)
  {
    v0 = sub_29E4FC640();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A6F268);
    }
  }
}

uint64_t sub_29E4AD310(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29E4AD36C()
{

  sub_29E4A1754((v0 + 24));

  return MEMORY[0x2A1C733A0](v0, 72, 7);
}

__n128 sub_29E4AD3BC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_29E4AD3C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_29E4AD424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_29E4AD48C()
{
  result = qword_2A184B4E8;
  if (!qword_2A184B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B4E8);
  }

  return result;
}

unint64_t sub_29E4AD4E4()
{
  result = qword_2A1A703D8;
  if (!qword_2A1A703D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A703D8);
  }

  return result;
}

unint64_t sub_29E4AD53C()
{
  result = qword_2A1A703E0;
  if (!qword_2A1A703E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A703E0);
  }

  return result;
}

uint64_t sub_29E4AD594(uint64_t a1)
{
  if (a1 != 11)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_29E4AD684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_29E4FC850();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_29E4B0C68();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_29E4FCD70();
    MEMORY[0x29ED8AD70](0xD00000000000003FLL, 0x800000029E501F30);
    v12 = sub_29E4FD0B0();
    MEMORY[0x29ED8AD70](v12);

    MEMORY[0x29ED8AD70](46, 0xE100000000000000);
    result = sub_29E4FCDE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E4AD80C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v98 = a2;
  v99 = a3;
  ObjectType = swift_getObjectType();
  v95 = sub_29E4FC3C0();
  v97 = *(v95 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v95);
  v93 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v88 = &v88 - v7;
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v89 = &v88 - v9;
  MEMORY[0x2A1C7C4A8](v8);
  v92 = &v88 - v10;
  v90 = type metadata accessor for ProfileSharingUserInfo(0);
  v11 = MEMORY[0x2A1C7C4A8](v90);
  v91 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v88 - v14;
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = (&v88 - v17);
  MEMORY[0x2A1C7C4A8](v16);
  v96 = (&v88 - v19);
  sub_29E4AE3BC();
  v100 = a1;
  v20 = [a1 notification];
  v21 = [v20 request];

  v22 = [v21 identifier];
  v23 = sub_29E4FC6F0();
  v25 = v24;

  v26 = [objc_opt_self() sharingReminderNotificationIdentifier];
  v27 = sub_29E4FC6F0();
  v29 = v28;

  if (v23 != v27 || v25 != v29)
  {
    v30 = sub_29E4FCF80();

    if (v30)
    {
      goto LABEL_5;
    }

    v35 = [v100 notification];
    v36 = [v35 request];

    v37 = [v36 content];
    v38 = [v37 userInfo];

    v39 = sub_29E4FC630();
    sub_29E4F253C(v39, v18);
    v93 = v23;
    v40 = v96;
    sub_29E4B0E44(v18, v96);
    v41 = v92;
    sub_29E4FC3A0();
    sub_29E4B0EA8(v40, v15);
    v42 = sub_29E4FC3B0();
    v43 = sub_29E4FC940();
    v44 = os_log_type_enabled(v42, v43);
    v45 = v97;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v101[0] = v47;
      *v46 = 136446466;
      v48 = sub_29E4FD0B0();
      v50 = sub_29E4F68F4(v48, v49, v101);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = sub_29E4F29F4();
      v53 = v52;
      sub_29E4B0B74(v15, type metadata accessor for ProfileSharingUserInfo);
      v54 = sub_29E4F68F4(v51, v53, v101);

      *(v46 + 14) = v54;
      _os_log_impl(&dword_29E494000, v42, v43, "%{public}s Successfully decoded profile information %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v47, -1, -1);
      MEMORY[0x29ED8BDB0](v46, -1, -1);

      v55 = *(v97 + 8);
      v56 = v92;
    }

    else
    {

      sub_29E4B0B74(v15, type metadata accessor for ProfileSharingUserInfo);
      v55 = *(v45 + 8);
      v56 = v41;
    }

    v57 = v95;
    v55(v56, v95);
    v58 = v96;
    v59 = v91;
    sub_29E4B0EA8(v96, v91);
    v60 = *(v90 + 24);
    v61 = *v58;
    v62 = sub_29E4FBA60();
    v64 = v63;
    v65 = sub_29E4FB240();
    (*(*(v65 - 8) + 8))(v59 + v60, v65);
    if (v93 == v62 && v25 == v64 || (sub_29E4FCF80() & 1) != 0)
    {

      if (v61)
      {
        if (v61 == 1 && !v96[1])
        {
          sub_29E4AFF84(v96, v98, v99);
          return sub_29E4B0B74(v96, type metadata accessor for ProfileSharingUserInfo);
        }
      }

      else if (v96[1] == 1)
      {
        sub_29E4AE76C(v100, v96, v98, v99);
        return sub_29E4B0B74(v96, type metadata accessor for ProfileSharingUserInfo);
      }

      v66 = v89;
      sub_29E4FC3A0();
      v67 = sub_29E4FC3B0();
      v68 = sub_29E4FC920();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v101[0] = v70;
        *v69 = 136446210;
        v71 = sub_29E4FD0B0();
        v73 = sub_29E4F68F4(v71, v72, v101);

        *(v69 + 4) = v73;
        _os_log_impl(&dword_29E494000, v67, v68, "%{public}s Invalid profile information state. See profile information.", v69, 0xCu);
        sub_29E4A1754(v70);
        MEMORY[0x29ED8BDB0](v70, -1, -1);
        MEMORY[0x29ED8BDB0](v69, -1, -1);
      }

      v74 = v66;
    }

    else
    {
      v77 = v88;
      sub_29E4FC3A0();

      v78 = sub_29E4FC3B0();
      v79 = sub_29E4FC920();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v101[0] = v100;
        *v80 = 136446722;
        v81 = sub_29E4FD0B0();
        v83 = sub_29E4F68F4(v81, v82, v101);

        *(v80 + 4) = v83;
        *(v80 + 12) = 2082;
        v84 = v77;
        v85 = sub_29E4F68F4(v93, v25, v101);

        *(v80 + 14) = v85;
        *(v80 + 22) = 2080;
        v86 = sub_29E4F68F4(v62, v64, v101);

        *(v80 + 24) = v86;
        _os_log_impl(&dword_29E494000, v78, v79, "%{public}s Unexpected notification %{public}s doesn't match %s", v80, 0x20u);
        v87 = v100;
        swift_arrayDestroy();
        MEMORY[0x29ED8BDB0](v87, -1, -1);
        MEMORY[0x29ED8BDB0](v80, -1, -1);

        v74 = v84;
        v75 = v95;
        goto LABEL_24;
      }

      v74 = v77;
    }

    v75 = v57;
LABEL_24:
    v76 = (v55)(v74, v75);
    v98(v76);
    return sub_29E4B0B74(v96, type metadata accessor for ProfileSharingUserInfo);
  }

LABEL_5:
  v31 = v100;

  v32 = v98;
  v33 = v99;

  return sub_29E4AE550(v31, v32, v33);
}

void sub_29E4AE3BC()
{
  v1 = OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthStore;
  v2 = *(v0 + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthStore);
  if (v2 || (v3 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init], v4 = *(v0 + v1), *(v0 + v1) = v3, v4, (v2 = *(v0 + v1)) != 0))
  {
    v5 = OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_summarySharingEntryStore;
    v14 = v2;
    if (*(v0 + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_summarySharingEntryStore))
    {
      v6 = v2;
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x29EDBAE38]) initWithHealthStore_];
      v8 = *(v0 + v5);
      *(v0 + v5) = v7;
    }

    v9 = OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthSharingNotificationSyncStore;
    if (!*(v0 + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthSharingNotificationSyncStore))
    {
      sub_29E4A2AD8(0, &unk_2A184B580, 0x29EDBACA8);
      v10 = v0;
      sub_29E4FCAF0();
      v11 = objc_allocWithZone(MEMORY[0x29EDBACA8]);
      v12 = sub_29E4FC6B0();

      v13 = [v11 initWithClientIdentifier:v12 healthStore:v14];

      v14 = *(v10 + v9);
      *(v10 + v9) = v13;
    }
  }
}

uint64_t sub_29E4AE550(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v6 = sub_29E4FC3C0();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC3A0();
  v10 = sub_29E4FC3B0();
  v11 = sub_29E4FC940();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = a3;
    v26 = v14;
    v15 = v14;
    *v13 = 136446210;
    v16 = sub_29E4FD0B0();
    v18 = sub_29E4F68F4(v16, v17, &v26);
    v23 = v6;
    v19 = a2;
    v20 = v18;

    *(v13 + 4) = v20;
    a2 = v19;
    _os_log_impl(&dword_29E494000, v10, v11, "%{public}s Handling sharing reminder notification", v13, 0xCu);
    sub_29E4A1754(v15);
    v21 = v15;
    a3 = v25;
    MEMORY[0x29ED8BDB0](v21, -1, -1);
    MEMORY[0x29ED8BDB0](v13, -1, -1);

    (*(v24 + 8))(v9, v23);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return sub_29E4AF010(a1, 1, a2, a3);
}

uint64_t sub_29E4AE76C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v28 = a1;
  v29 = a4;
  v27 = a3;
  swift_getObjectType();
  v5 = sub_29E4FC3C0();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC3A0();
  v9 = sub_29E4FC3B0();
  v10 = sub_29E4FC940();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = a2;
    v13 = v12;
    v30 = v12;
    *v11 = 136446210;
    v14 = sub_29E4FD0B0();
    v16 = sub_29E4F68F4(v14, v15, &v30);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_29E494000, v9, v10, "%{public}s Handling accepted invitation notification", v11, 0xCu);
    sub_29E4A1754(v13);
    v17 = v13;
    a2 = v26;
    MEMORY[0x29ED8BDB0](v17, -1, -1);
    MEMORY[0x29ED8BDB0](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v20 = v27;
  v21 = v28;
  v19[2] = v18;
  v19[3] = v21;
  v22 = v29;
  v19[4] = v20;
  v19[5] = v22;

  v23 = v21;

  sub_29E4AE9C8(a2, sub_29E4B0FF0, v19);
}

uint64_t sub_29E4AE9C8(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  ObjectType = swift_getObjectType();
  v56 = type metadata accessor for ProfileSharingUserInfo(0);
  MEMORY[0x2A1C7C4A8](v56);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E4FC3C0();
  v60 = *(v9 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v54 - v13;
  sub_29E4FC3A0();
  v15 = sub_29E4FC3B0();
  v16 = sub_29E4FC940();
  v17 = os_log_type_enabled(v15, v16);
  v57 = ObjectType;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v55 = v4;
    v19 = v18;
    v54 = swift_slowAlloc();
    v61[0] = v54;
    *v19 = 136446466;
    v20 = sub_29E4FD0B0();
    v22 = v12;
    v23 = a1;
    v24 = v9;
    v25 = a2;
    v26 = sub_29E4F68F4(v20, v21, v61);

    *(v19 + 4) = v26;
    a2 = v25;
    v9 = v24;
    a1 = v23;
    v27 = v60;
    v12 = v22;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_29E4F68F4(0xD00000000000003FLL, 0x800000029E501FA0, v61);
    _os_log_impl(&dword_29E494000, v15, v16, "%{public}s %{public}s running", v19, 0x16u);
    v28 = v54;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v28, -1, -1);
    v29 = v19;
    v4 = v55;
    MEMORY[0x29ED8BDB0](v29, -1, -1);

    v30 = v27;
  }

  else
  {

    v30 = v60;
  }

  v31 = *(v30 + 8);
  result = v31(v14, v9);
  if (*a1)
  {
    if (*a1 == 1 && !a1[1])
    {
      goto LABEL_9;
    }
  }

  else if (a1[1] == 1)
  {
LABEL_9:
    v33 = *(v4 + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_summarySharingEntryStore);
    if (v33)
    {
      v34 = v33;
      v35 = sub_29E4FCB20();

      v61[0] = v35;
      v36 = swift_allocObject();
      v37 = v59;
      v36[2] = a2;
      v36[3] = v37;
      v36[4] = v57;
      sub_29E4B0F40(0);
      sub_29E4B0FA8(&qword_2A184B578, sub_29E4B0F40, MEMORY[0x29EDB8A00]);

      sub_29E4FC500();

      swift_beginAccess();
      sub_29E4FC440();
      swift_endAccess();
    }

    return result;
  }

  sub_29E4FC3A0();
  v38 = v58;
  sub_29E4B0EA8(a1, v58);
  v39 = sub_29E4FC3B0();
  v40 = sub_29E4FC920();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v56 = v12;
    v43 = v42;
    v61[0] = v42;
    *v41 = 136315395;
    v44 = sub_29E4FD0B0();
    v46 = a2;
    v47 = sub_29E4F68F4(v44, v45, v61);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2081;
    v48 = sub_29E4F29F4();
    v50 = v49;
    sub_29E4B0B74(v38, type metadata accessor for ProfileSharingUserInfo);
    v51 = sub_29E4F68F4(v48, v50, v61);
    a2 = v46;

    *(v41 + 14) = v51;
    _os_log_impl(&dword_29E494000, v39, v40, "[%s] Invalid sharing entry state: No notification status for %{private}s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v43, -1, -1);
    MEMORY[0x29ED8BDB0](v41, -1, -1);

    v52 = v56;
  }

  else
  {

    sub_29E4B0B74(v38, type metadata accessor for ProfileSharingUserInfo);
    v52 = v12;
  }

  v53 = v31(v52, v9);
  return a2(v53);
}

void sub_29E4AEF94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_29E4AF010(a2, 2, a3, a4);
  }
}

uint64_t sub_29E4AF010(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_29E4FC3C0();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E4FB1E0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v54 - v15;
  v17 = [a1 notification];
  v18 = [v17 request];

  v19 = [v18 identifier];
  if (!v19)
  {
    sub_29E4FC6F0();
    v19 = sub_29E4FC6B0();
  }

  sub_29E4FB1D0();
  sub_29E4FC8A0();
  sub_29E4FB190();
  v20 = objc_allocWithZone(MEMORY[0x29EDBAC98]);
  v21 = sub_29E4FB1A0();
  v22 = [v20 initWithAction:a2 categoryIdentifier:v19 expirationDate:v21];

  v23 = NSStringFromHKNotificationInstructionAction();
  v60 = sub_29E4FC6F0();
  v25 = v24;

  sub_29E4FC3A0();

  v26 = v22;
  v27 = sub_29E4FC3B0();
  v28 = v9;
  v29 = sub_29E4FC940();

  v30 = os_log_type_enabled(v27, v29);
  v64 = v16;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v57 = a4;
    v32 = v31;
    v33 = swift_slowAlloc();
    v58 = v11;
    v34 = v33;
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v32 = 136446722;
    v35 = sub_29E4FD0B0();
    v37 = sub_29E4F68F4(v35, v36, aBlock);
    v56 = v28;
    v38 = v14;
    v39 = v10;
    v40 = v37;

    *(v32 + 4) = v40;
    v10 = v39;
    v14 = v38;
    *(v32 + 12) = 2080;
    v41 = v60;
    *(v32 + 14) = sub_29E4F68F4(v60, v25, aBlock);
    *(v32 + 22) = 2112;
    *(v32 + 24) = v26;
    *v34 = v26;
    v42 = v26;
    _os_log_impl(&dword_29E494000, v27, v29, "%{public}s Sending %s notification instruction %@", v32, 0x20u);
    sub_29E4B0B74(v34, sub_29E4B0BD4);
    v43 = v34;
    v11 = v58;
    MEMORY[0x29ED8BDB0](v43, -1, -1);
    v44 = v55;
    swift_arrayDestroy();
    MEMORY[0x29ED8BDB0](v44, -1, -1);
    v45 = v32;
    a4 = v57;
    MEMORY[0x29ED8BDB0](v45, -1, -1);

    (*(v61 + 8))(v56, v62);
  }

  else
  {

    (*(v61 + 8))(v28, v62);
    v41 = v60;
  }

  v46 = *(v63 + OBJC_IVAR____TtC8Profiles19ProfilesAppDelegate_healthSharingNotificationSyncStore);
  if (v46)
  {
    v47 = swift_allocObject();
    v47[2] = v41;
    v47[3] = v25;
    v48 = v59;
    v47[4] = v26;
    v47[5] = v48;
    v49 = ObjectType;
    v47[6] = a4;
    v47[7] = v49;
    aBlock[4] = sub_29E4B0F0C;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E4F9D10;
    aBlock[3] = &unk_2A24E8228;
    v50 = _Block_copy(aBlock);
    v51 = v26;
    v26 = v46;

    [v26 sendNotificationInstruction:v51 completion:v50];
    _Block_release(v50);
  }

  else
  {
  }

  v52 = *(v11 + 8);
  v52(v14, v10);
  return (v52)(v64, v10);
}

uint64_t sub_29E4AF57C(void **a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4)
{
  v7 = sub_29E4FC3C0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v44 - v12;
  v14 = *a1;
  if (!*a1)
  {
    sub_29E4FC3A0();
    v31 = sub_29E4FC3B0();
    v32 = sub_29E4FC940();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = a2;
      v35 = v34;
      v47 = v34;
      *v33 = 136315138;
      v36 = sub_29E4FD0B0();
      v38 = v7;
      v39 = sub_29E4F68F4(v36, v37, &v47);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_29E494000, v31, v32, "[%s] Update notification status completed", v33, 0xCu);
      sub_29E4A1754(v35);
      v40 = v35;
      a2 = v45;
      MEMORY[0x29ED8BDB0](v40, -1, -1);
      MEMORY[0x29ED8BDB0](v33, -1, -1);

      v30 = (*(v8 + 8))(v11, v38);
      return a2(v30);
    }

    v41 = *(v8 + 8);
    v42 = v11;
LABEL_8:
    v30 = v41(v42, v7);
    return a2(v30);
  }

  sub_29E4FC3A0();
  v15 = v14;
  v16 = sub_29E4FC3B0();
  v17 = sub_29E4FC920();

  if (!os_log_type_enabled(v16, v17))
  {

    v41 = *(v8 + 8);
    v42 = v13;
    goto LABEL_8;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v44 = v7;
  v20 = v19;
  v47 = v19;
  *v18 = 136315394;
  v21 = sub_29E4FD0B0();
  v23 = sub_29E4F68F4(v21, v22, &v47);
  v45 = a3;
  v24 = a2;
  v25 = v23;

  *(v18 + 4) = v25;
  *(v18 + 12) = 2082;
  v46 = v14;
  v26 = v14;
  sub_29E4AD188();
  v27 = sub_29E4FC710();
  v29 = sub_29E4F68F4(v27, v28, &v47);
  a2 = v24;

  *(v18 + 14) = v29;
  _os_log_impl(&dword_29E494000, v16, v17, "[%s] Could not update notification status: %{public}s", v18, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x29ED8BDB0](v20, -1, -1);
  MEMORY[0x29ED8BDB0](v18, -1, -1);

  v30 = (*(v8 + 8))(v13, v44);
  return a2(v30);
}

uint64_t sub_29E4AF8F0(int a1, void *a2, uint64_t a3, unint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v68 = a3;
  v64 = a1;
  v14 = sub_29E4FC3C0();
  v70 = *(v14 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v69 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v61 - v17;
  sub_29E4FC3A0();

  v19 = a5;
  v20 = sub_29E4FC3B0();
  v21 = sub_29E4FC940();

  v22 = os_log_type_enabled(v20, v21);
  v65 = a4;
  v63 = a8;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v62 = a6;
    v24 = v23;
    v25 = swift_slowAlloc();
    v67 = a7;
    v61 = v25;
    v26 = swift_slowAlloc();
    v66 = v14;
    v27 = v26;
    v72 = v26;
    *v24 = 136446978;
    v28 = sub_29E4FD0B0();
    v30 = a2;
    v31 = sub_29E4F68F4(v28, v29, &v72);

    *(v24 + 4) = v31;
    a2 = v30;
    v32 = v70;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_29E4F68F4(v68, a4, &v72);
    *(v24 + 22) = 2112;
    *(v24 + 24) = v19;
    v33 = v61;
    *v61 = v19;
    *(v24 + 32) = 1024;
    *(v24 + 34) = v64 & 1;
    v34 = v19;
    _os_log_impl(&dword_29E494000, v20, v21, "%{public}s Sent %s notification instruction %@ successfully: %{BOOL}d", v24, 0x26u);
    sub_29E4B0B74(v33, sub_29E4B0BD4);
    a7 = v67;
    MEMORY[0x29ED8BDB0](v33, -1, -1);
    swift_arrayDestroy();
    v35 = v27;
    v14 = v66;
    MEMORY[0x29ED8BDB0](v35, -1, -1);
    v36 = v24;
    a6 = v62;
    MEMORY[0x29ED8BDB0](v36, -1, -1);

    v37 = v32;
  }

  else
  {

    v37 = v70;
  }

  v38 = *(v37 + 8);
  v39 = v38(v18, v14);
  v40 = v69;
  if (a2)
  {
    v41 = a2;
    sub_29E4FC3A0();
    v42 = v65;

    v43 = a2;
    v44 = sub_29E4FC3B0();
    v45 = sub_29E4FC920();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v67 = a7;
      v47 = v46;
      v48 = swift_slowAlloc();
      v72 = v48;
      *v47 = 136446722;
      v49 = sub_29E4FD0B0();
      v66 = v14;
      v51 = v42;
      v52 = a2;
      v53 = sub_29E4F68F4(v49, v50, &v72);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_29E4F68F4(v68, v51, &v72);
      *(v47 + 22) = 2082;
      v71 = v52;
      v54 = v52;
      sub_29E4AD188();
      v55 = sub_29E4FC710();
      v57 = sub_29E4F68F4(v55, v56, &v72);

      *(v47 + 24) = v57;
      _os_log_impl(&dword_29E494000, v44, v45, "%{public}s Unable to send %s notification instruction: %{public}s", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED8BDB0](v48, -1, -1);
      MEMORY[0x29ED8BDB0](v47, -1, -1);

      v58 = v69;
      v59 = v66;
    }

    else
    {

      v58 = v40;
      v59 = v14;
    }

    v39 = v38(v58, v59);
  }

  return a6(v39);
}

uint64_t sub_29E4AFDAC(uint64_t (*a1)(void), uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_29E4FC3C0();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC3A0();
  v8 = sub_29E4FC3B0();
  v9 = sub_29E4FC940();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = a2;
    v11 = a1;
    v12 = v10;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    v14 = sub_29E4FD0B0();
    v16 = sub_29E4F68F4(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_29E494000, v8, v9, "%{public}s Received notification in foreground mode", v12, 0xCu);
    sub_29E4A1754(v13);
    MEMORY[0x29ED8BDB0](v13, -1, -1);
    v17 = v12;
    a1 = v11;
    MEMORY[0x29ED8BDB0](v17, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return a1(26);
}

uint64_t sub_29E4AFF84(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  swift_getObjectType();
  v6 = sub_29E4FC3C0();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E4FC3A0();
  v10 = sub_29E4FC3B0();
  v11 = sub_29E4FC940();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v7;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = a3;
    v26 = v14;
    v15 = v14;
    *v13 = 136446210;
    v16 = sub_29E4FD0B0();
    v18 = sub_29E4F68F4(v16, v17, &v26);
    v23 = v6;
    v19 = a2;
    v20 = v18;

    *(v13 + 4) = v20;
    a2 = v19;
    _os_log_impl(&dword_29E494000, v10, v11, "%{public}s Handling new invitation notification", v13, 0xCu);
    sub_29E4A1754(v15);
    v21 = v15;
    a3 = v25;
    MEMORY[0x29ED8BDB0](v21, -1, -1);
    MEMORY[0x29ED8BDB0](v13, -1, -1);

    (*(v24 + 8))(v9, v23);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return sub_29E4AE9C8(a1, a2, a3);
}

uint64_t sub_29E4B019C(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v102 = a2;
  v103 = a3;
  ObjectType = swift_getObjectType();
  sub_29E4B0B1C(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E4FB130();
  v105 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v101 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E4FC3C0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v98 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v104 = &v94 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v94 - v16;
  sub_29E4FC3A0();
  v18 = a1;
  v19 = sub_29E4FC3B0();
  v20 = sub_29E4FC940();

  v21 = os_log_type_enabled(v19, v20);
  v96 = ObjectType;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v100 = v11;
    v95 = v23;
    v106 = v23;
    *v22 = 136446978;
    v24 = sub_29E4FD0B0();
    v99 = v10;
    v26 = sub_29E4F68F4(v24, v25, &v106);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    *(v22 + 14) = sub_29E4F68F4(0xD00000000000003BLL, 0x800000029E501EE0, &v106);
    *(v22 + 22) = 2080;
    v27 = [v18 notification];
    v28 = [v27 request];

    v29 = [v28 identifier];
    v30 = sub_29E4FC6F0();
    v31 = v8;
    v33 = v32;

    v34 = sub_29E4F68F4(v30, v33, &v106);

    *(v22 + 24) = v34;
    *(v22 + 32) = 2082;
    v35 = [v18 actionIdentifier];
    v36 = sub_29E4FC6F0();
    v38 = v37;

    v39 = sub_29E4F68F4(v36, v38, &v106);
    v10 = v99;

    *(v22 + 34) = v39;
    v8 = v31;
    _os_log_impl(&dword_29E494000, v19, v20, "%{public}s %{public}s notification: %s action: %{public}s", v22, 0x2Au);
    v40 = v95;
    swift_arrayDestroy();
    v11 = v100;
    MEMORY[0x29ED8BDB0](v40, -1, -1);
    MEMORY[0x29ED8BDB0](v22, -1, -1);
  }

  v41 = *(v11 + 8);
  v41(v17, v10);
  v42 = [v18 notification];
  sub_29E4FC9C0();

  v43 = v105;
  v44 = (*(v105 + 48))(v7, 1, v8);
  v45 = v104;
  if (v44 != 1)
  {
    v61 = v7;
    v62 = v8;
    (*(v43 + 32))(v101, v61, v8);
    v63 = [v18 actionIdentifier];
    v64 = sub_29E4FC6F0();
    v66 = v65;

    if (sub_29E4FC6F0() == v64 && v67 == v66)
    {

LABEL_11:

      v69 = sub_29E4FC860();
      MEMORY[0x2A1C7C4A8](v69);
      v70 = v101;
      *(&v94 - 2) = v97;
      *(&v94 - 1) = v70;
      sub_29E4AD684(sub_29E4B0C3C, (&v94 - 4), "Profiles/ProfilesAppDelegate+UNUserNotificationCenter.swift", 59, 2u, 52);
      sub_29E4AD80C(v18, v102, v103);
      v71 = v62;
      return (*(v43 + 8))(v70, v71);
    }

    v68 = sub_29E4FCF80();

    if (v68)
    {
      v43 = v105;
      goto LABEL_11;
    }

    if (sub_29E4FC6F0() == v64 && v74 == v66)
    {

      v75 = v62;
      v43 = v105;
    }

    else
    {
      v76 = sub_29E4FCF80();

      v75 = v62;
      v43 = v105;
      if ((v76 & 1) == 0)
      {
        sub_29E4FC3A0();
        v77 = v18;
        v78 = sub_29E4FC3B0();
        v79 = sub_29E4FC920();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v106 = v81;
          *v80 = 136446466;
          v82 = sub_29E4FD0B0();
          v84 = sub_29E4F68F4(v82, v83, &v106);
          v100 = v11;
          v85 = v84;

          *(v80 + 4) = v85;
          *(v80 + 12) = 2082;
          v86 = [v77 actionIdentifier];
          v87 = sub_29E4FC6F0();
          v89 = v88;

          v90 = sub_29E4F68F4(v87, v89, &v106);

          *(v80 + 14) = v90;
          _os_log_impl(&dword_29E494000, v78, v79, "%{public}s Unrecognized notification response action identifier %{public}s", v80, 0x16u);
          swift_arrayDestroy();
          v91 = v81;
          v75 = v62;
          MEMORY[0x29ED8BDB0](v91, -1, -1);
          MEMORY[0x29ED8BDB0](v80, -1, -1);

          v92 = v104;
        }

        else
        {

          v92 = v45;
        }

        v93 = (v41)(v92, v10);
        v43 = v105;
        v102(v93);
        goto LABEL_23;
      }
    }

    sub_29E4AD80C(v18, v102, v103);
LABEL_23:
    v71 = v75;
    v70 = v101;
    return (*(v43 + 8))(v70, v71);
  }

  sub_29E4B0B74(v7, sub_29E4B0B1C);
  v46 = v98;
  sub_29E4FC3A0();
  v47 = v18;
  v48 = sub_29E4FC3B0();
  v49 = sub_29E4FC920();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v100 = v11;
    v52 = v51;
    v53 = swift_slowAlloc();
    v99 = v10;
    v54 = v53;
    v106 = v53;
    *v50 = 136446466;
    v55 = sub_29E4FD0B0();
    v57 = sub_29E4F68F4(v55, v56, &v106);

    *(v50 + 4) = v57;
    *(v50 + 12) = 2114;
    v58 = [v47 notification];
    *(v50 + 14) = v58;
    *v52 = v58;
    _os_log_impl(&dword_29E494000, v48, v49, "%{public}s Cannot access URL for %{public}@", v50, 0x16u);
    sub_29E4B0B74(v52, sub_29E4B0BD4);
    MEMORY[0x29ED8BDB0](v52, -1, -1);
    sub_29E4A1754(v54);
    MEMORY[0x29ED8BDB0](v54, -1, -1);
    MEMORY[0x29ED8BDB0](v50, -1, -1);

    v59 = v99;
    v60 = v46;
  }

  else
  {

    v60 = v46;
    v59 = v10;
  }

  v72 = (v41)(v60, v59);
  return v102(v72);
}

void sub_29E4B0B1C(uint64_t a1)
{
  if (!qword_2A184B558)
  {
    sub_29E4FB130();
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B558);
    }
  }
}

uint64_t sub_29E4B0B74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E4B0BD4(uint64_t a1)
{
  if (!qword_2A1A6F170)
  {
    sub_29E4A2AD8(255, &qword_2A1A708C8, 0x29EDC9738);
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A6F170);
    }
  }
}

void sub_29E4B0C90()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 delegate];

  if (v2)
  {
    if ([v2 respondsToSelector_])
    {
      v3 = [v0 sharedApplication];
      sub_29E4A267C(MEMORY[0x29EDCA190]);
      v4 = sub_29E4FB100();
      type metadata accessor for OpenURLOptionsKey(0);
      sub_29E4B0FA8(&unk_2A184B560, type metadata accessor for OpenURLOptionsKey, &unk_29E4FE9C4);
      v5 = sub_29E4FC620();

      [v2 application:v3 openURL:v4 options:v5];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_29E4B0E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileSharingUserInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4B0EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileSharingUserInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E4B0F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E4B0F40(uint64_t a1)
{
  if (!qword_2A184B570)
  {
    sub_29E4AD188();
    v1 = sub_29E4FC430();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B570);
    }
  }
}

uint64_t sub_29E4B0FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_29E4B1010()
{
  type metadata accessor for ProfilesHealthPluginDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2A1A70D38 = result;
  return result;
}

uint64_t sub_29E4B1068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v22[1] = a1;
  v23 = a6;
  v24 = a5;
  v25 = a3;
  v26 = a4;
  v27 = sub_29E4FB010();
  MEMORY[0x2A1C7C4A8](v27);
  sub_29E4B13A8(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E4FB020();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E4FC690();
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v14 = sub_29E4FB040();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_29E4FC6A0();
  (*(v10 + 16))(v12, v23, v9);
  if (qword_2A1A70BD8 != -1)
  {
    swift_once();
  }

  v18 = qword_2A1A70D38;
  v19 = sub_29E4FB250();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = v18;
  sub_29E4FB030();
  sub_29E4FB000();
  (*(v15 + 8))(v17, v14);
  sub_29E4B1400();
  return sub_29E4FC770();
}

void sub_29E4B13A8(uint64_t a1)
{
  if (!qword_2A184B5F0)
  {
    sub_29E4FB250();
    v1 = sub_29E4FCC30();
    if (!v2)
    {
      atomic_store(v1, &qword_2A184B5F0);
    }
  }
}

unint64_t sub_29E4B1400()
{
  result = qword_2A184B5F8;
  if (!qword_2A184B5F8)
  {
    sub_29E4FB010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A184B5F8);
  }

  return result;
}