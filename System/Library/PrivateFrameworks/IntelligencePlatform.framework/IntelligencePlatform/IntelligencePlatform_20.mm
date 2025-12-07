uint64_t sub_1ABBF2D9C(uint64_t a1)
{
  v3 = v2;
  sub_1ABF22BB4();
  sub_1ABB668FC();
  v5 = MEMORY[0x1E69E7CC0];
  v19 = sub_1ABF239C4();
  v6 = *(a1 + 16);
  if (v6)
  {
    v18[0] = v5;
    sub_1ABADDBD4(0, v6, 0);
    v7 = *(v5 + 16);
    v8 = 16 * v7;
    do
    {
      v18[0] = v5;
      v9 = *(v5 + 24);
      v10 = v7 + 1;
      if (v7 >= v9 >> 1)
      {
        sub_1ABADDBD4(v9 > 1, v7 + 1, 1);
        v5 = v18[0];
      }

      *(v5 + 16) = v10;
      v11 = v5 + v8;
      *(v11 + 32) = 63;
      *(v11 + 40) = 0xE100000000000000;
      v8 += 16;
      v7 = v10;
      --v6;
    }

    while (v6);
    v3 = v2;
  }

  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABBF43F0(&qword_1ED870668, MEMORY[0x1E69E6310]);
  v12 = sub_1ABF23B54();
  v14 = v13;

  sub_1ABF24AB4();

  strcpy(v18, "SELECT * FROM ");
  HIBYTE(v18[1]) = -18;
  MEMORY[0x1AC5A9410](*v1, v1[1]);
  MEMORY[0x1AC5A9410](0x20455245485720, 0xE700000000000000);
  MEMORY[0x1AC5A9410](v1[4], v1[5]);
  MEMORY[0x1AC5A9410](0x28206E6920, 0xE500000000000000);
  MEMORY[0x1AC5A9410](v12, v14);

  MEMORY[0x1AC5A9410](41, 0xE100000000000000);
  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  sub_1ABF22464();

  v16 = v19;
  if (v3)
  {
  }

  return v16;
}

uint64_t sub_1ABBF304C(uint64_t a1)
{
  v63 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  MEMORY[0x1EEE9AC00](v63);
  v58 = v52 - v3;
  v61 = sub_1ABF22EE4();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1ABAD219C(&qword_1EB4D5020, &qword_1ABF48B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v52 - v9;
  v11 = sub_1ABAD219C(&qword_1EB4D5028, &qword_1ABF48B68);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v52 - v13;
  v15 = v1[4];
  v64 = v1[5];
  v65 = v15;
  v16 = v1[7];
  v55 = v1[6];
  v54 = v16;
  v52[1] = a1;
  v17 = sub_1ABF22B34();
  v19 = v18;
  v21 = v20;
  v70 = v17;
  v22 = sub_1ABF22BB4();
  v23 = MEMORY[0x1E69A0008];
  sub_1ABBF4384(&qword_1EB4D5030, MEMORY[0x1E69A0008], MEMORY[0x1E69A0010]);
  v62 = v22;
  sub_1ABF23F04();
  v24 = &v14[*(v12 + 52)];
  v56 = v21;
  v57 = v19;
  *v24 = v19;
  *(v24 + 1) = v21;
  v25 = *(sub_1ABAD219C(&unk_1EB4D5810, &qword_1ABF48B70) + 36);
  v26 = sub_1ABBF4384(&qword_1EB4D0208, v23, MEMORY[0x1E69A0018]);
  ++v59;
  v53 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    while (1)
    {
      v27 = v60;
      sub_1ABF244A4();
      sub_1ABBF4384(&qword_1EB4D0200, MEMORY[0x1E69A00E0], MEMORY[0x1E69A00E8]);
      v28 = v61;
      v29 = sub_1ABF23BB4();
      (*v59)(v27, v28);
      if (v29)
      {
        v30 = 1;
      }

      else
      {
        v31 = sub_1ABF245D4();
        sub_1ABBD88DC(v32, v10, &qword_1EB4D1200, &unk_1ABF4B4D0);
        v31(&v70, 0);
        sub_1ABF244B4();
        v30 = 0;
      }

      v33 = v63;
      sub_1ABA7B9B4(v10, v30, 1, v63);
      sub_1ABBD898C(v10, v7, &qword_1EB4D5020, &qword_1ABF48B60);
      if (sub_1ABA7E1E0(v7, 1, v33) == 1)
      {
        sub_1ABAB480C(v14, &qword_1EB4D5028, &qword_1ABF48B68);
        return v53;
      }

      v34 = v26;
      v35 = v25;
      v36 = v10;
      v37 = v58;
      sub_1ABBD898C(v7, v58, &qword_1EB4D1200, &unk_1ABF4B4D0);
      v57(&v70, v37);
      sub_1ABAB480C(v37, &qword_1EB4D1200, &unk_1ABF4B4D0);
      v38 = v70;
      v39 = v71;
      v40 = v70 == v65 && v71 == v64;
      if (!v40 && (sub_1ABF25054() & 1) == 0)
      {
        v41 = v38 == v55 && v39 == v54;
        if (!v41 && (sub_1ABF25054() & 1) == 0)
        {
          break;
        }
      }

      v10 = v36;
      v25 = v35;
      v26 = v34;
    }

    sub_1ABF22BC4();
    sub_1ABBD88DC(&v70, &v67, &qword_1EB4D3050, &qword_1ABF3DF20);
    if (!v69)
    {
      break;
    }

    sub_1ABAD219C(&qword_1EB4D38B0, &qword_1ABF3A890);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    v42 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABADA2B4();
      v53 = v46;
    }

    v10 = v36;
    v25 = v35;
    v43 = *(v53 + 16);
    v26 = v34;
    if (v43 >= *(v53 + 24) >> 1)
    {
      sub_1ABADA2B4();
      v53 = v47;
    }

    sub_1ABAB480C(&v70, &qword_1EB4D3050, &qword_1ABF3DF20);
    v45 = v53;
    *(v53 + 16) = v43 + 1;
    v44 = v42;
    *(v45 + 4 * v43 + 32) = v44;
  }

  sub_1ABAB480C(&v67, &qword_1EB4D3050, &qword_1ABF3DF20);
LABEL_27:

  v67 = 0;
  v68 = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000005ELL, 0x80000001ABF8B2F0);
  MEMORY[0x1AC5A9410](v38, v39);

  v49 = v67;
  v50 = v68;
  sub_1ABBF1CCC();
  swift_allocError();
  *v51 = v49;
  v51[1] = v50;
  swift_willThrow();
  sub_1ABAB480C(&v70, &qword_1EB4D3050, &qword_1ABF3DF20);
  sub_1ABAB480C(v14, &qword_1EB4D5028, &qword_1ABF48B68);
  return v53;
}

uint64_t sub_1ABBF37A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABAE2BF0(a1, v9);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  sub_1ABAE2BF0(a1, v9);
  if (swift_dynamicCast())
  {
    EntityIdentifier.init(_:)(v7, v8, v9);
    result = sub_1ABA84B54(a1);
    if (BYTE8(v9[0]) != 1)
    {
      v5 = 0;
      v6 = *&v9[0];
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  sub_1ABAE2BF0(a1, v9);
  if (swift_dynamicCast() & 1) != 0 || (sub_1ABAE2BF0(a1, v9), (swift_dynamicCast()))
  {
LABEL_2:
    result = sub_1ABA84B54(a1);
    v5 = 0;
    v6 = v7;
LABEL_3:
    *a2 = v6;
    *(a2 + 8) = v5;
    return result;
  }

  sub_1ABAFF238(a1, v9);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_6:
    v6 = 0;
    v5 = 1;
    goto LABEL_3;
  }

  v6 = v7;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABBF3918(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = v6;
  v69 = a3;
  v70 = a6;
  v67 = a1;
  v68 = a2;
  v10 = sub_1ABF22854();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v65 = a5;
  if (v14)
  {
    v62 = v6;
    v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v64 = v11;
    v66 = v10;
    *&v75 = MEMORY[0x1E69E7CC0];
    sub_1ABADDBD4(0, v14, 0);
    v15 = v75;
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      *&v73 = v17;
      v18 = sub_1ABF24FF4();
      v20 = v19;
      *&v75 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1ABADDBD4(v21 > 1, v22 + 1, 1);
        v15 = v75;
      }

      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      --v14;
    }

    while (v14);
    a5 = v65;
    v10 = v66;
    v11 = v64;
    v13 = v63;
    v7 = v62;
  }

  sub_1ABF22BB4();
  *&v75 = v15;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABBF43F0(&qword_1EB4CE710, MEMORY[0x1E69E6328]);
  sub_1ABF22864();
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  v24 = sub_1ABF22B84();
  if (v7)
  {
    sub_1ABAB480C(&v75, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v26 = v24;
    v63 = 0;
    sub_1ABAB480C(&v75, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    (*(v11 + 8))(v13, v10);
    v27 = sub_1ABAAB7C8(v26);
    v28 = 0;
    v68 = v26 & 0xC000000000000001;
    v69 = v27;
    v67 = v26 & 0xFFFFFFFFFFFFFF8;
    *&v29 = 136315394;
    v64 = v29;
    v66 = v26;
    while (1)
    {
      if (v69 == v28)
      {
      }

      if (v68)
      {
        v30 = MEMORY[0x1AC5AA170](v28, v26);
      }

      else
      {
        if (v28 >= *(v67 + 16))
        {
          goto LABEL_36;
        }

        v30 = *(v26 + 8 * v28 + 32);
      }

      if (__OFADD__(v28, 1))
      {
        break;
      }

      v31 = a5[4];
      v32 = a5[5];
      sub_1ABF22BC4();
      if (!v74)
      {

        sub_1ABAB480C(&v73, &qword_1EB4D3050, &qword_1ABF3DF20);
        *&v75 = 0;
        *(&v75 + 1) = 0xE000000000000000;
        sub_1ABF24AB4();

        *&v75 = 0xD000000000000018;
        *(&v75 + 1) = 0x80000001ABF8B350;
        MEMORY[0x1AC5A9410](v31, v32);
        v60 = v75;
        sub_1ABBF1CCC();
        swift_allocError();
        *v61 = v60;
        swift_willThrow();
      }

      sub_1ABA946C0(&v73, &v75);
      v33 = *(&v76 + 1);
      v34 = sub_1ABA93E20(&v75, *(&v76 + 1));
      v74 = v33;
      v35 = sub_1ABA93DC0(&v73);
      (*(*(v33 - 8) + 16))(v35, v34, v33);
      sub_1ABBF37A0(&v73, &v71);
      if (v72)
      {
        if (qword_1ED871B18 != -1)
        {
          swift_once();
        }

        v36 = sub_1ABF237F4();
        sub_1ABA7AA24(v36, qword_1ED871B20);
        v38 = *a5;
        v37 = a5[1];
        sub_1ABA93E64(&v75, &v73);

        swift_unknownObjectRetain();

        v39 = sub_1ABF237D4();
        v40 = sub_1ABF24644();

        swift_unknownObjectRelease();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v78 = v42;
          *v41 = v64;
          *(v41 + 4) = sub_1ABADD6D8(v38, v37, &v78);
          *(v41 + 12) = 2080;
          sub_1ABA93E64(&v73, &v71);
          sub_1ABAD219C(&qword_1EB4D38B0, &qword_1ABF3A890);
          v43 = sub_1ABF23C74();
          v45 = v44;
          sub_1ABA84B54(&v73);
          v46 = sub_1ABADD6D8(v43, v45, &v78);

          *(v41 + 14) = v46;
          _os_log_impl(&dword_1ABA78000, v39, v40, "No value found in %s: %s", v41, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC5AB8B0](v42, -1, -1);
          MEMORY[0x1AC5AB8B0](v41, -1, -1);
        }

        else
        {

          sub_1ABA84B54(&v73);
        }
      }

      else
      {
        v47 = v71;

        v48 = v70;
        swift_isUniquelyReferenced_nonNull_native();
        *&v73 = *v48;
        v49 = v73;
        *v48 = 0x8000000000000000;
        v50 = sub_1ABAF81A8();
        if (__OFADD__(*(v49 + 16), (v51 & 1) == 0))
        {
          goto LABEL_37;
        }

        v52 = v50;
        v53 = v51;
        sub_1ABAD219C(&qword_1EB4D5038, &qword_1ABF48B78);
        if (sub_1ABF24C64())
        {
          v54 = sub_1ABAF81A8();
          if ((v53 & 1) != (v55 & 1))
          {
            goto LABEL_39;
          }

          v52 = v54;
        }

        v56 = v73;
        if (v53)
        {
          *(*(v73 + 56) + 8 * v52) = v30;
        }

        else
        {
          *(v73 + 8 * (v52 >> 6) + 64) |= 1 << v52;
          *(v56[6] + 8 * v52) = v47;
          *(v56[7] + 8 * v52) = v30;

          v57 = v56[2];
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_38;
          }

          v56[2] = v59;
        }

        *v70 = v56;

        a5 = v65;
      }

      v26 = v66;
      sub_1ABA84B54(&v75);
      ++v28;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_1ABF25104();
    __break(1u);
  }

  return result;
}

void *sub_1ABBF40B8(uint64_t a1, uint64_t a2)
{
  sub_1ABAD219C(&qword_1EB4D5018, &unk_1ABF48B50);
  result = sub_1ABF24D24();
  v5 = result;
  v6 = 0;
  v26 = a1;
  v27 = result;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v25 = result + 8;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(*(v26 + 48) + 8 * v17);

      v20 = sub_1ABBF304C(v19);
      if (v2)
      {
        break;
      }

      v21 = v20;

      *(v25 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v5 = v27;
      *(v27[6] + 8 * v17) = v18;
      *(v27[7] + 8 * v17) = v21;
      v22 = v27[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v27[2] = v24;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v5 = v27;

LABEL_15:
    sub_1ABBF4354(a2);
    return v5;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        goto LABEL_15;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABBF42B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1ABBF42F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1ABBF4384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ABBF43F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_1ABBF4440(void *a1)
{
  v3 = v1;
  type metadata accessor for EntitySimilarityRequestManager();
  swift_allocObject();
  v5 = sub_1ABBF5BFC(a1, 100, 0);
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v5;
  }

  return v3;
}

uint64_t sub_1ABBF44F4()
{
  sub_1ABA7BBF8();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_1ABF23744();
  v1[11] = v3;
  sub_1ABA7BBD0(v3);
  v1[12] = v4;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = sub_1ABF237F4();
  v1[15] = v5;
  sub_1ABA7BBD0(v5);
  v1[16] = v6;
  v1[17] = sub_1ABA7E314();
  v7 = sub_1ABF23774();
  v1[18] = v7;
  sub_1ABA7BBD0(v7);
  v1[19] = v8;
  v1[20] = sub_1ABA7E314();
  v1[21] = type metadata accessor for LogSignpost(0);
  v1[22] = sub_1ABA7E314();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBF4670()
{
  v21 = v0;
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D608(&qword_1ED871F20);
  }

  sub_1ABA7AA24(*(v0 + 120), qword_1ED871EF8);
  v1 = sub_1ABA94978();
  v2(v1);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v3 = sub_1ABF23764();
  v4 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v3, v4, v6, "EntitySimilarity.InProcessService.computeSimilarity", "", v5, 2u);
    MEMORY[0x1AC5AB8B0](v5, -1, -1);
  }

  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  v10 = *(v0 + 144);
  v18 = *(v0 + 160);

  v11 = sub_1ABA7F194();
  v12(v11);
  sub_1ABF237B4();
  swift_allocObject();
  sub_1ABA8BFE8();
  v13 = sub_1ABA7E664();
  v14(v13);
  sub_1ABA8FFF0("EntitySimilarity.InProcessService.computeSimilarity");
  (*(v9 + 32))(v8 + *(v7 + 24), v18, v10);
  sub_1ABBF637C(&v19);
  v15 = v20;
  *(v0 + 48) = v19;
  *(v0 + 56) = v15;
  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_1ABBF4948;

  return EntitySimilarityRequestManager.computeSimilarity(request:)(v0 + 16, v0 + 48);
}

uint64_t sub_1ABBF4948()
{
  sub_1ABA7BBF8();
  *(*v1 + 192) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBF4A54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  v5 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  v6 = *(v0 + 176);
  sub_1ABBF153C();
  v7 = sub_1ABBF14D8(v4, v5, v2);
  v8 = [objc_allocWithZone(GDEntitySimilarityResult) initWithRequest:v7 similarityScore:v1];

  sub_1ABBF552C(v6);
  sub_1ABBA4F10(v6);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_1ABBF4BAC()
{
  sub_1ABBF552C(*(v0 + 176));
  sub_1ABBA4F10(*(v0 + 176));

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABBF4C5C()
{
  sub_1ABA7BBF8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1ABF23744();
  v1[4] = v3;
  sub_1ABA7BBD0(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_1ABF237F4();
  v1[8] = v5;
  sub_1ABA7BBD0(v5);
  v1[9] = v6;
  v1[10] = sub_1ABA7E314();
  v7 = sub_1ABF23774();
  v1[11] = v7;
  sub_1ABA7BBD0(v7);
  v1[12] = v8;
  v1[13] = sub_1ABA7E314();
  v1[14] = type metadata accessor for LogSignpost(0);
  v1[15] = sub_1ABA7E314();
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

char *sub_1ABBF4DD8()
{
  v39 = v0;
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    sub_1ABA7AA24(v0[8], qword_1ED871EF8);
    v1 = sub_1ABA94978();
    v2(v1);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v3 = sub_1ABF23764();
    v4 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v3, v4, v6, "EntitySimilarity.InProcessService.batchComputeSimilarity", "", v5, 2u);
      MEMORY[0x1AC5AB8B0](v5, -1, -1);
    }

    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[12];
    v32 = v0[11];
    v34 = v0[13];
    v10 = v0[2];

    v11 = sub_1ABA7F194();
    v12(v11);
    sub_1ABF237B4();
    swift_allocObject();
    sub_1ABA8BFE8();
    v13 = sub_1ABA7E664();
    v14(v13);
    sub_1ABA8FFF0("EntitySimilarity.InProcessService.batchComputeSimilarity");
    (*(v9 + 32))(v8 + *(v7 + 24), v34, v32);
    v15 = sub_1ABAAB7C8(v10);
    v16 = MEMORY[0x1E69E7CC0];
    if (!v15)
    {
      break;
    }

    v17 = v15;
    v36 = MEMORY[0x1E69E7CC0];
    result = sub_1ABADE1FC(0, v15 & ~(v15 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    v20 = v0[2];
    v16 = v36;
    v21 = v20 & 0xC000000000000001;
    v33 = v20 + 32;
    v35 = v20 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21)
      {
        v23 = MEMORY[0x1AC5AA170](v19, v0[2]);
      }

      else
      {
        if (v19 >= *(v35 + 16))
        {
          goto LABEL_19;
        }

        v23 = *(v33 + 8 * v19);
      }

      v24 = v23;
      sub_1ABBF637C(&v37);

      v25 = v37;
      v26 = v38;
      v28 = *(v36 + 16);
      v27 = *(v36 + 24);
      if (v28 >= v27 >> 1)
      {
        v31 = v38;
        sub_1ABADE1FC((v27 > 1), v28 + 1, 1);
        v26 = v31;
      }

      *(v36 + 16) = v28 + 1;
      v29 = v36 + 24 * v28;
      *(v29 + 32) = v25;
      *(v29 + 40) = v26;
      ++v19;
      if (v22 == v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_1ABA7D608(&qword_1ED871F20);
  }

LABEL_15:
  v0[16] = v16;
  v30 = swift_task_alloc();
  v0[17] = v30;
  *v30 = v0;
  v30[1] = sub_1ABBF519C;

  return EntitySimilarityRequestManager.batchComputeSimilarity(requestBatch:)(v16);
}

uint64_t sub_1ABBF519C()
{
  sub_1ABA7BBF8();
  v2 = *v1;
  *(v2 + 144) = v3;
  *(v2 + 152) = v0;

  if (!v0)
  {
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBF52B0()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABBF153C();
    v3 = (v1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = sub_1ABBF14D8([objc_allocWithZone(GDEntityIdentifier) initWithValue_], objc_msgSend(objc_allocWithZone(GDEntityIdentifier), sel_initWithValue_, *v3), *(v3 - 16));
      [objc_allocWithZone(GDEntitySimilarityResult) initWithRequest:v5 similarityScore:v4];

      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v3 += 4;
      --v2;
    }

    while (v2);
    v0 = v9;

    v6 = v10;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABA7C0CC();
  sub_1ABBA4F10(0);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1ABBF5488()
{

  sub_1ABA7C0CC();
  sub_1ABBA4F10(v0);

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABBF552C(uint64_t a1)
{
  v2 = sub_1ABF23784();
  sub_1ABA7BB64();
  v23 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1ABF23744();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LogSignpost(0);
  v13 = *a1;
  v14 = *(a1 + 16);
  v15 = sub_1ABF23764();
  sub_1ABF23794();
  v22 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v9 + 8))(v12, v7);
  }

  if ((v14 & 1) == 0)
  {
    if (v13)
    {
LABEL_9:

      sub_1ABF237C4();

      v17 = v23;
      if ((*(v23 + 88))(v6, v2) == *MEMORY[0x1E69E93E8])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v6, v2);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v15, v22, v20, v13, v18, v19, 2u);
      MEMORY[0x1AC5AB8B0](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v13 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v13 & 0xFFFFF800) != 0xD800)
  {
    if (v13 >> 16 <= 0x10)
    {
      v13 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1ABBF57E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];

  EntityIdentifier.init(_:)(v5, v6, &v16);
  if ((v17 & 1) != 0 || (v9 = v16, , EntityIdentifier.init(_:)(v7, v8, &v16), v17 == 1))
  {
    sub_1ABBF1CCC();
    v10 = swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    result = swift_willThrow();
    *a2 = v10;
  }

  else
  {
    v13 = v16;
    v14 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
    v15 = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
    sub_1ABBF153C();
    result = sub_1ABBF14D8(v14, v15, 0);
    *a3 = result;
  }

  return result;
}

uint64_t EntitySimilarityRequestManager.computeSimilarity(request:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 48) = *a2;
  *(v3 + 32) = *(a2 + 8);
  return sub_1ABA8C014();
}

uint64_t sub_1ABBF5930()
{
  v6 = v0;
  v1 = *(v0 + 16);
  v4[0] = *(v0 + 48);
  v5 = *(v0 + 32);
  sub_1ABBF5CBC(v4, v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t EntitySimilarityRequestManager.batchComputeSimilarity(requestBatch:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBF59D4()
{
  v26 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    sub_1ABA7F1AC();
    v4 = v25;
    v5 = (v1 + 32);
    v6 = *(v25 + 16);
    v7 = v2;
    do
    {
      v9 = *v5;
      v5 += 24;
      v8 = v9;
      v25 = v4;
      v10 = *(v4 + 24);
      v11 = v6 + 1;
      if (v6 >= v10 >> 1)
      {
        sub_1ABADE1CC(v10 > 1, v6 + 1, 1);
        v4 = v25;
      }

      *(v4 + 16) = v11;
      *(v4 + v6++ + 32) = v8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  if (v11 == 1)
  {
    if (v2)
    {
      v12 = *(v0 + 16);
      sub_1ABA7F1AC();
      v3 = v25;
      v13 = (v12 + 32);
      v14 = *(v25 + 16);
      do
      {
        v16 = *v13;
        v13 += 24;
        v15 = v16;
        v25 = v3;
        v17 = *(v3 + 24);
        if (v14 >= v17 >> 1)
        {
          sub_1ABADE1CC(v17 > 1, v14 + 1, 1);
          v3 = v25;
        }

        *(v3 + 16) = v14 + 1;
        *(v3 + v14++ + 32) = v15;
        --v2;
      }

      while (v2);
      goto LABEL_16;
    }

    if (*(v3 + 16))
    {
LABEL_16:
      v18 = *(v0 + 16);
      v19 = *(v3 + 32);

      LOBYTE(v25) = v19;
      v20 = sub_1ABBF5EDC(v18, &v25);
      v21 = *(v0 + 8);

      return v21(v20);
    }
  }

  sub_1ABBF1CCC();
  swift_allocError();
  *v23 = xmmword_1ABF34750;
  swift_willThrow();
  v24 = *(v0 + 8);

  return v24();
}

uint64_t *sub_1ABBF5BFC(void *a1, uint64_t a2, char a3)
{
  sub_1ABB699EC(__src);

  if (v4)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    memcpy((v3 + 16), __src, 0x48uLL);
    *(v3 + 88) = a2;
    *(v3 + 96) = a3 & 1;
  }

  return v3;
}

void sub_1ABBF5CBC(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  if (*a1)
  {
    if (v5 == 1)
    {
      *a2 = 0;
    }

    else
    {
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v12 = sub_1ABF237F4();
      sub_1ABA7AA24(v12, qword_1ED871B20);
      v13 = sub_1ABF237D4();
      v14 = sub_1ABF24644();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1ABA78000, v13, v14, "Unknown mode, returning 0 similarity.", v15, 2u);
        MEMORY[0x1AC5AB8B0](v15, -1, -1);
      }

      *a2 = 0;
      LOBYTE(v5) = 2;
    }

    *(a2 + 8) = v5;
    goto LABEL_13;
  }

  memcpy(__dst, (v2 + 16), sizeof(__dst));
  memcpy(v24, (v2 + 16), sizeof(v24));
  if (!v24[0])
  {
    sub_1ABBF1CCC();
    swift_allocError();
    *v16 = 0xD00000000000003ALL;
    v16[1] = 0x80000001ABF8B4A0;
    swift_willThrow();
    return;
  }

  v8 = *(v2 + 40);
  v19 = *(v2 + 24);
  v20 = v8;
  v9 = *(v2 + 72);
  v21 = *(v2 + 56);
  v22 = v9;
  v25 = v7;
  v18 = v6;
  sub_1ABBF6204(__dst, v17);
  sub_1ABBF427C(&v24[1], v17);
  sub_1ABBF1D2C(&v25, &v18, 0);
  v11 = v10;
  sub_1ABBF6274(__dst);
  sub_1ABBF4354(&v24[1]);
  if (!v3)
  {
    *a2 = v11;
    *(a2 + 8) = 0;
LABEL_13:
    *(a2 + 16) = v7;
    *(a2 + 24) = v6;
  }
}

__int128 *sub_1ABBF5EDC(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    if (*a2 == 1)
    {
      return MEMORY[0x1E69E7CC0];
    }

    else
    {
      v10 = *(a1 + 16);
      v5 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v28[0] = MEMORY[0x1E69E7CC0];
        sub_1ABADE1AC(0, v10, 0);
        v5 = v28[0];
        v11 = *(v28[0] + 16);
        v12 = 32 * v11 + 48;
        v13 = (a1 + 40);
        do
        {
          v14 = *(v13 - 8);
          v15 = *v13;
          v28[0] = v5;
          v16 = *(v5 + 3);
          v17 = v11 + 1;
          if (v11 >= v16 >> 1)
          {
            v21 = v15;
            sub_1ABADE1AC((v16 > 1), v11 + 1, 1);
            v15 = v21;
            v5 = v28[0];
          }

          *(v5 + 2) = v17;
          v18 = (v5 + v12);
          *(v18 - 2) = 0;
          *(v18 - 8) = v14;
          *v18 = v15;
          v12 += 32;
          v13 = (v13 + 24);
          v11 = v17;
          --v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    memcpy(__dst, (v2 + 16), sizeof(__dst));
    memcpy(v28, (v2 + 16), sizeof(v28));
    if (v28[0])
    {
      v6 = *(v2 + 40);
      v23 = *(v2 + 24);
      v24 = v6;
      v7 = *(v2 + 72);
      v25 = *(v2 + 56);
      v26 = v7;
      v8 = *(v2 + 88);
      sub_1ABBF6204(__dst, v22);
      sub_1ABBF427C(&v28[1], v22);
      v5 = &v23;
      EntitySimilarityEngine.computeSimilarityBatch(batchRequests:batchSize:)(a1, v8);
      if (!v3)
      {
        v5 = v9;
      }

      sub_1ABBF6274(__dst);
      v22[0] = v23;
      v22[1] = v24;
      v22[2] = v25;
      v22[3] = v26;
      sub_1ABBF4354(v22);
    }

    else
    {
      v5 = 0x80000001ABF8B4A0;
      sub_1ABBF1CCC();
      swift_allocError();
      *v19 = 0xD00000000000003ALL;
      v19[1] = 0x80000001ABF8B4A0;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t EntitySimilarityRequestManager.__deallocating_deinit()
{
  sub_1ABA7D674();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBF615C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1ABBF6204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5040, &unk_1ABF48C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABBF6274(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D5040, &unk_1ABF48C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1ABBF62DC(uint64_t a1@<X8>)
{
  [v1 similarityScore];
  v5 = v4;
  v6 = [v1 request];
  sub_1ABBF637C(&v8);

  if (!v2)
  {
    v7 = v8;
    *a1 = v5;
    *(a1 + 8) = v7;
    *(a1 + 16) = v9;
  }
}

uint64_t sub_1ABBF637C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 entityId1];
  if (!v4 || (v5 = v4, v6 = [v4 intValue], v5, (v7 = objc_msgSend(v2, sel_entityId2)) == 0))
  {
LABEL_7:
    sub_1ABBF1CCC();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0;
    return swift_willThrow();
  }

  v8 = v7;
  v9 = [v7 intValue];

  result = [v2 entitySimilarityMode];
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    if (result < 3)
    {
      *a1 = result;
      *(a1 + 8) = v6;
      *(a1 + 16) = v9;
      return result;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t EntitySimilarityMode.description.getter()
{
  v1 = 0x6F4D7261656E696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

IntelligencePlatform::EntitySimilarityMode_optional __swiftcall EntitySimilarityMode.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 3)
  {
    v2 = 3;
  }

  else
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1ABBF6538@<X0>(_DWORD *a1@<X8>)
{
  result = EntitySimilarityMode.rawValue.getter();
  *a1 = result;
  return result;
}

__n128 EntitySimilarityResult.request.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = v1->n128_u8[8];
  result = v1[1];
  *(a1 + 8) = result;
  return result;
}

__n128 EntitySimilarityResult.request.setter(uint64_t a1)
{
  v1->n128_u8[8] = *a1;
  result = *(a1 + 8);
  v1[1] = result;
  return result;
}

BOOL static EntitySimilarityResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
}

uint64_t sub_1ABBF66F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6972616C696D6973 && a2 == 0xEF65726F63537974;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABBF67C8(char a1)
{
  if (a1)
  {
    return 0x74736575716572;
  }

  else
  {
    return 0x6972616C696D6973;
  }
}

uint64_t sub_1ABBF6814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBF66F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBF683C(uint64_t a1)
{
  v2 = sub_1ABBF6A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBF6878(uint64_t a1)
{
  v2 = sub_1ABBF6A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntitySimilarityResult.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5048, &qword_1ABF48C70);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v11;
  sub_1ABA93E20(a1, a1[3]);
  v12 = sub_1ABBF6A28();
  sub_1ABA8D27C(&type metadata for EntitySimilarityResult.CodingKeys, v13, v12);
  v18 = 0;
  sub_1ABA7BF34();
  sub_1ABF24F54();
  if (!v2)
  {
    v18 = v10;
    v19 = v16;
    v20 = v15;
    v17 = 1;
    sub_1ABBF6A7C();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1ABBF6A28()
{
  result = qword_1EB4D5050;
  if (!qword_1EB4D5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5050);
  }

  return result;
}

unint64_t sub_1ABBF6A7C()
{
  result = qword_1EB4D5058;
  if (!qword_1EB4D5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5058);
  }

  return result;
}

uint64_t EntitySimilarityResult.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1AC5AA8D0](*&v1);
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v2);
  return MEMORY[0x1AC5AA8D0](v3);
}

uint64_t EntitySimilarityResult.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_1ABF25234();
  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  MEMORY[0x1AC5AA8D0](*&v4);
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v2);
  MEMORY[0x1AC5AA8D0](v3);
  return sub_1ABF25294();
}

uint64_t EntitySimilarityResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D5060, &qword_1ABF48C78);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(a1, a1[3]);
  v6 = sub_1ABBF6A28();
  sub_1ABA8387C(&type metadata for EntitySimilarityResult.CodingKeys, v7, v6);
  if (!v2)
  {
    sub_1ABA88658();
    sub_1ABF24E34();
    v9 = v8;
    sub_1ABBF7514();
    sub_1ABA88658();
    sub_1ABF24E64();
    v10 = sub_1ABA7BFF0();
    v11(v10);
    *a2 = v9;
    *(a2 + 8) = 0;
    *(a2 + 16) = v13;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABBF6D9C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1ABF25234();
  v5 = 0.0;
  if (v2 != 0.0)
  {
    v5 = v2;
  }

  MEMORY[0x1AC5AA8D0](*&v5);
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v3);
  MEMORY[0x1AC5AA8D0](v4);
  return sub_1ABF25294();
}

uint64_t sub_1ABBF6EC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449797469746E65 && a2 == 0xE900000000000031;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449797469746E65 && a2 == 0xE900000000000032)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABBF6FDC(char a1)
{
  if (a1)
  {
    return 0x6449797469746E65;
  }

  else
  {
    return 1701080941;
  }
}

uint64_t sub_1ABBF7034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBF6EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBF705C(uint64_t a1)
{
  v2 = sub_1ABBF7568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBF7098(uint64_t a1)
{
  v2 = sub_1ABBF7568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntitySimilarityRequest.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5070, &qword_1ABF48C80);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v17 = *(v1 + 2);
  v18 = v11;
  sub_1ABA93E20(a1, a1[3]);
  v12 = sub_1ABBF7568();
  sub_1ABA8D27C(&type metadata for EntitySimilarityRequest.CodingKeys, v13, v12);
  LOBYTE(v19) = v10;
  v20 = 0;
  sub_1ABBF75BC();
  sub_1ABA7C0F0();
  sub_1ABA7BF34();
  sub_1ABF24F84();
  if (!v2)
  {
    v14 = v17;
    v19 = v18;
    v20 = 1;
    sub_1ABAE8BC8();
    sub_1ABA7C0F0();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    v19 = v14;
    v20 = 2;
    sub_1ABA7C0F0();
    sub_1ABA7BF34();
    sub_1ABF24F84();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t EntitySimilarityRequest.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v1);
  return MEMORY[0x1AC5AA8D0](v2);
}

uint64_t EntitySimilarityRequest.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1ABF25234();
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v1);
  MEMORY[0x1AC5AA8D0](v2);
  return sub_1ABF25294();
}

uint64_t EntitySimilarityRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1ABAD219C(&qword_1EB4D5088, &qword_1ABF48C88);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA93E20(a1, a1[3]);
  v6 = sub_1ABBF7568();
  sub_1ABA8387C(&type metadata for EntitySimilarityRequest.CodingKeys, v7, v6);
  if (!v2)
  {
    sub_1ABBF7678();
    sub_1ABA7D69C();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABAE8B74();
    sub_1ABA7D69C();
    sub_1ABA88658();
    sub_1ABF24E64();
    sub_1ABA7D69C();
    sub_1ABA88658();
    sub_1ABF24E64();
    v9 = sub_1ABA7BFF0();
    v10(v9);
    *a2 = v11;
    *(a2 + 8) = v11;
    *(a2 + 16) = v11;
  }

  return sub_1ABA84B54(a1);
}

unint64_t sub_1ABBF7514()
{
  result = qword_1EB4D5068;
  if (!qword_1EB4D5068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5068);
  }

  return result;
}

unint64_t sub_1ABBF7568()
{
  result = qword_1EB4D5078;
  if (!qword_1EB4D5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5078);
  }

  return result;
}

unint64_t sub_1ABBF75BC()
{
  result = qword_1EB4D5080;
  if (!qword_1EB4D5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5080);
  }

  return result;
}

uint64_t sub_1ABBF7610(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1ABF25234();
  sub_1ABF25264();
  MEMORY[0x1AC5AA8D0](v2);
  MEMORY[0x1AC5AA8D0](v3);
  return sub_1ABF25294();
}

unint64_t sub_1ABBF7678()
{
  result = qword_1EB4D5090;
  if (!qword_1EB4D5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5090);
  }

  return result;
}

id GDEntityIdentifier.swiftUntypedId.getter@<X0>(void *a1@<X8>)
{
  result = [v1 intValue];
  *a1 = result;
  return result;
}

unint64_t sub_1ABBF770C()
{
  result = qword_1EB4D5098;
  if (!qword_1EB4D5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5098);
  }

  return result;
}

unint64_t sub_1ABBF7764()
{
  result = qword_1EB4D50A0;
  if (!qword_1EB4D50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50A0);
  }

  return result;
}

unint64_t sub_1ABBF77BC()
{
  result = qword_1EB4D50A8;
  if (!qword_1EB4D50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50A8);
  }

  return result;
}

uint64_t sub_1ABBF7810(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABBF7840(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 32))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBF787C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntitySimilarityRequest(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[24])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EntitySimilarityRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

_BYTE *sub_1ABBF7958(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for EntitySimilarityResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBF7B14()
{
  result = qword_1EB4D50B0;
  if (!qword_1EB4D50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50B0);
  }

  return result;
}

unint64_t sub_1ABBF7B6C()
{
  result = qword_1EB4D50B8;
  if (!qword_1EB4D50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50B8);
  }

  return result;
}

unint64_t sub_1ABBF7BC4()
{
  result = qword_1EB4D50C0;
  if (!qword_1EB4D50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50C0);
  }

  return result;
}

unint64_t sub_1ABBF7C1C()
{
  result = qword_1EB4D50C8;
  if (!qword_1EB4D50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50C8);
  }

  return result;
}

unint64_t sub_1ABBF7C74()
{
  result = qword_1EB4D50D0;
  if (!qword_1EB4D50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50D0);
  }

  return result;
}

unint64_t sub_1ABBF7CCC()
{
  result = qword_1EB4D50D8;
  if (!qword_1EB4D50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50D8);
  }

  return result;
}

unint64_t sub_1ABBF7D20()
{
  result = qword_1EB4D50E0;
  if (!qword_1EB4D50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D50E0);
  }

  return result;
}

uint64_t sub_1ABBF7D7C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1ABBF7DBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABBF7E24(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1ABBF7E64(uint64_t result, int a2, int a3)
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

uint64_t sub_1ABBF7EC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1ABBF7F08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABBF7F98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ABF23C04();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = 0xEE007972616D6D75;
    v10 = 0x735F797469746E65;
  }

  *a4 = a1;
  a4[1] = v10;
  a4[2] = v12;
  a4[3] = a2;
  a4[4] = a3;
  a4[5] = 0x44495F444DLL;
  a4[6] = 0xE500000000000000;
}

uint64_t sub_1ABBF8068@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v115 = a1;
  v109 = a4;
  v5 = 0x44495F444DLL;
  v116 = sub_1ABF223D4();
  sub_1ABA7BB64();
  v110 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v83 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v83 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA7BB64();
  v114 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v83 - v18;
  v20 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7BB64();
  v112 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v83 - v23;

  sub_1ABF22CE4();
  v118[3] = sub_1ABF22D14();
  v118[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v118);
  sub_1ABF22D24();
  v117[3] = MEMORY[0x1E69E6530];
  v117[4] = MEMORY[0x1E69A0178];
  v117[0] = a3;
  v119[3] = sub_1ABF22424();
  v119[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v119);
  sub_1ABF22AD4();
  sub_1ABB6EEA4(v117);
  sub_1ABA84B54(v118);
  v113 = v20;
  sub_1ABF22CA4();
  sub_1ABA84B54(v119);
  sub_1ABAAB754();
  v115 = v15;
  v25 = v111;
  v26 = sub_1ABF22284();
  if (v25)
  {
    v28 = v112;
    v27 = v113;
    (*(v114 + 8))(v19, v115);
    (*(v28 + 8))(v24, v27);
  }

  else
  {
    v29 = v26;
    v107 = v19;
    v106 = v24;
    v105 = v11;
    v30 = (v110 + 8);
    v110 = "name";
    v104 = "entity_relevance";
    v111 = MEMORY[0x1E69E7CC0];
    while (sub_1ABE7EDC8())
    {
      v31 = v29;
      sub_1ABB33C40();
      v32 = sub_1ABF24444();
      v34 = v33;
      v35 = *v30;
      (*v30)(v14, v116);
      if (v34)
      {
        if (qword_1ED871B18 != -1)
        {
          swift_once();
        }

        v36 = sub_1ABF237F4();
        sub_1ABA7AA24(v36, qword_1ED871B20);
        v37 = sub_1ABF237D4();
        v38 = sub_1ABF24664();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = v5;
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_1ABA78000, v37, v38, "MD_ID isn't available in entity_summary view", v40, 2u);
          v41 = v40;
          v5 = v39;
          MEMORY[0x1AC5AB8B0](v41, -1, -1);
        }

        v29 = v31;
      }

      else
      {
        sub_1ABB32E40();
        v102 = v42;
        v103 = v43;
        sub_1ABB32E40();
        v101 = v44;
        v100 = v45;
        v46 = v105;
        sub_1ABA7D6B0(0x73726966u);
        v99 = v47;
        v98 = v48;
        sub_1ABB32E40();
        v97 = v49;
        v96 = v50;
        sub_1ABB32E40();
        v94 = v51;
        v53 = v52;
        sub_1ABB32E40();
        v93 = v54;
        v92 = v55;
        sub_1ABB32E40();
        v91 = v56;
        v90 = v57;
        sub_1ABA7D6B0(0x6E657665u);
        v89 = v58;
        v88 = v59;
        v95 = v53;
        sub_1ABB32E40();
        v87 = v60;
        v86 = v61;
        sub_1ABB33C40();
        v85 = sub_1ABF24334();
        v121 = v62;
        v83 = v30;
        v35(v46, v116);
        v63 = v108;
        sub_1ABB33C40();
        v84 = sub_1ABF24444();
        v65 = v64;
        v35(v63, v116);
        v66 = v121 & 1;
        LOBYTE(v117[0]) = v121 & 1;
        v121 = v65 & 1;
        v120 = v65 & 1;
        LODWORD(v118[0]) = v119[0];
        *(v118 + 3) = *(v119 + 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABADA86C();
          v111 = v80;
        }

        v67 = *(v111 + 16);
        if (v67 >= *(v111 + 24) >> 1)
        {
          sub_1ABADA86C();
          v111 = v81;
        }

        v68 = v111;
        *(v111 + 16) = v67 + 1;
        v69 = v68 + 184 * v67;
        v70 = v103;
        *(v69 + 32) = v32;
        *(v69 + 40) = v70;
        v71 = v101;
        *(v69 + 48) = v102;
        *(v69 + 56) = v71;
        v72 = v99;
        *(v69 + 64) = v100;
        *(v69 + 72) = v72;
        v73 = v97;
        *(v69 + 80) = v98;
        *(v69 + 88) = v73;
        v74 = v95;
        *(v69 + 96) = v96;
        *(v69 + 104) = v74;
        v75 = v93;
        *(v69 + 112) = v94;
        *(v69 + 120) = v75;
        v76 = v91;
        *(v69 + 128) = v92;
        *(v69 + 136) = v76;
        v77 = v89;
        *(v69 + 144) = v90;
        *(v69 + 152) = v77;
        v78 = v87;
        *(v69 + 160) = v88;
        *(v69 + 168) = v78;
        v79 = v85;
        *(v69 + 176) = v86;
        *(v69 + 184) = v79;
        *(v69 + 192) = v66;
        LODWORD(v79) = v118[0];
        *(v69 + 196) = *(v118 + 3);
        *(v69 + 193) = v79;
        *(v69 + 200) = v84;
        *(v69 + 208) = v121;
        v5 = 0x44495F444DLL;
        v29 = v31;
      }
    }

    (*(v114 + 8))(v107, v115);
    result = (*(v112 + 8))(v106, v113);
    *v109 = v111;
  }

  return result;
}

void *static PersonEntityTaggingService.operatingPoints(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    if (qword_1EB4D0340 != -1)
    {
LABEL_22:
      swift_once();
    }

    v3 = MEMORY[0x1E69E7CC8];
    v4 = off_1EB4D5108;
    while (1)
    {
      v5 = *v2;
      if (v4[2] && (v6 = sub_1ABAAFEB4(), (v7 & 1) != 0))
      {
        v8 = *(v4[7] + 8 * v6);
        swift_isUniquelyReferenced_nonNull_native();
        v9 = sub_1ABAAFEB4();
        if (__OFADD__(v3[2], (v10 & 1) == 0))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v11 = v9;
        v12 = v10;
        sub_1ABAD219C(&qword_1EB4D51A8, &qword_1ABF494F0);
        sub_1ABA80A5C();
        if (sub_1ABF24C64())
        {
          v13 = sub_1ABAAFEB4();
          if ((v12 & 1) != (v14 & 1))
          {
            result = sub_1ABF25104();
            __break(1u);
            return result;
          }

          v11 = v13;
        }

        if (v12)
        {
          v15 = v3[7];
          v16 = *(v15 + 8 * v11);
          *(v15 + 8 * v11) = v8;
        }

        else
        {
          sub_1ABA93478(&v3[v11 >> 6]);
          *(v3[6] + v11) = v5;
          *(v3[7] + 8 * v11) = v8;
          v20 = v3[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v3[2] = v22;
        }
      }

      else
      {
        v17 = sub_1ABAAFEB4();
        if (v18)
        {
          v19 = v17;
          swift_isUniquelyReferenced_nonNull_native();
          sub_1ABAD219C(&qword_1EB4D51A8, &qword_1ABF494F0);
          sub_1ABA80A5C();
          sub_1ABF24C64();

          type metadata accessor for PersonEntityTaggingService.PersonETOperatingPoints();
          sub_1ABAB20D0();
          sub_1ABF24C84();
        }
      }

      ++v2;
      if (!--v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t static PersonEntityTaggingService.rocCurve(for:)()
{
  type metadata accessor for PersonEntityTaggingService.PersonETReceiverOperatingCharacteristic();
  sub_1ABAB20D0();

  return sub_1ABF239C4();
}

id sub_1ABBF8C8C()
{
  v0 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.PersonETOperatingPoints());
  result = PersonEntityTaggingService.PersonETOperatingPoints.init(precision0point9:precision0point8:precision0point7:recall0point9:recall0point8:recall0point7:highPrecision:highRecall:highF1:)(0.9, 0.8, 0.7, 0.6, 0.75, 0.8, 0.9, 0.65, v0, v1, v2, v3, v4, v5, v6, v7, 0x3FEA3D70A3D70A3DLL);
  qword_1EB4D50F8 = result;
  return result;
}

id sub_1ABBF8DAC()
{
  v0 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.PersonETOperatingPoints());
  result = PersonEntityTaggingService.PersonETOperatingPoints.init(precision0point9:precision0point8:precision0point7:recall0point9:recall0point8:recall0point7:highPrecision:highRecall:highF1:)(0.95, 0.9, 0.8, 0.7, 0.8, 0.85, 0.92, 0.72, v0, v1, v2, v3, v4, v5, v6, v7, 0x3FEB333333333333);
  qword_1EB4D5100 = result;
  return result;
}

void *sub_1ABBF8E30()
{
  sub_1ABAD219C(&qword_1EB4D5250, &qword_1ABF49708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF49460;
  *(inited + 32) = 4;
  if (qword_1EB4D0338 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB4D5100;
  *(inited + 40) = qword_1EB4D5100;
  *(inited + 48) = 7;
  *(inited + 56) = v1;
  *(inited + 64) = 6;
  *(inited + 72) = v1;
  *(inited + 80) = 15;
  *(inited + 88) = v1;
  *(inited + 96) = 17;
  *(inited + 104) = v1;
  *(inited + 112) = 16;
  *(inited + 120) = v1;
  *(inited + 128) = 8;
  *(inited + 136) = v1;
  *(inited + 144) = 9;
  *(inited + 152) = v1;
  *(inited + 160) = 10;
  *(inited + 168) = v1;
  *(inited + 176) = 18;
  *(inited + 184) = v1;
  *(inited + 192) = 20;
  *(inited + 200) = v1;
  *(inited + 208) = 19;
  *(inited + 216) = v1;
  *(inited + 224) = 21;
  v2 = qword_1EB4D0330;
  v3 = v1;
  if (v2 == -1)
  {
    v4 = v3;
  }

  else
  {
    swift_once();
    v4 = qword_1EB4D5100;
  }

  v5 = qword_1EB4D50F8;
  *(inited + 232) = qword_1EB4D50F8;
  *(inited + 240) = 23;
  *(inited + 248) = v5;
  *(inited + 256) = 26;
  *(inited + 264) = v5;
  *(inited + 272) = 22;
  *(inited + 280) = v4;
  type metadata accessor for PersonEntityTaggingService.PersonETOperatingPoints();
  sub_1ABAB20D0();
  v6 = v5;
  v7 = v4;
  result = sub_1ABF239C4();
  off_1EB4D5108 = result;
  return result;
}

id PersonEntityTaggingService.PersonETOperatingPoints.init(precision0point9:precision0point8:precision0point7:recall0point9:recall0point8:recall0point7:highPrecision:highRecall:highF1:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_precision0point9] = a1;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_precision0point8] = a2;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_precision0point7] = a3;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_recall0point9] = a4;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_recall0point8] = a5;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_recall0point7] = a6;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_highPrecision] = a7;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_highRecall] = a8;
  *&v17[OBJC_IVAR___GDPersonETOperatingPointsInner_highF1] = a17;
  v19.receiver = v17;
  v19.super_class = type metadata accessor for PersonEntityTaggingService.PersonETOperatingPoints();
  return objc_msgSendSuper2(&v19, sel_init);
}

id PersonEntityTaggingService.PersonETOperatingPoints.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonEntityTaggingService.PersonETOperatingCharacteristic.init(truePositives:falsePositives:trueNegatives:falseNegatives:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___GDPersonETOperatingCharacteristicInner_truePositives] = a1;
  *&v4[OBJC_IVAR___GDPersonETOperatingCharacteristicInner_falsePositives] = a2;
  *&v4[OBJC_IVAR___GDPersonETOperatingCharacteristicInner_trueNegatives] = a3;
  *&v4[OBJC_IVAR___GDPersonETOperatingCharacteristicInner_falseNegatives] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for PersonEntityTaggingService.PersonETOperatingCharacteristic();
  return objc_msgSendSuper2(&v6, sel_init);
}

id PersonEntityTaggingService.PersonETReceiverOperatingCharacteristic.init(threshold:precision:recall:)(double a1, double a2, double a3)
{
  *&v3[OBJC_IVAR___GDPersonETReceiverOperatingCharacteristicInner_threshold] = a1;
  *&v3[OBJC_IVAR___GDPersonETReceiverOperatingCharacteristicInner_precision] = a2;
  *&v3[OBJC_IVAR___GDPersonETReceiverOperatingCharacteristicInner_recall] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PersonEntityTaggingService.PersonETReceiverOperatingCharacteristic();
  return objc_msgSendSuper2(&v5, sel_init);
}

id PersonEntityTaggingService.PersonETTotalOperatingCharacteristic.init(threshold:operatingCharacteristic:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR___GDPersonETTotalOperatingCharacteristicInner_threshold] = a2;
  *&v2[OBJC_IVAR___GDPersonETTotalOperatingCharacteristicInner_operatingCharacteristic] = a1;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PersonEntityTaggingService.PersonETTotalOperatingCharacteristic();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1ABBF9528(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static EntityTaggingService.operatingPoints(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    if (qword_1EB4D0358 != -1)
    {
LABEL_22:
      swift_once();
    }

    v3 = off_1EB4D51A0;
    v4 = MEMORY[0x1E69E7CC8];
    v5 = 72;
    while (1)
    {
      v6 = *v2;
      if (v3[2] && (v7 = sub_1ABAAFEB4(), (v8 & 1) != 0))
      {
        memcpy(__dst, (v3[7] + v7 * v5), sizeof(__dst));
        swift_isUniquelyReferenced_nonNull_native();
        v9 = sub_1ABAAFEB4();
        if (__OFADD__(*(v4 + 16), (v10 & 1) == 0))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v5 = v9;
        v11 = v10;
        sub_1ABAD219C(&qword_1EB4D5240, &qword_1ABF494F8);
        LODWORD(v12) = sub_1ABF24C64();
        if (v12)
        {
          v12 = sub_1ABAAFEB4();
          if ((v11 & 1) != (v13 & 1))
          {
            result = sub_1ABF25104();
            __break(1u);
            return result;
          }

          v5 = v12;
        }

        if (v11)
        {
          sub_1ABA7C100(v12, v13, v14, v15, v16, v17, v18, v19, v4);
        }

        else
        {
          sub_1ABA93478(v4 + 8 * (v5 >> 6));
          *(*(v4 + 48) + v5) = v6;
          sub_1ABA7C100(v21, v22, v23, v24, v25, v26, v27, v28, v4);
          v29 = *(v4 + 16);
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_21;
          }

          *(v4 + 16) = v31;
        }
      }

      else
      {
        sub_1ABAAFEB4();
        if (v20)
        {
          swift_isUniquelyReferenced_nonNull_native();
          *__dst = v4;
          sub_1ABAD219C(&qword_1EB4D5240, &qword_1ABF494F8);
          sub_1ABA80A5C();
          sub_1ABF24C64();
          v4 = *__dst;
          sub_1ABAB20D0();
          sub_1ABF24C84();
        }
      }

      ++v2;
      if (!--v1)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t static EntityTaggingService.rocCurve(for:)()
{
  sub_1ABAB20D0();

  return sub_1ABF239C4();
}

double sub_1ABBF97E4()
{
  xmmword_1EB4D5110 = xmmword_1ABF49470;
  unk_1EB4D5120 = xmmword_1ABF49480;
  result = 0.75;
  xmmword_1EB4D5130 = xmmword_1ABF49490;
  unk_1EB4D5140 = xmmword_1ABF494A0;
  qword_1EB4D5150 = 0x3FEA3D70A3D70A3DLL;
  return result;
}

double sub_1ABBF982C()
{
  xmmword_1EB4D5158 = xmmword_1ABF494B0;
  unk_1EB4D5168 = xmmword_1ABF494C0;
  result = 0.8;
  xmmword_1EB4D5178 = xmmword_1ABF494D0;
  unk_1EB4D5188 = xmmword_1ABF494E0;
  qword_1EB4D5198 = 0x3FEB333333333333;
  return result;
}

void *sub_1ABBF986C()
{
  sub_1ABAD219C(&qword_1EB4D5248, &qword_1ABF49700);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF49460;
  *(v0 + 32) = 4;
  if (qword_1EB4D0350 != -1)
  {
    swift_once();
  }

  memcpy((v0 + 40), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 112) = 7;
  memcpy((v0 + 120), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 192) = 6;
  memcpy((v0 + 200), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 272) = 15;
  memcpy((v0 + 280), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 352) = 17;
  memcpy((v0 + 360), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 432) = 16;
  memcpy((v0 + 440), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 512) = 8;
  memcpy((v0 + 520), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 592) = 9;
  memcpy((v0 + 600), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 672) = 10;
  memcpy((v0 + 680), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 752) = 18;
  memcpy((v0 + 760), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 832) = 20;
  memcpy((v0 + 840), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 912) = 19;
  memcpy((v0 + 920), &xmmword_1EB4D5158, 0x48uLL);
  *(v0 + 992) = 21;
  if (qword_1EB4D0348 != -1)
  {
    swift_once();
  }

  memcpy((v0 + 1000), &xmmword_1EB4D5110, 0x48uLL);
  *(v0 + 1072) = 23;
  memcpy((v0 + 1080), &xmmword_1EB4D5110, 0x48uLL);
  *(v0 + 1152) = 26;
  memcpy((v0 + 1160), &xmmword_1EB4D5110, 0x48uLL);
  *(v0 + 1232) = 22;
  memcpy((v0 + 1240), &xmmword_1EB4D5158, 0x48uLL);
  sub_1ABAB20D0();
  result = sub_1ABF239C4();
  off_1EB4D51A0 = result;
  return result;
}

__n128 EntityTaggingService.TotalOperatingCharacteristic.operatingCharacteristic.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ABBF9CB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBF9CD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1ABBF9D18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBF9D38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1ABBF9D7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBF9D9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void sub_1ABBF9DE8(void *a1)
{
  v2 = sub_1ABF21BF4();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 count];
  v25 = MEMORY[0x1E69E7CC0];
  sub_1ABADE24C(0, v7 & ~(v7 >> 63), 0);
  v8 = v25;
  v9 = a1;
  sub_1ABF24754();

  if (v7 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v19 = v3;
  if (v7)
  {
    sub_1ABC0DB00(&qword_1EB4D56D8, 255, MEMORY[0x1E6968EB0]);
    do
    {
      sub_1ABF24864();
      if (!v24)
      {
        goto LABEL_21;
      }

      sub_1ABAE2BF0(&v23, &v21);
      sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v10 = v20;
        v11 = [v20 longLongValue];
      }

      else
      {
        v11 = 0;
      }

      sub_1ABA84B54(&v23);
      v25 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1ABADE24C(v12 > 1, v13 + 1, 1);
        v8 = v25;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + 8 * v13 + 32) = v11;
    }

    while (--v7);
  }

  sub_1ABC0DB00(&qword_1EB4D56D8, 255, MEMORY[0x1E6968EB0]);
  while (1)
  {
    sub_1ABF24864();
    if (!v22)
    {
      break;
    }

    sub_1ABAFF238(&v21, &v23);
    sub_1ABAE2BF0(&v23, &v21);
    sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v14 = v20;
      v15 = [v20 longLongValue];
    }

    else
    {
      v15 = 0;
    }

    sub_1ABA84B54(&v23);
    v25 = v8;
    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1ABADE24C(v16 > 1, v17 + 1, 1);
      v8 = v25;
    }

    *(v8 + 16) = v17 + 1;
    *(v8 + 8 * v17 + 32) = v15;
  }

  (*(v19 + 8))(v6, v2);
  sub_1ABAB08B8(&v21, &qword_1EB4D3000, &unk_1ABF3AA60);
}

void *sub_1ABBFA180(void *a1)
{
  v2 = sub_1ABF21BF4();
  v20[0] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABF24754();
  v20[2] = sub_1ABC0DB00(&qword_1EB4D56D8, 255, MEMORY[0x1E6968EB0]);
  v21 = v4;
  while (1)
  {
    sub_1ABF24864();
    if (!v25)
    {
      (*(v20[0] + 8))(v4, v2);
      return a1;
    }

    sub_1ABAFF238(&v24, v23);
    sub_1ABAE2BF0(v23, &v22);
    sub_1ABAFF390(0, &qword_1EB4D56E0, off_1E7960300);
    if (!swift_dynamicCast())
    {
      goto LABEL_16;
    }

    v5 = v2;
    v6 = v26;
    v7 = [v26 idValue];
    v8 = [v6 tag] - 1;
    v9 = v8 > 0x19 ? 0 : byte_1ABF4AD5A[v8];
    swift_isUniquelyReferenced_nonNull_native();
    v22 = a1;
    v10 = sub_1ABAF81A8();
    if (__OFADD__(a1[2], (v11 & 1) == 0))
    {
      break;
    }

    v12 = v10;
    v13 = v11;
    sub_1ABAD219C(&qword_1EB4D56E8, &unk_1ABF4ACE8);
    if (sub_1ABF24C64())
    {
      v14 = sub_1ABAF81A8();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_20;
      }

      v12 = v14;
    }

    a1 = v22;
    if (v13)
    {
      *(v22[7] + v12) = v9;
    }

    else
    {
      v22[(v12 >> 6) + 8] |= 1 << v12;
      *(a1[6] + 8 * v12) = v7;
      *(a1[7] + v12) = v9;
      v16 = a1[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_19;
      }

      a1[2] = v18;
    }

    v2 = v5;
    v4 = v21;
LABEL_16:
    sub_1ABA84B54(v23);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABBFA5FC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_1ABAD219C(a2, a3);
    sub_1ABA89740();
    v6 = sub_1ABF24D54();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v8 = v6;
  a4(a1, 1, &v8);
  return v8;
}

IntelligencePlatform::PersonEntityTagType __swiftcall PersonEntityTagType.init(qid:)(Swift::String qid)
{
  object = qid._object;
  countAndFlagsBits = qid._countAndFlagsBits;
  v4 = v1;
  v5 = qid._countAndFlagsBits == 0x3036353751 && qid._object == 0xE500000000000000;
  if (v5 || (sub_1ABA7C038(0x3036353751, 0xE500000000000000) & 1) != 0)
  {

    v7 = 6;
  }

  else
  {
    v8 = countAndFlagsBits == 0x3536353751 && object == 0xE500000000000000;
    if (v8 || (sub_1ABA7C038(0x3536353751, 0xE500000000000000) & 1) != 0)
    {

      v7 = 7;
    }

    else
    {
      v9 = countAndFlagsBits == 0x32333237373151 && object == 0xE700000000000000;
      if (v9 || (sub_1ABA7C038(0x32333237373151, 0xE700000000000000) & 1) != 0)
      {

        v7 = 16;
      }

      else
      {
        v10 = countAndFlagsBits == 0x34393138303351 && object == 0xE700000000000000;
        if (v10 || (sub_1ABA7C038(0x34393138303351, 0xE700000000000000) & 1) != 0)
        {

          v7 = 17;
        }

        else
        {
          v11 = countAndFlagsBits == 0x3634313638303151 && object == 0xE900000000000035;
          if (v11 || (sub_1ABA7C038(0x3634313638303151, 0xE900000000000035) & 1) != 0)
          {

            v7 = 9;
          }

          else
          {
            v12 = countAndFlagsBits == 0x34393035393551 && object == 0xE700000000000000;
            if (v12 || (sub_1ABA7C038(0x34393035393551, 0xE700000000000000) & 1) != 0)
            {

              v7 = 10;
            }

            else
            {
              v13 = countAndFlagsBits == 0x3835373533323951 && object == 0xE800000000000000;
              if (v13 || (sub_1ABA7C038(0x3835373533323951, 0xE800000000000000) & 1) != 0)
              {

                v7 = 12;
              }

              else
              {
                v14 = countAndFlagsBits == 0x3434333833323951 && object == 0xE800000000000000;
                if (v14 || (sub_1ABA7C038(0x3434333833323951, 0xE800000000000000) & 1) != 0)
                {

                  v7 = 13;
                }

                else
                {
                  v15 = countAndFlagsBits == 0x3737373932373151 && object == 0xE900000000000037;
                  if (v15 || (sub_1ABA7C038(0x3737373932373151, 0xE900000000000037) & 1) != 0)
                  {

                    v7 = 21;
                  }

                  else
                  {
                    v16 = countAndFlagsBits == 0x30333838383151 && object == 0xE700000000000000;
                    if (v16 || (sub_1ABA7C038(0x30333838383151, 0xE700000000000000) & 1) != 0)
                    {

                      v7 = 19;
                    }

                    else
                    {
                      v17 = countAndFlagsBits == 3551824 && object == 0xE300000000000000;
                      if (v17 || (sub_1ABA7C038(3551824, 0xE300000000000000) & 1) != 0)
                      {

                        v7 = 18;
                      }

                      else if (countAndFlagsBits == 0x38373832313251 && object == 0xE700000000000000)
                      {

                        v7 = 20;
                      }

                      else
                      {
                        v19 = sub_1ABA7C038(0x38373832313251, 0xE700000000000000);

                        if (v19)
                        {
                          v7 = 20;
                        }

                        else
                        {
                          v7 = 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1ABBFACF4@<X0>(uint64_t *a1@<X8>)
{
  result = PersonEntityTagType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABBFADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1ABBFAE04, 0, 0);
}

uint64_t sub_1ABBFAE04()
{
  sub_1ABA906D0();
  v1 = v0[2];
  if (!v1)
  {
    sub_1ABB668FC();
    v1 = sub_1ABF239C4();
  }

  v0[7] = v1;
  v2 = v0[3];
  if (v2)
  {
  }

  else
  {
    sub_1ABB668FC();

    v2 = sub_1ABF239C4();
  }

  v0[8] = v2;
  v3 = v0[4];
  if (v3)
  {
  }

  else
  {
    sub_1ABB668FC();

    v3 = sub_1ABF239C4();
  }

  v0[9] = v3;
  v4 = v0[5];
  if (v4)
  {

    v5 = v4;
  }

  else
  {
    sub_1ABB668FC();

    v5 = sub_1ABF239C4();
  }

  v0[10] = v5;

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1ABBFAFE4;

  return sub_1ABBFD000(v1, v2, v3, v5);
}

uint64_t sub_1ABBFAFE4()
{
  sub_1ABA906D0();
  v1 = *v0;
  sub_1ABA7BBC0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void *static PersonEntityTaggingService.supportedTags(version:)(uint64_t a1, char a2)
{
  type metadata accessor for EntityTaggingService();
  if (a2 & 1 | (*&a1 != 1.0))
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return &unk_1F2091788;
  }
}

void *static EntityTaggingService.supportedTags(version:)(uint64_t a1, char a2)
{
  if (a2 & 1 | (*&a1 != 1.0))
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    return &unk_1F2091788;
  }
}

char *PersonEntityTaggingService.__allocating_init(etConfig:)()
{
  v0 = objc_allocWithZone(sub_1ABA7E2D8());
  v1 = sub_1ABA8A294();
  return PersonEntityTaggingService.init(etConfig:)(v1);
}

char *PersonEntityTaggingService.init(etConfig:)(void *a1)
{
  v3 = v1;
  type metadata accessor for ViewService();
  v5 = a1;
  v6 = static ViewService.clientService.getter(v5);
  type metadata accessor for EntityTaggingService();
  v7 = swift_allocObject();
  EntityTaggingService.init(etConfig:viewService:)(a1, v6);
  if (v2)
  {

    type metadata accessor for PersonEntityTaggingService();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR___GDEntityTaggingServiceInner_entityTaggingService] = v7;
    *&v3[OBJC_IVAR___GDEntityTaggingServiceInner_feedbackService] = [objc_allocWithZone(type metadata accessor for FeedbackService()) init];
    v9.receiver = v3;
    v9.super_class = type metadata accessor for PersonEntityTaggingService();
    v3 = objc_msgSendSuper2(&v9, sel_init);
  }

  return v3;
}

uint64_t EntityTaggingService.__allocating_init(etConfig:)(void *a1)
{
  v2 = type metadata accessor for ViewService();
  v3 = static ViewService.clientService.getter(v2);
  type metadata accessor for EntityTaggingService();
  v4 = swift_allocObject();
  EntityTaggingService.init(etConfig:viewService:)(a1, v3);
  return v4;
}

uint64_t sub_1ABBFB45C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFB474()
{
  sub_1ABA7BBF8();
  v0 = swift_task_alloc();
  v1 = sub_1ABA9F194(v0);
  *v1 = v2;
  v3 = sub_1ABA82E4C(v1);

  return sub_1ABC006A0(v3, v4);
}

uint64_t sub_1ABBFB504()
{
  sub_1ABA7BBF8();
  sub_1ABAB10C8();
  v3 = *v2;
  sub_1ABA7BBC0();
  *v4 = v3;

  sub_1ABA82A20();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1ABBFB60C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1ABF240D4();
  v4[5] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1ABBFB6F0;

  return sub_1ABBFB45C(v7, a2);
}

uint64_t sub_1ABBFB6F0()
{
  sub_1ABA8C008();
  v2 = v0;
  sub_1ABAB10C8();
  v4 = v3;
  sub_1ABA7D1C8();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *(v6 + 16);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;

  if (v2)
  {
    v11 = sub_1ABF21BD4();

    v12 = v11;
  }

  else
  {
    type metadata accessor for PersonEntityTaggingService.ScoreRankedPersonEntityTags();
    v13 = sub_1ABF23954();

    v12 = v13;
  }

  v14 = sub_1ABA9FA38();
  v15(v14);

  _Block_release(v4);
  sub_1ABA7BBE0();

  return v16();
}

uint64_t sub_1ABBFB894(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFB8AC()
{
  sub_1ABA7BBF8();
  v0 = swift_task_alloc();
  v1 = sub_1ABA9F194(v0);
  *v1 = v2;
  v3 = sub_1ABA82E4C(v1);

  return sub_1ABC00E7C(v3, v4);
}

uint64_t sub_1ABBFB9D0(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1ABBFBA98;

  return sub_1ABBFB894(a1, a2);
}

uint64_t sub_1ABBFBA98()
{
  sub_1ABA8C008();
  sub_1ABA9E694();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v2;
  sub_1ABA7BBC0();
  *v7 = v6;

  sub_1ABA88B68();
  v9 = *(v8 + 32);
  if (v0)
  {
    sub_1ABF21BD4();

    v10 = sub_1ABA7AD00();
    v11(v10, 0, v1);

    _Block_release(v9);
  }

  else
  {
    sub_1ABA7AD00();
    sub_1ABA89148();
    v12();
    _Block_release(v9);
  }

  sub_1ABA8C598();

  return v13();
}

uint64_t sub_1ABBFBC14(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 49) = *a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFBC30()
{
  sub_1ABA7BBF8();
  *(v0 + 48) = *(v0 + 49);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1ABBFBCDC;
  v2 = *(v0 + 16);

  return sub_1ABC00D18((v0 + 48), v2);
}

uint64_t sub_1ABBFBCDC()
{
  sub_1ABA7BBF8();
  sub_1ABAB10C8();
  sub_1ABA7D4E0();
  *v3 = v2;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (!v0)
  {
    sub_1ABA82A20();

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABBFBDFC, 0, 0);
}

uint64_t sub_1ABBFBE20(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFBE38()
{
  sub_1ABA7BBF8();
  v0 = swift_task_alloc();
  v1 = sub_1ABA9F194(v0);
  *v1 = v2;
  v3 = sub_1ABA82E4C(v1);

  return sub_1ABC01074(v3, v4);
}

uint64_t sub_1ABBFBEC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFBEE0()
{
  sub_1ABA7BBF8();
  v0 = swift_task_alloc();
  v1 = sub_1ABA9F194(v0);
  *v1 = v2;
  v3 = sub_1ABA82E4C(v1);

  return sub_1ABC01248(v3, v4);
}

uint64_t sub_1ABBFBF90(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v7 = sub_1ABF240D4();
  v4[6] = v7;
  v8 = a2;
  a4;
  v9 = swift_task_alloc();
  v4[7] = v9;
  *v9 = v4;
  v9[1] = sub_1ABBFC08C;

  return sub_1ABBFBEC8(v7, a2);
}

uint64_t sub_1ABBFC08C()
{
  sub_1ABA8C008();
  v2 = v0;
  sub_1ABAB10C8();
  v4 = v3;
  sub_1ABA7D1C8();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *(v6 + 16);
  v9 = *v1;
  sub_1ABA7BBC0();
  *v10 = v9;

  if (v2)
  {
    v11 = sub_1ABF21BD4();

    v12 = v11;
  }

  else
  {
    type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons();
    sub_1ABC0D42C();
    v13 = sub_1ABF23954();

    v12 = v13;
  }

  v14 = sub_1ABA9FA38();
  v15(v14);

  _Block_release(v4);
  sub_1ABA7BBE0();

  return v16();
}

void static PersonEntityTaggingService.gdTagType(name:)()
{
  sub_1ABA8BA68();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  while (1)
  {
    v5 = byte_1F20915D8[v4++ + 32];
    v6 = 0xE500000000000000;
    v7 = 0x7465736E75;
    switch(v5)
    {
      case 1:
        v6 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
        break;
      case 2:
        v7 = 0x726568746FLL;
        break;
      case 3:
        v6 = 0xE600000000000000;
        v7 = 0x666C6573796DLL;
        break;
      case 4:
        v6 = 0xE600000000000000;
        v7 = 0x796C696D6166;
        break;
      case 5:
        v6 = 0xE600000000000000;
        v7 = 0x746E65726170;
        break;
      case 6:
        v7 = 0x726568746F6DLL;
        v6 = 0xE600000000000000;
        break;
      case 7:
        v6 = 0xE600000000000000;
        v11 = 1752457574;
        goto LABEL_28;
      case 8:
        v6 = 0xE700000000000000;
        v7 = 0x676E696C626973;
        break;
      case 9:
        v6 = 0xE700000000000000;
        v10 = 0x6568746F7262;
        goto LABEL_26;
      case 10:
        v6 = 0xE600000000000000;
        v11 = 1953720691;
LABEL_28:
        v7 = v11 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 11:
        v6 = 0xEB00000000746E65;
        v7 = 0x726150646E617267;
        break;
      case 12:
        v7 = 0x746F6D646E617267;
        goto LABEL_23;
      case 13:
        v7 = 0x746166646E617267;
LABEL_23:
        v6 = 0xEB00000000726568;
        break;
      case 14:
        v6 = 0xE700000000000000;
        v9 = 0x6C696843796DLL;
        goto LABEL_19;
      case 15:
        v7 = 0x646C696863;
        break;
      case 16:
        v6 = 0xE300000000000000;
        v7 = 7237491;
        break;
      case 17:
        v6 = 0xE800000000000000;
        v12 = 0x746867756164;
        goto LABEL_33;
      case 18:
        v6 = 0xE700000000000000;
        v10 = 0x656E74726170;
LABEL_26:
        v7 = v10 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 19:
        v6 = 0xE400000000000000;
        v7 = 1701210487;
        break;
      case 20:
        v6 = 0xE700000000000000;
        v9 = 0x6E6162737568;
LABEL_19:
        v7 = v9 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
        break;
      case 21:
        v6 = 0xE600000000000000;
        v7 = 0x646E65697266;
        break;
      case 22:
        v7 = 0xD000000000000010;
        v6 = 0x80000001ABF81E70;
        break;
      case 23:
        v6 = 0xE800000000000000;
        v12 = 0x6B726F776F63;
LABEL_33:
        v7 = v12 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 24:
        v6 = 0xE800000000000000;
        v7 = 0x726F62686769656ELL;
        break;
      case 25:
        v6 = 0xE900000000000065;
        v7 = 0x74616D6573756F68;
        break;
      case 26:
        v6 = 0xE600000000000000;
        v7 = 0x696E6D756C61;
        break;
      case 27:
        v8 = 1699772781;
        goto LABEL_36;
      case 28:
        v7 = 0x676F44796DLL;
        break;
      case 29:
        v8 = 1631811949;
LABEL_36:
        v7 = v8 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
        break;
      default:
        break;
    }

    if (v7 == v3 && v6 == v1)
    {
      break;
    }

    v14 = sub_1ABF25054();

    if (v14)
    {
      goto LABEL_46;
    }

    if (v4 == 30)
    {
      goto LABEL_47;
    }
  }

LABEL_46:
  PersonEntityTagType.gdTagType.getter();
LABEL_47:
  sub_1ABA8D208();
}

uint64_t static EntityTaggingService.checkServiceState()()
{
  v22[1] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for ViewService();
  v2 = static ViewService.clientService.getter(v1);
  v3 = OBJC_IVAR___GDSwiftViewService_accessRequester;
  v4 = *&v2[OBJC_IVAR___GDSwiftViewService_accessRequester];
  v5 = sub_1ABF23BD4();
  v22[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v22];

  v7 = v22[0];
  if (v6)
  {
    sub_1ABA9EBD0();
    v8 = *(v0 + 8);
    v9 = v7;

    v8(v6, &OBJC_IVAR___GDSwiftViewService_databaseCache, v0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v12 = 1;
  }

  else
  {
    v10 = v22[0];
    v11 = sub_1ABF21BE4();

    swift_willThrow();
    v12 = 0;
  }

  v13 = *&v2[v3];
  sub_1ABA8C954();
  v14 = sub_1ABF23BD4();
  v22[0] = 0;
  v15 = [v13 requestAssertionForViewName:v14 error:v22];

  v16 = v22[0];
  if (v15)
  {
    sub_1ABA9EBD0();
    v17 = *(v12 + 8);
    v18 = v16;

    v17(v15, &OBJC_IVAR___GDSwiftViewService_databaseCache, v12);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = v22[0];
    v20 = sub_1ABF21BE4();

    swift_willThrow();
    if (!v12)
    {
      return 2;
    }
  }

  return 1;
}

uint64_t sub_1ABBFC938(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFC94C()
{
  sub_1ABA7BC04();
  sub_1ABB150F0();
  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABBFC9D4(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFC9E8()
{
  sub_1ABA906D0();
  receiver = v0[2].receiver;
  v2 = [receiver eventIds];
  sub_1ABBF9DE8(v2);
  v4 = v3;

  v5 = [receiver feedbackType];
  if (v5 >= 5)
  {
    return sub_1ABF24CD4();
  }

  v6 = v5;
  v7 = type metadata accessor for EntityTaggingStatefulFeedback();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind];
  *v9 = v4;
  v9[8] = v6;
  v0[1].receiver = v8;
  v0[1].super_class = v7;
  v10 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[3].receiver = v10;
  v11 = swift_task_alloc();
  v0[3].super_class = v11;
  *v11 = v0;
  *(v11 + 1) = sub_1ABBFCB68;

  return sub_1ABBFC938(v10);
}

uint64_t sub_1ABBFCB68()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {

    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABBFCC88, 0, 0);
}

uint64_t sub_1ABBFCC88()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v1();
}

id EntityTaggingStatefulFeedback.__allocating_init(kind:)()
{
  v2 = objc_allocWithZone(sub_1ABA9EFD8());
  v3 = *(v0 + 8);
  v4 = &v2[OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind];
  *v4 = *v0;
  v4[8] = v3;
  v6.receiver = v2;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1ABBFCDC8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1ABBFCE8C;

  return sub_1ABBFC9D4(v6);
}

uint64_t sub_1ABBFCE8C()
{
  sub_1ABA8C008();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *v5 = *v1;

  sub_1ABA88B68();
  if (v2)
  {
    v8 = sub_1ABF21BD4();

    v9 = sub_1ABA7AD00();
    v10(v9, v8);
  }

  else
  {
    v11 = sub_1ABA7AD00();
    v12(v11, 0);
  }

  _Block_release(*(v4 + 32));
  sub_1ABA8C598();

  return v13();
}

uint64_t sub_1ABBFD000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  return sub_1ABA8C014();
}

void sub_1ABBFD01C()
{
  v1 = *(*(v0 + 208) + 32);
  *(v0 + 472) = v1;
  v2 = -1 << v1;
  sub_1ABAA30F8();
  v5 = v4 & v3;
  v6 = MEMORY[0x1E69E7CC0];
  *(v0 + 248) = MEMORY[0x1E69E7CC0];

  if (v5)
  {
LABEL_5:
    sub_1ABA9F44C();
    *(v0 + 256) = v5;
    *(v0 + 264) = v12;
    v13 = __clz(__rbit64(v5)) | (v12 << 6);
    v15 = *(*(v14 + 48) + 8 * v13);
    *(v0 + 473) = *(*(v14 + 56) + v13);
    if ((v15 & 0x80000000000000) != 0)
    {
      v16 = v0 + 16;
      *(v0 + 16) = v11;
    }

    else
    {
      v16 = v0 + 32;
      *(v0 + 32) = v11 + 1272;
    }

    sub_1ABA95828(v15);
    sub_1ABF24FF4();
    sub_1ABA9E92C();

    sub_1ABA898B4();
    *(v0 + 272) = v16;
    v17 = swift_task_alloc();
    *(v0 + 280) = v17;
    *v17 = v0;
    sub_1ABC107D8();
LABEL_9:
    *(v18 + 8) = v19;
    v20 = sub_1ABA97B08();

    sub_1ABAB3D24(v20, v21, 0);
    return;
  }

  v8 = 0;
  v9 = (v0 + 168);
  v10 = (v0 + 184);
  while (((63 - v2) >> 6) - 1 != v8)
  {
    v5 = *(v7 + 8 * v8++ + 72);
    if (v5)
    {
      goto LABEL_5;
    }
  }

  v22 = *(v0 + 216);

  *(v0 + 474) = *(v22 + 32);
  sub_1ABAA30F8();
  v25 = v24 & v23;
  *(v0 + 304) = v6;

  if (v25)
  {
LABEL_16:
    sub_1ABA89B4C();
    *(v0 + 312) = v25;
    *(v0 + 320) = v28;
    sub_1ABAA49A0();
    *(v0 + 475) = v31;
    if ((v29 & 0x80000000000000) != 0)
    {
      v32 = (v0 + 56);
      *(v0 + 48) = v30;
      v9 = (v0 + 160);
    }

    else
    {
      v32 = (v0 + 72);
      *(v0 + 64) = v30 + 1272;
    }

    *v32 = 0xE300000000000000;
    *v9 = v29;
    v33 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v33);

    *(v0 + 328) = *v32;
    v34 = swift_task_alloc();
    *(v0 + 336) = v34;
    *v34 = v0;
    sub_1ABAA4060();
    goto LABEL_9;
  }

  sub_1ABAABCA0();
  while (v27 != v26)
  {
    v25 = *(*(v0 + 216) + 8 * v26++ + 72);
    if (v25)
    {
      goto LABEL_16;
    }
  }

  v35 = *(v0 + 224);

  *(v0 + 476) = *(v35 + 32);
  sub_1ABAA30F8();
  v38 = v37 & v36;
  *(v0 + 360) = v6;

  if (v38)
  {
LABEL_24:
    sub_1ABA89B4C();
    *(v0 + 368) = v38;
    *(v0 + 376) = v43;
    sub_1ABAA49A0();
    *(v0 + 477) = v47;
    if ((v44 & 0x80000000000000) != 0)
    {
      v48 = (v0 + 88);
      *(v0 + 80) = v45;
      v10 = v46;
    }

    else
    {
      v48 = (v0 + 104);
      *(v0 + 96) = v45 + 1272;
    }

    *v48 = 0xE300000000000000;
    *v10 = v44;
    v49 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v49);

    *(v0 + 384) = *v48;
    v50 = swift_task_alloc();
    v51 = sub_1ABA9E544(v50);
    *v51 = v52;
    sub_1ABA8C024();
    goto LABEL_9;
  }

  sub_1ABAABCA0();
  while (v40 != v39)
  {
    sub_1ABA8AB0C();
    v38 = *(v41 + 72);
    v39 = v42;
    if (v38)
    {
      goto LABEL_24;
    }
  }

  v53 = *(v0 + 232);

  *(v0 + 478) = *(v53 + 32);
  sub_1ABAA30F8();
  v56 = v55 & v54;
  *(v0 + 416) = v6;

  if (v56)
  {
    sub_1ABA88FA4();
    v57 = (v0 + 200);
LABEL_33:
    sub_1ABA89B4C();
    *(v0 + 424) = v56;
    *(v0 + 432) = v62;
    sub_1ABAA49A0();
    *(v0 + 479) = v65;
    if ((v63 & 0x80000000000000) != 0)
    {
      v66 = (v0 + 120);
      *(v0 + 112) = v64;
      v57 = (v0 + 192);
    }

    else
    {
      v66 = (v0 + 136);
      *(v0 + 128) = v64 + 1272;
    }

    *v66 = 0xE300000000000000;
    *v57 = v63;
    v67 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v67);

    *(v0 + 440) = *v66;
    v68 = swift_task_alloc();
    v69 = sub_1ABA899FC(v68);
    *v69 = v70;
    sub_1ABA7C128();
    goto LABEL_9;
  }

  sub_1ABAABCA0();
  v57 = (v0 + 200);
  while (v59 != v58)
  {
    sub_1ABAB6790();
    v56 = *(v60 + 72);
    v58 = v61;
    if (v56)
    {
      goto LABEL_33;
    }
  }

  v71 = 0;
  v72 = *(v6 + 16);
  v73 = (v6 + 40);
  while (v72 != v71)
  {
    if (v71 >= *(v6 + 16))
    {
      __break(1u);
      return;
    }

    v74 = *v73;
    sub_1ABB14E68();

    ++v71;
    v73 += 2;
  }

  sub_1ABA80A84();

  v75();
}

uint64_t sub_1ABBFD5D4()
{
  sub_1ABA7BC04();
  sub_1ABA89080();
  sub_1ABA7BBC0();
  *v3 = v0;
  v4 = *v2;
  sub_1ABA7D1C8();
  *v5 = v4;
  *(v0 + 288) = v6;
  *(v0 + 296) = v1;

  sub_1ABA8920C();
  if (v1)
  {
  }

  sub_1ABA97330();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABBFD700(uint64_t a1)
{
  v80 = v1;
  v2 = *(v1 + 473);
  v78 = 1;
  v79[0] = v2;
  v3 = objc_allocWithZone(type metadata accessor for EntityTaggingDirectFeedback());
  EntityTaggingDirectFeedback.init(kind:tagInference:)(&v78, v79);
  v4 = sub_1ABAB0F7C();
  v5 = *(v1 + 248);
  if ((v4 & 1) == 0)
  {
    sub_1ABAB56BC();
    v5 = v76;
  }

  sub_1ABAA0574();
  if (v7)
  {
    sub_1ABAA12E8(v6);
    v5 = v77;
  }

  sub_1ABAA0710();
  v8 = *(v1 + 296);
  v10 = *(v1 + 256);
  v9 = *(v1 + 264);
  *(v1 + 248) = v5;
  v11 = (v10 - 1) & v10;
  if (!v11)
  {
    v12 = v1 + 64;
    v13 = (v1 + 160);
    v14 = (v1 + 168);
    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= (((1 << *(v1 + 472)) + 63) >> 6))
      {
        v27 = *(v1 + 216);

        *(v1 + 474) = *(v27 + 32);
        sub_1ABAA30F8();
        v30 = v29 & v28;
        *(v1 + 304) = v5;

        if (v30)
        {
          v31 = 0;
LABEL_23:
          *(v1 + 312) = v30;
          *(v1 + 320) = v31;
          sub_1ABA827DC();
          *(v1 + 475) = v34;
          if ((v35 & 0x80000000000000) != 0)
          {
            v36 = (v1 + 56);
            sub_1ABA9F44C();
            *(v1 + 48) = v39;
            v14 = (v1 + 160);
          }

          else
          {
            v36 = (v1 + 72);
            sub_1ABA969C4();
            *(v1 + 64) = v38;
          }

          *v36 = 0xE300000000000000;
          *v14 = v37;
          v40 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v40);

          *(v1 + 328) = *v36;
          v41 = swift_task_alloc();
          *(v1 + 336) = v41;
          *v41 = v1;
          sub_1ABAA4060();
          goto LABEL_15;
        }

        sub_1ABAA0B94();
        sub_1ABAB65D4();
        while (v33 != v32)
        {
          v31 = v32 + 1;
          v30 = *(*(v1 + 216) + 8 * v32++ + 72);
          if (v30)
          {
            goto LABEL_23;
          }
        }

        v12 = *(v1 + 224);

        *(v1 + 476) = *(v12 + 32);
        sub_1ABAA30F8();
        v44 = v43 & v42;
        *(v1 + 360) = v5;

        if (v44)
        {
LABEL_31:
          sub_1ABA89B4C();
          *(v1 + 368) = v44;
          *(v1 + 376) = v49;
          sub_1ABAA49A0();
          *(v1 + 477) = v52;
          if ((v50 & 0x80000000000000) != 0)
          {
            v53 = (v1 + 88);
            *(v1 + 80) = v51;
          }

          else
          {
            v53 = (v1 + 104);
            *(v1 + 96) = v51 + 1272;
          }

          sub_1ABA95828(v50);
          v54 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v54);

          *(v1 + 384) = *v53;
          v55 = swift_task_alloc();
          v56 = sub_1ABA9E544(v55);
          *v56 = v57;
          sub_1ABA8C024();
          goto LABEL_15;
        }

        sub_1ABAA0B94();
        sub_1ABAB65D4();
        while (v46 != v45)
        {
          sub_1ABA8AB0C();
          v44 = *(v47 + 72);
          v45 = v48;
          if (v44)
          {
            goto LABEL_31;
          }
        }

        v13 = *(v1 + 232);

        sub_1ABA9F93C();
        sub_1ABAA30F8();
        v60 = v59 & v58;
        *(v1 + 416) = v5;

        if (v60)
        {
          sub_1ABA88FA4();
LABEL_41:
          *(v1 + 424) = v60;
          *(v1 + 432) = v61;
          sub_1ABA827DC();
          *(v1 + 479) = v65;
          if ((v66 & 0x80000000000000) != 0)
          {
            v67 = (v1 + 120);
            sub_1ABA9F44C();
            *(v1 + 112) = v70;
          }

          else
          {
            v67 = (v1 + 136);
            sub_1ABA969C4();
            *(v1 + 128) = v69;
          }

          sub_1ABA95828(v68);
          v71 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v71);

          *(v1 + 440) = *v67;
          v72 = swift_task_alloc();
          v73 = sub_1ABA899FC(v72);
          *v73 = v74;
          sub_1ABA7C128();
          goto LABEL_15;
        }

LABEL_38:
        sub_1ABAA0B94();
        sub_1ABAB65D4();
        while (v63 != v62)
        {
          sub_1ABAB6790();
          v60 = *(v64 + 72);
          v62 = v61;
          if (v60)
          {
            goto LABEL_41;
          }
        }

        sub_1ABA9E0E8();
        while (1)
        {
          if (v14 == v12)
          {

            sub_1ABA80A84();
            goto LABEL_52;
          }

          sub_1ABA9E1F4();
          if (v7)
          {
            __break(1u);
            return;
          }

          sub_1ABA8A4F0(*(v5 + 40));

          if (v8)
          {
            break;
          }

          sub_1ABA9E448();
        }

        sub_1ABA7C144();
LABEL_52:

        v75();
        return;
      }

      v11 = *(*(v1 + 208) + 8 * v15 + 64);
      ++v9;
      if (v11)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_11:
  *(v1 + 256) = v11;
  *(v1 + 264) = v9;
  sub_1ABAA3CA0();
  *(v1 + 473) = v16;
  if ((v17 & 0x80000000000000) != 0)
  {
    v18 = v1 + 16;
    sub_1ABA9F44C();
    *(v1 + 16) = v21;
  }

  else
  {
    v18 = v1 + 32;
    sub_1ABA969C4();
    *(v1 + 32) = v20;
  }

  sub_1ABA95828(v19);
  sub_1ABF24FF4();
  sub_1ABA9E92C();

  sub_1ABA898B4();
  *(v1 + 272) = v18;
  v22 = swift_task_alloc();
  *(v1 + 280) = v22;
  *v22 = v1;
  sub_1ABC107D8();
LABEL_15:
  *(v23 + 8) = v24;
  v25 = sub_1ABA97B08();

  sub_1ABAB3D24(v25, v26, 0);
}

uint64_t sub_1ABBFDCE4()
{
  sub_1ABA7BC04();
  sub_1ABA89080();
  sub_1ABA7BBC0();
  *v3 = v0;
  v4 = *v2;
  sub_1ABA7D1C8();
  *v5 = v4;
  *(v0 + 344) = v6;
  *(v0 + 352) = v1;

  sub_1ABA8920C();
  if (v1)
  {
  }

  sub_1ABA97330();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABBFDE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABA8CFC8();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = *(v26 + 475);
  BYTE6(a14) = 2;
  HIBYTE(a14) = v29;
  v30 = objc_allocWithZone(type metadata accessor for EntityTaggingDirectFeedback());
  EntityTaggingDirectFeedback.init(kind:tagInference:)(&a14 + 6, &a14 + 7);
  v31 = sub_1ABAB0F7C();
  v32 = *(v26 + 304);
  if ((v31 & 1) == 0)
  {
LABEL_46:
    sub_1ABAB56BC();
    v32 = v98;
  }

  sub_1ABAA0574();
  if (v34)
  {
    sub_1ABAA12E8(v33);
    v32 = v99;
  }

  sub_1ABAA0710();
  v35 = *(v26 + 352);
  v37 = *(v26 + 312);
  v36 = *(v26 + 320);
  *(v26 + 304) = v32;
  v38 = (v37 - 1) & v37;
  if (v38)
  {
LABEL_10:
    *(v26 + 312) = v38;
    *(v26 + 320) = v36;
    sub_1ABAA3CA0();
    *(v26 + 475) = v41;
    if ((v42 & 0x80000000000000) != 0)
    {
      v43 = v26 + 48;
      sub_1ABA9F44C();
      *(v26 + 48) = v46;
    }

    else
    {
      v43 = v26 + 64;
      sub_1ABA969C4();
      *(v26 + 64) = v45;
    }

    sub_1ABA95828(v44);
    sub_1ABF24FF4();
    sub_1ABA9E92C();

    sub_1ABA898B4();
    *(v26 + 328) = v43;
    v47 = swift_task_alloc();
    *(v26 + 336) = v47;
    *v47 = v26;
    sub_1ABAA4060();
LABEL_14:
    *(v48 + 8) = v49;
    sub_1ABA97B08();
    sub_1ABA8B690();

    sub_1ABAB3D24(v50, v51, v52);
    return;
  }

  v39 = (v26 + 184);
  while (1)
  {
    v40 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v40 >= (((1 << *(v26 + 474)) + 63) >> 6))
    {
      break;
    }

    v38 = *(*(v26 + 216) + 8 * v40 + 64);
    ++v36;
    if (v38)
    {
      v36 = v40;
      goto LABEL_10;
    }
  }

  v54 = *(v26 + 224);

  v55 = *(v54 + 32);
  *(v26 + 476) = v55;
  v56 = -1 << v55;
  sub_1ABAA30F8();
  v59 = v58 & v57;
  *(v26 + 360) = v32;

  if (v59)
  {
    v60 = 0;
LABEL_22:
    *(v26 + 368) = v59;
    *(v26 + 376) = v60;
    sub_1ABA827DC();
    *(v26 + 477) = v64;
    if ((v65 & 0x80000000000000) != 0)
    {
      v66 = (v26 + 88);
      sub_1ABA9F44C();
      *(v26 + 80) = v69;
      v39 = (v26 + 176);
    }

    else
    {
      v66 = (v26 + 104);
      sub_1ABA969C4();
      *(v26 + 96) = v68;
    }

    *v66 = 0xE300000000000000;
    *v39 = v67;
    v70 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v70);

    *(v26 + 384) = *v66;
    v71 = swift_task_alloc();
    v72 = sub_1ABA9E544(v71);
    *v72 = v73;
    sub_1ABA8C024();
    goto LABEL_14;
  }

  sub_1ABAA0B94();
  sub_1ABAB65D4();
  while (v62 != v61)
  {
    sub_1ABA8AB0C();
    v59 = *(v63 + 72);
    v61 = v60;
    if (v59)
    {
      goto LABEL_22;
    }
  }

  sub_1ABA9F93C();
  sub_1ABAA30F8();
  v76 = v75 & v74;
  *(v26 + 416) = v32;

  if (v76)
  {
    sub_1ABA88FA4();
LABEL_31:
    sub_1ABA89B4C();
    *(v26 + 424) = v76;
    *(v26 + 432) = v81;
    sub_1ABAA49A0();
    *(v26 + 479) = v84;
    if ((v82 & 0x80000000000000) != 0)
    {
      v85 = (v26 + 120);
      *(v26 + 112) = v83;
    }

    else
    {
      v85 = (v26 + 136);
      *(v26 + 128) = v83 + 1272;
    }

    sub_1ABA95828(v82);
    v86 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v86);

    *(v26 + 440) = *v85;
    v87 = swift_task_alloc();
    v88 = sub_1ABA899FC(v87);
    *v88 = v89;
    sub_1ABA7C128();
    goto LABEL_14;
  }

  sub_1ABAA0B94();
  sub_1ABAB65D4();
  while (v78 != v77)
  {
    sub_1ABAB6790();
    v76 = *(v79 + 72);
    v77 = v80;
    if (v76)
    {
      goto LABEL_31;
    }
  }

  v100 = *(v26 + 240);

  sub_1ABA9E0E8();
  while (1)
  {
    if (v56 == v54)
    {

      sub_1ABA80A84();
      goto LABEL_42;
    }

    sub_1ABA9E1F4();
    if (v34)
    {
      __break(1u);
      return;
    }

    sub_1ABA8A4F0(*(v32 + 40));

    if (v35)
    {
      break;
    }

    sub_1ABA9E448();
  }

  sub_1ABA7C144();
LABEL_42:
  sub_1ABA8B690();

  v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, v26 + 192, v26 + 112, v26 + 200, v100, a14, a15, a16, a17, a18);
}

uint64_t sub_1ABBFE2A4()
{
  sub_1ABA7BC04();
  sub_1ABA89080();
  sub_1ABA7BBC0();
  *v3 = v0;
  v4 = *v2;
  sub_1ABA7D1C8();
  *v5 = v4;
  *(v0 + 400) = v6;
  *(v0 + 408) = v1;

  sub_1ABA8920C();
  if (v1)
  {
  }

  sub_1ABA97330();

  return MEMORY[0x1EEE6DFA0]();
}

void sub_1ABBFE3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA88600();
  a21 = v23;
  a22 = v24;
  sub_1ABA827D0();
  a20 = v22;
  v25 = *(v22 + 477);
  BYTE6(a10) = 3;
  HIBYTE(a10) = v25;
  v26 = objc_allocWithZone(type metadata accessor for EntityTaggingDirectFeedback());
  EntityTaggingDirectFeedback.init(kind:tagInference:)(&a10 + 6, &a10 + 7);
  v27 = sub_1ABAB0F7C();
  v28 = *(v22 + 360);
  if ((v27 & 1) == 0)
  {
LABEL_37:
    sub_1ABAB56BC();
    v28 = v78;
  }

  sub_1ABAA0574();
  if (v30)
  {
    sub_1ABAA12E8(v29);
    v28 = v79;
  }

  sub_1ABAA0710();
  v31 = *(v22 + 408);
  v33 = *(v22 + 368);
  v32 = *(v22 + 376);
  *(v22 + 360) = v28;
  v34 = (v33 - 1) & v33;
  if (v34)
  {
LABEL_10:
    *(v22 + 368) = v34;
    *(v22 + 376) = v32;
    sub_1ABAA3CA0();
    *(v22 + 477) = v37;
    if ((v38 & 0x80000000000000) != 0)
    {
      v39 = v22 + 80;
      sub_1ABA9F44C();
      *(v22 + 80) = v42;
    }

    else
    {
      v39 = v22 + 96;
      sub_1ABA969C4();
      *(v22 + 96) = v41;
    }

    sub_1ABA95828(v40);
    sub_1ABF24FF4();
    sub_1ABA9E92C();

    sub_1ABA898B4();
    *(v22 + 384) = v39;
    v43 = swift_task_alloc();
    v44 = sub_1ABA9E544(v43);
    *v44 = v45;
    sub_1ABA8C024();
LABEL_14:
    *(v46 + 8) = v47;
    sub_1ABA97B08();
    sub_1ABA8BF40();

    sub_1ABAB3D24(v48, v49, v50);
    return;
  }

  v35 = (v22 + 200);
  while (1)
  {
    v36 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v36 >= (((1 << *(v22 + 476)) + 63) >> 6))
    {
      break;
    }

    v34 = *(*(v22 + 224) + 8 * v36 + 64);
    ++v32;
    if (v34)
    {
      v32 = v36;
      goto LABEL_10;
    }
  }

  v52 = *(v22 + 232);

  sub_1ABA9F93C();
  sub_1ABAA30F8();
  v55 = v54 & v53;
  *(v22 + 416) = v28;

  if (v55)
  {
    sub_1ABA88FA4();
LABEL_22:
    *(v22 + 424) = v55;
    *(v22 + 432) = v56;
    sub_1ABA827DC();
    *(v22 + 479) = v60;
    if ((v61 & 0x80000000000000) != 0)
    {
      v62 = (v22 + 120);
      sub_1ABA9F44C();
      *(v22 + 112) = v65;
      v35 = (v22 + 192);
    }

    else
    {
      v62 = (v22 + 136);
      sub_1ABA969C4();
      *(v22 + 128) = v64;
    }

    *v62 = 0xE300000000000000;
    *v35 = v63;
    v66 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v66);

    *(v22 + 440) = *v62;
    v67 = swift_task_alloc();
    v68 = sub_1ABA899FC(v67);
    *v68 = v69;
    sub_1ABA7C128();
    goto LABEL_14;
  }

  sub_1ABAA0B94();
  sub_1ABAB65D4();
  while (v58 != v57)
  {
    sub_1ABAB6790();
    v55 = *(v59 + 72);
    v57 = v56;
    if (v55)
    {
      goto LABEL_22;
    }
  }

  v80 = *(v22 + 240);

  sub_1ABA9E0E8();
  while (1)
  {
    if (v55 == v22 + 192)
    {

      sub_1ABA80A84();
      goto LABEL_33;
    }

    sub_1ABA9E1F4();
    if (v30)
    {
      __break(1u);
      return;
    }

    sub_1ABA8A4F0(*(v28 + 40));

    if (v31)
    {
      break;
    }

    sub_1ABA9E448();
  }

  sub_1ABA7C144();
LABEL_33:
  sub_1ABA8BF40();

  v71(v70, v71, v72, v73, v74, v75, v76, v77, v80, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABBFE730()
{
  sub_1ABA7BC04();
  sub_1ABA89080();
  sub_1ABA7BBC0();
  *v3 = v0;
  v4 = *v2;
  sub_1ABA7D1C8();
  *v5 = v4;
  *(v0 + 456) = v6;
  *(v0 + 464) = v1;

  sub_1ABA8920C();
  if (v1)
  {
  }

  sub_1ABA97330();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABBFE85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA88600();
  a21 = v26;
  a22 = v27;
  sub_1ABA827D0();
  a20 = v22;
  v28 = *(v22 + 479);
  BYTE6(a10) = 4;
  HIBYTE(a10) = v28;
  v29 = objc_allocWithZone(type metadata accessor for EntityTaggingDirectFeedback());
  EntityTaggingDirectFeedback.init(kind:tagInference:)(&a10 + 6, &a10 + 7);
  v30 = sub_1ABAB0F7C();
  v31 = *(v22 + 416);
  if ((v30 & 1) == 0)
  {
LABEL_27:
    sub_1ABAB56BC();
    v31 = v63;
  }

  sub_1ABAA0574();
  if (v33)
  {
    sub_1ABAA12E8(v32);
    v31 = v64;
  }

  sub_1ABAA0710();
  v34 = *(v22 + 464);
  v36 = *(v22 + 424);
  v35 = *(v22 + 432);
  *(v22 + 416) = v31;
  v37 = (v36 - 1) & v36;
  if (v37)
  {
LABEL_9:
    *(v22 + 424) = v37;
    *(v22 + 432) = v35;
    sub_1ABAA3CA0();
    *(v22 + 479) = v39;
    if ((v40 & 0x80000000000000) != 0)
    {
      v41 = v22 + 112;
      sub_1ABA9F44C();
      *(v22 + 112) = v44;
    }

    else
    {
      v41 = v22 + 128;
      sub_1ABA969C4();
      *(v22 + 128) = v43;
    }

    sub_1ABA95828(v42);
    sub_1ABF24FF4();
    sub_1ABA9E92C();

    sub_1ABA898B4();
    *(v22 + 440) = v41;
    v45 = swift_task_alloc();
    v46 = sub_1ABA899FC(v45);
    *v46 = v47;
    sub_1ABA7C128();
    *(v48 + 8) = v49;
    sub_1ABA97B08();
    sub_1ABA8BF40();

    return sub_1ABAB3D24(v50, v51, v52);
  }

  else
  {
    while (1)
    {
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v38 >= (((1 << *(v22 + 478)) + 63) >> 6))
      {
        break;
      }

      v37 = *(*(v22 + 232) + 8 * v38 + 64);
      ++v35;
      if (v37)
      {
        v35 = v38;
        goto LABEL_9;
      }
    }

    v65 = *(v22 + 240);

    sub_1ABA9E0E8();
    while (1)
    {
      if (v25 == v24)
      {

        sub_1ABA80A84();
        goto LABEL_22;
      }

      sub_1ABA9E1F4();
      if (v33)
      {
        goto LABEL_26;
      }

      sub_1ABA8A4F0(*(v31 + 40));

      if (v34)
      {
        break;
      }

      sub_1ABA9E448();
    }

    sub_1ABA7C144();
LABEL_22:
    sub_1ABA8BF40();

    return v56(v55, v56, v57, v58, v59, v60, v61, v62, v65, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1ABBFEAB0()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABBFEB0C()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABBFEB68()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABBFEBC4()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABBFEC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABBFEC80()
{
  sub_1ABA906D0();
  if (v0[2])
  {
    v1 = sub_1ABBFA180(MEMORY[0x1E69E7CC8]);
  }

  else
  {
    v1 = 0;
  }

  v0[7] = v1;
  if (v0[3])
  {
    v2 = sub_1ABBFA180(MEMORY[0x1E69E7CC8]);
  }

  else
  {
    v2 = 0;
  }

  v0[8] = v2;
  if (v0[4])
  {
    v3 = sub_1ABBFA180(MEMORY[0x1E69E7CC8]);
  }

  else
  {
    v3 = 0;
  }

  v0[9] = v3;
  if (v0[5])
  {
    v4 = sub_1ABBFA180(MEMORY[0x1E69E7CC8]);
  }

  else
  {
    v4 = 0;
  }

  v0[10] = v4;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1ABBFEDD8;

  return sub_1ABBFADDC(v1, v2, v3, v4);
}

uint64_t sub_1ABBFEDD8()
{
  sub_1ABC10824();
  sub_1ABA8C008();
  sub_1ABA7BC10();
  v1 = *v0;
  sub_1ABA7BBC0();
  *v2 = v1;

  sub_1ABA7BBE0();
  sub_1ABAA9184();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1ABBFEFE4(void *a1, void *a2, void *a3, void *a4, void *aBlock, void *a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v6[7] = _Block_copy(aBlock);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  a6;
  v16 = swift_task_alloc();
  v6[8] = v16;
  *v16 = v6;
  v16[1] = sub_1ABBFF0DC;

  return sub_1ABBFEC64(a1, a2, a3, a4);
}

uint64_t sub_1ABBFF0DC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  v6 = v3[6];
  v7 = v3[5];
  v8 = v3[4];
  v9 = v3[3];
  v10 = v3[2];
  *v5 = *v1;

  sub_1ABA88B68();
  if (v2)
  {
    v11 = sub_1ABF21BD4();

    v12 = sub_1ABA7AD00();
    v13(v12, v11);
  }

  else
  {
    v14 = sub_1ABA7AD00();
    v15(v14, 0);
  }

  _Block_release(v4[7]);
  sub_1ABA8C598();

  return v16();
}

id PersonEntityTaggingService.EntityTagConfiguration.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonEntityTaggingService.EntityTagConfiguration();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.__allocating_init(tag:score:inferenceEventId:)()
{
  sub_1ABC107F4();
  v0 = sub_1ABA952B0();
  return PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.init(tag:score:inferenceEventId:)(v1, v2, v0);
}

uint64_t PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.__allocating_init(gdTag:score:inferenceEventIdValue:)()
{
  sub_1ABC107F4();
  v0 = sub_1ABA952B0();
  return PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.init(gdTag:score:inferenceEventIdValue:)(v0, v1, v2);
}

id PersonEntityTaggingService.ScoreRankedPersonEntityTags.__allocating_init(idValue:scoredPersonEntityTags:inferenceEventIdValue:)()
{
  sub_1ABA963F8();
  v0 = sub_1ABA96068();
  return PersonEntityTaggingService.ScoreRankedPersonEntityTags.init(idValue:scoredPersonEntityTags:inferenceEventIdValue:)(v0, v1, v2);
}

id PersonEntityTaggingService.ScoreRankedPersonEntityTags.__allocating_init(id:scoredPersonEntityTags:inferenceEventId:)()
{
  sub_1ABA963F8();
  v0 = sub_1ABA96068();
  return PersonEntityTaggingService.ScoreRankedPersonEntityTags.init(id:scoredPersonEntityTags:inferenceEventId:)(v0, v1, v2);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.__allocating_init(id:score:inferenceEventId:)()
{
  sub_1ABC107F4();
  v0 = sub_1ABA952B0();
  return PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(id:score:inferenceEventId:)(v1, v2, v0);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(id:score:inferenceEventId:)(void *a1, uint64_t a2, double a3)
{
  *&v3[OBJC_IVAR___GDScoredPersonInner_id] = *a1;
  *&v3[OBJC_IVAR___GDScoredPersonInner_score] = a3;
  *&v3[OBJC_IVAR___GDScoredPersonInner_inferenceEventId] = a2;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson();
  return objc_msgSendSuper2(&v5, sel_init);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.__allocating_init(idValue:score:inferenceEventIdValue:)()
{
  sub_1ABC107F4();
  v0 = sub_1ABA952B0();
  return PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(idValue:score:inferenceEventIdValue:)(v1, v2, v0);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(idValue:score:inferenceEventIdValue:)(uint64_t a1, uint64_t a2, double a3)
{
  v10 = a1;
  v5 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson());
  v6 = a2;
  v7 = v5;
  PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(id:score:inferenceEventId:)(&v10, v6, a3);
  sub_1ABA7D1BC();
  ObjectType = swift_getObjectType();
  sub_1ABA8A608(ObjectType);
  return v7;
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.__allocating_init(tag:scoredEntities:inferenceEventId:)()
{
  sub_1ABA963F8();
  v0 = sub_1ABA96068();
  return PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(tag:scoredEntities:inferenceEventId:)(v0, v1, v2);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(tag:scoredEntities:inferenceEventId:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_tag] = *a1;
  *&v3[OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_scoredEntities] = a2;
  *&v3[OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_inferenceEventId] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons();
  return objc_msgSendSuper2(&v5, sel_init);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.__allocating_init(gdTag:scoredEntities:inferenceEventIdValue:)()
{
  sub_1ABA963F8();
  v0 = sub_1ABA96068();
  return PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(gdTag:scoredEntities:inferenceEventIdValue:)(v0, v1, v2);
}

id PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(gdTag:scoredEntities:inferenceEventIdValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PersonEntityTagType.init(gdTagType:)(&v10);
  v5 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons());
  v6 = a3;
  v7 = v5;
  PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(tag:scoredEntities:inferenceEventId:)(&v10, a2, v6);
  sub_1ABA7D1BC();
  ObjectType = swift_getObjectType();
  sub_1ABA8A608(ObjectType);
  return v7;
}

id sub_1ABBFFA90()
{
  sub_1ABAB20D0();
  v0 = sub_1ABF239C4();
  v1 = type metadata accessor for PersonEntityTaggingService.PersonEntityTaggingOptions();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1EB4CED78 = result;
  return result;
}

id PersonEntityTaggingService.PersonEntityTaggingOptions.__allocating_init(tagThresholds:)()
{
  v2 = objc_allocWithZone(sub_1ABA9EFD8());
  *&v2[OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id static PersonEntityTaggingService.PersonEntityTaggingOptions.defaultPersonTaggingOptions.getter()
{
  if (qword_1EB4CED70 != -1)
  {
    sub_1ABA993E0(&qword_1EB4CED70);
  }

  v1 = qword_1EB4CED78;

  return v1;
}

id PersonEntityTaggingService.PersonEntityTaggingOptions.__allocating_init(tagNameThresholds:)()
{
  v0 = objc_allocWithZone(sub_1ABA9EFD8());
  v1 = sub_1ABA7D1BC();
  return PersonEntityTaggingService.PersonEntityTaggingOptions.init(tagNameThresholds:)(v1);
}

id PersonEntityTaggingService.PersonEntityTaggingOptions.init(tagThresholds:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonEntityTaggingService.PersonEntityTaggingOptions();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1ABBFFC78(uint64_t a1)
{
  v3 = OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t EntityTaggingService.__allocating_init(config:)()
{
  sub_1ABA8A1C4();
  v0 = swift_allocObject();
  EntityTaggingService.init(config:)();
  return v0;
}

uint64_t EntityTaggingService.init(config:)()
{
  v2 = v0;
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ViewService();
  v4 = static ViewService.clientService.getter(v3);
  v5 = *&v4[OBJC_IVAR___GDSwiftViewService_accessRequester];
  sub_1ABA8C954();
  v6 = sub_1ABF23BD4();
  v21[0] = 0;
  v7 = [v5 requestAssertionForViewName:v6 error:v21];

  v8 = v21[0];
  if (v7)
  {
    v20 = v2;
    v9 = *&v4[OBJC_IVAR___GDSwiftViewService_databaseCache];
    v11 = v9[5];
    v10 = v9[6];
    sub_1ABA93E20(v9 + 2, v11);
    v12 = *(v10 + 8);
    v13 = v8;

    v14 = v12(v7, v11, v10);
    if (!v1)
    {
      v17 = v14;
      v18 = v15;

      v2 = v20;
      *(v20 + 16) = v7;
      *(v20 + 24) = v17;
      *(v20 + 32) = v18;
      strcpy((v20 + 40), "entity_tagging");
      *(v20 + 55) = -18;
      *(v20 + 56) = 0xD000000000000018;
      *(v20 + 64) = 0x80000001ABF8B950;
      strcpy((v20 + 72), "entity_tagging");
      *(v20 + 87) = -18;
      return v2;
    }

    swift_unknownObjectRelease();

    v2 = v20;
  }

  else
  {
    v16 = v21[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  type metadata accessor for EntityTaggingService();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t EntityTaggingService.__allocating_init(etConfig:viewService:)(void *a1, char *a2)
{
  sub_1ABA8A1C4();
  v4 = swift_allocObject();
  EntityTaggingService.init(etConfig:viewService:)(a1, a2);
  return v4;
}

uint64_t EntityTaggingService.init(etConfig:viewService:)(void *a1, char *a2)
{
  v4 = v2;
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = *&a2[OBJC_IVAR___GDSwiftViewService_accessRequester];
  sub_1ABA8C954();
  v8 = sub_1ABF23BD4();
  v23[0] = 0;
  v9 = [v7 requestAssertionForViewName:v8 error:v23];

  v10 = v23[0];
  if (v9)
  {
    v22 = a1;
    v11 = *&a2[OBJC_IVAR___GDSwiftViewService_databaseCache];
    v13 = v11[5];
    v12 = v11[6];
    sub_1ABA93E20(v11 + 2, v13);
    v14 = *(v12 + 8);
    v15 = v10;

    v16 = v14(v9, v13, v12);
    if (!v3)
    {
      v19 = v16;
      v20 = v17;

      *(v4 + 16) = v9;
      *(v4 + 24) = v19;
      *(v4 + 32) = v20;
      strcpy((v4 + 40), "entity_tagging");
      *(v4 + 55) = -18;
      *(v4 + 56) = 0xD000000000000018;
      *(v4 + 64) = 0x80000001ABF8B950;
      strcpy((v4 + 72), "entity_tagging");
      *(v4 + 87) = -18;
      return v4;
    }

    swift_unknownObjectRelease();

    a1 = v22;
  }

  else
  {
    v18 = v23[0];
    sub_1ABA7E2D8();
    sub_1ABF21BE4();

    swift_willThrow();
  }

  type metadata accessor for EntityTaggingService();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1ABC00278(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[6] = a3;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a2;
  v5[8] = *a4;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC00298()
{
  sub_1ABA7BC04();
  receiver = v0[4].receiver;
  if (receiver)
  {
    v2 = type metadata accessor for PersonEntityTaggingService.PersonEntityTaggingOptions();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds] = receiver;
    v0[1].receiver = v3;
    v0[1].super_class = v2;

    v4 = objc_msgSendSuper2(v0 + 1, sel_init);
    v5 = v4;
  }

  else
  {
    v4 = 0;
  }

  v0[4].super_class = v4;
  v6 = swift_task_alloc();
  v0[5].receiver = v6;
  *v6 = v0;
  v6[1] = sub_1ABC00390;
  v7 = v0[3].receiver;
  super_class = v0[2].super_class;

  return sub_1ABAB2EAC(super_class, v7, v4);
}

uint64_t sub_1ABC00390()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;
  *(v9 + 88) = v8;
  *(v9 + 96) = v0;

  if (v0)
  {
    v10 = sub_1ABC00644;
  }

  else
  {
    v10 = sub_1ABC004AC;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

char *sub_1ABC004AC()
{
  sub_1ABA827D0();
  v1 = *(*(v0 + 88) + OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_scoredPersonEntityTags);
  v2 = sub_1ABAAB7C8(v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1ABA9F25C();
    result = sub_1ABADE27C(v4, v5, v6);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v9 = v22;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = sub_1ABA82DB8();
        v11 = MEMORY[0x1AC5AA170](v10);
      }

      else
      {
        v11 = *(v1 + 8 * v8 + 32);
      }

      v12 = v11[OBJC_IVAR___GDScoredPersonEntityTagInner_tag];
      v13 = *&v11[OBJC_IVAR___GDScoredPersonEntityTagInner_score];

      v15 = *(v22 + 16);
      v14 = *(v22 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1ABADE27C((v14 > 1), v15 + 1, 1);
      }

      ++v8;
      *(v22 + 16) = v15 + 1;
      v16 = v22 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
    }

    while (v3 != v8);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v17 = *(v0 + 88);
  v18 = *(v0 + 32);
  v19 = *&v17[OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_id];
  v20 = *&v17[OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_inferenceEventId];

  *v18 = v19;
  v18[1] = v9;
  v18[2] = v20;
  sub_1ABA80A84();

  return v21();
}

uint64_t sub_1ABC00644()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABC006A0(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC006B8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, Class a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_1ABA8CFC8();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  v29 = v26[12];
  if (v29)
  {
    v55 = v26[12];
  }

  else
  {
    if (qword_1EB4CED70 == -1)
    {
      v29 = 0;
    }

    else
    {
      sub_1ABA993E0(&qword_1EB4CED70);
      v29 = v26[12];
    }

    v55 = qword_1EB4CED78;
  }

  v30 = v26[11];
  v31 = type metadata accessor for PersonEntityTaggingService.ScoreRankedPersonEntityTags();
  v32 = v29;
  v54 = v31;
  v33 = sub_1ABF239C4();
  v34 = *(v30 + 16);
  if (v34)
  {
    a10 = v26[13];
    v35 = (v26[11] + 40);
    do
    {
      v37 = *(v35 - 1);
      v36 = *v35;
      swift_bridgeObjectRetain_n();
      EntityIdentifier.init(_:)(v37, v36, &a13);
      if (a14)
      {
      }

      else
      {
        v38 = a13;
        memcpy(v26 + 2, (a10 + 16), 0x48uLL);
        a13 = v38;
        v39 = sub_1ABAB2408(&a13, v55);
        v41 = v40;
        a13 = v38;
        v42 = objc_allocWithZone(v54);
        v43 = PersonEntityTaggingService.ScoreRankedPersonEntityTags.init(id:scoredPersonEntityTags:inferenceEventId:)(&a13, v39, v41);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a13 = v33;
        sub_1ABAFBC14(v43, v37, v36, isUniquelyReferenced_nonNull_native);

        v33 = a13;
      }

      v35 += 2;
      --v34;
    }

    while (v34);
  }

  sub_1ABA82A20();
  sub_1ABA8B690();

  return v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, v54, v55, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1ABC008D8(uint64_t a1, _BYTE *a2, void *a3)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = v3;
  *(v4 + 89) = *a2;
  *(v4 + 48) = *a3;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC008FC()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = type metadata accessor for PersonEntityTaggingService.PersonEntityTaggingOptions();
    v3 = objc_allocWithZone(v2);
    *&v3[OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds] = v1;
    *(v0 + 16) = v3;
    *(v0 + 24) = v2;

    v4 = objc_msgSendSuper2((v0 + 16), sel_init);
    v5 = v4;
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 56) = v4;
  *(v0 + 88) = *(v0 + 89);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1ABC009F4;
  v7 = sub_1ABAA25B0();

  return sub_1ABC00D18(v7, v8);
}

uint64_t sub_1ABC009F4()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  sub_1ABA7BBC0();
  *v7 = v6;
  *(v9 + 72) = v8;
  *(v9 + 80) = v0;

  if (v0)
  {
    v10 = sub_1ABC00CBC;
  }

  else
  {
    v10 = sub_1ABC00B10;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

char *sub_1ABC00B10()
{
  sub_1ABA827D0();
  v1 = *(*(v0 + 72) + OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_scoredEntities);
  v2 = sub_1ABAAB7C8(v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1ABA9F25C();
    result = sub_1ABADE29C(v4, v5, v6);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v23 = v0;
    v8 = 0;
    v9 = v24;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = sub_1ABA82DB8();
        v11 = MEMORY[0x1AC5AA170](v10);
      }

      else
      {
        v11 = *(v1 + 8 * v8 + 32);
      }

      v12 = *&v11[OBJC_IVAR___GDScoredPersonInner_id];
      v13 = *&v11[OBJC_IVAR___GDScoredPersonInner_score];
      v14 = *&v11[OBJC_IVAR___GDScoredPersonInner_inferenceEventId];

      v16 = *(v24 + 16);
      v15 = *(v24 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1ABADE29C((v15 > 1), v16 + 1, 1);
      }

      *(v24 + 16) = v16 + 1;
      v17 = (v24 + 24 * v16);
      v17[4] = v12;
      ++v8;
      v17[5] = v13;
      v17[6] = v14;
    }

    while (v3 != v8);
    v0 = v23;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v0 + 72);
  v19 = *(v0 + 32);
  v20 = v18[OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_tag];
  v21 = *&v18[OBJC_IVAR___GDScoreRankedEntityTagPersonsInner_inferenceEventId];

  *v19 = v20;
  *(v19 + 8) = v9;
  *(v19 + 16) = v21;
  sub_1ABA80A84();

  return v22();
}

uint64_t sub_1ABC00CBC()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABC00D18(_BYTE *a1, uint64_t a2)
{
  *(v3 + 88) = a2;
  *(v3 + 96) = v2;
  *(v3 + 104) = *a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC00D34()
{
  sub_1ABA8C008();
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 88);
  }

  else
  {
    if (qword_1EB4CED70 == -1)
    {
      v1 = 0;
    }

    else
    {
      sub_1ABA993E0(&qword_1EB4CED70);
      v1 = *(v0 + 88);
    }

    v2 = qword_1EB4CED78;
  }

  v3 = *(v0 + 104);
  memcpy((v0 + 16), (*(v0 + 96) + 16), 0x48uLL);
  v4 = v1;
  sub_1ABA8A3B0();
  sub_1ABC1DAC4(v5, v6);
  if (v3)
  {

    sub_1ABA7C144();

    return v7();
  }

  else
  {
    v9 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons());
    sub_1ABA89148();
    v13 = PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(tag:scoredEntities:inferenceEventId:)(v10, v11, v12);

    sub_1ABA82A20();

    return v14(v13);
  }
}

uint64_t sub_1ABC00E7C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC00E94()
{
  sub_1ABA7BBF8();
  PersonEntityTagType.init(gdTagType:)((v0 + 56));
  v1 = swift_task_alloc();
  v2 = sub_1ABA9F194(v1);
  *v2 = v3;
  v2[1] = sub_1ABC00F30;
  v4 = *(v0 + 24);

  return sub_1ABC00D18((v0 + 56), v4);
}

uint64_t sub_1ABC00F30()
{
  sub_1ABA7BBF8();
  sub_1ABAB10C8();
  sub_1ABA7D4E0();
  *v3 = v2;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (!v0)
  {
    sub_1ABA82A20();

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABC01050, 0, 0);
}

uint64_t sub_1ABC01074(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return sub_1ABA8C014();
}

uint64_t sub_1ABC0108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABA827D0();
  v15 = v14[12];
  if (v15)
  {
    v16 = v14[12];
  }

  else
  {
    if (qword_1EB4CED70 == -1)
    {
      v15 = 0;
    }

    else
    {
      sub_1ABA993E0(&qword_1EB4CED70);
      v15 = v14[12];
    }

    v16 = qword_1EB4CED78;
  }

  v17 = v14[13];
  v18 = v14[11];
  v19 = type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons();
  sub_1ABAB20D0();
  v20 = v15;
  v21 = sub_1ABF239C4();
  v22 = *(v18 + 16);
  v23 = (v18 + 32);
  if (v22)
  {
    while (1)
    {
      v24 = *v23;
      memcpy(v14 + 2, (v17 + 16), 0x48uLL);
      LOBYTE(a10) = v24;
      sub_1ABA8A3B0();
      sub_1ABC1DAC4(v25, v26);
      if (v15)
      {
        break;
      }

      v27 = objc_allocWithZone(v19);
      sub_1ABA89148();
      v15 = PersonEntityTaggingService.ScoreRankedEntityTagPersons.init(tag:scoredEntities:inferenceEventId:)(v28, v29, v30);
      swift_isUniquelyReferenced_nonNull_native();
      a10 = v21;
      sub_1ABAFBC28();
      ++v23;
      if (!--v22)
      {
        goto LABEL_9;
      }
    }

    sub_1ABA7C144();
    sub_1ABA8BF40();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
  }

  else
  {
LABEL_9:

    sub_1ABA82A20();
    sub_1ABA8BF40();

    return v33(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1ABC01248(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_1ABA8C014();
}

void sub_1ABC01260()
{
  sub_1ABA88600();
  sub_1ABA827D0();
  v1 = sub_1ABAAB7C8(v0[2]);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    v18 = MEMORY[0x1E69E7CC0];
    sub_1ABADE21C(0, v1 & ~(v1 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return;
    }

    v4 = 0;
    v5 = v0[2];
    v2 = v18;
    v6 = v5 & 0xC000000000000001;
    v17 = v5 + 32;
    do
    {
      if (v6)
      {
        v7 = MEMORY[0x1AC5AA170](v4, v0[2]);
      }

      else
      {
        v7 = *(v17 + 8 * v4);
      }

      v8 = v7;
      v9 = [v7 integerValue];

      if ((v9 - 1) > 0x19)
      {
        v10 = 0;
      }

      else
      {
        v10 = byte_1ABF4AD5A[(v9 - 1)];
      }

      v12 = *(v18 + 16);
      v11 = *(v18 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1ABADE21C(v11 > 1, v12 + 1, 1);
      }

      ++v4;
      *(v18 + 16) = v12 + 1;
      *(v18 + v12 + 32) = v10;
    }

    while (v3 != v4);
  }

  v0[5] = v2;
  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_1ABC013F4;
  sub_1ABA8BF40();

  sub_1ABC01074(v14, v15);
}

uint64_t sub_1ABC013F4()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  *(v7 + 56) = v6;

  if (v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABC01530, 0, 0);
}

void sub_1ABC01530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1ABA8CFC8();
  v73 = v18;
  v19 = *(v18 + 56);
  v20 = sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v69 = type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons();
  v70 = v20;
  v68 = sub_1ABC0D42C();
  v21 = sub_1ABF239C4();
  v22 = -1;
  v23 = -1 << *(v19 + 32);
  if (-v23 < 64)
  {
    v22 = ~(-1 << -v23);
  }

  v24 = v22 & *(v19 + 64);
  v25 = (63 - v23) >> 6;

  v26 = 0;
LABEL_4:
  while (2)
  {
    v27 = v21 & 0xC000000000000001;
    v28 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 < 0)
    {
      v28 = v21;
    }

    v71 = v28;
    if (!v24)
    {
      while (1)
      {
LABEL_7:
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v29 >= v25)
        {
          break;
        }

        v24 = *(v19 + 64 + 8 * v29);
        ++v26;
        if (v24)
        {
          v26 = v29;
          goto LABEL_11;
        }
      }

      sub_1ABA82A20();
      sub_1ABA8B690();

      v61(v59, v60, v61, v62, v63, v64, v65, v66, a9, v68, v69, v70, v71, v73, a15, a16, a17, a18);
      return;
    }

    while (1)
    {
LABEL_11:
      v30 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      if (*(v19 + 16))
      {
        v32 = sub_1ABAAFEB4();
        if (v33)
        {
          a9 = *(*(v19 + 56) + 8 * v32);
          if (v27)
          {
            v38 = sub_1ABF24CA4();
            if (__OFADD__(v38, 1))
            {
              goto LABEL_42;
            }

            v21 = sub_1ABC03E74(v71, v38 + 1);
          }

          swift_isUniquelyReferenced_nonNull_native();
          a15 = v21;
          sub_1ABAF88E4();
          v72 = v40;
          if (__OFADD__(*(v21 + 16), (v40 & 1) == 0))
          {
            __break(1u);
            goto LABEL_41;
          }

          v41 = v39;
          sub_1ABAD219C(&qword_1EB4D52F0, &qword_1ABF497A8);
          if (sub_1ABF24C64())
          {
            sub_1ABAF88E4();
            if ((v72 & 1) != (v43 & 1))
            {
LABEL_37:
              sub_1ABA8B690();

              sub_1ABF25104();
              return;
            }

            v41 = v42;
            if ((v72 & 1) == 0)
            {
LABEL_26:
              *(v21 + 8 * (v41 >> 6) + 64) |= 1 << v41;
              *(*(v21 + 48) + 8 * v41) = v31;
              *(*(v21 + 56) + 8 * v41) = a9;
              v44 = *(v21 + 16);
              v45 = __OFADD__(v44, 1);
              v46 = v44 + 1;
              if (!v45)
              {
                *(v21 + 16) = v46;
                goto LABEL_4;
              }

              goto LABEL_43;
            }
          }

          else if ((v72 & 1) == 0)
          {
            goto LABEL_26;
          }

          v57 = *(v21 + 56);
          v58 = *(v57 + 8 * v41);
          *(v57 + 8 * v41) = a9;

          goto LABEL_4;
        }
      }

      if (v27)
      {
        break;
      }

      sub_1ABAF88E4();
      if (v37)
      {
        v55 = v36;
        swift_isUniquelyReferenced_nonNull_native();
        a15 = v21;
        sub_1ABAD219C(&qword_1EB4D52F0, &qword_1ABF497A8);
        sub_1ABF24C64();

        v56 = *(*(v21 + 56) + 8 * v55);
        sub_1ABF24C84();

        goto LABEL_4;
      }

LABEL_17:

      if (!v24)
      {
        goto LABEL_7;
      }
    }

    v34 = v31;
    v35 = sub_1ABF24CB4();

    if (!v35)
    {
      goto LABEL_17;
    }

    swift_unknownObjectRelease();

    sub_1ABF24CA4();
    v47 = sub_1ABA89740();
    v49 = sub_1ABC03E74(v47, v48);

    sub_1ABAF88E4();
    v51 = v50;
    v53 = v52;

    if (v53)
    {

      v54 = *(*(v49 + 56) + 8 * v51);
      sub_1ABF24C84();

      v21 = v49;
      continue;
    }

    break;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t EntityTaggingService.deinit()
{
  sub_1ABAA0D78();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t EntityTaggingService.__deallocating_deinit()
{
  sub_1ABAA0D78();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1ABA8A1C4();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC01A8C()
{
  sub_1ABAB20D0();
  result = sub_1ABF239C4();
  qword_1EB4D5258 = result;
  return result;
}

uint64_t static EntityTaggingService.PersonTaggingOptions.defaultPersonTaggingOptions.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB4D0368 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EB4D5258;
}

uint64_t EntityTaggingService.PersonTaggingOptions.tagThresholds.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1ABC01BA4(char a1)
{
  result = 0x7465536E75;
  switch(a1)
  {
    case 1:
      v3 = 0x726165707061;
      goto LABEL_6;
    case 2:
      v3 = 0x747065636361;
      goto LABEL_6;
    case 3:
      v3 = 0x7463656A6572;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 4:
      result = 0x6165707061736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABC01C3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736449746E657665 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABC01CB4(uint64_t a1)
{
  v2 = sub_1ABC0D590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01CF0(uint64_t a1)
{
  v2 = sub_1ABC0D590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC01D2C(uint64_t a1)
{
  v2 = sub_1ABC0D5E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01D68(uint64_t a1)
{
  v2 = sub_1ABC0D5E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC01DAC(uint64_t a1)
{
  v2 = sub_1ABC0D494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01DE8(uint64_t a1)
{
  v2 = sub_1ABC0D494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC01E24(uint64_t a1)
{
  v2 = sub_1ABC0D4E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01E60(uint64_t a1)
{
  v2 = sub_1ABC0D4E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC01E9C(uint64_t a1)
{
  v2 = sub_1ABC0D53C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01ED8(uint64_t a1)
{
  v2 = sub_1ABC0D53C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC01F14(uint64_t a1)
{
  v2 = sub_1ABC0D638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC01F50(uint64_t a1)
{
  v2 = sub_1ABC0D638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityTaggingStatefulFeedback.FeedbackKind.encode(to:)()
{
  sub_1ABA7BCA8();
  v60 = v1;
  v2 = v0;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D52F8, &qword_1ABF497B0);
  sub_1ABA7BB64();
  v55 = v6;
  v56 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v54 = v8;
  sub_1ABAD219C(&qword_1EB4D5300, &qword_1ABF497B8);
  sub_1ABA7BB64();
  v52 = v10;
  v53 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  v51 = v12;
  sub_1ABAD219C(&qword_1EB4D5308, &qword_1ABF497C0);
  sub_1ABA7BB64();
  v49 = v14;
  v50 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7FBE0();
  v48 = v16;
  sub_1ABAD219C(&qword_1EB4D5310, &qword_1ABF497C8);
  sub_1ABA7BB64();
  v46 = v18;
  v47 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  v22 = sub_1ABAD219C(&qword_1EB4D5318, &qword_1ABF497D0);
  sub_1ABA7BB64();
  v45 = v23;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v45 - v25;
  sub_1ABAD219C(&qword_1EB4D5320, &qword_1ABF497D8);
  sub_1ABA7BB64();
  v58 = v27;
  v59 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v45 - v30;
  v57 = *v2;
  v32 = *(v2 + 8);
  v33 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  sub_1ABC0D494();
  sub_1ABF252E4();
  switch(v32)
  {
    case 1:
      sub_1ABC0D5E4();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABAA6038(&qword_1EB4D4770, MEMORY[0x1E69E7368]);
      sub_1ABA97304();
      v36 = v47;
      sub_1ABF24F14();
      v43 = *(v46 + 8);
      v44 = v21;
      goto LABEL_8;
    case 2:
      sub_1ABC0D590();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABAA6038(&qword_1EB4D4770, MEMORY[0x1E69E7368]);
      sub_1ABA97304();
      sub_1ABF24F14();
      v39 = sub_1ABA805B4();
      v40(v39);
      (*(v59 + 8))(v31, v33);
      goto LABEL_10;
    case 3:
      sub_1ABC0D53C();
      v34 = v51;
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABAA6038(&qword_1EB4D4770, MEMORY[0x1E69E7368]);
      v41 = sub_1ABA97304();
      v36 = v53;
      sub_1ABAA043C(v41, v42);
      v38 = v52;
      goto LABEL_6;
    case 4:
      sub_1ABC0D4E8();
      v34 = v54;
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABAA6038(&qword_1EB4D4770, MEMORY[0x1E69E7368]);
      v35 = sub_1ABA97304();
      v36 = v56;
      sub_1ABAA043C(v35, v37);
      v38 = v55;
LABEL_6:
      v43 = *(v38 + 8);
      v44 = v34;
LABEL_8:
      v43(v44, v36);
      break;
    default:
      sub_1ABC0D638();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABAA6038(&qword_1EB4D4770, MEMORY[0x1E69E7368]);
      sub_1ABA97304();
      sub_1ABF24F14();
      (*(v45 + 8))(v26, v22);
      break;
  }

  (*(v59 + 8))(v31, v33);
LABEL_10:
  sub_1ABA7BC90();
}

void EntityTaggingStatefulFeedback.FeedbackKind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v110 = v20;
  v23 = v22;
  v108 = v24;
  v101 = sub_1ABAD219C(&qword_1EB4D5358, &qword_1ABF497E8);
  sub_1ABA7BB64();
  v104 = v25;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7FBE0();
  v107 = v27;
  sub_1ABAD219C(&qword_1EB4D5360, &qword_1ABF497F0);
  sub_1ABA7BB64();
  v102 = v29;
  v103 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  v106 = v31;
  sub_1ABAD219C(&qword_1EB4D5368, &qword_1ABF497F8);
  sub_1ABA7BB64();
  v99 = v33;
  v100 = v32;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7FBE0();
  v105 = v35;
  sub_1ABAD219C(&qword_1EB4D5370, &qword_1ABF49800);
  sub_1ABA7BB64();
  v97 = v37;
  v98 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7BCE0();
  v39 = sub_1ABAD219C(&qword_1EB4D5378, &qword_1ABF49808);
  sub_1ABA7BB64();
  v96 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v90 - v42;
  v44 = sub_1ABAD219C(&qword_1EB4D5380, &unk_1ABF49810);
  sub_1ABA7BB64();
  v46 = v45;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v90 - v48;
  v50 = v23[3];
  v109 = v23;
  sub_1ABA93E20(v23, v50);
  sub_1ABC0D494();
  v51 = v110;
  sub_1ABF252C4();
  if (v51)
  {
    goto LABEL_10;
  }

  v92 = v39;
  v93 = v43;
  v94 = v21;
  v95 = 0;
  v52 = v108;
  v110 = v46;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v54 == v55 >> 1)
  {
LABEL_9:
    sub_1ABF24B44();
    swift_allocError();
    v68 = v67;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v68 = &type metadata for EntityTaggingStatefulFeedback.FeedbackKind;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    sub_1ABA7D08C();
    (*(v69 + 104))(v68);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v110 + 8))(v49, v44);
LABEL_10:
    v70 = v109;
LABEL_11:
    sub_1ABA84B54(v70);
    sub_1ABA7BC90();
    return;
  }

  if (v54 < (v55 >> 1))
  {
    v56 = v44;
    v91 = *(v53 + v54);
    sub_1ABAD4E90();
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    if (v58 == v60 >> 1)
    {
      switch(v91)
      {
        case 1:
          LOBYTE(a10) = 1;
          sub_1ABC0D5E4();
          v74 = v95;
          sub_1ABA8BFB0();
          sub_1ABF24D94();
          if (v74)
          {
            goto LABEL_19;
          }

          sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
          sub_1ABA9078C(&qword_1EB4D47C8, MEMORY[0x1E69E7390]);
          v77 = sub_1ABA96F98();
          sub_1ABAA2880(v77, v78, v79, v80, v81);
          swift_unknownObjectRelease();
          v86 = sub_1ABA8BAC4();
          v87(v86);
          v88 = sub_1ABA8BCC0();
          v89(v88);
          goto LABEL_22;
        case 2:
          LOBYTE(a10) = 2;
          sub_1ABC0D590();
          sub_1ABA8BFB0();
          v72 = v95;
          sub_1ABF24D94();
          if (v72)
          {
            goto LABEL_19;
          }

          sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
          sub_1ABA9078C(&qword_1EB4D47C8, MEMORY[0x1E69E7390]);
          sub_1ABF24DF4();
          sub_1ABA8C750();
          swift_unknownObjectRelease();
          goto LABEL_21;
        case 3:
          LOBYTE(a10) = 3;
          sub_1ABC0D53C();
          v73 = v95;
          sub_1ABF24D94();
          if (!v73)
          {
            goto LABEL_7;
          }

          goto LABEL_19;
        case 4:
          LOBYTE(a10) = 4;
          sub_1ABC0D4E8();
          sub_1ABA8BFB0();
          v71 = v95;
          sub_1ABF24D94();
          if (!v71)
          {
            goto LABEL_7;
          }

          goto LABEL_19;
        default:
          LOBYTE(a10) = 0;
          sub_1ABC0D638();
          sub_1ABA8BFB0();
          v61 = v95;
          sub_1ABF24D94();
          if (v61)
          {
LABEL_19:
            v75 = sub_1ABA8BCC0();
            v76(v75);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

LABEL_7:
          sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
          sub_1ABA9078C(&qword_1EB4D47C8, MEMORY[0x1E69E7390]);
          v62 = sub_1ABA96F98();
          sub_1ABAA2880(v62, v63, v64, v65, v66);
          sub_1ABA8C750();
          swift_unknownObjectRelease();
LABEL_21:
          v82 = sub_1ABA8BAC4();
          v83(v82);
          v84 = sub_1ABA805B4();
          v85(v84);
LABEL_22:
          v70 = v109;
          *v52 = a10;
          *(v52 + 8) = v91;
          break;
      }

      goto LABEL_11;
    }

    v44 = v56;
    goto LABEL_9;
  }

  __break(1u);
}

id EntityTaggingStatefulFeedback.init(kind:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = &v1[OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind];
  *v3 = *a1;
  v3[8] = v2;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EntityTaggingStatefulFeedback();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1ABC02EC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABC02F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC02EC4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABC02F68(uint64_t a1)
{
  v2 = sub_1ABC0D6F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC02FA4(uint64_t a1)
{
  v2 = sub_1ABC0D6F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC03010(void *a1)
{
  v2 = v1;
  sub_1ABAD219C(&qword_1EB4D5388, &qword_1ABF49820);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC0D6F8();
  sub_1ABF252E4();
  v8 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind);
  v9 = *(v2 + OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind + 8);
  sub_1ABBCF4E4(v8, v9);
  sub_1ABC0D74C();
  sub_1ABF24F84();
  sub_1ABBCF47C(v8, v9);
  v5 = sub_1ABA82DB8();
  return v6(v5);
}

void EntityTaggingStatefulFeedback.__allocating_init(from:)()
{
  v0 = objc_allocWithZone(sub_1ABA7E2D8());
  sub_1ABA8A294();
  EntityTaggingStatefulFeedback.init(from:)();
}

void EntityTaggingStatefulFeedback.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4D53A0, &qword_1ABF49828);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BCE0();
  sub_1ABA93E20(v3, v3[3]);
  v5 = sub_1ABC0D6F8();
  sub_1ABA89290(&type metadata for EntityTaggingStatefulFeedback.CodingKeys, v6, v5);
  if (v1)
  {
    sub_1ABA84B54(v3);
    type metadata accessor for EntityTaggingStatefulFeedback();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v7 = sub_1ABC0D7A0();
    sub_1ABA9FD50(&type metadata for EntityTaggingStatefulFeedback.FeedbackKind, v8, v9, v10, v7);
    v11 = v17;
    v12 = &v0[OBJC_IVAR____TtC20IntelligencePlatform29EntityTaggingStatefulFeedback_kind];
    *v12 = v16;
    v12[8] = v11;
    v15.receiver = v0;
    v15.super_class = type metadata accessor for EntityTaggingStatefulFeedback();
    objc_msgSendSuper2(&v15, sel_init);
    v13 = sub_1ABA8E0A8();
    v14(v13);
    sub_1ABA84B54(v3);
  }

  sub_1ABA7BC90();
}

void sub_1ABC03348(uint64_t *a1@<X8>)
{
  EntityTaggingStatefulFeedback.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

IntelligencePlatform::EntityTaggingDirectFeedback::FeedbackKind_optional __swiftcall EntityTaggingDirectFeedback.FeedbackKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1ABC033BC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityTaggingDirectFeedback.FeedbackKind.rawValue.getter();
  *a1 = result;
  return result;
}

id EntityTaggingDirectFeedback.init(kind:tagInference:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  v2[OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_kind] = *a1;
  v2[OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_tagInference] = v3;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for EntityTaggingDirectFeedback();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1ABC035A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265666E49676174 && a2 == 0xEC00000065636E65)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABC03670(char a1)
{
  if (a1)
  {
    return 0x7265666E49676174;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_1ABC036B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC035A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC036D8(uint64_t a1)
{
  v2 = sub_1ABC0D818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC03714(uint64_t a1)
{
  v2 = sub_1ABC0D818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1ABC03768(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1ABC037A0(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D53C0, &qword_1ABF49830);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC0D818();
  sub_1ABF252E4();
  v12[15] = *(v3 + OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_kind);
  v12[14] = 0;
  sub_1ABC0D86C();
  sub_1ABF24F84();
  if (!v2)
  {
    v12[13] = *(v3 + OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_tagInference);
    v12[12] = 1;
    sub_1ABC0D8C0();
    sub_1ABF24F84();
  }

  return (*(v7 + 8))(v10, v5);
}

void EntityTaggingDirectFeedback.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  sub_1ABAD219C(&qword_1EB4D53E0, &qword_1ABF49838);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BCE0();
  sub_1ABA93E20(v28, v28[3]);
  v30 = sub_1ABC0D818();
  sub_1ABA89290(&type metadata for EntityTaggingDirectFeedback.CodingKeys, v31, v30);
  if (v24)
  {
    sub_1ABA84B54(v28);
    type metadata accessor for EntityTaggingDirectFeedback();
    swift_deallocPartialClassInstance();
  }

  else
  {
    a12 = 0;
    v32 = sub_1ABC0D914();
    sub_1ABA9FD50(&type metadata for EntityTaggingDirectFeedback.FeedbackKind, &a12, v33, v34, v32);
    v23[OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_kind] = a13;
    a12 = 1;
    v35 = sub_1ABC0D968();
    sub_1ABA9FD50(&type metadata for PersonEntityTagType, &a12, v36, v37, v35);
    v23[OBJC_IVAR____TtC20IntelligencePlatform27EntityTaggingDirectFeedback_tagInference] = a13;
    v40.receiver = v23;
    v40.super_class = type metadata accessor for EntityTaggingDirectFeedback();
    objc_msgSendSuper2(&v40, sel_init);
    v38 = sub_1ABA8E0A8();
    v39(v38);
    sub_1ABA84B54(v28);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABC03B48@<X0>(uint64_t *a1@<X8>)
{
  result = EntityTaggingDirectFeedback.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABC03B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1ABC1070C(a3, v22 - v10, &qword_1EB4D1AC0, &qword_1ABF33C50);
  v12 = sub_1ABF24294();
  if (sub_1ABA7E1E0(v11, 1, v12) == 1)
  {
    sub_1ABAB08B8(v11, &qword_1EB4D1AC0, &qword_1ABF33C50);
  }

  else
  {
    sub_1ABF24284();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1ABF24244();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1ABF23CA4() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1ABAB08B8(a3, &qword_1EB4D1AC0, &qword_1ABF33C50);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1ABAB08B8(a3, &qword_1EB4D1AC0, &qword_1ABF33C50);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1ABC03E74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1ABAD219C(&qword_1EB4D56C8, &qword_1ABF4ACC8);
    v2 = sub_1ABF24D44();
    v16 = v2;
    sub_1ABF24C94();
    while (1)
    {
      v3 = sub_1ABF24CC4();
      if (!v3)
      {

        return v2;
      }

      v14 = v3;
      sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
      swift_dynamicCast();
      type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1ABC069AC();
      }

      v2 = v16;
      result = sub_1ABF247A4();
      v5 = v16 + 64;
      v6 = -1 << *(v16 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v16 + 48) + 8 * v9) = v15;
      *(*(v16 + 56) + 8 * v9) = v14;
      ++*(v16 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1ABC040AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1ABA8A8E4();
  v15 = v12;
  v17 = v16;
  sub_1ABA840E0();
  sub_1ABAD219C(&qword_1EB4D56C0, &qword_1ABF4ACC0);
  v18 = sub_1ABA8A5C4();
  sub_1ABA9FC04(v18, v19);
  sub_1ABAB2B08();
  if (!v20)
  {
LABEL_29:

LABEL_30:
    *v15 = v17;
    sub_1ABA89EC8();
    return;
  }

  v43 = v13;
  v21 = 0;
  v22 = v13;
  sub_1ABA7D6D4();
  sub_1ABAA152C();
  if (!v14)
  {
LABEL_4:
    v23 = v21;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v21 >= v12)
      {
        break;
      }

      sub_1ABA90FBC();
      if (v24)
      {
        sub_1ABA96BF4();
        v14 = v26 & v25;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v15 = v12;
      goto LABEL_30;
    }

    sub_1ABA9A404();
    v15 = v12;
    if (v39 != v40)
    {
      sub_1ABAA2C8C(v38);
    }

    else
    {
      v41 = sub_1ABAA5318();
      sub_1ABB18078(v41, v42, v22);
    }

    *(v13 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    sub_1ABA9F6C8();
    v28 = *v27;
    v29 = *(v27 + 8);
    v32 = *(v31 + 8 * v30);
    if ((a12 & 1) == 0)
    {
    }

    sub_1ABA9ED2C();
    sub_1ABF25254();
    if (!v29)
    {
      MEMORY[0x1AC5AA8D0](v28);
    }

    sub_1ABF25294();
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v33)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_21:
    sub_1ABA8FE48();
    sub_1ABAB5A90();
    v37 = v36 + 16 * v35;
    *v37 = v28;
    *(v37 + 8) = v29;
    *(*(v17 + 56) + 8 * v35) = v32;
    sub_1ABAA4528();
    v13 = v43;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v33)
    {
      if (v34)
      {
        break;
      }
    }

    sub_1ABAA0A94();
    if (!v33)
    {
      sub_1ABA83620();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1ABC04270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_1ABAD219C(&qword_1EB4D19B0, &unk_1ABF33B40);
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - v6;
  v7 = *v2;
  sub_1ABAD219C(&qword_1EB4D5708, &unk_1ABF4AD10);
  v39 = v4;
  result = sub_1ABF24D34();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v9;
    return result;
  }

  v35 = v2;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v36 = (v5 + 16);
  v37 = v7;
  v38 = v5;
  v16 = (v5 + 32);
  v17 = result + 64;
  if (!v14)
  {
LABEL_7:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_1ABB18078(0, (v34 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v21 = v18 | (v10 << 6);
    v22 = *(v7 + 56);
    v23 = *(*(v7 + 48) + 8 * v21);
    v24 = *(v38 + 72);
    v25 = v22 + v24 * v21;
    if (v39)
    {
      (*v16)(v40, v25, v41);
    }

    else
    {
      (*v36)(v40, v25, v41);
    }

    sub_1ABF25234();
    MEMORY[0x1AC5AA8D0](v23);
    result = sub_1ABF25294();
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(*(v9 + 48) + 8 * v29) = v23;
    result = (*v16)(*(v9 + 56) + v24 * v29, v40, v41);
    ++*(v9 + 16);
    v7 = v37;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v17 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1ABC045D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1ABAD219C(&qword_1EB4D56F8, &qword_1ABF4AD00);
  result = sub_1ABF24D34();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_29:

LABEL_30:
    *v3 = v7;
    return result;
  }

  v30 = v4;
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
        goto LABEL_32;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_30;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      sub_1ABB18078(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    sub_1ABF25234();
    MEMORY[0x1AC5AA8D0](v19);
    result = sub_1ABF25294();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 8 * v24) = v19;
    *(*(v7 + 56) + 8 * v24) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1ABC04858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1ABAD219C(&qword_1EB4D5718, &unk_1ABF4AD30);
  v40 = v4;
  result = sub_1ABF24D34();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v7;
    return result;
  }

  v38 = v2;
  v39 = v5;
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
        goto LABEL_36;
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

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      sub_1ABB18078(0, (v37 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = 5 * (v15 | (v8 << 6));
    v19 = *(v5 + 56);
    v20 = *(v5 + 48) + 8 * v18;
    v42 = *v20;
    v44 = *(v20 + 8);
    v21 = *(v20 + 24);
    v46 = *(v20 + 16);
    v41 = *(v20 + 32);
    v22 = *(v20 + 33);
    v23 = (v19 + 8 * v18);
    v24 = *v23;
    v45 = *(v23 + 1);
    v25 = v23[4];
    v43 = v23[3];
    if ((v40 & 1) == 0)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
    }

    sub_1ABF25234();
    sub_1ABF23D34();
    sub_1ABF25254();
    if (v22 != 2)
    {
      MEMORY[0x1AC5AA8A0](v22 & 1);
    }

    result = sub_1ABF25294();
    v26 = -1 << *(v7 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v14 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = 5 * v29;
    v35 = *(v7 + 48) + 8 * v34;
    *v35 = v42;
    *(v35 + 8) = v44;
    *(v35 + 16) = v46;
    *(v35 + 24) = v21;
    *(v35 + 32) = v41;
    *(v35 + 33) = v22;
    v36 = *(v7 + 56) + 8 * v34;
    *v36 = v24;
    *(v36 + 8) = v45;
    *(v36 + 24) = v43;
    *(v36 + 32) = v25;
    ++*(v7 + 16);
    v5 = v39;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v14 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_1ABC04BB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1ABAD219C(&qword_1EB4D56F0, &qword_1ABF4ACF8);
  sub_1ABA82DB8();
  v46 = v4;
  v6 = sub_1ABF24D34();
  if (!v5[2])
  {
LABEL_29:

LABEL_30:
    *v3 = v6;
    return;
  }

  v44 = v3;
  v45 = v5;
  v7 = 0;
  v8 = v5;
  sub_1ABA7D6D4();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 8;
  v15 = 48;
  if (!v11)
  {
LABEL_4:
    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v18;
      if (*(v8 + 8 * v7))
      {
        v16 = v6;
        sub_1ABA96BF4();
        v47 = v20 & v19;
        goto LABEL_9;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_30;
    }

    sub_1ABAA57D0();
    v3 = v44;
    if (v40 != v41)
    {
      sub_1ABAA2C8C(v39);
    }

    else
    {
      v42 = sub_1ABAA5318();
      sub_1ABB18078(v42, v43, v8);
    }

    v5[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v16 = v6;
    v17 = __clz(__rbit64(v11));
    v47 = (v11 - 1) & v11;
LABEL_9:
    v21 = v17 | (v7 << 6);
    v22 = v5[7];
    v23 = (v5[6] + v21 * v15);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[3];
    v50 = v23[2];
    v27 = v23[5];
    v49 = v23[4];
    v28 = *(v22 + 8 * v21);
    if ((v46 & 1) == 0)
    {

      v29 = v28;
    }

    sub_1ABF25234();
    v48 = v24;
    sub_1ABF23D34();
    sub_1ABF23D34();
    sub_1ABF23D34();
    sub_1ABF25294();
    v6 = v16;
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v30)
    {
      break;
    }

    sub_1ABA8154C();
    v33 = v25;
    v32 = v28;
    v34 = v48;
LABEL_21:
    *(v14 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v15 = 48;
    v38 = (v6[6] + 48 * v31);
    *v38 = v34;
    v38[1] = v33;
    v38[2] = v50;
    v38[3] = v26;
    v38[4] = v49;
    v38[5] = v27;
    *(v6[7] + 8 * v31) = v32;
    ++v6[2];
    v5 = v45;
    v11 = v47;
    if (!v47)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  v34 = v48;
  while (1)
  {
    sub_1ABA9E640();
    if (v30)
    {
      if (v36)
      {
        break;
      }
    }

    if (v35 == v37)
    {
      v35 = 0;
    }

    if (v14[v35] != -1)
    {
      sub_1ABA83620();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1ABC04E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_1ABA8963C();
  v39 = v36;
  v41 = v40;
  sub_1ABA840E0();
  sub_1ABAD219C(&qword_1EB4D3E98, &qword_1ABF40F70);
  v42 = sub_1ABA8A5C4();
  sub_1ABA9FC04(v42, v43);
  sub_1ABAB2B08();
  if (!v44)
  {
LABEL_27:

LABEL_28:
    *v39 = v41;
    sub_1ABA9EE7C();
    return;
  }

  v45 = 0;
  sub_1ABA7D6D4();
  sub_1ABAA152C();
  if (!v38)
  {
LABEL_4:
    v46 = v45;
    while (1)
    {
      v45 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v45 >= v36)
      {
        break;
      }

      sub_1ABA90FBC();
      if (v47)
      {
        sub_1ABA96BF4();
        v38 = v49 & v48;
        goto LABEL_9;
      }
    }

    if ((a12 & 1) == 0)
    {

      v39 = v36;
      goto LABEL_28;
    }

    sub_1ABA9A404();
    v39 = v36;
    if (v62 != v63)
    {
      sub_1ABAA2C8C(v61);
    }

    else
    {
      v64 = sub_1ABAA5318();
      sub_1ABB18078(v64, v65, v37);
    }

    *(v37 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    sub_1ABA9F6C8();
    v51 = *v50;
    v52 = v50[1];
    v55 = *(v54 + 8 * v53);
    if ((a12 & 1) == 0)
    {
    }

    sub_1ABA9ED2C();
    sub_1ABF23D34();
    sub_1ABF25294();
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v56)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_19:
    sub_1ABA8FE48();
    sub_1ABAB5A90();
    v60 = (v59 + 16 * v58);
    *v60 = v51;
    v60[1] = v52;
    *(*(v41 + 56) + 8 * v58) = v55;
    sub_1ABAA4528();
    if (!v38)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v56)
    {
      if (v57)
      {
        break;
      }
    }

    sub_1ABAA0A94();
    if (!v56)
    {
      sub_1ABA83620();
      goto LABEL_19;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1ABC04FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1ABA8963C();
  v38 = v37;
  sub_1ABA840E0();
  sub_1ABAD219C(&qword_1EB4D56D0, &unk_1ABF4ACD0);
  sub_1ABA8A5C4();
  sub_1ABF24D34();
  sub_1ABAB2B08();
  if (!v39)
  {
LABEL_27:

    *v34 = v38;
    sub_1ABA9EE7C();
    return;
  }

  v66 = v35;
  v40 = 0;
  v41 = v35;
  sub_1ABA7D6D4();
  sub_1ABAA152C();
  if (!v36)
  {
LABEL_4:
    v42 = v40;
    while (1)
    {
      v40 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v40 >= v34)
      {
        break;
      }

      sub_1ABA90FBC();
      if (v43)
      {
        sub_1ABA96BF4();
        v36 = v45 & v44;
        goto LABEL_9;
      }
    }

    if (v38)
    {
      sub_1ABA9A404();
      if (v62 != v63)
      {
        sub_1ABAA2C8C(v61);
      }

      else
      {
        v64 = sub_1ABAA5318();
        sub_1ABB18078(v64, v65, v41);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    sub_1ABA9F6C8();
    v47 = *v46;
    v48 = v46[1];
    v52 = (v50 + v49 * v51);
    v53 = *v52;
    v54 = v52[1];
    v67 = *(v52 + 16);
    if ((v38 & 1) == 0)
    {
    }

    sub_1ABA9ED2C();
    sub_1ABF23D34();
    sub_1ABF25294();
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v55)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_19:
    sub_1ABA8FE48();
    sub_1ABAB5A90();
    v59 = (v58 + 16 * v57);
    *v59 = v47;
    v59[1] = v48;
    v60 = *(v38 + 56) + 24 * v57;
    *v60 = v53;
    *(v60 + 8) = v54;
    *(v60 + 16) = v67;
    sub_1ABAA4528();
    v35 = v66;
    if (!v36)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v55)
    {
      if (v56)
      {
        break;
      }
    }

    sub_1ABAA0A94();
    if (!v55)
    {
      sub_1ABA83620();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1ABC051B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v7 = v5;
  sub_1ABA840E0();
  sub_1ABA9F5B8(v9, v10, v11, v12);
  v13 = sub_1ABA8A5C4();
  sub_1ABA9FC04(v13, v14);
  sub_1ABAB2B08();
  if (!v15)
  {
LABEL_30:

LABEL_31:
    *v7 = a2;
    return;
  }

  v16 = 0;
  v17 = v6 + 8;
  sub_1ABA7F040();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  if ((v19 & v18) == 0)
  {
LABEL_4:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v16 >= v22)
      {
        break;
      }

      ++v24;
      if (v17[v16])
      {
        sub_1ABA96BF4();
        v20 = v26 & v25;
        goto LABEL_9;
      }
    }

    if ((v40 & 1) == 0)
    {

      v7 = v5;
      goto LABEL_31;
    }

    sub_1ABA9A404();
    v7 = v5;
    if (v36 != v37)
    {
      *v17 = -1 << v35;
    }

    else
    {
      v38 = sub_1ABAA5318();
      sub_1ABB18078(v38, v39, (v6 + 8));
    }

    v6[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1ABA9E81C();
LABEL_9:
    v27 = v6[7] + 40 * (v23 | (v16 << 6));
    if (v40)
    {
      a5(v27, v42);
    }

    else
    {
      sub_1ABA93FC4(v27, v42);
    }

    sub_1ABF25234();
    sub_1ABF23D34();
    sub_1ABF25294();
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v28)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_22:
    sub_1ABA8FE48();
    sub_1ABA8B2A0(v32);
    a5(v42, (v34 + 40 * v33));
    sub_1ABAA4528();
    if (!v20)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    if (*(a2 + 64 + 8 * v29) != -1)
    {
      sub_1ABA83620();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1ABC053B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CodableLocation(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1ABAD219C(&qword_1EB4D56B0, &unk_1ABF4ACA8);
  v40 = v4;
  result = sub_1ABF24D34();
  v10 = v8;
  v11 = result;
  if (!*(v8 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v11;
    return result;
  }

  v38 = v3;
  v12 = 0;
  v13 = (v8 + 64);
  v14 = 1 << *(v8 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v8 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = result + 64;
  v41 = v8;
  if (!v16)
  {
LABEL_7:
    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v21 = v13[v12];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_33;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      sub_1ABB18078(0, (v36 + 63) >> 6, v13);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v10 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v12 << 6);
    v23 = *(v39 + 72);
    v24 = *(v10 + 48) + v23 * v22;
    if (v40)
    {
      sub_1ABB5E1C0(v24, v7);
    }

    else
    {
      sub_1ABAFEEF4(v24, v7);
    }

    v25 = v7;
    v26 = *(*(v41 + 56) + 8 * v22);
    sub_1ABF25234();
    v27 = v25;
    CodableLocation.hash(into:)(v42);
    result = sub_1ABF25294();
    v28 = -1 << *(v11 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
    {
      break;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = sub_1ABB5E1C0(v27, *(v11 + 48) + v23 * v31);
    *(*(v11 + 56) + 8 * v31) = v26;
    v7 = v27;
    ++*(v11 + 16);
    v10 = v41;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  v32 = 0;
  v33 = (63 - v28) >> 6;
  while (++v30 != v33 || (v32 & 1) == 0)
  {
    v34 = v30 == v33;
    if (v30 == v33)
    {
      v30 = 0;
    }

    v32 |= v34;
    v35 = *(v18 + 8 * v30);
    if (v35 != -1)
    {
      v31 = __clz(__rbit64(~v35)) + (v30 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1ABC05874()
{
  sub_1ABA8A8E4();
  sub_1ABA9F348();
  sub_1ABA840E0();
  sub_1ABAD219C(&qword_1EB4D5628, &qword_1ABF4AC20);
  v5 = sub_1ABA8A5C4();
  sub_1ABA8950C(v5, v6);
  sub_1ABAB2B08();
  if (!v7)
  {
LABEL_27:

    *v0 = v2;
    sub_1ABA89EC8();
    return;
  }

  v26 = v3;
  v8 = 0;
  sub_1ABA7D6D4();
  sub_1ABA8D3C0();
  if (!v3)
  {
LABEL_4:
    v10 = v8;
    while (1)
    {
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v4)
      {
        break;
      }

      ++v10;
      if (*(v1 + 8 * v8))
      {
        sub_1ABA96BF4();
        v3 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v26)
    {
      sub_1ABA9A404();
      if (v22 != v23)
      {
        sub_1ABAA2C8C(v21);
      }

      else
      {
        v24 = sub_1ABAA5318();
        sub_1ABB18078(v24, v25, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1ABAA3890();
LABEL_9:
    v13 = *(*(v1 + 56) + 8 * (v9 | (v8 << 6)));
    sub_1ABA9ED2C();
    sub_1ABF25264();
    sub_1ABF25294();
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v14)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_19:
    sub_1ABA8FE48();
    sub_1ABA8AD60(v18);
    *(v20 + 8 * v19) = v13;
    sub_1ABAA4528();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v14)
    {
      if (v16)
      {
        break;
      }
    }

    if (v15 == v17)
    {
      v15 = 0;
    }

    if (v0[v15] != -1)
    {
      sub_1ABA83620();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1ABC05A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1ABA9F348();
  v58 = sub_1ABA9F5B8(v10, v11, v12, v13);
  sub_1ABA7BB64();
  v15 = v14;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v57 = v17;
  v18 = *v6;
  sub_1ABAD219C(a5, a6);
  v19 = sub_1ABA8A5C4();
  v56 = v7;
  sub_1ABA8950C(v19, v20);
  sub_1ABAB2B08();
  if (!v21)
  {
LABEL_30:

LABEL_31:
    *v6 = a6;
    return;
  }

  v52 = v6;
  v22 = 0;
  v23 = v18 + 8;
  sub_1ABA7F040();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v53 = (v15 + 16);
  v54 = v18;
  v55 = v15;
  v29 = (v15 + 32);
  v30 = a6 + 8;
  if ((v25 & v24) == 0)
  {
LABEL_4:
    v32 = v22;
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v22 >= v28)
      {
        break;
      }

      ++v32;
      if (v23[v22])
      {
        sub_1ABA96BF4();
        v26 = v34 & v33;
        goto LABEL_9;
      }
    }

    if ((v56 & 1) == 0)
    {

      v6 = v52;
      goto LABEL_31;
    }

    sub_1ABA9A404();
    v6 = v52;
    if (v48 != v49)
    {
      *v23 = -1 << v47;
    }

    else
    {
      v50 = sub_1ABAA5318();
      sub_1ABB18078(v50, v51, v23);
    }

    v18[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
LABEL_9:
    v35 = v31 | (v22 << 6);
    v36 = v18[7];
    v37 = *(v18[6] + v35);
    v38 = *(v55 + 72);
    v39 = v36 + v38 * v35;
    if (v56)
    {
      (*v29)(v57, v39, v58);
    }

    else
    {
      (*v53)(v57, v39, v58);
    }

    sub_1ABF25234();
    sub_1ABF25264();
    sub_1ABF25294();
    sub_1ABA80A6C();
    sub_1ABC107CC();
    if (v40)
    {
      break;
    }

    sub_1ABA8154C();
LABEL_22:
    sub_1ABA8FE48();
    *(v30 + v44) |= v45;
    *(a6[6] + v46) = v37;
    (*v29)(a6[7] + v38 * v46, v57, v58);
    sub_1ABAA4528();
    v18 = v54;
    if (!v26)
    {
      goto LABEL_4;
    }
  }

  sub_1ABA8E674();
  while (1)
  {
    sub_1ABA9E640();
    if (v40)
    {
      if (v42)
      {
        break;
      }
    }

    if (v41 == v43)
    {
      v41 = 0;
    }

    if (v30[v41] != -1)
    {
      sub_1ABA83620();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}